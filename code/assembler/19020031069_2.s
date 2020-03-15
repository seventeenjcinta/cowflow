
c/19020031069_2.elf:     file format elf64-x86-64


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
  40053f:	49 c7 c0 50 0c 40 00 	mov    $0x400c50,%r8
  400546:	48 c7 c1 e0 0b 40 00 	mov    $0x400be0,%rcx
  40054d:	48 c7 c7 90 08 40 00 	mov    $0x400890,%rdi
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
  400628:	48 39 0f             	cmp    %rcx,(%rdi)
  40062b:	7d 26                	jge    400653 <insert+0x33>
  40062d:	48 89 f8             	mov    %rdi,%rax
  400630:	48 89 c2             	mov    %rax,%rdx
  400633:	48 8b 42 10          	mov    0x10(%rdx),%rax
  400637:	48 85 c0             	test   %rax,%rax
  40063a:	74 1f                	je     40065b <insert+0x3b>
  40063c:	48 39 08             	cmp    %rcx,(%rax)
  40063f:	7c ef                	jl     400630 <insert+0x10>
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
  400665:	83 05 e8 19 20 00 01 	addl   $0x1,0x2019e8(%rip)        # 602054 <n>
  40066c:	48 89 f8             	mov    %rdi,%rax
  40066f:	c3                   	retq   

