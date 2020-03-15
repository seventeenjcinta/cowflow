
c/19020031103_2.elf:     file format elf64-x86-64


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
  40057f:	49 c7 c0 40 0a 40 00 	mov    $0x400a40,%r8
  400586:	48 c7 c1 d0 09 40 00 	mov    $0x4009d0,%rcx
  40058d:	48 c7 c7 b0 07 40 00 	mov    $0x4007b0,%rdi
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

0000000000400660 <print>:
  400660:	53                   	push   %rbx
  400661:	48 89 fb             	mov    %rdi,%rbx
  400664:	48 85 db             	test   %rbx,%rbx
  400667:	74 3a                	je     4006a3 <print+0x43>
  400669:	8b 35 ed 09 20 00    	mov    0x2009ed(%rip),%esi        # 60105c <n>
  40066f:	bf 54 0a 40 00       	mov    $0x400a54,%edi
  400674:	31 c0                	xor    %eax,%eax
  400676:	e8 b5 fe ff ff       	callq  400530 <printf@plt>
  40067b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400680:	48 8b 33             	mov    (%rbx),%rsi
  400683:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400688:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40068c:	bf 71 0a 40 00       	mov    $0x400a71,%edi
  400691:	b0 01                	mov    $0x1,%al
  400693:	e8 98 fe ff ff       	callq  400530 <printf@plt>
  400698:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40069c:	48 85 db             	test   %rbx,%rbx
  40069f:	75 df                	jne    400680 <print+0x20>
  4006a1:	5b                   	pop    %rbx
  4006a2:	c3                   	retq   
  4006a3:	bf 7c 0a 40 00       	mov    $0x400a7c,%edi
  4006a8:	31 c0                	xor    %eax,%eax
  4006aa:	5b                   	pop    %rbx
  4006ab:	e9 80 fe ff ff       	jmpq   400530 <printf@plt>

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
  4006f5:	83 05 60 09 20 00 01 	addl   $0x1,0x200960(%rip)        # 60105c <n>
  4006fc:	48 89 f8             	mov    %rdi,%rax
  4006ff:	c3                   	retq   

0000000000400700 <create>:
  400700:	41 56                	push   %r14
  400702:	53                   	push   %rbx
  400703:	50                   	push   %rax
  400704:	49 89 fe             	mov    %rdi,%r14
  400707:	eb 12                	jmp    40071b <create+0x1b>
  400709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400710:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400714:	83 05 41 09 20 00 01 	addl   $0x1,0x200941(%rip)        # 60105c <n>
  40071b:	bf 18 00 00 00       	mov    $0x18,%edi
  400720:	e8 1b fe ff ff       	callq  400540 <malloc@plt>
  400725:	48 89 c3             	mov    %rax,%rbx
  400728:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40072c:	bf 96 0a 40 00       	mov    $0x400a96,%edi
  400731:	31 c0                	xor    %eax,%eax
  400733:	48 89 de             	mov    %rbx,%rsi
  400736:	e8 25 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  40073b:	48 8b 03             	mov    (%rbx),%rax
  40073e:	48 85 c0             	test   %rax,%rax
  400741:	74 4d                	je     400790 <create+0x90>
  400743:	4d 85 f6             	test   %r14,%r14
  400746:	74 28                	je     400770 <create+0x70>
  400748:	4c 89 f1             	mov    %r14,%rcx
  40074b:	49 3b 06             	cmp    (%r14),%rax
  40074e:	7e 30                	jle    400780 <create+0x80>
  400750:	48 89 ca             	mov    %rcx,%rdx
  400753:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400757:	48 85 c9             	test   %rcx,%rcx
  40075a:	74 2c                	je     400788 <create+0x88>
  40075c:	48 3b 01             	cmp    (%rcx),%rax
  40075f:	7f ef                	jg     400750 <create+0x50>
  400761:	4c 39 f1             	cmp    %r14,%rcx
  400764:	74 1a                	je     400780 <create+0x80>
  400766:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40076a:	eb a4                	jmp    400710 <create+0x10>
  40076c:	0f 1f 40 00          	nopl   0x0(%rax)
  400770:	31 c9                	xor    %ecx,%ecx
  400772:	49 89 de             	mov    %rbx,%r14
  400775:	eb 99                	jmp    400710 <create+0x10>
  400777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40077e:	00 00 
  400780:	4c 89 f1             	mov    %r14,%rcx
  400783:	49 89 de             	mov    %rbx,%r14
  400786:	eb 88                	jmp    400710 <create+0x10>
  400788:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40078c:	31 c9                	xor    %ecx,%ecx
  40078e:	eb 80                	jmp    400710 <create+0x10>
  400790:	4c 89 f0             	mov    %r14,%rax
  400793:	48 83 c4 08          	add    $0x8,%rsp
  400797:	5b                   	pop    %rbx
  400798:	41 5e                	pop    %r14
  40079a:	c3                   	retq   
  40079b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004007a0 <del>:
  4007a0:	0f 0b                	ud2    
  4007a2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007a9:	1f 84 00 00 00 00 00 

