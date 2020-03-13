
input/19020031065_2.elf:     file format elf64-x86-64


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

00000000000006e0 <puts@plt>:
 6e0:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 6e6:	68 01 00 00 00       	pushq  $0x1
 6eb:	e9 d0 ff ff ff       	jmpq   6c0 <.plt>

00000000000006f0 <__stack_chk_fail@plt>:
 6f0:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 6f6:	68 02 00 00 00       	pushq  $0x2
 6fb:	e9 c0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000700 <malloc@plt>:
 700:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 706:	68 03 00 00 00       	pushq  $0x3
 70b:	e9 b0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000710 <__printf_chk@plt>:
 710:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 716:	68 04 00 00 00       	pushq  $0x4
 71b:	e9 a0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000720 <__isoc99_scanf@plt>:
 720:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 726:	68 05 00 00 00       	pushq  $0x5
 72b:	e9 90 ff ff ff       	jmpq   6c0 <.plt>

0000000000000730 <exit@plt>:
 730:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 736:	68 06 00 00 00       	pushq  $0x6
 73b:	e9 80 ff ff ff       	jmpq   6c0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <__cxa_finalize@plt>:
 740:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <main>:
 750:	41 57                	push   %r15
 752:	41 56                	push   %r14
 754:	48 8d 35 c5 05 00 00 	lea    0x5c5(%rip),%rsi        # d20 <_IO_stdin_used+0x50>
 75b:	41 55                	push   %r13
 75d:	41 54                	push   %r12
 75f:	bf 01 00 00 00       	mov    $0x1,%edi
 764:	55                   	push   %rbp
 765:	53                   	push   %rbx
 766:	48 83 ec 28          	sub    $0x28,%rsp
 76a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 771:	00 00 
 773:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 778:	31 c0                	xor    %eax,%eax
 77a:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 781:	00 00 
 783:	e8 88 ff ff ff       	callq  710 <__printf_chk@plt>
 788:	bf 18 00 00 00       	mov    $0x18,%edi
 78d:	e8 6e ff ff ff       	callq  700 <malloc@plt>
 792:	48 85 c0             	test   %rax,%rax
 795:	48 89 c3             	mov    %rax,%rbx
 798:	74 08                	je     7a2 <main+0x52>
 79a:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 7a1:	00 
 7a2:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 7a6:	48 8d 3d 57 05 00 00 	lea    0x557(%rip),%rdi        # d04 <_IO_stdin_used+0x34>
 7ad:	31 c0                	xor    %eax,%eax
 7af:	48 89 de             	mov    %rbx,%rsi
 7b2:	e8 69 ff ff ff       	callq  720 <__isoc99_scanf@plt>
 7b7:	48 8b 13             	mov    (%rbx),%rdx
 7ba:	48 85 d2             	test   %rdx,%rdx
 7bd:	75 10                	jne    7cf <main+0x7f>
 7bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
 7c3:	0f 2e 43 08          	ucomiss 0x8(%rbx),%xmm0
 7c7:	7a 06                	jp     7cf <main+0x7f>
 7c9:	0f 84 41 01 00 00    	je     910 <main+0x1c0>
 7cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
 7d3:	48 8d 35 30 05 00 00 	lea    0x530(%rip),%rsi        # d0a <_IO_stdin_used+0x3a>
 7da:	4c 8d 6c 24 0c       	lea    0xc(%rsp),%r13
 7df:	4c 8d 25 62 05 00 00 	lea    0x562(%rip),%r12        # d48 <_IO_stdin_used+0x78>
 7e6:	48 8d 2d 28 05 00 00 	lea    0x528(%rip),%rbp        # d15 <_IO_stdin_used+0x45>
 7ed:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
 7f2:	bf 01 00 00 00       	mov    $0x1,%edi
 7f7:	b8 01 00 00 00       	mov    $0x1,%eax
 7fc:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 801:	e8 0a ff ff ff       	callq  710 <__printf_chk@plt>
 806:	4c 89 e6             	mov    %r12,%rsi
 809:	bf 01 00 00 00       	mov    $0x1,%edi
 80e:	31 c0                	xor    %eax,%eax
 810:	e8 fb fe ff ff       	callq  710 <__printf_chk@plt>
 815:	31 c0                	xor    %eax,%eax
 817:	4c 89 ee             	mov    %r13,%rsi
 81a:	48 89 ef             	mov    %rbp,%rdi
 81d:	e8 fe fe ff ff       	callq  720 <__isoc99_scanf@plt>
 822:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 826:	85 c0                	test   %eax,%eax
 828:	0f 84 72 01 00 00    	je     9a0 <main+0x250>
 82e:	83 f8 02             	cmp    $0x2,%eax
 831:	0f 84 e0 00 00 00    	je     917 <main+0x1c7>
 837:	83 f8 03             	cmp    $0x3,%eax
 83a:	0f 84 d0 00 00 00    	je     910 <main+0x1c0>
 840:	83 f8 01             	cmp    $0x1,%eax
 843:	75 c1                	jne    806 <main+0xb6>
 845:	31 c0                	xor    %eax,%eax
 847:	48 85 db             	test   %rbx,%rbx
 84a:	48 8d 35 cf 04 00 00 	lea    0x4cf(%rip),%rsi        # d20 <_IO_stdin_used+0x50>
 851:	bf 01 00 00 00       	mov    $0x1,%edi
 856:	74 66                	je     8be <main+0x16e>
 858:	e8 b3 fe ff ff       	callq  710 <__printf_chk@plt>
 85d:	bf 18 00 00 00       	mov    $0x18,%edi
 862:	e8 99 fe ff ff       	callq  700 <malloc@plt>
 867:	48 85 c0             	test   %rax,%rax
 86a:	49 89 c7             	mov    %rax,%r15
 86d:	74 15                	je     884 <main+0x134>
 86f:	48 8d 50 08          	lea    0x8(%rax),%rdx
 873:	48 8d 3d 8a 04 00 00 	lea    0x48a(%rip),%rdi        # d04 <_IO_stdin_used+0x34>
 87a:	48 89 c6             	mov    %rax,%rsi
 87d:	31 c0                	xor    %eax,%eax
 87f:	e8 9c fe ff ff       	callq  720 <__isoc99_scanf@plt>
 884:	49 8b 0f             	mov    (%r15),%rcx
 887:	48 89 de             	mov    %rbx,%rsi
 88a:	48 89 d8             	mov    %rbx,%rax
 88d:	eb 14                	jmp    8a3 <main+0x153>
 88f:	90                   	nop
 890:	48 8b 50 10          	mov    0x10(%rax),%rdx
 894:	48 89 c6             	mov    %rax,%rsi
 897:	48 85 d2             	test   %rdx,%rdx
 89a:	0f 84 f2 00 00 00    	je     992 <main+0x242>
 8a0:	48 89 d0             	mov    %rdx,%rax
 8a3:	48 39 08             	cmp    %rcx,(%rax)
 8a6:	7e e8                	jle    890 <main+0x140>
 8a8:	48 39 d8             	cmp    %rbx,%rax
 8ab:	0f 84 0e 01 00 00    	je     9bf <main+0x26f>
 8b1:	49 89 47 10          	mov    %rax,0x10(%r15)
 8b5:	4c 89 7e 10          	mov    %r15,0x10(%rsi)
 8b9:	e9 92 00 00 00       	jmpq   950 <main+0x200>
 8be:	e8 4d fe ff ff       	callq  710 <__printf_chk@plt>
 8c3:	bf 18 00 00 00       	mov    $0x18,%edi
 8c8:	e8 33 fe ff ff       	callq  700 <malloc@plt>
 8cd:	48 85 c0             	test   %rax,%rax
 8d0:	48 89 c3             	mov    %rax,%rbx
 8d3:	74 08                	je     8dd <main+0x18d>
 8d5:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 8dc:	00 
 8dd:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 8e1:	48 8d 3d 1c 04 00 00 	lea    0x41c(%rip),%rdi        # d04 <_IO_stdin_used+0x34>
 8e8:	31 c0                	xor    %eax,%eax
 8ea:	48 89 de             	mov    %rbx,%rsi
 8ed:	e8 2e fe ff ff       	callq  720 <__isoc99_scanf@plt>
 8f2:	48 8b 13             	mov    (%rbx),%rdx
 8f5:	48 85 d2             	test   %rdx,%rdx
 8f8:	75 63                	jne    95d <main+0x20d>
 8fa:	66 0f ef c9          	pxor   %xmm1,%xmm1
 8fe:	0f 2e 4b 08          	ucomiss 0x8(%rbx),%xmm1
 902:	7a 59                	jp     95d <main+0x20d>
 904:	75 57                	jne    95d <main+0x20d>
 906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90d:	00 00 00 
 910:	31 ff                	xor    %edi,%edi
 912:	e8 19 fe ff ff       	callq  730 <exit@plt>
 917:	48 85 db             	test   %rbx,%rbx
 91a:	74 65                	je     981 <main+0x231>
 91c:	48 8d 35 7d 04 00 00 	lea    0x47d(%rip),%rsi        # da0 <_IO_stdin_used+0xd0>
 923:	bf 01 00 00 00       	mov    $0x1,%edi
 928:	31 c0                	xor    %eax,%eax
 92a:	e8 e1 fd ff ff       	callq  710 <__printf_chk@plt>
 92f:	48 8d 3d e2 03 00 00 	lea    0x3e2(%rip),%rdi        # d18 <_IO_stdin_used+0x48>
 936:	4c 89 f6             	mov    %r14,%rsi
 939:	31 c0                	xor    %eax,%eax
 93b:	e8 e0 fd ff ff       	callq  720 <__isoc99_scanf@plt>
 940:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 945:	48 89 df             	mov    %rbx,%rdi
 948:	e8 13 02 00 00       	callq  b60 <del>
 94d:	48 89 c3             	mov    %rax,%rbx
 950:	48 89 df             	mov    %rbx,%rdi
 953:	e8 98 02 00 00       	callq  bf0 <print>
 958:	e9 a9 fe ff ff       	jmpq   806 <main+0xb6>
 95d:	66 0f ef c0          	pxor   %xmm0,%xmm0
 961:	48 8d 35 a2 03 00 00 	lea    0x3a2(%rip),%rsi        # d0a <_IO_stdin_used+0x3a>
 968:	bf 01 00 00 00       	mov    $0x1,%edi
 96d:	b8 01 00 00 00       	mov    $0x1,%eax
 972:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 977:	e8 94 fd ff ff       	callq  710 <__printf_chk@plt>
 97c:	e9 85 fe ff ff       	jmpq   806 <main+0xb6>
 981:	48 8d 3d f0 03 00 00 	lea    0x3f0(%rip),%rdi        # d78 <_IO_stdin_used+0xa8>
 988:	e8 53 fd ff ff       	callq  6e0 <puts@plt>
 98d:	e9 74 fe ff ff       	jmpq   806 <main+0xb6>
 992:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
 999:	00 
 99a:	4c 89 78 10          	mov    %r15,0x10(%rax)
 99e:	eb b0                	jmp    950 <main+0x200>
 9a0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 9a5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 9ac:	00 00 
 9ae:	75 18                	jne    9c8 <main+0x278>
 9b0:	48 83 c4 28          	add    $0x28,%rsp
 9b4:	5b                   	pop    %rbx
 9b5:	5d                   	pop    %rbp
 9b6:	41 5c                	pop    %r12
 9b8:	41 5d                	pop    %r13
 9ba:	41 5e                	pop    %r14
 9bc:	41 5f                	pop    %r15
 9be:	c3                   	retq   
 9bf:	49 89 5f 10          	mov    %rbx,0x10(%r15)
 9c3:	4c 89 fb             	mov    %r15,%rbx
 9c6:	eb 88                	jmp    950 <main+0x200>
 9c8:	e8 23 fd ff ff       	callq  6f0 <__stack_chk_fail@plt>
 9cd:	0f 1f 00             	nopl   (%rax)

