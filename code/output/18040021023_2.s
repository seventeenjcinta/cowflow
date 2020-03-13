
input/18040021023_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006e8 <_init>:
 6e8:	48 83 ec 08          	sub    $0x8,%rsp
 6ec:	48 8b 05 f5 18 20 00 	mov    0x2018f5(%rip),%rax        # 201fe8 <__gmon_start__>
 6f3:	48 85 c0             	test   %rax,%rax
 6f6:	74 02                	je     6fa <_init+0x12>
 6f8:	ff d0                	callq  *%rax
 6fa:	48 83 c4 08          	add    $0x8,%rsp
 6fe:	c3                   	retq   

Disassembly of section .plt:

0000000000000700 <.plt>:
 700:	ff 35 8a 18 20 00    	pushq  0x20188a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 706:	ff 25 8c 18 20 00    	jmpq   *0x20188c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 70c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000710 <free@plt>:
 710:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 716:	68 00 00 00 00       	pushq  $0x0
 71b:	e9 e0 ff ff ff       	jmpq   700 <.plt>

0000000000000720 <puts@plt>:
 720:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 726:	68 01 00 00 00       	pushq  $0x1
 72b:	e9 d0 ff ff ff       	jmpq   700 <.plt>

0000000000000730 <__stack_chk_fail@plt>:
 730:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 736:	68 02 00 00 00       	pushq  $0x2
 73b:	e9 c0 ff ff ff       	jmpq   700 <.plt>

0000000000000740 <malloc@plt>:
 740:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <_IO_getc@plt>:
 750:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 756:	68 04 00 00 00       	pushq  $0x4
 75b:	e9 a0 ff ff ff       	jmpq   700 <.plt>

0000000000000760 <__printf_chk@plt>:
 760:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 766:	68 05 00 00 00       	pushq  $0x5
 76b:	e9 90 ff ff ff       	jmpq   700 <.plt>

0000000000000770 <__isoc99_scanf@plt>:
 770:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 776:	68 06 00 00 00       	pushq  $0x6
 77b:	e9 80 ff ff ff       	jmpq   700 <.plt>

Disassembly of section .plt.got:

