
input/19020031096_2.elf:     file format elf64-x86-64


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

0000000000400580 <puts@plt>:
  400580:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400586:	68 00 00 00 00       	pushq  $0x0
  40058b:	e9 e0 ff ff ff       	jmpq   400570 <.plt>

0000000000400590 <printf@plt>:
  400590:	ff 25 8a 1a 20 00    	jmpq   *0x201a8a(%rip)        # 602020 <printf@GLIBC_2.2.5>
  400596:	68 01 00 00 00       	pushq  $0x1
  40059b:	e9 d0 ff ff ff       	jmpq   400570 <.plt>

00000000004005a0 <malloc@plt>:
  4005a0:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  4005a6:	68 02 00 00 00       	pushq  $0x2
  4005ab:	e9 c0 ff ff ff       	jmpq   400570 <.plt>

00000000004005b0 <_IO_getc@plt>:
  4005b0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602030 <_IO_getc@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

00000000004005c0 <__isoc99_scanf@plt>:
  4005c0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  4005c6:	68 04 00 00 00       	pushq  $0x4
  4005cb:	e9 a0 ff ff ff       	jmpq   400570 <.plt>

00000000004005d0 <exit@plt>:
  4005d0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602040 <exit@GLIBC_2.2.5>
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
  4005ef:	49 c7 c0 90 0c 40 00 	mov    $0x400c90,%r8
  4005f6:	48 c7 c1 20 0c 40 00 	mov    $0x400c20,%rcx
  4005fd:	48 c7 c7 90 08 40 00 	mov    $0x400890,%rdi
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
  4006e4:	e8 b7 fe ff ff       	callq  4005a0 <malloc@plt>
  4006e9:	49 89 c7             	mov    %rax,%r15
  4006ec:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4006f0:	45 31 f6             	xor    %r14d,%r14d
  4006f3:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4006f8:	31 c0                	xor    %eax,%eax
  4006fa:	4c 89 fe             	mov    %r15,%rsi
  4006fd:	e8 be fe ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  400702:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400706:	74 54                	je     40075c <creat+0x8c>
  400708:	4c 89 f8             	mov    %r15,%rax
  40070b:	4c 89 fb             	mov    %r15,%rbx
  40070e:	31 c9                	xor    %ecx,%ecx
  400710:	49 89 df             	mov    %rbx,%r15
  400713:	8b 15 53 19 20 00    	mov    0x201953(%rip),%edx        # 60206c <n>
  400719:	8d 72 01             	lea    0x1(%rdx),%esi
  40071c:	89 35 4a 19 20 00    	mov    %esi,0x20194a(%rip)        # 60206c <n>
  400722:	4d 89 fe             	mov    %r15,%r14
  400725:	85 d2                	test   %edx,%edx
  400727:	74 07                	je     400730 <creat+0x60>
  400729:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40072d:	49 89 ce             	mov    %rcx,%r14
  400730:	bf 18 00 00 00       	mov    $0x18,%edi
  400735:	e8 66 fe ff ff       	callq  4005a0 <malloc@plt>
  40073a:	48 89 c3             	mov    %rax,%rbx
  40073d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400741:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400746:	31 c0                	xor    %eax,%eax
  400748:	48 89 de             	mov    %rbx,%rsi
  40074b:	e8 70 fe ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  400750:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400754:	4c 89 f8             	mov    %r15,%rax
  400757:	4c 89 f1             	mov    %r14,%rcx
  40075a:	75 b4                	jne    400710 <creat+0x40>
  40075c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400763:	00 
  400764:	4c 89 f0             	mov    %r14,%rax
  400767:	5b                   	pop    %rbx
  400768:	41 5e                	pop    %r14
  40076a:	41 5f                	pop    %r15
  40076c:	c3                   	retq   
  40076d:	0f 1f 00             	nopl   (%rax)

