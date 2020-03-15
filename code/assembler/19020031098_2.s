
c/19020031098_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 10 0c 40 00 	mov    $0x400c10,%r8
  4005d6:	48 c7 c1 a0 0b 40 00 	mov    $0x400ba0,%rcx
  4005dd:	48 c7 c7 c0 08 40 00 	mov    $0x4008c0,%rdi
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

00000000004006b0 <insert>:
  4006b0:	48 85 ff             	test   %rdi,%rdi
  4006b3:	74 27                	je     4006dc <insert+0x2c>
  4006b5:	48 8b 0e             	mov    (%rsi),%rcx
  4006b8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006bb:	7e 2b                	jle    4006e8 <insert+0x38>
  4006bd:	48 89 f8             	mov    %rdi,%rax
  4006c0:	48 89 c2             	mov    %rax,%rdx
  4006c3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 24                	je     4006f0 <insert+0x40>
  4006cc:	48 3b 08             	cmp    (%rax),%rcx
  4006cf:	7f ef                	jg     4006c0 <insert+0x10>
  4006d1:	48 39 f8             	cmp    %rdi,%rax
  4006d4:	74 12                	je     4006e8 <insert+0x38>
  4006d6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006da:	eb 1a                	jmp    4006f6 <insert+0x46>
  4006dc:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4006e3:	00 
  4006e4:	48 89 f0             	mov    %rsi,%rax
  4006e7:	c3                   	retq   
  4006e8:	48 89 f8             	mov    %rdi,%rax
  4006eb:	48 89 f7             	mov    %rsi,%rdi
  4006ee:	eb 06                	jmp    4006f6 <insert+0x46>
  4006f0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006f4:	31 c0                	xor    %eax,%eax
  4006f6:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4006fa:	83 05 6b 19 20 00 01 	addl   $0x1,0x20196b(%rip)        # 60206c <n>
  400701:	48 89 fe             	mov    %rdi,%rsi
  400704:	48 89 f0             	mov    %rsi,%rax
  400707:	c3                   	retq   
  400708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40070f:	00 

0000000000400710 <create>:
  400710:	41 56                	push   %r14
  400712:	53                   	push   %rbx
  400713:	50                   	push   %rax
  400714:	bf 18 00 00 00       	mov    $0x18,%edi
  400719:	e8 72 fe ff ff       	callq  400590 <malloc@plt>
  40071e:	48 89 c3             	mov    %rax,%rbx
  400721:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400725:	45 31 f6             	xor    %r14d,%r14d
  400728:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  40072d:	31 c0                	xor    %eax,%eax
  40072f:	48 89 de             	mov    %rbx,%rsi
  400732:	e8 79 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400737:	48 8b 03             	mov    (%rbx),%rax
  40073a:	48 85 c0             	test   %rax,%rax
  40073d:	0f 84 92 00 00 00    	je     4007d5 <create+0xc5>
  400743:	45 31 f6             	xor    %r14d,%r14d
  400746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40074d:	00 00 00 
  400750:	4d 85 f6             	test   %r14,%r14
  400753:	74 2b                	je     400780 <create+0x70>
  400755:	4c 89 f1             	mov    %r14,%rcx
  400758:	49 3b 06             	cmp    (%r14),%rax
  40075b:	7e 33                	jle    400790 <create+0x80>
  40075d:	0f 1f 00             	nopl   (%rax)
  400760:	48 89 ca             	mov    %rcx,%rdx
  400763:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400767:	48 85 c9             	test   %rcx,%rcx
  40076a:	74 2c                	je     400798 <create+0x88>
  40076c:	48 3b 01             	cmp    (%rcx),%rax
  40076f:	7f ef                	jg     400760 <create+0x50>
  400771:	4c 39 f1             	cmp    %r14,%rcx
  400774:	74 1a                	je     400790 <create+0x80>
  400776:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40077a:	eb 22                	jmp    40079e <create+0x8e>
  40077c:	0f 1f 40 00          	nopl   0x0(%rax)
  400780:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400787:	00 
  400788:	49 89 de             	mov    %rbx,%r14
  40078b:	eb 1c                	jmp    4007a9 <create+0x99>
  40078d:	0f 1f 00             	nopl   (%rax)
  400790:	4c 89 f1             	mov    %r14,%rcx
  400793:	49 89 de             	mov    %rbx,%r14
  400796:	eb 06                	jmp    40079e <create+0x8e>
  400798:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40079c:	31 c9                	xor    %ecx,%ecx
  40079e:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007a2:	83 05 c3 18 20 00 01 	addl   $0x1,0x2018c3(%rip)        # 60206c <n>
  4007a9:	bf 18 00 00 00       	mov    $0x18,%edi
  4007ae:	e8 dd fd ff ff       	callq  400590 <malloc@plt>
  4007b3:	48 89 c3             	mov    %rax,%rbx
  4007b6:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ba:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  4007bf:	31 c0                	xor    %eax,%eax
  4007c1:	48 89 de             	mov    %rbx,%rsi
  4007c4:	e8 e7 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007c9:	48 8b 03             	mov    (%rbx),%rax
  4007cc:	48 85 c0             	test   %rax,%rax
  4007cf:	0f 85 7b ff ff ff    	jne    400750 <create+0x40>
  4007d5:	48 89 df             	mov    %rbx,%rdi
  4007d8:	e8 83 fd ff ff       	callq  400560 <free@plt>
  4007dd:	4c 89 f0             	mov    %r14,%rax
  4007e0:	48 83 c4 08          	add    $0x8,%rsp
  4007e4:	5b                   	pop    %rbx
  4007e5:	41 5e                	pop    %r14
  4007e7:	c3                   	retq   
  4007e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007ef:	00 

