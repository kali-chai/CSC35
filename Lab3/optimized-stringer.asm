.intel_syntax noprefix
.section .data
StartText: .asciz "Time to play at the arcade! Type the game's number to play, enter \"options\" to see your options again, or \"exit\" to quit! Here's the catalog:\n"
ExpectingInput: .asciz "> "
EndText: .asciz "Come again soon!\n"
EndText1: .asciz "You spent "
EndText2: .asciz " quarters at the arcade.\n"
ColonSpace: .asciz ": "
NewLine: .asciz "\n"
Asker: .asciz "Enter the number of your favorite game!\n"
InvalidAnswer: .asciz "That is not a valid option. Type \"options\" to see what you can play or type \"exit\" to leave the arcade.\n"
OptionsInput: .asciz "options"
ExitInput: .asciz "exit"
BufferOverflow: .asciz "That input is too large! Press any key to retry.\n"
IntegerOverflow: .asciz "You entered a number too large! Type \"options\" to see what you can play or type \"exit\" to leave the arcade.\n"
Game1: .asciz "Pac-Man\n"
Game2: .asciz "Breakout\n"
Game3: .asciz "Freeway\n"
Game4: .asciz "Space Invaders\n"
Game5: .asciz "Asteroids\n"
Game6: .asciz "Pong\n"
Game1Answer: .asciz "Wocka wocka!\n"
Game2Answer: .asciz "Break those bricks!\n"
Game3Answer: .asciz "Honk honk!\n"
Game4Answer: .asciz "Aliens incoming!\n"
Game5Answer: .asciz "Pew pew!\n"
Game6Answer: .asciz "Boop!\n"
OptionQuad: .quad Game1,Game2,Game3,Game4,Game5,Game6,0
AnswerQuad: .quad Game1Answer,Game2Answer,Game3Answer,Game4Answer,Game5Answer,Game6Answer,0
.section .bss
.comm input,1024
.comm intoutput,64
.section .text
.global _start
_start:
lea rsi,StartText
call PrintString
call PrintOptions
xor r10,r10
1:
call ReadString
call ProcessInput
test r11,r11
jz 2f
inc r10
jmp 1b
2:
lea rsi,EndText1
call PrintString
mov r14,r10
call PrintInteger
lea rsi,EndText2
call PrintString
lea rsi,EndText
call PrintString
mov rax,60
xor rdi,rdi
syscall
ProcessInput:
lea rsi,[input]
call IsStringInteger
test r15,r15
jnz 1f
lea rdi,OptionsInput
call CheckEqualStrings
test r15,r15
jnz 4f
lea rdi,ExitInput
call CheckEqualStrings
test r15,r15
jnz 5f
lea rsi,InvalidAnswer
call PrintString
jmp ProcessInput
1:
call ParseInt
test r15,r15
jz 2f
lea rsi,OptionQuad
call GetQuadLength
cmp r14,rax
jg 3f
cmp r14,0
jle 3f
dec r14
mov rsi,[AnswerQuad+r14*8]
call PrintString
mov r11,1
ret
2:
lea rsi,IntegerOverflow
call PrintString
jmp ProcessInput
3:
lea rsi,InvalidAnswer
call PrintString
jmp ProcessInput
4:
call PrintOptions
jmp ProcessInput
5:
xor r11,r11
ret
PrintString:
push rdi
push rdx
push rax
call GetStringLength
mov rdx,rax
mov rax,1
mov rdi,1
syscall
pop rax
pop rdx
pop rdi
ret
PrintInteger:
push rax
push rdx
push rsi
push r10
push rcx
mov rax,r14
lea rsi,[intoutput]
xor rcx,rcx
1:
xor rdx,rdx
mov r10,10
div r10
add dl,'0'
push rdx
inc rcx
test rax,rax
jnz 1b
2:
pop rdx
mov byte ptr [rsi],dl
inc rsi
dec rcx
jnz 2b
mov byte ptr [rsi],0
lea rsi,[intoutput]
call PrintString
pop rcx
pop r10
pop rsi
pop rdx
pop rax
ret
ReadString:
push rdi
push rdx
push rax
call DestroyBuffer
lea rsi,ExpectingInput
call PrintString
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
1:
call FlushSTDIN
lea rsi,BufferOverflow
call PrintString
jmp ReadString
2:
pop rax
pop rdx
pop rdi
ret
GetStringLength:
xor rax,rax
1:
cmp byte ptr [rsi+rax],0
je 2f
inc rax
jmp 1b
2:
ret
GetQuadLength:
xor rax,rax
1:
cmp qword ptr [rsi+rax*8],0
je 2f
inc rax
jmp 1b
2:
ret
FlushSTDIN:
push rax
push rdi
push rsi
push rdx
1:
xor rax,rax
xor rdi,rdi
lea rsi,[input]
mov rdx,1
syscall
cmp rax,0
je 2f
cmp byte ptr [input],10
jne 1b
2:
pop rdx
pop rsi
pop rdi
pop rax
ret
DestroyBuffer:
push rax
push rcx
push rdi
mov rcx,1024
xor rax,rax
lea rdi,[input]
rep stosb
pop rdi
pop rcx
pop rax
ret
PrintOptions:
push r14
push r15
xor r15,r15
1:
cmp qword ptr [OptionQuad+r15*8],0
je 2f
inc r15
mov r14,r15
call PrintInteger
dec r15
lea rsi,[ColonSpace]
call PrintString
mov rsi,[OptionQuad+r15*8]
call PrintString
inc r15
jmp 1b
2:
pop r15
pop r14
ret
IsStringInteger:
push rax
push r8
xor r8,r8
1:
movzx rax,byte ptr [rsi+r8]
cmp rax,0
je 3f
cmp rax,48
jl 2f
cmp rax,57
jg 2f
inc r8
jmp 2b
2:
xor r15,r15
jmp 4f
3:
mov r15,1
4:
pop r8
pop rax
ret
ParseInt:
call GetStringLength
push rax
push r8
push r13
xor r8,r8
xor r14,r14
mov r15,1
1:
cmp r8,rax
jge 3f
movzx r13,byte ptr [rsi+r8]
sub r13,48
imul r14,10
jo 2f
add r14,r13
jo 2f
inc r8
jmp 1b
2:
xor r14,r14
xor r15,r15
3:
pop r13
pop r8
pop rax
ret
CheckEqualStrings:
push r8
push r9
push r10
xor r8,r8
1:
movzx r9,byte ptr [rsi+r8]
movzx r10,byte ptr [rdi+r8]
cmp r9,r10
jne 2f
cmp r9,0
je 3f
inc r8
jmp 1b
2:
xor r15,r15
jmp 4f
3:
mov r15,1
4:
pop r10
pop r9
pop r8
ret
