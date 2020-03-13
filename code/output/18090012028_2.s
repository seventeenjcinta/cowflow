
input/18090012028_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006d0 <_init>:
 6d0:	48 83 ec 08          	sub    $0x8,%rsp
 6d4:	48 8b 05 0d 19 20 00 	mov    0x20190d(%rip),%rax        # 201fe8 <__gmon_start__>
 6db:	48 85 c0             	test   %rax,%rax
 6de:	74 02                	je     6e2 <_init+0x12>
 6e0:	ff d0                	callq  *%rax
 6e2:	48 83 c4 08          	add    $0x8,%rsp
 6e6:	c3                   	retq   

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	ff 35 9a 18 20 00    	pushq  0x20189a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6f6:	ff 25 9c 18 20 00    	jmpq   *0x20189c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000700 <free@plt>:
 700:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 706:	68 00 00 00 00       	pushq  $0x0
 70b:	e9 e0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000710 <putchar@plt>:
 710:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 716:	68 01 00 00 00       	pushq  $0x1
 71b:	e9 d0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000720 <puts@plt>:
 720:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 726:	68 02 00 00 00       	pushq  $0x2
 72b:	e9 c0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000730 <__stack_chk_fail@plt>:
 730:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 736:	68 03 00 00 00       	pushq  $0x3
 73b:	e9 b0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000740 <malloc@plt>:
 740:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 746:	68 04 00 00 00       	pushq  $0x4
 74b:	e9 a0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000750 <__printf_chk@plt>:
 750:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 756:	68 05 00 00 00       	pushq  $0x5
 75b:	e9 90 ff ff ff       	jmpq   6f0 <.plt>

0000000000000760 <__isoc99_scanf@plt>:
 760:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 766:	68 06 00 00 00       	pushq  $0x6
 76b:	e9 80 ff ff ff       	jmpq   6f0 <.plt>

Disassembly of section .plt.got:

