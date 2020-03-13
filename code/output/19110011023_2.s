
input/19110011023_2.elf:     file format elf64-x86-64


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

0000000000000700 <__stack_chk_fail@plt>:
 700:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 706:	68 03 00 00 00       	pushq  $0x3
 70b:	e9 b0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000710 <malloc@plt>:
 710:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 716:	68 04 00 00 00       	pushq  $0x4
 71b:	e9 a0 ff ff ff       	jmpq   6c0 <.plt>

0000000000000720 <__printf_chk@plt>:
 720:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 726:	68 05 00 00 00       	pushq  $0x5
 72b:	e9 90 ff ff ff       	jmpq   6c0 <.plt>

0000000000000730 <__isoc99_scanf@plt>:
 730:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 736:	68 06 00 00 00       	pushq  $0x6
 73b:	e9 80 ff ff ff       	jmpq   6c0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <__cxa_finalize@plt>:
 740:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <main>:
 750:	41 57                	push   %r15
 752:	41 56                	push   %r14
 754:	41 55                	push   %r13
 756:	41 54                	push   %r12
 758:	55                   	push   %rbp
 759:	53                   	push   %rbx
 75a:	48 8d 1d d7 06 00 00 	lea    0x6d7(%rip),%rbx        # e38 <_IO_stdin_used+0x128>
 761:	48 83 ec 28          	sub    $0x28,%rsp
 765:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 76c:	00 00 
 76e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 773:	31 c0                	xor    %eax,%eax
 775:	48 8d 6c 24 08       	lea    0x8(%rsp),%rbp
 77a:	4c 8d 7c 24 14       	lea    0x14(%rsp),%r15
 77f:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
 784:	4c 8d 6c 24 0c       	lea    0xc(%rsp),%r13
 789:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
 790:	00 
 791:	48 8d 3d d0 05 00 00 	lea    0x5d0(%rip),%rdi        # d68 <_IO_stdin_used+0x58>
 798:	e8 53 ff ff ff       	callq  6f0 <puts@plt>
 79d:	48 8d 3d d4 05 00 00 	lea    0x5d4(%rip),%rdi        # d78 <_IO_stdin_used+0x68>
 7a4:	e8 47 ff ff ff       	callq  6f0 <puts@plt>
 7a9:	48 8d 3d d4 05 00 00 	lea    0x5d4(%rip),%rdi        # d84 <_IO_stdin_used+0x74>
 7b0:	e8 3b ff ff ff       	callq  6f0 <puts@plt>
 7b5:	48 8d 3d d4 05 00 00 	lea    0x5d4(%rip),%rdi        # d90 <_IO_stdin_used+0x80>
 7bc:	e8 2f ff ff ff       	callq  6f0 <puts@plt>
 7c1:	48 8d 3d de 05 00 00 	lea    0x5de(%rip),%rdi        # da6 <_IO_stdin_used+0x96>
 7c8:	e8 23 ff ff ff       	callq  6f0 <puts@plt>
 7cd:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 7d4:	31 c0                	xor    %eax,%eax
 7d6:	48 89 ee             	mov    %rbp,%rsi
 7d9:	e8 52 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 7de:	83 7c 24 08 04       	cmpl   $0x4,0x8(%rsp)
 7e3:	0f 87 87 01 00 00    	ja     970 <main+0x220>
 7e9:	8b 44 24 08          	mov    0x8(%rsp),%eax
 7ed:	48 63 04 83          	movslq (%rbx,%rax,4),%rax
 7f1:	48 01 d8             	add    %rbx,%rax
 7f4:	ff e0                	jmpq   *%rax
 7f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7fd:	00 00 00 
 800:	48 8d 35 e0 05 00 00 	lea    0x5e0(%rip),%rsi        # de7 <_IO_stdin_used+0xd7>
 807:	bf 01 00 00 00       	mov    $0x1,%edi
 80c:	31 c0                	xor    %eax,%eax
 80e:	e8 0d ff ff ff       	callq  720 <__printf_chk@plt>
 813:	48 8d 3d 13 05 00 00 	lea    0x513(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 81a:	48 89 ee             	mov    %rbp,%rsi
 81d:	31 c0                	xor    %eax,%eax
 81f:	e8 0c ff ff ff       	callq  730 <__isoc99_scanf@plt>
 824:	8b 54 24 0c          	mov    0xc(%rsp),%edx
 828:	8b 74 24 08          	mov    0x8(%rsp),%esi
 82c:	4c 89 e7             	mov    %r12,%rdi
 82f:	e8 ec 03 00 00       	callq  c20 <DeleteList>
 834:	bf 0a 00 00 00       	mov    $0xa,%edi
 839:	e8 a2 fe ff ff       	callq  6e0 <putchar@plt>
 83e:	48 8d 3d b6 05 00 00 	lea    0x5b6(%rip),%rdi        # dfb <_IO_stdin_used+0xeb>
 845:	e8 a6 fe ff ff       	callq  6f0 <puts@plt>
 84a:	4c 89 e7             	mov    %r12,%rdi
 84d:	e8 0e 03 00 00       	callq  b60 <PrintList>
 852:	8b 44 24 08          	mov    0x8(%rsp),%eax
 856:	85 c0                	test   %eax,%eax
 858:	0f 85 33 ff ff ff    	jne    791 <main+0x41>
 85e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 863:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 86a:	00 00 
 86c:	0f 85 0f 01 00 00    	jne    981 <main+0x231>
 872:	48 83 c4 28          	add    $0x28,%rsp
 876:	5b                   	pop    %rbx
 877:	5d                   	pop    %rbp
 878:	41 5c                	pop    %r12
 87a:	41 5d                	pop    %r13
 87c:	41 5e                	pop    %r14
 87e:	41 5f                	pop    %r15
 880:	c3                   	retq   
 881:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 888:	48 8d 35 1f 05 00 00 	lea    0x51f(%rip),%rsi        # dae <_IO_stdin_used+0x9e>
 88f:	bf 01 00 00 00       	mov    $0x1,%edi
 894:	31 c0                	xor    %eax,%eax
 896:	e8 85 fe ff ff       	callq  720 <__printf_chk@plt>
 89b:	48 8d 3d 8b 04 00 00 	lea    0x48b(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 8a2:	4c 89 ee             	mov    %r13,%rsi
 8a5:	31 c0                	xor    %eax,%eax
 8a7:	e8 84 fe ff ff       	callq  730 <__isoc99_scanf@plt>
 8ac:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
 8b0:	e8 eb 01 00 00       	callq  aa0 <CreateList>
 8b5:	49 89 c4             	mov    %rax,%r12
 8b8:	bf 0a 00 00 00       	mov    $0xa,%edi
 8bd:	e8 1e fe ff ff       	callq  6e0 <putchar@plt>
 8c2:	48 8d 3d e8 04 00 00 	lea    0x4e8(%rip),%rdi        # db1 <_IO_stdin_used+0xa1>
 8c9:	e8 22 fe ff ff       	callq  6f0 <puts@plt>
 8ce:	4c 89 e7             	mov    %r12,%rdi
 8d1:	e8 8a 02 00 00       	callq  b60 <PrintList>
 8d6:	e9 77 ff ff ff       	jmpq   852 <main+0x102>
 8db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8e0:	48 8d 35 d2 04 00 00 	lea    0x4d2(%rip),%rsi        # db9 <_IO_stdin_used+0xa9>
 8e7:	bf 01 00 00 00       	mov    $0x1,%edi
 8ec:	31 c0                	xor    %eax,%eax
 8ee:	e8 2d fe ff ff       	callq  720 <__printf_chk@plt>
 8f3:	48 8d 3d 33 04 00 00 	lea    0x433(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 8fa:	48 89 ee             	mov    %rbp,%rsi
 8fd:	31 c0                	xor    %eax,%eax
 8ff:	e8 2c fe ff ff       	callq  730 <__isoc99_scanf@plt>
 904:	48 8d 35 c0 04 00 00 	lea    0x4c0(%rip),%rsi        # dcb <_IO_stdin_used+0xbb>
 90b:	bf 01 00 00 00       	mov    $0x1,%edi
 910:	31 c0                	xor    %eax,%eax
 912:	e8 09 fe ff ff       	callq  720 <__printf_chk@plt>
 917:	48 8d 3d 0f 04 00 00 	lea    0x40f(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 91e:	4c 89 fe             	mov    %r15,%rsi
 921:	31 c0                	xor    %eax,%eax
 923:	e8 08 fe ff ff       	callq  730 <__isoc99_scanf@plt>
 928:	48 8d 35 aa 04 00 00 	lea    0x4aa(%rip),%rsi        # dd9 <_IO_stdin_used+0xc9>
 92f:	bf 01 00 00 00       	mov    $0x1,%edi
 934:	31 c0                	xor    %eax,%eax
 936:	e8 e5 fd ff ff       	callq  720 <__printf_chk@plt>
 93b:	48 8d 3d eb 03 00 00 	lea    0x3eb(%rip),%rdi        # d2d <_IO_stdin_used+0x1d>
 942:	4c 89 f6             	mov    %r14,%rsi
 945:	31 c0                	xor    %eax,%eax
 947:	e8 e4 fd ff ff       	callq  730 <__isoc99_scanf@plt>
 94c:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
 951:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
 955:	4c 89 e7             	mov    %r12,%rdi
 958:	8b 54 24 14          	mov    0x14(%rsp),%edx
 95c:	8b 74 24 08          	mov    0x8(%rsp),%esi
 960:	e8 4b 02 00 00       	callq  bb0 <InsertList>
 965:	e9 4e ff ff ff       	jmpq   8b8 <main+0x168>
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 970:	48 8d 3d 8d 04 00 00 	lea    0x48d(%rip),%rdi        # e04 <_IO_stdin_used+0xf4>
 977:	e8 74 fd ff ff       	callq  6f0 <puts@plt>
 97c:	e9 d1 fe ff ff       	jmpq   852 <main+0x102>
 981:	e8 7a fd ff ff       	callq  700 <__stack_chk_fail@plt>
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <_start>:
 990:	31 ed                	xor    %ebp,%ebp
 992:	49 89 d1             	mov    %rdx,%r9
 995:	5e                   	pop    %rsi
 996:	48 89 e2             	mov    %rsp,%rdx
 999:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 99d:	50                   	push   %rax
 99e:	54                   	push   %rsp
 99f:	4c 8d 05 5a 03 00 00 	lea    0x35a(%rip),%r8        # d00 <__libc_csu_fini>
 9a6:	48 8d 0d e3 02 00 00 	lea    0x2e3(%rip),%rcx        # c90 <__libc_csu_init>
 9ad:	48 8d 3d 9c fd ff ff 	lea    -0x264(%rip),%rdi        # 750 <main>
 9b4:	ff 15 26 16 20 00    	callq  *0x201626(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 9ba:	f4                   	hlt    
 9bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009c0 <deregister_tm_clones>:
 9c0:	48 8d 3d 49 16 20 00 	lea    0x201649(%rip),%rdi        # 202010 <__TMC_END__>
 9c7:	55                   	push   %rbp
 9c8:	48 8d 05 41 16 20 00 	lea    0x201641(%rip),%rax        # 202010 <__TMC_END__>
 9cf:	48 39 f8             	cmp    %rdi,%rax
 9d2:	48 89 e5             	mov    %rsp,%rbp
 9d5:	74 19                	je     9f0 <deregister_tm_clones+0x30>
 9d7:	48 8b 05 fa 15 20 00 	mov    0x2015fa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9de:	48 85 c0             	test   %rax,%rax
 9e1:	74 0d                	je     9f0 <deregister_tm_clones+0x30>
 9e3:	5d                   	pop    %rbp
 9e4:	ff e0                	jmpq   *%rax
 9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ed:	00 00 00 
 9f0:	5d                   	pop    %rbp
 9f1:	c3                   	retq   
 9f2:	0f 1f 40 00          	nopl   0x0(%rax)
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 

0000000000000a00 <register_tm_clones>:
 a00:	48 8d 3d 09 16 20 00 	lea    0x201609(%rip),%rdi        # 202010 <__TMC_END__>
 a07:	48 8d 35 02 16 20 00 	lea    0x201602(%rip),%rsi        # 202010 <__TMC_END__>
 a0e:	55                   	push   %rbp
 a0f:	48 29 fe             	sub    %rdi,%rsi
 a12:	48 89 e5             	mov    %rsp,%rbp
 a15:	48 c1 fe 03          	sar    $0x3,%rsi
 a19:	48 89 f0             	mov    %rsi,%rax
 a1c:	48 c1 e8 3f          	shr    $0x3f,%rax
 a20:	48 01 c6             	add    %rax,%rsi
 a23:	48 d1 fe             	sar    %rsi
 a26:	74 18                	je     a40 <register_tm_clones+0x40>
 a28:	48 8b 05 c1 15 20 00 	mov    0x2015c1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a2f:	48 85 c0             	test   %rax,%rax
 a32:	74 0c                	je     a40 <register_tm_clones+0x40>
 a34:	5d                   	pop    %rbp
 a35:	ff e0                	jmpq   *%rax
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 
 a40:	5d                   	pop    %rbp
 a41:	c3                   	retq   
 a42:	0f 1f 40 00          	nopl   0x0(%rax)
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 

0000000000000a50 <__do_global_dtors_aux>:
 a50:	80 3d b9 15 20 00 00 	cmpb   $0x0,0x2015b9(%rip)        # 202010 <__TMC_END__>
 a57:	75 2f                	jne    a88 <__do_global_dtors_aux+0x38>
 a59:	48 83 3d 97 15 20 00 	cmpq   $0x0,0x201597(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a60:	00 
 a61:	55                   	push   %rbp
 a62:	48 89 e5             	mov    %rsp,%rbp
 a65:	74 0c                	je     a73 <__do_global_dtors_aux+0x23>
 a67:	48 8b 3d 9a 15 20 00 	mov    0x20159a(%rip),%rdi        # 202008 <__dso_handle>
 a6e:	e8 cd fc ff ff       	callq  740 <__cxa_finalize@plt>
 a73:	e8 48 ff ff ff       	callq  9c0 <deregister_tm_clones>
 a78:	c6 05 91 15 20 00 01 	movb   $0x1,0x201591(%rip)        # 202010 <__TMC_END__>
 a7f:	5d                   	pop    %rbp
 a80:	c3                   	retq   
 a81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a88:	f3 c3                	repz retq 
 a8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a90 <frame_dummy>:
 a90:	55                   	push   %rbp
 a91:	48 89 e5             	mov    %rsp,%rbp
 a94:	5d                   	pop    %rbp
 a95:	e9 66 ff ff ff       	jmpq   a00 <register_tm_clones>
 a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000aa0 <CreateList>:
 aa0:	41 57                	push   %r15
 aa2:	41 56                	push   %r14
 aa4:	41 89 fe             	mov    %edi,%r14d
 aa7:	41 55                	push   %r13
 aa9:	41 54                	push   %r12
 aab:	bf 10 00 00 00       	mov    $0x10,%edi
 ab0:	55                   	push   %rbp
 ab1:	53                   	push   %rbx
 ab2:	48 83 ec 08          	sub    $0x8,%rsp
 ab6:	e8 55 fc ff ff       	callq  710 <malloc@plt>
 abb:	45 85 f6             	test   %r14d,%r14d
 abe:	49 89 c7             	mov    %rax,%r15
 ac1:	7e 7e                	jle    b41 <CreateList+0xa1>
 ac3:	4c 8d 25 63 02 00 00 	lea    0x263(%rip),%r12        # d2d <_IO_stdin_used+0x1d>
 aca:	41 83 c6 01          	add    $0x1,%r14d
 ace:	49 89 c5             	mov    %rax,%r13
 ad1:	bd 01 00 00 00       	mov    $0x1,%ebp
 ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 add:	00 00 00 
 ae0:	48 8d 35 2d 02 00 00 	lea    0x22d(%rip),%rsi        # d14 <_IO_stdin_used+0x4>
 ae7:	89 ea                	mov    %ebp,%edx
 ae9:	bf 01 00 00 00       	mov    $0x1,%edi
 aee:	31 c0                	xor    %eax,%eax
 af0:	e8 2b fc ff ff       	callq  720 <__printf_chk@plt>
 af5:	bf 10 00 00 00       	mov    $0x10,%edi
 afa:	e8 11 fc ff ff       	callq  710 <malloc@plt>
 aff:	4c 89 e7             	mov    %r12,%rdi
 b02:	48 89 c3             	mov    %rax,%rbx
 b05:	48 89 c6             	mov    %rax,%rsi
 b08:	31 c0                	xor    %eax,%eax
 b0a:	e8 21 fc ff ff       	callq  730 <__isoc99_scanf@plt>
 b0f:	48 8d 35 1a 02 00 00 	lea    0x21a(%rip),%rsi        # d30 <_IO_stdin_used+0x20>
 b16:	89 ea                	mov    %ebp,%edx
 b18:	bf 01 00 00 00       	mov    $0x1,%edi
 b1d:	31 c0                	xor    %eax,%eax
 b1f:	83 c5 01             	add    $0x1,%ebp
 b22:	e8 f9 fb ff ff       	callq  720 <__printf_chk@plt>
 b27:	48 8d 73 04          	lea    0x4(%rbx),%rsi
 b2b:	31 c0                	xor    %eax,%eax
 b2d:	4c 89 e7             	mov    %r12,%rdi
 b30:	e8 fb fb ff ff       	callq  730 <__isoc99_scanf@plt>
 b35:	41 39 ee             	cmp    %ebp,%r14d
 b38:	49 89 5d 08          	mov    %rbx,0x8(%r13)
 b3c:	49 89 dd             	mov    %rbx,%r13
 b3f:	75 9f                	jne    ae0 <CreateList+0x40>
 b41:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
 b48:	00 
 b49:	48 83 c4 08          	add    $0x8,%rsp
 b4d:	4c 89 f8             	mov    %r15,%rax
 b50:	5b                   	pop    %rbx
 b51:	5d                   	pop    %rbp
 b52:	41 5c                	pop    %r12
 b54:	41 5d                	pop    %r13
 b56:	41 5e                	pop    %r14
 b58:	41 5f                	pop    %r15
 b5a:	c3                   	retq   
 b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b60 <PrintList>:
 b60:	55                   	push   %rbp
 b61:	53                   	push   %rbx
 b62:	48 83 ec 08          	sub    $0x8,%rsp
 b66:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
 b6a:	48 85 db             	test   %rbx,%rbx
 b6d:	74 2e                	je     b9d <PrintList+0x3d>
 b6f:	48 8d 2d d2 01 00 00 	lea    0x1d2(%rip),%rbp        # d48 <_IO_stdin_used+0x38>
 b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b7d:	00 00 00 
 b80:	8b 4b 04             	mov    0x4(%rbx),%ecx
 b83:	8b 13                	mov    (%rbx),%edx
 b85:	31 c0                	xor    %eax,%eax
 b87:	48 89 ee             	mov    %rbp,%rsi
 b8a:	bf 01 00 00 00       	mov    $0x1,%edi
 b8f:	e8 8c fb ff ff       	callq  720 <__printf_chk@plt>
 b94:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 b98:	48 85 db             	test   %rbx,%rbx
 b9b:	75 e3                	jne    b80 <PrintList+0x20>
 b9d:	48 83 c4 08          	add    $0x8,%rsp
 ba1:	5b                   	pop    %rbx
 ba2:	5d                   	pop    %rbp
 ba3:	c3                   	retq   
 ba4:	66 90                	xchg   %ax,%ax
 ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bad:	00 00 00 

0000000000000bb0 <InsertList>:
 bb0:	85 f6                	test   %esi,%esi
 bb2:	7e 54                	jle    c08 <InsertList+0x58>
 bb4:	41 83 c0 01          	add    $0x1,%r8d
 bb8:	41 39 f0             	cmp    %esi,%r8d
 bbb:	7c 4b                	jl     c08 <InsertList+0x58>
 bbd:	83 fe 01             	cmp    $0x1,%esi
 bc0:	41 54                	push   %r12
 bc2:	41 89 d4             	mov    %edx,%r12d
 bc5:	55                   	push   %rbp
 bc6:	89 cd                	mov    %ecx,%ebp
 bc8:	53                   	push   %rbx
 bc9:	48 89 fb             	mov    %rdi,%rbx
 bcc:	7e 15                	jle    be3 <InsertList+0x33>
 bce:	83 ee 01             	sub    $0x1,%esi
 bd1:	31 c0                	xor    %eax,%eax
 bd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bd8:	83 c0 01             	add    $0x1,%eax
 bdb:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 bdf:	39 c6                	cmp    %eax,%esi
 be1:	75 f5                	jne    bd8 <InsertList+0x28>
 be3:	bf 10 00 00 00       	mov    $0x10,%edi
 be8:	e8 23 fb ff ff       	callq  710 <malloc@plt>
 bed:	48 8b 53 08          	mov    0x8(%rbx),%rdx
 bf1:	44 89 20             	mov    %r12d,(%rax)
 bf4:	89 68 04             	mov    %ebp,0x4(%rax)
 bf7:	48 89 50 08          	mov    %rdx,0x8(%rax)
 bfb:	48 89 43 08          	mov    %rax,0x8(%rbx)
 bff:	5b                   	pop    %rbx
 c00:	5d                   	pop    %rbp
 c01:	41 5c                	pop    %r12
 c03:	c3                   	retq   
 c04:	0f 1f 40 00          	nopl   0x0(%rax)
 c08:	48 8d 3d 40 01 00 00 	lea    0x140(%rip),%rdi        # d4f <_IO_stdin_used+0x3f>
 c0f:	e9 dc fa ff ff       	jmpq   6f0 <puts@plt>
 c14:	66 90                	xchg   %ax,%ax
 c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c1d:	00 00 00 

0000000000000c20 <DeleteList>:
 c20:	85 f6                	test   %esi,%esi
 c22:	7e 5c                	jle    c80 <DeleteList+0x60>
 c24:	39 d6                	cmp    %edx,%esi
 c26:	7f 58                	jg     c80 <DeleteList+0x60>
 c28:	55                   	push   %rbp
 c29:	53                   	push   %rbx
 c2a:	31 c0                	xor    %eax,%eax
 c2c:	48 89 f9             	mov    %rdi,%rcx
 c2f:	8d 56 ff             	lea    -0x1(%rsi),%edx
 c32:	48 83 ec 08          	sub    $0x8,%rsp
 c36:	83 fe 01             	cmp    $0x1,%esi
 c39:	74 10                	je     c4b <DeleteList+0x2b>
 c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c40:	83 c0 01             	add    $0x1,%eax
 c43:	48 8b 49 08          	mov    0x8(%rcx),%rcx
 c47:	39 c2                	cmp    %eax,%edx
 c49:	75 f5                	jne    c40 <DeleteList+0x20>
 c4b:	48 8b 79 08          	mov    0x8(%rcx),%rdi
 c4f:	48 8b 47 08          	mov    0x8(%rdi),%rax
 c53:	8b 1f                	mov    (%rdi),%ebx
 c55:	8b 6f 04             	mov    0x4(%rdi),%ebp
 c58:	48 89 41 08          	mov    %rax,0x8(%rcx)
 c5c:	e8 6f fa ff ff       	callq  6d0 <free@plt>
 c61:	48 83 c4 08          	add    $0x8,%rsp
 c65:	89 e9                	mov    %ebp,%ecx
 c67:	89 da                	mov    %ebx,%edx
 c69:	5b                   	pop    %rbx
 c6a:	5d                   	pop    %rbp
 c6b:	48 8d 35 a6 01 00 00 	lea    0x1a6(%rip),%rsi        # e18 <_IO_stdin_used+0x108>
 c72:	bf 01 00 00 00       	mov    $0x1,%edi
 c77:	31 c0                	xor    %eax,%eax
 c79:	e9 a2 fa ff ff       	jmpq   720 <__printf_chk@plt>
 c7e:	66 90                	xchg   %ax,%ax
 c80:	48 8d 3d d4 00 00 00 	lea    0xd4(%rip),%rdi        # d5b <_IO_stdin_used+0x4b>
 c87:	e9 64 fa ff ff       	jmpq   6f0 <puts@plt>
 c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c90 <__libc_csu_init>:
 c90:	41 57                	push   %r15
 c92:	41 56                	push   %r14
 c94:	49 89 d7             	mov    %rdx,%r15
 c97:	41 55                	push   %r13
 c99:	41 54                	push   %r12
 c9b:	4c 8d 25 e6 10 20 00 	lea    0x2010e6(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 ca2:	55                   	push   %rbp
 ca3:	48 8d 2d e6 10 20 00 	lea    0x2010e6(%rip),%rbp        # 201d90 <__init_array_end>
 caa:	53                   	push   %rbx
 cab:	41 89 fd             	mov    %edi,%r13d
 cae:	49 89 f6             	mov    %rsi,%r14
 cb1:	4c 29 e5             	sub    %r12,%rbp
 cb4:	48 83 ec 08          	sub    $0x8,%rsp
 cb8:	48 c1 fd 03          	sar    $0x3,%rbp
 cbc:	e8 e7 f9 ff ff       	callq  6a8 <_init>
 cc1:	48 85 ed             	test   %rbp,%rbp
 cc4:	74 20                	je     ce6 <__libc_csu_init+0x56>
 cc6:	31 db                	xor    %ebx,%ebx
 cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 ccf:	00 
 cd0:	4c 89 fa             	mov    %r15,%rdx
 cd3:	4c 89 f6             	mov    %r14,%rsi
 cd6:	44 89 ef             	mov    %r13d,%edi
 cd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cdd:	48 83 c3 01          	add    $0x1,%rbx
 ce1:	48 39 dd             	cmp    %rbx,%rbp
 ce4:	75 ea                	jne    cd0 <__libc_csu_init+0x40>
 ce6:	48 83 c4 08          	add    $0x8,%rsp
 cea:	5b                   	pop    %rbx
 ceb:	5d                   	pop    %rbp
 cec:	41 5c                	pop    %r12
 cee:	41 5d                	pop    %r13
 cf0:	41 5e                	pop    %r14
 cf2:	41 5f                	pop    %r15
 cf4:	c3                   	retq   
 cf5:	90                   	nop
 cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cfd:	00 00 00 

0000000000000d00 <__libc_csu_fini>:
 d00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d04 <_fini>:
 d04:	48 83 ec 08          	sub    $0x8,%rsp
 d08:	48 83 c4 08          	add    $0x8,%rsp
 d0c:	c3                   	retq   
