
stringer.o:     file format elf64-x86-64

Contents of section .text:
 0000 488d3425 00000000 e8000000 00e80000  H.4%............
 0010 0000488d 34250000 0000e800 000000e8  ..H.4%..........
 0020 00000000 50e80000 00004889 c248c7c0  ....P.....H..H..
 0030 01000000 48c7c701 0000000f 0558c348  ....H........X.H
 0040 8d342500 000000e8 00000000 48c7c000  .4%.........H...
 0050 00000048 c7c70000 0000488d 34250000  ...H......H.4%..
 0060 000048c7 c2ff0300 000f0548 ffc8c680  ..H........H....
 0070 00000000 00c34831 c0803c06 00740548  ......H1..<..t.H
 0080 ffc0ebf5 c34d31e4 4a8d34e5 00000000  .....M1.J.4.....
 0090 488b3648 85f67434 e8000000 00e80000  H.6H..t4........
 00a0 0000e800 00000048 85c074f1 8a042500  .......H..t...%.
 00b0 0000003c 4e74104a 8d34e500 00000048  ...<Nt.J.4.....H
 00c0 8b36e800 00000049 ffc4ebbc c3803c25  .6.....I......<%
 00d0 00000000 00750f8a 04250000 00003c59  .....u...%....<Y
 00e0 74153c4e 7411488d 34250000 0000e800  t.<Nt.H.4%......
 00f0 00000048 31c0c3c3 48c7c03c 00000048  ...H1...H..<...H
 0100 31ff0f05                             1...            
Contents of section .rodata:
 0000 54696d65 20746f20 66697265 20757020  Time to fire up 
 0010 796f7572 20416e79 7468696e 6720456d  your Anything Em
 0020 756c6174 6f722120 416e7377 6572206d  ulator! Answer m
 0030 79207175 65737469 6f6e7320 62792074  y questions by t
 0040 7970696e 67202259 2220666f 72207965  yping "Y" for ye
 0050 732c206f 7220224e 2220666f 72206e6f  s, or "N" for no
 0060 210a003e 2000446f 20796f75 2077616e  !..> .Do you wan
 0070 7420746f 20747279 20736f6d 65207075  t to try some pu
 0080 7a7a6c65 733f0a00 446f2079 6f752077  zzles?..Do you w
 0090 616e7420 746f2062 6c6f7720 73747566  ant to blow stuf
 00a0 66207570 3f0a0044 6f20796f 75207761  f up?..Do you wa
 00b0 6e742074 6f206469 6720686f 6c65733f  nt to dig holes?
 00c0 0a00446f 20796f75 2077616e 7420746f  ..Do you want to
 00d0 20627569 6c642074 68696e67 733f0a00   build things?..
 00e0 49207265 636f6d6d 656e6420 43686573  I recommend Ches
 00f0 73210a00 4772616e 64205468 65667420  s!..Grand Theft 
 0100 4175746f 20697320 6120676f 6f642063  Auto is a good c
 0110 686f6963 65210a00 48617665 20796f75  hoice!..Have you
 0120 20636f6e 73696465 72656420 4d696e65   considered Mine
 0130 73776565 7065723f 0a004920 73756767  sweeper?..I sugg
 0140 65737420 796f7520 74727920 53706163  est you try Spac
 0150 6520456e 67696e65 65727321 0a004920  e Engineers!..I 
 0160 6e656564 20612022 59222066 6f722079  need a "Y" for y
 0170 6573206f 7220224e 2220666f 72206e6f  es or "N" for no
 0180 2e0a0048 61766520 66756e21 0a000000  ...Have fun!....
 0190 00000000 00000000 00000000 00000000  ................
 01a0 00000000 00000000 00000000 00000000  ................
 01b0 00000000 00000000 00000000 00000000  ................
 01c0 00000000 00000000 00000000 00000000  ................
 01d0 00000000 00000000 00000000 0000      ..............  

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
  3f:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  46:	00 
  47:	e8 00 00 00 00       	call   4c <ReadString+0xd>
  4c:	48 c7 c0 00 00 00 00 	mov    rax,0x0
  53:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
  5a:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  61:	00 
  62:	48 c7 c2 ff 03 00 00 	mov    rdx,0x3ff
  69:	0f 05                	syscall
  6b:	48 ff c8             	dec    rax
  6e:	c6 80 00 00 00 00 00 	mov    BYTE PTR [rax+0x0],0x0
  75:	c3                   	ret

0000000000000076 <StringLength>:
  76:	48 31 c0             	xor    rax,rax

