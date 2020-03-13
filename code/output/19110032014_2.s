
input/19110032014_2.elf:     file format elf64-x86-64


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

00000000000006a0 <free@plt>:
 6a0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 6a6:	68 00 00 00 00       	pushq  $0x0
 6ab:	e9 e0 ff ff ff       	jmpq   690 <.plt>

00000000000006b0 <puts@plt>:
 6b0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6b6:	68 01 00 00 00       	pushq  $0x1
 6bb:	e9 d0 ff ff ff       	jmpq   690 <.plt>

00000000000006c0 <malloc@plt>:
 6c0:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 6c6:	68 02 00 00 00       	pushq  $0x2
 6cb:	e9 c0 ff ff ff       	jmpq   690 <.plt>

00000000000006d0 <__printf_chk@plt>:
 6d0:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 6d6:	68 03 00 00 00       	pushq  $0x3
 6db:	e9 b0 ff ff ff       	jmpq   690 <.plt>

00000000000006e0 <__isoc99_scanf@plt>:
 6e0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 6e6:	68 04 00 00 00       	pushq  $0x4
 6eb:	e9 a0 ff ff ff       	jmpq   690 <.plt>

00000000000006f0 <exit@plt>:
 6f0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 6f6:	68 05 00 00 00       	pushq  $0x5
 6fb:	e9 90 ff ff ff       	jmpq   690 <.plt>

Disassembly of section .plt.got:

