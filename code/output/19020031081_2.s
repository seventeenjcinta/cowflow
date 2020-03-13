
input/19020031081_2.elf:     file format elf64-x86-64


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

00000000004005b0 <_IO_putc@plt>:
  4005b0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602030 <_IO_putc@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

00000000004005c0 <malloc@plt>:
  4005c0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602038 <malloc@GLIBC_2.2.5>
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
  4005ef:	49 c7 c0 a0 0c 40 00 	mov    $0x400ca0,%r8
  4005f6:	48 c7 c1 30 0c 40 00 	mov    $0x400c30,%rcx
  4005fd:	48 c7 c7 60 09 40 00 	mov    $0x400960,%rdi
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
  400690:	80 3d c9 19 20 00 00 	cmpb   $0x0,0x2019c9(%rip)        # 602060 <completed.7698>
  400697:	75 17                	jne    4006b0 <__do_global_dtors_aux+0x20>
  400699:	55                   	push   %rbp
  40069a:	48 89 e5             	mov    %rsp,%rbp
  40069d:	e8 7e ff ff ff       	callq  400620 <deregister_tm_clones>
  4006a2:	c6 05 b7 19 20 00 01 	movb   $0x1,0x2019b7(%rip)        # 602060 <completed.7698>
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
  4006d8:	48 39 0f             	cmp    %rcx,(%rdi)
  4006db:	7d 26                	jge    400703 <insert+0x33>
  4006dd:	48 89 f8             	mov    %rdi,%rax
  4006e0:	48 89 c2             	mov    %rax,%rdx
  4006e3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4006e7:	48 85 c0             	test   %rax,%rax
  4006ea:	74 1f                	je     40070b <insert+0x3b>
  4006ec:	48 39 08             	cmp    %rcx,(%rax)
  4006ef:	7c ef                	jl     4006e0 <insert+0x10>
  4006f1:	48 39 f8             	cmp    %rdi,%rax
  4006f4:	74 0d                	je     400703 <insert+0x33>
  4006f6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4006fa:	eb 15                	jmp    400711 <insert+0x41>
  4006fc:	31 c0                	xor    %eax,%eax
  4006fe:	48 89 f7             	mov    %rsi,%rdi
  400701:	eb 0e                	jmp    400711 <insert+0x41>
  400703:	48 89 f8             	mov    %rdi,%rax
  400706:	48 89 f7             	mov    %rsi,%rdi
  400709:	eb 06                	jmp    400711 <insert+0x41>
  40070b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40070f:	31 c0                	xor    %eax,%eax
  400711:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400715:	83 05 48 19 20 00 01 	addl   $0x1,0x201948(%rip)        # 602064 <n>
  40071c:	48 89 f8             	mov    %rdi,%rax
  40071f:	c3                   	retq   

