.intel_syntax noprefix

.section .rodata

    Node0x01:
    .quad Node0x01Question, Node0x02, Node0x10, 0
    Node0x01Question:

    Node0x02:
    .quad Node0x02Question, Node0x03, Node0x11, 0

    Node0x03:
    .quad Node0x03Question, Node0x04, Node0x13, 0

    Node0x04:
    .quad Node0x04Question, Node0x05, Node0x12, 0

    Node0x05:
    .quad Node0x05Question, Node0x07, Node0x06, 0

    Node0x06:
    .quad Node0x06Question, ExitNode0x03, ExitNode0x04, 0

    Node0x07:
    .quad Node0x07Question, ExitNode0x01, ExitNode0x02, 0

    Node0x10:
    .quad Node0x10Question, Node0x11, Node0x20, 0

    Node0x11:
    .quad Node0x11Question, Node0x22, Node0x21, 0

    Node0x12:
    .quad Node0x12Question, ExitNode0x04, ExitNode0x05, 0

    Node0x13:
    .quad Node0x13Question, ExitNode0x06, ExitNode0x07, 0

    Node0x20:
    .quad Node0x20Question, Node0x32, ExitNode0x11, 0

    Node0x21:
    .quad Node0x21Question, Node0x24, Node0x30, 0

    Node0x22:
    .quad Node0x22Question, Node0x23, Node0x24, 0

    Node0x23:
    .quad Node0x23Question, Node0x30, Node0x25, 0

    Node0x24:
    .quad Node0x24Question, Node0x25, Node0x26, 0

    Node0x25:
    .quad Node0x25Question, ExitNode0x08, ExitNode0x09, 0

    Node0x26:
    .quad Node0x26Question, ExitNode0x0A, ExitNode0x0B, 0

    Node0x30:
    .quad Node0x30Question, Node0x31, Node0x32, 0

    Node0x31:
    .quad Node0x31Question, Node0x33, Node0x34, 0

    Node0x32:
    .quad Node0x32Question, Node0x40, Node0x41, 0

    Node0x33:
    .quad Node0x33Question, Node0x02, ExitNode0x0D, 0

    Node0x34:
    .quad Node0x34Question, ExitNode0x0D, ExitNode0x10, 0

    Node0x40:
    .quad Node0x40Question, ExitNode0x0E, ExitNode0x0F, 0

    Node0x41:
    .quad Node0x41Question, ExitNode0x0F, ExitNode0x11, 0

    ExitNode0x00:
    .quad 0, 0, 0, ExitString0x00

    ExitNode0x01:
    .quad 0, 0, 0, ExitString0x01

    ExitNode0x02:
    .quad 0, 0, 0, ExitString0x02

    ExitNode0x03:
    .quad 0, 0, 0, ExitString0x03

    ExitNode0x04:
    .quad 0, 0, 0, ExitString0x04

    ExitNode0x05:
    .quad 0, 0, 0, ExitString0x05

    ExitNode0x06:
    .quad 0, 0, 0, ExitString0x06

    ExitNode0x07:
    .quad 0, 0, 0, ExitString0x07

    ExitNode0x08:
    .quad 0, 0, 0, ExitString0x08

    ExitNode0x09:
    .quad 0, 0, 0, ExitString0x09

    ExitNode0x0A:
    .quad 0, 0, 0, ExitString0x0A

    ExitNode0x0B:
    .quad 0, 0, 0, ExitString0x0B

    ExitNode0x0C:
    .quad 0, 0, 0, ExitString0x0C

    ExitNode0x0D:
    .quad 0, 0, 0, ExitString0x0D

    ExitNode0x0E:
    .quad 0, 0, 0, ExitString0x0E

    ExitNode0x0F:
    .quad 0, 0, 0, ExitString0x0F

    ExitNode0x10:
    .quad 0, 0, 0, ExitString0x10

    ExitNode0x11:
    .quad 0, 0, 0, ExitString0x11

    Node0x01Question:
    .asciz "Sample question @ Node0x01\n"

    Node0x02Question:
    .asciz "Sample question @ Node0x02\n"

    Node0x03Question:
    .asciz "Sample question @ Node0x03\n"

    Node0x04Question:
    .asciz "Sample question @ Node0x04\n"

    Node0x05Question:
    .asciz "Sample question @ Node0x05\n"

    Node0x06Question:
    .asciz "Sample question @ Node0x06\n"

    Node0x07Question:
    .asciz "Sample question @ Node0x07\n"

    Node0x10Question:
    .asciz "Sample question @ Node0x10\n"

    Node0x11Question:
    .asciz "Sample question @ Node0x11\n"

    Node0x12Question:
    .asciz "Sample question @ Node0x12\n"

    Node0x13Question:
    .asciz "Sample question @ Node0x13\n"

    Node0x20Question:
    .asciz "Sample question @ Node0x20\n"

    Node0x21Question:
    .asciz "Sample question @ Node0x21\n"

    Node0x22Question:
    .asciz "Sample question @ Node0x22\n"

    Node0x23Question:
    .asciz "Sample question @ Node0x23\n"

    Node0x24Question:
    .asciz "Sample question @ Node0x24\n"

    Node0x25Question:
    .asciz "Sample question @ Node0x25\n"

    Node0x26Question:
    .asciz "Sample question @ Node0x26\n"

    Node0x30Question:
    .asciz "Sample question @ Node0x30\n"

    Node0x31Question:
    .asciz "Sample question @ Node0x31\n"

    Node0x32Question:
    .asciz "Sample question @ Node0x32\n"

    Node0x33Question:
    .asciz "Sample question @ Node0x33\n"

    Node0x34Question:
    .asciz "Sample question @ Node0x34\n"

    Node0x40Question:
    .asciz "Sample question @ Node0x40\n"

    Node0x41Question:
    .asciz "Sample question @ Node0x41\n"

    ExitString0x00:
    .asciz "Sample exit string @ ExitNode0x00\n"

    ExitString0x01:
    .asciz "Sample exit string @ ExitNode0x01\n"

    ExitString0x02:
    .asciz "Sample exit string @ ExitNode0x02\n"

    ExitString0x03:
    .asciz "Sample exit string @ ExitNode0x03\n"

    ExitString0x04:
    .asciz "Sample exit string @ ExitNode0x04\n"

    ExitString0x05:
    .asciz "Sample exit string @ ExitNode0x05\n"

    ExitString0x06:
    .asciz "Sample exit string @ ExitNode0x06\n"

    ExitString0x07:
    .asciz "Sample exit string @ ExitNode0x07\n"

    ExitString0x08:
    .asciz "Sample exit string @ ExitNode0x08\n"

    ExitString0x09:
    .asciz "Sample exit string @ ExitNode0x09\n"

    ExitString0x0A:
    .asciz "Sample exit string @ ExitNode0x0A\n"

    ExitString0x0B:
    .asciz "Sample exit string @ ExitNode0x0B\n"

    ExitString0x0C:
    .asciz "Sample exit string @ ExitNode0x0C\n"

    ExitString0x0D:
    .asciz "Sample exit string @ ExitNode0x0D\n"

    ExitString0x0E:
    .asciz "Sample exit string @ ExitNode0x0E\n"

    ExitString0x0F:
    .asciz "Sample exit string @ ExitNode0x0F\n"

    ExitString0x10:
    .asciz "Sample exit string @ ExitNode0x10\n"

    ExitString0x11:
    .asciz "Sample exit string @ ExitNode0x11\n"

