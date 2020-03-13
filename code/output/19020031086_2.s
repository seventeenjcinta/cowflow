
input/19020031086_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 40 0c 40 00 	mov    $0x400c40,%r8
  4005d6:	48 c7 c1 d0 0b 40 00 	mov    $0x400bd0,%rcx
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
  4006b3:	74 27                	je     4006dc <insert+0x2c>
  4006b5:	48 8b 0e             	mov    (%rsi),%rcx
  4006b8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006bb:	7e 26                	jle    4006e3 <insert+0x33>
  4006bd:	48 89 f8             	mov    %rdi,%rax
  4006c0:	48 89 c2             	mov    %rax,%rdx
  4006c3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 1f                	je     4006eb <insert+0x3b>
  4006cc:	48 3b 08             	cmp    (%rax),%rcx
  4006cf:	7f ef                	jg     4006c0 <insert+0x10>
  4006d1:	48 39 f8             	cmp    %rdi,%rax
  4006d4:	74 0d                	je     4006e3 <insert+0x33>
  4006d6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006da:	eb 15                	jmp    4006f1 <insert+0x41>
  4006dc:	31 c0                	xor    %eax,%eax
  4006de:	48 89 f7             	mov    %rsi,%rdi
  4006e1:	eb 0e                	jmp    4006f1 <insert+0x41>
  4006e3:	48 89 f8             	mov    %rdi,%rax
  4006e6:	48 89 f7             	mov    %rsi,%rdi
  4006e9:	eb 06                	jmp    4006f1 <insert+0x41>
  4006eb:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006ef:	31 c0                	xor    %eax,%eax
  4006f1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4006f5:	83 05 70 19 20 00 01 	addl   $0x1,0x201970(%rip)        # 60206c <n>
  4006fc:	48 89 f8             	mov    %rdi,%rax
  4006ff:	c3                   	retq   

