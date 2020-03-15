
c/19110011023_2.elf:     file format elf64-x86-64


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

0000000000400530 <putchar@plt>:
  400530:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <puts@plt>:
  400540:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602028 <puts@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <printf@plt>:
  400550:	ff 25 da 1a 20 00    	jmpq   *0x201ada(%rip)        # 602030 <printf@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <malloc@plt>:
  400560:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <__isoc99_scanf@plt>:
  400570:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
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
  40058f:	49 c7 c0 00 0d 40 00 	mov    $0x400d00,%r8
  400596:	48 c7 c1 90 0c 40 00 	mov    $0x400c90,%rcx
  40059d:	48 c7 c7 30 07 40 00 	mov    $0x400730,%rdi
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

0000000000400670 <CreateList>:
  400670:	55                   	push   %rbp
  400671:	41 57                	push   %r15
  400673:	41 56                	push   %r14
  400675:	41 54                	push   %r12
  400677:	53                   	push   %rbx
  400678:	41 89 ff             	mov    %edi,%r15d
  40067b:	bf 10 00 00 00       	mov    $0x10,%edi
  400680:	e8 db fe ff ff       	callq  400560 <malloc@plt>
  400685:	49 89 c6             	mov    %rax,%r14
  400688:	31 ed                	xor    %ebp,%ebp
  40068a:	4d 89 f4             	mov    %r14,%r12
  40068d:	0f 1f 00             	nopl   (%rax)
  400690:	83 c5 01             	add    $0x1,%ebp
  400693:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400698:	31 c0                	xor    %eax,%eax
  40069a:	89 ee                	mov    %ebp,%esi
  40069c:	e8 af fe ff ff       	callq  400550 <printf@plt>
  4006a1:	bf 10 00 00 00       	mov    $0x10,%edi
  4006a6:	e8 b5 fe ff ff       	callq  400560 <malloc@plt>
  4006ab:	48 89 c3             	mov    %rax,%rbx
  4006ae:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4006b3:	31 c0                	xor    %eax,%eax
  4006b5:	48 89 de             	mov    %rbx,%rsi
  4006b8:	e8 b3 fe ff ff       	callq  400570 <__isoc99_scanf@plt>
  4006bd:	bf 5c 0d 40 00       	mov    $0x400d5c,%edi
  4006c2:	31 c0                	xor    %eax,%eax
  4006c4:	89 ee                	mov    %ebp,%esi
  4006c6:	e8 85 fe ff ff       	callq  400550 <printf@plt>
  4006cb:	48 8d 73 04          	lea    0x4(%rbx),%rsi
  4006cf:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4006d4:	31 c0                	xor    %eax,%eax
  4006d6:	e8 95 fe ff ff       	callq  400570 <__isoc99_scanf@plt>
  4006db:	49 89 5c 24 08       	mov    %rbx,0x8(%r12)
  4006e0:	49 89 dc             	mov    %rbx,%r12
  4006e3:	44 39 fd             	cmp    %r15d,%ebp
  4006e6:	7c a8                	jl     400690 <CreateList+0x20>
  4006e8:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  4006ef:	00 
  4006f0:	4c 89 f0             	mov    %r14,%rax
  4006f3:	5b                   	pop    %rbx
  4006f4:	41 5c                	pop    %r12
  4006f6:	41 5e                	pop    %r14
  4006f8:	41 5f                	pop    %r15
  4006fa:	5d                   	pop    %rbp
  4006fb:	c3                   	retq   
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400700 <PrintList>:
  400700:	53                   	push   %rbx
  400701:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  400705:	48 85 db             	test   %rbx,%rbx
  400708:	74 20                	je     40072a <PrintList+0x2a>
  40070a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400710:	8b 33                	mov    (%rbx),%esi
  400712:	8b 53 04             	mov    0x4(%rbx),%edx
  400715:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  40071a:	31 c0                	xor    %eax,%eax
  40071c:	e8 2f fe ff ff       	callq  400550 <printf@plt>
  400721:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400725:	48 85 db             	test   %rbx,%rbx
  400728:	75 e6                	jne    400710 <PrintList+0x10>
  40072a:	5b                   	pop    %rbx
  40072b:	c3                   	retq   
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400730 <main>:
  400730:	55                   	push   %rbp
  400731:	41 57                	push   %r15
  400733:	41 56                	push   %r14
  400735:	41 55                	push   %r13
  400737:	41 54                	push   %r12
  400739:	53                   	push   %rbx
  40073a:	48 83 ec 18          	sub    $0x18,%rsp
  40073e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
  400745:	00 
  400746:	4c 8d 6c 24 08       	lea    0x8(%rsp),%r13
  40074b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400750:	bf df 0d 40 00       	mov    $0x400ddf,%edi
  400755:	e8 e6 fd ff ff       	callq  400540 <puts@plt>
  40075a:	bf ef 0d 40 00       	mov    $0x400def,%edi
  40075f:	e8 dc fd ff ff       	callq  400540 <puts@plt>
  400764:	bf fb 0d 40 00       	mov    $0x400dfb,%edi
  400769:	e8 d2 fd ff ff       	callq  400540 <puts@plt>
  40076e:	bf 50 0e 40 00       	mov    $0x400e50,%edi
  400773:	e8 c8 fd ff ff       	callq  400540 <puts@plt>
  400778:	bf 07 0e 40 00       	mov    $0x400e07,%edi
  40077d:	e8 be fd ff ff       	callq  400540 <puts@plt>
  400782:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  400787:	31 c0                	xor    %eax,%eax
  400789:	4c 89 ee             	mov    %r13,%rsi
  40078c:	e8 df fd ff ff       	callq  400570 <__isoc99_scanf@plt>
  400791:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400795:	48 83 f8 04          	cmp    $0x4,%rax
  400799:	0f 87 e0 00 00 00    	ja     40087f <main+0x14f>
  40079f:	ff 24 c5 18 0d 40 00 	jmpq   *0x400d18(,%rax,8)
  4007a6:	31 ed                	xor    %ebp,%ebp
  4007a8:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  4007ad:	31 c0                	xor    %eax,%eax
  4007af:	e8 9c fd ff ff       	callq  400550 <printf@plt>
  4007b4:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4007b9:	31 c0                	xor    %eax,%eax
  4007bb:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  4007c0:	e8 ab fd ff ff       	callq  400570 <__isoc99_scanf@plt>
  4007c5:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
  4007c9:	bf 10 00 00 00       	mov    $0x10,%edi
  4007ce:	e8 8d fd ff ff       	callq  400560 <malloc@plt>
  4007d3:	49 89 c7             	mov    %rax,%r15
  4007d6:	4d 89 fc             	mov    %r15,%r12
  4007d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4007e0:	83 c5 01             	add    $0x1,%ebp
  4007e3:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  4007e8:	31 c0                	xor    %eax,%eax
  4007ea:	89 ee                	mov    %ebp,%esi
  4007ec:	e8 5f fd ff ff       	callq  400550 <printf@plt>
  4007f1:	bf 10 00 00 00       	mov    $0x10,%edi
  4007f6:	e8 65 fd ff ff       	callq  400560 <malloc@plt>
  4007fb:	49 89 c6             	mov    %rax,%r14
  4007fe:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  400803:	31 c0                	xor    %eax,%eax
  400805:	4c 89 f6             	mov    %r14,%rsi
  400808:	e8 63 fd ff ff       	callq  400570 <__isoc99_scanf@plt>
  40080d:	bf 5c 0d 40 00       	mov    $0x400d5c,%edi
  400812:	31 c0                	xor    %eax,%eax
  400814:	89 ee                	mov    %ebp,%esi
  400816:	e8 35 fd ff ff       	callq  400550 <printf@plt>
  40081b:	49 8d 76 04          	lea    0x4(%r14),%rsi
  40081f:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  400824:	31 c0                	xor    %eax,%eax
  400826:	e8 45 fd ff ff       	callq  400570 <__isoc99_scanf@plt>
  40082b:	4d 89 74 24 08       	mov    %r14,0x8(%r12)
  400830:	4d 89 f4             	mov    %r14,%r12
  400833:	39 dd                	cmp    %ebx,%ebp
  400835:	7c a9                	jl     4007e0 <main+0xb0>
  400837:	49 c7 46 08 00 00 00 	movq   $0x0,0x8(%r14)
  40083e:	00 
  40083f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400844:	e8 e7 fc ff ff       	callq  400530 <putchar@plt>
  400849:	bf 18 0e 40 00       	mov    $0x400e18,%edi
  40084e:	e8 ed fc ff ff       	callq  400540 <puts@plt>
  400853:	49 8b 5f 08          	mov    0x8(%r15),%rbx
  400857:	eb 1c                	jmp    400875 <main+0x145>
  400859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400860:	8b 33                	mov    (%rbx),%esi
  400862:	8b 53 04             	mov    0x4(%rbx),%edx
  400865:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  40086a:	31 c0                	xor    %eax,%eax
  40086c:	e8 df fc ff ff       	callq  400550 <printf@plt>
  400871:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400875:	48 85 db             	test   %rbx,%rbx
  400878:	75 e6                	jne    400860 <main+0x130>
  40087a:	e9 a1 02 00 00       	jmpq   400b20 <main+0x3f0>
  40087f:	bf 20 0e 40 00       	mov    $0x400e20,%edi
  400884:	e8 b7 fc ff ff       	callq  400540 <puts@plt>
  400889:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
  40088e:	0f 85 bc fe ff ff    	jne    400750 <main+0x20>
  400894:	e9 92 02 00 00       	jmpq   400b2b <main+0x3fb>
  400899:	bf 7e 0d 40 00       	mov    $0x400d7e,%edi
  40089e:	31 c0                	xor    %eax,%eax
  4008a0:	e8 ab fc ff ff       	callq  400550 <printf@plt>
  4008a5:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4008aa:	31 c0                	xor    %eax,%eax
  4008ac:	4c 89 ee             	mov    %r13,%rsi
  4008af:	e8 bc fc ff ff       	callq  400570 <__isoc99_scanf@plt>
  4008b4:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  4008b9:	31 c0                	xor    %eax,%eax
  4008bb:	e8 90 fc ff ff       	callq  400550 <printf@plt>
  4008c0:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4008c5:	31 c0                	xor    %eax,%eax
  4008c7:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4008cc:	e8 9f fc ff ff       	callq  400570 <__isoc99_scanf@plt>
  4008d1:	bf 9e 0d 40 00       	mov    $0x400d9e,%edi
  4008d6:	31 c0                	xor    %eax,%eax
  4008d8:	e8 73 fc ff ff       	callq  400550 <printf@plt>
  4008dd:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4008e2:	31 c0                	xor    %eax,%eax
  4008e4:	48 8d 74 24 14       	lea    0x14(%rsp),%rsi
  4008e9:	e8 82 fc ff ff       	callq  400570 <__isoc99_scanf@plt>
  4008ee:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
  4008f2:	85 c9                	test   %ecx,%ecx
  4008f4:	0f 8e 95 01 00 00    	jle    400a8f <main+0x35f>
  4008fa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4008fe:	83 c0 01             	add    $0x1,%eax
  400901:	39 c8                	cmp    %ecx,%eax
  400903:	0f 8c 86 01 00 00    	jl     400a8f <main+0x35f>
  400909:	44 8b 74 24 10       	mov    0x10(%rsp),%r14d
  40090e:	8b 6c 24 14          	mov    0x14(%rsp),%ebp
  400912:	4c 89 fb             	mov    %r15,%rbx
  400915:	83 f9 02             	cmp    $0x2,%ecx
  400918:	7c 5f                	jl     400979 <main+0x249>
  40091a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40091d:	8d 51 fe             	lea    -0x2(%rcx),%edx
  400920:	83 e0 07             	and    $0x7,%eax
  400923:	4c 89 fb             	mov    %r15,%rbx
  400926:	83 fa 07             	cmp    $0x7,%edx
  400929:	72 3a                	jb     400965 <main+0x235>
  40092b:	8d 50 01             	lea    0x1(%rax),%edx
  40092e:	29 ca                	sub    %ecx,%edx
  400930:	4c 89 fb             	mov    %r15,%rbx
  400933:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40093a:	84 00 00 00 00 00 
  400940:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400944:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400948:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  40094c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400950:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400954:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400958:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  40095c:	48 8b 59 08          	mov    0x8(%rcx),%rbx
  400960:	83 c2 08             	add    $0x8,%edx
  400963:	75 db                	jne    400940 <main+0x210>
  400965:	85 c0                	test   %eax,%eax
  400967:	74 10                	je     400979 <main+0x249>
  400969:	f7 d8                	neg    %eax
  40096b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400970:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400974:	83 c0 01             	add    $0x1,%eax
  400977:	75 f7                	jne    400970 <main+0x240>
  400979:	bf 10 00 00 00       	mov    $0x10,%edi
  40097e:	e8 dd fb ff ff       	callq  400560 <malloc@plt>
  400983:	44 89 30             	mov    %r14d,(%rax)
  400986:	89 68 04             	mov    %ebp,0x4(%rax)
  400989:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40098d:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400991:	48 89 43 08          	mov    %rax,0x8(%rbx)
  400995:	e9 ff 00 00 00       	jmpq   400a99 <main+0x369>
  40099a:	bf ac 0d 40 00       	mov    $0x400dac,%edi
  40099f:	31 c0                	xor    %eax,%eax
  4009a1:	e8 aa fb ff ff       	callq  400550 <printf@plt>
  4009a6:	bf 59 0d 40 00       	mov    $0x400d59,%edi
  4009ab:	31 c0                	xor    %eax,%eax
  4009ad:	4c 89 ee             	mov    %r13,%rsi
  4009b0:	e8 bb fb ff ff       	callq  400570 <__isoc99_scanf@plt>
  4009b5:	8b 74 24 08          	mov    0x8(%rsp),%esi
  4009b9:	85 f6                	test   %esi,%esi
  4009bb:	0f 8e 1b 01 00 00    	jle    400adc <main+0x3ac>
  4009c1:	3b 74 24 0c          	cmp    0xc(%rsp),%esi
  4009c5:	0f 8f 11 01 00 00    	jg     400adc <main+0x3ac>
  4009cb:	8d 56 ff             	lea    -0x1(%rsi),%edx
  4009ce:	89 f0                	mov    %esi,%eax
  4009d0:	83 e0 07             	and    $0x7,%eax
  4009d3:	4c 89 ff             	mov    %r15,%rdi
  4009d6:	83 fa 07             	cmp    $0x7,%edx
  4009d9:	72 3a                	jb     400a15 <main+0x2e5>
  4009db:	89 c2                	mov    %eax,%edx
  4009dd:	29 f2                	sub    %esi,%edx
  4009df:	4c 89 ff             	mov    %r15,%rdi
  4009e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009e9:	1f 84 00 00 00 00 00 
  4009f0:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  4009f4:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4009f8:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4009fc:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400a00:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400a04:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400a08:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400a0c:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400a10:	83 c2 08             	add    $0x8,%edx
  400a13:	75 db                	jne    4009f0 <main+0x2c0>
  400a15:	85 c0                	test   %eax,%eax
  400a17:	74 13                	je     400a2c <main+0x2fc>
  400a19:	f7 d8                	neg    %eax
  400a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a20:	48 89 f9             	mov    %rdi,%rcx
  400a23:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400a27:	83 c0 01             	add    $0x1,%eax
  400a2a:	75 f4                	jne    400a20 <main+0x2f0>
  400a2c:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400a30:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400a34:	8b 2f                	mov    (%rdi),%ebp
  400a36:	8b 5f 04             	mov    0x4(%rdi),%ebx
  400a39:	e8 e2 fa ff ff       	callq  400520 <free@plt>
  400a3e:	bf c0 0d 40 00       	mov    $0x400dc0,%edi
  400a43:	31 c0                	xor    %eax,%eax
  400a45:	89 ee                	mov    %ebp,%esi
  400a47:	89 da                	mov    %ebx,%edx
  400a49:	e8 02 fb ff ff       	callq  400550 <printf@plt>
  400a4e:	e9 93 00 00 00       	jmpq   400ae6 <main+0x3b6>
  400a53:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a58:	e8 d3 fa ff ff       	callq  400530 <putchar@plt>
  400a5d:	bf 0f 0e 40 00       	mov    $0x400e0f,%edi
  400a62:	e8 d9 fa ff ff       	callq  400540 <puts@plt>
  400a67:	49 8b 5f 08          	mov    0x8(%r15),%rbx
  400a6b:	eb 18                	jmp    400a85 <main+0x355>
  400a6d:	0f 1f 00             	nopl   (%rax)
  400a70:	8b 33                	mov    (%rbx),%esi
  400a72:	8b 53 04             	mov    0x4(%rbx),%edx
  400a75:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400a7a:	31 c0                	xor    %eax,%eax
  400a7c:	e8 cf fa ff ff       	callq  400550 <printf@plt>
  400a81:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400a85:	48 85 db             	test   %rbx,%rbx
  400a88:	75 e6                	jne    400a70 <main+0x340>
  400a8a:	e9 91 00 00 00       	jmpq   400b20 <main+0x3f0>
  400a8f:	bf 2d 0e 40 00       	mov    $0x400e2d,%edi
  400a94:	e8 a7 fa ff ff       	callq  400540 <puts@plt>
  400a99:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a9e:	e8 8d fa ff ff       	callq  400530 <putchar@plt>
  400aa3:	bf 18 0e 40 00       	mov    $0x400e18,%edi
  400aa8:	e8 93 fa ff ff       	callq  400540 <puts@plt>
  400aad:	49 8b 5f 08          	mov    0x8(%r15),%rbx
  400ab1:	eb 22                	jmp    400ad5 <main+0x3a5>
  400ab3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aba:	84 00 00 00 00 00 
  400ac0:	8b 33                	mov    (%rbx),%esi
  400ac2:	8b 53 04             	mov    0x4(%rbx),%edx
  400ac5:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400aca:	31 c0                	xor    %eax,%eax
  400acc:	e8 7f fa ff ff       	callq  400550 <printf@plt>
  400ad1:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400ad5:	48 85 db             	test   %rbx,%rbx
  400ad8:	75 e6                	jne    400ac0 <main+0x390>
  400ada:	eb 44                	jmp    400b20 <main+0x3f0>
  400adc:	bf 39 0e 40 00       	mov    $0x400e39,%edi
  400ae1:	e8 5a fa ff ff       	callq  400540 <puts@plt>
  400ae6:	bf 0a 00 00 00       	mov    $0xa,%edi
  400aeb:	e8 40 fa ff ff       	callq  400530 <putchar@plt>
  400af0:	bf 0f 0e 40 00       	mov    $0x400e0f,%edi
  400af5:	e8 46 fa ff ff       	callq  400540 <puts@plt>
  400afa:	49 8b 5f 08          	mov    0x8(%r15),%rbx
  400afe:	eb 15                	jmp    400b15 <main+0x3e5>
  400b00:	8b 33                	mov    (%rbx),%esi
  400b02:	8b 53 04             	mov    0x4(%rbx),%edx
  400b05:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400b0a:	31 c0                	xor    %eax,%eax
  400b0c:	e8 3f fa ff ff       	callq  400550 <printf@plt>
  400b11:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400b15:	48 85 db             	test   %rbx,%rbx
  400b18:	75 e6                	jne    400b00 <main+0x3d0>
  400b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400b20:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
  400b25:	0f 85 25 fc ff ff    	jne    400750 <main+0x20>
  400b2b:	48 83 c4 18          	add    $0x18,%rsp
  400b2f:	5b                   	pop    %rbx
  400b30:	41 5c                	pop    %r12
  400b32:	41 5d                	pop    %r13
  400b34:	41 5e                	pop    %r14
  400b36:	41 5f                	pop    %r15
  400b38:	5d                   	pop    %rbp
  400b39:	c3                   	retq   
  400b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b40 <InsertList>:
  400b40:	55                   	push   %rbp
  400b41:	41 56                	push   %r14
  400b43:	53                   	push   %rbx
  400b44:	41 89 ce             	mov    %ecx,%r14d
  400b47:	89 d5                	mov    %edx,%ebp
  400b49:	48 89 fb             	mov    %rdi,%rbx
  400b4c:	85 f6                	test   %esi,%esi
  400b4e:	0f 8e 86 00 00 00    	jle    400bda <InsertList+0x9a>
  400b54:	41 83 c0 01          	add    $0x1,%r8d
  400b58:	41 39 f0             	cmp    %esi,%r8d
  400b5b:	0f 8c 79 00 00 00    	jl     400bda <InsertList+0x9a>
  400b61:	83 fe 02             	cmp    $0x2,%esi
  400b64:	7c 53                	jl     400bb9 <InsertList+0x79>
  400b66:	8d 46 ff             	lea    -0x1(%rsi),%eax
  400b69:	8d 4e fe             	lea    -0x2(%rsi),%ecx
  400b6c:	83 e0 07             	and    $0x7,%eax
  400b6f:	83 f9 07             	cmp    $0x7,%ecx
  400b72:	72 31                	jb     400ba5 <InsertList+0x65>
  400b74:	8d 48 01             	lea    0x1(%rax),%ecx
  400b77:	29 f1                	sub    %esi,%ecx
  400b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b80:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400b84:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b88:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b8c:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b90:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b94:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b98:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400b9c:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
  400ba0:	83 c1 08             	add    $0x8,%ecx
  400ba3:	75 db                	jne    400b80 <InsertList+0x40>
  400ba5:	85 c0                	test   %eax,%eax
  400ba7:	74 10                	je     400bb9 <InsertList+0x79>
  400ba9:	f7 d8                	neg    %eax
  400bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400bb0:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400bb4:	83 c0 01             	add    $0x1,%eax
  400bb7:	75 f7                	jne    400bb0 <InsertList+0x70>
  400bb9:	bf 10 00 00 00       	mov    $0x10,%edi
  400bbe:	e8 9d f9 ff ff       	callq  400560 <malloc@plt>
  400bc3:	89 28                	mov    %ebp,(%rax)
  400bc5:	44 89 70 04          	mov    %r14d,0x4(%rax)
  400bc9:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400bcd:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400bd1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  400bd5:	5b                   	pop    %rbx
  400bd6:	41 5e                	pop    %r14
  400bd8:	5d                   	pop    %rbp
  400bd9:	c3                   	retq   
  400bda:	bf 2d 0e 40 00       	mov    $0x400e2d,%edi
  400bdf:	5b                   	pop    %rbx
  400be0:	41 5e                	pop    %r14
  400be2:	5d                   	pop    %rbp
  400be3:	e9 58 f9 ff ff       	jmpq   400540 <puts@plt>
  400be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bef:	00 

