
input/18030021105_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400530 <_init>:
  400530:	48 83 ec 08          	sub    $0x8,%rsp
  400534:	48 8b 05 bd 0a 20 00 	mov    0x200abd(%rip),%rax        # 600ff8 <__gmon_start__>
  40053b:	48 85 c0             	test   %rax,%rax
  40053e:	74 02                	je     400542 <_init+0x12>
  400540:	ff d0                	callq  *%rax
  400542:	48 83 c4 08          	add    $0x8,%rsp
  400546:	c3                   	retq   

Disassembly of section .plt:

0000000000400550 <.plt>:
  400550:	ff 35 b2 0a 20 00    	pushq  0x200ab2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400556:	ff 25 b4 0a 20 00    	jmpq   *0x200ab4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <free@plt>:
  400560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 601018 <free@GLIBC_2.2.5>
  400566:	68 00 00 00 00       	pushq  $0x0
  40056b:	e9 e0 ff ff ff       	jmpq   400550 <.plt>

0000000000400570 <puts@plt>:
  400570:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400576:	68 01 00 00 00       	pushq  $0x1
  40057b:	e9 d0 ff ff ff       	jmpq   400550 <.plt>

0000000000400580 <printf@plt>:
  400580:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 601028 <printf@GLIBC_2.2.5>
  400586:	68 02 00 00 00       	pushq  $0x2
  40058b:	e9 c0 ff ff ff       	jmpq   400550 <.plt>

0000000000400590 <_IO_putc@plt>:
  400590:	ff 25 9a 0a 20 00    	jmpq   *0x200a9a(%rip)        # 601030 <_IO_putc@GLIBC_2.2.5>
  400596:	68 03 00 00 00       	pushq  $0x3
  40059b:	e9 b0 ff ff ff       	jmpq   400550 <.plt>

00000000004005a0 <malloc@plt>:
  4005a0:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601038 <malloc@GLIBC_2.2.5>
  4005a6:	68 04 00 00 00       	pushq  $0x4
  4005ab:	e9 a0 ff ff ff       	jmpq   400550 <.plt>

