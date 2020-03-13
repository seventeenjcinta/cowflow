
input/19020031075_2.elf:     file format elf64-x86-64


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

00000000004005a0 <putchar@plt>:
  4005a0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602020 <putchar@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <puts@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <puts@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <malloc@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <malloc@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <_IO_getc@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <_IO_getc@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <__isoc99_scanf@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <__isoc99_scanf@GLIBC_2.7>
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
  40061d:	48 c7 c7 e0 09 40 00 	mov    $0x4009e0,%rdi
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

00000000004006f0 <create_ListHead>:
  4006f0:	53                   	push   %rbx
  4006f1:	48 89 fb             	mov    %rdi,%rbx
  4006f4:	bf 10 00 00 00       	mov    $0x10,%edi
  4006f9:	e8 d2 fe ff ff       	callq  4005d0 <malloc@plt>
  4006fe:	48 89 03             	mov    %rax,(%rbx)
  400701:	48 85 db             	test   %rbx,%rbx
  400704:	74 0a                	je     400710 <create_ListHead+0x20>
  400706:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40070d:	00 
  40070e:	5b                   	pop    %rbx
  40070f:	c3                   	retq   
  400710:	bf 00 10 40 00       	mov    $0x401000,%edi
  400715:	5b                   	pop    %rbx
  400716:	e9 95 fe ff ff       	jmpq   4005b0 <puts@plt>
  40071b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400720 <get_newNode>:
  400720:	53                   	push   %rbx
  400721:	89 fb                	mov    %edi,%ebx
  400723:	bf 10 00 00 00       	mov    $0x10,%edi
  400728:	e8 a3 fe ff ff       	callq  4005d0 <malloc@plt>
  40072d:	48 85 c0             	test   %rax,%rax
  400730:	74 0c                	je     40073e <get_newNode+0x1e>
  400732:	89 18                	mov    %ebx,(%rax)
  400734:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40073b:	00 
  40073c:	5b                   	pop    %rbx
  40073d:	c3                   	retq   
  40073e:	bf 00 10 40 00       	mov    $0x401000,%edi
  400743:	e8 68 fe ff ff       	callq  4005b0 <puts@plt>
  400748:	31 c0                	xor    %eax,%eax
  40074a:	5b                   	pop    %rbx
  40074b:	c3                   	retq   
  40074c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400750 <push_Front>:
  400750:	55                   	push   %rbp
  400751:	53                   	push   %rbx
  400752:	50                   	push   %rax
  400753:	89 f5                	mov    %esi,%ebp
  400755:	48 89 fb             	mov    %rdi,%rbx
  400758:	bf 10 00 00 00       	mov    $0x10,%edi
  40075d:	e8 6e fe ff ff       	callq  4005d0 <malloc@plt>
  400762:	48 85 c0             	test   %rax,%rax
  400765:	74 0c                	je     400773 <push_Front+0x23>
  400767:	89 28                	mov    %ebp,(%rax)
  400769:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400770:	00 
  400771:	eb 0c                	jmp    40077f <push_Front+0x2f>
  400773:	bf 00 10 40 00       	mov    $0x401000,%edi
  400778:	e8 33 fe ff ff       	callq  4005b0 <puts@plt>
  40077d:	31 c0                	xor    %eax,%eax
  40077f:	48 8b 0b             	mov    (%rbx),%rcx
  400782:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  400786:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40078a:	48 89 41 08          	mov    %rax,0x8(%rcx)
  40078e:	48 83 c4 08          	add    $0x8,%rsp
  400792:	5b                   	pop    %rbx
  400793:	5d                   	pop    %rbp
  400794:	c3                   	retq   
  400795:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40079c:	00 00 00 00 

