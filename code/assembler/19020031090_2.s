
c/19020031090_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 20 0c 40 00 	mov    $0x400c20,%r8
  4005d6:	48 c7 c1 b0 0b 40 00 	mov    $0x400bb0,%rcx
  4005dd:	48 c7 c7 b0 08 40 00 	mov    $0x4008b0,%rdi
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

00000000004006b0 <create>:
  4006b0:	41 56                	push   %r14
  4006b2:	53                   	push   %rbx
  4006b3:	50                   	push   %rax
  4006b4:	bf 18 00 00 00       	mov    $0x18,%edi
  4006b9:	e8 d2 fe ff ff       	callq  400590 <malloc@plt>
  4006be:	48 89 c3             	mov    %rax,%rbx
  4006c1:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006c5:	45 31 f6             	xor    %r14d,%r14d
  4006c8:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  4006cd:	31 c0                	xor    %eax,%eax
  4006cf:	48 89 de             	mov    %rbx,%rsi
  4006d2:	e8 d9 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4006d7:	48 8b 03             	mov    (%rbx),%rax
  4006da:	48 85 c0             	test   %rax,%rax
  4006dd:	0f 84 94 00 00 00    	je     400777 <create+0xc7>
  4006e3:	45 31 f6             	xor    %r14d,%r14d
  4006e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006ed:	00 00 00 
  4006f0:	4d 85 f6             	test   %r14,%r14
  4006f3:	74 2b                	je     400720 <create+0x70>
  4006f5:	4c 89 f1             	mov    %r14,%rcx
  4006f8:	49 3b 06             	cmp    (%r14),%rax
  4006fb:	7e 33                	jle    400730 <create+0x80>
  4006fd:	0f 1f 00             	nopl   (%rax)
  400700:	48 89 ca             	mov    %rcx,%rdx
  400703:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400707:	48 85 c9             	test   %rcx,%rcx
  40070a:	74 2c                	je     400738 <create+0x88>
  40070c:	48 3b 01             	cmp    (%rcx),%rax
  40070f:	7f ef                	jg     400700 <create+0x50>
  400711:	4c 39 f1             	cmp    %r14,%rcx
  400714:	74 1a                	je     400730 <create+0x80>
  400716:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40071a:	eb 24                	jmp    400740 <create+0x90>
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)
  400720:	31 c9                	xor    %ecx,%ecx
  400722:	49 89 de             	mov    %rbx,%r14
  400725:	eb 19                	jmp    400740 <create+0x90>
  400727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40072e:	00 00 
  400730:	4c 89 f1             	mov    %r14,%rcx
  400733:	49 89 de             	mov    %rbx,%r14
  400736:	eb 08                	jmp    400740 <create+0x90>
  400738:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40073c:	31 c9                	xor    %ecx,%ecx
  40073e:	66 90                	xchg   %ax,%ax
  400740:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400744:	83 05 21 19 20 00 01 	addl   $0x1,0x201921(%rip)        # 60206c <n>
  40074b:	bf 18 00 00 00       	mov    $0x18,%edi
  400750:	e8 3b fe ff ff       	callq  400590 <malloc@plt>
  400755:	48 89 c3             	mov    %rax,%rbx
  400758:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40075c:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  400761:	31 c0                	xor    %eax,%eax
  400763:	48 89 de             	mov    %rbx,%rsi
  400766:	e8 45 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40076b:	48 8b 03             	mov    (%rbx),%rax
  40076e:	48 85 c0             	test   %rax,%rax
  400771:	0f 85 79 ff ff ff    	jne    4006f0 <create+0x40>
  400777:	48 89 df             	mov    %rbx,%rdi
  40077a:	e8 e1 fd ff ff       	callq  400560 <free@plt>
  40077f:	4c 89 f0             	mov    %r14,%rax
  400782:	48 83 c4 08          	add    $0x8,%rsp
  400786:	5b                   	pop    %rbx
  400787:	41 5e                	pop    %r14
  400789:	c3                   	retq   
  40078a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400790 <insert>:
  400790:	48 85 ff             	test   %rdi,%rdi
  400793:	74 27                	je     4007bc <insert+0x2c>
  400795:	48 8b 0e             	mov    (%rsi),%rcx
  400798:	48 3b 0f             	cmp    (%rdi),%rcx
  40079b:	7e 23                	jle    4007c0 <insert+0x30>
  40079d:	48 89 f8             	mov    %rdi,%rax
  4007a0:	48 89 c2             	mov    %rax,%rdx
  4007a3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4007a7:	48 85 c0             	test   %rax,%rax
  4007aa:	74 29                	je     4007d5 <insert+0x45>
  4007ac:	48 3b 08             	cmp    (%rax),%rcx
  4007af:	7f ef                	jg     4007a0 <insert+0x10>
  4007b1:	48 39 f8             	cmp    %rdi,%rax
  4007b4:	74 0d                	je     4007c3 <insert+0x33>
  4007b6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007ba:	eb 0a                	jmp    4007c6 <insert+0x36>
  4007bc:	31 c0                	xor    %eax,%eax
  4007be:	eb 03                	jmp    4007c3 <insert+0x33>
  4007c0:	48 89 f8             	mov    %rdi,%rax
  4007c3:	48 89 f7             	mov    %rsi,%rdi
  4007c6:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4007ca:	83 05 9b 18 20 00 01 	addl   $0x1,0x20189b(%rip)        # 60206c <n>
  4007d1:	48 89 f8             	mov    %rdi,%rax
  4007d4:	c3                   	retq   
  4007d5:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007d9:	31 c0                	xor    %eax,%eax
  4007db:	eb e9                	jmp    4007c6 <insert+0x36>
  4007dd:	0f 1f 00             	nopl   (%rax)

