
input/19030031006_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d b5 05 00 00 	lea    0x5b5(%rip),%rdi        # d50 <_IO_stdin_used+0xc0>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	31 c0                	xor    %eax,%eax
 7b8:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7bd:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c2:	e8 49 03 00 00       	callq  b10 <creats>
 7c7:	48 89 c7             	mov    %rax,%rdi
 7ca:	48 89 c3             	mov    %rax,%rbx
 7cd:	e8 4e 02 00 00       	callq  a20 <print>
 7d2:	eb 51                	jmp    825 <main+0x95>
 7d4:	0f 1f 40 00          	nopl   0x0(%rax)
 7d8:	83 f8 02             	cmp    $0x2,%eax
 7db:	75 40                	jne    81d <main+0x8d>
 7dd:	48 8d 35 53 05 00 00 	lea    0x553(%rip),%rsi        # d37 <_IO_stdin_used+0xa7>
 7e4:	bf 01 00 00 00       	mov    $0x1,%edi
 7e9:	31 c0                	xor    %eax,%eax
 7eb:	e8 70 ff ff ff       	callq  760 <__printf_chk@plt>
 7f0:	48 8d 3d 52 05 00 00 	lea    0x552(%rip),%rdi        # d49 <_IO_stdin_used+0xb9>
 7f7:	4c 89 ee             	mov    %r13,%rsi
 7fa:	31 c0                	xor    %eax,%eax
 7fc:	e8 6f ff ff ff       	callq  770 <__isoc99_scanf@plt>
 801:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 806:	48 89 df             	mov    %rbx,%rdi
 809:	e8 82 03 00 00       	callq  b90 <del>
 80e:	48 89 c7             	mov    %rax,%rdi
 811:	48 89 c3             	mov    %rax,%rbx
 814:	e8 07 02 00 00       	callq  a20 <print>
 819:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 81d:	85 c0                	test   %eax,%eax
 81f:	0f 84 bf 00 00 00    	je     8e4 <main+0x154>
 825:	48 8d 3d b3 04 00 00 	lea    0x4b3(%rip),%rdi        # cdf <_IO_stdin_used+0x4f>
 82c:	e8 ef fe ff ff       	callq  720 <puts@plt>
 831:	48 8d 35 c1 04 00 00 	lea    0x4c1(%rip),%rsi        # cf9 <_IO_stdin_used+0x69>
 838:	bf 01 00 00 00       	mov    $0x1,%edi
 83d:	31 c0                	xor    %eax,%eax
 83f:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 846:	ff 
 847:	e8 14 ff ff ff       	callq  760 <__printf_chk@plt>
 84c:	48 8d 3d b6 04 00 00 	lea    0x4b6(%rip),%rdi        # d09 <_IO_stdin_used+0x79>
 853:	4c 89 e6             	mov    %r12,%rsi
 856:	31 c0                	xor    %eax,%eax
 858:	e8 13 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 85d:	48 8b 3d ac 17 20 00 	mov    0x2017ac(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 864:	e8 e7 fe ff ff       	callq  750 <_IO_getc@plt>
 869:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 86d:	83 f8 01             	cmp    $0x1,%eax
 870:	0f 85 62 ff ff ff    	jne    7d8 <main+0x48>
 876:	48 8d 35 8f 04 00 00 	lea    0x48f(%rip),%rsi        # d0c <_IO_stdin_used+0x7c>
 87d:	bf 01 00 00 00       	mov    $0x1,%edi
 882:	31 c0                	xor    %eax,%eax
 884:	e8 d7 fe ff ff       	callq  760 <__printf_chk@plt>
 889:	bf 18 00 00 00       	mov    $0x18,%edi
 88e:	e8 ad fe ff ff       	callq  740 <malloc@plt>
 893:	48 8d 3d 20 04 00 00 	lea    0x420(%rip),%rdi        # cba <_IO_stdin_used+0x2a>
 89a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 89e:	48 89 c5             	mov    %rax,%rbp
 8a1:	48 89 c6             	mov    %rax,%rsi
 8a4:	31 c0                	xor    %eax,%eax
 8a6:	e8 c5 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8ab:	48 89 df             	mov    %rbx,%rdi
 8ae:	48 89 ee             	mov    %rbp,%rsi
 8b1:	e8 ca 01 00 00       	callq  a80 <insert>
 8b6:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8ba:	48 8d 35 67 04 00 00 	lea    0x467(%rip),%rsi        # d28 <_IO_stdin_used+0x98>
 8c1:	48 89 c3             	mov    %rax,%rbx
 8c4:	bf 01 00 00 00       	mov    $0x1,%edi
 8c9:	31 c0                	xor    %eax,%eax
 8cb:	e8 90 fe ff ff       	callq  760 <__printf_chk@plt>
 8d0:	48 89 df             	mov    %rbx,%rdi
 8d3:	e8 48 01 00 00       	callq  a20 <print>
 8d8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8dc:	85 c0                	test   %eax,%eax
 8de:	0f 85 41 ff ff ff    	jne    825 <main+0x95>
 8e4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8e9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8f0:	00 00 
 8f2:	75 0b                	jne    8ff <main+0x16f>
 8f4:	48 83 c4 28          	add    $0x28,%rsp
 8f8:	5b                   	pop    %rbx
 8f9:	5d                   	pop    %rbp
 8fa:	41 5c                	pop    %r12
 8fc:	41 5d                	pop    %r13
 8fe:	c3                   	retq   
 8ff:	e8 2c fe ff ff       	callq  730 <__stack_chk_fail@plt>
 904:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90b:	00 00 00 
 90e:	66 90                	xchg   %ax,%ax

0000000000000910 <_start>:
 910:	31 ed                	xor    %ebp,%ebp
 912:	49 89 d1             	mov    %rdx,%r9
 915:	5e                   	pop    %rsi
 916:	48 89 e2             	mov    %rsp,%rdx
 919:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 91d:	50                   	push   %rax
 91e:	54                   	push   %rsp
 91f:	4c 8d 05 5a 03 00 00 	lea    0x35a(%rip),%r8        # c80 <__libc_csu_fini>
 926:	48 8d 0d e3 02 00 00 	lea    0x2e3(%rip),%rcx        # c10 <__libc_csu_init>
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
 a20:	55                   	push   %rbp
 a21:	53                   	push   %rbx
 a22:	48 8d 35 6b 02 00 00 	lea    0x26b(%rip),%rsi        # c94 <_IO_stdin_used+0x4>
 a29:	48 89 fb             	mov    %rdi,%rbx
 a2c:	31 c0                	xor    %eax,%eax
 a2e:	bf 01 00 00 00       	mov    $0x1,%edi
 a33:	48 83 ec 08          	sub    $0x8,%rsp
 a37:	8b 15 df 15 20 00    	mov    0x2015df(%rip),%edx        # 20201c <n>
 a3d:	e8 1e fd ff ff       	callq  760 <__printf_chk@plt>
 a42:	48 85 db             	test   %rbx,%rbx
 a45:	74 30                	je     a77 <print+0x57>
 a47:	48 8d 2d 62 02 00 00 	lea    0x262(%rip),%rbp        # cb0 <_IO_stdin_used+0x20>
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

0000000000000a80 <insert>:
 a80:	48 85 ff             	test   %rdi,%rdi
 a83:	74 5b                	je     ae0 <insert+0x60>
 a85:	4c 8b 0e             	mov    (%rsi),%r9
 a88:	48 89 fa             	mov    %rdi,%rdx
 a8b:	eb 0e                	jmp    a9b <insert+0x1b>
 a8d:	0f 1f 00             	nopl   (%rax)
 a90:	4d 39 c8             	cmp    %r9,%r8
 a93:	7d 33                	jge    ac8 <insert+0x48>
 a95:	49 89 d2             	mov    %rdx,%r10
 a98:	48 89 ca             	mov    %rcx,%rdx
 a9b:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a9f:	4c 8b 02             	mov    (%rdx),%r8
 aa2:	48 85 c9             	test   %rcx,%rcx
 aa5:	75 e9                	jne    a90 <insert+0x10>
 aa7:	4d 39 c8             	cmp    %r9,%r8
 aaa:	7d 1c                	jge    ac8 <insert+0x48>
 aac:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 ab0:	48 89 f8             	mov    %rdi,%rax
 ab3:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 aba:	00 
 abb:	83 05 5a 15 20 00 01 	addl   $0x1,0x20155a(%rip)        # 20201c <n>
 ac2:	c3                   	retq   
 ac3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ac8:	48 39 fa             	cmp    %rdi,%rdx
 acb:	74 2b                	je     af8 <insert+0x78>
 acd:	49 89 72 10          	mov    %rsi,0x10(%r10)
 ad1:	48 89 f8             	mov    %rdi,%rax
 ad4:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ad8:	83 05 3d 15 20 00 01 	addl   $0x1,0x20153d(%rip)        # 20201c <n>
 adf:	c3                   	retq   
 ae0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ae7:	00 
 ae8:	48 89 f0             	mov    %rsi,%rax
 aeb:	83 05 2a 15 20 00 01 	addl   $0x1,0x20152a(%rip)        # 20201c <n>
 af2:	c3                   	retq   
 af3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 af8:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 afc:	48 89 f0             	mov    %rsi,%rax
 aff:	83 05 16 15 20 00 01 	addl   $0x1,0x201516(%rip)        # 20201c <n>
 b06:	c3                   	retq   
 b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b0e:	00 00 

0000000000000b10 <creats>:
 b10:	41 54                	push   %r12
 b12:	55                   	push   %rbp
 b13:	bf 18 00 00 00       	mov    $0x18,%edi
 b18:	53                   	push   %rbx
 b19:	31 ed                	xor    %ebp,%ebp
 b1b:	e8 20 fc ff ff       	callq  740 <malloc@plt>
 b20:	48 8d 3d 93 01 00 00 	lea    0x193(%rip),%rdi        # cba <_IO_stdin_used+0x2a>
 b27:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b2b:	48 89 c3             	mov    %rax,%rbx
 b2e:	48 89 c6             	mov    %rax,%rsi
 b31:	31 c0                	xor    %eax,%eax
 b33:	e8 38 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b38:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b3c:	74 3c                	je     b7a <creats+0x6a>
 b3e:	4c 8d 25 75 01 00 00 	lea    0x175(%rip),%r12        # cba <_IO_stdin_used+0x2a>
 b45:	0f 1f 00             	nopl   (%rax)
 b48:	48 89 de             	mov    %rbx,%rsi
 b4b:	48 89 ef             	mov    %rbp,%rdi
 b4e:	e8 2d ff ff ff       	callq  a80 <insert>
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
 b78:	75 ce                	jne    b48 <creats+0x38>
 b7a:	48 89 e8             	mov    %rbp,%rax
 b7d:	5b                   	pop    %rbx
 b7e:	5d                   	pop    %rbp
 b7f:	41 5c                	pop    %r12
 b81:	c3                   	retq   
 b82:	0f 1f 40 00          	nopl   0x0(%rax)
 b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8d:	00 00 00 

0000000000000b90 <del>:
 b90:	55                   	push   %rbp
 b91:	53                   	push   %rbx
 b92:	48 89 fb             	mov    %rdi,%rbx
 b95:	48 83 ec 08          	sub    $0x8,%rsp
 b99:	48 85 ff             	test   %rdi,%rdi
 b9c:	75 11                	jne    baf <del+0x1f>
 b9e:	eb 59                	jmp    bf9 <del+0x69>
 ba0:	48 8b 47 10          	mov    0x10(%rdi),%rax
 ba4:	48 89 fa             	mov    %rdi,%rdx
 ba7:	48 85 c0             	test   %rax,%rax
 baa:	74 34                	je     be0 <del+0x50>
 bac:	48 89 c7             	mov    %rax,%rdi
 baf:	48 39 37             	cmp    %rsi,(%rdi)
 bb2:	7c ec                	jl     ba0 <del+0x10>
 bb4:	75 2a                	jne    be0 <del+0x50>
 bb6:	48 39 df             	cmp    %rbx,%rdi
 bb9:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
 bbd:	74 07                	je     bc6 <del+0x36>
 bbf:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 bc3:	48 89 dd             	mov    %rbx,%rbp
 bc6:	e8 45 fb ff ff       	callq  710 <free@plt>
 bcb:	83 2d 4a 14 20 00 01 	subl   $0x1,0x20144a(%rip)        # 20201c <n>
 bd2:	48 83 c4 08          	add    $0x8,%rsp
 bd6:	48 89 e8             	mov    %rbp,%rax
 bd9:	5b                   	pop    %rbx
 bda:	5d                   	pop    %rbp
 bdb:	c3                   	retq   
 bdc:	0f 1f 40 00          	nopl   0x0(%rax)
 be0:	48 8d 3d ee 00 00 00 	lea    0xee(%rip),%rdi        # cd5 <_IO_stdin_used+0x45>
 be7:	48 89 dd             	mov    %rbx,%rbp
 bea:	e8 31 fb ff ff       	callq  720 <puts@plt>
 bef:	48 83 c4 08          	add    $0x8,%rsp
 bf3:	48 89 e8             	mov    %rbp,%rax
 bf6:	5b                   	pop    %rbx
 bf7:	5d                   	pop    %rbp
 bf8:	c3                   	retq   
 bf9:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # cc1 <_IO_stdin_used+0x31>
 c00:	31 ed                	xor    %ebp,%ebp
 c02:	e8 19 fb ff ff       	callq  720 <puts@plt>
 c07:	eb c9                	jmp    bd2 <del+0x42>
 c09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c10 <__libc_csu_init>:
 c10:	41 57                	push   %r15
 c12:	41 56                	push   %r14
 c14:	49 89 d7             	mov    %rdx,%r15
 c17:	41 55                	push   %r13
 c19:	41 54                	push   %r12
 c1b:	4c 8d 25 66 11 20 00 	lea    0x201166(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c22:	55                   	push   %rbp
 c23:	48 8d 2d 66 11 20 00 	lea    0x201166(%rip),%rbp        # 201d90 <__init_array_end>
 c2a:	53                   	push   %rbx
 c2b:	41 89 fd             	mov    %edi,%r13d
 c2e:	49 89 f6             	mov    %rsi,%r14
 c31:	4c 29 e5             	sub    %r12,%rbp
 c34:	48 83 ec 08          	sub    $0x8,%rsp
 c38:	48 c1 fd 03          	sar    $0x3,%rbp
 c3c:	e8 a7 fa ff ff       	callq  6e8 <_init>
 c41:	48 85 ed             	test   %rbp,%rbp
 c44:	74 20                	je     c66 <__libc_csu_init+0x56>
 c46:	31 db                	xor    %ebx,%ebx
 c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c4f:	00 
 c50:	4c 89 fa             	mov    %r15,%rdx
 c53:	4c 89 f6             	mov    %r14,%rsi
 c56:	44 89 ef             	mov    %r13d,%edi
 c59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c5d:	48 83 c3 01          	add    $0x1,%rbx
 c61:	48 39 dd             	cmp    %rbx,%rbp
 c64:	75 ea                	jne    c50 <__libc_csu_init+0x40>
 c66:	48 83 c4 08          	add    $0x8,%rsp
 c6a:	5b                   	pop    %rbx
 c6b:	5d                   	pop    %rbp
 c6c:	41 5c                	pop    %r12
 c6e:	41 5d                	pop    %r13
 c70:	41 5e                	pop    %r14
 c72:	41 5f                	pop    %r15
 c74:	c3                   	retq   
 c75:	90                   	nop
 c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c7d:	00 00 00 

0000000000000c80 <__libc_csu_fini>:
 c80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c84 <_fini>:
 c84:	48 83 ec 08          	sub    $0x8,%rsp
 c88:	48 83 c4 08          	add    $0x8,%rsp
 c8c:	c3                   	retq   
