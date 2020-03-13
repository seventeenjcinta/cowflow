
input/19020031116-2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 30 0c 40 00 	mov    $0x400c30,%r8
  4005d6:	48 c7 c1 c0 0b 40 00 	mov    $0x400bc0,%rcx
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

00000000004006b0 <insert>:
  4006b0:	48 85 ff             	test   %rdi,%rdi
  4006b3:	74 2b                	je     4006e0 <insert+0x30>
  4006b5:	48 8b 0e             	mov    (%rsi),%rcx
  4006b8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006bb:	7e 34                	jle    4006f1 <insert+0x41>
  4006bd:	48 89 f8             	mov    %rdi,%rax
  4006c0:	48 89 c2             	mov    %rax,%rdx
  4006c3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 2b                	je     4006f7 <insert+0x47>
  4006cc:	48 3b 08             	cmp    (%rax),%rcx
  4006cf:	7f ef                	jg     4006c0 <insert+0x10>
  4006d1:	48 39 f8             	cmp    %rdi,%rax
  4006d4:	74 1b                	je     4006f1 <insert+0x41>
  4006d6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006da:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4006de:	eb 23                	jmp    400703 <insert+0x53>
  4006e0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4006e7:	00 
  4006e8:	83 05 7d 19 20 00 01 	addl   $0x1,0x20197d(%rip)        # 60206c <n>
  4006ef:	eb 15                	jmp    400706 <insert+0x56>
  4006f1:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
  4006f5:	eb 0f                	jmp    400706 <insert+0x56>
  4006f7:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006fb:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  400702:	00 
  400703:	48 89 fe             	mov    %rdi,%rsi
  400706:	83 05 5f 19 20 00 01 	addl   $0x1,0x20195f(%rip)        # 60206c <n>
  40070d:	48 89 f0             	mov    %rsi,%rax
  400710:	c3                   	retq   
  400711:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400718:	0f 1f 84 00 00 00 00 
  40071f:	00 

0000000000400720 <create>:
  400720:	41 56                	push   %r14
  400722:	53                   	push   %rbx
  400723:	50                   	push   %rax
  400724:	49 89 fe             	mov    %rdi,%r14
  400727:	eb 20                	jmp    400749 <create+0x29>
  400729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400730:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400737:	00 
  400738:	83 05 2d 19 20 00 01 	addl   $0x1,0x20192d(%rip)        # 60206c <n>
  40073f:	49 89 de             	mov    %rbx,%r14
  400742:	83 05 23 19 20 00 01 	addl   $0x1,0x201923(%rip)        # 60206c <n>
  400749:	bf 18 00 00 00       	mov    $0x18,%edi
  40074e:	e8 3d fe ff ff       	callq  400590 <malloc@plt>
  400753:	48 89 c3             	mov    %rax,%rbx
  400756:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40075a:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  40075f:	31 c0                	xor    %eax,%eax
  400761:	48 89 de             	mov    %rbx,%rsi
  400764:	e8 47 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400769:	48 8b 03             	mov    (%rbx),%rax
  40076c:	48 85 c0             	test   %rax,%rax
  40076f:	74 67                	je     4007d8 <create+0xb8>
  400771:	4d 85 f6             	test   %r14,%r14
  400774:	74 ba                	je     400730 <create+0x10>
  400776:	4c 89 f1             	mov    %r14,%rcx
  400779:	49 3b 06             	cmp    (%r14),%rax
  40077c:	7e 32                	jle    4007b0 <create+0x90>
  40077e:	66 90                	xchg   %ax,%ax
  400780:	48 89 ca             	mov    %rcx,%rdx
  400783:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400787:	48 85 c9             	test   %rcx,%rcx
  40078a:	74 34                	je     4007c0 <create+0xa0>
  40078c:	48 3b 01             	cmp    (%rcx),%rax
  40078f:	7f ef                	jg     400780 <create+0x60>
  400791:	4c 39 f1             	cmp    %r14,%rcx
  400794:	74 1a                	je     4007b0 <create+0x90>
  400796:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40079a:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  40079e:	83 05 c7 18 20 00 01 	addl   $0x1,0x2018c7(%rip)        # 60206c <n>
  4007a5:	eb a2                	jmp    400749 <create+0x29>
  4007a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ae:	00 00 
  4007b0:	4c 89 73 10          	mov    %r14,0x10(%rbx)
  4007b4:	49 89 de             	mov    %rbx,%r14
  4007b7:	83 05 ae 18 20 00 01 	addl   $0x1,0x2018ae(%rip)        # 60206c <n>
  4007be:	eb 89                	jmp    400749 <create+0x29>
  4007c0:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007c4:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4007cb:	00 
  4007cc:	83 05 99 18 20 00 01 	addl   $0x1,0x201899(%rip)        # 60206c <n>
  4007d3:	e9 71 ff ff ff       	jmpq   400749 <create+0x29>
  4007d8:	48 89 df             	mov    %rbx,%rdi
  4007db:	e8 80 fd ff ff       	callq  400560 <free@plt>
  4007e0:	83 05 85 18 20 00 ff 	addl   $0xffffffff,0x201885(%rip)        # 60206c <n>
  4007e7:	4c 89 f0             	mov    %r14,%rax
  4007ea:	48 83 c4 08          	add    $0x8,%rsp
  4007ee:	5b                   	pop    %rbx
  4007ef:	41 5e                	pop    %r14
  4007f1:	c3                   	retq   
  4007f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007f9:	1f 84 00 00 00 00 00 

