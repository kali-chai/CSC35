.intel_syntax noprefix

.section .data
    # Runtime strings. Some were intended to be used but have not seen the light of day.
        StartText:
        .asciz "Time to play at the arcade! Type the game's number to play, enter \"options\" to see your options again, or \"exit\" to quit! Here's the catalog:\n"
        ExpectingInput:
        .asciz "> "
        EndText:
        .asciz "Come again soon!\n"
        EndText1:
        .asciz "You spent "
        EndText2:
        .asciz " quarters at the arcade.\n"
        ColonSpace:
        .asciz ": "
        NewLine:
        .asciz "\n"

    # Question strings.
        Asker:
        .asciz "Enter the number of your favorite game!\n"

    # Option strings.
        Game1:
        .asciz "Pac-Man\n"
        Game2:
        .asciz "Breakout\n"
        Game3:
        .asciz "Freeway\n"
        Game4:
        .asciz "Space Invaders\n"
        Game5:
        .asciz "Asteroids\n"
        Game6:
        .asciz "Pong\n"

    # Option quad.
        OptionQuad:
        .quad Game1, Game2, Game3, Game4, Game5, Game6, 0
    
    # Answer strings.
        Game1Answer:
        .asciz "Wocka wocka!\n"
        Game2Answer:
        .asciz "Break those bricks!\n"
        Game3Answer:
        .asciz "Honk honk!\n"
        Game4Answer:
        .asciz "Aliens incoming!\n"
        Game5Answer:
        .asciz "Pew pew!\n"
        Game6Answer:
        .asciz "Boop!\n"

    # Answer quad.
        AnswerQuad:
        .quad Game1Answer, Game2Answer, Game3Answer, Game4Answer, Game5Answer, Game6Answer, 0


    # Error strings.
        InvalidAnswer:
        .asciz "That is not a valid option. Type \"options\" to see what you can play or type \"exit\" to leave the arcade.\n"
        OptionsInput:
        .asciz "options"
        ExitInput:
        .asciz "exit"
        BufferOverflow:
        .asciz "That input is too large! Press any key to retry.\n"

.section .bss
    .comm input, 1024
    .comm intoutput, 64

