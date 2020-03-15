
c/19020031100_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400530 <_init>:
  400530:	48 83 ec 08          	sub    $0x8,%rsp
  400534:	48 8b 05 bd 1a 20 00 	mov    0x201abd(%rip),%rax        # 601ff8 <__gmon_start__>
  40053b:	48 85 c0             	test   %rax,%rax
  40053e:	74 02                	je     400542 <_init+0x12>
  400540:	ff d0                	callq  *%rax
  400542:	48 83 c4 08          	add    $0x8,%rsp
  400546:	c3                   	retq   

Disassembly of section .plt:

0000000000400550 <.plt>:
  400550:	ff 35 b2 1a 20 00    	pushq  0x201ab2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400556:	ff 25 b4 1a 20 00    	jmpq   *0x201ab4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <free@plt>:
  400560:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400566:	68 00 00 00 00       	pushq  $0x0
  40056b:	e9 e0 ff ff ff       	jmpq   400550 <.plt>

0000000000400570 <puts@plt>:
  400570:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400576:	68 01 00 00 00       	pushq  $0x1
  40057b:	e9 d0 ff ff ff       	jmpq   400550 <.plt>

0000000000400580 <printf@plt>:
  400580:	ff 25 a2 1a 20 00    	jmpq   *0x201aa2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400586:	68 02 00 00 00       	pushq  $0x2
  40058b:	e9 c0 ff ff ff       	jmpq   400550 <.plt>

0000000000400590 <malloc@plt>:
  400590:	ff 25 9a 1a 20 00    	jmpq   *0x201a9a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400596:	68 03 00 00 00       	pushq  $0x3
  40059b:	e9 b0 ff ff ff       	jmpq   400550 <.plt>

00000000004005a0 <_IO_getc@plt>:
  4005a0:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602038 <_IO_getc@GLIBC_2.2.5>
  4005a6:	68 04 00 00 00       	pushq  $0x4
  4005ab:	e9 a0 ff ff ff       	jmpq   400550 <.plt>

