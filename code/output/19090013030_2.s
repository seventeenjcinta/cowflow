
input/19090013030_2.elf:     file format elf64-x86-64


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
  4005ef:	49 c7 c0 50 0d 40 00 	mov    $0x400d50,%r8
  4005f6:	48 c7 c1 e0 0c 40 00 	mov    $0x400ce0,%rcx
  4005fd:	48 c7 c7 10 09 40 00 	mov    $0x400910,%rdi
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

00000000004006d0 <insert>:
  4006d0:	48 85 ff             	test   %rdi,%rdi
  4006d3:	74 38                	je     40070d <insert+0x3d>
  4006d5:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  4006d9:	48 39 4f 08          	cmp    %rcx,0x8(%rdi)
  4006dd:	7d 35                	jge    400714 <insert+0x44>
  4006df:	48 89 f8             	mov    %rdi,%rax
  4006e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006e9:	1f 84 00 00 00 00 00 
  4006f0:	48 89 c2             	mov    %rax,%rdx
  4006f3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006f7:	48 85 c0             	test   %rax,%rax
  4006fa:	74 20                	je     40071c <insert+0x4c>
  4006fc:	48 39 48 08          	cmp    %rcx,0x8(%rax)
  400700:	7c ee                	jl     4006f0 <insert+0x20>
  400702:	48 39 f8             	cmp    %rdi,%rax
  400705:	74 0d                	je     400714 <insert+0x44>
  400707:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40070b:	eb 15                	jmp    400722 <insert+0x52>
  40070d:	31 c0                	xor    %eax,%eax
  40070f:	48 89 f7             	mov    %rsi,%rdi
  400712:	eb 0e                	jmp    400722 <insert+0x52>
  400714:	48 89 f8             	mov    %rdi,%rax
  400717:	48 89 f7             	mov    %rsi,%rdi
  40071a:	eb 06                	jmp    400722 <insert+0x52>
  40071c:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400720:	31 c0                	xor    %eax,%eax
  400722:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400726:	83 05 3f 19 20 00 01 	addl   $0x1,0x20193f(%rip)        # 60206c <n>
  40072d:	48 89 f8             	mov    %rdi,%rax
  400730:	c3                   	retq   
  400731:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400738:	0f 1f 84 00 00 00 00 
  40073f:	00 

