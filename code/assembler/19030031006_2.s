
c/19030031006_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 d0 0c 40 00 	mov    $0x400cd0,%r8
  4005d6:	48 c7 c1 60 0c 40 00 	mov    $0x400c60,%rcx
  4005dd:	48 c7 c7 20 09 40 00 	mov    $0x400920,%rdi
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
  4006b4:	8b 35 b2 19 20 00    	mov    0x2019b2(%rip),%esi        # 60206c <n>
  4006ba:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  4006bf:	31 c0                	xor    %eax,%eax
  4006c1:	e8 ba fe ff ff       	callq  400580 <printf@plt>
  4006c6:	48 85 db             	test   %rbx,%rbx
  4006c9:	74 26                	je     4006f1 <print+0x41>
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	48 8b 33             	mov    (%rbx),%rsi
  4006d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006dc:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  4006e1:	b0 01                	mov    $0x1,%al
  4006e3:	e8 98 fe ff ff       	callq  400580 <printf@plt>
  4006e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006ec:	48 85 db             	test   %rbx,%rbx
  4006ef:	75 df                	jne    4006d0 <print+0x20>
  4006f1:	5b                   	pop    %rbx
  4006f2:	c3                   	retq   
  4006f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006fa:	84 00 00 00 00 00 

0000000000400700 <insert>:
  400700:	48 85 ff             	test   %rdi,%rdi
  400703:	74 42                	je     400747 <insert+0x47>
  400705:	4c 8d 4f 10          	lea    0x10(%rdi),%r9
  400709:	48 8b 57 10          	mov    0x10(%rdi),%rdx
  40070d:	4c 8b 06             	mov    (%rsi),%r8
  400710:	48 85 d2             	test   %rdx,%rdx
  400713:	74 36                	je     40074b <insert+0x4b>
  400715:	48 89 f9             	mov    %rdi,%rcx
  400718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40071f:	00 
  400720:	48 89 c8             	mov    %rcx,%rax
  400723:	48 89 d1             	mov    %rdx,%rcx
  400726:	4c 3b 00             	cmp    (%rax),%r8
  400729:	7e 33                	jle    40075e <insert+0x5e>
  40072b:	4c 8d 49 10          	lea    0x10(%rcx),%r9
  40072f:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400733:	49 89 c2             	mov    %rax,%r10
  400736:	48 85 d2             	test   %rdx,%rdx
  400739:	75 e5                	jne    400720 <insert+0x20>
  40073b:	4c 3b 01             	cmp    (%rcx),%r8
  40073e:	7e 13                	jle    400753 <insert+0x53>
  400740:	49 89 31             	mov    %rsi,(%r9)
  400743:	31 c9                	xor    %ecx,%ecx
  400745:	eb 2a                	jmp    400771 <insert+0x71>
  400747:	31 c9                	xor    %ecx,%ecx
  400749:	eb 23                	jmp    40076e <insert+0x6e>
  40074b:	48 89 f9             	mov    %rdi,%rcx
  40074e:	4c 3b 01             	cmp    (%rcx),%r8
  400751:	7f ed                	jg     400740 <insert+0x40>
  400753:	48 39 f9             	cmp    %rdi,%rcx
  400756:	74 13                	je     40076b <insert+0x6b>
  400758:	48 89 70 10          	mov    %rsi,0x10(%rax)
  40075c:	eb 13                	jmp    400771 <insert+0x71>
  40075e:	48 89 c1             	mov    %rax,%rcx
  400761:	4c 89 d0             	mov    %r10,%rax
  400764:	4c 3b 01             	cmp    (%rcx),%r8
  400767:	7f d7                	jg     400740 <insert+0x40>
  400769:	eb e8                	jmp    400753 <insert+0x53>
  40076b:	48 89 f9             	mov    %rdi,%rcx
  40076e:	48 89 f7             	mov    %rsi,%rdi
  400771:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  400775:	83 05 f0 18 20 00 01 	addl   $0x1,0x2018f0(%rip)        # 60206c <n>
  40077c:	48 89 f8             	mov    %rdi,%rax
  40077f:	c3                   	retq   

