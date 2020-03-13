
input/19020031082_2.elf:     file format elf64-x86-64


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
 6e0:	41 57                	push   %r15
 6e2:	41 56                	push   %r14
 6e4:	41 55                	push   %r13
 6e6:	41 54                	push   %r12
 6e8:	4c 8d 2d a9 05 00 00 	lea    0x5a9(%rip),%r13        # c98 <_IO_stdin_used+0x88>
 6ef:	55                   	push   %rbp
 6f0:	53                   	push   %rbx
 6f1:	4c 8d 25 c8 05 00 00 	lea    0x5c8(%rip),%r12        # cc0 <_IO_stdin_used+0xb0>
 6f8:	48 8d 2d 5f 05 00 00 	lea    0x55f(%rip),%rbp        # c5e <_IO_stdin_used+0x4e>
 6ff:	31 db                	xor    %ebx,%ebx
 701:	48 83 ec 38          	sub    $0x38,%rsp
 705:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 70c:	00 00 
 70e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 713:	31 c0                	xor    %eax,%eax
 715:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 71a:	4c 8d 74 24 1c       	lea    0x1c(%rsp),%r14
 71f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 724:	0f 1f 40 00          	nopl   0x0(%rax)
 728:	4c 89 ef             	mov    %r13,%rdi
 72b:	e8 50 ff ff ff       	callq  680 <puts@plt>
 730:	4c 89 e6             	mov    %r12,%rsi
 733:	bf 01 00 00 00       	mov    $0x1,%edi
 738:	31 c0                	xor    %eax,%eax
 73a:	e8 61 ff ff ff       	callq  6a0 <__printf_chk@plt>
 73f:	31 c0                	xor    %eax,%eax
 741:	4c 89 f6             	mov    %r14,%rsi
 744:	48 89 ef             	mov    %rbp,%rdi
 747:	e8 64 ff ff ff       	callq  6b0 <__isoc99_scanf@plt>
 74c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 750:	83 f8 04             	cmp    $0x4,%eax
 753:	0f 84 d7 00 00 00    	je     830 <main+0x150>
 759:	83 f8 02             	cmp    $0x2,%eax
 75c:	74 7a                	je     7d8 <main+0xf8>
 75e:	83 f8 03             	cmp    $0x3,%eax
 761:	74 2d                	je     790 <main+0xb0>
 763:	83 f8 01             	cmp    $0x1,%eax
 766:	75 c0                	jne    728 <main+0x48>
 768:	48 8d 3d f2 04 00 00 	lea    0x4f2(%rip),%rdi        # c61 <_IO_stdin_used+0x51>
 76f:	e8 0c ff ff ff       	callq  680 <puts@plt>
 774:	48 89 df             	mov    %rbx,%rdi
 777:	e8 64 02 00 00       	callq  9e0 <build>
 77c:	48 89 c7             	mov    %rax,%rdi
 77f:	48 89 c3             	mov    %rax,%rbx
 782:	e8 a9 03 00 00       	callq  b30 <print>
 787:	eb 9f                	jmp    728 <main+0x48>
 789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 790:	48 8d 35 e5 04 00 00 	lea    0x4e5(%rip),%rsi        # c7c <_IO_stdin_used+0x6c>
 797:	bf 01 00 00 00       	mov    $0x1,%edi
 79c:	31 c0                	xor    %eax,%eax
 79e:	e8 fd fe ff ff       	callq  6a0 <__printf_chk@plt>
 7a3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 7a8:	48 8d 3d e0 04 00 00 	lea    0x4e0(%rip),%rdi        # c8f <_IO_stdin_used+0x7f>
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 fa fe ff ff       	callq  6b0 <__isoc99_scanf@plt>
 7b6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 7bb:	48 89 df             	mov    %rbx,%rdi
 7be:	e8 ad 02 00 00       	callq  a70 <del>
 7c3:	48 89 c7             	mov    %rax,%rdi
 7c6:	48 89 c3             	mov    %rax,%rbx
 7c9:	e8 62 03 00 00       	callq  b30 <print>
 7ce:	e9 55 ff ff ff       	jmpq   728 <main+0x48>
 7d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7d8:	48 8d 35 82 04 00 00 	lea    0x482(%rip),%rsi        # c61 <_IO_stdin_used+0x51>
 7df:	bf 01 00 00 00       	mov    $0x1,%edi
 7e4:	31 c0                	xor    %eax,%eax
 7e6:	e8 b5 fe ff ff       	callq  6a0 <__printf_chk@plt>
 7eb:	bf 18 00 00 00       	mov    $0x18,%edi
 7f0:	e8 9b fe ff ff       	callq  690 <malloc@plt>
 7f5:	48 8d 3d 18 04 00 00 	lea    0x418(%rip),%rdi        # c14 <_IO_stdin_used+0x4>
 7fc:	48 8d 50 08          	lea    0x8(%rax),%rdx
 800:	49 89 c7             	mov    %rax,%r15
 803:	48 89 c6             	mov    %rax,%rsi
 806:	31 c0                	xor    %eax,%eax
 808:	e8 a3 fe ff ff       	callq  6b0 <__isoc99_scanf@plt>
 80d:	48 89 df             	mov    %rbx,%rdi
 810:	4c 89 fe             	mov    %r15,%rsi
 813:	e8 38 01 00 00       	callq  950 <insert>
 818:	48 89 c7             	mov    %rax,%rdi
 81b:	48 89 c3             	mov    %rax,%rbx
 81e:	e8 0d 03 00 00       	callq  b30 <print>
 823:	e9 00 ff ff ff       	jmpq   728 <main+0x48>
 828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 82f:	00 
 830:	31 ff                	xor    %edi,%edi
 832:	e8 89 fe ff ff       	callq  6c0 <exit@plt>
 837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 83e:	00 00 

