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
    .global Begin

    Begin:
        lea rsi, StartText
        call PrintString
        call PrintOptions
        call QuestionLoop
        lea rsi, EndText
        call PrintString
        call ExitProgram

    PrintInteger:
        .PrintIntegerTop:
            push rax
            push rdx
            push rsi
            push rcx
            push r10
            mov rax, r14
            lea rsi, [intoutput]
            xor rcx, rcx
        .PrintIntegerCheckNegative:
            test rax, rax
            jns .PrintIntegerBody
            mov byte ptr [rsi], '-'
            neg rax
            inc rsi
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
            pop r10
            pop rcx
            pop rsi
            pop rdx
            pop rax
            ret

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

    CheckAnswerMain:
        .CheckAnswerTop:
            push r14
            push r15
            push rsi
            push rdi
            push rax
            push rdx
        .CheckAnswerBody:
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
        .CheckAnswerInv:
            push rsi
            lea rsi, [InvalidAnswer]
            call PrintString
            pop rsi
            jmp .CheckAnswerBody
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
        .CheckAnswerOptions:
            push rsi
            lea rsi, OptionQuad
            call PrintOptions
            pop rsi
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

    PrintOptions:
        .PrintOptionsTop:
            push rax
            push rsi
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
            push rsi
            lea rsi, [ColonSpace]
            call PrintString
            pop rsi
            mov rsi, [OptionQuad + r15 * 8]
            push r15
            call PrintString
            pop r15
            inc r15
            jmp .PrintOptionsBody
        .PrintOptionsOut:
            pop r15
            pop r14
            pop rsi
            pop rax
            ret

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

    ParseInt:
        .ParseIntTop:
            push  rax
            push  r8
            push  r13
            push  rdx
            push  r10
            call  GetStringLength
            xor   r8,  r8
            xor   r14, r14
            xor   r15, r15
            mov   r10, 1
            dec   r8
            inc   r15
        .CheckSign:
            cmp   byte ptr [rsi], '-'
            jne   .ParseIntBody
            inc   r8
            mov   r10, -1
        .ParseIntBody:
            inc   r8
            cmp   r8, rax
            jge   .ParseIntOut
            movzx r13, byte ptr [rsi + r8]
            sub   r13, 48
            imul  r14, 10
            jo    .ParseIntOverflow
            add   r14, r13
            jo    .ParseIntOverflow
            jmp   .ParseIntBody
        .ParseIntOverflow:
            xor   r14, r14
            xor   r15, r15
        .ParseIntOut:
            imul r14, r10
            pop r10
            pop rdx
            pop r13
            pop r8
            pop rax
            ret

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
