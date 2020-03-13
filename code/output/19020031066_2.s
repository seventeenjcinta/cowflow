
input/19020031066_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004a8 <_init>:
  4004a8:	48 83 ec 08          	sub    $0x8,%rsp
  4004ac:	48 8b 05 45 0b 20 00 	mov    0x200b45(%rip),%rax        # 600ff8 <__gmon_start__>
  4004b3:	48 85 c0             	test   %rax,%rax
  4004b6:	74 02                	je     4004ba <_init+0x12>
  4004b8:	ff d0                	callq  *%rax
  4004ba:	48 83 c4 08          	add    $0x8,%rsp
  4004be:	c3                   	retq   

Disassembly of section .plt:

00000000004004c0 <.plt>:
  4004c0:	ff 35 42 0b 20 00    	pushq  0x200b42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004c6:	ff 25 44 0b 20 00    	jmpq   *0x200b44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d0 <puts@plt>:
  4004d0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004d6:	68 00 00 00 00       	pushq  $0x0
  4004db:	e9 e0 ff ff ff       	jmpq   4004c0 <.plt>

00000000004004e0 <printf@plt>:
  4004e0:	ff 25 3a 0b 20 00    	jmpq   *0x200b3a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  4004e6:	68 01 00 00 00       	pushq  $0x1
  4004eb:	e9 d0 ff ff ff       	jmpq   4004c0 <.plt>

00000000004004f0 <malloc@plt>:
  4004f0:	ff 25 32 0b 20 00    	jmpq   *0x200b32(%rip)        # 601028 <malloc@GLIBC_2.2.5>
  4004f6:	68 02 00 00 00       	pushq  $0x2
  4004fb:	e9 c0 ff ff ff       	jmpq   4004c0 <.plt>

0000000000400500 <__isoc99_scanf@plt>:
  400500:	ff 25 2a 0b 20 00    	jmpq   *0x200b2a(%rip)        # 601030 <__isoc99_scanf@GLIBC_2.7>
  400506:	68 03 00 00 00       	pushq  $0x3
  40050b:	e9 b0 ff ff ff       	jmpq   4004c0 <.plt>

Disassembly of section .text:

0000000000400510 <_start>:
  400510:	31 ed                	xor    %ebp,%ebp
  400512:	49 89 d1             	mov    %rdx,%r9
  400515:	5e                   	pop    %rsi
  400516:	48 89 e2             	mov    %rsp,%rdx
  400519:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40051d:	50                   	push   %rax
  40051e:	54                   	push   %rsp
  40051f:	49 c7 c0 40 0b 40 00 	mov    $0x400b40,%r8
  400526:	48 c7 c1 d0 0a 40 00 	mov    $0x400ad0,%rcx
  40052d:	48 c7 c7 c0 07 40 00 	mov    $0x4007c0,%rdi
  400534:	ff 15 b6 0a 20 00    	callq  *0x200ab6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40053a:	f4                   	hlt    
  40053b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400540 <_dl_relocate_static_pie>:
  400540:	f3 c3                	repz retq 
  400542:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400549:	00 00 00 
  40054c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400550 <deregister_tm_clones>:
  400550:	55                   	push   %rbp
  400551:	b8 48 10 60 00       	mov    $0x601048,%eax
  400556:	48 3d 48 10 60 00    	cmp    $0x601048,%rax
  40055c:	48 89 e5             	mov    %rsp,%rbp
  40055f:	74 17                	je     400578 <deregister_tm_clones+0x28>
  400561:	b8 00 00 00 00       	mov    $0x0,%eax
  400566:	48 85 c0             	test   %rax,%rax
  400569:	74 0d                	je     400578 <deregister_tm_clones+0x28>
  40056b:	5d                   	pop    %rbp
  40056c:	bf 48 10 60 00       	mov    $0x601048,%edi
  400571:	ff e0                	jmpq   *%rax
  400573:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400578:	5d                   	pop    %rbp
  400579:	c3                   	retq   
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400580 <register_tm_clones>:
  400580:	be 48 10 60 00       	mov    $0x601048,%esi
  400585:	55                   	push   %rbp
  400586:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40058d:	48 89 e5             	mov    %rsp,%rbp
  400590:	48 c1 fe 03          	sar    $0x3,%rsi
  400594:	48 89 f0             	mov    %rsi,%rax
  400597:	48 c1 e8 3f          	shr    $0x3f,%rax
  40059b:	48 01 c6             	add    %rax,%rsi
  40059e:	48 d1 fe             	sar    %rsi
  4005a1:	74 15                	je     4005b8 <register_tm_clones+0x38>
  4005a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a8:	48 85 c0             	test   %rax,%rax
  4005ab:	74 0b                	je     4005b8 <register_tm_clones+0x38>
  4005ad:	5d                   	pop    %rbp
  4005ae:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005b3:	ff e0                	jmpq   *%rax
  4005b5:	0f 1f 00             	nopl   (%rax)
  4005b8:	5d                   	pop    %rbp
  4005b9:	c3                   	retq   
  4005ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005c0 <__do_global_dtors_aux>:
  4005c0:	80 3d 81 0a 20 00 00 	cmpb   $0x0,0x200a81(%rip)        # 601048 <__TMC_END__>
  4005c7:	75 17                	jne    4005e0 <__do_global_dtors_aux+0x20>
  4005c9:	55                   	push   %rbp
  4005ca:	48 89 e5             	mov    %rsp,%rbp
  4005cd:	e8 7e ff ff ff       	callq  400550 <deregister_tm_clones>
  4005d2:	c6 05 6f 0a 20 00 01 	movb   $0x1,0x200a6f(%rip)        # 601048 <__TMC_END__>
  4005d9:	5d                   	pop    %rbp
  4005da:	c3                   	retq   
  4005db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e0:	f3 c3                	repz retq 
  4005e2:	0f 1f 40 00          	nopl   0x0(%rax)
  4005e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ed:	00 00 00 

