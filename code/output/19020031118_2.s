
input/19020031118_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006a8 <_init>:
 6a8:	48 83 ec 08          	sub    $0x8,%rsp
 6ac:	48 8b 05 35 19 20 00 	mov    0x201935(%rip),%rax        # 201fe8 <__gmon_start__>
 6b3:	48 85 c0             	test   %rax,%rax
 6b6:	74 02                	je     6ba <_init+0x12>
 6b8:	ff d0                	callq  *%rax
 6ba:	48 83 c4 08          	add    $0x8,%rsp
 6be:	c3                   	retq   

Disassembly of section .plt:

00000000000006c0 <.plt>:
 6c0:	ff 35 ca 18 20 00    	pushq  0x2018ca(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6c6:	ff 25 cc 18 20 00    	jmpq   *0x2018cc(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006d0 <free@plt>:
 6d0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 6d6:	68 00 00 00 00       	pushq  $0x0
 6db:	e9 e0 ff ff ff       	jmpq   6c0 <.plt>

00000000000006e0 <putchar@plt>:
 6e0:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 6e6:	68 01 00 00 00       	pushq  $0x1
 6eb:	e9 d0 ff ff ff       	jmpq   6c0 <.plt>

00000000000006f0 <puts@plt>:
 6f0:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6f6:	68 02 00 00 00       	pushq  $0x2
 6fb:	e9 c0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000700 <__stack_chk_fail@plt>:
 700:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 706:	68 03 00 00 00       	pushq  $0x3
 70b:	e9 b0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000710 <malloc@plt>:
 710:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 716:	68 04 00 00 00       	pushq  $0x4
 71b:	e9 a0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000720 <__printf_chk@plt>:
 720:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 726:	68 05 00 00 00       	pushq  $0x5
 72b:	e9 90 ff ff ff       	jmpq   6c0 <.plt>

0000000000000730 <__isoc99_scanf@plt>:
 730:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 736:	68 06 00 00 00       	pushq  $0x6
 73b:	e9 80 ff ff ff       	jmpq   6c0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <__cxa_finalize@plt>:
 740:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <main>:
 750:	41 56                	push   %r14
 752:	41 55                	push   %r13
 754:	48 8d 3d 05 06 00 00 	lea    0x605(%rip),%rdi        # d60 <_IO_stdin_used+0xf0>
 75b:	41 54                	push   %r12
 75d:	55                   	push   %rbp
 75e:	53                   	push   %rbx
 75f:	31 db                	xor    %ebx,%ebx
 761:	48 83 ec 20          	sub    $0x20,%rsp
 765:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 76c:	00 00 
 76e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 773:	31 c0                	xor    %eax,%eax
 775:	e8 76 ff ff ff       	callq  6f0 <puts@plt>
 77a:	bf 18 00 00 00       	mov    $0x18,%edi
 77f:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 784:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 789:	e8 82 ff ff ff       	callq  710 <malloc@plt>
 78e:	48 89 c5             	mov    %rax,%rbp
 791:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 798:	00 
 799:	eb 6e                	jmp    809 <main+0xb9>
 79b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7a0:	83 f8 02             	cmp    $0x2,%eax
 7a3:	75 5c                	jne    801 <main+0xb1>
 7a5:	48 8d 35 4f 06 00 00 	lea    0x64f(%rip),%rsi        # dfb <_IO_stdin_used+0x18b>
 7ac:	bf 01 00 00 00       	mov    $0x1,%edi
 7b1:	31 c0                	xor    %eax,%eax
 7b3:	4c 63 f3             	movslq %ebx,%r14
 7b6:	e8 65 ff ff ff       	callq  720 <__printf_chk@plt>
 7bb:	48 8d 3d 4e 06 00 00 	lea    0x64e(%rip),%rdi        # e10 <_IO_stdin_used+0x1a0>
 7c2:	31 c0                	xor    %eax,%eax
 7c4:	4c 89 ee             	mov    %r13,%rsi
 7c7:	e8 64 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 7cc:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
 7d1:	74 12                	je     7e5 <main+0x95>
 7d3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7d8:	89 da                	mov    %ebx,%edx
 7da:	48 89 ef             	mov    %rbp,%rdi
 7dd:	e8 3e 02 00 00       	callq  a20 <del.part.0>
 7e2:	49 89 c6             	mov    %rax,%r14
 7e5:	bf 0a 00 00 00       	mov    $0xa,%edi
 7ea:	44 89 f3             	mov    %r14d,%ebx
 7ed:	e8 ee fe ff ff       	callq  6e0 <putchar@plt>
 7f2:	44 89 f6             	mov    %r14d,%esi
 7f5:	48 89 ef             	mov    %rbp,%rdi
 7f8:	e8 53 03 00 00       	callq  b50 <print>
 7fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 801:	85 c0                	test   %eax,%eax
 803:	0f 84 d7 00 00 00    	je     8e0 <main+0x190>
 809:	48 8d 3d ac 05 00 00 	lea    0x5ac(%rip),%rdi        # dbc <_IO_stdin_used+0x14c>
 810:	e8 db fe ff ff       	callq  6f0 <puts@plt>
 815:	48 8d 35 bb 05 00 00 	lea    0x5bb(%rip),%rsi        # dd7 <_IO_stdin_used+0x167>
 81c:	bf 01 00 00 00       	mov    $0x1,%edi
 821:	31 c0                	xor    %eax,%eax
 823:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 82a:	ff 
 82b:	e8 f0 fe ff ff       	callq  720 <__printf_chk@plt>
 830:	48 8d 3d ad 05 00 00 	lea    0x5ad(%rip),%rdi        # de4 <_IO_stdin_used+0x174>
 837:	31 c0                	xor    %eax,%eax
 839:	4c 89 e6             	mov    %r12,%rsi
 83c:	e8 ef fe ff ff       	callq  730 <__isoc99_scanf@plt>
 841:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 845:	83 f8 01             	cmp    $0x1,%eax
 848:	0f 85 52 ff ff ff    	jne    7a0 <main+0x50>
 84e:	48 8d 35 33 05 00 00 	lea    0x533(%rip),%rsi        # d88 <_IO_stdin_used+0x118>
 855:	bf 01 00 00 00       	mov    $0x1,%edi
 85a:	31 c0                	xor    %eax,%eax
 85c:	83 c3 01             	add    $0x1,%ebx
 85f:	e8 bc fe ff ff       	callq  720 <__printf_chk@plt>
 864:	bf 18 00 00 00       	mov    $0x18,%edi
 869:	e8 a2 fe ff ff       	callq  710 <malloc@plt>
 86e:	48 8d 3d 72 05 00 00 	lea    0x572(%rip),%rdi        # de7 <_IO_stdin_used+0x177>
 875:	48 8d 50 08          	lea    0x8(%rax),%rdx
 879:	49 89 c6             	mov    %rax,%r14
 87c:	48 89 c6             	mov    %rax,%rsi
 87f:	31 c0                	xor    %eax,%eax
 881:	e8 aa fe ff ff       	callq  730 <__isoc99_scanf@plt>
 886:	49 8b 16             	mov    (%r14),%rdx
 889:	48 89 e9             	mov    %rbp,%rcx
 88c:	eb 0a                	jmp    898 <main+0x148>
 88e:	66 90                	xchg   %ax,%ax
 890:	48 3b 10             	cmp    (%rax),%rdx
 893:	7e 6b                	jle    900 <main+0x1b0>
 895:	48 89 c1             	mov    %rax,%rcx
 898:	48 8b 41 10          	mov    0x10(%rcx),%rax
 89c:	48 85 c0             	test   %rax,%rax
 89f:	75 ef                	jne    890 <main+0x140>
 8a1:	4c 89 71 10          	mov    %r14,0x10(%rcx)
 8a5:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
 8ac:	00 
 8ad:	48 8d 35 39 05 00 00 	lea    0x539(%rip),%rsi        # ded <_IO_stdin_used+0x17d>
 8b4:	bf 01 00 00 00       	mov    $0x1,%edi
 8b9:	31 c0                	xor    %eax,%eax
 8bb:	e8 60 fe ff ff       	callq  720 <__printf_chk@plt>
 8c0:	bf 0a 00 00 00       	mov    $0xa,%edi
 8c5:	e8 16 fe ff ff       	callq  6e0 <putchar@plt>
 8ca:	89 de                	mov    %ebx,%esi
 8cc:	48 89 ef             	mov    %rbp,%rdi
 8cf:	e8 7c 02 00 00       	callq  b50 <print>
 8d4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8d8:	85 c0                	test   %eax,%eax
 8da:	0f 85 29 ff ff ff    	jne    809 <main+0xb9>
 8e0:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 8e5:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
 8ec:	00 00 
 8ee:	75 1a                	jne    90a <main+0x1ba>
 8f0:	48 83 c4 20          	add    $0x20,%rsp
 8f4:	5b                   	pop    %rbx
 8f5:	5d                   	pop    %rbp
 8f6:	41 5c                	pop    %r12
 8f8:	41 5d                	pop    %r13
 8fa:	41 5e                	pop    %r14
 8fc:	c3                   	retq   
 8fd:	0f 1f 00             	nopl   (%rax)
 900:	49 89 46 10          	mov    %rax,0x10(%r14)
 904:	4c 89 71 10          	mov    %r14,0x10(%rcx)
 908:	eb a3                	jmp    8ad <main+0x15d>
 90a:	e8 f1 fd ff ff       	callq  700 <__stack_chk_fail@plt>
 90f:	90                   	nop

0000000000000910 <_start>:
 910:	31 ed                	xor    %ebp,%ebp
 912:	49 89 d1             	mov    %rdx,%r9
 915:	5e                   	pop    %rsi
 916:	48 89 e2             	mov    %rsp,%rdx
 919:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 91d:	50                   	push   %rax
 91e:	54                   	push   %rsp
 91f:	4c 8d 05 3a 03 00 00 	lea    0x33a(%rip),%r8        # c60 <__libc_csu_fini>
 926:	48 8d 0d c3 02 00 00 	lea    0x2c3(%rip),%rcx        # bf0 <__libc_csu_init>
 92d:	48 8d 3d 1c fe ff ff 	lea    -0x1e4(%rip),%rdi        # 750 <main>
 934:	ff 15 a6 16 20 00    	callq  *0x2016a6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 93a:	f4                   	hlt    
 93b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000940 <deregister_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    0x2016c9(%rip),%rdi        # 202010 <__TMC_END__>
 947:	55                   	push   %rbp
 948:	48 8d 05 c1 16 20 00 	lea    0x2016c1(%rip),%rax        # 202010 <__TMC_END__>
 94f:	48 39 f8             	cmp    %rdi,%rax
 952:	48 89 e5             	mov    %rsp,%rbp
 955:	74 19                	je     970 <deregister_tm_clones+0x30>
 957:	48 8b 05 7a 16 20 00 	mov    0x20167a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 95e:	48 85 c0             	test   %rax,%rax
 961:	74 0d                	je     970 <deregister_tm_clones+0x30>
 963:	5d                   	pop    %rbp
 964:	ff e0                	jmpq   *%rax
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 
 970:	5d                   	pop    %rbp
 971:	c3                   	retq   
 972:	0f 1f 40 00          	nopl   0x0(%rax)
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 

0000000000000980 <register_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <__TMC_END__>
 987:	48 8d 35 82 16 20 00 	lea    0x201682(%rip),%rsi        # 202010 <__TMC_END__>
 98e:	55                   	push   %rbp
 98f:	48 29 fe             	sub    %rdi,%rsi
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	48 c1 fe 03          	sar    $0x3,%rsi
 999:	48 89 f0             	mov    %rsi,%rax
 99c:	48 c1 e8 3f          	shr    $0x3f,%rax
 9a0:	48 01 c6             	add    %rax,%rsi
 9a3:	48 d1 fe             	sar    %rsi
 9a6:	74 18                	je     9c0 <register_tm_clones+0x40>
 9a8:	48 8b 05 41 16 20 00 	mov    0x201641(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9af:	48 85 c0             	test   %rax,%rax
 9b2:	74 0c                	je     9c0 <register_tm_clones+0x40>
 9b4:	5d                   	pop    %rbp
 9b5:	ff e0                	jmpq   *%rax
 9b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9be:	00 00 
 9c0:	5d                   	pop    %rbp
 9c1:	c3                   	retq   
 9c2:	0f 1f 40 00          	nopl   0x0(%rax)
 9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9cd:	00 00 00 

00000000000009d0 <__do_global_dtors_aux>:
 9d0:	80 3d 39 16 20 00 00 	cmpb   $0x0,0x201639(%rip)        # 202010 <__TMC_END__>
 9d7:	75 2f                	jne    a08 <__do_global_dtors_aux+0x38>
 9d9:	48 83 3d 17 16 20 00 	cmpq   $0x0,0x201617(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9e0:	00 
 9e1:	55                   	push   %rbp
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	74 0c                	je     9f3 <__do_global_dtors_aux+0x23>
 9e7:	48 8b 3d 1a 16 20 00 	mov    0x20161a(%rip),%rdi        # 202008 <__dso_handle>
 9ee:	e8 4d fd ff ff       	callq  740 <__cxa_finalize@plt>
 9f3:	e8 48 ff ff ff       	callq  940 <deregister_tm_clones>
 9f8:	c6 05 11 16 20 00 01 	movb   $0x1,0x201611(%rip)        # 202010 <__TMC_END__>
 9ff:	5d                   	pop    %rbp
 a00:	c3                   	retq   
 a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a08:	f3 c3                	repz retq 
 a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a10 <frame_dummy>:
 a10:	55                   	push   %rbp
 a11:	48 89 e5             	mov    %rsp,%rbp
 a14:	5d                   	pop    %rbp
 a15:	e9 66 ff ff ff       	jmpq   980 <register_tm_clones>
 a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a20 <del.part.0>:
 a20:	41 55                	push   %r13
 a22:	41 54                	push   %r12
 a24:	49 89 fd             	mov    %rdi,%r13
 a27:	55                   	push   %rbp
 a28:	53                   	push   %rbx
 a29:	48 89 f5             	mov    %rsi,%rbp
 a2c:	41 89 d4             	mov    %edx,%r12d
 a2f:	31 c0                	xor    %eax,%eax
 a31:	48 83 ec 08          	sub    $0x8,%rsp
 a35:	48 8b 0f             	mov    (%rdi),%rcx
 a38:	eb 09                	jmp    a43 <del.part.0+0x23>
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a40:	48 89 df             	mov    %rbx,%rdi
 a43:	48 39 cd             	cmp    %rcx,%rbp
 a46:	74 38                	je     a80 <del.part.0+0x60>
 a48:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 a4c:	48 85 db             	test   %rbx,%rbx
 a4f:	74 2f                	je     a80 <del.part.0+0x60>
 a51:	48 8b 0b             	mov    (%rbx),%rcx
 a54:	48 39 e9             	cmp    %rbp,%rcx
 a57:	75 e7                	jne    a40 <del.part.0+0x20>
 a59:	48 8b 43 10          	mov    0x10(%rbx),%rax
 a5d:	4c 39 e8             	cmp    %r13,%rax
 a60:	74 04                	je     a66 <del.part.0+0x46>
 a62:	48 89 47 10          	mov    %rax,0x10(%rdi)
 a66:	48 89 df             	mov    %rbx,%rdi
 a69:	41 83 ec 01          	sub    $0x1,%r12d
 a6d:	e8 5e fc ff ff       	callq  6d0 <free@plt>
 a72:	48 8b 0b             	mov    (%rbx),%rcx
 a75:	b8 01 00 00 00       	mov    $0x1,%eax
 a7a:	eb c4                	jmp    a40 <del.part.0+0x20>
 a7c:	0f 1f 40 00          	nopl   0x0(%rax)
 a80:	85 c0                	test   %eax,%eax
 a82:	74 14                	je     a98 <del.part.0+0x78>
 a84:	48 83 c4 08          	add    $0x8,%rsp
 a88:	49 63 c4             	movslq %r12d,%rax
 a8b:	5b                   	pop    %rbx
 a8c:	5d                   	pop    %rbp
 a8d:	41 5c                	pop    %r12
 a8f:	41 5d                	pop    %r13
 a91:	c3                   	retq   
 a92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a98:	48 8d 3d d9 01 00 00 	lea    0x1d9(%rip),%rdi        # c78 <_IO_stdin_used+0x8>
 a9f:	e8 4c fc ff ff       	callq  6f0 <puts@plt>
 aa4:	48 83 c4 08          	add    $0x8,%rsp
 aa8:	49 63 c4             	movslq %r12d,%rax
 aab:	5b                   	pop    %rbx
 aac:	5d                   	pop    %rbp
 aad:	41 5c                	pop    %r12
 aaf:	41 5d                	pop    %r13
 ab1:	c3                   	retq   
 ab2:	0f 1f 40 00          	nopl   0x0(%rax)
 ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 abd:	00 00 00 

0000000000000ac0 <create>:
 ac0:	48 83 ec 08          	sub    $0x8,%rsp
 ac4:	bf 18 00 00 00       	mov    $0x18,%edi
 ac9:	e8 42 fc ff ff       	callq  710 <malloc@plt>
 ace:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 ad5:	00 
 ad6:	48 83 c4 08          	add    $0x8,%rsp
 ada:	c3                   	retq   
 adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ae0 <insert>:
 ae0:	48 89 f8             	mov    %rdi,%rax
 ae3:	48 89 f9             	mov    %rdi,%rcx
 ae6:	eb 13                	jmp    afb <insert+0x1b>
 ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aef:	00 
 af0:	48 8b 3a             	mov    (%rdx),%rdi
 af3:	48 39 3e             	cmp    %rdi,(%rsi)
 af6:	7e 20                	jle    b18 <insert+0x38>
 af8:	48 89 d1             	mov    %rdx,%rcx
 afb:	48 8b 51 10          	mov    0x10(%rcx),%rdx
 aff:	48 85 d2             	test   %rdx,%rdx
 b02:	75 ec                	jne    af0 <insert+0x10>
 b04:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 b08:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b0f:	00 
 b10:	c3                   	retq   
 b11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b18:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b1c:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 b20:	c3                   	retq   
 b21:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b2d:	00 00 00 

0000000000000b30 <del>:
 b30:	48 83 7f 10 00       	cmpq   $0x0,0x10(%rdi)
 b35:	74 09                	je     b40 <del+0x10>
 b37:	e9 e4 fe ff ff       	jmpq   a20 <del.part.0>
 b3c:	0f 1f 40 00          	nopl   0x0(%rax)
 b40:	48 63 d2             	movslq %edx,%rdx
 b43:	48 89 d0             	mov    %rdx,%rax
 b46:	c3                   	retq   
 b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b4e:	00 00 

0000000000000b50 <print>:
 b50:	55                   	push   %rbp
 b51:	53                   	push   %rbx
 b52:	48 83 ec 08          	sub    $0x8,%rsp
 b56:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 b5a:	48 85 db             	test   %rbx,%rbx
 b5d:	74 79                	je     bd8 <print+0x88>
 b5f:	89 f2                	mov    %esi,%edx
 b61:	48 8d 35 40 01 00 00 	lea    0x140(%rip),%rsi        # ca8 <_IO_stdin_used+0x38>
 b68:	bf 01 00 00 00       	mov    $0x1,%edi
 b6d:	31 c0                	xor    %eax,%eax
 b6f:	48 8d 2d 92 01 00 00 	lea    0x192(%rip),%rbp        # d08 <_IO_stdin_used+0x98>
 b76:	e8 a5 fb ff ff       	callq  720 <__printf_chk@plt>
 b7b:	48 8d 3d 56 01 00 00 	lea    0x156(%rip),%rdi        # cd8 <_IO_stdin_used+0x68>
 b82:	e8 69 fb ff ff       	callq  6f0 <puts@plt>
 b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b8e:	00 00 
 b90:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b94:	48 8b 13             	mov    (%rbx),%rdx
 b97:	48 89 ee             	mov    %rbp,%rsi
 b9a:	bf 01 00 00 00       	mov    $0x1,%edi
 b9f:	b8 01 00 00 00       	mov    $0x1,%eax
 ba4:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 ba9:	e8 72 fb ff ff       	callq  720 <__printf_chk@plt>
 bae:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bb2:	48 85 db             	test   %rbx,%rbx
 bb5:	75 d9                	jne    b90 <print+0x40>
 bb7:	48 8d 3d 72 01 00 00 	lea    0x172(%rip),%rdi        # d30 <_IO_stdin_used+0xc0>
 bbe:	e8 2d fb ff ff       	callq  6f0 <puts@plt>
 bc3:	48 83 c4 08          	add    $0x8,%rsp
 bc7:	bf 0a 00 00 00       	mov    $0xa,%edi
 bcc:	5b                   	pop    %rbx
 bcd:	5d                   	pop    %rbp
 bce:	e9 0d fb ff ff       	jmpq   6e0 <putchar@plt>
 bd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bd8:	48 8d 3d c9 01 00 00 	lea    0x1c9(%rip),%rdi        # da8 <_IO_stdin_used+0x138>
 bdf:	e8 0c fb ff ff       	callq  6f0 <puts@plt>
 be4:	eb d1                	jmp    bb7 <print+0x67>
 be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bed:	00 00 00 

0000000000000bf0 <__libc_csu_init>:
 bf0:	41 57                	push   %r15
 bf2:	41 56                	push   %r14
 bf4:	49 89 d7             	mov    %rdx,%r15
 bf7:	41 55                	push   %r13
 bf9:	41 54                	push   %r12
 bfb:	4c 8d 25 86 11 20 00 	lea    0x201186(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c02:	55                   	push   %rbp
 c03:	48 8d 2d 86 11 20 00 	lea    0x201186(%rip),%rbp        # 201d90 <__init_array_end>
 c0a:	53                   	push   %rbx
 c0b:	41 89 fd             	mov    %edi,%r13d
 c0e:	49 89 f6             	mov    %rsi,%r14
 c11:	4c 29 e5             	sub    %r12,%rbp
 c14:	48 83 ec 08          	sub    $0x8,%rsp
 c18:	48 c1 fd 03          	sar    $0x3,%rbp
 c1c:	e8 87 fa ff ff       	callq  6a8 <_init>
 c21:	48 85 ed             	test   %rbp,%rbp
 c24:	74 20                	je     c46 <__libc_csu_init+0x56>
 c26:	31 db                	xor    %ebx,%ebx
 c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c2f:	00 
 c30:	4c 89 fa             	mov    %r15,%rdx
 c33:	4c 89 f6             	mov    %r14,%rsi
 c36:	44 89 ef             	mov    %r13d,%edi
 c39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c3d:	48 83 c3 01          	add    $0x1,%rbx
 c41:	48 39 dd             	cmp    %rbx,%rbp
 c44:	75 ea                	jne    c30 <__libc_csu_init+0x40>
 c46:	48 83 c4 08          	add    $0x8,%rsp
 c4a:	5b                   	pop    %rbx
 c4b:	5d                   	pop    %rbp
 c4c:	41 5c                	pop    %r12
 c4e:	41 5d                	pop    %r13
 c50:	41 5e                	pop    %r14
 c52:	41 5f                	pop    %r15
 c54:	c3                   	retq   
 c55:	90                   	nop
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 

0000000000000c60 <__libc_csu_fini>:
 c60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c64 <_fini>:
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 83 c4 08          	add    $0x8,%rsp
 c6c:	c3                   	retq   
