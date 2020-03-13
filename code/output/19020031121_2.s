
input/19020031121_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006e8 <_init>:
 6e8:	48 83 ec 08          	sub    $0x8,%rsp
 6ec:	48 8b 05 f5 18 20 00 	mov    0x2018f5(%rip),%rax        # 201fe8 <__gmon_start__>
 6f3:	48 85 c0             	test   %rax,%rax
 6f6:	74 02                	je     6fa <_init+0x12>
 6f8:	ff d0                	callq  *%rax
 6fa:	48 83 c4 08          	add    $0x8,%rsp
 6fe:	c3                   	retq   

Disassembly of section .plt:

0000000000000700 <.plt>:
 700:	ff 35 8a 18 20 00    	pushq  0x20188a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 706:	ff 25 8c 18 20 00    	jmpq   *0x20188c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 70c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000710 <free@plt>:
 710:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 716:	68 00 00 00 00       	pushq  $0x0
 71b:	e9 e0 ff ff ff       	jmpq   700 <.plt>

0000000000000720 <puts@plt>:
 720:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 726:	68 01 00 00 00       	pushq  $0x1
 72b:	e9 d0 ff ff ff       	jmpq   700 <.plt>

0000000000000730 <__stack_chk_fail@plt>:
 730:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 736:	68 02 00 00 00       	pushq  $0x2
 73b:	e9 c0 ff ff ff       	jmpq   700 <.plt>

0000000000000740 <_IO_putc@plt>:
 740:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fb8 <_IO_putc@GLIBC_2.2.5>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <malloc@plt>:
 750:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 756:	68 04 00 00 00       	pushq  $0x4
 75b:	e9 a0 ff ff ff       	jmpq   700 <.plt>

0000000000000760 <__printf_chk@plt>:
 760:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 766:	68 05 00 00 00       	pushq  $0x5
 76b:	e9 90 ff ff ff       	jmpq   700 <.plt>

0000000000000770 <__isoc99_scanf@plt>:
 770:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 776:	68 06 00 00 00       	pushq  $0x6
 77b:	e9 80 ff ff ff       	jmpq   700 <.plt>

Disassembly of section .plt.got:

