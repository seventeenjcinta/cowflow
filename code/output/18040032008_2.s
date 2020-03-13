
input/18040032008_2.elf:     file format elf64-x86-64


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
  4005dd:	48 c7 c7 b0 08 40 00 	mov    $0x4008b0,%rdi
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
  4006b4:	48 85 db             	test   %rbx,%rbx
  4006b7:	74 3a                	je     4006f3 <print+0x43>
  4006b9:	8b 35 ad 19 20 00    	mov    0x2019ad(%rip),%esi        # 60206c <n>
  4006bf:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  4006c4:	31 c0                	xor    %eax,%eax
  4006c6:	e8 b5 fe ff ff       	callq  400580 <printf@plt>
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	48 8b 33             	mov    (%rbx),%rsi
  4006d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006dc:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  4006e1:	b0 01                	mov    $0x1,%al
  4006e3:	e8 98 fe ff ff       	callq  400580 <printf@plt>
  4006e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006ec:	48 85 db             	test   %rbx,%rbx
  4006ef:	75 df                	jne    4006d0 <print+0x20>
  4006f1:	5b                   	pop    %rbx
  4006f2:	c3                   	retq   
  4006f3:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  4006f8:	5b                   	pop    %rbx
  4006f9:	e9 72 fe ff ff       	jmpq   400570 <puts@plt>
  4006fe:	66 90                	xchg   %ax,%ax

0000000000400700 <insert>:
  400700:	48 85 ff             	test   %rdi,%rdi
  400703:	74 27                	je     40072c <insert+0x2c>
  400705:	48 8b 0e             	mov    (%rsi),%rcx
  400708:	48 3b 0f             	cmp    (%rdi),%rcx
  40070b:	7e 23                	jle    400730 <insert+0x30>
  40070d:	48 89 f8             	mov    %rdi,%rax
  400710:	48 89 c2             	mov    %rax,%rdx
  400713:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400717:	48 85 c0             	test   %rax,%rax
  40071a:	74 29                	je     400745 <insert+0x45>
  40071c:	48 3b 08             	cmp    (%rax),%rcx
  40071f:	7f ef                	jg     400710 <insert+0x10>
  400721:	48 39 f8             	cmp    %rdi,%rax
  400724:	74 0d                	je     400733 <insert+0x33>
  400726:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40072a:	eb 0a                	jmp    400736 <insert+0x36>
  40072c:	31 c0                	xor    %eax,%eax
  40072e:	eb 03                	jmp    400733 <insert+0x33>
  400730:	48 89 f8             	mov    %rdi,%rax
  400733:	48 89 f7             	mov    %rsi,%rdi
  400736:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40073a:	83 05 2b 19 20 00 01 	addl   $0x1,0x20192b(%rip)        # 60206c <n>
  400741:	48 89 f8             	mov    %rdi,%rax
  400744:	c3                   	retq   
  400745:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400749:	31 c0                	xor    %eax,%eax
  40074b:	eb e9                	jmp    400736 <insert+0x36>
  40074d:	0f 1f 00             	nopl   (%rax)