0000000000400770 <del>:
  400770:	53                   	push   %rbx
  400771:	48 89 fb             	mov    %rdi,%rbx
  400774:	48 85 db             	test   %rbx,%rbx
  400777:	74 0b                	je     400784 <del+0x14>
  400779:	48 39 33             	cmp    %rsi,(%rbx)
  40077c:	75 14                	jne    400792 <del+0x22>
  40077e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400782:	eb 4d                	jmp    4007d1 <del+0x61>
  400784:	bf 45 0d 40 00       	mov    $0x400d45,%edi
  400789:	e8 f2 fd ff ff       	callq  400580 <puts@plt>
  40078e:	31 db                	xor    %ebx,%ebx
  400790:	eb 52                	jmp    4007e4 <del+0x74>
  400792:	48 89 d9             	mov    %rbx,%rcx
  400795:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40079c:	00 00 00 00 
  4007a0:	48 89 c8             	mov    %rcx,%rax
  4007a3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4007a7:	48 85 c9             	test   %rcx,%rcx
  4007aa:	74 14                	je     4007c0 <del+0x50>
  4007ac:	48 39 31             	cmp    %rsi,(%rcx)
  4007af:	75 ef                	jne    4007a0 <del+0x30>
  4007b1:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4007b5:	48 39 d9             	cmp    %rbx,%rcx
  4007b8:	74 14                	je     4007ce <del+0x5e>
  4007ba:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4007be:	eb 11                	jmp    4007d1 <del+0x61>
  4007c0:	bf b7 0c 40 00       	mov    $0x400cb7,%edi
  4007c5:	31 c0                	xor    %eax,%eax
  4007c7:	e8 c4 fd ff ff       	callq  400590 <printf@plt>
  4007cc:	eb 16                	jmp    4007e4 <del+0x74>
  4007ce:	48 89 d3             	mov    %rdx,%rbx
  4007d1:	bf ab 0c 40 00       	mov    $0x400cab,%edi
  4007d6:	31 c0                	xor    %eax,%eax
  4007d8:	e8 b3 fd ff ff       	callq  400590 <printf@plt>
  4007dd:	83 05 88 18 20 00 ff 	addl   $0xffffffff,0x201888(%rip)        # 60206c <n>
  4007e4:	48 89 d8             	mov    %rbx,%rax
  4007e7:	5b                   	pop    %rbx
  4007e8:	c3                   	retq   
  4007e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007f0 <insert>:
  4007f0:	48 85 ff             	test   %rdi,%rdi
  4007f3:	74 27                	je     40081c <insert+0x2c>
  4007f5:	48 8b 0e             	mov    (%rsi),%rcx
  4007f8:	48 3b 0f             	cmp    (%rdi),%rcx
  4007fb:	7e 23                	jle    400820 <insert+0x30>
  4007fd:	48 89 f8             	mov    %rdi,%rax
  400800:	48 89 c2             	mov    %rax,%rdx
  400803:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400807:	48 85 c0             	test   %rax,%rax
  40080a:	74 29                	je     400835 <insert+0x45>
  40080c:	48 3b 08             	cmp    (%rax),%rcx
  40080f:	7f ef                	jg     400800 <insert+0x10>
  400811:	48 39 f8             	cmp    %rdi,%rax
  400814:	74 0d                	je     400823 <insert+0x33>
  400816:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40081a:	eb 0a                	jmp    400826 <insert+0x36>
  40081c:	31 c0                	xor    %eax,%eax
  40081e:	eb 03                	jmp    400823 <insert+0x33>
  400820:	48 89 f8             	mov    %rdi,%rax
  400823:	48 89 f7             	mov    %rsi,%rdi
  400826:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40082a:	83 05 3b 18 20 00 01 	addl   $0x1,0x20183b(%rip)        # 60206c <n>
  400831:	48 89 f8             	mov    %rdi,%rax
  400834:	c3                   	retq   
  400835:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400839:	31 c0                	xor    %eax,%eax
  40083b:	eb e9                	jmp    400826 <insert+0x36>
  40083d:	0f 1f 00             	nopl   (%rax)

0000000000400840 <print>:
  400840:	53                   	push   %rbx
  400841:	48 89 fb             	mov    %rdi,%rbx
  400844:	8b 35 22 18 20 00    	mov    0x201822(%rip),%esi        # 60206c <n>
  40084a:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  40084f:	31 c0                	xor    %eax,%eax
  400851:	e8 3a fd ff ff       	callq  400590 <printf@plt>
  400856:	48 85 db             	test   %rbx,%rbx
  400859:	74 26                	je     400881 <print+0x41>
  40085b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400860:	48 8b 33             	mov    (%rbx),%rsi
  400863:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400868:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40086c:	bf e8 0c 40 00       	mov    $0x400ce8,%edi
  400871:	b0 01                	mov    $0x1,%al
  400873:	e8 18 fd ff ff       	callq  400590 <printf@plt>
  400878:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40087c:	48 85 db             	test   %rbx,%rbx
  40087f:	75 df                	jne    400860 <print+0x20>
  400881:	5b                   	pop    %rbx
  400882:	c3                   	retq   
  400883:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40088a:	84 00 00 00 00 00 

