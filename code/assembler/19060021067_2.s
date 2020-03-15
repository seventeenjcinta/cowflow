
c/19060021067_2.elf:     file format elf64-x86-64


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

0000000000400540 <puts@plt>:
  400540:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400546:	68 00 00 00 00       	pushq  $0x0
  40054b:	e9 e0 ff ff ff       	jmpq   400530 <.plt>

0000000000400550 <printf@plt>:
  400550:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602020 <printf@GLIBC_2.2.5>
  400556:	68 01 00 00 00       	pushq  $0x1
  40055b:	e9 d0 ff ff ff       	jmpq   400530 <.plt>

0000000000400560 <malloc@plt>:
  400560:	ff 25 c2 1a 20 00    	jmpq   *0x201ac2(%rip)        # 602028 <malloc@GLIBC_2.2.5>
  400566:	68 02 00 00 00       	pushq  $0x2
  40056b:	e9 c0 ff ff ff       	jmpq   400530 <.plt>

0000000000400570 <_IO_getc@plt>:
  400570:	ff 25 ba 1a 20 00    	jmpq   *0x201aba(%rip)        # 602030 <_IO_getc@GLIBC_2.2.5>
  400576:	68 03 00 00 00       	pushq  $0x3
  40057b:	e9 b0 ff ff ff       	jmpq   400530 <.plt>