0000000000400700 <create>:
  400700:	41 56                	push   %r14
  400702:	53                   	push   %rbx
  400703:	50                   	push   %rax
  400704:	bf 18 00 00 00       	mov    $0x18,%edi
  400709:	e8 82 fe ff ff       	callq  400590 <malloc@plt>
  40070e:	48 89 c3             	mov    %rax,%rbx
  400711:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400715:	45 31 f6             	xor    %r14d,%r14d
  400718:	bf 54 0c 40 00       	mov    $0x400c54,%edi
  40071d:	31 c0                	xor    %eax,%eax
  40071f:	48 89 de             	mov    %rbx,%rsi
  400722:	e8 89 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400727:	48 8b 03             	mov    (%rbx),%rax
  40072a:	48 85 c0             	test   %rax,%rax
  40072d:	0f 84 94 00 00 00    	je     4007c7 <create+0xc7>
  400733:	45 31 f6             	xor    %r14d,%r14d
  400736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40073d:	00 00 00 
  400740:	4d 85 f6             	test   %r14,%r14
  400743:	74 2b                	je     400770 <create+0x70>
  400745:	4c 89 f1             	mov    %r14,%rcx
  400748:	49 3b 06             	cmp    (%r14),%rax
  40074b:	7e 33                	jle    400780 <create+0x80>
  40074d:	0f 1f 00             	nopl   (%rax)
  400750:	48 89 ca             	mov    %rcx,%rdx
  400753:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400757:	48 85 c9             	test   %rcx,%rcx
  40075a:	74 2c                	je     400788 <create+0x88>
  40075c:	48 3b 01             	cmp    (%rcx),%rax
  40075f:	7f ef                	jg     400750 <create+0x50>
  400761:	4c 39 f1             	cmp    %r14,%rcx
  400764:	74 1a                	je     400780 <create+0x80>
  400766:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40076a:	eb 24                	jmp    400790 <create+0x90>
  40076c:	0f 1f 40 00          	nopl   0x0(%rax)
  400770:	31 c9                	xor    %ecx,%ecx
  400772:	49 89 de             	mov    %rbx,%r14
  400775:	eb 19                	jmp    400790 <create+0x90>
  400777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40077e:	00 00 
  400780:	4c 89 f1             	mov    %r14,%rcx
  400783:	49 89 de             	mov    %rbx,%r14
  400786:	eb 08                	jmp    400790 <create+0x90>
  400788:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40078c:	31 c9                	xor    %ecx,%ecx
  40078e:	66 90                	xchg   %ax,%ax
  400790:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400794:	83 05 d1 18 20 00 01 	addl   $0x1,0x2018d1(%rip)        # 60206c <n>
  40079b:	bf 18 00 00 00       	mov    $0x18,%edi
  4007a0:	e8 eb fd ff ff       	callq  400590 <malloc@plt>
  4007a5:	48 89 c3             	mov    %rax,%rbx
  4007a8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ac:	bf 54 0c 40 00       	mov    $0x400c54,%edi
  4007b1:	31 c0                	xor    %eax,%eax
  4007b3:	48 89 de             	mov    %rbx,%rsi
  4007b6:	e8 f5 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007bb:	48 8b 03             	mov    (%rbx),%rax
  4007be:	48 85 c0             	test   %rax,%rax
  4007c1:	0f 85 79 ff ff ff    	jne    400740 <create+0x40>
  4007c7:	48 89 df             	mov    %rbx,%rdi
  4007ca:	e8 91 fd ff ff       	callq  400560 <free@plt>
  4007cf:	4c 89 f0             	mov    %r14,%rax
  4007d2:	48 83 c4 08          	add    $0x8,%rsp
  4007d6:	5b                   	pop    %rbx
  4007d7:	41 5e                	pop    %r14
  4007d9:	c3                   	retq   
  4007da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007e0 <print>:
  4007e0:	53                   	push   %rbx
  4007e1:	48 89 fb             	mov    %rdi,%rbx
  4007e4:	48 85 db             	test   %rbx,%rbx
  4007e7:	74 3a                	je     400823 <print+0x43>
  4007e9:	8b 35 7d 18 20 00    	mov    0x20187d(%rip),%esi        # 60206c <n>
  4007ef:	bf 5b 0c 40 00       	mov    $0x400c5b,%edi
  4007f4:	31 c0                	xor    %eax,%eax
  4007f6:	e8 85 fd ff ff       	callq  400580 <printf@plt>
  4007fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400800:	48 8b 33             	mov    (%rbx),%rsi
  400803:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400808:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40080c:	bf 77 0c 40 00       	mov    $0x400c77,%edi
  400811:	b0 01                	mov    $0x1,%al
  400813:	e8 68 fd ff ff       	callq  400580 <printf@plt>
  400818:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40081c:	48 85 db             	test   %rbx,%rbx
  40081f:	75 df                	jne    400800 <print+0x20>
  400821:	5b                   	pop    %rbx
  400822:	c3                   	retq   
  400823:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400828:	5b                   	pop    %rbx
  400829:	e9 42 fd ff ff       	jmpq   400570 <puts@plt>
  40082e:	66 90                	xchg   %ax,%ax

