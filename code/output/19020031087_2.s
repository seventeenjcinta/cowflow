
input/19020031087_2.elf:     file format elf64-x86-64


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
  4005ef:	49 c7 c0 30 0c 40 00 	mov    $0x400c30,%r8
  4005f6:	48 c7 c1 c0 0b 40 00 	mov    $0x400bc0,%rcx
  4005fd:	48 c7 c7 e0 08 40 00 	mov    $0x4008e0,%rdi
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
  4006d3:	74 27                	je     4006fc <insert+0x2c>
  4006d5:	48 8b 0e             	mov    (%rsi),%rcx
  4006d8:	48 3b 0f             	cmp    (%rdi),%rcx
  4006db:	7e 2b                	jle    400708 <insert+0x38>
  4006dd:	48 89 f8             	mov    %rdi,%rax
  4006e0:	48 89 c2             	mov    %rax,%rdx
  4006e3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006e7:	48 85 c0             	test   %rax,%rax
  4006ea:	74 24                	je     400710 <insert+0x40>
  4006ec:	48 3b 08             	cmp    (%rax),%rcx
  4006ef:	7f ef                	jg     4006e0 <insert+0x10>
  4006f1:	48 39 f8             	cmp    %rdi,%rax
  4006f4:	74 12                	je     400708 <insert+0x38>
  4006f6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006fa:	eb 1a                	jmp    400716 <insert+0x46>
  4006fc:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  400703:	00 
  400704:	48 89 f0             	mov    %rsi,%rax
  400707:	c3                   	retq   
  400708:	48 89 f8             	mov    %rdi,%rax
  40070b:	48 89 f7             	mov    %rsi,%rdi
  40070e:	eb 06                	jmp    400716 <insert+0x46>
  400710:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400714:	31 c0                	xor    %eax,%eax
  400716:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40071a:	83 05 4b 19 20 00 01 	addl   $0x1,0x20194b(%rip)        # 60206c <n>
  400721:	48 89 fe             	mov    %rdi,%rsi
  400724:	48 89 f0             	mov    %rsi,%rax
  400727:	c3                   	retq   
  400728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40072f:	00 

