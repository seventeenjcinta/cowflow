
c/19020031122_2.elf:     file format elf64-x86-64


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
  40051f:	49 c7 c0 f0 0a 40 00 	mov    $0x400af0,%r8
  400526:	48 c7 c1 80 0a 40 00 	mov    $0x400a80,%rcx
  40052d:	48 c7 c7 00 06 40 00 	mov    $0x400600,%rdi
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

0000000000400600 <main>:
  400600:	55                   	push   %rbp
  400601:	41 57                	push   %r15
  400603:	41 56                	push   %r14
  400605:	41 55                	push   %r13
  400607:	41 54                	push   %r12
  400609:	53                   	push   %rbx
  40060a:	48 83 ec 28          	sub    $0x28,%rsp
  40060e:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  400613:	e8 b8 fe ff ff       	callq  4004d0 <puts@plt>
  400618:	e8 b3 03 00 00       	callq  4009d0 <creat>
  40061d:	49 89 c6             	mov    %rax,%r14
  400620:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  400625:	e8 a6 fe ff ff       	callq  4004d0 <puts@plt>
  40062a:	4d 85 f6             	test   %r14,%r14
  40062d:	74 32                	je     400661 <main+0x61>
  40062f:	4c 89 f3             	mov    %r14,%rbx
  400632:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400639:	1f 84 00 00 00 00 00 
  400640:	48 8b 33             	mov    (%rbx),%rsi
  400643:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400648:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40064c:	bf 7d 0b 40 00       	mov    $0x400b7d,%edi
  400651:	b0 01                	mov    $0x1,%al
  400653:	e8 88 fe ff ff       	callq  4004e0 <printf@plt>
  400658:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40065c:	48 85 db             	test   %rbx,%rbx
  40065f:	75 df                	jne    400640 <main+0x40>
  400661:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400666:	e8 65 fe ff ff       	callq  4004d0 <puts@plt>
  40066b:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
  400670:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400675:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
  40067a:	eb 07                	jmp    400683 <main+0x83>
  40067c:	0f 1f 40 00          	nopl   0x0(%rax)
  400680:	49 89 ee             	mov    %rbp,%r14
  400683:	bf f0 0b 40 00       	mov    $0x400bf0,%edi
  400688:	e8 43 fe ff ff       	callq  4004d0 <puts@plt>
  40068d:	bf 04 0b 40 00       	mov    $0x400b04,%edi
  400692:	31 c0                	xor    %eax,%eax
  400694:	4c 89 ee             	mov    %r13,%rsi
  400697:	e8 64 fe ff ff       	callq  400500 <__isoc99_scanf@plt>
  40069c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4006a0:	83 f8 02             	cmp    $0x2,%eax
  4006a3:	74 7b                	je     400720 <main+0x120>
  4006a5:	83 f8 01             	cmp    $0x1,%eax
  4006a8:	0f 85 ec 01 00 00    	jne    40089a <main+0x29a>
  4006ae:	bf 07 0b 40 00       	mov    $0x400b07,%edi
  4006b3:	31 c0                	xor    %eax,%eax
  4006b5:	e8 26 fe ff ff       	callq  4004e0 <printf@plt>
  4006ba:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  4006bf:	31 c0                	xor    %eax,%eax
  4006c1:	4c 89 e6             	mov    %r12,%rsi
  4006c4:	e8 37 fe ff ff       	callq  400500 <__isoc99_scanf@plt>
  4006c9:	4d 85 f6             	test   %r14,%r14
  4006cc:	0f 84 ba 00 00 00    	je     40078c <main+0x18c>
  4006d2:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4006d7:	49 39 36             	cmp    %rsi,(%r14)
  4006da:	4c 89 f0             	mov    %r14,%rax
  4006dd:	75 11                	jne    4006f0 <main+0xf0>
  4006df:	4d 8b 76 10          	mov    0x10(%r14),%r14
  4006e3:	e9 48 01 00 00       	jmpq   400830 <main+0x230>
  4006e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006ef:	00 
  4006f0:	48 89 c1             	mov    %rax,%rcx
  4006f3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4006f7:	48 85 c0             	test   %rax,%rax
  4006fa:	0f 84 b7 00 00 00    	je     4007b7 <main+0x1b7>
  400700:	48 39 30             	cmp    %rsi,(%rax)
  400703:	75 eb                	jne    4006f0 <main+0xf0>
  400705:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400709:	4c 39 f0             	cmp    %r14,%rax
  40070c:	0f 84 14 01 00 00    	je     400826 <main+0x226>
  400712:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400716:	e9 15 01 00 00       	jmpq   400830 <main+0x230>
  40071b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400720:	bf 24 0b 40 00       	mov    $0x400b24,%edi
  400725:	31 c0                	xor    %eax,%eax
  400727:	e8 b4 fd ff ff       	callq  4004e0 <printf@plt>
  40072c:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  400731:	31 c0                	xor    %eax,%eax
  400733:	4c 89 fe             	mov    %r15,%rsi
  400736:	e8 c5 fd ff ff       	callq  400500 <__isoc99_scanf@plt>
  40073b:	bf 3d 0b 40 00       	mov    $0x400b3d,%edi
  400740:	31 c0                	xor    %eax,%eax
  400742:	e8 99 fd ff ff       	callq  4004e0 <printf@plt>
  400747:	bf 5a 0b 40 00       	mov    $0x400b5a,%edi
  40074c:	31 c0                	xor    %eax,%eax
  40074e:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  400753:	e8 a8 fd ff ff       	callq  400500 <__isoc99_scanf@plt>
  400758:	4d 85 f6             	test   %r14,%r14
  40075b:	74 4b                	je     4007a8 <main+0x1a8>
  40075d:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  400762:	4c 89 f0             	mov    %r14,%rax
  400765:	49 3b 16             	cmp    (%r14),%rdx
  400768:	7e 45                	jle    4007af <main+0x1af>
  40076a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400770:	48 89 c1             	mov    %rax,%rcx
  400773:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400777:	48 85 c0             	test   %rax,%rax
  40077a:	74 49                	je     4007c5 <main+0x1c5>
  40077c:	48 3b 10             	cmp    (%rax),%rdx
  40077f:	7f ef                	jg     400770 <main+0x170>
  400781:	4c 39 f0             	cmp    %r14,%rax
  400784:	74 29                	je     4007af <main+0x1af>
  400786:	4c 89 79 10          	mov    %r15,0x10(%rcx)
  40078a:	eb 3f                	jmp    4007cb <main+0x1cb>
  40078c:	bf 95 0b 40 00       	mov    $0x400b95,%edi
  400791:	e8 3a fd ff ff       	callq  4004d0 <puts@plt>
  400796:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  40079b:	e8 30 fd ff ff       	callq  4004d0 <puts@plt>
  4007a0:	45 31 f6             	xor    %r14d,%r14d
  4007a3:	e9 db fe ff ff       	jmpq   400683 <main+0x83>
  4007a8:	31 c0                	xor    %eax,%eax
  4007aa:	4c 89 fd             	mov    %r15,%rbp
  4007ad:	eb 1f                	jmp    4007ce <main+0x1ce>
  4007af:	4c 89 f0             	mov    %r14,%rax
  4007b2:	4c 89 fd             	mov    %r15,%rbp
  4007b5:	eb 17                	jmp    4007ce <main+0x1ce>
  4007b7:	bf 68 0b 40 00       	mov    $0x400b68,%edi
  4007bc:	31 c0                	xor    %eax,%eax
  4007be:	e8 1d fd ff ff       	callq  4004e0 <printf@plt>
  4007c3:	eb 7e                	jmp    400843 <main+0x243>
  4007c5:	4c 89 79 10          	mov    %r15,0x10(%rcx)
  4007c9:	31 c0                	xor    %eax,%eax
  4007cb:	4c 89 f5             	mov    %r14,%rbp
  4007ce:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4007d3:	83 05 72 08 20 00 01 	addl   $0x1,0x200872(%rip)        # 60104c <n>
  4007da:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  4007df:	e8 ec fc ff ff       	callq  4004d0 <puts@plt>
  4007e4:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4007ea:	48 85 ed             	test   %rbp,%rbp
  4007ed:	0f 84 90 fe ff ff    	je     400683 <main+0x83>
  4007f3:	48 89 eb             	mov    %rbp,%rbx
  4007f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007fd:	00 00 00 
  400800:	48 8b 33             	mov    (%rbx),%rsi
  400803:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400808:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40080c:	bf 7d 0b 40 00       	mov    $0x400b7d,%edi
  400811:	b0 01                	mov    $0x1,%al
  400813:	e8 c8 fc ff ff       	callq  4004e0 <printf@plt>
  400818:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40081c:	48 85 db             	test   %rbx,%rbx
  40081f:	75 df                	jne    400800 <main+0x200>
  400821:	e9 5a fe ff ff       	jmpq   400680 <main+0x80>
  400826:	49 89 d6             	mov    %rdx,%r14
  400829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400830:	bf 5d 0b 40 00       	mov    $0x400b5d,%edi
  400835:	31 c0                	xor    %eax,%eax
  400837:	e8 a4 fc ff ff       	callq  4004e0 <printf@plt>
  40083c:	83 05 09 08 20 00 ff 	addl   $0xffffffff,0x200809(%rip)        # 60104c <n>
  400843:	4c 89 f3             	mov    %r14,%rbx
  400846:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  40084b:	e8 80 fc ff ff       	callq  4004d0 <puts@plt>
  400850:	41 be 00 00 00 00    	mov    $0x0,%r14d
  400856:	48 85 db             	test   %rbx,%rbx
  400859:	0f 84 24 fe ff ff    	je     400683 <main+0x83>
  40085f:	48 89 dd             	mov    %rbx,%rbp
  400862:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400869:	1f 84 00 00 00 00 00 
  400870:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400874:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400879:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40087d:	bf 7d 0b 40 00       	mov    $0x400b7d,%edi
  400882:	b0 01                	mov    $0x1,%al
  400884:	e8 57 fc ff ff       	callq  4004e0 <printf@plt>
  400889:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  40088d:	48 85 ed             	test   %rbp,%rbp
  400890:	75 de                	jne    400870 <main+0x270>
  400892:	49 89 de             	mov    %rbx,%r14
  400895:	e9 e9 fd ff ff       	jmpq   400683 <main+0x83>
  40089a:	31 c0                	xor    %eax,%eax
  40089c:	48 83 c4 28          	add    $0x28,%rsp
  4008a0:	5b                   	pop    %rbx
  4008a1:	41 5c                	pop    %r12
  4008a3:	41 5d                	pop    %r13
  4008a5:	41 5e                	pop    %r14
  4008a7:	41 5f                	pop    %r15
  4008a9:	5d                   	pop    %rbp
  4008aa:	c3                   	retq   
  4008ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004008b0 <print>:
  4008b0:	53                   	push   %rbx
  4008b1:	48 89 fb             	mov    %rdi,%rbx
  4008b4:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  4008b9:	e8 12 fc ff ff       	callq  4004d0 <puts@plt>
  4008be:	48 85 db             	test   %rbx,%rbx
  4008c1:	74 2e                	je     4008f1 <print+0x41>
  4008c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ca:	84 00 00 00 00 00 
  4008d0:	48 8b 33             	mov    (%rbx),%rsi
  4008d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008dc:	bf 7d 0b 40 00       	mov    $0x400b7d,%edi
  4008e1:	b0 01                	mov    $0x1,%al
  4008e3:	e8 f8 fb ff ff       	callq  4004e0 <printf@plt>
  4008e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ec:	48 85 db             	test   %rbx,%rbx
  4008ef:	75 df                	jne    4008d0 <print+0x20>
  4008f1:	5b                   	pop    %rbx
  4008f2:	c3                   	retq   
  4008f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008fa:	84 00 00 00 00 00 

