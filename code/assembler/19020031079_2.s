
c/19020031079_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e0 <_init>:
  4004e0:	48 83 ec 08          	sub    $0x8,%rsp
  4004e4:	48 8b 05 0d 1b 20 00 	mov    0x201b0d(%rip),%rax        # 601ff8 <__gmon_start__>
  4004eb:	48 85 c0             	test   %rax,%rax
  4004ee:	74 02                	je     4004f2 <_init+0x12>
  4004f0:	ff d0                	callq  *%rax
  4004f2:	48 83 c4 08          	add    $0x8,%rsp
  4004f6:	c3                   	retq   

Disassembly of section .plt:

0000000000400500 <.plt>:
  400500:	ff 35 02 1b 20 00    	pushq  0x201b02(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400506:	ff 25 04 1b 20 00    	jmpq   *0x201b04(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40050c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400510 <free@plt>:
  400510:	ff 25 02 1b 20 00    	jmpq   *0x201b02(%rip)        # 602018 <free@GLIBC_2.2.5>
  400516:	68 00 00 00 00       	pushq  $0x0
  40051b:	e9 e0 ff ff ff       	jmpq   400500 <.plt>

0000000000400520 <puts@plt>:
  400520:	ff 25 fa 1a 20 00    	jmpq   *0x201afa(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400526:	68 01 00 00 00       	pushq  $0x1
  40052b:	e9 d0 ff ff ff       	jmpq   400500 <.plt>

0000000000400530 <printf@plt>:
  400530:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400536:	68 02 00 00 00       	pushq  $0x2
  40053b:	e9 c0 ff ff ff       	jmpq   400500 <.plt>

0000000000400540 <malloc@plt>:
  400540:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400546:	68 03 00 00 00       	pushq  $0x3
  40054b:	e9 b0 ff ff ff       	jmpq   400500 <.plt>

0000000000400550 <__isoc99_scanf@plt>:
  400550:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400556:	68 04 00 00 00       	pushq  $0x4
  40055b:	e9 a0 ff ff ff       	jmpq   400500 <.plt>

Disassembly of section .text:

0000000000400560 <_start>:
  400560:	31 ed                	xor    %ebp,%ebp
  400562:	49 89 d1             	mov    %rdx,%r9
  400565:	5e                   	pop    %rsi
  400566:	48 89 e2             	mov    %rsp,%rdx
  400569:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40056d:	50                   	push   %rax
  40056e:	54                   	push   %rsp
  40056f:	49 c7 c0 60 0b 40 00 	mov    $0x400b60,%r8
  400576:	48 c7 c1 f0 0a 40 00 	mov    $0x400af0,%rcx
  40057d:	48 c7 c7 50 06 40 00 	mov    $0x400650,%rdi
  400584:	ff 15 66 1a 20 00    	callq  *0x201a66(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40058a:	f4                   	hlt    
  40058b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400590 <_dl_relocate_static_pie>:
  400590:	f3 c3                	repz retq 
  400592:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400599:	00 00 00 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <deregister_tm_clones>:
  4005a0:	55                   	push   %rbp
  4005a1:	b8 50 20 60 00       	mov    $0x602050,%eax
  4005a6:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  4005ac:	48 89 e5             	mov    %rsp,%rbp
  4005af:	74 17                	je     4005c8 <deregister_tm_clones+0x28>
  4005b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b6:	48 85 c0             	test   %rax,%rax
  4005b9:	74 0d                	je     4005c8 <deregister_tm_clones+0x28>
  4005bb:	5d                   	pop    %rbp
  4005bc:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005c1:	ff e0                	jmpq   *%rax
  4005c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c8:	5d                   	pop    %rbp
  4005c9:	c3                   	retq   
  4005ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005d0 <register_tm_clones>:
  4005d0:	be 50 20 60 00       	mov    $0x602050,%esi
  4005d5:	55                   	push   %rbp
  4005d6:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  4005dd:	48 89 e5             	mov    %rsp,%rbp
  4005e0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005e4:	48 89 f0             	mov    %rsi,%rax
  4005e7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005eb:	48 01 c6             	add    %rax,%rsi
  4005ee:	48 d1 fe             	sar    %rsi
  4005f1:	74 15                	je     400608 <register_tm_clones+0x38>
  4005f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f8:	48 85 c0             	test   %rax,%rax
  4005fb:	74 0b                	je     400608 <register_tm_clones+0x38>
  4005fd:	5d                   	pop    %rbp
  4005fe:	bf 50 20 60 00       	mov    $0x602050,%edi
  400603:	ff e0                	jmpq   *%rax
  400605:	0f 1f 00             	nopl   (%rax)
  400608:	5d                   	pop    %rbp
  400609:	c3                   	retq   
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400610 <__do_global_dtors_aux>:
  400610:	80 3d 39 1a 20 00 00 	cmpb   $0x0,0x201a39(%rip)        # 602050 <__TMC_END__>
  400617:	75 17                	jne    400630 <__do_global_dtors_aux+0x20>
  400619:	55                   	push   %rbp
  40061a:	48 89 e5             	mov    %rsp,%rbp
  40061d:	e8 7e ff ff ff       	callq  4005a0 <deregister_tm_clones>
  400622:	c6 05 27 1a 20 00 01 	movb   $0x1,0x201a27(%rip)        # 602050 <__TMC_END__>
  400629:	5d                   	pop    %rbp
  40062a:	c3                   	retq   
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400630:	f3 c3                	repz retq 
  400632:	0f 1f 40 00          	nopl   0x0(%rax)
  400636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40063d:	00 00 00 

0000000000400640 <frame_dummy>:
  400640:	55                   	push   %rbp
  400641:	48 89 e5             	mov    %rsp,%rbp
  400644:	5d                   	pop    %rbp
  400645:	eb 89                	jmp    4005d0 <register_tm_clones>
  400647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40064e:	00 00 

0000000000400650 <main>:
  400650:	55                   	push   %rbp
  400651:	41 57                	push   %r15
  400653:	41 56                	push   %r14
  400655:	41 55                	push   %r13
  400657:	41 54                	push   %r12
  400659:	53                   	push   %rbx
  40065a:	48 83 ec 18          	sub    $0x18,%rsp
  40065e:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  400663:	e8 b8 fe ff ff       	callq  400520 <puts@plt>
  400668:	e8 a3 02 00 00       	callq  400910 <creat>
  40066d:	49 89 c7             	mov    %rax,%r15
  400670:	8b 35 de 19 20 00    	mov    0x2019de(%rip),%esi        # 602054 <n>
  400676:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  40067b:	31 c0                	xor    %eax,%eax
  40067d:	e8 ae fe ff ff       	callq  400530 <printf@plt>
  400682:	4d 85 ff             	test   %r15,%r15
  400685:	74 2a                	je     4006b1 <main+0x61>
  400687:	4c 89 fb             	mov    %r15,%rbx
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400690:	48 8b 33             	mov    (%rbx),%rsi
  400693:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400698:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40069c:	bf ef 0b 40 00       	mov    $0x400bef,%edi
  4006a1:	b0 01                	mov    $0x1,%al
  4006a3:	e8 88 fe ff ff       	callq  400530 <printf@plt>
  4006a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006ac:	48 85 db             	test   %rbx,%rbx
  4006af:	75 df                	jne    400690 <main+0x40>
  4006b1:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  4006b6:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  4006bb:	eb 03                	jmp    4006c0 <main+0x70>
  4006bd:	4d 89 ef             	mov    %r13,%r15
  4006c0:	bf 40 0c 40 00       	mov    $0x400c40,%edi
  4006c5:	e8 56 fe ff ff       	callq  400520 <puts@plt>
  4006ca:	bf 74 0b 40 00       	mov    $0x400b74,%edi
  4006cf:	31 c0                	xor    %eax,%eax
  4006d1:	e8 5a fe ff ff       	callq  400530 <printf@plt>
  4006d6:	bf 89 0b 40 00       	mov    $0x400b89,%edi
  4006db:	31 c0                	xor    %eax,%eax
  4006dd:	48 89 ee             	mov    %rbp,%rsi
  4006e0:	e8 6b fe ff ff       	callq  400550 <__isoc99_scanf@plt>
  4006e5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4006e9:	85 c0                	test   %eax,%eax
  4006eb:	0f 84 08 02 00 00    	je     4008f9 <main+0x2a9>
  4006f1:	83 f8 02             	cmp    $0x2,%eax
  4006f4:	0f 84 7d 00 00 00    	je     400777 <main+0x127>
  4006fa:	83 f8 01             	cmp    $0x1,%eax
  4006fd:	75 c1                	jne    4006c0 <main+0x70>
  4006ff:	bf 8c 0b 40 00       	mov    $0x400b8c,%edi
  400704:	31 c0                	xor    %eax,%eax
  400706:	e8 25 fe ff ff       	callq  400530 <printf@plt>
  40070b:	bf 18 00 00 00       	mov    $0x18,%edi
  400710:	e8 2b fe ff ff       	callq  400540 <malloc@plt>
  400715:	49 89 c4             	mov    %rax,%r12
  400718:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
  40071d:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  400722:	31 c0                	xor    %eax,%eax
  400724:	4c 89 e6             	mov    %r12,%rsi
  400727:	e8 24 fe ff ff       	callq  400550 <__isoc99_scanf@plt>
  40072c:	4d 85 ff             	test   %r15,%r15
  40072f:	0f 84 a6 00 00 00    	je     4007db <main+0x18b>
  400735:	49 8b 14 24          	mov    (%r12),%rdx
  400739:	4c 89 f8             	mov    %r15,%rax
  40073c:	49 3b 17             	cmp    (%r15),%rdx
  40073f:	0f 8e af 00 00 00    	jle    4007f4 <main+0x1a4>
  400745:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40074c:	00 00 00 00 
  400750:	48 89 c1             	mov    %rax,%rcx
  400753:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400757:	48 85 c0             	test   %rax,%rax
  40075a:	0f 84 9c 00 00 00    	je     4007fc <main+0x1ac>
  400760:	48 3b 10             	cmp    (%rax),%rdx
  400763:	7f eb                	jg     400750 <main+0x100>
  400765:	4c 39 f8             	cmp    %r15,%rax
  400768:	0f 84 86 00 00 00    	je     4007f4 <main+0x1a4>
  40076e:	4c 89 61 10          	mov    %r12,0x10(%rcx)
  400772:	e9 8b 00 00 00       	jmpq   400802 <main+0x1b2>
  400777:	bf b7 0b 40 00       	mov    $0x400bb7,%edi
  40077c:	31 c0                	xor    %eax,%eax
  40077e:	e8 ad fd ff ff       	callq  400530 <printf@plt>
  400783:	bf cc 0b 40 00       	mov    $0x400bcc,%edi
  400788:	31 c0                	xor    %eax,%eax
  40078a:	4c 89 f6             	mov    %r14,%rsi
  40078d:	e8 be fd ff ff       	callq  400550 <__isoc99_scanf@plt>
  400792:	4d 85 ff             	test   %r15,%r15
  400795:	74 4b                	je     4007e2 <main+0x192>
  400797:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40079c:	49 39 07             	cmp    %rax,(%r15)
  40079f:	4c 89 f9             	mov    %r15,%rcx
  4007a2:	75 0c                	jne    4007b0 <main+0x160>
  4007a4:	4d 8b 7f 10          	mov    0x10(%r15),%r15
  4007a8:	e9 d2 00 00 00       	jmpq   40087f <main+0x22f>
  4007ad:	0f 1f 00             	nopl   (%rax)
  4007b0:	48 89 ca             	mov    %rcx,%rdx
  4007b3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4007b7:	48 85 c9             	test   %rcx,%rcx
  4007ba:	0f 84 a6 00 00 00    	je     400866 <main+0x216>
  4007c0:	48 39 01             	cmp    %rax,(%rcx)
  4007c3:	75 eb                	jne    4007b0 <main+0x160>
  4007c5:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4007c9:	4c 39 f9             	cmp    %r15,%rcx
  4007cc:	0f 84 aa 00 00 00    	je     40087c <main+0x22c>
  4007d2:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4007d6:	e9 a4 00 00 00       	jmpq   40087f <main+0x22f>
  4007db:	31 c0                	xor    %eax,%eax
  4007dd:	4d 89 e5             	mov    %r12,%r13
  4007e0:	eb 23                	jmp    400805 <main+0x1b5>
  4007e2:	bf fa 0b 40 00       	mov    $0x400bfa,%edi
  4007e7:	e8 34 fd ff ff       	callq  400520 <puts@plt>
  4007ec:	45 31 e4             	xor    %r12d,%r12d
  4007ef:	e9 ab 00 00 00       	jmpq   40089f <main+0x24f>
  4007f4:	4c 89 f8             	mov    %r15,%rax
  4007f7:	4d 89 e5             	mov    %r12,%r13
  4007fa:	eb 09                	jmp    400805 <main+0x1b5>
  4007fc:	4c 89 61 10          	mov    %r12,0x10(%rcx)
  400800:	31 c0                	xor    %eax,%eax
  400802:	4d 89 fd             	mov    %r15,%r13
  400805:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40080a:	8b 35 44 18 20 00    	mov    0x201844(%rip),%esi        # 602054 <n>
  400810:	83 c6 01             	add    $0x1,%esi
  400813:	89 35 3b 18 20 00    	mov    %esi,0x20183b(%rip)        # 602054 <n>
  400819:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  40081e:	31 c0                	xor    %eax,%eax
  400820:	e8 0b fd ff ff       	callq  400530 <printf@plt>
  400825:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  40082b:	4d 85 ed             	test   %r13,%r13
  40082e:	0f 84 8c fe ff ff    	je     4006c0 <main+0x70>
  400834:	4c 89 eb             	mov    %r13,%rbx
  400837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40083e:	00 00 
  400840:	48 8b 33             	mov    (%rbx),%rsi
  400843:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400848:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40084c:	bf ef 0b 40 00       	mov    $0x400bef,%edi
  400851:	b0 01                	mov    $0x1,%al
  400853:	e8 d8 fc ff ff       	callq  400530 <printf@plt>
  400858:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40085c:	48 85 db             	test   %rbx,%rbx
  40085f:	75 df                	jne    400840 <main+0x1f0>
  400861:	e9 57 fe ff ff       	jmpq   4006bd <main+0x6d>
  400866:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  40086b:	e8 b0 fc ff ff       	callq  400520 <puts@plt>
  400870:	8b 05 de 17 20 00    	mov    0x2017de(%rip),%eax        # 602054 <n>
  400876:	85 c0                	test   %eax,%eax
  400878:	75 22                	jne    40089c <main+0x24c>
  40087a:	eb 16                	jmp    400892 <main+0x242>
  40087c:	49 89 c7             	mov    %rax,%r15
  40087f:	8b 05 cf 17 20 00    	mov    0x2017cf(%rip),%eax        # 602054 <n>
  400885:	83 c0 ff             	add    $0xffffffff,%eax
  400888:	89 05 c6 17 20 00    	mov    %eax,0x2017c6(%rip)        # 602054 <n>
  40088e:	85 c0                	test   %eax,%eax
  400890:	75 0a                	jne    40089c <main+0x24c>
  400892:	bf fa 0b 40 00       	mov    $0x400bfa,%edi
  400897:	e8 84 fc ff ff       	callq  400520 <puts@plt>
  40089c:	4d 89 fc             	mov    %r15,%r12
  40089f:	8b 35 af 17 20 00    	mov    0x2017af(%rip),%esi        # 602054 <n>
  4008a5:	4d 89 e7             	mov    %r12,%r15
  4008a8:	85 f6                	test   %esi,%esi
  4008aa:	0f 84 10 fe ff ff    	je     4006c0 <main+0x70>
  4008b0:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  4008b5:	31 c0                	xor    %eax,%eax
  4008b7:	e8 74 fc ff ff       	callq  400530 <printf@plt>
  4008bc:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  4008c2:	4d 85 e4             	test   %r12,%r12
  4008c5:	0f 84 f5 fd ff ff    	je     4006c0 <main+0x70>
  4008cb:	4c 89 e3             	mov    %r12,%rbx
  4008ce:	66 90                	xchg   %ax,%ax
  4008d0:	48 8b 33             	mov    (%rbx),%rsi
  4008d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008dc:	bf ef 0b 40 00       	mov    $0x400bef,%edi
  4008e1:	b0 01                	mov    $0x1,%al
  4008e3:	e8 48 fc ff ff       	callq  400530 <printf@plt>
  4008e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ec:	48 85 db             	test   %rbx,%rbx
  4008ef:	75 df                	jne    4008d0 <main+0x280>
  4008f1:	4d 89 e7             	mov    %r12,%r15
  4008f4:	e9 c7 fd ff ff       	jmpq   4006c0 <main+0x70>
  4008f9:	31 c0                	xor    %eax,%eax
  4008fb:	48 83 c4 18          	add    $0x18,%rsp
  4008ff:	5b                   	pop    %rbx
  400900:	41 5c                	pop    %r12
  400902:	41 5d                	pop    %r13
  400904:	41 5e                	pop    %r14
  400906:	41 5f                	pop    %r15
  400908:	5d                   	pop    %rbp
  400909:	c3                   	retq   
  40090a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400910 <creat>:
  400910:	41 57                	push   %r15
  400912:	41 56                	push   %r14
  400914:	53                   	push   %rbx
  400915:	bf 18 00 00 00       	mov    $0x18,%edi
  40091a:	e8 21 fc ff ff       	callq  400540 <malloc@plt>
  40091f:	48 89 c3             	mov    %rax,%rbx
  400922:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400926:	45 31 f6             	xor    %r14d,%r14d
  400929:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  40092e:	31 c0                	xor    %eax,%eax
  400930:	48 89 de             	mov    %rbx,%rsi
  400933:	e8 18 fc ff ff       	callq  400550 <__isoc99_scanf@plt>
  400938:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  40093c:	74 60                	je     40099e <creat+0x8e>
  40093e:	48 89 d8             	mov    %rbx,%rax
  400941:	31 c9                	xor    %ecx,%ecx
  400943:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40094a:	84 00 00 00 00 00 
  400950:	49 89 df             	mov    %rbx,%r15
  400953:	8b 15 fb 16 20 00    	mov    0x2016fb(%rip),%edx        # 602054 <n>
  400959:	8d 72 01             	lea    0x1(%rdx),%esi
  40095c:	89 35 f2 16 20 00    	mov    %esi,0x2016f2(%rip)        # 602054 <n>
  400962:	4d 89 fe             	mov    %r15,%r14
  400965:	85 d2                	test   %edx,%edx
  400967:	74 07                	je     400970 <creat+0x60>
  400969:	48 89 58 10          	mov    %rbx,0x10(%rax)
  40096d:	49 89 ce             	mov    %rcx,%r14
  400970:	bf 18 00 00 00       	mov    $0x18,%edi
  400975:	e8 c6 fb ff ff       	callq  400540 <malloc@plt>
  40097a:	48 89 c3             	mov    %rax,%rbx
  40097d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400981:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  400986:	31 c0                	xor    %eax,%eax
  400988:	48 89 de             	mov    %rbx,%rsi
  40098b:	e8 c0 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  400990:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400994:	4c 89 f8             	mov    %r15,%rax
  400997:	4c 89 f1             	mov    %r14,%rcx
  40099a:	75 b4                	jne    400950 <creat+0x40>
  40099c:	eb 03                	jmp    4009a1 <creat+0x91>
  40099e:	49 89 df             	mov    %rbx,%r15
  4009a1:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4009a8:	00 
  4009a9:	48 89 df             	mov    %rbx,%rdi
  4009ac:	e8 5f fb ff ff       	callq  400510 <free@plt>
  4009b1:	4c 89 f0             	mov    %r14,%rax
  4009b4:	5b                   	pop    %rbx
  4009b5:	41 5e                	pop    %r14
  4009b7:	41 5f                	pop    %r15
  4009b9:	c3                   	retq   
  4009ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004009c0 <print>:
  4009c0:	53                   	push   %rbx
  4009c1:	48 89 fb             	mov    %rdi,%rbx
  4009c4:	8b 35 8a 16 20 00    	mov    0x20168a(%rip),%esi        # 602054 <n>
  4009ca:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  4009cf:	31 c0                	xor    %eax,%eax
  4009d1:	e8 5a fb ff ff       	callq  400530 <printf@plt>
  4009d6:	48 85 db             	test   %rbx,%rbx
  4009d9:	74 26                	je     400a01 <print+0x41>
  4009db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009e0:	48 8b 33             	mov    (%rbx),%rsi
  4009e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009ec:	bf ef 0b 40 00       	mov    $0x400bef,%edi
  4009f1:	b0 01                	mov    $0x1,%al
  4009f3:	e8 38 fb ff ff       	callq  400530 <printf@plt>
  4009f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009fc:	48 85 db             	test   %rbx,%rbx
  4009ff:	75 df                	jne    4009e0 <print+0x20>
  400a01:	5b                   	pop    %rbx
  400a02:	c3                   	retq   
  400a03:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a0a:	84 00 00 00 00 00 

0000000000400a10 <insert>:
  400a10:	48 85 ff             	test   %rdi,%rdi
  400a13:	74 27                	je     400a3c <insert+0x2c>
  400a15:	48 8b 0e             	mov    (%rsi),%rcx
  400a18:	48 3b 0f             	cmp    (%rdi),%rcx
  400a1b:	7e 26                	jle    400a43 <insert+0x33>
  400a1d:	48 89 f8             	mov    %rdi,%rax
  400a20:	48 89 c2             	mov    %rax,%rdx
  400a23:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400a27:	48 85 c0             	test   %rax,%rax
  400a2a:	74 1f                	je     400a4b <insert+0x3b>
  400a2c:	48 3b 08             	cmp    (%rax),%rcx
  400a2f:	7f ef                	jg     400a20 <insert+0x10>
  400a31:	48 39 f8             	cmp    %rdi,%rax
  400a34:	74 0d                	je     400a43 <insert+0x33>
  400a36:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400a3a:	eb 15                	jmp    400a51 <insert+0x41>
  400a3c:	31 c0                	xor    %eax,%eax
  400a3e:	48 89 f7             	mov    %rsi,%rdi
  400a41:	eb 0e                	jmp    400a51 <insert+0x41>
  400a43:	48 89 f8             	mov    %rdi,%rax
  400a46:	48 89 f7             	mov    %rsi,%rdi
  400a49:	eb 06                	jmp    400a51 <insert+0x41>
  400a4b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400a4f:	31 c0                	xor    %eax,%eax
  400a51:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400a55:	83 05 f8 15 20 00 01 	addl   $0x1,0x2015f8(%rip)        # 602054 <n>
  400a5c:	48 89 f8             	mov    %rdi,%rax
  400a5f:	c3                   	retq   

0000000000400a60 <delete>:
  400a60:	53                   	push   %rbx
  400a61:	48 89 fb             	mov    %rdi,%rbx
  400a64:	48 85 db             	test   %rbx,%rbx
  400a67:	74 0b                	je     400a74 <delete+0x14>
  400a69:	48 39 33             	cmp    %rsi,(%rbx)
  400a6c:	75 14                	jne    400a82 <delete+0x22>
  400a6e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a72:	eb 55                	jmp    400ac9 <delete+0x69>
  400a74:	bf fa 0b 40 00       	mov    $0x400bfa,%edi
  400a79:	e8 a2 fa ff ff       	callq  400520 <puts@plt>
  400a7e:	31 db                	xor    %ebx,%ebx
  400a80:	eb 64                	jmp    400ae6 <delete+0x86>
  400a82:	48 89 d9             	mov    %rbx,%rcx
  400a85:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a8c:	00 00 00 00 
  400a90:	48 89 c8             	mov    %rcx,%rax
  400a93:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400a97:	48 85 c9             	test   %rcx,%rcx
  400a9a:	74 14                	je     400ab0 <delete+0x50>
  400a9c:	48 39 31             	cmp    %rsi,(%rcx)
  400a9f:	75 ef                	jne    400a90 <delete+0x30>
  400aa1:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400aa5:	48 39 d9             	cmp    %rbx,%rcx
  400aa8:	74 1c                	je     400ac6 <delete+0x66>
  400aaa:	48 89 50 10          	mov    %rdx,0x10(%rax)
  400aae:	eb 19                	jmp    400ac9 <delete+0x69>
  400ab0:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400ab5:	e8 66 fa ff ff       	callq  400520 <puts@plt>
  400aba:	8b 05 94 15 20 00    	mov    0x201594(%rip),%eax        # 602054 <n>
  400ac0:	85 c0                	test   %eax,%eax
  400ac2:	75 22                	jne    400ae6 <delete+0x86>
  400ac4:	eb 16                	jmp    400adc <delete+0x7c>
  400ac6:	48 89 d3             	mov    %rdx,%rbx
  400ac9:	8b 05 85 15 20 00    	mov    0x201585(%rip),%eax        # 602054 <n>
  400acf:	83 c0 ff             	add    $0xffffffff,%eax
  400ad2:	89 05 7c 15 20 00    	mov    %eax,0x20157c(%rip)        # 602054 <n>
  400ad8:	85 c0                	test   %eax,%eax
  400ada:	75 0a                	jne    400ae6 <delete+0x86>
  400adc:	bf fa 0b 40 00       	mov    $0x400bfa,%edi
  400ae1:	e8 3a fa ff ff       	callq  400520 <puts@plt>
  400ae6:	48 89 d8             	mov    %rbx,%rax
  400ae9:	5b                   	pop    %rbx
  400aea:	c3                   	retq   
  400aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400af0 <__libc_csu_init>:
  400af0:	41 57                	push   %r15
  400af2:	41 56                	push   %r14
  400af4:	49 89 d7             	mov    %rdx,%r15
  400af7:	41 55                	push   %r13
  400af9:	41 54                	push   %r12
  400afb:	4c 8d 25 fe 12 20 00 	lea    0x2012fe(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b02:	55                   	push   %rbp
  400b03:	48 8d 2d fe 12 20 00 	lea    0x2012fe(%rip),%rbp        # 601e08 <__init_array_end>
  400b0a:	53                   	push   %rbx
  400b0b:	41 89 fd             	mov    %edi,%r13d
  400b0e:	49 89 f6             	mov    %rsi,%r14
  400b11:	4c 29 e5             	sub    %r12,%rbp
  400b14:	48 83 ec 08          	sub    $0x8,%rsp
  400b18:	48 c1 fd 03          	sar    $0x3,%rbp
  400b1c:	e8 bf f9 ff ff       	callq  4004e0 <_init>
  400b21:	48 85 ed             	test   %rbp,%rbp
  400b24:	74 20                	je     400b46 <__libc_csu_init+0x56>
  400b26:	31 db                	xor    %ebx,%ebx
  400b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b2f:	00 
  400b30:	4c 89 fa             	mov    %r15,%rdx
  400b33:	4c 89 f6             	mov    %r14,%rsi
  400b36:	44 89 ef             	mov    %r13d,%edi
  400b39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b3d:	48 83 c3 01          	add    $0x1,%rbx
  400b41:	48 39 dd             	cmp    %rbx,%rbp
  400b44:	75 ea                	jne    400b30 <__libc_csu_init+0x40>
  400b46:	48 83 c4 08          	add    $0x8,%rsp
  400b4a:	5b                   	pop    %rbx
  400b4b:	5d                   	pop    %rbp
  400b4c:	41 5c                	pop    %r12
  400b4e:	41 5d                	pop    %r13
  400b50:	41 5e                	pop    %r14
  400b52:	41 5f                	pop    %r15
  400b54:	c3                   	retq   
  400b55:	90                   	nop
  400b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b5d:	00 00 00 

0000000000400b60 <__libc_csu_fini>:
  400b60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b64 <_fini>:
  400b64:	48 83 ec 08          	sub    $0x8,%rsp
  400b68:	48 83 c4 08          	add    $0x8,%rsp
  400b6c:	c3                   	retq   
