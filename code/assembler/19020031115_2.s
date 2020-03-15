
c/19020031115_2.elf:     file format elf64-x86-64


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
  4005cf:	49 c7 c0 20 0c 40 00 	mov    $0x400c20,%r8
  4005d6:	48 c7 c1 b0 0b 40 00 	mov    $0x400bb0,%rcx
  4005dd:	48 c7 c7 d0 08 40 00 	mov    $0x4008d0,%rdi
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
  4006f5:	83 05 70 19 20 00 01 	addl   $0x1,0x201970(%rip)        # 60206c <n>
  4006fc:	48 89 f8             	mov    %rdi,%rax
  4006ff:	c3                   	retq   

0000000000400700 <create>:
  400700:	41 56                	push   %r14
  400702:	53                   	push   %rbx
  400703:	50                   	push   %rax
  400704:	bf 18 00 00 00       	mov    $0x18,%edi
  400709:	e8 82 fe ff ff       	callq  400590 <malloc@plt>
  40070e:	48 89 c3             	mov    %rax,%rbx
  400711:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400715:	45 31 f6             	xor    %r14d,%r14d
  400718:	bf 34 0c 40 00       	mov    $0x400c34,%edi
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
  400794:	83 05 d1 18 20 00 01 	addl   $0x1,0x2018d1(%rip)        # 60206c <n>
  40079b:	bf 18 00 00 00       	mov    $0x18,%edi
  4007a0:	e8 eb fd ff ff       	callq  400590 <malloc@plt>
  4007a5:	48 89 c3             	mov    %rax,%rbx
  4007a8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007ac:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  4007b1:	31 c0                	xor    %eax,%eax
  4007b3:	48 89 de             	mov    %rbx,%rsi
  4007b6:	e8 f5 fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4007bb:	48 8b 03             	mov    (%rbx),%rax
  4007be:	48 85 c0             	test   %rax,%rax
  4007c1:	0f 85 79 ff ff ff    	jne    400740 <create+0x40>
  4007c7:	4c 89 f0             	mov    %r14,%rax
  4007ca:	48 83 c4 08          	add    $0x8,%rsp
  4007ce:	5b                   	pop    %rbx
  4007cf:	41 5e                	pop    %r14
  4007d1:	c3                   	retq   
  4007d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007d9:	1f 84 00 00 00 00 00 

