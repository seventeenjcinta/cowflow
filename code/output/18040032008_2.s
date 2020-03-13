
input/18040032008_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d 2f 05 00 00 	lea    0x52f(%rip),%rdi        # cca <_IO_stdin_used+0x4a>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d 9b 05 00 00 	lea    0x59b(%rip),%rdi        # d58 <_IO_stdin_used+0xd8>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	31 c0                	xor    %eax,%eax
 7ce:	e8 3d 03 00 00       	callq  b10 <create>
 7d3:	48 89 c7             	mov    %rax,%rdi
 7d6:	48 89 c3             	mov    %rax,%rbx
 7d9:	e8 42 02 00 00       	callq  a20 <print>
 7de:	eb 4d                	jmp    82d <main+0x9d>
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 52 05 00 00 	lea    0x552(%rip),%rsi        # d3e <_IO_stdin_used+0xbe>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d 52 05 00 00 	lea    0x552(%rip),%rdi        # d51 <_IO_stdin_used+0xd1>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 7a 03 00 00       	callq  b90 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 ff 01 00 00       	callq  a20 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 bf 00 00 00    	je     8ec <main+0x15c>
 82d:	48 8d 3d ad 04 00 00 	lea    0x4ad(%rip),%rdi        # ce1 <_IO_stdin_used+0x61>
 834:	e8 e7 fe ff ff       	callq  720 <puts@plt>
 839:	48 8d 35 bf 04 00 00 	lea    0x4bf(%rip),%rsi        # cff <_IO_stdin_used+0x7f>
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 84e:	ff 
 84f:	e8 0c ff ff ff       	callq  760 <__printf_chk@plt>
 854:	48 8d 3d b4 04 00 00 	lea    0x4b4(%rip),%rdi        # d0f <_IO_stdin_used+0x8f>
 85b:	4c 89 e6             	mov    %r12,%rsi
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 0b ff ff ff       	callq  770 <__isoc99_scanf@plt>
 865:	48 8b 3d a4 17 20 00 	mov    0x2017a4(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 86c:	e8 df fe ff ff       	callq  750 <_IO_getc@plt>
 871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 875:	83 f8 01             	cmp    $0x1,%eax
 878:	0f 85 62 ff ff ff    	jne    7e0 <main+0x50>
 87e:	48 8d 35 8d 04 00 00 	lea    0x48d(%rip),%rsi        # d12 <_IO_stdin_used+0x92>
 885:	bf 01 00 00 00       	mov    $0x1,%edi
 88a:	31 c0                	xor    %eax,%eax
 88c:	e8 cf fe ff ff       	callq  760 <__printf_chk@plt>
 891:	bf 18 00 00 00       	mov    $0x18,%edi
 896:	e8 a5 fe ff ff       	callq  740 <malloc@plt>
 89b:	48 8d 3d 21 04 00 00 	lea    0x421(%rip),%rdi        # cc3 <_IO_stdin_used+0x43>
 8a2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a6:	48 89 c5             	mov    %rax,%rbp
 8a9:	48 89 c6             	mov    %rax,%rsi
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	e8 bd fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8b3:	48 89 df             	mov    %rbx,%rdi
 8b6:	48 89 ee             	mov    %rbp,%rsi
 8b9:	e8 d2 01 00 00       	callq  a90 <insert>
 8be:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8c2:	48 8d 35 66 04 00 00 	lea    0x466(%rip),%rsi        # d2f <_IO_stdin_used+0xaf>
 8c9:	48 89 c3             	mov    %rax,%rbx
 8cc:	bf 01 00 00 00       	mov    $0x1,%edi
 8d1:	31 c0                	xor    %eax,%eax
 8d3:	e8 88 fe ff ff       	callq  760 <__printf_chk@plt>
 8d8:	48 89 df             	mov    %rbx,%rdi
 8db:	e8 40 01 00 00       	callq  a20 <print>
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
 91f:	4c 8d 05 4a 03 00 00 	lea    0x34a(%rip),%r8        # c70 <__libc_csu_fini>
 926:	48 8d 0d d3 02 00 00 	lea    0x2d3(%rip),%rcx        # c00 <__libc_csu_init>
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

0000000000000a20 <print>:
 a20:	48 85 ff             	test   %rdi,%rdi
 a23:	74 5b                	je     a80 <print+0x60>
 a25:	55                   	push   %rbp
 a26:	53                   	push   %rbx
 a27:	48 8d 35 56 02 00 00 	lea    0x256(%rip),%rsi        # c84 <_IO_stdin_used+0x4>
 a2e:	48 8d 2d 6a 02 00 00 	lea    0x26a(%rip),%rbp        # c9f <_IO_stdin_used+0x1f>
 a35:	48 89 fb             	mov    %rdi,%rbx
 a38:	31 c0                	xor    %eax,%eax
 a3a:	48 83 ec 08          	sub    $0x8,%rsp
 a3e:	8b 15 d8 15 20 00    	mov    0x2015d8(%rip),%edx        # 20201c <n>
 a44:	bf 01 00 00 00       	mov    $0x1,%edi
 a49:	e8 12 fd ff ff       	callq  760 <__printf_chk@plt>
 a4e:	66 90                	xchg   %ax,%ax
 a50:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a54:	48 8b 13             	mov    (%rbx),%rdx
 a57:	48 89 ee             	mov    %rbp,%rsi
 a5a:	bf 01 00 00 00       	mov    $0x1,%edi
 a5f:	b8 01 00 00 00       	mov    $0x1,%eax
 a64:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a69:	e8 f2 fc ff ff       	callq  760 <__printf_chk@plt>
 a6e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a72:	48 85 db             	test   %rbx,%rbx
 a75:	75 d9                	jne    a50 <print+0x30>
 a77:	48 83 c4 08          	add    $0x8,%rsp
 a7b:	5b                   	pop    %rbx
 a7c:	5d                   	pop    %rbp
 a7d:	c3                   	retq   
 a7e:	66 90                	xchg   %ax,%ax
 a80:	48 8d 3d 25 02 00 00 	lea    0x225(%rip),%rdi        # cac <_IO_stdin_used+0x2c>
 a87:	e9 94 fc ff ff       	jmpq   720 <puts@plt>
 a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a90 <insert>:
 a90:	48 85 ff             	test   %rdi,%rdi
 a93:	74 5b                	je     af0 <insert+0x60>
 a95:	48 8b 0e             	mov    (%rsi),%rcx
 a98:	48 89 fa             	mov    %rdi,%rdx
 a9b:	eb 12                	jmp    aaf <insert+0x1f>
 a9d:	0f 1f 00             	nopl   (%rax)
 aa0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 aa4:	49 89 d0             	mov    %rdx,%r8
 aa7:	48 85 c0             	test   %rax,%rax
 aaa:	74 24                	je     ad0 <insert+0x40>
 aac:	48 89 c2             	mov    %rax,%rdx
 aaf:	48 3b 0a             	cmp    (%rdx),%rcx
 ab2:	7f ec                	jg     aa0 <insert+0x10>
 ab4:	48 39 fa             	cmp    %rdi,%rdx
 ab7:	48 89 f0             	mov    %rsi,%rax
 aba:	74 07                	je     ac3 <insert+0x33>
 abc:	49 89 70 10          	mov    %rsi,0x10(%r8)
 ac0:	48 89 f8             	mov    %rdi,%rax
 ac3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ac7:	83 05 4e 15 20 00 01 	addl   $0x1,0x20154e(%rip)        # 20201c <n>
 ace:	c3                   	retq   
 acf:	90                   	nop
 ad0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 ad4:	48 89 f8             	mov    %rdi,%rax
 ad7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ade:	00 
 adf:	83 05 36 15 20 00 01 	addl   $0x1,0x201536(%rip)        # 20201c <n>
 ae6:	c3                   	retq   
 ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aee:	00 00 
 af0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 af7:	00 
 af8:	48 89 f0             	mov    %rsi,%rax
 afb:	83 05 1a 15 20 00 01 	addl   $0x1,0x20151a(%rip)        # 20201c <n>
 b02:	c3                   	retq   
 b03:	0f 1f 00             	nopl   (%rax)
 b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b0d:	00 00 00 

0000000000000b10 <create>:
 b10:	41 54                	push   %r12
 b12:	55                   	push   %rbp
 b13:	bf 18 00 00 00       	mov    $0x18,%edi
 b18:	53                   	push   %rbx
 b19:	31 ed                	xor    %ebp,%ebp
 b1b:	e8 20 fc ff ff       	callq  740 <malloc@plt>
 b20:	48 8d 3d 9c 01 00 00 	lea    0x19c(%rip),%rdi        # cc3 <_IO_stdin_used+0x43>
 b27:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b2b:	48 89 c3             	mov    %rax,%rbx
 b2e:	48 89 c6             	mov    %rax,%rsi
 b31:	31 c0                	xor    %eax,%eax
 b33:	e8 38 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b38:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b3c:	74 3c                	je     b7a <create+0x6a>
 b3e:	4c 8d 25 7e 01 00 00 	lea    0x17e(%rip),%r12        # cc3 <_IO_stdin_used+0x43>
 b45:	0f 1f 00             	nopl   (%rax)
 b48:	48 89 de             	mov    %rbx,%rsi
 b4b:	48 89 ef             	mov    %rbp,%rdi
 b4e:	e8 3d ff ff ff       	callq  a90 <insert>
 b53:	bf 18 00 00 00       	mov    $0x18,%edi
 b58:	48 89 c5             	mov    %rax,%rbp
 b5b:	e8 e0 fb ff ff       	callq  740 <malloc@plt>
 b60:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b64:	48 89 c3             	mov    %rax,%rbx
 b67:	48 89 c6             	mov    %rax,%rsi
 b6a:	4c 89 e7             	mov    %r12,%rdi
 b6d:	31 c0                	xor    %eax,%eax
 b6f:	e8 fc fb ff ff       	callq  770 <__isoc99_scanf@plt>
 b74:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b78:	75 ce                	jne    b48 <create+0x38>
 b7a:	48 89 df             	mov    %rbx,%rdi
 b7d:	e8 8e fb ff ff       	callq  710 <free@plt>
 b82:	48 89 e8             	mov    %rbp,%rax
 b85:	5b                   	pop    %rbx
 b86:	5d                   	pop    %rbp
 b87:	41 5c                	pop    %r12
 b89:	c3                   	retq   
 b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b90 <del>:
 b90:	48 85 ff             	test   %rdi,%rdi
 b93:	48 89 f8             	mov    %rdi,%rax
 b96:	75 17                	jne    baf <del+0x1f>
 b98:	eb 56                	jmp    bf0 <del+0x60>
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ba0:	48 8b 57 10          	mov    0x10(%rdi),%rdx
 ba4:	48 89 f9             	mov    %rdi,%rcx
 ba7:	48 85 d2             	test   %rdx,%rdx
 baa:	74 3c                	je     be8 <del+0x58>
 bac:	48 89 d7             	mov    %rdx,%rdi
 baf:	48 39 37             	cmp    %rsi,(%rdi)
 bb2:	7c ec                	jl     ba0 <del+0x10>
 bb4:	75 3a                	jne    bf0 <del+0x60>
 bb6:	48 83 ec 18          	sub    $0x18,%rsp
 bba:	48 39 c7             	cmp    %rax,%rdi
 bbd:	48 8b 57 10          	mov    0x10(%rdi),%rdx
 bc1:	74 35                	je     bf8 <del+0x68>
 bc3:	48 89 51 10          	mov    %rdx,0x10(%rcx)
 bc7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 bcc:	e8 3f fb ff ff       	callq  710 <free@plt>
 bd1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 bd6:	83 2d 3f 14 20 00 01 	subl   $0x1,0x20143f(%rip)        # 20201c <n>
 bdd:	48 83 c4 18          	add    $0x18,%rsp
 be1:	c3                   	retq   
 be2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 be8:	f3 c3                	repz retq 
 bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bf0:	f3 c3                	repz retq 
 bf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bf8:	48 89 d0             	mov    %rdx,%rax
 bfb:	eb ca                	jmp    bc7 <del+0x37>
 bfd:	0f 1f 00             	nopl   (%rax)

0000000000000c00 <__libc_csu_init>:
 c00:	41 57                	push   %r15
 c02:	41 56                	push   %r14
 c04:	49 89 d7             	mov    %rdx,%r15
 c07:	41 55                	push   %r13
 c09:	41 54                	push   %r12
 c0b:	4c 8d 25 76 11 20 00 	lea    0x201176(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c12:	55                   	push   %rbp
 c13:	48 8d 2d 76 11 20 00 	lea    0x201176(%rip),%rbp        # 201d90 <__init_array_end>
 c1a:	53                   	push   %rbx
 c1b:	41 89 fd             	mov    %edi,%r13d
 c1e:	49 89 f6             	mov    %rsi,%r14
 c21:	4c 29 e5             	sub    %r12,%rbp
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 c1 fd 03          	sar    $0x3,%rbp
 c2c:	e8 b7 fa ff ff       	callq  6e8 <_init>
 c31:	48 85 ed             	test   %rbp,%rbp
 c34:	74 20                	je     c56 <__libc_csu_init+0x56>
 c36:	31 db                	xor    %ebx,%ebx
 c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c3f:	00 
 c40:	4c 89 fa             	mov    %r15,%rdx
 c43:	4c 89 f6             	mov    %r14,%rsi
 c46:	44 89 ef             	mov    %r13d,%edi
 c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c4d:	48 83 c3 01          	add    $0x1,%rbx
 c51:	48 39 dd             	cmp    %rbx,%rbp
 c54:	75 ea                	jne    c40 <__libc_csu_init+0x40>
 c56:	48 83 c4 08          	add    $0x8,%rsp
 c5a:	5b                   	pop    %rbx
 c5b:	5d                   	pop    %rbp
 c5c:	41 5c                	pop    %r12
 c5e:	41 5d                	pop    %r13
 c60:	41 5e                	pop    %r14
 c62:	41 5f                	pop    %r15
 c64:	c3                   	retq   
 c65:	90                   	nop
 c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c6d:	00 00 00 

0000000000000c70 <__libc_csu_fini>:
 c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c74 <_fini>:
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 83 c4 08          	add    $0x8,%rsp
 c7c:	c3                   	retq   
