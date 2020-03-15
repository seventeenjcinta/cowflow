
c/19020031099_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 f0 0b 40 00 	mov    $0x400bf0,%r8
  4005d6:	48 c7 c1 80 0b 40 00 	mov    $0x400b80,%rcx
  4005dd:	48 c7 c7 a0 08 40 00 	mov    $0x4008a0,%rdi
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

00000000004006b0 <del>:
  4006b0:	53                   	push   %rbx
  4006b1:	48 89 fb             	mov    %rdi,%rbx
  4006b4:	48 85 db             	test   %rbx,%rbx
  4006b7:	74 0e                	je     4006c7 <del+0x17>
  4006b9:	48 39 33             	cmp    %rsi,(%rbx)
  4006bc:	75 17                	jne    4006d5 <del+0x25>
  4006be:	48 89 df             	mov    %rbx,%rdi
  4006c1:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006c5:	eb 48                	jmp    40070f <del+0x5f>
  4006c7:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  4006cc:	e8 9f fe ff ff       	callq  400570 <puts@plt>
  4006d1:	31 db                	xor    %ebx,%ebx
  4006d3:	eb 46                	jmp    40071b <del+0x6b>
  4006d5:	48 89 df             	mov    %rbx,%rdi
  4006d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006df:	00 
  4006e0:	48 89 f8             	mov    %rdi,%rax
  4006e3:	48 8b 78 10          	mov    0x10(%rax),%rdi
  4006e7:	48 85 ff             	test   %rdi,%rdi
  4006ea:	74 14                	je     400700 <del+0x50>
  4006ec:	48 39 37             	cmp    %rsi,(%rdi)
  4006ef:	75 ef                	jne    4006e0 <del+0x30>
  4006f1:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  4006f5:	48 39 df             	cmp    %rbx,%rdi
  4006f8:	74 12                	je     40070c <del+0x5c>
  4006fa:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4006fe:	eb 0f                	jmp    40070f <del+0x5f>
  400700:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  400705:	e8 66 fe ff ff       	callq  400570 <puts@plt>
  40070a:	eb 0f                	jmp    40071b <del+0x6b>
  40070c:	48 89 cb             	mov    %rcx,%rbx
  40070f:	e8 4c fe ff ff       	callq  400560 <free@plt>
  400714:	83 05 51 19 20 00 ff 	addl   $0xffffffff,0x201951(%rip)        # 60206c <n>
  40071b:	48 89 d8             	mov    %rbx,%rax
  40071e:	5b                   	pop    %rbx
  40071f:	c3                   	retq   

0000000000400720 <insert>:
  400720:	48 85 ff             	test   %rdi,%rdi
  400723:	74 27                	je     40074c <insert+0x2c>
  400725:	48 8b 0e             	mov    (%rsi),%rcx
  400728:	48 3b 0f             	cmp    (%rdi),%rcx
  40072b:	7e 23                	jle    400750 <insert+0x30>
  40072d:	48 89 f8             	mov    %rdi,%rax
  400730:	48 89 c2             	mov    %rax,%rdx
  400733:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400737:	48 85 c0             	test   %rax,%rax
  40073a:	74 29                	je     400765 <insert+0x45>
  40073c:	48 3b 08             	cmp    (%rax),%rcx
  40073f:	7f ef                	jg     400730 <insert+0x10>
  400741:	48 39 f8             	cmp    %rdi,%rax
  400744:	74 0d                	je     400753 <insert+0x33>
  400746:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40074a:	eb 0a                	jmp    400756 <insert+0x36>
  40074c:	31 c0                	xor    %eax,%eax
  40074e:	eb 03                	jmp    400753 <insert+0x33>
  400750:	48 89 f8             	mov    %rdi,%rax
  400753:	48 89 f7             	mov    %rsi,%rdi
  400756:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40075a:	83 05 0b 19 20 00 01 	addl   $0x1,0x20190b(%rip)        # 60206c <n>
  400761:	48 89 f8             	mov    %rdi,%rax
  400764:	c3                   	retq   
  400765:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400769:	31 c0                	xor    %eax,%eax
  40076b:	eb e9                	jmp    400756 <insert+0x36>
  40076d:	0f 1f 00             	nopl   (%rax)

