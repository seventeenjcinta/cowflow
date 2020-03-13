
input/19040021024_2.elf:     file format elf64-x86-64


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
 6f1:	4c 8d 25 62 05 00 00 	lea    0x562(%rip),%r12        # c5a <_IO_stdin_used+0x4a>
 6f8:	48 8d 2d 64 05 00 00 	lea    0x564(%rip),%rbp        # c63 <_IO_stdin_used+0x53>
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
 768:	48 8d 3d f7 04 00 00 	lea    0x4f7(%rip),%rdi        # c66 <_IO_stdin_used+0x56>
 76f:	e8 0c ff ff ff       	callq  680 <puts@plt>
 774:	48 89 df             	mov    %rbx,%rdi
 777:	e8 c4 02 00 00       	callq  a40 <build>
 77c:	48 89 c7             	mov    %rax,%rdi
 77f:	48 89 c3             	mov    %rax,%rbx
 782:	e8 c9 01 00 00       	callq  950 <print>
 787:	eb 9f                	jmp    728 <main+0x48>
 789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 790:	48 8d 35 e8 04 00 00 	lea    0x4e8(%rip),%rsi        # c7f <_IO_stdin_used+0x6f>
 797:	bf 01 00 00 00       	mov    $0x1,%edi
 79c:	31 c0                	xor    %eax,%eax
 79e:	e8 fd fe ff ff       	callq  6a0 <__printf_chk@plt>
 7a3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 7a8:	48 8d 3d e3 04 00 00 	lea    0x4e3(%rip),%rdi        # c92 <_IO_stdin_used+0x82>
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 fa fe ff ff       	callq  6b0 <__isoc99_scanf@plt>
 7b6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 7bb:	48 89 df             	mov    %rbx,%rdi
 7be:	e8 0d 03 00 00       	callq  ad0 <del>
 7c3:	48 89 c7             	mov    %rax,%rdi
 7c6:	48 89 c3             	mov    %rax,%rbx
 7c9:	e8 82 01 00 00       	callq  950 <print>
 7ce:	e9 55 ff ff ff       	jmpq   728 <main+0x48>
 7d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7d8:	48 8d 35 87 04 00 00 	lea    0x487(%rip),%rsi        # c66 <_IO_stdin_used+0x56>
 7df:	bf 01 00 00 00       	mov    $0x1,%edi
 7e4:	31 c0                	xor    %eax,%eax
 7e6:	e8 b5 fe ff ff       	callq  6a0 <__printf_chk@plt>
 7eb:	bf 18 00 00 00       	mov    $0x18,%edi
 7f0:	e8 9b fe ff ff       	callq  690 <malloc@plt>
 7f5:	48 8d 3d 27 04 00 00 	lea    0x427(%rip),%rdi        # c23 <_IO_stdin_used+0x13>
 7fc:	48 8d 50 08          	lea    0x8(%rax),%rdx
 800:	49 89 c7             	mov    %rax,%r15
 803:	48 89 c6             	mov    %rax,%rsi
 806:	31 c0                	xor    %eax,%eax
 808:	e8 a3 fe ff ff       	callq  6b0 <__isoc99_scanf@plt>
 80d:	48 89 df             	mov    %rbx,%rdi
 810:	4c 89 fe             	mov    %r15,%rsi
 813:	e8 98 01 00 00       	callq  9b0 <insert>
 818:	48 89 c7             	mov    %rax,%rdi
 81b:	48 89 c3             	mov    %rax,%rbx
 81e:	e8 2d 01 00 00       	callq  950 <print>
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

