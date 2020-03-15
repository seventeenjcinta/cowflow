
c/19020031093_2.elf:     file format elf64-x86-64


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

0000000000400530 <puts@plt>:
  400530:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <printf@plt>:
  400540:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601028 <printf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <malloc@plt>:
  400550:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601030 <malloc@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <__isoc99_scanf@plt>:
  400560:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601038 <__isoc99_scanf@GLIBC_2.7>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <exit@plt>:
  400570:	ff 25 ca 0a 20 00    	jmpq   *0x200aca(%rip)        # 601040 <exit@GLIBC_2.2.5>
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
  40058f:	49 c7 c0 e0 0a 40 00 	mov    $0x400ae0,%r8
  400596:	48 c7 c1 70 0a 40 00 	mov    $0x400a70,%rcx
  40059d:	48 c7 c7 70 06 40 00 	mov    $0x400670,%rdi
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

0000000000400670 <main>:
  400670:	41 57                	push   %r15
  400672:	41 56                	push   %r14
  400674:	41 54                	push   %r12
  400676:	53                   	push   %rbx
  400677:	48 83 ec 18          	sub    $0x18,%rsp
  40067b:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  400680:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  400685:	eb 13                	jmp    40069a <main+0x2a>
  400687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40068e:	00 00 
  400690:	bf 4a 0b 40 00       	mov    $0x400b4a,%edi
  400695:	e8 96 fe ff ff       	callq  400530 <puts@plt>
  40069a:	45 31 e4             	xor    %r12d,%r12d
  40069d:	e9 5f 01 00 00       	jmpq   400801 <main+0x191>
  4006a2:	4c 89 e3             	mov    %r12,%rbx
  4006a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4006ac:	00 00 00 00 
  4006b0:	48 8b 33             	mov    (%rbx),%rsi
  4006b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4006bc:	bf 42 0b 40 00       	mov    $0x400b42,%edi
  4006c1:	b0 01                	mov    $0x1,%al
  4006c3:	e8 78 fe ff ff       	callq  400540 <printf@plt>
  4006c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4006cc:	48 85 db             	test   %rbx,%rbx
  4006cf:	75 df                	jne    4006b0 <main+0x40>
  4006d1:	e9 2b 01 00 00       	jmpq   400801 <main+0x191>
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 
  4006e0:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  4006e5:	31 c0                	xor    %eax,%eax
  4006e7:	e8 54 fe ff ff       	callq  400540 <printf@plt>
  4006ec:	bf 3e 0b 40 00       	mov    $0x400b3e,%edi
  4006f1:	31 c0                	xor    %eax,%eax
  4006f3:	4c 89 f6             	mov    %r14,%rsi
  4006f6:	e8 65 fe ff ff       	callq  400560 <__isoc99_scanf@plt>
  4006fb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400700:	4c 89 e7             	mov    %r12,%rdi
  400703:	e8 a8 02 00 00       	callq  4009b0 <del>
  400708:	49 89 c4             	mov    %rax,%r12
  40070b:	4d 85 e4             	test   %r12,%r12
  40070e:	74 80                	je     400690 <main+0x20>
  400710:	4c 89 e3             	mov    %r12,%rbx
  400713:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40071a:	84 00 00 00 00 00 
  400720:	48 8b 33             	mov    (%rbx),%rsi
  400723:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400728:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40072c:	bf 42 0b 40 00       	mov    $0x400b42,%edi
  400731:	b0 01                	mov    $0x1,%al
  400733:	e8 08 fe ff ff       	callq  400540 <printf@plt>
  400738:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40073c:	48 85 db             	test   %rbx,%rbx
  40073f:	75 df                	jne    400720 <main+0xb0>
  400741:	e9 bb 00 00 00       	jmpq   400801 <main+0x191>
  400746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40074d:	00 00 00 
  400750:	bf 90 0b 40 00       	mov    $0x400b90,%edi
  400755:	31 c0                	xor    %eax,%eax
  400757:	e8 e4 fd ff ff       	callq  400540 <printf@plt>
  40075c:	bf 18 00 00 00       	mov    $0x18,%edi
  400761:	e8 ea fd ff ff       	callq  400550 <malloc@plt>
  400766:	48 89 c3             	mov    %rax,%rbx
  400769:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40076d:	bf 24 0b 40 00       	mov    $0x400b24,%edi
  400772:	31 c0                	xor    %eax,%eax
  400774:	48 89 de             	mov    %rbx,%rsi
  400777:	e8 e4 fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  40077c:	4d 85 e4             	test   %r12,%r12
  40077f:	74 2b                	je     4007ac <main+0x13c>
  400781:	48 8b 13             	mov    (%rbx),%rdx
  400784:	4c 89 e0             	mov    %r12,%rax
  400787:	49 3b 14 24          	cmp    (%r12),%rdx
  40078b:	7e 26                	jle    4007b3 <main+0x143>
  40078d:	0f 1f 00             	nopl   (%rax)
  400790:	48 89 c1             	mov    %rax,%rcx
  400793:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400797:	48 85 c0             	test   %rax,%rax
  40079a:	74 1f                	je     4007bb <main+0x14b>
  40079c:	48 3b 10             	cmp    (%rax),%rdx
  40079f:	7f ef                	jg     400790 <main+0x120>
  4007a1:	4c 39 e0             	cmp    %r12,%rax
  4007a4:	74 0d                	je     4007b3 <main+0x143>
  4007a6:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4007aa:	eb 24                	jmp    4007d0 <main+0x160>
  4007ac:	31 c0                	xor    %eax,%eax
  4007ae:	49 89 dc             	mov    %rbx,%r12
  4007b1:	eb 1d                	jmp    4007d0 <main+0x160>
  4007b3:	4c 89 e0             	mov    %r12,%rax
  4007b6:	49 89 dc             	mov    %rbx,%r12
  4007b9:	eb 15                	jmp    4007d0 <main+0x160>
  4007bb:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  4007bf:	31 c0                	xor    %eax,%eax
  4007c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007c8:	0f 1f 84 00 00 00 00 
  4007cf:	00 
  4007d0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4007d4:	83 05 81 08 20 00 01 	addl   $0x1,0x200881(%rip)        # 60105c <n>
  4007db:	4c 89 e3             	mov    %r12,%rbx
  4007de:	66 90                	xchg   %ax,%ax
  4007e0:	48 8b 33             	mov    (%rbx),%rsi
  4007e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4007e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4007ec:	bf 42 0b 40 00       	mov    $0x400b42,%edi
  4007f1:	b0 01                	mov    $0x1,%al
  4007f3:	e8 48 fd ff ff       	callq  400540 <printf@plt>
  4007f8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007fc:	48 85 db             	test   %rbx,%rbx
  4007ff:	75 df                	jne    4007e0 <main+0x170>
  400801:	bf 60 0b 40 00       	mov    $0x400b60,%edi
  400806:	e8 25 fd ff ff       	callq  400530 <puts@plt>
  40080b:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  400810:	31 c0                	xor    %eax,%eax
  400812:	e8 29 fd ff ff       	callq  400540 <printf@plt>
  400817:	bf 21 0b 40 00       	mov    $0x400b21,%edi
  40081c:	31 c0                	xor    %eax,%eax
  40081e:	4c 89 fe             	mov    %r15,%rsi
  400821:	e8 3a fd ff ff       	callq  400560 <__isoc99_scanf@plt>
  400826:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40082a:	83 c0 ff             	add    $0xffffffff,%eax
  40082d:	83 f8 03             	cmp    $0x3,%eax
  400830:	77 cf                	ja     400801 <main+0x191>
  400832:	ff 24 c5 f8 0a 40 00 	jmpq   *0x400af8(,%rax,8)
  400839:	bf 90 0b 40 00       	mov    $0x400b90,%edi
  40083e:	e8 ed fc ff ff       	callq  400530 <puts@plt>
  400843:	4c 89 e7             	mov    %r12,%rdi
  400846:	e8 25 00 00 00       	callq  400870 <build>
  40084b:	49 89 c4             	mov    %rax,%r12
  40084e:	4d 85 e4             	test   %r12,%r12
  400851:	0f 85 4b fe ff ff    	jne    4006a2 <main+0x32>
  400857:	e9 34 fe ff ff       	jmpq   400690 <main+0x20>
  40085c:	31 ff                	xor    %edi,%edi
  40085e:	e8 0d fd ff ff       	callq  400570 <exit@plt>
  400863:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40086a:	84 00 00 00 00 00 