0000000000400770 <create>:
  400770:	41 56                	push   %r14
  400772:	53                   	push   %rbx
  400773:	50                   	push   %rax
  400774:	bf 18 00 00 00       	mov    $0x18,%edi
  400779:	e8 12 fe ff ff       	callq  400590 <malloc@plt>
  40077e:	48 89 c3             	mov    %rax,%rbx
  400781:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400785:	45 31 f6             	xor    %r14d,%r14d
  400788:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  40078d:	31 c0                	xor    %eax,%eax
  40078f:	48 89 de             	mov    %rbx,%rsi
  400792:	e8 19 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400797:	48 8b 03             	mov    (%rbx),%rax
  40079a:	48 85 c0             	test   %rax,%rax
  40079d:	0f 84 94 00 00 00    	je     400837 <create+0xc7>
  4007a3:	45 31 f6             	xor    %r14d,%r14d
  4007a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007ad:	00 00 00 
  4007b0:	4d 85 f6             	test   %r14,%r14
  4007b3:	74 2b                	je     4007e0 <create+0x70>
  4007b5:	4c 89 f1             	mov    %r14,%rcx
  4007b8:	49 3b 06             	cmp    (%r14),%rax
  4007bb:	7e 33                	jle    4007f0 <create+0x80>
  4007bd:	0f 1f 00             	nopl   (%rax)
  4007c0:	48 89 ca             	mov    %rcx,%rdx
  4007c3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4007c7:	48 85 c9             	test   %rcx,%rcx
  4007ca:	74 2c                	je     4007f8 <create+0x88>
  4007cc:	48 3b 01             	cmp    (%rcx),%rax
  4007cf:	7f ef                	jg     4007c0 <create+0x50>
  4007d1:	4c 39 f1             	cmp    %r14,%rcx
  4007d4:	74 1a                	je     4007f0 <create+0x80>
  4007d6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007da:	eb 24                	jmp    400800 <create+0x90>
  4007dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4007e0:	31 c9                	xor    %ecx,%ecx
  4007e2:	49 89 de             	mov    %rbx,%r14
  4007e5:	eb 19                	jmp    400800 <create+0x90>
  4007e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ee:	00 00 
  4007f0:	4c 89 f1             	mov    %r14,%rcx
  4007f3:	49 89 de             	mov    %rbx,%r14
  4007f6:	eb 08                	jmp    400800 <create+0x90>
  4007f8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007fc:	31 c9                	xor    %ecx,%ecx
  4007fe:	66 90                	xchg   %ax,%ax
  400800:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400804:	83 05 61 18 20 00 01 	addl   $0x1,0x201861(%rip)        # 60206c <n>
  40080b:	bf 18 00 00 00       	mov    $0x18,%edi
  400810:	e8 7b fd ff ff       	callq  400590 <malloc@plt>
  400815:	48 89 c3             	mov    %rax,%rbx
  400818:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40081c:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  400821:	31 c0                	xor    %eax,%eax
  400823:	48 89 de             	mov    %rbx,%rsi
  400826:	e8 85 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40082b:	48 8b 03             	mov    (%rbx),%rax
  40082e:	48 85 c0             	test   %rax,%rax
  400831:	0f 85 79 ff ff ff    	jne    4007b0 <create+0x40>
  400837:	48 89 df             	mov    %rbx,%rdi
  40083a:	e8 21 fd ff ff       	callq  400560 <free@plt>
  40083f:	4c 89 f0             	mov    %r14,%rax
  400842:	48 83 c4 08          	add    $0x8,%rsp
  400846:	5b                   	pop    %rbx
  400847:	41 5e                	pop    %r14
  400849:	c3                   	retq   
  40084a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400850 <print>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400859:	e8 12 fd ff ff       	callq  400570 <puts@plt>
  40085e:	48 85 db             	test   %rbx,%rbx
  400861:	74 30                	je     400893 <print+0x43>
  400863:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40086a:	84 00 00 00 00 00 
  400870:	48 8b 33             	mov    (%rbx),%rsi
  400873:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400878:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40087c:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400881:	b0 01                	mov    $0x1,%al
  400883:	e8 f8 fc ff ff       	callq  400580 <printf@plt>
  400888:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40088c:	48 85 db             	test   %rbx,%rbx
  40088f:	75 df                	jne    400870 <print+0x20>
  400891:	5b                   	pop    %rbx
  400892:	c3                   	retq   
  400893:	bf 67 0c 40 00       	mov    $0x400c67,%edi
  400898:	5b                   	pop    %rbx
  400899:	e9 d2 fc ff ff       	jmpq   400570 <puts@plt>
  40089e:	66 90                	xchg   %ax,%ax