0000000000400750 <create>:
  400750:	41 56                	push   %r14
  400752:	53                   	push   %rbx
  400753:	50                   	push   %rax
  400754:	bf 18 00 00 00       	mov    $0x18,%edi
  400759:	e8 32 fe ff ff       	callq  400590 <malloc@plt>
  40075e:	48 89 c3             	mov    %rax,%rbx
  400761:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400765:	45 31 f6             	xor    %r14d,%r14d
  400768:	bf 4c 0c 40 00       	mov    $0x400c4c,%edi
  40076d:	31 c0                	xor    %eax,%eax
  40076f:	48 89 de             	mov    %rbx,%rsi
  400772:	e8 39 fe ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400777:	48 8b 03             	mov    (%rbx),%rax
  40077a:	48 85 c0             	test   %rax,%rax
  40077d:	0f 84 94 00 00 00    	je     400817 <create+0xc7>
  400783:	45 31 f6             	xor    %r14d,%r14d
  400786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40078d:	00 00 00 
  400790:	4d 85 f6             	test   %r14,%r14
  400793:	74 2b                	je     4007c0 <create+0x70>
  400795:	4c 89 f1             	mov    %r14,%rcx
  400798:	49 3b 06             	cmp    (%r14),%rax
  40079b:	7e 33                	jle    4007d0 <create+0x80>
  40079d:	0f 1f 00             	nopl   (%rax)
  4007a0:	48 89 ca             	mov    %rcx,%rdx
  4007a3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4007a7:	48 85 c9             	test   %rcx,%rcx
  4007aa:	74 2c                	je     4007d8 <create+0x88>
  4007ac:	48 3b 01             	cmp    (%rcx),%rax
  4007af:	7f ef                	jg     4007a0 <create+0x50>
  4007b1:	4c 39 f1             	cmp    %r14,%rcx
  4007b4:	74 1a                	je     4007d0 <create+0x80>
  4007b6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007ba:	eb 24                	jmp    4007e0 <create+0x90>
  4007bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4007c0:	31 c9                	xor    %ecx,%ecx
  4007c2:	49 89 de             	mov    %rbx,%r14
  4007c5:	eb 19                	jmp    4007e0 <create+0x90>
  4007c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ce:	00 00 
  4007d0:	4c 89 f1             	mov    %r14,%rcx
  4007d3:	49 89 de             	mov    %rbx,%r14
  4007d6:	eb 08                	jmp    4007e0 <create+0x90>
  4007d8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007dc:	31 c9                	xor    %ecx,%ecx
  4007de:	66 90                	xchg   %ax,%ax
  4007e0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007e4:	83 05 81 18 20 00 01 	addl   $0x1,0x201881(%rip)        # 60206c <n>
  4007eb:	bf 18 00 00 00       	mov    $0x18,%edi
  4007f0:	e8 9b fd ff ff       	callq  400590 <malloc@plt>
  4007f5:	48 89 c3             	mov    %rax,%rbx
  4007f8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007fc:	bf 4c 0c 40 00       	mov    $0x400c4c,%edi
  400801:	31 c0                	xor    %eax,%eax
  400803:	48 89 de             	mov    %rbx,%rsi
  400806:	e8 a5 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40080b:	48 8b 03             	mov    (%rbx),%rax
  40080e:	48 85 c0             	test   %rax,%rax
  400811:	0f 85 79 ff ff ff    	jne    400790 <create+0x40>
  400817:	48 89 df             	mov    %rbx,%rdi
  40081a:	e8 41 fd ff ff       	callq  400560 <free@plt>
  40081f:	4c 89 f0             	mov    %r14,%rax
  400822:	48 83 c4 08          	add    $0x8,%rsp
  400826:	5b                   	pop    %rbx
  400827:	41 5e                	pop    %r14
  400829:	c3                   	retq   
  40082a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400830 <del>:
  400830:	53                   	push   %rbx
  400831:	48 89 fb             	mov    %rdi,%rbx
  400834:	48 85 db             	test   %rbx,%rbx
  400837:	74 30                	je     400869 <del+0x39>
  400839:	48 8b 03             	mov    (%rbx),%rax
  40083c:	48 39 f0             	cmp    %rsi,%rax
  40083f:	7d 2c                	jge    40086d <del+0x3d>
  400841:	48 89 df             	mov    %rbx,%rdi
  400844:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40084b:	00 00 00 00 00 
  400850:	48 89 f9             	mov    %rdi,%rcx
  400853:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400857:	48 85 ff             	test   %rdi,%rdi
  40085a:	74 28                	je     400884 <del+0x54>
  40085c:	48 8b 07             	mov    (%rdi),%rax
  40085f:	48 89 ca             	mov    %rcx,%rdx
  400862:	48 39 f0             	cmp    %rsi,%rax
  400865:	7c e9                	jl     400850 <del+0x20>
  400867:	eb 07                	jmp    400870 <del+0x40>
  400869:	31 db                	xor    %ebx,%ebx
  40086b:	eb 33                	jmp    4008a0 <del+0x70>
  40086d:	48 89 df             	mov    %rbx,%rdi
  400870:	48 39 f0             	cmp    %rsi,%rax
  400873:	75 2b                	jne    4008a0 <del+0x70>
  400875:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400879:	48 39 df             	cmp    %rbx,%rdi
  40087c:	74 13                	je     400891 <del+0x61>
  40087e:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400882:	eb 10                	jmp    400894 <del+0x64>
  400884:	48 89 cf             	mov    %rcx,%rdi
  400887:	48 89 d1             	mov    %rdx,%rcx
  40088a:	48 39 f0             	cmp    %rsi,%rax
  40088d:	74 e6                	je     400875 <del+0x45>
  40088f:	eb 0f                	jmp    4008a0 <del+0x70>
  400891:	48 89 c3             	mov    %rax,%rbx
  400894:	e8 c7 fc ff ff       	callq  400560 <free@plt>
  400899:	83 05 cc 17 20 00 ff 	addl   $0xffffffff,0x2017cc(%rip)        # 60206c <n>
  4008a0:	48 89 d8             	mov    %rbx,%rax
  4008a3:	5b                   	pop    %rbx
  4008a4:	c3                   	retq   
  4008a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ac:	00 00 00 00 