0000000000000780 <__cxa_finalize@plt>:
 780:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 786:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000790 <main>:
 790:	41 55                	push   %r13
 792:	41 54                	push   %r12
 794:	48 8d 3d 27 06 00 00 	lea    0x627(%rip),%rdi        # dc2 <_IO_stdin_used+0x52>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d 93 06 00 00 	lea    0x693(%rip),%rdi        # e50 <_IO_stdin_used+0xe0>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	e8 cf 03 00 00       	callq  ba0 <create>
 7d1:	48 89 c3             	mov    %rax,%rbx
 7d4:	eb 57                	jmp    82d <main+0x9d>
 7d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7dd:	00 00 00 
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 47 06 00 00 	lea    0x647(%rip),%rsi        # e33 <_IO_stdin_used+0xc3>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d 46 06 00 00 	lea    0x646(%rip),%rdi        # e45 <_IO_stdin_used+0xd5>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 0a 04 00 00       	callq  c20 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 ff 01 00 00       	callq  a20 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 bf 00 00 00    	je     8ec <main+0x15c>
 82d:	48 8d 3d a6 05 00 00 	lea    0x5a6(%rip),%rdi        # dda <_IO_stdin_used+0x6a>
 834:	e8 e7 fe ff ff       	callq  720 <puts@plt>
 839:	48 8d 35 b6 05 00 00 	lea    0x5b6(%rip),%rsi        # df6 <_IO_stdin_used+0x86>
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 84e:	ff 
 84f:	e8 0c ff ff ff       	callq  760 <__printf_chk@plt>
 854:	48 8d 3d aa 05 00 00 	lea    0x5aa(%rip),%rdi        # e05 <_IO_stdin_used+0x95>
 85b:	4c 89 e6             	mov    %r12,%rsi
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 0b ff ff ff       	callq  770 <__isoc99_scanf@plt>
 865:	48 8b 3d a4 17 20 00 	mov    0x2017a4(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 86c:	e8 df fe ff ff       	callq  750 <_IO_getc@plt>
 871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 875:	83 f8 01             	cmp    $0x1,%eax
 878:	0f 85 62 ff ff ff    	jne    7e0 <main+0x50>
 87e:	48 8d 35 83 05 00 00 	lea    0x583(%rip),%rsi        # e08 <_IO_stdin_used+0x98>
 885:	bf 01 00 00 00       	mov    $0x1,%edi
 88a:	31 c0                	xor    %eax,%eax
 88c:	e8 cf fe ff ff       	callq  760 <__printf_chk@plt>
 891:	bf 18 00 00 00       	mov    $0x18,%edi
 896:	e8 a5 fe ff ff       	callq  740 <malloc@plt>
 89b:	48 8d 3d 08 05 00 00 	lea    0x508(%rip),%rdi        # daa <_IO_stdin_used+0x3a>
 8a2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a6:	48 89 c5             	mov    %rax,%rbp
 8a9:	48 89 c6             	mov    %rax,%rsi
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	e8 bd fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8b3:	48 89 df             	mov    %rbx,%rdi
 8b6:	48 89 ee             	mov    %rbp,%rsi
 8b9:	e8 e2 01 00 00       	callq  aa0 <insert>
 8be:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8c2:	48 8d 35 5b 05 00 00 	lea    0x55b(%rip),%rsi        # e24 <_IO_stdin_used+0xb4>
 8c9:	48 89 c3             	mov    %rax,%rbx
 8cc:	bf 01 00 00 00       	mov    $0x1,%edi
 8d1:	31 c0                	xor    %eax,%eax
 8d3:	e8 88 fe ff ff       	callq  760 <__printf_chk@plt>
 8d8:	48 89 df             	mov    %rbx,%rdi
 8db:	e8 40 01 00 00       	callq  a20 <print>
 8e0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8e4:	85 c0                	test   %eax,%eax
 8e6:	0f 85 41 ff ff ff    	jne    82d <main+0x9d>
 8ec:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8f1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8f8:	00 00 
 8fa:	75 0b                	jne    907 <main+0x177>
 8fc:	48 83 c4 28          	add    $0x28,%rsp
 900:	5b                   	pop    %rbx
 901:	5d                   	pop    %rbp
 902:	41 5c                	pop    %r12
 904:	41 5d                	pop    %r13
 906:	c3                   	retq   
 907:	e8 24 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 90c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000910 <_start>:
 910:	31 ed                	xor    %ebp,%ebp
 912:	49 89 d1             	mov    %rdx,%r9
 915:	5e                   	pop    %rsi
 916:	48 89 e2             	mov    %rsp,%rdx
 919:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 91d:	50                   	push   %rax
 91e:	54                   	push   %rsp
 91f:	4c 8d 05 3a 04 00 00 	lea    0x43a(%rip),%r8        # d60 <__libc_csu_fini>
 926:	48 8d 0d c3 03 00 00 	lea    0x3c3(%rip),%rcx        # cf0 <__libc_csu_init>
 92d:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 790 <main>
 934:	ff 15 a6 16 20 00    	callq  *0x2016a6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 93a:	f4                   	hlt    
 93b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000940 <deregister_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    0x2016c9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 947:	55                   	push   %rbp
 948:	48 8d 05 c1 16 20 00 	lea    0x2016c1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
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
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 987:	48 8d 35 82 16 20 00 	lea    0x201682(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
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
 9d0:	80 3d 41 16 20 00 00 	cmpb   $0x0,0x201641(%rip)        # 202018 <completed.7698>
 9d7:	75 2f                	jne    a08 <__do_global_dtors_aux+0x38>
 9d9:	48 83 3d 17 16 20 00 	cmpq   $0x0,0x201617(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9e0:	00 
 9e1:	55                   	push   %rbp
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	74 0c                	je     9f3 <__do_global_dtors_aux+0x23>
 9e7:	48 8b 3d 1a 16 20 00 	mov    0x20161a(%rip),%rdi        # 202008 <__dso_handle>
 9ee:	e8 8d fd ff ff       	callq  780 <__cxa_finalize@plt>
 9f3:	e8 48 ff ff ff       	callq  940 <deregister_tm_clones>
 9f8:	c6 05 19 16 20 00 01 	movb   $0x1,0x201619(%rip)        # 202018 <completed.7698>
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

0000000000000a20 <print>:
 a20:	8b 15 f6 15 20 00    	mov    0x2015f6(%rip),%edx        # 20201c <n>
 a26:	41 54                	push   %r12
 a28:	48 8d 35 45 03 00 00 	lea    0x345(%rip),%rsi        # d74 <_IO_stdin_used+0x4>
 a2f:	55                   	push   %rbp
 a30:	53                   	push   %rbx
 a31:	31 c0                	xor    %eax,%eax
 a33:	48 89 fb             	mov    %rdi,%rbx
 a36:	bf 01 00 00 00       	mov    $0x1,%edi
 a3b:	e8 20 fd ff ff       	callq  760 <__printf_chk@plt>
 a40:	48 85 db             	test   %rbx,%rbx
 a43:	74 43                	je     a88 <print+0x68>
 a45:	4c 8d 25 42 03 00 00 	lea    0x342(%rip),%r12        # d8e <_IO_stdin_used+0x1e>
 a4c:	31 ed                	xor    %ebp,%ebp
 a4e:	66 90                	xchg   %ax,%ax
 a50:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a54:	48 8b 13             	mov    (%rbx),%rdx
 a57:	4c 89 e6             	mov    %r12,%rsi
 a5a:	bf 01 00 00 00       	mov    $0x1,%edi
 a5f:	b8 01 00 00 00       	mov    $0x1,%eax
 a64:	83 c5 01             	add    $0x1,%ebp
 a67:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a6c:	e8 ef fc ff ff       	callq  760 <__printf_chk@plt>
 a71:	39 2d a5 15 20 00    	cmp    %ebp,0x2015a5(%rip)        # 20201c <n>
 a77:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a7b:	75 d3                	jne    a50 <print+0x30>
 a7d:	5b                   	pop    %rbx
 a7e:	5d                   	pop    %rbp
 a7f:	41 5c                	pop    %r12
 a81:	c3                   	retq   
 a82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a88:	5b                   	pop    %rbx
 a89:	5d                   	pop    %rbp
 a8a:	41 5c                	pop    %r12
 a8c:	48 8d 35 08 03 00 00 	lea    0x308(%rip),%rsi        # d9b <_IO_stdin_used+0x2b>
 a93:	bf 01 00 00 00       	mov    $0x1,%edi
 a98:	31 c0                	xor    %eax,%eax
 a9a:	e9 c1 fc ff ff       	jmpq   760 <__printf_chk@plt>
 a9f:	90                   	nop

0000000000000aa0 <insert>:
 aa0:	41 57                	push   %r15
 aa2:	41 56                	push   %r14
 aa4:	41 55                	push   %r13
 aa6:	41 54                	push   %r12
 aa8:	55                   	push   %rbp
 aa9:	53                   	push   %rbx
 aaa:	48 89 fd             	mov    %rdi,%rbp
 aad:	bf 18 00 00 00       	mov    $0x18,%edi
 ab2:	48 83 ec 08          	sub    $0x8,%rsp
 ab6:	e8 85 fc ff ff       	callq  740 <malloc@plt>
 abb:	48 8d 3d e8 02 00 00 	lea    0x2e8(%rip),%rdi        # daa <_IO_stdin_used+0x3a>
 ac2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 ac6:	48 89 c3             	mov    %rax,%rbx
 ac9:	48 89 c6             	mov    %rax,%rsi
 acc:	31 c0                	xor    %eax,%eax
 ace:	e8 9d fc ff ff       	callq  770 <__isoc99_scanf@plt>
 ad3:	48 8b 13             	mov    (%rbx),%rdx
 ad6:	48 85 d2             	test   %rdx,%rdx
 ad9:	74 6d                	je     b48 <insert+0xa8>
 adb:	4c 8d 25 c8 02 00 00 	lea    0x2c8(%rip),%r12        # daa <_IO_stdin_used+0x3a>
 ae2:	eb 42                	jmp    b26 <insert+0x86>
 ae4:	0f 1f 40 00          	nopl   0x0(%rax)
 ae8:	48 39 55 00          	cmp    %rdx,0x0(%rbp)
 aec:	7f 4c                	jg     b3a <insert+0x9a>
 aee:	7d 70                	jge    b60 <insert+0xc0>
 af0:	4c 8b 6d 10          	mov    0x10(%rbp),%r13
 af4:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
 afb:	00 
 afc:	0f 1f 40 00          	nopl   0x0(%rax)
 b00:	bf 18 00 00 00       	mov    $0x18,%edi
 b05:	e8 36 fc ff ff       	callq  740 <malloc@plt>
 b0a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b0e:	48 89 c3             	mov    %rax,%rbx
 b11:	48 89 c6             	mov    %rax,%rsi
 b14:	4c 89 e7             	mov    %r12,%rdi
 b17:	31 c0                	xor    %eax,%eax
 b19:	e8 52 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b1e:	48 8b 13             	mov    (%rbx),%rdx
 b21:	48 85 d2             	test   %rdx,%rdx
 b24:	74 22                	je     b48 <insert+0xa8>
 b26:	8b 05 f0 14 20 00    	mov    0x2014f0(%rip),%eax        # 20201c <n>
 b2c:	83 c0 01             	add    $0x1,%eax
 b2f:	83 f8 01             	cmp    $0x1,%eax
 b32:	89 05 e4 14 20 00    	mov    %eax,0x2014e4(%rip)        # 20201c <n>
 b38:	75 ae                	jne    ae8 <insert+0x48>
 b3a:	49 89 df             	mov    %rbx,%r15
 b3d:	48 89 dd             	mov    %rbx,%rbp
 b40:	eb be                	jmp    b00 <insert+0x60>
 b42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b48:	48 83 c4 08          	add    $0x8,%rsp
 b4c:	48 89 e8             	mov    %rbp,%rax
 b4f:	5b                   	pop    %rbx
 b50:	5d                   	pop    %rbp
 b51:	41 5c                	pop    %r12
 b53:	41 5d                	pop    %r13
 b55:	41 5e                	pop    %r14
 b57:	41 5f                	pop    %r15
 b59:	c3                   	retq   
 b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b60:	49 39 55 00          	cmp    %rdx,0x0(%r13)
 b64:	7d 21                	jge    b87 <insert+0xe7>
 b66:	4d 8b 6d 10          	mov    0x10(%r13),%r13
 b6a:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
 b71:	00 
 b72:	eb 8c                	jmp    b00 <insert+0x60>
 b74:	0f 1f 40 00          	nopl   0x0(%rax)
 b78:	49 8b 47 10          	mov    0x10(%r15),%rax
 b7c:	48 85 c0             	test   %rax,%rax
 b7f:	74 0b                	je     b8c <insert+0xec>
 b81:	4d 89 fe             	mov    %r15,%r14
 b84:	49 89 c7             	mov    %rax,%r15
 b87:	49 39 17             	cmp    %rdx,(%r15)
 b8a:	7c ec                	jl     b78 <insert+0xd8>
 b8c:	4c 89 7b 10          	mov    %r15,0x10(%rbx)
 b90:	49 89 5e 10          	mov    %rbx,0x10(%r14)
 b94:	e9 67 ff ff ff       	jmpq   b00 <insert+0x60>
 b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ba0 <create>:
 ba0:	41 54                	push   %r12
 ba2:	55                   	push   %rbp
 ba3:	bf 18 00 00 00       	mov    $0x18,%edi
 ba8:	53                   	push   %rbx
 ba9:	e8 92 fb ff ff       	callq  740 <malloc@plt>
 bae:	48 8d 3d f5 01 00 00 	lea    0x1f5(%rip),%rdi        # daa <_IO_stdin_used+0x3a>
 bb5:	48 8d 50 08          	lea    0x8(%rax),%rdx
 bb9:	48 89 c3             	mov    %rax,%rbx
 bbc:	48 89 c6             	mov    %rax,%rsi
 bbf:	31 c0                	xor    %eax,%eax
 bc1:	e8 aa fb ff ff       	callq  770 <__isoc99_scanf@plt>
 bc6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 bca:	74 3e                	je     c0a <create+0x6a>
 bcc:	4c 8d 25 d7 01 00 00 	lea    0x1d7(%rip),%r12        # daa <_IO_stdin_used+0x3a>
 bd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bd8:	48 89 de             	mov    %rbx,%rsi
 bdb:	48 89 ef             	mov    %rbp,%rdi
 bde:	e8 bd fe ff ff       	callq  aa0 <insert>
 be3:	bf 18 00 00 00       	mov    $0x18,%edi
 be8:	48 89 c5             	mov    %rax,%rbp
 beb:	e8 50 fb ff ff       	callq  740 <malloc@plt>
 bf0:	48 8d 50 08          	lea    0x8(%rax),%rdx
 bf4:	48 89 c3             	mov    %rax,%rbx
 bf7:	48 89 c6             	mov    %rax,%rsi
 bfa:	4c 89 e7             	mov    %r12,%rdi
 bfd:	31 c0                	xor    %eax,%eax
 bff:	e8 6c fb ff ff       	callq  770 <__isoc99_scanf@plt>
 c04:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 c08:	75 ce                	jne    bd8 <create+0x38>
 c0a:	48 89 df             	mov    %rbx,%rdi
 c0d:	e8 fe fa ff ff       	callq  710 <free@plt>
 c12:	48 89 e8             	mov    %rbp,%rax
 c15:	5b                   	pop    %rbx
 c16:	5d                   	pop    %rbp
 c17:	41 5c                	pop    %r12
 c19:	c3                   	retq   
 c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c20 <del>:
 c20:	41 55                	push   %r13
 c22:	41 54                	push   %r12
 c24:	55                   	push   %rbp
 c25:	53                   	push   %rbx
 c26:	48 83 ec 08          	sub    $0x8,%rsp
 c2a:	48 8b 0f             	mov    (%rdi),%rcx
 c2d:	48 39 f1             	cmp    %rsi,%rcx
 c30:	7f 6e                	jg     ca0 <del+0x80>
 c32:	49 89 fd             	mov    %rdi,%r13
 c35:	48 89 f5             	mov    %rsi,%rbp
 c38:	48 89 ca             	mov    %rcx,%rdx
 c3b:	48 89 fb             	mov    %rdi,%rbx
 c3e:	eb 12                	jmp    c52 <del+0x32>
 c40:	48 8b 43 10          	mov    0x10(%rbx),%rax
 c44:	48 85 c0             	test   %rax,%rax
 c47:	74 27                	je     c70 <del+0x50>
 c49:	48 8b 10             	mov    (%rax),%rdx
 c4c:	49 89 dc             	mov    %rbx,%r12
 c4f:	48 89 c3             	mov    %rax,%rbx
 c52:	48 39 d5             	cmp    %rdx,%rbp
 c55:	7f e9                	jg     c40 <del+0x20>
 c57:	75 17                	jne    c70 <del+0x50>
 c59:	48 39 e9             	cmp    %rbp,%rcx
 c5c:	75 62                	jne    cc0 <del+0xa0>
 c5e:	48 89 df             	mov    %rbx,%rdi
 c61:	e8 aa fa ff ff       	callq  710 <free@plt>
 c66:	83 2d af 13 20 00 01 	subl   $0x1,0x2013af(%rip)        # 20201c <n>
 c6d:	eb 1a                	jmp    c89 <del+0x69>
 c6f:	90                   	nop
 c70:	48 8d 35 39 01 00 00 	lea    0x139(%rip),%rsi        # db0 <_IO_stdin_used+0x40>
 c77:	31 c0                	xor    %eax,%eax
 c79:	bf 01 00 00 00       	mov    $0x1,%edi
 c7e:	e8 dd fa ff ff       	callq  760 <__printf_chk@plt>
 c83:	49 39 6d 00          	cmp    %rbp,0x0(%r13)
 c87:	74 d5                	je     c5e <del+0x3e>
 c89:	48 39 2b             	cmp    %rbp,(%rbx)
 c8c:	74 32                	je     cc0 <del+0xa0>
 c8e:	48 83 c4 08          	add    $0x8,%rsp
 c92:	31 c0                	xor    %eax,%eax
 c94:	5b                   	pop    %rbx
 c95:	5d                   	pop    %rbp
 c96:	41 5c                	pop    %r12
 c98:	41 5d                	pop    %r13
 c9a:	c3                   	retq   
 c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ca0:	48 8d 35 09 01 00 00 	lea    0x109(%rip),%rsi        # db0 <_IO_stdin_used+0x40>
 ca7:	bf 01 00 00 00       	mov    $0x1,%edi
 cac:	31 c0                	xor    %eax,%eax
 cae:	e8 ad fa ff ff       	callq  760 <__printf_chk@plt>
 cb3:	48 83 c4 08          	add    $0x8,%rsp
 cb7:	31 c0                	xor    %eax,%eax
 cb9:	5b                   	pop    %rbx
 cba:	5d                   	pop    %rbp
 cbb:	41 5c                	pop    %r12
 cbd:	41 5d                	pop    %r13
 cbf:	c3                   	retq   
 cc0:	48 8b 43 10          	mov    0x10(%rbx),%rax
 cc4:	48 89 df             	mov    %rbx,%rdi
 cc7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
 ccc:	e8 3f fa ff ff       	callq  710 <free@plt>
 cd1:	83 2d 44 13 20 00 01 	subl   $0x1,0x201344(%rip)        # 20201c <n>
 cd8:	48 83 c4 08          	add    $0x8,%rsp
 cdc:	31 c0                	xor    %eax,%eax
 cde:	5b                   	pop    %rbx
 cdf:	5d                   	pop    %rbp
 ce0:	41 5c                	pop    %r12
 ce2:	41 5d                	pop    %r13
 ce4:	c3                   	retq   
 ce5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cec:	00 00 00 
 cef:	90                   	nop

0000000000000cf0 <__libc_csu_init>:
 cf0:	41 57                	push   %r15
 cf2:	41 56                	push   %r14
 cf4:	49 89 d7             	mov    %rdx,%r15
 cf7:	41 55                	push   %r13
 cf9:	41 54                	push   %r12
 cfb:	4c 8d 25 86 10 20 00 	lea    0x201086(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 d02:	55                   	push   %rbp
 d03:	48 8d 2d 86 10 20 00 	lea    0x201086(%rip),%rbp        # 201d90 <__init_array_end>
 d0a:	53                   	push   %rbx
 d0b:	41 89 fd             	mov    %edi,%r13d
 d0e:	49 89 f6             	mov    %rsi,%r14
 d11:	4c 29 e5             	sub    %r12,%rbp
 d14:	48 83 ec 08          	sub    $0x8,%rsp
 d18:	48 c1 fd 03          	sar    $0x3,%rbp
 d1c:	e8 c7 f9 ff ff       	callq  6e8 <_init>
 d21:	48 85 ed             	test   %rbp,%rbp
 d24:	74 20                	je     d46 <__libc_csu_init+0x56>
 d26:	31 db                	xor    %ebx,%ebx
 d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d2f:	00 
 d30:	4c 89 fa             	mov    %r15,%rdx
 d33:	4c 89 f6             	mov    %r14,%rsi
 d36:	44 89 ef             	mov    %r13d,%edi
 d39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d3d:	48 83 c3 01          	add    $0x1,%rbx
 d41:	48 39 dd             	cmp    %rbx,%rbp
 d44:	75 ea                	jne    d30 <__libc_csu_init+0x40>
 d46:	48 83 c4 08          	add    $0x8,%rsp
 d4a:	5b                   	pop    %rbx
 d4b:	5d                   	pop    %rbp
 d4c:	41 5c                	pop    %r12
 d4e:	41 5d                	pop    %r13
 d50:	41 5e                	pop    %r14
 d52:	41 5f                	pop    %r15
 d54:	c3                   	retq   
 d55:	90                   	nop
 d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d5d:	00 00 00 

0000000000000d60 <__libc_csu_fini>:
 d60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d64 <_fini>:
 d64:	48 83 ec 08          	sub    $0x8,%rsp
 d68:	48 83 c4 08          	add    $0x8,%rsp
 d6c:	c3                   	retq   