00000000004007a0 <push_Back>:
  4007a0:	55                   	push   %rbp
  4007a1:	53                   	push   %rbx
  4007a2:	50                   	push   %rax
  4007a3:	89 f5                	mov    %esi,%ebp
  4007a5:	48 8b 07             	mov    (%rdi),%rax
  4007a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007af:	00 
  4007b0:	48 89 c3             	mov    %rax,%rbx
  4007b3:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4007b7:	48 85 c0             	test   %rax,%rax
  4007ba:	75 f4                	jne    4007b0 <push_Back+0x10>
  4007bc:	bf 10 00 00 00       	mov    $0x10,%edi
  4007c1:	e8 0a fe ff ff       	callq  4005d0 <malloc@plt>
  4007c6:	48 85 c0             	test   %rax,%rax
  4007c9:	74 0c                	je     4007d7 <push_Back+0x37>
  4007cb:	89 28                	mov    %ebp,(%rax)
  4007cd:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4007d4:	00 
  4007d5:	eb 0c                	jmp    4007e3 <push_Back+0x43>
  4007d7:	bf 00 10 40 00       	mov    $0x401000,%edi
  4007dc:	e8 cf fd ff ff       	callq  4005b0 <puts@plt>
  4007e1:	31 c0                	xor    %eax,%eax
  4007e3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4007e7:	48 83 c4 08          	add    $0x8,%rsp
  4007eb:	5b                   	pop    %rbx
  4007ec:	5d                   	pop    %rbp
  4007ed:	c3                   	retq   
  4007ee:	66 90                	xchg   %ax,%ax

00000000004007f0 <pop_Front>:
  4007f0:	48 8b 07             	mov    (%rdi),%rax
  4007f3:	48 8b 78 08          	mov    0x8(%rax),%rdi
  4007f7:	48 85 ff             	test   %rdi,%rdi
  4007fa:	74 19                	je     400815 <pop_Front+0x25>
  4007fc:	50                   	push   %rax
  4007fd:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  400801:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400805:	e8 86 fd ff ff       	callq  400590 <free@plt>
  40080a:	bf fa 0f 40 00       	mov    $0x400ffa,%edi
  40080f:	58                   	pop    %rax
  400810:	e9 9b fd ff ff       	jmpq   4005b0 <puts@plt>
  400815:	c3                   	retq   
  400816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40081d:	00 00 00 

0000000000400820 <pop_Back>:
  400820:	53                   	push   %rbx
  400821:	48 8b 07             	mov    (%rdi),%rax
  400824:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40082b:	00 00 00 00 00 
  400830:	48 89 fb             	mov    %rdi,%rbx
  400833:	48 89 c7             	mov    %rax,%rdi
  400836:	48 8b 47 08          	mov    0x8(%rdi),%rax
  40083a:	48 85 c0             	test   %rax,%rax
  40083d:	75 f1                	jne    400830 <pop_Back+0x10>
  40083f:	e8 4c fd ff ff       	callq  400590 <free@plt>
  400844:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  40084b:	00 
  40084c:	bf fa 0f 40 00       	mov    $0x400ffa,%edi
  400851:	5b                   	pop    %rbx
  400852:	e9 59 fd ff ff       	jmpq   4005b0 <puts@plt>
  400857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40085e:	00 00 

0000000000400860 <delete_List>:
  400860:	48 8b 07             	mov    (%rdi),%rax
  400863:	48 8b 78 08          	mov    0x8(%rax),%rdi
  400867:	48 85 ff             	test   %rdi,%rdi
  40086a:	75 1d                	jne    400889 <delete_List+0x29>
  40086c:	bf 20 10 40 00       	mov    $0x401020,%edi
  400871:	e9 3a fd ff ff       	jmpq   4005b0 <puts@plt>
  400876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40087d:	00 00 00 
  400880:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  400884:	48 85 ff             	test   %rdi,%rdi
  400887:	74 e3                	je     40086c <delete_List+0xc>
  400889:	39 37                	cmp    %esi,(%rdi)
  40088b:	75 f3                	jne    400880 <delete_List+0x20>
  40088d:	50                   	push   %rax
  40088e:	e8 fd fc ff ff       	callq  400590 <free@plt>
  400893:	bf 40 10 40 00       	mov    $0x401040,%edi
  400898:	58                   	pop    %rax
  400899:	e9 12 fd ff ff       	jmpq   4005b0 <puts@plt>
  40089e:	66 90                	xchg   %ax,%ax

