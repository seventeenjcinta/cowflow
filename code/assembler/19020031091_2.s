
c/19020031091_2.elf:     file format elf64-x86-64


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

00000000004004e0 <puts@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <puts@GLIBC_2.2.5>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <.plt>

00000000004004f0 <printf@plt>:
  4004f0:	ff 25 2a 1b 20 00    	jmpq   *0x201b2a(%rip)        # 602020 <printf@GLIBC_2.2.5>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400500 <malloc@plt>:
  400500:	ff 25 22 1b 20 00    	jmpq   *0x201b22(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400510 <__isoc99_scanf@plt>:
  400510:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602030 <__isoc99_scanf@GLIBC_2.7>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400520 <exit@plt>:
  400520:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602038 <exit@GLIBC_2.2.5>
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
  40053f:	49 c7 c0 00 0d 40 00 	mov    $0x400d00,%r8
  400546:	48 c7 c1 90 0c 40 00 	mov    $0x400c90,%rcx
  40054d:	48 c7 c7 c0 08 40 00 	mov    $0x4008c0,%rdi
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
  400620:	41 57                	push   %r15
  400622:	41 56                	push   %r14
  400624:	53                   	push   %rbx
  400625:	bf 18 00 00 00       	mov    $0x18,%edi
  40062a:	e8 d1 fe ff ff       	callq  400500 <malloc@plt>
  40062f:	49 89 c7             	mov    %rax,%r15
  400632:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400636:	45 31 f6             	xor    %r14d,%r14d
  400639:	bf 14 0d 40 00       	mov    $0x400d14,%edi
  40063e:	31 c0                	xor    %eax,%eax
  400640:	4c 89 fe             	mov    %r15,%rsi
  400643:	e8 c8 fe ff ff       	callq  400510 <__isoc99_scanf@plt>
  400648:	49 83 3f 00          	cmpq   $0x0,(%r15)
  40064c:	74 5e                	je     4006ac <create+0x8c>
  40064e:	4c 89 f8             	mov    %r15,%rax
  400651:	4c 89 fb             	mov    %r15,%rbx
  400654:	31 c9                	xor    %ecx,%ecx
  400656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40065d:	00 00 00 
  400660:	49 89 df             	mov    %rbx,%r15
  400663:	8b 15 eb 19 20 00    	mov    0x2019eb(%rip),%edx        # 602054 <n>
  400669:	8d 72 01             	lea    0x1(%rdx),%esi
  40066c:	89 35 e2 19 20 00    	mov    %esi,0x2019e2(%rip)        # 602054 <n>
  400672:	4d 89 fe             	mov    %r15,%r14
  400675:	85 d2                	test   %edx,%edx
  400677:	74 07                	je     400680 <create+0x60>
  400679:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40067d:	49 89 ce             	mov    %rcx,%r14
  400680:	bf 18 00 00 00       	mov    $0x18,%edi
  400685:	e8 76 fe ff ff       	callq  400500 <malloc@plt>
  40068a:	48 89 c3             	mov    %rax,%rbx
  40068d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400691:	bf 14 0d 40 00       	mov    $0x400d14,%edi
  400696:	31 c0                	xor    %eax,%eax
  400698:	48 89 de             	mov    %rbx,%rsi
  40069b:	e8 70 fe ff ff       	callq  400510 <__isoc99_scanf@plt>
  4006a0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4006a4:	4c 89 f8             	mov    %r15,%rax
  4006a7:	4c 89 f1             	mov    %r14,%rcx
  4006aa:	75 b4                	jne    400660 <create+0x40>
  4006ac:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4006b3:	00 
  4006b4:	4c 89 f0             	mov    %r14,%rax
  4006b7:	5b                   	pop    %rbx
  4006b8:	41 5e                	pop    %r14
  4006ba:	41 5f                	pop    %r15
  4006bc:	c3                   	retq   
  4006bd:	0f 1f 00             	nopl   (%rax)

00000000004006c0 <print>:
  4006c0:	53                   	push   %rbx
  4006c1:	48 89 fb             	mov    %rdi,%rbx
  4006c4:	48 85 db             	test   %rbx,%rbx
  4006c7:	74 3a                	je     400703 <print+0x43>
  4006c9:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  4006ce:	e8 0d fe ff ff       	callq  4004e0 <puts@plt>
  4006d3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006da:	84 00 00 00 00 00 
  4006e0:	48 8b 33             	mov    (%rbx),%rsi
  4006e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006ec:	bf 1b 0d 40 00       	mov    $0x400d1b,%edi
  4006f1:	b0 01                	mov    $0x1,%al
  4006f3:	e8 f8 fd ff ff       	callq  4004f0 <printf@plt>
  4006f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006fc:	48 85 db             	test   %rbx,%rbx
  4006ff:	75 df                	jne    4006e0 <print+0x20>
  400701:	5b                   	pop    %rbx
  400702:	c3                   	retq   
  400703:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400708:	5b                   	pop    %rbx
  400709:	e9 d2 fd ff ff       	jmpq   4004e0 <puts@plt>
  40070e:	66 90                	xchg   %ax,%ax

0000000000400710 <sort>:
  400710:	55                   	push   %rbp
  400711:	41 57                	push   %r15
  400713:	41 56                	push   %r14
  400715:	41 54                	push   %r12
  400717:	53                   	push   %rbx
  400718:	44 8b 15 35 19 20 00 	mov    0x201935(%rip),%r10d        # 602054 <n>
  40071f:	41 83 fa 02          	cmp    $0x2,%r10d
  400723:	0f 8c bf 00 00 00    	jl     4007e8 <sort+0xd8>
  400729:	45 8d 4a ff          	lea    -0x1(%r10),%r9d
  40072d:	45 8d 42 fe          	lea    -0x2(%r10),%r8d
  400731:	be 01 00 00 00       	mov    $0x1,%esi
  400736:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40073c:	45 29 d6             	sub    %r10d,%r14d
  40073f:	45 31 e4             	xor    %r12d,%r12d
  400742:	45 89 cf             	mov    %r9d,%r15d
  400745:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40074c:	00 00 00 00 
  400750:	41 39 f2             	cmp    %esi,%r10d
  400753:	7e 7b                	jle    4007d0 <sort+0xc0>
  400755:	45 89 cb             	mov    %r9d,%r11d
  400758:	45 29 e3             	sub    %r12d,%r11d
  40075b:	48 8b 1f             	mov    (%rdi),%rbx
  40075e:	45 39 e0             	cmp    %r12d,%r8d
  400761:	75 0d                	jne    400770 <sort+0x60>
  400763:	48 89 fa             	mov    %rdi,%rdx
  400766:	41 f6 c3 01          	test   $0x1,%r11b
  40076a:	75 49                	jne    4007b5 <sort+0xa5>
  40076c:	eb 62                	jmp    4007d0 <sort+0xc0>
  40076e:	66 90                	xchg   %ax,%ax
  400770:	44 89 f8             	mov    %r15d,%eax
  400773:	24 01                	and    $0x1,%al
  400775:	0f b6 e8             	movzbl %al,%ebp
  400778:	44 01 f5             	add    %r14d,%ebp
  40077b:	48 89 fa             	mov    %rdi,%rdx
  40077e:	66 90                	xchg   %ax,%ax
  400780:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400784:	48 8b 08             	mov    (%rax),%rcx
  400787:	48 39 cb             	cmp    %rcx,%rbx
  40078a:	7e 09                	jle    400795 <sort+0x85>
  40078c:	48 89 0a             	mov    %rcx,(%rdx)
  40078f:	48 63 cb             	movslq %ebx,%rcx
  400792:	48 89 08             	mov    %rcx,(%rax)
  400795:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400799:	48 8b 1a             	mov    (%rdx),%rbx
  40079c:	48 39 d9             	cmp    %rbx,%rcx
  40079f:	7e 09                	jle    4007aa <sort+0x9a>
  4007a1:	48 89 18             	mov    %rbx,(%rax)
  4007a4:	48 63 d9             	movslq %ecx,%rbx
  4007a7:	48 89 1a             	mov    %rbx,(%rdx)
  4007aa:	83 c5 02             	add    $0x2,%ebp
  4007ad:	75 d1                	jne    400780 <sort+0x70>
  4007af:	41 f6 c3 01          	test   $0x1,%r11b
  4007b3:	74 1b                	je     4007d0 <sort+0xc0>
  4007b5:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4007b9:	48 8b 08             	mov    (%rax),%rcx
  4007bc:	48 39 cb             	cmp    %rcx,%rbx
  4007bf:	7e 0f                	jle    4007d0 <sort+0xc0>
  4007c1:	48 89 0a             	mov    %rcx,(%rdx)
  4007c4:	48 63 cb             	movslq %ebx,%rcx
  4007c7:	48 89 08             	mov    %rcx,(%rax)
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007d0:	83 c6 01             	add    $0x1,%esi
  4007d3:	41 83 c4 01          	add    $0x1,%r12d
  4007d7:	41 83 c6 01          	add    $0x1,%r14d
  4007db:	41 80 c7 01          	add    $0x1,%r15b
  4007df:	41 39 f2             	cmp    %esi,%r10d
  4007e2:	0f 8f 68 ff ff ff    	jg     400750 <sort+0x40>
  4007e8:	5b                   	pop    %rbx
  4007e9:	41 5c                	pop    %r12
  4007eb:	41 5e                	pop    %r14
  4007ed:	41 5f                	pop    %r15
  4007ef:	5d                   	pop    %rbp
  4007f0:	c3                   	retq   
  4007f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007f8:	0f 1f 84 00 00 00 00 
  4007ff:	00 

0000000000400800 <insert>:
  400800:	48 85 ff             	test   %rdi,%rdi
  400803:	74 27                	je     40082c <insert+0x2c>
  400805:	48 8b 0e             	mov    (%rsi),%rcx
  400808:	48 3b 0f             	cmp    (%rdi),%rcx
  40080b:	7e 23                	jle    400830 <insert+0x30>
  40080d:	48 89 f8             	mov    %rdi,%rax
  400810:	48 89 c2             	mov    %rax,%rdx
  400813:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400817:	48 85 c0             	test   %rax,%rax
  40081a:	74 29                	je     400845 <insert+0x45>
  40081c:	48 3b 08             	cmp    (%rax),%rcx
  40081f:	7f ef                	jg     400810 <insert+0x10>
  400821:	48 39 f8             	cmp    %rdi,%rax
  400824:	74 0d                	je     400833 <insert+0x33>
  400826:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40082a:	eb 0a                	jmp    400836 <insert+0x36>
  40082c:	31 c0                	xor    %eax,%eax
  40082e:	eb 03                	jmp    400833 <insert+0x33>
  400830:	48 89 f8             	mov    %rdi,%rax
  400833:	48 89 f7             	mov    %rsi,%rdi
  400836:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40083a:	83 05 13 18 20 00 01 	addl   $0x1,0x201813(%rip)        # 602054 <n>
  400841:	48 89 f8             	mov    %rdi,%rax
  400844:	c3                   	retq   
  400845:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400849:	31 c0                	xor    %eax,%eax
  40084b:	eb e9                	jmp    400836 <insert+0x36>
  40084d:	0f 1f 00             	nopl   (%rax)

0000000000400850 <delete>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	48 85 db             	test   %rbx,%rbx
  400857:	74 0b                	je     400864 <delete+0x14>
  400859:	48 39 33             	cmp    %rsi,(%rbx)
  40085c:	75 12                	jne    400870 <delete+0x20>
  40085e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400862:	eb 4b                	jmp    4008af <delete+0x5f>
  400864:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400869:	e8 72 fc ff ff       	callq  4004e0 <puts@plt>
  40086e:	eb 46                	jmp    4008b6 <delete+0x66>
  400870:	48 89 d9             	mov    %rbx,%rcx
  400873:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40087a:	84 00 00 00 00 00 
  400880:	48 89 c8             	mov    %rcx,%rax
  400883:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400887:	48 85 c9             	test   %rcx,%rcx
  40088a:	74 14                	je     4008a0 <delete+0x50>
  40088c:	48 39 31             	cmp    %rsi,(%rcx)
  40088f:	75 ef                	jne    400880 <delete+0x30>
  400891:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400895:	48 39 d9             	cmp    %rbx,%rcx
  400898:	74 12                	je     4008ac <delete+0x5c>
  40089a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40089e:	eb 0f                	jmp    4008af <delete+0x5f>
  4008a0:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  4008a5:	e8 36 fc ff ff       	callq  4004e0 <puts@plt>
  4008aa:	eb 03                	jmp    4008af <delete+0x5f>
  4008ac:	48 89 d3             	mov    %rdx,%rbx
  4008af:	83 05 9e 17 20 00 ff 	addl   $0xffffffff,0x20179e(%rip)        # 602054 <n>
  4008b6:	48 89 d8             	mov    %rbx,%rax
  4008b9:	5b                   	pop    %rbx
  4008ba:	c3                   	retq   
  4008bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004008c0 <main>:
  4008c0:	55                   	push   %rbp
  4008c1:	41 57                	push   %r15
  4008c3:	41 56                	push   %r14
  4008c5:	41 54                	push   %r12
  4008c7:	53                   	push   %rbx
  4008c8:	48 83 ec 10          	sub    $0x10,%rsp
  4008cc:	bf f0 0d 40 00       	mov    $0x400df0,%edi
  4008d1:	e8 0a fc ff ff       	callq  4004e0 <puts@plt>
  4008d6:	bf 18 00 00 00       	mov    $0x18,%edi
  4008db:	e8 20 fc ff ff       	callq  400500 <malloc@plt>
  4008e0:	49 89 c6             	mov    %rax,%r14
  4008e3:	49 8d 56 08          	lea    0x8(%r14),%rdx
  4008e7:	45 31 e4             	xor    %r12d,%r12d
  4008ea:	bf 14 0d 40 00       	mov    $0x400d14,%edi
  4008ef:	31 c0                	xor    %eax,%eax
  4008f1:	4c 89 f6             	mov    %r14,%rsi
  4008f4:	e8 17 fc ff ff       	callq  400510 <__isoc99_scanf@plt>
  4008f9:	49 83 3e 00          	cmpq   $0x0,(%r14)
  4008fd:	74 5d                	je     40095c <main+0x9c>
  4008ff:	4c 89 f0             	mov    %r14,%rax
  400902:	4c 89 f3             	mov    %r14,%rbx
  400905:	31 c9                	xor    %ecx,%ecx
  400907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40090e:	00 00 
  400910:	49 89 de             	mov    %rbx,%r14
  400913:	8b 15 3b 17 20 00    	mov    0x20173b(%rip),%edx        # 602054 <n>
  400919:	8d 72 01             	lea    0x1(%rdx),%esi
  40091c:	89 35 32 17 20 00    	mov    %esi,0x201732(%rip)        # 602054 <n>
  400922:	4d 89 f4             	mov    %r14,%r12
  400925:	85 d2                	test   %edx,%edx
  400927:	74 07                	je     400930 <main+0x70>
  400929:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40092d:	49 89 cc             	mov    %rcx,%r12
  400930:	bf 18 00 00 00       	mov    $0x18,%edi
  400935:	e8 c6 fb ff ff       	callq  400500 <malloc@plt>
  40093a:	48 89 c3             	mov    %rax,%rbx
  40093d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400941:	bf 14 0d 40 00       	mov    $0x400d14,%edi
  400946:	31 c0                	xor    %eax,%eax
  400948:	48 89 de             	mov    %rbx,%rsi
  40094b:	e8 c0 fb ff ff       	callq  400510 <__isoc99_scanf@plt>
  400950:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400954:	4c 89 f0             	mov    %r14,%rax
  400957:	4c 89 e1             	mov    %r12,%rcx
  40095a:	75 b4                	jne    400910 <main+0x50>
  40095c:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400963:	00 
  400964:	44 8b 15 e9 16 20 00 	mov    0x2016e9(%rip),%r10d        # 602054 <n>
  40096b:	41 83 fa 02          	cmp    $0x2,%r10d
  40096f:	0f 8c ab 00 00 00    	jl     400a20 <main+0x160>
  400975:	45 8d 4a ff          	lea    -0x1(%r10),%r9d
  400979:	45 8d 42 fe          	lea    -0x2(%r10),%r8d
  40097d:	be 01 00 00 00       	mov    $0x1,%esi
  400982:	41 be 01 00 00 00    	mov    $0x1,%r14d
  400988:	45 29 d6             	sub    %r10d,%r14d
  40098b:	31 db                	xor    %ebx,%ebx
  40098d:	45 89 cf             	mov    %r9d,%r15d
  400990:	45 89 cb             	mov    %r9d,%r11d
  400993:	41 29 db             	sub    %ebx,%r11d
  400996:	49 8b 04 24          	mov    (%r12),%rax
  40099a:	41 39 d8             	cmp    %ebx,%r8d
  40099d:	75 11                	jne    4009b0 <main+0xf0>
  40099f:	4c 89 e1             	mov    %r12,%rcx
  4009a2:	41 f6 c3 01          	test   $0x1,%r11b
  4009a6:	75 4d                	jne    4009f5 <main+0x135>
  4009a8:	eb 5f                	jmp    400a09 <main+0x149>
  4009aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4009b0:	44 89 f9             	mov    %r15d,%ecx
  4009b3:	80 e1 01             	and    $0x1,%cl
  4009b6:	0f b6 e9             	movzbl %cl,%ebp
  4009b9:	44 01 f5             	add    %r14d,%ebp
  4009bc:	4c 89 e1             	mov    %r12,%rcx
  4009bf:	90                   	nop
  4009c0:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  4009c4:	48 8b 17             	mov    (%rdi),%rdx
  4009c7:	48 39 d0             	cmp    %rdx,%rax
  4009ca:	7e 09                	jle    4009d5 <main+0x115>
  4009cc:	48 89 11             	mov    %rdx,(%rcx)
  4009cf:	48 63 d0             	movslq %eax,%rdx
  4009d2:	48 89 17             	mov    %rdx,(%rdi)
  4009d5:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  4009d9:	48 8b 01             	mov    (%rcx),%rax
  4009dc:	48 39 c2             	cmp    %rax,%rdx
  4009df:	7e 09                	jle    4009ea <main+0x12a>
  4009e1:	48 89 07             	mov    %rax,(%rdi)
  4009e4:	48 63 c2             	movslq %edx,%rax
  4009e7:	48 89 01             	mov    %rax,(%rcx)
  4009ea:	83 c5 02             	add    $0x2,%ebp
  4009ed:	75 d1                	jne    4009c0 <main+0x100>
  4009ef:	41 f6 c3 01          	test   $0x1,%r11b
  4009f3:	74 14                	je     400a09 <main+0x149>
  4009f5:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4009f9:	48 8b 3a             	mov    (%rdx),%rdi
  4009fc:	48 39 f8             	cmp    %rdi,%rax
  4009ff:	7e 08                	jle    400a09 <main+0x149>
  400a01:	48 89 39             	mov    %rdi,(%rcx)
  400a04:	48 98                	cltq   
  400a06:	48 89 02             	mov    %rax,(%rdx)
  400a09:	83 c6 01             	add    $0x1,%esi
  400a0c:	83 c3 01             	add    $0x1,%ebx
  400a0f:	41 83 c6 01          	add    $0x1,%r14d
  400a13:	41 80 c7 01          	add    $0x1,%r15b
  400a17:	44 39 d6             	cmp    %r10d,%esi
  400a1a:	0f 85 70 ff ff ff    	jne    400990 <main+0xd0>
  400a20:	4d 85 e4             	test   %r12,%r12
  400a23:	74 3e                	je     400a63 <main+0x1a3>
  400a25:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400a2a:	e8 b1 fa ff ff       	callq  4004e0 <puts@plt>
  400a2f:	4c 89 e3             	mov    %r12,%rbx
  400a32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a39:	1f 84 00 00 00 00 00 
  400a40:	48 8b 33             	mov    (%rbx),%rsi
  400a43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a4c:	bf 1b 0d 40 00       	mov    $0x400d1b,%edi
  400a51:	b0 01                	mov    $0x1,%al
  400a53:	e8 98 fa ff ff       	callq  4004f0 <printf@plt>
  400a58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a5c:	48 85 db             	test   %rbx,%rbx
  400a5f:	75 df                	jne    400a40 <main+0x180>
  400a61:	eb 0a                	jmp    400a6d <main+0x1ad>
  400a63:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400a68:	e8 73 fa ff ff       	callq  4004e0 <puts@plt>
  400a6d:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400a72:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400a77:	eb 14                	jmp    400a8d <main+0x1cd>
  400a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a80:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400a85:	e8 56 fa ff ff       	callq  4004e0 <puts@plt>
  400a8a:	45 31 e4             	xor    %r12d,%r12d
  400a8d:	bf 20 0e 40 00       	mov    $0x400e20,%edi
  400a92:	e8 49 fa ff ff       	callq  4004e0 <puts@plt>
  400a97:	bf 40 0e 40 00       	mov    $0x400e40,%edi
  400a9c:	e8 3f fa ff ff       	callq  4004e0 <puts@plt>
  400aa1:	bf 25 0d 40 00       	mov    $0x400d25,%edi
  400aa6:	31 c0                	xor    %eax,%eax
  400aa8:	e8 43 fa ff ff       	callq  4004f0 <printf@plt>
  400aad:	bf 38 0d 40 00       	mov    $0x400d38,%edi
  400ab2:	31 c0                	xor    %eax,%eax
  400ab4:	4c 89 fe             	mov    %r15,%rsi
  400ab7:	e8 54 fa ff ff       	callq  400510 <__isoc99_scanf@plt>
  400abc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400ac0:	83 f8 01             	cmp    $0x1,%eax
  400ac3:	0f 84 87 00 00 00    	je     400b50 <main+0x290>
  400ac9:	83 f8 02             	cmp    $0x2,%eax
  400acc:	74 12                	je     400ae0 <main+0x220>
  400ace:	85 c0                	test   %eax,%eax
  400ad0:	75 bb                	jne    400a8d <main+0x1cd>
  400ad2:	e9 af 01 00 00       	jmpq   400c86 <main+0x3c6>
  400ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400ade:	00 00 
  400ae0:	bf 62 0d 40 00       	mov    $0x400d62,%edi
  400ae5:	31 c0                	xor    %eax,%eax
  400ae7:	e8 04 fa ff ff       	callq  4004f0 <printf@plt>
  400aec:	bf 8b 0d 40 00       	mov    $0x400d8b,%edi
  400af1:	31 c0                	xor    %eax,%eax
  400af3:	4c 89 f6             	mov    %r14,%rsi
  400af6:	e8 15 fa ff ff       	callq  400510 <__isoc99_scanf@plt>
  400afb:	4d 85 e4             	test   %r12,%r12
  400afe:	0f 84 a8 00 00 00    	je     400bac <main+0x2ec>
  400b04:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400b09:	49 39 04 24          	cmp    %rax,(%r12)
  400b0d:	4c 89 e1             	mov    %r12,%rcx
  400b10:	75 0e                	jne    400b20 <main+0x260>
  400b12:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400b17:	e9 24 01 00 00       	jmpq   400c40 <main+0x380>
  400b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b20:	48 89 ca             	mov    %rcx,%rdx
  400b23:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400b27:	48 85 c9             	test   %rcx,%rcx
  400b2a:	0f 84 a7 00 00 00    	je     400bd7 <main+0x317>
  400b30:	48 39 01             	cmp    %rax,(%rcx)
  400b33:	75 eb                	jne    400b20 <main+0x260>
  400b35:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400b39:	4c 39 e1             	cmp    %r12,%rcx
  400b3c:	0f 84 f4 00 00 00    	je     400c36 <main+0x376>
  400b42:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400b46:	e9 f5 00 00 00       	jmpq   400c40 <main+0x380>
  400b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b50:	bf 3b 0d 40 00       	mov    $0x400d3b,%edi
  400b55:	31 c0                	xor    %eax,%eax
  400b57:	e8 94 f9 ff ff       	callq  4004f0 <printf@plt>
  400b5c:	bf 18 00 00 00       	mov    $0x18,%edi
  400b61:	e8 9a f9 ff ff       	callq  400500 <malloc@plt>
  400b66:	48 89 c3             	mov    %rax,%rbx
  400b69:	bf 14 0d 40 00       	mov    $0x400d14,%edi
  400b6e:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400b72:	31 c0                	xor    %eax,%eax
  400b74:	48 89 de             	mov    %rbx,%rsi
  400b77:	e8 94 f9 ff ff       	callq  400510 <__isoc99_scanf@plt>
  400b7c:	4d 85 e4             	test   %r12,%r12
  400b7f:	74 3a                	je     400bbb <main+0x2fb>
  400b81:	48 8b 13             	mov    (%rbx),%rdx
  400b84:	4c 89 e0             	mov    %r12,%rax
  400b87:	49 3b 14 24          	cmp    (%r12),%rdx
  400b8b:	7e 42                	jle    400bcf <main+0x30f>
  400b8d:	0f 1f 00             	nopl   (%rax)
  400b90:	48 89 c1             	mov    %rax,%rcx
  400b93:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400b97:	48 85 c0             	test   %rax,%rax
  400b9a:	74 47                	je     400be3 <main+0x323>
  400b9c:	48 3b 10             	cmp    (%rax),%rdx
  400b9f:	7f ef                	jg     400b90 <main+0x2d0>
  400ba1:	4c 39 e0             	cmp    %r12,%rax
  400ba4:	74 29                	je     400bcf <main+0x30f>
  400ba6:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400baa:	eb 3d                	jmp    400be9 <main+0x329>
  400bac:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400bb1:	e8 2a f9 ff ff       	callq  4004e0 <puts@plt>
  400bb6:	e9 c5 fe ff ff       	jmpq   400a80 <main+0x1c0>
  400bbb:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400bc2:	00 
  400bc3:	83 05 8a 14 20 00 01 	addl   $0x1,0x20148a(%rip)        # 602054 <n>
  400bca:	49 89 dc             	mov    %rbx,%r12
  400bcd:	eb 2e                	jmp    400bfd <main+0x33d>
  400bcf:	4c 89 e0             	mov    %r12,%rax
  400bd2:	49 89 dc             	mov    %rbx,%r12
  400bd5:	eb 12                	jmp    400be9 <main+0x329>
  400bd7:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  400bdc:	e8 ff f8 ff ff       	callq  4004e0 <puts@plt>
  400be1:	eb 5d                	jmp    400c40 <main+0x380>
  400be3:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400be7:	31 c0                	xor    %eax,%eax
  400be9:	83 05 64 14 20 00 01 	addl   $0x1,0x201464(%rip)        # 602054 <n>
  400bf0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400bf4:	4d 85 e4             	test   %r12,%r12
  400bf7:	0f 84 83 fe ff ff    	je     400a80 <main+0x1c0>
  400bfd:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400c02:	e8 d9 f8 ff ff       	callq  4004e0 <puts@plt>
  400c07:	4c 89 e3             	mov    %r12,%rbx
  400c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400c10:	48 8b 33             	mov    (%rbx),%rsi
  400c13:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c1c:	bf 1b 0d 40 00       	mov    $0x400d1b,%edi
  400c21:	b0 01                	mov    $0x1,%al
  400c23:	e8 c8 f8 ff ff       	callq  4004f0 <printf@plt>
  400c28:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c2c:	48 85 db             	test   %rbx,%rbx
  400c2f:	75 df                	jne    400c10 <main+0x350>
  400c31:	e9 57 fe ff ff       	jmpq   400a8d <main+0x1cd>
  400c36:	49 89 c4             	mov    %rax,%r12
  400c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400c40:	83 05 0d 14 20 00 ff 	addl   $0xffffffff,0x20140d(%rip)        # 602054 <n>
  400c47:	4d 85 e4             	test   %r12,%r12
  400c4a:	0f 84 30 fe ff ff    	je     400a80 <main+0x1c0>
  400c50:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400c55:	e8 86 f8 ff ff       	callq  4004e0 <puts@plt>
  400c5a:	4c 89 e3             	mov    %r12,%rbx
  400c5d:	0f 1f 00             	nopl   (%rax)
  400c60:	48 8b 33             	mov    (%rbx),%rsi
  400c63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c6c:	bf 1b 0d 40 00       	mov    $0x400d1b,%edi
  400c71:	b0 01                	mov    $0x1,%al
  400c73:	e8 78 f8 ff ff       	callq  4004f0 <printf@plt>
  400c78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c7c:	48 85 db             	test   %rbx,%rbx
  400c7f:	75 df                	jne    400c60 <main+0x3a0>
  400c81:	e9 07 fe ff ff       	jmpq   400a8d <main+0x1cd>
  400c86:	31 ff                	xor    %edi,%edi
  400c88:	e8 93 f8 ff ff       	callq  400520 <exit@plt>
  400c8d:	0f 1f 00             	nopl   (%rax)

0000000000400c90 <__libc_csu_init>:
  400c90:	41 57                	push   %r15
  400c92:	41 56                	push   %r14
  400c94:	49 89 d7             	mov    %rdx,%r15
  400c97:	41 55                	push   %r13
  400c99:	41 54                	push   %r12
  400c9b:	4c 8d 25 5e 11 20 00 	lea    0x20115e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ca2:	55                   	push   %rbp
  400ca3:	48 8d 2d 5e 11 20 00 	lea    0x20115e(%rip),%rbp        # 601e08 <__init_array_end>
  400caa:	53                   	push   %rbx
  400cab:	41 89 fd             	mov    %edi,%r13d
  400cae:	49 89 f6             	mov    %rsi,%r14
  400cb1:	4c 29 e5             	sub    %r12,%rbp
  400cb4:	48 83 ec 08          	sub    $0x8,%rsp
  400cb8:	48 c1 fd 03          	sar    $0x3,%rbp
  400cbc:	e8 f7 f7 ff ff       	callq  4004b8 <_init>
  400cc1:	48 85 ed             	test   %rbp,%rbp
  400cc4:	74 20                	je     400ce6 <__libc_csu_init+0x56>
  400cc6:	31 db                	xor    %ebx,%ebx
  400cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400ccf:	00 
  400cd0:	4c 89 fa             	mov    %r15,%rdx
  400cd3:	4c 89 f6             	mov    %r14,%rsi
  400cd6:	44 89 ef             	mov    %r13d,%edi
  400cd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400cdd:	48 83 c3 01          	add    $0x1,%rbx
  400ce1:	48 39 dd             	cmp    %rbx,%rbp
  400ce4:	75 ea                	jne    400cd0 <__libc_csu_init+0x40>
  400ce6:	48 83 c4 08          	add    $0x8,%rsp
  400cea:	5b                   	pop    %rbx
  400ceb:	5d                   	pop    %rbp
  400cec:	41 5c                	pop    %r12
  400cee:	41 5d                	pop    %r13
  400cf0:	41 5e                	pop    %r14
  400cf2:	41 5f                	pop    %r15
  400cf4:	c3                   	retq   
  400cf5:	90                   	nop
  400cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400cfd:	00 00 00 

0000000000400d00 <__libc_csu_fini>:
  400d00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d04 <_fini>:
  400d04:	48 83 ec 08          	sub    $0x8,%rsp
  400d08:	48 83 c4 08          	add    $0x8,%rsp
  400d0c:	c3                   	retq   
