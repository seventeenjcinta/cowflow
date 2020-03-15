
c/19020031070_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400518 <_init>:
  400518:	48 83 ec 08          	sub    $0x8,%rsp
  40051c:	48 8b 05 d5 1a 20 00 	mov    0x201ad5(%rip),%rax        # 601ff8 <__gmon_start__>
  400523:	48 85 c0             	test   %rax,%rax
  400526:	74 02                	je     40052a <_init+0x12>
  400528:	ff d0                	callq  *%rax
  40052a:	48 83 c4 08          	add    $0x8,%rsp
  40052e:	c3                   	retq   

Disassembly of section .plt:

0000000000400530 <.plt>:
  400530:	ff 35 d2 1a 20 00    	pushq  0x201ad2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400536:	ff 25 d4 1a 20 00    	jmpq   *0x201ad4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40053c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400540 <puts@plt>:
  400540:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400546:	68 00 00 00 00       	pushq  $0x0
  40054b:	e9 e0 ff ff ff       	jmpq   400530 <.plt>

0000000000400550 <printf@plt>:
  400550:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602020 <printf@GLIBC_2.2.5>
  400556:	68 01 00 00 00       	pushq  $0x1
  40055b:	e9 d0 ff ff ff       	jmpq   400530 <.plt>

0000000000400560 <malloc@plt>:
  400560:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  400566:	68 02 00 00 00       	pushq  $0x2
  40056b:	e9 c0 ff ff ff       	jmpq   400530 <.plt>

0000000000400570 <_IO_getc@plt>:
  400570:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602030 <_IO_getc@GLIBC_2.2.5>
  400576:	68 03 00 00 00       	pushq  $0x3
  40057b:	e9 b0 ff ff ff       	jmpq   400530 <.plt>

0000000000400580 <__isoc99_scanf@plt>:
  400580:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400586:	68 04 00 00 00       	pushq  $0x4
  40058b:	e9 a0 ff ff ff       	jmpq   400530 <.plt>

Disassembly of section .text:

0000000000400590 <_start>:
  400590:	31 ed                	xor    %ebp,%ebp
  400592:	49 89 d1             	mov    %rdx,%r9
  400595:	5e                   	pop    %rsi
  400596:	48 89 e2             	mov    %rsp,%rdx
  400599:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40059d:	50                   	push   %rax
  40059e:	54                   	push   %rsp
  40059f:	49 c7 c0 f0 0b 40 00 	mov    $0x400bf0,%r8
  4005a6:	48 c7 c1 80 0b 40 00 	mov    $0x400b80,%rcx
  4005ad:	48 c7 c7 40 08 40 00 	mov    $0x400840,%rdi
  4005b4:	ff 15 36 1a 20 00    	callq  *0x201a36(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ba:	f4                   	hlt    
  4005bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005c0 <_dl_relocate_static_pie>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005c9:	00 00 00 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <deregister_tm_clones>:
  4005d0:	55                   	push   %rbp
  4005d1:	b8 50 20 60 00       	mov    $0x602050,%eax
  4005d6:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  4005dc:	48 89 e5             	mov    %rsp,%rbp
  4005df:	74 17                	je     4005f8 <deregister_tm_clones+0x28>
  4005e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e6:	48 85 c0             	test   %rax,%rax
  4005e9:	74 0d                	je     4005f8 <deregister_tm_clones+0x28>
  4005eb:	5d                   	pop    %rbp
  4005ec:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005f1:	ff e0                	jmpq   *%rax
  4005f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005f8:	5d                   	pop    %rbp
  4005f9:	c3                   	retq   
  4005fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400600 <register_tm_clones>:
  400600:	be 50 20 60 00       	mov    $0x602050,%esi
  400605:	55                   	push   %rbp
  400606:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  40060d:	48 89 e5             	mov    %rsp,%rbp
  400610:	48 c1 fe 03          	sar    $0x3,%rsi
  400614:	48 89 f0             	mov    %rsi,%rax
  400617:	48 c1 e8 3f          	shr    $0x3f,%rax
  40061b:	48 01 c6             	add    %rax,%rsi
  40061e:	48 d1 fe             	sar    %rsi
  400621:	74 15                	je     400638 <register_tm_clones+0x38>
  400623:	b8 00 00 00 00       	mov    $0x0,%eax
  400628:	48 85 c0             	test   %rax,%rax
  40062b:	74 0b                	je     400638 <register_tm_clones+0x38>
  40062d:	5d                   	pop    %rbp
  40062e:	bf 50 20 60 00       	mov    $0x602050,%edi
  400633:	ff e0                	jmpq   *%rax
  400635:	0f 1f 00             	nopl   (%rax)
  400638:	5d                   	pop    %rbp
  400639:	c3                   	retq   
  40063a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400640 <__do_global_dtors_aux>:
  400640:	80 3d 11 1a 20 00 00 	cmpb   $0x0,0x201a11(%rip)        # 602058 <completed.7698>
  400647:	75 17                	jne    400660 <__do_global_dtors_aux+0x20>
  400649:	55                   	push   %rbp
  40064a:	48 89 e5             	mov    %rsp,%rbp
  40064d:	e8 7e ff ff ff       	callq  4005d0 <deregister_tm_clones>
  400652:	c6 05 ff 19 20 00 01 	movb   $0x1,0x2019ff(%rip)        # 602058 <completed.7698>
  400659:	5d                   	pop    %rbp
  40065a:	c3                   	retq   
  40065b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400660:	f3 c3                	repz retq 
  400662:	0f 1f 40 00          	nopl   0x0(%rax)
  400666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40066d:	00 00 00 

0000000000400670 <frame_dummy>:
  400670:	55                   	push   %rbp
  400671:	48 89 e5             	mov    %rsp,%rbp
  400674:	5d                   	pop    %rbp
  400675:	eb 89                	jmp    400600 <register_tm_clones>
  400677:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40067e:	00 00 

0000000000400680 <creat>:
  400680:	41 57                	push   %r15
  400682:	41 56                	push   %r14
  400684:	53                   	push   %rbx
  400685:	c7 05 cd 19 20 00 00 	movl   $0x0,0x2019cd(%rip)        # 60205c <n>
  40068c:	00 00 00 
  40068f:	bf 18 00 00 00       	mov    $0x18,%edi
  400694:	e8 c7 fe ff ff       	callq  400560 <malloc@plt>
  400699:	49 89 c7             	mov    %rax,%r15
  40069c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4006a0:	45 31 f6             	xor    %r14d,%r14d
  4006a3:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  4006a8:	31 c0                	xor    %eax,%eax
  4006aa:	4c 89 fe             	mov    %r15,%rsi
  4006ad:	e8 ce fe ff ff       	callq  400580 <__isoc99_scanf@plt>
  4006b2:	49 83 3f 00          	cmpq   $0x0,(%r15)
  4006b6:	74 54                	je     40070c <creat+0x8c>
  4006b8:	4c 89 f8             	mov    %r15,%rax
  4006bb:	4c 89 fb             	mov    %r15,%rbx
  4006be:	31 c9                	xor    %ecx,%ecx
  4006c0:	49 89 df             	mov    %rbx,%r15
  4006c3:	8b 15 93 19 20 00    	mov    0x201993(%rip),%edx        # 60205c <n>
  4006c9:	8d 72 01             	lea    0x1(%rdx),%esi
  4006cc:	89 35 8a 19 20 00    	mov    %esi,0x20198a(%rip)        # 60205c <n>
  4006d2:	4d 89 fe             	mov    %r15,%r14
  4006d5:	85 d2                	test   %edx,%edx
  4006d7:	74 07                	je     4006e0 <creat+0x60>
  4006d9:	4c 89 78 10          	mov    %r15,0x10(%rax)
  4006dd:	49 89 ce             	mov    %rcx,%r14
  4006e0:	bf 18 00 00 00       	mov    $0x18,%edi
  4006e5:	e8 76 fe ff ff       	callq  400560 <malloc@plt>
  4006ea:	48 89 c3             	mov    %rax,%rbx
  4006ed:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006f1:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  4006f6:	31 c0                	xor    %eax,%eax
  4006f8:	48 89 de             	mov    %rbx,%rsi
  4006fb:	e8 80 fe ff ff       	callq  400580 <__isoc99_scanf@plt>
  400700:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400704:	4c 89 f8             	mov    %r15,%rax
  400707:	4c 89 f1             	mov    %r14,%rcx
  40070a:	75 b4                	jne    4006c0 <creat+0x40>
  40070c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400713:	00 
  400714:	4c 89 f0             	mov    %r14,%rax
  400717:	5b                   	pop    %rbx
  400718:	41 5e                	pop    %r14
  40071a:	41 5f                	pop    %r15
  40071c:	c3                   	retq   
  40071d:	0f 1f 00             	nopl   (%rax)

0000000000400720 <print>:
  400720:	53                   	push   %rbx
  400721:	48 89 fb             	mov    %rdi,%rbx
  400724:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400729:	e8 12 fe ff ff       	callq  400540 <puts@plt>
  40072e:	48 85 db             	test   %rbx,%rbx
  400731:	74 2e                	je     400761 <print+0x41>
  400733:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40073a:	84 00 00 00 00 00 
  400740:	48 8b 33             	mov    (%rbx),%rsi
  400743:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400748:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40074c:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400751:	b0 01                	mov    $0x1,%al
  400753:	e8 f8 fd ff ff       	callq  400550 <printf@plt>
  400758:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40075c:	48 85 db             	test   %rbx,%rbx
  40075f:	75 df                	jne    400740 <print+0x20>
  400761:	5b                   	pop    %rbx
  400762:	c3                   	retq   
  400763:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40076a:	84 00 00 00 00 00 

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
  4007aa:	83 05 ab 18 20 00 01 	addl   $0x1,0x2018ab(%rip)        # 60205c <n>
  4007b1:	48 89 f8             	mov    %rdi,%rax
  4007b4:	c3                   	retq   
  4007b5:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007b9:	31 c0                	xor    %eax,%eax
  4007bb:	eb e9                	jmp    4007a6 <insert+0x36>
  4007bd:	0f 1f 00             	nopl   (%rax)

00000000004007c0 <del>:
  4007c0:	53                   	push   %rbx
  4007c1:	48 89 fb             	mov    %rdi,%rbx
  4007c4:	48 85 db             	test   %rbx,%rbx
  4007c7:	74 0b                	je     4007d4 <del+0x14>
  4007c9:	48 39 33             	cmp    %rsi,(%rbx)
  4007cc:	75 14                	jne    4007e2 <del+0x22>
  4007ce:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007d2:	eb 4d                	jmp    400821 <del+0x61>
  4007d4:	bf 89 0c 40 00       	mov    $0x400c89,%edi
  4007d9:	e8 62 fd ff ff       	callq  400540 <puts@plt>
  4007de:	31 db                	xor    %ebx,%ebx
  4007e0:	eb 52                	jmp    400834 <del+0x74>
  4007e2:	48 89 d9             	mov    %rbx,%rcx
  4007e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4007ec:	00 00 00 00 
  4007f0:	48 89 c8             	mov    %rcx,%rax
  4007f3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4007f7:	48 85 c9             	test   %rcx,%rcx
  4007fa:	74 14                	je     400810 <del+0x50>
  4007fc:	48 39 31             	cmp    %rsi,(%rcx)
  4007ff:	75 ef                	jne    4007f0 <del+0x30>
  400801:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400805:	48 39 d9             	cmp    %rbx,%rcx
  400808:	74 14                	je     40081e <del+0x5e>
  40080a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40080e:	eb 11                	jmp    400821 <del+0x61>
  400810:	bf 22 0c 40 00       	mov    $0x400c22,%edi
  400815:	31 c0                	xor    %eax,%eax
  400817:	e8 34 fd ff ff       	callq  400550 <printf@plt>
  40081c:	eb 16                	jmp    400834 <del+0x74>
  40081e:	48 89 d3             	mov    %rdx,%rbx
  400821:	bf 16 0c 40 00       	mov    $0x400c16,%edi
  400826:	31 c0                	xor    %eax,%eax
  400828:	e8 23 fd ff ff       	callq  400550 <printf@plt>
  40082d:	83 05 28 18 20 00 ff 	addl   $0xffffffff,0x201828(%rip)        # 60205c <n>
  400834:	48 89 d8             	mov    %rbx,%rax
  400837:	5b                   	pop    %rbx
  400838:	c3                   	retq   
  400839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400840 <main>:
  400840:	41 57                	push   %r15
  400842:	41 56                	push   %r14
  400844:	41 54                	push   %r12
  400846:	53                   	push   %rbx
  400847:	48 83 ec 18          	sub    $0x18,%rsp
  40084b:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400850:	e8 eb fc ff ff       	callq  400540 <puts@plt>
  400855:	c7 05 fd 17 20 00 00 	movl   $0x0,0x2017fd(%rip)        # 60205c <n>
  40085c:	00 00 00 
  40085f:	bf 18 00 00 00       	mov    $0x18,%edi
  400864:	e8 f7 fc ff ff       	callq  400560 <malloc@plt>
  400869:	49 89 c6             	mov    %rax,%r14
  40086c:	49 8d 56 08          	lea    0x8(%r14),%rdx
  400870:	45 31 e4             	xor    %r12d,%r12d
  400873:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  400878:	31 c0                	xor    %eax,%eax
  40087a:	4c 89 f6             	mov    %r14,%rsi
  40087d:	e8 fe fc ff ff       	callq  400580 <__isoc99_scanf@plt>
  400882:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400886:	74 54                	je     4008dc <main+0x9c>
  400888:	4c 89 f0             	mov    %r14,%rax
  40088b:	4c 89 f3             	mov    %r14,%rbx
  40088e:	31 c9                	xor    %ecx,%ecx
  400890:	49 89 de             	mov    %rbx,%r14
  400893:	8b 15 c3 17 20 00    	mov    0x2017c3(%rip),%edx        # 60205c <n>
  400899:	8d 72 01             	lea    0x1(%rdx),%esi
  40089c:	89 35 ba 17 20 00    	mov    %esi,0x2017ba(%rip)        # 60205c <n>
  4008a2:	4d 89 f4             	mov    %r14,%r12
  4008a5:	85 d2                	test   %edx,%edx
  4008a7:	74 07                	je     4008b0 <main+0x70>
  4008a9:	4c 89 70 10          	mov    %r14,0x10(%rax)
  4008ad:	49 89 cc             	mov    %rcx,%r12
  4008b0:	bf 18 00 00 00       	mov    $0x18,%edi
  4008b5:	e8 a6 fc ff ff       	callq  400560 <malloc@plt>
  4008ba:	48 89 c3             	mov    %rax,%rbx
  4008bd:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4008c1:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  4008c6:	31 c0                	xor    %eax,%eax
  4008c8:	48 89 de             	mov    %rbx,%rsi
  4008cb:	e8 b0 fc ff ff       	callq  400580 <__isoc99_scanf@plt>
  4008d0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4008d4:	4c 89 f0             	mov    %r14,%rax
  4008d7:	4c 89 e1             	mov    %r12,%rcx
  4008da:	75 b4                	jne    400890 <main+0x50>
  4008dc:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  4008e3:	00 
  4008e4:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  4008e9:	e8 52 fc ff ff       	callq  400540 <puts@plt>
  4008ee:	4d 85 e4             	test   %r12,%r12
  4008f1:	74 2e                	je     400921 <main+0xe1>
  4008f3:	4c 89 e3             	mov    %r12,%rbx
  4008f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008fd:	00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 38 fc ff ff       	callq  400550 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0xc0>
  400921:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  400926:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  40092b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400930:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400935:	e8 06 fc ff ff       	callq  400540 <puts@plt>
  40093a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400941:	ff 
  400942:	bf 37 0c 40 00       	mov    $0x400c37,%edi
  400947:	31 c0                	xor    %eax,%eax
  400949:	e8 02 fc ff ff       	callq  400550 <printf@plt>
  40094e:	bf 46 0c 40 00       	mov    $0x400c46,%edi
  400953:	31 c0                	xor    %eax,%eax
  400955:	4c 89 fe             	mov    %r15,%rsi
  400958:	e8 23 fc ff ff       	callq  400580 <__isoc99_scanf@plt>
  40095d:	48 8b 3d ec 16 20 00 	mov    0x2016ec(%rip),%rdi        # 602050 <stdin@@GLIBC_2.2.5>
  400964:	e8 07 fc ff ff       	callq  400570 <_IO_getc@plt>
  400969:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40096d:	83 f8 02             	cmp    $0x2,%eax
  400970:	74 7e                	je     4009f0 <main+0x1b0>
  400972:	83 f8 01             	cmp    $0x1,%eax
  400975:	0f 85 ec 01 00 00    	jne    400b67 <main+0x327>
  40097b:	bf 49 0c 40 00       	mov    $0x400c49,%edi
  400980:	31 c0                	xor    %eax,%eax
  400982:	e8 c9 fb ff ff       	callq  400550 <printf@plt>
  400987:	bf 18 00 00 00       	mov    $0x18,%edi
  40098c:	e8 cf fb ff ff       	callq  400560 <malloc@plt>
  400991:	48 89 c3             	mov    %rax,%rbx
  400994:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  400999:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40099d:	31 c0                	xor    %eax,%eax
  40099f:	48 89 de             	mov    %rbx,%rsi
  4009a2:	e8 d9 fb ff ff       	callq  400580 <__isoc99_scanf@plt>
  4009a7:	4d 85 e4             	test   %r12,%r12
  4009aa:	0f 84 ab 00 00 00    	je     400a5b <main+0x21b>
  4009b0:	48 8b 33             	mov    (%rbx),%rsi
  4009b3:	4c 89 e0             	mov    %r12,%rax
  4009b6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009ba:	0f 8e c4 00 00 00    	jle    400a84 <main+0x244>
  4009c0:	48 89 c1             	mov    %rax,%rcx
  4009c3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009c7:	48 85 c0             	test   %rax,%rax
  4009ca:	0f 84 c0 00 00 00    	je     400a90 <main+0x250>
  4009d0:	48 3b 30             	cmp    (%rax),%rsi
  4009d3:	7f eb                	jg     4009c0 <main+0x180>
  4009d5:	4c 39 e0             	cmp    %r12,%rax
  4009d8:	0f 84 a6 00 00 00    	je     400a84 <main+0x244>
  4009de:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009e2:	e9 a3 00 00 00       	jmpq   400a8a <main+0x24a>
  4009e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009ee:	00 00 
  4009f0:	bf 73 0c 40 00       	mov    $0x400c73,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 54 fb ff ff       	callq  400550 <printf@plt>
  4009fc:	bf 85 0c 40 00       	mov    $0x400c85,%edi
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 f6             	mov    %r14,%rsi
  400a06:	e8 75 fb ff ff       	callq  400580 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	74 5b                	je     400a6b <main+0x22b>
  400a10:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a15:	49 39 34 24          	cmp    %rsi,(%r12)
  400a19:	4c 89 e0             	mov    %r12,%rax
  400a1c:	75 12                	jne    400a30 <main+0x1f0>
  400a1e:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a23:	e9 dc 00 00 00       	jmpq   400b04 <main+0x2c4>
  400a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a2f:	00 
  400a30:	48 89 c1             	mov    %rax,%rcx
  400a33:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a37:	48 85 c0             	test   %rax,%rax
  400a3a:	0f 84 b3 00 00 00    	je     400af3 <main+0x2b3>
  400a40:	48 39 30             	cmp    %rsi,(%rax)
  400a43:	75 eb                	jne    400a30 <main+0x1f0>
  400a45:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a49:	4c 39 e0             	cmp    %r12,%rax
  400a4c:	0f 84 af 00 00 00    	je     400b01 <main+0x2c1>
  400a52:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a56:	e9 a9 00 00 00       	jmpq   400b04 <main+0x2c4>
  400a5b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a62:	00 
  400a63:	48 8b 33             	mov    (%rbx),%rsi
  400a66:	49 89 dc             	mov    %rbx,%r12
  400a69:	eb 35                	jmp    400aa0 <main+0x260>
  400a6b:	bf 89 0c 40 00       	mov    $0x400c89,%edi
  400a70:	e8 cb fa ff ff       	callq  400540 <puts@plt>
  400a75:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400a7a:	e8 c1 fa ff ff       	callq  400540 <puts@plt>
  400a7f:	e9 dc 00 00 00       	jmpq   400b60 <main+0x320>
  400a84:	4c 89 e0             	mov    %r12,%rax
  400a87:	49 89 dc             	mov    %rbx,%r12
  400a8a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a8e:	eb 10                	jmp    400aa0 <main+0x260>
  400a90:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a94:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a9b:	00 
  400a9c:	0f 1f 40 00          	nopl   0x0(%rax)
  400aa0:	83 05 b5 15 20 00 01 	addl   $0x1,0x2015b5(%rip)        # 60205c <n>
  400aa7:	bf 65 0c 40 00       	mov    $0x400c65,%edi
  400aac:	31 c0                	xor    %eax,%eax
  400aae:	e8 9d fa ff ff       	callq  400550 <printf@plt>
  400ab3:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400ab8:	e8 83 fa ff ff       	callq  400540 <puts@plt>
  400abd:	4d 85 e4             	test   %r12,%r12
  400ac0:	0f 84 9a 00 00 00    	je     400b60 <main+0x320>
  400ac6:	4c 89 e3             	mov    %r12,%rbx
  400ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ad0:	48 8b 33             	mov    (%rbx),%rsi
  400ad3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ad8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400adc:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400ae1:	b0 01                	mov    $0x1,%al
  400ae3:	e8 68 fa ff ff       	callq  400550 <printf@plt>
  400ae8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400aec:	48 85 db             	test   %rbx,%rbx
  400aef:	75 df                	jne    400ad0 <main+0x290>
  400af1:	eb 70                	jmp    400b63 <main+0x323>
  400af3:	bf 22 0c 40 00       	mov    $0x400c22,%edi
  400af8:	31 c0                	xor    %eax,%eax
  400afa:	e8 51 fa ff ff       	callq  400550 <printf@plt>
  400aff:	eb 16                	jmp    400b17 <main+0x2d7>
  400b01:	49 89 d4             	mov    %rdx,%r12
  400b04:	bf 16 0c 40 00       	mov    $0x400c16,%edi
  400b09:	31 c0                	xor    %eax,%eax
  400b0b:	e8 40 fa ff ff       	callq  400550 <printf@plt>
  400b10:	83 05 45 15 20 00 ff 	addl   $0xffffffff,0x201545(%rip)        # 60205c <n>
  400b17:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400b1c:	e8 1f fa ff ff       	callq  400540 <puts@plt>
  400b21:	4d 85 e4             	test   %r12,%r12
  400b24:	74 3a                	je     400b60 <main+0x320>
  400b26:	4c 89 e3             	mov    %r12,%rbx
  400b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b30:	48 8b 33             	mov    (%rbx),%rsi
  400b33:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b38:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b3c:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400b41:	b0 01                	mov    $0x1,%al
  400b43:	e8 08 fa ff ff       	callq  400550 <printf@plt>
  400b48:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b4c:	48 85 db             	test   %rbx,%rbx
  400b4f:	75 df                	jne    400b30 <main+0x2f0>
  400b51:	eb 10                	jmp    400b63 <main+0x323>
  400b53:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b5a:	84 00 00 00 00 00 
  400b60:	45 31 e4             	xor    %r12d,%r12d
  400b63:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b67:	85 c0                	test   %eax,%eax
  400b69:	0f 85 c1 fd ff ff    	jne    400930 <main+0xf0>
  400b6f:	48 83 c4 18          	add    $0x18,%rsp
  400b73:	5b                   	pop    %rbx
  400b74:	41 5c                	pop    %r12
  400b76:	41 5e                	pop    %r14
  400b78:	41 5f                	pop    %r15
  400b7a:	c3                   	retq   
  400b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400b80 <__libc_csu_init>:
  400b80:	41 57                	push   %r15
  400b82:	41 56                	push   %r14
  400b84:	49 89 d7             	mov    %rdx,%r15
  400b87:	41 55                	push   %r13
  400b89:	41 54                	push   %r12
  400b8b:	4c 8d 25 6e 12 20 00 	lea    0x20126e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b92:	55                   	push   %rbp
  400b93:	48 8d 2d 6e 12 20 00 	lea    0x20126e(%rip),%rbp        # 601e08 <__init_array_end>
  400b9a:	53                   	push   %rbx
  400b9b:	41 89 fd             	mov    %edi,%r13d
  400b9e:	49 89 f6             	mov    %rsi,%r14
  400ba1:	4c 29 e5             	sub    %r12,%rbp
  400ba4:	48 83 ec 08          	sub    $0x8,%rsp
  400ba8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bac:	e8 67 f9 ff ff       	callq  400518 <_init>
  400bb1:	48 85 ed             	test   %rbp,%rbp
  400bb4:	74 20                	je     400bd6 <__libc_csu_init+0x56>
  400bb6:	31 db                	xor    %ebx,%ebx
  400bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bbf:	00 
  400bc0:	4c 89 fa             	mov    %r15,%rdx
  400bc3:	4c 89 f6             	mov    %r14,%rsi
  400bc6:	44 89 ef             	mov    %r13d,%edi
  400bc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bcd:	48 83 c3 01          	add    $0x1,%rbx
  400bd1:	48 39 dd             	cmp    %rbx,%rbp
  400bd4:	75 ea                	jne    400bc0 <__libc_csu_init+0x40>
  400bd6:	48 83 c4 08          	add    $0x8,%rsp
  400bda:	5b                   	pop    %rbx
  400bdb:	5d                   	pop    %rbp
  400bdc:	41 5c                	pop    %r12
  400bde:	41 5d                	pop    %r13
  400be0:	41 5e                	pop    %r14
  400be2:	41 5f                	pop    %r15
  400be4:	c3                   	retq   
  400be5:	90                   	nop
  400be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bed:	00 00 00 

0000000000400bf0 <__libc_csu_fini>:
  400bf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400bf4 <_fini>:
  400bf4:	48 83 ec 08          	sub    $0x8,%rsp
  400bf8:	48 83 c4 08          	add    $0x8,%rsp
  400bfc:	c3                   	retq   