00000000004008a0 <main>:
  4008a0:	41 57                	push   %r15
  4008a2:	41 56                	push   %r14
  4008a4:	41 54                	push   %r12
  4008a6:	53                   	push   %rbx
  4008a7:	48 83 ec 18          	sub    $0x18,%rsp
  4008ab:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  4008b0:	e8 bb fc ff ff       	callq  400570 <puts@plt>
  4008b5:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  4008ba:	e8 b1 fc ff ff       	callq  400570 <puts@plt>
  4008bf:	e8 ac fe ff ff       	callq  400770 <create>
  4008c4:	49 89 c4             	mov    %rax,%r12
  4008c7:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  4008cc:	e8 9f fc ff ff       	callq  400570 <puts@plt>
  4008d1:	4d 85 e4             	test   %r12,%r12
  4008d4:	74 2d                	je     400903 <main+0x63>
  4008d6:	4c 89 e3             	mov    %r12,%rbx
  4008d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008e0:	48 8b 33             	mov    (%rbx),%rsi
  4008e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ec:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  4008f1:	b0 01                	mov    $0x1,%al
  4008f3:	e8 88 fc ff ff       	callq  400580 <printf@plt>
  4008f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008fc:	48 85 db             	test   %rbx,%rbx
  4008ff:	75 df                	jne    4008e0 <main+0x40>
  400901:	eb 0a                	jmp    40090d <main+0x6d>
  400903:	bf 67 0c 40 00       	mov    $0x400c67,%edi
  400908:	e8 63 fc ff ff       	callq  400570 <puts@plt>
  40090d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400912:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40091e:	00 00 
  400920:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400925:	e8 46 fc ff ff       	callq  400570 <puts@plt>
  40092a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400931:	ff 
  400932:	bf 15 0c 40 00       	mov    $0x400c15,%edi
  400937:	31 c0                	xor    %eax,%eax
  400939:	e8 42 fc ff ff       	callq  400580 <printf@plt>
  40093e:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  400943:	31 c0                	xor    %eax,%eax
  400945:	4c 89 f6             	mov    %r14,%rsi
  400948:	e8 63 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40094d:	48 8b 3d 0c 17 20 00 	mov    0x20170c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400954:	e8 47 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400959:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40095d:	83 f8 02             	cmp    $0x2,%eax
  400960:	74 7e                	je     4009e0 <main+0x140>
  400962:	83 f8 01             	cmp    $0x1,%eax
  400965:	0f 85 f6 01 00 00    	jne    400b61 <main+0x2c1>
  40096b:	bf 27 0c 40 00       	mov    $0x400c27,%edi
  400970:	31 c0                	xor    %eax,%eax
  400972:	e8 09 fc ff ff       	callq  400580 <printf@plt>
  400977:	bf 18 00 00 00       	mov    $0x18,%edi
  40097c:	e8 0f fc ff ff       	callq  400590 <malloc@plt>
  400981:	48 89 c3             	mov    %rax,%rbx
  400984:	bf 04 0c 40 00       	mov    $0x400c04,%edi
  400989:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40098d:	31 c0                	xor    %eax,%eax
  40098f:	48 89 de             	mov    %rbx,%rsi
  400992:	e8 19 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400997:	4d 85 e4             	test   %r12,%r12
  40099a:	0f 84 ab 00 00 00    	je     400a4b <main+0x1ab>
  4009a0:	48 8b 33             	mov    (%rbx),%rsi
  4009a3:	4c 89 e0             	mov    %r12,%rax
  4009a6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009aa:	0f 8e c4 00 00 00    	jle    400a74 <main+0x1d4>
  4009b0:	48 89 c1             	mov    %rax,%rcx
  4009b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009b7:	48 85 c0             	test   %rax,%rax
  4009ba:	0f 84 c0 00 00 00    	je     400a80 <main+0x1e0>
  4009c0:	48 3b 30             	cmp    (%rax),%rsi
  4009c3:	7f eb                	jg     4009b0 <main+0x110>
  4009c5:	4c 39 e0             	cmp    %r12,%rax
  4009c8:	0f 84 a6 00 00 00    	je     400a74 <main+0x1d4>
  4009ce:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009d2:	e9 a3 00 00 00       	jmpq   400a7a <main+0x1da>
  4009d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009de:	00 00 
  4009e0:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 94 fb ff ff       	callq  400580 <printf@plt>
  4009ec:	bf 63 0c 40 00       	mov    $0x400c63,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	4c 89 fe             	mov    %r15,%rsi
  4009f6:	e8 b5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009fb:	4d 85 e4             	test   %r12,%r12
  4009fe:	74 5b                	je     400a5b <main+0x1bb>
  400a00:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a05:	49 39 04 24          	cmp    %rax,(%r12)
  400a09:	4c 89 e7             	mov    %r12,%rdi
  400a0c:	75 12                	jne    400a20 <main+0x180>
  400a0e:	4c 89 e7             	mov    %r12,%rdi
  400a11:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a16:	e9 da 00 00 00       	jmpq   400af5 <main+0x255>
  400a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a20:	48 89 f9             	mov    %rdi,%rcx
  400a23:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a27:	48 85 ff             	test   %rdi,%rdi
  400a2a:	0f 84 b3 00 00 00    	je     400ae3 <main+0x243>
  400a30:	48 39 07             	cmp    %rax,(%rdi)
  400a33:	75 eb                	jne    400a20 <main+0x180>
  400a35:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a39:	4c 39 e7             	cmp    %r12,%rdi
  400a3c:	0f 84 ad 00 00 00    	je     400aef <main+0x24f>
  400a42:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400a46:	e9 aa 00 00 00       	jmpq   400af5 <main+0x255>
  400a4b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a52:	00 
  400a53:	48 8b 33             	mov    (%rbx),%rsi
  400a56:	49 89 dc             	mov    %rbx,%r12
  400a59:	eb 35                	jmp    400a90 <main+0x1f0>
  400a5b:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  400a60:	e8 0b fb ff ff       	callq  400570 <puts@plt>
  400a65:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400a6a:	e8 01 fb ff ff       	callq  400570 <puts@plt>
  400a6f:	e9 dc 00 00 00       	jmpq   400b50 <main+0x2b0>
  400a74:	4c 89 e0             	mov    %r12,%rax
  400a77:	49 89 dc             	mov    %rbx,%r12
  400a7a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a7e:	eb 10                	jmp    400a90 <main+0x1f0>
  400a80:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a84:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a8b:	00 
  400a8c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a90:	83 05 d5 15 20 00 01 	addl   $0x1,0x2015d5(%rip)        # 60206c <n>
  400a97:	bf 43 0c 40 00       	mov    $0x400c43,%edi
  400a9c:	31 c0                	xor    %eax,%eax
  400a9e:	e8 dd fa ff ff       	callq  400580 <printf@plt>
  400aa3:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400aa8:	e8 c3 fa ff ff       	callq  400570 <puts@plt>
  400aad:	4d 85 e4             	test   %r12,%r12
  400ab0:	0f 84 9a 00 00 00    	je     400b50 <main+0x2b0>
  400ab6:	4c 89 e3             	mov    %r12,%rbx
  400ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ac0:	48 8b 33             	mov    (%rbx),%rsi
  400ac3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ac8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400acc:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400ad1:	b0 01                	mov    $0x1,%al
  400ad3:	e8 a8 fa ff ff       	callq  400580 <printf@plt>
  400ad8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400adc:	48 85 db             	test   %rbx,%rbx
  400adf:	75 df                	jne    400ac0 <main+0x220>
  400ae1:	eb 7a                	jmp    400b5d <main+0x2bd>
  400ae3:	bf 70 0c 40 00       	mov    $0x400c70,%edi
  400ae8:	e8 83 fa ff ff       	callq  400570 <puts@plt>
  400aed:	eb 12                	jmp    400b01 <main+0x261>
  400aef:	4c 89 e7             	mov    %r12,%rdi
  400af2:	49 89 c4             	mov    %rax,%r12
  400af5:	e8 66 fa ff ff       	callq  400560 <free@plt>
  400afa:	83 05 6b 15 20 00 ff 	addl   $0xffffffff,0x20156b(%rip)        # 60206c <n>
  400b01:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400b06:	e8 65 fa ff ff       	callq  400570 <puts@plt>
  400b0b:	4d 85 e4             	test   %r12,%r12
  400b0e:	74 40                	je     400b50 <main+0x2b0>
  400b10:	4c 89 e3             	mov    %r12,%rbx
  400b13:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b1a:	84 00 00 00 00 00 
  400b20:	48 8b 33             	mov    (%rbx),%rsi
  400b23:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b28:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b2c:	bf 0b 0c 40 00       	mov    $0x400c0b,%edi
  400b31:	b0 01                	mov    $0x1,%al
  400b33:	e8 48 fa ff ff       	callq  400580 <printf@plt>
  400b38:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b3c:	48 85 db             	test   %rbx,%rbx
  400b3f:	75 df                	jne    400b20 <main+0x280>
  400b41:	eb 1a                	jmp    400b5d <main+0x2bd>
  400b43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b4a:	84 00 00 00 00 00 
  400b50:	bf 67 0c 40 00       	mov    $0x400c67,%edi
  400b55:	e8 16 fa ff ff       	callq  400570 <puts@plt>
  400b5a:	45 31 e4             	xor    %r12d,%r12d
  400b5d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b61:	85 c0                	test   %eax,%eax
  400b63:	0f 85 b7 fd ff ff    	jne    400920 <main+0x80>
  400b69:	31 c0                	xor    %eax,%eax
  400b6b:	48 83 c4 18          	add    $0x18,%rsp
  400b6f:	5b                   	pop    %rbx
  400b70:	41 5c                	pop    %r12
  400b72:	41 5e                	pop    %r14
  400b74:	41 5f                	pop    %r15
  400b76:	c3                   	retq   
  400b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b7e:	00 00 

