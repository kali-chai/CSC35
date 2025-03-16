.intel_syntax noprefix
.section .data
str_start:.asciz "Arcade games! Enter number to play, \"options\" to list, \"exit\" to quit:\n"
str_prompt:.asciz "> "
str_end:.asciz "Bye! "
str_spent:.asciz "You spent "
str_coins:.asciz " coins.\n"
str_sep:.asciz ": "
str_ask:.asciz "Pick: "
str_opt:.asciz "options"
str_exit:.asciz "exit"
str_err:.asciz "Invalid. Type \"options\" or \"exit\".\n"
game1:.asciz "Pac-Man\n"
game2:.asciz "Breakout\n"
game3:.asciz "Freeway\n"
game4:.asciz "Invaders\n"
game5:.asciz "Asteroids\n"
game6:.asciz "Pong\n"
resp1:.asciz "Wocka!\n"
resp2:.asciz "Smash!\n"
resp3:.asciz "Honk!\n"
resp4:.asciz "Zap!\n"
resp5:.asciz "Boom!\n"
resp6:.asciz "Boop!\n"
games:.quad game1,game2,game3,game4,game5,game6,0
responses:.quad resp1,resp2,resp3,resp4,resp5,resp6,0
.section .bss
.comm input,1024
.comm intbuf,16
.section .text
.global _start
_start:
lea rsi,[str_start]
call print
call show_options
call game_loop
lea rsi,[str_end]
call print
mov rax,60
syscall
print:
push rdi
xor rax,rax
mov rdi,rsi
dec rax
1:inc rax
cmp byte ptr [rdi+rax],0
jne 1b
mov rdx,rax
mov rax,1
mov rdi,1
syscall
pop rdi
ret
read_input:
push rdi
call clear_buffer
lea rsi,[str_prompt]
call print
xor rax,rax
xor rdi,rdi
lea rsi,[input]
mov rdx,1023
syscall
cmp rax,1022
jg 1f
dec rax
mov byte ptr [input+rax],0
jmp 2f
1:call flush_stdin
lea rsi,[str_err]
call print
pop rdi
jmp read_input
2:pop rdi
ret
clear_buffer:
push rdi
lea rdi,[input]
mov rcx,1024
xor rax,rax
rep stosb
pop rdi
ret
flush_stdin:
push rdi
1:xor rax,rax
xor rdi,rdi
lea rsi,[input]
mov rdx,1
syscall
test rax,rax
jz 2f
cmp byte ptr [input],10
jne 1b
2:pop rdi
ret
game_loop:
xor r12,r12
1:lea rsi,[str_ask]
call print
lea rsi,[input]
call read_input
lea rsi,[input]
lea rdi,[str_opt]
call strcmp
test r15,r15
jz 2f
call show_options
jmp 1b
2:lea rsi,[input]
lea rdi,[str_exit]
call strcmp
test r15,r15
jz 3f
lea rsi,[str_spent]
call print
mov r14,r12
call print_int
lea rsi,[str_coins]
call print
ret
3:lea rsi,[input]
call is_number
test r15,r15
jz 4f
call parse_int
test r15,r15
jz 4f
lea rsi,[games]
call get_array_len
cmp r14,rax
jg 4f
test r14,r14
jz 4f
dec r14
mov rsi,[responses+r14*8]
call print
inc r12
jmp 1b
4:lea rsi,[str_err]
call print
jmp 1b
show_options:
push r14
push r15
lea rsi,[games]
xor r15,r15
1:cmp qword ptr [games+r15*8],0
je 2f
inc r15
mov r14,r15
call print_int
dec r15
lea rsi,[str_sep]
call print
mov rsi,[games+r15*8]
call print
inc r15
jmp 1b
2:pop r15
pop r14
ret
is_number:
push rax
xor rcx,rcx
1:movzx rax,byte ptr [rsi+rcx]
test rax,rax
jz 2f
sub rax,'0'
cmp rax,9
ja 3f
inc rcx
jmp 1b
2:mov r15,1
jmp 4f
3:xor r15,r15
4:pop rax
ret
parse_int:
push rax
xor rcx,rcx
xor r14,r14
mov r15,1
1:movzx rax,byte ptr [rsi+rcx]
test rax,rax
jz 3f
sub rax,'0'
imul r14,10
jo 2f
add r14,rax
jo 2f
inc rcx
jmp 1b
2:xor r14,r14
xor r15,r15
3:pop rax
ret
strcmp:
push rcx
xor rcx,rcx
1:movzx rdx,byte ptr [rsi+rcx]
cmp dl,[rdi+rcx]
jne 2f
test dl,dl
jz 3f
inc rcx
jmp 1b
2:xor r15,r15
jmp 4f
3:mov r15,1
4:pop rcx
ret
get_array_len:
push rcx
xor rax,rax
1:cmp qword ptr [rsi+rax*8],0
je 2f
inc rax
jmp 1b
2:pop rcx
ret
print_int:
push rsi
push rcx
mov rax,r14
lea rsi,[intbuf]
xor rcx,rcx
1:xor rdx,rdx
mov r8,10
div r8
add dl,'0'
push rdx
inc rcx
test rax,rax
jnz 1b
2:pop rdx
mov [rsi],dl
inc rsi
loop 2b
mov byte ptr [rsi],0
lea rsi,[intbuf]
call print
pop rcx
pop rsi
ret
