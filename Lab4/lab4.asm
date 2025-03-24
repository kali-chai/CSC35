.intel_syntax noprefix

.section .data
    StartText: .asciz "Welcome to BOOM - An assembly version of Artillery Duel!\n"
    EnterGuess: .asciz "Enter your fire position: "
    TooClose: .asciz "Too close!\n"
    TooFar: .asciz "Too far!\n"
    Hit: .asciz "You've struck the enemy position!\n"
    EnemyTakesShot: .asciz "The enemy is taking a shot... Something explodes nearby.\n"
    BotHit: .asciz "The enemy has struck your position!\n"
    YouWin: .asciz "Your efforts paid off, Commander! We've destroyed the enemy position before they could destroy us!\n"
    YouLose: .asciz "The enemy team places a shot right on top of you, and you disappear in a plume of smoke...\n"
    YouDraw: .asciz "You and your enemy fired at the same time, and your shells strike each other. It's a draw...\n"
    ThanksForPlaying: .asciz "Thanks for playing!\n"

.section .bss
    .lcomm Flags, 2

.section .text
    .global Begin
    Begin:
        0:
        lea rsi, StartText
        call PrintString
        call GameSetup
        1:
        call PlayerAction
        call BotAction
        bt word ptr [Flags], 2
        jnc 1b
        2:
        call EndGame
        call ExitProgram

    GameSetup:
        0:
        mov rsi, 100
        call GetRandom
        mov r9, rsi
        mov r10, 100
        ret

    PlayerAction:
        0:
        lea rsi, EnterGuess
        call PrintString
        call ReadInteger
        mov r8, rsi
        cmp r8, r9
        jz 3f
        jg 2f
        jl 1f
        1:
        btr word ptr [Flags], 3
        lea rsi, TooClose
        call PrintString
        jmp 4f
        2:
        bts word ptr [Flags], 3
        lea rsi, TooFar
        call PrintString
        jmp 4f
        3:
        bts word ptr [Flags], 0
        bts word ptr [Flags], 2
        lea rsi, Hit
        call PrintString
        jmp 5f
        4:
        lea rsi, EnemyTakesShot
        call PrintString
        5:
        ret

    BotAction:
        0:
        mov rsi, 30
        call GetRandom
        sub r10, rsi
        cmp r10, 0
        jg 2f
        1:
        bts word ptr [Flags], 1
        bts word ptr [Flags], 2
        lea rsi, BotHit
        call PrintString
        2:
        ret

    EndGame:
        0:
        push r8
        1:
        mov r8b, byte ptr [Flags + 1]
        and r8b, 0b00000111
        cmp r8b, 0b00000111
        jz 4f
        2:
        mov r8b, byte ptr [Flags + 1]
        and r8b, 0b00000101
        cmp r8b, 0b00000101
        jz 5f
        3:
        lea rsi, YouLose
        call PrintString
        jmp 6f
        4:
        lea rsi, YouDraw
        call PrintString
        jmp 6f
        5:
        lea rsi, YouWin
        call PrintString
        6:
        lea rsi, ThanksForPlaying
        call PrintString
        7:
        pop r8
        ret
