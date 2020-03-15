
c/19020031107_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f8 <_init>:
  4004f8:	48 83 ec 08          	sub    $0x8,%rsp
  4004fc:	48 8b 05 f5 0a 20 00 	mov    0x200af5(%rip),%rax        # 600ff8 <__gmon_start__>
  400503:	48 85 c0             	test   %rax,%rax
  400506:	74 02                	je     40050a <_init+0x12>
  400508:	ff d0                	callq  *%rax
  40050a:	48 83 c4 08          	add    $0x8,%rsp
  40050e:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <puts@plt>:
  400520:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601018 <puts@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <printf@plt>:
  400530:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <malloc@plt>:
  400540:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601028 <malloc@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <_IO_getc@plt>:
  400550:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601030 <_IO_getc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

Disassembly of section .text:

0000000000400570 <_start>:
  400570:	31 ed                	xor    %ebp,%ebp
  400572:	49 89 d1             	mov    %rdx,%r9
  400575:	5e                   	pop    %rsi
  400576:	48 89 e2             	mov    %rsp,%rdx
  400579:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40057d:	50                   	push   %rax
  40057e:	54                   	push   %rsp
  40057f:	49 c7 c0 40 0b 40 00 	mov    $0x400b40,%r8
  400586:	48 c7 c1 d0 0a 40 00 	mov    $0x400ad0,%rcx
  40058d:	48 c7 c7 e0 07 40 00 	mov    $0x4007e0,%rdi
  400594:	ff 15 56 0a 20 00    	callq  *0x200a56(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40059a:	f4                   	hlt    
  40059b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005a0 <_dl_relocate_static_pie>:
  4005a0:	f3 c3                	repz retq 
  4005a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005a9:	00 00 00 
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <deregister_tm_clones>:
  4005b0:	55                   	push   %rbp
  4005b1:	b8 50 10 60 00       	mov    $0x601050,%eax
  4005b6:	48 3d 50 10 60 00    	cmp    $0x601050,%rax
  4005bc:	48 89 e5             	mov    %rsp,%rbp
  4005bf:	74 17                	je     4005d8 <deregister_tm_clones+0x28>
  4005c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c6:	48 85 c0             	test   %rax,%rax
  4005c9:	74 0d                	je     4005d8 <deregister_tm_clones+0x28>
  4005cb:	5d                   	pop    %rbp
  4005cc:	bf 50 10 60 00       	mov    $0x601050,%edi
  4005d1:	ff e0                	jmpq   *%rax
  4005d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005d8:	5d                   	pop    %rbp
  4005d9:	c3                   	retq   
  4005da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005e0 <register_tm_clones>:
  4005e0:	be 50 10 60 00       	mov    $0x601050,%esi
  4005e5:	55                   	push   %rbp
  4005e6:	48 81 ee 50 10 60 00 	sub    $0x601050,%rsi
  4005ed:	48 89 e5             	mov    %rsp,%rbp
  4005f0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005f4:	48 89 f0             	mov    %rsi,%rax
  4005f7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005fb:	48 01 c6             	add    %rax,%rsi
  4005fe:	48 d1 fe             	sar    %rsi
  400601:	74 15                	je     400618 <register_tm_clones+0x38>
  400603:	b8 00 00 00 00       	mov    $0x0,%eax
  400608:	48 85 c0             	test   %rax,%rax
  40060b:	74 0b                	je     400618 <register_tm_clones+0x38>
  40060d:	5d                   	pop    %rbp
  40060e:	bf 50 10 60 00       	mov    $0x601050,%edi
  400613:	ff e0                	jmpq   *%rax
  400615:	0f 1f 00             	nopl   (%rax)
  400618:	5d                   	pop    %rbp
  400619:	c3                   	retq   
  40061a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400620 <__do_global_dtors_aux>:
  400620:	80 3d 31 0a 20 00 00 	cmpb   $0x0,0x200a31(%rip)        # 601058 <completed.7698>
  400627:	75 17                	jne    400640 <__do_global_dtors_aux+0x20>
  400629:	55                   	push   %rbp
  40062a:	48 89 e5             	mov    %rsp,%rbp
  40062d:	e8 7e ff ff ff       	callq  4005b0 <deregister_tm_clones>
  400632:	c6 05 1f 0a 20 00 01 	movb   $0x1,0x200a1f(%rip)        # 601058 <completed.7698>
  400639:	5d                   	pop    %rbp
  40063a:	c3                   	retq   
  40063b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400640:	f3 c3                	repz retq 
  400642:	0f 1f 40 00          	nopl   0x0(%rax)
  400646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40064d:	00 00 00 

0000000000400650 <frame_dummy>:
  400650:	55                   	push   %rbp
  400651:	48 89 e5             	mov    %rsp,%rbp
  400654:	5d                   	pop    %rbp
  400655:	eb 89                	jmp    4005e0 <register_tm_clones>
  400657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40065e:	00 00 

0000000000400660 <create>:
  400660:	41 57                	push   %r15
  400662:	41 56                	push   %r14
  400664:	53                   	push   %rbx
  400665:	c7 05 ed 09 20 00 00 	movl   $0x0,0x2009ed(%rip)        # 60105c <n>
  40066c:	00 00 00 
  40066f:	bf 18 00 00 00       	mov    $0x18,%edi
  400674:	e8 c7 fe ff ff       	callq  400540 <malloc@plt>
  400679:	49 89 c7             	mov    %rax,%r15
  40067c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400680:	45 31 f6             	xor    %r14d,%r14d
  400683:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400688:	31 c0                	xor    %eax,%eax
  40068a:	4c 89 fe             	mov    %r15,%rsi
  40068d:	e8 ce fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  400692:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400696:	74 54                	je     4006ec <create+0x8c>
  400698:	4c 89 f8             	mov    %r15,%rax
  40069b:	4c 89 fb             	mov    %r15,%rbx
  40069e:	31 c9                	xor    %ecx,%ecx
  4006a0:	49 89 df             	mov    %rbx,%r15
  4006a3:	8b 15 b3 09 20 00    	mov    0x2009b3(%rip),%edx        # 60105c <n>
  4006a9:	8d 72 01             	lea    0x1(%rdx),%esi
  4006ac:	89 35 aa 09 20 00    	mov    %esi,0x2009aa(%rip)        # 60105c <n>
  4006b2:	4d 89 fe             	mov    %r15,%r14
  4006b5:	85 d2                	test   %edx,%edx
  4006b7:	74 07                	je     4006c0 <create+0x60>
  4006b9:	4c 89 78 10          	mov    %r15,0x10(%rax)
  4006bd:	49 89 ce             	mov    %rcx,%r14
  4006c0:	bf 18 00 00 00       	mov    $0x18,%edi
  4006c5:	e8 76 fe ff ff       	callq  400540 <malloc@plt>
  4006ca:	48 89 c3             	mov    %rax,%rbx
  4006cd:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006d1:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  4006d6:	31 c0                	xor    %eax,%eax
  4006d8:	48 89 de             	mov    %rbx,%rsi
  4006db:	e8 80 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  4006e0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4006e4:	4c 89 f8             	mov    %r15,%rax
  4006e7:	4c 89 f1             	mov    %r14,%rcx
  4006ea:	75 b4                	jne    4006a0 <create+0x40>
  4006ec:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4006f3:	00 
  4006f4:	4c 89 f0             	mov    %r14,%rax
  4006f7:	5b                   	pop    %rbx
  4006f8:	41 5e                	pop    %r14
  4006fa:	41 5f                	pop    %r15
  4006fc:	c3                   	retq   
  4006fd:	0f 1f 00             	nopl   (%rax)

0000000000400700 <print>:
  400700:	53                   	push   %rbx
  400701:	48 89 fb             	mov    %rdi,%rbx
  400704:	48 85 db             	test   %rbx,%rbx
  400707:	74 3a                	je     400743 <print+0x43>
  400709:	bf c7 0b 40 00       	mov    $0x400bc7,%edi
  40070e:	e8 0d fe ff ff       	callq  400520 <puts@plt>
  400713:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40071a:	84 00 00 00 00 00 
  400720:	48 8b 33             	mov    (%rbx),%rsi
  400723:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400728:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40072c:	bf 61 0b 40 00       	mov    $0x400b61,%edi
  400731:	b0 01                	mov    $0x1,%al
  400733:	e8 f8 fd ff ff       	callq  400530 <printf@plt>
  400738:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40073c:	48 85 db             	test   %rbx,%rbx
  40073f:	75 df                	jne    400720 <print+0x20>
  400741:	5b                   	pop    %rbx
  400742:	c3                   	retq   
  400743:	bf bd 0b 40 00       	mov    $0x400bbd,%edi
  400748:	5b                   	pop    %rbx
  400749:	e9 d2 fd ff ff       	jmpq   400520 <puts@plt>
  40074e:	66 90                	xchg   %ax,%ax

0000000000400750 <del>:
  400750:	53                   	push   %rbx
  400751:	48 89 fb             	mov    %rdi,%rbx
  400754:	48 85 db             	test   %rbx,%rbx
  400757:	74 54                	je     4007ad <del+0x5d>
  400759:	48 8b 3b             	mov    (%rbx),%rdi
  40075c:	48 63 f6             	movslq %esi,%rsi
  40075f:	48 39 f7             	cmp    %rsi,%rdi
  400762:	0f 94 c2             	sete   %dl
  400765:	48 89 d8             	mov    %rbx,%rax
  400768:	48 85 ff             	test   %rdi,%rdi
  40076b:	74 2d                	je     40079a <del+0x4a>
  40076d:	48 39 f7             	cmp    %rsi,%rdi
  400770:	74 28                	je     40079a <del+0x4a>
  400772:	48 89 d8             	mov    %rbx,%rax
  400775:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40077c:	00 00 00 00 
  400780:	48 89 c1             	mov    %rax,%rcx
  400783:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400787:	48 8b 38             	mov    (%rax),%rdi
  40078a:	48 39 f7             	cmp    %rsi,%rdi
  40078d:	0f 94 c2             	sete   %dl
  400790:	48 85 ff             	test   %rdi,%rdi
  400793:	74 05                	je     40079a <del+0x4a>
  400795:	48 39 f7             	cmp    %rsi,%rdi
  400798:	75 e6                	jne    400780 <del+0x30>
  40079a:	84 d2                	test   %dl,%dl
  40079c:	74 1b                	je     4007b9 <del+0x69>
  40079e:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4007a2:	48 39 d8             	cmp    %rbx,%rax
  4007a5:	74 0f                	je     4007b6 <del+0x66>
  4007a7:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  4007ab:	eb 0c                	jmp    4007b9 <del+0x69>
  4007ad:	31 db                	xor    %ebx,%ebx
  4007af:	bf 6c 0b 40 00       	mov    $0x400b6c,%edi
  4007b4:	eb 08                	jmp    4007be <del+0x6e>
  4007b6:	48 89 d3             	mov    %rdx,%rbx
  4007b9:	bf 7b 0b 40 00       	mov    $0x400b7b,%edi
  4007be:	31 c0                	xor    %eax,%eax
  4007c0:	e8 6b fd ff ff       	callq  400530 <printf@plt>
  4007c5:	48 89 d8             	mov    %rbx,%rax
  4007c8:	5b                   	pop    %rbx
  4007c9:	c3                   	retq   
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007d0 <insert>:
  4007d0:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
  4007d4:	48 89 f0             	mov    %rsi,%rax
  4007d7:	c3                   	retq   
  4007d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007df:	00 

00000000004007e0 <main>:
  4007e0:	41 57                	push   %r15
  4007e2:	41 56                	push   %r14
  4007e4:	41 55                	push   %r13
  4007e6:	41 54                	push   %r12
  4007e8:	53                   	push   %rbx
  4007e9:	48 83 ec 10          	sub    $0x10,%rsp
  4007ed:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  4007f2:	e8 29 fd ff ff       	callq  400520 <puts@plt>
  4007f7:	c7 05 5b 08 20 00 00 	movl   $0x0,0x20085b(%rip)        # 60105c <n>
  4007fe:	00 00 00 
  400801:	bf 18 00 00 00       	mov    $0x18,%edi
  400806:	e8 35 fd ff ff       	callq  400540 <malloc@plt>
  40080b:	49 89 c6             	mov    %rax,%r14
  40080e:	49 8d 56 08          	lea    0x8(%r14),%rdx
  400812:	bf 54 0b 40 00       	mov    $0x400b54,%edi
  400817:	31 c0                	xor    %eax,%eax
  400819:	4c 89 f6             	mov    %r14,%rsi
  40081c:	e8 3f fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  400821:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400825:	0f 84 98 00 00 00    	je     4008c3 <main+0xe3>
  40082b:	4c 89 f3             	mov    %r14,%rbx
  40082e:	31 c0                	xor    %eax,%eax
  400830:	49 89 df             	mov    %rbx,%r15
  400833:	8b 0d 23 08 20 00    	mov    0x200823(%rip),%ecx        # 60105c <n>
  400839:	8d 51 01             	lea    0x1(%rcx),%edx
  40083c:	89 15 1a 08 20 00    	mov    %edx,0x20081a(%rip)        # 60105c <n>
  400842:	4d 89 fc             	mov    %r15,%r12
  400845:	85 c9                	test   %ecx,%ecx
  400847:	74 07                	je     400850 <main+0x70>
  400849:	4d 89 7e 10          	mov    %r15,0x10(%r14)
  40084d:	49 89 c4             	mov    %rax,%r12
  400850:	bf 18 00 00 00       	mov    $0x18,%edi
  400855:	e8 e6 fc ff ff       	callq  400540 <malloc@plt>
  40085a:	48 89 c3             	mov    %rax,%rbx
  40085d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400861:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  400866:	31 c0                	xor    %eax,%eax
  400868:	48 89 de             	mov    %rbx,%rsi
  40086b:	e8 f0 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  400870:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400874:	4d 89 fe             	mov    %r15,%r14
  400877:	4c 89 e0             	mov    %r12,%rax
  40087a:	75 b4                	jne    400830 <main+0x50>
  40087c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400883:	00 
  400884:	4d 85 e4             	test   %r12,%r12
  400887:	74 42                	je     4008cb <main+0xeb>
  400889:	bf c7 0b 40 00       	mov    $0x400bc7,%edi
  40088e:	e8 8d fc ff ff       	callq  400520 <puts@plt>
  400893:	4c 89 e3             	mov    %r12,%rbx
  400896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40089d:	00 00 00 
  4008a0:	48 8b 33             	mov    (%rbx),%rsi
  4008a3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008a8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ac:	bf 61 0b 40 00       	mov    $0x400b61,%edi
  4008b1:	b0 01                	mov    $0x1,%al
  4008b3:	e8 78 fc ff ff       	callq  400530 <printf@plt>
  4008b8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008bc:	48 85 db             	test   %rbx,%rbx
  4008bf:	75 df                	jne    4008a0 <main+0xc0>
  4008c1:	eb 15                	jmp    4008d8 <main+0xf8>
  4008c3:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  4008ca:	00 
  4008cb:	bf bd 0b 40 00       	mov    $0x400bbd,%edi
  4008d0:	e8 4b fc ff ff       	callq  400520 <puts@plt>
  4008d5:	45 31 e4             	xor    %r12d,%r12d
  4008d8:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  4008dd:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  4008e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008e9:	1f 84 00 00 00 00 00 
  4008f0:	bf 00 0c 40 00       	mov    $0x400c00,%edi
  4008f5:	e8 26 fc ff ff       	callq  400520 <puts@plt>
  4008fa:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  400901:	ff 
  400902:	bf 84 0b 40 00       	mov    $0x400b84,%edi
  400907:	31 c0                	xor    %eax,%eax
  400909:	e8 22 fc ff ff       	callq  400530 <printf@plt>
  40090e:	bf 8b 0b 40 00       	mov    $0x400b8b,%edi
  400913:	31 c0                	xor    %eax,%eax
  400915:	4c 89 fe             	mov    %r15,%rsi
  400918:	e8 43 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  40091d:	48 8b 3d 2c 07 20 00 	mov    0x20072c(%rip),%rdi        # 601050 <stdin@@GLIBC_2.2.5>
  400924:	e8 27 fc ff ff       	callq  400550 <_IO_getc@plt>
  400929:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40092d:	83 f8 02             	cmp    $0x2,%eax
  400930:	0f 84 9a 00 00 00    	je     4009d0 <main+0x1f0>
  400936:	83 f8 01             	cmp    $0x1,%eax
  400939:	0f 85 72 01 00 00    	jne    400ab1 <main+0x2d1>
  40093f:	bf 8e 0b 40 00       	mov    $0x400b8e,%edi
  400944:	31 c0                	xor    %eax,%eax
  400946:	e8 e5 fb ff ff       	callq  400530 <printf@plt>
  40094b:	bf 18 00 00 00       	mov    $0x18,%edi
  400950:	e8 eb fb ff ff       	callq  400540 <malloc@plt>
  400955:	49 89 c5             	mov    %rax,%r13
  400958:	49 8d 55 08          	lea    0x8(%r13),%rdx
  40095c:	bf 5b 0b 40 00       	mov    $0x400b5b,%edi
  400961:	31 c0                	xor    %eax,%eax
  400963:	4c 89 ee             	mov    %r13,%rsi
  400966:	e8 f5 fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  40096b:	4d 89 65 10          	mov    %r12,0x10(%r13)
  40096f:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400973:	bf a1 0b 40 00       	mov    $0x400ba1,%edi
  400978:	31 c0                	xor    %eax,%eax
  40097a:	e8 b1 fb ff ff       	callq  400530 <printf@plt>
  40097f:	4d 85 ed             	test   %r13,%r13
  400982:	0f 84 18 01 00 00    	je     400aa0 <main+0x2c0>
  400988:	bf c7 0b 40 00       	mov    $0x400bc7,%edi
  40098d:	e8 8e fb ff ff       	callq  400520 <puts@plt>
  400992:	4c 89 eb             	mov    %r13,%rbx
  400995:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40099c:	00 00 00 00 
  4009a0:	48 8b 33             	mov    (%rbx),%rsi
  4009a3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009a8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009ac:	bf 61 0b 40 00       	mov    $0x400b61,%edi
  4009b1:	b0 01                	mov    $0x1,%al
  4009b3:	e8 78 fb ff ff       	callq  400530 <printf@plt>
  4009b8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009bc:	48 85 db             	test   %rbx,%rbx
  4009bf:	75 df                	jne    4009a0 <main+0x1c0>
  4009c1:	4d 89 ec             	mov    %r13,%r12
  4009c4:	e9 e4 00 00 00       	jmpq   400aad <main+0x2cd>
  4009c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009d0:	bf ac 0b 40 00       	mov    $0x400bac,%edi
  4009d5:	31 c0                	xor    %eax,%eax
  4009d7:	e8 54 fb ff ff       	callq  400530 <printf@plt>
  4009dc:	bf b9 0b 40 00       	mov    $0x400bb9,%edi
  4009e1:	31 c0                	xor    %eax,%eax
  4009e3:	4c 89 f6             	mov    %r14,%rsi
  4009e6:	e8 75 fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  4009eb:	4d 85 e4             	test   %r12,%r12
  4009ee:	74 4d                	je     400a3d <main+0x25d>
  4009f0:	48 63 74 24 08       	movslq 0x8(%rsp),%rsi
  4009f5:	49 8b 3c 24          	mov    (%r12),%rdi
  4009f9:	48 39 f7             	cmp    %rsi,%rdi
  4009fc:	0f 94 c2             	sete   %dl
  4009ff:	4c 89 e0             	mov    %r12,%rax
  400a02:	48 85 ff             	test   %rdi,%rdi
  400a05:	74 23                	je     400a2a <main+0x24a>
  400a07:	48 39 f7             	cmp    %rsi,%rdi
  400a0a:	74 1e                	je     400a2a <main+0x24a>
  400a0c:	4c 89 e0             	mov    %r12,%rax
  400a0f:	90                   	nop
  400a10:	48 89 c1             	mov    %rax,%rcx
  400a13:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a17:	48 8b 38             	mov    (%rax),%rdi
  400a1a:	48 39 f7             	cmp    %rsi,%rdi
  400a1d:	0f 94 c2             	sete   %dl
  400a20:	48 85 ff             	test   %rdi,%rdi
  400a23:	74 05                	je     400a2a <main+0x24a>
  400a25:	48 39 f7             	cmp    %rsi,%rdi
  400a28:	75 e6                	jne    400a10 <main+0x230>
  400a2a:	84 d2                	test   %dl,%dl
  400a2c:	74 22                	je     400a50 <main+0x270>
  400a2e:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a32:	4c 39 e0             	cmp    %r12,%rax
  400a35:	74 14                	je     400a4b <main+0x26b>
  400a37:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a3b:	eb 13                	jmp    400a50 <main+0x270>
  400a3d:	bf 6c 0b 40 00       	mov    $0x400b6c,%edi
  400a42:	31 c0                	xor    %eax,%eax
  400a44:	e8 e7 fa ff ff       	callq  400530 <printf@plt>
  400a49:	eb 55                	jmp    400aa0 <main+0x2c0>
  400a4b:	49 89 d4             	mov    %rdx,%r12
  400a4e:	66 90                	xchg   %ax,%ax
  400a50:	bf 7b 0b 40 00       	mov    $0x400b7b,%edi
  400a55:	31 c0                	xor    %eax,%eax
  400a57:	e8 d4 fa ff ff       	callq  400530 <printf@plt>
  400a5c:	4d 85 e4             	test   %r12,%r12
  400a5f:	74 3f                	je     400aa0 <main+0x2c0>
  400a61:	bf c7 0b 40 00       	mov    $0x400bc7,%edi
  400a66:	e8 b5 fa ff ff       	callq  400520 <puts@plt>
  400a6b:	4c 89 e3             	mov    %r12,%rbx
  400a6e:	66 90                	xchg   %ax,%ax
  400a70:	48 8b 33             	mov    (%rbx),%rsi
  400a73:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a78:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a7c:	bf 61 0b 40 00       	mov    $0x400b61,%edi
  400a81:	b0 01                	mov    $0x1,%al
  400a83:	e8 a8 fa ff ff       	callq  400530 <printf@plt>
  400a88:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a8c:	48 85 db             	test   %rbx,%rbx
  400a8f:	75 df                	jne    400a70 <main+0x290>
  400a91:	eb 1a                	jmp    400aad <main+0x2cd>
  400a93:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a9a:	84 00 00 00 00 00 
  400aa0:	bf bd 0b 40 00       	mov    $0x400bbd,%edi
  400aa5:	e8 76 fa ff ff       	callq  400520 <puts@plt>
  400aaa:	45 31 e4             	xor    %r12d,%r12d
  400aad:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400ab1:	85 c0                	test   %eax,%eax
  400ab3:	0f 85 37 fe ff ff    	jne    4008f0 <main+0x110>
  400ab9:	48 83 c4 10          	add    $0x10,%rsp
  400abd:	5b                   	pop    %rbx
  400abe:	41 5c                	pop    %r12
  400ac0:	41 5d                	pop    %r13
  400ac2:	41 5e                	pop    %r14
  400ac4:	41 5f                	pop    %r15
  400ac6:	c3                   	retq   
  400ac7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400ace:	00 00 

0000000000400ad0 <__libc_csu_init>:
  400ad0:	41 57                	push   %r15
  400ad2:	41 56                	push   %r14
  400ad4:	49 89 d7             	mov    %rdx,%r15
  400ad7:	41 55                	push   %r13
  400ad9:	41 54                	push   %r12
  400adb:	4c 8d 25 1e 03 20 00 	lea    0x20031e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400ae2:	55                   	push   %rbp
  400ae3:	48 8d 2d 1e 03 20 00 	lea    0x20031e(%rip),%rbp        # 600e08 <__init_array_end>
  400aea:	53                   	push   %rbx
  400aeb:	41 89 fd             	mov    %edi,%r13d
  400aee:	49 89 f6             	mov    %rsi,%r14
  400af1:	4c 29 e5             	sub    %r12,%rbp
  400af4:	48 83 ec 08          	sub    $0x8,%rsp
  400af8:	48 c1 fd 03          	sar    $0x3,%rbp
  400afc:	e8 f7 f9 ff ff       	callq  4004f8 <_init>
  400b01:	48 85 ed             	test   %rbp,%rbp
  400b04:	74 20                	je     400b26 <__libc_csu_init+0x56>
  400b06:	31 db                	xor    %ebx,%ebx
  400b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b0f:	00 
  400b10:	4c 89 fa             	mov    %r15,%rdx
  400b13:	4c 89 f6             	mov    %r14,%rsi
  400b16:	44 89 ef             	mov    %r13d,%edi
  400b19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b1d:	48 83 c3 01          	add    $0x1,%rbx
  400b21:	48 39 dd             	cmp    %rbx,%rbp
  400b24:	75 ea                	jne    400b10 <__libc_csu_init+0x40>
  400b26:	48 83 c4 08          	add    $0x8,%rsp
  400b2a:	5b                   	pop    %rbx
  400b2b:	5d                   	pop    %rbp
  400b2c:	41 5c                	pop    %r12
  400b2e:	41 5d                	pop    %r13
  400b30:	41 5e                	pop    %r14
  400b32:	41 5f                	pop    %r15
  400b34:	c3                   	retq   
  400b35:	90                   	nop
  400b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b3d:	00 00 00 

0000000000400b40 <__libc_csu_fini>:
  400b40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b44 <_fini>:
  400b44:	48 83 ec 08          	sub    $0x8,%rsp
  400b48:	48 83 c4 08          	add    $0x8,%rsp
  400b4c:	c3                   	retq   
