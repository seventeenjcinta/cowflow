
input/19020031112_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000670 <_init>:
 670:	48 83 ec 08          	sub    $0x8,%rsp
 674:	48 8b 05 6d 19 20 00 	mov    0x20196d(%rip),%rax        # 201fe8 <__gmon_start__>
 67b:	48 85 c0             	test   %rax,%rax
 67e:	74 02                	je     682 <_init+0x12>
 680:	ff d0                	callq  *%rax
 682:	48 83 c4 08          	add    $0x8,%rsp
 686:	c3                   	retq   

Disassembly of section .plt:

0000000000000690 <.plt>:
 690:	ff 35 02 19 20 00    	pushq  0x201902(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 696:	ff 25 04 19 20 00    	jmpq   *0x201904(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 69c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006a0 <putchar@plt>:
 6a0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 6a6:	68 00 00 00 00       	pushq  $0x0
 6ab:	e9 e0 ff ff ff       	jmpq   690 <.plt>

00000000000006b0 <puts@plt>:
 6b0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6b6:	68 01 00 00 00       	pushq  $0x1
 6bb:	e9 d0 ff ff ff       	jmpq   690 <.plt>

00000000000006c0 <__stack_chk_fail@plt>:
 6c0:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6c6:	68 02 00 00 00       	pushq  $0x2
 6cb:	e9 c0 ff ff ff       	jmpq   690 <.plt>

00000000000006d0 <malloc@plt>:
 6d0:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6d6:	68 03 00 00 00       	pushq  $0x3
 6db:	e9 b0 ff ff ff       	jmpq   690 <.plt>

00000000000006e0 <__printf_chk@plt>:
 6e0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 6e6:	68 04 00 00 00       	pushq  $0x4
 6eb:	e9 a0 ff ff ff       	jmpq   690 <.plt>

00000000000006f0 <__isoc99_scanf@plt>:
 6f0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 6f6:	68 05 00 00 00       	pushq  $0x5
 6fb:	e9 90 ff ff ff       	jmpq   690 <.plt>

Disassembly of section .plt.got:

0000000000000700 <__cxa_finalize@plt>:
 700:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000710 <main>:
 710:	55                   	push   %rbp
 711:	53                   	push   %rbx
 712:	48 8d 3d e8 05 00 00 	lea    0x5e8(%rip),%rdi        # d01 <_IO_stdin_used+0x51>
 719:	48 8d 1d fc 05 00 00 	lea    0x5fc(%rip),%rbx        # d1c <_IO_stdin_used+0x6c>
 720:	48 83 ec 18          	sub    $0x18,%rsp
 724:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 72b:	00 00 
 72d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 732:	31 c0                	xor    %eax,%eax
 734:	e8 77 ff ff ff       	callq  6b0 <puts@plt>
 739:	31 c0                	xor    %eax,%eax
 73b:	48 8d 6c 24 04       	lea    0x4(%rsp),%rbp
 740:	e8 ab 01 00 00       	callq  8f0 <build>
 745:	48 8d 3d c7 05 00 00 	lea    0x5c7(%rip),%rdi        # d13 <_IO_stdin_used+0x63>
 74c:	e8 5f ff ff ff       	callq  6b0 <puts@plt>
 751:	31 c0                	xor    %eax,%eax
 753:	e8 38 04 00 00       	callq  b90 <print>
 758:	eb 10                	jmp    76a <main+0x5a>
 75a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 760:	83 f8 02             	cmp    $0x2,%eax
 763:	74 3e                	je     7a3 <main+0x93>
 765:	83 f8 03             	cmp    $0x3,%eax
 768:	74 50                	je     7ba <main+0xaa>
 76a:	48 89 df             	mov    %rbx,%rdi
 76d:	e8 3e ff ff ff       	callq  6b0 <puts@plt>
 772:	48 8d 3d 53 05 00 00 	lea    0x553(%rip),%rdi        # ccc <_IO_stdin_used+0x1c>
 779:	31 c0                	xor    %eax,%eax
 77b:	48 89 ee             	mov    %rbp,%rsi
 77e:	e8 6d ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 783:	8b 44 24 04          	mov    0x4(%rsp),%eax
 787:	83 f8 01             	cmp    $0x1,%eax
 78a:	75 d4                	jne    760 <main+0x50>
 78c:	31 c0                	xor    %eax,%eax
 78e:	e8 1d 02 00 00       	callq  9b0 <cha>
 793:	31 c0                	xor    %eax,%eax
 795:	e8 f6 03 00 00       	callq  b90 <print>
 79a:	8b 44 24 04          	mov    0x4(%rsp),%eax
 79e:	83 f8 02             	cmp    $0x2,%eax
 7a1:	75 c2                	jne    765 <main+0x55>
 7a3:	31 c0                	xor    %eax,%eax
 7a5:	e8 f6 02 00 00       	callq  aa0 <discard>
 7aa:	31 c0                	xor    %eax,%eax
 7ac:	e8 df 03 00 00       	callq  b90 <print>
 7b1:	8b 44 24 04          	mov    0x4(%rsp),%eax
 7b5:	83 f8 03             	cmp    $0x3,%eax
 7b8:	75 b0                	jne    76a <main+0x5a>
 7ba:	31 c0                	xor    %eax,%eax
 7bc:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 7c1:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 7c8:	00 00 
 7ca:	75 07                	jne    7d3 <main+0xc3>
 7cc:	48 83 c4 18          	add    $0x18,%rsp
 7d0:	5b                   	pop    %rbx
 7d1:	5d                   	pop    %rbp
 7d2:	c3                   	retq   
 7d3:	e8 e8 fe ff ff       	callq  6c0 <__stack_chk_fail@plt>
 7d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 7df:	00 

00000000000007e0 <_start>:
 7e0:	31 ed                	xor    %ebp,%ebp
 7e2:	49 89 d1             	mov    %rdx,%r9
 7e5:	5e                   	pop    %rsi
 7e6:	48 89 e2             	mov    %rsp,%rdx
 7e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7ed:	50                   	push   %rax
 7ee:	54                   	push   %rsp
 7ef:	4c 8d 05 aa 04 00 00 	lea    0x4aa(%rip),%r8        # ca0 <__libc_csu_fini>
 7f6:	48 8d 0d 33 04 00 00 	lea    0x433(%rip),%rcx        # c30 <__libc_csu_init>
 7fd:	48 8d 3d 0c ff ff ff 	lea    -0xf4(%rip),%rdi        # 710 <main>
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
 8be:	e8 3d fe ff ff       	callq  700 <__cxa_finalize@plt>
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

00000000000008f0 <build>:
 8f0:	53                   	push   %rbx
 8f1:	bf 10 00 00 00       	mov    $0x10,%edi
 8f6:	e8 d5 fd ff ff       	callq  6d0 <malloc@plt>
 8fb:	48 8d 3d b2 03 00 00 	lea    0x3b2(%rip),%rdi        # cb4 <_IO_stdin_used+0x4>
 902:	48 8d 50 04          	lea    0x4(%rax),%rdx
 906:	48 89 05 1b 17 20 00 	mov    %rax,0x20171b(%rip)        # 202028 <p2>
 90d:	48 89 05 24 17 20 00 	mov    %rax,0x201724(%rip)        # 202038 <p1>
 914:	48 89 c6             	mov    %rax,%rsi
 917:	31 c0                	xor    %eax,%eax
 919:	e8 d2 fd ff ff       	callq  6f0 <__isoc99_scanf@plt>
 91e:	48 8b 15 13 17 20 00 	mov    0x201713(%rip),%rdx        # 202038 <p1>
 925:	8b 0a                	mov    (%rdx),%ecx
 927:	85 c9                	test   %ecx,%ecx
 929:	74 75                	je     9a0 <build+0xb0>
 92b:	48 8d 1d 82 03 00 00 	lea    0x382(%rip),%rbx        # cb4 <_IO_stdin_used+0x4>
 932:	eb 45                	jmp    979 <build+0x89>
 934:	0f 1f 40 00          	nopl   0x0(%rax)
 938:	48 8b 05 e9 16 20 00 	mov    0x2016e9(%rip),%rax        # 202028 <p2>
 93f:	48 89 50 08          	mov    %rdx,0x8(%rax)
 943:	bf 10 00 00 00       	mov    $0x10,%edi
 948:	48 89 15 d9 16 20 00 	mov    %rdx,0x2016d9(%rip)        # 202028 <p2>
 94f:	e8 7c fd ff ff       	callq  6d0 <malloc@plt>
 954:	48 8d 50 04          	lea    0x4(%rax),%rdx
 958:	48 89 05 d9 16 20 00 	mov    %rax,0x2016d9(%rip)        # 202038 <p1>
 95f:	48 89 c6             	mov    %rax,%rsi
 962:	48 89 df             	mov    %rbx,%rdi
 965:	31 c0                	xor    %eax,%eax
 967:	e8 84 fd ff ff       	callq  6f0 <__isoc99_scanf@plt>
 96c:	48 8b 15 c5 16 20 00 	mov    0x2016c5(%rip),%rdx        # 202038 <p1>
 973:	8b 02                	mov    (%rdx),%eax
 975:	85 c0                	test   %eax,%eax
 977:	74 27                	je     9a0 <build+0xb0>
 979:	8b 05 a1 16 20 00    	mov    0x2016a1(%rip),%eax        # 202020 <n>
 97f:	83 c0 01             	add    $0x1,%eax
 982:	83 f8 01             	cmp    $0x1,%eax
 985:	89 05 95 16 20 00    	mov    %eax,0x201695(%rip)        # 202020 <n>
 98b:	75 ab                	jne    938 <build+0x48>
 98d:	48 89 15 84 16 20 00 	mov    %rdx,0x201684(%rip)        # 202018 <head>
 994:	eb ad                	jmp    943 <build+0x53>
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 
 9a0:	5b                   	pop    %rbx
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <cha>:
 9b0:	48 83 ec 08          	sub    $0x8,%rsp
 9b4:	48 8b 05 5d 16 20 00 	mov    0x20165d(%rip),%rax        # 202018 <head>
 9bb:	bf 10 00 00 00       	mov    $0x10,%edi
 9c0:	48 89 05 79 16 20 00 	mov    %rax,0x201679(%rip)        # 202040 <p3>
 9c7:	e8 04 fd ff ff       	callq  6d0 <malloc@plt>
 9cc:	48 8d 3d e1 02 00 00 	lea    0x2e1(%rip),%rdi        # cb4 <_IO_stdin_used+0x4>
 9d3:	48 8d 50 04          	lea    0x4(%rax),%rdx
 9d7:	48 89 c6             	mov    %rax,%rsi
 9da:	48 89 05 4f 16 20 00 	mov    %rax,0x20164f(%rip)        # 202030 <p4>
 9e1:	31 c0                	xor    %eax,%eax
 9e3:	e8 08 fd ff ff       	callq  6f0 <__isoc99_scanf@plt>
 9e8:	48 8b 3d 41 16 20 00 	mov    0x201641(%rip),%rdi        # 202030 <p4>
 9ef:	48 8b 0d 4a 16 20 00 	mov    0x20164a(%rip),%rcx        # 202040 <p3>
 9f6:	8b 37                	mov    (%rdi),%esi
 9f8:	3b 31                	cmp    (%rcx),%esi
 9fa:	0f 8e 90 00 00 00    	jle    a90 <cha+0xe0>
 a00:	48 8b 41 08          	mov    0x8(%rcx),%rax
 a04:	48 85 c0             	test   %rax,%rax
 a07:	75 16                	jne    a1f <cha+0x6f>
 a09:	e9 8a 00 00 00       	jmpq   a98 <cha+0xe8>
 a0e:	66 90                	xchg   %ax,%ax
 a10:	48 8b 50 08          	mov    0x8(%rax),%rdx
 a14:	48 85 d2             	test   %rdx,%rdx
 a17:	74 3f                	je     a58 <cha+0xa8>
 a19:	48 89 c1             	mov    %rax,%rcx
 a1c:	48 89 d0             	mov    %rdx,%rax
 a1f:	39 30                	cmp    %esi,(%rax)
 a21:	7c ed                	jl     a10 <cha+0x60>
 a23:	48 89 0d 1e 16 20 00 	mov    %rcx,0x20161e(%rip)        # 202048 <p5>
 a2a:	48 89 05 0f 16 20 00 	mov    %rax,0x20160f(%rip)        # 202040 <p3>
 a31:	48 3b 05 e0 15 20 00 	cmp    0x2015e0(%rip),%rax        # 202018 <head>
 a38:	74 46                	je     a80 <cha+0xd0>
 a3a:	48 8b 15 07 16 20 00 	mov    0x201607(%rip),%rdx        # 202048 <p5>
 a41:	48 89 7a 08          	mov    %rdi,0x8(%rdx)
 a45:	48 89 47 08          	mov    %rax,0x8(%rdi)
 a49:	83 05 d0 15 20 00 01 	addl   $0x1,0x2015d0(%rip)        # 202020 <n>
 a50:	48 83 c4 08          	add    $0x8,%rsp
 a54:	c3                   	retq   
 a55:	0f 1f 00             	nopl   (%rax)
 a58:	48 89 0d e9 15 20 00 	mov    %rcx,0x2015e9(%rip)        # 202048 <p5>
 a5f:	48 89 05 da 15 20 00 	mov    %rax,0x2015da(%rip)        # 202040 <p3>
 a66:	48 89 78 08          	mov    %rdi,0x8(%rax)
 a6a:	83 05 af 15 20 00 01 	addl   $0x1,0x2015af(%rip)        # 202020 <n>
 a71:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
 a78:	00 
 a79:	48 83 c4 08          	add    $0x8,%rsp
 a7d:	c3                   	retq   
 a7e:	66 90                	xchg   %ax,%ax
 a80:	48 89 3d 91 15 20 00 	mov    %rdi,0x201591(%rip)        # 202018 <head>
 a87:	eb bc                	jmp    a45 <cha+0x95>
 a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a90:	48 89 c8             	mov    %rcx,%rax
 a93:	eb 9c                	jmp    a31 <cha+0x81>
 a95:	0f 1f 00             	nopl   (%rax)
 a98:	48 89 c8             	mov    %rcx,%rax
 a9b:	eb c9                	jmp    a66 <cha+0xb6>
 a9d:	0f 1f 00             	nopl   (%rax)

0000000000000aa0 <discard>:
 aa0:	48 8d 3d 12 02 00 00 	lea    0x212(%rip),%rdi        # cb9 <_IO_stdin_used+0x9>
 aa7:	48 83 ec 18          	sub    $0x18,%rsp
 aab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 ab2:	00 00 
 ab4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 ab9:	31 c0                	xor    %eax,%eax
 abb:	e8 f0 fb ff ff       	callq  6b0 <puts@plt>
 ac0:	48 8d 3d 05 02 00 00 	lea    0x205(%rip),%rdi        # ccc <_IO_stdin_used+0x1c>
 ac7:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
 acc:	31 c0                	xor    %eax,%eax
 ace:	e8 1d fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 ad3:	48 8b 3d 3e 15 20 00 	mov    0x20153e(%rip),%rdi        # 202018 <head>
 ada:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
 ade:	3b 0f                	cmp    (%rdi),%ecx
 ae0:	48 89 3d 49 15 20 00 	mov    %rdi,0x201549(%rip)        # 202030 <p4>
 ae7:	48 89 3d 52 15 20 00 	mov    %rdi,0x201552(%rip)        # 202040 <p3>
 aee:	0f 84 7c 00 00 00    	je     b70 <discard+0xd0>
 af4:	48 8b 47 08          	mov    0x8(%rdi),%rax
 af8:	48 85 c0             	test   %rax,%rax
 afb:	74 63                	je     b60 <discard+0xc0>
 afd:	48 89 fe             	mov    %rdi,%rsi
 b00:	eb 11                	jmp    b13 <discard+0x73>
 b02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b08:	48 85 d2             	test   %rdx,%rdx
 b0b:	74 41                	je     b4e <discard+0xae>
 b0d:	48 89 c6             	mov    %rax,%rsi
 b10:	48 89 d0             	mov    %rdx,%rax
 b13:	39 08                	cmp    %ecx,(%rax)
 b15:	48 8b 50 08          	mov    0x8(%rax),%rdx
 b19:	75 ed                	jne    b08 <discard+0x68>
 b1b:	48 39 c7             	cmp    %rax,%rdi
 b1e:	48 89 35 0b 15 20 00 	mov    %rsi,0x20150b(%rip)        # 202030 <p4>
 b25:	48 89 05 14 15 20 00 	mov    %rax,0x201514(%rip)        # 202040 <p3>
 b2c:	74 46                	je     b74 <discard+0xd4>
 b2e:	48 89 56 08          	mov    %rdx,0x8(%rsi)
 b32:	83 2d e7 14 20 00 01 	subl   $0x1,0x2014e7(%rip)        # 202020 <n>
 b39:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b3e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 b45:	00 00 
 b47:	75 34                	jne    b7d <discard+0xdd>
 b49:	48 83 c4 18          	add    $0x18,%rsp
 b4d:	c3                   	retq   
 b4e:	48 89 35 db 14 20 00 	mov    %rsi,0x2014db(%rip)        # 202030 <p4>
 b55:	48 89 05 e4 14 20 00 	mov    %rax,0x2014e4(%rip)        # 202040 <p3>
 b5c:	0f 1f 40 00          	nopl   0x0(%rax)
 b60:	48 8d 3d 68 01 00 00 	lea    0x168(%rip),%rdi        # ccf <_IO_stdin_used+0x1f>
 b67:	e8 44 fb ff ff       	callq  6b0 <puts@plt>
 b6c:	eb cb                	jmp    b39 <discard+0x99>
 b6e:	66 90                	xchg   %ax,%ax
 b70:	48 8b 57 08          	mov    0x8(%rdi),%rdx
 b74:	48 89 15 9d 14 20 00 	mov    %rdx,0x20149d(%rip)        # 202018 <head>
 b7b:	eb b5                	jmp    b32 <discard+0x92>
 b7d:	e8 3e fb ff ff       	callq  6c0 <__stack_chk_fail@plt>
 b82:	0f 1f 40 00          	nopl   0x0(%rax)
 b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8d:	00 00 00 

0000000000000b90 <print>:
 b90:	8b 15 8a 14 20 00    	mov    0x20148a(%rip),%edx        # 202020 <n>
 b96:	53                   	push   %rbx
 b97:	85 d2                	test   %edx,%edx
 b99:	74 75                	je     c10 <print+0x80>
 b9b:	48 8d 35 3f 01 00 00 	lea    0x13f(%rip),%rsi        # ce1 <_IO_stdin_used+0x31>
 ba2:	bf 01 00 00 00       	mov    $0x1,%edi
 ba7:	31 c0                	xor    %eax,%eax
 ba9:	48 8d 1d 48 01 00 00 	lea    0x148(%rip),%rbx        # cf8 <_IO_stdin_used+0x48>
 bb0:	e8 2b fb ff ff       	callq  6e0 <__printf_chk@plt>
 bb5:	48 8b 05 5c 14 20 00 	mov    0x20145c(%rip),%rax        # 202018 <head>
 bbc:	48 89 05 7d 14 20 00 	mov    %rax,0x20147d(%rip)        # 202040 <p3>
 bc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bc8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bcc:	8b 10                	mov    (%rax),%edx
 bce:	48 89 de             	mov    %rbx,%rsi
 bd1:	bf 01 00 00 00       	mov    $0x1,%edi
 bd6:	f3 0f 5a 40 04       	cvtss2sd 0x4(%rax),%xmm0
 bdb:	b8 01 00 00 00       	mov    $0x1,%eax
 be0:	e8 fb fa ff ff       	callq  6e0 <__printf_chk@plt>
 be5:	48 8b 05 54 14 20 00 	mov    0x201454(%rip),%rax        # 202040 <p3>
 bec:	48 8b 40 08          	mov    0x8(%rax),%rax
 bf0:	48 85 c0             	test   %rax,%rax
 bf3:	48 89 05 46 14 20 00 	mov    %rax,0x201446(%rip)        # 202040 <p3>
 bfa:	75 cc                	jne    bc8 <print+0x38>
 bfc:	5b                   	pop    %rbx
 bfd:	bf 0a 00 00 00       	mov    $0xa,%edi
 c02:	e9 99 fa ff ff       	jmpq   6a0 <putchar@plt>
 c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c0e:	00 00 
 c10:	48 8d 3d c3 00 00 00 	lea    0xc3(%rip),%rdi        # cda <_IO_stdin_used+0x2a>
 c17:	e8 94 fa ff ff       	callq  6b0 <puts@plt>
 c1c:	5b                   	pop    %rbx
 c1d:	bf 0a 00 00 00       	mov    $0xa,%edi
 c22:	e9 79 fa ff ff       	jmpq   6a0 <putchar@plt>
 c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c2e:	00 00 

0000000000000c30 <__libc_csu_init>:
 c30:	41 57                	push   %r15
 c32:	41 56                	push   %r14
 c34:	49 89 d7             	mov    %rdx,%r15
 c37:	41 55                	push   %r13
 c39:	41 54                	push   %r12
 c3b:	4c 8d 25 4e 11 20 00 	lea    0x20114e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c42:	55                   	push   %rbp
 c43:	48 8d 2d 4e 11 20 00 	lea    0x20114e(%rip),%rbp        # 201d98 <__init_array_end>
 c4a:	53                   	push   %rbx
 c4b:	41 89 fd             	mov    %edi,%r13d
 c4e:	49 89 f6             	mov    %rsi,%r14
 c51:	4c 29 e5             	sub    %r12,%rbp
 c54:	48 83 ec 08          	sub    $0x8,%rsp
 c58:	48 c1 fd 03          	sar    $0x3,%rbp
 c5c:	e8 0f fa ff ff       	callq  670 <_init>
 c61:	48 85 ed             	test   %rbp,%rbp
 c64:	74 20                	je     c86 <__libc_csu_init+0x56>
 c66:	31 db                	xor    %ebx,%ebx
 c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c6f:	00 
 c70:	4c 89 fa             	mov    %r15,%rdx
 c73:	4c 89 f6             	mov    %r14,%rsi
 c76:	44 89 ef             	mov    %r13d,%edi
 c79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c7d:	48 83 c3 01          	add    $0x1,%rbx
 c81:	48 39 dd             	cmp    %rbx,%rbp
 c84:	75 ea                	jne    c70 <__libc_csu_init+0x40>
 c86:	48 83 c4 08          	add    $0x8,%rsp
 c8a:	5b                   	pop    %rbx
 c8b:	5d                   	pop    %rbp
 c8c:	41 5c                	pop    %r12
 c8e:	41 5d                	pop    %r13
 c90:	41 5e                	pop    %r14
 c92:	41 5f                	pop    %r15
 c94:	c3                   	retq   
 c95:	90                   	nop
 c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c9d:	00 00 00 

0000000000000ca0 <__libc_csu_fini>:
 ca0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ca4 <_fini>:
 ca4:	48 83 ec 08          	sub    $0x8,%rsp
 ca8:	48 83 c4 08          	add    $0x8,%rsp
 cac:	c3                   	retq   
