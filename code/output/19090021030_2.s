
input/19090021030_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000648 <_init>:
 648:	48 83 ec 08          	sub    $0x8,%rsp
 64c:	48 8b 05 95 19 20 00 	mov    0x201995(%rip),%rax        # 201fe8 <__gmon_start__>
 653:	48 85 c0             	test   %rax,%rax
 656:	74 02                	je     65a <_init+0x12>
 658:	ff d0                	callq  *%rax
 65a:	48 83 c4 08          	add    $0x8,%rsp
 65e:	c3                   	retq   

Disassembly of section .plt:

0000000000000660 <.plt>:
 660:	ff 35 32 19 20 00    	pushq  0x201932(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 666:	ff 25 34 19 20 00    	jmpq   *0x201934(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 66c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000670 <free@plt>:
 670:	ff 25 32 19 20 00    	jmpq   *0x201932(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 676:	68 00 00 00 00       	pushq  $0x0
 67b:	e9 e0 ff ff ff       	jmpq   660 <.plt>

0000000000000680 <puts@plt>:
 680:	ff 25 2a 19 20 00    	jmpq   *0x20192a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 686:	68 01 00 00 00       	pushq  $0x1
 68b:	e9 d0 ff ff ff       	jmpq   660 <.plt>

0000000000000690 <malloc@plt>:
 690:	ff 25 22 19 20 00    	jmpq   *0x201922(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 696:	68 02 00 00 00       	pushq  $0x2
 69b:	e9 c0 ff ff ff       	jmpq   660 <.plt>

00000000000006a0 <__printf_chk@plt>:
 6a0:	ff 25 1a 19 20 00    	jmpq   *0x20191a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 6a6:	68 03 00 00 00       	pushq  $0x3
 6ab:	e9 b0 ff ff ff       	jmpq   660 <.plt>

00000000000006b0 <__isoc99_scanf@plt>:
 6b0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 6b6:	68 04 00 00 00       	pushq  $0x4
 6bb:	e9 a0 ff ff ff       	jmpq   660 <.plt>

00000000000006c0 <exit@plt>:
 6c0:	ff 25 0a 19 20 00    	jmpq   *0x20190a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 6c6:	68 05 00 00 00       	pushq  $0x5
 6cb:	e9 90 ff ff ff       	jmpq   660 <.plt>

Disassembly of section .plt.got:

00000000000006d0 <__cxa_finalize@plt>:
 6d0:	ff 25 22 19 20 00    	jmpq   *0x201922(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 6d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006e0 <main>:
 6e0:	41 55                	push   %r13
 6e2:	41 54                	push   %r12
 6e4:	55                   	push   %rbp
 6e5:	53                   	push   %rbx
 6e6:	48 8d 2d 6b 05 00 00 	lea    0x56b(%rip),%rbp        # c58 <_IO_stdin_used+0xa8>
 6ed:	31 db                	xor    %ebx,%ebx
 6ef:	48 83 ec 18          	sub    $0x18,%rsp
 6f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 6fa:	00 00 
 6fc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 701:	31 c0                	xor    %eax,%eax
 703:	4c 8d 64 24 04       	lea    0x4(%rsp),%r12
 708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 70f:	00 
 710:	48 89 ef             	mov    %rbp,%rdi
 713:	e8 68 ff ff ff       	callq  680 <puts@plt>
 718:	48 8d 35 b3 04 00 00 	lea    0x4b3(%rip),%rsi        # bd2 <_IO_stdin_used+0x22>
 71f:	bf 01 00 00 00       	mov    $0x1,%edi
 724:	31 c0                	xor    %eax,%eax
 726:	e8 75 ff ff ff       	callq  6a0 <__printf_chk@plt>
 72b:	48 8d 3d af 04 00 00 	lea    0x4af(%rip),%rdi        # be1 <_IO_stdin_used+0x31>
 732:	31 c0                	xor    %eax,%eax
 734:	4c 89 e6             	mov    %r12,%rsi
 737:	e8 74 ff ff ff       	callq  6b0 <__isoc99_scanf@plt>
 73c:	8b 44 24 04          	mov    0x4(%rsp),%eax
 740:	83 f8 04             	cmp    $0x4,%eax
 743:	0f 84 8f 00 00 00    	je     7d8 <main+0xf8>
 749:	83 f8 02             	cmp    $0x2,%eax
 74c:	74 62                	je     7b0 <main+0xd0>
 74e:	83 f8 03             	cmp    $0x3,%eax
 751:	74 05                	je     758 <main+0x78>
 753:	83 f8 01             	cmp    $0x1,%eax
 756:	75 b8                	jne    710 <main+0x30>
 758:	48 8d 35 21 05 00 00 	lea    0x521(%rip),%rsi        # c80 <_IO_stdin_used+0xd0>
 75f:	bf 01 00 00 00       	mov    $0x1,%edi
 764:	31 c0                	xor    %eax,%eax
 766:	e8 35 ff ff ff       	callq  6a0 <__printf_chk@plt>
 76b:	bf 18 00 00 00       	mov    $0x18,%edi
 770:	e8 1b ff ff ff       	callq  690 <malloc@plt>
 775:	48 8d 3d 38 04 00 00 	lea    0x438(%rip),%rdi        # bb4 <_IO_stdin_used+0x4>
 77c:	48 8d 50 08          	lea    0x8(%rax),%rdx
 780:	49 89 c5             	mov    %rax,%r13
 783:	48 89 c6             	mov    %rax,%rsi
 786:	31 c0                	xor    %eax,%eax
 788:	e8 23 ff ff ff       	callq  6b0 <__isoc99_scanf@plt>
 78d:	48 89 df             	mov    %rbx,%rdi
 790:	4c 89 ee             	mov    %r13,%rsi
 793:	e8 58 01 00 00       	callq  8f0 <insert>
 798:	48 89 c7             	mov    %rax,%rdi
 79b:	48 89 c3             	mov    %rax,%rbx
 79e:	e8 2d 03 00 00       	callq  ad0 <print>
 7a3:	e9 68 ff ff ff       	jmpq   710 <main+0x30>
 7a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 7af:	00 
 7b0:	48 8d 3d c9 04 00 00 	lea    0x4c9(%rip),%rdi        # c80 <_IO_stdin_used+0xd0>
 7b7:	e8 c4 fe ff ff       	callq  680 <puts@plt>
 7bc:	48 89 df             	mov    %rbx,%rdi
 7bf:	e8 bc 01 00 00       	callq  980 <b>
 7c4:	48 89 c7             	mov    %rax,%rdi
 7c7:	48 89 c3             	mov    %rax,%rbx
 7ca:	e8 01 03 00 00       	callq  ad0 <print>
 7cf:	e9 3c ff ff ff       	jmpq   710 <main+0x30>
 7d4:	0f 1f 40 00          	nopl   0x0(%rax)
 7d8:	31 ff                	xor    %edi,%edi
 7da:	e8 e1 fe ff ff       	callq  6c0 <exit@plt>
 7df:	90                   	nop

00000000000007e0 <_start>:
 7e0:	31 ed                	xor    %ebp,%ebp
 7e2:	49 89 d1             	mov    %rdx,%r9
 7e5:	5e                   	pop    %rsi
 7e6:	48 89 e2             	mov    %rsp,%rdx
 7e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7ed:	50                   	push   %rax
 7ee:	54                   	push   %rsp
 7ef:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # ba0 <__libc_csu_fini>
 7f6:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # b30 <__libc_csu_init>
 7fd:	48 8d 3d dc fe ff ff 	lea    -0x124(%rip),%rdi        # 6e0 <main>
 804:	ff 15 d6 17 20 00    	callq  *0x2017d6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 80a:	f4                   	hlt    
 80b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000810 <deregister_tm_clones>:
 810:	48 8d 3d f9 17 20 00 	lea    0x2017f9(%rip),%rdi        # 202010 <__TMC_END__>
 817:	55                   	push   %rbp
 818:	48 8d 05 f1 17 20 00 	lea    0x2017f1(%rip),%rax        # 202010 <__TMC_END__>
 81f:	48 39 f8             	cmp    %rdi,%rax
 822:	48 89 e5             	mov    %rsp,%rbp
 825:	74 19                	je     840 <deregister_tm_clones+0x30>
 827:	48 8b 05 aa 17 20 00 	mov    0x2017aa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 82e:	48 85 c0             	test   %rax,%rax
 831:	74 0d                	je     840 <deregister_tm_clones+0x30>
 833:	5d                   	pop    %rbp
 834:	ff e0                	jmpq   *%rax
 836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 83d:	00 00 00 
 840:	5d                   	pop    %rbp
 841:	c3                   	retq   
 842:	0f 1f 40 00          	nopl   0x0(%rax)
 846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 84d:	00 00 00 

0000000000000850 <register_tm_clones>:
 850:	48 8d 3d b9 17 20 00 	lea    0x2017b9(%rip),%rdi        # 202010 <__TMC_END__>
 857:	48 8d 35 b2 17 20 00 	lea    0x2017b2(%rip),%rsi        # 202010 <__TMC_END__>
 85e:	55                   	push   %rbp
 85f:	48 29 fe             	sub    %rdi,%rsi
 862:	48 89 e5             	mov    %rsp,%rbp
 865:	48 c1 fe 03          	sar    $0x3,%rsi
 869:	48 89 f0             	mov    %rsi,%rax
 86c:	48 c1 e8 3f          	shr    $0x3f,%rax
 870:	48 01 c6             	add    %rax,%rsi
 873:	48 d1 fe             	sar    %rsi
 876:	74 18                	je     890 <register_tm_clones+0x40>
 878:	48 8b 05 71 17 20 00 	mov    0x201771(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 87f:	48 85 c0             	test   %rax,%rax
 882:	74 0c                	je     890 <register_tm_clones+0x40>
 884:	5d                   	pop    %rbp
 885:	ff e0                	jmpq   *%rax
 887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 88e:	00 00 
 890:	5d                   	pop    %rbp
 891:	c3                   	retq   
 892:	0f 1f 40 00          	nopl   0x0(%rax)
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 

00000000000008a0 <__do_global_dtors_aux>:
 8a0:	80 3d 69 17 20 00 00 	cmpb   $0x0,0x201769(%rip)        # 202010 <__TMC_END__>
 8a7:	75 2f                	jne    8d8 <__do_global_dtors_aux+0x38>
 8a9:	48 83 3d 47 17 20 00 	cmpq   $0x0,0x201747(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 8b0:	00 
 8b1:	55                   	push   %rbp
 8b2:	48 89 e5             	mov    %rsp,%rbp
 8b5:	74 0c                	je     8c3 <__do_global_dtors_aux+0x23>
 8b7:	48 8b 3d 4a 17 20 00 	mov    0x20174a(%rip),%rdi        # 202008 <__dso_handle>
 8be:	e8 0d fe ff ff       	callq  6d0 <__cxa_finalize@plt>
 8c3:	e8 48 ff ff ff       	callq  810 <deregister_tm_clones>
 8c8:	c6 05 41 17 20 00 01 	movb   $0x1,0x201741(%rip)        # 202010 <__TMC_END__>
 8cf:	5d                   	pop    %rbp
 8d0:	c3                   	retq   
 8d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8d8:	f3 c3                	repz retq 
 8da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008e0 <frame_dummy>:
 8e0:	55                   	push   %rbp
 8e1:	48 89 e5             	mov    %rsp,%rbp
 8e4:	5d                   	pop    %rbp
 8e5:	e9 66 ff ff ff       	jmpq   850 <register_tm_clones>
 8ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008f0 <insert>:
 8f0:	48 85 ff             	test   %rdi,%rdi
 8f3:	74 5b                	je     950 <insert+0x60>
 8f5:	4c 8b 16             	mov    (%rsi),%r10
 8f8:	48 89 fa             	mov    %rdi,%rdx
 8fb:	45 31 c9             	xor    %r9d,%r9d
 8fe:	eb 0b                	jmp    90b <insert+0x1b>
 900:	4d 39 d0             	cmp    %r10,%r8
 903:	7d 33                	jge    938 <insert+0x48>
 905:	49 89 c9             	mov    %rcx,%r9
 908:	48 89 ca             	mov    %rcx,%rdx
 90b:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 90f:	4c 8b 02             	mov    (%rdx),%r8
 912:	48 85 c9             	test   %rcx,%rcx
 915:	75 e9                	jne    900 <insert+0x10>
 917:	4d 39 d0             	cmp    %r10,%r8
 91a:	7d 1c                	jge    938 <insert+0x48>
 91c:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 920:	48 89 f8             	mov    %rdi,%rax
 923:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 92a:	00 
 92b:	83 05 e2 16 20 00 01 	addl   $0x1,0x2016e2(%rip)        # 202014 <n>
 932:	c3                   	retq   
 933:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 938:	48 39 fa             	cmp    %rdi,%rdx
 93b:	74 2b                	je     968 <insert+0x78>
 93d:	49 89 71 10          	mov    %rsi,0x10(%r9)
 941:	48 89 f8             	mov    %rdi,%rax
 944:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 948:	83 05 c5 16 20 00 01 	addl   $0x1,0x2016c5(%rip)        # 202014 <n>
 94f:	c3                   	retq   
 950:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 957:	00 
 958:	48 89 f0             	mov    %rsi,%rax
 95b:	83 05 b2 16 20 00 01 	addl   $0x1,0x2016b2(%rip)        # 202014 <n>
 962:	c3                   	retq   
 963:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 968:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 96c:	48 89 f0             	mov    %rsi,%rax
 96f:	83 05 9e 16 20 00 01 	addl   $0x1,0x20169e(%rip)        # 202014 <n>
 976:	c3                   	retq   
 977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 97e:	00 00 

0000000000000980 <b>:
 980:	41 54                	push   %r12
 982:	55                   	push   %rbp
 983:	48 89 fd             	mov    %rdi,%rbp
 986:	53                   	push   %rbx
 987:	bf 18 00 00 00       	mov    $0x18,%edi
 98c:	e8 ff fc ff ff       	callq  690 <malloc@plt>
 991:	48 8d 3d 1c 02 00 00 	lea    0x21c(%rip),%rdi        # bb4 <_IO_stdin_used+0x4>
 998:	48 8d 50 08          	lea    0x8(%rax),%rdx
 99c:	48 89 c3             	mov    %rax,%rbx
 99f:	48 89 c6             	mov    %rax,%rsi
 9a2:	31 c0                	xor    %eax,%eax
 9a4:	e8 07 fd ff ff       	callq  6b0 <__isoc99_scanf@plt>
 9a9:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 9ad:	74 43                	je     9f2 <b+0x72>
 9af:	4c 8d 25 fe 01 00 00 	lea    0x1fe(%rip),%r12        # bb4 <_IO_stdin_used+0x4>
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 
 9c0:	48 89 de             	mov    %rbx,%rsi
 9c3:	48 89 ef             	mov    %rbp,%rdi
 9c6:	e8 25 ff ff ff       	callq  8f0 <insert>
 9cb:	bf 18 00 00 00       	mov    $0x18,%edi
 9d0:	48 89 c5             	mov    %rax,%rbp
 9d3:	e8 b8 fc ff ff       	callq  690 <malloc@plt>
 9d8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 9dc:	48 89 c3             	mov    %rax,%rbx
 9df:	48 89 c6             	mov    %rax,%rsi
 9e2:	4c 89 e7             	mov    %r12,%rdi
 9e5:	31 c0                	xor    %eax,%eax
 9e7:	e8 c4 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 9ec:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 9f0:	75 ce                	jne    9c0 <b+0x40>
 9f2:	48 89 df             	mov    %rbx,%rdi
 9f5:	e8 76 fc ff ff       	callq  670 <free@plt>
 9fa:	48 89 e8             	mov    %rbp,%rax
 9fd:	5b                   	pop    %rbx
 9fe:	5d                   	pop    %rbp
 9ff:	41 5c                	pop    %r12
 a01:	c3                   	retq   
 a02:	0f 1f 40 00          	nopl   0x0(%rax)
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <del>:
 a10:	41 54                	push   %r12
 a12:	55                   	push   %rbp
 a13:	31 d2                	xor    %edx,%edx
 a15:	53                   	push   %rbx
 a16:	49 89 fc             	mov    %rdi,%r12
 a19:	48 89 fb             	mov    %rdi,%rbx
 a1c:	48 83 ec 10          	sub    $0x10,%rsp
 a20:	48 85 ff             	test   %rdi,%rdi
 a23:	75 16                	jne    a3b <del+0x2b>
 a25:	e9 89 00 00 00       	jmpq   ab3 <del+0xa3>
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a30:	48 85 c0             	test   %rax,%rax
 a33:	48 89 da             	mov    %rbx,%rdx
 a36:	74 42                	je     a7a <del+0x6a>
 a38:	48 89 c3             	mov    %rax,%rbx
 a3b:	48 8b 2b             	mov    (%rbx),%rbp
 a3e:	48 8b 43 10          	mov    0x10(%rbx),%rax
 a42:	48 39 f5             	cmp    %rsi,%rbp
 a45:	75 e9                	jne    a30 <del+0x20>
 a47:	4c 39 e3             	cmp    %r12,%rbx
 a4a:	74 4c                	je     a98 <del+0x88>
 a4c:	48 89 42 10          	mov    %rax,0x10(%rdx)
 a50:	48 89 df             	mov    %rbx,%rdi
 a53:	e8 18 fc ff ff       	callq  670 <free@plt>
 a58:	83 2d b5 15 20 00 01 	subl   $0x1,0x2015b5(%rip)        # 202014 <n>
 a5f:	4c 89 e0             	mov    %r12,%rax
 a62:	48 3b 2b             	cmp    (%rbx),%rbp
 a65:	75 09                	jne    a70 <del+0x60>
 a67:	48 83 c4 10          	add    $0x10,%rsp
 a6b:	5b                   	pop    %rbx
 a6c:	5d                   	pop    %rbp
 a6d:	41 5c                	pop    %r12
 a6f:	c3                   	retq   
 a70:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
 a75:	75 f0                	jne    a67 <del+0x57>
 a77:	49 89 c4             	mov    %rax,%r12
 a7a:	48 8d 3d 97 01 00 00 	lea    0x197(%rip),%rdi        # c18 <_IO_stdin_used+0x68>
 a81:	e8 fa fb ff ff       	callq  680 <puts@plt>
 a86:	48 83 c4 10          	add    $0x10,%rsp
 a8a:	4c 89 e0             	mov    %r12,%rax
 a8d:	5b                   	pop    %rbx
 a8e:	5d                   	pop    %rbp
 a8f:	41 5c                	pop    %r12
 a91:	c3                   	retq   
 a92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a98:	48 89 df             	mov    %rbx,%rdi
 a9b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 aa0:	e8 cb fb ff ff       	callq  670 <free@plt>
 aa5:	83 2d 68 15 20 00 01 	subl   $0x1,0x201568(%rip)        # 202014 <n>
 aac:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 ab1:	eb af                	jmp    a62 <del+0x52>
 ab3:	48 8d 3d 2e 01 00 00 	lea    0x12e(%rip),%rdi        # be8 <_IO_stdin_used+0x38>
 aba:	e8 c1 fb ff ff       	callq  680 <puts@plt>
 abf:	31 c0                	xor    %eax,%eax
 ac1:	eb a4                	jmp    a67 <del+0x57>
 ac3:	0f 1f 00             	nopl   (%rax)
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <print>:
 ad0:	48 85 ff             	test   %rdi,%rdi
 ad3:	74 4b                	je     b20 <print+0x50>
 ad5:	55                   	push   %rbp
 ad6:	53                   	push   %rbx
 ad7:	48 8d 2d dd 00 00 00 	lea    0xdd(%rip),%rbp        # bbb <_IO_stdin_used+0xb>
 ade:	48 89 fb             	mov    %rdi,%rbx
 ae1:	48 83 ec 08          	sub    $0x8,%rsp
 ae5:	0f 1f 00             	nopl   (%rax)
 ae8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 aec:	48 8b 13             	mov    (%rbx),%rdx
 aef:	48 89 ee             	mov    %rbp,%rsi
 af2:	bf 01 00 00 00       	mov    $0x1,%edi
 af7:	b8 01 00 00 00       	mov    $0x1,%eax
 afc:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b01:	e8 9a fb ff ff       	callq  6a0 <__printf_chk@plt>
 b06:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b0a:	48 85 db             	test   %rbx,%rbx
 b0d:	75 d9                	jne    ae8 <print+0x18>
 b0f:	48 83 c4 08          	add    $0x8,%rsp
 b13:	5b                   	pop    %rbx
 b14:	5d                   	pop    %rbp
 b15:	c3                   	retq   
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 
 b20:	48 8d 3d 9c 00 00 00 	lea    0x9c(%rip),%rdi        # bc3 <_IO_stdin_used+0x13>
 b27:	e9 54 fb ff ff       	jmpq   680 <puts@plt>
 b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000b30 <__libc_csu_init>:
 b30:	41 57                	push   %r15
 b32:	41 56                	push   %r14
 b34:	49 89 d7             	mov    %rdx,%r15
 b37:	41 55                	push   %r13
 b39:	41 54                	push   %r12
 b3b:	4c 8d 25 4e 12 20 00 	lea    0x20124e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 b42:	55                   	push   %rbp
 b43:	48 8d 2d 4e 12 20 00 	lea    0x20124e(%rip),%rbp        # 201d98 <__init_array_end>
 b4a:	53                   	push   %rbx
 b4b:	41 89 fd             	mov    %edi,%r13d
 b4e:	49 89 f6             	mov    %rsi,%r14
 b51:	4c 29 e5             	sub    %r12,%rbp
 b54:	48 83 ec 08          	sub    $0x8,%rsp
 b58:	48 c1 fd 03          	sar    $0x3,%rbp
 b5c:	e8 e7 fa ff ff       	callq  648 <_init>
 b61:	48 85 ed             	test   %rbp,%rbp
 b64:	74 20                	je     b86 <__libc_csu_init+0x56>
 b66:	31 db                	xor    %ebx,%ebx
 b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b6f:	00 
 b70:	4c 89 fa             	mov    %r15,%rdx
 b73:	4c 89 f6             	mov    %r14,%rsi
 b76:	44 89 ef             	mov    %r13d,%edi
 b79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 b7d:	48 83 c3 01          	add    $0x1,%rbx
 b81:	48 39 dd             	cmp    %rbx,%rbp
 b84:	75 ea                	jne    b70 <__libc_csu_init+0x40>
 b86:	48 83 c4 08          	add    $0x8,%rsp
 b8a:	5b                   	pop    %rbx
 b8b:	5d                   	pop    %rbp
 b8c:	41 5c                	pop    %r12
 b8e:	41 5d                	pop    %r13
 b90:	41 5e                	pop    %r14
 b92:	41 5f                	pop    %r15
 b94:	c3                   	retq   
 b95:	90                   	nop
 b96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b9d:	00 00 00 

0000000000000ba0 <__libc_csu_fini>:
 ba0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ba4 <_fini>:
 ba4:	48 83 ec 08          	sub    $0x8,%rsp
 ba8:	48 83 c4 08          	add    $0x8,%rsp
 bac:	c3                   	retq   