0000000000400730 <creat>:
  400730:	41 56                	push   %r14
  400732:	53                   	push   %rbx
  400733:	50                   	push   %rax
  400734:	bf 18 00 00 00       	mov    $0x18,%edi
  400739:	e8 72 fe ff ff       	callq  4005b0 <malloc@plt>
  40073e:	48 89 c3             	mov    %rax,%rbx
  400741:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400745:	45 31 f6             	xor    %r14d,%r14d
  400748:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  40074d:	31 c0                	xor    %eax,%eax
  40074f:	48 89 de             	mov    %rbx,%rsi
  400752:	e8 79 fe ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400757:	48 8b 03             	mov    (%rbx),%rax
  40075a:	48 85 c0             	test   %rax,%rax
  40075d:	0f 84 92 00 00 00    	je     4007f5 <creat+0xc5>
  400763:	45 31 f6             	xor    %r14d,%r14d
  400766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40076d:	00 00 00 
  400770:	4d 85 f6             	test   %r14,%r14
  400773:	74 2b                	je     4007a0 <creat+0x70>
  400775:	4c 89 f1             	mov    %r14,%rcx
  400778:	49 3b 06             	cmp    (%r14),%rax
  40077b:	7e 33                	jle    4007b0 <creat+0x80>
  40077d:	0f 1f 00             	nopl   (%rax)
  400780:	48 89 ca             	mov    %rcx,%rdx
  400783:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400787:	48 85 c9             	test   %rcx,%rcx
  40078a:	74 2c                	je     4007b8 <creat+0x88>
  40078c:	48 3b 01             	cmp    (%rcx),%rax
  40078f:	7f ef                	jg     400780 <creat+0x50>
  400791:	4c 39 f1             	cmp    %r14,%rcx
  400794:	74 1a                	je     4007b0 <creat+0x80>
  400796:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40079a:	eb 22                	jmp    4007be <creat+0x8e>
  40079c:	0f 1f 40 00          	nopl   0x0(%rax)
  4007a0:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4007a7:	00 
  4007a8:	49 89 de             	mov    %rbx,%r14
  4007ab:	eb 1c                	jmp    4007c9 <creat+0x99>
  4007ad:	0f 1f 00             	nopl   (%rax)
  4007b0:	4c 89 f1             	mov    %r14,%rcx
  4007b3:	49 89 de             	mov    %rbx,%r14
  4007b6:	eb 06                	jmp    4007be <creat+0x8e>
  4007b8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007bc:	31 c9                	xor    %ecx,%ecx
  4007be:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  4007c2:	83 05 a3 18 20 00 01 	addl   $0x1,0x2018a3(%rip)        # 60206c <n>
  4007c9:	bf 18 00 00 00       	mov    $0x18,%edi
  4007ce:	e8 dd fd ff ff       	callq  4005b0 <malloc@plt>
  4007d3:	48 89 c3             	mov    %rax,%rbx
  4007d6:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007da:	bf 4a 0c 40 00       	mov    $0x400c4a,%edi
  4007df:	31 c0                	xor    %eax,%eax
  4007e1:	48 89 de             	mov    %rbx,%rsi
  4007e4:	e8 e7 fd ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4007e9:	48 8b 03             	mov    (%rbx),%rax
  4007ec:	48 85 c0             	test   %rax,%rax
  4007ef:	0f 85 7b ff ff ff    	jne    400770 <creat+0x40>
  4007f5:	48 89 df             	mov    %rbx,%rdi
  4007f8:	e8 83 fd ff ff       	callq  400580 <free@plt>
  4007fd:	4c 89 f0             	mov    %r14,%rax
  400800:	48 83 c4 08          	add    $0x8,%rsp
  400804:	5b                   	pop    %rbx
  400805:	41 5e                	pop    %r14
  400807:	c3                   	retq   
  400808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40080f:	00 

0000000000400810 <delet>:
  400810:	53                   	push   %rbx
  400811:	48 89 fb             	mov    %rdi,%rbx
  400814:	48 85 db             	test   %rbx,%rbx
  400817:	74 0b                	je     400824 <delet+0x14>
  400819:	48 39 33             	cmp    %rsi,(%rbx)
  40081c:	75 16                	jne    400834 <delet+0x24>
  40081e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400822:	eb 4b                	jmp    40086f <delet+0x5f>
  400824:	31 db                	xor    %ebx,%ebx
  400826:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  40082b:	31 c0                	xor    %eax,%eax
  40082d:	e8 6e fd ff ff       	callq  4005a0 <printf@plt>
  400832:	eb 4e                	jmp    400882 <delet+0x72>
  400834:	48 89 d9             	mov    %rbx,%rcx
  400837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40083e:	00 00 
  400840:	48 89 c8             	mov    %rcx,%rax
  400843:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400847:	48 85 c9             	test   %rcx,%rcx
  40084a:	74 14                	je     400860 <delet+0x50>
  40084c:	48 39 31             	cmp    %rsi,(%rcx)
  40084f:	75 ef                	jne    400840 <delet+0x30>
  400851:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400855:	48 39 d9             	cmp    %rbx,%rcx
  400858:	74 12                	je     40086c <delet+0x5c>
  40085a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40085e:	eb 0f                	jmp    40086f <delet+0x5f>
  400860:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400865:	e8 26 fd ff ff       	callq  400590 <puts@plt>
  40086a:	eb 16                	jmp    400882 <delet+0x72>
  40086c:	48 89 d3             	mov    %rdx,%rbx
  40086f:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  400874:	31 c0                	xor    %eax,%eax
  400876:	e8 25 fd ff ff       	callq  4005a0 <printf@plt>
  40087b:	83 05 ea 17 20 00 ff 	addl   $0xffffffff,0x2017ea(%rip)        # 60206c <n>
  400882:	48 89 d8             	mov    %rbx,%rax
  400885:	5b                   	pop    %rbx
  400886:	c3                   	retq   
  400887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40088e:	00 00 

