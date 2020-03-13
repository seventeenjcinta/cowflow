
input/19060012026-2.elf:     file format elf64-x86-64


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

0000000000000710 <puts@plt>:
 710:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 716:	68 00 00 00 00       	pushq  $0x0
 71b:	e9 e0 ff ff ff       	jmpq   700 <.plt>

0000000000000720 <__stack_chk_fail@plt>:
 720:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 726:	68 01 00 00 00       	pushq  $0x1
 72b:	e9 d0 ff ff ff       	jmpq   700 <.plt>

0000000000000730 <malloc@plt>:
 730:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fb0 <malloc@GLIBC_2.2.5>
 736:	68 02 00 00 00       	pushq  $0x2
 73b:	e9 c0 ff ff ff       	jmpq   700 <.plt>

0000000000000740 <_IO_getc@plt>:
 740:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fb8 <_IO_getc@GLIBC_2.2.5>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <__printf_chk@plt>:
 750:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 756:	68 04 00 00 00       	pushq  $0x4
 75b:	e9 a0 ff ff ff       	jmpq   700 <.plt>

0000000000000760 <__isoc99_scanf@plt>:
 760:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 766:	68 05 00 00 00       	pushq  $0x5
 76b:	e9 90 ff ff ff       	jmpq   700 <.plt>

0000000000000770 <exit@plt>:
 770:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 776:	68 06 00 00 00       	pushq  $0x6
 77b:	e9 80 ff ff ff       	jmpq   700 <.plt>

Disassembly of section .plt.got:

0000000000000780 <__cxa_finalize@plt>:
 780:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 786:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000790 <main>:
 790:	41 57                	push   %r15
 792:	41 56                	push   %r14
 794:	41 55                	push   %r13
 796:	41 54                	push   %r12
 798:	4c 8d 2d ab 05 00 00 	lea    0x5ab(%rip),%r13        # d4a <_IO_stdin_used+0x2a>
 79f:	55                   	push   %rbp
 7a0:	53                   	push   %rbx
 7a1:	48 83 ec 18          	sub    $0x18,%rsp
 7a5:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
 7aa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7b1:	00 00 
 7b3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 7b8:	31 c0                	xor    %eax,%eax
 7ba:	e8 f1 02 00 00       	callq  ab0 <crate>
 7bf:	48 89 c7             	mov    %rax,%rdi
 7c2:	48 89 c3             	mov    %rax,%rbx
 7c5:	e8 b6 03 00 00       	callq  b80 <print>
 7ca:	4c 89 ef             	mov    %r13,%rdi
 7cd:	e8 3e ff ff ff       	callq  710 <puts@plt>
 7d2:	48 8d 35 8a 05 00 00 	lea    0x58a(%rip),%rsi        # d63 <_IO_stdin_used+0x43>
 7d9:	bf 01 00 00 00       	mov    $0x1,%edi
 7de:	31 c0                	xor    %eax,%eax
 7e0:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
 7e7:	ff 
 7e8:	e8 63 ff ff ff       	callq  750 <__printf_chk@plt>
 7ed:	48 8d 3d 7e 05 00 00 	lea    0x57e(%rip),%rdi        # d72 <_IO_stdin_used+0x52>
 7f4:	4c 89 f6             	mov    %r14,%rsi
 7f7:	31 c0                	xor    %eax,%eax
 7f9:	e8 62 ff ff ff       	callq  760 <__isoc99_scanf@plt>
 7fe:	48 8b 3d 0b 18 20 00 	mov    0x20180b(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 805:	e8 36 ff ff ff       	callq  740 <_IO_getc@plt>
 80a:	8b 44 24 04          	mov    0x4(%rsp),%eax
 80e:	83 f8 01             	cmp    $0x1,%eax
 811:	74 3d                	je     850 <main+0xc0>
 813:	83 f8 02             	cmp    $0x2,%eax
 816:	0f 84 d4 00 00 00    	je     8f0 <main+0x160>
 81c:	85 c0                	test   %eax,%eax
 81e:	0f 84 bc 00 00 00    	je     8e0 <main+0x150>
 824:	83 f8 ff             	cmp    $0xffffffff,%eax
 827:	75 a1                	jne    7ca <main+0x3a>
 829:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 82e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 835:	00 00 
 837:	0f 85 50 01 00 00    	jne    98d <main+0x1fd>
 83d:	48 83 c4 18          	add    $0x18,%rsp
 841:	5b                   	pop    %rbx
 842:	5d                   	pop    %rbp
 843:	41 5c                	pop    %r12
 845:	41 5d                	pop    %r13
 847:	41 5e                	pop    %r14
 849:	41 5f                	pop    %r15
 84b:	c3                   	retq   
 84c:	0f 1f 40 00          	nopl   0x0(%rax)
 850:	bf 18 00 00 00       	mov    $0x18,%edi
 855:	e8 d6 fe ff ff       	callq  730 <malloc@plt>
 85a:	48 8d 35 c3 04 00 00 	lea    0x4c3(%rip),%rsi        # d24 <_IO_stdin_used+0x4>
 861:	49 89 c7             	mov    %rax,%r15
 864:	bf 01 00 00 00       	mov    $0x1,%edi
 869:	31 c0                	xor    %eax,%eax
 86b:	e8 e0 fe ff ff       	callq  750 <__printf_chk@plt>
 870:	49 8d 57 08          	lea    0x8(%r15),%rdx
 874:	48 8d 3d c1 04 00 00 	lea    0x4c1(%rip),%rdi        # d3c <_IO_stdin_used+0x1c>
 87b:	4c 89 fe             	mov    %r15,%rsi
 87e:	31 c0                	xor    %eax,%eax
 880:	e8 db fe ff ff       	callq  760 <__isoc99_scanf@plt>
 885:	49 8b 37             	mov    (%r15),%rsi
 888:	48 89 d8             	mov    %rbx,%rax
 88b:	eb 12                	jmp    89f <main+0x10f>
 88d:	0f 1f 00             	nopl   (%rax)
 890:	48 39 ce             	cmp    %rcx,%rsi
 893:	0f 8e c4 00 00 00    	jle    95d <main+0x1cd>
 899:	48 89 c5             	mov    %rax,%rbp
 89c:	48 89 d0             	mov    %rdx,%rax
 89f:	48 8b 50 10          	mov    0x10(%rax),%rdx
 8a3:	48 8b 08             	mov    (%rax),%rcx
 8a6:	48 85 d2             	test   %rdx,%rdx
 8a9:	75 e5                	jne    890 <main+0x100>
 8ab:	48 39 ce             	cmp    %rcx,%rsi
 8ae:	0f 8e a9 00 00 00    	jle    95d <main+0x1cd>
 8b4:	4c 89 78 10          	mov    %r15,0x10(%rax)
 8b8:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
 8bf:	00 
 8c0:	48 89 df             	mov    %rbx,%rdi
 8c3:	83 05 52 17 20 00 01 	addl   $0x1,0x201752(%rip)        # 20201c <n>
 8ca:	e8 b1 02 00 00       	callq  b80 <print>
 8cf:	8b 44 24 04          	mov    0x4(%rsp),%eax
 8d3:	e9 4c ff ff ff       	jmpq   824 <main+0x94>
 8d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8df:	00 
 8e0:	31 ff                	xor    %edi,%edi
 8e2:	e8 89 fe ff ff       	callq  770 <exit@plt>
 8e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ee:	00 00 
 8f0:	bf 18 00 00 00       	mov    $0x18,%edi
 8f5:	e8 36 fe ff ff       	callq  730 <malloc@plt>
 8fa:	48 8d 35 74 04 00 00 	lea    0x474(%rip),%rsi        # d75 <_IO_stdin_used+0x55>
 901:	49 89 c7             	mov    %rax,%r15
 904:	bf 01 00 00 00       	mov    $0x1,%edi
 909:	31 c0                	xor    %eax,%eax
 90b:	e8 40 fe ff ff       	callq  750 <__printf_chk@plt>
 910:	48 8d 3d 5b 04 00 00 	lea    0x45b(%rip),%rdi        # d72 <_IO_stdin_used+0x52>
 917:	4c 89 fe             	mov    %r15,%rsi
 91a:	31 c0                	xor    %eax,%eax
 91c:	e8 3f fe ff ff       	callq  760 <__isoc99_scanf@plt>
 921:	49 8b 37             	mov    (%r15),%rsi
 924:	48 89 d8             	mov    %rbx,%rax
 927:	eb 12                	jmp    93b <main+0x1ab>
 929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 930:	48 39 ce             	cmp    %rcx,%rsi
 933:	74 3a                	je     96f <main+0x1df>
 935:	49 89 c4             	mov    %rax,%r12
 938:	48 89 d0             	mov    %rdx,%rax
 93b:	48 8b 50 10          	mov    0x10(%rax),%rdx
 93f:	48 8b 08             	mov    (%rax),%rcx
 942:	48 85 d2             	test   %rdx,%rdx
 945:	75 e9                	jne    930 <main+0x1a0>
 947:	48 39 ce             	cmp    %rcx,%rsi
 94a:	74 23                	je     96f <main+0x1df>
 94c:	48 89 df             	mov    %rbx,%rdi
 94f:	e8 2c 02 00 00       	callq  b80 <print>
 954:	8b 44 24 04          	mov    0x4(%rsp),%eax
 958:	e9 c7 fe ff ff       	jmpq   824 <main+0x94>
 95d:	48 39 c3             	cmp    %rax,%rbx
 960:	74 26                	je     988 <main+0x1f8>
 962:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
 966:	49 89 47 10          	mov    %rax,0x10(%r15)
 96a:	e9 51 ff ff ff       	jmpq   8c0 <main+0x130>
 96f:	48 39 c3             	cmp    %rax,%rbx
 972:	74 08                	je     97c <main+0x1ec>
 974:	49 89 54 24 10       	mov    %rdx,0x10(%r12)
 979:	48 89 da             	mov    %rbx,%rdx
 97c:	83 2d 99 16 20 00 01 	subl   $0x1,0x201699(%rip)        # 20201c <n>
 983:	48 89 d3             	mov    %rdx,%rbx
 986:	eb c4                	jmp    94c <main+0x1bc>
 988:	4c 89 fb             	mov    %r15,%rbx
 98b:	eb d9                	jmp    966 <main+0x1d6>
 98d:	e8 8e fd ff ff       	callq  720 <__stack_chk_fail@plt>
 992:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 999:	00 00 00 
 99c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009a0 <_start>:
 9a0:	31 ed                	xor    %ebp,%ebp
 9a2:	49 89 d1             	mov    %rdx,%r9
 9a5:	5e                   	pop    %rsi
 9a6:	48 89 e2             	mov    %rsp,%rdx
 9a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 9ad:	50                   	push   %rax
 9ae:	54                   	push   %rsp
 9af:	4c 8d 05 5a 03 00 00 	lea    0x35a(%rip),%r8        # d10 <__libc_csu_fini>
 9b6:	48 8d 0d e3 02 00 00 	lea    0x2e3(%rip),%rcx        # ca0 <__libc_csu_init>
 9bd:	48 8d 3d cc fd ff ff 	lea    -0x234(%rip),%rdi        # 790 <main>
 9c4:	ff 15 16 16 20 00    	callq  *0x201616(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 9ca:	f4                   	hlt    
 9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009d0 <deregister_tm_clones>:
 9d0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9d7:	55                   	push   %rbp
 9d8:	48 8d 05 31 16 20 00 	lea    0x201631(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 9df:	48 39 f8             	cmp    %rdi,%rax
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	74 19                	je     a00 <deregister_tm_clones+0x30>
 9e7:	48 8b 05 ea 15 20 00 	mov    0x2015ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9ee:	48 85 c0             	test   %rax,%rax
 9f1:	74 0d                	je     a00 <deregister_tm_clones+0x30>
 9f3:	5d                   	pop    %rbp
 9f4:	ff e0                	jmpq   *%rax
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 
 a00:	5d                   	pop    %rbp
 a01:	c3                   	retq   
 a02:	0f 1f 40 00          	nopl   0x0(%rax)
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <register_tm_clones>:
 a10:	48 8d 3d f9 15 20 00 	lea    0x2015f9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 a17:	48 8d 35 f2 15 20 00 	lea    0x2015f2(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 a1e:	55                   	push   %rbp
 a1f:	48 29 fe             	sub    %rdi,%rsi
 a22:	48 89 e5             	mov    %rsp,%rbp
 a25:	48 c1 fe 03          	sar    $0x3,%rsi
 a29:	48 89 f0             	mov    %rsi,%rax
 a2c:	48 c1 e8 3f          	shr    $0x3f,%rax
 a30:	48 01 c6             	add    %rax,%rsi
 a33:	48 d1 fe             	sar    %rsi
 a36:	74 18                	je     a50 <register_tm_clones+0x40>
 a38:	48 8b 05 b1 15 20 00 	mov    0x2015b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a3f:	48 85 c0             	test   %rax,%rax
 a42:	74 0c                	je     a50 <register_tm_clones+0x40>
 a44:	5d                   	pop    %rbp
 a45:	ff e0                	jmpq   *%rax
 a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a4e:	00 00 
 a50:	5d                   	pop    %rbp
 a51:	c3                   	retq   
 a52:	0f 1f 40 00          	nopl   0x0(%rax)
 a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a5d:	00 00 00 

0000000000000a60 <__do_global_dtors_aux>:
 a60:	80 3d b1 15 20 00 00 	cmpb   $0x0,0x2015b1(%rip)        # 202018 <completed.7698>
 a67:	75 2f                	jne    a98 <__do_global_dtors_aux+0x38>
 a69:	48 83 3d 87 15 20 00 	cmpq   $0x0,0x201587(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a70:	00 
 a71:	55                   	push   %rbp
 a72:	48 89 e5             	mov    %rsp,%rbp
 a75:	74 0c                	je     a83 <__do_global_dtors_aux+0x23>
 a77:	48 8b 3d 8a 15 20 00 	mov    0x20158a(%rip),%rdi        # 202008 <__dso_handle>
 a7e:	e8 fd fc ff ff       	callq  780 <__cxa_finalize@plt>
 a83:	e8 48 ff ff ff       	callq  9d0 <deregister_tm_clones>
 a88:	c6 05 89 15 20 00 01 	movb   $0x1,0x201589(%rip)        # 202018 <completed.7698>
 a8f:	5d                   	pop    %rbp
 a90:	c3                   	retq   
 a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a98:	f3 c3                	repz retq 
 a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000aa0 <frame_dummy>:
 aa0:	55                   	push   %rbp
 aa1:	48 89 e5             	mov    %rsp,%rbp
 aa4:	5d                   	pop    %rbp
 aa5:	e9 66 ff ff ff       	jmpq   a10 <register_tm_clones>
 aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ab0 <crate>:
 ab0:	41 55                	push   %r13
 ab2:	41 54                	push   %r12
 ab4:	bf 18 00 00 00       	mov    $0x18,%edi
 ab9:	55                   	push   %rbp
 aba:	53                   	push   %rbx
 abb:	48 83 ec 08          	sub    $0x8,%rsp
 abf:	c7 05 53 15 20 00 00 	movl   $0x0,0x201553(%rip)        # 20201c <n>
 ac6:	00 00 00 
 ac9:	e8 62 fc ff ff       	callq  730 <malloc@plt>
 ace:	48 8d 35 4f 02 00 00 	lea    0x24f(%rip),%rsi        # d24 <_IO_stdin_used+0x4>
 ad5:	49 89 c5             	mov    %rax,%r13
 ad8:	bf 01 00 00 00       	mov    $0x1,%edi
 add:	31 c0                	xor    %eax,%eax
 adf:	e8 6c fc ff ff       	callq  750 <__printf_chk@plt>
 ae4:	49 8d 55 08          	lea    0x8(%r13),%rdx
 ae8:	48 8d 3d 4d 02 00 00 	lea    0x24d(%rip),%rdi        # d3c <_IO_stdin_used+0x1c>
 aef:	31 c0                	xor    %eax,%eax
 af1:	4c 89 ee             	mov    %r13,%rsi
 af4:	e8 67 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 af9:	8b 05 1d 15 20 00    	mov    0x20151d(%rip),%eax        # 20201c <n>
 aff:	83 c0 01             	add    $0x1,%eax
 b02:	83 f8 02             	cmp    $0x2,%eax
 b05:	89 05 11 15 20 00    	mov    %eax,0x201511(%rip)        # 20201c <n>
 b0b:	7f 5f                	jg     b6c <crate+0xbc>
 b0d:	4c 8d 25 10 02 00 00 	lea    0x210(%rip),%r12        # d24 <_IO_stdin_used+0x4>
 b14:	4c 89 ed             	mov    %r13,%rbp
 b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b1e:	00 00 
 b20:	bf 18 00 00 00       	mov    $0x18,%edi
 b25:	e8 06 fc ff ff       	callq  730 <malloc@plt>
 b2a:	4c 89 e6             	mov    %r12,%rsi
 b2d:	48 89 c3             	mov    %rax,%rbx
 b30:	bf 01 00 00 00       	mov    $0x1,%edi
 b35:	31 c0                	xor    %eax,%eax
 b37:	e8 14 fc ff ff       	callq  750 <__printf_chk@plt>
 b3c:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 b40:	48 8d 3d f5 01 00 00 	lea    0x1f5(%rip),%rdi        # d3c <_IO_stdin_used+0x1c>
 b47:	31 c0                	xor    %eax,%eax
 b49:	48 89 de             	mov    %rbx,%rsi
 b4c:	e8 0f fc ff ff       	callq  760 <__isoc99_scanf@plt>
 b51:	8b 05 c5 14 20 00    	mov    0x2014c5(%rip),%eax        # 20201c <n>
 b57:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 b5b:	48 89 dd             	mov    %rbx,%rbp
 b5e:	83 c0 01             	add    $0x1,%eax
 b61:	83 f8 02             	cmp    $0x2,%eax
 b64:	89 05 b2 14 20 00    	mov    %eax,0x2014b2(%rip)        # 20201c <n>
 b6a:	7e b4                	jle    b20 <crate+0x70>
 b6c:	48 83 c4 08          	add    $0x8,%rsp
 b70:	4c 89 e8             	mov    %r13,%rax
 b73:	5b                   	pop    %rbx
 b74:	5d                   	pop    %rbp
 b75:	41 5c                	pop    %r12
 b77:	41 5d                	pop    %r13
 b79:	c3                   	retq   
 b7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b80 <print>:
 b80:	8b 05 96 14 20 00    	mov    0x201496(%rip),%eax        # 20201c <n>
 b86:	85 c0                	test   %eax,%eax
 b88:	7e 4e                	jle    bd8 <print+0x58>
 b8a:	41 54                	push   %r12
 b8c:	4c 8d 25 ae 01 00 00 	lea    0x1ae(%rip),%r12        # d41 <_IO_stdin_used+0x21>
 b93:	55                   	push   %rbp
 b94:	bd 01 00 00 00       	mov    $0x1,%ebp
 b99:	53                   	push   %rbx
 b9a:	48 89 fb             	mov    %rdi,%rbx
 b9d:	0f 1f 00             	nopl   (%rax)
 ba0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 ba4:	48 8b 13             	mov    (%rbx),%rdx
 ba7:	4c 89 e6             	mov    %r12,%rsi
 baa:	bf 01 00 00 00       	mov    $0x1,%edi
 baf:	b8 01 00 00 00       	mov    $0x1,%eax
 bb4:	83 c5 01             	add    $0x1,%ebp
 bb7:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 bbc:	e8 8f fb ff ff       	callq  750 <__printf_chk@plt>
 bc1:	39 2d 55 14 20 00    	cmp    %ebp,0x201455(%rip)        # 20201c <n>
 bc7:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bcb:	7d d3                	jge    ba0 <print+0x20>
 bcd:	5b                   	pop    %rbx
 bce:	5d                   	pop    %rbp
 bcf:	41 5c                	pop    %r12
 bd1:	c3                   	retq   
 bd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bd8:	f3 c3                	repz retq 
 bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000be0 <insert>:
 be0:	4c 8b 06             	mov    (%rsi),%r8
 be3:	48 89 fa             	mov    %rdi,%rdx
 be6:	eb 13                	jmp    bfb <insert+0x1b>
 be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bef:	00 
 bf0:	49 39 c8             	cmp    %rcx,%r8
 bf3:	7e 33                	jle    c28 <insert+0x48>
 bf5:	49 89 d1             	mov    %rdx,%r9
 bf8:	48 89 c2             	mov    %rax,%rdx
 bfb:	48 8b 42 10          	mov    0x10(%rdx),%rax
 bff:	48 8b 0a             	mov    (%rdx),%rcx
 c02:	48 85 c0             	test   %rax,%rax
 c05:	75 e9                	jne    bf0 <insert+0x10>
 c07:	49 39 c8             	cmp    %rcx,%r8
 c0a:	7e 1c                	jle    c28 <insert+0x48>
 c0c:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 c10:	48 89 f8             	mov    %rdi,%rax
 c13:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 c1a:	00 
 c1b:	83 05 fa 13 20 00 01 	addl   $0x1,0x2013fa(%rip)        # 20201c <n>
 c22:	c3                   	retq   
 c23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c28:	48 39 fa             	cmp    %rdi,%rdx
 c2b:	48 89 f0             	mov    %rsi,%rax
 c2e:	74 07                	je     c37 <insert+0x57>
 c30:	49 89 71 10          	mov    %rsi,0x10(%r9)
 c34:	48 89 f8             	mov    %rdi,%rax
 c37:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 c3b:	83 05 da 13 20 00 01 	addl   $0x1,0x2013da(%rip)        # 20201c <n>
 c42:	c3                   	retq   
 c43:	0f 1f 00             	nopl   (%rax)
 c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c4d:	00 00 00 

0000000000000c50 <del>:
 c50:	48 89 f8             	mov    %rdi,%rax
 c53:	4c 8b 06             	mov    (%rsi),%r8
 c56:	48 89 fa             	mov    %rdi,%rdx
 c59:	eb 10                	jmp    c6b <del+0x1b>
 c5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c60:	4c 39 c6             	cmp    %r8,%rsi
 c63:	74 1b                	je     c80 <del+0x30>
 c65:	49 89 d1             	mov    %rdx,%r9
 c68:	48 89 ca             	mov    %rcx,%rdx
 c6b:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 c6f:	48 8b 32             	mov    (%rdx),%rsi
 c72:	48 85 c9             	test   %rcx,%rcx
 c75:	75 e9                	jne    c60 <del+0x10>
 c77:	4c 39 c6             	cmp    %r8,%rsi
 c7a:	74 04                	je     c80 <del+0x30>
 c7c:	f3 c3                	repz retq 
 c7e:	66 90                	xchg   %ax,%ax
 c80:	48 39 c2             	cmp    %rax,%rdx
 c83:	74 13                	je     c98 <del+0x48>
 c85:	49 89 49 10          	mov    %rcx,0x10(%r9)
 c89:	83 2d 8c 13 20 00 01 	subl   $0x1,0x20138c(%rip)        # 20201c <n>
 c90:	c3                   	retq   
 c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c98:	48 89 c8             	mov    %rcx,%rax
 c9b:	eb ec                	jmp    c89 <del+0x39>
 c9d:	0f 1f 00             	nopl   (%rax)

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
 ccc:	e8 17 fa ff ff       	callq  6e8 <_init>
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