.section .data

    HistoryStack:
    .quad 0

.section .bss

.section .text

    CopyBufferToBuffer: #takes rdi as source, rsi as destination, rdx as size
        0:
        push rax
        push rdi
        push rsi
        push rdx
        push r10
        1:
        xor r10, r10
        cmp r10, rdx
        jge 3f
        2:
        mov byte ptr [rsi + r10], byte ptr [rdi + r10]
        inc r10
        jmp 2b
        3:
        pop r10
        pop rdx
        pop rsi
        pop rdi
        pop rax
        ret


    SetupHistoryStack:
        push rax
        push rdi
        push rsi
        push rdx
        push r10
        push r8
        push r9
        mov rdi, 0
        mov rax, 9
        mov rsi, 16
        mov rdx, 0x1 | 0x2
        mov r10, 0x20
        mov r8, -1
        mov r9, 0
        syscall
        mov qword ptr [HistoryStack], 0
        mov qword ptr [HistoryStack + [qword ptr [HistoryStack] * 8] + 8], r15
        pop r9
        pop r8
        pop r10
        pop rdx
        pop rsi
        pop rdi
        pop rax
        ret

    StackAddNode:
        push rax
        push rdi
        push rsi
        push rdx
        push r10
        push r8
        push r9
        mov rdi, 0
        mov rsi, [qword ptr [HistoryStack] * 8] + 8
        mov rdx, 0x1 | 0x2
        mov r10, 0x20
        mov r8, -1
        mov r9, 0
        syscall
        push r9
        pop r8
        pop r10
        pop rdx
        pop rsi
        pop rdi
        pop rax
        mov qword ptr [qword ptr[qword ptr [HistoryStack]]], r8 
        ret

        mov rax, 25
        mov rdi, [HistoryStack]
        mov rsi, qword ptr [rdi]
        mov rdx, [qword ptr [rdi]] + 8
        mov r10, 1
        syscall
        mov qword ptr [HistoryStack], rdi
        inc qword ptr [qword ptr [HistoryStack]]
        
        ret

    StackShrink:
        push rax
        push rdi
        push rsi
        push rdx
        push r10
        mov 
        pop r10
        pop rdx
        pop rsi
        pop rdi
        pop rax
        ret

    GetNextNode:
        cmp r15b, 0
        jl 1f
        cmp r15b, 1
        jg 1f
        mov r8, qword ptr [qword ptr [qword ptr [HistoryStack + 8 + [qword ptr [qword ptr [HistoryStack]] * 8]] + [[r15b * 8] + 8]]]
        ret
        1:
        call NextNodeFail
        ret

    Backtrack:
        0:
        nop
        1:
        cmp r9, rax
        jg 3f
        2:
        mov qword ptr [HistoryStack + [[qword ptr [HistoryStack] * 8] + 8]], 0
        # get address of HistoryStack, get address of Index, mult by 8, add to HistoryStack + 8, set stack item to 0

