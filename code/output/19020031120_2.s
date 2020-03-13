
input/19020031120_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400528 <_init>:
  400528:	48 83 ec 08          	sub    $0x8,%rsp
  40052c:	48 8b 05 c5 1a 20 00 	mov    0x201ac5(%rip),%rax        # 601ff8 <__gmon_start__>
  400533:	48 85 c0             	test   %rax,%rax
  400536:	74 02                	je     40053a <_init+0x12>
  400538:	ff d0                	callq  *%rax
  40053a:	48 83 c4 08          	add    $0x8,%rsp
  40053e:	c3                   	retq   

Disassembly of section .plt:

0000000000400540 <.plt>:
  400540:	ff 35 c2 1a 20 00    	pushq  0x201ac2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400546:	ff 25 c4 1a 20 00    	jmpq   *0x201ac4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40054c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400550 <free@plt>:
  400550:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400556:	68 00 00 00 00       	pushq  $0x0
  40055b:	e9 e0 ff ff ff       	jmpq   400540 <.plt>

0000000000400560 <putchar@plt>:
  400560:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  400566:	68 01 00 00 00       	pushq  $0x1
  40056b:	e9 d0 ff ff ff       	jmpq   400540 <.plt>

0000000000400570 <puts@plt>:
  400570:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602028 <puts@GLIBC_2.2.5>
  400576:	68 02 00 00 00       	pushq  $0x2
  40057b:	e9 c0 ff ff ff       	jmpq   400540 <.plt>

0000000000400580 <printf@plt>:
  400580:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602030 <printf@GLIBC_2.2.5>
  400586:	68 03 00 00 00       	pushq  $0x3
  40058b:	e9 b0 ff ff ff       	jmpq   400540 <.plt>

