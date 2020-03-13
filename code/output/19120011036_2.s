
input/19120011036_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b8 <_init>:
  4004b8:	48 83 ec 08          	sub    $0x8,%rsp
  4004bc:	48 8b 05 35 1b 20 00 	mov    0x201b35(%rip),%rax        # 601ff8 <__gmon_start__>
  4004c3:	48 85 c0             	test   %rax,%rax
  4004c6:	74 02                	je     4004ca <_init+0x12>
  4004c8:	ff d0                	callq  *%rax
  4004ca:	48 83 c4 08          	add    $0x8,%rsp
  4004ce:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <.plt>:
  4004d0:	ff 35 32 1b 20 00    	pushq  0x201b32(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 1b 20 00    	jmpq   *0x201b34(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <free@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <free@GLIBC_2.2.5>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <.plt>

00000000004004f0 <puts@plt>:
  4004f0:	ff 25 2a 1b 20 00    	jmpq   *0x201b2a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400500 <printf@plt>:
  400500:	ff 25 22 1b 20 00    	jmpq   *0x201b22(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400510 <malloc@plt>:
  400510:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400520 <__isoc99_scanf@plt>:
  400520:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <.plt>

Disassembly of section .text:

0000000000400530 <_start>:
  400530:	31 ed                	xor    %ebp,%ebp
  400532:	49 89 d1             	mov    %rdx,%r9
  400535:	5e                   	pop    %rsi
  400536:	48 89 e2             	mov    %rsp,%rdx
  400539:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40053d:	50                   	push   %rax
  40053e:	54                   	push   %rsp
  40053f:	49 c7 c0 90 0b 40 00 	mov    $0x400b90,%r8
  400546:	48 c7 c1 20 0b 40 00 	mov    $0x400b20,%rcx
  40054d:	48 c7 c7 30 08 40 00 	mov    $0x400830,%rdi
  400554:	ff 15 96 1a 20 00    	callq  *0x201a96(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40055a:	f4                   	hlt    
  40055b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400560 <_dl_relocate_static_pie>:
  400560:	f3 c3                	repz retq 
  400562:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400569:	00 00 00 
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <deregister_tm_clones>:
  400570:	55                   	push   %rbp
  400571:	b8 50 20 60 00       	mov    $0x602050,%eax
  400576:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  40057c:	48 89 e5             	mov    %rsp,%rbp
  40057f:	74 17                	je     400598 <deregister_tm_clones+0x28>
  400581:	b8 00 00 00 00       	mov    $0x0,%eax
  400586:	48 85 c0             	test   %rax,%rax
  400589:	74 0d                	je     400598 <deregister_tm_clones+0x28>
  40058b:	5d                   	pop    %rbp
  40058c:	bf 50 20 60 00       	mov    $0x602050,%edi
  400591:	ff e0                	jmpq   *%rax
  400593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400598:	5d                   	pop    %rbp
  400599:	c3                   	retq   
  40059a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005a0 <register_tm_clones>:
  4005a0:	be 50 20 60 00       	mov    $0x602050,%esi
  4005a5:	55                   	push   %rbp
  4005a6:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  4005ad:	48 89 e5             	mov    %rsp,%rbp
  4005b0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005b4:	48 89 f0             	mov    %rsi,%rax
  4005b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005bb:	48 01 c6             	add    %rax,%rsi
  4005be:	48 d1 fe             	sar    %rsi
  4005c1:	74 15                	je     4005d8 <register_tm_clones+0x38>
  4005c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c8:	48 85 c0             	test   %rax,%rax
  4005cb:	74 0b                	je     4005d8 <register_tm_clones+0x38>
  4005cd:	5d                   	pop    %rbp
  4005ce:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005d3:	ff e0                	jmpq   *%rax
  4005d5:	0f 1f 00             	nopl   (%rax)
  4005d8:	5d                   	pop    %rbp
  4005d9:	c3                   	retq   
  4005da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005e0 <__do_global_dtors_aux>:
  4005e0:	80 3d 69 1a 20 00 00 	cmpb   $0x0,0x201a69(%rip)        # 602050 <__TMC_END__>
  4005e7:	75 17                	jne    400600 <__do_global_dtors_aux+0x20>
  4005e9:	55                   	push   %rbp
  4005ea:	48 89 e5             	mov    %rsp,%rbp
  4005ed:	e8 7e ff ff ff       	callq  400570 <deregister_tm_clones>
  4005f2:	c6 05 57 1a 20 00 01 	movb   $0x1,0x201a57(%rip)        # 602050 <__TMC_END__>
  4005f9:	5d                   	pop    %rbp
  4005fa:	c3                   	retq   
  4005fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400600:	f3 c3                	repz retq 
  400602:	0f 1f 40 00          	nopl   0x0(%rax)
  400606:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40060d:	00 00 00 

0000000000400610 <frame_dummy>:
  400610:	55                   	push   %rbp
  400611:	48 89 e5             	mov    %rsp,%rbp
  400614:	5d                   	pop    %rbp
  400615:	eb 89                	jmp    4005a0 <register_tm_clones>
  400617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40061e:	00 00 

0000000000400620 <create>:
  400620:	41 56                	push   %r14
  400622:	53                   	push   %rbx
  400623:	50                   	push   %rax
  400624:	bf 18 00 00 00       	mov    $0x18,%edi
  400629:	e8 e2 fe ff ff       	callq  400510 <malloc@plt>
  40062e:	48 89 c3             	mov    %rax,%rbx
  400631:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400635:	45 31 f6             	xor    %r14d,%r14d
  400638:	bf a4 0b 40 00       	mov    $0x400ba4,%edi
  40063d:	31 c0                	xor    %eax,%eax
  40063f:	48 89 de             	mov    %rbx,%rsi
  400642:	e8 d9 fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  400647:	48 8b 03             	mov    (%rbx),%rax
  40064a:	48 85 c0             	test   %rax,%rax
  40064d:	0f 84 94 00 00 00    	je     4006e7 <create+0xc7>
  400653:	45 31 f6             	xor    %r14d,%r14d
  400656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40065d:	00 00 00 
  400660:	4d 85 f6             	test   %r14,%r14
  400663:	74 2b                	je     400690 <create+0x70>
  400665:	4c 89 f1             	mov    %r14,%rcx
  400668:	49 3b 06             	cmp    (%r14),%rax
  40066b:	7e 33                	jle    4006a0 <create+0x80>
  40066d:	0f 1f 00             	nopl   (%rax)
  400670:	48 89 ca             	mov    %rcx,%rdx
  400673:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400677:	48 85 c9             	test   %rcx,%rcx
  40067a:	74 2c                	je     4006a8 <create+0x88>
  40067c:	48 3b 01             	cmp    (%rcx),%rax
  40067f:	7f ef                	jg     400670 <create+0x50>
  400681:	4c 39 f1             	cmp    %r14,%rcx
  400684:	74 1a                	je     4006a0 <create+0x80>
  400686:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40068a:	eb 24                	jmp    4006b0 <create+0x90>
  40068c:	0f 1f 40 00          	nopl   0x0(%rax)
  400690:	31 c9                	xor    %ecx,%ecx
  400692:	49 89 de             	mov    %rbx,%r14
  400695:	eb 19                	jmp    4006b0 <create+0x90>
  400697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40069e:	00 00 
  4006a0:	4c 89 f1             	mov    %r14,%rcx
  4006a3:	49 89 de             	mov    %rbx,%r14
  4006a6:	eb 08                	jmp    4006b0 <create+0x90>
  4006a8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4006ac:	31 c9                	xor    %ecx,%ecx
  4006ae:	66 90                	xchg   %ax,%ax
  4006b0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4006b4:	83 05 99 19 20 00 01 	addl   $0x1,0x201999(%rip)        # 602054 <n>
  4006bb:	bf 18 00 00 00       	mov    $0x18,%edi
  4006c0:	e8 4b fe ff ff       	callq  400510 <malloc@plt>
  4006c5:	48 89 c3             	mov    %rax,%rbx
  4006c8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006cc:	bf a4 0b 40 00       	mov    $0x400ba4,%edi
  4006d1:	31 c0                	xor    %eax,%eax
  4006d3:	48 89 de             	mov    %rbx,%rsi
  4006d6:	e8 45 fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  4006db:	48 8b 03             	mov    (%rbx),%rax
  4006de:	48 85 c0             	test   %rax,%rax
  4006e1:	0f 85 79 ff ff ff    	jne    400660 <create+0x40>
  4006e7:	48 89 df             	mov    %rbx,%rdi
  4006ea:	e8 f1 fd ff ff       	callq  4004e0 <free@plt>
  4006ef:	4c 89 f0             	mov    %r14,%rax
  4006f2:	48 83 c4 08          	add    $0x8,%rsp
  4006f6:	5b                   	pop    %rbx
  4006f7:	41 5e                	pop    %r14
  4006f9:	c3                   	retq   
  4006fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

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
  40073a:	83 05 13 19 20 00 01 	addl   $0x1,0x201913(%rip)        # 602054 <n>
  400741:	48 89 f8             	mov    %rdi,%rax
  400744:	c3                   	retq   
  400745:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400749:	31 c0                	xor    %eax,%eax
  40074b:	eb e9                	jmp    400736 <insert+0x36>
  40074d:	0f 1f 00             	nopl   (%rax)

0000000000400750 <print>:
  400750:	53                   	push   %rbx
  400751:	48 89 fb             	mov    %rdi,%rbx
  400754:	48 85 db             	test   %rbx,%rbx
  400757:	74 38                	je     400791 <print+0x41>
  400759:	8b 35 f5 18 20 00    	mov    0x2018f5(%rip),%esi        # 602054 <n>
  40075f:	bf ab 0b 40 00       	mov    $0x400bab,%edi
  400764:	31 c0                	xor    %eax,%eax
  400766:	e8 95 fd ff ff       	callq  400500 <printf@plt>
  40076b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400770:	48 8b 33             	mov    (%rbx),%rsi
  400773:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400778:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40077c:	bf c8 0b 40 00       	mov    $0x400bc8,%edi
  400781:	b0 01                	mov    $0x1,%al
  400783:	e8 78 fd ff ff       	callq  400500 <printf@plt>
  400788:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40078c:	48 85 db             	test   %rbx,%rbx
  40078f:	75 df                	jne    400770 <print+0x20>
  400791:	5b                   	pop    %rbx
  400792:	c3                   	retq   
  400793:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40079a:	84 00 00 00 00 00 

00000000004007a0 <del>:
  4007a0:	41 56                	push   %r14
  4007a2:	53                   	push   %rbx
  4007a3:	50                   	push   %rax
  4007a4:	49 89 fe             	mov    %rdi,%r14
  4007a7:	4d 85 f6             	test   %r14,%r14
  4007aa:	74 0e                	je     4007ba <del+0x1a>
  4007ac:	49 39 36             	cmp    %rsi,(%r14)
  4007af:	75 1a                	jne    4007cb <del+0x2b>
  4007b1:	4c 89 f3             	mov    %r14,%rbx
  4007b4:	4d 8b 76 10          	mov    0x10(%r14),%r14
  4007b8:	eb 47                	jmp    400801 <del+0x61>
  4007ba:	45 31 f6             	xor    %r14d,%r14d
  4007bd:	bf d3 0b 40 00       	mov    $0x400bd3,%edi
  4007c2:	31 c0                	xor    %eax,%eax
  4007c4:	e8 37 fd ff ff       	callq  400500 <printf@plt>
  4007c9:	eb 51                	jmp    40081c <del+0x7c>
  4007cb:	4c 89 f3             	mov    %r14,%rbx
  4007ce:	66 90                	xchg   %ax,%ax
  4007d0:	48 89 d8             	mov    %rbx,%rax
  4007d3:	48 8b 58 10          	mov    0x10(%rax),%rbx
  4007d7:	48 85 db             	test   %rbx,%rbx
  4007da:	74 14                	je     4007f0 <del+0x50>
  4007dc:	48 39 33             	cmp    %rsi,(%rbx)
  4007df:	75 ef                	jne    4007d0 <del+0x30>
  4007e1:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  4007e5:	4c 39 f3             	cmp    %r14,%rbx
  4007e8:	74 14                	je     4007fe <del+0x5e>
  4007ea:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4007ee:	eb 11                	jmp    400801 <del+0x61>
  4007f0:	bf ee 0b 40 00       	mov    $0x400bee,%edi
  4007f5:	31 c0                	xor    %eax,%eax
  4007f7:	e8 04 fd ff ff       	callq  400500 <printf@plt>
  4007fc:	eb 1e                	jmp    40081c <del+0x7c>
  4007fe:	49 89 ce             	mov    %rcx,%r14
  400801:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  400806:	31 c0                	xor    %eax,%eax
  400808:	e8 f3 fc ff ff       	callq  400500 <printf@plt>
  40080d:	83 05 40 18 20 00 ff 	addl   $0xffffffff,0x201840(%rip)        # 602054 <n>
  400814:	48 89 df             	mov    %rbx,%rdi
  400817:	e8 c4 fc ff ff       	callq  4004e0 <free@plt>
  40081c:	4c 89 f0             	mov    %r14,%rax
  40081f:	48 83 c4 08          	add    $0x8,%rsp
  400823:	5b                   	pop    %rbx
  400824:	41 5e                	pop    %r14
  400826:	c3                   	retq   
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 

0000000000400830 <main>:
  400830:	41 57                	push   %r15
  400832:	41 56                	push   %r14
  400834:	41 54                	push   %r12
  400836:	53                   	push   %rbx
  400837:	48 83 ec 18          	sub    $0x18,%rsp
  40083b:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400840:	e8 ab fc ff ff       	callq  4004f0 <puts@plt>
  400845:	bf 80 0c 40 00       	mov    $0x400c80,%edi
  40084a:	e8 a1 fc ff ff       	callq  4004f0 <puts@plt>
  40084f:	e8 cc fd ff ff       	callq  400620 <create>
  400854:	49 89 c4             	mov    %rax,%r12
  400857:	4d 85 e4             	test   %r12,%r12
  40085a:	74 45                	je     4008a1 <main+0x71>
  40085c:	8b 35 f2 17 20 00    	mov    0x2017f2(%rip),%esi        # 602054 <n>
  400862:	bf ab 0b 40 00       	mov    $0x400bab,%edi
  400867:	31 c0                	xor    %eax,%eax
  400869:	e8 92 fc ff ff       	callq  400500 <printf@plt>
  40086e:	4c 89 e3             	mov    %r12,%rbx
  400871:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400878:	0f 1f 84 00 00 00 00 
  40087f:	00 
  400880:	48 8b 33             	mov    (%rbx),%rsi
  400883:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400888:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40088c:	bf c8 0b 40 00       	mov    $0x400bc8,%edi
  400891:	b0 01                	mov    $0x1,%al
  400893:	e8 68 fc ff ff       	callq  400500 <printf@plt>
  400898:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40089c:	48 85 db             	test   %rbx,%rbx
  40089f:	75 df                	jne    400880 <main+0x50>
  4008a1:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  4008a6:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  4008ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008b0:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  4008b5:	e8 36 fc ff ff       	callq  4004f0 <puts@plt>
  4008ba:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  4008c1:	ff 
  4008c2:	bf 03 0c 40 00       	mov    $0x400c03,%edi
  4008c7:	31 c0                	xor    %eax,%eax
  4008c9:	e8 32 fc ff ff       	callq  400500 <printf@plt>
  4008ce:	bf 12 0c 40 00       	mov    $0x400c12,%edi
  4008d3:	31 c0                	xor    %eax,%eax
  4008d5:	4c 89 f6             	mov    %r14,%rsi
  4008d8:	e8 43 fc ff ff       	callq  400520 <__isoc99_scanf@plt>
  4008dd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4008e1:	83 f8 02             	cmp    $0x2,%eax
  4008e4:	0f 84 86 00 00 00    	je     400970 <main+0x140>
  4008ea:	83 f8 01             	cmp    $0x1,%eax
  4008ed:	0f 85 11 02 00 00    	jne    400b04 <main+0x2d4>
  4008f3:	bf 15 0c 40 00       	mov    $0x400c15,%edi
  4008f8:	31 c0                	xor    %eax,%eax
  4008fa:	e8 01 fc ff ff       	callq  400500 <printf@plt>
  4008ff:	bf 18 00 00 00       	mov    $0x18,%edi
  400904:	e8 07 fc ff ff       	callq  400510 <malloc@plt>
  400909:	48 89 c3             	mov    %rax,%rbx
  40090c:	bf a4 0b 40 00       	mov    $0x400ba4,%edi
  400911:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400915:	31 c0                	xor    %eax,%eax
  400917:	48 89 de             	mov    %rbx,%rsi
  40091a:	e8 01 fc ff ff       	callq  400520 <__isoc99_scanf@plt>
  40091f:	4d 85 e4             	test   %r12,%r12
  400922:	0f 84 b3 00 00 00    	je     4009db <main+0x1ab>
  400928:	48 8b 33             	mov    (%rbx),%rsi
  40092b:	4c 89 e0             	mov    %r12,%rax
  40092e:	49 3b 34 24          	cmp    (%r12),%rsi
  400932:	0f 8e c7 00 00 00    	jle    4009ff <main+0x1cf>
  400938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40093f:	00 
  400940:	48 89 c1             	mov    %rax,%rcx
  400943:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400947:	48 85 c0             	test   %rax,%rax
  40094a:	0f 84 bb 00 00 00    	je     400a0b <main+0x1db>
  400950:	48 3b 30             	cmp    (%rax),%rsi
  400953:	7f eb                	jg     400940 <main+0x110>
  400955:	4c 39 e0             	cmp    %r12,%rax
  400958:	0f 84 a1 00 00 00    	je     4009ff <main+0x1cf>
  40095e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400962:	e9 9e 00 00 00       	jmpq   400a05 <main+0x1d5>
  400967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40096e:	00 00 
  400970:	bf 3f 0c 40 00       	mov    $0x400c3f,%edi
  400975:	31 c0                	xor    %eax,%eax
  400977:	e8 84 fb ff ff       	callq  400500 <printf@plt>
  40097c:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  400981:	31 c0                	xor    %eax,%eax
  400983:	4c 89 fe             	mov    %r15,%rsi
  400986:	e8 95 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  40098b:	4d 85 e4             	test   %r12,%r12
  40098e:	74 5b                	je     4009eb <main+0x1bb>
  400990:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400995:	49 39 34 24          	cmp    %rsi,(%r12)
  400999:	4c 89 e3             	mov    %r12,%rbx
  40099c:	75 12                	jne    4009b0 <main+0x180>
  40099e:	4c 89 e3             	mov    %r12,%rbx
  4009a1:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  4009a6:	e9 f0 00 00 00       	jmpq   400a9b <main+0x26b>
  4009ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009b0:	48 89 d8             	mov    %rbx,%rax
  4009b3:	48 8b 58 10          	mov    0x10(%rax),%rbx
  4009b7:	48 85 db             	test   %rbx,%rbx
  4009ba:	0f 84 b6 00 00 00    	je     400a76 <main+0x246>
  4009c0:	48 39 33             	cmp    %rsi,(%rbx)
  4009c3:	75 eb                	jne    4009b0 <main+0x180>
  4009c5:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  4009c9:	4c 39 e3             	cmp    %r12,%rbx
  4009cc:	0f 84 c3 00 00 00    	je     400a95 <main+0x265>
  4009d2:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4009d6:	e9 c0 00 00 00       	jmpq   400a9b <main+0x26b>
  4009db:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4009e2:	00 
  4009e3:	48 8b 33             	mov    (%rbx),%rsi
  4009e6:	49 89 dc             	mov    %rbx,%r12
  4009e9:	eb 35                	jmp    400a20 <main+0x1f0>
  4009eb:	bf d3 0b 40 00       	mov    $0x400bd3,%edi
  4009f0:	31 c0                	xor    %eax,%eax
  4009f2:	e8 09 fb ff ff       	callq  400500 <printf@plt>
  4009f7:	45 31 e4             	xor    %r12d,%r12d
  4009fa:	e9 01 01 00 00       	jmpq   400b00 <main+0x2d0>
  4009ff:	4c 89 e0             	mov    %r12,%rax
  400a02:	49 89 dc             	mov    %rbx,%r12
  400a05:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a09:	eb 15                	jmp    400a20 <main+0x1f0>
  400a0b:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a0f:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a16:	00 
  400a17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a1e:	00 00 
  400a20:	83 05 2d 16 20 00 01 	addl   $0x1,0x20162d(%rip)        # 602054 <n>
  400a27:	bf 31 0c 40 00       	mov    $0x400c31,%edi
  400a2c:	31 c0                	xor    %eax,%eax
  400a2e:	e8 cd fa ff ff       	callq  400500 <printf@plt>
  400a33:	4d 85 e4             	test   %r12,%r12
  400a36:	74 58                	je     400a90 <main+0x260>
  400a38:	8b 35 16 16 20 00    	mov    0x201616(%rip),%esi        # 602054 <n>
  400a3e:	bf ab 0b 40 00       	mov    $0x400bab,%edi
  400a43:	31 c0                	xor    %eax,%eax
  400a45:	e8 b6 fa ff ff       	callq  400500 <printf@plt>
  400a4a:	4c 89 e3             	mov    %r12,%rbx
  400a4d:	0f 1f 00             	nopl   (%rax)
  400a50:	48 8b 33             	mov    (%rbx),%rsi
  400a53:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a58:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a5c:	bf c8 0b 40 00       	mov    $0x400bc8,%edi
  400a61:	b0 01                	mov    $0x1,%al
  400a63:	e8 98 fa ff ff       	callq  400500 <printf@plt>
  400a68:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a6c:	48 85 db             	test   %rbx,%rbx
  400a6f:	75 df                	jne    400a50 <main+0x220>
  400a71:	e9 8a 00 00 00       	jmpq   400b00 <main+0x2d0>
  400a76:	bf ee 0b 40 00       	mov    $0x400bee,%edi
  400a7b:	31 c0                	xor    %eax,%eax
  400a7d:	e8 7e fa ff ff       	callq  400500 <printf@plt>
  400a82:	4d 85 e4             	test   %r12,%r12
  400a85:	75 34                	jne    400abb <main+0x28b>
  400a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a8e:	00 00 
  400a90:	45 31 e4             	xor    %r12d,%r12d
  400a93:	eb 6b                	jmp    400b00 <main+0x2d0>
  400a95:	4c 89 e3             	mov    %r12,%rbx
  400a98:	49 89 cc             	mov    %rcx,%r12
  400a9b:	bf e1 0b 40 00       	mov    $0x400be1,%edi
  400aa0:	31 c0                	xor    %eax,%eax
  400aa2:	e8 59 fa ff ff       	callq  400500 <printf@plt>
  400aa7:	83 05 a6 15 20 00 ff 	addl   $0xffffffff,0x2015a6(%rip)        # 602054 <n>
  400aae:	48 89 df             	mov    %rbx,%rdi
  400ab1:	e8 2a fa ff ff       	callq  4004e0 <free@plt>
  400ab6:	4d 85 e4             	test   %r12,%r12
  400ab9:	74 d5                	je     400a90 <main+0x260>
  400abb:	8b 35 93 15 20 00    	mov    0x201593(%rip),%esi        # 602054 <n>
  400ac1:	bf ab 0b 40 00       	mov    $0x400bab,%edi
  400ac6:	31 c0                	xor    %eax,%eax
  400ac8:	e8 33 fa ff ff       	callq  400500 <printf@plt>
  400acd:	4c 89 e3             	mov    %r12,%rbx
  400ad0:	48 8b 33             	mov    (%rbx),%rsi
  400ad3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ad8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400adc:	bf c8 0b 40 00       	mov    $0x400bc8,%edi
  400ae1:	b0 01                	mov    $0x1,%al
  400ae3:	e8 18 fa ff ff       	callq  400500 <printf@plt>
  400ae8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400aec:	48 85 db             	test   %rbx,%rbx
  400aef:	75 df                	jne    400ad0 <main+0x2a0>
  400af1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400af8:	0f 1f 84 00 00 00 00 
  400aff:	00 
  400b00:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b04:	85 c0                	test   %eax,%eax
  400b06:	0f 85 a4 fd ff ff    	jne    4008b0 <main+0x80>
  400b0c:	48 83 c4 18          	add    $0x18,%rsp
  400b10:	5b                   	pop    %rbx
  400b11:	41 5c                	pop    %r12
  400b13:	41 5e                	pop    %r14
  400b15:	41 5f                	pop    %r15
  400b17:	c3                   	retq   
  400b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b1f:	00 

0000000000400b20 <__libc_csu_init>:
  400b20:	41 57                	push   %r15
  400b22:	41 56                	push   %r14
  400b24:	49 89 d7             	mov    %rdx,%r15
  400b27:	41 55                	push   %r13
  400b29:	41 54                	push   %r12
  400b2b:	4c 8d 25 ce 12 20 00 	lea    0x2012ce(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b32:	55                   	push   %rbp
  400b33:	48 8d 2d ce 12 20 00 	lea    0x2012ce(%rip),%rbp        # 601e08 <__init_array_end>
  400b3a:	53                   	push   %rbx
  400b3b:	41 89 fd             	mov    %edi,%r13d
  400b3e:	49 89 f6             	mov    %rsi,%r14
  400b41:	4c 29 e5             	sub    %r12,%rbp
  400b44:	48 83 ec 08          	sub    $0x8,%rsp
  400b48:	48 c1 fd 03          	sar    $0x3,%rbp
  400b4c:	e8 67 f9 ff ff       	callq  4004b8 <_init>
  400b51:	48 85 ed             	test   %rbp,%rbp
  400b54:	74 20                	je     400b76 <__libc_csu_init+0x56>
  400b56:	31 db                	xor    %ebx,%ebx
  400b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b5f:	00 
  400b60:	4c 89 fa             	mov    %r15,%rdx
  400b63:	4c 89 f6             	mov    %r14,%rsi
  400b66:	44 89 ef             	mov    %r13d,%edi
  400b69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b6d:	48 83 c3 01          	add    $0x1,%rbx
  400b71:	48 39 dd             	cmp    %rbx,%rbp
  400b74:	75 ea                	jne    400b60 <__libc_csu_init+0x40>
  400b76:	48 83 c4 08          	add    $0x8,%rsp
  400b7a:	5b                   	pop    %rbx
  400b7b:	5d                   	pop    %rbp
  400b7c:	41 5c                	pop    %r12
  400b7e:	41 5d                	pop    %r13
  400b80:	41 5e                	pop    %r14
  400b82:	41 5f                	pop    %r15
  400b84:	c3                   	retq   
  400b85:	90                   	nop
  400b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b8d:	00 00 00 

0000000000400b90 <__libc_csu_fini>:
  400b90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b94 <_fini>:
  400b94:	48 83 ec 08          	sub    $0x8,%rsp
  400b98:	48 83 c4 08          	add    $0x8,%rsp
  400b9c:	c3                   	retq   
