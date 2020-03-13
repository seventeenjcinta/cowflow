
input/19020031098_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d 50 05 00 00 	lea    0x550(%rip),%rdi        # ceb <_IO_stdin_used+0x3b>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d b3 05 00 00 	lea    0x5b3(%rip),%rdi        # d70 <_IO_stdin_used+0xc0>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	31 c0                	xor    %eax,%eax
 7ce:	e8 cd 02 00 00       	callq  aa0 <create>
 7d3:	48 89 c7             	mov    %rax,%rdi
 7d6:	48 89 c3             	mov    %rax,%rbx
 7d9:	e8 d2 03 00 00       	callq  bb0 <print>
 7de:	eb 4d                	jmp    82d <main+0x9d>
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 6e 05 00 00 	lea    0x56e(%rip),%rsi        # d5a <_IO_stdin_used+0xaa>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d 6d 05 00 00 	lea    0x56d(%rip),%rdi        # d6c <_IO_stdin_used+0xbc>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 0a 03 00 00       	callq  b20 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 8f 03 00 00       	callq  bb0 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 b7 00 00 00    	je     8e4 <main+0x154>
 82d:	48 8d 3d ce 04 00 00 	lea    0x4ce(%rip),%rdi        # d02 <_IO_stdin_used+0x52>
 834:	e8 e7 fe ff ff       	callq  720 <puts@plt>
 839:	48 8d 35 de 04 00 00 	lea    0x4de(%rip),%rsi        # d1e <_IO_stdin_used+0x6e>
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	e8 14 ff ff ff       	callq  760 <__printf_chk@plt>
 84c:	48 8d 3d da 04 00 00 	lea    0x4da(%rip),%rdi        # d2d <_IO_stdin_used+0x7d>
 853:	4c 89 e6             	mov    %r12,%rsi
 856:	31 c0                	xor    %eax,%eax
 858:	e8 13 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 85d:	48 8b 3d ac 17 20 00 	mov    0x2017ac(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 864:	e8 e7 fe ff ff       	callq  750 <_IO_getc@plt>
 869:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 86d:	83 f8 01             	cmp    $0x1,%eax
 870:	0f 85 6a ff ff ff    	jne    7e0 <main+0x50>
 876:	48 8d 35 b3 04 00 00 	lea    0x4b3(%rip),%rsi        # d30 <_IO_stdin_used+0x80>
 87d:	bf 01 00 00 00       	mov    $0x1,%edi
 882:	31 c0                	xor    %eax,%eax
 884:	e8 d7 fe ff ff       	callq  760 <__printf_chk@plt>
 889:	bf 18 00 00 00       	mov    $0x18,%edi
 88e:	e8 ad fe ff ff       	callq  740 <malloc@plt>
 893:	48 8d 3d 1a 04 00 00 	lea    0x41a(%rip),%rdi        # cb4 <_IO_stdin_used+0x4>
 89a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 89e:	48 89 c5             	mov    %rax,%rbp
 8a1:	48 89 c6             	mov    %rax,%rsi
 8a4:	31 c0                	xor    %eax,%eax
 8a6:	e8 c5 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8ab:	48 89 df             	mov    %rbx,%rdi
 8ae:	48 89 ee             	mov    %rbp,%rsi
 8b1:	e8 6a 01 00 00       	callq  a20 <insert>
 8b6:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8ba:	48 8d 35 8b 04 00 00 	lea    0x48b(%rip),%rsi        # d4c <_IO_stdin_used+0x9c>
 8c1:	48 89 c3             	mov    %rax,%rbx
 8c4:	bf 01 00 00 00       	mov    $0x1,%edi
 8c9:	31 c0                	xor    %eax,%eax
 8cb:	e8 90 fe ff ff       	callq  760 <__printf_chk@plt>
 8d0:	48 89 df             	mov    %rbx,%rdi
 8d3:	e8 d8 02 00 00       	callq  bb0 <print>
 8d8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8dc:	85 c0                	test   %eax,%eax
 8de:	0f 85 49 ff ff ff    	jne    82d <main+0x9d>
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
 91f:	4c 8d 05 7a 03 00 00 	lea    0x37a(%rip),%r8        # ca0 <__libc_csu_fini>
 926:	48 8d 0d 03 03 00 00 	lea    0x303(%rip),%rcx        # c30 <__libc_csu_init>
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

0000000000000a20 <insert>:
 a20:	48 85 ff             	test   %rdi,%rdi
 a23:	74 5b                	je     a80 <insert+0x60>
 a25:	4c 8b 06             	mov    (%rsi),%r8
 a28:	48 89 fa             	mov    %rdi,%rdx
 a2b:	eb 12                	jmp    a3f <insert+0x1f>
 a2d:	0f 1f 00             	nopl   (%rax)
 a30:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a34:	49 89 d1             	mov    %rdx,%r9
 a37:	48 85 c9             	test   %rcx,%rcx
 a3a:	74 24                	je     a60 <insert+0x40>
 a3c:	48 89 ca             	mov    %rcx,%rdx
 a3f:	4c 3b 02             	cmp    (%rdx),%r8
 a42:	7f ec                	jg     a30 <insert+0x10>
 a44:	48 39 fa             	cmp    %rdi,%rdx
 a47:	74 47                	je     a90 <insert+0x70>
 a49:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a4d:	48 89 f8             	mov    %rdi,%rax
 a50:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a54:	83 05 c1 15 20 00 01 	addl   $0x1,0x2015c1(%rip)        # 20201c <n>
 a5b:	c3                   	retq   
 a5c:	0f 1f 40 00          	nopl   0x0(%rax)
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
 a8b:	c3                   	retq   
 a8c:	0f 1f 40 00          	nopl   0x0(%rax)
 a90:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a94:	48 89 f0             	mov    %rsi,%rax
 a97:	83 05 7e 15 20 00 01 	addl   $0x1,0x20157e(%rip)        # 20201c <n>
 a9e:	c3                   	retq   
 a9f:	90                   	nop

0000000000000aa0 <create>:
 aa0:	41 54                	push   %r12
 aa2:	55                   	push   %rbp
 aa3:	bf 18 00 00 00       	mov    $0x18,%edi
 aa8:	53                   	push   %rbx
 aa9:	31 ed                	xor    %ebp,%ebp
 aab:	e8 90 fc ff ff       	callq  740 <malloc@plt>
 ab0:	48 8d 3d fd 01 00 00 	lea    0x1fd(%rip),%rdi        # cb4 <_IO_stdin_used+0x4>
 ab7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 abb:	48 89 c3             	mov    %rax,%rbx
 abe:	48 89 c6             	mov    %rax,%rsi
 ac1:	31 c0                	xor    %eax,%eax
 ac3:	e8 a8 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 ac8:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 acc:	74 3c                	je     b0a <create+0x6a>
 ace:	4c 8d 25 df 01 00 00 	lea    0x1df(%rip),%r12        # cb4 <_IO_stdin_used+0x4>
 ad5:	0f 1f 00             	nopl   (%rax)
 ad8:	48 89 de             	mov    %rbx,%rsi
 adb:	48 89 ef             	mov    %rbp,%rdi
 ade:	e8 3d ff ff ff       	callq  a20 <insert>
 ae3:	bf 18 00 00 00       	mov    $0x18,%edi
 ae8:	48 89 c5             	mov    %rax,%rbp
 aeb:	e8 50 fc ff ff       	callq  740 <malloc@plt>
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
 b20:	55                   	push   %rbp
 b21:	53                   	push   %rbx
 b22:	48 89 fd             	mov    %rdi,%rbp
 b25:	48 89 f8             	mov    %rdi,%rax
 b28:	48 83 ec 08          	sub    $0x8,%rsp
 b2c:	48 85 ff             	test   %rdi,%rdi
 b2f:	75 12                	jne    b43 <del+0x23>
 b31:	eb 66                	jmp    b99 <del+0x79>
 b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b38:	48 85 db             	test   %rbx,%rbx
 b3b:	48 89 c1             	mov    %rax,%rcx
 b3e:	74 40                	je     b80 <del+0x60>
 b40:	48 89 d8             	mov    %rbx,%rax
 b43:	48 8b 10             	mov    (%rax),%rdx
 b46:	48 8b 58 10          	mov    0x10(%rax),%rbx
 b4a:	48 39 f2             	cmp    %rsi,%rdx
 b4d:	75 e9                	jne    b38 <del+0x18>
 b4f:	48 39 e8             	cmp    %rbp,%rax
 b52:	74 07                	je     b5b <del+0x3b>
 b54:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 b58:	48 89 eb             	mov    %rbp,%rbx
 b5b:	48 8d 35 5e 01 00 00 	lea    0x15e(%rip),%rsi        # cc0 <_IO_stdin_used+0x10>
 b62:	bf 01 00 00 00       	mov    $0x1,%edi
 b67:	31 c0                	xor    %eax,%eax
 b69:	e8 f2 fb ff ff       	callq  760 <__printf_chk@plt>
 b6e:	83 2d a7 14 20 00 01 	subl   $0x1,0x2014a7(%rip)        # 20201c <n>
 b75:	48 83 c4 08          	add    $0x8,%rsp
 b79:	48 89 d8             	mov    %rbx,%rax
 b7c:	5b                   	pop    %rbx
 b7d:	5d                   	pop    %rbp
 b7e:	c3                   	retq   
 b7f:	90                   	nop
 b80:	48 8d 3d 45 01 00 00 	lea    0x145(%rip),%rdi        # ccc <_IO_stdin_used+0x1c>
 b87:	48 89 eb             	mov    %rbp,%rbx
 b8a:	e8 91 fb ff ff       	callq  720 <puts@plt>
 b8f:	48 83 c4 08          	add    $0x8,%rsp
 b93:	48 89 d8             	mov    %rbx,%rax
 b96:	5b                   	pop    %rbx
 b97:	5d                   	pop    %rbp
 b98:	c3                   	retq   
 b99:	48 8d 35 1b 01 00 00 	lea    0x11b(%rip),%rsi        # cbb <_IO_stdin_used+0xb>
 ba0:	bf 01 00 00 00       	mov    $0x1,%edi
 ba5:	31 c0                	xor    %eax,%eax
 ba7:	31 db                	xor    %ebx,%ebx
 ba9:	e8 b2 fb ff ff       	callq  760 <__printf_chk@plt>
 bae:	eb c5                	jmp    b75 <del+0x55>

0000000000000bb0 <print>:
 bb0:	55                   	push   %rbp
 bb1:	53                   	push   %rbx
 bb2:	48 89 fb             	mov    %rdi,%rbx
 bb5:	48 8d 3d 1b 01 00 00 	lea    0x11b(%rip),%rdi        # cd7 <_IO_stdin_used+0x27>
 bbc:	48 83 ec 08          	sub    $0x8,%rsp
 bc0:	e8 5b fb ff ff       	callq  720 <puts@plt>
 bc5:	48 85 db             	test   %rbx,%rbx
 bc8:	74 46                	je     c10 <print+0x60>
 bca:	48 8d 2d 0f 01 00 00 	lea    0x10f(%rip),%rbp        # ce0 <_IO_stdin_used+0x30>
 bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bd8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bdc:	48 8b 13             	mov    (%rbx),%rdx
 bdf:	48 89 ee             	mov    %rbp,%rsi
 be2:	bf 01 00 00 00       	mov    $0x1,%edi
 be7:	b8 01 00 00 00       	mov    $0x1,%eax
 bec:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 bf1:	e8 6a fb ff ff       	callq  760 <__printf_chk@plt>
 bf6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bfa:	48 85 db             	test   %rbx,%rbx
 bfd:	75 d9                	jne    bd8 <print+0x28>
 bff:	48 83 c4 08          	add    $0x8,%rsp
 c03:	5b                   	pop    %rbx
 c04:	5d                   	pop    %rbp
 c05:	c3                   	retq   
 c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c0d:	00 00 00 
 c10:	48 83 c4 08          	add    $0x8,%rsp
 c14:	48 8d 35 a0 00 00 00 	lea    0xa0(%rip),%rsi        # cbb <_IO_stdin_used+0xb>
 c1b:	bf 01 00 00 00       	mov    $0x1,%edi
 c20:	5b                   	pop    %rbx
 c21:	5d                   	pop    %rbp
 c22:	31 c0                	xor    %eax,%eax
 c24:	e9 37 fb ff ff       	jmpq   760 <__printf_chk@plt>
 c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c30 <__libc_csu_init>:
 c30:	41 57                	push   %r15
 c32:	41 56                	push   %r14
 c34:	49 89 d7             	mov    %rdx,%r15
 c37:	41 55                	push   %r13
 c39:	41 54                	push   %r12
 c3b:	4c 8d 25 46 11 20 00 	lea    0x201146(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c42:	55                   	push   %rbp
 c43:	48 8d 2d 46 11 20 00 	lea    0x201146(%rip),%rbp        # 201d90 <__init_array_end>
 c4a:	53                   	push   %rbx
 c4b:	41 89 fd             	mov    %edi,%r13d
 c4e:	49 89 f6             	mov    %rsi,%r14
 c51:	4c 29 e5             	sub    %r12,%rbp
 c54:	48 83 ec 08          	sub    $0x8,%rsp
 c58:	48 c1 fd 03          	sar    $0x3,%rbp
 c5c:	e8 87 fa ff ff       	callq  6e8 <_init>
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