0000000000400bf0 <DeleteList>:
  400bf0:	85 f6                	test   %esi,%esi
  400bf2:	7e 17                	jle    400c0b <DeleteList+0x1b>
  400bf4:	39 d6                	cmp    %edx,%esi
  400bf6:	7f 13                	jg     400c0b <DeleteList+0x1b>
  400bf8:	8d 4e ff             	lea    -0x1(%rsi),%ecx
  400bfb:	89 f0                	mov    %esi,%eax
  400bfd:	83 e0 07             	and    $0x7,%eax
  400c00:	83 f9 07             	cmp    $0x7,%ecx
  400c03:	73 10                	jae    400c15 <DeleteList+0x25>
  400c05:	85 c0                	test   %eax,%eax
  400c07:	75 40                	jne    400c49 <DeleteList+0x59>
  400c09:	eb 51                	jmp    400c5c <DeleteList+0x6c>
  400c0b:	bf 39 0e 40 00       	mov    $0x400e39,%edi
  400c10:	e9 2b f9 ff ff       	jmpq   400540 <puts@plt>
  400c15:	89 c2                	mov    %eax,%edx
  400c17:	29 f2                	sub    %esi,%edx
  400c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400c20:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  400c24:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c28:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c2c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c30:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c34:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c38:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  400c3c:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400c40:	83 c2 08             	add    $0x8,%edx
  400c43:	75 db                	jne    400c20 <DeleteList+0x30>
  400c45:	85 c0                	test   %eax,%eax
  400c47:	74 13                	je     400c5c <DeleteList+0x6c>
  400c49:	f7 d8                	neg    %eax
  400c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c50:	48 89 f9             	mov    %rdi,%rcx
  400c53:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400c57:	83 c0 01             	add    $0x1,%eax
  400c5a:	75 f4                	jne    400c50 <DeleteList+0x60>
  400c5c:	55                   	push   %rbp
  400c5d:	53                   	push   %rbx
  400c5e:	50                   	push   %rax
  400c5f:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400c63:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400c67:	8b 1f                	mov    (%rdi),%ebx
  400c69:	8b 6f 04             	mov    0x4(%rdi),%ebp
  400c6c:	e8 af f8 ff ff       	callq  400520 <free@plt>
  400c71:	bf c0 0d 40 00       	mov    $0x400dc0,%edi
  400c76:	31 c0                	xor    %eax,%eax
  400c78:	89 de                	mov    %ebx,%esi
  400c7a:	89 ea                	mov    %ebp,%edx
  400c7c:	48 83 c4 08          	add    $0x8,%rsp
  400c80:	5b                   	pop    %rbx
  400c81:	5d                   	pop    %rbp
  400c82:	e9 c9 f8 ff ff       	jmpq   400550 <printf@plt>
  400c87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400c8e:	00 00 

