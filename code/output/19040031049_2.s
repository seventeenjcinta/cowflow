
input/19040031049_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000708 <_init>:
 708:	48 83 ec 08          	sub    $0x8,%rsp
 70c:	48 8b 05 d5 18 20 00 	mov    0x2018d5(%rip),%rax        # 201fe8 <__gmon_start__>
 713:	48 85 c0             	test   %rax,%rax
 716:	74 02                	je     71a <_init+0x12>
 718:	ff d0                	callq  *%rax
 71a:	48 83 c4 08          	add    $0x8,%rsp
 71e:	c3                   	retq   

Disassembly of section .plt:

0000000000000720 <.plt>:
 720:	ff 35 6a 18 20 00    	pushq  0x20186a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 726:	ff 25 6c 18 20 00    	jmpq   *0x20186c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 72c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000730 <free@plt>:
 730:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 736:	68 00 00 00 00       	pushq  $0x0
 73b:	e9 e0 ff ff ff       	jmpq   720 <.plt>

0000000000000740 <puts@plt>:
 740:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 746:	68 01 00 00 00       	pushq  $0x1
 74b:	e9 d0 ff ff ff       	jmpq   720 <.plt>

0000000000000750 <__stack_chk_fail@plt>:
 750:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 756:	68 02 00 00 00       	pushq  $0x2
 75b:	e9 c0 ff ff ff       	jmpq   720 <.plt>

0000000000000760 <malloc@plt>:
 760:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 766:	68 03 00 00 00       	pushq  $0x3
 76b:	e9 b0 ff ff ff       	jmpq   720 <.plt>

0000000000000770 <_IO_getc@plt>:
 770:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 776:	68 04 00 00 00       	pushq  $0x4
 77b:	e9 a0 ff ff ff       	jmpq   720 <.plt>

0000000000000780 <__printf_chk@plt>:
 780:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 786:	68 05 00 00 00       	pushq  $0x5
 78b:	e9 90 ff ff ff       	jmpq   720 <.plt>

0000000000000790 <__isoc99_scanf@plt>:
 790:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 796:	68 06 00 00 00       	pushq  $0x6
 79b:	e9 80 ff ff ff       	jmpq   720 <.plt>

Disassembly of section .plt.got:

00000000000007a0 <__cxa_finalize@plt>:
 7a0:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007b0 <main>:
 7b0:	41 55                	push   %r13
 7b2:	41 54                	push   %r12
 7b4:	48 8d 3d b8 05 00 00 	lea    0x5b8(%rip),%rdi        # d73 <_IO_stdin_used+0x83>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	48 83 ec 28          	sub    $0x28,%rsp
 7c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7c8:	00 00 
 7ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	e8 6a ff ff ff       	callq  740 <puts@plt>
 7d6:	48 8d 3d 0b 06 00 00 	lea    0x60b(%rip),%rdi        # de8 <_IO_stdin_used+0xf8>
 7dd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7e2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e7:	e8 54 ff ff ff       	callq  740 <puts@plt>
 7ec:	31 ff                	xor    %edi,%edi
 7ee:	e8 5d 03 00 00       	callq  b50 <creat>
 7f3:	48 89 c7             	mov    %rax,%rdi
 7f6:	48 89 c3             	mov    %rax,%rbx
 7f9:	e8 d2 03 00 00       	callq  bd0 <print>
 7fe:	eb 46                	jmp    846 <main+0x96>
 800:	83 f8 02             	cmp    $0x2,%eax
 803:	75 39                	jne    83e <main+0x8e>
 805:	48 8d 3d b9 05 00 00 	lea    0x5b9(%rip),%rdi        # dc5 <_IO_stdin_used+0xd5>
 80c:	e8 2f ff ff ff       	callq  740 <puts@plt>
 811:	48 8d 3d c9 05 00 00 	lea    0x5c9(%rip),%rdi        # de1 <_IO_stdin_used+0xf1>
 818:	4c 89 ee             	mov    %r13,%rsi
 81b:	31 c0                	xor    %eax,%eax
 81d:	e8 6e ff ff ff       	callq  790 <__isoc99_scanf@plt>
 822:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 827:	48 89 df             	mov    %rbx,%rdi
 82a:	e8 91 02 00 00       	callq  ac0 <del>
 82f:	48 89 c7             	mov    %rax,%rdi
 832:	48 89 c3             	mov    %rax,%rbx
 835:	e8 96 03 00 00       	callq  bd0 <print>
 83a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 83e:	85 c0                	test   %eax,%eax
 840:	0f 8e b8 00 00 00    	jle    8fe <main+0x14e>
 846:	48 8d 3d 3d 05 00 00 	lea    0x53d(%rip),%rdi        # d8a <_IO_stdin_used+0x9a>
 84d:	e8 ee fe ff ff       	callq  740 <puts@plt>
 852:	48 8d 3d 47 05 00 00 	lea    0x547(%rip),%rdi        # da0 <_IO_stdin_used+0xb0>
 859:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 860:	ff 
 861:	e8 da fe ff ff       	callq  740 <puts@plt>
 866:	48 8d 3d 3f 05 00 00 	lea    0x53f(%rip),%rdi        # dac <_IO_stdin_used+0xbc>
 86d:	4c 89 e6             	mov    %r12,%rsi
 870:	31 c0                	xor    %eax,%eax
 872:	e8 19 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 877:	48 8b 3d 92 17 20 00 	mov    0x201792(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 87e:	e8 ed fe ff ff       	callq  770 <_IO_getc@plt>
 883:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 887:	83 f8 01             	cmp    $0x1,%eax
 88a:	0f 85 70 ff ff ff    	jne    800 <main+0x50>
 890:	48 8d 35 79 05 00 00 	lea    0x579(%rip),%rsi        # e10 <_IO_stdin_used+0x120>
 897:	bf 01 00 00 00       	mov    $0x1,%edi
 89c:	31 c0                	xor    %eax,%eax
 89e:	e8 dd fe ff ff       	callq  780 <__printf_chk@plt>
 8a3:	bf 18 00 00 00       	mov    $0x18,%edi
 8a8:	e8 b3 fe ff ff       	callq  760 <malloc@plt>
 8ad:	48 8d 3d 64 04 00 00 	lea    0x464(%rip),%rdi        # d18 <_IO_stdin_used+0x28>
 8b4:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8b8:	48 89 c5             	mov    %rax,%rbp
 8bb:	48 89 c6             	mov    %rax,%rsi
 8be:	31 c0                	xor    %eax,%eax
 8c0:	e8 cb fe ff ff       	callq  790 <__isoc99_scanf@plt>
 8c5:	48 89 df             	mov    %rbx,%rdi
 8c8:	48 89 ee             	mov    %rbp,%rsi
 8cb:	e8 60 01 00 00       	callq  a30 <insert>
 8d0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8d4:	48 8d 35 d4 04 00 00 	lea    0x4d4(%rip),%rsi        # daf <_IO_stdin_used+0xbf>
 8db:	48 89 c3             	mov    %rax,%rbx
 8de:	bf 01 00 00 00       	mov    $0x1,%edi
 8e3:	31 c0                	xor    %eax,%eax
 8e5:	e8 96 fe ff ff       	callq  780 <__printf_chk@plt>
 8ea:	48 89 df             	mov    %rbx,%rdi
 8ed:	e8 de 02 00 00       	callq  bd0 <print>
 8f2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8f6:	85 c0                	test   %eax,%eax
 8f8:	0f 8f 48 ff ff ff    	jg     846 <main+0x96>
 8fe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 903:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 90a:	00 00 
 90c:	75 0b                	jne    919 <main+0x169>
 90e:	48 83 c4 28          	add    $0x28,%rsp
 912:	5b                   	pop    %rbx
 913:	5d                   	pop    %rbp
 914:	41 5c                	pop    %r12
 916:	41 5d                	pop    %r13
 918:	c3                   	retq   
 919:	e8 32 fe ff ff       	callq  750 <__stack_chk_fail@plt>
 91e:	66 90                	xchg   %ax,%ax

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
 93d:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 7b0 <main>
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
 9fe:	e8 9d fd ff ff       	callq  7a0 <__cxa_finalize@plt>
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
 a30:	48 85 ff             	test   %rdi,%rdi
 a33:	74 5b                	je     a90 <insert+0x60>
 a35:	4c 8b 06             	mov    (%rsi),%r8
 a38:	48 89 fa             	mov    %rdi,%rdx
 a3b:	eb 12                	jmp    a4f <insert+0x1f>
 a3d:	0f 1f 00             	nopl   (%rax)
 a40:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a44:	49 89 d1             	mov    %rdx,%r9
 a47:	48 85 c9             	test   %rcx,%rcx
 a4a:	74 24                	je     a70 <insert+0x40>
 a4c:	48 89 ca             	mov    %rcx,%rdx
 a4f:	4c 3b 02             	cmp    (%rdx),%r8
 a52:	7f ec                	jg     a40 <insert+0x10>
 a54:	48 39 fa             	cmp    %rdi,%rdx
 a57:	74 4f                	je     aa8 <insert+0x78>
 a59:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a5d:	48 89 f8             	mov    %rdi,%rax
 a60:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a64:	83 05 b1 15 20 00 01 	addl   $0x1,0x2015b1(%rip)        # 20201c <n>
 a6b:	c3                   	retq   
 a6c:	0f 1f 40 00          	nopl   0x0(%rax)
 a70:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a74:	48 89 f8             	mov    %rdi,%rax
 a77:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a7e:	00 
 a7f:	83 05 96 15 20 00 01 	addl   $0x1,0x201596(%rip)        # 20201c <n>
 a86:	c3                   	retq   
 a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a8e:	00 00 
 a90:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a97:	00 
 a98:	48 89 f0             	mov    %rsi,%rax
 a9b:	83 05 7a 15 20 00 01 	addl   $0x1,0x20157a(%rip)        # 20201c <n>
 aa2:	c3                   	retq   
 aa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 aa8:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 aac:	48 89 f0             	mov    %rsi,%rax
 aaf:	83 05 66 15 20 00 01 	addl   $0x1,0x201566(%rip)        # 20201c <n>
 ab6:	c3                   	retq   
 ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 abe:	00 00 

0000000000000ac0 <del>:
 ac0:	53                   	push   %rbx
 ac1:	48 89 fb             	mov    %rdi,%rbx
 ac4:	48 83 ec 10          	sub    $0x10,%rsp
 ac8:	48 85 ff             	test   %rdi,%rdi
 acb:	75 0e                	jne    adb <del+0x1b>
 acd:	eb 6d                	jmp    b3c <del+0x7c>
 acf:	90                   	nop
 ad0:	48 85 c0             	test   %rax,%rax
 ad3:	48 89 fa             	mov    %rdi,%rdx
 ad6:	74 30                	je     b08 <del+0x48>
 ad8:	48 89 c7             	mov    %rax,%rdi
 adb:	48 39 37             	cmp    %rsi,(%rdi)
 ade:	48 8b 47 10          	mov    0x10(%rdi),%rax
 ae2:	75 ec                	jne    ad0 <del+0x10>
 ae4:	48 39 df             	cmp    %rbx,%rdi
 ae7:	74 37                	je     b20 <del+0x60>
 ae9:	48 89 42 10          	mov    %rax,0x10(%rdx)
 aed:	e8 3e fc ff ff       	callq  730 <free@plt>
 af2:	83 2d 23 15 20 00 01 	subl   $0x1,0x201523(%rip)        # 20201c <n>
 af9:	48 89 d8             	mov    %rbx,%rax
 afc:	48 83 c4 10          	add    $0x10,%rsp
 b00:	5b                   	pop    %rbx
 b01:	c3                   	retq   
 b02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b08:	48 8d 3d f4 01 00 00 	lea    0x1f4(%rip),%rdi        # d03 <_IO_stdin_used+0x13>
 b0f:	e8 2c fc ff ff       	callq  740 <puts@plt>
 b14:	48 83 c4 10          	add    $0x10,%rsp
 b18:	48 89 d8             	mov    %rbx,%rax
 b1b:	5b                   	pop    %rbx
 b1c:	c3                   	retq   
 b1d:	0f 1f 00             	nopl   (%rax)
 b20:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b25:	e8 06 fc ff ff       	callq  730 <free@plt>
 b2a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 b2f:	83 2d e6 14 20 00 01 	subl   $0x1,0x2014e6(%rip)        # 20201c <n>
 b36:	48 83 c4 10          	add    $0x10,%rsp
 b3a:	5b                   	pop    %rbx
 b3b:	c3                   	retq   
 b3c:	48 8d 3d b1 01 00 00 	lea    0x1b1(%rip),%rdi        # cf4 <_IO_stdin_used+0x4>
 b43:	e8 f8 fb ff ff       	callq  740 <puts@plt>
 b48:	31 c0                	xor    %eax,%eax
 b4a:	eb b0                	jmp    afc <del+0x3c>
 b4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000b50 <creat>:
 b50:	41 54                	push   %r12
 b52:	55                   	push   %rbp
 b53:	48 89 fd             	mov    %rdi,%rbp
 b56:	53                   	push   %rbx
 b57:	bf 18 00 00 00       	mov    $0x18,%edi
 b5c:	e8 ff fb ff ff       	callq  760 <malloc@plt>
 b61:	48 8d 3d b0 01 00 00 	lea    0x1b0(%rip),%rdi        # d18 <_IO_stdin_used+0x28>
 b68:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b6c:	48 89 c3             	mov    %rax,%rbx
 b6f:	48 89 c6             	mov    %rax,%rsi
 b72:	31 c0                	xor    %eax,%eax
 b74:	e8 17 fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b79:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b7d:	74 43                	je     bc2 <creat+0x72>
 b7f:	4c 8d 25 92 01 00 00 	lea    0x192(%rip),%r12        # d18 <_IO_stdin_used+0x28>
 b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8d:	00 00 00 
 b90:	48 89 de             	mov    %rbx,%rsi
 b93:	48 89 ef             	mov    %rbp,%rdi
 b96:	e8 95 fe ff ff       	callq  a30 <insert>
 b9b:	bf 18 00 00 00       	mov    $0x18,%edi
 ba0:	48 89 c5             	mov    %rax,%rbp
 ba3:	e8 b8 fb ff ff       	callq  760 <malloc@plt>
 ba8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 bac:	48 89 c3             	mov    %rax,%rbx
 baf:	48 89 c6             	mov    %rax,%rsi
 bb2:	4c 89 e7             	mov    %r12,%rdi
 bb5:	31 c0                	xor    %eax,%eax
 bb7:	e8 d4 fb ff ff       	callq  790 <__isoc99_scanf@plt>
 bbc:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 bc0:	75 ce                	jne    b90 <creat+0x40>
 bc2:	48 89 e8             	mov    %rbp,%rax
 bc5:	5b                   	pop    %rbx
 bc6:	5d                   	pop    %rbp
 bc7:	41 5c                	pop    %r12
 bc9:	c3                   	retq   
 bca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000bd0 <print>:
 bd0:	55                   	push   %rbp
 bd1:	53                   	push   %rbx
 bd2:	48 89 fb             	mov    %rdi,%rbx
 bd5:	48 8d 3d 42 01 00 00 	lea    0x142(%rip),%rdi        # d1e <_IO_stdin_used+0x2e>
 bdc:	48 83 ec 08          	sub    $0x8,%rsp
 be0:	e8 5b fb ff ff       	callq  740 <puts@plt>
 be5:	48 85 db             	test   %rbx,%rbx
 be8:	74 66                	je     c50 <print+0x80>
 bea:	8b 15 2c 14 20 00    	mov    0x20142c(%rip),%edx        # 20201c <n>
 bf0:	48 8d 35 40 01 00 00 	lea    0x140(%rip),%rsi        # d37 <_IO_stdin_used+0x47>
 bf7:	48 8d 2d 47 01 00 00 	lea    0x147(%rip),%rbp        # d45 <_IO_stdin_used+0x55>
 bfe:	bf 01 00 00 00       	mov    $0x1,%edi
 c03:	31 c0                	xor    %eax,%eax
 c05:	e8 76 fb ff ff       	callq  780 <__printf_chk@plt>
 c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 c10:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c14:	48 8b 13             	mov    (%rbx),%rdx
 c17:	48 89 ee             	mov    %rbp,%rsi
 c1a:	bf 01 00 00 00       	mov    $0x1,%edi
 c1f:	b8 01 00 00 00       	mov    $0x1,%eax
 c24:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c29:	e8 52 fb ff ff       	callq  780 <__printf_chk@plt>
 c2e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c32:	48 85 db             	test   %rbx,%rbx
 c35:	75 d9                	jne    c10 <print+0x40>
 c37:	48 83 c4 08          	add    $0x8,%rsp
 c3b:	48 8d 3d 18 01 00 00 	lea    0x118(%rip),%rdi        # d5a <_IO_stdin_used+0x6a>
 c42:	5b                   	pop    %rbx
 c43:	5d                   	pop    %rbp
 c44:	e9 f7 fa ff ff       	jmpq   740 <puts@plt>
 c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c50:	48 8d 35 fc 00 00 00 	lea    0xfc(%rip),%rsi        # d53 <_IO_stdin_used+0x63>
 c57:	bf 01 00 00 00       	mov    $0x1,%edi
 c5c:	31 c0                	xor    %eax,%eax
 c5e:	e8 1d fb ff ff       	callq  780 <__printf_chk@plt>
 c63:	eb d2                	jmp    c37 <print+0x67>
 c65:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c6c:	00 00 00 
 c6f:	90                   	nop

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
 c9c:	e8 67 fa ff ff       	callq  708 <_init>
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