0000000000400720 <creat>:
  400720:	41 57                	push   %r15
  400722:	41 56                	push   %r14
  400724:	53                   	push   %rbx
  400725:	49 89 fe             	mov    %rdi,%r14
  400728:	eb 11                	jmp    40073b <creat+0x1b>
  40072a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400730:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400734:	83 05 29 19 20 00 01 	addl   $0x1,0x201929(%rip)        # 602064 <n>
  40073b:	bf 18 00 00 00       	mov    $0x18,%edi
  400740:	e8 7b fe ff ff       	callq  4005c0 <malloc@plt>
  400745:	48 89 c3             	mov    %rax,%rbx
  400748:	4c 8d 7b 08          	lea    0x8(%rbx),%r15
  40074c:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400751:	31 c0                	xor    %eax,%eax
  400753:	48 89 de             	mov    %rbx,%rsi
  400756:	4c 89 fa             	mov    %r15,%rdx
  400759:	e8 72 fe ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  40075e:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400765:	00 
  400766:	48 8b 0b             	mov    (%rbx),%rcx
  400769:	48 85 c9             	test   %rcx,%rcx
  40076c:	75 12                	jne    400780 <creat+0x60>
  40076e:	f2 41 0f 10 07       	movsd  (%r15),%xmm0
  400773:	66 0f 2e 04 25 b8 0c 	ucomisd 0x400cb8,%xmm0
  40077a:	40 00 
  40077c:	75 02                	jne    400780 <creat+0x60>
  40077e:	7b 56                	jnp    4007d6 <creat+0xb6>
  400780:	4d 85 f6             	test   %r14,%r14
  400783:	74 2b                	je     4007b0 <creat+0x90>
  400785:	49 39 0e             	cmp    %rcx,(%r14)
  400788:	4c 89 f0             	mov    %r14,%rax
  40078b:	7d 33                	jge    4007c0 <creat+0xa0>
  40078d:	0f 1f 00             	nopl   (%rax)
  400790:	48 89 c2             	mov    %rax,%rdx
  400793:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400797:	48 85 c0             	test   %rax,%rax
  40079a:	74 2f                	je     4007cb <creat+0xab>
  40079c:	48 39 08             	cmp    %rcx,(%rax)
  40079f:	7c ef                	jl     400790 <creat+0x70>
  4007a1:	4c 39 f0             	cmp    %r14,%rax
  4007a4:	74 1a                	je     4007c0 <creat+0xa0>
  4007a6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007aa:	eb 84                	jmp    400730 <creat+0x10>
  4007ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4007b0:	31 c0                	xor    %eax,%eax
  4007b2:	49 89 de             	mov    %rbx,%r14
  4007b5:	e9 76 ff ff ff       	jmpq   400730 <creat+0x10>
  4007ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007c0:	4c 89 f0             	mov    %r14,%rax
  4007c3:	49 89 de             	mov    %rbx,%r14
  4007c6:	e9 65 ff ff ff       	jmpq   400730 <creat+0x10>
  4007cb:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4007cf:	31 c0                	xor    %eax,%eax
  4007d1:	e9 5a ff ff ff       	jmpq   400730 <creat+0x10>
  4007d6:	48 89 df             	mov    %rbx,%rdi
  4007d9:	e8 a2 fd ff ff       	callq  400580 <free@plt>
  4007de:	4c 89 f0             	mov    %r14,%rax
  4007e1:	5b                   	pop    %rbx
  4007e2:	41 5e                	pop    %r14
  4007e4:	41 5f                	pop    %r15
  4007e6:	c3                   	retq   
  4007e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ee:	00 00 

