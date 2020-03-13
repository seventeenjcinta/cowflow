
input/19020031063_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 1a 20 00 	mov    0x201afd(%rip),%rax        # 601ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 1a 20 00    	pushq  0x201af2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 1a 20 00    	jmpq   *0x201af4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <puts@plt>:
  400530:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <printf@plt>:
  400540:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <malloc@plt>:
  400550:	ff 25 da 1a 20 00    	jmpq   *0x201ada(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <exit@plt>:
  400570:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602040 <exit@GLIBC_2.2.5>
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
  40058f:	49 c7 c0 20 0b 40 00 	mov    $0x400b20,%r8
  400596:	48 c7 c1 b0 0a 40 00 	mov    $0x400ab0,%rcx
  40059d:	48 c7 c7 70 06 40 00 	mov    $0x400670,%rdi
  4005a4:	ff 15 46 1a 20 00    	callq  *0x201a46(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005c6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 20 60 00       	mov    $0x602058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 20 60 00       	mov    $0x602058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
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
  40061e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 1a 20 00 00 	cmpb   $0x0,0x201a21(%rip)        # 602058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 1a 20 00 01 	movb   $0x1,0x201a0f(%rip)        # 602058 <__TMC_END__>
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

0000000000400670 <main>:
  400670:	55                   	push   %rbp
  400671:	41 57                	push   %r15
  400673:	41 56                	push   %r14
  400675:	41 55                	push   %r13
  400677:	41 54                	push   %r12
  400679:	53                   	push   %rbx
  40067a:	48 83 ec 18          	sub    $0x18,%rsp
  40067e:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  400685:	00 00 
  400687:	bf 58 0b 40 00       	mov    $0x400b58,%edi
  40068c:	31 c0                	xor    %eax,%eax
  40068e:	e8 ad fe ff ff       	callq  400540 <printf@plt>
  400693:	bf 18 00 00 00       	mov    $0x18,%edi
  400698:	e8 b3 fe ff ff       	callq  400550 <malloc@plt>
  40069d:	49 89 c4             	mov    %rax,%r12
  4006a0:	4d 85 e4             	test   %r12,%r12
  4006a3:	74 09                	je     4006ae <main+0x3e>
  4006a5:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
  4006ac:	00 00 
  4006ae:	4c 89 e2             	mov    %r12,%rdx
  4006b1:	48 83 c2 08          	add    $0x8,%rdx
  4006b5:	bf 7a 0b 40 00       	mov    $0x400b7a,%edi
  4006ba:	31 c0                	xor    %eax,%eax
  4006bc:	4c 89 e6             	mov    %r12,%rsi
  4006bf:	e8 9c fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  4006c4:	49 8b 34 24          	mov    (%r12),%rsi
  4006c8:	f3 41 0f 10 44 24 08 	movss  0x8(%r12),%xmm0
  4006cf:	48 85 f6             	test   %rsi,%rsi
  4006d2:	75 0e                	jne    4006e2 <main+0x72>
  4006d4:	0f 57 c9             	xorps  %xmm1,%xmm1
  4006d7:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4006da:	75 06                	jne    4006e2 <main+0x72>
  4006dc:	0f 8b 89 02 00 00    	jnp    40096b <main+0x2fb>
  4006e2:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006e6:	bf 80 0b 40 00       	mov    $0x400b80,%edi
  4006eb:	b0 01                	mov    $0x1,%al
  4006ed:	e8 4e fe ff ff       	callq  400540 <printf@plt>
  4006f2:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  4006f7:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  4006fc:	eb 0a                	jmp    400708 <main+0x98>
  4006fe:	66 90                	xchg   %ax,%ax
  400700:	e8 2b fe ff ff       	callq  400530 <puts@plt>
  400705:	45 31 e4             	xor    %r12d,%r12d
  400708:	bf 8b 0b 40 00       	mov    $0x400b8b,%edi
  40070d:	31 c0                	xor    %eax,%eax
  40070f:	e8 2c fe ff ff       	callq  400540 <printf@plt>
  400714:	bf b4 0b 40 00       	mov    $0x400bb4,%edi
  400719:	31 c0                	xor    %eax,%eax
  40071b:	48 89 ee             	mov    %rbp,%rsi
  40071e:	e8 3d fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  400723:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400727:	48 83 f8 03          	cmp    $0x3,%rax
  40072b:	77 db                	ja     400708 <main+0x98>
  40072d:	ff 24 c5 38 0b 40 00 	jmpq   *0x400b38(,%rax,8)
  400734:	bf 58 0b 40 00       	mov    $0x400b58,%edi
  400739:	31 c0                	xor    %eax,%eax
  40073b:	e8 00 fe ff ff       	callq  400540 <printf@plt>
  400740:	bf 18 00 00 00       	mov    $0x18,%edi
  400745:	e8 06 fe ff ff       	callq  400550 <malloc@plt>
  40074a:	48 89 c3             	mov    %rax,%rbx
  40074d:	4d 85 e4             	test   %r12,%r12
  400750:	0f 84 da 00 00 00    	je     400830 <main+0x1c0>
  400756:	48 85 db             	test   %rbx,%rbx
  400759:	74 19                	je     400774 <main+0x104>
  40075b:	48 89 da             	mov    %rbx,%rdx
  40075e:	48 83 c2 08          	add    $0x8,%rdx
  400762:	bf 7a 0b 40 00       	mov    $0x400b7a,%edi
  400767:	31 c0                	xor    %eax,%eax
  400769:	48 89 de             	mov    %rbx,%rsi
  40076c:	e8 ef fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  400771:	48 8b 03             	mov    (%rbx),%rax
  400774:	49 39 04 24          	cmp    %rax,(%r12)
  400778:	4c 89 e2             	mov    %r12,%rdx
  40077b:	7e 23                	jle    4007a0 <main+0x130>
  40077d:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400781:	49 89 dc             	mov    %rbx,%r12
  400784:	4d 85 e4             	test   %r12,%r12
  400787:	0f 85 1a 01 00 00    	jne    4008a7 <main+0x237>
  40078d:	e9 be 01 00 00       	jmpq   400950 <main+0x2e0>
  400792:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400799:	1f 84 00 00 00 00 00 
  4007a0:	48 89 d1             	mov    %rdx,%rcx
  4007a3:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4007a7:	48 85 d2             	test   %rdx,%rdx
  4007aa:	0f 84 e2 00 00 00    	je     400892 <main+0x222>
  4007b0:	48 39 02             	cmp    %rax,(%rdx)
  4007b3:	7e eb                	jle    4007a0 <main+0x130>
  4007b5:	4c 39 e2             	cmp    %r12,%rdx
  4007b8:	74 c3                	je     40077d <main+0x10d>
  4007ba:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  4007be:	e9 d7 00 00 00       	jmpq   40089a <main+0x22a>
  4007c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007ca:	84 00 00 00 00 00 
  4007d0:	4d 85 e4             	test   %r12,%r12
  4007d3:	0f 84 af 00 00 00    	je     400888 <main+0x218>
  4007d9:	bf b7 0b 40 00       	mov    $0x400bb7,%edi
  4007de:	31 c0                	xor    %eax,%eax
  4007e0:	e8 5b fd ff ff       	callq  400540 <printf@plt>
  4007e5:	bf dd 0b 40 00       	mov    $0x400bdd,%edi
  4007ea:	31 c0                	xor    %eax,%eax
  4007ec:	4c 89 f6             	mov    %r14,%rsi
  4007ef:	e8 6c fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  4007f4:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
  4007f9:	4d 39 2c 24          	cmp    %r13,(%r12)
  4007fd:	0f 84 fd 00 00 00    	je     400900 <main+0x290>
  400803:	4c 89 e5             	mov    %r12,%rbp
  400806:	4c 89 e7             	mov    %r12,%rdi
  400809:	45 31 ff             	xor    %r15d,%r15d
  40080c:	0f 1f 40 00          	nopl   0x0(%rax)
  400810:	48 89 fb             	mov    %rdi,%rbx
  400813:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  400817:	48 85 ff             	test   %rdi,%rdi
  40081a:	0f 84 b6 00 00 00    	je     4008d6 <main+0x266>
  400820:	4c 39 2f             	cmp    %r13,(%rdi)
  400823:	48 89 fd             	mov    %rdi,%rbp
  400826:	49 89 df             	mov    %rbx,%r15
  400829:	75 e5                	jne    400810 <main+0x1a0>
  40082b:	e9 bc 00 00 00       	jmpq   4008ec <main+0x27c>
  400830:	48 85 db             	test   %rbx,%rbx
  400833:	74 08                	je     40083d <main+0x1cd>
  400835:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  40083c:	00 
  40083d:	48 89 da             	mov    %rbx,%rdx
  400840:	48 83 c2 08          	add    $0x8,%rdx
  400844:	bf 7a 0b 40 00       	mov    $0x400b7a,%edi
  400849:	31 c0                	xor    %eax,%eax
  40084b:	48 89 de             	mov    %rbx,%rsi
  40084e:	e8 0d fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  400853:	48 8b 33             	mov    (%rbx),%rsi
  400856:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  40085b:	48 85 f6             	test   %rsi,%rsi
  40085e:	75 10                	jne    400870 <main+0x200>
  400860:	0f 2e 04 25 34 0b 40 	ucomiss 0x400b34,%xmm0
  400867:	00 
  400868:	75 06                	jne    400870 <main+0x200>
  40086a:	0f 8b fb 00 00 00    	jnp    40096b <main+0x2fb>
  400870:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400874:	bf 80 0b 40 00       	mov    $0x400b80,%edi
  400879:	b0 01                	mov    $0x1,%al
  40087b:	e8 c0 fc ff ff       	callq  400540 <printf@plt>
  400880:	49 89 dc             	mov    %rbx,%r12
  400883:	e9 80 fe ff ff       	jmpq   400708 <main+0x98>
  400888:	bf 00 0c 40 00       	mov    $0x400c00,%edi
  40088d:	e9 6e fe ff ff       	jmpq   400700 <main+0x90>
  400892:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400899:	00 
  40089a:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40089e:	4d 85 e4             	test   %r12,%r12
  4008a1:	0f 84 a9 00 00 00    	je     400950 <main+0x2e0>
  4008a7:	4c 89 e3             	mov    %r12,%rbx
  4008aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 78 fc ff ff       	callq  400540 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <main+0x240>
  4008d1:	e9 32 fe ff ff       	jmpq   400708 <main+0x98>
  4008d6:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  4008db:	e8 50 fc ff ff       	callq  400530 <puts@plt>
  4008e0:	4c 39 6d 00          	cmp    %r13,0x0(%rbp)
  4008e4:	48 89 df             	mov    %rbx,%rdi
  4008e7:	4c 89 fb             	mov    %r15,%rbx
  4008ea:	75 5a                	jne    400946 <main+0x2d6>
  4008ec:	4c 39 e7             	cmp    %r12,%rdi
  4008ef:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  4008f4:	74 0a                	je     400900 <main+0x290>
  4008f6:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4008fa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4008fe:	eb 08                	jmp    400908 <main+0x298>
  400900:	4c 89 e7             	mov    %r12,%rdi
  400903:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400908:	e8 13 fc ff ff       	callq  400520 <free@plt>
  40090d:	4d 85 e4             	test   %r12,%r12
  400910:	74 3e                	je     400950 <main+0x2e0>
  400912:	4c 89 e3             	mov    %r12,%rbx
  400915:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40091c:	00 00 00 00 
  400920:	48 8b 33             	mov    (%rbx),%rsi
  400923:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400928:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40092c:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  400931:	b0 01                	mov    $0x1,%al
  400933:	e8 08 fc ff ff       	callq  400540 <printf@plt>
  400938:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40093c:	48 85 db             	test   %rbx,%rbx
  40093f:	75 df                	jne    400920 <main+0x2b0>
  400941:	e9 c2 fd ff ff       	jmpq   400708 <main+0x98>
  400946:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  40094b:	4d 85 e4             	test   %r12,%r12
  40094e:	75 c2                	jne    400912 <main+0x2a2>
  400950:	bf eb 0b 40 00       	mov    $0x400beb,%edi
  400955:	e9 a6 fd ff ff       	jmpq   400700 <main+0x90>
  40095a:	31 c0                	xor    %eax,%eax
  40095c:	48 83 c4 18          	add    $0x18,%rsp
  400960:	5b                   	pop    %rbx
  400961:	41 5c                	pop    %r12
  400963:	41 5d                	pop    %r13
  400965:	41 5e                	pop    %r14
  400967:	41 5f                	pop    %r15
  400969:	5d                   	pop    %rbp
  40096a:	c3                   	retq   
  40096b:	31 ff                	xor    %edi,%edi
  40096d:	e8 fe fb ff ff       	callq  400570 <exit@plt>
  400972:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400979:	1f 84 00 00 00 00 00 

0000000000400980 <insert>:
  400980:	48 8b 16             	mov    (%rsi),%rdx
  400983:	48 39 17             	cmp    %rdx,(%rdi)
  400986:	7e 08                	jle    400990 <insert+0x10>
  400988:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
  40098c:	48 89 f0             	mov    %rsi,%rax
  40098f:	c3                   	retq   
  400990:	48 89 f9             	mov    %rdi,%rcx
  400993:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40099a:	84 00 00 00 00 00 
  4009a0:	48 89 c8             	mov    %rcx,%rax
  4009a3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4009a7:	48 85 c9             	test   %rcx,%rcx
  4009aa:	74 0a                	je     4009b6 <insert+0x36>
  4009ac:	48 39 11             	cmp    %rdx,(%rcx)
  4009af:	7e ef                	jle    4009a0 <insert+0x20>
  4009b1:	48 39 f9             	cmp    %rdi,%rcx
  4009b4:	74 d2                	je     400988 <insert+0x8>
  4009b6:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  4009ba:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4009be:	48 89 fe             	mov    %rdi,%rsi
  4009c1:	48 89 f0             	mov    %rsi,%rax
  4009c4:	c3                   	retq   
  4009c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4009cc:	00 00 00 00 

00000000004009d0 <print>:
  4009d0:	53                   	push   %rbx
  4009d1:	48 89 fb             	mov    %rdi,%rbx
  4009d4:	48 85 db             	test   %rbx,%rbx
  4009d7:	74 2a                	je     400a03 <print+0x33>
  4009d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009e0:	48 8b 33             	mov    (%rbx),%rsi
  4009e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009ec:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  4009f1:	b0 01                	mov    $0x1,%al
  4009f3:	e8 48 fb ff ff       	callq  400540 <printf@plt>
  4009f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009fc:	48 85 db             	test   %rbx,%rbx
  4009ff:	75 df                	jne    4009e0 <print+0x10>
  400a01:	5b                   	pop    %rbx
  400a02:	c3                   	retq   
  400a03:	bf eb 0b 40 00       	mov    $0x400beb,%edi
  400a08:	5b                   	pop    %rbx
  400a09:	e9 22 fb ff ff       	jmpq   400530 <puts@plt>
  400a0e:	66 90                	xchg   %ax,%ax

0000000000400a10 <del>:
  400a10:	41 57                	push   %r15
  400a12:	41 56                	push   %r14
  400a14:	41 55                	push   %r13
  400a16:	41 54                	push   %r12
  400a18:	53                   	push   %rbx
  400a19:	49 89 f7             	mov    %rsi,%r15
  400a1c:	49 89 fe             	mov    %rdi,%r14
  400a1f:	4d 39 3e             	cmp    %r15,(%r14)
  400a22:	74 4a                	je     400a6e <del+0x5e>
  400a24:	45 31 e4             	xor    %r12d,%r12d
  400a27:	4d 89 f5             	mov    %r14,%r13
  400a2a:	4c 89 f7             	mov    %r14,%rdi
  400a2d:	0f 1f 00             	nopl   (%rax)
  400a30:	48 89 fb             	mov    %rdi,%rbx
  400a33:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	74 0d                	je     400a49 <del+0x39>
  400a3c:	4c 39 3f             	cmp    %r15,(%rdi)
  400a3f:	49 89 fd             	mov    %rdi,%r13
  400a42:	49 89 dc             	mov    %rbx,%r12
  400a45:	75 e9                	jne    400a30 <del+0x20>
  400a47:	eb 16                	jmp    400a5f <del+0x4f>
  400a49:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  400a4e:	e8 dd fa ff ff       	callq  400530 <puts@plt>
  400a53:	4d 39 7d 00          	cmp    %r15,0x0(%r13)
  400a57:	48 89 df             	mov    %rbx,%rdi
  400a5a:	4c 89 e3             	mov    %r12,%rbx
  400a5d:	75 18                	jne    400a77 <del+0x67>
  400a5f:	4c 39 f7             	cmp    %r14,%rdi
  400a62:	74 0a                	je     400a6e <del+0x5e>
  400a64:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a68:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a6c:	eb 04                	jmp    400a72 <del+0x62>
  400a6e:	4d 8b 76 10          	mov    0x10(%r14),%r14
  400a72:	e8 a9 fa ff ff       	callq  400520 <free@plt>
  400a77:	4c 89 f0             	mov    %r14,%rax
  400a7a:	5b                   	pop    %rbx
  400a7b:	41 5c                	pop    %r12
  400a7d:	41 5d                	pop    %r13
  400a7f:	41 5e                	pop    %r14
  400a81:	41 5f                	pop    %r15
  400a83:	c3                   	retq   
  400a84:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a8b:	00 00 00 00 00 

0000000000400a90 <create>:
  400a90:	50                   	push   %rax
  400a91:	bf 18 00 00 00       	mov    $0x18,%edi
  400a96:	e8 b5 fa ff ff       	callq  400550 <malloc@plt>
  400a9b:	48 85 c0             	test   %rax,%rax
  400a9e:	74 08                	je     400aa8 <create+0x18>
  400aa0:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400aa7:	00 
  400aa8:	59                   	pop    %rcx
  400aa9:	c3                   	retq   
  400aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ab0 <__libc_csu_init>:
  400ab0:	41 57                	push   %r15
  400ab2:	41 56                	push   %r14
  400ab4:	49 89 d7             	mov    %rdx,%r15
  400ab7:	41 55                	push   %r13
  400ab9:	41 54                	push   %r12
  400abb:	4c 8d 25 3e 13 20 00 	lea    0x20133e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ac2:	55                   	push   %rbp
  400ac3:	48 8d 2d 3e 13 20 00 	lea    0x20133e(%rip),%rbp        # 601e08 <__init_array_end>
  400aca:	53                   	push   %rbx
  400acb:	41 89 fd             	mov    %edi,%r13d
  400ace:	49 89 f6             	mov    %rsi,%r14
  400ad1:	4c 29 e5             	sub    %r12,%rbp
  400ad4:	48 83 ec 08          	sub    $0x8,%rsp
  400ad8:	48 c1 fd 03          	sar    $0x3,%rbp
  400adc:	e8 0f fa ff ff       	callq  4004f0 <_init>
  400ae1:	48 85 ed             	test   %rbp,%rbp
  400ae4:	74 20                	je     400b06 <__libc_csu_init+0x56>
  400ae6:	31 db                	xor    %ebx,%ebx
  400ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aef:	00 
  400af0:	4c 89 fa             	mov    %r15,%rdx
  400af3:	4c 89 f6             	mov    %r14,%rsi
  400af6:	44 89 ef             	mov    %r13d,%edi
  400af9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400afd:	48 83 c3 01          	add    $0x1,%rbx
  400b01:	48 39 dd             	cmp    %rbx,%rbp
  400b04:	75 ea                	jne    400af0 <__libc_csu_init+0x40>
  400b06:	48 83 c4 08          	add    $0x8,%rsp
  400b0a:	5b                   	pop    %rbx
  400b0b:	5d                   	pop    %rbp
  400b0c:	41 5c                	pop    %r12
  400b0e:	41 5d                	pop    %r13
  400b10:	41 5e                	pop    %r14
  400b12:	41 5f                	pop    %r15
  400b14:	c3                   	retq   
  400b15:	90                   	nop
  400b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b1d:	00 00 00 

0000000000400b20 <__libc_csu_fini>:
  400b20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b24 <_fini>:
  400b24:	48 83 ec 08          	sub    $0x8,%rsp
  400b28:	48 83 c4 08          	add    $0x8,%rsp
  400b2c:	c3                   	retq   
