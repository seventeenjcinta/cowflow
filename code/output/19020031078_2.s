
input/19020031078_2.elf:     file format elf64-x86-64


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
  40056f:	49 c7 c0 30 0c 40 00 	mov    $0x400c30,%r8
  400576:	48 c7 c1 c0 0b 40 00 	mov    $0x400bc0,%rcx
  40057d:	48 c7 c7 a0 08 40 00 	mov    $0x4008a0,%rdi
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
  400653:	74 32                	je     400687 <insert+0x37>
  400655:	48 8b 06             	mov    (%rsi),%rax
  400658:	48 3b 07             	cmp    (%rdi),%rax
  40065b:	7e 26                	jle    400683 <insert+0x33>
  40065d:	48 89 fa             	mov    %rdi,%rdx
  400660:	48 89 d1             	mov    %rdx,%rcx
  400663:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400667:	48 85 d2             	test   %rdx,%rdx
  40066a:	74 0e                	je     40067a <insert+0x2a>
  40066c:	48 3b 02             	cmp    (%rdx),%rax
  40066f:	7f ef                	jg     400660 <insert+0x10>
  400671:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  400675:	48 39 fa             	cmp    %rdi,%rdx
  400678:	74 0d                	je     400687 <insert+0x37>
  40067a:	48 89 71 10          	mov    %rsi,0x10(%rcx)
  40067e:	48 89 fe             	mov    %rdi,%rsi
  400681:	eb 04                	jmp    400687 <insert+0x37>
  400683:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
  400687:	83 05 c6 19 20 00 01 	addl   $0x1,0x2019c6(%rip)        # 602054 <n>
  40068e:	48 89 f0             	mov    %rsi,%rax
  400691:	c3                   	retq   
  400692:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400699:	1f 84 00 00 00 00 00 

00000000004006a0 <del>:
  4006a0:	41 56                	push   %r14
  4006a2:	53                   	push   %rbx
  4006a3:	50                   	push   %rax
  4006a4:	48 89 fb             	mov    %rdi,%rbx
  4006a7:	48 8b 13             	mov    (%rbx),%rdx
  4006aa:	48 63 ce             	movslq %esi,%rcx
  4006ad:	48 39 ca             	cmp    %rcx,%rdx
  4006b0:	7d 3e                	jge    4006f0 <del+0x50>
  4006b2:	48 89 df             	mov    %rbx,%rdi
  4006b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4006bc:	00 00 00 00 
  4006c0:	48 89 f8             	mov    %rdi,%rax
  4006c3:	48 8b 78 10          	mov    0x10(%rax),%rdi
  4006c7:	48 85 ff             	test   %rdi,%rdi
  4006ca:	74 3a                	je     400706 <del+0x66>
  4006cc:	48 8b 17             	mov    (%rdi),%rdx
  4006cf:	48 89 c6             	mov    %rax,%rsi
  4006d2:	48 39 ca             	cmp    %rcx,%rdx
  4006d5:	7c e9                	jl     4006c0 <del+0x20>
  4006d7:	48 39 ca             	cmp    %rcx,%rdx
  4006da:	75 1c                	jne    4006f8 <del+0x58>
  4006dc:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  4006e0:	48 39 df             	cmp    %rbx,%rdi
  4006e3:	74 2e                	je     400713 <del+0x73>
  4006e5:	4d 85 f6             	test   %r14,%r14
  4006e8:	74 33                	je     40071d <del+0x7d>
  4006ea:	4c 89 70 10          	mov    %r14,0x10(%rax)
  4006ee:	eb 35                	jmp    400725 <del+0x85>
  4006f0:	48 89 df             	mov    %rbx,%rdi
  4006f3:	48 39 ca             	cmp    %rcx,%rdx
  4006f6:	74 e4                	je     4006dc <del+0x3c>
  4006f8:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  4006fd:	31 c0                	xor    %eax,%eax
  4006ff:	e8 2c fe ff ff       	callq  400530 <printf@plt>
  400704:	eb 31                	jmp    400737 <del+0x97>
  400706:	48 89 c7             	mov    %rax,%rdi
  400709:	48 89 f0             	mov    %rsi,%rax
  40070c:	48 39 ca             	cmp    %rcx,%rdx
  40070f:	74 cb                	je     4006dc <del+0x3c>
  400711:	eb e5                	jmp    4006f8 <del+0x58>
  400713:	48 89 df             	mov    %rbx,%rdi
  400716:	e8 f5 fd ff ff       	callq  400510 <free@plt>
  40071b:	eb 10                	jmp    40072d <del+0x8d>
  40071d:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400724:	00 
  400725:	e8 e6 fd ff ff       	callq  400510 <free@plt>
  40072a:	49 89 de             	mov    %rbx,%r14
  40072d:	83 05 20 19 20 00 ff 	addl   $0xffffffff,0x201920(%rip)        # 602054 <n>
  400734:	4c 89 f3             	mov    %r14,%rbx
  400737:	48 89 d8             	mov    %rbx,%rax
  40073a:	48 83 c4 08          	add    $0x8,%rsp
  40073e:	5b                   	pop    %rbx
  40073f:	41 5e                	pop    %r14
  400741:	c3                   	retq   
  400742:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400749:	1f 84 00 00 00 00 00 