0000000000000770 <__cxa_finalize@plt>:
 770:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 776:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000780 <main>:
 780:	41 55                	push   %r13
 782:	41 54                	push   %r12
 784:	48 8d 3d e2 05 00 00 	lea    0x5e2(%rip),%rdi        # d6d <_IO_stdin_used+0x8d>
 78b:	55                   	push   %rbp
 78c:	53                   	push   %rbx
 78d:	48 83 ec 28          	sub    $0x28,%rsp
 791:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 798:	00 00 
 79a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 79f:	31 c0                	xor    %eax,%eax
 7a1:	e8 7a ff ff ff       	callq  720 <puts@plt>
 7a6:	48 8d 3d 33 06 00 00 	lea    0x633(%rip),%rdi        # de0 <_IO_stdin_used+0x100>
 7ad:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7b2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7b7:	e8 64 ff ff ff       	callq  720 <puts@plt>
 7bc:	e8 df 02 00 00       	callq  aa0 <creat>
 7c1:	48 89 c7             	mov    %rax,%rdi
 7c4:	48 89 c3             	mov    %rax,%rbx
 7c7:	e8 e4 03 00 00       	callq  bb0 <print>
 7cc:	eb 4f                	jmp    81d <main+0x9d>
 7ce:	66 90                	xchg   %ax,%ax
 7d0:	83 f8 02             	cmp    $0x2,%eax
 7d3:	75 40                	jne    815 <main+0x95>
 7d5:	48 8d 35 e8 05 00 00 	lea    0x5e8(%rip),%rsi        # dc4 <_IO_stdin_used+0xe4>
 7dc:	bf 01 00 00 00       	mov    $0x1,%edi
 7e1:	31 c0                	xor    %eax,%eax
 7e3:	e8 68 ff ff ff       	callq  750 <__printf_chk@plt>
 7e8:	48 8d 3d e7 05 00 00 	lea    0x5e7(%rip),%rdi        # dd6 <_IO_stdin_used+0xf6>
 7ef:	4c 89 ee             	mov    %r13,%rsi
 7f2:	31 c0                	xor    %eax,%eax
 7f4:	e8 67 ff ff ff       	callq  760 <__isoc99_scanf@plt>
 7f9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7fe:	48 89 df             	mov    %rbx,%rdi
 801:	e8 2a 03 00 00       	callq  b30 <del>
 806:	48 89 c7             	mov    %rax,%rdi
 809:	48 89 c3             	mov    %rax,%rbx
 80c:	e8 9f 03 00 00       	callq  bb0 <print>
 811:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 815:	85 c0                	test   %eax,%eax
 817:	0f 84 b3 00 00 00    	je     8d0 <main+0x150>
 81d:	48 8d 3d c0 04 00 00 	lea    0x4c0(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 824:	e8 f7 fe ff ff       	callq  720 <puts@plt>
 829:	48 8d 35 56 05 00 00 	lea    0x556(%rip),%rsi        # d86 <_IO_stdin_used+0xa6>
 830:	bf 01 00 00 00       	mov    $0x1,%edi
 835:	31 c0                	xor    %eax,%eax
 837:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 83e:	ff 
 83f:	e8 0c ff ff ff       	callq  750 <__printf_chk@plt>
 844:	48 8d 3d 4b 05 00 00 	lea    0x54b(%rip),%rdi        # d96 <_IO_stdin_used+0xb6>
 84b:	31 c0                	xor    %eax,%eax
 84d:	4c 89 e6             	mov    %r12,%rsi
 850:	e8 0b ff ff ff       	callq  760 <__isoc99_scanf@plt>
 855:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 859:	83 f8 01             	cmp    $0x1,%eax
 85c:	0f 85 6e ff ff ff    	jne    7d0 <main+0x50>
 862:	48 8d 35 30 05 00 00 	lea    0x530(%rip),%rsi        # d99 <_IO_stdin_used+0xb9>
 869:	bf 01 00 00 00       	mov    $0x1,%edi
 86e:	31 c0                	xor    %eax,%eax
 870:	e8 db fe ff ff       	callq  750 <__printf_chk@plt>
 875:	bf 18 00 00 00       	mov    $0x18,%edi
 87a:	e8 c1 fe ff ff       	callq  740 <malloc@plt>
 87f:	48 8d 3d 7a 04 00 00 	lea    0x47a(%rip),%rdi        # d00 <_IO_stdin_used+0x20>
 886:	48 8d 50 08          	lea    0x8(%rax),%rdx
 88a:	48 89 c5             	mov    %rax,%rbp
 88d:	48 89 c6             	mov    %rax,%rsi
 890:	31 c0                	xor    %eax,%eax
 892:	e8 c9 fe ff ff       	callq  760 <__isoc99_scanf@plt>
 897:	48 89 df             	mov    %rbx,%rdi
 89a:	48 89 ee             	mov    %rbp,%rsi
 89d:	e8 6e 01 00 00       	callq  a10 <insert>
 8a2:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8a6:	48 8d 35 08 05 00 00 	lea    0x508(%rip),%rsi        # db5 <_IO_stdin_used+0xd5>
 8ad:	48 89 c3             	mov    %rax,%rbx
 8b0:	bf 01 00 00 00       	mov    $0x1,%edi
 8b5:	31 c0                	xor    %eax,%eax
 8b7:	e8 94 fe ff ff       	callq  750 <__printf_chk@plt>
 8bc:	48 89 df             	mov    %rbx,%rdi
 8bf:	e8 ec 02 00 00       	callq  bb0 <print>
 8c4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8c8:	85 c0                	test   %eax,%eax
 8ca:	0f 85 4d ff ff ff    	jne    81d <main+0x9d>
 8d0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8dc:	00 00 
 8de:	75 0b                	jne    8eb <main+0x16b>
 8e0:	48 83 c4 28          	add    $0x28,%rsp
 8e4:	5b                   	pop    %rbx
 8e5:	5d                   	pop    %rbp
 8e6:	41 5c                	pop    %r12
 8e8:	41 5d                	pop    %r13
 8ea:	c3                   	retq   
 8eb:	e8 40 fe ff ff       	callq  730 <__stack_chk_fail@plt>

00000000000008f0 <_start>:
 8f0:	31 ed                	xor    %ebp,%ebp
 8f2:	49 89 d1             	mov    %rdx,%r9
 8f5:	5e                   	pop    %rsi
 8f6:	48 89 e2             	mov    %rsp,%rdx
 8f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8fd:	50                   	push   %rax
 8fe:	54                   	push   %rsp
 8ff:	4c 8d 05 ca 03 00 00 	lea    0x3ca(%rip),%r8        # cd0 <__libc_csu_fini>
 906:	48 8d 0d 53 03 00 00 	lea    0x353(%rip),%rcx        # c60 <__libc_csu_init>
 90d:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 780 <main>
 914:	ff 15 c6 16 20 00    	callq  *0x2016c6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 91a:	f4                   	hlt    
 91b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000920 <deregister_tm_clones>:
 920:	48 8d 3d e9 16 20 00 	lea    0x2016e9(%rip),%rdi        # 202010 <__TMC_END__>
 927:	55                   	push   %rbp
 928:	48 8d 05 e1 16 20 00 	lea    0x2016e1(%rip),%rax        # 202010 <__TMC_END__>
 92f:	48 39 f8             	cmp    %rdi,%rax
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	74 19                	je     950 <deregister_tm_clones+0x30>
 937:	48 8b 05 9a 16 20 00 	mov    0x20169a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 93e:	48 85 c0             	test   %rax,%rax
 941:	74 0d                	je     950 <deregister_tm_clones+0x30>
 943:	5d                   	pop    %rbp
 944:	ff e0                	jmpq   *%rax
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 

0000000000000960 <register_tm_clones>:
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <__TMC_END__>
 967:	48 8d 35 a2 16 20 00 	lea    0x2016a2(%rip),%rsi        # 202010 <__TMC_END__>
 96e:	55                   	push   %rbp
 96f:	48 29 fe             	sub    %rdi,%rsi
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	48 c1 fe 03          	sar    $0x3,%rsi
 979:	48 89 f0             	mov    %rsi,%rax
 97c:	48 c1 e8 3f          	shr    $0x3f,%rax
 980:	48 01 c6             	add    %rax,%rsi
 983:	48 d1 fe             	sar    %rsi
 986:	74 18                	je     9a0 <register_tm_clones+0x40>
 988:	48 8b 05 61 16 20 00 	mov    0x201661(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 98f:	48 85 c0             	test   %rax,%rax
 992:	74 0c                	je     9a0 <register_tm_clones+0x40>
 994:	5d                   	pop    %rbp
 995:	ff e0                	jmpq   *%rax
 997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 99e:	00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <__do_global_dtors_aux>:
 9b0:	80 3d 59 16 20 00 00 	cmpb   $0x0,0x201659(%rip)        # 202010 <__TMC_END__>
 9b7:	75 2f                	jne    9e8 <__do_global_dtors_aux+0x38>
 9b9:	48 83 3d 37 16 20 00 	cmpq   $0x0,0x201637(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9c0:	00 
 9c1:	55                   	push   %rbp
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	74 0c                	je     9d3 <__do_global_dtors_aux+0x23>
 9c7:	48 8b 3d 3a 16 20 00 	mov    0x20163a(%rip),%rdi        # 202008 <__dso_handle>
 9ce:	e8 9d fd ff ff       	callq  770 <__cxa_finalize@plt>
 9d3:	e8 48 ff ff ff       	callq  920 <deregister_tm_clones>
 9d8:	c6 05 31 16 20 00 01 	movb   $0x1,0x201631(%rip)        # 202010 <__TMC_END__>
 9df:	5d                   	pop    %rbp
 9e0:	c3                   	retq   
 9e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9e8:	f3 c3                	repz retq 
 9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009f0 <frame_dummy>:
 9f0:	55                   	push   %rbp
 9f1:	48 89 e5             	mov    %rsp,%rbp
 9f4:	5d                   	pop    %rbp
 9f5:	e9 66 ff ff ff       	jmpq   960 <register_tm_clones>
 9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a00 <meau>:
 a00:	48 8d 3d dd 02 00 00 	lea    0x2dd(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 a07:	e9 14 fd ff ff       	jmpq   720 <puts@plt>
 a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a10 <insert>:
 a10:	48 85 ff             	test   %rdi,%rdi
 a13:	74 5b                	je     a70 <insert+0x60>
 a15:	4c 8b 06             	mov    (%rsi),%r8
 a18:	48 89 fa             	mov    %rdi,%rdx
 a1b:	eb 12                	jmp    a2f <insert+0x1f>
 a1d:	0f 1f 00             	nopl   (%rax)
 a20:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a24:	49 89 d1             	mov    %rdx,%r9
 a27:	48 85 c9             	test   %rcx,%rcx
 a2a:	74 24                	je     a50 <insert+0x40>
 a2c:	48 89 ca             	mov    %rcx,%rdx
 a2f:	4c 3b 02             	cmp    (%rdx),%r8
 a32:	7f ec                	jg     a20 <insert+0x10>
 a34:	48 39 fa             	cmp    %rdi,%rdx
 a37:	74 4f                	je     a88 <insert+0x78>
 a39:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a3d:	48 89 f8             	mov    %rdi,%rax
 a40:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a44:	83 05 c9 15 20 00 01 	addl   $0x1,0x2015c9(%rip)        # 202014 <n>
 a4b:	c3                   	retq   
 a4c:	0f 1f 40 00          	nopl   0x0(%rax)
 a50:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a54:	48 89 f8             	mov    %rdi,%rax
 a57:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a5e:	00 
 a5f:	83 05 ae 15 20 00 01 	addl   $0x1,0x2015ae(%rip)        # 202014 <n>
 a66:	c3                   	retq   
 a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a6e:	00 00 
 a70:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a77:	00 
 a78:	48 89 f0             	mov    %rsi,%rax
 a7b:	83 05 92 15 20 00 01 	addl   $0x1,0x201592(%rip)        # 202014 <n>
 a82:	c3                   	retq   
 a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a88:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a8c:	48 89 f0             	mov    %rsi,%rax
 a8f:	83 05 7e 15 20 00 01 	addl   $0x1,0x20157e(%rip)        # 202014 <n>
 a96:	c3                   	retq   
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 

0000000000000aa0 <creat>:
 aa0:	41 54                	push   %r12
 aa2:	55                   	push   %rbp
 aa3:	bf 18 00 00 00       	mov    $0x18,%edi
 aa8:	53                   	push   %rbx
 aa9:	31 ed                	xor    %ebp,%ebp
 aab:	e8 90 fc ff ff       	callq  740 <malloc@plt>
 ab0:	48 8d 3d 49 02 00 00 	lea    0x249(%rip),%rdi        # d00 <_IO_stdin_used+0x20>
 ab7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 abb:	48 89 c3             	mov    %rax,%rbx
 abe:	48 89 c6             	mov    %rax,%rsi
 ac1:	31 c0                	xor    %eax,%eax
 ac3:	e8 98 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 ac8:	66 0f ef c9          	pxor   %xmm1,%xmm1
 acc:	0f 2e 4b 08          	ucomiss 0x8(%rbx),%xmm1
 ad0:	7a 02                	jp     ad4 <creat+0x34>
 ad2:	74 44                	je     b18 <creat+0x78>
 ad4:	4c 8d 25 25 02 00 00 	lea    0x225(%rip),%r12        # d00 <_IO_stdin_used+0x20>
 adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ae0:	48 89 de             	mov    %rbx,%rsi
 ae3:	48 89 ef             	mov    %rbp,%rdi
 ae6:	e8 25 ff ff ff       	callq  a10 <insert>
 aeb:	bf 18 00 00 00       	mov    $0x18,%edi
 af0:	48 89 c5             	mov    %rax,%rbp
 af3:	e8 48 fc ff ff       	callq  740 <malloc@plt>
 af8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 afc:	48 89 c3             	mov    %rax,%rbx
 aff:	48 89 c6             	mov    %rax,%rsi
 b02:	4c 89 e7             	mov    %r12,%rdi
 b05:	31 c0                	xor    %eax,%eax
 b07:	e8 54 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 b0c:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b10:	0f 2e 43 08          	ucomiss 0x8(%rbx),%xmm0
 b14:	7a ca                	jp     ae0 <creat+0x40>
 b16:	75 c8                	jne    ae0 <creat+0x40>
 b18:	48 89 df             	mov    %rbx,%rdi
 b1b:	e8 e0 fb ff ff       	callq  700 <free@plt>
 b20:	48 89 e8             	mov    %rbp,%rax
 b23:	5b                   	pop    %rbx
 b24:	5d                   	pop    %rbp
 b25:	41 5c                	pop    %r12
 b27:	c3                   	retq   
 b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b2f:	00 

0000000000000b30 <del>:
 b30:	53                   	push   %rbx
 b31:	48 89 fb             	mov    %rdi,%rbx
 b34:	48 83 ec 10          	sub    $0x10,%rsp
 b38:	eb 11                	jmp    b4b <del+0x1b>
 b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b40:	48 85 c0             	test   %rax,%rax
 b43:	48 89 fa             	mov    %rdi,%rdx
 b46:	74 30                	je     b78 <del+0x48>
 b48:	48 89 c7             	mov    %rax,%rdi
 b4b:	48 39 37             	cmp    %rsi,(%rdi)
 b4e:	48 8b 47 10          	mov    0x10(%rdi),%rax
 b52:	75 ec                	jne    b40 <del+0x10>
 b54:	48 85 c0             	test   %rax,%rax
 b57:	74 1f                	je     b78 <del+0x48>
 b59:	48 39 df             	cmp    %rbx,%rdi
 b5c:	74 32                	je     b90 <del+0x60>
 b5e:	48 89 42 10          	mov    %rax,0x10(%rdx)
 b62:	83 2d ab 14 20 00 01 	subl   $0x1,0x2014ab(%rip)        # 202014 <n>
 b69:	48 83 c4 10          	add    $0x10,%rsp
 b6d:	48 89 d8             	mov    %rbx,%rax
 b70:	5b                   	pop    %rbx
 b71:	c3                   	retq   
 b72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b78:	48 8d 3d 88 01 00 00 	lea    0x188(%rip),%rdi        # d07 <_IO_stdin_used+0x27>
 b7f:	e8 9c fb ff ff       	callq  720 <puts@plt>
 b84:	48 83 c4 10          	add    $0x10,%rsp
 b88:	48 89 d8             	mov    %rbx,%rax
 b8b:	5b                   	pop    %rbx
 b8c:	c3                   	retq   
 b8d:	0f 1f 00             	nopl   (%rax)
 b90:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b95:	e8 66 fb ff ff       	callq  700 <free@plt>
 b9a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b9f:	83 2d 6e 14 20 00 01 	subl   $0x1,0x20146e(%rip)        # 202014 <n>
 ba6:	48 83 c4 10          	add    $0x10,%rsp
 baa:	5b                   	pop    %rbx
 bab:	c3                   	retq   
 bac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000bb0 <print>:
 bb0:	55                   	push   %rbp
 bb1:	53                   	push   %rbx
 bb2:	48 89 fb             	mov    %rdi,%rbx
 bb5:	48 83 ec 08          	sub    $0x8,%rsp
 bb9:	8b 15 55 14 20 00    	mov    0x201455(%rip),%edx        # 202014 <n>
 bbf:	85 d2                	test   %edx,%edx
 bc1:	0f 84 81 00 00 00    	je     c48 <print+0x98>
 bc7:	83 fa 01             	cmp    $0x1,%edx
 bca:	74 64                	je     c30 <print+0x80>
 bcc:	48 8d 35 72 01 00 00 	lea    0x172(%rip),%rsi        # d45 <_IO_stdin_used+0x65>
 bd3:	bf 01 00 00 00       	mov    $0x1,%edi
 bd8:	31 c0                	xor    %eax,%eax
 bda:	e8 71 fb ff ff       	callq  750 <__printf_chk@plt>
 bdf:	48 85 db             	test   %rbx,%rbx
 be2:	74 33                	je     c17 <print+0x67>
 be4:	48 8d 2d 76 01 00 00 	lea    0x176(%rip),%rbp        # d61 <_IO_stdin_used+0x81>
 beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bf0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bf4:	48 8b 13             	mov    (%rbx),%rdx
 bf7:	48 89 ee             	mov    %rbp,%rsi
 bfa:	bf 01 00 00 00       	mov    $0x1,%edi
 bff:	b8 01 00 00 00       	mov    $0x1,%eax
 c04:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c09:	e8 42 fb ff ff       	callq  750 <__printf_chk@plt>
 c0e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c12:	48 85 db             	test   %rbx,%rbx
 c15:	75 d9                	jne    bf0 <print+0x40>
 c17:	48 83 c4 08          	add    $0x8,%rsp
 c1b:	bf 0a 00 00 00       	mov    $0xa,%edi
 c20:	5b                   	pop    %rbx
 c21:	5d                   	pop    %rbp
 c22:	e9 e9 fa ff ff       	jmpq   710 <putchar@plt>
 c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c2e:	00 00 
 c30:	48 8d 35 f4 00 00 00 	lea    0xf4(%rip),%rsi        # d2b <_IO_stdin_used+0x4b>
 c37:	bf 01 00 00 00       	mov    $0x1,%edi
 c3c:	31 c0                	xor    %eax,%eax
 c3e:	e8 0d fb ff ff       	callq  750 <__printf_chk@plt>
 c43:	eb 9a                	jmp    bdf <print+0x2f>
 c45:	0f 1f 00             	nopl   (%rax)
 c48:	48 8d 3d c3 00 00 00 	lea    0xc3(%rip),%rdi        # d12 <_IO_stdin_used+0x32>
 c4f:	e8 cc fa ff ff       	callq  720 <puts@plt>
 c54:	eb 89                	jmp    bdf <print+0x2f>
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 

0000000000000c60 <__libc_csu_init>:
 c60:	41 57                	push   %r15
 c62:	41 56                	push   %r14
 c64:	49 89 d7             	mov    %rdx,%r15
 c67:	41 55                	push   %r13
 c69:	41 54                	push   %r12
 c6b:	4c 8d 25 16 11 20 00 	lea    0x201116(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c72:	55                   	push   %rbp
 c73:	48 8d 2d 16 11 20 00 	lea    0x201116(%rip),%rbp        # 201d90 <__init_array_end>
 c7a:	53                   	push   %rbx
 c7b:	41 89 fd             	mov    %edi,%r13d
 c7e:	49 89 f6             	mov    %rsi,%r14
 c81:	4c 29 e5             	sub    %r12,%rbp
 c84:	48 83 ec 08          	sub    $0x8,%rsp
 c88:	48 c1 fd 03          	sar    $0x3,%rbp
 c8c:	e8 3f fa ff ff       	callq  6d0 <_init>
 c91:	48 85 ed             	test   %rbp,%rbp
 c94:	74 20                	je     cb6 <__libc_csu_init+0x56>
 c96:	31 db                	xor    %ebx,%ebx
 c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c9f:	00 
 ca0:	4c 89 fa             	mov    %r15,%rdx
 ca3:	4c 89 f6             	mov    %r14,%rsi
 ca6:	44 89 ef             	mov    %r13d,%edi
 ca9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cad:	48 83 c3 01          	add    $0x1,%rbx
 cb1:	48 39 dd             	cmp    %rbx,%rbp
 cb4:	75 ea                	jne    ca0 <__libc_csu_init+0x40>
 cb6:	48 83 c4 08          	add    $0x8,%rsp
 cba:	5b                   	pop    %rbx
 cbb:	5d                   	pop    %rbp
 cbc:	41 5c                	pop    %r12
 cbe:	41 5d                	pop    %r13
 cc0:	41 5e                	pop    %r14
 cc2:	41 5f                	pop    %r15
 cc4:	c3                   	retq   
 cc5:	90                   	nop
 cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ccd:	00 00 00 

0000000000000cd0 <__libc_csu_fini>:
 cd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cd4 <_fini>:
 cd4:	48 83 ec 08          	sub    $0x8,%rsp
 cd8:	48 83 c4 08          	add    $0x8,%rsp
 cdc:	c3                   	retq   