00000000004008b0 <main>:
  4008b0:	41 57                	push   %r15
  4008b2:	41 56                	push   %r14
  4008b4:	41 54                	push   %r12
  4008b6:	53                   	push   %rbx
  4008b7:	48 83 ec 18          	sub    $0x18,%rsp
  4008bb:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  4008c0:	e8 ab fc ff ff       	callq  400570 <puts@plt>
  4008c5:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  4008ca:	e8 a1 fc ff ff       	callq  400570 <puts@plt>
  4008cf:	e8 7c fe ff ff       	callq  400750 <create>
  4008d4:	49 89 c4             	mov    %rax,%r12
  4008d7:	4d 85 e4             	test   %r12,%r12
  4008da:	74 47                	je     400923 <main+0x73>
  4008dc:	8b 35 8a 17 20 00    	mov    0x20178a(%rip),%esi        # 60206c <n>
  4008e2:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  4008e7:	31 c0                	xor    %eax,%eax
  4008e9:	e8 92 fc ff ff       	callq  400580 <printf@plt>
  4008ee:	4c 89 e3             	mov    %r12,%rbx
  4008f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008f8:	0f 1f 84 00 00 00 00 
  4008ff:	00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 68 fc ff ff       	callq  400580 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x50>
  400921:	eb 0a                	jmp    40092d <main+0x7d>
  400923:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  400928:	e8 43 fc ff ff       	callq  400570 <puts@plt>
  40092d:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400932:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40093e:	00 00 
  400940:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <puts@plt>
  40094a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400951:	ff 
  400952:	bf 53 0c 40 00       	mov    $0x400c53,%edi
  400957:	31 c0                	xor    %eax,%eax
  400959:	e8 22 fc ff ff       	callq  400580 <printf@plt>
  40095e:	bf 63 0c 40 00       	mov    $0x400c63,%edi
  400963:	31 c0                	xor    %eax,%eax
  400965:	4c 89 f6             	mov    %r14,%rsi
  400968:	e8 43 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40096d:	48 8b 3d ec 16 20 00 	mov    0x2016ec(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400974:	e8 27 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400979:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40097d:	83 f8 02             	cmp    $0x2,%eax
  400980:	74 6e                	je     4009f0 <main+0x140>
  400982:	83 f8 01             	cmp    $0x1,%eax
  400985:	0f 85 f6 01 00 00    	jne    400b81 <main+0x2d1>
  40098b:	bf 66 0c 40 00       	mov    $0x400c66,%edi
  400990:	31 c0                	xor    %eax,%eax
  400992:	e8 e9 fb ff ff       	callq  400580 <printf@plt>
  400997:	bf 18 00 00 00       	mov    $0x18,%edi
  40099c:	e8 ef fb ff ff       	callq  400590 <malloc@plt>
  4009a1:	48 89 c3             	mov    %rax,%rbx
  4009a4:	bf 4c 0c 40 00       	mov    $0x400c4c,%edi
  4009a9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009ad:	31 c0                	xor    %eax,%eax
  4009af:	48 89 de             	mov    %rbx,%rsi
  4009b2:	e8 f9 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009b7:	4d 85 e4             	test   %r12,%r12
  4009ba:	0f 84 8d 00 00 00    	je     400a4d <main+0x19d>
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	4c 89 e0             	mov    %r12,%rax
  4009c6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009ca:	0f 8e 8d 00 00 00    	jle    400a5d <main+0x1ad>
  4009d0:	48 89 c1             	mov    %rax,%rcx
  4009d3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009d7:	48 85 c0             	test   %rax,%rax
  4009da:	0f 84 a3 00 00 00    	je     400a83 <main+0x1d3>
  4009e0:	48 3b 30             	cmp    (%rax),%rsi
  4009e3:	7f eb                	jg     4009d0 <main+0x120>
  4009e5:	4c 39 e0             	cmp    %r12,%rax
  4009e8:	74 73                	je     400a5d <main+0x1ad>
  4009ea:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009ee:	eb 73                	jmp    400a63 <main+0x1b3>
  4009f0:	bf 92 0c 40 00       	mov    $0x400c92,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 84 fb ff ff       	callq  400580 <printf@plt>
  4009fc:	bf a5 0c 40 00       	mov    $0x400ca5,%edi
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 fe             	mov    %r15,%rsi
  400a06:	e8 a5 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	0f 84 5c 01 00 00    	je     400b70 <main+0x2c0>
  400a14:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a19:	49 8b 0c 24          	mov    (%r12),%rcx
  400a1d:	48 39 c1             	cmp    %rax,%rcx
  400a20:	7d 47                	jge    400a69 <main+0x1b9>
  400a22:	4c 89 e7             	mov    %r12,%rdi
  400a25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a2c:	00 00 00 00 
  400a30:	48 89 fa             	mov    %rdi,%rdx
  400a33:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	0f 84 b6 00 00 00    	je     400af6 <main+0x246>
  400a40:	48 8b 0f             	mov    (%rdi),%rcx
  400a43:	48 89 d6             	mov    %rdx,%rsi
  400a46:	48 39 c1             	cmp    %rax,%rcx
  400a49:	7c e5                	jl     400a30 <main+0x180>
  400a4b:	eb 1f                	jmp    400a6c <main+0x1bc>
  400a4d:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a54:	00 
  400a55:	48 8b 33             	mov    (%rbx),%rsi
  400a58:	49 89 dc             	mov    %rbx,%r12
  400a5b:	eb 33                	jmp    400a90 <main+0x1e0>
  400a5d:	4c 89 e0             	mov    %r12,%rax
  400a60:	49 89 dc             	mov    %rbx,%r12
  400a63:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a67:	eb 27                	jmp    400a90 <main+0x1e0>
  400a69:	4c 89 e7             	mov    %r12,%rdi
  400a6c:	48 39 c1             	cmp    %rax,%rcx
  400a6f:	0f 84 90 00 00 00    	je     400b05 <main+0x255>
  400a75:	4d 85 e4             	test   %r12,%r12
  400a78:	0f 85 aa 00 00 00    	jne    400b28 <main+0x278>
  400a7e:	e9 ed 00 00 00       	jmpq   400b70 <main+0x2c0>
  400a83:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a87:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a8e:	00 
  400a8f:	90                   	nop
  400a90:	83 05 d5 15 20 00 01 	addl   $0x1,0x2015d5(%rip)        # 60206c <n>
  400a97:	bf 83 0c 40 00       	mov    $0x400c83,%edi
  400a9c:	31 c0                	xor    %eax,%eax
  400a9e:	e8 dd fa ff ff       	callq  400580 <printf@plt>
  400aa3:	4d 85 e4             	test   %r12,%r12
  400aa6:	0f 84 c4 00 00 00    	je     400b70 <main+0x2c0>
  400aac:	8b 35 ba 15 20 00    	mov    0x2015ba(%rip),%esi        # 60206c <n>
  400ab2:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  400ab7:	31 c0                	xor    %eax,%eax
  400ab9:	e8 c2 fa ff ff       	callq  400580 <printf@plt>
  400abe:	4c 89 e3             	mov    %r12,%rbx
  400ac1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ac8:	0f 1f 84 00 00 00 00 
  400acf:	00 
  400ad0:	48 8b 33             	mov    (%rbx),%rsi
  400ad3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ad8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400adc:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400ae1:	b0 01                	mov    $0x1,%al
  400ae3:	e8 98 fa ff ff       	callq  400580 <printf@plt>
  400ae8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400aec:	48 85 db             	test   %rbx,%rbx
  400aef:	75 df                	jne    400ad0 <main+0x220>
  400af1:	e9 87 00 00 00       	jmpq   400b7d <main+0x2cd>
  400af6:	48 89 d7             	mov    %rdx,%rdi
  400af9:	48 89 f2             	mov    %rsi,%rdx
  400afc:	48 39 c1             	cmp    %rax,%rcx
  400aff:	0f 85 70 ff ff ff    	jne    400a75 <main+0x1c5>
  400b05:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400b09:	4c 39 e7             	cmp    %r12,%rdi
  400b0c:	74 06                	je     400b14 <main+0x264>
  400b0e:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400b12:	eb 03                	jmp    400b17 <main+0x267>
  400b14:	49 89 c4             	mov    %rax,%r12
  400b17:	e8 44 fa ff ff       	callq  400560 <free@plt>
  400b1c:	83 05 49 15 20 00 ff 	addl   $0xffffffff,0x201549(%rip)        # 60206c <n>
  400b23:	4d 85 e4             	test   %r12,%r12
  400b26:	74 48                	je     400b70 <main+0x2c0>
  400b28:	8b 35 3e 15 20 00    	mov    0x20153e(%rip),%esi        # 60206c <n>
  400b2e:	bf 24 0c 40 00       	mov    $0x400c24,%edi
  400b33:	31 c0                	xor    %eax,%eax
  400b35:	e8 46 fa ff ff       	callq  400580 <printf@plt>
  400b3a:	4c 89 e3             	mov    %r12,%rbx
  400b3d:	0f 1f 00             	nopl   (%rax)
  400b40:	48 8b 33             	mov    (%rbx),%rsi
  400b43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b4c:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400b51:	b0 01                	mov    $0x1,%al
  400b53:	e8 28 fa ff ff       	callq  400580 <printf@plt>
  400b58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b5c:	48 85 db             	test   %rbx,%rbx
  400b5f:	75 df                	jne    400b40 <main+0x290>
  400b61:	eb 1a                	jmp    400b7d <main+0x2cd>
  400b63:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b6a:	84 00 00 00 00 00 
  400b70:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  400b75:	e8 f6 f9 ff ff       	callq  400570 <puts@plt>
  400b7a:	45 31 e4             	xor    %r12d,%r12d
  400b7d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b81:	85 c0                	test   %eax,%eax
  400b83:	0f 85 b7 fd ff ff    	jne    400940 <main+0x90>
  400b89:	31 c0                	xor    %eax,%eax
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
