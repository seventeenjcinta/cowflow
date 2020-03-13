
input/18030021028_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000720 <_init>:
 720:	48 83 ec 08          	sub    $0x8,%rsp
 724:	48 8b 05 bd 18 20 00 	mov    0x2018bd(%rip),%rax        # 201fe8 <__gmon_start__>
 72b:	48 85 c0             	test   %rax,%rax
 72e:	74 02                	je     732 <_init+0x12>
 730:	ff d0                	callq  *%rax
 732:	48 83 c4 08          	add    $0x8,%rsp
 736:	c3                   	retq   

Disassembly of section .plt:

0000000000000740 <.plt>:
 740:	ff 35 42 18 20 00    	pushq  0x201842(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 746:	ff 25 44 18 20 00    	jmpq   *0x201844(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 74c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000750 <free@plt>:
 750:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201f98 <free@GLIBC_2.2.5>
 756:	68 00 00 00 00       	pushq  $0x0
 75b:	e9 e0 ff ff ff       	jmpq   740 <.plt>

0000000000000760 <puts@plt>:
 760:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 766:	68 01 00 00 00       	pushq  $0x1
 76b:	e9 d0 ff ff ff       	jmpq   740 <.plt>

0000000000000770 <__stack_chk_fail@plt>:
 770:	ff 25 32 18 20 00    	jmpq   *0x201832(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 776:	68 02 00 00 00       	pushq  $0x2
 77b:	e9 c0 ff ff ff       	jmpq   740 <.plt>

0000000000000780 <system@plt>:
 780:	ff 25 2a 18 20 00    	jmpq   *0x20182a(%rip)        # 201fb0 <system@GLIBC_2.2.5>
 786:	68 03 00 00 00       	pushq  $0x3
 78b:	e9 b0 ff ff ff       	jmpq   740 <.plt>

0000000000000790 <malloc@plt>:
 790:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 796:	68 04 00 00 00       	pushq  $0x4
 79b:	e9 a0 ff ff ff       	jmpq   740 <.plt>

00000000000007a0 <_IO_getc@plt>:
 7a0:	ff 25 1a 18 20 00    	jmpq   *0x20181a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 7a6:	68 05 00 00 00       	pushq  $0x5
 7ab:	e9 90 ff ff ff       	jmpq   740 <.plt>

00000000000007b0 <__printf_chk@plt>:
 7b0:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 7b6:	68 06 00 00 00       	pushq  $0x6
 7bb:	e9 80 ff ff ff       	jmpq   740 <.plt>

00000000000007c0 <__isoc99_scanf@plt>:
 7c0:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 7c6:	68 07 00 00 00       	pushq  $0x7
 7cb:	e9 70 ff ff ff       	jmpq   740 <.plt>

Disassembly of section .plt.got:

00000000000007d0 <__cxa_finalize@plt>:
 7d0:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007e0 <main>:
 7e0:	41 55                	push   %r13
 7e2:	41 54                	push   %r12
 7e4:	48 8d 3d 26 05 00 00 	lea    0x526(%rip),%rdi        # d11 <_IO_stdin_used+0x21>
 7eb:	55                   	push   %rbp
 7ec:	53                   	push   %rbx
 7ed:	48 83 ec 28          	sub    $0x28,%rsp
 7f1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7f8:	00 00 
 7fa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7ff:	31 c0                	xor    %eax,%eax
 801:	e8 5a ff ff ff       	callq  760 <puts@plt>
 806:	48 8d 3d 9b 05 00 00 	lea    0x59b(%rip),%rdi        # da8 <_IO_stdin_used+0xb8>
 80d:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 812:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 817:	e8 44 ff ff ff       	callq  760 <puts@plt>
 81c:	31 ff                	xor    %edi,%edi
 81e:	e8 ed 02 00 00       	callq  b10 <create>
 823:	48 89 c7             	mov    %rax,%rdi
 826:	48 89 c3             	mov    %rax,%rbx
 829:	e8 e2 03 00 00       	callq  c10 <print>
 82e:	eb 4d                	jmp    87d <main+0x9d>
 830:	83 f8 02             	cmp    $0x2,%eax
 833:	75 40                	jne    875 <main+0x95>
 835:	48 8d 35 4a 05 00 00 	lea    0x54a(%rip),%rsi        # d86 <_IO_stdin_used+0x96>
 83c:	bf 01 00 00 00       	mov    $0x1,%edi
 841:	31 c0                	xor    %eax,%eax
 843:	e8 68 ff ff ff       	callq  7b0 <__printf_chk@plt>
 848:	48 8d 3d 49 05 00 00 	lea    0x549(%rip),%rdi        # d98 <_IO_stdin_used+0xa8>
 84f:	4c 89 ee             	mov    %r13,%rsi
 852:	31 c0                	xor    %eax,%eax
 854:	e8 67 ff ff ff       	callq  7c0 <__isoc99_scanf@plt>
 859:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 85e:	48 89 df             	mov    %rbx,%rdi
 861:	e8 2a 03 00 00       	callq  b90 <del>
 866:	48 89 c7             	mov    %rax,%rdi
 869:	48 89 c3             	mov    %rax,%rbx
 86c:	e8 9f 03 00 00       	callq  c10 <print>
 871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 875:	85 c0                	test   %eax,%eax
 877:	0f 84 bf 00 00 00    	je     93c <main+0x15c>
 87d:	48 8d 3d a6 04 00 00 	lea    0x4a6(%rip),%rdi        # d2a <_IO_stdin_used+0x3a>
 884:	e8 d7 fe ff ff       	callq  760 <puts@plt>
 889:	48 8d 35 b8 04 00 00 	lea    0x4b8(%rip),%rsi        # d48 <_IO_stdin_used+0x58>
 890:	bf 01 00 00 00       	mov    $0x1,%edi
 895:	31 c0                	xor    %eax,%eax
 897:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 89e:	ff 
 89f:	e8 0c ff ff ff       	callq  7b0 <__printf_chk@plt>
 8a4:	48 8d 3d ad 04 00 00 	lea    0x4ad(%rip),%rdi        # d58 <_IO_stdin_used+0x68>
 8ab:	4c 89 e6             	mov    %r12,%rsi
 8ae:	31 c0                	xor    %eax,%eax
 8b0:	e8 0b ff ff ff       	callq  7c0 <__isoc99_scanf@plt>
 8b5:	48 8b 3d 54 17 20 00 	mov    0x201754(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8bc:	e8 df fe ff ff       	callq  7a0 <_IO_getc@plt>
 8c1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8c5:	83 f8 01             	cmp    $0x1,%eax
 8c8:	0f 85 62 ff ff ff    	jne    830 <main+0x50>
 8ce:	48 8d 35 86 04 00 00 	lea    0x486(%rip),%rsi        # d5b <_IO_stdin_used+0x6b>
 8d5:	bf 01 00 00 00       	mov    $0x1,%edi
 8da:	31 c0                	xor    %eax,%eax
 8dc:	e8 cf fe ff ff       	callq  7b0 <__printf_chk@plt>
 8e1:	bf 18 00 00 00       	mov    $0x18,%edi
 8e6:	e8 a5 fe ff ff       	callq  790 <malloc@plt>
 8eb:	48 8d 3d 02 04 00 00 	lea    0x402(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 8f2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8f6:	48 89 c5             	mov    %rax,%rbp
 8f9:	48 89 c6             	mov    %rax,%rsi
 8fc:	31 c0                	xor    %eax,%eax
 8fe:	e8 bd fe ff ff       	callq  7c0 <__isoc99_scanf@plt>
 903:	48 89 df             	mov    %rbx,%rdi
 906:	48 89 ee             	mov    %rbp,%rsi
 909:	e8 72 01 00 00       	callq  a80 <insert>
 90e:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 912:	48 8d 35 5e 04 00 00 	lea    0x45e(%rip),%rsi        # d77 <_IO_stdin_used+0x87>
 919:	48 89 c3             	mov    %rax,%rbx
 91c:	bf 01 00 00 00       	mov    $0x1,%edi
 921:	31 c0                	xor    %eax,%eax
 923:	e8 88 fe ff ff       	callq  7b0 <__printf_chk@plt>
 928:	48 89 df             	mov    %rbx,%rdi
 92b:	e8 e0 02 00 00       	callq  c10 <print>
 930:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 934:	85 c0                	test   %eax,%eax
 936:	0f 85 41 ff ff ff    	jne    87d <main+0x9d>
 93c:	48 8d 3d 59 04 00 00 	lea    0x459(%rip),%rdi        # d9c <_IO_stdin_used+0xac>
 943:	e8 38 fe ff ff       	callq  780 <system@plt>
 948:	31 c0                	xor    %eax,%eax
 94a:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 94f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 956:	00 00 
 958:	75 0b                	jne    965 <main+0x185>
 95a:	48 83 c4 28          	add    $0x28,%rsp
 95e:	5b                   	pop    %rbx
 95f:	5d                   	pop    %rbp
 960:	41 5c                	pop    %r12
 962:	41 5d                	pop    %r13
 964:	c3                   	retq   
 965:	e8 06 fe ff ff       	callq  770 <__stack_chk_fail@plt>
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000970 <_start>:
 970:	31 ed                	xor    %ebp,%ebp
 972:	49 89 d1             	mov    %rdx,%r9
 975:	5e                   	pop    %rsi
 976:	48 89 e2             	mov    %rsp,%rdx
 979:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 97d:	50                   	push   %rax
 97e:	54                   	push   %rsp
 97f:	4c 8d 05 5a 03 00 00 	lea    0x35a(%rip),%r8        # ce0 <__libc_csu_fini>
 986:	48 8d 0d e3 02 00 00 	lea    0x2e3(%rip),%rcx        # c70 <__libc_csu_init>
 98d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 7e0 <main>
 994:	ff 15 46 16 20 00    	callq  *0x201646(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 99a:	f4                   	hlt    
 99b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009a0 <deregister_tm_clones>:
 9a0:	48 8d 3d 69 16 20 00 	lea    0x201669(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9a7:	55                   	push   %rbp
 9a8:	48 8d 05 61 16 20 00 	lea    0x201661(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 9af:	48 39 f8             	cmp    %rdi,%rax
 9b2:	48 89 e5             	mov    %rsp,%rbp
 9b5:	74 19                	je     9d0 <deregister_tm_clones+0x30>
 9b7:	48 8b 05 1a 16 20 00 	mov    0x20161a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9be:	48 85 c0             	test   %rax,%rax
 9c1:	74 0d                	je     9d0 <deregister_tm_clones+0x30>
 9c3:	5d                   	pop    %rbp
 9c4:	ff e0                	jmpq   *%rax
 9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9cd:	00 00 00 
 9d0:	5d                   	pop    %rbp
 9d1:	c3                   	retq   
 9d2:	0f 1f 40 00          	nopl   0x0(%rax)
 9d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9dd:	00 00 00 

00000000000009e0 <register_tm_clones>:
 9e0:	48 8d 3d 29 16 20 00 	lea    0x201629(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9e7:	48 8d 35 22 16 20 00 	lea    0x201622(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 9ee:	55                   	push   %rbp
 9ef:	48 29 fe             	sub    %rdi,%rsi
 9f2:	48 89 e5             	mov    %rsp,%rbp
 9f5:	48 c1 fe 03          	sar    $0x3,%rsi
 9f9:	48 89 f0             	mov    %rsi,%rax
 9fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 a00:	48 01 c6             	add    %rax,%rsi
 a03:	48 d1 fe             	sar    %rsi
 a06:	74 18                	je     a20 <register_tm_clones+0x40>
 a08:	48 8b 05 e1 15 20 00 	mov    0x2015e1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a0f:	48 85 c0             	test   %rax,%rax
 a12:	74 0c                	je     a20 <register_tm_clones+0x40>
 a14:	5d                   	pop    %rbp
 a15:	ff e0                	jmpq   *%rax
 a17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a1e:	00 00 
 a20:	5d                   	pop    %rbp
 a21:	c3                   	retq   
 a22:	0f 1f 40 00          	nopl   0x0(%rax)
 a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a2d:	00 00 00 

0000000000000a30 <__do_global_dtors_aux>:
 a30:	80 3d e1 15 20 00 00 	cmpb   $0x0,0x2015e1(%rip)        # 202018 <completed.7698>
 a37:	75 2f                	jne    a68 <__do_global_dtors_aux+0x38>
 a39:	48 83 3d b7 15 20 00 	cmpq   $0x0,0x2015b7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a40:	00 
 a41:	55                   	push   %rbp
 a42:	48 89 e5             	mov    %rsp,%rbp
 a45:	74 0c                	je     a53 <__do_global_dtors_aux+0x23>
 a47:	48 8b 3d ba 15 20 00 	mov    0x2015ba(%rip),%rdi        # 202008 <__dso_handle>
 a4e:	e8 7d fd ff ff       	callq  7d0 <__cxa_finalize@plt>
 a53:	e8 48 ff ff ff       	callq  9a0 <deregister_tm_clones>
 a58:	c6 05 b9 15 20 00 01 	movb   $0x1,0x2015b9(%rip)        # 202018 <completed.7698>
 a5f:	5d                   	pop    %rbp
 a60:	c3                   	retq   
 a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a68:	f3 c3                	repz retq 
 a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a70 <frame_dummy>:
 a70:	55                   	push   %rbp
 a71:	48 89 e5             	mov    %rsp,%rbp
 a74:	5d                   	pop    %rbp
 a75:	e9 66 ff ff ff       	jmpq   9e0 <register_tm_clones>
 a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a80 <insert>:
 a80:	48 85 ff             	test   %rdi,%rdi
 a83:	74 5b                	je     ae0 <insert+0x60>
 a85:	4c 8b 06             	mov    (%rsi),%r8
 a88:	49 89 f9             	mov    %rdi,%r9
 a8b:	48 89 fa             	mov    %rdi,%rdx
 a8e:	eb 0f                	jmp    a9f <insert+0x1f>
 a90:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a94:	49 89 d1             	mov    %rdx,%r9
 a97:	48 85 c9             	test   %rcx,%rcx
 a9a:	74 24                	je     ac0 <insert+0x40>
 a9c:	48 89 ca             	mov    %rcx,%rdx
 a9f:	4c 39 02             	cmp    %r8,(%rdx)
 aa2:	7c ec                	jl     a90 <insert+0x10>
 aa4:	48 39 fa             	cmp    %rdi,%rdx
 aa7:	74 4f                	je     af8 <insert+0x78>
 aa9:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 aad:	48 89 f8             	mov    %rdi,%rax
 ab0:	49 89 71 10          	mov    %rsi,0x10(%r9)
 ab4:	83 05 61 15 20 00 01 	addl   $0x1,0x201561(%rip)        # 20201c <n>
 abb:	c3                   	retq   
 abc:	0f 1f 40 00          	nopl   0x0(%rax)
 ac0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 ac4:	48 89 f8             	mov    %rdi,%rax
 ac7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ace:	00 
 acf:	83 05 46 15 20 00 01 	addl   $0x1,0x201546(%rip)        # 20201c <n>
 ad6:	c3                   	retq   
 ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 ade:	00 00 
 ae0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ae7:	00 
 ae8:	48 89 f0             	mov    %rsi,%rax
 aeb:	83 05 2a 15 20 00 01 	addl   $0x1,0x20152a(%rip)        # 20201c <n>
 af2:	c3                   	retq   
 af3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 af8:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 afc:	48 89 f0             	mov    %rsi,%rax
 aff:	83 05 16 15 20 00 01 	addl   $0x1,0x201516(%rip)        # 20201c <n>
 b06:	c3                   	retq   
 b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b0e:	00 00 

0000000000000b10 <create>:
 b10:	41 54                	push   %r12
 b12:	55                   	push   %rbp
 b13:	48 89 fd             	mov    %rdi,%rbp
 b16:	53                   	push   %rbx
 b17:	bf 18 00 00 00       	mov    $0x18,%edi
 b1c:	e8 6f fc ff ff       	callq  790 <malloc@plt>
 b21:	48 8d 3d cc 01 00 00 	lea    0x1cc(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 b28:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b2c:	48 89 c3             	mov    %rax,%rbx
 b2f:	48 89 c6             	mov    %rax,%rsi
 b32:	31 c0                	xor    %eax,%eax
 b34:	e8 87 fc ff ff       	callq  7c0 <__isoc99_scanf@plt>
 b39:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b3d:	74 43                	je     b82 <create+0x72>
 b3f:	4c 8d 25 ae 01 00 00 	lea    0x1ae(%rip),%r12        # cf4 <_IO_stdin_used+0x4>
 b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b4d:	00 00 00 
 b50:	48 89 de             	mov    %rbx,%rsi
 b53:	48 89 ef             	mov    %rbp,%rdi
 b56:	e8 25 ff ff ff       	callq  a80 <insert>
 b5b:	bf 18 00 00 00       	mov    $0x18,%edi
 b60:	48 89 c5             	mov    %rax,%rbp
 b63:	e8 28 fc ff ff       	callq  790 <malloc@plt>
 b68:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b6c:	48 89 c3             	mov    %rax,%rbx
 b6f:	48 89 c6             	mov    %rax,%rsi
 b72:	4c 89 e7             	mov    %r12,%rdi
 b75:	31 c0                	xor    %eax,%eax
 b77:	e8 44 fc ff ff       	callq  7c0 <__isoc99_scanf@plt>
 b7c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b80:	75 ce                	jne    b50 <create+0x40>
 b82:	48 89 e8             	mov    %rbp,%rax
 b85:	5b                   	pop    %rbx
 b86:	5d                   	pop    %rbp
 b87:	41 5c                	pop    %r12
 b89:	c3                   	retq   
 b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b90 <del>:
 b90:	53                   	push   %rbx
 b91:	48 89 fa             	mov    %rdi,%rdx
 b94:	48 89 fb             	mov    %rdi,%rbx
 b97:	48 83 ec 10          	sub    $0x10,%rsp
 b9b:	48 85 ff             	test   %rdi,%rdi
 b9e:	75 13                	jne    bb3 <del+0x23>
 ba0:	eb 5a                	jmp    bfc <del+0x6c>
 ba2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ba8:	48 85 c0             	test   %rax,%rax
 bab:	74 0f                	je     bbc <del+0x2c>
 bad:	48 89 fa             	mov    %rdi,%rdx
 bb0:	48 89 c7             	mov    %rax,%rdi
 bb3:	48 39 37             	cmp    %rsi,(%rdi)
 bb6:	48 8b 47 10          	mov    0x10(%rdi),%rax
 bba:	75 ec                	jne    ba8 <del+0x18>
 bbc:	48 39 df             	cmp    %rbx,%rdi
 bbf:	74 1f                	je     be0 <del+0x50>
 bc1:	48 89 42 10          	mov    %rax,0x10(%rdx)
 bc5:	e8 86 fb ff ff       	callq  750 <free@plt>
 bca:	83 2d 4b 14 20 00 01 	subl   $0x1,0x20144b(%rip)        # 20201c <n>
 bd1:	48 89 d8             	mov    %rbx,%rax
 bd4:	48 83 c4 10          	add    $0x10,%rsp
 bd8:	5b                   	pop    %rbx
 bd9:	c3                   	retq   
 bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 be0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 be5:	e8 66 fb ff ff       	callq  750 <free@plt>
 bea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 bef:	83 2d 26 14 20 00 01 	subl   $0x1,0x201426(%rip)        # 20201c <n>
 bf6:	48 83 c4 10          	add    $0x10,%rsp
 bfa:	5b                   	pop    %rbx
 bfb:	c3                   	retq   
 bfc:	48 8d 3d f8 00 00 00 	lea    0xf8(%rip),%rdi        # cfb <_IO_stdin_used+0xb>
 c03:	e8 58 fb ff ff       	callq  760 <puts@plt>
 c08:	31 c0                	xor    %eax,%eax
 c0a:	eb c8                	jmp    bd4 <del+0x44>
 c0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c10 <print>:
 c10:	48 85 ff             	test   %rdi,%rdi
 c13:	74 4b                	je     c60 <print+0x50>
 c15:	55                   	push   %rbp
 c16:	53                   	push   %rbx
 c17:	48 8d 2d eb 00 00 00 	lea    0xeb(%rip),%rbp        # d09 <_IO_stdin_used+0x19>
 c1e:	48 89 fb             	mov    %rdi,%rbx
 c21:	48 83 ec 08          	sub    $0x8,%rsp
 c25:	0f 1f 00             	nopl   (%rax)
 c28:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c2c:	48 8b 13             	mov    (%rbx),%rdx
 c2f:	48 89 ee             	mov    %rbp,%rsi
 c32:	bf 01 00 00 00       	mov    $0x1,%edi
 c37:	b8 01 00 00 00       	mov    $0x1,%eax
 c3c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c41:	e8 6a fb ff ff       	callq  7b0 <__printf_chk@plt>
 c46:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c4a:	48 85 db             	test   %rbx,%rbx
 c4d:	75 d9                	jne    c28 <print+0x18>
 c4f:	48 83 c4 08          	add    $0x8,%rsp
 c53:	5b                   	pop    %rbx
 c54:	5d                   	pop    %rbp
 c55:	c3                   	retq   
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 
 c60:	f3 c3                	repz retq 
 c62:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c69:	00 00 00 
 c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c70 <__libc_csu_init>:
 c70:	41 57                	push   %r15
 c72:	41 56                	push   %r14
 c74:	49 89 d7             	mov    %rdx,%r15
 c77:	41 55                	push   %r13
 c79:	41 54                	push   %r12
 c7b:	4c 8d 25 fe 10 20 00 	lea    0x2010fe(%rip),%r12        # 201d80 <__frame_dummy_init_array_entry>
 c82:	55                   	push   %rbp
 c83:	48 8d 2d fe 10 20 00 	lea    0x2010fe(%rip),%rbp        # 201d88 <__init_array_end>
 c8a:	53                   	push   %rbx
 c8b:	41 89 fd             	mov    %edi,%r13d
 c8e:	49 89 f6             	mov    %rsi,%r14
 c91:	4c 29 e5             	sub    %r12,%rbp
 c94:	48 83 ec 08          	sub    $0x8,%rsp
 c98:	48 c1 fd 03          	sar    $0x3,%rbp
 c9c:	e8 7f fa ff ff       	callq  720 <_init>
 ca1:	48 85 ed             	test   %rbp,%rbp
 ca4:	74 20                	je     cc6 <__libc_csu_init+0x56>
 ca6:	31 db                	xor    %ebx,%ebx
 ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 caf:	00 
 cb0:	4c 89 fa             	mov    %r15,%rdx
 cb3:	4c 89 f6             	mov    %r14,%rsi
 cb6:	44 89 ef             	mov    %r13d,%edi
 cb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cbd:	48 83 c3 01          	add    $0x1,%rbx
 cc1:	48 39 dd             	cmp    %rbx,%rbp
 cc4:	75 ea                	jne    cb0 <__libc_csu_init+0x40>
 cc6:	48 83 c4 08          	add    $0x8,%rsp
 cca:	5b                   	pop    %rbx
 ccb:	5d                   	pop    %rbp
 ccc:	41 5c                	pop    %r12
 cce:	41 5d                	pop    %r13
 cd0:	41 5e                	pop    %r14
 cd2:	41 5f                	pop    %r15
 cd4:	c3                   	retq   
 cd5:	90                   	nop
 cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cdd:	00 00 00 

0000000000000ce0 <__libc_csu_fini>:
 ce0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ce4 <_fini>:
 ce4:	48 83 ec 08          	sub    $0x8,%rsp
 ce8:	48 83 c4 08          	add    $0x8,%rsp
 cec:	c3                   	retq   