0000000000400670 <create>:
  400670:	41 56                	push   %r14
  400672:	53                   	push   %rbx
  400673:	50                   	push   %rax
  400674:	bf 18 00 00 00       	mov    $0x18,%edi
  400679:	e8 92 fe ff ff       	callq  400510 <malloc@plt>
  40067e:	48 89 c3             	mov    %rax,%rbx
  400681:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400685:	45 31 f6             	xor    %r14d,%r14d
  400688:	bf 68 0c 40 00       	mov    $0x400c68,%edi
  40068d:	31 c0                	xor    %eax,%eax
  40068f:	48 89 de             	mov    %rbx,%rsi
  400692:	e8 89 fe ff ff       	callq  400520 <__isoc99_scanf@plt>
  400697:	48 8b 03             	mov    (%rbx),%rax
  40069a:	48 85 c0             	test   %rax,%rax
  40069d:	0f 84 b4 00 00 00    	je     400757 <create+0xe7>
  4006a3:	45 31 f6             	xor    %r14d,%r14d
  4006a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006ad:	00 00 00 
  4006b0:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  4006b5:	0f 2e 04 25 64 0c 40 	ucomiss 0x400c64,%xmm0
  4006bc:	00 
  4006bd:	75 06                	jne    4006c5 <create+0x55>
  4006bf:	0f 8b 92 00 00 00    	jnp    400757 <create+0xe7>
  4006c5:	4d 85 f6             	test   %r14,%r14
  4006c8:	74 36                	je     400700 <create+0x90>
  4006ca:	49 39 06             	cmp    %rax,(%r14)
  4006cd:	4c 89 f1             	mov    %r14,%rcx
  4006d0:	7d 3e                	jge    400710 <create+0xa0>
  4006d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006d9:	1f 84 00 00 00 00 00 
  4006e0:	48 89 ca             	mov    %rcx,%rdx
  4006e3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4006e7:	48 85 c9             	test   %rcx,%rcx
  4006ea:	74 2c                	je     400718 <create+0xa8>
  4006ec:	48 39 01             	cmp    %rax,(%rcx)
  4006ef:	7c ef                	jl     4006e0 <create+0x70>
  4006f1:	4c 39 f1             	cmp    %r14,%rcx
  4006f4:	74 1a                	je     400710 <create+0xa0>
  4006f6:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  4006fa:	eb 24                	jmp    400720 <create+0xb0>
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400700:	31 c9                	xor    %ecx,%ecx
  400702:	49 89 de             	mov    %rbx,%r14
  400705:	eb 19                	jmp    400720 <create+0xb0>
  400707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40070e:	00 00 
  400710:	4c 89 f1             	mov    %r14,%rcx
  400713:	49 89 de             	mov    %rbx,%r14
  400716:	eb 08                	jmp    400720 <create+0xb0>
  400718:	48 89 5a 10          	mov    %rbx,0x10(%rdx)
  40071c:	31 c9                	xor    %ecx,%ecx
  40071e:	66 90                	xchg   %ax,%ax
  400720:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400724:	83 05 29 19 20 00 01 	addl   $0x1,0x201929(%rip)        # 602054 <n>
  40072b:	bf 18 00 00 00       	mov    $0x18,%edi
  400730:	e8 db fd ff ff       	callq  400510 <malloc@plt>
  400735:	48 89 c3             	mov    %rax,%rbx
  400738:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40073c:	bf 68 0c 40 00       	mov    $0x400c68,%edi
  400741:	31 c0                	xor    %eax,%eax
  400743:	48 89 de             	mov    %rbx,%rsi
  400746:	e8 d5 fd ff ff       	callq  400520 <__isoc99_scanf@plt>
  40074b:	48 8b 03             	mov    (%rbx),%rax
  40074e:	48 85 c0             	test   %rax,%rax
  400751:	0f 85 59 ff ff ff    	jne    4006b0 <create+0x40>
  400757:	48 89 df             	mov    %rbx,%rdi
  40075a:	e8 81 fd ff ff       	callq  4004e0 <free@plt>
  40075f:	4c 89 f0             	mov    %r14,%rax
  400762:	48 83 c4 08          	add    $0x8,%rsp
  400766:	5b                   	pop    %rbx
  400767:	41 5e                	pop    %r14
  400769:	c3                   	retq   
  40076a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400770 <del>:
  400770:	55                   	push   %rbp
  400771:	53                   	push   %rbx
  400772:	50                   	push   %rax
  400773:	89 f5                	mov    %esi,%ebp
  400775:	48 89 fb             	mov    %rdi,%rbx
  400778:	48 85 db             	test   %rbx,%rbx
  40077b:	74 3e                	je     4007bb <del+0x4b>
  40077d:	48 63 c5             	movslq %ebp,%rax
  400780:	48 8b 0b             	mov    (%rbx),%rcx
  400783:	48 39 c1             	cmp    %rax,%rcx
  400786:	7d 41                	jge    4007c9 <del+0x59>
  400788:	48 89 df             	mov    %rbx,%rdi
  40078b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400790:	48 89 fa             	mov    %rdi,%rdx
  400793:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400797:	48 85 ff             	test   %rdi,%rdi
  40079a:	74 41                	je     4007dd <del+0x6d>
  40079c:	48 8b 0f             	mov    (%rdi),%rcx
  40079f:	48 89 d6             	mov    %rdx,%rsi
  4007a2:	48 39 c1             	cmp    %rax,%rcx
  4007a5:	7c e9                	jl     400790 <del+0x20>
  4007a7:	48 39 c1             	cmp    %rax,%rcx
  4007aa:	75 25                	jne    4007d1 <del+0x61>
  4007ac:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4007b0:	48 39 df             	cmp    %rbx,%rdi
  4007b3:	74 35                	je     4007ea <del+0x7a>
  4007b5:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4007b9:	eb 32                	jmp    4007ed <del+0x7d>
  4007bb:	bf 03 0d 40 00       	mov    $0x400d03,%edi
  4007c0:	e8 2b fd ff ff       	callq  4004f0 <puts@plt>
  4007c5:	31 db                	xor    %ebx,%ebx
  4007c7:	eb 3e                	jmp    400807 <del+0x97>
  4007c9:	48 89 df             	mov    %rbx,%rdi
  4007cc:	48 39 c1             	cmp    %rax,%rcx
  4007cf:	74 db                	je     4007ac <del+0x3c>
  4007d1:	bf fa 0c 40 00       	mov    $0x400cfa,%edi
  4007d6:	e8 15 fd ff ff       	callq  4004f0 <puts@plt>
  4007db:	eb 2a                	jmp    400807 <del+0x97>
  4007dd:	48 89 d7             	mov    %rdx,%rdi
  4007e0:	48 89 f2             	mov    %rsi,%rdx
  4007e3:	48 39 c1             	cmp    %rax,%rcx
  4007e6:	74 c4                	je     4007ac <del+0x3c>
  4007e8:	eb e7                	jmp    4007d1 <del+0x61>
  4007ea:	48 89 c3             	mov    %rax,%rbx
  4007ed:	83 05 60 18 20 00 ff 	addl   $0xffffffff,0x201860(%rip)        # 602054 <n>
  4007f4:	e8 e7 fc ff ff       	callq  4004e0 <free@plt>
  4007f9:	bf 6e 0c 40 00       	mov    $0x400c6e,%edi
  4007fe:	31 c0                	xor    %eax,%eax
  400800:	89 ee                	mov    %ebp,%esi
  400802:	e8 f9 fc ff ff       	callq  400500 <printf@plt>
  400807:	48 89 d8             	mov    %rbx,%rax
  40080a:	48 83 c4 08          	add    $0x8,%rsp
  40080e:	5b                   	pop    %rbx
  40080f:	5d                   	pop    %rbp
  400810:	c3                   	retq   
  400811:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400818:	0f 1f 84 00 00 00 00 
  40081f:	00 

