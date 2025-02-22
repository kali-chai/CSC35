
csc35.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_start>:
   0:	e8 be 05 00 00       	call   5c3 <LibSeed>
   5:	e8 00 00 00 00       	call   a <_start+0xa>
   a:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  11:	e8 d1 03 00 00       	call   3e7 <LibPrintStr>
  16:	48 c7 c0 3c 00 00 00 	mov    rax,0x3c
  1d:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
  24:	0f 05                	syscall 

0000000000000026 <ChangeTextColor>:
  26:	41 56                	push   r14
  28:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  2f:	e8 b3 03 00 00       	call   3e7 <LibPrintStr>
  34:	49 89 f6             	mov    r14,rsi
  37:	49 83 c6 5a          	add    r14,0x5a
  3b:	e8 51 03 00 00       	call   391 <LibPrintInt>
  40:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  47:	e8 9b 03 00 00       	call   3e7 <LibPrintStr>
  4c:	41 5e                	pop    r14
  4e:	c3                   	ret    

000000000000004f <ChangeBackColor>:
  4f:	41 56                	push   r14
  51:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  58:	e8 8a 03 00 00       	call   3e7 <LibPrintStr>
  5d:	49 89 f6             	mov    r14,rsi
  60:	49 83 c6 28          	add    r14,0x28
  64:	e8 28 03 00 00       	call   391 <LibPrintInt>
  69:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  70:	e8 72 03 00 00       	call   3e7 <LibPrintStr>
  75:	41 5e                	pop    r14
  77:	c3                   	ret    

0000000000000078 <MoveCursor>:
  78:	41 56                	push   r14
  7a:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  81:	e8 61 03 00 00       	call   3e7 <LibPrintStr>
  86:	49 89 f6             	mov    r14,rsi
  89:	e8 03 03 00 00       	call   391 <LibPrintInt>
  8e:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  95:	e8 4d 03 00 00       	call   3e7 <LibPrintStr>
  9a:	49 89 fe             	mov    r14,rdi
  9d:	e8 ef 02 00 00       	call   391 <LibPrintInt>
  a2:	49 c7 c6 00 00 00 00 	mov    r14,0x0
  a9:	e8 39 03 00 00       	call   3e7 <LibPrintStr>
  ae:	41 5e                	pop    r14
  b0:	c3                   	ret    

00000000000000b1 <GetRandom>:
  b1:	41 56                	push   r14
  b3:	49 89 f6             	mov    r14,rsi
  b6:	e8 3f 05 00 00       	call   5fa <LibRandom>
  bb:	4c 89 f6             	mov    rsi,r14
  be:	41 5e                	pop    r14
  c0:	c3                   	ret    

00000000000000c1 <PrintChar>:
  c1:	41 56                	push   r14
  c3:	41 88 f6             	mov    r14b,sil
  c6:	e8 81 02 00 00       	call   34c <LibPrintChar>
  cb:	41 5e                	pop    r14
  cd:	c3                   	ret    

00000000000000ce <ReadChar>:
  ce:	41 56                	push   r14
  d0:	e8 2f 02 00 00       	call   304 <LibScanChar>
  d5:	44 88 f6             	mov    sil,r14b
  d8:	41 5e                	pop    r14
  da:	c3                   	ret    

00000000000000db <LengthString>:
  db:	41 56                	push   r14
  dd:	49 89 f6             	mov    r14,rsi
  e0:	e8 e9 02 00 00       	call   3ce <LibLengthStr>
  e5:	4c 89 f6             	mov    rsi,r14
  e8:	41 5e                	pop    r14
  ea:	c3                   	ret    

00000000000000eb <PrintString>:
  eb:	41 56                	push   r14
  ed:	49 89 f6             	mov    r14,rsi
  f0:	e8 f2 02 00 00       	call   3e7 <LibPrintStr>
  f5:	41 5e                	pop    r14
  f7:	c3                   	ret    

00000000000000f8 <ReadString>:
  f8:	41 56                	push   r14
  fa:	41 57                	push   r15
  fc:	49 89 f6             	mov    r14,rsi
  ff:	49 89 ff             	mov    r15,rdi
 102:	e8 0c 03 00 00       	call   413 <LibScanStr>
 107:	41 5f                	pop    r15
 109:	41 5e                	pop    r14
 10b:	c3                   	ret    

