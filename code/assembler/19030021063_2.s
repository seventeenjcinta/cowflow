
c/19030021063_2.elf:     file format elf64-x86-64


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

0000000000400510 <free@plt>:
  400510:	ff 25 02 1b 20 00    	jmpq   *0x201b02(%rip)        # 602018 <free@GLIBC_2.2.5>
  400516:	68 00 00 00 00       	pushq  $0x0
  40051b:	e9 e0 ff ff ff       	jmpq   400500 <.plt>

0000000000400520 <puts@plt>:
  400520:	ff 25 fa 1a 20 00    	jmpq   *0x201afa(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400526:	68 01 00 00 00       	pushq  $0x1
  40052b:	e9 d0 ff ff ff       	jmpq   400500 <.plt>

0000000000400530 <printf@plt>:
  400530:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400536:	68 02 00 00 00       	pushq  $0x2
  40053b:	e9 c0 ff ff ff       	jmpq   400500 <.plt>

0000000000400540 <malloc@plt>:
  400540:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400546:	68 03 00 00 00       	pushq  $0x3
  40054b:	e9 b0 ff ff ff       	jmpq   400500 <.plt>

0000000000400550 <__isoc99_scanf@plt>:
  400550:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
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
  40056f:	49 c7 c0 90 0c 40 00 	mov    $0x400c90,%r8
  400576:	48 c7 c1 20 0c 40 00 	mov    $0x400c20,%rcx
  40057d:	48 c7 c7 e0 08 40 00 	mov    $0x4008e0,%rdi
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

0000000000400650 <insert>:
  400650:	48 85 ff             	test   %rdi,%rdi
  400653:	74 42                	je     400697 <insert+0x47>
  400655:	4c 8d 4f 10          	lea    0x10(%rdi),%r9
  400659:	48 8b 57 10          	mov    0x10(%rdi),%rdx
  40065d:	4c 8b 06             	mov    (%rsi),%r8
  400660:	48 85 d2             	test   %rdx,%rdx
  400663:	74 36                	je     40069b <insert+0x4b>
  400665:	48 89 f9             	mov    %rdi,%rcx
  400668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40066f:	00 
  400670:	48 89 c8             	mov    %rcx,%rax
  400673:	48 89 d1             	mov    %rdx,%rcx
  400676:	4c 39 00             	cmp    %r8,(%rax)
  400679:	7d 33                	jge    4006ae <insert+0x5e>
  40067b:	4c 8d 49 10          	lea    0x10(%rcx),%r9
  40067f:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400683:	49 89 c2             	mov    %rax,%r10
  400686:	48 85 d2             	test   %rdx,%rdx
  400689:	75 e5                	jne    400670 <insert+0x20>
  40068b:	4c 3b 01             	cmp    (%rcx),%r8
  40068e:	7e 13                	jle    4006a3 <insert+0x53>
  400690:	49 89 31             	mov    %rsi,(%r9)
  400693:	31 c9                	xor    %ecx,%ecx
  400695:	eb 2a                	jmp    4006c1 <insert+0x71>
  400697:	31 c9                	xor    %ecx,%ecx
  400699:	eb 23                	jmp    4006be <insert+0x6e>
  40069b:	48 89 f9             	mov    %rdi,%rcx
  40069e:	4c 3b 01             	cmp    (%rcx),%r8
  4006a1:	7f ed                	jg     400690 <insert+0x40>
  4006a3:	48 39 f9             	cmp    %rdi,%rcx
  4006a6:	74 13                	je     4006bb <insert+0x6b>
  4006a8:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4006ac:	eb 13                	jmp    4006c1 <insert+0x71>
  4006ae:	48 89 c1             	mov    %rax,%rcx
  4006b1:	4c 89 d0             	mov    %r10,%rax
  4006b4:	4c 3b 01             	cmp    (%rcx),%r8
  4006b7:	7f d7                	jg     400690 <insert+0x40>
  4006b9:	eb e8                	jmp    4006a3 <insert+0x53>
  4006bb:	48 89 f9             	mov    %rdi,%rcx
  4006be:	48 89 f7             	mov    %rsi,%rdi
  4006c1:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  4006c5:	83 05 88 19 20 00 01 	addl   $0x1,0x201988(%rip)        # 602054 <n>
  4006cc:	48 89 f8             	mov    %rdi,%rax
  4006cf:	c3                   	retq   

00000000004006d0 <creat>:
  4006d0:	41 57                	push   %r15
  4006d2:	41 56                	push   %r14
  4006d4:	53                   	push   %rbx
  4006d5:	bf 18 00 00 00       	mov    $0x18,%edi
  4006da:	e8 61 fe ff ff       	callq  400540 <malloc@plt>
  4006df:	49 89 c7             	mov    %rax,%r15
  4006e2:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4006e6:	45 31 f6             	xor    %r14d,%r14d
  4006e9:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4006ee:	31 c0                	xor    %eax,%eax
  4006f0:	4c 89 fe             	mov    %r15,%rsi
  4006f3:	e8 58 fe ff ff       	callq  400550 <__isoc99_scanf@plt>
  4006f8:	49 8b 07             	mov    (%r15),%rax
  4006fb:	48 85 c0             	test   %rax,%rax
  4006fe:	0f 84 c9 00 00 00    	je     4007cd <creat+0xfd>
  400704:	45 31 f6             	xor    %r14d,%r14d
  400707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40070e:	00 00 
  400710:	4d 85 f6             	test   %r14,%r14
  400713:	74 4b                	je     400760 <creat+0x90>
  400715:	49 8d 56 10          	lea    0x10(%r14),%rdx
  400719:	49 8b 7e 10          	mov    0x10(%r14),%rdi
  40071d:	48 85 ff             	test   %rdi,%rdi
  400720:	74 4e                	je     400770 <creat+0xa0>
  400722:	4c 89 f1             	mov    %r14,%rcx
  400725:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40072c:	00 00 00 00 
  400730:	48 89 ce             	mov    %rcx,%rsi
  400733:	48 89 f9             	mov    %rdi,%rcx
  400736:	48 39 06             	cmp    %rax,(%rsi)
  400739:	7d 48                	jge    400783 <creat+0xb3>
  40073b:	48 8d 51 10          	lea    0x10(%rcx),%rdx
  40073f:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400743:	48 89 f3             	mov    %rsi,%rbx
  400746:	48 85 ff             	test   %rdi,%rdi
  400749:	75 e5                	jne    400730 <creat+0x60>
  40074b:	48 3b 01             	cmp    (%rcx),%rax
  40074e:	7e 28                	jle    400778 <creat+0xa8>
  400750:	4c 89 3a             	mov    %r15,(%rdx)
  400753:	31 c9                	xor    %ecx,%ecx
  400755:	eb 3f                	jmp    400796 <creat+0xc6>
  400757:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40075e:	00 00 
  400760:	31 c9                	xor    %ecx,%ecx
  400762:	eb 2f                	jmp    400793 <creat+0xc3>
  400764:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40076b:	00 00 00 00 00 
  400770:	4c 89 f1             	mov    %r14,%rcx
  400773:	48 3b 01             	cmp    (%rcx),%rax
  400776:	7f d8                	jg     400750 <creat+0x80>
  400778:	4c 39 f1             	cmp    %r14,%rcx
  40077b:	74 13                	je     400790 <creat+0xc0>
  40077d:	4c 89 7e 10          	mov    %r15,0x10(%rsi)
  400781:	eb 13                	jmp    400796 <creat+0xc6>
  400783:	48 89 f1             	mov    %rsi,%rcx
  400786:	48 89 de             	mov    %rbx,%rsi
  400789:	48 3b 01             	cmp    (%rcx),%rax
  40078c:	7f c2                	jg     400750 <creat+0x80>
  40078e:	eb e8                	jmp    400778 <creat+0xa8>
  400790:	4c 89 f1             	mov    %r14,%rcx
  400793:	4d 89 fe             	mov    %r15,%r14
  400796:	49 89 4f 10          	mov    %rcx,0x10(%r15)
  40079a:	83 05 b3 18 20 00 01 	addl   $0x1,0x2018b3(%rip)        # 602054 <n>
  4007a1:	bf 18 00 00 00       	mov    $0x18,%edi
  4007a6:	e8 95 fd ff ff       	callq  400540 <malloc@plt>
  4007ab:	49 89 c7             	mov    %rax,%r15
  4007ae:	49 8d 57 08          	lea    0x8(%r15),%rdx
  4007b2:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4007b7:	31 c0                	xor    %eax,%eax
  4007b9:	4c 89 fe             	mov    %r15,%rsi
  4007bc:	e8 8f fd ff ff       	callq  400550 <__isoc99_scanf@plt>
  4007c1:	49 8b 07             	mov    (%r15),%rax
  4007c4:	48 85 c0             	test   %rax,%rax
  4007c7:	0f 85 43 ff ff ff    	jne    400710 <creat+0x40>
  4007cd:	4c 89 ff             	mov    %r15,%rdi
  4007d0:	e8 3b fd ff ff       	callq  400510 <free@plt>
  4007d5:	4c 89 f0             	mov    %r14,%rax
  4007d8:	5b                   	pop    %rbx
  4007d9:	41 5e                	pop    %r14
  4007db:	41 5f                	pop    %r15
  4007dd:	c3                   	retq   
  4007de:	66 90                	xchg   %ax,%ax

00000000004007e0 <del>:
  4007e0:	41 56                	push   %r14
  4007e2:	53                   	push   %rbx
  4007e3:	50                   	push   %rax
  4007e4:	49 89 fe             	mov    %rdi,%r14
  4007e7:	4d 85 f6             	test   %r14,%r14
  4007ea:	74 37                	je     400823 <del+0x43>
  4007ec:	49 8b 56 10          	mov    0x10(%r14),%rdx
  4007f0:	48 85 d2             	test   %rdx,%rdx
  4007f3:	74 3c                	je     400831 <del+0x51>
  4007f5:	48 63 ce             	movslq %esi,%rcx
  4007f8:	4c 89 f3             	mov    %r14,%rbx
  4007fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400800:	48 89 d8             	mov    %rbx,%rax
  400803:	48 89 d3             	mov    %rdx,%rbx
  400806:	48 39 08             	cmp    %rcx,(%rax)
  400809:	7d 3e                	jge    400849 <del+0x69>
  40080b:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  40080f:	48 89 c6             	mov    %rax,%rsi
  400812:	48 85 d2             	test   %rdx,%rdx
  400815:	75 e9                	jne    400800 <del+0x20>
  400817:	48 89 df             	mov    %rbx,%rdi
  40081a:	31 db                	xor    %ebx,%ebx
  40081c:	83 3f 00             	cmpl   $0x0,(%rdi)
  40081f:	75 33                	jne    400854 <del+0x74>
  400821:	eb 18                	jmp    40083b <del+0x5b>
  400823:	bf 39 0d 40 00       	mov    $0x400d39,%edi
  400828:	e8 f3 fc ff ff       	callq  400520 <puts@plt>
  40082d:	31 db                	xor    %ebx,%ebx
  40082f:	eb 45                	jmp    400876 <del+0x96>
  400831:	31 db                	xor    %ebx,%ebx
  400833:	4c 89 f7             	mov    %r14,%rdi
  400836:	83 3f 00             	cmpl   $0x0,(%rdi)
  400839:	75 19                	jne    400854 <del+0x74>
  40083b:	bf aa 0c 40 00       	mov    $0x400caa,%edi
  400840:	31 c0                	xor    %eax,%eax
  400842:	e8 e9 fc ff ff       	callq  400530 <printf@plt>
  400847:	eb 19                	jmp    400862 <del+0x82>
  400849:	48 89 c7             	mov    %rax,%rdi
  40084c:	48 89 f0             	mov    %rsi,%rax
  40084f:	83 3f 00             	cmpl   $0x0,(%rdi)
  400852:	74 e7                	je     40083b <del+0x5b>
  400854:	4c 39 f7             	cmp    %r14,%rdi
  400857:	74 0e                	je     400867 <del+0x87>
  400859:	48 89 58 10          	mov    %rbx,0x10(%rax)
  40085d:	e8 ae fc ff ff       	callq  400510 <free@plt>
  400862:	4c 89 f3             	mov    %r14,%rbx
  400865:	eb 08                	jmp    40086f <del+0x8f>
  400867:	4c 89 f7             	mov    %r14,%rdi
  40086a:	e8 a1 fc ff ff       	callq  400510 <free@plt>
  40086f:	83 05 de 17 20 00 ff 	addl   $0xffffffff,0x2017de(%rip)        # 602054 <n>
  400876:	48 89 d8             	mov    %rbx,%rax
  400879:	48 83 c4 08          	add    $0x8,%rsp
  40087d:	5b                   	pop    %rbx
  40087e:	41 5e                	pop    %r14
  400880:	c3                   	retq   
  400881:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400888:	0f 1f 84 00 00 00 00 
  40088f:	00 

0000000000400890 <print>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	48 85 db             	test   %rbx,%rbx
  400897:	74 3a                	je     4008d3 <print+0x43>
  400899:	8b 35 b5 17 20 00    	mov    0x2017b5(%rip),%esi        # 602054 <n>
  40089f:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  4008a4:	31 c0                	xor    %eax,%eax
  4008a6:	e8 85 fc ff ff       	callq  400530 <printf@plt>
  4008ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 68 fc ff ff       	callq  400530 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <print+0x20>
  4008d1:	5b                   	pop    %rbx
  4008d2:	c3                   	retq   
  4008d3:	bf 39 0d 40 00       	mov    $0x400d39,%edi
  4008d8:	5b                   	pop    %rbx
  4008d9:	e9 42 fc ff ff       	jmpq   400520 <puts@plt>
  4008de:	66 90                	xchg   %ax,%ax

00000000004008e0 <main>:
  4008e0:	41 57                	push   %r15
  4008e2:	41 56                	push   %r14
  4008e4:	41 55                	push   %r13
  4008e6:	41 54                	push   %r12
  4008e8:	53                   	push   %rbx
  4008e9:	48 83 ec 10          	sub    $0x10,%rsp
  4008ed:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  4008f4:	ff 
  4008f5:	bf 50 0d 40 00       	mov    $0x400d50,%edi
  4008fa:	e8 21 fc ff ff       	callq  400520 <puts@plt>
  4008ff:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400904:	e8 17 fc ff ff       	callq  400520 <puts@plt>
  400909:	e8 c2 fd ff ff       	callq  4006d0 <creat>
  40090e:	49 89 c4             	mov    %rax,%r12
  400911:	4d 85 e4             	test   %r12,%r12
  400914:	74 3d                	je     400953 <main+0x73>
  400916:	8b 35 38 17 20 00    	mov    0x201738(%rip),%esi        # 602054 <n>
  40091c:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400921:	31 c0                	xor    %eax,%eax
  400923:	e8 08 fc ff ff       	callq  400530 <printf@plt>
  400928:	4c 89 e3             	mov    %r12,%rbx
  40092b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400930:	48 8b 33             	mov    (%rbx),%rsi
  400933:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400938:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40093c:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400941:	b0 01                	mov    $0x1,%al
  400943:	e8 e8 fb ff ff       	callq  400530 <printf@plt>
  400948:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40094c:	48 85 db             	test   %rbx,%rbx
  40094f:	75 df                	jne    400930 <main+0x50>
  400951:	eb 0a                	jmp    40095d <main+0x7d>
  400953:	bf 39 0d 40 00       	mov    $0x400d39,%edi
  400958:	e8 c3 fb ff ff       	callq  400520 <puts@plt>
  40095d:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400962:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40096e:	00 00 
  400970:	bf a0 0d 40 00       	mov    $0x400da0,%edi
  400975:	e8 a6 fb ff ff       	callq  400520 <puts@plt>
  40097a:	bf db 0c 40 00       	mov    $0x400cdb,%edi
  40097f:	31 c0                	xor    %eax,%eax
  400981:	e8 aa fb ff ff       	callq  400530 <printf@plt>
  400986:	bf f2 0c 40 00       	mov    $0x400cf2,%edi
  40098b:	31 c0                	xor    %eax,%eax
  40098d:	4c 89 fe             	mov    %r15,%rsi
  400990:	e8 bb fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  400995:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400999:	83 f8 02             	cmp    $0x2,%eax
  40099c:	0f 84 9e 00 00 00    	je     400a40 <main+0x160>
  4009a2:	83 f8 01             	cmp    $0x1,%eax
  4009a5:	0f 85 59 02 00 00    	jne    400c04 <main+0x324>
  4009ab:	bf f5 0c 40 00       	mov    $0x400cf5,%edi
  4009b0:	31 c0                	xor    %eax,%eax
  4009b2:	e8 79 fb ff ff       	callq  400530 <printf@plt>
  4009b7:	bf 18 00 00 00       	mov    $0x18,%edi
  4009bc:	e8 7f fb ff ff       	callq  400540 <malloc@plt>
  4009c1:	49 89 c5             	mov    %rax,%r13
  4009c4:	bf a4 0c 40 00       	mov    $0x400ca4,%edi
  4009c9:	49 8d 55 08          	lea    0x8(%r13),%rdx
  4009cd:	31 c0                	xor    %eax,%eax
  4009cf:	4c 89 ee             	mov    %r13,%rsi
  4009d2:	e8 79 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  4009d7:	4d 85 e4             	test   %r12,%r12
  4009da:	0f 84 bc 00 00 00    	je     400a9c <main+0x1bc>
  4009e0:	49 8d 44 24 10       	lea    0x10(%r12),%rax
  4009e5:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
  4009ea:	49 8b 75 00          	mov    0x0(%r13),%rsi
  4009ee:	48 85 ff             	test   %rdi,%rdi
  4009f1:	0f 84 c5 00 00 00    	je     400abc <main+0x1dc>
  4009f7:	4c 89 e1             	mov    %r12,%rcx
  4009fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a00:	48 89 ca             	mov    %rcx,%rdx
  400a03:	48 89 f9             	mov    %rdi,%rcx
  400a06:	48 39 32             	cmp    %rsi,(%rdx)
  400a09:	0f 8d ea 00 00 00    	jge    400af9 <main+0x219>
  400a0f:	48 8d 41 10          	lea    0x10(%rcx),%rax
  400a13:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a17:	48 89 d3             	mov    %rdx,%rbx
  400a1a:	48 85 ff             	test   %rdi,%rdi
  400a1d:	75 e1                	jne    400a00 <main+0x120>
  400a1f:	48 3b 31             	cmp    (%rcx),%rsi
  400a22:	0f 8e a0 00 00 00    	jle    400ac8 <main+0x1e8>
  400a28:	4c 89 28             	mov    %r13,(%rax)
  400a2b:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400a32:	00 
  400a33:	e9 52 01 00 00       	jmpq   400b8a <main+0x2aa>
  400a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a3f:	00 
  400a40:	bf 1f 0d 40 00       	mov    $0x400d1f,%edi
  400a45:	31 c0                	xor    %eax,%eax
  400a47:	e8 e4 fa ff ff       	callq  400530 <printf@plt>
  400a4c:	bf 35 0d 40 00       	mov    $0x400d35,%edi
  400a51:	31 c0                	xor    %eax,%eax
  400a53:	4c 89 f6             	mov    %r14,%rsi
  400a56:	e8 f5 fa ff ff       	callq  400550 <__isoc99_scanf@plt>
  400a5b:	4d 85 e4             	test   %r12,%r12
  400a5e:	74 4d                	je     400aad <main+0x1cd>
  400a60:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
  400a65:	48 85 d2             	test   %rdx,%rdx
  400a68:	74 74                	je     400ade <main+0x1fe>
  400a6a:	48 63 4c 24 08       	movslq 0x8(%rsp),%rcx
  400a6f:	4d 89 e5             	mov    %r12,%r13
  400a72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a79:	1f 84 00 00 00 00 00 
  400a80:	4c 89 e8             	mov    %r13,%rax
  400a83:	49 89 d5             	mov    %rdx,%r13
  400a86:	48 39 08             	cmp    %rcx,(%rax)
  400a89:	7d 7f                	jge    400b0a <main+0x22a>
  400a8b:	49 8b 55 10          	mov    0x10(%r13),%rdx
  400a8f:	48 89 c6             	mov    %rax,%rsi
  400a92:	48 85 d2             	test   %rdx,%rdx
  400a95:	75 e9                	jne    400a80 <main+0x1a0>
  400a97:	4c 89 ef             	mov    %r13,%rdi
  400a9a:	eb 45                	jmp    400ae1 <main+0x201>
  400a9c:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400aa3:	00 
  400aa4:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400aa8:	e9 da 00 00 00       	jmpq   400b87 <main+0x2a7>
  400aad:	bf 39 0d 40 00       	mov    $0x400d39,%edi
  400ab2:	e8 69 fa ff ff       	callq  400520 <puts@plt>
  400ab7:	e9 34 01 00 00       	jmpq   400bf0 <main+0x310>
  400abc:	4c 89 e1             	mov    %r12,%rcx
  400abf:	48 3b 31             	cmp    (%rcx),%rsi
  400ac2:	0f 8f 60 ff ff ff    	jg     400a28 <main+0x148>
  400ac8:	4c 39 e1             	cmp    %r12,%rcx
  400acb:	0f 84 b2 00 00 00    	je     400b83 <main+0x2a3>
  400ad1:	4c 89 6a 10          	mov    %r13,0x10(%rdx)
  400ad5:	49 89 4d 10          	mov    %rcx,0x10(%r13)
  400ad9:	e9 ac 00 00 00       	jmpq   400b8a <main+0x2aa>
  400ade:	4c 89 e7             	mov    %r12,%rdi
  400ae1:	45 31 ed             	xor    %r13d,%r13d
  400ae4:	83 3f 00             	cmpl   $0x0,(%rdi)
  400ae7:	74 2c                	je     400b15 <main+0x235>
  400ae9:	4c 39 e7             	cmp    %r12,%rdi
  400aec:	74 38                	je     400b26 <main+0x246>
  400aee:	4c 89 68 10          	mov    %r13,0x10(%rax)
  400af2:	e8 19 fa ff ff       	callq  400510 <free@plt>
  400af7:	eb 28                	jmp    400b21 <main+0x241>
  400af9:	48 89 d1             	mov    %rdx,%rcx
  400afc:	48 89 da             	mov    %rbx,%rdx
  400aff:	48 3b 31             	cmp    (%rcx),%rsi
  400b02:	0f 8f 20 ff ff ff    	jg     400a28 <main+0x148>
  400b08:	eb be                	jmp    400ac8 <main+0x1e8>
  400b0a:	48 89 c7             	mov    %rax,%rdi
  400b0d:	48 89 f0             	mov    %rsi,%rax
  400b10:	83 3f 00             	cmpl   $0x0,(%rdi)
  400b13:	75 d4                	jne    400ae9 <main+0x209>
  400b15:	bf aa 0c 40 00       	mov    $0x400caa,%edi
  400b1a:	31 c0                	xor    %eax,%eax
  400b1c:	e8 0f fa ff ff       	callq  400530 <printf@plt>
  400b21:	4d 89 e5             	mov    %r12,%r13
  400b24:	eb 08                	jmp    400b2e <main+0x24e>
  400b26:	4c 89 e7             	mov    %r12,%rdi
  400b29:	e8 e2 f9 ff ff       	callq  400510 <free@plt>
  400b2e:	8b 35 20 15 20 00    	mov    0x201520(%rip),%esi        # 602054 <n>
  400b34:	83 c6 ff             	add    $0xffffffff,%esi
  400b37:	89 35 17 15 20 00    	mov    %esi,0x201517(%rip)        # 602054 <n>
  400b3d:	4d 85 ed             	test   %r13,%r13
  400b40:	0f 84 aa 00 00 00    	je     400bf0 <main+0x310>
  400b46:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400b4b:	31 c0                	xor    %eax,%eax
  400b4d:	e8 de f9 ff ff       	callq  400530 <printf@plt>
  400b52:	4c 89 eb             	mov    %r13,%rbx
  400b55:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400b5c:	00 00 00 00 
  400b60:	48 8b 33             	mov    (%rbx),%rsi
  400b63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b6c:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400b71:	b0 01                	mov    $0x1,%al
  400b73:	e8 b8 f9 ff ff       	callq  400530 <printf@plt>
  400b78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b7c:	48 85 db             	test   %rbx,%rbx
  400b7f:	75 df                	jne    400b60 <main+0x280>
  400b81:	eb 7a                	jmp    400bfd <main+0x31d>
  400b83:	4d 89 65 10          	mov    %r12,0x10(%r13)
  400b87:	4d 89 ec             	mov    %r13,%r12
  400b8a:	83 05 c3 14 20 00 01 	addl   $0x1,0x2014c3(%rip)        # 602054 <n>
  400b91:	bf 11 0d 40 00       	mov    $0x400d11,%edi
  400b96:	31 c0                	xor    %eax,%eax
  400b98:	e8 93 f9 ff ff       	callq  400530 <printf@plt>
  400b9d:	4d 85 e4             	test   %r12,%r12
  400ba0:	74 4e                	je     400bf0 <main+0x310>
  400ba2:	8b 35 ac 14 20 00    	mov    0x2014ac(%rip),%esi        # 602054 <n>
  400ba8:	bf b4 0c 40 00       	mov    $0x400cb4,%edi
  400bad:	31 c0                	xor    %eax,%eax
  400baf:	e8 7c f9 ff ff       	callq  400530 <printf@plt>
  400bb4:	4c 89 e3             	mov    %r12,%rbx
  400bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400bbe:	00 00 
  400bc0:	48 8b 33             	mov    (%rbx),%rsi
  400bc3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bc8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bcc:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  400bd1:	b0 01                	mov    $0x1,%al
  400bd3:	e8 58 f9 ff ff       	callq  400530 <printf@plt>
  400bd8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400bdc:	48 85 db             	test   %rbx,%rbx
  400bdf:	75 df                	jne    400bc0 <main+0x2e0>
  400be1:	4d 89 e5             	mov    %r12,%r13
  400be4:	eb 17                	jmp    400bfd <main+0x31d>
  400be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bed:	00 00 00 
  400bf0:	bf 39 0d 40 00       	mov    $0x400d39,%edi
  400bf5:	e8 26 f9 ff ff       	callq  400520 <puts@plt>
  400bfa:	45 31 ed             	xor    %r13d,%r13d
  400bfd:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400c01:	4d 89 ec             	mov    %r13,%r12
  400c04:	85 c0                	test   %eax,%eax
  400c06:	0f 85 64 fd ff ff    	jne    400970 <main+0x90>
  400c0c:	48 83 c4 10          	add    $0x10,%rsp
  400c10:	5b                   	pop    %rbx
  400c11:	41 5c                	pop    %r12
  400c13:	41 5d                	pop    %r13
  400c15:	41 5e                	pop    %r14
  400c17:	41 5f                	pop    %r15
  400c19:	c3                   	retq   
  400c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400c20 <__libc_csu_init>:
  400c20:	41 57                	push   %r15
  400c22:	41 56                	push   %r14
  400c24:	49 89 d7             	mov    %rdx,%r15
  400c27:	41 55                	push   %r13
  400c29:	41 54                	push   %r12
  400c2b:	4c 8d 25 ce 11 20 00 	lea    0x2011ce(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c32:	55                   	push   %rbp
  400c33:	48 8d 2d ce 11 20 00 	lea    0x2011ce(%rip),%rbp        # 601e08 <__init_array_end>
  400c3a:	53                   	push   %rbx
  400c3b:	41 89 fd             	mov    %edi,%r13d
  400c3e:	49 89 f6             	mov    %rsi,%r14
  400c41:	4c 29 e5             	sub    %r12,%rbp
  400c44:	48 83 ec 08          	sub    $0x8,%rsp
  400c48:	48 c1 fd 03          	sar    $0x3,%rbp
  400c4c:	e8 8f f8 ff ff       	callq  4004e0 <_init>
  400c51:	48 85 ed             	test   %rbp,%rbp
  400c54:	74 20                	je     400c76 <__libc_csu_init+0x56>
  400c56:	31 db                	xor    %ebx,%ebx
  400c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c5f:	00 
  400c60:	4c 89 fa             	mov    %r15,%rdx
  400c63:	4c 89 f6             	mov    %r14,%rsi
  400c66:	44 89 ef             	mov    %r13d,%edi
  400c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c6d:	48 83 c3 01          	add    $0x1,%rbx
  400c71:	48 39 dd             	cmp    %rbx,%rbp
  400c74:	75 ea                	jne    400c60 <__libc_csu_init+0x40>
  400c76:	48 83 c4 08          	add    $0x8,%rsp
  400c7a:	5b                   	pop    %rbx
  400c7b:	5d                   	pop    %rbp
  400c7c:	41 5c                	pop    %r12
  400c7e:	41 5d                	pop    %r13
  400c80:	41 5e                	pop    %r14
  400c82:	41 5f                	pop    %r15
  400c84:	c3                   	retq   
  400c85:	90                   	nop
  400c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c8d:	00 00 00 

0000000000400c90 <__libc_csu_fini>:
  400c90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c94 <_fini>:
  400c94:	48 83 ec 08          	sub    $0x8,%rsp
  400c98:	48 83 c4 08          	add    $0x8,%rsp
  400c9c:	c3                   	retq   
