
c/19020031118_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 0a 20 00 	mov    0x200afd(%rip),%rax        # 600ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <putchar@plt>:
  400530:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601020 <putchar@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <puts@plt>:
  400540:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601028 <puts@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <printf@plt>:
  400550:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601030 <printf@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <malloc@plt>:
  400560:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601038 <malloc@GLIBC_2.2.5>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <__isoc99_scanf@plt>:
  400570:	ff 25 ca 0a 20 00    	jmpq   *0x200aca(%rip)        # 601040 <__isoc99_scanf@GLIBC_2.7>
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
  40058f:	49 c7 c0 20 0a 40 00 	mov    $0x400a20,%r8
  400596:	48 c7 c1 b0 09 40 00 	mov    $0x4009b0,%rcx
  40059d:	48 c7 c7 e0 07 40 00 	mov    $0x4007e0,%rdi
  4005a4:	ff 15 46 0a 20 00    	callq  *0x200a46(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 10 60 00       	mov    $0x601058,%eax
  4005c6:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 10 60 00       	mov    $0x601058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
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
  40061e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 0a 20 00 00 	cmpb   $0x0,0x200a21(%rip)        # 601058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 0a 20 00 01 	movb   $0x1,0x200a0f(%rip)        # 601058 <__TMC_END__>
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

0000000000400670 <create>:
  400670:	50                   	push   %rax
  400671:	bf 18 00 00 00       	mov    $0x18,%edi
  400676:	e8 e5 fe ff ff       	callq  400560 <malloc@plt>
  40067b:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400682:	00 
  400683:	59                   	pop    %rcx
  400684:	c3                   	retq   
  400685:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40068c:	00 00 00 00 

0000000000400690 <insert>:
  400690:	48 8d 47 10          	lea    0x10(%rdi),%rax
  400694:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  400698:	48 85 c9             	test   %rcx,%rcx
  40069b:	74 1b                	je     4006b8 <insert+0x28>
  40069d:	4c 8b 06             	mov    (%rsi),%r8
  4006a0:	4c 3b 01             	cmp    (%rcx),%r8
  4006a3:	7e 22                	jle    4006c7 <insert+0x37>
  4006a5:	48 89 c8             	mov    %rcx,%rax
  4006a8:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4006ac:	48 83 c0 10          	add    $0x10,%rax
  4006b0:	48 89 d1             	mov    %rdx,%rcx
  4006b3:	48 85 d2             	test   %rdx,%rdx
  4006b6:	75 e8                	jne    4006a0 <insert+0x10>
  4006b8:	48 89 30             	mov    %rsi,(%rax)
  4006bb:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4006c2:	00 
  4006c3:	48 89 f8             	mov    %rdi,%rax
  4006c6:	c3                   	retq   
  4006c7:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  4006cb:	48 89 30             	mov    %rsi,(%rax)
  4006ce:	48 89 f8             	mov    %rdi,%rax
  4006d1:	c3                   	retq   
  4006d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006d9:	1f 84 00 00 00 00 00 

00000000004006e0 <del>:
  4006e0:	55                   	push   %rbp
  4006e1:	41 57                	push   %r15
  4006e3:	41 56                	push   %r14
  4006e5:	53                   	push   %rbx
  4006e6:	50                   	push   %rax
  4006e7:	41 89 d7             	mov    %edx,%r15d
  4006ea:	48 89 f3             	mov    %rsi,%rbx
  4006ed:	49 89 fe             	mov    %rdi,%r14
  4006f0:	49 8b 6e 10          	mov    0x10(%r14),%rbp
  4006f4:	48 85 ed             	test   %rbp,%rbp
  4006f7:	74 64                	je     40075d <del+0x7d>
  4006f9:	49 39 1e             	cmp    %rbx,(%r14)
  4006fc:	74 55                	je     400753 <del+0x73>
  4006fe:	31 c0                	xor    %eax,%eax
  400700:	4c 89 f1             	mov    %r14,%rcx
  400703:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40070a:	84 00 00 00 00 00 
  400710:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  400714:	48 39 da             	cmp    %rbx,%rdx
  400717:	75 22                	jne    40073b <del+0x5b>
  400719:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40071d:	4c 39 f0             	cmp    %r14,%rax
  400720:	74 04                	je     400726 <del+0x46>
  400722:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400726:	48 89 ef             	mov    %rbp,%rdi
  400729:	e8 f2 fd ff ff       	callq  400520 <free@plt>
  40072e:	41 83 c7 ff          	add    $0xffffffff,%r15d
  400732:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  400736:	b8 01 00 00 00       	mov    $0x1,%eax
  40073b:	48 39 da             	cmp    %rbx,%rdx
  40073e:	74 0f                	je     40074f <del+0x6f>
  400740:	48 89 e9             	mov    %rbp,%rcx
  400743:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  400747:	48 89 d5             	mov    %rdx,%rbp
  40074a:	48 85 d2             	test   %rdx,%rdx
  40074d:	75 c1                	jne    400710 <del+0x30>
  40074f:	85 c0                	test   %eax,%eax
  400751:	75 0a                	jne    40075d <del+0x7d>
  400753:	bf f0 0a 40 00       	mov    $0x400af0,%edi
  400758:	e8 e3 fd ff ff       	callq  400540 <puts@plt>
  40075d:	49 63 c7             	movslq %r15d,%rax
  400760:	48 83 c4 08          	add    $0x8,%rsp
  400764:	5b                   	pop    %rbx
  400765:	41 5e                	pop    %r14
  400767:	41 5f                	pop    %r15
  400769:	5d                   	pop    %rbp
  40076a:	c3                   	retq   
  40076b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400770 <print>:
  400770:	53                   	push   %rbx
  400771:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400775:	48 85 db             	test   %rbx,%rbx
  400778:	74 39                	je     4007b3 <print+0x43>
  40077a:	bf 34 0a 40 00       	mov    $0x400a34,%edi
  40077f:	31 c0                	xor    %eax,%eax
  400781:	e8 ca fd ff ff       	callq  400550 <printf@plt>
  400786:	bf 70 0b 40 00       	mov    $0x400b70,%edi
  40078b:	e8 b0 fd ff ff       	callq  400540 <puts@plt>
  400790:	48 8b 33             	mov    (%rbx),%rsi
  400793:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400798:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40079c:	bf 61 0a 40 00       	mov    $0x400a61,%edi
  4007a1:	b0 01                	mov    $0x1,%al
  4007a3:	e8 a8 fd ff ff       	callq  400550 <printf@plt>
  4007a8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007ac:	48 85 db             	test   %rbx,%rbx
  4007af:	75 df                	jne    400790 <print+0x20>
  4007b1:	eb 0a                	jmp    4007bd <print+0x4d>
  4007b3:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  4007b8:	e8 83 fd ff ff       	callq  400540 <puts@plt>
  4007bd:	bf 40 0b 40 00       	mov    $0x400b40,%edi
  4007c2:	e8 79 fd ff ff       	callq  400540 <puts@plt>
  4007c7:	bf 0a 00 00 00       	mov    $0xa,%edi
  4007cc:	5b                   	pop    %rbx
  4007cd:	e9 5e fd ff ff       	jmpq   400530 <putchar@plt>
  4007d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007d9:	1f 84 00 00 00 00 00 

00000000004007e0 <main>:
  4007e0:	55                   	push   %rbp
  4007e1:	41 57                	push   %r15
  4007e3:	41 56                	push   %r14
  4007e5:	41 55                	push   %r13
  4007e7:	41 54                	push   %r12
  4007e9:	53                   	push   %rbx
  4007ea:	48 83 ec 18          	sub    $0x18,%rsp
  4007ee:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  4007f3:	e8 48 fd ff ff       	callq  400540 <puts@plt>
  4007f8:	bf 18 00 00 00       	mov    $0x18,%edi
  4007fd:	e8 5e fd ff ff       	callq  400560 <malloc@plt>
  400802:	49 89 c4             	mov    %rax,%r12
  400805:	4d 8d 6c 24 10       	lea    0x10(%r12),%r13
  40080a:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
  400811:	00 00 
  400813:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400818:	31 ed                	xor    %ebp,%ebp
  40081a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400820:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400825:	e8 16 fd ff ff       	callq  400540 <puts@plt>
  40082a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400831:	ff 
  400832:	bf 85 0a 40 00       	mov    $0x400a85,%edi
  400837:	31 c0                	xor    %eax,%eax
  400839:	e8 12 fd ff ff       	callq  400550 <printf@plt>
  40083e:	bf 92 0a 40 00       	mov    $0x400a92,%edi
  400843:	31 c0                	xor    %eax,%eax
  400845:	4c 89 f6             	mov    %r14,%rsi
  400848:	e8 23 fd ff ff       	callq  400570 <__isoc99_scanf@plt>
  40084d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400851:	83 f8 02             	cmp    $0x2,%eax
  400854:	74 7a                	je     4008d0 <main+0xf0>
  400856:	83 f8 01             	cmp    $0x1,%eax
  400859:	0f 85 2b 01 00 00    	jne    40098a <main+0x1aa>
  40085f:	bf 95 0a 40 00       	mov    $0x400a95,%edi
  400864:	31 c0                	xor    %eax,%eax
  400866:	e8 e5 fc ff ff       	callq  400550 <printf@plt>
  40086b:	bf 18 00 00 00       	mov    $0x18,%edi
  400870:	e8 eb fc ff ff       	callq  400560 <malloc@plt>
  400875:	48 89 c3             	mov    %rax,%rbx
  400878:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40087c:	bf b4 0a 40 00       	mov    $0x400ab4,%edi
  400881:	31 c0                	xor    %eax,%eax
  400883:	48 89 de             	mov    %rbx,%rsi
  400886:	e8 e5 fc ff ff       	callq  400570 <__isoc99_scanf@plt>
  40088b:	83 c5 01             	add    $0x1,%ebp
  40088e:	49 8b 45 00          	mov    0x0(%r13),%rax
  400892:	48 8b 33             	mov    (%rbx),%rsi
  400895:	4c 89 e9             	mov    %r13,%rcx
  400898:	48 85 c0             	test   %rax,%rax
  40089b:	74 1f                	je     4008bc <main+0xdc>
  40089d:	0f 1f 00             	nopl   (%rax)
  4008a0:	48 3b 30             	cmp    (%rax),%rsi
  4008a3:	0f 8e b6 00 00 00    	jle    40095f <main+0x17f>
  4008a9:	48 89 c1             	mov    %rax,%rcx
  4008ac:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4008b0:	48 83 c1 10          	add    $0x10,%rcx
  4008b4:	48 89 d0             	mov    %rdx,%rax
  4008b7:	48 85 d2             	test   %rdx,%rdx
  4008ba:	75 e4                	jne    4008a0 <main+0xc0>
  4008bc:	48 89 19             	mov    %rbx,(%rcx)
  4008bf:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4008c6:	00 
  4008c7:	e9 9a 00 00 00       	jmpq   400966 <main+0x186>
  4008cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4008d0:	bf c8 0a 40 00       	mov    $0x400ac8,%edi
  4008d5:	31 c0                	xor    %eax,%eax
  4008d7:	e8 74 fc ff ff       	callq  400550 <printf@plt>
  4008dc:	bf dd 0a 40 00       	mov    $0x400add,%edi
  4008e1:	31 c0                	xor    %eax,%eax
  4008e3:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4008e8:	e8 83 fc ff ff       	callq  400570 <__isoc99_scanf@plt>
  4008ed:	49 8b 5d 00          	mov    0x0(%r13),%rbx
  4008f1:	48 85 db             	test   %rbx,%rbx
  4008f4:	74 7c                	je     400972 <main+0x192>
  4008f6:	4c 8b 7c 24 10       	mov    0x10(%rsp),%r15
  4008fb:	4d 39 3c 24          	cmp    %r15,(%r12)
  4008ff:	74 52                	je     400953 <main+0x173>
  400901:	31 c0                	xor    %eax,%eax
  400903:	4c 89 e9             	mov    %r13,%rcx
  400906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40090d:	00 00 00 
  400910:	48 8b 13             	mov    (%rbx),%rdx
  400913:	4c 39 fa             	cmp    %r15,%rdx
  400916:	75 1f                	jne    400937 <main+0x157>
  400918:	48 8b 43 10          	mov    0x10(%rbx),%rax
  40091c:	4c 39 e0             	cmp    %r12,%rax
  40091f:	74 03                	je     400924 <main+0x144>
  400921:	48 89 01             	mov    %rax,(%rcx)
  400924:	48 89 df             	mov    %rbx,%rdi
  400927:	e8 f4 fb ff ff       	callq  400520 <free@plt>
  40092c:	83 c5 ff             	add    $0xffffffff,%ebp
  40092f:	48 8b 13             	mov    (%rbx),%rdx
  400932:	b8 01 00 00 00       	mov    $0x1,%eax
  400937:	4c 39 fa             	cmp    %r15,%rdx
  40093a:	74 13                	je     40094f <main+0x16f>
  40093c:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  400940:	48 83 c3 10          	add    $0x10,%rbx
  400944:	48 89 d9             	mov    %rbx,%rcx
  400947:	48 89 d3             	mov    %rdx,%rbx
  40094a:	48 85 d2             	test   %rdx,%rdx
  40094d:	75 c1                	jne    400910 <main+0x130>
  40094f:	85 c0                	test   %eax,%eax
  400951:	75 1f                	jne    400972 <main+0x192>
  400953:	bf f0 0a 40 00       	mov    $0x400af0,%edi
  400958:	e8 e3 fb ff ff       	callq  400540 <puts@plt>
  40095d:	eb 13                	jmp    400972 <main+0x192>
  40095f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400963:	48 89 19             	mov    %rbx,(%rcx)
  400966:	bf ba 0a 40 00       	mov    $0x400aba,%edi
  40096b:	31 c0                	xor    %eax,%eax
  40096d:	e8 de fb ff ff       	callq  400550 <printf@plt>
  400972:	bf 0a 00 00 00       	mov    $0xa,%edi
  400977:	e8 b4 fb ff ff       	callq  400530 <putchar@plt>
  40097c:	4c 89 e7             	mov    %r12,%rdi
  40097f:	89 ee                	mov    %ebp,%esi
  400981:	e8 ea fd ff ff       	callq  400770 <print>
  400986:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40098a:	85 c0                	test   %eax,%eax
  40098c:	0f 85 8e fe ff ff    	jne    400820 <main+0x40>
  400992:	31 c0                	xor    %eax,%eax
  400994:	48 83 c4 18          	add    $0x18,%rsp
  400998:	5b                   	pop    %rbx
  400999:	41 5c                	pop    %r12
  40099b:	41 5d                	pop    %r13
  40099d:	41 5e                	pop    %r14
  40099f:	41 5f                	pop    %r15
  4009a1:	5d                   	pop    %rbp
  4009a2:	c3                   	retq   
  4009a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009aa:	00 00 00 
  4009ad:	0f 1f 00             	nopl   (%rax)

00000000004009b0 <__libc_csu_init>:
  4009b0:	41 57                	push   %r15
  4009b2:	41 56                	push   %r14
  4009b4:	49 89 d7             	mov    %rdx,%r15
  4009b7:	41 55                	push   %r13
  4009b9:	41 54                	push   %r12
  4009bb:	4c 8d 25 3e 04 20 00 	lea    0x20043e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  4009c2:	55                   	push   %rbp
  4009c3:	48 8d 2d 3e 04 20 00 	lea    0x20043e(%rip),%rbp        # 600e08 <__init_array_end>
  4009ca:	53                   	push   %rbx
  4009cb:	41 89 fd             	mov    %edi,%r13d
  4009ce:	49 89 f6             	mov    %rsi,%r14
  4009d1:	4c 29 e5             	sub    %r12,%rbp
  4009d4:	48 83 ec 08          	sub    $0x8,%rsp
  4009d8:	48 c1 fd 03          	sar    $0x3,%rbp
  4009dc:	e8 0f fb ff ff       	callq  4004f0 <_init>
  4009e1:	48 85 ed             	test   %rbp,%rbp
  4009e4:	74 20                	je     400a06 <__libc_csu_init+0x56>
  4009e6:	31 db                	xor    %ebx,%ebx
  4009e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009ef:	00 
  4009f0:	4c 89 fa             	mov    %r15,%rdx
  4009f3:	4c 89 f6             	mov    %r14,%rsi
  4009f6:	44 89 ef             	mov    %r13d,%edi
  4009f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4009fd:	48 83 c3 01          	add    $0x1,%rbx
  400a01:	48 39 dd             	cmp    %rbx,%rbp
  400a04:	75 ea                	jne    4009f0 <__libc_csu_init+0x40>
  400a06:	48 83 c4 08          	add    $0x8,%rsp
  400a0a:	5b                   	pop    %rbx
  400a0b:	5d                   	pop    %rbp
  400a0c:	41 5c                	pop    %r12
  400a0e:	41 5d                	pop    %r13
  400a10:	41 5e                	pop    %r14
  400a12:	41 5f                	pop    %r15
  400a14:	c3                   	retq   
  400a15:	90                   	nop
  400a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a1d:	00 00 00 

0000000000400a20 <__libc_csu_fini>:
  400a20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400a24 <_fini>:
  400a24:	48 83 ec 08          	sub    $0x8,%rsp
  400a28:	48 83 c4 08          	add    $0x8,%rsp
  400a2c:	c3                   	retq   