00000000004007e0 <print>:
  4007e0:	53                   	push   %rbx
  4007e1:	48 89 fb             	mov    %rdi,%rbx
  4007e4:	48 85 db             	test   %rbx,%rbx
  4007e7:	74 3a                	je     400823 <print+0x43>
  4007e9:	8b 35 7d 18 20 00    	mov    0x20187d(%rip),%esi        # 60206c <n>
  4007ef:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  4007f4:	31 c0                	xor    %eax,%eax
  4007f6:	e8 85 fd ff ff       	callq  400580 <printf@plt>
  4007fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400800:	48 8b 33             	mov    (%rbx),%rsi
  400803:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400808:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40080c:	bf 57 0c 40 00       	mov    $0x400c57,%edi
  400811:	b0 01                	mov    $0x1,%al
  400813:	e8 68 fd ff ff       	callq  400580 <printf@plt>
  400818:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40081c:	48 85 db             	test   %rbx,%rbx
  40081f:	75 df                	jne    400800 <print+0x20>
  400821:	5b                   	pop    %rbx
  400822:	c3                   	retq   
  400823:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400828:	5b                   	pop    %rbx
  400829:	e9 42 fd ff ff       	jmpq   400570 <puts@plt>
  40082e:	66 90                	xchg   %ax,%ax