0000000000400750 <print>:
  400750:	53                   	push   %rbx
  400751:	48 89 fb             	mov    %rdi,%rbx
  400754:	48 85 db             	test   %rbx,%rbx
  400757:	74 4a                	je     4007a3 <print+0x53>
  400759:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  40075e:	e8 bd fd ff ff       	callq  400520 <puts@plt>
  400763:	8b 35 eb 18 20 00    	mov    0x2018eb(%rip),%esi        # 602054 <n>
  400769:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  40076e:	31 c0                	xor    %eax,%eax
  400770:	e8 bb fd ff ff       	callq  400530 <printf@plt>
  400775:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40077c:	00 00 00 00 
  400780:	48 8b 33             	mov    (%rbx),%rsi
  400783:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400788:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40078c:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400791:	b0 01                	mov    $0x1,%al
  400793:	e8 98 fd ff ff       	callq  400530 <printf@plt>
  400798:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40079c:	48 85 db             	test   %rbx,%rbx
  40079f:	75 df                	jne    400780 <print+0x30>
  4007a1:	eb 0a                	jmp    4007ad <print+0x5d>
  4007a3:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  4007a8:	e8 73 fd ff ff       	callq  400520 <puts@plt>
  4007ad:	31 c0                	xor    %eax,%eax
  4007af:	5b                   	pop    %rbx
  4007b0:	c3                   	retq   
  4007b1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007b8:	0f 1f 84 00 00 00 00 
  4007bf:	00 