00000000004007e0 <del>:
  4007e0:	41 56                	push   %r14
  4007e2:	53                   	push   %rbx
  4007e3:	50                   	push   %rax
  4007e4:	48 89 fb             	mov    %rdi,%rbx
  4007e7:	48 85 db             	test   %rbx,%rbx
  4007ea:	74 4b                	je     400837 <del+0x57>
  4007ec:	48 8b 03             	mov    (%rbx),%rax
  4007ef:	48 39 f0             	cmp    %rsi,%rax
  4007f2:	7d 51                	jge    400845 <del+0x65>
  4007f4:	31 d2                	xor    %edx,%edx
  4007f6:	48 89 df             	mov    %rbx,%rdi
  4007f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400800:	48 89 f9             	mov    %rdi,%rcx
  400803:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400807:	48 85 ff             	test   %rdi,%rdi
  40080a:	74 4f                	je     40085b <del+0x7b>
  40080c:	48 8b 07             	mov    (%rdi),%rax
  40080f:	48 89 ca             	mov    %rcx,%rdx
  400812:	48 39 f0             	cmp    %rsi,%rax
  400815:	7c e9                	jl     400800 <del+0x20>
  400817:	48 39 f0             	cmp    %rsi,%rax
  40081a:	75 33                	jne    40084f <del+0x6f>
  40081c:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  400820:	48 39 df             	cmp    %rbx,%rdi
  400823:	74 43                	je     400868 <del+0x88>
  400825:	4c 89 71 10          	mov    %r14,0x10(%rcx)
  400829:	e8 32 fd ff ff       	callq  400560 <free@plt>
  40082e:	83 05 37 18 20 00 ff 	addl   $0xffffffff,0x201837(%rip)        # 60206c <n>
  400835:	eb 43                	jmp    40087a <del+0x9a>
  400837:	bf c6 0c 40 00       	mov    $0x400cc6,%edi
  40083c:	e8 2f fd ff ff       	callq  400570 <puts@plt>
  400841:	31 db                	xor    %ebx,%ebx
  400843:	eb 35                	jmp    40087a <del+0x9a>
  400845:	31 c9                	xor    %ecx,%ecx
  400847:	48 89 df             	mov    %rbx,%rdi
  40084a:	48 39 f0             	cmp    %rsi,%rax
  40084d:	74 cd                	je     40081c <del+0x3c>
  40084f:	bf bc 0c 40 00       	mov    $0x400cbc,%edi
  400854:	e8 17 fd ff ff       	callq  400570 <puts@plt>
  400859:	eb 1f                	jmp    40087a <del+0x9a>
  40085b:	48 89 cf             	mov    %rcx,%rdi
  40085e:	48 89 d1             	mov    %rdx,%rcx
  400861:	48 39 f0             	cmp    %rsi,%rax
  400864:	74 b6                	je     40081c <del+0x3c>
  400866:	eb e7                	jmp    40084f <del+0x6f>
  400868:	48 89 df             	mov    %rbx,%rdi
  40086b:	e8 f0 fc ff ff       	callq  400560 <free@plt>
  400870:	83 05 f5 17 20 00 ff 	addl   $0xffffffff,0x2017f5(%rip)        # 60206c <n>
  400877:	4c 89 f3             	mov    %r14,%rbx
  40087a:	48 89 d8             	mov    %rbx,%rax
  40087d:	48 83 c4 08          	add    $0x8,%rsp
  400881:	5b                   	pop    %rbx
  400882:	41 5e                	pop    %r14
  400884:	c3                   	retq   
  400885:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40088c:	00 00 00 00 

0000000000400890 <print>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	48 85 db             	test   %rbx,%rbx
  400897:	74 28                	je     4008c1 <print+0x31>
  400899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008a0:	48 8b 33             	mov    (%rbx),%rsi
  4008a3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008a8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ac:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  4008b1:	b0 01                	mov    $0x1,%al
  4008b3:	e8 c8 fc ff ff       	callq  400580 <printf@plt>
  4008b8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008bc:	48 85 db             	test   %rbx,%rbx
  4008bf:	75 df                	jne    4008a0 <print+0x10>
  4008c1:	5b                   	pop    %rbx
  4008c2:	c3                   	retq   
  4008c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ca:	84 00 00 00 00 00 

