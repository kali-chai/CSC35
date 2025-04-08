.intel_syntax noprefix

.section .rodata
    Node1:
        .quad Node1Text, Node2, Node3, 0

    Node2:
        .quad Node2Text, Node4, Node5, 0

    Node3:
        .quad Node3Text, Node5, Node5, 0

    Node4:
        .quad Node4Text, Node1, ExitA, 0

    Node5:
        .quad Node5Text, ExitA, ExitB, 0

    ExitA:
        .quad ExitAText, 0, 0, 1

    ExitB:
        .quad ExitBText, 0, 0, 1

    Node1Text:
        .asciz "Node 1: Welcome to Node 1! False for Node 2, True for Node 3."

    Node2Text:
        .asciz "Node 2: Welcome to Node 2! False for Node 4, True for Node 5."

    Node3Text:
        .asciz "Node 3: Welcome to Node 3! Both paths lead to Node 5."

    Node4Text:
        .asciz "Node 4: Welcome to Node 4! False for Node 1, True for Exit A!"

    Node5Text:
        .asciz "Node 5: Welcome to Node 5! False for Exit A, True for Exit B!"

    ExitAText:
        .asciz "Exit A: Goodbye from Exit A!"

    ExitBText:
        .asciz "Exit B: Goodbye from Exit B!"

.section .bss

