
input/19020031116-2.elf:     file format elf64-x86-64


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
 794:	48 8d 3d b8 05 00 00 	lea    0x5b8(%rip),%rdi        # d53 <_IO_stdin_used+0x63>
 79b:	55                   	push   %rbp
 79c:	53                   	push   %rbx
 79d:	48 83 ec 28          	sub    $0x28,%rsp
 7a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7a8:	00 00 
 7aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7af:	31 c0                	xor    %eax,%eax
 7b1:	e8 6a ff ff ff       	callq  720 <puts@plt>
 7b6:	48 8d 3d 5b 06 00 00 	lea    0x65b(%rip),%rdi        # e18 <_IO_stdin_used+0x128>
 7bd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7c7:	e8 54 ff ff ff       	callq  720 <puts@plt>
 7cc:	31 ff                	xor    %edi,%edi
 7ce:	e8 fd 02 00 00       	callq  ad0 <create>
 7d3:	48 8d 3d 8f 05 00 00 	lea    0x58f(%rip),%rdi        # d69 <_IO_stdin_used+0x79>
 7da:	48 89 c3             	mov    %rax,%rbx
 7dd:	e8 3e ff ff ff       	callq  720 <puts@plt>
 7e2:	48 89 df             	mov    %rbx,%rdi
 7e5:	e8 06 04 00 00       	callq  bf0 <print>
 7ea:	eb 51                	jmp    83d <main+0xad>
 7ec:	0f 1f 40 00          	nopl   0x0(%rax)
 7f0:	83 f8 02             	cmp    $0x2,%eax
 7f3:	75 40                	jne    835 <main+0xa5>
 7f5:	48 8d 35 e0 05 00 00 	lea    0x5e0(%rip),%rsi        # ddc <_IO_stdin_used+0xec>
 7fc:	bf 01 00 00 00       	mov    $0x1,%edi
 801:	31 c0                	xor    %eax,%eax
 803:	e8 58 ff ff ff       	callq  760 <__printf_chk@plt>
 808:	48 8d 3d df 05 00 00 	lea    0x5df(%rip),%rdi        # dee <_IO_stdin_used+0xfe>
 80f:	4c 89 ee             	mov    %r13,%rsi
 812:	31 c0                	xor    %eax,%eax
 814:	e8 57 ff ff ff       	callq  770 <__isoc99_scanf@plt>
 819:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 81e:	48 89 df             	mov    %rbx,%rdi
 821:	e8 3a 03 00 00       	callq  b60 <del>
 826:	48 89 c7             	mov    %rax,%rdi
 829:	48 89 c3             	mov    %rax,%rbx
 82c:	e8 bf 03 00 00       	callq  bf0 <print>
 831:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 835:	85 c0                	test   %eax,%eax
 837:	0f 84 bf 00 00 00    	je     8fc <main+0x16c>
 83d:	48 8d 3d 3f 05 00 00 	lea    0x53f(%rip),%rdi        # d83 <_IO_stdin_used+0x93>
 844:	e8 d7 fe ff ff       	callq  720 <puts@plt>
 849:	48 8d 35 50 05 00 00 	lea    0x550(%rip),%rsi        # da0 <_IO_stdin_used+0xb0>
 850:	bf 01 00 00 00       	mov    $0x1,%edi
 855:	31 c0                	xor    %eax,%eax
 857:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 85e:	ff 
 85f:	e8 fc fe ff ff       	callq  760 <__printf_chk@plt>
 864:	48 8d 3d 44 05 00 00 	lea    0x544(%rip),%rdi        # daf <_IO_stdin_used+0xbf>
 86b:	4c 89 e6             	mov    %r12,%rsi
 86e:	31 c0                	xor    %eax,%eax
 870:	e8 fb fe ff ff       	callq  770 <__isoc99_scanf@plt>
 875:	48 8b 3d 94 17 20 00 	mov    0x201794(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 87c:	e8 cf fe ff ff       	callq  750 <_IO_getc@plt>
 881:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 885:	83 f8 01             	cmp    $0x1,%eax
 888:	0f 85 62 ff ff ff    	jne    7f0 <main+0x60>
 88e:	48 8d 35 1d 05 00 00 	lea    0x51d(%rip),%rsi        # db2 <_IO_stdin_used+0xc2>
 895:	bf 01 00 00 00       	mov    $0x1,%edi
 89a:	31 c0                	xor    %eax,%eax
 89c:	e8 bf fe ff ff       	callq  760 <__printf_chk@plt>
 8a1:	bf 18 00 00 00       	mov    $0x18,%edi
 8a6:	e8 95 fe ff ff       	callq  740 <malloc@plt>
 8ab:	48 8d 3d 42 04 00 00 	lea    0x442(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 8b2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8b6:	48 89 c5             	mov    %rax,%rbp
 8b9:	48 89 c6             	mov    %rax,%rsi
 8bc:	31 c0                	xor    %eax,%eax
 8be:	e8 ad fe ff ff       	callq  770 <__isoc99_scanf@plt>
 8c3:	48 89 df             	mov    %rbx,%rdi
 8c6:	48 89 ee             	mov    %rbp,%rsi
 8c9:	e8 62 01 00 00       	callq  a30 <insert>
 8ce:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8d2:	48 8d 35 f5 04 00 00 	lea    0x4f5(%rip),%rsi        # dce <_IO_stdin_used+0xde>
 8d9:	48 89 c3             	mov    %rax,%rbx
 8dc:	bf 01 00 00 00       	mov    $0x1,%edi
 8e1:	31 c0                	xor    %eax,%eax
 8e3:	e8 78 fe ff ff       	callq  760 <__printf_chk@plt>
 8e8:	48 89 df             	mov    %rbx,%rdi
 8eb:	e8 00 03 00 00       	callq  bf0 <print>
 8f0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8f4:	85 c0                	test   %eax,%eax
 8f6:	0f 85 41 ff ff ff    	jne    83d <main+0xad>
 8fc:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 901:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 908:	00 00 
 90a:	75 0b                	jne    917 <main+0x187>
 90c:	48 83 c4 28          	add    $0x28,%rsp
 910:	5b                   	pop    %rbx
 911:	5d                   	pop    %rbp
 912:	41 5c                	pop    %r12
 914:	41 5d                	pop    %r13
 916:	c3                   	retq   
 917:	e8 14 fe ff ff       	callq  730 <__stack_chk_fail@plt>
 91c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000920 <_start>:
 920:	31 ed                	xor    %ebp,%ebp
 922:	49 89 d1             	mov    %rdx,%r9
 925:	5e                   	pop    %rsi
 926:	48 89 e2             	mov    %rsp,%rdx
 929:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 92d:	50                   	push   %rax
 92e:	54                   	push   %rsp
 92f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # ce0 <__libc_csu_fini>
 936:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # c70 <__libc_csu_init>
 93d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 790 <main>
 944:	ff 15 96 16 20 00    	callq  *0x201696(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 94a:	f4                   	hlt    
 94b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000950 <deregister_tm_clones>:
 950:	48 8d 3d b9 16 20 00 	lea    0x2016b9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 957:	55                   	push   %rbp
 958:	48 8d 05 b1 16 20 00 	lea    0x2016b1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 95f:	48 39 f8             	cmp    %rdi,%rax
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 19                	je     980 <deregister_tm_clones+0x30>
 967:	48 8b 05 6a 16 20 00 	mov    0x20166a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 96e:	48 85 c0             	test   %rax,%rax
 971:	74 0d                	je     980 <deregister_tm_clones+0x30>
 973:	5d                   	pop    %rbp
 974:	ff e0                	jmpq   *%rax
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 
 980:	5d                   	pop    %rbp
 981:	c3                   	retq   
 982:	0f 1f 40 00          	nopl   0x0(%rax)
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <register_tm_clones>:
 990:	48 8d 3d 79 16 20 00 	lea    0x201679(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 997:	48 8d 35 72 16 20 00 	lea    0x201672(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 99e:	55                   	push   %rbp
 99f:	48 29 fe             	sub    %rdi,%rsi
 9a2:	48 89 e5             	mov    %rsp,%rbp
 9a5:	48 c1 fe 03          	sar    $0x3,%rsi
 9a9:	48 89 f0             	mov    %rsi,%rax
 9ac:	48 c1 e8 3f          	shr    $0x3f,%rax
 9b0:	48 01 c6             	add    %rax,%rsi
 9b3:	48 d1 fe             	sar    %rsi
 9b6:	74 18                	je     9d0 <register_tm_clones+0x40>
 9b8:	48 8b 05 31 16 20 00 	mov    0x201631(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9bf:	48 85 c0             	test   %rax,%rax
 9c2:	74 0c                	je     9d0 <register_tm_clones+0x40>
 9c4:	5d                   	pop    %rbp
 9c5:	ff e0                	jmpq   *%rax
 9c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ce:	00 00 
 9d0:	5d                   	pop    %rbp
 9d1:	c3                   	retq   
 9d2:	0f 1f 40 00          	nopl   0x0(%rax)
 9d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9dd:	00 00 00 

00000000000009e0 <__do_global_dtors_aux>:
 9e0:	80 3d 31 16 20 00 00 	cmpb   $0x0,0x201631(%rip)        # 202018 <completed.7698>
 9e7:	75 2f                	jne    a18 <__do_global_dtors_aux+0x38>
 9e9:	48 83 3d 07 16 20 00 	cmpq   $0x0,0x201607(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9f0:	00 
 9f1:	55                   	push   %rbp
 9f2:	48 89 e5             	mov    %rsp,%rbp
 9f5:	74 0c                	je     a03 <__do_global_dtors_aux+0x23>
 9f7:	48 8b 3d 0a 16 20 00 	mov    0x20160a(%rip),%rdi        # 202008 <__dso_handle>
 9fe:	e8 7d fd ff ff       	callq  780 <__cxa_finalize@plt>
 a03:	e8 48 ff ff ff       	callq  950 <deregister_tm_clones>
 a08:	c6 05 09 16 20 00 01 	movb   $0x1,0x201609(%rip)        # 202018 <completed.7698>
 a0f:	5d                   	pop    %rbp
 a10:	c3                   	retq   
 a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a18:	f3 c3                	repz retq 
 a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a20 <frame_dummy>:
 a20:	55                   	push   %rbp
 a21:	48 89 e5             	mov    %rsp,%rbp
 a24:	5d                   	pop    %rbp
 a25:	e9 66 ff ff ff       	jmpq   990 <register_tm_clones>
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a30 <insert>:
 a30:	8b 05 e6 15 20 00    	mov    0x2015e6(%rip),%eax        # 20201c <n>
 a36:	48 85 ff             	test   %rdi,%rdi
 a39:	44 8d 50 01          	lea    0x1(%rax),%r10d
 a3d:	74 61                	je     aa0 <insert+0x70>
 a3f:	4c 8b 06             	mov    (%rsi),%r8
 a42:	48 89 fa             	mov    %rdi,%rdx
 a45:	eb 18                	jmp    a5f <insert+0x2f>
 a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a4e:	00 00 
 a50:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a54:	49 89 d1             	mov    %rdx,%r9
 a57:	48 85 c9             	test   %rcx,%rcx
 a5a:	74 24                	je     a80 <insert+0x50>
 a5c:	48 89 ca             	mov    %rcx,%rdx
 a5f:	4c 3b 02             	cmp    (%rdx),%r8
 a62:	7f ec                	jg     a50 <insert+0x20>
 a64:	48 39 fa             	cmp    %rdi,%rdx
 a67:	74 57                	je     ac0 <insert+0x90>
 a69:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a6d:	48 89 f8             	mov    %rdi,%rax
 a70:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a74:	44 89 15 a1 15 20 00 	mov    %r10d,0x2015a1(%rip)        # 20201c <n>
 a7b:	c3                   	retq   
 a7c:	0f 1f 40 00          	nopl   0x0(%rax)
 a80:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a84:	48 89 f8             	mov    %rdi,%rax
 a87:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a8e:	00 
 a8f:	44 89 15 86 15 20 00 	mov    %r10d,0x201586(%rip)        # 20201c <n>
 a96:	c3                   	retq   
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 
 aa0:	44 8d 50 02          	lea    0x2(%rax),%r10d
 aa4:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 aab:	00 
 aac:	48 89 f0             	mov    %rsi,%rax
 aaf:	44 89 15 66 15 20 00 	mov    %r10d,0x201566(%rip)        # 20201c <n>
 ab6:	c3                   	retq   
 ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 abe:	00 00 
 ac0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ac4:	48 89 f0             	mov    %rsi,%rax
 ac7:	44 89 15 4e 15 20 00 	mov    %r10d,0x20154e(%rip)        # 20201c <n>
 ace:	c3                   	retq   
 acf:	90                   	nop

0000000000000ad0 <create>:
 ad0:	41 54                	push   %r12
 ad2:	55                   	push   %rbp
 ad3:	48 89 fd             	mov    %rdi,%rbp
 ad6:	53                   	push   %rbx
 ad7:	bf 18 00 00 00       	mov    $0x18,%edi
 adc:	e8 5f fc ff ff       	callq  740 <malloc@plt>
 ae1:	48 8d 3d 0c 02 00 00 	lea    0x20c(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 ae8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 aec:	48 89 c3             	mov    %rax,%rbx
 aef:	48 89 c6             	mov    %rax,%rsi
 af2:	31 c0                	xor    %eax,%eax
 af4:	e8 77 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 af9:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 afd:	74 43                	je     b42 <create+0x72>
 aff:	4c 8d 25 ee 01 00 00 	lea    0x1ee(%rip),%r12        # cf4 <_IO_stdin_used+0x4>
 b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b0d:	00 00 00 
 b10:	48 89 de             	mov    %rbx,%rsi
 b13:	48 89 ef             	mov    %rbp,%rdi
 b16:	e8 15 ff ff ff       	callq  a30 <insert>
 b1b:	bf 18 00 00 00       	mov    $0x18,%edi
 b20:	48 89 c5             	mov    %rax,%rbp
 b23:	e8 18 fc ff ff       	callq  740 <malloc@plt>
 b28:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b2c:	48 89 c3             	mov    %rax,%rbx
 b2f:	48 89 c6             	mov    %rax,%rsi
 b32:	4c 89 e7             	mov    %r12,%rdi
 b35:	31 c0                	xor    %eax,%eax
 b37:	e8 34 fc ff ff       	callq  770 <__isoc99_scanf@plt>
 b3c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b40:	75 ce                	jne    b10 <create+0x40>
 b42:	48 89 df             	mov    %rbx,%rdi
 b45:	e8 c6 fb ff ff       	callq  710 <free@plt>
 b4a:	48 89 e8             	mov    %rbp,%rax
 b4d:	83 2d c8 14 20 00 01 	subl   $0x1,0x2014c8(%rip)        # 20201c <n>
 b54:	5b                   	pop    %rbx
 b55:	5d                   	pop    %rbp
 b56:	41 5c                	pop    %r12
 b58:	c3                   	retq   
 b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b60 <del>:
 b60:	55                   	push   %rbp
 b61:	53                   	push   %rbx
 b62:	48 89 fd             	mov    %rdi,%rbp
 b65:	48 83 ec 08          	sub    $0x8,%rsp
 b69:	48 85 ff             	test   %rdi,%rdi
 b6c:	75 0d                	jne    b7b <del+0x1b>
 b6e:	eb 59                	jmp    bc9 <del+0x69>
 b70:	48 85 db             	test   %rbx,%rbx
 b73:	48 89 f8             	mov    %rdi,%rax
 b76:	74 38                	je     bb0 <del+0x50>
 b78:	48 89 df             	mov    %rbx,%rdi
 b7b:	48 39 37             	cmp    %rsi,(%rdi)
 b7e:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
 b82:	75 ec                	jne    b70 <del+0x10>
 b84:	48 39 ef             	cmp    %rbp,%rdi
 b87:	74 07                	je     b90 <del+0x30>
 b89:	48 89 58 10          	mov    %rbx,0x10(%rax)
 b8d:	48 89 eb             	mov    %rbp,%rbx
 b90:	e8 7b fb ff ff       	callq  710 <free@plt>
 b95:	83 2d 80 14 20 00 01 	subl   $0x1,0x201480(%rip)        # 20201c <n>
 b9c:	48 83 c4 08          	add    $0x8,%rsp
 ba0:	48 89 d8             	mov    %rbx,%rax
 ba3:	5b                   	pop    %rbx
 ba4:	5d                   	pop    %rbp
 ba5:	c3                   	retq   
 ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bad:	00 00 00 
 bb0:	48 8d 3d 5e 01 00 00 	lea    0x15e(%rip),%rdi        # d15 <_IO_stdin_used+0x25>
 bb7:	48 89 eb             	mov    %rbp,%rbx
 bba:	e8 61 fb ff ff       	callq  720 <puts@plt>
 bbf:	48 83 c4 08          	add    $0x8,%rsp
 bc3:	48 89 d8             	mov    %rbx,%rax
 bc6:	5b                   	pop    %rbx
 bc7:	5d                   	pop    %rbp
 bc8:	c3                   	retq   
 bc9:	48 89 f2             	mov    %rsi,%rdx
 bcc:	48 8d 35 28 01 00 00 	lea    0x128(%rip),%rsi        # cfb <_IO_stdin_used+0xb>
 bd3:	bf 01 00 00 00       	mov    $0x1,%edi
 bd8:	31 c0                	xor    %eax,%eax
 bda:	31 db                	xor    %ebx,%ebx
 bdc:	e8 7f fb ff ff       	callq  760 <__printf_chk@plt>
 be1:	eb b9                	jmp    b9c <del+0x3c>
 be3:	0f 1f 00             	nopl   (%rax)
 be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bed:	00 00 00 

0000000000000bf0 <print>:
 bf0:	55                   	push   %rbp
 bf1:	53                   	push   %rbx
 bf2:	48 83 ec 08          	sub    $0x8,%rsp
 bf6:	48 85 ff             	test   %rdi,%rdi
 bf9:	74 55                	je     c50 <print+0x60>
 bfb:	8b 15 1b 14 20 00    	mov    0x20141b(%rip),%edx        # 20201c <n>
 c01:	48 8d 35 f0 01 00 00 	lea    0x1f0(%rip),%rsi        # df8 <_IO_stdin_used+0x108>
 c08:	48 8d 2d 1f 01 00 00 	lea    0x11f(%rip),%rbp        # d2e <_IO_stdin_used+0x3e>
 c0f:	48 89 fb             	mov    %rdi,%rbx
 c12:	31 c0                	xor    %eax,%eax
 c14:	bf 01 00 00 00       	mov    $0x1,%edi
 c19:	e8 42 fb ff ff       	callq  760 <__printf_chk@plt>
 c1e:	66 90                	xchg   %ax,%ax
 c20:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c24:	48 8b 13             	mov    (%rbx),%rdx
 c27:	48 89 ee             	mov    %rbp,%rsi
 c2a:	bf 01 00 00 00       	mov    $0x1,%edi
 c2f:	b8 01 00 00 00       	mov    $0x1,%eax
 c34:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c39:	e8 22 fb ff ff       	callq  760 <__printf_chk@plt>
 c3e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c42:	48 85 db             	test   %rbx,%rbx
 c45:	75 d9                	jne    c20 <print+0x30>
 c47:	48 83 c4 08          	add    $0x8,%rsp
 c4b:	5b                   	pop    %rbx
 c4c:	5d                   	pop    %rbp
 c4d:	c3                   	retq   
 c4e:	66 90                	xchg   %ax,%ax
 c50:	48 8d 3d e1 00 00 00 	lea    0xe1(%rip),%rdi        # d38 <_IO_stdin_used+0x48>
 c57:	e8 c4 fa ff ff       	callq  720 <puts@plt>
 c5c:	48 83 c4 08          	add    $0x8,%rsp
 c60:	5b                   	pop    %rbx
 c61:	5d                   	pop    %rbp
 c62:	c3                   	retq   
 c63:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c6a:	00 00 00 
 c6d:	0f 1f 00             	nopl   (%rax)

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