0000000000000950 <print>:
 950:	48 85 ff             	test   %rdi,%rdi
 953:	74 4b                	je     9a0 <print+0x50>
 955:	55                   	push   %rbp
 956:	53                   	push   %rbx
 957:	48 8d 2d b6 02 00 00 	lea    0x2b6(%rip),%rbp        # c14 <_IO_stdin_used+0x4>
 95e:	48 89 fb             	mov    %rdi,%rbx
 961:	48 83 ec 08          	sub    $0x8,%rsp
 965:	0f 1f 00             	nopl   (%rax)
 968:	66 0f ef c0          	pxor   %xmm0,%xmm0
 96c:	48 8b 13             	mov    (%rbx),%rdx
 96f:	48 89 ee             	mov    %rbp,%rsi
 972:	bf 01 00 00 00       	mov    $0x1,%edi
 977:	b8 01 00 00 00       	mov    $0x1,%eax
 97c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 981:	e8 1a fd ff ff       	callq  6a0 <__printf_chk@plt>
 986:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 98a:	48 85 db             	test   %rbx,%rbx
 98d:	75 d9                	jne    968 <print+0x18>
 98f:	48 83 c4 08          	add    $0x8,%rsp
 993:	5b                   	pop    %rbx
 994:	5d                   	pop    %rbp
 995:	c3                   	retq   
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 
 9a0:	48 8d 3d 75 02 00 00 	lea    0x275(%rip),%rdi        # c1c <_IO_stdin_used+0xc>
 9a7:	e9 d4 fc ff ff       	jmpq   680 <puts@plt>
 9ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009b0 <insert>:
 9b0:	48 85 ff             	test   %rdi,%rdi
 9b3:	74 5b                	je     a10 <insert+0x60>
 9b5:	4c 8b 06             	mov    (%rsi),%r8
 9b8:	48 89 fa             	mov    %rdi,%rdx
 9bb:	eb 12                	jmp    9cf <insert+0x1f>
 9bd:	0f 1f 00             	nopl   (%rax)
 9c0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9c4:	49 89 d1             	mov    %rdx,%r9
 9c7:	48 85 c9             	test   %rcx,%rcx
 9ca:	74 24                	je     9f0 <insert+0x40>
 9cc:	48 89 ca             	mov    %rcx,%rdx
 9cf:	4c 3b 02             	cmp    (%rdx),%r8
 9d2:	7f ec                	jg     9c0 <insert+0x10>
 9d4:	48 39 fa             	cmp    %rdi,%rdx
 9d7:	74 4f                	je     a28 <insert+0x78>
 9d9:	49 89 71 10          	mov    %rsi,0x10(%r9)
 9dd:	48 89 f8             	mov    %rdi,%rax
 9e0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9e4:	83 05 29 16 20 00 01 	addl   $0x1,0x201629(%rip)        # 202014 <n>
 9eb:	c3                   	retq   
 9ec:	0f 1f 40 00          	nopl   0x0(%rax)
 9f0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 9f4:	48 89 f8             	mov    %rdi,%rax
 9f7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9fe:	00 
 9ff:	83 05 0e 16 20 00 01 	addl   $0x1,0x20160e(%rip)        # 202014 <n>
 a06:	c3                   	retq   
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a17:	00 
 a18:	48 89 f0             	mov    %rsi,%rax
 a1b:	83 05 f2 15 20 00 01 	addl   $0x1,0x2015f2(%rip)        # 202014 <n>
 a22:	c3                   	retq   
 a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a28:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a2c:	48 89 f0             	mov    %rsi,%rax
 a2f:	83 05 de 15 20 00 01 	addl   $0x1,0x2015de(%rip)        # 202014 <n>
 a36:	c3                   	retq   
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 