0000000000400870 <build>:
  400870:	41 56                	push   %r14
  400872:	53                   	push   %rbx
  400873:	50                   	push   %rax
  400874:	49 89 fe             	mov    %rdi,%r14
  400877:	eb 12                	jmp    40088b <build+0x1b>
  400879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400880:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400884:	83 05 d1 07 20 00 01 	addl   $0x1,0x2007d1(%rip)        # 60105c <n>
  40088b:	bf 18 00 00 00       	mov    $0x18,%edi
  400890:	e8 bb fc ff ff       	callq  400550 <malloc@plt>
  400895:	48 89 c3             	mov    %rax,%rbx
  400898:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40089c:	bf 24 0b 40 00       	mov    $0x400b24,%edi
  4008a1:	31 c0                	xor    %eax,%eax
  4008a3:	48 89 de             	mov    %rbx,%rsi
  4008a6:	e8 b5 fc ff ff       	callq  400560 <__isoc99_scanf@plt>
  4008ab:	48 8b 03             	mov    (%rbx),%rax
  4008ae:	48 85 c0             	test   %rax,%rax
  4008b1:	74 4d                	je     400900 <build+0x90>
  4008b3:	4d 85 f6             	test   %r14,%r14
  4008b6:	74 28                	je     4008e0 <build+0x70>
  4008b8:	4c 89 f1             	mov    %r14,%rcx
  4008bb:	49 3b 06             	cmp    (%r14),%rax
  4008be:	7e 30                	jle    4008f0 <build+0x80>
  4008c0:	48 89 ca             	mov    %rcx,%rdx
  4008c3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4008c7:	48 85 c9             	test   %rcx,%rcx
  4008ca:	74 2c                	je     4008f8 <build+0x88>
  4008cc:	48 3b 01             	cmp    (%rcx),%rax
  4008cf:	7f ef                	jg     4008c0 <build+0x50>
  4008d1:	4c 39 f1             	cmp    %r14,%rcx
  4008d4:	74 1a                	je     4008f0 <build+0x80>
  4008d6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4008da:	eb a4                	jmp    400880 <build+0x10>
  4008dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4008e0:	31 c9                	xor    %ecx,%ecx
  4008e2:	49 89 de             	mov    %rbx,%r14
  4008e5:	eb 99                	jmp    400880 <build+0x10>
  4008e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4008ee:	00 00 
  4008f0:	4c 89 f1             	mov    %r14,%rcx
  4008f3:	49 89 de             	mov    %rbx,%r14
  4008f6:	eb 88                	jmp    400880 <build+0x10>
  4008f8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4008fc:	31 c9                	xor    %ecx,%ecx
  4008fe:	eb 80                	jmp    400880 <build+0x10>
  400900:	48 89 df             	mov    %rbx,%rdi
  400903:	e8 18 fc ff ff       	callq  400520 <free@plt>
  400908:	4c 89 f0             	mov    %r14,%rax
  40090b:	48 83 c4 08          	add    $0x8,%rsp
  40090f:	5b                   	pop    %rbx
  400910:	41 5e                	pop    %r14
  400912:	c3                   	retq   
  400913:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40091a:	84 00 00 00 00 00 

