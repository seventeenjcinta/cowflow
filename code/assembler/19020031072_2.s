
c/19020031072_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e0 <_init>:
  4004e0:	48 83 ec 08          	sub    $0x8,%rsp
  4004e4:	48 8b 05 0d 1b 20 00 	mov    0x201b0d(%rip),%rax        # 601ff8 <__gmon_start__>
  4004eb:	48 85 c0             	test   %rax,%rax
  4004ee:	74 02                	je     4004f2 <_init+0x12>
  4004f0:	ff d0                	callq  *%rax
  4004f2:	48 83 c4 08          	add    $0x8,%rsp
  4004f6:	c3                   	retq   

Disassembly of section .plt:

0000000000400500 <.plt>:
  400500:	ff 35 02 1b 20 00    	pushq  0x201b02(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400506:	ff 25 04 1b 20 00    	jmpq   *0x201b04(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40050c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400510 <free@plt>:
  400510:	ff 25 02 1b 20 00    	jmpq   *0x201b02(%rip)        # 602018 <free@GLIBC_2.2.5>
  400516:	68 00 00 00 00       	pushq  $0x0
  40051b:	e9 e0 ff ff ff       	jmpq   400500 <.plt>

0000000000400520 <puts@plt>:
  400520:	ff 25 fa 1a 20 00    	jmpq   *0x201afa(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400526:	68 01 00 00 00       	pushq  $0x1
  40052b:	e9 d0 ff ff ff       	jmpq   400500 <.plt>

0000000000400530 <printf@plt>:
  400530:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400536:	68 02 00 00 00       	pushq  $0x2
  40053b:	e9 c0 ff ff ff       	jmpq   400500 <.plt>

0000000000400540 <malloc@plt>:
  400540:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400546:	68 03 00 00 00       	pushq  $0x3
  40054b:	e9 b0 ff ff ff       	jmpq   400500 <.plt>

0000000000400550 <__isoc99_scanf@plt>:
  400550:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400556:	68 04 00 00 00       	pushq  $0x4
  40055b:	e9 a0 ff ff ff       	jmpq   400500 <.plt>

Disassembly of section .text:

0000000000400560 <_start>:
  400560:	31 ed                	xor    %ebp,%ebp
  400562:	49 89 d1             	mov    %rdx,%r9
  400565:	5e                   	pop    %rsi
  400566:	48 89 e2             	mov    %rsp,%rdx
  400569:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40056d:	50                   	push   %rax
  40056e:	54                   	push   %rsp
  40056f:	49 c7 c0 60 0b 40 00 	mov    $0x400b60,%r8
  400576:	48 c7 c1 f0 0a 40 00 	mov    $0x400af0,%rcx
  40057d:	48 c7 c7 90 08 40 00 	mov    $0x400890,%rdi
  400584:	ff 15 66 1a 20 00    	callq  *0x201a66(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40058a:	f4                   	hlt    
  40058b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400590 <_dl_relocate_static_pie>:
  400590:	f3 c3                	repz retq 
  400592:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400599:	00 00 00 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <deregister_tm_clones>:
  4005a0:	55                   	push   %rbp
  4005a1:	b8 50 20 60 00       	mov    $0x602050,%eax
  4005a6:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  4005ac:	48 89 e5             	mov    %rsp,%rbp
  4005af:	74 17                	je     4005c8 <deregister_tm_clones+0x28>
  4005b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b6:	48 85 c0             	test   %rax,%rax
  4005b9:	74 0d                	je     4005c8 <deregister_tm_clones+0x28>
  4005bb:	5d                   	pop    %rbp
  4005bc:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005c1:	ff e0                	jmpq   *%rax
  4005c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c8:	5d                   	pop    %rbp
  4005c9:	c3                   	retq   
  4005ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005d0 <register_tm_clones>:
  4005d0:	be 50 20 60 00       	mov    $0x602050,%esi
  4005d5:	55                   	push   %rbp
  4005d6:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  4005dd:	48 89 e5             	mov    %rsp,%rbp
  4005e0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005e4:	48 89 f0             	mov    %rsi,%rax
  4005e7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005eb:	48 01 c6             	add    %rax,%rsi
  4005ee:	48 d1 fe             	sar    %rsi
  4005f1:	74 15                	je     400608 <register_tm_clones+0x38>
  4005f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f8:	48 85 c0             	test   %rax,%rax
  4005fb:	74 0b                	je     400608 <register_tm_clones+0x38>
  4005fd:	5d                   	pop    %rbp
  4005fe:	bf 50 20 60 00       	mov    $0x602050,%edi
  400603:	ff e0                	jmpq   *%rax
  400605:	0f 1f 00             	nopl   (%rax)
  400608:	5d                   	pop    %rbp
  400609:	c3                   	retq   
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400610 <__do_global_dtors_aux>:
  400610:	80 3d 39 1a 20 00 00 	cmpb   $0x0,0x201a39(%rip)        # 602050 <__TMC_END__>
  400617:	75 17                	jne    400630 <__do_global_dtors_aux+0x20>
  400619:	55                   	push   %rbp
  40061a:	48 89 e5             	mov    %rsp,%rbp
  40061d:	e8 7e ff ff ff       	callq  4005a0 <deregister_tm_clones>
  400622:	c6 05 27 1a 20 00 01 	movb   $0x1,0x201a27(%rip)        # 602050 <__TMC_END__>
  400629:	5d                   	pop    %rbp
  40062a:	c3                   	retq   
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400630:	f3 c3                	repz retq 
  400632:	0f 1f 40 00          	nopl   0x0(%rax)
  400636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40063d:	00 00 00 

0000000000400640 <frame_dummy>:
  400640:	55                   	push   %rbp
  400641:	48 89 e5             	mov    %rsp,%rbp
  400644:	5d                   	pop    %rbp
  400645:	eb 89                	jmp    4005d0 <register_tm_clones>
  400647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40064e:	00 00 

0000000000400650 <insert>:
  400650:	48 85 ff             	test   %rdi,%rdi
  400653:	74 27                	je     40067c <insert+0x2c>
  400655:	48 8b 0e             	mov    (%rsi),%rcx
  400658:	48 39 0f             	cmp    %rcx,(%rdi)
  40065b:	7d 26                	jge    400683 <insert+0x33>
  40065d:	48 89 f8             	mov    %rdi,%rax
  400660:	48 89 c2             	mov    %rax,%rdx
  400663:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400667:	48 85 c0             	test   %rax,%rax
  40066a:	74 1f                	je     40068b <insert+0x3b>
  40066c:	48 39 08             	cmp    %rcx,(%rax)
  40066f:	7c ef                	jl     400660 <insert+0x10>
  400671:	48 39 f8             	cmp    %rdi,%rax
  400674:	74 0d                	je     400683 <insert+0x33>
  400676:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40067a:	eb 15                	jmp    400691 <insert+0x41>
  40067c:	31 c0                	xor    %eax,%eax
  40067e:	48 89 f7             	mov    %rsi,%rdi
  400681:	eb 0e                	jmp    400691 <insert+0x41>
  400683:	48 89 f8             	mov    %rdi,%rax
  400686:	48 89 f7             	mov    %rsi,%rdi
  400689:	eb 06                	jmp    400691 <insert+0x41>
  40068b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40068f:	31 c0                	xor    %eax,%eax
  400691:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400695:	83 05 b8 19 20 00 01 	addl   $0x1,0x2019b8(%rip)        # 602054 <n>
  40069c:	48 89 f8             	mov    %rdi,%rax
  40069f:	c3                   	retq   

00000000004006a0 <del>:
  4006a0:	41 57                	push   %r15
  4006a2:	41 56                	push   %r14
  4006a4:	53                   	push   %rbx
  4006a5:	48 89 f3             	mov    %rsi,%rbx
  4006a8:	49 89 fe             	mov    %rdi,%r14
  4006ab:	4d 85 f6             	test   %r14,%r14
  4006ae:	74 16                	je     4006c6 <del+0x26>
  4006b0:	49 39 1e             	cmp    %rbx,(%r14)
  4006b3:	75 20                	jne    4006d5 <del+0x35>
  4006b5:	4d 8b 7e 10          	mov    0x10(%r14),%r15
  4006b9:	4c 89 f7             	mov    %r14,%rdi
  4006bc:	e8 4f fe ff ff       	callq  400510 <free@plt>
  4006c1:	4d 89 fe             	mov    %r15,%r14
  4006c4:	eb 69                	jmp    40072f <del+0x8f>
  4006c6:	bf 25 0c 40 00       	mov    $0x400c25,%edi
  4006cb:	e8 50 fe ff ff       	callq  400520 <puts@plt>
  4006d0:	45 31 f6             	xor    %r14d,%r14d
  4006d3:	eb 78                	jmp    40074d <del+0xad>
  4006d5:	4c 89 f7             	mov    %r14,%rdi
  4006d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006df:	00 
  4006e0:	48 89 f8             	mov    %rdi,%rax
  4006e3:	48 8b 78 10          	mov    0x10(%rax),%rdi
  4006e7:	48 85 ff             	test   %rdi,%rdi
  4006ea:	74 19                	je     400705 <del+0x65>
  4006ec:	48 39 1f             	cmp    %rbx,(%rdi)
  4006ef:	75 ef                	jne    4006e0 <del+0x40>
  4006f1:	4c 8b 7f 10          	mov    0x10(%rdi),%r15
  4006f5:	4c 39 f7             	cmp    %r14,%rdi
  4006f8:	74 bf                	je     4006b9 <del+0x19>
  4006fa:	4d 85 ff             	test   %r15,%r15
  4006fd:	74 23                	je     400722 <del+0x82>
  4006ff:	4c 89 78 10          	mov    %r15,0x10(%rax)
  400703:	eb 25                	jmp    40072a <del+0x8a>
  400705:	bf 84 0b 40 00       	mov    $0x400b84,%edi
  40070a:	31 c0                	xor    %eax,%eax
  40070c:	e8 1f fe ff ff       	callq  400530 <printf@plt>
  400711:	8b 05 3d 19 20 00    	mov    0x20193d(%rip),%eax        # 602054 <n>
  400717:	83 c0 01             	add    $0x1,%eax
  40071a:	89 05 34 19 20 00    	mov    %eax,0x201934(%rip)        # 602054 <n>
  400720:	eb 22                	jmp    400744 <del+0xa4>
  400722:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400729:	00 
  40072a:	e8 e1 fd ff ff       	callq  400510 <free@plt>
  40072f:	bf 78 0b 40 00       	mov    $0x400b78,%edi
  400734:	31 c0                	xor    %eax,%eax
  400736:	48 89 de             	mov    %rbx,%rsi
  400739:	e8 f2 fd ff ff       	callq  400530 <printf@plt>
  40073e:	8b 05 10 19 20 00    	mov    0x201910(%rip),%eax        # 602054 <n>
  400744:	83 c0 ff             	add    $0xffffffff,%eax
  400747:	89 05 07 19 20 00    	mov    %eax,0x201907(%rip)        # 602054 <n>
  40074d:	4c 89 f0             	mov    %r14,%rax
  400750:	5b                   	pop    %rbx
  400751:	41 5e                	pop    %r14
  400753:	41 5f                	pop    %r15
  400755:	c3                   	retq   
  400756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40075d:	00 00 00 

0000000000400760 <creat>:
  400760:	41 57                	push   %r15
  400762:	41 56                	push   %r14
  400764:	53                   	push   %rbx
  400765:	49 89 fe             	mov    %rdi,%r14
  400768:	eb 11                	jmp    40077b <creat+0x1b>
  40076a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400770:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400774:	83 05 d9 18 20 00 01 	addl   $0x1,0x2018d9(%rip)        # 602054 <n>
  40077b:	bf 18 00 00 00       	mov    $0x18,%edi
  400780:	e8 bb fd ff ff       	callq  400540 <malloc@plt>
  400785:	48 89 c3             	mov    %rax,%rbx
  400788:	4c 8d 7b 08          	lea    0x8(%rbx),%r15
  40078c:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  400791:	31 c0                	xor    %eax,%eax
  400793:	48 89 de             	mov    %rbx,%rsi
  400796:	4c 89 fa             	mov    %r15,%rdx
  400799:	e8 b2 fd ff ff       	callq  400550 <__isoc99_scanf@plt>
  40079e:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4007a5:	00 
  4007a6:	48 8b 0b             	mov    (%rbx),%rcx
  4007a9:	48 85 c9             	test   %rcx,%rcx
  4007ac:	75 11                	jne    4007bf <creat+0x5f>
  4007ae:	f3 41 0f 10 07       	movss  (%r15),%xmm0
  4007b3:	0f 2e 04 25 74 0b 40 	ucomiss 0x400b74,%xmm0
  4007ba:	00 
  4007bb:	75 02                	jne    4007bf <creat+0x5f>
  4007bd:	7b 57                	jnp    400816 <creat+0xb6>
  4007bf:	4d 85 f6             	test   %r14,%r14
  4007c2:	74 2c                	je     4007f0 <creat+0x90>
  4007c4:	49 39 0e             	cmp    %rcx,(%r14)
  4007c7:	4c 89 f0             	mov    %r14,%rax
  4007ca:	7d 34                	jge    400800 <creat+0xa0>
  4007cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4007d0:	48 89 c2             	mov    %rax,%rdx
  4007d3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4007d7:	48 85 c0             	test   %rax,%rax
  4007da:	74 2f                	je     40080b <creat+0xab>
  4007dc:	48 39 08             	cmp    %rcx,(%rax)
  4007df:	7c ef                	jl     4007d0 <creat+0x70>
  4007e1:	4c 39 f0             	cmp    %r14,%rax
  4007e4:	74 1a                	je     400800 <creat+0xa0>
  4007e6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007ea:	eb 84                	jmp    400770 <creat+0x10>
  4007ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4007f0:	31 c0                	xor    %eax,%eax
  4007f2:	49 89 de             	mov    %rbx,%r14
  4007f5:	e9 76 ff ff ff       	jmpq   400770 <creat+0x10>
  4007fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400800:	4c 89 f0             	mov    %r14,%rax
  400803:	49 89 de             	mov    %rbx,%r14
  400806:	e9 65 ff ff ff       	jmpq   400770 <creat+0x10>
  40080b:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40080f:	31 c0                	xor    %eax,%eax
  400811:	e9 5a ff ff ff       	jmpq   400770 <creat+0x10>
  400816:	48 89 df             	mov    %rbx,%rdi
  400819:	e8 f2 fc ff ff       	callq  400510 <free@plt>
  40081e:	4c 89 f0             	mov    %r14,%rax
  400821:	5b                   	pop    %rbx
  400822:	41 5e                	pop    %r14
  400824:	41 5f                	pop    %r15
  400826:	c3                   	retq   
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 

0000000000400830 <print>:
  400830:	55                   	push   %rbp
  400831:	53                   	push   %rbx
  400832:	50                   	push   %rax
  400833:	48 89 fb             	mov    %rdi,%rbx
  400836:	8b 35 18 18 20 00    	mov    0x201818(%rip),%esi        # 602054 <n>
  40083c:	31 ed                	xor    %ebp,%ebp
  40083e:	bf a7 0b 40 00       	mov    $0x400ba7,%edi
  400843:	31 c0                	xor    %eax,%eax
  400845:	e8 e6 fc ff ff       	callq  400530 <printf@plt>
  40084a:	83 3d 03 18 20 00 00 	cmpl   $0x0,0x201803(%rip)        # 602054 <n>
  400851:	7e 34                	jle    400887 <print+0x57>
  400853:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40085a:	84 00 00 00 00 00 
  400860:	48 8b 33             	mov    (%rbx),%rsi
  400863:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400868:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40086c:	bf c3 0b 40 00       	mov    $0x400bc3,%edi
  400871:	b0 01                	mov    $0x1,%al
  400873:	e8 b8 fc ff ff       	callq  400530 <printf@plt>
  400878:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40087c:	83 c5 01             	add    $0x1,%ebp
  40087f:	3b 2d cf 17 20 00    	cmp    0x2017cf(%rip),%ebp        # 602054 <n>
  400885:	7c d9                	jl     400860 <print+0x30>
  400887:	48 83 c4 08          	add    $0x8,%rsp
  40088b:	5b                   	pop    %rbx
  40088c:	5d                   	pop    %rbp
  40088d:	c3                   	retq   
  40088e:	66 90                	xchg   %ax,%ax

0000000000400890 <main>:
  400890:	55                   	push   %rbp
  400891:	41 57                	push   %r15
  400893:	41 56                	push   %r14
  400895:	41 54                	push   %r12
  400897:	53                   	push   %rbx
  400898:	48 83 ec 10          	sub    $0x10,%rsp
  40089c:	bf 40 0c 40 00       	mov    $0x400c40,%edi
  4008a1:	e8 7a fc ff ff       	callq  400520 <puts@plt>
  4008a6:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  4008ab:	e8 70 fc ff ff       	callq  400520 <puts@plt>
  4008b0:	45 31 f6             	xor    %r14d,%r14d
  4008b3:	31 ff                	xor    %edi,%edi
  4008b5:	e8 a6 fe ff ff       	callq  400760 <creat>
  4008ba:	49 89 c4             	mov    %rax,%r12
  4008bd:	8b 35 91 17 20 00    	mov    0x201791(%rip),%esi        # 602054 <n>
  4008c3:	bf a7 0b 40 00       	mov    $0x400ba7,%edi
  4008c8:	31 c0                	xor    %eax,%eax
  4008ca:	e8 61 fc ff ff       	callq  400530 <printf@plt>
  4008cf:	83 3d 7e 17 20 00 00 	cmpl   $0x0,0x20177e(%rip)        # 602054 <n>
  4008d6:	7e 31                	jle    400909 <main+0x79>
  4008d8:	4c 89 e3             	mov    %r12,%rbx
  4008db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008e0:	48 8b 33             	mov    (%rbx),%rsi
  4008e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ec:	bf c3 0b 40 00       	mov    $0x400bc3,%edi
  4008f1:	b0 01                	mov    $0x1,%al
  4008f3:	e8 38 fc ff ff       	callq  400530 <printf@plt>
  4008f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008fc:	41 83 c6 01          	add    $0x1,%r14d
  400900:	44 3b 35 4d 17 20 00 	cmp    0x20174d(%rip),%r14d        # 602054 <n>
  400907:	7c d7                	jl     4008e0 <main+0x50>
  400909:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  40090e:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  400913:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40091a:	84 00 00 00 00 00 
  400920:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400925:	e8 f6 fb ff ff       	callq  400520 <puts@plt>
  40092a:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  40092f:	31 c0                	xor    %eax,%eax
  400931:	e8 fa fb ff ff       	callq  400530 <printf@plt>
  400936:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  40093b:	31 c0                	xor    %eax,%eax
  40093d:	4c 89 f6             	mov    %r14,%rsi
  400940:	e8 0b fc ff ff       	callq  400550 <__isoc99_scanf@plt>
  400945:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400949:	83 f8 02             	cmp    $0x2,%eax
  40094c:	0f 84 8e 00 00 00    	je     4009e0 <main+0x150>
  400952:	83 f8 01             	cmp    $0x1,%eax
  400955:	0f 85 70 01 00 00    	jne    400acb <main+0x23b>
  40095b:	bf e3 0b 40 00       	mov    $0x400be3,%edi
  400960:	31 c0                	xor    %eax,%eax
  400962:	e8 c9 fb ff ff       	callq  400530 <printf@plt>
  400967:	bf 18 00 00 00       	mov    $0x18,%edi
  40096c:	e8 cf fb ff ff       	callq  400540 <malloc@plt>
  400971:	48 89 c3             	mov    %rax,%rbx
  400974:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400978:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  40097d:	31 c0                	xor    %eax,%eax
  40097f:	48 89 de             	mov    %rbx,%rsi
  400982:	e8 c9 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  400987:	48 8b 33             	mov    (%rbx),%rsi
  40098a:	bf ff 0b 40 00       	mov    $0x400bff,%edi
  40098f:	31 c0                	xor    %eax,%eax
  400991:	e8 9a fb ff ff       	callq  400530 <printf@plt>
  400996:	4d 85 e4             	test   %r12,%r12
  400999:	0f 84 bb 00 00 00    	je     400a5a <main+0x1ca>
  40099f:	48 8b 13             	mov    (%rbx),%rdx
  4009a2:	49 39 14 24          	cmp    %rdx,(%r12)
  4009a6:	4c 89 e0             	mov    %r12,%rax
  4009a9:	0f 8d b2 00 00 00    	jge    400a61 <main+0x1d1>
  4009af:	90                   	nop
  4009b0:	48 89 c1             	mov    %rax,%rcx
  4009b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009b7:	48 85 c0             	test   %rax,%rax
  4009ba:	0f 84 a9 00 00 00    	je     400a69 <main+0x1d9>
  4009c0:	48 39 10             	cmp    %rdx,(%rax)
  4009c3:	7c eb                	jl     4009b0 <main+0x120>
  4009c5:	4c 39 e0             	cmp    %r12,%rax
  4009c8:	0f 84 93 00 00 00    	je     400a61 <main+0x1d1>
  4009ce:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4009d2:	e9 99 00 00 00       	jmpq   400a70 <main+0x1e0>
  4009d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009de:	00 00 
  4009e0:	bf 0e 0c 40 00       	mov    $0x400c0e,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 44 fb ff ff       	callq  400530 <printf@plt>
  4009ec:	bf 21 0c 40 00       	mov    $0x400c21,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	4c 89 fe             	mov    %r15,%rsi
  4009f6:	e8 55 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  4009fb:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400a00:	4c 89 e7             	mov    %r12,%rdi
  400a03:	e8 98 fc ff ff       	callq  4006a0 <del>
  400a08:	49 89 c4             	mov    %rax,%r12
  400a0b:	8b 35 43 16 20 00    	mov    0x201643(%rip),%esi        # 602054 <n>
  400a11:	bf a7 0b 40 00       	mov    $0x400ba7,%edi
  400a16:	31 c0                	xor    %eax,%eax
  400a18:	e8 13 fb ff ff       	callq  400530 <printf@plt>
  400a1d:	83 3d 30 16 20 00 00 	cmpl   $0x0,0x201630(%rip)        # 602054 <n>
  400a24:	0f 8e 9d 00 00 00    	jle    400ac7 <main+0x237>
  400a2a:	31 db                	xor    %ebx,%ebx
  400a2c:	4c 89 e5             	mov    %r12,%rbp
  400a2f:	90                   	nop
  400a30:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400a34:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400a39:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a3d:	bf c3 0b 40 00       	mov    $0x400bc3,%edi
  400a42:	b0 01                	mov    $0x1,%al
  400a44:	e8 e7 fa ff ff       	callq  400530 <printf@plt>
  400a49:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400a4d:	83 c3 01             	add    $0x1,%ebx
  400a50:	3b 1d fe 15 20 00    	cmp    0x2015fe(%rip),%ebx        # 602054 <n>
  400a56:	7c d8                	jl     400a30 <main+0x1a0>
  400a58:	eb 6d                	jmp    400ac7 <main+0x237>
  400a5a:	31 c0                	xor    %eax,%eax
  400a5c:	49 89 dc             	mov    %rbx,%r12
  400a5f:	eb 0f                	jmp    400a70 <main+0x1e0>
  400a61:	4c 89 e0             	mov    %r12,%rax
  400a64:	49 89 dc             	mov    %rbx,%r12
  400a67:	eb 07                	jmp    400a70 <main+0x1e0>
  400a69:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a6d:	31 c0                	xor    %eax,%eax
  400a6f:	90                   	nop
  400a70:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a74:	8b 35 da 15 20 00    	mov    0x2015da(%rip),%esi        # 602054 <n>
  400a7a:	83 c6 01             	add    $0x1,%esi
  400a7d:	89 35 d1 15 20 00    	mov    %esi,0x2015d1(%rip)        # 602054 <n>
  400a83:	bf a7 0b 40 00       	mov    $0x400ba7,%edi
  400a88:	31 c0                	xor    %eax,%eax
  400a8a:	e8 a1 fa ff ff       	callq  400530 <printf@plt>
  400a8f:	83 3d be 15 20 00 00 	cmpl   $0x0,0x2015be(%rip)        # 602054 <n>
  400a96:	7e 2f                	jle    400ac7 <main+0x237>
  400a98:	31 ed                	xor    %ebp,%ebp
  400a9a:	4c 89 e3             	mov    %r12,%rbx
  400a9d:	0f 1f 00             	nopl   (%rax)
  400aa0:	48 8b 33             	mov    (%rbx),%rsi
  400aa3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400aa8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400aac:	bf c3 0b 40 00       	mov    $0x400bc3,%edi
  400ab1:	b0 01                	mov    $0x1,%al
  400ab3:	e8 78 fa ff ff       	callq  400530 <printf@plt>
  400ab8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400abc:	83 c5 01             	add    $0x1,%ebp
  400abf:	3b 2d 8f 15 20 00    	cmp    0x20158f(%rip),%ebp        # 602054 <n>
  400ac5:	7c d9                	jl     400aa0 <main+0x210>
  400ac7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400acb:	85 c0                	test   %eax,%eax
  400acd:	0f 85 4d fe ff ff    	jne    400920 <main+0x90>
  400ad3:	31 c0                	xor    %eax,%eax
  400ad5:	48 83 c4 10          	add    $0x10,%rsp
  400ad9:	5b                   	pop    %rbx
  400ada:	41 5c                	pop    %r12
  400adc:	41 5e                	pop    %r14
  400ade:	41 5f                	pop    %r15
  400ae0:	5d                   	pop    %rbp
  400ae1:	c3                   	retq   
  400ae2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ae9:	00 00 00 
  400aec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400af0 <__libc_csu_init>:
  400af0:	41 57                	push   %r15
  400af2:	41 56                	push   %r14
  400af4:	49 89 d7             	mov    %rdx,%r15
  400af7:	41 55                	push   %r13
  400af9:	41 54                	push   %r12
  400afb:	4c 8d 25 fe 12 20 00 	lea    0x2012fe(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b02:	55                   	push   %rbp
  400b03:	48 8d 2d fe 12 20 00 	lea    0x2012fe(%rip),%rbp        # 601e08 <__init_array_end>
  400b0a:	53                   	push   %rbx
  400b0b:	41 89 fd             	mov    %edi,%r13d
  400b0e:	49 89 f6             	mov    %rsi,%r14
  400b11:	4c 29 e5             	sub    %r12,%rbp
  400b14:	48 83 ec 08          	sub    $0x8,%rsp
  400b18:	48 c1 fd 03          	sar    $0x3,%rbp
  400b1c:	e8 bf f9 ff ff       	callq  4004e0 <_init>
  400b21:	48 85 ed             	test   %rbp,%rbp
  400b24:	74 20                	je     400b46 <__libc_csu_init+0x56>
  400b26:	31 db                	xor    %ebx,%ebx
  400b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b2f:	00 
  400b30:	4c 89 fa             	mov    %r15,%rdx
  400b33:	4c 89 f6             	mov    %r14,%rsi
  400b36:	44 89 ef             	mov    %r13d,%edi
  400b39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b3d:	48 83 c3 01          	add    $0x1,%rbx
  400b41:	48 39 dd             	cmp    %rbx,%rbp
  400b44:	75 ea                	jne    400b30 <__libc_csu_init+0x40>
  400b46:	48 83 c4 08          	add    $0x8,%rsp
  400b4a:	5b                   	pop    %rbx
  400b4b:	5d                   	pop    %rbp
  400b4c:	41 5c                	pop    %r12
  400b4e:	41 5d                	pop    %r13
  400b50:	41 5e                	pop    %r14
  400b52:	41 5f                	pop    %r15
  400b54:	c3                   	retq   
  400b55:	90                   	nop
  400b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b5d:	00 00 00 

0000000000400b60 <__libc_csu_fini>:
  400b60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b64 <_fini>:
  400b64:	48 83 ec 08          	sub    $0x8,%rsp
  400b68:	48 83 c4 08          	add    $0x8,%rsp
  400b6c:	c3                   	retq   
