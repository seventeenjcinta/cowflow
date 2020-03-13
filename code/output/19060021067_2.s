
input/19060021067_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006d0 <_init>:
 6d0:	48 83 ec 08          	sub    $0x8,%rsp
 6d4:	48 8b 05 0d 19 20 00 	mov    0x20190d(%rip),%rax        # 201fe8 <__gmon_start__>
 6db:	48 85 c0             	test   %rax,%rax
 6de:	74 02                	je     6e2 <_init+0x12>
 6e0:	ff d0                	callq  *%rax
 6e2:	48 83 c4 08          	add    $0x8,%rsp
 6e6:	c3                   	retq   

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	ff 35 a2 18 20 00    	pushq  0x2018a2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6f6:	ff 25 a4 18 20 00    	jmpq   *0x2018a4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000700 <puts@plt>:
 700:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 706:	68 00 00 00 00       	pushq  $0x0
 70b:	e9 e0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000710 <__stack_chk_fail@plt>:
 710:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 716:	68 01 00 00 00       	pushq  $0x1
 71b:	e9 d0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000720 <malloc@plt>:
 720:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 726:	68 02 00 00 00       	pushq  $0x2
 72b:	e9 c0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000730 <_IO_getc@plt>:
 730:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 736:	68 03 00 00 00       	pushq  $0x3
 73b:	e9 b0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000740 <__printf_chk@plt>:
 740:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 746:	68 04 00 00 00       	pushq  $0x4
 74b:	e9 a0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000750 <__isoc99_scanf@plt>:
 750:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 756:	68 05 00 00 00       	pushq  $0x5
 75b:	e9 90 ff ff ff       	jmpq   6f0 <.plt>

Disassembly of section .plt.got:

0000000000000760 <__cxa_finalize@plt>:
 760:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000770 <main>:
 770:	41 55                	push   %r13
 772:	41 54                	push   %r12
 774:	48 8d 3d 86 05 00 00 	lea    0x586(%rip),%rdi        # d01 <_IO_stdin_used+0x41>
 77b:	55                   	push   %rbp
 77c:	53                   	push   %rbx
 77d:	48 83 ec 28          	sub    $0x28,%rsp
 781:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 788:	00 00 
 78a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 78f:	31 c0                	xor    %eax,%eax
 791:	e8 6a ff ff ff       	callq  700 <puts@plt>
 796:	48 8d 3d 78 05 00 00 	lea    0x578(%rip),%rdi        # d15 <_IO_stdin_used+0x55>
 79d:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7a2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7a7:	e8 54 ff ff ff       	callq  700 <puts@plt>
 7ac:	31 c0                	xor    %eax,%eax
 7ae:	e8 5d 02 00 00       	callq  a10 <creat>
 7b3:	bf 01 00 00 00       	mov    $0x1,%edi
 7b8:	48 89 c6             	mov    %rax,%rsi
 7bb:	48 89 c3             	mov    %rax,%rbx
 7be:	31 c0                	xor    %eax,%eax
 7c0:	e8 7b ff ff ff       	callq  740 <__printf_chk@plt>
 7c5:	eb 5c                	jmp    823 <main+0xb3>
 7c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 7ce:	00 00 
 7d0:	83 f8 02             	cmp    $0x2,%eax
 7d3:	75 46                	jne    81b <main+0xab>
 7d5:	48 8d 35 90 05 00 00 	lea    0x590(%rip),%rsi        # d6c <_IO_stdin_used+0xac>
 7dc:	bf 01 00 00 00       	mov    $0x1,%edi
 7e1:	31 c0                	xor    %eax,%eax
 7e3:	e8 58 ff ff ff       	callq  740 <__printf_chk@plt>
 7e8:	48 8d 3d 92 05 00 00 	lea    0x592(%rip),%rdi        # d81 <_IO_stdin_used+0xc1>
 7ef:	4c 89 ee             	mov    %r13,%rsi
 7f2:	31 c0                	xor    %eax,%eax
 7f4:	e8 57 ff ff ff       	callq  750 <__isoc99_scanf@plt>
 7f9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7fe:	48 89 df             	mov    %rbx,%rdi
 801:	e8 ca 02 00 00       	callq  ad0 <del>
 806:	48 89 c3             	mov    %rax,%rbx
 809:	8b 05 0d 18 20 00    	mov    0x20180d(%rip),%eax        # 20201c <n>
 80f:	85 c0                	test   %eax,%eax
 811:	0f 85 c9 00 00 00    	jne    8e0 <main+0x170>
 817:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 81b:	85 c0                	test   %eax,%eax
 81d:	0f 84 a1 00 00 00    	je     8c4 <main+0x154>
 823:	48 8d 3d 05 05 00 00 	lea    0x505(%rip),%rdi        # d2f <_IO_stdin_used+0x6f>
 82a:	e8 d1 fe ff ff       	callq  700 <puts@plt>
 82f:	48 8d 3d 0f 05 00 00 	lea    0x50f(%rip),%rdi        # d45 <_IO_stdin_used+0x85>
 836:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 83d:	ff 
 83e:	e8 bd fe ff ff       	callq  700 <puts@plt>
 843:	48 8d 3d 04 05 00 00 	lea    0x504(%rip),%rdi        # d4e <_IO_stdin_used+0x8e>
 84a:	4c 89 e6             	mov    %r12,%rsi
 84d:	31 c0                	xor    %eax,%eax
 84f:	e8 fc fe ff ff       	callq  750 <__isoc99_scanf@plt>
 854:	48 8b 3d b5 17 20 00 	mov    0x2017b5(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 85b:	e8 d0 fe ff ff       	callq  730 <_IO_getc@plt>
 860:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 864:	83 f8 01             	cmp    $0x1,%eax
 867:	0f 85 63 ff ff ff    	jne    7d0 <main+0x60>
 86d:	48 8d 35 dd 04 00 00 	lea    0x4dd(%rip),%rsi        # d51 <_IO_stdin_used+0x91>
 874:	bf 01 00 00 00       	mov    $0x1,%edi
 879:	31 c0                	xor    %eax,%eax
 87b:	e8 c0 fe ff ff       	callq  740 <__printf_chk@plt>
 880:	bf 18 00 00 00       	mov    $0x18,%edi
 885:	e8 96 fe ff ff       	callq  720 <malloc@plt>
 88a:	48 8d 3d 33 04 00 00 	lea    0x433(%rip),%rdi        # cc4 <_IO_stdin_used+0x4>
 891:	48 8d 50 08          	lea    0x8(%rax),%rdx
 895:	48 89 c6             	mov    %rax,%rsi
 898:	48 89 c5             	mov    %rax,%rbp
 89b:	31 c0                	xor    %eax,%eax
 89d:	e8 ae fe ff ff       	callq  750 <__isoc99_scanf@plt>
 8a2:	48 89 df             	mov    %rbx,%rdi
 8a5:	48 89 ee             	mov    %rbp,%rsi
 8a8:	e8 c3 02 00 00       	callq  b70 <insert>
 8ad:	48 89 c7             	mov    %rax,%rdi
 8b0:	48 89 c3             	mov    %rax,%rbx
 8b3:	e8 38 03 00 00       	callq  bf0 <print>
 8b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8bc:	85 c0                	test   %eax,%eax
 8be:	0f 85 5f ff ff ff    	jne    823 <main+0xb3>
 8c4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8c9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8d0:	00 00 
 8d2:	75 19                	jne    8ed <main+0x17d>
 8d4:	48 83 c4 28          	add    $0x28,%rsp
 8d8:	5b                   	pop    %rbx
 8d9:	5d                   	pop    %rbp
 8da:	41 5c                	pop    %r12
 8dc:	41 5d                	pop    %r13
 8de:	c3                   	retq   
 8df:	90                   	nop
 8e0:	48 89 df             	mov    %rbx,%rdi
 8e3:	e8 08 03 00 00       	callq  bf0 <print>
 8e8:	e9 2a ff ff ff       	jmpq   817 <main+0xa7>
 8ed:	e8 1e fe ff ff       	callq  710 <__stack_chk_fail@plt>
 8f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8f9:	00 00 00 
 8fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000900 <_start>:
 900:	31 ed                	xor    %ebp,%ebp
 902:	49 89 d1             	mov    %rdx,%r9
 905:	5e                   	pop    %rsi
 906:	48 89 e2             	mov    %rsp,%rdx
 909:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 90d:	50                   	push   %rax
 90e:	54                   	push   %rsp
 90f:	4c 8d 05 9a 03 00 00 	lea    0x39a(%rip),%r8        # cb0 <__libc_csu_fini>
 916:	48 8d 0d 23 03 00 00 	lea    0x323(%rip),%rcx        # c40 <__libc_csu_init>
 91d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 770 <main>
 924:	ff 15 b6 16 20 00    	callq  *0x2016b6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 92a:	f4                   	hlt    
 92b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000930 <deregister_tm_clones>:
 930:	48 8d 3d d9 16 20 00 	lea    0x2016d9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 937:	55                   	push   %rbp
 938:	48 8d 05 d1 16 20 00 	lea    0x2016d1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 93f:	48 39 f8             	cmp    %rdi,%rax
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	74 19                	je     960 <deregister_tm_clones+0x30>
 947:	48 8b 05 8a 16 20 00 	mov    0x20168a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 94e:	48 85 c0             	test   %rax,%rax
 951:	74 0d                	je     960 <deregister_tm_clones+0x30>
 953:	5d                   	pop    %rbp
 954:	ff e0                	jmpq   *%rax
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 
 960:	5d                   	pop    %rbp
 961:	c3                   	retq   
 962:	0f 1f 40 00          	nopl   0x0(%rax)
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 

0000000000000970 <register_tm_clones>:
 970:	48 8d 3d 99 16 20 00 	lea    0x201699(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 977:	48 8d 35 92 16 20 00 	lea    0x201692(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 97e:	55                   	push   %rbp
 97f:	48 29 fe             	sub    %rdi,%rsi
 982:	48 89 e5             	mov    %rsp,%rbp
 985:	48 c1 fe 03          	sar    $0x3,%rsi
 989:	48 89 f0             	mov    %rsi,%rax
 98c:	48 c1 e8 3f          	shr    $0x3f,%rax
 990:	48 01 c6             	add    %rax,%rsi
 993:	48 d1 fe             	sar    %rsi
 996:	74 18                	je     9b0 <register_tm_clones+0x40>
 998:	48 8b 05 51 16 20 00 	mov    0x201651(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 99f:	48 85 c0             	test   %rax,%rax
 9a2:	74 0c                	je     9b0 <register_tm_clones+0x40>
 9a4:	5d                   	pop    %rbp
 9a5:	ff e0                	jmpq   *%rax
 9a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ae:	00 00 
 9b0:	5d                   	pop    %rbp
 9b1:	c3                   	retq   
 9b2:	0f 1f 40 00          	nopl   0x0(%rax)
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 

00000000000009c0 <__do_global_dtors_aux>:
 9c0:	80 3d 51 16 20 00 00 	cmpb   $0x0,0x201651(%rip)        # 202018 <completed.7698>
 9c7:	75 2f                	jne    9f8 <__do_global_dtors_aux+0x38>
 9c9:	48 83 3d 27 16 20 00 	cmpq   $0x0,0x201627(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9d0:	00 
 9d1:	55                   	push   %rbp
 9d2:	48 89 e5             	mov    %rsp,%rbp
 9d5:	74 0c                	je     9e3 <__do_global_dtors_aux+0x23>
 9d7:	48 8b 3d 2a 16 20 00 	mov    0x20162a(%rip),%rdi        # 202008 <__dso_handle>
 9de:	e8 7d fd ff ff       	callq  760 <__cxa_finalize@plt>
 9e3:	e8 48 ff ff ff       	callq  930 <deregister_tm_clones>
 9e8:	c6 05 29 16 20 00 01 	movb   $0x1,0x201629(%rip)        # 202018 <completed.7698>
 9ef:	5d                   	pop    %rbp
 9f0:	c3                   	retq   
 9f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9f8:	f3 c3                	repz retq 
 9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a00 <frame_dummy>:
 a00:	55                   	push   %rbp
 a01:	48 89 e5             	mov    %rsp,%rbp
 a04:	5d                   	pop    %rbp
 a05:	e9 66 ff ff ff       	jmpq   970 <register_tm_clones>
 a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a10 <creat>:
 a10:	41 56                	push   %r14
 a12:	41 55                	push   %r13
 a14:	bf 18 00 00 00       	mov    $0x18,%edi
 a19:	41 54                	push   %r12
 a1b:	55                   	push   %rbp
 a1c:	45 31 f6             	xor    %r14d,%r14d
 a1f:	53                   	push   %rbx
 a20:	c7 05 f2 15 20 00 00 	movl   $0x0,0x2015f2(%rip)        # 20201c <n>
 a27:	00 00 00 
 a2a:	4c 8d 2d 93 02 00 00 	lea    0x293(%rip),%r13        # cc4 <_IO_stdin_used+0x4>
 a31:	e8 ea fc ff ff       	callq  720 <malloc@plt>
 a36:	48 8d 3d 87 02 00 00 	lea    0x287(%rip),%rdi        # cc4 <_IO_stdin_used+0x4>
 a3d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a41:	49 89 c4             	mov    %rax,%r12
 a44:	48 89 c6             	mov    %rax,%rsi
 a47:	31 c0                	xor    %eax,%eax
 a49:	4c 89 e5             	mov    %r12,%rbp
 a4c:	e8 ff fc ff ff       	callq  750 <__isoc99_scanf@plt>
 a51:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 a56:	75 37                	jne    a8f <creat+0x7f>
 a58:	eb 56                	jmp    ab0 <creat+0xa0>
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a60:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 a65:	bf 18 00 00 00       	mov    $0x18,%edi
 a6a:	49 89 ec             	mov    %rbp,%r12
 a6d:	e8 ae fc ff ff       	callq  720 <malloc@plt>
 a72:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a76:	48 89 c3             	mov    %rax,%rbx
 a79:	48 89 c6             	mov    %rax,%rsi
 a7c:	4c 89 ef             	mov    %r13,%rdi
 a7f:	31 c0                	xor    %eax,%eax
 a81:	e8 ca fc ff ff       	callq  750 <__isoc99_scanf@plt>
 a86:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a8a:	74 24                	je     ab0 <creat+0xa0>
 a8c:	48 89 dd             	mov    %rbx,%rbp
 a8f:	8b 05 87 15 20 00    	mov    0x201587(%rip),%eax        # 20201c <n>
 a95:	83 c0 01             	add    $0x1,%eax
 a98:	83 f8 01             	cmp    $0x1,%eax
 a9b:	89 05 7b 15 20 00    	mov    %eax,0x20157b(%rip)        # 20201c <n>
 aa1:	75 bd                	jne    a60 <creat+0x50>
 aa3:	49 89 ee             	mov    %rbp,%r14
 aa6:	eb bd                	jmp    a65 <creat+0x55>
 aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aaf:	00 
 ab0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 ab7:	00 
 ab8:	4c 89 f0             	mov    %r14,%rax
 abb:	5b                   	pop    %rbx
 abc:	5d                   	pop    %rbp
 abd:	41 5c                	pop    %r12
 abf:	41 5d                	pop    %r13
 ac1:	41 5e                	pop    %r14
 ac3:	c3                   	retq   
 ac4:	66 90                	xchg   %ax,%ax
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <del>:
 ad0:	55                   	push   %rbp
 ad1:	53                   	push   %rbx
 ad2:	48 89 fd             	mov    %rdi,%rbp
 ad5:	48 89 f8             	mov    %rdi,%rax
 ad8:	48 83 ec 08          	sub    $0x8,%rsp
 adc:	48 85 ff             	test   %rdi,%rdi
 adf:	75 12                	jne    af3 <del+0x23>
 ae1:	eb 70                	jmp    b53 <del+0x83>
 ae3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ae8:	48 85 db             	test   %rbx,%rbx
 aeb:	48 89 c1             	mov    %rax,%rcx
 aee:	74 40                	je     b30 <del+0x60>
 af0:	48 89 d8             	mov    %rbx,%rax
 af3:	48 8b 10             	mov    (%rax),%rdx
 af6:	48 8b 58 10          	mov    0x10(%rax),%rbx
 afa:	48 39 f2             	cmp    %rsi,%rdx
 afd:	75 e9                	jne    ae8 <del+0x18>
 aff:	48 39 e8             	cmp    %rbp,%rax
 b02:	74 07                	je     b0b <del+0x3b>
 b04:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 b08:	48 89 eb             	mov    %rbp,%rbx
 b0b:	48 8d 35 c3 01 00 00 	lea    0x1c3(%rip),%rsi        # cd5 <_IO_stdin_used+0x15>
 b12:	bf 01 00 00 00       	mov    $0x1,%edi
 b17:	31 c0                	xor    %eax,%eax
 b19:	e8 22 fc ff ff       	callq  740 <__printf_chk@plt>
 b1e:	83 2d f7 14 20 00 01 	subl   $0x1,0x2014f7(%rip)        # 20201c <n>
 b25:	48 83 c4 08          	add    $0x8,%rsp
 b29:	48 89 d8             	mov    %rbx,%rax
 b2c:	5b                   	pop    %rbx
 b2d:	5d                   	pop    %rbp
 b2e:	c3                   	retq   
 b2f:	90                   	nop
 b30:	48 89 f2             	mov    %rsi,%rdx
 b33:	48 8d 35 a6 01 00 00 	lea    0x1a6(%rip),%rsi        # ce0 <_IO_stdin_used+0x20>
 b3a:	bf 01 00 00 00       	mov    $0x1,%edi
 b3f:	31 c0                	xor    %eax,%eax
 b41:	48 89 eb             	mov    %rbp,%rbx
 b44:	e8 f7 fb ff ff       	callq  740 <__printf_chk@plt>
 b49:	48 83 c4 08          	add    $0x8,%rsp
 b4d:	48 89 d8             	mov    %rbx,%rax
 b50:	5b                   	pop    %rbx
 b51:	5d                   	pop    %rbp
 b52:	c3                   	retq   
 b53:	48 8d 3d 71 01 00 00 	lea    0x171(%rip),%rdi        # ccb <_IO_stdin_used+0xb>
 b5a:	31 db                	xor    %ebx,%ebx
 b5c:	e8 9f fb ff ff       	callq  700 <puts@plt>
 b61:	eb c2                	jmp    b25 <del+0x55>
 b63:	0f 1f 00             	nopl   (%rax)
 b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b6d:	00 00 00 

0000000000000b70 <insert>:
 b70:	48 85 ff             	test   %rdi,%rdi
 b73:	74 5b                	je     bd0 <insert+0x60>
 b75:	48 8b 0e             	mov    (%rsi),%rcx
 b78:	48 89 fa             	mov    %rdi,%rdx
 b7b:	eb 12                	jmp    b8f <insert+0x1f>
 b7d:	0f 1f 00             	nopl   (%rax)
 b80:	48 8b 42 10          	mov    0x10(%rdx),%rax
 b84:	49 89 d0             	mov    %rdx,%r8
 b87:	48 85 c0             	test   %rax,%rax
 b8a:	74 24                	je     bb0 <insert+0x40>
 b8c:	48 89 c2             	mov    %rax,%rdx
 b8f:	48 3b 0a             	cmp    (%rdx),%rcx
 b92:	7f ec                	jg     b80 <insert+0x10>
 b94:	48 39 fa             	cmp    %rdi,%rdx
 b97:	48 89 f0             	mov    %rsi,%rax
 b9a:	74 07                	je     ba3 <insert+0x33>
 b9c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 ba0:	48 89 f8             	mov    %rdi,%rax
 ba3:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ba7:	83 05 6e 14 20 00 01 	addl   $0x1,0x20146e(%rip)        # 20201c <n>
 bae:	c3                   	retq   
 baf:	90                   	nop
 bb0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 bb4:	48 89 f8             	mov    %rdi,%rax
 bb7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bbe:	00 
 bbf:	83 05 56 14 20 00 01 	addl   $0x1,0x201456(%rip)        # 20201c <n>
 bc6:	c3                   	retq   
 bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 bce:	00 00 
 bd0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bd7:	00 
 bd8:	48 8b 04 25 00 00 00 	mov    0x0,%rax
 bdf:	00 
 be0:	0f 0b                	ud2    
 be2:	0f 1f 40 00          	nopl   0x0(%rax)
 be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bed:	00 00 00 

0000000000000bf0 <print>:
 bf0:	55                   	push   %rbp
 bf1:	53                   	push   %rbx
 bf2:	48 8d 2d fd 00 00 00 	lea    0xfd(%rip),%rbp        # cf6 <_IO_stdin_used+0x36>
 bf9:	48 89 fb             	mov    %rdi,%rbx
 bfc:	48 8d 3d ea 00 00 00 	lea    0xea(%rip),%rdi        # ced <_IO_stdin_used+0x2d>
 c03:	48 83 ec 08          	sub    $0x8,%rsp
 c07:	e8 f4 fa ff ff       	callq  700 <puts@plt>
 c0c:	0f 1f 40 00          	nopl   0x0(%rax)
 c10:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c14:	48 8b 13             	mov    (%rbx),%rdx
 c17:	48 89 ee             	mov    %rbp,%rsi
 c1a:	bf 01 00 00 00       	mov    $0x1,%edi
 c1f:	b8 01 00 00 00       	mov    $0x1,%eax
 c24:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c29:	e8 12 fb ff ff       	callq  740 <__printf_chk@plt>
 c2e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c32:	48 85 db             	test   %rbx,%rbx
 c35:	75 d9                	jne    c10 <print+0x20>
 c37:	48 83 c4 08          	add    $0x8,%rsp
 c3b:	5b                   	pop    %rbx
 c3c:	5d                   	pop    %rbp
 c3d:	c3                   	retq   
 c3e:	66 90                	xchg   %ax,%ax

0000000000000c40 <__libc_csu_init>:
 c40:	41 57                	push   %r15
 c42:	41 56                	push   %r14
 c44:	49 89 d7             	mov    %rdx,%r15
 c47:	41 55                	push   %r13
 c49:	41 54                	push   %r12
 c4b:	4c 8d 25 3e 11 20 00 	lea    0x20113e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c52:	55                   	push   %rbp
 c53:	48 8d 2d 3e 11 20 00 	lea    0x20113e(%rip),%rbp        # 201d98 <__init_array_end>
 c5a:	53                   	push   %rbx
 c5b:	41 89 fd             	mov    %edi,%r13d
 c5e:	49 89 f6             	mov    %rsi,%r14
 c61:	4c 29 e5             	sub    %r12,%rbp
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 c1 fd 03          	sar    $0x3,%rbp
 c6c:	e8 5f fa ff ff       	callq  6d0 <_init>
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