0000000000400590 <malloc@plt>:
  400590:	ff 25 a2 1a 20 00    	jmpq   *0x201aa2(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  400596:	68 04 00 00 00       	pushq  $0x4
  40059b:	e9 a0 ff ff ff       	jmpq   400540 <.plt>

00000000004005a0 <__isoc99_scanf@plt>:
  4005a0:	ff 25 9a 1a 20 00    	jmpq   *0x201a9a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  4005a6:	68 05 00 00 00       	pushq  $0x5
  4005ab:	e9 90 ff ff ff       	jmpq   400540 <.plt>

00000000004005b0 <exit@plt>:
  4005b0:	ff 25 92 1a 20 00    	jmpq   *0x201a92(%rip)        # 602048 <exit@GLIBC_2.2.5>
  4005b6:	68 06 00 00 00       	pushq  $0x6
  4005bb:	e9 80 ff ff ff       	jmpq   400540 <.plt>

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	31 ed                	xor    %ebp,%ebp
  4005c2:	49 89 d1             	mov    %rdx,%r9
  4005c5:	5e                   	pop    %rsi
  4005c6:	48 89 e2             	mov    %rsp,%rdx
  4005c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005cd:	50                   	push   %rax
  4005ce:	54                   	push   %rsp
  4005cf:	49 c7 c0 50 0c 40 00 	mov    $0x400c50,%r8
  4005d6:	48 c7 c1 e0 0b 40 00 	mov    $0x400be0,%rcx
  4005dd:	48 c7 c7 c0 08 40 00 	mov    $0x4008c0,%rdi
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
  400601:	b8 60 20 60 00       	mov    $0x602060,%eax
  400606:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	74 17                	je     400628 <deregister_tm_clones+0x28>
  400611:	b8 00 00 00 00       	mov    $0x0,%eax
  400616:	48 85 c0             	test   %rax,%rax
  400619:	74 0d                	je     400628 <deregister_tm_clones+0x28>
  40061b:	5d                   	pop    %rbp
  40061c:	bf 60 20 60 00       	mov    $0x602060,%edi
  400621:	ff e0                	jmpq   *%rax
  400623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <register_tm_clones>:
  400630:	be 60 20 60 00       	mov    $0x602060,%esi
  400635:	55                   	push   %rbp
  400636:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
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
  40065e:	bf 60 20 60 00       	mov    $0x602060,%edi
  400663:	ff e0                	jmpq   *%rax
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <__do_global_dtors_aux>:
  400670:	80 3d e9 19 20 00 00 	cmpb   $0x0,0x2019e9(%rip)        # 602060 <__TMC_END__>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 d7 19 20 00 01 	movb   $0x1,0x2019d7(%rip)        # 602060 <__TMC_END__>
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

00000000004006b0 <insert>:
  4006b0:	48 85 ff             	test   %rdi,%rdi
  4006b3:	74 26                	je     4006db <insert+0x2b>
  4006b5:	8b 0e                	mov    (%rsi),%ecx
  4006b7:	3b 0f                	cmp    (%rdi),%ecx
  4006b9:	7e 24                	jle    4006df <insert+0x2f>
  4006bb:	48 89 f8             	mov    %rdi,%rax
  4006be:	66 90                	xchg   %ax,%ax
  4006c0:	48 89 c2             	mov    %rax,%rdx
  4006c3:	48 8b 42 08          	mov    0x8(%rdx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 28                	je     4006f4 <insert+0x44>
  4006cc:	3b 08                	cmp    (%rax),%ecx
  4006ce:	7f f0                	jg     4006c0 <insert+0x10>
  4006d0:	48 39 f8             	cmp    %rdi,%rax
  4006d3:	74 0d                	je     4006e2 <insert+0x32>
  4006d5:	48 89 72 08          	mov    %rsi,0x8(%rdx)
  4006d9:	eb 0a                	jmp    4006e5 <insert+0x35>
  4006db:	31 c0                	xor    %eax,%eax
  4006dd:	eb 03                	jmp    4006e2 <insert+0x32>
  4006df:	48 89 f8             	mov    %rdi,%rax
  4006e2:	48 89 f7             	mov    %rsi,%rdi
  4006e5:	48 89 46 08          	mov    %rax,0x8(%rsi)
  4006e9:	83 05 74 19 20 00 01 	addl   $0x1,0x201974(%rip)        # 602064 <n>
  4006f0:	48 89 f8             	mov    %rdi,%rax
  4006f3:	c3                   	retq   
  4006f4:	48 89 72 08          	mov    %rsi,0x8(%rdx)
  4006f8:	31 c0                	xor    %eax,%eax
  4006fa:	eb e9                	jmp    4006e5 <insert+0x35>
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400700 <delete>:
  400700:	41 56                	push   %r14
  400702:	53                   	push   %rbx
  400703:	50                   	push   %rax
  400704:	48 89 f3             	mov    %rsi,%rbx
  400707:	49 89 fe             	mov    %rdi,%r14
  40070a:	4d 85 f6             	test   %r14,%r14
  40070d:	74 3c                	je     40074b <delete+0x4b>
  40070f:	49 63 06             	movslq (%r14),%rax
  400712:	48 39 d8             	cmp    %rbx,%rax
  400715:	7d 45                	jge    40075c <delete+0x5c>
  400717:	4c 89 f7             	mov    %r14,%rdi
  40071a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400720:	48 89 f9             	mov    %rdi,%rcx
  400723:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  400727:	48 85 ff             	test   %rdi,%rdi
  40072a:	74 3f                	je     40076b <delete+0x6b>
  40072c:	48 63 07             	movslq (%rdi),%rax
  40072f:	48 89 ca             	mov    %rcx,%rdx
  400732:	48 39 d8             	cmp    %rbx,%rax
  400735:	7c e9                	jl     400720 <delete+0x20>
  400737:	48 39 d8             	cmp    %rbx,%rax
  40073a:	75 28                	jne    400764 <delete+0x64>
  40073c:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400740:	4c 39 f7             	cmp    %r14,%rdi
  400743:	74 33                	je     400778 <delete+0x78>
  400745:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400749:	eb 30                	jmp    40077b <delete+0x7b>
  40074b:	45 31 f6             	xor    %r14d,%r14d
  40074e:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  400753:	31 c0                	xor    %eax,%eax
  400755:	e8 26 fe ff ff       	callq  400580 <printf@plt>
  40075a:	eb 3a                	jmp    400796 <delete+0x96>
  40075c:	4c 89 f7             	mov    %r14,%rdi
  40075f:	48 39 d8             	cmp    %rbx,%rax
  400762:	74 d8                	je     40073c <delete+0x3c>
  400764:	bf 9f 0c 40 00       	mov    $0x400c9f,%edi
  400769:	eb 21                	jmp    40078c <delete+0x8c>
  40076b:	48 89 cf             	mov    %rcx,%rdi
  40076e:	48 89 d1             	mov    %rdx,%rcx
  400771:	48 39 d8             	cmp    %rbx,%rax
  400774:	74 c6                	je     40073c <delete+0x3c>
  400776:	eb ec                	jmp    400764 <delete+0x64>
  400778:	49 89 c6             	mov    %rax,%r14
  40077b:	e8 d0 fd ff ff       	callq  400550 <free@plt>
  400780:	83 05 dd 18 20 00 ff 	addl   $0xffffffff,0x2018dd(%rip)        # 602064 <n>
  400787:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  40078c:	31 c0                	xor    %eax,%eax
  40078e:	48 89 de             	mov    %rbx,%rsi
  400791:	e8 ea fd ff ff       	callq  400580 <printf@plt>
  400796:	4c 89 f0             	mov    %r14,%rax
  400799:	48 83 c4 08          	add    $0x8,%rsp
  40079d:	5b                   	pop    %rbx
  40079e:	41 5e                	pop    %r14
  4007a0:	c3                   	retq   
  4007a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007a8:	0f 1f 84 00 00 00 00 
  4007af:	00 

00000000004007b0 <create>:
  4007b0:	41 57                	push   %r15
  4007b2:	41 56                	push   %r14
  4007b4:	53                   	push   %rbx
  4007b5:	c7 05 a5 18 20 00 00 	movl   $0x0,0x2018a5(%rip)        # 602064 <n>
  4007bc:	00 00 00 
  4007bf:	bf 10 00 00 00       	mov    $0x10,%edi
  4007c4:	e8 c7 fd ff ff       	callq  400590 <malloc@plt>
  4007c9:	49 89 c7             	mov    %rax,%r15
  4007cc:	49 8d 57 04          	lea    0x4(%r15),%rdx
  4007d0:	45 31 f6             	xor    %r14d,%r14d
  4007d3:	bf bf 0c 40 00       	mov    $0x400cbf,%edi
  4007d8:	31 c0                	xor    %eax,%eax
  4007da:	4c 89 fe             	mov    %r15,%rsi
  4007dd:	e8 be fd ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  4007e2:	41 83 3f 00          	cmpl   $0x0,(%r15)
  4007e6:	74 53                	je     40083b <create+0x8b>
  4007e8:	4c 89 f8             	mov    %r15,%rax
  4007eb:	4c 89 fb             	mov    %r15,%rbx
  4007ee:	31 c9                	xor    %ecx,%ecx
  4007f0:	49 89 df             	mov    %rbx,%r15
  4007f3:	8b 15 6b 18 20 00    	mov    0x20186b(%rip),%edx        # 602064 <n>
  4007f9:	8d 72 01             	lea    0x1(%rdx),%esi
  4007fc:	89 35 62 18 20 00    	mov    %esi,0x201862(%rip)        # 602064 <n>
  400802:	4d 89 fe             	mov    %r15,%r14
  400805:	85 d2                	test   %edx,%edx
  400807:	74 07                	je     400810 <create+0x60>
  400809:	4c 89 78 08          	mov    %r15,0x8(%rax)
  40080d:	49 89 ce             	mov    %rcx,%r14
  400810:	bf 10 00 00 00       	mov    $0x10,%edi
  400815:	e8 76 fd ff ff       	callq  400590 <malloc@plt>
  40081a:	48 89 c3             	mov    %rax,%rbx
  40081d:	48 8d 53 04          	lea    0x4(%rbx),%rdx
  400821:	bf bf 0c 40 00       	mov    $0x400cbf,%edi
  400826:	31 c0                	xor    %eax,%eax
  400828:	48 89 de             	mov    %rbx,%rsi
  40082b:	e8 70 fd ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  400830:	83 3b 00             	cmpl   $0x0,(%rbx)
  400833:	4c 89 f8             	mov    %r15,%rax
  400836:	4c 89 f1             	mov    %r14,%rcx
  400839:	75 b5                	jne    4007f0 <create+0x40>
  40083b:	49 c7 47 08 00 00 00 	movq   $0x0,0x8(%r15)
  400842:	00 
  400843:	bf 0a 00 00 00       	mov    $0xa,%edi
  400848:	e8 13 fd ff ff       	callq  400560 <putchar@plt>
  40084d:	4c 89 f0             	mov    %r14,%rax
  400850:	5b                   	pop    %rbx
  400851:	41 5e                	pop    %r14
  400853:	41 5f                	pop    %r15
  400855:	c3                   	retq   
  400856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40085d:	00 00 00 

0000000000400860 <print>:
  400860:	53                   	push   %rbx
  400861:	48 89 fb             	mov    %rdi,%rbx
  400864:	48 85 db             	test   %rbx,%rbx
  400867:	74 42                	je     4008ab <print+0x4b>
  400869:	8b 35 f5 17 20 00    	mov    0x2017f5(%rip),%esi        # 602064 <n>
  40086f:	bf ca 0c 40 00       	mov    $0x400cca,%edi
  400874:	31 c0                	xor    %eax,%eax
  400876:	e8 05 fd ff ff       	callq  400580 <printf@plt>
  40087b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400880:	8b 33                	mov    (%rbx),%esi
  400882:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400887:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40088b:	bf ec 0c 40 00       	mov    $0x400cec,%edi
  400890:	b0 01                	mov    $0x1,%al
  400892:	e8 e9 fc ff ff       	callq  400580 <printf@plt>
  400897:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  40089b:	48 85 db             	test   %rbx,%rbx
  40089e:	75 e0                	jne    400880 <print+0x20>
  4008a0:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008a5:	5b                   	pop    %rbx
  4008a6:	e9 b5 fc ff ff       	jmpq   400560 <putchar@plt>
  4008ab:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  4008b0:	5b                   	pop    %rbx
  4008b1:	e9 ba fc ff ff       	jmpq   400570 <puts@plt>
  4008b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008bd:	00 00 00 

00000000004008c0 <main>:
  4008c0:	41 57                	push   %r15
  4008c2:	41 56                	push   %r14
  4008c4:	41 54                	push   %r12
  4008c6:	53                   	push   %rbx
  4008c7:	48 83 ec 18          	sub    $0x18,%rsp
  4008cb:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  4008d0:	e8 9b fc ff ff       	callq  400570 <puts@plt>
  4008d5:	bf c0 0d 40 00       	mov    $0x400dc0,%edi
  4008da:	e8 91 fc ff ff       	callq  400570 <puts@plt>
  4008df:	e8 cc fe ff ff       	callq  4007b0 <create>
  4008e4:	49 89 c4             	mov    %rax,%r12
  4008e7:	4d 85 e4             	test   %r12,%r12
  4008ea:	74 4e                	je     40093a <main+0x7a>
  4008ec:	8b 35 72 17 20 00    	mov    0x201772(%rip),%esi        # 602064 <n>
  4008f2:	bf ca 0c 40 00       	mov    $0x400cca,%edi
  4008f7:	31 c0                	xor    %eax,%eax
  4008f9:	e8 82 fc ff ff       	callq  400580 <printf@plt>
  4008fe:	4c 89 e3             	mov    %r12,%rbx
  400901:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400908:	0f 1f 84 00 00 00 00 
  40090f:	00 
  400910:	8b 33                	mov    (%rbx),%esi
  400912:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400917:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40091b:	bf ec 0c 40 00       	mov    $0x400cec,%edi
  400920:	b0 01                	mov    $0x1,%al
  400922:	e8 59 fc ff ff       	callq  400580 <printf@plt>
  400927:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  40092b:	48 85 db             	test   %rbx,%rbx
  40092e:	75 e0                	jne    400910 <main+0x50>
  400930:	bf 0a 00 00 00       	mov    $0xa,%edi
  400935:	e8 26 fc ff ff       	callq  400560 <putchar@plt>
  40093a:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  40093f:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400944:	eb 14                	jmp    40095a <main+0x9a>
  400946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40094d:	00 00 00 
  400950:	bf 0a 00 00 00       	mov    $0xa,%edi
  400955:	e8 06 fc ff ff       	callq  400560 <putchar@plt>
  40095a:	bf 00 0e 40 00       	mov    $0x400e00,%edi
  40095f:	e8 0c fc ff ff       	callq  400570 <puts@plt>
  400964:	bf f7 0c 40 00       	mov    $0x400cf7,%edi
  400969:	31 c0                	xor    %eax,%eax
  40096b:	e8 10 fc ff ff       	callq  400580 <printf@plt>
  400970:	bf 13 0d 40 00       	mov    $0x400d13,%edi
  400975:	31 c0                	xor    %eax,%eax
  400977:	4c 89 f6             	mov    %r14,%rsi
  40097a:	e8 21 fc ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  40097f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400983:	83 f8 01             	cmp    $0x1,%eax
  400986:	0f 84 a4 00 00 00    	je     400a30 <main+0x170>
  40098c:	83 f8 02             	cmp    $0x2,%eax
  40098f:	74 1f                	je     4009b0 <main+0xf0>
  400991:	85 c0                	test   %eax,%eax
  400993:	0f 84 39 02 00 00    	je     400bd2 <main+0x312>
  400999:	bf 80 0e 40 00       	mov    $0x400e80,%edi
  40099e:	e8 cd fb ff ff       	callq  400570 <puts@plt>
  4009a3:	eb b5                	jmp    40095a <main+0x9a>
  4009a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4009ac:	00 00 00 00 
  4009b0:	4d 85 e4             	test   %r12,%r12
  4009b3:	0f 84 d2 00 00 00    	je     400a8b <main+0x1cb>
  4009b9:	bf 4f 0d 40 00       	mov    $0x400d4f,%edi
  4009be:	31 c0                	xor    %eax,%eax
  4009c0:	e8 bb fb ff ff       	callq  400580 <printf@plt>
  4009c5:	bf 13 0d 40 00       	mov    $0x400d13,%edi
  4009ca:	31 c0                	xor    %eax,%eax
  4009cc:	4c 89 fe             	mov    %r15,%rsi
  4009cf:	e8 cc fb ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  4009d4:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  4009d9:	49 63 04 24          	movslq (%r12),%rax
  4009dd:	48 39 c3             	cmp    %rax,%rbx
  4009e0:	0f 8e ca 00 00 00    	jle    400ab0 <main+0x1f0>
  4009e6:	4c 89 e7             	mov    %r12,%rdi
  4009e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009f0:	48 89 f9             	mov    %rdi,%rcx
  4009f3:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  4009f7:	48 85 ff             	test   %rdi,%rdi
  4009fa:	0f 84 c6 00 00 00    	je     400ac6 <main+0x206>
  400a00:	48 63 07             	movslq (%rdi),%rax
  400a03:	48 89 ca             	mov    %rcx,%rdx
  400a06:	48 39 c3             	cmp    %rax,%rbx
  400a09:	7f e5                	jg     4009f0 <main+0x130>
  400a0b:	48 39 d8             	cmp    %rbx,%rax
  400a0e:	0f 85 a8 00 00 00    	jne    400abc <main+0x1fc>
  400a14:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400a18:	4c 39 e7             	cmp    %r12,%rdi
  400a1b:	0f 84 34 01 00 00    	je     400b55 <main+0x295>
  400a21:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400a25:	e9 2e 01 00 00       	jmpq   400b58 <main+0x298>
  400a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a30:	bf 16 0d 40 00       	mov    $0x400d16,%edi
  400a35:	31 c0                	xor    %eax,%eax
  400a37:	e8 44 fb ff ff       	callq  400580 <printf@plt>
  400a3c:	bf 10 00 00 00       	mov    $0x10,%edi
  400a41:	e8 4a fb ff ff       	callq  400590 <malloc@plt>
  400a46:	48 89 c3             	mov    %rax,%rbx
  400a49:	bf bf 0c 40 00       	mov    $0x400cbf,%edi
  400a4e:	48 8d 53 04          	lea    0x4(%rbx),%rdx
  400a52:	31 c0                	xor    %eax,%eax
  400a54:	48 89 de             	mov    %rbx,%rsi
  400a57:	e8 44 fb ff ff       	callq  4005a0 <__isoc99_scanf@plt>
  400a5c:	4d 85 e4             	test   %r12,%r12
  400a5f:	74 34                	je     400a95 <main+0x1d5>
  400a61:	8b 33                	mov    (%rbx),%esi
  400a63:	4c 89 e0             	mov    %r12,%rax
  400a66:	41 3b 34 24          	cmp    (%r12),%esi
  400a6a:	7e 38                	jle    400aa4 <main+0x1e4>
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a70:	48 89 c1             	mov    %rax,%rcx
  400a73:	48 8b 41 08          	mov    0x8(%rcx),%rax
  400a77:	48 85 c0             	test   %rax,%rax
  400a7a:	74 5b                	je     400ad7 <main+0x217>
  400a7c:	3b 30                	cmp    (%rax),%esi
  400a7e:	7f f0                	jg     400a70 <main+0x1b0>
  400a80:	4c 39 e0             	cmp    %r12,%rax
  400a83:	74 1f                	je     400aa4 <main+0x1e4>
  400a85:	48 89 59 08          	mov    %rbx,0x8(%rcx)
  400a89:	eb 1f                	jmp    400aaa <main+0x1ea>
  400a8b:	bf 30 0e 40 00       	mov    $0x400e30,%edi
  400a90:	e9 30 01 00 00       	jmpq   400bc5 <main+0x305>
  400a95:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  400a9c:	00 
  400a9d:	8b 33                	mov    (%rbx),%esi
  400a9f:	49 89 dc             	mov    %rbx,%r12
  400aa2:	eb 4c                	jmp    400af0 <main+0x230>
  400aa4:	4c 89 e0             	mov    %r12,%rax
  400aa7:	49 89 dc             	mov    %rbx,%r12
  400aaa:	48 89 43 08          	mov    %rax,0x8(%rbx)
  400aae:	eb 40                	jmp    400af0 <main+0x230>
  400ab0:	4c 89 e7             	mov    %r12,%rdi
  400ab3:	48 39 d8             	cmp    %rbx,%rax
  400ab6:	0f 84 58 ff ff ff    	je     400a14 <main+0x154>
  400abc:	bf 9f 0c 40 00       	mov    $0x400c9f,%edi
  400ac1:	e9 a3 00 00 00       	jmpq   400b69 <main+0x2a9>
  400ac6:	48 89 cf             	mov    %rcx,%rdi
  400ac9:	48 89 d1             	mov    %rdx,%rcx
  400acc:	48 39 d8             	cmp    %rbx,%rax
  400acf:	0f 84 3f ff ff ff    	je     400a14 <main+0x154>
  400ad5:	eb e5                	jmp    400abc <main+0x1fc>
  400ad7:	48 89 59 08          	mov    %rbx,0x8(%rcx)
  400adb:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  400ae2:	00 
  400ae3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aea:	84 00 00 00 00 00 
  400af0:	83 05 6d 15 20 00 01 	addl   $0x1,0x20156d(%rip)        # 602064 <n>
  400af7:	bf 3c 0d 40 00       	mov    $0x400d3c,%edi
  400afc:	31 c0                	xor    %eax,%eax
  400afe:	e8 7d fa ff ff       	callq  400580 <printf@plt>
  400b03:	4d 85 e4             	test   %r12,%r12
  400b06:	0f 84 b4 00 00 00    	je     400bc0 <main+0x300>
  400b0c:	8b 35 52 15 20 00    	mov    0x201552(%rip),%esi        # 602064 <n>
  400b12:	bf ca 0c 40 00       	mov    $0x400cca,%edi
  400b17:	31 c0                	xor    %eax,%eax
  400b19:	e8 62 fa ff ff       	callq  400580 <printf@plt>
  400b1e:	4c 89 e3             	mov    %r12,%rbx
  400b21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b28:	0f 1f 84 00 00 00 00 
  400b2f:	00 
  400b30:	8b 33                	mov    (%rbx),%esi
  400b32:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400b37:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b3b:	bf ec 0c 40 00       	mov    $0x400cec,%edi
  400b40:	b0 01                	mov    $0x1,%al
  400b42:	e8 39 fa ff ff       	callq  400580 <printf@plt>
  400b47:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400b4b:	48 85 db             	test   %rbx,%rbx
  400b4e:	75 e0                	jne    400b30 <main+0x270>
  400b50:	e9 fb fd ff ff       	jmpq   400950 <main+0x90>
  400b55:	49 89 c4             	mov    %rax,%r12
  400b58:	e8 f3 f9 ff ff       	callq  400550 <free@plt>
  400b5d:	83 05 00 15 20 00 ff 	addl   $0xffffffff,0x201500(%rip)        # 602064 <n>
  400b64:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400b69:	31 c0                	xor    %eax,%eax
  400b6b:	48 89 de             	mov    %rbx,%rsi
  400b6e:	e8 0d fa ff ff       	callq  400580 <printf@plt>
  400b73:	4d 85 e4             	test   %r12,%r12
  400b76:	74 48                	je     400bc0 <main+0x300>
  400b78:	8b 35 e6 14 20 00    	mov    0x2014e6(%rip),%esi        # 602064 <n>
  400b7e:	bf ca 0c 40 00       	mov    $0x400cca,%edi
  400b83:	31 c0                	xor    %eax,%eax
  400b85:	e8 f6 f9 ff ff       	callq  400580 <printf@plt>
  400b8a:	4c 89 e3             	mov    %r12,%rbx
  400b8d:	0f 1f 00             	nopl   (%rax)
  400b90:	8b 33                	mov    (%rbx),%esi
  400b92:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
  400b97:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b9b:	bf ec 0c 40 00       	mov    $0x400cec,%edi
  400ba0:	b0 01                	mov    $0x1,%al
  400ba2:	e8 d9 f9 ff ff       	callq  400580 <printf@plt>
  400ba7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400bab:	48 85 db             	test   %rbx,%rbx
  400bae:	75 e0                	jne    400b90 <main+0x2d0>
  400bb0:	e9 9b fd ff ff       	jmpq   400950 <main+0x90>
  400bb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400bbc:	00 00 00 00 
  400bc0:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400bc5:	e8 a6 f9 ff ff       	callq  400570 <puts@plt>
  400bca:	45 31 e4             	xor    %r12d,%r12d
  400bcd:	e9 88 fd ff ff       	jmpq   40095a <main+0x9a>
  400bd2:	31 ff                	xor    %edi,%edi
  400bd4:	e8 d7 f9 ff ff       	callq  4005b0 <exit@plt>
  400bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400be0 <__libc_csu_init>:
  400be0:	41 57                	push   %r15
  400be2:	41 56                	push   %r14
  400be4:	49 89 d7             	mov    %rdx,%r15
  400be7:	41 55                	push   %r13
  400be9:	41 54                	push   %r12
  400beb:	4c 8d 25 0e 12 20 00 	lea    0x20120e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bf2:	55                   	push   %rbp
  400bf3:	48 8d 2d 0e 12 20 00 	lea    0x20120e(%rip),%rbp        # 601e08 <__init_array_end>
  400bfa:	53                   	push   %rbx
  400bfb:	41 89 fd             	mov    %edi,%r13d
  400bfe:	49 89 f6             	mov    %rsi,%r14
  400c01:	4c 29 e5             	sub    %r12,%rbp
  400c04:	48 83 ec 08          	sub    $0x8,%rsp
  400c08:	48 c1 fd 03          	sar    $0x3,%rbp
  400c0c:	e8 17 f9 ff ff       	callq  400528 <_init>
  400c11:	48 85 ed             	test   %rbp,%rbp
  400c14:	74 20                	je     400c36 <__libc_csu_init+0x56>
  400c16:	31 db                	xor    %ebx,%ebx
  400c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c1f:	00 
  400c20:	4c 89 fa             	mov    %r15,%rdx
  400c23:	4c 89 f6             	mov    %r14,%rsi
  400c26:	44 89 ef             	mov    %r13d,%edi
  400c29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c2d:	48 83 c3 01          	add    $0x1,%rbx
  400c31:	48 39 dd             	cmp    %rbx,%rbp
  400c34:	75 ea                	jne    400c20 <__libc_csu_init+0x40>
  400c36:	48 83 c4 08          	add    $0x8,%rsp
  400c3a:	5b                   	pop    %rbx
  400c3b:	5d                   	pop    %rbp
  400c3c:	41 5c                	pop    %r12
  400c3e:	41 5d                	pop    %r13
  400c40:	41 5e                	pop    %r14
  400c42:	41 5f                	pop    %r15
  400c44:	c3                   	retq   
  400c45:	90                   	nop
  400c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c4d:	00 00 00 

0000000000400c50 <__libc_csu_fini>:
  400c50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c54 <_fini>:
  400c54:	48 83 ec 08          	sub    $0x8,%rsp
  400c58:	48 83 c4 08          	add    $0x8,%rsp
  400c5c:	c3                   	retq   
