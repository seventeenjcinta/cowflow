
c/19040021024_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 0a 20 00 	mov    0x200afd(%rip),%rax        # 600ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <puts@plt>:
  400530:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <printf@plt>:
  400540:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601028 <printf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <malloc@plt>:
  400550:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601030 <malloc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <exit@plt>:
  400570:	ff 25 ca 0a 20 00    	jmpq   *0x200aca(%rip)        # 601040 <exit@GLIBC_2.2.5>
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
  40058f:	49 c7 c0 e0 0a 40 00 	mov    $0x400ae0,%r8
  400596:	48 c7 c1 70 0a 40 00 	mov    $0x400a70,%rcx
  40059d:	48 c7 c7 70 08 40 00 	mov    $0x400870,%rdi
  4005a4:	ff 15 46 0a 20 00    	callq  *0x200a46(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 10 60 00       	mov    $0x601058,%eax
  4005c6:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 10 60 00       	mov    $0x601058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
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
  40061e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 0a 20 00 00 	cmpb   $0x0,0x200a21(%rip)        # 601058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 0a 20 00 01 	movb   $0x1,0x200a0f(%rip)        # 601058 <__TMC_END__>
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

0000000000400670 <print>:
  400670:	53                   	push   %rbx
  400671:	48 89 fb             	mov    %rdi,%rbx
  400674:	48 85 db             	test   %rbx,%rbx
  400677:	74 2a                	je     4006a3 <print+0x33>
  400679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400680:	48 8b 33             	mov    (%rbx),%rsi
  400683:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400688:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40068c:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  400691:	b0 01                	mov    $0x1,%al
  400693:	e8 a8 fe ff ff       	callq  400540 <printf@plt>
  400698:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40069c:	48 85 db             	test   %rbx,%rbx
  40069f:	75 df                	jne    400680 <print+0x10>
  4006a1:	5b                   	pop    %rbx
  4006a2:	c3                   	retq   
  4006a3:	bf 4a 0b 40 00       	mov    $0x400b4a,%edi
  4006a8:	5b                   	pop    %rbx
  4006a9:	e9 82 fe ff ff       	jmpq   400530 <puts@plt>
  4006ae:	66 90                	xchg   %ax,%ax

00000000004006b0 <build>:
  4006b0:	41 56                	push   %r14
  4006b2:	53                   	push   %rbx
  4006b3:	50                   	push   %rax
  4006b4:	49 89 fe             	mov    %rdi,%r14
  4006b7:	eb 12                	jmp    4006cb <build+0x1b>
  4006b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4006c0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4006c4:	83 05 91 09 20 00 01 	addl   $0x1,0x200991(%rip)        # 60105c <n>
  4006cb:	bf 18 00 00 00       	mov    $0x18,%edi
  4006d0:	e8 7b fe ff ff       	callq  400550 <malloc@plt>
  4006d5:	48 89 c3             	mov    %rax,%rbx
  4006d8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006dc:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  4006e1:	31 c0                	xor    %eax,%eax
  4006e3:	48 89 de             	mov    %rbx,%rsi
  4006e6:	e8 75 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  4006eb:	48 8b 03             	mov    (%rbx),%rax
  4006ee:	48 85 c0             	test   %rax,%rax
  4006f1:	74 4d                	je     400740 <build+0x90>
  4006f3:	4d 85 f6             	test   %r14,%r14
  4006f6:	74 28                	je     400720 <build+0x70>
  4006f8:	4c 89 f1             	mov    %r14,%rcx
  4006fb:	49 3b 06             	cmp    (%r14),%rax
  4006fe:	7e 30                	jle    400730 <build+0x80>
  400700:	48 89 ca             	mov    %rcx,%rdx
  400703:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400707:	48 85 c9             	test   %rcx,%rcx
  40070a:	74 2c                	je     400738 <build+0x88>
  40070c:	48 3b 01             	cmp    (%rcx),%rax
  40070f:	7f ef                	jg     400700 <build+0x50>
  400711:	4c 39 f1             	cmp    %r14,%rcx
  400714:	74 1a                	je     400730 <build+0x80>
  400716:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40071a:	eb a4                	jmp    4006c0 <build+0x10>
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)
  400720:	31 c9                	xor    %ecx,%ecx
  400722:	49 89 de             	mov    %rbx,%r14
  400725:	eb 99                	jmp    4006c0 <build+0x10>
  400727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40072e:	00 00 
  400730:	4c 89 f1             	mov    %r14,%rcx
  400733:	49 89 de             	mov    %rbx,%r14
  400736:	eb 88                	jmp    4006c0 <build+0x10>
  400738:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40073c:	31 c9                	xor    %ecx,%ecx
  40073e:	eb 80                	jmp    4006c0 <build+0x10>
  400740:	48 89 df             	mov    %rbx,%rdi
  400743:	e8 d8 fd ff ff       	callq  400520 <free@plt>
  400748:	4c 89 f0             	mov    %r14,%rax
  40074b:	48 83 c4 08          	add    $0x8,%rsp
  40074f:	5b                   	pop    %rbx
  400750:	41 5e                	pop    %r14
  400752:	c3                   	retq   
  400753:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40075a:	84 00 00 00 00 00 