00000000004007b0 <main>:
  4007b0:	41 57                	push   %r15
  4007b2:	41 56                	push   %r14
  4007b4:	53                   	push   %rbx
  4007b5:	48 83 ec 10          	sub    $0x10,%rsp
  4007b9:	bf 00 0b 40 00       	mov    $0x400b00,%edi
  4007be:	e8 5d fd ff ff       	callq  400520 <puts@plt>
  4007c3:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  4007c8:	e8 53 fd ff ff       	callq  400520 <puts@plt>
  4007cd:	31 ff                	xor    %edi,%edi
  4007cf:	e8 2c ff ff ff       	callq  400700 <create>
  4007d4:	49 89 c7             	mov    %rax,%r15
  4007d7:	4d 85 ff             	test   %r15,%r15
  4007da:	74 47                	je     400823 <main+0x73>
  4007dc:	8b 35 7a 08 20 00    	mov    0x20087a(%rip),%esi        # 60105c <n>
  4007e2:	bf 54 0a 40 00       	mov    $0x400a54,%edi
  4007e7:	31 c0                	xor    %eax,%eax
  4007e9:	e8 42 fd ff ff       	callq  400530 <printf@plt>
  4007ee:	4c 89 fb             	mov    %r15,%rbx
  4007f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007f8:	0f 1f 84 00 00 00 00 
  4007ff:	00 
  400800:	48 8b 33             	mov    (%rbx),%rsi
  400803:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400808:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40080c:	bf 71 0a 40 00       	mov    $0x400a71,%edi
  400811:	b0 01                	mov    $0x1,%al
  400813:	e8 18 fd ff ff       	callq  400530 <printf@plt>
  400818:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40081c:	48 85 db             	test   %rbx,%rbx
  40081f:	75 df                	jne    400800 <main+0x50>
  400821:	eb 0c                	jmp    40082f <main+0x7f>
  400823:	bf 7c 0a 40 00       	mov    $0x400a7c,%edi
  400828:	31 c0                	xor    %eax,%eax
  40082a:	e8 01 fd ff ff       	callq  400530 <printf@plt>
  40082f:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  400834:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40083b:	00 00 00 00 00 
  400840:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  400845:	e8 d6 fc ff ff       	callq  400520 <puts@plt>
  40084a:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  400851:	ff 
  400852:	bf 9d 0a 40 00       	mov    $0x400a9d,%edi
  400857:	31 c0                	xor    %eax,%eax
  400859:	e8 d2 fc ff ff       	callq  400530 <printf@plt>
  40085e:	bf ad 0a 40 00       	mov    $0x400aad,%edi
  400863:	31 c0                	xor    %eax,%eax
  400865:	4c 89 f6             	mov    %r14,%rsi
  400868:	e8 f3 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  40086d:	48 8b 3d dc 07 20 00 	mov    0x2007dc(%rip),%rdi        # 601050 <stdin@@GLIBC_2.2.5>
  400874:	e8 d7 fc ff ff       	callq  400550 <_IO_getc@plt>
  400879:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40087d:	83 f8 01             	cmp    $0x1,%eax
  400880:	74 1e                	je     4008a0 <main+0xf0>
  400882:	83 f8 02             	cmp    $0x2,%eax
  400885:	0f 84 1a 01 00 00    	je     4009a5 <main+0x1f5>
  40088b:	85 c0                	test   %eax,%eax
  40088d:	75 b1                	jne    400840 <main+0x90>
  40088f:	e9 07 01 00 00       	jmpq   40099b <main+0x1eb>
  400894:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40089b:	00 00 00 00 00 
  4008a0:	bf b0 0a 40 00       	mov    $0x400ab0,%edi
  4008a5:	31 c0                	xor    %eax,%eax
  4008a7:	e8 84 fc ff ff       	callq  400530 <printf@plt>
  4008ac:	bf 18 00 00 00       	mov    $0x18,%edi
  4008b1:	e8 8a fc ff ff       	callq  400540 <malloc@plt>
  4008b6:	48 89 c3             	mov    %rax,%rbx
  4008b9:	bf 96 0a 40 00       	mov    $0x400a96,%edi
  4008be:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4008c2:	31 c0                	xor    %eax,%eax
  4008c4:	48 89 de             	mov    %rbx,%rsi
  4008c7:	e8 94 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  4008cc:	4d 85 ff             	test   %r15,%r15
  4008cf:	74 2f                	je     400900 <main+0x150>
  4008d1:	48 8b 33             	mov    (%rbx),%rsi
  4008d4:	4c 89 f8             	mov    %r15,%rax
  4008d7:	49 3b 37             	cmp    (%r15),%rsi
  4008da:	7e 34                	jle    400910 <main+0x160>
  4008dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4008e0:	48 89 c1             	mov    %rax,%rcx
  4008e3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4008e7:	48 85 c0             	test   %rax,%rax
  4008ea:	74 2d                	je     400919 <main+0x169>
  4008ec:	48 3b 30             	cmp    (%rax),%rsi
  4008ef:	7f ef                	jg     4008e0 <main+0x130>
  4008f1:	4c 39 f8             	cmp    %r15,%rax
  4008f4:	74 1a                	je     400910 <main+0x160>
  4008f6:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4008fa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4008fe:	eb 30                	jmp    400930 <main+0x180>
  400900:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400907:	00 
  400908:	48 8b 33             	mov    (%rbx),%rsi
  40090b:	49 89 df             	mov    %rbx,%r15
  40090e:	eb 20                	jmp    400930 <main+0x180>
  400910:	4c 89 7b 10          	mov    %r15,0x10(%rbx)
  400914:	49 89 df             	mov    %rbx,%r15
  400917:	eb 17                	jmp    400930 <main+0x180>
  400919:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40091d:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400924:	00 
  400925:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40092c:	00 00 00 00 
  400930:	83 05 25 07 20 00 01 	addl   $0x1,0x200725(%rip)        # 60105c <n>
  400937:	bf cd 0a 40 00       	mov    $0x400acd,%edi
  40093c:	31 c0                	xor    %eax,%eax
  40093e:	e8 ed fb ff ff       	callq  400530 <printf@plt>
  400943:	4d 85 ff             	test   %r15,%r15
  400946:	74 3b                	je     400983 <main+0x1d3>
  400948:	8b 35 0e 07 20 00    	mov    0x20070e(%rip),%esi        # 60105c <n>
  40094e:	bf 54 0a 40 00       	mov    $0x400a54,%edi
  400953:	31 c0                	xor    %eax,%eax
  400955:	e8 d6 fb ff ff       	callq  400530 <printf@plt>
  40095a:	4c 89 fb             	mov    %r15,%rbx
  40095d:	0f 1f 00             	nopl   (%rax)
  400960:	48 8b 33             	mov    (%rbx),%rsi
  400963:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400968:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40096c:	bf 71 0a 40 00       	mov    $0x400a71,%edi
  400971:	b0 01                	mov    $0x1,%al
  400973:	e8 b8 fb ff ff       	callq  400530 <printf@plt>
  400978:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40097c:	48 85 db             	test   %rbx,%rbx
  40097f:	75 df                	jne    400960 <main+0x1b0>
  400981:	eb 0c                	jmp    40098f <main+0x1df>
  400983:	bf 7c 0a 40 00       	mov    $0x400a7c,%edi
  400988:	31 c0                	xor    %eax,%eax
  40098a:	e8 a1 fb ff ff       	callq  400530 <printf@plt>
  40098f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400993:	85 c0                	test   %eax,%eax
  400995:	0f 85 a5 fe ff ff    	jne    400840 <main+0x90>
  40099b:	48 83 c4 10          	add    $0x10,%rsp
  40099f:	5b                   	pop    %rbx
  4009a0:	41 5e                	pop    %r14
  4009a2:	41 5f                	pop    %r15
  4009a4:	c3                   	retq   
  4009a5:	bf dc 0a 40 00       	mov    $0x400adc,%edi
  4009aa:	31 c0                	xor    %eax,%eax
  4009ac:	e8 7f fb ff ff       	callq  400530 <printf@plt>
  4009b1:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4009b6:	bf ef 0a 40 00       	mov    $0x400aef,%edi
  4009bb:	31 c0                	xor    %eax,%eax
  4009bd:	e8 9e fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  4009c2:	0f 0b                	ud2    
  4009c4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009cb:	00 00 00 
  4009ce:	66 90                	xchg   %ax,%ax