0000000000400890 <print>:
  400890:	53                   	push   %rbx
  400891:	48 89 fb             	mov    %rdi,%rbx
  400894:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400899:	e8 f2 fc ff ff       	callq  400590 <puts@plt>
  40089e:	48 85 db             	test   %rbx,%rbx
  4008a1:	74 30                	je     4008d3 <print+0x43>
  4008a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008aa:	84 00 00 00 00 00 
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008b8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008bc:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  4008c1:	b0 01                	mov    $0x1,%al
  4008c3:	e8 d8 fc ff ff       	callq  4005a0 <printf@plt>
  4008c8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cc:	48 85 db             	test   %rbx,%rbx
  4008cf:	75 df                	jne    4008b0 <print+0x20>
  4008d1:	5b                   	pop    %rbx
  4008d2:	c3                   	retq   
  4008d3:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  4008d8:	31 c0                	xor    %eax,%eax
  4008da:	5b                   	pop    %rbx
  4008db:	e9 c0 fc ff ff       	jmpq   4005a0 <printf@plt>

00000000004008e0 <main>:
  4008e0:	41 57                	push   %r15
  4008e2:	41 56                	push   %r14
  4008e4:	41 54                	push   %r12
  4008e6:	53                   	push   %rbx
  4008e7:	48 83 ec 18          	sub    $0x18,%rsp
  4008eb:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  4008f0:	e8 9b fc ff ff       	callq  400590 <puts@plt>
  4008f5:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  4008fa:	e8 91 fc ff ff       	callq  400590 <puts@plt>
  4008ff:	e8 2c fe ff ff       	callq  400730 <creat>
  400904:	49 89 c4             	mov    %rax,%r12
  400907:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  40090c:	e8 7f fc ff ff       	callq  400590 <puts@plt>
  400911:	4d 85 e4             	test   %r12,%r12
  400914:	74 2d                	je     400943 <main+0x63>
  400916:	4c 89 e3             	mov    %r12,%rbx
  400919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400920:	48 8b 33             	mov    (%rbx),%rsi
  400923:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400928:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40092c:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400931:	b0 01                	mov    $0x1,%al
  400933:	e8 68 fc ff ff       	callq  4005a0 <printf@plt>
  400938:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40093c:	48 85 db             	test   %rbx,%rbx
  40093f:	75 df                	jne    400920 <main+0x40>
  400941:	eb 0c                	jmp    40094f <main+0x6f>
  400943:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  400948:	31 c0                	xor    %eax,%eax
  40094a:	e8 51 fc ff ff       	callq  4005a0 <printf@plt>
  40094f:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400954:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400960:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  400965:	e8 26 fc ff ff       	callq  400590 <puts@plt>
  40096a:	bf 6c 0c 40 00       	mov    $0x400c6c,%edi
  40096f:	31 c0                	xor    %eax,%eax
  400971:	e8 2a fc ff ff       	callq  4005a0 <printf@plt>
  400976:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  40097b:	31 c0                	xor    %eax,%eax
  40097d:	4c 89 f6             	mov    %r14,%rsi
  400980:	e8 4b fc ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400985:	48 8b 3d d4 16 20 00 	mov    0x2016d4(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  40098c:	e8 2f fc ff ff       	callq  4005c0 <_IO_getc@plt>
  400991:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400995:	83 f8 02             	cmp    $0x2,%eax
  400998:	0f 84 82 00 00 00    	je     400a20 <main+0x140>
  40099e:	83 f8 01             	cmp    $0x1,%eax
  4009a1:	0f 85 fc 01 00 00    	jne    400ba3 <main+0x2c3>
  4009a7:	bf 7e 0c 40 00       	mov    $0x400c7e,%edi
  4009ac:	31 c0                	xor    %eax,%eax
  4009ae:	e8 ed fb ff ff       	callq  4005a0 <printf@plt>
  4009b3:	bf 18 00 00 00       	mov    $0x18,%edi
  4009b8:	e8 f3 fb ff ff       	callq  4005b0 <malloc@plt>
  4009bd:	48 89 c3             	mov    %rax,%rbx
  4009c0:	bf 44 0c 40 00       	mov    $0x400c44,%edi
  4009c5:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009c9:	31 c0                	xor    %eax,%eax
  4009cb:	48 89 de             	mov    %rbx,%rsi
  4009ce:	e8 fd fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  4009d3:	4d 85 e4             	test   %r12,%r12
  4009d6:	0f 84 af 00 00 00    	je     400a8b <main+0x1ab>
  4009dc:	48 8b 33             	mov    (%rbx),%rsi
  4009df:	4c 89 e0             	mov    %r12,%rax
  4009e2:	49 3b 34 24          	cmp    (%r12),%rsi
  4009e6:	0f 8e ca 00 00 00    	jle    400ab6 <main+0x1d6>
  4009ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4009f0:	48 89 c1             	mov    %rax,%rcx
  4009f3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009f7:	48 85 c0             	test   %rax,%rax
  4009fa:	0f 84 be 00 00 00    	je     400abe <main+0x1de>
  400a00:	48 3b 30             	cmp    (%rax),%rsi
  400a03:	7f eb                	jg     4009f0 <main+0x110>
  400a05:	4c 39 e0             	cmp    %r12,%rax
  400a08:	0f 84 a8 00 00 00    	je     400ab6 <main+0x1d6>
  400a0e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400a12:	e9 ad 00 00 00       	jmpq   400ac4 <main+0x1e4>
  400a17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a1e:	00 00 
  400a20:	bf aa 0c 40 00       	mov    $0x400caa,%edi
  400a25:	31 c0                	xor    %eax,%eax
  400a27:	e8 74 fb ff ff       	callq  4005a0 <printf@plt>
  400a2c:	bf bf 0c 40 00       	mov    $0x400cbf,%edi
  400a31:	31 c0                	xor    %eax,%eax
  400a33:	4c 89 fe             	mov    %r15,%rsi
  400a36:	e8 95 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a3b:	4d 85 e4             	test   %r12,%r12
  400a3e:	74 5b                	je     400a9b <main+0x1bb>
  400a40:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400a45:	49 39 34 24          	cmp    %rsi,(%r12)
  400a49:	4c 89 e0             	mov    %r12,%rax
  400a4c:	75 12                	jne    400a60 <main+0x180>
  400a4e:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400a53:	e9 da 00 00 00       	jmpq   400b32 <main+0x252>
  400a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a5f:	00 
  400a60:	48 89 c1             	mov    %rax,%rcx
  400a63:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400a67:	48 85 c0             	test   %rax,%rax
  400a6a:	0f 84 b3 00 00 00    	je     400b23 <main+0x243>
  400a70:	48 39 30             	cmp    %rsi,(%rax)
  400a73:	75 eb                	jne    400a60 <main+0x180>
  400a75:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400a79:	4c 39 e0             	cmp    %r12,%rax
  400a7c:	0f 84 ad 00 00 00    	je     400b2f <main+0x24f>
  400a82:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400a86:	e9 a7 00 00 00       	jmpq   400b32 <main+0x252>
  400a8b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a92:	00 
  400a93:	48 8b 33             	mov    (%rbx),%rsi
  400a96:	49 89 dc             	mov    %rbx,%r12
  400a99:	eb 34                	jmp    400acf <main+0x1ef>
  400a9b:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  400aa0:	31 c0                	xor    %eax,%eax
  400aa2:	e8 f9 fa ff ff       	callq  4005a0 <printf@plt>
  400aa7:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400aac:	e8 df fa ff ff       	callq  400590 <puts@plt>
  400ab1:	e9 da 00 00 00       	jmpq   400b90 <main+0x2b0>
  400ab6:	4c 89 e0             	mov    %r12,%rax
  400ab9:	49 89 dc             	mov    %rbx,%r12
  400abc:	eb 06                	jmp    400ac4 <main+0x1e4>
  400abe:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ac2:	31 c0                	xor    %eax,%eax
  400ac4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400ac8:	83 05 9d 15 20 00 01 	addl   $0x1,0x20159d(%rip)        # 60206c <n>
  400acf:	bf 9d 0c 40 00       	mov    $0x400c9d,%edi
  400ad4:	31 c0                	xor    %eax,%eax
  400ad6:	e8 c5 fa ff ff       	callq  4005a0 <printf@plt>
  400adb:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400ae0:	e8 ab fa ff ff       	callq  400590 <puts@plt>
  400ae5:	4d 85 e4             	test   %r12,%r12
  400ae8:	0f 84 a2 00 00 00    	je     400b90 <main+0x2b0>
  400aee:	4c 89 e3             	mov    %r12,%rbx
  400af1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400af8:	0f 1f 84 00 00 00 00 
  400aff:	00 
  400b00:	48 8b 33             	mov    (%rbx),%rsi
  400b03:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b0c:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400b11:	b0 01                	mov    $0x1,%al
  400b13:	e8 88 fa ff ff       	callq  4005a0 <printf@plt>
  400b18:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b1c:	48 85 db             	test   %rbx,%rbx
  400b1f:	75 df                	jne    400b00 <main+0x220>
  400b21:	eb 7c                	jmp    400b9f <main+0x2bf>
  400b23:	bf c3 0c 40 00       	mov    $0x400cc3,%edi
  400b28:	e8 63 fa ff ff       	callq  400590 <puts@plt>
  400b2d:	eb 16                	jmp    400b45 <main+0x265>
  400b2f:	49 89 d4             	mov    %rdx,%r12
  400b32:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  400b37:	31 c0                	xor    %eax,%eax
  400b39:	e8 62 fa ff ff       	callq  4005a0 <printf@plt>
  400b3e:	83 05 27 15 20 00 ff 	addl   $0xffffffff,0x201527(%rip)        # 60206c <n>
  400b45:	bf cf 0c 40 00       	mov    $0x400ccf,%edi
  400b4a:	e8 41 fa ff ff       	callq  400590 <puts@plt>
  400b4f:	4d 85 e4             	test   %r12,%r12
  400b52:	74 3c                	je     400b90 <main+0x2b0>
  400b54:	4c 89 e3             	mov    %r12,%rbx
  400b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b5e:	00 00 
  400b60:	48 8b 33             	mov    (%rbx),%rsi
  400b63:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400b68:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b6c:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400b71:	b0 01                	mov    $0x1,%al
  400b73:	e8 28 fa ff ff       	callq  4005a0 <printf@plt>
  400b78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400b7c:	48 85 db             	test   %rbx,%rbx
  400b7f:	75 df                	jne    400b60 <main+0x280>
  400b81:	eb 1c                	jmp    400b9f <main+0x2bf>
  400b83:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400b8a:	84 00 00 00 00 00 
  400b90:	bf 51 0c 40 00       	mov    $0x400c51,%edi
  400b95:	31 c0                	xor    %eax,%eax
  400b97:	e8 04 fa ff ff       	callq  4005a0 <printf@plt>
  400b9c:	45 31 e4             	xor    %r12d,%r12d
  400b9f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400ba3:	85 c0                	test   %eax,%eax
  400ba5:	0f 85 b5 fd ff ff    	jne    400960 <main+0x80>
  400bab:	48 83 c4 18          	add    $0x18,%rsp
  400baf:	5b                   	pop    %rbx
  400bb0:	41 5c                	pop    %r12
  400bb2:	41 5e                	pop    %r14
  400bb4:	41 5f                	pop    %r15
  400bb6:	c3                   	retq   
  400bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400bbe:	00 00 

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
  400bec:	e8 5f f9 ff ff       	callq  400550 <_init>
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
