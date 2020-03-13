
input/19020031079_2.elf:     file format elf64-x86-64


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
 734:	48 8d 3d e5 05 00 00 	lea    0x5e5(%rip),%rdi        # d20 <_IO_stdin_used+0xa0>
 73b:	41 55                	push   %r13
 73d:	41 54                	push   %r12
 73f:	4c 8d 2d 6f 05 00 00 	lea    0x56f(%rip),%r13        # cb5 <_IO_stdin_used+0x35>
 746:	55                   	push   %rbp
 747:	53                   	push   %rbx
 748:	4c 8d 25 80 05 00 00 	lea    0x580(%rip),%r12        # ccf <_IO_stdin_used+0x4f>
 74f:	48 8d 2d 8e 05 00 00 	lea    0x58e(%rip),%rbp        # ce4 <_IO_stdin_used+0x64>
 756:	48 83 ec 38          	sub    $0x38,%rsp
 75a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 761:	00 00 
 763:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 768:	31 c0                	xor    %eax,%eax
 76a:	e8 61 ff ff ff       	callq  6d0 <puts@plt>
 76f:	e8 3c 02 00 00       	callq  9b0 <creat>
 774:	48 89 c7             	mov    %rax,%rdi
 777:	48 89 c3             	mov    %rax,%rbx
 77a:	4c 8d 74 24 1c       	lea    0x1c(%rsp),%r14
 77f:	e8 fc 02 00 00       	callq  a80 <print>
 784:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 789:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 78e:	66 90                	xchg   %ax,%ax
 790:	4c 89 ef             	mov    %r13,%rdi
 793:	e8 38 ff ff ff       	callq  6d0 <puts@plt>
 798:	4c 89 e6             	mov    %r12,%rsi
 79b:	bf 01 00 00 00       	mov    $0x1,%edi
 7a0:	31 c0                	xor    %eax,%eax
 7a2:	e8 59 ff ff ff       	callq  700 <__printf_chk@plt>
 7a7:	31 c0                	xor    %eax,%eax
 7a9:	4c 89 f6             	mov    %r14,%rsi
 7ac:	48 89 ef             	mov    %rbp,%rdi
 7af:	e8 5c ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7b4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 7b8:	85 c0                	test   %eax,%eax
 7ba:	0f 84 b0 00 00 00    	je     870 <main+0x140>
 7c0:	83 f8 01             	cmp    $0x1,%eax
 7c3:	74 5b                	je     820 <main+0xf0>
 7c5:	83 f8 02             	cmp    $0x2,%eax
 7c8:	75 c6                	jne    790 <main+0x60>
 7ca:	48 8d 35 16 05 00 00 	lea    0x516(%rip),%rsi        # ce7 <_IO_stdin_used+0x67>
 7d1:	bf 01 00 00 00       	mov    $0x1,%edi
 7d6:	31 c0                	xor    %eax,%eax
 7d8:	e8 23 ff ff ff       	callq  700 <__printf_chk@plt>
 7dd:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 7e2:	48 8d 3d 13 05 00 00 	lea    0x513(%rip),%rdi        # cfc <_IO_stdin_used+0x7c>
 7e9:	31 c0                	xor    %eax,%eax
 7eb:	e8 20 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7f0:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 7f5:	48 89 df             	mov    %rbx,%rdi
 7f8:	e8 73 03 00 00       	callq  b70 <delete>
 7fd:	48 89 c3             	mov    %rax,%rbx
 800:	8b 05 0e 18 20 00    	mov    0x20180e(%rip),%eax        # 202014 <n>
 806:	85 c0                	test   %eax,%eax
 808:	74 86                	je     790 <main+0x60>
 80a:	48 89 df             	mov    %rbx,%rdi
 80d:	e8 6e 02 00 00       	callq  a80 <print>
 812:	e9 79 ff ff ff       	jmpq   790 <main+0x60>
 817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 81e:	00 00 
 820:	48 8d 35 21 05 00 00 	lea    0x521(%rip),%rsi        # d48 <_IO_stdin_used+0xc8>
 827:	bf 01 00 00 00       	mov    $0x1,%edi
 82c:	31 c0                	xor    %eax,%eax
 82e:	e8 cd fe ff ff       	callq  700 <__printf_chk@plt>
 833:	bf 18 00 00 00       	mov    $0x18,%edi
 838:	e8 b3 fe ff ff       	callq  6f0 <malloc@plt>
 83d:	48 8d 3d 40 04 00 00 	lea    0x440(%rip),%rdi        # c84 <_IO_stdin_used+0x4>
 844:	48 8d 50 08          	lea    0x8(%rax),%rdx
 848:	49 89 c7             	mov    %rax,%r15
 84b:	48 89 c6             	mov    %rax,%rsi
 84e:	31 c0                	xor    %eax,%eax
 850:	e8 bb fe ff ff       	callq  710 <__isoc99_scanf@plt>
 855:	48 89 df             	mov    %rbx,%rdi
 858:	4c 89 fe             	mov    %r15,%rsi
 85b:	e8 80 02 00 00       	callq  ae0 <insert>
 860:	48 89 c7             	mov    %rax,%rdi
 863:	48 89 c3             	mov    %rax,%rbx
 866:	e8 15 02 00 00       	callq  a80 <print>
 86b:	e9 20 ff ff ff       	jmpq   790 <main+0x60>
 870:	31 c0                	xor    %eax,%eax
 872:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 877:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 87e:	00 00 
 880:	75 0f                	jne    891 <main+0x161>
 882:	48 83 c4 38          	add    $0x38,%rsp
 886:	5b                   	pop    %rbx
 887:	5d                   	pop    %rbp
 888:	41 5c                	pop    %r12
 88a:	41 5d                	pop    %r13
 88c:	41 5e                	pop    %r14
 88e:	41 5f                	pop    %r15
 890:	c3                   	retq   
 891:	e8 4a fe ff ff       	callq  6e0 <__stack_chk_fail@plt>
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 

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

