| ; CODE XREF from entry0 @ 0x140006ed9
| 0x140006d50      48895c2408     mov qword [var_8h], rbx
| 0x140006d55      4889742410     mov qword [var_10h], rsi
| 0x140006d5a      57             push rdi
| 0x140006d5b      4883ec30       sub rsp, 0x30
| 0x140006d5f      b901000000     mov ecx, 1                           ; int64_t arg1
| 0x140006d64      e8b3010000     call fcn.140006f1c
| 0x140006d69      84c0           test al, al
| 0x140006d6b      0f8436010000   je 0x140006ea7
| // true: 0x140006ea7  false: 0x140006d71
| 0x140006d71      4032f6         xor sil, sil
| 0x140006d74      4088742420     mov byte [var_20h], sil
| 0x140006d79      e862010000     call fcn.140006ee0
| 0x140006d7e      8ad8           mov bl, al
| 0x140006d80      8b0d5ad90200   mov ecx, dword [0x1400346e0]         ; [0x1400346e0:4]=0
| 0x140006d86      83f901         cmp ecx, 1                           ; 1
| 0x140006d89      0f8423010000   je 0x140006eb2
| // true: 0x140006eb2  false: 0x140006d8f
| 0x140006d8f      85c9           test ecx, ecx
| 0x140006d91      754a           jne 0x140006ddd
| // true: 0x140006ddd  false: 0x140006d93
| 0x140006d93      c70543d90200.  mov dword [0x1400346e0], 1           ; [0x1400346e0:4]=0
| 0x140006d9d      488d15dcb501.  lea rdx, [0x140022380]               ; int64_t arg2
| 0x140006da4      488d0d95b501.  lea rcx, [0x140022340]               ; uint32_t arg1
| 0x140006dab      e8c8940000     call fcn.140010278
| 0x140006db0      85c0           test eax, eax
| 0x140006db2      740a           je 0x140006dbe
| // true: 0x140006dbe  false: 0x140006db4
| 0x140006db4      b8ff000000     mov eax, 0xff                        ; 255
| 0x140006db9      e9d9000000     jmp 0x140006e97
| // true: 0x140006e97
| ; CODE XREF from entry0 @ 0x140006db2
| 0x140006dbe      488d1573b501.  lea rdx, [0x140022338]               ; int64_t arg2
| 0x140006dc5      488d0d14b501.  lea rcx, [0x1400222e0]               ; uint32_t arg1
| 0x140006dcc      e863940000     call fcn.140010234
| 0x140006dd1      c70505d90200.  mov dword [0x1400346e0], 2           ; [0x1400346e0:4]=0
| 0x140006ddb      eb08           jmp 0x140006de5
| // true: 0x140006de5
| ; CODE XREF from entry0 @ 0x140006d91
| 0x140006ddd      40b601         mov sil, 1
| 0x140006de0      4088742420     mov byte [var_20h], sil
| // true: 0x140006de5
| ; CODE XREF from entry0 @ 0x140006ddb
| 0x140006de5      8acb           mov cl, bl
| 0x140006de7      e890020000     call fcn.14000707c
| 0x140006dec      e8970a0000     call fcn.140007888
| 0x140006df1      488bd8         mov rbx, rax
| 0x140006df4      48833800       cmp qword [rax], 0
| 0x140006df8      741e           je 0x140006e18
| // true: 0x140006e18  false: 0x140006dfa
| 0x140006dfa      488bc8         mov rcx, rax                         ; int64_t arg1
| 0x140006dfd      e8e2010000     call fcn.140006fe4
| 0x140006e02      84c0           test al, al
| 0x140006e04      7412           je 0x140006e18
| // true: 0x140006e18  false: 0x140006e06
| 0x140006e06      4533c0         xor r8d, r8d
| 0x140006e09      418d5002       lea edx, [r8 + 2]
| 0x140006e0d      33c9           xor ecx, ecx
| 0x140006e0f      488b03         mov rax, qword [rbx]
| 0x140006e12      ff15a0b40100   call qword [0x1400222b8]             ; [0x1400222b8:8]=0x140020500
| // true: 0x140006e18
| ; CODE XREFS from entry0 @ 0x140006df8, 0x140006e04
| 0x140006e18      e8730a0000     call fcn.140007890
| 0x140006e1d      488bd8         mov rbx, rax
| 0x140006e20      48833800       cmp qword [rax], 0
| 0x140006e24      7414           je 0x140006e3a
| // true: 0x140006e3a  false: 0x140006e26
| 0x140006e26      488bc8         mov rcx, rax                         ; int64_t arg1
| 0x140006e29      e8b6010000     call fcn.140006fe4
| 0x140006e2e      84c0           test al, al
| 0x140006e30      7408           je 0x140006e3a
| // true: 0x140006e3a  false: 0x140006e32
| 0x140006e32      488b0b         mov rcx, qword [rbx]                 ; int64_t arg1
| 0x140006e35      e85a970000     call fcn.140010594
| // true: 0x140006e3a
| ; CODE XREFS from entry0 @ 0x140006e24, 0x140006e30
| 0x140006e3a      e89d930000     call fcn.1400101dc
| 0x140006e3f      488bf8         mov rdi, rax
| 0x140006e42      e809980000     call fcn.140010650
| 0x140006e47      488b18         mov rbx, qword [rax]
| 0x140006e4a      e8f9970000     call fcn.140010648
| 0x140006e4f      4c8bc7         mov r8, rdi                          ; char **envp
| 0x140006e52      488bd3         mov rdx, rbx                         ; char **argv
| 0x140006e55      8b08           mov ecx, dword [rax]                 ; int argc
| 0x140006e57      e8f4a2ffff     call main                            ; int main(int argc, char **argv, char **envp)
| 0x140006e5c      8bd8           mov ebx, eax
| 0x140006e5e      e88d0b0000     call fcn.1400079f0
| 0x140006e63      84c0           test al, al
| 0x140006e65      7455           je 0x140006ebc
| // true: 0x140006ebc  false: 0x140006e67
| 0x140006e67      4084f6         test sil, sil
| 0x140006e6a      7505           jne 0x140006e71
| // true: 0x140006e71  false: 0x140006e6c
| 0x140006e6c      e807970000     call fcn.140010578
| // true: 0x140006e71
| ; CODE XREF from entry0 @ 0x140006e6a
| 0x140006e71      33d2           xor edx, edx
| 0x140006e73      b101           mov cl, 1
| 0x140006e75      e826020000     call fcn.1400070a0
| 0x140006e7a      8bc3           mov eax, ebx
| 0x140006e7c      eb19           jmp 0x140006e97
| // true: 0x140006e97
| ; CODE XREFS from entry0 @ 0x140006db9, 0x140006e7c
| 0x140006e97      488b5c2440     mov rbx, qword [var_8h]
| 0x140006e9c      488b742448     mov rsi, qword [var_10h]
| 0x140006ea1      4883c430       add rsp, 0x30
| 0x140006ea5      5f             pop rdi
| 0x140006ea6      c3             ret

