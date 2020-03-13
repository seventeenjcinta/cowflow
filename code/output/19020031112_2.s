
input/19020031112_2.elf:     file format elf64-x86-64


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

00000000004004e0 <putchar@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <putchar@GLIBC_2.2.5>
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
  40053f:	49 c7 c0 90 0c 40 00 	mov    $0x400c90,%r8
  400546:	48 c7 c1 20 0c 40 00 	mov    $0x400c20,%rcx
  40054d:	48 c7 c7 b0 08 40 00 	mov    $0x4008b0,%rdi
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

0000000000400620 <build>:
  400620:	53                   	push   %rbx
  400621:	bf 10 00 00 00       	mov    $0x10,%edi
  400626:	e8 e5 fe ff ff       	callq  400510 <malloc@plt>
  40062b:	48 89 c1             	mov    %rax,%rcx
  40062e:	48 89 0d 33 1a 20 00 	mov    %rcx,0x201a33(%rip)        # 602068 <p2>
  400635:	48 89 0d 3c 1a 20 00 	mov    %rcx,0x201a3c(%rip)        # 602078 <p1>
  40063c:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400641:	48 8d 51 04          	lea    0x4(%rcx),%rdx
  400645:	31 c0                	xor    %eax,%eax
  400647:	48 89 ce             	mov    %rcx,%rsi
  40064a:	e8 d1 fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  40064f:	48 8b 05 22 1a 20 00 	mov    0x201a22(%rip),%rax        # 602078 <p1>
  400656:	83 38 00             	cmpl   $0x0,(%rax)
  400659:	74 62                	je     4006bd <build+0x9d>
  40065b:	bb 60 20 60 00       	mov    $0x602060,%ebx
  400660:	8b 0d f2 19 20 00    	mov    0x2019f2(%rip),%ecx        # 602058 <n>
  400666:	8d 51 01             	lea    0x1(%rcx),%edx
  400669:	89 15 e9 19 20 00    	mov    %edx,0x2019e9(%rip)        # 602058 <n>
  40066f:	48 8b 15 f2 19 20 00 	mov    0x2019f2(%rip),%rdx        # 602068 <p2>
  400676:	48 83 c2 08          	add    $0x8,%rdx
  40067a:	85 c9                	test   %ecx,%ecx
  40067c:	48 0f 44 d3          	cmove  %rbx,%rdx
  400680:	48 89 02             	mov    %rax,(%rdx)
  400683:	48 89 05 de 19 20 00 	mov    %rax,0x2019de(%rip)        # 602068 <p2>
  40068a:	bf 10 00 00 00       	mov    $0x10,%edi
  40068f:	e8 7c fe ff ff       	callq  400510 <malloc@plt>
  400694:	48 89 c1             	mov    %rax,%rcx
  400697:	48 89 0d da 19 20 00 	mov    %rcx,0x2019da(%rip)        # 602078 <p1>
  40069e:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4006a3:	48 8d 51 04          	lea    0x4(%rcx),%rdx
  4006a7:	31 c0                	xor    %eax,%eax
  4006a9:	48 89 ce             	mov    %rcx,%rsi
  4006ac:	e8 6f fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  4006b1:	48 8b 05 c0 19 20 00 	mov    0x2019c0(%rip),%rax        # 602078 <p1>
  4006b8:	83 38 00             	cmpl   $0x0,(%rax)
  4006bb:	75 a3                	jne    400660 <build+0x40>
  4006bd:	5b                   	pop    %rbx
  4006be:	c3                   	retq   
  4006bf:	90                   	nop