00000000000009d0 <_start>:
 9d0:	31 ed                	xor    %ebp,%ebp
 9d2:	49 89 d1             	mov    %rdx,%r9
 9d5:	5e                   	pop    %rsi
 9d6:	48 89 e2             	mov    %rsp,%rdx
 9d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 9dd:	50                   	push   %rax
 9de:	54                   	push   %rsp
 9df:	4c 8d 05 da 02 00 00 	lea    0x2da(%rip),%r8        # cc0 <__libc_csu_fini>
 9e6:	48 8d 0d 63 02 00 00 	lea    0x263(%rip),%rcx        # c50 <__libc_csu_init>
 9ed:	48 8d 3d 5c fd ff ff 	lea    -0x2a4(%rip),%rdi        # 750 <main>
 9f4:	ff 15 e6 15 20 00    	callq  *0x2015e6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 9fa:	f4                   	hlt    
 9fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a00 <deregister_tm_clones>:
 a00:	48 8d 3d 09 16 20 00 	lea    0x201609(%rip),%rdi        # 202010 <__TMC_END__>
 a07:	55                   	push   %rbp
 a08:	48 8d 05 01 16 20 00 	lea    0x201601(%rip),%rax        # 202010 <__TMC_END__>
 a0f:	48 39 f8             	cmp    %rdi,%rax
 a12:	48 89 e5             	mov    %rsp,%rbp
 a15:	74 19                	je     a30 <deregister_tm_clones+0x30>
 a17:	48 8b 05 ba 15 20 00 	mov    0x2015ba(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 a1e:	48 85 c0             	test   %rax,%rax
 a21:	74 0d                	je     a30 <deregister_tm_clones+0x30>
 a23:	5d                   	pop    %rbp
 a24:	ff e0                	jmpq   *%rax
 a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a2d:	00 00 00 
 a30:	5d                   	pop    %rbp
 a31:	c3                   	retq   
 a32:	0f 1f 40 00          	nopl   0x0(%rax)
 a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a3d:	00 00 00 

0000000000000a40 <register_tm_clones>:
 a40:	48 8d 3d c9 15 20 00 	lea    0x2015c9(%rip),%rdi        # 202010 <__TMC_END__>
 a47:	48 8d 35 c2 15 20 00 	lea    0x2015c2(%rip),%rsi        # 202010 <__TMC_END__>
 a4e:	55                   	push   %rbp
 a4f:	48 29 fe             	sub    %rdi,%rsi
 a52:	48 89 e5             	mov    %rsp,%rbp
 a55:	48 c1 fe 03          	sar    $0x3,%rsi
 a59:	48 89 f0             	mov    %rsi,%rax
 a5c:	48 c1 e8 3f          	shr    $0x3f,%rax
 a60:	48 01 c6             	add    %rax,%rsi
 a63:	48 d1 fe             	sar    %rsi
 a66:	74 18                	je     a80 <register_tm_clones+0x40>
 a68:	48 8b 05 81 15 20 00 	mov    0x201581(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a6f:	48 85 c0             	test   %rax,%rax
 a72:	74 0c                	je     a80 <register_tm_clones+0x40>
 a74:	5d                   	pop    %rbp
 a75:	ff e0                	jmpq   *%rax
 a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a7e:	00 00 
 a80:	5d                   	pop    %rbp
 a81:	c3                   	retq   
 a82:	0f 1f 40 00          	nopl   0x0(%rax)
 a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a8d:	00 00 00 

0000000000000a90 <__do_global_dtors_aux>:
 a90:	80 3d 79 15 20 00 00 	cmpb   $0x0,0x201579(%rip)        # 202010 <__TMC_END__>
 a97:	75 2f                	jne    ac8 <__do_global_dtors_aux+0x38>
 a99:	48 83 3d 57 15 20 00 	cmpq   $0x0,0x201557(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 aa0:	00 
 aa1:	55                   	push   %rbp
 aa2:	48 89 e5             	mov    %rsp,%rbp
 aa5:	74 0c                	je     ab3 <__do_global_dtors_aux+0x23>
 aa7:	48 8b 3d 5a 15 20 00 	mov    0x20155a(%rip),%rdi        # 202008 <__dso_handle>
 aae:	e8 8d fc ff ff       	callq  740 <__cxa_finalize@plt>
 ab3:	e8 48 ff ff ff       	callq  a00 <deregister_tm_clones>
 ab8:	c6 05 51 15 20 00 01 	movb   $0x1,0x201551(%rip)        # 202010 <__TMC_END__>
 abf:	5d                   	pop    %rbp
 ac0:	c3                   	retq   
 ac1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ac8:	f3 c3                	repz retq 
 aca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ad0 <frame_dummy>:
 ad0:	55                   	push   %rbp
 ad1:	48 89 e5             	mov    %rsp,%rbp
 ad4:	5d                   	pop    %rbp
 ad5:	e9 66 ff ff ff       	jmpq   a40 <register_tm_clones>
 ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ae0 <insert>:
 ae0:	4c 8b 06             	mov    (%rsi),%r8
 ae3:	49 89 f9             	mov    %rdi,%r9
 ae6:	48 89 fa             	mov    %rdi,%rdx
 ae9:	eb 14                	jmp    aff <insert+0x1f>
 aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 af0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 af4:	49 89 d1             	mov    %rdx,%r9
 af7:	48 85 c9             	test   %rcx,%rcx
 afa:	74 1c                	je     b18 <insert+0x38>
 afc:	48 89 ca             	mov    %rcx,%rdx
 aff:	4c 39 02             	cmp    %r8,(%rdx)
 b02:	7e ec                	jle    af0 <insert+0x10>
 b04:	48 39 fa             	cmp    %rdi,%rdx
 b07:	74 27                	je     b30 <insert+0x50>
 b09:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b0d:	48 89 f8             	mov    %rdi,%rax
 b10:	49 89 71 10          	mov    %rsi,0x10(%r9)
 b14:	c3                   	retq   
 b15:	0f 1f 00             	nopl   (%rax)
 b18:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b1f:	00 
 b20:	48 89 f8             	mov    %rdi,%rax
 b23:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b27:	c3                   	retq   
 b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b2f:	00 
 b30:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b34:	48 89 f0             	mov    %rsi,%rax
 b37:	c3                   	retq   
 b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b3f:	00 

0000000000000b40 <create>:
 b40:	48 83 ec 08          	sub    $0x8,%rsp
 b44:	bf 18 00 00 00       	mov    $0x18,%edi
 b49:	e8 b2 fb ff ff       	callq  700 <malloc@plt>
 b4e:	48 85 c0             	test   %rax,%rax
 b51:	74 08                	je     b5b <create+0x1b>
 b53:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 b5a:	00 
 b5b:	48 83 c4 08          	add    $0x8,%rsp
 b5f:	c3                   	retq   

0000000000000b60 <del>:
 b60:	41 55                	push   %r13
 b62:	41 54                	push   %r12
 b64:	49 89 fd             	mov    %rdi,%r13
 b67:	55                   	push   %rbp
 b68:	53                   	push   %rbx
 b69:	48 89 f5             	mov    %rsi,%rbp
 b6c:	48 89 fb             	mov    %rdi,%rbx
 b6f:	45 31 e4             	xor    %r12d,%r12d
 b72:	48 83 ec 18          	sub    $0x18,%rsp
 b76:	eb 13                	jmp    b8b <del+0x2b>
 b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b7f:	00 
 b80:	48 85 c0             	test   %rax,%rax
 b83:	74 3b                	je     bc0 <del+0x60>
 b85:	49 89 dc             	mov    %rbx,%r12
 b88:	48 89 c3             	mov    %rax,%rbx
 b8b:	48 39 2b             	cmp    %rbp,(%rbx)
 b8e:	48 8b 43 10          	mov    0x10(%rbx),%rax
 b92:	75 ec                	jne    b80 <del+0x20>
 b94:	4c 39 eb             	cmp    %r13,%rbx
 b97:	74 08                	je     ba1 <del+0x41>
 b99:	49 89 44 24 10       	mov    %rax,0x10(%r12)
 b9e:	4c 89 e8             	mov    %r13,%rax
 ba1:	48 89 df             	mov    %rbx,%rdi
 ba4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 ba9:	e8 22 fb ff ff       	callq  6d0 <free@plt>
 bae:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 bb3:	48 83 c4 18          	add    $0x18,%rsp
 bb7:	5b                   	pop    %rbx
 bb8:	5d                   	pop    %rbp
 bb9:	41 5c                	pop    %r12
 bbb:	41 5d                	pop    %r13
 bbd:	c3                   	retq   
 bbe:	66 90                	xchg   %ax,%ax
 bc0:	48 8d 3d 0d 01 00 00 	lea    0x10d(%rip),%rdi        # cd4 <_IO_stdin_used+0x4>
 bc7:	e8 14 fb ff ff       	callq  6e0 <puts@plt>
 bcc:	48 39 2b             	cmp    %rbp,(%rbx)
 bcf:	74 0e                	je     bdf <del+0x7f>
 bd1:	48 83 c4 18          	add    $0x18,%rsp
 bd5:	4c 89 e8             	mov    %r13,%rax
 bd8:	5b                   	pop    %rbx
 bd9:	5d                   	pop    %rbp
 bda:	41 5c                	pop    %r12
 bdc:	41 5d                	pop    %r13
 bde:	c3                   	retq   
 bdf:	48 8b 43 10          	mov    0x10(%rbx),%rax
 be3:	eb af                	jmp    b94 <del+0x34>
 be5:	90                   	nop
 be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bed:	00 00 00 

0000000000000bf0 <print>:
 bf0:	48 85 ff             	test   %rdi,%rdi
 bf3:	74 4b                	je     c40 <print+0x50>
 bf5:	55                   	push   %rbp
 bf6:	53                   	push   %rbx
 bf7:	48 8d 2d ec 00 00 00 	lea    0xec(%rip),%rbp        # cea <_IO_stdin_used+0x1a>
 bfe:	48 89 fb             	mov    %rdi,%rbx
 c01:	48 83 ec 08          	sub    $0x8,%rsp
 c05:	0f 1f 00             	nopl   (%rax)
 c08:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c0c:	48 8b 13             	mov    (%rbx),%rdx
 c0f:	48 89 ee             	mov    %rbp,%rsi
 c12:	bf 01 00 00 00       	mov    $0x1,%edi
 c17:	b8 01 00 00 00       	mov    $0x1,%eax
 c1c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c21:	e8 ea fa ff ff       	callq  710 <__printf_chk@plt>
 c26:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c2a:	48 85 db             	test   %rbx,%rbx
 c2d:	75 d9                	jne    c08 <print+0x18>
 c2f:	48 83 c4 08          	add    $0x8,%rsp
 c33:	5b                   	pop    %rbx
 c34:	5d                   	pop    %rbp
 c35:	c3                   	retq   
 c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c3d:	00 00 00 
 c40:	48 8d 3d ad 00 00 00 	lea    0xad(%rip),%rdi        # cf4 <_IO_stdin_used+0x24>
 c47:	e9 94 fa ff ff       	jmpq   6e0 <puts@plt>
 c4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c50 <__libc_csu_init>:
 c50:	41 57                	push   %r15
 c52:	41 56                	push   %r14
 c54:	49 89 d7             	mov    %rdx,%r15
 c57:	41 55                	push   %r13
 c59:	41 54                	push   %r12
 c5b:	4c 8d 25 26 11 20 00 	lea    0x201126(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c62:	55                   	push   %rbp
 c63:	48 8d 2d 26 11 20 00 	lea    0x201126(%rip),%rbp        # 201d90 <__init_array_end>
 c6a:	53                   	push   %rbx
 c6b:	41 89 fd             	mov    %edi,%r13d
 c6e:	49 89 f6             	mov    %rsi,%r14
 c71:	4c 29 e5             	sub    %r12,%rbp
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 c1 fd 03          	sar    $0x3,%rbp
 c7c:	e8 27 fa ff ff       	callq  6a8 <_init>
 c81:	48 85 ed             	test   %rbp,%rbp
 c84:	74 20                	je     ca6 <__libc_csu_init+0x56>
 c86:	31 db                	xor    %ebx,%ebx
 c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c8f:	00 
 c90:	4c 89 fa             	mov    %r15,%rdx
 c93:	4c 89 f6             	mov    %r14,%rsi
 c96:	44 89 ef             	mov    %r13d,%edi
 c99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c9d:	48 83 c3 01          	add    $0x1,%rbx
 ca1:	48 39 dd             	cmp    %rbx,%rbp
 ca4:	75 ea                	jne    c90 <__libc_csu_init+0x40>
 ca6:	48 83 c4 08          	add    $0x8,%rsp
 caa:	5b                   	pop    %rbx
 cab:	5d                   	pop    %rbp
 cac:	41 5c                	pop    %r12
 cae:	41 5d                	pop    %r13
 cb0:	41 5e                	pop    %r14
 cb2:	41 5f                	pop    %r15
 cb4:	c3                   	retq   
 cb5:	90                   	nop
 cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cbd:	00 00 00 

0000000000000cc0 <__libc_csu_fini>:
 cc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cc4 <_fini>:
 cc4:	48 83 ec 08          	sub    $0x8,%rsp
 cc8:	48 83 c4 08          	add    $0x8,%rsp
 ccc:	c3                   	retq   
