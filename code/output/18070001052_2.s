
input/18070001052_2.elf:     file format elf64-x86-64


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
 710:	41 57                	push   %r15
 712:	41 56                	push   %r14
 714:	48 8d 3d 95 05 00 00 	lea    0x595(%rip),%rdi        # cb0 <_IO_stdin_used+0x80>
 71b:	41 55                	push   %r13
 71d:	41 54                	push   %r12
 71f:	4c 8d 35 e2 05 00 00 	lea    0x5e2(%rip),%r14        # d08 <_IO_stdin_used+0xd8>
 726:	55                   	push   %rbp
 727:	53                   	push   %rbx
 728:	48 8d 2d a9 05 00 00 	lea    0x5a9(%rip),%rbp        # cd8 <_IO_stdin_used+0xa8>
 72f:	48 8d 1d 53 05 00 00 	lea    0x553(%rip),%rbx        # c89 <_IO_stdin_used+0x59>
 736:	48 83 ec 28          	sub    $0x28,%rsp
 73a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 741:	00 00 
 743:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 748:	31 c0                	xor    %eax,%eax
 74a:	e8 61 ff ff ff       	callq  6b0 <puts@plt>
 74f:	48 8d 3d 18 05 00 00 	lea    0x518(%rip),%rdi        # c6e <_IO_stdin_used+0x3e>
 756:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 75b:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 760:	e8 4b ff ff ff       	callq  6b0 <puts@plt>
 765:	e8 d6 02 00 00       	callq  a40 <create>
 76a:	48 89 c7             	mov    %rax,%rdi
 76d:	48 89 05 a4 18 20 00 	mov    %rax,0x2018a4(%rip)        # 202018 <head.3127>
 774:	e8 c7 03 00 00       	callq  b40 <printing>
 779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 780:	48 89 ef             	mov    %rbp,%rdi
 783:	e8 28 ff ff ff       	callq  6b0 <puts@plt>
 788:	31 c0                	xor    %eax,%eax
 78a:	4c 89 e6             	mov    %r12,%rsi
 78d:	48 89 df             	mov    %rbx,%rdi
 790:	e8 5b ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 795:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 799:	85 c0                	test   %eax,%eax
 79b:	0f 84 cf 00 00 00    	je     870 <main+0x160>
 7a1:	83 f8 01             	cmp    $0x1,%eax
 7a4:	74 52                	je     7f8 <main+0xe8>
 7a6:	83 f8 02             	cmp    $0x2,%eax
 7a9:	75 d5                	jne    780 <main+0x70>
 7ab:	48 8d 35 e4 04 00 00 	lea    0x4e4(%rip),%rsi        # c96 <_IO_stdin_used+0x66>
 7b2:	bf 01 00 00 00       	mov    $0x1,%edi
 7b7:	31 c0                	xor    %eax,%eax
 7b9:	e8 22 ff ff ff       	callq  6e0 <__printf_chk@plt>
 7be:	48 8d 3d e7 04 00 00 	lea    0x4e7(%rip),%rdi        # cac <_IO_stdin_used+0x7c>
 7c5:	4c 89 ee             	mov    %r13,%rsi
 7c8:	31 c0                	xor    %eax,%eax
 7ca:	e8 21 ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 7cf:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7d4:	48 8b 3d 3d 18 20 00 	mov    0x20183d(%rip),%rdi        # 202018 <head.3127>
 7db:	e8 f0 02 00 00       	callq  ad0 <deleting>
 7e0:	48 89 c7             	mov    %rax,%rdi
 7e3:	48 89 05 2e 18 20 00 	mov    %rax,0x20182e(%rip)        # 202018 <head.3127>
 7ea:	e8 51 03 00 00       	callq  b40 <printing>
 7ef:	eb 8f                	jmp    780 <main+0x70>
 7f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7f8:	bf 18 00 00 00       	mov    $0x18,%edi
 7fd:	e8 ce fe ff ff       	callq  6d0 <malloc@plt>
 802:	4c 89 f6             	mov    %r14,%rsi
 805:	49 89 c7             	mov    %rax,%r15
 808:	bf 01 00 00 00       	mov    $0x1,%edi
 80d:	31 c0                	xor    %eax,%eax
 80f:	e8 cc fe ff ff       	callq  6e0 <__printf_chk@plt>
 814:	49 8d 57 08          	lea    0x8(%r15),%rdx
 818:	48 8d 3d 15 04 00 00 	lea    0x415(%rip),%rdi        # c34 <_IO_stdin_used+0x4>
 81f:	4c 89 fe             	mov    %r15,%rsi
 822:	31 c0                	xor    %eax,%eax
 824:	e8 c7 fe ff ff       	callq  6f0 <__isoc99_scanf@plt>
 829:	48 8b 3d e8 17 20 00 	mov    0x2017e8(%rip),%rdi        # 202018 <head.3127>
 830:	4c 89 fe             	mov    %r15,%rsi
 833:	e8 78 01 00 00       	callq  9b0 <insert>
 838:	49 8b 17             	mov    (%r15),%rdx
 83b:	48 8d 35 4a 04 00 00 	lea    0x44a(%rip),%rsi        # c8c <_IO_stdin_used+0x5c>
 842:	48 89 05 cf 17 20 00 	mov    %rax,0x2017cf(%rip)        # 202018 <head.3127>
 849:	bf 01 00 00 00       	mov    $0x1,%edi
 84e:	31 c0                	xor    %eax,%eax
 850:	e8 8b fe ff ff       	callq  6e0 <__printf_chk@plt>
 855:	48 8b 3d bc 17 20 00 	mov    0x2017bc(%rip),%rdi        # 202018 <head.3127>
 85c:	e8 df 02 00 00       	callq  b40 <printing>
 861:	e9 1a ff ff ff       	jmpq   780 <main+0x70>
 866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 86d:	00 00 00 
 870:	31 c0                	xor    %eax,%eax
 872:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 877:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 87e:	00 00 
 880:	75 0f                	jne    891 <main+0x181>
 882:	48 83 c4 28          	add    $0x28,%rsp
 886:	5b                   	pop    %rbx
 887:	5d                   	pop    %rbp
 888:	41 5c                	pop    %r12
 88a:	41 5d                	pop    %r13
 88c:	41 5e                	pop    %r14
 88e:	41 5f                	pop    %r15
 890:	c3                   	retq   
 891:	e8 2a fe ff ff       	callq  6c0 <__stack_chk_fail@plt>
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
 8af:	4c 8d 05 6a 03 00 00 	lea    0x36a(%rip),%r8        # c20 <__libc_csu_fini>
 8b6:	48 8d 0d f3 02 00 00 	lea    0x2f3(%rip),%rcx        # bb0 <__libc_csu_init>
 8bd:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 710 <main>
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
 97e:	e8 7d fd ff ff       	callq  700 <__cxa_finalize@plt>
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
 9bb:	eb 12                	jmp    9cf <insert+0x1f>
 9bd:	0f 1f 00             	nopl   (%rax)
 9c0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9c4:	49 89 d1             	mov    %rdx,%r9
 9c7:	48 85 c9             	test   %rcx,%rcx
 9ca:	74 24                	je     9f0 <insert+0x40>
 9cc:	48 89 ca             	mov    %rcx,%rdx
 9cf:	4c 3b 02             	cmp    (%rdx),%r8
 9d2:	7f ec                	jg     9c0 <insert+0x10>
 9d4:	48 39 fa             	cmp    %rdi,%rdx
 9d7:	74 4f                	je     a28 <insert+0x78>
 9d9:	49 89 71 10          	mov    %rsi,0x10(%r9)
 9dd:	48 89 f8             	mov    %rdi,%rax
 9e0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9e4:	83 05 3d 16 20 00 01 	addl   $0x1,0x20163d(%rip)        # 202028 <count>
 9eb:	c3                   	retq   
 9ec:	0f 1f 40 00          	nopl   0x0(%rax)
 9f0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 9f4:	48 89 f8             	mov    %rdi,%rax
 9f7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9fe:	00 
 9ff:	83 05 22 16 20 00 01 	addl   $0x1,0x201622(%rip)        # 202028 <count>
 a06:	c3                   	retq   
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a17:	00 
 a18:	48 89 f0             	mov    %rsi,%rax
 a1b:	83 05 06 16 20 00 01 	addl   $0x1,0x201606(%rip)        # 202028 <count>
 a22:	c3                   	retq   
 a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a28:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a2c:	48 89 f0             	mov    %rsi,%rax
 a2f:	83 05 f2 15 20 00 01 	addl   $0x1,0x2015f2(%rip)        # 202028 <count>
 a36:	c3                   	retq   
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 

