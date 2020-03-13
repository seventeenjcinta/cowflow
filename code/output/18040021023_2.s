
input/18040021023_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 80 0b 40 00 	mov    $0x400b80,%r8
  4005d6:	48 c7 c1 10 0b 40 00 	mov    $0x400b10,%rcx
  4005dd:	48 c7 c7 60 09 40 00 	mov    $0x400960,%rdi
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
  4006b0:	55                   	push   %rbp
  4006b1:	53                   	push   %rbx
  4006b2:	50                   	push   %rax
  4006b3:	48 89 fb             	mov    %rdi,%rbx
  4006b6:	8b 35 b0 19 20 00    	mov    0x2019b0(%rip),%esi        # 60206c <n>
  4006bc:	31 ed                	xor    %ebp,%ebp
  4006be:	bf 94 0b 40 00       	mov    $0x400b94,%edi
  4006c3:	31 c0                	xor    %eax,%eax
  4006c5:	e8 b6 fe ff ff       	callq  400580 <printf@plt>
  4006ca:	48 85 db             	test   %rbx,%rbx
  4006cd:	74 2f                	je     4006fe <print+0x4e>
  4006cf:	90                   	nop
  4006d0:	48 8b 33             	mov    (%rbx),%rsi
  4006d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006dc:	bf ae 0b 40 00       	mov    $0x400bae,%edi
  4006e1:	b0 01                	mov    $0x1,%al
  4006e3:	e8 98 fe ff ff       	callq  400580 <printf@plt>
  4006e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006ec:	83 c5 01             	add    $0x1,%ebp
  4006ef:	3b 2d 77 19 20 00    	cmp    0x201977(%rip),%ebp        # 60206c <n>
  4006f5:	75 d9                	jne    4006d0 <print+0x20>
  4006f7:	48 83 c4 08          	add    $0x8,%rsp
  4006fb:	5b                   	pop    %rbx
  4006fc:	5d                   	pop    %rbp
  4006fd:	c3                   	retq   
  4006fe:	bf bb 0b 40 00       	mov    $0x400bbb,%edi
  400703:	31 c0                	xor    %eax,%eax
  400705:	48 83 c4 08          	add    $0x8,%rsp
  400709:	5b                   	pop    %rbx
  40070a:	5d                   	pop    %rbp
  40070b:	e9 70 fe ff ff       	jmpq   400580 <printf@plt>

0000000000400710 <create>:
  400710:	41 56                	push   %r14
  400712:	53                   	push   %rbx
  400713:	50                   	push   %rax
  400714:	bf 18 00 00 00       	mov    $0x18,%edi
  400719:	e8 72 fe ff ff       	callq  400590 <malloc@plt>
  40071e:	48 89 c3             	mov    %rax,%rbx
  400721:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400725:	bf ca 0b 40 00       	mov    $0x400bca,%edi
  40072a:	31 c0                	xor    %eax,%eax
  40072c:	48 89 de             	mov    %rbx,%rsi
  40072f:	e8 7c fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400734:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400738:	74 39                	je     400773 <create+0x63>
  40073a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400740:	4c 89 f7             	mov    %r14,%rdi
  400743:	e8 48 00 00 00       	callq  400790 <insert>
  400748:	49 89 c6             	mov    %rax,%r14
  40074b:	bf 18 00 00 00       	mov    $0x18,%edi
  400750:	e8 3b fe ff ff       	callq  400590 <malloc@plt>
  400755:	48 89 c3             	mov    %rax,%rbx
  400758:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40075c:	bf ca 0b 40 00       	mov    $0x400bca,%edi
  400761:	31 c0                	xor    %eax,%eax
  400763:	48 89 de             	mov    %rbx,%rsi
  400766:	e8 45 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40076b:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  40076f:	75 cf                	jne    400740 <create+0x30>
  400771:	eb 00                	jmp    400773 <create+0x63>
  400773:	48 89 df             	mov    %rbx,%rdi
  400776:	e8 e5 fd ff ff       	callq  400560 <free@plt>
  40077b:	4c 89 f0             	mov    %r14,%rax
  40077e:	48 83 c4 08          	add    $0x8,%rsp
  400782:	5b                   	pop    %rbx
  400783:	41 5e                	pop    %r14
  400785:	c3                   	retq   
  400786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40078d:	00 00 00 

