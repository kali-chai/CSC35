.intel_syntax noprefix

.section .rodata
    # Runtime strings..
        StartText:
        .asciz "Time to fire up your Anything Emulator! Answer my questions by typing \"Y\" for yes, or \"N\" for no!\n"
        ExpectingInput:
        .asciz "> "
        EndText:
        .asciz "Have fun!\n"

    # Question strings.
        Question1:
        .asciz "Do you want to try some puzzles?\n"
        Question2:
        .asciz "Do you want to blow stuff up?\n"
        Question3:
        .asciz "Do you want to dig holes?\n"
        Question4:
        .asciz "Do you want to build things?\n"

    # Answer strings.
        Answer1:
        .asciz "I recommend Chess!\n"
        Answer2:
        .asciz "Grand Theft Auto is a good choice!\n"
        Answer3:
        .asciz "Have you considered Minesweeper?\n"
        Answer4:
        .asciz "I suggest you try Space Engineers!\n"

    # Error strings.
        RepeatQuestionInv:
        .asciz "I need a \"Y\" for yes or \"N\" for no.\n"
        BufferOverflow:
        .asciz "That input is too large! Please enter a single character \"Y\" or \"N\" to answer.\n"

    # String arrays.
        Questions:
        .quad Question1, Question2, Question3, Question4, 0
        Answers:
        .quad Answer1, Answer2, Answer3, Answer4, 0

.section .bss
    # Input buffer. There were originally 5 buffers.
        .comm input, 1024
        .comm lastprompt, 1024