0000000000400800 <del>:
  400800:	53                   	push   %rbx
  400801:	48 89 fb             	mov    %rdi,%rbx
  400804:	48 85 db             	test   %rbx,%rbx
  400807:	74 0e                	je     400817 <del+0x17>
  400809:	48 39 33             	cmp    %rsi,(%rbx)
  40080c:	75 17                	jne    400825 <del+0x25>
  40080e:	48 89 df             	mov    %rbx,%rdi
  400811:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400815:	eb 48                	jmp    40085f <del+0x5f>
  400817:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  40081c:	e8 4f fd ff ff       	callq  400570 <puts@plt>
  400821:	31 db                	xor    %ebx,%ebx
  400823:	eb 46                	jmp    40086b <del+0x6b>
  400825:	48 89 df             	mov    %rbx,%rdi
  400828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40082f:	00 
  400830:	48 89 f8             	mov    %rdi,%rax
  400833:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400837:	48 85 ff             	test   %rdi,%rdi
  40083a:	74 14                	je     400850 <del+0x50>
  40083c:	48 39 37             	cmp    %rsi,(%rdi)
  40083f:	75 ef                	jne    400830 <del+0x30>
  400841:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  400845:	48 39 df             	cmp    %rbx,%rdi
  400848:	74 12                	je     40085c <del+0x5c>
  40084a:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40084e:	eb 0f                	jmp    40085f <del+0x5f>
  400850:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400855:	e8 16 fd ff ff       	callq  400570 <puts@plt>
  40085a:	eb 0f                	jmp    40086b <del+0x6b>
  40085c:	48 89 cb             	mov    %rcx,%rbx
  40085f:	e8 fc fc ff ff       	callq  400560 <free@plt>
  400864:	83 05 01 18 20 00 ff 	addl   $0xffffffff,0x201801(%rip)        # 60206c <n>
  40086b:	48 89 d8             	mov    %rbx,%rax
  40086e:	5b                   	pop    %rbx
  40086f:	c3                   	retq   

0000000000400870 <print>:
  400870:	53                   	push   %rbx
  400871:	48 89 fb             	mov    %rdi,%rbx
  400874:	48 85 db             	test   %rbx,%rbx
  400877:	74 3a                	je     4008b3 <print+0x43>
  400879:	8b 35 ed 17 20 00    	mov    0x2017ed(%rip),%esi        # 60206c <n>
  40087f:	bf 4b 0c 40 00       	mov    $0x400c4b,%edi
  400884:	31 c0                	xor    %eax,%eax
  400886:	e8 f5 fc ff ff       	callq  400580 <printf@plt>
  40088b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400890:	48 8b 33             	mov    (%rbx),%rsi
  400893:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400898:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40089c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  4008a1:	b0 01                	mov    $0x1,%al
  4008a3:	e8 d8 fc ff ff       	callq  400580 <printf@plt>
  4008a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ac:	48 85 db             	test   %rbx,%rbx
  4008af:	75 df                	jne    400890 <print+0x20>
  4008b1:	5b                   	pop    %rbx
  4008b2:	c3                   	retq   
  4008b3:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  4008b8:	e8 b3 fc ff ff       	callq  400570 <puts@plt>
  4008bd:	5b                   	pop    %rbx
  4008be:	c3                   	retq   
  4008bf:	90                   	nop

