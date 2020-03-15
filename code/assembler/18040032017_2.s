
c/18040032017_2.elf:     file format elf64-x86-64


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
  4005dd:	48 c7 c7 90 08 40 00 	mov    $0x400890,%rdi
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

00000000004006b0 <print>:
  4006b0:	53                   	push   %rbx
  4006b1:	48 89 fb             	mov    %rdi,%rbx
  4006b4:	48 85 db             	test   %rbx,%rbx
  4006b7:	74 3a                	je     4006f3 <print+0x43>
  4006b9:	8b 35 ad 19 20 00    	mov    0x2019ad(%rip),%esi        # 60206c <n>
  4006bf:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  4006c4:	31 c0                	xor    %eax,%eax
  4006c6:	e8 b5 fe ff ff       	callq  400580 <printf@plt>
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	48 8b 33             	mov    (%rbx),%rsi
  4006d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006dc:	bf 0f 0c 40 00       	mov    $0x400c0f,%edi
  4006e1:	b0 01                	mov    $0x1,%al
  4006e3:	e8 98 fe ff ff       	callq  400580 <printf@plt>
  4006e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006ec:	48 85 db             	test   %rbx,%rbx
  4006ef:	75 df                	jne    4006d0 <print+0x20>
  4006f1:	5b                   	pop    %rbx
  4006f2:	c3                   	retq   
  4006f3:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  4006f8:	5b                   	pop    %rbx
  4006f9:	e9 72 fe ff ff       	jmpq   400570 <puts@plt>
  4006fe:	66 90                	xchg   %ax,%ax

0000000000400700 <insert>:
  400700:	48 85 ff             	test   %rdi,%rdi
  400703:	74 27                	je     40072c <insert+0x2c>
  400705:	48 8b 0e             	mov    (%rsi),%rcx
  400708:	48 3b 0f             	cmp    (%rdi),%rcx
  40070b:	7e 23                	jle    400730 <insert+0x30>
  40070d:	48 89 f8             	mov    %rdi,%rax
  400710:	48 89 c2             	mov    %rax,%rdx
  400713:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400717:	48 85 c0             	test   %rax,%rax
  40071a:	74 29                	je     400745 <insert+0x45>
  40071c:	48 3b 08             	cmp    (%rax),%rcx
  40071f:	7f ef                	jg     400710 <insert+0x10>
  400721:	48 39 f8             	cmp    %rdi,%rax
  400724:	74 0d                	je     400733 <insert+0x33>
  400726:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40072a:	eb 0a                	jmp    400736 <insert+0x36>
  40072c:	31 c0                	xor    %eax,%eax
  40072e:	eb 03                	jmp    400733 <insert+0x33>
  400730:	48 89 f8             	mov    %rdi,%rax
  400733:	48 89 f7             	mov    %rsi,%rdi
  400736:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40073a:	83 05 2b 19 20 00 01 	addl   $0x1,0x20192b(%rip)        # 60206c <n>
  400741:	48 89 f8             	mov    %rdi,%rax
  400744:	c3                   	retq   
  400745:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400749:	31 c0                	xor    %eax,%eax
  40074b:	eb e9                	jmp    400736 <insert+0x36>
  40074d:	0f 1f 00             	nopl   (%rax)

