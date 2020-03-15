
c/19140002028_2.elf:     file format elf64-x86-64


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

00000000004005c0 <malloc@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <_IO_getc@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <_IO_getc@GLIBC_2.2.5>
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
  40060f:	49 c7 c0 60 0d 40 00 	mov    $0x400d60,%r8
  400616:	48 c7 c1 f0 0c 40 00 	mov    $0x400cf0,%rcx
  40061d:	48 c7 c7 90 09 40 00 	mov    $0x400990,%rdi
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

00000000004006f0 <create>:
  4006f0:	55                   	push   %rbp
  4006f1:	41 57                	push   %r15
  4006f3:	41 56                	push   %r14
  4006f5:	41 54                	push   %r12
  4006f7:	53                   	push   %rbx
  4006f8:	41 89 ff             	mov    %edi,%r15d
  4006fb:	bf 18 00 00 00       	mov    $0x18,%edi
  400700:	e8 bb fe ff ff       	callq  4005c0 <malloc@plt>
  400705:	49 89 c6             	mov    %rax,%r14
  400708:	4d 85 f6             	test   %r14,%r14
  40070b:	0f 84 95 00 00 00    	je     4007a6 <create+0xb6>
  400711:	bf 40 0e 40 00       	mov    $0x400e40,%edi
  400716:	e8 85 fe ff ff       	callq  4005a0 <puts@plt>
  40071b:	4c 89 f2             	mov    %r14,%rdx
  40071e:	48 83 c2 08          	add    $0x8,%rdx
  400722:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400727:	31 c0                	xor    %eax,%eax
  400729:	4c 89 f6             	mov    %r14,%rsi
  40072c:	e8 af fe ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400731:	4c 89 f3             	mov    %r14,%rbx
  400734:	41 83 ff 02          	cmp    $0x2,%r15d
  400738:	7c 58                	jl     400792 <create+0xa2>
  40073a:	bd 01 00 00 00       	mov    $0x1,%ebp
  40073f:	4d 89 f4             	mov    %r14,%r12
  400742:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400749:	1f 84 00 00 00 00 00 
  400750:	bf 18 00 00 00       	mov    $0x18,%edi
  400755:	e8 66 fe ff ff       	callq  4005c0 <malloc@plt>
  40075a:	48 89 c3             	mov    %rax,%rbx
  40075d:	48 85 db             	test   %rbx,%rbx
  400760:	74 44                	je     4007a6 <create+0xb6>
  400762:	bf 40 0e 40 00       	mov    $0x400e40,%edi
  400767:	e8 34 fe ff ff       	callq  4005a0 <puts@plt>
  40076c:	48 89 da             	mov    %rbx,%rdx
  40076f:	48 83 c2 08          	add    $0x8,%rdx
  400773:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400778:	31 c0                	xor    %eax,%eax
  40077a:	48 89 de             	mov    %rbx,%rsi
  40077d:	e8 5e fe ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400782:	49 89 5c 24 10       	mov    %rbx,0x10(%r12)
  400787:	83 c5 01             	add    $0x1,%ebp
  40078a:	49 89 dc             	mov    %rbx,%r12
  40078d:	44 39 fd             	cmp    %r15d,%ebp
  400790:	7c be                	jl     400750 <create+0x60>
  400792:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400799:	00 
  40079a:	4c 89 f0             	mov    %r14,%rax
  40079d:	5b                   	pop    %rbx
  40079e:	41 5c                	pop    %r12
  4007a0:	41 5e                	pop    %r14
  4007a2:	41 5f                	pop    %r15
  4007a4:	5d                   	pop    %rbp
  4007a5:	c3                   	retq   
  4007a6:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  4007ab:	e8 f0 fd ff ff       	callq  4005a0 <puts@plt>
  4007b0:	31 ff                	xor    %edi,%edi
  4007b2:	e8 39 fe ff ff       	callq  4005f0 <exit@plt>
  4007b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007be:	00 00 

