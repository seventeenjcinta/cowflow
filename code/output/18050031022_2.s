
input/18050031022_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006c8 <_init>:
 6c8:	48 83 ec 08          	sub    $0x8,%rsp
 6cc:	48 8b 05 15 19 20 00 	mov    0x201915(%rip),%rax        # 201fe8 <__gmon_start__>
 6d3:	48 85 c0             	test   %rax,%rax
 6d6:	74 02                	je     6da <_init+0x12>
 6d8:	ff d0                	callq  *%rax
 6da:	48 83 c4 08          	add    $0x8,%rsp
 6de:	c3                   	retq   

Disassembly of section .plt:

00000000000006e0 <.plt>:
 6e0:	ff 35 aa 18 20 00    	pushq  0x2018aa(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6e6:	ff 25 ac 18 20 00    	jmpq   *0x2018ac(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006f0 <free@plt>:
 6f0:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 6f6:	68 00 00 00 00       	pushq  $0x0
 6fb:	e9 e0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000700 <puts@plt>:
 700:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 706:	68 01 00 00 00       	pushq  $0x1
 70b:	e9 d0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000710 <_IO_putc@plt>:
 710:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fb0 <_IO_putc@GLIBC_2.2.5>
 716:	68 02 00 00 00       	pushq  $0x2
 71b:	e9 c0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000720 <malloc@plt>:
 720:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 726:	68 03 00 00 00       	pushq  $0x3
 72b:	e9 b0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000730 <__printf_chk@plt>:
 730:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 736:	68 04 00 00 00       	pushq  $0x4
 73b:	e9 a0 ff ff ff       	jmpq   6e0 <.plt>

0000000000000740 <__isoc99_scanf@plt>:
 740:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 746:	68 05 00 00 00       	pushq  $0x5
 74b:	e9 90 ff ff ff       	jmpq   6e0 <.plt>

0000000000000750 <exit@plt>:
 750:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 756:	68 06 00 00 00       	pushq  $0x6
 75b:	e9 80 ff ff ff       	jmpq   6e0 <.plt>

Disassembly of section .plt.got:

0000000000000760 <__cxa_finalize@plt>:
 760:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000770 <main>:
 770:	41 57                	push   %r15
 772:	41 56                	push   %r14
 774:	48 8d 3d 41 05 00 00 	lea    0x541(%rip),%rdi        # cbc <_IO_stdin_used+0x8c>
 77b:	41 55                	push   %r13
 77d:	41 54                	push   %r12
 77f:	4c 8d 2d 64 05 00 00 	lea    0x564(%rip),%r13        # cea <_IO_stdin_used+0xba>
 786:	55                   	push   %rbp
 787:	53                   	push   %rbx
 788:	4c 8d 25 76 05 00 00 	lea    0x576(%rip),%r12        # d05 <_IO_stdin_used+0xd5>
 78f:	48 8d 2d 7f 05 00 00 	lea    0x57f(%rip),%rbp        # d15 <_IO_stdin_used+0xe5>
 796:	48 83 ec 28          	sub    $0x28,%rsp
 79a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a1:	00 00 
 7a3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7a8:	31 c0                	xor    %eax,%eax
 7aa:	e8 51 ff ff ff       	callq  700 <puts@plt>
 7af:	31 c0                	xor    %eax,%eax
 7b1:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
 7b6:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
 7bb:	e8 60 02 00 00       	callq  a20 <create>
 7c0:	48 8d 3d 0c 05 00 00 	lea    0x50c(%rip),%rdi        # cd3 <_IO_stdin_used+0xa3>
 7c7:	48 89 c3             	mov    %rax,%rbx
 7ca:	e8 31 ff ff ff       	callq  700 <puts@plt>
 7cf:	48 89 df             	mov    %rbx,%rdi
 7d2:	e8 69 03 00 00       	callq  b40 <print>
 7d7:	4c 89 ef             	mov    %r13,%rdi
 7da:	e8 21 ff ff ff       	callq  700 <puts@plt>
 7df:	4c 89 e6             	mov    %r12,%rsi
 7e2:	bf 01 00 00 00       	mov    $0x1,%edi
 7e7:	31 c0                	xor    %eax,%eax
 7e9:	e8 42 ff ff ff       	callq  730 <__printf_chk@plt>
 7ee:	31 c0                	xor    %eax,%eax
 7f0:	4c 89 f6             	mov    %r14,%rsi
 7f3:	48 89 ef             	mov    %rbp,%rdi
 7f6:	e8 45 ff ff ff       	callq  740 <__isoc99_scanf@plt>
 7fb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7ff:	83 f8 01             	cmp    $0x1,%eax
 802:	74 6c                	je     870 <main+0x100>
 804:	83 f8 02             	cmp    $0x2,%eax
 807:	74 0f                	je     818 <main+0xa8>
 809:	85 c0                	test   %eax,%eax
 80b:	75 ca                	jne    7d7 <main+0x67>
 80d:	31 ff                	xor    %edi,%edi
 80f:	e8 3c ff ff ff       	callq  750 <exit@plt>
 814:	0f 1f 40 00          	nopl   0x0(%rax)
 818:	48 8d 3d 14 05 00 00 	lea    0x514(%rip),%rdi        # d33 <_IO_stdin_used+0x103>
 81f:	e8 dc fe ff ff       	callq  700 <puts@plt>
 824:	48 8d 3d 1e 05 00 00 	lea    0x51e(%rip),%rdi        # d49 <_IO_stdin_used+0x119>
 82b:	4c 89 fe             	mov    %r15,%rsi
 82e:	31 c0                	xor    %eax,%eax
 830:	e8 0b ff ff ff       	callq  740 <__isoc99_scanf@plt>
 835:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 83a:	48 89 df             	mov    %rbx,%rdi
 83d:	e8 7e 02 00 00       	callq  ac0 <del>
 842:	48 89 c3             	mov    %rax,%rbx
 845:	8b 05 d1 17 20 00    	mov    0x2017d1(%rip),%eax        # 20201c <n>
 84b:	48 8d 35 c6 04 00 00 	lea    0x4c6(%rip),%rsi        # d18 <_IO_stdin_used+0xe8>
 852:	bf 01 00 00 00       	mov    $0x1,%edi
 857:	8d 50 ff             	lea    -0x1(%rax),%edx
 85a:	31 c0                	xor    %eax,%eax
 85c:	e8 cf fe ff ff       	callq  730 <__printf_chk@plt>
 861:	48 89 df             	mov    %rbx,%rdi
 864:	e8 d7 02 00 00       	callq  b40 <print>
 869:	e9 69 ff ff ff       	jmpq   7d7 <main+0x67>
 86e:	66 90                	xchg   %ax,%ax
 870:	31 c0                	xor    %eax,%eax
 872:	e8 a9 01 00 00       	callq  a20 <create>
 877:	48 89 df             	mov    %rbx,%rdi
 87a:	48 89 c6             	mov    %rax,%rsi
 87d:	e8 1e 01 00 00       	callq  9a0 <insert>
 882:	eb be                	jmp    842 <main+0xd2>
 884:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88b:	00 00 00 
 88e:	66 90                	xchg   %ax,%ax

0000000000000890 <_start>:
 890:	31 ed                	xor    %ebp,%ebp
 892:	49 89 d1             	mov    %rdx,%r9
 895:	5e                   	pop    %rsi
 896:	48 89 e2             	mov    %rsp,%rdx
 899:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 89d:	50                   	push   %rax
 89e:	54                   	push   %rsp
 89f:	4c 8d 05 7a 03 00 00 	lea    0x37a(%rip),%r8        # c20 <__libc_csu_fini>
 8a6:	48 8d 0d 03 03 00 00 	lea    0x303(%rip),%rcx        # bb0 <__libc_csu_init>
 8ad:	48 8d 3d bc fe ff ff 	lea    -0x144(%rip),%rdi        # 770 <main>
 8b4:	ff 15 26 17 20 00    	callq  *0x201726(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ba:	f4                   	hlt    
 8bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008c0 <deregister_tm_clones>:
 8c0:	48 8d 3d 49 17 20 00 	lea    0x201749(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 8c7:	55                   	push   %rbp
 8c8:	48 8d 05 41 17 20 00 	lea    0x201741(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
 8cf:	48 39 f8             	cmp    %rdi,%rax
 8d2:	48 89 e5             	mov    %rsp,%rbp
 8d5:	74 19                	je     8f0 <deregister_tm_clones+0x30>
 8d7:	48 8b 05 fa 16 20 00 	mov    0x2016fa(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8de:	48 85 c0             	test   %rax,%rax
 8e1:	74 0d                	je     8f0 <deregister_tm_clones+0x30>
 8e3:	5d                   	pop    %rbp
 8e4:	ff e0                	jmpq   *%rax
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <register_tm_clones>:
 900:	48 8d 3d 09 17 20 00 	lea    0x201709(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 907:	48 8d 35 02 17 20 00 	lea    0x201702(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 90e:	55                   	push   %rbp
 90f:	48 29 fe             	sub    %rdi,%rsi
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	48 c1 fe 03          	sar    $0x3,%rsi
 919:	48 89 f0             	mov    %rsi,%rax
 91c:	48 c1 e8 3f          	shr    $0x3f,%rax
 920:	48 01 c6             	add    %rax,%rsi
 923:	48 d1 fe             	sar    %rsi
 926:	74 18                	je     940 <register_tm_clones+0x40>
 928:	48 8b 05 c1 16 20 00 	mov    0x2016c1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 92f:	48 85 c0             	test   %rax,%rax
 932:	74 0c                	je     940 <register_tm_clones+0x40>
 934:	5d                   	pop    %rbp
 935:	ff e0                	jmpq   *%rax
 937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 93e:	00 00 
 940:	5d                   	pop    %rbp
 941:	c3                   	retq   
 942:	0f 1f 40 00          	nopl   0x0(%rax)
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <__do_global_dtors_aux>:
 950:	80 3d c1 16 20 00 00 	cmpb   $0x0,0x2016c1(%rip)        # 202018 <completed.7698>
 957:	75 2f                	jne    988 <__do_global_dtors_aux+0x38>
 959:	48 83 3d 97 16 20 00 	cmpq   $0x0,0x201697(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 960:	00 
 961:	55                   	push   %rbp
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 0c                	je     973 <__do_global_dtors_aux+0x23>
 967:	48 8b 3d 9a 16 20 00 	mov    0x20169a(%rip),%rdi        # 202008 <__dso_handle>
 96e:	e8 ed fd ff ff       	callq  760 <__cxa_finalize@plt>
 973:	e8 48 ff ff ff       	callq  8c0 <deregister_tm_clones>
 978:	c6 05 99 16 20 00 01 	movb   $0x1,0x201699(%rip)        # 202018 <completed.7698>
 97f:	5d                   	pop    %rbp
 980:	c3                   	retq   
 981:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 988:	f3 c3                	repz retq 
 98a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000990 <frame_dummy>:
 990:	55                   	push   %rbp
 991:	48 89 e5             	mov    %rsp,%rbp
 994:	5d                   	pop    %rbp
 995:	e9 66 ff ff ff       	jmpq   900 <register_tm_clones>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <insert>:
 9a0:	48 85 ff             	test   %rdi,%rdi
 9a3:	74 5b                	je     a00 <insert+0x60>
 9a5:	48 8b 0e             	mov    (%rsi),%rcx
 9a8:	48 89 fa             	mov    %rdi,%rdx
 9ab:	eb 12                	jmp    9bf <insert+0x1f>
 9ad:	0f 1f 00             	nopl   (%rax)
 9b0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 9b4:	49 89 d0             	mov    %rdx,%r8
 9b7:	48 85 c0             	test   %rax,%rax
 9ba:	74 24                	je     9e0 <insert+0x40>
 9bc:	48 89 c2             	mov    %rax,%rdx
 9bf:	48 3b 0a             	cmp    (%rdx),%rcx
 9c2:	7f ec                	jg     9b0 <insert+0x10>
 9c4:	48 39 fa             	cmp    %rdi,%rdx
 9c7:	48 89 f0             	mov    %rsi,%rax
 9ca:	74 07                	je     9d3 <insert+0x33>
 9cc:	49 89 70 10          	mov    %rsi,0x10(%r8)
 9d0:	48 89 f8             	mov    %rdi,%rax
 9d3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9d7:	83 05 3e 16 20 00 01 	addl   $0x1,0x20163e(%rip)        # 20201c <n>
 9de:	c3                   	retq   
 9df:	90                   	nop
 9e0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 9e4:	48 89 f8             	mov    %rdi,%rax
 9e7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9ee:	00 
 9ef:	83 05 26 16 20 00 01 	addl   $0x1,0x201626(%rip)        # 20201c <n>
 9f6:	c3                   	retq   
 9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9fe:	00 00 
 a00:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a07:	00 
 a08:	48 89 f0             	mov    %rsi,%rax
 a0b:	83 05 0a 16 20 00 01 	addl   $0x1,0x20160a(%rip)        # 20201c <n>
 a12:	c3                   	retq   
 a13:	0f 1f 00             	nopl   (%rax)
 a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a1d:	00 00 00 

0000000000000a20 <create>:
 a20:	41 54                	push   %r12
 a22:	48 8d 3d 0f 02 00 00 	lea    0x20f(%rip),%rdi        # c38 <_IO_stdin_used+0x8>
 a29:	55                   	push   %rbp
 a2a:	53                   	push   %rbx
 a2b:	31 ed                	xor    %ebp,%ebp
 a2d:	e8 ce fc ff ff       	callq  700 <puts@plt>
 a32:	48 8d 3d 1f 02 00 00 	lea    0x21f(%rip),%rdi        # c58 <_IO_stdin_used+0x28>
 a39:	e8 c2 fc ff ff       	callq  700 <puts@plt>
 a3e:	bf 18 00 00 00       	mov    $0x18,%edi
 a43:	e8 d8 fc ff ff       	callq  720 <malloc@plt>
 a48:	48 8d 3d 20 02 00 00 	lea    0x220(%rip),%rdi        # c6f <_IO_stdin_used+0x3f>
 a4f:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a53:	48 89 c3             	mov    %rax,%rbx
 a56:	48 89 c6             	mov    %rax,%rsi
 a59:	31 c0                	xor    %eax,%eax
 a5b:	e8 e0 fc ff ff       	callq  740 <__isoc99_scanf@plt>
 a60:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a64:	74 3c                	je     aa2 <create+0x82>
 a66:	4c 8d 25 02 02 00 00 	lea    0x202(%rip),%r12        # c6f <_IO_stdin_used+0x3f>
 a6d:	0f 1f 00             	nopl   (%rax)
 a70:	48 89 de             	mov    %rbx,%rsi
 a73:	48 89 ef             	mov    %rbp,%rdi
 a76:	e8 25 ff ff ff       	callq  9a0 <insert>
 a7b:	bf 18 00 00 00       	mov    $0x18,%edi
 a80:	48 89 c5             	mov    %rax,%rbp
 a83:	e8 98 fc ff ff       	callq  720 <malloc@plt>
 a88:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a8c:	48 89 c3             	mov    %rax,%rbx
 a8f:	48 89 c6             	mov    %rax,%rsi
 a92:	4c 89 e7             	mov    %r12,%rdi
 a95:	31 c0                	xor    %eax,%eax
 a97:	e8 a4 fc ff ff       	callq  740 <__isoc99_scanf@plt>
 a9c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 aa0:	75 ce                	jne    a70 <create+0x50>
 aa2:	48 89 df             	mov    %rbx,%rdi
 aa5:	e8 46 fc ff ff       	callq  6f0 <free@plt>
 aaa:	48 89 e8             	mov    %rbp,%rax
 aad:	5b                   	pop    %rbx
 aae:	5d                   	pop    %rbp
 aaf:	41 5c                	pop    %r12
 ab1:	c3                   	retq   
 ab2:	0f 1f 40 00          	nopl   0x0(%rax)
 ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 abd:	00 00 00 

0000000000000ac0 <del>:
 ac0:	55                   	push   %rbp
 ac1:	53                   	push   %rbx
 ac2:	48 89 fb             	mov    %rdi,%rbx
 ac5:	48 83 ec 08          	sub    $0x8,%rsp
 ac9:	48 85 ff             	test   %rdi,%rdi
 acc:	75 11                	jne    adf <del+0x1f>
 ace:	eb 59                	jmp    b29 <del+0x69>
 ad0:	48 8b 47 10          	mov    0x10(%rdi),%rax
 ad4:	48 89 fa             	mov    %rdi,%rdx
 ad7:	48 85 c0             	test   %rax,%rax
 ada:	74 34                	je     b10 <del+0x50>
 adc:	48 89 c7             	mov    %rax,%rdi
 adf:	48 39 37             	cmp    %rsi,(%rdi)
 ae2:	7c ec                	jl     ad0 <del+0x10>
 ae4:	75 2a                	jne    b10 <del+0x50>
 ae6:	48 39 df             	cmp    %rbx,%rdi
 ae9:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
 aed:	74 07                	je     af6 <del+0x36>
 aef:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 af3:	48 89 dd             	mov    %rbx,%rbp
 af6:	e8 f5 fb ff ff       	callq  6f0 <free@plt>
 afb:	83 2d 1a 15 20 00 01 	subl   $0x1,0x20151a(%rip)        # 20201c <n>
 b02:	48 83 c4 08          	add    $0x8,%rsp
 b06:	48 89 e8             	mov    %rbp,%rax
 b09:	5b                   	pop    %rbx
 b0a:	5d                   	pop    %rbp
 b0b:	c3                   	retq   
 b0c:	0f 1f 40 00          	nopl   0x0(%rax)
 b10:	48 8d 3d 6d 01 00 00 	lea    0x16d(%rip),%rdi        # c84 <_IO_stdin_used+0x54>
 b17:	48 89 dd             	mov    %rbx,%rbp
 b1a:	e8 e1 fb ff ff       	callq  700 <puts@plt>
 b1f:	48 83 c4 08          	add    $0x8,%rsp
 b23:	48 89 e8             	mov    %rbp,%rax
 b26:	5b                   	pop    %rbx
 b27:	5d                   	pop    %rbp
 b28:	c3                   	retq   
 b29:	48 8d 3d 46 01 00 00 	lea    0x146(%rip),%rdi        # c76 <_IO_stdin_used+0x46>
 b30:	31 ed                	xor    %ebp,%ebp
 b32:	e8 c9 fb ff ff       	callq  700 <puts@plt>
 b37:	eb c9                	jmp    b02 <del+0x42>
 b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b40 <print>:
 b40:	55                   	push   %rbp
 b41:	53                   	push   %rbx
 b42:	48 83 ec 08          	sub    $0x8,%rsp
 b46:	48 85 ff             	test   %rdi,%rdi
 b49:	74 55                	je     ba0 <print+0x60>
 b4b:	48 8d 2d 49 01 00 00 	lea    0x149(%rip),%rbp        # c9b <_IO_stdin_used+0x6b>
 b52:	48 89 fb             	mov    %rdi,%rbx
 b55:	0f 1f 00             	nopl   (%rax)
 b58:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b5c:	48 8b 13             	mov    (%rbx),%rdx
 b5f:	48 89 ee             	mov    %rbp,%rsi
 b62:	bf 01 00 00 00       	mov    $0x1,%edi
 b67:	b8 01 00 00 00       	mov    $0x1,%eax
 b6c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b71:	e8 ba fb ff ff       	callq  730 <__printf_chk@plt>
 b76:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b7a:	48 85 db             	test   %rbx,%rbx
 b7d:	75 d9                	jne    b58 <print+0x18>
 b7f:	48 8b 35 8a 14 20 00 	mov    0x20148a(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 b86:	48 83 c4 08          	add    $0x8,%rsp
 b8a:	bf 0a 00 00 00       	mov    $0xa,%edi
 b8f:	5b                   	pop    %rbx
 b90:	5d                   	pop    %rbp
 b91:	e9 7a fb ff ff       	jmpq   710 <_IO_putc@plt>
 b96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b9d:	00 00 00 
 ba0:	48 8d 3d fe 00 00 00 	lea    0xfe(%rip),%rdi        # ca5 <_IO_stdin_used+0x75>
 ba7:	e8 54 fb ff ff       	callq  700 <puts@plt>
 bac:	eb d1                	jmp    b7f <print+0x3f>
 bae:	66 90                	xchg   %ax,%ax

0000000000000bb0 <__libc_csu_init>:
 bb0:	41 57                	push   %r15
 bb2:	41 56                	push   %r14
 bb4:	49 89 d7             	mov    %rdx,%r15
 bb7:	41 55                	push   %r13
 bb9:	41 54                	push   %r12
 bbb:	4c 8d 25 c6 11 20 00 	lea    0x2011c6(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 bc2:	55                   	push   %rbp
 bc3:	48 8d 2d c6 11 20 00 	lea    0x2011c6(%rip),%rbp        # 201d90 <__init_array_end>
 bca:	53                   	push   %rbx
 bcb:	41 89 fd             	mov    %edi,%r13d
 bce:	49 89 f6             	mov    %rsi,%r14
 bd1:	4c 29 e5             	sub    %r12,%rbp
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 c1 fd 03          	sar    $0x3,%rbp
 bdc:	e8 e7 fa ff ff       	callq  6c8 <_init>
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
