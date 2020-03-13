
input/19040031049_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400550 <_init>:
  400550:	48 83 ec 08          	sub    $0x8,%rsp
  400554:	48 8b 05 9d 1a 20 00 	mov    0x201a9d(%rip),%rax        # 601ff8 <__gmon_start__>
  40055b:	48 85 c0             	test   %rax,%rax
  40055e:	74 02                	je     400562 <_init+0x12>
  400560:	ff d0                	callq  *%rax
  400562:	48 83 c4 08          	add    $0x8,%rsp
  400566:	c3                   	retq   

Disassembly of section .plt:

0000000000400570 <.plt>:
  400570:	ff 35 92 1a 20 00    	pushq  0x201a92(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400576:	ff 25 94 1a 20 00    	jmpq   *0x201a94(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40057c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400580 <free@plt>:
  400580:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602018 <free@GLIBC_2.2.5>
  400586:	68 00 00 00 00       	pushq  $0x0
  40058b:	e9 e0 ff ff ff       	jmpq   400570 <.plt>

0000000000400590 <puts@plt>:
  400590:	ff 25 8a 1a 20 00    	jmpq   *0x201a8a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400596:	68 01 00 00 00       	pushq  $0x1
  40059b:	e9 d0 ff ff ff       	jmpq   400570 <.plt>

00000000004005a0 <printf@plt>:
  4005a0:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602028 <printf@GLIBC_2.2.5>
  4005a6:	68 02 00 00 00       	pushq  $0x2
  4005ab:	e9 c0 ff ff ff       	jmpq   400570 <.plt>

00000000004005b0 <malloc@plt>:
  4005b0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

00000000004005c0 <_IO_getc@plt>:
  4005c0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602038 <_IO_getc@GLIBC_2.2.5>
  4005c6:	68 04 00 00 00       	pushq  $0x4
  4005cb:	e9 a0 ff ff ff       	jmpq   400570 <.plt>

00000000004005d0 <__isoc99_scanf@plt>:
  4005d0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  4005d6:	68 05 00 00 00       	pushq  $0x5
  4005db:	e9 90 ff ff ff       	jmpq   400570 <.plt>

Disassembly of section .text:

00000000004005e0 <_start>:
  4005e0:	31 ed                	xor    %ebp,%ebp
  4005e2:	49 89 d1             	mov    %rdx,%r9
  4005e5:	5e                   	pop    %rsi
  4005e6:	48 89 e2             	mov    %rsp,%rdx
  4005e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ed:	50                   	push   %rax
  4005ee:	54                   	push   %rsp
  4005ef:	49 c7 c0 80 0c 40 00 	mov    $0x400c80,%r8
  4005f6:	48 c7 c1 10 0c 40 00 	mov    $0x400c10,%rcx
  4005fd:	48 c7 c7 c0 08 40 00 	mov    $0x4008c0,%rdi
  400604:	ff 15 e6 19 20 00    	callq  *0x2019e6(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40060a:	f4                   	hlt    
  40060b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400610 <_dl_relocate_static_pie>:
  400610:	f3 c3                	repz retq 
  400612:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400619:	00 00 00 
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400620 <deregister_tm_clones>:
  400620:	55                   	push   %rbp
  400621:	b8 58 20 60 00       	mov    $0x602058,%eax
  400626:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  40062c:	48 89 e5             	mov    %rsp,%rbp
  40062f:	74 17                	je     400648 <deregister_tm_clones+0x28>
  400631:	b8 00 00 00 00       	mov    $0x0,%eax
  400636:	48 85 c0             	test   %rax,%rax
  400639:	74 0d                	je     400648 <deregister_tm_clones+0x28>
  40063b:	5d                   	pop    %rbp
  40063c:	bf 58 20 60 00       	mov    $0x602058,%edi
  400641:	ff e0                	jmpq   *%rax
  400643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400648:	5d                   	pop    %rbp
  400649:	c3                   	retq   
  40064a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400650 <register_tm_clones>:
  400650:	be 58 20 60 00       	mov    $0x602058,%esi
  400655:	55                   	push   %rbp
  400656:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  40065d:	48 89 e5             	mov    %rsp,%rbp
  400660:	48 c1 fe 03          	sar    $0x3,%rsi
  400664:	48 89 f0             	mov    %rsi,%rax
  400667:	48 c1 e8 3f          	shr    $0x3f,%rax
  40066b:	48 01 c6             	add    %rax,%rsi
  40066e:	48 d1 fe             	sar    %rsi
  400671:	74 15                	je     400688 <register_tm_clones+0x38>
  400673:	b8 00 00 00 00       	mov    $0x0,%eax
  400678:	48 85 c0             	test   %rax,%rax
  40067b:	74 0b                	je     400688 <register_tm_clones+0x38>
  40067d:	5d                   	pop    %rbp
  40067e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400683:	ff e0                	jmpq   *%rax
  400685:	0f 1f 00             	nopl   (%rax)
  400688:	5d                   	pop    %rbp
  400689:	c3                   	retq   
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <__do_global_dtors_aux>:
  400690:	80 3d d1 19 20 00 00 	cmpb   $0x0,0x2019d1(%rip)        # 602068 <completed.7698>
  400697:	75 17                	jne    4006b0 <__do_global_dtors_aux+0x20>
  400699:	55                   	push   %rbp
  40069a:	48 89 e5             	mov    %rsp,%rbp
  40069d:	e8 7e ff ff ff       	callq  400620 <deregister_tm_clones>
  4006a2:	c6 05 bf 19 20 00 01 	movb   $0x1,0x2019bf(%rip)        # 602068 <completed.7698>
  4006a9:	5d                   	pop    %rbp
  4006aa:	c3                   	retq   
  4006ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006b0:	f3 c3                	repz retq 
  4006b2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006bd:	00 00 00 

00000000004006c0 <frame_dummy>:
  4006c0:	55                   	push   %rbp
  4006c1:	48 89 e5             	mov    %rsp,%rbp
  4006c4:	5d                   	pop    %rbp
  4006c5:	eb 89                	jmp    400650 <register_tm_clones>
  4006c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ce:	00 00 

00000000004006d0 <insert>:
  4006d0:	48 85 ff             	test   %rdi,%rdi
  4006d3:	74 27                	je     4006fc <insert+0x2c>
  4006d5:	48 8b 0e             	mov    (%rsi),%rcx
  4006d8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006db:	7e 26                	jle    400703 <insert+0x33>
  4006dd:	48 89 f8             	mov    %rdi,%rax
  4006e0:	48 89 c2             	mov    %rax,%rdx
  4006e3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006e7:	48 85 c0             	test   %rax,%rax
  4006ea:	74 1f                	je     40070b <insert+0x3b>
  4006ec:	48 3b 08             	cmp    (%rax),%rcx
  4006ef:	7f ef                	jg     4006e0 <insert+0x10>
  4006f1:	48 39 f8             	cmp    %rdi,%rax
  4006f4:	74 0d                	je     400703 <insert+0x33>
  4006f6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006fa:	eb 15                	jmp    400711 <insert+0x41>
  4006fc:	31 c0                	xor    %eax,%eax
  4006fe:	48 89 f7             	mov    %rsi,%rdi
  400701:	eb 0e                	jmp    400711 <insert+0x41>
  400703:	48 89 f8             	mov    %rdi,%rax
  400706:	48 89 f7             	mov    %rsi,%rdi
  400709:	eb 06                	jmp    400711 <insert+0x41>
  40070b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40070f:	31 c0                	xor    %eax,%eax
  400711:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400715:	83 05 50 19 20 00 01 	addl   $0x1,0x201950(%rip)        # 60206c <n>
  40071c:	48 89 f8             	mov    %rdi,%rax
  40071f:	c3                   	retq   

0000000000400720 <del>:
  400720:	41 56                	push   %r14
  400722:	53                   	push   %rbx
  400723:	50                   	push   %rax
  400724:	48 89 fb             	mov    %rdi,%rbx
  400727:	48 85 db             	test   %rbx,%rbx
  40072a:	74 1d                	je     400749 <del+0x29>
  40072c:	48 39 33             	cmp    %rsi,(%rbx)
  40072f:	75 26                	jne    400757 <del+0x37>
  400731:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400735:	48 89 df             	mov    %rbx,%rdi
  400738:	e8 43 fe ff ff       	callq  400580 <free@plt>
  40073d:	83 05 28 19 20 00 ff 	addl   $0xffffffff,0x201928(%rip)        # 60206c <n>
  400744:	4c 89 f3             	mov    %r14,%rbx
  400747:	eb 4d                	jmp    400796 <del+0x76>
  400749:	bf fa 0c 40 00       	mov    $0x400cfa,%edi
  40074e:	e8 3d fe ff ff       	callq  400590 <puts@plt>
  400753:	31 db                	xor    %ebx,%ebx
  400755:	eb 3f                	jmp    400796 <del+0x76>
  400757:	48 89 df             	mov    %rbx,%rdi
  40075a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400760:	48 89 f8             	mov    %rdi,%rax
  400763:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400767:	48 85 ff             	test   %rdi,%rdi
  40076a:	74 20                	je     40078c <del+0x6c>
  40076c:	48 39 37             	cmp    %rsi,(%rdi)
  40076f:	75 ef                	jne    400760 <del+0x40>
  400771:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  400775:	48 39 df             	cmp    %rbx,%rdi
  400778:	74 bb                	je     400735 <del+0x15>
  40077a:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40077e:	e8 fd fd ff ff       	callq  400580 <free@plt>
  400783:	83 05 e2 18 20 00 ff 	addl   $0xffffffff,0x2018e2(%rip)        # 60206c <n>
  40078a:	eb 0a                	jmp    400796 <del+0x76>
  40078c:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400791:	e8 fa fd ff ff       	callq  400590 <puts@plt>
  400796:	48 89 d8             	mov    %rbx,%rax
  400799:	48 83 c4 08          	add    $0x8,%rsp
  40079d:	5b                   	pop    %rbx
  40079e:	41 5e                	pop    %r14
  4007a0:	c3                   	retq   
  4007a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007a8:	0f 1f 84 00 00 00 00 
  4007af:	00 

00000000004007b0 <creat>:
  4007b0:	41 56                	push   %r14
  4007b2:	53                   	push   %rbx
  4007b3:	50                   	push   %rax
  4007b4:	49 89 fe             	mov    %rdi,%r14
  4007b7:	eb 12                	jmp    4007cb <creat+0x1b>
  4007b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4007c0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007c4:	83 05 a1 18 20 00 01 	addl   $0x1,0x2018a1(%rip)        # 60206c <n>
  4007cb:	bf 18 00 00 00       	mov    $0x18,%edi
  4007d0:	e8 db fd ff ff       	callq  4005b0 <malloc@plt>
  4007d5:	48 89 c3             	mov    %rax,%rbx
  4007d8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007dc:	bf 94 0c 40 00       	mov    $0x400c94,%edi
  4007e1:	31 c0                	xor    %eax,%eax
  4007e3:	48 89 de             	mov    %rbx,%rsi
  4007e6:	e8 e5 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4007eb:	48 8b 03             	mov    (%rbx),%rax
  4007ee:	48 85 c0             	test   %rax,%rax
  4007f1:	74 4d                	je     400840 <creat+0x90>
  4007f3:	4d 85 f6             	test   %r14,%r14
  4007f6:	74 28                	je     400820 <creat+0x70>
  4007f8:	4c 89 f1             	mov    %r14,%rcx
  4007fb:	49 3b 06             	cmp    (%r14),%rax
  4007fe:	7e 30                	jle    400830 <creat+0x80>
  400800:	48 89 ca             	mov    %rcx,%rdx
  400803:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400807:	48 85 c9             	test   %rcx,%rcx
  40080a:	74 2c                	je     400838 <creat+0x88>
  40080c:	48 3b 01             	cmp    (%rcx),%rax
  40080f:	7f ef                	jg     400800 <creat+0x50>
  400811:	4c 39 f1             	cmp    %r14,%rcx
  400814:	74 1a                	je     400830 <creat+0x80>
  400816:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40081a:	eb a4                	jmp    4007c0 <creat+0x10>
  40081c:	0f 1f 40 00          	nopl   0x0(%rax)
  400820:	31 c9                	xor    %ecx,%ecx
  400822:	49 89 de             	mov    %rbx,%r14
  400825:	eb 99                	jmp    4007c0 <creat+0x10>
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 
  400830:	4c 89 f1             	mov    %r14,%rcx
  400833:	49 89 de             	mov    %rbx,%r14
  400836:	eb 88                	jmp    4007c0 <creat+0x10>
  400838:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40083c:	31 c9                	xor    %ecx,%ecx
  40083e:	eb 80                	jmp    4007c0 <creat+0x10>
  400840:	4c 89 f0             	mov    %r14,%rax
  400843:	48 83 c4 08          	add    $0x8,%rsp
  400847:	5b                   	pop    %rbx
  400848:	41 5e                	pop    %r14
  40084a:	c3                   	retq   
  40084b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400850 <print>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400859:	e8 32 fd ff ff       	callq  400590 <puts@plt>
  40085e:	48 85 db             	test   %rbx,%rbx
  400861:	74 40                	je     4008a3 <print+0x53>
  400863:	8b 35 03 18 20 00    	mov    0x201803(%rip),%esi        # 60206c <n>
  400869:	bf 9a 0c 40 00       	mov    $0x400c9a,%edi
  40086e:	31 c0                	xor    %eax,%eax
  400870:	e8 2b fd ff ff       	callq  4005a0 <printf@plt>
  400875:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40087c:	00 00 00 00 
  400880:	48 8b 33             	mov    (%rbx),%rsi
  400883:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400888:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40088c:	bf a8 0c 40 00       	mov    $0x400ca8,%edi
  400891:	b0 01                	mov    $0x1,%al
  400893:	e8 08 fd ff ff       	callq  4005a0 <printf@plt>
  400898:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40089c:	48 85 db             	test   %rbx,%rbx
  40089f:	75 df                	jne    400880 <print+0x30>
  4008a1:	eb 0c                	jmp    4008af <print+0x5f>
  4008a3:	bf b6 0c 40 00       	mov    $0x400cb6,%edi
  4008a8:	31 c0                	xor    %eax,%eax
  4008aa:	e8 f1 fc ff ff       	callq  4005a0 <printf@plt>
  4008af:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  4008b4:	5b                   	pop    %rbx
  4008b5:	e9 d6 fc ff ff       	jmpq   400590 <puts@plt>
  4008ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008c0 <main>:
  4008c0:	41 57                	push   %r15
  4008c2:	41 56                	push   %r14
  4008c4:	41 54                	push   %r12
  4008c6:	53                   	push   %rbx
  4008c7:	48 83 ec 18          	sub    $0x18,%rsp
  4008cb:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  4008d0:	e8 bb fc ff ff       	callq  400590 <puts@plt>
  4008d5:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  4008da:	e8 b1 fc ff ff       	callq  400590 <puts@plt>
  4008df:	31 ff                	xor    %edi,%edi
  4008e1:	e8 ca fe ff ff       	callq  4007b0 <creat>
  4008e6:	49 89 c4             	mov    %rax,%r12
  4008e9:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  4008ee:	e8 9d fc ff ff       	callq  400590 <puts@plt>
  4008f3:	4d 85 e4             	test   %r12,%r12
  4008f6:	74 3b                	je     400933 <main+0x73>
  4008f8:	8b 35 6e 17 20 00    	mov    0x20176e(%rip),%esi        # 60206c <n>
  4008fe:	bf 9a 0c 40 00       	mov    $0x400c9a,%edi
  400903:	31 c0                	xor    %eax,%eax
  400905:	e8 96 fc ff ff       	callq  4005a0 <printf@plt>
  40090a:	4c 89 e3             	mov    %r12,%rbx
  40090d:	0f 1f 00             	nopl   (%rax)
  400910:	48 8b 33             	mov    (%rbx),%rsi
  400913:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400918:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40091c:	bf a8 0c 40 00       	mov    $0x400ca8,%edi
  400921:	b0 01                	mov    $0x1,%al
  400923:	e8 78 fc ff ff       	callq  4005a0 <printf@plt>
  400928:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40092c:	48 85 db             	test   %rbx,%rbx
  40092f:	75 df                	jne    400910 <main+0x50>
  400931:	eb 0c                	jmp    40093f <main+0x7f>
  400933:	bf b6 0c 40 00       	mov    $0x400cb6,%edi
  400938:	31 c0                	xor    %eax,%eax
  40093a:	e8 61 fc ff ff       	callq  4005a0 <printf@plt>
  40093f:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400944:	e8 47 fc ff ff       	callq  400590 <puts@plt>
  400949:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  40094e:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400953:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40095a:	84 00 00 00 00 00 
  400960:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400965:	e8 26 fc ff ff       	callq  400590 <puts@plt>
  40096a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400971:	ff 
  400972:	bf 09 0d 40 00       	mov    $0x400d09,%edi
  400977:	e8 14 fc ff ff       	callq  400590 <puts@plt>
  40097c:	bf bd 0c 40 00       	mov    $0x400cbd,%edi
  400981:	31 c0                	xor    %eax,%eax
  400983:	4c 89 f6             	mov    %r14,%rsi
  400986:	e8 45 fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  40098b:	48 8b 3d ce 16 20 00 	mov    0x2016ce(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400992:	e8 29 fc ff ff       	callq  4005c0 <_IO_getc@plt>
  400997:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40099b:	83 f8 02             	cmp    $0x2,%eax
  40099e:	0f 84 8c 00 00 00    	je     400a30 <main+0x170>
  4009a4:	83 f8 01             	cmp    $0x1,%eax
  4009a7:	0f 85 40 02 00 00    	jne    400bed <main+0x32d>
  4009ad:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  4009b2:	31 c0                	xor    %eax,%eax
  4009b4:	e8 e7 fb ff ff       	callq  4005a0 <printf@plt>
  4009b9:	bf 18 00 00 00       	mov    $0x18,%edi
  4009be:	e8 ed fb ff ff       	callq  4005b0 <malloc@plt>
  4009c3:	48 89 c3             	mov    %rax,%rbx
  4009c6:	bf 94 0c 40 00       	mov    $0x400c94,%edi
  4009cb:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009cf:	31 c0                	xor    %eax,%eax
  4009d1:	48 89 de             	mov    %rbx,%rsi
  4009d4:	e8 f7 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4009d9:	4d 85 e4             	test   %r12,%r12
  4009dc:	0f 84 d1 00 00 00    	je     400ab3 <main+0x1f3>
  4009e2:	48 8b 33             	mov    (%rbx),%rsi
  4009e5:	4c 89 e0             	mov    %r12,%rax
  4009e8:	49 3b 34 24          	cmp    (%r12),%rsi
  4009ec:	0f 8e ea 00 00 00    	jle    400adc <main+0x21c>
  4009f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009f9:	1f 84 00 00 00 00 00 
  400a00:	48 89 c1             	mov    %rax,%rcx
  400a03:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a07:	48 85 c0             	test   %rax,%rax
  400a0a:	0f 84 d5 00 00 00    	je     400ae5 <main+0x225>
  400a10:	48 3b 30             	cmp    (%rax),%rsi
  400a13:	7f eb                	jg     400a00 <main+0x140>
  400a15:	4c 39 e0             	cmp    %r12,%rax
  400a18:	0f 84 be 00 00 00    	je     400adc <main+0x21c>
  400a1e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a22:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a26:	e9 d5 00 00 00       	jmpq   400b00 <main+0x240>
  400a2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a30:	bf f0 0d 40 00       	mov    $0x400df0,%edi
  400a35:	e8 56 fb ff ff       	callq  400590 <puts@plt>
  400a3a:	bf f6 0c 40 00       	mov    $0x400cf6,%edi
  400a3f:	31 c0                	xor    %eax,%eax
  400a41:	4c 89 fe             	mov    %r15,%rsi
  400a44:	e8 87 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a49:	4d 85 e4             	test   %r12,%r12
  400a4c:	74 75                	je     400ac3 <main+0x203>
  400a4e:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a53:	49 39 04 24          	cmp    %rax,(%r12)
  400a57:	4c 89 e7             	mov    %r12,%rdi
  400a5a:	75 24                	jne    400a80 <main+0x1c0>
  400a5c:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  400a61:	4c 89 e7             	mov    %r12,%rdi
  400a64:	e8 17 fb ff ff       	callq  400580 <free@plt>
  400a69:	83 05 fc 15 20 00 ff 	addl   $0xffffffff,0x2015fc(%rip)        # 60206c <n>
  400a70:	49 89 dc             	mov    %rbx,%r12
  400a73:	e9 03 01 00 00       	jmpq   400b7b <main+0x2bb>
  400a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a7f:	00 
  400a80:	48 89 f9             	mov    %rdi,%rcx
  400a83:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a87:	48 85 ff             	test   %rdi,%rdi
  400a8a:	0f 84 e1 00 00 00    	je     400b71 <main+0x2b1>
  400a90:	48 39 07             	cmp    %rax,(%rdi)
  400a93:	75 eb                	jne    400a80 <main+0x1c0>
  400a95:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a99:	4c 39 e7             	cmp    %r12,%rdi
  400a9c:	74 c3                	je     400a61 <main+0x1a1>
  400a9e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400aa2:	e8 d9 fa ff ff       	callq  400580 <free@plt>
  400aa7:	83 05 be 15 20 00 ff 	addl   $0xffffffff,0x2015be(%rip)        # 60206c <n>
  400aae:	e9 c8 00 00 00       	jmpq   400b7b <main+0x2bb>
  400ab3:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aba:	00 
  400abb:	48 8b 33             	mov    (%rbx),%rsi
  400abe:	49 89 dc             	mov    %rbx,%r12
  400ac1:	eb 3d                	jmp    400b00 <main+0x240>
  400ac3:	bf fa 0c 40 00       	mov    $0x400cfa,%edi
  400ac8:	e8 c3 fa ff ff       	callq  400590 <puts@plt>
  400acd:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400ad2:	e8 b9 fa ff ff       	callq  400590 <puts@plt>
  400ad7:	e9 f4 00 00 00       	jmpq   400bd0 <main+0x310>
  400adc:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400ae0:	49 89 dc             	mov    %rbx,%r12
  400ae3:	eb 1b                	jmp    400b00 <main+0x240>
  400ae5:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ae9:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400af0:	00 
  400af1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400af8:	0f 1f 84 00 00 00 00 
  400aff:	00 
  400b00:	83 05 65 15 20 00 01 	addl   $0x1,0x201565(%rip)        # 60206c <n>
  400b07:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  400b0c:	31 c0                	xor    %eax,%eax
  400b0e:	e8 8d fa ff ff       	callq  4005a0 <printf@plt>
  400b13:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400b18:	e8 73 fa ff ff       	callq  400590 <puts@plt>
  400b1d:	4d 85 e4             	test   %r12,%r12
  400b20:	74 41                	je     400b63 <main+0x2a3>
  400b22:	8b 35 44 15 20 00    	mov    0x201544(%rip),%esi        # 60206c <n>
  400b28:	bf 9a 0c 40 00       	mov    $0x400c9a,%edi
  400b2d:	31 c0                	xor    %eax,%eax
  400b2f:	e8 6c fa ff ff       	callq  4005a0 <printf@plt>
  400b34:	4c 89 e3             	mov    %r12,%rbx
  400b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b3e:	00 00 
  400b40:	48 8b 33             	mov    (%rbx),%rsi
  400b43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b4c:	bf a8 0c 40 00       	mov    $0x400ca8,%edi
  400b51:	b0 01                	mov    $0x1,%al
  400b53:	e8 48 fa ff ff       	callq  4005a0 <printf@plt>
  400b58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b5c:	48 85 db             	test   %rbx,%rbx
  400b5f:	75 df                	jne    400b40 <main+0x280>
  400b61:	eb 7c                	jmp    400bdf <main+0x31f>
  400b63:	bf b6 0c 40 00       	mov    $0x400cb6,%edi
  400b68:	31 c0                	xor    %eax,%eax
  400b6a:	e8 31 fa ff ff       	callq  4005a0 <printf@plt>
  400b6f:	eb 6e                	jmp    400bdf <main+0x31f>
  400b71:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400b76:	e8 15 fa ff ff       	callq  400590 <puts@plt>
  400b7b:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400b80:	e8 0b fa ff ff       	callq  400590 <puts@plt>
  400b85:	4d 85 e4             	test   %r12,%r12
  400b88:	74 46                	je     400bd0 <main+0x310>
  400b8a:	8b 35 dc 14 20 00    	mov    0x2014dc(%rip),%esi        # 60206c <n>
  400b90:	bf 9a 0c 40 00       	mov    $0x400c9a,%edi
  400b95:	31 c0                	xor    %eax,%eax
  400b97:	e8 04 fa ff ff       	callq  4005a0 <printf@plt>
  400b9c:	4c 89 e3             	mov    %r12,%rbx
  400b9f:	90                   	nop
  400ba0:	48 8b 33             	mov    (%rbx),%rsi
  400ba3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ba8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bac:	bf a8 0c 40 00       	mov    $0x400ca8,%edi
  400bb1:	b0 01                	mov    $0x1,%al
  400bb3:	e8 e8 f9 ff ff       	callq  4005a0 <printf@plt>
  400bb8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bbc:	48 85 db             	test   %rbx,%rbx
  400bbf:	75 df                	jne    400ba0 <main+0x2e0>
  400bc1:	eb 1c                	jmp    400bdf <main+0x31f>
  400bc3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bca:	84 00 00 00 00 00 
  400bd0:	bf b6 0c 40 00       	mov    $0x400cb6,%edi
  400bd5:	31 c0                	xor    %eax,%eax
  400bd7:	e8 c4 f9 ff ff       	callq  4005a0 <printf@plt>
  400bdc:	45 31 e4             	xor    %r12d,%r12d
  400bdf:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400be4:	e8 a7 f9 ff ff       	callq  400590 <puts@plt>
  400be9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400bed:	85 c0                	test   %eax,%eax
  400bef:	0f 8f 6b fd ff ff    	jg     400960 <main+0xa0>
  400bf5:	48 83 c4 18          	add    $0x18,%rsp
  400bf9:	5b                   	pop    %rbx
  400bfa:	41 5c                	pop    %r12
  400bfc:	41 5e                	pop    %r14
  400bfe:	41 5f                	pop    %r15
  400c00:	c3                   	retq   
  400c01:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c08:	00 00 00 
  400c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400c10 <__libc_csu_init>:
  400c10:	41 57                	push   %r15
  400c12:	41 56                	push   %r14
  400c14:	49 89 d7             	mov    %rdx,%r15
  400c17:	41 55                	push   %r13
  400c19:	41 54                	push   %r12
  400c1b:	4c 8d 25 de 11 20 00 	lea    0x2011de(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c22:	55                   	push   %rbp
  400c23:	48 8d 2d de 11 20 00 	lea    0x2011de(%rip),%rbp        # 601e08 <__init_array_end>
  400c2a:	53                   	push   %rbx
  400c2b:	41 89 fd             	mov    %edi,%r13d
  400c2e:	49 89 f6             	mov    %rsi,%r14
  400c31:	4c 29 e5             	sub    %r12,%rbp
  400c34:	48 83 ec 08          	sub    $0x8,%rsp
  400c38:	48 c1 fd 03          	sar    $0x3,%rbp
  400c3c:	e8 0f f9 ff ff       	callq  400550 <_init>
  400c41:	48 85 ed             	test   %rbp,%rbp
  400c44:	74 20                	je     400c66 <__libc_csu_init+0x56>
  400c46:	31 db                	xor    %ebx,%ebx
  400c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c4f:	00 
  400c50:	4c 89 fa             	mov    %r15,%rdx
  400c53:	4c 89 f6             	mov    %r14,%rsi
  400c56:	44 89 ef             	mov    %r13d,%edi
  400c59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c5d:	48 83 c3 01          	add    $0x1,%rbx
  400c61:	48 39 dd             	cmp    %rbx,%rbp
  400c64:	75 ea                	jne    400c50 <__libc_csu_init+0x40>
  400c66:	48 83 c4 08          	add    $0x8,%rsp
  400c6a:	5b                   	pop    %rbx
  400c6b:	5d                   	pop    %rbp
  400c6c:	41 5c                	pop    %r12
  400c6e:	41 5d                	pop    %r13
  400c70:	41 5e                	pop    %r14
  400c72:	41 5f                	pop    %r15
  400c74:	c3                   	retq   
  400c75:	90                   	nop
  400c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c7d:	00 00 00 

0000000000400c80 <__libc_csu_fini>:
  400c80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c84 <_fini>:
  400c84:	48 83 ec 08          	sub    $0x8,%rsp
  400c88:	48 83 c4 08          	add    $0x8,%rsp
  400c8c:	c3                   	retq   