0000000000400740 <delete>:
  400740:	41 56                	push   %r14
  400742:	53                   	push   %rbx
  400743:	50                   	push   %rax
  400744:	49 89 fe             	mov    %rdi,%r14
  400747:	4d 85 f6             	test   %r14,%r14
  40074a:	74 4e                	je     40079a <delete+0x5a>
  40074c:	49 39 76 08          	cmp    %rsi,0x8(%r14)
  400750:	74 61                	je     4007b3 <delete+0x73>
  400752:	4c 89 f3             	mov    %r14,%rbx
  400755:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40075c:	00 00 00 00 
  400760:	48 89 d8             	mov    %rbx,%rax
  400763:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400767:	48 85 db             	test   %rbx,%rbx
  40076a:	74 06                	je     400772 <delete+0x32>
  40076c:	48 39 73 08          	cmp    %rsi,0x8(%rbx)
  400770:	75 ee                	jne    400760 <delete+0x20>
  400772:	4c 39 f3             	cmp    %r14,%rbx
  400775:	74 32                	je     4007a9 <delete+0x69>
  400777:	48 85 db             	test   %rbx,%rbx
  40077a:	74 2d                	je     4007a9 <delete+0x69>
  40077c:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  400780:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400784:	48 89 df             	mov    %rbx,%rdi
  400787:	e8 f4 fd ff ff       	callq  400580 <free@plt>
  40078c:	83 05 d9 18 20 00 ff 	addl   $0xffffffff,0x2018d9(%rip)        # 60206c <n>
  400793:	4c 39 f3             	cmp    %r14,%rbx
  400796:	75 31                	jne    4007c9 <delete+0x89>
  400798:	eb 19                	jmp    4007b3 <delete+0x73>
  40079a:	bf c0 0d 40 00       	mov    $0x400dc0,%edi
  40079f:	e8 ec fd ff ff       	callq  400590 <puts@plt>
  4007a4:	45 31 f6             	xor    %r14d,%r14d
  4007a7:	eb 20                	jmp    4007c9 <delete+0x89>
  4007a9:	48 85 db             	test   %rbx,%rbx
  4007ac:	74 26                	je     4007d4 <delete+0x94>
  4007ae:	4c 39 f3             	cmp    %r14,%rbx
  4007b1:	75 16                	jne    4007c9 <delete+0x89>
  4007b3:	49 8b 5e 10          	mov    0x10(%r14),%rbx
  4007b7:	4c 89 f7             	mov    %r14,%rdi
  4007ba:	e8 c1 fd ff ff       	callq  400580 <free@plt>
  4007bf:	83 05 a6 18 20 00 ff 	addl   $0xffffffff,0x2018a6(%rip)        # 60206c <n>
  4007c6:	49 89 de             	mov    %rbx,%r14
  4007c9:	4c 89 f0             	mov    %r14,%rax
  4007cc:	48 83 c4 08          	add    $0x8,%rsp
  4007d0:	5b                   	pop    %rbx
  4007d1:	41 5e                	pop    %r14
  4007d3:	c3                   	retq   
  4007d4:	31 db                	xor    %ebx,%ebx
  4007d6:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  4007db:	31 c0                	xor    %eax,%eax
  4007dd:	e8 be fd ff ff       	callq  4005a0 <printf@plt>
  4007e2:	4c 39 f3             	cmp    %r14,%rbx
  4007e5:	75 e2                	jne    4007c9 <delete+0x89>
  4007e7:	eb ca                	jmp    4007b3 <delete+0x73>
  4007e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007f0 <creat>:
  4007f0:	41 56                	push   %r14
  4007f2:	53                   	push   %rbx
  4007f3:	50                   	push   %rax
  4007f4:	bf 18 00 00 00       	mov    $0x18,%edi
  4007f9:	e8 b2 fd ff ff       	callq  4005b0 <malloc@plt>
  4007fe:	48 89 c3             	mov    %rax,%rbx
  400801:	48 8d 73 08          	lea    0x8(%rbx),%rsi
  400805:	45 31 f6             	xor    %r14d,%r14d
  400808:	bf 87 0d 40 00       	mov    $0x400d87,%edi
  40080d:	31 c0                	xor    %eax,%eax
  40080f:	48 89 da             	mov    %rbx,%rdx
  400812:	e8 b9 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400817:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40081b:	48 85 c0             	test   %rax,%rax
  40081e:	0f 84 94 00 00 00    	je     4008b8 <creat+0xc8>
  400824:	45 31 f6             	xor    %r14d,%r14d
  400827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40082e:	00 00 
  400830:	4d 85 f6             	test   %r14,%r14
  400833:	74 2b                	je     400860 <creat+0x70>
  400835:	49 39 46 08          	cmp    %rax,0x8(%r14)
  400839:	4c 89 f1             	mov    %r14,%rcx
  40083c:	7d 32                	jge    400870 <creat+0x80>
  40083e:	66 90                	xchg   %ax,%ax
  400840:	48 89 ca             	mov    %rcx,%rdx
  400843:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400847:	48 85 c9             	test   %rcx,%rcx
  40084a:	74 2c                	je     400878 <creat+0x88>
  40084c:	48 39 41 08          	cmp    %rax,0x8(%rcx)
  400850:	7c ee                	jl     400840 <creat+0x50>
  400852:	4c 39 f1             	cmp    %r14,%rcx
  400855:	74 19                	je     400870 <creat+0x80>
  400857:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40085b:	eb 23                	jmp    400880 <creat+0x90>
  40085d:	0f 1f 00             	nopl   (%rax)
  400860:	31 c9                	xor    %ecx,%ecx
  400862:	49 89 de             	mov    %rbx,%r14
  400865:	eb 19                	jmp    400880 <creat+0x90>
  400867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40086e:	00 00 
  400870:	4c 89 f1             	mov    %r14,%rcx
  400873:	49 89 de             	mov    %rbx,%r14
  400876:	eb 08                	jmp    400880 <creat+0x90>
  400878:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40087c:	31 c9                	xor    %ecx,%ecx
  40087e:	66 90                	xchg   %ax,%ax
  400880:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400884:	83 05 e1 17 20 00 01 	addl   $0x1,0x2017e1(%rip)        # 60206c <n>
  40088b:	bf 18 00 00 00       	mov    $0x18,%edi
  400890:	e8 1b fd ff ff       	callq  4005b0 <malloc@plt>
  400895:	48 89 c3             	mov    %rax,%rbx
  400898:	48 8d 73 08          	lea    0x8(%rbx),%rsi
  40089c:	bf 87 0d 40 00       	mov    $0x400d87,%edi
  4008a1:	31 c0                	xor    %eax,%eax
  4008a3:	48 89 da             	mov    %rbx,%rdx
  4008a6:	e8 25 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4008ab:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4008af:	48 85 c0             	test   %rax,%rax
  4008b2:	0f 85 78 ff ff ff    	jne    400830 <creat+0x40>
  4008b8:	48 89 df             	mov    %rbx,%rdi
  4008bb:	e8 c0 fc ff ff       	callq  400580 <free@plt>
  4008c0:	4c 89 f0             	mov    %r14,%rax
  4008c3:	48 83 c4 08          	add    $0x8,%rsp
  4008c7:	5b                   	pop    %rbx
  4008c8:	41 5e                	pop    %r14
  4008ca:	c3                   	retq   
  4008cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004008d0 <print>:
  4008d0:	53                   	push   %rbx
  4008d1:	48 89 fb             	mov    %rdi,%rbx
  4008d4:	48 85 db             	test   %rbx,%rbx
  4008d7:	74 28                	je     400901 <print+0x31>
  4008d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008e0:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4008e4:	f3 0f 10 03          	movss  (%rbx),%xmm0
  4008e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ec:	bf 8e 0d 40 00       	mov    $0x400d8e,%edi
  4008f1:	b0 01                	mov    $0x1,%al
  4008f3:	e8 a8 fc ff ff       	callq  4005a0 <printf@plt>
  4008f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008fc:	48 85 db             	test   %rbx,%rbx
  4008ff:	75 df                	jne    4008e0 <print+0x10>
  400901:	5b                   	pop    %rbx
  400902:	c3                   	retq   
  400903:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40090a:	84 00 00 00 00 00 

