
c/19020031064_2.elf:     file format elf64-x86-64


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
  4005ef:	49 c7 c0 60 0c 40 00 	mov    $0x400c60,%r8
  4005f6:	48 c7 c1 f0 0b 40 00 	mov    $0x400bf0,%rcx
  4005fd:	48 c7 c7 a0 08 40 00 	mov    $0x4008a0,%rdi
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

00000000004006d0 <creat>:
  4006d0:	41 57                	push   %r15
  4006d2:	41 56                	push   %r14
  4006d4:	53                   	push   %rbx
  4006d5:	c7 05 8d 19 20 00 00 	movl   $0x0,0x20198d(%rip)        # 60206c <n>
  4006dc:	00 00 00 
  4006df:	bf 18 00 00 00       	mov    $0x18,%edi
  4006e4:	e8 c7 fe ff ff       	callq  4005b0 <malloc@plt>
  4006e9:	48 89 c3             	mov    %rax,%rbx
  4006ec:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  4006f1:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006f5:	31 c0                	xor    %eax,%eax
  4006f7:	48 89 de             	mov    %rbx,%rsi
  4006fa:	e8 d1 fe ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4006ff:	45 31 f6             	xor    %r14d,%r14d
  400702:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400709:	1f 84 00 00 00 00 00 
  400710:	49 89 df             	mov    %rbx,%r15
  400713:	8b 0d 53 19 20 00    	mov    0x201953(%rip),%ecx        # 60206c <n>
  400719:	8d 51 01             	lea    0x1(%rcx),%edx
  40071c:	89 15 4a 19 20 00    	mov    %edx,0x20194a(%rip)        # 60206c <n>
  400722:	85 c9                	test   %ecx,%ecx
  400724:	74 0a                	je     400730 <creat+0x60>
  400726:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40072a:	eb 07                	jmp    400733 <creat+0x63>
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)
  400730:	4d 89 fe             	mov    %r15,%r14
  400733:	bf 18 00 00 00       	mov    $0x18,%edi
  400738:	e8 73 fe ff ff       	callq  4005b0 <malloc@plt>
  40073d:	48 89 c3             	mov    %rax,%rbx
  400740:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400744:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400749:	31 c0                	xor    %eax,%eax
  40074b:	48 89 de             	mov    %rbx,%rsi
  40074e:	e8 7d fe ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400753:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400757:	4c 89 f8             	mov    %r15,%rax
  40075a:	75 b4                	jne    400710 <creat+0x40>
  40075c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400763:	00 
  400764:	4c 89 f0             	mov    %r14,%rax
  400767:	5b                   	pop    %rbx
  400768:	41 5e                	pop    %r14
  40076a:	41 5f                	pop    %r15
  40076c:	c3                   	retq   
  40076d:	0f 1f 00             	nopl   (%rax)