0000000000400780 <creats>:
  400780:	41 57                	push   %r15
  400782:	41 56                	push   %r14
  400784:	53                   	push   %rbx
  400785:	bf 18 00 00 00       	mov    $0x18,%edi
  40078a:	e8 01 fe ff ff       	callq  400590 <malloc@plt>
  40078f:	49 89 c7             	mov    %rax,%r15
  400792:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400796:	45 31 f6             	xor    %r14d,%r14d
  400799:	bf 0a 0d 40 00       	mov    $0x400d0a,%edi
  40079e:	31 c0                	xor    %eax,%eax
  4007a0:	4c 89 fe             	mov    %r15,%rsi
  4007a3:	e8 08 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007a8:	49 8b 07             	mov    (%r15),%rax
  4007ab:	48 85 c0             	test   %rax,%rax
  4007ae:	0f 84 c9 00 00 00    	je     40087d <creats+0xfd>
  4007b4:	45 31 f6             	xor    %r14d,%r14d
  4007b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007be:	00 00 
  4007c0:	4d 85 f6             	test   %r14,%r14
  4007c3:	74 4b                	je     400810 <creats+0x90>
  4007c5:	49 8d 56 10          	lea    0x10(%r14),%rdx
  4007c9:	49 8b 7e 10          	mov    0x10(%r14),%rdi
  4007cd:	48 85 ff             	test   %rdi,%rdi
  4007d0:	74 4e                	je     400820 <creats+0xa0>
  4007d2:	4c 89 f1             	mov    %r14,%rcx
  4007d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4007dc:	00 00 00 00 
  4007e0:	48 89 ce             	mov    %rcx,%rsi
  4007e3:	48 89 f9             	mov    %rdi,%rcx
  4007e6:	48 3b 06             	cmp    (%rsi),%rax
  4007e9:	7e 48                	jle    400833 <creats+0xb3>
  4007eb:	48 8d 51 10          	lea    0x10(%rcx),%rdx
  4007ef:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  4007f3:	48 89 f3             	mov    %rsi,%rbx
  4007f6:	48 85 ff             	test   %rdi,%rdi
  4007f9:	75 e5                	jne    4007e0 <creats+0x60>
  4007fb:	48 3b 01             	cmp    (%rcx),%rax
  4007fe:	7e 28                	jle    400828 <creats+0xa8>
  400800:	4c 89 3a             	mov    %r15,(%rdx)
  400803:	31 c9                	xor    %ecx,%ecx
  400805:	eb 3f                	jmp    400846 <creats+0xc6>
  400807:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40080e:	00 00 
  400810:	31 c9                	xor    %ecx,%ecx
  400812:	eb 2f                	jmp    400843 <creats+0xc3>
  400814:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40081b:	00 00 00 00 00 
  400820:	4c 89 f1             	mov    %r14,%rcx
  400823:	48 3b 01             	cmp    (%rcx),%rax
  400826:	7f d8                	jg     400800 <creats+0x80>
  400828:	4c 39 f1             	cmp    %r14,%rcx
  40082b:	74 13                	je     400840 <creats+0xc0>
  40082d:	4c 89 7e 10          	mov    %r15,0x10(%rsi)
  400831:	eb 13                	jmp    400846 <creats+0xc6>
  400833:	48 89 f1             	mov    %rsi,%rcx
  400836:	48 89 de             	mov    %rbx,%rsi
  400839:	48 3b 01             	cmp    (%rcx),%rax
  40083c:	7f c2                	jg     400800 <creats+0x80>
  40083e:	eb e8                	jmp    400828 <creats+0xa8>
  400840:	4c 89 f1             	mov    %r14,%rcx
  400843:	4d 89 fe             	mov    %r15,%r14
  400846:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  40084a:	83 05 1b 18 20 00 01 	addl   $0x1,0x20181b(%rip)        # 60206c <n>
  400851:	bf 18 00 00 00       	mov    $0x18,%edi
  400856:	e8 35 fd ff ff       	callq  400590 <malloc@plt>
  40085b:	49 89 c7             	mov    %rax,%r15
  40085e:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400862:	bf 0a 0d 40 00       	mov    $0x400d0a,%edi
  400867:	31 c0                	xor    %eax,%eax
  400869:	4c 89 fe             	mov    %r15,%rsi
  40086c:	e8 3f fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400871:	49 8b 07             	mov    (%r15),%rax
  400874:	48 85 c0             	test   %rax,%rax
  400877:	0f 85 43 ff ff ff    	jne    4007c0 <creats+0x40>
  40087d:	4c 89 f0             	mov    %r14,%rax
  400880:	5b                   	pop    %rbx
  400881:	41 5e                	pop    %r14
  400883:	41 5f                	pop    %r15
  400885:	c3                   	retq   
  400886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40088d:	00 00 00 

