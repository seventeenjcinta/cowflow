
input/19030021063_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000698 <_init>:
 698:	48 83 ec 08          	sub    $0x8,%rsp
 69c:	48 8b 05 45 19 20 00 	mov    0x201945(%rip),%rax        # 201fe8 <__gmon_start__>
 6a3:	48 85 c0             	test   %rax,%rax
 6a6:	74 02                	je     6aa <_init+0x12>
 6a8:	ff d0                	callq  *%rax
 6aa:	48 83 c4 08          	add    $0x8,%rsp
 6ae:	c3                   	retq   

Disassembly of section .plt:

00000000000006b0 <.plt>:
 6b0:	ff 35 e2 18 20 00    	pushq  0x2018e2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6b6:	ff 25 e4 18 20 00    	jmpq   *0x2018e4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006c0 <free@plt>:
 6c0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 6c6:	68 00 00 00 00       	pushq  $0x0
 6cb:	e9 e0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006d0 <puts@plt>:
 6d0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6d6:	68 01 00 00 00       	pushq  $0x1
 6db:	e9 d0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006e0 <__stack_chk_fail@plt>:
 6e0:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6e6:	68 02 00 00 00       	pushq  $0x2
 6eb:	e9 c0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006f0 <malloc@plt>:
 6f0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6f6:	68 03 00 00 00       	pushq  $0x3
 6fb:	e9 b0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000700 <__printf_chk@plt>:
 700:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 706:	68 04 00 00 00       	pushq  $0x4
 70b:	e9 a0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000710 <__isoc99_scanf@plt>:
 710:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 716:	68 05 00 00 00       	pushq  $0x5
 71b:	e9 90 ff ff ff       	jmpq   6b0 <.plt>

Disassembly of section .plt.got:

