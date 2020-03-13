
input/19020011020_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400530 <_init>:
  400530:	48 83 ec 08          	sub    $0x8,%rsp
  400534:	48 8b 05 bd 0a 20 00 	mov    0x200abd(%rip),%rax        # 600ff8 <__gmon_start__>
  40053b:	48 85 c0             	test   %rax,%rax
  40053e:	74 02                	je     400542 <_init+0x12>
  400540:	ff d0                	callq  *%rax
  400542:	48 83 c4 08          	add    $0x8,%rsp
  400546:	c3                   	retq   

Disassembly of section .plt:

0000000000400550 <.plt>:
  400550:	ff 35 b2 0a 20 00    	pushq  0x200ab2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400556:	ff 25 b4 0a 20 00    	jmpq   *0x200ab4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <free@plt>:
  400560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 601018 <free@GLIBC_2.2.5>
  400566:	68 00 00 00 00       	pushq  $0x0
  40056b:	e9 e0 ff ff ff       	jmpq   400550 <.plt>

0000000000400570 <puts@plt>:
  400570:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400576:	68 01 00 00 00       	pushq  $0x1
  40057b:	e9 d0 ff ff ff       	jmpq   400550 <.plt>

0000000000400580 <printf@plt>:
  400580:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 601028 <printf@GLIBC_2.2.5>
  400586:	68 02 00 00 00       	pushq  $0x2
  40058b:	e9 c0 ff ff ff       	jmpq   400550 <.plt>

0000000000400590 <malloc@plt>:
  400590:	ff 25 9a 0a 20 00    	jmpq   *0x200a9a(%rip)        # 601030 <malloc@GLIBC_2.2.5>
  400596:	68 03 00 00 00       	pushq  $0x3
  40059b:	e9 b0 ff ff ff       	jmpq   400550 <.plt>

00000000004005a0 <_IO_getc@plt>:
  4005a0:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601038 <_IO_getc@GLIBC_2.2.5>
  4005a6:	68 04 00 00 00       	pushq  $0x4
  4005ab:	e9 a0 ff ff ff       	jmpq   400550 <.plt>

