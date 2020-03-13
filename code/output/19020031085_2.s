
input/19020031085_2.elf:     file format elf64-x86-64


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
 6f0:	ff 35 9a 18 20 00    	pushq  0x20189a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6f6:	ff 25 9c 18 20 00    	jmpq   *0x20189c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000700 <free@plt>:
 700:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 706:	68 00 00 00 00       	pushq  $0x0
 70b:	e9 e0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000710 <putchar@plt>:
 710:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fa8 <putchar@GLIBC_2.2.5>
 716:	68 01 00 00 00       	pushq  $0x1
 71b:	e9 d0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000720 <puts@plt>:
 720:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 726:	68 02 00 00 00       	pushq  $0x2
 72b:	e9 c0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000730 <__stack_chk_fail@plt>:
 730:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 736:	68 03 00 00 00       	pushq  $0x3
 73b:	e9 b0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000740 <malloc@plt>:
 740:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 746:	68 04 00 00 00       	pushq  $0x4
 74b:	e9 a0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000750 <__printf_chk@plt>:
 750:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 756:	68 05 00 00 00       	pushq  $0x5
 75b:	e9 90 ff ff ff       	jmpq   6f0 <.plt>

0000000000000760 <__isoc99_scanf@plt>:
 760:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 766:	68 06 00 00 00       	pushq  $0x6
 76b:	e9 80 ff ff ff       	jmpq   6f0 <.plt>

Disassembly of section .plt.got:

0000000000000770 <__cxa_finalize@plt>:
 770:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 776:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000780 <main>:
 780:	48 83 ec 08          	sub    $0x8,%rsp
 784:	31 c0                	xor    %eax,%eax
 786:	e8 c5 01 00 00       	callq  950 <creat>
 78b:	31 c0                	xor    %eax,%eax
 78d:	48 83 c4 08          	add    $0x8,%rsp
 791:	c3                   	retq   
 792:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 799:	00 00 00 
 79c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007a0 <_start>:
 7a0:	31 ed                	xor    %ebp,%ebp
 7a2:	49 89 d1             	mov    %rdx,%r9
 7a5:	5e                   	pop    %rsi
 7a6:	48 89 e2             	mov    %rsp,%rdx
 7a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7ad:	50                   	push   %rax
 7ae:	54                   	push   %rsp
 7af:	4c 8d 05 ca 04 00 00 	lea    0x4ca(%rip),%r8        # c80 <__libc_csu_fini>
 7b6:	48 8d 0d 53 04 00 00 	lea    0x453(%rip),%rcx        # c10 <__libc_csu_init>
 7bd:	48 8d 3d bc ff ff ff 	lea    -0x44(%rip),%rdi        # 780 <main>
 7c4:	ff 15 16 18 20 00    	callq  *0x201816(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 7ca:	f4                   	hlt    
 7cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000007d0 <deregister_tm_clones>:
 7d0:	48 8d 3d 39 18 20 00 	lea    0x201839(%rip),%rdi        # 202010 <__TMC_END__>
 7d7:	55                   	push   %rbp
 7d8:	48 8d 05 31 18 20 00 	lea    0x201831(%rip),%rax        # 202010 <__TMC_END__>
 7df:	48 39 f8             	cmp    %rdi,%rax
 7e2:	48 89 e5             	mov    %rsp,%rbp
 7e5:	74 19                	je     800 <deregister_tm_clones+0x30>
 7e7:	48 8b 05 ea 17 20 00 	mov    0x2017ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 7ee:	48 85 c0             	test   %rax,%rax
 7f1:	74 0d                	je     800 <deregister_tm_clones+0x30>
 7f3:	5d                   	pop    %rbp
 7f4:	ff e0                	jmpq   *%rax
 7f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7fd:	00 00 00 
 800:	5d                   	pop    %rbp
 801:	c3                   	retq   
 802:	0f 1f 40 00          	nopl   0x0(%rax)
 806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 80d:	00 00 00 

0000000000000810 <register_tm_clones>:
 810:	48 8d 3d f9 17 20 00 	lea    0x2017f9(%rip),%rdi        # 202010 <__TMC_END__>
 817:	48 8d 35 f2 17 20 00 	lea    0x2017f2(%rip),%rsi        # 202010 <__TMC_END__>
 81e:	55                   	push   %rbp
 81f:	48 29 fe             	sub    %rdi,%rsi
 822:	48 89 e5             	mov    %rsp,%rbp
 825:	48 c1 fe 03          	sar    $0x3,%rsi
 829:	48 89 f0             	mov    %rsi,%rax
 82c:	48 c1 e8 3f          	shr    $0x3f,%rax
 830:	48 01 c6             	add    %rax,%rsi
 833:	48 d1 fe             	sar    %rsi
 836:	74 18                	je     850 <register_tm_clones+0x40>
 838:	48 8b 05 b1 17 20 00 	mov    0x2017b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 83f:	48 85 c0             	test   %rax,%rax
 842:	74 0c                	je     850 <register_tm_clones+0x40>
 844:	5d                   	pop    %rbp
 845:	ff e0                	jmpq   *%rax
 847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 84e:	00 00 
 850:	5d                   	pop    %rbp
 851:	c3                   	retq   
 852:	0f 1f 40 00          	nopl   0x0(%rax)
 856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 85d:	00 00 00 

0000000000000860 <__do_global_dtors_aux>:
 860:	80 3d a9 17 20 00 00 	cmpb   $0x0,0x2017a9(%rip)        # 202010 <__TMC_END__>
 867:	75 2f                	jne    898 <__do_global_dtors_aux+0x38>
 869:	48 83 3d 87 17 20 00 	cmpq   $0x0,0x201787(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 870:	00 
 871:	55                   	push   %rbp
 872:	48 89 e5             	mov    %rsp,%rbp
 875:	74 0c                	je     883 <__do_global_dtors_aux+0x23>
 877:	48 8b 3d 8a 17 20 00 	mov    0x20178a(%rip),%rdi        # 202008 <__dso_handle>
 87e:	e8 ed fe ff ff       	callq  770 <__cxa_finalize@plt>
 883:	e8 48 ff ff ff       	callq  7d0 <deregister_tm_clones>
 888:	c6 05 81 17 20 00 01 	movb   $0x1,0x201781(%rip)        # 202010 <__TMC_END__>
 88f:	5d                   	pop    %rbp
 890:	c3                   	retq   
 891:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 898:	f3 c3                	repz retq 
 89a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008a0 <frame_dummy>:
 8a0:	55                   	push   %rbp
 8a1:	48 89 e5             	mov    %rsp,%rbp
 8a4:	5d                   	pop    %rbp
 8a5:	e9 66 ff ff ff       	jmpq   810 <register_tm_clones>
 8aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008b0 <arr>:
 8b0:	8b 15 5e 17 20 00    	mov    0x20175e(%rip),%edx        # 202014 <n>
 8b6:	83 fa ff             	cmp    $0xffffffff,%edx
 8b9:	75 15                	jne    8d0 <arr+0x20>
 8bb:	48 8d 3d d2 03 00 00 	lea    0x3d2(%rip),%rdi        # c94 <_IO_stdin_used+0x4>
 8c2:	e9 59 fe ff ff       	jmpq   720 <puts@plt>
 8c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ce:	00 00 
 8d0:	55                   	push   %rbp
 8d1:	53                   	push   %rbx
 8d2:	48 8d 35 d1 03 00 00 	lea    0x3d1(%rip),%rsi        # caa <_IO_stdin_used+0x1a>
 8d9:	48 89 fb             	mov    %rdi,%rbx
 8dc:	83 c2 01             	add    $0x1,%edx
 8df:	31 c0                	xor    %eax,%eax
 8e1:	48 83 ec 08          	sub    $0x8,%rsp
 8e5:	bf 01 00 00 00       	mov    $0x1,%edi
 8ea:	e8 61 fe ff ff       	callq  750 <__printf_chk@plt>
 8ef:	48 85 db             	test   %rbx,%rbx
 8f2:	74 2f                	je     923 <arr+0x73>
 8f4:	48 8d 2d cb 03 00 00 	lea    0x3cb(%rip),%rbp        # cc6 <_IO_stdin_used+0x36>
 8fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 900:	48 8b 13             	mov    (%rbx),%rdx
 903:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
 908:	48 89 ee             	mov    %rbp,%rsi
 90b:	bf 01 00 00 00       	mov    $0x1,%edi
 910:	b8 01 00 00 00       	mov    $0x1,%eax
 915:	e8 36 fe ff ff       	callq  750 <__printf_chk@plt>
 91a:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 91e:	48 85 db             	test   %rbx,%rbx
 921:	75 dd                	jne    900 <arr+0x50>
 923:	83 3d ea 16 20 00 ff 	cmpl   $0xffffffff,0x2016ea(%rip)        # 202014 <n>
 92a:	74 07                	je     933 <arr+0x83>
 92c:	48 83 c4 08          	add    $0x8,%rsp
 930:	5b                   	pop    %rbx
 931:	5d                   	pop    %rbp
 932:	c3                   	retq   
 933:	48 83 c4 08          	add    $0x8,%rsp
 937:	48 8d 3d 56 03 00 00 	lea    0x356(%rip),%rdi        # c94 <_IO_stdin_used+0x4>
 93e:	5b                   	pop    %rbx
 93f:	5d                   	pop    %rbp
 940:	e9 db fd ff ff       	jmpq   720 <puts@plt>
 945:	90                   	nop
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <creat>:
 950:	41 56                	push   %r14
 952:	41 55                	push   %r13
 954:	bf 18 00 00 00       	mov    $0x18,%edi
 959:	41 54                	push   %r12
 95b:	55                   	push   %rbp
 95c:	53                   	push   %rbx
 95d:	48 83 ec 10          	sub    $0x10,%rsp
 961:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 968:	00 00 
 96a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 96f:	31 c0                	xor    %eax,%eax
 971:	e8 ca fd ff ff       	callq  740 <malloc@plt>
 976:	48 8d 35 55 03 00 00 	lea    0x355(%rip),%rsi        # cd2 <_IO_stdin_used+0x42>
 97d:	48 89 c5             	mov    %rax,%rbp
 980:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 987:	00 
 988:	bf 01 00 00 00       	mov    $0x1,%edi
 98d:	31 c0                	xor    %eax,%eax
 98f:	49 89 e4             	mov    %rsp,%r12
 992:	e8 b9 fd ff ff       	callq  750 <__printf_chk@plt>
 997:	48 8d 55 08          	lea    0x8(%rbp),%rdx
 99b:	48 8d 3d 4c 03 00 00 	lea    0x34c(%rip),%rdi        # cee <_IO_stdin_used+0x5e>
 9a2:	48 89 ee             	mov    %rbp,%rsi
 9a5:	31 c0                	xor    %eax,%eax
 9a7:	48 89 eb             	mov    %rbp,%rbx
 9aa:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
 9af:	e8 ac fd ff ff       	callq  760 <__isoc99_scanf@plt>
 9b4:	bf 0a 00 00 00       	mov    $0xa,%edi
 9b9:	e8 52 fd ff ff       	callq  710 <putchar@plt>
 9be:	48 8d 3d 30 03 00 00 	lea    0x330(%rip),%rdi        # cf5 <_IO_stdin_used+0x65>
 9c5:	e8 56 fd ff ff       	callq  720 <puts@plt>
 9ca:	48 8d 35 42 03 00 00 	lea    0x342(%rip),%rsi        # d13 <_IO_stdin_used+0x83>
 9d1:	bf 01 00 00 00       	mov    $0x1,%edi
 9d6:	31 c0                	xor    %eax,%eax
 9d8:	e8 73 fd ff ff       	callq  750 <__printf_chk@plt>
 9dd:	48 8d 3d 3d 03 00 00 	lea    0x33d(%rip),%rdi        # d21 <_IO_stdin_used+0x91>
 9e4:	4c 89 e6             	mov    %r12,%rsi
 9e7:	31 c0                	xor    %eax,%eax
 9e9:	e8 72 fd ff ff       	callq  760 <__isoc99_scanf@plt>
 9ee:	eb 53                	jmp    a43 <creat+0xf3>
 9f0:	83 f8 02             	cmp    $0x2,%eax
 9f3:	0f 84 3f 01 00 00    	je     b38 <creat+0x1e8>
 9f9:	85 c0                	test   %eax,%eax
 9fb:	0f 84 0f 01 00 00    	je     b10 <creat+0x1c0>
 a01:	48 89 df             	mov    %rbx,%rdi
 a04:	e8 a7 fe ff ff       	callq  8b0 <arr>
 a09:	bf 0a 00 00 00       	mov    $0xa,%edi
 a0e:	e8 fd fc ff ff       	callq  710 <putchar@plt>
 a13:	48 8d 3d db 02 00 00 	lea    0x2db(%rip),%rdi        # cf5 <_IO_stdin_used+0x65>
 a1a:	e8 01 fd ff ff       	callq  720 <puts@plt>
 a1f:	48 8d 35 ed 02 00 00 	lea    0x2ed(%rip),%rsi        # d13 <_IO_stdin_used+0x83>
 a26:	bf 01 00 00 00       	mov    $0x1,%edi
 a2b:	31 c0                	xor    %eax,%eax
 a2d:	e8 1e fd ff ff       	callq  750 <__printf_chk@plt>
 a32:	48 8d 3d e8 02 00 00 	lea    0x2e8(%rip),%rdi        # d21 <_IO_stdin_used+0x91>
 a39:	4c 89 e6             	mov    %r12,%rsi
 a3c:	31 c0                	xor    %eax,%eax
 a3e:	e8 1d fd ff ff       	callq  760 <__isoc99_scanf@plt>
 a43:	8b 04 24             	mov    (%rsp),%eax
 a46:	83 f8 01             	cmp    $0x1,%eax
 a49:	75 a5                	jne    9f0 <creat+0xa0>
 a4b:	8b 05 c3 15 20 00    	mov    0x2015c3(%rip),%eax        # 202014 <n>
 a51:	bf 18 00 00 00       	mov    $0x18,%edi
 a56:	83 c0 01             	add    $0x1,%eax
 a59:	85 c0                	test   %eax,%eax
 a5b:	89 05 b3 15 20 00    	mov    %eax,0x2015b3(%rip)        # 202014 <n>
 a61:	75 45                	jne    aa8 <creat+0x158>
 a63:	e8 d8 fc ff ff       	callq  740 <malloc@plt>
 a68:	48 8d 35 b5 02 00 00 	lea    0x2b5(%rip),%rsi        # d24 <_IO_stdin_used+0x94>
 a6f:	48 89 c3             	mov    %rax,%rbx
 a72:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 a79:	00 
 a7a:	bf 01 00 00 00       	mov    $0x1,%edi
 a7f:	31 c0                	xor    %eax,%eax
 a81:	48 89 dd             	mov    %rbx,%rbp
 a84:	e8 c7 fc ff ff       	callq  750 <__printf_chk@plt>
 a89:	48 8d 53 08          	lea    0x8(%rbx),%rdx
 a8d:	48 8d 3d 5a 02 00 00 	lea    0x25a(%rip),%rdi        # cee <_IO_stdin_used+0x5e>
 a94:	48 89 de             	mov    %rbx,%rsi
 a97:	31 c0                	xor    %eax,%eax
 a99:	e8 c2 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 a9e:	e9 5e ff ff ff       	jmpq   a01 <creat+0xb1>
 aa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 aa8:	e8 93 fc ff ff       	callq  740 <malloc@plt>
 aad:	48 8d 35 70 02 00 00 	lea    0x270(%rip),%rsi        # d24 <_IO_stdin_used+0x94>
 ab4:	49 89 c6             	mov    %rax,%r14
 ab7:	bf 01 00 00 00       	mov    $0x1,%edi
 abc:	31 c0                	xor    %eax,%eax
 abe:	e8 8d fc ff ff       	callq  750 <__printf_chk@plt>
 ac3:	49 8d 56 08          	lea    0x8(%r14),%rdx
 ac7:	48 8d 3d 20 02 00 00 	lea    0x220(%rip),%rdi        # cee <_IO_stdin_used+0x5e>
 ace:	31 c0                	xor    %eax,%eax
 ad0:	4c 89 f6             	mov    %r14,%rsi
 ad3:	e8 88 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 ad8:	49 8b 16             	mov    (%r14),%rdx
 adb:	48 3b 55 00          	cmp    0x0(%rbp),%rdx
 adf:	7f 17                	jg     af8 <creat+0x1a8>
 ae1:	49 89 6e 10          	mov    %rbp,0x10(%r14)
 ae5:	4c 89 f3             	mov    %r14,%rbx
 ae8:	e9 14 ff ff ff       	jmpq   a01 <creat+0xb1>
 aed:	0f 1f 00             	nopl   (%rax)
 af0:	48 3b 10             	cmp    (%rax),%rdx
 af3:	7e 0c                	jle    b01 <creat+0x1b1>
 af5:	48 89 c5             	mov    %rax,%rbp
 af8:	48 8b 45 10          	mov    0x10(%rbp),%rax
 afc:	48 85 c0             	test   %rax,%rax
 aff:	75 ef                	jne    af0 <creat+0x1a0>
 b01:	49 89 46 10          	mov    %rax,0x10(%r14)
 b05:	4c 89 75 10          	mov    %r14,0x10(%rbp)
 b09:	e9 f3 fe ff ff       	jmpq   a01 <creat+0xb1>
 b0e:	66 90                	xchg   %ax,%ax
 b10:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 b15:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b1c:	00 00 
 b1e:	0f 85 e0 00 00 00    	jne    c04 <creat+0x2b4>
 b24:	48 83 c4 10          	add    $0x10,%rsp
 b28:	5b                   	pop    %rbx
 b29:	5d                   	pop    %rbp
 b2a:	41 5c                	pop    %r12
 b2c:	41 5d                	pop    %r13
 b2e:	41 5e                	pop    %r14
 b30:	c3                   	retq   
 b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b38:	48 8d 35 11 02 00 00 	lea    0x211(%rip),%rsi        # d50 <_IO_stdin_used+0xc0>
 b3f:	bf 01 00 00 00       	mov    $0x1,%edi
 b44:	31 c0                	xor    %eax,%eax
 b46:	e8 05 fc ff ff       	callq  750 <__printf_chk@plt>
 b4b:	48 8d 3d d9 01 00 00 	lea    0x1d9(%rip),%rdi        # d2b <_IO_stdin_used+0x9b>
 b52:	31 c0                	xor    %eax,%eax
 b54:	4c 89 ee             	mov    %r13,%rsi
 b57:	e8 04 fc ff ff       	callq  760 <__isoc99_scanf@plt>
 b5c:	8b 0d b2 14 20 00    	mov    0x2014b2(%rip),%ecx        # 202014 <n>
 b62:	85 c9                	test   %ecx,%ecx
 b64:	78 41                	js     ba7 <creat+0x257>
 b66:	48 63 74 24 04       	movslq 0x4(%rsp),%rsi
 b6b:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
 b6f:	48 3b 33             	cmp    (%rbx),%rsi
 b72:	74 3b                	je     baf <creat+0x25f>
 b74:	85 c9                	test   %ecx,%ecx
 b76:	74 78                	je     bf0 <creat+0x2a0>
 b78:	48 89 ea             	mov    %rbp,%rdx
 b7b:	48 89 df             	mov    %rbx,%rdi
 b7e:	31 c0                	xor    %eax,%eax
 b80:	eb 1e                	jmp    ba0 <creat+0x250>
 b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b88:	48 39 37             	cmp    %rsi,(%rdi)
 b8b:	74 2b                	je     bb8 <creat+0x268>
 b8d:	48 39 32             	cmp    %rsi,(%rdx)
 b90:	4c 8b 42 10          	mov    0x10(%rdx),%r8
 b94:	74 3a                	je     bd0 <creat+0x280>
 b96:	39 c1                	cmp    %eax,%ecx
 b98:	48 89 d7             	mov    %rdx,%rdi
 b9b:	4c 89 c2             	mov    %r8,%rdx
 b9e:	74 50                	je     bf0 <creat+0x2a0>
 ba0:	83 c0 01             	add    $0x1,%eax
 ba3:	39 c1                	cmp    %eax,%ecx
 ba5:	7d e1                	jge    b88 <creat+0x238>
 ba7:	48 89 dd             	mov    %rbx,%rbp
 baa:	e9 52 fe ff ff       	jmpq   a01 <creat+0xb1>
 baf:	48 89 df             	mov    %rbx,%rdi
 bb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 bb8:	e8 43 fb ff ff       	callq  700 <free@plt>
 bbd:	48 89 eb             	mov    %rbp,%rbx
 bc0:	83 2d 4d 14 20 00 01 	subl   $0x1,0x20144d(%rip)        # 202014 <n>
 bc7:	e9 35 fe ff ff       	jmpq   a01 <creat+0xb1>
 bcc:	0f 1f 40 00          	nopl   0x0(%rax)
 bd0:	4c 89 47 10          	mov    %r8,0x10(%rdi)
 bd4:	48 89 d7             	mov    %rdx,%rdi
 bd7:	48 89 dd             	mov    %rbx,%rbp
 bda:	e8 21 fb ff ff       	callq  700 <free@plt>
 bdf:	83 2d 2e 14 20 00 01 	subl   $0x1,0x20142e(%rip)        # 202014 <n>
 be6:	e9 16 fe ff ff       	jmpq   a01 <creat+0xb1>
 beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bf0:	48 8d 3d 38 01 00 00 	lea    0x138(%rip),%rdi        # d2f <_IO_stdin_used+0x9f>
 bf7:	48 89 dd             	mov    %rbx,%rbp
 bfa:	e8 21 fb ff ff       	callq  720 <puts@plt>
 bff:	e9 fd fd ff ff       	jmpq   a01 <creat+0xb1>
 c04:	e8 27 fb ff ff       	callq  730 <__stack_chk_fail@plt>
 c09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

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
 c3c:	e8 8f fa ff ff       	callq  6d0 <_init>
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