0000000000400830 <del>:
  400830:	53                   	push   %rbx
  400831:	48 89 fb             	mov    %rdi,%rbx
  400834:	48 85 db             	test   %rbx,%rbx
  400837:	74 0b                	je     400844 <del+0x14>
  400839:	48 39 33             	cmp    %rsi,(%rbx)
  40083c:	75 14                	jne    400852 <del+0x22>
  40083e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400842:	eb 4d                	jmp    400891 <del+0x61>
  400844:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400849:	e8 22 fd ff ff       	callq  400570 <puts@plt>
  40084e:	31 db                	xor    %ebx,%ebx
  400850:	eb 52                	jmp    4008a4 <del+0x74>
  400852:	48 89 d9             	mov    %rbx,%rcx
  400855:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40085c:	00 00 00 00 
  400860:	48 89 c8             	mov    %rcx,%rax
  400863:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400867:	48 85 c9             	test   %rcx,%rcx
  40086a:	74 14                	je     400880 <del+0x50>
  40086c:	48 39 31             	cmp    %rsi,(%rcx)
  40086f:	75 ef                	jne    400860 <del+0x30>
  400871:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400875:	48 39 d9             	cmp    %rbx,%rcx
  400878:	74 14                	je     40088e <del+0x5e>
  40087a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40087e:	eb 11                	jmp    400891 <del+0x61>
  400880:	bf 6f 0c 40 00       	mov    $0x400c6f,%edi
  400885:	31 c0                	xor    %eax,%eax
  400887:	e8 f4 fc ff ff       	callq  400580 <printf@plt>
  40088c:	eb 16                	jmp    4008a4 <del+0x74>
  40088e:	48 89 d3             	mov    %rdx,%rbx
  400891:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400896:	31 c0                	xor    %eax,%eax
  400898:	e8 e3 fc ff ff       	callq  400580 <printf@plt>
  40089d:	83 05 c8 17 20 00 ff 	addl   $0xffffffff,0x2017c8(%rip)        # 60206c <n>
  4008a4:	48 89 d8             	mov    %rbx,%rax
  4008a7:	5b                   	pop    %rbx
  4008a8:	c3                   	retq   
  4008a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008b0 <main>:
  4008b0:	41 57                	push   %r15
  4008b2:	41 56                	push   %r14
  4008b4:	41 54                	push   %r12
  4008b6:	53                   	push   %rbx
  4008b7:	48 83 ec 18          	sub    $0x18,%rsp
  4008bb:	bf 10 0d 40 00       	mov    $0x400d10,%edi
  4008c0:	e8 ab fc ff ff       	callq  400570 <puts@plt>
  4008c5:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  4008ca:	e8 a1 fc ff ff       	callq  400570 <puts@plt>
  4008cf:	e8 dc fd ff ff       	callq  4006b0 <create>
  4008d4:	49 89 c4             	mov    %rax,%r12
  4008d7:	4d 85 e4             	test   %r12,%r12
  4008da:	74 47                	je     400923 <main+0x73>
  4008dc:	8b 35 8a 17 20 00    	mov    0x20178a(%rip),%esi        # 60206c <n>
  4008e2:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  4008e7:	31 c0                	xor    %eax,%eax
  4008e9:	e8 92 fc ff ff       	callq  400580 <printf@plt>
  4008ee:	4c 89 e3             	mov    %r12,%rbx
  4008f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008f8:	0f 1f 84 00 00 00 00 
  4008ff:	00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 57 0c 40 00       	mov    $0x400c57,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 68 fc ff ff       	callq  400580 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x50>
  400921:	eb 0a                	jmp    40092d <main+0x7d>
  400923:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400928:	e8 43 fc ff ff       	callq  400570 <puts@plt>
  40092d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400932:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40093e:	00 00 
  400940:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <puts@plt>
  40094a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400951:	ff 
  400952:	bf 84 0c 40 00       	mov    $0x400c84,%edi
  400957:	31 c0                	xor    %eax,%eax
  400959:	e8 22 fc ff ff       	callq  400580 <printf@plt>
  40095e:	bf 93 0c 40 00       	mov    $0x400c93,%edi
  400963:	31 c0                	xor    %eax,%eax
  400965:	4c 89 f6             	mov    %r14,%rsi
  400968:	e8 43 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40096d:	48 8b 3d ec 16 20 00 	mov    0x2016ec(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400974:	e8 27 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400979:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40097d:	83 f8 02             	cmp    $0x2,%eax
  400980:	74 7e                	je     400a00 <main+0x150>
  400982:	83 f8 01             	cmp    $0x1,%eax
  400985:	0f 85 09 02 00 00    	jne    400b94 <main+0x2e4>
  40098b:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400990:	31 c0                	xor    %eax,%eax
  400992:	e8 e9 fb ff ff       	callq  400580 <printf@plt>
  400997:	bf 18 00 00 00       	mov    $0x18,%edi
  40099c:	e8 ef fb ff ff       	callq  400590 <malloc@plt>
  4009a1:	48 89 c3             	mov    %rax,%rbx
  4009a4:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  4009a9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009ad:	31 c0                	xor    %eax,%eax
  4009af:	48 89 de             	mov    %rbx,%rsi
  4009b2:	e8 f9 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009b7:	4d 85 e4             	test   %r12,%r12
  4009ba:	0f 84 ab 00 00 00    	je     400a6b <main+0x1bb>
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	4c 89 e0             	mov    %r12,%rax
  4009c6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009ca:	0f 8e ba 00 00 00    	jle    400a8a <main+0x1da>
  4009d0:	48 89 c1             	mov    %rax,%rcx
  4009d3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009d7:	48 85 c0             	test   %rax,%rax
  4009da:	0f 84 b6 00 00 00    	je     400a96 <main+0x1e6>
  4009e0:	48 3b 30             	cmp    (%rax),%rsi
  4009e3:	7f eb                	jg     4009d0 <main+0x120>
  4009e5:	4c 39 e0             	cmp    %r12,%rax
  4009e8:	0f 84 9c 00 00 00    	je     400a8a <main+0x1da>
  4009ee:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009f2:	e9 99 00 00 00       	jmpq   400a90 <main+0x1e0>
  4009f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009fe:	00 00 
  400a00:	bf c1 0c 40 00       	mov    $0x400cc1,%edi
  400a05:	31 c0                	xor    %eax,%eax
  400a07:	e8 74 fb ff ff       	callq  400580 <printf@plt>
  400a0c:	bf d3 0c 40 00       	mov    $0x400cd3,%edi
  400a11:	31 c0                	xor    %eax,%eax
  400a13:	4c 89 fe             	mov    %r15,%rsi
  400a16:	e8 95 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a1b:	4d 85 e4             	test   %r12,%r12
  400a1e:	74 5b                	je     400a7b <main+0x1cb>
  400a20:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a25:	49 39 34 24          	cmp    %rsi,(%r12)
  400a29:	4c 89 e0             	mov    %r12,%rax
  400a2c:	75 12                	jne    400a40 <main+0x190>
  400a2e:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a33:	e9 fa 00 00 00       	jmpq   400b32 <main+0x282>
  400a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a3f:	00 
  400a40:	48 89 c1             	mov    %rax,%rcx
  400a43:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a47:	48 85 c0             	test   %rax,%rax
  400a4a:	0f 84 b6 00 00 00    	je     400b06 <main+0x256>
  400a50:	48 39 30             	cmp    %rsi,(%rax)
  400a53:	75 eb                	jne    400a40 <main+0x190>
  400a55:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a59:	4c 39 e0             	cmp    %r12,%rax
  400a5c:	0f 84 cd 00 00 00    	je     400b2f <main+0x27f>
  400a62:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a66:	e9 c7 00 00 00       	jmpq   400b32 <main+0x282>
  400a6b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a72:	00 
  400a73:	48 8b 33             	mov    (%rbx),%rsi
  400a76:	49 89 dc             	mov    %rbx,%r12
  400a79:	eb 35                	jmp    400ab0 <main+0x200>
  400a7b:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400a80:	e8 eb fa ff ff       	callq  400570 <puts@plt>
  400a85:	e9 96 00 00 00       	jmpq   400b20 <main+0x270>
  400a8a:	4c 89 e0             	mov    %r12,%rax
  400a8d:	49 89 dc             	mov    %rbx,%r12
  400a90:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a94:	eb 1a                	jmp    400ab0 <main+0x200>
  400a96:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a9a:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aa1:	00 
  400aa2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aa9:	1f 84 00 00 00 00 00 
  400ab0:	83 05 b5 15 20 00 01 	addl   $0x1,0x2015b5(%rip)        # 60206c <n>
  400ab7:	bf b2 0c 40 00       	mov    $0x400cb2,%edi
  400abc:	31 c0                	xor    %eax,%eax
  400abe:	e8 bd fa ff ff       	callq  400580 <printf@plt>
  400ac3:	4d 85 e4             	test   %r12,%r12
  400ac6:	74 58                	je     400b20 <main+0x270>
  400ac8:	8b 35 9e 15 20 00    	mov    0x20159e(%rip),%esi        # 60206c <n>
  400ace:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400ad3:	31 c0                	xor    %eax,%eax
  400ad5:	e8 a6 fa ff ff       	callq  400580 <printf@plt>
  400ada:	4c 89 e3             	mov    %r12,%rbx
  400add:	0f 1f 00             	nopl   (%rax)
  400ae0:	48 8b 33             	mov    (%rbx),%rsi
  400ae3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ae8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400aec:	bf 57 0c 40 00       	mov    $0x400c57,%edi
  400af1:	b0 01                	mov    $0x1,%al
  400af3:	e8 88 fa ff ff       	callq  400580 <printf@plt>
  400af8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400afc:	48 85 db             	test   %rbx,%rbx
  400aff:	75 df                	jne    400ae0 <main+0x230>
  400b01:	e9 8a 00 00 00       	jmpq   400b90 <main+0x2e0>
  400b06:	bf 6f 0c 40 00       	mov    $0x400c6f,%edi
  400b0b:	31 c0                	xor    %eax,%eax
  400b0d:	e8 6e fa ff ff       	callq  400580 <printf@plt>
  400b12:	4d 85 e4             	test   %r12,%r12
  400b15:	75 33                	jne    400b4a <main+0x29a>
  400b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b1e:	00 00 
  400b20:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400b25:	e8 46 fa ff ff       	callq  400570 <puts@plt>
  400b2a:	45 31 e4             	xor    %r12d,%r12d
  400b2d:	eb 61                	jmp    400b90 <main+0x2e0>
  400b2f:	49 89 d4             	mov    %rdx,%r12
  400b32:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400b37:	31 c0                	xor    %eax,%eax
  400b39:	e8 42 fa ff ff       	callq  400580 <printf@plt>
  400b3e:	83 05 27 15 20 00 ff 	addl   $0xffffffff,0x201527(%rip)        # 60206c <n>
  400b45:	4d 85 e4             	test   %r12,%r12
  400b48:	74 d6                	je     400b20 <main+0x270>
  400b4a:	8b 35 1c 15 20 00    	mov    0x20151c(%rip),%esi        # 60206c <n>
  400b50:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400b55:	31 c0                	xor    %eax,%eax
  400b57:	e8 24 fa ff ff       	callq  400580 <printf@plt>
  400b5c:	4c 89 e3             	mov    %r12,%rbx
  400b5f:	90                   	nop
  400b60:	48 8b 33             	mov    (%rbx),%rsi
  400b63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b6c:	bf 57 0c 40 00       	mov    $0x400c57,%edi
  400b71:	b0 01                	mov    $0x1,%al
  400b73:	e8 08 fa ff ff       	callq  400580 <printf@plt>
  400b78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b7c:	48 85 db             	test   %rbx,%rbx
  400b7f:	75 df                	jne    400b60 <main+0x2b0>
  400b81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b88:	0f 1f 84 00 00 00 00 
  400b8f:	00 
  400b90:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b94:	85 c0                	test   %eax,%eax
  400b96:	0f 85 a4 fd ff ff    	jne    400940 <main+0x90>
  400b9c:	31 c0                	xor    %eax,%eax
  400b9e:	48 83 c4 18          	add    $0x18,%rsp
  400ba2:	5b                   	pop    %rbx
  400ba3:	41 5c                	pop    %r12
  400ba5:	41 5e                	pop    %r14
  400ba7:	41 5f                	pop    %r15
  400ba9:	c3                   	retq   
  400baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400bb0 <__libc_csu_init>:
  400bb0:	41 57                	push   %r15
  400bb2:	41 56                	push   %r14
  400bb4:	49 89 d7             	mov    %rdx,%r15
  400bb7:	41 55                	push   %r13
  400bb9:	41 54                	push   %r12
  400bbb:	4c 8d 25 3e 12 20 00 	lea    0x20123e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bc2:	55                   	push   %rbp
  400bc3:	48 8d 2d 3e 12 20 00 	lea    0x20123e(%rip),%rbp        # 601e08 <__init_array_end>
  400bca:	53                   	push   %rbx
  400bcb:	41 89 fd             	mov    %edi,%r13d
  400bce:	49 89 f6             	mov    %rsi,%r14
  400bd1:	4c 29 e5             	sub    %r12,%rbp
  400bd4:	48 83 ec 08          	sub    $0x8,%rsp
  400bd8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bdc:	e8 4f f9 ff ff       	callq  400530 <_init>
  400be1:	48 85 ed             	test   %rbp,%rbp
  400be4:	74 20                	je     400c06 <__libc_csu_init+0x56>
  400be6:	31 db                	xor    %ebx,%ebx
  400be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bef:	00 
  400bf0:	4c 89 fa             	mov    %r15,%rdx
  400bf3:	4c 89 f6             	mov    %r14,%rsi
  400bf6:	44 89 ef             	mov    %r13d,%edi
  400bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bfd:	48 83 c3 01          	add    $0x1,%rbx
  400c01:	48 39 dd             	cmp    %rbx,%rbp
  400c04:	75 ea                	jne    400bf0 <__libc_csu_init+0x40>
  400c06:	48 83 c4 08          	add    $0x8,%rsp
  400c0a:	5b                   	pop    %rbx
  400c0b:	5d                   	pop    %rbp
  400c0c:	41 5c                	pop    %r12
  400c0e:	41 5d                	pop    %r13
  400c10:	41 5e                	pop    %r14
  400c12:	41 5f                	pop    %r15
  400c14:	c3                   	retq   
  400c15:	90                   	nop
  400c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c1d:	00 00 00 

0000000000400c20 <__libc_csu_fini>:
  400c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c24 <_fini>:
  400c24:	48 83 ec 08          	sub    $0x8,%rsp
  400c28:	48 83 c4 08          	add    $0x8,%rsp
  400c2c:	c3                   	retq   