00000000004008a0 <print_List>:
  4008a0:	53                   	push   %rbx
  4008a1:	48 8b 07             	mov    (%rdi),%rax
  4008a4:	48 8b 58 08          	mov    0x8(%rax),%rbx
  4008a8:	48 85 db             	test   %rbx,%rbx
  4008ab:	74 25                	je     4008d2 <print_List+0x32>
  4008ad:	0f 1f 00             	nopl   (%rax)
  4008b0:	8b 33                	mov    (%rbx),%esi
  4008b2:	bf c0 0f 40 00       	mov    $0x400fc0,%edi
  4008b7:	31 c0                	xor    %eax,%eax
  4008b9:	e8 02 fd ff ff       	callq  4005c0 <printf@plt>
  4008be:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4008c2:	48 85 db             	test   %rbx,%rbx
  4008c5:	75 e9                	jne    4008b0 <print_List+0x10>
  4008c7:	bf 0a 00 00 00       	mov    $0xa,%edi
  4008cc:	5b                   	pop    %rbx
  4008cd:	e9 ce fc ff ff       	jmpq   4005a0 <putchar@plt>
  4008d2:	bf f5 0f 40 00       	mov    $0x400ff5,%edi
  4008d7:	5b                   	pop    %rbx
  4008d8:	e9 d3 fc ff ff       	jmpq   4005b0 <puts@plt>
  4008dd:	0f 1f 00             	nopl   (%rax)

00000000004008e0 <length_List>:
  4008e0:	48 8b 0f             	mov    (%rdi),%rcx
  4008e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4008e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008ef:	00 
  4008f0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  4008f4:	83 c0 01             	add    $0x1,%eax
  4008f7:	48 85 c9             	test   %rcx,%rcx
  4008fa:	75 f4                	jne    4008f0 <length_List+0x10>
  4008fc:	c3                   	retq   
  4008fd:	0f 1f 00             	nopl   (%rax)

0000000000400900 <search_List>:
  400900:	48 8b 07             	mov    (%rdi),%rax
  400903:	48 8b 48 08          	mov    0x8(%rax),%rcx
  400907:	48 85 c9             	test   %rcx,%rcx
  40090a:	74 24                	je     400930 <search_List+0x30>
  40090c:	b8 01 00 00 00       	mov    $0x1,%eax
  400911:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400918:	0f 1f 84 00 00 00 00 
  40091f:	00 
  400920:	39 31                	cmp    %esi,(%rcx)
  400922:	74 1d                	je     400941 <search_List+0x41>
  400924:	83 c0 01             	add    $0x1,%eax
  400927:	48 8b 49 08          	mov    0x8(%rcx),%rcx
  40092b:	48 85 c9             	test   %rcx,%rcx
  40092e:	75 f0                	jne    400920 <search_List+0x20>
  400930:	50                   	push   %rax
  400931:	bf 60 10 40 00       	mov    $0x401060,%edi
  400936:	e8 75 fc ff ff       	callq  4005b0 <puts@plt>
  40093b:	31 c0                	xor    %eax,%eax
  40093d:	48 83 c4 08          	add    $0x8,%rsp
  400941:	c3                   	retq   
  400942:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400949:	1f 84 00 00 00 00 00 

