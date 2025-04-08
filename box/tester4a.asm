        global main
        extern printf
        extern scanf

        section .data
OptionQuad:      dq Option1, Option2, Option3, 0
Option1:         db "First Option", 0
Option2:         db "Second Option", 0
Option3:         db "Third Option", 0
ColonSpace:      db ": ", 0
IntegerFormat:   db "%d", 0

        section .text
main:
        push rbp
        mov rbp, rsp

        ; Test PrintOptions function
        lea rsi, [OptionQuad]
        call PrintOptions

        mov rsp, rbp
        pop rbp
        xor rax, rax
        ret

PrintOptions:
    .PrintOptionsTop:
        call getQuadLength
        push r8
        push r15
        push rsi
        xor r8, r8
        dec r8
    .PrintOptionsBody:
        inc r8
        mov rsi, [rsp]
        cmp qword ptr [rsi + r8 * 8], 0
        je .PrintOptionsOut
        mov r15, r8
        inc r15
        call PrintInteger
        lea rsi, [ColonSpace]
        call PrintString
        lea rsi, OptionQuad
        mov rsi, [rsi + r8 * 8]
        call PrintString
        jmp .PrintOptionsBody
    .PrintOptionsOut:
        pop rsi
        pop r15
        pop r8
        ret

; Helper functions
PrintString:
        push rdi
        push rax
        push rsi
        
        mov rdi, rsi
        call strlen
        mov rdx, rax
        mov rax, 1
        mov rdi, 1
        syscall
        
        pop rsi
        pop rax
        pop rdi
        ret

PrintInteger:
        push rax
        push rdi
        push rsi
        push rdx
        
        mov rdi, IntegerFormat
        mov rsi, r15
        xor rax, rax
        call printf
        
        pop rdx
        pop rsi
        pop rdi
        pop rax
        ret

strlen:
        push rbx
        mov rbx, rdi
        xor rax, rax
    .loop:
        cmp byte [rbx], 0
        je .done
        inc rax
        inc rbx
        jmp .loop
    .done:
        pop rbx
        ret

getQuadLength:
        push rcx
        push rsi
        xor rcx, rcx
    .loop:
        cmp qword [rsi + rcx * 8], 0
        je .done
        inc rcx
        jmp .loop
    .done:
        mov rax, rcx
        pop rsi
        pop rcx
        ret
