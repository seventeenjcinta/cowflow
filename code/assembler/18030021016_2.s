
c/18030021016_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 e0 0b 40 00 	mov    $0x400be0,%r8
  4005d6:	48 c7 c1 70 0b 40 00 	mov    $0x400b70,%rcx
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

00000000004006b0 <print>:
  4006b0:	53                   	push   %rbx
  4006b1:	48 89 fb             	mov    %rdi,%rbx
  4006b4:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  4006b9:	e8 b2 fe ff ff       	callq  400570 <puts@plt>
  4006be:	48 85 db             	test   %rbx,%rbx
  4006c1:	74 2e                	je     4006f1 <print+0x41>
  4006c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006ca:	84 00 00 00 00 00 
  4006d0:	48 8b 33             	mov    (%rbx),%rsi
  4006d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006dc:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
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
  400703:	74 27                	je     40072c <insert+0x2c>
  400705:	48 8b 0e             	mov    (%rsi),%rcx
  400708:	48 3b 0f             	cmp    (%rdi),%rcx
  40070b:	7e 26                	jle    400733 <insert+0x33>
  40070d:	48 89 f8             	mov    %rdi,%rax
  400710:	48 89 c2             	mov    %rax,%rdx
  400713:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400717:	48 85 c0             	test   %rax,%rax
  40071a:	74 1f                	je     40073b <insert+0x3b>
  40071c:	48 3b 08             	cmp    (%rax),%rcx
  40071f:	7f ef                	jg     400710 <insert+0x10>
  400721:	48 39 f8             	cmp    %rdi,%rax
  400724:	74 0d                	je     400733 <insert+0x33>
  400726:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40072a:	eb 15                	jmp    400741 <insert+0x41>
  40072c:	31 c0                	xor    %eax,%eax
  40072e:	48 89 f7             	mov    %rsi,%rdi
  400731:	eb 0e                	jmp    400741 <insert+0x41>
  400733:	48 89 f8             	mov    %rdi,%rax
  400736:	48 89 f7             	mov    %rsi,%rdi
  400739:	eb 06                	jmp    400741 <insert+0x41>
  40073b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40073f:	31 c0                	xor    %eax,%eax
  400741:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400745:	83 05 20 19 20 00 01 	addl   $0x1,0x201920(%rip)        # 60206c <n>
  40074c:	48 89 f8             	mov    %rdi,%rax
  40074f:	c3                   	retq   

0000000000400750 <del>:
  400750:	41 56                	push   %r14
  400752:	53                   	push   %rbx
  400753:	50                   	push   %rax
  400754:	48 89 fb             	mov    %rdi,%rbx
  400757:	48 85 db             	test   %rbx,%rbx
  40075a:	74 1d                	je     400779 <del+0x29>
  40075c:	48 39 33             	cmp    %rsi,(%rbx)
  40075f:	75 26                	jne    400787 <del+0x37>
  400761:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400765:	48 89 df             	mov    %rbx,%rdi
  400768:	e8 f3 fd ff ff       	callq  400560 <free@plt>
  40076d:	83 05 f8 18 20 00 ff 	addl   $0xffffffff,0x2018f8(%rip)        # 60206c <n>
  400774:	4c 89 f3             	mov    %r14,%rbx
  400777:	eb 46                	jmp    4007bf <del+0x6f>
  400779:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  40077e:	e8 ed fd ff ff       	callq  400570 <puts@plt>
  400783:	31 db                	xor    %ebx,%ebx
  400785:	eb 3f                	jmp    4007c6 <del+0x76>
  400787:	48 89 df             	mov    %rbx,%rdi
  40078a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400790:	48 89 f8             	mov    %rdi,%rax
  400793:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400797:	48 85 ff             	test   %rdi,%rdi
  40079a:	74 19                	je     4007b5 <del+0x65>
  40079c:	48 39 37             	cmp    %rsi,(%rdi)
  40079f:	75 ef                	jne    400790 <del+0x40>
  4007a1:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  4007a5:	48 39 df             	cmp    %rbx,%rdi
  4007a8:	74 bb                	je     400765 <del+0x15>
  4007aa:	4c 89 70 10          	mov    %r14,0x10(%rax)
  4007ae:	e8 ad fd ff ff       	callq  400560 <free@plt>
  4007b3:	eb 0a                	jmp    4007bf <del+0x6f>
  4007b5:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  4007ba:	e8 b1 fd ff ff       	callq  400570 <puts@plt>
  4007bf:	83 05 a6 18 20 00 ff 	addl   $0xffffffff,0x2018a6(%rip)        # 60206c <n>
  4007c6:	48 89 d8             	mov    %rbx,%rax
  4007c9:	48 83 c4 08          	add    $0x8,%rsp
  4007cd:	5b                   	pop    %rbx
  4007ce:	41 5e                	pop    %r14
  4007d0:	c3                   	retq   
  4007d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007d8:	0f 1f 84 00 00 00 00 
  4007df:	00 

