.intel_syntax noprefix

.section .rodata
    Node1:
        .quad Node1Text, Node2, Node3, 0

    Node2:
        .quad Node2Text, Node4, Node5, 0

    Node3:
        .quad Node3Text, Node5, Node5, 0

    Node4:
        .quad Node4Text, Node1, ExitA, 0

    Node5:
        .quad Node5Text, ExitA, ExitB, 0

    ExitA:
        .quad ExitAText, 0, 0, 1

    ExitB:
        .quad ExitBText, 0, 0, 1

    Node1Text:
        .asciz "Node 1: Welcome to Node 1! False for Node 2, True for Node 3."

    Node2Text:
        .asciz "Node 2: Welcome to Node 2! False for Node 4, True for Node 5."

    Node3Text:
        .asciz "Node 3: Welcome to Node 3! Both paths lead to Node 5."

    Node4Text:
        .asciz "Node 4: Welcome to Node 4! False for Node 1, True for Exit A!"

    Node5Text:
        .asciz "Node 5: Welcome to Node 5! False for Exit A, True for Exit B!"

    ExitAText:
        .asciz "Exit A: Goodbye from Exit A!"

    ExitBText:
        .asciz "Exit B: Goodbye from Exit B!"

.section .bss

.section .text

.global _start
.type _start, @function
.type CheckEqualStrings, @function
.type ReadString, @function
    

    _start:
        0:
        nop
        1:
        cmp             qword ptr [r8 + 24], 1
        je              3f
        2:
        mov             rsi, qword ptr [r8]
        call            PrintString

    PrintString:
        0:
            push  rdi
            push  rdx
            push  rax
        1:
            call  GetStringLength
            mov   rdx, rax
            mov   rax, 1
            mov   rdi, 1
            syscall
        2:
            pop   rax
            pop   rdx
            pop   rdi
            ret

    ReadString:
        0:
            push        rdi
            push        rdx
            push        rax
        1:
            call        DestroyBuffer
            lea         rsi, ExpectingInput
            call        PrintString
            mov         rax, 0
            mov         rdi, 0
            lea         rsi, [input]
            mov         rdx, 1023
            syscall
            cmp         rax, 1022
            jg          2f
            dec         rax
            mov         byte ptr [input + rax], 0
            jmp         3f
        2:
            call        FlushSTDIN
            lea         rsi, BufferOverflow
            call        PrintString
            jmp         1b
        3:
            pop         rax
            pop         rdx
            pop         rdi
            ret


    # Function
    CheckEqualStrings:
        0:
            push        r10
            push        r8
            push        r9
            xor         r8, r8
        1:
            movzx       r9, byte ptr [rsi + r8]
            movzx       r10, byte ptr [rdi + r8]
            cmp         r9, r10
            jne         2f
            cmp         byte ptr [rsi + r8], 0
            je          3f
            inc         r8
            jmp         1b
        2:
            mov         r15, 0
            jmp         4f
        3:
            mov         r15, 1
            jmp         4f
        4:
            pop         r9
            pop         r8
            pop         r10
            ret