0000000000400920 <print>:
  400920:	53                   	push   %rbx
  400921:	48 89 fb             	mov    %rdi,%rbx
  400924:	48 85 db             	test   %rbx,%rbx
  400927:	74 2a                	je     400953 <print+0x33>
  400929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400930:	48 8b 33             	mov    (%rbx),%rsi
  400933:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400938:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40093c:	bf 42 0b 40 00       	mov    $0x400b42,%edi
  400941:	b0 01                	mov    $0x1,%al
  400943:	e8 f8 fb ff ff       	callq  400540 <printf@plt>
  400948:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40094c:	48 85 db             	test   %rbx,%rbx
  40094f:	75 df                	jne    400930 <print+0x10>
  400951:	5b                   	pop    %rbx
  400952:	c3                   	retq   
  400953:	bf 4a 0b 40 00       	mov    $0x400b4a,%edi
  400958:	5b                   	pop    %rbx
  400959:	e9 d2 fb ff ff       	jmpq   400530 <puts@plt>
  40095e:	66 90                	xchg   %ax,%ax

0000000000400960 <insert>:
  400960:	48 85 ff             	test   %rdi,%rdi
  400963:	74 27                	je     40098c <insert+0x2c>
  400965:	48 8b 0e             	mov    (%rsi),%rcx
  400968:	48 3b 0f             	cmp    (%rdi),%rcx
  40096b:	7e 26                	jle    400993 <insert+0x33>
  40096d:	48 89 f8             	mov    %rdi,%rax
  400970:	48 89 c2             	mov    %rax,%rdx
  400973:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400977:	48 85 c0             	test   %rax,%rax
  40097a:	74 1f                	je     40099b <insert+0x3b>
  40097c:	48 3b 08             	cmp    (%rax),%rcx
  40097f:	7f ef                	jg     400970 <insert+0x10>
  400981:	48 39 f8             	cmp    %rdi,%rax
  400984:	74 0d                	je     400993 <insert+0x33>
  400986:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40098a:	eb 15                	jmp    4009a1 <insert+0x41>
  40098c:	31 c0                	xor    %eax,%eax
  40098e:	48 89 f7             	mov    %rsi,%rdi
  400991:	eb 0e                	jmp    4009a1 <insert+0x41>
  400993:	48 89 f8             	mov    %rdi,%rax
  400996:	48 89 f7             	mov    %rsi,%rdi
  400999:	eb 06                	jmp    4009a1 <insert+0x41>
  40099b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40099f:	31 c0                	xor    %eax,%eax
  4009a1:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4009a5:	83 05 b0 06 20 00 01 	addl   $0x1,0x2006b0(%rip)        # 60105c <n>
  4009ac:	48 89 f8             	mov    %rdi,%rax
  4009af:	c3                   	retq   

