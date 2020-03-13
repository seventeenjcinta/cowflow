
input/19020031096_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000708 <_init>:
 708:	48 83 ec 08          	sub    $0x8,%rsp
 70c:	48 8b 05 d5 18 20 00 	mov    0x2018d5(%rip),%rax        # 201fe8 <__gmon_start__>
 713:	48 85 c0             	test   %rax,%rax
 716:	74 02                	je     71a <_init+0x12>
 718:	ff d0                	callq  *%rax
 71a:	48 83 c4 08          	add    $0x8,%rsp
 71e:	c3                   	retq   

Disassembly of section .plt:

0000000000000720 <.plt>:
 720:	ff 35 6a 18 20 00    	pushq  0x20186a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 726:	ff 25 6c 18 20 00    	jmpq   *0x20186c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 72c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000730 <puts@plt>:
 730:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 736:	68 00 00 00 00       	pushq  $0x0
 73b:	e9 e0 ff ff ff       	jmpq   720 <.plt>

0000000000000740 <__stack_chk_fail@plt>:
 740:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 746:	68 01 00 00 00       	pushq  $0x1
 74b:	e9 d0 ff ff ff       	jmpq   720 <.plt>

0000000000000750 <malloc@plt>:
 750:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fb0 <malloc@GLIBC_2.2.5>
 756:	68 02 00 00 00       	pushq  $0x2
 75b:	e9 c0 ff ff ff       	jmpq   720 <.plt>

0000000000000760 <_IO_getc@plt>:
 760:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201fb8 <_IO_getc@GLIBC_2.2.5>
 766:	68 03 00 00 00       	pushq  $0x3
 76b:	e9 b0 ff ff ff       	jmpq   720 <.plt>

0000000000000770 <__printf_chk@plt>:
 770:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 776:	68 04 00 00 00       	pushq  $0x4
 77b:	e9 a0 ff ff ff       	jmpq   720 <.plt>

0000000000000780 <__isoc99_scanf@plt>:
 780:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 786:	68 05 00 00 00       	pushq  $0x5
 78b:	e9 90 ff ff ff       	jmpq   720 <.plt>

0000000000000790 <exit@plt>:
 790:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 796:	68 06 00 00 00       	pushq  $0x6
 79b:	e9 80 ff ff ff       	jmpq   720 <.plt>

Disassembly of section .plt.got:

00000000000007a0 <__cxa_finalize@plt>:
 7a0:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007b0 <main>:
 7b0:	41 55                	push   %r13
 7b2:	41 54                	push   %r12
 7b4:	48 8d 3d c4 05 00 00 	lea    0x5c4(%rip),%rdi        # d7f <_IO_stdin_used+0x5f>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	48 83 ec 28          	sub    $0x28,%rsp
 7c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7c8:	00 00 
 7ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	e8 5a ff ff ff       	callq  730 <puts@plt>
 7d6:	48 8d 3d b8 05 00 00 	lea    0x5b8(%rip),%rdi        # d95 <_IO_stdin_used+0x75>
 7dd:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
 7e2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e7:	e8 44 ff ff ff       	callq  730 <puts@plt>
 7ec:	31 c0                	xor    %eax,%eax
 7ee:	e8 6d 02 00 00       	callq  a60 <creat>
 7f3:	48 89 c7             	mov    %rax,%rdi
 7f6:	48 89 c3             	mov    %rax,%rbx
 7f9:	e8 42 04 00 00       	callq  c40 <print>
 7fe:	48 8d 3d a6 05 00 00 	lea    0x5a6(%rip),%rdi        # dab <_IO_stdin_used+0x8b>
 805:	e8 26 ff ff ff       	callq  730 <puts@plt>
 80a:	48 8d 35 b4 05 00 00 	lea    0x5b4(%rip),%rsi        # dc5 <_IO_stdin_used+0xa5>
 811:	bf 01 00 00 00       	mov    $0x1,%edi
 816:	31 c0                	xor    %eax,%eax
 818:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 81f:	ff 
 820:	e8 4b ff ff ff       	callq  770 <__printf_chk@plt>
 825:	48 8d 3d a8 05 00 00 	lea    0x5a8(%rip),%rdi        # dd4 <_IO_stdin_used+0xb4>
 82c:	48 89 ee             	mov    %rbp,%rsi
 82f:	31 c0                	xor    %eax,%eax
 831:	e8 4a ff ff ff       	callq  780 <__isoc99_scanf@plt>
 836:	48 8b 3d d3 17 20 00 	mov    0x2017d3(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 83d:	e8 1e ff ff ff       	callq  760 <_IO_getc@plt>
 842:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 846:	83 f8 02             	cmp    $0x2,%eax
 849:	0f 84 b1 00 00 00    	je     900 <main+0x150>
 84f:	83 f8 03             	cmp    $0x3,%eax
 852:	0f 84 98 00 00 00    	je     8f0 <main+0x140>
 858:	83 f8 01             	cmp    $0x1,%eax
 85b:	75 66                	jne    8c3 <main+0x113>
 85d:	48 8d 35 73 05 00 00 	lea    0x573(%rip),%rsi        # dd7 <_IO_stdin_used+0xb7>
 864:	bf 01 00 00 00       	mov    $0x1,%edi
 869:	31 c0                	xor    %eax,%eax
 86b:	e8 00 ff ff ff       	callq  770 <__printf_chk@plt>
 870:	bf 18 00 00 00       	mov    $0x18,%edi
 875:	e8 d6 fe ff ff       	callq  750 <malloc@plt>
 87a:	48 8d 3d a3 04 00 00 	lea    0x4a3(%rip),%rdi        # d24 <_IO_stdin_used+0x4>
 881:	48 8d 50 08          	lea    0x8(%rax),%rdx
 885:	49 89 c4             	mov    %rax,%r12
 888:	48 89 c6             	mov    %rax,%rsi
 88b:	31 c0                	xor    %eax,%eax
 88d:	e8 ee fe ff ff       	callq  780 <__isoc99_scanf@plt>
 892:	48 89 df             	mov    %rbx,%rdi
 895:	4c 89 e6             	mov    %r12,%rsi
 898:	e8 23 03 00 00       	callq  bc0 <insert>
 89d:	49 8b 14 24          	mov    (%r12),%rdx
 8a1:	48 8d 35 4b 05 00 00 	lea    0x54b(%rip),%rsi        # df3 <_IO_stdin_used+0xd3>
 8a8:	48 89 c3             	mov    %rax,%rbx
 8ab:	bf 01 00 00 00       	mov    $0x1,%edi
 8b0:	31 c0                	xor    %eax,%eax
 8b2:	e8 b9 fe ff ff       	callq  770 <__printf_chk@plt>
 8b7:	48 89 df             	mov    %rbx,%rdi
 8ba:	e8 81 03 00 00       	callq  c40 <print>
 8bf:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8c3:	85 c0                	test   %eax,%eax
 8c5:	0f 85 33 ff ff ff    	jne    7fe <main+0x4e>
 8cb:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8d0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8d7:	00 00 
 8d9:	75 67                	jne    942 <main+0x192>
 8db:	48 83 c4 28          	add    $0x28,%rsp
 8df:	5b                   	pop    %rbx
 8e0:	5d                   	pop    %rbp
 8e1:	41 5c                	pop    %r12
 8e3:	41 5d                	pop    %r13
 8e5:	c3                   	retq   
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 
 8f0:	31 ff                	xor    %edi,%edi
 8f2:	e8 99 fe ff ff       	callq  790 <exit@plt>
 8f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8fe:	00 00 
 900:	48 8d 35 fa 04 00 00 	lea    0x4fa(%rip),%rsi        # e01 <_IO_stdin_used+0xe1>
 907:	bf 01 00 00 00       	mov    $0x1,%edi
 90c:	31 c0                	xor    %eax,%eax
 90e:	e8 5d fe ff ff       	callq  770 <__printf_chk@plt>
 913:	48 8d 3d f9 04 00 00 	lea    0x4f9(%rip),%rdi        # e13 <_IO_stdin_used+0xf3>
 91a:	4c 89 ee             	mov    %r13,%rsi
 91d:	31 c0                	xor    %eax,%eax
 91f:	e8 5c fe ff ff       	callq  780 <__isoc99_scanf@plt>
 924:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 929:	48 89 df             	mov    %rbx,%rdi
 92c:	e8 ef 01 00 00       	callq  b20 <del>
 931:	48 89 c7             	mov    %rax,%rdi
 934:	48 89 c3             	mov    %rax,%rbx
 937:	e8 04 03 00 00       	callq  c40 <print>
 93c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 940:	eb 81                	jmp    8c3 <main+0x113>
 942:	e8 f9 fd ff ff       	callq  740 <__stack_chk_fail@plt>
 947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 94e:	00 00 

0000000000000950 <_start>:
 950:	31 ed                	xor    %ebp,%ebp
 952:	49 89 d1             	mov    %rdx,%r9
 955:	5e                   	pop    %rsi
 956:	48 89 e2             	mov    %rsp,%rdx
 959:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 95d:	50                   	push   %rax
 95e:	54                   	push   %rsp
 95f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # d10 <__libc_csu_fini>
 966:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # ca0 <__libc_csu_init>
 96d:	48 8d 3d 3c fe ff ff 	lea    -0x1c4(%rip),%rdi        # 7b0 <main>
 974:	ff 15 66 16 20 00    	callq  *0x201666(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 97a:	f4                   	hlt    
 97b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000980 <deregister_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 987:	55                   	push   %rbp
 988:	48 8d 05 81 16 20 00 	lea    0x201681(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 98f:	48 39 f8             	cmp    %rdi,%rax
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	74 19                	je     9b0 <deregister_tm_clones+0x30>
 997:	48 8b 05 3a 16 20 00 	mov    0x20163a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 99e:	48 85 c0             	test   %rax,%rax
 9a1:	74 0d                	je     9b0 <deregister_tm_clones+0x30>
 9a3:	5d                   	pop    %rbp
 9a4:	ff e0                	jmpq   *%rax
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 
 9b0:	5d                   	pop    %rbp
 9b1:	c3                   	retq   
 9b2:	0f 1f 40 00          	nopl   0x0(%rax)
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 

00000000000009c0 <register_tm_clones>:
 9c0:	48 8d 3d 49 16 20 00 	lea    0x201649(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9c7:	48 8d 35 42 16 20 00 	lea    0x201642(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 9ce:	55                   	push   %rbp
 9cf:	48 29 fe             	sub    %rdi,%rsi
 9d2:	48 89 e5             	mov    %rsp,%rbp
 9d5:	48 c1 fe 03          	sar    $0x3,%rsi
 9d9:	48 89 f0             	mov    %rsi,%rax
 9dc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9e0:	48 01 c6             	add    %rax,%rsi
 9e3:	48 d1 fe             	sar    %rsi
 9e6:	74 18                	je     a00 <register_tm_clones+0x40>
 9e8:	48 8b 05 01 16 20 00 	mov    0x201601(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9ef:	48 85 c0             	test   %rax,%rax
 9f2:	74 0c                	je     a00 <register_tm_clones+0x40>
 9f4:	5d                   	pop    %rbp
 9f5:	ff e0                	jmpq   *%rax
 9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9fe:	00 00 
 a00:	5d                   	pop    %rbp
 a01:	c3                   	retq   
 a02:	0f 1f 40 00          	nopl   0x0(%rax)
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <__do_global_dtors_aux>:
 a10:	80 3d 01 16 20 00 00 	cmpb   $0x0,0x201601(%rip)        # 202018 <completed.7698>
 a17:	75 2f                	jne    a48 <__do_global_dtors_aux+0x38>
 a19:	48 83 3d d7 15 20 00 	cmpq   $0x0,0x2015d7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a20:	00 
 a21:	55                   	push   %rbp
 a22:	48 89 e5             	mov    %rsp,%rbp
 a25:	74 0c                	je     a33 <__do_global_dtors_aux+0x23>
 a27:	48 8b 3d da 15 20 00 	mov    0x2015da(%rip),%rdi        # 202008 <__dso_handle>
 a2e:	e8 6d fd ff ff       	callq  7a0 <__cxa_finalize@plt>
 a33:	e8 48 ff ff ff       	callq  980 <deregister_tm_clones>
 a38:	c6 05 d9 15 20 00 01 	movb   $0x1,0x2015d9(%rip)        # 202018 <completed.7698>
 a3f:	5d                   	pop    %rbp
 a40:	c3                   	retq   
 a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a48:	f3 c3                	repz retq 
 a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a50 <frame_dummy>:
 a50:	55                   	push   %rbp
 a51:	48 89 e5             	mov    %rsp,%rbp
 a54:	5d                   	pop    %rbp
 a55:	e9 66 ff ff ff       	jmpq   9c0 <register_tm_clones>
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a60 <creat>:
 a60:	41 56                	push   %r14
 a62:	41 55                	push   %r13
 a64:	bf 18 00 00 00       	mov    $0x18,%edi
 a69:	41 54                	push   %r12
 a6b:	55                   	push   %rbp
 a6c:	45 31 f6             	xor    %r14d,%r14d
 a6f:	53                   	push   %rbx
 a70:	c7 05 a2 15 20 00 00 	movl   $0x0,0x2015a2(%rip)        # 20201c <n>
 a77:	00 00 00 
 a7a:	4c 8d 2d a3 02 00 00 	lea    0x2a3(%rip),%r13        # d24 <_IO_stdin_used+0x4>
 a81:	e8 ca fc ff ff       	callq  750 <malloc@plt>
 a86:	48 8d 3d 97 02 00 00 	lea    0x297(%rip),%rdi        # d24 <_IO_stdin_used+0x4>
 a8d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a91:	49 89 c4             	mov    %rax,%r12
 a94:	48 89 c6             	mov    %rax,%rsi
 a97:	31 c0                	xor    %eax,%eax
 a99:	4c 89 e5             	mov    %r12,%rbp
 a9c:	e8 df fc ff ff       	callq  780 <__isoc99_scanf@plt>
 aa1:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 aa6:	75 37                	jne    adf <creat+0x7f>
 aa8:	eb 56                	jmp    b00 <creat+0xa0>
 aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ab0:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 ab5:	bf 18 00 00 00       	mov    $0x18,%edi
 aba:	49 89 ec             	mov    %rbp,%r12
 abd:	e8 8e fc ff ff       	callq  750 <malloc@plt>
 ac2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 ac6:	48 89 c3             	mov    %rax,%rbx
 ac9:	48 89 c6             	mov    %rax,%rsi
 acc:	4c 89 ef             	mov    %r13,%rdi
 acf:	31 c0                	xor    %eax,%eax
 ad1:	e8 aa fc ff ff       	callq  780 <__isoc99_scanf@plt>
 ad6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ada:	74 24                	je     b00 <creat+0xa0>
 adc:	48 89 dd             	mov    %rbx,%rbp
 adf:	8b 05 37 15 20 00    	mov    0x201537(%rip),%eax        # 20201c <n>
 ae5:	83 c0 01             	add    $0x1,%eax
 ae8:	83 f8 01             	cmp    $0x1,%eax
 aeb:	89 05 2b 15 20 00    	mov    %eax,0x20152b(%rip)        # 20201c <n>
 af1:	75 bd                	jne    ab0 <creat+0x50>
 af3:	49 89 ee             	mov    %rbp,%r14
 af6:	eb bd                	jmp    ab5 <creat+0x55>
 af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aff:	00 
 b00:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 b07:	00 
 b08:	4c 89 f0             	mov    %r14,%rax
 b0b:	5b                   	pop    %rbx
 b0c:	5d                   	pop    %rbp
 b0d:	41 5c                	pop    %r12
 b0f:	41 5d                	pop    %r13
 b11:	41 5e                	pop    %r14
 b13:	c3                   	retq   
 b14:	66 90                	xchg   %ax,%ax
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 

0000000000000b20 <del>:
 b20:	55                   	push   %rbp
 b21:	53                   	push   %rbx
 b22:	48 89 fd             	mov    %rdi,%rbp
 b25:	48 89 f8             	mov    %rdi,%rax
 b28:	48 83 ec 08          	sub    $0x8,%rsp
 b2c:	48 85 ff             	test   %rdi,%rdi
 b2f:	75 12                	jne    b43 <del+0x23>
 b31:	eb 70                	jmp    ba3 <del+0x83>
 b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b38:	48 85 db             	test   %rbx,%rbx
 b3b:	48 89 c1             	mov    %rax,%rcx
 b3e:	74 40                	je     b80 <del+0x60>
 b40:	48 89 d8             	mov    %rbx,%rax
 b43:	48 8b 10             	mov    (%rax),%rdx
 b46:	48 8b 58 10          	mov    0x10(%rax),%rbx
 b4a:	48 39 f2             	cmp    %rsi,%rdx
 b4d:	75 e9                	jne    b38 <del+0x18>
 b4f:	48 39 e8             	cmp    %rbp,%rax
 b52:	74 07                	je     b5b <del+0x3b>
 b54:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 b58:	48 89 eb             	mov    %rbp,%rbx
 b5b:	48 8d 35 d5 01 00 00 	lea    0x1d5(%rip),%rsi        # d37 <_IO_stdin_used+0x17>
 b62:	bf 01 00 00 00       	mov    $0x1,%edi
 b67:	31 c0                	xor    %eax,%eax
 b69:	e8 02 fc ff ff       	callq  770 <__printf_chk@plt>
 b6e:	83 2d a7 14 20 00 01 	subl   $0x1,0x2014a7(%rip)        # 20201c <n>
 b75:	48 83 c4 08          	add    $0x8,%rsp
 b79:	48 89 d8             	mov    %rbx,%rax
 b7c:	5b                   	pop    %rbx
 b7d:	5d                   	pop    %rbp
 b7e:	c3                   	retq   
 b7f:	90                   	nop
 b80:	48 89 f2             	mov    %rsi,%rdx
 b83:	48 8d 35 b9 01 00 00 	lea    0x1b9(%rip),%rsi        # d43 <_IO_stdin_used+0x23>
 b8a:	bf 01 00 00 00       	mov    $0x1,%edi
 b8f:	31 c0                	xor    %eax,%eax
 b91:	48 89 eb             	mov    %rbp,%rbx
 b94:	e8 d7 fb ff ff       	callq  770 <__printf_chk@plt>
 b99:	48 83 c4 08          	add    $0x8,%rsp
 b9d:	48 89 d8             	mov    %rbx,%rax
 ba0:	5b                   	pop    %rbx
 ba1:	5d                   	pop    %rbp
 ba2:	c3                   	retq   
 ba3:	48 8d 3d 81 01 00 00 	lea    0x181(%rip),%rdi        # d2b <_IO_stdin_used+0xb>
 baa:	31 db                	xor    %ebx,%ebx
 bac:	e8 7f fb ff ff       	callq  730 <puts@plt>
 bb1:	eb c2                	jmp    b75 <del+0x55>
 bb3:	0f 1f 00             	nopl   (%rax)
 bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bbd:	00 00 00 

0000000000000bc0 <insert>:
 bc0:	48 85 ff             	test   %rdi,%rdi
 bc3:	74 5b                	je     c20 <insert+0x60>
 bc5:	48 8b 0e             	mov    (%rsi),%rcx
 bc8:	48 89 fa             	mov    %rdi,%rdx
 bcb:	eb 12                	jmp    bdf <insert+0x1f>
 bcd:	0f 1f 00             	nopl   (%rax)
 bd0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 bd4:	49 89 d0             	mov    %rdx,%r8
 bd7:	48 85 c0             	test   %rax,%rax
 bda:	74 24                	je     c00 <insert+0x40>
 bdc:	48 89 c2             	mov    %rax,%rdx
 bdf:	48 3b 0a             	cmp    (%rdx),%rcx
 be2:	7f ec                	jg     bd0 <insert+0x10>
 be4:	48 39 fa             	cmp    %rdi,%rdx
 be7:	48 89 f0             	mov    %rsi,%rax
 bea:	74 07                	je     bf3 <insert+0x33>
 bec:	49 89 70 10          	mov    %rsi,0x10(%r8)
 bf0:	48 89 f8             	mov    %rdi,%rax
 bf3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 bf7:	83 05 1e 14 20 00 01 	addl   $0x1,0x20141e(%rip)        # 20201c <n>
 bfe:	c3                   	retq   
 bff:	90                   	nop
 c00:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 c04:	48 89 f8             	mov    %rdi,%rax
 c07:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 c0e:	00 
 c0f:	83 05 06 14 20 00 01 	addl   $0x1,0x201406(%rip)        # 20201c <n>
 c16:	c3                   	retq   
 c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c1e:	00 00 
 c20:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 c27:	00 
 c28:	48 89 f0             	mov    %rsi,%rax
 c2b:	83 05 ea 13 20 00 01 	addl   $0x1,0x2013ea(%rip)        # 20201c <n>
 c32:	c3                   	retq   
 c33:	0f 1f 00             	nopl   (%rax)
 c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c3d:	00 00 00 

0000000000000c40 <print>:
 c40:	55                   	push   %rbp
 c41:	53                   	push   %rbx
 c42:	48 8d 35 0f 01 00 00 	lea    0x10f(%rip),%rsi        # d58 <_IO_stdin_used+0x38>
 c49:	48 89 fb             	mov    %rdi,%rbx
 c4c:	31 c0                	xor    %eax,%eax
 c4e:	bf 01 00 00 00       	mov    $0x1,%edi
 c53:	48 83 ec 08          	sub    $0x8,%rsp
 c57:	8b 15 bf 13 20 00    	mov    0x2013bf(%rip),%edx        # 20201c <n>
 c5d:	e8 0e fb ff ff       	callq  770 <__printf_chk@plt>
 c62:	48 85 db             	test   %rbx,%rbx
 c65:	74 30                	je     c97 <print+0x57>
 c67:	48 8d 2d 06 01 00 00 	lea    0x106(%rip),%rbp        # d74 <_IO_stdin_used+0x54>
 c6e:	66 90                	xchg   %ax,%ax
 c70:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c74:	48 8b 13             	mov    (%rbx),%rdx
 c77:	48 89 ee             	mov    %rbp,%rsi
 c7a:	bf 01 00 00 00       	mov    $0x1,%edi
 c7f:	b8 01 00 00 00       	mov    $0x1,%eax
 c84:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c89:	e8 e2 fa ff ff       	callq  770 <__printf_chk@plt>
 c8e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c92:	48 85 db             	test   %rbx,%rbx
 c95:	75 d9                	jne    c70 <print+0x30>
 c97:	48 83 c4 08          	add    $0x8,%rsp
 c9b:	5b                   	pop    %rbx
 c9c:	5d                   	pop    %rbp
 c9d:	c3                   	retq   
 c9e:	66 90                	xchg   %ax,%ax

0000000000000ca0 <__libc_csu_init>:
 ca0:	41 57                	push   %r15
 ca2:	41 56                	push   %r14
 ca4:	49 89 d7             	mov    %rdx,%r15
 ca7:	41 55                	push   %r13
 ca9:	41 54                	push   %r12
 cab:	4c 8d 25 d6 10 20 00 	lea    0x2010d6(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 cb2:	55                   	push   %rbp
 cb3:	48 8d 2d d6 10 20 00 	lea    0x2010d6(%rip),%rbp        # 201d90 <__init_array_end>
 cba:	53                   	push   %rbx
 cbb:	41 89 fd             	mov    %edi,%r13d
 cbe:	49 89 f6             	mov    %rsi,%r14
 cc1:	4c 29 e5             	sub    %r12,%rbp
 cc4:	48 83 ec 08          	sub    $0x8,%rsp
 cc8:	48 c1 fd 03          	sar    $0x3,%rbp
 ccc:	e8 37 fa ff ff       	callq  708 <_init>
 cd1:	48 85 ed             	test   %rbp,%rbp
 cd4:	74 20                	je     cf6 <__libc_csu_init+0x56>
 cd6:	31 db                	xor    %ebx,%ebx
 cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cdf:	00 
 ce0:	4c 89 fa             	mov    %r15,%rdx
 ce3:	4c 89 f6             	mov    %r14,%rsi
 ce6:	44 89 ef             	mov    %r13d,%edi
 ce9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 ced:	48 83 c3 01          	add    $0x1,%rbx
 cf1:	48 39 dd             	cmp    %rbx,%rbp
 cf4:	75 ea                	jne    ce0 <__libc_csu_init+0x40>
 cf6:	48 83 c4 08          	add    $0x8,%rsp
 cfa:	5b                   	pop    %rbx
 cfb:	5d                   	pop    %rbp
 cfc:	41 5c                	pop    %r12
 cfe:	41 5d                	pop    %r13
 d00:	41 5e                	pop    %r14
 d02:	41 5f                	pop    %r15
 d04:	c3                   	retq   
 d05:	90                   	nop
 d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d0d:	00 00 00 

0000000000000d10 <__libc_csu_fini>:
 d10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d14 <_fini>:
 d14:	48 83 ec 08          	sub    $0x8,%rsp
 d18:	48 83 c4 08          	add    $0x8,%rsp
 d1c:	c3                   	retq   