0000000000000079 <StringLengthIter>:
  79:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
  7d:	74 05                	je     84 <StringLengthOut>
  7f:	48 ff c0             	inc    rax
  82:	eb f5                	jmp    79 <StringLengthIter>

0000000000000084 <StringLengthOut>:
  84:	c3                   	ret

0000000000000085 <QuestionBody>:
  85:	4d 31 e4             	xor    r12,r12

0000000000000088 <QuestionBodyIter>:
  88:	4a 8d 34 e5 00 00 00 	lea    rsi,[r12*8+0x0]
  8f:	00 
  90:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  93:	48 85 f6             	test   rsi,rsi
  96:	74 34                	je     cc <QuestionBodyEnd>
  98:	e8 00 00 00 00       	call   9d <QuestionBodyInputGet>

000000000000009d <QuestionBodyInputGet>:
  9d:	e8 00 00 00 00       	call   a2 <QuestionBodyInputGet+0x5>
  a2:	e8 00 00 00 00       	call   a7 <QuestionBodyInputGet+0xa>
  a7:	48 85 c0             	test   rax,rax
  aa:	74 f1                	je     9d <QuestionBodyInputGet>
  ac:	8a 04 25 00 00 00 00 	mov    al,BYTE PTR ds:0x0
  b3:	3c 4e                	cmp    al,0x4e
  b5:	74 10                	je     c7 <QuestionBodyContinue>

00000000000000b7 <QuestionBodyPrintAnswer>:
  b7:	4a 8d 34 e5 00 00 00 	lea    rsi,[r12*8+0x0]
  be:	00 
  bf:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  c2:	e8 00 00 00 00       	call   c7 <QuestionBodyContinue>

00000000000000c7 <QuestionBodyContinue>:
  c7:	49 ff c4             	inc    r12
  ca:	eb bc                	jmp    88 <QuestionBodyIter>

00000000000000cc <QuestionBodyEnd>:
  cc:	c3                   	ret

00000000000000cd <CheckAnswer>:
  cd:	80 3c 25 00 00 00 00 	cmp    BYTE PTR ds:0x0,0x0
  d4:	00 
  d5:	75 0f                	jne    e6 <CheckAnswerFail>
  d7:	8a 04 25 00 00 00 00 	mov    al,BYTE PTR ds:0x0
  de:	3c 59                	cmp    al,0x59
  e0:	74 15                	je     f7 <CheckAnswerSuccess>
  e2:	3c 4e                	cmp    al,0x4e
  e4:	74 11                	je     f7 <CheckAnswerSuccess>

00000000000000e6 <CheckAnswerFail>:
  e6:	48 8d 34 25 00 00 00 	lea    rsi,ds:0x0
  ed:	00 
  ee:	e8 00 00 00 00       	call   f3 <CheckAnswerFail+0xd>
  f3:	48 31 c0             	xor    rax,rax
  f6:	c3                   	ret

00000000000000f7 <CheckAnswerSuccess>:
  f7:	c3                   	ret

00000000000000f8 <Exit>:
  f8:	48 c7 c0 3c 00 00 00 	mov    rax,0x3c
  ff:	48 31 ff             	xor    rdi,rdi
 102:	0f 05                	syscall

Disassembly of section .rodata:

0000000000000000 <StartText>:
   0:	54                   	push   rsp
   1:	69 6d 65 20 74 6f 20 	imul   ebp,DWORD PTR [rbp+0x65],0x206f7420
   8:	66 69 72 65 20 75    	imul   si,WORD PTR [rdx+0x65],0x7520
   e:	70 20                	jo     30 <StartText+0x30>
  10:	79 6f                	jns    81 <Question1+0x1b>
  12:	75 72                	jne    86 <Question1+0x20>
  14:	20 41 6e             	and    BYTE PTR [rcx+0x6e],al
  17:	79 74                	jns    8d <Question2+0x5>
  19:	68 69 6e 67 20       	push   0x20676e69
  1e:	45 6d                	rex.RB ins DWORD PTR es:[rdi],dx
  20:	75 6c                	jne    8e <Question2+0x6>
  22:	61                   	(bad)
  23:	74 6f                	je     94 <Question2+0xc>
  25:	72 21                	jb     48 <StartText+0x48>
  27:	20 41 6e             	and    BYTE PTR [rcx+0x6e],al
  2a:	73 77                	jae    a3 <Question2+0x1b>
  2c:	65 72 20             	gs jb  4f <StartText+0x4f>
  2f:	6d                   	ins    DWORD PTR es:[rdi],dx
  30:	79 20                	jns    52 <StartText+0x52>
  32:	71 75                	jno    a9 <Question3+0x2>
  34:	65 73 74             	gs jae ab <Question3+0x4>
  37:	69 6f 6e 73 20 62 79 	imul   ebp,DWORD PTR [rdi+0x6e],0x79622073
  3e:	20 74 79 70          	and    BYTE PTR [rcx+rdi*2+0x70],dh
  42:	69 6e 67 20 22 59 22 	imul   ebp,DWORD PTR [rsi+0x67],0x22592220
  49:	20 66 6f             	and    BYTE PTR [rsi+0x6f],ah
  4c:	72 20                	jb     6e <Question1+0x8>
  4e:	79 65                	jns    b5 <Question3+0xe>
  50:	73 2c                	jae    7e <Question1+0x18>
  52:	20 6f 72             	and    BYTE PTR [rdi+0x72],ch
  55:	20 22                	and    BYTE PTR [rdx],ah
  57:	4e 22 20             	rex.WRX and r12b,BYTE PTR [rax]
  5a:	66 6f                	outs   dx,WORD PTR ds:[rsi]
  5c:	72 20                	jb     7e <Question1+0x18>
  5e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  5f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  60:	21 0a                	and    DWORD PTR [rdx],ecx
	...

