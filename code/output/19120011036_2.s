
input/19120011036_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000670 <_init>:
 670:	48 83 ec 08          	sub    $0x8,%rsp
 674:	48 8b 05 6d 19 20 00 	mov    0x20196d(%rip),%rax        # 201fe8 <__gmon_start__>
 67b:	48 85 c0             	test   %rax,%rax
 67e:	74 02                	je     682 <_init+0x12>
 680:	ff d0                	callq  *%rax
 682:	48 83 c4 08          	add    $0x8,%rsp
 686:	c3                   	retq   

Disassembly of section .plt:

0000000000000690 <.plt>:
 690:	ff 35 02 19 20 00    	pushq  0x201902(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 696:	ff 25 04 19 20 00    	jmpq   *0x201904(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 69c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006a0 <free@plt>:
 6a0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 6a6:	68 00 00 00 00       	pushq  $0x0
 6ab:	e9 e0 ff ff ff       	jmpq   690 <.plt>

00000000000006b0 <puts@plt>:
 6b0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6b6:	68 01 00 00 00       	pushq  $0x1
 6bb:	e9 d0 ff ff ff       	jmpq   690 <.plt>

00000000000006c0 <__stack_chk_fail@plt>:
 6c0:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6c6:	68 02 00 00 00       	pushq  $0x2
 6cb:	e9 c0 ff ff ff       	jmpq   690 <.plt>

00000000000006d0 <malloc@plt>:
 6d0:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6d6:	68 03 00 00 00       	pushq  $0x3
 6db:	e9 b0 ff ff ff       	jmpq   690 <.plt>

00000000000006e0 <__printf_chk@plt>:
 6e0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 6e6:	68 04 00 00 00       	pushq  $0x4
 6eb:	e9 a0 ff ff ff       	jmpq   690 <.plt>

00000000000006f0 <__isoc99_scanf@plt>:
 6f0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 6f6:	68 05 00 00 00       	pushq  $0x5
 6fb:	e9 90 ff ff ff       	jmpq   690 <.plt>

Disassembly of section .plt.got:

0000000000000700 <__cxa_finalize@plt>:
 700:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000710 <main>:
 710:	41 55                	push   %r13
 712:	41 54                	push   %r12
 714:	48 8d 3d 88 05 00 00 	lea    0x588(%rip),%rdi        # ca3 <_IO_stdin_used+0x63>
 71b:	55                   	push   %rbp
 71c:	53                   	push   %rbx
 71d:	48 83 ec 28          	sub    $0x28,%rsp
 721:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 728:	00 00 
 72a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 72f:	31 c0                	xor    %eax,%eax
 731:	e8 7a ff ff ff       	callq  6b0 <puts@plt>
 736:	48 8d 3d eb 05 00 00 	lea    0x5eb(%rip),%rdi        # d28 <_IO_stdin_used+0xe8>
 73d:	e8 6e ff ff ff       	callq  6b0 <puts@plt>
 742:	31 c0                	xor    %eax,%eax
 744:	e8 57 03 00 00       	callq  aa0 <create>
 749:	48 85 c0             	test   %rax,%rax
 74c:	48 89 c3             	mov    %rax,%rbx
 74f:	74 08                	je     759 <main+0x49>
 751:	48 89 c7             	mov    %rax,%rdi
 754:	e8 47 02 00 00       	callq  9a0 <print.part.0>
 759:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 75e:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 763:	eb 55                	jmp    7ba <main+0xaa>
 765:	0f 1f 00             	nopl   (%rax)
 768:	83 f8 02             	cmp    $0x2,%eax
 76b:	75 45                	jne    7b2 <main+0xa2>
 76d:	48 8d 35 9c 05 00 00 	lea    0x59c(%rip),%rsi        # d10 <_IO_stdin_used+0xd0>
 774:	bf 01 00 00 00       	mov    $0x1,%edi
 779:	31 c0                	xor    %eax,%eax
 77b:	e8 60 ff ff ff       	callq  6e0 <__printf_chk@plt>
 780:	48 8d 3d 9b 05 00 00 	lea    0x59b(%rip),%rdi        # d22 <_IO_stdin_used+0xe2>
 787:	4c 89 ee             	mov    %r13,%rsi
 78a:	31 c0                	xor    %eax,%eax
 78c:	e8 5f ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 791:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 796:	48 89 df             	mov    %rbx,%rdi
 799:	e8 82 03 00 00       	callq  b20 <del>
 79e:	48 85 c0             	test   %rax,%rax
 7a1:	48 89 c3             	mov    %rax,%rbx
 7a4:	74 08                	je     7ae <main+0x9e>
 7a6:	48 89 df             	mov    %rbx,%rdi
 7a9:	e8 f2 01 00 00       	callq  9a0 <print.part.0>
 7ae:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7b2:	85 c0                	test   %eax,%eax
 7b4:	0f 84 b6 00 00 00    	je     870 <main+0x160>
 7ba:	48 8d 3d f9 04 00 00 	lea    0x4f9(%rip),%rdi        # cba <_IO_stdin_used+0x7a>
 7c1:	e8 ea fe ff ff       	callq  6b0 <puts@plt>
 7c6:	48 8d 35 07 05 00 00 	lea    0x507(%rip),%rsi        # cd4 <_IO_stdin_used+0x94>
 7cd:	bf 01 00 00 00       	mov    $0x1,%edi
 7d2:	31 c0                	xor    %eax,%eax
 7d4:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 7db:	ff 
 7dc:	e8 ff fe ff ff       	callq  6e0 <__printf_chk@plt>
 7e1:	48 8d 3d fb 04 00 00 	lea    0x4fb(%rip),%rdi        # ce3 <_IO_stdin_used+0xa3>
 7e8:	31 c0                	xor    %eax,%eax
 7ea:	4c 89 e6             	mov    %r12,%rsi
 7ed:	e8 fe fe ff ff       	callq  6f0 <__isoc99_scanf@plt>
 7f2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7f6:	83 f8 01             	cmp    $0x1,%eax
 7f9:	0f 85 69 ff ff ff    	jne    768 <main+0x58>
 7ff:	48 8d 35 e0 04 00 00 	lea    0x4e0(%rip),%rsi        # ce6 <_IO_stdin_used+0xa6>
 806:	bf 01 00 00 00       	mov    $0x1,%edi
 80b:	31 c0                	xor    %eax,%eax
 80d:	e8 ce fe ff ff       	callq  6e0 <__printf_chk@plt>
 812:	bf 18 00 00 00       	mov    $0x18,%edi
 817:	e8 b4 fe ff ff       	callq  6d0 <malloc@plt>
 81c:	48 8d 3d 49 04 00 00 	lea    0x449(%rip),%rdi        # c6c <_IO_stdin_used+0x2c>
 823:	48 8d 50 08          	lea    0x8(%rax),%rdx
 827:	48 89 c5             	mov    %rax,%rbp
 82a:	48 89 c6             	mov    %rax,%rsi
 82d:	31 c0                	xor    %eax,%eax
 82f:	e8 bc fe ff ff       	callq  6f0 <__isoc99_scanf@plt>
 834:	48 89 df             	mov    %rbx,%rdi
 837:	48 89 ee             	mov    %rbp,%rsi
 83a:	e8 e1 01 00 00       	callq  a20 <insert>
 83f:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 843:	48 8d 35 b8 04 00 00 	lea    0x4b8(%rip),%rsi        # d02 <_IO_stdin_used+0xc2>
 84a:	48 89 c3             	mov    %rax,%rbx
 84d:	bf 01 00 00 00       	mov    $0x1,%edi
 852:	31 c0                	xor    %eax,%eax
 854:	e8 87 fe ff ff       	callq  6e0 <__printf_chk@plt>
 859:	48 85 db             	test   %rbx,%rbx
 85c:	0f 85 44 ff ff ff    	jne    7a6 <main+0x96>
 862:	e9 47 ff ff ff       	jmpq   7ae <main+0x9e>
 867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 86e:	00 00 
 870:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 875:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 87c:	00 00 
 87e:	75 0b                	jne    88b <main+0x17b>
 880:	48 83 c4 28          	add    $0x28,%rsp
 884:	5b                   	pop    %rbx
 885:	5d                   	pop    %rbp
 886:	41 5c                	pop    %r12
 888:	41 5d                	pop    %r13
 88a:	c3                   	retq   
 88b:	e8 30 fe ff ff       	callq  6c0 <__stack_chk_fail@plt>

0000000000000890 <_start>:
 890:	31 ed                	xor    %ebp,%ebp
 892:	49 89 d1             	mov    %rdx,%r9
 895:	5e                   	pop    %rsi
 896:	48 89 e2             	mov    %rsp,%rdx
 899:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 89d:	50                   	push   %rax
 89e:	54                   	push   %rsp
 89f:	4c 8d 05 8a 03 00 00 	lea    0x38a(%rip),%r8        # c30 <__libc_csu_fini>
 8a6:	48 8d 0d 13 03 00 00 	lea    0x313(%rip),%rcx        # bc0 <__libc_csu_init>
 8ad:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 710 <main>
 8b4:	ff 15 26 17 20 00    	callq  *0x201726(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ba:	f4                   	hlt    
 8bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008c0 <deregister_tm_clones>:
 8c0:	48 8d 3d 49 17 20 00 	lea    0x201749(%rip),%rdi        # 202010 <__TMC_END__>
 8c7:	55                   	push   %rbp
 8c8:	48 8d 05 41 17 20 00 	lea    0x201741(%rip),%rax        # 202010 <__TMC_END__>
 8cf:	48 39 f8             	cmp    %rdi,%rax
 8d2:	48 89 e5             	mov    %rsp,%rbp
 8d5:	74 19                	je     8f0 <deregister_tm_clones+0x30>
 8d7:	48 8b 05 fa 16 20 00 	mov    0x2016fa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8de:	48 85 c0             	test   %rax,%rax
 8e1:	74 0d                	je     8f0 <deregister_tm_clones+0x30>
 8e3:	5d                   	pop    %rbp
 8e4:	ff e0                	jmpq   *%rax
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <register_tm_clones>:
 900:	48 8d 3d 09 17 20 00 	lea    0x201709(%rip),%rdi        # 202010 <__TMC_END__>
 907:	48 8d 35 02 17 20 00 	lea    0x201702(%rip),%rsi        # 202010 <__TMC_END__>
 90e:	55                   	push   %rbp
 90f:	48 29 fe             	sub    %rdi,%rsi
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	48 c1 fe 03          	sar    $0x3,%rsi
 919:	48 89 f0             	mov    %rsi,%rax
 91c:	48 c1 e8 3f          	shr    $0x3f,%rax
 920:	48 01 c6             	add    %rax,%rsi
 923:	48 d1 fe             	sar    %rsi
 926:	74 18                	je     940 <register_tm_clones+0x40>
 928:	48 8b 05 c1 16 20 00 	mov    0x2016c1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 92f:	48 85 c0             	test   %rax,%rax
 932:	74 0c                	je     940 <register_tm_clones+0x40>
 934:	5d                   	pop    %rbp
 935:	ff e0                	jmpq   *%rax
 937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 93e:	00 00 
 940:	5d                   	pop    %rbp
 941:	c3                   	retq   
 942:	0f 1f 40 00          	nopl   0x0(%rax)
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <__do_global_dtors_aux>:
 950:	80 3d b9 16 20 00 00 	cmpb   $0x0,0x2016b9(%rip)        # 202010 <__TMC_END__>
 957:	75 2f                	jne    988 <__do_global_dtors_aux+0x38>
 959:	48 83 3d 97 16 20 00 	cmpq   $0x0,0x201697(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 960:	00 
 961:	55                   	push   %rbp
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 0c                	je     973 <__do_global_dtors_aux+0x23>
 967:	48 8b 3d 9a 16 20 00 	mov    0x20169a(%rip),%rdi        # 202008 <__dso_handle>
 96e:	e8 8d fd ff ff       	callq  700 <__cxa_finalize@plt>
 973:	e8 48 ff ff ff       	callq  8c0 <deregister_tm_clones>
 978:	c6 05 91 16 20 00 01 	movb   $0x1,0x201691(%rip)        # 202010 <__TMC_END__>
 97f:	5d                   	pop    %rbp
 980:	c3                   	retq   
 981:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 988:	f3 c3                	repz retq 
 98a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000990 <frame_dummy>:
 990:	55                   	push   %rbp
 991:	48 89 e5             	mov    %rsp,%rbp
 994:	5d                   	pop    %rbp
 995:	e9 66 ff ff ff       	jmpq   900 <register_tm_clones>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <print.part.0>:
 9a0:	55                   	push   %rbp
 9a1:	53                   	push   %rbx
 9a2:	48 8d 35 9b 02 00 00 	lea    0x29b(%rip),%rsi        # c44 <_IO_stdin_used+0x4>
 9a9:	48 8d 2d b1 02 00 00 	lea    0x2b1(%rip),%rbp        # c61 <_IO_stdin_used+0x21>
 9b0:	48 89 fb             	mov    %rdi,%rbx
 9b3:	31 c0                	xor    %eax,%eax
 9b5:	48 83 ec 08          	sub    $0x8,%rsp
 9b9:	8b 15 55 16 20 00    	mov    0x201655(%rip),%edx        # 202014 <n>
 9bf:	bf 01 00 00 00       	mov    $0x1,%edi
 9c4:	e8 17 fd ff ff       	callq  6e0 <__printf_chk@plt>
 9c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9d0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 9d4:	48 8b 13             	mov    (%rbx),%rdx
 9d7:	48 89 ee             	mov    %rbp,%rsi
 9da:	bf 01 00 00 00       	mov    $0x1,%edi
 9df:	b8 01 00 00 00       	mov    $0x1,%eax
 9e4:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 9e9:	e8 f2 fc ff ff       	callq  6e0 <__printf_chk@plt>
 9ee:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 9f2:	48 85 db             	test   %rbx,%rbx
 9f5:	75 d9                	jne    9d0 <print.part.0+0x30>
 9f7:	48 83 c4 08          	add    $0x8,%rsp
 9fb:	5b                   	pop    %rbx
 9fc:	5d                   	pop    %rbp
 9fd:	c3                   	retq   
 9fe:	66 90                	xchg   %ax,%ax

0000000000000a00 <print>:
 a00:	48 85 ff             	test   %rdi,%rdi
 a03:	74 0b                	je     a10 <print+0x10>
 a05:	eb 99                	jmp    9a0 <print.part.0>
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	f3 c3                	repz retq 
 a12:	0f 1f 40 00          	nopl   0x0(%rax)
 a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a1d:	00 00 00 

0000000000000a20 <insert>:
 a20:	48 85 ff             	test   %rdi,%rdi
 a23:	74 5b                	je     a80 <insert+0x60>
 a25:	48 8b 0e             	mov    (%rsi),%rcx
 a28:	48 89 fa             	mov    %rdi,%rdx
 a2b:	eb 12                	jmp    a3f <insert+0x1f>
 a2d:	0f 1f 00             	nopl   (%rax)
 a30:	48 8b 42 10          	mov    0x10(%rdx),%rax
 a34:	49 89 d0             	mov    %rdx,%r8
 a37:	48 85 c0             	test   %rax,%rax
 a3a:	74 24                	je     a60 <insert+0x40>
 a3c:	48 89 c2             	mov    %rax,%rdx
 a3f:	48 3b 0a             	cmp    (%rdx),%rcx
 a42:	7f ec                	jg     a30 <insert+0x10>
 a44:	48 39 fa             	cmp    %rdi,%rdx
 a47:	48 89 f0             	mov    %rsi,%rax
 a4a:	74 07                	je     a53 <insert+0x33>
 a4c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 a50:	48 89 f8             	mov    %rdi,%rax
 a53:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a57:	83 05 b6 15 20 00 01 	addl   $0x1,0x2015b6(%rip)        # 202014 <n>
 a5e:	c3                   	retq   
 a5f:	90                   	nop
 a60:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a64:	48 89 f8             	mov    %rdi,%rax
 a67:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a6e:	00 
 a6f:	83 05 9e 15 20 00 01 	addl   $0x1,0x20159e(%rip)        # 202014 <n>
 a76:	c3                   	retq   
 a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a7e:	00 00 
 a80:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a87:	00 
 a88:	48 89 f0             	mov    %rsi,%rax
 a8b:	83 05 82 15 20 00 01 	addl   $0x1,0x201582(%rip)        # 202014 <n>
 a92:	c3                   	retq   
 a93:	0f 1f 00             	nopl   (%rax)
 a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a9d:	00 00 00 

0000000000000aa0 <create>:
 aa0:	41 54                	push   %r12
 aa2:	55                   	push   %rbp
 aa3:	bf 18 00 00 00       	mov    $0x18,%edi
 aa8:	53                   	push   %rbx
 aa9:	31 ed                	xor    %ebp,%ebp
 aab:	e8 20 fc ff ff       	callq  6d0 <malloc@plt>
 ab0:	48 8d 3d b5 01 00 00 	lea    0x1b5(%rip),%rdi        # c6c <_IO_stdin_used+0x2c>
 ab7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 abb:	48 89 c3             	mov    %rax,%rbx
 abe:	48 89 c6             	mov    %rax,%rsi
 ac1:	31 c0                	xor    %eax,%eax
 ac3:	e8 28 fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 ac8:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 acc:	74 3c                	je     b0a <create+0x6a>
 ace:	4c 8d 25 97 01 00 00 	lea    0x197(%rip),%r12        # c6c <_IO_stdin_used+0x2c>
 ad5:	0f 1f 00             	nopl   (%rax)
 ad8:	48 89 de             	mov    %rbx,%rsi
 adb:	48 89 ef             	mov    %rbp,%rdi
 ade:	e8 3d ff ff ff       	callq  a20 <insert>
 ae3:	bf 18 00 00 00       	mov    $0x18,%edi
 ae8:	48 89 c5             	mov    %rax,%rbp
 aeb:	e8 e0 fb ff ff       	callq  6d0 <malloc@plt>
 af0:	48 8d 50 08          	lea    0x8(%rax),%rdx
 af4:	48 89 c3             	mov    %rax,%rbx
 af7:	48 89 c6             	mov    %rax,%rsi
 afa:	4c 89 e7             	mov    %r12,%rdi
 afd:	31 c0                	xor    %eax,%eax
 aff:	e8 ec fb ff ff       	callq  6f0 <__isoc99_scanf@plt>
 b04:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b08:	75 ce                	jne    ad8 <create+0x38>
 b0a:	48 89 df             	mov    %rbx,%rdi
 b0d:	e8 8e fb ff ff       	callq  6a0 <free@plt>
 b12:	48 89 e8             	mov    %rbp,%rax
 b15:	5b                   	pop    %rbx
 b16:	5d                   	pop    %rbp
 b17:	41 5c                	pop    %r12
 b19:	c3                   	retq   
 b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b20 <del>:
 b20:	48 85 ff             	test   %rdi,%rdi
 b23:	41 54                	push   %r12
 b25:	49 89 fc             	mov    %rdi,%r12
 b28:	55                   	push   %rbp
 b29:	53                   	push   %rbx
 b2a:	48 89 fb             	mov    %rdi,%rbx
 b2d:	75 14                	jne    b43 <del+0x23>
 b2f:	eb 78                	jmp    ba9 <del+0x89>
 b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b38:	48 85 ed             	test   %rbp,%rbp
 b3b:	48 89 d8             	mov    %rbx,%rax
 b3e:	74 48                	je     b88 <del+0x68>
 b40:	48 89 eb             	mov    %rbp,%rbx
 b43:	48 8b 13             	mov    (%rbx),%rdx
 b46:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
 b4a:	48 39 f2             	cmp    %rsi,%rdx
 b4d:	75 e9                	jne    b38 <del+0x18>
 b4f:	4c 39 e3             	cmp    %r12,%rbx
 b52:	74 07                	je     b5b <del+0x3b>
 b54:	48 89 68 10          	mov    %rbp,0x10(%rax)
 b58:	4c 89 e5             	mov    %r12,%rbp
 b5b:	48 8d 35 1f 01 00 00 	lea    0x11f(%rip),%rsi        # c81 <_IO_stdin_used+0x41>
 b62:	bf 01 00 00 00       	mov    $0x1,%edi
 b67:	31 c0                	xor    %eax,%eax
 b69:	e8 72 fb ff ff       	callq  6e0 <__printf_chk@plt>
 b6e:	48 89 df             	mov    %rbx,%rdi
 b71:	83 2d 9c 14 20 00 01 	subl   $0x1,0x20149c(%rip)        # 202014 <n>
 b78:	e8 23 fb ff ff       	callq  6a0 <free@plt>
 b7d:	48 89 e8             	mov    %rbp,%rax
 b80:	5b                   	pop    %rbx
 b81:	5d                   	pop    %rbp
 b82:	41 5c                	pop    %r12
 b84:	c3                   	retq   
 b85:	0f 1f 00             	nopl   (%rax)
 b88:	48 89 f2             	mov    %rsi,%rdx
 b8b:	48 8d 35 fc 00 00 00 	lea    0xfc(%rip),%rsi        # c8e <_IO_stdin_used+0x4e>
 b92:	4c 89 e5             	mov    %r12,%rbp
 b95:	bf 01 00 00 00       	mov    $0x1,%edi
 b9a:	31 c0                	xor    %eax,%eax
 b9c:	e8 3f fb ff ff       	callq  6e0 <__printf_chk@plt>
 ba1:	48 89 e8             	mov    %rbp,%rax
 ba4:	5b                   	pop    %rbx
 ba5:	5d                   	pop    %rbp
 ba6:	41 5c                	pop    %r12
 ba8:	c3                   	retq   
 ba9:	48 8d 35 c3 00 00 00 	lea    0xc3(%rip),%rsi        # c73 <_IO_stdin_used+0x33>
 bb0:	bf 01 00 00 00       	mov    $0x1,%edi
 bb5:	31 c0                	xor    %eax,%eax
 bb7:	31 ed                	xor    %ebp,%ebp
 bb9:	e8 22 fb ff ff       	callq  6e0 <__printf_chk@plt>
 bbe:	eb bd                	jmp    b7d <del+0x5d>

0000000000000bc0 <__libc_csu_init>:
 bc0:	41 57                	push   %r15
 bc2:	41 56                	push   %r14
 bc4:	49 89 d7             	mov    %rdx,%r15
 bc7:	41 55                	push   %r13
 bc9:	41 54                	push   %r12
 bcb:	4c 8d 25 be 11 20 00 	lea    0x2011be(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 bd2:	55                   	push   %rbp
 bd3:	48 8d 2d be 11 20 00 	lea    0x2011be(%rip),%rbp        # 201d98 <__init_array_end>
 bda:	53                   	push   %rbx
 bdb:	41 89 fd             	mov    %edi,%r13d
 bde:	49 89 f6             	mov    %rsi,%r14
 be1:	4c 29 e5             	sub    %r12,%rbp
 be4:	48 83 ec 08          	sub    $0x8,%rsp
 be8:	48 c1 fd 03          	sar    $0x3,%rbp
 bec:	e8 7f fa ff ff       	callq  670 <_init>
 bf1:	48 85 ed             	test   %rbp,%rbp
 bf4:	74 20                	je     c16 <__libc_csu_init+0x56>
 bf6:	31 db                	xor    %ebx,%ebx
 bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bff:	00 
 c00:	4c 89 fa             	mov    %r15,%rdx
 c03:	4c 89 f6             	mov    %r14,%rsi
 c06:	44 89 ef             	mov    %r13d,%edi
 c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c0d:	48 83 c3 01          	add    $0x1,%rbx
 c11:	48 39 dd             	cmp    %rbx,%rbp
 c14:	75 ea                	jne    c00 <__libc_csu_init+0x40>
 c16:	48 83 c4 08          	add    $0x8,%rsp
 c1a:	5b                   	pop    %rbx
 c1b:	5d                   	pop    %rbp
 c1c:	41 5c                	pop    %r12
 c1e:	41 5d                	pop    %r13
 c20:	41 5e                	pop    %r14
 c22:	41 5f                	pop    %r15
 c24:	c3                   	retq   
 c25:	90                   	nop
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 

0000000000000c30 <__libc_csu_fini>:
 c30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c34 <_fini>:
 c34:	48 83 ec 08          	sub    $0x8,%rsp
 c38:	48 83 c4 08          	add    $0x8,%rsp
 c3c:	c3                   	retq   