0000000000000a40 <build>:
 a40:	41 54                	push   %r12
 a42:	55                   	push   %rbp
 a43:	48 89 fd             	mov    %rdi,%rbp
 a46:	53                   	push   %rbx
 a47:	bf 18 00 00 00       	mov    $0x18,%edi
 a4c:	e8 3f fc ff ff       	callq  690 <malloc@plt>
 a51:	48 8d 3d cb 01 00 00 	lea    0x1cb(%rip),%rdi        # c23 <_IO_stdin_used+0x13>
 a58:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a5c:	48 89 c3             	mov    %rax,%rbx
 a5f:	48 89 c6             	mov    %rax,%rsi
 a62:	31 c0                	xor    %eax,%eax
 a64:	e8 47 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 a69:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a6d:	74 43                	je     ab2 <build+0x72>
 a6f:	4c 8d 25 ad 01 00 00 	lea    0x1ad(%rip),%r12        # c23 <_IO_stdin_used+0x13>
 a76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a7d:	00 00 00 
 a80:	48 89 de             	mov    %rbx,%rsi
 a83:	48 89 ef             	mov    %rbp,%rdi
 a86:	e8 25 ff ff ff       	callq  9b0 <insert>
 a8b:	bf 18 00 00 00       	mov    $0x18,%edi
 a90:	48 89 c5             	mov    %rax,%rbp
 a93:	e8 f8 fb ff ff       	callq  690 <malloc@plt>
 a98:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a9c:	48 89 c3             	mov    %rax,%rbx
 a9f:	48 89 c6             	mov    %rax,%rsi
 aa2:	4c 89 e7             	mov    %r12,%rdi
 aa5:	31 c0                	xor    %eax,%eax
 aa7:	e8 04 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 aac:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ab0:	75 ce                	jne    a80 <build+0x40>
 ab2:	48 89 df             	mov    %rbx,%rdi
 ab5:	e8 b6 fb ff ff       	callq  670 <free@plt>
 aba:	48 89 e8             	mov    %rbp,%rax
 abd:	5b                   	pop    %rbx
 abe:	5d                   	pop    %rbp
 abf:	41 5c                	pop    %r12
 ac1:	c3                   	retq   
 ac2:	0f 1f 40 00          	nopl   0x0(%rax)
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <del>:
 ad0:	41 54                	push   %r12
 ad2:	55                   	push   %rbp
 ad3:	49 89 fc             	mov    %rdi,%r12
 ad6:	53                   	push   %rbx
 ad7:	48 89 fb             	mov    %rdi,%rbx
 ada:	48 83 ec 10          	sub    $0x10,%rsp
 ade:	48 85 ff             	test   %rdi,%rdi
 ae1:	75 18                	jne    afb <del+0x2b>
 ae3:	e9 8b 00 00 00       	jmpq   b73 <del+0xa3>
 ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aef:	00 
 af0:	48 85 c0             	test   %rax,%rax
 af3:	48 89 da             	mov    %rbx,%rdx
 af6:	74 42                	je     b3a <del+0x6a>
 af8:	48 89 c3             	mov    %rax,%rbx
 afb:	48 8b 2b             	mov    (%rbx),%rbp
 afe:	48 8b 43 10          	mov    0x10(%rbx),%rax
 b02:	48 39 f5             	cmp    %rsi,%rbp
 b05:	75 e9                	jne    af0 <del+0x20>
 b07:	4c 39 e3             	cmp    %r12,%rbx
 b0a:	74 4c                	je     b58 <del+0x88>
 b0c:	48 89 42 10          	mov    %rax,0x10(%rdx)
 b10:	48 89 df             	mov    %rbx,%rdi
 b13:	e8 58 fb ff ff       	callq  670 <free@plt>
 b18:	83 2d f5 14 20 00 01 	subl   $0x1,0x2014f5(%rip)        # 202014 <n>
 b1f:	4c 89 e0             	mov    %r12,%rax
 b22:	48 3b 2b             	cmp    (%rbx),%rbp
 b25:	75 09                	jne    b30 <del+0x60>
 b27:	48 83 c4 10          	add    $0x10,%rsp
 b2b:	5b                   	pop    %rbx
 b2c:	5d                   	pop    %rbp
 b2d:	41 5c                	pop    %r12
 b2f:	c3                   	retq   
 b30:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
 b35:	75 f0                	jne    b27 <del+0x57>
 b37:	49 89 c4             	mov    %rax,%r12
 b3a:	48 8d 3d fe 00 00 00 	lea    0xfe(%rip),%rdi        # c3f <_IO_stdin_used+0x2f>
 b41:	e8 3a fb ff ff       	callq  680 <puts@plt>
 b46:	48 83 c4 10          	add    $0x10,%rsp
 b4a:	4c 89 e0             	mov    %r12,%rax
 b4d:	5b                   	pop    %rbx
 b4e:	5d                   	pop    %rbp
 b4f:	41 5c                	pop    %r12
 b51:	c3                   	retq   
 b52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b58:	48 89 df             	mov    %rbx,%rdi
 b5b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b60:	e8 0b fb ff ff       	callq  670 <free@plt>
 b65:	83 2d a8 14 20 00 01 	subl   $0x1,0x2014a8(%rip)        # 202014 <n>
 b6c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b71:	eb af                	jmp    b22 <del+0x52>
 b73:	48 8d 3d b0 00 00 00 	lea    0xb0(%rip),%rdi        # c2a <_IO_stdin_used+0x1a>
 b7a:	e8 01 fb ff ff       	callq  680 <puts@plt>
 b7f:	31 c0                	xor    %eax,%eax
 b81:	eb a4                	jmp    b27 <del+0x57>
 b83:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8a:	00 00 00 
 b8d:	0f 1f 00             	nopl   (%rax)

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