00000000004007e0 <create>:
  4007e0:	41 56                	push   %r14
  4007e2:	53                   	push   %rbx
  4007e3:	50                   	push   %rax
  4007e4:	bf 18 00 00 00       	mov    $0x18,%edi
  4007e9:	e8 a2 fd ff ff       	callq  400590 <malloc@plt>
  4007ee:	48 89 c3             	mov    %rax,%rbx
  4007f1:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  4007f6:	e8 75 fd ff ff       	callq  400570 <puts@plt>
  4007fb:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ff:	45 31 f6             	xor    %r14d,%r14d
  400802:	bf fe 0b 40 00       	mov    $0x400bfe,%edi
  400807:	31 c0                	xor    %eax,%eax
  400809:	48 89 de             	mov    %rbx,%rsi
  40080c:	e8 9f fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400811:	48 8b 03             	mov    (%rbx),%rax
  400814:	48 85 c0             	test   %rax,%rax
  400817:	0f 84 8a 00 00 00    	je     4008a7 <create+0xc7>
  40081d:	45 31 f6             	xor    %r14d,%r14d
  400820:	4d 85 f6             	test   %r14,%r14
  400823:	74 2b                	je     400850 <create+0x70>
  400825:	4c 89 f1             	mov    %r14,%rcx
  400828:	49 3b 06             	cmp    (%r14),%rax
  40082b:	7e 33                	jle    400860 <create+0x80>
  40082d:	0f 1f 00             	nopl   (%rax)
  400830:	48 89 ca             	mov    %rcx,%rdx
  400833:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400837:	48 85 c9             	test   %rcx,%rcx
  40083a:	74 2c                	je     400868 <create+0x88>
  40083c:	48 3b 01             	cmp    (%rcx),%rax
  40083f:	7f ef                	jg     400830 <create+0x50>
  400841:	4c 39 f1             	cmp    %r14,%rcx
  400844:	74 1a                	je     400860 <create+0x80>
  400846:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40084a:	eb 24                	jmp    400870 <create+0x90>
  40084c:	0f 1f 40 00          	nopl   0x0(%rax)
  400850:	31 c9                	xor    %ecx,%ecx
  400852:	49 89 de             	mov    %rbx,%r14
  400855:	eb 19                	jmp    400870 <create+0x90>
  400857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40085e:	00 00 
  400860:	4c 89 f1             	mov    %r14,%rcx
  400863:	49 89 de             	mov    %rbx,%r14
  400866:	eb 08                	jmp    400870 <create+0x90>
  400868:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40086c:	31 c9                	xor    %ecx,%ecx
  40086e:	66 90                	xchg   %ax,%ax
  400870:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400874:	83 05 f1 17 20 00 01 	addl   $0x1,0x2017f1(%rip)        # 60206c <n>
  40087b:	bf 18 00 00 00       	mov    $0x18,%edi
  400880:	e8 0b fd ff ff       	callq  400590 <malloc@plt>
  400885:	48 89 c3             	mov    %rax,%rbx
  400888:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40088c:	bf fe 0b 40 00       	mov    $0x400bfe,%edi
  400891:	31 c0                	xor    %eax,%eax
  400893:	48 89 de             	mov    %rbx,%rsi
  400896:	e8 15 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40089b:	48 8b 03             	mov    (%rbx),%rax
  40089e:	48 85 c0             	test   %rax,%rax
  4008a1:	0f 85 79 ff ff ff    	jne    400820 <create+0x40>
  4008a7:	48 89 df             	mov    %rbx,%rdi
  4008aa:	e8 b1 fc ff ff       	callq  400560 <free@plt>
  4008af:	4c 89 f0             	mov    %r14,%rax
  4008b2:	48 83 c4 08          	add    $0x8,%rsp
  4008b6:	5b                   	pop    %rbx
  4008b7:	41 5e                	pop    %r14
  4008b9:	c3                   	retq   
  4008ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008c0 <main>:
  4008c0:	41 57                	push   %r15
  4008c2:	41 56                	push   %r14
  4008c4:	41 54                	push   %r12
  4008c6:	53                   	push   %rbx
  4008c7:	48 83 ec 18          	sub    $0x18,%rsp
  4008cb:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  4008d0:	e8 9b fc ff ff       	callq  400570 <puts@plt>
  4008d5:	e8 06 ff ff ff       	callq  4007e0 <create>
  4008da:	49 89 c4             	mov    %rax,%r12
  4008dd:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  4008e2:	e8 89 fc ff ff       	callq  400570 <puts@plt>
  4008e7:	4d 85 e4             	test   %r12,%r12
  4008ea:	74 25                	je     400911 <main+0x51>
  4008ec:	4c 89 e3             	mov    %r12,%rbx
  4008ef:	90                   	nop
  4008f0:	48 8b 33             	mov    (%rbx),%rsi
  4008f3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008f8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008fc:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400901:	b0 01                	mov    $0x1,%al
  400903:	e8 78 fc ff ff       	callq  400580 <printf@plt>
  400908:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40090c:	48 85 db             	test   %rbx,%rbx
  40090f:	75 df                	jne    4008f0 <main+0x30>
  400911:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400916:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  40091b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400920:	bf 10 0d 40 00       	mov    $0x400d10,%edi
  400925:	e8 46 fc ff ff       	callq  400570 <puts@plt>
  40092a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400931:	ff 
  400932:	bf 05 0c 40 00       	mov    $0x400c05,%edi
  400937:	31 c0                	xor    %eax,%eax
  400939:	e8 42 fc ff ff       	callq  400580 <printf@plt>
  40093e:	bf 14 0c 40 00       	mov    $0x400c14,%edi
  400943:	31 c0                	xor    %eax,%eax
  400945:	4c 89 f6             	mov    %r14,%rsi
  400948:	e8 63 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40094d:	48 8b 3d 0c 17 20 00 	mov    0x20170c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400954:	e8 47 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400959:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40095d:	83 f8 02             	cmp    $0x2,%eax
  400960:	74 7e                	je     4009e0 <main+0x120>
  400962:	83 f8 01             	cmp    $0x1,%eax
  400965:	0f 85 ec 01 00 00    	jne    400b57 <main+0x297>
  40096b:	bf 17 0c 40 00       	mov    $0x400c17,%edi
  400970:	31 c0                	xor    %eax,%eax
  400972:	e8 09 fc ff ff       	callq  400580 <printf@plt>
  400977:	bf 18 00 00 00       	mov    $0x18,%edi
  40097c:	e8 0f fc ff ff       	callq  400590 <malloc@plt>
  400981:	48 89 c3             	mov    %rax,%rbx
  400984:	bf fe 0b 40 00       	mov    $0x400bfe,%edi
  400989:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40098d:	31 c0                	xor    %eax,%eax
  40098f:	48 89 de             	mov    %rbx,%rsi
  400992:	e8 19 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400997:	4d 85 e4             	test   %r12,%r12
  40099a:	0f 84 bc 00 00 00    	je     400a5c <main+0x19c>
  4009a0:	48 8b 33             	mov    (%rbx),%rsi
  4009a3:	4c 89 e0             	mov    %r12,%rax
  4009a6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009aa:	0f 8e d5 00 00 00    	jle    400a85 <main+0x1c5>
  4009b0:	48 89 c1             	mov    %rax,%rcx
  4009b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009b7:	48 85 c0             	test   %rax,%rax
  4009ba:	0f 84 ce 00 00 00    	je     400a8e <main+0x1ce>
  4009c0:	48 3b 30             	cmp    (%rax),%rsi
  4009c3:	7f eb                	jg     4009b0 <main+0xf0>
  4009c5:	4c 39 e0             	cmp    %r12,%rax
  4009c8:	0f 84 b7 00 00 00    	je     400a85 <main+0x1c5>
  4009ce:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009d2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4009d6:	e9 c5 00 00 00       	jmpq   400aa0 <main+0x1e0>
  4009db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009e0:	bf 41 0c 40 00       	mov    $0x400c41,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 94 fb ff ff       	callq  400580 <printf@plt>
  4009ec:	bf 53 0c 40 00       	mov    $0x400c53,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	4c 89 fe             	mov    %r15,%rsi
  4009f6:	e8 b5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009fb:	4d 85 e4             	test   %r12,%r12
  4009fe:	74 6c                	je     400a6c <main+0x1ac>
  400a00:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a05:	49 39 04 24          	cmp    %rax,(%r12)
  400a09:	4c 89 e7             	mov    %r12,%rdi
  400a0c:	75 22                	jne    400a30 <main+0x170>
  400a0e:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  400a13:	4c 89 e7             	mov    %r12,%rdi
  400a16:	e8 45 fb ff ff       	callq  400560 <free@plt>
  400a1b:	83 05 4a 16 20 00 ff 	addl   $0xffffffff,0x20164a(%rip)        # 60206c <n>
  400a22:	49 89 dc             	mov    %rbx,%r12
  400a25:	e9 d3 00 00 00       	jmpq   400afd <main+0x23d>
  400a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a30:	48 89 f9             	mov    %rdi,%rcx
  400a33:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	0f 84 b3 00 00 00    	je     400af3 <main+0x233>
  400a40:	48 39 07             	cmp    %rax,(%rdi)
  400a43:	75 eb                	jne    400a30 <main+0x170>
  400a45:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a49:	4c 39 e7             	cmp    %r12,%rdi
  400a4c:	74 c5                	je     400a13 <main+0x153>
  400a4e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a52:	e8 09 fb ff ff       	callq  400560 <free@plt>
  400a57:	e9 a1 00 00 00       	jmpq   400afd <main+0x23d>
  400a5c:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a63:	00 
  400a64:	48 8b 33             	mov    (%rbx),%rsi
  400a67:	49 89 dc             	mov    %rbx,%r12
  400a6a:	eb 34                	jmp    400aa0 <main+0x1e0>
  400a6c:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400a71:	e8 fa fa ff ff       	callq  400570 <puts@plt>
  400a76:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400a7b:	e8 f0 fa ff ff       	callq  400570 <puts@plt>
  400a80:	e9 cb 00 00 00       	jmpq   400b50 <main+0x290>
  400a85:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400a89:	49 89 dc             	mov    %rbx,%r12
  400a8c:	eb 12                	jmp    400aa0 <main+0x1e0>
  400a8e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a92:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a99:	00 
  400a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400aa0:	83 05 c5 15 20 00 01 	addl   $0x1,0x2015c5(%rip)        # 60206c <n>
  400aa7:	bf 33 0c 40 00       	mov    $0x400c33,%edi
  400aac:	31 c0                	xor    %eax,%eax
  400aae:	e8 cd fa ff ff       	callq  400580 <printf@plt>
  400ab3:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400ab8:	e8 b3 fa ff ff       	callq  400570 <puts@plt>
  400abd:	4d 85 e4             	test   %r12,%r12
  400ac0:	0f 84 8a 00 00 00    	je     400b50 <main+0x290>
  400ac6:	4c 89 e3             	mov    %r12,%rbx
  400ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ad0:	48 8b 33             	mov    (%rbx),%rsi
  400ad3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ad8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400adc:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400ae1:	b0 01                	mov    $0x1,%al
  400ae3:	e8 98 fa ff ff       	callq  400580 <printf@plt>
  400ae8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400aec:	48 85 db             	test   %rbx,%rbx
  400aef:	75 df                	jne    400ad0 <main+0x210>
  400af1:	eb 60                	jmp    400b53 <main+0x293>
  400af3:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  400af8:	e8 73 fa ff ff       	callq  400570 <puts@plt>
  400afd:	83 05 68 15 20 00 ff 	addl   $0xffffffff,0x201568(%rip)        # 60206c <n>
  400b04:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400b09:	e8 62 fa ff ff       	callq  400570 <puts@plt>
  400b0e:	4d 85 e4             	test   %r12,%r12
  400b11:	74 3d                	je     400b50 <main+0x290>
  400b13:	4c 89 e3             	mov    %r12,%rbx
  400b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b1d:	00 00 00 
  400b20:	48 8b 33             	mov    (%rbx),%rsi
  400b23:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b28:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b2c:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400b31:	b0 01                	mov    $0x1,%al
  400b33:	e8 48 fa ff ff       	callq  400580 <printf@plt>
  400b38:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b3c:	48 85 db             	test   %rbx,%rbx
  400b3f:	75 df                	jne    400b20 <main+0x260>
  400b41:	eb 10                	jmp    400b53 <main+0x293>
  400b43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b4a:	84 00 00 00 00 00 
  400b50:	45 31 e4             	xor    %r12d,%r12d
  400b53:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b57:	85 c0                	test   %eax,%eax
  400b59:	0f 85 c1 fd ff ff    	jne    400920 <main+0x60>
  400b5f:	31 c0                	xor    %eax,%eax
  400b61:	48 83 c4 18          	add    $0x18,%rsp
  400b65:	5b                   	pop    %rbx
  400b66:	41 5c                	pop    %r12
  400b68:	41 5e                	pop    %r14
  400b6a:	41 5f                	pop    %r15
  400b6c:	c3                   	retq   
  400b6d:	0f 1f 00             	nopl   (%rax)