0000000000000700 <__cxa_finalize@plt>:
 700:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000710 <main>:
 710:	41 57                	push   %r15
 712:	41 56                	push   %r14
 714:	bf 28 00 00 00       	mov    $0x28,%edi
 719:	41 55                	push   %r13
 71b:	41 54                	push   %r12
 71d:	55                   	push   %rbp
 71e:	53                   	push   %rbx
 71f:	48 83 ec 38          	sub    $0x38,%rsp
 723:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 72a:	00 00 
 72c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 731:	31 c0                	xor    %eax,%eax
 733:	e8 88 ff ff ff       	callq  6c0 <malloc@plt>
 738:	48 89 c3             	mov    %rax,%rbx
 73b:	e8 50 03 00 00       	callq  a90 <creat>
 740:	48 89 c7             	mov    %rax,%rdi
 743:	e8 48 05 00 00       	callq  c90 <sort>
 748:	48 89 c7             	mov    %rax,%rdi
 74b:	48 89 c5             	mov    %rax,%rbp
 74e:	e8 ed 02 00 00       	callq  a40 <print>
 753:	48 8d 35 86 06 00 00 	lea    0x686(%rip),%rsi        # de0 <_IO_stdin_used+0x40>
 75a:	bf 01 00 00 00       	mov    $0x1,%edi
 75f:	31 c0                	xor    %eax,%eax
 761:	e8 6a ff ff ff       	callq  6d0 <__printf_chk@plt>
 766:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 76a:	48 8d 3d 60 06 00 00 	lea    0x660(%rip),%rdi        # dd1 <_IO_stdin_used+0x31>
 771:	31 c0                	xor    %eax,%eax
 773:	48 89 de             	mov    %rbx,%rsi
 776:	e8 65 ff ff ff       	callq  6e0 <__isoc99_scanf@plt>
 77b:	48 85 ed             	test   %rbp,%rbp
 77e:	0f 84 6d 01 00 00    	je     8f1 <main+0x1e1>
 784:	48 8b 0b             	mov    (%rbx),%rcx
 787:	48 89 e8             	mov    %rbp,%rax
 78a:	eb 17                	jmp    7a3 <main+0x93>
 78c:	0f 1f 40 00          	nopl   0x0(%rax)
 790:	48 8b 50 20          	mov    0x20(%rax),%rdx
 794:	49 89 c4             	mov    %rax,%r12
 797:	48 85 d2             	test   %rdx,%rdx
 79a:	0f 84 3d 01 00 00    	je     8dd <main+0x1cd>
 7a0:	48 89 d0             	mov    %rdx,%rax
 7a3:	48 3b 08             	cmp    (%rax),%rcx
 7a6:	7f e8                	jg     790 <main+0x80>
 7a8:	0f 8d 2f 01 00 00    	jge    8dd <main+0x1cd>
 7ae:	48 39 c5             	cmp    %rax,%rbp
 7b1:	0f 84 64 01 00 00    	je     91b <main+0x20b>
 7b7:	49 89 5c 24 20       	mov    %rbx,0x20(%r12)
 7bc:	48 89 43 20          	mov    %rax,0x20(%rbx)
 7c0:	48 89 eb             	mov    %rbp,%rbx
 7c3:	48 89 df             	mov    %rbx,%rdi
 7c6:	4c 8d 6c 24 1c       	lea    0x1c(%rsp),%r13
 7cb:	4c 8d 25 46 06 00 00 	lea    0x646(%rip),%r12        # e18 <_IO_stdin_used+0x78>
 7d2:	e8 69 02 00 00       	callq  a40 <print>
 7d7:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 7dc:	48 8d 2d 14 06 00 00 	lea    0x614(%rip),%rbp        # df7 <_IO_stdin_used+0x57>
 7e3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 7e8:	4c 89 e6             	mov    %r12,%rsi
 7eb:	bf 01 00 00 00       	mov    $0x1,%edi
 7f0:	31 c0                	xor    %eax,%eax
 7f2:	e8 d9 fe ff ff       	callq  6d0 <__printf_chk@plt>
 7f7:	31 c0                	xor    %eax,%eax
 7f9:	4c 89 ee             	mov    %r13,%rsi
 7fc:	48 89 ef             	mov    %rbp,%rdi
 7ff:	e8 dc fe ff ff       	callq  6e0 <__isoc99_scanf@plt>
 804:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 808:	83 f8 01             	cmp    $0x1,%eax
 80b:	74 53                	je     860 <main+0x150>
 80d:	83 f8 02             	cmp    $0x2,%eax
 810:	74 0e                	je     820 <main+0x110>
 812:	85 c0                	test   %eax,%eax
 814:	75 d2                	jne    7e8 <main+0xd8>
 816:	31 ff                	xor    %edi,%edi
 818:	e8 d3 fe ff ff       	callq  6f0 <exit@plt>
 81d:	0f 1f 00             	nopl   (%rax)
 820:	48 8d 35 d3 05 00 00 	lea    0x5d3(%rip),%rsi        # dfa <_IO_stdin_used+0x5a>
 827:	bf 01 00 00 00       	mov    $0x1,%edi
 82c:	31 c0                	xor    %eax,%eax
 82e:	e8 9d fe ff ff       	callq  6d0 <__printf_chk@plt>
 833:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 838:	48 8d 3d d2 05 00 00 	lea    0x5d2(%rip),%rdi        # e11 <_IO_stdin_used+0x71>
 83f:	31 c0                	xor    %eax,%eax
 841:	e8 9a fe ff ff       	callq  6e0 <__isoc99_scanf@plt>
 846:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 84b:	48 89 df             	mov    %rbx,%rdi
 84e:	e8 cd 03 00 00       	callq  c20 <del>
 853:	48 89 c3             	mov    %rax,%rbx
 856:	48 89 df             	mov    %rbx,%rdi
 859:	e8 e2 01 00 00       	callq  a40 <print>
 85e:	eb 88                	jmp    7e8 <main+0xd8>
 860:	bf 28 00 00 00       	mov    $0x28,%edi
 865:	e8 56 fe ff ff       	callq  6c0 <malloc@plt>
 86a:	48 8d 35 4b 05 00 00 	lea    0x54b(%rip),%rsi        # dbc <_IO_stdin_used+0x1c>
 871:	49 89 c7             	mov    %rax,%r15
 874:	bf 01 00 00 00       	mov    $0x1,%edi
 879:	31 c0                	xor    %eax,%eax
 87b:	e8 50 fe ff ff       	callq  6d0 <__printf_chk@plt>
 880:	49 8d 57 08          	lea    0x8(%r15),%rdx
 884:	48 8d 3d 46 05 00 00 	lea    0x546(%rip),%rdi        # dd1 <_IO_stdin_used+0x31>
 88b:	31 c0                	xor    %eax,%eax
 88d:	4c 89 fe             	mov    %r15,%rsi
 890:	e8 4b fe ff ff       	callq  6e0 <__isoc99_scanf@plt>
 895:	48 85 db             	test   %rbx,%rbx
 898:	74 33                	je     8cd <main+0x1bd>
 89a:	49 8b 37             	mov    (%r15),%rsi
 89d:	48 89 d8             	mov    %rbx,%rax
 8a0:	eb 15                	jmp    8b7 <main+0x1a7>
 8a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 8a8:	48 8b 50 20          	mov    0x20(%rax),%rdx
 8ac:	49 89 c6             	mov    %rax,%r14
 8af:	48 85 d2             	test   %rdx,%rdx
 8b2:	74 4a                	je     8fe <main+0x1ee>
 8b4:	48 89 d0             	mov    %rdx,%rax
 8b7:	48 3b 30             	cmp    (%rax),%rsi
 8ba:	7f ec                	jg     8a8 <main+0x198>
 8bc:	7d 40                	jge    8fe <main+0x1ee>
 8be:	48 39 c3             	cmp    %rax,%rbx
 8c1:	74 4c                	je     90f <main+0x1ff>
 8c3:	4d 89 7e 20          	mov    %r15,0x20(%r14)
 8c7:	49 89 47 20          	mov    %rax,0x20(%r15)
 8cb:	eb 89                	jmp    856 <main+0x146>
 8cd:	49 c7 47 20 00 00 00 	movq   $0x0,0x20(%r15)
 8d4:	00 
 8d5:	4c 89 fb             	mov    %r15,%rbx
 8d8:	e9 79 ff ff ff       	jmpq   856 <main+0x146>
 8dd:	48 89 58 20          	mov    %rbx,0x20(%rax)
 8e1:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
 8e8:	00 
 8e9:	48 89 eb             	mov    %rbp,%rbx
 8ec:	e9 d2 fe ff ff       	jmpq   7c3 <main+0xb3>
 8f1:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
 8f8:	00 
 8f9:	e9 c5 fe ff ff       	jmpq   7c3 <main+0xb3>
 8fe:	4c 89 78 20          	mov    %r15,0x20(%rax)
 902:	49 c7 47 20 00 00 00 	movq   $0x0,0x20(%r15)
 909:	00 
 90a:	e9 47 ff ff ff       	jmpq   856 <main+0x146>
 90f:	49 89 5f 20          	mov    %rbx,0x20(%r15)
 913:	4c 89 fb             	mov    %r15,%rbx
 916:	e9 3b ff ff ff       	jmpq   856 <main+0x146>
 91b:	48 89 6b 20          	mov    %rbp,0x20(%rbx)
 91f:	e9 9f fe ff ff       	jmpq   7c3 <main+0xb3>
 924:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92b:	00 00 00 
 92e:	66 90                	xchg   %ax,%ax

