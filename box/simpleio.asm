.intel_syntax noprefix
.data 
    StartTest:
    .asciz "This is a string"

.bss
    .comm input, 1024

.text
    .global Begin

Begin:
    lea rsi, StartTest
    call PrintString
    call ReadString
    call ExitProgram
    ret