00000000004005f0 <frame_dummy>:
  4005f0:	55                   	push   %rbp
  4005f1:	48 89 e5             	mov    %rsp,%rbp
  4005f4:	5d                   	pop    %rbp
  4005f5:	eb 89                	jmp    400580 <register_tm_clones>
  4005f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4005fe:	00 00 

0000000000400600 <creat>:
  400600:	41 57                	push   %r15
  400602:	41 56                	push   %r14
  400604:	53                   	push   %rbx
  400605:	c7 05 3d 0a 20 00 00 	movl   $0x0,0x200a3d(%rip)        # 60104c <n>
  40060c:	00 00 00 
  40060f:	bf 18 00 00 00       	mov    $0x18,%edi
  400614:	e8 d7 fe ff ff       	callq  4004f0 <malloc@plt>
  400619:	49 89 c7             	mov    %rax,%r15
  40061c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400620:	45 31 f6             	xor    %r14d,%r14d
  400623:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400628:	31 c0                	xor    %eax,%eax
  40062a:	4c 89 fe             	mov    %r15,%rsi
  40062d:	e8 ce fe ff ff       	callq  400500 <__isoc99_scanf@plt>
  400632:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400636:	74 54                	je     40068c <creat+0x8c>
  400638:	4c 89 f8             	mov    %r15,%rax
  40063b:	4c 89 fb             	mov    %r15,%rbx
  40063e:	31 c9                	xor    %ecx,%ecx
  400640:	49 89 df             	mov    %rbx,%r15
  400643:	8b 15 03 0a 20 00    	mov    0x200a03(%rip),%edx        # 60104c <n>
  400649:	8d 72 01             	lea    0x1(%rdx),%esi
  40064c:	89 35 fa 09 20 00    	mov    %esi,0x2009fa(%rip)        # 60104c <n>
  400652:	4d 89 fe             	mov    %r15,%r14
  400655:	85 d2                	test   %edx,%edx
  400657:	74 07                	je     400660 <creat+0x60>
  400659:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40065d:	49 89 ce             	mov    %rcx,%r14
  400660:	bf 18 00 00 00       	mov    $0x18,%edi
  400665:	e8 86 fe ff ff       	callq  4004f0 <malloc@plt>
  40066a:	48 89 c3             	mov    %rax,%rbx
  40066d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400671:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400676:	31 c0                	xor    %eax,%eax
  400678:	48 89 de             	mov    %rbx,%rsi
  40067b:	e8 80 fe ff ff       	callq  400500 <__isoc99_scanf@plt>
  400680:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400684:	4c 89 f8             	mov    %r15,%rax
  400687:	4c 89 f1             	mov    %r14,%rcx
  40068a:	75 b4                	jne    400640 <creat+0x40>
  40068c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400693:	00 
  400694:	4c 89 f0             	mov    %r14,%rax
  400697:	5b                   	pop    %rbx
  400698:	41 5e                	pop    %r14
  40069a:	41 5f                	pop    %r15
  40069c:	c3                   	retq   
  40069d:	0f 1f 00             	nopl   (%rax)