0000000000400760 <insert>:
  400760:	48 85 ff             	test   %rdi,%rdi
  400763:	74 27                	je     40078c <insert+0x2c>
  400765:	48 8b 0e             	mov    (%rsi),%rcx
  400768:	48 3b 0f             	cmp    (%rdi),%rcx
  40076b:	7e 26                	jle    400793 <insert+0x33>
  40076d:	48 89 f8             	mov    %rdi,%rax
  400770:	48 89 c2             	mov    %rax,%rdx
  400773:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400777:	48 85 c0             	test   %rax,%rax
  40077a:	74 1f                	je     40079b <insert+0x3b>
  40077c:	48 3b 08             	cmp    (%rax),%rcx
  40077f:	7f ef                	jg     400770 <insert+0x10>
  400781:	48 39 f8             	cmp    %rdi,%rax
  400784:	74 0d                	je     400793 <insert+0x33>
  400786:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40078a:	eb 15                	jmp    4007a1 <insert+0x41>
  40078c:	31 c0                	xor    %eax,%eax
  40078e:	48 89 f7             	mov    %rsi,%rdi
  400791:	eb 0e                	jmp    4007a1 <insert+0x41>
  400793:	48 89 f8             	mov    %rdi,%rax
  400796:	48 89 f7             	mov    %rsi,%rdi
  400799:	eb 06                	jmp    4007a1 <insert+0x41>
  40079b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40079f:	31 c0                	xor    %eax,%eax
  4007a1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4007a5:	83 05 b0 08 20 00 01 	addl   $0x1,0x2008b0(%rip)        # 60105c <n>
  4007ac:	48 89 f8             	mov    %rdi,%rax
  4007af:	c3                   	retq   