0000000000400580 <__isoc99_scanf@plt>:
  400580:	ff 25 b2 1a 20 00    	jmpq   *0x201ab2(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400586:	68 04 00 00 00       	pushq  $0x4
  40058b:	e9 a0 ff ff ff       	jmpq   400530 <.plt>

Disassembly of section .text:

0000000000400590 <_start>:
  400590:	31 ed                	xor    %ebp,%ebp
  400592:	49 89 d1             	mov    %rdx,%r9
  400595:	5e                   	pop    %rsi
  400596:	48 89 e2             	mov    %rsp,%rdx
  400599:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40059d:	50                   	push   %rax
  40059e:	54                   	push   %rsp
  40059f:	49 c7 c0 00 0c 40 00 	mov    $0x400c00,%r8
  4005a6:	48 c7 c1 90 0b 40 00 	mov    $0x400b90,%rcx
  4005ad:	48 c7 c7 80 06 40 00 	mov    $0x400680,%rdi
  4005b4:	ff 15 36 1a 20 00    	callq  *0x201a36(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005ba:	f4                   	hlt    
  4005bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005c0 <_dl_relocate_static_pie>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005c9:	00 00 00 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <deregister_tm_clones>:
  4005d0:	55                   	push   %rbp
  4005d1:	b8 50 20 60 00       	mov    $0x602050,%eax
  4005d6:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  4005dc:	48 89 e5             	mov    %rsp,%rbp
  4005df:	74 17                	je     4005f8 <deregister_tm_clones+0x28>
  4005e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e6:	48 85 c0             	test   %rax,%rax
  4005e9:	74 0d                	je     4005f8 <deregister_tm_clones+0x28>
  4005eb:	5d                   	pop    %rbp
  4005ec:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005f1:	ff e0                	jmpq   *%rax
  4005f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005f8:	5d                   	pop    %rbp
  4005f9:	c3                   	retq   
  4005fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400600 <register_tm_clones>:
  400600:	be 50 20 60 00       	mov    $0x602050,%esi
  400605:	55                   	push   %rbp
  400606:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  40060d:	48 89 e5             	mov    %rsp,%rbp
  400610:	48 c1 fe 03          	sar    $0x3,%rsi
  400614:	48 89 f0             	mov    %rsi,%rax
  400617:	48 c1 e8 3f          	shr    $0x3f,%rax
  40061b:	48 01 c6             	add    %rax,%rsi
  40061e:	48 d1 fe             	sar    %rsi
  400621:	74 15                	je     400638 <register_tm_clones+0x38>
  400623:	b8 00 00 00 00       	mov    $0x0,%eax
  400628:	48 85 c0             	test   %rax,%rax
  40062b:	74 0b                	je     400638 <register_tm_clones+0x38>
  40062d:	5d                   	pop    %rbp
  40062e:	bf 50 20 60 00       	mov    $0x602050,%edi
  400633:	ff e0                	jmpq   *%rax
  400635:	0f 1f 00             	nopl   (%rax)
  400638:	5d                   	pop    %rbp
  400639:	c3                   	retq   
  40063a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400640 <__do_global_dtors_aux>:
  400640:	80 3d 11 1a 20 00 00 	cmpb   $0x0,0x201a11(%rip)        # 602058 <completed.7698>
  400647:	75 17                	jne    400660 <__do_global_dtors_aux+0x20>
  400649:	55                   	push   %rbp
  40064a:	48 89 e5             	mov    %rsp,%rbp
  40064d:	e8 7e ff ff ff       	callq  4005d0 <deregister_tm_clones>
  400652:	c6 05 ff 19 20 00 01 	movb   $0x1,0x2019ff(%rip)        # 602058 <completed.7698>
  400659:	5d                   	pop    %rbp
  40065a:	c3                   	retq   
  40065b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400660:	f3 c3                	repz retq 
  400662:	0f 1f 40 00          	nopl   0x0(%rax)
  400666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40066d:	00 00 00 

0000000000400670 <frame_dummy>:
  400670:	55                   	push   %rbp
  400671:	48 89 e5             	mov    %rsp,%rbp
  400674:	5d                   	pop    %rbp
  400675:	eb 89                	jmp    400600 <register_tm_clones>
  400677:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40067e:	00 00 

0000000000400680 <main>:
  400680:	41 57                	push   %r15
  400682:	41 56                	push   %r14
  400684:	41 54                	push   %r12
  400686:	53                   	push   %rbx
  400687:	48 83 ec 18          	sub    $0x18,%rsp
  40068b:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  400690:	e8 ab fe ff ff       	callq  400540 <puts@plt>
  400695:	bf c0 0c 40 00       	mov    $0x400cc0,%edi
  40069a:	e8 a1 fe ff ff       	callq  400540 <puts@plt>
  40069f:	c7 05 b3 19 20 00 00 	movl   $0x0,0x2019b3(%rip)        # 60205c <n>
  4006a6:	00 00 00 
  4006a9:	bf 18 00 00 00       	mov    $0x18,%edi
  4006ae:	e8 ad fe ff ff       	callq  400560 <malloc@plt>
  4006b3:	49 89 c6             	mov    %rax,%r14
  4006b6:	49 8d 56 08          	lea    0x8(%r14),%rdx
  4006ba:	45 31 ff             	xor    %r15d,%r15d
  4006bd:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  4006c2:	31 c0                	xor    %eax,%eax
  4006c4:	4c 89 f6             	mov    %r14,%rsi
  4006c7:	e8 b4 fe ff ff       	callq  400580 <__isoc99_scanf@plt>
  4006cc:	49 83 3e 00          	cmpq   $0x0,(%r14)
  4006d0:	74 62                	je     400734 <main+0xb4>
  4006d2:	4c 89 f0             	mov    %r14,%rax
  4006d5:	4c 89 f3             	mov    %r14,%rbx
  4006d8:	45 31 ff             	xor    %r15d,%r15d
  4006db:	31 c9                	xor    %ecx,%ecx
  4006dd:	0f 1f 00             	nopl   (%rax)
  4006e0:	49 89 de             	mov    %rbx,%r14
  4006e3:	8b 15 73 19 20 00    	mov    0x201973(%rip),%edx        # 60205c <n>
  4006e9:	8d 72 01             	lea    0x1(%rdx),%esi
  4006ec:	89 35 6a 19 20 00    	mov    %esi,0x20196a(%rip)        # 60205c <n>
  4006f2:	4d 89 f4             	mov    %r14,%r12
  4006f5:	85 d2                	test   %edx,%edx
  4006f7:	74 0a                	je     400703 <main+0x83>
  4006f9:	4c 89 70 10          	mov    %r14,0x10(%rax)
  4006fd:	4c 89 fb             	mov    %r15,%rbx
  400700:	49 89 cc             	mov    %rcx,%r12
  400703:	49 89 df             	mov    %rbx,%r15
  400706:	bf 18 00 00 00       	mov    $0x18,%edi
  40070b:	e8 50 fe ff ff       	callq  400560 <malloc@plt>
  400710:	48 89 c3             	mov    %rax,%rbx
  400713:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400717:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  40071c:	31 c0                	xor    %eax,%eax
  40071e:	48 89 de             	mov    %rbx,%rsi
  400721:	e8 5a fe ff ff       	callq  400580 <__isoc99_scanf@plt>
  400726:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  40072a:	4c 89 f0             	mov    %r14,%rax
  40072d:	4c 89 e1             	mov    %r12,%rcx
  400730:	75 ae                	jne    4006e0 <main+0x60>
  400732:	eb 03                	jmp    400737 <main+0xb7>
  400734:	45 31 e4             	xor    %r12d,%r12d
  400737:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
  40073e:	00 
  40073f:	31 c0                	xor    %eax,%eax
  400741:	4c 89 ff             	mov    %r15,%rdi
  400744:	e8 07 fe ff ff       	callq  400550 <printf@plt>
  400749:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  40074e:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  400753:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40075a:	84 00 00 00 00 00 
  400760:	bf e0 0c 40 00       	mov    $0x400ce0,%edi
  400765:	e8 d6 fd ff ff       	callq  400540 <puts@plt>
  40076a:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
  400771:	ff 
  400772:	bf 75 0c 40 00       	mov    $0x400c75,%edi
  400777:	e8 c4 fd ff ff       	callq  400540 <puts@plt>
  40077c:	bf 14 0c 40 00       	mov    $0x400c14,%edi
  400781:	31 c0                	xor    %eax,%eax
  400783:	4c 89 fe             	mov    %r15,%rsi
  400786:	e8 f5 fd ff ff       	callq  400580 <__isoc99_scanf@plt>
  40078b:	48 8b 3d be 18 20 00 	mov    0x2018be(%rip),%rdi        # 602050 <stdin@@GLIBC_2.2.5>
  400792:	e8 d9 fd ff ff       	callq  400570 <_IO_getc@plt>
  400797:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40079b:	83 f8 02             	cmp    $0x2,%eax
  40079e:	0f 84 8c 00 00 00    	je     400830 <main+0x1b0>
  4007a4:	83 f8 01             	cmp    $0x1,%eax
  4007a7:	0f 85 e8 01 00 00    	jne    400995 <main+0x315>
  4007ad:	bf 17 0c 40 00       	mov    $0x400c17,%edi
  4007b2:	31 c0                	xor    %eax,%eax
  4007b4:	e8 97 fd ff ff       	callq  400550 <printf@plt>
  4007b9:	bf 18 00 00 00       	mov    $0x18,%edi
  4007be:	e8 9d fd ff ff       	callq  400560 <malloc@plt>
  4007c3:	48 89 c3             	mov    %rax,%rbx
  4007c6:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  4007cb:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4007cf:	31 c0                	xor    %eax,%eax
  4007d1:	48 89 de             	mov    %rbx,%rsi
  4007d4:	e8 a7 fd ff ff       	callq  400580 <__isoc99_scanf@plt>
  4007d9:	4d 85 e4             	test   %r12,%r12
  4007dc:	0f 84 b9 00 00 00    	je     40089b <main+0x21b>
  4007e2:	48 8b 0b             	mov    (%rbx),%rcx
  4007e5:	49 3b 0c 24          	cmp    (%r12),%rcx
  4007e9:	0f 8e cd 00 00 00    	jle    4008bc <main+0x23c>
  4007ef:	4c 89 e0             	mov    %r12,%rax
  4007f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007f9:	1f 84 00 00 00 00 00 
  400800:	48 89 c6             	mov    %rax,%rsi
  400803:	48 8b 46 10          	mov    0x10(%rsi),%rax
  400807:	48 85 c0             	test   %rax,%rax
  40080a:	0f 84 bb 00 00 00    	je     4008cb <main+0x24b>
  400810:	48 89 f2             	mov    %rsi,%rdx
  400813:	48 3b 08             	cmp    (%rax),%rcx
  400816:	7f e8                	jg     400800 <main+0x180>
  400818:	48 89 f2             	mov    %rsi,%rdx
  40081b:	48 3b 08             	cmp    (%rax),%rcx
  40081e:	0f 8f a0 00 00 00    	jg     4008c4 <main+0x244>
  400824:	e9 aa 00 00 00       	jmpq   4008d3 <main+0x253>
  400829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400830:	bf 39 0c 40 00       	mov    $0x400c39,%edi
  400835:	31 c0                	xor    %eax,%eax
  400837:	e8 14 fd ff ff       	callq  400550 <printf@plt>
  40083c:	bf 4e 0c 40 00       	mov    $0x400c4e,%edi
  400841:	31 c0                	xor    %eax,%eax
  400843:	4c 89 f6             	mov    %r14,%rsi
  400846:	e8 35 fd ff ff       	callq  400580 <__isoc99_scanf@plt>
  40084b:	4d 85 e4             	test   %r12,%r12
  40084e:	74 5d                	je     4008ad <main+0x22d>
  400850:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  400855:	49 39 34 24          	cmp    %rsi,(%r12)
  400859:	4c 89 e0             	mov    %r12,%rax
  40085c:	75 12                	jne    400870 <main+0x1f0>
  40085e:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
  400863:	e9 db 00 00 00       	jmpq   400943 <main+0x2c3>
  400868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40086f:	00 
  400870:	48 89 c1             	mov    %rax,%rcx
  400873:	48 8b 41 10          	mov    0x10(%rcx),%rax
  400877:	48 85 c0             	test   %rax,%rax
  40087a:	0f 84 a8 00 00 00    	je     400928 <main+0x2a8>
  400880:	48 39 30             	cmp    %rsi,(%rax)
  400883:	75 eb                	jne    400870 <main+0x1f0>
  400885:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400889:	4c 39 e0             	cmp    %r12,%rax
  40088c:	0f 84 ae 00 00 00    	je     400940 <main+0x2c0>
  400892:	48 89 51 10          	mov    %rdx,0x10(%rcx)
  400896:	e9 a8 00 00 00       	jmpq   400943 <main+0x2c3>
  40089b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4008a2:	00 
  4008a3:	48 8b 0b             	mov    (%rbx),%rcx
  4008a6:	49 89 dc             	mov    %rbx,%r12
  4008a9:	31 c0                	xor    %eax,%eax
  4008ab:	eb 12                	jmp    4008bf <main+0x23f>
  4008ad:	bf 87 0c 40 00       	mov    $0x400c87,%edi
  4008b2:	e8 89 fc ff ff       	callq  400540 <puts@plt>
  4008b7:	45 31 e4             	xor    %r12d,%r12d
  4008ba:	eb 78                	jmp    400934 <main+0x2b4>
  4008bc:	4c 89 e0             	mov    %r12,%rax
  4008bf:	48 3b 08             	cmp    (%rax),%rcx
  4008c2:	7e 0f                	jle    4008d3 <main+0x253>
  4008c4:	48 89 c2             	mov    %rax,%rdx
  4008c7:	31 c0                	xor    %eax,%eax
  4008c9:	eb 0d                	jmp    4008d8 <main+0x258>
  4008cb:	48 89 f0             	mov    %rsi,%rax
  4008ce:	48 3b 08             	cmp    (%rax),%rcx
  4008d1:	7f f1                	jg     4008c4 <main+0x244>
  4008d3:	49 39 c4             	cmp    %rax,%r12
  4008d6:	74 4b                	je     400923 <main+0x2a3>
  4008d8:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4008dc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4008e0:	83 05 75 17 20 00 01 	addl   $0x1,0x201775(%rip)        # 60205c <n>
  4008e7:	bf 7e 0c 40 00       	mov    $0x400c7e,%edi
  4008ec:	e8 4f fc ff ff       	callq  400540 <puts@plt>
  4008f1:	4c 89 e3             	mov    %r12,%rbx
  4008f4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008fb:	00 00 00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 38 fc ff ff       	callq  400550 <printf@plt>
  400918:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091c:	48 85 db             	test   %rbx,%rbx
  40091f:	75 df                	jne    400900 <main+0x280>
  400921:	eb 6e                	jmp    400991 <main+0x311>
  400923:	49 89 dc             	mov    %rbx,%r12
  400926:	eb b4                	jmp    4008dc <main+0x25c>
  400928:	bf 5d 0c 40 00       	mov    $0x400c5d,%edi
  40092d:	31 c0                	xor    %eax,%eax
  40092f:	e8 1c fc ff ff       	callq  400550 <printf@plt>
  400934:	8b 05 22 17 20 00    	mov    0x201722(%rip),%eax        # 60205c <n>
  40093a:	85 c0                	test   %eax,%eax
  40093c:	75 24                	jne    400962 <main+0x2e2>
  40093e:	eb 51                	jmp    400991 <main+0x311>
  400940:	49 89 d4             	mov    %rdx,%r12
  400943:	bf 52 0c 40 00       	mov    $0x400c52,%edi
  400948:	31 c0                	xor    %eax,%eax
  40094a:	e8 01 fc ff ff       	callq  400550 <printf@plt>
  40094f:	8b 05 07 17 20 00    	mov    0x201707(%rip),%eax        # 60205c <n>
  400955:	83 c0 ff             	add    $0xffffffff,%eax
  400958:	89 05 fe 16 20 00    	mov    %eax,0x2016fe(%rip)        # 60205c <n>
  40095e:	85 c0                	test   %eax,%eax
  400960:	74 2f                	je     400991 <main+0x311>
  400962:	bf 7e 0c 40 00       	mov    $0x400c7e,%edi
  400967:	e8 d4 fb ff ff       	callq  400540 <puts@plt>
  40096c:	4c 89 e3             	mov    %r12,%rbx
  40096f:	90                   	nop
  400970:	48 8b 33             	mov    (%rbx),%rsi
  400973:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400978:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40097c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400981:	b0 01                	mov    $0x1,%al
  400983:	e8 c8 fb ff ff       	callq  400550 <printf@plt>
  400988:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40098c:	48 85 db             	test   %rbx,%rbx
  40098f:	75 df                	jne    400970 <main+0x2f0>
  400991:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400995:	85 c0                	test   %eax,%eax
  400997:	0f 85 c3 fd ff ff    	jne    400760 <main+0xe0>
  40099d:	48 83 c4 18          	add    $0x18,%rsp
  4009a1:	5b                   	pop    %rbx
  4009a2:	41 5c                	pop    %r12
  4009a4:	41 5e                	pop    %r14
  4009a6:	41 5f                	pop    %r15
  4009a8:	c3                   	retq   
  4009a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004009b0 <insert>:
  4009b0:	48 85 ff             	test   %rdi,%rdi
  4009b3:	74 29                	je     4009de <insert+0x2e>
  4009b5:	48 8b 06             	mov    (%rsi),%rax
  4009b8:	48 3b 07             	cmp    (%rdi),%rax
  4009bb:	7e 33                	jle    4009f0 <insert+0x40>
  4009bd:	48 89 fa             	mov    %rdi,%rdx
  4009c0:	48 89 d1             	mov    %rdx,%rcx
  4009c3:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4009c7:	48 85 d2             	test   %rdx,%rdx
  4009ca:	74 33                	je     4009ff <insert+0x4f>
  4009cc:	49 89 c8             	mov    %rcx,%r8
  4009cf:	48 3b 02             	cmp    (%rdx),%rax
  4009d2:	7f ec                	jg     4009c0 <insert+0x10>
  4009d4:	49 89 c8             	mov    %rcx,%r8
  4009d7:	48 3b 02             	cmp    (%rdx),%rax
  4009da:	7f 1c                	jg     4009f8 <insert+0x48>
  4009dc:	eb 29                	jmp    400a07 <insert+0x57>
  4009de:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4009e5:	00 
  4009e6:	48 8b 06             	mov    (%rsi),%rax
  4009e9:	31 d2                	xor    %edx,%edx
  4009eb:	48 89 f7             	mov    %rsi,%rdi
  4009ee:	eb 03                	jmp    4009f3 <insert+0x43>
  4009f0:	48 89 fa             	mov    %rdi,%rdx
  4009f3:	48 3b 02             	cmp    (%rdx),%rax
  4009f6:	7e 0f                	jle    400a07 <insert+0x57>
  4009f8:	49 89 d0             	mov    %rdx,%r8
  4009fb:	31 d2                	xor    %edx,%edx
  4009fd:	eb 10                	jmp    400a0f <insert+0x5f>
  4009ff:	48 89 ca             	mov    %rcx,%rdx
  400a02:	48 3b 02             	cmp    (%rdx),%rax
  400a05:	7f f1                	jg     4009f8 <insert+0x48>
  400a07:	48 89 f0             	mov    %rsi,%rax
  400a0a:	48 39 d7             	cmp    %rdx,%rdi
  400a0d:	74 07                	je     400a16 <insert+0x66>
  400a0f:	49 89 70 10          	mov    %rsi,0x10(%r8)
  400a13:	48 89 f8             	mov    %rdi,%rax
  400a16:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  400a1a:	83 05 3b 16 20 00 01 	addl   $0x1,0x20163b(%rip)        # 60205c <n>
  400a21:	c3                   	retq   
  400a22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a29:	1f 84 00 00 00 00 00 

0000000000400a30 <print>:
  400a30:	53                   	push   %rbx
  400a31:	48 89 fb             	mov    %rdi,%rbx
  400a34:	bf 7e 0c 40 00       	mov    $0x400c7e,%edi
  400a39:	e8 02 fb ff ff       	callq  400540 <puts@plt>
  400a3e:	66 90                	xchg   %ax,%ax
  400a40:	48 8b 33             	mov    (%rbx),%rsi
  400a43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a4c:	bf 6a 0c 40 00       	mov    $0x400c6a,%edi
  400a51:	b0 01                	mov    $0x1,%al
  400a53:	e8 f8 fa ff ff       	callq  400550 <printf@plt>
  400a58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a5c:	48 85 db             	test   %rbx,%rbx
  400a5f:	75 df                	jne    400a40 <print+0x10>
  400a61:	5b                   	pop    %rbx
  400a62:	c3                   	retq   
  400a63:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a6a:	84 00 00 00 00 00 

0000000000400a70 <del>:
  400a70:	53                   	push   %rbx
  400a71:	48 89 fb             	mov    %rdi,%rbx
  400a74:	48 85 db             	test   %rbx,%rbx
  400a77:	74 0b                	je     400a84 <del+0x14>
  400a79:	48 39 33             	cmp    %rsi,(%rbx)
  400a7c:	75 14                	jne    400a92 <del+0x22>
  400a7e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a82:	eb 4d                	jmp    400ad1 <del+0x61>
  400a84:	bf 87 0c 40 00       	mov    $0x400c87,%edi
  400a89:	e8 b2 fa ff ff       	callq  400540 <puts@plt>
  400a8e:	31 db                	xor    %ebx,%ebx
  400a90:	eb 52                	jmp    400ae4 <del+0x74>
  400a92:	48 89 d9             	mov    %rbx,%rcx
  400a95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a9c:	00 00 00 00 
  400aa0:	48 89 c8             	mov    %rcx,%rax
  400aa3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400aa7:	48 85 c9             	test   %rcx,%rcx
  400aaa:	74 14                	je     400ac0 <del+0x50>
  400aac:	48 39 31             	cmp    %rsi,(%rcx)
  400aaf:	75 ef                	jne    400aa0 <del+0x30>
  400ab1:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400ab5:	48 39 d9             	cmp    %rbx,%rcx
  400ab8:	74 14                	je     400ace <del+0x5e>
  400aba:	48 89 50 10          	mov    %rdx,0x10(%rax)
  400abe:	eb 11                	jmp    400ad1 <del+0x61>
  400ac0:	bf 5d 0c 40 00       	mov    $0x400c5d,%edi
  400ac5:	31 c0                	xor    %eax,%eax
  400ac7:	e8 84 fa ff ff       	callq  400550 <printf@plt>
  400acc:	eb 16                	jmp    400ae4 <del+0x74>
  400ace:	48 89 d3             	mov    %rdx,%rbx
  400ad1:	bf 52 0c 40 00       	mov    $0x400c52,%edi
  400ad6:	31 c0                	xor    %eax,%eax
  400ad8:	e8 73 fa ff ff       	callq  400550 <printf@plt>
  400add:	83 05 78 15 20 00 ff 	addl   $0xffffffff,0x201578(%rip)        # 60205c <n>
  400ae4:	48 89 d8             	mov    %rbx,%rax
  400ae7:	5b                   	pop    %rbx
  400ae8:	c3                   	retq   
  400ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400af0 <creat>:
  400af0:	41 57                	push   %r15
  400af2:	41 56                	push   %r14
  400af4:	53                   	push   %rbx
  400af5:	c7 05 5d 15 20 00 00 	movl   $0x0,0x20155d(%rip)        # 60205c <n>
  400afc:	00 00 00 
  400aff:	bf 18 00 00 00       	mov    $0x18,%edi
  400b04:	e8 57 fa ff ff       	callq  400560 <malloc@plt>
  400b09:	49 89 c7             	mov    %rax,%r15
  400b0c:	49 8d 57 08          	lea    0x8(%r15),%rdx
  400b10:	45 31 f6             	xor    %r14d,%r14d
  400b13:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  400b18:	31 c0                	xor    %eax,%eax
  400b1a:	4c 89 fe             	mov    %r15,%rsi
  400b1d:	e8 5e fa ff ff       	callq  400580 <__isoc99_scanf@plt>
  400b22:	49 83 3f 00          	cmpq   $0x0,(%r15)
  400b26:	74 54                	je     400b7c <creat+0x8c>
  400b28:	4c 89 f8             	mov    %r15,%rax
  400b2b:	4c 89 fb             	mov    %r15,%rbx
  400b2e:	31 c9                	xor    %ecx,%ecx
  400b30:	49 89 df             	mov    %rbx,%r15
  400b33:	8b 15 23 15 20 00    	mov    0x201523(%rip),%edx        # 60205c <n>
  400b39:	8d 72 01             	lea    0x1(%rdx),%esi
  400b3c:	89 35 1a 15 20 00    	mov    %esi,0x20151a(%rip)        # 60205c <n>
  400b42:	4d 89 fe             	mov    %r15,%r14
  400b45:	85 d2                	test   %edx,%edx
  400b47:	74 07                	je     400b50 <creat+0x60>
  400b49:	4c 89 78 10          	mov    %r15,0x10(%rax)
  400b4d:	49 89 ce             	mov    %rcx,%r14
  400b50:	bf 18 00 00 00       	mov    $0x18,%edi
  400b55:	e8 06 fa ff ff       	callq  400560 <malloc@plt>
  400b5a:	48 89 c3             	mov    %rax,%rbx
  400b5d:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400b61:	bf 32 0c 40 00       	mov    $0x400c32,%edi
  400b66:	31 c0                	xor    %eax,%eax
  400b68:	48 89 de             	mov    %rbx,%rsi
  400b6b:	e8 10 fa ff ff       	callq  400580 <__isoc99_scanf@plt>
  400b70:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  400b74:	4c 89 f8             	mov    %r15,%rax
  400b77:	4c 89 f1             	mov    %r14,%rcx
  400b7a:	75 b4                	jne    400b30 <creat+0x40>
  400b7c:	49 c7 47 10 00 00 00 	movq   $0x0,0x10(%r15)
  400b83:	00 
  400b84:	4c 89 f0             	mov    %r14,%rax
  400b87:	5b                   	pop    %rbx
  400b88:	41 5e                	pop    %r14
  400b8a:	41 5f                	pop    %r15
  400b8c:	c3                   	retq   
  400b8d:	0f 1f 00             	nopl   (%rax)

0000000000400b90 <__libc_csu_init>:
  400b90:	41 57                	push   %r15
  400b92:	41 56                	push   %r14
  400b94:	49 89 d7             	mov    %rdx,%r15
  400b97:	41 55                	push   %r13
  400b99:	41 54                	push   %r12
  400b9b:	4c 8d 25 5e 12 20 00 	lea    0x20125e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ba2:	55                   	push   %rbp
  400ba3:	48 8d 2d 5e 12 20 00 	lea    0x20125e(%rip),%rbp        # 601e08 <__init_array_end>
  400baa:	53                   	push   %rbx
  400bab:	41 89 fd             	mov    %edi,%r13d
  400bae:	49 89 f6             	mov    %rsi,%r14
  400bb1:	4c 29 e5             	sub    %r12,%rbp
  400bb4:	48 83 ec 08          	sub    $0x8,%rsp
  400bb8:	48 c1 fd 03          	sar    $0x3,%rbp
  400bbc:	e8 57 f9 ff ff       	callq  400518 <_init>
  400bc1:	48 85 ed             	test   %rbp,%rbp
  400bc4:	74 20                	je     400be6 <__libc_csu_init+0x56>
  400bc6:	31 db                	xor    %ebx,%ebx
  400bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bcf:	00 
  400bd0:	4c 89 fa             	mov    %r15,%rdx
  400bd3:	4c 89 f6             	mov    %r14,%rsi
  400bd6:	44 89 ef             	mov    %r13d,%edi
  400bd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400bdd:	48 83 c3 01          	add    $0x1,%rbx
  400be1:	48 39 dd             	cmp    %rbx,%rbp
  400be4:	75 ea                	jne    400bd0 <__libc_csu_init+0x40>
  400be6:	48 83 c4 08          	add    $0x8,%rsp
  400bea:	5b                   	pop    %rbx
  400beb:	5d                   	pop    %rbp
  400bec:	41 5c                	pop    %r12
  400bee:	41 5d                	pop    %r13
  400bf0:	41 5e                	pop    %r14
  400bf2:	41 5f                	pop    %r15
  400bf4:	c3                   	retq   
  400bf5:	90                   	nop
  400bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bfd:	00 00 00 

0000000000400c00 <__libc_csu_fini>:
  400c00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c04 <_fini>:
  400c04:	48 83 ec 08          	sub    $0x8,%rsp
  400c08:	48 83 c4 08          	add    $0x8,%rsp
  400c0c:	c3                   	retq   