0000000000400890 <del>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	48 85 db             	test   %rbx,%rbx
  400897:	74 42                	je     4008db <del+0x4b>
  400899:	48 8b 03             	mov    (%rbx),%rax
  40089c:	48 39 f0             	cmp    %rsi,%rax
  40089f:	7d 48                	jge    4008e9 <del+0x59>
  4008a1:	48 89 df             	mov    %rbx,%rdi
  4008a4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ab:	00 00 00 00 00 
  4008b0:	48 89 f9             	mov    %rdi,%rcx
  4008b3:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  4008b7:	48 85 ff             	test   %rdi,%rdi
  4008ba:	74 41                	je     4008fd <del+0x6d>
  4008bc:	48 8b 07             	mov    (%rdi),%rax
  4008bf:	48 89 ca             	mov    %rcx,%rdx
  4008c2:	48 39 f0             	cmp    %rsi,%rax
  4008c5:	7c e9                	jl     4008b0 <del+0x20>
  4008c7:	48 39 f0             	cmp    %rsi,%rax
  4008ca:	75 25                	jne    4008f1 <del+0x61>
  4008cc:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4008d0:	48 39 df             	cmp    %rbx,%rdi
  4008d3:	74 35                	je     40090a <del+0x7a>
  4008d5:	48 89 41 10          	mov    %rax,0x10(%rcx)
  4008d9:	eb 32                	jmp    40090d <del+0x7d>
  4008db:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  4008e0:	e8 8b fc ff ff       	callq  400570 <puts@plt>
  4008e5:	31 db                	xor    %ebx,%ebx
  4008e7:	eb 30                	jmp    400919 <del+0x89>
  4008e9:	48 89 df             	mov    %rbx,%rdi
  4008ec:	48 39 f0             	cmp    %rsi,%rax
  4008ef:	74 db                	je     4008cc <del+0x3c>
  4008f1:	bf 65 0d 40 00       	mov    $0x400d65,%edi
  4008f6:	e8 75 fc ff ff       	callq  400570 <puts@plt>
  4008fb:	eb 1c                	jmp    400919 <del+0x89>
  4008fd:	48 89 cf             	mov    %rcx,%rdi
  400900:	48 89 d1             	mov    %rdx,%rcx
  400903:	48 39 f0             	cmp    %rsi,%rax
  400906:	74 c4                	je     4008cc <del+0x3c>
  400908:	eb e7                	jmp    4008f1 <del+0x61>
  40090a:	48 89 c3             	mov    %rax,%rbx
  40090d:	e8 4e fc ff ff       	callq  400560 <free@plt>
  400912:	83 05 53 17 20 00 ff 	addl   $0xffffffff,0x201753(%rip)        # 60206c <n>
  400919:	48 89 d8             	mov    %rbx,%rax
  40091c:	5b                   	pop    %rbx
  40091d:	c3                   	retq   
  40091e:	66 90                	xchg   %ax,%ax

