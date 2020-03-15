
c/19020031089_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 1a 20 00 	mov    0x201afd(%rip),%rax        # 601ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 1a 20 00    	pushq  0x201af2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 1a 20 00    	jmpq   *0x201af4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <puts@plt>:
  400530:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <printf@plt>:
  400540:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <malloc@plt>:
  400550:	ff 25 da 1a 20 00    	jmpq   *0x201ada(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <exit@plt>:
  400570:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602040 <exit@GLIBC_2.2.5>
  400576:	68 05 00 00 00       	pushq  $0x5
  40057b:	e9 90 ff ff ff       	jmpq   400510 <.plt>

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	31 ed                	xor    %ebp,%ebp
  400582:	49 89 d1             	mov    %rdx,%r9
  400585:	5e                   	pop    %rsi
  400586:	48 89 e2             	mov    %rsp,%rdx
  400589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40058d:	50                   	push   %rax
  40058e:	54                   	push   %rsp
  40058f:	49 c7 c0 f0 0a 40 00 	mov    $0x400af0,%r8
  400596:	48 c7 c1 80 0a 40 00 	mov    $0x400a80,%rcx
  40059d:	48 c7 c7 70 06 40 00 	mov    $0x400670,%rdi
  4005a4:	ff 15 46 1a 20 00    	callq  *0x201a46(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005c6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 20 60 00       	mov    $0x602058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 20 60 00       	mov    $0x602058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  4005fd:	48 89 e5             	mov    %rsp,%rbp
  400600:	48 c1 fe 03          	sar    $0x3,%rsi
  400604:	48 89 f0             	mov    %rsi,%rax
  400607:	48 c1 e8 3f          	shr    $0x3f,%rax
  40060b:	48 01 c6             	add    %rax,%rsi
  40060e:	48 d1 fe             	sar    %rsi
  400611:	74 15                	je     400628 <register_tm_clones+0x38>
  400613:	b8 00 00 00 00       	mov    $0x0,%eax
  400618:	48 85 c0             	test   %rax,%rax
  40061b:	74 0b                	je     400628 <register_tm_clones+0x38>
  40061d:	5d                   	pop    %rbp
  40061e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 1a 20 00 00 	cmpb   $0x0,0x201a21(%rip)        # 602058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 1a 20 00 01 	movb   $0x1,0x201a0f(%rip)        # 602058 <__TMC_END__>
  400649:	5d                   	pop    %rbp
  40064a:	c3                   	retq   
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400650:	f3 c3                	repz retq 
  400652:	0f 1f 40 00          	nopl   0x0(%rax)
  400656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40065d:	00 00 00 

0000000000400660 <frame_dummy>:
  400660:	55                   	push   %rbp
  400661:	48 89 e5             	mov    %rsp,%rbp
  400664:	5d                   	pop    %rbp
  400665:	eb 89                	jmp    4005f0 <register_tm_clones>
  400667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40066e:	00 00 

0000000000400670 <main>:
  400670:	41 57                	push   %r15
  400672:	41 56                	push   %r14
  400674:	41 54                	push   %r12
  400676:	53                   	push   %rbx
  400677:	50                   	push   %rax
  400678:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  40067d:	49 89 e6             	mov    %rsp,%r14
  400680:	45 31 e4             	xor    %r12d,%r12d
  400683:	e9 a8 01 00 00       	jmpq   400830 <main+0x1c0>
  400688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40068f:	00 
  400690:	bf f0 0b 40 00       	mov    $0x400bf0,%edi
  400695:	e8 96 fe ff ff       	callq  400530 <puts@plt>
  40069a:	e8 f1 01 00 00       	callq  400890 <create>
  40069f:	49 89 c4             	mov    %rax,%r12
  4006a2:	e9 49 01 00 00       	jmpq   4007f0 <main+0x180>
  4006a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ae:	00 00 
  4006b0:	bf 4d 0b 40 00       	mov    $0x400b4d,%edi
  4006b5:	e8 76 fe ff ff       	callq  400530 <puts@plt>
  4006ba:	e9 31 01 00 00       	jmpq   4007f0 <main+0x180>
  4006bf:	90                   	nop
  4006c0:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  4006c5:	e8 66 fe ff ff       	callq  400530 <puts@plt>
  4006ca:	bf 28 0b 40 00       	mov    $0x400b28,%edi
  4006cf:	31 c0                	xor    %eax,%eax
  4006d1:	4c 89 f6             	mov    %r14,%rsi
  4006d4:	e8 87 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  4006d9:	4d 85 e4             	test   %r12,%r12
  4006dc:	0f 84 8c 00 00 00    	je     40076e <main+0xfe>
  4006e2:	8b 04 24             	mov    (%rsp),%eax
  4006e5:	41 39 04 24          	cmp    %eax,(%r12)
  4006e9:	4c 89 e1             	mov    %r12,%rcx
  4006ec:	75 12                	jne    400700 <main+0x90>
  4006ee:	4d 8b 64 24 08       	mov    0x8(%r12),%r12
  4006f3:	83 05 62 19 20 00 ff 	addl   $0xffffffff,0x201962(%rip)        # 60205c <n>
  4006fa:	e9 f1 00 00 00       	jmpq   4007f0 <main+0x180>
  4006ff:	90                   	nop
  400700:	48 89 ca             	mov    %rcx,%rdx
  400703:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  400707:	48 85 c9             	test   %rcx,%rcx
  40070a:	0f 84 b9 00 00 00    	je     4007c9 <main+0x159>
  400710:	39 01                	cmp    %eax,(%rcx)
  400712:	7c ec                	jl     400700 <main+0x90>
  400714:	48 8b 41 08          	mov    0x8(%rcx),%rax
  400718:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40071c:	83 05 39 19 20 00 ff 	addl   $0xffffffff,0x201939(%rip)        # 60205c <n>
  400723:	e9 c8 00 00 00       	jmpq   4007f0 <main+0x180>
  400728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40072f:	00 
  400730:	bf f0 0b 40 00       	mov    $0x400bf0,%edi
  400735:	e8 f6 fd ff ff       	callq  400530 <puts@plt>
  40073a:	48 89 da             	mov    %rbx,%rdx
  40073d:	48 83 c2 04          	add    $0x4,%rdx
  400741:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  400746:	31 c0                	xor    %eax,%eax
  400748:	48 89 de             	mov    %rbx,%rsi
  40074b:	e8 10 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  400750:	8b 0b                	mov    (%rbx),%ecx
  400752:	85 c9                	test   %ecx,%ecx
  400754:	0f 84 96 00 00 00    	je     4007f0 <main+0x180>
  40075a:	4d 85 e4             	test   %r12,%r12
  40075d:	74 0a                	je     400769 <main+0xf9>
  40075f:	41 39 0c 24          	cmp    %ecx,(%r12)
  400763:	7e 26                	jle    40078b <main+0x11b>
  400765:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  400769:	49 89 dc             	mov    %rbx,%r12
  40076c:	eb 52                	jmp    4007c0 <main+0x150>
  40076e:	83 05 e7 18 20 00 01 	addl   $0x1,0x2018e7(%rip)        # 60205c <n>
  400775:	bf 40 0c 40 00       	mov    $0x400c40,%edi
  40077a:	e8 b1 fd ff ff       	callq  400530 <puts@plt>
  40077f:	83 05 d6 18 20 00 ff 	addl   $0xffffffff,0x2018d6(%rip)        # 60205c <n>
  400786:	45 31 e4             	xor    %r12d,%r12d
  400789:	eb 65                	jmp    4007f0 <main+0x180>
  40078b:	49 8d 44 24 08       	lea    0x8(%r12),%rax
  400790:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
  400795:	48 85 d2             	test   %rdx,%rdx
  400798:	74 1d                	je     4007b7 <main+0x147>
  40079a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007a0:	39 0a                	cmp    %ecx,(%rdx)
  4007a2:	7d 15                	jge    4007b9 <main+0x149>
  4007a4:	48 89 d0             	mov    %rdx,%rax
  4007a7:	48 8b 72 08          	mov    0x8(%rdx),%rsi
  4007ab:	48 83 c0 08          	add    $0x8,%rax
  4007af:	48 89 f2             	mov    %rsi,%rdx
  4007b2:	48 85 f6             	test   %rsi,%rsi
  4007b5:	75 e9                	jne    4007a0 <main+0x130>
  4007b7:	31 d2                	xor    %edx,%edx
  4007b9:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  4007bd:	48 89 18             	mov    %rbx,(%rax)
  4007c0:	83 05 95 18 20 00 01 	addl   $0x1,0x201895(%rip)        # 60205c <n>
  4007c7:	eb 27                	jmp    4007f0 <main+0x180>
  4007c9:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  4007ce:	e8 5d fd ff ff       	callq  400530 <puts@plt>
  4007d3:	83 05 82 18 20 00 01 	addl   $0x1,0x201882(%rip)        # 60205c <n>
  4007da:	83 05 7b 18 20 00 ff 	addl   $0xffffffff,0x20187b(%rip)        # 60205c <n>
  4007e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007e8:	0f 1f 84 00 00 00 00 
  4007ef:	00 
  4007f0:	8b 35 66 18 20 00    	mov    0x201866(%rip),%esi        # 60205c <n>
  4007f6:	bf 30 0b 40 00       	mov    $0x400b30,%edi
  4007fb:	31 c0                	xor    %eax,%eax
  4007fd:	e8 3e fd ff ff       	callq  400540 <printf@plt>
  400802:	4d 85 e4             	test   %r12,%r12
  400805:	74 29                	je     400830 <main+0x1c0>
  400807:	4c 89 e3             	mov    %r12,%rbx
  40080a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400810:	8b 33                	mov    (%rbx),%esi
  400812:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400817:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40081b:	bf 44 0b 40 00       	mov    $0x400b44,%edi
  400820:	b0 01                	mov    $0x1,%al
  400822:	e8 19 fd ff ff       	callq  400540 <printf@plt>
  400827:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  40082b:	48 85 db             	test   %rbx,%rbx
  40082e:	75 e0                	jne    400810 <main+0x1a0>
  400830:	bf 10 00 00 00       	mov    $0x10,%edi
  400835:	e8 16 fd ff ff       	callq  400550 <malloc@plt>
  40083a:	48 89 c3             	mov    %rax,%rbx
  40083d:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  400844:	00 
  400845:	bf 60 0b 40 00       	mov    $0x400b60,%edi
  40084a:	e8 e1 fc ff ff       	callq  400530 <puts@plt>
  40084f:	bf 80 0b 40 00       	mov    $0x400b80,%edi
  400854:	e8 d7 fc ff ff       	callq  400530 <puts@plt>
  400859:	bf 28 0b 40 00       	mov    $0x400b28,%edi
  40085e:	31 c0                	xor    %eax,%eax
  400860:	4c 89 fe             	mov    %r15,%rsi
  400863:	e8 f8 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  400868:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40086c:	48 83 f8 03          	cmp    $0x3,%rax
  400870:	0f 87 3a fe ff ff    	ja     4006b0 <main+0x40>
  400876:	ff 24 c5 08 0b 40 00 	jmpq   *0x400b08(,%rax,8)
  40087d:	31 ff                	xor    %edi,%edi
  40087f:	e8 ec fc ff ff       	callq  400570 <exit@plt>
  400884:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088b:	00 00 00 00 00 

0000000000400890 <create>:
  400890:	41 56                	push   %r14
  400892:	53                   	push   %rbx
  400893:	50                   	push   %rax
  400894:	bf 10 00 00 00       	mov    $0x10,%edi
  400899:	e8 b2 fc ff ff       	callq  400550 <malloc@plt>
  40089e:	48 89 c3             	mov    %rax,%rbx
  4008a1:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  4008a8:	00 
  4008a9:	48 8d 53 04          	lea    0x4(%rbx),%rdx
  4008ad:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  4008b2:	31 c0                	xor    %eax,%eax
  4008b4:	48 89 de             	mov    %rbx,%rsi
  4008b7:	e8 a4 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  4008bc:	8b 03                	mov    (%rbx),%eax
  4008be:	45 31 f6             	xor    %r14d,%r14d
  4008c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008c8:	0f 1f 84 00 00 00 00 
  4008cf:	00 
  4008d0:	85 c0                	test   %eax,%eax
  4008d2:	74 53                	je     400927 <create+0x97>
  4008d4:	4d 85 f6             	test   %r14,%r14
  4008d7:	74 09                	je     4008e2 <create+0x52>
  4008d9:	41 39 06             	cmp    %eax,(%r14)
  4008dc:	7e 09                	jle    4008e7 <create+0x57>
  4008de:	4c 89 73 08          	mov    %r14,0x8(%rbx)
  4008e2:	49 89 de             	mov    %rbx,%r14
  4008e5:	eb 39                	jmp    400920 <create+0x90>
  4008e7:	49 8d 4e 08          	lea    0x8(%r14),%rcx
  4008eb:	49 8b 56 08          	mov    0x8(%r14),%rdx
  4008ef:	48 85 d2             	test   %rdx,%rdx
  4008f2:	74 23                	je     400917 <create+0x87>
  4008f4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008fb:	00 00 00 00 00 
  400900:	39 02                	cmp    %eax,(%rdx)
  400902:	7d 15                	jge    400919 <create+0x89>
  400904:	48 89 d1             	mov    %rdx,%rcx
  400907:	48 8b 72 08          	mov    0x8(%rdx),%rsi
  40090b:	48 83 c1 08          	add    $0x8,%rcx
  40090f:	48 89 f2             	mov    %rsi,%rdx
  400912:	48 85 f6             	test   %rsi,%rsi
  400915:	75 e9                	jne    400900 <create+0x70>
  400917:	31 d2                	xor    %edx,%edx
  400919:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  40091d:	48 89 19             	mov    %rbx,(%rcx)
  400920:	83 05 35 17 20 00 01 	addl   $0x1,0x201735(%rip)        # 60205c <n>
  400927:	bf 10 00 00 00       	mov    $0x10,%edi
  40092c:	e8 1f fc ff ff       	callq  400550 <malloc@plt>
  400931:	48 89 c3             	mov    %rax,%rbx
  400934:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  40093b:	00 
  40093c:	48 8d 53 04          	lea    0x4(%rbx),%rdx
  400940:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  400945:	31 c0                	xor    %eax,%eax
  400947:	48 89 de             	mov    %rbx,%rsi
  40094a:	e8 11 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  40094f:	8b 03                	mov    (%rbx),%eax
  400951:	85 c0                	test   %eax,%eax
  400953:	0f 85 77 ff ff ff    	jne    4008d0 <create+0x40>
  400959:	48 89 df             	mov    %rbx,%rdi
  40095c:	e8 bf fb ff ff       	callq  400520 <free@plt>
  400961:	4c 89 f0             	mov    %r14,%rax
  400964:	48 83 c4 08          	add    $0x8,%rsp
  400968:	5b                   	pop    %rbx
  400969:	41 5e                	pop    %r14
  40096b:	c3                   	retq   
  40096c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400970 <delect>:
  400970:	53                   	push   %rbx
  400971:	48 89 fb             	mov    %rdi,%rbx
  400974:	48 85 db             	test   %rbx,%rbx
  400977:	74 0a                	je     400983 <delect+0x13>
  400979:	39 33                	cmp    %esi,(%rbx)
  40097b:	75 1b                	jne    400998 <delect+0x28>
  40097d:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400981:	eb 48                	jmp    4009cb <delect+0x5b>
  400983:	83 05 d2 16 20 00 01 	addl   $0x1,0x2016d2(%rip)        # 60205c <n>
  40098a:	bf 40 0c 40 00       	mov    $0x400c40,%edi
  40098f:	e8 9c fb ff ff       	callq  400530 <puts@plt>
  400994:	31 db                	xor    %ebx,%ebx
  400996:	eb 33                	jmp    4009cb <delect+0x5b>
  400998:	48 89 d9             	mov    %rbx,%rcx
  40099b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009a0:	48 89 c8             	mov    %rcx,%rax
  4009a3:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4009a7:	48 85 c9             	test   %rcx,%rcx
  4009aa:	74 0e                	je     4009ba <delect+0x4a>
  4009ac:	39 31                	cmp    %esi,(%rcx)
  4009ae:	7c f0                	jl     4009a0 <delect+0x30>
  4009b0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4009b4:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4009b8:	eb 11                	jmp    4009cb <delect+0x5b>
  4009ba:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  4009bf:	e8 6c fb ff ff       	callq  400530 <puts@plt>
  4009c4:	83 05 91 16 20 00 01 	addl   $0x1,0x201691(%rip)        # 60205c <n>
  4009cb:	83 05 8a 16 20 00 ff 	addl   $0xffffffff,0x20168a(%rip)        # 60205c <n>
  4009d2:	48 89 d8             	mov    %rbx,%rax
  4009d5:	5b                   	pop    %rbx
  4009d6:	c3                   	retq   
  4009d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009de:	00 00 

00000000004009e0 <insert>:
  4009e0:	44 8b 06             	mov    (%rsi),%r8d
  4009e3:	45 85 c0             	test   %r8d,%r8d
  4009e6:	74 50                	je     400a38 <insert+0x58>
  4009e8:	48 85 ff             	test   %rdi,%rdi
  4009eb:	74 09                	je     4009f6 <insert+0x16>
  4009ed:	44 39 07             	cmp    %r8d,(%rdi)
  4009f0:	7e 09                	jle    4009fb <insert+0x1b>
  4009f2:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
  4009f6:	48 89 f7             	mov    %rsi,%rdi
  4009f9:	eb 36                	jmp    400a31 <insert+0x51>
  4009fb:	48 8d 47 08          	lea    0x8(%rdi),%rax
  4009ff:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  400a03:	48 85 d2             	test   %rdx,%rdx
  400a06:	74 20                	je     400a28 <insert+0x48>
  400a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a0f:	00 
  400a10:	44 39 02             	cmp    %r8d,(%rdx)
  400a13:	7d 15                	jge    400a2a <insert+0x4a>
  400a15:	48 89 d0             	mov    %rdx,%rax
  400a18:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  400a1c:	48 83 c0 08          	add    $0x8,%rax
  400a20:	48 89 ca             	mov    %rcx,%rdx
  400a23:	48 85 c9             	test   %rcx,%rcx
  400a26:	75 e8                	jne    400a10 <insert+0x30>
  400a28:	31 d2                	xor    %edx,%edx
  400a2a:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  400a2e:	48 89 30             	mov    %rsi,(%rax)
  400a31:	83 05 24 16 20 00 01 	addl   $0x1,0x201624(%rip)        # 60205c <n>
  400a38:	48 89 f8             	mov    %rdi,%rax
  400a3b:	c3                   	retq   
  400a3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a40 <output>:
  400a40:	53                   	push   %rbx
  400a41:	48 89 fb             	mov    %rdi,%rbx
  400a44:	48 85 db             	test   %rbx,%rbx
  400a47:	74 27                	je     400a70 <output+0x30>
  400a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a50:	8b 33                	mov    (%rbx),%esi
  400a52:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400a57:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a5b:	bf 44 0b 40 00       	mov    $0x400b44,%edi
  400a60:	b0 01                	mov    $0x1,%al
  400a62:	e8 d9 fa ff ff       	callq  400540 <printf@plt>
  400a67:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400a6b:	48 85 db             	test   %rbx,%rbx
  400a6e:	75 e0                	jne    400a50 <output+0x10>
  400a70:	5b                   	pop    %rbx
  400a71:	c3                   	retq   
  400a72:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a79:	00 00 00 
  400a7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a80 <__libc_csu_init>:
  400a80:	41 57                	push   %r15
  400a82:	41 56                	push   %r14
  400a84:	49 89 d7             	mov    %rdx,%r15
  400a87:	41 55                	push   %r13
  400a89:	41 54                	push   %r12
  400a8b:	4c 8d 25 6e 13 20 00 	lea    0x20136e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400a92:	55                   	push   %rbp
  400a93:	48 8d 2d 6e 13 20 00 	lea    0x20136e(%rip),%rbp        # 601e08 <__init_array_end>
  400a9a:	53                   	push   %rbx
  400a9b:	41 89 fd             	mov    %edi,%r13d
  400a9e:	49 89 f6             	mov    %rsi,%r14
  400aa1:	4c 29 e5             	sub    %r12,%rbp
  400aa4:	48 83 ec 08          	sub    $0x8,%rsp
  400aa8:	48 c1 fd 03          	sar    $0x3,%rbp
  400aac:	e8 3f fa ff ff       	callq  4004f0 <_init>
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