0000000000000780 <__cxa_finalize@plt>:
 780:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 786:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000790 <main>:
 790:	41 55                	push   %r13
 792:	41 54                	push   %r12
 794:	48 8d 3d 75 05 00 00 	lea    0x575(%rip),%rdi        # d10 <_IO_stdin_used+0x70>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d b3 05 00 00 	lea    0x5b3(%rip),%rdi        # d70 <_IO_stdin_used+0xd0>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	31 c0                	xor    %eax,%eax
 7ce:	e8 cd 02 00 00       	callq  aa0 <create>
 7d3:	48 89 c7             	mov    %rax,%rdi
 7d6:	48 89 c3             	mov    %rax,%rbx
 7d9:	e8 e2 03 00 00       	callq  bc0 <print>
 7de:	eb 4d                	jmp    82d <main+0x9d>
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 66 05 00 00 	lea    0x566(%rip),%rsi        # d52 <_IO_stdin_used+0xb2>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d 68 05 00 00 	lea    0x568(%rip),%rdi        # d67 <_IO_stdin_used+0xc7>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 0a 03 00 00       	callq  b20 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 9f 03 00 00       	callq  bc0 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 bc 00 00 00    	je     8e9 <main+0x159>
 82d:	48 8b 35 dc 17 20 00 	mov    0x2017dc(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 834:	bf 0a 00 00 00       	mov    $0xa,%edi
 839:	e8 02 ff ff ff       	callq  740 <_IO_putc@plt>
 83e:	48 8d 3d 53 05 00 00 	lea    0x553(%rip),%rdi        # d98 <_IO_stdin_used+0xf8>
 845:	e8 d6 fe ff ff       	callq  720 <puts@plt>
 84a:	48 8d 35 d8 04 00 00 	lea    0x4d8(%rip),%rsi        # d29 <_IO_stdin_used+0x89>
 851:	bf 01 00 00 00       	mov    $0x1,%edi
 856:	31 c0                	xor    %eax,%eax
 858:	e8 03 ff ff ff       	callq  760 <__printf_chk@plt>
 85d:	48 8d 3d d5 04 00 00 	lea    0x4d5(%rip),%rdi        # d39 <_IO_stdin_used+0x99>
 864:	31 c0                	xor    %eax,%eax
 866:	4c 89 e6             	mov    %r12,%rsi
 869:	e8 02 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 86e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 872:	83 f8 01             	cmp    $0x1,%eax
 875:	0f 85 65 ff ff ff    	jne    7e0 <main+0x50>
 87b:	48 8d 35 3e 05 00 00 	lea    0x53e(%rip),%rsi        # dc0 <_IO_stdin_used+0x120>
 882:	bf 01 00 00 00       	mov    $0x1,%edi
 887:	31 c0                	xor    %eax,%eax
 889:	e8 d2 fe ff ff       	callq  760 <__printf_chk@plt>
 88e:	bf 18 00 00 00       	mov    $0x18,%edi
 893:	e8 b8 fe ff ff       	callq  750 <malloc@plt>
 898:	48 8d 3d 05 04 00 00 	lea    0x405(%rip),%rdi        # ca4 <_IO_stdin_used+0x4>
 89f:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a3:	48 89 c5             	mov    %rax,%rbp
 8a6:	48 89 c6             	mov    %rax,%rsi
 8a9:	31 c0                	xor    %eax,%eax
 8ab:	e8 c0 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8b0:	48 89 df             	mov    %rbx,%rdi
 8b3:	48 89 ee             	mov    %rbp,%rsi
 8b6:	e8 65 01 00 00       	callq  a20 <insert>
 8bb:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8bf:	48 8d 35 76 04 00 00 	lea    0x476(%rip),%rsi        # d3c <_IO_stdin_used+0x9c>
 8c6:	48 89 c3             	mov    %rax,%rbx
 8c9:	bf 01 00 00 00       	mov    $0x1,%edi
 8ce:	31 c0                	xor    %eax,%eax
 8d0:	e8 8b fe ff ff       	callq  760 <__printf_chk@plt>
 8d5:	48 89 df             	mov    %rbx,%rdi
 8d8:	e8 e3 02 00 00       	callq  bc0 <print>
 8dd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8e1:	85 c0                	test   %eax,%eax
 8e3:	0f 85 44 ff ff ff    	jne    82d <main+0x9d>
 8e9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8ee:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8f5:	00 00 
 8f7:	75 0b                	jne    904 <main+0x174>
 8f9:	48 83 c4 28          	add    $0x28,%rsp
 8fd:	5b                   	pop    %rbx
 8fe:	5d                   	pop    %rbp
 8ff:	41 5c                	pop    %r12
 901:	41 5d                	pop    %r13
 903:	c3                   	retq   
 904:	e8 27 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000910 <_start>:
 910:	31 ed                	xor    %ebp,%ebp
 912:	49 89 d1             	mov    %rdx,%r9
 915:	5e                   	pop    %rsi
 916:	48 89 e2             	mov    %rsp,%rdx
 919:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 91d:	50                   	push   %rax
 91e:	54                   	push   %rsp
 91f:	4c 8d 05 6a 03 00 00 	lea    0x36a(%rip),%r8        # c90 <__libc_csu_fini>
 926:	48 8d 0d f3 02 00 00 	lea    0x2f3(%rip),%rcx        # c20 <__libc_csu_init>
 92d:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 790 <main>
 934:	ff 15 a6 16 20 00    	callq  *0x2016a6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 93a:	f4                   	hlt    
 93b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000940 <deregister_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    0x2016c9(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 947:	55                   	push   %rbp
 948:	48 8d 05 c1 16 20 00 	lea    0x2016c1(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
 94f:	48 39 f8             	cmp    %rdi,%rax
 952:	48 89 e5             	mov    %rsp,%rbp
 955:	74 19                	je     970 <deregister_tm_clones+0x30>
 957:	48 8b 05 7a 16 20 00 	mov    0x20167a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 95e:	48 85 c0             	test   %rax,%rax
 961:	74 0d                	je     970 <deregister_tm_clones+0x30>
 963:	5d                   	pop    %rbp
 964:	ff e0                	jmpq   *%rax
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 
 970:	5d                   	pop    %rbp
 971:	c3                   	retq   
 972:	0f 1f 40 00          	nopl   0x0(%rax)
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 

0000000000000980 <register_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 987:	48 8d 35 82 16 20 00 	lea    0x201682(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 98e:	55                   	push   %rbp
 98f:	48 29 fe             	sub    %rdi,%rsi
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	48 c1 fe 03          	sar    $0x3,%rsi
 999:	48 89 f0             	mov    %rsi,%rax
 99c:	48 c1 e8 3f          	shr    $0x3f,%rax
 9a0:	48 01 c6             	add    %rax,%rsi
 9a3:	48 d1 fe             	sar    %rsi
 9a6:	74 18                	je     9c0 <register_tm_clones+0x40>
 9a8:	48 8b 05 41 16 20 00 	mov    0x201641(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9af:	48 85 c0             	test   %rax,%rax
 9b2:	74 0c                	je     9c0 <register_tm_clones+0x40>
 9b4:	5d                   	pop    %rbp
 9b5:	ff e0                	jmpq   *%rax
 9b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9be:	00 00 
 9c0:	5d                   	pop    %rbp
 9c1:	c3                   	retq   
 9c2:	0f 1f 40 00          	nopl   0x0(%rax)
 9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9cd:	00 00 00 

00000000000009d0 <__do_global_dtors_aux>:
 9d0:	80 3d 41 16 20 00 00 	cmpb   $0x0,0x201641(%rip)        # 202018 <completed.7698>
 9d7:	75 2f                	jne    a08 <__do_global_dtors_aux+0x38>
 9d9:	48 83 3d 17 16 20 00 	cmpq   $0x0,0x201617(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9e0:	00 
 9e1:	55                   	push   %rbp
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	74 0c                	je     9f3 <__do_global_dtors_aux+0x23>
 9e7:	48 8b 3d 1a 16 20 00 	mov    0x20161a(%rip),%rdi        # 202008 <__dso_handle>
 9ee:	e8 8d fd ff ff       	callq  780 <__cxa_finalize@plt>
 9f3:	e8 48 ff ff ff       	callq  940 <deregister_tm_clones>
 9f8:	c6 05 19 16 20 00 01 	movb   $0x1,0x201619(%rip)        # 202018 <completed.7698>
 9ff:	5d                   	pop    %rbp
 a00:	c3                   	retq   
 a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a08:	f3 c3                	repz retq 
 a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a10 <frame_dummy>:
 a10:	55                   	push   %rbp
 a11:	48 89 e5             	mov    %rsp,%rbp
 a14:	5d                   	pop    %rbp
 a15:	e9 66 ff ff ff       	jmpq   980 <register_tm_clones>
 a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a20 <insert>:
 a20:	48 85 ff             	test   %rdi,%rdi
 a23:	74 5b                	je     a80 <insert+0x60>
 a25:	48 8b 0e             	mov    (%rsi),%rcx
 a28:	48 89 fa             	mov    %rdi,%rdx
 a2b:	eb 12                	jmp    a3f <insert+0x1f>
 a2d:	0f 1f 00             	nopl   (%rax)
 a30:	48 8b 42 10          	mov    0x10(%rdx),%rax
 a34:	49 89 d0             	mov    %rdx,%r8
 a37:	48 85 c0             	test   %rax,%rax
 a3a:	74 24                	je     a60 <insert+0x40>
 a3c:	48 89 c2             	mov    %rax,%rdx
 a3f:	48 3b 0a             	cmp    (%rdx),%rcx
 a42:	7f ec                	jg     a30 <insert+0x10>
 a44:	48 39 fa             	cmp    %rdi,%rdx
 a47:	48 89 f0             	mov    %rsi,%rax
 a4a:	74 07                	je     a53 <insert+0x33>
 a4c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 a50:	48 89 f8             	mov    %rdi,%rax
 a53:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a57:	83 05 be 15 20 00 01 	addl   $0x1,0x2015be(%rip)        # 20201c <n>
 a5e:	c3                   	retq   
 a5f:	90                   	nop
 a60:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a64:	48 89 f8             	mov    %rdi,%rax
 a67:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a6e:	00 
 a6f:	83 05 a6 15 20 00 01 	addl   $0x1,0x2015a6(%rip)        # 20201c <n>
 a76:	c3                   	retq   
 a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a7e:	00 00 
 a80:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a87:	00 
 a88:	48 89 f0             	mov    %rsi,%rax
 a8b:	83 05 8a 15 20 00 01 	addl   $0x1,0x20158a(%rip)        # 20201c <n>
 a92:	c3                   	retq   
 a93:	0f 1f 00             	nopl   (%rax)
 a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a9d:	00 00 00 

0000000000000aa0 <create>:
 aa0:	41 54                	push   %r12
 aa2:	55                   	push   %rbp
 aa3:	bf 18 00 00 00       	mov    $0x18,%edi
 aa8:	53                   	push   %rbx
 aa9:	31 ed                	xor    %ebp,%ebp
 aab:	e8 a0 fc ff ff       	callq  750 <malloc@plt>
 ab0:	48 8d 3d ed 01 00 00 	lea    0x1ed(%rip),%rdi        # ca4 <_IO_stdin_used+0x4>
 ab7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 abb:	48 89 c3             	mov    %rax,%rbx
 abe:	48 89 c6             	mov    %rax,%rsi
 ac1:	31 c0                	xor    %eax,%eax
 ac3:	e8 a8 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 ac8:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 acc:	74 3c                	je     b0a <create+0x6a>
 ace:	4c 8d 25 cf 01 00 00 	lea    0x1cf(%rip),%r12        # ca4 <_IO_stdin_used+0x4>
 ad5:	0f 1f 00             	nopl   (%rax)
 ad8:	48 89 de             	mov    %rbx,%rsi
 adb:	48 89 ef             	mov    %rbp,%rdi
 ade:	e8 3d ff ff ff       	callq  a20 <insert>
 ae3:	bf 18 00 00 00       	mov    $0x18,%edi
 ae8:	48 89 c5             	mov    %rax,%rbp
 aeb:	e8 60 fc ff ff       	callq  750 <malloc@plt>
 af0:	48 8d 50 08          	lea    0x8(%rax),%rdx
 af4:	48 89 c3             	mov    %rax,%rbx
 af7:	48 89 c6             	mov    %rax,%rsi
 afa:	4c 89 e7             	mov    %r12,%rdi
 afd:	31 c0                	xor    %eax,%eax
 aff:	e8 6c fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b04:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b08:	75 ce                	jne    ad8 <create+0x38>
 b0a:	48 89 df             	mov    %rbx,%rdi
 b0d:	e8 fe fb ff ff       	callq  710 <free@plt>
 b12:	48 89 e8             	mov    %rbp,%rax
 b15:	5b                   	pop    %rbx
 b16:	5d                   	pop    %rbp
 b17:	41 5c                	pop    %r12
 b19:	c3                   	retq   
 b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b20 <del>:
 b20:	48 85 ff             	test   %rdi,%rdi
 b23:	41 54                	push   %r12
 b25:	55                   	push   %rbp
 b26:	48 89 fd             	mov    %rdi,%rbp
 b29:	53                   	push   %rbx
 b2a:	48 89 fb             	mov    %rdi,%rbx
 b2d:	75 18                	jne    b47 <del+0x27>
 b2f:	eb 76                	jmp    ba7 <del+0x87>
 b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b38:	48 8b 43 10          	mov    0x10(%rbx),%rax
 b3c:	48 89 d9             	mov    %rbx,%rcx
 b3f:	48 85 c0             	test   %rax,%rax
 b42:	74 4c                	je     b90 <del+0x70>
 b44:	48 89 c3             	mov    %rax,%rbx
 b47:	48 8b 13             	mov    (%rbx),%rdx
 b4a:	48 39 f2             	cmp    %rsi,%rdx
 b4d:	7c e9                	jl     b38 <del+0x18>
 b4f:	75 3f                	jne    b90 <del+0x70>
 b51:	48 39 eb             	cmp    %rbp,%rbx
 b54:	4c 8b 63 10          	mov    0x10(%rbx),%r12
 b58:	74 07                	je     b61 <del+0x41>
 b5a:	4c 89 61 10          	mov    %r12,0x10(%rcx)
 b5e:	49 89 ec             	mov    %rbp,%r12
 b61:	48 8d 35 52 01 00 00 	lea    0x152(%rip),%rsi        # cba <_IO_stdin_used+0x1a>
 b68:	bf 01 00 00 00       	mov    $0x1,%edi
 b6d:	31 c0                	xor    %eax,%eax
 b6f:	e8 ec fb ff ff       	callq  760 <__printf_chk@plt>
 b74:	48 89 df             	mov    %rbx,%rdi
 b77:	e8 94 fb ff ff       	callq  710 <free@plt>
 b7c:	83 2d 99 14 20 00 01 	subl   $0x1,0x201499(%rip)        # 20201c <n>
 b83:	4c 89 e0             	mov    %r12,%rax
 b86:	5b                   	pop    %rbx
 b87:	5d                   	pop    %rbp
 b88:	41 5c                	pop    %r12
 b8a:	c3                   	retq   
 b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b90:	48 8d 3d 38 01 00 00 	lea    0x138(%rip),%rdi        # ccf <_IO_stdin_used+0x2f>
 b97:	49 89 ec             	mov    %rbp,%r12
 b9a:	e8 81 fb ff ff       	callq  720 <puts@plt>
 b9f:	4c 89 e0             	mov    %r12,%rax
 ba2:	5b                   	pop    %rbx
 ba3:	5d                   	pop    %rbp
 ba4:	41 5c                	pop    %r12
 ba6:	c3                   	retq   
 ba7:	48 8d 3d fd 00 00 00 	lea    0xfd(%rip),%rdi        # cab <_IO_stdin_used+0xb>
 bae:	45 31 e4             	xor    %r12d,%r12d
 bb1:	e8 6a fb ff ff       	callq  720 <puts@plt>
 bb6:	eb cb                	jmp    b83 <del+0x63>
 bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bbf:	00 

0000000000000bc0 <print>:
 bc0:	55                   	push   %rbp
 bc1:	53                   	push   %rbx
 bc2:	48 8d 35 1f 01 00 00 	lea    0x11f(%rip),%rsi        # ce8 <_IO_stdin_used+0x48>
 bc9:	48 89 fb             	mov    %rdi,%rbx
 bcc:	31 c0                	xor    %eax,%eax
 bce:	bf 01 00 00 00       	mov    $0x1,%edi
 bd3:	48 83 ec 08          	sub    $0x8,%rsp
 bd7:	8b 15 3f 14 20 00    	mov    0x20143f(%rip),%edx        # 20201c <n>
 bdd:	e8 7e fb ff ff       	callq  760 <__printf_chk@plt>
 be2:	48 85 db             	test   %rbx,%rbx
 be5:	74 30                	je     c17 <print+0x57>
 be7:	48 8d 2d 17 01 00 00 	lea    0x117(%rip),%rbp        # d05 <_IO_stdin_used+0x65>
 bee:	66 90                	xchg   %ax,%ax
 bf0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bf4:	48 8b 13             	mov    (%rbx),%rdx
 bf7:	48 89 ee             	mov    %rbp,%rsi
 bfa:	bf 01 00 00 00       	mov    $0x1,%edi
 bff:	b8 01 00 00 00       	mov    $0x1,%eax
 c04:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c09:	e8 52 fb ff ff       	callq  760 <__printf_chk@plt>
 c0e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c12:	48 85 db             	test   %rbx,%rbx
 c15:	75 d9                	jne    bf0 <print+0x30>
 c17:	48 83 c4 08          	add    $0x8,%rsp
 c1b:	5b                   	pop    %rbx
 c1c:	5d                   	pop    %rbp
 c1d:	c3                   	retq   
 c1e:	66 90                	xchg   %ax,%ax

0000000000000c20 <__libc_csu_init>:
 c20:	41 57                	push   %r15
 c22:	41 56                	push   %r14
 c24:	49 89 d7             	mov    %rdx,%r15
 c27:	41 55                	push   %r13
 c29:	41 54                	push   %r12
 c2b:	4c 8d 25 56 11 20 00 	lea    0x201156(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c32:	55                   	push   %rbp
 c33:	48 8d 2d 56 11 20 00 	lea    0x201156(%rip),%rbp        # 201d90 <__init_array_end>
 c3a:	53                   	push   %rbx
 c3b:	41 89 fd             	mov    %edi,%r13d
 c3e:	49 89 f6             	mov    %rsi,%r14
 c41:	4c 29 e5             	sub    %r12,%rbp
 c44:	48 83 ec 08          	sub    $0x8,%rsp
 c48:	48 c1 fd 03          	sar    $0x3,%rbp
 c4c:	e8 97 fa ff ff       	callq  6e8 <_init>
 c51:	48 85 ed             	test   %rbp,%rbp
 c54:	74 20                	je     c76 <__libc_csu_init+0x56>
 c56:	31 db                	xor    %ebx,%ebx
 c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c5f:	00 
 c60:	4c 89 fa             	mov    %r15,%rdx
 c63:	4c 89 f6             	mov    %r14,%rsi
 c66:	44 89 ef             	mov    %r13d,%edi
 c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c6d:	48 83 c3 01          	add    $0x1,%rbx
 c71:	48 39 dd             	cmp    %rbx,%rbp
 c74:	75 ea                	jne    c60 <__libc_csu_init+0x40>
 c76:	48 83 c4 08          	add    $0x8,%rsp
 c7a:	5b                   	pop    %rbx
 c7b:	5d                   	pop    %rbp
 c7c:	41 5c                	pop    %r12
 c7e:	41 5d                	pop    %r13
 c80:	41 5e                	pop    %r14
 c82:	41 5f                	pop    %r15
 c84:	c3                   	retq   
 c85:	90                   	nop
 c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c8d:	00 00 00 

0000000000000c90 <__libc_csu_fini>:
 c90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c94 <_fini>:
 c94:	48 83 ec 08          	sub    $0x8,%rsp
 c98:	48 83 c4 08          	add    $0x8,%rsp
 c9c:	c3                   	retq   