.section .text
    .global _start

    # FUNCTION: Main function. Prints the start text, prints the options, begins the loop of options and answers, prints the end text with a count of quarters spent, and exits the program.
    # INPUT: None.
    # OUTPUT: No register output. No buffer output. Console outputs start text, options, end text.
    # CLOBBERS: Register RSI.
    _start:
        lea rsi, StartText
        call PrintString
        call PrintOptions
        call QuestionLoop
        lea rsi, EndText
        call PrintString
        call Exit

    # FUNCTION: Prints string pointed to by RSI to STDOUT through SYSCALL.
    # INPUT: RSI - Pointer to string to print.
    # OUTPUT: No register output. No buffer output. Console outputs string.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated.
    PrintString:
        .PrintStringTop:
            push rdi
            push rdx
            push rax
            call GetStringLength
            mov rdx, rax
            mov rax, 1
            mov rdi, 1
            syscall
            pop rax
            pop rdx
            pop rdi
            ret

    # FUNCTION: Prints integer pointed to by R14 to STDOUT through SYSCALL by pushing to a little-endian stack and printing from the top of the stack.
    # INPUT: R14 - Register holding integer to print.
    # OUTPUT: No register output. No buffer output. Console outputs integer.
    # CLOBBERS: None.
    # NOTE: Assumes integer is positive. Will only function with positive integers up to 2^63-1.
    PrintInteger:
        .PrintIntegerTop:
            push rax
            push rdx
            push rsi
            push r10
            push rcx
            mov rax, r14
            lea rsi, [intoutput]
            xor rcx, rcx
        .PrintIntegerBody:
            mov rdx, 0
            mov r10, 10
            idiv r10
            add dl, '0'
            push rdx
            inc rcx
            test rax, rax
            jnz .PrintIntegerBody
        .PrintIntegerWrite:
            pop rdx
            mov byte ptr [rsi], dl
            inc rsi
            dec rcx
            jnz .PrintIntegerWrite
            mov byte ptr [rsi], 0
        .PrintIntegerOut:
            lea rsi, [intoutput]
            call PrintString
            pop rcx
            pop r10
            pop rsi
            pop rdx
            pop rax
            ret

    # FUNCTION: Reads string from STDIN into buffer input through SYSCALL. If input is too long (checked by CMP RAX, 1022) the buffer will be flushed, the buffer will be destroyed, an error message will print and the user will be prompted for another input.
    # INPUT: STDIN.
    # OUTPUT: RSI - Pointer to buffer input. 
    # CLOBBERS: None.
    # NOTE: The buffer is destroyed after every read.
    ReadString:
        .ReadStringTop:
            push rdi
            push rdx
            push rax
            call DestroyBuffer
            lea rsi, ExpectingInput
            call PrintString
            mov rax, 0
            mov rdi, 0
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
            jmp .ReadStringTop
        .ReadStringOut:
            pop rax
            pop rdx
            pop rdi
            ret

    # FUNCTION: Returns the length of the string pointed to by RSI to RSI.
    # INPUT: RSI - Pointer to string to get length of.
    # OUTPUT: RAX - Length of string.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated.
    GetStringLength:
        .GetStringLengthTop:
            xor rax, rax
        .GetStringLengthIter:
            cmp BYTE PTR [rsi + rax], 0
            je .GetStringLengthOut
            inc rax
            jmp .GetStringLengthIter
        .GetStringLengthOut:
            ret

    # FUNCTION: Returns the length of the quad pointed to by RSI to RAX.
    # INPUT: RSI - Pointer to quad to get length of.
    # OUTPUT: RAX - Length of quad.
    # CLOBBERS: None.
    # NOTE: Assumes quad is null-terminated.
    GetQuadLength:
        .GetQuadLengthTop:
            xor rax, rax
        .GetQuadLengthIter:
            cmp qword ptr [rsi + rax * 8], 0
            je .GetQuadLengthOut
            inc rax
            jmp .GetQuadLengthIter
        .GetQuadLengthOut:
            ret

    # FUNCTION: Flushes kernel's STDIN buffer until a newline or EOF is found. Catches buffer overflow. Will not clobber registers.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: None.
    FlushSTDIN:
        .FlushSTDINTop:
            push rax
            push rdi
            push rsi
            push rdx
        .FlushSTDINIter:
            mov rax, 0
            mov rdi, 0
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

    # FUNCTION: Destroys buffer by filling it with null bytes. Extra measure to handle oversze input. Will not clobber registers.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: Buffer input.
    DestroyBuffer:
        .DestroyBufferTop:
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

    # FUNCTION: Asks the user to make choicesand get printed answers through CheckAnswerMain. A valid input will increment R10. The loop continues until the user inputs "exit". The function will print the number of valid choices made and exit the program.
    QuestionLoop:
        .QuestionLoopTop:
            lea rsi, OptionQuad
            call GetQuadLength
            xor r10, r10
        .QuestionLoopIter:
            xor r11, r11
            lea rsi, Asker
            call CheckAnswerMain
            cmp r11, 1
            jne .QuestionLoopOut
            inc r10
            jmp .QuestionLoopIter
        .QuestionLoopOut:
            lea rsi, EndText1
            call PrintString
            mov r14, r10
            call PrintInteger
            lea rsi, EndText2
            call PrintString
            ret

    # FUNCTION: Asks the user for a choice as an input string. Any number from 1 to the length of the choice array is considered a valid selection, the corresponding string is printed, and the function returns 1 to R11. A string input "options" will summon the option printer. A string input "exit" will exit the program through a return flag. Any other input will be considered invalid and the function will loop. 
    # INPUT: None.
    # OUTPUT: R11 - 1 if valid input, 0 if invalid input. No buffer output. Console outputs string.
    # CLOBBERS: 
    CheckAnswerMain:
        .CheckAnswerTop:
            push r14
            push r15
            push rsi
            push rdi
            push rax
            push rdx
        .CheckAnswerBody:
            # Worth writing a comment here because this is a complex label. After the ReadString input is attained, a series of checks are made.
            # 1. Check if the input is an integer. If so, feed to the ParseInt function and check if the integer is within the bounds of the quad.
            # 2. Check if the input is the string "options". If so, print the options.
            # 3. Check if the input is the string "exit". If so, exit the program.
            # 4. If none of the above, print the invalid answer message and loop back to the top.
            call ReadString
            call IsStringInteger
            cmp r15, 1
            je .CheckAnswerIntegerInQuad
            lea rdi, OptionsInput
            call CheckEqualStrings
            cmp r15, 1
            je .CheckAnswerOptions
            lea rdi, ExitInput
            call CheckEqualStrings
            cmp r15, 1
            je .CheckAnswerExit
            jmp .CheckAnswerInv
        .CheckAnswerIntegerInQuad:
            call ParseInt
            lea rsi, OptionQuad
            call GetQuadLength
            cmp r14, rax
            jg .CheckAnswerInv
            cmp r14, 0
            jle .CheckAnswerInv        
        .CheckAnswerVal:
            dec r14
            mov rsi, [AnswerQuad + r14 * 8]
            call PrintString
            mov r11, 1
            jmp .CheckAnswerOut
        .CheckAnswerInv:
            lea rsi, InvalidAnswer
            call PrintString
            jmp .CheckAnswerBody
        .CheckAnswerOptions:
            lea rsi, OptionQuad
            call PrintOptions
            jmp .CheckAnswerBody
        .CheckAnswerExit:
            xor r11, r11
        .CheckAnswerOut:
            pop rdx
            pop rax
            pop rdi
            pop rsi
            pop r15
            pop r14
            ret

    # FUNCTION: Returns the options in the quad pointed to by RSI to console, preceded by a 1-index integer.
    # INPUT: RSP - Pointer to quad to print options of.
    # OUTPUT: No register output. No buffer output. Console outputs options.
    # CLOBBERS: None.
    # NOTE: Assumes quad is null-terminated.
    PrintOptions:
        .PrintOptionsTop:
            push r14
            push r15
            xor r15, r15
        .PrintOptionsBody:
            cmp qword ptr [OptionQuad + r15 * 8], 0
            je .PrintOptionsOut
            inc r15
            mov r14, r15
            call PrintInteger
            dec r15
            lea rsi, [ColonSpace]
            call PrintString
            mov rsi, [OptionQuad + r15 * 8]
            call PrintString
            inc r15
            jmp .PrintOptionsBody
        .PrintOptionsOut:
            pop r15
            pop r14
            ret

    # FUNCTION: Checks if a String pointed to by RSI is an integer. Returns 1 in R15 if true, 0 in R15 if false.
    # INPUT: RSI - Pointer to string to check.
    # OUTPUT: R15 - 1 if string is an integer, 0 if not.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated. Assumes positive integer.
    IsStringInteger:
        .IsStringIntegerTop:
            push rax
            push r8
            xor r8, r8
        .IsStringIntegerBody:
            movzx rax, byte ptr [rsi + r8]
            cmp rax, 0
            je .IsStringIntegerVal
            cmp rax, 48
            jl .IsStringIntegerInv
            cmp rax, 57
            jg .IsStringIntegerInv
            inc r8
            jmp .IsStringIntegerBody
        .IsStringIntegerInv:
            mov r15, 0
            jmp .IsStringIntegerOut
        .IsStringIntegerVal:
            mov r15, 1
            jmp .IsStringIntegerOut
        .IsStringIntegerOut:
            pop r8
            pop rax
            ret

    # FUNCTION: Parses a string pointed to by RSI as an integer. Returns the integer in R14.
    # INPUT: RSI - Pointer to string to parse.
    # OUTPUT: R14 - Integer parsed from string.
    # CLOBBERS: None.
    # NOTE: Assumes string is an integer. Assumes string is null-terminated. Should be called after IsStringInteger. Will only function with positive integers up to 2^63-1.
    ParseInt:
        .ParseIntTop:
            push rax
            push r8
            push r13
            call GetStringLength
            xor r8, r8
            xor r14, r14
            dec r8
        .ParseIntBody:
            inc r8
            cmp r8, rax
            jge .ParseIntOut
            movzx r13, byte ptr [rsi + r8]
            sub r13, 48
            imul r14, 10
            add r14, r13
            jmp .ParseIntBody
        .ParseIntOut:
            pop r13
            pop r8
            pop rax
            ret
            
    # FUNCTION: Checks if two strings pointed to by RSI and RDI are equal. Returns 1 in R15 if true, 0 in R15 if false.
    # INPUT: RSI - Pointer to first string. RDI - Pointer to second string.
    # OUTPUT: R15 - 1 if strings are equal, 0 if not.
    # CLOBBERS: None.
    # NOTE: Assumes strings are null-terminated.
    CheckEqualStrings:
        .CheckEqualStringsTop:
            push r10
            push r8
            push r9
            xor r8, r8
        .CheckEqualStringsBody:
            movzx r9, byte ptr [rsi + r8]
            movzx r10, byte ptr [rdi + r8]
            cmp r9, r10
            jne .CheckEqualStringsNotEqual
            cmp byte ptr [rsi + r8], 0
            je .CheckEqualStringsEqual
            inc r8
            jmp .CheckEqualStringsBody
        .CheckEqualStringsNotEqual:
            mov r15, 0
            jmp .CheckEqualStringsOut
        .CheckEqualStringsEqual:
            mov r15, 1
            jmp .CheckEqualStringsOut
        .CheckEqualStringsOut:
            pop r9
            pop r8
            pop r10
            ret
    
    # FUNCTION: Exits the program.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: Registers RAX, RDI.
    Exit:
        .ExitTop:
            mov rax, 60
            xor rdi, rdi
            syscall
            ret