00000000004007b0 <del>:
  4007b0:	41 57                	push   %r15
  4007b2:	41 56                	push   %r14
  4007b4:	41 55                	push   %r13
  4007b6:	41 54                	push   %r12
  4007b8:	53                   	push   %rbx
  4007b9:	49 89 f7             	mov    %rsi,%r15
  4007bc:	49 89 fe             	mov    %rdi,%r14
  4007bf:	4d 85 f6             	test   %r14,%r14
  4007c2:	74 1c                	je     4007e0 <del+0x30>
  4007c4:	4d 39 3e             	cmp    %r15,(%r14)
  4007c7:	75 26                	jne    4007ef <del+0x3f>
  4007c9:	4d 8b 6e 10          	mov    0x10(%r14),%r13
  4007cd:	4d 89 f4             	mov    %r14,%r12
  4007d0:	4c 89 f7             	mov    %r14,%rdi
  4007d3:	e8 48 fd ff ff       	callq  400520 <free@plt>
  4007d8:	4c 89 f3             	mov    %r14,%rbx
  4007db:	4d 89 ee             	mov    %r13,%r14
  4007de:	eb 4c                	jmp    40082c <del+0x7c>
  4007e0:	bf 80 0b 40 00       	mov    $0x400b80,%edi
  4007e5:	e8 46 fd ff ff       	callq  400530 <puts@plt>
  4007ea:	45 31 f6             	xor    %r14d,%r14d
  4007ed:	eb 5e                	jmp    40084d <del+0x9d>
  4007ef:	4d 89 f4             	mov    %r14,%r12
  4007f2:	4c 89 f3             	mov    %r14,%rbx
  4007f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4007fc:	00 00 00 00 
  400800:	48 89 d8             	mov    %rbx,%rax
  400803:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400807:	48 85 db             	test   %rbx,%rbx
  40080a:	74 2a                	je     400836 <del+0x86>
  40080c:	4c 39 3b             	cmp    %r15,(%rbx)
  40080f:	49 89 dc             	mov    %rbx,%r12
  400812:	75 ec                	jne    400800 <del+0x50>
  400814:	4c 8b 6b 10          	mov    0x10(%rbx),%r13
  400818:	4c 39 f3             	cmp    %r14,%rbx
  40081b:	74 3d                	je     40085a <del+0xaa>
  40081d:	4c 89 68 10          	mov    %r13,0x10(%rax)
  400821:	48 89 df             	mov    %rbx,%rdi
  400824:	e8 f7 fc ff ff       	callq  400520 <free@plt>
  400829:	49 89 dc             	mov    %rbx,%r12
  40082c:	83 05 29 08 20 00 ff 	addl   $0xffffffff,0x200829(%rip)        # 60105c <n>
  400833:	48 89 d8             	mov    %rbx,%rax
  400836:	4d 39 3c 24          	cmp    %r15,(%r12)
  40083a:	74 11                	je     40084d <del+0x9d>
  40083c:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  400841:	75 0a                	jne    40084d <del+0x9d>
  400843:	bf 60 0b 40 00       	mov    $0x400b60,%edi
  400848:	e8 e3 fc ff ff       	callq  400530 <puts@plt>
  40084d:	4c 89 f0             	mov    %r14,%rax
  400850:	5b                   	pop    %rbx
  400851:	41 5c                	pop    %r12
  400853:	41 5d                	pop    %r13
  400855:	41 5e                	pop    %r14
  400857:	41 5f                	pop    %r15
  400859:	c3                   	retq   
  40085a:	49 89 dc             	mov    %rbx,%r12
  40085d:	e9 6e ff ff ff       	jmpq   4007d0 <del+0x20>
  400862:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400869:	1f 84 00 00 00 00 00 