00000000000009b0 <creat>:
 9b0:	41 57                	push   %r15
 9b2:	41 56                	push   %r14
 9b4:	bf 18 00 00 00       	mov    $0x18,%edi
 9b9:	41 55                	push   %r13
 9bb:	41 54                	push   %r12
 9bd:	55                   	push   %rbp
 9be:	53                   	push   %rbx
 9bf:	48 83 ec 08          	sub    $0x8,%rsp
 9c3:	e8 28 fd ff ff       	callq  6f0 <malloc@plt>
 9c8:	48 8d 3d b5 02 00 00 	lea    0x2b5(%rip),%rdi        # c84 <_IO_stdin_used+0x4>
 9cf:	48 8d 50 08          	lea    0x8(%rax),%rdx
 9d3:	49 89 c4             	mov    %rax,%r12
 9d6:	48 89 c6             	mov    %rax,%rsi
 9d9:	31 c0                	xor    %eax,%eax
 9db:	4c 89 e5             	mov    %r12,%rbp
 9de:	e8 2d fd ff ff       	callq  710 <__isoc99_scanf@plt>
 9e3:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 9e8:	74 66                	je     a50 <creat+0xa0>
 9ea:	45 31 f6             	xor    %r14d,%r14d
 9ed:	4c 8d 2d 90 02 00 00 	lea    0x290(%rip),%r13        # c84 <_IO_stdin_used+0x4>
 9f4:	eb 3c                	jmp    a32 <creat+0x82>
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 
 a00:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 a05:	bf 18 00 00 00       	mov    $0x18,%edi
 a0a:	49 89 ec             	mov    %rbp,%r12
 a0d:	e8 de fc ff ff       	callq  6f0 <malloc@plt>
 a12:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a16:	48 89 c3             	mov    %rax,%rbx
 a19:	48 89 c6             	mov    %rax,%rsi
 a1c:	49 89 c7             	mov    %rax,%r15
 a1f:	4c 89 ef             	mov    %r13,%rdi
 a22:	31 c0                	xor    %eax,%eax
 a24:	e8 e7 fc ff ff       	callq  710 <__isoc99_scanf@plt>
 a29:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a2d:	74 27                	je     a56 <creat+0xa6>
 a2f:	48 89 dd             	mov    %rbx,%rbp
 a32:	8b 05 dc 15 20 00    	mov    0x2015dc(%rip),%eax        # 202014 <n>
 a38:	83 c0 01             	add    $0x1,%eax
 a3b:	83 f8 01             	cmp    $0x1,%eax
 a3e:	89 05 d0 15 20 00    	mov    %eax,0x2015d0(%rip)        # 202014 <n>
 a44:	75 ba                	jne    a00 <creat+0x50>
 a46:	49 89 ee             	mov    %rbp,%r14
 a49:	eb ba                	jmp    a05 <creat+0x55>
 a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a50:	4d 89 e7             	mov    %r12,%r15
 a53:	45 31 f6             	xor    %r14d,%r14d
 a56:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 a5d:	00 
 a5e:	4c 89 ff             	mov    %r15,%rdi
 a61:	e8 5a fc ff ff       	callq  6c0 <free@plt>
 a66:	48 83 c4 08          	add    $0x8,%rsp
 a6a:	4c 89 f0             	mov    %r14,%rax
 a6d:	5b                   	pop    %rbx
 a6e:	5d                   	pop    %rbp
 a6f:	41 5c                	pop    %r12
 a71:	41 5d                	pop    %r13
 a73:	41 5e                	pop    %r14
 a75:	41 5f                	pop    %r15
 a77:	c3                   	retq   
 a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a7f:	00 