00000000004005b0 <__isoc99_scanf@plt>:
  4005b0:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 601040 <__isoc99_scanf@GLIBC_2.7>
  4005b6:	68 05 00 00 00       	pushq  $0x5
  4005bb:	e9 90 ff ff ff       	jmpq   400550 <.plt>

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	31 ed                	xor    %ebp,%ebp
  4005c2:	49 89 d1             	mov    %rdx,%r9
  4005c5:	5e                   	pop    %rsi
  4005c6:	48 89 e2             	mov    %rsp,%rdx
  4005c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005cd:	50                   	push   %rax
  4005ce:	54                   	push   %rsp
  4005cf:	49 c7 c0 c0 0a 40 00 	mov    $0x400ac0,%r8
  4005d6:	48 c7 c1 50 0a 40 00 	mov    $0x400a50,%rcx
  4005dd:	48 c7 c7 d0 07 40 00 	mov    $0x4007d0,%rdi
  4005e4:	ff 15 06 0a 20 00    	callq  *0x200a06(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ea:	f4                   	hlt    
  4005eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005f0 <_dl_relocate_static_pie>:
  4005f0:	f3 c3                	repz retq 
  4005f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005f9:	00 00 00 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <deregister_tm_clones>:
  400600:	55                   	push   %rbp
  400601:	b8 58 10 60 00       	mov    $0x601058,%eax
  400606:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	74 17                	je     400628 <deregister_tm_clones+0x28>
  400611:	b8 00 00 00 00       	mov    $0x0,%eax
  400616:	48 85 c0             	test   %rax,%rax
  400619:	74 0d                	je     400628 <deregister_tm_clones+0x28>
  40061b:	5d                   	pop    %rbp
  40061c:	bf 58 10 60 00       	mov    $0x601058,%edi
  400621:	ff e0                	jmpq   *%rax
  400623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <register_tm_clones>:
  400630:	be 58 10 60 00       	mov    $0x601058,%esi
  400635:	55                   	push   %rbp
  400636:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  40063d:	48 89 e5             	mov    %rsp,%rbp
  400640:	48 c1 fe 03          	sar    $0x3,%rsi
  400644:	48 89 f0             	mov    %rsi,%rax
  400647:	48 c1 e8 3f          	shr    $0x3f,%rax
  40064b:	48 01 c6             	add    %rax,%rsi
  40064e:	48 d1 fe             	sar    %rsi
  400651:	74 15                	je     400668 <register_tm_clones+0x38>
  400653:	b8 00 00 00 00       	mov    $0x0,%eax
  400658:	48 85 c0             	test   %rax,%rax
  40065b:	74 0b                	je     400668 <register_tm_clones+0x38>
  40065d:	5d                   	pop    %rbp
  40065e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400663:	ff e0                	jmpq   *%rax
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <__do_global_dtors_aux>:
  400670:	80 3d f1 09 20 00 00 	cmpb   $0x0,0x2009f1(%rip)        # 601068 <completed.7698>
  400677:	75 17                	jne    400690 <__do_global_dtors_aux+0x20>
  400679:	55                   	push   %rbp
  40067a:	48 89 e5             	mov    %rsp,%rbp
  40067d:	e8 7e ff ff ff       	callq  400600 <deregister_tm_clones>
  400682:	c6 05 df 09 20 00 01 	movb   $0x1,0x2009df(%rip)        # 601068 <completed.7698>
  400689:	5d                   	pop    %rbp
  40068a:	c3                   	retq   
  40068b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400690:	f3 c3                	repz retq 
  400692:	0f 1f 40 00          	nopl   0x0(%rax)
  400696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40069d:	00 00 00 

00000000004006a0 <frame_dummy>:
  4006a0:	55                   	push   %rbp
  4006a1:	48 89 e5             	mov    %rsp,%rbp
  4006a4:	5d                   	pop    %rbp
  4006a5:	eb 89                	jmp    400630 <register_tm_clones>
  4006a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ae:	00 00 

00000000004006b0 <insert>:
  4006b0:	48 85 ff             	test   %rdi,%rdi
  4006b3:	74 25                	je     4006da <insert+0x2a>
  4006b5:	48 8b 16             	mov    (%rsi),%rdx
  4006b8:	48 3b 17             	cmp    (%rdi),%rdx
  4006bb:	7e 24                	jle    4006e1 <insert+0x31>
  4006bd:	48 89 f8             	mov    %rdi,%rax
  4006c0:	48 89 c1             	mov    %rax,%rcx
  4006c3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4006c7:	48 85 c0             	test   %rax,%rax
  4006ca:	74 1d                	je     4006e9 <insert+0x39>
  4006cc:	48 3b 10             	cmp    (%rax),%rdx
  4006cf:	7f ef                	jg     4006c0 <insert+0x10>
  4006d1:	48 89 71 10          	mov    %rsi,0x10(%rcx)
  4006d5:	48 89 f1             	mov    %rsi,%rcx
  4006d8:	eb 12                	jmp    4006ec <insert+0x3c>
  4006da:	31 c0                	xor    %eax,%eax
  4006dc:	48 89 f1             	mov    %rsi,%rcx
  4006df:	eb 0e                	jmp    4006ef <insert+0x3f>
  4006e1:	48 89 f1             	mov    %rsi,%rcx
  4006e4:	48 89 f8             	mov    %rdi,%rax
  4006e7:	eb 06                	jmp    4006ef <insert+0x3f>
  4006e9:	48 89 f0             	mov    %rsi,%rax
  4006ec:	48 89 fe             	mov    %rdi,%rsi
  4006ef:	48 89 41 10          	mov    %rax,0x10(%rcx)
  4006f3:	48 89 f0             	mov    %rsi,%rax
  4006f6:	c3                   	retq   
  4006f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006fe:	00 00 

0000000000400700 <print>:
  400700:	53                   	push   %rbx
  400701:	48 89 fb             	mov    %rdi,%rbx
  400704:	48 85 db             	test   %rbx,%rbx
  400707:	74 28                	je     400731 <print+0x31>
  400709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400710:	48 8b 33             	mov    (%rbx),%rsi
  400713:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400718:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40071c:	bf d4 0a 40 00       	mov    $0x400ad4,%edi
  400721:	b0 01                	mov    $0x1,%al
  400723:	e8 58 fe ff ff       	callq  400580 <printf@plt>
  400728:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40072c:	48 85 db             	test   %rbx,%rbx
  40072f:	75 df                	jne    400710 <print+0x10>
  400731:	5b                   	pop    %rbx
  400732:	c3                   	retq   
  400733:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40073a:	84 00 00 00 00 00 

0000000000400740 <create>:
  400740:	31 c0                	xor    %eax,%eax
  400742:	c3                   	retq   
  400743:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40074a:	84 00 00 00 00 00 

0000000000400750 <del>:
  400750:	41 56                	push   %r14
  400752:	53                   	push   %rbx
  400753:	50                   	push   %rax
  400754:	48 89 fb             	mov    %rdi,%rbx
  400757:	48 85 db             	test   %rbx,%rbx
  40075a:	74 16                	je     400772 <del+0x22>
  40075c:	48 39 33             	cmp    %rsi,(%rbx)
  40075f:	75 1f                	jne    400780 <del+0x30>
  400761:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400765:	48 89 df             	mov    %rbx,%rdi
  400768:	e8 f3 fd ff ff       	callq  400560 <free@plt>
  40076d:	4c 89 f3             	mov    %r14,%rbx
  400770:	eb 4f                	jmp    4007c1 <del+0x71>
  400772:	bf 38 0b 40 00       	mov    $0x400b38,%edi
  400777:	e8 f4 fd ff ff       	callq  400570 <puts@plt>
  40077c:	31 db                	xor    %ebx,%ebx
  40077e:	eb 41                	jmp    4007c1 <del+0x71>
  400780:	48 89 df             	mov    %rbx,%rdi
  400783:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40078a:	84 00 00 00 00 00 
  400790:	48 89 f8             	mov    %rdi,%rax
  400793:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400797:	48 85 ff             	test   %rdi,%rdi
  40079a:	74 1b                	je     4007b7 <del+0x67>
  40079c:	48 39 37             	cmp    %rsi,(%rdi)
  40079f:	75 ef                	jne    400790 <del+0x40>
  4007a1:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  4007a5:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4007a9:	e8 b2 fd ff ff       	callq  400560 <free@plt>
  4007ae:	83 05 b7 08 20 00 ff 	addl   $0xffffffff,0x2008b7(%rip)        # 60106c <sum>
  4007b5:	eb 0a                	jmp    4007c1 <del+0x71>
  4007b7:	bf 2f 0b 40 00       	mov    $0x400b2f,%edi
  4007bc:	e8 af fd ff ff       	callq  400570 <puts@plt>
  4007c1:	48 89 d8             	mov    %rbx,%rax
  4007c4:	48 83 c4 08          	add    $0x8,%rsp
  4007c8:	5b                   	pop    %rbx
  4007c9:	41 5e                	pop    %r14
  4007cb:	c3                   	retq   
  4007cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007d0 <main>:
  4007d0:	55                   	push   %rbp
  4007d1:	41 57                	push   %r15
  4007d3:	41 56                	push   %r14
  4007d5:	41 55                	push   %r13
  4007d7:	41 54                	push   %r12
  4007d9:	53                   	push   %rbx
  4007da:	48 83 ec 18          	sub    $0x18,%rsp
  4007de:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  4007e3:	e8 88 fd ff ff       	callq  400570 <puts@plt>
  4007e8:	bf 70 0b 40 00       	mov    $0x400b70,%edi
  4007ed:	e8 7e fd ff ff       	callq  400570 <puts@plt>
  4007f2:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  4007f7:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  4007fc:	45 31 e4             	xor    %r12d,%r12d
  4007ff:	45 31 ed             	xor    %r13d,%r13d
  400802:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400809:	1f 84 00 00 00 00 00 
  400810:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  400815:	e8 56 fd ff ff       	callq  400570 <puts@plt>
  40081a:	bf 3e 0b 40 00       	mov    $0x400b3e,%edi
  40081f:	e8 4c fd ff ff       	callq  400570 <puts@plt>
  400824:	bf df 0a 40 00       	mov    $0x400adf,%edi
  400829:	31 c0                	xor    %eax,%eax
  40082b:	4c 89 fe             	mov    %r15,%rsi
  40082e:	e8 7d fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400833:	48 8b 3d 26 08 20 00 	mov    0x200826(%rip),%rdi        # 601060 <stdin@@GLIBC_2.2.5>
  40083a:	e8 61 fd ff ff       	callq  4005a0 <_IO_getc@plt>
  40083f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400843:	83 f8 02             	cmp    $0x2,%eax
  400846:	0f 84 94 00 00 00    	je     4008e0 <main+0x110>
  40084c:	83 f8 01             	cmp    $0x1,%eax
  40084f:	0f 85 df 01 00 00    	jne    400a34 <main+0x264>
  400855:	bf e2 0a 40 00       	mov    $0x400ae2,%edi
  40085a:	31 c0                	xor    %eax,%eax
  40085c:	e8 1f fd ff ff       	callq  400580 <printf@plt>
  400861:	bf 18 00 00 00       	mov    $0x18,%edi
  400866:	e8 25 fd ff ff       	callq  400590 <malloc@plt>
  40086b:	48 89 c5             	mov    %rax,%rbp
  40086e:	48 8d 55 08          	lea    0x8(%rbp),%rdx
  400872:	bf 02 0b 40 00       	mov    $0x400b02,%edi
  400877:	31 c0                	xor    %eax,%eax
  400879:	48 89 ee             	mov    %rbp,%rsi
  40087c:	e8 2f fd ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  400881:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
  400888:	00 
  400889:	4d 85 ed             	test   %r13,%r13
  40088c:	0f 84 d2 00 00 00    	je     400964 <main+0x194>
  400892:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400896:	4c 89 e8             	mov    %r13,%rax
  400899:	49 3b 75 00          	cmp    0x0(%r13),%rsi
  40089d:	0f 8e e4 00 00 00    	jle    400987 <main+0x1b7>
  4008a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008aa:	84 00 00 00 00 00 
  4008b0:	48 89 c1             	mov    %rax,%rcx
  4008b3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4008b7:	48 85 c0             	test   %rax,%rax
  4008ba:	0f 84 dc 00 00 00    	je     40099c <main+0x1cc>
  4008c0:	48 3b 30             	cmp    (%rax),%rsi
  4008c3:	7f eb                	jg     4008b0 <main+0xe0>
  4008c5:	48 89 69 10          	mov    %rbp,0x10(%rcx)
  4008c9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4008cd:	e9 ce 00 00 00       	jmpq   4009a0 <main+0x1d0>
  4008d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008d9:	1f 84 00 00 00 00 00 
  4008e0:	bf 17 0b 40 00       	mov    $0x400b17,%edi
  4008e5:	31 c0                	xor    %eax,%eax
  4008e7:	e8 94 fc ff ff       	callq  400580 <printf@plt>
  4008ec:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  4008f1:	31 c0                	xor    %eax,%eax
  4008f3:	4c 89 f6             	mov    %r14,%rsi
  4008f6:	e8 b5 fc ff ff       	callq  4005b0 <__isoc99_scanf@plt>
  4008fb:	4d 85 ed             	test   %r13,%r13
  4008fe:	74 72                	je     400972 <main+0x1a2>
  400900:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400905:	49 39 45 00          	cmp    %rax,0x0(%r13)
  400909:	4c 89 ef             	mov    %r13,%rdi
  40090c:	75 22                	jne    400930 <main+0x160>
  40090e:	4d 8b 6d 10          	mov    0x10(%r13),%r13
  400912:	4c 89 e7             	mov    %r12,%rdi
  400915:	e8 46 fc ff ff       	callq  400560 <free@plt>
  40091a:	4d 89 ec             	mov    %r13,%r12
  40091d:	4d 85 ed             	test   %r13,%r13
  400920:	0f 85 cf 00 00 00    	jne    4009f5 <main+0x225>
  400926:	eb 54                	jmp    40097c <main+0x1ac>
  400928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40092f:	00 
  400930:	48 89 f9             	mov    %rdi,%rcx
  400933:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400937:	48 85 ff             	test   %rdi,%rdi
  40093a:	0f 84 a6 00 00 00    	je     4009e6 <main+0x216>
  400940:	48 39 07             	cmp    %rax,(%rdi)
  400943:	75 eb                	jne    400930 <main+0x160>
  400945:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400949:	48 89 41 10          	mov    %rax,0x10(%rcx)
  40094d:	e8 0e fc ff ff       	callq  400560 <free@plt>
  400952:	83 05 13 07 20 00 ff 	addl   $0xffffffff,0x200713(%rip)        # 60106c <sum>
  400959:	4d 85 ed             	test   %r13,%r13
  40095c:	0f 85 93 00 00 00    	jne    4009f5 <main+0x225>
  400962:	eb 18                	jmp    40097c <main+0x1ac>
  400964:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
  40096b:	00 
  40096c:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400970:	eb 19                	jmp    40098b <main+0x1bb>
  400972:	bf 38 0b 40 00       	mov    $0x400b38,%edi
  400977:	e8 f4 fb ff ff       	callq  400570 <puts@plt>
  40097c:	45 31 e4             	xor    %r12d,%r12d
  40097f:	45 31 ed             	xor    %r13d,%r13d
  400982:	e9 a9 00 00 00       	jmpq   400a30 <main+0x260>
  400987:	4c 89 65 10          	mov    %r12,0x10(%rbp)
  40098b:	bf 08 0b 40 00       	mov    $0x400b08,%edi
  400990:	31 c0                	xor    %eax,%eax
  400992:	e8 e9 fb ff ff       	callq  400580 <printf@plt>
  400997:	49 89 ed             	mov    %rbp,%r13
  40099a:	eb 13                	jmp    4009af <main+0x1df>
  40099c:	48 89 69 10          	mov    %rbp,0x10(%rcx)
  4009a0:	bf 08 0b 40 00       	mov    $0x400b08,%edi
  4009a5:	31 c0                	xor    %eax,%eax
  4009a7:	e8 d4 fb ff ff       	callq  400580 <printf@plt>
  4009ac:	4c 89 e5             	mov    %r12,%rbp
  4009af:	4c 89 eb             	mov    %r13,%rbx
  4009b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009b9:	1f 84 00 00 00 00 00 
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4009c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4009cc:	bf d4 0a 40 00       	mov    $0x400ad4,%edi
  4009d1:	b0 01                	mov    $0x1,%al
  4009d3:	e8 a8 fb ff ff       	callq  400580 <printf@plt>
  4009d8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009dc:	48 85 db             	test   %rbx,%rbx
  4009df:	75 df                	jne    4009c0 <main+0x1f0>
  4009e1:	49 89 ec             	mov    %rbp,%r12
  4009e4:	eb 4a                	jmp    400a30 <main+0x260>
  4009e6:	bf 2f 0b 40 00       	mov    $0x400b2f,%edi
  4009eb:	e8 80 fb ff ff       	callq  400570 <puts@plt>
  4009f0:	4d 85 ed             	test   %r13,%r13
  4009f3:	74 87                	je     40097c <main+0x1ac>
  4009f5:	4c 89 eb             	mov    %r13,%rbx
  4009f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009ff:	00 
  400a00:	48 8b 33             	mov    (%rbx),%rsi
  400a03:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a0c:	bf d4 0a 40 00       	mov    $0x400ad4,%edi
  400a11:	b0 01                	mov    $0x1,%al
  400a13:	e8 68 fb ff ff       	callq  400580 <printf@plt>
  400a18:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a1c:	48 85 db             	test   %rbx,%rbx
  400a1f:	75 df                	jne    400a00 <main+0x230>
  400a21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a28:	0f 1f 84 00 00 00 00 
  400a2f:	00 
  400a30:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400a34:	85 c0                	test   %eax,%eax
  400a36:	0f 85 d4 fd ff ff    	jne    400810 <main+0x40>
  400a3c:	48 83 c4 18          	add    $0x18,%rsp
  400a40:	5b                   	pop    %rbx
  400a41:	41 5c                	pop    %r12
  400a43:	41 5d                	pop    %r13
  400a45:	41 5e                	pop    %r14
  400a47:	41 5f                	pop    %r15
  400a49:	5d                   	pop    %rbp
  400a4a:	c3                   	retq   
  400a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400a50 <__libc_csu_init>:
  400a50:	41 57                	push   %r15
  400a52:	41 56                	push   %r14
  400a54:	49 89 d7             	mov    %rdx,%r15
  400a57:	41 55                	push   %r13
  400a59:	41 54                	push   %r12
  400a5b:	4c 8d 25 9e 03 20 00 	lea    0x20039e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  400a62:	55                   	push   %rbp
  400a63:	48 8d 2d 9e 03 20 00 	lea    0x20039e(%rip),%rbp        # 600e08 <__init_array_end>
  400a6a:	53                   	push   %rbx
  400a6b:	41 89 fd             	mov    %edi,%r13d
  400a6e:	49 89 f6             	mov    %rsi,%r14
  400a71:	4c 29 e5             	sub    %r12,%rbp
  400a74:	48 83 ec 08          	sub    $0x8,%rsp
  400a78:	48 c1 fd 03          	sar    $0x3,%rbp
  400a7c:	e8 af fa ff ff       	callq  400530 <_init>
  400a81:	48 85 ed             	test   %rbp,%rbp
  400a84:	74 20                	je     400aa6 <__libc_csu_init+0x56>
  400a86:	31 db                	xor    %ebx,%ebx
  400a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a8f:	00 
  400a90:	4c 89 fa             	mov    %r15,%rdx
  400a93:	4c 89 f6             	mov    %r14,%rsi
  400a96:	44 89 ef             	mov    %r13d,%edi
  400a99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a9d:	48 83 c3 01          	add    $0x1,%rbx
  400aa1:	48 39 dd             	cmp    %rbx,%rbp
  400aa4:	75 ea                	jne    400a90 <__libc_csu_init+0x40>
  400aa6:	48 83 c4 08          	add    $0x8,%rsp
  400aaa:	5b                   	pop    %rbx
  400aab:	5d                   	pop    %rbp
  400aac:	41 5c                	pop    %r12
  400aae:	41 5d                	pop    %r13
  400ab0:	41 5e                	pop    %r14
  400ab2:	41 5f                	pop    %r15
  400ab4:	c3                   	retq   
  400ab5:	90                   	nop
  400ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400abd:	00 00 00 

0000000000400ac0 <__libc_csu_fini>:
  400ac0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ac4 <_fini>:
  400ac4:	48 83 ec 08          	sub    $0x8,%rsp
  400ac8:	48 83 c4 08          	add    $0x8,%rsp
  400acc:	c3                   	retq   
