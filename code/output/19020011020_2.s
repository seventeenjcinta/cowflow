
input/19020011020_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d 63 04 00 00 	lea    0x463(%rip),%rdi        # bfe <_IO_stdin_used+0x1e>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	31 db                	xor    %ebx,%ebx
 79f:	48 83 ec 28          	sub    $0x28,%rsp
 7a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7aa:	00 00 
 7ac:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7b1:	31 c0                	xor    %eax,%eax
 7b3:	e8 68 ff ff ff       	callq  720 <puts@plt>
 7b8:	48 8d 3d b9 04 00 00 	lea    0x4b9(%rip),%rdi        # c78 <_IO_stdin_used+0x98>
 7bf:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c4:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c9:	e8 52 ff ff ff       	callq  720 <puts@plt>
 7ce:	eb 52                	jmp    822 <main+0x92>
 7d0:	83 f8 02             	cmp    $0x2,%eax
 7d3:	75 45                	jne    81a <main+0x8a>
 7d5:	48 8d 35 7d 04 00 00 	lea    0x47d(%rip),%rsi        # c59 <_IO_stdin_used+0x79>
 7dc:	bf 01 00 00 00       	mov    $0x1,%edi
 7e1:	31 c0                	xor    %eax,%eax
 7e3:	e8 78 ff ff ff       	callq  760 <__printf_chk@plt>
 7e8:	48 8d 3d 7e 04 00 00 	lea    0x47e(%rip),%rdi        # c6d <_IO_stdin_used+0x8d>
 7ef:	4c 89 ee             	mov    %r13,%rsi
 7f2:	31 c0                	xor    %eax,%eax
 7f4:	e8 77 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 7f9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7fe:	48 89 df             	mov    %rbx,%rdi
 801:	e8 ca 02 00 00       	callq  ad0 <del>
 806:	48 85 c0             	test   %rax,%rax
 809:	48 89 c3             	mov    %rax,%rbx
 80c:	74 08                	je     816 <main+0x86>
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 fa 01 00 00       	callq  a10 <print.part.0>
 816:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 81a:	85 c0                	test   %eax,%eax
 81c:	0f 84 b6 00 00 00    	je     8d8 <main+0x148>
 822:	48 8d 3d ec 03 00 00 	lea    0x3ec(%rip),%rdi        # c15 <_IO_stdin_used+0x35>
 829:	e8 f2 fe ff ff       	callq  720 <puts@plt>
 82e:	48 8d 3d fd 03 00 00 	lea    0x3fd(%rip),%rdi        # c32 <_IO_stdin_used+0x52>
 835:	e8 e6 fe ff ff       	callq  720 <puts@plt>
 83a:	48 8d 3d 00 04 00 00 	lea    0x400(%rip),%rdi        # c41 <_IO_stdin_used+0x61>
 841:	4c 89 e6             	mov    %r12,%rsi
 844:	31 c0                	xor    %eax,%eax
 846:	e8 25 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 84b:	48 8b 3d be 17 20 00 	mov    0x2017be(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 852:	e8 f9 fe ff ff       	callq  750 <_IO_getc@plt>
 857:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 85b:	83 f8 01             	cmp    $0x1,%eax
 85e:	0f 85 6c ff ff ff    	jne    7d0 <main+0x40>
 864:	48 8d 35 35 04 00 00 	lea    0x435(%rip),%rsi        # ca0 <_IO_stdin_used+0xc0>
 86b:	bf 01 00 00 00       	mov    $0x1,%edi
 870:	31 c0                	xor    %eax,%eax
 872:	e8 e9 fe ff ff       	callq  760 <__printf_chk@plt>
 877:	bf 18 00 00 00       	mov    $0x18,%edi
 87c:	e8 bf fe ff ff       	callq  740 <malloc@plt>
 881:	48 8d 3d bc 03 00 00 	lea    0x3bc(%rip),%rdi        # c44 <_IO_stdin_used+0x64>
 888:	48 8d 50 08          	lea    0x8(%rax),%rdx
 88c:	48 89 c5             	mov    %rax,%rbp
 88f:	48 89 c6             	mov    %rax,%rsi
 892:	31 c0                	xor    %eax,%eax
 894:	e8 d7 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 899:	48 89 df             	mov    %rbx,%rdi
 89c:	48 89 ee             	mov    %rbp,%rsi
 89f:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 8a6:	00 
 8a7:	e8 a4 01 00 00       	callq  a50 <insert>
 8ac:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8b0:	48 8d 35 93 03 00 00 	lea    0x393(%rip),%rsi        # c4a <_IO_stdin_used+0x6a>
 8b7:	48 89 c3             	mov    %rax,%rbx
 8ba:	bf 01 00 00 00       	mov    $0x1,%edi
 8bf:	31 c0                	xor    %eax,%eax
 8c1:	e8 9a fe ff ff       	callq  760 <__printf_chk@plt>
 8c6:	48 85 db             	test   %rbx,%rbx
 8c9:	0f 85 3f ff ff ff    	jne    80e <main+0x7e>
 8cf:	e9 42 ff ff ff       	jmpq   816 <main+0x86>
 8d4:	0f 1f 40 00          	nopl   0x0(%rax)
 8d8:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8dd:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8e4:	00 00 
 8e6:	75 0b                	jne    8f3 <main+0x163>
 8e8:	48 83 c4 28          	add    $0x28,%rsp
 8ec:	5b                   	pop    %rbx
 8ed:	5d                   	pop    %rbp
 8ee:	41 5c                	pop    %r12
 8f0:	41 5d                	pop    %r13
 8f2:	c3                   	retq   
 8f3:	e8 38 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 8f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8ff:	00 

0000000000000900 <_start>:
 900:	31 ed                	xor    %ebp,%ebp
 902:	49 89 d1             	mov    %rdx,%r9
 905:	5e                   	pop    %rsi
 906:	48 89 e2             	mov    %rsp,%rdx
 909:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 90d:	50                   	push   %rax
 90e:	54                   	push   %rsp
 90f:	4c 8d 05 ba 02 00 00 	lea    0x2ba(%rip),%r8        # bd0 <__libc_csu_fini>
 916:	48 8d 0d 43 02 00 00 	lea    0x243(%rip),%rcx        # b60 <__libc_csu_init>
 91d:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 790 <main>
 924:	ff 15 b6 16 20 00    	callq  *0x2016b6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 92a:	f4                   	hlt    
 92b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000930 <deregister_tm_clones>:
 930:	48 8d 3d d9 16 20 00 	lea    0x2016d9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 937:	55                   	push   %rbp
 938:	48 8d 05 d1 16 20 00 	lea    0x2016d1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 93f:	48 39 f8             	cmp    %rdi,%rax
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	74 19                	je     960 <deregister_tm_clones+0x30>
 947:	48 8b 05 8a 16 20 00 	mov    0x20168a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 94e:	48 85 c0             	test   %rax,%rax
 951:	74 0d                	je     960 <deregister_tm_clones+0x30>
 953:	5d                   	pop    %rbp
 954:	ff e0                	jmpq   *%rax
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 
 960:	5d                   	pop    %rbp
 961:	c3                   	retq   
 962:	0f 1f 40 00          	nopl   0x0(%rax)
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 

0000000000000970 <register_tm_clones>:
 970:	48 8d 3d 99 16 20 00 	lea    0x201699(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 977:	48 8d 35 92 16 20 00 	lea    0x201692(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 97e:	55                   	push   %rbp
 97f:	48 29 fe             	sub    %rdi,%rsi
 982:	48 89 e5             	mov    %rsp,%rbp
 985:	48 c1 fe 03          	sar    $0x3,%rsi
 989:	48 89 f0             	mov    %rsi,%rax
 98c:	48 c1 e8 3f          	shr    $0x3f,%rax
 990:	48 01 c6             	add    %rax,%rsi
 993:	48 d1 fe             	sar    %rsi
 996:	74 18                	je     9b0 <register_tm_clones+0x40>
 998:	48 8b 05 51 16 20 00 	mov    0x201651(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 99f:	48 85 c0             	test   %rax,%rax
 9a2:	74 0c                	je     9b0 <register_tm_clones+0x40>
 9a4:	5d                   	pop    %rbp
 9a5:	ff e0                	jmpq   *%rax
 9a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ae:	00 00 
 9b0:	5d                   	pop    %rbp
 9b1:	c3                   	retq   
 9b2:	0f 1f 40 00          	nopl   0x0(%rax)
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 

00000000000009c0 <__do_global_dtors_aux>:
 9c0:	80 3d 51 16 20 00 00 	cmpb   $0x0,0x201651(%rip)        # 202018 <completed.7698>
 9c7:	75 2f                	jne    9f8 <__do_global_dtors_aux+0x38>
 9c9:	48 83 3d 27 16 20 00 	cmpq   $0x0,0x201627(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9d0:	00 
 9d1:	55                   	push   %rbp
 9d2:	48 89 e5             	mov    %rsp,%rbp
 9d5:	74 0c                	je     9e3 <__do_global_dtors_aux+0x23>
 9d7:	48 8b 3d 2a 16 20 00 	mov    0x20162a(%rip),%rdi        # 202008 <__dso_handle>
 9de:	e8 9d fd ff ff       	callq  780 <__cxa_finalize@plt>
 9e3:	e8 48 ff ff ff       	callq  930 <deregister_tm_clones>
 9e8:	c6 05 29 16 20 00 01 	movb   $0x1,0x201629(%rip)        # 202018 <completed.7698>
 9ef:	5d                   	pop    %rbp
 9f0:	c3                   	retq   
 9f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9f8:	f3 c3                	repz retq 
 9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a00 <frame_dummy>:
 a00:	55                   	push   %rbp
 a01:	48 89 e5             	mov    %rsp,%rbp
 a04:	5d                   	pop    %rbp
 a05:	e9 66 ff ff ff       	jmpq   970 <register_tm_clones>
 a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a10 <print.part.0>:
 a10:	55                   	push   %rbp
 a11:	53                   	push   %rbx
 a12:	48 8d 2d cb 01 00 00 	lea    0x1cb(%rip),%rbp        # be4 <_IO_stdin_used+0x4>
 a19:	48 89 fb             	mov    %rdi,%rbx
 a1c:	48 83 ec 08          	sub    $0x8,%rsp
 a20:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a24:	48 8b 13             	mov    (%rbx),%rdx
 a27:	48 89 ee             	mov    %rbp,%rsi
 a2a:	bf 01 00 00 00       	mov    $0x1,%edi
 a2f:	b8 01 00 00 00       	mov    $0x1,%eax
 a34:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a39:	e8 22 fd ff ff       	callq  760 <__printf_chk@plt>
 a3e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a42:	48 85 db             	test   %rbx,%rbx
 a45:	75 d9                	jne    a20 <print.part.0+0x10>
 a47:	48 83 c4 08          	add    $0x8,%rsp
 a4b:	5b                   	pop    %rbx
 a4c:	5d                   	pop    %rbp
 a4d:	c3                   	retq   
 a4e:	66 90                	xchg   %ax,%ax

0000000000000a50 <insert>:
 a50:	48 85 ff             	test   %rdi,%rdi
 a53:	74 3b                	je     a90 <insert+0x40>
 a55:	4c 8b 06             	mov    (%rsi),%r8
 a58:	4c 3b 07             	cmp    (%rdi),%r8
 a5b:	48 89 f9             	mov    %rdi,%rcx
 a5e:	7f 13                	jg     a73 <insert+0x23>
 a60:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
 a64:	48 89 f0             	mov    %rsi,%rax
 a67:	c3                   	retq   
 a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a6f:	00 
 a70:	48 89 d1             	mov    %rdx,%rcx
 a73:	48 8b 51 10          	mov    0x10(%rcx),%rdx
 a77:	48 85 d2             	test   %rdx,%rdx
 a7a:	74 24                	je     aa0 <insert+0x50>
 a7c:	4c 3b 02             	cmp    (%rdx),%r8
 a7f:	7f ef                	jg     a70 <insert+0x20>
 a81:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 a85:	48 89 f8             	mov    %rdi,%rax
 a88:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a8c:	c3                   	retq   
 a8d:	0f 1f 00             	nopl   (%rax)
 a90:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a97:	00 
 a98:	48 89 f0             	mov    %rsi,%rax
 a9b:	c3                   	retq   
 a9c:	0f 1f 40 00          	nopl   0x0(%rax)
 aa0:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 aa4:	48 89 f8             	mov    %rdi,%rax
 aa7:	c3                   	retq   
 aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aaf:	00 

0000000000000ab0 <print>:
 ab0:	48 85 ff             	test   %rdi,%rdi
 ab3:	74 05                	je     aba <print+0xa>
 ab5:	e9 56 ff ff ff       	jmpq   a10 <print.part.0>
 aba:	c3                   	retq   
 abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ac0 <create>:
 ac0:	31 c0                	xor    %eax,%eax
 ac2:	c3                   	retq   
 ac3:	0f 1f 00             	nopl   (%rax)
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <del>:
 ad0:	53                   	push   %rbx
 ad1:	48 83 ec 10          	sub    $0x10,%rsp
 ad5:	48 85 ff             	test   %rdi,%rdi
 ad8:	74 73                	je     b4d <del+0x7d>
 ada:	48 39 37             	cmp    %rsi,(%rdi)
 add:	48 89 fb             	mov    %rdi,%rbx
 ae0:	48 8b 47 10          	mov    0x10(%rdi),%rax
 ae4:	48 89 f9             	mov    %rdi,%rcx
 ae7:	75 0d                	jne    af6 <del+0x26>
 ae9:	eb 4d                	jmp    b38 <del+0x68>
 aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 af0:	48 89 c1             	mov    %rax,%rcx
 af3:	48 89 d0             	mov    %rdx,%rax
 af6:	48 85 c0             	test   %rax,%rax
 af9:	74 25                	je     b20 <del+0x50>
 afb:	48 39 30             	cmp    %rsi,(%rax)
 afe:	48 8b 50 10          	mov    0x10(%rax),%rdx
 b02:	75 ec                	jne    af0 <del+0x20>
 b04:	48 89 c7             	mov    %rax,%rdi
 b07:	48 89 51 10          	mov    %rdx,0x10(%rcx)
 b0b:	e8 00 fc ff ff       	callq  710 <free@plt>
 b10:	83 2d 05 15 20 00 01 	subl   $0x1,0x201505(%rip)        # 20201c <sum>
 b17:	48 89 d8             	mov    %rbx,%rax
 b1a:	48 83 c4 10          	add    $0x10,%rsp
 b1e:	5b                   	pop    %rbx
 b1f:	c3                   	retq   
 b20:	48 8d 3d ce 00 00 00 	lea    0xce(%rip),%rdi        # bf5 <_IO_stdin_used+0x15>
 b27:	e8 f4 fb ff ff       	callq  720 <puts@plt>
 b2c:	48 83 c4 10          	add    $0x10,%rsp
 b30:	48 89 d8             	mov    %rbx,%rax
 b33:	5b                   	pop    %rbx
 b34:	c3                   	retq   
 b35:	0f 1f 00             	nopl   (%rax)
 b38:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b3d:	e8 ce fb ff ff       	callq  710 <free@plt>
 b42:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b47:	48 83 c4 10          	add    $0x10,%rsp
 b4b:	5b                   	pop    %rbx
 b4c:	c3                   	retq   
 b4d:	48 8d 3d 9b 00 00 00 	lea    0x9b(%rip),%rdi        # bef <_IO_stdin_used+0xf>
 b54:	e8 c7 fb ff ff       	callq  720 <puts@plt>
 b59:	31 c0                	xor    %eax,%eax
 b5b:	eb bd                	jmp    b1a <del+0x4a>
 b5d:	0f 1f 00             	nopl   (%rax)

0000000000000b60 <__libc_csu_init>:
 b60:	41 57                	push   %r15
 b62:	41 56                	push   %r14
 b64:	49 89 d7             	mov    %rdx,%r15
 b67:	41 55                	push   %r13
 b69:	41 54                	push   %r12
 b6b:	4c 8d 25 16 12 20 00 	lea    0x201216(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 b72:	55                   	push   %rbp
 b73:	48 8d 2d 16 12 20 00 	lea    0x201216(%rip),%rbp        # 201d90 <__init_array_end>
 b7a:	53                   	push   %rbx
 b7b:	41 89 fd             	mov    %edi,%r13d
 b7e:	49 89 f6             	mov    %rsi,%r14
 b81:	4c 29 e5             	sub    %r12,%rbp
 b84:	48 83 ec 08          	sub    $0x8,%rsp
 b88:	48 c1 fd 03          	sar    $0x3,%rbp
 b8c:	e8 57 fb ff ff       	callq  6e8 <_init>
 b91:	48 85 ed             	test   %rbp,%rbp
 b94:	74 20                	je     bb6 <__libc_csu_init+0x56>
 b96:	31 db                	xor    %ebx,%ebx
 b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b9f:	00 
 ba0:	4c 89 fa             	mov    %r15,%rdx
 ba3:	4c 89 f6             	mov    %r14,%rsi
 ba6:	44 89 ef             	mov    %r13d,%edi
 ba9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bad:	48 83 c3 01          	add    $0x1,%rbx
 bb1:	48 39 dd             	cmp    %rbx,%rbp
 bb4:	75 ea                	jne    ba0 <__libc_csu_init+0x40>
 bb6:	48 83 c4 08          	add    $0x8,%rsp
 bba:	5b                   	pop    %rbx
 bbb:	5d                   	pop    %rbp
 bbc:	41 5c                	pop    %r12
 bbe:	41 5d                	pop    %r13
 bc0:	41 5e                	pop    %r14
 bc2:	41 5f                	pop    %r15
 bc4:	c3                   	retq   
 bc5:	90                   	nop
 bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bcd:	00 00 00 

0000000000000bd0 <__libc_csu_fini>:
 bd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000bd4 <_fini>:
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 83 c4 08          	add    $0x8,%rsp
 bdc:	c3                   	retq   
