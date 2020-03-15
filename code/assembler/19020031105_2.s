
c/19020031105_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400528 <_init>:
  400528:	48 83 ec 08          	sub    $0x8,%rsp
  40052c:	48 8b 05 c5 0a 20 00 	mov    0x200ac5(%rip),%rax        # 600ff8 <__gmon_start__>
  400533:	48 85 c0             	test   %rax,%rax
  400536:	74 02                	je     40053a <_init+0x12>
  400538:	ff d0                	callq  *%rax
  40053a:	48 83 c4 08          	add    $0x8,%rsp
  40053e:	c3                   	retq   

Disassembly of section .plt:

0000000000400540 <.plt>:
  400540:	ff 35 c2 0a 20 00    	pushq  0x200ac2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400546:	ff 25 c4 0a 20 00    	jmpq   *0x200ac4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40054c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400550 <free@plt>:
  400550:	ff 25 c2 0a 20 00    	jmpq   *0x200ac2(%rip)        # 601018 <free@GLIBC_2.2.5>
  400556:	68 00 00 00 00       	pushq  $0x0
  40055b:	e9 e0 ff ff ff       	jmpq   400540 <.plt>

0000000000400560 <putchar@plt>:
  400560:	ff 25 ba 0a 20 00    	jmpq   *0x200aba(%rip)        # 601020 <putchar@GLIBC_2.2.5>
  400566:	68 01 00 00 00       	pushq  $0x1
  40056b:	e9 d0 ff ff ff       	jmpq   400540 <.plt>

0000000000400570 <puts@plt>:
  400570:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 601028 <puts@GLIBC_2.2.5>
  400576:	68 02 00 00 00       	pushq  $0x2
  40057b:	e9 c0 ff ff ff       	jmpq   400540 <.plt>

0000000000400580 <system@plt>:
  400580:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 601030 <system@GLIBC_2.2.5>
  400586:	68 03 00 00 00       	pushq  $0x3
  40058b:	e9 b0 ff ff ff       	jmpq   400540 <.plt>

0000000000400590 <printf@plt>:
  400590:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 601038 <printf@GLIBC_2.2.5>
  400596:	68 04 00 00 00       	pushq  $0x4
  40059b:	e9 a0 ff ff ff       	jmpq   400540 <.plt>

00000000004005a0 <malloc@plt>:
  4005a0:	ff 25 9a 0a 20 00    	jmpq   *0x200a9a(%rip)        # 601040 <malloc@GLIBC_2.2.5>
  4005a6:	68 05 00 00 00       	pushq  $0x5
  4005ab:	e9 90 ff ff ff       	jmpq   400540 <.plt>