000000000000010c <PrintHexByte>:
 10c:	41 56                	push   r14
 10e:	41 88 f6             	mov    r14b,sil
 111:	e8 11 02 00 00       	call   327 <LibPrintHex8>
 116:	41 5e                	pop    r14
 118:	c3                   	ret    

0000000000000119 <PrintHex>:
 119:	41 56                	push   r14
 11b:	49 89 f6             	mov    r14,rsi
 11e:	e8 45 02 00 00       	call   368 <LibPrintHex64>
 123:	41 5e                	pop    r14
 125:	c3                   	ret    

0000000000000126 <PrintInteger>:
 126:	41 56                	push   r14
 128:	49 89 f6             	mov    r14,rsi
 12b:	e8 61 02 00 00       	call   391 <LibPrintInt>
 130:	41 5e                	pop    r14
 132:	c3                   	ret    

0000000000000133 <ReadInteger>:
 133:	41 56                	push   r14
 135:	e8 9c 01 00 00       	call   2d6 <LibScanInt>
 13a:	4c 89 f6             	mov    rsi,r14
 13d:	41 5e                	pop    r14
 13f:	c3                   	ret    

0000000000000140 <ExitProgram>:
 140:	48 c7 c0 3c 00 00 00 	mov    rax,0x3c
 147:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
 14e:	0f 05                	syscall 

0000000000000150 <ClearScreen>:
 150:	41 56                	push   r14
 152:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 159:	e8 89 02 00 00       	call   3e7 <LibPrintStr>
 15e:	41 5e                	pop    r14
 160:	c3                   	ret    

0000000000000161 <PrintAbout>:
 161:	41 56                	push   r14
 163:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 16a:	e8 78 02 00 00       	call   3e7 <LibPrintStr>
 16f:	41 5e                	pop    r14
 171:	c3                   	ret    

0000000000000172 <PrintRegisters>:
 172:	41 56                	push   r14
 174:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 17b:	e8 67 02 00 00       	call   3e7 <LibPrintStr>
 180:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 187:	e8 5b 02 00 00       	call   3e7 <LibPrintStr>
 18c:	49 89 c6             	mov    r14,rax
 18f:	e8 d4 01 00 00       	call   368 <LibPrintHex64>
 194:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 19b:	e8 47 02 00 00       	call   3e7 <LibPrintStr>
 1a0:	4d 89 c6             	mov    r14,r8
 1a3:	e8 c0 01 00 00       	call   368 <LibPrintHex64>
 1a8:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 1af:	e8 33 02 00 00       	call   3e7 <LibPrintStr>
 1b4:	49 89 de             	mov    r14,rbx
 1b7:	e8 ac 01 00 00       	call   368 <LibPrintHex64>
 1bc:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 1c3:	e8 1f 02 00 00       	call   3e7 <LibPrintStr>
 1c8:	4d 89 ce             	mov    r14,r9
 1cb:	e8 98 01 00 00       	call   368 <LibPrintHex64>
 1d0:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 1d7:	e8 0b 02 00 00       	call   3e7 <LibPrintStr>
 1dc:	49 89 ce             	mov    r14,rcx
 1df:	e8 84 01 00 00       	call   368 <LibPrintHex64>
 1e4:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 1eb:	e8 f7 01 00 00       	call   3e7 <LibPrintStr>
 1f0:	4d 89 d6             	mov    r14,r10
 1f3:	e8 70 01 00 00       	call   368 <LibPrintHex64>
 1f8:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 1ff:	e8 e3 01 00 00       	call   3e7 <LibPrintStr>
 204:	49 89 d6             	mov    r14,rdx
 207:	e8 5c 01 00 00       	call   368 <LibPrintHex64>
 20c:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 213:	e8 cf 01 00 00       	call   3e7 <LibPrintStr>
 218:	4d 89 de             	mov    r14,r11
 21b:	e8 48 01 00 00       	call   368 <LibPrintHex64>
 220:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 227:	e8 bb 01 00 00       	call   3e7 <LibPrintStr>
 22c:	49 89 f6             	mov    r14,rsi
 22f:	e8 34 01 00 00       	call   368 <LibPrintHex64>
 234:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 23b:	e8 a7 01 00 00       	call   3e7 <LibPrintStr>
 240:	4d 89 e6             	mov    r14,r12
 243:	e8 20 01 00 00       	call   368 <LibPrintHex64>
 248:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 24f:	e8 93 01 00 00       	call   3e7 <LibPrintStr>
 254:	49 89 fe             	mov    r14,rdi
 257:	e8 0c 01 00 00       	call   368 <LibPrintHex64>
 25c:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 263:	e8 7f 01 00 00       	call   3e7 <LibPrintStr>
 268:	4d 89 ee             	mov    r14,r13
 26b:	e8 f8 00 00 00       	call   368 <LibPrintHex64>
 270:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 277:	e8 6b 01 00 00       	call   3e7 <LibPrintStr>
 27c:	49 89 ee             	mov    r14,rbp
 27f:	e8 e4 00 00 00       	call   368 <LibPrintHex64>
 284:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 28b:	e8 57 01 00 00       	call   3e7 <LibPrintStr>
 290:	4c 8b 34 24          	mov    r14,QWORD PTR [rsp]
 294:	e8 cf 00 00 00       	call   368 <LibPrintHex64>
 299:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 2a0:	e8 42 01 00 00       	call   3e7 <LibPrintStr>
 2a5:	49 89 e6             	mov    r14,rsp
 2a8:	e8 bb 00 00 00       	call   368 <LibPrintHex64>
 2ad:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 2b4:	e8 2e 01 00 00       	call   3e7 <LibPrintStr>
 2b9:	4d 89 fe             	mov    r14,r15
 2bc:	e8 a7 00 00 00       	call   368 <LibPrintHex64>
 2c1:	49 c7 c6 00 00 00 00 	mov    r14,0x0
 2c8:	e8 1a 01 00 00       	call   3e7 <LibPrintStr>
 2cd:	41 5e                	pop    r14
 2cf:	c3                   	ret    