0000000000400770 <insert>:
  400770:	48 85 ff             	test   %rdi,%rdi
  400773:	74 27                	je     40079c <insert+0x2c>
  400775:	48 8b 0e             	mov    (%rsi),%rcx
  400778:	48 3b 0f             	cmp    (%rdi),%rcx
  40077b:	7e 26                	jle    4007a3 <insert+0x33>
  40077d:	48 89 f8             	mov    %rdi,%rax
  400780:	48 89 c2             	mov    %rax,%rdx
  400783:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400787:	48 85 c0             	test   %rax,%rax
  40078a:	74 1f                	je     4007ab <insert+0x3b>
  40078c:	48 3b 08             	cmp    (%rax),%rcx
  40078f:	7f ef                	jg     400780 <insert+0x10>
  400791:	48 39 f8             	cmp    %rdi,%rax
  400794:	74 0d                	je     4007a3 <insert+0x33>
  400796:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40079a:	eb 15                	jmp    4007b1 <insert+0x41>
  40079c:	31 c0                	xor    %eax,%eax
  40079e:	48 89 f7             	mov    %rsi,%rdi
  4007a1:	eb 0e                	jmp    4007b1 <insert+0x41>
  4007a3:	48 89 f8             	mov    %rdi,%rax
  4007a6:	48 89 f7             	mov    %rsi,%rdi
  4007a9:	eb 06                	jmp    4007b1 <insert+0x41>
  4007ab:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007af:	31 c0                	xor    %eax,%eax
  4007b1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4007b5:	48 89 f8             	mov    %rdi,%rax
  4007b8:	c3                   	retq   
  4007b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007c0 <del>:
  4007c0:	41 57                	push   %r15
  4007c2:	41 56                	push   %r14
  4007c4:	53                   	push   %rbx
  4007c5:	49 89 fe             	mov    %rdi,%r14
  4007c8:	4d 85 f6             	test   %r14,%r14
  4007cb:	74 3f                	je     40080c <del+0x4c>
  4007cd:	49 39 36             	cmp    %rsi,(%r14)
  4007d0:	4c 89 f3             	mov    %r14,%rbx
  4007d3:	74 1c                	je     4007f1 <del+0x31>
  4007d5:	4c 89 f3             	mov    %r14,%rbx
  4007d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007df:	00 
  4007e0:	49 89 df             	mov    %rbx,%r15
  4007e3:	49 8b 5f 10          	mov    0x10(%r15),%rbx
  4007e7:	48 85 db             	test   %rbx,%rbx
  4007ea:	74 2f                	je     40081b <del+0x5b>
  4007ec:	48 39 33             	cmp    %rsi,(%rbx)
  4007ef:	75 ef                	jne    4007e0 <del+0x20>
  4007f1:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  4007f6:	31 c0                	xor    %eax,%eax
  4007f8:	e8 a3 fd ff ff       	callq  4005a0 <printf@plt>
  4007fd:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400801:	4c 39 f3             	cmp    %r14,%rbx
  400804:	74 23                	je     400829 <del+0x69>
  400806:	49 89 47 10          	mov    %rax,0x10(%r15)
  40080a:	eb 20                	jmp    40082c <del+0x6c>
  40080c:	bf 37 0d 40 00       	mov    $0x400d37,%edi
  400811:	e8 7a fd ff ff       	callq  400590 <puts@plt>
  400816:	45 31 f6             	xor    %r14d,%r14d
  400819:	eb 20                	jmp    40083b <del+0x7b>
  40081b:	bf 88 0c 40 00       	mov    $0x400c88,%edi
  400820:	31 c0                	xor    %eax,%eax
  400822:	e8 79 fd ff ff       	callq  4005a0 <printf@plt>
  400827:	eb 12                	jmp    40083b <del+0x7b>
  400829:	49 89 c6             	mov    %rax,%r14
  40082c:	83 05 39 18 20 00 ff 	addl   $0xffffffff,0x201839(%rip)        # 60206c <n>
  400833:	48 89 df             	mov    %rbx,%rdi
  400836:	e8 45 fd ff ff       	callq  400580 <free@plt>
  40083b:	4c 89 f0             	mov    %r14,%rax
  40083e:	5b                   	pop    %rbx
  40083f:	41 5e                	pop    %r14
  400841:	41 5f                	pop    %r15
  400843:	c3                   	retq   
  400844:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40084b:	00 00 00 00 00 

0000000000400850 <print>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	48 85 db             	test   %rbx,%rbx
  400857:	74 3a                	je     400893 <print+0x43>
  400859:	8b 35 0d 18 20 00    	mov    0x20180d(%rip),%esi        # 60206c <n>
  40085f:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400864:	31 c0                	xor    %eax,%eax
  400866:	e8 35 fd ff ff       	callq  4005a0 <printf@plt>
  40086b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400870:	48 8b 33             	mov    (%rbx),%rsi
  400873:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400878:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40087c:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400881:	b0 01                	mov    $0x1,%al
  400883:	e8 18 fd ff ff       	callq  4005a0 <printf@plt>
  400888:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40088c:	48 85 db             	test   %rbx,%rbx
  40088f:	75 df                	jne    400870 <print+0x20>
  400891:	5b                   	pop    %rbx
  400892:	c3                   	retq   
  400893:	bf 50 0d 40 00       	mov    $0x400d50,%edi
  400898:	5b                   	pop    %rbx
  400899:	e9 f2 fc ff ff       	jmpq   400590 <puts@plt>
  40089e:	66 90                	xchg   %ax,%ax

