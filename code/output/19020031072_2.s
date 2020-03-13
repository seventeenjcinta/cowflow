
input/19020031072_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000698 <_init>:
 698:	48 83 ec 08          	sub    $0x8,%rsp
 69c:	48 8b 05 45 19 20 00 	mov    0x201945(%rip),%rax        # 201fe8 <__gmon_start__>
 6a3:	48 85 c0             	test   %rax,%rax
 6a6:	74 02                	je     6aa <_init+0x12>
 6a8:	ff d0                	callq  *%rax
 6aa:	48 83 c4 08          	add    $0x8,%rsp
 6ae:	c3                   	retq   

Disassembly of section .plt:

00000000000006b0 <.plt>:
 6b0:	ff 35 e2 18 20 00    	pushq  0x2018e2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6b6:	ff 25 e4 18 20 00    	jmpq   *0x2018e4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006c0 <free@plt>:
 6c0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 6c6:	68 00 00 00 00       	pushq  $0x0
 6cb:	e9 e0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006d0 <puts@plt>:
 6d0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6d6:	68 01 00 00 00       	pushq  $0x1
 6db:	e9 d0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006e0 <__stack_chk_fail@plt>:
 6e0:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6e6:	68 02 00 00 00       	pushq  $0x2
 6eb:	e9 c0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006f0 <malloc@plt>:
 6f0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6f6:	68 03 00 00 00       	pushq  $0x3
 6fb:	e9 b0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000700 <__printf_chk@plt>:
 700:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 706:	68 04 00 00 00       	pushq  $0x4
 70b:	e9 a0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000710 <__isoc99_scanf@plt>:
 710:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 716:	68 05 00 00 00       	pushq  $0x5
 71b:	e9 90 ff ff ff       	jmpq   6b0 <.plt>

Disassembly of section .plt.got:

0000000000000720 <__cxa_finalize@plt>:
 720:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000730 <main>:
 730:	41 55                	push   %r13
 732:	41 54                	push   %r12
 734:	48 8d 3d af 05 00 00 	lea    0x5af(%rip),%rdi        # cea <_IO_stdin_used+0x6a>
 73b:	55                   	push   %rbp
 73c:	53                   	push   %rbx
 73d:	48 83 ec 28          	sub    $0x28,%rsp
 741:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 748:	00 00 
 74a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 74f:	31 c0                	xor    %eax,%eax
 751:	e8 7a ff ff ff       	callq  6d0 <puts@plt>
 756:	48 8d 3d 1b 06 00 00 	lea    0x61b(%rip),%rdi        # d78 <_IO_stdin_used+0xf8>
 75d:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 762:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 767:	e8 64 ff ff ff       	callq  6d0 <puts@plt>
 76c:	31 ff                	xor    %edi,%edi
 76e:	e8 ad 03 00 00       	callq  b20 <creat>
 773:	48 89 c7             	mov    %rax,%rdi
 776:	48 89 c3             	mov    %rax,%rbx
 779:	e8 12 04 00 00       	callq  b90 <print>
 77e:	eb 4d                	jmp    7cd <main+0x9d>
 780:	83 f8 02             	cmp    $0x2,%eax
 783:	75 40                	jne    7c5 <main+0x95>
 785:	48 8d 35 cf 05 00 00 	lea    0x5cf(%rip),%rsi        # d5b <_IO_stdin_used+0xdb>
 78c:	bf 01 00 00 00       	mov    $0x1,%edi
 791:	31 c0                	xor    %eax,%eax
 793:	e8 68 ff ff ff       	callq  700 <__printf_chk@plt>
 798:	48 8d 3d cf 05 00 00 	lea    0x5cf(%rip),%rdi        # d6e <_IO_stdin_used+0xee>
 79f:	4c 89 ee             	mov    %r13,%rsi
 7a2:	31 c0                	xor    %eax,%eax
 7a4:	e8 67 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7a9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7ae:	48 89 df             	mov    %rbx,%rdi
 7b1:	e8 8a 02 00 00       	callq  a40 <del>
 7b6:	48 89 c7             	mov    %rax,%rdi
 7b9:	48 89 c3             	mov    %rax,%rbx
 7bc:	e8 cf 03 00 00       	callq  b90 <print>
 7c1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7c5:	85 c0                	test   %eax,%eax
 7c7:	0f 84 ab 00 00 00    	je     878 <main+0x148>
 7cd:	48 8d 3d 2c 05 00 00 	lea    0x52c(%rip),%rdi        # d00 <_IO_stdin_used+0x80>
 7d4:	e8 f7 fe ff ff       	callq  6d0 <puts@plt>
 7d9:	48 8d 35 3d 05 00 00 	lea    0x53d(%rip),%rsi        # d1d <_IO_stdin_used+0x9d>
 7e0:	bf 01 00 00 00       	mov    $0x1,%edi
 7e5:	31 c0                	xor    %eax,%eax
 7e7:	e8 14 ff ff ff       	callq  700 <__printf_chk@plt>
 7ec:	48 8d 3d 3a 05 00 00 	lea    0x53a(%rip),%rdi        # d2d <_IO_stdin_used+0xad>
 7f3:	31 c0                	xor    %eax,%eax
 7f5:	4c 89 e6             	mov    %r12,%rsi
 7f8:	e8 13 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 801:	83 f8 01             	cmp    $0x1,%eax
 804:	0f 85 76 ff ff ff    	jne    780 <main+0x50>
 80a:	48 8d 35 1f 05 00 00 	lea    0x51f(%rip),%rsi        # d30 <_IO_stdin_used+0xb0>
 811:	bf 01 00 00 00       	mov    $0x1,%edi
 816:	31 c0                	xor    %eax,%eax
 818:	e8 e3 fe ff ff       	callq  700 <__printf_chk@plt>
 81d:	bf 18 00 00 00       	mov    $0x18,%edi
 822:	e8 c9 fe ff ff       	callq  6f0 <malloc@plt>
 827:	48 8d 3d 8c 04 00 00 	lea    0x48c(%rip),%rdi        # cba <_IO_stdin_used+0x3a>
 82e:	48 8d 50 08          	lea    0x8(%rax),%rdx
 832:	48 89 c5             	mov    %rax,%rbp
 835:	48 89 c6             	mov    %rax,%rsi
 838:	31 c0                	xor    %eax,%eax
 83a:	e8 d1 fe ff ff       	callq  710 <__isoc99_scanf@plt>
 83f:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 843:	48 8d 35 02 05 00 00 	lea    0x502(%rip),%rsi        # d4c <_IO_stdin_used+0xcc>
 84a:	bf 01 00 00 00       	mov    $0x1,%edi
 84f:	31 c0                	xor    %eax,%eax
 851:	e8 aa fe ff ff       	callq  700 <__printf_chk@plt>
 856:	48 89 df             	mov    %rbx,%rdi
 859:	48 89 ee             	mov    %rbp,%rsi
 85c:	e8 4f 01 00 00       	callq  9b0 <insert>
 861:	48 89 c7             	mov    %rax,%rdi
 864:	48 89 c3             	mov    %rax,%rbx
 867:	e8 24 03 00 00       	callq  b90 <print>
 86c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 870:	85 c0                	test   %eax,%eax
 872:	0f 85 55 ff ff ff    	jne    7cd <main+0x9d>
 878:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 87d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 884:	00 00 
 886:	75 0b                	jne    893 <main+0x163>
 888:	48 83 c4 28          	add    $0x28,%rsp
 88c:	5b                   	pop    %rbx
 88d:	5d                   	pop    %rbp
 88e:	41 5c                	pop    %r12
 890:	41 5d                	pop    %r13
 892:	c3                   	retq   
 893:	e8 48 fe ff ff       	callq  6e0 <__stack_chk_fail@plt>
 898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 89f:	00 