0000000000400920 <main>:
  400920:	41 57                	push   %r15
  400922:	41 56                	push   %r14
  400924:	41 55                	push   %r13
  400926:	41 54                	push   %r12
  400928:	53                   	push   %rbx
  400929:	48 83 ec 10          	sub    $0x10,%rsp
  40092d:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400932:	e8 39 fc ff ff       	callq  400570 <puts@plt>
  400937:	e8 44 fe ff ff       	callq  400780 <creats>
  40093c:	49 89 c4             	mov    %rax,%r12
  40093f:	8b 35 27 17 20 00    	mov    0x201727(%rip),%esi        # 60206c <n>
  400945:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  40094a:	31 c0                	xor    %eax,%eax
  40094c:	e8 2f fc ff ff       	callq  400580 <printf@plt>
  400951:	4d 85 e4             	test   %r12,%r12
  400954:	74 2b                	je     400981 <main+0x61>
  400956:	4c 89 e3             	mov    %r12,%rbx
  400959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400960:	48 8b 33             	mov    (%rbx),%rsi
  400963:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400968:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40096c:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400971:	b0 01                	mov    $0x1,%al
  400973:	e8 08 fc ff ff       	callq  400580 <printf@plt>
  400978:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40097c:	48 85 db             	test   %rbx,%rbx
  40097f:	75 df                	jne    400960 <main+0x40>
  400981:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  400986:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  40098b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400990:	bf c0 0d 40 00       	mov    $0x400dc0,%edi
  400995:	e8 d6 fb ff ff       	callq  400570 <puts@plt>
  40099a:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  4009a1:	ff 
  4009a2:	bf 11 0d 40 00       	mov    $0x400d11,%edi
  4009a7:	31 c0                	xor    %eax,%eax
  4009a9:	e8 d2 fb ff ff       	callq  400580 <printf@plt>
  4009ae:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  4009b3:	31 c0                	xor    %eax,%eax
  4009b5:	4c 89 f6             	mov    %r14,%rsi
  4009b8:	e8 f3 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009bd:	48 8b 3d 9c 16 20 00 	mov    0x20169c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  4009c4:	e8 d7 fb ff ff       	callq  4005a0 <_IO_getc@plt>
  4009c9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4009cd:	83 f8 02             	cmp    $0x2,%eax
  4009d0:	0f 84 9a 00 00 00    	je     400a70 <main+0x150>
  4009d6:	83 f8 01             	cmp    $0x1,%eax
  4009d9:	0f 85 68 02 00 00    	jne    400c47 <main+0x327>
  4009df:	bf 24 0d 40 00       	mov    $0x400d24,%edi
  4009e4:	31 c0                	xor    %eax,%eax
  4009e6:	e8 95 fb ff ff       	callq  400580 <printf@plt>
  4009eb:	bf 18 00 00 00       	mov    $0x18,%edi
  4009f0:	e8 9b fb ff ff       	callq  400590 <malloc@plt>
  4009f5:	49 89 c5             	mov    %rax,%r13
  4009f8:	bf 0a 0d 40 00       	mov    $0x400d0a,%edi
  4009fd:	49 8d 55 08          	lea    0x8(%r13),%rdx
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 ee             	mov    %r13,%rsi
  400a06:	e8 a5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	0f 84 d2 00 00 00    	je     400ae6 <main+0x1c6>
  400a14:	49 8d 44 24 10       	lea    0x10(%r12),%rax
  400a19:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
  400a1e:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400a22:	48 85 ff             	test   %rdi,%rdi
  400a25:	0f 84 07 01 00 00    	je     400b32 <main+0x212>
  400a2b:	4c 89 e1             	mov    %r12,%rcx
  400a2e:	66 90                	xchg   %ax,%ax
  400a30:	48 89 ca             	mov    %rcx,%rdx
  400a33:	48 89 f9             	mov    %rdi,%rcx
  400a36:	48 3b 32             	cmp    (%rdx),%rsi
  400a39:	0f 8e 15 01 00 00    	jle    400b54 <main+0x234>
  400a3f:	48 8d 41 10          	lea    0x10(%rcx),%rax
  400a43:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a47:	48 89 d3             	mov    %rdx,%rbx
  400a4a:	48 85 ff             	test   %rdi,%rdi
  400a4d:	75 e1                	jne    400a30 <main+0x110>
  400a4f:	48 3b 31             	cmp    (%rcx),%rsi
  400a52:	0f 8e e6 00 00 00    	jle    400b3e <main+0x21e>
  400a58:	4c 89 28             	mov    %r13,(%rax)
  400a5b:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400a62:	00 
  400a63:	e9 72 01 00 00       	jmpq   400bda <main+0x2ba>
  400a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a6f:	00 
  400a70:	bf 4f 0d 40 00       	mov    $0x400d4f,%edi
  400a75:	31 c0                	xor    %eax,%eax
  400a77:	e8 04 fb ff ff       	callq  400580 <printf@plt>
  400a7c:	bf 61 0d 40 00       	mov    $0x400d61,%edi
  400a81:	31 c0                	xor    %eax,%eax
  400a83:	4c 89 fe             	mov    %r15,%rsi
  400a86:	e8 25 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a8b:	4d 85 e4             	test   %r12,%r12
  400a8e:	74 67                	je     400af7 <main+0x1d7>
  400a90:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400a95:	49 8b 0c 24          	mov    (%r12),%rcx
  400a99:	48 39 c1             	cmp    %rax,%rcx
  400a9c:	7d 7a                	jge    400b18 <main+0x1f8>
  400a9e:	4c 89 e7             	mov    %r12,%rdi
  400aa1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aa8:	0f 1f 84 00 00 00 00 
  400aaf:	00 
  400ab0:	48 89 fa             	mov    %rdi,%rdx
  400ab3:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400ab7:	48 85 ff             	test   %rdi,%rdi
  400aba:	0f 84 a5 00 00 00    	je     400b65 <main+0x245>
  400ac0:	48 8b 0f             	mov    (%rdi),%rcx
  400ac3:	48 89 d6             	mov    %rdx,%rsi
  400ac6:	48 39 c1             	cmp    %rax,%rcx
  400ac9:	7c e5                	jl     400ab0 <main+0x190>
  400acb:	48 39 c1             	cmp    %rax,%rcx
  400ace:	75 50                	jne    400b20 <main+0x200>
  400ad0:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400ad4:	4c 39 e7             	cmp    %r12,%rdi
  400ad7:	0f 84 99 00 00 00    	je     400b76 <main+0x256>
  400add:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400ae1:	e9 93 00 00 00       	jmpq   400b79 <main+0x259>
  400ae6:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400aed:	00 
  400aee:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400af2:	e9 e0 00 00 00       	jmpq   400bd7 <main+0x2b7>
  400af7:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400afc:	e8 6f fa ff ff       	callq  400570 <puts@plt>
  400b01:	8b 35 65 15 20 00    	mov    0x201565(%rip),%esi        # 60206c <n>
  400b07:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400b0c:	31 c0                	xor    %eax,%eax
  400b0e:	e8 6d fa ff ff       	callq  400580 <printf@plt>
  400b13:	e9 28 01 00 00       	jmpq   400c40 <main+0x320>
  400b18:	4c 89 e7             	mov    %r12,%rdi
  400b1b:	48 39 c1             	cmp    %rax,%rcx
  400b1e:	74 b0                	je     400ad0 <main+0x1b0>
  400b20:	bf 65 0d 40 00       	mov    $0x400d65,%edi
  400b25:	e8 46 fa ff ff       	callq  400570 <puts@plt>
  400b2a:	8b 35 3c 15 20 00    	mov    0x20153c(%rip),%esi        # 60206c <n>
  400b30:	eb 5b                	jmp    400b8d <main+0x26d>
  400b32:	4c 89 e1             	mov    %r12,%rcx
  400b35:	48 3b 31             	cmp    (%rcx),%rsi
  400b38:	0f 8f 1a ff ff ff    	jg     400a58 <main+0x138>
  400b3e:	4c 39 e1             	cmp    %r12,%rcx
  400b41:	0f 84 8c 00 00 00    	je     400bd3 <main+0x2b3>
  400b47:	4c 89 6a 10          	mov    %r13,0x10(%rdx)
  400b4b:	49 89 4d 10          	mov    %rcx,0x10(%r13)
  400b4f:	e9 86 00 00 00       	jmpq   400bda <main+0x2ba>
  400b54:	48 89 d1             	mov    %rdx,%rcx
  400b57:	48 89 da             	mov    %rbx,%rdx
  400b5a:	48 3b 31             	cmp    (%rcx),%rsi
  400b5d:	0f 8f f5 fe ff ff    	jg     400a58 <main+0x138>
  400b63:	eb d9                	jmp    400b3e <main+0x21e>
  400b65:	48 89 d7             	mov    %rdx,%rdi
  400b68:	48 89 f2             	mov    %rsi,%rdx
  400b6b:	48 39 c1             	cmp    %rax,%rcx
  400b6e:	0f 84 5c ff ff ff    	je     400ad0 <main+0x1b0>
  400b74:	eb aa                	jmp    400b20 <main+0x200>
  400b76:	49 89 c4             	mov    %rax,%r12
  400b79:	e8 e2 f9 ff ff       	callq  400560 <free@plt>
  400b7e:	8b 35 e8 14 20 00    	mov    0x2014e8(%rip),%esi        # 60206c <n>
  400b84:	83 c6 ff             	add    $0xffffffff,%esi
  400b87:	89 35 df 14 20 00    	mov    %esi,0x2014df(%rip)        # 60206c <n>
  400b8d:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400b92:	31 c0                	xor    %eax,%eax
  400b94:	e8 e7 f9 ff ff       	callq  400580 <printf@plt>
  400b99:	4d 85 e4             	test   %r12,%r12
  400b9c:	0f 84 9e 00 00 00    	je     400c40 <main+0x320>
  400ba2:	4c 89 e3             	mov    %r12,%rbx
  400ba5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400bac:	00 00 00 00 
  400bb0:	48 8b 33             	mov    (%rbx),%rsi
  400bb3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bb8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bbc:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400bc1:	b0 01                	mov    $0x1,%al
  400bc3:	e8 b8 f9 ff ff       	callq  400580 <printf@plt>
  400bc8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bcc:	48 85 db             	test   %rbx,%rbx
  400bcf:	75 df                	jne    400bb0 <main+0x290>
  400bd1:	eb 70                	jmp    400c43 <main+0x323>
  400bd3:	4d 89 65 10          	mov    %r12,0x10(%r13)
  400bd7:	4d 89 ec             	mov    %r13,%r12
  400bda:	83 05 8b 14 20 00 01 	addl   $0x1,0x20148b(%rip)        # 60206c <n>
  400be1:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400be6:	31 c0                	xor    %eax,%eax
  400be8:	e8 93 f9 ff ff       	callq  400580 <printf@plt>
  400bed:	8b 35 79 14 20 00    	mov    0x201479(%rip),%esi        # 60206c <n>
  400bf3:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400bf8:	31 c0                	xor    %eax,%eax
  400bfa:	e8 81 f9 ff ff       	callq  400580 <printf@plt>
  400bff:	4d 85 e4             	test   %r12,%r12
  400c02:	74 3c                	je     400c40 <main+0x320>
  400c04:	4c 89 e3             	mov    %r12,%rbx
  400c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400c0e:	00 00 
  400c10:	48 8b 33             	mov    (%rbx),%rsi
  400c13:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c1c:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400c21:	b0 01                	mov    $0x1,%al
  400c23:	e8 58 f9 ff ff       	callq  400580 <printf@plt>
  400c28:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c2c:	48 85 db             	test   %rbx,%rbx
  400c2f:	75 df                	jne    400c10 <main+0x2f0>
  400c31:	eb 10                	jmp    400c43 <main+0x323>
  400c33:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400c3a:	84 00 00 00 00 00 
  400c40:	45 31 e4             	xor    %r12d,%r12d
  400c43:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400c47:	85 c0                	test   %eax,%eax
  400c49:	0f 85 41 fd ff ff    	jne    400990 <main+0x70>
  400c4f:	48 83 c4 10          	add    $0x10,%rsp
  400c53:	5b                   	pop    %rbx
  400c54:	41 5c                	pop    %r12
  400c56:	41 5d                	pop    %r13
  400c58:	41 5e                	pop    %r14
  400c5a:	41 5f                	pop    %r15
  400c5c:	c3                   	retq   
  400c5d:	0f 1f 00             	nopl   (%rax)

