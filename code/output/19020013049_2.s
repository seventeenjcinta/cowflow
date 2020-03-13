
input/19020013049_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e0 <_init>:
  4004e0:	48 83 ec 08          	sub    $0x8,%rsp
  4004e4:	48 8b 05 0d 1b 20 00 	mov    0x201b0d(%rip),%rax        # 601ff8 <__gmon_start__>
  4004eb:	48 85 c0             	test   %rax,%rax
  4004ee:	74 02                	je     4004f2 <_init+0x12>
  4004f0:	ff d0                	callq  *%rax
  4004f2:	48 83 c4 08          	add    $0x8,%rsp
  4004f6:	c3                   	retq   

Disassembly of section .plt:

0000000000400500 <.plt>:
  400500:	ff 35 02 1b 20 00    	pushq  0x201b02(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400506:	ff 25 04 1b 20 00    	jmpq   *0x201b04(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40050c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400510 <puts@plt>:
  400510:	ff 25 02 1b 20 00    	jmpq   *0x201b02(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400516:	68 00 00 00 00       	pushq  $0x0
  40051b:	e9 e0 ff ff ff       	jmpq   400500 <.plt>

0000000000400520 <printf@plt>:
  400520:	ff 25 fa 1a 20 00    	jmpq   *0x201afa(%rip)        # 602020 <printf@GLIBC_2.2.5>
  400526:	68 01 00 00 00       	pushq  $0x1
  40052b:	e9 d0 ff ff ff       	jmpq   400500 <.plt>

0000000000400530 <malloc@plt>:
  400530:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  400536:	68 02 00 00 00       	pushq  $0x2
  40053b:	e9 c0 ff ff ff       	jmpq   400500 <.plt>

0000000000400540 <__isoc99_scanf@plt>:
  400540:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602030 <__isoc99_scanf@GLIBC_2.7>
  400546:	68 03 00 00 00       	pushq  $0x3
  40054b:	e9 b0 ff ff ff       	jmpq   400500 <.plt>

0000000000400550 <exit@plt>:
  400550:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602038 <exit@GLIBC_2.2.5>
  400556:	68 04 00 00 00       	pushq  $0x4
  40055b:	e9 a0 ff ff ff       	jmpq   400500 <.plt>

Disassembly of section .text:

0000000000400560 <_start>:
  400560:	31 ed                	xor    %ebp,%ebp
  400562:	49 89 d1             	mov    %rdx,%r9
  400565:	5e                   	pop    %rsi
  400566:	48 89 e2             	mov    %rsp,%rdx
  400569:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40056d:	50                   	push   %rax
  40056e:	54                   	push   %rsp
  40056f:	49 c7 c0 d0 0c 40 00 	mov    $0x400cd0,%r8
  400576:	48 c7 c1 60 0c 40 00 	mov    $0x400c60,%rcx
  40057d:	48 c7 c7 f0 08 40 00 	mov    $0x4008f0,%rdi
  400584:	ff 15 66 1a 20 00    	callq  *0x201a66(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40058a:	f4                   	hlt    
  40058b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400590 <_dl_relocate_static_pie>:
  400590:	f3 c3                	repz retq 
  400592:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400599:	00 00 00 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <deregister_tm_clones>:
  4005a0:	55                   	push   %rbp
  4005a1:	b8 50 20 60 00       	mov    $0x602050,%eax
  4005a6:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  4005ac:	48 89 e5             	mov    %rsp,%rbp
  4005af:	74 17                	je     4005c8 <deregister_tm_clones+0x28>
  4005b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b6:	48 85 c0             	test   %rax,%rax
  4005b9:	74 0d                	je     4005c8 <deregister_tm_clones+0x28>
  4005bb:	5d                   	pop    %rbp
  4005bc:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005c1:	ff e0                	jmpq   *%rax
  4005c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c8:	5d                   	pop    %rbp
  4005c9:	c3                   	retq   
  4005ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005d0 <register_tm_clones>:
  4005d0:	be 50 20 60 00       	mov    $0x602050,%esi
  4005d5:	55                   	push   %rbp
  4005d6:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  4005dd:	48 89 e5             	mov    %rsp,%rbp
  4005e0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005e4:	48 89 f0             	mov    %rsi,%rax
  4005e7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005eb:	48 01 c6             	add    %rax,%rsi
  4005ee:	48 d1 fe             	sar    %rsi
  4005f1:	74 15                	je     400608 <register_tm_clones+0x38>
  4005f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f8:	48 85 c0             	test   %rax,%rax
  4005fb:	74 0b                	je     400608 <register_tm_clones+0x38>
  4005fd:	5d                   	pop    %rbp
  4005fe:	bf 50 20 60 00       	mov    $0x602050,%edi
  400603:	ff e0                	jmpq   *%rax
  400605:	0f 1f 00             	nopl   (%rax)
  400608:	5d                   	pop    %rbp
  400609:	c3                   	retq   
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400610 <__do_global_dtors_aux>:
  400610:	80 3d 39 1a 20 00 00 	cmpb   $0x0,0x201a39(%rip)        # 602050 <__TMC_END__>
  400617:	75 17                	jne    400630 <__do_global_dtors_aux+0x20>
  400619:	55                   	push   %rbp
  40061a:	48 89 e5             	mov    %rsp,%rbp
  40061d:	e8 7e ff ff ff       	callq  4005a0 <deregister_tm_clones>
  400622:	c6 05 27 1a 20 00 01 	movb   $0x1,0x201a27(%rip)        # 602050 <__TMC_END__>
  400629:	5d                   	pop    %rbp
  40062a:	c3                   	retq   
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400630:	f3 c3                	repz retq 
  400632:	0f 1f 40 00          	nopl   0x0(%rax)
  400636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40063d:	00 00 00 

0000000000400640 <frame_dummy>:
  400640:	55                   	push   %rbp
  400641:	48 89 e5             	mov    %rsp,%rbp
  400644:	5d                   	pop    %rbp
  400645:	eb 89                	jmp    4005d0 <register_tm_clones>
  400647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40064e:	00 00 

0000000000400650 <order>:
  400650:	48 89 fa             	mov    %rdi,%rdx
  400653:	eb 0f                	jmp    400664 <order+0x14>
  400655:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40065c:	00 00 00 00 
  400660:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400664:	48 89 d0             	mov    %rdx,%rax
  400667:	48 85 ff             	test   %rdi,%rdi
  40066a:	75 07                	jne    400673 <order+0x23>
  40066c:	48 83 7f 10 00       	cmpq   $0x0,0x10(%rdi)
  400671:	74 7b                	je     4006ee <order+0x9e>
  400673:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400677:	ba 00 00 00 00       	mov    $0x0,%edx
  40067c:	48 85 c9             	test   %rcx,%rcx
  40067f:	74 e3                	je     400664 <order+0x14>
  400681:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400688:	0f 1f 84 00 00 00 00 
  40068f:	00 
  400690:	48 8b 10             	mov    (%rax),%rdx
  400693:	48 3b 11             	cmp    (%rcx),%rdx
  400696:	7e 48                	jle    4006e0 <order+0x90>
  400698:	0f 10 00             	movups (%rax),%xmm0
  40069b:	0f 29 44 24 e8       	movaps %xmm0,-0x18(%rsp)
  4006a0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4006a4:	48 8b 71 10          	mov    0x10(%rcx),%rsi
  4006a8:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4006ac:	0f 10 01             	movups (%rcx),%xmm0
  4006af:	0f 11 00             	movups %xmm0,(%rax)
  4006b2:	0f 28 44 24 e8       	movaps -0x18(%rsp),%xmm0
  4006b7:	0f 11 01             	movups %xmm0,(%rcx)
  4006ba:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  4006be:	48 8b 70 10          	mov    0x10(%rax),%rsi
  4006c2:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4006c6:	48 89 71 10          	mov    %rsi,0x10(%rcx)
  4006ca:	48 89 f1             	mov    %rsi,%rcx
  4006cd:	48 85 c9             	test   %rcx,%rcx
  4006d0:	75 be                	jne    400690 <order+0x40>
  4006d2:	eb 8c                	jmp    400660 <order+0x10>
  4006d4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006db:	00 00 00 00 00 
  4006e0:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  4006e4:	48 85 c9             	test   %rcx,%rcx
  4006e7:	75 a7                	jne    400690 <order+0x40>
  4006e9:	e9 72 ff ff ff       	jmpq   400660 <order+0x10>
  4006ee:	31 c0                	xor    %eax,%eax
  4006f0:	c3                   	retq   
  4006f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006f8:	0f 1f 84 00 00 00 00 
  4006ff:	00 

0000000000400700 <creat>:
  400700:	41 57                	push   %r15
  400702:	41 56                	push   %r14
  400704:	53                   	push   %rbx
  400705:	c7 05 45 19 20 00 00 	movl   $0x0,0x201945(%rip)        # 602054 <n>
  40070c:	00 00 00 
  40070f:	bf 18 00 00 00       	mov    $0x18,%edi
  400714:	e8 17 fe ff ff       	callq  400530 <malloc@plt>
  400719:	49 89 c7             	mov    %rax,%r15
  40071c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400720:	45 31 f6             	xor    %r14d,%r14d
  400723:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400728:	31 c0                	xor    %eax,%eax
  40072a:	4c 89 fe             	mov    %r15,%rsi
  40072d:	e8 0e fe ff ff       	callq  400540 <__isoc99_scanf@plt>
  400732:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400736:	74 54                	je     40078c <creat+0x8c>
  400738:	4c 89 f8             	mov    %r15,%rax
  40073b:	4c 89 fb             	mov    %r15,%rbx
  40073e:	31 c9                	xor    %ecx,%ecx
  400740:	49 89 df             	mov    %rbx,%r15
  400743:	8b 15 0b 19 20 00    	mov    0x20190b(%rip),%edx        # 602054 <n>
  400749:	8d 72 01             	lea    0x1(%rdx),%esi
  40074c:	89 35 02 19 20 00    	mov    %esi,0x201902(%rip)        # 602054 <n>
  400752:	4d 89 fe             	mov    %r15,%r14
  400755:	85 d2                	test   %edx,%edx
  400757:	74 07                	je     400760 <creat+0x60>
  400759:	4c 89 78 10          	mov    %r15,0x10(%rax)
  40075d:	49 89 ce             	mov    %rcx,%r14
  400760:	bf 18 00 00 00       	mov    $0x18,%edi
  400765:	e8 c6 fd ff ff       	callq  400530 <malloc@plt>
  40076a:	48 89 c3             	mov    %rax,%rbx
  40076d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400771:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400776:	31 c0                	xor    %eax,%eax
  400778:	48 89 de             	mov    %rbx,%rsi
  40077b:	e8 c0 fd ff ff       	callq  400540 <__isoc99_scanf@plt>
  400780:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400784:	4c 89 f8             	mov    %r15,%rax
  400787:	4c 89 f1             	mov    %r14,%rcx
  40078a:	75 b4                	jne    400740 <creat+0x40>
  40078c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400793:	00 
  400794:	4c 89 f0             	mov    %r14,%rax
  400797:	5b                   	pop    %rbx
  400798:	41 5e                	pop    %r14
  40079a:	41 5f                	pop    %r15
  40079c:	c3                   	retq   
  40079d:	0f 1f 00             	nopl   (%rax)

00000000004007a0 <print>:
  4007a0:	53                   	push   %rbx
  4007a1:	48 89 fb             	mov    %rdi,%rbx
  4007a4:	8b 35 aa 18 20 00    	mov    0x2018aa(%rip),%esi        # 602054 <n>
  4007aa:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  4007af:	31 c0                	xor    %eax,%eax
  4007b1:	e8 6a fd ff ff       	callq  400520 <printf@plt>
  4007b6:	48 85 db             	test   %rbx,%rbx
  4007b9:	74 26                	je     4007e1 <print+0x41>
  4007bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007c0:	48 8b 33             	mov    (%rbx),%rsi
  4007c3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4007c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007cc:	bf 08 0d 40 00       	mov    $0x400d08,%edi
  4007d1:	b0 01                	mov    $0x1,%al
  4007d3:	e8 48 fd ff ff       	callq  400520 <printf@plt>
  4007d8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007dc:	48 85 db             	test   %rbx,%rbx
  4007df:	75 df                	jne    4007c0 <print+0x20>
  4007e1:	5b                   	pop    %rbx
  4007e2:	c3                   	retq   
  4007e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007ea:	84 00 00 00 00 00 

00000000004007f0 <insert>:
  4007f0:	48 85 ff             	test   %rdi,%rdi
  4007f3:	74 29                	je     40081e <insert+0x2e>
  4007f5:	48 8b 06             	mov    (%rsi),%rax
  4007f8:	48 3b 07             	cmp    (%rdi),%rax
  4007fb:	7e 33                	jle    400830 <insert+0x40>
  4007fd:	48 89 fa             	mov    %rdi,%rdx
  400800:	48 89 d1             	mov    %rdx,%rcx
  400803:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400807:	48 85 d2             	test   %rdx,%rdx
  40080a:	74 33                	je     40083f <insert+0x4f>
  40080c:	49 89 c8             	mov    %rcx,%r8
  40080f:	48 3b 02             	cmp    (%rdx),%rax
  400812:	7f ec                	jg     400800 <insert+0x10>
  400814:	49 89 c8             	mov    %rcx,%r8
  400817:	48 3b 02             	cmp    (%rdx),%rax
  40081a:	7f 1c                	jg     400838 <insert+0x48>
  40081c:	eb 29                	jmp    400847 <insert+0x57>
  40081e:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  400825:	00 
  400826:	48 8b 06             	mov    (%rsi),%rax
  400829:	31 d2                	xor    %edx,%edx
  40082b:	48 89 f7             	mov    %rsi,%rdi
  40082e:	eb 03                	jmp    400833 <insert+0x43>
  400830:	48 89 fa             	mov    %rdi,%rdx
  400833:	48 3b 02             	cmp    (%rdx),%rax
  400836:	7e 0f                	jle    400847 <insert+0x57>
  400838:	49 89 d0             	mov    %rdx,%r8
  40083b:	31 d2                	xor    %edx,%edx
  40083d:	eb 10                	jmp    40084f <insert+0x5f>
  40083f:	48 89 ca             	mov    %rcx,%rdx
  400842:	48 3b 02             	cmp    (%rdx),%rax
  400845:	7f f1                	jg     400838 <insert+0x48>
  400847:	48 89 f0             	mov    %rsi,%rax
  40084a:	48 39 d7             	cmp    %rdx,%rdi
  40084d:	74 07                	je     400856 <insert+0x66>
  40084f:	49 89 70 10          	mov    %rsi,0x10(%r8)
  400853:	48 89 f8             	mov    %rdi,%rax
  400856:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  40085a:	83 05 f3 17 20 00 01 	addl   $0x1,0x2017f3(%rip)        # 602054 <n>
  400861:	c3                   	retq   
  400862:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400869:	1f 84 00 00 00 00 00 

0000000000400870 <delect>:
  400870:	53                   	push   %rbx
  400871:	48 89 fb             	mov    %rdi,%rbx
  400874:	48 85 db             	test   %rbx,%rbx
  400877:	74 0b                	je     400884 <delect+0x14>
  400879:	48 39 33             	cmp    %rsi,(%rbx)
  40087c:	75 14                	jne    400892 <delect+0x22>
  40087e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400882:	eb 4d                	jmp    4008d1 <delect+0x61>
  400884:	bf 95 0d 40 00       	mov    $0x400d95,%edi
  400889:	e8 82 fc ff ff       	callq  400510 <puts@plt>
  40088e:	31 db                	xor    %ebx,%ebx
  400890:	eb 52                	jmp    4008e4 <delect+0x74>
  400892:	48 89 d9             	mov    %rbx,%rcx
  400895:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40089c:	00 00 00 00 
  4008a0:	48 89 c8             	mov    %rcx,%rax
  4008a3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4008a7:	48 85 c9             	test   %rcx,%rcx
  4008aa:	74 14                	je     4008c0 <delect+0x50>
  4008ac:	48 39 31             	cmp    %rsi,(%rcx)
  4008af:	75 ef                	jne    4008a0 <delect+0x30>
  4008b1:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4008b5:	48 39 d9             	cmp    %rbx,%rcx
  4008b8:	74 14                	je     4008ce <delect+0x5e>
  4008ba:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4008be:	eb 11                	jmp    4008d1 <delect+0x61>
  4008c0:	bf 1f 0d 40 00       	mov    $0x400d1f,%edi
  4008c5:	31 c0                	xor    %eax,%eax
  4008c7:	e8 54 fc ff ff       	callq  400520 <printf@plt>
  4008cc:	eb 16                	jmp    4008e4 <delect+0x74>
  4008ce:	48 89 d3             	mov    %rdx,%rbx
  4008d1:	bf 13 0d 40 00       	mov    $0x400d13,%edi
  4008d6:	31 c0                	xor    %eax,%eax
  4008d8:	e8 43 fc ff ff       	callq  400520 <printf@plt>
  4008dd:	83 05 70 17 20 00 ff 	addl   $0xffffffff,0x201770(%rip)        # 602054 <n>
  4008e4:	48 89 d8             	mov    %rbx,%rax
  4008e7:	5b                   	pop    %rbx
  4008e8:	c3                   	retq   
  4008e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008f0 <main>:
  4008f0:	41 57                	push   %r15
  4008f2:	41 56                	push   %r14
  4008f4:	41 54                	push   %r12
  4008f6:	53                   	push   %rbx
  4008f7:	48 83 ec 18          	sub    $0x18,%rsp
  4008fb:	bf a1 0d 40 00       	mov    $0x400da1,%edi
  400900:	e8 0b fc ff ff       	callq  400510 <puts@plt>
  400905:	c7 05 45 17 20 00 00 	movl   $0x0,0x201745(%rip)        # 602054 <n>
  40090c:	00 00 00 
  40090f:	bf 18 00 00 00       	mov    $0x18,%edi
  400914:	e8 17 fc ff ff       	callq  400530 <malloc@plt>
  400919:	49 89 c6             	mov    %rax,%r14
  40091c:	49 8d 56 08          	lea    0x8(%r14),%rdx
  400920:	45 31 e4             	xor    %r12d,%r12d
  400923:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400928:	31 c0                	xor    %eax,%eax
  40092a:	4c 89 f6             	mov    %r14,%rsi
  40092d:	e8 0e fc ff ff       	callq  400540 <__isoc99_scanf@plt>
  400932:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400936:	74 54                	je     40098c <main+0x9c>
  400938:	4c 89 f0             	mov    %r14,%rax
  40093b:	4c 89 f3             	mov    %r14,%rbx
  40093e:	31 c9                	xor    %ecx,%ecx
  400940:	49 89 de             	mov    %rbx,%r14
  400943:	8b 15 0b 17 20 00    	mov    0x20170b(%rip),%edx        # 602054 <n>
  400949:	8d 72 01             	lea    0x1(%rdx),%esi
  40094c:	89 35 02 17 20 00    	mov    %esi,0x201702(%rip)        # 602054 <n>
  400952:	4d 89 f4             	mov    %r14,%r12
  400955:	85 d2                	test   %edx,%edx
  400957:	74 07                	je     400960 <main+0x70>
  400959:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40095d:	49 89 cc             	mov    %rcx,%r12
  400960:	bf 18 00 00 00       	mov    $0x18,%edi
  400965:	e8 c6 fb ff ff       	callq  400530 <malloc@plt>
  40096a:	48 89 c3             	mov    %rax,%rbx
  40096d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400971:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400976:	31 c0                	xor    %eax,%eax
  400978:	48 89 de             	mov    %rbx,%rsi
  40097b:	e8 c0 fb ff ff       	callq  400540 <__isoc99_scanf@plt>
  400980:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400984:	4c 89 f0             	mov    %r14,%rax
  400987:	4c 89 e1             	mov    %r12,%rcx
  40098a:	75 b4                	jne    400940 <main+0x50>
  40098c:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400993:	00 
  400994:	8b 35 ba 16 20 00    	mov    0x2016ba(%rip),%esi        # 602054 <n>
  40099a:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  40099f:	31 c0                	xor    %eax,%eax
  4009a1:	e8 7a fb ff ff       	callq  400520 <printf@plt>
  4009a6:	4d 85 e4             	test   %r12,%r12
  4009a9:	74 26                	je     4009d1 <main+0xe1>
  4009ab:	4c 89 e3             	mov    %r12,%rbx
  4009ae:	66 90                	xchg   %ax,%ax
  4009b0:	48 8b 33             	mov    (%rbx),%rsi
  4009b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009bc:	bf 08 0d 40 00       	mov    $0x400d08,%edi
  4009c1:	b0 01                	mov    $0x1,%al
  4009c3:	e8 58 fb ff ff       	callq  400520 <printf@plt>
  4009c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009cc:	48 85 db             	test   %rbx,%rbx
  4009cf:	75 df                	jne    4009b0 <main+0xc0>
  4009d1:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  4009d6:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  4009db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009e0:	bf 34 0d 40 00       	mov    $0x400d34,%edi
  4009e5:	31 c0                	xor    %eax,%eax
  4009e7:	e8 34 fb ff ff       	callq  400520 <printf@plt>
  4009ec:	bf 56 0d 40 00       	mov    $0x400d56,%edi
  4009f1:	31 c0                	xor    %eax,%eax
  4009f3:	e8 28 fb ff ff       	callq  400520 <printf@plt>
  4009f8:	bf 5f 0d 40 00       	mov    $0x400d5f,%edi
  4009fd:	31 c0                	xor    %eax,%eax
  4009ff:	4c 89 fe             	mov    %r15,%rsi
  400a02:	e8 39 fb ff ff       	callq  400540 <__isoc99_scanf@plt>
  400a07:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400a0b:	83 f8 01             	cmp    $0x1,%eax
  400a0e:	0f 84 8c 00 00 00    	je     400aa0 <main+0x1b0>
  400a14:	83 f8 02             	cmp    $0x2,%eax
  400a17:	74 17                	je     400a30 <main+0x140>
  400a19:	85 c0                	test   %eax,%eax
  400a1b:	0f 84 2c 02 00 00    	je     400c4d <main+0x35d>
  400a21:	85 c0                	test   %eax,%eax
  400a23:	75 bb                	jne    4009e0 <main+0xf0>
  400a25:	e9 15 02 00 00       	jmpq   400c3f <main+0x34f>
  400a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a30:	bf 84 0d 40 00       	mov    $0x400d84,%edi
  400a35:	31 c0                	xor    %eax,%eax
  400a37:	e8 e4 fa ff ff       	callq  400520 <printf@plt>
  400a3c:	bf 91 0d 40 00       	mov    $0x400d91,%edi
  400a41:	31 c0                	xor    %eax,%eax
  400a43:	4c 89 f6             	mov    %r14,%rsi
  400a46:	e8 f5 fa ff ff       	callq  400540 <__isoc99_scanf@plt>
  400a4b:	4d 85 e4             	test   %r12,%r12
  400a4e:	0f 84 aa 00 00 00    	je     400afe <main+0x20e>
  400a54:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a59:	49 39 34 24          	cmp    %rsi,(%r12)
  400a5d:	4c 89 e0             	mov    %r12,%rax
  400a60:	75 0e                	jne    400a70 <main+0x180>
  400a62:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a67:	e9 5f 01 00 00       	jmpq   400bcb <main+0x2db>
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a70:	48 89 c1             	mov    %rax,%rcx
  400a73:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a77:	48 85 c0             	test   %rax,%rax
  400a7a:	0f 84 c0 00 00 00    	je     400b40 <main+0x250>
  400a80:	48 39 30             	cmp    %rsi,(%rax)
  400a83:	75 eb                	jne    400a70 <main+0x180>
  400a85:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a89:	4c 39 e0             	cmp    %r12,%rax
  400a8c:	0f 84 36 01 00 00    	je     400bc8 <main+0x2d8>
  400a92:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a96:	e9 30 01 00 00       	jmpq   400bcb <main+0x2db>
  400a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400aa0:	bf 62 0d 40 00       	mov    $0x400d62,%edi
  400aa5:	31 c0                	xor    %eax,%eax
  400aa7:	e8 74 fa ff ff       	callq  400520 <printf@plt>
  400aac:	bf 18 00 00 00       	mov    $0x18,%edi
  400ab1:	e8 7a fa ff ff       	callq  400530 <malloc@plt>
  400ab6:	48 89 c3             	mov    %rax,%rbx
  400ab9:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  400abe:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400ac2:	31 c0                	xor    %eax,%eax
  400ac4:	48 89 de             	mov    %rbx,%rsi
  400ac7:	e8 74 fa ff ff       	callq  400540 <__isoc99_scanf@plt>
  400acc:	4d 85 e4             	test   %r12,%r12
  400acf:	74 4e                	je     400b1f <main+0x22f>
  400ad1:	48 8b 33             	mov    (%rbx),%rsi
  400ad4:	49 3b 34 24          	cmp    (%r12),%rsi
  400ad8:	7e 57                	jle    400b31 <main+0x241>
  400ada:	4c 89 e0             	mov    %r12,%rax
  400add:	0f 1f 00             	nopl   (%rax)
  400ae0:	48 89 c2             	mov    %rax,%rdx
  400ae3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400ae7:	48 85 c0             	test   %rax,%rax
  400aea:	74 6b                	je     400b57 <main+0x267>
  400aec:	48 89 d1             	mov    %rdx,%rcx
  400aef:	48 3b 30             	cmp    (%rax),%rsi
  400af2:	7f ec                	jg     400ae0 <main+0x1f0>
  400af4:	48 89 d1             	mov    %rdx,%rcx
  400af7:	48 3b 30             	cmp    (%rax),%rsi
  400afa:	7f 3d                	jg     400b39 <main+0x249>
  400afc:	eb 61                	jmp    400b5f <main+0x26f>
  400afe:	bf 95 0d 40 00       	mov    $0x400d95,%edi
  400b03:	e8 08 fa ff ff       	callq  400510 <puts@plt>
  400b08:	8b 35 46 15 20 00    	mov    0x201546(%rip),%esi        # 602054 <n>
  400b0e:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  400b13:	31 c0                	xor    %eax,%eax
  400b15:	e8 06 fa ff ff       	callq  400520 <printf@plt>
  400b1a:	e9 11 01 00 00       	jmpq   400c30 <main+0x340>
  400b1f:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400b26:	00 
  400b27:	48 8b 33             	mov    (%rbx),%rsi
  400b2a:	49 89 dc             	mov    %rbx,%r12
  400b2d:	31 c0                	xor    %eax,%eax
  400b2f:	eb 03                	jmp    400b34 <main+0x244>
  400b31:	4c 89 e0             	mov    %r12,%rax
  400b34:	48 3b 30             	cmp    (%rax),%rsi
  400b37:	7e 26                	jle    400b5f <main+0x26f>
  400b39:	48 89 c1             	mov    %rax,%rcx
  400b3c:	31 c0                	xor    %eax,%eax
  400b3e:	eb 24                	jmp    400b64 <main+0x274>
  400b40:	bf 1f 0d 40 00       	mov    $0x400d1f,%edi
  400b45:	31 c0                	xor    %eax,%eax
  400b47:	e8 d4 f9 ff ff       	callq  400520 <printf@plt>
  400b4c:	8b 35 02 15 20 00    	mov    0x201502(%rip),%esi        # 602054 <n>
  400b52:	e9 8f 00 00 00       	jmpq   400be6 <main+0x2f6>
  400b57:	48 89 d0             	mov    %rdx,%rax
  400b5a:	48 3b 30             	cmp    (%rax),%rsi
  400b5d:	7f da                	jg     400b39 <main+0x249>
  400b5f:	49 39 c4             	cmp    %rax,%r12
  400b62:	74 5f                	je     400bc3 <main+0x2d3>
  400b64:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b68:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400b6c:	83 05 e1 14 20 00 01 	addl   $0x1,0x2014e1(%rip)        # 602054 <n>
  400b73:	bf 75 0d 40 00       	mov    $0x400d75,%edi
  400b78:	31 c0                	xor    %eax,%eax
  400b7a:	e8 a1 f9 ff ff       	callq  400520 <printf@plt>
  400b7f:	8b 35 cf 14 20 00    	mov    0x2014cf(%rip),%esi        # 602054 <n>
  400b85:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  400b8a:	31 c0                	xor    %eax,%eax
  400b8c:	e8 8f f9 ff ff       	callq  400520 <printf@plt>
  400b91:	4d 85 e4             	test   %r12,%r12
  400b94:	0f 84 96 00 00 00    	je     400c30 <main+0x340>
  400b9a:	4c 89 e3             	mov    %r12,%rbx
  400b9d:	0f 1f 00             	nopl   (%rax)
  400ba0:	48 8b 33             	mov    (%rbx),%rsi
  400ba3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ba8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bac:	bf 08 0d 40 00       	mov    $0x400d08,%edi
  400bb1:	b0 01                	mov    $0x1,%al
  400bb3:	e8 68 f9 ff ff       	callq  400520 <printf@plt>
  400bb8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bbc:	48 85 db             	test   %rbx,%rbx
  400bbf:	75 df                	jne    400ba0 <main+0x2b0>
  400bc1:	eb 70                	jmp    400c33 <main+0x343>
  400bc3:	49 89 dc             	mov    %rbx,%r12
  400bc6:	eb a0                	jmp    400b68 <main+0x278>
  400bc8:	49 89 d4             	mov    %rdx,%r12
  400bcb:	bf 13 0d 40 00       	mov    $0x400d13,%edi
  400bd0:	31 c0                	xor    %eax,%eax
  400bd2:	e8 49 f9 ff ff       	callq  400520 <printf@plt>
  400bd7:	8b 35 77 14 20 00    	mov    0x201477(%rip),%esi        # 602054 <n>
  400bdd:	83 c6 ff             	add    $0xffffffff,%esi
  400be0:	89 35 6e 14 20 00    	mov    %esi,0x20146e(%rip)        # 602054 <n>
  400be6:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  400beb:	31 c0                	xor    %eax,%eax
  400bed:	e8 2e f9 ff ff       	callq  400520 <printf@plt>
  400bf2:	4d 85 e4             	test   %r12,%r12
  400bf5:	74 39                	je     400c30 <main+0x340>
  400bf7:	4c 89 e3             	mov    %r12,%rbx
  400bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400c00:	48 8b 33             	mov    (%rbx),%rsi
  400c03:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400c08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400c0c:	bf 08 0d 40 00       	mov    $0x400d08,%edi
  400c11:	b0 01                	mov    $0x1,%al
  400c13:	e8 08 f9 ff ff       	callq  400520 <printf@plt>
  400c18:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c1c:	48 85 db             	test   %rbx,%rbx
  400c1f:	75 df                	jne    400c00 <main+0x310>
  400c21:	eb 10                	jmp    400c33 <main+0x343>
  400c23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400c2a:	84 00 00 00 00 00 
  400c30:	45 31 e4             	xor    %r12d,%r12d
  400c33:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400c37:	85 c0                	test   %eax,%eax
  400c39:	0f 85 a1 fd ff ff    	jne    4009e0 <main+0xf0>
  400c3f:	31 c0                	xor    %eax,%eax
  400c41:	48 83 c4 18          	add    $0x18,%rsp
  400c45:	5b                   	pop    %rbx
  400c46:	41 5c                	pop    %r12
  400c48:	41 5e                	pop    %r14
  400c4a:	41 5f                	pop    %r15
  400c4c:	c3                   	retq   
  400c4d:	31 ff                	xor    %edi,%edi
  400c4f:	e8 fc f8 ff ff       	callq  400550 <exit@plt>
  400c54:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c5b:	00 00 00 
  400c5e:	66 90                	xchg   %ax,%ax

0000000000400c60 <__libc_csu_init>:
  400c60:	41 57                	push   %r15
  400c62:	41 56                	push   %r14
  400c64:	49 89 d7             	mov    %rdx,%r15
  400c67:	41 55                	push   %r13
  400c69:	41 54                	push   %r12
  400c6b:	4c 8d 25 8e 11 20 00 	lea    0x20118e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c72:	55                   	push   %rbp
  400c73:	48 8d 2d 8e 11 20 00 	lea    0x20118e(%rip),%rbp        # 601e08 <__init_array_end>
  400c7a:	53                   	push   %rbx
  400c7b:	41 89 fd             	mov    %edi,%r13d
  400c7e:	49 89 f6             	mov    %rsi,%r14
  400c81:	4c 29 e5             	sub    %r12,%rbp
  400c84:	48 83 ec 08          	sub    $0x8,%rsp
  400c88:	48 c1 fd 03          	sar    $0x3,%rbp
  400c8c:	e8 4f f8 ff ff       	callq  4004e0 <_init>
  400c91:	48 85 ed             	test   %rbp,%rbp
  400c94:	74 20                	je     400cb6 <__libc_csu_init+0x56>
  400c96:	31 db                	xor    %ebx,%ebx
  400c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c9f:	00 
  400ca0:	4c 89 fa             	mov    %r15,%rdx
  400ca3:	4c 89 f6             	mov    %r14,%rsi
  400ca6:	44 89 ef             	mov    %r13d,%edi
  400ca9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400cad:	48 83 c3 01          	add    $0x1,%rbx
  400cb1:	48 39 dd             	cmp    %rbx,%rbp
  400cb4:	75 ea                	jne    400ca0 <__libc_csu_init+0x40>
  400cb6:	48 83 c4 08          	add    $0x8,%rsp
  400cba:	5b                   	pop    %rbx
  400cbb:	5d                   	pop    %rbp
  400cbc:	41 5c                	pop    %r12
  400cbe:	41 5d                	pop    %r13
  400cc0:	41 5e                	pop    %r14
  400cc2:	41 5f                	pop    %r15
  400cc4:	c3                   	retq   
  400cc5:	90                   	nop
  400cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ccd:	00 00 00 

0000000000400cd0 <__libc_csu_fini>:
  400cd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400cd4 <_fini>:
  400cd4:	48 83 ec 08          	sub    $0x8,%rsp
  400cd8:	48 83 c4 08          	add    $0x8,%rsp
  400cdc:	c3                   	retq   
