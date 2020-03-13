
input/18050031022_2.elf:     file format elf64-x86-64


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

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <printf@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <_IO_putc@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <_IO_putc@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <malloc@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <__isoc99_scanf@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <exit@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <exit@GLIBC_2.2.5>
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
  40060f:	49 c7 c0 50 0c 40 00 	mov    $0x400c50,%r8
  400616:	48 c7 c1 e0 0b 40 00 	mov    $0x400be0,%rcx
  40061d:	48 c7 c7 10 09 40 00 	mov    $0x400910,%rdi
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
  4006f3:	74 27                	je     40071c <insert+0x2c>
  4006f5:	48 8b 0e             	mov    (%rsi),%rcx
  4006f8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006fb:	7e 23                	jle    400720 <insert+0x30>
  4006fd:	48 89 f8             	mov    %rdi,%rax
  400700:	48 89 c2             	mov    %rax,%rdx
  400703:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400707:	48 85 c0             	test   %rax,%rax
  40070a:	74 29                	je     400735 <insert+0x45>
  40070c:	48 3b 08             	cmp    (%rax),%rcx
  40070f:	7f ef                	jg     400700 <insert+0x10>
  400711:	48 39 f8             	cmp    %rdi,%rax
  400714:	74 0d                	je     400723 <insert+0x33>
  400716:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40071a:	eb 0a                	jmp    400726 <insert+0x36>
  40071c:	31 c0                	xor    %eax,%eax
  40071e:	eb 03                	jmp    400723 <insert+0x33>
  400720:	48 89 f8             	mov    %rdi,%rax
  400723:	48 89 f7             	mov    %rsi,%rdi
  400726:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40072a:	83 05 3b 19 20 00 01 	addl   $0x1,0x20193b(%rip)        # 60206c <n>
  400731:	48 89 f8             	mov    %rdi,%rax
  400734:	c3                   	retq   
  400735:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400739:	31 c0                	xor    %eax,%eax
  40073b:	eb e9                	jmp    400726 <insert+0x36>
  40073d:	0f 1f 00             	nopl   (%rax)