0000000000000a40 <create>:
 a40:	55                   	push   %rbp
 a41:	53                   	push   %rbx
 a42:	bf 18 00 00 00       	mov    $0x18,%edi
 a47:	48 83 ec 08          	sub    $0x8,%rsp
 a4b:	e8 80 fc ff ff       	callq  6d0 <malloc@plt>
 a50:	48 8d 3d dd 01 00 00 	lea    0x1dd(%rip),%rdi        # c34 <_IO_stdin_used+0x4>
 a57:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a5b:	48 89 c3             	mov    %rax,%rbx
 a5e:	48 89 c6             	mov    %rax,%rsi
 a61:	31 c0                	xor    %eax,%eax
 a63:	e8 88 fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 a68:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a6c:	74 44                	je     ab2 <create+0x72>
 a6e:	48 8d 2d bf 01 00 00 	lea    0x1bf(%rip),%rbp        # c34 <_IO_stdin_used+0x4>
 a75:	0f 1f 00             	nopl   (%rax)
 a78:	48 8b 3d a1 15 20 00 	mov    0x2015a1(%rip),%rdi        # 202020 <head.3105>
 a7f:	48 89 de             	mov    %rbx,%rsi
 a82:	e8 29 ff ff ff       	callq  9b0 <insert>
 a87:	bf 18 00 00 00       	mov    $0x18,%edi
 a8c:	48 89 05 8d 15 20 00 	mov    %rax,0x20158d(%rip)        # 202020 <head.3105>
 a93:	e8 38 fc ff ff       	callq  6d0 <malloc@plt>
 a98:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a9c:	48 89 c3             	mov    %rax,%rbx
 a9f:	48 89 c6             	mov    %rax,%rsi
 aa2:	48 89 ef             	mov    %rbp,%rdi
 aa5:	31 c0                	xor    %eax,%eax
 aa7:	e8 44 fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 aac:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ab0:	75 c6                	jne    a78 <create+0x38>
 ab2:	48 89 df             	mov    %rbx,%rdi
 ab5:	e8 e6 fb ff ff       	callq  6a0 <free@plt>
 aba:	48 8b 05 5f 15 20 00 	mov    0x20155f(%rip),%rax        # 202020 <head.3105>
 ac1:	48 83 c4 08          	add    $0x8,%rsp
 ac5:	5b                   	pop    %rbx
 ac6:	5d                   	pop    %rbp
 ac7:	c3                   	retq   
 ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 acf:	00 