00000000004008a0 <main>:
  4008a0:	41 57                	push   %r15
  4008a2:	41 56                	push   %r14
  4008a4:	41 55                	push   %r13
  4008a6:	41 54                	push   %r12
  4008a8:	53                   	push   %rbx
  4008a9:	48 83 ec 10          	sub    $0x10,%rsp
  4008ad:	bf ce 0c 40 00       	mov    $0x400cce,%edi
  4008b2:	31 c0                	xor    %eax,%eax
  4008b4:	e8 e7 fc ff ff       	callq  4005a0 <printf@plt>
  4008b9:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  4008be:	e8 cd fc ff ff       	callq  400590 <puts@plt>
  4008c3:	c7 05 9f 17 20 00 00 	movl   $0x0,0x20179f(%rip)        # 60206c <n>
  4008ca:	00 00 00 
  4008cd:	bf 18 00 00 00       	mov    $0x18,%edi
  4008d2:	e8 d9 fc ff ff       	callq  4005b0 <malloc@plt>
  4008d7:	48 89 c3             	mov    %rax,%rbx
  4008da:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  4008df:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4008e3:	31 c0                	xor    %eax,%eax
  4008e5:	48 89 de             	mov    %rbx,%rsi
  4008e8:	e8 e3 fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4008ed:	45 31 e4             	xor    %r12d,%r12d
  4008f0:	49 89 de             	mov    %rbx,%r14
  4008f3:	8b 0d 73 17 20 00    	mov    0x201773(%rip),%ecx        # 60206c <n>
  4008f9:	8d 51 01             	lea    0x1(%rcx),%edx
  4008fc:	89 15 6a 17 20 00    	mov    %edx,0x20176a(%rip)        # 60206c <n>
  400902:	85 c9                	test   %ecx,%ecx
  400904:	74 0a                	je     400910 <main+0x70>
  400906:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40090a:	eb 07                	jmp    400913 <main+0x73>
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)
  400910:	4d 89 f4             	mov    %r14,%r12
  400913:	bf 18 00 00 00       	mov    $0x18,%edi
  400918:	e8 93 fc ff ff       	callq  4005b0 <malloc@plt>
  40091d:	48 89 c3             	mov    %rax,%rbx
  400920:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400924:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400929:	31 c0                	xor    %eax,%eax
  40092b:	48 89 de             	mov    %rbx,%rsi
  40092e:	e8 9d fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400933:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400937:	4c 89 f0             	mov    %r14,%rax
  40093a:	75 b4                	jne    4008f0 <main+0x50>
  40093c:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400943:	00 
  400944:	4d 85 e4             	test   %r12,%r12
  400947:	74 3a                	je     400983 <main+0xe3>
  400949:	8b 35 1d 17 20 00    	mov    0x20171d(%rip),%esi        # 60206c <n>
  40094f:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400954:	31 c0                	xor    %eax,%eax
  400956:	e8 45 fc ff ff       	callq  4005a0 <printf@plt>
  40095b:	4c 89 e3             	mov    %r12,%rbx
  40095e:	66 90                	xchg   %ax,%ax
  400960:	48 8b 33             	mov    (%rbx),%rsi
  400963:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400968:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40096c:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400971:	b0 01                	mov    $0x1,%al
  400973:	e8 28 fc ff ff       	callq  4005a0 <printf@plt>
  400978:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40097c:	48 85 db             	test   %rbx,%rbx
  40097f:	75 df                	jne    400960 <main+0xc0>
  400981:	eb 0a                	jmp    40098d <main+0xed>
  400983:	bf 50 0d 40 00       	mov    $0x400d50,%edi
  400988:	e8 03 fc ff ff       	callq  400590 <puts@plt>
  40098d:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400992:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40099e:	00 00 
  4009a0:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  4009a5:	e8 e6 fb ff ff       	callq  400590 <puts@plt>
  4009aa:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  4009b1:	ff 
  4009b2:	bf e5 0c 40 00       	mov    $0x400ce5,%edi
  4009b7:	31 c0                	xor    %eax,%eax
  4009b9:	e8 e2 fb ff ff       	callq  4005a0 <printf@plt>
  4009be:	bf f4 0c 40 00       	mov    $0x400cf4,%edi
  4009c3:	31 c0                	xor    %eax,%eax
  4009c5:	4c 89 fe             	mov    %r15,%rsi
  4009c8:	e8 03 fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4009cd:	48 8b 3d 8c 16 20 00 	mov    0x20168c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  4009d4:	e8 e7 fb ff ff       	callq  4005c0 <_IO_getc@plt>
  4009d9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4009dd:	83 f8 01             	cmp    $0x1,%eax
  4009e0:	74 7e                	je     400a60 <main+0x1c0>
  4009e2:	83 f8 02             	cmp    $0x2,%eax
  4009e5:	0f 85 ea 01 00 00    	jne    400bd5 <main+0x335>
  4009eb:	bf f7 0c 40 00       	mov    $0x400cf7,%edi
  4009f0:	31 c0                	xor    %eax,%eax
  4009f2:	e8 a9 fb ff ff       	callq  4005a0 <printf@plt>
  4009f7:	bf 09 0d 40 00       	mov    $0x400d09,%edi
  4009fc:	31 c0                	xor    %eax,%eax
  4009fe:	4c 89 f6             	mov    %r14,%rsi
  400a01:	e8 ca fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a06:	4d 85 e4             	test   %r12,%r12
  400a09:	0f 84 c5 00 00 00    	je     400ad4 <main+0x234>
  400a0f:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400a14:	49 39 34 24          	cmp    %rsi,(%r12)
  400a18:	4c 89 e3             	mov    %r12,%rbx
  400a1b:	74 18                	je     400a35 <main+0x195>
  400a1d:	0f 1f 00             	nopl   (%rax)
  400a20:	49 89 dd             	mov    %rbx,%r13
  400a23:	49 8b 5d 10          	mov    0x10(%r13),%rbx
  400a27:	48 85 db             	test   %rbx,%rbx
  400a2a:	0f 84 23 01 00 00    	je     400b53 <main+0x2b3>
  400a30:	48 39 33             	cmp    %rsi,(%rbx)
  400a33:	75 eb                	jne    400a20 <main+0x180>
  400a35:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  400a3a:	31 c0                	xor    %eax,%eax
  400a3c:	e8 5f fb ff ff       	callq  4005a0 <printf@plt>
  400a41:	48 8b 43 10          	mov    0x10(%rbx),%rax
  400a45:	4c 39 e3             	cmp    %r12,%rbx
  400a48:	0f 84 b4 00 00 00    	je     400b02 <main+0x262>
  400a4e:	49 89 45 10          	mov    %rax,0x10(%r13)
  400a52:	e9 ae 00 00 00       	jmpq   400b05 <main+0x265>
  400a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a5e:	00 00 
  400a60:	bf 0d 0d 40 00       	mov    $0x400d0d,%edi
  400a65:	31 c0                	xor    %eax,%eax
  400a67:	e8 34 fb ff ff       	callq  4005a0 <printf@plt>
  400a6c:	bf 18 00 00 00       	mov    $0x18,%edi
  400a71:	e8 3a fb ff ff       	callq  4005b0 <malloc@plt>
  400a76:	48 89 c3             	mov    %rax,%rbx
  400a79:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400a7e:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a82:	31 c0                	xor    %eax,%eax
  400a84:	48 89 de             	mov    %rbx,%rsi
  400a87:	e8 44 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a8c:	83 05 d9 15 20 00 01 	addl   $0x1,0x2015d9(%rip)        # 60206c <n>
  400a93:	4d 85 e4             	test   %r12,%r12
  400a96:	74 4b                	je     400ae3 <main+0x243>
  400a98:	48 8b 33             	mov    (%rbx),%rsi
  400a9b:	4c 89 e0             	mov    %r12,%rax
  400a9e:	49 3b 34 24          	cmp    (%r12),%rsi
  400aa2:	7e 2a                	jle    400ace <main+0x22e>
  400aa4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aab:	00 00 00 00 00 
  400ab0:	48 89 c1             	mov    %rax,%rcx
  400ab3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400ab7:	48 85 c0             	test   %rax,%rax
  400aba:	0f 84 bf 00 00 00    	je     400b7f <main+0x2df>
  400ac0:	48 3b 30             	cmp    (%rax),%rsi
  400ac3:	7f eb                	jg     400ab0 <main+0x210>
  400ac5:	4c 39 e0             	cmp    %r12,%rax
  400ac8:	0f 85 b3 00 00 00    	jne    400b81 <main+0x2e1>
  400ace:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400ad2:	eb 1a                	jmp    400aee <main+0x24e>
  400ad4:	bf 37 0d 40 00       	mov    $0x400d37,%edi
  400ad9:	e8 b2 fa ff ff       	callq  400590 <puts@plt>
  400ade:	e9 8d 00 00 00       	jmpq   400b70 <main+0x2d0>
  400ae3:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aea:	00 
  400aeb:	48 8b 33             	mov    (%rbx),%rsi
  400aee:	bf 29 0d 40 00       	mov    $0x400d29,%edi
  400af3:	31 c0                	xor    %eax,%eax
  400af5:	e8 a6 fa ff ff       	callq  4005a0 <printf@plt>
  400afa:	49 89 dc             	mov    %rbx,%r12
  400afd:	e9 93 00 00 00       	jmpq   400b95 <main+0x2f5>
  400b02:	49 89 c4             	mov    %rax,%r12
  400b05:	83 05 60 15 20 00 ff 	addl   $0xffffffff,0x201560(%rip)        # 60206c <n>
  400b0c:	48 89 df             	mov    %rbx,%rdi
  400b0f:	e8 6c fa ff ff       	callq  400580 <free@plt>
  400b14:	4d 85 e4             	test   %r12,%r12
  400b17:	74 57                	je     400b70 <main+0x2d0>
  400b19:	8b 35 4d 15 20 00    	mov    0x20154d(%rip),%esi        # 60206c <n>
  400b1f:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400b24:	31 c0                	xor    %eax,%eax
  400b26:	e8 75 fa ff ff       	callq  4005a0 <printf@plt>
  400b2b:	4c 89 e3             	mov    %r12,%rbx
  400b2e:	66 90                	xchg   %ax,%ax
  400b30:	48 8b 33             	mov    (%rbx),%rsi
  400b33:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b38:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b3c:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400b41:	b0 01                	mov    $0x1,%al
  400b43:	e8 58 fa ff ff       	callq  4005a0 <printf@plt>
  400b48:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b4c:	48 85 db             	test   %rbx,%rbx
  400b4f:	75 df                	jne    400b30 <main+0x290>
  400b51:	eb 7e                	jmp    400bd1 <main+0x331>
  400b53:	bf 88 0c 40 00       	mov    $0x400c88,%edi
  400b58:	31 c0                	xor    %eax,%eax
  400b5a:	e8 41 fa ff ff       	callq  4005a0 <printf@plt>
  400b5f:	4d 85 e4             	test   %r12,%r12
  400b62:	75 b5                	jne    400b19 <main+0x279>
  400b64:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b6b:	00 00 00 00 00 
  400b70:	bf 50 0d 40 00       	mov    $0x400d50,%edi
  400b75:	e8 16 fa ff ff       	callq  400590 <puts@plt>
  400b7a:	45 31 e4             	xor    %r12d,%r12d
  400b7d:	eb 52                	jmp    400bd1 <main+0x331>
  400b7f:	31 c0                	xor    %eax,%eax
  400b81:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b85:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400b89:	bf 29 0d 40 00       	mov    $0x400d29,%edi
  400b8e:	31 c0                	xor    %eax,%eax
  400b90:	e8 0b fa ff ff       	callq  4005a0 <printf@plt>
  400b95:	8b 35 d1 14 20 00    	mov    0x2014d1(%rip),%esi        # 60206c <n>
  400b9b:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400ba0:	31 c0                	xor    %eax,%eax
  400ba2:	e8 f9 f9 ff ff       	callq  4005a0 <printf@plt>
  400ba7:	4c 89 e3             	mov    %r12,%rbx
  400baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400bb0:	48 8b 33             	mov    (%rbx),%rsi
  400bb3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bb8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bbc:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400bc1:	b0 01                	mov    $0x1,%al
  400bc3:	e8 d8 f9 ff ff       	callq  4005a0 <printf@plt>
  400bc8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bcc:	48 85 db             	test   %rbx,%rbx
  400bcf:	75 df                	jne    400bb0 <main+0x310>
  400bd1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400bd5:	85 c0                	test   %eax,%eax
  400bd7:	0f 85 c3 fd ff ff    	jne    4009a0 <main+0x100>
  400bdd:	31 c0                	xor    %eax,%eax
  400bdf:	48 83 c4 10          	add    $0x10,%rsp
  400be3:	5b                   	pop    %rbx
  400be4:	41 5c                	pop    %r12
  400be6:	41 5d                	pop    %r13
  400be8:	41 5e                	pop    %r14
  400bea:	41 5f                	pop    %r15
  400bec:	c3                   	retq   
  400bed:	0f 1f 00             	nopl   (%rax)

