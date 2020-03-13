
input/19090033027_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006c0 <_init>:
 6c0:	48 83 ec 08          	sub    $0x8,%rsp
 6c4:	48 8b 05 1d 19 20 00 	mov    0x20191d(%rip),%rax        # 201fe8 <__gmon_start__>
 6cb:	48 85 c0             	test   %rax,%rax
 6ce:	74 02                	je     6d2 <_init+0x12>
 6d0:	ff d0                	callq  *%rax
 6d2:	48 83 c4 08          	add    $0x8,%rsp
 6d6:	c3                   	retq   

Disassembly of section .plt:

00000000000006e0 <.plt>:
 6e0:	ff 35 aa 18 20 00    	pushq  0x2018aa(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6e6:	ff 25 ac 18 20 00    	jmpq   *0x2018ac(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006f0 <free@plt>:
 6f0:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 6f6:	68 00 00 00 00       	pushq  $0x0
 6fb:	e9 e0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000700 <puts@plt>:
 700:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 706:	68 01 00 00 00       	pushq  $0x1
 70b:	e9 d0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000710 <malloc@plt>:
 710:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fb0 <malloc@GLIBC_2.2.5>
 716:	68 02 00 00 00       	pushq  $0x2
 71b:	e9 c0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000720 <_IO_getc@plt>:
 720:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fb8 <_IO_getc@GLIBC_2.2.5>
 726:	68 03 00 00 00       	pushq  $0x3
 72b:	e9 b0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000730 <__printf_chk@plt>:
 730:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 736:	68 04 00 00 00       	pushq  $0x4
 73b:	e9 a0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000740 <__isoc99_scanf@plt>:
 740:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 746:	68 05 00 00 00       	pushq  $0x5
 74b:	e9 90 ff ff ff       	jmpq   6e0 <.plt>

0000000000000750 <exit@plt>:
 750:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 756:	68 06 00 00 00       	pushq  $0x6
 75b:	e9 80 ff ff ff       	jmpq   6e0 <.plt>

Disassembly of section .plt.got:

0000000000000760 <__cxa_finalize@plt>:
 760:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000770 <main>:
 770:	41 57                	push   %r15
 772:	41 56                	push   %r14
 774:	48 8d 3d 13 05 00 00 	lea    0x513(%rip),%rdi        # c8e <_IO_stdin_used+0x3e>
 77b:	41 55                	push   %r13
 77d:	41 54                	push   %r12
 77f:	4c 8d 2d 1f 05 00 00 	lea    0x51f(%rip),%r13        # ca5 <_IO_stdin_used+0x55>
 786:	55                   	push   %rbp
 787:	53                   	push   %rbx
 788:	4c 8d 25 33 05 00 00 	lea    0x533(%rip),%r12        # cc2 <_IO_stdin_used+0x72>
 78f:	48 8d 2d 3c 05 00 00 	lea    0x53c(%rip),%rbp        # cd2 <_IO_stdin_used+0x82>
 796:	48 83 ec 38          	sub    $0x38,%rsp
 79a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a1:	00 00 
 7a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 7a8:	31 c0                	xor    %eax,%eax
 7aa:	e8 51 ff ff ff       	callq  700 <puts@plt>
 7af:	48 8d 3d 8a 05 00 00 	lea    0x58a(%rip),%rdi        # d40 <_IO_stdin_used+0xf0>
 7b6:	4c 8d 74 24 1c       	lea    0x1c(%rsp),%r14
 7bb:	e8 40 ff ff ff       	callq  700 <puts@plt>
 7c0:	31 ff                	xor    %edi,%edi
 7c2:	e8 a9 02 00 00       	callq  a70 <create>
 7c7:	48 89 c7             	mov    %rax,%rdi
 7ca:	48 89 c3             	mov    %rax,%rbx
 7cd:	e8 1e 03 00 00       	callq  af0 <print>
 7d2:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 7d7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 7dc:	4c 89 ef             	mov    %r13,%rdi
 7df:	e8 1c ff ff ff       	callq  700 <puts@plt>
 7e4:	4c 89 e6             	mov    %r12,%rsi
 7e7:	bf 01 00 00 00       	mov    $0x1,%edi
 7ec:	31 c0                	xor    %eax,%eax
 7ee:	c7 44 24 1c ff ff ff 	movl   $0xffffffff,0x1c(%rsp)
 7f5:	ff 
 7f6:	e8 35 ff ff ff       	callq  730 <__printf_chk@plt>
 7fb:	4c 89 f6             	mov    %r14,%rsi
 7fe:	48 89 ef             	mov    %rbp,%rdi
 801:	31 c0                	xor    %eax,%eax
 803:	e8 38 ff ff ff       	callq  740 <__isoc99_scanf@plt>
 808:	48 8b 3d 01 18 20 00 	mov    0x201801(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 80f:	e8 0c ff ff ff       	callq  720 <_IO_getc@plt>
 814:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 818:	83 f8 01             	cmp    $0x1,%eax
 81b:	74 5b                	je     878 <main+0x108>
 81d:	83 f8 02             	cmp    $0x2,%eax
 820:	74 0e                	je     830 <main+0xc0>
 822:	85 c0                	test   %eax,%eax
 824:	75 b6                	jne    7dc <main+0x6c>
 826:	31 ff                	xor    %edi,%edi
 828:	e8 23 ff ff ff       	callq  750 <exit@plt>
 82d:	0f 1f 00             	nopl   (%rax)
 830:	48 8d 35 ca 04 00 00 	lea    0x4ca(%rip),%rsi        # d01 <_IO_stdin_used+0xb1>
 837:	bf 01 00 00 00       	mov    $0x1,%edi
 83c:	31 c0                	xor    %eax,%eax
 83e:	e8 ed fe ff ff       	callq  730 <__printf_chk@plt>
 843:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 848:	48 8d 3d c4 04 00 00 	lea    0x4c4(%rip),%rdi        # d13 <_IO_stdin_used+0xc3>
 84f:	31 c0                	xor    %eax,%eax
 851:	e8 ea fe ff ff       	callq  740 <__isoc99_scanf@plt>
 856:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 85b:	48 89 df             	mov    %rbx,%rdi
 85e:	e8 ed 02 00 00       	callq  b50 <del>
 863:	48 89 c7             	mov    %rax,%rdi
 866:	48 89 c3             	mov    %rax,%rbx
 869:	e8 82 02 00 00       	callq  af0 <print>
 86e:	e9 69 ff ff ff       	jmpq   7dc <main+0x6c>
 873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 878:	48 8d 35 56 04 00 00 	lea    0x456(%rip),%rsi        # cd5 <_IO_stdin_used+0x85>
 87f:	bf 01 00 00 00       	mov    $0x1,%edi
 884:	31 c0                	xor    %eax,%eax
 886:	e8 a5 fe ff ff       	callq  730 <__printf_chk@plt>
 88b:	bf 18 00 00 00       	mov    $0x18,%edi
 890:	e8 7b fe ff ff       	callq  710 <malloc@plt>
 895:	48 8d 3d b8 03 00 00 	lea    0x3b8(%rip),%rdi        # c54 <_IO_stdin_used+0x4>
 89c:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a0:	49 89 c7             	mov    %rax,%r15
 8a3:	48 89 c6             	mov    %rax,%rsi
 8a6:	31 c0                	xor    %eax,%eax
 8a8:	e8 93 fe ff ff       	callq  740 <__isoc99_scanf@plt>
 8ad:	4c 89 fe             	mov    %r15,%rsi
 8b0:	48 89 df             	mov    %rbx,%rdi
 8b3:	e8 38 01 00 00       	callq  9f0 <insert>
 8b8:	49 8b 17             	mov    (%r15),%rdx
 8bb:	48 8d 35 30 04 00 00 	lea    0x430(%rip),%rsi        # cf2 <_IO_stdin_used+0xa2>
 8c2:	48 89 c3             	mov    %rax,%rbx
 8c5:	bf 01 00 00 00       	mov    $0x1,%edi
 8ca:	31 c0                	xor    %eax,%eax
 8cc:	e8 5f fe ff ff       	callq  730 <__printf_chk@plt>
 8d1:	48 89 df             	mov    %rbx,%rdi
 8d4:	e8 17 02 00 00       	callq  af0 <print>
 8d9:	e9 fe fe ff ff       	jmpq   7dc <main+0x6c>
 8de:	66 90                	xchg   %ax,%ax

00000000000008e0 <_start>:
 8e0:	31 ed                	xor    %ebp,%ebp
 8e2:	49 89 d1             	mov    %rdx,%r9
 8e5:	5e                   	pop    %rsi
 8e6:	48 89 e2             	mov    %rsp,%rdx
 8e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8ed:	50                   	push   %rax
 8ee:	54                   	push   %rsp
 8ef:	4c 8d 05 4a 03 00 00 	lea    0x34a(%rip),%r8        # c40 <__libc_csu_fini>
 8f6:	48 8d 0d d3 02 00 00 	lea    0x2d3(%rip),%rcx        # bd0 <__libc_csu_init>
 8fd:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 770 <main>
 904:	ff 15 d6 16 20 00    	callq  *0x2016d6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 90a:	f4                   	hlt    
 90b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000910 <deregister_tm_clones>:
 910:	48 8d 3d f9 16 20 00 	lea    0x2016f9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 917:	55                   	push   %rbp
 918:	48 8d 05 f1 16 20 00 	lea    0x2016f1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 91f:	48 39 f8             	cmp    %rdi,%rax
 922:	48 89 e5             	mov    %rsp,%rbp
 925:	74 19                	je     940 <deregister_tm_clones+0x30>
 927:	48 8b 05 aa 16 20 00 	mov    0x2016aa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 92e:	48 85 c0             	test   %rax,%rax
 931:	74 0d                	je     940 <deregister_tm_clones+0x30>
 933:	5d                   	pop    %rbp
 934:	ff e0                	jmpq   *%rax
 936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 93d:	00 00 00 
 940:	5d                   	pop    %rbp
 941:	c3                   	retq   
 942:	0f 1f 40 00          	nopl   0x0(%rax)
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <register_tm_clones>:
 950:	48 8d 3d b9 16 20 00 	lea    0x2016b9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 957:	48 8d 35 b2 16 20 00 	lea    0x2016b2(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 95e:	55                   	push   %rbp
 95f:	48 29 fe             	sub    %rdi,%rsi
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	48 c1 fe 03          	sar    $0x3,%rsi
 969:	48 89 f0             	mov    %rsi,%rax
 96c:	48 c1 e8 3f          	shr    $0x3f,%rax
 970:	48 01 c6             	add    %rax,%rsi
 973:	48 d1 fe             	sar    %rsi
 976:	74 18                	je     990 <register_tm_clones+0x40>
 978:	48 8b 05 71 16 20 00 	mov    0x201671(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 97f:	48 85 c0             	test   %rax,%rax
 982:	74 0c                	je     990 <register_tm_clones+0x40>
 984:	5d                   	pop    %rbp
 985:	ff e0                	jmpq   *%rax
 987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 98e:	00 00 
 990:	5d                   	pop    %rbp
 991:	c3                   	retq   
 992:	0f 1f 40 00          	nopl   0x0(%rax)
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 

00000000000009a0 <__do_global_dtors_aux>:
 9a0:	80 3d 71 16 20 00 00 	cmpb   $0x0,0x201671(%rip)        # 202018 <completed.7698>
 9a7:	75 2f                	jne    9d8 <__do_global_dtors_aux+0x38>
 9a9:	48 83 3d 47 16 20 00 	cmpq   $0x0,0x201647(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9b0:	00 
 9b1:	55                   	push   %rbp
 9b2:	48 89 e5             	mov    %rsp,%rbp
 9b5:	74 0c                	je     9c3 <__do_global_dtors_aux+0x23>
 9b7:	48 8b 3d 4a 16 20 00 	mov    0x20164a(%rip),%rdi        # 202008 <__dso_handle>
 9be:	e8 9d fd ff ff       	callq  760 <__cxa_finalize@plt>
 9c3:	e8 48 ff ff ff       	callq  910 <deregister_tm_clones>
 9c8:	c6 05 49 16 20 00 01 	movb   $0x1,0x201649(%rip)        # 202018 <completed.7698>
 9cf:	5d                   	pop    %rbp
 9d0:	c3                   	retq   
 9d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9d8:	f3 c3                	repz retq 
 9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009e0 <frame_dummy>:
 9e0:	55                   	push   %rbp
 9e1:	48 89 e5             	mov    %rsp,%rbp
 9e4:	5d                   	pop    %rbp
 9e5:	e9 66 ff ff ff       	jmpq   950 <register_tm_clones>
 9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009f0 <insert>:
 9f0:	48 85 ff             	test   %rdi,%rdi
 9f3:	74 5b                	je     a50 <insert+0x60>
 9f5:	48 8b 0e             	mov    (%rsi),%rcx
 9f8:	48 89 fa             	mov    %rdi,%rdx
 9fb:	eb 12                	jmp    a0f <insert+0x1f>
 9fd:	0f 1f 00             	nopl   (%rax)
 a00:	48 8b 42 10          	mov    0x10(%rdx),%rax
 a04:	49 89 d0             	mov    %rdx,%r8
 a07:	48 85 c0             	test   %rax,%rax
 a0a:	74 2c                	je     a38 <insert+0x48>
 a0c:	48 89 c2             	mov    %rax,%rdx
 a0f:	48 3b 0a             	cmp    (%rdx),%rcx
 a12:	7f ec                	jg     a00 <insert+0x10>
 a14:	7d 22                	jge    a38 <insert+0x48>
 a16:	48 39 fa             	cmp    %rdi,%rdx
 a19:	48 89 f0             	mov    %rsi,%rax
 a1c:	74 07                	je     a25 <insert+0x35>
 a1e:	49 89 70 10          	mov    %rsi,0x10(%r8)
 a22:	48 89 f8             	mov    %rdi,%rax
 a25:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a29:	83 05 ec 15 20 00 01 	addl   $0x1,0x2015ec(%rip)        # 20201c <n>
 a30:	c3                   	retq   
 a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a38:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a3c:	48 89 f8             	mov    %rdi,%rax
 a3f:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a46:	00 
 a47:	83 05 ce 15 20 00 01 	addl   $0x1,0x2015ce(%rip)        # 20201c <n>
 a4e:	c3                   	retq   
 a4f:	90                   	nop
 a50:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a57:	00 
 a58:	48 89 f0             	mov    %rsi,%rax
 a5b:	83 05 ba 15 20 00 01 	addl   $0x1,0x2015ba(%rip)        # 20201c <n>
 a62:	c3                   	retq   
 a63:	0f 1f 00             	nopl   (%rax)
 a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a6d:	00 00 00 

0000000000000a70 <create>:
 a70:	55                   	push   %rbp
 a71:	53                   	push   %rbx
 a72:	31 ed                	xor    %ebp,%ebp
 a74:	48 83 ec 08          	sub    $0x8,%rsp
 a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a7f:	00 
 a80:	bf 18 00 00 00       	mov    $0x18,%edi
 a85:	e8 86 fc ff ff       	callq  710 <malloc@plt>
 a8a:	48 8d 3d c3 01 00 00 	lea    0x1c3(%rip),%rdi        # c54 <_IO_stdin_used+0x4>
 a91:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a95:	48 89 c3             	mov    %rax,%rbx
 a98:	48 89 c6             	mov    %rax,%rsi
 a9b:	31 c0                	xor    %eax,%eax
 a9d:	e8 9e fc ff ff       	callq  740 <__isoc99_scanf@plt>
 aa2:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 aa6:	75 10                	jne    ab8 <create+0x48>
 aa8:	48 83 c4 08          	add    $0x8,%rsp
 aac:	48 89 e8             	mov    %rbp,%rax
 aaf:	5b                   	pop    %rbx
 ab0:	5d                   	pop    %rbp
 ab1:	c3                   	retq   
 ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ab8:	66 0f ef c9          	pxor   %xmm1,%xmm1
 abc:	0f 2e 4b 08          	ucomiss 0x8(%rbx),%xmm1
 ac0:	7a 02                	jp     ac4 <create+0x54>
 ac2:	74 e4                	je     aa8 <create+0x38>
 ac4:	48 89 ef             	mov    %rbp,%rdi
 ac7:	48 89 de             	mov    %rbx,%rsi
 aca:	e8 21 ff ff ff       	callq  9f0 <insert>
 acf:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ad3:	48 89 c5             	mov    %rax,%rbp
 ad6:	74 d0                	je     aa8 <create+0x38>
 ad8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 adc:	0f 2e 43 08          	ucomiss 0x8(%rbx),%xmm0
 ae0:	7a 9e                	jp     a80 <create+0x10>
 ae2:	75 9c                	jne    a80 <create+0x10>
 ae4:	eb c2                	jmp    aa8 <create+0x38>
 ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aed:	00 00 00 

0000000000000af0 <print>:
 af0:	55                   	push   %rbp
 af1:	53                   	push   %rbx
 af2:	48 8d 35 62 01 00 00 	lea    0x162(%rip),%rsi        # c5b <_IO_stdin_used+0xb>
 af9:	48 89 fb             	mov    %rdi,%rbx
 afc:	31 c0                	xor    %eax,%eax
 afe:	bf 01 00 00 00       	mov    $0x1,%edi
 b03:	48 83 ec 08          	sub    $0x8,%rsp
 b07:	8b 15 0f 15 20 00    	mov    0x20150f(%rip),%edx        # 20201c <n>
 b0d:	e8 1e fc ff ff       	callq  730 <__printf_chk@plt>
 b12:	48 85 db             	test   %rbx,%rbx
 b15:	74 30                	je     b47 <print+0x57>
 b17:	48 8d 2d 5a 01 00 00 	lea    0x15a(%rip),%rbp        # c78 <_IO_stdin_used+0x28>
 b1e:	66 90                	xchg   %ax,%ax
 b20:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b24:	48 8b 13             	mov    (%rbx),%rdx
 b27:	48 89 ee             	mov    %rbp,%rsi
 b2a:	bf 01 00 00 00       	mov    $0x1,%edi
 b2f:	b8 01 00 00 00       	mov    $0x1,%eax
 b34:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b39:	e8 f2 fb ff ff       	callq  730 <__printf_chk@plt>
 b3e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b42:	48 85 db             	test   %rbx,%rbx
 b45:	75 d9                	jne    b20 <print+0x30>
 b47:	48 83 c4 08          	add    $0x8,%rsp
 b4b:	5b                   	pop    %rbx
 b4c:	5d                   	pop    %rbp
 b4d:	c3                   	retq   
 b4e:	66 90                	xchg   %ax,%ax

0000000000000b50 <del>:
 b50:	55                   	push   %rbp
 b51:	53                   	push   %rbx
 b52:	48 89 fb             	mov    %rdi,%rbx
 b55:	48 83 ec 08          	sub    $0x8,%rsp
 b59:	48 85 ff             	test   %rdi,%rdi
 b5c:	75 11                	jne    b6f <del+0x1f>
 b5e:	eb 59                	jmp    bb9 <del+0x69>
 b60:	48 8b 47 10          	mov    0x10(%rdi),%rax
 b64:	48 89 fa             	mov    %rdi,%rdx
 b67:	48 85 c0             	test   %rax,%rax
 b6a:	74 34                	je     ba0 <del+0x50>
 b6c:	48 89 c7             	mov    %rax,%rdi
 b6f:	48 39 37             	cmp    %rsi,(%rdi)
 b72:	7c ec                	jl     b60 <del+0x10>
 b74:	75 2a                	jne    ba0 <del+0x50>
 b76:	48 39 df             	cmp    %rbx,%rdi
 b79:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
 b7d:	74 07                	je     b86 <del+0x36>
 b7f:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 b83:	48 89 dd             	mov    %rbx,%rbp
 b86:	e8 65 fb ff ff       	callq  6f0 <free@plt>
 b8b:	83 2d 8a 14 20 00 01 	subl   $0x1,0x20148a(%rip)        # 20201c <n>
 b92:	48 83 c4 08          	add    $0x8,%rsp
 b96:	48 89 e8             	mov    %rbp,%rax
 b99:	5b                   	pop    %rbx
 b9a:	5d                   	pop    %rbp
 b9b:	c3                   	retq   
 b9c:	0f 1f 40 00          	nopl   0x0(%rax)
 ba0:	48 8d 3d dd 00 00 00 	lea    0xdd(%rip),%rdi        # c84 <_IO_stdin_used+0x34>
 ba7:	48 89 dd             	mov    %rbx,%rbp
 baa:	e8 51 fb ff ff       	callq  700 <puts@plt>
 baf:	48 83 c4 08          	add    $0x8,%rsp
 bb3:	48 89 e8             	mov    %rbp,%rax
 bb6:	5b                   	pop    %rbx
 bb7:	5d                   	pop    %rbp
 bb8:	c3                   	retq   
 bb9:	48 8d 3d 58 01 00 00 	lea    0x158(%rip),%rdi        # d18 <_IO_stdin_used+0xc8>
 bc0:	31 ed                	xor    %ebp,%ebp
 bc2:	e8 39 fb ff ff       	callq  700 <puts@plt>
 bc7:	eb c9                	jmp    b92 <del+0x42>
 bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000bd0 <__libc_csu_init>:
 bd0:	41 57                	push   %r15
 bd2:	41 56                	push   %r14
 bd4:	49 89 d7             	mov    %rdx,%r15
 bd7:	41 55                	push   %r13
 bd9:	41 54                	push   %r12
 bdb:	4c 8d 25 a6 11 20 00 	lea    0x2011a6(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 be2:	55                   	push   %rbp
 be3:	48 8d 2d a6 11 20 00 	lea    0x2011a6(%rip),%rbp        # 201d90 <__init_array_end>
 bea:	53                   	push   %rbx
 beb:	41 89 fd             	mov    %edi,%r13d
 bee:	49 89 f6             	mov    %rsi,%r14
 bf1:	4c 29 e5             	sub    %r12,%rbp
 bf4:	48 83 ec 08          	sub    $0x8,%rsp
 bf8:	48 c1 fd 03          	sar    $0x3,%rbp
 bfc:	e8 bf fa ff ff       	callq  6c0 <_init>
 c01:	48 85 ed             	test   %rbp,%rbp
 c04:	74 20                	je     c26 <__libc_csu_init+0x56>
 c06:	31 db                	xor    %ebx,%ebx
 c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c0f:	00 
 c10:	4c 89 fa             	mov    %r15,%rdx
 c13:	4c 89 f6             	mov    %r14,%rsi
 c16:	44 89 ef             	mov    %r13d,%edi
 c19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c1d:	48 83 c3 01          	add    $0x1,%rbx
 c21:	48 39 dd             	cmp    %rbx,%rbp
 c24:	75 ea                	jne    c10 <__libc_csu_init+0x40>
 c26:	48 83 c4 08          	add    $0x8,%rsp
 c2a:	5b                   	pop    %rbx
 c2b:	5d                   	pop    %rbp
 c2c:	41 5c                	pop    %r12
 c2e:	41 5d                	pop    %r13
 c30:	41 5e                	pop    %r14
 c32:	41 5f                	pop    %r15
 c34:	c3                   	retq   
 c35:	90                   	nop
 c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c3d:	00 00 00 

0000000000000c40 <__libc_csu_fini>:
 c40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c44 <_fini>:
 c44:	48 83 ec 08          	sub    $0x8,%rsp
 c48:	48 83 c4 08          	add    $0x8,%rsp
 c4c:	c3                   	retq   
