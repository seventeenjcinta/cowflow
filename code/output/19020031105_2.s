
input/19020031105_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006e0 <_init>:
 6e0:	48 83 ec 08          	sub    $0x8,%rsp
 6e4:	48 8b 05 fd 18 20 00 	mov    0x2018fd(%rip),%rax        # 201fe8 <__gmon_start__>
 6eb:	48 85 c0             	test   %rax,%rax
 6ee:	74 02                	je     6f2 <_init+0x12>
 6f0:	ff d0                	callq  *%rax
 6f2:	48 83 c4 08          	add    $0x8,%rsp
 6f6:	c3                   	retq   

Disassembly of section .plt:

0000000000000700 <.plt>:
 700:	ff 35 82 18 20 00    	pushq  0x201882(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 706:	ff 25 84 18 20 00    	jmpq   *0x201884(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 70c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000710 <free@plt>:
 710:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201f98 <free@GLIBC_2.2.5>
 716:	68 00 00 00 00       	pushq  $0x0
 71b:	e9 e0 ff ff ff       	jmpq   700 <.plt>

0000000000000720 <putchar@plt>:
 720:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fa0 <putchar@GLIBC_2.2.5>
 726:	68 01 00 00 00       	pushq  $0x1
 72b:	e9 d0 ff ff ff       	jmpq   700 <.plt>

0000000000000730 <puts@plt>:
 730:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 736:	68 02 00 00 00       	pushq  $0x2
 73b:	e9 c0 ff ff ff       	jmpq   700 <.plt>

0000000000000740 <__stack_chk_fail@plt>:
 740:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <system@plt>:
 750:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fb8 <system@GLIBC_2.2.5>
 756:	68 04 00 00 00       	pushq  $0x4
 75b:	e9 a0 ff ff ff       	jmpq   700 <.plt>

0000000000000760 <malloc@plt>:
 760:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 766:	68 05 00 00 00       	pushq  $0x5
 76b:	e9 90 ff ff ff       	jmpq   700 <.plt>

0000000000000770 <__printf_chk@plt>:
 770:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 776:	68 06 00 00 00       	pushq  $0x6
 77b:	e9 80 ff ff ff       	jmpq   700 <.plt>

0000000000000780 <__isoc99_scanf@plt>:
 780:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 786:	68 07 00 00 00       	pushq  $0x7
 78b:	e9 70 ff ff ff       	jmpq   700 <.plt>

Disassembly of section .plt.got:

0000000000000790 <__cxa_finalize@plt>:
 790:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 796:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007a0 <main>:
 7a0:	41 54                	push   %r12
 7a2:	55                   	push   %rbp
 7a3:	48 8d 3d db 05 00 00 	lea    0x5db(%rip),%rdi        # d85 <_IO_stdin_used+0x95>
 7aa:	53                   	push   %rbx
 7ab:	48 8d 2d 06 06 00 00 	lea    0x606(%rip),%rbp        # db8 <_IO_stdin_used+0xc8>
 7b2:	48 83 ec 10          	sub    $0x10,%rsp
 7b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7bd:	00 00 
 7bf:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 7c4:	31 c0                	xor    %eax,%eax
 7c6:	e8 65 ff ff ff       	callq  730 <puts@plt>
 7cb:	bf 10 00 00 00       	mov    $0x10,%edi
 7d0:	4c 8d 64 24 04       	lea    0x4(%rsp),%r12
 7d5:	e8 86 ff ff ff       	callq  760 <malloc@plt>
 7da:	48 89 c7             	mov    %rax,%rdi
 7dd:	48 89 c3             	mov    %rax,%rbx
 7e0:	e8 eb 03 00 00       	callq  bd0 <PrintNode>
 7e5:	48 8d 3d b6 05 00 00 	lea    0x5b6(%rip),%rdi        # da2 <_IO_stdin_used+0xb2>
 7ec:	e8 3f ff ff ff       	callq  730 <puts@plt>
 7f1:	eb 1d                	jmp    810 <main+0x70>
 7f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7f8:	83 f8 02             	cmp    $0x2,%eax
 7fb:	75 0b                	jne    808 <main+0x68>
 7fd:	48 89 df             	mov    %rbx,%rdi
 800:	e8 cb 02 00 00       	callq  ad0 <DeleteNode>
 805:	48 89 c3             	mov    %rax,%rbx
 808:	48 89 df             	mov    %rbx,%rdi
 80b:	e8 c0 03 00 00       	callq  bd0 <PrintNode>
 810:	48 89 ef             	mov    %rbp,%rdi
 813:	e8 18 ff ff ff       	callq  730 <puts@plt>
 818:	48 8d 3d e7 04 00 00 	lea    0x4e7(%rip),%rdi        # d06 <_IO_stdin_used+0x16>
 81f:	31 c0                	xor    %eax,%eax
 821:	4c 89 e6             	mov    %r12,%rsi
 824:	e8 57 ff ff ff       	callq  780 <__isoc99_scanf@plt>
 829:	8b 44 24 04          	mov    0x4(%rsp),%eax
 82d:	85 c0                	test   %eax,%eax
 82f:	74 17                	je     848 <main+0xa8>
 831:	83 f8 01             	cmp    $0x1,%eax
 834:	75 c2                	jne    7f8 <main+0x58>
 836:	48 89 df             	mov    %rbx,%rdi
 839:	e8 62 01 00 00       	callq  9a0 <InsertNode>
 83e:	48 89 c3             	mov    %rax,%rbx
 841:	eb c5                	jmp    808 <main+0x68>
 843:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 848:	48 8d 3d 7e 05 00 00 	lea    0x57e(%rip),%rdi        # dcd <_IO_stdin_used+0xdd>
 84f:	e8 fc fe ff ff       	callq  750 <system@plt>
 854:	31 c0                	xor    %eax,%eax
 856:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 85b:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 862:	00 00 
 864:	75 09                	jne    86f <main+0xcf>
 866:	48 83 c4 10          	add    $0x10,%rsp
 86a:	5b                   	pop    %rbx
 86b:	5d                   	pop    %rbp
 86c:	41 5c                	pop    %r12
 86e:	c3                   	retq   
 86f:	e8 cc fe ff ff       	callq  740 <__stack_chk_fail@plt>
 874:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 87b:	00 00 00 
 87e:	66 90                	xchg   %ax,%ax

0000000000000880 <_start>:
 880:	31 ed                	xor    %ebp,%ebp
 882:	49 89 d1             	mov    %rdx,%r9
 885:	5e                   	pop    %rsi
 886:	48 89 e2             	mov    %rsp,%rdx
 889:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 88d:	50                   	push   %rax
 88e:	54                   	push   %rsp
 88f:	4c 8d 05 4a 04 00 00 	lea    0x44a(%rip),%r8        # ce0 <__libc_csu_fini>
 896:	48 8d 0d d3 03 00 00 	lea    0x3d3(%rip),%rcx        # c70 <__libc_csu_init>
 89d:	48 8d 3d fc fe ff ff 	lea    -0x104(%rip),%rdi        # 7a0 <main>
 8a4:	ff 15 36 17 20 00    	callq  *0x201736(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8aa:	f4                   	hlt    
 8ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008b0 <deregister_tm_clones>:
 8b0:	48 8d 3d 59 17 20 00 	lea    0x201759(%rip),%rdi        # 202010 <__TMC_END__>
 8b7:	55                   	push   %rbp
 8b8:	48 8d 05 51 17 20 00 	lea    0x201751(%rip),%rax        # 202010 <__TMC_END__>
 8bf:	48 39 f8             	cmp    %rdi,%rax
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	74 19                	je     8e0 <deregister_tm_clones+0x30>
 8c7:	48 8b 05 0a 17 20 00 	mov    0x20170a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ce:	48 85 c0             	test   %rax,%rax
 8d1:	74 0d                	je     8e0 <deregister_tm_clones+0x30>
 8d3:	5d                   	pop    %rbp
 8d4:	ff e0                	jmpq   *%rax
 8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8dd:	00 00 00 
 8e0:	5d                   	pop    %rbp
 8e1:	c3                   	retq   
 8e2:	0f 1f 40 00          	nopl   0x0(%rax)
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 

00000000000008f0 <register_tm_clones>:
 8f0:	48 8d 3d 19 17 20 00 	lea    0x201719(%rip),%rdi        # 202010 <__TMC_END__>
 8f7:	48 8d 35 12 17 20 00 	lea    0x201712(%rip),%rsi        # 202010 <__TMC_END__>
 8fe:	55                   	push   %rbp
 8ff:	48 29 fe             	sub    %rdi,%rsi
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	48 c1 fe 03          	sar    $0x3,%rsi
 909:	48 89 f0             	mov    %rsi,%rax
 90c:	48 c1 e8 3f          	shr    $0x3f,%rax
 910:	48 01 c6             	add    %rax,%rsi
 913:	48 d1 fe             	sar    %rsi
 916:	74 18                	je     930 <register_tm_clones+0x40>
 918:	48 8b 05 d1 16 20 00 	mov    0x2016d1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 91f:	48 85 c0             	test   %rax,%rax
 922:	74 0c                	je     930 <register_tm_clones+0x40>
 924:	5d                   	pop    %rbp
 925:	ff e0                	jmpq   *%rax
 927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 92e:	00 00 
 930:	5d                   	pop    %rbp
 931:	c3                   	retq   
 932:	0f 1f 40 00          	nopl   0x0(%rax)
 936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 93d:	00 00 00 

0000000000000940 <__do_global_dtors_aux>:
 940:	80 3d c9 16 20 00 00 	cmpb   $0x0,0x2016c9(%rip)        # 202010 <__TMC_END__>
 947:	75 2f                	jne    978 <__do_global_dtors_aux+0x38>
 949:	48 83 3d a7 16 20 00 	cmpq   $0x0,0x2016a7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 950:	00 
 951:	55                   	push   %rbp
 952:	48 89 e5             	mov    %rsp,%rbp
 955:	74 0c                	je     963 <__do_global_dtors_aux+0x23>
 957:	48 8b 3d aa 16 20 00 	mov    0x2016aa(%rip),%rdi        # 202008 <__dso_handle>
 95e:	e8 2d fe ff ff       	callq  790 <__cxa_finalize@plt>
 963:	e8 48 ff ff ff       	callq  8b0 <deregister_tm_clones>
 968:	c6 05 a1 16 20 00 01 	movb   $0x1,0x2016a1(%rip)        # 202010 <__TMC_END__>
 96f:	5d                   	pop    %rbp
 970:	c3                   	retq   
 971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 978:	f3 c3                	repz retq 
 97a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000980 <frame_dummy>:
 980:	55                   	push   %rbp
 981:	48 89 e5             	mov    %rsp,%rbp
 984:	5d                   	pop    %rbp
 985:	e9 66 ff ff ff       	jmpq   8f0 <register_tm_clones>
 98a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000990 <CreateNode>:
 990:	bf 10 00 00 00       	mov    $0x10,%edi
 995:	e9 c6 fd ff ff       	jmpq   760 <malloc@plt>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <InsertNode>:
 9a0:	55                   	push   %rbp
 9a1:	53                   	push   %rbx
 9a2:	48 8d 35 4b 03 00 00 	lea    0x34b(%rip),%rsi        # cf4 <_IO_stdin_used+0x4>
 9a9:	48 89 fd             	mov    %rdi,%rbp
 9ac:	bf 01 00 00 00       	mov    $0x1,%edi
 9b1:	48 83 ec 18          	sub    $0x18,%rsp
 9b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 9bc:	00 00 
 9be:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 9c3:	31 c0                	xor    %eax,%eax
 9c5:	e8 a6 fd ff ff       	callq  770 <__printf_chk@plt>
 9ca:	48 8d 3d 35 03 00 00 	lea    0x335(%rip),%rdi        # d06 <_IO_stdin_used+0x16>
 9d1:	48 89 e6             	mov    %rsp,%rsi
 9d4:	31 c0                	xor    %eax,%eax
 9d6:	e8 a5 fd ff ff       	callq  780 <__isoc99_scanf@plt>
 9db:	48 8d 35 27 03 00 00 	lea    0x327(%rip),%rsi        # d09 <_IO_stdin_used+0x19>
 9e2:	bf 01 00 00 00       	mov    $0x1,%edi
 9e7:	31 c0                	xor    %eax,%eax
 9e9:	e8 82 fd ff ff       	callq  770 <__printf_chk@plt>
 9ee:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
 9f3:	48 8d 3d 21 03 00 00 	lea    0x321(%rip),%rdi        # d1b <_IO_stdin_used+0x2b>
 9fa:	31 c0                	xor    %eax,%eax
 9fc:	e8 7f fd ff ff       	callq  780 <__isoc99_scanf@plt>
 a01:	8b 1d 0d 16 20 00    	mov    0x20160d(%rip),%ebx        # 202014 <n>
 a07:	85 db                	test   %ebx,%ebx
 a09:	75 45                	jne    a50 <InsertNode+0xb0>
 a0b:	8b 04 24             	mov    (%rsp),%eax
 a0e:	f3 0f 10 44 24 04    	movss  0x4(%rsp),%xmm0
 a14:	f3 0f 11 45 04       	movss  %xmm0,0x4(%rbp)
 a19:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
 a20:	00 
 a21:	89 45 00             	mov    %eax,0x0(%rbp)
 a24:	48 89 e8             	mov    %rbp,%rax
 a27:	83 c3 01             	add    $0x1,%ebx
 a2a:	89 1d e4 15 20 00    	mov    %ebx,0x2015e4(%rip)        # 202014 <n>
 a30:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 a35:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
 a3c:	00 00 
 a3e:	0f 85 7c 00 00 00    	jne    ac0 <InsertNode+0x120>
 a44:	48 83 c4 18          	add    $0x18,%rsp
 a48:	5b                   	pop    %rbx
 a49:	5d                   	pop    %rbp
 a4a:	c3                   	retq   
 a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a50:	bf 10 00 00 00       	mov    $0x10,%edi
 a55:	e8 06 fd ff ff       	callq  760 <malloc@plt>
 a5a:	8b 34 24             	mov    (%rsp),%esi
 a5d:	f3 0f 10 44 24 04    	movss  0x4(%rsp),%xmm0
 a63:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
 a68:	48 89 ef             	mov    %rbp,%rdi
 a6b:	48 89 ea             	mov    %rbp,%rdx
 a6e:	89 30                	mov    %esi,(%rax)
 a70:	eb 15                	jmp    a87 <InsertNode+0xe7>
 a72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a78:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
 a7c:	48 89 d7             	mov    %rdx,%rdi
 a7f:	48 85 c9             	test   %rcx,%rcx
 a82:	74 1c                	je     aa0 <InsertNode+0x100>
 a84:	48 89 ca             	mov    %rcx,%rdx
 a87:	3b 32                	cmp    (%rdx),%esi
 a89:	7f ed                	jg     a78 <InsertNode+0xd8>
 a8b:	7d 0a                	jge    a97 <InsertNode+0xf7>
 a8d:	3b 37                	cmp    (%rdi),%esi
 a8f:	7d 1f                	jge    ab0 <InsertNode+0x110>
 a91:	48 89 78 08          	mov    %rdi,0x8(%rax)
 a95:	eb 90                	jmp    a27 <InsertNode+0x87>
 a97:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
 a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 aa0:	48 89 48 08          	mov    %rcx,0x8(%rax)
 aa4:	48 89 42 08          	mov    %rax,0x8(%rdx)
 aa8:	48 89 e8             	mov    %rbp,%rax
 aab:	e9 77 ff ff ff       	jmpq   a27 <InsertNode+0x87>
 ab0:	48 89 47 08          	mov    %rax,0x8(%rdi)
 ab4:	48 89 50 08          	mov    %rdx,0x8(%rax)
 ab8:	48 89 e8             	mov    %rbp,%rax
 abb:	e9 67 ff ff ff       	jmpq   a27 <InsertNode+0x87>
 ac0:	e8 7b fc ff ff       	callq  740 <__stack_chk_fail@plt>
 ac5:	90                   	nop
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <DeleteNode>:
 ad0:	53                   	push   %rbx
 ad1:	48 89 fb             	mov    %rdi,%rbx
 ad4:	48 83 ec 10          	sub    $0x10,%rsp
 ad8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 adf:	00 00 
 ae1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 ae6:	31 c0                	xor    %eax,%eax
 ae8:	8b 05 26 15 20 00    	mov    0x201526(%rip),%eax        # 202014 <n>
 aee:	85 c0                	test   %eax,%eax
 af0:	74 7e                	je     b70 <DeleteNode+0xa0>
 af2:	48 8d 35 2f 02 00 00 	lea    0x22f(%rip),%rsi        # d28 <_IO_stdin_used+0x38>
 af9:	bf 01 00 00 00       	mov    $0x1,%edi
 afe:	31 c0                	xor    %eax,%eax
 b00:	e8 6b fc ff ff       	callq  770 <__printf_chk@plt>
 b05:	48 8d 3d fa 01 00 00 	lea    0x1fa(%rip),%rdi        # d06 <_IO_stdin_used+0x16>
 b0c:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
 b11:	31 c0                	xor    %eax,%eax
 b13:	e8 68 fc ff ff       	callq  780 <__isoc99_scanf@plt>
 b18:	8b 54 24 04          	mov    0x4(%rsp),%edx
 b1c:	48 89 d8             	mov    %rbx,%rax
 b1f:	48 89 df             	mov    %rbx,%rdi
 b22:	eb 13                	jmp    b37 <DeleteNode+0x67>
 b24:	0f 1f 40 00          	nopl   0x0(%rax)
 b28:	48 8b 77 08          	mov    0x8(%rdi),%rsi
 b2c:	48 89 f8             	mov    %rdi,%rax
 b2f:	48 85 f6             	test   %rsi,%rsi
 b32:	74 64                	je     b98 <DeleteNode+0xc8>
 b34:	48 89 f7             	mov    %rsi,%rdi
 b37:	39 17                	cmp    %edx,(%rdi)
 b39:	7c ed                	jl     b28 <DeleteNode+0x58>
 b3b:	75 5b                	jne    b98 <DeleteNode+0xc8>
 b3d:	3b 10                	cmp    (%rax),%edx
 b3f:	74 77                	je     bb8 <DeleteNode+0xe8>
 b41:	48 8b 57 08          	mov    0x8(%rdi),%rdx
 b45:	48 89 50 08          	mov    %rdx,0x8(%rax)
 b49:	e8 c2 fb ff ff       	callq  710 <free@plt>
 b4e:	83 2d bf 14 20 00 01 	subl   $0x1,0x2014bf(%rip)        # 202014 <n>
 b55:	48 85 db             	test   %rbx,%rbx
 b58:	75 22                	jne    b7c <DeleteNode+0xac>
 b5a:	bf 10 00 00 00       	mov    $0x10,%edi
 b5f:	e8 fc fb ff ff       	callq  760 <malloc@plt>
 b64:	48 89 c3             	mov    %rax,%rbx
 b67:	eb 13                	jmp    b7c <DeleteNode+0xac>
 b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b70:	48 8d 3d a7 01 00 00 	lea    0x1a7(%rip),%rdi        # d1e <_IO_stdin_used+0x2e>
 b77:	e8 b4 fb ff ff       	callq  730 <puts@plt>
 b7c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 b81:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b88:	00 00 
 b8a:	48 89 d8             	mov    %rbx,%rax
 b8d:	75 2f                	jne    bbe <DeleteNode+0xee>
 b8f:	48 83 c4 10          	add    $0x10,%rsp
 b93:	5b                   	pop    %rbx
 b94:	c3                   	retq   
 b95:	0f 1f 00             	nopl   (%rax)
 b98:	48 8d 35 9f 01 00 00 	lea    0x19f(%rip),%rsi        # d3e <_IO_stdin_used+0x4e>
 b9f:	31 c0                	xor    %eax,%eax
 ba1:	bf 01 00 00 00       	mov    $0x1,%edi
 ba6:	e8 c5 fb ff ff       	callq  770 <__printf_chk@plt>
 bab:	48 85 db             	test   %rbx,%rbx
 bae:	75 cc                	jne    b7c <DeleteNode+0xac>
 bb0:	eb a8                	jmp    b5a <DeleteNode+0x8a>
 bb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bb8:	48 8b 58 08          	mov    0x8(%rax),%rbx
 bbc:	eb 8b                	jmp    b49 <DeleteNode+0x79>
 bbe:	e8 7d fb ff ff       	callq  740 <__stack_chk_fail@plt>
 bc3:	0f 1f 00             	nopl   (%rax)
 bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bcd:	00 00 00 

0000000000000bd0 <PrintNode>:
 bd0:	55                   	push   %rbp
 bd1:	53                   	push   %rbx
 bd2:	48 89 fb             	mov    %rdi,%rbx
 bd5:	bf 0a 00 00 00       	mov    $0xa,%edi
 bda:	48 83 ec 08          	sub    $0x8,%rsp
 bde:	e8 3d fb ff ff       	callq  720 <putchar@plt>
 be3:	8b 15 2b 14 20 00    	mov    0x20142b(%rip),%edx        # 202014 <n>
 be9:	48 8d 35 5d 01 00 00 	lea    0x15d(%rip),%rsi        # d4d <_IO_stdin_used+0x5d>
 bf0:	bf 01 00 00 00       	mov    $0x1,%edi
 bf5:	31 c0                	xor    %eax,%eax
 bf7:	e8 74 fb ff ff       	callq  770 <__printf_chk@plt>
 bfc:	48 8d 3d 5e 01 00 00 	lea    0x15e(%rip),%rdi        # d61 <_IO_stdin_used+0x71>
 c03:	e8 28 fb ff ff       	callq  730 <puts@plt>
 c08:	48 85 db             	test   %rbx,%rbx
 c0b:	74 43                	je     c50 <PrintNode+0x80>
 c0d:	8b 15 01 14 20 00    	mov    0x201401(%rip),%edx        # 202014 <n>
 c13:	85 d2                	test   %edx,%edx
 c15:	74 39                	je     c50 <PrintNode+0x80>
 c17:	48 8d 2d 5c 01 00 00 	lea    0x15c(%rip),%rbp        # d7a <_IO_stdin_used+0x8a>
 c1e:	eb 0a                	jmp    c2a <PrintNode+0x5a>
 c20:	8b 05 ee 13 20 00    	mov    0x2013ee(%rip),%eax        # 202014 <n>
 c26:	85 c0                	test   %eax,%eax
 c28:	74 26                	je     c50 <PrintNode+0x80>
 c2a:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c2e:	8b 13                	mov    (%rbx),%edx
 c30:	48 89 ee             	mov    %rbp,%rsi
 c33:	bf 01 00 00 00       	mov    $0x1,%edi
 c38:	b8 01 00 00 00       	mov    $0x1,%eax
 c3d:	f3 0f 5a 43 04       	cvtss2sd 0x4(%rbx),%xmm0
 c42:	e8 29 fb ff ff       	callq  770 <__printf_chk@plt>
 c47:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 c4b:	48 85 db             	test   %rbx,%rbx
 c4e:	75 d0                	jne    c20 <PrintNode+0x50>
 c50:	48 8d 3d 0a 01 00 00 	lea    0x10a(%rip),%rdi        # d61 <_IO_stdin_used+0x71>
 c57:	e8 d4 fa ff ff       	callq  730 <puts@plt>
 c5c:	48 83 c4 08          	add    $0x8,%rsp
 c60:	bf 0a 00 00 00       	mov    $0xa,%edi
 c65:	5b                   	pop    %rbx
 c66:	5d                   	pop    %rbp
 c67:	e9 b4 fa ff ff       	jmpq   720 <putchar@plt>
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
 c9c:	e8 3f fa ff ff       	callq  6e0 <_init>
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