00000000004007c0 <creat>:
  4007c0:	41 56                	push   %r14
  4007c2:	53                   	push   %rbx
  4007c3:	50                   	push   %rax
  4007c4:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  4007c9:	e8 52 fd ff ff       	callq  400520 <puts@plt>
  4007ce:	bf 18 00 00 00       	mov    $0x18,%edi
  4007d3:	e8 68 fd ff ff       	callq  400540 <malloc@plt>
  4007d8:	48 89 c3             	mov    %rax,%rbx
  4007db:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007df:	45 31 f6             	xor    %r14d,%r14d
  4007e2:	bf 7d 0c 40 00       	mov    $0x400c7d,%edi
  4007e7:	31 c0                	xor    %eax,%eax
  4007e9:	48 89 de             	mov    %rbx,%rsi
  4007ec:	e8 5f fd ff ff       	callq  400550 <__isoc99_scanf@plt>
  4007f1:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4007f8:	00 
  4007f9:	48 8b 03             	mov    (%rbx),%rax
  4007fc:	48 85 c0             	test   %rax,%rax
  4007ff:	74 7d                	je     40087e <creat+0xbe>
  400801:	45 31 f6             	xor    %r14d,%r14d
  400804:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40080b:	00 00 00 00 00 
  400810:	4d 85 f6             	test   %r14,%r14
  400813:	74 2f                	je     400844 <creat+0x84>
  400815:	4c 89 f2             	mov    %r14,%rdx
  400818:	49 3b 06             	cmp    (%r14),%rax
  40081b:	7e 23                	jle    400840 <creat+0x80>
  40081d:	0f 1f 00             	nopl   (%rax)
  400820:	48 89 d1             	mov    %rdx,%rcx
  400823:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400827:	48 85 d2             	test   %rdx,%rdx
  40082a:	74 0e                	je     40083a <creat+0x7a>
  40082c:	48 3b 02             	cmp    (%rdx),%rax
  40082f:	7f ef                	jg     400820 <creat+0x60>
  400831:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  400835:	4c 39 f2             	cmp    %r14,%rdx
  400838:	74 0a                	je     400844 <creat+0x84>
  40083a:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40083e:	eb 07                	jmp    400847 <creat+0x87>
  400840:	4c 89 73 10          	mov    %r14,0x10(%rbx)
  400844:	49 89 de             	mov    %rbx,%r14
  400847:	83 05 06 18 20 00 01 	addl   $0x1,0x201806(%rip)        # 602054 <n>
  40084e:	bf 18 00 00 00       	mov    $0x18,%edi
  400853:	e8 e8 fc ff ff       	callq  400540 <malloc@plt>
  400858:	48 89 c3             	mov    %rax,%rbx
  40085b:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40085f:	bf 7d 0c 40 00       	mov    $0x400c7d,%edi
  400864:	31 c0                	xor    %eax,%eax
  400866:	48 89 de             	mov    %rbx,%rsi
  400869:	e8 e2 fc ff ff       	callq  400550 <__isoc99_scanf@plt>
  40086e:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400875:	00 
  400876:	48 8b 03             	mov    (%rbx),%rax
  400879:	48 85 c0             	test   %rax,%rax
  40087c:	75 92                	jne    400810 <creat+0x50>
  40087e:	48 89 df             	mov    %rbx,%rdi
  400881:	e8 8a fc ff ff       	callq  400510 <free@plt>
  400886:	bf f0 0c 40 00       	mov    $0x400cf0,%edi
  40088b:	e8 90 fc ff ff       	callq  400520 <puts@plt>
  400890:	4c 89 f0             	mov    %r14,%rax
  400893:	48 83 c4 08          	add    $0x8,%rsp
  400897:	5b                   	pop    %rbx
  400898:	41 5e                	pop    %r14
  40089a:	c3                   	retq   
  40089b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004008a0 <main>:
  4008a0:	41 57                	push   %r15
  4008a2:	41 56                	push   %r14
  4008a4:	41 54                	push   %r12
  4008a6:	53                   	push   %rbx
  4008a7:	50                   	push   %rax
  4008a8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%rsp)
  4008af:	e8 0c ff ff ff       	callq  4007c0 <creat>
  4008b4:	49 89 c4             	mov    %rax,%r12
  4008b7:	bf 10 0d 40 00       	mov    $0x400d10,%edi
  4008bc:	e8 5f fc ff ff       	callq  400520 <puts@plt>
  4008c1:	4d 85 e4             	test   %r12,%r12
  4008c4:	74 4d                	je     400913 <main+0x73>
  4008c6:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  4008cb:	e8 50 fc ff ff       	callq  400520 <puts@plt>
  4008d0:	8b 35 7e 17 20 00    	mov    0x20177e(%rip),%esi        # 602054 <n>
  4008d6:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  4008db:	31 c0                	xor    %eax,%eax
  4008dd:	e8 4e fc ff ff       	callq  400530 <printf@plt>
  4008e2:	4c 89 e3             	mov    %r12,%rbx
  4008e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ec:	00 00 00 00 
  4008f0:	48 8b 33             	mov    (%rbx),%rsi
  4008f3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008f8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008fc:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400901:	b0 01                	mov    $0x1,%al
  400903:	e8 28 fc ff ff       	callq  400530 <printf@plt>
  400908:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40090c:	48 85 db             	test   %rbx,%rbx
  40090f:	75 df                	jne    4008f0 <main+0x50>
  400911:	eb 0a                	jmp    40091d <main+0x7d>
  400913:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400918:	e8 03 fc ff ff       	callq  400520 <puts@plt>
  40091d:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400922:	e8 f9 fb ff ff       	callq  400520 <puts@plt>
  400927:	49 89 e6             	mov    %rsp,%r14
  40092a:	bf 82 0c 40 00       	mov    $0x400c82,%edi
  40092f:	31 c0                	xor    %eax,%eax
  400931:	4c 89 f6             	mov    %r14,%rsi
  400934:	e8 17 fc ff ff       	callq  400550 <__isoc99_scanf@plt>
  400939:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  40093e:	eb 19                	jmp    400959 <main+0xb9>
  400940:	bf 70 0d 40 00       	mov    $0x400d70,%edi
  400945:	e8 d6 fb ff ff       	callq  400520 <puts@plt>
  40094a:	bf 82 0c 40 00       	mov    $0x400c82,%edi
  40094f:	31 c0                	xor    %eax,%eax
  400951:	4c 89 f6             	mov    %r14,%rsi
  400954:	e8 f7 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  400959:	8b 04 24             	mov    (%rsp),%eax
  40095c:	83 f8 01             	cmp    $0x1,%eax
  40095f:	74 1f                	je     400980 <main+0xe0>
  400961:	83 f8 02             	cmp    $0x2,%eax
  400964:	0f 84 96 00 00 00    	je     400a00 <main+0x160>
  40096a:	85 c0                	test   %eax,%eax
  40096c:	75 d2                	jne    400940 <main+0xa0>
  40096e:	e9 35 02 00 00       	jmpq   400ba8 <main+0x308>
  400973:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40097a:	84 00 00 00 00 00 
  400980:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400985:	e8 96 fb ff ff       	callq  400520 <puts@plt>
  40098a:	bf 18 00 00 00       	mov    $0x18,%edi
  40098f:	e8 ac fb ff ff       	callq  400540 <malloc@plt>
  400994:	48 89 c3             	mov    %rax,%rbx
  400997:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40099b:	bf 85 0c 40 00       	mov    $0x400c85,%edi
  4009a0:	31 c0                	xor    %eax,%eax
  4009a2:	48 89 de             	mov    %rbx,%rsi
  4009a5:	e8 a6 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  4009aa:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4009b1:	00 
  4009b2:	4d 85 e4             	test   %r12,%r12
  4009b5:	0f 84 d6 00 00 00    	je     400a91 <main+0x1f1>
  4009bb:	48 8b 0b             	mov    (%rbx),%rcx
  4009be:	4c 89 e2             	mov    %r12,%rdx
  4009c1:	49 3b 0c 24          	cmp    (%r12),%rcx
  4009c5:	0f 8e da 00 00 00    	jle    400aa5 <main+0x205>
  4009cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4009d0:	48 89 d0             	mov    %rdx,%rax
  4009d3:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4009d7:	48 85 d2             	test   %rdx,%rdx
  4009da:	74 12                	je     4009ee <main+0x14e>
  4009dc:	48 3b 0a             	cmp    (%rdx),%rcx
  4009df:	7f ef                	jg     4009d0 <main+0x130>
  4009e1:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  4009e5:	4c 39 e2             	cmp    %r12,%rdx
  4009e8:	0f 84 bb 00 00 00    	je     400aa9 <main+0x209>
  4009ee:	48 89 58 10          	mov    %rbx,0x10(%rax)
  4009f2:	e9 9d 00 00 00       	jmpq   400a94 <main+0x1f4>
  4009f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009fe:	00 00 
  400a00:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  400a05:	e8 16 fb ff ff       	callq  400520 <puts@plt>
  400a0a:	bf 82 0c 40 00       	mov    $0x400c82,%edi
  400a0f:	31 c0                	xor    %eax,%eax
  400a11:	4c 89 fe             	mov    %r15,%rsi
  400a14:	e8 37 fb ff ff       	callq  400550 <__isoc99_scanf@plt>
  400a19:	49 8b 14 24          	mov    (%r12),%rdx
  400a1d:	48 63 4c 24 04       	movslq 0x4(%rsp),%rcx
  400a22:	48 39 ca             	cmp    %rcx,%rdx
  400a25:	7d 48                	jge    400a6f <main+0x1cf>
  400a27:	4c 89 e7             	mov    %r12,%rdi
  400a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400a30:	48 89 f8             	mov    %rdi,%rax
  400a33:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	0f 84 c6 00 00 00    	je     400b06 <main+0x266>
  400a40:	48 8b 17             	mov    (%rdi),%rdx
  400a43:	48 89 c6             	mov    %rax,%rsi
  400a46:	48 39 ca             	cmp    %rcx,%rdx
  400a49:	7c e5                	jl     400a30 <main+0x190>
  400a4b:	48 39 ca             	cmp    %rcx,%rdx
  400a4e:	75 27                	jne    400a77 <main+0x1d7>
  400a50:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400a54:	4c 39 e7             	cmp    %r12,%rdi
  400a57:	0f 84 bd 00 00 00    	je     400b1a <main+0x27a>
  400a5d:	48 85 db             	test   %rbx,%rbx
  400a60:	0f 84 be 00 00 00    	je     400b24 <main+0x284>
  400a66:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400a6a:	e9 bd 00 00 00       	jmpq   400b2c <main+0x28c>
  400a6f:	4c 89 e7             	mov    %r12,%rdi
  400a72:	48 39 ca             	cmp    %rcx,%rdx
  400a75:	74 d9                	je     400a50 <main+0x1b0>
  400a77:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  400a7c:	31 c0                	xor    %eax,%eax
  400a7e:	e8 ad fa ff ff       	callq  400530 <printf@plt>
  400a83:	4d 85 e4             	test   %r12,%r12
  400a86:	0f 85 b7 00 00 00    	jne    400b43 <main+0x2a3>
  400a8c:	e9 05 01 00 00       	jmpq   400b96 <main+0x2f6>
  400a91:	49 89 dc             	mov    %rbx,%r12
  400a94:	83 05 b9 15 20 00 01 	addl   $0x1,0x2015b9(%rip)        # 602054 <n>
  400a9b:	4d 85 e4             	test   %r12,%r12
  400a9e:	75 13                	jne    400ab3 <main+0x213>
  400aa0:	e9 f1 00 00 00       	jmpq   400b96 <main+0x2f6>
  400aa5:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400aa9:	83 05 a4 15 20 00 01 	addl   $0x1,0x2015a4(%rip)        # 602054 <n>
  400ab0:	49 89 dc             	mov    %rbx,%r12
  400ab3:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  400ab8:	e8 63 fa ff ff       	callq  400520 <puts@plt>
  400abd:	8b 35 91 15 20 00    	mov    0x201591(%rip),%esi        # 602054 <n>
  400ac3:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400ac8:	31 c0                	xor    %eax,%eax
  400aca:	e8 61 fa ff ff       	callq  400530 <printf@plt>
  400acf:	4c 89 e3             	mov    %r12,%rbx
  400ad2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ad9:	1f 84 00 00 00 00 00 
  400ae0:	48 8b 33             	mov    (%rbx),%rsi
  400ae3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ae8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400aec:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400af1:	b0 01                	mov    $0x1,%al
  400af3:	e8 38 fa ff ff       	callq  400530 <printf@plt>
  400af8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400afc:	48 85 db             	test   %rbx,%rbx
  400aff:	75 df                	jne    400ae0 <main+0x240>
  400b01:	e9 3a fe ff ff       	jmpq   400940 <main+0xa0>
  400b06:	48 89 c7             	mov    %rax,%rdi
  400b09:	48 89 f0             	mov    %rsi,%rax
  400b0c:	48 39 ca             	cmp    %rcx,%rdx
  400b0f:	0f 84 3b ff ff ff    	je     400a50 <main+0x1b0>
  400b15:	e9 5d ff ff ff       	jmpq   400a77 <main+0x1d7>
  400b1a:	4c 89 e7             	mov    %r12,%rdi
  400b1d:	e8 ee f9 ff ff       	callq  400510 <free@plt>
  400b22:	eb 10                	jmp    400b34 <main+0x294>
  400b24:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400b2b:	00 
  400b2c:	e8 df f9 ff ff       	callq  400510 <free@plt>
  400b31:	4c 89 e3             	mov    %r12,%rbx
  400b34:	83 05 19 15 20 00 ff 	addl   $0xffffffff,0x201519(%rip)        # 602054 <n>
  400b3b:	49 89 dc             	mov    %rbx,%r12
  400b3e:	4d 85 e4             	test   %r12,%r12
  400b41:	74 53                	je     400b96 <main+0x2f6>
  400b43:	bf 8b 0c 40 00       	mov    $0x400c8b,%edi
  400b48:	e8 d3 f9 ff ff       	callq  400520 <puts@plt>
  400b4d:	8b 35 01 15 20 00    	mov    0x201501(%rip),%esi        # 602054 <n>
  400b53:	bf 60 0c 40 00       	mov    $0x400c60,%edi
  400b58:	31 c0                	xor    %eax,%eax
  400b5a:	e8 d1 f9 ff ff       	callq  400530 <printf@plt>
  400b5f:	4c 89 e3             	mov    %r12,%rbx
  400b62:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b69:	1f 84 00 00 00 00 00 
  400b70:	48 8b 33             	mov    (%rbx),%rsi
  400b73:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b78:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b7c:	bf 74 0c 40 00       	mov    $0x400c74,%edi
  400b81:	b0 01                	mov    $0x1,%al
  400b83:	e8 a8 f9 ff ff       	callq  400530 <printf@plt>
  400b88:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b8c:	48 85 db             	test   %rbx,%rbx
  400b8f:	75 df                	jne    400b70 <main+0x2d0>
  400b91:	e9 aa fd ff ff       	jmpq   400940 <main+0xa0>
  400b96:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400b9b:	e8 80 f9 ff ff       	callq  400520 <puts@plt>
  400ba0:	45 31 e4             	xor    %r12d,%r12d
  400ba3:	e9 98 fd ff ff       	jmpq   400940 <main+0xa0>
  400ba8:	48 83 c4 08          	add    $0x8,%rsp
  400bac:	5b                   	pop    %rbx
  400bad:	41 5c                	pop    %r12
  400baf:	41 5e                	pop    %r14
  400bb1:	41 5f                	pop    %r15
  400bb3:	c3                   	retq   
  400bb4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bbb:	00 00 00 
  400bbe:	66 90                	xchg   %ax,%ax

