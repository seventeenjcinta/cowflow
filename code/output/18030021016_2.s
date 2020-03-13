
input/18030021016_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d 8f 05 00 00 	lea    0x58f(%rip),%rdi        # d2a <_IO_stdin_used+0x3a>
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
 7c2:	e8 19 04 00 00       	callq  be0 <create>
 7c7:	48 89 c7             	mov    %rax,%rdi
 7ca:	48 89 c3             	mov    %rax,%rbx
 7cd:	e8 4e 02 00 00       	callq  a20 <print>
 7d2:	eb 51                	jmp    825 <main+0x95>
 7d4:	0f 1f 40 00          	nopl   0x0(%rax)
 7d8:	83 f8 02             	cmp    $0x2,%eax
 7db:	75 40                	jne    81d <main+0x8d>
 7dd:	48 8d 35 b1 05 00 00 	lea    0x5b1(%rip),%rsi        # d95 <_IO_stdin_used+0xa5>
 7e4:	bf 01 00 00 00       	mov    $0x1,%edi
 7e9:	31 c0                	xor    %eax,%eax
 7eb:	e8 70 ff ff ff       	callq  760 <__printf_chk@plt>
 7f0:	48 8d 3d b0 05 00 00 	lea    0x5b0(%rip),%rdi        # da7 <_IO_stdin_used+0xb7>
 7f7:	4c 89 ee             	mov    %r13,%rsi
 7fa:	31 c0                	xor    %eax,%eax
 7fc:	e8 6f ff ff ff       	callq  770 <__isoc99_scanf@plt>
 801:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 806:	48 89 df             	mov    %rbx,%rdi
 809:	e8 32 03 00 00       	callq  b40 <del>
 80e:	48 89 c7             	mov    %rax,%rdi
 811:	48 89 c3             	mov    %rax,%rbx
 814:	e8 07 02 00 00       	callq  a20 <print>
 819:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 81d:	85 c0                	test   %eax,%eax
 81f:	0f 84 bf 00 00 00    	je     8e4 <main+0x154>
 825:	48 8d 3d 13 05 00 00 	lea    0x513(%rip),%rdi        # d3f <_IO_stdin_used+0x4f>
 82c:	e8 ef fe ff ff       	callq  720 <puts@plt>
 831:	48 8d 35 21 05 00 00 	lea    0x521(%rip),%rsi        # d59 <_IO_stdin_used+0x69>
 838:	bf 01 00 00 00       	mov    $0x1,%edi
 83d:	31 c0                	xor    %eax,%eax
 83f:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 846:	ff 
 847:	e8 14 ff ff ff       	callq  760 <__printf_chk@plt>
 84c:	48 8d 3d 15 05 00 00 	lea    0x515(%rip),%rdi        # d68 <_IO_stdin_used+0x78>
 853:	4c 89 e6             	mov    %r12,%rsi
 856:	31 c0                	xor    %eax,%eax
 858:	e8 13 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 85d:	48 8b 3d ac 17 20 00 	mov    0x2017ac(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 864:	e8 e7 fe ff ff       	callq  750 <_IO_getc@plt>
 869:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 86d:	83 f8 01             	cmp    $0x1,%eax
 870:	0f 85 62 ff ff ff    	jne    7d8 <main+0x48>
 876:	48 8d 35 ee 04 00 00 	lea    0x4ee(%rip),%rsi        # d6b <_IO_stdin_used+0x7b>
 87d:	bf 01 00 00 00       	mov    $0x1,%edi
 882:	31 c0                	xor    %eax,%eax
 884:	e8 d7 fe ff ff       	callq  760 <__printf_chk@plt>
 889:	bf 18 00 00 00       	mov    $0x18,%edi
 88e:	e8 ad fe ff ff       	callq  740 <malloc@plt>
 893:	48 8d 3d 89 04 00 00 	lea    0x489(%rip),%rdi        # d23 <_IO_stdin_used+0x33>
 89a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 89e:	48 89 c5             	mov    %rax,%rbp
 8a1:	48 89 c6             	mov    %rax,%rsi
 8a4:	31 c0                	xor    %eax,%eax
 8a6:	e8 c5 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8ab:	48 89 df             	mov    %rbx,%rdi
 8ae:	48 89 ee             	mov    %rbp,%rsi
 8b1:	e8 ca 01 00 00       	callq  a80 <insert>
 8b6:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8ba:	48 8d 35 c6 04 00 00 	lea    0x4c6(%rip),%rsi        # d87 <_IO_stdin_used+0x97>
 8c1:	48 89 c3             	mov    %rax,%rbx
 8c4:	bf 01 00 00 00       	mov    $0x1,%edi
 8c9:	31 c0                	xor    %eax,%eax
 8cb:	e8 90 fe ff ff       	callq  760 <__printf_chk@plt>
 8d0:	48 89 df             	mov    %rbx,%rdi
 8d3:	e8 48 01 00 00       	callq  a20 <print>
 8d8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8dc:	85 c0                	test   %eax,%eax
 8de:	0f 85 41 ff ff ff    	jne    825 <main+0x95>
 8e4:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8e9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
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
 91f:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # ce0 <__libc_csu_fini>
 926:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # c70 <__libc_csu_init>
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
 a22:	48 89 fb             	mov    %rdi,%rbx
 a25:	48 8d 3d c8 02 00 00 	lea    0x2c8(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 a2c:	48 83 ec 08          	sub    $0x8,%rsp
 a30:	e8 eb fc ff ff       	callq  720 <puts@plt>
 a35:	48 85 db             	test   %rbx,%rbx
 a38:	74 35                	je     a6f <print+0x4f>
 a3a:	48 8d 2d c5 02 00 00 	lea    0x2c5(%rip),%rbp        # d06 <_IO_stdin_used+0x16>
 a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a48:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a4c:	48 8b 13             	mov    (%rbx),%rdx
 a4f:	48 89 ee             	mov    %rbp,%rsi
 a52:	bf 01 00 00 00       	mov    $0x1,%edi
 a57:	b8 01 00 00 00       	mov    $0x1,%eax
 a5c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a61:	e8 fa fc ff ff       	callq  760 <__printf_chk@plt>
 a66:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a6a:	48 85 db             	test   %rbx,%rbx
 a6d:	75 d9                	jne    a48 <print+0x28>
 a6f:	48 83 c4 08          	add    $0x8,%rsp
 a73:	5b                   	pop    %rbx
 a74:	5d                   	pop    %rbp
 a75:	c3                   	retq   
 a76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a7d:	00 00 00 

0000000000000a80 <insert>:
 a80:	55                   	push   %rbp
 a81:	53                   	push   %rbx
 a82:	48 89 fb             	mov    %rdi,%rbx
 a85:	bf 18 00 00 00       	mov    $0x18,%edi
 a8a:	48 89 f5             	mov    %rsi,%rbp
 a8d:	48 83 ec 08          	sub    $0x8,%rsp
 a91:	e8 aa fc ff ff       	callq  740 <malloc@plt>
 a96:	48 85 db             	test   %rbx,%rbx
 a99:	74 65                	je     b00 <insert+0x80>
 a9b:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
 a9f:	48 89 da             	mov    %rbx,%rdx
 aa2:	eb 13                	jmp    ab7 <insert+0x37>
 aa4:	0f 1f 40 00          	nopl   0x0(%rax)
 aa8:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 aac:	48 89 d0             	mov    %rdx,%rax
 aaf:	48 85 c9             	test   %rcx,%rcx
 ab2:	74 2c                	je     ae0 <insert+0x60>
 ab4:	48 89 ca             	mov    %rcx,%rdx
 ab7:	48 3b 3a             	cmp    (%rdx),%rdi
 aba:	7f ec                	jg     aa8 <insert+0x28>
 abc:	48 39 da             	cmp    %rbx,%rdx
 abf:	74 5f                	je     b20 <insert+0xa0>
 ac1:	48 89 68 10          	mov    %rbp,0x10(%rax)
 ac5:	83 05 50 15 20 00 01 	addl   $0x1,0x201550(%rip)        # 20201c <n>
 acc:	48 89 d8             	mov    %rbx,%rax
 acf:	48 89 55 10          	mov    %rdx,0x10(%rbp)
 ad3:	48 83 c4 08          	add    $0x8,%rsp
 ad7:	5b                   	pop    %rbx
 ad8:	5d                   	pop    %rbp
 ad9:	c3                   	retq   
 ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ae0:	48 89 6a 10          	mov    %rbp,0x10(%rdx)
 ae4:	83 05 31 15 20 00 01 	addl   $0x1,0x201531(%rip)        # 20201c <n>
 aeb:	48 89 d8             	mov    %rbx,%rax
 aee:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 af5:	00 
 af6:	48 83 c4 08          	add    $0x8,%rsp
 afa:	5b                   	pop    %rbx
 afb:	5d                   	pop    %rbp
 afc:	c3                   	retq   
 afd:	0f 1f 00             	nopl   (%rax)
 b00:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 b07:	00 
 b08:	83 05 0d 15 20 00 01 	addl   $0x1,0x20150d(%rip)        # 20201c <n>
 b0f:	48 83 c4 08          	add    $0x8,%rsp
 b13:	48 89 e8             	mov    %rbp,%rax
 b16:	5b                   	pop    %rbx
 b17:	5d                   	pop    %rbp
 b18:	c3                   	retq   
 b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b20:	48 89 55 10          	mov    %rdx,0x10(%rbp)
 b24:	83 05 f1 14 20 00 01 	addl   $0x1,0x2014f1(%rip)        # 20201c <n>
 b2b:	48 83 c4 08          	add    $0x8,%rsp
 b2f:	48 89 e8             	mov    %rbp,%rax
 b32:	5b                   	pop    %rbx
 b33:	5d                   	pop    %rbp
 b34:	c3                   	retq   
 b35:	90                   	nop
 b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b3d:	00 00 00 

0000000000000b40 <del>:
 b40:	41 54                	push   %r12
 b42:	55                   	push   %rbp
 b43:	49 89 fc             	mov    %rdi,%r12
 b46:	53                   	push   %rbx
 b47:	bf 18 00 00 00       	mov    $0x18,%edi
 b4c:	48 89 f5             	mov    %rsi,%rbp
 b4f:	e8 ec fb ff ff       	callq  740 <malloc@plt>
 b54:	4d 85 e4             	test   %r12,%r12
 b57:	4c 89 e7             	mov    %r12,%rdi
 b5a:	75 0f                	jne    b6b <del+0x2b>
 b5c:	eb 72                	jmp    bd0 <del+0x90>
 b5e:	66 90                	xchg   %ax,%ax
 b60:	48 85 db             	test   %rbx,%rbx
 b63:	48 89 f8             	mov    %rdi,%rax
 b66:	74 38                	je     ba0 <del+0x60>
 b68:	48 89 df             	mov    %rbx,%rdi
 b6b:	48 39 2f             	cmp    %rbp,(%rdi)
 b6e:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 b72:	75 ec                	jne    b60 <del+0x20>
 b74:	4c 39 e7             	cmp    %r12,%rdi
 b77:	74 47                	je     bc0 <del+0x80>
 b79:	48 89 58 10          	mov    %rbx,0x10(%rax)
 b7d:	4c 89 e3             	mov    %r12,%rbx
 b80:	e8 8b fb ff ff       	callq  710 <free@plt>
 b85:	8b 05 91 14 20 00    	mov    0x201491(%rip),%eax        # 20201c <n>
 b8b:	83 e8 01             	sub    $0x1,%eax
 b8e:	89 05 88 14 20 00    	mov    %eax,0x201488(%rip)        # 20201c <n>
 b94:	48 89 d8             	mov    %rbx,%rax
 b97:	5b                   	pop    %rbx
 b98:	5d                   	pop    %rbp
 b99:	41 5c                	pop    %r12
 b9b:	c3                   	retq   
 b9c:	0f 1f 40 00          	nopl   0x0(%rax)
 ba0:	48 8d 3d 09 02 00 00 	lea    0x209(%rip),%rdi        # db0 <_IO_stdin_used+0xc0>
 ba7:	4c 89 e3             	mov    %r12,%rbx
 baa:	e8 71 fb ff ff       	callq  720 <puts@plt>
 baf:	8b 05 67 14 20 00    	mov    0x201467(%rip),%eax        # 20201c <n>
 bb5:	eb d4                	jmp    b8b <del+0x4b>
 bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 bbe:	00 00 
 bc0:	e8 4b fb ff ff       	callq  710 <free@plt>
 bc5:	8b 05 51 14 20 00    	mov    0x201451(%rip),%eax        # 20201c <n>
 bcb:	83 e8 01             	sub    $0x1,%eax
 bce:	eb bb                	jmp    b8b <del+0x4b>
 bd0:	48 8d 3d 39 01 00 00 	lea    0x139(%rip),%rdi        # d10 <_IO_stdin_used+0x20>
 bd7:	31 db                	xor    %ebx,%ebx
 bd9:	e8 42 fb ff ff       	callq  720 <puts@plt>
 bde:	eb b4                	jmp    b94 <del+0x54>

0000000000000be0 <create>:
 be0:	41 54                	push   %r12
 be2:	55                   	push   %rbp
 be3:	bf 18 00 00 00       	mov    $0x18,%edi
 be8:	53                   	push   %rbx
 be9:	31 ed                	xor    %ebp,%ebp
 beb:	e8 50 fb ff ff       	callq  740 <malloc@plt>
 bf0:	48 8d 3d d9 01 00 00 	lea    0x1d9(%rip),%rdi        # dd0 <_IO_stdin_used+0xe0>
 bf7:	48 89 c3             	mov    %rax,%rbx
 bfa:	e8 21 fb ff ff       	callq  720 <puts@plt>
 bff:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 c03:	48 8d 3d 19 01 00 00 	lea    0x119(%rip),%rdi        # d23 <_IO_stdin_used+0x33>
 c0a:	31 c0                	xor    %eax,%eax
 c0c:	48 89 de             	mov    %rbx,%rsi
 c0f:	e8 5c fb ff ff       	callq  770 <__isoc99_scanf@plt>
 c14:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 c18:	74 40                	je     c5a <create+0x7a>
 c1a:	4c 8d 25 02 01 00 00 	lea    0x102(%rip),%r12        # d23 <_IO_stdin_used+0x33>
 c21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c28:	48 89 de             	mov    %rbx,%rsi
 c2b:	48 89 ef             	mov    %rbp,%rdi
 c2e:	e8 4d fe ff ff       	callq  a80 <insert>
 c33:	bf 18 00 00 00       	mov    $0x18,%edi
 c38:	48 89 c5             	mov    %rax,%rbp
 c3b:	e8 00 fb ff ff       	callq  740 <malloc@plt>
 c40:	48 8d 50 08          	lea    0x8(%rax),%rdx
 c44:	48 89 c3             	mov    %rax,%rbx
 c47:	48 89 c6             	mov    %rax,%rsi
 c4a:	4c 89 e7             	mov    %r12,%rdi
 c4d:	31 c0                	xor    %eax,%eax
 c4f:	e8 1c fb ff ff       	callq  770 <__isoc99_scanf@plt>
 c54:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 c58:	75 ce                	jne    c28 <create+0x48>
 c5a:	48 89 df             	mov    %rbx,%rdi
 c5d:	e8 ae fa ff ff       	callq  710 <free@plt>
 c62:	48 89 e8             	mov    %rbp,%rax
 c65:	5b                   	pop    %rbx
 c66:	5d                   	pop    %rbp
 c67:	41 5c                	pop    %r12
 c69:	c3                   	retq   
 c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c70 <__libc_csu_init>:
 c70:	41 57                	push   %r15
 c72:	41 56                	push   %r14
 c74:	49 89 d7             	mov    %rdx,%r15
 c77:	41 55                	push   %r13
 c79:	41 54                	push   %r12
 c7b:	4c 8d 25 06 11 20 00 	lea    0x201106(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c82:	55                   	push   %rbp
 c83:	48 8d 2d 06 11 20 00 	lea    0x201106(%rip),%rbp        # 201d90 <__init_array_end>
 c8a:	53                   	push   %rbx
 c8b:	41 89 fd             	mov    %edi,%r13d
 c8e:	49 89 f6             	mov    %rsi,%r14
 c91:	4c 29 e5             	sub    %r12,%rbp
 c94:	48 83 ec 08          	sub    $0x8,%rsp
 c98:	48 c1 fd 03          	sar    $0x3,%rbp
 c9c:	e8 47 fa ff ff       	callq  6e8 <_init>
 ca1:	48 85 ed             	test   %rbp,%rbp
 ca4:	74 20                	je     cc6 <__libc_csu_init+0x56>
 ca6:	31 db                	xor    %ebx,%ebx
 ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 caf:	00 
 cb0:	4c 89 fa             	mov    %r15,%rdx
 cb3:	4c 89 f6             	mov    %r14,%rsi
 cb6:	44 89 ef             	mov    %r13d,%edi
 cb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 cbd:	48 83 c3 01          	add    $0x1,%rbx
 cc1:	48 39 dd             	cmp    %rbx,%rbp
 cc4:	75 ea                	jne    cb0 <__libc_csu_init+0x40>
 cc6:	48 83 c4 08          	add    $0x8,%rsp
 cca:	5b                   	pop    %rbx
 ccb:	5d                   	pop    %rbp
 ccc:	41 5c                	pop    %r12
 cce:	41 5d                	pop    %r13
 cd0:	41 5e                	pop    %r14
 cd2:	41 5f                	pop    %r15
 cd4:	c3                   	retq   
 cd5:	90                   	nop
 cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cdd:	00 00 00 

0000000000000ce0 <__libc_csu_fini>:
 ce0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ce4 <_fini>:
 ce4:	48 83 ec 08          	sub    $0x8,%rsp
 ce8:	48 83 c4 08          	add    $0x8,%rsp
 cec:	c3                   	retq   