0000000000000063 <ExpectingInput>:
  63:	3e 20 00             	ds and BYTE PTR [rax],al

0000000000000066 <Question1>:
  66:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
  68:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
  6b:	75 20                	jne    8d <Question2+0x5>
  6d:	77 61                	ja     d0 <Question4+0xe>
  6f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  70:	74 20                	je     92 <Question2+0xa>
  72:	74 6f                	je     e3 <Answer1+0x3>
  74:	20 74 72 79          	and    BYTE PTR [rdx+rsi*2+0x79],dh
  78:	20 73 6f             	and    BYTE PTR [rbx+0x6f],dh
  7b:	6d                   	ins    DWORD PTR es:[rdi],dx
  7c:	65 20 70 75          	and    BYTE PTR gs:[rax+0x75],dh
  80:	7a 7a                	jp     fc <Answer2+0x8>
  82:	6c                   	ins    BYTE PTR es:[rdi],dx
  83:	65 73 3f             	gs jae c5 <Question4+0x3>
  86:	0a 00                	or     al,BYTE PTR [rax]

0000000000000088 <Question2>:
  88:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
  8a:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
  8d:	75 20                	jne    af <Question3+0x8>
  8f:	77 61                	ja     f2 <Answer1+0x12>
  91:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  92:	74 20                	je     b4 <Question3+0xd>
  94:	74 6f                	je     105 <Answer2+0x11>
  96:	20 62 6c             	and    BYTE PTR [rdx+0x6c],ah
  99:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  9a:	77 20                	ja     bc <Question3+0x15>
  9c:	73 74                	jae    112 <Answer2+0x1e>
  9e:	75 66                	jne    106 <Answer2+0x12>
  a0:	66 20 75 70          	data16 and BYTE PTR [rbp+0x70],dh
  a4:	3f                   	(bad)
  a5:	0a 00                	or     al,BYTE PTR [rax]

00000000000000a7 <Question3>:
  a7:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
  a9:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
  ac:	75 20                	jne    ce <Question4+0xc>
  ae:	77 61                	ja     111 <Answer2+0x1d>
  b0:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  b1:	74 20                	je     d3 <Question4+0x11>
  b3:	74 6f                	je     124 <Answer3+0xc>
  b5:	20 64 69 67          	and    BYTE PTR [rcx+rbp*2+0x67],ah
  b9:	20 68 6f             	and    BYTE PTR [rax+0x6f],ch
  bc:	6c                   	ins    BYTE PTR es:[rdi],dx
  bd:	65 73 3f             	gs jae ff <Answer2+0xb>
  c0:	0a 00                	or     al,BYTE PTR [rax]

00000000000000c2 <Question4>:
  c2:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
  c4:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
  c7:	75 20                	jne    e9 <Answer1+0x9>
  c9:	77 61                	ja     12c <Answer3+0x14>
  cb:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  cc:	74 20                	je     ee <Answer1+0xe>
  ce:	74 6f                	je     13f <Answer4+0x5>
  d0:	20 62 75             	and    BYTE PTR [rdx+0x75],ah
  d3:	69 6c 64 20 74 68 69 	imul   ebp,DWORD PTR [rsp+riz*2+0x20],0x6e696874
  da:	6e 
  db:	67 73 3f             	addr32 jae 11d <Answer3+0x5>
  de:	0a 00                	or     al,BYTE PTR [rax]

