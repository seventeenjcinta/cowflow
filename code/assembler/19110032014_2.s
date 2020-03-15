
c/19110032014_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400518 <_init>:
  400518:	48 83 ec 08          	sub    $0x8,%rsp
  40051c:	48 8b 05 d5 1a 20 00 	mov    0x201ad5(%rip),%rax        # 601ff8 <__gmon_start__>
  400523:	48 85 c0             	test   %rax,%rax
  400526:	74 02                	je     40052a <_init+0x12>
  400528:	ff d0                	callq  *%rax
  40052a:	48 83 c4 08          	add    $0x8,%rsp
  40052e:	c3                   	retq   

Disassembly of section .plt:

0000000000400530 <.plt>:
  400530:	ff 35 d2 1a 20 00    	pushq  0x201ad2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400536:	ff 25 d4 1a 20 00    	jmpq   *0x201ad4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40053c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400540 <free@plt>:
  400540:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400546:	68 00 00 00 00       	pushq  $0x0
  40054b:	e9 e0 ff ff ff       	jmpq   400530 <.plt>

0000000000400550 <puts@plt>:
  400550:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602020 <puts@GLIBC_2.2.5>
  400556:	68 01 00 00 00       	pushq  $0x1
  40055b:	e9 d0 ff ff ff       	jmpq   400530 <.plt>

0000000000400560 <printf@plt>:
  400560:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400566:	68 02 00 00 00       	pushq  $0x2
  40056b:	e9 c0 ff ff ff       	jmpq   400530 <.plt>

0000000000400570 <malloc@plt>:
  400570:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400576:	68 03 00 00 00       	pushq  $0x3
  40057b:	e9 b0 ff ff ff       	jmpq   400530 <.plt>

0000000000400580 <__isoc99_scanf@plt>:
  400580:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400586:	68 04 00 00 00       	pushq  $0x4
  40058b:	e9 a0 ff ff ff       	jmpq   400530 <.plt>

0000000000400590 <exit@plt>:
  400590:	ff 25 aa 1a 20 00    	jmpq   *0x201aaa(%rip)        # 602040 <exit@GLIBC_2.2.5>
  400596:	68 05 00 00 00       	pushq  $0x5
  40059b:	e9 90 ff ff ff       	jmpq   400530 <.plt>

Disassembly of section .text:

00000000004005a0 <_start>:
  4005a0:	31 ed                	xor    %ebp,%ebp
  4005a2:	49 89 d1             	mov    %rdx,%r9
  4005a5:	5e                   	pop    %rsi
  4005a6:	48 89 e2             	mov    %rsp,%rdx
  4005a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ad:	50                   	push   %rax
  4005ae:	54                   	push   %rsp
  4005af:	49 c7 c0 c0 0d 40 00 	mov    $0x400dc0,%r8
  4005b6:	48 c7 c1 50 0d 40 00 	mov    $0x400d50,%rcx
  4005bd:	48 c7 c7 40 09 40 00 	mov    $0x400940,%rdi
  4005c4:	ff 15 26 1a 20 00    	callq  *0x201a26(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ca:	f4                   	hlt    
  4005cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005d0 <_dl_relocate_static_pie>:
  4005d0:	f3 c3                	repz retq 
  4005d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005d9:	00 00 00 
  4005dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005e0 <deregister_tm_clones>:
  4005e0:	55                   	push   %rbp
  4005e1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005e6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005ec:	48 89 e5             	mov    %rsp,%rbp
  4005ef:	74 17                	je     400608 <deregister_tm_clones+0x28>
  4005f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f6:	48 85 c0             	test   %rax,%rax
  4005f9:	74 0d                	je     400608 <deregister_tm_clones+0x28>
  4005fb:	5d                   	pop    %rbp
  4005fc:	bf 58 20 60 00       	mov    $0x602058,%edi
  400601:	ff e0                	jmpq   *%rax
  400603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400608:	5d                   	pop    %rbp
  400609:	c3                   	retq   
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400610 <register_tm_clones>:
  400610:	be 58 20 60 00       	mov    $0x602058,%esi
  400615:	55                   	push   %rbp
  400616:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  40061d:	48 89 e5             	mov    %rsp,%rbp
  400620:	48 c1 fe 03          	sar    $0x3,%rsi
  400624:	48 89 f0             	mov    %rsi,%rax
  400627:	48 c1 e8 3f          	shr    $0x3f,%rax
  40062b:	48 01 c6             	add    %rax,%rsi
  40062e:	48 d1 fe             	sar    %rsi
  400631:	74 15                	je     400648 <register_tm_clones+0x38>
  400633:	b8 00 00 00 00       	mov    $0x0,%eax
  400638:	48 85 c0             	test   %rax,%rax
  40063b:	74 0b                	je     400648 <register_tm_clones+0x38>
  40063d:	5d                   	pop    %rbp
  40063e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400643:	ff e0                	jmpq   *%rax
  400645:	0f 1f 00             	nopl   (%rax)
  400648:	5d                   	pop    %rbp
  400649:	c3                   	retq   
  40064a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400650 <__do_global_dtors_aux>:
  400650:	80 3d 01 1a 20 00 00 	cmpb   $0x0,0x201a01(%rip)        # 602058 <__TMC_END__>
  400657:	75 17                	jne    400670 <__do_global_dtors_aux+0x20>
  400659:	55                   	push   %rbp
  40065a:	48 89 e5             	mov    %rsp,%rbp
  40065d:	e8 7e ff ff ff       	callq  4005e0 <deregister_tm_clones>
  400662:	c6 05 ef 19 20 00 01 	movb   $0x1,0x2019ef(%rip)        # 602058 <__TMC_END__>
  400669:	5d                   	pop    %rbp
  40066a:	c3                   	retq   
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400670:	f3 c3                	repz retq 
  400672:	0f 1f 40 00          	nopl   0x0(%rax)
  400676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40067d:	00 00 00 

0000000000400680 <frame_dummy>:
  400680:	55                   	push   %rbp
  400681:	48 89 e5             	mov    %rsp,%rbp
  400684:	5d                   	pop    %rbp
  400685:	eb 89                	jmp    400610 <register_tm_clones>
  400687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40068e:	00 00 

0000000000400690 <print>:
  400690:	53                   	push   %rbx
  400691:	48 89 fb             	mov    %rdi,%rbx
  400694:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400699:	e8 b2 fe ff ff       	callq  400550 <puts@plt>
  40069e:	48 85 db             	test   %rbx,%rbx
  4006a1:	74 29                	je     4006cc <print+0x3c>
  4006a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006aa:	84 00 00 00 00 00 
  4006b0:	48 8b 33             	mov    (%rbx),%rsi
  4006b3:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006b7:	bf dc 0d 40 00       	mov    $0x400ddc,%edi
  4006bc:	31 c0                	xor    %eax,%eax
  4006be:	e8 9d fe ff ff       	callq  400560 <printf@plt>
  4006c3:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  4006c7:	48 85 db             	test   %rbx,%rbx
  4006ca:	75 e4                	jne    4006b0 <print+0x20>
  4006cc:	5b                   	pop    %rbx
  4006cd:	c3                   	retq   
  4006ce:	66 90                	xchg   %ax,%ax

00000000004006d0 <creat>:
  4006d0:	55                   	push   %rbp
  4006d1:	41 57                	push   %r15
  4006d3:	41 56                	push   %r14
  4006d5:	53                   	push   %rbx
  4006d6:	50                   	push   %rax
  4006d7:	c7 05 7f 19 20 00 00 	movl   $0x0,0x20197f(%rip)        # 602060 <n>
  4006de:	00 00 00 
  4006e1:	bf 28 00 00 00       	mov    $0x28,%edi
  4006e6:	e8 85 fe ff ff       	callq  400570 <malloc@plt>
  4006eb:	49 89 c7             	mov    %rax,%r15
  4006ee:	bf 58 0e 40 00       	mov    $0x400e58,%edi
  4006f3:	e8 58 fe ff ff       	callq  400550 <puts@plt>
  4006f8:	45 31 f6             	xor    %r14d,%r14d
  4006fb:	bf e4 0d 40 00       	mov    $0x400de4,%edi
  400700:	be 01 00 00 00       	mov    $0x1,%esi
  400705:	31 c0                	xor    %eax,%eax
  400707:	e8 54 fe ff ff       	callq  400560 <printf@plt>
  40070c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400710:	bf e9 0d 40 00       	mov    $0x400de9,%edi
  400715:	31 c0                	xor    %eax,%eax
  400717:	4c 89 fe             	mov    %r15,%rsi
  40071a:	e8 61 fe ff ff       	callq  400580 <__isoc99_scanf@plt>
  40071f:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400723:	74 78                	je     40079d <creat+0xcd>
  400725:	bd 02 00 00 00       	mov    $0x2,%ebp
  40072a:	4c 89 f8             	mov    %r15,%rax
  40072d:	4c 89 fb             	mov    %r15,%rbx
  400730:	31 c9                	xor    %ecx,%ecx
  400732:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400739:	1f 84 00 00 00 00 00 
  400740:	49 89 df             	mov    %rbx,%r15
  400743:	8b 15 17 19 20 00    	mov    0x201917(%rip),%edx        # 602060 <n>
  400749:	8d 72 01             	lea    0x1(%rdx),%esi
  40074c:	89 35 0e 19 20 00    	mov    %esi,0x20190e(%rip)        # 602060 <n>
  400752:	4d 89 fe             	mov    %r15,%r14
  400755:	85 d2                	test   %edx,%edx
  400757:	74 07                	je     400760 <creat+0x90>
  400759:	4c 89 78 20          	mov    %r15,0x20(%rax)
  40075d:	49 89 ce             	mov    %rcx,%r14
  400760:	bf 28 00 00 00       	mov    $0x28,%edi
  400765:	e8 06 fe ff ff       	callq  400570 <malloc@plt>
  40076a:	48 89 c3             	mov    %rax,%rbx
  40076d:	bf e4 0d 40 00       	mov    $0x400de4,%edi
  400772:	31 c0                	xor    %eax,%eax
  400774:	89 ee                	mov    %ebp,%esi
  400776:	e8 e5 fd ff ff       	callq  400560 <printf@plt>
  40077b:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40077f:	bf e9 0d 40 00       	mov    $0x400de9,%edi
  400784:	31 c0                	xor    %eax,%eax
  400786:	48 89 de             	mov    %rbx,%rsi
  400789:	e8 f2 fd ff ff       	callq  400580 <__isoc99_scanf@plt>
  40078e:	83 c5 01             	add    $0x1,%ebp
  400791:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400795:	4c 89 f8             	mov    %r15,%rax
  400798:	4c 89 f1             	mov    %r14,%rcx
  40079b:	75 a3                	jne    400740 <creat+0x70>
  40079d:	4c 89 3d c4 18 20 00 	mov    %r15,0x2018c4(%rip)        # 602068 <last>
  4007a4:	49 c7 47 20 00 00 00 	movq   $0x0,0x20(%r15)
  4007ab:	00 
  4007ac:	4c 89 f0             	mov    %r14,%rax
  4007af:	48 83 c4 08          	add    $0x8,%rsp
  4007b3:	5b                   	pop    %rbx
  4007b4:	41 5e                	pop    %r14
  4007b6:	41 5f                	pop    %r15
  4007b8:	5d                   	pop    %rbp
  4007b9:	c3                   	retq   
  4007ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007c0 <bfin>:
  4007c0:	48 8b 05 a9 18 20 00 	mov    0x2018a9(%rip),%rax        # 602070 <blast>
  4007c7:	c3                   	retq   
  4007c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007cf:	00 

00000000004007d0 <ins>:
  4007d0:	48 85 ff             	test   %rdi,%rdi
  4007d3:	74 42                	je     400817 <ins+0x47>
  4007d5:	4c 8b 06             	mov    (%rsi),%r8
  4007d8:	48 8b 17             	mov    (%rdi),%rdx
  4007db:	49 39 d0             	cmp    %rdx,%r8
  4007de:	7e 3b                	jle    40081b <ins+0x4b>
  4007e0:	48 89 f9             	mov    %rdi,%rcx
  4007e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007ea:	84 00 00 00 00 00 
  4007f0:	48 89 c8             	mov    %rcx,%rax
  4007f3:	48 8b 48 20          	mov    0x20(%rax),%rcx
  4007f7:	48 85 c9             	test   %rcx,%rcx
  4007fa:	74 2f                	je     40082b <ins+0x5b>
  4007fc:	48 8b 11             	mov    (%rcx),%rdx
  4007ff:	49 89 c1             	mov    %rax,%r9
  400802:	49 39 d0             	cmp    %rdx,%r8
  400805:	7f e9                	jg     4007f0 <ins+0x20>
  400807:	49 39 d0             	cmp    %rdx,%r8
  40080a:	7d 17                	jge    400823 <ins+0x53>
  40080c:	48 39 f9             	cmp    %rdi,%rcx
  40080f:	74 24                	je     400835 <ins+0x65>
  400811:	49 89 71 20          	mov    %rsi,0x20(%r9)
  400815:	eb 24                	jmp    40083b <ins+0x6b>
  400817:	31 c9                	xor    %ecx,%ecx
  400819:	eb 1d                	jmp    400838 <ins+0x68>
  40081b:	48 89 f9             	mov    %rdi,%rcx
  40081e:	49 39 d0             	cmp    %rdx,%r8
  400821:	7c e9                	jl     40080c <ins+0x3c>
  400823:	48 89 71 20          	mov    %rsi,0x20(%rcx)
  400827:	31 c9                	xor    %ecx,%ecx
  400829:	eb 10                	jmp    40083b <ins+0x6b>
  40082b:	48 89 c1             	mov    %rax,%rcx
  40082e:	49 39 d0             	cmp    %rdx,%r8
  400831:	7c d9                	jl     40080c <ins+0x3c>
  400833:	eb ee                	jmp    400823 <ins+0x53>
  400835:	48 89 f9             	mov    %rdi,%rcx
  400838:	48 89 f7             	mov    %rsi,%rdi
  40083b:	48 89 4e 20          	mov    %rcx,0x20(%rsi)
  40083f:	48 89 f8             	mov    %rdi,%rax
  400842:	c3                   	retq   
  400843:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40084a:	84 00 00 00 00 00 

0000000000400850 <del>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	48 85 db             	test   %rbx,%rbx
  400857:	74 0e                	je     400867 <del+0x17>
  400859:	48 39 33             	cmp    %rsi,(%rbx)
  40085c:	75 19                	jne    400877 <del+0x27>
  40085e:	48 89 df             	mov    %rbx,%rdi
  400861:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  400865:	eb 37                	jmp    40089e <del+0x4e>
  400867:	31 db                	xor    %ebx,%ebx
  400869:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  40086e:	31 c0                	xor    %eax,%eax
  400870:	e8 eb fc ff ff       	callq  400560 <printf@plt>
  400875:	eb 34                	jmp    4008ab <del+0x5b>
  400877:	48 89 df             	mov    %rbx,%rdi
  40087a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400880:	48 89 f8             	mov    %rdi,%rax
  400883:	48 8b 78 20          	mov    0x20(%rax),%rdi
  400887:	48 39 37             	cmp    %rsi,(%rdi)
  40088a:	75 f4                	jne    400880 <del+0x30>
  40088c:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
  400890:	48 39 df             	cmp    %rbx,%rdi
  400893:	74 06                	je     40089b <del+0x4b>
  400895:	48 89 48 20          	mov    %rcx,0x20(%rax)
  400899:	eb 03                	jmp    40089e <del+0x4e>
  40089b:	48 89 cb             	mov    %rcx,%rbx
  40089e:	48 c7 47 20 00 00 00 	movq   $0x0,0x20(%rdi)
  4008a5:	00 
  4008a6:	e8 95 fc ff ff       	callq  400540 <free@plt>
  4008ab:	48 89 d8             	mov    %rbx,%rax
  4008ae:	5b                   	pop    %rbx
  4008af:	c3                   	retq   

00000000004008b0 <sort>:
  4008b0:	4c 8b 05 b1 17 20 00 	mov    0x2017b1(%rip),%r8        # 602068 <last>
  4008b7:	49 39 f8             	cmp    %rdi,%r8
  4008ba:	74 71                	je     40092d <sort+0x7d>
  4008bc:	48 8b 05 ad 17 20 00 	mov    0x2017ad(%rip),%rax        # 602070 <blast>
  4008c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008ca:	84 00 00 00 00 00 
  4008d0:	4c 89 c2             	mov    %r8,%rdx
  4008d3:	4c 39 c7             	cmp    %r8,%rdi
  4008d6:	74 1e                	je     4008f6 <sort+0x46>
  4008d8:	48 89 fe             	mov    %rdi,%rsi
  4008db:	48 89 fa             	mov    %rdi,%rdx
  4008de:	66 90                	xchg   %ax,%ax
  4008e0:	48 8b 0e             	mov    (%rsi),%rcx
  4008e3:	48 3b 0a             	cmp    (%rdx),%rcx
  4008e6:	48 0f 4f d6          	cmovg  %rsi,%rdx
  4008ea:	48 8b 4e 20          	mov    0x20(%rsi),%rcx
  4008ee:	48 89 ce             	mov    %rcx,%rsi
  4008f1:	4c 39 c1             	cmp    %r8,%rcx
  4008f4:	75 ea                	jne    4008e0 <sort+0x30>
  4008f6:	48 8b 0a             	mov    (%rdx),%rcx
  4008f9:	49 3b 08             	cmp    (%r8),%rcx
  4008fc:	7e 1f                	jle    40091d <sort+0x6d>
  4008fe:	49 8b 70 20          	mov    0x20(%r8),%rsi
  400902:	48 89 72 20          	mov    %rsi,0x20(%rdx)
  400906:	48 39 fa             	cmp    %rdi,%rdx
  400909:	75 0a                	jne    400915 <sort+0x65>
  40090b:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40090f:	48 89 fa             	mov    %rdi,%rdx
  400912:	4c 89 c7             	mov    %r8,%rdi
  400915:	49 89 70 20          	mov    %rsi,0x20(%r8)
  400919:	48 89 50 20          	mov    %rdx,0x20(%rax)
  40091d:	49 89 c0             	mov    %rax,%r8
  400920:	48 39 f8             	cmp    %rdi,%rax
  400923:	75 ab                	jne    4008d0 <sort+0x20>
  400925:	48 89 05 3c 17 20 00 	mov    %rax,0x20173c(%rip)        # 602068 <last>
  40092c:	c3                   	retq   
  40092d:	48 89 f8             	mov    %rdi,%rax
  400930:	c3                   	retq   
  400931:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400938:	0f 1f 84 00 00 00 00 
  40093f:	00 

0000000000400940 <main>:
  400940:	41 57                	push   %r15
  400942:	41 56                	push   %r14
  400944:	41 55                	push   %r13
  400946:	41 54                	push   %r12
  400948:	53                   	push   %rbx
  400949:	48 83 ec 10          	sub    $0x10,%rsp
  40094d:	bf 28 00 00 00       	mov    $0x28,%edi
  400952:	e8 19 fc ff ff       	callq  400570 <malloc@plt>
  400957:	49 89 c6             	mov    %rax,%r14
  40095a:	e8 71 fd ff ff       	callq  4006d0 <creat>
  40095f:	48 8b 0d 02 17 20 00 	mov    0x201702(%rip),%rcx        # 602068 <last>
  400966:	48 39 c1             	cmp    %rax,%rcx
  400969:	74 74                	je     4009df <main+0x9f>
  40096b:	4c 8b 25 fe 16 20 00 	mov    0x2016fe(%rip),%r12        # 602070 <blast>
  400972:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400979:	1f 84 00 00 00 00 00 
  400980:	48 89 ca             	mov    %rcx,%rdx
  400983:	48 39 c8             	cmp    %rcx,%rax
  400986:	74 1e                	je     4009a6 <main+0x66>
  400988:	48 89 c6             	mov    %rax,%rsi
  40098b:	48 89 c2             	mov    %rax,%rdx
  40098e:	66 90                	xchg   %ax,%ax
  400990:	48 8b 3e             	mov    (%rsi),%rdi
  400993:	48 3b 3a             	cmp    (%rdx),%rdi
  400996:	48 0f 4f d6          	cmovg  %rsi,%rdx
  40099a:	48 8b 7e 20          	mov    0x20(%rsi),%rdi
  40099e:	48 89 fe             	mov    %rdi,%rsi
  4009a1:	48 39 cf             	cmp    %rcx,%rdi
  4009a4:	75 ea                	jne    400990 <main+0x50>
  4009a6:	48 8b 32             	mov    (%rdx),%rsi
  4009a9:	48 3b 31             	cmp    (%rcx),%rsi
  4009ac:	7e 20                	jle    4009ce <main+0x8e>
  4009ae:	48 8b 71 20          	mov    0x20(%rcx),%rsi
  4009b2:	48 89 72 20          	mov    %rsi,0x20(%rdx)
  4009b6:	48 39 c2             	cmp    %rax,%rdx
  4009b9:	75 0a                	jne    4009c5 <main+0x85>
  4009bb:	48 8b 70 20          	mov    0x20(%rax),%rsi
  4009bf:	48 89 c2             	mov    %rax,%rdx
  4009c2:	48 89 c8             	mov    %rcx,%rax
  4009c5:	48 89 71 20          	mov    %rsi,0x20(%rcx)
  4009c9:	49 89 54 24 20       	mov    %rdx,0x20(%r12)
  4009ce:	4c 89 e1             	mov    %r12,%rcx
  4009d1:	49 39 c4             	cmp    %rax,%r12
  4009d4:	75 aa                	jne    400980 <main+0x40>
  4009d6:	4c 89 25 8b 16 20 00 	mov    %r12,0x20168b(%rip)        # 602068 <last>
  4009dd:	eb 03                	jmp    4009e2 <main+0xa2>
  4009df:	49 89 c4             	mov    %rax,%r12
  4009e2:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  4009e7:	e8 64 fb ff ff       	callq  400550 <puts@plt>
  4009ec:	4d 85 e4             	test   %r12,%r12
  4009ef:	0f 84 82 00 00 00    	je     400a77 <main+0x137>
  4009f5:	4c 89 e3             	mov    %r12,%rbx
  4009f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009ff:	00 
  400a00:	48 8b 33             	mov    (%rbx),%rsi
  400a03:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a07:	bf dc 0d 40 00       	mov    $0x400ddc,%edi
  400a0c:	31 c0                	xor    %eax,%eax
  400a0e:	e8 4d fb ff ff       	callq  400560 <printf@plt>
  400a13:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  400a17:	48 85 db             	test   %rbx,%rbx
  400a1a:	75 e4                	jne    400a00 <main+0xc0>
  400a1c:	bf f0 0d 40 00       	mov    $0x400df0,%edi
  400a21:	31 c0                	xor    %eax,%eax
  400a23:	e8 38 fb ff ff       	callq  400560 <printf@plt>
  400a28:	4c 89 f2             	mov    %r14,%rdx
  400a2b:	48 83 c2 08          	add    $0x8,%rdx
  400a2f:	bf e9 0d 40 00       	mov    $0x400de9,%edi
  400a34:	31 c0                	xor    %eax,%eax
  400a36:	4c 89 f6             	mov    %r14,%rsi
  400a39:	e8 42 fb ff ff       	callq  400580 <__isoc99_scanf@plt>
  400a3e:	49 8b 0e             	mov    (%r14),%rcx
  400a41:	49 8b 34 24          	mov    (%r12),%rsi
  400a45:	48 39 f1             	cmp    %rsi,%rcx
  400a48:	7e 65                	jle    400aaf <main+0x16f>
  400a4a:	4c 89 e0             	mov    %r12,%rax
  400a4d:	0f 1f 00             	nopl   (%rax)
  400a50:	48 89 c7             	mov    %rax,%rdi
  400a53:	48 8b 47 20          	mov    0x20(%rdi),%rax
  400a57:	48 85 c0             	test   %rax,%rax
  400a5a:	0f 84 d6 02 00 00    	je     400d36 <main+0x3f6>
  400a60:	48 8b 30             	mov    (%rax),%rsi
  400a63:	48 89 fa             	mov    %rdi,%rdx
  400a66:	48 39 f1             	cmp    %rsi,%rcx
  400a69:	7f e5                	jg     400a50 <main+0x110>
  400a6b:	48 39 f1             	cmp    %rsi,%rcx
  400a6e:	7d 47                	jge    400ab7 <main+0x177>
  400a70:	4c 39 e0             	cmp    %r12,%rax
  400a73:	75 47                	jne    400abc <main+0x17c>
  400a75:	eb 25                	jmp    400a9c <main+0x15c>
  400a77:	45 31 e4             	xor    %r12d,%r12d
  400a7a:	bf f0 0d 40 00       	mov    $0x400df0,%edi
  400a7f:	31 c0                	xor    %eax,%eax
  400a81:	e8 da fa ff ff       	callq  400560 <printf@plt>
  400a86:	4c 89 f2             	mov    %r14,%rdx
  400a89:	48 83 c2 08          	add    $0x8,%rdx
  400a8d:	bf e9 0d 40 00       	mov    $0x400de9,%edi
  400a92:	31 c0                	xor    %eax,%eax
  400a94:	4c 89 f6             	mov    %r14,%rsi
  400a97:	e8 e4 fa ff ff       	callq  400580 <__isoc99_scanf@plt>
  400a9c:	4d 89 66 20          	mov    %r12,0x20(%r14)
  400aa0:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400aa5:	e8 a6 fa ff ff       	callq  400550 <puts@plt>
  400aaa:	4d 89 f4             	mov    %r14,%r12
  400aad:	eb 1f                	jmp    400ace <main+0x18e>
  400aaf:	4c 89 e0             	mov    %r12,%rax
  400ab2:	48 39 f1             	cmp    %rsi,%rcx
  400ab5:	7c b9                	jl     400a70 <main+0x130>
  400ab7:	48 89 c2             	mov    %rax,%rdx
  400aba:	31 c0                	xor    %eax,%eax
  400abc:	4c 89 72 20          	mov    %r14,0x20(%rdx)
  400ac0:	49 89 46 20          	mov    %rax,0x20(%r14)
  400ac4:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400ac9:	e8 82 fa ff ff       	callq  400550 <puts@plt>
  400ace:	4c 89 e3             	mov    %r12,%rbx
  400ad1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ad8:	0f 1f 84 00 00 00 00 
  400adf:	00 
  400ae0:	48 8b 33             	mov    (%rbx),%rsi
  400ae3:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400ae7:	bf dc 0d 40 00       	mov    $0x400ddc,%edi
  400aec:	31 c0                	xor    %eax,%eax
  400aee:	e8 6d fa ff ff       	callq  400560 <printf@plt>
  400af3:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  400af7:	48 85 db             	test   %rbx,%rbx
  400afa:	75 e4                	jne    400ae0 <main+0x1a0>
  400afc:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400b01:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400b06:	eb 28                	jmp    400b30 <main+0x1f0>
  400b08:	bf d4 0d 40 00       	mov    $0x400dd4,%edi
  400b0d:	31 c0                	xor    %eax,%eax
  400b0f:	e8 4c fa ff ff       	callq  400560 <printf@plt>
  400b14:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400b19:	e8 32 fa ff ff       	callq  400550 <puts@plt>
  400b1e:	45 31 e4             	xor    %r12d,%r12d
  400b21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b28:	0f 1f 84 00 00 00 00 
  400b2f:	00 
  400b30:	bf 07 0e 40 00       	mov    $0x400e07,%edi
  400b35:	31 c0                	xor    %eax,%eax
  400b37:	e8 24 fa ff ff       	callq  400560 <printf@plt>
  400b3c:	bf 2a 0e 40 00       	mov    $0x400e2a,%edi
  400b41:	31 c0                	xor    %eax,%eax
  400b43:	4c 89 fe             	mov    %r15,%rsi
  400b46:	e8 35 fa ff ff       	callq  400580 <__isoc99_scanf@plt>
  400b4b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400b4f:	83 f8 01             	cmp    $0x1,%eax
  400b52:	0f 84 98 00 00 00    	je     400bf0 <main+0x2b0>
  400b58:	83 f8 02             	cmp    $0x2,%eax
  400b5b:	74 13                	je     400b70 <main+0x230>
  400b5d:	85 c0                	test   %eax,%eax
  400b5f:	75 cf                	jne    400b30 <main+0x1f0>
  400b61:	e9 c9 01 00 00       	jmpq   400d2f <main+0x3ef>
  400b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b6d:	00 00 00 
  400b70:	bf 2d 0e 40 00       	mov    $0x400e2d,%edi
  400b75:	31 c0                	xor    %eax,%eax
  400b77:	e8 e4 f9 ff ff       	callq  400560 <printf@plt>
  400b7c:	bf 44 0e 40 00       	mov    $0x400e44,%edi
  400b81:	31 c0                	xor    %eax,%eax
  400b83:	4c 89 f6             	mov    %r14,%rsi
  400b86:	e8 f5 f9 ff ff       	callq  400580 <__isoc99_scanf@plt>
  400b8b:	4d 85 e4             	test   %r12,%r12
  400b8e:	0f 84 74 ff ff ff    	je     400b08 <main+0x1c8>
  400b94:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400b99:	49 39 04 24          	cmp    %rax,(%r12)
  400b9d:	4c 89 e7             	mov    %r12,%rdi
  400ba0:	75 1e                	jne    400bc0 <main+0x280>
  400ba2:	49 8d 44 24 20       	lea    0x20(%r12),%rax
  400ba7:	4d 8b 6c 24 20       	mov    0x20(%r12),%r13
  400bac:	e9 be 00 00 00       	jmpq   400c6f <main+0x32f>
  400bb1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400bb8:	0f 1f 84 00 00 00 00 
  400bbf:	00 
  400bc0:	48 89 f9             	mov    %rdi,%rcx
  400bc3:	48 8b 79 20          	mov    0x20(%rcx),%rdi
  400bc7:	48 39 07             	cmp    %rax,(%rdi)
  400bca:	75 f4                	jne    400bc0 <main+0x280>
  400bcc:	48 8d 47 20          	lea    0x20(%rdi),%rax
  400bd0:	4c 8b 6f 20          	mov    0x20(%rdi),%r13
  400bd4:	4c 39 e7             	cmp    %r12,%rdi
  400bd7:	0f 84 92 00 00 00    	je     400c6f <main+0x32f>
  400bdd:	4c 89 69 20          	mov    %r13,0x20(%rcx)
  400be1:	4d 89 e5             	mov    %r12,%r13
  400be4:	e9 89 00 00 00       	jmpq   400c72 <main+0x332>
  400be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400bf0:	bf 28 00 00 00       	mov    $0x28,%edi
  400bf5:	e8 76 f9 ff ff       	callq  400570 <malloc@plt>
  400bfa:	48 89 c3             	mov    %rax,%rbx
  400bfd:	bf 58 0e 40 00       	mov    $0x400e58,%edi
  400c02:	31 c0                	xor    %eax,%eax
  400c04:	e8 57 f9 ff ff       	callq  400560 <printf@plt>
  400c09:	bf e9 0d 40 00       	mov    $0x400de9,%edi
  400c0e:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400c12:	31 c0                	xor    %eax,%eax
  400c14:	48 89 de             	mov    %rbx,%rsi
  400c17:	e8 64 f9 ff ff       	callq  400580 <__isoc99_scanf@plt>
  400c1c:	4d 85 e4             	test   %r12,%r12
  400c1f:	0f 84 9f 00 00 00    	je     400cc4 <main+0x384>
  400c25:	48 8b 0b             	mov    (%rbx),%rcx
  400c28:	49 8b 34 24          	mov    (%r12),%rsi
  400c2c:	48 39 f1             	cmp    %rsi,%rcx
  400c2f:	0f 8e a5 00 00 00    	jle    400cda <main+0x39a>
  400c35:	4c 89 e0             	mov    %r12,%rax
  400c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c3f:	00 
  400c40:	48 89 c7             	mov    %rax,%rdi
  400c43:	48 8b 47 20          	mov    0x20(%rdi),%rax
  400c47:	48 85 c0             	test   %rax,%rax
  400c4a:	0f 84 d1 00 00 00    	je     400d21 <main+0x3e1>
  400c50:	48 8b 30             	mov    (%rax),%rsi
  400c53:	48 89 fa             	mov    %rdi,%rdx
  400c56:	48 39 f1             	cmp    %rsi,%rcx
  400c59:	7f e5                	jg     400c40 <main+0x300>
  400c5b:	48 39 f1             	cmp    %rsi,%rcx
  400c5e:	0f 8d 82 00 00 00    	jge    400ce6 <main+0x3a6>
  400c64:	4c 39 e0             	cmp    %r12,%rax
  400c67:	0f 85 7e 00 00 00    	jne    400ceb <main+0x3ab>
  400c6d:	eb 58                	jmp    400cc7 <main+0x387>
  400c6f:	4c 89 e7             	mov    %r12,%rdi
  400c72:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  400c79:	e8 c2 f8 ff ff       	callq  400540 <free@plt>
  400c7e:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400c83:	e8 c8 f8 ff ff       	callq  400550 <puts@plt>
  400c88:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400c8e:	4d 85 ed             	test   %r13,%r13
  400c91:	0f 84 99 fe ff ff    	je     400b30 <main+0x1f0>
  400c97:	4c 89 eb             	mov    %r13,%rbx
  400c9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400ca0:	48 8b 33             	mov    (%rbx),%rsi
  400ca3:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400ca7:	bf dc 0d 40 00       	mov    $0x400ddc,%edi
  400cac:	31 c0                	xor    %eax,%eax
  400cae:	e8 ad f8 ff ff       	callq  400560 <printf@plt>
  400cb3:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  400cb7:	48 85 db             	test   %rbx,%rbx
  400cba:	75 e4                	jne    400ca0 <main+0x360>
  400cbc:	4d 89 ec             	mov    %r13,%r12
  400cbf:	e9 6c fe ff ff       	jmpq   400b30 <main+0x1f0>
  400cc4:	45 31 e4             	xor    %r12d,%r12d
  400cc7:	4c 89 63 20          	mov    %r12,0x20(%rbx)
  400ccb:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400cd0:	e8 7b f8 ff ff       	callq  400550 <puts@plt>
  400cd5:	49 89 dc             	mov    %rbx,%r12
  400cd8:	eb 23                	jmp    400cfd <main+0x3bd>
  400cda:	4c 89 e0             	mov    %r12,%rax
  400cdd:	48 39 f1             	cmp    %rsi,%rcx
  400ce0:	0f 8c 7e ff ff ff    	jl     400c64 <main+0x324>
  400ce6:	48 89 c2             	mov    %rax,%rdx
  400ce9:	31 c0                	xor    %eax,%eax
  400ceb:	48 89 5a 20          	mov    %rbx,0x20(%rdx)
  400cef:	48 89 43 20          	mov    %rax,0x20(%rbx)
  400cf3:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400cf8:	e8 53 f8 ff ff       	callq  400550 <puts@plt>
  400cfd:	4c 89 e3             	mov    %r12,%rbx
  400d00:	48 8b 33             	mov    (%rbx),%rsi
  400d03:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400d07:	bf dc 0d 40 00       	mov    $0x400ddc,%edi
  400d0c:	31 c0                	xor    %eax,%eax
  400d0e:	e8 4d f8 ff ff       	callq  400560 <printf@plt>
  400d13:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
  400d17:	48 85 db             	test   %rbx,%rbx
  400d1a:	75 e4                	jne    400d00 <main+0x3c0>
  400d1c:	e9 0f fe ff ff       	jmpq   400b30 <main+0x1f0>
  400d21:	48 89 f8             	mov    %rdi,%rax
  400d24:	48 39 f1             	cmp    %rsi,%rcx
  400d27:	0f 8c 37 ff ff ff    	jl     400c64 <main+0x324>
  400d2d:	eb b7                	jmp    400ce6 <main+0x3a6>
  400d2f:	31 ff                	xor    %edi,%edi
  400d31:	e8 5a f8 ff ff       	callq  400590 <exit@plt>
  400d36:	48 89 f8             	mov    %rdi,%rax
  400d39:	48 39 f1             	cmp    %rsi,%rcx
  400d3c:	0f 8c 2e fd ff ff    	jl     400a70 <main+0x130>
  400d42:	e9 70 fd ff ff       	jmpq   400ab7 <main+0x177>
  400d47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d4e:	00 00 

0000000000400d50 <__libc_csu_init>:
  400d50:	41 57                	push   %r15
  400d52:	41 56                	push   %r14
  400d54:	49 89 d7             	mov    %rdx,%r15
  400d57:	41 55                	push   %r13
  400d59:	41 54                	push   %r12
  400d5b:	4c 8d 25 9e 10 20 00 	lea    0x20109e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400d62:	55                   	push   %rbp
  400d63:	48 8d 2d 9e 10 20 00 	lea    0x20109e(%rip),%rbp        # 601e08 <__init_array_end>
  400d6a:	53                   	push   %rbx
  400d6b:	41 89 fd             	mov    %edi,%r13d
  400d6e:	49 89 f6             	mov    %rsi,%r14
  400d71:	4c 29 e5             	sub    %r12,%rbp
  400d74:	48 83 ec 08          	sub    $0x8,%rsp
  400d78:	48 c1 fd 03          	sar    $0x3,%rbp
  400d7c:	e8 97 f7 ff ff       	callq  400518 <_init>
  400d81:	48 85 ed             	test   %rbp,%rbp
  400d84:	74 20                	je     400da6 <__libc_csu_init+0x56>
  400d86:	31 db                	xor    %ebx,%ebx
  400d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d8f:	00 
  400d90:	4c 89 fa             	mov    %r15,%rdx
  400d93:	4c 89 f6             	mov    %r14,%rsi
  400d96:	44 89 ef             	mov    %r13d,%edi
  400d99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d9d:	48 83 c3 01          	add    $0x1,%rbx
  400da1:	48 39 dd             	cmp    %rbx,%rbp
  400da4:	75 ea                	jne    400d90 <__libc_csu_init+0x40>
  400da6:	48 83 c4 08          	add    $0x8,%rsp
  400daa:	5b                   	pop    %rbx
  400dab:	5d                   	pop    %rbp
  400dac:	41 5c                	pop    %r12
  400dae:	41 5d                	pop    %r13
  400db0:	41 5e                	pop    %r14
  400db2:	41 5f                	pop    %r15
  400db4:	c3                   	retq   
  400db5:	90                   	nop
  400db6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dbd:	00 00 00 

0000000000400dc0 <__libc_csu_fini>:
  400dc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400dc4 <_fini>:
  400dc4:	48 83 ec 08          	sub    $0x8,%rsp
  400dc8:	48 83 c4 08          	add    $0x8,%rsp
  400dcc:	c3                   	retq   
