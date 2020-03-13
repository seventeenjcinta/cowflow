
input/19020031097-2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000610 <_init>:
 610:	48 83 ec 08          	sub    $0x8,%rsp
 614:	48 8b 05 cd 19 20 00 	mov    0x2019cd(%rip),%rax        # 201fe8 <__gmon_start__>
 61b:	48 85 c0             	test   %rax,%rax
 61e:	74 02                	je     622 <_init+0x12>
 620:	ff d0                	callq  *%rax
 622:	48 83 c4 08          	add    $0x8,%rsp
 626:	c3                   	retq   

Disassembly of section .plt:

0000000000000630 <.plt>:
 630:	ff 35 6a 19 20 00    	pushq  0x20196a(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 6c 19 20 00    	jmpq   *0x20196c(%rip)        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <puts@plt>:
 640:	ff 25 6a 19 20 00    	jmpq   *0x20196a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 646:	68 00 00 00 00       	pushq  $0x0
 64b:	e9 e0 ff ff ff       	jmpq   630 <.plt>

0000000000000650 <malloc@plt>:
 650:	ff 25 62 19 20 00    	jmpq   *0x201962(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 656:	68 01 00 00 00       	pushq  $0x1
 65b:	e9 d0 ff ff ff       	jmpq   630 <.plt>

0000000000000660 <__printf_chk@plt>:
 660:	ff 25 5a 19 20 00    	jmpq   *0x20195a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 666:	68 02 00 00 00       	pushq  $0x2
 66b:	e9 c0 ff ff ff       	jmpq   630 <.plt>

0000000000000670 <__isoc99_scanf@plt>:
 670:	ff 25 52 19 20 00    	jmpq   *0x201952(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 676:	68 03 00 00 00       	pushq  $0x3
 67b:	e9 b0 ff ff ff       	jmpq   630 <.plt>

0000000000000680 <exit@plt>:
 680:	ff 25 4a 19 20 00    	jmpq   *0x20194a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 686:	68 04 00 00 00       	pushq  $0x4
 68b:	e9 a0 ff ff ff       	jmpq   630 <.plt>

Disassembly of section .plt.got:

0000000000000690 <__cxa_finalize@plt>:
 690:	ff 25 62 19 20 00    	jmpq   *0x201962(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 696:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006a0 <main>:
 6a0:	41 57                	push   %r15
 6a2:	41 56                	push   %r14
 6a4:	48 8d 3d 45 06 00 00 	lea    0x645(%rip),%rdi        # cf0 <_IO_stdin_used+0xc0>
 6ab:	41 55                	push   %r13
 6ad:	41 54                	push   %r12
 6af:	55                   	push   %rbp
 6b0:	53                   	push   %rbx
 6b1:	48 83 ec 38          	sub    $0x38,%rsp
 6b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 6bc:	00 00 
 6be:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 6c3:	31 c0                	xor    %eax,%eax
 6c5:	e8 76 ff ff ff       	callq  640 <puts@plt>
 6ca:	31 c0                	xor    %eax,%eax
 6cc:	e8 6f 02 00 00       	callq  940 <create>
 6d1:	44 8b 05 3c 19 20 00 	mov    0x20193c(%rip),%r8d        # 202014 <n>
 6d8:	48 89 c3             	mov    %rax,%rbx
 6db:	41 83 f8 01          	cmp    $0x1,%r8d
 6df:	7e 38                	jle    719 <main+0x79>
 6e1:	41 83 e8 01          	sub    $0x1,%r8d
 6e5:	0f 1f 00             	nopl   (%rax)
 6e8:	48 89 d8             	mov    %rbx,%rax
 6eb:	31 f6                	xor    %esi,%esi
 6ed:	0f 1f 00             	nopl   (%rax)
 6f0:	48 8b 50 10          	mov    0x10(%rax),%rdx
 6f4:	48 8b 08             	mov    (%rax),%rcx
 6f7:	48 8b 3a             	mov    (%rdx),%rdi
 6fa:	48 39 f9             	cmp    %rdi,%rcx
 6fd:	7e 09                	jle    708 <main+0x68>
 6ff:	48 63 c9             	movslq %ecx,%rcx
 702:	48 89 38             	mov    %rdi,(%rax)
 705:	48 89 0a             	mov    %rcx,(%rdx)
 708:	83 c6 01             	add    $0x1,%esi
 70b:	48 89 d0             	mov    %rdx,%rax
 70e:	44 39 c6             	cmp    %r8d,%esi
 711:	75 dd                	jne    6f0 <main+0x50>
 713:	41 83 e8 01          	sub    $0x1,%r8d
 717:	75 cf                	jne    6e8 <main+0x48>
 719:	48 89 df             	mov    %rbx,%rdi
 71c:	4c 8d 74 24 1c       	lea    0x1c(%rsp),%r14
 721:	4c 8d 2d 4f 05 00 00 	lea    0x54f(%rip),%r13        # c77 <_IO_stdin_used+0x47>
 728:	e8 c3 02 00 00       	callq  9f0 <print>
 72d:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 732:	4c 8d 25 5b 05 00 00 	lea    0x55b(%rip),%r12        # c94 <_IO_stdin_used+0x64>
 739:	48 8d 2d 6f 05 00 00 	lea    0x56f(%rip),%rbp        # caf <_IO_stdin_used+0x7f>
 740:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 745:	4c 89 ef             	mov    %r13,%rdi
 748:	e8 f3 fe ff ff       	callq  640 <puts@plt>
 74d:	4c 89 e7             	mov    %r12,%rdi
 750:	e8 eb fe ff ff       	callq  640 <puts@plt>
 755:	48 89 ee             	mov    %rbp,%rsi
 758:	bf 01 00 00 00       	mov    $0x1,%edi
 75d:	31 c0                	xor    %eax,%eax
 75f:	e8 fc fe ff ff       	callq  660 <__printf_chk@plt>
 764:	48 8d 3d 57 05 00 00 	lea    0x557(%rip),%rdi        # cc2 <_IO_stdin_used+0x92>
 76b:	31 c0                	xor    %eax,%eax
 76d:	4c 89 f6             	mov    %r14,%rsi
 770:	e8 fb fe ff ff       	callq  670 <__isoc99_scanf@plt>
 775:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 779:	83 f8 01             	cmp    $0x1,%eax
 77c:	74 5a                	je     7d8 <main+0x138>
 77e:	83 f8 02             	cmp    $0x2,%eax
 781:	74 0d                	je     790 <main+0xf0>
 783:	85 c0                	test   %eax,%eax
 785:	75 be                	jne    745 <main+0xa5>
 787:	31 ff                	xor    %edi,%edi
 789:	e8 f2 fe ff ff       	callq  680 <exit@plt>
 78e:	66 90                	xchg   %ax,%ax
 790:	48 8d 35 b1 05 00 00 	lea    0x5b1(%rip),%rsi        # d48 <_IO_stdin_used+0x118>
 797:	bf 01 00 00 00       	mov    $0x1,%edi
 79c:	31 c0                	xor    %eax,%eax
 79e:	e8 bd fe ff ff       	callq  660 <__printf_chk@plt>
 7a3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 7a8:	48 8d 3d 16 05 00 00 	lea    0x516(%rip),%rdi        # cc5 <_IO_stdin_used+0x95>
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 ba fe ff ff       	callq  670 <__isoc99_scanf@plt>
 7b6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 7bb:	48 89 df             	mov    %rbx,%rdi
 7be:	e8 6d 03 00 00       	callq  b30 <delete>
 7c3:	48 89 c7             	mov    %rax,%rdi
 7c6:	48 89 c3             	mov    %rax,%rbx
 7c9:	e8 22 02 00 00       	callq  9f0 <print>
 7ce:	e9 72 ff ff ff       	jmpq   745 <main+0xa5>
 7d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7d8:	48 8d 35 41 05 00 00 	lea    0x541(%rip),%rsi        # d20 <_IO_stdin_used+0xf0>
 7df:	bf 01 00 00 00       	mov    $0x1,%edi
 7e4:	31 c0                	xor    %eax,%eax
 7e6:	e8 75 fe ff ff       	callq  660 <__printf_chk@plt>
 7eb:	bf 18 00 00 00       	mov    $0x18,%edi
 7f0:	e8 5b fe ff ff       	callq  650 <malloc@plt>
 7f5:	48 8d 3d 38 04 00 00 	lea    0x438(%rip),%rdi        # c34 <_IO_stdin_used+0x4>
 7fc:	48 8d 50 08          	lea    0x8(%rax),%rdx
 800:	49 89 c7             	mov    %rax,%r15
 803:	48 89 c6             	mov    %rax,%rsi
 806:	31 c0                	xor    %eax,%eax
 808:	e8 63 fe ff ff       	callq  670 <__isoc99_scanf@plt>
 80d:	48 89 df             	mov    %rbx,%rdi
 810:	4c 89 fe             	mov    %r15,%rsi
 813:	e8 98 02 00 00       	callq  ab0 <insert>
 818:	48 89 c7             	mov    %rax,%rdi
 81b:	48 89 c3             	mov    %rax,%rbx
 81e:	e8 cd 01 00 00       	callq  9f0 <print>
 823:	e9 1d ff ff ff       	jmpq   745 <main+0xa5>
 828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 82f:	00 

0000000000000830 <_start>:
 830:	31 ed                	xor    %ebp,%ebp
 832:	49 89 d1             	mov    %rdx,%r9
 835:	5e                   	pop    %rsi
 836:	48 89 e2             	mov    %rsp,%rdx
 839:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 83d:	50                   	push   %rax
 83e:	54                   	push   %rsp
 83f:	4c 8d 05 da 03 00 00 	lea    0x3da(%rip),%r8        # c20 <__libc_csu_fini>
 846:	48 8d 0d 63 03 00 00 	lea    0x363(%rip),%rcx        # bb0 <__libc_csu_init>
 84d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 6a0 <main>
 854:	ff 15 86 17 20 00    	callq  *0x201786(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 85a:	f4                   	hlt    
 85b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000860 <deregister_tm_clones>:
 860:	48 8d 3d a9 17 20 00 	lea    0x2017a9(%rip),%rdi        # 202010 <__TMC_END__>
 867:	55                   	push   %rbp
 868:	48 8d 05 a1 17 20 00 	lea    0x2017a1(%rip),%rax        # 202010 <__TMC_END__>
 86f:	48 39 f8             	cmp    %rdi,%rax
 872:	48 89 e5             	mov    %rsp,%rbp
 875:	74 19                	je     890 <deregister_tm_clones+0x30>
 877:	48 8b 05 5a 17 20 00 	mov    0x20175a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 87e:	48 85 c0             	test   %rax,%rax
 881:	74 0d                	je     890 <deregister_tm_clones+0x30>
 883:	5d                   	pop    %rbp
 884:	ff e0                	jmpq   *%rax
 886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88d:	00 00 00 
 890:	5d                   	pop    %rbp
 891:	c3                   	retq   
 892:	0f 1f 40 00          	nopl   0x0(%rax)
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 

00000000000008a0 <register_tm_clones>:
 8a0:	48 8d 3d 69 17 20 00 	lea    0x201769(%rip),%rdi        # 202010 <__TMC_END__>
 8a7:	48 8d 35 62 17 20 00 	lea    0x201762(%rip),%rsi        # 202010 <__TMC_END__>
 8ae:	55                   	push   %rbp
 8af:	48 29 fe             	sub    %rdi,%rsi
 8b2:	48 89 e5             	mov    %rsp,%rbp
 8b5:	48 c1 fe 03          	sar    $0x3,%rsi
 8b9:	48 89 f0             	mov    %rsi,%rax
 8bc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8c0:	48 01 c6             	add    %rax,%rsi
 8c3:	48 d1 fe             	sar    %rsi
 8c6:	74 18                	je     8e0 <register_tm_clones+0x40>
 8c8:	48 8b 05 21 17 20 00 	mov    0x201721(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8cf:	48 85 c0             	test   %rax,%rax
 8d2:	74 0c                	je     8e0 <register_tm_clones+0x40>
 8d4:	5d                   	pop    %rbp
 8d5:	ff e0                	jmpq   *%rax
 8d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8de:	00 00 
 8e0:	5d                   	pop    %rbp
 8e1:	c3                   	retq   
 8e2:	0f 1f 40 00          	nopl   0x0(%rax)
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 

00000000000008f0 <__do_global_dtors_aux>:
 8f0:	80 3d 19 17 20 00 00 	cmpb   $0x0,0x201719(%rip)        # 202010 <__TMC_END__>
 8f7:	75 2f                	jne    928 <__do_global_dtors_aux+0x38>
 8f9:	48 83 3d f7 16 20 00 	cmpq   $0x0,0x2016f7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 900:	00 
 901:	55                   	push   %rbp
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	74 0c                	je     913 <__do_global_dtors_aux+0x23>
 907:	48 8b 3d fa 16 20 00 	mov    0x2016fa(%rip),%rdi        # 202008 <__dso_handle>
 90e:	e8 7d fd ff ff       	callq  690 <__cxa_finalize@plt>
 913:	e8 48 ff ff ff       	callq  860 <deregister_tm_clones>
 918:	c6 05 f1 16 20 00 01 	movb   $0x1,0x2016f1(%rip)        # 202010 <__TMC_END__>
 91f:	5d                   	pop    %rbp
 920:	c3                   	retq   
 921:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 928:	f3 c3                	repz retq 
 92a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000930 <frame_dummy>:
 930:	55                   	push   %rbp
 931:	48 89 e5             	mov    %rsp,%rbp
 934:	5d                   	pop    %rbp
 935:	e9 66 ff ff ff       	jmpq   8a0 <register_tm_clones>
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <create>:
 940:	41 56                	push   %r14
 942:	41 55                	push   %r13
 944:	bf 18 00 00 00       	mov    $0x18,%edi
 949:	41 54                	push   %r12
 94b:	55                   	push   %rbp
 94c:	45 31 f6             	xor    %r14d,%r14d
 94f:	53                   	push   %rbx
 950:	4c 8d 2d dd 02 00 00 	lea    0x2dd(%rip),%r13        # c34 <_IO_stdin_used+0x4>
 957:	e8 f4 fc ff ff       	callq  650 <malloc@plt>
 95c:	48 8d 3d d1 02 00 00 	lea    0x2d1(%rip),%rdi        # c34 <_IO_stdin_used+0x4>
 963:	48 8d 50 08          	lea    0x8(%rax),%rdx
 967:	49 89 c4             	mov    %rax,%r12
 96a:	48 89 c6             	mov    %rax,%rsi
 96d:	31 c0                	xor    %eax,%eax
 96f:	4c 89 e5             	mov    %r12,%rbp
 972:	e8 f9 fc ff ff       	callq  670 <__isoc99_scanf@plt>
 977:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 97c:	75 31                	jne    9af <create+0x6f>
 97e:	eb 50                	jmp    9d0 <create+0x90>
 980:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 985:	bf 18 00 00 00       	mov    $0x18,%edi
 98a:	49 89 ec             	mov    %rbp,%r12
 98d:	e8 be fc ff ff       	callq  650 <malloc@plt>
 992:	48 8d 50 08          	lea    0x8(%rax),%rdx
 996:	48 89 c3             	mov    %rax,%rbx
 999:	48 89 c6             	mov    %rax,%rsi
 99c:	4c 89 ef             	mov    %r13,%rdi
 99f:	31 c0                	xor    %eax,%eax
 9a1:	e8 ca fc ff ff       	callq  670 <__isoc99_scanf@plt>
 9a6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 9aa:	74 24                	je     9d0 <create+0x90>
 9ac:	48 89 dd             	mov    %rbx,%rbp
 9af:	8b 05 5f 16 20 00    	mov    0x20165f(%rip),%eax        # 202014 <n>
 9b5:	83 c0 01             	add    $0x1,%eax
 9b8:	83 f8 01             	cmp    $0x1,%eax
 9bb:	89 05 53 16 20 00    	mov    %eax,0x201653(%rip)        # 202014 <n>
 9c1:	75 bd                	jne    980 <create+0x40>
 9c3:	49 89 ee             	mov    %rbp,%r14
 9c6:	eb bd                	jmp    985 <create+0x45>
 9c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 9cf:	00 
 9d0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 9d7:	00 
 9d8:	4c 89 f0             	mov    %r14,%rax
 9db:	5b                   	pop    %rbx
 9dc:	5d                   	pop    %rbp
 9dd:	41 5c                	pop    %r12
 9df:	41 5d                	pop    %r13
 9e1:	41 5e                	pop    %r14
 9e3:	c3                   	retq   
 9e4:	66 90                	xchg   %ax,%ax
 9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ed:	00 00 00 

00000000000009f0 <print>:
 9f0:	48 85 ff             	test   %rdi,%rdi
 9f3:	74 5b                	je     a50 <print+0x60>
 9f5:	55                   	push   %rbp
 9f6:	53                   	push   %rbx
 9f7:	48 8d 2d 52 02 00 00 	lea    0x252(%rip),%rbp        # c50 <_IO_stdin_used+0x20>
 9fe:	48 89 fb             	mov    %rdi,%rbx
 a01:	48 8d 3d 33 02 00 00 	lea    0x233(%rip),%rdi        # c3b <_IO_stdin_used+0xb>
 a08:	48 83 ec 08          	sub    $0x8,%rsp
 a0c:	e8 2f fc ff ff       	callq  640 <puts@plt>
 a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a18:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a1c:	48 8b 13             	mov    (%rbx),%rdx
 a1f:	48 89 ee             	mov    %rbp,%rsi
 a22:	bf 01 00 00 00       	mov    $0x1,%edi
 a27:	b8 01 00 00 00       	mov    $0x1,%eax
 a2c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a31:	e8 2a fc ff ff       	callq  660 <__printf_chk@plt>
 a36:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a3a:	48 85 db             	test   %rbx,%rbx
 a3d:	75 d9                	jne    a18 <print+0x28>
 a3f:	48 83 c4 08          	add    $0x8,%rsp
 a43:	5b                   	pop    %rbx
 a44:	5d                   	pop    %rbp
 a45:	c3                   	retq   
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 
 a50:	48 8d 3d 03 02 00 00 	lea    0x203(%rip),%rdi        # c5a <_IO_stdin_used+0x2a>
 a57:	e9 e4 fb ff ff       	jmpq   640 <puts@plt>
 a5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a60 <sort>:
 a60:	44 8b 0d ad 15 20 00 	mov    0x2015ad(%rip),%r9d        # 202014 <n>
 a67:	41 83 f9 01          	cmp    $0x1,%r9d
 a6b:	7e 3c                	jle    aa9 <sort+0x49>
 a6d:	41 83 e9 01          	sub    $0x1,%r9d
 a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a78:	48 89 f8             	mov    %rdi,%rax
 a7b:	31 f6                	xor    %esi,%esi
 a7d:	0f 1f 00             	nopl   (%rax)
 a80:	48 8b 50 10          	mov    0x10(%rax),%rdx
 a84:	48 8b 08             	mov    (%rax),%rcx
 a87:	4c 8b 02             	mov    (%rdx),%r8
 a8a:	4c 39 c1             	cmp    %r8,%rcx
 a8d:	7e 09                	jle    a98 <sort+0x38>
 a8f:	48 63 c9             	movslq %ecx,%rcx
 a92:	4c 89 00             	mov    %r8,(%rax)
 a95:	48 89 0a             	mov    %rcx,(%rdx)
 a98:	83 c6 01             	add    $0x1,%esi
 a9b:	48 89 d0             	mov    %rdx,%rax
 a9e:	44 39 ce             	cmp    %r9d,%esi
 aa1:	75 dd                	jne    a80 <sort+0x20>
 aa3:	41 83 e9 01          	sub    $0x1,%r9d
 aa7:	75 cf                	jne    a78 <sort+0x18>
 aa9:	f3 c3                	repz retq 
 aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ab0 <insert>:
 ab0:	48 85 ff             	test   %rdi,%rdi
 ab3:	74 5b                	je     b10 <insert+0x60>
 ab5:	48 8b 0e             	mov    (%rsi),%rcx
 ab8:	48 89 fa             	mov    %rdi,%rdx
 abb:	eb 12                	jmp    acf <insert+0x1f>
 abd:	0f 1f 00             	nopl   (%rax)
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
 ae7:	83 05 26 15 20 00 01 	addl   $0x1,0x201526(%rip)        # 202014 <n>
 aee:	c3                   	retq   
 aef:	90                   	nop
 af0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 af4:	48 89 f8             	mov    %rdi,%rax
 af7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 afe:	00 
 aff:	83 05 0e 15 20 00 01 	addl   $0x1,0x20150e(%rip)        # 202014 <n>
 b06:	c3                   	retq   
 b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b0e:	00 00 
 b10:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b17:	00 
 b18:	48 89 f0             	mov    %rsi,%rax
 b1b:	83 05 f2 14 20 00 01 	addl   $0x1,0x2014f2(%rip)        # 202014 <n>
 b22:	c3                   	retq   
 b23:	0f 1f 00             	nopl   (%rax)
 b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b2d:	00 00 00 

0000000000000b30 <delete>:
 b30:	55                   	push   %rbp
 b31:	53                   	push   %rbx
 b32:	48 89 fd             	mov    %rdi,%rbp
 b35:	48 89 f8             	mov    %rdi,%rax
 b38:	48 83 ec 08          	sub    $0x8,%rsp
 b3c:	48 85 ff             	test   %rdi,%rdi
 b3f:	75 12                	jne    b53 <delete+0x23>
 b41:	eb 55                	jmp    b98 <delete+0x68>
 b43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b48:	48 85 db             	test   %rbx,%rbx
 b4b:	48 89 c2             	mov    %rax,%rdx
 b4e:	74 30                	je     b80 <delete+0x50>
 b50:	48 89 d8             	mov    %rbx,%rax
 b53:	48 39 30             	cmp    %rsi,(%rax)
 b56:	48 8b 58 10          	mov    0x10(%rax),%rbx
 b5a:	75 ec                	jne    b48 <delete+0x18>
 b5c:	48 39 e8             	cmp    %rbp,%rax
 b5f:	74 07                	je     b68 <delete+0x38>
 b61:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
 b65:	48 89 eb             	mov    %rbp,%rbx
 b68:	83 2d a5 14 20 00 01 	subl   $0x1,0x2014a5(%rip)        # 202014 <n>
 b6f:	48 83 c4 08          	add    $0x8,%rsp
 b73:	48 89 d8             	mov    %rbx,%rax
 b76:	5b                   	pop    %rbx
 b77:	5d                   	pop    %rbp
 b78:	c3                   	retq   
 b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b80:	48 8d 3d 49 01 00 00 	lea    0x149(%rip),%rdi        # cd0 <_IO_stdin_used+0xa0>
 b87:	48 89 eb             	mov    %rbp,%rbx
 b8a:	e8 b1 fa ff ff       	callq  640 <puts@plt>
 b8f:	eb d7                	jmp    b68 <delete+0x38>
 b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b98:	48 8d 3d bb 00 00 00 	lea    0xbb(%rip),%rdi        # c5a <_IO_stdin_used+0x2a>
 b9f:	e8 9c fa ff ff       	callq  640 <puts@plt>
 ba4:	48 83 c4 08          	add    $0x8,%rsp
 ba8:	48 89 d8             	mov    %rbx,%rax
 bab:	5b                   	pop    %rbx
 bac:	5d                   	pop    %rbp
 bad:	c3                   	retq   
 bae:	66 90                	xchg   %ax,%ax

0000000000000bb0 <__libc_csu_init>:
 bb0:	41 57                	push   %r15
 bb2:	41 56                	push   %r14
 bb4:	49 89 d7             	mov    %rdx,%r15
 bb7:	41 55                	push   %r13
 bb9:	41 54                	push   %r12
 bbb:	4c 8d 25 d6 11 20 00 	lea    0x2011d6(%rip),%r12        # 201d98 <__frame_dummy_init_array_entry>
 bc2:	55                   	push   %rbp
 bc3:	48 8d 2d d6 11 20 00 	lea    0x2011d6(%rip),%rbp        # 201da0 <__init_array_end>
 bca:	53                   	push   %rbx
 bcb:	41 89 fd             	mov    %edi,%r13d
 bce:	49 89 f6             	mov    %rsi,%r14
 bd1:	4c 29 e5             	sub    %r12,%rbp
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 c1 fd 03          	sar    $0x3,%rbp
 bdc:	e8 2f fa ff ff       	callq  610 <_init>
 be1:	48 85 ed             	test   %rbp,%rbp
 be4:	74 20                	je     c06 <__libc_csu_init+0x56>
 be6:	31 db                	xor    %ebx,%ebx
 be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bef:	00 
 bf0:	4c 89 fa             	mov    %r15,%rdx
 bf3:	4c 89 f6             	mov    %r14,%rsi
 bf6:	44 89 ef             	mov    %r13d,%edi
 bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bfd:	48 83 c3 01          	add    $0x1,%rbx
 c01:	48 39 dd             	cmp    %rbx,%rbp
 c04:	75 ea                	jne    bf0 <__libc_csu_init+0x40>
 c06:	48 83 c4 08          	add    $0x8,%rsp
 c0a:	5b                   	pop    %rbx
 c0b:	5d                   	pop    %rbp
 c0c:	41 5c                	pop    %r12
 c0e:	41 5d                	pop    %r13
 c10:	41 5e                	pop    %r14
 c12:	41 5f                	pop    %r15
 c14:	c3                   	retq   
 c15:	90                   	nop
 c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c1d:	00 00 00 

0000000000000c20 <__libc_csu_fini>:
 c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c24 <_fini>:
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 83 c4 08          	add    $0x8,%rsp
 c2c:	c3                   	retq   