.section .text
    # Runtime functions.
        .global _start
        .global Exit

    # I/O functions.
        .global PrintString
        .global ReadString
        .global FlushSTDIN

    # Data functions.
        .global StringLength
        .global DestroyInputBuffer
        .global DestroyLastPromptBuffer

    # Question functions.
        .global Question
        .global CheckAnswer

    # FUNCTION: Program starts here! Loads the address of the starting string to RSI, calls PrintString. Calls QuestionLoop for execution. Loads the address of the end string to RSI, calls PrintString. Exits program.
    # INPUT: None.
    # CLOBBERS: Register RSI.
    _start:
        lea rsi, StartText
        call PrintString
        call Question
        lea rsi, EndText
        call PrintString
        call Exit

    # FUNCTION: Prints string pointed to by RSI to STDOUT through SYSCALL.
    # INPUT: RSI - Pointer to string to print.
    # CLOBBERS: Registers RDI, RDX.
    PrintString:
        .PrintStringTop:
            push rax
            call StringLength
            mov rdx, rax
            mov rax, 1
            mov rdi, 1
            syscall
            pop rax
            ret

    # FUNCTION: Reads string from STDIN into buffer pointed to by RSI through SYSCALL. If input is too long (checked by CMP RAX, 1022) the buffer will be flushed, the buffer will be destroyed, an error message will print and the user will be prompted to press a key.
    # INPUT: RSI - Pointer to buffer to read into.
    # CLOBBERS: Registers RAX, RDI, RSI, RDX, buffer input.
    ReadString:
        .ReadStringTop:
            call DestroyInputBuffer
            lea rsi, ExpectingInput
            call PrintString
            xor rax, rax
            xor rdi, rdi
            lea rsi, [input]
            mov rdx, 1023
            syscall
            cmp rax, 1022
            jg .ReadStringOverflow
            dec rax
            mov byte ptr [input + rax], 0
            jmp .ReadStringOut
        .ReadStringOverflow:
            call FlushSTDIN
            lea rsi, BufferOverflow
            call PrintString
            lea rsi, [lastprompt]
            call PrintString
            jmp .ReadStringTop
        .ReadStringOut:
            ret

    # FUNCTION: Copies the string pointed to by RSI into buffer lastprompt. Used by QuestionLoop to save last prompt string to then be re-used by ReadString's buffer overflow handler.
    # INPUT: RSI - Pointer to last prompt string.
    # CLOBBERS: Register R15.
    SendToLastPrompt:
        .SendToLastPromptTop:
            mov r15, rsi
            push rdi
            push rsi
            mov rsi, r15
            lea rdi, [lastprompt]
            mov rcx, 1023
        .SendToLastPromptLoop:
            mov al, byte ptr [rsi]
            mov byte ptr [rdi], al
            inc rsi
            inc rdi
            test al, al
            jnz .SendToLastPromptLoop
        .SendToLastPromptOut:
            pop rsi
            pop rdi
            ret

    # FUNCTION: Flushes kernel's STDIN buffer until a newline or EOF is found. Catches buffer overflow. Will not clobber registers.
    # INPUT: None.
    # CLOBBERS: Buffer input.
    FlushSTDIN:
        .FlushSTDINTop:
            push rax
            push rdi
            push rsi
            push rdx
        .FlushSTDINIter:
            xor rax, rax
            xor rdi, rdi
            lea rsi, [input]
            mov rdx, 1
            syscall
            cmp rax, 0
            je .FlushSTDINOut
            cmp byte ptr [input], 10
            jne .FlushSTDINIter
        .FlushSTDINOut:
            pop rdx
            pop rsi
            pop rdi
            pop rax
            ret

    # FUNCTION: Destroys input buffer by filling it with null bytes. Extra measure to handle oversze input. Will not clobber registers.
    # INPUT: None.
    # CLOBBERS: Buffer input.
    DestroyInputBuffer:
        .DestroyInputBufferTop:
            push rax
            push rcx
            push rdi
            mov rcx, 1024
            xor rax, rax
            lea rdi, [input]
            rep stosb
            pop rdi
            pop rcx
            pop rax
            ret

    # FUNCTION: Destroys lastprompt buffer by filling it with null bytes. Extra measure to handle oversze input. Will not clobber registers.
    # INPUT: None.
    # CLOBBERS: Buffer lastprompt.
    DestroyLastPromptBuffer:
        .DestroyLastPromptBufferTop:
            push rax
            push rcx
            push rdi
            mov rcx, 1024
            xor rax, rax
            lea rdi, [lastprompt]
            rep stosb
            pop rdi
            pop rcx
            pop rax
            ret

    # FUNCTION: Calculates the length of a string pointed to by RSI. Assumes string is null-terminated. Returns length in RAX.
    # INPUT: RSI - Pointer to string to measure.
    # CLOBBERS: Register RAX.
    StringLength:
        .StringLengthTop:
            xor rax, rax
        .StringLengthIter:
            cmp BYTE PTR [rsi + rax], 0
            je .StringLengthOut
            inc rax
            jmp .StringLengthIter
        .StringLengthOut:
            ret

    # FUNCTION: Loops through questions and answers. Checks value pointed to by R12 to determine if any questions are left. If the end of the Questions array has been reached, jumps to QuestionOut. Otherwise, prints loaded question to STDOUT by calling PrintString, reads input into buffer by calling ReadString, and checks the answer by jumping to CheckAnswer. Jump is used to minimize register use and let CheckAnswer directly jump back to QuestionIter.  
    # INPUT: None.
    # CLOBBERS: Registers R12, RSI.
    Question:
        .QuestionTop:
            xor r12, r12
        .QuestionIter:
            lea rsi, [Questions + r12 * 8]
            mov rsi, [rsi]
            cmp rsi, 0
            je .QuestionOut
            call PrintString
            call SendToLastPrompt
            call ReadString
            call CheckAnswer
            jmp .QuestionIter
        .QuestionOut:
            call DestroyLastPromptBuffer
            ret

    # FUNCTION: Checks that two conditions are true: The first byte of the string pointed to by RSI is either 'Y' or 'N', and the second byte is null. If either condition is false, the function prints an error message and  jumps up to QuestionIter. If both conditions are true and the first byte equals 'Y', the function prints the answer string using the Answers array address plus the index stored in R12 (multiplied by scale 8). If the first byte equals 'N', the function skips the print step. Both valid answers increment R12 and jump back to QuestionIter.
    # INPUT: RSI - Pointer to string to check. R12 - Index of question in Questions array.
    # CLOBBERS: Registers RSI, R12.
    CheckAnswer:
        .CheckAnswerTop:
            cmp byte ptr [rsi + 1], 0
            jne .CheckAnswerFail
            cmp byte ptr [rsi], 'Y'
            je .CheckAnswerSuccessAffirm
            cmp byte ptr [rsi], 'N'
            je .CheckAnswerSuccess
        .CheckAnswerFail:
            lea rsi, [RepeatQuestionInv]
            call PrintString
            ret
        .CheckAnswerSuccessAffirm:
            lea rsi, [Answers + r12 * 8]
            mov rsi, [rsi]
            call PrintString
        .CheckAnswerSuccess:
            inc r12
            ret

    # FUNCTION: Ends the program through SYSCALL.
    # INPUT: None.
    # CLOBBERS: Registers RAX, RDI.
    Exit:
        .ExitTop:
        mov rax, 60
        xor rdi, rdi
        syscall

# Written in MSVC and debugged with GDB.
# 2025 Kali Wilson