0000000000000ad0 <deleting>:
 ad0:	48 85 ff             	test   %rdi,%rdi
 ad3:	74 4e                	je     b23 <deleting+0x53>
 ad5:	48 3b 37             	cmp    (%rdi),%rsi
 ad8:	8b 05 4a 15 20 00    	mov    0x20154a(%rip),%eax        # 202028 <count>
 ade:	48 89 f9             	mov    %rdi,%rcx
 ae1:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
 ae5:	48 8b 47 10          	mov    0x10(%rdi),%rax
 ae9:	75 0b                	jne    af6 <deleting+0x26>
 aeb:	eb 2e                	jmp    b1b <deleting+0x4b>
 aed:	0f 1f 00             	nopl   (%rax)
 af0:	48 89 c1             	mov    %rax,%rcx
 af3:	48 89 d0             	mov    %rdx,%rax
 af6:	48 39 30             	cmp    %rsi,(%rax)
 af9:	48 8b 50 10          	mov    0x10(%rax),%rdx
 afd:	75 f1                	jne    af0 <deleting+0x20>
 aff:	48 39 c7             	cmp    %rax,%rdi
 b02:	74 14                	je     b18 <deleting+0x48>
 b04:	48 89 51 10          	mov    %rdx,0x10(%rcx)
 b08:	44 89 05 19 15 20 00 	mov    %r8d,0x201519(%rip)        # 202028 <count>
 b0f:	48 89 f8             	mov    %rdi,%rax
 b12:	c3                   	retq   
 b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b18:	48 89 d0             	mov    %rdx,%rax
 b1b:	44 89 05 06 15 20 00 	mov    %r8d,0x201506(%rip)        # 202028 <count>
 b22:	c3                   	retq   
 b23:	48 8d 3d 12 01 00 00 	lea    0x112(%rip),%rdi        # c3c <_IO_stdin_used+0xc>
 b2a:	48 83 ec 08          	sub    $0x8,%rsp
 b2e:	e8 7d fb ff ff       	callq  6b0 <puts@plt>
 b33:	31 c0                	xor    %eax,%eax
 b35:	48 83 c4 08          	add    $0x8,%rsp
 b39:	c3                   	retq   
 b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b40 <printing>:
 b40:	48 85 ff             	test   %rdi,%rdi
 b43:	74 5b                	je     ba0 <printing+0x60>
 b45:	55                   	push   %rbp
 b46:	53                   	push   %rbx
 b47:	48 8d 35 00 01 00 00 	lea    0x100(%rip),%rsi        # c4e <_IO_stdin_used+0x1e>
 b4e:	48 8d 2d 0b 01 00 00 	lea    0x10b(%rip),%rbp        # c60 <_IO_stdin_used+0x30>
 b55:	48 89 fb             	mov    %rdi,%rbx
 b58:	31 c0                	xor    %eax,%eax
 b5a:	48 83 ec 08          	sub    $0x8,%rsp
 b5e:	8b 15 c4 14 20 00    	mov    0x2014c4(%rip),%edx        # 202028 <count>
 b64:	bf 01 00 00 00       	mov    $0x1,%edi
 b69:	e8 72 fb ff ff       	callq  6e0 <__printf_chk@plt>
 b6e:	66 90                	xchg   %ax,%ax
 b70:	48 8b 13             	mov    (%rbx),%rdx
 b73:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
 b78:	48 89 ee             	mov    %rbp,%rsi
 b7b:	bf 01 00 00 00       	mov    $0x1,%edi
 b80:	b8 01 00 00 00       	mov    $0x1,%eax
 b85:	e8 56 fb ff ff       	callq  6e0 <__printf_chk@plt>
 b8a:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b8e:	48 85 db             	test   %rbx,%rbx
 b91:	75 dd                	jne    b70 <printing+0x30>
 b93:	48 83 c4 08          	add    $0x8,%rsp
 b97:	5b                   	pop    %rbx
 b98:	5d                   	pop    %rbp
 b99:	c3                   	retq   
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ba0:	48 8d 3d 9f 00 00 00 	lea    0x9f(%rip),%rdi        # c46 <_IO_stdin_used+0x16>
 ba7:	e9 04 fb ff ff       	jmpq   6b0 <puts@plt>
 bac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000bb0 <__libc_csu_init>:
 bb0:	41 57                	push   %r15
 bb2:	41 56                	push   %r14
 bb4:	49 89 d7             	mov    %rdx,%r15
 bb7:	41 55                	push   %r13
 bb9:	41 54                	push   %r12
 bbb:	4c 8d 25 ce 11 20 00 	lea    0x2011ce(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 bc2:	55                   	push   %rbp
 bc3:	48 8d 2d ce 11 20 00 	lea    0x2011ce(%rip),%rbp        # 201d98 <__init_array_end>
 bca:	53                   	push   %rbx
 bcb:	41 89 fd             	mov    %edi,%r13d
 bce:	49 89 f6             	mov    %rsi,%r14
 bd1:	4c 29 e5             	sub    %r12,%rbp
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 c1 fd 03          	sar    $0x3,%rbp
 bdc:	e8 8f fa ff ff       	callq  670 <_init>
 be1:	48 85 ed             	test   %rbp,%rbp
 be4:	74 20                	je     c06 <__libc_csu_init+0x56>
 be6:	31 db                	xor    %ebx,%ebx
 be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bef:	00 
 bf0:	4c 89 fa             	mov    %r15,%rdx
 bf3:	4c 89 f6             	mov    %r14,%rsi
 bf6:	44 89 ef             	mov    %r13d,%edi
 bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bfd:	48 83 c3 01          	add    $0x1,%rbx
 c01:	48 39 dd             	cmp    %rbx,%rbp
 c04:	75 ea                	jne    bf0 <__libc_csu_init+0x40>
 c06:	48 83 c4 08          	add    $0x8,%rsp
 c0a:	5b                   	pop    %rbx
 c0b:	5d                   	pop    %rbp
 c0c:	41 5c                	pop    %r12
 c0e:	41 5d                	pop    %r13
 c10:	41 5e                	pop    %r14
 c12:	41 5f                	pop    %r15
 c14:	c3                   	retq   
 c15:	90                   	nop
 c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c1d:	00 00 00 

0000000000000c20 <__libc_csu_fini>:
 c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c24 <_fini>:
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 83 c4 08          	add    $0x8,%rsp
 c2c:	c3                   	retq   