0000000000400900 <del>:
  400900:	53                   	push   %rbx
  400901:	48 89 fb             	mov    %rdi,%rbx
  400904:	48 85 db             	test   %rbx,%rbx
  400907:	74 0b                	je     400914 <del+0x14>
  400909:	48 39 33             	cmp    %rsi,(%rbx)
  40090c:	75 14                	jne    400922 <del+0x22>
  40090e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400912:	eb 4d                	jmp    400961 <del+0x61>
  400914:	bf 95 0b 40 00       	mov    $0x400b95,%edi
  400919:	e8 b2 fb ff ff       	callq  4004d0 <puts@plt>
  40091e:	31 db                	xor    %ebx,%ebx
  400920:	eb 52                	jmp    400974 <del+0x74>
  400922:	48 89 d9             	mov    %rbx,%rcx
  400925:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40092c:	00 00 00 00 
  400930:	48 89 c8             	mov    %rcx,%rax
  400933:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400937:	48 85 c9             	test   %rcx,%rcx
  40093a:	74 14                	je     400950 <del+0x50>
  40093c:	48 39 31             	cmp    %rsi,(%rcx)
  40093f:	75 ef                	jne    400930 <del+0x30>
  400941:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400945:	48 39 d9             	cmp    %rbx,%rcx
  400948:	74 14                	je     40095e <del+0x5e>
  40094a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40094e:	eb 11                	jmp    400961 <del+0x61>
  400950:	bf 68 0b 40 00       	mov    $0x400b68,%edi
  400955:	31 c0                	xor    %eax,%eax
  400957:	e8 84 fb ff ff       	callq  4004e0 <printf@plt>
  40095c:	eb 16                	jmp    400974 <del+0x74>
  40095e:	48 89 d3             	mov    %rdx,%rbx
  400961:	bf 5d 0b 40 00       	mov    $0x400b5d,%edi
  400966:	31 c0                	xor    %eax,%eax
  400968:	e8 73 fb ff ff       	callq  4004e0 <printf@plt>
  40096d:	83 05 d8 06 20 00 ff 	addl   $0xffffffff,0x2006d8(%rip)        # 60104c <n>
  400974:	48 89 d8             	mov    %rbx,%rax
  400977:	5b                   	pop    %rbx
  400978:	c3                   	retq   
  400979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400980 <insert>:
  400980:	48 85 ff             	test   %rdi,%rdi
  400983:	74 27                	je     4009ac <insert+0x2c>
  400985:	48 8b 0e             	mov    (%rsi),%rcx
  400988:	48 3b 0f             	cmp    (%rdi),%rcx
  40098b:	7e 23                	jle    4009b0 <insert+0x30>
  40098d:	48 89 f8             	mov    %rdi,%rax
  400990:	48 89 c2             	mov    %rax,%rdx
  400993:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400997:	48 85 c0             	test   %rax,%rax
  40099a:	74 29                	je     4009c5 <insert+0x45>
  40099c:	48 3b 08             	cmp    (%rax),%rcx
  40099f:	7f ef                	jg     400990 <insert+0x10>
  4009a1:	48 39 f8             	cmp    %rdi,%rax
  4009a4:	74 0d                	je     4009b3 <insert+0x33>
  4009a6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4009aa:	eb 0a                	jmp    4009b6 <insert+0x36>
  4009ac:	31 c0                	xor    %eax,%eax
  4009ae:	eb 03                	jmp    4009b3 <insert+0x33>
  4009b0:	48 89 f8             	mov    %rdi,%rax
  4009b3:	48 89 f7             	mov    %rsi,%rdi
  4009b6:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4009ba:	83 05 8b 06 20 00 01 	addl   $0x1,0x20068b(%rip)        # 60104c <n>
  4009c1:	48 89 f8             	mov    %rdi,%rax
  4009c4:	c3                   	retq   
  4009c5:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4009c9:	31 c0                	xor    %eax,%eax
  4009cb:	eb e9                	jmp    4009b6 <insert+0x36>
  4009cd:	0f 1f 00             	nopl   (%rax)

