
c/19020031109_2.elf:     file format elf64-x86-64


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

0000000000400590 <_IO_putc@plt>:
  400590:	ff 25 9a 1a 20 00    	jmpq   *0x201a9a(%rip)        # 602030 <_IO_putc@GLIBC_2.2.5>
  400596:	68 03 00 00 00       	pushq  $0x3
  40059b:	e9 b0 ff ff ff       	jmpq   400550 <.plt>

00000000004005a0 <malloc@plt>:
  4005a0:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602038 <malloc@GLIBC_2.2.5>
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
  4005cf:	49 c7 c0 90 0c 40 00 	mov    $0x400c90,%r8
  4005d6:	48 c7 c1 20 0c 40 00 	mov    $0x400c20,%rcx
  4005dd:	48 c7 c7 e0 08 40 00 	mov    $0x4008e0,%rdi
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
  400670:	80 3d e9 19 20 00 00 	cmpb   $0x0,0x2019e9(%rip)        # 602060 <completed.7698>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 d7 19 20 00 01 	movb   $0x1,0x2019d7(%rip)        # 602060 <completed.7698>
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
  4006bb:	7e 23                	jle    4006e0 <insert+0x30>
  4006bd:	48 89 f8             	mov    %rdi,%rax
  4006c0:	48 89 c2             	mov    %rax,%rdx
  4006c3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 29                	je     4006f5 <insert+0x45>
  4006cc:	48 3b 08             	cmp    (%rax),%rcx
  4006cf:	7f ef                	jg     4006c0 <insert+0x10>
  4006d1:	48 39 f8             	cmp    %rdi,%rax
  4006d4:	74 0d                	je     4006e3 <insert+0x33>
  4006d6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006da:	eb 0a                	jmp    4006e6 <insert+0x36>
  4006dc:	31 c0                	xor    %eax,%eax
  4006de:	eb 03                	jmp    4006e3 <insert+0x33>
  4006e0:	48 89 f8             	mov    %rdi,%rax
  4006e3:	48 89 f7             	mov    %rsi,%rdi
  4006e6:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4006ea:	83 05 73 19 20 00 01 	addl   $0x1,0x201973(%rip)        # 602064 <n>
  4006f1:	48 89 f8             	mov    %rdi,%rax
  4006f4:	c3                   	retq   
  4006f5:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006f9:	31 c0                	xor    %eax,%eax
  4006fb:	eb e9                	jmp    4006e6 <insert+0x36>
  4006fd:	0f 1f 00             	nopl   (%rax)

0000000000400700 <create>:
  400700:	41 56                	push   %r14
  400702:	53                   	push   %rbx
  400703:	50                   	push   %rax
  400704:	bf 18 00 00 00       	mov    $0x18,%edi
  400709:	e8 92 fe ff ff       	callq  4005a0 <malloc@plt>
  40070e:	48 89 c3             	mov    %rax,%rbx
  400711:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400715:	45 31 f6             	xor    %r14d,%r14d
  400718:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
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
  400794:	83 05 c9 18 20 00 01 	addl   $0x1,0x2018c9(%rip)        # 602064 <n>
  40079b:	bf 18 00 00 00       	mov    $0x18,%edi
  4007a0:	e8 fb fd ff ff       	callq  4005a0 <malloc@plt>
  4007a5:	48 89 c3             	mov    %rax,%rbx
  4007a8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ac:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
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