00000000004006c0 <cha>:
  4006c0:	50                   	push   %rax
  4006c1:	48 8b 05 98 19 20 00 	mov    0x201998(%rip),%rax        # 602060 <head>
  4006c8:	48 89 05 b1 19 20 00 	mov    %rax,0x2019b1(%rip)        # 602080 <p3>
  4006cf:	bf 10 00 00 00       	mov    $0x10,%edi
  4006d4:	e8 37 fe ff ff       	callq  400510 <malloc@plt>
  4006d9:	48 89 c1             	mov    %rax,%rcx
  4006dc:	48 89 0d 8d 19 20 00 	mov    %rcx,0x20198d(%rip)        # 602070 <p4>
  4006e3:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4006e8:	48 8d 51 04          	lea    0x4(%rcx),%rdx
  4006ec:	31 c0                	xor    %eax,%eax
  4006ee:	48 89 ce             	mov    %rcx,%rsi
  4006f1:	e8 2a fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  4006f6:	48 8b 05 73 19 20 00 	mov    0x201973(%rip),%rax        # 602070 <p4>
  4006fd:	8b 10                	mov    (%rax),%edx
  4006ff:	48 8b 35 7a 19 20 00 	mov    0x20197a(%rip),%rsi        # 602080 <p3>
  400706:	3b 16                	cmp    (%rsi),%edx
  400708:	7e 26                	jle    400730 <cha+0x70>
  40070a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400710:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  400714:	48 85 c9             	test   %rcx,%rcx
  400717:	74 3e                	je     400757 <cha+0x97>
  400719:	48 89 35 68 19 20 00 	mov    %rsi,0x201968(%rip)        # 602088 <p5>
  400720:	48 89 0d 59 19 20 00 	mov    %rcx,0x201959(%rip)        # 602080 <p3>
  400727:	48 89 ce             	mov    %rcx,%rsi
  40072a:	3b 11                	cmp    (%rcx),%edx
  40072c:	7f e2                	jg     400710 <cha+0x50>
  40072e:	eb 03                	jmp    400733 <cha+0x73>
  400730:	48 89 f1             	mov    %rsi,%rcx
  400733:	ba 60 20 60 00       	mov    $0x602060,%edx
  400738:	48 8b 35 49 19 20 00 	mov    0x201949(%rip),%rsi        # 602088 <p5>
  40073f:	48 83 c6 08          	add    $0x8,%rsi
  400743:	48 39 0d 16 19 20 00 	cmp    %rcx,0x201916(%rip)        # 602060 <head>
  40074a:	48 0f 44 f2          	cmove  %rdx,%rsi
  40074e:	48 89 06             	mov    %rax,(%rsi)
  400751:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400755:	eb 0c                	jmp    400763 <cha+0xa3>
  400757:	48 89 46 08          	mov    %rax,0x8(%rsi)
  40075b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400762:	00 
  400763:	83 05 ee 18 20 00 01 	addl   $0x1,0x2018ee(%rip)        # 602058 <n>
  40076a:	58                   	pop    %rax
  40076b:	c3                   	retq   
  40076c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400770 <discard>:
  400770:	50                   	push   %rax
  400771:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400776:	e8 75 fd ff ff       	callq  4004f0 <puts@plt>
  40077b:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  400780:	bf a9 0c 40 00       	mov    $0x400ca9,%edi
  400785:	31 c0                	xor    %eax,%eax
  400787:	e8 94 fd ff ff       	callq  400520 <__isoc99_scanf@plt>
  40078c:	4c 8b 05 cd 18 20 00 	mov    0x2018cd(%rip),%r8        # 602060 <head>
  400793:	4c 89 05 d6 18 20 00 	mov    %r8,0x2018d6(%rip)        # 602070 <p4>
  40079a:	4c 89 05 df 18 20 00 	mov    %r8,0x2018df(%rip)        # 602080 <p3>
  4007a1:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
  4007a5:	41 8b 38             	mov    (%r8),%edi
  4007a8:	41 89 c9             	mov    %ecx,%r9d
  4007ab:	4c 89 c6             	mov    %r8,%rsi
  4007ae:	4c 89 c0             	mov    %r8,%rax
  4007b1:	39 f9                	cmp    %edi,%ecx
  4007b3:	74 39                	je     4007ee <discard+0x7e>
  4007b5:	4c 89 c6             	mov    %r8,%rsi
  4007b8:	4c 89 c2             	mov    %r8,%rdx
  4007bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007c0:	48 89 d0             	mov    %rdx,%rax
  4007c3:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
  4007c8:	74 49                	je     400813 <discard+0xa3>
  4007ca:	48 89 05 9f 18 20 00 	mov    %rax,0x20189f(%rip)        # 602070 <p4>
  4007d1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4007d5:	48 89 15 a4 18 20 00 	mov    %rdx,0x2018a4(%rip)        # 602080 <p3>
  4007dc:	8b 3a                	mov    (%rdx),%edi
  4007de:	48 89 c6             	mov    %rax,%rsi
  4007e1:	39 f9                	cmp    %edi,%ecx
  4007e3:	75 db                	jne    4007c0 <discard+0x50>
  4007e5:	41 89 c9             	mov    %ecx,%r9d
  4007e8:	48 89 c6             	mov    %rax,%rsi
  4007eb:	48 89 d0             	mov    %rdx,%rax
  4007ee:	44 39 c9             	cmp    %r9d,%ecx
  4007f1:	75 28                	jne    40081b <discard+0xab>
  4007f3:	48 83 c6 08          	add    $0x8,%rsi
  4007f7:	4c 39 c0             	cmp    %r8,%rax
  4007fa:	48 8b 40 08          	mov    0x8(%rax),%rax
  4007fe:	b9 60 20 60 00       	mov    $0x602060,%ecx
  400803:	48 0f 45 ce          	cmovne %rsi,%rcx
  400807:	48 89 01             	mov    %rax,(%rcx)
  40080a:	83 05 47 18 20 00 ff 	addl   $0xffffffff,0x201847(%rip)        # 602058 <n>
  400811:	58                   	pop    %rax
  400812:	c3                   	retq   
  400813:	41 89 f9             	mov    %edi,%r9d
  400816:	44 39 c9             	cmp    %r9d,%ecx
  400819:	74 d8                	je     4007f3 <discard+0x83>
  40081b:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  400820:	e8 cb fc ff ff       	callq  4004f0 <puts@plt>
  400825:	58                   	pop    %rax
  400826:	c3                   	retq   
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 

