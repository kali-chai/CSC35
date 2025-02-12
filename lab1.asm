# lab1.asm
# WILSON, KALI
#
# 1. Assembly : as -o lab1.o lab1.asm
# 2. Link     : ld -o a-out lab1.o csc35.o
# 3. Execute  : ./a.out

.intel_syntax noprefix
.data
Message:
    .ascii "Beep\n"
NameMessage:
    .ascii "Kali Wilson\n"
Quote:
    .ascii "RTFM\n"
OtherMessage:
    .ascii "Boop\n"

.text
.global Begin

Begin:
    lea rsi, Message
    call PrintString

    lea rsi, NameMessage
    call PrintString

    lea rsi, Quote
    call PrintString

    lea rsi, OtherMessage
    call PrintString

    call ExitProgram
