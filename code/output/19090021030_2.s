
input/19090021030_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 1a 20 00 	mov    0x201afd(%rip),%rax        # 601ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 1a 20 00    	pushq  0x201af2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 1a 20 00    	jmpq   *0x201af4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <puts@plt>:
  400530:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <printf@plt>:
  400540:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <malloc@plt>:
  400550:	ff 25 da 1a 20 00    	jmpq   *0x201ada(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <exit@plt>:
  400570:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602040 <exit@GLIBC_2.2.5>
  400576:	68 05 00 00 00       	pushq  $0x5
  40057b:	e9 90 ff ff ff       	jmpq   400510 <.plt>

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	31 ed                	xor    %ebp,%ebp
  400582:	49 89 d1             	mov    %rdx,%r9
  400585:	5e                   	pop    %rsi
  400586:	48 89 e2             	mov    %rsp,%rdx
  400589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40058d:	50                   	push   %rax
  40058e:	54                   	push   %rsp
  40058f:	49 c7 c0 e0 0b 40 00 	mov    $0x400be0,%r8
  400596:	48 c7 c1 70 0b 40 00 	mov    $0x400b70,%rcx
  40059d:	48 c7 c7 d0 08 40 00 	mov    $0x4008d0,%rdi
  4005a4:	ff 15 46 1a 20 00    	callq  *0x201a46(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005c6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 20 60 00       	mov    $0x602058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 20 60 00       	mov    $0x602058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  4005fd:	48 89 e5             	mov    %rsp,%rbp
  400600:	48 c1 fe 03          	sar    $0x3,%rsi
  400604:	48 89 f0             	mov    %rsi,%rax
  400607:	48 c1 e8 3f          	shr    $0x3f,%rax
  40060b:	48 01 c6             	add    %rax,%rsi
  40060e:	48 d1 fe             	sar    %rsi
  400611:	74 15                	je     400628 <register_tm_clones+0x38>
  400613:	b8 00 00 00 00       	mov    $0x0,%eax
  400618:	48 85 c0             	test   %rax,%rax
  40061b:	74 0b                	je     400628 <register_tm_clones+0x38>
  40061d:	5d                   	pop    %rbp
  40061e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 1a 20 00 00 	cmpb   $0x0,0x201a21(%rip)        # 602058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 1a 20 00 01 	movb   $0x1,0x201a0f(%rip)        # 602058 <__TMC_END__>
  400649:	5d                   	pop    %rbp
  40064a:	c3                   	retq   
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400650:	f3 c3                	repz retq 
  400652:	0f 1f 40 00          	nopl   0x0(%rax)
  400656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40065d:	00 00 00 

0000000000400660 <frame_dummy>:
  400660:	55                   	push   %rbp
  400661:	48 89 e5             	mov    %rsp,%rbp
  400664:	5d                   	pop    %rbp
  400665:	eb 89                	jmp    4005f0 <register_tm_clones>
  400667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40066e:	00 00 

0000000000400670 <insert>:
  400670:	48 85 ff             	test   %rdi,%rdi
  400673:	74 46                	je     4006bb <insert+0x4b>
  400675:	4c 8d 4f 10          	lea    0x10(%rdi),%r9
  400679:	48 8b 47 10          	mov    0x10(%rdi),%rax
  40067d:	4c 8b 06             	mov    (%rsi),%r8
  400680:	48 85 c0             	test   %rax,%rax
  400683:	74 3b                	je     4006c0 <insert+0x50>
  400685:	31 c9                	xor    %ecx,%ecx
  400687:	49 89 fa             	mov    %rdi,%r10
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400690:	48 89 ca             	mov    %rcx,%rdx
  400693:	48 89 c1             	mov    %rax,%rcx
  400696:	4d 3b 02             	cmp    (%r10),%r8
  400699:	7e 13                	jle    4006ae <insert+0x3e>
  40069b:	4c 8d 49 10          	lea    0x10(%rcx),%r9
  40069f:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4006a3:	49 89 ca             	mov    %rcx,%r10
  4006a6:	48 89 ca             	mov    %rcx,%rdx
  4006a9:	48 85 c0             	test   %rax,%rax
  4006ac:	75 e2                	jne    400690 <insert+0x20>
  4006ae:	4d 3b 02             	cmp    (%r10),%r8
  4006b1:	7e 17                	jle    4006ca <insert+0x5a>
  4006b3:	49 89 31             	mov    %rsi,(%r9)
  4006b6:	45 31 d2             	xor    %r10d,%r10d
  4006b9:	eb 20                	jmp    4006db <insert+0x6b>
  4006bb:	45 31 d2             	xor    %r10d,%r10d
  4006be:	eb 18                	jmp    4006d8 <insert+0x68>
  4006c0:	31 d2                	xor    %edx,%edx
  4006c2:	49 89 fa             	mov    %rdi,%r10
  4006c5:	4d 3b 02             	cmp    (%r10),%r8
  4006c8:	7f e9                	jg     4006b3 <insert+0x43>
  4006ca:	49 39 fa             	cmp    %rdi,%r10
  4006cd:	74 06                	je     4006d5 <insert+0x65>
  4006cf:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006d3:	eb 06                	jmp    4006db <insert+0x6b>
  4006d5:	49 89 fa             	mov    %rdi,%r10
  4006d8:	48 89 f7             	mov    %rsi,%rdi
  4006db:	4c 89 56 10          	mov    %r10,0x10(%rsi)
  4006df:	83 05 76 19 20 00 01 	addl   $0x1,0x201976(%rip)        # 60205c <n>
  4006e6:	48 89 f8             	mov    %rdi,%rax
  4006e9:	c3                   	retq   
  4006ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006f0 <b>:
  4006f0:	41 57                	push   %r15
  4006f2:	41 56                	push   %r14
  4006f4:	53                   	push   %rbx
  4006f5:	49 89 fe             	mov    %rdi,%r14
  4006f8:	eb 11                	jmp    40070b <b+0x1b>
  4006fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400700:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  400704:	83 05 51 19 20 00 01 	addl   $0x1,0x201951(%rip)        # 60205c <n>
  40070b:	bf 18 00 00 00       	mov    $0x18,%edi
  400710:	e8 3b fe ff ff       	callq  400550 <malloc@plt>
  400715:	49 89 c7             	mov    %rax,%r15
  400718:	49 8d 57 08          	lea    0x8(%r15),%rdx
  40071c:	bf 18 0c 40 00       	mov    $0x400c18,%edi
  400721:	31 c0                	xor    %eax,%eax
  400723:	4c 89 fe             	mov    %r15,%rsi
  400726:	e8 35 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  40072b:	49 8b 07             	mov    (%r15),%rax
  40072e:	48 85 c0             	test   %rax,%rax
  400731:	0f 84 7c 00 00 00    	je     4007b3 <b+0xc3>
  400737:	4d 85 f6             	test   %r14,%r14
  40073a:	74 44                	je     400780 <b+0x90>
  40073c:	49 8d 56 10          	lea    0x10(%r14),%rdx
  400740:	49 8b 5e 10          	mov    0x10(%r14),%rbx
  400744:	48 85 db             	test   %rbx,%rbx
  400747:	74 47                	je     400790 <b+0xa0>
  400749:	31 ff                	xor    %edi,%edi
  40074b:	4c 89 f1             	mov    %r14,%rcx
  40074e:	66 90                	xchg   %ax,%ax
  400750:	48 89 fe             	mov    %rdi,%rsi
  400753:	48 89 df             	mov    %rbx,%rdi
  400756:	48 3b 01             	cmp    (%rcx),%rax
  400759:	7e 13                	jle    40076e <b+0x7e>
  40075b:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40075f:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400763:	48 89 f9             	mov    %rdi,%rcx
  400766:	48 89 fe             	mov    %rdi,%rsi
  400769:	48 85 db             	test   %rbx,%rbx
  40076c:	75 e2                	jne    400750 <b+0x60>
  40076e:	48 3b 01             	cmp    (%rcx),%rax
  400771:	7e 27                	jle    40079a <b+0xaa>
  400773:	4c 89 3a             	mov    %r15,(%rdx)
  400776:	31 c9                	xor    %ecx,%ecx
  400778:	eb 86                	jmp    400700 <b+0x10>
  40077a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400780:	31 c9                	xor    %ecx,%ecx
  400782:	4d 89 fe             	mov    %r15,%r14
  400785:	e9 76 ff ff ff       	jmpq   400700 <b+0x10>
  40078a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400790:	4c 89 f1             	mov    %r14,%rcx
  400793:	31 f6                	xor    %esi,%esi
  400795:	48 3b 01             	cmp    (%rcx),%rax
  400798:	7f d9                	jg     400773 <b+0x83>
  40079a:	4c 39 f1             	cmp    %r14,%rcx
  40079d:	74 09                	je     4007a8 <b+0xb8>
  40079f:	4c 89 7e 10          	mov    %r15,0x10(%rsi)
  4007a3:	e9 58 ff ff ff       	jmpq   400700 <b+0x10>
  4007a8:	4c 89 f1             	mov    %r14,%rcx
  4007ab:	4d 89 fe             	mov    %r15,%r14
  4007ae:	e9 4d ff ff ff       	jmpq   400700 <b+0x10>
  4007b3:	4c 89 ff             	mov    %r15,%rdi
  4007b6:	e8 65 fd ff ff       	callq  400520 <free@plt>
  4007bb:	4c 89 f0             	mov    %r14,%rax
  4007be:	5b                   	pop    %rbx
  4007bf:	41 5e                	pop    %r14
  4007c1:	41 5f                	pop    %r15
  4007c3:	c3                   	retq   
  4007c4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007cb:	00 00 00 00 00 

00000000004007d0 <del>:
  4007d0:	41 57                	push   %r15
  4007d2:	41 56                	push   %r14
  4007d4:	41 55                	push   %r13
  4007d6:	41 54                	push   %r12
  4007d8:	53                   	push   %rbx
  4007d9:	49 89 f7             	mov    %rsi,%r15
  4007dc:	49 89 fe             	mov    %rdi,%r14
  4007df:	4d 85 f6             	test   %r14,%r14
  4007e2:	74 1c                	je     400800 <del+0x30>
  4007e4:	4d 39 3e             	cmp    %r15,(%r14)
  4007e7:	75 26                	jne    40080f <del+0x3f>
  4007e9:	4d 8b 6e 10          	mov    0x10(%r14),%r13
  4007ed:	4d 89 f4             	mov    %r14,%r12
  4007f0:	4c 89 f7             	mov    %r14,%rdi
  4007f3:	e8 28 fd ff ff       	callq  400520 <free@plt>
  4007f8:	4c 89 f3             	mov    %r14,%rbx
  4007fb:	4d 89 ee             	mov    %r13,%r14
  4007fe:	eb 4c                	jmp    40084c <del+0x7c>
  400800:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400805:	e8 26 fd ff ff       	callq  400530 <puts@plt>
  40080a:	45 31 f6             	xor    %r14d,%r14d
  40080d:	eb 5e                	jmp    40086d <del+0x9d>
  40080f:	4d 89 f4             	mov    %r14,%r12
  400812:	4c 89 f3             	mov    %r14,%rbx
  400815:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40081c:	00 00 00 00 
  400820:	48 89 d8             	mov    %rbx,%rax
  400823:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400827:	48 85 db             	test   %rbx,%rbx
  40082a:	74 2a                	je     400856 <del+0x86>
  40082c:	4c 39 3b             	cmp    %r15,(%rbx)
  40082f:	49 89 dc             	mov    %rbx,%r12
  400832:	75 ec                	jne    400820 <del+0x50>
  400834:	4c 8b 6b 10          	mov    0x10(%rbx),%r13
  400838:	4c 39 f3             	cmp    %r14,%rbx
  40083b:	74 3d                	je     40087a <del+0xaa>
  40083d:	4c 89 68 10          	mov    %r13,0x10(%rax)
  400841:	48 89 df             	mov    %rbx,%rdi
  400844:	e8 d7 fc ff ff       	callq  400520 <free@plt>
  400849:	49 89 dc             	mov    %rbx,%r12
  40084c:	83 05 09 18 20 00 ff 	addl   $0xffffffff,0x201809(%rip)        # 60205c <n>
  400853:	48 89 d8             	mov    %rbx,%rax
  400856:	4d 39 3c 24          	cmp    %r15,(%r12)
  40085a:	74 11                	je     40086d <del+0x9d>
  40085c:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  400861:	75 0a                	jne    40086d <del+0x9d>
  400863:	bf 50 0c 40 00       	mov    $0x400c50,%edi
  400868:	e8 c3 fc ff ff       	callq  400530 <puts@plt>
  40086d:	4c 89 f0             	mov    %r14,%rax
  400870:	5b                   	pop    %rbx
  400871:	41 5c                	pop    %r12
  400873:	41 5d                	pop    %r13
  400875:	41 5e                	pop    %r14
  400877:	41 5f                	pop    %r15
  400879:	c3                   	retq   
  40087a:	49 89 dc             	mov    %rbx,%r12
  40087d:	e9 6e ff ff ff       	jmpq   4007f0 <del+0x20>
  400882:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400889:	1f 84 00 00 00 00 00 

0000000000400890 <print>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	48 85 db             	test   %rbx,%rbx
  400897:	74 2a                	je     4008c3 <print+0x33>
  400899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4008a0:	48 8b 33             	mov    (%rbx),%rsi
  4008a3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008a8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ac:	bf 1f 0c 40 00       	mov    $0x400c1f,%edi
  4008b1:	b0 01                	mov    $0x1,%al
  4008b3:	e8 88 fc ff ff       	callq  400540 <printf@plt>
  4008b8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008bc:	48 85 db             	test   %rbx,%rbx
  4008bf:	75 df                	jne    4008a0 <print+0x10>
  4008c1:	5b                   	pop    %rbx
  4008c2:	c3                   	retq   
  4008c3:	bf 39 0c 40 00       	mov    $0x400c39,%edi
  4008c8:	5b                   	pop    %rbx
  4008c9:	e9 62 fc ff ff       	jmpq   400530 <puts@plt>
  4008ce:	66 90                	xchg   %ax,%ax

00000000004008d0 <main>:
  4008d0:	41 57                	push   %r15
  4008d2:	41 56                	push   %r14
  4008d4:	41 54                	push   %r12
  4008d6:	53                   	push   %rbx
  4008d7:	50                   	push   %rax
  4008d8:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  4008dd:	eb 0b                	jmp    4008ea <main+0x1a>
  4008df:	90                   	nop
  4008e0:	bf 39 0c 40 00       	mov    $0x400c39,%edi
  4008e5:	e8 46 fc ff ff       	callq  400530 <puts@plt>
  4008ea:	45 31 ff             	xor    %r15d,%r15d
  4008ed:	e9 ef 00 00 00       	jmpq   4009e1 <main+0x111>
  4008f2:	4c 89 fb             	mov    %r15,%rbx
  4008f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008fc:	00 00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 1f 0c 40 00       	mov    $0x400c1f,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 28 fc ff ff       	callq  400540 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x30>
  400921:	e9 bb 00 00 00       	jmpq   4009e1 <main+0x111>
  400926:	31 c9                	xor    %ecx,%ecx
  400928:	eb 7c                	jmp    4009a6 <main+0xd6>
  40092a:	31 c9                	xor    %ecx,%ecx
  40092c:	eb 35                	jmp    400963 <main+0x93>
  40092e:	4c 89 f9             	mov    %r15,%rcx
  400931:	31 f6                	xor    %esi,%esi
  400933:	48 3b 11             	cmp    (%rcx),%rdx
  400936:	0f 8f 5b 01 00 00    	jg     400a97 <main+0x1c7>
  40093c:	4c 39 f9             	cmp    %r15,%rcx
  40093f:	74 1f                	je     400960 <main+0x90>
  400941:	4c 89 66 10          	mov    %r12,0x10(%rsi)
  400945:	eb 1f                	jmp    400966 <main+0x96>
  400947:	4c 89 f9             	mov    %r15,%rcx
  40094a:	31 f6                	xor    %esi,%esi
  40094c:	48 3b 11             	cmp    (%rcx),%rdx
  40094f:	0f 8f d2 01 00 00    	jg     400b27 <main+0x257>
  400955:	4c 39 f9             	cmp    %r15,%rcx
  400958:	74 49                	je     4009a3 <main+0xd3>
  40095a:	4c 89 66 10          	mov    %r12,0x10(%rsi)
  40095e:	eb 49                	jmp    4009a9 <main+0xd9>
  400960:	4c 89 f9             	mov    %r15,%rcx
  400963:	4d 89 e7             	mov    %r12,%r15
  400966:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40096b:	83 05 ea 16 20 00 01 	addl   $0x1,0x2016ea(%rip)        # 60205c <n>
  400972:	4c 89 fb             	mov    %r15,%rbx
  400975:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40097c:	00 00 00 00 
  400980:	48 8b 33             	mov    (%rbx),%rsi
  400983:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400988:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40098c:	bf 1f 0c 40 00       	mov    $0x400c1f,%edi
  400991:	b0 01                	mov    $0x1,%al
  400993:	e8 a8 fb ff ff       	callq  400540 <printf@plt>
  400998:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40099c:	48 85 db             	test   %rbx,%rbx
  40099f:	75 df                	jne    400980 <main+0xb0>
  4009a1:	eb 3e                	jmp    4009e1 <main+0x111>
  4009a3:	4c 89 f9             	mov    %r15,%rcx
  4009a6:	4d 89 e7             	mov    %r12,%r15
  4009a9:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  4009ae:	83 05 a7 16 20 00 01 	addl   $0x1,0x2016a7(%rip)        # 60205c <n>
  4009b5:	4c 89 fb             	mov    %r15,%rbx
  4009b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009bf:	00 
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009cc:	bf 1f 0c 40 00       	mov    $0x400c1f,%edi
  4009d1:	b0 01                	mov    $0x1,%al
  4009d3:	e8 68 fb ff ff       	callq  400540 <printf@plt>
  4009d8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009dc:	48 85 db             	test   %rbx,%rbx
  4009df:	75 df                	jne    4009c0 <main+0xf0>
  4009e1:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  4009e6:	e8 45 fb ff ff       	callq  400530 <puts@plt>
  4009eb:	bf 27 0c 40 00       	mov    $0x400c27,%edi
  4009f0:	31 c0                	xor    %eax,%eax
  4009f2:	e8 49 fb ff ff       	callq  400540 <printf@plt>
  4009f7:	bf 36 0c 40 00       	mov    $0x400c36,%edi
  4009fc:	31 c0                	xor    %eax,%eax
  4009fe:	4c 89 f6             	mov    %r14,%rsi
  400a01:	e8 5a fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  400a06:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400a0a:	83 c0 ff             	add    $0xffffffff,%eax
  400a0d:	83 f8 03             	cmp    $0x3,%eax
  400a10:	77 cf                	ja     4009e1 <main+0x111>
  400a12:	ff 24 c5 f8 0b 40 00 	jmpq   *0x400bf8(,%rax,8)
  400a19:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400a1e:	31 c0                	xor    %eax,%eax
  400a20:	e8 1b fb ff ff       	callq  400540 <printf@plt>
  400a25:	bf 18 00 00 00       	mov    $0x18,%edi
  400a2a:	e8 21 fb ff ff       	callq  400550 <malloc@plt>
  400a2f:	49 89 c4             	mov    %rax,%r12
  400a32:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
  400a37:	bf 18 0c 40 00       	mov    $0x400c18,%edi
  400a3c:	31 c0                	xor    %eax,%eax
  400a3e:	4c 89 e6             	mov    %r12,%rsi
  400a41:	e8 1a fb ff ff       	callq  400560 <__isoc99_scanf@plt>
  400a46:	4d 85 ff             	test   %r15,%r15
  400a49:	0f 84 db fe ff ff    	je     40092a <main+0x5a>
  400a4f:	49 8d 47 10          	lea    0x10(%r15),%rax
  400a53:	49 8b 5f 10          	mov    0x10(%r15),%rbx
  400a57:	49 8b 14 24          	mov    (%r12),%rdx
  400a5b:	48 85 db             	test   %rbx,%rbx
  400a5e:	0f 84 ca fe ff ff    	je     40092e <main+0x5e>
  400a64:	31 ff                	xor    %edi,%edi
  400a66:	4c 89 f9             	mov    %r15,%rcx
  400a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a70:	48 89 fe             	mov    %rdi,%rsi
  400a73:	48 89 df             	mov    %rbx,%rdi
  400a76:	48 3b 11             	cmp    (%rcx),%rdx
  400a79:	7e 13                	jle    400a8e <main+0x1be>
  400a7b:	48 8d 47 10          	lea    0x10(%rdi),%rax
  400a7f:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a83:	48 89 f9             	mov    %rdi,%rcx
  400a86:	48 89 fe             	mov    %rdi,%rsi
  400a89:	48 85 db             	test   %rbx,%rbx
  400a8c:	75 e2                	jne    400a70 <main+0x1a0>
  400a8e:	48 3b 11             	cmp    (%rcx),%rdx
  400a91:	0f 8e a5 fe ff ff    	jle    40093c <main+0x6c>
  400a97:	4c 89 20             	mov    %r12,(%rax)
  400a9a:	31 c9                	xor    %ecx,%ecx
  400a9c:	e9 c5 fe ff ff       	jmpq   400966 <main+0x96>
  400aa1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aa8:	0f 1f 84 00 00 00 00 
  400aaf:	00 
  400ab0:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400ab5:	31 c0                	xor    %eax,%eax
  400ab7:	e8 84 fa ff ff       	callq  400540 <printf@plt>
  400abc:	bf 18 00 00 00       	mov    $0x18,%edi
  400ac1:	e8 8a fa ff ff       	callq  400550 <malloc@plt>
  400ac6:	49 89 c4             	mov    %rax,%r12
  400ac9:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
  400ace:	bf 18 0c 40 00       	mov    $0x400c18,%edi
  400ad3:	31 c0                	xor    %eax,%eax
  400ad5:	4c 89 e6             	mov    %r12,%rsi
  400ad8:	e8 83 fa ff ff       	callq  400560 <__isoc99_scanf@plt>
  400add:	4d 85 ff             	test   %r15,%r15
  400ae0:	0f 84 40 fe ff ff    	je     400926 <main+0x56>
  400ae6:	49 8d 47 10          	lea    0x10(%r15),%rax
  400aea:	49 8b 5f 10          	mov    0x10(%r15),%rbx
  400aee:	49 8b 14 24          	mov    (%r12),%rdx
  400af2:	48 85 db             	test   %rbx,%rbx
  400af5:	0f 84 4c fe ff ff    	je     400947 <main+0x77>
  400afb:	31 ff                	xor    %edi,%edi
  400afd:	4c 89 f9             	mov    %r15,%rcx
  400b00:	48 89 fe             	mov    %rdi,%rsi
  400b03:	48 89 df             	mov    %rbx,%rdi
  400b06:	48 3b 11             	cmp    (%rcx),%rdx
  400b09:	7e 13                	jle    400b1e <main+0x24e>
  400b0b:	48 8d 47 10          	lea    0x10(%rdi),%rax
  400b0f:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400b13:	48 89 f9             	mov    %rdi,%rcx
  400b16:	48 89 fe             	mov    %rdi,%rsi
  400b19:	48 85 db             	test   %rbx,%rbx
  400b1c:	75 e2                	jne    400b00 <main+0x230>
  400b1e:	48 3b 11             	cmp    (%rcx),%rdx
  400b21:	0f 8e 2e fe ff ff    	jle    400955 <main+0x85>
  400b27:	4c 89 20             	mov    %r12,(%rax)
  400b2a:	31 c9                	xor    %ecx,%ecx
  400b2c:	e9 78 fe ff ff       	jmpq   4009a9 <main+0xd9>
  400b31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b38:	0f 1f 84 00 00 00 00 
  400b3f:	00 
  400b40:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  400b45:	e8 e6 f9 ff ff       	callq  400530 <puts@plt>
  400b4a:	4c 89 ff             	mov    %r15,%rdi
  400b4d:	e8 9e fb ff ff       	callq  4006f0 <b>
  400b52:	49 89 c7             	mov    %rax,%r15
  400b55:	4d 85 ff             	test   %r15,%r15
  400b58:	0f 85 94 fd ff ff    	jne    4008f2 <main+0x22>
  400b5e:	e9 7d fd ff ff       	jmpq   4008e0 <main+0x10>
  400b63:	31 ff                	xor    %edi,%edi
  400b65:	e8 06 fa ff ff       	callq  400570 <exit@plt>
  400b6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b70 <__libc_csu_init>:
  400b70:	41 57                	push   %r15
  400b72:	41 56                	push   %r14
  400b74:	49 89 d7             	mov    %rdx,%r15
  400b77:	41 55                	push   %r13
  400b79:	41 54                	push   %r12
  400b7b:	4c 8d 25 7e 12 20 00 	lea    0x20127e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b82:	55                   	push   %rbp
  400b83:	48 8d 2d 7e 12 20 00 	lea    0x20127e(%rip),%rbp        # 601e08 <__init_array_end>
  400b8a:	53                   	push   %rbx
  400b8b:	41 89 fd             	mov    %edi,%r13d
  400b8e:	49 89 f6             	mov    %rsi,%r14
  400b91:	4c 29 e5             	sub    %r12,%rbp
  400b94:	48 83 ec 08          	sub    $0x8,%rsp
  400b98:	48 c1 fd 03          	sar    $0x3,%rbp
  400b9c:	e8 4f f9 ff ff       	callq  4004f0 <_init>
  400ba1:	48 85 ed             	test   %rbp,%rbp
  400ba4:	74 20                	je     400bc6 <__libc_csu_init+0x56>
  400ba6:	31 db                	xor    %ebx,%ebx
  400ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400baf:	00 
  400bb0:	4c 89 fa             	mov    %r15,%rdx
  400bb3:	4c 89 f6             	mov    %r14,%rsi
  400bb6:	44 89 ef             	mov    %r13d,%edi
  400bb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bbd:	48 83 c3 01          	add    $0x1,%rbx
  400bc1:	48 39 dd             	cmp    %rbx,%rbp
  400bc4:	75 ea                	jne    400bb0 <__libc_csu_init+0x40>
  400bc6:	48 83 c4 08          	add    $0x8,%rsp
  400bca:	5b                   	pop    %rbx
  400bcb:	5d                   	pop    %rbp
  400bcc:	41 5c                	pop    %r12
  400bce:	41 5d                	pop    %r13
  400bd0:	41 5e                	pop    %r14
  400bd2:	41 5f                	pop    %r15
  400bd4:	c3                   	retq   
  400bd5:	90                   	nop
  400bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bdd:	00 00 00 

0000000000400be0 <__libc_csu_fini>:
  400be0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400be4 <_fini>:
  400be4:	48 83 ec 08          	sub    $0x8,%rsp
  400be8:	48 83 c4 08          	add    $0x8,%rsp
  400bec:	c3                   	retq   
