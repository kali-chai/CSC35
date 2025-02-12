# lab1.asm
# WILSON, KALI
#
# 1. Assembly : as -o lab1.o lab1.asm
# 2. Link     : ld -o a.out lab1.o csc35.o
# 3. Execute  : ./a.out

.intel_syntax noprefix  # uses intel format 
.section .data          # data section
Message:                # defines message values (loaded to their own addresses)
    .asciz "Beep\n"     # creates ascii buffers (with automatic null byte)
Name:
    .asciz "Kali Wilson\n"
Quote:
    .asciz "Everything is open-source if you can read assembly\n"
OtherMessage:
    .asciz "Boop\n"

.section .text          # text starts here
.global Begin           # public label begin

Begin:                  # unix execution starts
    lea rsi, Message         # loads data at message's address to rsi
    call PrintString         # calls from library

    lea rsi, Name
    call PrintString

    lea rsi, Quote
    call PrintString

    lea rsi, OtherMessage
    call PrintString

    call ExitProgram         # calls from library
