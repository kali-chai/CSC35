# Pseudocode for Lab 3

## Data

## Functions

### ReadString

    Regular input reader through STDIN using a buffered input that loads to RSI pointee.

### PrintString

    Regular output printer sthrough STDOUT using StringLength for print length and RSI to determine pointee.

### StringLength

    Regular string length counter using RSI pointee.

### AnswerLoop

#### AnswerLoopStart

    Clears used registers and starts the loop.

### CheckAnswer

#### CheckAnswerStart

    Checks if input is an integer; Any integer 0 or higher. This is done by checking that there are no non-integer characters.
    If true, jump to CheckAnswerPreSuccessInt

    Checks if input is "options"
    If true, jump to CheckAnswerSuccessOptions

    Checks if input is "exit"
    If true, jump to CheckAnswerSuccessExit

    Otherwise, will fall to CheckAnswerFailure

#### CheckAnswerFailure

    Returns with no incrementation and changes a flag.

#### CheckAnswerSuccessOptions

    Returns with no incrementation and changes a flag.

#### CheckAnswerSuccessExit

    Returns with no incrementation and changes a flag.

#### CheckAnswerPreSuccessInt

    Checks if integer entered is a valid option by searching array. If invalid, jumps back up to failure. If valid, falls to success.

#### CheckAnswerSuccessValid

    Returns with incrementation and changes a flag.

### ConvToInt

    Converts a string input to an integer to be stored in a buffer.

### DestroyInputBuffer

    Destroys the input buffer (extra buffer overflow protection).

## DestroyOutputBuffer

    Destroys the output buffer.

## PrintOptions

    Prints the options available in formatted ASCII, along with numbers to type.