00000000000002d0 <Seed>:
 2d0:	e8 ee 02 00 00       	call   5c3 <LibSeed>
 2d5:	c3                   	ret    

00000000000002d6 <LibScanInt>:
 2d6:	55                   	push   rbp
 2d7:	48 89 e5             	mov    rbp,rsp
 2da:	6a 00                	push   0x0
 2dc:	6a 00                	push   0x0
 2de:	6a 00                	push   0x0
 2e0:	6a 00                	push   0x0
 2e2:	6a 00                	push   0x0
 2e4:	6a 00                	push   0x0
 2e6:	41 57                	push   r15
 2e8:	4c 8d 75 d0          	lea    r14,[rbp-0x30]
 2ec:	49 c7 c7 28 00 00 00 	mov    r15,0x28
 2f3:	e8 1b 01 00 00       	call   413 <LibScanStr>
 2f8:	e8 43 01 00 00       	call   440 <LibStrToInt>
 2fd:	41 5f                	pop    r15
 2ff:	48 89 ec             	mov    rsp,rbp
 302:	5d                   	pop    rbp
 303:	c3                   	ret    

0000000000000304 <LibScanChar>:
 304:	55                   	push   rbp
 305:	48 89 e5             	mov    rbp,rsp
 308:	6a 00                	push   0x0
 30a:	41 57                	push   r15
 30c:	4c 8d 75 f8          	lea    r14,[rbp-0x8]
 310:	49 c7 c7 02 00 00 00 	mov    r15,0x2
 317:	e8 f7 00 00 00       	call   413 <LibScanStr>
 31c:	44 8a 75 f8          	mov    r14b,BYTE PTR [rbp-0x8]
 320:	41 5f                	pop    r15
 322:	48 89 ec             	mov    rsp,rbp
 325:	5d                   	pop    rbp
 326:	c3                   	ret    

0000000000000327 <LibPrintHex8>:
 327:	55                   	push   rbp
 328:	48 89 e5             	mov    rbp,rsp
 32b:	6a 00                	push   0x0
 32d:	41 56                	push   r14
 32f:	41 57                	push   r15
 331:	4c 8d 7d f8          	lea    r15,[rbp-0x8]
 335:	e8 48 02 00 00       	call   582 <LibWriteHex8>
 33a:	4c 8d 75 f8          	lea    r14,[rbp-0x8]
 33e:	e8 a4 00 00 00       	call   3e7 <LibPrintStr>
 343:	41 5f                	pop    r15
 345:	41 5e                	pop    r14
 347:	48 89 ec             	mov    rsp,rbp
 34a:	5d                   	pop    rbp
 34b:	c3                   	ret    