00000000004006a0 <print>:
  4006a0:	53                   	push   %rbx
  4006a1:	48 89 fb             	mov    %rdi,%rbx
  4006a4:	8b 35 a2 09 20 00    	mov    0x2009a2(%rip),%esi        # 60104c <n>
  4006aa:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  4006af:	31 c0                	xor    %eax,%eax
  4006b1:	e8 2a fe ff ff       	callq  4004e0 <printf@plt>
  4006b6:	48 85 db             	test   %rbx,%rbx
  4006b9:	74 26                	je     4006e1 <print+0x41>
  4006bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006c0:	48 8b 33             	mov    (%rbx),%rsi
  4006c3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006cc:	bf 76 0b 40 00       	mov    $0x400b76,%edi
  4006d1:	b0 01                	mov    $0x1,%al
  4006d3:	e8 08 fe ff ff       	callq  4004e0 <printf@plt>
  4006d8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006dc:	48 85 db             	test   %rbx,%rbx
  4006df:	75 df                	jne    4006c0 <print+0x20>
  4006e1:	5b                   	pop    %rbx
  4006e2:	c3                   	retq   
  4006e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006ea:	84 00 00 00 00 00 

00000000004006f0 <del>:
  4006f0:	53                   	push   %rbx
  4006f1:	48 89 fb             	mov    %rdi,%rbx
  4006f4:	48 85 db             	test   %rbx,%rbx
  4006f7:	74 0b                	je     400704 <del+0x14>
  4006f9:	48 39 33             	cmp    %rsi,(%rbx)
  4006fc:	75 14                	jne    400712 <del+0x22>
  4006fe:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400702:	eb 4d                	jmp    400751 <del+0x61>
  400704:	bf a6 0b 40 00       	mov    $0x400ba6,%edi
  400709:	e8 c2 fd ff ff       	callq  4004d0 <puts@plt>
  40070e:	31 db                	xor    %ebx,%ebx
  400710:	eb 52                	jmp    400764 <del+0x74>
  400712:	48 89 d9             	mov    %rbx,%rcx
  400715:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40071c:	00 00 00 00 
  400720:	48 89 c8             	mov    %rcx,%rax
  400723:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400727:	48 85 c9             	test   %rcx,%rcx
  40072a:	74 14                	je     400740 <del+0x50>
  40072c:	48 39 31             	cmp    %rsi,(%rcx)
  40072f:	75 ef                	jne    400720 <del+0x30>
  400731:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400735:	48 39 d9             	cmp    %rbx,%rcx
  400738:	74 14                	je     40074e <del+0x5e>
  40073a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40073e:	eb 11                	jmp    400751 <del+0x61>
  400740:	bf 8d 0b 40 00       	mov    $0x400b8d,%edi
  400745:	31 c0                	xor    %eax,%eax
  400747:	e8 94 fd ff ff       	callq  4004e0 <printf@plt>
  40074c:	eb 16                	jmp    400764 <del+0x74>
  40074e:	48 89 d3             	mov    %rdx,%rbx
  400751:	bf 81 0b 40 00       	mov    $0x400b81,%edi
  400756:	31 c0                	xor    %eax,%eax
  400758:	e8 83 fd ff ff       	callq  4004e0 <printf@plt>
  40075d:	83 05 e8 08 20 00 ff 	addl   $0xffffffff,0x2008e8(%rip)        # 60104c <n>
  400764:	48 89 d8             	mov    %rbx,%rax
  400767:	5b                   	pop    %rbx
  400768:	c3                   	retq   
  400769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400770 <insert>:
  400770:	48 85 ff             	test   %rdi,%rdi
  400773:	74 27                	je     40079c <insert+0x2c>
  400775:	48 8b 0e             	mov    (%rsi),%rcx
  400778:	48 3b 0f             	cmp    (%rdi),%rcx
  40077b:	7e 23                	jle    4007a0 <insert+0x30>
  40077d:	48 89 f8             	mov    %rdi,%rax
  400780:	48 89 c2             	mov    %rax,%rdx
  400783:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400787:	48 85 c0             	test   %rax,%rax
  40078a:	74 29                	je     4007b5 <insert+0x45>
  40078c:	48 3b 08             	cmp    (%rax),%rcx
  40078f:	7f ef                	jg     400780 <insert+0x10>
  400791:	48 39 f8             	cmp    %rdi,%rax
  400794:	74 0d                	je     4007a3 <insert+0x33>
  400796:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40079a:	eb 0a                	jmp    4007a6 <insert+0x36>
  40079c:	31 c0                	xor    %eax,%eax
  40079e:	eb 03                	jmp    4007a3 <insert+0x33>
  4007a0:	48 89 f8             	mov    %rdi,%rax
  4007a3:	48 89 f7             	mov    %rsi,%rdi
  4007a6:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4007aa:	83 05 9b 08 20 00 01 	addl   $0x1,0x20089b(%rip)        # 60104c <n>
  4007b1:	48 89 f8             	mov    %rdi,%rax
  4007b4:	c3                   	retq   
  4007b5:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007b9:	31 c0                	xor    %eax,%eax
  4007bb:	eb e9                	jmp    4007a6 <insert+0x36>
  4007bd:	0f 1f 00             	nopl   (%rax)

