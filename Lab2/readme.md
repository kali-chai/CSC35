# I learned weird things about assembly

Thank you furries on the internet
TEST is a funny thing because it basically lets you use a register as a boolean
Buffers are not great for anything that's static or immediately discarded
I used xor a lot
Rather than complicating with a ton of functions, just make one that flows
Consolidate your functions when you can unless you're absolutely sure they'll be used again
Seeing above, learning how code flow works is important. Even if you don't have the exact library code available, you can make your own if you understand it
Logic after input validation could be handled very simply in the same function. Don't make code fancy and complex if it doesn't need to be
I can't say this enough. LEA is your lord and savior. Use it for anything that isn't another register, address, or 8-bit immediate
DON'T LOAD STRINGS TO REGISTERS. USE LEA. IF YOUR STRING ISN'T TINY, IT'S NOT GOING TO FIT IN A REGISTER. ITS CALLED A SEGFAULT.
JZ is a little weird. Note for reference: It's like a CMP, but sets the flag at register ZF. TEST RAX RAX then JZ SOMEFUNC is essentially a CMP RAX, 0 JE SOMEFUNC
No need to check R12 against some value, just use the top of the iterator to check if plugging in R12 gets you a 0.
