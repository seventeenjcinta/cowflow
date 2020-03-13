
input/19070001106_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d 98 05 00 00 	lea    0x598(%rip),%rdi        # d33 <_IO_stdin_used+0x63>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d fb 05 00 00 	lea    0x5fb(%rip),%rdi        # db8 <_IO_stdin_used+0xe8>
 7bd:	e8 5e ff ff ff       	callq  720 <puts@plt>
 7c2:	e8 69 03 00 00       	callq  b30 <create>
 7c7:	48 85 c0             	test   %rax,%rax
 7ca:	48 89 c3             	mov    %rax,%rbx
 7cd:	74 08                	je     7d7 <main+0x47>
 7cf:	48 89 c7             	mov    %rax,%rdi
 7d2:	e8 59 02 00 00       	callq  a30 <print.part.0>
 7d7:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7dc:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e1:	eb 57                	jmp    83a <main+0xaa>
 7e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7e8:	83 f8 02             	cmp    $0x2,%eax
 7eb:	75 45                	jne    832 <main+0xa2>
 7ed:	48 8d 35 ac 05 00 00 	lea    0x5ac(%rip),%rsi        # da0 <_IO_stdin_used+0xd0>
 7f4:	bf 01 00 00 00       	mov    $0x1,%edi
 7f9:	31 c0                	xor    %eax,%eax
 7fb:	e8 60 ff ff ff       	callq  760 <__printf_chk@plt>
 800:	48 8d 3d ab 05 00 00 	lea    0x5ab(%rip),%rdi        # db2 <_IO_stdin_used+0xe2>
 807:	4c 89 ee             	mov    %r13,%rsi
 80a:	31 c0                	xor    %eax,%eax
 80c:	e8 5f ff ff ff       	callq  770 <__isoc99_scanf@plt>
 811:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 816:	48 89 df             	mov    %rbx,%rdi
 819:	e8 92 03 00 00       	callq  bb0 <del>
 81e:	48 85 c0             	test   %rax,%rax
 821:	48 89 c3             	mov    %rax,%rbx
 824:	74 08                	je     82e <main+0x9e>
 826:	48 89 df             	mov    %rbx,%rdi
 829:	e8 02 02 00 00       	callq  a30 <print.part.0>
 82e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 832:	85 c0                	test   %eax,%eax
 834:	0f 84 be 00 00 00    	je     8f8 <main+0x168>
 83a:	48 8d 3d 09 05 00 00 	lea    0x509(%rip),%rdi        # d4a <_IO_stdin_used+0x7a>
 841:	e8 da fe ff ff       	callq  720 <puts@plt>
 846:	48 8d 35 17 05 00 00 	lea    0x517(%rip),%rsi        # d64 <_IO_stdin_used+0x94>
 84d:	bf 01 00 00 00       	mov    $0x1,%edi
 852:	31 c0                	xor    %eax,%eax
 854:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 85b:	ff 
 85c:	e8 ff fe ff ff       	callq  760 <__printf_chk@plt>
 861:	48 8d 3d 0b 05 00 00 	lea    0x50b(%rip),%rdi        # d73 <_IO_stdin_used+0xa3>
 868:	4c 89 e6             	mov    %r12,%rsi
 86b:	31 c0                	xor    %eax,%eax
 86d:	e8 fe fe ff ff       	callq  770 <__isoc99_scanf@plt>
 872:	48 8b 3d 97 17 20 00 	mov    0x201797(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 879:	e8 d2 fe ff ff       	callq  750 <_IO_getc@plt>
 87e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 882:	83 f8 01             	cmp    $0x1,%eax
 885:	0f 85 5d ff ff ff    	jne    7e8 <main+0x58>
 88b:	48 8d 35 e4 04 00 00 	lea    0x4e4(%rip),%rsi        # d76 <_IO_stdin_used+0xa6>
 892:	bf 01 00 00 00       	mov    $0x1,%edi
 897:	31 c0                	xor    %eax,%eax
 899:	e8 c2 fe ff ff       	callq  760 <__printf_chk@plt>
 89e:	bf 18 00 00 00       	mov    $0x18,%edi
 8a3:	e8 98 fe ff ff       	callq  740 <malloc@plt>
 8a8:	48 8d 3d 4d 04 00 00 	lea    0x44d(%rip),%rdi        # cfc <_IO_stdin_used+0x2c>
 8af:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8b3:	48 89 c5             	mov    %rax,%rbp
 8b6:	48 89 c6             	mov    %rax,%rsi
 8b9:	31 c0                	xor    %eax,%eax
 8bb:	e8 b0 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8c0:	48 89 df             	mov    %rbx,%rdi
 8c3:	48 89 ee             	mov    %rbp,%rsi
 8c6:	e8 e5 01 00 00       	callq  ab0 <insert>
 8cb:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8cf:	48 8d 35 bc 04 00 00 	lea    0x4bc(%rip),%rsi        # d92 <_IO_stdin_used+0xc2>
 8d6:	48 89 c3             	mov    %rax,%rbx
 8d9:	bf 01 00 00 00       	mov    $0x1,%edi
 8de:	31 c0                	xor    %eax,%eax
 8e0:	e8 7b fe ff ff       	callq  760 <__printf_chk@plt>
 8e5:	48 85 db             	test   %rbx,%rbx
 8e8:	0f 85 38 ff ff ff    	jne    826 <main+0x96>
 8ee:	e9 3b ff ff ff       	jmpq   82e <main+0x9e>
 8f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8f8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8fd:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 904:	00 00 
 906:	75 0b                	jne    913 <main+0x183>
 908:	48 83 c4 28          	add    $0x28,%rsp
 90c:	5b                   	pop    %rbx
 90d:	5d                   	pop    %rbp
 90e:	41 5c                	pop    %r12
 910:	41 5d                	pop    %r13
 912:	c3                   	retq   
 913:	e8 18 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 91f:	00 

0000000000000920 <_start>:
 920:	31 ed                	xor    %ebp,%ebp
 922:	49 89 d1             	mov    %rdx,%r9
 925:	5e                   	pop    %rsi
 926:	48 89 e2             	mov    %rsp,%rdx
 929:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 92d:	50                   	push   %rax
 92e:	54                   	push   %rsp
 92f:	4c 8d 05 8a 03 00 00 	lea    0x38a(%rip),%r8        # cc0 <__libc_csu_fini>
 936:	48 8d 0d 13 03 00 00 	lea    0x313(%rip),%rcx        # c50 <__libc_csu_init>
 93d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 790 <main>
 944:	ff 15 96 16 20 00    	callq  *0x201696(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 94a:	f4                   	hlt    
 94b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000950 <deregister_tm_clones>:
 950:	48 8d 3d b9 16 20 00 	lea    0x2016b9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 957:	55                   	push   %rbp
 958:	48 8d 05 b1 16 20 00 	lea    0x2016b1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 95f:	48 39 f8             	cmp    %rdi,%rax
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 19                	je     980 <deregister_tm_clones+0x30>
 967:	48 8b 05 6a 16 20 00 	mov    0x20166a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 96e:	48 85 c0             	test   %rax,%rax
 971:	74 0d                	je     980 <deregister_tm_clones+0x30>
 973:	5d                   	pop    %rbp
 974:	ff e0                	jmpq   *%rax
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 
 980:	5d                   	pop    %rbp
 981:	c3                   	retq   
 982:	0f 1f 40 00          	nopl   0x0(%rax)
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <register_tm_clones>:
 990:	48 8d 3d 79 16 20 00 	lea    0x201679(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 997:	48 8d 35 72 16 20 00 	lea    0x201672(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 99e:	55                   	push   %rbp
 99f:	48 29 fe             	sub    %rdi,%rsi
 9a2:	48 89 e5             	mov    %rsp,%rbp
 9a5:	48 c1 fe 03          	sar    $0x3,%rsi
 9a9:	48 89 f0             	mov    %rsi,%rax
 9ac:	48 c1 e8 3f          	shr    $0x3f,%rax
 9b0:	48 01 c6             	add    %rax,%rsi
 9b3:	48 d1 fe             	sar    %rsi
 9b6:	74 18                	je     9d0 <register_tm_clones+0x40>
 9b8:	48 8b 05 31 16 20 00 	mov    0x201631(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9bf:	48 85 c0             	test   %rax,%rax
 9c2:	74 0c                	je     9d0 <register_tm_clones+0x40>
 9c4:	5d                   	pop    %rbp
 9c5:	ff e0                	jmpq   *%rax
 9c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ce:	00 00 
 9d0:	5d                   	pop    %rbp
 9d1:	c3                   	retq   
 9d2:	0f 1f 40 00          	nopl   0x0(%rax)
 9d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9dd:	00 00 00 

00000000000009e0 <__do_global_dtors_aux>:
 9e0:	80 3d 31 16 20 00 00 	cmpb   $0x0,0x201631(%rip)        # 202018 <completed.7698>
 9e7:	75 2f                	jne    a18 <__do_global_dtors_aux+0x38>
 9e9:	48 83 3d 07 16 20 00 	cmpq   $0x0,0x201607(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9f0:	00 
 9f1:	55                   	push   %rbp
 9f2:	48 89 e5             	mov    %rsp,%rbp
 9f5:	74 0c                	je     a03 <__do_global_dtors_aux+0x23>
 9f7:	48 8b 3d 0a 16 20 00 	mov    0x20160a(%rip),%rdi        # 202008 <__dso_handle>
 9fe:	e8 7d fd ff ff       	callq  780 <__cxa_finalize@plt>
 a03:	e8 48 ff ff ff       	callq  950 <deregister_tm_clones>
 a08:	c6 05 09 16 20 00 01 	movb   $0x1,0x201609(%rip)        # 202018 <completed.7698>
 a0f:	5d                   	pop    %rbp
 a10:	c3                   	retq   
 a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a18:	f3 c3                	repz retq 
 a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a20 <frame_dummy>:
 a20:	55                   	push   %rbp
 a21:	48 89 e5             	mov    %rsp,%rbp
 a24:	5d                   	pop    %rbp
 a25:	e9 66 ff ff ff       	jmpq   990 <register_tm_clones>
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a30 <print.part.0>:
 a30:	55                   	push   %rbp
 a31:	53                   	push   %rbx
 a32:	48 8d 35 9b 02 00 00 	lea    0x29b(%rip),%rsi        # cd4 <_IO_stdin_used+0x4>
 a39:	48 8d 2d b1 02 00 00 	lea    0x2b1(%rip),%rbp        # cf1 <_IO_stdin_used+0x21>
 a40:	48 89 fb             	mov    %rdi,%rbx
 a43:	31 c0                	xor    %eax,%eax
 a45:	48 83 ec 08          	sub    $0x8,%rsp
 a49:	8b 15 cd 15 20 00    	mov    0x2015cd(%rip),%edx        # 20201c <n>
 a4f:	bf 01 00 00 00       	mov    $0x1,%edi
 a54:	e8 07 fd ff ff       	callq  760 <__printf_chk@plt>
 a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a60:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a64:	48 8b 13             	mov    (%rbx),%rdx
 a67:	48 89 ee             	mov    %rbp,%rsi
 a6a:	bf 01 00 00 00       	mov    $0x1,%edi
 a6f:	b8 01 00 00 00       	mov    $0x1,%eax
 a74:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a79:	e8 e2 fc ff ff       	callq  760 <__printf_chk@plt>
 a7e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a82:	48 85 db             	test   %rbx,%rbx
 a85:	75 d9                	jne    a60 <print.part.0+0x30>
 a87:	48 83 c4 08          	add    $0x8,%rsp
 a8b:	5b                   	pop    %rbx
 a8c:	5d                   	pop    %rbp
 a8d:	c3                   	retq   
 a8e:	66 90                	xchg   %ax,%ax

0000000000000a90 <print>:
 a90:	48 85 ff             	test   %rdi,%rdi
 a93:	74 0b                	je     aa0 <print+0x10>
 a95:	eb 99                	jmp    a30 <print.part.0>
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 
 aa0:	f3 c3                	repz retq 
 aa2:	0f 1f 40 00          	nopl   0x0(%rax)
 aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aad:	00 00 00 

0000000000000ab0 <insert>:
 ab0:	48 85 ff             	test   %rdi,%rdi
 ab3:	74 5b                	je     b10 <insert+0x60>
 ab5:	48 8b 0e             	mov    (%rsi),%rcx
 ab8:	49 89 f8             	mov    %rdi,%r8
 abb:	48 89 fa             	mov    %rdi,%rdx
 abe:	eb 0f                	jmp    acf <insert+0x1f>
 ac0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 ac4:	49 89 d0             	mov    %rdx,%r8
 ac7:	48 85 c0             	test   %rax,%rax
 aca:	74 24                	je     af0 <insert+0x40>
 acc:	48 89 c2             	mov    %rax,%rdx
 acf:	48 3b 0a             	cmp    (%rdx),%rcx
 ad2:	7f ec                	jg     ac0 <insert+0x10>
 ad4:	48 39 fa             	cmp    %rdi,%rdx
 ad7:	48 89 f0             	mov    %rsi,%rax
 ada:	74 07                	je     ae3 <insert+0x33>
 adc:	49 89 70 10          	mov    %rsi,0x10(%r8)
 ae0:	48 89 f8             	mov    %rdi,%rax
 ae3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ae7:	83 05 2e 15 20 00 01 	addl   $0x1,0x20152e(%rip)        # 20201c <n>
 aee:	c3                   	retq   
 aef:	90                   	nop
 af0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 af4:	48 89 f8             	mov    %rdi,%rax
 af7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 afe:	00 
 aff:	83 05 16 15 20 00 01 	addl   $0x1,0x201516(%rip)        # 20201c <n>
 b06:	c3                   	retq   
 b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b0e:	00 00 
 b10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b17:	00 
 b18:	48 89 f0             	mov    %rsi,%rax
 b1b:	83 05 fa 14 20 00 01 	addl   $0x1,0x2014fa(%rip)        # 20201c <n>
 b22:	c3                   	retq   
 b23:	0f 1f 00             	nopl   (%rax)
 b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b2d:	00 00 00 

0000000000000b30 <create>:
 b30:	41 54                	push   %r12
 b32:	55                   	push   %rbp
 b33:	bf 18 00 00 00       	mov    $0x18,%edi
 b38:	53                   	push   %rbx
 b39:	31 ed                	xor    %ebp,%ebp
 b3b:	e8 00 fc ff ff       	callq  740 <malloc@plt>
 b40:	48 8d 3d b5 01 00 00 	lea    0x1b5(%rip),%rdi        # cfc <_IO_stdin_used+0x2c>
 b47:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b4b:	48 89 c3             	mov    %rax,%rbx
 b4e:	48 89 c6             	mov    %rax,%rsi
 b51:	31 c0                	xor    %eax,%eax
 b53:	e8 18 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b58:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b5c:	74 3c                	je     b9a <create+0x6a>
 b5e:	4c 8d 25 97 01 00 00 	lea    0x197(%rip),%r12        # cfc <_IO_stdin_used+0x2c>
 b65:	0f 1f 00             	nopl   (%rax)
 b68:	48 89 de             	mov    %rbx,%rsi
 b6b:	48 89 ef             	mov    %rbp,%rdi
 b6e:	e8 3d ff ff ff       	callq  ab0 <insert>
 b73:	bf 18 00 00 00       	mov    $0x18,%edi
 b78:	48 89 c5             	mov    %rax,%rbp
 b7b:	e8 c0 fb ff ff       	callq  740 <malloc@plt>
 b80:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b84:	48 89 c3             	mov    %rax,%rbx
 b87:	48 89 c6             	mov    %rax,%rsi
 b8a:	4c 89 e7             	mov    %r12,%rdi
 b8d:	31 c0                	xor    %eax,%eax
 b8f:	e8 dc fb ff ff       	callq  770 <__isoc99_scanf@plt>
 b94:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b98:	75 ce                	jne    b68 <create+0x38>
 b9a:	48 89 df             	mov    %rbx,%rdi
 b9d:	e8 6e fb ff ff       	callq  710 <free@plt>
 ba2:	48 89 e8             	mov    %rbp,%rax
 ba5:	5b                   	pop    %rbx
 ba6:	5d                   	pop    %rbp
 ba7:	41 5c                	pop    %r12
 ba9:	c3                   	retq   
 baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000bb0 <del>:
 bb0:	48 85 ff             	test   %rdi,%rdi
 bb3:	41 54                	push   %r12
 bb5:	48 89 f8             	mov    %rdi,%rax
 bb8:	55                   	push   %rbp
 bb9:	49 89 fc             	mov    %rdi,%r12
 bbc:	53                   	push   %rbx
 bbd:	48 89 fb             	mov    %rdi,%rbx
 bc0:	75 11                	jne    bd3 <del+0x23>
 bc2:	eb 75                	jmp    c39 <del+0x89>
 bc4:	0f 1f 40 00          	nopl   0x0(%rax)
 bc8:	48 85 ed             	test   %rbp,%rbp
 bcb:	48 89 d8             	mov    %rbx,%rax
 bce:	74 48                	je     c18 <del+0x68>
 bd0:	48 89 eb             	mov    %rbp,%rbx
 bd3:	48 8b 13             	mov    (%rbx),%rdx
 bd6:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
 bda:	48 39 f2             	cmp    %rsi,%rdx
 bdd:	75 e9                	jne    bc8 <del+0x18>
 bdf:	4c 39 e3             	cmp    %r12,%rbx
 be2:	74 07                	je     beb <del+0x3b>
 be4:	48 89 68 10          	mov    %rbp,0x10(%rax)
 be8:	4c 89 e5             	mov    %r12,%rbp
 beb:	48 8d 35 1f 01 00 00 	lea    0x11f(%rip),%rsi        # d11 <_IO_stdin_used+0x41>
 bf2:	bf 01 00 00 00       	mov    $0x1,%edi
 bf7:	31 c0                	xor    %eax,%eax
 bf9:	e8 62 fb ff ff       	callq  760 <__printf_chk@plt>
 bfe:	48 89 df             	mov    %rbx,%rdi
 c01:	83 2d 14 14 20 00 01 	subl   $0x1,0x201414(%rip)        # 20201c <n>
 c08:	e8 03 fb ff ff       	callq  710 <free@plt>
 c0d:	48 89 e8             	mov    %rbp,%rax
 c10:	5b                   	pop    %rbx
 c11:	5d                   	pop    %rbp
 c12:	41 5c                	pop    %r12
 c14:	c3                   	retq   
 c15:	0f 1f 00             	nopl   (%rax)
 c18:	48 89 f2             	mov    %rsi,%rdx
 c1b:	48 8d 35 fc 00 00 00 	lea    0xfc(%rip),%rsi        # d1e <_IO_stdin_used+0x4e>
 c22:	4c 89 e5             	mov    %r12,%rbp
 c25:	bf 01 00 00 00       	mov    $0x1,%edi
 c2a:	31 c0                	xor    %eax,%eax
 c2c:	e8 2f fb ff ff       	callq  760 <__printf_chk@plt>
 c31:	48 89 e8             	mov    %rbp,%rax
 c34:	5b                   	pop    %rbx
 c35:	5d                   	pop    %rbp
 c36:	41 5c                	pop    %r12
 c38:	c3                   	retq   
 c39:	48 8d 35 c3 00 00 00 	lea    0xc3(%rip),%rsi        # d03 <_IO_stdin_used+0x33>
 c40:	bf 01 00 00 00       	mov    $0x1,%edi
 c45:	31 c0                	xor    %eax,%eax
 c47:	31 ed                	xor    %ebp,%ebp
 c49:	e8 12 fb ff ff       	callq  760 <__printf_chk@plt>
 c4e:	eb bd                	jmp    c0d <del+0x5d>

0000000000000c50 <__libc_csu_init>:
 c50:	41 57                	push   %r15
 c52:	41 56                	push   %r14
 c54:	49 89 d7             	mov    %rdx,%r15
 c57:	41 55                	push   %r13
 c59:	41 54                	push   %r12
 c5b:	4c 8d 25 26 11 20 00 	lea    0x201126(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c62:	55                   	push   %rbp
 c63:	48 8d 2d 26 11 20 00 	lea    0x201126(%rip),%rbp        # 201d90 <__init_array_end>
 c6a:	53                   	push   %rbx
 c6b:	41 89 fd             	mov    %edi,%r13d
 c6e:	49 89 f6             	mov    %rsi,%r14
 c71:	4c 29 e5             	sub    %r12,%rbp
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 c1 fd 03          	sar    $0x3,%rbp
 c7c:	e8 67 fa ff ff       	callq  6e8 <_init>
 c81:	48 85 ed             	test   %rbp,%rbp
 c84:	74 20                	je     ca6 <__libc_csu_init+0x56>
 c86:	31 db                	xor    %ebx,%ebx
 c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c8f:	00 
 c90:	4c 89 fa             	mov    %r15,%rdx
 c93:	4c 89 f6             	mov    %r14,%rsi
 c96:	44 89 ef             	mov    %r13d,%edi
 c99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c9d:	48 83 c3 01          	add    $0x1,%rbx
 ca1:	48 39 dd             	cmp    %rbx,%rbp
 ca4:	75 ea                	jne    c90 <__libc_csu_init+0x40>
 ca6:	48 83 c4 08          	add    $0x8,%rsp
 caa:	5b                   	pop    %rbx
 cab:	5d                   	pop    %rbp
 cac:	41 5c                	pop    %r12
 cae:	41 5d                	pop    %r13
 cb0:	41 5e                	pop    %r14
 cb2:	41 5f                	pop    %r15
 cb4:	c3                   	retq   
 cb5:	90                   	nop
 cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cbd:	00 00 00 

0000000000000cc0 <__libc_csu_fini>:
 cc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cc4 <_fini>:
 cc4:	48 83 ec 08          	sub    $0x8,%rsp
 cc8:	48 83 c4 08          	add    $0x8,%rsp
 ccc:	c3                   	retq   
