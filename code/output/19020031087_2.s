
input/19020031087_2.elf:     file format elf64-x86-64


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
 7b4:	48 8d 3d 5a 05 00 00 	lea    0x55a(%rip),%rdi        # d15 <_IO_stdin_used+0x45>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	48 83 ec 28          	sub    $0x28,%rsp
 7c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7c8:	00 00 
 7ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	e8 6a ff ff ff       	callq  740 <puts@plt>
 7d6:	48 8d 3d a3 05 00 00 	lea    0x5a3(%rip),%rdi        # d80 <_IO_stdin_used+0xb0>
 7dd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7e2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e7:	e8 54 ff ff ff       	callq  740 <puts@plt>
 7ec:	31 c0                	xor    %eax,%eax
 7ee:	e8 cd 02 00 00       	callq  ac0 <creat>
 7f3:	48 89 c7             	mov    %rax,%rdi
 7f6:	48 89 c3             	mov    %rax,%rbx
 7f9:	e8 d2 03 00 00       	callq  bd0 <print>
 7fe:	eb 4d                	jmp    84d <main+0x9d>
 800:	83 f8 02             	cmp    $0x2,%eax
 803:	75 40                	jne    845 <main+0x95>
 805:	48 8d 35 57 05 00 00 	lea    0x557(%rip),%rsi        # d63 <_IO_stdin_used+0x93>
 80c:	bf 01 00 00 00       	mov    $0x1,%edi
 811:	31 c0                	xor    %eax,%eax
 813:	e8 68 ff ff ff       	callq  780 <__printf_chk@plt>
 818:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # d78 <_IO_stdin_used+0xa8>
 81f:	4c 89 ee             	mov    %r13,%rsi
 822:	31 c0                	xor    %eax,%eax
 824:	e8 67 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 829:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 82e:	48 89 df             	mov    %rbx,%rdi
 831:	e8 0a 03 00 00       	callq  b40 <delet>
 836:	48 89 c7             	mov    %rax,%rdi
 839:	48 89 c3             	mov    %rax,%rbx
 83c:	e8 8f 03 00 00       	callq  bd0 <print>
 841:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 845:	85 c0                	test   %eax,%eax
 847:	0f 84 b7 00 00 00    	je     904 <main+0x154>
 84d:	48 8d 3d d7 04 00 00 	lea    0x4d7(%rip),%rdi        # d2b <_IO_stdin_used+0x5b>
 854:	e8 e7 fe ff ff       	callq  740 <puts@plt>
 859:	48 8d 35 e4 04 00 00 	lea    0x4e4(%rip),%rsi        # d44 <_IO_stdin_used+0x74>
 860:	bf 01 00 00 00       	mov    $0x1,%edi
 865:	31 c0                	xor    %eax,%eax
 867:	e8 14 ff ff ff       	callq  780 <__printf_chk@plt>
 86c:	48 8d 3d e0 04 00 00 	lea    0x4e0(%rip),%rdi        # d53 <_IO_stdin_used+0x83>
 873:	4c 89 e6             	mov    %r12,%rsi
 876:	31 c0                	xor    %eax,%eax
 878:	e8 13 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 87d:	48 8b 3d 8c 17 20 00 	mov    0x20178c(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 884:	e8 e7 fe ff ff       	callq  770 <_IO_getc@plt>
 889:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 88d:	83 f8 01             	cmp    $0x1,%eax
 890:	0f 85 6a ff ff ff    	jne    800 <main+0x50>
 896:	48 8d 35 0b 05 00 00 	lea    0x50b(%rip),%rsi        # da8 <_IO_stdin_used+0xd8>
 89d:	bf 01 00 00 00       	mov    $0x1,%edi
 8a2:	31 c0                	xor    %eax,%eax
 8a4:	e8 d7 fe ff ff       	callq  780 <__printf_chk@plt>
 8a9:	bf 18 00 00 00       	mov    $0x18,%edi
 8ae:	e8 ad fe ff ff       	callq  760 <malloc@plt>
 8b3:	48 8d 3d 1a 04 00 00 	lea    0x41a(%rip),%rdi        # cd4 <_IO_stdin_used+0x4>
 8ba:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8be:	48 89 c5             	mov    %rax,%rbp
 8c1:	48 89 c6             	mov    %rax,%rsi
 8c4:	31 c0                	xor    %eax,%eax
 8c6:	e8 c5 fe ff ff       	callq  790 <__isoc99_scanf@plt>
 8cb:	48 89 df             	mov    %rbx,%rdi
 8ce:	48 89 ee             	mov    %rbp,%rsi
 8d1:	e8 6a 01 00 00       	callq  a40 <insert>
 8d6:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8da:	48 8d 35 75 04 00 00 	lea    0x475(%rip),%rsi        # d56 <_IO_stdin_used+0x86>
 8e1:	48 89 c3             	mov    %rax,%rbx
 8e4:	bf 01 00 00 00       	mov    $0x1,%edi
 8e9:	31 c0                	xor    %eax,%eax
 8eb:	e8 90 fe ff ff       	callq  780 <__printf_chk@plt>
 8f0:	48 89 df             	mov    %rbx,%rdi
 8f3:	e8 d8 02 00 00       	callq  bd0 <print>
 8f8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8fc:	85 c0                	test   %eax,%eax
 8fe:	0f 85 49 ff ff ff    	jne    84d <main+0x9d>
 904:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 909:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 910:	00 00 
 912:	75 0b                	jne    91f <main+0x16f>
 914:	48 83 c4 28          	add    $0x28,%rsp
 918:	5b                   	pop    %rbx
 919:	5d                   	pop    %rbp
 91a:	41 5c                	pop    %r12
 91c:	41 5d                	pop    %r13
 91e:	c3                   	retq   
 91f:	e8 2c fe ff ff       	callq  750 <__stack_chk_fail@plt>
 924:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92b:	00 00 00 
 92e:	66 90                	xchg   %ax,%ax

0000000000000930 <_start>:
 930:	31 ed                	xor    %ebp,%ebp
 932:	49 89 d1             	mov    %rdx,%r9
 935:	5e                   	pop    %rsi
 936:	48 89 e2             	mov    %rsp,%rdx
 939:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 93d:	50                   	push   %rax
 93e:	54                   	push   %rsp
 93f:	4c 8d 05 7a 03 00 00 	lea    0x37a(%rip),%r8        # cc0 <__libc_csu_fini>
 946:	48 8d 0d 03 03 00 00 	lea    0x303(%rip),%rcx        # c50 <__libc_csu_init>
 94d:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 7b0 <main>
 954:	ff 15 86 16 20 00    	callq  *0x201686(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 95a:	f4                   	hlt    
 95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <deregister_tm_clones>:
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 967:	55                   	push   %rbp
 968:	48 8d 05 a1 16 20 00 	lea    0x2016a1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 96f:	48 39 f8             	cmp    %rdi,%rax
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	74 19                	je     990 <deregister_tm_clones+0x30>
 977:	48 8b 05 5a 16 20 00 	mov    0x20165a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 97e:	48 85 c0             	test   %rax,%rax
 981:	74 0d                	je     990 <deregister_tm_clones+0x30>
 983:	5d                   	pop    %rbp
 984:	ff e0                	jmpq   *%rax
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 
 990:	5d                   	pop    %rbp
 991:	c3                   	retq   
 992:	0f 1f 40 00          	nopl   0x0(%rax)
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 

00000000000009a0 <register_tm_clones>:
 9a0:	48 8d 3d 69 16 20 00 	lea    0x201669(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9a7:	48 8d 35 62 16 20 00 	lea    0x201662(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 9ae:	55                   	push   %rbp
 9af:	48 29 fe             	sub    %rdi,%rsi
 9b2:	48 89 e5             	mov    %rsp,%rbp
 9b5:	48 c1 fe 03          	sar    $0x3,%rsi
 9b9:	48 89 f0             	mov    %rsi,%rax
 9bc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9c0:	48 01 c6             	add    %rax,%rsi
 9c3:	48 d1 fe             	sar    %rsi
 9c6:	74 18                	je     9e0 <register_tm_clones+0x40>
 9c8:	48 8b 05 21 16 20 00 	mov    0x201621(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9cf:	48 85 c0             	test   %rax,%rax
 9d2:	74 0c                	je     9e0 <register_tm_clones+0x40>
 9d4:	5d                   	pop    %rbp
 9d5:	ff e0                	jmpq   *%rax
 9d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9de:	00 00 
 9e0:	5d                   	pop    %rbp
 9e1:	c3                   	retq   
 9e2:	0f 1f 40 00          	nopl   0x0(%rax)
 9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ed:	00 00 00 

00000000000009f0 <__do_global_dtors_aux>:
 9f0:	80 3d 21 16 20 00 00 	cmpb   $0x0,0x201621(%rip)        # 202018 <completed.7698>
 9f7:	75 2f                	jne    a28 <__do_global_dtors_aux+0x38>
 9f9:	48 83 3d f7 15 20 00 	cmpq   $0x0,0x2015f7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a00:	00 
 a01:	55                   	push   %rbp
 a02:	48 89 e5             	mov    %rsp,%rbp
 a05:	74 0c                	je     a13 <__do_global_dtors_aux+0x23>
 a07:	48 8b 3d fa 15 20 00 	mov    0x2015fa(%rip),%rdi        # 202008 <__dso_handle>
 a0e:	e8 8d fd ff ff       	callq  7a0 <__cxa_finalize@plt>
 a13:	e8 48 ff ff ff       	callq  960 <deregister_tm_clones>
 a18:	c6 05 f9 15 20 00 01 	movb   $0x1,0x2015f9(%rip)        # 202018 <completed.7698>
 a1f:	5d                   	pop    %rbp
 a20:	c3                   	retq   
 a21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a28:	f3 c3                	repz retq 
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a30 <frame_dummy>:
 a30:	55                   	push   %rbp
 a31:	48 89 e5             	mov    %rsp,%rbp
 a34:	5d                   	pop    %rbp
 a35:	e9 66 ff ff ff       	jmpq   9a0 <register_tm_clones>
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a40 <insert>:
 a40:	48 85 ff             	test   %rdi,%rdi
 a43:	74 5b                	je     aa0 <insert+0x60>
 a45:	4c 8b 06             	mov    (%rsi),%r8
 a48:	48 89 fa             	mov    %rdi,%rdx
 a4b:	eb 12                	jmp    a5f <insert+0x1f>
 a4d:	0f 1f 00             	nopl   (%rax)
 a50:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a54:	49 89 d1             	mov    %rdx,%r9
 a57:	48 85 c9             	test   %rcx,%rcx
 a5a:	74 24                	je     a80 <insert+0x40>
 a5c:	48 89 ca             	mov    %rcx,%rdx
 a5f:	4c 3b 02             	cmp    (%rdx),%r8
 a62:	7f ec                	jg     a50 <insert+0x10>
 a64:	48 39 fa             	cmp    %rdi,%rdx
 a67:	74 47                	je     ab0 <insert+0x70>
 a69:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a6d:	48 89 f8             	mov    %rdi,%rax
 a70:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a74:	83 05 a1 15 20 00 01 	addl   $0x1,0x2015a1(%rip)        # 20201c <n>
 a7b:	c3                   	retq   
 a7c:	0f 1f 40 00          	nopl   0x0(%rax)
 a80:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a84:	48 89 f8             	mov    %rdi,%rax
 a87:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a8e:	00 
 a8f:	83 05 86 15 20 00 01 	addl   $0x1,0x201586(%rip)        # 20201c <n>
 a96:	c3                   	retq   
 a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a9e:	00 00 
 aa0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 aa7:	00 
 aa8:	48 89 f0             	mov    %rsi,%rax
 aab:	c3                   	retq   
 aac:	0f 1f 40 00          	nopl   0x0(%rax)
 ab0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 ab4:	48 89 f0             	mov    %rsi,%rax
 ab7:	83 05 5e 15 20 00 01 	addl   $0x1,0x20155e(%rip)        # 20201c <n>
 abe:	c3                   	retq   
 abf:	90                   	nop

0000000000000ac0 <creat>:
 ac0:	41 54                	push   %r12
 ac2:	55                   	push   %rbp
 ac3:	bf 18 00 00 00       	mov    $0x18,%edi
 ac8:	53                   	push   %rbx
 ac9:	31 ed                	xor    %ebp,%ebp
 acb:	e8 90 fc ff ff       	callq  760 <malloc@plt>
 ad0:	48 8d 3d fd 01 00 00 	lea    0x1fd(%rip),%rdi        # cd4 <_IO_stdin_used+0x4>
 ad7:	48 8d 50 08          	lea    0x8(%rax),%rdx
 adb:	48 89 c3             	mov    %rax,%rbx
 ade:	48 89 c6             	mov    %rax,%rsi
 ae1:	31 c0                	xor    %eax,%eax
 ae3:	e8 a8 fc ff ff       	callq  790 <__isoc99_scanf@plt>
 ae8:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 aec:	74 3c                	je     b2a <creat+0x6a>
 aee:	4c 8d 25 e5 01 00 00 	lea    0x1e5(%rip),%r12        # cda <_IO_stdin_used+0xa>
 af5:	0f 1f 00             	nopl   (%rax)
 af8:	48 89 de             	mov    %rbx,%rsi
 afb:	48 89 ef             	mov    %rbp,%rdi
 afe:	e8 3d ff ff ff       	callq  a40 <insert>
 b03:	bf 18 00 00 00       	mov    $0x18,%edi
 b08:	48 89 c5             	mov    %rax,%rbp
 b0b:	e8 50 fc ff ff       	callq  760 <malloc@plt>
 b10:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b14:	48 89 c3             	mov    %rax,%rbx
 b17:	48 89 c6             	mov    %rax,%rsi
 b1a:	4c 89 e7             	mov    %r12,%rdi
 b1d:	31 c0                	xor    %eax,%eax
 b1f:	e8 6c fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b24:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b28:	75 ce                	jne    af8 <creat+0x38>
 b2a:	48 89 df             	mov    %rbx,%rdi
 b2d:	e8 fe fb ff ff       	callq  730 <free@plt>
 b32:	48 89 e8             	mov    %rbp,%rax
 b35:	5b                   	pop    %rbx
 b36:	5d                   	pop    %rbp
 b37:	41 5c                	pop    %r12
 b39:	c3                   	retq   
 b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b40 <delet>:
 b40:	55                   	push   %rbp
 b41:	53                   	push   %rbx
 b42:	48 89 fd             	mov    %rdi,%rbp
 b45:	48 89 f8             	mov    %rdi,%rax
 b48:	48 83 ec 08          	sub    $0x8,%rsp
 b4c:	48 85 ff             	test   %rdi,%rdi
 b4f:	75 12                	jne    b63 <delet+0x23>
 b51:	eb 66                	jmp    bb9 <delet+0x79>
 b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b58:	48 85 db             	test   %rbx,%rbx
 b5b:	48 89 c1             	mov    %rax,%rcx
 b5e:	74 40                	je     ba0 <delet+0x60>
 b60:	48 89 d8             	mov    %rbx,%rax
 b63:	48 8b 10             	mov    (%rax),%rdx
 b66:	48 8b 58 10          	mov    0x10(%rax),%rbx
 b6a:	48 39 f2             	cmp    %rsi,%rdx
 b6d:	75 e9                	jne    b58 <delet+0x18>
 b6f:	48 39 e8             	cmp    %rbp,%rax
 b72:	74 07                	je     b7b <delet+0x3b>
 b74:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 b78:	48 89 eb             	mov    %rbp,%rbx
 b7b:	48 8d 35 64 01 00 00 	lea    0x164(%rip),%rsi        # ce6 <_IO_stdin_used+0x16>
 b82:	bf 01 00 00 00       	mov    $0x1,%edi
 b87:	31 c0                	xor    %eax,%eax
 b89:	e8 f2 fb ff ff       	callq  780 <__printf_chk@plt>
 b8e:	83 2d 87 14 20 00 01 	subl   $0x1,0x201487(%rip)        # 20201c <n>
 b95:	48 83 c4 08          	add    $0x8,%rsp
 b99:	48 89 d8             	mov    %rbx,%rax
 b9c:	5b                   	pop    %rbx
 b9d:	5d                   	pop    %rbp
 b9e:	c3                   	retq   
 b9f:	90                   	nop
 ba0:	48 8d 3d 4b 01 00 00 	lea    0x14b(%rip),%rdi        # cf2 <_IO_stdin_used+0x22>
 ba7:	48 89 eb             	mov    %rbp,%rbx
 baa:	e8 91 fb ff ff       	callq  740 <puts@plt>
 baf:	48 83 c4 08          	add    $0x8,%rsp
 bb3:	48 89 d8             	mov    %rbx,%rax
 bb6:	5b                   	pop    %rbx
 bb7:	5d                   	pop    %rbp
 bb8:	c3                   	retq   
 bb9:	48 8d 35 21 01 00 00 	lea    0x121(%rip),%rsi        # ce1 <_IO_stdin_used+0x11>
 bc0:	bf 01 00 00 00       	mov    $0x1,%edi
 bc5:	31 c0                	xor    %eax,%eax
 bc7:	31 db                	xor    %ebx,%ebx
 bc9:	e8 b2 fb ff ff       	callq  780 <__printf_chk@plt>
 bce:	eb c5                	jmp    b95 <delet+0x55>

0000000000000bd0 <print>:
 bd0:	55                   	push   %rbp
 bd1:	53                   	push   %rbx
 bd2:	48 89 fb             	mov    %rdi,%rbx
 bd5:	48 8d 3d 22 01 00 00 	lea    0x122(%rip),%rdi        # cfe <_IO_stdin_used+0x2e>
 bdc:	48 83 ec 08          	sub    $0x8,%rsp
 be0:	e8 5b fb ff ff       	callq  740 <puts@plt>
 be5:	48 85 db             	test   %rbx,%rbx
 be8:	74 46                	je     c30 <print+0x60>
 bea:	48 8d 2d 1a 01 00 00 	lea    0x11a(%rip),%rbp        # d0b <_IO_stdin_used+0x3b>
 bf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bf8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bfc:	48 8b 13             	mov    (%rbx),%rdx
 bff:	48 89 ee             	mov    %rbp,%rsi
 c02:	bf 01 00 00 00       	mov    $0x1,%edi
 c07:	b8 01 00 00 00       	mov    $0x1,%eax
 c0c:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 c11:	e8 6a fb ff ff       	callq  780 <__printf_chk@plt>
 c16:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 c1a:	48 85 db             	test   %rbx,%rbx
 c1d:	75 d9                	jne    bf8 <print+0x28>
 c1f:	48 83 c4 08          	add    $0x8,%rsp
 c23:	5b                   	pop    %rbx
 c24:	5d                   	pop    %rbp
 c25:	c3                   	retq   
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 
 c30:	48 83 c4 08          	add    $0x8,%rsp
 c34:	48 8d 35 a6 00 00 00 	lea    0xa6(%rip),%rsi        # ce1 <_IO_stdin_used+0x11>
 c3b:	bf 01 00 00 00       	mov    $0x1,%edi
 c40:	5b                   	pop    %rbx
 c41:	5d                   	pop    %rbp
 c42:	31 c0                	xor    %eax,%eax
 c44:	e9 37 fb ff ff       	jmpq   780 <__printf_chk@plt>
 c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

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
 c7c:	e8 87 fa ff ff       	callq  708 <_init>
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
