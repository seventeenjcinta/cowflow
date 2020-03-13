
input/19020031104_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006a8 <_init>:
 6a8:	48 83 ec 08          	sub    $0x8,%rsp
 6ac:	48 8b 05 35 19 20 00 	mov    0x201935(%rip),%rax        # 201fe8 <__gmon_start__>
 6b3:	48 85 c0             	test   %rax,%rax
 6b6:	74 02                	je     6ba <_init+0x12>
 6b8:	ff d0                	callq  *%rax
 6ba:	48 83 c4 08          	add    $0x8,%rsp
 6be:	c3                   	retq   

Disassembly of section .plt:

00000000000006c0 <.plt>:
 6c0:	ff 35 ca 18 20 00    	pushq  0x2018ca(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6c6:	ff 25 cc 18 20 00    	jmpq   *0x2018cc(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006d0 <free@plt>:
 6d0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 6d6:	68 00 00 00 00       	pushq  $0x0
 6db:	e9 e0 ff ff ff       	jmpq   6c0 <.plt>

00000000000006e0 <putchar@plt>:
 6e0:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 6e6:	68 01 00 00 00       	pushq  $0x1
 6eb:	e9 d0 ff ff ff       	jmpq   6c0 <.plt>

00000000000006f0 <puts@plt>:
 6f0:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6f6:	68 02 00 00 00       	pushq  $0x2
 6fb:	e9 c0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000700 <malloc@plt>:
 700:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 706:	68 03 00 00 00       	pushq  $0x3
 70b:	e9 b0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000710 <__printf_chk@plt>:
 710:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 716:	68 04 00 00 00       	pushq  $0x4
 71b:	e9 a0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000720 <__isoc99_scanf@plt>:
 720:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 726:	68 05 00 00 00       	pushq  $0x5
 72b:	e9 90 ff ff ff       	jmpq   6c0 <.plt>

0000000000000730 <exit@plt>:
 730:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 736:	68 06 00 00 00       	pushq  $0x6
 73b:	e9 80 ff ff ff       	jmpq   6c0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <__cxa_finalize@plt>:
 740:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <main>:
 750:	41 55                	push   %r13
 752:	41 54                	push   %r12
 754:	48 8d 3d e7 05 00 00 	lea    0x5e7(%rip),%rdi        # d42 <_IO_stdin_used+0x82>
 75b:	55                   	push   %rbp
 75c:	53                   	push   %rbx
 75d:	48 83 ec 18          	sub    $0x18,%rsp
 761:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 768:	00 00 
 76a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 76f:	31 c0                	xor    %eax,%eax
 771:	e8 7a ff ff ff       	callq  6f0 <puts@plt>
 776:	48 8d 3d 53 06 00 00 	lea    0x653(%rip),%rdi        # dd0 <_IO_stdin_used+0x110>
 77d:	e8 6e ff ff ff       	callq  6f0 <puts@plt>
 782:	e8 79 03 00 00       	callq  b00 <creat>
 787:	48 85 c0             	test   %rax,%rax
 78a:	48 89 c3             	mov    %rax,%rbx
 78d:	74 08                	je     797 <main+0x47>
 78f:	48 89 c7             	mov    %rax,%rdi
 792:	e8 29 04 00 00       	callq  bc0 <print>
 797:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
 79c:	49 89 e4             	mov    %rsp,%r12
 79f:	90                   	nop
 7a0:	48 8d 3d b2 05 00 00 	lea    0x5b2(%rip),%rdi        # d59 <_IO_stdin_used+0x99>
 7a7:	e8 44 ff ff ff       	callq  6f0 <puts@plt>
 7ac:	48 8d 35 c0 05 00 00 	lea    0x5c0(%rip),%rsi        # d73 <_IO_stdin_used+0xb3>
 7b3:	bf 01 00 00 00       	mov    $0x1,%edi
 7b8:	31 c0                	xor    %eax,%eax
 7ba:	e8 51 ff ff ff       	callq  710 <__printf_chk@plt>
 7bf:	48 8d 3d bc 05 00 00 	lea    0x5bc(%rip),%rdi        # d82 <_IO_stdin_used+0xc2>
 7c6:	31 c0                	xor    %eax,%eax
 7c8:	4c 89 e6             	mov    %r12,%rsi
 7cb:	e8 50 ff ff ff       	callq  720 <__isoc99_scanf@plt>
 7d0:	8b 04 24             	mov    (%rsp),%eax
 7d3:	85 c0                	test   %eax,%eax
 7d5:	0f 84 dd 00 00 00    	je     8b8 <main+0x168>
 7db:	83 f8 01             	cmp    $0x1,%eax
 7de:	74 58                	je     838 <main+0xe8>
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	0f 85 b7 00 00 00    	jne    8a0 <main+0x150>
 7e9:	48 85 db             	test   %rbx,%rbx
 7ec:	0f 84 cd 00 00 00    	je     8bf <main+0x16f>
 7f2:	48 8d 35 b7 05 00 00 	lea    0x5b7(%rip),%rsi        # db0 <_IO_stdin_used+0xf0>
 7f9:	bf 01 00 00 00       	mov    $0x1,%edi
 7fe:	31 c0                	xor    %eax,%eax
 800:	e8 0b ff ff ff       	callq  710 <__printf_chk@plt>
 805:	48 8d 3d 76 05 00 00 	lea    0x576(%rip),%rdi        # d82 <_IO_stdin_used+0xc2>
 80c:	4c 89 ee             	mov    %r13,%rsi
 80f:	31 c0                	xor    %eax,%eax
 811:	e8 0a ff ff ff       	callq  720 <__isoc99_scanf@plt>
 816:	8b 74 24 04          	mov    0x4(%rsp),%esi
 81a:	48 89 df             	mov    %rbx,%rdi
 81d:	e8 3e 02 00 00       	callq  a60 <delete>
 822:	48 89 c7             	mov    %rax,%rdi
 825:	48 89 c3             	mov    %rax,%rbx
 828:	e8 93 03 00 00       	callq  bc0 <print>
 82d:	e9 6e ff ff ff       	jmpq   7a0 <main+0x50>
 832:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 838:	48 8d 35 46 05 00 00 	lea    0x546(%rip),%rsi        # d85 <_IO_stdin_used+0xc5>
 83f:	bf 01 00 00 00       	mov    $0x1,%edi
 844:	31 c0                	xor    %eax,%eax
 846:	e8 c5 fe ff ff       	callq  710 <__printf_chk@plt>
 84b:	bf 10 00 00 00       	mov    $0x10,%edi
 850:	e8 ab fe ff ff       	callq  700 <malloc@plt>
 855:	48 8d 3d a2 04 00 00 	lea    0x4a2(%rip),%rdi        # cfe <_IO_stdin_used+0x3e>
 85c:	48 8d 50 04          	lea    0x4(%rax),%rdx
 860:	48 89 c5             	mov    %rax,%rbp
 863:	48 89 c6             	mov    %rax,%rsi
 866:	31 c0                	xor    %eax,%eax
 868:	e8 b3 fe ff ff       	callq  720 <__isoc99_scanf@plt>
 86d:	48 89 ee             	mov    %rbp,%rsi
 870:	48 89 df             	mov    %rbx,%rdi
 873:	e8 68 01 00 00       	callq  9e0 <insert>
 878:	8b 55 00             	mov    0x0(%rbp),%edx
 87b:	48 8d 35 1f 05 00 00 	lea    0x51f(%rip),%rsi        # da1 <_IO_stdin_used+0xe1>
 882:	48 89 c3             	mov    %rax,%rbx
 885:	bf 01 00 00 00       	mov    $0x1,%edi
 88a:	31 c0                	xor    %eax,%eax
 88c:	e8 7f fe ff ff       	callq  710 <__printf_chk@plt>
 891:	48 89 df             	mov    %rbx,%rdi
 894:	e8 27 03 00 00       	callq  bc0 <print>
 899:	e9 02 ff ff ff       	jmpq   7a0 <main+0x50>
 89e:	66 90                	xchg   %ax,%ax
 8a0:	48 8d 3d 1b 05 00 00 	lea    0x51b(%rip),%rdi        # dc2 <_IO_stdin_used+0x102>
 8a7:	e8 44 fe ff ff       	callq  6f0 <puts@plt>
 8ac:	e9 ef fe ff ff       	jmpq   7a0 <main+0x50>
 8b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8b8:	31 ff                	xor    %edi,%edi
 8ba:	e8 71 fe ff ff       	callq  730 <exit@plt>
 8bf:	48 8d 3d 3a 05 00 00 	lea    0x53a(%rip),%rdi        # e00 <_IO_stdin_used+0x140>
 8c6:	e8 25 fe ff ff       	callq  6f0 <puts@plt>
 8cb:	e9 d0 fe ff ff       	jmpq   7a0 <main+0x50>

00000000000008d0 <_start>:
 8d0:	31 ed                	xor    %ebp,%ebp
 8d2:	49 89 d1             	mov    %rdx,%r9
 8d5:	5e                   	pop    %rsi
 8d6:	48 89 e2             	mov    %rsp,%rdx
 8d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8dd:	50                   	push   %rax
 8de:	54                   	push   %rsp
 8df:	4c 8d 05 ca 03 00 00 	lea    0x3ca(%rip),%r8        # cb0 <__libc_csu_fini>
 8e6:	48 8d 0d 53 03 00 00 	lea    0x353(%rip),%rcx        # c40 <__libc_csu_init>
 8ed:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 750 <main>
 8f4:	ff 15 e6 16 20 00    	callq  *0x2016e6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8fa:	f4                   	hlt    
 8fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000900 <deregister_tm_clones>:
 900:	48 8d 3d 09 17 20 00 	lea    0x201709(%rip),%rdi        # 202010 <__TMC_END__>
 907:	55                   	push   %rbp
 908:	48 8d 05 01 17 20 00 	lea    0x201701(%rip),%rax        # 202010 <__TMC_END__>
 90f:	48 39 f8             	cmp    %rdi,%rax
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	74 19                	je     930 <deregister_tm_clones+0x30>
 917:	48 8b 05 ba 16 20 00 	mov    0x2016ba(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 91e:	48 85 c0             	test   %rax,%rax
 921:	74 0d                	je     930 <deregister_tm_clones+0x30>
 923:	5d                   	pop    %rbp
 924:	ff e0                	jmpq   *%rax
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 
 930:	5d                   	pop    %rbp
 931:	c3                   	retq   
 932:	0f 1f 40 00          	nopl   0x0(%rax)
 936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 93d:	00 00 00 

0000000000000940 <register_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    0x2016c9(%rip),%rdi        # 202010 <__TMC_END__>
 947:	48 8d 35 c2 16 20 00 	lea    0x2016c2(%rip),%rsi        # 202010 <__TMC_END__>
 94e:	55                   	push   %rbp
 94f:	48 29 fe             	sub    %rdi,%rsi
 952:	48 89 e5             	mov    %rsp,%rbp
 955:	48 c1 fe 03          	sar    $0x3,%rsi
 959:	48 89 f0             	mov    %rsi,%rax
 95c:	48 c1 e8 3f          	shr    $0x3f,%rax
 960:	48 01 c6             	add    %rax,%rsi
 963:	48 d1 fe             	sar    %rsi
 966:	74 18                	je     980 <register_tm_clones+0x40>
 968:	48 8b 05 81 16 20 00 	mov    0x201681(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 96f:	48 85 c0             	test   %rax,%rax
 972:	74 0c                	je     980 <register_tm_clones+0x40>
 974:	5d                   	pop    %rbp
 975:	ff e0                	jmpq   *%rax
 977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 97e:	00 00 
 980:	5d                   	pop    %rbp
 981:	c3                   	retq   
 982:	0f 1f 40 00          	nopl   0x0(%rax)
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <__do_global_dtors_aux>:
 990:	80 3d 79 16 20 00 00 	cmpb   $0x0,0x201679(%rip)        # 202010 <__TMC_END__>
 997:	75 2f                	jne    9c8 <__do_global_dtors_aux+0x38>
 999:	48 83 3d 57 16 20 00 	cmpq   $0x0,0x201657(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9a0:	00 
 9a1:	55                   	push   %rbp
 9a2:	48 89 e5             	mov    %rsp,%rbp
 9a5:	74 0c                	je     9b3 <__do_global_dtors_aux+0x23>
 9a7:	48 8b 3d 5a 16 20 00 	mov    0x20165a(%rip),%rdi        # 202008 <__dso_handle>
 9ae:	e8 8d fd ff ff       	callq  740 <__cxa_finalize@plt>
 9b3:	e8 48 ff ff ff       	callq  900 <deregister_tm_clones>
 9b8:	c6 05 51 16 20 00 01 	movb   $0x1,0x201651(%rip)        # 202010 <__TMC_END__>
 9bf:	5d                   	pop    %rbp
 9c0:	c3                   	retq   
 9c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9c8:	f3 c3                	repz retq 
 9ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009d0 <frame_dummy>:
 9d0:	55                   	push   %rbp
 9d1:	48 89 e5             	mov    %rsp,%rbp
 9d4:	5d                   	pop    %rbp
 9d5:	e9 66 ff ff ff       	jmpq   940 <register_tm_clones>
 9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009e0 <insert>:
 9e0:	48 85 ff             	test   %rdi,%rdi
 9e3:	74 5b                	je     a40 <insert+0x60>
 9e5:	8b 0e                	mov    (%rsi),%ecx
 9e7:	48 89 fa             	mov    %rdi,%rdx
 9ea:	eb 13                	jmp    9ff <insert+0x1f>
 9ec:	0f 1f 40 00          	nopl   0x0(%rax)
 9f0:	48 8b 42 08          	mov    0x8(%rdx),%rax
 9f4:	49 89 d0             	mov    %rdx,%r8
 9f7:	48 85 c0             	test   %rax,%rax
 9fa:	74 24                	je     a20 <insert+0x40>
 9fc:	48 89 c2             	mov    %rax,%rdx
 9ff:	3b 0a                	cmp    (%rdx),%ecx
 a01:	7f ed                	jg     9f0 <insert+0x10>
 a03:	48 39 fa             	cmp    %rdi,%rdx
 a06:	48 89 f0             	mov    %rsi,%rax
 a09:	74 07                	je     a12 <insert+0x32>
 a0b:	49 89 70 08          	mov    %rsi,0x8(%r8)
 a0f:	48 89 f8             	mov    %rdi,%rax
 a12:	48 89 56 08          	mov    %rdx,0x8(%rsi)
 a16:	83 05 f7 15 20 00 01 	addl   $0x1,0x2015f7(%rip)        # 202014 <n>
 a1d:	c3                   	retq   
 a1e:	66 90                	xchg   %ax,%ax
 a20:	48 89 72 08          	mov    %rsi,0x8(%rdx)
 a24:	48 89 f8             	mov    %rdi,%rax
 a27:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
 a2e:	00 
 a2f:	83 05 de 15 20 00 01 	addl   $0x1,0x2015de(%rip)        # 202014 <n>
 a36:	c3                   	retq   
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 
 a40:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
 a47:	00 
 a48:	48 89 f0             	mov    %rsi,%rax
 a4b:	83 05 c2 15 20 00 01 	addl   $0x1,0x2015c2(%rip)        # 202014 <n>
 a52:	c3                   	retq   
 a53:	0f 1f 00             	nopl   (%rax)
 a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a5d:	00 00 00 

0000000000000a60 <delete>:
 a60:	48 85 ff             	test   %rdi,%rdi
 a63:	41 54                	push   %r12
 a65:	49 89 fc             	mov    %rdi,%r12
 a68:	55                   	push   %rbp
 a69:	53                   	push   %rbx
 a6a:	75 0e                	jne    a7a <delete+0x1a>
 a6c:	eb 72                	jmp    ae0 <delete+0x80>
 a6e:	66 90                	xchg   %ax,%ax
 a70:	39 ee                	cmp    %ebp,%esi
 a72:	7e 11                	jle    a85 <delete+0x25>
 a74:	48 89 f8             	mov    %rdi,%rax
 a77:	48 89 df             	mov    %rbx,%rdi
 a7a:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
 a7e:	8b 2f                	mov    (%rdi),%ebp
 a80:	48 85 db             	test   %rbx,%rbx
 a83:	75 eb                	jne    a70 <delete+0x10>
 a85:	39 ee                	cmp    %ebp,%esi
 a87:	75 37                	jne    ac0 <delete+0x60>
 a89:	4c 39 e7             	cmp    %r12,%rdi
 a8c:	74 07                	je     a95 <delete+0x35>
 a8e:	48 89 58 08          	mov    %rbx,0x8(%rax)
 a92:	4c 89 e3             	mov    %r12,%rbx
 a95:	e8 36 fc ff ff       	callq  6d0 <free@plt>
 a9a:	48 8d 35 3a 02 00 00 	lea    0x23a(%rip),%rsi        # cdb <_IO_stdin_used+0x1b>
 aa1:	89 ea                	mov    %ebp,%edx
 aa3:	bf 01 00 00 00       	mov    $0x1,%edi
 aa8:	31 c0                	xor    %eax,%eax
 aaa:	83 2d 63 15 20 00 01 	subl   $0x1,0x201563(%rip)        # 202014 <n>
 ab1:	e8 5a fc ff ff       	callq  710 <__printf_chk@plt>
 ab6:	48 89 d8             	mov    %rbx,%rax
 ab9:	5b                   	pop    %rbx
 aba:	5d                   	pop    %rbp
 abb:	41 5c                	pop    %r12
 abd:	c3                   	retq   
 abe:	66 90                	xchg   %ax,%ax
 ac0:	89 f2                	mov    %esi,%edx
 ac2:	48 8d 35 20 02 00 00 	lea    0x220(%rip),%rsi        # ce9 <_IO_stdin_used+0x29>
 ac9:	4c 89 e3             	mov    %r12,%rbx
 acc:	bf 01 00 00 00       	mov    $0x1,%edi
 ad1:	31 c0                	xor    %eax,%eax
 ad3:	e8 38 fc ff ff       	callq  710 <__printf_chk@plt>
 ad8:	48 89 d8             	mov    %rbx,%rax
 adb:	5b                   	pop    %rbx
 adc:	5d                   	pop    %rbp
 add:	41 5c                	pop    %r12
 adf:	c3                   	retq   
 ae0:	48 8d 35 dd 01 00 00 	lea    0x1dd(%rip),%rsi        # cc4 <_IO_stdin_used+0x4>
 ae7:	bf 01 00 00 00       	mov    $0x1,%edi
 aec:	31 c0                	xor    %eax,%eax
 aee:	31 db                	xor    %ebx,%ebx
 af0:	e8 1b fc ff ff       	callq  710 <__printf_chk@plt>
 af5:	eb bf                	jmp    ab6 <delete+0x56>
 af7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 afe:	00 00 

0000000000000b00 <creat>:
 b00:	41 56                	push   %r14
 b02:	41 55                	push   %r13
 b04:	bf 10 00 00 00       	mov    $0x10,%edi
 b09:	41 54                	push   %r12
 b0b:	55                   	push   %rbp
 b0c:	45 31 f6             	xor    %r14d,%r14d
 b0f:	53                   	push   %rbx
 b10:	c7 05 fa 14 20 00 00 	movl   $0x0,0x2014fa(%rip)        # 202014 <n>
 b17:	00 00 00 
 b1a:	4c 8d 2d dd 01 00 00 	lea    0x1dd(%rip),%r13        # cfe <_IO_stdin_used+0x3e>
 b21:	e8 da fb ff ff       	callq  700 <malloc@plt>
 b26:	48 8d 3d d1 01 00 00 	lea    0x1d1(%rip),%rdi        # cfe <_IO_stdin_used+0x3e>
 b2d:	48 8d 50 04          	lea    0x4(%rax),%rdx
 b31:	49 89 c4             	mov    %rax,%r12
 b34:	48 89 c6             	mov    %rax,%rsi
 b37:	31 c0                	xor    %eax,%eax
 b39:	4c 89 e5             	mov    %r12,%rbp
 b3c:	e8 df fb ff ff       	callq  720 <__isoc99_scanf@plt>
 b41:	41 8b 14 24          	mov    (%r12),%edx
 b45:	85 d2                	test   %edx,%edx
 b47:	75 36                	jne    b7f <creat+0x7f>
 b49:	eb 55                	jmp    ba0 <creat+0xa0>
 b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b50:	49 89 6c 24 08       	mov    %rbp,0x8(%r12)
 b55:	bf 10 00 00 00       	mov    $0x10,%edi
 b5a:	49 89 ec             	mov    %rbp,%r12
 b5d:	e8 9e fb ff ff       	callq  700 <malloc@plt>
 b62:	48 8d 50 04          	lea    0x4(%rax),%rdx
 b66:	48 89 c3             	mov    %rax,%rbx
 b69:	48 89 c6             	mov    %rax,%rsi
 b6c:	4c 89 ef             	mov    %r13,%rdi
 b6f:	31 c0                	xor    %eax,%eax
 b71:	e8 aa fb ff ff       	callq  720 <__isoc99_scanf@plt>
 b76:	8b 03                	mov    (%rbx),%eax
 b78:	85 c0                	test   %eax,%eax
 b7a:	74 24                	je     ba0 <creat+0xa0>
 b7c:	48 89 dd             	mov    %rbx,%rbp
 b7f:	8b 05 8f 14 20 00    	mov    0x20148f(%rip),%eax        # 202014 <n>
 b85:	83 c0 01             	add    $0x1,%eax
 b88:	83 f8 01             	cmp    $0x1,%eax
 b8b:	89 05 83 14 20 00    	mov    %eax,0x201483(%rip)        # 202014 <n>
 b91:	75 bd                	jne    b50 <creat+0x50>
 b93:	49 89 ee             	mov    %rbp,%r14
 b96:	eb bd                	jmp    b55 <creat+0x55>
 b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b9f:	00 
 ba0:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
 ba7:	00 
 ba8:	bf 0a 00 00 00       	mov    $0xa,%edi
 bad:	e8 2e fb ff ff       	callq  6e0 <putchar@plt>
 bb2:	5b                   	pop    %rbx
 bb3:	4c 89 f0             	mov    %r14,%rax
 bb6:	5d                   	pop    %rbp
 bb7:	41 5c                	pop    %r12
 bb9:	41 5d                	pop    %r13
 bbb:	41 5e                	pop    %r14
 bbd:	c3                   	retq   
 bbe:	66 90                	xchg   %ax,%ax

0000000000000bc0 <print>:
 bc0:	48 85 ff             	test   %rdi,%rdi
 bc3:	74 6b                	je     c30 <print+0x70>
 bc5:	55                   	push   %rbp
 bc6:	53                   	push   %rbx
 bc7:	48 8d 35 36 01 00 00 	lea    0x136(%rip),%rsi        # d04 <_IO_stdin_used+0x44>
 bce:	48 8d 2d 4a 01 00 00 	lea    0x14a(%rip),%rbp        # d1f <_IO_stdin_used+0x5f>
 bd5:	48 89 fb             	mov    %rdi,%rbx
 bd8:	31 c0                	xor    %eax,%eax
 bda:	48 83 ec 08          	sub    $0x8,%rsp
 bde:	8b 15 30 14 20 00    	mov    0x201430(%rip),%edx        # 202014 <n>
 be4:	bf 01 00 00 00       	mov    $0x1,%edi
 be9:	e8 22 fb ff ff       	callq  710 <__printf_chk@plt>
 bee:	66 90                	xchg   %ax,%ax
 bf0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bf4:	8b 13                	mov    (%rbx),%edx
 bf6:	48 89 ee             	mov    %rbp,%rsi
 bf9:	bf 01 00 00 00       	mov    $0x1,%edi
 bfe:	b8 01 00 00 00       	mov    $0x1,%eax
 c03:	f3 0f 5a 43 04       	cvtss2sd 0x4(%rbx),%xmm0
 c08:	e8 03 fb ff ff       	callq  710 <__printf_chk@plt>
 c0d:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 c11:	48 85 db             	test   %rbx,%rbx
 c14:	75 da                	jne    bf0 <print+0x30>
 c16:	48 83 c4 08          	add    $0x8,%rsp
 c1a:	bf 0a 00 00 00       	mov    $0xa,%edi
 c1f:	5b                   	pop    %rbx
 c20:	5d                   	pop    %rbp
 c21:	e9 ba fa ff ff       	jmpq   6e0 <putchar@plt>
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 
 c30:	48 8d 3d f3 00 00 00 	lea    0xf3(%rip),%rdi        # d2a <_IO_stdin_used+0x6a>
 c37:	e9 b4 fa ff ff       	jmpq   6f0 <puts@plt>
 c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c40 <__libc_csu_init>:
 c40:	41 57                	push   %r15
 c42:	41 56                	push   %r14
 c44:	49 89 d7             	mov    %rdx,%r15
 c47:	41 55                	push   %r13
 c49:	41 54                	push   %r12
 c4b:	4c 8d 25 36 11 20 00 	lea    0x201136(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c52:	55                   	push   %rbp
 c53:	48 8d 2d 36 11 20 00 	lea    0x201136(%rip),%rbp        # 201d90 <__init_array_end>
 c5a:	53                   	push   %rbx
 c5b:	41 89 fd             	mov    %edi,%r13d
 c5e:	49 89 f6             	mov    %rsi,%r14
 c61:	4c 29 e5             	sub    %r12,%rbp
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 c1 fd 03          	sar    $0x3,%rbp
 c6c:	e8 37 fa ff ff       	callq  6a8 <_init>
 c71:	48 85 ed             	test   %rbp,%rbp
 c74:	74 20                	je     c96 <__libc_csu_init+0x56>
 c76:	31 db                	xor    %ebx,%ebx
 c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c7f:	00 
 c80:	4c 89 fa             	mov    %r15,%rdx
 c83:	4c 89 f6             	mov    %r14,%rsi
 c86:	44 89 ef             	mov    %r13d,%edi
 c89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c8d:	48 83 c3 01          	add    $0x1,%rbx
 c91:	48 39 dd             	cmp    %rbx,%rbp
 c94:	75 ea                	jne    c80 <__libc_csu_init+0x40>
 c96:	48 83 c4 08          	add    $0x8,%rsp
 c9a:	5b                   	pop    %rbx
 c9b:	5d                   	pop    %rbp
 c9c:	41 5c                	pop    %r12
 c9e:	41 5d                	pop    %r13
 ca0:	41 5e                	pop    %r14
 ca2:	41 5f                	pop    %r15
 ca4:	c3                   	retq   
 ca5:	90                   	nop
 ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cad:	00 00 00 

0000000000000cb0 <__libc_csu_fini>:
 cb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cb4 <_fini>:
 cb4:	48 83 ec 08          	sub    $0x8,%rsp
 cb8:	48 83 c4 08          	add    $0x8,%rsp
 cbc:	c3                   	retq   