000000000000034c <LibPrintChar>:
 34c:	55                   	push   rbp
 34d:	48 89 e5             	mov    rbp,rsp
 350:	6a 00                	push   0x0
 352:	41 56                	push   r14
 354:	44 88 75 f8          	mov    BYTE PTR [rbp-0x8],r14b
 358:	4c 8d 75 f8          	lea    r14,[rbp-0x8]
 35c:	e8 86 00 00 00       	call   3e7 <LibPrintStr>
 361:	41 5e                	pop    r14
 363:	48 89 ec             	mov    rsp,rbp
 366:	5d                   	pop    rbp
 367:	c3                   	ret    

0000000000000368 <LibPrintHex64>:
 368:	55                   	push   rbp
 369:	48 89 e5             	mov    rbp,rsp
 36c:	6a 00                	push   0x0
 36e:	6a 00                	push   0x0
 370:	6a 00                	push   0x0
 372:	41 56                	push   r14
 374:	41 57                	push   r15
 376:	4c 8d 7d e8          	lea    r15,[rbp-0x18]
 37a:	e8 d1 01 00 00       	call   550 <LibWriteHex64>
 37f:	4c 8d 75 e8          	lea    r14,[rbp-0x18]
 383:	e8 5f 00 00 00       	call   3e7 <LibPrintStr>
 388:	41 5f                	pop    r15
 38a:	41 5e                	pop    r14
 38c:	48 89 ec             	mov    rsp,rbp
 38f:	5d                   	pop    rbp
 390:	c3                   	ret    

0000000000000391 <LibPrintInt>:
 391:	55                   	push   rbp
 392:	48 89 e5             	mov    rbp,rsp
 395:	6a 00                	push   0x0
 397:	6a 00                	push   0x0
 399:	6a 00                	push   0x0
 39b:	6a 00                	push   0x0
 39d:	6a 00                	push   0x0
 39f:	6a 00                	push   0x0
 3a1:	41 55                	push   r13
 3a3:	41 56                	push   r14
 3a5:	41 57                	push   r15
 3a7:	4d 89 f5             	mov    r13,r14
 3aa:	4c 8d 75 d0          	lea    r14,[rbp-0x30]
 3ae:	49 c7 c7 28 00 00 00 	mov    r15,0x28
 3b5:	e8 eb 00 00 00       	call   4a5 <LibIntToStr>
 3ba:	4c 8d 75 d0          	lea    r14,[rbp-0x30]
 3be:	e8 24 00 00 00       	call   3e7 <LibPrintStr>
 3c3:	41 5f                	pop    r15
 3c5:	41 5e                	pop    r14
 3c7:	41 5d                	pop    r13
 3c9:	48 89 ec             	mov    rsp,rbp
 3cc:	5d                   	pop    rbp
 3cd:	c3                   	ret    

00000000000003ce <LibLengthStr>:
 3ce:	57                   	push   rdi
 3cf:	48 c7 c7 00 00 00 00 	mov    rdi,0x0

00000000000003d6 <LibLengthStrCount>:
 3d6:	41 80 3c 3e 00       	cmp    BYTE PTR [r14+rdi*1],0x0
 3db:	74 05                	je     3e2 <LibLengthStrDone>
 3dd:	48 ff c7             	inc    rdi
 3e0:	eb f4                	jmp    3d6 <LibLengthStrCount>

00000000000003e2 <LibLengthStrDone>:
 3e2:	49 89 fe             	mov    r14,rdi
 3e5:	5f                   	pop    rdi
 3e6:	c3                   	ret    