00000000004005b0 <__isoc99_scanf@plt>:
  4005b0:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 601040 <__isoc99_scanf@GLIBC_2.7>
  4005b6:	68 05 00 00 00       	pushq  $0x5
  4005bb:	e9 90 ff ff ff       	jmpq   400550 <.plt>

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	31 ed                	xor    %ebp,%ebp
  4005c2:	49 89 d1             	mov    %rdx,%r9
  4005c5:	5e                   	pop    %rsi
  4005c6:	48 89 e2             	mov    %rsp,%rdx
  4005c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005cd:	50                   	push   %rax
  4005ce:	54                   	push   %rsp
  4005cf:	49 c7 c0 50 0b 40 00 	mov    $0x400b50,%r8
  4005d6:	48 c7 c1 e0 0a 40 00 	mov    $0x400ae0,%rcx
  4005dd:	48 c7 c7 70 08 40 00 	mov    $0x400870,%rdi
  4005e4:	ff 15 06 0a 20 00    	callq  *0x200a06(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ea:	f4                   	hlt    
  4005eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005f0 <_dl_relocate_static_pie>:
  4005f0:	f3 c3                	repz retq 
  4005f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005f9:	00 00 00 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <deregister_tm_clones>:
  400600:	55                   	push   %rbp
  400601:	b8 58 10 60 00       	mov    $0x601058,%eax
  400606:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	74 17                	je     400628 <deregister_tm_clones+0x28>
  400611:	b8 00 00 00 00       	mov    $0x0,%eax
  400616:	48 85 c0             	test   %rax,%rax
  400619:	74 0d                	je     400628 <deregister_tm_clones+0x28>
  40061b:	5d                   	pop    %rbp
  40061c:	bf 58 10 60 00       	mov    $0x601058,%edi
  400621:	ff e0                	jmpq   *%rax
  400623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <register_tm_clones>:
  400630:	be 58 10 60 00       	mov    $0x601058,%esi
  400635:	55                   	push   %rbp
  400636:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  40063d:	48 89 e5             	mov    %rsp,%rbp
  400640:	48 c1 fe 03          	sar    $0x3,%rsi
  400644:	48 89 f0             	mov    %rsi,%rax
  400647:	48 c1 e8 3f          	shr    $0x3f,%rax
  40064b:	48 01 c6             	add    %rax,%rsi
  40064e:	48 d1 fe             	sar    %rsi
  400651:	74 15                	je     400668 <register_tm_clones+0x38>
  400653:	b8 00 00 00 00       	mov    $0x0,%eax
  400658:	48 85 c0             	test   %rax,%rax
  40065b:	74 0b                	je     400668 <register_tm_clones+0x38>
  40065d:	5d                   	pop    %rbp
  40065e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400663:	ff e0                	jmpq   *%rax
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <__do_global_dtors_aux>:
  400670:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 601060 <completed.7698>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 d7 09 20 00 01 	movb   $0x1,0x2009d7(%rip)        # 601060 <completed.7698>
  400689:	5d                   	pop    %rbp
  40068a:	c3                   	retq   
  40068b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400690:	f3 c3                	repz retq 
  400692:	0f 1f 40 00          	nopl   0x0(%rax)
  400696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40069d:	00 00 00 

00000000004006a0 <frame_dummy>:
  4006a0:	55                   	push   %rbp
  4006a1:	48 89 e5             	mov    %rsp,%rbp
  4006a4:	5d                   	pop    %rbp
  4006a5:	eb 89                	jmp    400630 <register_tm_clones>
  4006a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ae:	00 00 

00000000004006b0 <insert>:
  4006b0:	48 8b 16             	mov    (%rsi),%rdx
  4006b3:	48 3b 17             	cmp    (%rdi),%rdx
  4006b6:	7d 08                	jge    4006c0 <insert+0x10>
  4006b8:	48 89 fa             	mov    %rdi,%rdx
  4006bb:	48 89 f7             	mov    %rsi,%rdi
  4006be:	eb 43                	jmp    400703 <insert+0x53>
  4006c0:	7e 24                	jle    4006e6 <insert+0x36>
  4006c2:	48 89 f8             	mov    %rdi,%rax
  4006c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4006cc:	00 00 00 00 
  4006d0:	48 89 c1             	mov    %rax,%rcx
  4006d3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4006d7:	48 85 c0             	test   %rax,%rax
  4006da:	74 12                	je     4006ee <insert+0x3e>
  4006dc:	48 3b 10             	cmp    (%rax),%rdx
  4006df:	7f ef                	jg     4006d0 <insert+0x20>
  4006e1:	49 89 f0             	mov    %rsi,%r8
  4006e4:	eb 13                	jmp    4006f9 <insert+0x49>
  4006e6:	49 89 f0             	mov    %rsi,%r8
  4006e9:	48 89 f8             	mov    %rdi,%rax
  4006ec:	eb 0b                	jmp    4006f9 <insert+0x49>
  4006ee:	49 89 c8             	mov    %rcx,%r8
  4006f1:	48 89 f0             	mov    %rsi,%rax
  4006f4:	48 89 f1             	mov    %rsi,%rcx
  4006f7:	31 f6                	xor    %esi,%esi
  4006f9:	48 89 f2             	mov    %rsi,%rdx
  4006fc:	49 89 40 10          	mov    %rax,0x10(%r8)
  400700:	48 89 ce             	mov    %rcx,%rsi
  400703:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  400707:	48 89 f8             	mov    %rdi,%rax
  40070a:	c3                   	retq   
  40070b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400710 <del>:
  400710:	41 56                	push   %r14
  400712:	53                   	push   %rbx
  400713:	50                   	push   %rax
  400714:	48 89 fb             	mov    %rdi,%rbx
  400717:	48 39 33             	cmp    %rsi,(%rbx)
  40071a:	75 18                	jne    400734 <del+0x24>
  40071c:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400720:	48 89 df             	mov    %rbx,%rdi
  400723:	e8 38 fe ff ff       	callq  400560 <free@plt>
  400728:	83 05 35 09 20 00 ff 	addl   $0xffffffff,0x200935(%rip)        # 601064 <n>
  40072f:	4c 89 f3             	mov    %r14,%rbx
  400732:	eb 36                	jmp    40076a <del+0x5a>
  400734:	48 89 df             	mov    %rbx,%rdi
  400737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40073e:	00 00 
  400740:	48 89 f8             	mov    %rdi,%rax
  400743:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400747:	48 85 ff             	test   %rdi,%rdi
  40074a:	74 14                	je     400760 <del+0x50>
  40074c:	48 39 37             	cmp    %rsi,(%rdi)
  40074f:	75 ef                	jne    400740 <del+0x30>
  400751:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  400755:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400759:	e8 02 fe ff ff       	callq  400560 <free@plt>
  40075e:	eb 0a                	jmp    40076a <del+0x5a>
  400760:	bf a8 0b 40 00       	mov    $0x400ba8,%edi
  400765:	e8 06 fe ff ff       	callq  400570 <puts@plt>
  40076a:	48 89 d8             	mov    %rbx,%rax
  40076d:	48 83 c4 08          	add    $0x8,%rsp
  400771:	5b                   	pop    %rbx
  400772:	41 5e                	pop    %r14
  400774:	c3                   	retq   
  400775:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40077c:	00 00 00 00 

0000000000400780 <create>:
  400780:	41 57                	push   %r15
  400782:	41 56                	push   %r14
  400784:	53                   	push   %rbx
  400785:	c7 05 d5 08 20 00 00 	movl   $0x0,0x2008d5(%rip)        # 601064 <n>
  40078c:	00 00 00 
  40078f:	bf 18 00 00 00       	mov    $0x18,%edi
  400794:	e8 07 fe ff ff       	callq  4005a0 <malloc@plt>
  400799:	49 89 c7             	mov    %rax,%r15
  40079c:	bf c0 0b 40 00       	mov    $0x400bc0,%edi
  4007a1:	e8 ca fd ff ff       	callq  400570 <puts@plt>
  4007a6:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4007aa:	45 31 f6             	xor    %r14d,%r14d
  4007ad:	bf 64 0b 40 00       	mov    $0x400b64,%edi
  4007b2:	31 c0                	xor    %eax,%eax
  4007b4:	4c 89 fe             	mov    %r15,%rsi
  4007b7:	e8 f4 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007bc:	49 83 3f 00          	cmpq   $0x0,(%r15)
  4007c0:	74 5a                	je     40081c <create+0x9c>
  4007c2:	4c 89 f8             	mov    %r15,%rax
  4007c5:	4c 89 fb             	mov    %r15,%rbx
  4007c8:	31 c9                	xor    %ecx,%ecx
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007d0:	49 89 df             	mov    %rbx,%r15
  4007d3:	8b 15 8b 08 20 00    	mov    0x20088b(%rip),%edx        # 601064 <n>
  4007d9:	8d 72 01             	lea    0x1(%rdx),%esi
  4007dc:	89 35 82 08 20 00    	mov    %esi,0x200882(%rip)        # 601064 <n>
  4007e2:	4d 89 fe             	mov    %r15,%r14
  4007e5:	85 d2                	test   %edx,%edx
  4007e7:	74 07                	je     4007f0 <create+0x70>
  4007e9:	4c 89 78 10          	mov    %r15,0x10(%rax)
  4007ed:	49 89 ce             	mov    %rcx,%r14
  4007f0:	bf 18 00 00 00       	mov    $0x18,%edi
  4007f5:	e8 a6 fd ff ff       	callq  4005a0 <malloc@plt>
  4007fa:	48 89 c3             	mov    %rax,%rbx
  4007fd:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400801:	bf 64 0b 40 00       	mov    $0x400b64,%edi
  400806:	31 c0                	xor    %eax,%eax
  400808:	48 89 de             	mov    %rbx,%rsi
  40080b:	e8 a0 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400810:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400814:	4c 89 f8             	mov    %r15,%rax
  400817:	4c 89 f1             	mov    %r14,%rcx
  40081a:	75 b4                	jne    4007d0 <create+0x50>
  40081c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400823:	00 
  400824:	4c 89 f0             	mov    %r14,%rax
  400827:	5b                   	pop    %rbx
  400828:	41 5e                	pop    %r14
  40082a:	41 5f                	pop    %r15
  40082c:	c3                   	retq   
  40082d:	0f 1f 00             	nopl   (%rax)

0000000000400830 <print>:
  400830:	53                   	push   %rbx
  400831:	48 89 fb             	mov    %rdi,%rbx
  400834:	48 85 db             	test   %rbx,%rbx
  400837:	74 28                	je     400861 <print+0x31>
  400839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400840:	48 8b 33             	mov    (%rbx),%rsi
  400843:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400848:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40084c:	bf 6b 0b 40 00       	mov    $0x400b6b,%edi
  400851:	b0 01                	mov    $0x1,%al
  400853:	e8 28 fd ff ff       	callq  400580 <printf@plt>
  400858:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40085c:	48 85 db             	test   %rbx,%rbx
  40085f:	75 df                	jne    400840 <print+0x10>
  400861:	5b                   	pop    %rbx
  400862:	c3                   	retq   
  400863:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40086a:	84 00 00 00 00 00 

0000000000400870 <main>:
  400870:	41 57                	push   %r15
  400872:	41 56                	push   %r14
  400874:	41 54                	push   %r12
  400876:	53                   	push   %rbx
  400877:	48 83 ec 18          	sub    $0x18,%rsp
  40087b:	e8 00 ff ff ff       	callq  400780 <create>
  400880:	49 89 c4             	mov    %rax,%r12
  400883:	4d 85 e4             	test   %r12,%r12
  400886:	74 29                	je     4008b1 <main+0x41>
  400888:	4c 89 e3             	mov    %r12,%rbx
  40088b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400890:	48 8b 33             	mov    (%rbx),%rsi
  400893:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400898:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40089c:	bf 6b 0b 40 00       	mov    $0x400b6b,%edi
  4008a1:	b0 01                	mov    $0x1,%al
  4008a3:	e8 d8 fc ff ff       	callq  400580 <printf@plt>
  4008a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ac:	48 85 db             	test   %rbx,%rbx
  4008af:	75 df                	jne    400890 <main+0x20>
  4008b1:	bf 75 0b 40 00       	mov    $0x400b75,%edi
  4008b6:	31 c0                	xor    %eax,%eax
  4008b8:	e8 c3 fc ff ff       	callq  400580 <printf@plt>
  4008bd:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  4008c2:	bf 98 0b 40 00       	mov    $0x400b98,%edi
  4008c7:	31 c0                	xor    %eax,%eax
  4008c9:	4c 89 f6             	mov    %r14,%rsi
  4008cc:	e8 df fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4008d1:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  4008d6:	eb 23                	jmp    4008fb <main+0x8b>
  4008d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008df:	00 
  4008e0:	bf 76 0b 40 00       	mov    $0x400b76,%edi
  4008e5:	31 c0                	xor    %eax,%eax
  4008e7:	e8 94 fc ff ff       	callq  400580 <printf@plt>
  4008ec:	bf 98 0b 40 00       	mov    $0x400b98,%edi
  4008f1:	31 c0                	xor    %eax,%eax
  4008f3:	4c 89 f6             	mov    %r14,%rsi
  4008f6:	e8 b5 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4008fb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4008ff:	83 f8 01             	cmp    $0x1,%eax
  400902:	74 1c                	je     400920 <main+0xb0>
  400904:	83 f8 02             	cmp    $0x2,%eax
  400907:	74 67                	je     400970 <main+0x100>
  400909:	85 c0                	test   %eax,%eax
  40090b:	75 d3                	jne    4008e0 <main+0x70>
  40090d:	e9 b5 01 00 00       	jmpq   400ac7 <main+0x257>
  400912:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400919:	1f 84 00 00 00 00 00 
  400920:	bf 9b 0b 40 00       	mov    $0x400b9b,%edi
  400925:	31 c0                	xor    %eax,%eax
  400927:	e8 54 fc ff ff       	callq  400580 <printf@plt>
  40092c:	bf 18 00 00 00       	mov    $0x18,%edi
  400931:	e8 6a fc ff ff       	callq  4005a0 <malloc@plt>
  400936:	48 89 c3             	mov    %rax,%rbx
  400939:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40093d:	bf 64 0b 40 00       	mov    $0x400b64,%edi
  400942:	31 c0                	xor    %eax,%eax
  400944:	48 89 de             	mov    %rbx,%rsi
  400947:	e8 64 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40094c:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400953:	00 
  400954:	48 8b 03             	mov    (%rbx),%rax
  400957:	49 3b 04 24          	cmp    (%r12),%rax
  40095b:	0f 8d 84 00 00 00    	jge    4009e5 <main+0x175>
  400961:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400965:	49 89 dc             	mov    %rbx,%r12
  400968:	e9 13 01 00 00       	jmpq   400a80 <main+0x210>
  40096d:	0f 1f 00             	nopl   (%rax)
  400970:	4d 85 e4             	test   %r12,%r12
  400973:	0f 84 97 00 00 00    	je     400a10 <main+0x1a0>
  400979:	bf 9b 0b 40 00       	mov    $0x400b9b,%edi
  40097e:	31 c0                	xor    %eax,%eax
  400980:	e8 fb fb ff ff       	callq  400580 <printf@plt>
  400985:	bf a4 0b 40 00       	mov    $0x400ba4,%edi
  40098a:	31 c0                	xor    %eax,%eax
  40098c:	4c 89 fe             	mov    %r15,%rsi
  40098f:	e8 1c fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400994:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400999:	49 39 04 24          	cmp    %rax,(%r12)
  40099d:	4c 89 e7             	mov    %r12,%rdi
  4009a0:	75 1e                	jne    4009c0 <main+0x150>
  4009a2:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  4009a7:	4c 89 e7             	mov    %r12,%rdi
  4009aa:	e8 b1 fb ff ff       	callq  400560 <free@plt>
  4009af:	83 05 ae 06 20 00 ff 	addl   $0xffffffff,0x2006ae(%rip)        # 601064 <n>
  4009b6:	49 89 dc             	mov    %rbx,%r12
  4009b9:	4d 85 e4             	test   %r12,%r12
  4009bc:	75 73                	jne    400a31 <main+0x1c1>
  4009be:	eb 5a                	jmp    400a1a <main+0x1aa>
  4009c0:	48 89 f9             	mov    %rdi,%rcx
  4009c3:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  4009c7:	48 85 ff             	test   %rdi,%rdi
  4009ca:	74 56                	je     400a22 <main+0x1b2>
  4009cc:	48 39 07             	cmp    %rax,(%rdi)
  4009cf:	75 ef                	jne    4009c0 <main+0x150>
  4009d1:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4009d5:	48 89 41 10          	mov    %rax,0x10(%rcx)
  4009d9:	e8 82 fb ff ff       	callq  400560 <free@plt>
  4009de:	4d 85 e4             	test   %r12,%r12
  4009e1:	75 4e                	jne    400a31 <main+0x1c1>
  4009e3:	eb 35                	jmp    400a1a <main+0x1aa>
  4009e5:	4c 89 e2             	mov    %r12,%rdx
  4009e8:	7e 17                	jle    400a01 <main+0x191>
  4009ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4009f0:	48 89 d1             	mov    %rdx,%rcx
  4009f3:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4009f7:	48 85 d2             	test   %rdx,%rdx
  4009fa:	74 67                	je     400a63 <main+0x1f3>
  4009fc:	48 3b 02             	cmp    (%rdx),%rax
  4009ff:	7f ef                	jg     4009f0 <main+0x180>
  400a01:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  400a05:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a09:	4d 85 e4             	test   %r12,%r12
  400a0c:	75 72                	jne    400a80 <main+0x210>
  400a0e:	eb 0a                	jmp    400a1a <main+0x1aa>
  400a10:	bf b5 0b 40 00       	mov    $0x400bb5,%edi
  400a15:	e8 56 fb ff ff       	callq  400570 <puts@plt>
  400a1a:	45 31 e4             	xor    %r12d,%r12d
  400a1d:	e9 8f 00 00 00       	jmpq   400ab1 <main+0x241>
  400a22:	bf a8 0b 40 00       	mov    $0x400ba8,%edi
  400a27:	e8 44 fb ff ff       	callq  400570 <puts@plt>
  400a2c:	4d 85 e4             	test   %r12,%r12
  400a2f:	74 e9                	je     400a1a <main+0x1aa>
  400a31:	4c 89 e3             	mov    %r12,%rbx
  400a34:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a3b:	00 00 00 00 00 
  400a40:	48 8b 33             	mov    (%rbx),%rsi
  400a43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a4c:	bf 6b 0b 40 00       	mov    $0x400b6b,%edi
  400a51:	b0 01                	mov    $0x1,%al
  400a53:	e8 28 fb ff ff       	callq  400580 <printf@plt>
  400a58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a5c:	48 85 db             	test   %rbx,%rbx
  400a5f:	75 df                	jne    400a40 <main+0x1d0>
  400a61:	eb 4e                	jmp    400ab1 <main+0x241>
  400a63:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a67:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a6e:	00 
  400a6f:	4d 85 e4             	test   %r12,%r12
  400a72:	74 a6                	je     400a1a <main+0x1aa>
  400a74:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a7b:	00 00 00 00 00 
  400a80:	4c 89 e3             	mov    %r12,%rbx
  400a83:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a8a:	84 00 00 00 00 00 
  400a90:	48 8b 33             	mov    (%rbx),%rsi
  400a93:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a98:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a9c:	bf 6b 0b 40 00       	mov    $0x400b6b,%edi
  400aa1:	b0 01                	mov    $0x1,%al
  400aa3:	e8 d8 fa ff ff       	callq  400580 <printf@plt>
  400aa8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400aac:	48 85 db             	test   %rbx,%rbx
  400aaf:	75 df                	jne    400a90 <main+0x220>
  400ab1:	48 8b 35 a0 05 20 00 	mov    0x2005a0(%rip),%rsi        # 601058 <stdout@@GLIBC_2.2.5>
  400ab8:	bf 0a 00 00 00       	mov    $0xa,%edi
  400abd:	e8 ce fa ff ff       	callq  400590 <_IO_putc@plt>
  400ac2:	e9 19 fe ff ff       	jmpq   4008e0 <main+0x70>
  400ac7:	31 c0                	xor    %eax,%eax
  400ac9:	48 83 c4 18          	add    $0x18,%rsp
  400acd:	5b                   	pop    %rbx
  400ace:	41 5c                	pop    %r12
  400ad0:	41 5e                	pop    %r14
  400ad2:	41 5f                	pop    %r15
  400ad4:	c3                   	retq   
  400ad5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400adc:	00 00 00 
  400adf:	90                   	nop

0000000000400ae0 <__libc_csu_init>:
  400ae0:	41 57                	push   %r15
  400ae2:	41 56                	push   %r14
  400ae4:	49 89 d7             	mov    %rdx,%r15
  400ae7:	41 55                	push   %r13
  400ae9:	41 54                	push   %r12
  400aeb:	4c 8d 25 0e 03 20 00 	lea    0x20030e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400af2:	55                   	push   %rbp
  400af3:	48 8d 2d 0e 03 20 00 	lea    0x20030e(%rip),%rbp        # 600e08 <__init_array_end>
  400afa:	53                   	push   %rbx
  400afb:	41 89 fd             	mov    %edi,%r13d
  400afe:	49 89 f6             	mov    %rsi,%r14
  400b01:	4c 29 e5             	sub    %r12,%rbp
  400b04:	48 83 ec 08          	sub    $0x8,%rsp
  400b08:	48 c1 fd 03          	sar    $0x3,%rbp
  400b0c:	e8 1f fa ff ff       	callq  400530 <_init>
  400b11:	48 85 ed             	test   %rbp,%rbp
  400b14:	74 20                	je     400b36 <__libc_csu_init+0x56>
  400b16:	31 db                	xor    %ebx,%ebx
  400b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b1f:	00 
  400b20:	4c 89 fa             	mov    %r15,%rdx
  400b23:	4c 89 f6             	mov    %r14,%rsi
  400b26:	44 89 ef             	mov    %r13d,%edi
  400b29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b2d:	48 83 c3 01          	add    $0x1,%rbx
  400b31:	48 39 dd             	cmp    %rbx,%rbp
  400b34:	75 ea                	jne    400b20 <__libc_csu_init+0x40>
  400b36:	48 83 c4 08          	add    $0x8,%rsp
  400b3a:	5b                   	pop    %rbx
  400b3b:	5d                   	pop    %rbp
  400b3c:	41 5c                	pop    %r12
  400b3e:	41 5d                	pop    %r13
  400b40:	41 5e                	pop    %r14
  400b42:	41 5f                	pop    %r15
  400b44:	c3                   	retq   
  400b45:	90                   	nop
  400b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b4d:	00 00 00 

0000000000400b50 <__libc_csu_fini>:
  400b50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b54 <_fini>:
  400b54:	48 83 ec 08          	sub    $0x8,%rsp
  400b58:	48 83 c4 08          	add    $0x8,%rsp
  400b5c:	c3                   	retq   
