.att_syntax

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
        IntegerOverflow:
        .asciz "You entered a number too large! Type \"options\" to see what you can play or type \"exit\" to leave the arcade.\n"

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
        leaq StartText, %rsi
        call PrintString
        call PrintOptions
        call QuestionLoop
        leaq EndText, %rsi
        call PrintString
        call Exit

    # FUNCTION: Prints string pointed to by RSI to STDOUT through SYSCALL.
    # INPUT: RSI - Pointer to string to print.
    # OUTPUT: No register output. No buffer output. Console outputs string.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated.
    PrintString:
        .PrintStringTop:
            pushq %rdi
            pushq %rdx
            pushq %rax
            call GetStringLength
            movq %rax, %rdx
            movq $1, %rax
            movq $1, %rdi
            syscall
            popq %rax
            popq %rdx
            popq %rdi
            ret

    # FUNCTION: Prints integer pointed to by R14 to STDOUT through SYSCALL by pushing to a little-endian stack and printing from the top of the stack.
    # INPUT: R14 - Register holding integer to print.
    # OUTPUT: No register output. No buffer output. Console outputs integer.
    # CLOBBERS: None.
    # NOTE: Assumes integer is positive. Will only function with positive integers up to 2^63-1.
    PrintInteger:
        .PrintIntegerTop:
            pushq %rax
            pushq %rdx
            pushq %rsi
            pushq %r10
            pushq %rcx
            movq %r14, %rax
            leaq intoutput, %rsi
            xorq %rcx, %rcx
        .PrintIntegerBody:
            movq $0, %rdx
            movq $10, %r10
            idivq %r10
            addb $'0', %dl
            pushq %rdx
            incq %rcx
            testq %rax, %rax
            jnz .PrintIntegerBody
        .PrintIntegerWrite:
            popq %rdx
            movb %dl, (%rsi)
            incq %rsi
            decq %rcx
            jnz .PrintIntegerWrite
            movb $0, (%rsi)
        .PrintIntegerOut:
            leaq intoutput, %rsi
            call PrintString
            popq %rcx
            popq %r10
            popq %rsi
            popq %rdx
            popq %rax
            ret

    # FUNCTION: Reads string from STDIN into buffer input through SYSCALL. If input is too long (checked by CMP RAX, 1022) the buffer will be flushed, the buffer will be destroyed, an error message will print and the user will be prompted for another input.
    # INPUT: STDIN.
    # OUTPUT: RSI - Pointer to buffer input. 
    # CLOBBERS: None.
    # NOTE: The buffer is destroyed after every read.
    ReadString:
        .ReadStringTop:
            pushq %rdi
            pushq %rdx
            pushq %rax
            call DestroyBuffer
            leaq ExpectingInput, %rsi
            call PrintString
            movq $0, %rax
            movq $0, %rdi
            leaq input, %rsi
            movq $1023, %rdx
            syscall
            cmpq $1022, %rax
            jg .ReadStringOverflow
            decq %rax
            movb $0, input(%rax)
            jmp .ReadStringOut
        .ReadStringOverflow:
            call FlushSTDIN
            leaq BufferOverflow, %rsi
            call PrintString
            jmp .ReadStringTop
        .ReadStringOut:
            popq %rax
            popq %rdx
            popq %rdi
            ret

    # FUNCTION: Returns the length of the string pointed to by RSI to RSI.
    # INPUT: RSI - Pointer to string to get length of.
    # OUTPUT: RAX - Length of string.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated.
    GetStringLength:
        .GetStringLengthTop:
            xorq %rax, %rax
        .GetStringLengthIter:
            cmpb $0, (%rsi, %rax)
            je .GetStringLengthOut
            incq %rax
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
            xorq %rax, %rax
        .GetQuadLengthIter:
            cmpq $0, (%rsi, %rax, 8)
            je .GetQuadLengthOut
            incq %rax
            jmp .GetQuadLengthIter
        .GetQuadLengthOut:
            ret

    # FUNCTION: Flushes kernel's STDIN buffer until a newline or EOF is found. Catches buffer overflow. Will not clobber registers.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: None.
    FlushSTDIN:
        .FlushSTDINTop:
            pushq %rax
            pushq %rdi
            pushq %rsi
            pushq %rdx
        .FlushSTDINIter:
            movq $0, %rax
            movq $0, %rdi
            leaq input(%rip), %rsi  # Fixed buffer reference
            movq $1, %rdx
            syscall
            cmpq $0, %rax
            je .FlushSTDINOut
            cmpb $10, input(%rip)   # Fixed buffer reference
            jne .FlushSTDINIter
        .FlushSTDINOut:
            popq %rdx
            popq %rsi
            popq %rdi
            popq %rax
            ret

    # FUNCTION: Destroys buffer by filling it with null bytes. Extra measure to handle oversze input. Will not clobber registers.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: Buffer input.
    DestroyBuffer:
        .DestroyBufferTop:
            pushq %rax
            pushq %rcx
            pushq %rdi
            movq $1024, %rcx
            xorq %rax, %rax
            leaq input, %rdi
            rep stosb
            popq %rdi
            popq %rcx
            popq %rax
            ret

    # FUNCTION: Asks the user to make choicesand get printed answers through CheckAnswerMain. A valid input will increment R10. The loop continues until the user inputs "exit". The function will print the number of valid choices made and exit the program.
    QuestionLoop:
        .QuestionLoopTop:
            leaq OptionQuad, %rsi
            call GetQuadLength
            xorq %r10, %r10
        .QuestionLoopIter:
            xorq %r11, %r11
            leaq Asker, %rsi
            call CheckAnswerMain
            testq %r11, %r11
            jz .QuestionLoopOut
            incq %r10
            jmp .QuestionLoopIter
        .QuestionLoopOut:
            leaq EndText1, %rsi
            call PrintString
            movq %r10, %r14
            call PrintInteger
            leaq EndText2, %rsi
            call PrintString
            ret

    # FUNCTION: Asks the user for a choice as an input string. Any number from 1 to the length of the choice array is considered a valid selection, the corresponding string is printed, and the function returns 1 to R11. A string input "options" will summon the option printer. A string input "exit" will exit the program through a return flag. Any other input will be considered invalid and the function will loop. 
    # INPUT: None.
    # OUTPUT: R11 - 1 if valid input, 0 if invalid input. No buffer output. Console outputs string.
    # CLOBBERS: 
    CheckAnswerMain:
        .CheckAnswerTop:
            pushq %r14
            pushq %r15
            pushq %rsi
            pushq %rdi
            pushq %rax
            pushq %rdx
        .CheckAnswerBody:
            # Worth writing a comment here because this is a complex label. After the ReadString input is attained, a series of checks are made.
            # 1. Check if the input is an integer. If so, feed to the ParseInt function and check if the integer is within the bounds of the quad.
            # 2. Check if the input is the string "options". If so, print the options.
            # 3. Check if the input is the string "exit". If so, exit the program.
            # 4. If none of the above, print the invalid answer message and loop back to the top.
            call ReadString
            call IsStringInteger
            testq %r15, %r15
            jnz .CheckAnswerIntegerInQuad
            leaq OptionsInput, %rdi
            call CheckEqualStrings
            testq %r15, %r15
            jnz .CheckAnswerOptions
            leaq ExitInput, %rdi
            call CheckEqualStrings
            testq %r15, %r15
            jnz .CheckAnswerExit
            jmp .CheckAnswerInv
        .CheckAnswerIntegerInQuad:
            call ParseInt
            testq %r15, %r15
            jz .CheckAnswerIntegerOverflow
            leaq OptionQuad, %rsi
            call GetQuadLength
            cmpq %rax, %r14
            jg .CheckAnswerInv
            cmpq $0, %r14
            jle .CheckAnswerInv        
        .CheckAnswerVal:
            decq %r14
            movq AnswerQuad(,%r14,8), %rsi  # Added index register
            call PrintString
            movq $1, %r11
            jmp .CheckAnswerOut
        .CheckAnswerIntegerOverflow:
            leaq IntegerOverflow, %rsi
            call PrintString
            jmp .CheckAnswerBody
        .CheckAnswerInv:
            leaq InvalidAnswer, %rsi
            call PrintString
            jmp .CheckAnswerBody
        .CheckAnswerOptions:
            leaq OptionQuad, %rsi
            call PrintOptions
            jmp .CheckAnswerBody
        .CheckAnswerExit:
            xorq %r11, %r11
        .CheckAnswerOut:
            popq %rdx
            popq %rax
            popq %rdi
            popq %rsi
            popq %r15
            popq %r14
            ret

    # FUNCTION: Returns the options in the quad pointed to by RSI to console, preceded by a 1-index integer.
    # INPUT: RSP - Pointer to quad to print options of.
    # OUTPUT: No register output. No buffer output. Console outputs options.
    # CLOBBERS: None.
    # NOTE: Assumes quad is null-terminated.
    PrintOptions:
        .PrintOptionsTop:
            pushq %r14
            pushq %r15
            xorq %r15, %r15
        .PrintOptionsBody:
            cmpq $0, OptionQuad(,%r15,8)    # Added index register
            je .PrintOptionsOut
            incq %r15
            movq %r15, %r14
            call PrintInteger
            decq %r15
            leaq ColonSpace, %rsi
            call PrintString
            movq OptionQuad(,%r15,8), %rsi  # Added index register
            call PrintString
            incq %r15
            jmp .PrintOptionsBody
        .PrintOptionsOut:
            popq %r15
            popq %r14
            ret

    # FUNCTION: Checks if a String pointed to by RSI is an integer. Returns 1 in R15 if true, 0 in R15 if false.
    # INPUT: RSI - Pointer to string to check.
    # OUTPUT: R15 - 1 if string is an integer, 0 if not.
    # CLOBBERS: None.
    # NOTE: Assumes string is null-terminated. Assumes positive integer.
    IsStringInteger:
        .IsStringIntegerTop:
            pushq %rax
            pushq %r8
            xorq %r8, %r8
        .IsStringIntegerBody:
            movzxb (%rsi, %r8), %rax
            cmpq $0, %rax
            je .IsStringIntegerVal
            cmpq $48, %rax
            jl .IsStringIntegerInv
            cmpq $57, %rax
            jg .IsStringIntegerInv
            incq %r8
            jmp .IsStringIntegerBody
        .IsStringIntegerInv:
            movq $0, %r15
            jmp .IsStringIntegerOut
        .IsStringIntegerVal:
            movq $1, %r15
            jmp .IsStringIntegerOut
        .IsStringIntegerOut:
            popq %r8
            popq %rax
            ret

    # FUNCTION: Parses a string pointed to by RSI as an integer. Returns the integer in R14.
    # INPUT: RSI - Pointer to string to parse.
    # OUTPUT: R14 - Integer parsed from string.
    # CLOBBERS: R15 - Success/Failure flag based on overflow.
    # NOTE: Assumes string is an integer. Assumes string is null-terminated. Should be called after IsStringInteger. Will only function with positive integers up to 2^63-1.
    ParseInt:
        .ParseIntTop:
            call GetStringLength
            pushq %rax
            pushq %r8
            pushq %r13
            pushq %rdx
            xorq %r8, %r8
            xorq %r14, %r14
            xorq %r15, %r15
            incq %r15           # Remove the decq %r8 here since we want to start at 0
        .ParseIntBody:
            cmpq %rax, %r8     # Changed comparison order
            jge .ParseIntOut    # Exit if we've reached the end of string
            movzxb (%rsi, %r8), %r13
            subq $48, %r13
            imulq $10, %r14
            jo .ParseIntOverflow
            addq %r13, %r14
            jo .ParseIntOverflow
            incq %r8
            jmp .ParseIntBody
        .ParseIntOverflow:
            xorq %r14, %r14
            xorq %r15, %r15
        .ParseIntOut:
            popq %rdx
            popq %r13
            popq %r8
            popq %rax
            ret
            
    # FUNCTION: Checks if two strings pointed to by RSI and RDI are equal. Returns 1 in R15 if true, 0 in R15 if false.
    # INPUT: RSI - Pointer to first string. RDI - Pointer to second string.
    # OUTPUT: R15 - 1 if strings are equal, 0 if not.
    # CLOBBERS: None.
    # NOTE: Assumes strings are null-terminated.
    CheckEqualStrings:
        .CheckEqualStringsTop:
            pushq %r10
            pushq %r8
            pushq %r9
            xorq %r8, %r8
        .CheckEqualStringsBody:
            movzxb (%rsi, %r8), %r9
            movzxb (%rdi, %r8), %r10
            cmpq %r9, %r10
            jne .CheckEqualStringsNotEqual
            cmpb $0, (%rsi, %r8)
            je .CheckEqualStringsEqual
            incq %r8
            jmp .CheckEqualStringsBody
        .CheckEqualStringsNotEqual:
            movq $0, %r15
            jmp .CheckEqualStringsOut
        .CheckEqualStringsEqual:
            movq $1, %r15
            jmp .CheckEqualStringsOut
        .CheckEqualStringsOut:
            popq %r9
            popq %r8
            popq %r10
            ret
    
    # FUNCTION: Exits the program.
    # INPUT: None.
    # OUTPUT: None.
    # CLOBBERS: Registers RAX, RDI.
    Exit:
        .ExitTop:
            movq $60, %rax
            xorq %rdi, %rdi
            syscall
            ret