00000000004007f0 <del>:
  4007f0:	41 56                	push   %r14
  4007f2:	53                   	push   %rbx
  4007f3:	50                   	push   %rax
  4007f4:	48 89 fb             	mov    %rdi,%rbx
  4007f7:	48 85 db             	test   %rbx,%rbx
  4007fa:	74 2d                	je     400829 <del+0x39>
  4007fc:	48 8b 03             	mov    (%rbx),%rax
  4007ff:	48 39 f0             	cmp    %rsi,%rax
  400802:	7d 46                	jge    40084a <del+0x5a>
  400804:	31 d2                	xor    %edx,%edx
  400806:	48 89 df             	mov    %rbx,%rdi
  400809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400810:	48 89 f9             	mov    %rdi,%rcx
  400813:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400817:	48 85 ff             	test   %rdi,%rdi
  40081a:	74 35                	je     400851 <del+0x61>
  40081c:	48 8b 07             	mov    (%rdi),%rax
  40081f:	48 89 ca             	mov    %rcx,%rdx
  400822:	48 39 f0             	cmp    %rsi,%rax
  400825:	7c e9                	jl     400810 <del+0x20>
  400827:	eb 2e                	jmp    400857 <del+0x67>
  400829:	48 8b 35 28 18 20 00 	mov    0x201828(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400830:	bf 0a 00 00 00       	mov    $0xa,%edi
  400835:	e8 76 fd ff ff       	callq  4005b0 <_IO_putc@plt>
  40083a:	31 db                	xor    %ebx,%ebx
  40083c:	bf c8 0c 40 00       	mov    $0x400cc8,%edi
  400841:	31 c0                	xor    %eax,%eax
  400843:	e8 58 fd ff ff       	callq  4005a0 <printf@plt>
  400848:	eb 7c                	jmp    4008c6 <del+0xd6>
  40084a:	31 c9                	xor    %ecx,%ecx
  40084c:	48 89 df             	mov    %rbx,%rdi
  40084f:	eb 06                	jmp    400857 <del+0x67>
  400851:	48 89 cf             	mov    %rcx,%rdi
  400854:	48 89 d1             	mov    %rdx,%rcx
  400857:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  40085b:	48 39 df             	cmp    %rbx,%rdi
  40085e:	75 12                	jne    400872 <del+0x82>
  400860:	48 39 f0             	cmp    %rsi,%rax
  400863:	75 0d                	jne    400872 <del+0x82>
  400865:	48 89 df             	mov    %rbx,%rdi
  400868:	e8 13 fd ff ff       	callq  400580 <free@plt>
  40086d:	4c 89 f3             	mov    %r14,%rbx
  400870:	eb 4d                	jmp    4008bf <del+0xcf>
  400872:	4d 85 f6             	test   %r14,%r14
  400875:	74 10                	je     400887 <del+0x97>
  400877:	48 39 f0             	cmp    %rsi,%rax
  40087a:	75 1f                	jne    40089b <del+0xab>
  40087c:	4c 89 71 10          	mov    %r14,0x10(%rcx)
  400880:	e8 fb fc ff ff       	callq  400580 <free@plt>
  400885:	eb 38                	jmp    4008bf <del+0xcf>
  400887:	48 39 f0             	cmp    %rsi,%rax
  40088a:	75 0f                	jne    40089b <del+0xab>
  40088c:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
  400893:	00 
  400894:	e8 e7 fc ff ff       	callq  400580 <free@plt>
  400899:	eb 24                	jmp    4008bf <del+0xcf>
  40089b:	48 8b 35 b6 17 20 00 	mov    0x2017b6(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  4008a2:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008a7:	e8 04 fd ff ff       	callq  4005b0 <_IO_putc@plt>
  4008ac:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  4008b1:	31 c0                	xor    %eax,%eax
  4008b3:	e8 e8 fc ff ff       	callq  4005a0 <printf@plt>
  4008b8:	83 05 a5 17 20 00 01 	addl   $0x1,0x2017a5(%rip)        # 602064 <n>
  4008bf:	83 05 9e 17 20 00 ff 	addl   $0xffffffff,0x20179e(%rip)        # 602064 <n>
  4008c6:	48 89 d8             	mov    %rbx,%rax
  4008c9:	48 83 c4 08          	add    $0x8,%rsp
  4008cd:	5b                   	pop    %rbx
  4008ce:	41 5e                	pop    %r14
  4008d0:	c3                   	retq   
  4008d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008d8:	0f 1f 84 00 00 00 00 
  4008df:	00 

00000000004008e0 <print>:
  4008e0:	55                   	push   %rbp
  4008e1:	53                   	push   %rbx
  4008e2:	50                   	push   %rax
  4008e3:	48 89 fb             	mov    %rdi,%rbx
  4008e6:	48 8b 35 6b 17 20 00 	mov    0x20176b(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  4008ed:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008f2:	e8 b9 fc ff ff       	callq  4005b0 <_IO_putc@plt>
  4008f7:	8b 35 67 17 20 00    	mov    0x201767(%rip),%esi        # 602064 <n>
  4008fd:	31 ed                	xor    %ebp,%ebp
  4008ff:	bf 06 0d 40 00       	mov    $0x400d06,%edi
  400904:	31 c0                	xor    %eax,%eax
  400906:	e8 95 fc ff ff       	callq  4005a0 <printf@plt>
  40090b:	83 3d 52 17 20 00 00 	cmpl   $0x0,0x201752(%rip)        # 602064 <n>
  400912:	7e 40                	jle    400954 <print+0x74>
  400914:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40091b:	00 00 00 00 00 
  400920:	48 8b 33             	mov    (%rbx),%rsi
  400923:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400928:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  40092d:	b0 01                	mov    $0x1,%al
  40092f:	e8 6c fc ff ff       	callq  4005a0 <printf@plt>
  400934:	48 8b 35 1d 17 20 00 	mov    0x20171d(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  40093b:	bf 0a 00 00 00       	mov    $0xa,%edi
  400940:	e8 6b fc ff ff       	callq  4005b0 <_IO_putc@plt>
  400945:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400949:	83 c5 01             	add    $0x1,%ebp
  40094c:	3b 2d 12 17 20 00    	cmp    0x201712(%rip),%ebp        # 602064 <n>
  400952:	7c cc                	jl     400920 <print+0x40>
  400954:	48 83 c4 08          	add    $0x8,%rsp
  400958:	5b                   	pop    %rbx
  400959:	5d                   	pop    %rbp
  40095a:	c3                   	retq   
  40095b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400960 <main>:
  400960:	55                   	push   %rbp
  400961:	41 57                	push   %r15
  400963:	41 56                	push   %r14
  400965:	41 54                	push   %r12
  400967:	53                   	push   %rbx
  400968:	48 83 ec 10          	sub    $0x10,%rsp
  40096c:	bf 90 0d 40 00       	mov    $0x400d90,%edi
  400971:	e8 1a fc ff ff       	callq  400590 <puts@plt>
  400976:	bf b0 0d 40 00       	mov    $0x400db0,%edi
  40097b:	e8 10 fc ff ff       	callq  400590 <puts@plt>
  400980:	45 31 f6             	xor    %r14d,%r14d
  400983:	31 ff                	xor    %edi,%edi
  400985:	e8 96 fd ff ff       	callq  400720 <creat>
  40098a:	49 89 c4             	mov    %rax,%r12
  40098d:	48 8b 35 c4 16 20 00 	mov    0x2016c4(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400994:	bf 0a 00 00 00       	mov    $0xa,%edi
  400999:	e8 12 fc ff ff       	callq  4005b0 <_IO_putc@plt>
  40099e:	8b 35 c0 16 20 00    	mov    0x2016c0(%rip),%esi        # 602064 <n>
  4009a4:	bf 06 0d 40 00       	mov    $0x400d06,%edi
  4009a9:	31 c0                	xor    %eax,%eax
  4009ab:	e8 f0 fb ff ff       	callq  4005a0 <printf@plt>
  4009b0:	83 3d ad 16 20 00 00 	cmpl   $0x0,0x2016ad(%rip)        # 602064 <n>
  4009b7:	7e 3d                	jle    4009f6 <main+0x96>
  4009b9:	4c 89 e3             	mov    %r12,%rbx
  4009bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4009c0:	48 8b 33             	mov    (%rbx),%rsi
  4009c3:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  4009c8:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  4009cd:	b0 01                	mov    $0x1,%al
  4009cf:	e8 cc fb ff ff       	callq  4005a0 <printf@plt>
  4009d4:	48 8b 35 7d 16 20 00 	mov    0x20167d(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  4009db:	bf 0a 00 00 00       	mov    $0xa,%edi
  4009e0:	e8 cb fb ff ff       	callq  4005b0 <_IO_putc@plt>
  4009e5:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4009e9:	41 83 c6 01          	add    $0x1,%r14d
  4009ed:	44 3b 35 70 16 20 00 	cmp    0x201670(%rip),%r14d        # 602064 <n>
  4009f4:	7c ca                	jl     4009c0 <main+0x60>
  4009f6:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  4009fb:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  400a00:	48 8b 35 51 16 20 00 	mov    0x201651(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400a07:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a0c:	e8 9f fb ff ff       	callq  4005b0 <_IO_putc@plt>
  400a11:	bf e0 0d 40 00       	mov    $0x400de0,%edi
  400a16:	e8 75 fb ff ff       	callq  400590 <puts@plt>
  400a1b:	bf 2f 0d 40 00       	mov    $0x400d2f,%edi
  400a20:	31 c0                	xor    %eax,%eax
  400a22:	e8 79 fb ff ff       	callq  4005a0 <printf@plt>
  400a27:	bf 3e 0d 40 00       	mov    $0x400d3e,%edi
  400a2c:	31 c0                	xor    %eax,%eax
  400a2e:	4c 89 f6             	mov    %r14,%rsi
  400a31:	e8 9a fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a36:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400a3a:	83 f8 02             	cmp    $0x2,%eax
  400a3d:	0f 84 ad 00 00 00    	je     400af0 <main+0x190>
  400a43:	83 f8 01             	cmp    $0x1,%eax
  400a46:	0f 85 cc 01 00 00    	jne    400c18 <main+0x2b8>
  400a4c:	bf 41 0d 40 00       	mov    $0x400d41,%edi
  400a51:	31 c0                	xor    %eax,%eax
  400a53:	e8 48 fb ff ff       	callq  4005a0 <printf@plt>
  400a58:	bf 18 00 00 00       	mov    $0x18,%edi
  400a5d:	e8 5e fb ff ff       	callq  4005c0 <malloc@plt>
  400a62:	48 89 c3             	mov    %rax,%rbx
  400a65:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a69:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  400a6e:	31 c0                	xor    %eax,%eax
  400a70:	48 89 de             	mov    %rbx,%rsi
  400a73:	e8 58 fb ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400a78:	48 8b 33             	mov    (%rbx),%rsi
  400a7b:	bf 5d 0d 40 00       	mov    $0x400d5d,%edi
  400a80:	31 c0                	xor    %eax,%eax
  400a82:	e8 19 fb ff ff       	callq  4005a0 <printf@plt>
  400a87:	48 8b 35 ca 15 20 00 	mov    0x2015ca(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400a8e:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a93:	e8 18 fb ff ff       	callq  4005b0 <_IO_putc@plt>
  400a98:	4d 85 e4             	test   %r12,%r12
  400a9b:	0f 84 e9 00 00 00    	je     400b8a <main+0x22a>
  400aa1:	48 8b 13             	mov    (%rbx),%rdx
  400aa4:	49 39 14 24          	cmp    %rdx,(%r12)
  400aa8:	4c 89 e0             	mov    %r12,%rax
  400aab:	0f 8d e0 00 00 00    	jge    400b91 <main+0x231>
  400ab1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400ab8:	0f 1f 84 00 00 00 00 
  400abf:	00 
  400ac0:	48 89 c1             	mov    %rax,%rcx
  400ac3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400ac7:	48 85 c0             	test   %rax,%rax
  400aca:	0f 84 c9 00 00 00    	je     400b99 <main+0x239>
  400ad0:	48 39 10             	cmp    %rdx,(%rax)
  400ad3:	7c eb                	jl     400ac0 <main+0x160>
  400ad5:	4c 39 e0             	cmp    %r12,%rax
  400ad8:	0f 84 b3 00 00 00    	je     400b91 <main+0x231>
  400ade:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ae2:	e9 b9 00 00 00       	jmpq   400ba0 <main+0x240>
  400ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400aee:	00 00 
  400af0:	bf 6a 0d 40 00       	mov    $0x400d6a,%edi
  400af5:	31 c0                	xor    %eax,%eax
  400af7:	e8 a4 fa ff ff       	callq  4005a0 <printf@plt>
  400afc:	bf 66 0d 40 00       	mov    $0x400d66,%edi
  400b01:	31 c0                	xor    %eax,%eax
  400b03:	4c 89 fe             	mov    %r15,%rsi
  400b06:	e8 c5 fa ff ff       	callq  4005d0 <__isoc99_scanf@plt>
  400b0b:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400b10:	4c 89 e7             	mov    %r12,%rdi
  400b13:	e8 d8 fc ff ff       	callq  4007f0 <del>
  400b18:	49 89 c4             	mov    %rax,%r12
  400b1b:	48 8b 35 36 15 20 00 	mov    0x201536(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400b22:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b27:	e8 84 fa ff ff       	callq  4005b0 <_IO_putc@plt>
  400b2c:	8b 35 32 15 20 00    	mov    0x201532(%rip),%esi        # 602064 <n>
  400b32:	bf 06 0d 40 00       	mov    $0x400d06,%edi
  400b37:	31 c0                	xor    %eax,%eax
  400b39:	e8 62 fa ff ff       	callq  4005a0 <printf@plt>
  400b3e:	83 3d 1f 15 20 00 00 	cmpl   $0x0,0x20151f(%rip)        # 602064 <n>
  400b45:	0f 8e c9 00 00 00    	jle    400c14 <main+0x2b4>
  400b4b:	31 db                	xor    %ebx,%ebx
  400b4d:	4c 89 e5             	mov    %r12,%rbp
  400b50:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400b54:	f2 0f 10 45 08       	movsd  0x8(%rbp),%xmm0
  400b59:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  400b5e:	b0 01                	mov    $0x1,%al
  400b60:	e8 3b fa ff ff       	callq  4005a0 <printf@plt>
  400b65:	48 8b 35 ec 14 20 00 	mov    0x2014ec(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400b6c:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b71:	e8 3a fa ff ff       	callq  4005b0 <_IO_putc@plt>
  400b76:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400b7a:	83 c3 01             	add    $0x1,%ebx
  400b7d:	3b 1d e1 14 20 00    	cmp    0x2014e1(%rip),%ebx        # 602064 <n>
  400b83:	7c cb                	jl     400b50 <main+0x1f0>
  400b85:	e9 8a 00 00 00       	jmpq   400c14 <main+0x2b4>
  400b8a:	31 c0                	xor    %eax,%eax
  400b8c:	49 89 dc             	mov    %rbx,%r12
  400b8f:	eb 0f                	jmp    400ba0 <main+0x240>
  400b91:	4c 89 e0             	mov    %r12,%rax
  400b94:	49 89 dc             	mov    %rbx,%r12
  400b97:	eb 07                	jmp    400ba0 <main+0x240>
  400b99:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b9d:	31 c0                	xor    %eax,%eax
  400b9f:	90                   	nop
  400ba0:	83 05 bd 14 20 00 01 	addl   $0x1,0x2014bd(%rip)        # 602064 <n>
  400ba7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400bab:	48 8b 35 a6 14 20 00 	mov    0x2014a6(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400bb2:	bf 0a 00 00 00       	mov    $0xa,%edi
  400bb7:	e8 f4 f9 ff ff       	callq  4005b0 <_IO_putc@plt>
  400bbc:	8b 35 a2 14 20 00    	mov    0x2014a2(%rip),%esi        # 602064 <n>
  400bc2:	bf 06 0d 40 00       	mov    $0x400d06,%edi
  400bc7:	31 c0                	xor    %eax,%eax
  400bc9:	e8 d2 f9 ff ff       	callq  4005a0 <printf@plt>
  400bce:	83 3d 8f 14 20 00 00 	cmpl   $0x0,0x20148f(%rip)        # 602064 <n>
  400bd5:	7e 3d                	jle    400c14 <main+0x2b4>
  400bd7:	31 ed                	xor    %ebp,%ebp
  400bd9:	4c 89 e3             	mov    %r12,%rbx
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)
  400be0:	48 8b 33             	mov    (%rbx),%rsi
  400be3:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400be8:	bf 21 0d 40 00       	mov    $0x400d21,%edi
  400bed:	b0 01                	mov    $0x1,%al
  400bef:	e8 ac f9 ff ff       	callq  4005a0 <printf@plt>
  400bf4:	48 8b 35 5d 14 20 00 	mov    0x20145d(%rip),%rsi        # 602058 <stdout@@GLIBC_2.2.5>
  400bfb:	bf 0a 00 00 00       	mov    $0xa,%edi
  400c00:	e8 ab f9 ff ff       	callq  4005b0 <_IO_putc@plt>
  400c05:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c09:	83 c5 01             	add    $0x1,%ebp
  400c0c:	3b 2d 52 14 20 00    	cmp    0x201452(%rip),%ebp        # 602064 <n>
  400c12:	7c cc                	jl     400be0 <main+0x280>
  400c14:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400c18:	85 c0                	test   %eax,%eax
  400c1a:	0f 85 e0 fd ff ff    	jne    400a00 <main+0xa0>
  400c20:	31 c0                	xor    %eax,%eax
  400c22:	48 83 c4 10          	add    $0x10,%rsp
  400c26:	5b                   	pop    %rbx
  400c27:	41 5c                	pop    %r12
  400c29:	41 5e                	pop    %r14
  400c2b:	41 5f                	pop    %r15
  400c2d:	5d                   	pop    %rbp
  400c2e:	c3                   	retq   
  400c2f:	90                   	nop

0000000000400c30 <__libc_csu_init>:
  400c30:	41 57                	push   %r15
  400c32:	41 56                	push   %r14
  400c34:	49 89 d7             	mov    %rdx,%r15
  400c37:	41 55                	push   %r13
  400c39:	41 54                	push   %r12
  400c3b:	4c 8d 25 be 11 20 00 	lea    0x2011be(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400c42:	55                   	push   %rbp
  400c43:	48 8d 2d be 11 20 00 	lea    0x2011be(%rip),%rbp        # 601e08 <__init_array_end>
  400c4a:	53                   	push   %rbx
  400c4b:	41 89 fd             	mov    %edi,%r13d
  400c4e:	49 89 f6             	mov    %rsi,%r14
  400c51:	4c 29 e5             	sub    %r12,%rbp
  400c54:	48 83 ec 08          	sub    $0x8,%rsp
  400c58:	48 c1 fd 03          	sar    $0x3,%rbp
  400c5c:	e8 ef f8 ff ff       	callq  400550 <_init>
  400c61:	48 85 ed             	test   %rbp,%rbp
  400c64:	74 20                	je     400c86 <__libc_csu_init+0x56>
  400c66:	31 db                	xor    %ebx,%ebx
  400c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c6f:	00 
  400c70:	4c 89 fa             	mov    %r15,%rdx
  400c73:	4c 89 f6             	mov    %r14,%rsi
  400c76:	44 89 ef             	mov    %r13d,%edi
  400c79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c7d:	48 83 c3 01          	add    $0x1,%rbx
  400c81:	48 39 dd             	cmp    %rbx,%rbp
  400c84:	75 ea                	jne    400c70 <__libc_csu_init+0x40>
  400c86:	48 83 c4 08          	add    $0x8,%rsp
  400c8a:	5b                   	pop    %rbx
  400c8b:	5d                   	pop    %rbp
  400c8c:	41 5c                	pop    %r12
  400c8e:	41 5d                	pop    %r13
  400c90:	41 5e                	pop    %r14
  400c92:	41 5f                	pop    %r15
  400c94:	c3                   	retq   
  400c95:	90                   	nop
  400c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c9d:	00 00 00 

0000000000400ca0 <__libc_csu_fini>:
  400ca0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ca4 <_fini>:
  400ca4:	48 83 ec 08          	sub    $0x8,%rsp
  400ca8:	48 83 c4 08          	add    $0x8,%rsp
  400cac:	c3                   	retq   