| ; CODE XREF from entry0 @ 0x140006d6b
| 0x140006ea7      b907000000     mov ecx, 7                           ; int64_t arg1
| 0x140006eac      e8ef090000     call fcn.1400078a0
| 0x140006eb1      90             nop
| // true: 0x140006eb2
| ; CODE XREF from entry0 @ 0x140006d89
| 0x140006eb2      b907000000     mov ecx, 7                           ; int64_t arg1
| 0x140006eb7      e8e4090000     call fcn.1400078a0
| // true: 0x140006ebc
| ; CODE XREF from entry0 @ 0x140006e65
| 0x140006ebc      8bcb           mov ecx, ebx                         ; int64_t arg1
| 0x140006ebe      e811970000     call fcn.1400105d4
| 0x140006ec3      90             nop
| ; CODE XREF from method.type_info.virtual_0 @ +0x247
| 0x140006ec4      8bcb           mov ecx, ebx                         ; int64_t arg1
| 0x140006ec6      e8bd960000     call fcn.140010588
| 0x140006ecb      90             nop
| // true: 0x140006ecc
  ;-- rip:
/ 373: entry0 ();
| ; var int64_t var_20h @ rsp+0x48
| ; var int64_t var_8h @ rsp+0x68
| ; var int64_t var_10h @ rsp+0x70
| 0x140006ecc      4883ec28       sub rsp, 0x28
| 0x140006ed0      e8bf080000     call fcn.140007794
| 0x140006ed5      4883c428       add rsp, 0x28
| 0x140006ed9      e972feffff     jmp 0x140006d50
| // true: 0x140006d50