0000000000400830 <print>:
  400830:	50                   	push   %rax
  400831:	8b 35 21 18 20 00    	mov    0x201821(%rip),%esi        # 602058 <n>
  400837:	85 f6                	test   %esi,%esi
  400839:	74 55                	je     400890 <print+0x60>
  40083b:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  400840:	31 c0                	xor    %eax,%eax
  400842:	e8 b9 fc ff ff       	callq  400500 <printf@plt>
  400847:	48 8b 05 12 18 20 00 	mov    0x201812(%rip),%rax        # 602060 <head>
  40084e:	48 89 05 2b 18 20 00 	mov    %rax,0x20182b(%rip)        # 602080 <p3>
  400855:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40085c:	00 00 00 00 
  400860:	8b 30                	mov    (%rax),%esi
  400862:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  400867:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40086b:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400870:	b0 01                	mov    $0x1,%al
  400872:	e8 89 fc ff ff       	callq  400500 <printf@plt>
  400877:	48 8b 05 02 18 20 00 	mov    0x201802(%rip),%rax        # 602080 <p3>
  40087e:	48 8b 40 08          	mov    0x8(%rax),%rax
  400882:	48 89 05 f7 17 20 00 	mov    %rax,0x2017f7(%rip)        # 602080 <p3>
  400889:	48 85 c0             	test   %rax,%rax
  40088c:	75 d2                	jne    400860 <print+0x30>
  40088e:	eb 0a                	jmp    40089a <print+0x6a>
  400890:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400895:	e8 56 fc ff ff       	callq  4004f0 <puts@plt>
  40089a:	bf 0a 00 00 00       	mov    $0xa,%edi
  40089f:	58                   	pop    %rax
  4008a0:	e9 3b fc ff ff       	jmpq   4004e0 <putchar@plt>
  4008a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ac:	00 00 00 00 

