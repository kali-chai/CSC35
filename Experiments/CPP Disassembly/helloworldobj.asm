Microsoft (R) COFF/PE Dumper Version 14.43.34808.0
Copyright (C) Microsoft Corporation.  All rights reserved.


Dump of file helloworld.obj

File Type: COFF OBJECT

main:
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: 48 8D 15 00 00 00  lea         rdx,[$SG33416]
                    00
  000000000000000B: 48 8D 0D 00 00 00  lea         rcx,[?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A]
                    00
  0000000000000012: E8 00 00 00 00     call        ??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
  0000000000000017: 33 C0              xor         eax,eax
  0000000000000019: 48 83 C4 28        add         rsp,28h
  000000000000001D: C3                 ret

??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><>(struct std::_Zero_then_variadic_args_t)):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??0?$allocator@D@std@@QEAA@XZ
  0000000000000017: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001C: 48 8B C8           mov         rcx,rax
  000000000000001F: E8 00 00 00 00     call        ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000024: 90                 nop
  0000000000000025: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002A: 48 83 C4 28        add         rsp,28h
  000000000000002E: C3                 ret

??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><class std::allocator<char> >(struct std::_One_then_variadic_args_t,class std::allocator<char> &&)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 28        sub         rsp,28h
  0000000000000012: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000017: E8 00 00 00 00     call        ??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z
  000000000000001C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000021: 48 8B C8           mov         rcx,rax
  0000000000000024: E8 00 00 00 00     call        ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000029: 90                 nop
  000000000000002A: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002F: 48 83 C4 28        add         rsp,28h
  0000000000000033: C3                 ret