0000000000400950 <destory_List>:
  400950:	41 56                	push   %r14
  400952:	53                   	push   %rbx
  400953:	50                   	push   %rax
  400954:	49 89 fe             	mov    %rdi,%r14
  400957:	49 8b 06             	mov    (%r14),%rax
  40095a:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40095e:	48 85 ff             	test   %rdi,%rdi
  400961:	74 21                	je     400984 <destory_List+0x34>
  400963:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40096a:	84 00 00 00 00 00 
  400970:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  400974:	e8 17 fc ff ff       	callq  400590 <free@plt>
  400979:	48 89 df             	mov    %rbx,%rdi
  40097c:	48 85 db             	test   %rbx,%rbx
  40097f:	75 ef                	jne    400970 <destory_List+0x20>
  400981:	49 8b 06             	mov    (%r14),%rax
  400984:	48 83 c0 08          	add    $0x8,%rax
  400988:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40098f:	bf fa 0f 40 00       	mov    $0x400ffa,%edi
  400994:	48 83 c4 08          	add    $0x8,%rsp
  400998:	5b                   	pop    %rbx
  400999:	41 5e                	pop    %r14
  40099b:	e9 10 fc ff ff       	jmpq   4005b0 <puts@plt>

00000000004009a0 <invert>:
  4009a0:	48 8b 47 08          	mov    0x8(%rdi),%rax
  4009a4:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  4009ab:	00 
  4009ac:	48 85 c0             	test   %rax,%rax
  4009af:	74 26                	je     4009d7 <invert+0x37>
  4009b1:	31 c9                	xor    %ecx,%ecx
  4009b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4009ba:	84 00 00 00 00 00 
  4009c0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4009c4:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4009c8:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4009cc:	48 89 c1             	mov    %rax,%rcx
  4009cf:	48 89 d0             	mov    %rdx,%rax
  4009d2:	48 85 d2             	test   %rdx,%rdx
  4009d5:	75 e9                	jne    4009c0 <invert+0x20>
  4009d7:	c3                   	retq   
  4009d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009df:	00 