0000000000000840 <_start>:
 840:	31 ed                	xor    %ebp,%ebp
 842:	49 89 d1             	mov    %rdx,%r9
 845:	5e                   	pop    %rsi
 846:	48 89 e2             	mov    %rsp,%rdx
 849:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 84d:	50                   	push   %rax
 84e:	54                   	push   %rsp
 84f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # c00 <__libc_csu_fini>
 856:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # b90 <__libc_csu_init>
 85d:	48 8d 3d 7c fe ff ff 	lea    -0x184(%rip),%rdi        # 6e0 <main>
 864:	ff 15 76 17 20 00    	callq  *0x201776(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 86a:	f4                   	hlt    
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000870 <deregister_tm_clones>:
 870:	48 8d 3d 99 17 20 00 	lea    0x201799(%rip),%rdi        # 202010 <__TMC_END__>
 877:	55                   	push   %rbp
 878:	48 8d 05 91 17 20 00 	lea    0x201791(%rip),%rax        # 202010 <__TMC_END__>
 87f:	48 39 f8             	cmp    %rdi,%rax
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	74 19                	je     8a0 <deregister_tm_clones+0x30>
 887:	48 8b 05 4a 17 20 00 	mov    0x20174a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 88e:	48 85 c0             	test   %rax,%rax
 891:	74 0d                	je     8a0 <deregister_tm_clones+0x30>
 893:	5d                   	pop    %rbp
 894:	ff e0                	jmpq   *%rax
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 
 8a0:	5d                   	pop    %rbp
 8a1:	c3                   	retq   
 8a2:	0f 1f 40 00          	nopl   0x0(%rax)
 8a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ad:	00 00 00 

00000000000008b0 <register_tm_clones>:
 8b0:	48 8d 3d 59 17 20 00 	lea    0x201759(%rip),%rdi        # 202010 <__TMC_END__>
 8b7:	48 8d 35 52 17 20 00 	lea    0x201752(%rip),%rsi        # 202010 <__TMC_END__>
 8be:	55                   	push   %rbp
 8bf:	48 29 fe             	sub    %rdi,%rsi
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	48 c1 fe 03          	sar    $0x3,%rsi
 8c9:	48 89 f0             	mov    %rsi,%rax
 8cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8d0:	48 01 c6             	add    %rax,%rsi
 8d3:	48 d1 fe             	sar    %rsi
 8d6:	74 18                	je     8f0 <register_tm_clones+0x40>
 8d8:	48 8b 05 11 17 20 00 	mov    0x201711(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8df:	48 85 c0             	test   %rax,%rax
 8e2:	74 0c                	je     8f0 <register_tm_clones+0x40>
 8e4:	5d                   	pop    %rbp
 8e5:	ff e0                	jmpq   *%rax
 8e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ee:	00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <__do_global_dtors_aux>:
 900:	80 3d 09 17 20 00 00 	cmpb   $0x0,0x201709(%rip)        # 202010 <__TMC_END__>
 907:	75 2f                	jne    938 <__do_global_dtors_aux+0x38>
 909:	48 83 3d e7 16 20 00 	cmpq   $0x0,0x2016e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 910:	00 
 911:	55                   	push   %rbp
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	74 0c                	je     923 <__do_global_dtors_aux+0x23>
 917:	48 8b 3d ea 16 20 00 	mov    0x2016ea(%rip),%rdi        # 202008 <__dso_handle>
 91e:	e8 ad fd ff ff       	callq  6d0 <__cxa_finalize@plt>
 923:	e8 48 ff ff ff       	callq  870 <deregister_tm_clones>
 928:	c6 05 e1 16 20 00 01 	movb   $0x1,0x2016e1(%rip)        # 202010 <__TMC_END__>
 92f:	5d                   	pop    %rbp
 930:	c3                   	retq   
 931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 938:	f3 c3                	repz retq 
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <frame_dummy>:
 940:	55                   	push   %rbp
 941:	48 89 e5             	mov    %rsp,%rbp
 944:	5d                   	pop    %rbp
 945:	e9 66 ff ff ff       	jmpq   8b0 <register_tm_clones>
 94a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000950 <insert>:
 950:	48 85 ff             	test   %rdi,%rdi
 953:	74 5b                	je     9b0 <insert+0x60>
 955:	4c 8b 06             	mov    (%rsi),%r8
 958:	48 89 fa             	mov    %rdi,%rdx
 95b:	eb 12                	jmp    96f <insert+0x1f>
 95d:	0f 1f 00             	nopl   (%rax)
 960:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 964:	49 89 d1             	mov    %rdx,%r9
 967:	48 85 c9             	test   %rcx,%rcx
 96a:	74 24                	je     990 <insert+0x40>
 96c:	48 89 ca             	mov    %rcx,%rdx
 96f:	4c 3b 02             	cmp    (%rdx),%r8
 972:	7f ec                	jg     960 <insert+0x10>
 974:	48 39 fa             	cmp    %rdi,%rdx
 977:	74 4f                	je     9c8 <insert+0x78>
 979:	49 89 71 10          	mov    %rsi,0x10(%r9)
 97d:	48 89 f8             	mov    %rdi,%rax
 980:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 984:	83 05 89 16 20 00 01 	addl   $0x1,0x201689(%rip)        # 202014 <n>
 98b:	c3                   	retq   
 98c:	0f 1f 40 00          	nopl   0x0(%rax)
 990:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 994:	48 89 f8             	mov    %rdi,%rax
 997:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 99e:	00 
 99f:	83 05 6e 16 20 00 01 	addl   $0x1,0x20166e(%rip)        # 202014 <n>
 9a6:	c3                   	retq   
 9a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ae:	00 00 
 9b0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9b7:	00 
 9b8:	48 89 f0             	mov    %rsi,%rax
 9bb:	83 05 52 16 20 00 01 	addl   $0x1,0x201652(%rip)        # 202014 <n>
 9c2:	c3                   	retq   
 9c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 9c8:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9cc:	48 89 f0             	mov    %rsi,%rax
 9cf:	83 05 3e 16 20 00 01 	addl   $0x1,0x20163e(%rip)        # 202014 <n>
 9d6:	c3                   	retq   
 9d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9de:	00 00 

00000000000009e0 <build>:
 9e0:	41 54                	push   %r12
 9e2:	55                   	push   %rbp
 9e3:	48 89 fd             	mov    %rdi,%rbp
 9e6:	53                   	push   %rbx
 9e7:	bf 18 00 00 00       	mov    $0x18,%edi
 9ec:	e8 9f fc ff ff       	callq  690 <malloc@plt>
 9f1:	48 8d 3d 1c 02 00 00 	lea    0x21c(%rip),%rdi        # c14 <_IO_stdin_used+0x4>
 9f8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 9fc:	48 89 c3             	mov    %rax,%rbx
 9ff:	48 89 c6             	mov    %rax,%rsi
 a02:	31 c0                	xor    %eax,%eax
 a04:	e8 a7 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 a09:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a0d:	74 43                	je     a52 <build+0x72>
 a0f:	4c 8d 25 fe 01 00 00 	lea    0x1fe(%rip),%r12        # c14 <_IO_stdin_used+0x4>
 a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a1d:	00 00 00 
 a20:	48 89 de             	mov    %rbx,%rsi
 a23:	48 89 ef             	mov    %rbp,%rdi
 a26:	e8 25 ff ff ff       	callq  950 <insert>
 a2b:	bf 18 00 00 00       	mov    $0x18,%edi
 a30:	48 89 c5             	mov    %rax,%rbp
 a33:	e8 58 fc ff ff       	callq  690 <malloc@plt>
 a38:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a3c:	48 89 c3             	mov    %rax,%rbx
 a3f:	48 89 c6             	mov    %rax,%rsi
 a42:	4c 89 e7             	mov    %r12,%rdi
 a45:	31 c0                	xor    %eax,%eax
 a47:	e8 64 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 a4c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a50:	75 ce                	jne    a20 <build+0x40>
 a52:	48 89 df             	mov    %rbx,%rdi
 a55:	e8 16 fc ff ff       	callq  670 <free@plt>
 a5a:	48 89 e8             	mov    %rbp,%rax
 a5d:	5b                   	pop    %rbx
 a5e:	5d                   	pop    %rbp
 a5f:	41 5c                	pop    %r12
 a61:	c3                   	retq   
 a62:	0f 1f 40 00          	nopl   0x0(%rax)
 a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a6d:	00 00 00 

0000000000000a70 <del>:
 a70:	41 54                	push   %r12
 a72:	55                   	push   %rbp
 a73:	49 89 fc             	mov    %rdi,%r12
 a76:	53                   	push   %rbx
 a77:	48 89 fb             	mov    %rdi,%rbx
 a7a:	48 83 ec 10          	sub    $0x10,%rsp
 a7e:	48 85 ff             	test   %rdi,%rdi
 a81:	75 18                	jne    a9b <del+0x2b>
 a83:	e9 8b 00 00 00       	jmpq   b13 <del+0xa3>
 a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a8f:	00 
 a90:	48 85 c0             	test   %rax,%rax
 a93:	48 89 da             	mov    %rbx,%rdx
 a96:	74 42                	je     ada <del+0x6a>
 a98:	48 89 c3             	mov    %rax,%rbx
 a9b:	48 8b 2b             	mov    (%rbx),%rbp
 a9e:	48 8b 43 10          	mov    0x10(%rbx),%rax
 aa2:	48 39 f5             	cmp    %rsi,%rbp
 aa5:	75 e9                	jne    a90 <del+0x20>
 aa7:	4c 39 e3             	cmp    %r12,%rbx
 aaa:	74 4c                	je     af8 <del+0x88>
 aac:	48 89 42 10          	mov    %rax,0x10(%rdx)
 ab0:	48 89 df             	mov    %rbx,%rdi
 ab3:	e8 b8 fb ff ff       	callq  670 <free@plt>
 ab8:	83 2d 55 15 20 00 01 	subl   $0x1,0x201555(%rip)        # 202014 <n>
 abf:	4c 89 e0             	mov    %r12,%rax
 ac2:	48 3b 2b             	cmp    (%rbx),%rbp
 ac5:	75 09                	jne    ad0 <del+0x60>
 ac7:	48 83 c4 10          	add    $0x10,%rsp
 acb:	5b                   	pop    %rbx
 acc:	5d                   	pop    %rbp
 acd:	41 5c                	pop    %r12
 acf:	c3                   	retq   
 ad0:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
 ad5:	75 f0                	jne    ac7 <del+0x57>
 ad7:	49 89 c4             	mov    %rax,%r12
 ada:	48 8d 3d 4f 01 00 00 	lea    0x14f(%rip),%rdi        # c30 <_IO_stdin_used+0x20>
 ae1:	e8 9a fb ff ff       	callq  680 <puts@plt>
 ae6:	48 83 c4 10          	add    $0x10,%rsp
 aea:	4c 89 e0             	mov    %r12,%rax
 aed:	5b                   	pop    %rbx
 aee:	5d                   	pop    %rbp
 aef:	41 5c                	pop    %r12
 af1:	c3                   	retq   
 af2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 af8:	48 89 df             	mov    %rbx,%rdi
 afb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b00:	e8 6b fb ff ff       	callq  670 <free@plt>
 b05:	83 2d 08 15 20 00 01 	subl   $0x1,0x201508(%rip)        # 202014 <n>
 b0c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b11:	eb af                	jmp    ac2 <del+0x52>
 b13:	48 8d 3d 01 01 00 00 	lea    0x101(%rip),%rdi        # c1b <_IO_stdin_used+0xb>
 b1a:	e8 61 fb ff ff       	callq  680 <puts@plt>
 b1f:	31 c0                	xor    %eax,%eax
 b21:	eb a4                	jmp    ac7 <del+0x57>
 b23:	0f 1f 00             	nopl   (%rax)
 b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b2d:	00 00 00 

0000000000000b30 <print>:
 b30:	48 85 ff             	test   %rdi,%rdi
 b33:	74 4b                	je     b80 <print+0x50>
 b35:	55                   	push   %rbp
 b36:	53                   	push   %rbx
 b37:	48 8d 2d 0d 01 00 00 	lea    0x10d(%rip),%rbp        # c4b <_IO_stdin_used+0x3b>
 b3e:	48 89 fb             	mov    %rdi,%rbx
 b41:	48 83 ec 08          	sub    $0x8,%rsp
 b45:	0f 1f 00             	nopl   (%rax)
 b48:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b4c:	48 8b 13             	mov    (%rbx),%rdx
 b4f:	48 89 ee             	mov    %rbp,%rsi
 b52:	bf 01 00 00 00       	mov    $0x1,%edi
 b57:	b8 01 00 00 00       	mov    $0x1,%eax
 b5c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b61:	e8 3a fb ff ff       	callq  6a0 <__printf_chk@plt>
 b66:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b6a:	48 85 db             	test   %rbx,%rbx
 b6d:	75 d9                	jne    b48 <print+0x18>
 b6f:	48 83 c4 08          	add    $0x8,%rsp
 b73:	5b                   	pop    %rbx
 b74:	5d                   	pop    %rbp
 b75:	c3                   	retq   
 b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b7d:	00 00 00 
 b80:	48 8d 3d cc 00 00 00 	lea    0xcc(%rip),%rdi        # c53 <_IO_stdin_used+0x43>
 b87:	e9 f4 fa ff ff       	jmpq   680 <puts@plt>
 b8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000b90 <__libc_csu_init>:
 b90:	41 57                	push   %r15
 b92:	41 56                	push   %r14
 b94:	49 89 d7             	mov    %rdx,%r15
 b97:	41 55                	push   %r13
 b99:	41 54                	push   %r12
 b9b:	4c 8d 25 ee 11 20 00 	lea    0x2011ee(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 ba2:	55                   	push   %rbp
 ba3:	48 8d 2d ee 11 20 00 	lea    0x2011ee(%rip),%rbp        # 201d98 <__init_array_end>
 baa:	53                   	push   %rbx
 bab:	41 89 fd             	mov    %edi,%r13d
 bae:	49 89 f6             	mov    %rsi,%r14
 bb1:	4c 29 e5             	sub    %r12,%rbp
 bb4:	48 83 ec 08          	sub    $0x8,%rsp
 bb8:	48 c1 fd 03          	sar    $0x3,%rbp
 bbc:	e8 87 fa ff ff       	callq  648 <_init>
 bc1:	48 85 ed             	test   %rbp,%rbp
 bc4:	74 20                	je     be6 <__libc_csu_init+0x56>
 bc6:	31 db                	xor    %ebx,%ebx
 bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bcf:	00 
 bd0:	4c 89 fa             	mov    %r15,%rdx
 bd3:	4c 89 f6             	mov    %r14,%rsi
 bd6:	44 89 ef             	mov    %r13d,%edi
 bd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bdd:	48 83 c3 01          	add    $0x1,%rbx
 be1:	48 39 dd             	cmp    %rbx,%rbp
 be4:	75 ea                	jne    bd0 <__libc_csu_init+0x40>
 be6:	48 83 c4 08          	add    $0x8,%rsp
 bea:	5b                   	pop    %rbx
 beb:	5d                   	pop    %rbp
 bec:	41 5c                	pop    %r12
 bee:	41 5d                	pop    %r13
 bf0:	41 5e                	pop    %r14
 bf2:	41 5f                	pop    %r15
 bf4:	c3                   	retq   
 bf5:	90                   	nop
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 

0000000000000c00 <__libc_csu_fini>:
 c00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c04 <_fini>:
 c04:	48 83 ec 08          	sub    $0x8,%rsp
 c08:	48 83 c4 08          	add    $0x8,%rsp
 c0c:	c3                   	retq   