00000000004007f0 <del>:
  4007f0:	53                   	push   %rbx
  4007f1:	48 89 fb             	mov    %rdi,%rbx
  4007f4:	48 85 db             	test   %rbx,%rbx
  4007f7:	74 0b                	je     400804 <del+0x14>
  4007f9:	48 39 33             	cmp    %rsi,(%rbx)
  4007fc:	75 16                	jne    400814 <del+0x24>
  4007fe:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400802:	eb 4b                	jmp    40084f <del+0x5f>
  400804:	31 db                	xor    %ebx,%ebx
  400806:	bf 2b 0c 40 00       	mov    $0x400c2b,%edi
  40080b:	31 c0                	xor    %eax,%eax
  40080d:	e8 6e fd ff ff       	callq  400580 <printf@plt>
  400812:	eb 4e                	jmp    400862 <del+0x72>
  400814:	48 89 d9             	mov    %rbx,%rcx
  400817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40081e:	00 00 
  400820:	48 89 c8             	mov    %rcx,%rax
  400823:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400827:	48 85 c9             	test   %rcx,%rcx
  40082a:	74 14                	je     400840 <del+0x50>
  40082c:	48 39 31             	cmp    %rsi,(%rcx)
  40082f:	75 ef                	jne    400820 <del+0x30>
  400831:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400835:	48 39 d9             	cmp    %rbx,%rcx
  400838:	74 12                	je     40084c <del+0x5c>
  40083a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40083e:	eb 0f                	jmp    40084f <del+0x5f>
  400840:	bf 99 0c 40 00       	mov    $0x400c99,%edi
  400845:	e8 26 fd ff ff       	callq  400570 <puts@plt>
  40084a:	eb 16                	jmp    400862 <del+0x72>
  40084c:	48 89 d3             	mov    %rdx,%rbx
  40084f:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  400854:	31 c0                	xor    %eax,%eax
  400856:	e8 25 fd ff ff       	callq  400580 <printf@plt>
  40085b:	83 05 0a 18 20 00 ff 	addl   $0xffffffff,0x20180a(%rip)        # 60206c <n>
  400862:	48 89 d8             	mov    %rbx,%rax
  400865:	5b                   	pop    %rbx
  400866:	c3                   	retq   
  400867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40086e:	00 00 

0000000000400870 <print>:
  400870:	53                   	push   %rbx
  400871:	48 89 fb             	mov    %rdi,%rbx
  400874:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400879:	e8 f2 fc ff ff       	callq  400570 <puts@plt>
  40087e:	48 85 db             	test   %rbx,%rbx
  400881:	74 30                	je     4008b3 <print+0x43>
  400883:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088a:	84 00 00 00 00 00 
  400890:	48 8b 33             	mov    (%rbx),%rsi
  400893:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400898:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40089c:	bf 3c 0c 40 00       	mov    $0x400c3c,%edi
  4008a1:	b0 01                	mov    $0x1,%al
  4008a3:	e8 d8 fc ff ff       	callq  400580 <printf@plt>
  4008a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ac:	48 85 db             	test   %rbx,%rbx
  4008af:	75 df                	jne    400890 <print+0x20>
  4008b1:	5b                   	pop    %rbx
  4008b2:	c3                   	retq   
  4008b3:	bf 2b 0c 40 00       	mov    $0x400c2b,%edi
  4008b8:	31 c0                	xor    %eax,%eax
  4008ba:	5b                   	pop    %rbx
  4008bb:	e9 c0 fc ff ff       	jmpq   400580 <printf@plt>