00000000004008b0 <main>:
  4008b0:	41 57                	push   %r15
  4008b2:	41 56                	push   %r14
  4008b4:	41 54                	push   %r12
  4008b6:	53                   	push   %rbx
  4008b7:	50                   	push   %rax
  4008b8:	bf 10 0d 40 00       	mov    $0x400d10,%edi
  4008bd:	e8 2e fc ff ff       	callq  4004f0 <puts@plt>
  4008c2:	e8 59 fd ff ff       	callq  400620 <build>
  4008c7:	bf de 0c 40 00       	mov    $0x400cde,%edi
  4008cc:	e8 1f fc ff ff       	callq  4004f0 <puts@plt>
  4008d1:	8b 35 81 17 20 00    	mov    0x201781(%rip),%esi        # 602058 <n>
  4008d7:	85 f6                	test   %esi,%esi
  4008d9:	74 55                	je     400930 <main+0x80>
  4008db:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  4008e0:	31 c0                	xor    %eax,%eax
  4008e2:	e8 19 fc ff ff       	callq  400500 <printf@plt>
  4008e7:	48 8b 05 72 17 20 00 	mov    0x201772(%rip),%rax        # 602060 <head>
  4008ee:	48 89 05 8b 17 20 00 	mov    %rax,0x20178b(%rip)        # 602080 <p3>
  4008f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008fc:	00 00 00 00 
  400900:	8b 30                	mov    (%rax),%esi
  400902:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  400907:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090b:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400910:	b0 01                	mov    $0x1,%al
  400912:	e8 e9 fb ff ff       	callq  400500 <printf@plt>
  400917:	48 8b 05 62 17 20 00 	mov    0x201762(%rip),%rax        # 602080 <p3>
  40091e:	48 8b 40 08          	mov    0x8(%rax),%rax
  400922:	48 89 05 57 17 20 00 	mov    %rax,0x201757(%rip)        # 602080 <p3>
  400929:	48 85 c0             	test   %rax,%rax
  40092c:	75 d2                	jne    400900 <main+0x50>
  40092e:	eb 0a                	jmp    40093a <main+0x8a>
  400930:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400935:	e8 b6 fb ff ff       	callq  4004f0 <puts@plt>
  40093a:	bf 0a 00 00 00       	mov    $0xa,%edi
  40093f:	e8 9c fb ff ff       	callq  4004e0 <putchar@plt>
  400944:	49 89 e4             	mov    %rsp,%r12
  400947:	41 bf 60 20 60 00    	mov    $0x602060,%r15d
  40094d:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  400952:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400959:	1f 84 00 00 00 00 00 
  400960:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  400965:	e8 86 fb ff ff       	callq  4004f0 <puts@plt>
  40096a:	bf a9 0c 40 00       	mov    $0x400ca9,%edi
  40096f:	31 c0                	xor    %eax,%eax
  400971:	4c 89 e6             	mov    %r12,%rsi
  400974:	e8 a7 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  400979:	8b 04 24             	mov    (%rsp),%eax
  40097c:	83 f8 01             	cmp    $0x1,%eax
  40097f:	74 1f                	je     4009a0 <main+0xf0>
  400981:	83 f8 02             	cmp    $0x2,%eax
  400984:	0f 84 36 01 00 00    	je     400ac0 <main+0x210>
  40098a:	83 f8 03             	cmp    $0x3,%eax
  40098d:	75 d1                	jne    400960 <main+0xb0>
  40098f:	e9 6f 02 00 00       	jmpq   400c03 <main+0x353>
  400994:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40099b:	00 00 00 00 00 
  4009a0:	48 8b 05 b9 16 20 00 	mov    0x2016b9(%rip),%rax        # 602060 <head>
  4009a7:	48 89 05 d2 16 20 00 	mov    %rax,0x2016d2(%rip)        # 602080 <p3>
  4009ae:	bf 10 00 00 00       	mov    $0x10,%edi
  4009b3:	e8 58 fb ff ff       	callq  400510 <malloc@plt>
  4009b8:	48 89 c1             	mov    %rax,%rcx
  4009bb:	48 89 0d ae 16 20 00 	mov    %rcx,0x2016ae(%rip)        # 602070 <p4>
  4009c2:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4009c7:	48 8d 51 04          	lea    0x4(%rcx),%rdx
  4009cb:	31 c0                	xor    %eax,%eax
  4009cd:	48 89 ce             	mov    %rcx,%rsi
  4009d0:	e8 4b fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  4009d5:	48 8b 05 94 16 20 00 	mov    0x201694(%rip),%rax        # 602070 <p4>
  4009dc:	8b 10                	mov    (%rax),%edx
  4009de:	48 8b 35 9b 16 20 00 	mov    0x20169b(%rip),%rsi        # 602080 <p3>
  4009e5:	3b 16                	cmp    (%rsi),%edx
  4009e7:	7e 27                	jle    400a10 <main+0x160>
  4009e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009f0:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  4009f4:	48 85 c9             	test   %rcx,%rcx
  4009f7:	74 39                	je     400a32 <main+0x182>
  4009f9:	48 89 35 88 16 20 00 	mov    %rsi,0x201688(%rip)        # 602088 <p5>
  400a00:	48 89 0d 79 16 20 00 	mov    %rcx,0x201679(%rip)        # 602080 <p3>
  400a07:	48 89 ce             	mov    %rcx,%rsi
  400a0a:	3b 11                	cmp    (%rcx),%edx
  400a0c:	7f e2                	jg     4009f0 <main+0x140>
  400a0e:	eb 03                	jmp    400a13 <main+0x163>
  400a10:	48 89 f1             	mov    %rsi,%rcx
  400a13:	48 8b 15 6e 16 20 00 	mov    0x20166e(%rip),%rdx        # 602088 <p5>
  400a1a:	48 83 c2 08          	add    $0x8,%rdx
  400a1e:	48 39 0d 3b 16 20 00 	cmp    %rcx,0x20163b(%rip)        # 602060 <head>
  400a25:	49 0f 44 d7          	cmove  %r15,%rdx
  400a29:	48 89 02             	mov    %rax,(%rdx)
  400a2c:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400a30:	eb 0c                	jmp    400a3e <main+0x18e>
  400a32:	48 89 46 08          	mov    %rax,0x8(%rsi)
  400a36:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400a3d:	00 
  400a3e:	8b 35 14 16 20 00    	mov    0x201614(%rip),%esi        # 602058 <n>
  400a44:	83 c6 01             	add    $0x1,%esi
  400a47:	89 35 0b 16 20 00    	mov    %esi,0x20160b(%rip)        # 602058 <n>
  400a4d:	74 51                	je     400aa0 <main+0x1f0>
  400a4f:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  400a54:	31 c0                	xor    %eax,%eax
  400a56:	e8 a5 fa ff ff       	callq  400500 <printf@plt>
  400a5b:	48 8b 05 fe 15 20 00 	mov    0x2015fe(%rip),%rax        # 602060 <head>
  400a62:	48 89 05 17 16 20 00 	mov    %rax,0x201617(%rip)        # 602080 <p3>
  400a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a70:	8b 30                	mov    (%rax),%esi
  400a72:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  400a77:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a7b:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400a80:	b0 01                	mov    $0x1,%al
  400a82:	e8 79 fa ff ff       	callq  400500 <printf@plt>
  400a87:	48 8b 05 f2 15 20 00 	mov    0x2015f2(%rip),%rax        # 602080 <p3>
  400a8e:	48 8b 40 08          	mov    0x8(%rax),%rax
  400a92:	48 89 05 e7 15 20 00 	mov    %rax,0x2015e7(%rip)        # 602080 <p3>
  400a99:	48 85 c0             	test   %rax,%rax
  400a9c:	75 d2                	jne    400a70 <main+0x1c0>
  400a9e:	eb 0a                	jmp    400aaa <main+0x1fa>
  400aa0:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400aa5:	e8 46 fa ff ff       	callq  4004f0 <puts@plt>
  400aaa:	bf 0a 00 00 00       	mov    $0xa,%edi
  400aaf:	e8 2c fa ff ff       	callq  4004e0 <putchar@plt>
  400ab4:	8b 04 24             	mov    (%rsp),%eax
  400ab7:	83 f8 02             	cmp    $0x2,%eax
  400aba:	0f 85 ca fe ff ff    	jne    40098a <main+0xda>
  400ac0:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400ac5:	e8 26 fa ff ff       	callq  4004f0 <puts@plt>
  400aca:	bf a9 0c 40 00       	mov    $0x400ca9,%edi
  400acf:	31 c0                	xor    %eax,%eax
  400ad1:	4c 89 f6             	mov    %r14,%rsi
  400ad4:	e8 47 fa ff ff       	callq  400520 <__isoc99_scanf@plt>
  400ad9:	48 8b 05 80 15 20 00 	mov    0x201580(%rip),%rax        # 602060 <head>
  400ae0:	48 89 05 89 15 20 00 	mov    %rax,0x201589(%rip)        # 602070 <p4>
  400ae7:	48 89 05 92 15 20 00 	mov    %rax,0x201592(%rip)        # 602080 <p3>
  400aee:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
  400af2:	8b 38                	mov    (%rax),%edi
  400af4:	41 89 c8             	mov    %ecx,%r8d
  400af7:	48 89 c2             	mov    %rax,%rdx
  400afa:	48 89 c3             	mov    %rax,%rbx
  400afd:	39 f9                	cmp    %edi,%ecx
  400aff:	74 3c                	je     400b3d <main+0x28d>
  400b01:	48 89 c2             	mov    %rax,%rdx
  400b04:	48 89 c3             	mov    %rax,%rbx
  400b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b0e:	00 00 
  400b10:	48 89 de             	mov    %rbx,%rsi
  400b13:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
  400b17:	48 85 db             	test   %rbx,%rbx
  400b1a:	0f 84 a0 00 00 00    	je     400bc0 <main+0x310>
  400b20:	48 89 35 49 15 20 00 	mov    %rsi,0x201549(%rip)        # 602070 <p4>
  400b27:	48 89 1d 52 15 20 00 	mov    %rbx,0x201552(%rip)        # 602080 <p3>
  400b2e:	8b 3b                	mov    (%rbx),%edi
  400b30:	48 89 f2             	mov    %rsi,%rdx
  400b33:	39 f9                	cmp    %edi,%ecx
  400b35:	75 d9                	jne    400b10 <main+0x260>
  400b37:	41 89 c8             	mov    %ecx,%r8d
  400b3a:	48 89 f2             	mov    %rsi,%rdx
  400b3d:	44 39 c1             	cmp    %r8d,%ecx
  400b40:	0f 85 89 00 00 00    	jne    400bcf <main+0x31f>
  400b46:	48 83 c2 08          	add    $0x8,%rdx
  400b4a:	48 39 c3             	cmp    %rax,%rbx
  400b4d:	48 8b 43 08          	mov    0x8(%rbx),%rax
  400b51:	b9 60 20 60 00       	mov    $0x602060,%ecx
  400b56:	48 0f 45 ca          	cmovne %rdx,%rcx
  400b5a:	48 89 01             	mov    %rax,(%rcx)
  400b5d:	8b 35 f5 14 20 00    	mov    0x2014f5(%rip),%esi        # 602058 <n>
  400b63:	83 c6 ff             	add    $0xffffffff,%esi
  400b66:	89 35 ec 14 20 00    	mov    %esi,0x2014ec(%rip)        # 602058 <n>
  400b6c:	85 f6                	test   %esi,%esi
  400b6e:	74 73                	je     400be3 <main+0x333>
  400b70:	bf ac 0c 40 00       	mov    $0x400cac,%edi
  400b75:	31 c0                	xor    %eax,%eax
  400b77:	e8 84 f9 ff ff       	callq  400500 <printf@plt>
  400b7c:	48 8b 05 dd 14 20 00 	mov    0x2014dd(%rip),%rax        # 602060 <head>
  400b83:	48 89 05 f6 14 20 00 	mov    %rax,0x2014f6(%rip)        # 602080 <p3>
  400b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400b90:	8b 30                	mov    (%rax),%esi
  400b92:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  400b97:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b9b:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400ba0:	b0 01                	mov    $0x1,%al
  400ba2:	e8 59 f9 ff ff       	callq  400500 <printf@plt>
  400ba7:	48 8b 05 d2 14 20 00 	mov    0x2014d2(%rip),%rax        # 602080 <p3>
  400bae:	48 8b 40 08          	mov    0x8(%rax),%rax
  400bb2:	48 89 05 c7 14 20 00 	mov    %rax,0x2014c7(%rip)        # 602080 <p3>
  400bb9:	48 85 c0             	test   %rax,%rax
  400bbc:	75 d2                	jne    400b90 <main+0x2e0>
  400bbe:	eb 2d                	jmp    400bed <main+0x33d>
  400bc0:	41 89 f8             	mov    %edi,%r8d
  400bc3:	48 89 f3             	mov    %rsi,%rbx
  400bc6:	44 39 c1             	cmp    %r8d,%ecx
  400bc9:	0f 84 77 ff ff ff    	je     400b46 <main+0x296>
  400bcf:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  400bd4:	e8 17 f9 ff ff       	callq  4004f0 <puts@plt>
  400bd9:	8b 35 79 14 20 00    	mov    0x201479(%rip),%esi        # 602058 <n>
  400bdf:	85 f6                	test   %esi,%esi
  400be1:	75 8d                	jne    400b70 <main+0x2c0>
  400be3:	bf d7 0c 40 00       	mov    $0x400cd7,%edi
  400be8:	e8 03 f9 ff ff       	callq  4004f0 <puts@plt>
  400bed:	bf 0a 00 00 00       	mov    $0xa,%edi
  400bf2:	e8 e9 f8 ff ff       	callq  4004e0 <putchar@plt>
  400bf7:	8b 04 24             	mov    (%rsp),%eax
  400bfa:	83 f8 03             	cmp    $0x3,%eax
  400bfd:	0f 85 5d fd ff ff    	jne    400960 <main+0xb0>
  400c03:	31 c0                	xor    %eax,%eax
  400c05:	48 83 c4 08          	add    $0x8,%rsp
  400c09:	5b                   	pop    %rbx
  400c0a:	41 5c                	pop    %r12
  400c0c:	41 5e                	pop    %r14
  400c0e:	41 5f                	pop    %r15
  400c10:	c3                   	retq   
  400c11:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c18:	00 00 00 
  400c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

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
  400c4c:	e8 67 f8 ff ff       	callq  4004b8 <_init>
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
