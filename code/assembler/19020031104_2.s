
c/19020031104_2.elf:     file format elf64-x86-64


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

0000000000400590 <putchar@plt>:
  400590:	ff 25 8a 1a 20 00    	jmpq   *0x201a8a(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  400596:	68 01 00 00 00       	pushq  $0x1
  40059b:	e9 d0 ff ff ff       	jmpq   400570 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602028 <puts@GLIBC_2.2.5>
  4005a6:	68 02 00 00 00       	pushq  $0x2
  4005ab:	e9 c0 ff ff ff       	jmpq   400570 <.plt>

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

00000000004005c0 <malloc@plt>:
  4005c0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  4005c6:	68 04 00 00 00       	pushq  $0x4
  4005cb:	e9 a0 ff ff ff       	jmpq   400570 <.plt>

00000000004005d0 <__isoc99_scanf@plt>:
  4005d0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  4005d6:	68 05 00 00 00       	pushq  $0x5
  4005db:	e9 90 ff ff ff       	jmpq   400570 <.plt>

00000000004005e0 <exit@plt>:
  4005e0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602048 <exit@GLIBC_2.2.5>
  4005e6:	68 06 00 00 00       	pushq  $0x6
  4005eb:	e9 80 ff ff ff       	jmpq   400570 <.plt>

Disassembly of section .text:

00000000004005f0 <_start>:
  4005f0:	31 ed                	xor    %ebp,%ebp
  4005f2:	49 89 d1             	mov    %rdx,%r9
  4005f5:	5e                   	pop    %rsi
  4005f6:	48 89 e2             	mov    %rsp,%rdx
  4005f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005fd:	50                   	push   %rax
  4005fe:	54                   	push   %rsp
  4005ff:	49 c7 c0 60 0c 40 00 	mov    $0x400c60,%r8
  400606:	48 c7 c1 f0 0b 40 00 	mov    $0x400bf0,%rcx
  40060d:	48 c7 c7 e0 08 40 00 	mov    $0x4008e0,%rdi
  400614:	ff 15 d6 19 20 00    	callq  *0x2019d6(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40061a:	f4                   	hlt    
  40061b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400620 <_dl_relocate_static_pie>:
  400620:	f3 c3                	repz retq 
  400622:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400629:	00 00 00 
  40062c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400630 <deregister_tm_clones>:
  400630:	55                   	push   %rbp
  400631:	b8 60 20 60 00       	mov    $0x602060,%eax
  400636:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40063c:	48 89 e5             	mov    %rsp,%rbp
  40063f:	74 17                	je     400658 <deregister_tm_clones+0x28>
  400641:	b8 00 00 00 00       	mov    $0x0,%eax
  400646:	48 85 c0             	test   %rax,%rax
  400649:	74 0d                	je     400658 <deregister_tm_clones+0x28>
  40064b:	5d                   	pop    %rbp
  40064c:	bf 60 20 60 00       	mov    $0x602060,%edi
  400651:	ff e0                	jmpq   *%rax
  400653:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400658:	5d                   	pop    %rbp
  400659:	c3                   	retq   
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <register_tm_clones>:
  400660:	be 60 20 60 00       	mov    $0x602060,%esi
  400665:	55                   	push   %rbp
  400666:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
  40066d:	48 89 e5             	mov    %rsp,%rbp
  400670:	48 c1 fe 03          	sar    $0x3,%rsi
  400674:	48 89 f0             	mov    %rsi,%rax
  400677:	48 c1 e8 3f          	shr    $0x3f,%rax
  40067b:	48 01 c6             	add    %rax,%rsi
  40067e:	48 d1 fe             	sar    %rsi
  400681:	74 15                	je     400698 <register_tm_clones+0x38>
  400683:	b8 00 00 00 00       	mov    $0x0,%eax
  400688:	48 85 c0             	test   %rax,%rax
  40068b:	74 0b                	je     400698 <register_tm_clones+0x38>
  40068d:	5d                   	pop    %rbp
  40068e:	bf 60 20 60 00       	mov    $0x602060,%edi
  400693:	ff e0                	jmpq   *%rax
  400695:	0f 1f 00             	nopl   (%rax)
  400698:	5d                   	pop    %rbp
  400699:	c3                   	retq   
  40069a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006a0 <__do_global_dtors_aux>:
  4006a0:	80 3d b9 19 20 00 00 	cmpb   $0x0,0x2019b9(%rip)        # 602060 <__TMC_END__>
  4006a7:	75 17                	jne    4006c0 <__do_global_dtors_aux+0x20>
  4006a9:	55                   	push   %rbp
  4006aa:	48 89 e5             	mov    %rsp,%rbp
  4006ad:	e8 7e ff ff ff       	callq  400630 <deregister_tm_clones>
  4006b2:	c6 05 a7 19 20 00 01 	movb   $0x1,0x2019a7(%rip)        # 602060 <__TMC_END__>
  4006b9:	5d                   	pop    %rbp
  4006ba:	c3                   	retq   
  4006bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006c0:	f3 c3                	repz retq 
  4006c2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006cd:	00 00 00 

00000000004006d0 <frame_dummy>:
  4006d0:	55                   	push   %rbp
  4006d1:	48 89 e5             	mov    %rsp,%rbp
  4006d4:	5d                   	pop    %rbp
  4006d5:	eb 89                	jmp    400660 <register_tm_clones>
  4006d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006de:	00 00 

00000000004006e0 <insert>:
  4006e0:	48 85 ff             	test   %rdi,%rdi
  4006e3:	74 26                	je     40070b <insert+0x2b>
  4006e5:	8b 0e                	mov    (%rsi),%ecx
  4006e7:	3b 0f                	cmp    (%rdi),%ecx
  4006e9:	7e 24                	jle    40070f <insert+0x2f>
  4006eb:	48 89 f8             	mov    %rdi,%rax
  4006ee:	66 90                	xchg   %ax,%ax
  4006f0:	48 89 c2             	mov    %rax,%rdx
  4006f3:	48 8b 42 08          	mov    0x8(%rdx),%rax
  4006f7:	48 85 c0             	test   %rax,%rax
  4006fa:	74 28                	je     400724 <insert+0x44>
  4006fc:	3b 08                	cmp    (%rax),%ecx
  4006fe:	7f f0                	jg     4006f0 <insert+0x10>
  400700:	48 39 f8             	cmp    %rdi,%rax
  400703:	74 0d                	je     400712 <insert+0x32>
  400705:	48 89 72 08          	mov    %rsi,0x8(%rdx)
  400709:	eb 0a                	jmp    400715 <insert+0x35>
  40070b:	31 c0                	xor    %eax,%eax
  40070d:	eb 03                	jmp    400712 <insert+0x32>
  40070f:	48 89 f8             	mov    %rdi,%rax
  400712:	48 89 f7             	mov    %rsi,%rdi
  400715:	48 89 46 08          	mov    %rax,0x8(%rsi)
  400719:	83 05 44 19 20 00 01 	addl   $0x1,0x201944(%rip)        # 602064 <n>
  400720:	48 89 f8             	mov    %rdi,%rax
  400723:	c3                   	retq   
  400724:	48 89 72 08          	mov    %rsi,0x8(%rdx)
  400728:	31 c0                	xor    %eax,%eax
  40072a:	eb e9                	jmp    400715 <insert+0x35>
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400730 <delete>:
  400730:	55                   	push   %rbp
  400731:	53                   	push   %rbx
  400732:	50                   	push   %rax
  400733:	89 f5                	mov    %esi,%ebp
  400735:	48 89 fb             	mov    %rdi,%rbx
  400738:	48 85 db             	test   %rbx,%rbx
  40073b:	74 34                	je     400771 <delete+0x41>
  40073d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400741:	48 85 d2             	test   %rdx,%rdx
  400744:	74 3b                	je     400781 <delete+0x51>
  400746:	48 89 d8             	mov    %rbx,%rax
  400749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400750:	48 89 c1             	mov    %rax,%rcx
  400753:	48 89 d0             	mov    %rdx,%rax
  400756:	39 29                	cmp    %ebp,(%rcx)
  400758:	7d 3b                	jge    400795 <delete+0x65>
  40075a:	48 8b 50 08          	mov    0x8(%rax),%rdx
  40075e:	48 89 ce             	mov    %rcx,%rsi
  400761:	48 85 d2             	test   %rdx,%rdx
  400764:	75 ea                	jne    400750 <delete+0x20>
  400766:	48 89 c7             	mov    %rax,%rdi
  400769:	31 c0                	xor    %eax,%eax
  40076b:	39 2f                	cmp    %ebp,(%rdi)
  40076d:	74 1b                	je     40078a <delete+0x5a>
  40076f:	eb 2e                	jmp    40079f <delete+0x6f>
  400771:	31 db                	xor    %ebx,%ebx
  400773:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400778:	31 c0                	xor    %eax,%eax
  40077a:	e8 31 fe ff ff       	callq  4005b0 <printf@plt>
  40077f:	eb 42                	jmp    4007c3 <delete+0x93>
  400781:	31 c0                	xor    %eax,%eax
  400783:	48 89 df             	mov    %rbx,%rdi
  400786:	39 2f                	cmp    %ebp,(%rdi)
  400788:	75 15                	jne    40079f <delete+0x6f>
  40078a:	48 39 df             	cmp    %rbx,%rdi
  40078d:	74 17                	je     4007a6 <delete+0x76>
  40078f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400793:	eb 14                	jmp    4007a9 <delete+0x79>
  400795:	48 89 cf             	mov    %rcx,%rdi
  400798:	48 89 f1             	mov    %rsi,%rcx
  40079b:	39 2f                	cmp    %ebp,(%rdi)
  40079d:	74 eb                	je     40078a <delete+0x5a>
  40079f:	bf 99 0c 40 00       	mov    $0x400c99,%edi
  4007a4:	eb 14                	jmp    4007ba <delete+0x8a>
  4007a6:	48 89 c3             	mov    %rax,%rbx
  4007a9:	e8 d2 fd ff ff       	callq  400580 <free@plt>
  4007ae:	83 05 af 18 20 00 ff 	addl   $0xffffffff,0x2018af(%rip)        # 602064 <n>
  4007b5:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  4007ba:	31 c0                	xor    %eax,%eax
  4007bc:	89 ee                	mov    %ebp,%esi
  4007be:	e8 ed fd ff ff       	callq  4005b0 <printf@plt>
  4007c3:	48 89 d8             	mov    %rbx,%rax
  4007c6:	48 83 c4 08          	add    $0x8,%rsp
  4007ca:	5b                   	pop    %rbx
  4007cb:	5d                   	pop    %rbp
  4007cc:	c3                   	retq   
  4007cd:	0f 1f 00             	nopl   (%rax)

00000000004007d0 <creat>:
  4007d0:	41 57                	push   %r15
  4007d2:	41 56                	push   %r14
  4007d4:	53                   	push   %rbx
  4007d5:	c7 05 85 18 20 00 00 	movl   $0x0,0x201885(%rip)        # 602064 <n>
  4007dc:	00 00 00 
  4007df:	bf 10 00 00 00       	mov    $0x10,%edi
  4007e4:	e8 d7 fd ff ff       	callq  4005c0 <malloc@plt>
  4007e9:	49 89 c7             	mov    %rax,%r15
  4007ec:	49 8d 57 04          	lea    0x4(%r15),%rdx
  4007f0:	45 31 f6             	xor    %r14d,%r14d
  4007f3:	bf ae 0c 40 00       	mov    $0x400cae,%edi
  4007f8:	31 c0                	xor    %eax,%eax
  4007fa:	4c 89 fe             	mov    %r15,%rsi
  4007fd:	e8 ce fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400802:	41 83 3f 00          	cmpl   $0x0,(%r15)
  400806:	74 53                	je     40085b <creat+0x8b>
  400808:	4c 89 f8             	mov    %r15,%rax
  40080b:	4c 89 fb             	mov    %r15,%rbx
  40080e:	31 c9                	xor    %ecx,%ecx
  400810:	49 89 df             	mov    %rbx,%r15
  400813:	8b 15 4b 18 20 00    	mov    0x20184b(%rip),%edx        # 602064 <n>
  400819:	8d 72 01             	lea    0x1(%rdx),%esi
  40081c:	89 35 42 18 20 00    	mov    %esi,0x201842(%rip)        # 602064 <n>
  400822:	4d 89 fe             	mov    %r15,%r14
  400825:	85 d2                	test   %edx,%edx
  400827:	74 07                	je     400830 <creat+0x60>
  400829:	4c 89 78 08          	mov    %r15,0x8(%rax)
  40082d:	49 89 ce             	mov    %rcx,%r14
  400830:	bf 10 00 00 00       	mov    $0x10,%edi
  400835:	e8 86 fd ff ff       	callq  4005c0 <malloc@plt>
  40083a:	48 89 c3             	mov    %rax,%rbx
  40083d:	48 8d 53 04          	lea    0x4(%rbx),%rdx
  400841:	bf ae 0c 40 00       	mov    $0x400cae,%edi
  400846:	31 c0                	xor    %eax,%eax
  400848:	48 89 de             	mov    %rbx,%rsi
  40084b:	e8 80 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400850:	83 3b 00             	cmpl   $0x0,(%rbx)
  400853:	4c 89 f8             	mov    %r15,%rax
  400856:	4c 89 f1             	mov    %r14,%rcx
  400859:	75 b5                	jne    400810 <creat+0x40>
  40085b:	49 c7 47 08 00 00 00 	movq   $0x0,0x8(%r15)
  400862:	00 
  400863:	bf 0a 00 00 00       	mov    $0xa,%edi
  400868:	e8 23 fd ff ff       	callq  400590 <putchar@plt>
  40086d:	4c 89 f0             	mov    %r14,%rax
  400870:	5b                   	pop    %rbx
  400871:	41 5e                	pop    %r14
  400873:	41 5f                	pop    %r15
  400875:	c3                   	retq   
  400876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40087d:	00 00 00 

0000000000400880 <print>:
  400880:	53                   	push   %rbx
  400881:	48 89 fb             	mov    %rdi,%rbx
  400884:	48 85 db             	test   %rbx,%rbx
  400887:	74 42                	je     4008cb <print+0x4b>
  400889:	8b 35 d5 17 20 00    	mov    0x2017d5(%rip),%esi        # 602064 <n>
  40088f:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400894:	31 c0                	xor    %eax,%eax
  400896:	e8 15 fd ff ff       	callq  4005b0 <printf@plt>
  40089b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008a0:	8b 33                	mov    (%rbx),%esi
  4008a2:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  4008a7:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ab:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  4008b0:	b0 01                	mov    $0x1,%al
  4008b2:	e8 f9 fc ff ff       	callq  4005b0 <printf@plt>
  4008b7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4008bb:	48 85 db             	test   %rbx,%rbx
  4008be:	75 e0                	jne    4008a0 <print+0x20>
  4008c0:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008c5:	5b                   	pop    %rbx
  4008c6:	e9 c5 fc ff ff       	jmpq   400590 <putchar@plt>
  4008cb:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  4008d0:	5b                   	pop    %rbx
  4008d1:	e9 ca fc ff ff       	jmpq   4005a0 <puts@plt>
  4008d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008dd:	00 00 00 

00000000004008e0 <main>:
  4008e0:	55                   	push   %rbp
  4008e1:	41 57                	push   %r15
  4008e3:	41 56                	push   %r14
  4008e5:	41 54                	push   %r12
  4008e7:	53                   	push   %rbx
  4008e8:	48 83 ec 10          	sub    $0x10,%rsp
  4008ec:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  4008f1:	e8 aa fc ff ff       	callq  4005a0 <puts@plt>
  4008f6:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  4008fb:	e8 a0 fc ff ff       	callq  4005a0 <puts@plt>
  400900:	e8 cb fe ff ff       	callq  4007d0 <creat>
  400905:	49 89 c4             	mov    %rax,%r12
  400908:	4d 85 e4             	test   %r12,%r12
  40090b:	74 4d                	je     40095a <main+0x7a>
  40090d:	8b 35 51 17 20 00    	mov    0x201751(%rip),%esi        # 602064 <n>
  400913:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400918:	31 c0                	xor    %eax,%eax
  40091a:	e8 91 fc ff ff       	callq  4005b0 <printf@plt>
  40091f:	4c 89 e3             	mov    %r12,%rbx
  400922:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400929:	1f 84 00 00 00 00 00 
  400930:	8b 33                	mov    (%rbx),%esi
  400932:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400937:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40093b:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400940:	b0 01                	mov    $0x1,%al
  400942:	e8 69 fc ff ff       	callq  4005b0 <printf@plt>
  400947:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  40094b:	48 85 db             	test   %rbx,%rbx
  40094e:	75 e0                	jne    400930 <main+0x50>
  400950:	bf 0a 00 00 00       	mov    $0xa,%edi
  400955:	e8 36 fc ff ff       	callq  400590 <putchar@plt>
  40095a:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  40095f:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  400964:	eb 14                	jmp    40097a <main+0x9a>
  400966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40096d:	00 00 00 
  400970:	bf 0a 00 00 00       	mov    $0xa,%edi
  400975:	e8 16 fc ff ff       	callq  400590 <putchar@plt>
  40097a:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  40097f:	e8 1c fc ff ff       	callq  4005a0 <puts@plt>
  400984:	bf da 0c 40 00       	mov    $0x400cda,%edi
  400989:	31 c0                	xor    %eax,%eax
  40098b:	e8 20 fc ff ff       	callq  4005b0 <printf@plt>
  400990:	bf e9 0c 40 00       	mov    $0x400ce9,%edi
  400995:	31 c0                	xor    %eax,%eax
  400997:	4c 89 f6             	mov    %r14,%rsi
  40099a:	e8 31 fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  40099f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4009a3:	83 f8 01             	cmp    $0x1,%eax
  4009a6:	0f 84 94 00 00 00    	je     400a40 <main+0x160>
  4009ac:	83 f8 02             	cmp    $0x2,%eax
  4009af:	74 1f                	je     4009d0 <main+0xf0>
  4009b1:	85 c0                	test   %eax,%eax
  4009b3:	0f 84 29 02 00 00    	je     400be2 <main+0x302>
  4009b9:	bf 29 0d 40 00       	mov    $0x400d29,%edi
  4009be:	e8 dd fb ff ff       	callq  4005a0 <puts@plt>
  4009c3:	eb b5                	jmp    40097a <main+0x9a>
  4009c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4009cc:	00 00 00 00 
  4009d0:	4d 85 e4             	test   %r12,%r12
  4009d3:	0f 84 c2 00 00 00    	je     400a9b <main+0x1bb>
  4009d9:	bf 17 0d 40 00       	mov    $0x400d17,%edi
  4009de:	31 c0                	xor    %eax,%eax
  4009e0:	e8 cb fb ff ff       	callq  4005b0 <printf@plt>
  4009e5:	bf e9 0c 40 00       	mov    $0x400ce9,%edi
  4009ea:	31 c0                	xor    %eax,%eax
  4009ec:	4c 89 fe             	mov    %r15,%rsi
  4009ef:	e8 dc fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4009f4:	8b 6c 24 08          	mov    0x8(%rsp),%ebp
  4009f8:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
  4009fd:	48 85 d2             	test   %rdx,%rdx
  400a00:	0f 84 bb 00 00 00    	je     400ac1 <main+0x1e1>
  400a06:	4c 89 e0             	mov    %r12,%rax
  400a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a10:	48 89 c1             	mov    %rax,%rcx
  400a13:	48 89 d0             	mov    %rdx,%rax
  400a16:	39 29                	cmp    %ebp,(%rcx)
  400a18:	0f 8d be 00 00 00    	jge    400adc <main+0x1fc>
  400a1e:	48 8b 50 08          	mov    0x8(%rax),%rdx
  400a22:	48 89 ce             	mov    %rcx,%rsi
  400a25:	48 85 d2             	test   %rdx,%rdx
  400a28:	75 e6                	jne    400a10 <main+0x130>
  400a2a:	48 89 c7             	mov    %rax,%rdi
  400a2d:	e9 92 00 00 00       	jmpq   400ac4 <main+0x1e4>
  400a32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a39:	1f 84 00 00 00 00 00 
  400a40:	bf ec 0c 40 00       	mov    $0x400cec,%edi
  400a45:	31 c0                	xor    %eax,%eax
  400a47:	e8 64 fb ff ff       	callq  4005b0 <printf@plt>
  400a4c:	bf 10 00 00 00       	mov    $0x10,%edi
  400a51:	e8 6a fb ff ff       	callq  4005c0 <malloc@plt>
  400a56:	48 89 c5             	mov    %rax,%rbp
  400a59:	bf ae 0c 40 00       	mov    $0x400cae,%edi
  400a5e:	48 8d 55 04          	lea    0x4(%rbp),%rdx
  400a62:	31 c0                	xor    %eax,%eax
  400a64:	48 89 ee             	mov    %rbp,%rsi
  400a67:	e8 64 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a6c:	4d 85 e4             	test   %r12,%r12
  400a6f:	74 34                	je     400aa5 <main+0x1c5>
  400a71:	8b 75 00             	mov    0x0(%rbp),%esi
  400a74:	4c 89 e0             	mov    %r12,%rax
  400a77:	41 3b 34 24          	cmp    (%r12),%esi
  400a7b:	7e 38                	jle    400ab5 <main+0x1d5>
  400a7d:	0f 1f 00             	nopl   (%rax)
  400a80:	48 89 c1             	mov    %rax,%rcx
  400a83:	48 8b 41 08          	mov    0x8(%rcx),%rax
  400a87:	48 85 c0             	test   %rax,%rax
  400a8a:	74 64                	je     400af0 <main+0x210>
  400a8c:	3b 30                	cmp    (%rax),%esi
  400a8e:	7f f0                	jg     400a80 <main+0x1a0>
  400a90:	4c 39 e0             	cmp    %r12,%rax
  400a93:	74 20                	je     400ab5 <main+0x1d5>
  400a95:	48 89 69 08          	mov    %rbp,0x8(%rcx)
  400a99:	eb 20                	jmp    400abb <main+0x1db>
  400a9b:	bf d0 0d 40 00       	mov    $0x400dd0,%edi
  400aa0:	e9 30 01 00 00       	jmpq   400bd5 <main+0x2f5>
  400aa5:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
  400aac:	00 
  400aad:	8b 75 00             	mov    0x0(%rbp),%esi
  400ab0:	49 89 ec             	mov    %rbp,%r12
  400ab3:	eb 4b                	jmp    400b00 <main+0x220>
  400ab5:	4c 89 e0             	mov    %r12,%rax
  400ab8:	49 89 ec             	mov    %rbp,%r12
  400abb:	48 89 45 08          	mov    %rax,0x8(%rbp)
  400abf:	eb 3f                	jmp    400b00 <main+0x220>
  400ac1:	4c 89 e7             	mov    %r12,%rdi
  400ac4:	31 c0                	xor    %eax,%eax
  400ac6:	39 2f                	cmp    %ebp,(%rdi)
  400ac8:	75 1c                	jne    400ae6 <main+0x206>
  400aca:	4c 39 e7             	cmp    %r12,%rdi
  400acd:	0f 84 92 00 00 00    	je     400b65 <main+0x285>
  400ad3:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400ad7:	e9 8c 00 00 00       	jmpq   400b68 <main+0x288>
  400adc:	48 89 cf             	mov    %rcx,%rdi
  400adf:	48 89 f1             	mov    %rsi,%rcx
  400ae2:	39 2f                	cmp    %ebp,(%rdi)
  400ae4:	74 e4                	je     400aca <main+0x1ea>
  400ae6:	bf 99 0c 40 00       	mov    $0x400c99,%edi
  400aeb:	e9 89 00 00 00       	jmpq   400b79 <main+0x299>
  400af0:	48 89 69 08          	mov    %rbp,0x8(%rcx)
  400af4:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
  400afb:	00 
  400afc:	0f 1f 40 00          	nopl   0x0(%rax)
  400b00:	83 05 5d 15 20 00 01 	addl   $0x1,0x20155d(%rip)        # 602064 <n>
  400b07:	bf 08 0d 40 00       	mov    $0x400d08,%edi
  400b0c:	31 c0                	xor    %eax,%eax
  400b0e:	e8 9d fa ff ff       	callq  4005b0 <printf@plt>
  400b13:	4d 85 e4             	test   %r12,%r12
  400b16:	0f 84 b4 00 00 00    	je     400bd0 <main+0x2f0>
  400b1c:	8b 35 42 15 20 00    	mov    0x201542(%rip),%esi        # 602064 <n>
  400b22:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400b27:	31 c0                	xor    %eax,%eax
  400b29:	e8 82 fa ff ff       	callq  4005b0 <printf@plt>
  400b2e:	4c 89 e3             	mov    %r12,%rbx
  400b31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b38:	0f 1f 84 00 00 00 00 
  400b3f:	00 
  400b40:	8b 33                	mov    (%rbx),%esi
  400b42:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400b47:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b4b:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400b50:	b0 01                	mov    $0x1,%al
  400b52:	e8 59 fa ff ff       	callq  4005b0 <printf@plt>
  400b57:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400b5b:	48 85 db             	test   %rbx,%rbx
  400b5e:	75 e0                	jne    400b40 <main+0x260>
  400b60:	e9 0b fe ff ff       	jmpq   400970 <main+0x90>
  400b65:	49 89 c4             	mov    %rax,%r12
  400b68:	e8 13 fa ff ff       	callq  400580 <free@plt>
  400b6d:	83 05 f0 14 20 00 ff 	addl   $0xffffffff,0x2014f0(%rip)        # 602064 <n>
  400b74:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  400b79:	31 c0                	xor    %eax,%eax
  400b7b:	89 ee                	mov    %ebp,%esi
  400b7d:	e8 2e fa ff ff       	callq  4005b0 <printf@plt>
  400b82:	4d 85 e4             	test   %r12,%r12
  400b85:	74 49                	je     400bd0 <main+0x2f0>
  400b87:	8b 35 d7 14 20 00    	mov    0x2014d7(%rip),%esi        # 602064 <n>
  400b8d:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400b92:	31 c0                	xor    %eax,%eax
  400b94:	e8 17 fa ff ff       	callq  4005b0 <printf@plt>
  400b99:	4c 89 e3             	mov    %r12,%rbx
  400b9c:	0f 1f 40 00          	nopl   0x0(%rax)
  400ba0:	8b 33                	mov    (%rbx),%esi
  400ba2:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400ba7:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bab:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400bb0:	b0 01                	mov    $0x1,%al
  400bb2:	e8 f9 f9 ff ff       	callq  4005b0 <printf@plt>
  400bb7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400bbb:	48 85 db             	test   %rbx,%rbx
  400bbe:	75 e0                	jne    400ba0 <main+0x2c0>
  400bc0:	e9 ab fd ff ff       	jmpq   400970 <main+0x90>
  400bc5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400bcc:	00 00 00 00 
  400bd0:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400bd5:	e8 c6 f9 ff ff       	callq  4005a0 <puts@plt>
  400bda:	45 31 e4             	xor    %r12d,%r12d
  400bdd:	e9 98 fd ff ff       	jmpq   40097a <main+0x9a>
  400be2:	31 ff                	xor    %edi,%edi
  400be4:	e8 f7 f9 ff ff       	callq  4005e0 <exit@plt>
  400be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

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
