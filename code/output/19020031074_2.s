
input/19020031074_2.elf:     file format elf64-x86-64


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
 720:	ff 35 62 18 20 00    	pushq  0x201862(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 726:	ff 25 64 18 20 00    	jmpq   *0x201864(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 72c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000730 <putchar@plt>:
 730:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201f98 <putchar@GLIBC_2.2.5>
 736:	68 00 00 00 00       	pushq  $0x0
 73b:	e9 e0 ff ff ff       	jmpq   720 <.plt>

0000000000000740 <puts@plt>:
 740:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 746:	68 01 00 00 00       	pushq  $0x1
 74b:	e9 d0 ff ff ff       	jmpq   720 <.plt>

0000000000000750 <exp@plt>:
 750:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201fa8 <exp@GLIBC_2.2.5>
 756:	68 02 00 00 00       	pushq  $0x2
 75b:	e9 c0 ff ff ff       	jmpq   720 <.plt>

0000000000000760 <__stack_chk_fail@plt>:
 760:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 766:	68 03 00 00 00       	pushq  $0x3
 76b:	e9 b0 ff ff ff       	jmpq   720 <.plt>

0000000000000770 <cos@plt>:
 770:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201fb8 <cos@GLIBC_2.2.5>
 776:	68 04 00 00 00       	pushq  $0x4
 77b:	e9 a0 ff ff ff       	jmpq   720 <.plt>

0000000000000780 <__printf_chk@plt>:
 780:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 786:	68 05 00 00 00       	pushq  $0x5
 78b:	e9 90 ff ff ff       	jmpq   720 <.plt>

0000000000000790 <sin@plt>:
 790:	ff 25 32 18 20 00    	jmpq   *0x201832(%rip)        # 201fc8 <sin@GLIBC_2.2.5>
 796:	68 06 00 00 00       	pushq  $0x6
 79b:	e9 80 ff ff ff       	jmpq   720 <.plt>

00000000000007a0 <__isoc99_scanf@plt>:
 7a0:	ff 25 2a 18 20 00    	jmpq   *0x20182a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 7a6:	68 07 00 00 00       	pushq  $0x7
 7ab:	e9 70 ff ff ff       	jmpq   720 <.plt>

Disassembly of section .plt.got:

00000000000007b0 <__cxa_finalize@plt>:
 7b0:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007c0 <main>:
 7c0:	41 54                	push   %r12
 7c2:	55                   	push   %rbp
 7c3:	48 8d 35 ca 04 00 00 	lea    0x4ca(%rip),%rsi        # c94 <_IO_stdin_used+0x4>
 7ca:	53                   	push   %rbx
 7cb:	bf 01 00 00 00       	mov    $0x1,%edi
 7d0:	4c 8d 25 09 03 00 00 	lea    0x309(%rip),%r12        # ae0 <f1>
 7d7:	48 83 ec 40          	sub    $0x40,%rsp
 7db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7e2:	00 00 
 7e4:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 7e9:	31 c0                	xor    %eax,%eax
 7eb:	48 8d 6c 24 2c       	lea    0x2c(%rsp),%rbp
 7f0:	e8 8b ff ff ff       	callq  780 <__printf_chk@plt>
 7f5:	bf 0a 00 00 00       	mov    $0xa,%edi
 7fa:	e8 31 ff ff ff       	callq  730 <putchar@plt>
 7ff:	90                   	nop
 800:	48 8d 35 a8 04 00 00 	lea    0x4a8(%rip),%rsi        # caf <_IO_stdin_used+0x1f>
 807:	bf 01 00 00 00       	mov    $0x1,%edi
 80c:	31 c0                	xor    %eax,%eax
 80e:	e8 6d ff ff ff       	callq  780 <__printf_chk@plt>
 813:	48 8d 3d b0 04 00 00 	lea    0x4b0(%rip),%rdi        # cca <_IO_stdin_used+0x3a>
 81a:	31 c0                	xor    %eax,%eax
 81c:	48 89 ee             	mov    %rbp,%rsi
 81f:	e8 7c ff ff ff       	callq  7a0 <__isoc99_scanf@plt>
 824:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
 828:	85 c0                	test   %eax,%eax
 82a:	0f 84 70 01 00 00    	je     9a0 <main+0x1e0>
 830:	bf 0a 00 00 00       	mov    $0xa,%edi
 835:	e8 f6 fe ff ff       	callq  730 <putchar@plt>
 83a:	48 8d 35 8c 04 00 00 	lea    0x48c(%rip),%rsi        # ccd <_IO_stdin_used+0x3d>
 841:	bf 01 00 00 00       	mov    $0x1,%edi
 846:	31 c0                	xor    %eax,%eax
 848:	e8 33 ff ff ff       	callq  780 <__printf_chk@plt>
 84d:	48 8d 54 24 34       	lea    0x34(%rsp),%rdx
 852:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
 857:	48 8d 3d 89 04 00 00 	lea    0x489(%rip),%rdi        # ce7 <_IO_stdin_used+0x57>
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 3b ff ff ff       	callq  7a0 <__isoc99_scanf@plt>
 865:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
 869:	83 f8 02             	cmp    $0x2,%eax
 86c:	0f 84 1e 01 00 00    	je     990 <main+0x1d0>
 872:	83 f8 03             	cmp    $0x3,%eax
 875:	0f 84 05 01 00 00    	je     980 <main+0x1c0>
 87b:	83 f8 01             	cmp    $0x1,%eax
 87e:	49 0f 44 dc          	cmove  %r12,%rbx
 882:	bf 0a 00 00 00       	mov    $0xa,%edi
 887:	e8 a4 fe ff ff       	callq  730 <putchar@plt>
 88c:	48 8d 3d 59 04 00 00 	lea    0x459(%rip),%rdi        # cec <_IO_stdin_used+0x5c>
 893:	e8 a8 fe ff ff       	callq  740 <puts@plt>
 898:	f3 0f 10 74 24 34    	movss  0x34(%rsp),%xmm6
 89e:	0f 28 c6             	movaps %xmm6,%xmm0
 8a1:	f3 0f 10 4c 24 30    	movss  0x30(%rsp),%xmm1
 8a7:	0f 2e f1             	ucomiss %xmm1,%xmm6
 8aa:	f3 0f 5c c1          	subss  %xmm1,%xmm0
 8ae:	f3 0f 11 74 24 1c    	movss  %xmm6,0x1c(%rsp)
 8b4:	66 0f ef d2          	pxor   %xmm2,%xmm2
 8b8:	f3 0f 5e 05 40 04 00 	divss  0x440(%rip),%xmm0        # d00 <_IO_stdin_used+0x70>
 8bf:	00 
 8c0:	f3 0f 11 44 24 0c    	movss  %xmm0,0xc(%rsp)
 8c6:	0f 86 f4 00 00 00    	jbe    9c0 <main+0x200>
 8cc:	0f 1f 40 00          	nopl   0x0(%rax)
 8d0:	f3 0f 11 54 24 18    	movss  %xmm2,0x18(%rsp)
 8d6:	0f 28 c1             	movaps %xmm1,%xmm0
 8d9:	f3 0f 11 4c 24 14    	movss  %xmm1,0x14(%rsp)
 8df:	ff d3                	callq  *%rbx
 8e1:	f3 0f 10 4c 24 14    	movss  0x14(%rsp),%xmm1
 8e7:	f3 0f 58 4c 24 0c    	addss  0xc(%rsp),%xmm1
 8ed:	f3 0f 11 44 24 10    	movss  %xmm0,0x10(%rsp)
 8f3:	f3 0f 11 4c 24 14    	movss  %xmm1,0x14(%rsp)
 8f9:	0f 28 c1             	movaps %xmm1,%xmm0
 8fc:	ff d3                	callq  *%rbx
 8fe:	f3 0f 58 44 24 10    	addss  0x10(%rsp),%xmm0
 904:	f3 0f 10 6c 24 1c    	movss  0x1c(%rsp),%xmm5
 90a:	f3 0f 10 4c 24 14    	movss  0x14(%rsp),%xmm1
 910:	0f 2e e9             	ucomiss %xmm1,%xmm5
 913:	f3 0f 10 54 24 18    	movss  0x18(%rsp),%xmm2
 919:	f3 0f 59 44 24 0c    	mulss  0xc(%rsp),%xmm0
 91f:	f3 0f 59 05 dd 03 00 	mulss  0x3dd(%rip),%xmm0        # d04 <_IO_stdin_used+0x74>
 926:	00 
 927:	f3 0f 58 d0          	addss  %xmm0,%xmm2
 92b:	77 a3                	ja     8d0 <main+0x110>
 92d:	66 0f ef c0          	pxor   %xmm0,%xmm0
 931:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
 935:	48 8d 35 ad 03 00 00 	lea    0x3ad(%rip),%rsi        # ce9 <_IO_stdin_used+0x59>
 93c:	bf 01 00 00 00       	mov    $0x1,%edi
 941:	b8 01 00 00 00       	mov    $0x1,%eax
 946:	e8 35 fe ff ff       	callq  780 <__printf_chk@plt>
 94b:	48 8d 3d aa 03 00 00 	lea    0x3aa(%rip),%rdi        # cfc <_IO_stdin_used+0x6c>
 952:	e8 e9 fd ff ff       	callq  740 <puts@plt>
 957:	48 8d 35 36 03 00 00 	lea    0x336(%rip),%rsi        # c94 <_IO_stdin_used+0x4>
 95e:	bf 01 00 00 00       	mov    $0x1,%edi
 963:	31 c0                	xor    %eax,%eax
 965:	e8 16 fe ff ff       	callq  780 <__printf_chk@plt>
 96a:	bf 0a 00 00 00       	mov    $0xa,%edi
 96f:	e8 bc fd ff ff       	callq  730 <putchar@plt>
 974:	e9 87 fe ff ff       	jmpq   800 <main+0x40>
 979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 980:	48 8d 1d 99 01 00 00 	lea    0x199(%rip),%rbx        # b20 <f3>
 987:	e9 f6 fe ff ff       	jmpq   882 <main+0xc2>
 98c:	0f 1f 40 00          	nopl   0x0(%rax)
 990:	48 8d 1d 69 01 00 00 	lea    0x169(%rip),%rbx        # b00 <f2>
 997:	e9 e6 fe ff ff       	jmpq   882 <main+0xc2>
 99c:	0f 1f 40 00          	nopl   0x0(%rax)
 9a0:	31 c0                	xor    %eax,%eax
 9a2:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 9a7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 9ae:	00 00 
 9b0:	75 17                	jne    9c9 <main+0x209>
 9b2:	48 83 c4 40          	add    $0x40,%rsp
 9b6:	5b                   	pop    %rbx
 9b7:	5d                   	pop    %rbp
 9b8:	41 5c                	pop    %r12
 9ba:	c3                   	retq   
 9bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 9c0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 9c4:	e9 6c ff ff ff       	jmpq   935 <main+0x175>
 9c9:	e8 92 fd ff ff       	callq  760 <__stack_chk_fail@plt>
 9ce:	66 90                	xchg   %ax,%ax

00000000000009d0 <_start>:
 9d0:	31 ed                	xor    %ebp,%ebp
 9d2:	49 89 d1             	mov    %rdx,%r9
 9d5:	5e                   	pop    %rsi
 9d6:	48 89 e2             	mov    %rsp,%rdx
 9d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 9dd:	50                   	push   %rax
 9de:	54                   	push   %rsp
 9df:	4c 8d 05 9a 02 00 00 	lea    0x29a(%rip),%r8        # c80 <__libc_csu_fini>
 9e6:	48 8d 0d 23 02 00 00 	lea    0x223(%rip),%rcx        # c10 <__libc_csu_init>
 9ed:	48 8d 3d cc fd ff ff 	lea    -0x234(%rip),%rdi        # 7c0 <main>
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
 aae:	e8 fd fc ff ff       	callq  7b0 <__cxa_finalize@plt>
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

0000000000000ae0 <f1>:
 ae0:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 ae4:	48 83 ec 08          	sub    $0x8,%rsp
 ae8:	e8 a3 fc ff ff       	callq  790 <sin@plt>
 aed:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 af1:	48 83 c4 08          	add    $0x8,%rsp
 af5:	c3                   	retq   
 af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 afd:	00 00 00 

0000000000000b00 <f2>:
 b00:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 b04:	48 83 ec 08          	sub    $0x8,%rsp
 b08:	e8 63 fc ff ff       	callq  770 <cos@plt>
 b0d:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 b11:	48 83 c4 08          	add    $0x8,%rsp
 b15:	c3                   	retq   
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 

0000000000000b20 <f3>:
 b20:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 b24:	48 83 ec 08          	sub    $0x8,%rsp
 b28:	e8 23 fc ff ff       	callq  750 <exp@plt>
 b2d:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 b31:	48 83 c4 08          	add    $0x8,%rsp
 b35:	c3                   	retq   
 b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b3d:	00 00 00 

0000000000000b40 <print>:
 b40:	48 8d 35 4d 01 00 00 	lea    0x14d(%rip),%rsi        # c94 <_IO_stdin_used+0x4>
 b47:	bf 01 00 00 00       	mov    $0x1,%edi
 b4c:	31 c0                	xor    %eax,%eax
 b4e:	e9 2d fc ff ff       	jmpq   780 <__printf_chk@plt>
 b53:	0f 1f 00             	nopl   (%rax)
 b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b5d:	00 00 00 

0000000000000b60 <intergal>:
 b60:	0f 28 d0             	movaps %xmm0,%xmm2
 b63:	53                   	push   %rbx
 b64:	0f 28 c1             	movaps %xmm1,%xmm0
 b67:	48 83 ec 20          	sub    $0x20,%rsp
 b6b:	f3 0f 5c c2          	subss  %xmm2,%xmm0
 b6f:	f3 0f 11 4c 24 1c    	movss  %xmm1,0x1c(%rsp)
 b75:	0f 2e ca             	ucomiss %xmm2,%xmm1
 b78:	f3 0f 5e 05 80 01 00 	divss  0x180(%rip),%xmm0        # d00 <_IO_stdin_used+0x70>
 b7f:	00 
 b80:	f3 0f 11 44 24 0c    	movss  %xmm0,0xc(%rsp)
 b86:	76 78                	jbe    c00 <intergal+0xa0>
 b88:	66 0f ef c9          	pxor   %xmm1,%xmm1
 b8c:	48 89 fb             	mov    %rdi,%rbx
 b8f:	90                   	nop
 b90:	f3 0f 11 4c 24 18    	movss  %xmm1,0x18(%rsp)
 b96:	0f 28 c2             	movaps %xmm2,%xmm0
 b99:	f3 0f 11 54 24 14    	movss  %xmm2,0x14(%rsp)
 b9f:	ff d3                	callq  *%rbx
 ba1:	f3 0f 10 54 24 14    	movss  0x14(%rsp),%xmm2
 ba7:	f3 0f 58 54 24 0c    	addss  0xc(%rsp),%xmm2
 bad:	f3 0f 11 44 24 10    	movss  %xmm0,0x10(%rsp)
 bb3:	f3 0f 11 54 24 14    	movss  %xmm2,0x14(%rsp)
 bb9:	0f 28 c2             	movaps %xmm2,%xmm0
 bbc:	ff d3                	callq  *%rbx
 bbe:	f3 0f 58 44 24 10    	addss  0x10(%rsp),%xmm0
 bc4:	f3 0f 10 6c 24 1c    	movss  0x1c(%rsp),%xmm5
 bca:	f3 0f 10 54 24 14    	movss  0x14(%rsp),%xmm2
 bd0:	0f 2e ea             	ucomiss %xmm2,%xmm5
 bd3:	f3 0f 10 4c 24 18    	movss  0x18(%rsp),%xmm1
 bd9:	f3 0f 59 44 24 0c    	mulss  0xc(%rsp),%xmm0
 bdf:	f3 0f 59 05 1d 01 00 	mulss  0x11d(%rip),%xmm0        # d04 <_IO_stdin_used+0x74>
 be6:	00 
 be7:	f3 0f 58 c8          	addss  %xmm0,%xmm1
 beb:	77 a3                	ja     b90 <intergal+0x30>
 bed:	48 83 c4 20          	add    $0x20,%rsp
 bf1:	0f 28 c1             	movaps %xmm1,%xmm0
 bf4:	5b                   	pop    %rbx
 bf5:	c3                   	retq   
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 
 c00:	66 0f ef c9          	pxor   %xmm1,%xmm1
 c04:	48 83 c4 20          	add    $0x20,%rsp
 c08:	5b                   	pop    %rbx
 c09:	0f 28 c1             	movaps %xmm1,%xmm0
 c0c:	c3                   	retq   
 c0d:	0f 1f 00             	nopl   (%rax)

0000000000000c10 <__libc_csu_init>:
 c10:	41 57                	push   %r15
 c12:	41 56                	push   %r14
 c14:	49 89 d7             	mov    %rdx,%r15
 c17:	41 55                	push   %r13
 c19:	41 54                	push   %r12
 c1b:	4c 8d 25 4e 11 20 00 	lea    0x20114e(%rip),%r12        # 201d70 <__frame_dummy_init_array_entry>
 c22:	55                   	push   %rbp
 c23:	48 8d 2d 4e 11 20 00 	lea    0x20114e(%rip),%rbp        # 201d78 <__init_array_end>
 c2a:	53                   	push   %rbx
 c2b:	41 89 fd             	mov    %edi,%r13d
 c2e:	49 89 f6             	mov    %rsi,%r14
 c31:	4c 29 e5             	sub    %r12,%rbp
 c34:	48 83 ec 08          	sub    $0x8,%rsp
 c38:	48 c1 fd 03          	sar    $0x3,%rbp
 c3c:	e8 c7 fa ff ff       	callq  708 <_init>
 c41:	48 85 ed             	test   %rbp,%rbp
 c44:	74 20                	je     c66 <__libc_csu_init+0x56>
 c46:	31 db                	xor    %ebx,%ebx
 c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c4f:	00 
 c50:	4c 89 fa             	mov    %r15,%rdx
 c53:	4c 89 f6             	mov    %r14,%rsi
 c56:	44 89 ef             	mov    %r13d,%edi
 c59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c5d:	48 83 c3 01          	add    $0x1,%rbx
 c61:	48 39 dd             	cmp    %rbx,%rbp
 c64:	75 ea                	jne    c50 <__libc_csu_init+0x40>
 c66:	48 83 c4 08          	add    $0x8,%rsp
 c6a:	5b                   	pop    %rbx
 c6b:	5d                   	pop    %rbp
 c6c:	41 5c                	pop    %r12
 c6e:	41 5d                	pop    %r13
 c70:	41 5e                	pop    %r14
 c72:	41 5f                	pop    %r15
 c74:	c3                   	retq   
 c75:	90                   	nop
 c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c7d:	00 00 00 

0000000000000c80 <__libc_csu_fini>:
 c80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c84 <_fini>:
 c84:	48 83 ec 08          	sub    $0x8,%rsp
 c88:	48 83 c4 08          	add    $0x8,%rsp
 c8c:	c3                   	retq   
