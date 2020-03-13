
input/19060012026-2.elf:     file format elf64-x86-64


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

0000000000400560 <puts@plt>:
  400560:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400566:	68 00 00 00 00       	pushq  $0x0
  40056b:	e9 e0 ff ff ff       	jmpq   400550 <.plt>

0000000000400570 <printf@plt>:
  400570:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602020 <printf@GLIBC_2.2.5>
  400576:	68 01 00 00 00       	pushq  $0x1
  40057b:	e9 d0 ff ff ff       	jmpq   400550 <.plt>

0000000000400580 <malloc@plt>:
  400580:	ff 25 a2 1a 20 00    	jmpq   *0x201aa2(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  400586:	68 02 00 00 00       	pushq  $0x2
  40058b:	e9 c0 ff ff ff       	jmpq   400550 <.plt>

0000000000400590 <_IO_getc@plt>:
  400590:	ff 25 9a 1a 20 00    	jmpq   *0x201a9a(%rip)        # 602030 <_IO_getc@GLIBC_2.2.5>
  400596:	68 03 00 00 00       	pushq  $0x3
  40059b:	e9 b0 ff ff ff       	jmpq   400550 <.plt>

00000000004005a0 <__isoc99_scanf@plt>:
  4005a0:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  4005a6:	68 04 00 00 00       	pushq  $0x4
  4005ab:	e9 a0 ff ff ff       	jmpq   400550 <.plt>

00000000004005b0 <exit@plt>:
  4005b0:	ff 25 8a 1a 20 00    	jmpq   *0x201a8a(%rip)        # 602040 <exit@GLIBC_2.2.5>
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
  4005cf:	49 c7 c0 d0 0b 40 00 	mov    $0x400bd0,%r8
  4005d6:	48 c7 c1 60 0b 40 00 	mov    $0x400b60,%rcx
  4005dd:	48 c7 c7 a0 08 40 00 	mov    $0x4008a0,%rdi
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

00000000004006b0 <crate>:
  4006b0:	41 57                	push   %r15
  4006b2:	41 56                	push   %r14
  4006b4:	53                   	push   %rbx
  4006b5:	c7 05 ad 19 20 00 00 	movl   $0x0,0x2019ad(%rip)        # 60206c <n>
  4006bc:	00 00 00 
  4006bf:	bf 18 00 00 00       	mov    $0x18,%edi
  4006c4:	e8 b7 fe ff ff       	callq  400580 <malloc@plt>
  4006c9:	49 89 c6             	mov    %rax,%r14
  4006cc:	bf e4 0b 40 00       	mov    $0x400be4,%edi
  4006d1:	31 c0                	xor    %eax,%eax
  4006d3:	e8 98 fe ff ff       	callq  400570 <printf@plt>
  4006d8:	bf fc 0b 40 00       	mov    $0x400bfc,%edi
  4006dd:	49 8d 56 08          	lea    0x8(%r14),%rdx
  4006e1:	31 c0                	xor    %eax,%eax
  4006e3:	4c 89 f6             	mov    %r14,%rsi
  4006e6:	e8 b5 fe ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  4006eb:	8b 05 7b 19 20 00    	mov    0x20197b(%rip),%eax        # 60206c <n>
  4006f1:	8d 48 01             	lea    0x1(%rax),%ecx
  4006f4:	89 0d 72 19 20 00    	mov    %ecx,0x201972(%rip)        # 60206c <n>
  4006fa:	83 f8 01             	cmp    $0x1,%eax
  4006fd:	7f 58                	jg     400757 <crate+0xa7>
  4006ff:	4d 89 f7             	mov    %r14,%r15
  400702:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400709:	1f 84 00 00 00 00 00 
  400710:	bf 18 00 00 00       	mov    $0x18,%edi
  400715:	e8 66 fe ff ff       	callq  400580 <malloc@plt>
  40071a:	48 89 c3             	mov    %rax,%rbx
  40071d:	bf e4 0b 40 00       	mov    $0x400be4,%edi
  400722:	31 c0                	xor    %eax,%eax
  400724:	e8 47 fe ff ff       	callq  400570 <printf@plt>
  400729:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40072d:	bf fc 0b 40 00       	mov    $0x400bfc,%edi
  400732:	31 c0                	xor    %eax,%eax
  400734:	48 89 de             	mov    %rbx,%rsi
  400737:	e8 64 fe ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  40073c:	49 89 5f 10          	mov    %rbx,0x10(%r15)
  400740:	8b 05 26 19 20 00    	mov    0x201926(%rip),%eax        # 60206c <n>
  400746:	8d 48 01             	lea    0x1(%rax),%ecx
  400749:	89 0d 1d 19 20 00    	mov    %ecx,0x20191d(%rip)        # 60206c <n>
  40074f:	49 89 df             	mov    %rbx,%r15
  400752:	83 f8 02             	cmp    $0x2,%eax
  400755:	7c b9                	jl     400710 <crate+0x60>
  400757:	4c 89 f0             	mov    %r14,%rax
  40075a:	5b                   	pop    %rbx
  40075b:	41 5e                	pop    %r14
  40075d:	41 5f                	pop    %r15
  40075f:	c3                   	retq   

0000000000400760 <print>:
  400760:	55                   	push   %rbp
  400761:	53                   	push   %rbx
  400762:	50                   	push   %rax
  400763:	48 89 fb             	mov    %rdi,%rbx
  400766:	83 3d ff 18 20 00 00 	cmpl   $0x0,0x2018ff(%rip)        # 60206c <n>
  40076d:	7e 38                	jle    4007a7 <print+0x47>
  40076f:	31 ed                	xor    %ebp,%ebp
  400771:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400778:	0f 1f 84 00 00 00 00 
  40077f:	00 
  400780:	48 8b 33             	mov    (%rbx),%rsi
  400783:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400788:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40078c:	bf 01 0c 40 00       	mov    $0x400c01,%edi
  400791:	b0 01                	mov    $0x1,%al
  400793:	e8 d8 fd ff ff       	callq  400570 <printf@plt>
  400798:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40079c:	83 c5 01             	add    $0x1,%ebp
  40079f:	3b 2d c7 18 20 00    	cmp    0x2018c7(%rip),%ebp        # 60206c <n>
  4007a5:	7c d9                	jl     400780 <print+0x20>
  4007a7:	48 83 c4 08          	add    $0x8,%rsp
  4007ab:	5b                   	pop    %rbx
  4007ac:	5d                   	pop    %rbp
  4007ad:	c3                   	retq   
  4007ae:	66 90                	xchg   %ax,%ax

00000000004007b0 <insert>:
  4007b0:	4c 8d 4f 10          	lea    0x10(%rdi),%r9
  4007b4:	48 8b 57 10          	mov    0x10(%rdi),%rdx
  4007b8:	4c 8b 06             	mov    (%rsi),%r8
  4007bb:	48 85 d2             	test   %rdx,%rdx
  4007be:	74 34                	je     4007f4 <insert+0x44>
  4007c0:	48 89 f9             	mov    %rdi,%rcx
  4007c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007ca:	84 00 00 00 00 00 
  4007d0:	48 89 c8             	mov    %rcx,%rax
  4007d3:	48 89 d1             	mov    %rdx,%rcx
  4007d6:	4c 39 00             	cmp    %r8,(%rax)
  4007d9:	7d 32                	jge    40080d <insert+0x5d>
  4007db:	4c 8d 49 10          	lea    0x10(%rcx),%r9
  4007df:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4007e3:	49 89 c2             	mov    %rax,%r10
  4007e6:	48 85 d2             	test   %rdx,%rdx
  4007e9:	75 e5                	jne    4007d0 <insert+0x20>
  4007eb:	4c 39 01             	cmp    %r8,(%rcx)
  4007ee:	7d 0c                	jge    4007fc <insert+0x4c>
  4007f0:	31 c9                	xor    %ecx,%ecx
  4007f2:	eb 14                	jmp    400808 <insert+0x58>
  4007f4:	48 89 f9             	mov    %rdi,%rcx
  4007f7:	4c 39 01             	cmp    %r8,(%rcx)
  4007fa:	7c f4                	jl     4007f0 <insert+0x40>
  4007fc:	48 39 f9             	cmp    %rdi,%rcx
  4007ff:	74 19                	je     40081a <insert+0x6a>
  400801:	48 83 c0 10          	add    $0x10,%rax
  400805:	49 89 c1             	mov    %rax,%r9
  400808:	49 89 31             	mov    %rsi,(%r9)
  40080b:	eb 10                	jmp    40081d <insert+0x6d>
  40080d:	48 89 c1             	mov    %rax,%rcx
  400810:	4c 89 d0             	mov    %r10,%rax
  400813:	4c 39 01             	cmp    %r8,(%rcx)
  400816:	7c d8                	jl     4007f0 <insert+0x40>
  400818:	eb e2                	jmp    4007fc <insert+0x4c>
  40081a:	48 89 f7             	mov    %rsi,%rdi
  40081d:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  400821:	83 05 44 18 20 00 01 	addl   $0x1,0x201844(%rip)        # 60206c <n>
  400828:	48 89 f8             	mov    %rdi,%rax
  40082b:	c3                   	retq   
  40082c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400830 <del>:
  400830:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  400834:	4c 8b 06             	mov    (%rsi),%r8
  400837:	48 85 c9             	test   %rcx,%rcx
  40083a:	74 30                	je     40086c <del+0x3c>
  40083c:	48 89 fe             	mov    %rdi,%rsi
  40083f:	90                   	nop
  400840:	48 89 f2             	mov    %rsi,%rdx
  400843:	48 89 ce             	mov    %rcx,%rsi
  400846:	4c 39 02             	cmp    %r8,(%rdx)
  400849:	74 2f                	je     40087a <del+0x4a>
  40084b:	48 8b 4e 10          	mov    0x10(%rsi),%rcx
  40084f:	48 89 d0             	mov    %rdx,%rax
  400852:	48 85 c9             	test   %rcx,%rcx
  400855:	75 e9                	jne    400840 <del+0x10>
  400857:	48 89 f1             	mov    %rsi,%rcx
  40085a:	31 f6                	xor    %esi,%esi
  40085c:	4c 39 01             	cmp    %r8,(%rcx)
  40085f:	75 15                	jne    400876 <del+0x46>
  400861:	48 39 f9             	cmp    %rdi,%rcx
  400864:	74 21                	je     400887 <del+0x57>
  400866:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40086a:	eb 1e                	jmp    40088a <del+0x5a>
  40086c:	31 f6                	xor    %esi,%esi
  40086e:	48 89 f9             	mov    %rdi,%rcx
  400871:	4c 39 01             	cmp    %r8,(%rcx)
  400874:	74 eb                	je     400861 <del+0x31>
  400876:	48 89 f8             	mov    %rdi,%rax
  400879:	c3                   	retq   
  40087a:	48 89 d1             	mov    %rdx,%rcx
  40087d:	48 89 c2             	mov    %rax,%rdx
  400880:	4c 39 01             	cmp    %r8,(%rcx)
  400883:	74 dc                	je     400861 <del+0x31>
  400885:	eb ef                	jmp    400876 <del+0x46>
  400887:	48 89 f7             	mov    %rsi,%rdi
  40088a:	83 05 db 17 20 00 ff 	addl   $0xffffffff,0x2017db(%rip)        # 60206c <n>
  400891:	48 89 f8             	mov    %rdi,%rax
  400894:	c3                   	retq   
  400895:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40089c:	00 00 00 00 

00000000004008a0 <main>:
  4008a0:	55                   	push   %rbp
  4008a1:	41 57                	push   %r15
  4008a3:	41 56                	push   %r14
  4008a5:	53                   	push   %rbx
  4008a6:	50                   	push   %rax
  4008a7:	e8 04 fe ff ff       	callq  4006b0 <crate>
  4008ac:	49 89 c7             	mov    %rax,%r15
  4008af:	83 3d b6 17 20 00 00 	cmpl   $0x0,0x2017b6(%rip)        # 60206c <n>
  4008b6:	7e 2f                	jle    4008e7 <main+0x47>
  4008b8:	31 ed                	xor    %ebp,%ebp
  4008ba:	4c 89 fb             	mov    %r15,%rbx
  4008bd:	0f 1f 00             	nopl   (%rax)
  4008c0:	48 8b 33             	mov    (%rbx),%rsi
  4008c3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008cc:	bf 01 0c 40 00       	mov    $0x400c01,%edi
  4008d1:	b0 01                	mov    $0x1,%al
  4008d3:	e8 98 fc ff ff       	callq  400570 <printf@plt>
  4008d8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008dc:	83 c5 01             	add    $0x1,%ebp
  4008df:	3b 2d 87 17 20 00    	cmp    0x201787(%rip),%ebp        # 60206c <n>
  4008e5:	7c d9                	jl     4008c0 <main+0x20>
  4008e7:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  4008ec:	e9 ff 01 00 00       	jmpq   400af0 <main+0x250>
  4008f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008f8:	0f 1f 84 00 00 00 00 
  4008ff:	00 
  400900:	bf 18 00 00 00       	mov    $0x18,%edi
  400905:	e8 76 fc ff ff       	callq  400580 <malloc@plt>
  40090a:	48 89 c3             	mov    %rax,%rbx
  40090d:	bf 1c 0c 40 00       	mov    $0x400c1c,%edi
  400912:	31 c0                	xor    %eax,%eax
  400914:	e8 57 fc ff ff       	callq  400570 <printf@plt>
  400919:	bf 19 0c 40 00       	mov    $0x400c19,%edi
  40091e:	31 c0                	xor    %eax,%eax
  400920:	48 89 de             	mov    %rbx,%rsi
  400923:	e8 78 fc ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  400928:	49 8b 77 10          	mov    0x10(%r15),%rsi
  40092c:	48 8b 03             	mov    (%rbx),%rax
  40092f:	48 85 f6             	test   %rsi,%rsi
  400932:	0f 84 90 00 00 00    	je     4009c8 <main+0x128>
  400938:	4c 89 f9             	mov    %r15,%rcx
  40093b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400940:	48 89 ca             	mov    %rcx,%rdx
  400943:	48 89 f1             	mov    %rsi,%rcx
  400946:	48 39 02             	cmp    %rax,(%rdx)
  400949:	0f 84 0b 01 00 00    	je     400a5a <main+0x1ba>
  40094f:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  400953:	48 89 d7             	mov    %rdx,%rdi
  400956:	48 85 f6             	test   %rsi,%rsi
  400959:	75 e5                	jne    400940 <main+0xa0>
  40095b:	48 89 ce             	mov    %rcx,%rsi
  40095e:	eb 6b                	jmp    4009cb <main+0x12b>
  400960:	bf 18 00 00 00       	mov    $0x18,%edi
  400965:	e8 16 fc ff ff       	callq  400580 <malloc@plt>
  40096a:	48 89 c3             	mov    %rax,%rbx
  40096d:	bf e4 0b 40 00       	mov    $0x400be4,%edi
  400972:	31 c0                	xor    %eax,%eax
  400974:	e8 f7 fb ff ff       	callq  400570 <printf@plt>
  400979:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40097d:	bf fc 0b 40 00       	mov    $0x400bfc,%edi
  400982:	31 c0                	xor    %eax,%eax
  400984:	48 89 de             	mov    %rbx,%rsi
  400987:	e8 14 fc ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  40098c:	49 8d 4f 10          	lea    0x10(%r15),%rcx
  400990:	49 8b 7f 10          	mov    0x10(%r15),%rdi
  400994:	48 8b 13             	mov    (%rbx),%rdx
  400997:	48 85 ff             	test   %rdi,%rdi
  40099a:	74 4c                	je     4009e8 <main+0x148>
  40099c:	4c 89 f8             	mov    %r15,%rax
  40099f:	90                   	nop
  4009a0:	48 89 c6             	mov    %rax,%rsi
  4009a3:	48 89 f8             	mov    %rdi,%rax
  4009a6:	48 39 16             	cmp    %rdx,(%rsi)
  4009a9:	0f 8d c6 00 00 00    	jge    400a75 <main+0x1d5>
  4009af:	48 8d 48 10          	lea    0x10(%rax),%rcx
  4009b3:	48 8b 78 10          	mov    0x10(%rax),%rdi
  4009b7:	48 89 f5             	mov    %rsi,%rbp
  4009ba:	48 85 ff             	test   %rdi,%rdi
  4009bd:	75 e1                	jne    4009a0 <main+0x100>
  4009bf:	48 39 10             	cmp    %rdx,(%rax)
  4009c2:	7d 2c                	jge    4009f0 <main+0x150>
  4009c4:	31 c0                	xor    %eax,%eax
  4009c6:	eb 38                	jmp    400a00 <main+0x160>
  4009c8:	4c 89 fe             	mov    %r15,%rsi
  4009cb:	31 c9                	xor    %ecx,%ecx
  4009cd:	48 39 06             	cmp    %rax,(%rsi)
  4009d0:	0f 85 93 00 00 00    	jne    400a69 <main+0x1c9>
  4009d6:	4c 39 fe             	cmp    %r15,%rsi
  4009d9:	0f 84 aa 00 00 00    	je     400a89 <main+0x1e9>
  4009df:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
  4009e3:	e9 a4 00 00 00       	jmpq   400a8c <main+0x1ec>
  4009e8:	4c 89 f8             	mov    %r15,%rax
  4009eb:	48 39 10             	cmp    %rdx,(%rax)
  4009ee:	7c d4                	jl     4009c4 <main+0x124>
  4009f0:	4c 39 f8             	cmp    %r15,%rax
  4009f3:	0f 84 ea 00 00 00    	je     400ae3 <main+0x243>
  4009f9:	48 83 c6 10          	add    $0x10,%rsi
  4009fd:	48 89 f1             	mov    %rsi,%rcx
  400a00:	48 89 19             	mov    %rbx,(%rcx)
  400a03:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400a07:	8b 05 5f 16 20 00    	mov    0x20165f(%rip),%eax        # 60206c <n>
  400a0d:	8d 48 01             	lea    0x1(%rax),%ecx
  400a10:	89 0d 56 16 20 00    	mov    %ecx,0x201656(%rip)        # 60206c <n>
  400a16:	85 c0                	test   %eax,%eax
  400a18:	0f 88 ba 00 00 00    	js     400ad8 <main+0x238>
  400a1e:	31 db                	xor    %ebx,%ebx
  400a20:	4c 89 fd             	mov    %r15,%rbp
  400a23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a2a:	84 00 00 00 00 00 
  400a30:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400a34:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400a39:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a3d:	bf 01 0c 40 00       	mov    $0x400c01,%edi
  400a42:	b0 01                	mov    $0x1,%al
  400a44:	e8 27 fb ff ff       	callq  400570 <printf@plt>
  400a49:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400a4d:	83 c3 01             	add    $0x1,%ebx
  400a50:	3b 1d 16 16 20 00    	cmp    0x201616(%rip),%ebx        # 60206c <n>
  400a56:	7c d8                	jl     400a30 <main+0x190>
  400a58:	eb 7e                	jmp    400ad8 <main+0x238>
  400a5a:	48 89 d6             	mov    %rdx,%rsi
  400a5d:	48 89 fa             	mov    %rdi,%rdx
  400a60:	48 39 06             	cmp    %rax,(%rsi)
  400a63:	0f 84 6d ff ff ff    	je     4009d6 <main+0x136>
  400a69:	8b 05 fd 15 20 00    	mov    0x2015fd(%rip),%eax        # 60206c <n>
  400a6f:	85 c0                	test   %eax,%eax
  400a71:	7f 2c                	jg     400a9f <main+0x1ff>
  400a73:	eb 63                	jmp    400ad8 <main+0x238>
  400a75:	48 89 f0             	mov    %rsi,%rax
  400a78:	48 89 ee             	mov    %rbp,%rsi
  400a7b:	48 39 10             	cmp    %rdx,(%rax)
  400a7e:	0f 8c 40 ff ff ff    	jl     4009c4 <main+0x124>
  400a84:	e9 67 ff ff ff       	jmpq   4009f0 <main+0x150>
  400a89:	49 89 cf             	mov    %rcx,%r15
  400a8c:	8b 05 da 15 20 00    	mov    0x2015da(%rip),%eax        # 60206c <n>
  400a92:	83 c0 ff             	add    $0xffffffff,%eax
  400a95:	89 05 d1 15 20 00    	mov    %eax,0x2015d1(%rip)        # 60206c <n>
  400a9b:	85 c0                	test   %eax,%eax
  400a9d:	7e 39                	jle    400ad8 <main+0x238>
  400a9f:	31 db                	xor    %ebx,%ebx
  400aa1:	4c 89 fd             	mov    %r15,%rbp
  400aa4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aab:	00 00 00 00 00 
  400ab0:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400ab4:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400ab9:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400abd:	bf 01 0c 40 00       	mov    $0x400c01,%edi
  400ac2:	b0 01                	mov    $0x1,%al
  400ac4:	e8 a7 fa ff ff       	callq  400570 <printf@plt>
  400ac9:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400acd:	83 c3 01             	add    $0x1,%ebx
  400ad0:	3b 1d 96 15 20 00    	cmp    0x201596(%rip),%ebx        # 60206c <n>
  400ad6:	7c d8                	jl     400ab0 <main+0x210>
  400ad8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400adc:	83 f8 ff             	cmp    $0xffffffff,%eax
  400adf:	75 0f                	jne    400af0 <main+0x250>
  400ae1:	eb 65                	jmp    400b48 <main+0x2a8>
  400ae3:	49 89 df             	mov    %rbx,%r15
  400ae6:	e9 18 ff ff ff       	jmpq   400a03 <main+0x163>
  400aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400af0:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  400af5:	e8 66 fa ff ff       	callq  400560 <puts@plt>
  400afa:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  400b01:	ff 
  400b02:	bf 0a 0c 40 00       	mov    $0x400c0a,%edi
  400b07:	31 c0                	xor    %eax,%eax
  400b09:	e8 62 fa ff ff       	callq  400570 <printf@plt>
  400b0e:	bf 19 0c 40 00       	mov    $0x400c19,%edi
  400b13:	31 c0                	xor    %eax,%eax
  400b15:	4c 89 f6             	mov    %r14,%rsi
  400b18:	e8 83 fa ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  400b1d:	48 8b 3d 3c 15 20 00 	mov    0x20153c(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400b24:	e8 67 fa ff ff       	callq  400590 <_IO_getc@plt>
  400b29:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400b2d:	83 f8 01             	cmp    $0x1,%eax
  400b30:	0f 84 2a fe ff ff    	je     400960 <main+0xc0>
  400b36:	83 f8 02             	cmp    $0x2,%eax
  400b39:	0f 84 c1 fd ff ff    	je     400900 <main+0x60>
  400b3f:	85 c0                	test   %eax,%eax
  400b41:	74 10                	je     400b53 <main+0x2b3>
  400b43:	83 f8 ff             	cmp    $0xffffffff,%eax
  400b46:	75 a8                	jne    400af0 <main+0x250>
  400b48:	48 83 c4 08          	add    $0x8,%rsp
  400b4c:	5b                   	pop    %rbx
  400b4d:	41 5e                	pop    %r14
  400b4f:	41 5f                	pop    %r15
  400b51:	5d                   	pop    %rbp
  400b52:	c3                   	retq   
  400b53:	31 ff                	xor    %edi,%edi
  400b55:	e8 56 fa ff ff       	callq  4005b0 <exit@plt>
  400b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b60 <__libc_csu_init>:
  400b60:	41 57                	push   %r15
  400b62:	41 56                	push   %r14
  400b64:	49 89 d7             	mov    %rdx,%r15
  400b67:	41 55                	push   %r13
  400b69:	41 54                	push   %r12
  400b6b:	4c 8d 25 8e 12 20 00 	lea    0x20128e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b72:	55                   	push   %rbp
  400b73:	48 8d 2d 8e 12 20 00 	lea    0x20128e(%rip),%rbp        # 601e08 <__init_array_end>
  400b7a:	53                   	push   %rbx
  400b7b:	41 89 fd             	mov    %edi,%r13d
  400b7e:	49 89 f6             	mov    %rsi,%r14
  400b81:	4c 29 e5             	sub    %r12,%rbp
  400b84:	48 83 ec 08          	sub    $0x8,%rsp
  400b88:	48 c1 fd 03          	sar    $0x3,%rbp
  400b8c:	e8 9f f9 ff ff       	callq  400530 <_init>
  400b91:	48 85 ed             	test   %rbp,%rbp
  400b94:	74 20                	je     400bb6 <__libc_csu_init+0x56>
  400b96:	31 db                	xor    %ebx,%ebx
  400b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b9f:	00 
  400ba0:	4c 89 fa             	mov    %r15,%rdx
  400ba3:	4c 89 f6             	mov    %r14,%rsi
  400ba6:	44 89 ef             	mov    %r13d,%edi
  400ba9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bad:	48 83 c3 01          	add    $0x1,%rbx
  400bb1:	48 39 dd             	cmp    %rbx,%rbp
  400bb4:	75 ea                	jne    400ba0 <__libc_csu_init+0x40>
  400bb6:	48 83 c4 08          	add    $0x8,%rsp
  400bba:	5b                   	pop    %rbx
  400bbb:	5d                   	pop    %rbp
  400bbc:	41 5c                	pop    %r12
  400bbe:	41 5d                	pop    %r13
  400bc0:	41 5e                	pop    %r14
  400bc2:	41 5f                	pop    %r15
  400bc4:	c3                   	retq   
  400bc5:	90                   	nop
  400bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bcd:	00 00 00 

0000000000400bd0 <__libc_csu_fini>:
  400bd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400bd4 <_fini>:
  400bd4:	48 83 ec 08          	sub    $0x8,%rsp
  400bd8:	48 83 c4 08          	add    $0x8,%rsp
  400bdc:	c3                   	retq   