0000000000400750 <create>:
  400750:	41 56                	push   %r14
  400752:	53                   	push   %rbx
  400753:	50                   	push   %rax
  400754:	bf 18 00 00 00       	mov    $0x18,%edi
  400759:	e8 32 fe ff ff       	callq  400590 <malloc@plt>
  40075e:	48 89 c3             	mov    %rax,%rbx
  400761:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400765:	45 31 f6             	xor    %r14d,%r14d
  400768:	bf 1c 0c 40 00       	mov    $0x400c1c,%edi
  40076d:	31 c0                	xor    %eax,%eax
  40076f:	48 89 de             	mov    %rbx,%rsi
  400772:	e8 39 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400777:	48 8b 03             	mov    (%rbx),%rax
  40077a:	48 85 c0             	test   %rax,%rax
  40077d:	0f 84 94 00 00 00    	je     400817 <create+0xc7>
  400783:	45 31 f6             	xor    %r14d,%r14d
  400786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40078d:	00 00 00 
  400790:	4d 85 f6             	test   %r14,%r14
  400793:	74 2b                	je     4007c0 <create+0x70>
  400795:	4c 89 f1             	mov    %r14,%rcx
  400798:	49 3b 06             	cmp    (%r14),%rax
  40079b:	7e 33                	jle    4007d0 <create+0x80>
  40079d:	0f 1f 00             	nopl   (%rax)
  4007a0:	48 89 ca             	mov    %rcx,%rdx
  4007a3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4007a7:	48 85 c9             	test   %rcx,%rcx
  4007aa:	74 2c                	je     4007d8 <create+0x88>
  4007ac:	48 3b 01             	cmp    (%rcx),%rax
  4007af:	7f ef                	jg     4007a0 <create+0x50>
  4007b1:	4c 39 f1             	cmp    %r14,%rcx
  4007b4:	74 1a                	je     4007d0 <create+0x80>
  4007b6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007ba:	eb 24                	jmp    4007e0 <create+0x90>
  4007bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4007c0:	31 c9                	xor    %ecx,%ecx
  4007c2:	49 89 de             	mov    %rbx,%r14
  4007c5:	eb 19                	jmp    4007e0 <create+0x90>
  4007c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ce:	00 00 
  4007d0:	4c 89 f1             	mov    %r14,%rcx
  4007d3:	49 89 de             	mov    %rbx,%r14
  4007d6:	eb 08                	jmp    4007e0 <create+0x90>
  4007d8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007dc:	31 c9                	xor    %ecx,%ecx
  4007de:	66 90                	xchg   %ax,%ax
  4007e0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007e4:	83 05 81 18 20 00 01 	addl   $0x1,0x201881(%rip)        # 60206c <n>
  4007eb:	bf 18 00 00 00       	mov    $0x18,%edi
  4007f0:	e8 9b fd ff ff       	callq  400590 <malloc@plt>
  4007f5:	48 89 c3             	mov    %rax,%rbx
  4007f8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007fc:	bf 1c 0c 40 00       	mov    $0x400c1c,%edi
  400801:	31 c0                	xor    %eax,%eax
  400803:	48 89 de             	mov    %rbx,%rsi
  400806:	e8 a5 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40080b:	48 8b 03             	mov    (%rbx),%rax
  40080e:	48 85 c0             	test   %rax,%rax
  400811:	0f 85 79 ff ff ff    	jne    400790 <create+0x40>
  400817:	48 89 df             	mov    %rbx,%rdi
  40081a:	e8 41 fd ff ff       	callq  400560 <free@plt>
  40081f:	4c 89 f0             	mov    %r14,%rax
  400822:	48 83 c4 08          	add    $0x8,%rsp
  400826:	5b                   	pop    %rbx
  400827:	41 5e                	pop    %r14
  400829:	c3                   	retq   
  40082a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400830 <del>:
  400830:	53                   	push   %rbx
  400831:	48 89 fb             	mov    %rdi,%rbx
  400834:	48 85 db             	test   %rbx,%rbx
  400837:	74 0e                	je     400847 <del+0x17>
  400839:	48 39 33             	cmp    %rsi,(%rbx)
  40083c:	75 0d                	jne    40084b <del+0x1b>
  40083e:	48 89 df             	mov    %rbx,%rdi
  400841:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400845:	eb 2c                	jmp    400873 <del+0x43>
  400847:	31 db                	xor    %ebx,%ebx
  400849:	eb 34                	jmp    40087f <del+0x4f>
  40084b:	48 89 df             	mov    %rbx,%rdi
  40084e:	66 90                	xchg   %ax,%ax
  400850:	48 89 f8             	mov    %rdi,%rax
  400853:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400857:	48 85 ff             	test   %rdi,%rdi
  40085a:	74 23                	je     40087f <del+0x4f>
  40085c:	48 39 37             	cmp    %rsi,(%rdi)
  40085f:	75 ef                	jne    400850 <del+0x20>
  400861:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  400865:	48 39 df             	cmp    %rbx,%rdi
  400868:	74 06                	je     400870 <del+0x40>
  40086a:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40086e:	eb 03                	jmp    400873 <del+0x43>
  400870:	48 89 cb             	mov    %rcx,%rbx
  400873:	e8 e8 fc ff ff       	callq  400560 <free@plt>
  400878:	83 05 ed 17 20 00 ff 	addl   $0xffffffff,0x2017ed(%rip)        # 60206c <n>
  40087f:	48 89 d8             	mov    %rbx,%rax
  400882:	5b                   	pop    %rbx
  400883:	c3                   	retq   
  400884:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088b:	00 00 00 00 00 