0000000000400b80 <__libc_csu_init>:
  400b80:	41 57                	push   %r15
  400b82:	41 56                	push   %r14
  400b84:	49 89 d7             	mov    %rdx,%r15
  400b87:	41 55                	push   %r13
  400b89:	41 54                	push   %r12
  400b8b:	4c 8d 25 6e 12 20 00 	lea    0x20126e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b92:	55                   	push   %rbp
  400b93:	48 8d 2d 6e 12 20 00 	lea    0x20126e(%rip),%rbp        # 601e08 <__init_array_end>
  400b9a:	53                   	push   %rbx
  400b9b:	41 89 fd             	mov    %edi,%r13d
  400b9e:	49 89 f6             	mov    %rsi,%r14
  400ba1:	4c 29 e5             	sub    %r12,%rbp
  400ba4:	48 83 ec 08          	sub    $0x8,%rsp
  400ba8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bac:	e8 7f f9 ff ff       	callq  400530 <_init>
  400bb1:	48 85 ed             	test   %rbp,%rbp
  400bb4:	74 20                	je     400bd6 <__libc_csu_init+0x56>
  400bb6:	31 db                	xor    %ebx,%ebx
  400bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bbf:	00 
  400bc0:	4c 89 fa             	mov    %r15,%rdx
  400bc3:	4c 89 f6             	mov    %r14,%rsi
  400bc6:	44 89 ef             	mov    %r13d,%edi
  400bc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bcd:	48 83 c3 01          	add    $0x1,%rbx
  400bd1:	48 39 dd             	cmp    %rbx,%rbp
  400bd4:	75 ea                	jne    400bc0 <__libc_csu_init+0x40>
  400bd6:	48 83 c4 08          	add    $0x8,%rsp
  400bda:	5b                   	pop    %rbx
  400bdb:	5d                   	pop    %rbp
  400bdc:	41 5c                	pop    %r12
  400bde:	41 5d                	pop    %r13
  400be0:	41 5e                	pop    %r14
  400be2:	41 5f                	pop    %r15
  400be4:	c3                   	retq   
  400be5:	90                   	nop
  400be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bed:	00 00 00 

0000000000400bf0 <__libc_csu_fini>:
  400bf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400bf4 <_fini>:
  400bf4:	48 83 ec 08          	sub    $0x8,%rsp
  400bf8:	48 83 c4 08          	add    $0x8,%rsp
  400bfc:	c3                   	retq   