00000000004005b0 <__isoc99_scanf@plt>:
  4005b0:	ff 25 8a 1a 20 00    	jmpq   *0x201a8a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
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
  4005cf:	49 c7 c0 e0 0b 40 00 	mov    $0x400be0,%r8
  4005d6:	48 c7 c1 70 0b 40 00 	mov    $0x400b70,%rcx
  4005dd:	48 c7 c7 c0 08 40 00 	mov    $0x4008c0,%rdi
  4005e4:	ff 15 06 1a 20 00    	callq  *0x201a06(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ea:	f4                   	hlt    
  4005eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005f0 <_dl_relocate_static_pie>:
  4005f0:	f3 c3                	repz retq 
  4005f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005f9:	00 00 00 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <deregister_tm_clones>:
  400600:	55                   	push   %rbp
  400601:	b8 58 20 60 00       	mov    $0x602058,%eax
  400606:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	74 17                	je     400628 <deregister_tm_clones+0x28>
  400611:	b8 00 00 00 00       	mov    $0x0,%eax
  400616:	48 85 c0             	test   %rax,%rax
  400619:	74 0d                	je     400628 <deregister_tm_clones+0x28>
  40061b:	5d                   	pop    %rbp
  40061c:	bf 58 20 60 00       	mov    $0x602058,%edi
  400621:	ff e0                	jmpq   *%rax
  400623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <register_tm_clones>:
  400630:	be 58 20 60 00       	mov    $0x602058,%esi
  400635:	55                   	push   %rbp
  400636:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
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
  40065e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400663:	ff e0                	jmpq   *%rax
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <__do_global_dtors_aux>:
  400670:	80 3d f1 19 20 00 00 	cmpb   $0x0,0x2019f1(%rip)        # 602068 <completed.7698>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 df 19 20 00 01 	movb   $0x1,0x2019df(%rip)        # 602068 <completed.7698>
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

00000000004006b0 <del>:
  4006b0:	41 57                	push   %r15
  4006b2:	41 56                	push   %r14
  4006b4:	41 54                	push   %r12
  4006b6:	53                   	push   %rbx
  4006b7:	50                   	push   %rax
  4006b8:	49 89 fe             	mov    %rdi,%r14
  4006bb:	4d 85 f6             	test   %r14,%r14
  4006be:	74 11                	je     4006d1 <del+0x21>
  4006c0:	48 63 c6             	movslq %esi,%rax
  4006c3:	4d 8b 66 10          	mov    0x10(%r14),%r12
  4006c7:	49 39 06             	cmp    %rax,(%r14)
  4006ca:	75 14                	jne    4006e0 <del+0x30>
  4006cc:	4c 89 f3             	mov    %r14,%rbx
  4006cf:	eb 33                	jmp    400704 <del+0x54>
  4006d1:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  4006d6:	e8 95 fe ff ff       	callq  400570 <puts@plt>
  4006db:	45 31 f6             	xor    %r14d,%r14d
  4006de:	eb 65                	jmp    400745 <del+0x95>
  4006e0:	4c 89 f3             	mov    %r14,%rbx
  4006e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006ea:	84 00 00 00 00 00 
  4006f0:	49 89 df             	mov    %rbx,%r15
  4006f3:	4c 89 e3             	mov    %r12,%rbx
  4006f6:	48 85 db             	test   %rbx,%rbx
  4006f9:	74 3b                	je     400736 <del+0x86>
  4006fb:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  4006ff:	48 39 03             	cmp    %rax,(%rbx)
  400702:	75 ec                	jne    4006f0 <del+0x40>
  400704:	48 89 df             	mov    %rbx,%rdi
  400707:	e8 54 fe ff ff       	callq  400560 <free@plt>
  40070c:	4d 85 e4             	test   %r12,%r12
  40070f:	74 16                	je     400727 <del+0x77>
  400711:	83 05 54 19 20 00 ff 	addl   $0xffffffff,0x201954(%rip)        # 60206c <n>
  400718:	48 8b 43 10          	mov    0x10(%rbx),%rax
  40071c:	4c 39 f3             	cmp    %r14,%rbx
  40071f:	74 21                	je     400742 <del+0x92>
  400721:	49 89 47 10          	mov    %rax,0x10(%r15)
  400725:	eb 1e                	jmp    400745 <del+0x95>
  400727:	4c 39 f3             	cmp    %r14,%rbx
  40072a:	74 af                	je     4006db <del+0x2b>
  40072c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400733:	00 
  400734:	eb 0f                	jmp    400745 <del+0x95>
  400736:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  40073b:	e8 30 fe ff ff       	callq  400570 <puts@plt>
  400740:	eb 03                	jmp    400745 <del+0x95>
  400742:	49 89 c6             	mov    %rax,%r14
  400745:	4c 89 f0             	mov    %r14,%rax
  400748:	48 83 c4 08          	add    $0x8,%rsp
  40074c:	5b                   	pop    %rbx
  40074d:	41 5c                	pop    %r12
  40074f:	41 5e                	pop    %r14
  400751:	41 5f                	pop    %r15
  400753:	c3                   	retq   
  400754:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40075b:	00 00 00 00 00 

0000000000400760 <insert>:
  400760:	48 85 ff             	test   %rdi,%rdi
  400763:	74 27                	je     40078c <insert+0x2c>
  400765:	48 8b 0e             	mov    (%rsi),%rcx
  400768:	48 3b 0f             	cmp    (%rdi),%rcx
  40076b:	7e 26                	jle    400793 <insert+0x33>
  40076d:	48 89 f8             	mov    %rdi,%rax
  400770:	48 89 c2             	mov    %rax,%rdx
  400773:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400777:	48 85 c0             	test   %rax,%rax
  40077a:	74 1f                	je     40079b <insert+0x3b>
  40077c:	48 3b 08             	cmp    (%rax),%rcx
  40077f:	7f ef                	jg     400770 <insert+0x10>
  400781:	48 39 f8             	cmp    %rdi,%rax
  400784:	74 0d                	je     400793 <insert+0x33>
  400786:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40078a:	eb 15                	jmp    4007a1 <insert+0x41>
  40078c:	31 c0                	xor    %eax,%eax
  40078e:	48 89 f7             	mov    %rsi,%rdi
  400791:	eb 0e                	jmp    4007a1 <insert+0x41>
  400793:	48 89 f8             	mov    %rdi,%rax
  400796:	48 89 f7             	mov    %rsi,%rdi
  400799:	eb 06                	jmp    4007a1 <insert+0x41>
  40079b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40079f:	31 c0                	xor    %eax,%eax
  4007a1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4007a5:	48 89 f8             	mov    %rdi,%rax
  4007a8:	c3                   	retq   
  4007a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007b0 <create>:
  4007b0:	41 56                	push   %r14
  4007b2:	53                   	push   %rbx
  4007b3:	50                   	push   %rax
  4007b4:	bf 18 00 00 00       	mov    $0x18,%edi
  4007b9:	e8 d2 fd ff ff       	callq  400590 <malloc@plt>
  4007be:	48 89 c3             	mov    %rax,%rbx
  4007c1:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007c5:	45 31 f6             	xor    %r14d,%r14d
  4007c8:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  4007cd:	31 c0                	xor    %eax,%eax
  4007cf:	48 89 de             	mov    %rbx,%rsi
  4007d2:	e8 d9 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007d7:	48 8b 03             	mov    (%rbx),%rax
  4007da:	48 85 c0             	test   %rax,%rax
  4007dd:	0f 84 89 00 00 00    	je     40086c <create+0xbc>
  4007e3:	45 31 f6             	xor    %r14d,%r14d
  4007e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007ed:	00 00 00 
  4007f0:	4d 85 f6             	test   %r14,%r14
  4007f3:	74 2b                	je     400820 <create+0x70>
  4007f5:	4c 89 f1             	mov    %r14,%rcx
  4007f8:	49 3b 06             	cmp    (%r14),%rax
  4007fb:	7e 33                	jle    400830 <create+0x80>
  4007fd:	0f 1f 00             	nopl   (%rax)
  400800:	48 89 ca             	mov    %rcx,%rdx
  400803:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400807:	48 85 c9             	test   %rcx,%rcx
  40080a:	74 2c                	je     400838 <create+0x88>
  40080c:	48 3b 01             	cmp    (%rcx),%rax
  40080f:	7f ef                	jg     400800 <create+0x50>
  400811:	4c 39 f1             	cmp    %r14,%rcx
  400814:	74 1a                	je     400830 <create+0x80>
  400816:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40081a:	eb 24                	jmp    400840 <create+0x90>
  40081c:	0f 1f 40 00          	nopl   0x0(%rax)
  400820:	31 c9                	xor    %ecx,%ecx
  400822:	49 89 de             	mov    %rbx,%r14
  400825:	eb 19                	jmp    400840 <create+0x90>
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 
  400830:	4c 89 f1             	mov    %r14,%rcx
  400833:	49 89 de             	mov    %rbx,%r14
  400836:	eb 08                	jmp    400840 <create+0x90>
  400838:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40083c:	31 c9                	xor    %ecx,%ecx
  40083e:	66 90                	xchg   %ax,%ax
  400840:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400844:	bf 18 00 00 00       	mov    $0x18,%edi
  400849:	e8 42 fd ff ff       	callq  400590 <malloc@plt>
  40084e:	48 89 c3             	mov    %rax,%rbx
  400851:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400855:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  40085a:	31 c0                	xor    %eax,%eax
  40085c:	48 89 de             	mov    %rbx,%rsi
  40085f:	e8 4c fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400864:	48 8b 03             	mov    (%rbx),%rax
  400867:	48 85 c0             	test   %rax,%rax
  40086a:	75 84                	jne    4007f0 <create+0x40>
  40086c:	4c 89 f0             	mov    %r14,%rax
  40086f:	48 83 c4 08          	add    $0x8,%rsp
  400873:	5b                   	pop    %rbx
  400874:	41 5e                	pop    %r14
  400876:	c3                   	retq   
  400877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40087e:	00 00 

0000000000400880 <print>:
  400880:	53                   	push   %rbx
  400881:	48 89 fb             	mov    %rdi,%rbx
  400884:	48 85 db             	test   %rbx,%rbx
  400887:	74 2a                	je     4008b3 <print+0x33>
  400889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400890:	48 8b 33             	mov    (%rbx),%rsi
  400893:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400898:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40089c:	bf fb 0b 40 00       	mov    $0x400bfb,%edi
  4008a1:	b0 01                	mov    $0x1,%al
  4008a3:	e8 d8 fc ff ff       	callq  400580 <printf@plt>
  4008a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ac:	48 85 db             	test   %rbx,%rbx
  4008af:	75 df                	jne    400890 <print+0x10>
  4008b1:	5b                   	pop    %rbx
  4008b2:	c3                   	retq   
  4008b3:	bf 06 0c 40 00       	mov    $0x400c06,%edi
  4008b8:	31 c0                	xor    %eax,%eax
  4008ba:	5b                   	pop    %rbx
  4008bb:	e9 c0 fc ff ff       	jmpq   400580 <printf@plt>

00000000004008c0 <main>:
  4008c0:	55                   	push   %rbp
  4008c1:	41 57                	push   %r15
  4008c3:	41 56                	push   %r14
  4008c5:	41 55                	push   %r13
  4008c7:	41 54                	push   %r12
  4008c9:	53                   	push   %rbx
  4008ca:	48 83 ec 18          	sub    $0x18,%rsp
  4008ce:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  4008d3:	e8 98 fc ff ff       	callq  400570 <puts@plt>
  4008d8:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  4008dd:	e8 8e fc ff ff       	callq  400570 <puts@plt>
  4008e2:	e8 c9 fe ff ff       	callq  4007b0 <create>
  4008e7:	49 89 c4             	mov    %rax,%r12
  4008ea:	4d 85 e4             	test   %r12,%r12
  4008ed:	74 34                	je     400923 <main+0x63>
  4008ef:	4c 89 e3             	mov    %r12,%rbx
  4008f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008f9:	1f 84 00 00 00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf fb 0b 40 00       	mov    $0x400bfb,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 68 fc ff ff       	callq  400580 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x40>
  400921:	eb 0c                	jmp    40092f <main+0x6f>
  400923:	bf 06 0c 40 00       	mov    $0x400c06,%edi
  400928:	31 c0                	xor    %eax,%eax
  40092a:	e8 51 fc ff ff       	callq  400580 <printf@plt>
  40092f:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400934:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400940:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <puts@plt>
  40094a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400951:	ff 
  400952:	bf 1d 0c 40 00       	mov    $0x400c1d,%edi
  400957:	31 c0                	xor    %eax,%eax
  400959:	4c 89 f6             	mov    %r14,%rsi
  40095c:	e8 4f fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400961:	48 8b 3d f8 16 20 00 	mov    0x2016f8(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400968:	e8 33 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  40096d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400971:	83 f8 02             	cmp    $0x2,%eax
  400974:	74 7a                	je     4009f0 <main+0x130>
  400976:	83 f8 01             	cmp    $0x1,%eax
  400979:	0f 85 d5 01 00 00    	jne    400b54 <main+0x294>
  40097f:	bf 20 0c 40 00       	mov    $0x400c20,%edi
  400984:	31 c0                	xor    %eax,%eax
  400986:	e8 f5 fb ff ff       	callq  400580 <printf@plt>
  40098b:	bf 18 00 00 00       	mov    $0x18,%edi
  400990:	e8 fb fb ff ff       	callq  400590 <malloc@plt>
  400995:	48 89 c3             	mov    %rax,%rbx
  400998:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  40099d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009a1:	31 c0                	xor    %eax,%eax
  4009a3:	48 89 de             	mov    %rbx,%rsi
  4009a6:	e8 05 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009ab:	4d 85 e4             	test   %r12,%r12
  4009ae:	0f 84 c4 00 00 00    	je     400a78 <main+0x1b8>
  4009b4:	48 8b 33             	mov    (%rbx),%rsi
  4009b7:	4c 89 e0             	mov    %r12,%rax
  4009ba:	49 3b 34 24          	cmp    (%r12),%rsi
  4009be:	7e 1e                	jle    4009de <main+0x11e>
  4009c0:	48 89 c1             	mov    %rax,%rcx
  4009c3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009c7:	48 85 c0             	test   %rax,%rax
  4009ca:	0f 84 f6 00 00 00    	je     400ac6 <main+0x206>
  4009d0:	48 3b 30             	cmp    (%rax),%rsi
  4009d3:	7f eb                	jg     4009c0 <main+0x100>
  4009d5:	4c 39 e0             	cmp    %r12,%rax
  4009d8:	0f 85 ea 00 00 00    	jne    400ac8 <main+0x208>
  4009de:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  4009e2:	e9 9c 00 00 00       	jmpq   400a83 <main+0x1c3>
  4009e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009ee:	00 00 
  4009f0:	bf 4d 0c 40 00       	mov    $0x400c4d,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 84 fb ff ff       	callq  400580 <printf@plt>
  4009fc:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 fe             	mov    %r15,%rsi
  400a06:	e8 a5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	0f 84 80 00 00 00    	je     400a94 <main+0x1d4>
  400a14:	48 63 44 24 10       	movslq 0x10(%rsp),%rax
  400a19:	49 8b 6c 24 10       	mov    0x10(%r12),%rbp
  400a1e:	49 39 04 24          	cmp    %rax,(%r12)
  400a22:	4c 89 e3             	mov    %r12,%rbx
  400a25:	74 21                	je     400a48 <main+0x188>
  400a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a2e:	00 00 
  400a30:	49 89 dd             	mov    %rbx,%r13
  400a33:	48 89 eb             	mov    %rbp,%rbx
  400a36:	48 85 db             	test   %rbx,%rbx
  400a39:	0f 84 c4 00 00 00    	je     400b03 <main+0x243>
  400a3f:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
  400a43:	48 39 03             	cmp    %rax,(%rbx)
  400a46:	75 e8                	jne    400a30 <main+0x170>
  400a48:	48 89 df             	mov    %rbx,%rdi
  400a4b:	e8 10 fb ff ff       	callq  400560 <free@plt>
  400a50:	48 85 ed             	test   %rbp,%rbp
  400a53:	74 5d                	je     400ab2 <main+0x1f2>
  400a55:	83 05 10 16 20 00 ff 	addl   $0xffffffff,0x201610(%rip)        # 60206c <n>
  400a5c:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400a60:	4c 39 e3             	cmp    %r12,%rbx
  400a63:	0f 84 ab 00 00 00    	je     400b14 <main+0x254>
  400a69:	49 89 45 10          	mov    %rax,0x10(%r13)
  400a6d:	4d 85 e4             	test   %r12,%r12
  400a70:	0f 85 a6 00 00 00    	jne    400b1c <main+0x25c>
  400a76:	eb 26                	jmp    400a9e <main+0x1de>
  400a78:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a7f:	00 
  400a80:	48 8b 33             	mov    (%rbx),%rsi
  400a83:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400a88:	31 c0                	xor    %eax,%eax
  400a8a:	e8 f1 fa ff ff       	callq  400580 <printf@plt>
  400a8f:	49 89 dc             	mov    %rbx,%r12
  400a92:	eb 48                	jmp    400adc <main+0x21c>
  400a94:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  400a99:	e8 d2 fa ff ff       	callq  400570 <puts@plt>
  400a9e:	bf 06 0c 40 00       	mov    $0x400c06,%edi
  400aa3:	31 c0                	xor    %eax,%eax
  400aa5:	e8 d6 fa ff ff       	callq  400580 <printf@plt>
  400aaa:	45 31 e4             	xor    %r12d,%r12d
  400aad:	e9 9e 00 00 00       	jmpq   400b50 <main+0x290>
  400ab2:	4c 39 e3             	cmp    %r12,%rbx
  400ab5:	74 e7                	je     400a9e <main+0x1de>
  400ab7:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400abe:	00 
  400abf:	4d 85 e4             	test   %r12,%r12
  400ac2:	75 58                	jne    400b1c <main+0x25c>
  400ac4:	eb d8                	jmp    400a9e <main+0x1de>
  400ac6:	31 c0                	xor    %eax,%eax
  400ac8:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400acc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400ad0:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400ad5:	31 c0                	xor    %eax,%eax
  400ad7:	e8 a4 fa ff ff       	callq  400580 <printf@plt>
  400adc:	4c 89 e3             	mov    %r12,%rbx
  400adf:	90                   	nop
  400ae0:	48 8b 33             	mov    (%rbx),%rsi
  400ae3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ae8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400aec:	bf fb 0b 40 00       	mov    $0x400bfb,%edi
  400af1:	b0 01                	mov    $0x1,%al
  400af3:	e8 88 fa ff ff       	callq  400580 <printf@plt>
  400af8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400afc:	48 85 db             	test   %rbx,%rbx
  400aff:	75 df                	jne    400ae0 <main+0x220>
  400b01:	eb 4d                	jmp    400b50 <main+0x290>
  400b03:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  400b08:	e8 63 fa ff ff       	callq  400570 <puts@plt>
  400b0d:	4d 85 e4             	test   %r12,%r12
  400b10:	75 0a                	jne    400b1c <main+0x25c>
  400b12:	eb 8a                	jmp    400a9e <main+0x1de>
  400b14:	49 89 c4             	mov    %rax,%r12
  400b17:	4d 85 e4             	test   %r12,%r12
  400b1a:	74 82                	je     400a9e <main+0x1de>
  400b1c:	4c 89 e3             	mov    %r12,%rbx
  400b1f:	90                   	nop
  400b20:	48 8b 33             	mov    (%rbx),%rsi
  400b23:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b28:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b2c:	bf fb 0b 40 00       	mov    $0x400bfb,%edi
  400b31:	b0 01                	mov    $0x1,%al
  400b33:	e8 48 fa ff ff       	callq  400580 <printf@plt>
  400b38:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b3c:	48 85 db             	test   %rbx,%rbx
  400b3f:	75 df                	jne    400b20 <main+0x260>
  400b41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b48:	0f 1f 84 00 00 00 00 
  400b4f:	00 
  400b50:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b54:	83 f8 03             	cmp    $0x3,%eax
  400b57:	0f 85 e3 fd ff ff    	jne    400940 <main+0x80>
  400b5d:	31 c0                	xor    %eax,%eax
  400b5f:	48 83 c4 18          	add    $0x18,%rsp
  400b63:	5b                   	pop    %rbx
  400b64:	41 5c                	pop    %r12
  400b66:	41 5d                	pop    %r13
  400b68:	41 5e                	pop    %r14
  400b6a:	41 5f                	pop    %r15
  400b6c:	5d                   	pop    %rbp
  400b6d:	c3                   	retq   
  400b6e:	66 90                	xchg   %ax,%ax

0000000000400b70 <__libc_csu_init>:
  400b70:	41 57                	push   %r15
  400b72:	41 56                	push   %r14
  400b74:	49 89 d7             	mov    %rdx,%r15
  400b77:	41 55                	push   %r13
  400b79:	41 54                	push   %r12
  400b7b:	4c 8d 25 7e 12 20 00 	lea    0x20127e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b82:	55                   	push   %rbp
  400b83:	48 8d 2d 7e 12 20 00 	lea    0x20127e(%rip),%rbp        # 601e08 <__init_array_end>
  400b8a:	53                   	push   %rbx
  400b8b:	41 89 fd             	mov    %edi,%r13d
  400b8e:	49 89 f6             	mov    %rsi,%r14
  400b91:	4c 29 e5             	sub    %r12,%rbp
  400b94:	48 83 ec 08          	sub    $0x8,%rsp
  400b98:	48 c1 fd 03          	sar    $0x3,%rbp
  400b9c:	e8 8f f9 ff ff       	callq  400530 <_init>
  400ba1:	48 85 ed             	test   %rbp,%rbp
  400ba4:	74 20                	je     400bc6 <__libc_csu_init+0x56>
  400ba6:	31 db                	xor    %ebx,%ebx
  400ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400baf:	00 
  400bb0:	4c 89 fa             	mov    %r15,%rdx
  400bb3:	4c 89 f6             	mov    %r14,%rsi
  400bb6:	44 89 ef             	mov    %r13d,%edi
  400bb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bbd:	48 83 c3 01          	add    $0x1,%rbx
  400bc1:	48 39 dd             	cmp    %rbx,%rbp
  400bc4:	75 ea                	jne    400bb0 <__libc_csu_init+0x40>
  400bc6:	48 83 c4 08          	add    $0x8,%rsp
  400bca:	5b                   	pop    %rbx
  400bcb:	5d                   	pop    %rbp
  400bcc:	41 5c                	pop    %r12
  400bce:	41 5d                	pop    %r13
  400bd0:	41 5e                	pop    %r14
  400bd2:	41 5f                	pop    %r15
  400bd4:	c3                   	retq   
  400bd5:	90                   	nop
  400bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bdd:	00 00 00 

0000000000400be0 <__libc_csu_fini>:
  400be0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400be4 <_fini>:
  400be4:	48 83 ec 08          	sub    $0x8,%rsp
  400be8:	48 83 c4 08          	add    $0x8,%rsp
  400bec:	c3                   	retq   
