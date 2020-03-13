
input/19020031114_2.elf:     file format elf64-x86-64


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
 750:	41 55                	push   %r13
 752:	41 54                	push   %r12
 754:	48 8d 3d 00 06 00 00 	lea    0x600(%rip),%rdi        # d5b <_IO_stdin_used+0x7b>
 75b:	55                   	push   %rbp
 75c:	53                   	push   %rbx
 75d:	48 83 ec 28          	sub    $0x28,%rsp
 761:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 768:	00 00 
 76a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 76f:	31 c0                	xor    %eax,%eax
 771:	e8 7a ff ff ff       	callq  6f0 <puts@plt>
 776:	48 8d 3d 6b 06 00 00 	lea    0x66b(%rip),%rdi        # de8 <_IO_stdin_used+0x108>
 77d:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
 782:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 787:	e8 64 ff ff ff       	callq  6f0 <puts@plt>
 78c:	31 ff                	xor    %edi,%edi
 78e:	e8 cd 02 00 00       	callq  a60 <create>
 793:	48 89 c7             	mov    %rax,%rdi
 796:	e8 25 04 00 00       	callq  bc0 <print>
 79b:	48 89 c3             	mov    %rax,%rbx
 79e:	eb 1e                	jmp    7be <main+0x6e>
 7a0:	83 f8 02             	cmp    $0x2,%eax
 7a3:	0f 84 d7 00 00 00    	je     880 <main+0x130>
 7a9:	bf 0a 00 00 00       	mov    $0xa,%edi
 7ae:	e8 2d ff ff ff       	callq  6e0 <putchar@plt>
 7b3:	48 89 df             	mov    %rbx,%rdi
 7b6:	e8 05 04 00 00       	callq  bc0 <print>
 7bb:	48 89 c3             	mov    %rax,%rbx
 7be:	48 8d 3d ad 05 00 00 	lea    0x5ad(%rip),%rdi        # d72 <_IO_stdin_used+0x92>
 7c5:	e8 26 ff ff ff       	callq  6f0 <puts@plt>
 7ca:	48 8d 35 bd 05 00 00 	lea    0x5bd(%rip),%rsi        # d8e <_IO_stdin_used+0xae>
 7d1:	bf 01 00 00 00       	mov    $0x1,%edi
 7d6:	31 c0                	xor    %eax,%eax
 7d8:	e8 43 ff ff ff       	callq  720 <__printf_chk@plt>
 7dd:	48 8d 3d ba 05 00 00 	lea    0x5ba(%rip),%rdi        # d9e <_IO_stdin_used+0xbe>
 7e4:	31 c0                	xor    %eax,%eax
 7e6:	48 89 ee             	mov    %rbp,%rsi
 7e9:	e8 42 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 7ee:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7f2:	85 c0                	test   %eax,%eax
 7f4:	74 6a                	je     860 <main+0x110>
 7f6:	83 f8 01             	cmp    $0x1,%eax
 7f9:	75 a5                	jne    7a0 <main+0x50>
 7fb:	48 8d 35 9f 05 00 00 	lea    0x59f(%rip),%rsi        # da1 <_IO_stdin_used+0xc1>
 802:	bf 01 00 00 00       	mov    $0x1,%edi
 807:	31 c0                	xor    %eax,%eax
 809:	e8 12 ff ff ff       	callq  720 <__printf_chk@plt>
 80e:	bf 18 00 00 00       	mov    $0x18,%edi
 813:	e8 f8 fe ff ff       	callq  710 <malloc@plt>
 818:	48 8d 3d c5 04 00 00 	lea    0x4c5(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 81f:	48 8d 50 08          	lea    0x8(%rax),%rdx
 823:	49 89 c4             	mov    %rax,%r12
 826:	48 89 c6             	mov    %rax,%rsi
 829:	31 c0                	xor    %eax,%eax
 82b:	e8 00 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 830:	4c 89 e6             	mov    %r12,%rsi
 833:	48 89 df             	mov    %rbx,%rdi
 836:	e8 95 01 00 00       	callq  9d0 <insert>
 83b:	49 8b 14 24          	mov    (%r12),%rdx
 83f:	48 8d 35 78 05 00 00 	lea    0x578(%rip),%rsi        # dbe <_IO_stdin_used+0xde>
 846:	48 89 c3             	mov    %rax,%rbx
 849:	bf 01 00 00 00       	mov    $0x1,%edi
 84e:	31 c0                	xor    %eax,%eax
 850:	e8 cb fe ff ff       	callq  720 <__printf_chk@plt>
 855:	e9 4f ff ff ff       	jmpq   7a9 <main+0x59>
 85a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 860:	31 c0                	xor    %eax,%eax
 862:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 867:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 86e:	00 00 
 870:	75 47                	jne    8b9 <main+0x169>
 872:	48 83 c4 28          	add    $0x28,%rsp
 876:	5b                   	pop    %rbx
 877:	5d                   	pop    %rbp
 878:	41 5c                	pop    %r12
 87a:	41 5d                	pop    %r13
 87c:	c3                   	retq   
 87d:	0f 1f 00             	nopl   (%rax)
 880:	48 8d 35 43 05 00 00 	lea    0x543(%rip),%rsi        # dca <_IO_stdin_used+0xea>
 887:	bf 01 00 00 00       	mov    $0x1,%edi
 88c:	31 c0                	xor    %eax,%eax
 88e:	e8 8d fe ff ff       	callq  720 <__printf_chk@plt>
 893:	48 8d 3d 43 05 00 00 	lea    0x543(%rip),%rdi        # ddd <_IO_stdin_used+0xfd>
 89a:	4c 89 ee             	mov    %r13,%rsi
 89d:	31 c0                	xor    %eax,%eax
 89f:	e8 8c fe ff ff       	callq  730 <__isoc99_scanf@plt>
 8a4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 8a9:	48 89 df             	mov    %rbx,%rdi
 8ac:	e8 3f 02 00 00       	callq  af0 <del>
 8b1:	48 89 c3             	mov    %rax,%rbx
 8b4:	e9 f0 fe ff ff       	jmpq   7a9 <main+0x59>
 8b9:	e8 42 fe ff ff       	callq  700 <__stack_chk_fail@plt>
 8be:	66 90                	xchg   %ax,%ax

00000000000008c0 <_start>:
 8c0:	31 ed                	xor    %ebp,%ebp
 8c2:	49 89 d1             	mov    %rdx,%r9
 8c5:	5e                   	pop    %rsi
 8c6:	48 89 e2             	mov    %rsp,%rdx
 8c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8cd:	50                   	push   %rax
 8ce:	54                   	push   %rsp
 8cf:	4c 8d 05 fa 03 00 00 	lea    0x3fa(%rip),%r8        # cd0 <__libc_csu_fini>
 8d6:	48 8d 0d 83 03 00 00 	lea    0x383(%rip),%rcx        # c60 <__libc_csu_init>
 8dd:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 750 <main>
 8e4:	ff 15 f6 16 20 00    	callq  *0x2016f6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ea:	f4                   	hlt    
 8eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008f0 <deregister_tm_clones>:
 8f0:	48 8d 3d 19 17 20 00 	lea    0x201719(%rip),%rdi        # 202010 <__TMC_END__>
 8f7:	55                   	push   %rbp
 8f8:	48 8d 05 11 17 20 00 	lea    0x201711(%rip),%rax        # 202010 <__TMC_END__>
 8ff:	48 39 f8             	cmp    %rdi,%rax
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	74 19                	je     920 <deregister_tm_clones+0x30>
 907:	48 8b 05 ca 16 20 00 	mov    0x2016ca(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 90e:	48 85 c0             	test   %rax,%rax
 911:	74 0d                	je     920 <deregister_tm_clones+0x30>
 913:	5d                   	pop    %rbp
 914:	ff e0                	jmpq   *%rax
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 
 920:	5d                   	pop    %rbp
 921:	c3                   	retq   
 922:	0f 1f 40 00          	nopl   0x0(%rax)
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 

0000000000000930 <register_tm_clones>:
 930:	48 8d 3d d9 16 20 00 	lea    0x2016d9(%rip),%rdi        # 202010 <__TMC_END__>
 937:	48 8d 35 d2 16 20 00 	lea    0x2016d2(%rip),%rsi        # 202010 <__TMC_END__>
 93e:	55                   	push   %rbp
 93f:	48 29 fe             	sub    %rdi,%rsi
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	48 c1 fe 03          	sar    $0x3,%rsi
 949:	48 89 f0             	mov    %rsi,%rax
 94c:	48 c1 e8 3f          	shr    $0x3f,%rax
 950:	48 01 c6             	add    %rax,%rsi
 953:	48 d1 fe             	sar    %rsi
 956:	74 18                	je     970 <register_tm_clones+0x40>
 958:	48 8b 05 91 16 20 00 	mov    0x201691(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 95f:	48 85 c0             	test   %rax,%rax
 962:	74 0c                	je     970 <register_tm_clones+0x40>
 964:	5d                   	pop    %rbp
 965:	ff e0                	jmpq   *%rax
 967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 96e:	00 00 
 970:	5d                   	pop    %rbp
 971:	c3                   	retq   
 972:	0f 1f 40 00          	nopl   0x0(%rax)
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 

0000000000000980 <__do_global_dtors_aux>:
 980:	80 3d 89 16 20 00 00 	cmpb   $0x0,0x201689(%rip)        # 202010 <__TMC_END__>
 987:	75 2f                	jne    9b8 <__do_global_dtors_aux+0x38>
 989:	48 83 3d 67 16 20 00 	cmpq   $0x0,0x201667(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 990:	00 
 991:	55                   	push   %rbp
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	74 0c                	je     9a3 <__do_global_dtors_aux+0x23>
 997:	48 8b 3d 6a 16 20 00 	mov    0x20166a(%rip),%rdi        # 202008 <__dso_handle>
 99e:	e8 9d fd ff ff       	callq  740 <__cxa_finalize@plt>
 9a3:	e8 48 ff ff ff       	callq  8f0 <deregister_tm_clones>
 9a8:	c6 05 61 16 20 00 01 	movb   $0x1,0x201661(%rip)        # 202010 <__TMC_END__>
 9af:	5d                   	pop    %rbp
 9b0:	c3                   	retq   
 9b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9b8:	f3 c3                	repz retq 
 9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009c0 <frame_dummy>:
 9c0:	55                   	push   %rbp
 9c1:	48 89 e5             	mov    %rsp,%rbp
 9c4:	5d                   	pop    %rbp
 9c5:	e9 66 ff ff ff       	jmpq   930 <register_tm_clones>
 9ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009d0 <insert>:
 9d0:	48 85 ff             	test   %rdi,%rdi
 9d3:	74 5b                	je     a30 <insert+0x60>
 9d5:	4c 8b 06             	mov    (%rsi),%r8
 9d8:	48 89 fa             	mov    %rdi,%rdx
 9db:	45 31 c9             	xor    %r9d,%r9d
 9de:	eb 0f                	jmp    9ef <insert+0x1f>
 9e0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9e4:	49 89 d1             	mov    %rdx,%r9
 9e7:	48 85 c9             	test   %rcx,%rcx
 9ea:	74 24                	je     a10 <insert+0x40>
 9ec:	48 89 ca             	mov    %rcx,%rdx
 9ef:	4c 39 02             	cmp    %r8,(%rdx)
 9f2:	7c ec                	jl     9e0 <insert+0x10>
 9f4:	48 39 fa             	cmp    %rdi,%rdx
 9f7:	74 4f                	je     a48 <insert+0x78>
 9f9:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 9fd:	48 89 f8             	mov    %rdi,%rax
 a00:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a04:	83 05 09 16 20 00 01 	addl   $0x1,0x201609(%rip)        # 202014 <n>
 a0b:	c3                   	retq   
 a0c:	0f 1f 40 00          	nopl   0x0(%rax)
 a10:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a14:	48 89 f8             	mov    %rdi,%rax
 a17:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a1e:	00 
 a1f:	83 05 ee 15 20 00 01 	addl   $0x1,0x2015ee(%rip)        # 202014 <n>
 a26:	c3                   	retq   
 a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a2e:	00 00 
 a30:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a37:	00 
 a38:	48 89 f0             	mov    %rsi,%rax
 a3b:	83 05 d2 15 20 00 01 	addl   $0x1,0x2015d2(%rip)        # 202014 <n>
 a42:	c3                   	retq   
 a43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a48:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a4c:	48 89 f0             	mov    %rsi,%rax
 a4f:	83 05 be 15 20 00 01 	addl   $0x1,0x2015be(%rip)        # 202014 <n>
 a56:	c3                   	retq   
 a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a5e:	00 00 

0000000000000a60 <create>:
 a60:	41 54                	push   %r12
 a62:	55                   	push   %rbp
 a63:	48 89 fd             	mov    %rdi,%rbp
 a66:	53                   	push   %rbx
 a67:	bf 18 00 00 00       	mov    $0x18,%edi
 a6c:	e8 9f fc ff ff       	callq  710 <malloc@plt>
 a71:	48 8d 3d 6c 02 00 00 	lea    0x26c(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 a78:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a7c:	48 89 c3             	mov    %rax,%rbx
 a7f:	48 89 c6             	mov    %rax,%rsi
 a82:	31 c0                	xor    %eax,%eax
 a84:	e8 a7 fc ff ff       	callq  730 <__isoc99_scanf@plt>
 a89:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a8d:	74 43                	je     ad2 <create+0x72>
 a8f:	4c 8d 25 4e 02 00 00 	lea    0x24e(%rip),%r12        # ce4 <_IO_stdin_used+0x4>
 a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a9d:	00 00 00 
 aa0:	48 89 de             	mov    %rbx,%rsi
 aa3:	48 89 ef             	mov    %rbp,%rdi
 aa6:	e8 25 ff ff ff       	callq  9d0 <insert>
 aab:	bf 18 00 00 00       	mov    $0x18,%edi
 ab0:	48 89 c5             	mov    %rax,%rbp
 ab3:	e8 58 fc ff ff       	callq  710 <malloc@plt>
 ab8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 abc:	48 89 c3             	mov    %rax,%rbx
 abf:	48 89 c6             	mov    %rax,%rsi
 ac2:	4c 89 e7             	mov    %r12,%rdi
 ac5:	31 c0                	xor    %eax,%eax
 ac7:	e8 64 fc ff ff       	callq  730 <__isoc99_scanf@plt>
 acc:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ad0:	75 ce                	jne    aa0 <create+0x40>
 ad2:	48 89 df             	mov    %rbx,%rdi
 ad5:	e8 f6 fb ff ff       	callq  6d0 <free@plt>
 ada:	bf 0a 00 00 00       	mov    $0xa,%edi
 adf:	e8 fc fb ff ff       	callq  6e0 <putchar@plt>
 ae4:	48 89 e8             	mov    %rbp,%rax
 ae7:	5b                   	pop    %rbx
 ae8:	5d                   	pop    %rbp
 ae9:	41 5c                	pop    %r12
 aeb:	c3                   	retq   
 aec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000af0 <del>:
 af0:	55                   	push   %rbp
 af1:	53                   	push   %rbx
 af2:	48 89 f8             	mov    %rdi,%rax
 af5:	48 89 fb             	mov    %rdi,%rbx
 af8:	48 83 ec 08          	sub    $0x8,%rsp
 afc:	48 85 ff             	test   %rdi,%rdi
 aff:	75 1e                	jne    b1f <del+0x2f>
 b01:	e9 a9 00 00 00       	jmpq   baf <del+0xbf>
 b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b0d:	00 00 00 
 b10:	48 8b 48 10          	mov    0x10(%rax),%rcx
 b14:	48 89 c2             	mov    %rax,%rdx
 b17:	48 85 c9             	test   %rcx,%rcx
 b1a:	74 54                	je     b70 <del+0x80>
 b1c:	48 89 c8             	mov    %rcx,%rax
 b1f:	48 39 30             	cmp    %rsi,(%rax)
 b22:	7c ec                	jl     b10 <del+0x20>
 b24:	75 4a                	jne    b70 <del+0x80>
 b26:	48 39 d8             	cmp    %rbx,%rax
 b29:	48 8b 68 10          	mov    0x10(%rax),%rbp
 b2d:	74 61                	je     b90 <del+0xa0>
 b2f:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 b33:	48 89 f2             	mov    %rsi,%rdx
 b36:	48 8d 35 bd 01 00 00 	lea    0x1bd(%rip),%rsi        # cfa <_IO_stdin_used+0x1a>
 b3d:	bf 01 00 00 00       	mov    $0x1,%edi
 b42:	31 c0                	xor    %eax,%eax
 b44:	48 89 dd             	mov    %rbx,%rbp
 b47:	e8 d4 fb ff ff       	callq  720 <__printf_chk@plt>
 b4c:	83 2d c1 14 20 00 01 	subl   $0x1,0x2014c1(%rip)        # 202014 <n>
 b53:	bf 0a 00 00 00       	mov    $0xa,%edi
 b58:	e8 83 fb ff ff       	callq  6e0 <putchar@plt>
 b5d:	48 83 c4 08          	add    $0x8,%rsp
 b61:	48 89 e8             	mov    %rbp,%rax
 b64:	5b                   	pop    %rbx
 b65:	5d                   	pop    %rbp
 b66:	c3                   	retq   
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 
 b70:	48 89 f2             	mov    %rsi,%rdx
 b73:	48 8d 35 8e 01 00 00 	lea    0x18e(%rip),%rsi        # d08 <_IO_stdin_used+0x28>
 b7a:	bf 01 00 00 00       	mov    $0x1,%edi
 b7f:	31 c0                	xor    %eax,%eax
 b81:	48 89 dd             	mov    %rbx,%rbp
 b84:	e8 97 fb ff ff       	callq  720 <__printf_chk@plt>
 b89:	eb c8                	jmp    b53 <del+0x63>
 b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b90:	48 89 f2             	mov    %rsi,%rdx
 b93:	48 8d 35 60 01 00 00 	lea    0x160(%rip),%rsi        # cfa <_IO_stdin_used+0x1a>
 b9a:	bf 01 00 00 00       	mov    $0x1,%edi
 b9f:	31 c0                	xor    %eax,%eax
 ba1:	e8 7a fb ff ff       	callq  720 <__printf_chk@plt>
 ba6:	83 2d 67 14 20 00 01 	subl   $0x1,0x201467(%rip)        # 202014 <n>
 bad:	eb a4                	jmp    b53 <del+0x63>
 baf:	48 8d 3d 36 01 00 00 	lea    0x136(%rip),%rdi        # cec <_IO_stdin_used+0xc>
 bb6:	31 ed                	xor    %ebp,%ebp
 bb8:	e8 33 fb ff ff       	callq  6f0 <puts@plt>
 bbd:	eb 94                	jmp    b53 <del+0x63>
 bbf:	90                   	nop

0000000000000bc0 <print>:
 bc0:	41 55                	push   %r13
 bc2:	41 54                	push   %r12
 bc4:	49 89 fd             	mov    %rdi,%r13
 bc7:	55                   	push   %rbp
 bc8:	53                   	push   %rbx
 bc9:	48 83 ec 08          	sub    $0x8,%rsp
 bcd:	48 85 ff             	test   %rdi,%rdi
 bd0:	74 7e                	je     c50 <print+0x90>
 bd2:	8b 15 3c 14 20 00    	mov    0x20143c(%rip),%edx        # 202014 <n>
 bd8:	48 8d 35 55 01 00 00 	lea    0x155(%rip),%rsi        # d34 <_IO_stdin_used+0x54>
 bdf:	31 c0                	xor    %eax,%eax
 be1:	bf 01 00 00 00       	mov    $0x1,%edi
 be6:	e8 35 fb ff ff       	callq  720 <__printf_chk@plt>
 beb:	8b 05 23 14 20 00    	mov    0x201423(%rip),%eax        # 202014 <n>
 bf1:	85 c0                	test   %eax,%eax
 bf3:	7e 3c                	jle    c31 <print+0x71>
 bf5:	4c 8d 25 54 01 00 00 	lea    0x154(%rip),%r12        # d50 <_IO_stdin_used+0x70>
 bfc:	4c 89 eb             	mov    %r13,%rbx
 bff:	31 ed                	xor    %ebp,%ebp
 c01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c08:	48 8b 13             	mov    (%rbx),%rdx
 c0b:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
 c10:	4c 89 e6             	mov    %r12,%rsi
 c13:	bf 01 00 00 00       	mov    $0x1,%edi
 c18:	b8 01 00 00 00       	mov    $0x1,%eax
 c1d:	83 c5 01             	add    $0x1,%ebp
 c20:	e8 fb fa ff ff       	callq  720 <__printf_chk@plt>
 c25:	39 2d e9 13 20 00    	cmp    %ebp,0x2013e9(%rip)        # 202014 <n>
 c2b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c2f:	7f d7                	jg     c08 <print+0x48>
 c31:	bf 0a 00 00 00       	mov    $0xa,%edi
 c36:	e8 a5 fa ff ff       	callq  6e0 <putchar@plt>
 c3b:	48 83 c4 08          	add    $0x8,%rsp
 c3f:	4c 89 e8             	mov    %r13,%rax
 c42:	5b                   	pop    %rbx
 c43:	5d                   	pop    %rbp
 c44:	41 5c                	pop    %r12
 c46:	41 5d                	pop    %r13
 c48:	c3                   	retq   
 c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c50:	48 8d 3d c6 00 00 00 	lea    0xc6(%rip),%rdi        # d1d <_IO_stdin_used+0x3d>
 c57:	e8 94 fa ff ff       	callq  6f0 <puts@plt>
 c5c:	eb d3                	jmp    c31 <print+0x71>
 c5e:	66 90                	xchg   %ax,%ax

0000000000000c60 <__libc_csu_init>:
 c60:	41 57                	push   %r15
 c62:	41 56                	push   %r14
 c64:	49 89 d7             	mov    %rdx,%r15
 c67:	41 55                	push   %r13
 c69:	41 54                	push   %r12
 c6b:	4c 8d 25 16 11 20 00 	lea    0x201116(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c72:	55                   	push   %rbp
 c73:	48 8d 2d 16 11 20 00 	lea    0x201116(%rip),%rbp        # 201d90 <__init_array_end>
 c7a:	53                   	push   %rbx
 c7b:	41 89 fd             	mov    %edi,%r13d
 c7e:	49 89 f6             	mov    %rsi,%r14
 c81:	4c 29 e5             	sub    %r12,%rbp
 c84:	48 83 ec 08          	sub    $0x8,%rsp
 c88:	48 c1 fd 03          	sar    $0x3,%rbp
 c8c:	e8 17 fa ff ff       	callq  6a8 <_init>
 c91:	48 85 ed             	test   %rbp,%rbp
 c94:	74 20                	je     cb6 <__libc_csu_init+0x56>
 c96:	31 db                	xor    %ebx,%ebx
 c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c9f:	00 
 ca0:	4c 89 fa             	mov    %r15,%rdx
 ca3:	4c 89 f6             	mov    %r14,%rsi
 ca6:	44 89 ef             	mov    %r13d,%edi
 ca9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cad:	48 83 c3 01          	add    $0x1,%rbx
 cb1:	48 39 dd             	cmp    %rbx,%rbp
 cb4:	75 ea                	jne    ca0 <__libc_csu_init+0x40>
 cb6:	48 83 c4 08          	add    $0x8,%rsp
 cba:	5b                   	pop    %rbx
 cbb:	5d                   	pop    %rbp
 cbc:	41 5c                	pop    %r12
 cbe:	41 5d                	pop    %r13
 cc0:	41 5e                	pop    %r14
 cc2:	41 5f                	pop    %r15
 cc4:	c3                   	retq   
 cc5:	90                   	nop
 cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ccd:	00 00 00 

0000000000000cd0 <__libc_csu_fini>:
 cd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cd4 <_fini>:
 cd4:	48 83 ec 08          	sub    $0x8,%rsp
 cd8:	48 83 c4 08          	add    $0x8,%rsp
 cdc:	c3                   	retq   