00000000004007e0 <del>:
  4007e0:	41 56                	push   %r14
  4007e2:	53                   	push   %rbx
  4007e3:	50                   	push   %rax
  4007e4:	49 89 fe             	mov    %rdi,%r14
  4007e7:	4d 85 f6             	test   %r14,%r14
  4007ea:	74 3f                	je     40082b <del+0x4b>
  4007ec:	49 8b 06             	mov    (%r14),%rax
  4007ef:	48 39 f0             	cmp    %rsi,%rax
  4007f2:	7d 46                	jge    40083a <del+0x5a>
  4007f4:	4c 89 f3             	mov    %r14,%rbx
  4007f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007fe:	00 00 
  400800:	48 89 d9             	mov    %rbx,%rcx
  400803:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  400807:	48 85 db             	test   %rbx,%rbx
  40080a:	74 42                	je     40084e <del+0x6e>
  40080c:	48 8b 03             	mov    (%rbx),%rax
  40080f:	48 89 ca             	mov    %rcx,%rdx
  400812:	48 39 f0             	cmp    %rsi,%rax
  400815:	7c e9                	jl     400800 <del+0x20>
  400817:	48 39 f0             	cmp    %rsi,%rax
  40081a:	75 26                	jne    400842 <del+0x62>
  40081c:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400820:	4c 39 f3             	cmp    %r14,%rbx
  400823:	74 36                	je     40085b <del+0x7b>
  400825:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400829:	eb 33                	jmp    40085e <del+0x7e>
  40082b:	bf 4b 0d 40 00       	mov    $0x400d4b,%edi
  400830:	e8 3b fd ff ff       	callq  400570 <puts@plt>
  400835:	45 31 f6             	xor    %r14d,%r14d
  400838:	eb 3f                	jmp    400879 <del+0x99>
  40083a:	4c 89 f3             	mov    %r14,%rbx
  40083d:	48 39 f0             	cmp    %rsi,%rax
  400840:	74 da                	je     40081c <del+0x3c>
  400842:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400847:	e8 24 fd ff ff       	callq  400570 <puts@plt>
  40084c:	eb 2b                	jmp    400879 <del+0x99>
  40084e:	48 89 cb             	mov    %rcx,%rbx
  400851:	48 89 d1             	mov    %rdx,%rcx
  400854:	48 39 f0             	cmp    %rsi,%rax
  400857:	74 c3                	je     40081c <del+0x3c>
  400859:	eb e7                	jmp    400842 <del+0x62>
  40085b:	49 89 c6             	mov    %rax,%r14
  40085e:	bf ab 0c 40 00       	mov    $0x400cab,%edi
  400863:	31 c0                	xor    %eax,%eax
  400865:	e8 16 fd ff ff       	callq  400580 <printf@plt>
  40086a:	48 89 df             	mov    %rbx,%rdi
  40086d:	e8 ee fc ff ff       	callq  400560 <free@plt>
  400872:	83 05 eb 17 20 00 ff 	addl   $0xffffffff,0x2017eb(%rip)        # 602064 <n>
  400879:	4c 89 f0             	mov    %r14,%rax
  40087c:	48 83 c4 08          	add    $0x8,%rsp
  400880:	5b                   	pop    %rbx
  400881:	41 5e                	pop    %r14
  400883:	c3                   	retq   
  400884:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088b:	00 00 00 00 00 

0000000000400890 <print>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	8b 35 ca 17 20 00    	mov    0x2017ca(%rip),%esi        # 602064 <n>
  40089a:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  40089f:	31 c0                	xor    %eax,%eax
  4008a1:	e8 da fc ff ff       	callq  400580 <printf@plt>
  4008a6:	48 85 db             	test   %rbx,%rbx
  4008a9:	74 26                	je     4008d1 <print+0x41>
  4008ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf dd 0c 40 00       	mov    $0x400cdd,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 b8 fc ff ff       	callq  400580 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <print+0x20>
  4008d1:	5b                   	pop    %rbx
  4008d2:	c3                   	retq   
  4008d3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008da:	84 00 00 00 00 00 