0000000000400830 <del>:
  400830:	41 57                	push   %r15
  400832:	41 56                	push   %r14
  400834:	41 54                	push   %r12
  400836:	53                   	push   %rbx
  400837:	50                   	push   %rax
  400838:	49 89 fe             	mov    %rdi,%r14
  40083b:	4d 85 f6             	test   %r14,%r14
  40083e:	74 4b                	je     40088b <del+0x5b>
  400840:	49 39 36             	cmp    %rsi,(%r14)
  400843:	4c 89 f3             	mov    %r14,%rbx
  400846:	74 19                	je     400861 <del+0x31>
  400848:	4c 89 f3             	mov    %r14,%rbx
  40084b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400850:	49 89 df             	mov    %rbx,%r15
  400853:	49 8b 5f 10          	mov    0x10(%r15),%rbx
  400857:	48 85 db             	test   %rbx,%rbx
  40085a:	74 31                	je     40088d <del+0x5d>
  40085c:	48 39 33             	cmp    %rsi,(%rbx)
  40085f:	75 ef                	jne    400850 <del+0x20>
  400861:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400866:	31 c0                	xor    %eax,%eax
  400868:	e8 13 fd ff ff       	callq  400580 <printf@plt>
  40086d:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  400871:	4c 39 f3             	cmp    %r14,%rbx
  400874:	74 25                	je     40089b <del+0x6b>
  400876:	4d 89 67 10          	mov    %r12,0x10(%r15)
  40087a:	48 89 df             	mov    %rbx,%rdi
  40087d:	e8 de fc ff ff       	callq  400560 <free@plt>
  400882:	83 05 e3 17 20 00 ff 	addl   $0xffffffff,0x2017e3(%rip)        # 60206c <n>
  400889:	eb 22                	jmp    4008ad <del+0x7d>
  40088b:	eb 20                	jmp    4008ad <del+0x7d>
  40088d:	bf 81 0c 40 00       	mov    $0x400c81,%edi
  400892:	31 c0                	xor    %eax,%eax
  400894:	e8 e7 fc ff ff       	callq  400580 <printf@plt>
  400899:	eb 12                	jmp    4008ad <del+0x7d>
  40089b:	4c 89 f7             	mov    %r14,%rdi
  40089e:	e8 bd fc ff ff       	callq  400560 <free@plt>
  4008a3:	83 05 c2 17 20 00 ff 	addl   $0xffffffff,0x2017c2(%rip)        # 60206c <n>
  4008aa:	4d 89 e6             	mov    %r12,%r14
  4008ad:	4c 89 f0             	mov    %r14,%rax
  4008b0:	48 83 c4 08          	add    $0x8,%rsp
  4008b4:	5b                   	pop    %rbx
  4008b5:	41 5c                	pop    %r12
  4008b7:	41 5e                	pop    %r14
  4008b9:	41 5f                	pop    %r15
  4008bb:	c3                   	retq   
  4008bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008c0 <main>:
  4008c0:	55                   	push   %rbp
  4008c1:	41 57                	push   %r15
  4008c3:	41 56                	push   %r14
  4008c5:	41 55                	push   %r13
  4008c7:	41 54                	push   %r12
  4008c9:	53                   	push   %rbx
  4008ca:	48 83 ec 18          	sub    $0x18,%rsp
  4008ce:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  4008d3:	e8 98 fc ff ff       	callq  400570 <puts@plt>
  4008d8:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  4008dd:	e8 8e fc ff ff       	callq  400570 <puts@plt>
  4008e2:	e8 19 fe ff ff       	callq  400700 <create>
  4008e7:	49 89 c4             	mov    %rax,%r12
  4008ea:	4d 85 e4             	test   %r12,%r12
  4008ed:	74 44                	je     400933 <main+0x73>
  4008ef:	8b 35 77 17 20 00    	mov    0x201777(%rip),%esi        # 60206c <n>
  4008f5:	bf 5b 0c 40 00       	mov    $0x400c5b,%edi
  4008fa:	31 c0                	xor    %eax,%eax
  4008fc:	e8 7f fc ff ff       	callq  400580 <printf@plt>
  400901:	4c 89 e3             	mov    %r12,%rbx
  400904:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40090b:	00 00 00 00 00 
  400910:	48 8b 33             	mov    (%rbx),%rsi
  400913:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400918:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40091c:	bf 77 0c 40 00       	mov    $0x400c77,%edi
  400921:	b0 01                	mov    $0x1,%al
  400923:	e8 58 fc ff ff       	callq  400580 <printf@plt>
  400928:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40092c:	48 85 db             	test   %rbx,%rbx
  40092f:	75 df                	jne    400910 <main+0x50>
  400931:	eb 0a                	jmp    40093d <main+0x7d>
  400933:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400938:	e8 33 fc ff ff       	callq  400570 <puts@plt>
  40093d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400942:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40094e:	00 00 
  400950:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400955:	e8 16 fc ff ff       	callq  400570 <puts@plt>
  40095a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400961:	ff 
  400962:	bf a3 0c 40 00       	mov    $0x400ca3,%edi
  400967:	31 c0                	xor    %eax,%eax
  400969:	e8 12 fc ff ff       	callq  400580 <printf@plt>
  40096e:	bf b2 0c 40 00       	mov    $0x400cb2,%edi
  400973:	31 c0                	xor    %eax,%eax
  400975:	4c 89 f6             	mov    %r14,%rsi
  400978:	e8 33 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40097d:	48 8b 3d dc 16 20 00 	mov    0x2016dc(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400984:	e8 17 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400989:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40098d:	83 f8 02             	cmp    $0x2,%eax
  400990:	74 7e                	je     400a10 <main+0x150>
  400992:	83 f8 01             	cmp    $0x1,%eax
  400995:	0f 85 16 02 00 00    	jne    400bb1 <main+0x2f1>
  40099b:	bf b5 0c 40 00       	mov    $0x400cb5,%edi
  4009a0:	31 c0                	xor    %eax,%eax
  4009a2:	e8 d9 fb ff ff       	callq  400580 <printf@plt>
  4009a7:	bf 18 00 00 00       	mov    $0x18,%edi
  4009ac:	e8 df fb ff ff       	callq  400590 <malloc@plt>
  4009b1:	48 89 c3             	mov    %rax,%rbx
  4009b4:	bf 54 0c 40 00       	mov    $0x400c54,%edi
  4009b9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009bd:	31 c0                	xor    %eax,%eax
  4009bf:	48 89 de             	mov    %rbx,%rsi
  4009c2:	e8 e9 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009c7:	4d 85 e4             	test   %r12,%r12
  4009ca:	0f 84 cb 00 00 00    	je     400a9b <main+0x1db>
  4009d0:	48 8b 33             	mov    (%rbx),%rsi
  4009d3:	4c 89 e0             	mov    %r12,%rax
  4009d6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009da:	0f 8e cb 00 00 00    	jle    400aab <main+0x1eb>
  4009e0:	48 89 c1             	mov    %rax,%rcx
  4009e3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009e7:	48 85 c0             	test   %rax,%rax
  4009ea:	0f 84 e4 00 00 00    	je     400ad4 <main+0x214>
  4009f0:	48 3b 30             	cmp    (%rax),%rsi
  4009f3:	7f eb                	jg     4009e0 <main+0x120>
  4009f5:	4c 39 e0             	cmp    %r12,%rax
  4009f8:	0f 84 ad 00 00 00    	je     400aab <main+0x1eb>
  4009fe:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a02:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a06:	e9 d5 00 00 00       	jmpq   400ae0 <main+0x220>
  400a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a10:	bf df 0c 40 00       	mov    $0x400cdf,%edi
  400a15:	31 c0                	xor    %eax,%eax
  400a17:	e8 64 fb ff ff       	callq  400580 <printf@plt>
  400a1c:	bf f1 0c 40 00       	mov    $0x400cf1,%edi
  400a21:	31 c0                	xor    %eax,%eax
  400a23:	4c 89 fe             	mov    %r15,%rsi
  400a26:	e8 85 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a2b:	4d 85 e4             	test   %r12,%r12
  400a2e:	0f 84 6c 01 00 00    	je     400ba0 <main+0x2e0>
  400a34:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a39:	49 39 34 24          	cmp    %rsi,(%r12)
  400a3d:	4c 89 e3             	mov    %r12,%rbx
  400a40:	74 23                	je     400a65 <main+0x1a5>
  400a42:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a49:	1f 84 00 00 00 00 00 
  400a50:	49 89 dd             	mov    %rbx,%r13
  400a53:	49 8b 5d 10          	mov    0x10(%r13),%rbx
  400a57:	48 85 db             	test   %rbx,%rbx
  400a5a:	0f 84 e3 00 00 00    	je     400b43 <main+0x283>
  400a60:	48 39 33             	cmp    %rsi,(%rbx)
  400a63:	75 eb                	jne    400a50 <main+0x190>
  400a65:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400a6a:	31 c0                	xor    %eax,%eax
  400a6c:	e8 0f fb ff ff       	callq  400580 <printf@plt>
  400a71:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
  400a75:	4c 39 e3             	cmp    %r12,%rbx
  400a78:	74 3a                	je     400ab4 <main+0x1f4>
  400a7a:	49 89 6d 10          	mov    %rbp,0x10(%r13)
  400a7e:	48 89 df             	mov    %rbx,%rdi
  400a81:	e8 da fa ff ff       	callq  400560 <free@plt>
  400a86:	83 05 df 15 20 00 ff 	addl   $0xffffffff,0x2015df(%rip)        # 60206c <n>
  400a8d:	4d 85 e4             	test   %r12,%r12
  400a90:	0f 85 be 00 00 00    	jne    400b54 <main+0x294>
  400a96:	e9 05 01 00 00       	jmpq   400ba0 <main+0x2e0>
  400a9b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aa2:	00 
  400aa3:	48 8b 33             	mov    (%rbx),%rsi
  400aa6:	49 89 dc             	mov    %rbx,%r12
  400aa9:	eb 35                	jmp    400ae0 <main+0x220>
  400aab:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400aaf:	49 89 dc             	mov    %rbx,%r12
  400ab2:	eb 2c                	jmp    400ae0 <main+0x220>
  400ab4:	4c 89 e7             	mov    %r12,%rdi
  400ab7:	e8 a4 fa ff ff       	callq  400560 <free@plt>
  400abc:	83 05 a9 15 20 00 ff 	addl   $0xffffffff,0x2015a9(%rip)        # 60206c <n>
  400ac3:	49 89 ec             	mov    %rbp,%r12
  400ac6:	4d 85 e4             	test   %r12,%r12
  400ac9:	0f 85 85 00 00 00    	jne    400b54 <main+0x294>
  400acf:	e9 cc 00 00 00       	jmpq   400ba0 <main+0x2e0>
  400ad4:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ad8:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400adf:	00 
  400ae0:	83 05 85 15 20 00 01 	addl   $0x1,0x201585(%rip)        # 60206c <n>
  400ae7:	bf d1 0c 40 00       	mov    $0x400cd1,%edi
  400aec:	31 c0                	xor    %eax,%eax
  400aee:	e8 8d fa ff ff       	callq  400580 <printf@plt>
  400af3:	4d 85 e4             	test   %r12,%r12
  400af6:	0f 84 a4 00 00 00    	je     400ba0 <main+0x2e0>
  400afc:	8b 35 6a 15 20 00    	mov    0x20156a(%rip),%esi        # 60206c <n>
  400b02:	bf 5b 0c 40 00       	mov    $0x400c5b,%edi
  400b07:	31 c0                	xor    %eax,%eax
  400b09:	e8 72 fa ff ff       	callq  400580 <printf@plt>
  400b0e:	4c 89 e3             	mov    %r12,%rbx
  400b11:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b18:	0f 1f 84 00 00 00 00 
  400b1f:	00 
  400b20:	48 8b 33             	mov    (%rbx),%rsi
  400b23:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b28:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b2c:	bf 77 0c 40 00       	mov    $0x400c77,%edi
  400b31:	b0 01                	mov    $0x1,%al
  400b33:	e8 48 fa ff ff       	callq  400580 <printf@plt>
  400b38:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b3c:	48 85 db             	test   %rbx,%rbx
  400b3f:	75 df                	jne    400b20 <main+0x260>
  400b41:	eb 6a                	jmp    400bad <main+0x2ed>
  400b43:	bf 81 0c 40 00       	mov    $0x400c81,%edi
  400b48:	31 c0                	xor    %eax,%eax
  400b4a:	e8 31 fa ff ff       	callq  400580 <printf@plt>
  400b4f:	4d 85 e4             	test   %r12,%r12
  400b52:	74 4c                	je     400ba0 <main+0x2e0>
  400b54:	8b 35 12 15 20 00    	mov    0x201512(%rip),%esi        # 60206c <n>
  400b5a:	bf 5b 0c 40 00       	mov    $0x400c5b,%edi
  400b5f:	31 c0                	xor    %eax,%eax
  400b61:	e8 1a fa ff ff       	callq  400580 <printf@plt>
  400b66:	4c 89 e3             	mov    %r12,%rbx
  400b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b70:	48 8b 33             	mov    (%rbx),%rsi
  400b73:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b78:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b7c:	bf 77 0c 40 00       	mov    $0x400c77,%edi
  400b81:	b0 01                	mov    $0x1,%al
  400b83:	e8 f8 f9 ff ff       	callq  400580 <printf@plt>
  400b88:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b8c:	48 85 db             	test   %rbx,%rbx
  400b8f:	75 df                	jne    400b70 <main+0x2b0>
  400b91:	eb 1a                	jmp    400bad <main+0x2ed>
  400b93:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b9a:	84 00 00 00 00 00 
  400ba0:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400ba5:	e8 c6 f9 ff ff       	callq  400570 <puts@plt>
  400baa:	45 31 e4             	xor    %r12d,%r12d
  400bad:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400bb1:	85 c0                	test   %eax,%eax
  400bb3:	0f 85 97 fd ff ff    	jne    400950 <main+0x90>
  400bb9:	48 83 c4 18          	add    $0x18,%rsp
  400bbd:	5b                   	pop    %rbx
  400bbe:	41 5c                	pop    %r12
  400bc0:	41 5d                	pop    %r13
  400bc2:	41 5e                	pop    %r14
  400bc4:	41 5f                	pop    %r15
  400bc6:	5d                   	pop    %rbp
  400bc7:	c3                   	retq   
  400bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bcf:	00 

0000000000400bd0 <__libc_csu_init>:
  400bd0:	41 57                	push   %r15
  400bd2:	41 56                	push   %r14
  400bd4:	49 89 d7             	mov    %rdx,%r15
  400bd7:	41 55                	push   %r13
  400bd9:	41 54                	push   %r12
  400bdb:	4c 8d 25 1e 12 20 00 	lea    0x20121e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400be2:	55                   	push   %rbp
  400be3:	48 8d 2d 1e 12 20 00 	lea    0x20121e(%rip),%rbp        # 601e08 <__init_array_end>
  400bea:	53                   	push   %rbx
  400beb:	41 89 fd             	mov    %edi,%r13d
  400bee:	49 89 f6             	mov    %rsi,%r14
  400bf1:	4c 29 e5             	sub    %r12,%rbp
  400bf4:	48 83 ec 08          	sub    $0x8,%rsp
  400bf8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bfc:	e8 2f f9 ff ff       	callq  400530 <_init>
  400c01:	48 85 ed             	test   %rbp,%rbp
  400c04:	74 20                	je     400c26 <__libc_csu_init+0x56>
  400c06:	31 db                	xor    %ebx,%ebx
  400c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c0f:	00 
  400c10:	4c 89 fa             	mov    %r15,%rdx
  400c13:	4c 89 f6             	mov    %r14,%rsi
  400c16:	44 89 ef             	mov    %r13d,%edi
  400c19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c1d:	48 83 c3 01          	add    $0x1,%rbx
  400c21:	48 39 dd             	cmp    %rbx,%rbp
  400c24:	75 ea                	jne    400c10 <__libc_csu_init+0x40>
  400c26:	48 83 c4 08          	add    $0x8,%rsp
  400c2a:	5b                   	pop    %rbx
  400c2b:	5d                   	pop    %rbp
  400c2c:	41 5c                	pop    %r12
  400c2e:	41 5d                	pop    %r13
  400c30:	41 5e                	pop    %r14
  400c32:	41 5f                	pop    %r15
  400c34:	c3                   	retq   
  400c35:	90                   	nop
  400c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c3d:	00 00 00 

0000000000400c40 <__libc_csu_fini>:
  400c40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c44 <_fini>:
  400c44:	48 83 ec 08          	sub    $0x8,%rsp
  400c48:	48 83 c4 08          	add    $0x8,%rsp
  400c4c:	c3                   	retq   
