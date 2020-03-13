
input/19020031086_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d af 05 00 00 	lea    0x5af(%rip),%rdi        # d4a <_IO_stdin_used+0x6a>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d fb 05 00 00 	lea    0x5fb(%rip),%rdi        # db8 <_IO_stdin_used+0xd8>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	e8 df 02 00 00       	callq  ab0 <create>
 7d1:	48 89 c7             	mov    %rax,%rdi
 7d4:	48 89 c3             	mov    %rax,%rbx
 7d7:	e8 54 03 00 00       	callq  b30 <print>
 7dc:	eb 4f                	jmp    82d <main+0x9d>
 7de:	66 90                	xchg   %ax,%ax
 7e0:	83 f8 02             	cmp    $0x2,%eax
 7e3:	75 40                	jne    825 <main+0x95>
 7e5:	48 8d 35 b1 05 00 00 	lea    0x5b1(%rip),%rsi        # d9d <_IO_stdin_used+0xbd>
 7ec:	bf 01 00 00 00       	mov    $0x1,%edi
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 68 ff ff ff       	callq  760 <__printf_chk@plt>
 7f8:	48 8d 3d b0 05 00 00 	lea    0x5b0(%rip),%rdi        # daf <_IO_stdin_used+0xcf>
 7ff:	4c 89 ee             	mov    %r13,%rsi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 67 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 809:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 80e:	48 89 df             	mov    %rbx,%rdi
 811:	e8 8a 03 00 00       	callq  ba0 <del>
 816:	48 89 c7             	mov    %rax,%rdi
 819:	48 89 c3             	mov    %rax,%rbx
 81c:	e8 0f 03 00 00       	callq  b30 <print>
 821:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 825:	85 c0                	test   %eax,%eax
 827:	0f 84 bf 00 00 00    	je     8ec <main+0x15c>
 82d:	48 8d 3d ac 05 00 00 	lea    0x5ac(%rip),%rdi        # de0 <_IO_stdin_used+0x100>
 834:	e8 e7 fe ff ff       	callq  720 <puts@plt>
 839:	48 8d 35 21 05 00 00 	lea    0x521(%rip),%rsi        # d61 <_IO_stdin_used+0x81>
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 84e:	ff 
 84f:	e8 0c ff ff ff       	callq  760 <__printf_chk@plt>
 854:	48 8d 3d 15 05 00 00 	lea    0x515(%rip),%rdi        # d70 <_IO_stdin_used+0x90>
 85b:	4c 89 e6             	mov    %r12,%rsi
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 0b ff ff ff       	callq  770 <__isoc99_scanf@plt>
 865:	48 8b 3d a4 17 20 00 	mov    0x2017a4(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 86c:	e8 df fe ff ff       	callq  750 <_IO_getc@plt>
 871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 875:	83 f8 01             	cmp    $0x1,%eax
 878:	0f 85 62 ff ff ff    	jne    7e0 <main+0x50>
 87e:	48 8d 35 ee 04 00 00 	lea    0x4ee(%rip),%rsi        # d73 <_IO_stdin_used+0x93>
 885:	bf 01 00 00 00       	mov    $0x1,%edi
 88a:	31 c0                	xor    %eax,%eax
 88c:	e8 cf fe ff ff       	callq  760 <__printf_chk@plt>
 891:	bf 18 00 00 00       	mov    $0x18,%edi
 896:	e8 a5 fe ff ff       	callq  740 <malloc@plt>
 89b:	48 8d 3d 42 04 00 00 	lea    0x442(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 8a2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8a6:	48 89 c5             	mov    %rax,%rbp
 8a9:	48 89 c6             	mov    %rax,%rsi
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	e8 bd fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8b3:	48 89 df             	mov    %rbx,%rdi
 8b6:	48 89 ee             	mov    %rbp,%rsi
 8b9:	e8 62 01 00 00       	callq  a20 <insert>
 8be:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8c2:	48 8d 35 c6 04 00 00 	lea    0x4c6(%rip),%rsi        # d8f <_IO_stdin_used+0xaf>
 8c9:	48 89 c3             	mov    %rax,%rbx
 8cc:	bf 01 00 00 00       	mov    $0x1,%edi
 8d1:	31 c0                	xor    %eax,%eax
 8d3:	e8 88 fe ff ff       	callq  760 <__printf_chk@plt>
 8d8:	48 89 df             	mov    %rbx,%rdi
 8db:	e8 50 02 00 00       	callq  b30 <print>
 8e0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8e4:	85 c0                	test   %eax,%eax
 8e6:	0f 85 41 ff ff ff    	jne    82d <main+0x9d>
 8ec:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8f1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
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
 91f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # cd0 <__libc_csu_fini>
 926:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # c60 <__libc_csu_init>
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
 a47:	74 4f                	je     a98 <insert+0x78>
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
 a8b:	83 05 8a 15 20 00 01 	addl   $0x1,0x20158a(%rip)        # 20201c <n>
 a92:	c3                   	retq   
 a93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a98:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a9c:	48 89 f0             	mov    %rsi,%rax
 a9f:	83 05 76 15 20 00 01 	addl   $0x1,0x201576(%rip)        # 20201c <n>
 aa6:	c3                   	retq   
 aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aae:	00 00 

0000000000000ab0 <create>:
 ab0:	41 54                	push   %r12
 ab2:	55                   	push   %rbp
 ab3:	bf 18 00 00 00       	mov    $0x18,%edi
 ab8:	53                   	push   %rbx
 ab9:	31 ed                	xor    %ebp,%ebp
 abb:	e8 80 fc ff ff       	callq  740 <malloc@plt>
 ac0:	48 8d 3d 1d 02 00 00 	lea    0x21d(%rip),%rdi        # ce4 <_IO_stdin_used+0x4>
 ac7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 acb:	48 89 c3             	mov    %rax,%rbx
 ace:	48 89 c6             	mov    %rax,%rsi
 ad1:	31 c0                	xor    %eax,%eax
 ad3:	e8 98 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 ad8:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 adc:	74 3c                	je     b1a <create+0x6a>
 ade:	4c 8d 25 ff 01 00 00 	lea    0x1ff(%rip),%r12        # ce4 <_IO_stdin_used+0x4>
 ae5:	0f 1f 00             	nopl   (%rax)
 ae8:	48 89 de             	mov    %rbx,%rsi
 aeb:	48 89 ef             	mov    %rbp,%rdi
 aee:	e8 2d ff ff ff       	callq  a20 <insert>
 af3:	bf 18 00 00 00       	mov    $0x18,%edi
 af8:	48 89 c5             	mov    %rax,%rbp
 afb:	e8 40 fc ff ff       	callq  740 <malloc@plt>
 b00:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b04:	48 89 c3             	mov    %rax,%rbx
 b07:	48 89 c6             	mov    %rax,%rsi
 b0a:	4c 89 e7             	mov    %r12,%rdi
 b0d:	31 c0                	xor    %eax,%eax
 b0f:	e8 5c fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b14:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b18:	75 ce                	jne    ae8 <create+0x38>
 b1a:	48 89 df             	mov    %rbx,%rdi
 b1d:	e8 ee fb ff ff       	callq  710 <free@plt>
 b22:	48 89 e8             	mov    %rbp,%rax
 b25:	5b                   	pop    %rbx
 b26:	5d                   	pop    %rbp
 b27:	41 5c                	pop    %r12
 b29:	c3                   	retq   
 b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b30 <print>:
 b30:	48 85 ff             	test   %rdi,%rdi
 b33:	74 5b                	je     b90 <print+0x60>
 b35:	55                   	push   %rbp
 b36:	53                   	push   %rbx
 b37:	48 8d 35 ad 01 00 00 	lea    0x1ad(%rip),%rsi        # ceb <_IO_stdin_used+0xb>
 b3e:	48 8d 2d c2 01 00 00 	lea    0x1c2(%rip),%rbp        # d07 <_IO_stdin_used+0x27>
 b45:	48 89 fb             	mov    %rdi,%rbx
 b48:	31 c0                	xor    %eax,%eax
 b4a:	48 83 ec 08          	sub    $0x8,%rsp
 b4e:	8b 15 c8 14 20 00    	mov    0x2014c8(%rip),%edx        # 20201c <n>
 b54:	bf 01 00 00 00       	mov    $0x1,%edi
 b59:	e8 02 fc ff ff       	callq  760 <__printf_chk@plt>
 b5e:	66 90                	xchg   %ax,%ax
 b60:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b64:	48 8b 13             	mov    (%rbx),%rdx
 b67:	48 89 ee             	mov    %rbp,%rsi
 b6a:	bf 01 00 00 00       	mov    $0x1,%edi
 b6f:	b8 01 00 00 00       	mov    $0x1,%eax
 b74:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b79:	e8 e2 fb ff ff       	callq  760 <__printf_chk@plt>
 b7e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b82:	48 85 db             	test   %rbx,%rbx
 b85:	75 d9                	jne    b60 <print+0x30>
 b87:	48 83 c4 08          	add    $0x8,%rsp
 b8b:	5b                   	pop    %rbx
 b8c:	5d                   	pop    %rbp
 b8d:	c3                   	retq   
 b8e:	66 90                	xchg   %ax,%ax
 b90:	48 8d 3d 7a 01 00 00 	lea    0x17a(%rip),%rdi        # d11 <_IO_stdin_used+0x31>
 b97:	e9 84 fb ff ff       	jmpq   720 <puts@plt>
 b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ba0 <del>:
 ba0:	48 85 ff             	test   %rdi,%rdi
 ba3:	0f 84 87 00 00 00    	je     c30 <del+0x90>
 ba9:	41 54                	push   %r12
 bab:	55                   	push   %rbp
 bac:	48 89 f2             	mov    %rsi,%rdx
 baf:	53                   	push   %rbx
 bb0:	48 89 fd             	mov    %rdi,%rbp
 bb3:	48 89 fb             	mov    %rdi,%rbx
 bb6:	48 83 ec 10          	sub    $0x10,%rsp
 bba:	eb 13                	jmp    bcf <del+0x2f>
 bbc:	0f 1f 40 00          	nopl   0x0(%rax)
 bc0:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 bc4:	49 89 dc             	mov    %rbx,%r12
 bc7:	48 85 c9             	test   %rcx,%rcx
 bca:	74 44                	je     c10 <del+0x70>
 bcc:	48 89 cb             	mov    %rcx,%rbx
 bcf:	48 39 13             	cmp    %rdx,(%rbx)
 bd2:	75 ec                	jne    bc0 <del+0x20>
 bd4:	48 8d 35 4d 01 00 00 	lea    0x14d(%rip),%rsi        # d28 <_IO_stdin_used+0x48>
 bdb:	31 c0                	xor    %eax,%eax
 bdd:	bf 01 00 00 00       	mov    $0x1,%edi
 be2:	e8 79 fb ff ff       	callq  760 <__printf_chk@plt>
 be7:	48 39 eb             	cmp    %rbp,%rbx
 bea:	74 4c                	je     c38 <del+0x98>
 bec:	48 8b 43 10          	mov    0x10(%rbx),%rax
 bf0:	48 89 df             	mov    %rbx,%rdi
 bf3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
 bf8:	e8 13 fb ff ff       	callq  710 <free@plt>
 bfd:	83 2d 18 14 20 00 01 	subl   $0x1,0x201418(%rip)        # 20201c <n>
 c04:	48 89 e8             	mov    %rbp,%rax
 c07:	48 83 c4 10          	add    $0x10,%rsp
 c0b:	5b                   	pop    %rbx
 c0c:	5d                   	pop    %rbp
 c0d:	41 5c                	pop    %r12
 c0f:	c3                   	retq   
 c10:	48 8d 35 1e 01 00 00 	lea    0x11e(%rip),%rsi        # d35 <_IO_stdin_used+0x55>
 c17:	bf 01 00 00 00       	mov    $0x1,%edi
 c1c:	31 c0                	xor    %eax,%eax
 c1e:	e8 3d fb ff ff       	callq  760 <__printf_chk@plt>
 c23:	48 83 c4 10          	add    $0x10,%rsp
 c27:	48 89 e8             	mov    %rbp,%rax
 c2a:	5b                   	pop    %rbx
 c2b:	5d                   	pop    %rbp
 c2c:	41 5c                	pop    %r12
 c2e:	c3                   	retq   
 c2f:	90                   	nop
 c30:	f3 c3                	repz retq 
 c32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 c38:	48 8b 43 10          	mov    0x10(%rbx),%rax
 c3c:	48 89 df             	mov    %rbx,%rdi
 c3f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 c44:	e8 c7 fa ff ff       	callq  710 <free@plt>
 c49:	83 2d cc 13 20 00 01 	subl   $0x1,0x2013cc(%rip)        # 20201c <n>
 c50:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 c55:	eb b0                	jmp    c07 <del+0x67>
 c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c5e:	00 00 

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
 c8c:	e8 57 fa ff ff       	callq  6e8 <_init>
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
