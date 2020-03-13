
input/19140002028_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000720 <_init>:
 720:	48 83 ec 08          	sub    $0x8,%rsp
 724:	48 8b 05 bd 18 20 00 	mov    0x2018bd(%rip),%rax        # 201fe8 <__gmon_start__>
 72b:	48 85 c0             	test   %rax,%rax
 72e:	74 02                	je     732 <_init+0x12>
 730:	ff d0                	callq  *%rax
 732:	48 83 c4 08          	add    $0x8,%rsp
 736:	c3                   	retq   

Disassembly of section .plt:

0000000000000740 <.plt>:
 740:	ff 35 42 18 20 00    	pushq  0x201842(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 746:	ff 25 44 18 20 00    	jmpq   *0x201844(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 74c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000750 <free@plt>:
 750:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201f98 <free@GLIBC_2.2.5>
 756:	68 00 00 00 00       	pushq  $0x0
 75b:	e9 e0 ff ff ff       	jmpq   740 <.plt>

0000000000000760 <puts@plt>:
 760:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 766:	68 01 00 00 00       	pushq  $0x1
 76b:	e9 d0 ff ff ff       	jmpq   740 <.plt>

0000000000000770 <__stack_chk_fail@plt>:
 770:	ff 25 32 18 20 00    	jmpq   *0x201832(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 776:	68 02 00 00 00       	pushq  $0x2
 77b:	e9 c0 ff ff ff       	jmpq   740 <.plt>

0000000000000780 <malloc@plt>:
 780:	ff 25 2a 18 20 00    	jmpq   *0x20182a(%rip)        # 201fb0 <malloc@GLIBC_2.2.5>
 786:	68 03 00 00 00       	pushq  $0x3
 78b:	e9 b0 ff ff ff       	jmpq   740 <.plt>

0000000000000790 <_IO_getc@plt>:
 790:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 201fb8 <_IO_getc@GLIBC_2.2.5>
 796:	68 04 00 00 00       	pushq  $0x4
 79b:	e9 a0 ff ff ff       	jmpq   740 <.plt>

00000000000007a0 <__printf_chk@plt>:
 7a0:	ff 25 1a 18 20 00    	jmpq   *0x20181a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 7a6:	68 05 00 00 00       	pushq  $0x5
 7ab:	e9 90 ff ff ff       	jmpq   740 <.plt>

00000000000007b0 <__isoc99_scanf@plt>:
 7b0:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 7b6:	68 06 00 00 00       	pushq  $0x6
 7bb:	e9 80 ff ff ff       	jmpq   740 <.plt>

00000000000007c0 <exit@plt>:
 7c0:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 7c6:	68 07 00 00 00       	pushq  $0x7
 7cb:	e9 70 ff ff ff       	jmpq   740 <.plt>

Disassembly of section .plt.got:

00000000000007d0 <__cxa_finalize@plt>:
 7d0:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007e0 <main>:
 7e0:	41 57                	push   %r15
 7e2:	41 56                	push   %r14
 7e4:	48 8d 3d 26 07 00 00 	lea    0x726(%rip),%rdi        # f11 <_IO_stdin_used+0x71>
 7eb:	41 55                	push   %r13
 7ed:	41 54                	push   %r12
 7ef:	4c 8d 2d 35 07 00 00 	lea    0x735(%rip),%r13        # f2b <_IO_stdin_used+0x8b>
 7f6:	55                   	push   %rbp
 7f7:	53                   	push   %rbx
 7f8:	4c 8d 25 48 07 00 00 	lea    0x748(%rip),%r12        # f47 <_IO_stdin_used+0xa7>
 7ff:	48 83 ec 38          	sub    $0x38,%rsp
 803:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 80a:	00 00 
 80c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 811:	31 c0                	xor    %eax,%eax
 813:	e8 48 ff ff ff       	callq  760 <puts@plt>
 818:	48 8d 35 79 07 00 00 	lea    0x779(%rip),%rsi        # f98 <_IO_stdin_used+0xf8>
 81f:	bf 01 00 00 00       	mov    $0x1,%edi
 824:	31 c0                	xor    %eax,%eax
 826:	4c 8d 74 24 14       	lea    0x14(%rsp),%r14
 82b:	4c 8d 7c 24 1c       	lea    0x1c(%rsp),%r15
 830:	e8 6b ff ff ff       	callq  7a0 <__printf_chk@plt>
 835:	48 8d 44 24 18       	lea    0x18(%rsp),%rax
 83a:	48 8d 3d e7 06 00 00 	lea    0x6e7(%rip),%rdi        # f28 <_IO_stdin_used+0x88>
 841:	48 89 c6             	mov    %rax,%rsi
 844:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 849:	31 c0                	xor    %eax,%eax
 84b:	e8 60 ff ff ff       	callq  7b0 <__isoc99_scanf@plt>
 850:	48 8d 3d 61 07 00 00 	lea    0x761(%rip),%rdi        # fb8 <_IO_stdin_used+0x118>
 857:	e8 04 ff ff ff       	callq  760 <puts@plt>
 85c:	8b 7c 24 18          	mov    0x18(%rsp),%edi
 860:	e8 eb 02 00 00       	callq  b50 <create>
 865:	48 89 c7             	mov    %rax,%rdi
 868:	48 89 c3             	mov    %rax,%rbx
 86b:	e8 c0 03 00 00       	callq  c30 <print>
 870:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
 875:	48 89 04 24          	mov    %rax,(%rsp)
 879:	eb 57                	jmp    8d2 <main+0xf2>
 87b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 880:	83 f8 02             	cmp    $0x2,%eax
 883:	75 41                	jne    8c6 <main+0xe6>
 885:	48 8d 35 f4 06 00 00 	lea    0x6f4(%rip),%rsi        # f80 <_IO_stdin_used+0xe0>
 88c:	bf 01 00 00 00       	mov    $0x1,%edi
 891:	31 c0                	xor    %eax,%eax
 893:	e8 08 ff ff ff       	callq  7a0 <__printf_chk@plt>
 898:	48 8b 34 24          	mov    (%rsp),%rsi
 89c:	48 8d 3d ef 06 00 00 	lea    0x6ef(%rip),%rdi        # f92 <_IO_stdin_used+0xf2>
 8a3:	31 c0                	xor    %eax,%eax
 8a5:	e8 06 ff ff ff       	callq  7b0 <__isoc99_scanf@plt>
 8aa:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 8af:	48 89 df             	mov    %rbx,%rdi
 8b2:	e8 d9 04 00 00       	callq  d90 <delete>
 8b7:	48 89 c7             	mov    %rax,%rdi
 8ba:	48 89 c3             	mov    %rax,%rbx
 8bd:	e8 6e 03 00 00       	callq  c30 <print>
 8c2:	8b 44 24 14          	mov    0x14(%rsp),%eax
 8c6:	83 e8 01             	sub    $0x1,%eax
 8c9:	83 f8 01             	cmp    $0x1,%eax
 8cc:	0f 86 d9 00 00 00    	jbe    9ab <main+0x1cb>
 8d2:	4c 89 ef             	mov    %r13,%rdi
 8d5:	e8 86 fe ff ff       	callq  760 <puts@plt>
 8da:	4c 89 e7             	mov    %r12,%rdi
 8dd:	e8 7e fe ff ff       	callq  760 <puts@plt>
 8e2:	48 8d 3d 3f 06 00 00 	lea    0x63f(%rip),%rdi        # f28 <_IO_stdin_used+0x88>
 8e9:	4c 89 f6             	mov    %r14,%rsi
 8ec:	31 c0                	xor    %eax,%eax
 8ee:	e8 bd fe ff ff       	callq  7b0 <__isoc99_scanf@plt>
 8f3:	48 8b 3d 16 17 20 00 	mov    0x201716(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8fa:	e8 91 fe ff ff       	callq  790 <_IO_getc@plt>
 8ff:	8b 44 24 14          	mov    0x14(%rsp),%eax
 903:	83 f8 01             	cmp    $0x1,%eax
 906:	0f 85 74 ff ff ff    	jne    880 <main+0xa0>
 90c:	bf 18 00 00 00       	mov    $0x18,%edi
 911:	e8 6a fe ff ff       	callq  780 <malloc@plt>
 916:	48 8d 35 98 05 00 00 	lea    0x598(%rip),%rsi        # eb5 <_IO_stdin_used+0x15>
 91d:	48 89 c5             	mov    %rax,%rbp
 920:	bf 01 00 00 00       	mov    $0x1,%edi
 925:	31 c0                	xor    %eax,%eax
 927:	e8 74 fe ff ff       	callq  7a0 <__printf_chk@plt>
 92c:	48 8d 55 08          	lea    0x8(%rbp),%rdx
 930:	48 8d 3d 9a 05 00 00 	lea    0x59a(%rip),%rdi        # ed1 <_IO_stdin_used+0x31>
 937:	48 89 ee             	mov    %rbp,%rsi
 93a:	31 c0                	xor    %eax,%eax
 93c:	e8 6f fe ff ff       	callq  7b0 <__isoc99_scanf@plt>
 941:	48 8d 3d 98 06 00 00 	lea    0x698(%rip),%rdi        # fe0 <_IO_stdin_used+0x140>
 948:	e8 13 fe ff ff       	callq  760 <puts@plt>
 94d:	48 8d 3d d4 05 00 00 	lea    0x5d4(%rip),%rdi        # f28 <_IO_stdin_used+0x88>
 954:	31 c0                	xor    %eax,%eax
 956:	4c 89 fe             	mov    %r15,%rsi
 959:	e8 52 fe ff ff       	callq  7b0 <__isoc99_scanf@plt>
 95e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
 962:	83 f8 02             	cmp    $0x2,%eax
 965:	0f 84 87 00 00 00    	je     9f2 <main+0x212>
 96b:	83 f8 03             	cmp    $0x3,%eax
 96e:	74 5c                	je     9cc <main+0x1ec>
 970:	83 f8 01             	cmp    $0x1,%eax
 973:	75 07                	jne    97c <main+0x19c>
 975:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 979:	48 89 eb             	mov    %rbp,%rbx
 97c:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 980:	48 8d 35 ea 05 00 00 	lea    0x5ea(%rip),%rsi        # f71 <_IO_stdin_used+0xd1>
 987:	bf 01 00 00 00       	mov    $0x1,%edi
 98c:	31 c0                	xor    %eax,%eax
 98e:	e8 0d fe ff ff       	callq  7a0 <__printf_chk@plt>
 993:	48 89 df             	mov    %rbx,%rdi
 996:	e8 95 02 00 00       	callq  c30 <print>
 99b:	8b 44 24 14          	mov    0x14(%rsp),%eax
 99f:	83 e8 01             	sub    $0x1,%eax
 9a2:	83 f8 01             	cmp    $0x1,%eax
 9a5:	0f 87 27 ff ff ff    	ja     8d2 <main+0xf2>
 9ab:	31 c0                	xor    %eax,%eax
 9ad:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 9b2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 9b9:	00 00 
 9bb:	75 72                	jne    a2f <main+0x24f>
 9bd:	48 83 c4 38          	add    $0x38,%rsp
 9c1:	5b                   	pop    %rbx
 9c2:	5d                   	pop    %rbp
 9c3:	41 5c                	pop    %r12
 9c5:	41 5d                	pop    %r13
 9c7:	41 5e                	pop    %r14
 9c9:	41 5f                	pop    %r15
 9cb:	c3                   	retq   
 9cc:	48 89 da             	mov    %rbx,%rdx
 9cf:	eb 0a                	jmp    9db <main+0x1fb>
 9d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9d8:	48 89 c2             	mov    %rax,%rdx
 9db:	48 8b 42 10          	mov    0x10(%rdx),%rax
 9df:	48 85 c0             	test   %rax,%rax
 9e2:	75 f4                	jne    9d8 <main+0x1f8>
 9e4:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 9e8:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 9ef:	00 
 9f0:	eb 8a                	jmp    97c <main+0x19c>
 9f2:	48 8d 35 5d 05 00 00 	lea    0x55d(%rip),%rsi        # f56 <_IO_stdin_used+0xb6>
 9f9:	bf 01 00 00 00       	mov    $0x1,%edi
 9fe:	31 c0                	xor    %eax,%eax
 a00:	e8 9b fd ff ff       	callq  7a0 <__printf_chk@plt>
 a05:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 a0a:	48 8d 3d 17 05 00 00 	lea    0x517(%rip),%rdi        # f28 <_IO_stdin_used+0x88>
 a11:	31 c0                	xor    %eax,%eax
 a13:	e8 98 fd ff ff       	callq  7b0 <__isoc99_scanf@plt>
 a18:	8b 54 24 18          	mov    0x18(%rsp),%edx
 a1c:	48 89 df             	mov    %rbx,%rdi
 a1f:	48 89 ee             	mov    %rbp,%rsi
 a22:	e8 c9 02 00 00       	callq  cf0 <insert2>
 a27:	48 89 c3             	mov    %rax,%rbx
 a2a:	e9 4d ff ff ff       	jmpq   97c <main+0x19c>
 a2f:	e8 3c fd ff ff       	callq  770 <__stack_chk_fail@plt>
 a34:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a3b:	00 00 00 
 a3e:	66 90                	xchg   %ax,%ax

0000000000000a40 <_start>:
 a40:	31 ed                	xor    %ebp,%ebp
 a42:	49 89 d1             	mov    %rdx,%r9
 a45:	5e                   	pop    %rsi
 a46:	48 89 e2             	mov    %rsp,%rdx
 a49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 a4d:	50                   	push   %rax
 a4e:	54                   	push   %rsp
 a4f:	4c 8d 05 3a 04 00 00 	lea    0x43a(%rip),%r8        # e90 <__libc_csu_fini>
 a56:	48 8d 0d c3 03 00 00 	lea    0x3c3(%rip),%rcx        # e20 <__libc_csu_init>
 a5d:	48 8d 3d 7c fd ff ff 	lea    -0x284(%rip),%rdi        # 7e0 <main>
 a64:	ff 15 76 15 20 00    	callq  *0x201576(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 a6a:	f4                   	hlt    
 a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a70 <deregister_tm_clones>:
 a70:	48 8d 3d 99 15 20 00 	lea    0x201599(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 a77:	55                   	push   %rbp
 a78:	48 8d 05 91 15 20 00 	lea    0x201591(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 a7f:	48 39 f8             	cmp    %rdi,%rax
 a82:	48 89 e5             	mov    %rsp,%rbp
 a85:	74 19                	je     aa0 <deregister_tm_clones+0x30>
 a87:	48 8b 05 4a 15 20 00 	mov    0x20154a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 a8e:	48 85 c0             	test   %rax,%rax
 a91:	74 0d                	je     aa0 <deregister_tm_clones+0x30>
 a93:	5d                   	pop    %rbp
 a94:	ff e0                	jmpq   *%rax
 a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a9d:	00 00 00 
 aa0:	5d                   	pop    %rbp
 aa1:	c3                   	retq   
 aa2:	0f 1f 40 00          	nopl   0x0(%rax)
 aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aad:	00 00 00 

0000000000000ab0 <register_tm_clones>:
 ab0:	48 8d 3d 59 15 20 00 	lea    0x201559(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 ab7:	48 8d 35 52 15 20 00 	lea    0x201552(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 abe:	55                   	push   %rbp
 abf:	48 29 fe             	sub    %rdi,%rsi
 ac2:	48 89 e5             	mov    %rsp,%rbp
 ac5:	48 c1 fe 03          	sar    $0x3,%rsi
 ac9:	48 89 f0             	mov    %rsi,%rax
 acc:	48 c1 e8 3f          	shr    $0x3f,%rax
 ad0:	48 01 c6             	add    %rax,%rsi
 ad3:	48 d1 fe             	sar    %rsi
 ad6:	74 18                	je     af0 <register_tm_clones+0x40>
 ad8:	48 8b 05 11 15 20 00 	mov    0x201511(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 adf:	48 85 c0             	test   %rax,%rax
 ae2:	74 0c                	je     af0 <register_tm_clones+0x40>
 ae4:	5d                   	pop    %rbp
 ae5:	ff e0                	jmpq   *%rax
 ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aee:	00 00 
 af0:	5d                   	pop    %rbp
 af1:	c3                   	retq   
 af2:	0f 1f 40 00          	nopl   0x0(%rax)
 af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 afd:	00 00 00 

0000000000000b00 <__do_global_dtors_aux>:
 b00:	80 3d 11 15 20 00 00 	cmpb   $0x0,0x201511(%rip)        # 202018 <completed.7698>
 b07:	75 2f                	jne    b38 <__do_global_dtors_aux+0x38>
 b09:	48 83 3d e7 14 20 00 	cmpq   $0x0,0x2014e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 b10:	00 
 b11:	55                   	push   %rbp
 b12:	48 89 e5             	mov    %rsp,%rbp
 b15:	74 0c                	je     b23 <__do_global_dtors_aux+0x23>
 b17:	48 8b 3d ea 14 20 00 	mov    0x2014ea(%rip),%rdi        # 202008 <__dso_handle>
 b1e:	e8 ad fc ff ff       	callq  7d0 <__cxa_finalize@plt>
 b23:	e8 48 ff ff ff       	callq  a70 <deregister_tm_clones>
 b28:	c6 05 e9 14 20 00 01 	movb   $0x1,0x2014e9(%rip)        # 202018 <completed.7698>
 b2f:	5d                   	pop    %rbp
 b30:	c3                   	retq   
 b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b38:	f3 c3                	repz retq 
 b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b40 <frame_dummy>:
 b40:	55                   	push   %rbp
 b41:	48 89 e5             	mov    %rsp,%rbp
 b44:	5d                   	pop    %rbp
 b45:	e9 66 ff ff ff       	jmpq   ab0 <register_tm_clones>
 b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b50 <create>:
 b50:	41 57                	push   %r15
 b52:	41 56                	push   %r14
 b54:	41 55                	push   %r13
 b56:	41 54                	push   %r12
 b58:	41 89 fd             	mov    %edi,%r13d
 b5b:	55                   	push   %rbp
 b5c:	53                   	push   %rbx
 b5d:	bf 18 00 00 00       	mov    $0x18,%edi
 b62:	48 83 ec 08          	sub    $0x8,%rsp
 b66:	e8 15 fc ff ff       	callq  780 <malloc@plt>
 b6b:	48 85 c0             	test   %rax,%rax
 b6e:	74 7f                	je     bef <create+0x9f>
 b70:	48 8d 3d 3e 03 00 00 	lea    0x33e(%rip),%rdi        # eb5 <_IO_stdin_used+0x15>
 b77:	49 89 c7             	mov    %rax,%r15
 b7a:	e8 e1 fb ff ff       	callq  760 <puts@plt>
 b7f:	49 8d 57 08          	lea    0x8(%r15),%rdx
 b83:	48 8d 3d 47 03 00 00 	lea    0x347(%rip),%rdi        # ed1 <_IO_stdin_used+0x31>
 b8a:	31 c0                	xor    %eax,%eax
 b8c:	4c 89 fe             	mov    %r15,%rsi
 b8f:	e8 1c fc ff ff       	callq  7b0 <__isoc99_scanf@plt>
 b94:	41 83 fd 01          	cmp    $0x1,%r13d
 b98:	7e 6e                	jle    c08 <create+0xb8>
 b9a:	4d 89 fc             	mov    %r15,%r12
 b9d:	bd 01 00 00 00       	mov    $0x1,%ebp
 ba2:	4c 8d 35 0c 03 00 00 	lea    0x30c(%rip),%r14        # eb5 <_IO_stdin_used+0x15>
 ba9:	eb 32                	jmp    bdd <create+0x8d>
 bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bb0:	4c 89 f7             	mov    %r14,%rdi
 bb3:	83 c5 01             	add    $0x1,%ebp
 bb6:	e8 a5 fb ff ff       	callq  760 <puts@plt>
 bbb:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 bbf:	48 8d 3d 0b 03 00 00 	lea    0x30b(%rip),%rdi        # ed1 <_IO_stdin_used+0x31>
 bc6:	31 c0                	xor    %eax,%eax
 bc8:	48 89 de             	mov    %rbx,%rsi
 bcb:	e8 e0 fb ff ff       	callq  7b0 <__isoc99_scanf@plt>
 bd0:	41 39 ed             	cmp    %ebp,%r13d
 bd3:	49 89 5c 24 10       	mov    %rbx,0x10(%r12)
 bd8:	49 89 dc             	mov    %rbx,%r12
 bdb:	74 2e                	je     c0b <create+0xbb>
 bdd:	bf 18 00 00 00       	mov    $0x18,%edi
 be2:	e8 99 fb ff ff       	callq  780 <malloc@plt>
 be7:	48 85 c0             	test   %rax,%rax
 bea:	48 89 c3             	mov    %rax,%rbx
 bed:	75 c1                	jne    bb0 <create+0x60>
 bef:	48 8d 3d ae 02 00 00 	lea    0x2ae(%rip),%rdi        # ea4 <_IO_stdin_used+0x4>
 bf6:	e8 65 fb ff ff       	callq  760 <puts@plt>
 bfb:	31 ff                	xor    %edi,%edi
 bfd:	e8 be fb ff ff       	callq  7c0 <exit@plt>
 c02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 c08:	4c 89 fb             	mov    %r15,%rbx
 c0b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 c12:	00 
 c13:	48 83 c4 08          	add    $0x8,%rsp
 c17:	4c 89 f8             	mov    %r15,%rax
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

0000000000000c30 <print>:
 c30:	55                   	push   %rbp
 c31:	53                   	push   %rbx
 c32:	48 8d 35 9f 02 00 00 	lea    0x29f(%rip),%rsi        # ed8 <_IO_stdin_used+0x38>
 c39:	48 89 fb             	mov    %rdi,%rbx
 c3c:	31 c0                	xor    %eax,%eax
 c3e:	bf 01 00 00 00       	mov    $0x1,%edi
 c43:	48 83 ec 08          	sub    $0x8,%rsp
 c47:	e8 54 fb ff ff       	callq  7a0 <__printf_chk@plt>
 c4c:	48 85 db             	test   %rbx,%rbx
 c4f:	74 36                	je     c87 <print+0x57>
 c51:	48 8d 2d 95 02 00 00 	lea    0x295(%rip),%rbp        # eed <_IO_stdin_used+0x4d>
 c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c5f:	00 
 c60:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c64:	48 8b 13             	mov    (%rbx),%rdx
 c67:	48 89 ee             	mov    %rbp,%rsi
 c6a:	bf 01 00 00 00       	mov    $0x1,%edi
 c6f:	b8 01 00 00 00       	mov    $0x1,%eax
 c74:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c79:	e8 22 fb ff ff       	callq  7a0 <__printf_chk@plt>
 c7e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c82:	48 85 db             	test   %rbx,%rbx
 c85:	75 d9                	jne    c60 <print+0x30>
 c87:	48 83 c4 08          	add    $0x8,%rsp
 c8b:	5b                   	pop    %rbx
 c8c:	5d                   	pop    %rbp
 c8d:	c3                   	retq   
 c8e:	66 90                	xchg   %ax,%ax

0000000000000c90 <findnode>:
 c90:	83 fe 01             	cmp    $0x1,%esi
 c93:	48 89 f8             	mov    %rdi,%rax
 c96:	7e 20                	jle    cb8 <findnode+0x28>
 c98:	48 85 ff             	test   %rdi,%rdi
 c9b:	74 1b                	je     cb8 <findnode+0x28>
 c9d:	ba 01 00 00 00       	mov    $0x1,%edx
 ca2:	eb 09                	jmp    cad <findnode+0x1d>
 ca4:	0f 1f 40 00          	nopl   0x0(%rax)
 ca8:	48 85 c0             	test   %rax,%rax
 cab:	74 0b                	je     cb8 <findnode+0x28>
 cad:	83 c2 01             	add    $0x1,%edx
 cb0:	48 8b 40 10          	mov    0x10(%rax),%rax
 cb4:	39 d6                	cmp    %edx,%esi
 cb6:	7f f0                	jg     ca8 <findnode+0x18>
 cb8:	f3 c3                	repz retq 
 cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000cc0 <findlast>:
 cc0:	48 89 f8             	mov    %rdi,%rax
 cc3:	eb 06                	jmp    ccb <findlast+0xb>
 cc5:	0f 1f 00             	nopl   (%rax)
 cc8:	48 89 d0             	mov    %rdx,%rax
 ccb:	48 8b 50 10          	mov    0x10(%rax),%rdx
 ccf:	48 85 d2             	test   %rdx,%rdx
 cd2:	75 f4                	jne    cc8 <findlast+0x8>
 cd4:	f3 c3                	repz retq 
 cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cdd:	00 00 00 

0000000000000ce0 <insert1>:
 ce0:	48 89 f0             	mov    %rsi,%rax
 ce3:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
 ce7:	c3                   	retq   
 ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cef:	00 

0000000000000cf0 <insert2>:
 cf0:	83 fa 01             	cmp    $0x1,%edx
 cf3:	53                   	push   %rbx
 cf4:	48 89 f8             	mov    %rdi,%rax
 cf7:	48 89 fb             	mov    %rdi,%rbx
 cfa:	7e 24                	jle    d20 <insert2+0x30>
 cfc:	48 85 ff             	test   %rdi,%rdi
 cff:	74 1f                	je     d20 <insert2+0x30>
 d01:	b9 01 00 00 00       	mov    $0x1,%ecx
 d06:	eb 0d                	jmp    d15 <insert2+0x25>
 d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d0f:	00 
 d10:	48 85 c0             	test   %rax,%rax
 d13:	74 0b                	je     d20 <insert2+0x30>
 d15:	83 c1 01             	add    $0x1,%ecx
 d18:	48 8b 40 10          	mov    0x10(%rax),%rax
 d1c:	39 ca                	cmp    %ecx,%edx
 d1e:	7f f0                	jg     d10 <insert2+0x20>
 d20:	48 85 f6             	test   %rsi,%rsi
 d23:	74 1b                	je     d40 <insert2+0x50>
 d25:	48 8b 50 10          	mov    0x10(%rax),%rdx
 d29:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 d2d:	48 89 70 10          	mov    %rsi,0x10(%rax)
 d31:	48 89 d8             	mov    %rbx,%rax
 d34:	5b                   	pop    %rbx
 d35:	c3                   	retq   
 d36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d3d:	00 00 00 
 d40:	48 8d 35 b1 01 00 00 	lea    0x1b1(%rip),%rsi        # ef8 <_IO_stdin_used+0x58>
 d47:	bf 01 00 00 00       	mov    $0x1,%edi
 d4c:	31 c0                	xor    %eax,%eax
 d4e:	e8 4d fa ff ff       	callq  7a0 <__printf_chk@plt>
 d53:	48 89 d8             	mov    %rbx,%rax
 d56:	5b                   	pop    %rbx
 d57:	c3                   	retq   
 d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d5f:	00 

0000000000000d60 <insert3>:
 d60:	48 89 f8             	mov    %rdi,%rax
 d63:	48 89 f9             	mov    %rdi,%rcx
 d66:	eb 0b                	jmp    d73 <insert3+0x13>
 d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d6f:	00 
 d70:	48 89 d1             	mov    %rdx,%rcx
 d73:	48 8b 51 10          	mov    0x10(%rcx),%rdx
 d77:	48 85 d2             	test   %rdx,%rdx
 d7a:	75 f4                	jne    d70 <insert3+0x10>
 d7c:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 d80:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 d87:	00 
 d88:	c3                   	retq   
 d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000d90 <delete>:
 d90:	48 39 37             	cmp    %rsi,(%rdi)
 d93:	48 8b 47 10          	mov    0x10(%rdi),%rax
 d97:	b9 01 00 00 00       	mov    $0x1,%ecx
 d9c:	48 89 c2             	mov    %rax,%rdx
 d9f:	75 0a                	jne    dab <delete+0x1b>
 da1:	eb 4d                	jmp    df0 <delete+0x60>
 da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 da8:	44 89 c9             	mov    %r9d,%ecx
 dab:	4c 8b 02             	mov    (%rdx),%r8
 dae:	44 8d 49 01          	lea    0x1(%rcx),%r9d
 db2:	48 8b 52 10          	mov    0x10(%rdx),%rdx
 db6:	4c 39 c6             	cmp    %r8,%rsi
 db9:	75 ed                	jne    da8 <delete+0x18>
 dbb:	83 f9 01             	cmp    $0x1,%ecx
 dbe:	7e 50                	jle    e10 <delete+0x80>
 dc0:	be 01 00 00 00       	mov    $0x1,%esi
 dc5:	eb 12                	jmp    dd9 <delete+0x49>
 dc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 dce:	00 00 
 dd0:	48 85 c0             	test   %rax,%rax
 dd3:	74 0b                	je     de0 <delete+0x50>
 dd5:	48 8b 40 10          	mov    0x10(%rax),%rax
 dd9:	83 c6 01             	add    $0x1,%esi
 ddc:	39 f1                	cmp    %esi,%ecx
 dde:	7f f0                	jg     dd0 <delete+0x40>
 de0:	48 89 50 10          	mov    %rdx,0x10(%rax)
 de4:	48 89 f8             	mov    %rdi,%rax
 de7:	c3                   	retq   
 de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 def:	00 
 df0:	48 83 ec 18          	sub    $0x18,%rsp
 df4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 df9:	e8 52 f9 ff ff       	callq  750 <free@plt>
 dfe:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 e03:	48 83 c4 18          	add    $0x18,%rsp
 e07:	c3                   	retq   
 e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 e0f:	00 
 e10:	48 89 f8             	mov    %rdi,%rax
 e13:	48 89 50 10          	mov    %rdx,0x10(%rax)
 e17:	48 89 f8             	mov    %rdi,%rax
 e1a:	c3                   	retq   
 e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000e20 <__libc_csu_init>:
 e20:	41 57                	push   %r15
 e22:	41 56                	push   %r14
 e24:	49 89 d7             	mov    %rdx,%r15
 e27:	41 55                	push   %r13
 e29:	41 54                	push   %r12
 e2b:	4c 8d 25 4e 0f 20 00 	lea    0x200f4e(%rip),%r12        # 201d80 <__frame_dummy_init_array_entry>
 e32:	55                   	push   %rbp
 e33:	48 8d 2d 4e 0f 20 00 	lea    0x200f4e(%rip),%rbp        # 201d88 <__init_array_end>
 e3a:	53                   	push   %rbx
 e3b:	41 89 fd             	mov    %edi,%r13d
 e3e:	49 89 f6             	mov    %rsi,%r14
 e41:	4c 29 e5             	sub    %r12,%rbp
 e44:	48 83 ec 08          	sub    $0x8,%rsp
 e48:	48 c1 fd 03          	sar    $0x3,%rbp
 e4c:	e8 cf f8 ff ff       	callq  720 <_init>
 e51:	48 85 ed             	test   %rbp,%rbp
 e54:	74 20                	je     e76 <__libc_csu_init+0x56>
 e56:	31 db                	xor    %ebx,%ebx
 e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 e5f:	00 
 e60:	4c 89 fa             	mov    %r15,%rdx
 e63:	4c 89 f6             	mov    %r14,%rsi
 e66:	44 89 ef             	mov    %r13d,%edi
 e69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 e6d:	48 83 c3 01          	add    $0x1,%rbx
 e71:	48 39 dd             	cmp    %rbx,%rbp
 e74:	75 ea                	jne    e60 <__libc_csu_init+0x40>
 e76:	48 83 c4 08          	add    $0x8,%rsp
 e7a:	5b                   	pop    %rbx
 e7b:	5d                   	pop    %rbp
 e7c:	41 5c                	pop    %r12
 e7e:	41 5d                	pop    %r13
 e80:	41 5e                	pop    %r14
 e82:	41 5f                	pop    %r15
 e84:	c3                   	retq   
 e85:	90                   	nop
 e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e8d:	00 00 00 

0000000000000e90 <__libc_csu_fini>:
 e90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000e94 <_fini>:
 e94:	48 83 ec 08          	sub    $0x8,%rsp
 e98:	48 83 c4 08          	add    $0x8,%rsp
 e9c:	c3                   	retq   