00000000004007c0 <print>:
  4007c0:	53                   	push   %rbx
  4007c1:	48 89 fb             	mov    %rdi,%rbx
  4007c4:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  4007c9:	31 c0                	xor    %eax,%eax
  4007cb:	e8 e0 fd ff ff       	callq  4005b0 <printf@plt>
  4007d0:	48 85 db             	test   %rbx,%rbx
  4007d3:	74 2c                	je     400801 <print+0x41>
  4007d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4007dc:	00 00 00 00 
  4007e0:	48 8b 33             	mov    (%rbx),%rsi
  4007e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4007e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007ec:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  4007f1:	b0 01                	mov    $0x1,%al
  4007f3:	e8 b8 fd ff ff       	callq  4005b0 <printf@plt>
  4007f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007fc:	48 85 db             	test   %rbx,%rbx
  4007ff:	75 df                	jne    4007e0 <print+0x20>
  400801:	5b                   	pop    %rbx
  400802:	c3                   	retq   
  400803:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40080a:	84 00 00 00 00 00 

0000000000400810 <findnode>:
  400810:	83 fe 02             	cmp    $0x2,%esi
  400813:	7c 1b                	jl     400830 <findnode+0x20>
  400815:	48 85 ff             	test   %rdi,%rdi
  400818:	74 16                	je     400830 <findnode+0x20>
  40081a:	b8 02 00 00 00       	mov    $0x2,%eax
  40081f:	90                   	nop
  400820:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  400824:	39 f0                	cmp    %esi,%eax
  400826:	7d 08                	jge    400830 <findnode+0x20>
  400828:	83 c0 01             	add    $0x1,%eax
  40082b:	48 85 ff             	test   %rdi,%rdi
  40082e:	75 f0                	jne    400820 <findnode+0x10>
  400830:	48 89 f8             	mov    %rdi,%rax
  400833:	c3                   	retq   
  400834:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40083b:	00 00 00 00 00 

0000000000400840 <findlast>:
  400840:	48 89 f8             	mov    %rdi,%rax
  400843:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400847:	48 85 ff             	test   %rdi,%rdi
  40084a:	75 f4                	jne    400840 <findlast>
  40084c:	c3                   	retq   
  40084d:	0f 1f 00             	nopl   (%rax)

0000000000400850 <insert1>:
  400850:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
  400854:	48 89 f0             	mov    %rsi,%rax
  400857:	c3                   	retq   
  400858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40085f:	00 

0000000000400860 <insert2>:
  400860:	53                   	push   %rbx
  400861:	48 89 fb             	mov    %rdi,%rbx
  400864:	48 89 d8             	mov    %rbx,%rax
  400867:	48 85 db             	test   %rbx,%rbx
  40086a:	74 24                	je     400890 <insert2+0x30>
  40086c:	48 89 d8             	mov    %rbx,%rax
  40086f:	83 fa 02             	cmp    $0x2,%edx
  400872:	7c 1c                	jl     400890 <insert2+0x30>
  400874:	b9 02 00 00 00       	mov    $0x2,%ecx
  400879:	48 89 d8             	mov    %rbx,%rax
  40087c:	0f 1f 40 00          	nopl   0x0(%rax)
  400880:	48 8b 40 10          	mov    0x10(%rax),%rax
  400884:	39 d1                	cmp    %edx,%ecx
  400886:	7d 08                	jge    400890 <insert2+0x30>
  400888:	83 c1 01             	add    $0x1,%ecx
  40088b:	48 85 c0             	test   %rax,%rax
  40088e:	75 f0                	jne    400880 <insert2+0x20>
  400890:	48 85 f6             	test   %rsi,%rsi
  400893:	74 0e                	je     4008a3 <insert2+0x43>
  400895:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400899:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  40089d:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4008a1:	eb 0c                	jmp    4008af <insert2+0x4f>
  4008a3:	bf 9b 0d 40 00       	mov    $0x400d9b,%edi
  4008a8:	31 c0                	xor    %eax,%eax
  4008aa:	e8 01 fd ff ff       	callq  4005b0 <printf@plt>
  4008af:	48 89 d8             	mov    %rbx,%rax
  4008b2:	5b                   	pop    %rbx
  4008b3:	c3                   	retq   
  4008b4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008bb:	00 00 00 00 00 

