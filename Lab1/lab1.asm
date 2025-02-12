# lab1.asm
# WILSON, KALI
#
# 1. Assembly : as -o lab1.o lab1.asm
# 2. Link     : ld -o a-out lab1.o csc35.o
# 3. Execute  : ./a.out

.intel_syntax noprefix
.data
Message:
    .ascii "Beep\n\0"
Name:
    .ascii "Kali Wilson\n\0"
Quote:
    .ascii "Everything is open-source if you can read assembly\n\0"
OtherMessage:
    .ascii "Boop\n\0"

.text
.global Begin

Begin:
    lea rsi, Message
    call PrintString

    lea rsi, Name
    call PrintString

    lea rsi, Quote
    call PrintString

    lea rsi, OtherMessage
    call PrintString

    call ExitProgram
