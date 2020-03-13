
input/19020031114_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000004004f0 <_init>:
  4004f0:	48 83 ec 08          	sub    $0x8,%rsp
  4004f4:	48 8b 05 fd 1a 20 00 	mov    0x201afd(%rip),%rax        # 601ff8 <__gmon_start__>
  4004fb:	48 85 c0             	test   %rax,%rax
  4004fe:	74 02                	je     400502 <_init+0x12>
  400500:	ff d0                	callq  *%rax
  400502:	48 83 c4 08          	add    $0x8,%rsp
  400506:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 1a 20 00    	pushq  0x201af2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 1a 20 00    	jmpq   *0x201af4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <free@plt>:
  400520:	ff 25 f2 1a 20 00    	jmpq   *0x201af2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <.plt>

0000000000400530 <putchar@plt>:
  400530:	ff 25 ea 1a 20 00    	jmpq   *0x201aea(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <.plt>

0000000000400540 <puts@plt>:
  400540:	ff 25 e2 1a 20 00    	jmpq   *0x201ae2(%rip)        # 602028 <puts@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <.plt>

0000000000400550 <printf@plt>:
  400550:	ff 25 da 1a 20 00    	jmpq   *0x201ada(%rip)        # 602030 <printf@GLIBC_2.2.5>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <.plt>

0000000000400560 <malloc@plt>:
  400560:	ff 25 d2 1a 20 00    	jmpq   *0x201ad2(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <.plt>

0000000000400570 <__isoc99_scanf@plt>:
  400570:	ff 25 ca 1a 20 00    	jmpq   *0x201aca(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  400576:	68 05 00 00 00       	pushq  $0x5
  40057b:	e9 90 ff ff ff       	jmpq   400510 <.plt>

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	31 ed                	xor    %ebp,%ebp
  400582:	49 89 d1             	mov    %rdx,%r9
  400585:	5e                   	pop    %rsi
  400586:	48 89 e2             	mov    %rsp,%rdx
  400589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40058d:	50                   	push   %rax
  40058e:	54                   	push   %rsp
  40058f:	49 c7 c0 c0 0b 40 00 	mov    $0x400bc0,%r8
  400596:	48 c7 c1 50 0b 40 00 	mov    $0x400b50,%rcx
  40059d:	48 c7 c7 00 09 40 00 	mov    $0x400900,%rdi
  4005a4:	ff 15 46 1a 20 00    	callq  *0x201a46(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4005aa:	f4                   	hlt    
  4005ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004005b0 <_dl_relocate_static_pie>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	00 00 00 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <deregister_tm_clones>:
  4005c0:	55                   	push   %rbp
  4005c1:	b8 58 20 60 00       	mov    $0x602058,%eax
  4005c6:	48 3d 58 20 60 00    	cmp    $0x602058,%rax
  4005cc:	48 89 e5             	mov    %rsp,%rbp
  4005cf:	74 17                	je     4005e8 <deregister_tm_clones+0x28>
  4005d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d6:	48 85 c0             	test   %rax,%rax
  4005d9:	74 0d                	je     4005e8 <deregister_tm_clones+0x28>
  4005db:	5d                   	pop    %rbp
  4005dc:	bf 58 20 60 00       	mov    $0x602058,%edi
  4005e1:	ff e0                	jmpq   *%rax
  4005e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005e8:	5d                   	pop    %rbp
  4005e9:	c3                   	retq   
  4005ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005f0 <register_tm_clones>:
  4005f0:	be 58 20 60 00       	mov    $0x602058,%esi
  4005f5:	55                   	push   %rbp
  4005f6:	48 81 ee 58 20 60 00 	sub    $0x602058,%rsi
  4005fd:	48 89 e5             	mov    %rsp,%rbp
  400600:	48 c1 fe 03          	sar    $0x3,%rsi
  400604:	48 89 f0             	mov    %rsi,%rax
  400607:	48 c1 e8 3f          	shr    $0x3f,%rax
  40060b:	48 01 c6             	add    %rax,%rsi
  40060e:	48 d1 fe             	sar    %rsi
  400611:	74 15                	je     400628 <register_tm_clones+0x38>
  400613:	b8 00 00 00 00       	mov    $0x0,%eax
  400618:	48 85 c0             	test   %rax,%rax
  40061b:	74 0b                	je     400628 <register_tm_clones+0x38>
  40061d:	5d                   	pop    %rbp
  40061e:	bf 58 20 60 00       	mov    $0x602058,%edi
  400623:	ff e0                	jmpq   *%rax
  400625:	0f 1f 00             	nopl   (%rax)
  400628:	5d                   	pop    %rbp
  400629:	c3                   	retq   
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <__do_global_dtors_aux>:
  400630:	80 3d 21 1a 20 00 00 	cmpb   $0x0,0x201a21(%rip)        # 602058 <__TMC_END__>
  400637:	75 17                	jne    400650 <__do_global_dtors_aux+0x20>
  400639:	55                   	push   %rbp
  40063a:	48 89 e5             	mov    %rsp,%rbp
  40063d:	e8 7e ff ff ff       	callq  4005c0 <deregister_tm_clones>
  400642:	c6 05 0f 1a 20 00 01 	movb   $0x1,0x201a0f(%rip)        # 602058 <__TMC_END__>
  400649:	5d                   	pop    %rbp
  40064a:	c3                   	retq   
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400650:	f3 c3                	repz retq 
  400652:	0f 1f 40 00          	nopl   0x0(%rax)
  400656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40065d:	00 00 00 

0000000000400660 <frame_dummy>:
  400660:	55                   	push   %rbp
  400661:	48 89 e5             	mov    %rsp,%rbp
  400664:	5d                   	pop    %rbp
  400665:	eb 89                	jmp    4005f0 <register_tm_clones>
  400667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40066e:	00 00 

0000000000400670 <insert>:
  400670:	48 85 ff             	test   %rdi,%rdi
  400673:	74 2a                	je     40069f <insert+0x2f>
  400675:	48 8b 0e             	mov    (%rsi),%rcx
  400678:	48 39 0f             	cmp    %rcx,(%rdi)
  40067b:	7d 2c                	jge    4006a9 <insert+0x39>
  40067d:	48 89 fa             	mov    %rdi,%rdx
  400680:	48 89 d0             	mov    %rdx,%rax
  400683:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400687:	48 85 d2             	test   %rdx,%rdx
  40068a:	74 28                	je     4006b4 <insert+0x44>
  40068c:	48 39 0a             	cmp    %rcx,(%rdx)
  40068f:	7c ef                	jl     400680 <insert+0x10>
  400691:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  400695:	48 89 f1             	mov    %rsi,%rcx
  400698:	48 39 fa             	cmp    %rdi,%rdx
  40069b:	75 20                	jne    4006bd <insert+0x4d>
  40069d:	eb 25                	jmp    4006c4 <insert+0x54>
  40069f:	31 c9                	xor    %ecx,%ecx
  4006a1:	48 89 f0             	mov    %rsi,%rax
  4006a4:	48 89 f7             	mov    %rsi,%rdi
  4006a7:	eb 14                	jmp    4006bd <insert+0x4d>
  4006a9:	48 89 f0             	mov    %rsi,%rax
  4006ac:	48 89 f9             	mov    %rdi,%rcx
  4006af:	48 89 f7             	mov    %rsi,%rdi
  4006b2:	eb 09                	jmp    4006bd <insert+0x4d>
  4006b4:	48 89 70 10          	mov    %rsi,0x10(%rax)
  4006b8:	31 c9                	xor    %ecx,%ecx
  4006ba:	48 89 f0             	mov    %rsi,%rax
  4006bd:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4006c1:	48 89 fe             	mov    %rdi,%rsi
  4006c4:	83 05 91 19 20 00 01 	addl   $0x1,0x201991(%rip)        # 60205c <n>
  4006cb:	48 89 f0             	mov    %rsi,%rax
  4006ce:	c3                   	retq   
  4006cf:	90                   	nop

00000000004006d0 <create>:
  4006d0:	41 56                	push   %r14
  4006d2:	53                   	push   %rbx
  4006d3:	50                   	push   %rax
  4006d4:	49 89 fe             	mov    %rdi,%r14
  4006d7:	eb 19                	jmp    4006f2 <create+0x22>
  4006d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4006e0:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4006e7:	00 
  4006e8:	49 89 de             	mov    %rbx,%r14
  4006eb:	83 05 6a 19 20 00 01 	addl   $0x1,0x20196a(%rip)        # 60205c <n>
  4006f2:	bf 18 00 00 00       	mov    $0x18,%edi
  4006f7:	e8 64 fe ff ff       	callq  400560 <malloc@plt>
  4006fc:	48 89 c3             	mov    %rax,%rbx
  4006ff:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400703:	bf d4 0b 40 00       	mov    $0x400bd4,%edi
  400708:	31 c0                	xor    %eax,%eax
  40070a:	48 89 de             	mov    %rbx,%rsi
  40070d:	e8 5e fe ff ff       	callq  400570 <__isoc99_scanf@plt>
  400712:	48 8b 03             	mov    (%rbx),%rax
  400715:	48 85 c0             	test   %rax,%rax
  400718:	74 7d                	je     400797 <create+0xc7>
  40071a:	4d 85 f6             	test   %r14,%r14
  40071d:	74 c1                	je     4006e0 <create+0x10>
  40071f:	49 39 06             	cmp    %rax,(%r14)
  400722:	4c 89 f2             	mov    %r14,%rdx
  400725:	7d 39                	jge    400760 <create+0x90>
  400727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40072e:	00 00 
  400730:	48 89 d1             	mov    %rdx,%rcx
  400733:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  400737:	48 85 d2             	test   %rdx,%rdx
  40073a:	74 34                	je     400770 <create+0xa0>
  40073c:	48 39 02             	cmp    %rax,(%rdx)
  40073f:	7c ef                	jl     400730 <create+0x60>
  400741:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  400745:	4c 39 f2             	cmp    %r14,%rdx
  400748:	74 3e                	je     400788 <create+0xb8>
  40074a:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  40074e:	83 05 07 19 20 00 01 	addl   $0x1,0x201907(%rip)        # 60205c <n>
  400755:	eb 9b                	jmp    4006f2 <create+0x22>
  400757:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40075e:	00 00 
  400760:	4c 89 73 10          	mov    %r14,0x10(%rbx)
  400764:	49 89 de             	mov    %rbx,%r14
  400767:	83 05 ee 18 20 00 01 	addl   $0x1,0x2018ee(%rip)        # 60205c <n>
  40076e:	eb 82                	jmp    4006f2 <create+0x22>
  400770:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400774:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  40077b:	00 
  40077c:	83 05 d9 18 20 00 01 	addl   $0x1,0x2018d9(%rip)        # 60205c <n>
  400783:	e9 6a ff ff ff       	jmpq   4006f2 <create+0x22>
  400788:	49 89 de             	mov    %rbx,%r14
  40078b:	83 05 ca 18 20 00 01 	addl   $0x1,0x2018ca(%rip)        # 60205c <n>
  400792:	e9 5b ff ff ff       	jmpq   4006f2 <create+0x22>
  400797:	48 89 df             	mov    %rbx,%rdi
  40079a:	e8 81 fd ff ff       	callq  400520 <free@plt>
  40079f:	bf 0a 00 00 00       	mov    $0xa,%edi
  4007a4:	e8 87 fd ff ff       	callq  400530 <putchar@plt>
  4007a9:	4c 89 f0             	mov    %r14,%rax
  4007ac:	48 83 c4 08          	add    $0x8,%rsp
  4007b0:	5b                   	pop    %rbx
  4007b1:	41 5e                	pop    %r14
  4007b3:	c3                   	retq   
  4007b4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007bb:	00 00 00 00 00 

00000000004007c0 <del>:
  4007c0:	41 56                	push   %r14
  4007c2:	53                   	push   %rbx
  4007c3:	50                   	push   %rax
  4007c4:	49 89 fe             	mov    %rdi,%r14
  4007c7:	4d 85 f6             	test   %r14,%r14
  4007ca:	74 52                	je     40081e <del+0x5e>
  4007cc:	49 8b 06             	mov    (%r14),%rax
  4007cf:	48 39 f0             	cmp    %rsi,%rax
  4007d2:	7d 58                	jge    40082c <del+0x6c>
  4007d4:	4c 89 f2             	mov    %r14,%rdx
  4007d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007de:	00 00 
  4007e0:	48 89 d1             	mov    %rdx,%rcx
  4007e3:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4007e7:	48 85 d2             	test   %rdx,%rdx
  4007ea:	74 59                	je     400845 <del+0x85>
  4007ec:	48 8b 02             	mov    (%rdx),%rax
  4007ef:	48 89 cf             	mov    %rcx,%rdi
  4007f2:	48 39 f0             	cmp    %rsi,%rax
  4007f5:	7c e9                	jl     4007e0 <del+0x20>
  4007f7:	48 39 f0             	cmp    %rsi,%rax
  4007fa:	75 38                	jne    400834 <del+0x74>
  4007fc:	48 8b 5a 10          	mov    0x10(%rdx),%rbx
  400800:	4c 39 f2             	cmp    %r14,%rdx
  400803:	74 4d                	je     400852 <del+0x92>
  400805:	48 89 59 10          	mov    %rbx,0x10(%rcx)
  400809:	bf dc 0b 40 00       	mov    $0x400bdc,%edi
  40080e:	31 c0                	xor    %eax,%eax
  400810:	e8 3b fd ff ff       	callq  400550 <printf@plt>
  400815:	83 05 40 18 20 00 ff 	addl   $0xffffffff,0x201840(%rip)        # 60205c <n>
  40081c:	eb 22                	jmp    400840 <del+0x80>
  40081e:	bf 79 0c 40 00       	mov    $0x400c79,%edi
  400823:	e8 18 fd ff ff       	callq  400540 <puts@plt>
  400828:	31 db                	xor    %ebx,%ebx
  40082a:	eb 39                	jmp    400865 <del+0xa5>
  40082c:	4c 89 f2             	mov    %r14,%rdx
  40082f:	48 39 f0             	cmp    %rsi,%rax
  400832:	74 c8                	je     4007fc <del+0x3c>
  400834:	bf ea 0b 40 00       	mov    $0x400bea,%edi
  400839:	31 c0                	xor    %eax,%eax
  40083b:	e8 10 fd ff ff       	callq  400550 <printf@plt>
  400840:	4c 89 f3             	mov    %r14,%rbx
  400843:	eb 20                	jmp    400865 <del+0xa5>
  400845:	48 89 ca             	mov    %rcx,%rdx
  400848:	48 89 f9             	mov    %rdi,%rcx
  40084b:	48 39 f0             	cmp    %rsi,%rax
  40084e:	74 ac                	je     4007fc <del+0x3c>
  400850:	eb e2                	jmp    400834 <del+0x74>
  400852:	bf dc 0b 40 00       	mov    $0x400bdc,%edi
  400857:	31 c0                	xor    %eax,%eax
  400859:	e8 f2 fc ff ff       	callq  400550 <printf@plt>
  40085e:	83 05 f7 17 20 00 ff 	addl   $0xffffffff,0x2017f7(%rip)        # 60205c <n>
  400865:	bf 0a 00 00 00       	mov    $0xa,%edi
  40086a:	e8 c1 fc ff ff       	callq  400530 <putchar@plt>
  40086f:	48 89 d8             	mov    %rbx,%rax
  400872:	48 83 c4 08          	add    $0x8,%rsp
  400876:	5b                   	pop    %rbx
  400877:	41 5e                	pop    %r14
  400879:	c3                   	retq   
  40087a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400880 <print>:
  400880:	55                   	push   %rbp
  400881:	41 56                	push   %r14
  400883:	53                   	push   %rbx
  400884:	49 89 fe             	mov    %rdi,%r14
  400887:	4d 85 f6             	test   %r14,%r14
  40088a:	74 49                	je     4008d5 <print+0x55>
  40088c:	8b 35 ca 17 20 00    	mov    0x2017ca(%rip),%esi        # 60205c <n>
  400892:	31 ed                	xor    %ebp,%ebp
  400894:	bf ff 0b 40 00       	mov    $0x400bff,%edi
  400899:	31 c0                	xor    %eax,%eax
  40089b:	e8 b0 fc ff ff       	callq  400550 <printf@plt>
  4008a0:	83 3d b5 17 20 00 00 	cmpl   $0x0,0x2017b5(%rip)        # 60205c <n>
  4008a7:	7e 36                	jle    4008df <print+0x5f>
  4008a9:	4c 89 f3             	mov    %r14,%rbx
  4008ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4008b0:	48 8b 33             	mov    (%rbx),%rsi
  4008b3:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  4008b8:	bf 1b 0c 40 00       	mov    $0x400c1b,%edi
  4008bd:	b0 01                	mov    $0x1,%al
  4008bf:	e8 8c fc ff ff       	callq  400550 <printf@plt>
  4008c4:	83 c5 01             	add    $0x1,%ebp
  4008c7:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4008cb:	3b 2d 8b 17 20 00    	cmp    0x20178b(%rip),%ebp        # 60205c <n>
  4008d1:	7c dd                	jl     4008b0 <print+0x30>
  4008d3:	eb 0a                	jmp    4008df <print+0x5f>
  4008d5:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  4008da:	e8 61 fc ff ff       	callq  400540 <puts@plt>
  4008df:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008e4:	e8 47 fc ff ff       	callq  400530 <putchar@plt>
  4008e9:	4c 89 f0             	mov    %r14,%rax
  4008ec:	5b                   	pop    %rbx
  4008ed:	41 5e                	pop    %r14
  4008ef:	5d                   	pop    %rbp
  4008f0:	c3                   	retq   
  4008f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008f8:	0f 1f 84 00 00 00 00 
  4008ff:	00 

0000000000400900 <main>:
  400900:	55                   	push   %rbp
  400901:	41 57                	push   %r15
  400903:	41 56                	push   %r14
  400905:	41 54                	push   %r12
  400907:	53                   	push   %rbx
  400908:	48 83 ec 10          	sub    $0x10,%rsp
  40090c:	bf b0 0c 40 00       	mov    $0x400cb0,%edi
  400911:	e8 2a fc ff ff       	callq  400540 <puts@plt>
  400916:	bf d0 0c 40 00       	mov    $0x400cd0,%edi
  40091b:	e8 20 fc ff ff       	callq  400540 <puts@plt>
  400920:	31 ff                	xor    %edi,%edi
  400922:	e8 a9 fd ff ff       	callq  4006d0 <create>
  400927:	49 89 c4             	mov    %rax,%r12
  40092a:	4d 85 e4             	test   %r12,%r12
  40092d:	74 46                	je     400975 <main+0x75>
  40092f:	8b 35 27 17 20 00    	mov    0x201727(%rip),%esi        # 60205c <n>
  400935:	31 ed                	xor    %ebp,%ebp
  400937:	bf ff 0b 40 00       	mov    $0x400bff,%edi
  40093c:	31 c0                	xor    %eax,%eax
  40093e:	e8 0d fc ff ff       	callq  400550 <printf@plt>
  400943:	83 3d 12 17 20 00 00 	cmpl   $0x0,0x201712(%rip)        # 60205c <n>
  40094a:	7e 33                	jle    40097f <main+0x7f>
  40094c:	4c 89 e3             	mov    %r12,%rbx
  40094f:	90                   	nop
  400950:	48 8b 33             	mov    (%rbx),%rsi
  400953:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
  400958:	bf 1b 0c 40 00       	mov    $0x400c1b,%edi
  40095d:	b0 01                	mov    $0x1,%al
  40095f:	e8 ec fb ff ff       	callq  400550 <printf@plt>
  400964:	83 c5 01             	add    $0x1,%ebp
  400967:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40096b:	3b 2d eb 16 20 00    	cmp    0x2016eb(%rip),%ebp        # 60205c <n>
  400971:	7c dd                	jl     400950 <main+0x50>
  400973:	eb 0a                	jmp    40097f <main+0x7f>
  400975:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  40097a:	e8 c1 fb ff ff       	callq  400540 <puts@plt>
  40097f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400984:	e8 a7 fb ff ff       	callq  400530 <putchar@plt>
  400989:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
  40098e:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  400993:	eb 15                	jmp    4009aa <main+0xaa>
  400995:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40099c:	00 00 00 00 
  4009a0:	bf 0a 00 00 00       	mov    $0xa,%edi
  4009a5:	e8 86 fb ff ff       	callq  400530 <putchar@plt>
  4009aa:	bf 00 0d 40 00       	mov    $0x400d00,%edi
  4009af:	e8 8c fb ff ff       	callq  400540 <puts@plt>
  4009b4:	bf 26 0c 40 00       	mov    $0x400c26,%edi
  4009b9:	31 c0                	xor    %eax,%eax
  4009bb:	e8 90 fb ff ff       	callq  400550 <printf@plt>
  4009c0:	bf 36 0c 40 00       	mov    $0x400c36,%edi
  4009c5:	31 c0                	xor    %eax,%eax
  4009c7:	4c 89 f6             	mov    %r14,%rsi
  4009ca:	e8 a1 fb ff ff       	callq  400570 <__isoc99_scanf@plt>
  4009cf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4009d3:	83 f8 01             	cmp    $0x1,%eax
  4009d6:	74 18                	je     4009f0 <main+0xf0>
  4009d8:	83 f8 02             	cmp    $0x2,%eax
  4009db:	0f 84 7f 00 00 00    	je     400a60 <main+0x160>
  4009e1:	85 c0                	test   %eax,%eax
  4009e3:	0f 85 cb 00 00 00    	jne    400ab4 <main+0x1b4>
  4009e9:	e9 52 01 00 00       	jmpq   400b40 <main+0x240>
  4009ee:	66 90                	xchg   %ax,%ax
  4009f0:	bf 39 0c 40 00       	mov    $0x400c39,%edi
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 54 fb ff ff       	callq  400550 <printf@plt>
  4009fc:	bf 18 00 00 00       	mov    $0x18,%edi
  400a01:	e8 5a fb ff ff       	callq  400560 <malloc@plt>
  400a06:	48 89 c3             	mov    %rax,%rbx
  400a09:	bf d4 0b 40 00       	mov    $0x400bd4,%edi
  400a0e:	48 8d 53 08          	lea    0x8(%rbx),%rdx
  400a12:	31 c0                	xor    %eax,%eax
  400a14:	48 89 de             	mov    %rbx,%rsi
  400a17:	e8 54 fb ff ff       	callq  400570 <__isoc99_scanf@plt>
  400a1c:	4d 85 e4             	test   %r12,%r12
  400a1f:	74 6c                	je     400a8d <main+0x18d>
  400a21:	48 8b 33             	mov    (%rbx),%rsi
  400a24:	49 39 34 24          	cmp    %rsi,(%r12)
  400a28:	4c 89 e1             	mov    %r12,%rcx
  400a2b:	7d 6d                	jge    400a9a <main+0x19a>
  400a2d:	0f 1f 00             	nopl   (%rax)
  400a30:	48 89 c8             	mov    %rcx,%rax
  400a33:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400a37:	48 85 c9             	test   %rcx,%rcx
  400a3a:	0f 84 ef 00 00 00    	je     400b2f <main+0x22f>
  400a40:	48 39 31             	cmp    %rsi,(%rcx)
  400a43:	7c eb                	jl     400a30 <main+0x130>
  400a45:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  400a49:	4c 39 e1             	cmp    %r12,%rcx
  400a4c:	74 50                	je     400a9e <main+0x19e>
  400a4e:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400a52:	eb 4d                	jmp    400aa1 <main+0x1a1>
  400a54:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a5b:	00 00 00 00 00 
  400a60:	bf 62 0c 40 00       	mov    $0x400c62,%edi
  400a65:	31 c0                	xor    %eax,%eax
  400a67:	e8 e4 fa ff ff       	callq  400550 <printf@plt>
  400a6c:	bf 75 0c 40 00       	mov    $0x400c75,%edi
  400a71:	31 c0                	xor    %eax,%eax
  400a73:	4c 89 fe             	mov    %r15,%rsi
  400a76:	e8 f5 fa ff ff       	callq  400570 <__isoc99_scanf@plt>
  400a7b:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  400a80:	4c 89 e7             	mov    %r12,%rdi
  400a83:	e8 38 fd ff ff       	callq  4007c0 <del>
  400a88:	49 89 c4             	mov    %rax,%r12
  400a8b:	eb 27                	jmp    400ab4 <main+0x1b4>
  400a8d:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400a94:	00 
  400a95:	48 8b 33             	mov    (%rbx),%rsi
  400a98:	eb 04                	jmp    400a9e <main+0x19e>
  400a9a:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  400a9e:	49 89 dc             	mov    %rbx,%r12
  400aa1:	83 05 b4 15 20 00 01 	addl   $0x1,0x2015b4(%rip)        # 60205c <n>
  400aa8:	bf 56 0c 40 00       	mov    $0x400c56,%edi
  400aad:	31 c0                	xor    %eax,%eax
  400aaf:	e8 9c fa ff ff       	callq  400550 <printf@plt>
  400ab4:	bf 0a 00 00 00       	mov    $0xa,%edi
  400ab9:	e8 72 fa ff ff       	callq  400530 <putchar@plt>
  400abe:	4d 85 e4             	test   %r12,%r12
  400ac1:	74 5d                	je     400b20 <main+0x220>
  400ac3:	8b 35 93 15 20 00    	mov    0x201593(%rip),%esi        # 60205c <n>
  400ac9:	bf ff 0b 40 00       	mov    $0x400bff,%edi
  400ace:	31 c0                	xor    %eax,%eax
  400ad0:	e8 7b fa ff ff       	callq  400550 <printf@plt>
  400ad5:	83 3d 80 15 20 00 00 	cmpl   $0x0,0x201580(%rip)        # 60205c <n>
  400adc:	0f 8e be fe ff ff    	jle    4009a0 <main+0xa0>
  400ae2:	31 db                	xor    %ebx,%ebx
  400ae4:	4c 89 e5             	mov    %r12,%rbp
  400ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400aee:	00 00 
  400af0:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  400af4:	f2 0f 10 45 08       	movsd  0x8(%rbp),%xmm0
  400af9:	bf 1b 0c 40 00       	mov    $0x400c1b,%edi
  400afe:	b0 01                	mov    $0x1,%al
  400b00:	e8 4b fa ff ff       	callq  400550 <printf@plt>
  400b05:	83 c3 01             	add    $0x1,%ebx
  400b08:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
  400b0c:	3b 1d 4a 15 20 00    	cmp    0x20154a(%rip),%ebx        # 60205c <n>
  400b12:	7c dc                	jl     400af0 <main+0x1f0>
  400b14:	e9 87 fe ff ff       	jmpq   4009a0 <main+0xa0>
  400b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b20:	bf 90 0c 40 00       	mov    $0x400c90,%edi
  400b25:	e8 16 fa ff ff       	callq  400540 <puts@plt>
  400b2a:	e9 71 fe ff ff       	jmpq   4009a0 <main+0xa0>
  400b2f:	48 89 58 10          	mov    %rbx,0x10(%rax)
  400b33:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  400b3a:	00 
  400b3b:	e9 61 ff ff ff       	jmpq   400aa1 <main+0x1a1>
  400b40:	31 c0                	xor    %eax,%eax
  400b42:	48 83 c4 10          	add    $0x10,%rsp
  400b46:	5b                   	pop    %rbx
  400b47:	41 5c                	pop    %r12
  400b49:	41 5e                	pop    %r14
  400b4b:	41 5f                	pop    %r15
  400b4d:	5d                   	pop    %rbp
  400b4e:	c3                   	retq   
  400b4f:	90                   	nop

0000000000400b50 <__libc_csu_init>:
  400b50:	41 57                	push   %r15
  400b52:	41 56                	push   %r14
  400b54:	49 89 d7             	mov    %rdx,%r15
  400b57:	41 55                	push   %r13
  400b59:	41 54                	push   %r12
  400b5b:	4c 8d 25 9e 12 20 00 	lea    0x20129e(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400b62:	55                   	push   %rbp
  400b63:	48 8d 2d 9e 12 20 00 	lea    0x20129e(%rip),%rbp        # 601e08 <__init_array_end>
  400b6a:	53                   	push   %rbx
  400b6b:	41 89 fd             	mov    %edi,%r13d
  400b6e:	49 89 f6             	mov    %rsi,%r14
  400b71:	4c 29 e5             	sub    %r12,%rbp
  400b74:	48 83 ec 08          	sub    $0x8,%rsp
  400b78:	48 c1 fd 03          	sar    $0x3,%rbp
  400b7c:	e8 6f f9 ff ff       	callq  4004f0 <_init>
  400b81:	48 85 ed             	test   %rbp,%rbp
  400b84:	74 20                	je     400ba6 <__libc_csu_init+0x56>
  400b86:	31 db                	xor    %ebx,%ebx
  400b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b8f:	00 
  400b90:	4c 89 fa             	mov    %r15,%rdx
  400b93:	4c 89 f6             	mov    %r14,%rsi
  400b96:	44 89 ef             	mov    %r13d,%edi
  400b99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b9d:	48 83 c3 01          	add    $0x1,%rbx
  400ba1:	48 39 dd             	cmp    %rbx,%rbp
  400ba4:	75 ea                	jne    400b90 <__libc_csu_init+0x40>
  400ba6:	48 83 c4 08          	add    $0x8,%rsp
  400baa:	5b                   	pop    %rbx
  400bab:	5d                   	pop    %rbp
  400bac:	41 5c                	pop    %r12
  400bae:	41 5d                	pop    %r13
  400bb0:	41 5e                	pop    %r14
  400bb2:	41 5f                	pop    %r15
  400bb4:	c3                   	retq   
  400bb5:	90                   	nop
  400bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bbd:	00 00 00 

0000000000400bc0 <__libc_csu_fini>:
  400bc0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400bc4 <_fini>:
  400bc4:	48 83 ec 08          	sub    $0x8,%rsp
  400bc8:	48 83 c4 08          	add    $0x8,%rsp
  400bcc:	c3                   	retq   