??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z (class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::operator<<<struct std::char_traits<char> >(class std::basic_ostream<char,struct std::char_traits<char> > &,char const *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 68        sub         rsp,68h
  000000000000000E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000016: 48 8B 4C 24 78     mov         rcx,qword ptr [rsp+78h]
  000000000000001B: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  0000000000000020: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000025: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  000000000000002A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002D: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000031: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000036: 48 03 C8           add         rcx,rax
  0000000000000039: 48 8B C1           mov         rax,rcx
  000000000000003C: 48 8B C8           mov         rcx,rax
  000000000000003F: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  0000000000000044: 48 85 C0           test        rax,rax
  0000000000000047: 7E 51              jle         000000000000009A
  0000000000000049: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  000000000000004E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000051: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000055: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000005A: 48 03 C8           add         rcx,rax
  000000000000005D: 48 8B C1           mov         rax,rcx
  0000000000000060: 48 8B C8           mov         rcx,rax
  0000000000000063: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  0000000000000068: 48 3B 44 24 30     cmp         rax,qword ptr [rsp+30h]
  000000000000006D: 7E 2B              jle         000000000000009A
  000000000000006F: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000074: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000077: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000007B: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000080: 48 03 C8           add         rcx,rax
  0000000000000083: 48 8B C1           mov         rax,rcx
  0000000000000086: 48 8B C8           mov         rcx,rax
  0000000000000089: E8 00 00 00 00     call        ?width@ios_base@std@@QEBA_JXZ
  000000000000008E: 48 2B 44 24 30     sub         rax,qword ptr [rsp+30h]
  0000000000000093: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000098: EB 09              jmp         00000000000000A3
  000000000000009A: 48 C7 44 24 40 00  mov         qword ptr [rsp+40h],0
                    00 00 00
  00000000000000A3: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000A8: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000AD: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  00000000000000B2: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000000000000B7: E8 00 00 00 00     call        ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  00000000000000BC: 90                 nop
  00000000000000BD: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000000000000C2: E8 00 00 00 00     call        ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ
  00000000000000C7: 0F B6 C0           movzx       eax,al
  00000000000000CA: 85 C0              test        eax,eax
  00000000000000CC: 75 10              jne         00000000000000DE
  00000000000000CE: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000000D2: 83 C8 04           or          eax,4
  00000000000000D5: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000000D9: E9 D0 01 00 00     jmp         $LN22
  00000000000000DE: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000E3: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000E6: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000000EA: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000EF: 48 03 C8           add         rcx,rax
  00000000000000F2: 48 8B C1           mov         rax,rcx
  00000000000000F5: 48 8B C8           mov         rcx,rax
  00000000000000F8: E8 00 00 00 00     call        ?flags@ios_base@std@@QEBAHXZ
  00000000000000FD: 25 C0 01 00 00     and         eax,1C0h
  0000000000000102: 83 F8 40           cmp         eax,40h
  0000000000000105: 0F 84 95 00 00 00  je          00000000000001A0
  000000000000010B: EB 0D              jmp         000000000000011A
  000000000000010D: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000112: 48 FF C8           dec         rax
  0000000000000115: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000011A: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000120: 7E 7E              jle         00000000000001A0
  0000000000000122: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000127: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000012A: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000012E: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000133: 48 03 C8           add         rcx,rax
  0000000000000136: 48 8B C1           mov         rax,rcx
  0000000000000139: 48 8B C8           mov         rcx,rax
  000000000000013C: E8 00 00 00 00     call        ?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ
  0000000000000141: 88 44 24 24        mov         byte ptr [rsp+24h],al
  0000000000000145: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000014A: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000014D: 48 63 49 04        movsxd      rcx,dword ptr [rcx+4]
  0000000000000151: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000156: 48 03 D1           add         rdx,rcx
  0000000000000159: 48 8B CA           mov         rcx,rdx
  000000000000015C: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000161: 0F B6 4C 24 24     movzx       ecx,byte ptr [rsp+24h]
  0000000000000166: 0F B6 D1           movzx       edx,cl
  0000000000000169: 48 8B C8           mov         rcx,rax
  000000000000016C: E8 00 00 00 00     call        ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
  0000000000000171: 89 44 24 38        mov         dword ptr [rsp+38h],eax
  0000000000000175: E8 00 00 00 00     call        ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ
  000000000000017A: 8B 4C 24 38        mov         ecx,dword ptr [rsp+38h]
  000000000000017E: 8B D1              mov         edx,ecx
  0000000000000180: 8B C8              mov         ecx,eax
  0000000000000182: E8 00 00 00 00     call        ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
  0000000000000187: 0F B6 C0           movzx       eax,al
  000000000000018A: 85 C0              test        eax,eax
  000000000000018C: 74 0D              je          000000000000019B
  000000000000018E: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000192: 83 C8 04           or          eax,4
  0000000000000195: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000199: EB 05              jmp         00000000000001A0
  000000000000019B: E9 6D FF FF FF     jmp         000000000000010D
  00000000000001A0: 83 7C 24 20 00     cmp         dword ptr [rsp+20h],0
  00000000000001A5: 75 43              jne         00000000000001EA
  00000000000001A7: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000001AC: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000001AF: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000001B3: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000001B8: 48 03 C8           add         rcx,rax
  00000000000001BB: 48 8B C1           mov         rax,rcx
  00000000000001BE: 48 8B C8           mov         rcx,rax
  00000000000001C1: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  00000000000001C6: 4C 8B 44 24 30     mov         r8,qword ptr [rsp+30h]
  00000000000001CB: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  00000000000001D0: 48 8B C8           mov         rcx,rax
  00000000000001D3: E8 00 00 00 00     call        ?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z
  00000000000001D8: 48 3B 44 24 30     cmp         rax,qword ptr [rsp+30h]
  00000000000001DD: 74 0B              je          00000000000001EA
  00000000000001DF: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  00000000000001E3: 83 C8 04           or          eax,4
  00000000000001E6: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  00000000000001EA: 83 7C 24 20 00     cmp         dword ptr [rsp+20h],0
  00000000000001EF: 0F 85 95 00 00 00  jne         000000000000028A
  00000000000001F5: EB 0D              jmp         0000000000000204
  00000000000001F7: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000001FC: 48 FF C8           dec         rax
  00000000000001FF: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000204: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  000000000000020A: 7E 7E              jle         000000000000028A
  000000000000020C: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000211: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000214: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000218: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000021D: 48 03 C8           add         rcx,rax
  0000000000000220: 48 8B C1           mov         rax,rcx
  0000000000000223: 48 8B C8           mov         rcx,rax
  0000000000000226: E8 00 00 00 00     call        ?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ
  000000000000022B: 88 44 24 25        mov         byte ptr [rsp+25h],al
  000000000000022F: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000234: 48 8B 09           mov         rcx,qword ptr [rcx]
  0000000000000237: 48 63 49 04        movsxd      rcx,dword ptr [rcx+4]
  000000000000023B: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000240: 48 03 D1           add         rdx,rcx
  0000000000000243: 48 8B CA           mov         rcx,rdx
  0000000000000246: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  000000000000024B: 0F B6 4C 24 25     movzx       ecx,byte ptr [rsp+25h]
  0000000000000250: 0F B6 D1           movzx       edx,cl
  0000000000000253: 48 8B C8           mov         rcx,rax
  0000000000000256: E8 00 00 00 00     call        ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
  000000000000025B: 89 44 24 3C        mov         dword ptr [rsp+3Ch],eax
  000000000000025F: E8 00 00 00 00     call        ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ
  0000000000000264: 8B 4C 24 3C        mov         ecx,dword ptr [rsp+3Ch]
  0000000000000268: 8B D1              mov         edx,ecx
  000000000000026A: 8B C8              mov         ecx,eax
  000000000000026C: E8 00 00 00 00     call        ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
  0000000000000271: 0F B6 C0           movzx       eax,al
  0000000000000274: 85 C0              test        eax,eax
  0000000000000276: 74 0D              je          0000000000000285
  0000000000000278: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000027C: 83 C8 04           or          eax,4
  000000000000027F: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000283: EB 05              jmp         000000000000028A
  0000000000000285: E9 6D FF FF FF     jmp         00000000000001F7
  000000000000028A: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  000000000000028F: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000292: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000296: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000029B: 48 03 C8           add         rcx,rax
  000000000000029E: 48 8B C1           mov         rax,rcx
  00000000000002A1: 33 D2              xor         edx,edx
  00000000000002A3: 48 8B C8           mov         rcx,rax
  00000000000002A6: E8 00 00 00 00     call        ?width@ios_base@std@@QEAA_J_J@Z
  00000000000002AB: 90                 nop
  00000000000002AC: EB 00              jmp         $LN22
$LN22:
  00000000000002AE: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000002B3: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000002B6: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000002BA: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000002BF: 48 03 C8           add         rcx,rax
  00000000000002C2: 48 8B C1           mov         rax,rcx
  00000000000002C5: 45 33 C0           xor         r8d,r8d
  00000000000002C8: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  00000000000002CC: 48 8B C8           mov         rcx,rax
  00000000000002CF: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000002D4: 90                 nop
  00000000000002D5: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000002DA: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  00000000000002DF: 48 8D 4C 24 50     lea         rcx,[rsp+50h]
  00000000000002E4: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  00000000000002E9: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  00000000000002EE: 48 83 C4 68        add         rsp,68h
  00000000000002F2: C3                 ret

?catch$0@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA (int `class catch$0::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::operator<<<struct std::char_traits<char> >(class catch$0::std &,char const *)'::`1'::catch$0):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z$0:
  000000000000000D: 48 8B 45 70        mov         rax,qword ptr [rbp+70h]
  0000000000000011: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000014: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000018: 48 8B 4D 70        mov         rcx,qword ptr [rbp+70h]
  000000000000001C: 48 03 C8           add         rcx,rax
  000000000000001F: 48 8B C1           mov         rax,rcx
  0000000000000022: 41 B0 01           mov         r8b,1
  0000000000000025: BA 04 00 00 00     mov         edx,4
  000000000000002A: 48 8B C8           mov         rcx,rax
  000000000000002D: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000032: 90                 nop
  0000000000000033: 48 8D 05 00 00 00  lea         rax,[$LN22]
                    00
  000000000000003A: 48 83 C4 20        add         rsp,20h
  000000000000003E: 5D                 pop         rbp
  000000000000003F: C3                 ret
  0000000000000040: CC                 int         3

??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate<16,struct std::_Default_allocate_traits>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 83 7C 24 30 00  cmp         qword ptr [rsp+30h],0
  000000000000000F: 75 04              jne         0000000000000015
  0000000000000011: 33 C0              xor         eax,eax
  0000000000000013: EB 21              jmp         0000000000000036
  0000000000000015: 48 81 7C 24 30 00  cmp         qword ptr [rsp+30h],1000h
                    10 00 00
  000000000000001E: 72 0C              jb          000000000000002C
  0000000000000020: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000025: E8 00 00 00 00     call        ??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
  000000000000002A: EB 0A              jmp         0000000000000036
  000000000000002C: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000031: E8 00 00 00 00     call        ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
  0000000000000036: 48 83 C4 28        add         rsp,28h
  000000000000003A: C3                 ret

??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z (char * __cdecl std::_Allocate_at_least_helper<class std::allocator<char> >(class std::allocator<char> &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000013: 48 8B 10           mov         rdx,qword ptr [rax]
  0000000000000016: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001B: E8 00 00 00 00     call        ?allocate@?$allocator@D@std@@QEAAPEAD_K@Z
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z (private: static char * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Allocate_for_capacity<0>(class std::allocator<char> &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000013: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000016: 48 FF C0           inc         rax
  0000000000000019: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000001E: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000021: 48 C7 44 24 20 00  mov         qword ptr [rsp+20h],0
                    00 00 00
  000000000000002A: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000002F: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000034: E8 00 00 00 00     call        ??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z
  0000000000000039: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000043: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000046: 48 FF C8           dec         rax
  0000000000000049: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000004E: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000051: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000056: 48 83 C4 38        add         rsp,38h
  000000000000005A: C3                 ret

??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate_manually_vector_aligned<struct std::_Default_allocate_traits>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 83 C0 27        add         rax,27h
  0000000000000012: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000017: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000001C: 48 39 44 24 28     cmp         qword ptr [rsp+28h],rax
  0000000000000021: 77 06              ja          0000000000000029
  0000000000000023: E8 00 00 00 00     call        ?_Throw_bad_array_new_length@std@@YAXXZ
  0000000000000028: 90                 nop
  0000000000000029: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000002E: E8 00 00 00 00     call        ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
  0000000000000033: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000038: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  000000000000003E: 74 02              je          0000000000000042
  0000000000000040: EB 0C              jmp         000000000000004E
  0000000000000042: E8 00 00 00 00     call        _invalid_parameter_noinfo_noreturn
  0000000000000047: 90                 nop
  0000000000000048: 33 C0              xor         eax,eax
  000000000000004A: 85 C0              test        eax,eax
  000000000000004C: 75 F4              jne         0000000000000042
  000000000000004E: 33 C0              xor         eax,eax
  0000000000000050: 85 C0              test        eax,eax
  0000000000000052: 75 E4              jne         0000000000000038
  0000000000000054: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000059: 48 83 C0 27        add         rax,27h
  000000000000005D: 48 83 E0 E0        and         rax,0FFFFFFFFFFFFFFE0h
  0000000000000061: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000066: B8 08 00 00 00     mov         eax,8
  000000000000006B: 48 6B C0 FF        imul        rax,rax,0FFFFFFFFFFFFFFFFh
  000000000000006F: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000074: 48 8B 54 24 20     mov         rdx,qword ptr [rsp+20h]
  0000000000000079: 48 89 14 01        mov         qword ptr [rcx+rax],rdx
  000000000000007D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000082: 48 83 C4 48        add         rsp,48h
  0000000000000086: C3                 ret

??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z (unsigned __int64 __cdecl std::_Bit_cast<unsigned __int64,union std::error_category::_Addr_storage,0>(union std::error_category::_Addr_storage const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000015: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000019: 48 83 C4 18        add         rsp,18h
  000000000000001D: C3                 ret

??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<1,char const *>(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 58        sub         rsp,58h
  0000000000000013: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000022: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000027: 48 39 44 24 70     cmp         qword ptr [rsp+70h],rax
  000000000000002C: 76 06              jbe         0000000000000034
  000000000000002E: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000033: 90                 nop
  0000000000000034: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000039: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  000000000000003E: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000043: 48 8D 05 00 00 00  lea         rax,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  000000000000004A: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  000000000000004F: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000054: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000059: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000005E: E8 00 00 00 00     call        ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z
  0000000000000063: 90                 nop
  0000000000000064: 48 83 7C 24 70 0F  cmp         qword ptr [rsp+70h],0Fh
  000000000000006A: 77 66              ja          00000000000000D2
  000000000000006C: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000071: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000076: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  000000000000007A: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000007F: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000087: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000008C: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  0000000000000091: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000096: 48 8B C8           mov         rcx,rax
  0000000000000099: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000009E: 90                 nop
  000000000000009F: C6 44 24 21 00     mov         byte ptr [rsp+21h],0
  00000000000000A4: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000A9: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000AE: 48 03 C8           add         rcx,rax
  00000000000000B1: 48 8B C1           mov         rax,rcx
  00000000000000B4: 48 8D 54 24 21     lea         rdx,[rsp+21h]
  00000000000000B9: 48 8B C8           mov         rcx,rax
  00000000000000BC: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000C1: 90                 nop
  00000000000000C2: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000C7: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  00000000000000CC: 90                 nop
  00000000000000CD: E9 AD 00 00 00     jmp         000000000000017F
  00000000000000D2: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000D7: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  00000000000000DC: 4C 8B C0           mov         r8,rax
  00000000000000DF: BA 0F 00 00 00     mov         edx,0Fh
  00000000000000E4: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000E9: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  00000000000000EE: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000F3: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  00000000000000F8: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000FD: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  0000000000000102: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000107: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000010C: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  0000000000000111: 48 8B C8           mov         rcx,rax
  0000000000000114: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  0000000000000119: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000011E: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000123: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000127: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000012C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000131: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  0000000000000135: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000013A: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000013F: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  0000000000000144: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000149: 48 8B C8           mov         rcx,rax
  000000000000014C: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  0000000000000151: 90                 nop
  0000000000000152: C6 44 24 22 00     mov         byte ptr [rsp+22h],0
  0000000000000157: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000015C: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000161: 48 03 44 24 70     add         rax,qword ptr [rsp+70h]
  0000000000000166: 48 8D 54 24 22     lea         rdx,[rsp+22h]
  000000000000016B: 48 8B C8           mov         rcx,rax
  000000000000016E: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  0000000000000173: 90                 nop
  0000000000000174: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000179: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  000000000000017E: 90                 nop
  000000000000017F: 48 83 C4 58        add         rsp,58h
  0000000000000183: C3                 ret

??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<2,char const *>(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 68        sub         rsp,68h
  0000000000000013: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000022: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000027: 48 39 84 24 80 00  cmp         qword ptr [rsp+80h],rax
                    00 00
  000000000000002F: 76 06              jbe         0000000000000037
  0000000000000031: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000036: 90                 nop
  0000000000000037: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000003C: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000041: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000046: 48 8D 05 00 00 00  lea         rax,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  000000000000004D: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000052: 4C 8B 44 24 28     mov         r8,qword ptr [rsp+28h]
  0000000000000057: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  000000000000005C: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000061: E8 00 00 00 00     call        ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z
  0000000000000066: 90                 nop
  0000000000000067: 48 83 BC 24 80 00  cmp         qword ptr [rsp+80h],0Fh
                    00 00 0F
  0000000000000070: 77 47              ja          00000000000000B9
  0000000000000072: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000077: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  000000000000007F: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000083: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000088: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000090: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000095: 41 B8 10 00 00 00  mov         r8d,10h
  000000000000009B: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  00000000000000A0: 48 8B C8           mov         rcx,rax
  00000000000000A3: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  00000000000000A8: 90                 nop
  00000000000000A9: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000AE: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  00000000000000B3: 90                 nop
  00000000000000B4: E9 A4 00 00 00     jmp         000000000000015D
  00000000000000B9: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  00000000000000BE: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  00000000000000C3: 4C 8B C0           mov         r8,rax
  00000000000000C6: BA 0F 00 00 00     mov         edx,0Fh
  00000000000000CB: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000000D3: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  00000000000000D8: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  00000000000000DD: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  00000000000000E2: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000E7: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000EC: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  00000000000000F1: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000F6: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  00000000000000FB: 48 8B C8           mov         rcx,rax
  00000000000000FE: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  0000000000000103: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000108: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  0000000000000110: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000114: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000119: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000011E: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  0000000000000122: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000012A: 48 FF C0           inc         rax
  000000000000012D: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000132: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000137: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000013C: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000141: 4C 8B C1           mov         r8,rcx
  0000000000000144: 48 8B 54 24 78     mov         rdx,qword ptr [rsp+78h]
  0000000000000149: 48 8B C8           mov         rcx,rax
  000000000000014C: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  0000000000000151: 90                 nop
  0000000000000152: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000157: E8 00 00 00 00     call        ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ
  000000000000015C: 90                 nop
  000000000000015D: 48 83 C4 68        add         rsp,68h
  0000000000000161: C3                 ret

??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z (void __cdecl std::_Construct_in_place<char *,char * &>(char * &,char * &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000013: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: B9 08 00 00 00     mov         ecx,8
  0000000000000020: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  0000000000000025: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000002A: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002F: E8 00 00 00 00     call        ??$forward@AEAPEAD@std@@YAAEAPEADAEAPEAD@Z
  0000000000000034: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000039: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003C: 48 89 01           mov         qword ptr [rcx],rax
  000000000000003F: 48 83 C4 38        add         rsp,38h
  0000000000000043: C3                 ret

??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z (void __cdecl std::_Construct_in_place<char *,char * const &>(char * &,char * const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000013: E8 00 00 00 00     call        ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: B9 08 00 00 00     mov         ecx,8
  0000000000000020: E8 00 00 00 00     call        ??2@YAPEAX_KPEAX@Z
  0000000000000025: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000002A: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002F: E8 00 00 00 00     call        ??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z
  0000000000000034: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000039: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003C: 48 89 01           mov         qword ptr [rcx],rax
  000000000000003F: 48 83 C4 38        add         rsp,38h
  0000000000000043: C3                 ret

??$_Convert_size@_K_K@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Convert_size<unsigned __int64,unsigned __int64>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z (void __cdecl std::_Deallocate<16>(void *,unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 81 7C 24 38 00  cmp         qword ptr [rsp+38h],1000h
                    10 00 00
  0000000000000017: 72 10              jb          0000000000000029
  0000000000000019: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  000000000000001E: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  0000000000000023: E8 00 00 00 00     call        ?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
  0000000000000028: 90                 nop
  0000000000000029: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000002E: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000033: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000038: 90                 nop
  0000000000000039: 48 83 C4 28        add         rsp,28h
  000000000000003D: C3                 ret

??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z (void __cdecl std::_Destroy_in_place<char *>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??$_Get_size_of_n@$00@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Get_size_of_n<1>(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: C6 04 24 00        mov         byte ptr [rsp],0
  000000000000000D: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000012: 48 83 C4 18        add         rsp,18h
  0000000000000016: C3                 ret

??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ (class std::_Iostream_error_category2 const & __cdecl std::_Immortalize_memcpy_image<class std::_Iostream_error_category2>(void)):
  0000000000000000: 48 8D 05 00 00 00  lea         rax,[?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4U?$_Constexpr_immortalize_impl@V_Iostream_error_category2@std@@@1@A]
                    00
  0000000000000007: C3                 ret

??$_Max_limit@_J@std@@YA_JXZ (__int64 __cdecl std::_Max_limit<__int64>(void)):
  0000000000000000: 48 83 EC 18        sub         rsp,18h
  0000000000000004: 48 C7 04 24 FF FF  mov         qword ptr [rsp],0FFFFFFFFFFFFFFFFh
                    FF FF
  000000000000000C: 48 B8 FF FF FF FF  mov         rax,7FFFFFFFFFFFFFFFh
                    FF FF FF 7F
  0000000000000016: 48 83 C4 18        add         rsp,18h
  000000000000001A: C3                 ret

??$_Reallocate_grow_by@V<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@Z (private: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Reallocate_grow_by<class <lambda_65e615be2a453ca0576c979606f46740>,char const *,unsigned __int64>(unsigned __int64,class <lambda_65e615be2a453ca0576c979606f46740>,char const *,unsigned __int64)):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 81 EC 88 00 00  sub         rsp,88h
                    00
  000000000000001B: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  0000000000000023: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000028: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002D: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  0000000000000031: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000036: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000003E: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000043: 48 2B 44 24 38     sub         rax,qword ptr [rsp+38h]
  0000000000000048: 48 3B 84 24 98 00  cmp         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000050: 73 06              jae         0000000000000058
  0000000000000052: E8 00 00 00 00     call        ?_Xlen_string@std@@YAXXZ
  0000000000000057: 90                 nop
  0000000000000058: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000060: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000065: 48 03 C8           add         rcx,rax
  0000000000000068: 48 8B C1           mov         rax,rcx
  000000000000006B: 48 89 44 24 48     mov         qword ptr [rsp+48h],rax
  0000000000000070: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000075: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000079: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  000000000000007E: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000083: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000008B: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
  0000000000000090: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000095: 48 8B 8C 24 90 00  mov         rcx,qword ptr [rsp+90h]
                    00 00
  000000000000009D: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  00000000000000A2: 48 89 44 24 68     mov         qword ptr [rsp+68h],rax
  00000000000000A7: 48 8D 54 24 50     lea         rdx,[rsp+50h]
  00000000000000AC: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  00000000000000B1: E8 00 00 00 00     call        ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
  00000000000000B6: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  00000000000000BB: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000C0: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  00000000000000C5: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000CA: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000CF: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  00000000000000D3: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000D8: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  00000000000000DD: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  00000000000000E1: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000E6: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  00000000000000EB: 48 89 44 24 70     mov         qword ptr [rsp+70h],rax
  00000000000000F0: 48 83 7C 24 58 0F  cmp         qword ptr [rsp+58h],0Fh
  00000000000000F6: 76 6E              jbe         0000000000000166
  00000000000000F8: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000000FD: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000100: 48 89 44 24 60     mov         qword ptr [rsp+60h],rax
  0000000000000105: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  000000000000010A: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  000000000000010F: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000117: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  000000000000011C: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000124: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000129: 4C 8B 4C 24 38     mov         r9,qword ptr [rsp+38h]
  000000000000012E: 4C 8B C0           mov         r8,rax
  0000000000000131: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000136: 48 8D 8C 24 A0 00  lea         rcx,[rsp+0A0h]
                    00 00
  000000000000013E: E8 00 00 00 00     call        ??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z
  0000000000000143: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  0000000000000148: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  000000000000014D: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  0000000000000152: E8 00 00 00 00     call        ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
  0000000000000157: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000015C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000161: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000164: EB 4C              jmp         00000000000001B2
  0000000000000166: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000016B: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000173: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000178: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000180: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000185: 4C 8B 4C 24 38     mov         r9,qword ptr [rsp+38h]
  000000000000018A: 4C 8B C0           mov         r8,rax
  000000000000018D: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000192: 48 8D 8C 24 A0 00  lea         rcx,[rsp+0A0h]
                    00 00
  000000000000019A: E8 00 00 00 00     call        ??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z
  000000000000019F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  00000000000001A4: 48 8D 54 24 40     lea         rdx,[rsp+40h]
  00000000000001A9: 48 8B C8           mov         rcx,rax
  00000000000001AC: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
  00000000000001B1: 90                 nop
  00000000000001B2: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  00000000000001BA: 48 81 C4 88 00 00  add         rsp,88h
                    00
  00000000000001C1: C3                 ret

??$_Unfancy@D@std@@YAPEADPEAD@Z (char * __cdecl std::_Unfancy<char>(char *)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z (char * * __cdecl std::addressof<char *>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z (class std::_String_val<struct std::_Simple_types<char> > * __cdecl std::addressof<class std::_String_val<struct std::_Simple_types<char> > >(class std::_String_val<struct std::_Simple_types<char> > &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$addressof@V?$basic_ostream@DU?$char_traits@D@std@@@std@@@std@@YAPEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z (class std::basic_ostream<char,struct std::char_traits<char> > * __cdecl std::addressof<class std::basic_ostream<char,struct std::char_traits<char> > >(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$forward@AEAPEAD@std@@YAAEAPEADAEAPEAD@Z (char * & __cdecl std::forward<char * &>(char * &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z (char * const & __cdecl std::forward<char * const &>(char * const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z (class std::allocator<char> && __cdecl std::forward<class std::allocator<char> >(class std::allocator<char> &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??$max@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::max<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000013: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000018: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000001B: 48 39 08           cmp         qword ptr [rax],rcx
  000000000000001E: 73 0B              jae         000000000000002B
  0000000000000020: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000025: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000029: EB 09              jmp         0000000000000034
  000000000000002B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000030: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000034: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000038: 48 89 44 24 08     mov         qword ptr [rsp+8],rax
  000000000000003D: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000042: 48 83 C4 18        add         rsp,18h
  0000000000000046: C3                 ret

??$min@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::min<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000013: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000018: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000001B: 48 39 08           cmp         qword ptr [rax],rcx
  000000000000001E: 73 0B              jae         000000000000002B
  0000000000000020: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000025: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000029: EB 09              jmp         0000000000000034
  000000000000002B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000030: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000034: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000038: 48 89 44 24 08     mov         qword ptr [rsp+8],rax
  000000000000003D: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000042: 48 83 C4 18        add         rsp,18h
  0000000000000046: C3                 ret

??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z (class std::allocator<char> && __cdecl std::move<class std::allocator<char> &>(class std::allocator<char> &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_String_val<struct std::_Simple_types<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001B: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 C7 40 18 00 00  mov         qword ptr [rax+18h],0
                    00 00
  0000000000000030: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000035: 48 83 C4 28        add         rsp,28h
  0000000000000039: C3                 ret

??0?$allocator@D@std@@QEAA@XZ (public: __cdecl std::allocator<char>::allocator<char>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &&)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000013: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z
  0000000000000020: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000025: 4C 8B C0           mov         r8,rax
  0000000000000028: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000002D: E8 00 00 00 00     call        ??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
  0000000000000032: 90                 nop
  0000000000000033: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000038: 48 8D 15 00 00 00  lea         rdx,[?_Fake_alloc@std@@3U_Fake_allocator@1@B]
                    00
  000000000000003F: 48 8B C8           mov         rcx,rax
  0000000000000042: E8 00 00 00 00     call        ?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z
  0000000000000047: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000004C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000051: E8 00 00 00 00     call        ?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
  0000000000000056: 90                 nop
  0000000000000057: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000005C: 48 83 C4 38        add         rsp,38h
  0000000000000060: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000013: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000020: E8 00 00 00 00     call        ?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z
  0000000000000025: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000002A: 4C 8B C0           mov         r8,rax
  000000000000002D: 0F B6 54 24 21     movzx       edx,byte ptr [rsp+21h]
  0000000000000032: E8 00 00 00 00     call        ??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
  0000000000000037: 90                 nop
  0000000000000038: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000003D: 48 8B C8           mov         rcx,rax
  0000000000000040: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  0000000000000045: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000004A: 4C 8B 41 10        mov         r8,qword ptr [rcx+10h]
  000000000000004E: 48 8B D0           mov         rdx,rax
  0000000000000051: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000056: E8 00 00 00 00     call        ??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  000000000000005B: 90                 nop
  000000000000005C: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000061: 48 83 C4 38        add         rsp,38h
  0000000000000065: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  0000000000000020: 90                 nop
  0000000000000021: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000026: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  000000000000002B: 48 8B C8           mov         rcx,rax
  000000000000002E: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000033: 4C 8B C0           mov         r8,rax
  0000000000000036: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000003B: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000040: E8 00 00 00 00     call        ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  0000000000000045: 90                 nop
  0000000000000046: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004B: 48 83 C4 38        add         rsp,38h
  000000000000004F: C3                 ret

??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 0F B6 54 24 20     movzx       edx,byte ptr [rsp+20h]
  000000000000001D: 48 8B C8           mov         rcx,rax
  0000000000000020: E8 00 00 00 00     call        ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
  0000000000000025: 90                 nop
  0000000000000026: 4C 8B 44 24 50     mov         r8,qword ptr [rsp+50h]
  000000000000002B: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000030: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000035: E8 00 00 00 00     call        ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
  000000000000003A: 90                 nop
  000000000000003B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000040: 48 83 C4 38        add         rsp,38h
  0000000000000044: C3                 ret

??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Bxty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 57                 push        rdi
  0000000000000006: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000000B: 48 8B 7C 24 10     mov         rdi,qword ptr [rsp+10h]
  0000000000000010: 33 C0              xor         eax,eax
  0000000000000012: B9 10 00 00 00     mov         ecx,10h
  0000000000000017: F3 AA              rep stos    byte ptr [rdi]
  0000000000000019: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000001E: 5F                 pop         rdi
  000000000000001F: C3                 ret

??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z (public: __cdecl std::_Fake_proxy_ptr_impl::_Fake_proxy_ptr_impl(struct std::_Fake_allocator const &,struct std::_Container_base0 const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000014: C3                 ret

??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::_Sentry_base(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000018: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001B: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000020: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000023: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000028: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000002D: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000030: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000034: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000039: 48 03 C8           add         rcx,rax
  000000000000003C: 48 8B C1           mov         rax,rcx
  000000000000003F: 48 8B C8           mov         rcx,rax
  0000000000000042: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000047: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000004C: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000052: 74 11              je          0000000000000065
  0000000000000054: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000059: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005C: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000061: FF 50 08           call        qword ptr [rax+8]
  0000000000000064: 90                 nop
  0000000000000065: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000006A: 48 83 C4 38        add         rsp,38h
  000000000000006E: C3                 ret

??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (protected: __cdecl std::_System_error::_System_error(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 81 EC 98 00 00  sub         rsp,98h
                    00
  0000000000000018: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001F: 48 33 C4           xor         rax,rsp
  0000000000000022: 48 89 84 24 80 00  mov         qword ptr [rsp+80h],rax
                    00 00
  000000000000002A: 48 8D 44 24 40     lea         rax,[rsp+40h]
  000000000000002F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000034: 48 8B 94 24 C0 00  mov         rdx,qword ptr [rsp+0C0h]
                    00 00
  000000000000003C: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000041: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z
  0000000000000046: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000004B: 48 8B F9           mov         rdi,rcx
  000000000000004E: 48 8B B4 24 B8 00  mov         rsi,qword ptr [rsp+0B8h]
                    00 00
  0000000000000056: B9 10 00 00 00     mov         ecx,10h
  000000000000005B: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  000000000000005D: 4C 8B C0           mov         r8,rax
  0000000000000060: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  0000000000000065: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  000000000000006A: E8 00 00 00 00     call        ?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z
  000000000000006F: 48 8B D0           mov         rdx,rax
  0000000000000072: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  000000000000007A: E8 00 00 00 00     call        ??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
  000000000000007F: 48 8D 4C 24 60     lea         rcx,[rsp+60h]
  0000000000000084: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000089: 90                 nop
  000000000000008A: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  0000000000000092: 48 8D 0D 00 00 00  lea         rcx,[??_7_System_error@std@@6B@]
                    00
  0000000000000099: 48 89 08           mov         qword ptr [rax],rcx
  000000000000009C: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  00000000000000A4: 48 8D 78 18        lea         rdi,[rax+18h]
  00000000000000A8: 48 8B B4 24 B8 00  mov         rsi,qword ptr [rsp+0B8h]
                    00 00
  00000000000000B0: B9 10 00 00 00     mov         ecx,10h
  00000000000000B5: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  00000000000000B7: 48 8B 84 24 B0 00  mov         rax,qword ptr [rsp+0B0h]
                    00 00
  00000000000000BF: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  00000000000000C7: 48 33 CC           xor         rcx,rsp
  00000000000000CA: E8 00 00 00 00     call        __security_check_cookie
  00000000000000CF: 48 81 C4 98 00 00  add         rsp,98h
                    00
  00000000000000D6: 5F                 pop         rdi
  00000000000000D7: 5E                 pop         rsi
  00000000000000D8: C3                 ret

??0_System_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::_System_error::_System_error(class std::_System_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 56                 push        rsi
  000000000000000B: 57                 push        rdi
  000000000000000C: 48 83 EC 28        sub         rsp,28h
  0000000000000010: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000015: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000001A: E8 00 00 00 00     call        ??0runtime_error@std@@QEAA@AEBV01@@Z
  000000000000001F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000024: 48 8D 0D 00 00 00  lea         rcx,[??_7_System_error@std@@6B@]
                    00
  000000000000002B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000033: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000038: 48 8D 78 18        lea         rdi,[rax+18h]
  000000000000003C: 48 8D 71 18        lea         rsi,[rcx+18h]
  0000000000000040: B9 10 00 00 00     mov         ecx,10h
  0000000000000045: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000047: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000004C: 48 83 C4 28        add         rsp,28h
  0000000000000050: 5F                 pop         rdi
  0000000000000051: 5E                 pop         rsi
  0000000000000052: C3                 ret

??0bad_alloc@std@@AEAA@QEBD@Z (private: __cdecl std::bad_alloc::bad_alloc(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 41 B8 01 00 00 00  mov         r8d,1
  0000000000000014: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000019: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001E: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBDH@Z
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_alloc@std@@6B@]
                    00
  000000000000002F: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??0bad_alloc@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_alloc::bad_alloc(class std::bad_alloc const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_alloc@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0bad_array_new_length@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_array_new_length::bad_array_new_length(class std::bad_array_new_length const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0bad_alloc@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0bad_array_new_length@std@@QEAA@XZ (public: __cdecl std::bad_array_new_length::bad_array_new_length(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8D 15 00 00 00  lea         rdx,[??_C@_0BF@KINCDENJ@bad?5array?5new?5length@]
                    00
  0000000000000010: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000015: E8 00 00 00 00     call        ??0bad_alloc@std@@AEAA@QEBD@Z
  000000000000001A: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001F: 48 8D 0D 00 00 00  lea         rcx,[??_7bad_array_new_length@std@@6B@]
                    00
  0000000000000026: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000029: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002E: 48 83 C4 28        add         rsp,28h
  0000000000000032: C3                 ret

??0error_code@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_code::error_code(int,class std::error_category const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000013: 8B 4C 24 10        mov         ecx,dword ptr [rsp+10h]
  0000000000000017: 89 08              mov         dword ptr [rax],ecx
  0000000000000019: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000001E: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  0000000000000023: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000027: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000002C: C3                 ret

??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_condition::error_condition(int,class std::error_category const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  0000000000000013: 8B 4C 24 10        mov         ecx,dword ptr [rsp+10h]
  0000000000000017: 89 08              mov         dword ptr [rax],ecx
  0000000000000019: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000001E: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  0000000000000023: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000027: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000002C: C3                 ret

??0exception@std@@QEAA@AEBV01@@Z (public: __cdecl std::exception::exception(class std::exception const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 57                 push        rdi
  000000000000000B: 48 83 EC 20        sub         rsp,20h
  000000000000000F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000014: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000023: 48 83 C0 08        add         rax,8
  0000000000000027: 48 8B F8           mov         rdi,rax
  000000000000002A: 33 C0              xor         eax,eax
  000000000000002C: B9 10 00 00 00     mov         ecx,10h
  0000000000000031: F3 AA              rep stos    byte ptr [rdi]
  0000000000000033: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000038: 48 83 C0 08        add         rax,8
  000000000000003C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000041: 48 83 C1 08        add         rcx,8
  0000000000000045: 48 8B D0           mov         rdx,rax
  0000000000000048: E8 00 00 00 00     call        __std_exception_copy
  000000000000004D: 90                 nop
  000000000000004E: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000053: 48 83 C4 20        add         rsp,20h
  0000000000000057: 5F                 pop         rdi
  0000000000000058: C3                 ret

??0exception@std@@QEAA@QEBD@Z (public: __cdecl std::exception::exception(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 57                 push        rdi
  000000000000000B: 48 83 EC 30        sub         rsp,30h
  000000000000000F: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000014: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001B: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000023: 48 83 C0 08        add         rax,8
  0000000000000027: 48 8B F8           mov         rdi,rax
  000000000000002A: 33 C0              xor         eax,eax
  000000000000002C: B9 10 00 00 00     mov         ecx,10h
  0000000000000031: F3 AA              rep stos    byte ptr [rdi]
  0000000000000033: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000038: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003D: C6 44 24 28 01     mov         byte ptr [rsp+28h],1
  0000000000000042: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000047: 48 83 C0 08        add         rax,8
  000000000000004B: 48 8B D0           mov         rdx,rax
  000000000000004E: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000053: E8 00 00 00 00     call        __std_exception_copy
  0000000000000058: 90                 nop
  0000000000000059: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000005E: 48 83 C4 30        add         rsp,30h
  0000000000000062: 5F                 pop         rdi
  0000000000000063: C3                 ret

??0exception@std@@QEAA@QEBDH@Z (public: __cdecl std::exception::exception(char const * const,int)):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 57                 push        rdi
  0000000000000010: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000015: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  000000000000001C: 48 89 08           mov         qword ptr [rax],rcx
  000000000000001F: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000024: 48 83 C0 08        add         rax,8
  0000000000000028: 48 8B F8           mov         rdi,rax
  000000000000002B: 33 C0              xor         eax,eax
  000000000000002D: B9 10 00 00 00     mov         ecx,10h
  0000000000000032: F3 AA              rep stos    byte ptr [rdi]
  0000000000000034: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000039: 48 8B 4C 24 18     mov         rcx,qword ptr [rsp+18h]
  000000000000003E: 48 89 48 08        mov         qword ptr [rax+8],rcx
  0000000000000042: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  0000000000000047: 5F                 pop         rdi
  0000000000000048: C3                 ret

??0failure@ios_base@std@@QEAA@AEBV012@@Z (public: __cdecl std::ios_base::failure::failure(class std::ios_base::failure const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0system_error@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7failure@ios_base@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z (public: __cdecl std::ios_base::failure::failure(char const *,class std::error_code const &)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 83 EC 38        sub         rsp,38h
  0000000000000015: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000000000001A: 48 8B F8           mov         rdi,rax
  000000000000001D: 48 8B 74 24 60     mov         rsi,qword ptr [rsp+60h]
  0000000000000022: B9 10 00 00 00     mov         ecx,10h
  0000000000000027: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  0000000000000029: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  000000000000002E: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000033: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000038: E8 00 00 00 00     call        ??0system_error@std@@QEAA@Verror_code@1@PEBD@Z
  000000000000003D: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000042: 48 8D 0D 00 00 00  lea         rcx,[??_7failure@ios_base@std@@6B@]
                    00
  0000000000000049: 48 89 08           mov         qword ptr [rax],rcx
  000000000000004C: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000051: 48 83 C4 38        add         rsp,38h
  0000000000000055: 5F                 pop         rdi
  0000000000000056: 5E                 pop         rsi
  0000000000000057: C3                 ret

??0runtime_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::runtime_error::runtime_error(class std::runtime_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0exception@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7runtime_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (public: __cdecl std::runtime_error::runtime_error(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000020: E8 00 00 00 00     call        ??0exception@std@@QEAA@QEBD@Z
  0000000000000025: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002A: 48 8D 0D 00 00 00  lea         rcx,[??_7runtime_error@std@@6B@]
                    00
  0000000000000031: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000034: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000039: 48 83 C4 28        add         rsp,28h
  000000000000003D: C3                 ret

??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::sentry(class std::basic_ostream<char,struct std::char_traits<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  000000000000001D: 90                 nop
  000000000000001E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000023: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000026: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000002A: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  000000000000002F: 48 03 C8           add         rcx,rax
  0000000000000032: 48 8B C1           mov         rax,rcx
  0000000000000035: 48 8B C8           mov         rcx,rax
  0000000000000038: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  000000000000003D: 0F B6 C0           movzx       eax,al
  0000000000000040: 85 C0              test        eax,eax
  0000000000000042: 75 0B              jne         000000000000004F
  0000000000000044: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000049: C6 40 08 00        mov         byte ptr [rax+8],0
  000000000000004D: EB 79              jmp         00000000000000C8
  000000000000004F: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000054: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000057: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000005B: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000060: 48 03 C8           add         rcx,rax
  0000000000000063: 48 8B C1           mov         rax,rcx
  0000000000000066: 48 8B C8           mov         rcx,rax
  0000000000000069: E8 00 00 00 00     call        ?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ
  000000000000006E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000073: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000079: 74 11              je          000000000000008C
  000000000000007B: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000080: E8 00 00 00 00     call        ??$addressof@V?$basic_ostream@DU?$char_traits@D@std@@@std@@@std@@YAPEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z
  0000000000000085: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  000000000000008A: 75 0B              jne         0000000000000097
  000000000000008C: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000091: C6 40 08 01        mov         byte ptr [rax+8],1
  0000000000000095: EB 31              jmp         00000000000000C8
  0000000000000097: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000009C: E8 00 00 00 00     call        ?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
  00000000000000A1: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  00000000000000A6: 48 8B 00           mov         rax,qword ptr [rax]
  00000000000000A9: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  00000000000000AD: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  00000000000000B2: 48 03 C8           add         rcx,rax
  00000000000000B5: 48 8B C1           mov         rax,rcx
  00000000000000B8: 48 8B C8           mov         rcx,rax
  00000000000000BB: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  00000000000000C0: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000C5: 88 41 08           mov         byte ptr [rcx+8],al
  00000000000000C8: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  00000000000000CD: 48 83 C4 38        add         rsp,38h
  00000000000000D1: C3                 ret

??0system_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::system_error::system_error(class std::system_error const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: E8 00 00 00 00     call        ??0_System_error@std@@QEAA@AEBV01@@Z
  000000000000001D: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000022: 48 8D 0D 00 00 00  lea         rcx,[??_7system_error@std@@6B@]
                    00
  0000000000000029: 48 89 08           mov         qword ptr [rax],rcx
  000000000000002C: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

??0system_error@std@@QEAA@Verror_code@1@PEBD@Z (public: __cdecl std::system_error::system_error(class std::error_code,char const *)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 56                 push        rsi
  0000000000000010: 57                 push        rdi
  0000000000000011: 48 83 EC 68        sub         rsp,68h
  0000000000000015: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001C: 48 33 C4           xor         rax,rsp
  000000000000001F: 48 89 44 24 50     mov         qword ptr [rsp+50h],rax
  0000000000000024: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  000000000000002C: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  0000000000000031: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  0000000000000036: 48 8D 44 24 20     lea         rax,[rsp+20h]
  000000000000003B: 48 8B F8           mov         rdi,rax
  000000000000003E: 48 8B B4 24 88 00  mov         rsi,qword ptr [rsp+88h]
                    00 00
  0000000000000046: B9 10 00 00 00     mov         ecx,10h
  000000000000004B: F3 A4              rep movs    byte ptr [rdi],byte ptr [rsi]
  000000000000004D: 4C 8D 44 24 30     lea         r8,[rsp+30h]
  0000000000000052: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000057: 48 8B 8C 24 80 00  mov         rcx,qword ptr [rsp+80h]
                    00 00
  000000000000005F: E8 00 00 00 00     call        ??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
  0000000000000064: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  0000000000000069: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000006E: 90                 nop
  000000000000006F: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000077: 48 8D 0D 00 00 00  lea         rcx,[??_7system_error@std@@6B@]
                    00
  000000000000007E: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000081: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  0000000000000089: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000008E: 48 33 CC           xor         rcx,rsp
  0000000000000091: E8 00 00 00 00     call        __security_check_cookie
  0000000000000096: 48 83 C4 68        add         rsp,68h
  000000000000009A: 5F                 pop         rdi
  000000000000009B: 5E                 pop         rsi
  000000000000009C: C3                 ret

??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::~_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 90                 nop
  0000000000000017: 48 83 C4 28        add         rsp,28h
  000000000000001B: C3                 ret

??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::~_String_val<struct std::_Simple_types<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
  0000000000000016: 90                 nop
  0000000000000017: 48 83 C4 28        add         rsp,28h
  000000000000001B: C3                 ret

??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::~basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
  0000000000000013: 90                 nop
  0000000000000014: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000019: 48 8B C8           mov         rcx,rax
  000000000000001C: E8 00 00 00 00     call        ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
  0000000000000021: 90                 nop
  0000000000000022: 48 83 C4 28        add         rsp,28h
  0000000000000026: C3                 ret

??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::~_Bxty(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??1_Iostream_error_category2@std@@UEAA@XZ (public: virtual __cdecl std::_Iostream_error_category2::~_Iostream_error_category2(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1error_category@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::~_Sentry_base(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000016: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000001B: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001E: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000022: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000027: 48 03 C8           add         rcx,rax
  000000000000002A: 48 8B C1           mov         rax,rcx
  000000000000002D: 48 8B C8           mov         rcx,rax
  0000000000000030: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000035: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000003A: 48 83 7C 24 20 00  cmp         qword ptr [rsp+20h],0
  0000000000000040: 74 11              je          0000000000000053
  0000000000000042: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000047: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000004A: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000004F: FF 50 10           call        qword ptr [rax+10h]
  0000000000000052: 90                 nop
  0000000000000053: 48 83 C4 38        add         rsp,38h
  0000000000000057: C3                 ret

??1_System_error@std@@UEAA@XZ (public: virtual __cdecl std::_System_error::~_System_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1runtime_error@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1bad_alloc@std@@UEAA@XZ (public: virtual __cdecl std::bad_alloc::~bad_alloc(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1bad_array_new_length@std@@UEAA@XZ (public: virtual __cdecl std::bad_array_new_length::~bad_array_new_length(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1bad_alloc@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1error_category@std@@UEAA@XZ (public: virtual __cdecl std::error_category::~error_category(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

??1exception@std@@UEAA@XZ (public: virtual __cdecl std::exception::~exception(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8D 0D 00 00 00  lea         rcx,[??_7exception@std@@6B@]
                    00
  0000000000000015: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000018: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000001D: 48 83 C0 08        add         rax,8
  0000000000000021: 48 8B C8           mov         rcx,rax
  0000000000000024: E8 00 00 00 00     call        __std_exception_destroy
  0000000000000029: 90                 nop
  000000000000002A: 48 83 C4 28        add         rsp,28h
  000000000000002E: C3                 ret

??1failure@ios_base@std@@UEAA@XZ (public: virtual __cdecl std::ios_base::failure::~failure(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1system_error@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1runtime_error@std@@UEAA@XZ (public: virtual __cdecl std::runtime_error::~runtime_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::~sentry(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: E8 00 00 00 00     call        ?uncaught_exception@std@@YA_NXZ
  000000000000000E: 0F B6 C0           movzx       eax,al
  0000000000000011: 85 C0              test        eax,eax
  0000000000000013: 75 07              jne         000000000000001C
  0000000000000015: C6 44 24 20 01     mov         byte ptr [rsp+20h],1
  000000000000001A: EB 05              jmp         0000000000000021
  000000000000001C: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000021: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000026: 88 44 24 21        mov         byte ptr [rsp+21h],al
  000000000000002A: 0F B6 44 24 21     movzx       eax,byte ptr [rsp+21h]
  000000000000002F: 85 C0              test        eax,eax
  0000000000000031: 74 0E              je          0000000000000041
  0000000000000033: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000038: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000003B: E8 00 00 00 00     call        ?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
  0000000000000040: 90                 nop
  0000000000000041: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000046: E8 00 00 00 00     call        ??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  000000000000004B: 90                 nop
  000000000000004C: 48 83 C4 38        add         rsp,38h
  0000000000000050: C3                 ret

??1system_error@std@@UEAA@XZ (public: virtual __cdecl std::system_error::~system_error(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??1_System_error@std@@UEAA@XZ
  0000000000000013: 90                 nop
  0000000000000014: 48 83 C4 28        add         rsp,28h
  0000000000000018: C3                 ret

??2@YAPEAX_KPEAX@Z (void * __cdecl operator new(unsigned __int64,void *)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 10     mov         rax,qword ptr [rsp+10h]
  000000000000000F: C3                 ret

??8error_category@std@@QEBA_NAEBV01@@Z (public: bool __cdecl std::error_category::operator==(class std::error_category const &)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000013: 48 83 C0 08        add         rax,8
  0000000000000017: 48 8B C8           mov         rcx,rax
  000000000000001A: E8 00 00 00 00     call        ??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
  000000000000001F: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000024: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000029: 48 83 C1 08        add         rcx,8
  000000000000002D: E8 00 00 00 00     call        ??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
  0000000000000032: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000037: 48 3B C8           cmp         rcx,rax
  000000000000003A: 75 0A              jne         0000000000000046
  000000000000003C: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  0000000000000044: EB 08              jmp         000000000000004E
  0000000000000046: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000004E: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000053: 48 83 C4 38        add         rsp,38h
  0000000000000057: C3                 ret

??8std@@YA_NAEBVerror_condition@0@0@Z (bool __cdecl std::operator==(class std::error_condition const &,class std::error_condition const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000013: E8 00 00 00 00     call        ?category@error_condition@std@@QEBAAEBVerror_category@2@XZ
  0000000000000018: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000001D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000022: E8 00 00 00 00     call        ?category@error_condition@std@@QEBAAEBVerror_category@2@XZ
  0000000000000027: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000002C: 48 8B D1           mov         rdx,rcx
  000000000000002F: 48 8B C8           mov         rcx,rax
  0000000000000032: E8 00 00 00 00     call        ??8error_category@std@@QEBA_NAEBV01@@Z
  0000000000000037: 0F B6 C0           movzx       eax,al
  000000000000003A: 85 C0              test        eax,eax
  000000000000003C: 74 2A              je          0000000000000068
  000000000000003E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000043: E8 00 00 00 00     call        ?value@error_condition@std@@QEBAHXZ
  0000000000000048: 89 44 24 24        mov         dword ptr [rsp+24h],eax
  000000000000004C: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000051: E8 00 00 00 00     call        ?value@error_condition@std@@QEBAHXZ
  0000000000000056: 8B 4C 24 24        mov         ecx,dword ptr [rsp+24h]
  000000000000005A: 3B C8              cmp         ecx,eax
  000000000000005C: 75 0A              jne         0000000000000068
  000000000000005E: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  0000000000000066: EB 08              jmp         0000000000000070
  0000000000000068: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000070: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000075: 48 83 C4 38        add         rsp,38h
  0000000000000079: C3                 ret

??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::operator bool(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 0F B6 40 08        movzx       eax,byte ptr [rax+8]
  000000000000000E: C3                 ret

??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z (public: __cdecl <lambda_65e615be2a453ca0576c979606f46740>::operator()(char * const,char const * const,unsigned __int64,char const * const,unsigned __int64)const ):
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 4C 8B 44 24 58     mov         r8,qword ptr [rsp+58h]
  000000000000001D: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  0000000000000022: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000027: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000002C: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000031: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000036: 48 03 C8           add         rcx,rax
  0000000000000039: 48 8B C1           mov         rax,rcx
  000000000000003C: 4C 8B 44 24 68     mov         r8,qword ptr [rsp+68h]
  0000000000000041: 48 8B 54 24 60     mov         rdx,qword ptr [rsp+60h]
  0000000000000046: 48 8B C8           mov         rcx,rax
  0000000000000049: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000004E: 90                 nop
  000000000000004F: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000054: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000059: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000005E: 48 03 C8           add         rcx,rax
  0000000000000061: 48 8B C1           mov         rax,rcx
  0000000000000064: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000069: 48 03 C8           add         rcx,rax
  000000000000006C: 48 8B C1           mov         rax,rcx
  000000000000006F: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000074: 48 8B C8           mov         rcx,rax
  0000000000000077: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  000000000000007C: 90                 nop
  000000000000007D: 48 83 C4 38        add         rsp,38h
  0000000000000081: C3                 ret

??_G_Iostream_error_category2@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_Iostream_error_category2::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1_Iostream_error_category2@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 10 00 00 00     mov         edx,10h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_G_System_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_System_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1_System_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 28 00 00 00     mov         edx,28h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gbad_alloc@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_alloc::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1bad_alloc@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gbad_array_new_length@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_array_new_length::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1bad_array_new_length@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gexception@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::exception::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1exception@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gfailure@ios_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::ios_base::failure::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1failure@ios_base@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 28 00 00 00     mov         edx,28h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gruntime_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::runtime_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1runtime_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 18 00 00 00     mov         edx,18h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

??_Gsystem_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::system_error::`scalar deleting destructor'(unsigned int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000012: E8 00 00 00 00     call        ??1system_error@std@@UEAA@XZ
  0000000000000017: 8B 44 24 38        mov         eax,dword ptr [rsp+38h]
  000000000000001B: 83 E0 01           and         eax,1
  000000000000001E: 85 C0              test        eax,eax
  0000000000000020: 74 10              je          0000000000000032
  0000000000000022: BA 28 00 00 00     mov         edx,28h
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ??3@YAXPEAX_K@Z
  0000000000000031: 90                 nop
  0000000000000032: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000037: 48 83 C4 28        add         rsp,28h
  000000000000003B: C3                 ret

?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Activate_SSO_buffer(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z (void __cdecl std::_Adjust_manually_vector_aligned(void * &,unsigned __int64 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 48        sub         rsp,48h
  000000000000000E: 48 8B 44 24 58     mov         rax,qword ptr [rsp+58h]
  0000000000000013: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000016: 48 83 C0 27        add         rax,27h
  000000000000001A: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000001F: 48 89 01           mov         qword ptr [rcx],rax
  0000000000000022: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000027: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002A: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000002F: B8 08 00 00 00     mov         eax,8
  0000000000000034: 48 6B C0 FF        imul        rax,rax,0FFFFFFFFFFFFFFFFh
  0000000000000038: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000003D: 48 8B 04 01        mov         rax,qword ptr [rcx+rax]
  0000000000000041: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000046: 48 C7 44 24 38 08  mov         qword ptr [rsp+38h],8
                    00 00 00
  000000000000004F: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000054: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000059: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005C: 48 2B C1           sub         rax,rcx
  000000000000005F: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000064: 48 83 7C 24 20 08  cmp         qword ptr [rsp+20h],8
  000000000000006A: 72 0A              jb          0000000000000076
  000000000000006C: 48 83 7C 24 20 27  cmp         qword ptr [rsp+20h],27h
  0000000000000072: 77 02              ja          0000000000000076
  0000000000000074: EB 0C              jmp         0000000000000082
  0000000000000076: E8 00 00 00 00     call        _invalid_parameter_noinfo_noreturn
  000000000000007B: 90                 nop
  000000000000007C: 33 C0              xor         eax,eax
  000000000000007E: 85 C0              test        eax,eax
  0000000000000080: 75 F4              jne         0000000000000076
  0000000000000082: 33 C0              xor         eax,eax
  0000000000000084: 85 C0              test        eax,eax
  0000000000000086: 75 DC              jne         0000000000000064
  0000000000000088: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000008D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000092: 48 89 08           mov         qword ptr [rax],rcx
  0000000000000095: 48 83 C4 48        add         rsp,48h
  0000000000000099: C3                 ret

?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z (public: void __cdecl std::_Container_base0::_Alloc_proxy(struct std::_Fake_allocator const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z (public: static void * __cdecl std::_Default_allocate_traits::_Allocate(unsigned __int64)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        ??2@YAPEAX_K@Z
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z (private: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000013: E8 00 00 00 00     call        ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
  0000000000000018: 4C 8B C0           mov         r8,rax
  000000000000001B: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000020: 48 8B 50 18        mov         rdx,qword ptr [rax+18h]
  0000000000000024: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000029: E8 00 00 00 00     call        ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
  000000000000002E: 48 83 C4 28        add         rsp,28h
  0000000000000032: C3                 ret

?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z (private: static unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64,unsigned __int64,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 83 C8 0F        or          rax,0Fh
  000000000000001C: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000021: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000026: 48 39 44 24 20     cmp         qword ptr [rsp+20h],rax
  000000000000002B: 76 07              jbe         0000000000000034
  000000000000002D: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  0000000000000032: EB 59              jmp         000000000000008D
  0000000000000034: 33 D2              xor         edx,edx
  0000000000000036: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000003B: B9 02 00 00 00     mov         ecx,2
  0000000000000040: 48 F7 F1           div         rax,rcx
  0000000000000043: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000048: 48 2B C8           sub         rcx,rax
  000000000000004B: 48 8B C1           mov         rax,rcx
  000000000000004E: 48 39 44 24 48     cmp         qword ptr [rsp+48h],rax
  0000000000000053: 76 07              jbe         000000000000005C
  0000000000000055: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000005A: EB 31              jmp         000000000000008D
  000000000000005C: 33 D2              xor         edx,edx
  000000000000005E: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000063: B9 02 00 00 00     mov         ecx,2
  0000000000000068: 48 F7 F1           div         rax,rcx
  000000000000006B: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000070: 48 03 C8           add         rcx,rax
  0000000000000073: 48 8B C1           mov         rax,rcx
  0000000000000076: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000007B: 48 8D 54 24 28     lea         rdx,[rsp+28h]
  0000000000000080: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000085: E8 00 00 00 00     call        ??$max@_K@std@@YAAEB_KAEB_K0@Z
  000000000000008A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000008D: 48 83 C4 38        add         rsp,38h
  0000000000000091: C3                 ret

?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z (private: static void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Deallocate_for_capacity(class std::allocator<char> &,char * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000018: 48 FF C0           inc         rax
  000000000000001B: 4C 8B C0           mov         r8,rax
  000000000000001E: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000023: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000028: E8 00 00 00 00     call        ?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z
  000000000000002D: 90                 nop
  000000000000002E: 48 83 C4 28        add         rsp,28h
  0000000000000032: C3                 ret

?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ (public: class std::allocator<char> & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ (public: class std::allocator<char> const & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: C3                 ret

?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ (private: class std::allocator<char> & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ (private: class std::allocator<char> const & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ (public: bool __cdecl std::_String_val<struct std::_Simple_types<char> >::_Large_mode_engaged(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 18 0F     cmp         qword ptr [rax+18h],0Fh
  0000000000000013: 76 09              jbe         000000000000001E
  0000000000000015: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001C: EB 07              jmp         0000000000000025
  000000000000001E: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000025: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  0000000000000029: 48 83 C4 18        add         rsp,18h
  000000000000002D: C3                 ret

?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z (private: static class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_System_error::_Makestr(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 58        sub         rsp,58h
  0000000000000013: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000001A: 48 33 C4           xor         rax,rsp
  000000000000001D: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000022: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000027: E8 00 00 00 00     call        ?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ
  000000000000002C: 0F B6 C0           movzx       eax,al
  000000000000002F: 85 C0              test        eax,eax
  0000000000000031: 75 12              jne         0000000000000045
  0000000000000033: 48 8D 15 00 00 00  lea         rdx,[??_C@_02LMMGGCAJ@?3?5@]
                    00
  000000000000003A: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000003F: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
  0000000000000044: 90                 nop
  0000000000000045: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000004A: 48 8B 4C 24 68     mov         rcx,qword ptr [rsp+68h]
  000000000000004F: E8 00 00 00 00     call        ?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ
  0000000000000054: 48 8B D0           mov         rdx,rax
  0000000000000057: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  000000000000005C: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z
  0000000000000061: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000066: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  000000000000006B: 90                 nop
  000000000000006C: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  0000000000000071: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000076: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
  000000000000007B: 48 8B 4C 24 70     mov         rcx,qword ptr [rsp+70h]
  0000000000000080: E8 00 00 00 00     call        ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
  0000000000000085: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  000000000000008A: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000008F: 48 33 CC           xor         rcx,rsp
  0000000000000092: E8 00 00 00 00     call        __security_check_cookie
  0000000000000097: 48 83 C4 58        add         rsp,58h
  000000000000009B: C3                 ret

?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ (public: char * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  000000000000001D: 0F B6 C0           movzx       eax,al
  0000000000000020: 85 C0              test        eax,eax
  0000000000000022: 74 12              je          0000000000000036
  0000000000000024: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000029: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000002C: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000031: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000036: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003B: 48 83 C4 38        add         rsp,38h
  000000000000003F: C3                 ret

?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ (public: char const * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  000000000000000E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000013: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000018: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  000000000000001D: 0F B6 C0           movzx       eax,al
  0000000000000020: 85 C0              test        eax,eax
  0000000000000022: 74 12              je          0000000000000036
  0000000000000024: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000029: 48 8B 08           mov         rcx,qword ptr [rax]
  000000000000002C: E8 00 00 00 00     call        ??$_Unfancy@D@std@@YAPEADPEAD@Z
  0000000000000031: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000036: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000003B: 48 83 C4 38        add         rsp,38h
  000000000000003F: C3                 ret

?_Orphan_all@_Container_base0@std@@QEAAXXZ (public: void __cdecl std::_Container_base0::_Orphan_all(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ (public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000015: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001A: 48 03 C8           add         rcx,rax
  000000000000001D: 48 8B C1           mov         rax,rcx
  0000000000000020: 48 8B C8           mov         rcx,rax
  0000000000000023: E8 00 00 00 00     call        ?good@ios_base@std@@QEBA_NXZ
  0000000000000028: 0F B6 C0           movzx       eax,al
  000000000000002B: 85 C0              test        eax,eax
  000000000000002D: 74 7A              je          00000000000000A9
  000000000000002F: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000034: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000037: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000003B: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000040: 48 03 C8           add         rcx,rax
  0000000000000043: 48 8B C1           mov         rax,rcx
  0000000000000046: 48 8B C8           mov         rcx,rax
  0000000000000049: E8 00 00 00 00     call        ?flags@ios_base@std@@QEBAHXZ
  000000000000004E: 83 E0 02           and         eax,2
  0000000000000051: 85 C0              test        eax,eax
  0000000000000053: 74 54              je          00000000000000A9
  0000000000000055: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000005A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000005D: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000061: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000066: 48 03 C8           add         rcx,rax
  0000000000000069: 48 8B C1           mov         rax,rcx
  000000000000006C: 48 8B C8           mov         rcx,rax
  000000000000006F: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000074: 48 8B C8           mov         rcx,rax
  0000000000000077: E8 00 00 00 00     call        ?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
  000000000000007C: 83 F8 FF           cmp         eax,0FFFFFFFFh
  000000000000007F: 75 28              jne         00000000000000A9
  0000000000000081: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000086: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000089: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  000000000000008D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000092: 48 03 C8           add         rcx,rax
  0000000000000095: 48 8B C1           mov         rax,rcx
  0000000000000098: 45 33 C0           xor         r8d,r8d
  000000000000009B: BA 04 00 00 00     mov         edx,4
  00000000000000A0: 48 8B C8           mov         rcx,rax
  00000000000000A3: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000000A8: 90                 nop
  00000000000000A9: EB 00              jmp         $LN9
$LN9:
  00000000000000AB: 48 83 C4 28        add         rsp,28h
  00000000000000AF: C3                 ret

?catch$0@?0??_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ@4HA (int `public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void)'::`1'::catch$0):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ$0:
  000000000000000D: 48 8D 05 00 00 00  lea         rax,[$LN9]
                    00
  0000000000000014: 48 83 C4 20        add         rsp,20h
  0000000000000018: 5D                 pop         rbp
  0000000000000019: C3                 ret
  000000000000001A: CC                 int         3

?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ (protected: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pnavail(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  0000000000000012: 48 83 38 00        cmp         qword ptr [rax],0
  0000000000000016: 74 10              je          0000000000000028
  0000000000000018: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001D: 48 8B 40 58        mov         rax,qword ptr [rax+58h]
  0000000000000021: 8B 00              mov         eax,dword ptr [rax]
  0000000000000023: 89 04 24           mov         dword ptr [rsp],eax
  0000000000000026: EB 07              jmp         000000000000002F
  0000000000000028: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  000000000000002F: 48 63 04 24        movsxd      rax,dword ptr [rsp]
  0000000000000033: 48 83 C4 18        add         rsp,18h
  0000000000000037: C3                 ret

?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ (protected: char * __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pninc(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 8B 40 58        mov         rax,qword ptr [rax+58h]
  0000000000000012: 8B 00              mov         eax,dword ptr [rax]
  0000000000000014: FF C8              dec         eax
  0000000000000016: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000001B: 48 8B 49 58        mov         rcx,qword ptr [rcx+58h]
  000000000000001F: 89 01              mov         dword ptr [rcx],eax
  0000000000000021: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000026: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  000000000000002A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000002D: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000031: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000036: 48 8B 40 40        mov         rax,qword ptr [rax+40h]
  000000000000003A: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003D: 48 FF C0           inc         rax
  0000000000000040: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000045: 48 8B 49 40        mov         rcx,qword ptr [rcx+40h]
  0000000000000049: 48 89 01           mov         qword ptr [rcx],rax
  000000000000004C: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000050: 48 83 C4 18        add         rsp,18h
  0000000000000054: C3                 ret

?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ (public: void __cdecl std::_Fake_proxy_ptr_impl::_Release(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: C3                 ret

?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Swap_proxy_and_iterators(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000013: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000018: 48 8B D0           mov         rdx,rax
  000000000000001B: E8 00 00 00 00     call        ?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z
  0000000000000020: 90                 nop
  0000000000000021: 48 83 C4 28        add         rsp,28h
  0000000000000025: C3                 ret

?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z (public: void __cdecl std::_Container_base0::_Swap_proxy_and_iterators(struct std::_Container_base0 &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: C3                 ret

?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Switch_to_buf(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z
  0000000000000016: 90                 nop
  0000000000000017: 48 83 C4 28        add         rsp,28h
  000000000000001B: C3                 ret

?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Take_contents(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 58        sub         rsp,58h
  000000000000000E: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000013: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000018: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000027: 48 8B C8           mov         rcx,rax
  000000000000002A: E8 00 00 00 00     call        ??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z
  000000000000002F: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000034: 48 8B 44 24 68     mov         rax,qword ptr [rsp+68h]
  0000000000000039: 48 8B C8           mov         rcx,rax
  000000000000003C: E8 00 00 00 00     call        ??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z
  0000000000000041: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000046: 41 B8 20 00 00 00  mov         r8d,20h
  000000000000004C: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000051: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000056: E8 00 00 00 00     call        memcpy
  000000000000005B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000060: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000068: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006D: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000075: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000007A: E8 00 00 00 00     call        ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  000000000000007F: 90                 nop
  0000000000000080: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000085: B8 01 00 00 00     mov         eax,1
  000000000000008A: 48 6B C0 00        imul        rax,rax,0
  000000000000008E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000093: 48 03 C8           add         rcx,rax
  0000000000000096: 48 8B C1           mov         rax,rcx
  0000000000000099: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000009E: 48 8B C8           mov         rcx,rax
  00000000000000A1: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000A6: 90                 nop
  00000000000000A7: E9 EA 00 00 00     jmp         0000000000000196
  00000000000000AC: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000B1: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  00000000000000B6: 0F B6 C0           movzx       eax,al
  00000000000000B9: 85 C0              test        eax,eax
  00000000000000BB: 74 31              je          00000000000000EE
  00000000000000BD: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  00000000000000C2: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000C7: E8 00 00 00 00     call        ?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
  00000000000000CC: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000D1: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000D6: 48 8B D0           mov         rdx,rax
  00000000000000D9: E8 00 00 00 00     call        ??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z
  00000000000000DE: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  00000000000000E3: 48 8B C8           mov         rcx,rax
  00000000000000E6: E8 00 00 00 00     call        ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  00000000000000EB: 90                 nop
  00000000000000EC: EB 43              jmp         0000000000000131
  00000000000000EE: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  00000000000000F3: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  00000000000000F8: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  00000000000000FD: E8 00 00 00 00     call        ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  0000000000000102: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000107: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000010B: 48 FF C0           inc         rax
  000000000000010E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000113: 48 8B 54 24 30     mov         rdx,qword ptr [rsp+30h]
  0000000000000118: 48 89 54 24 48     mov         qword ptr [rsp+48h],rdx
  000000000000011D: 4C 8B C0           mov         r8,rax
  0000000000000120: 48 8B D1           mov         rdx,rcx
  0000000000000123: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  0000000000000128: 48 8B C8           mov         rcx,rax
  000000000000012B: E8 00 00 00 00     call        ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  0000000000000130: 90                 nop
  0000000000000131: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000136: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000013B: 48 8B 49 18        mov         rcx,qword ptr [rcx+18h]
  000000000000013F: 48 89 48 18        mov         qword ptr [rax+18h],rcx
  0000000000000143: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000148: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  000000000000014D: 48 8B 49 10        mov         rcx,qword ptr [rcx+10h]
  0000000000000151: 48 89 48 10        mov         qword ptr [rax+10h],rcx
  0000000000000155: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000015A: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000162: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000167: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  000000000000016F: C6 44 24 21 00     mov         byte ptr [rsp+21h],0
  0000000000000174: B8 01 00 00 00     mov         eax,1
  0000000000000179: 48 6B C0 00        imul        rax,rax,0
  000000000000017D: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000182: 48 03 C8           add         rcx,rax
  0000000000000185: 48 8B C1           mov         rax,rcx
  0000000000000188: 48 8D 54 24 21     lea         rdx,[rsp+21h]
  000000000000018D: 48 8B C8           mov         rcx,rax
  0000000000000190: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  0000000000000195: 90                 nop
  0000000000000196: 48 83 C4 58        add         rsp,58h
  000000000000019A: C3                 ret

?_Throw_bad_array_new_length@std@@YAXXZ (void __cdecl std::_Throw_bad_array_new_length(void)):
  0000000000000000: 48 83 EC 48        sub         rsp,48h
  0000000000000004: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  0000000000000009: E8 00 00 00 00     call        ??0bad_array_new_length@std@@QEAA@XZ
  000000000000000E: 48 8D 15 00 00 00  lea         rdx,[_TI3?AVbad_array_new_length@std@@]
                    00
  0000000000000015: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  000000000000001A: E8 00 00 00 00     call        _CxxThrowException
  000000000000001F: 90                 nop
  0000000000000020: 48 83 C4 48        add         rsp,48h
  0000000000000024: C3                 ret

?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Tidy_deallocate(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000013: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000018: E8 00 00 00 00     call        ?_Orphan_all@_Container_base0@std@@QEAAXXZ
  000000000000001D: 90                 nop
  000000000000001E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000023: E8 00 00 00 00     call        ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
  0000000000000028: 0F B6 C0           movzx       eax,al
  000000000000002B: 85 C0              test        eax,eax
  000000000000002D: 74 38              je          0000000000000067
  000000000000002F: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  0000000000000034: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
  0000000000000039: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000003E: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000043: 4C 8B 40 18        mov         r8,qword ptr [rax+18h]
  0000000000000047: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000004C: 48 8B 10           mov         rdx,qword ptr [rax]
  000000000000004F: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000054: E8 00 00 00 00     call        ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
  0000000000000059: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000005E: 48 8B C8           mov         rcx,rax
  0000000000000061: E8 00 00 00 00     call        ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
  0000000000000066: 90                 nop
  0000000000000067: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  000000000000006C: 48 C7 40 10 00 00  mov         qword ptr [rax+10h],0
                    00 00
  0000000000000074: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000079: 48 C7 40 18 0F 00  mov         qword ptr [rax+18h],0Fh
                    00 00
  0000000000000081: C6 44 24 20 00     mov         byte ptr [rsp+20h],0
  0000000000000086: B8 01 00 00 00     mov         eax,1
  000000000000008B: 48 6B C0 00        imul        rax,rax,0
  000000000000008F: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000094: 48 03 C8           add         rcx,rax
  0000000000000097: 48 8B C1           mov         rax,rcx
  000000000000009A: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000009F: 48 8B C8           mov         rcx,rax
  00000000000000A2: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000A7: 90                 nop
  00000000000000A8: 48 83 C4 48        add         rsp,48h
  00000000000000AC: C3                 ret

?_Xlen_string@std@@YAXXZ (void __cdecl std::_Xlen_string(void)):
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: 48 8D 0D 00 00 00  lea         rcx,[??_C@_0BA@JFNIOLAK@string?5too?5long@]
                    00
  000000000000000B: E8 00 00 00 00     call        ?_Xlength_error@std@@YAXPEBD@Z
  0000000000000010: 90                 nop
  0000000000000011: 48 83 C4 28        add         rsp,28h
  0000000000000015: C3                 ret

?allocate@?$allocator@D@std@@QEAAPEAD_K@Z (public: char * __cdecl std::allocator<char>::allocate(unsigned __int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ??$_Get_size_of_n@$00@std@@YA_K_K@Z
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
  0000000000000020: 48 83 C4 28        add         rsp,28h
  0000000000000024: C3                 ret

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  0000000000000013: 48 8B C8           mov         rcx,rax
  0000000000000016: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  000000000000001B: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000020: 4C 8B 41 10        mov         r8,qword ptr [rcx+10h]
  0000000000000024: 48 8B D0           mov         rdx,rax
  0000000000000027: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002C: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
  0000000000000031: 48 83 C4 28        add         rsp,28h
  0000000000000035: C3                 ret

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 28        sub         rsp,28h
  000000000000000E: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000013: E8 00 00 00 00     call        ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
  0000000000000018: 48 8B C8           mov         rcx,rax
  000000000000001B: E8 00 00 00 00     call        ??$_Convert_size@_K_K@std@@YA_K_K@Z
  0000000000000020: 4C 8B C0           mov         r8,rax
  0000000000000023: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000028: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002D: E8 00 00 00 00     call        ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
  0000000000000032: 48 83 C4 28        add         rsp,28h
  0000000000000036: C3                 ret

?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 57                 push        rdi
  0000000000000010: 48 83 EC 50        sub         rsp,50h
  0000000000000014: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000019: 48 8B 40 10        mov         rax,qword ptr [rax+10h]
  000000000000001D: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000022: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  0000000000000027: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000002C: 48 8B 40 18        mov         rax,qword ptr [rax+18h]
  0000000000000030: 48 2B C1           sub         rax,rcx
  0000000000000033: 48 39 44 24 70     cmp         qword ptr [rsp+70h],rax
  0000000000000038: 0F 87 83 00 00 00  ja          00000000000000C1
  000000000000003E: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000043: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000048: 48 03 C8           add         rcx,rax
  000000000000004B: 48 8B C1           mov         rax,rcx
  000000000000004E: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  0000000000000053: 48 89 41 10        mov         qword ptr [rcx+10h],rax
  0000000000000057: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  000000000000005C: 48 8B C8           mov         rcx,rax
  000000000000005F: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
  0000000000000064: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000069: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000006E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000073: 48 03 C8           add         rcx,rax
  0000000000000076: 48 8B C1           mov         rax,rcx
  0000000000000079: 4C 8B 44 24 70     mov         r8,qword ptr [rsp+70h]
  000000000000007E: 48 8B 54 24 68     mov         rdx,qword ptr [rsp+68h]
  0000000000000083: 48 8B C8           mov         rcx,rax
  0000000000000086: E8 00 00 00 00     call        ?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
  000000000000008B: 90                 nop
  000000000000008C: C6 44 24 30 00     mov         byte ptr [rsp+30h],0
  0000000000000091: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  0000000000000096: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000009B: 48 03 C8           add         rcx,rax
  000000000000009E: 48 8B C1           mov         rax,rcx
  00000000000000A1: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  00000000000000A6: 48 03 C8           add         rcx,rax
  00000000000000A9: 48 8B C1           mov         rax,rcx
  00000000000000AC: 48 8D 54 24 30     lea         rdx,[rsp+30h]
  00000000000000B1: 48 8B C8           mov         rcx,rax
  00000000000000B4: E8 00 00 00 00     call        ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z
  00000000000000B9: 90                 nop
  00000000000000BA: 48 8B 44 24 60     mov         rax,qword ptr [rsp+60h]
  00000000000000BF: EB 35              jmp         00000000000000F6
  00000000000000C1: 48 8D 44 24 31     lea         rax,[rsp+31h]
  00000000000000C6: 48 8B F8           mov         rdi,rax
  00000000000000C9: 33 C0              xor         eax,eax
  00000000000000CB: B9 01 00 00 00     mov         ecx,1
  00000000000000D0: F3 AA              rep stos    byte ptr [rdi]
  00000000000000D2: 48 8B 44 24 70     mov         rax,qword ptr [rsp+70h]
  00000000000000D7: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  00000000000000DC: 4C 8B 4C 24 68     mov         r9,qword ptr [rsp+68h]
  00000000000000E1: 44 0F B6 44 24 31  movzx       r8d,byte ptr [rsp+31h]
  00000000000000E7: 48 8B 54 24 70     mov         rdx,qword ptr [rsp+70h]
  00000000000000EC: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  00000000000000F1: E8 00 00 00 00     call        ??$_Reallocate_grow_by@V<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@Z
  00000000000000F6: 48 83 C4 50        add         rsp,50h
  00000000000000FA: 5F                 pop         rdi
  00000000000000FB: C3                 ret

?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z (public: static void __cdecl std::_Narrow_char_traits<char,int>::assign(char &,char const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000F: 48 8B 4C 24 10     mov         rcx,qword ptr [rsp+10h]
  0000000000000014: 0F B6 09           movzx       ecx,byte ptr [rcx]
  0000000000000017: 88 08              mov         byte ptr [rax],cl
  0000000000000019: C3                 ret

?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ (public: char const * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::c_str(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B C8           mov         rcx,rax
  0000000000000011: E8 00 00 00 00     call        ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
  0000000000000016: 48 83 C4 28        add         rsp,28h
  000000000000001A: C3                 ret

?category@error_code@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_code::category(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000000E: C3                 ret

?category@error_condition@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_condition::category(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000000E: C3                 ret

?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::clear(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 38        sub         rsp,38h
  0000000000000012: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000017: 48 83 78 48 00     cmp         qword ptr [rax+48h],0
  000000000000001C: 74 0A              je          0000000000000028
  000000000000001E: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000026: EB 08              jmp         0000000000000030
  0000000000000028: C7 44 24 20 04 00  mov         dword ptr [rsp+20h],4
                    00 00
  0000000000000030: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000034: 8B 4C 24 48        mov         ecx,dword ptr [rsp+48h]
  0000000000000038: 0B C8              or          ecx,eax
  000000000000003A: 8B C1              mov         eax,ecx
  000000000000003C: 44 0F B6 44 24 50  movzx       r8d,byte ptr [rsp+50h]
  0000000000000042: 8B D0              mov         edx,eax
  0000000000000044: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000049: E8 00 00 00 00     call        ?clear@ios_base@std@@QEAAXH_N@Z
  000000000000004E: 90                 nop
  000000000000004F: 48 83 C4 38        add         rsp,38h
  0000000000000053: C3                 ret

?clear@ios_base@std@@QEAAXH_N@Z (public: void __cdecl std::ios_base::clear(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 78        sub         rsp,78h
  0000000000000012: 8B 84 24 88 00 00  mov         eax,dword ptr [rsp+88h]
                    00
  0000000000000019: 83 E0 17           and         eax,17h
  000000000000001C: 89 84 24 88 00 00  mov         dword ptr [rsp+88h],eax
                    00
  0000000000000023: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000002B: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  0000000000000032: 89 48 10           mov         dword ptr [rax+10h],ecx
  0000000000000035: 48 8B 84 24 80 00  mov         rax,qword ptr [rsp+80h]
                    00 00
  000000000000003D: 8B 40 14           mov         eax,dword ptr [rax+14h]
  0000000000000040: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  0000000000000047: 23 C8              and         ecx,eax
  0000000000000049: 8B C1              mov         eax,ecx
  000000000000004B: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000004F: 83 7C 24 20 00     cmp         dword ptr [rsp+20h],0
  0000000000000054: 0F 84 87 00 00 00  je          00000000000000E1
  000000000000005A: 0F B6 84 24 90 00  movzx       eax,byte ptr [rsp+90h]
                    00 00
  0000000000000062: 85 C0              test        eax,eax
  0000000000000064: 74 0A              je          0000000000000070
  0000000000000066: 33 D2              xor         edx,edx
  0000000000000068: 33 C9              xor         ecx,ecx
  000000000000006A: E8 00 00 00 00     call        _CxxThrowException
  000000000000006F: 90                 nop
  0000000000000070: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000074: 83 E0 04           and         eax,4
  0000000000000077: 85 C0              test        eax,eax
  0000000000000079: 74 0E              je          0000000000000089
  000000000000007B: 48 8D 05 00 00 00  lea         rax,[??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set@]
                    00
  0000000000000082: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000087: EB 25              jmp         00000000000000AE
  0000000000000089: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000008D: 83 E0 02           and         eax,2
  0000000000000090: 85 C0              test        eax,eax
  0000000000000092: 74 0E              je          00000000000000A2
  0000000000000094: 48 8D 05 00 00 00  lea         rax,[??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set@]
                    00
  000000000000009B: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000A0: EB 0C              jmp         00000000000000AE
  00000000000000A2: 48 8D 05 00 00 00  lea         rax,[??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set@]
                    00
  00000000000000A9: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000000AE: BA 01 00 00 00     mov         edx,1
  00000000000000B3: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  00000000000000B8: E8 00 00 00 00     call        ?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z
  00000000000000BD: 4C 8B C0           mov         r8,rax
  00000000000000C0: 48 8B 54 24 28     mov         rdx,qword ptr [rsp+28h]
  00000000000000C5: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000CA: E8 00 00 00 00     call        ??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z
  00000000000000CF: 48 8D 15 00 00 00  lea         rdx,[_TI5?AVfailure@ios_base@std@@]
                    00
  00000000000000D6: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  00000000000000DB: E8 00 00 00 00     call        _CxxThrowException
  00000000000000E0: 90                 nop
  00000000000000E1: 48 83 C4 78        add         rsp,78h
  00000000000000E5: C3                 ret

?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::copy(char * const,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 4C 8B 44 24 40     mov         r8,qword ptr [rsp+40h]
  0000000000000018: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000001D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000022: E8 00 00 00 00     call        memcpy
  0000000000000027: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002C: 48 83 C4 28        add         rsp,28h
  0000000000000030: C3                 ret

?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z (public: void __cdecl std::allocator<char>::deallocate(char * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000018: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  000000000000001D: E8 00 00 00 00     call        ??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z
  0000000000000022: 90                 nop
  0000000000000023: 48 83 C4 28        add         rsp,28h
  0000000000000027: C3                 ret

?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z (public: virtual class std::error_condition __cdecl std::error_category::default_error_condition(int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 4C 8B 44 24 30     mov         r8,qword ptr [rsp+30h]
  0000000000000018: 8B 54 24 40        mov         edx,dword ptr [rsp+40h]
  000000000000001C: 48 8B 4C 24 38     mov         rcx,qword ptr [rsp+38h]
  0000000000000021: E8 00 00 00 00     call        ??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z
  0000000000000026: 48 8B 44 24 38     mov         rax,qword ptr [rsp+38h]
  000000000000002B: 48 83 C4 28        add         rsp,28h
  000000000000002F: C3                 ret

?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ (public: bool __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::empty(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 10 00     cmp         qword ptr [rax+10h],0
  0000000000000013: 75 09              jne         000000000000001E
  0000000000000015: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001C: EB 07              jmp         0000000000000025
  000000000000001E: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000025: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  0000000000000029: 48 83 C4 18        add         rsp,18h
  000000000000002D: C3                 ret

?eof@?$_Narrow_char_traits@DH@std@@SAHXZ (public: static int __cdecl std::_Narrow_char_traits<char,int>::eof(void)):
  0000000000000000: B8 FF FF FF FF     mov         eax,0FFFFFFFFh
  0000000000000005: C3                 ret

?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z (public: static bool __cdecl std::_Narrow_char_traits<char,int>::eq_int_type(int,int)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 89 4C 24 08        mov         dword ptr [rsp+8],ecx
  0000000000000008: 48 83 EC 18        sub         rsp,18h
  000000000000000C: 8B 44 24 28        mov         eax,dword ptr [rsp+28h]
  0000000000000010: 39 44 24 20        cmp         dword ptr [rsp+20h],eax
  0000000000000014: 75 09              jne         000000000000001F
  0000000000000016: C7 04 24 01 00 00  mov         dword ptr [rsp],1
                    00
  000000000000001D: EB 07              jmp         0000000000000026
  000000000000001F: C7 04 24 00 00 00  mov         dword ptr [rsp],0
                    00
  0000000000000026: 0F B6 04 24        movzx       eax,byte ptr [rsp]
  000000000000002A: 48 83 C4 18        add         rsp,18h
  000000000000002E: C3                 ret

?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z (public: virtual bool __cdecl std::error_category::equivalent(class std::error_code const &,int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000018: E8 00 00 00 00     call        ?category@error_code@std@@QEBAAEBVerror_category@2@XZ
  000000000000001D: 48 8B D0           mov         rdx,rax
  0000000000000020: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000025: E8 00 00 00 00     call        ??8error_category@std@@QEBA_NAEBV01@@Z
  000000000000002A: 0F B6 C0           movzx       eax,al
  000000000000002D: 85 C0              test        eax,eax
  000000000000002F: 74 1A              je          000000000000004B
  0000000000000031: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000036: E8 00 00 00 00     call        ?value@error_code@std@@QEBAHXZ
  000000000000003B: 3B 44 24 50        cmp         eax,dword ptr [rsp+50h]
  000000000000003F: 75 0A              jne         000000000000004B
  0000000000000041: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  0000000000000049: EB 08              jmp         0000000000000053
  000000000000004B: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000053: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  0000000000000058: 48 83 C4 38        add         rsp,38h
  000000000000005C: C3                 ret

?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z (public: virtual bool __cdecl std::error_category::equivalent(int,class std::error_condition const &)const ):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 38        sub         rsp,38h
  0000000000000012: 48 8B 44 24 40     mov         rax,qword ptr [rsp+40h]
  0000000000000017: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001A: 44 8B 44 24 48     mov         r8d,dword ptr [rsp+48h]
  000000000000001F: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  0000000000000024: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000029: FF 50 18           call        qword ptr [rax+18h]
  000000000000002C: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  0000000000000031: 48 8B C8           mov         rcx,rax
  0000000000000034: E8 00 00 00 00     call        ??8std@@YA_NAEBVerror_condition@0@0@Z
  0000000000000039: 48 83 C4 38        add         rsp,38h
  000000000000003D: C3                 ret

?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ (public: char __cdecl std::basic_ios<char,struct std::char_traits<char> >::fill(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 0F B6 40 58        movzx       eax,byte ptr [rax+58h]
  000000000000000E: C3                 ret

?flags@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::flags(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 40 18           mov         eax,dword ptr [rax+18h]
  000000000000000D: C3                 ret

?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 48        sub         rsp,48h
  0000000000000009: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000015: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000001A: 48 03 C8           add         rcx,rax
  000000000000001D: 48 8B C1           mov         rax,rcx
  0000000000000020: 48 8B C8           mov         rcx,rax
  0000000000000023: E8 00 00 00 00     call        ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ
  0000000000000028: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  000000000000002D: 48 83 7C 24 28 00  cmp         qword ptr [rsp+28h],0
  0000000000000033: 74 77              je          00000000000000AC
  0000000000000035: 48 8B 54 24 50     mov         rdx,qword ptr [rsp+50h]
  000000000000003A: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000003F: E8 00 00 00 00     call        ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
  0000000000000044: 90                 nop
  0000000000000045: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  000000000000004A: E8 00 00 00 00     call        ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ
  000000000000004F: 0F B6 C0           movzx       eax,al
  0000000000000052: 85 C0              test        eax,eax
  0000000000000054: 74 4B              je          00000000000000A1
  0000000000000056: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  000000000000005E: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000063: E8 00 00 00 00     call        ?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
  0000000000000068: 83 F8 FF           cmp         eax,0FFFFFFFFh
  000000000000006B: 75 0B              jne         0000000000000078
  000000000000006D: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000071: 83 C8 04           or          eax,4
  0000000000000074: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000078: EB 00              jmp         $LN10
$LN10:
  000000000000007A: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  000000000000007F: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000082: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000086: 48 8B 4C 24 50     mov         rcx,qword ptr [rsp+50h]
  000000000000008B: 48 03 C8           add         rcx,rax
  000000000000008E: 48 8B C1           mov         rax,rcx
  0000000000000091: 45 33 C0           xor         r8d,r8d
  0000000000000094: 8B 54 24 20        mov         edx,dword ptr [rsp+20h]
  0000000000000098: 48 8B C8           mov         rcx,rax
  000000000000009B: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  00000000000000A0: 90                 nop
  00000000000000A1: 48 8D 4C 24 30     lea         rcx,[rsp+30h]
  00000000000000A6: E8 00 00 00 00     call        ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
  00000000000000AB: 90                 nop
  00000000000000AC: 48 8B 44 24 50     mov         rax,qword ptr [rsp+50h]
  00000000000000B1: 48 83 C4 48        add         rsp,48h
  00000000000000B5: C3                 ret

?catch$0@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::flush & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)'::`1'::catch$0):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 55                 push        rbp
  0000000000000006: 48 83 EC 20        sub         rsp,20h
  000000000000000A: 48 8B EA           mov         rbp,rdx
__catch$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ$0:
  000000000000000D: 48 8B 45 50        mov         rax,qword ptr [rbp+50h]
  0000000000000011: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000014: 48 63 40 04        movsxd      rax,dword ptr [rax+4]
  0000000000000018: 48 8B 4D 50        mov         rcx,qword ptr [rbp+50h]
  000000000000001C: 48 03 C8           add         rcx,rax
  000000000000001F: 48 8B C1           mov         rax,rcx
  0000000000000022: 41 B0 01           mov         r8b,1
  0000000000000025: BA 04 00 00 00     mov         edx,4
  000000000000002A: 48 8B C8           mov         rcx,rax
  000000000000002D: E8 00 00 00 00     call        ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000032: 90                 nop
  0000000000000033: 48 8D 05 00 00 00  lea         rax,[$LN10]
                    00
  000000000000003A: 48 83 C4 20        add         rsp,20h
  000000000000003E: 5D                 pop         rbp
  000000000000003F: C3                 ret
  0000000000000040: CC                 int         3

?good@ios_base@std@@QEBA_NXZ (public: bool __cdecl std::ios_base::good(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 38        sub         rsp,38h
  0000000000000009: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000000E: E8 00 00 00 00     call        ?rdstate@ios_base@std@@QEBAHXZ
  0000000000000013: 85 C0              test        eax,eax
  0000000000000015: 75 0A              jne         0000000000000021
  0000000000000017: C7 44 24 20 01 00  mov         dword ptr [rsp+20h],1
                    00 00
  000000000000001F: EB 08              jmp         0000000000000029
  0000000000000021: C7 44 24 20 00 00  mov         dword ptr [rsp+20h],0
                    00 00
  0000000000000029: 0F B6 44 24 20     movzx       eax,byte ptr [rsp+20h]
  000000000000002E: 48 83 C4 38        add         rsp,38h
  0000000000000032: C3                 ret

?iostream_category@std@@YAAEBVerror_category@1@XZ (class std::error_category const & __cdecl std::iostream_category(void)):
  0000000000000000: 48 83 EC 28        sub         rsp,28h
  0000000000000004: E8 00 00 00 00     call        ??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ
  0000000000000009: 48 83 C4 28        add         rsp,28h
  000000000000000D: C3                 ret

?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z (public: static unsigned __int64 __cdecl std::_Narrow_char_traits<char,int>::length(char const * const)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        strlen
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z (class std::error_code __cdecl std::make_error_code(enum std::io_errc)):
  0000000000000000: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 28        sub         rsp,28h
  000000000000000D: E8 00 00 00 00     call        ?iostream_category@std@@YAAEBVerror_category@1@XZ
  0000000000000012: 4C 8B C0           mov         r8,rax
  0000000000000015: 8B 54 24 38        mov         edx,dword ptr [rsp+38h]
  0000000000000019: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000001E: E8 00 00 00 00     call        ??0error_code@std@@QEAA@HAEBVerror_category@1@@Z
  0000000000000023: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000028: 48 83 C4 28        add         rsp,28h
  000000000000002C: C3                 ret

?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z (public: static unsigned __int64 __cdecl std::_Default_allocator_traits<class std::allocator<char> >::max_size(class std::allocator<char> const &)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 C7 C0 FF FF FF  mov         rax,0FFFFFFFFFFFFFFFFh
                    FF
  000000000000000C: C3                 ret

?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ (public: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::max_size(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 58        sub         rsp,58h
  0000000000000009: 48 8B 4C 24 60     mov         rcx,qword ptr [rsp+60h]
  000000000000000E: E8 00 00 00 00     call        ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
  0000000000000013: 48 8B C8           mov         rcx,rax
  0000000000000016: E8 00 00 00 00     call        ?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z
  000000000000001B: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000020: 48 C7 44 24 20 10  mov         qword ptr [rsp+20h],10h
                    00 00 00
  0000000000000029: 48 8D 54 24 20     lea         rdx,[rsp+20h]
  000000000000002E: 48 8D 4C 24 28     lea         rcx,[rsp+28h]
  0000000000000033: E8 00 00 00 00     call        ??$max@_K@std@@YAAEB_KAEB_K0@Z
  0000000000000038: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000003B: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  0000000000000040: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000045: 48 FF C8           dec         rax
  0000000000000048: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  000000000000004D: E8 00 00 00 00     call        ??$_Max_limit@_J@std@@YA_JXZ
  0000000000000052: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000057: 48 8D 54 24 38     lea         rdx,[rsp+38h]
  000000000000005C: 48 8D 4C 24 40     lea         rcx,[rsp+40h]
  0000000000000061: E8 00 00 00 00     call        ??$min@_K@std@@YAAEB_KAEB_K0@Z
  0000000000000066: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000069: 48 83 C4 58        add         rsp,58h
  000000000000006D: C3                 ret

?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z (public: virtual class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Iostream_error_category2::message(int)const ):
  0000000000000000: 44 89 44 24 18     mov         dword ptr [rsp+18h],r8d
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 38        sub         rsp,38h
  0000000000000013: 83 7C 24 50 01     cmp         dword ptr [rsp+50h],1
  0000000000000018: 75 29              jne         0000000000000043
  000000000000001A: 48 C7 44 24 20 15  mov         qword ptr [rsp+20h],15h
                    00 00 00
  0000000000000023: 41 B8 15 00 00 00  mov         r8d,15h
  0000000000000029: 48 8D 15 00 00 00  lea         rdx,[?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB]
                    00
  0000000000000030: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000035: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z
  000000000000003A: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000003F: EB 1D              jmp         000000000000005E
  0000000000000041: EB 1B              jmp         000000000000005E
  0000000000000043: 8B 4C 24 50        mov         ecx,dword ptr [rsp+50h]
  0000000000000047: E8 00 00 00 00     call        ?_Syserror_map@std@@YAPEBDH@Z
  000000000000004C: 48 8B D0           mov         rdx,rax
  000000000000004F: 48 8B 4C 24 48     mov         rcx,qword ptr [rsp+48h]
  0000000000000054: E8 00 00 00 00     call        ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
  0000000000000059: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000005E: 48 83 C4 38        add         rsp,38h
  0000000000000062: C3                 ret

?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::error_code::message(void)const ):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 38        sub         rsp,38h
  000000000000000E: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000013: E8 00 00 00 00     call        ?category@error_code@std@@QEBAAEBVerror_category@2@XZ
  0000000000000018: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  000000000000001D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000022: E8 00 00 00 00     call        ?value@error_code@std@@QEBAHXZ
  0000000000000027: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  000000000000002C: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000002F: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000034: 44 8B C0           mov         r8d,eax
  0000000000000037: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000003C: 48 8B 4C 24 20     mov         rcx,qword ptr [rsp+20h]
  0000000000000041: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000046: FF 50 10           call        qword ptr [rax+10h]
  0000000000000049: 48 8B 44 24 48     mov         rax,qword ptr [rsp+48h]
  000000000000004E: 48 83 C4 38        add         rsp,38h
  0000000000000052: C3                 ret

?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::move(char * const,char const * const,unsigned __int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 4C 8B 44 24 40     mov         r8,qword ptr [rsp+40h]
  0000000000000018: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  000000000000001D: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000022: E8 00 00 00 00     call        memmove
  0000000000000027: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000002C: 48 83 C4 28        add         rsp,28h
  0000000000000030: C3                 ret

?name@_Iostream_error_category2@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::_Iostream_error_category2::name(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8D 05 00 00 00  lea         rax,[??_C@_08LLGCOLLL@iostream@]
                    00
  000000000000000C: C3                 ret

?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::pubsync(void)):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  000000000000000E: 48 8B 00           mov         rax,qword ptr [rax]
  0000000000000011: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000016: FF 50 68           call        qword ptr [rax+68h]
  0000000000000019: 48 83 C4 28        add         rsp,28h
  000000000000001D: C3                 ret

?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_streambuf<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::rdbuf(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 48        mov         rax,qword ptr [rax+48h]
  000000000000000E: C3                 ret

?rdstate@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::rdstate(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 40 10           mov         eax,dword ptr [rax+10h]
  000000000000000D: C3                 ret

?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z (public: static class std::allocator<char> __cdecl std::_Default_allocator_traits<class std::allocator<char> >::select_on_container_copy_construction(class std::allocator<char> const &)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000F: C3                 ret

?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::setstate(int,bool)):
  0000000000000000: 44 88 44 24 18     mov         byte ptr [rsp+18h],r8b
  0000000000000005: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  0000000000000009: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000E: 48 83 EC 28        sub         rsp,28h
  0000000000000012: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  0000000000000017: E8 00 00 00 00     call        ?rdstate@ios_base@std@@QEBAHXZ
  000000000000001C: 0B 44 24 38        or          eax,dword ptr [rsp+38h]
  0000000000000020: 44 0F B6 44 24 40  movzx       r8d,byte ptr [rsp+40h]
  0000000000000026: 8B D0              mov         edx,eax
  0000000000000028: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002D: E8 00 00 00 00     call        ?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
  0000000000000032: 90                 nop
  0000000000000033: 48 83 C4 28        add         rsp,28h
  0000000000000037: C3                 ret

?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputc(char)):
  0000000000000000: 88 54 24 10        mov         byte ptr [rsp+10h],dl
  0000000000000004: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000009: 48 83 EC 38        sub         rsp,38h
  000000000000000D: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000012: E8 00 00 00 00     call        ?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ
  0000000000000017: 48 85 C0           test        rax,rax
  000000000000001A: 7E 21              jle         000000000000003D
  000000000000001C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000021: E8 00 00 00 00     call        ?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ
  0000000000000026: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  000000000000002B: 88 08              mov         byte ptr [rax],cl
  000000000000002D: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  0000000000000032: E8 00 00 00 00     call        ?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z
  0000000000000037: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000003B: EB 2A              jmp         0000000000000067
  000000000000003D: 0F B6 4C 24 48     movzx       ecx,byte ptr [rsp+48h]
  0000000000000042: E8 00 00 00 00     call        ?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z
  0000000000000047: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000004C: 48 8B 09           mov         rcx,qword ptr [rcx]
  000000000000004F: 48 89 4C 24 28     mov         qword ptr [rsp+28h],rcx
  0000000000000054: 8B D0              mov         edx,eax
  0000000000000056: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  000000000000005B: 48 8B 44 24 28     mov         rax,qword ptr [rsp+28h]
  0000000000000060: FF 50 18           call        qword ptr [rax+18h]
  0000000000000063: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000067: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000006B: 48 83 C4 38        add         rsp,38h
  000000000000006F: C3                 ret

?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z (public: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputn(char const *,__int64)):
  0000000000000000: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000F: 48 83 EC 28        sub         rsp,28h
  0000000000000013: 48 8B 44 24 30     mov         rax,qword ptr [rsp+30h]
  0000000000000018: 48 8B 00           mov         rax,qword ptr [rax]
  000000000000001B: 4C 8B 44 24 40     mov         r8,qword ptr [rsp+40h]
  0000000000000020: 48 8B 54 24 38     mov         rdx,qword ptr [rsp+38h]
  0000000000000025: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000002A: FF 50 48           call        qword ptr [rax+48h]
  000000000000002D: 48 83 C4 28        add         rsp,28h
  0000000000000031: C3                 ret

?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::tie(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 50        mov         rax,qword ptr [rax+50h]
  000000000000000E: C3                 ret

?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z (public: static int __cdecl std::_Narrow_char_traits<char,int>::to_int_type(char)):
  0000000000000000: 88 4C 24 08        mov         byte ptr [rsp+8],cl
  0000000000000004: 0F B6 44 24 08     movzx       eax,byte ptr [rsp+8]
  0000000000000009: C3                 ret

?value@error_code@std@@QEBAHXZ (public: int __cdecl std::error_code::value(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 00              mov         eax,dword ptr [rax]
  000000000000000C: C3                 ret

?value@error_condition@std@@QEBAHXZ (public: int __cdecl std::error_condition::value(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 8B 00              mov         eax,dword ptr [rax]
  000000000000000C: C3                 ret

?what@exception@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::exception::what(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 18        sub         rsp,18h
  0000000000000009: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000000E: 48 83 78 08 00     cmp         qword ptr [rax+8],0
  0000000000000013: 74 0F              je          0000000000000024
  0000000000000015: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  000000000000001A: 48 8B 40 08        mov         rax,qword ptr [rax+8]
  000000000000001E: 48 89 04 24        mov         qword ptr [rsp],rax
  0000000000000022: EB 0B              jmp         000000000000002F
  0000000000000024: 48 8D 05 00 00 00  lea         rax,[??_C@_0BC@EOODALEL@Unknown?5exception@]
                    00
  000000000000002B: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000002F: 48 8B 04 24        mov         rax,qword ptr [rsp]
  0000000000000033: 48 83 C4 18        add         rsp,18h
  0000000000000037: C3                 ret

?width@ios_base@std@@QEAA_J_J@Z (public: __int64 __cdecl std::ios_base::width(__int64)):
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 48 83 EC 18        sub         rsp,18h
  000000000000000E: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000013: 48 8B 40 28        mov         rax,qword ptr [rax+28h]
  0000000000000017: 48 89 04 24        mov         qword ptr [rsp],rax
  000000000000001B: 48 8B 44 24 20     mov         rax,qword ptr [rsp+20h]
  0000000000000020: 48 8B 4C 24 28     mov         rcx,qword ptr [rsp+28h]
  0000000000000025: 48 89 48 28        mov         qword ptr [rax+28h],rcx
  0000000000000029: 48 8B 04 24        mov         rax,qword ptr [rsp]
  000000000000002D: 48 83 C4 18        add         rsp,18h
  0000000000000031: C3                 ret

?width@ios_base@std@@QEBA_JXZ (public: __int64 __cdecl std::ios_base::width(void)const ):
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 8B 44 24 08     mov         rax,qword ptr [rsp+8]
  000000000000000A: 48 8B 40 28        mov         rax,qword ptr [rax+28h]
  000000000000000E: C3                 ret

COFF SYMBOL TABLE
000 010587F8 ABS    notype       Static       | @comp.id
001 80010190 ABS    notype       Static       | @feat.00
002 00000003 ABS    notype       Static       | @vol.md
003 00000000 SECT1  notype       Static       | .drectve
    Section length  13C, #relocs    0, #linenums    0, checksum        0
005 00000000 SECT2  notype       Static       | .debug$S
    Section length   A4, #relocs    0, #linenums    0, checksum        0
007 00000000 SECT3  notype       Static       | .rdata
    Section length    E, #relocs    0, #linenums    0, checksum  149C474
009 00000000 SECT3  notype       Static       | $SG33416
00A 0000000D SECT3  notype       Static       | ?_Fake_alloc@std@@3U_Fake_allocator@1@B (struct std::_Fake_allocator const std::_Fake_alloc)
00B 00000000 SECT4  notype       Static       | .text$mn
    Section length   1E, #relocs    3, #linenums    0, checksum D68818A4
00D 00000000 SECT5  notype       Static       | .text$mn
    Section length   2F, #relocs    2, #linenums    0, checksum  EB09EED, selection    2 (pick any)
00F 00000000 SECT6  notype       Static       | .text$mn
    Section length   34, #relocs    2, #linenums    0, checksum  CAF3A5B, selection    2 (pick any)
011 00000000 SECT7  notype       Static       | .text$mn
    Section length  2F3, #relocs   16, #linenums    0, checksum DC473978, selection    2 (pick any)
013 00000000 SECT8  notype       Static       | .text$x
    Section length   41, #relocs    2, #linenums    0, checksum F7E99A73, selection    5 (pick associative Section 0x7)
015 00000000 SECT9  notype       Static       | .text$mn
    Section length   3B, #relocs    2, #linenums    0, checksum A6F323DD, selection    2 (pick any)
017 00000000 SECTA  notype       Static       | .text$mn
    Section length   25, #relocs    1, #linenums    0, checksum B8BD6FB5, selection    2 (pick any)
019 00000000 SECTB  notype       Static       | .text$mn
    Section length   5B, #relocs    1, #linenums    0, checksum B9223BD7, selection    2 (pick any)
01B 00000000 SECTC  notype       Static       | .text$mn
    Section length   87, #relocs    3, #linenums    0, checksum 4440DE79, selection    2 (pick any)
01D 00000000 SECTD  notype       Static       | .text$mn
    Section length   1E, #relocs    0, #linenums    0, checksum 87198057, selection    2 (pick any)
01F 00000000 SECTE  notype       Static       | .text$mn
    Section length  184, #relocs   11, #linenums    0, checksum 89B053A1, selection    2 (pick any)
021 00000000 SECTF  notype       Static       | .text$mn
    Section length  162, #relocs    E, #linenums    0, checksum CB7F97C9, selection    2 (pick any)
023 00000000 SECT10 notype       Static       | .text$mn
    Section length   44, #relocs    3, #linenums    0, checksum FE8581B7, selection    2 (pick any)
025 00000000 SECT11 notype       Static       | .text$mn
    Section length   44, #relocs    3, #linenums    0, checksum FE8581B7, selection    2 (pick any)
027 00000000 SECT12 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
029 00000000 SECT13 notype       Static       | .text$mn
    Section length   3E, #relocs    2, #linenums    0, checksum F6B0A420, selection    2 (pick any)
02B 00000000 SECT14 notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
02D 00000000 SECT15 notype       Static       | .text$mn
    Section length   17, #relocs    0, #linenums    0, checksum EFCDFACF, selection    2 (pick any)
02F 00000000 SECT16 notype       Static       | .text$mn
    Section length    8, #relocs    1, #linenums    0, checksum 411950D3, selection    2 (pick any)
031 00000000 SECT17 notype       Static       | .text$mn
    Section length   1B, #relocs    0, #linenums    0, checksum F2A0D2E2, selection    2 (pick any)
033 00000000 SECT18 notype       Static       | .text$mn
    Section length  1C2, #relocs    C, #linenums    0, checksum 14671B08, selection    2 (pick any)
035 00000000 SECT19 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
037 00000000 SECT1A notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
039 00000000 SECT1B notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
03B 00000000 SECT1C notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
03D 00000000 SECT1D notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
03F 00000000 SECT1E notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
041 00000000 SECT1F notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
043 00000000 SECT20 notype       Static       | .text$mn
    Section length   47, #relocs    0, #linenums    0, checksum 639AFCB8, selection    2 (pick any)
045 00000000 SECT21 notype       Static       | .text$mn
    Section length   47, #relocs    0, #linenums    0, checksum 15431293, selection    2 (pick any)
047 00000000 SECT22 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
049 00000000 SECT23 notype       Static       | .text$mn
    Section length   3A, #relocs    1, #linenums    0, checksum 5B48CFB8, selection    2 (pick any)
04B 00000000 SECT24 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
04D 00000000 SECT25 notype       Static       | .text$mn
    Section length   61, #relocs    6, #linenums    0, checksum 290D5D95, selection    2 (pick any)
04F 00000000 SECT26 notype       Static       | .text$mn
    Section length   66, #relocs    5, #linenums    0, checksum CFE3A711, selection    2 (pick any)
051 00000000 SECT27 notype       Static       | .text$mn
    Section length   50, #relocs    4, #linenums    0, checksum 7DBEECD6, selection    2 (pick any)
053 00000000 SECT28 notype       Static       | .text$mn
    Section length   45, #relocs    2, #linenums    0, checksum 593E3A54, selection    2 (pick any)
055 00000000 SECT29 notype       Static       | .text$mn
    Section length   20, #relocs    0, #linenums    0, checksum 4A7B0554, selection    2 (pick any)
057 00000000 SECT2A notype       Static       | .text$mn
    Section length   15, #relocs    0, #linenums    0, checksum B3DD8AEC, selection    2 (pick any)
059 00000000 SECT2B notype       Static       | .text$mn
    Section length   6F, #relocs    1, #linenums    0, checksum 33128569, selection    2 (pick any)
05B 00000000 SECT2C notype       Static       | .text$mn
    Section length   D9, #relocs    7, #linenums    0, checksum B5324008, selection    2 (pick any)
05D 00000000 SECT2D notype       Static       | .text$mn
    Section length   53, #relocs    2, #linenums    0, checksum 74CCAC51, selection    2 (pick any)
05F 00000000 SECT2E notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum A54120F1, selection    2 (pick any)
061 00000000 SECT2F notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 7BB6AE8C, selection    2 (pick any)
063 00000000 SECT30 notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 7BB6AE8C, selection    2 (pick any)
065 00000000 SECT31 notype       Static       | .text$mn
    Section length   33, #relocs    3, #linenums    0, checksum 8E3AD9FC, selection    2 (pick any)
067 00000000 SECT32 notype       Static       | .text$mn
    Section length   2D, #relocs    0, #linenums    0, checksum 3801AFA1, selection    2 (pick any)
069 00000000 SECT33 notype       Static       | .text$mn
    Section length   2D, #relocs    0, #linenums    0, checksum 3801AFA1, selection    2 (pick any)
06B 00000000 SECT34 notype       Static       | .text$mn
    Section length   59, #relocs    2, #linenums    0, checksum 91DBB95A, selection    2 (pick any)
06D 00000000 SECT35 notype       Static       | .text$mn
    Section length   64, #relocs    2, #linenums    0, checksum 7FBB2D17, selection    2 (pick any)
06F 00000000 SECT36 notype       Static       | .text$mn
    Section length   49, #relocs    1, #linenums    0, checksum  D21BAC1, selection    2 (pick any)
071 00000000 SECT37 notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 7BB6AE8C, selection    2 (pick any)
073 00000000 SECT38 notype       Static       | .text$mn
    Section length   58, #relocs    2, #linenums    0, checksum 38C52748, selection    2 (pick any)
075 00000000 SECT39 notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 7BB6AE8C, selection    2 (pick any)
077 00000000 SECT3A notype       Static       | .text$mn
    Section length   3E, #relocs    3, #linenums    0, checksum BF582704, selection    2 (pick any)
079 00000000 SECT3B notype       Static       | .text$mn
    Section length   D2, #relocs    6, #linenums    0, checksum  A801427, selection    2 (pick any)
07B 00000000 SECT3C notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 7BB6AE8C, selection    2 (pick any)
07D 00000000 SECT3D notype       Static       | .text$mn
    Section length   9D, #relocs    6, #linenums    0, checksum B720D322, selection    2 (pick any)
07F 00000000 SECT3E notype       Static       | .text$mn
    Section length   1C, #relocs    1, #linenums    0, checksum 69312EB8, selection    2 (pick any)
081 00000000 SECT3F notype       Static       | .text$mn
    Section length   1C, #relocs    1, #linenums    0, checksum 69312EB8, selection    2 (pick any)
083 00000000 SECT40 notype       Static       | .text$mn
    Section length   27, #relocs    2, #linenums    0, checksum 9587F5F6, selection    2 (pick any)
085 00000000 SECT41 notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
087 00000000 SECT42 notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
089 00000000 SECT43 notype       Static       | .text$mn
    Section length   58, #relocs    1, #linenums    0, checksum DC894170, selection    2 (pick any)
08B 00000000 SECT44 notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
08D 00000000 SECT45 notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
08F 00000000 SECT46 notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
091 00000000 SECT47 notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
093 00000000 SECT48 notype       Static       | .text$mn
    Section length   2F, #relocs    2, #linenums    0, checksum ADF97160, selection    2 (pick any)
095 00000000 SECT49 notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
097 00000000 SECT4A notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
099 00000000 SECT4B notype       Static       | .text$mn
    Section length   51, #relocs    3, #linenums    0, checksum 35AB1FC2, selection    2 (pick any)
09B 00000000 SECT4C notype       Static       | .text$mn
    Section length   19, #relocs    1, #linenums    0, checksum 6E0F46E4, selection    2 (pick any)
09D 00000000 SECT4D notype       Static       | .text$mn
    Section length   10, #relocs    0, #linenums    0, checksum 62AEA74E, selection    2 (pick any)
09F 00000000 SECT4E notype       Static       | .text$mn
    Section length   58, #relocs    2, #linenums    0, checksum 560A332D, selection    2 (pick any)
0A1 00000000 SECT4F notype       Static       | .text$mn
    Section length   7A, #relocs    5, #linenums    0, checksum 24B4FC17, selection    2 (pick any)
0A3 00000000 SECT50 notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum BDE816AC, selection    2 (pick any)
0A5 00000000 SECT51 notype       Static       | .text$mn
    Section length   82, #relocs    3, #linenums    0, checksum  C6571C3, selection    2 (pick any)
0A7 00000000 SECT52 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum 71A3BE8E, selection    2 (pick any)
0A9 00000000 SECT53 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum B591448B, selection    2 (pick any)
0AB 00000000 SECT54 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum 5DA82D39, selection    2 (pick any)
0AD 00000000 SECT55 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum 5DA82D39, selection    2 (pick any)
0AF 00000000 SECT56 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum 5DA82D39, selection    2 (pick any)
0B1 00000000 SECT57 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum B591448B, selection    2 (pick any)
0B3 00000000 SECT58 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum 5DA82D39, selection    2 (pick any)
0B5 00000000 SECT59 notype       Static       | .text$mn
    Section length   3C, #relocs    2, #linenums    0, checksum B591448B, selection    2 (pick any)
0B7 00000000 SECT5A notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
0B9 00000000 SECT5B notype       Static       | .text$mn
    Section length   9A, #relocs    1, #linenums    0, checksum E4ED0711, selection    2 (pick any)
0BB 00000000 SECT5C notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum 38087020, selection    2 (pick any)
0BD 00000000 SECT5D notype       Static       | .text$mn
    Section length   18, #relocs    1, #linenums    0, checksum CC4F429E, selection    2 (pick any)
0BF 00000000 SECT5E notype       Static       | .text$mn
    Section length   33, #relocs    2, #linenums    0, checksum C23AD13D, selection    2 (pick any)
0C1 00000000 SECT5F notype       Static       | .text$mn
    Section length   92, #relocs    1, #linenums    0, checksum 872B76EE, selection    2 (pick any)
0C3 00000000 SECT60 notype       Static       | .text$mn
    Section length   33, #relocs    1, #linenums    0, checksum 5E247BED, selection    2 (pick any)
0C5 00000000 SECT61 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
0C7 00000000 SECT62 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum C455396F, selection    2 (pick any)
0C9 00000000 SECT63 notype       Static       | .text$mn
    Section length   1B, #relocs    1, #linenums    0, checksum 9FE3079A, selection    2 (pick any)
0CB 00000000 SECT64 notype       Static       | .text$mn
    Section length   1B, #relocs    1, #linenums    0, checksum 9FE3079A, selection    2 (pick any)
0CD 00000000 SECT65 notype       Static       | .text$mn
    Section length   2E, #relocs    0, #linenums    0, checksum E87E96A3, selection    2 (pick any)
0CF 00000000 SECT66 notype       Static       | .text$mn
    Section length   9C, #relocs    A, #linenums    0, checksum 843301F3, selection    2 (pick any)
0D1 00000000 SECT67 notype       Static       | .text$mn
    Section length   40, #relocs    2, #linenums    0, checksum  38AC604, selection    2 (pick any)
0D3 00000000 SECT68 notype       Static       | .text$mn
    Section length   40, #relocs    2, #linenums    0, checksum  38AC604, selection    2 (pick any)
0D5 00000000 SECT69 notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
0D7 00000000 SECT6A notype       Static       | .text$mn
    Section length   B0, #relocs    5, #linenums    0, checksum 98AC670F, selection    2 (pick any)
0D9 00000000 SECT6B notype       Static       | .text$x
    Section length   1B, #relocs    1, #linenums    0, checksum E159E7C1, selection    5 (pick associative Section 0x6A)
0DB 00000000 SECT6C notype       Static       | .text$mn
    Section length   38, #relocs    0, #linenums    0, checksum 520954E6, selection    2 (pick any)
0DD 00000000 SECT6D notype       Static       | .text$mn
    Section length   55, #relocs    0, #linenums    0, checksum E0DBF86F, selection    2 (pick any)
0DF 00000000 SECT6E notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum 7BCF4A59, selection    2 (pick any)
0E1 00000000 SECT6F notype       Static       | .text$mn
    Section length   26, #relocs    1, #linenums    0, checksum BA2247AE, selection    2 (pick any)
0E3 00000000 SECT70 notype       Static       | .text$mn
    Section length    B, #relocs    0, #linenums    0, checksum 38087020, selection    2 (pick any)
0E5 00000000 SECT71 notype       Static       | .text$mn
    Section length   1C, #relocs    1, #linenums    0, checksum 69312EB8, selection    2 (pick any)
0E7 00000000 SECT72 notype       Static       | .text$mn
    Section length  19B, #relocs    D, #linenums    0, checksum 61A40CA9, selection    2 (pick any)
0E9 00000000 SECT73 notype       Static       | .text$mn
    Section length   25, #relocs    3, #linenums    0, checksum D92F737F, selection    2 (pick any)
0EB 00000000 SECT74 notype       Static       | .text$mn
    Section length   AD, #relocs    6, #linenums    0, checksum 58528743, selection    2 (pick any)
0ED 00000000 SECT75 notype       Static       | .text$mn
    Section length   16, #relocs    2, #linenums    0, checksum 508B55C3, selection    2 (pick any)
0EF 00000000 SECT76 notype       Static       | .text$mn
    Section length   25, #relocs    2, #linenums    0, checksum B7A17D3D, selection    2 (pick any)
0F1 00000000 SECT77 notype       Static       | .text$mn
    Section length   36, #relocs    2, #linenums    0, checksum 2B6FCAA2, selection    2 (pick any)
0F3 00000000 SECT78 notype       Static       | .text$mn
    Section length   37, #relocs    3, #linenums    0, checksum 2D3D0D6F, selection    2 (pick any)
0F5 00000000 SECT79 notype       Static       | .text$mn
    Section length   FC, #relocs    4, #linenums    0, checksum 9F4FB983, selection    2 (pick any)
0F7 00000000 SECT7A notype       Static       | .text$mn
    Section length   1A, #relocs    0, #linenums    0, checksum F766F8CB, selection    2 (pick any)
0F9 00000000 SECT7B notype       Static       | .text$mn
    Section length   1B, #relocs    1, #linenums    0, checksum 9FE3079A, selection    2 (pick any)
0FB 00000000 SECT7C notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum 557AB289, selection    2 (pick any)
0FD 00000000 SECT7D notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum 557AB289, selection    2 (pick any)
0FF 00000000 SECT7E notype       Static       | .text$mn
    Section length   54, #relocs    1, #linenums    0, checksum 59B67DA7, selection    2 (pick any)
101 00000000 SECT7F notype       Static       | .text$mn
    Section length   E6, #relocs    8, #linenums    0, checksum 2229EECA, selection    2 (pick any)
103 00000000 SECT80 notype       Static       | .text$mn
    Section length   31, #relocs    1, #linenums    0, checksum  25529AE, selection    2 (pick any)
105 00000000 SECT81 notype       Static       | .text$mn
    Section length   28, #relocs    1, #linenums    0, checksum  C0483D1, selection    2 (pick any)
107 00000000 SECT82 notype       Static       | .text$mn
    Section length   30, #relocs    1, #linenums    0, checksum AC0F2A1C, selection    2 (pick any)
109 00000000 SECT83 notype       Static       | .text$mn
    Section length   2E, #relocs    0, #linenums    0, checksum FC906579, selection    2 (pick any)
10B 00000000 SECT84 notype       Static       | .text$mn
    Section length    6, #relocs    0, #linenums    0, checksum CD290AF0, selection    2 (pick any)
10D 00000000 SECT85 notype       Static       | .text$mn
    Section length   2F, #relocs    0, #linenums    0, checksum 5EEBF6AC, selection    2 (pick any)
10F 00000000 SECT86 notype       Static       | .text$mn
    Section length   5D, #relocs    3, #linenums    0, checksum F2EC74DB, selection    2 (pick any)
111 00000000 SECT87 notype       Static       | .text$mn
    Section length   3E, #relocs    1, #linenums    0, checksum 9C51CE1C, selection    2 (pick any)
113 00000000 SECT88 notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum  7534BF8, selection    2 (pick any)
115 00000000 SECT89 notype       Static       | .text$mn
    Section length    E, #relocs    0, #linenums    0, checksum F8425259, selection    2 (pick any)
117 00000000 SECT8A notype       Static       | .text$mn
    Section length   B6, #relocs    6, #linenums    0, checksum 2457BBFC, selection    2 (pick any)
119 00000000 SECT8B notype       Static       | .text$x
    Section length   41, #relocs    2, #linenums    0, checksum ADF3C453, selection    5 (pick associative Section 0x8A)
11B 00000000 SECT8C notype       Static       | .text$mn
    Section length   33, #relocs    1, #linenums    0, checksum 6FC75DE4, selection    2 (pick any)
11D 00000000 SECT8D notype       Static       | .text$mn
    Section length    E, #relocs    1, #linenums    0, checksum 644CC401, selection    2 (pick any)
11F 00000000 SECT8E notype       Static       | .text$mn
    Section length   18, #relocs    1, #linenums    0, checksum CC4F429E, selection    2 (pick any)
121 00000000 SECT8F notype       Static       | .text$mn
    Section length   2D, #relocs    2, #linenums    0, checksum B92479B2, selection    2 (pick any)
123 00000000 SECT90 notype       Static       | .text$mn
    Section length    D, #relocs    0, #linenums    0, checksum E246602C, selection    2 (pick any)
125 00000000 SECT91 notype       Static       | .text$mn
    Section length   6E, #relocs    5, #linenums    0, checksum EEF84725, selection    2 (pick any)
127 00000000 SECT92 notype       Static       | .text$mn
    Section length   63, #relocs    4, #linenums    0, checksum 26E5D3BC, selection    2 (pick any)
129 00000000 SECT93 notype       Static       | .text$mn
    Section length   53, #relocs    2, #linenums    0, checksum 2C8D9C07, selection    2 (pick any)
12B 00000000 SECT94 notype       Static       | .text$mn
    Section length   31, #relocs    1, #linenums    0, checksum  25529AE, selection    2 (pick any)
12D 00000000 SECT95 notype       Static       | .text$mn
    Section length    D, #relocs    1, #linenums    0, checksum 7AC5CDFE, selection    2 (pick any)
12F 00000000 SECT96 notype       Static       | .text$mn
    Section length   1E, #relocs    0, #linenums    0, checksum 22B7687A, selection    2 (pick any)
131 00000000 SECT97 notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum A503FD8C, selection    2 (pick any)
133 00000000 SECT98 notype       Static       | .text$mn
    Section length    E, #relocs    0, #linenums    0, checksum 309BD851, selection    2 (pick any)
135 00000000 SECT99 notype       Static       | .text$mn
    Section length   10, #relocs    0, #linenums    0, checksum E0B53F17, selection    2 (pick any)
137 00000000 SECT9A notype       Static       | .text$mn
    Section length   38, #relocs    2, #linenums    0, checksum EEDB8A77, selection    2 (pick any)
139 00000000 SECT9B notype       Static       | .text$mn
    Section length   70, #relocs    4, #linenums    0, checksum 8A55A3C8, selection    2 (pick any)
13B 00000000 SECT9C notype       Static       | .text$mn
    Section length   32, #relocs    0, #linenums    0, checksum 49B6A338, selection    2 (pick any)
13D 00000000 SECT9D notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum 271865D5, selection    2 (pick any)
13F 00000000 SECT9E notype       Static       | .text$mn
    Section length    A, #relocs    0, #linenums    0, checksum  CF0EC18, selection    2 (pick any)
141 00000000 SECT9F notype       Static       | .text$mn
    Section length    D, #relocs    0, #linenums    0, checksum C1847447, selection    2 (pick any)
143 00000000 SECTA0 notype       Static       | .text$mn
    Section length    D, #relocs    0, #linenums    0, checksum C1847447, selection    2 (pick any)
145 00000000 SECTA1 notype       Static       | .text$mn
    Section length   38, #relocs    1, #linenums    0, checksum 7AE6C6CC, selection    2 (pick any)
147 00000000 SECTA2 notype       Static       | .text$mn
    Section length   32, #relocs    0, #linenums    0, checksum 5E2009AA, selection    2 (pick any)
149 00000000 SECTA3 notype       Static       | .text$mn
    Section length    F, #relocs    0, #linenums    0, checksum C0FE962B, selection    2 (pick any)
14B 00000000 UNDEF  notype ()    External     | ??2@YAPEAX_K@Z (void * __cdecl operator new(unsigned __int64))
14C 00000000 UNDEF  notype ()    External     | ??3@YAXPEAX_K@Z (void __cdecl operator delete(void *,unsigned __int64))
14D 00000000 UNDEF  notype ()    External     | _invalid_parameter_noinfo_noreturn
14E 00000000 SECT4D notype ()    External     | ??2@YAPEAX_KPEAX@Z (void * __cdecl operator new(unsigned __int64,void *))
14F 00000000 UNDEF  notype ()    External     | memcpy
150 00000000 UNDEF  notype ()    External     | memmove
151 00000000 UNDEF  notype ()    External     | strlen
152 00000000 UNDEF  notype ()    External     | ?_Xlength_error@std@@YAXPEBD@Z (void __cdecl std::_Xlength_error(char const *))
153 00000000 UNDEF  notype ()    External     | ?uncaught_exception@std@@YA_NXZ (bool __cdecl std::uncaught_exception(void))
154 00000000 UNDEF  notype ()    External     | __std_exception_copy
155 00000000 UNDEF  notype ()    External     | __std_exception_destroy
156 00000000 SECT35 notype ()    External     | ??0exception@std@@QEAA@QEBD@Z (public: __cdecl std::exception::exception(char const * const))
157 00000000 SECT36 notype ()    External     | ??0exception@std@@QEAA@QEBDH@Z (public: __cdecl std::exception::exception(char const * const,int))
158 00000000 SECT34 notype ()    External     | ??0exception@std@@QEAA@AEBV01@@Z (public: __cdecl std::exception::exception(class std::exception const &))
159 00000000 SECT48 notype ()    External     | ??1exception@std@@UEAA@XZ (public: virtual __cdecl std::exception::~exception(void))
15A 00000000 SECTA1 notype ()    External     | ?what@exception@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::exception::what(void)const )
15B 00000000 SECT56 notype ()    External     | ??_Gexception@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::exception::`scalar deleting destructor'(unsigned int))
15C 00000000 UNDEF  notype ()    WeakExternal | ??_Eexception@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::exception::`vector deleting destructor'(unsigned int))
    Default index      15B No library search
15E 00000000 SECT2E notype ()    External     | ??0bad_alloc@std@@AEAA@QEBD@Z (private: __cdecl std::bad_alloc::bad_alloc(char const * const))
15F 00000000 SECT45 notype ()    External     | ??1bad_alloc@std@@UEAA@XZ (public: virtual __cdecl std::bad_alloc::~bad_alloc(void))
160 00000000 SECT2F notype ()    External     | ??0bad_alloc@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_alloc::bad_alloc(class std::bad_alloc const &))
161 00000000 SECT54 notype ()    External     | ??_Gbad_alloc@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_alloc::`scalar deleting destructor'(unsigned int))
162 00000000 UNDEF  notype ()    WeakExternal | ??_Ebad_alloc@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_alloc::`vector deleting destructor'(unsigned int))
    Default index      161 No library search
164 00000000 SECT31 notype ()    External     | ??0bad_array_new_length@std@@QEAA@XZ (public: __cdecl std::bad_array_new_length::bad_array_new_length(void))
165 00000000 SECT46 notype ()    External     | ??1bad_array_new_length@std@@UEAA@XZ (public: virtual __cdecl std::bad_array_new_length::~bad_array_new_length(void))
166 00000000 SECT30 notype ()    External     | ??0bad_array_new_length@std@@QEAA@AEBV01@@Z (public: __cdecl std::bad_array_new_length::bad_array_new_length(class std::bad_array_new_length const &))
167 00000000 SECT55 notype ()    External     | ??_Gbad_array_new_length@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_array_new_length::`scalar deleting destructor'(unsigned int))
168 00000000 UNDEF  notype ()    WeakExternal | ??_Ebad_array_new_length@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::bad_array_new_length::`vector deleting destructor'(unsigned int))
    Default index      167 No library search
16A 00000000 SECT80 notype ()    External     | ?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::copy(char * const,char const * const,unsigned __int64))
16B 00000000 SECT94 notype ()    External     | ?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z (public: static char * __cdecl std::_Char_traits<char,int>::move(char * const,char const * const,unsigned __int64))
16C 00000000 SECT8E notype ()    External     | ?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z (public: static unsigned __int64 __cdecl std::_Narrow_char_traits<char,int>::length(char const * const))
16D 00000000 SECT7A notype ()    External     | ?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z (public: static void __cdecl std::_Narrow_char_traits<char,int>::assign(char &,char const &))
16E 00000000 SECT9E notype ()    External     | ?to_int_type@?$_Narrow_char_traits@DH@std@@SAHD@Z (public: static int __cdecl std::_Narrow_char_traits<char,int>::to_int_type(char))
16F 00000000 SECT85 notype ()    External     | ?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z (public: static bool __cdecl std::_Narrow_char_traits<char,int>::eq_int_type(int,int))
170 00000000 SECT84 notype ()    External     | ?eof@?$_Narrow_char_traits@DH@std@@SAHXZ (public: static int __cdecl std::_Narrow_char_traits<char,int>::eof(void))
171 00000000 SECT73 notype ()    External     | ?_Throw_bad_array_new_length@std@@YAXXZ (void __cdecl std::_Throw_bad_array_new_length(void))
172 00000000 SECT5D notype ()    External     | ?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z (public: static void * __cdecl std::_Default_allocate_traits::_Allocate(unsigned __int64))
173 00000000 SECT5B notype ()    External     | ?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z (void __cdecl std::_Adjust_manually_vector_aligned(void * &,unsigned __int64 &))
174 00000000 SECT69 notype ()    External     | ?_Orphan_all@_Container_base0@std@@QEAAXXZ (public: void __cdecl std::_Container_base0::_Orphan_all(void))
175 00000000 SECT70 notype ()    External     | ?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z (public: void __cdecl std::_Container_base0::_Swap_proxy_and_iterators(struct std::_Container_base0 &))
176 00000000 SECT5C notype ()    External     | ?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z (public: void __cdecl std::_Container_base0::_Alloc_proxy(struct std::_Fake_allocator const &))
177 00000000 SECT2A notype ()    External     | ??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z (public: __cdecl std::_Fake_proxy_ptr_impl::_Fake_proxy_ptr_impl(struct std::_Fake_allocator const &,struct std::_Container_base0 const &))
178 00000000 SECT6E notype ()    External     | ?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ (public: void __cdecl std::_Fake_proxy_ptr_impl::_Release(void))
179 00000000 SECT75 notype ()    External     | ?_Xlen_string@std@@YAXXZ (void __cdecl std::_Xlen_string(void))
17A 00000000 SECT24 notype ()    External     | ??0?$allocator@D@std@@QEAA@XZ (public: __cdecl std::allocator<char>::allocator<char>(void))
17B 00000000 SECT81 notype ()    External     | ?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z (public: void __cdecl std::allocator<char>::deallocate(char * const,unsigned __int64))
17C 00000000 SECT76 notype ()    External     | ?allocate@?$allocator@D@std@@QEAAPEAD_K@Z (public: char * __cdecl std::allocator<char>::allocate(unsigned __int64))
17D 00000000 SECT90 notype ()    External     | ?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z (public: static unsigned __int64 __cdecl std::_Default_allocator_traits<class std::allocator<char> >::max_size(class std::allocator<char> const &))
17E 00000000 SECT99 notype ()    External     | ?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z (public: static class std::allocator<char> __cdecl std::_Default_allocator_traits<class std::allocator<char> >::select_on_container_copy_construction(class std::allocator<char> const &))
17F 00000000 SECT23 notype ()    External     | ??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_String_val<struct std::_Simple_types<char> >(void))
180 00000000 SECT67 notype ()    External     | ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ (public: char * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void))
181 00000000 SECT68 notype ()    External     | ?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ (public: char const * __cdecl std::_String_val<struct std::_Simple_types<char> >::_Myptr(void)const )
182 00000000 SECT65 notype ()    External     | ?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ (public: bool __cdecl std::_String_val<struct std::_Simple_types<char> >::_Large_mode_engaged(void)const )
183 00000000 SECT5A notype ()    External     | ?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Activate_SSO_buffer(void))
184 00000000 SECT29 notype ()    External     | ??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Bxty(void))
185 00000000 SECT41 notype ()    External     | ??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::~_Bxty(void))
186 00000000 SECT71 notype ()    External     | ?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ (public: void __cdecl std::_String_val<struct std::_Simple_types<char> >::_Bxty::_Switch_to_buf(void))
187 00000000 SECT3F notype ()    External     | ??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ (public: __cdecl std::_String_val<struct std::_Simple_types<char> >::~_String_val<struct std::_Simple_types<char> >(void))
188 00000000 SECT26 notype ()    External     | ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &))
189 00000000 SECT28 notype ()    External     | ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const,unsigned __int64))
18A 00000000 SECT27 notype ()    External     | ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(char const * const))
18B 00000000 SECT60 notype ()    External     | ?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z (private: static void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Deallocate_for_capacity(class std::allocator<char> &,char * const,unsigned __int64))
18C 00000000 SECT25 notype ()    External     | ??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &&))
18D 00000000 SECT72 notype ()    External     | ?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Take_contents(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &))
18E 00000000 SECT40 notype ()    External     | ??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ (public: __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::~basic_string<char,struct std::char_traits<char>,class std::allocator<char> >(void))
18F 00000000 SECT77 notype ()    External     | ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &))
190 00000000 SECT79 notype ()    External     | ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const,unsigned __int64))
191 00000000 SECT78 notype ()    External     | ?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::append(char const * const))
192 00000000 SECT7B notype ()    External     | ?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ (public: char const * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::c_str(void)const )
193 00000000 SECT91 notype ()    External     | ?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ (public: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::max_size(void)const )
194 00000000 SECT83 notype ()    External     | ?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ (public: bool __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::empty(void)const )
195 00000000 SECT5F notype ()    External     | ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z (private: static unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64,unsigned __int64,unsigned __int64))
196 00000000 SECT5E notype ()    External     | ?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z (private: unsigned __int64 __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Calculate_growth(unsigned __int64)const )
197 00000000 SECT74 notype ()    External     | ?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Tidy_deallocate(void))
198 00000000 SECT6F notype ()    External     | ?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Swap_proxy_and_iterators(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &))
199 00000000 SECT63 notype ()    External     | ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ (private: class std::allocator<char> & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void))
19A 00000000 SECT64 notype ()    External     | ?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ (private: class std::allocator<char> const & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Getal(void)const )
19B 00000000 SECT61 notype ()    External     | ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ (public: class std::allocator<char> & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void))
19C 00000000 SECT62 notype ()    External     | ?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ (public: class std::allocator<char> const & __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Get_first(void)const )
19D 00000000 SECT3E notype ()    External     | ??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::~_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>(void))
19E 00000000 SECT3A notype ()    External     | ??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (public: __cdecl std::runtime_error::runtime_error(class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &))
19F 00000000 SECT4A notype ()    External     | ??1runtime_error@std@@UEAA@XZ (public: virtual __cdecl std::runtime_error::~runtime_error(void))
1A0 00000000 SECT39 notype ()    External     | ??0runtime_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::runtime_error::runtime_error(class std::runtime_error const &))
1A1 00000000 SECT58 notype ()    External     | ??_Gruntime_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::runtime_error::`scalar deleting destructor'(unsigned int))
1A2 00000000 UNDEF  notype ()    WeakExternal | ??_Eruntime_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::runtime_error::`vector deleting destructor'(unsigned int))
    Default index      1A1 No library search
1A4 00000000 SECT8D notype ()    External     | ?iostream_category@std@@YAAEBVerror_category@1@XZ (class std::error_category const & __cdecl std::iostream_category(void))
1A5 00000000 SECT47 notype ()    External     | ??1error_category@std@@UEAA@XZ (public: virtual __cdecl std::error_category::~error_category(void))
1A6 00000000 SECT82 notype ()    External     | ?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z (public: virtual class std::error_condition __cdecl std::error_category::default_error_condition(int)const )
1A7 00000000 SECT87 notype ()    External     | ?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z (public: virtual bool __cdecl std::error_category::equivalent(int,class std::error_condition const &)const )
1A8 00000000 SECT86 notype ()    External     | ?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z (public: virtual bool __cdecl std::error_category::equivalent(class std::error_code const &,int)const )
1A9 00000000 SECT4E notype ()    External     | ??8error_category@std@@QEBA_NAEBV01@@Z (public: bool __cdecl std::error_category::operator==(class std::error_category const &)const )
1AA 00000000 SECTD  notype ()    External     | ??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z (unsigned __int64 __cdecl std::_Bit_cast<unsigned __int64,union std::error_category::_Addr_storage,0>(union std::error_category::_Addr_storage const &))
1AB 00000000 SECT32 notype ()    External     | ??0error_code@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_code::error_code(int,class std::error_category const &))
1AC 00000000 SECT9F notype ()    External     | ?value@error_code@std@@QEBAHXZ (public: int __cdecl std::error_code::value(void)const )
1AD 00000000 SECT7C notype ()    External     | ?category@error_code@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_code::category(void)const )
1AE 00000000 SECT93 notype ()    External     | ?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ (public: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::error_code::message(void)const )
1AF 00000000 SECT33 notype ()    External     | ??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z (public: __cdecl std::error_condition::error_condition(int,class std::error_category const &))
1B0 00000000 SECTA0 notype ()    External     | ?value@error_condition@std@@QEBAHXZ (public: int __cdecl std::error_condition::value(void)const )
1B1 00000000 SECT7D notype ()    External     | ?category@error_condition@std@@QEBAAEBVerror_category@2@XZ (public: class std::error_category const & __cdecl std::error_condition::category(void)const )
1B2 00000000 SECT4F notype ()    External     | ??8std@@YA_NAEBVerror_condition@0@0@Z (bool __cdecl std::operator==(class std::error_condition const &,class std::error_condition const &))
1B3 00000000 SECT8F notype ()    External     | ?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z (class std::error_code __cdecl std::make_error_code(enum std::io_errc))
1B4 00000000 SECT66 notype ()    External     | ?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z (private: static class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_System_error::_Makestr(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >))
1B5 00000000 SECT2C notype ()    External     | ??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z (protected: __cdecl std::_System_error::_System_error(class std::error_code,class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > const &))
1B6 00000000 SECT44 notype ()    External     | ??1_System_error@std@@UEAA@XZ (public: virtual __cdecl std::_System_error::~_System_error(void))
1B7 00000000 SECT2D notype ()    External     | ??0_System_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::_System_error::_System_error(class std::_System_error const &))
1B8 00000000 SECT53 notype ()    External     | ??_G_System_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_System_error::`scalar deleting destructor'(unsigned int))
1B9 00000000 UNDEF  notype ()    WeakExternal | ??_E_System_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_System_error::`vector deleting destructor'(unsigned int))
    Default index      1B8 No library search
1BB 00000000 SECT3D notype ()    External     | ??0system_error@std@@QEAA@Verror_code@1@PEBD@Z (public: __cdecl std::system_error::system_error(class std::error_code,char const *))
1BC 00000000 SECT4C notype ()    External     | ??1system_error@std@@UEAA@XZ (public: virtual __cdecl std::system_error::~system_error(void))
1BD 00000000 SECT3C notype ()    External     | ??0system_error@std@@QEAA@AEBV01@@Z (public: __cdecl std::system_error::system_error(class std::system_error const &))
1BE 00000000 SECT59 notype ()    External     | ??_Gsystem_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::system_error::`scalar deleting destructor'(unsigned int))
1BF 00000000 UNDEF  notype ()    WeakExternal | ??_Esystem_error@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::system_error::`vector deleting destructor'(unsigned int))
    Default index      1BE No library search
1C1 00000000 UNDEF  notype ()    External     | ?_Syserror_map@std@@YAPEBDH@Z (char const * __cdecl std::_Syserror_map(int))
1C2 00000000 SECT95 notype ()    External     | ?name@_Iostream_error_category2@std@@UEBAPEBDXZ (public: virtual char const * __cdecl std::_Iostream_error_category2::name(void)const )
1C3 00000000 SECT92 notype ()    External     | ?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z (public: virtual class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Iostream_error_category2::message(int)const )
1C4 00000000 SECT42 notype ()    External     | ??1_Iostream_error_category2@std@@UEAA@XZ (public: virtual __cdecl std::_Iostream_error_category2::~_Iostream_error_category2(void))
1C5 00000000 SECT52 notype ()    External     | ??_G_Iostream_error_category2@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_Iostream_error_category2::`scalar deleting destructor'(unsigned int))
1C6 00000000 UNDEF  notype ()    WeakExternal | ??_E_Iostream_error_category2@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::_Iostream_error_category2::`vector deleting destructor'(unsigned int))
    Default index      1C5 No library search
1C8 00000000 SECT16 notype ()    External     | ??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ (class std::_Iostream_error_category2 const & __cdecl std::_Immortalize_memcpy_image<class std::_Iostream_error_category2>(void))
1C9 00000000 SECT38 notype ()    External     | ??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z (public: __cdecl std::ios_base::failure::failure(char const *,class std::error_code const &))
1CA 00000000 SECT49 notype ()    External     | ??1failure@ios_base@std@@UEAA@XZ (public: virtual __cdecl std::ios_base::failure::~failure(void))
1CB 00000000 SECT37 notype ()    External     | ??0failure@ios_base@std@@QEAA@AEBV012@@Z (public: __cdecl std::ios_base::failure::failure(class std::ios_base::failure const &))
1CC 00000000 SECT57 notype ()    External     | ??_Gfailure@ios_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::ios_base::failure::`scalar deleting destructor'(unsigned int))
1CD 00000000 UNDEF  notype ()    WeakExternal | ??_Efailure@ios_base@std@@UEAAPEAXI@Z (public: virtual void * __cdecl std::ios_base::failure::`vector deleting destructor'(unsigned int))
    Default index      1CC No library search
1CF 00000000 SECT7F notype ()    External     | ?clear@ios_base@std@@QEAAXH_N@Z (public: void __cdecl std::ios_base::clear(int,bool))
1D0 00000000 SECT98 notype ()    External     | ?rdstate@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::rdstate(void)const )
1D1 00000000 SECT8C notype ()    External     | ?good@ios_base@std@@QEBA_NXZ (public: bool __cdecl std::ios_base::good(void)const )
1D2 00000000 SECT89 notype ()    External     | ?flags@ios_base@std@@QEBAHXZ (public: int __cdecl std::ios_base::flags(void)const )
1D3 00000000 SECTA3 notype ()    External     | ?width@ios_base@std@@QEBA_JXZ (public: __int64 __cdecl std::ios_base::width(void)const )
1D4 00000000 SECTA2 notype ()    External     | ?width@ios_base@std@@QEAA_J_J@Z (public: __int64 __cdecl std::ios_base::width(__int64))
1D5 00000000 SECT4  notype ()    External     | main
1D6 00000000 SECT7E notype ()    External     | ?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::clear(int,bool))
1D7 00000000 SECT9A notype ()    External     | ?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z (public: void __cdecl std::basic_ios<char,struct std::char_traits<char> >::setstate(int,bool))
1D8 00000000 SECT9D notype ()    External     | ?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::tie(void)const )
1D9 00000000 SECT97 notype ()    External     | ?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ (public: class std::basic_streambuf<char,struct std::char_traits<char> > * __cdecl std::basic_ios<char,struct std::char_traits<char> >::rdbuf(void)const )
1DA 00000000 SECT88 notype ()    External     | ?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ (public: char __cdecl std::basic_ios<char,struct std::char_traits<char> >::fill(void)const )
1DB 00000000 SECT6A notype ()    External     | ?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ (public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void))
1DC 00000000 SECT8A notype ()    External     | ?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ (public: class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void))
1DD 00000000 SECT7  notype ()    External     | ??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z (class std::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::operator<<<struct std::char_traits<char> >(class std::basic_ostream<char,struct std::char_traits<char> > &,char const *))
1DE 00000000 SECT12 notype ()    External     | ??$_Convert_size@_K_K@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Convert_size<unsigned __int64,unsigned __int64>(unsigned __int64))
1DF 00000000 SECT22 notype ()    External     | ??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z (class std::allocator<char> && __cdecl std::move<class std::allocator<char> &>(class std::allocator<char> &))
1E0 00000000 SECT6  notype ()    External     | ??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><class std::allocator<char> >(struct std::_One_then_variadic_args_t,class std::allocator<char> &&))
1E1 00000000 SECT5  notype ()    External     | ??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z (public: __cdecl std::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1>::_Compressed_pair<class std::allocator<char>,class std::_String_val<struct std::_Simple_types<char> >,1><>(struct std::_Zero_then_variadic_args_t))
1E2 00000000 SECTE  notype ()    External     | ??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<1,char const *>(char const * const,unsigned __int64))
1E3 00000000 SECTF  notype ()    External     | ??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z (private: void __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Construct<2,char const *>(char const * const,unsigned __int64))
1E4 00000000 SECT51 notype ()    External     | ??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z (public: __cdecl <lambda_65e615be2a453ca0576c979606f46740>::operator()(char * const,char const * const,unsigned __int64,char const * const,unsigned __int64)const )
1E5 00000000 SECT18 notype ()    External     | ??$_Reallocate_grow_by@V<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@Z (private: class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > & __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Reallocate_grow_by<class <lambda_65e615be2a453ca0576c979606f46740>,char const *,unsigned __int64>(unsigned __int64,class <lambda_65e615be2a453ca0576c979606f46740>,char const *,unsigned __int64))
1E6 00000000 SECT1B notype ()    External     | ??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z (class std::_String_val<struct std::_Simple_types<char> > * __cdecl std::addressof<class std::_String_val<struct std::_Simple_types<char> > >(class std::_String_val<struct std::_Simple_types<char> > &))
1E7 00000000 SECT10 notype ()    External     | ??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z (void __cdecl std::_Construct_in_place<char *,char * &>(char * &,char * &))
1E8 00000000 SECT19 notype ()    External     | ??$_Unfancy@D@std@@YAPEADPEAD@Z (char * __cdecl std::_Unfancy<char>(char *))
1E9 00000000 SECT14 notype ()    External     | ??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z (void __cdecl std::_Destroy_in_place<char *>(char * &))
1EA 00000000 SECT20 notype ()    External     | ??$max@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::max<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &))
1EB 00000000 SECT13 notype ()    External     | ??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z (void __cdecl std::_Deallocate<16>(void *,unsigned __int64))
1EC 00000000 SECT21 notype ()    External     | ??$min@_K@std@@YAAEB_KAEB_K0@Z (unsigned __int64 const & __cdecl std::min<unsigned __int64>(unsigned __int64 const &,unsigned __int64 const &))
1ED 00000000 SECT2B notype ()    External     | ??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::_Sentry_base(class std::basic_ostream<char,struct std::char_traits<char> > &))
1EE 00000000 SECT43 notype ()    External     | ??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Sentry_base::~_Sentry_base(void))
1EF 00000000 SECT3B notype ()    External     | ??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::sentry(class std::basic_ostream<char,struct std::char_traits<char> > &))
1F0 00000000 SECT4B notype ()    External     | ??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::~sentry(void))
1F1 00000000 SECT50 notype ()    External     | ??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ (public: __cdecl std::basic_ostream<char,struct std::char_traits<char> >::sentry::operator bool(void)const )
1F2 00000000 SECT96 notype ()    External     | ?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::pubsync(void))
1F3 00000000 SECT9B notype ()    External     | ?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z (public: int __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputc(char))
1F4 00000000 SECT9C notype ()    External     | ?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z (public: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::sputn(char const *,__int64))
1F5 00000000 SECT6D notype ()    External     | ?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ (protected: char * __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pninc(void))
1F6 00000000 SECT6C notype ()    External     | ?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ (protected: __int64 __cdecl std::basic_streambuf<char,struct std::char_traits<char> >::_Pnavail(void)const )
1F7 00000000 SECT1F notype ()    External     | ??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z (class std::allocator<char> && __cdecl std::forward<class std::allocator<char> >(class std::allocator<char> &))
1F8 00000000 SECTB  notype ()    External     | ??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z (private: static char * __cdecl std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >::_Allocate_for_capacity<0>(class std::allocator<char> &,unsigned __int64 &))
1F9 00000000 SECT11 notype ()    External     | ??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z (void __cdecl std::_Construct_in_place<char *,char * const &>(char * &,char * const &))
1FA 00000000 SECT1A notype ()    External     | ??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z (char * * __cdecl std::addressof<char *>(char * &))
1FB 00000000 SECT1D notype ()    External     | ??$forward@AEAPEAD@std@@YAAEAPEADAEAPEAD@Z (char * & __cdecl std::forward<char * &>(char * &))
1FC 00000000 SECT1C notype ()    External     | ??$addressof@V?$basic_ostream@DU?$char_traits@D@std@@@std@@@std@@YAPEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z (class std::basic_ostream<char,struct std::char_traits<char> > * __cdecl std::addressof<class std::basic_ostream<char,struct std::char_traits<char> > >(class std::basic_ostream<char,struct std::char_traits<char> > &))
1FD 00000000 SECT17 notype ()    External     | ??$_Max_limit@_J@std@@YA_JXZ (__int64 __cdecl std::_Max_limit<__int64>(void))
1FE 00000000 SECTA  notype ()    External     | ??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z (char * __cdecl std::_Allocate_at_least_helper<class std::allocator<char> >(class std::allocator<char> &,unsigned __int64 &))
1FF 00000000 SECT1E notype ()    External     | ??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z (char * const & __cdecl std::forward<char * const &>(char * const &))
200 00000000 SECT9  notype ()    External     | ??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate<16,struct std::_Default_allocate_traits>(unsigned __int64))
201 00000000 SECT15 notype ()    External     | ??$_Get_size_of_n@$00@std@@YA_K_K@Z (unsigned __int64 __cdecl std::_Get_size_of_n<1>(unsigned __int64))
202 00000000 SECTC  notype ()    External     | ??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z (void * __cdecl std::_Allocate_manually_vector_aligned<struct std::_Default_allocate_traits>(unsigned __int64))
203 00000000 SECT8  notype ()    Static       | ?catch$0@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA (int `class catch$0::basic_ostream<char,struct std::char_traits<char> > & __cdecl std::operator<<<struct std::char_traits<char> >(class catch$0::std &,char const *)'::`1'::catch$0)
204 00000000 SECT6B notype ()    Static       | ?catch$0@?0??_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ@4HA (int `public: void __cdecl std::basic_ostream<char,struct std::char_traits<char> >::_Osfx(void)'::`1'::catch$0)
205 00000000 SECT8B notype ()    Static       | ?catch$0@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA (int `public: class basic_ostream<char,struct std::char_traits<char> >::flush & __cdecl std::basic_ostream<char,struct std::char_traits<char> >::flush(void)'::`1'::catch$0)
206 00000000 UNDEF  notype ()    External     | _CxxThrowException
207 00000000 UNDEF  notype ()    External     | __CxxFrameHandler4
208 00000000 UNDEF  notype ()    External     | __GSHandlerCheck
209 00000000 UNDEF  notype ()    External     | __security_check_cookie
20A 00000000 SECT35 notype       Label        | $LN3
20B 00000000 SECT36 notype       Label        | $LN3
20C 00000000 SECT34 notype       Label        | $LN3
20D 00000000 SECT48 notype       Label        | $LN3
20E 00000000 SECTA1 notype       Label        | $LN5
20F 00000000 SECT56 notype       Label        | $LN4
210 00000000 SECT2E notype       Label        | $LN3
211 00000000 SECT45 notype       Label        | $LN3
212 00000000 SECT2F notype       Label        | $LN3
213 00000000 SECT54 notype       Label        | $LN4
214 00000000 SECT31 notype       Label        | $LN3
215 00000000 SECT46 notype       Label        | $LN3
216 00000000 SECT30 notype       Label        | $LN3
217 00000000 SECT55 notype       Label        | $LN4
218 00000000 SECT80 notype       Label        | $LN3
219 00000000 SECT94 notype       Label        | $LN3
21A 00000000 SECT8E notype       Label        | $LN3
21B 00000000 SECT85 notype       Label        | $LN5
21C 00000000 SECT73 notype       Label        | $LN3
21D 00000000 SECT5D notype       Label        | $LN3
21E 00000000 SECT5B notype       Label        | $LN11
21F 00000000 SECT75 notype       Label        | $LN3
220 00000000 SECT81 notype       Label        | $LN3
221 00000000 SECT76 notype       Label        | $LN3
222 00000000 SECT23 notype       Label        | $LN3
223 00000000 SECT67 notype       Label        | $LN4
224 00000000 SECT68 notype       Label        | $LN4
225 00000000 SECT65 notype       Label        | $LN5
226 00000000 SECT29 notype       Label        | $LN3
227 00000000 SECT71 notype       Label        | $LN3
228 00000000 SECT3F notype       Label        | $LN3
229 00000000 SECT26 notype       Label        | $LN3
22A 00000000 SECT28 notype       Label        | $LN3
22B 00000000 SECT27 notype       Label        | $LN3
22C 00000000 SECT60 notype       Label        | $LN3
22D 00000000 SECT25 notype       Label        | $LN3
22E 00000000 SECT72 notype       Label        | $LN5
22F 00000000 SECT40 notype       Label        | $LN3
230 00000000 SECT77 notype       Label        | $LN3
231 00000000 SECT79 notype       Label        | $LN4
232 00000000 SECT78 notype       Label        | $LN3
233 00000000 SECT7B notype       Label        | $LN3
234 00000000 SECT91 notype       Label        | $LN3
235 00000000 SECT83 notype       Label        | $LN5
236 00000000 SECT5F notype       Label        | $LN5
237 00000000 SECT5E notype       Label        | $LN3
238 00000000 SECT74 notype       Label        | $LN4
239 00000000 SECT6F notype       Label        | $LN3
23A 00000000 SECT63 notype       Label        | $LN3
23B 00000000 SECT64 notype       Label        | $LN3
23C 00000000 SECT3E notype       Label        | $LN3
23D 00000000 SECT3A notype       Label        | $LN3
23E 00000000 SECT4A notype       Label        | $LN3
23F 00000000 SECT39 notype       Label        | $LN3
240 00000000 SECT58 notype       Label        | $LN4
241 00000000 SECT8D notype       Label        | $LN3
242 00000000 SECT82 notype       Label        | $LN3
243 00000000 SECT87 notype       Label        | $LN3
244 00000000 SECT86 notype       Label        | $LN5
245 00000000 SECT4E notype       Label        | $LN5
246 00000000 SECTD  notype       Label        | $LN3
247 00000000 SECT93 notype       Label        | $LN3
248 00000000 SECT4F notype       Label        | $LN5
249 00000000 SECT8F notype       Label        | $LN3
24A 00000000 SECT66 notype       Label        | $LN4
24B 00000000 SECT2C notype       Label        | $LN3
24C 00000000 SECT44 notype       Label        | $LN3
24D 00000000 SECT2D notype       Label        | $LN3
24E 00000000 SECT53 notype       Label        | $LN4
24F 00000000 SECT3D notype       Label        | $LN3
250 00000000 SECT4C notype       Label        | $LN3
251 00000000 SECT3C notype       Label        | $LN3
252 00000000 SECT59 notype       Label        | $LN4
253 00000000 SECT92 notype       Label        | $LN5
254 00000000 SECT42 notype       Label        | $LN3
255 00000000 SECT52 notype       Label        | $LN4
256 00000000 SECT38 notype       Label        | $LN3
257 00000000 SECT49 notype       Label        | $LN3
258 00000000 SECT37 notype       Label        | $LN3
259 00000000 SECT57 notype       Label        | $LN4
25A 00000000 SECT7F notype       Label        | $LN9
25B 00000000 SECT8C notype       Label        | $LN5
25C 00000000 SECTA2 notype       Label        | $LN3
25D 00000000 SECT4  notype       Label        | $LN3
25E 00000000 SECT7E notype       Label        | $LN5
25F 00000000 SECT9A notype       Label        | $LN3
260 000000AB SECT6A notype       Label        | $LN9
261 0000000D SECT6B notype ()    Static       | __catch$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ$0
262 00000000 SECT6A notype       Label        | $LN11
263 0000007A SECT8A notype       Label        | $LN10
264 0000000D SECT8B notype ()    Static       | __catch$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ$0
265 00000000 SECT8A notype       Label        | $LN12
266 000002AE SECT7  notype       Label        | $LN22
267 0000000D SECT8  notype ()    Static       | __catch$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z$0
268 00000000 SECT7  notype       Label        | $LN24
269 00000000 SECT6  notype       Label        | $LN3
26A 00000000 SECT5  notype       Label        | $LN3
26B 00000000 SECTE  notype       Label        | $LN5
26C 00000000 SECTF  notype       Label        | $LN5
26D 00000000 SECT51 notype       Label        | $LN3
26E 00000000 SECT18 notype       Label        | $LN6
26F 00000000 SECT10 notype       Label        | $LN3
270 00000000 SECT20 notype       Label        | $LN5
271 00000000 SECT13 notype       Label        | $LN4
272 00000000 SECT21 notype       Label        | $LN5
273 00000000 SECT2B notype       Label        | $LN4
274 00000000 SECT43 notype       Label        | $LN4
275 00000000 SECT3B notype       Label        | $LN6
276 00000000 SECT4B notype       Label        | $LN6
277 00000000 SECT96 notype       Label        | $LN3
278 00000000 SECT9B notype       Label        | $LN5
279 00000000 SECT9C notype       Label        | $LN3
27A 00000000 SECT6D notype       Label        | $LN3
27B 00000000 SECT6C notype       Label        | $LN5
27C 00000000 SECTB  notype       Label        | $LN3
27D 00000000 SECT11 notype       Label        | $LN3
27E 00000000 SECT17 notype       Label        | $LN3
27F 00000000 SECTA  notype       Label        | $LN3
280 00000000 SECT9  notype       Label        | $LN5
281 00000000 SECT15 notype       Label        | $LN3
282 00000000 SECTC  notype       Label        | $LN12
283 00000000 SECTA4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum F3809303, selection    5 (pick associative Section 0x35)
285 00000000 SECTA4 notype       Static       | $unwind$??0exception@std@@QEAA@QEBD@Z
286 00000000 SECTA5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 54A1AE41, selection    5 (pick associative Section 0x35)
288 00000000 SECTA5 notype       Static       | $pdata$??0exception@std@@QEAA@QEBD@Z
289 00000000 SECTA6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 64C0703A, selection    5 (pick associative Section 0x36)
28B 00000000 SECTA6 notype       Static       | $unwind$??0exception@std@@QEAA@QEBDH@Z
28C 00000000 SECTA7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 36D2D9C6, selection    5 (pick associative Section 0x36)
28E 00000000 SECTA7 notype       Static       | $pdata$??0exception@std@@QEAA@QEBDH@Z
28F 00000000 SECTA8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum BB575823, selection    5 (pick associative Section 0x34)
291 00000000 SECTA8 notype       Static       | $unwind$??0exception@std@@QEAA@AEBV01@@Z
292 00000000 SECTA9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 4A69E8ED, selection    5 (pick associative Section 0x34)
294 00000000 SECTA9 notype       Static       | $pdata$??0exception@std@@QEAA@AEBV01@@Z
295 00000000 SECTAA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x48)
297 00000000 SECTAA notype       Static       | $unwind$??1exception@std@@UEAA@XZ
298 00000000 SECTAB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 205670FA, selection    5 (pick associative Section 0x48)
29A 00000000 SECTAB notype       Static       | $pdata$??1exception@std@@UEAA@XZ
29B 00000000 SECTAC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0xA1)
29D 00000000 SECTAC notype       Static       | $unwind$?what@exception@std@@UEBAPEBDXZ
29E 00000000 SECTAD notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 562848C8, selection    5 (pick associative Section 0xA1)
2A0 00000000 SECTAD notype       Static       | $pdata$?what@exception@std@@UEBAPEBDXZ
2A1 00000000 SECTAE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x56)
2A3 00000000 SECTAE notype       Static       | $unwind$??_Gexception@std@@UEAAPEAXI@Z
2A4 00000000 SECTAF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x56)
2A6 00000000 SECTAF notype       Static       | $pdata$??_Gexception@std@@UEAAPEAXI@Z
2A7 00000000 SECTB0 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x2E)
2A9 00000000 SECTB0 notype       Static       | $unwind$??0bad_alloc@std@@AEAA@QEBD@Z
2AA 00000000 SECTB1 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x2E)
2AC 00000000 SECTB1 notype       Static       | $pdata$??0bad_alloc@std@@AEAA@QEBD@Z
2AD 00000000 SECTB2 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x45)
2AF 00000000 SECTB2 notype       Static       | $unwind$??1bad_alloc@std@@UEAA@XZ
2B0 00000000 SECTB3 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x45)
2B2 00000000 SECTB3 notype       Static       | $pdata$??1bad_alloc@std@@UEAA@XZ
2B3 00000000 SECTB4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x2F)
2B5 00000000 SECTB4 notype       Static       | $unwind$??0bad_alloc@std@@QEAA@AEBV01@@Z
2B6 00000000 SECTB5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x2F)
2B8 00000000 SECTB5 notype       Static       | $pdata$??0bad_alloc@std@@QEAA@AEBV01@@Z
2B9 00000000 SECTB6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x54)
2BB 00000000 SECTB6 notype       Static       | $unwind$??_Gbad_alloc@std@@UEAAPEAXI@Z
2BC 00000000 SECTB7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x54)
2BE 00000000 SECTB7 notype       Static       | $pdata$??_Gbad_alloc@std@@UEAAPEAXI@Z
2BF 00000000 SECTB8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x31)
2C1 00000000 SECTB8 notype       Static       | $unwind$??0bad_array_new_length@std@@QEAA@XZ
2C2 00000000 SECTB9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  B42549E, selection    5 (pick associative Section 0x31)
2C4 00000000 SECTB9 notype       Static       | $pdata$??0bad_array_new_length@std@@QEAA@XZ
2C5 00000000 SECTBA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x46)
2C7 00000000 SECTBA notype       Static       | $unwind$??1bad_array_new_length@std@@UEAA@XZ
2C8 00000000 SECTBB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x46)
2CA 00000000 SECTBB notype       Static       | $pdata$??1bad_array_new_length@std@@UEAA@XZ
2CB 00000000 SECTBC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x30)
2CD 00000000 SECTBC notype       Static       | $unwind$??0bad_array_new_length@std@@QEAA@AEBV01@@Z
2CE 00000000 SECTBD notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x30)
2D0 00000000 SECTBD notype       Static       | $pdata$??0bad_array_new_length@std@@QEAA@AEBV01@@Z
2D1 00000000 SECTBE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x55)
2D3 00000000 SECTBE notype       Static       | $unwind$??_Gbad_array_new_length@std@@UEAAPEAXI@Z
2D4 00000000 SECTBF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x55)
2D6 00000000 SECTBF notype       Static       | $pdata$??_Gbad_array_new_length@std@@UEAAPEAXI@Z
2D7 00000000 SECTC0 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x80)
2D9 00000000 SECTC0 notype       Static       | $unwind$?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
2DA 00000000 SECTC1 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 496753E3, selection    5 (pick associative Section 0x80)
2DC 00000000 SECTC1 notype       Static       | $pdata$?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
2DD 00000000 SECTC2 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x94)
2DF 00000000 SECTC2 notype       Static       | $unwind$?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
2E0 00000000 SECTC3 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 496753E3, selection    5 (pick associative Section 0x94)
2E2 00000000 SECTC3 notype       Static       | $pdata$?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z
2E3 00000000 SECTC4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x8E)
2E5 00000000 SECTC4 notype       Static       | $unwind$?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
2E6 00000000 SECTC5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum AF5E2A9E, selection    5 (pick associative Section 0x8E)
2E8 00000000 SECTC5 notype       Static       | $pdata$?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z
2E9 00000000 SECTC6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum B1499479, selection    5 (pick associative Section 0x85)
2EB 00000000 SECTC6 notype       Static       | $unwind$?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
2EC 00000000 SECTC7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 205670FA, selection    5 (pick associative Section 0x85)
2EE 00000000 SECTC7 notype       Static       | $pdata$?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NHH@Z
2EF 00000000 SECTC8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9E6AAF91, selection    5 (pick associative Section 0x73)
2F1 00000000 SECTC8 notype       Static       | $unwind$?_Throw_bad_array_new_length@std@@YAXXZ
2F2 00000000 SECTC9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum B1966C32, selection    5 (pick associative Section 0x73)
2F4 00000000 SECTC9 notype       Static       | $pdata$?_Throw_bad_array_new_length@std@@YAXXZ
2F5 00000000 SECTCA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x5D)
2F7 00000000 SECTCA notype       Static       | $unwind$?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
2F8 00000000 SECTCB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum AF5E2A9E, selection    5 (pick associative Section 0x5D)
2FA 00000000 SECTCB notype       Static       | $pdata$?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z
2FB 00000000 SECTCC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 55A710BB, selection    5 (pick associative Section 0x5B)
2FD 00000000 SECTCC notype       Static       | $unwind$?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
2FE 00000000 SECTCD notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum BE40A839, selection    5 (pick associative Section 0x5B)
300 00000000 SECTCD notype       Static       | $pdata$?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z
301 00000000 SECTCE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum  FC539D1, selection    5 (pick associative Section 0x75)
303 00000000 SECTCE notype       Static       | $unwind$?_Xlen_string@std@@YAXXZ
304 00000000 SECTCF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum BAD438AC, selection    5 (pick associative Section 0x75)
306 00000000 SECTCF notype       Static       | $pdata$?_Xlen_string@std@@YAXXZ
307 00000000 SECTD0 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x81)
309 00000000 SECTD0 notype       Static       | $unwind$?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z
30A 00000000 SECTD1 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2A9379E3, selection    5 (pick associative Section 0x81)
30C 00000000 SECTD1 notype       Static       | $pdata$?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z
30D 00000000 SECTD2 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x76)
30F 00000000 SECTD2 notype       Static       | $unwind$?allocate@?$allocator@D@std@@QEAAPEAD_K@Z
310 00000000 SECTD3 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum B1966C32, selection    5 (pick associative Section 0x76)
312 00000000 SECTD3 notype       Static       | $pdata$?allocate@?$allocator@D@std@@QEAAPEAD_K@Z
313 00000000 SECTD4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x23)
315 00000000 SECTD4 notype       Static       | $unwind$??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
316 00000000 SECTD5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 140D4FB5, selection    5 (pick associative Section 0x23)
318 00000000 SECTD5 notype       Static       | $pdata$??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
319 00000000 SECTD6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A435C62C, selection    5 (pick associative Section 0x67)
31B 00000000 SECTD6 notype       Static       | $unwind$?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
31C 00000000 SECTD7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 299DC2ED, selection    5 (pick associative Section 0x67)
31E 00000000 SECTD7 notype       Static       | $pdata$?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ
31F 00000000 SECTD8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A435C62C, selection    5 (pick associative Section 0x68)
321 00000000 SECTD8 notype       Static       | $unwind$?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
322 00000000 SECTD9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 299DC2ED, selection    5 (pick associative Section 0x68)
324 00000000 SECTD9 notype       Static       | $pdata$?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ
325 00000000 SECTDA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0x65)
327 00000000 SECTDA notype       Static       | $unwind$?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
328 00000000 SECTDB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum ECFC7064, selection    5 (pick associative Section 0x65)
32A 00000000 SECTDB notype       Static       | $pdata$?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ
32B 00000000 SECTDC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 15BCD18D, selection    5 (pick associative Section 0x29)
32D 00000000 SECTDC notype       Static       | $unwind$??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
32E 00000000 SECTDD notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum F9766256, selection    5 (pick associative Section 0x29)
330 00000000 SECTDD notype       Static       | $pdata$??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
331 00000000 SECTDE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x71)
333 00000000 SECTDE notype       Static       | $unwind$?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
334 00000000 SECTDF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2B142464, selection    5 (pick associative Section 0x71)
336 00000000 SECTDF notype       Static       | $pdata$?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ
337 00000000 SECTE0 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x3F)
339 00000000 SECTE0 notype       Static       | $unwind$??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
33A 00000000 SECTE1 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2B142464, selection    5 (pick associative Section 0x3F)
33C 00000000 SECTE1 notype       Static       | $pdata$??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ
33D 00000000 SECTE2 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x26)
33F 00000000 SECTE2 notype       Static       | $unwind$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z
340 00000000 SECTE3 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 1684A93C, selection    5 (pick associative Section 0x26)
342 00000000 SECTE3 notype       Static       | $pdata$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z
343 00000000 SECTE4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 583FB257, selection    5 (pick associative Section 0x28)
345 00000000 SECTE4 notype       Static       | $unwind$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z
346 00000000 SECTE5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 617DCC89, selection    5 (pick associative Section 0x28)
348 00000000 SECTE5 notype       Static       | $pdata$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z
349 00000000 SECTE6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x27)
34B 00000000 SECTE6 notype       Static       | $unwind$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
34C 00000000 SECTE7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 5526F3C6, selection    5 (pick associative Section 0x27)
34E 00000000 SECTE7 notype       Static       | $pdata$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z
34F 00000000 SECTE8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x60)
351 00000000 SECTE8 notype       Static       | $unwind$?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
352 00000000 SECTE9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  B42549E, selection    5 (pick associative Section 0x60)
354 00000000 SECTE9 notype       Static       | $pdata$?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z
355 00000000 SECTEA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x25)
357 00000000 SECTEA notype       Static       | $unwind$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
358 00000000 SECTEB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 1C41A025, selection    5 (pick associative Section 0x25)
35A 00000000 SECTEB notype       Static       | $pdata$??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z
35B 00000000 SECTEC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6DEA565B, selection    5 (pick associative Section 0x72)
35D 00000000 SECTEC notype       Static       | $unwind$?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
35E 00000000 SECTED notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D49DA313, selection    5 (pick associative Section 0x72)
360 00000000 SECTED notype       Static       | $pdata$?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
361 00000000 SECTEE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x40)
363 00000000 SECTEE notype       Static       | $unwind$??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
364 00000000 SECTEF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum F3B36B4F, selection    5 (pick associative Section 0x40)
366 00000000 SECTEF notype       Static       | $pdata$??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ
367 00000000 SECTF0 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x77)
369 00000000 SECTF0 notype       Static       | $unwind$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z
36A 00000000 SECTF1 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x77)
36C 00000000 SECTF1 notype       Static       | $pdata$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z
36D 00000000 SECTF2 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 29D8D673, selection    5 (pick associative Section 0x79)
36F 00000000 SECTF2 notype       Static       | $unwind$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
370 00000000 SECTF3 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum A8C40105, selection    5 (pick associative Section 0x79)
372 00000000 SECTF3 notype       Static       | $pdata$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z
373 00000000 SECTF4 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x78)
375 00000000 SECTF4 notype       Static       | $unwind$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
376 00000000 SECTF5 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 8F085A64, selection    5 (pick associative Section 0x78)
378 00000000 SECTF5 notype       Static       | $pdata$?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z
379 00000000 SECTF6 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x7B)
37B 00000000 SECTF6 notype       Static       | $unwind$?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
37C 00000000 SECTF7 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 21D12D7D, selection    5 (pick associative Section 0x7B)
37E 00000000 SECTF7 notype       Static       | $pdata$?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ
37F 00000000 SECTF8 notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 359A506C, selection    5 (pick associative Section 0x91)
381 00000000 SECTF8 notype       Static       | $unwind$?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
382 00000000 SECTF9 notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum C561B289, selection    5 (pick associative Section 0x91)
384 00000000 SECTF9 notype       Static       | $pdata$?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ
385 00000000 SECTFA notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0x83)
387 00000000 SECTFA notype       Static       | $unwind$?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ
388 00000000 SECTFB notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum ECFC7064, selection    5 (pick associative Section 0x83)
38A 00000000 SECTFB notype       Static       | $pdata$?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ
38B 00000000 SECTFC notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 583FB257, selection    5 (pick associative Section 0x5F)
38D 00000000 SECTFC notype       Static       | $unwind$?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
38E 00000000 SECTFD notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 6DA5B38C, selection    5 (pick associative Section 0x5F)
390 00000000 SECTFD notype       Static       | $pdata$?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z
391 00000000 SECTFE notype       Static       | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x5E)
393 00000000 SECTFE notype       Static       | $unwind$?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
394 00000000 SECTFF notype       Static       | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  B42549E, selection    5 (pick associative Section 0x5E)
396 00000000 SECTFF notype       Static       | $pdata$?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z
397 00000000 SECT100 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum  DD7168C, selection    5 (pick associative Section 0x74)
399 00000000 SECT100 notype       Static      | $unwind$?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
39A 00000000 SECT101 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 3148F25D, selection    5 (pick associative Section 0x74)
39C 00000000 SECT101 notype       Static      | $pdata$?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ
39D 00000000 SECT102 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x6F)
39F 00000000 SECT102 notype       Static      | $unwind$?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
3A0 00000000 SECT103 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 3F196BD1, selection    5 (pick associative Section 0x6F)
3A2 00000000 SECT103 notype       Static      | $pdata$?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z
3A3 00000000 SECT104 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x63)
3A5 00000000 SECT104 notype       Static      | $unwind$?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
3A6 00000000 SECT105 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 21D12D7D, selection    5 (pick associative Section 0x63)
3A8 00000000 SECT105 notype       Static      | $pdata$?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ
3A9 00000000 SECT106 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x64)
3AB 00000000 SECT106 notype       Static      | $unwind$?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
3AC 00000000 SECT107 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 21D12D7D, selection    5 (pick associative Section 0x64)
3AE 00000000 SECT107 notype       Static      | $pdata$?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ
3AF 00000000 SECT108 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x3E)
3B1 00000000 SECT108 notype       Static      | $unwind$??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
3B2 00000000 SECT109 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2B142464, selection    5 (pick associative Section 0x3E)
3B4 00000000 SECT109 notype       Static      | $pdata$??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ
3B5 00000000 SECT10A notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x3A)
3B7 00000000 SECT10A notype       Static      | $unwind$??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
3B8 00000000 SECT10B notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 9047414F, selection    5 (pick associative Section 0x3A)
3BA 00000000 SECT10B notype       Static      | $pdata$??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
3BB 00000000 SECT10C notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x4A)
3BD 00000000 SECT10C notype       Static      | $unwind$??1runtime_error@std@@UEAA@XZ
3BE 00000000 SECT10D notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x4A)
3C0 00000000 SECT10D notype       Static      | $pdata$??1runtime_error@std@@UEAA@XZ
3C1 00000000 SECT10E notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x39)
3C3 00000000 SECT10E notype       Static      | $unwind$??0runtime_error@std@@QEAA@AEBV01@@Z
3C4 00000000 SECT10F notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x39)
3C6 00000000 SECT10F notype       Static      | $pdata$??0runtime_error@std@@QEAA@AEBV01@@Z
3C7 00000000 SECT110 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x58)
3C9 00000000 SECT110 notype       Static      | $unwind$??_Gruntime_error@std@@UEAAPEAXI@Z
3CA 00000000 SECT111 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x58)
3CC 00000000 SECT111 notype       Static      | $pdata$??_Gruntime_error@std@@UEAAPEAXI@Z
3CD 00000000 SECT112 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum  FC539D1, selection    5 (pick associative Section 0x8D)
3CF 00000000 SECT112 notype       Static      | $unwind$?iostream_category@std@@YAAEBVerror_category@1@XZ
3D0 00000000 SECT113 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 158A1232, selection    5 (pick associative Section 0x8D)
3D2 00000000 SECT113 notype       Static      | $pdata$?iostream_category@std@@YAAEBVerror_category@1@XZ
3D3 00000000 SECT114 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x82)
3D5 00000000 SECT114 notype       Static      | $unwind$?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z
3D6 00000000 SECT115 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 85CD537D, selection    5 (pick associative Section 0x82)
3D8 00000000 SECT115 notype       Static      | $pdata$?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z
3D9 00000000 SECT116 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 46F4DE86, selection    5 (pick associative Section 0x87)
3DB 00000000 SECT116 notype       Static      | $unwind$?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z
3DC 00000000 SECT117 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 9047414F, selection    5 (pick associative Section 0x87)
3DE 00000000 SECT117 notype       Static      | $pdata$?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z
3DF 00000000 SECT118 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 583FB257, selection    5 (pick associative Section 0x86)
3E1 00000000 SECT118 notype       Static      | $unwind$?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z
3E2 00000000 SECT119 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum CE23E617, selection    5 (pick associative Section 0x86)
3E4 00000000 SECT119 notype       Static      | $pdata$?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z
3E5 00000000 SECT11A notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x4E)
3E7 00000000 SECT11A notype       Static      | $unwind$??8error_category@std@@QEBA_NAEBV01@@Z
3E8 00000000 SECT11B notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 86C3E873, selection    5 (pick associative Section 0x4E)
3EA 00000000 SECT11B notype       Static      | $pdata$??8error_category@std@@QEBA_NAEBV01@@Z
3EB 00000000 SECT11C notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0xD)
3ED 00000000 SECT11C notype       Static      | $unwind$??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
3EE 00000000 SECT11D notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 69312319, selection    5 (pick associative Section 0xD)
3F0 00000000 SECT11D notype       Static      | $pdata$??$_Bit_cast@_KT_Addr_storage@error_category@std@@$0A@@std@@YA_KAEBT_Addr_storage@error_category@0@@Z
3F1 00000000 SECT11E notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x93)
3F3 00000000 SECT11E notype       Static      | $unwind$?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ
3F4 00000000 SECT11F notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum DBA9F425, selection    5 (pick associative Section 0x93)
3F6 00000000 SECT11F notype       Static      | $pdata$?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ
3F7 00000000 SECT120 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x4F)
3F9 00000000 SECT120 notype       Static      | $unwind$??8std@@YA_NAEBVerror_condition@0@0@Z
3FA 00000000 SECT121 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 3D908D58, selection    5 (pick associative Section 0x4F)
3FC 00000000 SECT121 notype       Static      | $pdata$??8std@@YA_NAEBVerror_condition@0@0@Z
3FD 00000000 SECT122 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x8F)
3FF 00000000 SECT122 notype       Static      | $unwind$?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z
400 00000000 SECT123 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 62737787, selection    5 (pick associative Section 0x8F)
402 00000000 SECT123 notype       Static      | $pdata$?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z
403 00000000 SECT124 notype       Static      | .xdata
    Section length   10, #relocs    1, #linenums    0, checksum CF933A81, selection    5 (pick associative Section 0x66)
405 00000000 SECT124 notype       Static      | $unwind$?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z
406 00000000 SECT125 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 782FA1BE, selection    5 (pick associative Section 0x66)
408 00000000 SECT125 notype       Static      | $pdata$?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z
409 00000000 SECT126 notype       Static      | .voltbl
    Section length    2, #relocs    0, #linenums    0, checksum F2010622, selection    5 (pick associative Section 0x66)
40B 00000000 SECT126 notype       Static      | _volmd
40C 00000000 SECT127 notype       Static      | .xdata
    Section length   14, #relocs    1, #linenums    0, checksum 8154DA2E, selection    5 (pick associative Section 0x2C)
40E 00000000 SECT127 notype       Static      | $unwind$??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
40F 00000000 SECT128 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 19526D37, selection    5 (pick associative Section 0x2C)
411 00000000 SECT128 notype       Static      | $pdata$??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z
412 00000000 SECT129 notype       Static      | .voltbl
    Section length    2, #relocs    0, #linenums    0, checksum FC6CE83D, selection    5 (pick associative Section 0x2C)
414 00000000 SECT129 notype       Static      | _volmd
415 00000000 SECT12A notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x44)
417 00000000 SECT12A notype       Static      | $unwind$??1_System_error@std@@UEAA@XZ
418 00000000 SECT12B notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x44)
41A 00000000 SECT12B notype       Static      | $pdata$??1_System_error@std@@UEAA@XZ
41B 00000000 SECT12C notype       Static      | .xdata
    Section length    C, #relocs    0, #linenums    0, checksum 608D0A49, selection    5 (pick associative Section 0x2D)
41D 00000000 SECT12C notype       Static      | $unwind$??0_System_error@std@@QEAA@AEBV01@@Z
41E 00000000 SECT12D notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum DBA9F425, selection    5 (pick associative Section 0x2D)
420 00000000 SECT12D notype       Static      | $pdata$??0_System_error@std@@QEAA@AEBV01@@Z
421 00000000 SECT12E notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x53)
423 00000000 SECT12E notype       Static      | $unwind$??_G_System_error@std@@UEAAPEAXI@Z
424 00000000 SECT12F notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x53)
426 00000000 SECT12F notype       Static      | $pdata$??_G_System_error@std@@UEAAPEAXI@Z
427 00000000 SECT130 notype       Static      | .xdata
    Section length   14, #relocs    1, #linenums    0, checksum 5B1CEC62, selection    5 (pick associative Section 0x3D)
429 00000000 SECT130 notype       Static      | $unwind$??0system_error@std@@QEAA@Verror_code@1@PEBD@Z
42A 00000000 SECT131 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum B485A120, selection    5 (pick associative Section 0x3D)
42C 00000000 SECT131 notype       Static      | $pdata$??0system_error@std@@QEAA@Verror_code@1@PEBD@Z
42D 00000000 SECT132 notype       Static      | .voltbl
    Section length    2, #relocs    0, #linenums    0, checksum 593E351A, selection    5 (pick associative Section 0x3D)
42F 00000000 SECT132 notype       Static      | _volmd
430 00000000 SECT133 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x4C)
432 00000000 SECT133 notype       Static      | $unwind$??1system_error@std@@UEAA@XZ
433 00000000 SECT134 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x4C)
435 00000000 SECT134 notype       Static      | $pdata$??1system_error@std@@UEAA@XZ
436 00000000 SECT135 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x3C)
438 00000000 SECT135 notype       Static      | $unwind$??0system_error@std@@QEAA@AEBV01@@Z
439 00000000 SECT136 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x3C)
43B 00000000 SECT136 notype       Static      | $pdata$??0system_error@std@@QEAA@AEBV01@@Z
43C 00000000 SECT137 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x59)
43E 00000000 SECT137 notype       Static      | $unwind$??_Gsystem_error@std@@UEAAPEAXI@Z
43F 00000000 SECT138 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x59)
441 00000000 SECT138 notype       Static      | $pdata$??_Gsystem_error@std@@UEAAPEAXI@Z
442 00000000 SECT139 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 583FB257, selection    5 (pick associative Section 0x92)
444 00000000 SECT139 notype       Static      | $unwind$?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z
445 00000000 SECT13A notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 5E64A758, selection    5 (pick associative Section 0x92)
447 00000000 SECT13A notype       Static      | $pdata$?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z
448 00000000 SECT13B notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x42)
44A 00000000 SECT13B notype       Static      | $unwind$??1_Iostream_error_category2@std@@UEAA@XZ
44B 00000000 SECT13C notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x42)
44D 00000000 SECT13C notype       Static      | $pdata$??1_Iostream_error_category2@std@@UEAA@XZ
44E 00000000 SECT13D notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x52)
450 00000000 SECT13D notype       Static      | $unwind$??_G_Iostream_error_category2@std@@UEAAPEAXI@Z
451 00000000 SECT13E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x52)
453 00000000 SECT13E notype       Static      | $pdata$??_G_Iostream_error_category2@std@@UEAAPEAXI@Z
454 00000000 SECT13F notype       Static      | .xdata
    Section length    C, #relocs    0, #linenums    0, checksum AED75028, selection    5 (pick associative Section 0x38)
456 00000000 SECT13F notype       Static      | $unwind$??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z
457 00000000 SECT140 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 86C3E873, selection    5 (pick associative Section 0x38)
459 00000000 SECT140 notype       Static      | $pdata$??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z
45A 00000000 SECT141 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x49)
45C 00000000 SECT141 notype       Static      | $unwind$??1failure@ios_base@std@@UEAA@XZ
45D 00000000 SECT142 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 63F42A00, selection    5 (pick associative Section 0x49)
45F 00000000 SECT142 notype       Static      | $pdata$??1failure@ios_base@std@@UEAA@XZ
460 00000000 SECT143 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x37)
462 00000000 SECT143 notype       Static      | $unwind$??0failure@ios_base@std@@QEAA@AEBV012@@Z
463 00000000 SECT144 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 43A25AFA, selection    5 (pick associative Section 0x37)
465 00000000 SECT144 notype       Static      | $pdata$??0failure@ios_base@std@@QEAA@AEBV012@@Z
466 00000000 SECT145 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x57)
468 00000000 SECT145 notype       Static      | $unwind$??_Gfailure@ios_base@std@@UEAAPEAXI@Z
469 00000000 SECT146 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D2624632, selection    5 (pick associative Section 0x57)
46B 00000000 SECT146 notype       Static      | $pdata$??_Gfailure@ios_base@std@@UEAAPEAXI@Z
46C 00000000 SECT147 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A7C1C506, selection    5 (pick associative Section 0x7F)
46E 00000000 SECT147 notype       Static      | $unwind$?clear@ios_base@std@@QEAAXH_N@Z
46F 00000000 SECT148 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 45BF2CE6, selection    5 (pick associative Section 0x7F)
471 00000000 SECT148 notype       Static      | $pdata$?clear@ios_base@std@@QEAAXH_N@Z
472 00000000 SECT149 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A435C62C, selection    5 (pick associative Section 0x8C)
474 00000000 SECT149 notype       Static      | $unwind$?good@ios_base@std@@QEBA_NXZ
475 00000000 SECT14A notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  B42549E, selection    5 (pick associative Section 0x8C)
477 00000000 SECT14A notype       Static      | $pdata$?good@ios_base@std@@QEBA_NXZ
478 00000000 SECT14B notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 8CDF4DDB, selection    5 (pick associative Section 0xA2)
47A 00000000 SECT14B notype       Static      | $unwind$?width@ios_base@std@@QEAA_J_J@Z
47B 00000000 SECT14C notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum C7E85400, selection    5 (pick associative Section 0xA2)
47D 00000000 SECT14C notype       Static      | $pdata$?width@ios_base@std@@QEAA_J_J@Z
47E 00000000 SECT14D notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum  FC539D1
480 00000000 SECT14D notype       Static      | $unwind$main
481 00000000 SECT14E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 69312319
483 00000000 SECT14E notype       Static      | $pdata$main
484 00000000 SECT14F notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 46F4DE86, selection    5 (pick associative Section 0x7E)
486 00000000 SECT14F notype       Static      | $unwind$?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
487 00000000 SECT150 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D16CFD3C, selection    5 (pick associative Section 0x7E)
489 00000000 SECT150 notype       Static      | $pdata$?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
48A 00000000 SECT151 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 7EB99866, selection    5 (pick associative Section 0x9A)
48C 00000000 SECT151 notype       Static      | $unwind$?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
48D 00000000 SECT152 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 562848C8, selection    5 (pick associative Section 0x9A)
48F 00000000 SECT152 notype       Static      | $pdata$?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z
490 00000000 SECT153 notype       Static      | .xdata
    Section length   10, #relocs    2, #linenums    0, checksum C3AC5CE6, selection    5 (pick associative Section 0x6A)
492 00000000 SECT153 notype       Static      | $unwind$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
493 00000000 SECT154 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D6F6D6A7, selection    5 (pick associative Section 0x6A)
495 00000000 SECT154 notype       Static      | $pdata$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
496 00000000 SECT155 notype       Static      | .xdata
    Section length    D, #relocs    3, #linenums    0, checksum EE0475B7, selection    5 (pick associative Section 0x6A)
498 00000000 SECT155 notype       Static      | $cppxdata$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
499 00000000 SECT156 notype       Static      | .xdata
    Section length    3, #relocs    0, #linenums    0, checksum D26732B0, selection    5 (pick associative Section 0x6A)
49B 00000000 SECT156 notype       Static      | $stateUnwindMap$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
49C 00000000 SECT157 notype       Static      | .xdata
    Section length    8, #relocs    1, #linenums    0, checksum 38E5541D, selection    5 (pick associative Section 0x6A)
49E 00000000 SECT157 notype       Static      | $tryMap$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
49F 00000000 SECT158 notype       Static      | .xdata
    Section length    6, #relocs    1, #linenums    0, checksum 4DC8A10B, selection    5 (pick associative Section 0x6A)
4A1 00000000 SECT158 notype       Static      | $handlerMap$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
4A2 00000000 SECT159 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A48716DB, selection    5 (pick associative Section 0x6A)
4A4 00000000 SECT159 notype       Static      | $ip2state$?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ
4A5 00000000 SECT15A notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 5071D933, selection    5 (pick associative Section 0x6A)
4A7 00000000 SECT15A notype       Static      | $unwind$?catch$0@?0??_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ@4HA
4A8 00000000 SECT15B notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 21D12D7D, selection    5 (pick associative Section 0x6A)
4AA 00000000 SECT15B notype       Static      | $pdata$?catch$0@?0??_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ@4HA
4AB 00000000 SECT15C notype       Static      | .voltbl
    Section length    1, #relocs    0, #linenums    0, checksum        0, selection    5 (pick associative Section 0x6B)
4AD 00000000 SECT15C notype       Static      | _volmd
4AE 00000000 SECT15D notype       Static      | .xdata
    Section length   10, #relocs    2, #linenums    0, checksum 62057096, selection    5 (pick associative Section 0x8A)
4B0 00000000 SECT15D notype       Static      | $unwind$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4B1 00000000 SECT15E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 1099DF20, selection    5 (pick associative Section 0x8A)
4B3 00000000 SECT15E notype       Static      | $pdata$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4B4 00000000 SECT15F notype       Static      | .xdata
    Section length    D, #relocs    3, #linenums    0, checksum EE0475B7, selection    5 (pick associative Section 0x8A)
4B6 00000000 SECT15F notype       Static      | $cppxdata$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4B7 00000000 SECT160 notype       Static      | .xdata
    Section length    3, #relocs    0, #linenums    0, checksum D26732B0, selection    5 (pick associative Section 0x8A)
4B9 00000000 SECT160 notype       Static      | $stateUnwindMap$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4BA 00000000 SECT161 notype       Static      | .xdata
    Section length    8, #relocs    1, #linenums    0, checksum 38E5541D, selection    5 (pick associative Section 0x8A)
4BC 00000000 SECT161 notype       Static      | $tryMap$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4BD 00000000 SECT162 notype       Static      | .xdata
    Section length    6, #relocs    1, #linenums    0, checksum 4DC8A10B, selection    5 (pick associative Section 0x8A)
4BF 00000000 SECT162 notype       Static      | $handlerMap$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4C0 00000000 SECT163 notype       Static      | .xdata
    Section length    7, #relocs    0, #linenums    0, checksum 8CDAE381, selection    5 (pick associative Section 0x8A)
4C2 00000000 SECT163 notype       Static      | $ip2state$?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ
4C3 00000000 SECT164 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 5071D933, selection    5 (pick associative Section 0x8A)
4C5 00000000 SECT164 notype       Static      | $unwind$?catch$0@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA
4C6 00000000 SECT165 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum E537C273, selection    5 (pick associative Section 0x8A)
4C8 00000000 SECT165 notype       Static      | $pdata$?catch$0@?0??flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ@4HA
4C9 00000000 SECT166 notype       Static      | .voltbl
    Section length    1, #relocs    0, #linenums    0, checksum        0, selection    5 (pick associative Section 0x8B)
4CB 00000000 SECT166 notype       Static      | _volmd
4CC 00000000 SECT167 notype       Static      | .xdata
    Section length   10, #relocs    2, #linenums    0, checksum 5BD48FEC, selection    5 (pick associative Section 0x7)
4CE 00000000 SECT167 notype       Static      | $unwind$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4CF 00000000 SECT168 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum E67B0280, selection    5 (pick associative Section 0x7)
4D1 00000000 SECT168 notype       Static      | $pdata$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4D2 00000000 SECT169 notype       Static      | .xdata
    Section length    D, #relocs    3, #linenums    0, checksum EE0475B7, selection    5 (pick associative Section 0x7)
4D4 00000000 SECT169 notype       Static      | $cppxdata$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4D5 00000000 SECT16A notype       Static      | .xdata
    Section length    3, #relocs    0, #linenums    0, checksum D26732B0, selection    5 (pick associative Section 0x7)
4D7 00000000 SECT16A notype       Static      | $stateUnwindMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4D8 00000000 SECT16B notype       Static      | .xdata
    Section length    8, #relocs    1, #linenums    0, checksum 38E5541D, selection    5 (pick associative Section 0x7)
4DA 00000000 SECT16B notype       Static      | $tryMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4DB 00000000 SECT16C notype       Static      | .xdata
    Section length    6, #relocs    1, #linenums    0, checksum 4DC8A10B, selection    5 (pick associative Section 0x7)
4DD 00000000 SECT16C notype       Static      | $handlerMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4DE 00000000 SECT16D notype       Static      | .xdata
    Section length    9, #relocs    0, #linenums    0, checksum D665DF00, selection    5 (pick associative Section 0x7)
4E0 00000000 SECT16D notype       Static      | $ip2state$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z
4E1 00000000 SECT16E notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 5071D933, selection    5 (pick associative Section 0x7)
4E3 00000000 SECT16E notype       Static      | $unwind$?catch$0@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA
4E4 00000000 SECT16F notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum E537C273, selection    5 (pick associative Section 0x7)
4E6 00000000 SECT16F notype       Static      | $pdata$?catch$0@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA
4E7 00000000 SECT170 notype       Static      | .voltbl
    Section length    1, #relocs    0, #linenums    0, checksum        0, selection    5 (pick associative Section 0x8)
4E9 00000000 SECT170 notype       Static      | _volmd
4EA 00000000 SECT171 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 7EB99866, selection    5 (pick associative Section 0x6)
4EC 00000000 SECT171 notype       Static      | $unwind$??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
4ED 00000000 SECT172 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  1875D87, selection    5 (pick associative Section 0x6)
4EF 00000000 SECT172 notype       Static      | $pdata$??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z
4F0 00000000 SECT173 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum E7553388, selection    5 (pick associative Section 0x5)
4F2 00000000 SECT173 notype       Static      | $unwind$??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
4F3 00000000 SECT174 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 205670FA, selection    5 (pick associative Section 0x5)
4F5 00000000 SECT174 notype       Static      | $pdata$??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z
4F6 00000000 SECT175 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C9902417, selection    5 (pick associative Section 0xE)
4F8 00000000 SECT175 notype       Static      | $unwind$??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
4F9 00000000 SECT176 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 71068094, selection    5 (pick associative Section 0xE)
4FB 00000000 SECT176 notype       Static      | $pdata$??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
4FC 00000000 SECT177 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 8147EF37, selection    5 (pick associative Section 0xF)
4FE 00000000 SECT177 notype       Static      | $unwind$??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
4FF 00000000 SECT178 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 34B9AC72, selection    5 (pick associative Section 0xF)
501 00000000 SECT178 notype       Static      | $pdata$??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z
502 00000000 SECT179 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 8D3961AC, selection    5 (pick associative Section 0x51)
504 00000000 SECT179 notype       Static      | $unwind$??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z
505 00000000 SECT17A notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 111E82A7, selection    5 (pick associative Section 0x51)
507 00000000 SECT17A notype       Static      | $pdata$??R<lambda_65e615be2a453ca0576c979606f46740>@@QEBA@QEADQEBD_K12@Z
508 00000000 SECT17B notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 31B8F018, selection    5 (pick associative Section 0x18)
50A 00000000 SECT17B notype       Static      | $unwind$??$_Reallocate_grow_by@V<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@Z
50B 00000000 SECT17C notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 9EF44BFE, selection    5 (pick associative Section 0x18)
50D 00000000 SECT17C notype       Static      | $pdata$??$_Reallocate_grow_by@V<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_65e615be2a453ca0576c979606f46740>@@PEBD_K@Z
50E 00000000 SECT17D notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x10)
510 00000000 SECT17D notype       Static      | $unwind$??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z
511 00000000 SECT17E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum ADD7CC17, selection    5 (pick associative Section 0x10)
513 00000000 SECT17E notype       Static      | $pdata$??$_Construct_in_place@PEADAEAPEAD@std@@YAXAEAPEAD0@Z
514 00000000 SECT17F notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 8CDF4DDB, selection    5 (pick associative Section 0x20)
516 00000000 SECT17F notype       Static      | $unwind$??$max@_K@std@@YAAEB_KAEB_K0@Z
517 00000000 SECT180 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2358CBF4, selection    5 (pick associative Section 0x20)
519 00000000 SECT180 notype       Static      | $pdata$??$max@_K@std@@YAAEB_KAEB_K0@Z
51A 00000000 SECT181 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0x13)
51C 00000000 SECT181 notype       Static      | $unwind$??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z
51D 00000000 SECT182 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 9047414F, selection    5 (pick associative Section 0x13)
51F 00000000 SECT182 notype       Static      | $pdata$??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z
520 00000000 SECT183 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 8CDF4DDB, selection    5 (pick associative Section 0x21)
522 00000000 SECT183 notype       Static      | $unwind$??$min@_K@std@@YAAEB_KAEB_K0@Z
523 00000000 SECT184 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 2358CBF4, selection    5 (pick associative Section 0x21)
525 00000000 SECT184 notype       Static      | $pdata$??$min@_K@std@@YAAEB_KAEB_K0@Z
526 00000000 SECT185 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x2B)
528 00000000 SECT185 notype       Static      | $unwind$??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
529 00000000 SECT186 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  9CBB217, selection    5 (pick associative Section 0x2B)
52B 00000000 SECT186 notype       Static      | $pdata$??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
52C 00000000 SECT187 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A435C62C, selection    5 (pick associative Section 0x43)
52E 00000000 SECT187 notype       Static      | $unwind$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
52F 00000000 SECT188 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 86C3E873, selection    5 (pick associative Section 0x43)
531 00000000 SECT188 notype       Static      | $pdata$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
532 00000000 SECT189 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x3B)
534 00000000 SECT189 notype       Static      | $unwind$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
535 00000000 SECT18A notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 44387161, selection    5 (pick associative Section 0x3B)
537 00000000 SECT18A notype       Static      | $pdata$??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z
538 00000000 SECT18B notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum A435C62C, selection    5 (pick associative Section 0x4B)
53A 00000000 SECT18B notype       Static      | $unwind$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
53B 00000000 SECT18C notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 998CF358, selection    5 (pick associative Section 0x4B)
53D 00000000 SECT18C notype       Static      | $pdata$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ
53E 00000000 SECT18D notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x96)
540 00000000 SECT18D notype       Static      | $unwind$?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
541 00000000 SECT18E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 69312319, selection    5 (pick associative Section 0x96)
543 00000000 SECT18E notype       Static      | $pdata$?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ
544 00000000 SECT18F notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum DF187568, selection    5 (pick associative Section 0x9B)
546 00000000 SECT18F notype       Static      | $unwind$?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
547 00000000 SECT190 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum AC509190, selection    5 (pick associative Section 0x9B)
549 00000000 SECT190 notype       Static      | $pdata$?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z
54A 00000000 SECT191 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 6072F4B7, selection    5 (pick associative Section 0x9C)
54C 00000000 SECT191 notype       Static      | $unwind$?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z
54D 00000000 SECT192 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum C7E85400, selection    5 (pick associative Section 0x9C)
54F 00000000 SECT192 notype       Static      | $pdata$?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z
550 00000000 SECT193 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0x6D)
552 00000000 SECT193 notype       Static      | $unwind$?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ
553 00000000 SECT194 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 1DC6FDA2, selection    5 (pick associative Section 0x6D)
555 00000000 SECT194 notype       Static      | $pdata$?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ
556 00000000 SECT195 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0x6C)
558 00000000 SECT195 notype       Static      | $unwind$?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ
559 00000000 SECT196 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 562848C8, selection    5 (pick associative Section 0x6C)
55B 00000000 SECT196 notype       Static      | $pdata$?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ
55C 00000000 SECT197 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0xB)
55E 00000000 SECT197 notype       Static      | $unwind$??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
55F 00000000 SECT198 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum  84CEF90, selection    5 (pick associative Section 0xB)
561 00000000 SECT198 notype       Static      | $pdata$??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z
562 00000000 SECT199 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum FC45C01B, selection    5 (pick associative Section 0x11)
564 00000000 SECT199 notype       Static      | $unwind$??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
565 00000000 SECT19A notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum ADD7CC17, selection    5 (pick associative Section 0x11)
567 00000000 SECT19A notype       Static      | $pdata$??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z
568 00000000 SECT19B notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 4712F2F1, selection    5 (pick associative Section 0x17)
56A 00000000 SECT19B notype       Static      | $unwind$??$_Max_limit@_J@std@@YA_JXZ
56B 00000000 SECT19C notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 21D12D7D, selection    5 (pick associative Section 0x17)
56D 00000000 SECT19C notype       Static      | $pdata$??$_Max_limit@_J@std@@YA_JXZ
56E 00000000 SECT19D notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum C40886FB, selection    5 (pick associative Section 0xA)
570 00000000 SECT19D notype       Static      | $unwind$??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z
571 00000000 SECT19E notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum B1966C32, selection    5 (pick associative Section 0xA)
573 00000000 SECT19E notype       Static      | $pdata$??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z
574 00000000 SECT19F notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum 9C7880CC, selection    5 (pick associative Section 0x9)
576 00000000 SECT19F notype       Static      | $unwind$??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
577 00000000 SECT1A0 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum D8A74F2B, selection    5 (pick associative Section 0x9)
579 00000000 SECT1A0 notype       Static      | $pdata$??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
57A 00000000 SECT1A1 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum D4AF4BEC, selection    5 (pick associative Section 0x15)
57C 00000000 SECT1A1 notype       Static      | $unwind$??$_Get_size_of_n@$00@std@@YA_K_K@Z
57D 00000000 SECT1A2 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 767E3832, selection    5 (pick associative Section 0x15)
57F 00000000 SECT1A2 notype       Static      | $pdata$??$_Get_size_of_n@$00@std@@YA_K_K@Z
580 00000000 SECT1A3 notype       Static      | .xdata
    Section length    8, #relocs    0, #linenums    0, checksum  DD7168C, selection    5 (pick associative Section 0xC)
582 00000000 SECT1A3 notype       Static      | $unwind$??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
583 00000000 SECT1A4 notype       Static      | .pdata
    Section length    C, #relocs    3, #linenums    0, checksum 59FE8CC3, selection    5 (pick associative Section 0xC)
585 00000000 SECT1A4 notype       Static      | $pdata$??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z
586 00000000 SECT1A5 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
588 00000008 SECT1A5 notype       External    | ??_7exception@std@@6B@ (const std::exception::`vftable')
589 00000000 SECT1A6 notype       Static      | .rdata
    Section length   12, #relocs    0, #linenums    0, checksum D6073BF9, selection    2 (pick any)
58B 00000000 SECT1A6 notype       External    | ??_C@_0BC@EOODALEL@Unknown?5exception@ (`string')
58C 00000000 SECT1A7 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
58E 00000008 SECT1A7 notype       External    | ??_7bad_alloc@std@@6B@ (const std::bad_alloc::`vftable')
58F 00000000 SECT1A8 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
591 00000008 SECT1A8 notype       External    | ??_7bad_array_new_length@std@@6B@ (const std::bad_array_new_length::`vftable')
592 00000000 SECT1A9 notype       Static      | .rdata
    Section length   15, #relocs    0, #linenums    0, checksum 16290EAD, selection    2 (pick any)
594 00000000 SECT1A9 notype       External    | ??_C@_0BF@KINCDENJ@bad?5array?5new?5length@ (`string')
595 00000000 SECT1AA notype       Static      | .data$r
    Section length   24, #relocs    1, #linenums    0, checksum 54BC55F2, selection    2 (pick any)
597 00000000 SECT1AA notype       External    | ??_R0?AVexception@std@@@8 (class std::exception `RTTI Type Descriptor')
598 00000000 SECT1AB notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum BC1A9E34, selection    2 (pick any)
59A 00000000 SECT1AB notype       External    | _CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24
59B 00000000 UNDEF  notype       External     | ??_7type_info@@6B@ (const type_info::`vftable')
59C 00000000 SECT1AC notype       Static      | .xdata$x
    Section length   1C, #relocs    2, #linenums    0, checksum        0, selection    2 (pick any)
59E 00000000 SECT1AC notype       External    | _TI3?AVbad_array_new_length@std@@
59F 00000000 SECT1AD notype       Static      | .xdata$x
    Section length   1C, #relocs    3, #linenums    0, checksum 29C8B4F2, selection    2 (pick any)
5A1 00000000 SECT1AD notype       External    | _CTA3?AVbad_array_new_length@std@@
5A2 00000000 SECT1AE notype       Static      | .data$r
    Section length   2F, #relocs    1, #linenums    0, checksum C55A8E1A, selection    2 (pick any)
5A4 00000000 SECT1AE notype       External    | ??_R0?AVbad_array_new_length@std@@@8 (class std::bad_array_new_length `RTTI Type Descriptor')
5A5 00000000 SECT1AF notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum BC1A9E34, selection    2 (pick any)
5A7 00000000 SECT1AF notype       External    | _CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24
5A8 00000000 SECT1B0 notype       Static      | .data$r
    Section length   24, #relocs    1, #linenums    0, checksum 3D1A5EE6, selection    2 (pick any)
5AA 00000000 SECT1B0 notype       External    | ??_R0?AVbad_alloc@std@@@8 (class std::bad_alloc `RTTI Type Descriptor')
5AB 00000000 SECT1B1 notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum A7454FE4, selection    2 (pick any)
5AD 00000000 SECT1B1 notype       External    | _CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24
5AE 00000000 SECT1B2 notype       Static      | .rdata
    Section length   10, #relocs    0, #linenums    0, checksum 869C5FA0, selection    2 (pick any)
5B0 00000000 SECT1B2 notype       External    | ??_C@_0BA@JFNIOLAK@string?5too?5long@ (`string')
5B1 00000000 SECT1B3 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
5B3 00000008 SECT1B3 notype       External    | ??_7runtime_error@std@@6B@ (const std::runtime_error::`vftable')
5B4 00000000 SECT1B4 notype       Static      | .data$r
    Section length   28, #relocs    1, #linenums    0, checksum D357CA60, selection    2 (pick any)
5B6 00000000 SECT1B4 notype       External    | ??_R0?AVruntime_error@std@@@8 (class std::runtime_error `RTTI Type Descriptor')
5B7 00000000 SECT1B5 notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum BC1A9E34, selection    2 (pick any)
5B9 00000000 SECT1B5 notype       External    | _CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24
5BA 00000000 SECT1B6 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
5BC 00000008 SECT1B6 notype       External    | ??_7_System_error@std@@6B@ (const std::_System_error::`vftable')
5BD 00000000 SECT1B7 notype       Static      | .rdata
    Section length    3, #relocs    0, #linenums    0, checksum BC7844E4, selection    2 (pick any)
5BF 00000000 SECT1B7 notype       External    | ??_C@_02LMMGGCAJ@?3?5@ (`string')
5C0 00000000 SECT1B8 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
5C2 00000008 SECT1B8 notype       External    | ??_7system_error@std@@6B@ (const std::system_error::`vftable')
5C3 00000000 SECT1B9 notype       Static      | .data$r
    Section length   27, #relocs    1, #linenums    0, checksum E248111D, selection    2 (pick any)
5C5 00000000 SECT1B9 notype       External    | ??_R0?AVsystem_error@std@@@8 (class std::system_error `RTTI Type Descriptor')
5C6 00000000 SECT1BA notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum 39D7CD49, selection    2 (pick any)
5C8 00000000 SECT1BA notype       External    | _CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40
5C9 00000000 SECT1BB notype       Static      | .data$r
    Section length   28, #relocs    1, #linenums    0, checksum 38006580, selection    2 (pick any)
5CB 00000000 SECT1BB notype       External    | ??_R0?AV_System_error@std@@@8 (class std::_System_error `RTTI Type Descriptor')
5CC 00000000 SECT1BC notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum 39D7CD49, selection    2 (pick any)
5CE 00000000 SECT1BC notype       External    | _CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40
5CF 00000000 SECT1BD notype       Static      | .rdata
    Section length   38, #relocs    7, #linenums    0, checksum        0, selection    6 (pick largest)
5D1 00000008 SECT1BD notype       External    | ??_7_Iostream_error_category2@std@@6B@ (const std::_Iostream_error_category2::`vftable')
5D2 00000000 SECT1BE notype       Static      | .rdata
    Section length    9, #relocs    0, #linenums    0, checksum A29400EA, selection    2 (pick any)
5D4 00000000 SECT1BE notype       External    | ??_C@_08LLGCOLLL@iostream@ (`string')
5D5 00000000 SECT1BF notype       Static      | .rdata
    Section length   16, #relocs    0, #linenums    0, checksum A7E7FC63, selection    2 (pick any)
5D7 00000000 SECT1BF notype       External    | ?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB (char const * const `public: virtual class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > __cdecl std::_Iostream_error_category2::message(int)const '::`5'::_Iostream_error)
5D8 00000000 SECT1C0 notype       Static      | .rdata
    Section length   18, #relocs    3, #linenums    0, checksum        0, selection    6 (pick largest)
5DA 00000008 SECT1C0 notype       External    | ??_7failure@ios_base@std@@6B@ (const std::ios_base::failure::`vftable')
5DB 00000000 SECT1C1 notype       Static      | .rdata
    Section length   15, #relocs    0, #linenums    0, checksum 4981F627, selection    2 (pick any)
5DD 00000000 SECT1C1 notype       External    | ??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set@ (`string')
5DE 00000000 SECT1C2 notype       Static      | .rdata
    Section length   16, #relocs    0, #linenums    0, checksum  B733C94, selection    2 (pick any)
5E0 00000000 SECT1C2 notype       External    | ??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set@ (`string')
5E1 00000000 SECT1C3 notype       Static      | .rdata
    Section length   15, #relocs    0, #linenums    0, checksum 5085FB91, selection    2 (pick any)
5E3 00000000 SECT1C3 notype       External    | ??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set@ (`string')
5E4 00000000 SECT1C4 notype       Static      | .xdata$x
    Section length   1C, #relocs    2, #linenums    0, checksum        0, selection    2 (pick any)
5E6 00000000 SECT1C4 notype       External    | _TI5?AVfailure@ios_base@std@@
5E7 00000000 SECT1C5 notype       Static      | .xdata$x
    Section length   2C, #relocs    5, #linenums    0, checksum E823FB78, selection    2 (pick any)
5E9 00000000 SECT1C5 notype       External    | _CTA5?AVfailure@ios_base@std@@
5EA 00000000 SECT1C6 notype       Static      | .data$r
    Section length   2B, #relocs    1, #linenums    0, checksum 15B5FC11, selection    2 (pick any)
5EC 00000000 SECT1C6 notype       External    | ??_R0?AVfailure@ios_base@std@@@8 (class std::ios_base::failure `RTTI Type Descriptor')
5ED 00000000 SECT1C7 notype       Static      | .xdata$x
    Section length   24, #relocs    2, #linenums    0, checksum 39D7CD49, selection    2 (pick any)
5EF 00000000 SECT1C7 notype       External    | _CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40
5F0 00000000 UNDEF  notype       External     | ?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A (class std::basic_ostream<char,struct std::char_traits<char> > std::cout)
5F1 00000000 SECT1C8 notype       Static      | .data
    Section length   10, #relocs    1, #linenums    0, checksum 48E00E64, selection    2 (pick any)
5F3 00000000 SECT1C8 notype       External    | ?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4U?$_Constexpr_immortalize_impl@V_Iostream_error_category2@std@@@1@A (struct std::_Constexpr_immortalize_impl<class std::_Iostream_error_category2> `class std::_Iostream_error_category2 const & __cdecl std::_Immortalize_memcpy_image<class std::_Iostream_error_category2>(void)'::`2'::_Static)
5F4 00000000 SECT1C9 notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
5F6 00000000 SECT1C9 notype       External    | ??_R4exception@std@@6B@ (const std::exception::`RTTI Complete Object Locator')
5F7 00000000 SECT1CA notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum CCAA009E, selection    2 (pick any)
5F9 00000000 SECT1CA notype       External    | ??_R3exception@std@@8 (std::exception::`RTTI Class Hierarchy Descriptor')
5FA 00000000 SECT1CB notype       Static      | .rdata$r
    Section length    C, #relocs    1, #linenums    0, checksum        0, selection    2 (pick any)
5FC 00000000 SECT1CB notype       External    | ??_R2exception@std@@8 (std::exception::`RTTI Base Class Array')
5FD 00000000 SECT1CC notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum 3AD97647, selection    2 (pick any)
5FF 00000000 SECT1CC notype       External    | ??_R1A@?0A@EA@exception@std@@8 (std::exception::`RTTI Base Class Descriptor at (0,-1,0,64)')
600 00000000 SECT1CD notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
602 00000000 SECT1CD notype       External    | ??_R4bad_array_new_length@std@@6B@ (const std::bad_array_new_length::`RTTI Complete Object Locator')
603 00000000 SECT1CE notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 8E8F07E3, selection    2 (pick any)
605 00000000 SECT1CE notype       External    | ??_R3bad_array_new_length@std@@8 (std::bad_array_new_length::`RTTI Class Hierarchy Descriptor')
606 00000000 SECT1CF notype       Static      | .rdata$r
    Section length   1C, #relocs    3, #linenums    0, checksum        0, selection    2 (pick any)
608 00000000 SECT1CF notype       External    | ??_R2bad_array_new_length@std@@8 (std::bad_array_new_length::`RTTI Base Class Array')
609 00000000 SECT1D0 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum E3E2BA48, selection    2 (pick any)
60B 00000000 SECT1D0 notype       External    | ??_R1A@?0A@EA@bad_array_new_length@std@@8 (std::bad_array_new_length::`RTTI Base Class Descriptor at (0,-1,0,64)')
60C 00000000 SECT1D1 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum BBFC1360, selection    2 (pick any)
60E 00000000 SECT1D1 notype       External    | ??_R1A@?0A@EA@bad_alloc@std@@8 (std::bad_alloc::`RTTI Base Class Descriptor at (0,-1,0,64)')
60F 00000000 SECT1D2 notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 4225077D, selection    2 (pick any)
611 00000000 SECT1D2 notype       External    | ??_R3bad_alloc@std@@8 (std::bad_alloc::`RTTI Class Hierarchy Descriptor')
612 00000000 SECT1D3 notype       Static      | .rdata$r
    Section length   14, #relocs    2, #linenums    0, checksum        0, selection    2 (pick any)
614 00000000 SECT1D3 notype       External    | ??_R2bad_alloc@std@@8 (std::bad_alloc::`RTTI Base Class Array')
615 00000000 SECT1D4 notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
617 00000000 SECT1D4 notype       External    | ??_R4bad_alloc@std@@6B@ (const std::bad_alloc::`RTTI Complete Object Locator')
618 00000000 SECT1D5 notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
61A 00000000 SECT1D5 notype       External    | ??_R4runtime_error@std@@6B@ (const std::runtime_error::`RTTI Complete Object Locator')
61B 00000000 SECT1D6 notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 4225077D, selection    2 (pick any)
61D 00000000 SECT1D6 notype       External    | ??_R3runtime_error@std@@8 (std::runtime_error::`RTTI Class Hierarchy Descriptor')
61E 00000000 SECT1D7 notype       Static      | .rdata$r
    Section length   14, #relocs    2, #linenums    0, checksum        0, selection    2 (pick any)
620 00000000 SECT1D7 notype       External    | ??_R2runtime_error@std@@8 (std::runtime_error::`RTTI Base Class Array')
621 00000000 SECT1D8 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum BBFC1360, selection    2 (pick any)
623 00000000 SECT1D8 notype       External    | ??_R1A@?0A@EA@runtime_error@std@@8 (std::runtime_error::`RTTI Base Class Descriptor at (0,-1,0,64)')
624 00000000 SECT1D9 notype       Static      | .data$rs
    Section length   29, #relocs    1, #linenums    0, checksum 57781CE5, selection    2 (pick any)
626 00000000 SECT1D9 notype       External    | ??_R0?AVerror_category@std@@@8 (class std::error_category `RTTI Type Descriptor')
627 00000000 SECT1DA notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum CCAA009E, selection    2 (pick any)
629 00000000 SECT1DA notype       External    | ??_R3error_category@std@@8 (std::error_category::`RTTI Class Hierarchy Descriptor')
62A 00000000 SECT1DB notype       Static      | .rdata$r
    Section length    C, #relocs    1, #linenums    0, checksum        0, selection    2 (pick any)
62C 00000000 SECT1DB notype       External    | ??_R2error_category@std@@8 (std::error_category::`RTTI Base Class Array')
62D 00000000 SECT1DC notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum 3AD97647, selection    2 (pick any)
62F 00000000 SECT1DC notype       External    | ??_R1A@?0A@EA@error_category@std@@8 (std::error_category::`RTTI Base Class Descriptor at (0,-1,0,64)')
630 00000000 SECT1DD notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
632 00000000 SECT1DD notype       External    | ??_R4_System_error@std@@6B@ (const std::_System_error::`RTTI Complete Object Locator')
633 00000000 SECT1DE notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 8E8F07E3, selection    2 (pick any)
635 00000000 SECT1DE notype       External    | ??_R3_System_error@std@@8 (std::_System_error::`RTTI Class Hierarchy Descriptor')
636 00000000 SECT1DF notype       Static      | .rdata$r
    Section length   1C, #relocs    3, #linenums    0, checksum        0, selection    2 (pick any)
638 00000000 SECT1DF notype       External    | ??_R2_System_error@std@@8 (std::_System_error::`RTTI Base Class Array')
639 00000000 SECT1E0 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum E3E2BA48, selection    2 (pick any)
63B 00000000 SECT1E0 notype       External    | ??_R1A@?0A@EA@_System_error@std@@8 (std::_System_error::`RTTI Base Class Descriptor at (0,-1,0,64)')
63C 00000000 SECT1E1 notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
63E 00000000 SECT1E1 notype       External    | ??_R4system_error@std@@6B@ (const std::system_error::`RTTI Complete Object Locator')
63F 00000000 SECT1E2 notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 844A0EFA, selection    2 (pick any)
641 00000000 SECT1E2 notype       External    | ??_R3system_error@std@@8 (std::system_error::`RTTI Class Hierarchy Descriptor')
642 00000000 SECT1E3 notype       Static      | .rdata$r
    Section length   24, #relocs    4, #linenums    0, checksum        0, selection    2 (pick any)
644 00000000 SECT1E3 notype       External    | ??_R2system_error@std@@8 (std::system_error::`RTTI Base Class Array')
645 00000000 SECT1E4 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum 62C7DF6F, selection    2 (pick any)
647 00000000 SECT1E4 notype       External    | ??_R1A@?0A@EA@system_error@std@@8 (std::system_error::`RTTI Base Class Descriptor at (0,-1,0,64)')
648 00000000 SECT1E5 notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
64A 00000000 SECT1E5 notype       External    | ??_R4_Iostream_error_category2@std@@6B@ (const std::_Iostream_error_category2::`RTTI Complete Object Locator')
64B 00000000 SECT1E6 notype       Static      | .data$rs
    Section length   34, #relocs    1, #linenums    0, checksum C0726F8D, selection    2 (pick any)
64D 00000000 SECT1E6 notype       External    | ??_R0?AV_Iostream_error_category2@std@@@8 (class std::_Iostream_error_category2 `RTTI Type Descriptor')
64E 00000000 SECT1E7 notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 4225077D, selection    2 (pick any)
650 00000000 SECT1E7 notype       External    | ??_R3_Iostream_error_category2@std@@8 (std::_Iostream_error_category2::`RTTI Class Hierarchy Descriptor')
651 00000000 SECT1E8 notype       Static      | .rdata$r
    Section length   14, #relocs    2, #linenums    0, checksum        0, selection    2 (pick any)
653 00000000 SECT1E8 notype       External    | ??_R2_Iostream_error_category2@std@@8 (std::_Iostream_error_category2::`RTTI Base Class Array')
654 00000000 SECT1E9 notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum BBFC1360, selection    2 (pick any)
656 00000000 SECT1E9 notype       External    | ??_R1A@?0A@EA@_Iostream_error_category2@std@@8 (std::_Iostream_error_category2::`RTTI Base Class Descriptor at (0,-1,0,64)')
657 00000000 SECT1EA notype       Static      | .rdata$r
    Section length   24, #relocs    3, #linenums    0, checksum 81256527, selection    2 (pick any)
659 00000000 SECT1EA notype       External    | ??_R4failure@ios_base@std@@6B@ (const std::ios_base::failure::`RTTI Complete Object Locator')
65A 00000000 SECT1EB notype       Static      | .rdata$r
    Section length   14, #relocs    1, #linenums    0, checksum 48E00E64, selection    2 (pick any)
65C 00000000 SECT1EB notype       External    | ??_R3failure@ios_base@std@@8 (std::ios_base::failure::`RTTI Class Hierarchy Descriptor')
65D 00000000 SECT1EC notype       Static      | .rdata$r
    Section length   2C, #relocs    5, #linenums    0, checksum        0, selection    2 (pick any)
65F 00000000 SECT1EC notype       External    | ??_R2failure@ios_base@std@@8 (std::ios_base::failure::`RTTI Base Class Array')
660 00000000 SECT1ED notype       Static      | .rdata$r
    Section length   24, #relocs    2, #linenums    0, checksum 53DFE818, selection    2 (pick any)
662 00000000 SECT1ED notype       External    | ??_R1A@?0A@EA@failure@ios_base@std@@8 (std::ios_base::failure::`RTTI Base Class Descriptor at (0,-1,0,64)')
663 00000000 UNDEF  notype       External     | __security_cookie
664 00000000 SECT1EE notype       Static      | .chks64
    Section length  F70, #relocs    0, #linenums    0, checksum        0

String Table Size = 0x7C52 bytes

  Summary

         F70 .chks64
          10 .data
         119 .data$r
          5D .data$rs
          A4 .debug$S
         13C .drectve
         588 .pdata
         187 .rdata
         3F4 .rdata$r
        29B0 .text$mn
          9D .text$x
           9 .voltbl
         462 .xdata
         17C .xdata$x