00000000004008d0 <main>:
  4008d0:	41 57                	push   %r15
  4008d2:	41 56                	push   %r14
  4008d4:	41 54                	push   %r12
  4008d6:	53                   	push   %rbx
  4008d7:	48 83 ec 18          	sub    $0x18,%rsp
  4008db:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  4008e0:	e8 8b fc ff ff       	callq  400570 <puts@plt>
  4008e5:	e8 16 fe ff ff       	callq  400700 <create>
  4008ea:	49 89 c4             	mov    %rax,%r12
  4008ed:	4d 85 e4             	test   %r12,%r12
  4008f0:	74 2f                	je     400921 <main+0x51>
  4008f2:	4c 89 e3             	mov    %r12,%rbx
  4008f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008fc:	00 00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 68 fc ff ff       	callq  400580 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x30>
  400921:	8b 35 45 17 20 00    	mov    0x201745(%rip),%esi        # 60206c <n>
  400927:	bf 45 0c 40 00       	mov    $0x400c45,%edi
  40092c:	31 c0                	xor    %eax,%eax
  40092e:	e8 4d fc ff ff       	callq  400580 <printf@plt>
  400933:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400938:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  40093d:	0f 1f 00             	nopl   (%rax)
  400940:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <puts@plt>
  40094a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400951:	ff 
  400952:	bf 54 0c 40 00       	mov    $0x400c54,%edi
  400957:	31 c0                	xor    %eax,%eax
  400959:	e8 22 fc ff ff       	callq  400580 <printf@plt>
  40095e:	bf 61 0c 40 00       	mov    $0x400c61,%edi
  400963:	31 c0                	xor    %eax,%eax
  400965:	4c 89 f6             	mov    %r14,%rsi
  400968:	e8 43 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  40096d:	48 8b 3d ec 16 20 00 	mov    0x2016ec(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400974:	e8 27 fc ff ff       	callq  4005a0 <_IO_getc@plt>
  400979:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40097d:	83 f8 02             	cmp    $0x2,%eax
  400980:	74 7e                	je     400a00 <main+0x130>
  400982:	83 f8 01             	cmp    $0x1,%eax
  400985:	0f 85 f8 01 00 00    	jne    400b83 <main+0x2b3>
  40098b:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  400990:	31 c0                	xor    %eax,%eax
  400992:	e8 e9 fb ff ff       	callq  400580 <printf@plt>
  400997:	bf 18 00 00 00       	mov    $0x18,%edi
  40099c:	e8 ef fb ff ff       	callq  400590 <malloc@plt>
  4009a1:	48 89 c3             	mov    %rax,%rbx
  4009a4:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  4009a9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009ad:	31 c0                	xor    %eax,%eax
  4009af:	48 89 de             	mov    %rbx,%rsi
  4009b2:	e8 f9 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4009b7:	4d 85 e4             	test   %r12,%r12
  4009ba:	0f 84 cb 00 00 00    	je     400a8b <main+0x1bb>
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	4c 89 e0             	mov    %r12,%rax
  4009c6:	49 3b 34 24          	cmp    (%r12),%rsi
  4009ca:	0f 8e da 00 00 00    	jle    400aaa <main+0x1da>
  4009d0:	48 89 c1             	mov    %rax,%rcx
  4009d3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009d7:	48 85 c0             	test   %rax,%rax
  4009da:	0f 84 f1 00 00 00    	je     400ad1 <main+0x201>
  4009e0:	48 3b 30             	cmp    (%rax),%rsi
  4009e3:	7f eb                	jg     4009d0 <main+0x100>
  4009e5:	4c 39 e0             	cmp    %r12,%rax
  4009e8:	0f 84 bc 00 00 00    	je     400aaa <main+0x1da>
  4009ee:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009f2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4009f6:	e9 e5 00 00 00       	jmpq   400ae0 <main+0x210>
  4009fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a00:	bf 95 0c 40 00       	mov    $0x400c95,%edi
  400a05:	31 c0                	xor    %eax,%eax
  400a07:	e8 74 fb ff ff       	callq  400580 <printf@plt>
  400a0c:	bf a8 0c 40 00       	mov    $0x400ca8,%edi
  400a11:	31 c0                	xor    %eax,%eax
  400a13:	4c 89 fe             	mov    %r15,%rsi
  400a16:	e8 95 fb ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400a1b:	4d 85 e4             	test   %r12,%r12
  400a1e:	74 7b                	je     400a9b <main+0x1cb>
  400a20:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a25:	49 8b 0c 24          	mov    (%r12),%rcx
  400a29:	48 39 c1             	cmp    %rax,%rcx
  400a2c:	0f 8d 81 00 00 00    	jge    400ab3 <main+0x1e3>
  400a32:	31 f6                	xor    %esi,%esi
  400a34:	4c 89 e7             	mov    %r12,%rdi
  400a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a3e:	00 00 
  400a40:	48 89 fa             	mov    %rdi,%rdx
  400a43:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400a47:	48 85 ff             	test   %rdi,%rdi
  400a4a:	0f 84 d3 00 00 00    	je     400b23 <main+0x253>
  400a50:	48 8b 0f             	mov    (%rdi),%rcx
  400a53:	48 89 d6             	mov    %rdx,%rsi
  400a56:	48 39 c1             	cmp    %rax,%rcx
  400a59:	7c e5                	jl     400a40 <main+0x170>
  400a5b:	48 39 c1             	cmp    %rax,%rcx
  400a5e:	75 5d                	jne    400abd <main+0x1ed>
  400a60:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a64:	4c 39 e7             	cmp    %r12,%rdi
  400a67:	0f 84 c7 00 00 00    	je     400b34 <main+0x264>
  400a6d:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  400a71:	e8 ea fa ff ff       	callq  400560 <free@plt>
  400a76:	83 05 ef 15 20 00 ff 	addl   $0xffffffff,0x2015ef(%rip)        # 60206c <n>
  400a7d:	4d 85 e4             	test   %r12,%r12
  400a80:	0f 85 c5 00 00 00    	jne    400b4b <main+0x27b>
  400a86:	e9 f5 00 00 00       	jmpq   400b80 <main+0x2b0>
  400a8b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a92:	00 
  400a93:	48 8b 33             	mov    (%rbx),%rsi
  400a96:	49 89 dc             	mov    %rbx,%r12
  400a99:	eb 45                	jmp    400ae0 <main+0x210>
  400a9b:	bf c6 0c 40 00       	mov    $0x400cc6,%edi
  400aa0:	e8 cb fa ff ff       	callq  400570 <puts@plt>
  400aa5:	e9 d6 00 00 00       	jmpq   400b80 <main+0x2b0>
  400aaa:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400aae:	49 89 dc             	mov    %rbx,%r12
  400ab1:	eb 2d                	jmp    400ae0 <main+0x210>
  400ab3:	4c 89 e7             	mov    %r12,%rdi
  400ab6:	31 d2                	xor    %edx,%edx
  400ab8:	48 39 c1             	cmp    %rax,%rcx
  400abb:	74 a3                	je     400a60 <main+0x190>
  400abd:	bf bc 0c 40 00       	mov    $0x400cbc,%edi
  400ac2:	e8 a9 fa ff ff       	callq  400570 <puts@plt>
  400ac7:	4d 85 e4             	test   %r12,%r12
  400aca:	75 7f                	jne    400b4b <main+0x27b>
  400acc:	e9 af 00 00 00       	jmpq   400b80 <main+0x2b0>
  400ad1:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ad5:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400adc:	00 
  400add:	0f 1f 00             	nopl   (%rax)
  400ae0:	83 05 85 15 20 00 01 	addl   $0x1,0x201585(%rip)        # 60206c <n>
  400ae7:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  400aec:	31 c0                	xor    %eax,%eax
  400aee:	e8 8d fa ff ff       	callq  400580 <printf@plt>
  400af3:	4d 85 e4             	test   %r12,%r12
  400af6:	0f 84 84 00 00 00    	je     400b80 <main+0x2b0>
  400afc:	4c 89 e3             	mov    %r12,%rbx
  400aff:	90                   	nop
  400b00:	48 8b 33             	mov    (%rbx),%rsi
  400b03:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b0c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400b11:	b0 01                	mov    $0x1,%al
  400b13:	e8 68 fa ff ff       	callq  400580 <printf@plt>
  400b18:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b1c:	48 85 db             	test   %rbx,%rbx
  400b1f:	75 df                	jne    400b00 <main+0x230>
  400b21:	eb 60                	jmp    400b83 <main+0x2b3>
  400b23:	48 89 d7             	mov    %rdx,%rdi
  400b26:	48 89 f2             	mov    %rsi,%rdx
  400b29:	48 39 c1             	cmp    %rax,%rcx
  400b2c:	0f 84 2e ff ff ff    	je     400a60 <main+0x190>
  400b32:	eb 89                	jmp    400abd <main+0x1ed>
  400b34:	4c 89 e7             	mov    %r12,%rdi
  400b37:	e8 24 fa ff ff       	callq  400560 <free@plt>
  400b3c:	83 05 29 15 20 00 ff 	addl   $0xffffffff,0x201529(%rip)        # 60206c <n>
  400b43:	49 89 dc             	mov    %rbx,%r12
  400b46:	4d 85 e4             	test   %r12,%r12
  400b49:	74 35                	je     400b80 <main+0x2b0>
  400b4b:	4c 89 e3             	mov    %r12,%rbx
  400b4e:	66 90                	xchg   %ax,%ax
  400b50:	48 8b 33             	mov    (%rbx),%rsi
  400b53:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b58:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b5c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400b61:	b0 01                	mov    $0x1,%al
  400b63:	e8 18 fa ff ff       	callq  400580 <printf@plt>
  400b68:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b6c:	48 85 db             	test   %rbx,%rbx
  400b6f:	75 df                	jne    400b50 <main+0x280>
  400b71:	eb 10                	jmp    400b83 <main+0x2b3>
  400b73:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b7a:	84 00 00 00 00 00 
  400b80:	45 31 e4             	xor    %r12d,%r12d
  400b83:	8b 35 e3 14 20 00    	mov    0x2014e3(%rip),%esi        # 60206c <n>
  400b89:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  400b8e:	31 c0                	xor    %eax,%eax
  400b90:	e8 eb f9 ff ff       	callq  400580 <printf@plt>
  400b95:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  400b9a:	0f 85 a0 fd ff ff    	jne    400940 <main+0x70>
  400ba0:	31 c0                	xor    %eax,%eax
  400ba2:	48 83 c4 18          	add    $0x18,%rsp
  400ba6:	5b                   	pop    %rbx
  400ba7:	41 5c                	pop    %r12
  400ba9:	41 5e                	pop    %r14
  400bab:	41 5f                	pop    %r15
  400bad:	c3                   	retq   
  400bae:	66 90                	xchg   %ax,%ax

0000000000400bb0 <__libc_csu_init>:
  400bb0:	41 57                	push   %r15
  400bb2:	41 56                	push   %r14
  400bb4:	49 89 d7             	mov    %rdx,%r15
  400bb7:	41 55                	push   %r13
  400bb9:	41 54                	push   %r12
  400bbb:	4c 8d 25 3e 12 20 00 	lea    0x20123e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bc2:	55                   	push   %rbp
  400bc3:	48 8d 2d 3e 12 20 00 	lea    0x20123e(%rip),%rbp        # 601e08 <__init_array_end>
  400bca:	53                   	push   %rbx
  400bcb:	41 89 fd             	mov    %edi,%r13d
  400bce:	49 89 f6             	mov    %rsi,%r14
  400bd1:	4c 29 e5             	sub    %r12,%rbp
  400bd4:	48 83 ec 08          	sub    $0x8,%rsp
  400bd8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bdc:	e8 4f f9 ff ff       	callq  400530 <_init>
  400be1:	48 85 ed             	test   %rbp,%rbp
  400be4:	74 20                	je     400c06 <__libc_csu_init+0x56>
  400be6:	31 db                	xor    %ebx,%ebx
  400be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bef:	00 
  400bf0:	4c 89 fa             	mov    %r15,%rdx
  400bf3:	4c 89 f6             	mov    %r14,%rsi
  400bf6:	44 89 ef             	mov    %r13d,%edi
  400bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bfd:	48 83 c3 01          	add    $0x1,%rbx
  400c01:	48 39 dd             	cmp    %rbx,%rbp
  400c04:	75 ea                	jne    400bf0 <__libc_csu_init+0x40>
  400c06:	48 83 c4 08          	add    $0x8,%rsp
  400c0a:	5b                   	pop    %rbx
  400c0b:	5d                   	pop    %rbp
  400c0c:	41 5c                	pop    %r12
  400c0e:	41 5d                	pop    %r13
  400c10:	41 5e                	pop    %r14
  400c12:	41 5f                	pop    %r15
  400c14:	c3                   	retq   
  400c15:	90                   	nop
  400c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c1d:	00 00 00 

0000000000400c20 <__libc_csu_fini>:
  400c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c24 <_fini>:
  400c24:	48 83 ec 08          	sub    $0x8,%rsp
  400c28:	48 83 c4 08          	add    $0x8,%rsp
  400c2c:	c3                   	retq   
