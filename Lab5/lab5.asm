.intel_syntax noprefix

.section .data
    StartText:
    .asciz "Welcome to the Silly Word Game! (Note: For legal reasons, this game is not MadLibs.)\n"
    AskForNoun:
    .asciz "Please enter a noun: "
    AskForVerb:
    .asciz "Please enter a verb: "
    AskForPreposition:
    .asciz "Please enter a preposition: "
    YourSentence1:
    .asciz "Your sentence is: \""
    YourSentence2:
    .asciz "\"\n"
    Space:
    .asciz " "

    FirstNoun:
    .space 24
    Verb: 
    .space 24
    Preposition:
    .space 24
    SecondNoun:
    .space 24


.section .text
    .global Begin

    Begin:
        lea rsi, StartText
        call PrintString
        lea rsi, AskForNoun
        call PrintString
        lea rsi, FirstNoun
        mov rdi, 24
        call ReadString
        lea r15, FirstNoun
        call CopyString
        call ClearScreen
        lea rsi, AskForVerb
        call PrintString
        call ReadString
        lea r15, Verb
        call CopyString
        call ClearScreen
        lea rsi, AskForPreposition
        call PrintString
        call ReadString
        lea r15, Preposition
        call CopyString
        call ClearScreen
        lea rsi, AskForNoun
        call PrintString
        call ReadString
        lea r15, SecondNoun
        call CopyString
        call ClearScreen
        lea rsi, YourSentence1
        call PrintString
        lea rsi, FirstNoun
        call PrintString
        lea rsi, Space
        call PrintString
        lea rsi, Verb
        call PrintString
        lea rsi, Space
        call PrintString
        lea rsi, Preposition
        call PrintString
        lea rsi, Space
        call PrintString
        lea rsi, SecondNoun
        call PrintString
        lea rsi, YourSentence2
        call PrintString
        call ExitProgram

    CopyString:
        0:
        mov rax, 0
        1:
        mov cl, byte ptr [rsi + rax]
        mov byte ptr [r15 + rax], cl
        inc rax
        cmp rax, rdi
        jl 1b
        2:
        ret