0000000000400820 <put>:
  400820:	55                   	push   %rbp
  400821:	53                   	push   %rbx
  400822:	50                   	push   %rax
  400823:	48 89 fb             	mov    %rdi,%rbx
  400826:	48 85 db             	test   %rbx,%rbx
  400829:	74 1d                	je     400848 <put+0x28>
  40082b:	8b 35 23 18 20 00    	mov    0x201823(%rip),%esi        # 602054 <n>
  400831:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  400836:	31 c0                	xor    %eax,%eax
  400838:	e8 c3 fc ff ff       	callq  400500 <printf@plt>
  40083d:	83 3d 10 18 20 00 00 	cmpl   $0x0,0x201810(%rip)        # 602054 <n>
  400844:	7f 15                	jg     40085b <put+0x3b>
  400846:	eb 3f                	jmp    400887 <put+0x67>
  400848:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  40084d:	e8 9e fc ff ff       	callq  4004f0 <puts@plt>
  400852:	83 3d fb 17 20 00 00 	cmpl   $0x0,0x2017fb(%rip)        # 602054 <n>
  400859:	7e 2c                	jle    400887 <put+0x67>
  40085b:	31 ed                	xor    %ebp,%ebp
  40085d:	0f 1f 00             	nopl   (%rax)
  400860:	48 8b 33             	mov    (%rbx),%rsi
  400863:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400868:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40086c:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400871:	b0 01                	mov    $0x1,%al
  400873:	e8 88 fc ff ff       	callq  400500 <printf@plt>
  400878:	83 c5 01             	add    $0x1,%ebp
  40087b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40087f:	3b 2d cf 17 20 00    	cmp    0x2017cf(%rip),%ebp        # 602054 <n>
  400885:	7c d9                	jl     400860 <put+0x40>
  400887:	48 83 c4 08          	add    $0x8,%rsp
  40088b:	5b                   	pop    %rbx
  40088c:	5d                   	pop    %rbp
  40088d:	c3                   	retq   
  40088e:	66 90                	xchg   %ax,%ax