00000000000000e0 <Answer1>:
  e0:	49 20 72 65          	rex.WB and BYTE PTR [r10+0x65],sil
  e4:	63 6f 6d             	movsxd ebp,DWORD PTR [rdi+0x6d]
  e7:	6d                   	ins    DWORD PTR es:[rdi],dx
  e8:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  ea:	64 20 43 68          	and    BYTE PTR fs:[rbx+0x68],al
  ee:	65 73 73             	gs jae 164 <RepeatQuestionInv+0x6>
  f1:	21 0a                	and    DWORD PTR [rdx],ecx
	...

00000000000000f4 <Answer2>:
  f4:	47 72 61             	rex.RXB jb 158 <Answer4+0x1e>
  f7:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  f8:	64 20 54 68 65       	and    BYTE PTR fs:[rax+rbp*2+0x65],dl
  fd:	66 74 20             	data16 je 120 <Answer3+0x8>
 100:	41 75 74             	rex.B jne 177 <RepeatQuestionInv+0x19>
 103:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 104:	20 69 73             	and    BYTE PTR [rcx+0x73],ch
 107:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
 10a:	67 6f                	outs   dx,DWORD PTR ds:[esi]
 10c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 10d:	64 20 63 68          	and    BYTE PTR fs:[rbx+0x68],ah
 111:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 112:	69 63 65 21 0a 00  	imul   esp,DWORD PTR [rbx+0x65],0x48000a21

0000000000000118 <Answer3>:
 118:	48 61                	rex.W (bad)
 11a:	76 65                	jbe    181 <RepeatQuestionInv+0x23>
 11c:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
 11f:	75 20                	jne    141 <Answer4+0x7>
 121:	63 6f 6e             	movsxd ebp,DWORD PTR [rdi+0x6e]
 124:	73 69                	jae    18f <Questions+0x1>
 126:	64 65 72 65          	fs gs jb 18f <Questions+0x1>
 12a:	64 20 4d 69          	and    BYTE PTR fs:[rbp+0x69],cl
 12e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 12f:	65 73 77             	gs jae 1a9 <Questions+0x1b>
 132:	65 65 70 65          	gs gs jo 19b <Questions+0xd>
 136:	72 3f                	jb     177 <RepeatQuestionInv+0x19>
 138:	0a 00                	or     al,BYTE PTR [rax]

000000000000013a <Answer4>:
 13a:	49 20 73 75          	rex.WB and BYTE PTR [r11+0x75],sil
 13e:	67 67 65 73 74       	addr32 addr32 gs jae 1b7 <Answers+0x1>
 143:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
 146:	75 20                	jne    168 <RepeatQuestionInv+0xa>
 148:	74 72                	je     1bc <Answers+0x6>
 14a:	79 20                	jns    16c <RepeatQuestionInv+0xe>
 14c:	53                   	push   rbx
 14d:	70 61                	jo     1b0 <Questions+0x22>
 14f:	63 65 20             	movsxd esp,DWORD PTR [rbp+0x20]
 152:	45 6e                	rex.RB outs dx,BYTE PTR ds:[rsi]
 154:	67 69 6e 65 65 72 73 	imul   ebp,DWORD PTR [esi+0x65],0x21737265
 15b:	21 
 15c:	0a 00                	or     al,BYTE PTR [rax]

000000000000015e <RepeatQuestionInv>:
 15e:	49 20 6e 65          	rex.WB and BYTE PTR [r14+0x65],bpl
 162:	65 64 20 61 20       	gs and BYTE PTR fs:[rcx+0x20],ah
 167:	22 59 22             	and    bl,BYTE PTR [rcx+0x22]
 16a:	20 66 6f             	and    BYTE PTR [rsi+0x6f],ah
 16d:	72 20                	jb     18f <Questions+0x1>
 16f:	79 65                	jns    1d6 <Answers+0x20>
 171:	73 20                	jae    193 <Questions+0x5>
 173:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 174:	72 20                	jb     196 <Questions+0x8>
 176:	22 4e 22             	and    cl,BYTE PTR [rsi+0x22]
 179:	20 66 6f             	and    BYTE PTR [rsi+0x6f],ah
 17c:	72 20                	jb     19e <Questions+0x10>
 17e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 17f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 180:	2e 0a 00             	cs or  al,BYTE PTR [rax]

0000000000000183 <EndText>:
 183:	48 61                	rex.W (bad)
 185:	76 65                	jbe    1ec <Answers+0x36>
 187:	20 66 75             	and    BYTE PTR [rsi+0x75],ah
 18a:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 18b:	21 0a                	and    DWORD PTR [rdx],ecx
	...

000000000000018e <Questions>:
	...

00000000000001b6 <Answers>:
	...