0000000000400790 <insert>:
  400790:	41 57                	push   %r15
  400792:	41 56                	push   %r14
  400794:	41 55                	push   %r13
  400796:	41 54                	push   %r12
  400798:	53                   	push   %rbx
  400799:	49 89 fe             	mov    %rdi,%r14
  40079c:	bf 18 00 00 00       	mov    $0x18,%edi
  4007a1:	e8 ea fd ff ff       	callq  400590 <malloc@plt>
  4007a6:	48 89 c3             	mov    %rax,%rbx
  4007a9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ad:	bf ca 0b 40 00       	mov    $0x400bca,%edi
  4007b2:	31 c0                	xor    %eax,%eax
  4007b4:	48 89 de             	mov    %rbx,%rsi
  4007b7:	e8 f4 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007bc:	48 8b 03             	mov    (%rbx),%rax
  4007bf:	48 85 c0             	test   %rax,%rax
  4007c2:	0f 84 ae 00 00 00    	je     400876 <insert+0xe6>
  4007c8:	eb 66                	jmp    400830 <insert+0xa0>
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007d0:	7e 0e                	jle    4007e0 <insert+0x50>
  4007d2:	4d 8b 7e 10          	mov    0x10(%r14),%r15
  4007d6:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4007dd:	00 
  4007de:	eb 6e                	jmp    40084e <insert+0xbe>
  4007e0:	49 3b 07             	cmp    (%r15),%rax
  4007e3:	7e 0e                	jle    4007f3 <insert+0x63>
  4007e5:	4d 8b 7f 10          	mov    0x10(%r15),%r15
  4007e9:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4007f0:	00 
  4007f1:	eb 5b                	jmp    40084e <insert+0xbe>
  4007f3:	4c 89 e1             	mov    %r12,%rcx
  4007f6:	49 3b 45 00          	cmp    0x0(%r13),%rax
  4007fa:	7f 0d                	jg     400809 <insert+0x79>
  4007fc:	eb 1d                	jmp    40081b <insert+0x8b>
  4007fe:	66 90                	xchg   %ax,%ax
  400800:	49 89 cc             	mov    %rcx,%r12
  400803:	49 3b 45 00          	cmp    0x0(%r13),%rax
  400807:	7e 12                	jle    40081b <insert+0x8b>
  400809:	4c 89 e9             	mov    %r13,%rcx
  40080c:	4c 8b 69 10          	mov    0x10(%rcx),%r13
  400810:	4d 85 ed             	test   %r13,%r13
  400813:	75 eb                	jne    400800 <insert+0x70>
  400815:	49 89 cd             	mov    %rcx,%r13
  400818:	4c 89 e1             	mov    %r12,%rcx
  40081b:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
  40081f:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400823:	49 89 cc             	mov    %rcx,%r12
  400826:	eb 26                	jmp    40084e <insert+0xbe>
  400828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40082f:	00 
  400830:	8b 0d 36 18 20 00    	mov    0x201836(%rip),%ecx        # 60206c <n>
  400836:	8d 51 01             	lea    0x1(%rcx),%edx
  400839:	89 15 2d 18 20 00    	mov    %edx,0x20182d(%rip)        # 60206c <n>
  40083f:	85 c9                	test   %ecx,%ecx
  400841:	74 05                	je     400848 <insert+0xb8>
  400843:	49 3b 06             	cmp    (%r14),%rax
  400846:	7d 88                	jge    4007d0 <insert+0x40>
  400848:	49 89 de             	mov    %rbx,%r14
  40084b:	49 89 dd             	mov    %rbx,%r13
  40084e:	bf 18 00 00 00       	mov    $0x18,%edi
  400853:	e8 38 fd ff ff       	callq  400590 <malloc@plt>
  400858:	48 89 c3             	mov    %rax,%rbx
  40085b:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40085f:	bf ca 0b 40 00       	mov    $0x400bca,%edi
  400864:	31 c0                	xor    %eax,%eax
  400866:	48 89 de             	mov    %rbx,%rsi
  400869:	e8 42 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40086e:	48 8b 03             	mov    (%rbx),%rax
  400871:	48 85 c0             	test   %rax,%rax
  400874:	75 ba                	jne    400830 <insert+0xa0>
  400876:	4c 89 f0             	mov    %r14,%rax
  400879:	5b                   	pop    %rbx
  40087a:	41 5c                	pop    %r12
  40087c:	41 5d                	pop    %r13
  40087e:	41 5e                	pop    %r14
  400880:	41 5f                	pop    %r15
  400882:	c3                   	retq   
  400883:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088a:	84 00 00 00 00 00 

