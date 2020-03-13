
input/19020031064_2.elf:     file format elf64-x86-64


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
 7b4:	48 8d 35 09 06 00 00 	lea    0x609(%rip),%rsi        # dc4 <_IO_stdin_used+0x84>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	bf 01 00 00 00       	mov    $0x1,%edi
 7c2:	48 83 ec 28          	sub    $0x28,%rsp
 7c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7cd:	00 00 
 7cf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7d4:	31 c0                	xor    %eax,%eax
 7d6:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7db:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e0:	e8 9b ff ff ff       	callq  780 <__printf_chk@plt>
 7e5:	48 8d 3d 64 06 00 00 	lea    0x664(%rip),%rdi        # e50 <_IO_stdin_used+0x110>
 7ec:	e8 4f ff ff ff       	callq  740 <puts@plt>
 7f1:	31 c0                	xor    %eax,%eax
 7f3:	e8 d8 02 00 00       	callq  ad0 <creat>
 7f8:	48 89 c7             	mov    %rax,%rdi
 7fb:	48 89 c3             	mov    %rax,%rbx
 7fe:	e8 4d 04 00 00       	callq  c50 <print>
 803:	eb 50                	jmp    855 <main+0xa5>
 805:	0f 1f 00             	nopl   (%rax)
 808:	83 f8 02             	cmp    $0x2,%eax
 80b:	75 40                	jne    84d <main+0x9d>
 80d:	48 8d 35 f5 05 00 00 	lea    0x5f5(%rip),%rsi        # e09 <_IO_stdin_used+0xc9>
 814:	bf 01 00 00 00       	mov    $0x1,%edi
 819:	31 c0                	xor    %eax,%eax
 81b:	e8 60 ff ff ff       	callq  780 <__printf_chk@plt>
 820:	48 8d 3d f4 05 00 00 	lea    0x5f4(%rip),%rdi        # e1b <_IO_stdin_used+0xdb>
 827:	4c 89 ee             	mov    %r13,%rsi
 82a:	31 c0                	xor    %eax,%eax
 82c:	e8 5f ff ff ff       	callq  790 <__isoc99_scanf@plt>
 831:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 836:	48 89 df             	mov    %rbx,%rdi
 839:	e8 72 03 00 00       	callq  bb0 <del>
 83e:	48 89 c7             	mov    %rax,%rdi
 841:	48 89 c3             	mov    %rax,%rbx
 844:	e8 07 04 00 00       	callq  c50 <print>
 849:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 84d:	85 c0                	test   %eax,%eax
 84f:	0f 84 cb 00 00 00    	je     920 <main+0x170>
 855:	48 8d 3d 7f 05 00 00 	lea    0x57f(%rip),%rdi        # ddb <_IO_stdin_used+0x9b>
 85c:	e8 df fe ff ff       	callq  740 <puts@plt>
 861:	48 8d 35 8f 05 00 00 	lea    0x58f(%rip),%rsi        # df7 <_IO_stdin_used+0xb7>
 868:	bf 01 00 00 00       	mov    $0x1,%edi
 86d:	31 c0                	xor    %eax,%eax
 86f:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 876:	ff 
 877:	e8 04 ff ff ff       	callq  780 <__printf_chk@plt>
 87c:	48 8d 3d 83 05 00 00 	lea    0x583(%rip),%rdi        # e06 <_IO_stdin_used+0xc6>
 883:	4c 89 e6             	mov    %r12,%rsi
 886:	31 c0                	xor    %eax,%eax
 888:	e8 03 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 88d:	48 8b 3d 7c 17 20 00 	mov    0x20177c(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 894:	e8 d7 fe ff ff       	callq  770 <_IO_getc@plt>
 899:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 89d:	83 f8 01             	cmp    $0x1,%eax
 8a0:	0f 85 62 ff ff ff    	jne    808 <main+0x58>
 8a6:	48 8d 35 72 05 00 00 	lea    0x572(%rip),%rsi        # e1f <_IO_stdin_used+0xdf>
 8ad:	bf 01 00 00 00       	mov    $0x1,%edi
 8b2:	31 c0                	xor    %eax,%eax
 8b4:	e8 c7 fe ff ff       	callq  780 <__printf_chk@plt>
 8b9:	bf 18 00 00 00       	mov    $0x18,%edi
 8be:	e8 9d fe ff ff       	callq  760 <malloc@plt>
 8c3:	48 8d 3d 7a 04 00 00 	lea    0x47a(%rip),%rdi        # d44 <_IO_stdin_used+0x4>
 8ca:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8ce:	48 89 c6             	mov    %rax,%rsi
 8d1:	48 89 c5             	mov    %rax,%rbp
 8d4:	31 c0                	xor    %eax,%eax
 8d6:	e8 b5 fe ff ff       	callq  790 <__isoc99_scanf@plt>
 8db:	83 05 3a 17 20 00 01 	addl   $0x1,0x20173a(%rip)        # 20201c <n>
 8e2:	48 85 db             	test   %rbx,%rbx
 8e5:	74 59                	je     940 <main+0x190>
 8e7:	48 89 df             	mov    %rbx,%rdi
 8ea:	48 89 ee             	mov    %rbp,%rsi
 8ed:	e8 7e 01 00 00       	callq  a70 <insert.part.0>
 8f2:	48 89 c3             	mov    %rax,%rbx
 8f5:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8f9:	48 8d 35 3b 05 00 00 	lea    0x53b(%rip),%rsi        # e3b <_IO_stdin_used+0xfb>
 900:	bf 01 00 00 00       	mov    $0x1,%edi
 905:	31 c0                	xor    %eax,%eax
 907:	e8 74 fe ff ff       	callq  780 <__printf_chk@plt>
 90c:	48 89 df             	mov    %rbx,%rdi
 90f:	e8 3c 03 00 00       	callq  c50 <print>
 914:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 918:	85 c0                	test   %eax,%eax
 91a:	0f 85 35 ff ff ff    	jne    855 <main+0xa5>
 920:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 925:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 92c:	00 00 
 92e:	75 1d                	jne    94d <main+0x19d>
 930:	48 83 c4 28          	add    $0x28,%rsp
 934:	5b                   	pop    %rbx
 935:	5d                   	pop    %rbp
 936:	41 5c                	pop    %r12
 938:	41 5d                	pop    %r13
 93a:	c3                   	retq   
 93b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 940:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 947:	00 
 948:	48 89 eb             	mov    %rbp,%rbx
 94b:	eb a8                	jmp    8f5 <main+0x145>
 94d:	e8 fe fd ff ff       	callq  750 <__stack_chk_fail@plt>
 952:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 959:	00 00 00 
 95c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000960 <_start>:
 960:	31 ed                	xor    %ebp,%ebp
 962:	49 89 d1             	mov    %rdx,%r9
 965:	5e                   	pop    %rsi
 966:	48 89 e2             	mov    %rsp,%rdx
 969:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 96d:	50                   	push   %rax
 96e:	54                   	push   %rsp
 96f:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # d30 <__libc_csu_fini>
 976:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # cc0 <__libc_csu_init>
 97d:	48 8d 3d 2c fe ff ff 	lea    -0x1d4(%rip),%rdi        # 7b0 <main>
 984:	ff 15 56 16 20 00    	callq  *0x201656(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 98a:	f4                   	hlt    
 98b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000990 <deregister_tm_clones>:
 990:	48 8d 3d 79 16 20 00 	lea    0x201679(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 997:	55                   	push   %rbp
 998:	48 8d 05 71 16 20 00 	lea    0x201671(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 99f:	48 39 f8             	cmp    %rdi,%rax
 9a2:	48 89 e5             	mov    %rsp,%rbp
 9a5:	74 19                	je     9c0 <deregister_tm_clones+0x30>
 9a7:	48 8b 05 2a 16 20 00 	mov    0x20162a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9ae:	48 85 c0             	test   %rax,%rax
 9b1:	74 0d                	je     9c0 <deregister_tm_clones+0x30>
 9b3:	5d                   	pop    %rbp
 9b4:	ff e0                	jmpq   *%rax
 9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9bd:	00 00 00 
 9c0:	5d                   	pop    %rbp
 9c1:	c3                   	retq   
 9c2:	0f 1f 40 00          	nopl   0x0(%rax)
 9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9cd:	00 00 00 

00000000000009d0 <register_tm_clones>:
 9d0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9d7:	48 8d 35 32 16 20 00 	lea    0x201632(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 9de:	55                   	push   %rbp
 9df:	48 29 fe             	sub    %rdi,%rsi
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	48 c1 fe 03          	sar    $0x3,%rsi
 9e9:	48 89 f0             	mov    %rsi,%rax
 9ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 9f0:	48 01 c6             	add    %rax,%rsi
 9f3:	48 d1 fe             	sar    %rsi
 9f6:	74 18                	je     a10 <register_tm_clones+0x40>
 9f8:	48 8b 05 f1 15 20 00 	mov    0x2015f1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9ff:	48 85 c0             	test   %rax,%rax
 a02:	74 0c                	je     a10 <register_tm_clones+0x40>
 a04:	5d                   	pop    %rbp
 a05:	ff e0                	jmpq   *%rax
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	5d                   	pop    %rbp
 a11:	c3                   	retq   
 a12:	0f 1f 40 00          	nopl   0x0(%rax)
 a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a1d:	00 00 00 

0000000000000a20 <__do_global_dtors_aux>:
 a20:	80 3d f1 15 20 00 00 	cmpb   $0x0,0x2015f1(%rip)        # 202018 <completed.7698>
 a27:	75 2f                	jne    a58 <__do_global_dtors_aux+0x38>
 a29:	48 83 3d c7 15 20 00 	cmpq   $0x0,0x2015c7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a30:	00 
 a31:	55                   	push   %rbp
 a32:	48 89 e5             	mov    %rsp,%rbp
 a35:	74 0c                	je     a43 <__do_global_dtors_aux+0x23>
 a37:	48 8b 3d ca 15 20 00 	mov    0x2015ca(%rip),%rdi        # 202008 <__dso_handle>
 a3e:	e8 5d fd ff ff       	callq  7a0 <__cxa_finalize@plt>
 a43:	e8 48 ff ff ff       	callq  990 <deregister_tm_clones>
 a48:	c6 05 c9 15 20 00 01 	movb   $0x1,0x2015c9(%rip)        # 202018 <completed.7698>
 a4f:	5d                   	pop    %rbp
 a50:	c3                   	retq   
 a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a58:	f3 c3                	repz retq 
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a60 <frame_dummy>:
 a60:	55                   	push   %rbp
 a61:	48 89 e5             	mov    %rsp,%rbp
 a64:	5d                   	pop    %rbp
 a65:	e9 66 ff ff ff       	jmpq   9d0 <register_tm_clones>
 a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a70 <insert.part.0>:
 a70:	4c 8b 06             	mov    (%rsi),%r8
 a73:	48 89 fa             	mov    %rdi,%rdx
 a76:	45 31 c9             	xor    %r9d,%r9d
 a79:	eb 14                	jmp    a8f <insert.part.0+0x1f>
 a7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a80:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a84:	49 89 d1             	mov    %rdx,%r9
 a87:	48 85 c9             	test   %rcx,%rcx
 a8a:	74 1c                	je     aa8 <insert.part.0+0x38>
 a8c:	48 89 ca             	mov    %rcx,%rdx
 a8f:	4c 3b 02             	cmp    (%rdx),%r8
 a92:	7f ec                	jg     a80 <insert.part.0+0x10>
 a94:	48 39 fa             	cmp    %rdi,%rdx
 a97:	74 27                	je     ac0 <insert.part.0+0x50>
 a99:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a9d:	48 89 f8             	mov    %rdi,%rax
 aa0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 aa4:	c3                   	retq   
 aa5:	0f 1f 00             	nopl   (%rax)
 aa8:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 aac:	48 89 f8             	mov    %rdi,%rax
 aaf:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ab6:	00 
 ab7:	c3                   	retq   
 ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 abf:	00 
 ac0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ac4:	48 89 f0             	mov    %rsi,%rax
 ac7:	c3                   	retq   
 ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 acf:	00 

0000000000000ad0 <creat>:
 ad0:	41 56                	push   %r14
 ad2:	41 55                	push   %r13
 ad4:	bf 18 00 00 00       	mov    $0x18,%edi
 ad9:	41 54                	push   %r12
 adb:	55                   	push   %rbp
 adc:	53                   	push   %rbx
 add:	c7 05 35 15 20 00 00 	movl   $0x0,0x201535(%rip)        # 20201c <n>
 ae4:	00 00 00 
 ae7:	e8 74 fc ff ff       	callq  760 <malloc@plt>
 aec:	48 8d 3d 51 02 00 00 	lea    0x251(%rip),%rdi        # d44 <_IO_stdin_used+0x4>
 af3:	48 8d 50 08          	lea    0x8(%rax),%rdx
 af7:	48 89 c5             	mov    %rax,%rbp
 afa:	48 89 c6             	mov    %rax,%rsi
 afd:	31 c0                	xor    %eax,%eax
 aff:	e8 8c fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b04:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
 b09:	74 65                	je     b70 <creat+0xa0>
 b0b:	45 31 ed             	xor    %r13d,%r13d
 b0e:	4c 8d 25 2f 02 00 00 	lea    0x22f(%rip),%r12        # d44 <_IO_stdin_used+0x4>
 b15:	eb 37                	jmp    b4e <creat+0x7e>
 b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b1e:	00 00 
 b20:	49 89 6e 10          	mov    %rbp,0x10(%r14)
 b24:	bf 18 00 00 00       	mov    $0x18,%edi
 b29:	49 89 ee             	mov    %rbp,%r14
 b2c:	e8 2f fc ff ff       	callq  760 <malloc@plt>
 b31:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b35:	48 89 c3             	mov    %rax,%rbx
 b38:	48 89 c6             	mov    %rax,%rsi
 b3b:	4c 89 e7             	mov    %r12,%rdi
 b3e:	31 c0                	xor    %eax,%eax
 b40:	e8 4b fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b45:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b49:	74 2a                	je     b75 <creat+0xa5>
 b4b:	48 89 dd             	mov    %rbx,%rbp
 b4e:	8b 05 c8 14 20 00    	mov    0x2014c8(%rip),%eax        # 20201c <n>
 b54:	83 c0 01             	add    $0x1,%eax
 b57:	83 f8 01             	cmp    $0x1,%eax
 b5a:	89 05 bc 14 20 00    	mov    %eax,0x2014bc(%rip)        # 20201c <n>
 b60:	75 be                	jne    b20 <creat+0x50>
 b62:	49 89 ed             	mov    %rbp,%r13
 b65:	eb bd                	jmp    b24 <creat+0x54>
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 
 b70:	31 ed                	xor    %ebp,%ebp
 b72:	45 31 ed             	xor    %r13d,%r13d
 b75:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 b7c:	00 
 b7d:	4c 89 e8             	mov    %r13,%rax
 b80:	5b                   	pop    %rbx
 b81:	5d                   	pop    %rbp
 b82:	41 5c                	pop    %r12
 b84:	41 5d                	pop    %r13
 b86:	41 5e                	pop    %r14
 b88:	c3                   	retq   
 b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b90 <insert>:
 b90:	48 85 ff             	test   %rdi,%rdi
 b93:	74 0b                	je     ba0 <insert+0x10>
 b95:	e9 d6 fe ff ff       	jmpq   a70 <insert.part.0>
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ba0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ba7:	00 
 ba8:	48 89 f0             	mov    %rsi,%rax
 bab:	c3                   	retq   
 bac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000bb0 <del>:
 bb0:	48 85 ff             	test   %rdi,%rdi
 bb3:	41 54                	push   %r12
 bb5:	48 89 f2             	mov    %rsi,%rdx
 bb8:	55                   	push   %rbp
 bb9:	49 89 fc             	mov    %rdi,%r12
 bbc:	53                   	push   %rbx
 bbd:	48 89 fb             	mov    %rdi,%rbx
 bc0:	75 15                	jne    bd7 <del+0x27>
 bc2:	eb 7a                	jmp    c3e <del+0x8e>
 bc4:	0f 1f 40 00          	nopl   0x0(%rax)
 bc8:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 bcc:	48 89 dd             	mov    %rbx,%rbp
 bcf:	48 85 c9             	test   %rcx,%rcx
 bd2:	74 44                	je     c18 <del+0x68>
 bd4:	48 89 cb             	mov    %rcx,%rbx
 bd7:	48 39 13             	cmp    %rdx,(%rbx)
 bda:	75 ec                	jne    bc8 <del+0x18>
 bdc:	48 8d 35 76 01 00 00 	lea    0x176(%rip),%rsi        # d59 <_IO_stdin_used+0x19>
 be3:	31 c0                	xor    %eax,%eax
 be5:	bf 01 00 00 00       	mov    $0x1,%edi
 bea:	e8 91 fb ff ff       	callq  780 <__printf_chk@plt>
 bef:	4c 39 e3             	cmp    %r12,%rbx
 bf2:	74 44                	je     c38 <del+0x88>
 bf4:	48 8b 43 10          	mov    0x10(%rbx),%rax
 bf8:	48 89 45 10          	mov    %rax,0x10(%rbp)
 bfc:	48 89 df             	mov    %rbx,%rdi
 bff:	83 2d 16 14 20 00 01 	subl   $0x1,0x201416(%rip)        # 20201c <n>
 c06:	e8 25 fb ff ff       	callq  730 <free@plt>
 c0b:	4c 89 e0             	mov    %r12,%rax
 c0e:	5b                   	pop    %rbx
 c0f:	5d                   	pop    %rbp
 c10:	41 5c                	pop    %r12
 c12:	c3                   	retq   
 c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c18:	48 8d 35 47 01 00 00 	lea    0x147(%rip),%rsi        # d66 <_IO_stdin_used+0x26>
 c1f:	bf 01 00 00 00       	mov    $0x1,%edi
 c24:	31 c0                	xor    %eax,%eax
 c26:	e8 55 fb ff ff       	callq  780 <__printf_chk@plt>
 c2b:	4c 89 e0             	mov    %r12,%rax
 c2e:	5b                   	pop    %rbx
 c2f:	5d                   	pop    %rbp
 c30:	41 5c                	pop    %r12
 c32:	c3                   	retq   
 c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c38:	4c 8b 63 10          	mov    0x10(%rbx),%r12
 c3c:	eb be                	jmp    bfc <del+0x4c>
 c3e:	48 8d 3d 06 01 00 00 	lea    0x106(%rip),%rdi        # d4b <_IO_stdin_used+0xb>
 c45:	e8 f6 fa ff ff       	callq  740 <puts@plt>
 c4a:	eb df                	jmp    c2b <del+0x7b>
 c4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c50 <print>:
 c50:	48 85 ff             	test   %rdi,%rdi
 c53:	74 5b                	je     cb0 <print+0x60>
 c55:	55                   	push   %rbp
 c56:	53                   	push   %rbx
 c57:	48 8d 35 24 01 00 00 	lea    0x124(%rip),%rsi        # d82 <_IO_stdin_used+0x42>
 c5e:	48 8d 2d 39 01 00 00 	lea    0x139(%rip),%rbp        # d9e <_IO_stdin_used+0x5e>
 c65:	48 89 fb             	mov    %rdi,%rbx
 c68:	31 c0                	xor    %eax,%eax
 c6a:	48 83 ec 08          	sub    $0x8,%rsp
 c6e:	8b 15 a8 13 20 00    	mov    0x2013a8(%rip),%edx        # 20201c <n>
 c74:	bf 01 00 00 00       	mov    $0x1,%edi
 c79:	e8 02 fb ff ff       	callq  780 <__printf_chk@plt>
 c7e:	66 90                	xchg   %ax,%ax
 c80:	66 0f ef c0          	pxor   %xmm0,%xmm0
 c84:	48 8b 13             	mov    (%rbx),%rdx
 c87:	48 89 ee             	mov    %rbp,%rsi
 c8a:	bf 01 00 00 00       	mov    $0x1,%edi
 c8f:	b8 01 00 00 00       	mov    $0x1,%eax
 c94:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c99:	e8 e2 fa ff ff       	callq  780 <__printf_chk@plt>
 c9e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 ca2:	48 85 db             	test   %rbx,%rbx
 ca5:	75 d9                	jne    c80 <print+0x30>
 ca7:	48 83 c4 08          	add    $0x8,%rsp
 cab:	5b                   	pop    %rbx
 cac:	5d                   	pop    %rbp
 cad:	c3                   	retq   
 cae:	66 90                	xchg   %ax,%ax
 cb0:	48 8d 3d f5 00 00 00 	lea    0xf5(%rip),%rdi        # dac <_IO_stdin_used+0x6c>
 cb7:	e9 84 fa ff ff       	jmpq   740 <puts@plt>
 cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000cc0 <__libc_csu_init>:
 cc0:	41 57                	push   %r15
 cc2:	41 56                	push   %r14
 cc4:	49 89 d7             	mov    %rdx,%r15
 cc7:	41 55                	push   %r13
 cc9:	41 54                	push   %r12
 ccb:	4c 8d 25 b6 10 20 00 	lea    0x2010b6(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 cd2:	55                   	push   %rbp
 cd3:	48 8d 2d b6 10 20 00 	lea    0x2010b6(%rip),%rbp        # 201d90 <__init_array_end>
 cda:	53                   	push   %rbx
 cdb:	41 89 fd             	mov    %edi,%r13d
 cde:	49 89 f6             	mov    %rsi,%r14
 ce1:	4c 29 e5             	sub    %r12,%rbp
 ce4:	48 83 ec 08          	sub    $0x8,%rsp
 ce8:	48 c1 fd 03          	sar    $0x3,%rbp
 cec:	e8 17 fa ff ff       	callq  708 <_init>
 cf1:	48 85 ed             	test   %rbp,%rbp
 cf4:	74 20                	je     d16 <__libc_csu_init+0x56>
 cf6:	31 db                	xor    %ebx,%ebx
 cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cff:	00 
 d00:	4c 89 fa             	mov    %r15,%rdx
 d03:	4c 89 f6             	mov    %r14,%rsi
 d06:	44 89 ef             	mov    %r13d,%edi
 d09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d0d:	48 83 c3 01          	add    $0x1,%rbx
 d11:	48 39 dd             	cmp    %rbx,%rbp
 d14:	75 ea                	jne    d00 <__libc_csu_init+0x40>
 d16:	48 83 c4 08          	add    $0x8,%rsp
 d1a:	5b                   	pop    %rbx
 d1b:	5d                   	pop    %rbp
 d1c:	41 5c                	pop    %r12
 d1e:	41 5d                	pop    %r13
 d20:	41 5e                	pop    %r14
 d22:	41 5f                	pop    %r15
 d24:	c3                   	retq   
 d25:	90                   	nop
 d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d2d:	00 00 00 

0000000000000d30 <__libc_csu_fini>:
 d30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d34 <_fini>:
 d34:	48 83 ec 08          	sub    $0x8,%rsp
 d38:	48 83 c4 08          	add    $0x8,%rsp
 d3c:	c3                   	retq   
