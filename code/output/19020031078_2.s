
input/19020031078_2.elf:     file format elf64-x86-64


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
 730:	41 57                	push   %r15
 732:	41 56                	push   %r14
 734:	41 55                	push   %r13
 736:	41 54                	push   %r12
 738:	55                   	push   %rbp
 739:	53                   	push   %rbx
 73a:	48 83 ec 28          	sub    $0x28,%rsp
 73e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 745:	00 00 
 747:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 74c:	31 c0                	xor    %eax,%eax
 74e:	c7 44 24 10 ff ff ff 	movl   $0xffffffff,0x10(%rsp)
 755:	ff 
 756:	4c 8d 64 24 10       	lea    0x10(%rsp),%r12
 75b:	e8 f0 03 00 00       	callq  b50 <creat>
 760:	48 8d 3d 94 05 00 00 	lea    0x594(%rip),%rdi        # cfb <_IO_stdin_used+0x7b>
 767:	48 89 c3             	mov    %rax,%rbx
 76a:	e8 61 ff ff ff       	callq  6d0 <puts@plt>
 76f:	48 89 df             	mov    %rbx,%rdi
 772:	e8 49 03 00 00       	callq  ac0 <print>
 777:	48 8d 3d 93 05 00 00 	lea    0x593(%rip),%rdi        # d11 <_IO_stdin_used+0x91>
 77e:	e8 4d ff ff ff       	callq  6d0 <puts@plt>
 783:	48 8d 3d a3 05 00 00 	lea    0x5a3(%rip),%rdi        # d2d <_IO_stdin_used+0xad>
 78a:	31 c0                	xor    %eax,%eax
 78c:	4c 89 e6             	mov    %r12,%rsi
 78f:	e8 7c ff ff ff       	callq  710 <__isoc99_scanf@plt>
 794:	8b 44 24 10          	mov    0x10(%rsp),%eax
 798:	85 c0                	test   %eax,%eax
 79a:	0f 84 d0 00 00 00    	je     870 <main+0x140>
 7a0:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
 7a5:	4c 8d 3d bc 05 00 00 	lea    0x5bc(%rip),%r15        # d68 <_IO_stdin_used+0xe8>
 7ac:	4c 8d 35 7d 05 00 00 	lea    0x57d(%rip),%r14        # d30 <_IO_stdin_used+0xb0>
 7b3:	48 8d 2d 73 05 00 00 	lea    0x573(%rip),%rbp        # d2d <_IO_stdin_used+0xad>
 7ba:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 7bf:	eb 5f                	jmp    820 <main+0xf0>
 7c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7c8:	83 f8 02             	cmp    $0x2,%eax
 7cb:	75 32                	jne    7ff <main+0xcf>
 7cd:	48 8d 3d d4 05 00 00 	lea    0x5d4(%rip),%rdi        # da8 <_IO_stdin_used+0x128>
 7d4:	e8 f7 fe ff ff       	callq  6d0 <puts@plt>
 7d9:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 7de:	48 89 ef             	mov    %rbp,%rdi
 7e1:	31 c0                	xor    %eax,%eax
 7e3:	e8 28 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7e8:	8b 74 24 14          	mov    0x14(%rsp),%esi
 7ec:	48 89 df             	mov    %rbx,%rdi
 7ef:	e8 2c 02 00 00       	callq  a20 <del>
 7f4:	48 89 c7             	mov    %rax,%rdi
 7f7:	48 89 c3             	mov    %rax,%rbx
 7fa:	e8 c1 02 00 00       	callq  ac0 <print>
 7ff:	48 8d 3d 0b 05 00 00 	lea    0x50b(%rip),%rdi        # d11 <_IO_stdin_used+0x91>
 806:	e8 c5 fe ff ff       	callq  6d0 <puts@plt>
 80b:	31 c0                	xor    %eax,%eax
 80d:	4c 89 e6             	mov    %r12,%rsi
 810:	48 89 ef             	mov    %rbp,%rdi
 813:	e8 f8 fe ff ff       	callq  710 <__isoc99_scanf@plt>
 818:	8b 44 24 10          	mov    0x10(%rsp),%eax
 81c:	85 c0                	test   %eax,%eax
 81e:	74 50                	je     870 <main+0x140>
 820:	83 f8 01             	cmp    $0x1,%eax
 823:	75 a3                	jne    7c8 <main+0x98>
 825:	4c 89 ff             	mov    %r15,%rdi
 828:	e8 a3 fe ff ff       	callq  6d0 <puts@plt>
 82d:	bf 18 00 00 00       	mov    $0x18,%edi
 832:	e8 b9 fe ff ff       	callq  6f0 <malloc@plt>
 837:	48 8d 50 08          	lea    0x8(%rax),%rdx
 83b:	49 89 c5             	mov    %rax,%r13
 83e:	48 89 c6             	mov    %rax,%rsi
 841:	4c 89 f7             	mov    %r14,%rdi
 844:	31 c0                	xor    %eax,%eax
 846:	e8 c5 fe ff ff       	callq  710 <__isoc99_scanf@plt>
 84b:	48 89 df             	mov    %rbx,%rdi
 84e:	4c 89 ee             	mov    %r13,%rsi
 851:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
 858:	00 
 859:	e8 52 01 00 00       	callq  9b0 <insert>
 85e:	48 89 c7             	mov    %rax,%rdi
 861:	48 89 c3             	mov    %rax,%rbx
 864:	e8 57 02 00 00       	callq  ac0 <print>
 869:	eb 94                	jmp    7ff <main+0xcf>
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 870:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 875:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 87c:	00 00 
 87e:	75 0f                	jne    88f <main+0x15f>
 880:	48 83 c4 28          	add    $0x28,%rsp
 884:	5b                   	pop    %rbx
 885:	5d                   	pop    %rbp
 886:	41 5c                	pop    %r12
 888:	41 5d                	pop    %r13
 88a:	41 5e                	pop    %r14
 88c:	41 5f                	pop    %r15
 88e:	c3                   	retq   
 88f:	e8 4c fe ff ff       	callq  6e0 <__stack_chk_fail@plt>
 894:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89b:	00 00 00 
 89e:	66 90                	xchg   %ax,%ax

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
 9b0:	8b 05 5e 16 20 00    	mov    0x20165e(%rip),%eax        # 202014 <n>
 9b6:	48 85 ff             	test   %rdi,%rdi
 9b9:	44 8d 50 01          	lea    0x1(%rax),%r10d
 9bd:	74 51                	je     a10 <insert+0x60>
 9bf:	4c 8b 06             	mov    (%rsi),%r8
 9c2:	48 89 fa             	mov    %rdi,%rdx
 9c5:	eb 18                	jmp    9df <insert+0x2f>
 9c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ce:	00 00 
 9d0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9d4:	49 89 d1             	mov    %rdx,%r9
 9d7:	48 85 c9             	test   %rcx,%rcx
 9da:	74 24                	je     a00 <insert+0x50>
 9dc:	48 89 ca             	mov    %rcx,%rdx
 9df:	4c 3b 02             	cmp    (%rdx),%r8
 9e2:	7f ec                	jg     9d0 <insert+0x20>
 9e4:	48 39 fa             	cmp    %rdi,%rdx
 9e7:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9eb:	48 89 f0             	mov    %rsi,%rax
 9ee:	74 07                	je     9f7 <insert+0x47>
 9f0:	49 89 71 10          	mov    %rsi,0x10(%r9)
 9f4:	48 89 f8             	mov    %rdi,%rax
 9f7:	44 89 15 16 16 20 00 	mov    %r10d,0x201616(%rip)        # 202014 <n>
 9fe:	c3                   	retq   
 9ff:	90                   	nop
 a00:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a04:	48 89 f8             	mov    %rdi,%rax
 a07:	44 89 15 06 16 20 00 	mov    %r10d,0x201606(%rip)        # 202014 <n>
 a0e:	c3                   	retq   
 a0f:	90                   	nop
 a10:	44 89 15 fd 15 20 00 	mov    %r10d,0x2015fd(%rip)        # 202014 <n>
 a17:	48 89 f0             	mov    %rsi,%rax
 a1a:	c3                   	retq   
 a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a20 <del>:
 a20:	53                   	push   %rbx
 a21:	48 63 f6             	movslq %esi,%rsi
 a24:	48 89 fb             	mov    %rdi,%rbx
 a27:	48 83 ec 10          	sub    $0x10,%rsp
 a2b:	eb 12                	jmp    a3f <del+0x1f>
 a2d:	0f 1f 00             	nopl   (%rax)
 a30:	48 8b 47 10          	mov    0x10(%rdi),%rax
 a34:	48 89 fa             	mov    %rdi,%rdx
 a37:	48 85 c0             	test   %rax,%rax
 a3a:	74 34                	je     a70 <del+0x50>
 a3c:	48 89 c7             	mov    %rax,%rdi
 a3f:	48 39 37             	cmp    %rsi,(%rdi)
 a42:	7c ec                	jl     a30 <del+0x10>
 a44:	75 2a                	jne    a70 <del+0x50>
 a46:	48 39 df             	cmp    %rbx,%rdi
 a49:	48 8b 47 10          	mov    0x10(%rdi),%rax
 a4d:	74 41                	je     a90 <del+0x70>
 a4f:	48 85 c0             	test   %rax,%rax
 a52:	74 54                	je     aa8 <del+0x88>
 a54:	48 89 42 10          	mov    %rax,0x10(%rdx)
 a58:	e8 63 fc ff ff       	callq  6c0 <free@plt>
 a5d:	48 89 d8             	mov    %rbx,%rax
 a60:	83 2d ad 15 20 00 01 	subl   $0x1,0x2015ad(%rip)        # 202014 <n>
 a67:	48 83 c4 10          	add    $0x10,%rsp
 a6b:	5b                   	pop    %rbx
 a6c:	c3                   	retq   
 a6d:	0f 1f 00             	nopl   (%rax)
 a70:	48 8d 35 0d 02 00 00 	lea    0x20d(%rip),%rsi        # c84 <_IO_stdin_used+0x4>
 a77:	bf 01 00 00 00       	mov    $0x1,%edi
 a7c:	31 c0                	xor    %eax,%eax
 a7e:	e8 7d fc ff ff       	callq  700 <__printf_chk@plt>
 a83:	48 83 c4 10          	add    $0x10,%rsp
 a87:	48 89 d8             	mov    %rbx,%rax
 a8a:	5b                   	pop    %rbx
 a8b:	c3                   	retq   
 a8c:	0f 1f 40 00          	nopl   0x0(%rax)
 a90:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 a95:	e8 26 fc ff ff       	callq  6c0 <free@plt>
 a9a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 a9f:	eb bf                	jmp    a60 <del+0x40>
 aa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 aa8:	48 c7 42 10 00 00 00 	movq   $0x0,0x10(%rdx)
 aaf:	00 
 ab0:	e8 0b fc ff ff       	callq  6c0 <free@plt>
 ab5:	48 89 d8             	mov    %rbx,%rax
 ab8:	eb a6                	jmp    a60 <del+0x40>
 aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ac0 <print>:
 ac0:	55                   	push   %rbp
 ac1:	53                   	push   %rbx
 ac2:	48 83 ec 08          	sub    $0x8,%rsp
 ac6:	48 85 ff             	test   %rdi,%rdi
 ac9:	74 65                	je     b30 <print+0x70>
 acb:	48 89 fb             	mov    %rdi,%rbx
 ace:	48 8d 3d de 01 00 00 	lea    0x1de(%rip),%rdi        # cb3 <_IO_stdin_used+0x33>
 ad5:	48 8d 2d f8 01 00 00 	lea    0x1f8(%rip),%rbp        # cd4 <_IO_stdin_used+0x54>
 adc:	e8 ef fb ff ff       	callq  6d0 <puts@plt>
 ae1:	8b 15 2d 15 20 00    	mov    0x20152d(%rip),%edx        # 202014 <n>
 ae7:	48 8d 35 d2 01 00 00 	lea    0x1d2(%rip),%rsi        # cc0 <_IO_stdin_used+0x40>
 aee:	bf 01 00 00 00       	mov    $0x1,%edi
 af3:	31 c0                	xor    %eax,%eax
 af5:	e8 06 fc ff ff       	callq  700 <__printf_chk@plt>
 afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b00:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b04:	48 8b 13             	mov    (%rbx),%rdx
 b07:	48 89 ee             	mov    %rbp,%rsi
 b0a:	bf 01 00 00 00       	mov    $0x1,%edi
 b0f:	b8 01 00 00 00       	mov    $0x1,%eax
 b14:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b19:	e8 e2 fb ff ff       	callq  700 <__printf_chk@plt>
 b1e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b22:	48 85 db             	test   %rbx,%rbx
 b25:	75 d9                	jne    b00 <print+0x40>
 b27:	48 83 c4 08          	add    $0x8,%rsp
 b2b:	31 c0                	xor    %eax,%eax
 b2d:	5b                   	pop    %rbx
 b2e:	5d                   	pop    %rbp
 b2f:	c3                   	retq   
 b30:	48 8d 3d 69 01 00 00 	lea    0x169(%rip),%rdi        # ca0 <_IO_stdin_used+0x20>
 b37:	e8 94 fb ff ff       	callq  6d0 <puts@plt>
 b3c:	48 83 c4 08          	add    $0x8,%rsp
 b40:	31 c0                	xor    %eax,%eax
 b42:	5b                   	pop    %rbx
 b43:	5d                   	pop    %rbp
 b44:	c3                   	retq   
 b45:	90                   	nop
 b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b4d:	00 00 00 

