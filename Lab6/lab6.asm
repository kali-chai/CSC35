.intel_syntax noprefix

.section .data
    ExpectingAnswer:
    .asciz "> "

    InitDataMismatch:
    .asciz "Initialization data mismatch. Verify array integrity and try again.\n"

    EndText1:
    .asciz "You scored "

    EndText2:
    .asciz " for defeating "

    EndText3:
    .asciz "and my sanity.\n"

    InfoGrid:
    .quad GoombaI, KoopaTI, KoopaPTI, HammerBI, PiranhaPI, BulletBI, 0

    GoombaI:
    .asciz "Goombas: 50 points"

    KoopaTI:
    .asciz "Koopa Troopas: 100 points"

    KoopaPTI:
    .asciz "Koopa Paratroopas: 150 points"

    HammerBI:
    .asciz "Hammer Bros: 500 points"

    PiranhaPI:
    .asciz "Piranha Plants: 200 points"

    BulletBI:
    .asciz "Bullet Bills: 100 points"

    Enemies:
    .quad GoombaE, KoopaTE, KoopaPTE, HammerBE, PiranhaPE, BulletBE, 0
    .equ NumEnemies, (. - Enemies) / 8 - 1

    GoombaE:
    .asciz " Goombas, "

    KoopaTE:
    .asciz " Koopa Troopas, "

    KoopaPTE:
    .asciz " Koopa Paratroopas, "

    HammerBE:
    .asciz " Hammer Bros, "

    PiranhaPE:
    .asciz " Piranha Plants, "

    BulletBE:
    .asciz " Bullet Bills, "
    
    Questions:
    .quad GoombaQ, KoopaTQ, KoopaPTQ, HammerBQ, PiranhaPQ, BulletBQ, 0

    Mults:
    .quad 100, 100, 400, 1000, 200, 200, 0
    .equ NumMults, (. - Mults) / 8 - 1

    GoombaQ:
    .asciz "How many Goombas did you squash?\n"

    KoopaTQ:
    .asciz "How many Koopa Troopas did you stomp?\n"

    KoopaPTQ:
    .asciz "How many Koopa Paratroopas did you bring down?\n"

    HammerBQ:
    .asciz "How many Hammer Bros. did you destroy?\n"

    PiranhaPQ:
    .asciz "How many Piranha Plants did you cut up?\n"

    BulletBQ:
    .asciz "How many Bullet Bills did you blast?\n"

    RawScores:
    .space NumEnemies * 8, 0

    TotalScore:
    .quad 0


.section .text

    .global Begin
    .type Begin, @function
    Begin:
        0:
            push        rax
            mov         rax, NumEnemies
            cmp         rax, NumMults
            pop         rax
            jne         255f
            
        1:
            call AskQuestions
            call PrintScore
        2:
            call ExitProgram
        255:
            lea         rsi, [InitDataMismatch]
            call        PrintString
            call        BadExit

    .type AskQuestions, @function
    AskQuestions:
        0:
            push        rbx
            push        rax
            xor         rbx, rbx
        1:
            cmp         rbx, NumEnemies
            jge         3f
            mov         rsi, [Questions + [rbx * 8]]
            call        PrintString
            lea         rsi, ExpectingAnswer
            call        PrintString
            call        ReadInteger
            mov         qword ptr [RawScores + [rbx * 8]], rsi
            mov         rax, qword ptr [RawScores + [rbx * 8]]
            imul        rax, qword ptr [Mults + [rbx * 8]]
            add         TotalScore, rax
            inc         rbx 
            jmp 1b
        3:
            pop         rax
            pop         rbx
            ret

    .type PrintScore, @function
    PrintScore:
        0:
            push        rbx
            xor         rbx, rbx
            lea         rsi, EndText1
            call        PrintString
            mov         rsi, TotalScore
            call        PrintInteger
            lea         rsi, EndText2
            call        PrintString
        1:
            cmp         rbx, NumEnemies
            jge         2f
            mov         rsi, [RawScores + [rbx * 8]]
            call        PrintInteger
            mov         rsi, [Enemies + [rbx * 8]]
            call        PrintString
            inc rbx
            jmp 1b
        2:
            lea         rsi, EndText3
            call        PrintString
        3:
            pop rbx
            ret
            
    .type BadExit, @function
    BadExit:
        0:
            mov         rax, 60
            mov         rdi, 1
            syscall
            ret