0000000000400890 <main>:
  400890:	41 57                	push   %r15
  400892:	41 56                	push   %r14
  400894:	41 54                	push   %r12
  400896:	53                   	push   %rbx
  400897:	48 83 ec 18          	sub    $0x18,%rsp
  40089b:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  4008a0:	e8 cb fc ff ff       	callq  400570 <puts@plt>
  4008a5:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  4008aa:	e8 c1 fc ff ff       	callq  400570 <puts@plt>
  4008af:	e8 9c fe ff ff       	callq  400750 <create>
  4008b4:	49 89 c4             	mov    %rax,%r12
  4008b7:	4d 85 e4             	test   %r12,%r12
  4008ba:	74 47                	je     400903 <main+0x73>
  4008bc:	8b 35 aa 17 20 00    	mov    0x2017aa(%rip),%esi        # 60206c <n>
  4008c2:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  4008c7:	31 c0                	xor    %eax,%eax
  4008c9:	e8 b2 fc ff ff       	callq  400580 <printf@plt>
  4008ce:	4c 89 e3             	mov    %r12,%rbx
  4008d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008d8:	0f 1f 84 00 00 00 00 
  4008df:	00 
  4008e0:	48 8b 33             	mov    (%rbx),%rsi
  4008e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ec:	bf 0f 0c 40 00       	mov    $0x400c0f,%edi
  4008f1:	b0 01                	mov    $0x1,%al
  4008f3:	e8 88 fc ff ff       	callq  400580 <printf@plt>
  4008f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008fc:	48 85 db             	test   %rbx,%rbx
  4008ff:	75 df                	jne    4008e0 <main+0x50>
  400901:	eb 0a                	jmp    40090d <main+0x7d>
  400903:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  400908:	e8 63 fc ff ff       	callq  400570 <puts@plt>
  40090d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400912:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40091e:	00 00 
  400920:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400925:	e8 46 fc ff ff       	callq  400570 <puts@plt>
  40092a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400931:	ff 
  400932:	bf 23 0c 40 00       	mov    $0x400c23,%edi
  400937:	31 c0                	xor    %eax,%eax
  400939:	e8 42 fc ff ff       	callq  400580 <printf@plt>
  40093e:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  400943:	31 c0                	xor    %eax,%eax
  400945:	4c 89 f6             	mov    %r14,%rsi
  400948:	e8 63 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40094d:	48 8b 3d 0c 17 20 00 	mov    0x20170c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400954:	e8 47 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400959:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40095d:	83 f8 02             	cmp    $0x2,%eax
  400960:	74 7e                	je     4009e0 <main+0x150>
  400962:	83 f8 01             	cmp    $0x1,%eax
  400965:	0f 85 e6 01 00 00    	jne    400b51 <main+0x2c1>
  40096b:	bf 35 0c 40 00       	mov    $0x400c35,%edi
  400970:	31 c0                	xor    %eax,%eax
  400972:	e8 09 fc ff ff       	callq  400580 <printf@plt>
  400977:	bf 18 00 00 00       	mov    $0x18,%edi
  40097c:	e8 0f fc ff ff       	callq  400590 <malloc@plt>
  400981:	48 89 c3             	mov    %rax,%rbx
  400984:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  400989:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40098d:	31 c0                	xor    %eax,%eax
  40098f:	48 89 de             	mov    %rbx,%rsi
  400992:	e8 19 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400997:	4d 85 e4             	test   %r12,%r12
  40099a:	0f 84 ab 00 00 00    	je     400a4b <main+0x1bb>
  4009a0:	48 8b 33             	mov    (%rbx),%rsi
  4009a3:	4c 89 e0             	mov    %r12,%rax
  4009a6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009aa:	0f 8e ab 00 00 00    	jle    400a5b <main+0x1cb>
  4009b0:	48 89 c1             	mov    %rax,%rcx
  4009b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009b7:	48 85 c0             	test   %rax,%rax
  4009ba:	0f 84 a7 00 00 00    	je     400a67 <main+0x1d7>
  4009c0:	48 3b 30             	cmp    (%rax),%rsi
  4009c3:	7f eb                	jg     4009b0 <main+0x120>
  4009c5:	4c 39 e0             	cmp    %r12,%rax
  4009c8:	0f 84 8d 00 00 00    	je     400a5b <main+0x1cb>
  4009ce:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009d2:	e9 8a 00 00 00       	jmpq   400a61 <main+0x1d1>
  4009d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009de:	00 00 
  4009e0:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 94 fb ff ff       	callq  400580 <printf@plt>
  4009ec:	bf 76 0c 40 00       	mov    $0x400c76,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	4c 89 fe             	mov    %r15,%rsi
  4009f6:	e8 b5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009fb:	4d 85 e4             	test   %r12,%r12
  4009fe:	0f 84 3c 01 00 00    	je     400b40 <main+0x2b0>
  400a04:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a09:	49 39 04 24          	cmp    %rax,(%r12)
  400a0d:	4c 89 e7             	mov    %r12,%rdi
  400a10:	75 0e                	jne    400a20 <main+0x190>
  400a12:	4c 89 e7             	mov    %r12,%rdi
  400a15:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a1a:	e9 ca 00 00 00       	jmpq   400ae9 <main+0x259>
  400a1f:	90                   	nop
  400a20:	48 89 f9             	mov    %rdi,%rcx
  400a23:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a27:	48 85 ff             	test   %rdi,%rdi
  400a2a:	0f 84 c5 00 00 00    	je     400af5 <main+0x265>
  400a30:	48 39 07             	cmp    %rax,(%rdi)
  400a33:	75 eb                	jne    400a20 <main+0x190>
  400a35:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a39:	4c 39 e7             	cmp    %r12,%rdi
  400a3c:	0f 84 a1 00 00 00    	je     400ae3 <main+0x253>
  400a42:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400a46:	e9 9e 00 00 00       	jmpq   400ae9 <main+0x259>
  400a4b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a52:	00 
  400a53:	48 8b 33             	mov    (%rbx),%rsi
  400a56:	49 89 dc             	mov    %rbx,%r12
  400a59:	eb 25                	jmp    400a80 <main+0x1f0>
  400a5b:	4c 89 e0             	mov    %r12,%rax
  400a5e:	49 89 dc             	mov    %rbx,%r12
  400a61:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a65:	eb 19                	jmp    400a80 <main+0x1f0>
  400a67:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a6b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a72:	00 
  400a73:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a7a:	84 00 00 00 00 00 
  400a80:	83 05 e5 15 20 00 01 	addl   $0x1,0x2015e5(%rip)        # 60206c <n>
  400a87:	bf 57 0c 40 00       	mov    $0x400c57,%edi
  400a8c:	31 c0                	xor    %eax,%eax
  400a8e:	e8 ed fa ff ff       	callq  400580 <printf@plt>
  400a93:	4d 85 e4             	test   %r12,%r12
  400a96:	0f 84 a4 00 00 00    	je     400b40 <main+0x2b0>
  400a9c:	8b 35 ca 15 20 00    	mov    0x2015ca(%rip),%esi        # 60206c <n>
  400aa2:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400aa7:	31 c0                	xor    %eax,%eax
  400aa9:	e8 d2 fa ff ff       	callq  400580 <printf@plt>
  400aae:	4c 89 e3             	mov    %r12,%rbx
  400ab1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ab8:	0f 1f 84 00 00 00 00 
  400abf:	00 
  400ac0:	48 8b 33             	mov    (%rbx),%rsi
  400ac3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ac8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400acc:	bf 0f 0c 40 00       	mov    $0x400c0f,%edi
  400ad1:	b0 01                	mov    $0x1,%al
  400ad3:	e8 a8 fa ff ff       	callq  400580 <printf@plt>
  400ad8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400adc:	48 85 db             	test   %rbx,%rbx
  400adf:	75 df                	jne    400ac0 <main+0x230>
  400ae1:	eb 6a                	jmp    400b4d <main+0x2bd>
  400ae3:	4c 89 e7             	mov    %r12,%rdi
  400ae6:	49 89 c4             	mov    %rax,%r12
  400ae9:	e8 72 fa ff ff       	callq  400560 <free@plt>
  400aee:	83 05 77 15 20 00 ff 	addl   $0xffffffff,0x201577(%rip)        # 60206c <n>
  400af5:	4d 85 e4             	test   %r12,%r12
  400af8:	74 46                	je     400b40 <main+0x2b0>
  400afa:	8b 35 6c 15 20 00    	mov    0x20156c(%rip),%esi        # 60206c <n>
  400b00:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400b05:	31 c0                	xor    %eax,%eax
  400b07:	e8 74 fa ff ff       	callq  400580 <printf@plt>
  400b0c:	4c 89 e3             	mov    %r12,%rbx
  400b0f:	90                   	nop
  400b10:	48 8b 33             	mov    (%rbx),%rsi
  400b13:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b1c:	bf 0f 0c 40 00       	mov    $0x400c0f,%edi
  400b21:	b0 01                	mov    $0x1,%al
  400b23:	e8 58 fa ff ff       	callq  400580 <printf@plt>
  400b28:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b2c:	48 85 db             	test   %rbx,%rbx
  400b2f:	75 df                	jne    400b10 <main+0x280>
  400b31:	eb 1a                	jmp    400b4d <main+0x2bd>
  400b33:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b3a:	84 00 00 00 00 00 
  400b40:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  400b45:	e8 26 fa ff ff       	callq  400570 <puts@plt>
  400b4a:	45 31 e4             	xor    %r12d,%r12d
  400b4d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b51:	85 c0                	test   %eax,%eax
  400b53:	0f 85 c7 fd ff ff    	jne    400920 <main+0x90>
  400b59:	31 c0                	xor    %eax,%eax
  400b5b:	48 83 c4 18          	add    $0x18,%rsp
  400b5f:	5b                   	pop    %rbx
  400b60:	41 5c                	pop    %r12
  400b62:	41 5e                	pop    %r14
  400b64:	41 5f                	pop    %r15
  400b66:	c3                   	retq   
  400b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b6e:	00 00 

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
