
input/19020031089_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000648 <_init>:
 648:	48 83 ec 08          	sub    $0x8,%rsp
 64c:	48 8b 05 95 19 20 00 	mov    0x201995(%rip),%rax        # 201fe8 <__gmon_start__>
 653:	48 85 c0             	test   %rax,%rax
 656:	74 02                	je     65a <_init+0x12>
 658:	ff d0                	callq  *%rax
 65a:	48 83 c4 08          	add    $0x8,%rsp
 65e:	c3                   	retq   

Disassembly of section .plt:

0000000000000660 <.plt>:
 660:	ff 35 32 19 20 00    	pushq  0x201932(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 666:	ff 25 34 19 20 00    	jmpq   *0x201934(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 66c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000670 <free@plt>:
 670:	ff 25 32 19 20 00    	jmpq   *0x201932(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 676:	68 00 00 00 00       	pushq  $0x0
 67b:	e9 e0 ff ff ff       	jmpq   660 <.plt>

0000000000000680 <puts@plt>:
 680:	ff 25 2a 19 20 00    	jmpq   *0x20192a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 686:	68 01 00 00 00       	pushq  $0x1
 68b:	e9 d0 ff ff ff       	jmpq   660 <.plt>

0000000000000690 <malloc@plt>:
 690:	ff 25 22 19 20 00    	jmpq   *0x201922(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 696:	68 02 00 00 00       	pushq  $0x2
 69b:	e9 c0 ff ff ff       	jmpq   660 <.plt>

00000000000006a0 <__printf_chk@plt>:
 6a0:	ff 25 1a 19 20 00    	jmpq   *0x20191a(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 6a6:	68 03 00 00 00       	pushq  $0x3
 6ab:	e9 b0 ff ff ff       	jmpq   660 <.plt>

00000000000006b0 <__isoc99_scanf@plt>:
 6b0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 6b6:	68 04 00 00 00       	pushq  $0x4
 6bb:	e9 a0 ff ff ff       	jmpq   660 <.plt>

00000000000006c0 <exit@plt>:
 6c0:	ff 25 0a 19 20 00    	jmpq   *0x20190a(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 6c6:	68 05 00 00 00       	pushq  $0x5
 6cb:	e9 90 ff ff ff       	jmpq   660 <.plt>

Disassembly of section .plt.got:

00000000000006d0 <__cxa_finalize@plt>:
 6d0:	ff 25 22 19 20 00    	jmpq   *0x201922(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 6d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006e0 <main>:
 6e0:	41 55                	push   %r13
 6e2:	41 54                	push   %r12
 6e4:	55                   	push   %rbp
 6e5:	53                   	push   %rbx
 6e6:	31 ed                	xor    %ebp,%ebp
 6e8:	48 83 ec 18          	sub    $0x18,%rsp
 6ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 6f3:	00 00 
 6f5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 6fa:	31 c0                	xor    %eax,%eax
 6fc:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
 701:	49 89 e4             	mov    %rsp,%r12
 704:	bf 10 00 00 00       	mov    $0x10,%edi
 709:	e8 82 ff ff ff       	callq  690 <malloc@plt>
 70e:	48 8d 3d f5 04 00 00 	lea    0x4f5(%rip),%rdi        # c0a <_IO_stdin_used+0x2a>
 715:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 71c:	00 
 71d:	48 89 c3             	mov    %rax,%rbx
 720:	e8 5b ff ff ff       	callq  680 <puts@plt>
 725:	48 8d 3d 64 05 00 00 	lea    0x564(%rip),%rdi        # c90 <_IO_stdin_used+0xb0>
 72c:	e8 4f ff ff ff       	callq  680 <puts@plt>
 731:	48 8d 3d ea 04 00 00 	lea    0x4ea(%rip),%rdi        # c22 <_IO_stdin_used+0x42>
 738:	31 c0                	xor    %eax,%eax
 73a:	4c 89 e6             	mov    %r12,%rsi
 73d:	e8 6e ff ff ff       	callq  6b0 <__isoc99_scanf@plt>
 742:	8b 04 24             	mov    (%rsp),%eax
 745:	83 f8 01             	cmp    $0x1,%eax
 748:	0f 84 82 00 00 00    	je     7d0 <main+0xf0>
 74e:	7e 70                	jle    7c0 <main+0xe0>
 750:	83 f8 02             	cmp    $0x2,%eax
 753:	0f 84 a7 00 00 00    	je     800 <main+0x120>
 759:	83 f8 03             	cmp    $0x3,%eax
 75c:	0f 85 8e 00 00 00    	jne    7f0 <main+0x110>
 762:	48 8d 3d bc 04 00 00 	lea    0x4bc(%rip),%rdi        # c25 <_IO_stdin_used+0x45>
 769:	e8 12 ff ff ff       	callq  680 <puts@plt>
 76e:	48 8d 53 04          	lea    0x4(%rbx),%rdx
 772:	48 8d 3d 74 04 00 00 	lea    0x474(%rip),%rdi        # bed <_IO_stdin_used+0xd>
 779:	48 89 de             	mov    %rbx,%rsi
 77c:	31 c0                	xor    %eax,%eax
 77e:	e8 2d ff ff ff       	callq  6b0 <__isoc99_scanf@plt>
 783:	48 89 ef             	mov    %rbp,%rdi
 786:	48 89 de             	mov    %rbx,%rsi
 789:	e8 02 02 00 00       	callq  990 <insert>
 78e:	48 89 c5             	mov    %rax,%rbp
 791:	8b 15 7d 18 20 00    	mov    0x20187d(%rip),%edx        # 202014 <n>
 797:	48 8d 35 aa 04 00 00 	lea    0x4aa(%rip),%rsi        # c48 <_IO_stdin_used+0x68>
 79e:	31 c0                	xor    %eax,%eax
 7a0:	bf 01 00 00 00       	mov    $0x1,%edi
 7a5:	e8 f6 fe ff ff       	callq  6a0 <__printf_chk@plt>
 7aa:	48 85 ed             	test   %rbp,%rbp
 7ad:	0f 84 51 ff ff ff    	je     704 <main+0x24>
 7b3:	48 89 ef             	mov    %rbp,%rdi
 7b6:	e8 95 01 00 00       	callq  950 <output.part.0>
 7bb:	e9 44 ff ff ff       	jmpq   704 <main+0x24>
 7c0:	85 c0                	test   %eax,%eax
 7c2:	75 2c                	jne    7f0 <main+0x110>
 7c4:	31 ff                	xor    %edi,%edi
 7c6:	e8 f5 fe ff ff       	callq  6c0 <exit@plt>
 7cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7d0:	48 8d 3d 4e 04 00 00 	lea    0x44e(%rip),%rdi        # c25 <_IO_stdin_used+0x45>
 7d7:	e8 a4 fe ff ff       	callq  680 <puts@plt>
 7dc:	e8 2f 02 00 00       	callq  a10 <create>
 7e1:	48 89 c5             	mov    %rax,%rbp
 7e4:	eb ab                	jmp    791 <main+0xb1>
 7e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7ed:	00 00 00 
 7f0:	48 8d 3d 45 04 00 00 	lea    0x445(%rip),%rdi        # c3c <_IO_stdin_used+0x5c>
 7f7:	e8 84 fe ff ff       	callq  680 <puts@plt>
 7fc:	eb 93                	jmp    791 <main+0xb1>
 7fe:	66 90                	xchg   %ax,%ax
 800:	48 8d 3d b1 04 00 00 	lea    0x4b1(%rip),%rdi        # cb8 <_IO_stdin_used+0xd8>
 807:	e8 74 fe ff ff       	callq  680 <puts@plt>
 80c:	48 8d 3d 0f 04 00 00 	lea    0x40f(%rip),%rdi        # c22 <_IO_stdin_used+0x42>
 813:	4c 89 ee             	mov    %r13,%rsi
 816:	31 c0                	xor    %eax,%eax
 818:	e8 93 fe ff ff       	callq  6b0 <__isoc99_scanf@plt>
 81d:	8b 74 24 04          	mov    0x4(%rsp),%esi
 821:	48 89 ef             	mov    %rbp,%rdi
 824:	e8 77 02 00 00       	callq  aa0 <delect>
 829:	48 89 c5             	mov    %rax,%rbp
 82c:	e9 60 ff ff ff       	jmpq   791 <main+0xb1>
 831:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 838:	00 00 00 
 83b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000840 <_start>:
 840:	31 ed                	xor    %ebp,%ebp
 842:	49 89 d1             	mov    %rdx,%r9
 845:	5e                   	pop    %rsi
 846:	48 89 e2             	mov    %rsp,%rdx
 849:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 84d:	50                   	push   %rax
 84e:	54                   	push   %rsp
 84f:	4c 8d 05 7a 03 00 00 	lea    0x37a(%rip),%r8        # bd0 <__libc_csu_fini>
 856:	48 8d 0d 03 03 00 00 	lea    0x303(%rip),%rcx        # b60 <__libc_csu_init>
 85d:	48 8d 3d 7c fe ff ff 	lea    -0x184(%rip),%rdi        # 6e0 <main>
 864:	ff 15 76 17 20 00    	callq  *0x201776(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 86a:	f4                   	hlt    
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000870 <deregister_tm_clones>:
 870:	48 8d 3d 99 17 20 00 	lea    0x201799(%rip),%rdi        # 202010 <__TMC_END__>
 877:	55                   	push   %rbp
 878:	48 8d 05 91 17 20 00 	lea    0x201791(%rip),%rax        # 202010 <__TMC_END__>
 87f:	48 39 f8             	cmp    %rdi,%rax
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	74 19                	je     8a0 <deregister_tm_clones+0x30>
 887:	48 8b 05 4a 17 20 00 	mov    0x20174a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 88e:	48 85 c0             	test   %rax,%rax
 891:	74 0d                	je     8a0 <deregister_tm_clones+0x30>
 893:	5d                   	pop    %rbp
 894:	ff e0                	jmpq   *%rax
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 
 8a0:	5d                   	pop    %rbp
 8a1:	c3                   	retq   
 8a2:	0f 1f 40 00          	nopl   0x0(%rax)
 8a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ad:	00 00 00 

00000000000008b0 <register_tm_clones>:
 8b0:	48 8d 3d 59 17 20 00 	lea    0x201759(%rip),%rdi        # 202010 <__TMC_END__>
 8b7:	48 8d 35 52 17 20 00 	lea    0x201752(%rip),%rsi        # 202010 <__TMC_END__>
 8be:	55                   	push   %rbp
 8bf:	48 29 fe             	sub    %rdi,%rsi
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	48 c1 fe 03          	sar    $0x3,%rsi
 8c9:	48 89 f0             	mov    %rsi,%rax
 8cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8d0:	48 01 c6             	add    %rax,%rsi
 8d3:	48 d1 fe             	sar    %rsi
 8d6:	74 18                	je     8f0 <register_tm_clones+0x40>
 8d8:	48 8b 05 11 17 20 00 	mov    0x201711(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8df:	48 85 c0             	test   %rax,%rax
 8e2:	74 0c                	je     8f0 <register_tm_clones+0x40>
 8e4:	5d                   	pop    %rbp
 8e5:	ff e0                	jmpq   *%rax
 8e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ee:	00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <__do_global_dtors_aux>:
 900:	80 3d 09 17 20 00 00 	cmpb   $0x0,0x201709(%rip)        # 202010 <__TMC_END__>
 907:	75 2f                	jne    938 <__do_global_dtors_aux+0x38>
 909:	48 83 3d e7 16 20 00 	cmpq   $0x0,0x2016e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 910:	00 
 911:	55                   	push   %rbp
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	74 0c                	je     923 <__do_global_dtors_aux+0x23>
 917:	48 8b 3d ea 16 20 00 	mov    0x2016ea(%rip),%rdi        # 202008 <__dso_handle>
 91e:	e8 ad fd ff ff       	callq  6d0 <__cxa_finalize@plt>
 923:	e8 48 ff ff ff       	callq  870 <deregister_tm_clones>
 928:	c6 05 e1 16 20 00 01 	movb   $0x1,0x2016e1(%rip)        # 202010 <__TMC_END__>
 92f:	5d                   	pop    %rbp
 930:	c3                   	retq   
 931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 938:	f3 c3                	repz retq 
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <frame_dummy>:
 940:	55                   	push   %rbp
 941:	48 89 e5             	mov    %rsp,%rbp
 944:	5d                   	pop    %rbp
 945:	e9 66 ff ff ff       	jmpq   8b0 <register_tm_clones>
 94a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000950 <output.part.0>:
 950:	55                   	push   %rbp
 951:	53                   	push   %rbx
 952:	48 8d 2d 8b 02 00 00 	lea    0x28b(%rip),%rbp        # be4 <_IO_stdin_used+0x4>
 959:	48 89 fb             	mov    %rdi,%rbx
 95c:	48 83 ec 08          	sub    $0x8,%rsp
 960:	66 0f ef c0          	pxor   %xmm0,%xmm0
 964:	8b 13                	mov    (%rbx),%edx
 966:	48 89 ee             	mov    %rbp,%rsi
 969:	bf 01 00 00 00       	mov    $0x1,%edi
 96e:	b8 01 00 00 00       	mov    $0x1,%eax
 973:	f3 0f 5a 43 04       	cvtss2sd 0x4(%rbx),%xmm0
 978:	e8 23 fd ff ff       	callq  6a0 <__printf_chk@plt>
 97d:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
 981:	48 85 db             	test   %rbx,%rbx
 984:	75 da                	jne    960 <output.part.0+0x10>
 986:	48 83 c4 08          	add    $0x8,%rsp
 98a:	5b                   	pop    %rbx
 98b:	5d                   	pop    %rbp
 98c:	c3                   	retq   
 98d:	0f 1f 00             	nopl   (%rax)

0000000000000990 <insert>:
 990:	8b 16                	mov    (%rsi),%edx
 992:	48 89 f8             	mov    %rdi,%rax
 995:	85 d2                	test   %edx,%edx
 997:	74 41                	je     9da <insert+0x4a>
 999:	48 85 ff             	test   %rdi,%rdi
 99c:	48 89 f0             	mov    %rsi,%rax
 99f:	74 32                	je     9d3 <insert+0x43>
 9a1:	3b 17                	cmp    (%rdi),%edx
 9a3:	7c 3b                	jl     9e0 <insert+0x50>
 9a5:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
 9a9:	48 85 c9             	test   %rcx,%rcx
 9ac:	74 42                	je     9f0 <insert+0x60>
 9ae:	3b 11                	cmp    (%rcx),%edx
 9b0:	7f 0d                	jg     9bf <insert+0x2f>
 9b2:	eb 4c                	jmp    a00 <insert+0x70>
 9b4:	0f 1f 40 00          	nopl   0x0(%rax)
 9b8:	3b 10                	cmp    (%rax),%edx
 9ba:	7e 0c                	jle    9c8 <insert+0x38>
 9bc:	48 89 c1             	mov    %rax,%rcx
 9bf:	48 8b 41 08          	mov    0x8(%rcx),%rax
 9c3:	48 85 c0             	test   %rax,%rax
 9c6:	75 f0                	jne    9b8 <insert+0x28>
 9c8:	48 89 46 08          	mov    %rax,0x8(%rsi)
 9cc:	48 89 71 08          	mov    %rsi,0x8(%rcx)
 9d0:	48 89 f8             	mov    %rdi,%rax
 9d3:	83 05 3a 16 20 00 01 	addl   $0x1,0x20163a(%rip)        # 202014 <n>
 9da:	f3 c3                	repz retq 
 9dc:	0f 1f 40 00          	nopl   0x0(%rax)
 9e0:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
 9e4:	83 05 29 16 20 00 01 	addl   $0x1,0x201629(%rip)        # 202014 <n>
 9eb:	eb ed                	jmp    9da <insert+0x4a>
 9ed:	0f 1f 00             	nopl   (%rax)
 9f0:	31 c0                	xor    %eax,%eax
 9f2:	48 89 f9             	mov    %rdi,%rcx
 9f5:	eb d1                	jmp    9c8 <insert+0x38>
 9f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9fe:	00 00 
 a00:	48 89 c8             	mov    %rcx,%rax
 a03:	48 89 f9             	mov    %rdi,%rcx
 a06:	eb c0                	jmp    9c8 <insert+0x38>
 a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a0f:	00 

0000000000000a10 <create>:
 a10:	41 54                	push   %r12
 a12:	55                   	push   %rbp
 a13:	bf 10 00 00 00       	mov    $0x10,%edi
 a18:	53                   	push   %rbx
 a19:	4c 8d 25 cd 01 00 00 	lea    0x1cd(%rip),%r12        # bed <_IO_stdin_used+0xd>
 a20:	31 ed                	xor    %ebp,%ebp
 a22:	e8 69 fc ff ff       	callq  690 <malloc@plt>
 a27:	48 8d 3d bf 01 00 00 	lea    0x1bf(%rip),%rdi        # bed <_IO_stdin_used+0xd>
 a2e:	48 8d 50 04          	lea    0x4(%rax),%rdx
 a32:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 a39:	00 
 a3a:	48 89 c6             	mov    %rax,%rsi
 a3d:	48 89 c3             	mov    %rax,%rbx
 a40:	31 c0                	xor    %eax,%eax
 a42:	e8 69 fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a4e:	00 00 
 a50:	48 89 de             	mov    %rbx,%rsi
 a53:	48 89 ef             	mov    %rbp,%rdi
 a56:	e8 35 ff ff ff       	callq  990 <insert>
 a5b:	bf 10 00 00 00       	mov    $0x10,%edi
 a60:	48 89 c5             	mov    %rax,%rbp
 a63:	e8 28 fc ff ff       	callq  690 <malloc@plt>
 a68:	48 8d 50 04          	lea    0x4(%rax),%rdx
 a6c:	48 89 c3             	mov    %rax,%rbx
 a6f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 a76:	00 
 a77:	48 89 c6             	mov    %rax,%rsi
 a7a:	4c 89 e7             	mov    %r12,%rdi
 a7d:	31 c0                	xor    %eax,%eax
 a7f:	e8 2c fc ff ff       	callq  6b0 <__isoc99_scanf@plt>
 a84:	8b 03                	mov    (%rbx),%eax
 a86:	85 c0                	test   %eax,%eax
 a88:	75 c6                	jne    a50 <create+0x40>
 a8a:	48 89 df             	mov    %rbx,%rdi
 a8d:	e8 de fb ff ff       	callq  670 <free@plt>
 a92:	48 89 e8             	mov    %rbp,%rax
 a95:	5b                   	pop    %rbx
 a96:	5d                   	pop    %rbp
 a97:	41 5c                	pop    %r12
 a99:	c3                   	retq   
 a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000aa0 <delect>:
 aa0:	48 85 ff             	test   %rdi,%rdi
 aa3:	53                   	push   %rbx
 aa4:	0f 84 87 00 00 00    	je     b31 <delect+0x91>
 aaa:	8b 17                	mov    (%rdi),%edx
 aac:	48 89 fb             	mov    %rdi,%rbx
 aaf:	48 8b 47 08          	mov    0x8(%rdi),%rax
 ab3:	48 89 f9             	mov    %rdi,%rcx
 ab6:	31 ff                	xor    %edi,%edi
 ab8:	39 f2                	cmp    %esi,%edx
 aba:	75 10                	jne    acc <delect+0x2c>
 abc:	eb 62                	jmp    b20 <delect+0x80>
 abe:	66 90                	xchg   %ax,%ax
 ac0:	8b 10                	mov    (%rax),%edx
 ac2:	48 89 cf             	mov    %rcx,%rdi
 ac5:	48 89 c1             	mov    %rax,%rcx
 ac8:	48 8b 40 08          	mov    0x8(%rax),%rax
 acc:	39 d6                	cmp    %edx,%esi
 ace:	7e 30                	jle    b00 <delect+0x60>
 ad0:	48 85 c0             	test   %rax,%rax
 ad3:	75 eb                	jne    ac0 <delect+0x20>
 ad5:	48 8d 3d 84 01 00 00 	lea    0x184(%rip),%rdi        # c60 <_IO_stdin_used+0x80>
 adc:	e8 9f fb ff ff       	callq  680 <puts@plt>
 ae1:	8b 05 2d 15 20 00    	mov    0x20152d(%rip),%eax        # 202014 <n>
 ae7:	8d 50 01             	lea    0x1(%rax),%edx
 aea:	48 89 d8             	mov    %rbx,%rax
 aed:	5b                   	pop    %rbx
 aee:	83 ea 01             	sub    $0x1,%edx
 af1:	89 15 1d 15 20 00    	mov    %edx,0x20151d(%rip)        # 202014 <n>
 af7:	c3                   	retq   
 af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 aff:	00 
 b00:	8b 15 0e 15 20 00    	mov    0x20150e(%rip),%edx        # 202014 <n>
 b06:	48 89 47 08          	mov    %rax,0x8(%rdi)
 b0a:	48 89 d8             	mov    %rbx,%rax
 b0d:	83 ea 01             	sub    $0x1,%edx
 b10:	89 15 fe 14 20 00    	mov    %edx,0x2014fe(%rip)        # 202014 <n>
 b16:	5b                   	pop    %rbx
 b17:	c3                   	retq   
 b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b1f:	00 
 b20:	8b 15 ee 14 20 00    	mov    0x2014ee(%rip),%edx        # 202014 <n>
 b26:	5b                   	pop    %rbx
 b27:	83 ea 01             	sub    $0x1,%edx
 b2a:	89 15 e4 14 20 00    	mov    %edx,0x2014e4(%rip)        # 202014 <n>
 b30:	c3                   	retq   
 b31:	48 8d 3d ba 00 00 00 	lea    0xba(%rip),%rdi        # bf2 <_IO_stdin_used+0x12>
 b38:	83 05 d5 14 20 00 01 	addl   $0x1,0x2014d5(%rip)        # 202014 <n>
 b3f:	e8 3c fb ff ff       	callq  680 <puts@plt>
 b44:	8b 15 ca 14 20 00    	mov    0x2014ca(%rip),%edx        # 202014 <n>
 b4a:	31 c0                	xor    %eax,%eax
 b4c:	eb bf                	jmp    b0d <delect+0x6d>
 b4e:	66 90                	xchg   %ax,%ax

0000000000000b50 <output>:
 b50:	48 85 ff             	test   %rdi,%rdi
 b53:	74 05                	je     b5a <output+0xa>
 b55:	e9 f6 fd ff ff       	jmpq   950 <output.part.0>
 b5a:	c3                   	retq   
 b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b60 <__libc_csu_init>:
 b60:	41 57                	push   %r15
 b62:	41 56                	push   %r14
 b64:	49 89 d7             	mov    %rdx,%r15
 b67:	41 55                	push   %r13
 b69:	41 54                	push   %r12
 b6b:	4c 8d 25 1e 12 20 00 	lea    0x20121e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 b72:	55                   	push   %rbp
 b73:	48 8d 2d 1e 12 20 00 	lea    0x20121e(%rip),%rbp        # 201d98 <__init_array_end>
 b7a:	53                   	push   %rbx
 b7b:	41 89 fd             	mov    %edi,%r13d
 b7e:	49 89 f6             	mov    %rsi,%r14
 b81:	4c 29 e5             	sub    %r12,%rbp
 b84:	48 83 ec 08          	sub    $0x8,%rsp
 b88:	48 c1 fd 03          	sar    $0x3,%rbp
 b8c:	e8 b7 fa ff ff       	callq  648 <_init>
 b91:	48 85 ed             	test   %rbp,%rbp
 b94:	74 20                	je     bb6 <__libc_csu_init+0x56>
 b96:	31 db                	xor    %ebx,%ebx
 b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b9f:	00 
 ba0:	4c 89 fa             	mov    %r15,%rdx
 ba3:	4c 89 f6             	mov    %r14,%rsi
 ba6:	44 89 ef             	mov    %r13d,%edi
 ba9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bad:	48 83 c3 01          	add    $0x1,%rbx
 bb1:	48 39 dd             	cmp    %rbx,%rbp
 bb4:	75 ea                	jne    ba0 <__libc_csu_init+0x40>
 bb6:	48 83 c4 08          	add    $0x8,%rsp
 bba:	5b                   	pop    %rbx
 bbb:	5d                   	pop    %rbp
 bbc:	41 5c                	pop    %r12
 bbe:	41 5d                	pop    %r13
 bc0:	41 5e                	pop    %r14
 bc2:	41 5f                	pop    %r15
 bc4:	c3                   	retq   
 bc5:	90                   	nop
 bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bcd:	00 00 00 

0000000000000bd0 <__libc_csu_fini>:
 bd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000bd4 <_fini>:
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 83 c4 08          	add    $0x8,%rsp
 bdc:	c3                   	retq   