00000000004008c0 <insert3>:
  4008c0:	48 89 f9             	mov    %rdi,%rcx
  4008c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ca:	84 00 00 00 00 00 
  4008d0:	48 89 c8             	mov    %rcx,%rax
  4008d3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4008d7:	48 85 c9             	test   %rcx,%rcx
  4008da:	75 f4                	jne    4008d0 <insert3+0x10>
  4008dc:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4008e0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4008e7:	00 
  4008e8:	48 89 f8             	mov    %rdi,%rax
  4008eb:	c3                   	retq   
  4008ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008f0 <delete>:
  4008f0:	41 56                	push   %r14
  4008f2:	53                   	push   %rbx
  4008f3:	50                   	push   %rax
  4008f4:	48 89 fb             	mov    %rdi,%rbx
  4008f7:	48 39 33             	cmp    %rsi,(%rbx)
  4008fa:	75 11                	jne    40090d <delete+0x1d>
  4008fc:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400900:	48 89 df             	mov    %rbx,%rdi
  400903:	e8 88 fc ff ff       	callq  400590 <free@plt>
  400908:	4c 89 f3             	mov    %r14,%rbx
  40090b:	eb 6c                	jmp    400979 <delete+0x89>
  40090d:	31 c9                	xor    %ecx,%ecx
  40090f:	48 89 d8             	mov    %rbx,%rax
  400912:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400919:	1f 84 00 00 00 00 00 
  400920:	48 8b 40 10          	mov    0x10(%rax),%rax
  400924:	83 c1 01             	add    $0x1,%ecx
  400927:	48 39 30             	cmp    %rsi,(%rax)
  40092a:	75 f4                	jne    400920 <delete+0x30>
  40092c:	48 89 da             	mov    %rbx,%rdx
  40092f:	48 85 db             	test   %rbx,%rbx
  400932:	74 2c                	je     400960 <delete+0x70>
  400934:	48 89 da             	mov    %rbx,%rdx
  400937:	83 f9 02             	cmp    $0x2,%ecx
  40093a:	72 24                	jb     400960 <delete+0x70>
  40093c:	be 02 00 00 00       	mov    $0x2,%esi
  400941:	48 89 da             	mov    %rbx,%rdx
  400944:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40094b:	00 00 00 00 00 
  400950:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  400954:	39 ce                	cmp    %ecx,%esi
  400956:	73 08                	jae    400960 <delete+0x70>
  400958:	83 c6 01             	add    $0x1,%esi
  40095b:	48 85 d2             	test   %rdx,%rdx
  40095e:	75 f0                	jne    400950 <delete+0x60>
  400960:	48 85 c0             	test   %rax,%rax
  400963:	74 0a                	je     40096f <delete+0x7f>
  400965:	48 8b 40 10          	mov    0x10(%rax),%rax
  400969:	48 89 42 10          	mov    %rax,0x10(%rdx)
  40096d:	eb 0a                	jmp    400979 <delete+0x89>
  40096f:	bf 17 0e 40 00       	mov    $0x400e17,%edi
  400974:	e8 27 fc ff ff       	callq  4005a0 <puts@plt>
  400979:	48 89 d8             	mov    %rbx,%rax
  40097c:	48 83 c4 08          	add    $0x8,%rsp
  400980:	5b                   	pop    %rbx
  400981:	41 5e                	pop    %r14
  400983:	c3                   	retq   
  400984:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40098b:	00 00 00 00 00 