00000000004008c0 <main>:
  4008c0:	41 57                	push   %r15
  4008c2:	41 56                	push   %r14
  4008c4:	41 54                	push   %r12
  4008c6:	53                   	push   %rbx
  4008c7:	48 83 ec 18          	sub    $0x18,%rsp
  4008cb:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  4008d0:	e8 9b fc ff ff       	callq  400570 <puts@plt>
  4008d5:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  4008da:	e8 91 fc ff ff       	callq  400570 <puts@plt>
  4008df:	e8 2c fe ff ff       	callq  400710 <create>
  4008e4:	49 89 c4             	mov    %rax,%r12
  4008e7:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4008ec:	e8 7f fc ff ff       	callq  400570 <puts@plt>
  4008f1:	4d 85 e4             	test   %r12,%r12
  4008f4:	74 2d                	je     400923 <main+0x63>
  4008f6:	4c 89 e3             	mov    %r12,%rbx
  4008f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 3c 0c 40 00       	mov    $0x400c3c,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 68 fc ff ff       	callq  400580 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x40>
  400921:	eb 0c                	jmp    40092f <main+0x6f>
  400923:	bf 2b 0c 40 00       	mov    $0x400c2b,%edi
  400928:	31 c0                	xor    %eax,%eax
  40092a:	e8 51 fc ff ff       	callq  400580 <printf@plt>
  40092f:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400934:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400940:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <puts@plt>
  40094a:	bf 47 0c 40 00       	mov    $0x400c47,%edi
  40094f:	31 c0                	xor    %eax,%eax
  400951:	e8 2a fc ff ff       	callq  400580 <printf@plt>
  400956:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  40095b:	31 c0                	xor    %eax,%eax
  40095d:	4c 89 f6             	mov    %r14,%rsi
  400960:	e8 4b fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400965:	48 8b 3d f4 16 20 00 	mov    0x2016f4(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  40096c:	e8 2f fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400971:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400975:	83 f8 02             	cmp    $0x2,%eax
  400978:	0f 84 82 00 00 00    	je     400a00 <main+0x140>
  40097e:	83 f8 01             	cmp    $0x1,%eax
  400981:	0f 85 fc 01 00 00    	jne    400b83 <main+0x2c3>
  400987:	bf 59 0c 40 00       	mov    $0x400c59,%edi
  40098c:	31 c0                	xor    %eax,%eax
  40098e:	e8 ed fb ff ff       	callq  400580 <printf@plt>
  400993:	bf 18 00 00 00       	mov    $0x18,%edi
  400998:	e8 f3 fb ff ff       	callq  400590 <malloc@plt>
  40099d:	48 89 c3             	mov    %rax,%rbx
  4009a0:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  4009a5:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009a9:	31 c0                	xor    %eax,%eax
  4009ab:	48 89 de             	mov    %rbx,%rsi
  4009ae:	e8 fd fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009b3:	4d 85 e4             	test   %r12,%r12
  4009b6:	0f 84 af 00 00 00    	je     400a6b <main+0x1ab>
  4009bc:	48 8b 33             	mov    (%rbx),%rsi
  4009bf:	4c 89 e0             	mov    %r12,%rax
  4009c2:	49 3b 34 24          	cmp    (%r12),%rsi
  4009c6:	0f 8e ca 00 00 00    	jle    400a96 <main+0x1d6>
  4009cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4009d0:	48 89 c1             	mov    %rax,%rcx
  4009d3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009d7:	48 85 c0             	test   %rax,%rax
  4009da:	0f 84 be 00 00 00    	je     400a9e <main+0x1de>
  4009e0:	48 3b 30             	cmp    (%rax),%rsi
  4009e3:	7f eb                	jg     4009d0 <main+0x110>
  4009e5:	4c 39 e0             	cmp    %r12,%rax
  4009e8:	0f 84 a8 00 00 00    	je     400a96 <main+0x1d6>
  4009ee:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009f2:	e9 ad 00 00 00       	jmpq   400aa4 <main+0x1e4>
  4009f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009fe:	00 00 
  400a00:	bf 83 0c 40 00       	mov    $0x400c83,%edi
  400a05:	31 c0                	xor    %eax,%eax
  400a07:	e8 74 fb ff ff       	callq  400580 <printf@plt>
  400a0c:	bf 95 0c 40 00       	mov    $0x400c95,%edi
  400a11:	31 c0                	xor    %eax,%eax
  400a13:	4c 89 fe             	mov    %r15,%rsi
  400a16:	e8 95 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a1b:	4d 85 e4             	test   %r12,%r12
  400a1e:	74 5b                	je     400a7b <main+0x1bb>
  400a20:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a25:	49 39 34 24          	cmp    %rsi,(%r12)
  400a29:	4c 89 e0             	mov    %r12,%rax
  400a2c:	75 12                	jne    400a40 <main+0x180>
  400a2e:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a33:	e9 da 00 00 00       	jmpq   400b12 <main+0x252>
  400a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a3f:	00 
  400a40:	48 89 c1             	mov    %rax,%rcx
  400a43:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a47:	48 85 c0             	test   %rax,%rax
  400a4a:	0f 84 b3 00 00 00    	je     400b03 <main+0x243>
  400a50:	48 39 30             	cmp    %rsi,(%rax)
  400a53:	75 eb                	jne    400a40 <main+0x180>
  400a55:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a59:	4c 39 e0             	cmp    %r12,%rax
  400a5c:	0f 84 ad 00 00 00    	je     400b0f <main+0x24f>
  400a62:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a66:	e9 a7 00 00 00       	jmpq   400b12 <main+0x252>
  400a6b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a72:	00 
  400a73:	48 8b 33             	mov    (%rbx),%rsi
  400a76:	49 89 dc             	mov    %rbx,%r12
  400a79:	eb 34                	jmp    400aaf <main+0x1ef>
  400a7b:	bf 2b 0c 40 00       	mov    $0x400c2b,%edi
  400a80:	31 c0                	xor    %eax,%eax
  400a82:	e8 f9 fa ff ff       	callq  400580 <printf@plt>
  400a87:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400a8c:	e8 df fa ff ff       	callq  400570 <puts@plt>
  400a91:	e9 da 00 00 00       	jmpq   400b70 <main+0x2b0>
  400a96:	4c 89 e0             	mov    %r12,%rax
  400a99:	49 89 dc             	mov    %rbx,%r12
  400a9c:	eb 06                	jmp    400aa4 <main+0x1e4>
  400a9e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400aa2:	31 c0                	xor    %eax,%eax
  400aa4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400aa8:	83 05 bd 15 20 00 01 	addl   $0x1,0x2015bd(%rip)        # 60206c <n>
  400aaf:	bf 75 0c 40 00       	mov    $0x400c75,%edi
  400ab4:	31 c0                	xor    %eax,%eax
  400ab6:	e8 c5 fa ff ff       	callq  400580 <printf@plt>
  400abb:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400ac0:	e8 ab fa ff ff       	callq  400570 <puts@plt>
  400ac5:	4d 85 e4             	test   %r12,%r12
  400ac8:	0f 84 a2 00 00 00    	je     400b70 <main+0x2b0>
  400ace:	4c 89 e3             	mov    %r12,%rbx
  400ad1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ad8:	0f 1f 84 00 00 00 00 
  400adf:	00 
  400ae0:	48 8b 33             	mov    (%rbx),%rsi
  400ae3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ae8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400aec:	bf 3c 0c 40 00       	mov    $0x400c3c,%edi
  400af1:	b0 01                	mov    $0x1,%al
  400af3:	e8 88 fa ff ff       	callq  400580 <printf@plt>
  400af8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400afc:	48 85 db             	test   %rbx,%rbx
  400aff:	75 df                	jne    400ae0 <main+0x220>
  400b01:	eb 7c                	jmp    400b7f <main+0x2bf>
  400b03:	bf 99 0c 40 00       	mov    $0x400c99,%edi
  400b08:	e8 63 fa ff ff       	callq  400570 <puts@plt>
  400b0d:	eb 16                	jmp    400b25 <main+0x265>
  400b0f:	49 89 d4             	mov    %rdx,%r12
  400b12:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  400b17:	31 c0                	xor    %eax,%eax
  400b19:	e8 62 fa ff ff       	callq  400580 <printf@plt>
  400b1e:	83 05 47 15 20 00 ff 	addl   $0xffffffff,0x201547(%rip)        # 60206c <n>
  400b25:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400b2a:	e8 41 fa ff ff       	callq  400570 <puts@plt>
  400b2f:	4d 85 e4             	test   %r12,%r12
  400b32:	74 3c                	je     400b70 <main+0x2b0>
  400b34:	4c 89 e3             	mov    %r12,%rbx
  400b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b3e:	00 00 
  400b40:	48 8b 33             	mov    (%rbx),%rsi
  400b43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b4c:	bf 3c 0c 40 00       	mov    $0x400c3c,%edi
  400b51:	b0 01                	mov    $0x1,%al
  400b53:	e8 28 fa ff ff       	callq  400580 <printf@plt>
  400b58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b5c:	48 85 db             	test   %rbx,%rbx
  400b5f:	75 df                	jne    400b40 <main+0x280>
  400b61:	eb 1c                	jmp    400b7f <main+0x2bf>
  400b63:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b6a:	84 00 00 00 00 00 
  400b70:	bf 2b 0c 40 00       	mov    $0x400c2b,%edi
  400b75:	31 c0                	xor    %eax,%eax
  400b77:	e8 04 fa ff ff       	callq  400580 <printf@plt>
  400b7c:	45 31 e4             	xor    %r12d,%r12d
  400b7f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b83:	85 c0                	test   %eax,%eax
  400b85:	0f 85 b5 fd ff ff    	jne    400940 <main+0x80>
  400b8b:	48 83 c4 18          	add    $0x18,%rsp
  400b8f:	5b                   	pop    %rbx
  400b90:	41 5c                	pop    %r12
  400b92:	41 5e                	pop    %r14
  400b94:	41 5f                	pop    %r15
  400b96:	c3                   	retq   
  400b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b9e:	00 00 

0000000000400ba0 <__libc_csu_init>:
  400ba0:	41 57                	push   %r15
  400ba2:	41 56                	push   %r14
  400ba4:	49 89 d7             	mov    %rdx,%r15
  400ba7:	41 55                	push   %r13
  400ba9:	41 54                	push   %r12
  400bab:	4c 8d 25 4e 12 20 00 	lea    0x20124e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bb2:	55                   	push   %rbp
  400bb3:	48 8d 2d 4e 12 20 00 	lea    0x20124e(%rip),%rbp        # 601e08 <__init_array_end>
  400bba:	53                   	push   %rbx
  400bbb:	41 89 fd             	mov    %edi,%r13d
  400bbe:	49 89 f6             	mov    %rsi,%r14
  400bc1:	4c 29 e5             	sub    %r12,%rbp
  400bc4:	48 83 ec 08          	sub    $0x8,%rsp
  400bc8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bcc:	e8 5f f9 ff ff       	callq  400530 <_init>
  400bd1:	48 85 ed             	test   %rbp,%rbp
  400bd4:	74 20                	je     400bf6 <__libc_csu_init+0x56>
  400bd6:	31 db                	xor    %ebx,%ebx
  400bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bdf:	00 
  400be0:	4c 89 fa             	mov    %r15,%rdx
  400be3:	4c 89 f6             	mov    %r14,%rsi
  400be6:	44 89 ef             	mov    %r13d,%edi
  400be9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bed:	48 83 c3 01          	add    $0x1,%rbx
  400bf1:	48 39 dd             	cmp    %rbx,%rbp
  400bf4:	75 ea                	jne    400be0 <__libc_csu_init+0x40>
  400bf6:	48 83 c4 08          	add    $0x8,%rsp
  400bfa:	5b                   	pop    %rbx
  400bfb:	5d                   	pop    %rbp
  400bfc:	41 5c                	pop    %r12
  400bfe:	41 5d                	pop    %r13
  400c00:	41 5e                	pop    %r14
  400c02:	41 5f                	pop    %r15
  400c04:	c3                   	retq   
  400c05:	90                   	nop
  400c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c0d:	00 00 00 

0000000000400c10 <__libc_csu_fini>:
  400c10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c14 <_fini>:
  400c14:	48 83 ec 08          	sub    $0x8,%rsp
  400c18:	48 83 c4 08          	add    $0x8,%rsp
  400c1c:	c3                   	retq   