0000000000000930 <_start>:
 930:	31 ed                	xor    %ebp,%ebp
 932:	49 89 d1             	mov    %rdx,%r9
 935:	5e                   	pop    %rsi
 936:	48 89 e2             	mov    %rsp,%rdx
 939:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 93d:	50                   	push   %rax
 93e:	54                   	push   %rsp
 93f:	4c 8d 05 4a 04 00 00 	lea    0x44a(%rip),%r8        # d90 <__libc_csu_fini>
 946:	48 8d 0d d3 03 00 00 	lea    0x3d3(%rip),%rcx        # d20 <__libc_csu_init>
 94d:	48 8d 3d bc fd ff ff 	lea    -0x244(%rip),%rdi        # 710 <main>
 954:	ff 15 86 16 20 00    	callq  *0x201686(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 95a:	f4                   	hlt    
 95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <deregister_tm_clones>:
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <__TMC_END__>
 967:	55                   	push   %rbp
 968:	48 8d 05 a1 16 20 00 	lea    0x2016a1(%rip),%rax        # 202010 <__TMC_END__>
 96f:	48 39 f8             	cmp    %rdi,%rax
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	74 19                	je     990 <deregister_tm_clones+0x30>
 977:	48 8b 05 5a 16 20 00 	mov    0x20165a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 97e:	48 85 c0             	test   %rax,%rax
 981:	74 0d                	je     990 <deregister_tm_clones+0x30>
 983:	5d                   	pop    %rbp
 984:	ff e0                	jmpq   *%rax
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 
 990:	5d                   	pop    %rbp
 991:	c3                   	retq   
 992:	0f 1f 40 00          	nopl   0x0(%rax)
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 

00000000000009a0 <register_tm_clones>:
 9a0:	48 8d 3d 69 16 20 00 	lea    0x201669(%rip),%rdi        # 202010 <__TMC_END__>
 9a7:	48 8d 35 62 16 20 00 	lea    0x201662(%rip),%rsi        # 202010 <__TMC_END__>
 9ae:	55                   	push   %rbp
 9af:	48 29 fe             	sub    %rdi,%rsi
 9b2:	48 89 e5             	mov    %rsp,%rbp
 9b5:	48 c1 fe 03          	sar    $0x3,%rsi
 9b9:	48 89 f0             	mov    %rsi,%rax
 9bc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9c0:	48 01 c6             	add    %rax,%rsi
 9c3:	48 d1 fe             	sar    %rsi
 9c6:	74 18                	je     9e0 <register_tm_clones+0x40>
 9c8:	48 8b 05 21 16 20 00 	mov    0x201621(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9cf:	48 85 c0             	test   %rax,%rax
 9d2:	74 0c                	je     9e0 <register_tm_clones+0x40>
 9d4:	5d                   	pop    %rbp
 9d5:	ff e0                	jmpq   *%rax
 9d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9de:	00 00 
 9e0:	5d                   	pop    %rbp
 9e1:	c3                   	retq   
 9e2:	0f 1f 40 00          	nopl   0x0(%rax)
 9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ed:	00 00 00 

00000000000009f0 <__do_global_dtors_aux>:
 9f0:	80 3d 19 16 20 00 00 	cmpb   $0x0,0x201619(%rip)        # 202010 <__TMC_END__>
 9f7:	75 2f                	jne    a28 <__do_global_dtors_aux+0x38>
 9f9:	48 83 3d f7 15 20 00 	cmpq   $0x0,0x2015f7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a00:	00 
 a01:	55                   	push   %rbp
 a02:	48 89 e5             	mov    %rsp,%rbp
 a05:	74 0c                	je     a13 <__do_global_dtors_aux+0x23>
 a07:	48 8b 3d fa 15 20 00 	mov    0x2015fa(%rip),%rdi        # 202008 <__dso_handle>
 a0e:	e8 ed fc ff ff       	callq  700 <__cxa_finalize@plt>
 a13:	e8 48 ff ff ff       	callq  960 <deregister_tm_clones>
 a18:	c6 05 f1 15 20 00 01 	movb   $0x1,0x2015f1(%rip)        # 202010 <__TMC_END__>
 a1f:	5d                   	pop    %rbp
 a20:	c3                   	retq   
 a21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a28:	f3 c3                	repz retq 
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a30 <frame_dummy>:
 a30:	55                   	push   %rbp
 a31:	48 89 e5             	mov    %rsp,%rbp
 a34:	5d                   	pop    %rbp
 a35:	e9 66 ff ff ff       	jmpq   9a0 <register_tm_clones>
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a40 <print>:
 a40:	55                   	push   %rbp
 a41:	53                   	push   %rbx
 a42:	48 89 fb             	mov    %rdi,%rbx
 a45:	48 8d 3d 58 03 00 00 	lea    0x358(%rip),%rdi        # da4 <_IO_stdin_used+0x4>
 a4c:	48 83 ec 08          	sub    $0x8,%rsp
 a50:	e8 5b fc ff ff       	callq  6b0 <puts@plt>
 a55:	48 85 db             	test   %rbx,%rbx
 a58:	74 2d                	je     a87 <print+0x47>
 a5a:	48 8d 2d 53 03 00 00 	lea    0x353(%rip),%rbp        # db4 <_IO_stdin_used+0x14>
 a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a68:	48 8b 13             	mov    (%rbx),%rdx
 a6b:	48 8d 4b 08          	lea    0x8(%rbx),%rcx
 a6f:	31 c0                	xor    %eax,%eax
 a71:	48 89 ee             	mov    %rbp,%rsi
 a74:	bf 01 00 00 00       	mov    $0x1,%edi
 a79:	e8 52 fc ff ff       	callq  6d0 <__printf_chk@plt>
 a7e:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
 a82:	48 85 db             	test   %rbx,%rbx
 a85:	75 e1                	jne    a68 <print+0x28>
 a87:	48 83 c4 08          	add    $0x8,%rsp
 a8b:	5b                   	pop    %rbx
 a8c:	5d                   	pop    %rbp
 a8d:	c3                   	retq   
 a8e:	66 90                	xchg   %ax,%ax

0000000000000a90 <creat>:
 a90:	41 57                	push   %r15
 a92:	41 56                	push   %r14
 a94:	bf 28 00 00 00       	mov    $0x28,%edi
 a99:	41 55                	push   %r13
 a9b:	41 54                	push   %r12
 a9d:	55                   	push   %rbp
 a9e:	53                   	push   %rbx
 a9f:	48 83 ec 08          	sub    $0x8,%rsp
 aa3:	c7 05 6b 15 20 00 00 	movl   $0x0,0x20156b(%rip)        # 202018 <n>
 aaa:	00 00 00 
 aad:	e8 0e fc ff ff       	callq  6c0 <malloc@plt>
 ab2:	48 8d 3d 03 03 00 00 	lea    0x303(%rip),%rdi        # dbc <_IO_stdin_used+0x1c>
 ab9:	49 89 c7             	mov    %rax,%r15
 abc:	4c 89 fd             	mov    %r15,%rbp
 abf:	e8 ec fb ff ff       	callq  6b0 <puts@plt>
 ac4:	48 8d 35 01 03 00 00 	lea    0x301(%rip),%rsi        # dcc <_IO_stdin_used+0x2c>
 acb:	ba 01 00 00 00       	mov    $0x1,%edx
 ad0:	bf 01 00 00 00       	mov    $0x1,%edi
 ad5:	31 c0                	xor    %eax,%eax
 ad7:	e8 f4 fb ff ff       	callq  6d0 <__printf_chk@plt>
 adc:	49 8d 57 08          	lea    0x8(%r15),%rdx
 ae0:	48 8d 3d ea 02 00 00 	lea    0x2ea(%rip),%rdi        # dd1 <_IO_stdin_used+0x31>
 ae7:	31 c0                	xor    %eax,%eax
 ae9:	4c 89 fe             	mov    %r15,%rsi
 aec:	e8 ef fb ff ff       	callq  6e0 <__isoc99_scanf@plt>
 af1:	49 83 3f 00          	cmpq   $0x0,(%r15)
 af5:	0f 84 7d 00 00 00    	je     b78 <creat+0xe8>
 afb:	41 bc 02 00 00 00    	mov    $0x2,%r12d
 b01:	45 31 f6             	xor    %r14d,%r14d
 b04:	4c 8d 2d c1 02 00 00 	lea    0x2c1(%rip),%r13        # dcc <_IO_stdin_used+0x2c>
 b0b:	eb 4b                	jmp    b58 <creat+0xc8>
 b0d:	0f 1f 00             	nopl   (%rax)
 b10:	49 89 6f 20          	mov    %rbp,0x20(%r15)
 b14:	bf 28 00 00 00       	mov    $0x28,%edi
 b19:	49 89 ef             	mov    %rbp,%r15
 b1c:	e8 9f fb ff ff       	callq  6c0 <malloc@plt>
 b21:	44 89 e2             	mov    %r12d,%edx
 b24:	48 89 c3             	mov    %rax,%rbx
 b27:	4c 89 ee             	mov    %r13,%rsi
 b2a:	bf 01 00 00 00       	mov    $0x1,%edi
 b2f:	31 c0                	xor    %eax,%eax
 b31:	41 83 c4 01          	add    $0x1,%r12d
 b35:	e8 96 fb ff ff       	callq  6d0 <__printf_chk@plt>
 b3a:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 b3e:	48 8d 3d 8c 02 00 00 	lea    0x28c(%rip),%rdi        # dd1 <_IO_stdin_used+0x31>
 b45:	31 c0                	xor    %eax,%eax
 b47:	48 89 de             	mov    %rbx,%rsi
 b4a:	e8 91 fb ff ff       	callq  6e0 <__isoc99_scanf@plt>
 b4f:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b53:	74 26                	je     b7b <creat+0xeb>
 b55:	48 89 dd             	mov    %rbx,%rbp
 b58:	8b 05 ba 14 20 00    	mov    0x2014ba(%rip),%eax        # 202018 <n>
 b5e:	83 c0 01             	add    $0x1,%eax
 b61:	83 f8 01             	cmp    $0x1,%eax
 b64:	89 05 ae 14 20 00    	mov    %eax,0x2014ae(%rip)        # 202018 <n>
 b6a:	75 a4                	jne    b10 <creat+0x80>
 b6c:	49 89 ee             	mov    %rbp,%r14
 b6f:	eb a3                	jmp    b14 <creat+0x84>
 b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b78:	45 31 f6             	xor    %r14d,%r14d
 b7b:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
 b82:	00 
 b83:	48 89 2d 96 14 20 00 	mov    %rbp,0x201496(%rip)        # 202020 <last>
 b8a:	48 83 c4 08          	add    $0x8,%rsp
 b8e:	5b                   	pop    %rbx
 b8f:	4c 89 f0             	mov    %r14,%rax
 b92:	5d                   	pop    %rbp
 b93:	41 5c                	pop    %r12
 b95:	41 5d                	pop    %r13
 b97:	41 5e                	pop    %r14
 b99:	41 5f                	pop    %r15
 b9b:	c3                   	retq   
 b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ba0 <bfin>:
 ba0:	48 8b 05 81 14 20 00 	mov    0x201481(%rip),%rax        # 202028 <blast>
 ba7:	c3                   	retq   
 ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 baf:	00 

0000000000000bb0 <ins>:
 bb0:	48 85 ff             	test   %rdi,%rdi
 bb3:	74 4b                	je     c00 <ins+0x50>
 bb5:	4c 8b 06             	mov    (%rsi),%r8
 bb8:	48 89 fa             	mov    %rdi,%rdx
 bbb:	eb 12                	jmp    bcf <ins+0x1f>
 bbd:	0f 1f 00             	nopl   (%rax)
 bc0:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
 bc4:	49 89 d1             	mov    %rdx,%r9
 bc7:	48 85 c9             	test   %rcx,%rcx
 bca:	74 24                	je     bf0 <ins+0x40>
 bcc:	48 89 ca             	mov    %rcx,%rdx
 bcf:	4c 3b 02             	cmp    (%rdx),%r8
 bd2:	7f ec                	jg     bc0 <ins+0x10>
 bd4:	7d 1a                	jge    bf0 <ins+0x40>
 bd6:	48 39 fa             	cmp    %rdi,%rdx
 bd9:	74 35                	je     c10 <ins+0x60>
 bdb:	49 89 71 20          	mov    %rsi,0x20(%r9)
 bdf:	48 89 f8             	mov    %rdi,%rax
 be2:	48 89 56 20          	mov    %rdx,0x20(%rsi)
 be6:	c3                   	retq   
 be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 bee:	00 00 
 bf0:	48 89 72 20          	mov    %rsi,0x20(%rdx)
 bf4:	48 89 f8             	mov    %rdi,%rax
 bf7:	48 c7 46 20 00 00 00 	movq   $0x0,0x20(%rsi)
 bfe:	00 
 bff:	c3                   	retq   
 c00:	48 c7 46 20 00 00 00 	movq   $0x0,0x20(%rsi)
 c07:	00 
 c08:	48 89 f0             	mov    %rsi,%rax
 c0b:	c3                   	retq   
 c0c:	0f 1f 40 00          	nopl   0x0(%rax)
 c10:	48 89 56 20          	mov    %rdx,0x20(%rsi)
 c14:	48 89 f0             	mov    %rsi,%rax
 c17:	c3                   	retq   
 c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c1f:	00 

0000000000000c20 <del>:
 c20:	48 85 ff             	test   %rdi,%rdi
 c23:	53                   	push   %rbx
 c24:	74 45                	je     c6b <del+0x4b>
 c26:	48 3b 37             	cmp    (%rdi),%rsi
 c29:	48 8b 57 20          	mov    0x20(%rdi),%rdx
 c2d:	48 89 f9             	mov    %rdi,%rcx
 c30:	75 0c                	jne    c3e <del+0x1e>
 c32:	eb 2f                	jmp    c63 <del+0x43>
 c34:	0f 1f 40 00          	nopl   0x0(%rax)
 c38:	48 89 d1             	mov    %rdx,%rcx
 c3b:	48 89 c2             	mov    %rax,%rdx
 c3e:	48 39 32             	cmp    %rsi,(%rdx)
 c41:	48 8b 42 20          	mov    0x20(%rdx),%rax
 c45:	75 f1                	jne    c38 <del+0x18>
 c47:	48 39 d7             	cmp    %rdx,%rdi
 c4a:	74 14                	je     c60 <del+0x40>
 c4c:	48 89 41 20          	mov    %rax,0x20(%rcx)
 c50:	48 89 fb             	mov    %rdi,%rbx
 c53:	48 89 d7             	mov    %rdx,%rdi
 c56:	e8 45 fa ff ff       	callq  6a0 <free@plt>
 c5b:	48 89 d8             	mov    %rbx,%rax
 c5e:	5b                   	pop    %rbx
 c5f:	c3                   	retq   
 c60:	48 89 c2             	mov    %rax,%rdx
 c63:	48 89 d3             	mov    %rdx,%rbx
 c66:	48 89 fa             	mov    %rdi,%rdx
 c69:	eb e8                	jmp    c53 <del+0x33>
 c6b:	48 8d 35 66 01 00 00 	lea    0x166(%rip),%rsi        # dd8 <_IO_stdin_used+0x38>
 c72:	bf 01 00 00 00       	mov    $0x1,%edi
 c77:	31 c0                	xor    %eax,%eax
 c79:	31 db                	xor    %ebx,%ebx
 c7b:	e8 50 fa ff ff       	callq  6d0 <__printf_chk@plt>
 c80:	eb d9                	jmp    c5b <del+0x3b>
 c82:	0f 1f 40 00          	nopl   0x0(%rax)
 c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c8d:	00 00 00 

0000000000000c90 <sort>:
 c90:	4c 8b 05 89 13 20 00 	mov    0x201389(%rip),%r8        # 202020 <last>
 c97:	4c 39 c7             	cmp    %r8,%rdi
 c9a:	0f 84 7c 00 00 00    	je     d1c <sort+0x8c>
 ca0:	4c 8b 0d 81 13 20 00 	mov    0x201381(%rip),%r9        # 202028 <blast>
 ca7:	48 89 f8             	mov    %rdi,%rax
 caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 cb0:	48 8b 30             	mov    (%rax),%rsi
 cb3:	48 89 c2             	mov    %rax,%rdx
 cb6:	48 89 c7             	mov    %rax,%rdi
 cb9:	48 8b 52 20          	mov    0x20(%rdx),%rdx
 cbd:	49 39 d0             	cmp    %rdx,%r8
 cc0:	74 17                	je     cd9 <sort+0x49>
 cc2:	48 8b 0a             	mov    (%rdx),%rcx
 cc5:	48 39 ce             	cmp    %rcx,%rsi
 cc8:	7d ef                	jge    cb9 <sort+0x29>
 cca:	48 89 d7             	mov    %rdx,%rdi
 ccd:	48 8b 52 20          	mov    0x20(%rdx),%rdx
 cd1:	48 89 ce             	mov    %rcx,%rsi
 cd4:	49 39 d0             	cmp    %rdx,%r8
 cd7:	75 e9                	jne    cc2 <sort+0x32>
 cd9:	49 39 30             	cmp    %rsi,(%r8)
 cdc:	7d 15                	jge    cf3 <sort+0x63>
 cde:	48 39 c7             	cmp    %rax,%rdi
 ce1:	49 8b 50 20          	mov    0x20(%r8),%rdx
 ce5:	74 19                	je     d00 <sort+0x70>
 ce7:	48 89 57 20          	mov    %rdx,0x20(%rdi)
 ceb:	49 89 50 20          	mov    %rdx,0x20(%r8)
 cef:	49 89 79 20          	mov    %rdi,0x20(%r9)
 cf3:	4c 39 c8             	cmp    %r9,%rax
 cf6:	74 1c                	je     d14 <sort+0x84>
 cf8:	4d 89 c8             	mov    %r9,%r8
 cfb:	eb b3                	jmp    cb0 <sort+0x20>
 cfd:	0f 1f 00             	nopl   (%rax)
 d00:	48 89 50 20          	mov    %rdx,0x20(%rax)
 d04:	49 89 50 20          	mov    %rdx,0x20(%r8)
 d08:	49 89 41 20          	mov    %rax,0x20(%r9)
 d0c:	4c 89 c0             	mov    %r8,%rax
 d0f:	4c 39 c8             	cmp    %r9,%rax
 d12:	75 e4                	jne    cf8 <sort+0x68>
 d14:	48 89 05 05 13 20 00 	mov    %rax,0x201305(%rip)        # 202020 <last>
 d1b:	c3                   	retq   
 d1c:	48 89 f8             	mov    %rdi,%rax
 d1f:	c3                   	retq   

0000000000000d20 <__libc_csu_init>:
 d20:	41 57                	push   %r15
 d22:	41 56                	push   %r14
 d24:	49 89 d7             	mov    %rdx,%r15
 d27:	41 55                	push   %r13
 d29:	41 54                	push   %r12
 d2b:	4c 8d 25 5e 10 20 00 	lea    0x20105e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 d32:	55                   	push   %rbp
 d33:	48 8d 2d 5e 10 20 00 	lea    0x20105e(%rip),%rbp        # 201d98 <__init_array_end>
 d3a:	53                   	push   %rbx
 d3b:	41 89 fd             	mov    %edi,%r13d
 d3e:	49 89 f6             	mov    %rsi,%r14
 d41:	4c 29 e5             	sub    %r12,%rbp
 d44:	48 83 ec 08          	sub    $0x8,%rsp
 d48:	48 c1 fd 03          	sar    $0x3,%rbp
 d4c:	e8 1f f9 ff ff       	callq  670 <_init>
 d51:	48 85 ed             	test   %rbp,%rbp
 d54:	74 20                	je     d76 <__libc_csu_init+0x56>
 d56:	31 db                	xor    %ebx,%ebx
 d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d5f:	00 
 d60:	4c 89 fa             	mov    %r15,%rdx
 d63:	4c 89 f6             	mov    %r14,%rsi
 d66:	44 89 ef             	mov    %r13d,%edi
 d69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d6d:	48 83 c3 01          	add    $0x1,%rbx
 d71:	48 39 dd             	cmp    %rbx,%rbp
 d74:	75 ea                	jne    d60 <__libc_csu_init+0x40>
 d76:	48 83 c4 08          	add    $0x8,%rsp
 d7a:	5b                   	pop    %rbx
 d7b:	5d                   	pop    %rbp
 d7c:	41 5c                	pop    %r12
 d7e:	41 5d                	pop    %r13
 d80:	41 5e                	pop    %r14
 d82:	41 5f                	pop    %r15
 d84:	c3                   	retq   
 d85:	90                   	nop
 d86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d8d:	00 00 00 

0000000000000d90 <__libc_csu_fini>:
 d90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d94 <_fini>:
 d94:	48 83 ec 08          	sub    $0x8,%rsp
 d98:	48 83 c4 08          	add    $0x8,%rsp
 d9c:	c3                   	retq   