0000000000000a80 <print>:
 a80:	55                   	push   %rbp
 a81:	53                   	push   %rbx
 a82:	48 8d 35 77 02 00 00 	lea    0x277(%rip),%rsi        # d00 <_IO_stdin_used+0x80>
 a89:	48 89 fb             	mov    %rdi,%rbx
 a8c:	31 c0                	xor    %eax,%eax
 a8e:	bf 01 00 00 00       	mov    $0x1,%edi
 a93:	48 83 ec 08          	sub    $0x8,%rsp
 a97:	8b 15 77 15 20 00    	mov    0x201577(%rip),%edx        # 202014 <n>
 a9d:	e8 5e fc ff ff       	callq  700 <__printf_chk@plt>
 aa2:	48 85 db             	test   %rbx,%rbx
 aa5:	74 30                	je     ad7 <print+0x57>
 aa7:	48 8d 2d dd 01 00 00 	lea    0x1dd(%rip),%rbp        # c8b <_IO_stdin_used+0xb>
 aae:	66 90                	xchg   %ax,%ax
 ab0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 ab4:	48 8b 13             	mov    (%rbx),%rdx
 ab7:	48 89 ee             	mov    %rbp,%rsi
 aba:	bf 01 00 00 00       	mov    $0x1,%edi
 abf:	b8 01 00 00 00       	mov    $0x1,%eax
 ac4:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 ac9:	e8 32 fc ff ff       	callq  700 <__printf_chk@plt>
 ace:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 ad2:	48 85 db             	test   %rbx,%rbx
 ad5:	75 d9                	jne    ab0 <print+0x30>
 ad7:	48 83 c4 08          	add    $0x8,%rsp
 adb:	5b                   	pop    %rbx
 adc:	5d                   	pop    %rbp
 add:	c3                   	retq   
 ade:	66 90                	xchg   %ax,%ax