0000000000400c90 <__libc_csu_init>:
  400c90:	41 57                	push   %r15
  400c92:	41 56                	push   %r14
  400c94:	49 89 d7             	mov    %rdx,%r15
  400c97:	41 55                	push   %r13
  400c99:	41 54                	push   %r12
  400c9b:	4c 8d 25 5e 11 20 00 	lea    0x20115e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ca2:	55                   	push   %rbp
  400ca3:	48 8d 2d 5e 11 20 00 	lea    0x20115e(%rip),%rbp        # 601e08 <__init_array_end>
  400caa:	53                   	push   %rbx
  400cab:	41 89 fd             	mov    %edi,%r13d
  400cae:	49 89 f6             	mov    %rsi,%r14
  400cb1:	4c 29 e5             	sub    %r12,%rbp
  400cb4:	48 83 ec 08          	sub    $0x8,%rsp
  400cb8:	48 c1 fd 03          	sar    $0x3,%rbp
  400cbc:	e8 2f f8 ff ff       	callq  4004f0 <_init>
  400cc1:	48 85 ed             	test   %rbp,%rbp
  400cc4:	74 20                	je     400ce6 <__libc_csu_init+0x56>
  400cc6:	31 db                	xor    %ebx,%ebx
  400cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400ccf:	00 
  400cd0:	4c 89 fa             	mov    %r15,%rdx
  400cd3:	4c 89 f6             	mov    %r14,%rsi
  400cd6:	44 89 ef             	mov    %r13d,%edi
  400cd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400cdd:	48 83 c3 01          	add    $0x1,%rbx
  400ce1:	48 39 dd             	cmp    %rbx,%rbp
  400ce4:	75 ea                	jne    400cd0 <__libc_csu_init+0x40>
  400ce6:	48 83 c4 08          	add    $0x8,%rsp
  400cea:	5b                   	pop    %rbx
  400ceb:	5d                   	pop    %rbp
  400cec:	41 5c                	pop    %r12
  400cee:	41 5d                	pop    %r13
  400cf0:	41 5e                	pop    %r14
  400cf2:	41 5f                	pop    %r15
  400cf4:	c3                   	retq   
  400cf5:	90                   	nop
  400cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400cfd:	00 00 00 

0000000000400d00 <__libc_csu_fini>:
  400d00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d04 <_fini>:
  400d04:	48 83 ec 08          	sub    $0x8,%rsp
  400d08:	48 83 c4 08          	add    $0x8,%rsp
  400d0c:	c3                   	retq   