0000000000400c60 <__libc_csu_init>:
  400c60:	41 57                	push   %r15
  400c62:	41 56                	push   %r14
  400c64:	49 89 d7             	mov    %rdx,%r15
  400c67:	41 55                	push   %r13
  400c69:	41 54                	push   %r12
  400c6b:	4c 8d 25 8e 11 20 00 	lea    0x20118e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c72:	55                   	push   %rbp
  400c73:	48 8d 2d 8e 11 20 00 	lea    0x20118e(%rip),%rbp        # 601e08 <__init_array_end>
  400c7a:	53                   	push   %rbx
  400c7b:	41 89 fd             	mov    %edi,%r13d
  400c7e:	49 89 f6             	mov    %rsi,%r14
  400c81:	4c 29 e5             	sub    %r12,%rbp
  400c84:	48 83 ec 08          	sub    $0x8,%rsp
  400c88:	48 c1 fd 03          	sar    $0x3,%rbp
  400c8c:	e8 9f f8 ff ff       	callq  400530 <_init>
  400c91:	48 85 ed             	test   %rbp,%rbp
  400c94:	74 20                	je     400cb6 <__libc_csu_init+0x56>
  400c96:	31 db                	xor    %ebx,%ebx
  400c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c9f:	00 
  400ca0:	4c 89 fa             	mov    %r15,%rdx
  400ca3:	4c 89 f6             	mov    %r14,%rsi
  400ca6:	44 89 ef             	mov    %r13d,%edi
  400ca9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400cad:	48 83 c3 01          	add    $0x1,%rbx
  400cb1:	48 39 dd             	cmp    %rbx,%rbp
  400cb4:	75 ea                	jne    400ca0 <__libc_csu_init+0x40>
  400cb6:	48 83 c4 08          	add    $0x8,%rsp
  400cba:	5b                   	pop    %rbx
  400cbb:	5d                   	pop    %rbp
  400cbc:	41 5c                	pop    %r12
  400cbe:	41 5d                	pop    %r13
  400cc0:	41 5e                	pop    %r14
  400cc2:	41 5f                	pop    %r15
  400cc4:	c3                   	retq   
  400cc5:	90                   	nop
  400cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ccd:	00 00 00 

0000000000400cd0 <__libc_csu_fini>:
  400cd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400cd4 <_fini>:
  400cd4:	48 83 ec 08          	sub    $0x8,%rsp
  400cd8:	48 83 c4 08          	add    $0x8,%rsp
  400cdc:	c3                   	retq   
