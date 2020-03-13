
input/19020031120_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000680 <_init>:
 680:	48 83 ec 08          	sub    $0x8,%rsp
 684:	48 8b 05 5d 19 20 00 	mov    0x20195d(%rip),%rax        # 201fe8 <__gmon_start__>
 68b:	48 85 c0             	test   %rax,%rax
 68e:	74 02                	je     692 <_init+0x12>
 690:	ff d0                	callq  *%rax
 692:	48 83 c4 08          	add    $0x8,%rsp
 696:	c3                   	retq   

Disassembly of section .plt:

00000000000006a0 <.plt>:
 6a0:	ff 35 ea 18 20 00    	pushq  0x2018ea(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6a6:	ff 25 ec 18 20 00    	jmpq   *0x2018ec(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006b0 <free@plt>:
 6b0:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 6b6:	68 00 00 00 00       	pushq  $0x0
 6bb:	e9 e0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006c0 <putchar@plt>:
 6c0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 6c6:	68 01 00 00 00       	pushq  $0x1
 6cb:	e9 d0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006d0 <puts@plt>:
 6d0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6d6:	68 02 00 00 00       	pushq  $0x2
 6db:	e9 c0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006e0 <malloc@plt>:
 6e0:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 6e6:	68 03 00 00 00       	pushq  $0x3
 6eb:	e9 b0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006f0 <__printf_chk@plt>:
 6f0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 6f6:	68 04 00 00 00       	pushq  $0x4
 6fb:	e9 a0 ff ff ff       	jmpq   6a0 <.plt>

0000000000000700 <__isoc99_scanf@plt>:
 700:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 706:	68 05 00 00 00       	pushq  $0x5
 70b:	e9 90 ff ff ff       	jmpq   6a0 <.plt>

0000000000000710 <exit@plt>:
 710:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 716:	68 06 00 00 00       	pushq  $0x6
 71b:	e9 80 ff ff ff       	jmpq   6a0 <.plt>

Disassembly of section .plt.got:

0000000000000720 <__cxa_finalize@plt>:
 720:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000730 <main>:
 730:	41 55                	push   %r13
 732:	41 54                	push   %r12
 734:	48 8d 3d 35 06 00 00 	lea    0x635(%rip),%rdi        # d70 <_IO_stdin_used+0xb0>
 73b:	55                   	push   %rbp
 73c:	53                   	push   %rbx
 73d:	48 83 ec 28          	sub    $0x28,%rsp
 741:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 748:	00 00 
 74a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 74f:	31 c0                	xor    %eax,%eax
 751:	e8 7a ff ff ff       	callq  6d0 <puts@plt>
 756:	48 8d 3d 33 06 00 00 	lea    0x633(%rip),%rdi        # d90 <_IO_stdin_used+0xd0>
 75d:	e8 6e ff ff ff       	callq  6d0 <puts@plt>
 762:	e8 99 03 00 00       	callq  b00 <create>
 767:	48 85 c0             	test   %rax,%rax
 76a:	48 89 c3             	mov    %rax,%rbx
 76d:	74 08                	je     777 <main+0x47>
 76f:	48 89 c7             	mov    %rax,%rdi
 772:	e8 49 04 00 00       	callq  bc0 <print>
 777:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 77c:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 788:	48 8d 3d 39 06 00 00 	lea    0x639(%rip),%rdi        # dc8 <_IO_stdin_used+0x108>
 78f:	e8 3c ff ff ff       	callq  6d0 <puts@plt>
 794:	48 8d 35 1a 07 00 00 	lea    0x71a(%rip),%rsi        # eb5 <_IO_stdin_used+0x1f5>
 79b:	bf 01 00 00 00       	mov    $0x1,%edi
 7a0:	31 c0                	xor    %eax,%eax
 7a2:	e8 49 ff ff ff       	callq  6f0 <__printf_chk@plt>
 7a7:	48 8d 3d 23 07 00 00 	lea    0x723(%rip),%rdi        # ed1 <_IO_stdin_used+0x211>
 7ae:	31 c0                	xor    %eax,%eax
 7b0:	4c 89 e6             	mov    %r12,%rsi
 7b3:	e8 48 ff ff ff       	callq  700 <__isoc99_scanf@plt>
 7b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7bc:	85 c0                	test   %eax,%eax
 7be:	0f 84 e4 00 00 00    	je     8a8 <main+0x178>
 7c4:	83 f8 01             	cmp    $0x1,%eax
 7c7:	74 57                	je     820 <main+0xf0>
 7c9:	83 f8 02             	cmp    $0x2,%eax
 7cc:	0f 85 be 00 00 00    	jne    890 <main+0x160>
 7d2:	48 85 db             	test   %rbx,%rbx
 7d5:	0f 84 d4 00 00 00    	je     8af <main+0x17f>
 7db:	48 8d 35 05 07 00 00 	lea    0x705(%rip),%rsi        # ee7 <_IO_stdin_used+0x227>
 7e2:	bf 01 00 00 00       	mov    $0x1,%edi
 7e7:	31 c0                	xor    %eax,%eax
 7e9:	e8 02 ff ff ff       	callq  6f0 <__printf_chk@plt>
 7ee:	48 8d 3d dc 06 00 00 	lea    0x6dc(%rip),%rdi        # ed1 <_IO_stdin_used+0x211>
 7f5:	4c 89 ee             	mov    %r13,%rsi
 7f8:	31 c0                	xor    %eax,%eax
 7fa:	e8 01 ff ff ff       	callq  700 <__isoc99_scanf@plt>
 7ff:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 804:	48 89 df             	mov    %rbx,%rdi
 807:	e8 44 02 00 00       	callq  a50 <delete>
 80c:	48 89 c7             	mov    %rax,%rdi
 80f:	48 89 c3             	mov    %rax,%rbx
 812:	e8 a9 03 00 00       	callq  bc0 <print>
 817:	e9 6c ff ff ff       	jmpq   788 <main+0x58>
 81c:	0f 1f 40 00          	nopl   0x0(%rax)
 820:	48 8d 35 c9 05 00 00 	lea    0x5c9(%rip),%rsi        # df0 <_IO_stdin_used+0x130>
 827:	bf 01 00 00 00       	mov    $0x1,%edi
 82c:	31 c0                	xor    %eax,%eax
 82e:	e8 bd fe ff ff       	callq  6f0 <__printf_chk@plt>
 833:	bf 10 00 00 00       	mov    $0x10,%edi
 838:	e8 a3 fe ff ff       	callq  6e0 <malloc@plt>
 83d:	48 8d 3d 5b 06 00 00 	lea    0x65b(%rip),%rdi        # e9f <_IO_stdin_used+0x1df>
 844:	48 8d 50 04          	lea    0x4(%rax),%rdx
 848:	48 89 c5             	mov    %rax,%rbp
 84b:	48 89 c6             	mov    %rax,%rsi
 84e:	31 c0                	xor    %eax,%eax
 850:	e8 ab fe ff ff       	callq  700 <__isoc99_scanf@plt>
 855:	48 89 ee             	mov    %rbp,%rsi
 858:	48 89 df             	mov    %rbx,%rdi
 85b:	e8 70 01 00 00       	callq  9d0 <insert>
 860:	8b 55 00             	mov    0x0(%rbp),%edx
 863:	48 8d 35 6a 06 00 00 	lea    0x66a(%rip),%rsi        # ed4 <_IO_stdin_used+0x214>
 86a:	48 89 c3             	mov    %rax,%rbx
 86d:	bf 01 00 00 00       	mov    $0x1,%edi
 872:	31 c0                	xor    %eax,%eax
 874:	e8 77 fe ff ff       	callq  6f0 <__printf_chk@plt>
 879:	48 89 df             	mov    %rbx,%rdi
 87c:	e8 3f 03 00 00       	callq  bc0 <print>
 881:	e9 02 ff ff ff       	jmpq   788 <main+0x58>
 886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88d:	00 00 00 
 890:	48 8d 3d d1 05 00 00 	lea    0x5d1(%rip),%rdi        # e68 <_IO_stdin_used+0x1a8>
 897:	e8 34 fe ff ff       	callq  6d0 <puts@plt>
 89c:	e9 e7 fe ff ff       	jmpq   788 <main+0x58>
 8a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8a8:	31 ff                	xor    %edi,%edi
 8aa:	e8 61 fe ff ff       	callq  710 <exit@plt>
 8af:	48 8d 3d 62 05 00 00 	lea    0x562(%rip),%rdi        # e18 <_IO_stdin_used+0x158>
 8b6:	e8 15 fe ff ff       	callq  6d0 <puts@plt>
 8bb:	e9 c8 fe ff ff       	jmpq   788 <main+0x58>

00000000000008c0 <_start>:
 8c0:	31 ed                	xor    %ebp,%ebp
 8c2:	49 89 d1             	mov    %rdx,%r9
 8c5:	5e                   	pop    %rsi
 8c6:	48 89 e2             	mov    %rsp,%rdx
 8c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8cd:	50                   	push   %rax
 8ce:	54                   	push   %rsp
 8cf:	4c 8d 05 da 03 00 00 	lea    0x3da(%rip),%r8        # cb0 <__libc_csu_fini>
 8d6:	48 8d 0d 63 03 00 00 	lea    0x363(%rip),%rcx        # c40 <__libc_csu_init>
 8dd:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 730 <main>
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
 99e:	e8 7d fd ff ff       	callq  720 <__cxa_finalize@plt>
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
 9d5:	8b 0e                	mov    (%rsi),%ecx
 9d7:	48 89 fa             	mov    %rdi,%rdx
 9da:	eb 13                	jmp    9ef <insert+0x1f>
 9dc:	0f 1f 40 00          	nopl   0x0(%rax)
 9e0:	48 8b 42 08          	mov    0x8(%rdx),%rax
 9e4:	49 89 d0             	mov    %rdx,%r8
 9e7:	48 85 c0             	test   %rax,%rax
 9ea:	74 24                	je     a10 <insert+0x40>
 9ec:	48 89 c2             	mov    %rax,%rdx
 9ef:	3b 0a                	cmp    (%rdx),%ecx
 9f1:	7f ed                	jg     9e0 <insert+0x10>
 9f3:	48 39 fa             	cmp    %rdi,%rdx
 9f6:	48 89 f0             	mov    %rsi,%rax
 9f9:	74 07                	je     a02 <insert+0x32>
 9fb:	49 89 70 08          	mov    %rsi,0x8(%r8)
 9ff:	48 89 f8             	mov    %rdi,%rax
 a02:	48 89 56 08          	mov    %rdx,0x8(%rsi)
 a06:	83 05 07 16 20 00 01 	addl   $0x1,0x201607(%rip)        # 202014 <n>
 a0d:	c3                   	retq   
 a0e:	66 90                	xchg   %ax,%ax
 a10:	48 89 72 08          	mov    %rsi,0x8(%rdx)
 a14:	48 89 f8             	mov    %rdi,%rax
 a17:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
 a1e:	00 
 a1f:	83 05 ee 15 20 00 01 	addl   $0x1,0x2015ee(%rip)        # 202014 <n>
 a26:	c3                   	retq   
 a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a2e:	00 00 
 a30:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
 a37:	00 
 a38:	48 89 f0             	mov    %rsi,%rax
 a3b:	83 05 d2 15 20 00 01 	addl   $0x1,0x2015d2(%rip)        # 202014 <n>
 a42:	c3                   	retq   
 a43:	0f 1f 00             	nopl   (%rax)
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 

0000000000000a50 <delete>:
 a50:	48 85 ff             	test   %rdi,%rdi
 a53:	41 54                	push   %r12
 a55:	55                   	push   %rbp
 a56:	48 89 fd             	mov    %rdi,%rbp
 a59:	53                   	push   %rbx
 a5a:	75 13                	jne    a6f <delete+0x1f>
 a5c:	eb 7b                	jmp    ad9 <delete+0x89>
 a5e:	66 90                	xchg   %ax,%ax
 a60:	48 8b 47 08          	mov    0x8(%rdi),%rax
 a64:	48 89 fa             	mov    %rdi,%rdx
 a67:	48 85 c0             	test   %rax,%rax
 a6a:	74 4c                	je     ab8 <delete+0x68>
 a6c:	48 89 c7             	mov    %rax,%rdi
 a6f:	48 63 1f             	movslq (%rdi),%rbx
 a72:	48 39 f3             	cmp    %rsi,%rbx
 a75:	7c e9                	jl     a60 <delete+0x10>
 a77:	75 3f                	jne    ab8 <delete+0x68>
 a79:	48 39 ef             	cmp    %rbp,%rdi
 a7c:	4c 8b 67 08          	mov    0x8(%rdi),%r12
 a80:	74 07                	je     a89 <delete+0x39>
 a82:	4c 89 62 08          	mov    %r12,0x8(%rdx)
 a86:	49 89 ec             	mov    %rbp,%r12
 a89:	e8 22 fc ff ff       	callq  6b0 <free@plt>
 a8e:	48 8d 35 fb 03 00 00 	lea    0x3fb(%rip),%rsi        # e90 <_IO_stdin_used+0x1d0>
 a95:	48 89 da             	mov    %rbx,%rdx
 a98:	bf 01 00 00 00       	mov    $0x1,%edi
 a9d:	31 c0                	xor    %eax,%eax
 a9f:	83 2d 6e 15 20 00 01 	subl   $0x1,0x20156e(%rip)        # 202014 <n>
 aa6:	e8 45 fc ff ff       	callq  6f0 <__printf_chk@plt>
 aab:	4c 89 e0             	mov    %r12,%rax
 aae:	5b                   	pop    %rbx
 aaf:	5d                   	pop    %rbp
 ab0:	41 5c                	pop    %r12
 ab2:	c3                   	retq   
 ab3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ab8:	48 89 f2             	mov    %rsi,%rdx
 abb:	48 8d 35 36 02 00 00 	lea    0x236(%rip),%rsi        # cf8 <_IO_stdin_used+0x38>
 ac2:	49 89 ec             	mov    %rbp,%r12
 ac5:	bf 01 00 00 00       	mov    $0x1,%edi
 aca:	31 c0                	xor    %eax,%eax
 acc:	e8 1f fc ff ff       	callq  6f0 <__printf_chk@plt>
 ad1:	4c 89 e0             	mov    %r12,%rax
 ad4:	5b                   	pop    %rbx
 ad5:	5d                   	pop    %rbp
 ad6:	41 5c                	pop    %r12
 ad8:	c3                   	retq   
 ad9:	48 8d 35 e8 01 00 00 	lea    0x1e8(%rip),%rsi        # cc8 <_IO_stdin_used+0x8>
 ae0:	bf 01 00 00 00       	mov    $0x1,%edi
 ae5:	31 c0                	xor    %eax,%eax
 ae7:	45 31 e4             	xor    %r12d,%r12d
 aea:	e8 01 fc ff ff       	callq  6f0 <__printf_chk@plt>
 aef:	eb ba                	jmp    aab <delete+0x5b>
 af1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 afd:	00 00 00 

0000000000000b00 <create>:
 b00:	41 56                	push   %r14
 b02:	41 55                	push   %r13
 b04:	bf 10 00 00 00       	mov    $0x10,%edi
 b09:	41 54                	push   %r12
 b0b:	55                   	push   %rbp
 b0c:	45 31 f6             	xor    %r14d,%r14d
 b0f:	53                   	push   %rbx
 b10:	c7 05 fa 14 20 00 00 	movl   $0x0,0x2014fa(%rip)        # 202014 <n>
 b17:	00 00 00 
 b1a:	4c 8d 2d 7e 03 00 00 	lea    0x37e(%rip),%r13        # e9f <_IO_stdin_used+0x1df>
 b21:	e8 ba fb ff ff       	callq  6e0 <malloc@plt>
 b26:	48 8d 3d 72 03 00 00 	lea    0x372(%rip),%rdi        # e9f <_IO_stdin_used+0x1df>
 b2d:	48 8d 50 04          	lea    0x4(%rax),%rdx
 b31:	49 89 c4             	mov    %rax,%r12
 b34:	48 89 c6             	mov    %rax,%rsi
 b37:	31 c0                	xor    %eax,%eax
 b39:	4c 89 e5             	mov    %r12,%rbp
 b3c:	e8 bf fb ff ff       	callq  700 <__isoc99_scanf@plt>
 b41:	41 8b 14 24          	mov    (%r12),%edx
 b45:	85 d2                	test   %edx,%edx
 b47:	75 36                	jne    b7f <create+0x7f>
 b49:	eb 55                	jmp    ba0 <create+0xa0>
 b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b50:	49 89 6c 24 08       	mov    %rbp,0x8(%r12)
 b55:	bf 10 00 00 00       	mov    $0x10,%edi
 b5a:	49 89 ec             	mov    %rbp,%r12
 b5d:	e8 7e fb ff ff       	callq  6e0 <malloc@plt>
 b62:	48 8d 50 04          	lea    0x4(%rax),%rdx
 b66:	48 89 c3             	mov    %rax,%rbx
 b69:	48 89 c6             	mov    %rax,%rsi
 b6c:	4c 89 ef             	mov    %r13,%rdi
 b6f:	31 c0                	xor    %eax,%eax
 b71:	e8 8a fb ff ff       	callq  700 <__isoc99_scanf@plt>
 b76:	8b 03                	mov    (%rbx),%eax
 b78:	85 c0                	test   %eax,%eax
 b7a:	74 24                	je     ba0 <create+0xa0>
 b7c:	48 89 dd             	mov    %rbx,%rbp
 b7f:	8b 05 8f 14 20 00    	mov    0x20148f(%rip),%eax        # 202014 <n>
 b85:	83 c0 01             	add    $0x1,%eax
 b88:	83 f8 01             	cmp    $0x1,%eax
 b8b:	89 05 83 14 20 00    	mov    %eax,0x201483(%rip)        # 202014 <n>
 b91:	75 bd                	jne    b50 <create+0x50>
 b93:	49 89 ee             	mov    %rbp,%r14
 b96:	eb bd                	jmp    b55 <create+0x55>
 b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b9f:	00 
 ba0:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
 ba7:	00 
 ba8:	bf 0a 00 00 00       	mov    $0xa,%edi
 bad:	e8 0e fb ff ff       	callq  6c0 <putchar@plt>
 bb2:	5b                   	pop    %rbx
 bb3:	4c 89 f0             	mov    %r14,%rax
 bb6:	5d                   	pop    %rbp
 bb7:	41 5c                	pop    %r12
 bb9:	41 5d                	pop    %r13
 bbb:	41 5e                	pop    %r14
 bbd:	c3                   	retq   
 bbe:	66 90                	xchg   %ax,%ax

0000000000000bc0 <print>:
 bc0:	48 85 ff             	test   %rdi,%rdi
 bc3:	74 6b                	je     c30 <print+0x70>
 bc5:	55                   	push   %rbp
 bc6:	53                   	push   %rbx
 bc7:	48 8d 35 4a 01 00 00 	lea    0x14a(%rip),%rsi        # d18 <_IO_stdin_used+0x58>
 bce:	48 8d 2d d5 02 00 00 	lea    0x2d5(%rip),%rbp        # eaa <_IO_stdin_used+0x1ea>
 bd5:	48 89 fb             	mov    %rdi,%rbx
 bd8:	31 c0                	xor    %eax,%eax
 bda:	48 83 ec 08          	sub    $0x8,%rsp
 bde:	8b 15 30 14 20 00    	mov    0x201430(%rip),%edx        # 202014 <n>
 be4:	bf 01 00 00 00       	mov    $0x1,%edi
 be9:	e8 02 fb ff ff       	callq  6f0 <__printf_chk@plt>
 bee:	66 90                	xchg   %ax,%ax
 bf0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bf4:	8b 13                	mov    (%rbx),%edx
 bf6:	48 89 ee             	mov    %rbp,%rsi
 bf9:	bf 01 00 00 00       	mov    $0x1,%edi
 bfe:	b8 01 00 00 00       	mov    $0x1,%eax
 c03:	f3 0f 5a 43 04       	cvtss2sd 0x4(%rbx),%xmm0
 c08:	e8 e3 fa ff ff       	callq  6f0 <__printf_chk@plt>
 c0d:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 c11:	48 85 db             	test   %rbx,%rbx
 c14:	75 da                	jne    bf0 <print+0x30>
 c16:	48 83 c4 08          	add    $0x8,%rsp
 c1a:	bf 0a 00 00 00       	mov    $0xa,%edi
 c1f:	5b                   	pop    %rbx
 c20:	5d                   	pop    %rbp
 c21:	e9 9a fa ff ff       	jmpq   6c0 <putchar@plt>
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 
 c30:	48 8d 3d 09 01 00 00 	lea    0x109(%rip),%rdi        # d40 <_IO_stdin_used+0x80>
 c37:	e9 94 fa ff ff       	jmpq   6d0 <puts@plt>
 c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c40 <__libc_csu_init>:
 c40:	41 57                	push   %r15
 c42:	41 56                	push   %r14
 c44:	49 89 d7             	mov    %rdx,%r15
 c47:	41 55                	push   %r13
 c49:	41 54                	push   %r12
 c4b:	4c 8d 25 36 11 20 00 	lea    0x201136(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c52:	55                   	push   %rbp
 c53:	48 8d 2d 36 11 20 00 	lea    0x201136(%rip),%rbp        # 201d90 <__init_array_end>
 c5a:	53                   	push   %rbx
 c5b:	41 89 fd             	mov    %edi,%r13d
 c5e:	49 89 f6             	mov    %rsi,%r14
 c61:	4c 29 e5             	sub    %r12,%rbp
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 c1 fd 03          	sar    $0x3,%rbp
 c6c:	e8 0f fa ff ff       	callq  680 <_init>
 c71:	48 85 ed             	test   %rbp,%rbp
 c74:	74 20                	je     c96 <__libc_csu_init+0x56>
 c76:	31 db                	xor    %ebx,%ebx
 c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c7f:	00 
 c80:	4c 89 fa             	mov    %r15,%rdx
 c83:	4c 89 f6             	mov    %r14,%rsi
 c86:	44 89 ef             	mov    %r13d,%edi
 c89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c8d:	48 83 c3 01          	add    $0x1,%rbx
 c91:	48 39 dd             	cmp    %rbx,%rbp
 c94:	75 ea                	jne    c80 <__libc_csu_init+0x40>
 c96:	48 83 c4 08          	add    $0x8,%rsp
 c9a:	5b                   	pop    %rbx
 c9b:	5d                   	pop    %rbp
 c9c:	41 5c                	pop    %r12
 c9e:	41 5d                	pop    %r13
 ca0:	41 5e                	pop    %r14
 ca2:	41 5f                	pop    %r15
 ca4:	c3                   	retq   
 ca5:	90                   	nop
 ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cad:	00 00 00 

0000000000000cb0 <__libc_csu_fini>:
 cb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cb4 <_fini>:
 cb4:	48 83 ec 08          	sub    $0x8,%rsp
 cb8:	48 83 c4 08          	add    $0x8,%rsp
 cbc:	c3                   	retq   
