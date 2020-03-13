
input/18090012028_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400518 <_init>:
  400518:	48 83 ec 08          	sub    $0x8,%rsp
  40051c:	48 8b 05 d5 1a 20 00 	mov    0x201ad5(%rip),%rax        # 601ff8 <__gmon_start__>
  400523:	48 85 c0             	test   %rax,%rax
  400526:	74 02                	je     40052a <_init+0x12>
  400528:	ff d0                	callq  *%rax
  40052a:	48 83 c4 08          	add    $0x8,%rsp
  40052e:	c3                   	retq   

Disassembly of section .plt:

0000000000400530 <.plt>:
  400530:	ff 35 d2 1a 20 00    	pushq  0x201ad2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400536:	ff 25 d4 1a 20 00    	jmpq   *0x201ad4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40053c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400540 <free@plt>:
  400540:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400546:	68 00 00 00 00       	pushq  $0x0
  40054b:	e9 e0 ff ff ff       	jmpq   400530 <.plt>

0000000000400550 <putchar@plt>:
  400550:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  400556:	68 01 00 00 00       	pushq  $0x1
  40055b:	e9 d0 ff ff ff       	jmpq   400530 <.plt>

0000000000400560 <puts@plt>:
  400560:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602028 <puts@GLIBC_2.2.5>
  400566:	68 02 00 00 00       	pushq  $0x2
  40056b:	e9 c0 ff ff ff       	jmpq   400530 <.plt>

0000000000400570 <printf@plt>:
  400570:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602030 <printf@GLIBC_2.2.5>
  400576:	68 03 00 00 00       	pushq  $0x3
  40057b:	e9 b0 ff ff ff       	jmpq   400530 <.plt>

0000000000400580 <malloc@plt>:
  400580:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  400586:	68 04 00 00 00       	pushq  $0x4
  40058b:	e9 a0 ff ff ff       	jmpq   400530 <.plt>

0000000000400590 <__isoc99_scanf@plt>:
  400590:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  400596:	68 05 00 00 00       	pushq  $0x5
  40059b:	e9 90 ff ff ff       	jmpq   400530 <.plt>

Disassembly of section .text:

00000000004005a0 <_start>:
  4005a0:	31 ed                	xor    %ebp,%ebp
  4005a2:	49 89 d1             	mov    %rdx,%r9
  4005a5:	5e                   	pop    %rsi
  4005a6:	48 89 e2             	mov    %rsp,%rdx
  4005a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ad:	50                   	push   %rax
  4005ae:	54                   	push   %rsp
  4005af:	49 c7 c0 30 0b 40 00 	mov    $0x400b30,%r8
  4005b6:	48 c7 c1 c0 0a 40 00 	mov    $0x400ac0,%rcx
  4005bd:	48 c7 c7 e0 08 40 00 	mov    $0x4008e0,%rdi
  4005c4:	ff 15 26 1a 20 00    	callq  *0x201a26(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ca:	f4                   	hlt    
  4005cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005d0 <_dl_relocate_static_pie>:
  4005d0:	f3 c3                	repz retq 
  4005d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005d9:	00 00 00 
  4005dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005e0 <deregister_tm_clones>:
  4005e0:	55                   	push   %rbp
  4005e1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005e6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005ec:	48 89 e5             	mov    %rsp,%rbp
  4005ef:	74 17                	je     400608 <deregister_tm_clones+0x28>
  4005f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f6:	48 85 c0             	test   %rax,%rax
  4005f9:	74 0d                	je     400608 <deregister_tm_clones+0x28>
  4005fb:	5d                   	pop    %rbp
  4005fc:	bf 58 20 60 00       	mov    $0x602058,%edi
  400601:	ff e0                	jmpq   *%rax
  400603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400608:	5d                   	pop    %rbp
  400609:	c3                   	retq   
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400610 <register_tm_clones>:
  400610:	be 58 20 60 00       	mov    $0x602058,%esi
  400615:	55                   	push   %rbp
  400616:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  40061d:	48 89 e5             	mov    %rsp,%rbp
  400620:	48 c1 fe 03          	sar    $0x3,%rsi
  400624:	48 89 f0             	mov    %rsi,%rax
  400627:	48 c1 e8 3f          	shr    $0x3f,%rax
  40062b:	48 01 c6             	add    %rax,%rsi
  40062e:	48 d1 fe             	sar    %rsi
  400631:	74 15                	je     400648 <register_tm_clones+0x38>
  400633:	b8 00 00 00 00       	mov    $0x0,%eax
  400638:	48 85 c0             	test   %rax,%rax
  40063b:	74 0b                	je     400648 <register_tm_clones+0x38>
  40063d:	5d                   	pop    %rbp
  40063e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400643:	ff e0                	jmpq   *%rax
  400645:	0f 1f 00             	nopl   (%rax)
  400648:	5d                   	pop    %rbp
  400649:	c3                   	retq   
  40064a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400650 <__do_global_dtors_aux>:
  400650:	80 3d 01 1a 20 00 00 	cmpb   $0x0,0x201a01(%rip)        # 602058 <__TMC_END__>
  400657:	75 17                	jne    400670 <__do_global_dtors_aux+0x20>
  400659:	55                   	push   %rbp
  40065a:	48 89 e5             	mov    %rsp,%rbp
  40065d:	e8 7e ff ff ff       	callq  4005e0 <deregister_tm_clones>
  400662:	c6 05 ef 19 20 00 01 	movb   $0x1,0x2019ef(%rip)        # 602058 <__TMC_END__>
  400669:	5d                   	pop    %rbp
  40066a:	c3                   	retq   
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400670:	f3 c3                	repz retq 
  400672:	0f 1f 40 00          	nopl   0x0(%rax)
  400676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40067d:	00 00 00 

0000000000400680 <frame_dummy>:
  400680:	55                   	push   %rbp
  400681:	48 89 e5             	mov    %rsp,%rbp
  400684:	5d                   	pop    %rbp
  400685:	eb 89                	jmp    400610 <register_tm_clones>
  400687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40068e:	00 00 

0000000000400690 <meau>:
  400690:	bf f0 0b 40 00       	mov    $0x400bf0,%edi
  400695:	e9 c6 fe ff ff       	jmpq   400560 <puts@plt>
  40069a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006a0 <insert>:
  4006a0:	48 85 ff             	test   %rdi,%rdi
  4006a3:	74 27                	je     4006cc <insert+0x2c>
  4006a5:	48 8b 0e             	mov    (%rsi),%rcx
  4006a8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006ab:	7e 26                	jle    4006d3 <insert+0x33>
  4006ad:	48 89 f8             	mov    %rdi,%rax
  4006b0:	48 89 c2             	mov    %rax,%rdx
  4006b3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006b7:	48 85 c0             	test   %rax,%rax
  4006ba:	74 1f                	je     4006db <insert+0x3b>
  4006bc:	48 3b 08             	cmp    (%rax),%rcx
  4006bf:	7f ef                	jg     4006b0 <insert+0x10>
  4006c1:	48 39 f8             	cmp    %rdi,%rax
  4006c4:	74 0d                	je     4006d3 <insert+0x33>
  4006c6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006ca:	eb 15                	jmp    4006e1 <insert+0x41>
  4006cc:	31 c0                	xor    %eax,%eax
  4006ce:	48 89 f7             	mov    %rsi,%rdi
  4006d1:	eb 0e                	jmp    4006e1 <insert+0x41>
  4006d3:	48 89 f8             	mov    %rdi,%rax
  4006d6:	48 89 f7             	mov    %rsi,%rdi
  4006d9:	eb 06                	jmp    4006e1 <insert+0x41>
  4006db:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006df:	31 c0                	xor    %eax,%eax
  4006e1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4006e5:	83 05 70 19 20 00 01 	addl   $0x1,0x201970(%rip)        # 60205c <n>
  4006ec:	48 89 f8             	mov    %rdi,%rax
  4006ef:	c3                   	retq   

00000000004006f0 <creat>:
  4006f0:	41 56                	push   %r14
  4006f2:	53                   	push   %rbx
  4006f3:	50                   	push   %rax
  4006f4:	bf 18 00 00 00       	mov    $0x18,%edi
  4006f9:	e8 82 fe ff ff       	callq  400580 <malloc@plt>
  4006fe:	48 89 c3             	mov    %rax,%rbx
  400701:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400705:	45 31 f6             	xor    %r14d,%r14d
  400708:	bf 48 0b 40 00       	mov    $0x400b48,%edi
  40070d:	31 c0                	xor    %eax,%eax
  40070f:	48 89 de             	mov    %rbx,%rsi
  400712:	e8 79 fe ff ff       	callq  400590 <__isoc99_scanf@plt>
  400717:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  40071c:	0f 57 c9             	xorps  %xmm1,%xmm1
  40071f:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400722:	75 06                	jne    40072a <creat+0x3a>
  400724:	0f 8b 9a 00 00 00    	jnp    4007c4 <creat+0xd4>
  40072a:	45 31 f6             	xor    %r14d,%r14d
  40072d:	0f 1f 00             	nopl   (%rax)
  400730:	4d 85 f6             	test   %r14,%r14
  400733:	74 2b                	je     400760 <creat+0x70>
  400735:	48 8b 13             	mov    (%rbx),%rdx
  400738:	4c 89 f0             	mov    %r14,%rax
  40073b:	49 3b 16             	cmp    (%r14),%rdx
  40073e:	7e 30                	jle    400770 <creat+0x80>
  400740:	48 89 c1             	mov    %rax,%rcx
  400743:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400747:	48 85 c0             	test   %rax,%rax
  40074a:	74 2c                	je     400778 <creat+0x88>
  40074c:	48 3b 10             	cmp    (%rax),%rdx
  40074f:	7f ef                	jg     400740 <creat+0x50>
  400751:	4c 39 f0             	cmp    %r14,%rax
  400754:	74 1a                	je     400770 <creat+0x80>
  400756:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40075a:	eb 24                	jmp    400780 <creat+0x90>
  40075c:	0f 1f 40 00          	nopl   0x0(%rax)
  400760:	31 c0                	xor    %eax,%eax
  400762:	49 89 de             	mov    %rbx,%r14
  400765:	eb 19                	jmp    400780 <creat+0x90>
  400767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40076e:	00 00 
  400770:	4c 89 f0             	mov    %r14,%rax
  400773:	49 89 de             	mov    %rbx,%r14
  400776:	eb 08                	jmp    400780 <creat+0x90>
  400778:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40077c:	31 c0                	xor    %eax,%eax
  40077e:	66 90                	xchg   %ax,%ax
  400780:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400784:	83 05 d1 18 20 00 01 	addl   $0x1,0x2018d1(%rip)        # 60205c <n>
  40078b:	bf 18 00 00 00       	mov    $0x18,%edi
  400790:	e8 eb fd ff ff       	callq  400580 <malloc@plt>
  400795:	48 89 c3             	mov    %rax,%rbx
  400798:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40079c:	bf 48 0b 40 00       	mov    $0x400b48,%edi
  4007a1:	31 c0                	xor    %eax,%eax
  4007a3:	48 89 de             	mov    %rbx,%rsi
  4007a6:	e8 e5 fd ff ff       	callq  400590 <__isoc99_scanf@plt>
  4007ab:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4007b0:	0f 2e 04 25 44 0b 40 	ucomiss 0x400b44,%xmm0
  4007b7:	00 
  4007b8:	0f 85 72 ff ff ff    	jne    400730 <creat+0x40>
  4007be:	0f 8a 6c ff ff ff    	jp     400730 <creat+0x40>
  4007c4:	0f 2e 04 25 44 0b 40 	ucomiss 0x400b44,%xmm0
  4007cb:	00 
  4007cc:	75 0a                	jne    4007d8 <creat+0xe8>
  4007ce:	7a 08                	jp     4007d8 <creat+0xe8>
  4007d0:	48 89 df             	mov    %rbx,%rdi
  4007d3:	e8 68 fd ff ff       	callq  400540 <free@plt>
  4007d8:	4c 89 f0             	mov    %r14,%rax
  4007db:	48 83 c4 08          	add    $0x8,%rsp
  4007df:	5b                   	pop    %rbx
  4007e0:	41 5e                	pop    %r14
  4007e2:	c3                   	retq   
  4007e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007ea:	84 00 00 00 00 00 

00000000004007f0 <del>:
  4007f0:	41 56                	push   %r14
  4007f2:	53                   	push   %rbx
  4007f3:	50                   	push   %rax
  4007f4:	49 89 fe             	mov    %rdi,%r14
  4007f7:	49 8b 5e 10          	mov    0x10(%r14),%rbx
  4007fb:	49 39 36             	cmp    %rsi,(%r14)
  4007fe:	75 0a                	jne    40080a <del+0x1a>
  400800:	4c 89 f1             	mov    %r14,%rcx
  400803:	48 85 db             	test   %rbx,%rbx
  400806:	75 21                	jne    400829 <del+0x39>
  400808:	eb 2a                	jmp    400834 <del+0x44>
  40080a:	4c 89 f1             	mov    %r14,%rcx
  40080d:	0f 1f 00             	nopl   (%rax)
  400810:	48 89 c8             	mov    %rcx,%rax
  400813:	48 89 d9             	mov    %rbx,%rcx
  400816:	48 85 c9             	test   %rcx,%rcx
  400819:	74 19                	je     400834 <del+0x44>
  40081b:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  40081f:	48 39 31             	cmp    %rsi,(%rcx)
  400822:	75 ec                	jne    400810 <del+0x20>
  400824:	48 85 db             	test   %rbx,%rbx
  400827:	74 0b                	je     400834 <del+0x44>
  400829:	4c 39 f1             	cmp    %r14,%rcx
  40082c:	74 12                	je     400840 <del+0x50>
  40082e:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400832:	eb 17                	jmp    40084b <del+0x5b>
  400834:	bf e5 0b 40 00       	mov    $0x400be5,%edi
  400839:	e8 22 fd ff ff       	callq  400560 <puts@plt>
  40083e:	eb 12                	jmp    400852 <del+0x62>
  400840:	4c 89 f7             	mov    %r14,%rdi
  400843:	e8 f8 fc ff ff       	callq  400540 <free@plt>
  400848:	49 89 de             	mov    %rbx,%r14
  40084b:	83 05 0a 18 20 00 ff 	addl   $0xffffffff,0x20180a(%rip)        # 60205c <n>
  400852:	4c 89 f0             	mov    %r14,%rax
  400855:	48 83 c4 08          	add    $0x8,%rsp
  400859:	5b                   	pop    %rbx
  40085a:	41 5e                	pop    %r14
  40085c:	c3                   	retq   
  40085d:	0f 1f 00             	nopl   (%rax)

0000000000400860 <print>:
  400860:	53                   	push   %rbx
  400861:	48 89 fb             	mov    %rdi,%rbx
  400864:	8b 35 f2 17 20 00    	mov    0x2017f2(%rip),%esi        # 60205c <n>
  40086a:	83 fe 01             	cmp    $0x1,%esi
  40086d:	74 15                	je     400884 <print+0x24>
  40086f:	85 f6                	test   %esi,%esi
  400871:	75 1d                	jne    400890 <print+0x30>
  400873:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  400878:	e8 e3 fc ff ff       	callq  400560 <puts@plt>
  40087d:	48 85 db             	test   %rbx,%rbx
  400880:	75 2e                	jne    4008b0 <print+0x50>
  400882:	eb 4d                	jmp    4008d1 <print+0x71>
  400884:	bf 4f 0b 40 00       	mov    $0x400b4f,%edi
  400889:	be 01 00 00 00       	mov    $0x1,%esi
  40088e:	eb 05                	jmp    400895 <print+0x35>
  400890:	bf 69 0b 40 00       	mov    $0x400b69,%edi
  400895:	31 c0                	xor    %eax,%eax
  400897:	e8 d4 fc ff ff       	callq  400570 <printf@plt>
  40089c:	48 85 db             	test   %rbx,%rbx
  40089f:	74 30                	je     4008d1 <print+0x71>
  4008a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008a8:	0f 1f 84 00 00 00 00 
  4008af:	00 
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf 85 0b 40 00       	mov    $0x400b85,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 a8 fc ff ff       	callq  400570 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <print+0x50>
  4008d1:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008d6:	5b                   	pop    %rbx
  4008d7:	e9 74 fc ff ff       	jmpq   400550 <putchar@plt>
  4008dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008e0 <main>:
  4008e0:	41 57                	push   %r15
  4008e2:	41 56                	push   %r14
  4008e4:	41 54                	push   %r12
  4008e6:	53                   	push   %rbx
  4008e7:	48 83 ec 18          	sub    $0x18,%rsp
  4008eb:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  4008f0:	e8 6b fc ff ff       	callq  400560 <puts@plt>
  4008f5:	bf 50 0c 40 00       	mov    $0x400c50,%edi
  4008fa:	e8 61 fc ff ff       	callq  400560 <puts@plt>
  4008ff:	e8 ec fd ff ff       	callq  4006f0 <creat>
  400904:	49 89 c4             	mov    %rax,%r12
  400907:	4c 89 e7             	mov    %r12,%rdi
  40090a:	e8 51 ff ff ff       	callq  400860 <print>
  40090f:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400914:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400920:	bf f0 0b 40 00       	mov    $0x400bf0,%edi
  400925:	e8 36 fc ff ff       	callq  400560 <puts@plt>
  40092a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400931:	ff 
  400932:	bf 91 0b 40 00       	mov    $0x400b91,%edi
  400937:	31 c0                	xor    %eax,%eax
  400939:	e8 32 fc ff ff       	callq  400570 <printf@plt>
  40093e:	bf a1 0b 40 00       	mov    $0x400ba1,%edi
  400943:	31 c0                	xor    %eax,%eax
  400945:	4c 89 f6             	mov    %r14,%rsi
  400948:	e8 43 fc ff ff       	callq  400590 <__isoc99_scanf@plt>
  40094d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400951:	83 f8 02             	cmp    $0x2,%eax
  400954:	0f 84 86 00 00 00    	je     4009e0 <main+0x100>
  40095a:	83 f8 01             	cmp    $0x1,%eax
  40095d:	0f 85 3c 01 00 00    	jne    400a9f <main+0x1bf>
  400963:	bf a4 0b 40 00       	mov    $0x400ba4,%edi
  400968:	31 c0                	xor    %eax,%eax
  40096a:	e8 01 fc ff ff       	callq  400570 <printf@plt>
  40096f:	bf 18 00 00 00       	mov    $0x18,%edi
  400974:	e8 07 fc ff ff       	callq  400580 <malloc@plt>
  400979:	48 89 c3             	mov    %rax,%rbx
  40097c:	bf 48 0b 40 00       	mov    $0x400b48,%edi
  400981:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400985:	31 c0                	xor    %eax,%eax
  400987:	48 89 de             	mov    %rbx,%rsi
  40098a:	e8 01 fc ff ff       	callq  400590 <__isoc99_scanf@plt>
  40098f:	4d 85 e4             	test   %r12,%r12
  400992:	0f 84 a8 00 00 00    	je     400a40 <main+0x160>
  400998:	48 8b 33             	mov    (%rbx),%rsi
  40099b:	4c 89 e0             	mov    %r12,%rax
  40099e:	49 3b 34 24          	cmp    (%r12),%rsi
  4009a2:	0f 8e a8 00 00 00    	jle    400a50 <main+0x170>
  4009a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009af:	00 
  4009b0:	48 89 c1             	mov    %rax,%rcx
  4009b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009b7:	48 85 c0             	test   %rax,%rax
  4009ba:	0f 84 ad 00 00 00    	je     400a6d <main+0x18d>
  4009c0:	48 3b 30             	cmp    (%rax),%rsi
  4009c3:	7f eb                	jg     4009b0 <main+0xd0>
  4009c5:	4c 39 e0             	cmp    %r12,%rax
  4009c8:	0f 84 82 00 00 00    	je     400a50 <main+0x170>
  4009ce:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009d2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4009d6:	e9 a5 00 00 00       	jmpq   400a80 <main+0x1a0>
  4009db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009e0:	bf cf 0b 40 00       	mov    $0x400bcf,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 84 fb ff ff       	callq  400570 <printf@plt>
  4009ec:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	4c 89 fe             	mov    %r15,%rsi
  4009f6:	e8 95 fb ff ff       	callq  400590 <__isoc99_scanf@plt>
  4009fb:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  400a00:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  400a05:	49 39 14 24          	cmp    %rdx,(%r12)
  400a09:	4c 89 e1             	mov    %r12,%rcx
  400a0c:	74 16                	je     400a24 <main+0x144>
  400a0e:	66 90                	xchg   %ax,%ax
  400a10:	48 89 c8             	mov    %rcx,%rax
  400a13:	48 89 d9             	mov    %rbx,%rcx
  400a16:	48 85 c9             	test   %rcx,%rcx
  400a19:	74 19                	je     400a34 <main+0x154>
  400a1b:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  400a1f:	48 39 11             	cmp    %rdx,(%rcx)
  400a22:	75 ec                	jne    400a10 <main+0x130>
  400a24:	48 85 db             	test   %rbx,%rbx
  400a27:	74 0b                	je     400a34 <main+0x154>
  400a29:	4c 39 e1             	cmp    %r12,%rcx
  400a2c:	74 2b                	je     400a59 <main+0x179>
  400a2e:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400a32:	eb 30                	jmp    400a64 <main+0x184>
  400a34:	bf e5 0b 40 00       	mov    $0x400be5,%edi
  400a39:	e8 22 fb ff ff       	callq  400560 <puts@plt>
  400a3e:	eb 53                	jmp    400a93 <main+0x1b3>
  400a40:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a47:	00 
  400a48:	48 8b 33             	mov    (%rbx),%rsi
  400a4b:	49 89 dc             	mov    %rbx,%r12
  400a4e:	eb 30                	jmp    400a80 <main+0x1a0>
  400a50:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400a54:	49 89 dc             	mov    %rbx,%r12
  400a57:	eb 27                	jmp    400a80 <main+0x1a0>
  400a59:	4c 89 e7             	mov    %r12,%rdi
  400a5c:	e8 df fa ff ff       	callq  400540 <free@plt>
  400a61:	49 89 dc             	mov    %rbx,%r12
  400a64:	83 05 f1 15 20 00 ff 	addl   $0xffffffff,0x2015f1(%rip)        # 60205c <n>
  400a6b:	eb 26                	jmp    400a93 <main+0x1b3>
  400a6d:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a71:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a78:	00 
  400a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a80:	83 05 d5 15 20 00 01 	addl   $0x1,0x2015d5(%rip)        # 60205c <n>
  400a87:	bf c0 0b 40 00       	mov    $0x400bc0,%edi
  400a8c:	31 c0                	xor    %eax,%eax
  400a8e:	e8 dd fa ff ff       	callq  400570 <printf@plt>
  400a93:	4c 89 e7             	mov    %r12,%rdi
  400a96:	e8 c5 fd ff ff       	callq  400860 <print>
  400a9b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400a9f:	85 c0                	test   %eax,%eax
  400aa1:	0f 85 79 fe ff ff    	jne    400920 <main+0x40>
  400aa7:	31 c0                	xor    %eax,%eax
  400aa9:	48 83 c4 18          	add    $0x18,%rsp
  400aad:	5b                   	pop    %rbx
  400aae:	41 5c                	pop    %r12
  400ab0:	41 5e                	pop    %r14
  400ab2:	41 5f                	pop    %r15
  400ab4:	c3                   	retq   
  400ab5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400abc:	00 00 00 
  400abf:	90                   	nop

0000000000400ac0 <__libc_csu_init>:
  400ac0:	41 57                	push   %r15
  400ac2:	41 56                	push   %r14
  400ac4:	49 89 d7             	mov    %rdx,%r15
  400ac7:	41 55                	push   %r13
  400ac9:	41 54                	push   %r12
  400acb:	4c 8d 25 2e 13 20 00 	lea    0x20132e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ad2:	55                   	push   %rbp
  400ad3:	48 8d 2d 2e 13 20 00 	lea    0x20132e(%rip),%rbp        # 601e08 <__init_array_end>
  400ada:	53                   	push   %rbx
  400adb:	41 89 fd             	mov    %edi,%r13d
  400ade:	49 89 f6             	mov    %rsi,%r14
  400ae1:	4c 29 e5             	sub    %r12,%rbp
  400ae4:	48 83 ec 08          	sub    $0x8,%rsp
  400ae8:	48 c1 fd 03          	sar    $0x3,%rbp
  400aec:	e8 27 fa ff ff       	callq  400518 <_init>
  400af1:	48 85 ed             	test   %rbp,%rbp
  400af4:	74 20                	je     400b16 <__libc_csu_init+0x56>
  400af6:	31 db                	xor    %ebx,%ebx
  400af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aff:	00 
  400b00:	4c 89 fa             	mov    %r15,%rdx
  400b03:	4c 89 f6             	mov    %r14,%rsi
  400b06:	44 89 ef             	mov    %r13d,%edi
  400b09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b0d:	48 83 c3 01          	add    $0x1,%rbx
  400b11:	48 39 dd             	cmp    %rbx,%rbp
  400b14:	75 ea                	jne    400b00 <__libc_csu_init+0x40>
  400b16:	48 83 c4 08          	add    $0x8,%rsp
  400b1a:	5b                   	pop    %rbx
  400b1b:	5d                   	pop    %rbp
  400b1c:	41 5c                	pop    %r12
  400b1e:	41 5d                	pop    %r13
  400b20:	41 5e                	pop    %r14
  400b22:	41 5f                	pop    %r15
  400b24:	c3                   	retq   
  400b25:	90                   	nop
  400b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b2d:	00 00 00 

0000000000400b30 <__libc_csu_fini>:
  400b30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b34 <_fini>:
  400b34:	48 83 ec 08          	sub    $0x8,%rsp
  400b38:	48 83 c4 08          	add    $0x8,%rsp
  400b3c:	c3                   	retq   