00000000000003e7 <LibPrintStr>:
 3e7:	50                   	push   rax
 3e8:	53                   	push   rbx
 3e9:	51                   	push   rcx
 3ea:	52                   	push   rdx
 3eb:	57                   	push   rdi
 3ec:	56                   	push   rsi
 3ed:	41 53                	push   r11
 3ef:	4c 89 f6             	mov    rsi,r14
 3f2:	e8 d7 ff ff ff       	call   3ce <LibLengthStr>
 3f7:	4c 89 f2             	mov    rdx,r14
 3fa:	48 c7 c0 01 00 00 00 	mov    rax,0x1
 401:	48 c7 c7 01 00 00 00 	mov    rdi,0x1
 408:	0f 05                	syscall 
 40a:	41 5b                	pop    r11
 40c:	5e                   	pop    rsi
 40d:	5f                   	pop    rdi
 40e:	5a                   	pop    rdx
 40f:	59                   	pop    rcx
 410:	5b                   	pop    rbx
 411:	58                   	pop    rax
 412:	c3                   	ret    

0000000000000413 <LibScanStr>:
 413:	50                   	push   rax
 414:	51                   	push   rcx
 415:	52                   	push   rdx
 416:	57                   	push   rdi
 417:	56                   	push   rsi
 418:	41 53                	push   r11
 41a:	4c 89 f6             	mov    rsi,r14
 41d:	4c 89 fa             	mov    rdx,r15
 420:	48 c7 c0 00 00 00 00 	mov    rax,0x0
 427:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
 42e:	0f 05                	syscall 
 430:	48 ff c8             	dec    rax
 433:	41 c6 04 06 00       	mov    BYTE PTR [r14+rax*1],0x0
 438:	41 5b                	pop    r11
 43a:	5e                   	pop    rsi
 43b:	5f                   	pop    rdi
 43c:	5a                   	pop    rdx
 43d:	59                   	pop    rcx
 43e:	58                   	pop    rax
 43f:	c3                   	ret    

0000000000000440 <LibStrToInt>:
 440:	53                   	push   rbx
 441:	57                   	push   rdi
 442:	41 50                	push   r8
 444:	41 51                	push   r9
 446:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
 44d:	49 c7 c0 00 00 00 00 	mov    r8,0x0
 454:	49 c7 c1 00 00 00 00 	mov    r9,0x0
 45b:	41 80 3e 2d          	cmp    BYTE PTR [r14],0x2d
 45f:	75 0a                	jne    46b <LibStrToIntLoop>
 461:	49 c7 c0 01 00 00 00 	mov    r8,0x1
 468:	48 ff c7             	inc    rdi

000000000000046b <LibStrToIntLoop>:
 46b:	48 c7 c3 00 00 00 00 	mov    rbx,0x0
 472:	41 8a 1c 3e          	mov    bl,BYTE PTR [r14+rdi*1]
 476:	48 83 fb 30          	cmp    rbx,0x30
 47a:	7c 16                	jl     492 <LibStrToIntLoopDone>
 47c:	48 83 fb 39          	cmp    rbx,0x39
 480:	7f 10                	jg     492 <LibStrToIntLoopDone>
 482:	48 83 eb 30          	sub    rbx,0x30
 486:	4d 6b c9 0a          	imul   r9,r9,0xa
 48a:	49 01 d9             	add    r9,rbx
 48d:	48 ff c7             	inc    rdi
 490:	eb d9                	jmp    46b <LibStrToIntLoop>

0000000000000492 <LibStrToIntLoopDone>:
 492:	49 83 f8 01          	cmp    r8,0x1
 496:	75 03                	jne    49b <LibStrToIntReturn>
 498:	49 f7 d9             	neg    r9

000000000000049b <LibStrToIntReturn>:
 49b:	4d 89 ce             	mov    r14,r9
 49e:	41 59                	pop    r9
 4a0:	41 58                	pop    r8
 4a2:	5f                   	pop    rdi
 4a3:	5b                   	pop    rbx
 4a4:	c3                   	ret    

00000000000004a5 <LibIntToStr>:
 4a5:	50                   	push   rax
 4a6:	53                   	push   rbx
 4a7:	51                   	push   rcx
 4a8:	52                   	push   rdx
 4a9:	57                   	push   rdi
 4aa:	56                   	push   rsi
 4ab:	41 51                	push   r9
 4ad:	41 52                	push   r10
 4af:	41 53                	push   r11
 4b1:	49 ba 00 00 64 a7 b3 	movabs r10,0xde0b6b3a7640000
 4b8:	b6 e0 0d 
 4bb:	48 c7 c6 00 00 00 00 	mov    rsi,0x0
 4c2:	49 c7 c3 00 00 00 00 	mov    r11,0x0
 4c9:	4c 89 e9             	mov    rcx,r13
 4cc:	4c 89 ff             	mov    rdi,r15