0000000000000ae0 <insert>:
 ae0:	48 85 ff             	test   %rdi,%rdi
 ae3:	74 5b                	je     b40 <insert+0x60>
 ae5:	4c 8b 06             	mov    (%rsi),%r8
 ae8:	48 89 fa             	mov    %rdi,%rdx
 aeb:	eb 12                	jmp    aff <insert+0x1f>
 aed:	0f 1f 00             	nopl   (%rax)
 af0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 af4:	49 89 d1             	mov    %rdx,%r9
 af7:	48 85 c9             	test   %rcx,%rcx
 afa:	74 24                	je     b20 <insert+0x40>
 afc:	48 89 ca             	mov    %rcx,%rdx
 aff:	4c 3b 02             	cmp    (%rdx),%r8
 b02:	7f ec                	jg     af0 <insert+0x10>
 b04:	48 39 fa             	cmp    %rdi,%rdx
 b07:	74 4f                	je     b58 <insert+0x78>
 b09:	49 89 71 10          	mov    %rsi,0x10(%r9)
 b0d:	48 89 f8             	mov    %rdi,%rax
 b10:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b14:	83 05 f9 14 20 00 01 	addl   $0x1,0x2014f9(%rip)        # 202014 <n>
 b1b:	c3                   	retq   
 b1c:	0f 1f 40 00          	nopl   0x0(%rax)
 b20:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b24:	48 89 f8             	mov    %rdi,%rax
 b27:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b2e:	00 
 b2f:	83 05 de 14 20 00 01 	addl   $0x1,0x2014de(%rip)        # 202014 <n>
 b36:	c3                   	retq   
 b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b3e:	00 00 
 b40:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b47:	00 
 b48:	48 89 f0             	mov    %rsi,%rax
 b4b:	83 05 c2 14 20 00 01 	addl   $0x1,0x2014c2(%rip)        # 202014 <n>
 b52:	c3                   	retq   
 b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b58:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b5c:	48 89 f0             	mov    %rsi,%rax
 b5f:	83 05 ae 14 20 00 01 	addl   $0x1,0x2014ae(%rip)        # 202014 <n>
 b66:	c3                   	retq   
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 

0000000000000b70 <delete>:
 b70:	55                   	push   %rbp
 b71:	53                   	push   %rbx
 b72:	48 89 fd             	mov    %rdi,%rbp
 b75:	48 89 f8             	mov    %rdi,%rax
 b78:	48 83 ec 08          	sub    $0x8,%rsp
 b7c:	48 85 ff             	test   %rdi,%rdi
 b7f:	75 12                	jne    b93 <delete+0x23>
 b81:	eb 6c                	jmp    bef <delete+0x7f>
 b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b88:	48 85 db             	test   %rbx,%rbx
 b8b:	48 89 c2             	mov    %rax,%rdx
 b8e:	74 48                	je     bd8 <delete+0x68>
 b90:	48 89 d8             	mov    %rbx,%rax
 b93:	48 39 30             	cmp    %rsi,(%rax)
 b96:	48 8b 58 10          	mov    0x10(%rax),%rbx
 b9a:	75 ec                	jne    b88 <delete+0x18>
 b9c:	48 39 e8             	cmp    %rbp,%rax
 b9f:	74 07                	je     ba8 <delete+0x38>
 ba1:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
 ba5:	48 89 eb             	mov    %rbp,%rbx
 ba8:	8b 05 66 14 20 00    	mov    0x201466(%rip),%eax        # 202014 <n>
 bae:	83 e8 01             	sub    $0x1,%eax
 bb1:	89 05 5d 14 20 00    	mov    %eax,0x20145d(%rip)        # 202014 <n>
 bb7:	85 c0                	test   %eax,%eax
 bb9:	75 0c                	jne    bc7 <delete+0x57>
 bbb:	48 8d 3d d4 00 00 00 	lea    0xd4(%rip),%rdi        # c96 <_IO_stdin_used+0x16>
 bc2:	e8 09 fb ff ff       	callq  6d0 <puts@plt>
 bc7:	48 83 c4 08          	add    $0x8,%rsp
 bcb:	48 89 d8             	mov    %rbx,%rax
 bce:	5b                   	pop    %rbx
 bcf:	5d                   	pop    %rbp
 bd0:	c3                   	retq   
 bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bd8:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # ca4 <_IO_stdin_used+0x24>
 bdf:	48 89 eb             	mov    %rbp,%rbx
 be2:	e8 e9 fa ff ff       	callq  6d0 <puts@plt>
 be7:	8b 05 27 14 20 00    	mov    0x201427(%rip),%eax        # 202014 <n>
 bed:	eb c8                	jmp    bb7 <delete+0x47>
 bef:	48 8d 3d a0 00 00 00 	lea    0xa0(%rip),%rdi        # c96 <_IO_stdin_used+0x16>
 bf6:	31 db                	xor    %ebx,%ebx
 bf8:	e8 d3 fa ff ff       	callq  6d0 <puts@plt>
 bfd:	eb c8                	jmp    bc7 <delete+0x57>
 bff:	90                   	nop

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