00000000004009e0 <main>:
  4009e0:	55                   	push   %rbp
  4009e1:	41 57                	push   %r15
  4009e3:	41 56                	push   %r14
  4009e5:	41 54                	push   %r12
  4009e7:	53                   	push   %rbx
  4009e8:	48 83 ec 10          	sub    $0x10,%rsp
  4009ec:	45 31 ff             	xor    %r15d,%r15d
  4009ef:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
  4009f4:	eb 0a                	jmp    400a00 <main+0x20>
  4009f6:	bf fa 0f 40 00       	mov    $0x400ffa,%edi
  4009fb:	e8 b0 fb ff ff       	callq  4005b0 <puts@plt>
  400a00:	48 8b 3d 59 16 20 00 	mov    0x201659(%rip),%rdi        # 602060 <stdin@@GLIBC_2.2.5>
  400a07:	e8 d4 fb ff ff       	callq  4005e0 <_IO_getc@plt>
  400a0c:	83 c0 dd             	add    $0xffffffdd,%eax
  400a0f:	83 f8 3e             	cmp    $0x3e,%eax
  400a12:	77 ec                	ja     400a00 <main+0x20>
  400a14:	ff 24 c5 c8 0d 40 00 	jmpq   *0x400dc8(,%rax,8)
  400a1b:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  400a20:	48 85 ff             	test   %rdi,%rdi
  400a23:	74 1c                	je     400a41 <main+0x61>
  400a25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a2c:	00 00 00 00 
  400a30:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  400a34:	e8 57 fb ff ff       	callq  400590 <free@plt>
  400a39:	48 89 df             	mov    %rbx,%rdi
  400a3c:	48 85 db             	test   %rbx,%rbx
  400a3f:	75 ef                	jne    400a30 <main+0x50>
  400a41:	49 c7 44 24 08 00 00 	movq   $0x0,0x8(%r12)
  400a48:	00 00 
  400a4a:	eb aa                	jmp    4009f6 <main+0x16>
  400a4c:	bf 10 00 00 00       	mov    $0x10,%edi
  400a51:	e8 7a fb ff ff       	callq  4005d0 <malloc@plt>
  400a56:	49 89 c4             	mov    %rax,%r12
  400a59:	49 c7 44 24 08 00 00 	movq   $0x0,0x8(%r12)
  400a60:	00 00 
  400a62:	eb 9c                	jmp    400a00 <main+0x20>
  400a64:	bf f0 10 40 00       	mov    $0x4010f0,%edi
  400a69:	e8 42 fb ff ff       	callq  4005b0 <puts@plt>
  400a6e:	bf c4 0f 40 00       	mov    $0x400fc4,%edi
  400a73:	31 c0                	xor    %eax,%eax
  400a75:	4c 89 f6             	mov    %r14,%rsi
  400a78:	e8 73 fb ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400a7d:	8b 6c 24 0c          	mov    0xc(%rsp),%ebp
  400a81:	4c 89 e0             	mov    %r12,%rax
  400a84:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400a8b:	00 00 00 00 00 
  400a90:	48 89 c3             	mov    %rax,%rbx
  400a93:	48 8b 43 08          	mov    0x8(%rbx),%rax
  400a97:	48 85 c0             	test   %rax,%rax
  400a9a:	75 f4                	jne    400a90 <main+0xb0>
  400a9c:	bf 10 00 00 00       	mov    $0x10,%edi
  400aa1:	e8 2a fb ff ff       	callq  4005d0 <malloc@plt>
  400aa6:	48 85 c0             	test   %rax,%rax
  400aa9:	0f 84 de 01 00 00    	je     400c8d <main+0x2ad>
  400aaf:	89 28                	mov    %ebp,(%rax)
  400ab1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400ab8:	00 
  400ab9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  400abd:	e9 3e ff ff ff       	jmpq   400a00 <main+0x20>
  400ac2:	bf c0 10 40 00       	mov    $0x4010c0,%edi
  400ac7:	e8 e4 fa ff ff       	callq  4005b0 <puts@plt>
  400acc:	bf c4 0f 40 00       	mov    $0x400fc4,%edi
  400ad1:	31 c0                	xor    %eax,%eax
  400ad3:	4c 89 f6             	mov    %r14,%rsi
  400ad6:	e8 15 fb ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400adb:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
  400adf:	bf 10 00 00 00       	mov    $0x10,%edi
  400ae4:	e8 e7 fa ff ff       	callq  4005d0 <malloc@plt>
  400ae9:	48 85 c0             	test   %rax,%rax
  400aec:	0f 84 ae 01 00 00    	je     400ca0 <main+0x2c0>
  400af2:	89 18                	mov    %ebx,(%rax)
  400af4:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400afb:	00 
  400afc:	e9 ab 01 00 00       	jmpq   400cac <main+0x2cc>
  400b01:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  400b06:	48 85 ff             	test   %rdi,%rdi
  400b09:	0f 84 f1 fe ff ff    	je     400a00 <main+0x20>
  400b0f:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400b13:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  400b18:	e8 73 fa ff ff       	callq  400590 <free@plt>
  400b1d:	e9 d4 fe ff ff       	jmpq   4009f6 <main+0x16>
  400b22:	4c 89 e0             	mov    %r12,%rax
  400b25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400b2c:	00 00 00 00 
  400b30:	48 89 fb             	mov    %rdi,%rbx
  400b33:	48 89 c7             	mov    %rax,%rdi
  400b36:	48 8b 47 08          	mov    0x8(%rdi),%rax
  400b3a:	48 85 c0             	test   %rax,%rax
  400b3d:	75 f1                	jne    400b30 <main+0x150>
  400b3f:	e8 4c fa ff ff       	callq  400590 <free@plt>
  400b44:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
  400b4b:	00 
  400b4c:	e9 a5 fe ff ff       	jmpq   4009f6 <main+0x16>
  400b51:	49 8b 5c 24 08       	mov    0x8(%r12),%rbx
  400b56:	48 85 db             	test   %rbx,%rbx
  400b59:	0f 84 60 01 00 00    	je     400cbf <main+0x2df>
  400b5f:	90                   	nop
  400b60:	8b 33                	mov    (%rbx),%esi
  400b62:	bf c0 0f 40 00       	mov    $0x400fc0,%edi
  400b67:	31 c0                	xor    %eax,%eax
  400b69:	e8 52 fa ff ff       	callq  4005c0 <printf@plt>
  400b6e:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400b72:	48 85 db             	test   %rbx,%rbx
  400b75:	75 e9                	jne    400b60 <main+0x180>
  400b77:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b7c:	e8 1f fa ff ff       	callq  4005a0 <putchar@plt>
  400b81:	e9 7a fe ff ff       	jmpq   400a00 <main+0x20>
  400b86:	bf a0 10 40 00       	mov    $0x4010a0,%edi
  400b8b:	e8 20 fa ff ff       	callq  4005b0 <puts@plt>
  400b90:	bf c4 0f 40 00       	mov    $0x400fc4,%edi
  400b95:	31 c0                	xor    %eax,%eax
  400b97:	4c 89 f6             	mov    %r14,%rsi
  400b9a:	e8 51 fa ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400b9f:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  400ba4:	48 85 ff             	test   %rdi,%rdi
  400ba7:	74 18                	je     400bc1 <main+0x1e1>
  400ba9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400bad:	0f 1f 00             	nopl   (%rax)
  400bb0:	39 07                	cmp    %eax,(%rdi)
  400bb2:	0f 84 27 01 00 00    	je     400cdf <main+0x2ff>
  400bb8:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  400bbc:	48 85 ff             	test   %rdi,%rdi
  400bbf:	75 ef                	jne    400bb0 <main+0x1d0>
  400bc1:	bf 20 10 40 00       	mov    $0x401020,%edi
  400bc6:	e8 e5 f9 ff ff       	callq  4005b0 <puts@plt>
  400bcb:	e9 30 fe ff ff       	jmpq   400a00 <main+0x20>
  400bd0:	be ff ff ff ff       	mov    $0xffffffff,%esi
  400bd5:	4c 89 e0             	mov    %r12,%rax
  400bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400bdf:	00 
  400be0:	48 8b 40 08          	mov    0x8(%rax),%rax
  400be4:	83 c6 01             	add    $0x1,%esi
  400be7:	48 85 c0             	test   %rax,%rax
  400bea:	75 f4                	jne    400be0 <main+0x200>
  400bec:	bf c7 0f 40 00       	mov    $0x400fc7,%edi
  400bf1:	31 c0                	xor    %eax,%eax
  400bf3:	e8 c8 f9 ff ff       	callq  4005c0 <printf@plt>
  400bf8:	e9 03 fe ff ff       	jmpq   400a00 <main+0x20>
  400bfd:	bf 80 10 40 00       	mov    $0x401080,%edi
  400c02:	e8 a9 f9 ff ff       	callq  4005b0 <puts@plt>
  400c07:	bf c4 0f 40 00       	mov    $0x400fc4,%edi
  400c0c:	31 c0                	xor    %eax,%eax
  400c0e:	4c 89 f6             	mov    %r14,%rsi
  400c11:	e8 da f9 ff ff       	callq  4005f0 <__isoc99_scanf@plt>
  400c16:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  400c1b:	48 85 c0             	test   %rax,%rax
  400c1e:	74 24                	je     400c44 <main+0x264>
  400c20:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  400c24:	ba 01 00 00 00       	mov    $0x1,%edx
  400c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400c30:	39 30                	cmp    %esi,(%rax)
  400c32:	0f 84 96 00 00 00    	je     400cce <main+0x2ee>
  400c38:	83 c2 01             	add    $0x1,%edx
  400c3b:	48 8b 40 08          	mov    0x8(%rax),%rax
  400c3f:	48 85 c0             	test   %rax,%rax
  400c42:	75 ec                	jne    400c30 <main+0x250>
  400c44:	bf 60 10 40 00       	mov    $0x401060,%edi
  400c49:	e8 62 f9 ff ff       	callq  4005b0 <puts@plt>
  400c4e:	e9 ad fd ff ff       	jmpq   400a00 <main+0x20>
  400c53:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  400c58:	49 c7 44 24 08 00 00 	movq   $0x0,0x8(%r12)
  400c5f:	00 00 
  400c61:	48 85 c0             	test   %rax,%rax
  400c64:	0f 84 96 fd ff ff    	je     400a00 <main+0x20>
  400c6a:	31 c9                	xor    %ecx,%ecx
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)
  400c70:	48 8b 50 08          	mov    0x8(%rax),%rdx
  400c74:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400c78:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  400c7d:	48 89 c1             	mov    %rax,%rcx
  400c80:	48 89 d0             	mov    %rdx,%rax
  400c83:	48 85 d2             	test   %rdx,%rdx
  400c86:	75 e8                	jne    400c70 <main+0x290>
  400c88:	e9 73 fd ff ff       	jmpq   400a00 <main+0x20>
  400c8d:	bf 00 10 40 00       	mov    $0x401000,%edi
  400c92:	e8 19 f9 ff ff       	callq  4005b0 <puts@plt>
  400c97:	4c 89 7b 08          	mov    %r15,0x8(%rbx)
  400c9b:	e9 60 fd ff ff       	jmpq   400a00 <main+0x20>
  400ca0:	bf 00 10 40 00       	mov    $0x401000,%edi
  400ca5:	e8 06 f9 ff ff       	callq  4005b0 <puts@plt>
  400caa:	31 c0                	xor    %eax,%eax
  400cac:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
  400cb1:	48 89 48 08          	mov    %rcx,0x8(%rax)
  400cb5:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  400cba:	e9 41 fd ff ff       	jmpq   400a00 <main+0x20>
  400cbf:	bf f5 0f 40 00       	mov    $0x400ff5,%edi
  400cc4:	e8 e7 f8 ff ff       	callq  4005b0 <puts@plt>
  400cc9:	e9 32 fd ff ff       	jmpq   400a00 <main+0x20>
  400cce:	bf d9 0f 40 00       	mov    $0x400fd9,%edi
  400cd3:	31 c0                	xor    %eax,%eax
  400cd5:	e8 e6 f8 ff ff       	callq  4005c0 <printf@plt>
  400cda:	e9 21 fd ff ff       	jmpq   400a00 <main+0x20>
  400cdf:	e8 ac f8 ff ff       	callq  400590 <free@plt>
  400ce4:	bf 40 10 40 00       	mov    $0x401040,%edi
  400ce9:	e8 c2 f8 ff ff       	callq  4005b0 <puts@plt>
  400cee:	e9 0d fd ff ff       	jmpq   400a00 <main+0x20>
  400cf3:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  400cf8:	48 85 ff             	test   %rdi,%rdi
  400cfb:	74 14                	je     400d11 <main+0x331>
  400cfd:	0f 1f 00             	nopl   (%rax)
  400d00:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  400d04:	e8 87 f8 ff ff       	callq  400590 <free@plt>
  400d09:	48 89 df             	mov    %rbx,%rdi
  400d0c:	48 85 db             	test   %rbx,%rbx
  400d0f:	75 ef                	jne    400d00 <main+0x320>
  400d11:	49 c7 44 24 08 00 00 	movq   $0x0,0x8(%r12)
  400d18:	00 00 
  400d1a:	bf fa 0f 40 00       	mov    $0x400ffa,%edi
  400d1f:	e8 8c f8 ff ff       	callq  4005b0 <puts@plt>
  400d24:	4c 89 e7             	mov    %r12,%rdi
  400d27:	e8 64 f8 ff ff       	callq  400590 <free@plt>
  400d2c:	31 c0                	xor    %eax,%eax
  400d2e:	48 83 c4 10          	add    $0x10,%rsp
  400d32:	5b                   	pop    %rbx
  400d33:	41 5c                	pop    %r12
  400d35:	41 5e                	pop    %r14
  400d37:	41 5f                	pop    %r15
  400d39:	5d                   	pop    %rbp
  400d3a:	c3                   	retq   
  400d3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

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