0000000000400890 <del>:
  400890:	41 57                	push   %r15
  400892:	41 56                	push   %r14
  400894:	41 55                	push   %r13
  400896:	41 54                	push   %r12
  400898:	53                   	push   %rbx
  400899:	49 89 f7             	mov    %rsi,%r15
  40089c:	49 89 fe             	mov    %rdi,%r14
  40089f:	4d 85 f6             	test   %r14,%r14
  4008a2:	74 39                	je     4008dd <del+0x4d>
  4008a4:	49 8b 06             	mov    (%r14),%rax
  4008a7:	4c 39 f8             	cmp    %r15,%rax
  4008aa:	7f 31                	jg     4008dd <del+0x4d>
  4008ac:	7d 3d                	jge    4008eb <del+0x5b>
  4008ae:	48 89 c1             	mov    %rax,%rcx
  4008b1:	4d 89 f5             	mov    %r14,%r13
  4008b4:	4c 89 f3             	mov    %r14,%rbx
  4008b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4008be:	00 00 
  4008c0:	49 89 dc             	mov    %rbx,%r12
  4008c3:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  4008c8:	48 85 db             	test   %rbx,%rbx
  4008cb:	74 59                	je     400926 <del+0x96>
  4008cd:	48 8b 0b             	mov    (%rbx),%rcx
  4008d0:	49 89 dd             	mov    %rbx,%r13
  4008d3:	4c 89 e2             	mov    %r12,%rdx
  4008d6:	4c 39 f9             	cmp    %r15,%rcx
  4008d9:	7c e5                	jl     4008c0 <del+0x30>
  4008db:	eb 17                	jmp    4008f4 <del+0x64>
  4008dd:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  4008e2:	31 c0                	xor    %eax,%eax
  4008e4:	e8 97 fc ff ff       	callq  400580 <printf@plt>
  4008e9:	eb 31                	jmp    40091c <del+0x8c>
  4008eb:	4c 89 f3             	mov    %r14,%rbx
  4008ee:	4d 89 f5             	mov    %r14,%r13
  4008f1:	48 89 c1             	mov    %rax,%rcx
  4008f4:	4c 39 f9             	cmp    %r15,%rcx
  4008f7:	75 38                	jne    400931 <del+0xa1>
  4008f9:	4c 39 f8             	cmp    %r15,%rax
  4008fc:	74 47                	je     400945 <del+0xb5>
  4008fe:	4d 39 7d 00          	cmp    %r15,0x0(%r13)
  400902:	75 18                	jne    40091c <del+0x8c>
  400904:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400908:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40090d:	48 89 df             	mov    %rbx,%rdi
  400910:	e8 4b fc ff ff       	callq  400560 <free@plt>
  400915:	83 05 50 17 20 00 ff 	addl   $0xffffffff,0x201750(%rip)        # 60206c <n>
  40091c:	5b                   	pop    %rbx
  40091d:	41 5c                	pop    %r12
  40091f:	41 5d                	pop    %r13
  400921:	41 5e                	pop    %r14
  400923:	41 5f                	pop    %r15
  400925:	c3                   	retq   
  400926:	4c 89 e3             	mov    %r12,%rbx
  400929:	49 89 d4             	mov    %rdx,%r12
  40092c:	4c 39 f9             	cmp    %r15,%rcx
  40092f:	74 c8                	je     4008f9 <del+0x69>
  400931:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400936:	31 c0                	xor    %eax,%eax
  400938:	e8 43 fc ff ff       	callq  400580 <printf@plt>
  40093d:	49 8b 06             	mov    (%r14),%rax
  400940:	4c 39 f8             	cmp    %r15,%rax
  400943:	75 b9                	jne    4008fe <del+0x6e>
  400945:	48 89 df             	mov    %rbx,%rdi
  400948:	e8 13 fc ff ff       	callq  400560 <free@plt>
  40094d:	83 05 18 17 20 00 ff 	addl   $0xffffffff,0x201718(%rip)        # 60206c <n>
  400954:	4d 39 7d 00          	cmp    %r15,0x0(%r13)
  400958:	74 aa                	je     400904 <del+0x74>
  40095a:	eb c0                	jmp    40091c <del+0x8c>
  40095c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400960 <main>:
  400960:	55                   	push   %rbp
  400961:	41 57                	push   %r15
  400963:	41 56                	push   %r14
  400965:	41 54                	push   %r12
  400967:	53                   	push   %rbx
  400968:	48 83 ec 10          	sub    $0x10,%rsp
  40096c:	bf 40 0c 40 00       	mov    $0x400c40,%edi
  400971:	e8 fa fb ff ff       	callq  400570 <puts@plt>
  400976:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  40097b:	e8 f0 fb ff ff       	callq  400570 <puts@plt>
  400980:	e8 8b fd ff ff       	callq  400710 <create>
  400985:	49 89 c4             	mov    %rax,%r12
  400988:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  40098d:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400992:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400999:	1f 84 00 00 00 00 00 
  4009a0:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  4009a5:	e8 c6 fb ff ff       	callq  400570 <puts@plt>
  4009aa:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  4009b1:	ff 
  4009b2:	bf e2 0b 40 00       	mov    $0x400be2,%edi
  4009b7:	31 c0                	xor    %eax,%eax
  4009b9:	e8 c2 fb ff ff       	callq  400580 <printf@plt>
  4009be:	bf f1 0b 40 00       	mov    $0x400bf1,%edi
  4009c3:	31 c0                	xor    %eax,%eax
  4009c5:	4c 89 fe             	mov    %r15,%rsi
  4009c8:	e8 e3 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009cd:	48 8b 3d 8c 16 20 00 	mov    0x20168c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  4009d4:	e8 c7 fb ff ff       	callq  4005a0 <_IO_getc@plt>
  4009d9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4009dd:	83 f8 02             	cmp    $0x2,%eax
  4009e0:	0f 84 aa 00 00 00    	je     400a90 <main+0x130>
  4009e6:	83 f8 01             	cmp    $0x1,%eax
  4009e9:	0f 85 05 01 00 00    	jne    400af4 <main+0x194>
  4009ef:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  4009f4:	31 c0                	xor    %eax,%eax
  4009f6:	e8 85 fb ff ff       	callq  400580 <printf@plt>
  4009fb:	bf 18 00 00 00       	mov    $0x18,%edi
  400a00:	e8 8b fb ff ff       	callq  400590 <malloc@plt>
  400a05:	48 89 c3             	mov    %rax,%rbx
  400a08:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a0c:	bf ca 0b 40 00       	mov    $0x400bca,%edi
  400a11:	31 c0                	xor    %eax,%eax
  400a13:	48 89 de             	mov    %rbx,%rsi
  400a16:	e8 95 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a1b:	4c 89 e7             	mov    %r12,%rdi
  400a1e:	e8 6d fd ff ff       	callq  400790 <insert>
  400a23:	49 89 c4             	mov    %rax,%r12
  400a26:	48 8b 33             	mov    (%rbx),%rsi
  400a29:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  400a2e:	31 c0                	xor    %eax,%eax
  400a30:	e8 4b fb ff ff       	callq  400580 <printf@plt>
  400a35:	8b 35 31 16 20 00    	mov    0x201631(%rip),%esi        # 60206c <n>
  400a3b:	bf 94 0b 40 00       	mov    $0x400b94,%edi
  400a40:	31 c0                	xor    %eax,%eax
  400a42:	e8 39 fb ff ff       	callq  400580 <printf@plt>
  400a47:	4d 85 e4             	test   %r12,%r12
  400a4a:	0f 84 88 00 00 00    	je     400ad8 <main+0x178>
  400a50:	31 ed                	xor    %ebp,%ebp
  400a52:	4c 89 e3             	mov    %r12,%rbx
  400a55:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a5c:	00 00 00 00 
  400a60:	48 8b 33             	mov    (%rbx),%rsi
  400a63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a6c:	bf ae 0b 40 00       	mov    $0x400bae,%edi
  400a71:	b0 01                	mov    $0x1,%al
  400a73:	e8 08 fb ff ff       	callq  400580 <printf@plt>
  400a78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a7c:	83 c5 01             	add    $0x1,%ebp
  400a7f:	3b 2d e7 15 20 00    	cmp    0x2015e7(%rip),%ebp        # 60206c <n>
  400a85:	75 d9                	jne    400a60 <main+0x100>
  400a87:	eb 67                	jmp    400af0 <main+0x190>
  400a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a90:	bf 1f 0c 40 00       	mov    $0x400c1f,%edi
  400a95:	31 c0                	xor    %eax,%eax
  400a97:	e8 e4 fa ff ff       	callq  400580 <printf@plt>
  400a9c:	bf 31 0c 40 00       	mov    $0x400c31,%edi
  400aa1:	31 c0                	xor    %eax,%eax
  400aa3:	4c 89 f6             	mov    %r14,%rsi
  400aa6:	e8 05 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400aab:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400ab0:	4c 89 e7             	mov    %r12,%rdi
  400ab3:	e8 d8 fd ff ff       	callq  400890 <del>
  400ab8:	8b 35 ae 15 20 00    	mov    0x2015ae(%rip),%esi        # 60206c <n>
  400abe:	bf 94 0b 40 00       	mov    $0x400b94,%edi
  400ac3:	31 c0                	xor    %eax,%eax
  400ac5:	e8 b6 fa ff ff       	callq  400580 <printf@plt>
  400aca:	bf bb 0b 40 00       	mov    $0x400bbb,%edi
  400acf:	31 c0                	xor    %eax,%eax
  400ad1:	e8 aa fa ff ff       	callq  400580 <printf@plt>
  400ad6:	eb 18                	jmp    400af0 <main+0x190>
  400ad8:	bf bb 0b 40 00       	mov    $0x400bbb,%edi
  400add:	31 c0                	xor    %eax,%eax
  400adf:	e8 9c fa ff ff       	callq  400580 <printf@plt>
  400ae4:	45 31 e4             	xor    %r12d,%r12d
  400ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400aee:	00 00 
  400af0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400af4:	85 c0                	test   %eax,%eax
  400af6:	0f 85 a4 fe ff ff    	jne    4009a0 <main+0x40>
  400afc:	48 83 c4 10          	add    $0x10,%rsp
  400b00:	5b                   	pop    %rbx
  400b01:	41 5c                	pop    %r12
  400b03:	41 5e                	pop    %r14
  400b05:	41 5f                	pop    %r15
  400b07:	5d                   	pop    %rbp
  400b08:	c3                   	retq   
  400b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b10 <__libc_csu_init>:
  400b10:	41 57                	push   %r15
  400b12:	41 56                	push   %r14
  400b14:	49 89 d7             	mov    %rdx,%r15
  400b17:	41 55                	push   %r13
  400b19:	41 54                	push   %r12
  400b1b:	4c 8d 25 de 12 20 00 	lea    0x2012de(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b22:	55                   	push   %rbp
  400b23:	48 8d 2d de 12 20 00 	lea    0x2012de(%rip),%rbp        # 601e08 <__init_array_end>
  400b2a:	53                   	push   %rbx
  400b2b:	41 89 fd             	mov    %edi,%r13d
  400b2e:	49 89 f6             	mov    %rsi,%r14
  400b31:	4c 29 e5             	sub    %r12,%rbp
  400b34:	48 83 ec 08          	sub    $0x8,%rsp
  400b38:	48 c1 fd 03          	sar    $0x3,%rbp
  400b3c:	e8 ef f9 ff ff       	callq  400530 <_init>
  400b41:	48 85 ed             	test   %rbp,%rbp
  400b44:	74 20                	je     400b66 <__libc_csu_init+0x56>
  400b46:	31 db                	xor    %ebx,%ebx
  400b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b4f:	00 
  400b50:	4c 89 fa             	mov    %r15,%rdx
  400b53:	4c 89 f6             	mov    %r14,%rsi
  400b56:	44 89 ef             	mov    %r13d,%edi
  400b59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b5d:	48 83 c3 01          	add    $0x1,%rbx
  400b61:	48 39 dd             	cmp    %rbx,%rbp
  400b64:	75 ea                	jne    400b50 <__libc_csu_init+0x40>
  400b66:	48 83 c4 08          	add    $0x8,%rsp
  400b6a:	5b                   	pop    %rbx
  400b6b:	5d                   	pop    %rbp
  400b6c:	41 5c                	pop    %r12
  400b6e:	41 5d                	pop    %r13
  400b70:	41 5e                	pop    %r14
  400b72:	41 5f                	pop    %r15
  400b74:	c3                   	retq   
  400b75:	90                   	nop
  400b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b7d:	00 00 00 

0000000000400b80 <__libc_csu_fini>:
  400b80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b84 <_fini>:
  400b84:	48 83 ec 08          	sub    $0x8,%rsp
  400b88:	48 83 c4 08          	add    $0x8,%rsp
  400b8c:	c3                   	retq   
