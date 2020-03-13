
input/19020031102_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400588 <_init>:
  400588:	48 83 ec 08          	sub    $0x8,%rsp
  40058c:	48 8b 05 65 1a 20 00 	mov    0x201a65(%rip),%rax        # 601ff8 <__gmon_start__>
  400593:	48 85 c0             	test   %rax,%rax
  400596:	74 02                	je     40059a <_init+0x12>
  400598:	ff d0                	callq  *%rax
  40059a:	48 83 c4 08          	add    $0x8,%rsp
  40059e:	c3                   	retq   

Disassembly of section .plt:

00000000004005a0 <.plt>:
  4005a0:	ff 35 62 1a 20 00    	pushq  0x201a62(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005a6:	ff 25 64 1a 20 00    	jmpq   *0x201a64(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <free@plt>:
  4005b0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602018 <free@GLIBC_2.2.5>
  4005b6:	68 00 00 00 00       	pushq  $0x0
  4005bb:	e9 e0 ff ff ff       	jmpq   4005a0 <.plt>

00000000004005c0 <puts@plt>:
  4005c0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005c6:	68 01 00 00 00       	pushq  $0x1
  4005cb:	e9 d0 ff ff ff       	jmpq   4005a0 <.plt>

00000000004005d0 <system@plt>:
  4005d0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602028 <system@GLIBC_2.2.5>
  4005d6:	68 02 00 00 00       	pushq  $0x2
  4005db:	e9 c0 ff ff ff       	jmpq   4005a0 <.plt>

00000000004005e0 <printf@plt>:
  4005e0:	ff 25 4a 1a 20 00    	jmpq   *0x201a4a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005e6:	68 03 00 00 00       	pushq  $0x3
  4005eb:	e9 b0 ff ff ff       	jmpq   4005a0 <.plt>

00000000004005f0 <malloc@plt>:
  4005f0:	ff 25 42 1a 20 00    	jmpq   *0x201a42(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  4005f6:	68 04 00 00 00       	pushq  $0x4
  4005fb:	e9 a0 ff ff ff       	jmpq   4005a0 <.plt>

0000000000400600 <_IO_getc@plt>:
  400600:	ff 25 3a 1a 20 00    	jmpq   *0x201a3a(%rip)        # 602040 <_IO_getc@GLIBC_2.2.5>
  400606:	68 05 00 00 00       	pushq  $0x5
  40060b:	e9 90 ff ff ff       	jmpq   4005a0 <.plt>

0000000000400610 <__isoc99_scanf@plt>:
  400610:	ff 25 32 1a 20 00    	jmpq   *0x201a32(%rip)        # 602048 <__isoc99_scanf@GLIBC_2.7>
  400616:	68 06 00 00 00       	pushq  $0x6
  40061b:	e9 80 ff ff ff       	jmpq   4005a0 <.plt>

Disassembly of section .text:

0000000000400620 <_start>:
  400620:	31 ed                	xor    %ebp,%ebp
  400622:	49 89 d1             	mov    %rdx,%r9
  400625:	5e                   	pop    %rsi
  400626:	48 89 e2             	mov    %rsp,%rdx
  400629:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40062d:	50                   	push   %rax
  40062e:	54                   	push   %rsp
  40062f:	49 c7 c0 50 0d 40 00 	mov    $0x400d50,%r8
  400636:	48 c7 c1 e0 0c 40 00 	mov    $0x400ce0,%rcx
  40063d:	48 c7 c7 20 09 40 00 	mov    $0x400920,%rdi
  400644:	ff 15 a6 19 20 00    	callq  *0x2019a6(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40064a:	f4                   	hlt    
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400650 <_dl_relocate_static_pie>:
  400650:	f3 c3                	repz retq 
  400652:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400659:	00 00 00 
  40065c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400660 <deregister_tm_clones>:
  400660:	55                   	push   %rbp
  400661:	b8 60 20 60 00       	mov    $0x602060,%eax
  400666:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40066c:	48 89 e5             	mov    %rsp,%rbp
  40066f:	74 17                	je     400688 <deregister_tm_clones+0x28>
  400671:	b8 00 00 00 00       	mov    $0x0,%eax
  400676:	48 85 c0             	test   %rax,%rax
  400679:	74 0d                	je     400688 <deregister_tm_clones+0x28>
  40067b:	5d                   	pop    %rbp
  40067c:	bf 60 20 60 00       	mov    $0x602060,%edi
  400681:	ff e0                	jmpq   *%rax
  400683:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400688:	5d                   	pop    %rbp
  400689:	c3                   	retq   
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <register_tm_clones>:
  400690:	be 60 20 60 00       	mov    $0x602060,%esi
  400695:	55                   	push   %rbp
  400696:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
  40069d:	48 89 e5             	mov    %rsp,%rbp
  4006a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4006a4:	48 89 f0             	mov    %rsi,%rax
  4006a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006ab:	48 01 c6             	add    %rax,%rsi
  4006ae:	48 d1 fe             	sar    %rsi
  4006b1:	74 15                	je     4006c8 <register_tm_clones+0x38>
  4006b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006b8:	48 85 c0             	test   %rax,%rax
  4006bb:	74 0b                	je     4006c8 <register_tm_clones+0x38>
  4006bd:	5d                   	pop    %rbp
  4006be:	bf 60 20 60 00       	mov    $0x602060,%edi
  4006c3:	ff e0                	jmpq   *%rax
  4006c5:	0f 1f 00             	nopl   (%rax)
  4006c8:	5d                   	pop    %rbp
  4006c9:	c3                   	retq   
  4006ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d 91 19 20 00 00 	cmpb   $0x0,0x201991(%rip)        # 602068 <completed.7698>
  4006d7:	75 17                	jne    4006f0 <__do_global_dtors_aux+0x20>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	callq  400660 <deregister_tm_clones>
  4006e2:	c6 05 7f 19 20 00 01 	movb   $0x1,0x20197f(%rip)        # 602068 <completed.7698>
  4006e9:	5d                   	pop    %rbp
  4006ea:	c3                   	retq   
  4006eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006f0:	f3 c3                	repz retq 
  4006f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006fd:	00 00 00 

0000000000400700 <frame_dummy>:
  400700:	55                   	push   %rbp
  400701:	48 89 e5             	mov    %rsp,%rbp
  400704:	5d                   	pop    %rbp
  400705:	eb 89                	jmp    400690 <register_tm_clones>
  400707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40070e:	00 00 

0000000000400710 <creat>:
  400710:	41 57                	push   %r15
  400712:	41 56                	push   %r14
  400714:	53                   	push   %rbx
  400715:	c7 05 4d 19 20 00 00 	movl   $0x0,0x20194d(%rip)        # 60206c <n>
  40071c:	00 00 00 
  40071f:	bf 18 00 00 00       	mov    $0x18,%edi
  400724:	e8 c7 fe ff ff       	callq  4005f0 <malloc@plt>
  400729:	49 89 c7             	mov    %rax,%r15
  40072c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400730:	45 31 f6             	xor    %r14d,%r14d
  400733:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  400738:	31 c0                	xor    %eax,%eax
  40073a:	4c 89 fe             	mov    %r15,%rsi
  40073d:	e8 ce fe ff ff       	callq  400610 <__isoc99_scanf@plt>
  400742:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400746:	74 54                	je     40079c <creat+0x8c>
  400748:	4c 89 f8             	mov    %r15,%rax
  40074b:	4c 89 fb             	mov    %r15,%rbx
  40074e:	31 c9                	xor    %ecx,%ecx
  400750:	49 89 df             	mov    %rbx,%r15
  400753:	8b 15 13 19 20 00    	mov    0x201913(%rip),%edx        # 60206c <n>
  400759:	8d 72 01             	lea    0x1(%rdx),%esi
  40075c:	89 35 0a 19 20 00    	mov    %esi,0x20190a(%rip)        # 60206c <n>
  400762:	4d 89 fe             	mov    %r15,%r14
  400765:	85 d2                	test   %edx,%edx
  400767:	74 07                	je     400770 <creat+0x60>
  400769:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40076d:	49 89 ce             	mov    %rcx,%r14
  400770:	bf 18 00 00 00       	mov    $0x18,%edi
  400775:	e8 76 fe ff ff       	callq  4005f0 <malloc@plt>
  40077a:	48 89 c3             	mov    %rax,%rbx
  40077d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400781:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  400786:	31 c0                	xor    %eax,%eax
  400788:	48 89 de             	mov    %rbx,%rsi
  40078b:	e8 80 fe ff ff       	callq  400610 <__isoc99_scanf@plt>
  400790:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400794:	4c 89 f8             	mov    %r15,%rax
  400797:	4c 89 f1             	mov    %r14,%rcx
  40079a:	75 b4                	jne    400750 <creat+0x40>
  40079c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4007a3:	00 
  4007a4:	4c 89 f0             	mov    %r14,%rax
  4007a7:	5b                   	pop    %rbx
  4007a8:	41 5e                	pop    %r14
  4007aa:	41 5f                	pop    %r15
  4007ac:	c3                   	retq   
  4007ad:	0f 1f 00             	nopl   (%rax)

00000000004007b0 <insert>:
  4007b0:	48 85 ff             	test   %rdi,%rdi
  4007b3:	74 42                	je     4007f7 <insert+0x47>
  4007b5:	4c 8d 4f 10          	lea    0x10(%rdi),%r9
  4007b9:	48 8b 57 10          	mov    0x10(%rdi),%rdx
  4007bd:	48 85 d2             	test   %rdx,%rdx
  4007c0:	74 30                	je     4007f2 <insert+0x42>
  4007c2:	4c 8b 06             	mov    (%rsi),%r8
  4007c5:	45 31 d2             	xor    %r10d,%r10d
  4007c8:	48 89 f8             	mov    %rdi,%rax
  4007cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007d0:	48 89 c1             	mov    %rax,%rcx
  4007d3:	48 89 d0             	mov    %rdx,%rax
  4007d6:	4c 39 01             	cmp    %r8,(%rcx)
  4007d9:	7f 29                	jg     400804 <insert+0x54>
  4007db:	4c 8d 48 10          	lea    0x10(%rax),%r9
  4007df:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4007e3:	49 89 ca             	mov    %rcx,%r10
  4007e6:	48 85 d2             	test   %rdx,%rdx
  4007e9:	75 e5                	jne    4007d0 <insert+0x20>
  4007eb:	b2 01                	mov    $0x1,%dl
  4007ed:	48 39 f8             	cmp    %rdi,%rax
  4007f0:	75 1f                	jne    400811 <insert+0x61>
  4007f2:	49 89 39             	mov    %rdi,(%r9)
  4007f5:	eb 3b                	jmp    400832 <insert+0x82>
  4007f7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4007fe:	00 
  4007ff:	48 89 f7             	mov    %rsi,%rdi
  400802:	eb 2e                	jmp    400832 <insert+0x82>
  400804:	31 d2                	xor    %edx,%edx
  400806:	48 89 c8             	mov    %rcx,%rax
  400809:	4c 89 d1             	mov    %r10,%rcx
  40080c:	48 39 f8             	cmp    %rdi,%rax
  40080f:	74 e1                	je     4007f2 <insert+0x42>
  400811:	84 d2                	test   %dl,%dl
  400813:	74 08                	je     40081d <insert+0x6d>
  400815:	48 8b 10             	mov    (%rax),%rdx
  400818:	48 3b 16             	cmp    (%rsi),%rdx
  40081b:	7e 0a                	jle    400827 <insert+0x77>
  40081d:	48 89 71 10          	mov    %rsi,0x10(%rcx)
  400821:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400825:	eb 0b                	jmp    400832 <insert+0x82>
  400827:	49 89 31             	mov    %rsi,(%r9)
  40082a:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  400831:	00 
  400832:	83 05 33 18 20 00 01 	addl   $0x1,0x201833(%rip)        # 60206c <n>
  400839:	48 89 f8             	mov    %rdi,%rax
  40083c:	c3                   	retq   
  40083d:	0f 1f 00             	nopl   (%rax)

0000000000400840 <dell>:
  400840:	41 56                	push   %r14
  400842:	53                   	push   %rbx
  400843:	50                   	push   %rax
  400844:	49 89 fe             	mov    %rdi,%r14
  400847:	4d 85 f6             	test   %r14,%r14
  40084a:	74 0e                	je     40085a <dell+0x1a>
  40084c:	49 39 36             	cmp    %rsi,(%r14)
  40084f:	75 18                	jne    400869 <dell+0x29>
  400851:	4c 89 f3             	mov    %r14,%rbx
  400854:	4d 8b 76 10          	mov    0x10(%r14),%r14
  400858:	eb 45                	jmp    40089f <dell+0x5f>
  40085a:	bf df 0d 40 00       	mov    $0x400ddf,%edi
  40085f:	e8 5c fd ff ff       	callq  4005c0 <puts@plt>
  400864:	45 31 f6             	xor    %r14d,%r14d
  400867:	eb 51                	jmp    4008ba <dell+0x7a>
  400869:	4c 89 f3             	mov    %r14,%rbx
  40086c:	0f 1f 40 00          	nopl   0x0(%rax)
  400870:	48 89 d8             	mov    %rbx,%rax
  400873:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400877:	48 85 db             	test   %rbx,%rbx
  40087a:	74 14                	je     400890 <dell+0x50>
  40087c:	48 39 33             	cmp    %rsi,(%rbx)
  40087f:	75 ef                	jne    400870 <dell+0x30>
  400881:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  400885:	4c 39 f3             	cmp    %r14,%rbx
  400888:	74 12                	je     40089c <dell+0x5c>
  40088a:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40088e:	eb 0f                	jmp    40089f <dell+0x5f>
  400890:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400895:	e8 26 fd ff ff       	callq  4005c0 <puts@plt>
  40089a:	eb 1e                	jmp    4008ba <dell+0x7a>
  40089c:	49 89 ce             	mov    %rcx,%r14
  40089f:	bf 6b 0d 40 00       	mov    $0x400d6b,%edi
  4008a4:	31 c0                	xor    %eax,%eax
  4008a6:	e8 35 fd ff ff       	callq  4005e0 <printf@plt>
  4008ab:	83 05 ba 17 20 00 ff 	addl   $0xffffffff,0x2017ba(%rip)        # 60206c <n>
  4008b2:	48 89 df             	mov    %rbx,%rdi
  4008b5:	e8 f6 fc ff ff       	callq  4005b0 <free@plt>
  4008ba:	4c 89 f0             	mov    %r14,%rax
  4008bd:	48 83 c4 08          	add    $0x8,%rsp
  4008c1:	5b                   	pop    %rbx
  4008c2:	41 5e                	pop    %r14
  4008c4:	c3                   	retq   
  4008c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008cc:	00 00 00 00 

00000000004008d0 <print>:
  4008d0:	53                   	push   %rbx
  4008d1:	48 89 fb             	mov    %rdi,%rbx
  4008d4:	bf ec 0d 40 00       	mov    $0x400dec,%edi
  4008d9:	e8 e2 fc ff ff       	callq  4005c0 <puts@plt>
  4008de:	48 85 db             	test   %rbx,%rbx
  4008e1:	75 2b                	jne    40090e <print+0x3e>
  4008e3:	eb 31                	jmp    400916 <print+0x46>
  4008e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ec:	00 00 00 00 
  4008f0:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008f5:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008f9:	bf 79 0d 40 00       	mov    $0x400d79,%edi
  4008fe:	b0 01                	mov    $0x1,%al
  400900:	e8 db fc ff ff       	callq  4005e0 <printf@plt>
  400905:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400909:	48 85 db             	test   %rbx,%rbx
  40090c:	74 08                	je     400916 <print+0x46>
  40090e:	48 8b 33             	mov    (%rbx),%rsi
  400911:	48 85 f6             	test   %rsi,%rsi
  400914:	75 da                	jne    4008f0 <print+0x20>
  400916:	5b                   	pop    %rbx
  400917:	c3                   	retq   
  400918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40091f:	00 

0000000000400920 <main>:
  400920:	41 57                	push   %r15
  400922:	41 56                	push   %r14
  400924:	41 55                	push   %r13
  400926:	41 54                	push   %r12
  400928:	53                   	push   %rbx
  400929:	48 83 ec 10          	sub    $0x10,%rsp
  40092d:	bf 00 0e 40 00       	mov    $0x400e00,%edi
  400932:	e8 89 fc ff ff       	callq  4005c0 <puts@plt>
  400937:	bf 20 0e 40 00       	mov    $0x400e20,%edi
  40093c:	e8 7f fc ff ff       	callq  4005c0 <puts@plt>
  400941:	c7 05 21 17 20 00 00 	movl   $0x0,0x201721(%rip)        # 60206c <n>
  400948:	00 00 00 
  40094b:	bf 18 00 00 00       	mov    $0x18,%edi
  400950:	e8 9b fc ff ff       	callq  4005f0 <malloc@plt>
  400955:	49 89 c6             	mov    %rax,%r14
  400958:	49 8d 56 08          	lea    0x8(%r14),%rdx
  40095c:	45 31 e4             	xor    %r12d,%r12d
  40095f:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  400964:	31 c0                	xor    %eax,%eax
  400966:	4c 89 f6             	mov    %r14,%rsi
  400969:	e8 a2 fc ff ff       	callq  400610 <__isoc99_scanf@plt>
  40096e:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400972:	74 58                	je     4009cc <main+0xac>
  400974:	4c 89 f0             	mov    %r14,%rax
  400977:	4c 89 f3             	mov    %r14,%rbx
  40097a:	31 c9                	xor    %ecx,%ecx
  40097c:	0f 1f 40 00          	nopl   0x0(%rax)
  400980:	49 89 de             	mov    %rbx,%r14
  400983:	8b 15 e3 16 20 00    	mov    0x2016e3(%rip),%edx        # 60206c <n>
  400989:	8d 72 01             	lea    0x1(%rdx),%esi
  40098c:	89 35 da 16 20 00    	mov    %esi,0x2016da(%rip)        # 60206c <n>
  400992:	4d 89 f4             	mov    %r14,%r12
  400995:	85 d2                	test   %edx,%edx
  400997:	74 07                	je     4009a0 <main+0x80>
  400999:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40099d:	49 89 cc             	mov    %rcx,%r12
  4009a0:	bf 18 00 00 00       	mov    $0x18,%edi
  4009a5:	e8 46 fc ff ff       	callq  4005f0 <malloc@plt>
  4009aa:	48 89 c3             	mov    %rax,%rbx
  4009ad:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009b1:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  4009b6:	31 c0                	xor    %eax,%eax
  4009b8:	48 89 de             	mov    %rbx,%rsi
  4009bb:	e8 50 fc ff ff       	callq  400610 <__isoc99_scanf@plt>
  4009c0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4009c4:	4c 89 f0             	mov    %r14,%rax
  4009c7:	4c 89 e1             	mov    %r12,%rcx
  4009ca:	75 b4                	jne    400980 <main+0x60>
  4009cc:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  4009d3:	00 
  4009d4:	bf ec 0d 40 00       	mov    $0x400dec,%edi
  4009d9:	e8 e2 fb ff ff       	callq  4005c0 <puts@plt>
  4009de:	4d 85 e4             	test   %r12,%r12
  4009e1:	74 33                	je     400a16 <main+0xf6>
  4009e3:	4c 89 e3             	mov    %r12,%rbx
  4009e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009ed:	00 00 00 
  4009f0:	48 8b 33             	mov    (%rbx),%rsi
  4009f3:	48 85 f6             	test   %rsi,%rsi
  4009f6:	74 1e                	je     400a16 <main+0xf6>
  4009f8:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009fd:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a01:	bf 79 0d 40 00       	mov    $0x400d79,%edi
  400a06:	b0 01                	mov    $0x1,%al
  400a08:	e8 d3 fb ff ff       	callq  4005e0 <printf@plt>
  400a0d:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a11:	48 85 db             	test   %rbx,%rbx
  400a14:	75 da                	jne    4009f0 <main+0xd0>
  400a16:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400a1b:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400a20:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  400a25:	e8 96 fb ff ff       	callq  4005c0 <puts@plt>
  400a2a:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  400a31:	ff 
  400a32:	bf 88 0d 40 00       	mov    $0x400d88,%edi
  400a37:	31 c0                	xor    %eax,%eax
  400a39:	e8 a2 fb ff ff       	callq  4005e0 <printf@plt>
  400a3e:	48 8b 3d 1b 16 20 00 	mov    0x20161b(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400a45:	e8 b6 fb ff ff       	callq  400600 <_IO_getc@plt>
  400a4a:	bf 98 0d 40 00       	mov    $0x400d98,%edi
  400a4f:	31 c0                	xor    %eax,%eax
  400a51:	4c 89 fe             	mov    %r15,%rsi
  400a54:	e8 b7 fb ff ff       	callq  400610 <__isoc99_scanf@plt>
  400a59:	48 8b 3d 00 16 20 00 	mov    0x201600(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400a60:	e8 9b fb ff ff       	callq  400600 <_IO_getc@plt>
  400a65:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400a69:	83 f8 02             	cmp    $0x2,%eax
  400a6c:	0f 84 ae 00 00 00    	je     400b20 <main+0x200>
  400a72:	83 f8 01             	cmp    $0x1,%eax
  400a75:	0f 85 3c 02 00 00    	jne    400cb7 <main+0x397>
  400a7b:	bf 9b 0d 40 00       	mov    $0x400d9b,%edi
  400a80:	31 c0                	xor    %eax,%eax
  400a82:	e8 59 fb ff ff       	callq  4005e0 <printf@plt>
  400a87:	bf 18 00 00 00       	mov    $0x18,%edi
  400a8c:	e8 5f fb ff ff       	callq  4005f0 <malloc@plt>
  400a91:	49 89 c5             	mov    %rax,%r13
  400a94:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  400a99:	49 8d 55 08          	lea    0x8(%r13),%rdx
  400a9d:	31 c0                	xor    %eax,%eax
  400a9f:	4c 89 ee             	mov    %r13,%rsi
  400aa2:	e8 69 fb ff ff       	callq  400610 <__isoc99_scanf@plt>
  400aa7:	4d 85 e4             	test   %r12,%r12
  400aaa:	0f 84 db 00 00 00    	je     400b8b <main+0x26b>
  400ab0:	49 8d 44 24 10       	lea    0x10(%r12),%rax
  400ab5:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
  400aba:	48 85 ff             	test   %rdi,%rdi
  400abd:	0f 84 ff 00 00 00    	je     400bc2 <main+0x2a2>
  400ac3:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  400ac7:	31 db                	xor    %ebx,%ebx
  400ac9:	4c 89 e6             	mov    %r12,%rsi
  400acc:	0f 1f 40 00          	nopl   0x0(%rax)
  400ad0:	48 89 f2             	mov    %rsi,%rdx
  400ad3:	48 89 fe             	mov    %rdi,%rsi
  400ad6:	48 39 0a             	cmp    %rcx,(%rdx)
  400ad9:	0f 8f d2 00 00 00    	jg     400bb1 <main+0x291>
  400adf:	48 8d 46 10          	lea    0x10(%rsi),%rax
  400ae3:	48 8b 7e 10          	mov    0x10(%rsi),%rdi
  400ae7:	48 89 d3             	mov    %rdx,%rbx
  400aea:	48 85 ff             	test   %rdi,%rdi
  400aed:	75 e1                	jne    400ad0 <main+0x1b0>
  400aef:	40 b7 01             	mov    $0x1,%dil
  400af2:	4c 39 e6             	cmp    %r12,%rsi
  400af5:	0f 84 c7 00 00 00    	je     400bc2 <main+0x2a2>
  400afb:	40 84 ff             	test   %dil,%dil
  400afe:	74 09                	je     400b09 <main+0x1e9>
  400b00:	48 39 0e             	cmp    %rcx,(%rsi)
  400b03:	0f 8e 32 01 00 00    	jle    400c3b <main+0x31b>
  400b09:	4c 89 6a 10          	mov    %r13,0x10(%rdx)
  400b0d:	49 89 75 10          	mov    %rsi,0x10(%r13)
  400b11:	e9 af 00 00 00       	jmpq   400bc5 <main+0x2a5>
  400b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b1d:	00 00 00 
  400b20:	bf bd 0d 40 00       	mov    $0x400dbd,%edi
  400b25:	31 c0                	xor    %eax,%eax
  400b27:	e8 b4 fa ff ff       	callq  4005e0 <printf@plt>
  400b2c:	bf ca 0d 40 00       	mov    $0x400dca,%edi
  400b31:	31 c0                	xor    %eax,%eax
  400b33:	4c 89 f6             	mov    %r14,%rsi
  400b36:	e8 d5 fa ff ff       	callq  400610 <__isoc99_scanf@plt>
  400b3b:	4d 85 e4             	test   %r12,%r12
  400b3e:	74 58                	je     400b98 <main+0x278>
  400b40:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400b45:	49 39 34 24          	cmp    %rsi,(%r12)
  400b49:	4c 89 e3             	mov    %r12,%rbx
  400b4c:	75 12                	jne    400b60 <main+0x240>
  400b4e:	4c 89 e3             	mov    %r12,%rbx
  400b51:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400b56:	e9 f6 00 00 00       	jmpq   400c51 <main+0x331>
  400b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b60:	48 89 d8             	mov    %rbx,%rax
  400b63:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400b67:	48 85 db             	test   %rbx,%rbx
  400b6a:	0f 84 bf 00 00 00    	je     400c2f <main+0x30f>
  400b70:	48 39 33             	cmp    %rsi,(%rbx)
  400b73:	75 eb                	jne    400b60 <main+0x240>
  400b75:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  400b79:	4c 39 e3             	cmp    %r12,%rbx
  400b7c:	0f 84 c9 00 00 00    	je     400c4b <main+0x32b>
  400b82:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400b86:	e9 c6 00 00 00       	jmpq   400c51 <main+0x331>
  400b8b:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400b92:	00 
  400b93:	4d 89 ec             	mov    %r13,%r12
  400b96:	eb 2d                	jmp    400bc5 <main+0x2a5>
  400b98:	bf df 0d 40 00       	mov    $0x400ddf,%edi
  400b9d:	e8 1e fa ff ff       	callq  4005c0 <puts@plt>
  400ba2:	bf ec 0d 40 00       	mov    $0x400dec,%edi
  400ba7:	e8 14 fa ff ff       	callq  4005c0 <puts@plt>
  400bac:	e9 ff 00 00 00       	jmpq   400cb0 <main+0x390>
  400bb1:	31 ff                	xor    %edi,%edi
  400bb3:	48 89 d6             	mov    %rdx,%rsi
  400bb6:	48 89 da             	mov    %rbx,%rdx
  400bb9:	4c 39 e6             	cmp    %r12,%rsi
  400bbc:	0f 85 39 ff ff ff    	jne    400afb <main+0x1db>
  400bc2:	4c 89 20             	mov    %r12,(%rax)
  400bc5:	83 05 a0 14 20 00 01 	addl   $0x1,0x2014a0(%rip)        # 60206c <n>
  400bcc:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400bd0:	bf ae 0d 40 00       	mov    $0x400dae,%edi
  400bd5:	31 c0                	xor    %eax,%eax
  400bd7:	e8 04 fa ff ff       	callq  4005e0 <printf@plt>
  400bdc:	bf ec 0d 40 00       	mov    $0x400dec,%edi
  400be1:	e8 da f9 ff ff       	callq  4005c0 <puts@plt>
  400be6:	4d 85 e4             	test   %r12,%r12
  400be9:	0f 84 c1 00 00 00    	je     400cb0 <main+0x390>
  400bef:	4c 89 e3             	mov    %r12,%rbx
  400bf2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bf9:	1f 84 00 00 00 00 00 
  400c00:	48 8b 33             	mov    (%rbx),%rsi
  400c03:	48 85 f6             	test   %rsi,%rsi
  400c06:	0f 84 a7 00 00 00    	je     400cb3 <main+0x393>
  400c0c:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c11:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c15:	bf 79 0d 40 00       	mov    $0x400d79,%edi
  400c1a:	b0 01                	mov    $0x1,%al
  400c1c:	e8 bf f9 ff ff       	callq  4005e0 <printf@plt>
  400c21:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c25:	48 85 db             	test   %rbx,%rbx
  400c28:	75 d6                	jne    400c00 <main+0x2e0>
  400c2a:	e9 84 00 00 00       	jmpq   400cb3 <main+0x393>
  400c2f:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400c34:	e8 87 f9 ff ff       	callq  4005c0 <puts@plt>
  400c39:	eb 31                	jmp    400c6c <main+0x34c>
  400c3b:	4c 89 28             	mov    %r13,(%rax)
  400c3e:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400c45:	00 
  400c46:	e9 7a ff ff ff       	jmpq   400bc5 <main+0x2a5>
  400c4b:	4c 89 e3             	mov    %r12,%rbx
  400c4e:	49 89 cc             	mov    %rcx,%r12
  400c51:	bf 6b 0d 40 00       	mov    $0x400d6b,%edi
  400c56:	31 c0                	xor    %eax,%eax
  400c58:	e8 83 f9 ff ff       	callq  4005e0 <printf@plt>
  400c5d:	83 05 08 14 20 00 ff 	addl   $0xffffffff,0x201408(%rip)        # 60206c <n>
  400c64:	48 89 df             	mov    %rbx,%rdi
  400c67:	e8 44 f9 ff ff       	callq  4005b0 <free@plt>
  400c6c:	bf ec 0d 40 00       	mov    $0x400dec,%edi
  400c71:	e8 4a f9 ff ff       	callq  4005c0 <puts@plt>
  400c76:	4d 85 e4             	test   %r12,%r12
  400c79:	74 35                	je     400cb0 <main+0x390>
  400c7b:	4c 89 e3             	mov    %r12,%rbx
  400c7e:	66 90                	xchg   %ax,%ax
  400c80:	48 8b 33             	mov    (%rbx),%rsi
  400c83:	48 85 f6             	test   %rsi,%rsi
  400c86:	74 2b                	je     400cb3 <main+0x393>
  400c88:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c8d:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c91:	bf 79 0d 40 00       	mov    $0x400d79,%edi
  400c96:	b0 01                	mov    $0x1,%al
  400c98:	e8 43 f9 ff ff       	callq  4005e0 <printf@plt>
  400c9d:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400ca1:	48 85 db             	test   %rbx,%rbx
  400ca4:	75 da                	jne    400c80 <main+0x360>
  400ca6:	eb 0b                	jmp    400cb3 <main+0x393>
  400ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400caf:	00 
  400cb0:	45 31 e4             	xor    %r12d,%r12d
  400cb3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400cb7:	85 c0                	test   %eax,%eax
  400cb9:	0f 85 61 fd ff ff    	jne    400a20 <main+0x100>
  400cbf:	bf ce 0d 40 00       	mov    $0x400dce,%edi
  400cc4:	e8 07 f9 ff ff       	callq  4005d0 <system@plt>
  400cc9:	48 83 c4 10          	add    $0x10,%rsp
  400ccd:	5b                   	pop    %rbx
  400cce:	41 5c                	pop    %r12
  400cd0:	41 5d                	pop    %r13
  400cd2:	41 5e                	pop    %r14
  400cd4:	41 5f                	pop    %r15
  400cd6:	c3                   	retq   
  400cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400cde:	00 00 

0000000000400ce0 <__libc_csu_init>:
  400ce0:	41 57                	push   %r15
  400ce2:	41 56                	push   %r14
  400ce4:	49 89 d7             	mov    %rdx,%r15
  400ce7:	41 55                	push   %r13
  400ce9:	41 54                	push   %r12
  400ceb:	4c 8d 25 0e 11 20 00 	lea    0x20110e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400cf2:	55                   	push   %rbp
  400cf3:	48 8d 2d 0e 11 20 00 	lea    0x20110e(%rip),%rbp        # 601e08 <__init_array_end>
  400cfa:	53                   	push   %rbx
  400cfb:	41 89 fd             	mov    %edi,%r13d
  400cfe:	49 89 f6             	mov    %rsi,%r14
  400d01:	4c 29 e5             	sub    %r12,%rbp
  400d04:	48 83 ec 08          	sub    $0x8,%rsp
  400d08:	48 c1 fd 03          	sar    $0x3,%rbp
  400d0c:	e8 77 f8 ff ff       	callq  400588 <_init>
  400d11:	48 85 ed             	test   %rbp,%rbp
  400d14:	74 20                	je     400d36 <__libc_csu_init+0x56>
  400d16:	31 db                	xor    %ebx,%ebx
  400d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d1f:	00 
  400d20:	4c 89 fa             	mov    %r15,%rdx
  400d23:	4c 89 f6             	mov    %r14,%rsi
  400d26:	44 89 ef             	mov    %r13d,%edi
  400d29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d2d:	48 83 c3 01          	add    $0x1,%rbx
  400d31:	48 39 dd             	cmp    %rbx,%rbp
  400d34:	75 ea                	jne    400d20 <__libc_csu_init+0x40>
  400d36:	48 83 c4 08          	add    $0x8,%rsp
  400d3a:	5b                   	pop    %rbx
  400d3b:	5d                   	pop    %rbp
  400d3c:	41 5c                	pop    %r12
  400d3e:	41 5d                	pop    %r13
  400d40:	41 5e                	pop    %r14
  400d42:	41 5f                	pop    %r15
  400d44:	c3                   	retq   
  400d45:	90                   	nop
  400d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d4d:	00 00 00 

0000000000400d50 <__libc_csu_fini>:
  400d50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d54 <_fini>:
  400d54:	48 83 ec 08          	sub    $0x8,%rsp
  400d58:	48 83 c4 08          	add    $0x8,%rsp
  400d5c:	c3                   	retq   