0000000000400bf0 <__libc_csu_init>:
  400bf0:	41 57                	push   %r15
  400bf2:	41 56                	push   %r14
  400bf4:	49 89 d7             	mov    %rdx,%r15
  400bf7:	41 55                	push   %r13
  400bf9:	41 54                	push   %r12
  400bfb:	4c 8d 25 fe 11 20 00 	lea    0x2011fe(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c02:	55                   	push   %rbp
  400c03:	48 8d 2d fe 11 20 00 	lea    0x2011fe(%rip),%rbp        # 601e08 <__init_array_end>
  400c0a:	53                   	push   %rbx
  400c0b:	41 89 fd             	mov    %edi,%r13d
  400c0e:	49 89 f6             	mov    %rsi,%r14
  400c11:	4c 29 e5             	sub    %r12,%rbp
  400c14:	48 83 ec 08          	sub    $0x8,%rsp
  400c18:	48 c1 fd 03          	sar    $0x3,%rbp
  400c1c:	e8 2f f9 ff ff       	callq  400550 <_init>
  400c21:	48 85 ed             	test   %rbp,%rbp
  400c24:	74 20                	je     400c46 <__libc_csu_init+0x56>
  400c26:	31 db                	xor    %ebx,%ebx
  400c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c2f:	00 
  400c30:	4c 89 fa             	mov    %r15,%rdx
  400c33:	4c 89 f6             	mov    %r14,%rsi
  400c36:	44 89 ef             	mov    %r13d,%edi
  400c39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c3d:	48 83 c3 01          	add    $0x1,%rbx
  400c41:	48 39 dd             	cmp    %rbx,%rbp
  400c44:	75 ea                	jne    400c30 <__libc_csu_init+0x40>
  400c46:	48 83 c4 08          	add    $0x8,%rsp
  400c4a:	5b                   	pop    %rbx
  400c4b:	5d                   	pop    %rbp
  400c4c:	41 5c                	pop    %r12
  400c4e:	41 5d                	pop    %r13
  400c50:	41 5e                	pop    %r14
  400c52:	41 5f                	pop    %r15
  400c54:	c3                   	retq   
  400c55:	90                   	nop
  400c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c5d:	00 00 00 

0000000000400c60 <__libc_csu_fini>:
  400c60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c64 <_fini>:
  400c64:	48 83 ec 08          	sub    $0x8,%rsp
  400c68:	48 83 c4 08          	add    $0x8,%rsp
  400c6c:	c3                   	retq   
