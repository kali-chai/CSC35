
stringer.o:     file format elf64-x86-64

Contents of section .text:
 0000 488d3425 00000000 e8000000 00e80000  H.4%............
 0010 0000488d 34250000 0000e800 000000e8  ..H.4%..........
 0020 00000000 50e80000 00004889 c248c7c0  ....P.....H..H..
 0030 01000000 48c7c701 0000000f 0558c3e8  ....H........X..
 0040 00000000 488d3425 00000000 e8000000  ....H.4%........
 0050 0048c7c0 00000000 48c7c700 00000048  .H......H......H
 0060 8d342500 00000048 c7c2ff03 00000f05  .4%....H........
 0070 483dfe03 00007f0c 48ffc8c6 80000000  H=......H.......
 0080 0000eb14 e8000000 00488d34 25000000  .........H.4%...
 0090 00e80000 0000eba7 c3505756 5248c7c0  .........PWVRH..
 00a0 00000000 48c7c700 00000048 8d342500  ....H......H.4%.
 00b0 00000048 c7c20100 00000f05 4883f800  ...H........H...
 00c0 740a803c 25000000 000a75d1 5a5e5f58  t..<%.....u.Z^_X
 00d0 c3505157 48c7c100 04000048 31c0488d  .PQWH......H1.H.
 00e0 3c250000 0000f3aa 5f5958c3 4831c080  <%......_YX.H1..
 00f0 3c060074 0548ffc0 ebf5c34d 31e44a8d  <..t.H.....M1.J.
 0100 34e50000 0000488b 364883fe 00740ce8  4.....H.6H...t..
 0110 00000000 e8000000 00eb01c3 807e0100  .............~..
 0120 750a803e 59741480 3e4e741f 488d3425  u..>Yt..>Nt.H.4%
 0130 00000000 e8000000 00ebc34a 8d34e500  ...........J.4..
 0140 00000048 8b36e800 00000049 ffc4ebae  ...H.6.....I....
 0150 48c7c03c 00000048 31ff0f05           H..<...H1...    
Contents of section .rodata:
 0000 54696d65 20746f20 66697265 20757020  Time to fire up 
 0010 796f7572 20416e79 7468696e 6720456d  your Anything Em
 0020 756c6174 6f722120 416e7377 6572206d  ulator! Answer m
 0030 79207175 65737469 6f6e7320 62792074  y questions by t
 0040 7970696e 67202259 2220666f 72207965  yping "Y" for ye
 0050 732c206f 7220224e 2220666f 72206e6f  s, or "N" for no
 0060 210a003e 20004861 76652066 756e210a  !..> .Have fun!.
 0070 00446f20 796f7520 77616e74 20746f20  .Do you want to 
 0080 74727920 736f6d65 2070757a 7a6c6573  try some puzzles
 0090 3f0a0044 6f20796f 75207761 6e742074  ?..Do you want t
 00a0 6f20626c 6f772073 74756666 2075703f  o blow stuff up?
 00b0 0a00446f 20796f75 2077616e 7420746f  ..Do you want to
 00c0 20646967 20686f6c 65733f0a 00446f20   dig holes?..Do 
 00d0 796f7520 77616e74 20746f20 6275696c  you want to buil
 00e0 64207468 696e6773 3f0a0049 20726563  d things?..I rec
 00f0 6f6d6d65 6e642043 68657373 210a0047  ommend Chess!..G
 0100 72616e64 20546865 66742041 75746f20  rand Theft Auto 
 0110 69732061 20676f6f 64206368 6f696365  is a good choice
 0120 210a0048 61766520 796f7520 636f6e73  !..Have you cons
 0130 69646572 6564204d 696e6573 77656570  idered Minesweep
 0140 65723f0a 00492073 75676765 73742079  er?..I suggest y
 0150 6f752074 72792053 70616365 20456e67  ou try Space Eng
 0160 696e6565 7273210a 0049206e 65656420  ineers!..I need 
 0170 61202259 2220666f 72207965 73206f72  a "Y" for yes or
 0180 20224e22 20666f72 206e6f2e 0a005468   "N" for no...Th
 0190 61742069 6e707574 20697320 746f6f20  at input is too 
 01a0 6c617267 65212050 72657373 20616e79  large! Press any
 01b0 206b6579 20746f20 72657472 792e0a00   key to retry...
 01c0 00000000 00000000 00000000 00000000  ................
 01d0 00000000 00000000 00000000 00000000  ................
 01e0 00000000 00000000 00000000 00000000  ................
 01f0 00000000 00000000 00000000 00000000  ................
 0200 00000000 00000000 00000000 00000000  ................

Disassembly of section .text:

0000000000000000 <_start>:
   0:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
   7:	00 
   8:	e8 00 00 00 00       	call   d <_start+0xd>
   d:	e8 00 00 00 00       	call   12 <_start+0x12>
  12:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  19:	00 
  1a:	e8 00 00 00 00       	call   1f <_start+0x1f>
  1f:	e8 00 00 00 00       	call   24 <PrintString>

0000000000000024 <PrintString>:
  24:	50                   	push   rax
  25:	e8 00 00 00 00       	call   2a <PrintString+0x6>
  2a:	48 89 c2             	mov    rdx,rax
  2d:	48 c7 c0 01 00 00 00 	mov    rax,0x1
  34:	48 c7 c7 01 00 00 00 	mov    rdi,0x1
  3b:	0f 05                	syscall
  3d:	58                   	pop    rax
  3e:	c3                   	ret

