.intel_syntax

.section .data
    StartText:
    .asciz "Welcome to the Silly Word Game! (Note: For legal reasons, this game is not Wordle.)\n"

    AskForNoun:
    .asciz "Please enter a noun: "
    AskForVerb:
    .asciz "Please enter a verb: "
    AskForPreposition:
    .asciz "Please enter a preposition: "
    YourSentence:
    .asciz "Your sentence is: \"%s %s %s %s\"\n"

    FirstNoun:
    .space 24
    Verb: 
    .space 24
    Preposition:
    .space 24
    SecondNoun:
    .space 24


.section .StartText
    .global Begin

    Begin:
        lea rsi, StartText
        call PrintString
        lea rsi, AskForNoun
        call PrintString
        


    