0000000000400990 <main>:
  400990:	55                   	push   %rbp
  400991:	41 57                	push   %r15
  400993:	41 56                	push   %r14
  400995:	41 55                	push   %r13
  400997:	41 54                	push   %r12
  400999:	53                   	push   %rbx
  40099a:	48 83 ec 18          	sub    $0x18,%rsp
  40099e:	bf 80 0e 40 00       	mov    $0x400e80,%edi
  4009a3:	e8 f8 fb ff ff       	callq  4005a0 <puts@plt>
  4009a8:	bf b4 0d 40 00       	mov    $0x400db4,%edi
  4009ad:	31 c0                	xor    %eax,%eax
  4009af:	e8 fc fb ff ff       	callq  4005b0 <printf@plt>
  4009b4:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4009b9:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  4009be:	31 c0                	xor    %eax,%eax
  4009c0:	e8 1b fc ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  4009c5:	bf a0 0e 40 00       	mov    $0x400ea0,%edi
  4009ca:	e8 d1 fb ff ff       	callq  4005a0 <puts@plt>
  4009cf:	8b 7c 24 04          	mov    0x4(%rsp),%edi
  4009d3:	e8 18 fd ff ff       	callq  4006f0 <create>
  4009d8:	49 89 c5             	mov    %rax,%r13
  4009db:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  4009e0:	31 c0                	xor    %eax,%eax
  4009e2:	e8 c9 fb ff ff       	callq  4005b0 <printf@plt>
  4009e7:	4d 85 ed             	test   %r13,%r13
  4009ea:	74 25                	je     400a11 <main+0x81>
  4009ec:	4c 89 eb             	mov    %r13,%rbx
  4009ef:	90                   	nop
  4009f0:	48 8b 33             	mov    (%rbx),%rsi
  4009f3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009f8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009fc:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400a01:	b0 01                	mov    $0x1,%al
  400a03:	e8 a8 fb ff ff       	callq  4005b0 <printf@plt>
  400a08:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a0c:	48 85 db             	test   %rbx,%rbx
  400a0f:	75 df                	jne    4009f0 <main+0x60>
  400a11:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400a16:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400a1b:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
  400a20:	48 8d 5c 24 04       	lea    0x4(%rsp),%rbx
  400a25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a2c:	00 00 00 00 
  400a30:	bf d0 0e 40 00       	mov    $0x400ed0,%edi
  400a35:	e8 66 fb ff ff       	callq  4005a0 <puts@plt>
  400a3a:	bf 24 0e 40 00       	mov    $0x400e24,%edi
  400a3f:	e8 5c fb ff ff       	callq  4005a0 <puts@plt>
  400a44:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400a49:	31 c0                	xor    %eax,%eax
  400a4b:	4c 89 f6             	mov    %r14,%rsi
  400a4e:	e8 8d fb ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400a53:	48 8b 3d 06 16 20 00 	mov    0x201606(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400a5a:	e8 71 fb ff ff       	callq  4005d0 <_IO_getc@plt>
  400a5f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400a63:	83 f8 02             	cmp    $0x2,%eax
  400a66:	0f 84 94 00 00 00    	je     400b00 <main+0x170>
  400a6c:	83 f8 01             	cmp    $0x1,%eax
  400a6f:	0f 85 4e 02 00 00    	jne    400cc3 <main+0x333>
  400a75:	bf 18 00 00 00       	mov    $0x18,%edi
  400a7a:	e8 41 fb ff ff       	callq  4005c0 <malloc@plt>
  400a7f:	48 89 c5             	mov    %rax,%rbp
  400a82:	bf 40 0e 40 00       	mov    $0x400e40,%edi
  400a87:	31 c0                	xor    %eax,%eax
  400a89:	e8 22 fb ff ff       	callq  4005b0 <printf@plt>
  400a8e:	48 8d 55 08          	lea    0x8(%rbp),%rdx
  400a92:	bf 74 0d 40 00       	mov    $0x400d74,%edi
  400a97:	31 c0                	xor    %eax,%eax
  400a99:	48 89 ee             	mov    %rbp,%rsi
  400a9c:	e8 3f fb ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400aa1:	bf f0 0e 40 00       	mov    $0x400ef0,%edi
  400aa6:	e8 f5 fa ff ff       	callq  4005a0 <puts@plt>
  400aab:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400ab0:	31 c0                	xor    %eax,%eax
  400ab2:	4c 89 e6             	mov    %r12,%rsi
  400ab5:	e8 26 fb ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400aba:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400abe:	83 f8 01             	cmp    $0x1,%eax
  400ac1:	0f 84 cb 00 00 00    	je     400b92 <main+0x202>
  400ac7:	83 f8 02             	cmp    $0x2,%eax
  400aca:	0f 84 ce 00 00 00    	je     400b9e <main+0x20e>
  400ad0:	4c 89 e9             	mov    %r13,%rcx
  400ad3:	83 f8 03             	cmp    $0x3,%eax
  400ad6:	0f 85 84 01 00 00    	jne    400c60 <main+0x2d0>
  400adc:	0f 1f 40 00          	nopl   0x0(%rax)
  400ae0:	48 89 c8             	mov    %rcx,%rax
  400ae3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400ae7:	48 85 c9             	test   %rcx,%rcx
  400aea:	75 f4                	jne    400ae0 <main+0x150>
  400aec:	48 89 68 10          	mov    %rbp,0x10(%rax)
  400af0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
  400af7:	00 
  400af8:	e9 63 01 00 00       	jmpq   400c60 <main+0x2d0>
  400afd:	0f 1f 00             	nopl   (%rax)
  400b00:	bf 01 0e 40 00       	mov    $0x400e01,%edi
  400b05:	31 c0                	xor    %eax,%eax
  400b07:	e8 a4 fa ff ff       	callq  4005b0 <printf@plt>
  400b0c:	bf 13 0e 40 00       	mov    $0x400e13,%edi
  400b11:	31 c0                	xor    %eax,%eax
  400b13:	4c 89 fe             	mov    %r15,%rsi
  400b16:	e8 c5 fa ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400b1b:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  400b20:	49 39 55 00          	cmp    %rdx,0x0(%r13)
  400b24:	75 14                	jne    400b3a <main+0x1aa>
  400b26:	49 8b 6d 10          	mov    0x10(%r13),%rbp
  400b2a:	4c 89 ef             	mov    %r13,%rdi
  400b2d:	e8 5e fa ff ff       	callq  400590 <free@plt>
  400b32:	49 89 ed             	mov    %rbp,%r13
  400b35:	e9 d6 00 00 00       	jmpq   400c10 <main+0x280>
  400b3a:	31 c9                	xor    %ecx,%ecx
  400b3c:	4c 89 e8             	mov    %r13,%rax
  400b3f:	90                   	nop
  400b40:	48 8b 40 10          	mov    0x10(%rax),%rax
  400b44:	83 c1 01             	add    $0x1,%ecx
  400b47:	48 39 10             	cmp    %rdx,(%rax)
  400b4a:	75 f4                	jne    400b40 <main+0x1b0>
  400b4c:	4c 89 ea             	mov    %r13,%rdx
  400b4f:	4d 85 ed             	test   %r13,%r13
  400b52:	74 2c                	je     400b80 <main+0x1f0>
  400b54:	4c 89 ea             	mov    %r13,%rdx
  400b57:	83 f9 02             	cmp    $0x2,%ecx
  400b5a:	72 24                	jb     400b80 <main+0x1f0>
  400b5c:	be 02 00 00 00       	mov    $0x2,%esi
  400b61:	4c 89 ea             	mov    %r13,%rdx
  400b64:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b6b:	00 00 00 00 00 
  400b70:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  400b74:	39 ce                	cmp    %ecx,%esi
  400b76:	73 08                	jae    400b80 <main+0x1f0>
  400b78:	83 c6 01             	add    $0x1,%esi
  400b7b:	48 85 d2             	test   %rdx,%rdx
  400b7e:	75 f0                	jne    400b70 <main+0x1e0>
  400b80:	48 85 c0             	test   %rax,%rax
  400b83:	74 7e                	je     400c03 <main+0x273>
  400b85:	48 8b 40 10          	mov    0x10(%rax),%rax
  400b89:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400b8d:	e9 7e 00 00 00       	jmpq   400c10 <main+0x280>
  400b92:	4c 89 6d 10          	mov    %r13,0x10(%rbp)
  400b96:	49 89 ed             	mov    %rbp,%r13
  400b99:	e9 c2 00 00 00       	jmpq   400c60 <main+0x2d0>
  400b9e:	bf d7 0d 40 00       	mov    $0x400dd7,%edi
  400ba3:	31 c0                	xor    %eax,%eax
  400ba5:	e8 06 fa ff ff       	callq  4005b0 <printf@plt>
  400baa:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400baf:	31 c0                	xor    %eax,%eax
  400bb1:	48 89 de             	mov    %rbx,%rsi
  400bb4:	e8 27 fa ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400bb9:	4c 89 e8             	mov    %r13,%rax
  400bbc:	4d 85 ed             	test   %r13,%r13
  400bbf:	74 2f                	je     400bf0 <main+0x260>
  400bc1:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
  400bc5:	4c 89 e8             	mov    %r13,%rax
  400bc8:	83 f9 02             	cmp    $0x2,%ecx
  400bcb:	7c 23                	jl     400bf0 <main+0x260>
  400bcd:	ba 02 00 00 00       	mov    $0x2,%edx
  400bd2:	4c 89 e8             	mov    %r13,%rax
  400bd5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400bdc:	00 00 00 00 
  400be0:	48 8b 40 10          	mov    0x10(%rax),%rax
  400be4:	39 ca                	cmp    %ecx,%edx
  400be6:	7d 08                	jge    400bf0 <main+0x260>
  400be8:	83 c2 01             	add    $0x1,%edx
  400beb:	48 85 c0             	test   %rax,%rax
  400bee:	75 f0                	jne    400be0 <main+0x250>
  400bf0:	48 85 ed             	test   %rbp,%rbp
  400bf3:	74 5f                	je     400c54 <main+0x2c4>
  400bf5:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400bf9:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  400bfd:	48 89 68 10          	mov    %rbp,0x10(%rax)
  400c01:	eb 5d                	jmp    400c60 <main+0x2d0>
  400c03:	bf 17 0e 40 00       	mov    $0x400e17,%edi
  400c08:	e8 93 f9 ff ff       	callq  4005a0 <puts@plt>
  400c0d:	0f 1f 00             	nopl   (%rax)
  400c10:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  400c15:	31 c0                	xor    %eax,%eax
  400c17:	e8 94 f9 ff ff       	callq  4005b0 <printf@plt>
  400c1c:	4d 85 ed             	test   %r13,%r13
  400c1f:	0f 84 9b 00 00 00    	je     400cc0 <main+0x330>
  400c25:	4c 89 ed             	mov    %r13,%rbp
  400c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c2f:	00 
  400c30:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400c34:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400c39:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c3d:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400c42:	b0 01                	mov    $0x1,%al
  400c44:	e8 67 f9 ff ff       	callq  4005b0 <printf@plt>
  400c49:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400c4d:	48 85 ed             	test   %rbp,%rbp
  400c50:	75 de                	jne    400c30 <main+0x2a0>
  400c52:	eb 6f                	jmp    400cc3 <main+0x333>
  400c54:	bf 9b 0d 40 00       	mov    $0x400d9b,%edi
  400c59:	31 c0                	xor    %eax,%eax
  400c5b:	e8 50 f9 ff ff       	callq  4005b0 <printf@plt>
  400c60:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400c64:	bf f2 0d 40 00       	mov    $0x400df2,%edi
  400c69:	31 c0                	xor    %eax,%eax
  400c6b:	e8 40 f9 ff ff       	callq  4005b0 <printf@plt>
  400c70:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  400c75:	31 c0                	xor    %eax,%eax
  400c77:	e8 34 f9 ff ff       	callq  4005b0 <printf@plt>
  400c7c:	4d 85 ed             	test   %r13,%r13
  400c7f:	74 3f                	je     400cc0 <main+0x330>
  400c81:	4c 89 ed             	mov    %r13,%rbp
  400c84:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400c8b:	00 00 00 00 00 
  400c90:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400c94:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400c99:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c9d:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400ca2:	b0 01                	mov    $0x1,%al
  400ca4:	e8 07 f9 ff ff       	callq  4005b0 <printf@plt>
  400ca9:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400cad:	48 85 ed             	test   %rbp,%rbp
  400cb0:	75 de                	jne    400c90 <main+0x300>
  400cb2:	eb 0f                	jmp    400cc3 <main+0x333>
  400cb4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400cbb:	00 00 00 00 00 
  400cc0:	45 31 ed             	xor    %r13d,%r13d
  400cc3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400cc7:	83 c0 ff             	add    $0xffffffff,%eax
  400cca:	83 f8 01             	cmp    $0x1,%eax
  400ccd:	0f 87 5d fd ff ff    	ja     400a30 <main+0xa0>
  400cd3:	31 c0                	xor    %eax,%eax
  400cd5:	48 83 c4 18          	add    $0x18,%rsp
  400cd9:	5b                   	pop    %rbx
  400cda:	41 5c                	pop    %r12
  400cdc:	41 5d                	pop    %r13
  400cde:	41 5e                	pop    %r14
  400ce0:	41 5f                	pop    %r15
  400ce2:	5d                   	pop    %rbp
  400ce3:	c3                   	retq   
  400ce4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ceb:	00 00 00 
  400cee:	66 90                	xchg   %ax,%ax

0000000000400cf0 <__libc_csu_init>:
  400cf0:	41 57                	push   %r15
  400cf2:	41 56                	push   %r14
  400cf4:	49 89 d7             	mov    %rdx,%r15
  400cf7:	41 55                	push   %r13
  400cf9:	41 54                	push   %r12
  400cfb:	4c 8d 25 fe 10 20 00 	lea    0x2010fe(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400d02:	55                   	push   %rbp
  400d03:	48 8d 2d fe 10 20 00 	lea    0x2010fe(%rip),%rbp        # 601e08 <__init_array_end>
  400d0a:	53                   	push   %rbx
  400d0b:	41 89 fd             	mov    %edi,%r13d
  400d0e:	49 89 f6             	mov    %rsi,%r14
  400d11:	4c 29 e5             	sub    %r12,%rbp
  400d14:	48 83 ec 08          	sub    $0x8,%rsp
  400d18:	48 c1 fd 03          	sar    $0x3,%rbp
  400d1c:	e8 47 f8 ff ff       	callq  400568 <_init>
  400d21:	48 85 ed             	test   %rbp,%rbp
  400d24:	74 20                	je     400d46 <__libc_csu_init+0x56>
  400d26:	31 db                	xor    %ebx,%ebx
  400d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d2f:	00 
  400d30:	4c 89 fa             	mov    %r15,%rdx
  400d33:	4c 89 f6             	mov    %r14,%rsi
  400d36:	44 89 ef             	mov    %r13d,%edi
  400d39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d3d:	48 83 c3 01          	add    $0x1,%rbx
  400d41:	48 39 dd             	cmp    %rbx,%rbp
  400d44:	75 ea                	jne    400d30 <__libc_csu_init+0x40>
  400d46:	48 83 c4 08          	add    $0x8,%rsp
  400d4a:	5b                   	pop    %rbx
  400d4b:	5d                   	pop    %rbp
  400d4c:	41 5c                	pop    %r12
  400d4e:	41 5d                	pop    %r13
  400d50:	41 5e                	pop    %r14
  400d52:	41 5f                	pop    %r15
  400d54:	c3                   	retq   
  400d55:	90                   	nop
  400d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d5d:	00 00 00 

0000000000400d60 <__libc_csu_fini>:
  400d60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400d64 <_fini>:
  400d64:	48 83 ec 08          	sub    $0x8,%rsp
  400d68:	48 83 c4 08          	add    $0x8,%rsp
  400d6c:	c3                   	retq   