0000000000000b50 <creat>:
 b50:	41 54                	push   %r12
 b52:	48 8d 3d df 01 00 00 	lea    0x1df(%rip),%rdi        # d38 <_IO_stdin_used+0xb8>
 b59:	55                   	push   %rbp
 b5a:	53                   	push   %rbx
 b5b:	31 ed                	xor    %ebp,%ebp
 b5d:	e8 6e fb ff ff       	callq  6d0 <puts@plt>
 b62:	bf 18 00 00 00       	mov    $0x18,%edi
 b67:	e8 84 fb ff ff       	callq  6f0 <malloc@plt>
 b6c:	48 8d 3d 6a 01 00 00 	lea    0x16a(%rip),%rdi        # cdd <_IO_stdin_used+0x5d>
 b73:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b77:	48 89 c3             	mov    %rax,%rbx
 b7a:	48 89 c6             	mov    %rax,%rsi
 b7d:	31 c0                	xor    %eax,%eax
 b7f:	e8 8c fb ff ff       	callq  710 <__isoc99_scanf@plt>
 b84:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b88:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 b8f:	00 
 b90:	74 48                	je     bda <creat+0x8a>
 b92:	4c 8d 25 44 01 00 00 	lea    0x144(%rip),%r12        # cdd <_IO_stdin_used+0x5d>
 b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ba0:	48 89 de             	mov    %rbx,%rsi
 ba3:	48 89 ef             	mov    %rbp,%rdi
 ba6:	e8 05 fe ff ff       	callq  9b0 <insert>
 bab:	bf 18 00 00 00       	mov    $0x18,%edi
 bb0:	48 89 c5             	mov    %rax,%rbp
 bb3:	e8 38 fb ff ff       	callq  6f0 <malloc@plt>
 bb8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 bbc:	48 89 c3             	mov    %rax,%rbx
 bbf:	48 89 c6             	mov    %rax,%rsi
 bc2:	4c 89 e7             	mov    %r12,%rdi
 bc5:	31 c0                	xor    %eax,%eax
 bc7:	e8 44 fb ff ff       	callq  710 <__isoc99_scanf@plt>
 bcc:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 bd0:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 bd7:	00 
 bd8:	75 c6                	jne    ba0 <creat+0x50>
 bda:	48 89 df             	mov    %rbx,%rdi
 bdd:	e8 de fa ff ff       	callq  6c0 <free@plt>
 be2:	48 8d 3d f9 00 00 00 	lea    0xf9(%rip),%rdi        # ce2 <_IO_stdin_used+0x62>
 be9:	e8 e2 fa ff ff       	callq  6d0 <puts@plt>
 bee:	48 89 e8             	mov    %rbp,%rax
 bf1:	5b                   	pop    %rbx
 bf2:	5d                   	pop    %rbp
 bf3:	41 5c                	pop    %r12
 bf5:	c3                   	retq   
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 

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