0000000000400bc0 <__libc_csu_init>:
  400bc0:	41 57                	push   %r15
  400bc2:	41 56                	push   %r14
  400bc4:	49 89 d7             	mov    %rdx,%r15
  400bc7:	41 55                	push   %r13
  400bc9:	41 54                	push   %r12
  400bcb:	4c 8d 25 2e 12 20 00 	lea    0x20122e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bd2:	55                   	push   %rbp
  400bd3:	48 8d 2d 2e 12 20 00 	lea    0x20122e(%rip),%rbp        # 601e08 <__init_array_end>
  400bda:	53                   	push   %rbx
  400bdb:	41 89 fd             	mov    %edi,%r13d
  400bde:	49 89 f6             	mov    %rsi,%r14
  400be1:	4c 29 e5             	sub    %r12,%rbp
  400be4:	48 83 ec 08          	sub    $0x8,%rsp
  400be8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bec:	e8 ef f8 ff ff       	callq  4004e0 <_init>
  400bf1:	48 85 ed             	test   %rbp,%rbp
  400bf4:	74 20                	je     400c16 <__libc_csu_init+0x56>
  400bf6:	31 db                	xor    %ebx,%ebx
  400bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bff:	00 
  400c00:	4c 89 fa             	mov    %r15,%rdx
  400c03:	4c 89 f6             	mov    %r14,%rsi
  400c06:	44 89 ef             	mov    %r13d,%edi
  400c09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c0d:	48 83 c3 01          	add    $0x1,%rbx
  400c11:	48 39 dd             	cmp    %rbx,%rbp
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x40>
  400c16:	48 83 c4 08          	add    $0x8,%rsp
  400c1a:	5b                   	pop    %rbx
  400c1b:	5d                   	pop    %rbp
  400c1c:	41 5c                	pop    %r12
  400c1e:	41 5d                	pop    %r13
  400c20:	41 5e                	pop    %r14
  400c22:	41 5f                	pop    %r15
  400c24:	c3                   	retq   
  400c25:	90                   	nop
  400c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c2d:	00 00 00 

0000000000400c30 <__libc_csu_fini>:
  400c30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c34 <_fini>:
  400c34:	48 83 ec 08          	sub    $0x8,%rsp
  400c38:	48 83 c4 08          	add    $0x8,%rsp
  400c3c:	c3                   	retq   