0000000000400890 <main>:
  400890:	55                   	push   %rbp
  400891:	41 57                	push   %r15
  400893:	41 56                	push   %r14
  400895:	41 54                	push   %r12
  400897:	53                   	push   %rbx
  400898:	48 83 ec 10          	sub    $0x10,%rsp
  40089c:	bf a0 0c 40 00       	mov    $0x400ca0,%edi
  4008a1:	31 c0                	xor    %eax,%eax
  4008a3:	e8 58 fc ff ff       	callq  400500 <printf@plt>
  4008a8:	bf 40 0d 40 00       	mov    $0x400d40,%edi
  4008ad:	e8 3e fc ff ff       	callq  4004f0 <puts@plt>
  4008b2:	e8 b9 fd ff ff       	callq  400670 <create>
  4008b7:	49 89 c4             	mov    %rax,%r12
  4008ba:	4d 85 e4             	test   %r12,%r12
  4008bd:	74 1d                	je     4008dc <main+0x4c>
  4008bf:	8b 35 8f 17 20 00    	mov    0x20178f(%rip),%esi        # 602054 <n>
  4008c5:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  4008ca:	31 c0                	xor    %eax,%eax
  4008cc:	e8 2f fc ff ff       	callq  400500 <printf@plt>
  4008d1:	83 3d 7c 17 20 00 00 	cmpl   $0x0,0x20177c(%rip)        # 602054 <n>
  4008d8:	7f 15                	jg     4008ef <main+0x5f>
  4008da:	eb 4b                	jmp    400927 <main+0x97>
  4008dc:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  4008e1:	e8 0a fc ff ff       	callq  4004f0 <puts@plt>
  4008e6:	83 3d 67 17 20 00 00 	cmpl   $0x0,0x201767(%rip)        # 602054 <n>
  4008ed:	7e 38                	jle    400927 <main+0x97>
  4008ef:	31 ed                	xor    %ebp,%ebp
  4008f1:	4c 89 e3             	mov    %r12,%rbx
  4008f4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008fb:	00 00 00 00 00 
  400900:	48 8b 33             	mov    (%rbx),%rsi
  400903:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400908:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40090c:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400911:	b0 01                	mov    $0x1,%al
  400913:	e8 e8 fb ff ff       	callq  400500 <printf@plt>
  400918:	83 c5 01             	add    $0x1,%ebp
  40091b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40091f:	3b 2d 2f 17 20 00    	cmp    0x20172f(%rip),%ebp        # 602054 <n>
  400925:	7c d9                	jl     400900 <main+0x70>
  400927:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  40092c:	4c 8d 7c 24 0c       	lea    0xc(%rsp),%r15
  400931:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400938:	0f 1f 84 00 00 00 00 
  40093f:	00 
  400940:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%rsp)
  400947:	ff 
  400948:	bf 60 0d 40 00       	mov    $0x400d60,%edi
  40094d:	e8 9e fb ff ff       	callq  4004f0 <puts@plt>
  400952:	bf b5 0c 40 00       	mov    $0x400cb5,%edi
  400957:	31 c0                	xor    %eax,%eax
  400959:	e8 a2 fb ff ff       	callq  400500 <printf@plt>
  40095e:	bf c5 0c 40 00       	mov    $0x400cc5,%edi
  400963:	31 c0                	xor    %eax,%eax
  400965:	4c 89 f6             	mov    %r14,%rsi
  400968:	e8 b3 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  40096d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400971:	83 f8 02             	cmp    $0x2,%eax
  400974:	74 7a                	je     4009f0 <main+0x160>
  400976:	83 f8 01             	cmp    $0x1,%eax
  400979:	0f 85 3d 02 00 00    	jne    400bbc <main+0x32c>
  40097f:	bf c8 0c 40 00       	mov    $0x400cc8,%edi
  400984:	31 c0                	xor    %eax,%eax
  400986:	e8 75 fb ff ff       	callq  400500 <printf@plt>
  40098b:	bf 18 00 00 00       	mov    $0x18,%edi
  400990:	e8 7b fb ff ff       	callq  400510 <malloc@plt>
  400995:	48 89 c3             	mov    %rax,%rbx
  400998:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  40099c:	bf 68 0c 40 00       	mov    $0x400c68,%edi
  4009a1:	31 c0                	xor    %eax,%eax
  4009a3:	48 89 de             	mov    %rbx,%rsi
  4009a6:	e8 75 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  4009ab:	4d 85 e4             	test   %r12,%r12
  4009ae:	0f 84 b2 00 00 00    	je     400a66 <main+0x1d6>
  4009b4:	48 8b 13             	mov    (%rbx),%rdx
  4009b7:	49 39 14 24          	cmp    %rdx,(%r12)
  4009bb:	4c 89 e0             	mov    %r12,%rax
  4009be:	7d 1e                	jge    4009de <main+0x14e>
  4009c0:	48 89 c1             	mov    %rax,%rcx
  4009c3:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4009c7:	48 85 c0             	test   %rax,%rax
  4009ca:	0f 84 eb 00 00 00    	je     400abb <main+0x22b>
  4009d0:	48 39 10             	cmp    %rdx,(%rax)
  4009d3:	7c eb                	jl     4009c0 <main+0x130>
  4009d5:	4c 39 e0             	cmp    %r12,%rax
  4009d8:	0f 85 df 00 00 00    	jne    400abd <main+0x22d>
  4009de:	4c 89 e0             	mov    %r12,%rax
  4009e1:	e9 82 00 00 00       	jmpq   400a68 <main+0x1d8>
  4009e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009ed:	00 00 00 
  4009f0:	bf e4 0c 40 00       	mov    $0x400ce4,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 04 fb ff ff       	callq  400500 <printf@plt>
  4009fc:	bf f6 0c 40 00       	mov    $0x400cf6,%edi
  400a01:	31 c0                	xor    %eax,%eax
  400a03:	4c 89 fe             	mov    %r15,%rsi
  400a06:	e8 15 fb ff ff       	callq  400520 <__isoc99_scanf@plt>
  400a0b:	4d 85 e4             	test   %r12,%r12
  400a0e:	74 5d                	je     400a6d <main+0x1dd>
  400a10:	48 63 5c 24 0c       	movslq 0xc(%rsp),%rbx
  400a15:	49 8b 04 24          	mov    (%r12),%rax
  400a19:	48 39 d8             	cmp    %rbx,%rax
  400a1c:	7d 5e                	jge    400a7c <main+0x1ec>
  400a1e:	4c 89 e7             	mov    %r12,%rdi
  400a21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a28:	0f 1f 84 00 00 00 00 
  400a2f:	00 
  400a30:	48 89 f9             	mov    %rdi,%rcx
  400a33:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  400a37:	48 85 ff             	test   %rdi,%rdi
  400a3a:	0f 84 ed 00 00 00    	je     400b2d <main+0x29d>
  400a40:	48 8b 07             	mov    (%rdi),%rax
  400a43:	48 89 ca             	mov    %rcx,%rdx
  400a46:	48 39 d8             	cmp    %rbx,%rax
  400a49:	7c e5                	jl     400a30 <main+0x1a0>
  400a4b:	48 39 d8             	cmp    %rbx,%rax
  400a4e:	75 34                	jne    400a84 <main+0x1f4>
  400a50:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400a54:	4c 39 e7             	cmp    %r12,%rdi
  400a57:	0f 84 e4 00 00 00    	je     400b41 <main+0x2b1>
  400a5d:	48 89 41 10          	mov    %rax,0x10(%rcx)
  400a61:	e9 de 00 00 00       	jmpq   400b44 <main+0x2b4>
  400a66:	31 c0                	xor    %eax,%eax
  400a68:	49 89 dc             	mov    %rbx,%r12
  400a6b:	eb 54                	jmp    400ac1 <main+0x231>
  400a6d:	bf 03 0d 40 00       	mov    $0x400d03,%edi
  400a72:	e8 79 fa ff ff       	callq  4004f0 <puts@plt>
  400a77:	e9 f4 00 00 00       	jmpq   400b70 <main+0x2e0>
  400a7c:	4c 89 e7             	mov    %r12,%rdi
  400a7f:	48 39 d8             	cmp    %rbx,%rax
  400a82:	74 cc                	je     400a50 <main+0x1c0>
  400a84:	bf fa 0c 40 00       	mov    $0x400cfa,%edi
  400a89:	e8 62 fa ff ff       	callq  4004f0 <puts@plt>
  400a8e:	4d 85 e4             	test   %r12,%r12
  400a91:	0f 84 d9 00 00 00    	je     400b70 <main+0x2e0>
  400a97:	8b 35 b7 15 20 00    	mov    0x2015b7(%rip),%esi        # 602054 <n>
  400a9d:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  400aa2:	31 c0                	xor    %eax,%eax
  400aa4:	e8 57 fa ff ff       	callq  400500 <printf@plt>
  400aa9:	83 3d a4 15 20 00 00 	cmpl   $0x0,0x2015a4(%rip)        # 602054 <n>
  400ab0:	0f 8f d0 00 00 00    	jg     400b86 <main+0x2f6>
  400ab6:	e9 fd 00 00 00       	jmpq   400bb8 <main+0x328>
  400abb:	31 c0                	xor    %eax,%eax
  400abd:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400ac1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  400ac5:	8b 35 89 15 20 00    	mov    0x201589(%rip),%esi        # 602054 <n>
  400acb:	83 c6 01             	add    $0x1,%esi
  400ace:	89 35 80 15 20 00    	mov    %esi,0x201580(%rip)        # 602054 <n>
  400ad4:	bf 7b 0c 40 00       	mov    $0x400c7b,%edi
  400ad9:	31 c0                	xor    %eax,%eax
  400adb:	e8 20 fa ff ff       	callq  400500 <printf@plt>
  400ae0:	83 3d 6d 15 20 00 00 	cmpl   $0x0,0x20156d(%rip)        # 602054 <n>
  400ae7:	0f 8e cb 00 00 00    	jle    400bb8 <main+0x328>
  400aed:	31 db                	xor    %ebx,%ebx
  400aef:	4c 89 e5             	mov    %r12,%rbp
  400af2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400af9:	1f 84 00 00 00 00 00 
  400b00:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400b04:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400b09:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b0d:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400b12:	b0 01                	mov    $0x1,%al
  400b14:	e8 e7 f9 ff ff       	callq  400500 <printf@plt>
  400b19:	83 c3 01             	add    $0x1,%ebx
  400b1c:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400b20:	3b 1d 2e 15 20 00    	cmp    0x20152e(%rip),%ebx        # 602054 <n>
  400b26:	7c d8                	jl     400b00 <main+0x270>
  400b28:	e9 8b 00 00 00       	jmpq   400bb8 <main+0x328>
  400b2d:	48 89 cf             	mov    %rcx,%rdi
  400b30:	48 89 d1             	mov    %rdx,%rcx
  400b33:	48 39 d8             	cmp    %rbx,%rax
  400b36:	0f 84 14 ff ff ff    	je     400a50 <main+0x1c0>
  400b3c:	e9 43 ff ff ff       	jmpq   400a84 <main+0x1f4>
  400b41:	49 89 c4             	mov    %rax,%r12
  400b44:	83 05 09 15 20 00 ff 	addl   $0xffffffff,0x201509(%rip)        # 602054 <n>
  400b4b:	e8 90 f9 ff ff       	callq  4004e0 <free@plt>
  400b50:	bf 6e 0c 40 00       	mov    $0x400c6e,%edi
  400b55:	31 c0                	xor    %eax,%eax
  400b57:	89 de                	mov    %ebx,%esi
  400b59:	e8 a2 f9 ff ff       	callq  400500 <printf@plt>
  400b5e:	4d 85 e4             	test   %r12,%r12
  400b61:	0f 85 30 ff ff ff    	jne    400a97 <main+0x207>
  400b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400b6e:	00 00 
  400b70:	bf 20 0d 40 00       	mov    $0x400d20,%edi
  400b75:	e8 76 f9 ff ff       	callq  4004f0 <puts@plt>
  400b7a:	45 31 e4             	xor    %r12d,%r12d
  400b7d:	83 3d d0 14 20 00 00 	cmpl   $0x0,0x2014d0(%rip)        # 602054 <n>
  400b84:	7e 32                	jle    400bb8 <main+0x328>
  400b86:	31 db                	xor    %ebx,%ebx
  400b88:	4c 89 e5             	mov    %r12,%rbp
  400b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b90:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400b94:	f3 0f 10 45 08       	movss  0x8(%rbp),%xmm0
  400b99:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400b9d:	bf 96 0c 40 00       	mov    $0x400c96,%edi
  400ba2:	b0 01                	mov    $0x1,%al
  400ba4:	e8 57 f9 ff ff       	callq  400500 <printf@plt>
  400ba9:	83 c3 01             	add    $0x1,%ebx
  400bac:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400bb0:	3b 1d 9e 14 20 00    	cmp    0x20149e(%rip),%ebx        # 602054 <n>
  400bb6:	7c d8                	jl     400b90 <main+0x300>
  400bb8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400bbc:	85 c0                	test   %eax,%eax
  400bbe:	0f 85 7c fd ff ff    	jne    400940 <main+0xb0>
  400bc4:	31 c0                	xor    %eax,%eax
  400bc6:	48 83 c4 10          	add    $0x10,%rsp
  400bca:	5b                   	pop    %rbx
  400bcb:	41 5c                	pop    %r12
  400bcd:	41 5e                	pop    %r14
  400bcf:	41 5f                	pop    %r15
  400bd1:	5d                   	pop    %rbp
  400bd2:	c3                   	retq   
  400bd3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bda:	00 00 00 
  400bdd:	0f 1f 00             	nopl   (%rax)