000000000000003f <ReadString>:
  3f:	e8 00 00 00 00       	call   44 <ReadString+0x5>
  44:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  4b:	00 
  4c:	e8 00 00 00 00       	call   51 <ReadString+0x12>
  51:	48 c7 c0 00 00 00 00 	mov    rax,0x0
  58:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
  5f:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  66:	00 
  67:	48 c7 c2 ff 03 00 00 	mov    rdx,0x3ff
  6e:	0f 05                	syscall
  70:	48 3d fe 03 00 00    	cmp    rax,0x3fe
  76:	7f 0c                	jg     84 <.ReadStringOverflow>
  78:	48 ff c8             	dec    rax
  7b:	c6 80 00 00 00 00 00 	mov    BYTE PTR [rax+0x0],0x0
  82:	eb 14                	jmp    98 <.ReadStringOut>

0000000000000084 <.ReadStringOverflow>:
  84:	e8 00 00 00 00       	call   89 <.ReadStringOverflow+0x5>
  89:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  90:	00 
  91:	e8 00 00 00 00       	call   96 <.ReadStringOverflow+0x12>
  96:	eb a7                	jmp    3f <ReadString>

0000000000000098 <.ReadStringOut>:
  98:	c3                   	ret

0000000000000099 <FlushSTDIN>:
  99:	50                   	push   rax
  9a:	57                   	push   rdi
  9b:	56                   	push   rsi
  9c:	52                   	push   rdx

000000000000009d <.FlushSTDINIter>:
  9d:	48 c7 c0 00 00 00 00 	mov    rax,0x0
  a4:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
  ab:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  b2:	00 
  b3:	48 c7 c2 01 00 00 00 	mov    rdx,0x1
  ba:	0f 05                	syscall
  bc:	48 83 f8 00          	cmp    rax,0x0
  c0:	74 0a                	je     cc <.FlushSTDINOut>
  c2:	80 3c 25 00 00 00 00 	cmp    BYTE PTR ds:0x0,0xa
  c9:	0a 
  ca:	75 d1                	jne    9d <.FlushSTDINIter>

00000000000000cc <.FlushSTDINOut>:
  cc:	5a                   	pop    rdx
  cd:	5e                   	pop    rsi
  ce:	5f                   	pop    rdi
  cf:	58                   	pop    rax
  d0:	c3                   	ret

00000000000000d1 <DestroyBuffer>:
  d1:	50                   	push   rax
  d2:	51                   	push   rcx
  d3:	57                   	push   rdi
  d4:	48 c7 c1 00 04 00 00 	mov    rcx,0x400
  db:	48 31 c0             	xor    rax,rax
  de:	48 8d 3c 25 00 00 00 	lea    rdi,ds:0x0
  e5:	00 
  e6:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  e8:	5f                   	pop    rdi
  e9:	59                   	pop    rcx
  ea:	58                   	pop    rax
  eb:	c3                   	ret

00000000000000ec <StringLength>:
  ec:	48 31 c0             	xor    rax,rax

00000000000000ef <.StringLengthIter>:
  ef:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
  f3:	74 05                	je     fa <.StringLengthOut>
  f5:	48 ff c0             	inc    rax
  f8:	eb f5                	jmp    ef <.StringLengthIter>

00000000000000fa <.StringLengthOut>:
  fa:	c3                   	ret

00000000000000fb <Question>:
  fb:	4d 31 e4             	xor    r12,r12

00000000000000fe <.QuestionIter>:
  fe:	4a 8d 34 e5 00 00 00 	lea    rsi,[r12*8+0x0]
 105:	00 
 106:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
 109:	48 83 fe 00          	cmp    rsi,0x0
 10d:	74 0c                	je     11b <.QuestionEnd>
 10f:	e8 00 00 00 00       	call   114 <.QuestionIter+0x16>
 114:	e8 00 00 00 00       	call   119 <.QuestionIter+0x1b>
 119:	eb 01                	jmp    11c <CheckAnswer>

000000000000011b <.QuestionEnd>:
 11b:	c3                   	ret

000000000000011c <CheckAnswer>:
 11c:	80 7e 01 00          	cmp    BYTE PTR [rsi+0x1],0x0
 120:	75 0a                	jne    12c <.CheckAnswerFail>
 122:	80 3e 59             	cmp    BYTE PTR [rsi],0x59
 125:	74 14                	je     13b <.CheckAnswerSuccessAffirm>
 127:	80 3e 4e             	cmp    BYTE PTR [rsi],0x4e
 12a:	74 1f                	je     14b <.CheckAnswerSuccess>

000000000000012c <.CheckAnswerFail>:
 12c:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
 133:	00 
 134:	e8 00 00 00 00       	call   139 <.CheckAnswerFail+0xd>
 139:	eb c3                	jmp    fe <.QuestionIter>

000000000000013b <.CheckAnswerSuccessAffirm>:
 13b:	4a 8d 34 e5 00 00 00 	lea    rsi,[r12*8+0x0]
 142:	00 
 143:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
 146:	e8 00 00 00 00       	call   14b <.CheckAnswerSuccess>

000000000000014b <.CheckAnswerSuccess>:
 14b:	49 ff c4             	inc    r12
 14e:	eb ae                	jmp    fe <.QuestionIter>

0000000000000150 <Exit>:
 150:	48 c7 c0 3c 00 00 00 	mov    rax,0x3c
 157:	48 31 ff             	xor    rdi,rdi
 15a:	0f 05                	syscall