0000000000000720 <__cxa_finalize@plt>:
 720:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000730 <main>:
 730:	41 55                	push   %r13
 732:	41 54                	push   %r12
 734:	48 8d 3d 69 05 00 00 	lea    0x569(%rip),%rdi        # ca4 <_IO_stdin_used+0x44>
 73b:	55                   	push   %rbp
 73c:	53                   	push   %rbx
 73d:	48 83 ec 28          	sub    $0x28,%rsp
 741:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 748:	00 00 
 74a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 74f:	31 c0                	xor    %eax,%eax
 751:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 758:	ff 
 759:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 75e:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 763:	e8 68 ff ff ff       	callq  6d0 <puts@plt>
 768:	48 8d 3d c1 05 00 00 	lea    0x5c1(%rip),%rdi        # d30 <_IO_stdin_used+0xd0>
 76f:	e8 5c ff ff ff       	callq  6d0 <puts@plt>
 774:	e8 d7 02 00 00       	callq  a50 <creat>
 779:	48 89 c7             	mov    %rax,%rdi
 77c:	48 89 c3             	mov    %rax,%rbx
 77f:	e8 ec 03 00 00       	callq  b70 <print>
 784:	eb 56                	jmp    7dc <main+0xac>
 786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 78d:	00 00 00 
 790:	83 f8 02             	cmp    $0x2,%eax
 793:	75 3f                	jne    7d4 <main+0xa4>
 795:	48 8d 35 78 05 00 00 	lea    0x578(%rip),%rsi        # d14 <_IO_stdin_used+0xb4>
 79c:	bf 01 00 00 00       	mov    $0x1,%edi
 7a1:	31 c0                	xor    %eax,%eax
 7a3:	e8 58 ff ff ff       	callq  700 <__printf_chk@plt>
 7a8:	48 8d 3d 7b 05 00 00 	lea    0x57b(%rip),%rdi        # d2a <_IO_stdin_used+0xca>
 7af:	4c 89 ee             	mov    %r13,%rsi
 7b2:	31 c0                	xor    %eax,%eax
 7b4:	e8 57 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 7b9:	8b 74 24 10          	mov    0x10(%rsp),%esi
 7bd:	48 89 df             	mov    %rbx,%rdi
 7c0:	e8 0b 03 00 00       	callq  ad0 <del>
 7c5:	48 89 c7             	mov    %rax,%rdi
 7c8:	48 89 c3             	mov    %rax,%rbx
 7cb:	e8 a0 03 00 00       	callq  b70 <print>
 7d0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7d4:	85 c0                	test   %eax,%eax
 7d6:	0f 84 ab 00 00 00    	je     887 <main+0x157>
 7dc:	48 8d 3d d3 04 00 00 	lea    0x4d3(%rip),%rdi        # cb6 <_IO_stdin_used+0x56>
 7e3:	e8 e8 fe ff ff       	callq  6d0 <puts@plt>
 7e8:	48 8d 35 e1 04 00 00 	lea    0x4e1(%rip),%rsi        # cd0 <_IO_stdin_used+0x70>
 7ef:	bf 01 00 00 00       	mov    $0x1,%edi
 7f4:	31 c0                	xor    %eax,%eax
 7f6:	e8 05 ff ff ff       	callq  700 <__printf_chk@plt>
 7fb:	48 8d 3d e5 04 00 00 	lea    0x4e5(%rip),%rdi        # ce7 <_IO_stdin_used+0x87>
 802:	31 c0                	xor    %eax,%eax
 804:	4c 89 e6             	mov    %r12,%rsi
 807:	e8 04 ff ff ff       	callq  710 <__isoc99_scanf@plt>
 80c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 810:	83 f8 01             	cmp    $0x1,%eax
 813:	0f 85 77 ff ff ff    	jne    790 <main+0x60>
 819:	48 8d 35 ca 04 00 00 	lea    0x4ca(%rip),%rsi        # cea <_IO_stdin_used+0x8a>
 820:	bf 01 00 00 00       	mov    $0x1,%edi
 825:	31 c0                	xor    %eax,%eax
 827:	e8 d4 fe ff ff       	callq  700 <__printf_chk@plt>
 82c:	bf 18 00 00 00       	mov    $0x18,%edi
 831:	e8 ba fe ff ff       	callq  6f0 <malloc@plt>
 836:	48 8d 3d 27 04 00 00 	lea    0x427(%rip),%rdi        # c64 <_IO_stdin_used+0x4>
 83d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 841:	48 89 c5             	mov    %rax,%rbp
 844:	48 89 c6             	mov    %rax,%rsi
 847:	31 c0                	xor    %eax,%eax
 849:	e8 c2 fe ff ff       	callq  710 <__isoc99_scanf@plt>
 84e:	48 89 df             	mov    %rbx,%rdi
 851:	48 89 ee             	mov    %rbp,%rsi
 854:	e8 67 01 00 00       	callq  9c0 <insert>
 859:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 85d:	48 8d 35 a2 04 00 00 	lea    0x4a2(%rip),%rsi        # d06 <_IO_stdin_used+0xa6>
 864:	48 89 c3             	mov    %rax,%rbx
 867:	bf 01 00 00 00       	mov    $0x1,%edi
 86c:	31 c0                	xor    %eax,%eax
 86e:	e8 8d fe ff ff       	callq  700 <__printf_chk@plt>
 873:	48 89 df             	mov    %rbx,%rdi
 876:	e8 f5 02 00 00       	callq  b70 <print>
 87b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 87f:	85 c0                	test   %eax,%eax
 881:	0f 85 55 ff ff ff    	jne    7dc <main+0xac>
 887:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 88c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 893:	00 00 
 895:	75 0b                	jne    8a2 <main+0x172>
 897:	48 83 c4 28          	add    $0x28,%rsp
 89b:	5b                   	pop    %rbx
 89c:	5d                   	pop    %rbp
 89d:	41 5c                	pop    %r12
 89f:	41 5d                	pop    %r13
 8a1:	c3                   	retq   
 8a2:	e8 39 fe ff ff       	callq  6e0 <__stack_chk_fail@plt>
 8a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ae:	00 00 

