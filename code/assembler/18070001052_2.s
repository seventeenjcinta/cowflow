
c/18070001052_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b8 <_init>:
  4004b8:	48 83 ec 08          	sub    $0x8,%rsp
  4004bc:	48 8b 05 35 1b 20 00 	mov    0x201b35(%rip),%rax        # 601ff8 <__gmon_start__>
  4004c3:	48 85 c0             	test   %rax,%rax
  4004c6:	74 02                	je     4004ca <_init+0x12>
  4004c8:	ff d0                	callq  *%rax
  4004ca:	48 83 c4 08          	add    $0x8,%rsp
  4004ce:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <.plt>:
  4004d0:	ff 35 32 1b 20 00    	pushq  0x201b32(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 1b 20 00    	jmpq   *0x201b34(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <free@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <free@GLIBC_2.2.5>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <.plt>

00000000004004f0 <puts@plt>:
  4004f0:	ff 25 2a 1b 20 00    	jmpq   *0x201b2a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400500 <printf@plt>:
  400500:	ff 25 22 1b 20 00    	jmpq   *0x201b22(%rip)        # 602028 <printf@GLIBC_2.2.5>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400510 <malloc@plt>:
  400510:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400520 <__isoc99_scanf@plt>:
  400520:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602038 <__isoc99_scanf@GLIBC_2.7>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <.plt>

Disassembly of section .text:

0000000000400530 <_start>:
  400530:	31 ed                	xor    %ebp,%ebp
  400532:	49 89 d1             	mov    %rdx,%r9
  400535:	5e                   	pop    %rsi
  400536:	48 89 e2             	mov    %rsp,%rdx
  400539:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40053d:	50                   	push   %rax
  40053e:	54                   	push   %rsp
  40053f:	49 c7 c0 30 0b 40 00 	mov    $0x400b30,%r8
  400546:	48 c7 c1 c0 0a 40 00 	mov    $0x400ac0,%rcx
  40054d:	48 c7 c7 f0 07 40 00 	mov    $0x4007f0,%rdi
  400554:	ff 15 96 1a 20 00    	callq  *0x201a96(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40055a:	f4                   	hlt    
  40055b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400560 <_dl_relocate_static_pie>:
  400560:	f3 c3                	repz retq 
  400562:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400569:	00 00 00 
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <deregister_tm_clones>:
  400570:	55                   	push   %rbp
  400571:	b8 50 20 60 00       	mov    $0x602050,%eax
  400576:	48 3d 50 20 60 00    	cmp    $0x602050,%rax
  40057c:	48 89 e5             	mov    %rsp,%rbp
  40057f:	74 17                	je     400598 <deregister_tm_clones+0x28>
  400581:	b8 00 00 00 00       	mov    $0x0,%eax
  400586:	48 85 c0             	test   %rax,%rax
  400589:	74 0d                	je     400598 <deregister_tm_clones+0x28>
  40058b:	5d                   	pop    %rbp
  40058c:	bf 50 20 60 00       	mov    $0x602050,%edi
  400591:	ff e0                	jmpq   *%rax
  400593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400598:	5d                   	pop    %rbp
  400599:	c3                   	retq   
  40059a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005a0 <register_tm_clones>:
  4005a0:	be 50 20 60 00       	mov    $0x602050,%esi
  4005a5:	55                   	push   %rbp
  4005a6:	48 81 ee 50 20 60 00 	sub    $0x602050,%rsi
  4005ad:	48 89 e5             	mov    %rsp,%rbp
  4005b0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005b4:	48 89 f0             	mov    %rsi,%rax
  4005b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005bb:	48 01 c6             	add    %rax,%rsi
  4005be:	48 d1 fe             	sar    %rsi
  4005c1:	74 15                	je     4005d8 <register_tm_clones+0x38>
  4005c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c8:	48 85 c0             	test   %rax,%rax
  4005cb:	74 0b                	je     4005d8 <register_tm_clones+0x38>
  4005cd:	5d                   	pop    %rbp
  4005ce:	bf 50 20 60 00       	mov    $0x602050,%edi
  4005d3:	ff e0                	jmpq   *%rax
  4005d5:	0f 1f 00             	nopl   (%rax)
  4005d8:	5d                   	pop    %rbp
  4005d9:	c3                   	retq   
  4005da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005e0 <__do_global_dtors_aux>:
  4005e0:	80 3d 69 1a 20 00 00 	cmpb   $0x0,0x201a69(%rip)        # 602050 <__TMC_END__>
  4005e7:	75 17                	jne    400600 <__do_global_dtors_aux+0x20>
  4005e9:	55                   	push   %rbp
  4005ea:	48 89 e5             	mov    %rsp,%rbp
  4005ed:	e8 7e ff ff ff       	callq  400570 <deregister_tm_clones>
  4005f2:	c6 05 57 1a 20 00 01 	movb   $0x1,0x201a57(%rip)        # 602050 <__TMC_END__>
  4005f9:	5d                   	pop    %rbp
  4005fa:	c3                   	retq   
  4005fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400600:	f3 c3                	repz retq 
  400602:	0f 1f 40 00          	nopl   0x0(%rax)
  400606:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40060d:	00 00 00 

0000000000400610 <frame_dummy>:
  400610:	55                   	push   %rbp
  400611:	48 89 e5             	mov    %rsp,%rbp
  400614:	5d                   	pop    %rbp
  400615:	eb 89                	jmp    4005a0 <register_tm_clones>
  400617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40061e:	00 00 

0000000000400620 <insert>:
  400620:	48 85 ff             	test   %rdi,%rdi
  400623:	74 27                	je     40064c <insert+0x2c>
  400625:	48 8b 0e             	mov    (%rsi),%rcx
  400628:	48 3b 0f             	cmp    (%rdi),%rcx
  40062b:	7e 26                	jle    400653 <insert+0x33>
  40062d:	48 89 f8             	mov    %rdi,%rax
  400630:	48 89 c2             	mov    %rax,%rdx
  400633:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400637:	48 85 c0             	test   %rax,%rax
  40063a:	74 1f                	je     40065b <insert+0x3b>
  40063c:	48 3b 08             	cmp    (%rax),%rcx
  40063f:	7f ef                	jg     400630 <insert+0x10>
  400641:	48 39 f8             	cmp    %rdi,%rax
  400644:	74 0d                	je     400653 <insert+0x33>
  400646:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40064a:	eb 15                	jmp    400661 <insert+0x41>
  40064c:	31 c0                	xor    %eax,%eax
  40064e:	48 89 f7             	mov    %rsi,%rdi
  400651:	eb 0e                	jmp    400661 <insert+0x41>
  400653:	48 89 f8             	mov    %rdi,%rax
  400656:	48 89 f7             	mov    %rsi,%rdi
  400659:	eb 06                	jmp    400661 <insert+0x41>
  40065b:	48 89 72 10          	mov    %rsi,0x10(%rdx)
  40065f:	31 c0                	xor    %eax,%eax
  400661:	48 89 46 10          	mov    %rax,0x10(%rsi)
  400665:	83 05 fc 19 20 00 01 	addl   $0x1,0x2019fc(%rip)        # 602068 <count>
  40066c:	48 89 f8             	mov    %rdi,%rax
  40066f:	c3                   	retq   

0000000000400670 <create>:
  400670:	53                   	push   %rbx
  400671:	eb 1f                	jmp    400692 <create+0x22>
  400673:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40067a:	84 00 00 00 00 00 
  400680:	83 05 e1 19 20 00 01 	addl   $0x1,0x2019e1(%rip)        # 602068 <count>
  400687:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  40068b:	48 89 05 c6 19 20 00 	mov    %rax,0x2019c6(%rip)        # 602058 <create.head>
  400692:	bf 18 00 00 00       	mov    $0x18,%edi
  400697:	e8 74 fe ff ff       	callq  400510 <malloc@plt>
  40069c:	48 89 c3             	mov    %rax,%rbx
  40069f:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4006a3:	bf 44 0b 40 00       	mov    $0x400b44,%edi
  4006a8:	31 c0                	xor    %eax,%eax
  4006aa:	48 89 de             	mov    %rbx,%rsi
  4006ad:	e8 6e fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  4006b2:	48 8b 0b             	mov    (%rbx),%rcx
  4006b5:	48 85 c9             	test   %rcx,%rcx
  4006b8:	74 5c                	je     400716 <create+0xa6>
  4006ba:	48 8b 05 97 19 20 00 	mov    0x201997(%rip),%rax        # 602058 <create.head>
  4006c1:	48 85 c0             	test   %rax,%rax
  4006c4:	74 2a                	je     4006f0 <create+0x80>
  4006c6:	48 89 c2             	mov    %rax,%rdx
  4006c9:	48 3b 08             	cmp    (%rax),%rcx
  4006cc:	7e 32                	jle    400700 <create+0x90>
  4006ce:	66 90                	xchg   %ax,%ax
  4006d0:	48 89 d6             	mov    %rdx,%rsi
  4006d3:	48 8b 56 10          	mov    0x10(%rsi),%rdx
  4006d7:	48 85 d2             	test   %rdx,%rdx
  4006da:	74 2f                	je     40070b <create+0x9b>
  4006dc:	48 3b 0a             	cmp    (%rdx),%rcx
  4006df:	7f ef                	jg     4006d0 <create+0x60>
  4006e1:	48 39 c2             	cmp    %rax,%rdx
  4006e4:	74 1a                	je     400700 <create+0x90>
  4006e6:	48 89 5e 10          	mov    %rbx,0x10(%rsi)
  4006ea:	eb 94                	jmp    400680 <create+0x10>
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4006f0:	31 d2                	xor    %edx,%edx
  4006f2:	48 89 d8             	mov    %rbx,%rax
  4006f5:	eb 89                	jmp    400680 <create+0x10>
  4006f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006fe:	00 00 
  400700:	48 89 c2             	mov    %rax,%rdx
  400703:	48 89 d8             	mov    %rbx,%rax
  400706:	e9 75 ff ff ff       	jmpq   400680 <create+0x10>
  40070b:	48 89 5e 10          	mov    %rbx,0x10(%rsi)
  40070f:	31 d2                	xor    %edx,%edx
  400711:	e9 6a ff ff ff       	jmpq   400680 <create+0x10>
  400716:	48 89 df             	mov    %rbx,%rdi
  400719:	e8 c2 fd ff ff       	callq  4004e0 <free@plt>
  40071e:	48 8b 05 33 19 20 00 	mov    0x201933(%rip),%rax        # 602058 <create.head>
  400725:	5b                   	pop    %rbx
  400726:	c3                   	retq   
  400727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40072e:	00 00 

0000000000400730 <deleting>:
  400730:	53                   	push   %rbx
  400731:	48 89 fb             	mov    %rdi,%rbx
  400734:	48 85 db             	test   %rbx,%rbx
  400737:	74 0b                	je     400744 <deleting+0x14>
  400739:	48 39 33             	cmp    %rsi,(%rbx)
  40073c:	75 14                	jne    400752 <deleting+0x22>
  40073e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400742:	eb 3f                	jmp    400783 <deleting+0x53>
  400744:	bf c1 0b 40 00       	mov    $0x400bc1,%edi
  400749:	e8 a2 fd ff ff       	callq  4004f0 <puts@plt>
  40074e:	31 db                	xor    %ebx,%ebx
  400750:	eb 44                	jmp    400796 <deleting+0x66>
  400752:	48 89 d9             	mov    %rbx,%rcx
  400755:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40075c:	00 00 00 00 
  400760:	48 89 c8             	mov    %rcx,%rax
  400763:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400767:	48 85 c9             	test   %rcx,%rcx
  40076a:	74 05                	je     400771 <deleting+0x41>
  40076c:	48 39 31             	cmp    %rsi,(%rcx)
  40076f:	75 ef                	jne    400760 <deleting+0x30>
  400771:	48 85 c9             	test   %rcx,%rcx
  400774:	74 16                	je     40078c <deleting+0x5c>
  400776:	48 39 d9             	cmp    %rbx,%rcx
  400779:	74 c3                	je     40073e <deleting+0xe>
  40077b:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  40077f:	48 89 48 10          	mov    %rcx,0x10(%rax)
  400783:	83 05 de 18 20 00 ff 	addl   $0xffffffff,0x2018de(%rip)        # 602068 <count>
  40078a:	eb 0a                	jmp    400796 <deleting+0x66>
  40078c:	bf b2 0b 40 00       	mov    $0x400bb2,%edi
  400791:	e8 5a fd ff ff       	callq  4004f0 <puts@plt>
  400796:	48 89 d8             	mov    %rbx,%rax
  400799:	5b                   	pop    %rbx
  40079a:	c3                   	retq   
  40079b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004007a0 <printing>:
  4007a0:	53                   	push   %rbx
  4007a1:	48 89 fb             	mov    %rdi,%rbx
  4007a4:	48 85 db             	test   %rbx,%rbx
  4007a7:	74 36                	je     4007df <printing+0x3f>
  4007a9:	8b 35 b9 18 20 00    	mov    0x2018b9(%rip),%esi        # 602068 <count>
  4007af:	bf 4c 0b 40 00       	mov    $0x400b4c,%edi
  4007b4:	31 c0                	xor    %eax,%eax
  4007b6:	e8 45 fd ff ff       	callq  400500 <printf@plt>
  4007bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007c0:	48 8b 33             	mov    (%rbx),%rsi
  4007c3:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  4007c8:	bf 5e 0b 40 00       	mov    $0x400b5e,%edi
  4007cd:	b0 01                	mov    $0x1,%al
  4007cf:	e8 2c fd ff ff       	callq  400500 <printf@plt>
  4007d4:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4007d8:	48 85 db             	test   %rbx,%rbx
  4007db:	75 e3                	jne    4007c0 <printing+0x20>
  4007dd:	5b                   	pop    %rbx
  4007de:	c3                   	retq   
  4007df:	bf cb 0b 40 00       	mov    $0x400bcb,%edi
  4007e4:	5b                   	pop    %rbx
  4007e5:	e9 06 fd ff ff       	jmpq   4004f0 <puts@plt>
  4007ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007f0 <main>:
  4007f0:	41 57                	push   %r15
  4007f2:	41 56                	push   %r14
  4007f4:	53                   	push   %rbx
  4007f5:	48 83 ec 10          	sub    $0x10,%rsp
  4007f9:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  4007fe:	e8 ed fc ff ff       	callq  4004f0 <puts@plt>
  400803:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  400808:	e8 e3 fc ff ff       	callq  4004f0 <puts@plt>
  40080d:	e8 5e fe ff ff       	callq  400670 <create>
  400812:	48 89 c3             	mov    %rax,%rbx
  400815:	48 89 1d 44 18 20 00 	mov    %rbx,0x201844(%rip)        # 602060 <main.head>
  40081c:	48 85 db             	test   %rbx,%rbx
  40081f:	74 3e                	je     40085f <main+0x6f>
  400821:	8b 35 41 18 20 00    	mov    0x201841(%rip),%esi        # 602068 <count>
  400827:	bf 4c 0b 40 00       	mov    $0x400b4c,%edi
  40082c:	31 c0                	xor    %eax,%eax
  40082e:	e8 cd fc ff ff       	callq  400500 <printf@plt>
  400833:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40083a:	84 00 00 00 00 00 
  400840:	48 8b 33             	mov    (%rbx),%rsi
  400843:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400848:	bf 5e 0b 40 00       	mov    $0x400b5e,%edi
  40084d:	b0 01                	mov    $0x1,%al
  40084f:	e8 ac fc ff ff       	callq  400500 <printf@plt>
  400854:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400858:	48 85 db             	test   %rbx,%rbx
  40085b:	75 e3                	jne    400840 <main+0x50>
  40085d:	eb 0a                	jmp    400869 <main+0x79>
  40085f:	bf cb 0b 40 00       	mov    $0x400bcb,%edi
  400864:	e8 87 fc ff ff       	callq  4004f0 <puts@plt>
  400869:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  40086e:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400873:	eb 15                	jmp    40088a <main+0x9a>
  400875:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40087c:	00 00 00 00 
  400880:	bf cb 0b 40 00       	mov    $0x400bcb,%edi
  400885:	e8 66 fc ff ff       	callq  4004f0 <puts@plt>
  40088a:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  40088f:	e8 5c fc ff ff       	callq  4004f0 <puts@plt>
  400894:	bf 6c 0b 40 00       	mov    $0x400b6c,%edi
  400899:	31 c0                	xor    %eax,%eax
  40089b:	4c 89 fe             	mov    %r15,%rsi
  40089e:	e8 7d fc ff ff       	callq  400520 <__isoc99_scanf@plt>
  4008a3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4008a7:	83 f8 01             	cmp    $0x1,%eax
  4008aa:	74 14                	je     4008c0 <main+0xd0>
  4008ac:	83 f8 02             	cmp    $0x2,%eax
  4008af:	0f 84 8b 00 00 00    	je     400940 <main+0x150>
  4008b5:	85 c0                	test   %eax,%eax
  4008b7:	75 d1                	jne    40088a <main+0x9a>
  4008b9:	e9 f3 01 00 00       	jmpq   400ab1 <main+0x2c1>
  4008be:	66 90                	xchg   %ax,%ax
  4008c0:	bf 18 00 00 00       	mov    $0x18,%edi
  4008c5:	e8 46 fc ff ff       	callq  400510 <malloc@plt>
  4008ca:	48 89 c3             	mov    %rax,%rbx
  4008cd:	bf 6f 0b 40 00       	mov    $0x400b6f,%edi
  4008d2:	31 c0                	xor    %eax,%eax
  4008d4:	e8 27 fc ff ff       	callq  400500 <printf@plt>
  4008d9:	bf 44 0b 40 00       	mov    $0x400b44,%edi
  4008de:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  4008e2:	31 c0                	xor    %eax,%eax
  4008e4:	48 89 de             	mov    %rbx,%rsi
  4008e7:	e8 34 fc ff ff       	callq  400520 <__isoc99_scanf@plt>
  4008ec:	48 8b 05 6d 17 20 00 	mov    0x20176d(%rip),%rax        # 602060 <main.head>
  4008f3:	48 85 c0             	test   %rax,%rax
  4008f6:	0f 84 95 00 00 00    	je     400991 <main+0x1a1>
  4008fc:	48 8b 33             	mov    (%rbx),%rsi
  4008ff:	48 89 c1             	mov    %rax,%rcx
  400902:	48 3b 30             	cmp    (%rax),%rsi
  400905:	0f 8e 99 00 00 00    	jle    4009a4 <main+0x1b4>
  40090b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400910:	48 89 ca             	mov    %rcx,%rdx
  400913:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  400917:	48 85 c9             	test   %rcx,%rcx
  40091a:	0f 84 12 01 00 00    	je     400a32 <main+0x242>
  400920:	48 3b 31             	cmp    (%rcx),%rsi
  400923:	7f eb                	jg     400910 <main+0x120>
  400925:	48 39 c1             	cmp    %rax,%rcx
  400928:	74 7a                	je     4009a4 <main+0x1b4>
  40092a:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40092e:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400932:	e9 09 01 00 00       	jmpq   400a40 <main+0x250>
  400937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40093e:	00 00 
  400940:	bf 98 0b 40 00       	mov    $0x400b98,%edi
  400945:	31 c0                	xor    %eax,%eax
  400947:	e8 b4 fb ff ff       	callq  400500 <printf@plt>
  40094c:	bf ae 0b 40 00       	mov    $0x400bae,%edi
  400951:	31 c0                	xor    %eax,%eax
  400953:	4c 89 f6             	mov    %r14,%rsi
  400956:	e8 c5 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  40095b:	48 8b 1d fe 16 20 00 	mov    0x2016fe(%rip),%rbx        # 602060 <main.head>
  400962:	48 85 db             	test   %rbx,%rbx
  400965:	74 10                	je     400977 <main+0x187>
  400967:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40096c:	48 39 13             	cmp    %rdx,(%rbx)
  40096f:	75 3f                	jne    4009b0 <main+0x1c0>
  400971:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400975:	eb 70                	jmp    4009e7 <main+0x1f7>
  400977:	bf c1 0b 40 00       	mov    $0x400bc1,%edi
  40097c:	e8 6f fb ff ff       	callq  4004f0 <puts@plt>
  400981:	48 c7 05 d4 16 20 00 	movq   $0x0,0x2016d4(%rip)        # 602060 <main.head>
  400988:	00 00 00 00 
  40098c:	e9 ef fe ff ff       	jmpq   400880 <main+0x90>
  400991:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400998:	00 
  400999:	48 8b 33             	mov    (%rbx),%rsi
  40099c:	48 89 d8             	mov    %rbx,%rax
  40099f:	e9 9c 00 00 00       	jmpq   400a40 <main+0x250>
  4009a4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4009a8:	48 89 d8             	mov    %rbx,%rax
  4009ab:	e9 90 00 00 00       	jmpq   400a40 <main+0x250>
  4009b0:	48 89 d9             	mov    %rbx,%rcx
  4009b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009ba:	84 00 00 00 00 00 
  4009c0:	48 89 c8             	mov    %rcx,%rax
  4009c3:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4009c7:	48 85 c9             	test   %rcx,%rcx
  4009ca:	74 05                	je     4009d1 <main+0x1e1>
  4009cc:	48 39 11             	cmp    %rdx,(%rcx)
  4009cf:	75 ef                	jne    4009c0 <main+0x1d0>
  4009d1:	48 85 c9             	test   %rcx,%rcx
  4009d4:	0f 84 c8 00 00 00    	je     400aa2 <main+0x2b2>
  4009da:	48 39 d9             	cmp    %rbx,%rcx
  4009dd:	74 92                	je     400971 <main+0x181>
  4009df:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  4009e3:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4009e7:	83 05 7a 16 20 00 ff 	addl   $0xffffffff,0x20167a(%rip)        # 602068 <count>
  4009ee:	48 89 1d 6b 16 20 00 	mov    %rbx,0x20166b(%rip)        # 602060 <main.head>
  4009f5:	48 85 db             	test   %rbx,%rbx
  4009f8:	0f 84 82 fe ff ff    	je     400880 <main+0x90>
  4009fe:	8b 35 64 16 20 00    	mov    0x201664(%rip),%esi        # 602068 <count>
  400a04:	bf 4c 0b 40 00       	mov    $0x400b4c,%edi
  400a09:	31 c0                	xor    %eax,%eax
  400a0b:	e8 f0 fa ff ff       	callq  400500 <printf@plt>
  400a10:	48 8b 33             	mov    (%rbx),%rsi
  400a13:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400a18:	bf 5e 0b 40 00       	mov    $0x400b5e,%edi
  400a1d:	b0 01                	mov    $0x1,%al
  400a1f:	e8 dc fa ff ff       	callq  400500 <printf@plt>
  400a24:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a28:	48 85 db             	test   %rbx,%rbx
  400a2b:	75 e3                	jne    400a10 <main+0x220>
  400a2d:	e9 58 fe ff ff       	jmpq   40088a <main+0x9a>
  400a32:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  400a36:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a3d:	00 
  400a3e:	66 90                	xchg   %ax,%ax
  400a40:	83 05 21 16 20 00 01 	addl   $0x1,0x201621(%rip)        # 602068 <count>
  400a47:	48 89 05 12 16 20 00 	mov    %rax,0x201612(%rip)        # 602060 <main.head>
  400a4e:	bf 8e 0b 40 00       	mov    $0x400b8e,%edi
  400a53:	31 c0                	xor    %eax,%eax
  400a55:	e8 a6 fa ff ff       	callq  400500 <printf@plt>
  400a5a:	48 8b 1d ff 15 20 00 	mov    0x2015ff(%rip),%rbx        # 602060 <main.head>
  400a61:	48 85 db             	test   %rbx,%rbx
  400a64:	0f 84 16 fe ff ff    	je     400880 <main+0x90>
  400a6a:	8b 35 f8 15 20 00    	mov    0x2015f8(%rip),%esi        # 602068 <count>
  400a70:	bf 4c 0b 40 00       	mov    $0x400b4c,%edi
  400a75:	31 c0                	xor    %eax,%eax
  400a77:	e8 84 fa ff ff       	callq  400500 <printf@plt>
  400a7c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a80:	48 8b 33             	mov    (%rbx),%rsi
  400a83:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400a88:	bf 5e 0b 40 00       	mov    $0x400b5e,%edi
  400a8d:	b0 01                	mov    $0x1,%al
  400a8f:	e8 6c fa ff ff       	callq  400500 <printf@plt>
  400a94:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a98:	48 85 db             	test   %rbx,%rbx
  400a9b:	75 e3                	jne    400a80 <main+0x290>
  400a9d:	e9 e8 fd ff ff       	jmpq   40088a <main+0x9a>
  400aa2:	bf b2 0b 40 00       	mov    $0x400bb2,%edi
  400aa7:	e8 44 fa ff ff       	callq  4004f0 <puts@plt>
  400aac:	e9 3d ff ff ff       	jmpq   4009ee <main+0x1fe>
  400ab1:	31 c0                	xor    %eax,%eax
  400ab3:	48 83 c4 10          	add    $0x10,%rsp
  400ab7:	5b                   	pop    %rbx
  400ab8:	41 5e                	pop    %r14
  400aba:	41 5f                	pop    %r15
  400abc:	c3                   	retq   
  400abd:	0f 1f 00             	nopl   (%rax)

0000000000400ac0 <__libc_csu_init>:
  400ac0:	41 57                	push   %r15
  400ac2:	41 56                	push   %r14
  400ac4:	49 89 d7             	mov    %rdx,%r15
  400ac7:	41 55                	push   %r13
  400ac9:	41 54                	push   %r12
  400acb:	4c 8d 25 2e 13 20 00 	lea    0x20132e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400ad2:	55                   	push   %rbp
  400ad3:	48 8d 2d 2e 13 20 00 	lea    0x20132e(%rip),%rbp        # 601e08 <__init_array_end>
  400ada:	53                   	push   %rbx
  400adb:	41 89 fd             	mov    %edi,%r13d
  400ade:	49 89 f6             	mov    %rsi,%r14
  400ae1:	4c 29 e5             	sub    %r12,%rbp
  400ae4:	48 83 ec 08          	sub    $0x8,%rsp
  400ae8:	48 c1 fd 03          	sar    $0x3,%rbp
  400aec:	e8 c7 f9 ff ff       	callq  4004b8 <_init>
  400af1:	48 85 ed             	test   %rbp,%rbp
  400af4:	74 20                	je     400b16 <__libc_csu_init+0x56>
  400af6:	31 db                	xor    %ebx,%ebx
  400af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aff:	00 
  400b00:	4c 89 fa             	mov    %r15,%rdx
  400b03:	4c 89 f6             	mov    %r14,%rsi
  400b06:	44 89 ef             	mov    %r13d,%edi
  400b09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b0d:	48 83 c3 01          	add    $0x1,%rbx
  400b11:	48 39 dd             	cmp    %rbx,%rbp
  400b14:	75 ea                	jne    400b00 <__libc_csu_init+0x40>
  400b16:	48 83 c4 08          	add    $0x8,%rsp
  400b1a:	5b                   	pop    %rbx
  400b1b:	5d                   	pop    %rbp
  400b1c:	41 5c                	pop    %r12
  400b1e:	41 5d                	pop    %r13
  400b20:	41 5e                	pop    %r14
  400b22:	41 5f                	pop    %r15
  400b24:	c3                   	retq   
  400b25:	90                   	nop
  400b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b2d:	00 00 00 

0000000000400b30 <__libc_csu_fini>:
  400b30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400b34 <_fini>:
  400b34:	48 83 ec 08          	sub    $0x8,%rsp
  400b38:	48 83 c4 08          	add    $0x8,%rsp
  400b3c:	c3                   	retq   