00000000004005b0 <__isoc99_scanf@plt>:
  4005b0:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601048 <__isoc99_scanf@GLIBC_2.7>
  4005b6:	68 06 00 00 00       	pushq  $0x6
  4005bb:	e9 80 ff ff ff       	jmpq   400540 <.plt>

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	31 ed                	xor    %ebp,%ebp
  4005c2:	49 89 d1             	mov    %rdx,%r9
  4005c5:	5e                   	pop    %rsi
  4005c6:	48 89 e2             	mov    %rsp,%rdx
  4005c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005cd:	50                   	push   %rax
  4005ce:	54                   	push   %rsp
  4005cf:	49 c7 c0 50 0a 40 00 	mov    $0x400a50,%r8
  4005d6:	48 c7 c1 e0 09 40 00 	mov    $0x4009e0,%rcx
  4005dd:	48 c7 c7 b0 06 40 00 	mov    $0x4006b0,%rdi
  4005e4:	ff 15 06 0a 20 00    	callq  *0x200a06(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ea:	f4                   	hlt    
  4005eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005f0 <_dl_relocate_static_pie>:
  4005f0:	f3 c3                	repz retq 
  4005f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005f9:	00 00 00 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <deregister_tm_clones>:
  400600:	55                   	push   %rbp
  400601:	b8 60 10 60 00       	mov    $0x601060,%eax
  400606:	48 3d 60 10 60 00    	cmp    $0x601060,%rax
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	74 17                	je     400628 <deregister_tm_clones+0x28>
  400611:	b8 00 00 00 00       	mov    $0x0,%eax
  400616:	48 85 c0             	test   %rax,%rax
  400619:	74 0d                	je     400628 <deregister_tm_clones+0x28>
  40061b:	5d                   	pop    %rbp
  40061c:	bf 60 10 60 00       	mov    $0x601060,%edi
  400621:	ff e0                	jmpq   *%rax
  400623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <register_tm_clones>:
  400630:	be 60 10 60 00       	mov    $0x601060,%esi
  400635:	55                   	push   %rbp
  400636:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
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
  40065e:	bf 60 10 60 00       	mov    $0x601060,%edi
  400663:	ff e0                	jmpq   *%rax
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <__do_global_dtors_aux>:
  400670:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 601060 <__TMC_END__>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 d7 09 20 00 01 	movb   $0x1,0x2009d7(%rip)        # 601060 <__TMC_END__>
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

00000000004006b0 <main>:
  4006b0:	41 56                	push   %r14
  4006b2:	53                   	push   %rbx
  4006b3:	50                   	push   %rax
  4006b4:	bf f0 0a 40 00       	mov    $0x400af0,%edi
  4006b9:	e8 b2 fe ff ff       	callq  400570 <puts@plt>
  4006be:	bf 10 00 00 00       	mov    $0x10,%edi
  4006c3:	e8 d8 fe ff ff       	callq  4005a0 <malloc@plt>
  4006c8:	48 89 c3             	mov    %rax,%rbx
  4006cb:	48 89 df             	mov    %rbx,%rdi
  4006ce:	e8 9d 00 00 00       	callq  400770 <PrintNode>
  4006d3:	bf 10 0b 40 00       	mov    $0x400b10,%edi
  4006d8:	e8 93 fe ff ff       	callq  400570 <puts@plt>
  4006dd:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  4006e2:	eb 14                	jmp    4006f8 <main+0x48>
  4006e4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006eb:	00 00 00 00 00 
  4006f0:	48 89 df             	mov    %rbx,%rdi
  4006f3:	e8 78 00 00 00       	callq  400770 <PrintNode>
  4006f8:	bf 30 0b 40 00       	mov    $0x400b30,%edi
  4006fd:	e8 6e fe ff ff       	callq  400570 <puts@plt>
  400702:	bf 64 0a 40 00       	mov    $0x400a64,%edi
  400707:	31 c0                	xor    %eax,%eax
  400709:	4c 89 f6             	mov    %r14,%rsi
  40070c:	e8 9f fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400711:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400715:	83 f8 01             	cmp    $0x1,%eax
  400718:	74 16                	je     400730 <main+0x80>
  40071a:	83 f8 02             	cmp    $0x2,%eax
  40071d:	74 21                	je     400740 <main+0x90>
  40071f:	85 c0                	test   %eax,%eax
  400721:	75 cd                	jne    4006f0 <main+0x40>
  400723:	eb 28                	jmp    40074d <main+0x9d>
  400725:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40072c:	00 00 00 00 
  400730:	48 89 df             	mov    %rbx,%rdi
  400733:	e8 b8 00 00 00       	callq  4007f0 <InsertNode>
  400738:	eb 0e                	jmp    400748 <main+0x98>
  40073a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400740:	48 89 df             	mov    %rbx,%rdi
  400743:	e8 b8 01 00 00       	callq  400900 <DeleteNode>
  400748:	48 89 c3             	mov    %rax,%rbx
  40074b:	eb a3                	jmp    4006f0 <main+0x40>
  40074d:	bf 67 0a 40 00       	mov    $0x400a67,%edi
  400752:	e8 29 fe ff ff       	callq  400580 <system@plt>
  400757:	31 c0                	xor    %eax,%eax
  400759:	48 83 c4 08          	add    $0x8,%rsp
  40075d:	5b                   	pop    %rbx
  40075e:	41 5e                	pop    %r14
  400760:	c3                   	retq   
  400761:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400768:	0f 1f 84 00 00 00 00 
  40076f:	00 

0000000000400770 <PrintNode>:
  400770:	53                   	push   %rbx
  400771:	48 89 fb             	mov    %rdi,%rbx
  400774:	bf 0a 00 00 00       	mov    $0xa,%edi
  400779:	e8 e2 fd ff ff       	callq  400560 <putchar@plt>
  40077e:	8b 35 e0 08 20 00    	mov    0x2008e0(%rip),%esi        # 601064 <n>
  400784:	bf b9 0a 40 00       	mov    $0x400ab9,%edi
  400789:	31 c0                	xor    %eax,%eax
  40078b:	e8 00 fe ff ff       	callq  400590 <printf@plt>
  400790:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  400795:	e8 d6 fd ff ff       	callq  400570 <puts@plt>
  40079a:	48 85 db             	test   %rbx,%rbx
  40079d:	75 31                	jne    4007d0 <PrintNode+0x60>
  40079f:	eb 39                	jmp    4007da <PrintNode+0x6a>
  4007a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007a8:	0f 1f 84 00 00 00 00 
  4007af:	00 
  4007b0:	8b 33                	mov    (%rbx),%esi
  4007b2:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  4007b7:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007bb:	bf cd 0a 40 00       	mov    $0x400acd,%edi
  4007c0:	b0 01                	mov    $0x1,%al
  4007c2:	e8 c9 fd ff ff       	callq  400590 <printf@plt>
  4007c7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4007cb:	48 85 db             	test   %rbx,%rbx
  4007ce:	74 0a                	je     4007da <PrintNode+0x6a>
  4007d0:	8b 05 8e 08 20 00    	mov    0x20088e(%rip),%eax        # 601064 <n>
  4007d6:	85 c0                	test   %eax,%eax
  4007d8:	75 d6                	jne    4007b0 <PrintNode+0x40>
  4007da:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  4007df:	e8 8c fd ff ff       	callq  400570 <puts@plt>
  4007e4:	bf 0a 00 00 00       	mov    $0xa,%edi
  4007e9:	5b                   	pop    %rbx
  4007ea:	e9 71 fd ff ff       	jmpq   400560 <putchar@plt>
  4007ef:	90                   	nop

00000000004007f0 <InsertNode>:
  4007f0:	55                   	push   %rbp
  4007f1:	41 56                	push   %r14
  4007f3:	53                   	push   %rbx
  4007f4:	48 83 ec 10          	sub    $0x10,%rsp
  4007f8:	49 89 fe             	mov    %rdi,%r14
  4007fb:	bf 6d 0a 40 00       	mov    $0x400a6d,%edi
  400800:	31 c0                	xor    %eax,%eax
  400802:	e8 89 fd ff ff       	callq  400590 <printf@plt>
  400807:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40080c:	bf 64 0a 40 00       	mov    $0x400a64,%edi
  400811:	31 c0                	xor    %eax,%eax
  400813:	e8 98 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400818:	bf 7f 0a 40 00       	mov    $0x400a7f,%edi
  40081d:	31 c0                	xor    %eax,%eax
  40081f:	e8 6c fd ff ff       	callq  400590 <printf@plt>
  400824:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  400829:	bf 91 0a 40 00       	mov    $0x400a91,%edi
  40082e:	31 c0                	xor    %eax,%eax
  400830:	e8 7b fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400835:	8b 2d 29 08 20 00    	mov    0x200829(%rip),%ebp        # 601064 <n>
  40083b:	85 ed                	test   %ebp,%ebp
  40083d:	74 57                	je     400896 <InsertNode+0xa6>
  40083f:	bf 10 00 00 00       	mov    $0x10,%edi
  400844:	e8 57 fd ff ff       	callq  4005a0 <malloc@plt>
  400849:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40084d:	89 08                	mov    %ecx,(%rax)
  40084f:	8b 54 24 08          	mov    0x8(%rsp),%edx
  400853:	89 50 04             	mov    %edx,0x4(%rax)
  400856:	41 8b 36             	mov    (%r14),%esi
  400859:	39 f1                	cmp    %esi,%ecx
  40085b:	7e 58                	jle    4008b5 <InsertNode+0xc5>
  40085d:	4c 89 f3             	mov    %r14,%rbx
  400860:	4c 89 f2             	mov    %r14,%rdx
  400863:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40086a:	84 00 00 00 00 00 
  400870:	48 89 d7             	mov    %rdx,%rdi
  400873:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  400877:	48 85 d2             	test   %rdx,%rdx
  40087a:	74 51                	je     4008cd <InsertNode+0xdd>
  40087c:	8b 32                	mov    (%rdx),%esi
  40087e:	48 89 fb             	mov    %rdi,%rbx
  400881:	39 f1                	cmp    %esi,%ecx
  400883:	7f eb                	jg     400870 <InsertNode+0x80>
  400885:	39 f1                	cmp    %esi,%ecx
  400887:	7d 36                	jge    4008bf <InsertNode+0xcf>
  400889:	3b 0f                	cmp    (%rdi),%ecx
  40088b:	7d 4c                	jge    4008d9 <InsertNode+0xe9>
  40088d:	48 89 78 08          	mov    %rdi,0x8(%rax)
  400891:	49 89 c6             	mov    %rax,%r14
  400894:	eb 4b                	jmp    4008e1 <InsertNode+0xf1>
  400896:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40089a:	41 89 06             	mov    %eax,(%r14)
  40089d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4008a1:	41 89 46 04          	mov    %eax,0x4(%r14)
  4008a5:	49 c7 46 08 00 00 00 	movq   $0x0,0x8(%r14)
  4008ac:	00 
  4008ad:	8b 2d b1 07 20 00    	mov    0x2007b1(%rip),%ebp        # 601064 <n>
  4008b3:	eb 2c                	jmp    4008e1 <InsertNode+0xf1>
  4008b5:	4c 89 f2             	mov    %r14,%rdx
  4008b8:	4c 89 f7             	mov    %r14,%rdi
  4008bb:	39 f1                	cmp    %esi,%ecx
  4008bd:	7c ca                	jl     400889 <InsertNode+0x99>
  4008bf:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4008c3:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4008c7:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4008cb:	eb 14                	jmp    4008e1 <InsertNode+0xf1>
  4008cd:	48 89 fa             	mov    %rdi,%rdx
  4008d0:	48 89 df             	mov    %rbx,%rdi
  4008d3:	39 f1                	cmp    %esi,%ecx
  4008d5:	7c b2                	jl     400889 <InsertNode+0x99>
  4008d7:	eb e6                	jmp    4008bf <InsertNode+0xcf>
  4008d9:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4008dd:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4008e1:	83 c5 01             	add    $0x1,%ebp
  4008e4:	89 2d 7a 07 20 00    	mov    %ebp,0x20077a(%rip)        # 601064 <n>
  4008ea:	4c 89 f0             	mov    %r14,%rax
  4008ed:	48 83 c4 10          	add    $0x10,%rsp
  4008f1:	5b                   	pop    %rbx
  4008f2:	41 5e                	pop    %r14
  4008f4:	5d                   	pop    %rbp
  4008f5:	c3                   	retq   
  4008f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008fd:	00 00 00 

0000000000400900 <DeleteNode>:
  400900:	53                   	push   %rbx
  400901:	48 83 ec 10          	sub    $0x10,%rsp
  400905:	48 89 fb             	mov    %rdi,%rbx
  400908:	83 3d 55 07 20 00 00 	cmpl   $0x0,0x200755(%rip)        # 601064 <n>
  40090f:	74 52                	je     400963 <DeleteNode+0x63>
  400911:	bf 94 0a 40 00       	mov    $0x400a94,%edi
  400916:	31 c0                	xor    %eax,%eax
  400918:	e8 73 fc ff ff       	callq  400590 <printf@plt>
  40091d:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  400922:	bf 64 0a 40 00       	mov    $0x400a64,%edi
  400927:	31 c0                	xor    %eax,%eax
  400929:	e8 82 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40092e:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  400932:	8b 03                	mov    (%rbx),%eax
  400934:	39 c6                	cmp    %eax,%esi
  400936:	7e 37                	jle    40096f <DeleteNode+0x6f>
  400938:	48 89 da             	mov    %rbx,%rdx
  40093b:	48 89 df             	mov    %rbx,%rdi
  40093e:	66 90                	xchg   %ax,%ax
  400940:	48 89 f9             	mov    %rdi,%rcx
  400943:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400947:	48 85 ff             	test   %rdi,%rdi
  40094a:	74 40                	je     40098c <DeleteNode+0x8c>
  40094c:	8b 07                	mov    (%rdi),%eax
  40094e:	48 89 ca             	mov    %rcx,%rdx
  400951:	39 c6                	cmp    %eax,%esi
  400953:	7f eb                	jg     400940 <DeleteNode+0x40>
  400955:	39 c6                	cmp    %eax,%esi
  400957:	75 20                	jne    400979 <DeleteNode+0x79>
  400959:	3b 31                	cmp    (%rcx),%esi
  40095b:	75 3b                	jne    400998 <DeleteNode+0x98>
  40095d:	48 8b 59 08          	mov    0x8(%rcx),%rbx
  400961:	eb 3d                	jmp    4009a0 <DeleteNode+0xa0>
  400963:	bf d8 0a 40 00       	mov    $0x400ad8,%edi
  400968:	e8 03 fc ff ff       	callq  400570 <puts@plt>
  40096d:	eb 4f                	jmp    4009be <DeleteNode+0xbe>
  40096f:	48 89 df             	mov    %rbx,%rdi
  400972:	48 89 d9             	mov    %rbx,%rcx
  400975:	39 c6                	cmp    %eax,%esi
  400977:	74 e0                	je     400959 <DeleteNode+0x59>
  400979:	bf aa 0a 40 00       	mov    $0x400aaa,%edi
  40097e:	31 c0                	xor    %eax,%eax
  400980:	e8 0b fc ff ff       	callq  400590 <printf@plt>
  400985:	48 85 db             	test   %rbx,%rbx
  400988:	75 34                	jne    4009be <DeleteNode+0xbe>
  40098a:	eb 25                	jmp    4009b1 <DeleteNode+0xb1>
  40098c:	48 89 cf             	mov    %rcx,%rdi
  40098f:	48 89 d1             	mov    %rdx,%rcx
  400992:	39 c6                	cmp    %eax,%esi
  400994:	74 c3                	je     400959 <DeleteNode+0x59>
  400996:	eb e1                	jmp    400979 <DeleteNode+0x79>
  400998:	48 8b 47 08          	mov    0x8(%rdi),%rax
  40099c:	48 89 41 08          	mov    %rax,0x8(%rcx)
  4009a0:	e8 ab fb ff ff       	callq  400550 <free@plt>
  4009a5:	83 05 b8 06 20 00 ff 	addl   $0xffffffff,0x2006b8(%rip)        # 601064 <n>
  4009ac:	48 85 db             	test   %rbx,%rbx
  4009af:	75 0d                	jne    4009be <DeleteNode+0xbe>
  4009b1:	bf 10 00 00 00       	mov    $0x10,%edi
  4009b6:	e8 e5 fb ff ff       	callq  4005a0 <malloc@plt>
  4009bb:	48 89 c3             	mov    %rax,%rbx
  4009be:	48 89 d8             	mov    %rbx,%rax
  4009c1:	48 83 c4 10          	add    $0x10,%rsp
  4009c5:	5b                   	pop    %rbx
  4009c6:	c3                   	retq   
  4009c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009ce:	00 00 

00000000004009d0 <CreateNode>:
  4009d0:	bf 10 00 00 00       	mov    $0x10,%edi
  4009d5:	e9 c6 fb ff ff       	jmpq   4005a0 <malloc@plt>
  4009da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004009e0 <__libc_csu_init>:
  4009e0:	41 57                	push   %r15
  4009e2:	41 56                	push   %r14
  4009e4:	49 89 d7             	mov    %rdx,%r15
  4009e7:	41 55                	push   %r13
  4009e9:	41 54                	push   %r12
  4009eb:	4c 8d 25 0e 04 20 00 	lea    0x20040e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  4009f2:	55                   	push   %rbp
  4009f3:	48 8d 2d 0e 04 20 00 	lea    0x20040e(%rip),%rbp        # 600e08 <__init_array_end>
  4009fa:	53                   	push   %rbx
  4009fb:	41 89 fd             	mov    %edi,%r13d
  4009fe:	49 89 f6             	mov    %rsi,%r14
  400a01:	4c 29 e5             	sub    %r12,%rbp
  400a04:	48 83 ec 08          	sub    $0x8,%rsp
  400a08:	48 c1 fd 03          	sar    $0x3,%rbp
  400a0c:	e8 17 fb ff ff       	callq  400528 <_init>
  400a11:	48 85 ed             	test   %rbp,%rbp
  400a14:	74 20                	je     400a36 <__libc_csu_init+0x56>
  400a16:	31 db                	xor    %ebx,%ebx
  400a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a1f:	00 
  400a20:	4c 89 fa             	mov    %r15,%rdx
  400a23:	4c 89 f6             	mov    %r14,%rsi
  400a26:	44 89 ef             	mov    %r13d,%edi
  400a29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a2d:	48 83 c3 01          	add    $0x1,%rbx
  400a31:	48 39 dd             	cmp    %rbx,%rbp
  400a34:	75 ea                	jne    400a20 <__libc_csu_init+0x40>
  400a36:	48 83 c4 08          	add    $0x8,%rsp
  400a3a:	5b                   	pop    %rbx
  400a3b:	5d                   	pop    %rbp
  400a3c:	41 5c                	pop    %r12
  400a3e:	41 5d                	pop    %r13
  400a40:	41 5e                	pop    %r14
  400a42:	41 5f                	pop    %r15
  400a44:	c3                   	retq   
  400a45:	90                   	nop
  400a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a4d:	00 00 00 

0000000000400a50 <__libc_csu_fini>:
  400a50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400a54 <_fini>:
  400a54:	48 83 ec 08          	sub    $0x8,%rsp
  400a58:	48 83 c4 08          	add    $0x8,%rsp
  400a5c:	c3                   	retq   