00000000000008a0 <_start>:
 8a0:	31 ed                	xor    %ebp,%ebp
 8a2:	49 89 d1             	mov    %rdx,%r9
 8a5:	5e                   	pop    %rsi
 8a6:	48 89 e2             	mov    %rsp,%rdx
 8a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8ad:	50                   	push   %rax
 8ae:	54                   	push   %rsp
 8af:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # c70 <__libc_csu_fini>
 8b6:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # c00 <__libc_csu_init>
 8bd:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 730 <main>
 8c4:	ff 15 16 17 20 00    	callq  *0x201716(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ca:	f4                   	hlt    
 8cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008d0 <deregister_tm_clones>:
 8d0:	48 8d 3d 39 17 20 00 	lea    0x201739(%rip),%rdi        # 202010 <__TMC_END__>
 8d7:	55                   	push   %rbp
 8d8:	48 8d 05 31 17 20 00 	lea    0x201731(%rip),%rax        # 202010 <__TMC_END__>
 8df:	48 39 f8             	cmp    %rdi,%rax
 8e2:	48 89 e5             	mov    %rsp,%rbp
 8e5:	74 19                	je     900 <deregister_tm_clones+0x30>
 8e7:	48 8b 05 ea 16 20 00 	mov    0x2016ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ee:	48 85 c0             	test   %rax,%rax
 8f1:	74 0d                	je     900 <deregister_tm_clones+0x30>
 8f3:	5d                   	pop    %rbp
 8f4:	ff e0                	jmpq   *%rax
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 
 900:	5d                   	pop    %rbp
 901:	c3                   	retq   
 902:	0f 1f 40 00          	nopl   0x0(%rax)
 906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90d:	00 00 00 

0000000000000910 <register_tm_clones>:
 910:	48 8d 3d f9 16 20 00 	lea    0x2016f9(%rip),%rdi        # 202010 <__TMC_END__>
 917:	48 8d 35 f2 16 20 00 	lea    0x2016f2(%rip),%rsi        # 202010 <__TMC_END__>
 91e:	55                   	push   %rbp
 91f:	48 29 fe             	sub    %rdi,%rsi
 922:	48 89 e5             	mov    %rsp,%rbp
 925:	48 c1 fe 03          	sar    $0x3,%rsi
 929:	48 89 f0             	mov    %rsi,%rax
 92c:	48 c1 e8 3f          	shr    $0x3f,%rax
 930:	48 01 c6             	add    %rax,%rsi
 933:	48 d1 fe             	sar    %rsi
 936:	74 18                	je     950 <register_tm_clones+0x40>
 938:	48 8b 05 b1 16 20 00 	mov    0x2016b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 93f:	48 85 c0             	test   %rax,%rax
 942:	74 0c                	je     950 <register_tm_clones+0x40>
 944:	5d                   	pop    %rbp
 945:	ff e0                	jmpq   *%rax
 947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 94e:	00 00 
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 

0000000000000960 <__do_global_dtors_aux>:
 960:	80 3d a9 16 20 00 00 	cmpb   $0x0,0x2016a9(%rip)        # 202010 <__TMC_END__>
 967:	75 2f                	jne    998 <__do_global_dtors_aux+0x38>
 969:	48 83 3d 87 16 20 00 	cmpq   $0x0,0x201687(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 970:	00 
 971:	55                   	push   %rbp
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	74 0c                	je     983 <__do_global_dtors_aux+0x23>
 977:	48 8b 3d 8a 16 20 00 	mov    0x20168a(%rip),%rdi        # 202008 <__dso_handle>
 97e:	e8 9d fd ff ff       	callq  720 <__cxa_finalize@plt>
 983:	e8 48 ff ff ff       	callq  8d0 <deregister_tm_clones>
 988:	c6 05 81 16 20 00 01 	movb   $0x1,0x201681(%rip)        # 202010 <__TMC_END__>
 98f:	5d                   	pop    %rbp
 990:	c3                   	retq   
 991:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 998:	f3 c3                	repz retq 
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <frame_dummy>:
 9a0:	55                   	push   %rbp
 9a1:	48 89 e5             	mov    %rsp,%rbp
 9a4:	5d                   	pop    %rbp
 9a5:	e9 66 ff ff ff       	jmpq   910 <register_tm_clones>
 9aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009b0 <insert>:
 9b0:	48 85 ff             	test   %rdi,%rdi
 9b3:	74 5b                	je     a10 <insert+0x60>
 9b5:	4c 8b 06             	mov    (%rsi),%r8
 9b8:	48 89 fa             	mov    %rdi,%rdx
 9bb:	45 31 c9             	xor    %r9d,%r9d
 9be:	eb 0f                	jmp    9cf <insert+0x1f>
 9c0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9c4:	49 89 d1             	mov    %rdx,%r9
 9c7:	48 85 c9             	test   %rcx,%rcx
 9ca:	74 24                	je     9f0 <insert+0x40>
 9cc:	48 89 ca             	mov    %rcx,%rdx
 9cf:	4c 39 02             	cmp    %r8,(%rdx)
 9d2:	7c ec                	jl     9c0 <insert+0x10>
 9d4:	48 39 fa             	cmp    %rdi,%rdx
 9d7:	74 4f                	je     a28 <insert+0x78>
 9d9:	49 89 71 10          	mov    %rsi,0x10(%r9)
 9dd:	48 89 f8             	mov    %rdi,%rax
 9e0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9e4:	83 05 29 16 20 00 01 	addl   $0x1,0x201629(%rip)        # 202014 <n>
 9eb:	c3                   	retq   
 9ec:	0f 1f 40 00          	nopl   0x0(%rax)
 9f0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 9f4:	48 89 f8             	mov    %rdi,%rax
 9f7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9fe:	00 
 9ff:	83 05 0e 16 20 00 01 	addl   $0x1,0x20160e(%rip)        # 202014 <n>
 a06:	c3                   	retq   
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a17:	00 
 a18:	48 89 f0             	mov    %rsi,%rax
 a1b:	83 05 f2 15 20 00 01 	addl   $0x1,0x2015f2(%rip)        # 202014 <n>
 a22:	c3                   	retq   
 a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a28:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a2c:	48 89 f0             	mov    %rsi,%rax
 a2f:	83 05 de 15 20 00 01 	addl   $0x1,0x2015de(%rip)        # 202014 <n>
 a36:	c3                   	retq   
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 

0000000000000a40 <del>:
 a40:	48 85 ff             	test   %rdi,%rdi
 a43:	41 54                	push   %r12
 a45:	49 89 fc             	mov    %rdi,%r12
 a48:	55                   	push   %rbp
 a49:	53                   	push   %rbx
 a4a:	75 17                	jne    a63 <del+0x23>
 a4c:	e9 b1 00 00 00       	jmpq   b02 <del+0xc2>
 a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a58:	48 85 db             	test   %rbx,%rbx
 a5b:	48 89 f8             	mov    %rdi,%rax
 a5e:	74 58                	je     ab8 <del+0x78>
 a60:	48 89 df             	mov    %rbx,%rdi
 a63:	48 8b 2f             	mov    (%rdi),%rbp
 a66:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 a6a:	48 39 f5             	cmp    %rsi,%rbp
 a6d:	75 e9                	jne    a58 <del+0x18>
 a6f:	4c 39 e7             	cmp    %r12,%rdi
 a72:	74 6c                	je     ae0 <del+0xa0>
 a74:	48 85 db             	test   %rbx,%rbx
 a77:	74 77                	je     af0 <del+0xb0>
 a79:	48 89 58 10          	mov    %rbx,0x10(%rax)
 a7d:	4c 89 e3             	mov    %r12,%rbx
 a80:	e8 3b fc ff ff       	callq  6c0 <free@plt>
 a85:	48 8d 35 06 02 00 00 	lea    0x206(%rip),%rsi        # c92 <_IO_stdin_used+0x12>
 a8c:	48 89 ea             	mov    %rbp,%rdx
 a8f:	bf 01 00 00 00       	mov    $0x1,%edi
 a94:	31 c0                	xor    %eax,%eax
 a96:	e8 65 fc ff ff       	callq  700 <__printf_chk@plt>
 a9b:	8b 05 73 15 20 00    	mov    0x201573(%rip),%eax        # 202014 <n>
 aa1:	83 e8 01             	sub    $0x1,%eax
 aa4:	89 05 6a 15 20 00    	mov    %eax,0x20156a(%rip)        # 202014 <n>
 aaa:	48 89 d8             	mov    %rbx,%rax
 aad:	5b                   	pop    %rbx
 aae:	5d                   	pop    %rbp
 aaf:	41 5c                	pop    %r12
 ab1:	c3                   	retq   
 ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ab8:	48 8d 35 df 01 00 00 	lea    0x1df(%rip),%rsi        # c9e <_IO_stdin_used+0x1e>
 abf:	bf 01 00 00 00       	mov    $0x1,%edi
 ac4:	31 c0                	xor    %eax,%eax
 ac6:	4c 89 e3             	mov    %r12,%rbx
 ac9:	e8 32 fc ff ff       	callq  700 <__printf_chk@plt>
 ace:	8b 05 40 15 20 00    	mov    0x201540(%rip),%eax        # 202014 <n>
 ad4:	83 c0 01             	add    $0x1,%eax
 ad7:	eb c8                	jmp    aa1 <del+0x61>
 ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ae0:	e8 db fb ff ff       	callq  6c0 <free@plt>
 ae5:	eb 9e                	jmp    a85 <del+0x45>
 ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aee:	00 00 
 af0:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 af7:	00 
 af8:	4c 89 e3             	mov    %r12,%rbx
 afb:	e8 c0 fb ff ff       	callq  6c0 <free@plt>
 b00:	eb 83                	jmp    a85 <del+0x45>
 b02:	48 8d 3d 7b 01 00 00 	lea    0x17b(%rip),%rdi        # c84 <_IO_stdin_used+0x4>
 b09:	31 db                	xor    %ebx,%ebx
 b0b:	e8 c0 fb ff ff       	callq  6d0 <puts@plt>
 b10:	eb 98                	jmp    aaa <del+0x6a>
 b12:	0f 1f 40 00          	nopl   0x0(%rax)
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 

0000000000000b20 <creat>:
 b20:	41 54                	push   %r12
 b22:	4c 8d 25 91 01 00 00 	lea    0x191(%rip),%r12        # cba <_IO_stdin_used+0x3a>
 b29:	55                   	push   %rbp
 b2a:	48 89 fd             	mov    %rdi,%rbp
 b2d:	53                   	push   %rbx
 b2e:	eb 0e                	jmp    b3e <creat+0x1e>
 b30:	48 89 ef             	mov    %rbp,%rdi
 b33:	48 89 de             	mov    %rbx,%rsi
 b36:	e8 75 fe ff ff       	callq  9b0 <insert>
 b3b:	48 89 c5             	mov    %rax,%rbp
 b3e:	bf 18 00 00 00       	mov    $0x18,%edi
 b43:	e8 a8 fb ff ff       	callq  6f0 <malloc@plt>
 b48:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b4c:	48 89 c3             	mov    %rax,%rbx
 b4f:	48 89 c6             	mov    %rax,%rsi
 b52:	4c 89 e7             	mov    %r12,%rdi
 b55:	31 c0                	xor    %eax,%eax
 b57:	e8 b4 fb ff ff       	callq  710 <__isoc99_scanf@plt>
 b5c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b60:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 b67:	00 
 b68:	75 c6                	jne    b30 <creat+0x10>
 b6a:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b6e:	0f 2e 43 08          	ucomiss 0x8(%rbx),%xmm0
 b72:	7a bc                	jp     b30 <creat+0x10>
 b74:	75 ba                	jne    b30 <creat+0x10>
 b76:	48 89 df             	mov    %rbx,%rdi
 b79:	e8 42 fb ff ff       	callq  6c0 <free@plt>
 b7e:	48 89 e8             	mov    %rbp,%rax
 b81:	5b                   	pop    %rbx
 b82:	5d                   	pop    %rbp
 b83:	41 5c                	pop    %r12
 b85:	c3                   	retq   
 b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8d:	00 00 00 

0000000000000b90 <print>:
 b90:	8b 15 7e 14 20 00    	mov    0x20147e(%rip),%edx        # 202014 <n>
 b96:	41 54                	push   %r12
 b98:	48 8d 35 22 01 00 00 	lea    0x122(%rip),%rsi        # cc1 <_IO_stdin_used+0x41>
 b9f:	55                   	push   %rbp
 ba0:	53                   	push   %rbx
 ba1:	31 c0                	xor    %eax,%eax
 ba3:	48 89 fb             	mov    %rdi,%rbx
 ba6:	bf 01 00 00 00       	mov    $0x1,%edi
 bab:	e8 50 fb ff ff       	callq  700 <__printf_chk@plt>
 bb0:	8b 05 5e 14 20 00    	mov    0x20145e(%rip),%eax        # 202014 <n>
 bb6:	85 c0                	test   %eax,%eax
 bb8:	7e 3b                	jle    bf5 <print+0x65>
 bba:	4c 8d 25 1c 01 00 00 	lea    0x11c(%rip),%r12        # cdd <_IO_stdin_used+0x5d>
 bc1:	31 ed                	xor    %ebp,%ebp
 bc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bc8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bcc:	48 8b 13             	mov    (%rbx),%rdx
 bcf:	4c 89 e6             	mov    %r12,%rsi
 bd2:	bf 01 00 00 00       	mov    $0x1,%edi
 bd7:	b8 01 00 00 00       	mov    $0x1,%eax
 bdc:	83 c5 01             	add    $0x1,%ebp
 bdf:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 be4:	e8 17 fb ff ff       	callq  700 <__printf_chk@plt>
 be9:	39 2d 25 14 20 00    	cmp    %ebp,0x201425(%rip)        # 202014 <n>
 bef:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bf3:	7f d3                	jg     bc8 <print+0x38>
 bf5:	5b                   	pop    %rbx
 bf6:	5d                   	pop    %rbp
 bf7:	41 5c                	pop    %r12
 bf9:	c3                   	retq   
 bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c00 <__libc_csu_init>:
 c00:	41 57                	push   %r15
 c02:	41 56                	push   %r14
 c04:	49 89 d7             	mov    %rdx,%r15
 c07:	41 55                	push   %r13
 c09:	41 54                	push   %r12
 c0b:	4c 8d 25 7e 11 20 00 	lea    0x20117e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c12:	55                   	push   %rbp
 c13:	48 8d 2d 7e 11 20 00 	lea    0x20117e(%rip),%rbp        # 201d98 <__init_array_end>
 c1a:	53                   	push   %rbx
 c1b:	41 89 fd             	mov    %edi,%r13d
 c1e:	49 89 f6             	mov    %rsi,%r14
 c21:	4c 29 e5             	sub    %r12,%rbp
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 c1 fd 03          	sar    $0x3,%rbp
 c2c:	e8 67 fa ff ff       	callq  698 <_init>
 c31:	48 85 ed             	test   %rbp,%rbp
 c34:	74 20                	je     c56 <__libc_csu_init+0x56>
 c36:	31 db                	xor    %ebx,%ebx
 c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c3f:	00 
 c40:	4c 89 fa             	mov    %r15,%rdx
 c43:	4c 89 f6             	mov    %r14,%rsi
 c46:	44 89 ef             	mov    %r13d,%edi
 c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c4d:	48 83 c3 01          	add    $0x1,%rbx
 c51:	48 39 dd             	cmp    %rbx,%rbp
 c54:	75 ea                	jne    c40 <__libc_csu_init+0x40>
 c56:	48 83 c4 08          	add    $0x8,%rsp
 c5a:	5b                   	pop    %rbx
 c5b:	5d                   	pop    %rbp
 c5c:	41 5c                	pop    %r12
 c5e:	41 5d                	pop    %r13
 c60:	41 5e                	pop    %r14
 c62:	41 5f                	pop    %r15
 c64:	c3                   	retq   
 c65:	90                   	nop
 c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c6d:	00 00 00 

0000000000000c70 <__libc_csu_fini>:
 c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c74 <_fini>:
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 83 c4 08          	add    $0x8,%rsp
 c7c:	c3                   	retq   