00000000004007c0 <main>:
  4007c0:	41 57                	push   %r15
  4007c2:	41 56                	push   %r14
  4007c4:	53                   	push   %rbx
  4007c5:	48 83 ec 10          	sub    $0x10,%rsp
  4007c9:	bf b2 0b 40 00       	mov    $0x400bb2,%edi
  4007ce:	e8 fd fc ff ff       	callq  4004d0 <puts@plt>
  4007d3:	c7 05 6f 08 20 00 00 	movl   $0x0,0x20086f(%rip)        # 60104c <n>
  4007da:	00 00 00 
  4007dd:	bf 18 00 00 00       	mov    $0x18,%edi
  4007e2:	e8 09 fd ff ff       	callq  4004f0 <malloc@plt>
  4007e7:	49 89 c6             	mov    %rax,%r14
  4007ea:	49 8d 56 08          	lea    0x8(%r14),%rdx
  4007ee:	45 31 ff             	xor    %r15d,%r15d
  4007f1:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  4007f6:	31 c0                	xor    %eax,%eax
  4007f8:	4c 89 f6             	mov    %r14,%rsi
  4007fb:	e8 00 fd ff ff       	callq  400500 <__isoc99_scanf@plt>
  400800:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400804:	74 56                	je     40085c <main+0x9c>
  400806:	4c 89 f0             	mov    %r14,%rax
  400809:	4c 89 f3             	mov    %r14,%rbx
  40080c:	31 c9                	xor    %ecx,%ecx
  40080e:	66 90                	xchg   %ax,%ax
  400810:	49 89 de             	mov    %rbx,%r14
  400813:	8b 15 33 08 20 00    	mov    0x200833(%rip),%edx        # 60104c <n>
  400819:	8d 72 01             	lea    0x1(%rdx),%esi
  40081c:	89 35 2a 08 20 00    	mov    %esi,0x20082a(%rip)        # 60104c <n>
  400822:	4d 89 f7             	mov    %r14,%r15
  400825:	85 d2                	test   %edx,%edx
  400827:	74 07                	je     400830 <main+0x70>
  400829:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40082d:	49 89 cf             	mov    %rcx,%r15
  400830:	bf 18 00 00 00       	mov    $0x18,%edi
  400835:	e8 b6 fc ff ff       	callq  4004f0 <malloc@plt>
  40083a:	48 89 c3             	mov    %rax,%rbx
  40083d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400841:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400846:	31 c0                	xor    %eax,%eax
  400848:	48 89 de             	mov    %rbx,%rsi
  40084b:	e8 b0 fc ff ff       	callq  400500 <__isoc99_scanf@plt>
  400850:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400854:	4c 89 f0             	mov    %r14,%rax
  400857:	4c 89 f9             	mov    %r15,%rcx
  40085a:	75 b4                	jne    400810 <main+0x50>
  40085c:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400863:	00 
  400864:	8b 35 e2 07 20 00    	mov    0x2007e2(%rip),%esi        # 60104c <n>
  40086a:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  40086f:	31 c0                	xor    %eax,%eax
  400871:	e8 6a fc ff ff       	callq  4004e0 <printf@plt>
  400876:	4d 85 ff             	test   %r15,%r15
  400879:	74 26                	je     4008a1 <main+0xe1>
  40087b:	4c 89 fb             	mov    %r15,%rbx
  40087e:	66 90                	xchg   %ax,%ax
  400880:	48 8b 33             	mov    (%rbx),%rsi
  400883:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400888:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40088c:	bf 76 0b 40 00       	mov    $0x400b76,%edi
  400891:	b0 01                	mov    $0x1,%al
  400893:	e8 48 fc ff ff       	callq  4004e0 <printf@plt>
  400898:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40089c:	48 85 db             	test   %rbx,%rbx
  40089f:	75 df                	jne    400880 <main+0xc0>
  4008a1:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  4008a6:	e8 25 fc ff ff       	callq  4004d0 <puts@plt>
  4008ab:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4008b0:	bf a2 0b 40 00       	mov    $0x400ba2,%edi
  4008b5:	31 c0                	xor    %eax,%eax
  4008b7:	e8 44 fc ff ff       	callq  400500 <__isoc99_scanf@plt>
  4008bc:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4008c1:	48 85 f6             	test   %rsi,%rsi
  4008c4:	0f 84 b7 01 00 00    	je     400a81 <main+0x2c1>
  4008ca:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  4008cf:	90                   	nop
  4008d0:	4d 85 ff             	test   %r15,%r15
  4008d3:	74 3b                	je     400910 <main+0x150>
  4008d5:	49 39 37             	cmp    %rsi,(%r15)
  4008d8:	4c 89 f8             	mov    %r15,%rax
  4008db:	75 13                	jne    4008f0 <main+0x130>
  4008dd:	4d 8b 7f 10          	mov    0x10(%r15),%r15
  4008e1:	eb 6d                	jmp    400950 <main+0x190>
  4008e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ea:	84 00 00 00 00 00 
  4008f0:	48 89 c1             	mov    %rax,%rcx
  4008f3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4008f7:	48 85 c0             	test   %rax,%rax
  4008fa:	74 35                	je     400931 <main+0x171>
  4008fc:	48 39 30             	cmp    %rsi,(%rax)
  4008ff:	75 ef                	jne    4008f0 <main+0x130>
  400901:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400905:	4c 39 f8             	cmp    %r15,%rax
  400908:	74 3b                	je     400945 <main+0x185>
  40090a:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  40090e:	eb 40                	jmp    400950 <main+0x190>
  400910:	bf a6 0b 40 00       	mov    $0x400ba6,%edi
  400915:	e8 b6 fb ff ff       	callq  4004d0 <puts@plt>
  40091a:	8b 35 2c 07 20 00    	mov    0x20072c(%rip),%esi        # 60104c <n>
  400920:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  400925:	31 c0                	xor    %eax,%eax
  400927:	e8 b4 fb ff ff       	callq  4004e0 <printf@plt>
  40092c:	e9 7f 00 00 00       	jmpq   4009b0 <main+0x1f0>
  400931:	bf 8d 0b 40 00       	mov    $0x400b8d,%edi
  400936:	31 c0                	xor    %eax,%eax
  400938:	e8 a3 fb ff ff       	callq  4004e0 <printf@plt>
  40093d:	8b 35 09 07 20 00    	mov    0x200709(%rip),%esi        # 60104c <n>
  400943:	eb 26                	jmp    40096b <main+0x1ab>
  400945:	49 89 d7             	mov    %rdx,%r15
  400948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40094f:	00 
  400950:	bf 81 0b 40 00       	mov    $0x400b81,%edi
  400955:	31 c0                	xor    %eax,%eax
  400957:	e8 84 fb ff ff       	callq  4004e0 <printf@plt>
  40095c:	8b 35 ea 06 20 00    	mov    0x2006ea(%rip),%esi        # 60104c <n>
  400962:	83 c6 ff             	add    $0xffffffff,%esi
  400965:	89 35 e1 06 20 00    	mov    %esi,0x2006e1(%rip)        # 60104c <n>
  40096b:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  400970:	31 c0                	xor    %eax,%eax
  400972:	e8 69 fb ff ff       	callq  4004e0 <printf@plt>
  400977:	4d 85 ff             	test   %r15,%r15
  40097a:	74 34                	je     4009b0 <main+0x1f0>
  40097c:	4c 89 fb             	mov    %r15,%rbx
  40097f:	90                   	nop
  400980:	48 8b 33             	mov    (%rbx),%rsi
  400983:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400988:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40098c:	bf 76 0b 40 00       	mov    $0x400b76,%edi
  400991:	b0 01                	mov    $0x1,%al
  400993:	e8 48 fb ff ff       	callq  4004e0 <printf@plt>
  400998:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40099c:	48 85 db             	test   %rbx,%rbx
  40099f:	75 df                	jne    400980 <main+0x1c0>
  4009a1:	eb 10                	jmp    4009b3 <main+0x1f3>
  4009a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009aa:	84 00 00 00 00 00 
  4009b0:	45 31 ff             	xor    %r15d,%r15d
  4009b3:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  4009b8:	e8 13 fb ff ff       	callq  4004d0 <puts@plt>
  4009bd:	bf a2 0b 40 00       	mov    $0x400ba2,%edi
  4009c2:	31 c0                	xor    %eax,%eax
  4009c4:	4c 89 f6             	mov    %r14,%rsi
  4009c7:	e8 34 fb ff ff       	callq  400500 <__isoc99_scanf@plt>
  4009cc:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4009d1:	48 85 f6             	test   %rsi,%rsi
  4009d4:	0f 85 f6 fe ff ff    	jne    4008d0 <main+0x110>
  4009da:	e9 a2 00 00 00       	jmpq   400a81 <main+0x2c1>
  4009df:	90                   	nop
  4009e0:	4d 85 ff             	test   %r15,%r15
  4009e3:	74 2b                	je     400a10 <main+0x250>
  4009e5:	4c 89 f9             	mov    %r15,%rcx
  4009e8:	49 3b 07             	cmp    (%r15),%rax
  4009eb:	7e 33                	jle    400a20 <main+0x260>
  4009ed:	0f 1f 00             	nopl   (%rax)
  4009f0:	48 89 ca             	mov    %rcx,%rdx
  4009f3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4009f7:	48 85 c9             	test   %rcx,%rcx
  4009fa:	74 2c                	je     400a28 <main+0x268>
  4009fc:	48 3b 01             	cmp    (%rcx),%rax
  4009ff:	7f ef                	jg     4009f0 <main+0x230>
  400a01:	4c 39 f9             	cmp    %r15,%rcx
  400a04:	74 1a                	je     400a20 <main+0x260>
  400a06:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  400a0a:	eb 24                	jmp    400a30 <main+0x270>
  400a0c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a10:	31 c9                	xor    %ecx,%ecx
  400a12:	49 89 df             	mov    %rbx,%r15
  400a15:	eb 19                	jmp    400a30 <main+0x270>
  400a17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a1e:	00 00 
  400a20:	4c 89 f9             	mov    %r15,%rcx
  400a23:	49 89 df             	mov    %rbx,%r15
  400a26:	eb 08                	jmp    400a30 <main+0x270>
  400a28:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  400a2c:	31 c9                	xor    %ecx,%ecx
  400a2e:	66 90                	xchg   %ax,%ax
  400a30:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400a34:	8b 35 12 06 20 00    	mov    0x200612(%rip),%esi        # 60104c <n>
  400a3a:	83 c6 01             	add    $0x1,%esi
  400a3d:	89 35 09 06 20 00    	mov    %esi,0x200609(%rip)        # 60104c <n>
  400a43:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  400a48:	31 c0                	xor    %eax,%eax
  400a4a:	e8 91 fa ff ff       	callq  4004e0 <printf@plt>
  400a4f:	4d 85 ff             	test   %r15,%r15
  400a52:	74 2d                	je     400a81 <main+0x2c1>
  400a54:	4c 89 fb             	mov    %r15,%rbx
  400a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a5e:	00 00 
  400a60:	48 8b 33             	mov    (%rbx),%rsi
  400a63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a6c:	bf 76 0b 40 00       	mov    $0x400b76,%edi
  400a71:	b0 01                	mov    $0x1,%al
  400a73:	e8 68 fa ff ff       	callq  4004e0 <printf@plt>
  400a78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a7c:	48 85 db             	test   %rbx,%rbx
  400a7f:	75 df                	jne    400a60 <main+0x2a0>
  400a81:	bf c0 0b 40 00       	mov    $0x400bc0,%edi
  400a86:	e8 45 fa ff ff       	callq  4004d0 <puts@plt>
  400a8b:	bf 18 00 00 00       	mov    $0x18,%edi
  400a90:	e8 5b fa ff ff       	callq  4004f0 <malloc@plt>
  400a95:	48 89 c3             	mov    %rax,%rbx
  400a98:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a9c:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400aa1:	31 c0                	xor    %eax,%eax
  400aa3:	48 89 de             	mov    %rbx,%rsi
  400aa6:	e8 55 fa ff ff       	callq  400500 <__isoc99_scanf@plt>
  400aab:	48 8b 03             	mov    (%rbx),%rax
  400aae:	48 85 c0             	test   %rax,%rax
  400ab1:	0f 85 29 ff ff ff    	jne    4009e0 <main+0x220>
  400ab7:	31 c0                	xor    %eax,%eax
  400ab9:	48 83 c4 10          	add    $0x10,%rsp
  400abd:	5b                   	pop    %rbx
  400abe:	41 5e                	pop    %r14
  400ac0:	41 5f                	pop    %r15
  400ac2:	c3                   	retq   
  400ac3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aca:	00 00 00 
  400acd:	0f 1f 00             	nopl   (%rax)

