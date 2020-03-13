
input/19020031106_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000660 <_init>:
 660:	48 83 ec 08          	sub    $0x8,%rsp
 664:	48 8b 05 7d 19 20 00 	mov    0x20197d(%rip),%rax        # 201fe8 <__gmon_start__>
 66b:	48 85 c0             	test   %rax,%rax
 66e:	74 02                	je     672 <_init+0x12>
 670:	ff d0                	callq  *%rax
 672:	48 83 c4 08          	add    $0x8,%rsp
 676:	c3                   	retq   

Disassembly of section .plt:

0000000000000680 <.plt>:
 680:	ff 35 1a 19 20 00    	pushq  0x20191a(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 686:	ff 25 1c 19 20 00    	jmpq   *0x20191c(%rip)        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 68c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000690 <puts@plt>:
 690:	ff 25 1a 19 20 00    	jmpq   *0x20191a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 696:	68 00 00 00 00       	pushq  $0x0
 69b:	e9 e0 ff ff ff       	jmpq   680 <.plt>

00000000000006a0 <__stack_chk_fail@plt>:
 6a0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6a6:	68 01 00 00 00       	pushq  $0x1
 6ab:	e9 d0 ff ff ff       	jmpq   680 <.plt>

00000000000006b0 <malloc@plt>:
 6b0:	ff 25 0a 19 20 00    	jmpq   *0x20190a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6b6:	68 02 00 00 00       	pushq  $0x2
 6bb:	e9 c0 ff ff ff       	jmpq   680 <.plt>

00000000000006c0 <__printf_chk@plt>:
 6c0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 6c6:	68 03 00 00 00       	pushq  $0x3
 6cb:	e9 b0 ff ff ff       	jmpq   680 <.plt>

00000000000006d0 <__isoc99_scanf@plt>:
 6d0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 6d6:	68 04 00 00 00       	pushq  $0x4
 6db:	e9 a0 ff ff ff       	jmpq   680 <.plt>

Disassembly of section .plt.got:

00000000000006e0 <__cxa_finalize@plt>:
 6e0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 6e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006f0 <main>:
 6f0:	41 57                	push   %r15
 6f2:	41 56                	push   %r14
 6f4:	48 8d 3d 9b 05 00 00 	lea    0x59b(%rip),%rdi        # c96 <_IO_stdin_used+0x56>
 6fb:	41 55                	push   %r13
 6fd:	41 54                	push   %r12
 6ff:	4c 8d 25 bf 05 00 00 	lea    0x5bf(%rip),%r12        # cc5 <_IO_stdin_used+0x85>
 706:	55                   	push   %rbp
 707:	53                   	push   %rbx
 708:	48 83 ec 38          	sub    $0x38,%rsp
 70c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 713:	00 00 
 715:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 71a:	31 c0                	xor    %eax,%eax
 71c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
 721:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
 726:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
 72b:	e8 60 ff ff ff       	callq  690 <puts@plt>
 730:	31 c0                	xor    %eax,%eax
 732:	4c 8d 75 08          	lea    0x8(%rbp),%r14
 736:	e8 35 02 00 00       	callq  970 <creat>
 73b:	48 89 c7             	mov    %rax,%rdi
 73e:	48 89 c3             	mov    %rax,%rbx
 741:	e8 1a 04 00 00       	callq  b60 <print>
 746:	48 8d 3d 67 05 00 00 	lea    0x567(%rip),%rdi        # cb4 <_IO_stdin_used+0x74>
 74d:	e8 3e ff ff ff       	callq  690 <puts@plt>
 752:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 758:	4c 89 e7             	mov    %r12,%rdi
 75b:	e8 30 ff ff ff       	callq  690 <puts@plt>
 760:	48 8d 3d 73 05 00 00 	lea    0x573(%rip),%rdi        # cda <_IO_stdin_used+0x9a>
 767:	31 c0                	xor    %eax,%eax
 769:	4c 89 ee             	mov    %r13,%rsi
 76c:	e8 5f ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 771:	8b 44 24 04          	mov    0x4(%rsp),%eax
 775:	83 f8 01             	cmp    $0x1,%eax
 778:	74 76                	je     7f0 <main+0x100>
 77a:	83 f8 02             	cmp    $0x2,%eax
 77d:	0f 85 b5 00 00 00    	jne    838 <main+0x148>
 783:	48 8d 35 70 05 00 00 	lea    0x570(%rip),%rsi        # cfa <_IO_stdin_used+0xba>
 78a:	bf 01 00 00 00       	mov    $0x1,%edi
 78f:	31 c0                	xor    %eax,%eax
 791:	e8 2a ff ff ff       	callq  6c0 <__printf_chk@plt>
 796:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # cf6 <_IO_stdin_used+0xb6>
 79d:	48 89 ee             	mov    %rbp,%rsi
 7a0:	31 c0                	xor    %eax,%eax
 7a2:	e8 29 ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 7a7:	48 8d 35 65 05 00 00 	lea    0x565(%rip),%rsi        # d13 <_IO_stdin_used+0xd3>
 7ae:	bf 01 00 00 00       	mov    $0x1,%edi
 7b3:	31 c0                	xor    %eax,%eax
 7b5:	e8 06 ff ff ff       	callq  6c0 <__printf_chk@plt>
 7ba:	48 8d 3d 91 04 00 00 	lea    0x491(%rip),%rdi        # c52 <_IO_stdin_used+0x12>
 7c1:	4c 89 f6             	mov    %r14,%rsi
 7c4:	31 c0                	xor    %eax,%eax
 7c6:	e8 05 ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 7cb:	48 89 df             	mov    %rbx,%rdi
 7ce:	48 89 ee             	mov    %rbp,%rsi
 7d1:	e8 0a 03 00 00       	callq  ae0 <insert>
 7d6:	48 89 c7             	mov    %rax,%rdi
 7d9:	48 89 c3             	mov    %rax,%rbx
 7dc:	e8 7f 03 00 00       	callq  b60 <print>
 7e1:	e9 72 ff ff ff       	jmpq   758 <main+0x68>
 7e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7ed:	00 00 00 
 7f0:	48 8d 35 e6 04 00 00 	lea    0x4e6(%rip),%rsi        # cdd <_IO_stdin_used+0x9d>
 7f7:	bf 01 00 00 00       	mov    $0x1,%edi
 7fc:	31 c0                	xor    %eax,%eax
 7fe:	e8 bd fe ff ff       	callq  6c0 <__printf_chk@plt>
 803:	48 8d 3d ec 04 00 00 	lea    0x4ec(%rip),%rdi        # cf6 <_IO_stdin_used+0xb6>
 80a:	4c 89 fe             	mov    %r15,%rsi
 80d:	31 c0                	xor    %eax,%eax
 80f:	e8 bc fe ff ff       	callq  6d0 <__isoc99_scanf@plt>
 814:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 819:	48 89 df             	mov    %rbx,%rdi
 81c:	e8 1f 02 00 00       	callq  a40 <del>
 821:	48 89 c7             	mov    %rax,%rdi
 824:	48 89 c3             	mov    %rax,%rbx
 827:	e8 34 03 00 00       	callq  b60 <print>
 82c:	e9 27 ff ff ff       	jmpq   758 <main+0x68>
 831:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 838:	31 c0                	xor    %eax,%eax
 83a:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 83f:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 846:	00 00 
 848:	75 0f                	jne    859 <main+0x169>
 84a:	48 83 c4 38          	add    $0x38,%rsp
 84e:	5b                   	pop    %rbx
 84f:	5d                   	pop    %rbp
 850:	41 5c                	pop    %r12
 852:	41 5d                	pop    %r13
 854:	41 5e                	pop    %r14
 856:	41 5f                	pop    %r15
 858:	c3                   	retq   
 859:	e8 42 fe ff ff       	callq  6a0 <__stack_chk_fail@plt>
 85e:	66 90                	xchg   %ax,%ax

0000000000000860 <_start>:
 860:	31 ed                	xor    %ebp,%ebp
 862:	49 89 d1             	mov    %rdx,%r9
 865:	5e                   	pop    %rsi
 866:	48 89 e2             	mov    %rsp,%rdx
 869:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 86d:	50                   	push   %rax
 86e:	54                   	push   %rsp
 86f:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # c30 <__libc_csu_fini>
 876:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # bc0 <__libc_csu_init>
 87d:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 6f0 <main>
 884:	ff 15 56 17 20 00    	callq  *0x201756(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 88a:	f4                   	hlt    
 88b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000890 <deregister_tm_clones>:
 890:	48 8d 3d 79 17 20 00 	lea    0x201779(%rip),%rdi        # 202010 <__TMC_END__>
 897:	55                   	push   %rbp
 898:	48 8d 05 71 17 20 00 	lea    0x201771(%rip),%rax        # 202010 <__TMC_END__>
 89f:	48 39 f8             	cmp    %rdi,%rax
 8a2:	48 89 e5             	mov    %rsp,%rbp
 8a5:	74 19                	je     8c0 <deregister_tm_clones+0x30>
 8a7:	48 8b 05 2a 17 20 00 	mov    0x20172a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ae:	48 85 c0             	test   %rax,%rax
 8b1:	74 0d                	je     8c0 <deregister_tm_clones+0x30>
 8b3:	5d                   	pop    %rbp
 8b4:	ff e0                	jmpq   *%rax
 8b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8bd:	00 00 00 
 8c0:	5d                   	pop    %rbp
 8c1:	c3                   	retq   
 8c2:	0f 1f 40 00          	nopl   0x0(%rax)
 8c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8cd:	00 00 00 

00000000000008d0 <register_tm_clones>:
 8d0:	48 8d 3d 39 17 20 00 	lea    0x201739(%rip),%rdi        # 202010 <__TMC_END__>
 8d7:	48 8d 35 32 17 20 00 	lea    0x201732(%rip),%rsi        # 202010 <__TMC_END__>
 8de:	55                   	push   %rbp
 8df:	48 29 fe             	sub    %rdi,%rsi
 8e2:	48 89 e5             	mov    %rsp,%rbp
 8e5:	48 c1 fe 03          	sar    $0x3,%rsi
 8e9:	48 89 f0             	mov    %rsi,%rax
 8ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 8f0:	48 01 c6             	add    %rax,%rsi
 8f3:	48 d1 fe             	sar    %rsi
 8f6:	74 18                	je     910 <register_tm_clones+0x40>
 8f8:	48 8b 05 f1 16 20 00 	mov    0x2016f1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8ff:	48 85 c0             	test   %rax,%rax
 902:	74 0c                	je     910 <register_tm_clones+0x40>
 904:	5d                   	pop    %rbp
 905:	ff e0                	jmpq   *%rax
 907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 90e:	00 00 
 910:	5d                   	pop    %rbp
 911:	c3                   	retq   
 912:	0f 1f 40 00          	nopl   0x0(%rax)
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 

0000000000000920 <__do_global_dtors_aux>:
 920:	80 3d e9 16 20 00 00 	cmpb   $0x0,0x2016e9(%rip)        # 202010 <__TMC_END__>
 927:	75 2f                	jne    958 <__do_global_dtors_aux+0x38>
 929:	48 83 3d c7 16 20 00 	cmpq   $0x0,0x2016c7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 930:	00 
 931:	55                   	push   %rbp
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	74 0c                	je     943 <__do_global_dtors_aux+0x23>
 937:	48 8b 3d ca 16 20 00 	mov    0x2016ca(%rip),%rdi        # 202008 <__dso_handle>
 93e:	e8 9d fd ff ff       	callq  6e0 <__cxa_finalize@plt>
 943:	e8 48 ff ff ff       	callq  890 <deregister_tm_clones>
 948:	c6 05 c1 16 20 00 01 	movb   $0x1,0x2016c1(%rip)        # 202010 <__TMC_END__>
 94f:	5d                   	pop    %rbp
 950:	c3                   	retq   
 951:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 958:	f3 c3                	repz retq 
 95a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000960 <frame_dummy>:
 960:	55                   	push   %rbp
 961:	48 89 e5             	mov    %rsp,%rbp
 964:	5d                   	pop    %rbp
 965:	e9 66 ff ff ff       	jmpq   8d0 <register_tm_clones>
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000970 <creat>:
 970:	41 56                	push   %r14
 972:	41 55                	push   %r13
 974:	bf 18 00 00 00       	mov    $0x18,%edi
 979:	41 54                	push   %r12
 97b:	55                   	push   %rbp
 97c:	45 31 f6             	xor    %r14d,%r14d
 97f:	53                   	push   %rbx
 980:	c7 05 8a 16 20 00 00 	movl   $0x0,0x20168a(%rip)        # 202014 <n>
 987:	00 00 00 
 98a:	4c 8d 2d bd 02 00 00 	lea    0x2bd(%rip),%r13        # c4e <_IO_stdin_used+0xe>
 991:	e8 1a fd ff ff       	callq  6b0 <malloc@plt>
 996:	48 8d 3d a7 02 00 00 	lea    0x2a7(%rip),%rdi        # c44 <_IO_stdin_used+0x4>
 99d:	49 89 c4             	mov    %rax,%r12
 9a0:	4c 89 e5             	mov    %r12,%rbp
 9a3:	e8 e8 fc ff ff       	callq  690 <puts@plt>
 9a8:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
 9ad:	48 8d 3d 9a 02 00 00 	lea    0x29a(%rip),%rdi        # c4e <_IO_stdin_used+0xe>
 9b4:	31 c0                	xor    %eax,%eax
 9b6:	4c 89 e6             	mov    %r12,%rsi
 9b9:	e8 12 fd ff ff       	callq  6d0 <__isoc99_scanf@plt>
 9be:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 9c3:	75 3a                	jne    9ff <creat+0x8f>
 9c5:	eb 59                	jmp    a20 <creat+0xb0>
 9c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ce:	00 00 
 9d0:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 9d5:	bf 18 00 00 00       	mov    $0x18,%edi
 9da:	49 89 ec             	mov    %rbp,%r12
 9dd:	e8 ce fc ff ff       	callq  6b0 <malloc@plt>
 9e2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 9e6:	48 89 c3             	mov    %rax,%rbx
 9e9:	48 89 c6             	mov    %rax,%rsi
 9ec:	4c 89 ef             	mov    %r13,%rdi
 9ef:	31 c0                	xor    %eax,%eax
 9f1:	e8 da fc ff ff       	callq  6d0 <__isoc99_scanf@plt>
 9f6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 9fa:	74 24                	je     a20 <creat+0xb0>
 9fc:	48 89 dd             	mov    %rbx,%rbp
 9ff:	8b 05 0f 16 20 00    	mov    0x20160f(%rip),%eax        # 202014 <n>
 a05:	83 c0 01             	add    $0x1,%eax
 a08:	83 f8 01             	cmp    $0x1,%eax
 a0b:	89 05 03 16 20 00    	mov    %eax,0x201603(%rip)        # 202014 <n>
 a11:	75 bd                	jne    9d0 <creat+0x60>
 a13:	49 89 ee             	mov    %rbp,%r14
 a16:	eb bd                	jmp    9d5 <creat+0x65>
 a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a1f:	00 
 a20:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 a27:	00 
 a28:	4c 89 f0             	mov    %r14,%rax
 a2b:	5b                   	pop    %rbx
 a2c:	5d                   	pop    %rbp
 a2d:	41 5c                	pop    %r12
 a2f:	41 5d                	pop    %r13
 a31:	41 5e                	pop    %r14
 a33:	c3                   	retq   
 a34:	66 90                	xchg   %ax,%ax
 a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a3d:	00 00 00 

0000000000000a40 <del>:
 a40:	55                   	push   %rbp
 a41:	53                   	push   %rbx
 a42:	48 89 fd             	mov    %rdi,%rbp
 a45:	48 89 f8             	mov    %rdi,%rax
 a48:	48 83 ec 08          	sub    $0x8,%rsp
 a4c:	48 85 ff             	test   %rdi,%rdi
 a4f:	75 12                	jne    a63 <del+0x23>
 a51:	eb 70                	jmp    ac3 <del+0x83>
 a53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a58:	48 85 db             	test   %rbx,%rbx
 a5b:	48 89 c1             	mov    %rax,%rcx
 a5e:	74 40                	je     aa0 <del+0x60>
 a60:	48 89 d8             	mov    %rbx,%rax
 a63:	48 8b 10             	mov    (%rax),%rdx
 a66:	48 8b 58 10          	mov    0x10(%rax),%rbx
 a6a:	48 39 f2             	cmp    %rsi,%rdx
 a6d:	75 e9                	jne    a58 <del+0x18>
 a6f:	48 39 e8             	cmp    %rbp,%rax
 a72:	74 07                	je     a7b <del+0x3b>
 a74:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 a78:	48 89 eb             	mov    %rbp,%rbx
 a7b:	48 8d 35 dc 01 00 00 	lea    0x1dc(%rip),%rsi        # c5e <_IO_stdin_used+0x1e>
 a82:	bf 01 00 00 00       	mov    $0x1,%edi
 a87:	31 c0                	xor    %eax,%eax
 a89:	e8 32 fc ff ff       	callq  6c0 <__printf_chk@plt>
 a8e:	83 2d 7f 15 20 00 01 	subl   $0x1,0x20157f(%rip)        # 202014 <n>
 a95:	48 83 c4 08          	add    $0x8,%rsp
 a99:	48 89 d8             	mov    %rbx,%rax
 a9c:	5b                   	pop    %rbx
 a9d:	5d                   	pop    %rbp
 a9e:	c3                   	retq   
 a9f:	90                   	nop
 aa0:	48 89 f2             	mov    %rsi,%rdx
 aa3:	48 8d 35 bf 01 00 00 	lea    0x1bf(%rip),%rsi        # c69 <_IO_stdin_used+0x29>
 aaa:	bf 01 00 00 00       	mov    $0x1,%edi
 aaf:	31 c0                	xor    %eax,%eax
 ab1:	48 89 eb             	mov    %rbp,%rbx
 ab4:	e8 07 fc ff ff       	callq  6c0 <__printf_chk@plt>
 ab9:	48 83 c4 08          	add    $0x8,%rsp
 abd:	48 89 d8             	mov    %rbx,%rax
 ac0:	5b                   	pop    %rbx
 ac1:	5d                   	pop    %rbp
 ac2:	c3                   	retq   
 ac3:	48 8d 3d 8b 01 00 00 	lea    0x18b(%rip),%rdi        # c55 <_IO_stdin_used+0x15>
 aca:	31 db                	xor    %ebx,%ebx
 acc:	e8 bf fb ff ff       	callq  690 <puts@plt>
 ad1:	eb c2                	jmp    a95 <del+0x55>
 ad3:	0f 1f 00             	nopl   (%rax)
 ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 add:	00 00 00 

0000000000000ae0 <insert>:
 ae0:	48 85 ff             	test   %rdi,%rdi
 ae3:	74 5b                	je     b40 <insert+0x60>
 ae5:	48 8b 0e             	mov    (%rsi),%rcx
 ae8:	48 89 fa             	mov    %rdi,%rdx
 aeb:	eb 12                	jmp    aff <insert+0x1f>
 aed:	0f 1f 00             	nopl   (%rax)
 af0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 af4:	49 89 d0             	mov    %rdx,%r8
 af7:	48 85 c0             	test   %rax,%rax
 afa:	74 24                	je     b20 <insert+0x40>
 afc:	48 89 c2             	mov    %rax,%rdx
 aff:	48 3b 0a             	cmp    (%rdx),%rcx
 b02:	7f ec                	jg     af0 <insert+0x10>
 b04:	48 39 fa             	cmp    %rdi,%rdx
 b07:	48 89 f0             	mov    %rsi,%rax
 b0a:	74 07                	je     b13 <insert+0x33>
 b0c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 b10:	48 89 f8             	mov    %rdi,%rax
 b13:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b17:	83 05 f6 14 20 00 01 	addl   $0x1,0x2014f6(%rip)        # 202014 <n>
 b1e:	c3                   	retq   
 b1f:	90                   	nop
 b20:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b24:	48 89 f8             	mov    %rdi,%rax
 b27:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b2e:	00 
 b2f:	83 05 de 14 20 00 01 	addl   $0x1,0x2014de(%rip)        # 202014 <n>
 b36:	c3                   	retq   
 b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b3e:	00 00 
 b40:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b47:	00 
 b48:	48 89 f0             	mov    %rsi,%rax
 b4b:	83 05 c2 14 20 00 01 	addl   $0x1,0x2014c2(%rip)        # 202014 <n>
 b52:	c3                   	retq   
 b53:	0f 1f 00             	nopl   (%rax)
 b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b5d:	00 00 00 

0000000000000b60 <print>:
 b60:	55                   	push   %rbp
 b61:	53                   	push   %rbx
 b62:	48 89 fb             	mov    %rdi,%rbx
 b65:	48 8d 3d 12 01 00 00 	lea    0x112(%rip),%rdi        # c7e <_IO_stdin_used+0x3e>
 b6c:	48 83 ec 08          	sub    $0x8,%rsp
 b70:	e8 1b fb ff ff       	callq  690 <puts@plt>
 b75:	48 85 db             	test   %rbx,%rbx
 b78:	74 35                	je     baf <print+0x4f>
 b7a:	48 8d 2d 09 01 00 00 	lea    0x109(%rip),%rbp        # c8a <_IO_stdin_used+0x4a>
 b81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b88:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b8c:	48 8b 13             	mov    (%rbx),%rdx
 b8f:	48 89 ee             	mov    %rbp,%rsi
 b92:	bf 01 00 00 00       	mov    $0x1,%edi
 b97:	b8 01 00 00 00       	mov    $0x1,%eax
 b9c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 ba1:	e8 1a fb ff ff       	callq  6c0 <__printf_chk@plt>
 ba6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 baa:	48 85 db             	test   %rbx,%rbx
 bad:	75 d9                	jne    b88 <print+0x28>
 baf:	48 83 c4 08          	add    $0x8,%rsp
 bb3:	5b                   	pop    %rbx
 bb4:	5d                   	pop    %rbp
 bb5:	c3                   	retq   
 bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bbd:	00 00 00 

0000000000000bc0 <__libc_csu_init>:
 bc0:	41 57                	push   %r15
 bc2:	41 56                	push   %r14
 bc4:	49 89 d7             	mov    %rdx,%r15
 bc7:	41 55                	push   %r13
 bc9:	41 54                	push   %r12
 bcb:	4c 8d 25 c6 11 20 00 	lea    0x2011c6(%rip),%r12        # 201d98 <__frame_dummy_init_array_entry>
 bd2:	55                   	push   %rbp
 bd3:	48 8d 2d c6 11 20 00 	lea    0x2011c6(%rip),%rbp        # 201da0 <__init_array_end>
 bda:	53                   	push   %rbx
 bdb:	41 89 fd             	mov    %edi,%r13d
 bde:	49 89 f6             	mov    %rsi,%r14
 be1:	4c 29 e5             	sub    %r12,%rbp
 be4:	48 83 ec 08          	sub    $0x8,%rsp
 be8:	48 c1 fd 03          	sar    $0x3,%rbp
 bec:	e8 6f fa ff ff       	callq  660 <_init>
 bf1:	48 85 ed             	test   %rbp,%rbp
 bf4:	74 20                	je     c16 <__libc_csu_init+0x56>
 bf6:	31 db                	xor    %ebx,%ebx
 bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bff:	00 
 c00:	4c 89 fa             	mov    %r15,%rdx
 c03:	4c 89 f6             	mov    %r14,%rsi
 c06:	44 89 ef             	mov    %r13d,%edi
 c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c0d:	48 83 c3 01          	add    $0x1,%rbx
 c11:	48 39 dd             	cmp    %rbx,%rbp
 c14:	75 ea                	jne    c00 <__libc_csu_init+0x40>
 c16:	48 83 c4 08          	add    $0x8,%rsp
 c1a:	5b                   	pop    %rbx
 c1b:	5d                   	pop    %rbp
 c1c:	41 5c                	pop    %r12
 c1e:	41 5d                	pop    %r13
 c20:	41 5e                	pop    %r14
 c22:	41 5f                	pop    %r15
 c24:	c3                   	retq   
 c25:	90                   	nop
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 

0000000000000c30 <__libc_csu_fini>:
 c30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c34 <_fini>:
 c34:	48 83 ec 08          	sub    $0x8,%rsp
 c38:	48 83 c4 08          	add    $0x8,%rsp
 c3c:	c3                   	retq   