00000000000004cf <LibIntToStrCheckNeg>:
 4cf:	48 83 f9 00          	cmp    rcx,0x0
 4d3:	74 5e                	je     533 <LibIntToStrZero>
 4d5:	7f 0a                	jg     4e1 <LibIntToStrLoop>
 4d7:	41 c6 06 2d          	mov    BYTE PTR [r14],0x2d
 4db:	48 f7 d9             	neg    rcx
 4de:	48 ff c6             	inc    rsi

00000000000004e1 <LibIntToStrLoop>:
 4e1:	49 83 fa 00          	cmp    r10,0x0
 4e5:	74 57                	je     53e <LibIntToStrDone>
 4e7:	48 39 fe             	cmp    rsi,rdi
 4ea:	74 52                	je     53e <LibIntToStrDone>
 4ec:	48 c7 c2 00 00 00 00 	mov    rdx,0x0
 4f3:	48 89 c8             	mov    rax,rcx
 4f6:	49 f7 f2             	div    r10
 4f9:	48 89 d1             	mov    rcx,rdx
 4fc:	48 83 f8 01          	cmp    rax,0x1
 500:	7d 06                	jge    508 <LibIntToStrWrite>
 502:	49 83 fb 00          	cmp    r11,0x0
 506:	74 12                	je     51a <LibIntToStrNext>

0000000000000508 <LibIntToStrWrite>:
 508:	49 c7 c3 01 00 00 00 	mov    r11,0x1
 50f:	48 83 c0 30          	add    rax,0x30
 513:	41 88 04 36          	mov    BYTE PTR [r14+rsi*1],al
 517:	48 ff c6             	inc    rsi

000000000000051a <LibIntToStrNext>:
 51a:	48 c7 c2 00 00 00 00 	mov    rdx,0x0
 521:	4c 89 d0             	mov    rax,r10
 524:	48 c7 c3 0a 00 00 00 	mov    rbx,0xa
 52b:	48 f7 f3             	div    rbx
 52e:	49 89 c2             	mov    r10,rax
 531:	eb ae                	jmp    4e1 <LibIntToStrLoop>

0000000000000533 <LibIntToStrZero>:
 533:	41 c6 06 30          	mov    BYTE PTR [r14],0x30
 537:	48 c7 c6 01 00 00 00 	mov    rsi,0x1

000000000000053e <LibIntToStrDone>:
 53e:	41 c6 04 36 00       	mov    BYTE PTR [r14+rsi*1],0x0
 543:	41 5b                	pop    r11
 545:	41 5a                	pop    r10
 547:	41 59                	pop    r9
 549:	5e                   	pop    rsi
 54a:	5f                   	pop    rdi
 54b:	5a                   	pop    rdx
 54c:	59                   	pop    rcx
 54d:	5b                   	pop    rbx
 54e:	58                   	pop    rax
 54f:	c3                   	ret    

0000000000000550 <LibWriteHex64>:
 550:	56                   	push   rsi
 551:	41 50                	push   r8
 553:	41 56                	push   r14
 555:	41 57                	push   r15
 557:	48 c7 c6 00 00 00 00 	mov    rsi,0x0
 55e:	4d 89 f8             	mov    r8,r15

0000000000000561 <LibWriteHex64Loop>:
 561:	48 83 fe 10          	cmp    rsi,0x10
 565:	74 13                	je     57a <LibWriteHex64Done>
 567:	49 c1 c6 08          	rol    r14,0x8
 56b:	4d 8d 3c 30          	lea    r15,[r8+rsi*1]
 56f:	e8 0e 00 00 00       	call   582 <LibWriteHex8>
 574:	48 83 c6 02          	add    rsi,0x2
 578:	eb e7                	jmp    561 <LibWriteHex64Loop>

000000000000057a <LibWriteHex64Done>:
 57a:	41 5f                	pop    r15
 57c:	41 5e                	pop    r14
 57e:	41 58                	pop    r8
 580:	5e                   	pop    rsi
 581:	c3                   	ret    