00000000004008e0 <main>:
  4008e0:	41 57                	push   %r15
  4008e2:	41 56                	push   %r14
  4008e4:	41 54                	push   %r12
  4008e6:	53                   	push   %rbx
  4008e7:	48 83 ec 18          	sub    $0x18,%rsp
  4008eb:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  4008f0:	e8 7b fc ff ff       	callq  400570 <puts@plt>
  4008f5:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  4008fa:	e8 71 fc ff ff       	callq  400570 <puts@plt>
  4008ff:	e8 fc fd ff ff       	callq  400700 <create>
  400904:	49 89 c4             	mov    %rax,%r12
  400907:	8b 35 57 17 20 00    	mov    0x201757(%rip),%esi        # 602064 <n>
  40090d:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400912:	31 c0                	xor    %eax,%eax
  400914:	e8 67 fc ff ff       	callq  400580 <printf@plt>
  400919:	4d 85 e4             	test   %r12,%r12
  40091c:	74 33                	je     400951 <main+0x71>
  40091e:	4c 89 e3             	mov    %r12,%rbx
  400921:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400928:	0f 1f 84 00 00 00 00 
  40092f:	00 
  400930:	48 8b 33             	mov    (%rbx),%rsi
  400933:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400938:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40093c:	bf dd 0c 40 00       	mov    $0x400cdd,%edi
  400941:	b0 01                	mov    $0x1,%al
  400943:	e8 38 fc ff ff       	callq  400580 <printf@plt>
  400948:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40094c:	48 85 db             	test   %rbx,%rbx
  40094f:	75 df                	jne    400930 <main+0x50>
  400951:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400956:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  40095b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400960:	48 8b 35 f1 16 20 00 	mov    0x2016f1(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400967:	bf 0a 00 00 00       	mov    $0xa,%edi
  40096c:	e8 1f fc ff ff       	callq  400590 <_IO_putc@plt>
  400971:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400976:	e8 f5 fb ff ff       	callq  400570 <puts@plt>
  40097b:	bf e8 0c 40 00       	mov    $0x400ce8,%edi
  400980:	31 c0                	xor    %eax,%eax
  400982:	e8 f9 fb ff ff       	callq  400580 <printf@plt>
  400987:	bf f8 0c 40 00       	mov    $0x400cf8,%edi
  40098c:	31 c0                	xor    %eax,%eax
  40098e:	4c 89 f6             	mov    %r14,%rsi
  400991:	e8 1a fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400996:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40099a:	83 f8 02             	cmp    $0x2,%eax
  40099d:	0f 84 8d 00 00 00    	je     400a30 <main+0x150>
  4009a3:	83 f8 01             	cmp    $0x1,%eax
  4009a6:	0f 85 5b 02 00 00    	jne    400c07 <main+0x327>
  4009ac:	bf fb 0c 40 00       	mov    $0x400cfb,%edi
  4009b1:	31 c0                	xor    %eax,%eax
  4009b3:	e8 c8 fb ff ff       	callq  400580 <printf@plt>
  4009b8:	bf 18 00 00 00       	mov    $0x18,%edi
  4009bd:	e8 de fb ff ff       	callq  4005a0 <malloc@plt>
  4009c2:	48 89 c3             	mov    %rax,%rbx
  4009c5:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4009ca:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009ce:	31 c0                	xor    %eax,%eax
  4009d0:	48 89 de             	mov    %rbx,%rsi
  4009d3:	e8 d8 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009d8:	4d 85 e4             	test   %r12,%r12
  4009db:	0f 84 c5 00 00 00    	je     400aa6 <main+0x1c6>
  4009e1:	48 8b 33             	mov    (%rbx),%rsi
  4009e4:	4c 89 e0             	mov    %r12,%rax
  4009e7:	49 3b 34 24          	cmp    (%r12),%rsi
  4009eb:	0f 8e e6 00 00 00    	jle    400ad7 <main+0x1f7>
  4009f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009f8:	0f 1f 84 00 00 00 00 
  4009ff:	00 
  400a00:	48 89 c1             	mov    %rax,%rcx
  400a03:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a07:	48 85 c0             	test   %rax,%rax
  400a0a:	0f 84 f0 00 00 00    	je     400b00 <main+0x220>
  400a10:	48 3b 30             	cmp    (%rax),%rsi
  400a13:	7f eb                	jg     400a00 <main+0x120>
  400a15:	4c 39 e0             	cmp    %r12,%rax
  400a18:	0f 84 b9 00 00 00    	je     400ad7 <main+0x1f7>
  400a1e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a22:	e9 b6 00 00 00       	jmpq   400add <main+0x1fd>
  400a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a2e:	00 00 
  400a30:	bf 32 0d 40 00       	mov    $0x400d32,%edi
  400a35:	31 c0                	xor    %eax,%eax
  400a37:	e8 44 fb ff ff       	callq  400580 <printf@plt>
  400a3c:	bf 47 0d 40 00       	mov    $0x400d47,%edi
  400a41:	31 c0                	xor    %eax,%eax
  400a43:	4c 89 fe             	mov    %r15,%rsi
  400a46:	e8 65 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a4b:	4d 85 e4             	test   %r12,%r12
  400a4e:	74 66                	je     400ab6 <main+0x1d6>
  400a50:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a55:	49 8b 04 24          	mov    (%r12),%rax
  400a59:	48 39 f0             	cmp    %rsi,%rax
  400a5c:	0f 8d 81 00 00 00    	jge    400ae3 <main+0x203>
  400a62:	4c 89 e3             	mov    %r12,%rbx
  400a65:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a6c:	00 00 00 00 
  400a70:	48 89 d9             	mov    %rbx,%rcx
  400a73:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  400a77:	48 85 db             	test   %rbx,%rbx
  400a7a:	0f 84 f6 00 00 00    	je     400b76 <main+0x296>
  400a80:	48 8b 03             	mov    (%rbx),%rax
  400a83:	48 89 ca             	mov    %rcx,%rdx
  400a86:	48 39 f0             	cmp    %rsi,%rax
  400a89:	7c e5                	jl     400a70 <main+0x190>
  400a8b:	48 39 f0             	cmp    %rsi,%rax
  400a8e:	75 5b                	jne    400aeb <main+0x20b>
  400a90:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400a94:	4c 39 e3             	cmp    %r12,%rbx
  400a97:	0f 84 ed 00 00 00    	je     400b8a <main+0x2aa>
  400a9d:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400aa1:	e9 e7 00 00 00       	jmpq   400b8d <main+0x2ad>
  400aa6:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aad:	00 
  400aae:	48 8b 33             	mov    (%rbx),%rsi
  400ab1:	49 89 dc             	mov    %rbx,%r12
  400ab4:	eb 5a                	jmp    400b10 <main+0x230>
  400ab6:	bf 4b 0d 40 00       	mov    $0x400d4b,%edi
  400abb:	e8 b0 fa ff ff       	callq  400570 <puts@plt>
  400ac0:	8b 35 9e 15 20 00    	mov    0x20159e(%rip),%esi        # 602064 <n>
  400ac6:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400acb:	31 c0                	xor    %eax,%eax
  400acd:	e8 ae fa ff ff       	callq  400580 <printf@plt>
  400ad2:	e9 29 01 00 00       	jmpq   400c00 <main+0x320>
  400ad7:	4c 89 e0             	mov    %r12,%rax
  400ada:	49 89 dc             	mov    %rbx,%r12
  400add:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400ae1:	eb 2d                	jmp    400b10 <main+0x230>
  400ae3:	4c 89 e3             	mov    %r12,%rbx
  400ae6:	48 39 f0             	cmp    %rsi,%rax
  400ae9:	74 a5                	je     400a90 <main+0x1b0>
  400aeb:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400af0:	e8 7b fa ff ff       	callq  400570 <puts@plt>
  400af5:	8b 35 69 15 20 00    	mov    0x201569(%rip),%esi        # 602064 <n>
  400afb:	e9 b0 00 00 00       	jmpq   400bb0 <main+0x2d0>
  400b00:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b04:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400b0b:	00 
  400b0c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b10:	83 05 4d 15 20 00 01 	addl   $0x1,0x20154d(%rip)        # 602064 <n>
  400b17:	bf 1c 0d 40 00       	mov    $0x400d1c,%edi
  400b1c:	31 c0                	xor    %eax,%eax
  400b1e:	e8 5d fa ff ff       	callq  400580 <printf@plt>
  400b23:	8b 35 3b 15 20 00    	mov    0x20153b(%rip),%esi        # 602064 <n>
  400b29:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400b2e:	31 c0                	xor    %eax,%eax
  400b30:	e8 4b fa ff ff       	callq  400580 <printf@plt>
  400b35:	4d 85 e4             	test   %r12,%r12
  400b38:	0f 84 c2 00 00 00    	je     400c00 <main+0x320>
  400b3e:	4c 89 e3             	mov    %r12,%rbx
  400b41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b48:	0f 1f 84 00 00 00 00 
  400b4f:	00 
  400b50:	48 8b 33             	mov    (%rbx),%rsi
  400b53:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b58:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b5c:	bf dd 0c 40 00       	mov    $0x400cdd,%edi
  400b61:	b0 01                	mov    $0x1,%al
  400b63:	e8 18 fa ff ff       	callq  400580 <printf@plt>
  400b68:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b6c:	48 85 db             	test   %rbx,%rbx
  400b6f:	75 df                	jne    400b50 <main+0x270>
  400b71:	e9 8d 00 00 00       	jmpq   400c03 <main+0x323>
  400b76:	48 89 cb             	mov    %rcx,%rbx
  400b79:	48 89 d1             	mov    %rdx,%rcx
  400b7c:	48 39 f0             	cmp    %rsi,%rax
  400b7f:	0f 84 0b ff ff ff    	je     400a90 <main+0x1b0>
  400b85:	e9 61 ff ff ff       	jmpq   400aeb <main+0x20b>
  400b8a:	49 89 c4             	mov    %rax,%r12
  400b8d:	bf ab 0c 40 00       	mov    $0x400cab,%edi
  400b92:	31 c0                	xor    %eax,%eax
  400b94:	e8 e7 f9 ff ff       	callq  400580 <printf@plt>
  400b99:	48 89 df             	mov    %rbx,%rdi
  400b9c:	e8 bf f9 ff ff       	callq  400560 <free@plt>
  400ba1:	8b 35 bd 14 20 00    	mov    0x2014bd(%rip),%esi        # 602064 <n>
  400ba7:	83 c6 ff             	add    $0xffffffff,%esi
  400baa:	89 35 b4 14 20 00    	mov    %esi,0x2014b4(%rip)        # 602064 <n>
  400bb0:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400bb5:	31 c0                	xor    %eax,%eax
  400bb7:	e8 c4 f9 ff ff       	callq  400580 <printf@plt>
  400bbc:	4d 85 e4             	test   %r12,%r12
  400bbf:	74 3f                	je     400c00 <main+0x320>
  400bc1:	4c 89 e3             	mov    %r12,%rbx
  400bc4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bcb:	00 00 00 00 00 
  400bd0:	48 8b 33             	mov    (%rbx),%rsi
  400bd3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bd8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bdc:	bf dd 0c 40 00       	mov    $0x400cdd,%edi
  400be1:	b0 01                	mov    $0x1,%al
  400be3:	e8 98 f9 ff ff       	callq  400580 <printf@plt>
  400be8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bec:	48 85 db             	test   %rbx,%rbx
  400bef:	75 df                	jne    400bd0 <main+0x2f0>
  400bf1:	eb 10                	jmp    400c03 <main+0x323>
  400bf3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bfa:	84 00 00 00 00 00 
  400c00:	45 31 e4             	xor    %r12d,%r12d
  400c03:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400c07:	85 c0                	test   %eax,%eax
  400c09:	0f 85 51 fd ff ff    	jne    400960 <main+0x80>
  400c0f:	31 c0                	xor    %eax,%eax
  400c11:	48 83 c4 18          	add    $0x18,%rsp
  400c15:	5b                   	pop    %rbx
  400c16:	41 5c                	pop    %r12
  400c18:	41 5e                	pop    %r14
  400c1a:	41 5f                	pop    %r15
  400c1c:	c3                   	retq   
  400c1d:	0f 1f 00             	nopl   (%rax)

0000000000400c20 <__libc_csu_init>:
  400c20:	41 57                	push   %r15
  400c22:	41 56                	push   %r14
  400c24:	49 89 d7             	mov    %rdx,%r15
  400c27:	41 55                	push   %r13
  400c29:	41 54                	push   %r12
  400c2b:	4c 8d 25 ce 11 20 00 	lea    0x2011ce(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c32:	55                   	push   %rbp
  400c33:	48 8d 2d ce 11 20 00 	lea    0x2011ce(%rip),%rbp        # 601e08 <__init_array_end>
  400c3a:	53                   	push   %rbx
  400c3b:	41 89 fd             	mov    %edi,%r13d
  400c3e:	49 89 f6             	mov    %rsi,%r14
  400c41:	4c 29 e5             	sub    %r12,%rbp
  400c44:	48 83 ec 08          	sub    $0x8,%rsp
  400c48:	48 c1 fd 03          	sar    $0x3,%rbp
  400c4c:	e8 df f8 ff ff       	callq  400530 <_init>
  400c51:	48 85 ed             	test   %rbp,%rbp
  400c54:	74 20                	je     400c76 <__libc_csu_init+0x56>
  400c56:	31 db                	xor    %ebx,%ebx
  400c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c5f:	00 
  400c60:	4c 89 fa             	mov    %r15,%rdx
  400c63:	4c 89 f6             	mov    %r14,%rsi
  400c66:	44 89 ef             	mov    %r13d,%edi
  400c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c6d:	48 83 c3 01          	add    $0x1,%rbx
  400c71:	48 39 dd             	cmp    %rbx,%rbp
  400c74:	75 ea                	jne    400c60 <__libc_csu_init+0x40>
  400c76:	48 83 c4 08          	add    $0x8,%rsp
  400c7a:	5b                   	pop    %rbx
  400c7b:	5d                   	pop    %rbp
  400c7c:	41 5c                	pop    %r12
  400c7e:	41 5d                	pop    %r13
  400c80:	41 5e                	pop    %r14
  400c82:	41 5f                	pop    %r15
  400c84:	c3                   	retq   
  400c85:	90                   	nop
  400c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c8d:	00 00 00 

0000000000400c90 <__libc_csu_fini>:
  400c90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c94 <_fini>:
  400c94:	48 83 ec 08          	sub    $0x8,%rsp
  400c98:	48 83 c4 08          	add    $0x8,%rsp
  400c9c:	c3                   	retq   