0000000000400740 <create>:
  400740:	41 56                	push   %r14
  400742:	53                   	push   %rbx
  400743:	50                   	push   %rax
  400744:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400749:	e8 52 fe ff ff       	callq  4005a0 <puts@plt>
  40074e:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  400753:	e8 48 fe ff ff       	callq  4005a0 <puts@plt>
  400758:	bf 18 00 00 00       	mov    $0x18,%edi
  40075d:	e8 6e fe ff ff       	callq  4005d0 <malloc@plt>
  400762:	48 89 c3             	mov    %rax,%rbx
  400765:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400769:	45 31 f6             	xor    %r14d,%r14d
  40076c:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  400771:	31 c0                	xor    %eax,%eax
  400773:	48 89 de             	mov    %rbx,%rsi
  400776:	e8 65 fe ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  40077b:	48 8b 03             	mov    (%rbx),%rax
  40077e:	48 85 c0             	test   %rax,%rax
  400781:	0f 84 90 00 00 00    	je     400817 <create+0xd7>
  400787:	45 31 f6             	xor    %r14d,%r14d
  40078a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400790:	4d 85 f6             	test   %r14,%r14
  400793:	74 2b                	je     4007c0 <create+0x80>
  400795:	4c 89 f1             	mov    %r14,%rcx
  400798:	49 3b 06             	cmp    (%r14),%rax
  40079b:	7e 33                	jle    4007d0 <create+0x90>
  40079d:	0f 1f 00             	nopl   (%rax)
  4007a0:	48 89 ca             	mov    %rcx,%rdx
  4007a3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4007a7:	48 85 c9             	test   %rcx,%rcx
  4007aa:	74 2c                	je     4007d8 <create+0x98>
  4007ac:	48 3b 01             	cmp    (%rcx),%rax
  4007af:	7f ef                	jg     4007a0 <create+0x60>
  4007b1:	4c 39 f1             	cmp    %r14,%rcx
  4007b4:	74 1a                	je     4007d0 <create+0x90>
  4007b6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007ba:	eb 24                	jmp    4007e0 <create+0xa0>
  4007bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4007c0:	31 c9                	xor    %ecx,%ecx
  4007c2:	49 89 de             	mov    %rbx,%r14
  4007c5:	eb 19                	jmp    4007e0 <create+0xa0>
  4007c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ce:	00 00 
  4007d0:	4c 89 f1             	mov    %r14,%rcx
  4007d3:	49 89 de             	mov    %rbx,%r14
  4007d6:	eb 08                	jmp    4007e0 <create+0xa0>
  4007d8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007dc:	31 c9                	xor    %ecx,%ecx
  4007de:	66 90                	xchg   %ax,%ax
  4007e0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007e4:	83 05 81 18 20 00 01 	addl   $0x1,0x201881(%rip)        # 60206c <n>
  4007eb:	bf 18 00 00 00       	mov    $0x18,%edi
  4007f0:	e8 db fd ff ff       	callq  4005d0 <malloc@plt>
  4007f5:	48 89 c3             	mov    %rax,%rbx
  4007f8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007fc:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  400801:	31 c0                	xor    %eax,%eax
  400803:	48 89 de             	mov    %rbx,%rsi
  400806:	e8 d5 fd ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  40080b:	48 8b 03             	mov    (%rbx),%rax
  40080e:	48 85 c0             	test   %rax,%rax
  400811:	0f 85 79 ff ff ff    	jne    400790 <create+0x50>
  400817:	48 89 df             	mov    %rbx,%rdi
  40081a:	e8 71 fd ff ff       	callq  400590 <free@plt>
  40081f:	4c 89 f0             	mov    %r14,%rax
  400822:	48 83 c4 08          	add    $0x8,%rsp
  400826:	5b                   	pop    %rbx
  400827:	41 5e                	pop    %r14
  400829:	c3                   	retq   
  40082a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400830 <del>:
  400830:	53                   	push   %rbx
  400831:	48 89 fb             	mov    %rdi,%rbx
  400834:	48 85 db             	test   %rbx,%rbx
  400837:	74 42                	je     40087b <del+0x4b>
  400839:	48 8b 03             	mov    (%rbx),%rax
  40083c:	48 39 f0             	cmp    %rsi,%rax
  40083f:	7d 48                	jge    400889 <del+0x59>
  400841:	48 89 df             	mov    %rbx,%rdi
  400844:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40084b:	00 00 00 00 00 
  400850:	48 89 f9             	mov    %rdi,%rcx
  400853:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400857:	48 85 ff             	test   %rdi,%rdi
  40085a:	74 41                	je     40089d <del+0x6d>
  40085c:	48 8b 07             	mov    (%rdi),%rax
  40085f:	48 89 ca             	mov    %rcx,%rdx
  400862:	48 39 f0             	cmp    %rsi,%rax
  400865:	7c e9                	jl     400850 <del+0x20>
  400867:	48 39 f0             	cmp    %rsi,%rax
  40086a:	75 25                	jne    400891 <del+0x61>
  40086c:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400870:	48 39 df             	cmp    %rbx,%rdi
  400873:	74 35                	je     4008aa <del+0x7a>
  400875:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400879:	eb 32                	jmp    4008ad <del+0x7d>
  40087b:	bf a7 0c 40 00       	mov    $0x400ca7,%edi
  400880:	e8 1b fd ff ff       	callq  4005a0 <puts@plt>
  400885:	31 db                	xor    %ebx,%ebx
  400887:	eb 30                	jmp    4008b9 <del+0x89>
  400889:	48 89 df             	mov    %rbx,%rdi
  40088c:	48 39 f0             	cmp    %rsi,%rax
  40088f:	74 db                	je     40086c <del+0x3c>
  400891:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400896:	e8 05 fd ff ff       	callq  4005a0 <puts@plt>
  40089b:	eb 1c                	jmp    4008b9 <del+0x89>
  40089d:	48 89 cf             	mov    %rcx,%rdi
  4008a0:	48 89 d1             	mov    %rdx,%rcx
  4008a3:	48 39 f0             	cmp    %rsi,%rax
  4008a6:	74 c4                	je     40086c <del+0x3c>
  4008a8:	eb e7                	jmp    400891 <del+0x61>
  4008aa:	48 89 c3             	mov    %rax,%rbx
  4008ad:	e8 de fc ff ff       	callq  400590 <free@plt>
  4008b2:	83 05 b3 17 20 00 ff 	addl   $0xffffffff,0x2017b3(%rip)        # 60206c <n>
  4008b9:	48 89 d8             	mov    %rbx,%rax
  4008bc:	5b                   	pop    %rbx
  4008bd:	c3                   	retq   
  4008be:	66 90                	xchg   %ax,%ax