0000000000400be0 <__libc_csu_init>:
  400be0:	41 57                	push   %r15
  400be2:	41 56                	push   %r14
  400be4:	49 89 d7             	mov    %rdx,%r15
  400be7:	41 55                	push   %r13
  400be9:	41 54                	push   %r12
  400beb:	4c 8d 25 0e 12 20 00 	lea    0x20120e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400bf2:	55                   	push   %rbp
  400bf3:	48 8d 2d 0e 12 20 00 	lea    0x20120e(%rip),%rbp        # 601e08 <__init_array_end>
  400bfa:	53                   	push   %rbx
  400bfb:	41 89 fd             	mov    %edi,%r13d
  400bfe:	49 89 f6             	mov    %rsi,%r14
  400c01:	4c 29 e5             	sub    %r12,%rbp
  400c04:	48 83 ec 08          	sub    $0x8,%rsp
  400c08:	48 c1 fd 03          	sar    $0x3,%rbp
  400c0c:	e8 a7 f8 ff ff       	callq  4004b8 <_init>
  400c11:	48 85 ed             	test   %rbp,%rbp
  400c14:	74 20                	je     400c36 <__libc_csu_init+0x56>
  400c16:	31 db                	xor    %ebx,%ebx
  400c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c1f:	00 
  400c20:	4c 89 fa             	mov    %r15,%rdx
  400c23:	4c 89 f6             	mov    %r14,%rsi
  400c26:	44 89 ef             	mov    %r13d,%edi
  400c29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400c2d:	48 83 c3 01          	add    $0x1,%rbx
  400c31:	48 39 dd             	cmp    %rbx,%rbp
  400c34:	75 ea                	jne    400c20 <__libc_csu_init+0x40>
  400c36:	48 83 c4 08          	add    $0x8,%rsp
  400c3a:	5b                   	pop    %rbx
  400c3b:	5d                   	pop    %rbp
  400c3c:	41 5c                	pop    %r12
  400c3e:	41 5d                	pop    %r13
  400c40:	41 5e                	pop    %r14
  400c42:	41 5f                	pop    %r15
  400c44:	c3                   	retq   
  400c45:	90                   	nop
  400c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c4d:	00 00 00 

0000000000400c50 <__libc_csu_fini>:
  400c50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400c54 <_fini>:
  400c54:	48 83 ec 08          	sub    $0x8,%rsp
  400c58:	48 83 c4 08          	add    $0x8,%rsp
  400c5c:	c3                   	retq   