00000000004009b0 <del>:
  4009b0:	41 57                	push   %r15
  4009b2:	41 56                	push   %r14
  4009b4:	41 55                	push   %r13
  4009b6:	41 54                	push   %r12
  4009b8:	53                   	push   %rbx
  4009b9:	49 89 f7             	mov    %rsi,%r15
  4009bc:	49 89 fe             	mov    %rdi,%r14
  4009bf:	4d 85 f6             	test   %r14,%r14
  4009c2:	74 1c                	je     4009e0 <del+0x30>
  4009c4:	4d 39 3e             	cmp    %r15,(%r14)
  4009c7:	75 26                	jne    4009ef <del+0x3f>
  4009c9:	4d 8b 6e 10          	mov    0x10(%r14),%r13
  4009cd:	4d 89 f4             	mov    %r14,%r12
  4009d0:	4c 89 f7             	mov    %r14,%rdi
  4009d3:	e8 48 fb ff ff       	callq  400520 <free@plt>
  4009d8:	4c 89 f3             	mov    %r14,%rbx
  4009db:	4d 89 ee             	mov    %r13,%r14
  4009de:	eb 4c                	jmp    400a2c <del+0x7c>
  4009e0:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  4009e5:	e8 46 fb ff ff       	callq  400530 <puts@plt>
  4009ea:	45 31 f6             	xor    %r14d,%r14d
  4009ed:	eb 5e                	jmp    400a4d <del+0x9d>
  4009ef:	4d 89 f4             	mov    %r14,%r12
  4009f2:	4c 89 f3             	mov    %r14,%rbx
  4009f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4009fc:	00 00 00 00 
  400a00:	48 89 d8             	mov    %rbx,%rax
  400a03:	48 8b 58 10          	mov    0x10(%rax),%rbx
  400a07:	48 85 db             	test   %rbx,%rbx
  400a0a:	74 2a                	je     400a36 <del+0x86>
  400a0c:	4c 39 3b             	cmp    %r15,(%rbx)
  400a0f:	49 89 dc             	mov    %rbx,%r12
  400a12:	75 ec                	jne    400a00 <del+0x50>
  400a14:	4c 8b 6b 10          	mov    0x10(%rbx),%r13
  400a18:	4c 39 f3             	cmp    %r14,%rbx
  400a1b:	74 3d                	je     400a5a <del+0xaa>
  400a1d:	4c 89 68 10          	mov    %r13,0x10(%rax)
  400a21:	48 89 df             	mov    %rbx,%rdi
  400a24:	e8 f7 fa ff ff       	callq  400520 <free@plt>
  400a29:	49 89 dc             	mov    %rbx,%r12
  400a2c:	83 05 29 06 20 00 ff 	addl   $0xffffffff,0x200629(%rip)        # 60105c <n>
  400a33:	48 89 d8             	mov    %rbx,%rax
  400a36:	4d 39 3c 24          	cmp    %r15,(%r12)
  400a3a:	74 11                	je     400a4d <del+0x9d>
  400a3c:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  400a41:	75 0a                	jne    400a4d <del+0x9d>
  400a43:	bf b0 0b 40 00       	mov    $0x400bb0,%edi
  400a48:	e8 e3 fa ff ff       	callq  400530 <puts@plt>
  400a4d:	4c 89 f0             	mov    %r14,%rax
  400a50:	5b                   	pop    %rbx
  400a51:	41 5c                	pop    %r12
  400a53:	41 5d                	pop    %r13
  400a55:	41 5e                	pop    %r14
  400a57:	41 5f                	pop    %r15
  400a59:	c3                   	retq   
  400a5a:	49 89 dc             	mov    %rbx,%r12
  400a5d:	e9 6e ff ff ff       	jmpq   4009d0 <del+0x20>
  400a62:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a69:	00 00 00 
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a70 <__libc_csu_init>:
  400a70:	41 57                	push   %r15
  400a72:	41 56                	push   %r14
  400a74:	49 89 d7             	mov    %rdx,%r15
  400a77:	41 55                	push   %r13
  400a79:	41 54                	push   %r12
  400a7b:	4c 8d 25 7e 03 20 00 	lea    0x20037e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400a82:	55                   	push   %rbp
  400a83:	48 8d 2d 7e 03 20 00 	lea    0x20037e(%rip),%rbp        # 600e08 <__init_array_end>
  400a8a:	53                   	push   %rbx
  400a8b:	41 89 fd             	mov    %edi,%r13d
  400a8e:	49 89 f6             	mov    %rsi,%r14
  400a91:	4c 29 e5             	sub    %r12,%rbp
  400a94:	48 83 ec 08          	sub    $0x8,%rsp
  400a98:	48 c1 fd 03          	sar    $0x3,%rbp
  400a9c:	e8 4f fa ff ff       	callq  4004f0 <_init>
  400aa1:	48 85 ed             	test   %rbp,%rbp
  400aa4:	74 20                	je     400ac6 <__libc_csu_init+0x56>
  400aa6:	31 db                	xor    %ebx,%ebx
  400aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aaf:	00 
  400ab0:	4c 89 fa             	mov    %r15,%rdx
  400ab3:	4c 89 f6             	mov    %r14,%rsi
  400ab6:	44 89 ef             	mov    %r13d,%edi
  400ab9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400abd:	48 83 c3 01          	add    $0x1,%rbx
  400ac1:	48 39 dd             	cmp    %rbx,%rbp
  400ac4:	75 ea                	jne    400ab0 <__libc_csu_init+0x40>
  400ac6:	48 83 c4 08          	add    $0x8,%rsp
  400aca:	5b                   	pop    %rbx
  400acb:	5d                   	pop    %rbp
  400acc:	41 5c                	pop    %r12
  400ace:	41 5d                	pop    %r13
  400ad0:	41 5e                	pop    %r14
  400ad2:	41 5f                	pop    %r15
  400ad4:	c3                   	retq   
  400ad5:	90                   	nop
  400ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400add:	00 00 00 

0000000000400ae0 <__libc_csu_fini>:
  400ae0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ae4 <_fini>:
  400ae4:	48 83 ec 08          	sub    $0x8,%rsp
  400ae8:	48 83 c4 08          	add    $0x8,%rsp
  400aec:	c3                   	retq   