00000000000008b0 <_start>:
 8b0:	31 ed                	xor    %ebp,%ebp
 8b2:	49 89 d1             	mov    %rdx,%r9
 8b5:	5e                   	pop    %rsi
 8b6:	48 89 e2             	mov    %rsp,%rdx
 8b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8bd:	50                   	push   %rax
 8be:	54                   	push   %rsp
 8bf:	4c 8d 05 8a 03 00 00 	lea    0x38a(%rip),%r8        # c50 <__libc_csu_fini>
 8c6:	48 8d 0d 13 03 00 00 	lea    0x313(%rip),%rcx        # be0 <__libc_csu_init>
 8cd:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 730 <main>
 8d4:	ff 15 06 17 20 00    	callq  *0x201706(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8da:	f4                   	hlt    
 8db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008e0 <deregister_tm_clones>:
 8e0:	48 8d 3d 29 17 20 00 	lea    0x201729(%rip),%rdi        # 202010 <__TMC_END__>
 8e7:	55                   	push   %rbp
 8e8:	48 8d 05 21 17 20 00 	lea    0x201721(%rip),%rax        # 202010 <__TMC_END__>
 8ef:	48 39 f8             	cmp    %rdi,%rax
 8f2:	48 89 e5             	mov    %rsp,%rbp
 8f5:	74 19                	je     910 <deregister_tm_clones+0x30>
 8f7:	48 8b 05 da 16 20 00 	mov    0x2016da(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8fe:	48 85 c0             	test   %rax,%rax
 901:	74 0d                	je     910 <deregister_tm_clones+0x30>
 903:	5d                   	pop    %rbp
 904:	ff e0                	jmpq   *%rax
 906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90d:	00 00 00 
 910:	5d                   	pop    %rbp
 911:	c3                   	retq   
 912:	0f 1f 40 00          	nopl   0x0(%rax)
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 

0000000000000920 <register_tm_clones>:
 920:	48 8d 3d e9 16 20 00 	lea    0x2016e9(%rip),%rdi        # 202010 <__TMC_END__>
 927:	48 8d 35 e2 16 20 00 	lea    0x2016e2(%rip),%rsi        # 202010 <__TMC_END__>
 92e:	55                   	push   %rbp
 92f:	48 29 fe             	sub    %rdi,%rsi
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	48 c1 fe 03          	sar    $0x3,%rsi
 939:	48 89 f0             	mov    %rsi,%rax
 93c:	48 c1 e8 3f          	shr    $0x3f,%rax
 940:	48 01 c6             	add    %rax,%rsi
 943:	48 d1 fe             	sar    %rsi
 946:	74 18                	je     960 <register_tm_clones+0x40>
 948:	48 8b 05 a1 16 20 00 	mov    0x2016a1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 94f:	48 85 c0             	test   %rax,%rax
 952:	74 0c                	je     960 <register_tm_clones+0x40>
 954:	5d                   	pop    %rbp
 955:	ff e0                	jmpq   *%rax
 957:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 95e:	00 00 
 960:	5d                   	pop    %rbp
 961:	c3                   	retq   
 962:	0f 1f 40 00          	nopl   0x0(%rax)
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 

0000000000000970 <__do_global_dtors_aux>:
 970:	80 3d 99 16 20 00 00 	cmpb   $0x0,0x201699(%rip)        # 202010 <__TMC_END__>
 977:	75 2f                	jne    9a8 <__do_global_dtors_aux+0x38>
 979:	48 83 3d 77 16 20 00 	cmpq   $0x0,0x201677(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 980:	00 
 981:	55                   	push   %rbp
 982:	48 89 e5             	mov    %rsp,%rbp
 985:	74 0c                	je     993 <__do_global_dtors_aux+0x23>
 987:	48 8b 3d 7a 16 20 00 	mov    0x20167a(%rip),%rdi        # 202008 <__dso_handle>
 98e:	e8 8d fd ff ff       	callq  720 <__cxa_finalize@plt>
 993:	e8 48 ff ff ff       	callq  8e0 <deregister_tm_clones>
 998:	c6 05 71 16 20 00 01 	movb   $0x1,0x201671(%rip)        # 202010 <__TMC_END__>
 99f:	5d                   	pop    %rbp
 9a0:	c3                   	retq   
 9a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9a8:	f3 c3                	repz retq 
 9aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009b0 <frame_dummy>:
 9b0:	55                   	push   %rbp
 9b1:	48 89 e5             	mov    %rsp,%rbp
 9b4:	5d                   	pop    %rbp
 9b5:	e9 66 ff ff ff       	jmpq   920 <register_tm_clones>
 9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009c0 <insert>:
 9c0:	48 85 ff             	test   %rdi,%rdi
 9c3:	74 5b                	je     a20 <insert+0x60>
 9c5:	4c 8b 0e             	mov    (%rsi),%r9
 9c8:	48 89 fa             	mov    %rdi,%rdx
 9cb:	eb 0e                	jmp    9db <insert+0x1b>
 9cd:	0f 1f 00             	nopl   (%rax)
 9d0:	4d 39 c8             	cmp    %r9,%r8
 9d3:	7d 33                	jge    a08 <insert+0x48>
 9d5:	49 89 d2             	mov    %rdx,%r10
 9d8:	48 89 ca             	mov    %rcx,%rdx
 9db:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 9df:	4c 8b 02             	mov    (%rdx),%r8
 9e2:	48 85 c9             	test   %rcx,%rcx
 9e5:	75 e9                	jne    9d0 <insert+0x10>
 9e7:	4d 39 c8             	cmp    %r9,%r8
 9ea:	7d 1c                	jge    a08 <insert+0x48>
 9ec:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 9f0:	48 89 f8             	mov    %rdi,%rax
 9f3:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9fa:	00 
 9fb:	83 05 12 16 20 00 01 	addl   $0x1,0x201612(%rip)        # 202014 <n>
 a02:	c3                   	retq   
 a03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a08:	48 39 fa             	cmp    %rdi,%rdx
 a0b:	74 2b                	je     a38 <insert+0x78>
 a0d:	49 89 72 10          	mov    %rsi,0x10(%r10)
 a11:	48 89 f8             	mov    %rdi,%rax
 a14:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a18:	83 05 f5 15 20 00 01 	addl   $0x1,0x2015f5(%rip)        # 202014 <n>
 a1f:	c3                   	retq   
 a20:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a27:	00 
 a28:	48 89 f0             	mov    %rsi,%rax
 a2b:	83 05 e2 15 20 00 01 	addl   $0x1,0x2015e2(%rip)        # 202014 <n>
 a32:	c3                   	retq   
 a33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a38:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a3c:	48 89 f0             	mov    %rsi,%rax
 a3f:	83 05 ce 15 20 00 01 	addl   $0x1,0x2015ce(%rip)        # 202014 <n>
 a46:	c3                   	retq   
 a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a4e:	00 00 

0000000000000a50 <creat>:
 a50:	41 54                	push   %r12
 a52:	55                   	push   %rbp
 a53:	bf 18 00 00 00       	mov    $0x18,%edi
 a58:	53                   	push   %rbx
 a59:	31 ed                	xor    %ebp,%ebp
 a5b:	e8 90 fc ff ff       	callq  6f0 <malloc@plt>
 a60:	48 8d 3d fd 01 00 00 	lea    0x1fd(%rip),%rdi        # c64 <_IO_stdin_used+0x4>
 a67:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a6b:	48 89 c3             	mov    %rax,%rbx
 a6e:	48 89 c6             	mov    %rax,%rsi
 a71:	31 c0                	xor    %eax,%eax
 a73:	e8 98 fc ff ff       	callq  710 <__isoc99_scanf@plt>
 a78:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a7c:	74 3c                	je     aba <creat+0x6a>
 a7e:	4c 8d 25 df 01 00 00 	lea    0x1df(%rip),%r12        # c64 <_IO_stdin_used+0x4>
 a85:	0f 1f 00             	nopl   (%rax)
 a88:	48 89 de             	mov    %rbx,%rsi
 a8b:	48 89 ef             	mov    %rbp,%rdi
 a8e:	e8 2d ff ff ff       	callq  9c0 <insert>
 a93:	bf 18 00 00 00       	mov    $0x18,%edi
 a98:	48 89 c5             	mov    %rax,%rbp
 a9b:	e8 50 fc ff ff       	callq  6f0 <malloc@plt>
 aa0:	48 8d 50 08          	lea    0x8(%rax),%rdx
 aa4:	48 89 c3             	mov    %rax,%rbx
 aa7:	48 89 c6             	mov    %rax,%rsi
 aaa:	4c 89 e7             	mov    %r12,%rdi
 aad:	31 c0                	xor    %eax,%eax
 aaf:	e8 5c fc ff ff       	callq  710 <__isoc99_scanf@plt>
 ab4:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 ab8:	75 ce                	jne    a88 <creat+0x38>
 aba:	48 89 df             	mov    %rbx,%rdi
 abd:	e8 fe fb ff ff       	callq  6c0 <free@plt>
 ac2:	48 89 e8             	mov    %rbp,%rax
 ac5:	5b                   	pop    %rbx
 ac6:	5d                   	pop    %rbp
 ac7:	41 5c                	pop    %r12
 ac9:	c3                   	retq   
 aca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ad0 <del>:
 ad0:	53                   	push   %rbx
 ad1:	48 63 f6             	movslq %esi,%rsi
 ad4:	48 89 fb             	mov    %rdi,%rbx
 ad7:	48 83 ec 10          	sub    $0x10,%rsp
 adb:	48 85 ff             	test   %rdi,%rdi
 ade:	75 13                	jne    af3 <del+0x23>
 ae0:	eb 6f                	jmp    b51 <del+0x81>
 ae2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ae8:	48 39 d6             	cmp    %rdx,%rsi
 aeb:	7e 12                	jle    aff <del+0x2f>
 aed:	48 89 f9             	mov    %rdi,%rcx
 af0:	48 89 c7             	mov    %rax,%rdi
 af3:	48 8b 47 10          	mov    0x10(%rdi),%rax
 af7:	48 8b 17             	mov    (%rdi),%rdx
 afa:	48 85 c0             	test   %rax,%rax
 afd:	75 e9                	jne    ae8 <del+0x18>
 aff:	85 d2                	test   %edx,%edx
 b01:	74 25                	je     b28 <del+0x58>
 b03:	48 39 df             	cmp    %rbx,%rdi
 b06:	74 38                	je     b40 <del+0x70>
 b08:	48 89 41 10          	mov    %rax,0x10(%rcx)
 b0c:	e8 af fb ff ff       	callq  6c0 <free@plt>
 b11:	48 89 d8             	mov    %rbx,%rax
 b14:	83 2d f9 14 20 00 01 	subl   $0x1,0x2014f9(%rip)        # 202014 <n>
 b1b:	48 83 c4 10          	add    $0x10,%rsp
 b1f:	5b                   	pop    %rbx
 b20:	c3                   	retq   
 b21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b28:	48 8d 35 44 01 00 00 	lea    0x144(%rip),%rsi        # c73 <_IO_stdin_used+0x13>
 b2f:	bf 01 00 00 00       	mov    $0x1,%edi
 b34:	31 c0                	xor    %eax,%eax
 b36:	e8 c5 fb ff ff       	callq  700 <__printf_chk@plt>
 b3b:	48 89 d8             	mov    %rbx,%rax
 b3e:	eb d4                	jmp    b14 <del+0x44>
 b40:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b45:	e8 76 fb ff ff       	callq  6c0 <free@plt>
 b4a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b4f:	eb c3                	jmp    b14 <del+0x44>
 b51:	48 8d 3d 12 01 00 00 	lea    0x112(%rip),%rdi        # c6a <_IO_stdin_used+0xa>
 b58:	e8 73 fb ff ff       	callq  6d0 <puts@plt>
 b5d:	31 c0                	xor    %eax,%eax
 b5f:	eb ba                	jmp    b1b <del+0x4b>
 b61:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b6d:	00 00 00 

0000000000000b70 <print>:
 b70:	48 85 ff             	test   %rdi,%rdi
 b73:	74 5b                	je     bd0 <print+0x60>
 b75:	55                   	push   %rbp
 b76:	53                   	push   %rbx
 b77:	48 8d 35 ff 00 00 00 	lea    0xff(%rip),%rsi        # c7d <_IO_stdin_used+0x1d>
 b7e:	48 8d 2d 14 01 00 00 	lea    0x114(%rip),%rbp        # c99 <_IO_stdin_used+0x39>
 b85:	48 89 fb             	mov    %rdi,%rbx
 b88:	31 c0                	xor    %eax,%eax
 b8a:	48 83 ec 08          	sub    $0x8,%rsp
 b8e:	8b 15 80 14 20 00    	mov    0x201480(%rip),%edx        # 202014 <n>
 b94:	bf 01 00 00 00       	mov    $0x1,%edi
 b99:	e8 62 fb ff ff       	callq  700 <__printf_chk@plt>
 b9e:	66 90                	xchg   %ax,%ax
 ba0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 ba4:	48 8b 13             	mov    (%rbx),%rdx
 ba7:	48 89 ee             	mov    %rbp,%rsi
 baa:	bf 01 00 00 00       	mov    $0x1,%edi
 baf:	b8 01 00 00 00       	mov    $0x1,%eax
 bb4:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 bb9:	e8 42 fb ff ff       	callq  700 <__printf_chk@plt>
 bbe:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bc2:	48 85 db             	test   %rbx,%rbx
 bc5:	75 d9                	jne    ba0 <print+0x30>
 bc7:	48 83 c4 08          	add    $0x8,%rsp
 bcb:	5b                   	pop    %rbx
 bcc:	5d                   	pop    %rbp
 bcd:	c3                   	retq   
 bce:	66 90                	xchg   %ax,%ax
 bd0:	48 8d 3d 93 00 00 00 	lea    0x93(%rip),%rdi        # c6a <_IO_stdin_used+0xa>
 bd7:	e9 f4 fa ff ff       	jmpq   6d0 <puts@plt>
 bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000be0 <__libc_csu_init>:
 be0:	41 57                	push   %r15
 be2:	41 56                	push   %r14
 be4:	49 89 d7             	mov    %rdx,%r15
 be7:	41 55                	push   %r13
 be9:	41 54                	push   %r12
 beb:	4c 8d 25 9e 11 20 00 	lea    0x20119e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 bf2:	55                   	push   %rbp
 bf3:	48 8d 2d 9e 11 20 00 	lea    0x20119e(%rip),%rbp        # 201d98 <__init_array_end>
 bfa:	53                   	push   %rbx
 bfb:	41 89 fd             	mov    %edi,%r13d
 bfe:	49 89 f6             	mov    %rsi,%r14
 c01:	4c 29 e5             	sub    %r12,%rbp
 c04:	48 83 ec 08          	sub    $0x8,%rsp
 c08:	48 c1 fd 03          	sar    $0x3,%rbp
 c0c:	e8 87 fa ff ff       	callq  698 <_init>
 c11:	48 85 ed             	test   %rbp,%rbp
 c14:	74 20                	je     c36 <__libc_csu_init+0x56>
 c16:	31 db                	xor    %ebx,%ebx
 c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c1f:	00 
 c20:	4c 89 fa             	mov    %r15,%rdx
 c23:	4c 89 f6             	mov    %r14,%rsi
 c26:	44 89 ef             	mov    %r13d,%edi
 c29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c2d:	48 83 c3 01          	add    $0x1,%rbx
 c31:	48 39 dd             	cmp    %rbx,%rbp
 c34:	75 ea                	jne    c20 <__libc_csu_init+0x40>
 c36:	48 83 c4 08          	add    $0x8,%rsp
 c3a:	5b                   	pop    %rbx
 c3b:	5d                   	pop    %rbp
 c3c:	41 5c                	pop    %r12
 c3e:	41 5d                	pop    %r13
 c40:	41 5e                	pop    %r14
 c42:	41 5f                	pop    %r15
 c44:	c3                   	retq   
 c45:	90                   	nop
 c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c4d:	00 00 00 

0000000000000c50 <__libc_csu_fini>:
 c50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c54 <_fini>:
 c54:	48 83 ec 08          	sub    $0x8,%rsp
 c58:	48 83 c4 08          	add    $0x8,%rsp
 c5c:	c3                   	retq   