00000000004008c0 <print>:
  4008c0:	53                   	push   %rbx
  4008c1:	48 89 fb             	mov    %rdi,%rbx
  4008c4:	48 85 db             	test   %rbx,%rbx
  4008c7:	74 2a                	je     4008f3 <print+0x33>
  4008c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008d0:	48 8b 33             	mov    (%rbx),%rsi
  4008d3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008d8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008dc:	bf 6b 0c 40 00       	mov    $0x400c6b,%edi
  4008e1:	b0 01                	mov    $0x1,%al
  4008e3:	e8 c8 fc ff ff       	callq  4005b0 <printf@plt>
  4008e8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008ec:	48 85 db             	test   %rbx,%rbx
  4008ef:	75 df                	jne    4008d0 <print+0x10>
  4008f1:	eb 0a                	jmp    4008fd <print+0x3d>
  4008f3:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  4008f8:	e8 a3 fc ff ff       	callq  4005a0 <puts@plt>
  4008fd:	48 8b 35 5c 17 20 00 	mov    0x20175c(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400904:	bf 0a 00 00 00       	mov    $0xa,%edi
  400909:	5b                   	pop    %rbx
  40090a:	e9 b1 fc ff ff       	jmpq   4005c0 <_IO_putc@plt>
  40090f:	90                   	nop

0000000000400910 <main>:
  400910:	41 57                	push   %r15
  400912:	41 56                	push   %r14
  400914:	41 54                	push   %r12
  400916:	53                   	push   %rbx
  400917:	48 83 ec 18          	sub    $0x18,%rsp
  40091b:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  400920:	e8 7b fc ff ff       	callq  4005a0 <puts@plt>
  400925:	e8 16 fe ff ff       	callq  400740 <create>
  40092a:	49 89 c4             	mov    %rax,%r12
  40092d:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  400932:	e8 69 fc ff ff       	callq  4005a0 <puts@plt>
  400937:	4d 85 e4             	test   %r12,%r12
  40093a:	74 27                	je     400963 <main+0x53>
  40093c:	4c 89 e3             	mov    %r12,%rbx
  40093f:	90                   	nop
  400940:	48 8b 33             	mov    (%rbx),%rsi
  400943:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400948:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40094c:	bf 6b 0c 40 00       	mov    $0x400c6b,%edi
  400951:	b0 01                	mov    $0x1,%al
  400953:	e8 58 fc ff ff       	callq  4005b0 <printf@plt>
  400958:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40095c:	48 85 db             	test   %rbx,%rbx
  40095f:	75 df                	jne    400940 <main+0x30>
  400961:	eb 0a                	jmp    40096d <main+0x5d>
  400963:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400968:	e8 33 fc ff ff       	callq  4005a0 <puts@plt>
  40096d:	48 8b 35 ec 16 20 00 	mov    0x2016ec(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400974:	bf 0a 00 00 00       	mov    $0xa,%edi
  400979:	e8 42 fc ff ff       	callq  4005c0 <_IO_putc@plt>
  40097e:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400983:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400988:	eb 17                	jmp    4009a1 <main+0x91>
  40098a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400990:	48 8b 35 c9 16 20 00 	mov    0x2016c9(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400997:	bf 0a 00 00 00       	mov    $0xa,%edi
  40099c:	e8 1f fc ff ff       	callq  4005c0 <_IO_putc@plt>
  4009a1:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  4009a6:	e8 f5 fb ff ff       	callq  4005a0 <puts@plt>
  4009ab:	bf 75 0c 40 00       	mov    $0x400c75,%edi
  4009b0:	31 c0                	xor    %eax,%eax
  4009b2:	e8 f9 fb ff ff       	callq  4005b0 <printf@plt>
  4009b7:	bf 85 0c 40 00       	mov    $0x400c85,%edi
  4009bc:	31 c0                	xor    %eax,%eax
  4009be:	4c 89 f6             	mov    %r14,%rsi
  4009c1:	e8 1a fc ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  4009c6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4009ca:	83 f8 01             	cmp    $0x1,%eax
  4009cd:	0f 84 9d 00 00 00    	je     400a70 <main+0x160>
  4009d3:	83 f8 02             	cmp    $0x2,%eax
  4009d6:	74 18                	je     4009f0 <main+0xe0>
  4009d8:	85 c0                	test   %eax,%eax
  4009da:	75 c5                	jne    4009a1 <main+0x91>
  4009dc:	e9 ee 01 00 00       	jmpq   400bcf <main+0x2bf>
  4009e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009e8:	0f 1f 84 00 00 00 00 
  4009ef:	00 
  4009f0:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  4009f5:	e8 a6 fb ff ff       	callq  4005a0 <puts@plt>
  4009fa:	bf a3 0c 40 00       	mov    $0x400ca3,%edi
  4009ff:	31 c0                	xor    %eax,%eax
  400a01:	4c 89 fe             	mov    %r15,%rsi
  400a04:	e8 d7 fb ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400a09:	4d 85 e4             	test   %r12,%r12
  400a0c:	0f 84 9a 00 00 00    	je     400aac <main+0x19c>
  400a12:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400a17:	49 8b 0c 24          	mov    (%r12),%rcx
  400a1b:	48 39 c1             	cmp    %rax,%rcx
  400a1e:	0f 8d a9 00 00 00    	jge    400acd <main+0x1bd>
  400a24:	4c 89 e7             	mov    %r12,%rdi
  400a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a2e:	00 00 
  400a30:	48 89 fa             	mov    %rdi,%rdx
  400a33:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	0f 84 a8 00 00 00    	je     400ae8 <main+0x1d8>
  400a40:	48 8b 0f             	mov    (%rdi),%rcx
  400a43:	48 89 d6             	mov    %rdx,%rsi
  400a46:	48 39 c1             	cmp    %rax,%rcx
  400a49:	7c e5                	jl     400a30 <main+0x120>
  400a4b:	48 39 c1             	cmp    %rax,%rcx
  400a4e:	0f 85 85 00 00 00    	jne    400ad9 <main+0x1c9>
  400a54:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a58:	4c 39 e7             	cmp    %r12,%rdi
  400a5b:	0f 84 f5 00 00 00    	je     400b56 <main+0x246>
  400a61:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400a65:	e9 ef 00 00 00       	jmpq   400b59 <main+0x249>
  400a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a70:	e8 cb fc ff ff       	callq  400740 <create>
  400a75:	4d 85 e4             	test   %r12,%r12
  400a78:	74 44                	je     400abe <main+0x1ae>
  400a7a:	48 8b 30             	mov    (%rax),%rsi
  400a7d:	4c 89 e1             	mov    %r12,%rcx
  400a80:	49 3b 34 24          	cmp    (%r12),%rsi
  400a84:	7e 3f                	jle    400ac5 <main+0x1b5>
  400a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a8d:	00 00 00 
  400a90:	48 89 ca             	mov    %rcx,%rdx
  400a93:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400a97:	48 85 c9             	test   %rcx,%rcx
  400a9a:	74 5d                	je     400af9 <main+0x1e9>
  400a9c:	48 3b 31             	cmp    (%rcx),%rsi
  400a9f:	7f ef                	jg     400a90 <main+0x180>
  400aa1:	4c 39 e1             	cmp    %r12,%rcx
  400aa4:	74 1f                	je     400ac5 <main+0x1b5>
  400aa6:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400aaa:	eb 54                	jmp    400b00 <main+0x1f0>
  400aac:	bf a7 0c 40 00       	mov    $0x400ca7,%edi
  400ab1:	e8 ea fa ff ff       	callq  4005a0 <puts@plt>
  400ab6:	45 31 e4             	xor    %r12d,%r12d
  400ab9:	e9 a7 00 00 00       	jmpq   400b65 <main+0x255>
  400abe:	31 c9                	xor    %ecx,%ecx
  400ac0:	49 89 c4             	mov    %rax,%r12
  400ac3:	eb 3b                	jmp    400b00 <main+0x1f0>
  400ac5:	4c 89 e1             	mov    %r12,%rcx
  400ac8:	49 89 c4             	mov    %rax,%r12
  400acb:	eb 33                	jmp    400b00 <main+0x1f0>
  400acd:	4c 89 e7             	mov    %r12,%rdi
  400ad0:	48 39 c1             	cmp    %rax,%rcx
  400ad3:	0f 84 7b ff ff ff    	je     400a54 <main+0x144>
  400ad9:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  400ade:	e8 bd fa ff ff       	callq  4005a0 <puts@plt>
  400ae3:	e9 7d 00 00 00       	jmpq   400b65 <main+0x255>
  400ae8:	48 89 d7             	mov    %rdx,%rdi
  400aeb:	48 89 f2             	mov    %rsi,%rdx
  400aee:	48 39 c1             	cmp    %rax,%rcx
  400af1:	0f 84 5d ff ff ff    	je     400a54 <main+0x144>
  400af7:	eb e0                	jmp    400ad9 <main+0x1c9>
  400af9:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400afd:	31 c9                	xor    %ecx,%ecx
  400aff:	90                   	nop
  400b00:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400b04:	8b 35 62 15 20 00    	mov    0x201562(%rip),%esi        # 60206c <n>
  400b0a:	8d 46 01             	lea    0x1(%rsi),%eax
  400b0d:	89 05 59 15 20 00    	mov    %eax,0x201559(%rip)        # 60206c <n>
  400b13:	bf 88 0c 40 00       	mov    $0x400c88,%edi
  400b18:	31 c0                	xor    %eax,%eax
  400b1a:	e8 91 fa ff ff       	callq  4005b0 <printf@plt>
  400b1f:	4d 85 e4             	test   %r12,%r12
  400b22:	0f 84 98 00 00 00    	je     400bc0 <main+0x2b0>
  400b28:	4c 89 e3             	mov    %r12,%rbx
  400b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b30:	48 8b 33             	mov    (%rbx),%rsi
  400b33:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b38:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b3c:	bf 6b 0c 40 00       	mov    $0x400c6b,%edi
  400b41:	b0 01                	mov    $0x1,%al
  400b43:	e8 68 fa ff ff       	callq  4005b0 <printf@plt>
  400b48:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b4c:	48 85 db             	test   %rbx,%rbx
  400b4f:	75 df                	jne    400b30 <main+0x220>
  400b51:	e9 3a fe ff ff       	jmpq   400990 <main+0x80>
  400b56:	49 89 c4             	mov    %rax,%r12
  400b59:	e8 32 fa ff ff       	callq  400590 <free@plt>
  400b5e:	83 05 07 15 20 00 ff 	addl   $0xffffffff,0x201507(%rip)        # 60206c <n>
  400b65:	8b 35 01 15 20 00    	mov    0x201501(%rip),%esi        # 60206c <n>
  400b6b:	83 c6 ff             	add    $0xffffffff,%esi
  400b6e:	bf 88 0c 40 00       	mov    $0x400c88,%edi
  400b73:	31 c0                	xor    %eax,%eax
  400b75:	e8 36 fa ff ff       	callq  4005b0 <printf@plt>
  400b7a:	4d 85 e4             	test   %r12,%r12
  400b7d:	74 41                	je     400bc0 <main+0x2b0>
  400b7f:	4c 89 e3             	mov    %r12,%rbx
  400b82:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b89:	1f 84 00 00 00 00 00 
  400b90:	48 8b 33             	mov    (%rbx),%rsi
  400b93:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b98:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b9c:	bf 6b 0c 40 00       	mov    $0x400c6b,%edi
  400ba1:	b0 01                	mov    $0x1,%al
  400ba3:	e8 08 fa ff ff       	callq  4005b0 <printf@plt>
  400ba8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bac:	48 85 db             	test   %rbx,%rbx
  400baf:	75 df                	jne    400b90 <main+0x280>
  400bb1:	e9 da fd ff ff       	jmpq   400990 <main+0x80>
  400bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bbd:	00 00 00 
  400bc0:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400bc5:	e8 d6 f9 ff ff       	callq  4005a0 <puts@plt>
  400bca:	e9 c1 fd ff ff       	jmpq   400990 <main+0x80>
  400bcf:	31 ff                	xor    %edi,%edi
  400bd1:	e8 1a fa ff ff       	callq  4005f0 <exit@plt>
  400bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bdd:	00 00 00 

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
  400c0c:	e8 57 f9 ff ff       	callq  400568 <_init>
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