0000000000400b70 <__libc_csu_init>:
  400b70:	41 57                	push   %r15
  400b72:	41 56                	push   %r14
  400b74:	49 89 d7             	mov    %rdx,%r15
  400b77:	41 55                	push   %r13
  400b79:	41 54                	push   %r12
  400b7b:	4c 8d 25 7e 12 20 00 	lea    0x20127e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b82:	55                   	push   %rbp
  400b83:	48 8d 2d 7e 12 20 00 	lea    0x20127e(%rip),%rbp        # 601e08 <__init_array_end>
  400b8a:	53                   	push   %rbx
  400b8b:	41 89 fd             	mov    %edi,%r13d
  400b8e:	49 89 f6             	mov    %rsi,%r14
  400b91:	4c 29 e5             	sub    %r12,%rbp
  400b94:	48 83 ec 08          	sub    $0x8,%rsp
  400b98:	48 c1 fd 03          	sar    $0x3,%rbp
  400b9c:	e8 8f f9 ff ff       	callq  400530 <_init>
  400ba1:	48 85 ed             	test   %rbp,%rbp
  400ba4:	74 20                	je     400bc6 <__libc_csu_init+0x56>
  400ba6:	31 db                	xor    %ebx,%ebx
  400ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400baf:	00 
  400bb0:	4c 89 fa             	mov    %r15,%rdx
  400bb3:	4c 89 f6             	mov    %r14,%rsi
  400bb6:	44 89 ef             	mov    %r13d,%edi
  400bb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bbd:	48 83 c3 01          	add    $0x1,%rbx
  400bc1:	48 39 dd             	cmp    %rbx,%rbp
  400bc4:	75 ea                	jne    400bb0 <__libc_csu_init+0x40>
  400bc6:	48 83 c4 08          	add    $0x8,%rsp
  400bca:	5b                   	pop    %rbx
  400bcb:	5d                   	pop    %rbp
  400bcc:	41 5c                	pop    %r12
  400bce:	41 5d                	pop    %r13
  400bd0:	41 5e                	pop    %r14
  400bd2:	41 5f                	pop    %r15
  400bd4:	c3                   	retq   
  400bd5:	90                   	nop
  400bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bdd:	00 00 00 

0000000000400be0 <__libc_csu_fini>:
  400be0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400be4 <_fini>:
  400be4:	48 83 ec 08          	sub    $0x8,%rsp
  400be8:	48 83 c4 08          	add    $0x8,%rsp
  400bec:	c3                   	retq   
