
input/19090013030_2.elf:     file format elf64-x86-64


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
 7b4:	48 8d 3d 6d 05 00 00 	lea    0x56d(%rip),%rdi        # d28 <_IO_stdin_used+0x98>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	48 83 ec 28          	sub    $0x28,%rsp
 7c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7c8:	00 00 
 7ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	e8 6a ff ff ff       	callq  740 <puts@plt>
 7d6:	31 c0                	xor    %eax,%eax
 7d8:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7dd:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e2:	e8 69 03 00 00       	callq  b50 <creat>
 7e7:	48 89 c7             	mov    %rax,%rdi
 7ea:	48 89 c3             	mov    %rax,%rbx
 7ed:	e8 be 03 00 00       	callq  bb0 <print>
 7f2:	eb 69                	jmp    85d <main+0xad>
 7f4:	0f 1f 40 00          	nopl   0x0(%rax)
 7f8:	83 f8 02             	cmp    $0x2,%eax
 7fb:	75 5b                	jne    858 <main+0xa8>
 7fd:	48 85 db             	test   %rbx,%rbx
 800:	0f 84 f2 00 00 00    	je     8f8 <main+0x148>
 806:	48 8d 3d 4b 05 00 00 	lea    0x54b(%rip),%rdi        # d58 <_IO_stdin_used+0xc8>
 80d:	e8 2e ff ff ff       	callq  740 <puts@plt>
 812:	48 8d 3d 08 05 00 00 	lea    0x508(%rip),%rdi        # d21 <_IO_stdin_used+0x91>
 819:	4c 89 ee             	mov    %r13,%rsi
 81c:	31 c0                	xor    %eax,%eax
 81e:	e8 6d ff ff ff       	callq  790 <__isoc99_scanf@plt>
 823:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 828:	48 89 df             	mov    %rbx,%rdi
 82b:	e8 90 02 00 00       	callq  ac0 <delete>
 830:	8b 15 e6 17 20 00    	mov    0x2017e6(%rip),%edx        # 20201c <n>
 836:	48 8d 35 b8 04 00 00 	lea    0x4b8(%rip),%rsi        # cf5 <_IO_stdin_used+0x65>
 83d:	48 89 c3             	mov    %rax,%rbx
 840:	bf 01 00 00 00       	mov    $0x1,%edi
 845:	31 c0                	xor    %eax,%eax
 847:	e8 34 ff ff ff       	callq  780 <__printf_chk@plt>
 84c:	48 89 df             	mov    %rbx,%rdi
 84f:	e8 5c 03 00 00       	callq  bb0 <print>
 854:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 858:	83 f8 03             	cmp    $0x3,%eax
 85b:	74 7b                	je     8d8 <main+0x128>
 85d:	48 8d 3d 56 04 00 00 	lea    0x456(%rip),%rdi        # cba <_IO_stdin_used+0x2a>
 864:	e8 d7 fe ff ff       	callq  740 <puts@plt>
 869:	48 8d 3d 66 04 00 00 	lea    0x466(%rip),%rdi        # cd6 <_IO_stdin_used+0x46>
 870:	4c 89 e6             	mov    %r12,%rsi
 873:	31 c0                	xor    %eax,%eax
 875:	e8 16 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 87a:	48 8b 3d 8f 17 20 00 	mov    0x20178f(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 881:	e8 ea fe ff ff       	callq  770 <_IO_getc@plt>
 886:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 88a:	83 f8 01             	cmp    $0x1,%eax
 88d:	0f 85 65 ff ff ff    	jne    7f8 <main+0x48>
 893:	48 8d 3d 3f 04 00 00 	lea    0x43f(%rip),%rdi        # cd9 <_IO_stdin_used+0x49>
 89a:	e8 a1 fe ff ff       	callq  740 <puts@plt>
 89f:	bf 18 00 00 00       	mov    $0x18,%edi
 8a4:	e8 b7 fe ff ff       	callq  760 <malloc@plt>
 8a9:	48 8d 3d f9 03 00 00 	lea    0x3f9(%rip),%rdi        # ca9 <_IO_stdin_used+0x19>
 8b0:	48 8d 70 08          	lea    0x8(%rax),%rsi
 8b4:	48 89 c5             	mov    %rax,%rbp
 8b7:	48 89 c2             	mov    %rax,%rdx
 8ba:	31 c0                	xor    %eax,%eax
 8bc:	e8 cf fe ff ff       	callq  790 <__isoc99_scanf@plt>
 8c1:	48 89 ee             	mov    %rbp,%rsi
 8c4:	48 89 df             	mov    %rbx,%rdi
 8c7:	e8 64 01 00 00       	callq  a30 <insert>
 8cc:	e9 5f ff ff ff       	jmpq   830 <main+0x80>
 8d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8d8:	31 c0                	xor    %eax,%eax
 8da:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8df:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8e6:	00 00 
 8e8:	75 23                	jne    90d <main+0x15d>
 8ea:	48 83 c4 28          	add    $0x28,%rsp
 8ee:	5b                   	pop    %rbx
 8ef:	5d                   	pop    %rbp
 8f0:	41 5c                	pop    %r12
 8f2:	41 5d                	pop    %r13
 8f4:	c3                   	retq   
 8f5:	0f 1f 00             	nopl   (%rax)
 8f8:	48 8d 3d 10 04 00 00 	lea    0x410(%rip),%rdi        # d0f <_IO_stdin_used+0x7f>
 8ff:	e8 3c fe ff ff       	callq  740 <puts@plt>
 904:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 908:	e9 4b ff ff ff       	jmpq   858 <main+0xa8>
 90d:	e8 3e fe ff ff       	callq  750 <__stack_chk_fail@plt>
 912:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 919:	00 00 00 
 91c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000920 <_start>:
 920:	31 ed                	xor    %ebp,%ebp
 922:	49 89 d1             	mov    %rdx,%r9
 925:	5e                   	pop    %rsi
 926:	48 89 e2             	mov    %rsp,%rdx
 929:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 92d:	50                   	push   %rax
 92e:	54                   	push   %rsp
 92f:	4c 8d 05 4a 03 00 00 	lea    0x34a(%rip),%r8        # c80 <__libc_csu_fini>
 936:	48 8d 0d d3 02 00 00 	lea    0x2d3(%rip),%rcx        # c10 <__libc_csu_init>
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
 a35:	4c 8b 46 08          	mov    0x8(%rsi),%r8
 a39:	48 89 fa             	mov    %rdi,%rdx
 a3c:	eb 11                	jmp    a4f <insert+0x1f>
 a3e:	66 90                	xchg   %ax,%ax
 a40:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a44:	49 89 d1             	mov    %rdx,%r9
 a47:	48 85 c9             	test   %rcx,%rcx
 a4a:	74 24                	je     a70 <insert+0x40>
 a4c:	48 89 ca             	mov    %rcx,%rdx
 a4f:	4c 39 42 08          	cmp    %r8,0x8(%rdx)
 a53:	7c eb                	jl     a40 <insert+0x10>
 a55:	48 39 fa             	cmp    %rdi,%rdx
 a58:	74 4e                	je     aa8 <insert+0x78>
 a5a:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a5e:	48 89 f8             	mov    %rdi,%rax
 a61:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a65:	83 05 b0 15 20 00 01 	addl   $0x1,0x2015b0(%rip)        # 20201c <n>
 a6c:	c3                   	retq   
 a6d:	0f 1f 00             	nopl   (%rax)
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

0000000000000ac0 <delete>:
 ac0:	55                   	push   %rbp
 ac1:	53                   	push   %rbx
 ac2:	48 83 ec 08          	sub    $0x8,%rsp
 ac6:	48 85 ff             	test   %rdi,%rdi
 ac9:	74 66                	je     b31 <delete+0x71>
 acb:	48 3b 77 08          	cmp    0x8(%rdi),%rsi
 acf:	48 89 fb             	mov    %rdi,%rbx
 ad2:	48 89 f8             	mov    %rdi,%rax
 ad5:	75 0c                	jne    ae3 <delete+0x23>
 ad7:	eb 19                	jmp    af2 <delete+0x32>
 ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ae0:	48 89 f8             	mov    %rdi,%rax
 ae3:	48 8b 78 10          	mov    0x10(%rax),%rdi
 ae7:	48 39 77 08          	cmp    %rsi,0x8(%rdi)
 aeb:	75 f3                	jne    ae0 <delete+0x20>
 aed:	48 39 fb             	cmp    %rdi,%rbx
 af0:	75 1e                	jne    b10 <delete+0x50>
 af2:	48 89 df             	mov    %rbx,%rdi
 af5:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
 af9:	e8 32 fc ff ff       	callq  730 <free@plt>
 afe:	83 2d 17 15 20 00 01 	subl   $0x1,0x201517(%rip)        # 20201c <n>
 b05:	48 83 c4 08          	add    $0x8,%rsp
 b09:	48 89 e8             	mov    %rbp,%rax
 b0c:	5b                   	pop    %rbx
 b0d:	5d                   	pop    %rbp
 b0e:	c3                   	retq   
 b0f:	90                   	nop
 b10:	48 8b 57 10          	mov    0x10(%rdi),%rdx
 b14:	48 89 dd             	mov    %rbx,%rbp
 b17:	48 89 50 10          	mov    %rdx,0x10(%rax)
 b1b:	e8 10 fc ff ff       	callq  730 <free@plt>
 b20:	83 2d f5 14 20 00 01 	subl   $0x1,0x2014f5(%rip)        # 20201c <n>
 b27:	48 83 c4 08          	add    $0x8,%rsp
 b2b:	48 89 e8             	mov    %rbp,%rax
 b2e:	5b                   	pop    %rbx
 b2f:	5d                   	pop    %rbp
 b30:	c3                   	retq   
 b31:	48 8d 3d 5c 01 00 00 	lea    0x15c(%rip),%rdi        # c94 <_IO_stdin_used+0x4>
 b38:	31 ed                	xor    %ebp,%ebp
 b3a:	e8 01 fc ff ff       	callq  740 <puts@plt>
 b3f:	eb c4                	jmp    b05 <delete+0x45>
 b41:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b4d:	00 00 00 

0000000000000b50 <creat>:
 b50:	41 54                	push   %r12
 b52:	55                   	push   %rbp
 b53:	48 8d 2d 4f 01 00 00 	lea    0x14f(%rip),%rbp        # ca9 <_IO_stdin_used+0x19>
 b5a:	53                   	push   %rbx
 b5b:	45 31 e4             	xor    %r12d,%r12d
 b5e:	bf 18 00 00 00       	mov    $0x18,%edi
 b63:	e8 f8 fb ff ff       	callq  760 <malloc@plt>
 b68:	48 8d 70 08          	lea    0x8(%rax),%rsi
 b6c:	48 89 c3             	mov    %rax,%rbx
 b6f:	48 89 c2             	mov    %rax,%rdx
 b72:	48 89 ef             	mov    %rbp,%rdi
 b75:	31 c0                	xor    %eax,%eax
 b77:	e8 14 fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b7c:	48 83 7b 08 00       	cmpq   $0x0,0x8(%rbx)
 b81:	75 15                	jne    b98 <creat+0x48>
 b83:	48 89 df             	mov    %rbx,%rdi
 b86:	e8 a5 fb ff ff       	callq  730 <free@plt>
 b8b:	4c 89 e0             	mov    %r12,%rax
 b8e:	5b                   	pop    %rbx
 b8f:	5d                   	pop    %rbp
 b90:	41 5c                	pop    %r12
 b92:	c3                   	retq   
 b93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b98:	4c 89 e7             	mov    %r12,%rdi
 b9b:	48 89 de             	mov    %rbx,%rsi
 b9e:	e8 8d fe ff ff       	callq  a30 <insert>
 ba3:	48 83 7b 08 00       	cmpq   $0x0,0x8(%rbx)
 ba8:	49 89 c4             	mov    %rax,%r12
 bab:	75 b1                	jne    b5e <creat+0xe>
 bad:	eb d4                	jmp    b83 <creat+0x33>
 baf:	90                   	nop

0000000000000bb0 <print>:
 bb0:	48 85 ff             	test   %rdi,%rdi
 bb3:	74 4b                	je     c00 <print+0x50>
 bb5:	55                   	push   %rbp
 bb6:	53                   	push   %rbx
 bb7:	48 8d 2d f2 00 00 00 	lea    0xf2(%rip),%rbp        # cb0 <_IO_stdin_used+0x20>
 bbe:	48 89 fb             	mov    %rdi,%rbx
 bc1:	48 83 ec 08          	sub    $0x8,%rsp
 bc5:	0f 1f 00             	nopl   (%rax)
 bc8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bcc:	48 8b 53 08          	mov    0x8(%rbx),%rdx
 bd0:	48 89 ee             	mov    %rbp,%rsi
 bd3:	bf 01 00 00 00       	mov    $0x1,%edi
 bd8:	b8 01 00 00 00       	mov    $0x1,%eax
 bdd:	f3 0f 5a 03          	cvtss2sd (%rbx),%xmm0
 be1:	e8 9a fb ff ff       	callq  780 <__printf_chk@plt>
 be6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bea:	48 85 db             	test   %rbx,%rbx
 bed:	75 d9                	jne    bc8 <print+0x18>
 bef:	48 83 c4 08          	add    $0x8,%rsp
 bf3:	5b                   	pop    %rbx
 bf4:	5d                   	pop    %rbp
 bf5:	c3                   	retq   
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 
 c00:	f3 c3                	repz retq 
 c02:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c09:	00 00 00 
 c0c:	0f 1f 40 00          	nopl   0x0(%rax)

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
 c3c:	e8 c7 fa ff ff       	callq  708 <_init>
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