00000000004009d0 <creat>:
  4009d0:	41 57                	push   %r15
  4009d2:	41 56                	push   %r14
  4009d4:	53                   	push   %rbx
  4009d5:	c7 05 6d 06 20 00 00 	movl   $0x0,0x20066d(%rip)        # 60104c <n>
  4009dc:	00 00 00 
  4009df:	bf 18 00 00 00       	mov    $0x18,%edi
  4009e4:	e8 07 fb ff ff       	callq  4004f0 <malloc@plt>
  4009e9:	49 89 c7             	mov    %rax,%r15
  4009ec:	bf 9e 0b 40 00       	mov    $0x400b9e,%edi
  4009f1:	e8 da fa ff ff       	callq  4004d0 <puts@plt>
  4009f6:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4009fa:	45 31 f6             	xor    %r14d,%r14d
  4009fd:	bf 56 0b 40 00       	mov    $0x400b56,%edi
  400a02:	31 c0                	xor    %eax,%eax
  400a04:	4c 89 fe             	mov    %r15,%rsi
  400a07:	e8 f4 fa ff ff       	callq  400500 <__isoc99_scanf@plt>
  400a0c:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400a10:	74 5a                	je     400a6c <creat+0x9c>
  400a12:	4c 89 f8             	mov    %r15,%rax
  400a15:	4c 89 fb             	mov    %r15,%rbx
  400a18:	31 c9                	xor    %ecx,%ecx
  400a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a20:	49 89 df             	mov    %rbx,%r15
  400a23:	8b 15 23 06 20 00    	mov    0x200623(%rip),%edx        # 60104c <n>
  400a29:	8d 72 01             	lea    0x1(%rdx),%esi
  400a2c:	89 35 1a 06 20 00    	mov    %esi,0x20061a(%rip)        # 60104c <n>
  400a32:	4d 89 fe             	mov    %r15,%r14
  400a35:	85 d2                	test   %edx,%edx
  400a37:	74 07                	je     400a40 <creat+0x70>
  400a39:	4c 89 78 10          	mov    %r15,0x10(%rax)
  400a3d:	49 89 ce             	mov    %rcx,%r14
  400a40:	bf 18 00 00 00       	mov    $0x18,%edi
  400a45:	e8 a6 fa ff ff       	callq  4004f0 <malloc@plt>
  400a4a:	48 89 c3             	mov    %rax,%rbx
  400a4d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a51:	bf 56 0b 40 00       	mov    $0x400b56,%edi
  400a56:	31 c0                	xor    %eax,%eax
  400a58:	48 89 de             	mov    %rbx,%rsi
  400a5b:	e8 a0 fa ff ff       	callq  400500 <__isoc99_scanf@plt>
  400a60:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400a64:	4c 89 f8             	mov    %r15,%rax
  400a67:	4c 89 f1             	mov    %r14,%rcx
  400a6a:	75 b4                	jne    400a20 <creat+0x50>
  400a6c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400a73:	00 
  400a74:	4c 89 f0             	mov    %r14,%rax
  400a77:	5b                   	pop    %rbx
  400a78:	41 5e                	pop    %r14
  400a7a:	41 5f                	pop    %r15
  400a7c:	c3                   	retq   
  400a7d:	0f 1f 00             	nopl   (%rax)

