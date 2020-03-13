
input/19020031113_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000760 <_init>:
 760:	48 83 ec 08          	sub    $0x8,%rsp
 764:	48 8b 05 7d 18 20 00 	mov    0x20187d(%rip),%rax        # 201fe8 <__gmon_start__>
 76b:	48 85 c0             	test   %rax,%rax
 76e:	74 02                	je     772 <_init+0x12>
 770:	ff d0                	callq  *%rax
 772:	48 83 c4 08          	add    $0x8,%rsp
 776:	c3                   	retq   

Disassembly of section .plt:

0000000000000780 <.plt>:
 780:	ff 35 02 18 20 00    	pushq  0x201802(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 786:	ff 25 04 18 20 00    	jmpq   *0x201804(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 78c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000790 <free@plt>:
 790:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 201f98 <free@GLIBC_2.2.5>
 796:	68 00 00 00 00       	pushq  $0x0
 79b:	e9 e0 ff ff ff       	jmpq   780 <.plt>

00000000000007a0 <puts@plt>:
 7a0:	ff 25 fa 17 20 00    	jmpq   *0x2017fa(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 7a6:	68 01 00 00 00       	pushq  $0x1
 7ab:	e9 d0 ff ff ff       	jmpq   780 <.plt>

00000000000007b0 <__stack_chk_fail@plt>:
 7b0:	ff 25 f2 17 20 00    	jmpq   *0x2017f2(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 7b6:	68 02 00 00 00       	pushq  $0x2
 7bb:	e9 c0 ff ff ff       	jmpq   780 <.plt>

00000000000007c0 <_IO_putc@plt>:
 7c0:	ff 25 ea 17 20 00    	jmpq   *0x2017ea(%rip)        # 201fb0 <_IO_putc@GLIBC_2.2.5>
 7c6:	68 03 00 00 00       	pushq  $0x3
 7cb:	e9 b0 ff ff ff       	jmpq   780 <.plt>

00000000000007d0 <malloc@plt>:
 7d0:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 7d6:	68 04 00 00 00       	pushq  $0x4
 7db:	e9 a0 ff ff ff       	jmpq   780 <.plt>

00000000000007e0 <_IO_getc@plt>:
 7e0:	ff 25 da 17 20 00    	jmpq   *0x2017da(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 7e6:	68 05 00 00 00       	pushq  $0x5
 7eb:	e9 90 ff ff ff       	jmpq   780 <.plt>

00000000000007f0 <__printf_chk@plt>:
 7f0:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 7f6:	68 06 00 00 00       	pushq  $0x6
 7fb:	e9 80 ff ff ff       	jmpq   780 <.plt>

0000000000000800 <__isoc99_scanf@plt>:
 800:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 806:	68 07 00 00 00       	pushq  $0x7
 80b:	e9 70 ff ff ff       	jmpq   780 <.plt>

Disassembly of section .plt.got:

0000000000000810 <__cxa_finalize@plt>:
 810:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 816:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000820 <main>:
 820:	41 55                	push   %r13
 822:	41 54                	push   %r12
 824:	48 8d 3d 30 06 00 00 	lea    0x630(%rip),%rdi        # e5b <_IO_stdin_used+0x5b>
 82b:	55                   	push   %rbp
 82c:	53                   	push   %rbx
 82d:	48 83 ec 28          	sub    $0x28,%rsp
 831:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 838:	00 00 
 83a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 83f:	31 c0                	xor    %eax,%eax
 841:	e8 5a ff ff ff       	callq  7a0 <puts@plt>
 846:	48 8d 3d 9b 06 00 00 	lea    0x69b(%rip),%rdi        # ee8 <_IO_stdin_used+0xe8>
 84d:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 852:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 857:	e8 44 ff ff ff       	callq  7a0 <puts@plt>
 85c:	31 c0                	xor    %eax,%eax
 85e:	e8 cd 03 00 00       	callq  c30 <create>
 863:	48 89 c7             	mov    %rax,%rdi
 866:	48 89 c3             	mov    %rax,%rbx
 869:	e8 72 04 00 00       	callq  ce0 <print>
 86e:	eb 6c                	jmp    8dc <main+0xbc>
 870:	83 f8 02             	cmp    $0x2,%eax
 873:	75 5f                	jne    8d4 <main+0xb4>
 875:	48 8d 35 4b 06 00 00 	lea    0x64b(%rip),%rsi        # ec7 <_IO_stdin_used+0xc7>
 87c:	bf 01 00 00 00       	mov    $0x1,%edi
 881:	31 c0                	xor    %eax,%eax
 883:	e8 68 ff ff ff       	callq  7f0 <__printf_chk@plt>
 888:	48 8d 3d 0b 06 00 00 	lea    0x60b(%rip),%rdi        # e9a <_IO_stdin_used+0x9a>
 88f:	4c 89 ee             	mov    %r13,%rsi
 892:	31 c0                	xor    %eax,%eax
 894:	e8 67 ff ff ff       	callq  800 <__isoc99_scanf@plt>
 899:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 89e:	48 89 df             	mov    %rbx,%rdi
 8a1:	e8 5a 02 00 00       	callq  b00 <del>
 8a6:	48 89 c3             	mov    %rax,%rbx
 8a9:	8b 05 81 17 20 00    	mov    0x201781(%rip),%eax        # 202030 <m>
 8af:	85 c0                	test   %eax,%eax
 8b1:	0f 84 09 01 00 00    	je     9c0 <main+0x1a0>
 8b7:	48 8b 35 52 17 20 00 	mov    0x201752(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 8be:	bf 0a 00 00 00       	mov    $0xa,%edi
 8c3:	e8 f8 fe ff ff       	callq  7c0 <_IO_putc@plt>
 8c8:	48 89 df             	mov    %rbx,%rdi
 8cb:	e8 10 04 00 00       	callq  ce0 <print>
 8d0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8d4:	85 c0                	test   %eax,%eax
 8d6:	0f 84 bf 00 00 00    	je     99b <main+0x17b>
 8dc:	48 8d 3d 8e 05 00 00 	lea    0x58e(%rip),%rdi        # e71 <_IO_stdin_used+0x71>
 8e3:	e8 b8 fe ff ff       	callq  7a0 <puts@plt>
 8e8:	48 8d 35 9c 05 00 00 	lea    0x59c(%rip),%rsi        # e8b <_IO_stdin_used+0x8b>
 8ef:	bf 01 00 00 00       	mov    $0x1,%edi
 8f4:	31 c0                	xor    %eax,%eax
 8f6:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 8fd:	ff 
 8fe:	e8 ed fe ff ff       	callq  7f0 <__printf_chk@plt>
 903:	48 8d 3d 90 05 00 00 	lea    0x590(%rip),%rdi        # e9a <_IO_stdin_used+0x9a>
 90a:	4c 89 e6             	mov    %r12,%rsi
 90d:	31 c0                	xor    %eax,%eax
 90f:	e8 ec fe ff ff       	callq  800 <__isoc99_scanf@plt>
 914:	48 8b 3d 05 17 20 00 	mov    0x201705(%rip),%rdi        # 202020 <stdin@@GLIBC_2.2.5>
 91b:	e8 c0 fe ff ff       	callq  7e0 <_IO_getc@plt>
 920:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 924:	83 f8 01             	cmp    $0x1,%eax
 927:	0f 85 43 ff ff ff    	jne    870 <main+0x50>
 92d:	48 8d 35 69 05 00 00 	lea    0x569(%rip),%rsi        # e9d <_IO_stdin_used+0x9d>
 934:	bf 01 00 00 00       	mov    $0x1,%edi
 939:	31 c0                	xor    %eax,%eax
 93b:	e8 b0 fe ff ff       	callq  7f0 <__printf_chk@plt>
 940:	bf 18 00 00 00       	mov    $0x18,%edi
 945:	e8 86 fe ff ff       	callq  7d0 <malloc@plt>
 94a:	48 8d 3d c8 04 00 00 	lea    0x4c8(%rip),%rdi        # e19 <_IO_stdin_used+0x19>
 951:	48 8d 50 08          	lea    0x8(%rax),%rdx
 955:	48 89 c5             	mov    %rax,%rbp
 958:	48 89 c6             	mov    %rax,%rsi
 95b:	31 c0                	xor    %eax,%eax
 95d:	e8 9e fe ff ff       	callq  800 <__isoc99_scanf@plt>
 962:	48 89 df             	mov    %rbx,%rdi
 965:	48 89 ee             	mov    %rbp,%rsi
 968:	e8 43 02 00 00       	callq  bb0 <insert>
 96d:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 971:	48 8d 35 41 05 00 00 	lea    0x541(%rip),%rsi        # eb9 <_IO_stdin_used+0xb9>
 978:	48 89 c3             	mov    %rax,%rbx
 97b:	bf 01 00 00 00       	mov    $0x1,%edi
 980:	31 c0                	xor    %eax,%eax
 982:	e8 69 fe ff ff       	callq  7f0 <__printf_chk@plt>
 987:	48 89 df             	mov    %rbx,%rdi
 98a:	e8 51 03 00 00       	callq  ce0 <print>
 98f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 993:	85 c0                	test   %eax,%eax
 995:	0f 85 41 ff ff ff    	jne    8dc <main+0xbc>
 99b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 9a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 9a7:	00 00 
 9a9:	75 32                	jne    9dd <main+0x1bd>
 9ab:	48 83 c4 28          	add    $0x28,%rsp
 9af:	5b                   	pop    %rbx
 9b0:	5d                   	pop    %rbp
 9b1:	41 5c                	pop    %r12
 9b3:	41 5d                	pop    %r13
 9b5:	c3                   	retq   
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 
 9c0:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
 9c5:	48 8d 35 0d 05 00 00 	lea    0x50d(%rip),%rsi        # ed9 <_IO_stdin_used+0xd9>
 9cc:	bf 01 00 00 00       	mov    $0x1,%edi
 9d1:	31 c0                	xor    %eax,%eax
 9d3:	e8 18 fe ff ff       	callq  7f0 <__printf_chk@plt>
 9d8:	e9 da fe ff ff       	jmpq   8b7 <main+0x97>
 9dd:	e8 ce fd ff ff       	callq  7b0 <__stack_chk_fail@plt>
 9e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9e9:	00 00 00 
 9ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009f0 <_start>:
 9f0:	31 ed                	xor    %ebp,%ebp
 9f2:	49 89 d1             	mov    %rdx,%r9
 9f5:	5e                   	pop    %rsi
 9f6:	48 89 e2             	mov    %rsp,%rdx
 9f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 9fd:	50                   	push   %rax
 9fe:	54                   	push   %rsp
 9ff:	4c 8d 05 ea 03 00 00 	lea    0x3ea(%rip),%r8        # df0 <__libc_csu_fini>
 a06:	48 8d 0d 73 03 00 00 	lea    0x373(%rip),%rcx        # d80 <__libc_csu_init>
 a0d:	48 8d 3d 0c fe ff ff 	lea    -0x1f4(%rip),%rdi        # 820 <main>
 a14:	ff 15 c6 15 20 00    	callq  *0x2015c6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 a1a:	f4                   	hlt    
 a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a20 <deregister_tm_clones>:
 a20:	48 8d 3d e9 15 20 00 	lea    0x2015e9(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 a27:	55                   	push   %rbp
 a28:	48 8d 05 e1 15 20 00 	lea    0x2015e1(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
 a2f:	48 39 f8             	cmp    %rdi,%rax
 a32:	48 89 e5             	mov    %rsp,%rbp
 a35:	74 19                	je     a50 <deregister_tm_clones+0x30>
 a37:	48 8b 05 9a 15 20 00 	mov    0x20159a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 a3e:	48 85 c0             	test   %rax,%rax
 a41:	74 0d                	je     a50 <deregister_tm_clones+0x30>
 a43:	5d                   	pop    %rbp
 a44:	ff e0                	jmpq   *%rax
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 
 a50:	5d                   	pop    %rbp
 a51:	c3                   	retq   
 a52:	0f 1f 40 00          	nopl   0x0(%rax)
 a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a5d:	00 00 00 

0000000000000a60 <register_tm_clones>:
 a60:	48 8d 3d a9 15 20 00 	lea    0x2015a9(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 a67:	48 8d 35 a2 15 20 00 	lea    0x2015a2(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 a6e:	55                   	push   %rbp
 a6f:	48 29 fe             	sub    %rdi,%rsi
 a72:	48 89 e5             	mov    %rsp,%rbp
 a75:	48 c1 fe 03          	sar    $0x3,%rsi
 a79:	48 89 f0             	mov    %rsi,%rax
 a7c:	48 c1 e8 3f          	shr    $0x3f,%rax
 a80:	48 01 c6             	add    %rax,%rsi
 a83:	48 d1 fe             	sar    %rsi
 a86:	74 18                	je     aa0 <register_tm_clones+0x40>
 a88:	48 8b 05 61 15 20 00 	mov    0x201561(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a8f:	48 85 c0             	test   %rax,%rax
 a92:	74 0c                	je     aa0 <register_tm_clones+0x40>
 a94:	5d                   	pop    %rbp
 a95:	ff e0                	jmpq   *%rax
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 
 aa0:	5d                   	pop    %rbp
 aa1:	c3                   	retq   
 aa2:	0f 1f 40 00          	nopl   0x0(%rax)
 aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aad:	00 00 00 

0000000000000ab0 <__do_global_dtors_aux>:
 ab0:	80 3d 71 15 20 00 00 	cmpb   $0x0,0x201571(%rip)        # 202028 <completed.7698>
 ab7:	75 2f                	jne    ae8 <__do_global_dtors_aux+0x38>
 ab9:	48 83 3d 37 15 20 00 	cmpq   $0x0,0x201537(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 ac0:	00 
 ac1:	55                   	push   %rbp
 ac2:	48 89 e5             	mov    %rsp,%rbp
 ac5:	74 0c                	je     ad3 <__do_global_dtors_aux+0x23>
 ac7:	48 8b 3d 3a 15 20 00 	mov    0x20153a(%rip),%rdi        # 202008 <__dso_handle>
 ace:	e8 3d fd ff ff       	callq  810 <__cxa_finalize@plt>
 ad3:	e8 48 ff ff ff       	callq  a20 <deregister_tm_clones>
 ad8:	c6 05 49 15 20 00 01 	movb   $0x1,0x201549(%rip)        # 202028 <completed.7698>
 adf:	5d                   	pop    %rbp
 ae0:	c3                   	retq   
 ae1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ae8:	f3 c3                	repz retq 
 aea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000af0 <frame_dummy>:
 af0:	55                   	push   %rbp
 af1:	48 89 e5             	mov    %rsp,%rbp
 af4:	5d                   	pop    %rbp
 af5:	e9 66 ff ff ff       	jmpq   a60 <register_tm_clones>
 afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b00 <del>:
 b00:	53                   	push   %rbx
 b01:	48 89 fb             	mov    %rdi,%rbx
 b04:	48 83 ec 10          	sub    $0x10,%rsp
 b08:	48 85 ff             	test   %rdi,%rdi
 b0b:	75 16                	jne    b23 <del+0x23>
 b0d:	e9 8a 00 00 00       	jmpq   b9c <del+0x9c>
 b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b18:	48 85 c0             	test   %rax,%rax
 b1b:	48 89 fa             	mov    %rdi,%rdx
 b1e:	74 30                	je     b50 <del+0x50>
 b20:	48 89 c7             	mov    %rax,%rdi
 b23:	48 39 37             	cmp    %rsi,(%rdi)
 b26:	48 8b 47 10          	mov    0x10(%rdi),%rax
 b2a:	75 ec                	jne    b18 <del+0x18>
 b2c:	48 39 df             	cmp    %rbx,%rdi
 b2f:	74 4f                	je     b80 <del+0x80>
 b31:	48 89 42 10          	mov    %rax,0x10(%rdx)
 b35:	e8 56 fc ff ff       	callq  790 <free@plt>
 b3a:	83 2d eb 14 20 00 01 	subl   $0x1,0x2014eb(%rip)        # 20202c <n>
 b41:	48 89 d8             	mov    %rbx,%rax
 b44:	48 83 c4 10          	add    $0x10,%rsp
 b48:	5b                   	pop    %rbx
 b49:	c3                   	retq   
 b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b50:	48 89 f2             	mov    %rsi,%rdx
 b53:	48 8d 35 aa 02 00 00 	lea    0x2aa(%rip),%rsi        # e04 <_IO_stdin_used+0x4>
 b5a:	bf 01 00 00 00       	mov    $0x1,%edi
 b5f:	31 c0                	xor    %eax,%eax
 b61:	c7 05 c5 14 20 00 01 	movl   $0x1,0x2014c5(%rip)        # 202030 <m>
 b68:	00 00 00 
 b6b:	e8 80 fc ff ff       	callq  7f0 <__printf_chk@plt>
 b70:	48 83 c4 10          	add    $0x10,%rsp
 b74:	48 89 d8             	mov    %rbx,%rax
 b77:	5b                   	pop    %rbx
 b78:	c3                   	retq   
 b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b80:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b85:	e8 06 fc ff ff       	callq  790 <free@plt>
 b8a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b8f:	83 2d 96 14 20 00 01 	subl   $0x1,0x201496(%rip)        # 20202c <n>
 b96:	48 83 c4 10          	add    $0x10,%rsp
 b9a:	5b                   	pop    %rbx
 b9b:	c3                   	retq   
 b9c:	c7 05 8a 14 20 00 01 	movl   $0x1,0x20148a(%rip)        # 202030 <m>
 ba3:	00 00 00 
 ba6:	31 c0                	xor    %eax,%eax
 ba8:	eb 9a                	jmp    b44 <del+0x44>
 baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000bb0 <insert>:
 bb0:	48 85 ff             	test   %rdi,%rdi
 bb3:	74 5b                	je     c10 <insert+0x60>
 bb5:	4c 8b 06             	mov    (%rsi),%r8
 bb8:	48 89 fa             	mov    %rdi,%rdx
 bbb:	eb 12                	jmp    bcf <insert+0x1f>
 bbd:	0f 1f 00             	nopl   (%rax)
 bc0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 bc4:	49 89 d1             	mov    %rdx,%r9
 bc7:	48 85 c9             	test   %rcx,%rcx
 bca:	74 24                	je     bf0 <insert+0x40>
 bcc:	48 89 ca             	mov    %rcx,%rdx
 bcf:	4c 3b 02             	cmp    (%rdx),%r8
 bd2:	7f ec                	jg     bc0 <insert+0x10>
 bd4:	48 39 fa             	cmp    %rdi,%rdx
 bd7:	74 47                	je     c20 <insert+0x70>
 bd9:	49 89 71 10          	mov    %rsi,0x10(%r9)
 bdd:	48 89 f8             	mov    %rdi,%rax
 be0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 be4:	83 05 41 14 20 00 01 	addl   $0x1,0x201441(%rip)        # 20202c <n>
 beb:	c3                   	retq   
 bec:	0f 1f 40 00          	nopl   0x0(%rax)
 bf0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 bf4:	48 89 f8             	mov    %rdi,%rax
 bf7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bfe:	00 
 bff:	83 05 26 14 20 00 01 	addl   $0x1,0x201426(%rip)        # 20202c <n>
 c06:	c3                   	retq   
 c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c0e:	00 00 
 c10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 c17:	00 
 c18:	48 89 f0             	mov    %rsi,%rax
 c1b:	c3                   	retq   
 c1c:	0f 1f 40 00          	nopl   0x0(%rax)
 c20:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 c24:	48 89 f0             	mov    %rsi,%rax
 c27:	83 05 fe 13 20 00 01 	addl   $0x1,0x2013fe(%rip)        # 20202c <n>
 c2e:	c3                   	retq   
 c2f:	90                   	nop

0000000000000c30 <create>:
 c30:	41 56                	push   %r14
 c32:	41 55                	push   %r13
 c34:	bf 18 00 00 00       	mov    $0x18,%edi
 c39:	41 54                	push   %r12
 c3b:	55                   	push   %rbp
 c3c:	45 31 f6             	xor    %r14d,%r14d
 c3f:	53                   	push   %rbx
 c40:	4c 8d 2d d2 01 00 00 	lea    0x1d2(%rip),%r13        # e19 <_IO_stdin_used+0x19>
 c47:	e8 84 fb ff ff       	callq  7d0 <malloc@plt>
 c4c:	48 8d 3d c6 01 00 00 	lea    0x1c6(%rip),%rdi        # e19 <_IO_stdin_used+0x19>
 c53:	48 8d 50 08          	lea    0x8(%rax),%rdx
 c57:	49 89 c4             	mov    %rax,%r12
 c5a:	48 89 c6             	mov    %rax,%rsi
 c5d:	31 c0                	xor    %eax,%eax
 c5f:	4c 89 e5             	mov    %r12,%rbp
 c62:	e8 99 fb ff ff       	callq  800 <__isoc99_scanf@plt>
 c67:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 c6c:	75 31                	jne    c9f <create+0x6f>
 c6e:	eb 50                	jmp    cc0 <create+0x90>
 c70:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 c75:	bf 18 00 00 00       	mov    $0x18,%edi
 c7a:	49 89 ec             	mov    %rbp,%r12
 c7d:	e8 4e fb ff ff       	callq  7d0 <malloc@plt>
 c82:	48 8d 50 08          	lea    0x8(%rax),%rdx
 c86:	48 89 c3             	mov    %rax,%rbx
 c89:	48 89 c6             	mov    %rax,%rsi
 c8c:	4c 89 ef             	mov    %r13,%rdi
 c8f:	31 c0                	xor    %eax,%eax
 c91:	e8 6a fb ff ff       	callq  800 <__isoc99_scanf@plt>
 c96:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 c9a:	74 24                	je     cc0 <create+0x90>
 c9c:	48 89 dd             	mov    %rbx,%rbp
 c9f:	8b 05 87 13 20 00    	mov    0x201387(%rip),%eax        # 20202c <n>
 ca5:	83 c0 01             	add    $0x1,%eax
 ca8:	83 f8 01             	cmp    $0x1,%eax
 cab:	89 05 7b 13 20 00    	mov    %eax,0x20137b(%rip)        # 20202c <n>
 cb1:	75 bd                	jne    c70 <create+0x40>
 cb3:	49 89 ee             	mov    %rbp,%r14
 cb6:	eb bd                	jmp    c75 <create+0x45>
 cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cbf:	00 
 cc0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 cc7:	00 
 cc8:	4c 89 f0             	mov    %r14,%rax
 ccb:	5b                   	pop    %rbx
 ccc:	5d                   	pop    %rbp
 ccd:	41 5c                	pop    %r12
 ccf:	41 5d                	pop    %r13
 cd1:	41 5e                	pop    %r14
 cd3:	c3                   	retq   
 cd4:	66 90                	xchg   %ax,%ax
 cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cdd:	00 00 00 

0000000000000ce0 <print>:
 ce0:	55                   	push   %rbp
 ce1:	53                   	push   %rbx
 ce2:	48 83 ec 08          	sub    $0x8,%rsp
 ce6:	48 85 ff             	test   %rdi,%rdi
 ce9:	74 65                	je     d50 <print+0x70>
 ceb:	8b 15 3b 13 20 00    	mov    0x20133b(%rip),%edx        # 20202c <n>
 cf1:	48 8d 35 28 01 00 00 	lea    0x128(%rip),%rsi        # e20 <_IO_stdin_used+0x20>
 cf8:	48 8d 2d 3c 01 00 00 	lea    0x13c(%rip),%rbp        # e3b <_IO_stdin_used+0x3b>
 cff:	48 89 fb             	mov    %rdi,%rbx
 d02:	31 c0                	xor    %eax,%eax
 d04:	bf 01 00 00 00       	mov    $0x1,%edi
 d09:	e8 e2 fa ff ff       	callq  7f0 <__printf_chk@plt>
 d0e:	66 90                	xchg   %ax,%ax
 d10:	66 0f ef c0          	pxor   %xmm0,%xmm0
 d14:	48 8b 13             	mov    (%rbx),%rdx
 d17:	48 89 ee             	mov    %rbp,%rsi
 d1a:	bf 01 00 00 00       	mov    $0x1,%edi
 d1f:	b8 01 00 00 00       	mov    $0x1,%eax
 d24:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 d29:	e8 c2 fa ff ff       	callq  7f0 <__printf_chk@plt>
 d2e:	48 8b 35 db 12 20 00 	mov    0x2012db(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 d35:	bf 0a 00 00 00       	mov    $0xa,%edi
 d3a:	e8 81 fa ff ff       	callq  7c0 <_IO_putc@plt>
 d3f:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 d43:	48 85 db             	test   %rbx,%rbx
 d46:	75 c8                	jne    d10 <print+0x30>
 d48:	48 83 c4 08          	add    $0x8,%rsp
 d4c:	5b                   	pop    %rbx
 d4d:	5d                   	pop    %rbp
 d4e:	c3                   	retq   
 d4f:	90                   	nop
 d50:	48 8d 35 ed 00 00 00 	lea    0xed(%rip),%rsi        # e44 <_IO_stdin_used+0x44>
 d57:	bf 01 00 00 00       	mov    $0x1,%edi
 d5c:	31 c0                	xor    %eax,%eax
 d5e:	e8 8d fa ff ff       	callq  7f0 <__printf_chk@plt>
 d63:	48 8b 35 a6 12 20 00 	mov    0x2012a6(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 d6a:	48 83 c4 08          	add    $0x8,%rsp
 d6e:	bf 0a 00 00 00       	mov    $0xa,%edi
 d73:	5b                   	pop    %rbx
 d74:	5d                   	pop    %rbp
 d75:	e9 46 fa ff ff       	jmpq   7c0 <_IO_putc@plt>
 d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d80 <__libc_csu_init>:
 d80:	41 57                	push   %r15
 d82:	41 56                	push   %r14
 d84:	49 89 d7             	mov    %rdx,%r15
 d87:	41 55                	push   %r13
 d89:	41 54                	push   %r12
 d8b:	4c 8d 25 ee 0f 20 00 	lea    0x200fee(%rip),%r12        # 201d80 <__frame_dummy_init_array_entry>
 d92:	55                   	push   %rbp
 d93:	48 8d 2d ee 0f 20 00 	lea    0x200fee(%rip),%rbp        # 201d88 <__init_array_end>
 d9a:	53                   	push   %rbx
 d9b:	41 89 fd             	mov    %edi,%r13d
 d9e:	49 89 f6             	mov    %rsi,%r14
 da1:	4c 29 e5             	sub    %r12,%rbp
 da4:	48 83 ec 08          	sub    $0x8,%rsp
 da8:	48 c1 fd 03          	sar    $0x3,%rbp
 dac:	e8 af f9 ff ff       	callq  760 <_init>
 db1:	48 85 ed             	test   %rbp,%rbp
 db4:	74 20                	je     dd6 <__libc_csu_init+0x56>
 db6:	31 db                	xor    %ebx,%ebx
 db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 dbf:	00 
 dc0:	4c 89 fa             	mov    %r15,%rdx
 dc3:	4c 89 f6             	mov    %r14,%rsi
 dc6:	44 89 ef             	mov    %r13d,%edi
 dc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 dcd:	48 83 c3 01          	add    $0x1,%rbx
 dd1:	48 39 dd             	cmp    %rbx,%rbp
 dd4:	75 ea                	jne    dc0 <__libc_csu_init+0x40>
 dd6:	48 83 c4 08          	add    $0x8,%rsp
 dda:	5b                   	pop    %rbx
 ddb:	5d                   	pop    %rbp
 ddc:	41 5c                	pop    %r12
 dde:	41 5d                	pop    %r13
 de0:	41 5e                	pop    %r14
 de2:	41 5f                	pop    %r15
 de4:	c3                   	retq   
 de5:	90                   	nop
 de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ded:	00 00 00 

0000000000000df0 <__libc_csu_fini>:
 df0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000df4 <_fini>:
 df4:	48 83 ec 08          	sub    $0x8,%rsp
 df8:	48 83 c4 08          	add    $0x8,%rsp
 dfc:	c3                   	retq   