0000000000400870 <main>:
  400870:	41 57                	push   %r15
  400872:	41 56                	push   %r14
  400874:	41 54                	push   %r12
  400876:	53                   	push   %rbx
  400877:	48 83 ec 18          	sub    $0x18,%rsp
  40087b:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  400880:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  400885:	eb 13                	jmp    40089a <main+0x2a>
  400887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40088e:	00 00 
  400890:	bf 4a 0b 40 00       	mov    $0x400b4a,%edi
  400895:	e8 96 fc ff ff       	callq  400530 <puts@plt>
  40089a:	45 31 e4             	xor    %r12d,%r12d
  40089d:	e9 5f 01 00 00       	jmpq   400a01 <main+0x191>
  4008a2:	4c 89 e3             	mov    %r12,%rbx
  4008a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ac:	00 00 00 00 
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 78 fc ff ff       	callq  400540 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <main+0x40>
  4008d1:	e9 2b 01 00 00       	jmpq   400a01 <main+0x191>
  4008d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008dd:	00 00 00 
  4008e0:	bf 33 0b 40 00       	mov    $0x400b33,%edi
  4008e5:	31 c0                	xor    %eax,%eax
  4008e7:	e8 54 fc ff ff       	callq  400540 <printf@plt>
  4008ec:	bf 46 0b 40 00       	mov    $0x400b46,%edi
  4008f1:	31 c0                	xor    %eax,%eax
  4008f3:	4c 89 f6             	mov    %r14,%rsi
  4008f6:	e8 65 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  4008fb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400900:	4c 89 e7             	mov    %r12,%rdi
  400903:	e8 a8 fe ff ff       	callq  4007b0 <del>
  400908:	49 89 c4             	mov    %rax,%r12
  40090b:	4d 85 e4             	test   %r12,%r12
  40090e:	74 80                	je     400890 <main+0x20>
  400910:	4c 89 e3             	mov    %r12,%rbx
  400913:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40091a:	84 00 00 00 00 00 
  400920:	48 8b 33             	mov    (%rbx),%rsi
  400923:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400928:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40092c:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  400931:	b0 01                	mov    $0x1,%al
  400933:	e8 08 fc ff ff       	callq  400540 <printf@plt>
  400938:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40093c:	48 85 db             	test   %rbx,%rbx
  40093f:	75 df                	jne    400920 <main+0xb0>
  400941:	e9 bb 00 00 00       	jmpq   400a01 <main+0x191>
  400946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40094d:	00 00 00 
  400950:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400955:	31 c0                	xor    %eax,%eax
  400957:	e8 e4 fb ff ff       	callq  400540 <printf@plt>
  40095c:	bf 18 00 00 00       	mov    $0x18,%edi
  400961:	e8 ea fb ff ff       	callq  400550 <malloc@plt>
  400966:	48 89 c3             	mov    %rax,%rbx
  400969:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40096d:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  400972:	31 c0                	xor    %eax,%eax
  400974:	48 89 de             	mov    %rbx,%rsi
  400977:	e8 e4 fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  40097c:	4d 85 e4             	test   %r12,%r12
  40097f:	74 2b                	je     4009ac <main+0x13c>
  400981:	48 8b 13             	mov    (%rbx),%rdx
  400984:	4c 89 e0             	mov    %r12,%rax
  400987:	49 3b 14 24          	cmp    (%r12),%rdx
  40098b:	7e 26                	jle    4009b3 <main+0x143>
  40098d:	0f 1f 00             	nopl   (%rax)
  400990:	48 89 c1             	mov    %rax,%rcx
  400993:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400997:	48 85 c0             	test   %rax,%rax
  40099a:	74 1f                	je     4009bb <main+0x14b>
  40099c:	48 3b 10             	cmp    (%rax),%rdx
  40099f:	7f ef                	jg     400990 <main+0x120>
  4009a1:	4c 39 e0             	cmp    %r12,%rax
  4009a4:	74 0d                	je     4009b3 <main+0x143>
  4009a6:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009aa:	eb 24                	jmp    4009d0 <main+0x160>
  4009ac:	31 c0                	xor    %eax,%eax
  4009ae:	49 89 dc             	mov    %rbx,%r12
  4009b1:	eb 1d                	jmp    4009d0 <main+0x160>
  4009b3:	4c 89 e0             	mov    %r12,%rax
  4009b6:	49 89 dc             	mov    %rbx,%r12
  4009b9:	eb 15                	jmp    4009d0 <main+0x160>
  4009bb:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009bf:	31 c0                	xor    %eax,%eax
  4009c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009c8:	0f 1f 84 00 00 00 00 
  4009cf:	00 
  4009d0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4009d4:	83 05 81 06 20 00 01 	addl   $0x1,0x200681(%rip)        # 60105c <n>
  4009db:	4c 89 e3             	mov    %r12,%rbx
  4009de:	66 90                	xchg   %ax,%ax
  4009e0:	48 8b 33             	mov    (%rbx),%rsi
  4009e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009ec:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  4009f1:	b0 01                	mov    $0x1,%al
  4009f3:	e8 48 fb ff ff       	callq  400540 <printf@plt>
  4009f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009fc:	48 85 db             	test   %rbx,%rbx
  4009ff:	75 df                	jne    4009e0 <main+0x170>
  400a01:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  400a06:	e8 25 fb ff ff       	callq  400530 <puts@plt>
  400a0b:	bf 27 0b 40 00       	mov    $0x400b27,%edi
  400a10:	31 c0                	xor    %eax,%eax
  400a12:	e8 29 fb ff ff       	callq  400540 <printf@plt>
  400a17:	bf 30 0b 40 00       	mov    $0x400b30,%edi
  400a1c:	31 c0                	xor    %eax,%eax
  400a1e:	4c 89 fe             	mov    %r15,%rsi
  400a21:	e8 3a fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  400a26:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400a2a:	83 c0 ff             	add    $0xffffffff,%eax
  400a2d:	83 f8 03             	cmp    $0x3,%eax
  400a30:	77 cf                	ja     400a01 <main+0x191>
  400a32:	ff 24 c5 f8 0a 40 00 	jmpq   *0x400af8(,%rax,8)
  400a39:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400a3e:	e8 ed fa ff ff       	callq  400530 <puts@plt>
  400a43:	4c 89 e7             	mov    %r12,%rdi
  400a46:	e8 65 fc ff ff       	callq  4006b0 <build>
  400a4b:	49 89 c4             	mov    %rax,%r12
  400a4e:	4d 85 e4             	test   %r12,%r12
  400a51:	0f 85 4b fe ff ff    	jne    4008a2 <main+0x32>
  400a57:	e9 34 fe ff ff       	jmpq   400890 <main+0x20>
  400a5c:	31 ff                	xor    %edi,%edi
  400a5e:	e8 0d fb ff ff       	callq  400570 <exit@plt>
  400a63:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a6a:	00 00 00 
  400a6d:	0f 1f 00             	nopl   (%rax)