0000000000000582 <LibWriteHex8>:
 582:	50                   	push   rax
 583:	53                   	push   rbx
 584:	56                   	push   rsi
 585:	41 56                	push   r14
 587:	4c 89 f0             	mov    rax,r14
 58a:	49 c1 ee 04          	shr    r14,0x4
 58e:	49 83 e6 0f          	and    r14,0xf
 592:	41 8a 9e 00 00 00 00 	mov    bl,BYTE PTR [r14+0x0]
 599:	48 c7 c6 00 00 00 00 	mov    rsi,0x0
 5a0:	41 88 1c 37          	mov    BYTE PTR [r15+rsi*1],bl
 5a4:	49 89 c6             	mov    r14,rax
 5a7:	49 83 e6 0f          	and    r14,0xf
 5ab:	41 8a 9e 00 00 00 00 	mov    bl,BYTE PTR [r14+0x0]
 5b2:	48 c7 c6 01 00 00 00 	mov    rsi,0x1
 5b9:	41 88 1c 37          	mov    BYTE PTR [r15+rsi*1],bl
 5bd:	41 5e                	pop    r14
 5bf:	5e                   	pop    rsi
 5c0:	5b                   	pop    rbx
 5c1:	58                   	pop    rax
 5c2:	c3                   	ret    

00000000000005c3 <LibSeed>:
 5c3:	50                   	push   rax
 5c4:	48 c7 c0 c9 00 00 00 	mov    rax,0xc9
 5cb:	48 c7 c7 00 00 00 00 	mov    rdi,0x0
 5d2:	0f 05                	syscall 
 5d4:	48 c7 c0 27 00 00 00 	mov    rax,0x27
 5db:	0f 05                	syscall 
 5dd:	48 01 04 25 00 00 00 	add    QWORD PTR ds:0x0,rax
 5e4:	00 
 5e5:	48 8b 04 25 00 00 00 	mov    rax,QWORD PTR ds:0x0
 5ec:	00 
 5ed:	66 d1 c8             	ror    ax,1
 5f0:	48 89 04 25 00 00 00 	mov    QWORD PTR ds:0x0,rax
 5f7:	00 
 5f8:	58                   	pop    rax
 5f9:	c3                   	ret    

00000000000005fa <LibRandom>:
 5fa:	50                   	push   rax
 5fb:	53                   	push   rbx
 5fc:	51                   	push   rcx
 5fd:	52                   	push   rdx
 5fe:	57                   	push   rdi
 5ff:	41 50                	push   r8
 601:	41 53                	push   r11
 603:	4d 89 f0             	mov    r8,r14

0000000000000606 <LibRandomFixRange>:
 606:	49 83 f8 01          	cmp    r8,0x1
 60a:	7d 07                	jge    613 <LibRandomCreate>
 60c:	49 c7 c0 01 00 00 00 	mov    r8,0x1

0000000000000613 <LibRandomCreate>:
 613:	48 8b 04 25 00 00 00 	mov    rax,QWORD PTR ds:0x0
 61a:	00 
 61b:	48 69 c0 05 84 08 08 	imul   rax,rax,0x8088405
 622:	48 c7 c2 00 00 00 00 	mov    rdx,0x0
 629:	48 c7 c1 ff ff ff 7f 	mov    rcx,0x7fffffff
 630:	48 f7 f1             	div    rcx
 633:	48 89 14 25 00 00 00 	mov    QWORD PTR ds:0x0,rdx
 63a:	00 

000000000000063b <LibRandomResult>:
 63b:	48 c7 c2 00 00 00 00 	mov    rdx,0x0
 642:	48 8b 04 25 00 00 00 	mov    rax,QWORD PTR ds:0x0
 649:	00 
 64a:	49 f7 f0             	div    r8
 64d:	49 89 d6             	mov    r14,rdx
 650:	41 5b                	pop    r11
 652:	41 58                	pop    r8
 654:	5f                   	pop    rdi
 655:	5a                   	pop    rdx
 656:	59                   	pop    rcx
 657:	5b                   	pop    rbx
 658:	58                   	pop    rax
 659:	c3                   	ret    
