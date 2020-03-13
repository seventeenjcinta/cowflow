
input/18030021105_2.elf:     file format elf64-x86-64


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

0000000000000740 <_IO_putc@plt>:
 740:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fb8 <_IO_putc@GLIBC_2.2.5>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <malloc@plt>:
 750:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
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
 790:	41 56                	push   %r14
 792:	41 55                	push   %r13
 794:	41 54                	push   %r12
 796:	55                   	push   %rbp
 797:	53                   	push   %rbx
 798:	48 83 ec 20          	sub    $0x20,%rsp
 79c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a3:	00 00 
 7a5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7aa:	31 c0                	xor    %eax,%eax
 7ac:	e8 df 03 00 00       	callq  b90 <create>
 7b1:	48 85 c0             	test   %rax,%rax
 7b4:	48 89 c3             	mov    %rax,%rbx
 7b7:	74 08                	je     7c1 <main+0x31>
 7b9:	48 89 c7             	mov    %rax,%rdi
 7bc:	e8 af 02 00 00       	callq  a70 <print.part.1>
 7c1:	48 8d 35 80 05 00 00 	lea    0x580(%rip),%rsi        # d48 <_IO_stdin_used+0x58>
 7c8:	bf 01 00 00 00       	mov    $0x1,%edi
 7cd:	31 c0                	xor    %eax,%eax
 7cf:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
 7d4:	e8 87 ff ff ff       	callq  760 <__printf_chk@plt>
 7d9:	48 8d 3d 4c 05 00 00 	lea    0x54c(%rip),%rdi        # d2c <_IO_stdin_used+0x3c>
 7e0:	31 c0                	xor    %eax,%eax
 7e2:	48 89 ee             	mov    %rbp,%rsi
 7e5:	e8 86 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 7ea:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7ee:	85 c0                	test   %eax,%eax
 7f0:	0f 84 fa 00 00 00    	je     8f0 <main+0x160>
 7f6:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7fb:	eb 33                	jmp    830 <main+0xa0>
 7fd:	0f 1f 00             	nopl   (%rax)
 800:	48 8d 35 69 05 00 00 	lea    0x569(%rip),%rsi        # d70 <_IO_stdin_used+0x80>
 807:	bf 01 00 00 00       	mov    $0x1,%edi
 80c:	31 c0                	xor    %eax,%eax
 80e:	e8 4d ff ff ff       	callq  760 <__printf_chk@plt>
 813:	48 8d 3d 12 05 00 00 	lea    0x512(%rip),%rdi        # d2c <_IO_stdin_used+0x3c>
 81a:	31 c0                	xor    %eax,%eax
 81c:	48 89 ee             	mov    %rbp,%rsi
 81f:	e8 4c ff ff ff       	callq  770 <__isoc99_scanf@plt>
 824:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 828:	85 c0                	test   %eax,%eax
 82a:	0f 84 c0 00 00 00    	je     8f0 <main+0x160>
 830:	83 f8 01             	cmp    $0x1,%eax
 833:	74 6b                	je     8a0 <main+0x110>
 835:	83 f8 02             	cmp    $0x2,%eax
 838:	75 c6                	jne    800 <main+0x70>
 83a:	48 85 db             	test   %rbx,%rbx
 83d:	0f 84 cc 00 00 00    	je     90f <main+0x17f>
 843:	48 8d 35 e5 04 00 00 	lea    0x4e5(%rip),%rsi        # d2f <_IO_stdin_used+0x3f>
 84a:	bf 01 00 00 00       	mov    $0x1,%edi
 84f:	31 c0                	xor    %eax,%eax
 851:	e8 0a ff ff ff       	callq  760 <__printf_chk@plt>
 856:	48 8d 3d e4 04 00 00 	lea    0x4e4(%rip),%rdi        # d41 <_IO_stdin_used+0x51>
 85d:	4c 89 ee             	mov    %r13,%rsi
 860:	31 c0                	xor    %eax,%eax
 862:	e8 09 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 867:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 86c:	48 89 df             	mov    %rbx,%rdi
 86f:	e8 8c 02 00 00       	callq  b00 <del>
 874:	48 85 c0             	test   %rax,%rax
 877:	48 89 c3             	mov    %rax,%rbx
 87a:	74 08                	je     884 <main+0xf4>
 87c:	48 89 df             	mov    %rbx,%rdi
 87f:	e8 ec 01 00 00       	callq  a70 <print.part.1>
 884:	48 8b 35 85 17 20 00 	mov    0x201785(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 88b:	bf 0a 00 00 00       	mov    $0xa,%edi
 890:	e8 ab fe ff ff       	callq  740 <_IO_putc@plt>
 895:	e9 66 ff ff ff       	jmpq   800 <main+0x70>
 89a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 8a0:	48 8d 35 88 04 00 00 	lea    0x488(%rip),%rsi        # d2f <_IO_stdin_used+0x3f>
 8a7:	bf 01 00 00 00       	mov    $0x1,%edi
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	e8 ad fe ff ff       	callq  760 <__printf_chk@plt>
 8b3:	bf 18 00 00 00       	mov    $0x18,%edi
 8b8:	e8 93 fe ff ff       	callq  750 <malloc@plt>
 8bd:	48 8d 3d 61 04 00 00 	lea    0x461(%rip),%rdi        # d25 <_IO_stdin_used+0x35>
 8c4:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8c8:	49 89 c6             	mov    %rax,%r14
 8cb:	48 89 c6             	mov    %rax,%rsi
 8ce:	31 c0                	xor    %eax,%eax
 8d0:	e8 9b fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8d5:	49 8b 0e             	mov    (%r14),%rcx
 8d8:	48 3b 0b             	cmp    (%rbx),%rcx
 8db:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
 8e2:	00 
 8e3:	7d 3b                	jge    920 <main+0x190>
 8e5:	49 89 5e 10          	mov    %rbx,0x10(%r14)
 8e9:	4c 89 f3             	mov    %r14,%rbx
 8ec:	eb 8e                	jmp    87c <main+0xec>
 8ee:	66 90                	xchg   %ax,%ax
 8f0:	31 c0                	xor    %eax,%eax
 8f2:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8f7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8fe:	00 00 
 900:	75 59                	jne    95b <main+0x1cb>
 902:	48 83 c4 20          	add    $0x20,%rsp
 906:	5b                   	pop    %rbx
 907:	5d                   	pop    %rbp
 908:	41 5c                	pop    %r12
 90a:	41 5d                	pop    %r13
 90c:	41 5e                	pop    %r14
 90e:	c3                   	retq   
 90f:	48 8d 3d 22 04 00 00 	lea    0x422(%rip),%rdi        # d38 <_IO_stdin_used+0x48>
 916:	e8 05 fe ff ff       	callq  720 <puts@plt>
 91b:	e9 64 ff ff ff       	jmpq   884 <main+0xf4>
 920:	48 89 d8             	mov    %rbx,%rax
 923:	eb 12                	jmp    937 <main+0x1a7>
 925:	0f 1f 00             	nopl   (%rax)
 928:	48 8b 50 10          	mov    0x10(%rax),%rdx
 92c:	49 89 c4             	mov    %rax,%r12
 92f:	48 85 d2             	test   %rdx,%rdx
 932:	74 16                	je     94a <main+0x1ba>
 934:	48 89 d0             	mov    %rdx,%rax
 937:	48 3b 08             	cmp    (%rax),%rcx
 93a:	7f ec                	jg     928 <main+0x198>
 93c:	49 89 46 10          	mov    %rax,0x10(%r14)
 940:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
 945:	e9 32 ff ff ff       	jmpq   87c <main+0xec>
 94a:	4c 89 70 10          	mov    %r14,0x10(%rax)
 94e:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
 955:	00 
 956:	e9 21 ff ff ff       	jmpq   87c <main+0xec>
 95b:	e8 d0 fd ff ff       	callq  730 <__stack_chk_fail@plt>

0000000000000960 <_start>:
 960:	31 ed                	xor    %ebp,%ebp
 962:	49 89 d1             	mov    %rdx,%r9
 965:	5e                   	pop    %rsi
 966:	48 89 e2             	mov    %rsp,%rdx
 969:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 96d:	50                   	push   %rax
 96e:	54                   	push   %rsp
 96f:	4c 8d 05 6a 03 00 00 	lea    0x36a(%rip),%r8        # ce0 <__libc_csu_fini>
 976:	48 8d 0d f3 02 00 00 	lea    0x2f3(%rip),%rcx        # c70 <__libc_csu_init>
 97d:	48 8d 3d 0c fe ff ff 	lea    -0x1f4(%rip),%rdi        # 790 <main>
 984:	ff 15 56 16 20 00    	callq  *0x201656(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 98a:	f4                   	hlt    
 98b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000990 <deregister_tm_clones>:
 990:	48 8d 3d 79 16 20 00 	lea    0x201679(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 997:	55                   	push   %rbp
 998:	48 8d 05 71 16 20 00 	lea    0x201671(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
 99f:	48 39 f8             	cmp    %rdi,%rax
 9a2:	48 89 e5             	mov    %rsp,%rbp
 9a5:	74 19                	je     9c0 <deregister_tm_clones+0x30>
 9a7:	48 8b 05 2a 16 20 00 	mov    0x20162a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9ae:	48 85 c0             	test   %rax,%rax
 9b1:	74 0d                	je     9c0 <deregister_tm_clones+0x30>
 9b3:	5d                   	pop    %rbp
 9b4:	ff e0                	jmpq   *%rax
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 
 9c0:	5d                   	pop    %rbp
 9c1:	c3                   	retq   
 9c2:	0f 1f 40 00          	nopl   0x0(%rax)
 9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9cd:	00 00 00 

00000000000009d0 <register_tm_clones>:
 9d0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 9d7:	48 8d 35 32 16 20 00 	lea    0x201632(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 9de:	55                   	push   %rbp
 9df:	48 29 fe             	sub    %rdi,%rsi
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	48 c1 fe 03          	sar    $0x3,%rsi
 9e9:	48 89 f0             	mov    %rsi,%rax
 9ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 9f0:	48 01 c6             	add    %rax,%rsi
 9f3:	48 d1 fe             	sar    %rsi
 9f6:	74 18                	je     a10 <register_tm_clones+0x40>
 9f8:	48 8b 05 f1 15 20 00 	mov    0x2015f1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9ff:	48 85 c0             	test   %rax,%rax
 a02:	74 0c                	je     a10 <register_tm_clones+0x40>
 a04:	5d                   	pop    %rbp
 a05:	ff e0                	jmpq   *%rax
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	5d                   	pop    %rbp
 a11:	c3                   	retq   
 a12:	0f 1f 40 00          	nopl   0x0(%rax)
 a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a1d:	00 00 00 

0000000000000a20 <__do_global_dtors_aux>:
 a20:	80 3d f1 15 20 00 00 	cmpb   $0x0,0x2015f1(%rip)        # 202018 <completed.7698>
 a27:	75 2f                	jne    a58 <__do_global_dtors_aux+0x38>
 a29:	48 83 3d c7 15 20 00 	cmpq   $0x0,0x2015c7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a30:	00 
 a31:	55                   	push   %rbp
 a32:	48 89 e5             	mov    %rsp,%rbp
 a35:	74 0c                	je     a43 <__do_global_dtors_aux+0x23>
 a37:	48 8b 3d ca 15 20 00 	mov    0x2015ca(%rip),%rdi        # 202008 <__dso_handle>
 a3e:	e8 3d fd ff ff       	callq  780 <__cxa_finalize@plt>
 a43:	e8 48 ff ff ff       	callq  990 <deregister_tm_clones>
 a48:	c6 05 c9 15 20 00 01 	movb   $0x1,0x2015c9(%rip)        # 202018 <completed.7698>
 a4f:	5d                   	pop    %rbp
 a50:	c3                   	retq   
 a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a58:	f3 c3                	repz retq 
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a60 <frame_dummy>:
 a60:	55                   	push   %rbp
 a61:	48 89 e5             	mov    %rsp,%rbp
 a64:	5d                   	pop    %rbp
 a65:	e9 66 ff ff ff       	jmpq   9d0 <register_tm_clones>
 a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a70 <print.part.1>:
 a70:	55                   	push   %rbp
 a71:	53                   	push   %rbx
 a72:	48 8d 2d 7b 02 00 00 	lea    0x27b(%rip),%rbp        # cf4 <_IO_stdin_used+0x4>
 a79:	48 89 fb             	mov    %rdi,%rbx
 a7c:	48 83 ec 08          	sub    $0x8,%rsp
 a80:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a84:	48 8b 13             	mov    (%rbx),%rdx
 a87:	48 89 ee             	mov    %rbp,%rsi
 a8a:	bf 01 00 00 00       	mov    $0x1,%edi
 a8f:	b8 01 00 00 00       	mov    $0x1,%eax
 a94:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a99:	e8 c2 fc ff ff       	callq  760 <__printf_chk@plt>
 a9e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 aa2:	48 85 db             	test   %rbx,%rbx
 aa5:	75 d9                	jne    a80 <print.part.1+0x10>
 aa7:	48 83 c4 08          	add    $0x8,%rsp
 aab:	5b                   	pop    %rbx
 aac:	5d                   	pop    %rbp
 aad:	c3                   	retq   
 aae:	66 90                	xchg   %ax,%ax

0000000000000ab0 <insert>:
 ab0:	4c 8b 0e             	mov    (%rsi),%r9
 ab3:	4c 8b 07             	mov    (%rdi),%r8
 ab6:	48 89 f9             	mov    %rdi,%rcx
 ab9:	4d 39 c1             	cmp    %r8,%r9
 abc:	7d 14                	jge    ad2 <insert+0x22>
 abe:	eb 28                	jmp    ae8 <insert+0x38>
 ac0:	48 8b 51 10          	mov    0x10(%rcx),%rdx
 ac4:	48 85 d2             	test   %rdx,%rdx
 ac7:	74 27                	je     af0 <insert+0x40>
 ac9:	4c 8b 02             	mov    (%rdx),%r8
 acc:	48 89 c8             	mov    %rcx,%rax
 acf:	48 89 d1             	mov    %rdx,%rcx
 ad2:	4d 39 c1             	cmp    %r8,%r9
 ad5:	7f e9                	jg     ac0 <insert+0x10>
 ad7:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
 adb:	48 89 70 10          	mov    %rsi,0x10(%rax)
 adf:	48 89 f8             	mov    %rdi,%rax
 ae2:	c3                   	retq   
 ae3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ae8:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
 aec:	48 89 f0             	mov    %rsi,%rax
 aef:	c3                   	retq   
 af0:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 af4:	48 89 f8             	mov    %rdi,%rax
 af7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 afe:	00 
 aff:	c3                   	retq   

0000000000000b00 <del>:
 b00:	53                   	push   %rbx
 b01:	48 89 f9             	mov    %rdi,%rcx
 b04:	48 89 fb             	mov    %rdi,%rbx
 b07:	48 83 ec 10          	sub    $0x10,%rsp
 b0b:	48 39 37             	cmp    %rsi,(%rdi)
 b0e:	48 8b 47 10          	mov    0x10(%rdi),%rax
 b12:	75 12                	jne    b26 <del+0x26>
 b14:	eb 52                	jmp    b68 <del+0x68>
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 
 b20:	48 89 c1             	mov    %rax,%rcx
 b23:	48 89 d0             	mov    %rdx,%rax
 b26:	48 85 c0             	test   %rax,%rax
 b29:	74 25                	je     b50 <del+0x50>
 b2b:	48 39 30             	cmp    %rsi,(%rax)
 b2e:	48 8b 50 10          	mov    0x10(%rax),%rdx
 b32:	75 ec                	jne    b20 <del+0x20>
 b34:	48 89 c7             	mov    %rax,%rdi
 b37:	48 89 51 10          	mov    %rdx,0x10(%rcx)
 b3b:	e8 d0 fb ff ff       	callq  710 <free@plt>
 b40:	48 83 c4 10          	add    $0x10,%rsp
 b44:	48 89 d8             	mov    %rbx,%rax
 b47:	5b                   	pop    %rbx
 b48:	c3                   	retq   
 b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b50:	48 8d 3d a7 01 00 00 	lea    0x1a7(%rip),%rdi        # cfe <_IO_stdin_used+0xe>
 b57:	e8 c4 fb ff ff       	callq  720 <puts@plt>
 b5c:	48 83 c4 10          	add    $0x10,%rsp
 b60:	48 89 d8             	mov    %rbx,%rax
 b63:	5b                   	pop    %rbx
 b64:	c3                   	retq   
 b65:	0f 1f 00             	nopl   (%rax)
 b68:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b6d:	e8 9e fb ff ff       	callq  710 <free@plt>
 b72:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b77:	83 2d 9e 14 20 00 01 	subl   $0x1,0x20149e(%rip)        # 20201c <n>
 b7e:	48 83 c4 10          	add    $0x10,%rsp
 b82:	5b                   	pop    %rbx
 b83:	c3                   	retq   
 b84:	66 90                	xchg   %ax,%ax
 b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8d:	00 00 00 

0000000000000b90 <create>:
 b90:	41 56                	push   %r14
 b92:	41 55                	push   %r13
 b94:	bf 18 00 00 00       	mov    $0x18,%edi
 b99:	41 54                	push   %r12
 b9b:	55                   	push   %rbp
 b9c:	45 31 f6             	xor    %r14d,%r14d
 b9f:	53                   	push   %rbx
 ba0:	c7 05 72 14 20 00 00 	movl   $0x0,0x201472(%rip)        # 20201c <n>
 ba7:	00 00 00 
 baa:	4c 8d 2d 74 01 00 00 	lea    0x174(%rip),%r13        # d25 <_IO_stdin_used+0x35>
 bb1:	e8 9a fb ff ff       	callq  750 <malloc@plt>
 bb6:	48 8d 3d 4e 01 00 00 	lea    0x14e(%rip),%rdi        # d0b <_IO_stdin_used+0x1b>
 bbd:	49 89 c4             	mov    %rax,%r12
 bc0:	4c 89 e5             	mov    %r12,%rbp
 bc3:	e8 58 fb ff ff       	callq  720 <puts@plt>
 bc8:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
 bcd:	48 8d 3d 51 01 00 00 	lea    0x151(%rip),%rdi        # d25 <_IO_stdin_used+0x35>
 bd4:	31 c0                	xor    %eax,%eax
 bd6:	4c 89 e6             	mov    %r12,%rsi
 bd9:	e8 92 fb ff ff       	callq  770 <__isoc99_scanf@plt>
 bde:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 be3:	75 3a                	jne    c1f <create+0x8f>
 be5:	eb 59                	jmp    c40 <create+0xb0>
 be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 bee:	00 00 
 bf0:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 bf5:	bf 18 00 00 00       	mov    $0x18,%edi
 bfa:	49 89 ec             	mov    %rbp,%r12
 bfd:	e8 4e fb ff ff       	callq  750 <malloc@plt>
 c02:	48 8d 50 08          	lea    0x8(%rax),%rdx
 c06:	48 89 c3             	mov    %rax,%rbx
 c09:	48 89 c6             	mov    %rax,%rsi
 c0c:	4c 89 ef             	mov    %r13,%rdi
 c0f:	31 c0                	xor    %eax,%eax
 c11:	e8 5a fb ff ff       	callq  770 <__isoc99_scanf@plt>
 c16:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 c1a:	74 24                	je     c40 <create+0xb0>
 c1c:	48 89 dd             	mov    %rbx,%rbp
 c1f:	8b 05 f7 13 20 00    	mov    0x2013f7(%rip),%eax        # 20201c <n>
 c25:	83 c0 01             	add    $0x1,%eax
 c28:	83 f8 01             	cmp    $0x1,%eax
 c2b:	89 05 eb 13 20 00    	mov    %eax,0x2013eb(%rip)        # 20201c <n>
 c31:	75 bd                	jne    bf0 <create+0x60>
 c33:	49 89 ee             	mov    %rbp,%r14
 c36:	eb bd                	jmp    bf5 <create+0x65>
 c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c3f:	00 
 c40:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 c47:	00 
 c48:	4c 89 f0             	mov    %r14,%rax
 c4b:	5b                   	pop    %rbx
 c4c:	5d                   	pop    %rbp
 c4d:	41 5c                	pop    %r12
 c4f:	41 5d                	pop    %r13
 c51:	41 5e                	pop    %r14
 c53:	c3                   	retq   
 c54:	66 90                	xchg   %ax,%ax
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 

0000000000000c60 <print>:
 c60:	48 85 ff             	test   %rdi,%rdi
 c63:	74 05                	je     c6a <print+0xa>
 c65:	e9 06 fe ff ff       	jmpq   a70 <print.part.1>
 c6a:	c3                   	retq   
 c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c70 <__libc_csu_init>:
 c70:	41 57                	push   %r15
 c72:	41 56                	push   %r14
 c74:	49 89 d7             	mov    %rdx,%r15
 c77:	41 55                	push   %r13
 c79:	41 54                	push   %r12
 c7b:	4c 8d 25 06 11 20 00 	lea    0x201106(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c82:	55                   	push   %rbp
 c83:	48 8d 2d 06 11 20 00 	lea    0x201106(%rip),%rbp        # 201d90 <__init_array_end>
 c8a:	53                   	push   %rbx
 c8b:	41 89 fd             	mov    %edi,%r13d
 c8e:	49 89 f6             	mov    %rsi,%r14
 c91:	4c 29 e5             	sub    %r12,%rbp
 c94:	48 83 ec 08          	sub    $0x8,%rsp
 c98:	48 c1 fd 03          	sar    $0x3,%rbp
 c9c:	e8 47 fa ff ff       	callq  6e8 <_init>
 ca1:	48 85 ed             	test   %rbp,%rbp
 ca4:	74 20                	je     cc6 <__libc_csu_init+0x56>
 ca6:	31 db                	xor    %ebx,%ebx
 ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 caf:	00 
 cb0:	4c 89 fa             	mov    %r15,%rdx
 cb3:	4c 89 f6             	mov    %r14,%rsi
 cb6:	44 89 ef             	mov    %r13d,%edi
 cb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cbd:	48 83 c3 01          	add    $0x1,%rbx
 cc1:	48 39 dd             	cmp    %rbx,%rbp
 cc4:	75 ea                	jne    cb0 <__libc_csu_init+0x40>
 cc6:	48 83 c4 08          	add    $0x8,%rsp
 cca:	5b                   	pop    %rbx
 ccb:	5d                   	pop    %rbp
 ccc:	41 5c                	pop    %r12
 cce:	41 5d                	pop    %r13
 cd0:	41 5e                	pop    %r14
 cd2:	41 5f                	pop    %r15
 cd4:	c3                   	retq   
 cd5:	90                   	nop
 cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cdd:	00 00 00 

0000000000000ce0 <__libc_csu_fini>:
 ce0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ce4 <_fini>:
 ce4:	48 83 ec 08          	sub    $0x8,%rsp
 ce8:	48 83 c4 08          	add    $0x8,%rsp
 cec:	c3                   	retq   
