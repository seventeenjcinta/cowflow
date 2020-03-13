
input/18030021028_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400568 <_init>:
  400568:	48 83 ec 08          	sub    $0x8,%rsp
  40056c:	48 8b 05 85 1a 20 00 	mov    0x201a85(%rip),%rax        # 601ff8 <__gmon_start__>
  400573:	48 85 c0             	test   %rax,%rax
  400576:	74 02                	je     40057a <_init+0x12>
  400578:	ff d0                	callq  *%rax
  40057a:	48 83 c4 08          	add    $0x8,%rsp
  40057e:	c3                   	retq   

Disassembly of section .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 1a 20 00    	pushq  0x201a82(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 1a 20 00    	jmpq   *0x201a84(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <free@plt>:
  400590:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602018 <free@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	pushq  $0x0
  40059b:	e9 e0 ff ff ff       	jmpq   400580 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <system@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <system@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <malloc@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <_IO_getc@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <_IO_getc@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <__isoc99_scanf@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <__isoc99_scanf@GLIBC_2.7>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

Disassembly of section .text:

0000000000400600 <_start>:
  400600:	31 ed                	xor    %ebp,%ebp
  400602:	49 89 d1             	mov    %rdx,%r9
  400605:	5e                   	pop    %rsi
  400606:	48 89 e2             	mov    %rsp,%rdx
  400609:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40060d:	50                   	push   %rax
  40060e:	54                   	push   %rsp
  40060f:	49 c7 c0 20 0c 40 00 	mov    $0x400c20,%r8
  400616:	48 c7 c1 b0 0b 40 00 	mov    $0x400bb0,%rcx
  40061d:	48 c7 c7 00 09 40 00 	mov    $0x400900,%rdi
  400624:	ff 15 c6 19 20 00    	callq  *0x2019c6(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40062a:	f4                   	hlt    
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400630 <_dl_relocate_static_pie>:
  400630:	f3 c3                	repz retq 
  400632:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400639:	00 00 00 
  40063c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400640 <deregister_tm_clones>:
  400640:	55                   	push   %rbp
  400641:	b8 60 20 60 00       	mov    $0x602060,%eax
  400646:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40064c:	48 89 e5             	mov    %rsp,%rbp
  40064f:	74 17                	je     400668 <deregister_tm_clones+0x28>
  400651:	b8 00 00 00 00       	mov    $0x0,%eax
  400656:	48 85 c0             	test   %rax,%rax
  400659:	74 0d                	je     400668 <deregister_tm_clones+0x28>
  40065b:	5d                   	pop    %rbp
  40065c:	bf 60 20 60 00       	mov    $0x602060,%edi
  400661:	ff e0                	jmpq   *%rax
  400663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <register_tm_clones>:
  400670:	be 60 20 60 00       	mov    $0x602060,%esi
  400675:	55                   	push   %rbp
  400676:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
  40067d:	48 89 e5             	mov    %rsp,%rbp
  400680:	48 c1 fe 03          	sar    $0x3,%rsi
  400684:	48 89 f0             	mov    %rsi,%rax
  400687:	48 c1 e8 3f          	shr    $0x3f,%rax
  40068b:	48 01 c6             	add    %rax,%rsi
  40068e:	48 d1 fe             	sar    %rsi
  400691:	74 15                	je     4006a8 <register_tm_clones+0x38>
  400693:	b8 00 00 00 00       	mov    $0x0,%eax
  400698:	48 85 c0             	test   %rax,%rax
  40069b:	74 0b                	je     4006a8 <register_tm_clones+0x38>
  40069d:	5d                   	pop    %rbp
  40069e:	bf 60 20 60 00       	mov    $0x602060,%edi
  4006a3:	ff e0                	jmpq   *%rax
  4006a5:	0f 1f 00             	nopl   (%rax)
  4006a8:	5d                   	pop    %rbp
  4006a9:	c3                   	retq   
  4006aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006b0 <__do_global_dtors_aux>:
  4006b0:	80 3d b1 19 20 00 00 	cmpb   $0x0,0x2019b1(%rip)        # 602068 <completed.7698>
  4006b7:	75 17                	jne    4006d0 <__do_global_dtors_aux+0x20>
  4006b9:	55                   	push   %rbp
  4006ba:	48 89 e5             	mov    %rsp,%rbp
  4006bd:	e8 7e ff ff ff       	callq  400640 <deregister_tm_clones>
  4006c2:	c6 05 9f 19 20 00 01 	movb   $0x1,0x20199f(%rip)        # 602068 <completed.7698>
  4006c9:	5d                   	pop    %rbp
  4006ca:	c3                   	retq   
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	f3 c3                	repz retq 
  4006d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 

00000000004006e0 <frame_dummy>:
  4006e0:	55                   	push   %rbp
  4006e1:	48 89 e5             	mov    %rsp,%rbp
  4006e4:	5d                   	pop    %rbp
  4006e5:	eb 89                	jmp    400670 <register_tm_clones>
  4006e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ee:	00 00 

00000000004006f0 <insert>:
  4006f0:	48 85 ff             	test   %rdi,%rdi
  4006f3:	74 2a                	je     40071f <insert+0x2f>
  4006f5:	48 8b 0e             	mov    (%rsi),%rcx
  4006f8:	48 39 0f             	cmp    %rcx,(%rdi)
  4006fb:	7d 2c                	jge    400729 <insert+0x39>
  4006fd:	48 89 fa             	mov    %rdi,%rdx
  400700:	48 89 d0             	mov    %rdx,%rax
  400703:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400707:	48 85 d2             	test   %rdx,%rdx
  40070a:	74 28                	je     400734 <insert+0x44>
  40070c:	48 39 0a             	cmp    %rcx,(%rdx)
  40070f:	7c ef                	jl     400700 <insert+0x10>
  400711:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  400715:	48 89 f1             	mov    %rsi,%rcx
  400718:	48 39 fa             	cmp    %rdi,%rdx
  40071b:	75 20                	jne    40073d <insert+0x4d>
  40071d:	eb 25                	jmp    400744 <insert+0x54>
  40071f:	31 c9                	xor    %ecx,%ecx
  400721:	48 89 f0             	mov    %rsi,%rax
  400724:	48 89 f7             	mov    %rsi,%rdi
  400727:	eb 14                	jmp    40073d <insert+0x4d>
  400729:	48 89 f0             	mov    %rsi,%rax
  40072c:	48 89 f9             	mov    %rdi,%rcx
  40072f:	48 89 f7             	mov    %rsi,%rdi
  400732:	eb 09                	jmp    40073d <insert+0x4d>
  400734:	48 89 70 10          	mov    %rsi,0x10(%rax)
  400738:	31 c9                	xor    %ecx,%ecx
  40073a:	48 89 f0             	mov    %rsi,%rax
  40073d:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400741:	48 89 fe             	mov    %rdi,%rsi
  400744:	83 05 21 19 20 00 01 	addl   $0x1,0x201921(%rip)        # 60206c <n>
  40074b:	48 89 f0             	mov    %rsi,%rax
  40074e:	c3                   	retq   
  40074f:	90                   	nop

0000000000400750 <create>:
  400750:	41 56                	push   %r14
  400752:	53                   	push   %rbx
  400753:	50                   	push   %rax
  400754:	49 89 fe             	mov    %rdi,%r14
  400757:	eb 19                	jmp    400772 <create+0x22>
  400759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400760:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400767:	00 
  400768:	49 89 de             	mov    %rbx,%r14
  40076b:	83 05 fa 18 20 00 01 	addl   $0x1,0x2018fa(%rip)        # 60206c <n>
  400772:	bf 18 00 00 00       	mov    $0x18,%edi
  400777:	e8 54 fe ff ff       	callq  4005d0 <malloc@plt>
  40077c:	48 89 c3             	mov    %rax,%rbx
  40077f:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400783:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  400788:	31 c0                	xor    %eax,%eax
  40078a:	48 89 de             	mov    %rbx,%rsi
  40078d:	e8 5e fe ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400792:	48 8b 03             	mov    (%rbx),%rax
  400795:	48 85 c0             	test   %rax,%rax
  400798:	74 7d                	je     400817 <create+0xc7>
  40079a:	4d 85 f6             	test   %r14,%r14
  40079d:	74 c1                	je     400760 <create+0x10>
  40079f:	49 39 06             	cmp    %rax,(%r14)
  4007a2:	4c 89 f2             	mov    %r14,%rdx
  4007a5:	7d 39                	jge    4007e0 <create+0x90>
  4007a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ae:	00 00 
  4007b0:	48 89 d1             	mov    %rdx,%rcx
  4007b3:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4007b7:	48 85 d2             	test   %rdx,%rdx
  4007ba:	74 34                	je     4007f0 <create+0xa0>
  4007bc:	48 39 02             	cmp    %rax,(%rdx)
  4007bf:	7c ef                	jl     4007b0 <create+0x60>
  4007c1:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  4007c5:	4c 39 f2             	cmp    %r14,%rdx
  4007c8:	74 3e                	je     400808 <create+0xb8>
  4007ca:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4007ce:	83 05 97 18 20 00 01 	addl   $0x1,0x201897(%rip)        # 60206c <n>
  4007d5:	eb 9b                	jmp    400772 <create+0x22>
  4007d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007de:	00 00 
  4007e0:	4c 89 73 10          	mov    %r14,0x10(%rbx)
  4007e4:	49 89 de             	mov    %rbx,%r14
  4007e7:	83 05 7e 18 20 00 01 	addl   $0x1,0x20187e(%rip)        # 60206c <n>
  4007ee:	eb 82                	jmp    400772 <create+0x22>
  4007f0:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4007f4:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4007fb:	00 
  4007fc:	83 05 69 18 20 00 01 	addl   $0x1,0x201869(%rip)        # 60206c <n>
  400803:	e9 6a ff ff ff       	jmpq   400772 <create+0x22>
  400808:	49 89 de             	mov    %rbx,%r14
  40080b:	83 05 5a 18 20 00 01 	addl   $0x1,0x20185a(%rip)        # 60206c <n>
  400812:	e9 5b ff ff ff       	jmpq   400772 <create+0x22>
  400817:	4c 89 f0             	mov    %r14,%rax
  40081a:	48 83 c4 08          	add    $0x8,%rsp
  40081e:	5b                   	pop    %rbx
  40081f:	41 5e                	pop    %r14
  400821:	c3                   	retq   
  400822:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400829:	1f 84 00 00 00 00 00 

0000000000400830 <del>:
  400830:	41 56                	push   %r14
  400832:	53                   	push   %rbx
  400833:	50                   	push   %rax
  400834:	48 89 fb             	mov    %rdi,%rbx
  400837:	48 85 db             	test   %rbx,%rbx
  40083a:	74 0b                	je     400847 <del+0x17>
  40083c:	48 39 33             	cmp    %rsi,(%rbx)
  40083f:	75 14                	jne    400855 <del+0x25>
  400841:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400845:	eb 4b                	jmp    400892 <del+0x62>
  400847:	bf 9d 0c 40 00       	mov    $0x400c9d,%edi
  40084c:	e8 4f fd ff ff       	callq  4005a0 <puts@plt>
  400851:	31 db                	xor    %ebx,%ebx
  400853:	eb 51                	jmp    4008a6 <del+0x76>
  400855:	48 89 d9             	mov    %rbx,%rcx
  400858:	48 89 df             	mov    %rbx,%rdi
  40085b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400860:	48 89 f8             	mov    %rdi,%rax
  400863:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400867:	48 85 ff             	test   %rdi,%rdi
  40086a:	74 0a                	je     400876 <del+0x46>
  40086c:	48 39 37             	cmp    %rsi,(%rdi)
  40086f:	48 89 c1             	mov    %rax,%rcx
  400872:	75 ec                	jne    400860 <del+0x30>
  400874:	eb 06                	jmp    40087c <del+0x4c>
  400876:	48 89 c7             	mov    %rax,%rdi
  400879:	48 89 c8             	mov    %rcx,%rax
  40087c:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  400880:	48 39 df             	cmp    %rbx,%rdi
  400883:	74 0d                	je     400892 <del+0x62>
  400885:	4c 89 70 10          	mov    %r14,0x10(%rax)
  400889:	31 c0                	xor    %eax,%eax
  40088b:	e8 00 fd ff ff       	callq  400590 <free@plt>
  400890:	eb 0d                	jmp    40089f <del+0x6f>
  400892:	31 c0                	xor    %eax,%eax
  400894:	48 89 df             	mov    %rbx,%rdi
  400897:	e8 f4 fc ff ff       	callq  400590 <free@plt>
  40089c:	4c 89 f3             	mov    %r14,%rbx
  40089f:	83 05 c6 17 20 00 ff 	addl   $0xffffffff,0x2017c6(%rip)        # 60206c <n>
  4008a6:	48 89 d8             	mov    %rbx,%rax
  4008a9:	48 83 c4 08          	add    $0x8,%rsp
  4008ad:	5b                   	pop    %rbx
  4008ae:	41 5e                	pop    %r14
  4008b0:	c3                   	retq   
  4008b1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008b8:	0f 1f 84 00 00 00 00 
  4008bf:	00 

00000000004008c0 <print>:
  4008c0:	53                   	push   %rbx
  4008c1:	48 89 fb             	mov    %rdi,%rbx
  4008c4:	48 85 db             	test   %rbx,%rbx
  4008c7:	74 28                	je     4008f1 <print+0x31>
  4008c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008d0:	48 8b 33             	mov    (%rbx),%rsi
  4008d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008dc:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  4008e1:	b0 01                	mov    $0x1,%al
  4008e3:	e8 d8 fc ff ff       	callq  4005c0 <printf@plt>
  4008e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ec:	48 85 db             	test   %rbx,%rbx
  4008ef:	75 df                	jne    4008d0 <print+0x10>
  4008f1:	5b                   	pop    %rbx
  4008f2:	c3                   	retq   
  4008f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008fa:	84 00 00 00 00 00 

0000000000400900 <main>:
  400900:	41 57                	push   %r15
  400902:	41 56                	push   %r14
  400904:	41 54                	push   %r12
  400906:	53                   	push   %rbx
  400907:	48 83 ec 18          	sub    $0x18,%rsp
  40090b:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  400910:	e8 8b fc ff ff       	callq  4005a0 <puts@plt>
  400915:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  40091a:	e8 81 fc ff ff       	callq  4005a0 <puts@plt>
  40091f:	31 ff                	xor    %edi,%edi
  400921:	e8 2a fe ff ff       	callq  400750 <create>
  400926:	49 89 c4             	mov    %rax,%r12
  400929:	4d 85 e4             	test   %r12,%r12
  40092c:	74 33                	je     400961 <main+0x61>
  40092e:	4c 89 e3             	mov    %r12,%rbx
  400931:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400938:	0f 1f 84 00 00 00 00 
  40093f:	00 
  400940:	48 8b 33             	mov    (%rbx),%rsi
  400943:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400948:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40094c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400951:	b0 01                	mov    $0x1,%al
  400953:	e8 68 fc ff ff       	callq  4005c0 <printf@plt>
  400958:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40095c:	48 85 db             	test   %rbx,%rbx
  40095f:	75 df                	jne    400940 <main+0x40>
  400961:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400966:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  40096b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400970:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400975:	e8 26 fc ff ff       	callq  4005a0 <puts@plt>
  40097a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400981:	ff 
  400982:	bf 43 0c 40 00       	mov    $0x400c43,%edi
  400987:	31 c0                	xor    %eax,%eax
  400989:	e8 32 fc ff ff       	callq  4005c0 <printf@plt>
  40098e:	bf 53 0c 40 00       	mov    $0x400c53,%edi
  400993:	31 c0                	xor    %eax,%eax
  400995:	4c 89 f6             	mov    %r14,%rsi
  400998:	e8 53 fc ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  40099d:	48 8b 3d bc 16 20 00 	mov    0x2016bc(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  4009a4:	e8 37 fc ff ff       	callq  4005e0 <_IO_getc@plt>
  4009a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4009ad:	83 f8 02             	cmp    $0x2,%eax
  4009b0:	74 7e                	je     400a30 <main+0x130>
  4009b2:	83 f8 01             	cmp    $0x1,%eax
  4009b5:	0f 85 cc 01 00 00    	jne    400b87 <main+0x287>
  4009bb:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  4009c0:	31 c0                	xor    %eax,%eax
  4009c2:	e8 f9 fb ff ff       	callq  4005c0 <printf@plt>
  4009c7:	bf 18 00 00 00       	mov    $0x18,%edi
  4009cc:	e8 ff fb ff ff       	callq  4005d0 <malloc@plt>
  4009d1:	48 89 c3             	mov    %rax,%rbx
  4009d4:	bf 34 0c 40 00       	mov    $0x400c34,%edi
  4009d9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009dd:	31 c0                	xor    %eax,%eax
  4009df:	48 89 de             	mov    %rbx,%rsi
  4009e2:	e8 09 fc ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  4009e7:	4d 85 e4             	test   %r12,%r12
  4009ea:	0f 84 b7 00 00 00    	je     400aa7 <main+0x1a7>
  4009f0:	48 8b 33             	mov    (%rbx),%rsi
  4009f3:	49 39 34 24          	cmp    %rsi,(%r12)
  4009f7:	4c 89 e1             	mov    %r12,%rcx
  4009fa:	0f 8d c3 00 00 00    	jge    400ac3 <main+0x1c3>
  400a00:	48 89 c8             	mov    %rcx,%rax
  400a03:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400a07:	48 85 c9             	test   %rcx,%rcx
  400a0a:	0f 84 03 01 00 00    	je     400b13 <main+0x213>
  400a10:	48 39 31             	cmp    %rsi,(%rcx)
  400a13:	7c eb                	jl     400a00 <main+0x100>
  400a15:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400a19:	4c 39 e1             	cmp    %r12,%rcx
  400a1c:	0f 84 a5 00 00 00    	je     400ac7 <main+0x1c7>
  400a22:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400a26:	e9 9f 00 00 00       	jmpq   400aca <main+0x1ca>
  400a2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400a30:	bf 81 0c 40 00       	mov    $0x400c81,%edi
  400a35:	31 c0                	xor    %eax,%eax
  400a37:	e8 84 fb ff ff       	callq  4005c0 <printf@plt>
  400a3c:	bf 93 0c 40 00       	mov    $0x400c93,%edi
  400a41:	31 c0                	xor    %eax,%eax
  400a43:	4c 89 fe             	mov    %r15,%rsi
  400a46:	e8 a5 fb ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400a4b:	4d 85 e4             	test   %r12,%r12
  400a4e:	74 64                	je     400ab4 <main+0x1b4>
  400a50:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  400a55:	49 39 0c 24          	cmp    %rcx,(%r12)
  400a59:	4c 89 e2             	mov    %r12,%rdx
  400a5c:	4c 89 e7             	mov    %r12,%rdi
  400a5f:	75 1f                	jne    400a80 <main+0x180>
  400a61:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  400a66:	31 c0                	xor    %eax,%eax
  400a68:	4c 89 e7             	mov    %r12,%rdi
  400a6b:	e8 20 fb ff ff       	callq  400590 <free@plt>
  400a70:	49 89 dc             	mov    %rbx,%r12
  400a73:	e9 c5 00 00 00       	jmpq   400b3d <main+0x23d>
  400a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a7f:	00 
  400a80:	48 89 f8             	mov    %rdi,%rax
  400a83:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400a87:	48 85 ff             	test   %rdi,%rdi
  400a8a:	0f 84 91 00 00 00    	je     400b21 <main+0x221>
  400a90:	48 39 0f             	cmp    %rcx,(%rdi)
  400a93:	48 89 c2             	mov    %rax,%rdx
  400a96:	75 e8                	jne    400a80 <main+0x180>
  400a98:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a9c:	4c 39 e7             	cmp    %r12,%rdi
  400a9f:	0f 85 8d 00 00 00    	jne    400b32 <main+0x232>
  400aa5:	eb bf                	jmp    400a66 <main+0x166>
  400aa7:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400aae:	00 
  400aaf:	48 8b 33             	mov    (%rbx),%rsi
  400ab2:	eb 13                	jmp    400ac7 <main+0x1c7>
  400ab4:	bf 9d 0c 40 00       	mov    $0x400c9d,%edi
  400ab9:	e8 e2 fa ff ff       	callq  4005a0 <puts@plt>
  400abe:	e9 bd 00 00 00       	jmpq   400b80 <main+0x280>
  400ac3:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400ac7:	49 89 dc             	mov    %rbx,%r12
  400aca:	83 05 9b 15 20 00 01 	addl   $0x1,0x20159b(%rip)        # 60206c <n>
  400ad1:	bf 72 0c 40 00       	mov    $0x400c72,%edi
  400ad6:	31 c0                	xor    %eax,%eax
  400ad8:	e8 e3 fa ff ff       	callq  4005c0 <printf@plt>
  400add:	4d 85 e4             	test   %r12,%r12
  400ae0:	0f 84 9a 00 00 00    	je     400b80 <main+0x280>
  400ae6:	4c 89 e3             	mov    %r12,%rbx
  400ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400af0:	48 8b 33             	mov    (%rbx),%rsi
  400af3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400af8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400afc:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400b01:	b0 01                	mov    $0x1,%al
  400b03:	e8 b8 fa ff ff       	callq  4005c0 <printf@plt>
  400b08:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b0c:	48 85 db             	test   %rbx,%rbx
  400b0f:	75 df                	jne    400af0 <main+0x1f0>
  400b11:	eb 70                	jmp    400b83 <main+0x283>
  400b13:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400b17:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400b1e:	00 
  400b1f:	eb a9                	jmp    400aca <main+0x1ca>
  400b21:	31 db                	xor    %ebx,%ebx
  400b23:	48 89 c7             	mov    %rax,%rdi
  400b26:	48 89 d0             	mov    %rdx,%rax
  400b29:	4c 39 e7             	cmp    %r12,%rdi
  400b2c:	0f 84 34 ff ff ff    	je     400a66 <main+0x166>
  400b32:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400b36:	31 c0                	xor    %eax,%eax
  400b38:	e8 53 fa ff ff       	callq  400590 <free@plt>
  400b3d:	83 05 28 15 20 00 ff 	addl   $0xffffffff,0x201528(%rip)        # 60206c <n>
  400b44:	4d 85 e4             	test   %r12,%r12
  400b47:	74 37                	je     400b80 <main+0x280>
  400b49:	4c 89 e3             	mov    %r12,%rbx
  400b4c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b50:	48 8b 33             	mov    (%rbx),%rsi
  400b53:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b58:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b5c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400b61:	b0 01                	mov    $0x1,%al
  400b63:	e8 58 fa ff ff       	callq  4005c0 <printf@plt>
  400b68:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b6c:	48 85 db             	test   %rbx,%rbx
  400b6f:	75 df                	jne    400b50 <main+0x250>
  400b71:	eb 10                	jmp    400b83 <main+0x283>
  400b73:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b7a:	84 00 00 00 00 00 
  400b80:	45 31 e4             	xor    %r12d,%r12d
  400b83:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400b87:	85 c0                	test   %eax,%eax
  400b89:	0f 85 e1 fd ff ff    	jne    400970 <main+0x70>
  400b8f:	bf 97 0c 40 00       	mov    $0x400c97,%edi
  400b94:	31 c0                	xor    %eax,%eax
  400b96:	e8 15 fa ff ff       	callq  4005b0 <system@plt>
  400b9b:	31 c0                	xor    %eax,%eax
  400b9d:	48 83 c4 18          	add    $0x18,%rsp
  400ba1:	5b                   	pop    %rbx
  400ba2:	41 5c                	pop    %r12
  400ba4:	41 5e                	pop    %r14
  400ba6:	41 5f                	pop    %r15
  400ba8:	c3                   	retq   
  400ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

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
  400bdc:	e8 87 f9 ff ff       	callq  400568 <_init>
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
