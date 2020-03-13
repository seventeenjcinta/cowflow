
input/19020031074_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400540 <_init>:
  400540:	48 83 ec 08          	sub    $0x8,%rsp
  400544:	48 8b 05 ad 0a 20 00 	mov    0x200aad(%rip),%rax        # 600ff8 <__gmon_start__>
  40054b:	48 85 c0             	test   %rax,%rax
  40054e:	74 02                	je     400552 <_init+0x12>
  400550:	ff d0                	callq  *%rax
  400552:	48 83 c4 08          	add    $0x8,%rsp
  400556:	c3                   	retq   

Disassembly of section .plt:

0000000000400560 <.plt>:
  400560:	ff 35 a2 0a 20 00    	pushq  0x200aa2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400566:	ff 25 a4 0a 20 00    	jmpq   *0x200aa4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <putchar@plt>:
  400570:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 601018 <putchar@GLIBC_2.2.5>
  400576:	68 00 00 00 00       	pushq  $0x0
  40057b:	e9 e0 ff ff ff       	jmpq   400560 <.plt>

0000000000400580 <puts@plt>:
  400580:	ff 25 9a 0a 20 00    	jmpq   *0x200a9a(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400586:	68 01 00 00 00       	pushq  $0x1
  40058b:	e9 d0 ff ff ff       	jmpq   400560 <.plt>

0000000000400590 <exp@plt>:
  400590:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601028 <exp@GLIBC_2.2.5>
  400596:	68 02 00 00 00       	pushq  $0x2
  40059b:	e9 c0 ff ff ff       	jmpq   400560 <.plt>

00000000004005a0 <printf@plt>:
  4005a0:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 601030 <printf@GLIBC_2.2.5>
  4005a6:	68 03 00 00 00       	pushq  $0x3
  4005ab:	e9 b0 ff ff ff       	jmpq   400560 <.plt>

00000000004005b0 <cos@plt>:
  4005b0:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 601038 <cos@GLIBC_2.2.5>
  4005b6:	68 04 00 00 00       	pushq  $0x4
  4005bb:	e9 a0 ff ff ff       	jmpq   400560 <.plt>

00000000004005c0 <sin@plt>:
  4005c0:	ff 25 7a 0a 20 00    	jmpq   *0x200a7a(%rip)        # 601040 <sin@GLIBC_2.2.5>
  4005c6:	68 05 00 00 00       	pushq  $0x5
  4005cb:	e9 90 ff ff ff       	jmpq   400560 <.plt>

00000000004005d0 <__isoc99_scanf@plt>:
  4005d0:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 601048 <__isoc99_scanf@GLIBC_2.7>
  4005d6:	68 06 00 00 00       	pushq  $0x6
  4005db:	e9 80 ff ff ff       	jmpq   400560 <.plt>

Disassembly of section .text:

00000000004005e0 <_start>:
  4005e0:	31 ed                	xor    %ebp,%ebp
  4005e2:	49 89 d1             	mov    %rdx,%r9
  4005e5:	5e                   	pop    %rsi
  4005e6:	48 89 e2             	mov    %rsp,%rdx
  4005e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ed:	50                   	push   %rax
  4005ee:	54                   	push   %rsp
  4005ef:	49 c7 c0 f0 09 40 00 	mov    $0x4009f0,%r8
  4005f6:	48 c7 c1 80 09 40 00 	mov    $0x400980,%rcx
  4005fd:	48 c7 c7 c0 07 40 00 	mov    $0x4007c0,%rdi
  400604:	ff 15 e6 09 20 00    	callq  *0x2009e6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40060a:	f4                   	hlt    
  40060b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400610 <_dl_relocate_static_pie>:
  400610:	f3 c3                	repz retq 
  400612:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400619:	00 00 00 
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400620 <deregister_tm_clones>:
  400620:	55                   	push   %rbp
  400621:	b8 60 10 60 00       	mov    $0x601060,%eax
  400626:	48 3d 60 10 60 00    	cmp    $0x601060,%rax
  40062c:	48 89 e5             	mov    %rsp,%rbp
  40062f:	74 17                	je     400648 <deregister_tm_clones+0x28>
  400631:	b8 00 00 00 00       	mov    $0x0,%eax
  400636:	48 85 c0             	test   %rax,%rax
  400639:	74 0d                	je     400648 <deregister_tm_clones+0x28>
  40063b:	5d                   	pop    %rbp
  40063c:	bf 60 10 60 00       	mov    $0x601060,%edi
  400641:	ff e0                	jmpq   *%rax
  400643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400648:	5d                   	pop    %rbp
  400649:	c3                   	retq   
  40064a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400650 <register_tm_clones>:
  400650:	be 60 10 60 00       	mov    $0x601060,%esi
  400655:	55                   	push   %rbp
  400656:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
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
  40067e:	bf 60 10 60 00       	mov    $0x601060,%edi
  400683:	ff e0                	jmpq   *%rax
  400685:	0f 1f 00             	nopl   (%rax)
  400688:	5d                   	pop    %rbp
  400689:	c3                   	retq   
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <__do_global_dtors_aux>:
  400690:	80 3d c9 09 20 00 00 	cmpb   $0x0,0x2009c9(%rip)        # 601060 <__TMC_END__>
  400697:	75 17                	jne    4006b0 <__do_global_dtors_aux+0x20>
  400699:	55                   	push   %rbp
  40069a:	48 89 e5             	mov    %rsp,%rbp
  40069d:	e8 7e ff ff ff       	callq  400620 <deregister_tm_clones>
  4006a2:	c6 05 b7 09 20 00 01 	movb   $0x1,0x2009b7(%rip)        # 601060 <__TMC_END__>
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

00000000004006d0 <print>:
  4006d0:	bf 0c 0a 40 00       	mov    $0x400a0c,%edi
  4006d5:	31 c0                	xor    %eax,%eax
  4006d7:	e9 c4 fe ff ff       	jmpq   4005a0 <printf@plt>
  4006dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006e0 <intergal>:
  4006e0:	53                   	push   %rbx
  4006e1:	48 83 ec 20          	sub    $0x20,%rsp
  4006e5:	48 89 fb             	mov    %rdi,%rbx
  4006e8:	0f 57 d2             	xorps  %xmm2,%xmm2
  4006eb:	f3 0f 11 4c 24 10    	movss  %xmm1,0x10(%rsp)
  4006f1:	0f 2e c8             	ucomiss %xmm0,%xmm1
  4006f4:	0f 86 8b 00 00 00    	jbe    400785 <intergal+0xa5>
  4006fa:	f3 0f 10 4c 24 10    	movss  0x10(%rsp),%xmm1
  400700:	f3 0f 5c c8          	subss  %xmm0,%xmm1
  400704:	f3 0f 5e 0d f8 02 00 	divss  0x2f8(%rip),%xmm1        # 400a04 <_IO_stdin_used+0x4>
  40070b:	00 
  40070c:	f3 0f 11 4c 24 14    	movss  %xmm1,0x14(%rsp)
  400712:	0f 57 d2             	xorps  %xmm2,%xmm2
  400715:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40071c:	00 00 00 00 
  400720:	f3 0f 11 54 24 1c    	movss  %xmm2,0x1c(%rsp)
  400726:	f3 0f 11 44 24 0c    	movss  %xmm0,0xc(%rsp)
  40072c:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
  400732:	ff d3                	callq  *%rbx
  400734:	f3 0f 11 44 24 18    	movss  %xmm0,0x18(%rsp)
  40073a:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
  400740:	f3 0f 58 44 24 14    	addss  0x14(%rsp),%xmm0
  400746:	f3 0f 11 44 24 0c    	movss  %xmm0,0xc(%rsp)
  40074c:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
  400752:	ff d3                	callq  *%rbx
  400754:	f3 0f 10 54 24 1c    	movss  0x1c(%rsp),%xmm2
  40075a:	f3 0f 58 44 24 18    	addss  0x18(%rsp),%xmm0
  400760:	f3 0f 59 44 24 14    	mulss  0x14(%rsp),%xmm0
  400766:	f3 0f 59 05 9a 02 00 	mulss  0x29a(%rip),%xmm0        # 400a08 <_IO_stdin_used+0x8>
  40076d:	00 
  40076e:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  400772:	f3 0f 10 44 24 10    	movss  0x10(%rsp),%xmm0
  400778:	0f 2e 44 24 0c       	ucomiss 0xc(%rsp),%xmm0
  40077d:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
  400783:	77 9b                	ja     400720 <intergal+0x40>
  400785:	0f 28 c2             	movaps %xmm2,%xmm0
  400788:	48 83 c4 20          	add    $0x20,%rsp
  40078c:	5b                   	pop    %rbx
  40078d:	c3                   	retq   
  40078e:	66 90                	xchg   %ax,%ax

0000000000400790 <f1>:
  400790:	50                   	push   %rax
  400791:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400795:	e8 26 fe ff ff       	callq  4005c0 <sin@plt>
  40079a:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  40079e:	58                   	pop    %rax
  40079f:	c3                   	retq   

00000000004007a0 <f2>:
  4007a0:	50                   	push   %rax
  4007a1:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007a5:	e8 06 fe ff ff       	callq  4005b0 <cos@plt>
  4007aa:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  4007ae:	58                   	pop    %rax
  4007af:	c3                   	retq   

00000000004007b0 <f3>:
  4007b0:	50                   	push   %rax
  4007b1:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007b5:	e8 d6 fd ff ff       	callq  400590 <exp@plt>
  4007ba:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  4007be:	58                   	pop    %rax
  4007bf:	c3                   	retq   

00000000004007c0 <main>:
  4007c0:	41 57                	push   %r15
  4007c2:	41 56                	push   %r14
  4007c4:	41 54                	push   %r12
  4007c6:	53                   	push   %rbx
  4007c7:	48 83 ec 28          	sub    $0x28,%rsp
  4007cb:	bf 0c 0a 40 00       	mov    $0x400a0c,%edi
  4007d0:	31 c0                	xor    %eax,%eax
  4007d2:	e8 c9 fd ff ff       	callq  4005a0 <printf@plt>
  4007d7:	bf 0a 00 00 00       	mov    $0xa,%edi
  4007dc:	e8 8f fd ff ff       	callq  400570 <putchar@plt>
  4007e1:	bf 27 0a 40 00       	mov    $0x400a27,%edi
  4007e6:	31 c0                	xor    %eax,%eax
  4007e8:	e8 b3 fd ff ff       	callq  4005a0 <printf@plt>
  4007ed:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  4007f2:	bf 42 0a 40 00       	mov    $0x400a42,%edi
  4007f7:	31 c0                	xor    %eax,%eax
  4007f9:	e8 d2 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4007fe:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  400803:	0f 84 67 01 00 00    	je     400970 <main+0x1b0>
  400809:	4c 8d 74 24 24       	lea    0x24(%rsp),%r14
  40080e:	4c 8d 7c 24 20       	lea    0x20(%rsp),%r15
  400813:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
  400818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40081f:	00 
  400820:	bf 0a 00 00 00       	mov    $0xa,%edi
  400825:	e8 46 fd ff ff       	callq  400570 <putchar@plt>
  40082a:	bf 45 0a 40 00       	mov    $0x400a45,%edi
  40082f:	31 c0                	xor    %eax,%eax
  400831:	e8 6a fd ff ff       	callq  4005a0 <printf@plt>
  400836:	bf 5f 0a 40 00       	mov    $0x400a5f,%edi
  40083b:	31 c0                	xor    %eax,%eax
  40083d:	4c 89 f6             	mov    %r14,%rsi
  400840:	4c 89 fa             	mov    %r15,%rdx
  400843:	e8 88 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400848:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40084c:	83 c0 ff             	add    $0xffffffff,%eax
  40084f:	83 f8 02             	cmp    $0x2,%eax
  400852:	77 0a                	ja     40085e <main+0x9e>
  400854:	48 98                	cltq   
  400856:	48 8b 1c c5 80 0a 40 	mov    0x400a80(,%rax,8),%rbx
  40085d:	00 
  40085e:	bf 0a 00 00 00       	mov    $0xa,%edi
  400863:	e8 08 fd ff ff       	callq  400570 <putchar@plt>
  400868:	bf 64 0a 40 00       	mov    $0x400a64,%edi
  40086d:	e8 0e fd ff ff       	callq  400580 <puts@plt>
  400872:	f3 0f 10 4c 24 24    	movss  0x24(%rsp),%xmm1
  400878:	f3 0f 10 44 24 20    	movss  0x20(%rsp),%xmm0
  40087e:	0f 57 d2             	xorps  %xmm2,%xmm2
  400881:	f3 0f 11 44 24 10    	movss  %xmm0,0x10(%rsp)
  400887:	0f 2e c1             	ucomiss %xmm1,%xmm0
  40088a:	0f 86 87 00 00 00    	jbe    400917 <main+0x157>
  400890:	f3 0f 10 44 24 10    	movss  0x10(%rsp),%xmm0
  400896:	f3 0f 5c c1          	subss  %xmm1,%xmm0
  40089a:	f3 0f 5e 05 62 01 00 	divss  0x162(%rip),%xmm0        # 400a04 <_IO_stdin_used+0x4>
  4008a1:	00 
  4008a2:	f3 0f 11 44 24 14    	movss  %xmm0,0x14(%rsp)
  4008a8:	0f 57 d2             	xorps  %xmm2,%xmm2
  4008ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008b0:	f3 0f 11 54 24 1c    	movss  %xmm2,0x1c(%rsp)
  4008b6:	f3 0f 11 4c 24 08    	movss  %xmm1,0x8(%rsp)
  4008bc:	0f 28 c1             	movaps %xmm1,%xmm0
  4008bf:	ff d3                	callq  *%rbx
  4008c1:	f3 0f 11 44 24 18    	movss  %xmm0,0x18(%rsp)
  4008c7:	f3 0f 10 44 24 08    	movss  0x8(%rsp),%xmm0
  4008cd:	f3 0f 58 44 24 14    	addss  0x14(%rsp),%xmm0
  4008d3:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
  4008d9:	f3 0f 10 44 24 08    	movss  0x8(%rsp),%xmm0
  4008df:	ff d3                	callq  *%rbx
  4008e1:	f3 0f 10 0d 1f 01 00 	movss  0x11f(%rip),%xmm1        # 400a08 <_IO_stdin_used+0x8>
  4008e8:	00 
  4008e9:	0f 28 d1             	movaps %xmm1,%xmm2
  4008ec:	f3 0f 10 4c 24 08    	movss  0x8(%rsp),%xmm1
  4008f2:	f3 0f 58 44 24 18    	addss  0x18(%rsp),%xmm0
  4008f8:	f3 0f 59 44 24 14    	mulss  0x14(%rsp),%xmm0
  4008fe:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  400902:	f3 0f 10 54 24 1c    	movss  0x1c(%rsp),%xmm2
  400908:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  40090c:	f3 0f 10 44 24 10    	movss  0x10(%rsp),%xmm0
  400912:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400915:	77 99                	ja     4008b0 <main+0xf0>
  400917:	0f 57 c0             	xorps  %xmm0,%xmm0
  40091a:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
  40091e:	bf 61 0a 40 00       	mov    $0x400a61,%edi
  400923:	b0 01                	mov    $0x1,%al
  400925:	e8 76 fc ff ff       	callq  4005a0 <printf@plt>
  40092a:	bf 74 0a 40 00       	mov    $0x400a74,%edi
  40092f:	e8 4c fc ff ff       	callq  400580 <puts@plt>
  400934:	bf 0c 0a 40 00       	mov    $0x400a0c,%edi
  400939:	31 c0                	xor    %eax,%eax
  40093b:	e8 60 fc ff ff       	callq  4005a0 <printf@plt>
  400940:	bf 0a 00 00 00       	mov    $0xa,%edi
  400945:	e8 26 fc ff ff       	callq  400570 <putchar@plt>
  40094a:	bf 27 0a 40 00       	mov    $0x400a27,%edi
  40094f:	31 c0                	xor    %eax,%eax
  400951:	e8 4a fc ff ff       	callq  4005a0 <printf@plt>
  400956:	bf 42 0a 40 00       	mov    $0x400a42,%edi
  40095b:	31 c0                	xor    %eax,%eax
  40095d:	4c 89 e6             	mov    %r12,%rsi
  400960:	e8 6b fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400965:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  40096a:	0f 85 b0 fe ff ff    	jne    400820 <main+0x60>
  400970:	31 c0                	xor    %eax,%eax
  400972:	48 83 c4 28          	add    $0x28,%rsp
  400976:	5b                   	pop    %rbx
  400977:	41 5c                	pop    %r12
  400979:	41 5e                	pop    %r14
  40097b:	41 5f                	pop    %r15
  40097d:	c3                   	retq   
  40097e:	66 90                	xchg   %ax,%ax

0000000000400980 <__libc_csu_init>:
  400980:	41 57                	push   %r15
  400982:	41 56                	push   %r14
  400984:	49 89 d7             	mov    %rdx,%r15
  400987:	41 55                	push   %r13
  400989:	41 54                	push   %r12
  40098b:	4c 8d 25 6e 04 20 00 	lea    0x20046e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400992:	55                   	push   %rbp
  400993:	48 8d 2d 6e 04 20 00 	lea    0x20046e(%rip),%rbp        # 600e08 <__init_array_end>
  40099a:	53                   	push   %rbx
  40099b:	41 89 fd             	mov    %edi,%r13d
  40099e:	49 89 f6             	mov    %rsi,%r14
  4009a1:	4c 29 e5             	sub    %r12,%rbp
  4009a4:	48 83 ec 08          	sub    $0x8,%rsp
  4009a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4009ac:	e8 8f fb ff ff       	callq  400540 <_init>
  4009b1:	48 85 ed             	test   %rbp,%rbp
  4009b4:	74 20                	je     4009d6 <__libc_csu_init+0x56>
  4009b6:	31 db                	xor    %ebx,%ebx
  4009b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009bf:	00 
  4009c0:	4c 89 fa             	mov    %r15,%rdx
  4009c3:	4c 89 f6             	mov    %r14,%rsi
  4009c6:	44 89 ef             	mov    %r13d,%edi
  4009c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4009cd:	48 83 c3 01          	add    $0x1,%rbx
  4009d1:	48 39 dd             	cmp    %rbx,%rbp
  4009d4:	75 ea                	jne    4009c0 <__libc_csu_init+0x40>
  4009d6:	48 83 c4 08          	add    $0x8,%rsp
  4009da:	5b                   	pop    %rbx
  4009db:	5d                   	pop    %rbp
  4009dc:	41 5c                	pop    %r12
  4009de:	41 5d                	pop    %r13
  4009e0:	41 5e                	pop    %r14
  4009e2:	41 5f                	pop    %r15
  4009e4:	c3                   	retq   
  4009e5:	90                   	nop
  4009e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009ed:	00 00 00 

00000000004009f0 <__libc_csu_fini>:
  4009f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004009f4 <_fini>:
  4009f4:	48 83 ec 08          	sub    $0x8,%rsp
  4009f8:	48 83 c4 08          	add    $0x8,%rsp
  4009fc:	c3                   	retq   