0000000000400a70 <__libc_csu_init>:
  400a70:	41 57                	push   %r15
  400a72:	41 56                	push   %r14
  400a74:	49 89 d7             	mov    %rdx,%r15
  400a77:	41 55                	push   %r13
  400a79:	41 54                	push   %r12
  400a7b:	4c 8d 25 7e 03 20 00 	lea    0x20037e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400a82:	55                   	push   %rbp
  400a83:	48 8d 2d 7e 03 20 00 	lea    0x20037e(%rip),%rbp        # 600e08 <__init_array_end>
  400a8a:	53                   	push   %rbx
  400a8b:	41 89 fd             	mov    %edi,%r13d
  400a8e:	49 89 f6             	mov    %rsi,%r14
  400a91:	4c 29 e5             	sub    %r12,%rbp
  400a94:	48 83 ec 08          	sub    $0x8,%rsp
  400a98:	48 c1 fd 03          	sar    $0x3,%rbp
  400a9c:	e8 4f fa ff ff       	callq  4004f0 <_init>
  400aa1:	48 85 ed             	test   %rbp,%rbp
  400aa4:	74 20                	je     400ac6 <__libc_csu_init+0x56>
  400aa6:	31 db                	xor    %ebx,%ebx
  400aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aaf:	00 
  400ab0:	4c 89 fa             	mov    %r15,%rdx
  400ab3:	4c 89 f6             	mov    %r14,%rsi
  400ab6:	44 89 ef             	mov    %r13d,%edi
  400ab9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400abd:	48 83 c3 01          	add    $0x1,%rbx
  400ac1:	48 39 dd             	cmp    %rbx,%rbp
  400ac4:	75 ea                	jne    400ab0 <__libc_csu_init+0x40>
  400ac6:	48 83 c4 08          	add    $0x8,%rsp
  400aca:	5b                   	pop    %rbx
  400acb:	5d                   	pop    %rbp
  400acc:	41 5c                	pop    %r12
  400ace:	41 5d                	pop    %r13
  400ad0:	41 5e                	pop    %r14
  400ad2:	41 5f                	pop    %r15
  400ad4:	c3                   	retq   
  400ad5:	90                   	nop
  400ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400add:	00 00 00 

0000000000400ae0 <__libc_csu_fini>:
  400ae0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ae4 <_fini>:
  400ae4:	48 83 ec 08          	sub    $0x8,%rsp
  400ae8:	48 83 c4 08          	add    $0x8,%rsp
  400aec:	c3                   	retq   