00000000004008c0 <main>:
  4008c0:	41 57                	push   %r15
  4008c2:	41 56                	push   %r14
  4008c4:	41 54                	push   %r12
  4008c6:	53                   	push   %rbx
  4008c7:	48 83 ec 18          	sub    $0x18,%rsp
  4008cb:	bf 10 0d 40 00       	mov    $0x400d10,%edi
  4008d0:	e8 9b fc ff ff       	callq  400570 <puts@plt>
  4008d5:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  4008da:	e8 91 fc ff ff       	callq  400570 <puts@plt>
  4008df:	31 ff                	xor    %edi,%edi
  4008e1:	e8 3a fe ff ff       	callq  400720 <create>
  4008e6:	49 89 c4             	mov    %rax,%r12
  4008e9:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  4008ee:	e8 7d fc ff ff       	callq  400570 <puts@plt>
  4008f3:	4d 85 e4             	test   %r12,%r12
  4008f6:	74 3b                	je     400933 <main+0x73>
  4008f8:	8b 35 6e 17 20 00    	mov    0x20176e(%rip),%esi        # 60206c <n>
  4008fe:	bf 4b 0c 40 00       	mov    $0x400c4b,%edi
  400903:	31 c0                	xor    %eax,%eax
  400905:	e8 76 fc ff ff       	callq  400580 <printf@plt>
  40090a:	4c 89 e3             	mov    %r12,%rbx
  40090d:	0f 1f 00             	nopl   (%rax)
  400910:	48 8b 33             	mov    (%rbx),%rsi
  400913:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400918:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40091c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400921:	b0 01                	mov    $0x1,%al
  400923:	e8 58 fc ff ff       	callq  400580 <printf@plt>
  400928:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40092c:	48 85 db             	test   %rbx,%rbx
  40092f:	75 df                	jne    400910 <main+0x50>
  400931:	eb 0a                	jmp    40093d <main+0x7d>
  400933:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400938:	e8 33 fc ff ff       	callq  400570 <puts@plt>
  40093d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400942:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40094e:	00 00 
  400950:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  400955:	e8 16 fc ff ff       	callq  400570 <puts@plt>
  40095a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400961:	ff 
  400962:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400967:	31 c0                	xor    %eax,%eax
  400969:	e8 12 fc ff ff       	callq  400580 <printf@plt>
  40096e:	bf 83 0c 40 00       	mov    $0x400c83,%edi
  400973:	31 c0                	xor    %eax,%eax
  400975:	4c 89 f6             	mov    %r14,%rsi
  400978:	e8 33 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40097d:	48 8b 3d dc 16 20 00 	mov    0x2016dc(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400984:	e8 17 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400989:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40098d:	83 f8 02             	cmp    $0x2,%eax
  400990:	74 7e                	je     400a10 <main+0x150>
  400992:	83 f8 01             	cmp    $0x1,%eax
  400995:	0f 85 09 02 00 00    	jne    400ba4 <main+0x2e4>
  40099b:	bf 86 0c 40 00       	mov    $0x400c86,%edi
  4009a0:	31 c0                	xor    %eax,%eax
  4009a2:	e8 d9 fb ff ff       	callq  400580 <printf@plt>
  4009a7:	bf 18 00 00 00       	mov    $0x18,%edi
  4009ac:	e8 df fb ff ff       	callq  400590 <malloc@plt>
  4009b1:	48 89 c3             	mov    %rax,%rbx
  4009b4:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  4009b9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009bd:	31 c0                	xor    %eax,%eax
  4009bf:	48 89 de             	mov    %rbx,%rsi
  4009c2:	e8 e9 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009c7:	4d 85 e4             	test   %r12,%r12
  4009ca:	0f 84 ab 00 00 00    	je     400a7b <main+0x1bb>
  4009d0:	48 8b 33             	mov    (%rbx),%rsi
  4009d3:	4c 89 e0             	mov    %r12,%rax
  4009d6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009da:	0f 8e c1 00 00 00    	jle    400aa1 <main+0x1e1>
  4009e0:	48 89 c1             	mov    %rax,%rcx
  4009e3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009e7:	48 85 c0             	test   %rax,%rax
  4009ea:	0f 84 ba 00 00 00    	je     400aaa <main+0x1ea>
  4009f0:	48 3b 30             	cmp    (%rax),%rsi
  4009f3:	7f eb                	jg     4009e0 <main+0x120>
  4009f5:	4c 39 e0             	cmp    %r12,%rax
  4009f8:	0f 84 a3 00 00 00    	je     400aa1 <main+0x1e1>
  4009fe:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a02:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a06:	e9 b5 00 00 00       	jmpq   400ac0 <main+0x200>
  400a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a10:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  400a15:	31 c0                	xor    %eax,%eax
  400a17:	e8 64 fb ff ff       	callq  400580 <printf@plt>
  400a1c:	bf c2 0c 40 00       	mov    $0x400cc2,%edi
  400a21:	31 c0                	xor    %eax,%eax
  400a23:	4c 89 fe             	mov    %r15,%rsi
  400a26:	e8 85 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a2b:	4d 85 e4             	test   %r12,%r12
  400a2e:	74 62                	je     400a92 <main+0x1d2>
  400a30:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a35:	49 39 04 24          	cmp    %rax,(%r12)
  400a39:	4c 89 e7             	mov    %r12,%rdi
  400a3c:	75 12                	jne    400a50 <main+0x190>
  400a3e:	4c 89 e7             	mov    %r12,%rdi
  400a41:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a46:	e9 fa 00 00 00       	jmpq   400b45 <main+0x285>
  400a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a50:	48 89 f9             	mov    %rdi,%rcx
  400a53:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a57:	48 85 ff             	test   %rdi,%rdi
  400a5a:	0f 84 b6 00 00 00    	je     400b16 <main+0x256>
  400a60:	48 39 07             	cmp    %rax,(%rdi)
  400a63:	75 eb                	jne    400a50 <main+0x190>
  400a65:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a69:	4c 39 e7             	cmp    %r12,%rdi
  400a6c:	0f 84 cd 00 00 00    	je     400b3f <main+0x27f>
  400a72:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400a76:	e9 ca 00 00 00       	jmpq   400b45 <main+0x285>
  400a7b:	83 05 ea 15 20 00 01 	addl   $0x1,0x2015ea(%rip)        # 60206c <n>
  400a82:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a89:	00 
  400a8a:	48 8b 33             	mov    (%rbx),%rsi
  400a8d:	49 89 dc             	mov    %rbx,%r12
  400a90:	eb 2e                	jmp    400ac0 <main+0x200>
  400a92:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400a97:	e8 d4 fa ff ff       	callq  400570 <puts@plt>
  400a9c:	e9 8f 00 00 00       	jmpq   400b30 <main+0x270>
  400aa1:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400aa5:	49 89 dc             	mov    %rbx,%r12
  400aa8:	eb 16                	jmp    400ac0 <main+0x200>
  400aaa:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400aae:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400ab5:	00 
  400ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400abd:	00 00 00 
  400ac0:	83 05 a5 15 20 00 01 	addl   $0x1,0x2015a5(%rip)        # 60206c <n>
  400ac7:	bf a2 0c 40 00       	mov    $0x400ca2,%edi
  400acc:	31 c0                	xor    %eax,%eax
  400ace:	e8 ad fa ff ff       	callq  400580 <printf@plt>
  400ad3:	4d 85 e4             	test   %r12,%r12
  400ad6:	74 58                	je     400b30 <main+0x270>
  400ad8:	8b 35 8e 15 20 00    	mov    0x20158e(%rip),%esi        # 60206c <n>
  400ade:	bf 4b 0c 40 00       	mov    $0x400c4b,%edi
  400ae3:	31 c0                	xor    %eax,%eax
  400ae5:	e8 96 fa ff ff       	callq  400580 <printf@plt>
  400aea:	4c 89 e3             	mov    %r12,%rbx
  400aed:	0f 1f 00             	nopl   (%rax)
  400af0:	48 8b 33             	mov    (%rbx),%rsi
  400af3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400af8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400afc:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400b01:	b0 01                	mov    $0x1,%al
  400b03:	e8 78 fa ff ff       	callq  400580 <printf@plt>
  400b08:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b0c:	48 85 db             	test   %rbx,%rbx
  400b0f:	75 df                	jne    400af0 <main+0x230>
  400b11:	e9 8a 00 00 00       	jmpq   400ba0 <main+0x2e0>
  400b16:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400b1b:	e8 50 fa ff ff       	callq  400570 <puts@plt>
  400b20:	4d 85 e4             	test   %r12,%r12
  400b23:	75 31                	jne    400b56 <main+0x296>
  400b25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400b2c:	00 00 00 00 
  400b30:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400b35:	e8 36 fa ff ff       	callq  400570 <puts@plt>
  400b3a:	45 31 e4             	xor    %r12d,%r12d
  400b3d:	eb 61                	jmp    400ba0 <main+0x2e0>
  400b3f:	4c 89 e7             	mov    %r12,%rdi
  400b42:	49 89 c4             	mov    %rax,%r12
  400b45:	e8 16 fa ff ff       	callq  400560 <free@plt>
  400b4a:	83 05 1b 15 20 00 ff 	addl   $0xffffffff,0x20151b(%rip)        # 60206c <n>
  400b51:	4d 85 e4             	test   %r12,%r12
  400b54:	74 da                	je     400b30 <main+0x270>
  400b56:	8b 35 10 15 20 00    	mov    0x201510(%rip),%esi        # 60206c <n>
  400b5c:	bf 4b 0c 40 00       	mov    $0x400c4b,%edi
  400b61:	31 c0                	xor    %eax,%eax
  400b63:	e8 18 fa ff ff       	callq  400580 <printf@plt>
  400b68:	4c 89 e3             	mov    %r12,%rbx
  400b6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b70:	48 8b 33             	mov    (%rbx),%rsi
  400b73:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b78:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b7c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400b81:	b0 01                	mov    $0x1,%al
  400b83:	e8 f8 f9 ff ff       	callq  400580 <printf@plt>
  400b88:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b8c:	48 85 db             	test   %rbx,%rbx
  400b8f:	75 df                	jne    400b70 <main+0x2b0>
  400b91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b98:	0f 1f 84 00 00 00 00 
  400b9f:	00 
  400ba0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400ba4:	85 c0                	test   %eax,%eax
  400ba6:	0f 85 a4 fd ff ff    	jne    400950 <main+0x90>
  400bac:	31 c0                	xor    %eax,%eax
  400bae:	48 83 c4 18          	add    $0x18,%rsp
  400bb2:	5b                   	pop    %rbx
  400bb3:	41 5c                	pop    %r12
  400bb5:	41 5e                	pop    %r14
  400bb7:	41 5f                	pop    %r15
  400bb9:	c3                   	retq   
  400bba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400bc0 <__libc_csu_init>:
  400bc0:	41 57                	push   %r15
  400bc2:	41 56                	push   %r14
  400bc4:	49 89 d7             	mov    %rdx,%r15
  400bc7:	41 55                	push   %r13
  400bc9:	41 54                	push   %r12
  400bcb:	4c 8d 25 2e 12 20 00 	lea    0x20122e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bd2:	55                   	push   %rbp
  400bd3:	48 8d 2d 2e 12 20 00 	lea    0x20122e(%rip),%rbp        # 601e08 <__init_array_end>
  400bda:	53                   	push   %rbx
  400bdb:	41 89 fd             	mov    %edi,%r13d
  400bde:	49 89 f6             	mov    %rsi,%r14
  400be1:	4c 29 e5             	sub    %r12,%rbp
  400be4:	48 83 ec 08          	sub    $0x8,%rsp
  400be8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bec:	e8 3f f9 ff ff       	callq  400530 <_init>
  400bf1:	48 85 ed             	test   %rbp,%rbp
  400bf4:	74 20                	je     400c16 <__libc_csu_init+0x56>
  400bf6:	31 db                	xor    %ebx,%ebx
  400bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bff:	00 
  400c00:	4c 89 fa             	mov    %r15,%rdx
  400c03:	4c 89 f6             	mov    %r14,%rsi
  400c06:	44 89 ef             	mov    %r13d,%edi
  400c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c0d:	48 83 c3 01          	add    $0x1,%rbx
  400c11:	48 39 dd             	cmp    %rbx,%rbp
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x40>
  400c16:	48 83 c4 08          	add    $0x8,%rsp
  400c1a:	5b                   	pop    %rbx
  400c1b:	5d                   	pop    %rbp
  400c1c:	41 5c                	pop    %r12
  400c1e:	41 5d                	pop    %r13
  400c20:	41 5e                	pop    %r14
  400c22:	41 5f                	pop    %r15
  400c24:	c3                   	retq   
  400c25:	90                   	nop
  400c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c2d:	00 00 00 

0000000000400c30 <__libc_csu_fini>:
  400c30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c34 <_fini>:
  400c34:	48 83 ec 08          	sub    $0x8,%rsp
  400c38:	48 83 c4 08          	add    $0x8,%rsp
  400c3c:	c3                   	retq   
