
input/19020031115_2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d f5 05 00 00 	lea    0x5f5(%rip),%rdi        # d90 <_IO_stdin_used+0xc0>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	31 c0                	xor    %eax,%eax
 7b8:	e8 73 03 00 00       	callq  b30 <create>
 7bd:	48 85 c0             	test   %rax,%rax
 7c0:	48 89 c3             	mov    %rax,%rbx
 7c3:	74 08                	je     7cd <main+0x3d>
 7c5:	48 89 c7             	mov    %rax,%rdi
 7c8:	e8 93 02 00 00       	callq  a60 <print.part.1>
 7cd:	8b 15 49 18 20 00    	mov    0x201849(%rip),%edx        # 20201c <n>
 7d3:	48 8d 35 25 05 00 00 	lea    0x525(%rip),%rsi        # cff <_IO_stdin_used+0x2f>
 7da:	bf 01 00 00 00       	mov    $0x1,%edi
 7df:	31 c0                	xor    %eax,%eax
 7e1:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7e6:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7eb:	e8 70 ff ff ff       	callq  760 <__printf_chk@plt>
 7f0:	eb 71                	jmp    863 <main+0xd3>
 7f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 7f8:	83 f8 02             	cmp    $0x2,%eax
 7fb:	75 41                	jne    83e <main+0xae>
 7fd:	48 8d 35 65 05 00 00 	lea    0x565(%rip),%rsi        # d69 <_IO_stdin_used+0x99>
 804:	bf 01 00 00 00       	mov    $0x1,%edi
 809:	31 c0                	xor    %eax,%eax
 80b:	e8 50 ff ff ff       	callq  760 <__printf_chk@plt>
 810:	48 8d 3d 65 05 00 00 	lea    0x565(%rip),%rdi        # d7c <_IO_stdin_used+0xac>
 817:	4c 89 ee             	mov    %r13,%rsi
 81a:	31 c0                	xor    %eax,%eax
 81c:	e8 4f ff ff ff       	callq  770 <__isoc99_scanf@plt>
 821:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 826:	48 89 df             	mov    %rbx,%rdi
 829:	e8 82 03 00 00       	callq  bb0 <del>
 82e:	48 85 c0             	test   %rax,%rax
 831:	48 89 c3             	mov    %rax,%rbx
 834:	74 08                	je     83e <main+0xae>
 836:	48 89 df             	mov    %rbx,%rdi
 839:	e8 22 02 00 00       	callq  a60 <print.part.1>
 83e:	8b 15 d8 17 20 00    	mov    0x2017d8(%rip),%edx        # 20201c <n>
 844:	48 8d 35 35 05 00 00 	lea    0x535(%rip),%rsi        # d80 <_IO_stdin_used+0xb0>
 84b:	31 c0                	xor    %eax,%eax
 84d:	bf 01 00 00 00       	mov    $0x1,%edi
 852:	e8 09 ff ff ff       	callq  760 <__printf_chk@plt>
 857:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 85b:	85 c0                	test   %eax,%eax
 85d:	0f 84 bd 00 00 00    	je     920 <main+0x190>
 863:	48 8d 3d a4 04 00 00 	lea    0x4a4(%rip),%rdi        # d0e <_IO_stdin_used+0x3e>
 86a:	e8 b1 fe ff ff       	callq  720 <puts@plt>
 86f:	48 8d 35 b2 04 00 00 	lea    0x4b2(%rip),%rsi        # d28 <_IO_stdin_used+0x58>
 876:	bf 01 00 00 00       	mov    $0x1,%edi
 87b:	31 c0                	xor    %eax,%eax
 87d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 884:	ff 
 885:	e8 d6 fe ff ff       	callq  760 <__printf_chk@plt>
 88a:	48 8d 3d a4 04 00 00 	lea    0x4a4(%rip),%rdi        # d35 <_IO_stdin_used+0x65>
 891:	4c 89 e6             	mov    %r12,%rsi
 894:	31 c0                	xor    %eax,%eax
 896:	e8 d5 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 89b:	48 8b 3d 6e 17 20 00 	mov    0x20176e(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8a2:	e8 a9 fe ff ff       	callq  750 <_IO_getc@plt>
 8a7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8ab:	83 f8 01             	cmp    $0x1,%eax
 8ae:	0f 85 44 ff ff ff    	jne    7f8 <main+0x68>
 8b4:	48 8d 35 7d 04 00 00 	lea    0x47d(%rip),%rsi        # d38 <_IO_stdin_used+0x68>
 8bb:	bf 01 00 00 00       	mov    $0x1,%edi
 8c0:	31 c0                	xor    %eax,%eax
 8c2:	e8 99 fe ff ff       	callq  760 <__printf_chk@plt>
 8c7:	bf 18 00 00 00       	mov    $0x18,%edi
 8cc:	e8 6f fe ff ff       	callq  740 <malloc@plt>
 8d1:	48 8d 3d 06 04 00 00 	lea    0x406(%rip),%rdi        # cde <_IO_stdin_used+0xe>
 8d8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8dc:	48 89 c5             	mov    %rax,%rbp
 8df:	48 89 c6             	mov    %rax,%rsi
 8e2:	31 c0                	xor    %eax,%eax
 8e4:	e8 87 fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8e9:	48 89 df             	mov    %rbx,%rdi
 8ec:	48 89 ee             	mov    %rbp,%rsi
 8ef:	e8 ac 01 00 00       	callq  aa0 <insert>
 8f4:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8f8:	48 8d 35 55 04 00 00 	lea    0x455(%rip),%rsi        # d54 <_IO_stdin_used+0x84>
 8ff:	48 89 c3             	mov    %rax,%rbx
 902:	bf 01 00 00 00       	mov    $0x1,%edi
 907:	31 c0                	xor    %eax,%eax
 909:	e8 52 fe ff ff       	callq  760 <__printf_chk@plt>
 90e:	48 85 db             	test   %rbx,%rbx
 911:	0f 85 1f ff ff ff    	jne    836 <main+0xa6>
 917:	e9 22 ff ff ff       	jmpq   83e <main+0xae>
 91c:	0f 1f 40 00          	nopl   0x0(%rax)
 920:	31 c0                	xor    %eax,%eax
 922:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 927:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 92e:	00 00 
 930:	75 0b                	jne    93d <main+0x1ad>
 932:	48 83 c4 28          	add    $0x28,%rsp
 936:	5b                   	pop    %rbx
 937:	5d                   	pop    %rbp
 938:	41 5c                	pop    %r12
 93a:	41 5d                	pop    %r13
 93c:	c3                   	retq   
 93d:	e8 ee fd ff ff       	callq  730 <__stack_chk_fail@plt>
 942:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 949:	00 00 00 
 94c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000950 <_start>:
 950:	31 ed                	xor    %ebp,%ebp
 952:	49 89 d1             	mov    %rdx,%r9
 955:	5e                   	pop    %rsi
 956:	48 89 e2             	mov    %rsp,%rdx
 959:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 95d:	50                   	push   %rax
 95e:	54                   	push   %rsp
 95f:	4c 8d 05 5a 03 00 00 	lea    0x35a(%rip),%r8        # cc0 <__libc_csu_fini>
 966:	48 8d 0d e3 02 00 00 	lea    0x2e3(%rip),%rcx        # c50 <__libc_csu_init>
 96d:	48 8d 3d 1c fe ff ff 	lea    -0x1e4(%rip),%rdi        # 790 <main>
 974:	ff 15 66 16 20 00    	callq  *0x201666(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 97a:	f4                   	hlt    
 97b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000980 <deregister_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    0x201689(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 987:	55                   	push   %rbp
 988:	48 8d 05 81 16 20 00 	lea    0x201681(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 98f:	48 39 f8             	cmp    %rdi,%rax
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	74 19                	je     9b0 <deregister_tm_clones+0x30>
 997:	48 8b 05 3a 16 20 00 	mov    0x20163a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 99e:	48 85 c0             	test   %rax,%rax
 9a1:	74 0d                	je     9b0 <deregister_tm_clones+0x30>
 9a3:	5d                   	pop    %rbp
 9a4:	ff e0                	jmpq   *%rax
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 
 9b0:	5d                   	pop    %rbp
 9b1:	c3                   	retq   
 9b2:	0f 1f 40 00          	nopl   0x0(%rax)
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 

00000000000009c0 <register_tm_clones>:
 9c0:	48 8d 3d 49 16 20 00 	lea    0x201649(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9c7:	48 8d 35 42 16 20 00 	lea    0x201642(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 9ce:	55                   	push   %rbp
 9cf:	48 29 fe             	sub    %rdi,%rsi
 9d2:	48 89 e5             	mov    %rsp,%rbp
 9d5:	48 c1 fe 03          	sar    $0x3,%rsi
 9d9:	48 89 f0             	mov    %rsi,%rax
 9dc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9e0:	48 01 c6             	add    %rax,%rsi
 9e3:	48 d1 fe             	sar    %rsi
 9e6:	74 18                	je     a00 <register_tm_clones+0x40>
 9e8:	48 8b 05 01 16 20 00 	mov    0x201601(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9ef:	48 85 c0             	test   %rax,%rax
 9f2:	74 0c                	je     a00 <register_tm_clones+0x40>
 9f4:	5d                   	pop    %rbp
 9f5:	ff e0                	jmpq   *%rax
 9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9fe:	00 00 
 a00:	5d                   	pop    %rbp
 a01:	c3                   	retq   
 a02:	0f 1f 40 00          	nopl   0x0(%rax)
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <__do_global_dtors_aux>:
 a10:	80 3d 01 16 20 00 00 	cmpb   $0x0,0x201601(%rip)        # 202018 <completed.7698>
 a17:	75 2f                	jne    a48 <__do_global_dtors_aux+0x38>
 a19:	48 83 3d d7 15 20 00 	cmpq   $0x0,0x2015d7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a20:	00 
 a21:	55                   	push   %rbp
 a22:	48 89 e5             	mov    %rsp,%rbp
 a25:	74 0c                	je     a33 <__do_global_dtors_aux+0x23>
 a27:	48 8b 3d da 15 20 00 	mov    0x2015da(%rip),%rdi        # 202008 <__dso_handle>
 a2e:	e8 4d fd ff ff       	callq  780 <__cxa_finalize@plt>
 a33:	e8 48 ff ff ff       	callq  980 <deregister_tm_clones>
 a38:	c6 05 d9 15 20 00 01 	movb   $0x1,0x2015d9(%rip)        # 202018 <completed.7698>
 a3f:	5d                   	pop    %rbp
 a40:	c3                   	retq   
 a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a48:	f3 c3                	repz retq 
 a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a50 <frame_dummy>:
 a50:	55                   	push   %rbp
 a51:	48 89 e5             	mov    %rsp,%rbp
 a54:	5d                   	pop    %rbp
 a55:	e9 66 ff ff ff       	jmpq   9c0 <register_tm_clones>
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a60 <print.part.1>:
 a60:	55                   	push   %rbp
 a61:	53                   	push   %rbx
 a62:	48 8d 2d 6b 02 00 00 	lea    0x26b(%rip),%rbp        # cd4 <_IO_stdin_used+0x4>
 a69:	48 89 fb             	mov    %rdi,%rbx
 a6c:	48 83 ec 08          	sub    $0x8,%rsp
 a70:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a74:	48 8b 13             	mov    (%rbx),%rdx
 a77:	48 89 ee             	mov    %rbp,%rsi
 a7a:	bf 01 00 00 00       	mov    $0x1,%edi
 a7f:	b8 01 00 00 00       	mov    $0x1,%eax
 a84:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a89:	e8 d2 fc ff ff       	callq  760 <__printf_chk@plt>
 a8e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a92:	48 85 db             	test   %rbx,%rbx
 a95:	75 d9                	jne    a70 <print.part.1+0x10>
 a97:	48 83 c4 08          	add    $0x8,%rsp
 a9b:	5b                   	pop    %rbx
 a9c:	5d                   	pop    %rbp
 a9d:	c3                   	retq   
 a9e:	66 90                	xchg   %ax,%ax

0000000000000aa0 <insert>:
 aa0:	48 85 ff             	test   %rdi,%rdi
 aa3:	74 5b                	je     b00 <insert+0x60>
 aa5:	4c 8b 06             	mov    (%rsi),%r8
 aa8:	48 89 fa             	mov    %rdi,%rdx
 aab:	45 31 c9             	xor    %r9d,%r9d
 aae:	eb 0f                	jmp    abf <insert+0x1f>
 ab0:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 ab4:	49 89 d1             	mov    %rdx,%r9
 ab7:	48 85 c9             	test   %rcx,%rcx
 aba:	74 24                	je     ae0 <insert+0x40>
 abc:	48 89 ca             	mov    %rcx,%rdx
 abf:	4c 3b 02             	cmp    (%rdx),%r8
 ac2:	7f ec                	jg     ab0 <insert+0x10>
 ac4:	48 39 fa             	cmp    %rdi,%rdx
 ac7:	74 4f                	je     b18 <insert+0x78>
 ac9:	49 89 71 10          	mov    %rsi,0x10(%r9)
 acd:	48 89 f8             	mov    %rdi,%rax
 ad0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ad4:	83 05 41 15 20 00 01 	addl   $0x1,0x201541(%rip)        # 20201c <n>
 adb:	c3                   	retq   
 adc:	0f 1f 40 00          	nopl   0x0(%rax)
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
 b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b18:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b1c:	48 89 f0             	mov    %rsi,%rax
 b1f:	83 05 f6 14 20 00 01 	addl   $0x1,0x2014f6(%rip)        # 20201c <n>
 b26:	c3                   	retq   
 b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b2e:	00 00 

0000000000000b30 <create>:
 b30:	41 54                	push   %r12
 b32:	55                   	push   %rbp
 b33:	bf 18 00 00 00       	mov    $0x18,%edi
 b38:	53                   	push   %rbx
 b39:	31 ed                	xor    %ebp,%ebp
 b3b:	e8 00 fc ff ff       	callq  740 <malloc@plt>
 b40:	48 8d 3d 97 01 00 00 	lea    0x197(%rip),%rdi        # cde <_IO_stdin_used+0xe>
 b47:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b4b:	48 89 c3             	mov    %rax,%rbx
 b4e:	48 89 c6             	mov    %rax,%rsi
 b51:	31 c0                	xor    %eax,%eax
 b53:	e8 18 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b58:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b5c:	74 3c                	je     b9a <create+0x6a>
 b5e:	4c 8d 25 79 01 00 00 	lea    0x179(%rip),%r12        # cde <_IO_stdin_used+0xe>
 b65:	0f 1f 00             	nopl   (%rax)
 b68:	48 89 de             	mov    %rbx,%rsi
 b6b:	48 89 ef             	mov    %rbp,%rdi
 b6e:	e8 2d ff ff ff       	callq  aa0 <insert>
 b73:	bf 18 00 00 00       	mov    $0x18,%edi
 b78:	48 89 c5             	mov    %rax,%rbp
 b7b:	e8 c0 fb ff ff       	callq  740 <malloc@plt>
 b80:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b84:	48 89 c3             	mov    %rax,%rbx
 b87:	48 89 c6             	mov    %rax,%rsi
 b8a:	4c 89 e7             	mov    %r12,%rdi
 b8d:	31 c0                	xor    %eax,%eax
 b8f:	e8 dc fb ff ff       	callq  770 <__isoc99_scanf@plt>
 b94:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b98:	75 ce                	jne    b68 <create+0x38>
 b9a:	48 89 e8             	mov    %rbp,%rax
 b9d:	5b                   	pop    %rbx
 b9e:	5d                   	pop    %rbp
 b9f:	41 5c                	pop    %r12
 ba1:	c3                   	retq   
 ba2:	0f 1f 40 00          	nopl   0x0(%rax)
 ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bad:	00 00 00 

0000000000000bb0 <del>:
 bb0:	53                   	push   %rbx
 bb1:	31 d2                	xor    %edx,%edx
 bb3:	48 89 fb             	mov    %rdi,%rbx
 bb6:	48 83 ec 10          	sub    $0x10,%rsp
 bba:	48 85 ff             	test   %rdi,%rdi
 bbd:	75 18                	jne    bd7 <del+0x27>
 bbf:	eb 68                	jmp    c29 <del+0x79>
 bc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bc8:	48 8b 47 10          	mov    0x10(%rdi),%rax
 bcc:	48 89 fa             	mov    %rdi,%rdx
 bcf:	48 85 c0             	test   %rax,%rax
 bd2:	74 2c                	je     c00 <del+0x50>
 bd4:	48 89 c7             	mov    %rax,%rdi
 bd7:	48 39 37             	cmp    %rsi,(%rdi)
 bda:	7c ec                	jl     bc8 <del+0x18>
 bdc:	75 22                	jne    c00 <del+0x50>
 bde:	48 39 df             	cmp    %rbx,%rdi
 be1:	48 8b 47 10          	mov    0x10(%rdi),%rax
 be5:	74 31                	je     c18 <del+0x68>
 be7:	48 89 42 10          	mov    %rax,0x10(%rdx)
 beb:	e8 20 fb ff ff       	callq  710 <free@plt>
 bf0:	48 89 d8             	mov    %rbx,%rax
 bf3:	83 2d 22 14 20 00 01 	subl   $0x1,0x201422(%rip)        # 20201c <n>
 bfa:	48 83 c4 10          	add    $0x10,%rsp
 bfe:	5b                   	pop    %rbx
 bff:	c3                   	retq   
 c00:	48 8d 3d ee 00 00 00 	lea    0xee(%rip),%rdi        # cf5 <_IO_stdin_used+0x25>
 c07:	e8 14 fb ff ff       	callq  720 <puts@plt>
 c0c:	48 83 c4 10          	add    $0x10,%rsp
 c10:	48 89 d8             	mov    %rbx,%rax
 c13:	5b                   	pop    %rbx
 c14:	c3                   	retq   
 c15:	0f 1f 00             	nopl   (%rax)
 c18:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 c1d:	e8 ee fa ff ff       	callq  710 <free@plt>
 c22:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 c27:	eb ca                	jmp    bf3 <del+0x43>
 c29:	48 8d 3d b5 00 00 00 	lea    0xb5(%rip),%rdi        # ce5 <_IO_stdin_used+0x15>
 c30:	e8 eb fa ff ff       	callq  720 <puts@plt>
 c35:	31 c0                	xor    %eax,%eax
 c37:	eb c1                	jmp    bfa <del+0x4a>
 c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c40 <print>:
 c40:	48 85 ff             	test   %rdi,%rdi
 c43:	74 05                	je     c4a <print+0xa>
 c45:	e9 16 fe ff ff       	jmpq   a60 <print.part.1>
 c4a:	c3                   	retq   
 c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c50 <__libc_csu_init>:
 c50:	41 57                	push   %r15
 c52:	41 56                	push   %r14
 c54:	49 89 d7             	mov    %rdx,%r15
 c57:	41 55                	push   %r13
 c59:	41 54                	push   %r12
 c5b:	4c 8d 25 26 11 20 00 	lea    0x201126(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 c62:	55                   	push   %rbp
 c63:	48 8d 2d 26 11 20 00 	lea    0x201126(%rip),%rbp        # 201d90 <__init_array_end>
 c6a:	53                   	push   %rbx
 c6b:	41 89 fd             	mov    %edi,%r13d
 c6e:	49 89 f6             	mov    %rsi,%r14
 c71:	4c 29 e5             	sub    %r12,%rbp
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 c1 fd 03          	sar    $0x3,%rbp
 c7c:	e8 67 fa ff ff       	callq  6e8 <_init>
 c81:	48 85 ed             	test   %rbp,%rbp
 c84:	74 20                	je     ca6 <__libc_csu_init+0x56>
 c86:	31 db                	xor    %ebx,%ebx
 c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c8f:	00 
 c90:	4c 89 fa             	mov    %r15,%rdx
 c93:	4c 89 f6             	mov    %r14,%rsi
 c96:	44 89 ef             	mov    %r13d,%edi
 c99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c9d:	48 83 c3 01          	add    $0x1,%rbx
 ca1:	48 39 dd             	cmp    %rbx,%rbp
 ca4:	75 ea                	jne    c90 <__libc_csu_init+0x40>
 ca6:	48 83 c4 08          	add    $0x8,%rsp
 caa:	5b                   	pop    %rbx
 cab:	5d                   	pop    %rbp
 cac:	41 5c                	pop    %r12
 cae:	41 5d                	pop    %r13
 cb0:	41 5e                	pop    %r14
 cb2:	41 5f                	pop    %r15
 cb4:	c3                   	retq   
 cb5:	90                   	nop
 cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cbd:	00 00 00 

0000000000000cc0 <__libc_csu_fini>:
 cc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cc4 <_fini>:
 cc4:	48 83 ec 08          	sub    $0x8,%rsp
 cc8:	48 83 c4 08          	add    $0x8,%rsp
 ccc:	c3                   	retq   