0000000000400ad0 <__libc_csu_init>:
  400ad0:	41 57                	push   %r15
  400ad2:	41 56                	push   %r14
  400ad4:	49 89 d7             	mov    %rdx,%r15
  400ad7:	41 55                	push   %r13
  400ad9:	41 54                	push   %r12
  400adb:	4c 8d 25 1e 03 20 00 	lea    0x20031e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400ae2:	55                   	push   %rbp
  400ae3:	48 8d 2d 1e 03 20 00 	lea    0x20031e(%rip),%rbp        # 600e08 <__init_array_end>
  400aea:	53                   	push   %rbx
  400aeb:	41 89 fd             	mov    %edi,%r13d
  400aee:	49 89 f6             	mov    %rsi,%r14
  400af1:	4c 29 e5             	sub    %r12,%rbp
  400af4:	48 83 ec 08          	sub    $0x8,%rsp
  400af8:	48 c1 fd 03          	sar    $0x3,%rbp
  400afc:	e8 a7 f9 ff ff       	callq  4004a8 <_init>
  400b01:	48 85 ed             	test   %rbp,%rbp
  400b04:	74 20                	je     400b26 <__libc_csu_init+0x56>
  400b06:	31 db                	xor    %ebx,%ebx
  400b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b0f:	00 
  400b10:	4c 89 fa             	mov    %r15,%rdx
  400b13:	4c 89 f6             	mov    %r14,%rsi
  400b16:	44 89 ef             	mov    %r13d,%edi
  400b19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b1d:	48 83 c3 01          	add    $0x1,%rbx
  400b21:	48 39 dd             	cmp    %rbx,%rbp
  400b24:	75 ea                	jne    400b10 <__libc_csu_init+0x40>
  400b26:	48 83 c4 08          	add    $0x8,%rsp
  400b2a:	5b                   	pop    %rbx
  400b2b:	5d                   	pop    %rbp
  400b2c:	41 5c                	pop    %r12
  400b2e:	41 5d                	pop    %r13
  400b30:	41 5e                	pop    %r14
  400b32:	41 5f                	pop    %r15
  400b34:	c3                   	retq   
  400b35:	90                   	nop
  400b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b3d:	00 00 00 

0000000000400b40 <__libc_csu_fini>:
  400b40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b44 <_fini>:
  400b44:	48 83 ec 08          	sub    $0x8,%rsp
  400b48:	48 83 c4 08          	add    $0x8,%rsp
  400b4c:	c3                   	retq   