0000000000400890 <main>:
  400890:	41 57                	push   %r15
  400892:	41 56                	push   %r14
  400894:	41 54                	push   %r12
  400896:	53                   	push   %rbx
  400897:	48 83 ec 18          	sub    $0x18,%rsp
  40089b:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  4008a0:	e8 db fc ff ff       	callq  400580 <puts@plt>
  4008a5:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  4008aa:	e8 d1 fc ff ff       	callq  400580 <puts@plt>
  4008af:	c7 05 b3 17 20 00 00 	movl   $0x0,0x2017b3(%rip)        # 60206c <n>
  4008b6:	00 00 00 
  4008b9:	bf 18 00 00 00       	mov    $0x18,%edi
  4008be:	e8 dd fc ff ff       	callq  4005a0 <malloc@plt>
  4008c3:	49 89 c6             	mov    %rax,%r14
  4008c6:	49 8d 56 08          	lea    0x8(%r14),%rdx
  4008ca:	45 31 e4             	xor    %r12d,%r12d
  4008cd:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4008d2:	31 c0                	xor    %eax,%eax
  4008d4:	4c 89 f6             	mov    %r14,%rsi
  4008d7:	e8 e4 fc ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  4008dc:	49 83 3e 00          	cmpq   $0x0,(%r14)
  4008e0:	74 5a                	je     40093c <main+0xac>
  4008e2:	4c 89 f0             	mov    %r14,%rax
  4008e5:	4c 89 f3             	mov    %r14,%rbx
  4008e8:	31 c9                	xor    %ecx,%ecx
  4008ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4008f0:	49 89 de             	mov    %rbx,%r14
  4008f3:	8b 15 73 17 20 00    	mov    0x201773(%rip),%edx        # 60206c <n>
  4008f9:	8d 72 01             	lea    0x1(%rdx),%esi
  4008fc:	89 35 6a 17 20 00    	mov    %esi,0x20176a(%rip)        # 60206c <n>
  400902:	4d 89 f4             	mov    %r14,%r12
  400905:	85 d2                	test   %edx,%edx
  400907:	74 07                	je     400910 <main+0x80>
  400909:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40090d:	49 89 cc             	mov    %rcx,%r12
  400910:	bf 18 00 00 00       	mov    $0x18,%edi
  400915:	e8 86 fc ff ff       	callq  4005a0 <malloc@plt>
  40091a:	48 89 c3             	mov    %rax,%rbx
  40091d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400921:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400926:	31 c0                	xor    %eax,%eax
  400928:	48 89 de             	mov    %rbx,%rsi
  40092b:	e8 90 fc ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  400930:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400934:	4c 89 f0             	mov    %r14,%rax
  400937:	4c 89 e1             	mov    %r12,%rcx
  40093a:	75 b4                	jne    4008f0 <main+0x60>
  40093c:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400943:	00 
  400944:	8b 35 22 17 20 00    	mov    0x201722(%rip),%esi        # 60206c <n>
  40094a:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  40094f:	31 c0                	xor    %eax,%eax
  400951:	e8 3a fc ff ff       	callq  400590 <printf@plt>
  400956:	4d 85 e4             	test   %r12,%r12
  400959:	74 26                	je     400981 <main+0xf1>
  40095b:	4c 89 e3             	mov    %r12,%rbx
  40095e:	66 90                	xchg   %ax,%ax
  400960:	48 8b 33             	mov    (%rbx),%rsi
  400963:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400968:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40096c:	bf e8 0c 40 00       	mov    $0x400ce8,%edi
  400971:	b0 01                	mov    $0x1,%al
  400973:	e8 18 fc ff ff       	callq  400590 <printf@plt>
  400978:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40097c:	48 85 db             	test   %rbx,%rbx
  40097f:	75 df                	jne    400960 <main+0xd0>
  400981:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  400986:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  40098b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400990:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  400995:	e8 e6 fb ff ff       	callq  400580 <puts@plt>
  40099a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  4009a1:	ff 
  4009a2:	bf f3 0c 40 00       	mov    $0x400cf3,%edi
  4009a7:	31 c0                	xor    %eax,%eax
  4009a9:	e8 e2 fb ff ff       	callq  400590 <printf@plt>
  4009ae:	bf 02 0d 40 00       	mov    $0x400d02,%edi
  4009b3:	31 c0                	xor    %eax,%eax
  4009b5:	4c 89 fe             	mov    %r15,%rsi
  4009b8:	e8 03 fc ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  4009bd:	48 8b 3d 9c 16 20 00 	mov    0x20169c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  4009c4:	e8 e7 fb ff ff       	callq  4005b0 <_IO_getc@plt>
  4009c9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4009cd:	83 f8 01             	cmp    $0x1,%eax
  4009d0:	0f 84 8a 00 00 00    	je     400a60 <main+0x1d0>
  4009d6:	83 f8 02             	cmp    $0x2,%eax
  4009d9:	74 15                	je     4009f0 <main+0x160>
  4009db:	83 f8 03             	cmp    $0x3,%eax
  4009de:	0f 84 29 02 00 00    	je     400c0d <main+0x37d>
  4009e4:	85 c0                	test   %eax,%eax
  4009e6:	75 a8                	jne    400990 <main+0x100>
  4009e8:	e9 12 02 00 00       	jmpq   400bff <main+0x36f>
  4009ed:	0f 1f 00             	nopl   (%rax)
  4009f0:	bf 2f 0d 40 00       	mov    $0x400d2f,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 94 fb ff ff       	callq  400590 <printf@plt>
  4009fc:	bf 41 0d 40 00       	mov    $0x400d41,%edi
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 f6             	mov    %r14,%rsi
  400a06:	e8 b5 fb ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	0f 84 a8 00 00 00    	je     400abc <main+0x22c>
  400a14:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a19:	49 39 34 24          	cmp    %rsi,(%r12)
  400a1d:	4c 89 e0             	mov    %r12,%rax
  400a20:	75 0e                	jne    400a30 <main+0x1a0>
  400a22:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a27:	e9 5a 01 00 00       	jmpq   400b86 <main+0x2f6>
  400a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a30:	48 89 c1             	mov    %rax,%rcx
  400a33:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a37:	48 85 c0             	test   %rax,%rax
  400a3a:	0f 84 b9 00 00 00    	je     400af9 <main+0x269>
  400a40:	48 39 30             	cmp    %rsi,(%rax)
  400a43:	75 eb                	jne    400a30 <main+0x1a0>
  400a45:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a49:	4c 39 e0             	cmp    %r12,%rax
  400a4c:	0f 84 31 01 00 00    	je     400b83 <main+0x2f3>
  400a52:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a56:	e9 2b 01 00 00       	jmpq   400b86 <main+0x2f6>
  400a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a60:	bf 05 0d 40 00       	mov    $0x400d05,%edi
  400a65:	31 c0                	xor    %eax,%eax
  400a67:	e8 24 fb ff ff       	callq  400590 <printf@plt>
  400a6c:	bf 18 00 00 00       	mov    $0x18,%edi
  400a71:	e8 2a fb ff ff       	callq  4005a0 <malloc@plt>
  400a76:	48 89 c3             	mov    %rax,%rbx
  400a79:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  400a7e:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a82:	31 c0                	xor    %eax,%eax
  400a84:	48 89 de             	mov    %rbx,%rsi
  400a87:	e8 34 fb ff ff       	callq  4005c0 <__isoc99_scanf@plt>
  400a8c:	4d 85 e4             	test   %r12,%r12
  400a8f:	74 4c                	je     400add <main+0x24d>
  400a91:	48 8b 33             	mov    (%rbx),%rsi
  400a94:	4c 89 e0             	mov    %r12,%rax
  400a97:	49 3b 34 24          	cmp    (%r12),%rsi
  400a9b:	7e 50                	jle    400aed <main+0x25d>
  400a9d:	0f 1f 00             	nopl   (%rax)
  400aa0:	48 89 c1             	mov    %rax,%rcx
  400aa3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400aa7:	48 85 c0             	test   %rax,%rax
  400aaa:	74 64                	je     400b10 <main+0x280>
  400aac:	48 3b 30             	cmp    (%rax),%rsi
  400aaf:	7f ef                	jg     400aa0 <main+0x210>
  400ab1:	4c 39 e0             	cmp    %r12,%rax
  400ab4:	74 37                	je     400aed <main+0x25d>
  400ab6:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400aba:	eb 37                	jmp    400af3 <main+0x263>
  400abc:	bf 45 0d 40 00       	mov    $0x400d45,%edi
  400ac1:	e8 ba fa ff ff       	callq  400580 <puts@plt>
  400ac6:	8b 35 a0 15 20 00    	mov    0x2015a0(%rip),%esi        # 60206c <n>
  400acc:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  400ad1:	31 c0                	xor    %eax,%eax
  400ad3:	e8 b8 fa ff ff       	callq  400590 <printf@plt>
  400ad8:	e9 13 01 00 00       	jmpq   400bf0 <main+0x360>
  400add:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400ae4:	00 
  400ae5:	48 8b 33             	mov    (%rbx),%rsi
  400ae8:	49 89 dc             	mov    %rbx,%r12
  400aeb:	eb 33                	jmp    400b20 <main+0x290>
  400aed:	4c 89 e0             	mov    %r12,%rax
  400af0:	49 89 dc             	mov    %rbx,%r12
  400af3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400af7:	eb 27                	jmp    400b20 <main+0x290>
  400af9:	bf b7 0c 40 00       	mov    $0x400cb7,%edi
  400afe:	31 c0                	xor    %eax,%eax
  400b00:	e8 8b fa ff ff       	callq  400590 <printf@plt>
  400b05:	8b 35 61 15 20 00    	mov    0x201561(%rip),%esi        # 60206c <n>
  400b0b:	e9 91 00 00 00       	jmpq   400ba1 <main+0x311>
  400b10:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b14:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400b1b:	00 
  400b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b20:	83 05 45 15 20 00 01 	addl   $0x1,0x201545(%rip)        # 60206c <n>
  400b27:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  400b2c:	31 c0                	xor    %eax,%eax
  400b2e:	e8 5d fa ff ff       	callq  400590 <printf@plt>
  400b33:	8b 35 33 15 20 00    	mov    0x201533(%rip),%esi        # 60206c <n>
  400b39:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  400b3e:	31 c0                	xor    %eax,%eax
  400b40:	e8 4b fa ff ff       	callq  400590 <printf@plt>
  400b45:	4d 85 e4             	test   %r12,%r12
  400b48:	0f 84 a2 00 00 00    	je     400bf0 <main+0x360>
  400b4e:	4c 89 e3             	mov    %r12,%rbx
  400b51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b58:	0f 1f 84 00 00 00 00 
  400b5f:	00 
  400b60:	48 8b 33             	mov    (%rbx),%rsi
  400b63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b6c:	bf e8 0c 40 00       	mov    $0x400ce8,%edi
  400b71:	b0 01                	mov    $0x1,%al
  400b73:	e8 18 fa ff ff       	callq  400590 <printf@plt>
  400b78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b7c:	48 85 db             	test   %rbx,%rbx
  400b7f:	75 df                	jne    400b60 <main+0x2d0>
  400b81:	eb 70                	jmp    400bf3 <main+0x363>
  400b83:	49 89 d4             	mov    %rdx,%r12
  400b86:	bf ab 0c 40 00       	mov    $0x400cab,%edi
  400b8b:	31 c0                	xor    %eax,%eax
  400b8d:	e8 fe f9 ff ff       	callq  400590 <printf@plt>
  400b92:	8b 35 d4 14 20 00    	mov    0x2014d4(%rip),%esi        # 60206c <n>
  400b98:	83 c6 ff             	add    $0xffffffff,%esi
  400b9b:	89 35 cb 14 20 00    	mov    %esi,0x2014cb(%rip)        # 60206c <n>
  400ba1:	bf cc 0c 40 00       	mov    $0x400ccc,%edi
  400ba6:	31 c0                	xor    %eax,%eax
  400ba8:	e8 e3 f9 ff ff       	callq  400590 <printf@plt>
  400bad:	4d 85 e4             	test   %r12,%r12
  400bb0:	74 3e                	je     400bf0 <main+0x360>
  400bb2:	4c 89 e3             	mov    %r12,%rbx
  400bb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400bbc:	00 00 00 00 
  400bc0:	48 8b 33             	mov    (%rbx),%rsi
  400bc3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bc8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bcc:	bf e8 0c 40 00       	mov    $0x400ce8,%edi
  400bd1:	b0 01                	mov    $0x1,%al
  400bd3:	e8 b8 f9 ff ff       	callq  400590 <printf@plt>
  400bd8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bdc:	48 85 db             	test   %rbx,%rbx
  400bdf:	75 df                	jne    400bc0 <main+0x330>
  400be1:	eb 10                	jmp    400bf3 <main+0x363>
  400be3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bea:	84 00 00 00 00 00 
  400bf0:	45 31 e4             	xor    %r12d,%r12d
  400bf3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400bf7:	85 c0                	test   %eax,%eax
  400bf9:	0f 85 91 fd ff ff    	jne    400990 <main+0x100>
  400bff:	31 c0                	xor    %eax,%eax
  400c01:	48 83 c4 18          	add    $0x18,%rsp
  400c05:	5b                   	pop    %rbx
  400c06:	41 5c                	pop    %r12
  400c08:	41 5e                	pop    %r14
  400c0a:	41 5f                	pop    %r15
  400c0c:	c3                   	retq   
  400c0d:	31 ff                	xor    %edi,%edi
  400c0f:	e8 bc f9 ff ff       	callq  4005d0 <exit@plt>
  400c14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c1b:	00 00 00 
  400c1e:	66 90                	xchg   %ax,%ax

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
  400c4c:	e8 ff f8 ff ff       	callq  400550 <_init>
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