00000000004009d0 <__libc_csu_init>:
  4009d0:	41 57                	push   %r15
  4009d2:	41 56                	push   %r14
  4009d4:	49 89 d7             	mov    %rdx,%r15
  4009d7:	41 55                	push   %r13
  4009d9:	41 54                	push   %r12
  4009db:	4c 8d 25 1e 04 20 00 	lea    0x20041e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  4009e2:	55                   	push   %rbp
  4009e3:	48 8d 2d 1e 04 20 00 	lea    0x20041e(%rip),%rbp        # 600e08 <__init_array_end>
  4009ea:	53                   	push   %rbx
  4009eb:	41 89 fd             	mov    %edi,%r13d
  4009ee:	49 89 f6             	mov    %rsi,%r14
  4009f1:	4c 29 e5             	sub    %r12,%rbp
  4009f4:	48 83 ec 08          	sub    $0x8,%rsp
  4009f8:	48 c1 fd 03          	sar    $0x3,%rbp
  4009fc:	e8 f7 fa ff ff       	callq  4004f8 <_init>
  400a01:	48 85 ed             	test   %rbp,%rbp
  400a04:	74 20                	je     400a26 <__libc_csu_init+0x56>
  400a06:	31 db                	xor    %ebx,%ebx
  400a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a0f:	00 
  400a10:	4c 89 fa             	mov    %r15,%rdx
  400a13:	4c 89 f6             	mov    %r14,%rsi
  400a16:	44 89 ef             	mov    %r13d,%edi
  400a19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a1d:	48 83 c3 01          	add    $0x1,%rbx
  400a21:	48 39 dd             	cmp    %rbx,%rbp
  400a24:	75 ea                	jne    400a10 <__libc_csu_init+0x40>
  400a26:	48 83 c4 08          	add    $0x8,%rsp
  400a2a:	5b                   	pop    %rbx
  400a2b:	5d                   	pop    %rbp
  400a2c:	41 5c                	pop    %r12
  400a2e:	41 5d                	pop    %r13
  400a30:	41 5e                	pop    %r14
  400a32:	41 5f                	pop    %r15
  400a34:	c3                   	retq   
  400a35:	90                   	nop
  400a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a3d:	00 00 00 

0000000000400a40 <__libc_csu_fini>:
  400a40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400a44 <_fini>:
  400a44:	48 83 ec 08          	sub    $0x8,%rsp
  400a48:	48 83 c4 08          	add    $0x8,%rsp
  400a4c:	c3                   	retq   
