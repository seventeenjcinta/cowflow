
input/19020031110_2.elf:     file format elf64-x86-64


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
 790:	41 56                	push   %r14
 792:	41 55                	push   %r13
 794:	48 8d 3d 5d 06 00 00 	lea    0x65d(%rip),%rdi        # df8 <_IO_stdin_used+0x88>
 79b:	41 54                	push   %r12
 79d:	55                   	push   %rbp
 79e:	53                   	push   %rbx
 79f:	48 83 ec 20          	sub    $0x20,%rsp
 7a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7aa:	00 00 
 7ac:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7b1:	31 c0                	xor    %eax,%eax
 7b3:	e8 68 ff ff ff       	callq  720 <puts@plt>
 7b8:	48 8d 3d 61 06 00 00 	lea    0x661(%rip),%rdi        # e20 <_IO_stdin_used+0xb0>
 7bf:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c4:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c9:	e8 52 ff ff ff       	callq  720 <puts@plt>
 7ce:	31 c0                	xor    %eax,%eax
 7d0:	e8 cb 03 00 00       	callq  ba0 <create>
 7d5:	48 89 c7             	mov    %rax,%rdi
 7d8:	48 89 c3             	mov    %rax,%rbx
 7db:	e8 a0 04 00 00       	callq  c80 <print>
 7e0:	eb 53                	jmp    835 <main+0xa5>
 7e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 7e8:	83 f8 02             	cmp    $0x2,%eax
 7eb:	75 3f                	jne    82c <main+0x9c>
 7ed:	48 8d 35 84 06 00 00 	lea    0x684(%rip),%rsi        # e78 <_IO_stdin_used+0x108>
 7f4:	bf 01 00 00 00       	mov    $0x1,%edi
 7f9:	31 c0                	xor    %eax,%eax
 7fb:	e8 60 ff ff ff       	callq  760 <__printf_chk@plt>
 800:	48 8d 3d e8 05 00 00 	lea    0x5e8(%rip),%rdi        # def <_IO_stdin_used+0x7f>
 807:	4c 89 ee             	mov    %r13,%rsi
 80a:	31 c0                	xor    %eax,%eax
 80c:	e8 5f ff ff ff       	callq  770 <__isoc99_scanf@plt>
 811:	8b 74 24 10          	mov    0x10(%rsp),%esi
 815:	48 89 df             	mov    %rbx,%rdi
 818:	e8 53 02 00 00       	callq  a70 <del>
 81d:	48 89 c7             	mov    %rax,%rdi
 820:	48 89 c3             	mov    %rax,%rbx
 823:	e8 58 04 00 00       	callq  c80 <print>
 828:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 82c:	83 f8 03             	cmp    $0x3,%eax
 82f:	0f 84 e1 00 00 00    	je     916 <main+0x186>
 835:	48 8d 3d 84 05 00 00 	lea    0x584(%rip),%rdi        # dc0 <_IO_stdin_used+0x50>
 83c:	e8 df fe ff ff       	callq  720 <puts@plt>
 841:	48 8d 3d 92 05 00 00 	lea    0x592(%rip),%rdi        # dda <_IO_stdin_used+0x6a>
 848:	4c 89 e6             	mov    %r12,%rsi
 84b:	31 c0                	xor    %eax,%eax
 84d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 854:	ff 
 855:	e8 16 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 85a:	48 8b 3d af 17 20 00 	mov    0x2017af(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 861:	e8 ea fe ff ff       	callq  750 <_IO_getc@plt>
 866:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 86a:	83 f8 01             	cmp    $0x1,%eax
 86d:	0f 85 75 ff ff ff    	jne    7e8 <main+0x58>
 873:	48 8d 35 d6 05 00 00 	lea    0x5d6(%rip),%rsi        # e50 <_IO_stdin_used+0xe0>
 87a:	bf 01 00 00 00       	mov    $0x1,%edi
 87f:	31 c0                	xor    %eax,%eax
 881:	e8 da fe ff ff       	callq  760 <__printf_chk@plt>
 886:	bf 18 00 00 00       	mov    $0x18,%edi
 88b:	e8 b0 fe ff ff       	callq  740 <malloc@plt>
 890:	48 8d 3d f9 04 00 00 	lea    0x4f9(%rip),%rdi        # d90 <_IO_stdin_used+0x20>
 897:	48 8d 50 08          	lea    0x8(%rax),%rdx
 89b:	48 89 c6             	mov    %rax,%rsi
 89e:	49 89 c6             	mov    %rax,%r14
 8a1:	31 c0                	xor    %eax,%eax
 8a3:	e8 c8 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8a8:	48 85 db             	test   %rbx,%rbx
 8ab:	74 33                	je     8e0 <main+0x150>
 8ad:	49 8b 0e             	mov    (%r14),%rcx
 8b0:	48 89 d8             	mov    %rbx,%rax
 8b3:	eb 12                	jmp    8c7 <main+0x137>
 8b5:	0f 1f 00             	nopl   (%rax)
 8b8:	48 8b 50 10          	mov    0x10(%rax),%rdx
 8bc:	48 89 c5             	mov    %rax,%rbp
 8bf:	48 85 d2             	test   %rdx,%rdx
 8c2:	74 71                	je     935 <main+0x1a5>
 8c4:	48 89 d0             	mov    %rdx,%rax
 8c7:	48 3b 08             	cmp    (%rax),%rcx
 8ca:	7f ec                	jg     8b8 <main+0x128>
 8cc:	48 39 c3             	cmp    %rax,%rbx
 8cf:	74 72                	je     943 <main+0x1b3>
 8d1:	4c 89 75 10          	mov    %r14,0x10(%rbp)
 8d5:	49 89 46 10          	mov    %rax,0x10(%r14)
 8d9:	eb 10                	jmp    8eb <main+0x15b>
 8db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8e0:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
 8e7:	00 
 8e8:	4c 89 f3             	mov    %r14,%rbx
 8eb:	49 8b 16             	mov    (%r14),%rdx
 8ee:	48 8d 35 e8 04 00 00 	lea    0x4e8(%rip),%rsi        # ddd <_IO_stdin_used+0x6d>
 8f5:	bf 01 00 00 00       	mov    $0x1,%edi
 8fa:	31 c0                	xor    %eax,%eax
 8fc:	e8 5f fe ff ff       	callq  760 <__printf_chk@plt>
 901:	48 89 df             	mov    %rbx,%rdi
 904:	e8 77 03 00 00       	callq  c80 <print>
 909:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 90d:	83 f8 03             	cmp    $0x3,%eax
 910:	0f 85 1f ff ff ff    	jne    835 <main+0xa5>
 916:	31 c0                	xor    %eax,%eax
 918:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 91d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 924:	00 00 
 926:	75 24                	jne    94c <main+0x1bc>
 928:	48 83 c4 20          	add    $0x20,%rsp
 92c:	5b                   	pop    %rbx
 92d:	5d                   	pop    %rbp
 92e:	41 5c                	pop    %r12
 930:	41 5d                	pop    %r13
 932:	41 5e                	pop    %r14
 934:	c3                   	retq   
 935:	4c 89 70 10          	mov    %r14,0x10(%rax)
 939:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
 940:	00 
 941:	eb a8                	jmp    8eb <main+0x15b>
 943:	49 89 5e 10          	mov    %rbx,0x10(%r14)
 947:	4c 89 f3             	mov    %r14,%rbx
 94a:	eb 9f                	jmp    8eb <main+0x15b>
 94c:	e8 df fd ff ff       	callq  730 <__stack_chk_fail@plt>
 951:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 958:	00 00 00 
 95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <_start>:
 960:	31 ed                	xor    %ebp,%ebp
 962:	49 89 d1             	mov    %rdx,%r9
 965:	5e                   	pop    %rsi
 966:	48 89 e2             	mov    %rsp,%rdx
 969:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 96d:	50                   	push   %rax
 96e:	54                   	push   %rsp
 96f:	4c 8d 05 ea 03 00 00 	lea    0x3ea(%rip),%r8        # d60 <__libc_csu_fini>
 976:	48 8d 0d 73 03 00 00 	lea    0x373(%rip),%rcx        # cf0 <__libc_csu_init>
 97d:	48 8d 3d 0c fe ff ff 	lea    -0x1f4(%rip),%rdi        # 790 <main>
 984:	ff 15 56 16 20 00    	callq  *0x201656(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 98a:	f4                   	hlt    
 98b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000990 <deregister_tm_clones>:
 990:	48 8d 3d 79 16 20 00 	lea    0x201679(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 997:	55                   	push   %rbp
 998:	48 8d 05 71 16 20 00 	lea    0x201671(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
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
 9d0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9d7:	48 8d 35 32 16 20 00 	lea    0x201632(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
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

0000000000000a70 <del>:
 a70:	48 85 ff             	test   %rdi,%rdi
 a73:	41 54                	push   %r12
 a75:	48 63 f6             	movslq %esi,%rsi
 a78:	55                   	push   %rbp
 a79:	49 89 fc             	mov    %rdi,%r12
 a7c:	53                   	push   %rbx
 a7d:	48 89 fb             	mov    %rdi,%rbx
 a80:	75 11                	jne    a93 <del+0x23>
 a82:	eb 64                	jmp    ae8 <del+0x78>
 a84:	0f 1f 40 00          	nopl   0x0(%rax)
 a88:	48 85 c0             	test   %rax,%rax
 a8b:	48 89 dd             	mov    %rbx,%rbp
 a8e:	74 58                	je     ae8 <del+0x78>
 a90:	48 89 c3             	mov    %rax,%rbx
 a93:	48 39 33             	cmp    %rsi,(%rbx)
 a96:	48 8b 43 10          	mov    0x10(%rbx),%rax
 a9a:	75 ec                	jne    a88 <del+0x18>
 a9c:	48 85 c0             	test   %rax,%rax
 a9f:	74 5f                	je     b00 <del+0x90>
 aa1:	4c 39 e3             	cmp    %r12,%rbx
 aa4:	74 22                	je     ac8 <del+0x58>
 aa6:	48 89 df             	mov    %rbx,%rdi
 aa9:	e8 62 fc ff ff       	callq  710 <free@plt>
 aae:	48 8b 43 10          	mov    0x10(%rbx),%rax
 ab2:	83 2d 63 15 20 00 01 	subl   $0x1,0x201563(%rip)        # 20201c <n>
 ab9:	48 89 45 10          	mov    %rax,0x10(%rbp)
 abd:	4c 89 e0             	mov    %r12,%rax
 ac0:	5b                   	pop    %rbx
 ac1:	5d                   	pop    %rbp
 ac2:	41 5c                	pop    %r12
 ac4:	c3                   	retq   
 ac5:	0f 1f 00             	nopl   (%rax)
 ac8:	4c 89 e7             	mov    %r12,%rdi
 acb:	e8 40 fc ff ff       	callq  710 <free@plt>
 ad0:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
 ad5:	83 2d 40 15 20 00 01 	subl   $0x1,0x201540(%rip)        # 20201c <n>
 adc:	5b                   	pop    %rbx
 add:	5d                   	pop    %rbp
 ade:	4c 89 e0             	mov    %r12,%rax
 ae1:	41 5c                	pop    %r12
 ae3:	c3                   	retq   
 ae4:	0f 1f 40 00          	nopl   0x0(%rax)
 ae8:	48 8d 3d 85 02 00 00 	lea    0x285(%rip),%rdi        # d74 <_IO_stdin_used+0x4>
 aef:	e8 2c fc ff ff       	callq  720 <puts@plt>
 af4:	4c 89 e0             	mov    %r12,%rax
 af7:	5b                   	pop    %rbx
 af8:	5d                   	pop    %rbp
 af9:	41 5c                	pop    %r12
 afb:	c3                   	retq   
 afc:	0f 1f 40 00          	nopl   0x0(%rax)
 b00:	4c 39 e3             	cmp    %r12,%rbx
 b03:	74 18                	je     b1d <del+0xad>
 b05:	48 89 df             	mov    %rbx,%rdi
 b08:	e8 03 fc ff ff       	callq  710 <free@plt>
 b0d:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 b14:	00 
 b15:	4c 89 e0             	mov    %r12,%rax
 b18:	5b                   	pop    %rbx
 b19:	5d                   	pop    %rbp
 b1a:	41 5c                	pop    %r12
 b1c:	c3                   	retq   
 b1d:	4c 89 e7             	mov    %r12,%rdi
 b20:	45 31 e4             	xor    %r12d,%r12d
 b23:	e8 e8 fb ff ff       	callq  710 <free@plt>
 b28:	eb 93                	jmp    abd <del+0x4d>
 b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b30 <insert>:
 b30:	48 85 ff             	test   %rdi,%rdi
 b33:	74 4b                	je     b80 <insert+0x50>
 b35:	4c 8b 06             	mov    (%rsi),%r8
 b38:	48 89 fa             	mov    %rdi,%rdx
 b3b:	eb 12                	jmp    b4f <insert+0x1f>
 b3d:	0f 1f 00             	nopl   (%rax)
 b40:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 b44:	49 89 d1             	mov    %rdx,%r9
 b47:	48 85 c9             	test   %rcx,%rcx
 b4a:	74 1c                	je     b68 <insert+0x38>
 b4c:	48 89 ca             	mov    %rcx,%rdx
 b4f:	4c 3b 02             	cmp    (%rdx),%r8
 b52:	7f ec                	jg     b40 <insert+0x10>
 b54:	48 39 fa             	cmp    %rdi,%rdx
 b57:	74 37                	je     b90 <insert+0x60>
 b59:	49 89 71 10          	mov    %rsi,0x10(%r9)
 b5d:	48 89 f8             	mov    %rdi,%rax
 b60:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b64:	c3                   	retq   
 b65:	0f 1f 00             	nopl   (%rax)
 b68:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b6c:	48 89 f8             	mov    %rdi,%rax
 b6f:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b76:	00 
 b77:	c3                   	retq   
 b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b7f:	00 
 b80:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b87:	00 
 b88:	48 89 f0             	mov    %rsi,%rax
 b8b:	c3                   	retq   
 b8c:	0f 1f 40 00          	nopl   0x0(%rax)
 b90:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b94:	48 89 f0             	mov    %rsi,%rax
 b97:	c3                   	retq   
 b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b9f:	00 

0000000000000ba0 <create>:
 ba0:	41 55                	push   %r13
 ba2:	41 54                	push   %r12
 ba4:	bf 18 00 00 00       	mov    $0x18,%edi
 ba9:	55                   	push   %rbp
 baa:	53                   	push   %rbx
 bab:	45 31 ed             	xor    %r13d,%r13d
 bae:	48 83 ec 08          	sub    $0x8,%rsp
 bb2:	e8 89 fb ff ff       	callq  740 <malloc@plt>
 bb7:	48 8d 3d d2 01 00 00 	lea    0x1d2(%rip),%rdi        # d90 <_IO_stdin_used+0x20>
 bbe:	48 8d 50 08          	lea    0x8(%rax),%rdx
 bc2:	48 89 c3             	mov    %rax,%rbx
 bc5:	48 89 c6             	mov    %rax,%rsi
 bc8:	31 c0                	xor    %eax,%eax
 bca:	e8 a1 fb ff ff       	callq  770 <__isoc99_scanf@plt>
 bcf:	48 8b 0b             	mov    (%rbx),%rcx
 bd2:	48 85 c9             	test   %rcx,%rcx
 bd5:	74 67                	je     c3e <create+0x9e>
 bd7:	4c 8d 25 b2 01 00 00 	lea    0x1b2(%rip),%r12        # d90 <_IO_stdin_used+0x20>
 bde:	66 90                	xchg   %ax,%ax
 be0:	4d 85 ed             	test   %r13,%r13
 be3:	4c 89 e8             	mov    %r13,%rax
 be6:	75 17                	jne    bff <create+0x5f>
 be8:	eb 66                	jmp    c50 <create+0xb0>
 bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bf0:	48 8b 50 10          	mov    0x10(%rax),%rdx
 bf4:	48 89 c5             	mov    %rax,%rbp
 bf7:	48 85 d2             	test   %rdx,%rdx
 bfa:	74 64                	je     c60 <create+0xc0>
 bfc:	48 89 d0             	mov    %rdx,%rax
 bff:	48 39 08             	cmp    %rcx,(%rax)
 c02:	7c ec                	jl     bf0 <create+0x50>
 c04:	4c 39 e8             	cmp    %r13,%rax
 c07:	74 67                	je     c70 <create+0xd0>
 c09:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 c0d:	48 89 43 10          	mov    %rax,0x10(%rbx)
 c11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c18:	bf 18 00 00 00       	mov    $0x18,%edi
 c1d:	e8 1e fb ff ff       	callq  740 <malloc@plt>
 c22:	48 8d 50 08          	lea    0x8(%rax),%rdx
 c26:	48 89 c3             	mov    %rax,%rbx
 c29:	48 89 c6             	mov    %rax,%rsi
 c2c:	4c 89 e7             	mov    %r12,%rdi
 c2f:	31 c0                	xor    %eax,%eax
 c31:	e8 3a fb ff ff       	callq  770 <__isoc99_scanf@plt>
 c36:	48 8b 0b             	mov    (%rbx),%rcx
 c39:	48 85 c9             	test   %rcx,%rcx
 c3c:	75 a2                	jne    be0 <create+0x40>
 c3e:	48 83 c4 08          	add    $0x8,%rsp
 c42:	4c 89 e8             	mov    %r13,%rax
 c45:	5b                   	pop    %rbx
 c46:	5d                   	pop    %rbp
 c47:	41 5c                	pop    %r12
 c49:	41 5d                	pop    %r13
 c4b:	c3                   	retq   
 c4c:	0f 1f 40 00          	nopl   0x0(%rax)
 c50:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 c57:	00 
 c58:	49 89 dd             	mov    %rbx,%r13
 c5b:	eb bb                	jmp    c18 <create+0x78>
 c5d:	0f 1f 00             	nopl   (%rax)
 c60:	48 89 58 10          	mov    %rbx,0x10(%rax)
 c64:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 c6b:	00 
 c6c:	eb aa                	jmp    c18 <create+0x78>
 c6e:	66 90                	xchg   %ax,%ax
 c70:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
 c74:	49 89 dd             	mov    %rbx,%r13
 c77:	eb 9f                	jmp    c18 <create+0x78>
 c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c80 <print>:
 c80:	48 85 ff             	test   %rdi,%rdi
 c83:	74 4b                	je     cd0 <print+0x50>
 c85:	55                   	push   %rbp
 c86:	53                   	push   %rbx
 c87:	48 8d 2d 09 01 00 00 	lea    0x109(%rip),%rbp        # d97 <_IO_stdin_used+0x27>
 c8e:	48 89 fb             	mov    %rdi,%rbx
 c91:	48 83 ec 08          	sub    $0x8,%rsp
 c95:	0f 1f 00             	nopl   (%rax)
 c98:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c9c:	48 8b 13             	mov    (%rbx),%rdx
 c9f:	48 89 ee             	mov    %rbp,%rsi
 ca2:	bf 01 00 00 00       	mov    $0x1,%edi
 ca7:	b8 01 00 00 00       	mov    $0x1,%eax
 cac:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 cb1:	e8 aa fa ff ff       	callq  760 <__printf_chk@plt>
 cb6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 cba:	48 85 db             	test   %rbx,%rbx
 cbd:	75 d9                	jne    c98 <print+0x18>
 cbf:	48 83 c4 08          	add    $0x8,%rsp
 cc3:	5b                   	pop    %rbx
 cc4:	5d                   	pop    %rbp
 cc5:	c3                   	retq   
 cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ccd:	00 00 00 
 cd0:	48 8d 35 cb 00 00 00 	lea    0xcb(%rip),%rsi        # da2 <_IO_stdin_used+0x32>
 cd7:	bf 01 00 00 00       	mov    $0x1,%edi
 cdc:	31 c0                	xor    %eax,%eax
 cde:	e9 7d fa ff ff       	jmpq   760 <__printf_chk@plt>
 ce3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cea:	00 00 00 
 ced:	0f 1f 00             	nopl   (%rax)

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
