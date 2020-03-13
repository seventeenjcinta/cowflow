
input/19090033027_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000400568 <_init>:
  400568:	48 83 ec 08          	sub    $0x8,%rsp
  40056c:	48 8b 05 85 1a 20 00 	mov    0x201a85(%rip),%rax        # 601ff8 <__gmon_start__>
  400573:	48 85 c0             	test   %rax,%rax
  400576:	74 02                	je     40057a <_init+0x12>
  400578:	ff d0                	callq  *%rax
  40057a:	48 83 c4 08          	add    $0x8,%rsp
  40057e:	c3                   	retq   

Disassembly of section .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 1a 20 00    	pushq  0x201a82(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 1a 20 00    	jmpq   *0x201a84(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <free@plt>:
  400590:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602018 <free@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	pushq  $0x0
  40059b:	e9 e0 ff ff ff       	jmpq   400580 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <printf@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <malloc@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <malloc@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <_IO_getc@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <_IO_getc@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <__isoc99_scanf@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <__isoc99_scanf@GLIBC_2.7>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <exit@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <exit@GLIBC_2.2.5>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

Disassembly of section .text:

0000000000400600 <_start>:
  400600:	31 ed                	xor    %ebp,%ebp
  400602:	49 89 d1             	mov    %rdx,%r9
  400605:	5e                   	pop    %rsi
  400606:	48 89 e2             	mov    %rsp,%rdx
  400609:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40060d:	50                   	push   %rax
  40060e:	54                   	push   %rsp
  40060f:	49 c7 c0 b0 0d 40 00 	mov    $0x400db0,%r8
  400616:	48 c7 c1 40 0d 40 00 	mov    $0x400d40,%rcx
  40061d:	48 c7 c7 30 09 40 00 	mov    $0x400930,%rdi
  400624:	ff 15 c6 19 20 00    	callq  *0x2019c6(%rip)        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40062a:	f4                   	hlt    
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400630 <_dl_relocate_static_pie>:
  400630:	f3 c3                	repz retq 
  400632:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400639:	00 00 00 
  40063c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400640 <deregister_tm_clones>:
  400640:	55                   	push   %rbp
  400641:	b8 60 20 60 00       	mov    $0x602060,%eax
  400646:	48 3d 60 20 60 00    	cmp    $0x602060,%rax
  40064c:	48 89 e5             	mov    %rsp,%rbp
  40064f:	74 17                	je     400668 <deregister_tm_clones+0x28>
  400651:	b8 00 00 00 00       	mov    $0x0,%eax
  400656:	48 85 c0             	test   %rax,%rax
  400659:	74 0d                	je     400668 <deregister_tm_clones+0x28>
  40065b:	5d                   	pop    %rbp
  40065c:	bf 60 20 60 00       	mov    $0x602060,%edi
  400661:	ff e0                	jmpq   *%rax
  400663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <register_tm_clones>:
  400670:	be 60 20 60 00       	mov    $0x602060,%esi
  400675:	55                   	push   %rbp
  400676:	48 81 ee 60 20 60 00 	sub    $0x602060,%rsi
  40067d:	48 89 e5             	mov    %rsp,%rbp
  400680:	48 c1 fe 03          	sar    $0x3,%rsi
  400684:	48 89 f0             	mov    %rsi,%rax
  400687:	48 c1 e8 3f          	shr    $0x3f,%rax
  40068b:	48 01 c6             	add    %rax,%rsi
  40068e:	48 d1 fe             	sar    %rsi
  400691:	74 15                	je     4006a8 <register_tm_clones+0x38>
  400693:	b8 00 00 00 00       	mov    $0x0,%eax
  400698:	48 85 c0             	test   %rax,%rax
  40069b:	74 0b                	je     4006a8 <register_tm_clones+0x38>
  40069d:	5d                   	pop    %rbp
  40069e:	bf 60 20 60 00       	mov    $0x602060,%edi
  4006a3:	ff e0                	jmpq   *%rax
  4006a5:	0f 1f 00             	nopl   (%rax)
  4006a8:	5d                   	pop    %rbp
  4006a9:	c3                   	retq   
  4006aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006b0 <__do_global_dtors_aux>:
  4006b0:	80 3d b1 19 20 00 00 	cmpb   $0x0,0x2019b1(%rip)        # 602068 <completed.7698>
  4006b7:	75 17                	jne    4006d0 <__do_global_dtors_aux+0x20>
  4006b9:	55                   	push   %rbp
  4006ba:	48 89 e5             	mov    %rsp,%rbp
  4006bd:	e8 7e ff ff ff       	callq  400640 <deregister_tm_clones>
  4006c2:	c6 05 9f 19 20 00 01 	movb   $0x1,0x20199f(%rip)        # 602068 <completed.7698>
  4006c9:	5d                   	pop    %rbp
  4006ca:	c3                   	retq   
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	f3 c3                	repz retq 
  4006d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 

00000000004006e0 <frame_dummy>:
  4006e0:	55                   	push   %rbp
  4006e1:	48 89 e5             	mov    %rsp,%rbp
  4006e4:	5d                   	pop    %rbp
  4006e5:	eb 89                	jmp    400670 <register_tm_clones>
  4006e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ee:	00 00 

00000000004006f0 <insert>:
  4006f0:	48 85 ff             	test   %rdi,%rdi
  4006f3:	74 42                	je     400737 <insert+0x47>
  4006f5:	4c 8b 06             	mov    (%rsi),%r8
  4006f8:	48 8b 17             	mov    (%rdi),%rdx
  4006fb:	49 39 d0             	cmp    %rdx,%r8
  4006fe:	7e 3e                	jle    40073e <insert+0x4e>
  400700:	48 89 f9             	mov    %rdi,%rcx
  400703:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40070a:	84 00 00 00 00 00 
  400710:	48 89 c8             	mov    %rcx,%rax
  400713:	48 8b 48 10          	mov    0x10(%rax),%rcx
  400717:	48 85 c9             	test   %rcx,%rcx
  40071a:	74 3f                	je     40075b <insert+0x6b>
  40071c:	48 8b 11             	mov    (%rcx),%rdx
  40071f:	49 89 c1             	mov    %rax,%r9
  400722:	49 39 d0             	cmp    %rdx,%r8
  400725:	7f e9                	jg     400710 <insert+0x20>
  400727:	49 39 d0             	cmp    %rdx,%r8
  40072a:	7d 1a                	jge    400746 <insert+0x56>
  40072c:	48 39 f9             	cmp    %rdi,%rcx
  40072f:	74 08                	je     400739 <insert+0x49>
  400731:	49 89 71 10          	mov    %rsi,0x10(%r9)
  400735:	eb 15                	jmp    40074c <insert+0x5c>
  400737:	31 c9                	xor    %ecx,%ecx
  400739:	48 89 f7             	mov    %rsi,%rdi
  40073c:	eb 0e                	jmp    40074c <insert+0x5c>
  40073e:	48 89 f9             	mov    %rdi,%rcx
  400741:	49 39 d0             	cmp    %rdx,%r8
  400744:	7c e6                	jl     40072c <insert+0x3c>
  400746:	48 89 71 10          	mov    %rsi,0x10(%rcx)
  40074a:	31 c9                	xor    %ecx,%ecx
  40074c:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  400750:	83 05 15 19 20 00 01 	addl   $0x1,0x201915(%rip)        # 60206c <n>
  400757:	48 89 f8             	mov    %rdi,%rax
  40075a:	c3                   	retq   
  40075b:	48 89 c1             	mov    %rax,%rcx
  40075e:	49 39 d0             	cmp    %rdx,%r8
  400761:	7c c9                	jl     40072c <insert+0x3c>
  400763:	eb e1                	jmp    400746 <insert+0x56>
  400765:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40076c:	00 00 00 00 

0000000000400770 <create>:
  400770:	41 57                	push   %r15
  400772:	41 56                	push   %r14
  400774:	53                   	push   %rbx
  400775:	45 31 f6             	xor    %r14d,%r14d
  400778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40077f:	00 
  400780:	bf 18 00 00 00       	mov    $0x18,%edi
  400785:	e8 36 fe ff ff       	callq  4005c0 <malloc@plt>
  40078a:	49 89 c7             	mov    %rax,%r15
  40078d:	49 8d 5f 08          	lea    0x8(%r15),%rbx
  400791:	bf c4 0d 40 00       	mov    $0x400dc4,%edi
  400796:	31 c0                	xor    %eax,%eax
  400798:	4c 89 fe             	mov    %r15,%rsi
  40079b:	48 89 da             	mov    %rbx,%rdx
  40079e:	e8 3d fe ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  4007a3:	49 8b 0f             	mov    (%r15),%rcx
  4007a6:	48 85 c9             	test   %rcx,%rcx
  4007a9:	0f 84 8f 00 00 00    	je     40083e <create+0xce>
  4007af:	f3 0f 10 03          	movss  (%rbx),%xmm0
  4007b3:	0f 57 c9             	xorps  %xmm1,%xmm1
  4007b6:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4007b9:	75 02                	jne    4007bd <create+0x4d>
  4007bb:	7b 66                	jnp    400823 <create+0xb3>
  4007bd:	4d 85 f6             	test   %r14,%r14
  4007c0:	74 3e                	je     400800 <create+0x90>
  4007c2:	49 8b 36             	mov    (%r14),%rsi
  4007c5:	48 39 f1             	cmp    %rsi,%rcx
  4007c8:	7e 3d                	jle    400807 <create+0x97>
  4007ca:	4c 89 f0             	mov    %r14,%rax
  4007cd:	0f 1f 00             	nopl   (%rax)
  4007d0:	48 89 c7             	mov    %rax,%rdi
  4007d3:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4007d7:	48 85 c0             	test   %rax,%rax
  4007da:	74 58                	je     400834 <create+0xc4>
  4007dc:	48 8b 30             	mov    (%rax),%rsi
  4007df:	48 89 fa             	mov    %rdi,%rdx
  4007e2:	48 39 f1             	cmp    %rsi,%rcx
  4007e5:	7f e9                	jg     4007d0 <create+0x60>
  4007e7:	48 39 f1             	cmp    %rsi,%rcx
  4007ea:	7d 23                	jge    40080f <create+0x9f>
  4007ec:	4c 39 f0             	cmp    %r14,%rax
  4007ef:	75 23                	jne    400814 <create+0xa4>
  4007f1:	eb 0f                	jmp    400802 <create+0x92>
  4007f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4007fa:	84 00 00 00 00 00 
  400800:	31 c0                	xor    %eax,%eax
  400802:	4d 89 fe             	mov    %r15,%r14
  400805:	eb 11                	jmp    400818 <create+0xa8>
  400807:	4c 89 f0             	mov    %r14,%rax
  40080a:	48 39 f1             	cmp    %rsi,%rcx
  40080d:	7c dd                	jl     4007ec <create+0x7c>
  40080f:	48 89 c2             	mov    %rax,%rdx
  400812:	31 c0                	xor    %eax,%eax
  400814:	4c 89 7a 10          	mov    %r15,0x10(%rdx)
  400818:	49 89 47 10          	mov    %rax,0x10(%r15)
  40081c:	83 05 49 18 20 00 01 	addl   $0x1,0x201849(%rip)        # 60206c <n>
  400823:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400826:	0f 85 54 ff ff ff    	jne    400780 <create+0x10>
  40082c:	0f 8a 4e ff ff ff    	jp     400780 <create+0x10>
  400832:	eb 0a                	jmp    40083e <create+0xce>
  400834:	48 89 f8             	mov    %rdi,%rax
  400837:	48 39 f1             	cmp    %rsi,%rcx
  40083a:	7c b0                	jl     4007ec <create+0x7c>
  40083c:	eb d1                	jmp    40080f <create+0x9f>
  40083e:	4c 89 f0             	mov    %r14,%rax
  400841:	5b                   	pop    %rbx
  400842:	41 5e                	pop    %r14
  400844:	41 5f                	pop    %r15
  400846:	c3                   	retq   
  400847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40084e:	00 00 

0000000000400850 <print>:
  400850:	53                   	push   %rbx
  400851:	48 89 fb             	mov    %rdi,%rbx
  400854:	8b 35 12 18 20 00    	mov    0x201812(%rip),%esi        # 60206c <n>
  40085a:	bf cb 0d 40 00       	mov    $0x400dcb,%edi
  40085f:	31 c0                	xor    %eax,%eax
  400861:	e8 4a fd ff ff       	callq  4005b0 <printf@plt>
  400866:	48 85 db             	test   %rbx,%rbx
  400869:	74 26                	je     400891 <print+0x41>
  40086b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400870:	48 8b 33             	mov    (%rbx),%rsi
  400873:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400878:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40087c:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400881:	b0 01                	mov    $0x1,%al
  400883:	e8 28 fd ff ff       	callq  4005b0 <printf@plt>
  400888:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40088c:	48 85 db             	test   %rbx,%rbx
  40088f:	75 df                	jne    400870 <print+0x20>
  400891:	5b                   	pop    %rbx
  400892:	c3                   	retq   
  400893:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40089a:	84 00 00 00 00 00 

00000000004008a0 <del>:
  4008a0:	53                   	push   %rbx
  4008a1:	48 89 fb             	mov    %rdi,%rbx
  4008a4:	48 85 db             	test   %rbx,%rbx
  4008a7:	74 42                	je     4008eb <del+0x4b>
  4008a9:	48 8b 03             	mov    (%rbx),%rax
  4008ac:	48 39 f0             	cmp    %rsi,%rax
  4008af:	7d 48                	jge    4008f9 <del+0x59>
  4008b1:	48 89 df             	mov    %rbx,%rdi
  4008b4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4008bb:	00 00 00 00 00 
  4008c0:	48 89 f9             	mov    %rdi,%rcx
  4008c3:	48 8b 79 10          	mov    0x10(%rcx),%rdi
  4008c7:	48 85 ff             	test   %rdi,%rdi
  4008ca:	74 41                	je     40090d <del+0x6d>
  4008cc:	48 8b 07             	mov    (%rdi),%rax
  4008cf:	48 89 ca             	mov    %rcx,%rdx
  4008d2:	48 39 f0             	cmp    %rsi,%rax
  4008d5:	7c e9                	jl     4008c0 <del+0x20>
  4008d7:	48 39 f0             	cmp    %rsi,%rax
  4008da:	75 25                	jne    400901 <del+0x61>
  4008dc:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4008e0:	48 39 df             	cmp    %rbx,%rdi
  4008e3:	74 35                	je     40091a <del+0x7a>
  4008e5:	48 89 41 10          	mov    %rax,0x10(%rcx)
  4008e9:	eb 32                	jmp    40091d <del+0x7d>
  4008eb:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  4008f0:	e8 ab fc ff ff       	callq  4005a0 <puts@plt>
  4008f5:	31 db                	xor    %ebx,%ebx
  4008f7:	eb 30                	jmp    400929 <del+0x89>
  4008f9:	48 89 df             	mov    %rbx,%rdi
  4008fc:	48 39 f0             	cmp    %rsi,%rax
  4008ff:	74 db                	je     4008dc <del+0x3c>
  400901:	bf 49 0e 40 00       	mov    $0x400e49,%edi
  400906:	e8 95 fc ff ff       	callq  4005a0 <puts@plt>
  40090b:	eb 1c                	jmp    400929 <del+0x89>
  40090d:	48 89 cf             	mov    %rcx,%rdi
  400910:	48 89 d1             	mov    %rdx,%rcx
  400913:	48 39 f0             	cmp    %rsi,%rax
  400916:	74 c4                	je     4008dc <del+0x3c>
  400918:	eb e7                	jmp    400901 <del+0x61>
  40091a:	48 89 c3             	mov    %rax,%rbx
  40091d:	e8 6e fc ff ff       	callq  400590 <free@plt>
  400922:	83 05 43 17 20 00 ff 	addl   $0xffffffff,0x201743(%rip)        # 60206c <n>
  400929:	48 89 d8             	mov    %rbx,%rax
  40092c:	5b                   	pop    %rbx
  40092d:	c3                   	retq   
  40092e:	66 90                	xchg   %ax,%ax

0000000000400930 <main>:
  400930:	41 57                	push   %r15
  400932:	41 56                	push   %r14
  400934:	41 55                	push   %r13
  400936:	41 54                	push   %r12
  400938:	53                   	push   %rbx
  400939:	48 83 ec 10          	sub    $0x10,%rsp
  40093d:	bf 90 0e 40 00       	mov    $0x400e90,%edi
  400942:	e8 59 fc ff ff       	callq  4005a0 <puts@plt>
  400947:	bf b0 0e 40 00       	mov    $0x400eb0,%edi
  40094c:	e8 4f fc ff ff       	callq  4005a0 <puts@plt>
  400951:	45 31 e4             	xor    %r12d,%r12d
  400954:	eb 1a                	jmp    400970 <main+0x40>
  400956:	48 89 f8             	mov    %rdi,%rax
  400959:	48 39 f1             	cmp    %rsi,%rcx
  40095c:	7c 7e                	jl     4009dc <main+0xac>
  40095e:	e9 9c 00 00 00       	jmpq   4009ff <main+0xcf>
  400963:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40096a:	84 00 00 00 00 00 
  400970:	bf 18 00 00 00       	mov    $0x18,%edi
  400975:	e8 46 fc ff ff       	callq  4005c0 <malloc@plt>
  40097a:	49 89 c6             	mov    %rax,%r14
  40097d:	49 8d 5e 08          	lea    0x8(%r14),%rbx
  400981:	bf c4 0d 40 00       	mov    $0x400dc4,%edi
  400986:	31 c0                	xor    %eax,%eax
  400988:	4c 89 f6             	mov    %r14,%rsi
  40098b:	48 89 da             	mov    %rbx,%rdx
  40098e:	e8 4d fc ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400993:	49 8b 0e             	mov    (%r14),%rcx
  400996:	48 85 c9             	test   %rcx,%rcx
  400999:	0f 84 83 00 00 00    	je     400a22 <main+0xf2>
  40099f:	f3 0f 10 03          	movss  (%rbx),%xmm0
  4009a3:	0f 57 c9             	xorps  %xmm1,%xmm1
  4009a6:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4009a9:	75 02                	jne    4009ad <main+0x7d>
  4009ab:	7b 66                	jnp    400a13 <main+0xe3>
  4009ad:	4d 85 e4             	test   %r12,%r12
  4009b0:	74 3e                	je     4009f0 <main+0xc0>
  4009b2:	49 8b 34 24          	mov    (%r12),%rsi
  4009b6:	48 39 f1             	cmp    %rsi,%rcx
  4009b9:	7e 3c                	jle    4009f7 <main+0xc7>
  4009bb:	4c 89 e0             	mov    %r12,%rax
  4009be:	66 90                	xchg   %ax,%ax
  4009c0:	48 89 c7             	mov    %rax,%rdi
  4009c3:	48 8b 47 10          	mov    0x10(%rdi),%rax
  4009c7:	48 85 c0             	test   %rax,%rax
  4009ca:	74 8a                	je     400956 <main+0x26>
  4009cc:	48 8b 30             	mov    (%rax),%rsi
  4009cf:	48 89 fa             	mov    %rdi,%rdx
  4009d2:	48 39 f1             	cmp    %rsi,%rcx
  4009d5:	7f e9                	jg     4009c0 <main+0x90>
  4009d7:	48 39 f1             	cmp    %rsi,%rcx
  4009da:	7d 23                	jge    4009ff <main+0xcf>
  4009dc:	4c 39 e0             	cmp    %r12,%rax
  4009df:	75 23                	jne    400a04 <main+0xd4>
  4009e1:	eb 0f                	jmp    4009f2 <main+0xc2>
  4009e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009ea:	84 00 00 00 00 00 
  4009f0:	31 c0                	xor    %eax,%eax
  4009f2:	4d 89 f4             	mov    %r14,%r12
  4009f5:	eb 11                	jmp    400a08 <main+0xd8>
  4009f7:	4c 89 e0             	mov    %r12,%rax
  4009fa:	48 39 f1             	cmp    %rsi,%rcx
  4009fd:	7c dd                	jl     4009dc <main+0xac>
  4009ff:	48 89 c2             	mov    %rax,%rdx
  400a02:	31 c0                	xor    %eax,%eax
  400a04:	4c 89 72 10          	mov    %r14,0x10(%rdx)
  400a08:	49 89 46 10          	mov    %rax,0x10(%r14)
  400a0c:	83 05 59 16 20 00 01 	addl   $0x1,0x201659(%rip)        # 60206c <n>
  400a13:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400a16:	0f 85 54 ff ff ff    	jne    400970 <main+0x40>
  400a1c:	0f 8a 4e ff ff ff    	jp     400970 <main+0x40>
  400a22:	8b 35 44 16 20 00    	mov    0x201644(%rip),%esi        # 60206c <n>
  400a28:	bf cb 0d 40 00       	mov    $0x400dcb,%edi
  400a2d:	31 c0                	xor    %eax,%eax
  400a2f:	e8 7c fb ff ff       	callq  4005b0 <printf@plt>
  400a34:	4d 85 e4             	test   %r12,%r12
  400a37:	74 28                	je     400a61 <main+0x131>
  400a39:	4c 89 e3             	mov    %r12,%rbx
  400a3c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a40:	48 8b 33             	mov    (%rbx),%rsi
  400a43:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400a48:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400a4c:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400a51:	b0 01                	mov    $0x1,%al
  400a53:	e8 58 fb ff ff       	callq  4005b0 <printf@plt>
  400a58:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400a5c:	48 85 db             	test   %rbx,%rbx
  400a5f:	75 df                	jne    400a40 <main+0x110>
  400a61:	4c 8d 7c 24 04       	lea    0x4(%rsp),%r15
  400a66:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  400a6b:	eb 03                	jmp    400a70 <main+0x140>
  400a6d:	4d 89 ec             	mov    %r13,%r12
  400a70:	bf e0 0e 40 00       	mov    $0x400ee0,%edi
  400a75:	e8 26 fb ff ff       	callq  4005a0 <puts@plt>
  400a7a:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
  400a81:	ff 
  400a82:	bf f4 0d 40 00       	mov    $0x400df4,%edi
  400a87:	31 c0                	xor    %eax,%eax
  400a89:	e8 22 fb ff ff       	callq  4005b0 <printf@plt>
  400a8e:	bf 04 0e 40 00       	mov    $0x400e04,%edi
  400a93:	31 c0                	xor    %eax,%eax
  400a95:	4c 89 fe             	mov    %r15,%rsi
  400a98:	e8 43 fb ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400a9d:	48 8b 3d bc 15 20 00 	mov    0x2015bc(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400aa4:	e8 27 fb ff ff       	callq  4005d0 <_IO_getc@plt>
  400aa9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400aad:	83 f8 01             	cmp    $0x1,%eax
  400ab0:	0f 84 9a 00 00 00    	je     400b50 <main+0x220>
  400ab6:	83 f8 02             	cmp    $0x2,%eax
  400ab9:	74 15                	je     400ad0 <main+0x1a0>
  400abb:	85 c0                	test   %eax,%eax
  400abd:	75 b1                	jne    400a70 <main+0x140>
  400abf:	e9 72 02 00 00       	jmpq   400d36 <main+0x406>
  400ac4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400acb:	00 00 00 00 00 
  400ad0:	bf 33 0e 40 00       	mov    $0x400e33,%edi
  400ad5:	31 c0                	xor    %eax,%eax
  400ad7:	e8 d4 fa ff ff       	callq  4005b0 <printf@plt>
  400adc:	bf 45 0e 40 00       	mov    $0x400e45,%edi
  400ae1:	31 c0                	xor    %eax,%eax
  400ae3:	4c 89 f6             	mov    %r14,%rsi
  400ae6:	e8 f5 fa ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400aeb:	4d 85 e4             	test   %r12,%r12
  400aee:	0f 84 de 00 00 00    	je     400bd2 <main+0x2a2>
  400af4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400af9:	49 8b 0c 24          	mov    (%r12),%rcx
  400afd:	48 39 c1             	cmp    %rax,%rcx
  400b00:	0f 8d 01 01 00 00    	jge    400c07 <main+0x2d7>
  400b06:	4c 89 e7             	mov    %r12,%rdi
  400b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400b10:	48 89 fa             	mov    %rdi,%rdx
  400b13:	48 8b 7a 10          	mov    0x10(%rdx),%rdi
  400b17:	48 85 ff             	test   %rdi,%rdi
  400b1a:	0f 84 1e 01 00 00    	je     400c3e <main+0x30e>
  400b20:	48 8b 0f             	mov    (%rdi),%rcx
  400b23:	48 89 d6             	mov    %rdx,%rsi
  400b26:	48 39 c1             	cmp    %rax,%rcx
  400b29:	7c e5                	jl     400b10 <main+0x1e0>
  400b2b:	48 39 c1             	cmp    %rax,%rcx
  400b2e:	0f 85 df 00 00 00    	jne    400c13 <main+0x2e3>
  400b34:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400b38:	4c 39 e7             	cmp    %r12,%rdi
  400b3b:	0f 84 1c 01 00 00    	je     400c5d <main+0x32d>
  400b41:	48 89 42 10          	mov    %rax,0x10(%rdx)
  400b45:	e9 16 01 00 00       	jmpq   400c60 <main+0x330>
  400b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400b50:	bf 07 0e 40 00       	mov    $0x400e07,%edi
  400b55:	31 c0                	xor    %eax,%eax
  400b57:	e8 54 fa ff ff       	callq  4005b0 <printf@plt>
  400b5c:	bf 18 00 00 00       	mov    $0x18,%edi
  400b61:	e8 5a fa ff ff       	callq  4005c0 <malloc@plt>
  400b66:	49 89 c5             	mov    %rax,%r13
  400b69:	bf c4 0d 40 00       	mov    $0x400dc4,%edi
  400b6e:	49 8d 55 08          	lea    0x8(%r13),%rdx
  400b72:	31 c0                	xor    %eax,%eax
  400b74:	4c 89 ee             	mov    %r13,%rsi
  400b77:	e8 64 fa ff ff       	callq  4005e0 <__isoc99_scanf@plt>
  400b7c:	4d 85 e4             	test   %r12,%r12
  400b7f:	74 75                	je     400bf6 <main+0x2c6>
  400b81:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400b85:	49 8b 0c 24          	mov    (%r12),%rcx
  400b89:	48 39 ce             	cmp    %rcx,%rsi
  400b8c:	0f 8e 93 00 00 00    	jle    400c25 <main+0x2f5>
  400b92:	4c 89 e0             	mov    %r12,%rax
  400b95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400b9c:	00 00 00 00 
  400ba0:	48 89 c7             	mov    %rax,%rdi
  400ba3:	48 8b 47 10          	mov    0x10(%rdi),%rax
  400ba7:	48 85 c0             	test   %rax,%rax
  400baa:	0f 84 9f 00 00 00    	je     400c4f <main+0x31f>
  400bb0:	48 8b 08             	mov    (%rax),%rcx
  400bb3:	48 89 fa             	mov    %rdi,%rdx
  400bb6:	48 39 ce             	cmp    %rcx,%rsi
  400bb9:	7f e5                	jg     400ba0 <main+0x270>
  400bbb:	48 39 ce             	cmp    %rcx,%rsi
  400bbe:	7d 6d                	jge    400c2d <main+0x2fd>
  400bc0:	4c 39 e0             	cmp    %r12,%rax
  400bc3:	0f 84 00 01 00 00    	je     400cc9 <main+0x399>
  400bc9:	4c 89 6a 10          	mov    %r13,0x10(%rdx)
  400bcd:	e9 fa 00 00 00       	jmpq   400ccc <main+0x39c>
  400bd2:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  400bd7:	e8 c4 f9 ff ff       	callq  4005a0 <puts@plt>
  400bdc:	8b 35 8a 14 20 00    	mov    0x20148a(%rip),%esi        # 60206c <n>
  400be2:	bf cb 0d 40 00       	mov    $0x400dcb,%edi
  400be7:	31 c0                	xor    %eax,%eax
  400be9:	e8 c2 f9 ff ff       	callq  4005b0 <printf@plt>
  400bee:	45 31 e4             	xor    %r12d,%r12d
  400bf1:	e9 7a fe ff ff       	jmpq   400a70 <main+0x140>
  400bf6:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400bfd:	00 
  400bfe:	49 8b 75 00          	mov    0x0(%r13),%rsi
  400c02:	e9 cc 00 00 00       	jmpq   400cd3 <main+0x3a3>
  400c07:	4c 89 e7             	mov    %r12,%rdi
  400c0a:	48 39 c1             	cmp    %rax,%rcx
  400c0d:	0f 84 21 ff ff ff    	je     400b34 <main+0x204>
  400c13:	bf 49 0e 40 00       	mov    $0x400e49,%edi
  400c18:	e8 83 f9 ff ff       	callq  4005a0 <puts@plt>
  400c1d:	8b 35 49 14 20 00    	mov    0x201449(%rip),%esi        # 60206c <n>
  400c23:	eb 4f                	jmp    400c74 <main+0x344>
  400c25:	4c 89 e0             	mov    %r12,%rax
  400c28:	48 39 ce             	cmp    %rcx,%rsi
  400c2b:	7c 93                	jl     400bc0 <main+0x290>
  400c2d:	4c 89 68 10          	mov    %r13,0x10(%rax)
  400c31:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  400c38:	00 
  400c39:	e9 92 00 00 00       	jmpq   400cd0 <main+0x3a0>
  400c3e:	48 89 d7             	mov    %rdx,%rdi
  400c41:	48 89 f2             	mov    %rsi,%rdx
  400c44:	48 39 c1             	cmp    %rax,%rcx
  400c47:	0f 84 e7 fe ff ff    	je     400b34 <main+0x204>
  400c4d:	eb c4                	jmp    400c13 <main+0x2e3>
  400c4f:	48 89 f8             	mov    %rdi,%rax
  400c52:	48 39 ce             	cmp    %rcx,%rsi
  400c55:	0f 8c 65 ff ff ff    	jl     400bc0 <main+0x290>
  400c5b:	eb d0                	jmp    400c2d <main+0x2fd>
  400c5d:	49 89 c4             	mov    %rax,%r12
  400c60:	e8 2b f9 ff ff       	callq  400590 <free@plt>
  400c65:	8b 35 01 14 20 00    	mov    0x201401(%rip),%esi        # 60206c <n>
  400c6b:	83 c6 ff             	add    $0xffffffff,%esi
  400c6e:	89 35 f8 13 20 00    	mov    %esi,0x2013f8(%rip)        # 60206c <n>
  400c74:	4d 89 e5             	mov    %r12,%r13
  400c77:	bf cb 0d 40 00       	mov    $0x400dcb,%edi
  400c7c:	31 c0                	xor    %eax,%eax
  400c7e:	e8 2d f9 ff ff       	callq  4005b0 <printf@plt>
  400c83:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400c89:	4d 85 ed             	test   %r13,%r13
  400c8c:	0f 84 de fd ff ff    	je     400a70 <main+0x140>
  400c92:	4c 89 eb             	mov    %r13,%rbx
  400c95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400c9c:	00 00 00 00 
  400ca0:	48 8b 33             	mov    (%rbx),%rsi
  400ca3:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400ca8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400cac:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400cb1:	b0 01                	mov    $0x1,%al
  400cb3:	e8 f8 f8 ff ff       	callq  4005b0 <printf@plt>
  400cb8:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400cbc:	48 85 db             	test   %rbx,%rbx
  400cbf:	75 df                	jne    400ca0 <main+0x370>
  400cc1:	4d 89 ec             	mov    %r13,%r12
  400cc4:	e9 a7 fd ff ff       	jmpq   400a70 <main+0x140>
  400cc9:	4d 89 ec             	mov    %r13,%r12
  400ccc:	49 89 45 10          	mov    %rax,0x10(%r13)
  400cd0:	4d 89 e5             	mov    %r12,%r13
  400cd3:	83 05 92 13 20 00 01 	addl   $0x1,0x201392(%rip)        # 60206c <n>
  400cda:	bf 24 0e 40 00       	mov    $0x400e24,%edi
  400cdf:	31 c0                	xor    %eax,%eax
  400ce1:	e8 ca f8 ff ff       	callq  4005b0 <printf@plt>
  400ce6:	8b 35 80 13 20 00    	mov    0x201380(%rip),%esi        # 60206c <n>
  400cec:	bf cb 0d 40 00       	mov    $0x400dcb,%edi
  400cf1:	31 c0                	xor    %eax,%eax
  400cf3:	e8 b8 f8 ff ff       	callq  4005b0 <printf@plt>
  400cf8:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400cfe:	4d 85 ed             	test   %r13,%r13
  400d01:	0f 84 69 fd ff ff    	je     400a70 <main+0x140>
  400d07:	4c 89 eb             	mov    %r13,%rbx
  400d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400d10:	48 8b 33             	mov    (%rbx),%rsi
  400d13:	f3 0f 10 43 08       	movss  0x8(%rbx),%xmm0
  400d18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  400d1c:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400d21:	b0 01                	mov    $0x1,%al
  400d23:	e8 88 f8 ff ff       	callq  4005b0 <printf@plt>
  400d28:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  400d2c:	48 85 db             	test   %rbx,%rbx
  400d2f:	75 df                	jne    400d10 <main+0x3e0>
  400d31:	e9 37 fd ff ff       	jmpq   400a6d <main+0x13d>
  400d36:	31 ff                	xor    %edi,%edi
  400d38:	e8 b3 f8 ff ff       	callq  4005f0 <exit@plt>
  400d3d:	0f 1f 00             	nopl   (%rax)

0000000000400d40 <__libc_csu_init>:
  400d40:	41 57                	push   %r15
  400d42:	41 56                	push   %r14
  400d44:	49 89 d7             	mov    %rdx,%r15
  400d47:	41 55                	push   %r13
  400d49:	41 54                	push   %r12
  400d4b:	4c 8d 25 ae 10 20 00 	lea    0x2010ae(%rip),%r12        # 601e00 <__frame_dummy_init_array_entry>
  400d52:	55                   	push   %rbp
  400d53:	48 8d 2d ae 10 20 00 	lea    0x2010ae(%rip),%rbp        # 601e08 <__init_array_end>
  400d5a:	53                   	push   %rbx
  400d5b:	41 89 fd             	mov    %edi,%r13d
  400d5e:	49 89 f6             	mov    %rsi,%r14
  400d61:	4c 29 e5             	sub    %r12,%rbp
  400d64:	48 83 ec 08          	sub    $0x8,%rsp
  400d68:	48 c1 fd 03          	sar    $0x3,%rbp
  400d6c:	e8 f7 f7 ff ff       	callq  400568 <_init>
  400d71:	48 85 ed             	test   %rbp,%rbp
  400d74:	74 20                	je     400d96 <__libc_csu_init+0x56>
  400d76:	31 db                	xor    %ebx,%ebx
  400d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d7f:	00 
  400d80:	4c 89 fa             	mov    %r15,%rdx
  400d83:	4c 89 f6             	mov    %r14,%rsi
  400d86:	44 89 ef             	mov    %r13d,%edi
  400d89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d8d:	48 83 c3 01          	add    $0x1,%rbx
  400d91:	48 39 dd             	cmp    %rbx,%rbp
  400d94:	75 ea                	jne    400d80 <__libc_csu_init+0x40>
  400d96:	48 83 c4 08          	add    $0x8,%rsp
  400d9a:	5b                   	pop    %rbx
  400d9b:	5d                   	pop    %rbp
  400d9c:	41 5c                	pop    %r12
  400d9e:	41 5d                	pop    %r13
  400da0:	41 5e                	pop    %r14
  400da2:	41 5f                	pop    %r15
  400da4:	c3                   	retq   
  400da5:	90                   	nop
  400da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dad:	00 00 00 

0000000000400db0 <__libc_csu_fini>:
  400db0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400db4 <_fini>:
  400db4:	48 83 ec 08          	sub    $0x8,%rsp
  400db8:	48 83 c4 08          	add    $0x8,%rsp
  400dbc:	c3                   	retq   