0000000000400a80 <__libc_csu_init>:
  400a80:	41 57                	push   %r15
  400a82:	41 56                	push   %r14
  400a84:	49 89 d7             	mov    %rdx,%r15
  400a87:	41 55                	push   %r13
  400a89:	41 54                	push   %r12
  400a8b:	4c 8d 25 6e 03 20 00 	lea    0x20036e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400a92:	55                   	push   %rbp
  400a93:	48 8d 2d 6e 03 20 00 	lea    0x20036e(%rip),%rbp        # 600e08 <__init_array_end>
  400a9a:	53                   	push   %rbx
  400a9b:	41 89 fd             	mov    %edi,%r13d
  400a9e:	49 89 f6             	mov    %rsi,%r14
  400aa1:	4c 29 e5             	sub    %r12,%rbp
  400aa4:	48 83 ec 08          	sub    $0x8,%rsp
  400aa8:	48 c1 fd 03          	sar    $0x3,%rbp
  400aac:	e8 f7 f9 ff ff       	callq  4004a8 <_init>
  400ab1:	48 85 ed             	test   %rbp,%rbp
  400ab4:	74 20                	je     400ad6 <__libc_csu_init+0x56>
  400ab6:	31 db                	xor    %ebx,%ebx
  400ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400abf:	00 
  400ac0:	4c 89 fa             	mov    %r15,%rdx
  400ac3:	4c 89 f6             	mov    %r14,%rsi
  400ac6:	44 89 ef             	mov    %r13d,%edi
  400ac9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400acd:	48 83 c3 01          	add    $0x1,%rbx
  400ad1:	48 39 dd             	cmp    %rbx,%rbp
  400ad4:	75 ea                	jne    400ac0 <__libc_csu_init+0x40>
  400ad6:	48 83 c4 08          	add    $0x8,%rsp
  400ada:	5b                   	pop    %rbx
  400adb:	5d                   	pop    %rbp
  400adc:	41 5c                	pop    %r12
  400ade:	41 5d                	pop    %r13
  400ae0:	41 5e                	pop    %r14
  400ae2:	41 5f                	pop    %r15
  400ae4:	c3                   	retq   
  400ae5:	90                   	nop
  400ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aed:	00 00 00 

0000000000400af0 <__libc_csu_fini>:
  400af0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400af4 <_fini>:
  400af4:	48 83 ec 08          	sub    $0x8,%rsp
  400af8:	48 83 c4 08          	add    $0x8,%rsp
  400afc:	c3                   	retq   
