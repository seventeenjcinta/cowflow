
c/19020031113_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004005a8 <_init>:
  4005a8:	48 83 ec 08          	sub    $0x8,%rsp
  4005ac:	48 8b 05 45 1a 20 00 	mov    0x201a45(%rip),%rax        # 601ff8 <__gmon_start__>
  4005b3:	48 85 c0             	test   %rax,%rax
  4005b6:	74 02                	je     4005ba <_init+0x12>
  4005b8:	ff d0                	callq  *%rax
  4005ba:	48 83 c4 08          	add    $0x8,%rsp
  4005be:	c3                   	retq   

Disassembly of section .plt:

00000000004005c0 <.plt>:
  4005c0:	ff 35 42 1a 20 00    	pushq  0x201a42(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 1a 20 00    	jmpq   *0x201a44(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <free@plt>:
  4005d0:	ff 25 42 1a 20 00    	jmpq   *0x201a42(%rip)        # 602018 <free@GLIBC_2.2.5>
  4005d6:	68 00 00 00 00       	pushq  $0x0
  4005db:	e9 e0 ff ff ff       	jmpq   4005c0 <.plt>

00000000004005e0 <puts@plt>:
  4005e0:	ff 25 3a 1a 20 00    	jmpq   *0x201a3a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005e6:	68 01 00 00 00       	pushq  $0x1
  4005eb:	e9 d0 ff ff ff       	jmpq   4005c0 <.plt>

00000000004005f0 <printf@plt>:
  4005f0:	ff 25 32 1a 20 00    	jmpq   *0x201a32(%rip)        # 602028 <printf@GLIBC_2.2.5>
  4005f6:	68 02 00 00 00       	pushq  $0x2
  4005fb:	e9 c0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400600 <_IO_putc@plt>:
  400600:	ff 25 2a 1a 20 00    	jmpq   *0x201a2a(%rip)        # 602030 <_IO_putc@GLIBC_2.2.5>
  400606:	68 03 00 00 00       	pushq  $0x3
  40060b:	e9 b0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400610 <malloc@plt>:
  400610:	ff 25 22 1a 20 00    	jmpq   *0x201a22(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  400616:	68 04 00 00 00       	pushq  $0x4
  40061b:	e9 a0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400620 <_IO_getc@plt>:
  400620:	ff 25 1a 1a 20 00    	jmpq   *0x201a1a(%rip)        # 602040 <_IO_getc@GLIBC_2.2.5>
  400626:	68 05 00 00 00       	pushq  $0x5
  40062b:	e9 90 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400630 <__isoc99_scanf@plt>:
  400630:	ff 25 12 1a 20 00    	jmpq   *0x201a12(%rip)        # 602048 <__isoc99_scanf@GLIBC_2.7>
  400636:	68 06 00 00 00       	pushq  $0x6
  40063b:	e9 80 ff ff ff       	jmpq   4005c0 <.plt>

Disassembly of section .text:

0000000000400640 <_start>:
  400640:	31 ed                	xor    %ebp,%ebp
  400642:	49 89 d1             	mov    %rdx,%r9
  400645:	5e                   	pop    %rsi
  400646:	48 89 e2             	mov    %rsp,%rdx
  400649:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40064d:	50                   	push   %rax
  40064e:	54                   	push   %rsp
  40064f:	49 c7 c0 e0 0d 40 00 	mov    $0x400de0,%r8
  400656:	48 c7 c1 70 0d 40 00 	mov    $0x400d70,%rcx
  40065d:	48 c7 c7 40 09 40 00 	mov    $0x400940,%rdi
  400664:	ff 15 86 19 20 00    	callq  *0x201986(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40066a:	f4                   	hlt    
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400670 <_dl_relocate_static_pie>:
  400670:	f3 c3                	repz retq 
  400672:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400679:	00 00 00 
  40067c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400680 <deregister_tm_clones>:
  400680:	55                   	push   %rbp
  400681:	b8 60 20 60 00       	mov    $0x602060,%eax
  400686:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40068c:	48 89 e5             	mov    %rsp,%rbp
  40068f:	74 17                	je     4006a8 <deregister_tm_clones+0x28>
  400691:	b8 00 00 00 00       	mov    $0x0,%eax
  400696:	48 85 c0             	test   %rax,%rax
  400699:	74 0d                	je     4006a8 <deregister_tm_clones+0x28>
  40069b:	5d                   	pop    %rbp
  40069c:	bf 60 20 60 00       	mov    $0x602060,%edi
  4006a1:	ff e0                	jmpq   *%rax
  4006a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006a8:	5d                   	pop    %rbp
  4006a9:	c3                   	retq   
  4006aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006b0 <register_tm_clones>:
  4006b0:	be 60 20 60 00       	mov    $0x602060,%esi
  4006b5:	55                   	push   %rbp
  4006b6:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
  4006bd:	48 89 e5             	mov    %rsp,%rbp
  4006c0:	48 c1 fe 03          	sar    $0x3,%rsi
  4006c4:	48 89 f0             	mov    %rsi,%rax
  4006c7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006cb:	48 01 c6             	add    %rax,%rsi
  4006ce:	48 d1 fe             	sar    %rsi
  4006d1:	74 15                	je     4006e8 <register_tm_clones+0x38>
  4006d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006d8:	48 85 c0             	test   %rax,%rax
  4006db:	74 0b                	je     4006e8 <register_tm_clones+0x38>
  4006dd:	5d                   	pop    %rbp
  4006de:	bf 60 20 60 00       	mov    $0x602060,%edi
  4006e3:	ff e0                	jmpq   *%rax
  4006e5:	0f 1f 00             	nopl   (%rax)
  4006e8:	5d                   	pop    %rbp
  4006e9:	c3                   	retq   
  4006ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006f0 <__do_global_dtors_aux>:
  4006f0:	80 3d 81 19 20 00 00 	cmpb   $0x0,0x201981(%rip)        # 602078 <completed.7698>
  4006f7:	75 17                	jne    400710 <__do_global_dtors_aux+0x20>
  4006f9:	55                   	push   %rbp
  4006fa:	48 89 e5             	mov    %rsp,%rbp
  4006fd:	e8 7e ff ff ff       	callq  400680 <deregister_tm_clones>
  400702:	c6 05 6f 19 20 00 01 	movb   $0x1,0x20196f(%rip)        # 602078 <completed.7698>
  400709:	5d                   	pop    %rbp
  40070a:	c3                   	retq   
  40070b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400710:	f3 c3                	repz retq 
  400712:	0f 1f 40 00          	nopl   0x0(%rax)
  400716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40071d:	00 00 00 

0000000000400720 <frame_dummy>:
  400720:	55                   	push   %rbp
  400721:	48 89 e5             	mov    %rsp,%rbp
  400724:	5d                   	pop    %rbp
  400725:	eb 89                	jmp    4006b0 <register_tm_clones>
  400727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40072e:	00 00 

0000000000400730 <del>:
  400730:	41 56                	push   %r14
  400732:	53                   	push   %rbx
  400733:	50                   	push   %rax
  400734:	48 89 fb             	mov    %rdi,%rbx
  400737:	48 85 db             	test   %rbx,%rbx
  40073a:	74 1d                	je     400759 <del+0x29>
  40073c:	48 39 33             	cmp    %rsi,(%rbx)
  40073f:	75 26                	jne    400767 <del+0x37>
  400741:	4c 8b 73 10          	mov    0x10(%rbx),%r14
  400745:	48 89 df             	mov    %rbx,%rdi
  400748:	e8 83 fe ff ff       	callq  4005d0 <free@plt>
  40074d:	83 05 28 19 20 00 ff 	addl   $0xffffffff,0x201928(%rip)        # 60207c <n>
  400754:	4c 89 f3             	mov    %r14,%rbx
  400757:	eb 59                	jmp    4007b2 <del+0x82>
  400759:	c7 05 1d 19 20 00 01 	movl   $0x1,0x20191d(%rip)        # 602080 <m>
  400760:	00 00 00 
  400763:	31 db                	xor    %ebx,%ebx
  400765:	eb 4b                	jmp    4007b2 <del+0x82>
  400767:	48 89 df             	mov    %rbx,%rdi
  40076a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400770:	48 89 f8             	mov    %rdi,%rax
  400773:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400777:	48 85 ff             	test   %rdi,%rdi
  40077a:	74 20                	je     40079c <del+0x6c>
  40077c:	48 39 37             	cmp    %rsi,(%rdi)
  40077f:	75 ef                	jne    400770 <del+0x40>
  400781:	4c 8b 77 10          	mov    0x10(%rdi),%r14
  400785:	48 39 df             	cmp    %rbx,%rdi
  400788:	74 bb                	je     400745 <del+0x15>
  40078a:	4c 89 70 10          	mov    %r14,0x10(%rax)
  40078e:	e8 3d fe ff ff       	callq  4005d0 <free@plt>
  400793:	83 05 e2 18 20 00 ff 	addl   $0xffffffff,0x2018e2(%rip)        # 60207c <n>
  40079a:	eb 16                	jmp    4007b2 <del+0x82>
  40079c:	c7 05 da 18 20 00 01 	movl   $0x1,0x2018da(%rip)        # 602080 <m>
  4007a3:	00 00 00 
  4007a6:	bf f4 0d 40 00       	mov    $0x400df4,%edi
  4007ab:	31 c0                	xor    %eax,%eax
  4007ad:	e8 3e fe ff ff       	callq  4005f0 <printf@plt>
  4007b2:	48 89 d8             	mov    %rbx,%rax
  4007b5:	48 83 c4 08          	add    $0x8,%rsp
  4007b9:	5b                   	pop    %rbx
  4007ba:	41 5e                	pop    %r14
  4007bc:	c3                   	retq   
  4007bd:	0f 1f 00             	nopl   (%rax)

00000000004007c0 <insert>:
  4007c0:	48 85 ff             	test   %rdi,%rdi
  4007c3:	74 27                	je     4007ec <insert+0x2c>
  4007c5:	48 8b 0e             	mov    (%rsi),%rcx
  4007c8:	48 3b 0f             	cmp    (%rdi),%rcx
  4007cb:	7e 2b                	jle    4007f8 <insert+0x38>
  4007cd:	48 89 f8             	mov    %rdi,%rax
  4007d0:	48 89 c2             	mov    %rax,%rdx
  4007d3:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4007d7:	48 85 c0             	test   %rax,%rax
  4007da:	74 24                	je     400800 <insert+0x40>
  4007dc:	48 3b 08             	cmp    (%rax),%rcx
  4007df:	7f ef                	jg     4007d0 <insert+0x10>
  4007e1:	48 39 f8             	cmp    %rdi,%rax
  4007e4:	74 12                	je     4007f8 <insert+0x38>
  4007e6:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  4007ea:	eb 1a                	jmp    400806 <insert+0x46>
  4007ec:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4007f3:	00 
  4007f4:	48 89 f0             	mov    %rsi,%rax
  4007f7:	c3                   	retq   
  4007f8:	48 89 f8             	mov    %rdi,%rax
  4007fb:	48 89 f7             	mov    %rsi,%rdi
  4007fe:	eb 06                	jmp    400806 <insert+0x46>
  400800:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  400804:	31 c0                	xor    %eax,%eax
  400806:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40080a:	83 05 6b 18 20 00 01 	addl   $0x1,0x20186b(%rip)        # 60207c <n>
  400811:	48 89 fe             	mov    %rdi,%rsi
  400814:	48 89 f0             	mov    %rsi,%rax
  400817:	c3                   	retq   
  400818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40081f:	00 

0000000000400820 <create>:
  400820:	41 57                	push   %r15
  400822:	41 56                	push   %r14
  400824:	53                   	push   %rbx
  400825:	bf 18 00 00 00       	mov    $0x18,%edi
  40082a:	e8 e1 fd ff ff       	callq  400610 <malloc@plt>
  40082f:	49 89 c7             	mov    %rax,%r15
  400832:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400836:	45 31 f6             	xor    %r14d,%r14d
  400839:	bf 09 0e 40 00       	mov    $0x400e09,%edi
  40083e:	31 c0                	xor    %eax,%eax
  400840:	4c 89 fe             	mov    %r15,%rsi
  400843:	e8 e8 fd ff ff       	callq  400630 <__isoc99_scanf@plt>
  400848:	49 83 3f 00          	cmpq   $0x0,(%r15)
  40084c:	74 5e                	je     4008ac <create+0x8c>
  40084e:	31 c0                	xor    %eax,%eax
  400850:	4c 89 f9             	mov    %r15,%rcx
  400853:	4c 89 fb             	mov    %r15,%rbx
  400856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40085d:	00 00 00 
  400860:	49 89 df             	mov    %rbx,%r15
  400863:	8b 15 13 18 20 00    	mov    0x201813(%rip),%edx        # 60207c <n>
  400869:	8d 72 01             	lea    0x1(%rdx),%esi
  40086c:	89 35 0a 18 20 00    	mov    %esi,0x20180a(%rip)        # 60207c <n>
  400872:	4d 89 fe             	mov    %r15,%r14
  400875:	85 d2                	test   %edx,%edx
  400877:	74 07                	je     400880 <create+0x60>
  400879:	4c 89 79 10          	mov    %r15,0x10(%rcx)
  40087d:	49 89 c6             	mov    %rax,%r14
  400880:	bf 18 00 00 00       	mov    $0x18,%edi
  400885:	e8 86 fd ff ff       	callq  400610 <malloc@plt>
  40088a:	48 89 c3             	mov    %rax,%rbx
  40088d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400891:	bf 09 0e 40 00       	mov    $0x400e09,%edi
  400896:	31 c0                	xor    %eax,%eax
  400898:	48 89 de             	mov    %rbx,%rsi
  40089b:	e8 90 fd ff ff       	callq  400630 <__isoc99_scanf@plt>
  4008a0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4008a4:	4c 89 f0             	mov    %r14,%rax
  4008a7:	4c 89 f9             	mov    %r15,%rcx
  4008aa:	75 b4                	jne    400860 <create+0x40>
  4008ac:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4008b3:	00 
  4008b4:	4c 89 f0             	mov    %r14,%rax
  4008b7:	5b                   	pop    %rbx
  4008b8:	41 5e                	pop    %r14
  4008ba:	41 5f                	pop    %r15
  4008bc:	c3                   	retq   
  4008bd:	0f 1f 00             	nopl   (%rax)

00000000004008c0 <print>:
  4008c0:	53                   	push   %rbx
  4008c1:	48 89 fb             	mov    %rdi,%rbx
  4008c4:	48 85 db             	test   %rbx,%rbx
  4008c7:	74 4b                	je     400914 <print+0x54>
  4008c9:	8b 35 ad 17 20 00    	mov    0x2017ad(%rip),%esi        # 60207c <n>
  4008cf:	bf 10 0e 40 00       	mov    $0x400e10,%edi
  4008d4:	31 c0                	xor    %eax,%eax
  4008d6:	e8 15 fd ff ff       	callq  4005f0 <printf@plt>
  4008db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008e0:	48 8b 33             	mov    (%rbx),%rsi
  4008e3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4008e8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4008ec:	bf 2b 0e 40 00       	mov    $0x400e2b,%edi
  4008f1:	b0 01                	mov    $0x1,%al
  4008f3:	e8 f8 fc ff ff       	callq  4005f0 <printf@plt>
  4008f8:	48 8b 35 61 17 20 00 	mov    0x201761(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  4008ff:	bf 0a 00 00 00       	mov    $0xa,%edi
  400904:	e8 f7 fc ff ff       	callq  400600 <_IO_putc@plt>
  400909:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40090d:	48 85 db             	test   %rbx,%rbx
  400910:	75 ce                	jne    4008e0 <print+0x20>
  400912:	5b                   	pop    %rbx
  400913:	c3                   	retq   
  400914:	bf 34 0e 40 00       	mov    $0x400e34,%edi
  400919:	31 c0                	xor    %eax,%eax
  40091b:	e8 d0 fc ff ff       	callq  4005f0 <printf@plt>
  400920:	48 8b 35 39 17 20 00 	mov    0x201739(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400927:	bf 0a 00 00 00       	mov    $0xa,%edi
  40092c:	5b                   	pop    %rbx
  40092d:	e9 ce fc ff ff       	jmpq   400600 <_IO_putc@plt>
  400932:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400939:	1f 84 00 00 00 00 00 

0000000000400940 <main>:
  400940:	41 57                	push   %r15
  400942:	41 56                	push   %r14
  400944:	41 54                	push   %r12
  400946:	53                   	push   %rbx
  400947:	48 83 ec 18          	sub    $0x18,%rsp
  40094b:	bf b0 0e 40 00       	mov    $0x400eb0,%edi
  400950:	e8 8b fc ff ff       	callq  4005e0 <puts@plt>
  400955:	bf d0 0e 40 00       	mov    $0x400ed0,%edi
  40095a:	e8 81 fc ff ff       	callq  4005e0 <puts@plt>
  40095f:	bf 18 00 00 00       	mov    $0x18,%edi
  400964:	e8 a7 fc ff ff       	callq  400610 <malloc@plt>
  400969:	49 89 c6             	mov    %rax,%r14
  40096c:	49 8d 56 08          	lea    0x8(%r14),%rdx
  400970:	bf 09 0e 40 00       	mov    $0x400e09,%edi
  400975:	31 c0                	xor    %eax,%eax
  400977:	4c 89 f6             	mov    %r14,%rsi
  40097a:	e8 b1 fc ff ff       	callq  400630 <__isoc99_scanf@plt>
  40097f:	49 83 3e 00          	cmpq   $0x0,(%r14)
  400983:	0f 84 ab 00 00 00    	je     400a34 <main+0xf4>
  400989:	31 c0                	xor    %eax,%eax
  40098b:	4c 89 f3             	mov    %r14,%rbx
  40098e:	66 90                	xchg   %ax,%ax
  400990:	49 89 df             	mov    %rbx,%r15
  400993:	8b 0d e3 16 20 00    	mov    0x2016e3(%rip),%ecx        # 60207c <n>
  400999:	8d 51 01             	lea    0x1(%rcx),%edx
  40099c:	89 15 da 16 20 00    	mov    %edx,0x2016da(%rip)        # 60207c <n>
  4009a2:	4d 89 fc             	mov    %r15,%r12
  4009a5:	85 c9                	test   %ecx,%ecx
  4009a7:	74 07                	je     4009b0 <main+0x70>
  4009a9:	4d 89 7e 10          	mov    %r15,0x10(%r14)
  4009ad:	49 89 c4             	mov    %rax,%r12
  4009b0:	bf 18 00 00 00       	mov    $0x18,%edi
  4009b5:	e8 56 fc ff ff       	callq  400610 <malloc@plt>
  4009ba:	48 89 c3             	mov    %rax,%rbx
  4009bd:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4009c1:	bf 09 0e 40 00       	mov    $0x400e09,%edi
  4009c6:	31 c0                	xor    %eax,%eax
  4009c8:	48 89 de             	mov    %rbx,%rsi
  4009cb:	e8 60 fc ff ff       	callq  400630 <__isoc99_scanf@plt>
  4009d0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4009d4:	4c 89 e0             	mov    %r12,%rax
  4009d7:	4d 89 fe             	mov    %r15,%r14
  4009da:	75 b4                	jne    400990 <main+0x50>
  4009dc:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  4009e3:	00 
  4009e4:	4d 85 e4             	test   %r12,%r12
  4009e7:	74 53                	je     400a3c <main+0xfc>
  4009e9:	8b 35 8d 16 20 00    	mov    0x20168d(%rip),%esi        # 60207c <n>
  4009ef:	bf 10 0e 40 00       	mov    $0x400e10,%edi
  4009f4:	31 c0                	xor    %eax,%eax
  4009f6:	e8 f5 fb ff ff       	callq  4005f0 <printf@plt>
  4009fb:	4c 89 e3             	mov    %r12,%rbx
  4009fe:	66 90                	xchg   %ax,%ax
  400a00:	48 8b 33             	mov    (%rbx),%rsi
  400a03:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a08:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a0c:	bf 2b 0e 40 00       	mov    $0x400e2b,%edi
  400a11:	b0 01                	mov    $0x1,%al
  400a13:	e8 d8 fb ff ff       	callq  4005f0 <printf@plt>
  400a18:	48 8b 35 41 16 20 00 	mov    0x201641(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400a1f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a24:	e8 d7 fb ff ff       	callq  400600 <_IO_putc@plt>
  400a29:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a2d:	48 85 db             	test   %rbx,%rbx
  400a30:	75 ce                	jne    400a00 <main+0xc0>
  400a32:	eb 28                	jmp    400a5c <main+0x11c>
  400a34:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  400a3b:	00 
  400a3c:	45 31 e4             	xor    %r12d,%r12d
  400a3f:	bf 34 0e 40 00       	mov    $0x400e34,%edi
  400a44:	31 c0                	xor    %eax,%eax
  400a46:	e8 a5 fb ff ff       	callq  4005f0 <printf@plt>
  400a4b:	48 8b 35 0e 16 20 00 	mov    0x20160e(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400a52:	bf 0a 00 00 00       	mov    $0xa,%edi
  400a57:	e8 a4 fb ff ff       	callq  400600 <_IO_putc@plt>
  400a5c:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  400a61:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  400a66:	eb 28                	jmp    400a90 <main+0x150>
  400a68:	c7 05 0e 16 20 00 01 	movl   $0x1,0x20160e(%rip)        # 602080 <m>
  400a6f:	00 00 00 
  400a72:	bf f4 0d 40 00       	mov    $0x400df4,%edi
  400a77:	31 c0                	xor    %eax,%eax
  400a79:	e8 72 fb ff ff       	callq  4005f0 <printf@plt>
  400a7e:	83 3d fb 15 20 00 00 	cmpl   $0x0,0x2015fb(%rip)        # 602080 <m>
  400a85:	0f 85 2c 01 00 00    	jne    400bb7 <main+0x277>
  400a8b:	e9 16 01 00 00       	jmpq   400ba6 <main+0x266>
  400a90:	bf 00 0f 40 00       	mov    $0x400f00,%edi
  400a95:	e8 46 fb ff ff       	callq  4005e0 <puts@plt>
  400a9a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400aa1:	ff 
  400aa2:	bf 4b 0e 40 00       	mov    $0x400e4b,%edi
  400aa7:	31 c0                	xor    %eax,%eax
  400aa9:	e8 42 fb ff ff       	callq  4005f0 <printf@plt>
  400aae:	bf 5a 0e 40 00       	mov    $0x400e5a,%edi
  400ab3:	31 c0                	xor    %eax,%eax
  400ab5:	4c 89 f6             	mov    %r14,%rsi
  400ab8:	e8 73 fb ff ff       	callq  400630 <__isoc99_scanf@plt>
  400abd:	48 8b 3d ac 15 20 00 	mov    0x2015ac(%rip),%rdi        # 602070 <stdin@@GLIBC_2.2.5>
  400ac4:	e8 57 fb ff ff       	callq  400620 <_IO_getc@plt>
  400ac9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400acd:	83 f8 02             	cmp    $0x2,%eax
  400ad0:	74 7e                	je     400b50 <main+0x210>
  400ad2:	83 f8 01             	cmp    $0x1,%eax
  400ad5:	0f 85 79 02 00 00    	jne    400d54 <main+0x414>
  400adb:	bf 5d 0e 40 00       	mov    $0x400e5d,%edi
  400ae0:	31 c0                	xor    %eax,%eax
  400ae2:	e8 09 fb ff ff       	callq  4005f0 <printf@plt>
  400ae7:	bf 18 00 00 00       	mov    $0x18,%edi
  400aec:	e8 1f fb ff ff       	callq  400610 <malloc@plt>
  400af1:	48 89 c3             	mov    %rax,%rbx
  400af4:	bf 09 0e 40 00       	mov    $0x400e09,%edi
  400af9:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400afd:	31 c0                	xor    %eax,%eax
  400aff:	48 89 de             	mov    %rbx,%rsi
  400b02:	e8 29 fb ff ff       	callq  400630 <__isoc99_scanf@plt>
  400b07:	4d 85 e4             	test   %r12,%r12
  400b0a:	0f 84 64 01 00 00    	je     400c74 <main+0x334>
  400b10:	48 8b 33             	mov    (%rbx),%rsi
  400b13:	4c 89 e0             	mov    %r12,%rax
  400b16:	49 3b 34 24          	cmp    (%r12),%rsi
  400b1a:	0f 8e 90 01 00 00    	jle    400cb0 <main+0x370>
  400b20:	48 89 c1             	mov    %rax,%rcx
  400b23:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400b27:	48 85 c0             	test   %rax,%rax
  400b2a:	0f 84 88 01 00 00    	je     400cb8 <main+0x378>
  400b30:	48 3b 30             	cmp    (%rax),%rsi
  400b33:	7f eb                	jg     400b20 <main+0x1e0>
  400b35:	4c 39 e0             	cmp    %r12,%rax
  400b38:	0f 84 72 01 00 00    	je     400cb0 <main+0x370>
  400b3e:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400b42:	e9 77 01 00 00       	jmpq   400cbe <main+0x37e>
  400b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b4e:	00 00 
  400b50:	bf 87 0e 40 00       	mov    $0x400e87,%edi
  400b55:	31 c0                	xor    %eax,%eax
  400b57:	e8 94 fa ff ff       	callq  4005f0 <printf@plt>
  400b5c:	bf 5a 0e 40 00       	mov    $0x400e5a,%edi
  400b61:	31 c0                	xor    %eax,%eax
  400b63:	4c 89 fe             	mov    %r15,%rsi
  400b66:	e8 c5 fa ff ff       	callq  400630 <__isoc99_scanf@plt>
  400b6b:	4d 85 e4             	test   %r12,%r12
  400b6e:	0f 84 1c 01 00 00    	je     400c90 <main+0x350>
  400b74:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400b79:	49 39 34 24          	cmp    %rsi,(%r12)
  400b7d:	4c 89 e7             	mov    %r12,%rdi
  400b80:	0f 85 aa 00 00 00    	jne    400c30 <main+0x2f0>
  400b86:	49 8b 5c 24 10       	mov    0x10(%r12),%rbx
  400b8b:	4c 89 e7             	mov    %r12,%rdi
  400b8e:	e8 3d fa ff ff       	callq  4005d0 <free@plt>
  400b93:	83 05 e2 14 20 00 ff 	addl   $0xffffffff,0x2014e2(%rip)        # 60207c <n>
  400b9a:	49 89 dc             	mov    %rbx,%r12
  400b9d:	83 3d dc 14 20 00 00 	cmpl   $0x0,0x2014dc(%rip)        # 602080 <m>
  400ba4:	75 11                	jne    400bb7 <main+0x277>
  400ba6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400bab:	bf 99 0e 40 00       	mov    $0x400e99,%edi
  400bb0:	31 c0                	xor    %eax,%eax
  400bb2:	e8 39 fa ff ff       	callq  4005f0 <printf@plt>
  400bb7:	48 8b 35 a2 14 20 00 	mov    0x2014a2(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400bbe:	bf 0a 00 00 00       	mov    $0xa,%edi
  400bc3:	e8 38 fa ff ff       	callq  400600 <_IO_putc@plt>
  400bc8:	4d 85 e4             	test   %r12,%r12
  400bcb:	0f 84 5f 01 00 00    	je     400d30 <main+0x3f0>
  400bd1:	8b 35 a5 14 20 00    	mov    0x2014a5(%rip),%esi        # 60207c <n>
  400bd7:	bf 10 0e 40 00       	mov    $0x400e10,%edi
  400bdc:	31 c0                	xor    %eax,%eax
  400bde:	e8 0d fa ff ff       	callq  4005f0 <printf@plt>
  400be3:	4c 89 e3             	mov    %r12,%rbx
  400be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bed:	00 00 00 
  400bf0:	48 8b 33             	mov    (%rbx),%rsi
  400bf3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400bf8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400bfc:	bf 2b 0e 40 00       	mov    $0x400e2b,%edi
  400c01:	b0 01                	mov    $0x1,%al
  400c03:	e8 e8 f9 ff ff       	callq  4005f0 <printf@plt>
  400c08:	48 8b 35 51 14 20 00 	mov    0x201451(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400c0f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400c14:	e8 e7 f9 ff ff       	callq  400600 <_IO_putc@plt>
  400c19:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400c1d:	48 85 db             	test   %rbx,%rbx
  400c20:	75 ce                	jne    400bf0 <main+0x2b0>
  400c22:	e9 29 01 00 00       	jmpq   400d50 <main+0x410>
  400c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400c2e:	00 00 
  400c30:	48 89 f8             	mov    %rdi,%rax
  400c33:	48 8b 78 10          	mov    0x10(%rax),%rdi
  400c37:	48 85 ff             	test   %rdi,%rdi
  400c3a:	0f 84 28 fe ff ff    	je     400a68 <main+0x128>
  400c40:	48 39 37             	cmp    %rsi,(%rdi)
  400c43:	75 eb                	jne    400c30 <main+0x2f0>
  400c45:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  400c49:	4c 39 e7             	cmp    %r12,%rdi
  400c4c:	0f 84 39 ff ff ff    	je     400b8b <main+0x24b>
  400c52:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400c56:	e8 75 f9 ff ff       	callq  4005d0 <free@plt>
  400c5b:	83 05 1a 14 20 00 ff 	addl   $0xffffffff,0x20141a(%rip)        # 60207c <n>
  400c62:	83 3d 17 14 20 00 00 	cmpl   $0x0,0x201417(%rip)        # 602080 <m>
  400c69:	0f 85 48 ff ff ff    	jne    400bb7 <main+0x277>
  400c6f:	e9 32 ff ff ff       	jmpq   400ba6 <main+0x266>
  400c74:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400c7b:	00 
  400c7c:	48 8b 33             	mov    (%rbx),%rsi
  400c7f:	bf 79 0e 40 00       	mov    $0x400e79,%edi
  400c84:	31 c0                	xor    %eax,%eax
  400c86:	e8 65 f9 ff ff       	callq  4005f0 <printf@plt>
  400c8b:	49 89 dc             	mov    %rbx,%r12
  400c8e:	eb 4a                	jmp    400cda <main+0x39a>
  400c90:	c7 05 e6 13 20 00 01 	movl   $0x1,0x2013e6(%rip)        # 602080 <m>
  400c97:	00 00 00 
  400c9a:	48 8b 35 bf 13 20 00 	mov    0x2013bf(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400ca1:	bf 0a 00 00 00       	mov    $0xa,%edi
  400ca6:	e8 55 f9 ff ff       	callq  400600 <_IO_putc@plt>
  400cab:	e9 80 00 00 00       	jmpq   400d30 <main+0x3f0>
  400cb0:	4c 89 e0             	mov    %r12,%rax
  400cb3:	49 89 dc             	mov    %rbx,%r12
  400cb6:	eb 06                	jmp    400cbe <main+0x37e>
  400cb8:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400cbc:	31 c0                	xor    %eax,%eax
  400cbe:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400cc2:	83 05 b3 13 20 00 01 	addl   $0x1,0x2013b3(%rip)        # 60207c <n>
  400cc9:	bf 79 0e 40 00       	mov    $0x400e79,%edi
  400cce:	31 c0                	xor    %eax,%eax
  400cd0:	e8 1b f9 ff ff       	callq  4005f0 <printf@plt>
  400cd5:	4d 85 e4             	test   %r12,%r12
  400cd8:	74 56                	je     400d30 <main+0x3f0>
  400cda:	8b 35 9c 13 20 00    	mov    0x20139c(%rip),%esi        # 60207c <n>
  400ce0:	bf 10 0e 40 00       	mov    $0x400e10,%edi
  400ce5:	31 c0                	xor    %eax,%eax
  400ce7:	e8 04 f9 ff ff       	callq  4005f0 <printf@plt>
  400cec:	4c 89 e3             	mov    %r12,%rbx
  400cef:	90                   	nop
  400cf0:	48 8b 33             	mov    (%rbx),%rsi
  400cf3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400cf8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400cfc:	bf 2b 0e 40 00       	mov    $0x400e2b,%edi
  400d01:	b0 01                	mov    $0x1,%al
  400d03:	e8 e8 f8 ff ff       	callq  4005f0 <printf@plt>
  400d08:	48 8b 35 51 13 20 00 	mov    0x201351(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400d0f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400d14:	e8 e7 f8 ff ff       	callq  400600 <_IO_putc@plt>
  400d19:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400d1d:	48 85 db             	test   %rbx,%rbx
  400d20:	75 ce                	jne    400cf0 <main+0x3b0>
  400d22:	eb 2c                	jmp    400d50 <main+0x410>
  400d24:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400d2b:	00 00 00 00 00 
  400d30:	bf 34 0e 40 00       	mov    $0x400e34,%edi
  400d35:	31 c0                	xor    %eax,%eax
  400d37:	e8 b4 f8 ff ff       	callq  4005f0 <printf@plt>
  400d3c:	48 8b 35 1d 13 20 00 	mov    0x20131d(%rip),%rsi        # 602060 <stdout@@GLIBC_2.2.5>
  400d43:	bf 0a 00 00 00       	mov    $0xa,%edi
  400d48:	e8 b3 f8 ff ff       	callq  400600 <_IO_putc@plt>
  400d4d:	45 31 e4             	xor    %r12d,%r12d
  400d50:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400d54:	85 c0                	test   %eax,%eax
  400d56:	0f 85 34 fd ff ff    	jne    400a90 <main+0x150>
  400d5c:	48 83 c4 18          	add    $0x18,%rsp
  400d60:	5b                   	pop    %rbx
  400d61:	41 5c                	pop    %r12
  400d63:	41 5e                	pop    %r14
  400d65:	41 5f                	pop    %r15
  400d67:	c3                   	retq   
  400d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d6f:	00 

0000000000400d70 <__libc_csu_init>:
  400d70:	41 57                	push   %r15
  400d72:	41 56                	push   %r14
  400d74:	49 89 d7             	mov    %rdx,%r15
  400d77:	41 55                	push   %r13
  400d79:	41 54                	push   %r12
  400d7b:	4c 8d 25 7e 10 20 00 	lea    0x20107e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400d82:	55                   	push   %rbp
  400d83:	48 8d 2d 7e 10 20 00 	lea    0x20107e(%rip),%rbp        # 601e08 <__init_array_end>
  400d8a:	53                   	push   %rbx
  400d8b:	41 89 fd             	mov    %edi,%r13d
  400d8e:	49 89 f6             	mov    %rsi,%r14
  400d91:	4c 29 e5             	sub    %r12,%rbp
  400d94:	48 83 ec 08          	sub    $0x8,%rsp
  400d98:	48 c1 fd 03          	sar    $0x3,%rbp
  400d9c:	e8 07 f8 ff ff       	callq  4005a8 <_init>
  400da1:	48 85 ed             	test   %rbp,%rbp
  400da4:	74 20                	je     400dc6 <__libc_csu_init+0x56>
  400da6:	31 db                	xor    %ebx,%ebx
  400da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400daf:	00 
  400db0:	4c 89 fa             	mov    %r15,%rdx
  400db3:	4c 89 f6             	mov    %r14,%rsi
  400db6:	44 89 ef             	mov    %r13d,%edi
  400db9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400dbd:	48 83 c3 01          	add    $0x1,%rbx
  400dc1:	48 39 dd             	cmp    %rbx,%rbp
  400dc4:	75 ea                	jne    400db0 <__libc_csu_init+0x40>
  400dc6:	48 83 c4 08          	add    $0x8,%rsp
  400dca:	5b                   	pop    %rbx
  400dcb:	5d                   	pop    %rbp
  400dcc:	41 5c                	pop    %r12
  400dce:	41 5d                	pop    %r13
  400dd0:	41 5e                	pop    %r14
  400dd2:	41 5f                	pop    %r15
  400dd4:	c3                   	retq   
  400dd5:	90                   	nop
  400dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ddd:	00 00 00 

0000000000400de0 <__libc_csu_fini>:
  400de0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400de4 <_fini>:
  400de4:	48 83 ec 08          	sub    $0x8,%rsp
  400de8:	48 83 c4 08          	add    $0x8,%rsp
  400dec:	c3                   	retq   