0000000000400910 <main>:
  400910:	55                   	push   %rbp
  400911:	41 57                	push   %r15
  400913:	41 56                	push   %r14
  400915:	41 55                	push   %r13
  400917:	41 54                	push   %r12
  400919:	53                   	push   %rbx
  40091a:	48 83 ec 18          	sub    $0x18,%rsp
  40091e:	bf e0 0d 40 00       	mov    $0x400de0,%edi
  400923:	e8 68 fc ff ff       	callq  400590 <puts@plt>
  400928:	bf 18 00 00 00       	mov    $0x18,%edi
  40092d:	e8 7e fc ff ff       	callq  4005b0 <malloc@plt>
  400932:	48 89 c3             	mov    %rax,%rbx
  400935:	48 8d 73 08          	lea    0x8(%rbx),%rsi
  400939:	bf 87 0d 40 00       	mov    $0x400d87,%edi
  40093e:	31 c0                	xor    %eax,%eax
  400940:	48 89 da             	mov    %rbx,%rdx
  400943:	e8 88 fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400948:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40094c:	48 85 c0             	test   %rax,%rax
  40094f:	0f 84 ce 00 00 00    	je     400a23 <main+0x113>
  400955:	31 ed                	xor    %ebp,%ebp
  400957:	45 31 e4             	xor    %r12d,%r12d
  40095a:	eb 14                	jmp    400970 <main+0x60>
  40095c:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  400960:	31 c9                	xor    %ecx,%ecx
  400962:	eb 55                	jmp    4009b9 <main+0xa9>
  400964:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40096b:	00 00 00 00 00 
  400970:	48 85 ed             	test   %rbp,%rbp
  400973:	74 2b                	je     4009a0 <main+0x90>
  400975:	48 39 45 08          	cmp    %rax,0x8(%rbp)
  400979:	48 89 e9             	mov    %rbp,%rcx
  40097c:	7d 32                	jge    4009b0 <main+0xa0>
  40097e:	66 90                	xchg   %ax,%ax
  400980:	48 89 ca             	mov    %rcx,%rdx
  400983:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400987:	48 85 c9             	test   %rcx,%rcx
  40098a:	74 d0                	je     40095c <main+0x4c>
  40098c:	48 39 41 08          	cmp    %rax,0x8(%rcx)
  400990:	7c ee                	jl     400980 <main+0x70>
  400992:	48 39 e9             	cmp    %rbp,%rcx
  400995:	74 19                	je     4009b0 <main+0xa0>
  400997:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40099b:	eb 1c                	jmp    4009b9 <main+0xa9>
  40099d:	0f 1f 00             	nopl   (%rax)
  4009a0:	31 c9                	xor    %ecx,%ecx
  4009a2:	eb 0f                	jmp    4009b3 <main+0xa3>
  4009a4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009ab:	00 00 00 00 00 
  4009b0:	48 89 e9             	mov    %rbp,%rcx
  4009b3:	49 89 dc             	mov    %rbx,%r12
  4009b6:	48 89 dd             	mov    %rbx,%rbp
  4009b9:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4009bd:	83 05 a8 16 20 00 01 	addl   $0x1,0x2016a8(%rip)        # 60206c <n>
  4009c4:	bf 18 00 00 00       	mov    $0x18,%edi
  4009c9:	e8 e2 fb ff ff       	callq  4005b0 <malloc@plt>
  4009ce:	48 89 c3             	mov    %rax,%rbx
  4009d1:	48 8d 73 08          	lea    0x8(%rbx),%rsi
  4009d5:	bf 87 0d 40 00       	mov    $0x400d87,%edi
  4009da:	31 c0                	xor    %eax,%eax
  4009dc:	48 89 da             	mov    %rbx,%rdx
  4009df:	e8 ec fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4009e4:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4009e8:	48 85 c0             	test   %rax,%rax
  4009eb:	75 83                	jne    400970 <main+0x60>
  4009ed:	48 89 df             	mov    %rbx,%rdi
  4009f0:	e8 8b fb ff ff       	callq  400580 <free@plt>
  4009f5:	48 85 ed             	test   %rbp,%rbp
  4009f8:	74 34                	je     400a2e <main+0x11e>
  4009fa:	48 89 eb             	mov    %rbp,%rbx
  4009fd:	0f 1f 00             	nopl   (%rax)
  400a00:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  400a04:	f3 0f 10 03          	movss  (%rbx),%xmm0
  400a08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a0c:	bf 8e 0d 40 00       	mov    $0x400d8e,%edi
  400a11:	b0 01                	mov    $0x1,%al
  400a13:	e8 88 fb ff ff       	callq  4005a0 <printf@plt>
  400a18:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a1c:	48 85 db             	test   %rbx,%rbx
  400a1f:	75 df                	jne    400a00 <main+0xf0>
  400a21:	eb 0d                	jmp    400a30 <main+0x120>
  400a23:	48 89 df             	mov    %rbx,%rdi
  400a26:	e8 55 fb ff ff       	callq  400580 <free@plt>
  400a2b:	45 31 e4             	xor    %r12d,%r12d
  400a2e:	31 ed                	xor    %ebp,%ebp
  400a30:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400a35:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400a3a:	eb 24                	jmp    400a60 <main+0x150>
  400a3c:	bf 64 0d 40 00       	mov    $0x400d64,%edi
  400a41:	31 c0                	xor    %eax,%eax
  400a43:	e8 58 fb ff ff       	callq  4005a0 <printf@plt>
  400a48:	31 db                	xor    %ebx,%ebx
  400a4a:	48 39 eb             	cmp    %rbp,%rbx
  400a4d:	0f 85 05 02 00 00    	jne    400c58 <main+0x348>
  400a53:	e9 3c 01 00 00       	jmpq   400b94 <main+0x284>
  400a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a5f:	00 
  400a60:	bf 10 0e 40 00       	mov    $0x400e10,%edi
  400a65:	e8 26 fb ff ff       	callq  400590 <puts@plt>
  400a6a:	bf 98 0d 40 00       	mov    $0x400d98,%edi
  400a6f:	31 c0                	xor    %eax,%eax
  400a71:	4c 89 f6             	mov    %r14,%rsi
  400a74:	e8 57 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a79:	48 8b 3d e0 15 20 00 	mov    0x2015e0(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400a80:	e8 3b fb ff ff       	callq  4005c0 <_IO_getc@plt>
  400a85:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400a89:	83 f8 02             	cmp    $0x2,%eax
  400a8c:	0f 84 8e 00 00 00    	je     400b20 <main+0x210>
  400a92:	83 f8 01             	cmp    $0x1,%eax
  400a95:	0f 85 1e 02 00 00    	jne    400cb9 <main+0x3a9>
  400a9b:	bf 80 0e 40 00       	mov    $0x400e80,%edi
  400aa0:	e8 eb fa ff ff       	callq  400590 <puts@plt>
  400aa5:	bf 18 00 00 00       	mov    $0x18,%edi
  400aaa:	e8 01 fb ff ff       	callq  4005b0 <malloc@plt>
  400aaf:	49 89 c5             	mov    %rax,%r13
  400ab2:	49 8d 5d 08          	lea    0x8(%r13),%rbx
  400ab6:	bf 87 0d 40 00       	mov    $0x400d87,%edi
  400abb:	31 c0                	xor    %eax,%eax
  400abd:	48 89 de             	mov    %rbx,%rsi
  400ac0:	4c 89 ea             	mov    %r13,%rdx
  400ac3:	e8 08 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400ac8:	48 85 ed             	test   %rbp,%rbp
  400acb:	0f 84 e6 00 00 00    	je     400bb7 <main+0x2a7>
  400ad1:	48 8b 13             	mov    (%rbx),%rdx
  400ad4:	48 39 55 08          	cmp    %rdx,0x8(%rbp)
  400ad8:	48 89 e8             	mov    %rbp,%rax
  400adb:	0f 8d f2 00 00 00    	jge    400bd3 <main+0x2c3>
  400ae1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ae8:	0f 1f 84 00 00 00 00 
  400aef:	00 
  400af0:	48 89 c1             	mov    %rax,%rcx
  400af3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400af7:	48 85 c0             	test   %rax,%rax
  400afa:	0f 84 dc 00 00 00    	je     400bdc <main+0x2cc>
  400b00:	48 39 50 08          	cmp    %rdx,0x8(%rax)
  400b04:	7c ea                	jl     400af0 <main+0x1e0>
  400b06:	48 39 e8             	cmp    %rbp,%rax
  400b09:	0f 84 c4 00 00 00    	je     400bd3 <main+0x2c3>
  400b0f:	4c 89 69 10          	mov    %r13,0x10(%rcx)
  400b13:	49 89 45 10          	mov    %rax,0x10(%r13)
  400b17:	e9 cc 00 00 00       	jmpq   400be8 <main+0x2d8>
  400b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  400b20:	48 85 ed             	test   %rbp,%rbp
  400b23:	0f 84 9b 00 00 00    	je     400bc4 <main+0x2b4>
  400b29:	bf 30 0e 40 00       	mov    $0x400e30,%edi
  400b2e:	e8 5d fa ff ff       	callq  400590 <puts@plt>
  400b33:	bf b5 0d 40 00       	mov    $0x400db5,%edi
  400b38:	31 c0                	xor    %eax,%eax
  400b3a:	4c 89 fe             	mov    %r15,%rsi
  400b3d:	e8 8e fa ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400b42:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  400b47:	48 39 4d 08          	cmp    %rcx,0x8(%rbp)
  400b4b:	74 47                	je     400b94 <main+0x284>
  400b4d:	48 89 eb             	mov    %rbp,%rbx
  400b50:	48 89 d8             	mov    %rbx,%rax
  400b53:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400b57:	48 85 db             	test   %rbx,%rbx
  400b5a:	74 06                	je     400b62 <main+0x252>
  400b5c:	48 39 4b 08          	cmp    %rcx,0x8(%rbx)
  400b60:	75 ee                	jne    400b50 <main+0x240>
  400b62:	48 39 eb             	cmp    %rbp,%rbx
  400b65:	0f 84 db 00 00 00    	je     400c46 <main+0x336>
  400b6b:	48 85 db             	test   %rbx,%rbx
  400b6e:	0f 84 d2 00 00 00    	je     400c46 <main+0x336>
  400b74:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  400b78:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400b7c:	48 89 df             	mov    %rbx,%rdi
  400b7f:	e8 fc f9 ff ff       	callq  400580 <free@plt>
  400b84:	83 05 e1 14 20 00 ff 	addl   $0xffffffff,0x2014e1(%rip)        # 60206c <n>
  400b8b:	48 39 eb             	cmp    %rbp,%rbx
  400b8e:	0f 85 c4 00 00 00    	jne    400c58 <main+0x348>
  400b94:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400b98:	4c 89 e7             	mov    %r12,%rdi
  400b9b:	e8 e0 f9 ff ff       	callq  400580 <free@plt>
  400ba0:	8b 35 c6 14 20 00    	mov    0x2014c6(%rip),%esi        # 60206c <n>
  400ba6:	83 c6 ff             	add    $0xffffffff,%esi
  400ba9:	89 35 bd 14 20 00    	mov    %esi,0x2014bd(%rip)        # 60206c <n>
  400baf:	49 89 ec             	mov    %rbp,%r12
  400bb2:	e9 a7 00 00 00       	jmpq   400c5e <main+0x34e>
  400bb7:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400bbe:	00 
  400bbf:	4c 89 ed             	mov    %r13,%rbp
  400bc2:	eb 27                	jmp    400beb <main+0x2db>
  400bc4:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  400bc9:	e8 c2 f9 ff ff       	callq  400590 <puts@plt>
  400bce:	e9 dd 00 00 00       	jmpq   400cb0 <main+0x3a0>
  400bd3:	4d 89 65 10          	mov    %r12,0x10(%r13)
  400bd7:	4c 89 ed             	mov    %r13,%rbp
  400bda:	eb 0f                	jmp    400beb <main+0x2db>
  400bdc:	4c 89 69 10          	mov    %r13,0x10(%rcx)
  400be0:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400be7:	00 
  400be8:	4d 89 e5             	mov    %r12,%r13
  400beb:	8b 35 7b 14 20 00    	mov    0x20147b(%rip),%esi        # 60206c <n>
  400bf1:	83 c6 01             	add    $0x1,%esi
  400bf4:	89 35 72 14 20 00    	mov    %esi,0x201472(%rip)        # 60206c <n>
  400bfa:	bf 9b 0d 40 00       	mov    $0x400d9b,%edi
  400bff:	31 c0                	xor    %eax,%eax
  400c01:	e8 9a f9 ff ff       	callq  4005a0 <printf@plt>
  400c06:	48 85 ed             	test   %rbp,%rbp
  400c09:	0f 84 a1 00 00 00    	je     400cb0 <main+0x3a0>
  400c0f:	48 89 eb             	mov    %rbp,%rbx
  400c12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400c19:	1f 84 00 00 00 00 00 
  400c20:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  400c24:	f3 0f 10 03          	movss  (%rbx),%xmm0
  400c28:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c2c:	bf 8e 0d 40 00       	mov    $0x400d8e,%edi
  400c31:	b0 01                	mov    $0x1,%al
  400c33:	e8 68 f9 ff ff       	callq  4005a0 <printf@plt>
  400c38:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c3c:	48 85 db             	test   %rbx,%rbx
  400c3f:	75 df                	jne    400c20 <main+0x310>
  400c41:	4d 89 ec             	mov    %r13,%r12
  400c44:	eb 6f                	jmp    400cb5 <main+0x3a5>
  400c46:	48 85 db             	test   %rbx,%rbx
  400c49:	0f 84 ed fd ff ff    	je     400a3c <main+0x12c>
  400c4f:	48 39 eb             	cmp    %rbp,%rbx
  400c52:	0f 84 3c ff ff ff    	je     400b94 <main+0x284>
  400c58:	8b 35 0e 14 20 00    	mov    0x20140e(%rip),%esi        # 60206c <n>
  400c5e:	bf 9b 0d 40 00       	mov    $0x400d9b,%edi
  400c63:	31 c0                	xor    %eax,%eax
  400c65:	e8 36 f9 ff ff       	callq  4005a0 <printf@plt>
  400c6a:	48 85 ed             	test   %rbp,%rbp
  400c6d:	74 41                	je     400cb0 <main+0x3a0>
  400c6f:	48 89 eb             	mov    %rbp,%rbx
  400c72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400c79:	1f 84 00 00 00 00 00 
  400c80:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  400c84:	f3 0f 10 03          	movss  (%rbx),%xmm0
  400c88:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c8c:	bf 8e 0d 40 00       	mov    $0x400d8e,%edi
  400c91:	b0 01                	mov    $0x1,%al
  400c93:	e8 08 f9 ff ff       	callq  4005a0 <printf@plt>
  400c98:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c9c:	48 85 db             	test   %rbx,%rbx
  400c9f:	75 df                	jne    400c80 <main+0x370>
  400ca1:	eb 12                	jmp    400cb5 <main+0x3a5>
  400ca3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400caa:	84 00 00 00 00 00 
  400cb0:	45 31 e4             	xor    %r12d,%r12d
  400cb3:	31 ed                	xor    %ebp,%ebp
  400cb5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400cb9:	83 f8 03             	cmp    $0x3,%eax
  400cbc:	0f 85 9e fd ff ff    	jne    400a60 <main+0x150>
  400cc2:	31 c0                	xor    %eax,%eax
  400cc4:	48 83 c4 18          	add    $0x18,%rsp
  400cc8:	5b                   	pop    %rbx
  400cc9:	41 5c                	pop    %r12
  400ccb:	41 5d                	pop    %r13
  400ccd:	41 5e                	pop    %r14
  400ccf:	41 5f                	pop    %r15
  400cd1:	5d                   	pop    %rbp
  400cd2:	c3                   	retq   
  400cd3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400cda:	00 00 00 
  400cdd:	0f 1f 00             	nopl   (%rax)

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
  400d0c:	e8 3f f8 ff ff       	callq  400550 <_init>
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
