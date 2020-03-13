
input/19020031099_2.elf:     file format elf64-x86-64


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

0000000000000740 <malloc@plt>:
 740:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 746:	68 03 00 00 00       	pushq  $0x3
 74b:	e9 b0 ff ff ff       	jmpq   700 <.plt>

0000000000000750 <_IO_getc@plt>:
 750:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
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
 794:	48 8d 3d 4d 05 00 00 	lea    0x54d(%rip),%rdi        # ce8 <_IO_stdin_used+0x48>
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
 7ce:	e8 4d 03 00 00       	callq  b20 <create>
 7d3:	48 89 c7             	mov    %rax,%rdi
 7d6:	48 89 c3             	mov    %rax,%rbx
 7d9:	e8 c2 03 00 00       	callq  ba0 <print>
 7de:	eb 4d                	jmp    82d <main+0x9d>
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 69 05 00 00 	lea    0x569(%rip),%rsi        # d55 <_IO_stdin_used+0xb5>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d 68 05 00 00 	lea    0x568(%rip),%rdi        # d67 <_IO_stdin_used+0xc7>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 0a 02 00 00       	callq  a20 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 7f 03 00 00       	callq  ba0 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 bf 00 00 00    	je     8ec <main+0x15c>
 82d:	48 8d 3d cb 04 00 00 	lea    0x4cb(%rip),%rdi        # cff <_IO_stdin_used+0x5f>
 834:	e8 e7 fe ff ff       	callq  720 <puts@plt>
 839:	48 8d 35 d9 04 00 00 	lea    0x4d9(%rip),%rsi        # d19 <_IO_stdin_used+0x79>
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 84e:	ff 
 84f:	e8 0c ff ff ff       	callq  760 <__printf_chk@plt>
 854:	48 8d 3d cd 04 00 00 	lea    0x4cd(%rip),%rdi        # d28 <_IO_stdin_used+0x88>
 85b:	4c 89 e6             	mov    %r12,%rsi
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 0b ff ff ff       	callq  770 <__isoc99_scanf@plt>
 865:	48 8b 3d a4 17 20 00 	mov    0x2017a4(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 86c:	e8 df fe ff ff       	callq  750 <_IO_getc@plt>
 871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 875:	83 f8 01             	cmp    $0x1,%eax
 878:	0f 85 62 ff ff ff    	jne    7e0 <main+0x50>
 87e:	48 8d 35 a6 04 00 00 	lea    0x4a6(%rip),%rsi        # d2b <_IO_stdin_used+0x8b>
 885:	bf 01 00 00 00       	mov    $0x1,%edi
 88a:	31 c0                	xor    %eax,%eax
 88c:	e8 cf fe ff ff       	callq  760 <__printf_chk@plt>
 891:	bf 18 00 00 00       	mov    $0x18,%edi
 896:	e8 a5 fe ff ff       	callq  740 <malloc@plt>
 89b:	48 8d 3d 16 04 00 00 	lea    0x416(%rip),%rdi        # cb8 <_IO_stdin_used+0x18>
 8a2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a6:	48 89 c5             	mov    %rax,%rbp
 8a9:	48 89 c6             	mov    %rax,%rsi
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	e8 bd fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8b3:	48 89 df             	mov    %rbx,%rdi
 8b6:	48 89 ee             	mov    %rbp,%rsi
 8b9:	e8 e2 01 00 00       	callq  aa0 <insert>
 8be:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8c2:	48 8d 35 7e 04 00 00 	lea    0x47e(%rip),%rsi        # d47 <_IO_stdin_used+0xa7>
 8c9:	48 89 c3             	mov    %rax,%rbx
 8cc:	bf 01 00 00 00       	mov    $0x1,%edi
 8d1:	31 c0                	xor    %eax,%eax
 8d3:	e8 88 fe ff ff       	callq  760 <__printf_chk@plt>
 8d8:	48 89 df             	mov    %rbx,%rdi
 8db:	e8 c0 02 00 00       	callq  ba0 <print>
 8e0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8e4:	85 c0                	test   %eax,%eax
 8e6:	0f 85 41 ff ff ff    	jne    82d <main+0x9d>
 8ec:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8f1:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8f8:	00 00 
 8fa:	75 0b                	jne    907 <main+0x177>
 8fc:	48 83 c4 28          	add    $0x28,%rsp
 900:	5b                   	pop    %rbx
 901:	5d                   	pop    %rbp
 902:	41 5c                	pop    %r12
 904:	41 5d                	pop    %r13
 906:	c3                   	retq   
 907:	e8 24 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 90c:	0f 1f 40 00          	nopl   0x0(%rax)

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
 940:	48 8d 3d c9 16 20 00 	lea    0x2016c9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 947:	55                   	push   %rbp
 948:	48 8d 05 c1 16 20 00 	lea    0x2016c1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
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
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 987:	48 8d 35 82 16 20 00 	lea    0x201682(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
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

0000000000000a20 <del>:
 a20:	55                   	push   %rbp
 a21:	53                   	push   %rbx
 a22:	48 89 fd             	mov    %rdi,%rbp
 a25:	48 83 ec 08          	sub    $0x8,%rsp
 a29:	48 85 ff             	test   %rdi,%rdi
 a2c:	75 0d                	jne    a3b <del+0x1b>
 a2e:	eb 59                	jmp    a89 <del+0x69>
 a30:	48 85 db             	test   %rbx,%rbx
 a33:	48 89 f8             	mov    %rdi,%rax
 a36:	48 89 df             	mov    %rbx,%rdi
 a39:	74 35                	je     a70 <del+0x50>
 a3b:	48 39 37             	cmp    %rsi,(%rdi)
 a3e:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 a42:	75 ec                	jne    a30 <del+0x10>
 a44:	48 39 ef             	cmp    %rbp,%rdi
 a47:	74 07                	je     a50 <del+0x30>
 a49:	48 89 58 10          	mov    %rbx,0x10(%rax)
 a4d:	48 89 eb             	mov    %rbp,%rbx
 a50:	e8 bb fc ff ff       	callq  710 <free@plt>
 a55:	83 2d c0 15 20 00 01 	subl   $0x1,0x2015c0(%rip)        # 20201c <n>
 a5c:	48 83 c4 08          	add    $0x8,%rsp
 a60:	48 89 d8             	mov    %rbx,%rax
 a63:	5b                   	pop    %rbx
 a64:	5d                   	pop    %rbp
 a65:	c3                   	retq   
 a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a6d:	00 00 00 
 a70:	48 8d 3d 2d 02 00 00 	lea    0x22d(%rip),%rdi        # ca4 <_IO_stdin_used+0x4>
 a77:	48 89 eb             	mov    %rbp,%rbx
 a7a:	e8 a1 fc ff ff       	callq  720 <puts@plt>
 a7f:	48 83 c4 08          	add    $0x8,%rsp
 a83:	48 89 d8             	mov    %rbx,%rax
 a86:	5b                   	pop    %rbx
 a87:	5d                   	pop    %rbp
 a88:	c3                   	retq   
 a89:	48 8d 3d 14 02 00 00 	lea    0x214(%rip),%rdi        # ca4 <_IO_stdin_used+0x4>
 a90:	31 db                	xor    %ebx,%ebx
 a92:	e8 89 fc ff ff       	callq  720 <puts@plt>
 a97:	eb c3                	jmp    a5c <del+0x3c>
 a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000aa0 <insert>:
 aa0:	48 85 ff             	test   %rdi,%rdi
 aa3:	74 5b                	je     b00 <insert+0x60>
 aa5:	48 8b 0e             	mov    (%rsi),%rcx
 aa8:	48 89 fa             	mov    %rdi,%rdx
 aab:	eb 12                	jmp    abf <insert+0x1f>
 aad:	0f 1f 00             	nopl   (%rax)
 ab0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 ab4:	49 89 d0             	mov    %rdx,%r8
 ab7:	48 85 c0             	test   %rax,%rax
 aba:	74 24                	je     ae0 <insert+0x40>
 abc:	48 89 c2             	mov    %rax,%rdx
 abf:	48 3b 0a             	cmp    (%rdx),%rcx
 ac2:	7f ec                	jg     ab0 <insert+0x10>
 ac4:	48 39 fa             	cmp    %rdi,%rdx
 ac7:	48 89 f0             	mov    %rsi,%rax
 aca:	74 07                	je     ad3 <insert+0x33>
 acc:	49 89 70 10          	mov    %rsi,0x10(%r8)
 ad0:	48 89 f8             	mov    %rdi,%rax
 ad3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ad7:	83 05 3e 15 20 00 01 	addl   $0x1,0x20153e(%rip)        # 20201c <n>
 ade:	c3                   	retq   
 adf:	90                   	nop
 ae0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 ae4:	48 89 f8             	mov    %rdi,%rax
 ae7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 aee:	00 
 aef:	83 05 26 15 20 00 01 	addl   $0x1,0x201526(%rip)        # 20201c <n>
 af6:	c3                   	retq   
 af7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 afe:	00 00 
 b00:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b07:	00 
 b08:	48 89 f0             	mov    %rsi,%rax
 b0b:	83 05 0a 15 20 00 01 	addl   $0x1,0x20150a(%rip)        # 20201c <n>
 b12:	c3                   	retq   
 b13:	0f 1f 00             	nopl   (%rax)
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 

0000000000000b20 <create>:
 b20:	41 54                	push   %r12
 b22:	55                   	push   %rbp
 b23:	bf 18 00 00 00       	mov    $0x18,%edi
 b28:	53                   	push   %rbx
 b29:	31 ed                	xor    %ebp,%ebp
 b2b:	e8 10 fc ff ff       	callq  740 <malloc@plt>
 b30:	48 8d 3d 81 01 00 00 	lea    0x181(%rip),%rdi        # cb8 <_IO_stdin_used+0x18>
 b37:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b3b:	48 89 c3             	mov    %rax,%rbx
 b3e:	48 89 c6             	mov    %rax,%rsi
 b41:	31 c0                	xor    %eax,%eax
 b43:	e8 28 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b48:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b4c:	74 3c                	je     b8a <create+0x6a>
 b4e:	4c 8d 25 63 01 00 00 	lea    0x163(%rip),%r12        # cb8 <_IO_stdin_used+0x18>
 b55:	0f 1f 00             	nopl   (%rax)
 b58:	48 89 de             	mov    %rbx,%rsi
 b5b:	48 89 ef             	mov    %rbp,%rdi
 b5e:	e8 3d ff ff ff       	callq  aa0 <insert>
 b63:	bf 18 00 00 00       	mov    $0x18,%edi
 b68:	48 89 c5             	mov    %rax,%rbp
 b6b:	e8 d0 fb ff ff       	callq  740 <malloc@plt>
 b70:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b74:	48 89 c3             	mov    %rax,%rbx
 b77:	48 89 c6             	mov    %rax,%rsi
 b7a:	4c 89 e7             	mov    %r12,%rdi
 b7d:	31 c0                	xor    %eax,%eax
 b7f:	e8 ec fb ff ff       	callq  770 <__isoc99_scanf@plt>
 b84:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b88:	75 ce                	jne    b58 <create+0x38>
 b8a:	48 89 df             	mov    %rbx,%rdi
 b8d:	e8 7e fb ff ff       	callq  710 <free@plt>
 b92:	48 89 e8             	mov    %rbp,%rax
 b95:	5b                   	pop    %rbx
 b96:	5d                   	pop    %rbp
 b97:	41 5c                	pop    %r12
 b99:	c3                   	retq   
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ba0 <print>:
 ba0:	55                   	push   %rbp
 ba1:	53                   	push   %rbx
 ba2:	48 89 fb             	mov    %rdi,%rbx
 ba5:	48 8d 3d 13 01 00 00 	lea    0x113(%rip),%rdi        # cbf <_IO_stdin_used+0x1f>
 bac:	48 83 ec 08          	sub    $0x8,%rsp
 bb0:	e8 6b fb ff ff       	callq  720 <puts@plt>
 bb5:	48 85 db             	test   %rbx,%rbx
 bb8:	74 46                	je     c00 <print+0x60>
 bba:	48 8d 2d 14 01 00 00 	lea    0x114(%rip),%rbp        # cd5 <_IO_stdin_used+0x35>
 bc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bc8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bcc:	48 8b 13             	mov    (%rbx),%rdx
 bcf:	48 89 ee             	mov    %rbp,%rsi
 bd2:	bf 01 00 00 00       	mov    $0x1,%edi
 bd7:	b8 01 00 00 00       	mov    $0x1,%eax
 bdc:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 be1:	e8 7a fb ff ff       	callq  760 <__printf_chk@plt>
 be6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bea:	48 85 db             	test   %rbx,%rbx
 bed:	75 d9                	jne    bc8 <print+0x28>
 bef:	48 83 c4 08          	add    $0x8,%rsp
 bf3:	5b                   	pop    %rbx
 bf4:	5d                   	pop    %rbp
 bf5:	c3                   	retq   
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 
 c00:	48 83 c4 08          	add    $0x8,%rsp
 c04:	48 8d 3d d4 00 00 00 	lea    0xd4(%rip),%rdi        # cdf <_IO_stdin_used+0x3f>
 c0b:	5b                   	pop    %rbx
 c0c:	5d                   	pop    %rbp
 c0d:	e9 0e fb ff ff       	jmpq   720 <puts@plt>
 c12:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c19:	00 00 00 
 c1c:	0f 1f 40 00          	nopl   0x0(%rax)

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
