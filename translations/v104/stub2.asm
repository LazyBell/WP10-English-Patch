
stub2.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
       0:	81 fa fc 0d 00 00    	cmp    $0xdfc,%edx
       6:	73 0c                	jae    0x14
       8:	48 8d 05 e9 1e 00 00 	lea    0x1ee9(%rip),%rax        # 0x1ef8
       f:	46 0f b7 24 60       	movzwl (%rax,%r12,2),%r12d
      14:	41 c7 87 0c 11 01 00 	movl   $0x0,0x1110c(%r15)
      1b:	00 00 00 00 
      1f:	41 c7 87 44 11 01 00 	movl   $0x1a3,0x11144(%r15)
      26:	a3 01 00 00 
      2a:	41 c7 87 10 11 01 00 	movl   $0x1a3,0x11110(%r15)
      31:	a3 01 00 00 
      35:	41 c7 87 48 11 01 00 	movl   $0x16f,0x11148(%r15)
      3c:	6f 01 00 00 
      40:	41 c7 87 14 11 01 00 	movl   $0x312,0x11114(%r15)
      47:	12 03 00 00 
      4b:	41 c7 87 4c 11 01 00 	movl   $0x158,0x1114c(%r15)
      52:	58 01 00 00 
      56:	41 c7 87 18 11 01 00 	movl   $0x46a,0x11118(%r15)
      5d:	6a 04 00 00 
      61:	41 c7 87 50 11 01 00 	movl   $0x10a,0x11150(%r15)
      68:	0a 01 00 00 
      6c:	41 c7 87 1c 11 01 00 	movl   $0x574,0x1111c(%r15)
      73:	74 05 00 00 
      77:	41 c7 87 54 11 01 00 	movl   $0x14e,0x11154(%r15)
      7e:	4e 01 00 00 
      82:	41 c7 87 20 11 01 00 	movl   $0x6c2,0x11120(%r15)
      89:	c2 06 00 00 
      8d:	41 c7 87 58 11 01 00 	movl   $0x173,0x11158(%r15)
      94:	73 01 00 00 
      98:	41 c7 87 24 11 01 00 	movl   $0x835,0x11124(%r15)
      9f:	35 08 00 00 
      a3:	41 c7 87 5c 11 01 00 	movl   $0x1cc,0x1115c(%r15)
      aa:	cc 01 00 00 
      ae:	41 c7 87 28 11 01 00 	movl   $0xa01,0x11128(%r15)
      b5:	01 0a 00 00 
      b9:	41 c7 87 60 11 01 00 	movl   $0x1f7,0x11160(%r15)
      c0:	f7 01 00 00 
      c4:	41 c7 87 2c 11 01 00 	movl   $0xbf8,0x1112c(%r15)
      cb:	f8 0b 00 00 
      cf:	41 c7 87 64 11 01 00 	movl   $0x12c,0x11164(%r15)
      d6:	2c 01 00 00 
      da:	41 c7 87 30 11 01 00 	movl   $0xd24,0x11130(%r15)
      e1:	24 0d 00 00 
      e5:	41 c7 87 68 11 01 00 	movl   $0xd8,0x11168(%r15)
      ec:	d8 00 00 00 
      f0:	ff 25 32 01 00 00    	jmp    *0x132(%rip)        # 0x228
	...
      fe:	00 00                	add    %al,(%rax)
     100:	81 f9 fc 0d 00 00    	cmp    $0xdfc,%ecx
     106:	73 0b                	jae    0x113
     108:	48 8d 05 f1 01 00 00 	lea    0x1f1(%rip),%rax        # 0x300
     10f:	0f b7 0c 48          	movzwl (%rax,%rcx,2),%ecx
     113:	ff 25 e7 00 00 00    	jmp    *0xe7(%rip)        # 0x200
	...
     12d:	00 00                	add    %al,(%rax)
     12f:	00 81 f9 fc 0d 00    	add    %al,0xdfcf9(%rcx)
     135:	00 73 0b             	add    %dh,0xb(%rbx)
     138:	48 8d 05 c1 01 00 00 	lea    0x1c1(%rip),%rax        # 0x300
     13f:	0f b7 0c 48          	movzwl (%rax,%rcx,2),%ecx
     143:	ff 25 bf 00 00 00    	jmp    *0xbf(%rip)        # 0x208
	...
     15d:	00 00                	add    %al,(%rax)
     15f:	00 81 fa fc 0d 00    	add    %al,0xdfcfa(%rcx)
     165:	00 73 0b             	add    %dh,0xb(%rbx)
     168:	48 8d 05 91 01 00 00 	lea    0x191(%rip),%rax        # 0x300
     16f:	0f b7 14 50          	movzwl (%rax,%rdx,2),%edx
     173:	ff 25 97 00 00 00    	jmp    *0x97(%rip)        # 0x210
	...
     18d:	00 00                	add    %al,(%rax)
     18f:	00 41 81             	add    %al,-0x7f(%rcx)
     192:	f8                   	clc    
     193:	fc                   	cld    
     194:	0d 00 00 73 0c       	or     $0xc730000,%eax
     199:	48 8d 05 60 01 00 00 	lea    0x160(%rip),%rax        # 0x300
     1a0:	46 0f b7 04 40       	movzwl (%rax,%r8,2),%r8d
     1a5:	ff 25 6d 00 00 00    	jmp    *0x6d(%rip)        # 0x218
	...
     1bf:	00 41 81             	add    %al,-0x7f(%rcx)
     1c2:	f8                   	clc    
     1c3:	fc                   	cld    
     1c4:	0d 00 00 73 0c       	or     $0xc730000,%eax
     1c9:	48 8d 05 30 01 00 00 	lea    0x130(%rip),%rax        # 0x300
     1d0:	46 0f b7 04 40       	movzwl (%rax,%r8,2),%r8d
     1d5:	ff 25 45 00 00 00    	jmp    *0x45(%rip)        # 0x220
	...
     23f:	00 41 2d             	add    %al,0x2d(%rcx)
     242:	42 00 00             	rex.X add %al,(%rax)
     245:	00 00                	add    %al,(%rax)
     247:	00 43 2d             	add    %al,0x2d(%rbx)
     24a:	44 00 00             	add    %r8b,(%rax)
     24d:	00 00                	add    %al,(%rax)
     24f:	00 45 2d             	add    %al,0x2d(%rbp)
     252:	47 00 00             	rex.RXB add %r8b,(%r8)
     255:	00 00                	add    %al,(%rax)
     257:	00 48 2d             	add    %cl,0x2d(%rax)
     25a:	4a 00 00             	rex.WX add %al,(%rax)
     25d:	00 00                	add    %al,(%rax)
     25f:	00 4b 2d             	add    %cl,0x2d(%rbx)
     262:	4c 00 00             	rex.WR add %r8b,(%rax)
     265:	00 00                	add    %al,(%rax)
     267:	00 4d 00             	add    %cl,0x0(%rbp)
     26a:	00 00                	add    %al,(%rax)
     26c:	00 00                	add    %al,(%rax)
     26e:	00 00                	add    %al,(%rax)
     270:	4e 2d 52 00 00 00    	rex.WRX sub $0x52,%rax
     276:	00 00                	add    %al,(%rax)
     278:	53                   	push   %rbx
     279:	00 00                	add    %al,(%rax)
     27b:	00 00                	add    %al,(%rax)
     27d:	00 00                	add    %al,(%rax)
     27f:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
     283:	00 00                	add    %al,(%rax)
     285:	00 00                	add    %al,(%rax)
     287:	00 55 2d             	add    %dl,0x2d(%rbp)
     28a:	5a                   	pop    %rdx
	...
     29f:	00 6b 65             	add    %ch,0x65(%rbx)
     2a2:	72 6e                	jb     0x312
     2a4:	65 6c                	gs insb (%dx),%es:(%rdi)
     2a6:	33 32                	xor    (%rdx),%esi
     2a8:	2e 64 6c             	cs fs insb (%dx),%es:(%rdi)
     2ab:	6c                   	insb   (%dx),%es:(%rdi)
     2ac:	00 00                	add    %al,(%rax)
     2ae:	00 00                	add    %al,(%rax)
     2b0:	46 6c                	rex.RX insb (%dx),%es:(%rdi)
     2b2:	75 73                	jne    0x327
     2b4:	68 49 6e 73 74       	push   $0x74736e49
     2b9:	72 75                	jb     0x330
     2bb:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
     2bf:	6e                   	outsb  %ds:(%rsi),(%dx)
     2c0:	43 61                	rex.XB (bad) 
     2c2:	63 68 65             	movsxd 0x65(%rax),%ebp
	...
     2fd:	00 00                	add    %al,(%rax)
     2ff:	00 5a 00             	add    %bl,0x0(%rdx)
     302:	a8 01                	test   $0x1,%al
     304:	a0 01 a6 01 f3 01 f1 	movabs 0xa401f101f301a601,%al
     30b:	01 a4 
     30d:	01 f5                	add    %esi,%ebp
     30f:	01 f6                	add    %esi,%esi
     311:	01 f2                	add    %esi,%edx
     313:	01 f0                	add    %esi,%eax
     315:	01 f4                	add    %esi,%esp
     317:	01 f8                	add    %edi,%eax
     319:	01 f9                	add    %edi,%ecx
     31b:	01 15 00 87 00 92    	add    %edx,-0x6dff7900(%rip)        # 0xffffffff92008a21
     321:	00 91 00 8e 00 90    	add    %dl,-0x6fff7200(%rcx)
     327:	00 8f 00 20 00 f7    	add    %cl,-0x8ffe000(%rdi)
     32d:	01 57 00             	add    %edx,0x0(%rdi)
     330:	22 00                	and    (%rax),%al
     332:	24 00                	and    $0x0,%al
     334:	25 00 56 00 44       	and    $0x44005600,%eax
     339:	00 80 00 5d 00 70    	add    %al,0x70005d00(%rax)
     33f:	00 73 00             	add    %dh,0x0(%rbx)
     342:	74 00                	je     0x344
     344:	64 00 63 00          	add    %ah,%fs:0x0(%rbx)
     348:	62                   	(bad)  
     349:	00 6b 00             	add    %ch,0x0(%rbx)
     34c:	6c                   	insb   (%dx),%es:(%rdi)
     34d:	00 6d 00             	add    %ch,0x0(%rbp)
     350:	5c                   	pop    %rsp
     351:	00 6e 00             	add    %ch,0x0(%rsi)
     354:	61                   	(bad)  
     355:	00 71 00             	add    %dh,0x0(%rcx)
     358:	72 00                	jb     0x35a
     35a:	66 00 67 00          	data16 add %ah,0x0(%rdi)
     35e:	65 00 5e 00          	add    %bl,%gs:0x0(%rsi)
     362:	5f                   	pop    %rdi
     363:	00 7e 00             	add    %bh,0x0(%rsi)
     366:	7b 00                	jnp    0x368
     368:	77 00                	ja     0x36a
     36a:	78 00                	js     0x36c
     36c:	76 00                	jbe    0x36e
     36e:	75 00                	jne    0x370
     370:	79 00                	jns    0x372
     372:	7c 00                	jl     0x374
     374:	7a 00                	jp     0x376
     376:	60                   	(bad)  
     377:	00 7d 00             	add    %bh,0x0(%rbp)
     37a:	7f 00                	jg     0x37c
     37c:	68 00 6a 00 6f       	push   $0x6f006a00
     381:	00 69 00             	add    %ch,0x0(%rcx)
     384:	81 00 1c 00 1b 00    	addl   $0x1b001c,(%rax)
     38a:	95                   	xchg   %eax,%ebp
     38b:	01 8b 00 8a 00 8d    	add    %ecx,-0x72ff7600(%rbx)
     391:	00 8c 00 26 00 2d 00 	add    %cl,0x2d0026(%rax,%rax,1)
     398:	2f                   	(bad)  
     399:	00 30                	add    %dh,(%rax)
     39b:	00 29                	add    %ch,(%rcx)
     39d:	00 2a                	add    %ch,(%rdx)
     39f:	00 28                	add    %ch,(%rax)
     3a1:	00 32                	add    %dh,(%rdx)
     3a3:	00 2e                	add    %ch,(%rsi)
     3a5:	00 31                	add    %dh,(%rcx)
     3a7:	00 2b                	add    %ch,(%rbx)
     3a9:	00 2c 00             	add    %ch,(%rax,%rax,1)
     3ac:	27                   	(bad)  
     3ad:	00 33                	add    %dh,(%rbx)
     3af:	00 34 00             	add    %dh,(%rax,%rax,1)
     3b2:	2a 01                	sub    (%rcx),%al
     3b4:	0a 00                	or     (%rax),%al
     3b6:	7e 01                	jle    0x3b9
     3b8:	7f 01                	jg     0x3bb
     3ba:	8f 01                	pop    (%rcx)
     3bc:	8e 01                	mov    (%rcx),%es
     3be:	82                   	(bad)  
     3bf:	01 84 01 83 01 88 01 	add    %eax,0x1880183(%rcx,%rax,1)
     3c6:	91                   	xchg   %eax,%ecx
     3c7:	01 94 01 92 01 93 01 	add    %edx,0x1930192(%rcx,%rax,1)
     3ce:	8d 01                	lea    (%rcx),%eax
     3d0:	8c 01                	mov    %es,(%rcx)
     3d2:	86 01                	xchg   %al,(%rcx)
     3d4:	87 01                	xchg   %eax,(%rcx)
     3d6:	8b 01                	mov    (%rcx),%eax
     3d8:	8a 01                	mov    (%rcx),%al
     3da:	90                   	nop
     3db:	01 80 01 81 01 85    	add    %eax,-0x7afe7eff(%rax)
     3e1:	01 89 01 1d 00 1e    	add    %ecx,0x1e001d01(%rcx)
     3e7:	00 21                	add    %ah,(%rcx)
     3e9:	00 1f                	add    %bl,(%rdi)
     3eb:	00 af 00 b8 00 b9    	add    %ch,-0x46ff4800(%rdi)
     3f1:	00 ba 00 bb 00 bc    	add    %bh,-0x43ff4500(%rdx)
     3f7:	00 bd 00 c0 00 aa    	add    %bh,-0x55ff4000(%rbp)
     3fd:	00 ac 00 b1 00 3f 02 	add    %ch,0x23f00b1(%rax,%rax,1)
     404:	3d 02 3e 02 43       	cmp    $0x43023e02,%eax
     409:	02 42 02             	add    0x2(%rdx),%al
     40c:	40 02 c5             	add    %bpl,%al
     40f:	00 c6                	add    %al,%dh
     411:	00 41 02             	add    %al,0x2(%rcx)
     414:	c3                   	ret    
     415:	00 c4                	add    %al,%ah
     417:	00 c1                	add    %al,%cl
     419:	00 eb                	add    %ch,%bl
     41b:	00 c8                	add    %cl,%al
     41d:	00 c9                	add    %cl,%cl
     41f:	00 cb                	add    %cl,%bl
     421:	00 bf 00 be 00 a8    	add    %bh,-0x57ff4200(%rdi)
     427:	00 ad 00 a9 00 d7    	add    %ch,-0x28ff5700(%rbp)
     42d:	00 99 00 98 00 d8    	add    %bl,-0x27ff6800(%rcx)
     433:	00 d9                	add    %bl,%cl
     435:	00 db                	add    %bl,%bl
     437:	00 df                	add    %bl,%bh
     439:	00 9f 00 9e 00 9d    	add    %bl,-0x62ff6200(%rdi)
     43f:	00 9c 00 9a 00 e0 00 	add    %bl,0xe0009a(%rax,%rax,1)
     446:	9b                   	fwait
     447:	00 da                	add    %bl,%dl
     449:	00 84 00 d0 00 d1 00 	add    %al,0xd100d0(%rax,%rax,1)
     450:	d4                   	(bad)  
     451:	00 d6                	add    %dl,%dh
     453:	00 d5                	add    %dl,%ch
     455:	00 d3                	add    %dl,%bl
     457:	00 cf                	add    %cl,%bh
     459:	00 ec                	add    %ch,%ah
     45b:	01 85 00 86 00 83    	add    %eax,-0x7cff7a00(%rbp)
     461:	00 82 00 fa 01 fb    	add    %al,-0x4fe0600(%rdx)
     467:	01 88 00 95 00 97    	add    %ecx,-0x68ff6b00(%rax)
     46d:	00 96 00 58 00 89    	add    %dl,-0x76ffa800(%rsi)
     473:	00 94 00 93 00 b0 00 	add    %dl,0xb00093(%rax,%rax,1)
     47a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     47b:	00 a1 00 a3 00 a4    	add    %ah,-0x5bff5d00(%rcx)
     481:	00 a5 00 a2 00 b2    	add    %ah,-0x4dff5e00(%rbp)
     487:	00 b4 00 b3 00 b5 00 	add    %dh,0xb500b3(%rax,%rax,1)
     48e:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     48f:	00 ab 00 ca 00 ae    	add    %ch,-0x51ff3600(%rbx)
     495:	00 c7                	add    %al,%bh
     497:	00 cd                	add    %cl,%ch
     499:	00 cc                	add    %cl,%ah
     49b:	00 e5                	add    %ah,%ch
     49d:	00 b7 00 e3 00 c2    	add    %dh,-0x3dff1d00(%rdi)
     4a3:	00 3d 00 3e 00 3f    	add    %bh,0x3f003e00(%rip)        # 0x3f0042a9
     4a9:	00 37                	add    %dh,(%rdi)
     4ab:	00 35 00 38 00 36    	add    %dh,0x36003800(%rip)        # 0x36003cb1
     4b1:	00 3c 00             	add    %bh,(%rax,%rax,1)
     4b4:	3a 00                	cmp    (%rax),%al
     4b6:	39 00                	cmp    %eax,(%rax)
     4b8:	3b 00                	cmp    (%rax),%eax
     4ba:	41 00 40 00          	add    %al,0x0(%r8)
     4be:	4b 00 42 00          	rex.WXB add %al,0x0(%r10)
     4c2:	43 00 ae 01 4a 00 48 	rex.XB add %bpl,0x48004a01(%r14)
     4c9:	00 49 00             	add    %cl,0x0(%rcx)
     4cc:	4c 00 4d 00          	rex.WR add %r9b,0x0(%rbp)
     4d0:	45 00 47 00          	add    %r8b,0x0(%r15)
     4d4:	46 00 54 00 e4       	add    %r10b,-0x1c(%rax,%r8,1)
     4d9:	00 55 00             	add    %dl,0x0(%rbp)
     4dc:	5b                   	pop    %rbx
     4dd:	00 21                	add    %ah,(%rcx)
     4df:	02 17                	add    (%rdi),%dl
     4e1:	02 45 02             	add    0x2(%rbp),%al
     4e4:	25 02 33 02 34       	and    $0x34023302,%eax
     4e9:	02 20                	add    (%rax),%ah
     4eb:	02 1a                	add    (%rdx),%bl
     4ed:	00 19                	add    %bl,(%rcx)
     4ef:	00 16                	add    %dl,(%rsi)
     4f1:	00 22                	add    %ah,(%rdx)
     4f3:	02 23                	add    (%rbx),%ah
     4f5:	02 23                	add    (%rbx),%ah
     4f7:	00 11                	add    %dl,(%rcx)
     4f9:	00 a0 00 53 00 4e    	add    %ah,0x4e005300(%rax)
     4ff:	00 52 00             	add    %dl,0x0(%rdx)
     502:	4f 00 50 00          	rex.WRXB add %r10b,0x0(%r8)
     506:	51                   	push   %rcx
     507:	00 a1 09 a0 09 37    	add    %ah,0x3709a009(%rcx)
     50d:	09 2a                	or     %ebp,(%rdx)
     50f:	09 39                	or     %edi,(%rcx)
     511:	09 26                	or     %esp,(%rsi)
     513:	09 25 09 2e 09 de    	or     %esp,-0x21f6d1f7(%rip)        # 0xffffffffde093322
     519:	0a e4                	or     %ah,%ah
     51b:	0a 2f                	or     (%rdi),%ch
     51d:	09 31                	or     %esi,(%rcx)
     51f:	09 34 09             	or     %esi,(%rcx,%rcx,1)
     522:	32 09                	xor    (%rcx),%cl
     524:	33 09                	xor    (%rcx),%ecx
     526:	36 09 35 09 30 09 2d 	ss or  %esi,0x2d093009(%rip)        # 0x2d093536
     52d:	09 3a                	or     %edi,(%rdx)
     52f:	09 27                	or     %esp,(%rdi)
     531:	09 29                	or     %ebp,(%rcx)
     533:	09 2c 09             	or     %ebp,(%rcx,%rcx,1)
     536:	9d                   	popf   
     537:	09 a3 09 a2 09 9e    	or     %esp,-0x61f65df7(%rbx)
     53d:	09 94 09 92 09 93 09 	or     %edx,0x9930992(%rcx,%rcx,1)
     544:	9c                   	pushf  
     545:	0a a2 0a 96 09 97    	or     -0x68f669f6(%rdx),%ah
     54b:	09 9e 0a 9f 0a 98    	or     %ebx,-0x67f560f6(%rsi)
     551:	0a 99 0a 9a 0a a4    	or     -0x5bf565f6(%rcx),%bl
     557:	0a 9d 0a a0 0a a5    	or     -0x5af55ff6(%rbp),%bl
     55d:	0a a6 0a a1 0a 92    	or     -0x6df55ef6(%rsi),%ah
     563:	0a 95 0a 96 0a 94    	or     -0x6bf569f6(%rbp),%dl
     569:	0a 93 0a 97 0a 95    	or     -0x6af568f6(%rbx),%dl
     56f:	09 91 09 7c 09 82    	or     %edx,-0x7df683f7(%rcx)
     575:	09 8a 09 8b 09 8d    	or     %ecx,-0x72f674f7(%rdx)
     57b:	09 89 09 8c 09 86    	or     %ecx,-0x79f673f7(%rcx)
     581:	09 85 09 8e 09 8f    	or     %eax,-0x70f671f7(%rbp)
     587:	09 90 09 88 09 87    	or     %edx,-0x78f677f7(%rax)
     58d:	09 83 09 84 09 7f    	or     %eax,0x7f098409(%rbx)
     593:	09 9b 09 9c 09 22    	or     %ebx,0x22099c09(%rbx)
     599:	09 38                	or     %edi,(%rax)
     59b:	09 9a 09 99 09 98    	or     %ebx,-0x67f666f7(%rdx)
     5a1:	09 81 09 3b 0a 35    	or     %eax,0x350a3b09(%rcx)
     5a7:	0a 34 0a             	or     (%rdx,%rcx,1),%dh
     5aa:	3c 0a                	cmp    $0xa,%al
     5ac:	3d 0a 3e 0a 37       	cmp    $0x370a3e0a,%eax
     5b1:	0a 39                	or     (%rcx),%bh
     5b3:	0a 38                	or     (%rax),%bh
     5b5:	0a 3a                	or     (%rdx),%bh
     5b7:	0a 36                	or     (%rsi),%dh
     5b9:	0a 59 0a             	or     0xa(%rcx),%bl
     5bc:	43 0a 33             	rex.XB or (%r11),%sil
     5bf:	0a 32                	or     (%rdx),%dh
     5c1:	0a 5a 0a             	or     0xa(%rdx),%bl
     5c4:	48 0a 47 0a          	rex.W or 0xa(%rdi),%al
     5c8:	5e                   	pop    %rsi
     5c9:	0a 4c 0a 4b          	or     0x4b(%rdx,%rcx,1),%cl
     5cd:	0a 50 0a             	or     0xa(%rax),%dl
     5d0:	53                   	push   %rbx
     5d1:	0a 51 0a             	or     0xa(%rcx),%dl
     5d4:	4e 0a 4d 0a          	rex.WRX or 0xa(%rbp),%r9b
     5d8:	4f 0a 52 0a          	rex.WRXB or 0xa(%r10),%r10b
     5dc:	3f                   	(bad)  
     5dd:	0a d9                	or     %cl,%bl
     5df:	0a da                	or     %dl,%bl
     5e1:	0a e1                	or     %cl,%ah
     5e3:	0a df                	or     %bh,%bl
     5e5:	0a e2                	or     %dl,%ah
     5e7:	0a e3                	or     %bl,%ah
     5e9:	0a e0                	or     %al,%ah
     5eb:	0a e6                	or     %dh,%ah
     5ed:	0a dc                	or     %ah,%bl
     5ef:	0a db                	or     %bl,%bl
     5f1:	0a e5                	or     %ch,%ah
     5f3:	0a d8                	or     %al,%bl
     5f5:	0a d7                	or     %bh,%dl
     5f7:	0a 24 09             	or     (%rcx,%rcx,1),%ah
     5fa:	23 09                	and    (%rcx),%ecx
     5fc:	25 0a 42 0a 31       	and    $0x310a420a,%eax
     601:	0a 58 0a             	or     0xa(%rax),%bl
     604:	5c                   	pop    %rsp
     605:	0a 41 0a             	or     0xa(%rcx),%al
     608:	40 0a 56 0a          	rex or 0xa(%rsi),%dl
     60c:	55                   	push   %rbp
     60d:	0a 54 0a 5b          	or     0x5b(%rdx,%rcx,1),%dl
     611:	0a 57 0a             	or     0xa(%rdi),%dl
     614:	28 0a                	sub    %cl,(%rdx)
     616:	27                   	(bad)  
     617:	0a 26                	or     (%rsi),%ah
     619:	0a 45 0a             	or     0xa(%rbp),%al
     61c:	44 0a 2a             	or     (%rdx),%r13b
     61f:	0a 2b                	or     (%rbx),%ch
     621:	0a 2c 0a             	or     (%rdx,%rcx,1),%ch
     624:	29 0a                	sub    %ecx,(%rdx)
     626:	2d 0a 49 0a 5f       	sub    $0x5f0a490a,%eax
     62b:	0a 60 0a             	or     0xa(%rax),%ah
     62e:	5d                   	pop    %rbp
     62f:	0a 2f                	or     (%rdi),%ch
     631:	0a 2e                	or     (%rsi),%ch
     633:	0a 30                	or     (%rax),%dh
     635:	0a 2b                	or     (%rbx),%ch
     637:	09 28                	or     %ebp,(%rax)
     639:	09 23                	or     %esp,(%rbx)
     63b:	0a 4a 0a             	or     0xa(%rdx),%cl
     63e:	46 0a dd             	rex.RX or %bpl,%r11b
     641:	0a 24 0a             	or     (%rdx,%rcx,1),%ah
     644:	80 09 62             	orb    $0x62,(%rcx)
     647:	02 87 03 73 02 71    	add    0x71027303(%rdi),%al
     64d:	02 72 02             	add    0x2(%rdx),%dh
     650:	82                   	(bad)  
     651:	02 86 02 87 02 89    	add    -0x76fd78fe(%rsi),%al
     657:	02 c9                	add    %cl,%cl
     659:	02 7b 02             	add    0x2(%rbx),%bh
     65c:	94                   	xchg   %eax,%esp
     65d:	02 64 02 cb          	add    -0x35(%rdx,%rax,1),%ah
     661:	02 91 02 c7 02 8f    	add    -0x70fd38fe(%rcx),%dl
     667:	03 90 03 79 02 c8    	add    -0x37fd86fd(%rax),%edx
     66d:	02 97 02 88 02 8e    	add    -0x71fd77fe(%rdi),%dl
     673:	02 ca                	add    %dl,%cl
     675:	02 4f 02             	add    0x2(%rdi),%cl
     678:	50                   	push   %rax
     679:	02 4c 02 c4          	add    -0x3c(%rdx,%rax,1),%cl
     67d:	02 c5                	add    %ch,%al
     67f:	02 61 02             	add    0x2(%rcx),%ah
     682:	4a 02 3d 05 33 07 37 	rex.WX add 0x37073305(%rip),%dil        # 0x3707398e
     689:	07                   	(bad)  
     68a:	2f                   	(bad)  
     68b:	06                   	(bad)  
     68c:	2c 06                	sub    $0x6,%al
     68e:	2b 06                	sub    (%rsi),%eax
     690:	2d 06 27 06 36       	sub    $0x36062706,%eax
     695:	07                   	(bad)  
     696:	37                   	(bad)  
     697:	05 3c 07 d4 04       	add    $0x4d4073c,%eax
     69c:	3e 07                	ds (bad) 
     69e:	84 02                	test   %al,(%rdx)
     6a0:	85 02                	test   %eax,(%rdx)
     6a2:	3f                   	(bad)  
     6a3:	07                   	(bad)  
     6a4:	cb                   	lret   
     6a5:	04 ca                	add    $0xca,%al
     6a7:	04 34                	add    $0x34,%al
     6a9:	07                   	(bad)  
     6aa:	32 07                	xor    (%rdi),%al
     6ac:	2d 07 30 07 2e       	sub    $0x2e073007,%eax
     6b1:	07                   	(bad)  
     6b2:	31 07                	xor    %eax,(%rdi)
     6b4:	2f                   	(bad)  
     6b5:	07                   	(bad)  
     6b6:	35 07 db 04 da       	xor    $0xda04db07,%eax
     6bb:	04 38                	add    $0x38,%al
     6bd:	07                   	(bad)  
     6be:	39 07                	cmp    %eax,(%rdi)
     6c0:	3a 07                	cmp    (%rdi),%al
     6c2:	c3                   	ret    
     6c3:	02 3b                	add    (%rbx),%bh
     6c5:	07                   	(bad)  
     6c6:	f8                   	clc    
     6c7:	04 42                	add    $0x42,%al
     6c9:	07                   	(bad)  
     6ca:	43 07                	rex.XB (bad) 
     6cc:	17                   	(bad)  
     6cd:	03 1b                	add    (%rbx),%ebx
     6cf:	03 32                	add    (%rdx),%esi
     6d1:	03 1c 03             	add    (%rbx,%rax,1),%ebx
     6d4:	1d 03 3d 07 41       	sbb    $0x41073d03,%eax
     6d9:	07                   	(bad)  
     6da:	40 07                	rex (bad) 
     6dc:	b4 04                	mov    $0x4,%ah
     6de:	b2 04                	mov    $0x4,%dl
     6e0:	bd 04 99 04 9a       	mov    $0x9a049904,%ebp
     6e5:	04 fe                	add    $0xfe,%al
     6e7:	03 bc 04 c0 04 11 03 	add    0x31104c0(%rsp,%rax,1),%edi
     6ee:	10 03                	adc    %al,(%rbx)
     6f0:	14 03                	adc    $0x3,%al
     6f2:	09 03                	or     %eax,(%rbx)
     6f4:	26 03 d1             	es add %ecx,%edx
     6f7:	03 b3 03 b2 03 bd    	add    -0x42fc4dfd(%rbx),%esi
     6fd:	03 bf 03 ce 03 96    	add    -0x69fc31fd(%rdi),%edi
     703:	02 80 02 bb 03 ca    	add    -0x35fc44fe(%rax),%al
     709:	03 93 02 c5 03 c6    	add    -0x39fc3afe(%rbx),%edx
     70f:	03 c3                	add    %ebx,%eax
     711:	03 c2                	add    %edx,%eax
     713:	03 cb                	add    %ebx,%ecx
     715:	03 c7                	add    %edi,%eax
     717:	03 c8                	add    %eax,%ecx
     719:	03 c9                	add    %ecx,%ecx
     71b:	03 3a                	add    (%rdx),%edi
     71d:	03 3b                	add    (%rbx),%edi
     71f:	03 3c 03             	add    (%rbx,%rax,1),%edi
     722:	b6 03                	mov    $0x3,%dh
     724:	b5 03                	mov    $0x3,%ch
     726:	b7 03                	mov    $0x3,%bh
     728:	b8 03 cf 03 bc       	mov    $0xbc03cf03,%eax
     72d:	03 c1                	add    %ecx,%eax
     72f:	03 d0                	add    %eax,%edx
     731:	03 be 03 a9 03 a7    	add    -0x58fc56fd(%rsi),%edi
     737:	03 ac 03 ab 03 ae 03 	add    0x3ae03ab(%rbx,%rax,1),%ebp
     73e:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     73f:	03 af 03 a8 03 a3    	add    -0x5cfc57fd(%rdi),%ebp
     745:	03 aa 03 ad 03 a6    	add    -0x59fc52fd(%rdx),%ebp
     74b:	03 a5 03 a2 03 a1    	add    -0x5efc5dfd(%rbp),%esp
     751:	03 a0 03 38 03 49    	add    0x49033803(%rax),%esp
     757:	02 48 02             	add    0x2(%rax),%cl
     75a:	13 03                	adc    (%rbx),%eax
     75c:	28 03                	sub    %al,(%rbx)
     75e:	27                   	(bad)  
     75f:	03 29                	add    (%rcx),%ebp
     761:	03 37                	add    (%rdi),%esi
     763:	03 9f 03 0d 03 0f    	add    0xf030d03(%rdi),%ebx
     769:	03 0e                	add    (%rsi),%ecx
     76b:	03 12                	add    (%rdx),%edx
     76d:	03 2b                	add    (%rbx),%ebp
     76f:	03 2e                	add    (%rsi),%ebp
     771:	03 2d 03 24 03 30    	add    0x30032403(%rip),%ebp        # 0x30032b7a
     777:	03 35 03 31 03 0a    	add    0xa033103(%rip),%esi        # 0xa033880
     77d:	03 0b                	add    (%rbx),%ecx
     77f:	03 0c 03             	add    (%rbx,%rax,1),%ecx
     782:	23 03                	and    (%rbx),%eax
     784:	19 03                	sbb    %eax,(%rbx)
     786:	8a 02                	mov    (%rdx),%al
     788:	98                   	cwtl   
     789:	02 8c 02 8b 02 8d 02 	add    0x28d028b(%rdx,%rax,1),%cl
     790:	56                   	push   %rsi
     791:	02 b3 04 a1 07 0d    	add    0xd07a104(%rbx),%dh
     797:	07                   	(bad)  
     798:	f3 06                	repz (bad) 
     79a:	29 07                	sub    %eax,(%rdi)
     79c:	c4                   	(bad)  
     79d:	06                   	(bad)  
     79e:	cb                   	lret   
     79f:	06                   	(bad)  
     7a0:	c7 06 c5 06 c6 06    	movl   $0x6c606c5,(%rsi)
     7a6:	c0 06 c1             	rolb   $0xc1,(%rsi)
     7a9:	06                   	(bad)  
     7aa:	c2 06 c3             	ret    $0xc306
     7ad:	06                   	(bad)  
     7ae:	e3 06                	jrcxz  0x7b6
     7b0:	dd 06                	fldl   (%rsi)
     7b2:	c9                   	leave  
     7b3:	06                   	(bad)  
     7b4:	c8 06 ca 06          	enter  $0xca06,$0x6
     7b8:	cd 06                	int    $0x6
     7ba:	ce                   	(bad)  
     7bb:	06                   	(bad)  
     7bc:	d1 06                	roll   (%rsi)
     7be:	d0 06                	rolb   (%rsi)
     7c0:	cf                   	iret   
     7c1:	06                   	(bad)  
     7c2:	e7 06                	out    %eax,$0x6
     7c4:	e8 06 e9 06 ed       	call   0xffffffffed06f0cf
     7c9:	06                   	(bad)  
     7ca:	ee                   	out    %al,(%dx)
     7cb:	06                   	(bad)  
     7cc:	ef                   	out    %eax,(%dx)
     7cd:	06                   	(bad)  
     7ce:	ec                   	in     (%dx),%al
     7cf:	06                   	(bad)  
     7d0:	f1                   	int1   
     7d1:	06                   	(bad)  
     7d2:	f0 06                	lock (bad) 
     7d4:	ea                   	(bad)  
     7d5:	06                   	(bad)  
     7d6:	eb 06                	jmp    0x7de
     7d8:	e6 06                	out    %al,$0x6
     7da:	cc                   	int3   
     7db:	06                   	(bad)  
     7dc:	0f 07                	sysretl 
     7de:	0e                   	(bad)  
     7df:	07                   	(bad)  
     7e0:	23 07                	and    (%rdi),%eax
     7e2:	14 07                	adc    $0x7,%al
     7e4:	19 07                	sbb    %eax,(%rdi)
     7e6:	1b 07                	sbb    (%rdi),%eax
     7e8:	15 07 16 07 17       	adc    $0x17071607,%eax
     7ed:	07                   	(bad)  
     7ee:	1a 07                	sbb    (%rdi),%al
     7f0:	18 07                	sbb    %al,(%rdi)
     7f2:	11 07                	adc    %eax,(%rdi)
     7f4:	12 07                	adc    (%rdi),%al
     7f6:	ab                   	stos   %eax,%es:(%rdi)
     7f7:	07                   	(bad)  
     7f8:	ac                   	lods   %ds:(%rsi),%al
     7f9:	07                   	(bad)  
     7fa:	02 07                	add    (%rdi),%al
     7fc:	07                   	(bad)  
     7fd:	07                   	(bad)  
     7fe:	fc                   	cld    
     7ff:	06                   	(bad)  
     800:	00 07                	add    %al,(%rdi)
     802:	01 07                	add    %eax,(%rdi)
     804:	04 07                	add    $0x7,%al
     806:	fa                   	cli    
     807:	06                   	(bad)  
     808:	f9                   	stc    
     809:	06                   	(bad)  
     80a:	0a 07                	or     (%rdi),%al
     80c:	08 07                	or     %al,(%rdi)
     80e:	03 07                	add    (%rdi),%eax
     810:	05 07 06 07 fe       	add    $0xfe070607,%eax
     815:	06                   	(bad)  
     816:	fd                   	std    
     817:	06                   	(bad)  
     818:	ff 06                	incl   (%rsi)
     81a:	fb                   	sti    
     81b:	06                   	(bad)  
     81c:	09 07                	or     %eax,(%rdi)
     81e:	10 07                	adc    %al,(%rdi)
     820:	1c 07                	sbb    $0x7,%al
     822:	21 07                	and    %eax,(%rdi)
     824:	20 07                	and    %al,(%rdi)
     826:	1d 07 22 07 1e       	sbb    $0x1e072207,%eax
     82b:	07                   	(bad)  
     82c:	1f                   	(bad)  
     82d:	07                   	(bad)  
     82e:	13 07                	adc    (%rdi),%eax
     830:	2a 07                	sub    (%rdi),%al
     832:	88 07                	mov    %al,(%rdi)
     834:	2b 07                	sub    (%rdi),%eax
     836:	87 07                	xchg   %eax,(%rdi)
     838:	25 07 24 07 2c       	and    $0x2c072407,%eax
     83d:	07                   	(bad)  
     83e:	f4                   	hlt    
     83f:	06                   	(bad)  
     840:	f5                   	cmc    
     841:	06                   	(bad)  
     842:	f7 06 f8 06 f6 06    	testl  $0x6f606f8,(%rsi)
     848:	f2 06                	repnz (bad) 
     84a:	a9 07 aa 07 ad       	test   $0xad07aa07,%eax
     84f:	07                   	(bad)  
     850:	89 07                	mov    %eax,(%rdi)
     852:	8b 07                	mov    (%rdi),%eax
     854:	8e 07                	mov    (%rdi),%es
     856:	8a 07                	mov    (%rdi),%al
     858:	99                   	cltd   
     859:	07                   	(bad)  
     85a:	a8 07                	test   $0x7,%al
     85c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     85d:	07                   	(bad)  
     85e:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
     85f:	07                   	(bad)  
     860:	a2 07 a7 07 a4 07 a3 	movabs %al,0x8f07a307a407a707
     867:	07 8f 
     869:	07                   	(bad)  
     86a:	b8 07 b2 07 bb       	mov    $0xbb07b207,%eax
     86f:	07                   	(bad)  
     870:	bc 07 b3 07 26       	mov    $0x2607b307,%esp
     875:	07                   	(bad)  
     876:	28 07                	sub    %al,(%rdi)
     878:	27                   	(bad)  
     879:	07                   	(bad)  
     87a:	ba 07 b9 07 b1       	mov    $0xb107b907,%edx
     87f:	07                   	(bad)  
     880:	ae                   	scas   %es:(%rdi),%al
     881:	07                   	(bad)  
     882:	af                   	scas   %es:(%rdi),%eax
     883:	07                   	(bad)  
     884:	b0 07                	mov    $0x7,%al
     886:	9b                   	fwait
     887:	07                   	(bad)  
     888:	8d 07                	lea    (%rdi),%eax
     88a:	8c 07                	mov    %es,(%rdi)
     88c:	90                   	nop
     88d:	07                   	(bad)  
     88e:	e5 06                	in     $0x6,%eax
     890:	e4 06                	in     $0x6,%al
     892:	be 06 bf 06 bd       	mov    $0xbd06bf06,%esi
     897:	06                   	(bad)  
     898:	bc 06 96 07 97       	mov    $0x97079606,%esp
     89d:	07                   	(bad)  
     89e:	95                   	xchg   %eax,%ebp
     89f:	07                   	(bad)  
     8a0:	98                   	cwtl   
     8a1:	07                   	(bad)  
     8a2:	9e                   	sahf   
     8a3:	07                   	(bad)  
     8a4:	94                   	xchg   %eax,%esp
     8a5:	07                   	(bad)  
     8a6:	9f                   	lahf   
     8a7:	07                   	(bad)  
     8a8:	91                   	xchg   %eax,%ecx
     8a9:	07                   	(bad)  
     8aa:	9a                   	(bad)  
     8ab:	07                   	(bad)  
     8ac:	93                   	xchg   %eax,%ebx
     8ad:	07                   	(bad)  
     8ae:	9d                   	popf   
     8af:	07                   	(bad)  
     8b0:	92                   	xchg   %eax,%edx
     8b1:	07                   	(bad)  
     8b2:	9c                   	pushf  
     8b3:	07                   	(bad)  
     8b4:	3f                   	(bad)  
     8b5:	08 42 08             	or     %al,0x8(%rdx)
     8b8:	40 08 59 08          	rex or %bl,0x8(%rcx)
     8bc:	3d 08 3e 08 3c       	cmp    $0x3c083e08,%eax
     8c1:	08 50 08             	or     %dl,0x8(%rax)
     8c4:	4a 08 51 08          	rex.WX or %dl,0x8(%rcx)
     8c8:	46 08 47 08          	rex.RX or %r8b,0x8(%rdi)
     8cc:	56                   	push   %rsi
     8cd:	08 57 08             	or     %dl,0x8(%rdi)
     8d0:	58                   	pop    %rax
     8d1:	08 55 08             	or     %dl,0x8(%rbp)
     8d4:	43 08 0b             	rex.XB or %cl,(%r11)
     8d7:	07                   	(bad)  
     8d8:	41 08 49 08          	or     %cl,0x8(%r9)
     8dc:	52                   	push   %rdx
     8dd:	08 4d 08             	or     %cl,0x8(%rbp)
     8e0:	4f 08 4c 08 4e       	rex.WRXB or %r9b,0x4e(%r8,%r9,1)
     8e5:	08 4b 08             	or     %cl,0x8(%rbx)
     8e8:	53                   	push   %rbx
     8e9:	08 54 08 48          	or     %dl,0x48(%rax,%rcx,1)
     8ed:	08 b4 07 44 08 45 08 	or     %dh,0x8450844(%rdi,%rax,1)
     8f4:	b7 07                	mov    $0x7,%bh
     8f6:	b6 07                	mov    $0x7,%dh
     8f8:	3b 08                	cmp    (%rax),%ecx
     8fa:	38 08                	cmp    %cl,(%rax)
     8fc:	39 08                	cmp    %ecx,(%rax)
     8fe:	b5 07                	mov    $0x7,%ch
     900:	3a 08                	cmp    (%rax),%cl
     902:	a0 07 d4 06 d2 06 d3 	movabs 0xdf06d306d206d407,%al
     909:	06 df 
     90b:	06                   	(bad)  
     90c:	d7                   	xlat   %ds:(%rbx)
     90d:	06                   	(bad)  
     90e:	d6                   	(bad)  
     90f:	06                   	(bad)  
     910:	d9 06                	flds   (%rsi)
     912:	de 06                	fiadds (%rsi)
     914:	d8 06                	fadds  (%rsi)
     916:	e2 06                	loop   0x91e
     918:	e1 06                	loope  0x920
     91a:	d5                   	(bad)  
     91b:	06                   	(bad)  
     91c:	dc 06                	faddl  (%rsi)
     91e:	db 06                	fildl  (%rsi)
     920:	da 06                	fiaddl (%rsi)
     922:	e0 06                	loopne 0x92a
     924:	28 01                	sub    %al,(%rcx)
     926:	29 01                	sub    %eax,(%rcx)
     928:	ec                   	in     (%dx),%al
     929:	00 e6                	add    %ah,%dh
     92b:	00 e2                	add    %ah,%dl
     92d:	00 2b                	add    %ch,(%rbx)
     92f:	01 c7                	add    %eax,%edi
     931:	01 c6                	add    %eax,%esi
     933:	01 be 01 bf 01 b4    	add    %edi,-0x4bfe40ff(%rsi)
     939:	01 cd                	add    %ecx,%ebp
     93b:	01 b5 01 af 01 b2    	add    %esi,-0x4dfe50ff(%rbp)
     941:	01 b1 01 b0 01 ef    	add    %esi,-0x10fe4fff(%rcx)
     947:	01 b3 01 14 00 13    	add    %esi,0x13001401(%rbx)
     94d:	00 96 01 a3 01 99    	add    %dl,-0x66fe5cff(%rsi)
     953:	01 9c 01 a1 01 a2 01 	add    %ebx,0x1a201a1(%rcx,%rax,1)
     95a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     95b:	01 98 01 ab 01 97    	add    %ebx,-0x68fe54ff(%rax)
     961:	01 a9 01 aa 01 9b    	add    %ebp,-0x64fe55ff(%rcx)
     967:	01 9a 01 9f 01 9e    	add    %ebx,-0x61fe60ff(%rdx)
     96d:	01 9d 01 a5 01 ad    	add    %ebx,-0x52fe5aff(%rbp)
     973:	01 ac 01 bd 01 e6 01 	add    %ebp,0x1e601bd(%rcx,%rax,1)
     97a:	e8 01 e7 01 d5       	call   0xffffffffd501f080
     97f:	01 e4                	add    %esp,%esp
     981:	01 da                	add    %ebx,%edx
     983:	01 d9                	add    %ebx,%ecx
     985:	01 10                	add    %edx,(%rax)
     987:	01 de                	add    %ebx,%esi
     989:	00 ed                	add    %ch,%ch
     98b:	01 d3                	add    %edx,%ebx
     98d:	01 d4                	add    %edx,%esp
     98f:	01 ee                	add    %ebp,%esi
     991:	01 d0                	add    %edx,%eax
     993:	01 d2                	add    %edx,%edx
     995:	00 c4                	add    %al,%ah
     997:	01 c5                	add    %eax,%ebp
     999:	01 eb                	add    %ebp,%ebx
     99b:	01 14 01             	add    %edx,(%rcx,%rax,1)
     99e:	15 01 c9 01 c8       	adc    $0xc801c901,%eax
     9a3:	01 cb                	add    %ecx,%ebx
     9a5:	01 ca                	add    %ecx,%edx
     9a7:	01 ce                	add    %ecx,%esi
     9a9:	01 cf                	add    %ecx,%edi
     9ab:	01 fc                	add    %edi,%esp
     9ad:	01 f1                	add    %esi,%ecx
     9af:	00 ea                	add    %ch,%dl
     9b1:	01 d8                	add    %ebx,%eax
     9b3:	01 d7                	add    %edx,%edi
     9b5:	01 d6                	add    %edx,%esi
     9b7:	01 e1                	add    %esp,%ecx
     9b9:	01 dd                	add    %ebx,%ebp
     9bb:	01 df                	add    %ebx,%edi
     9bd:	01 dc                	add    %ebx,%esp
     9bf:	01 de                	add    %ebx,%esi
     9c1:	01 e0                	add    %esp,%eax
     9c3:	01 e2                	add    %esp,%edx
     9c5:	01 e3                	add    %esp,%ebx
     9c7:	01 c1                	add    %eax,%ecx
     9c9:	01 c0                	add    %eax,%eax
     9cb:	01 c2                	add    %eax,%edx
     9cd:	01 c3                	add    %eax,%ebx
     9cf:	01 b9 01 bb 01 bc    	add    %edi,-0x43fe44ff(%rcx)
     9d5:	01 b6 01 f2 00 ba    	add    %esi,-0x45ff0dff(%rsi)
     9db:	01 b7 01 0c 00 0b    	add    %esi,0xb000c01(%rdi)
     9e1:	00 c2                	add    %al,%dl
     9e3:	09 e2                	or     %esp,%edx
     9e5:	09 e0                	or     %esp,%eax
     9e7:	09 e1                	or     %esp,%ecx
     9e9:	09 c5                	or     %eax,%ebp
     9eb:	09 c4                	or     %eax,%esp
     9ed:	09 e5                	or     %esp,%ebp
     9ef:	09 cb                	or     %ecx,%ebx
     9f1:	09 ca                	or     %ecx,%edx
     9f3:	09 c7                	or     %eax,%edi
     9f5:	09 c9                	or     %ecx,%ecx
     9f7:	09 c8                	or     %ecx,%eax
     9f9:	09 c3                	or     %eax,%ebx
     9fb:	09 c1                	or     %eax,%ecx
     9fd:	09 c0                	or     %eax,%eax
     9ff:	09 bd 09 bf 09 bc    	or     %edi,-0x43f640f7(%rbp)
     a05:	09 ed                	or     %ebp,%ebp
     a07:	09 e4                	or     %esp,%esp
     a09:	09 ba 09 e3 09 e8    	or     %edi,-0x17f61cf7(%rdx)
     a0f:	09 ea                	or     %ebp,%edx
     a11:	09 ee                	or     %ebp,%esi
     a13:	09 ec                	or     %ebp,%esp
     a15:	09 e9                	or     %ebp,%ecx
     a17:	09 d0                	or     %edx,%eax
     a19:	09 d2                	or     %edx,%edx
     a1b:	09 eb                	or     %ebp,%ebx
     a1d:	09 e6                	or     %esp,%esi
     a1f:	09 e7                	or     %esp,%edi
     a21:	09 d6                	or     %edx,%esi
     a23:	09 d4                	or     %edx,%esp
     a25:	09 de                	or     %ebx,%esi
     a27:	09 dd                	or     %ebx,%ebp
     a29:	09 d3                	or     %edx,%ebx
     a2b:	09 d5                	or     %edx,%ebp
     a2d:	09 d8                	or     %ebx,%eax
     a2f:	09 d9                	or     %ebx,%ecx
     a31:	09 b0 09 da 09 dc    	or     %esi,-0x23f625f7(%rax)
     a37:	09 b1 09 b4 09 b3    	or     %esi,-0x4cf64bf7(%rcx)
     a3d:	09 b7 09 b5 09 b6    	or     %esi,-0x49f64af7(%rdi)
     a43:	09 b9 09 b8 09 af    	or     %edi,-0x50f647f7(%rcx)
     a49:	09 db                	or     %ebx,%ebx
     a4b:	09 be 09 cf 09 b2    	or     %edi,-0x4df630f7(%rsi)
     a51:	09 20                	or     %esp,(%rax)
     a53:	0a 15 0a 14 0a 0e    	or     0xe0a140a(%rip),%dl        # 0xe0a1e63
     a59:	0a 11                	or     (%rcx),%dl
     a5b:	0a 19                	or     (%rcx),%bl
     a5d:	0a 0f                	or     (%rdi),%cl
     a5f:	0a f6                	or     %dh,%dh
     a61:	09 22                	or     %esp,(%rdx)
     a63:	0a ef                	or     %bh,%ch
     a65:	09 f3                	or     %esi,%ebx
     a67:	09 f5                	or     %esi,%ebp
     a69:	09 f4                	or     %esi,%esp
     a6b:	09 f0                	or     %esi,%eax
     a6d:	09 f2                	or     %esi,%edx
     a6f:	09 f7                	or     %esi,%edi
     a71:	09 f1                	or     %esi,%ecx
     a73:	09 bb 09 ce 09 cd    	or     %edi,-0x32f631f7(%rbx)
     a79:	09 0d 0a 10 0a 12    	or     %ecx,0x120a100a(%rip)        # 0x120a1a89
     a7f:	0a 16                	or     (%rsi),%dl
     a81:	0a 1b                	or     (%rbx),%bl
     a83:	0a 1d 0a 1a 0a 1c    	or     0x1c0a1a0a(%rip),%bl        # 0x1c0a2493
     a89:	0a 1f                	or     (%rdi),%bl
     a8b:	0a 1e                	or     (%rsi),%bl
     a8d:	0a cc                	or     %ah,%cl
     a8f:	01 02                	add    %eax,(%rdx)
     a91:	0a 09                	or     (%rcx),%cl
     a93:	0a 03                	or     (%rbx),%al
     a95:	0a 05 0a 08 0a 07    	or     0x70a080a(%rip),%al        # 0x70a12a5
     a9b:	0a 06                	or     (%rsi),%al
     a9d:	0a 04 0a             	or     (%rdx,%rcx,1),%al
     aa0:	0a 0a                	or     (%rdx),%cl
     aa2:	18 0a                	sbb    %cl,(%rdx)
     aa4:	0b 0a                	or     (%rdx),%ecx
     aa6:	13 0a                	adc    (%rdx),%ecx
     aa8:	f8                   	clc    
     aa9:	09 f9                	or     %edi,%ecx
     aab:	09 ff                	or     %edi,%edi
     aad:	09 fd                	or     %edi,%ebp
     aaf:	09 fe                	or     %edi,%esi
     ab1:	09 01                	or     %eax,(%rcx)
     ab3:	0a 00                	or     (%rax),%al
     ab5:	0a fa                	or     %dl,%bh
     ab7:	09 fc                	or     %edi,%esp
     ab9:	09 fb                	or     %edi,%ebx
     abb:	09 0c 0a             	or     %ecx,(%rdx,%rcx,1)
     abe:	9c                   	pushf  
     abf:	02 99 02 92 03 a0    	add    -0x5ffc6dfe(%rcx),%bl
     ac5:	02 9f 02 f7 02 f9    	add    -0x6fd08fe(%rdi),%bl
     acb:	02 f8                	add    %al,%bh
     acd:	02 fa                	add    %dl,%bh
     acf:	02 fb                	add    %bl,%bh
     ad1:	02 a2 02 91 03 9d    	add    -0x62fc6efe(%rdx),%ah
     ad7:	02 a3 02 a1 02 9e    	add    -0x61fd5efe(%rbx),%ah
     add:	02 a6 02 9b 02 94    	add    -0x6bfd64fe(%rsi),%ah
     ae3:	03 5e 05             	add    0x5(%rsi),%ebx
     ae6:	41 05 3b 06 40 05    	rex.B add $0x540063b,%eax
     aec:	45 05 3e 05 3f 05    	rex.RB add $0x53f053e,%eax
     af2:	46 05 71 05 43 05    	rex.RX add $0x5430571,%eax
     af8:	44 05 93 03 9a 02    	rex.R add $0x29a0393,%eax
     afe:	dc 03                	faddl  (%rbx)
     b00:	4a 05 f6 02 fe 02    	rex.WX add $0x2fe02f6,%rax
     b06:	fd                   	std    
     b07:	02 76 05             	add    0x5(%rsi),%dh
     b0a:	47 05 45 03 66 03    	rex.RXB add $0x3660345,%eax
     b10:	65 03 73 03          	add    %gs:0x3(%rbx),%esi
     b14:	71 03                	jno    0xb19
     b16:	70 03                	jo     0xb1b
     b18:	74 03                	je     0xb1d
     b1a:	75 03                	jne    0xb1f
     b1c:	dd 03                	fldl   (%rbx)
     b1e:	de 03                	fiadds (%rbx)
     b20:	d2 03                	rolb   %cl,(%rbx)
     b22:	db 03                	fildl  (%rbx)
     b24:	d4                   	(bad)  
     b25:	03 da                	add    %edx,%ebx
     b27:	03 d9                	add    %ecx,%ebx
     b29:	03 ec                	add    %esp,%ebp
     b2b:	03 ed                	add    %ebp,%ebp
     b2d:	03 ee                	add    %esi,%ebp
     b2f:	03 d7                	add    %edi,%edx
     b31:	03 f2                	add    %edx,%esi
     b33:	03 f6                	add    %esi,%esi
     b35:	03 ef                	add    %edi,%ebp
     b37:	03 f8                	add    %eax,%edi
     b39:	03 f7                	add    %edi,%esi
     b3b:	03 f1                	add    %ecx,%esi
     b3d:	03 f9                	add    %ecx,%edi
     b3f:	03 f3                	add    %ebx,%esi
     b41:	03 f4                	add    %esp,%esi
     b43:	03 f5                	add    %ebp,%esi
     b45:	03 f0                	add    %eax,%esi
     b47:	03 e3                	add    %ebx,%esp
     b49:	03 e6                	add    %esi,%esp
     b4b:	03 e0                	add    %eax,%esp
     b4d:	03 e9                	add    %ecx,%ebp
     b4f:	03 e8                	add    %eax,%ebp
     b51:	03 ea                	add    %edx,%ebp
     b53:	03 e1                	add    %ecx,%esp
     b55:	03 e5                	add    %ebp,%esp
     b57:	03 eb                	add    %ebx,%ebp
     b59:	03 e4                	add    %esp,%esp
     b5b:	03 e7                	add    %edi,%esp
     b5d:	03 e2                	add    %edx,%esp
     b5f:	03 d6                	add    %esi,%edx
     b61:	03 d8                	add    %eax,%ebx
     b63:	03 fa                	add    %edx,%edi
     b65:	03 3f                	add    (%rdi),%edi
     b67:	03 3e                	add    (%rsi),%edi
     b69:	03 d5                	add    %ebp,%edx
     b6b:	03 df                	add    %edi,%ebx
     b6d:	03 d3                	add    %ebx,%edx
     b6f:	03 5b 03             	add    0x3(%rbx),%ebx
     b72:	43 03 5f 03          	rex.XB add 0x3(%r15),%ebx
     b76:	67 03 5e 03          	add    0x3(%esi),%ebx
     b7a:	60                   	(bad)  
     b7b:	03 63 03             	add    0x3(%rbx),%esp
     b7e:	46 03 52 03          	rex.RX add 0x3(%rdx),%r10d
     b82:	4c 03 4f 03          	add    0x3(%rdi),%r9
     b86:	4a 03 4d 03          	rex.WX add 0x3(%rbp),%rcx
     b8a:	4e 03 50 03          	rex.WRX add 0x3(%rax),%r10
     b8e:	51                   	push   %rcx
     b8f:	03 4b 03             	add    0x3(%rbx),%ecx
     b92:	47 03 49 03          	rex.RXB add 0x3(%r9),%r9d
     b96:	72 03                	jb     0xb9b
     b98:	6f                   	outsl  %ds:(%rsi),(%dx)
     b99:	03 40 03             	add    0x3(%rax),%eax
     b9c:	41 03 42 03          	add    0x3(%r10),%eax
     ba0:	44 03 6c 03 61       	add    0x61(%rbx,%rax,1),%r13d
     ba5:	03 6d 03             	add    0x3(%rbp),%ebp
     ba8:	62 03                	(bad)  
     baa:	6a 03                	push   $0x3
     bac:	69 03 6b 03 6e 03    	imul   $0x36e036b,(%rbx),%eax
     bb2:	68 03 58 03 59       	push   $0x59035803
     bb7:	03 56 03             	add    0x3(%rsi),%edx
     bba:	55                   	push   %rbp
     bbb:	03 57 03             	add    0x3(%rdi),%edx
     bbe:	64 03 53 03          	add    %fs:0x3(%rbx),%edx
     bc2:	5c                   	pop    %rsp
     bc3:	03 5d 03             	add    0x3(%rbp),%ebx
     bc6:	48 03 54 03 3d       	add    0x3d(%rbx,%rax,1),%rdx
     bcb:	03 a5 02 5a 03 a4    	add    -0x5bfca5fe(%rbp),%esp
     bd1:	02 fc                	add    %ah,%bh
     bd3:	02 08                	add    (%rax),%cl
     bd5:	09 e4                	or     %esp,%esp
     bd7:	08 e7                	or     %ah,%bh
     bd9:	08 e8                	or     %ch,%al
     bdb:	08 e5                	or     %ah,%ch
     bdd:	08 e9                	or     %ch,%cl
     bdf:	08 e6                	or     %ah,%dh
     be1:	08 87 0a dc 08 e3    	or     %al,-0x1cf723f6(%rdi)
     be7:	08 ed                	or     %ch,%ch
     be9:	08 ee                	or     %ch,%dh
     beb:	08 eb                	or     %ch,%bl
     bed:	08 ef                	or     %ch,%bh
     bef:	08 ea                	or     %ch,%dl
     bf1:	08 ec                	or     %ch,%ah
     bf3:	08 10                	or     %dl,(%rax)
     bf5:	09 d5                	or     %edx,%ebp
     bf7:	0a 88 0a 09 09 06    	or     0x609090a(%rax),%cl
     bfd:	09 04 09             	or     %eax,(%rcx,%rcx,1)
     c00:	05 09 16 09 fa       	add    $0xfa091609,%eax
     c05:	08 fb                	or     %bh,%bl
     c07:	08 00                	or     %al,(%rax)
     c09:	09 fc                	or     %edi,%esp
     c0b:	08 fe                	or     %bh,%dh
     c0d:	08 ff                	or     %bh,%bh
     c0f:	08 fd                	or     %bh,%ch
     c11:	08 20                	or     %ah,(%rax)
     c13:	09 1e                	or     %ebx,(%rsi)
     c15:	09 1d 09 1c 09 1b    	or     %ebx,0x1b091c09(%rip)        # 0x1b092824
     c1b:	09 18                	or     %ebx,(%rax)
     c1d:	09 19                	or     %ebx,(%rcx)
     c1f:	09 21                	or     %esp,(%rcx)
     c21:	09 1f                	or     %ebx,(%rdi)
     c23:	09 1a                	or     %ebx,(%rdx)
     c25:	09 12                	or     %edx,(%rdx)
     c27:	09 11                	or     %edx,(%rcx)
     c29:	09 f6                	or     %esi,%esi
     c2b:	08 f7                	or     %dh,%bh
     c2d:	08 f2                	or     %dh,%dl
     c2f:	08 f0                	or     %dh,%al
     c31:	08 f4                	or     %dh,%ah
     c33:	08 f1                	or     %dh,%cl
     c35:	08 f3                	or     %dh,%bl
     c37:	08 f9                	or     %bh,%cl
     c39:	08 f8                	or     %bh,%al
     c3b:	08 02                	or     %al,(%rdx)
     c3d:	09 03                	or     %eax,(%rbx)
     c3f:	09 01                	or     %eax,(%rcx)
     c41:	09 e2                	or     %esp,%edx
     c43:	08 13                	or     %dl,(%rbx)
     c45:	09 15 09 14 09 86    	or     %edx,-0x79f6ebf7(%rip)        # 0xffffffff86092054
     c4b:	0a 0c 09             	or     (%rcx,%rcx,1),%cl
     c4e:	0b 09                	or     (%rcx),%ecx
     c50:	0a 09                	or     (%rcx),%cl
     c52:	0d 09 8c 0a 8b       	or     $0x8b0a8c09,%eax
     c57:	0a 8f 0a 17 09 7b    	or     0x7b09170a(%rdi),%cl
     c5d:	09 89 0a 8a 0a db    	or     %ecx,-0x24f575f6(%rcx)
     c63:	01 8e 0a 90 0a e9    	add    %ecx,-0x16f56ff6(%rsi)
     c69:	01 7a 09             	add    %edi,0x9(%rdx)
     c6c:	dd 08                	fisttpll (%rax)
     c6e:	de 08                	fimuls (%rax)
     c70:	6a 09                	push   $0x9
     c72:	69 09 6f 09 6c 09    	imul   $0x96c096f,(%rcx),%ecx
     c78:	6d                   	insl   (%dx),%es:(%rdi)
     c79:	09 70 09             	or     %esi,0x9(%rax)
     c7c:	6e                   	outsb  %ds:(%rsi),(%dx)
     c7d:	09 5b 09             	or     %ebx,0x9(%rbx)
     c80:	5a                   	pop    %rdx
     c81:	09 db                	or     %ebx,%ebx
     c83:	08 da                	or     %bl,%dl
     c85:	08 df                	or     %bl,%bh
     c87:	08 e0                	or     %ah,%al
     c89:	08 52 09             	or     %dl,0x9(%rdx)
     c8c:	53                   	push   %rbx
     c8d:	09 54 09 57          	or     %edx,0x57(%rcx,%rcx,1)
     c91:	09 55 09             	or     %edx,0x9(%rbp)
     c94:	59                   	pop    %rcx
     c95:	09 58 09             	or     %ebx,0x9(%rax)
     c98:	56                   	push   %rsi
     c99:	09 5c 09 76          	or     %ebx,0x76(%rcx,%rcx,1)
     c9d:	09 71 09             	or     %esi,0x9(%rcx)
     ca0:	79 09                	jns    0xcab
     ca2:	78 09                	js     0xcad
     ca4:	73 09                	jae    0xcaf
     ca6:	72 09                	jb     0xcb1
     ca8:	74 09                	je     0xcb3
     caa:	77 09                	ja     0xcb5
     cac:	75 09                	jne    0xcb7
     cae:	5d                   	pop    %rbp
     caf:	09 5f 09             	or     %ebx,0x9(%rdi)
     cb2:	5e                   	pop    %rsi
     cb3:	09 60 09             	or     %esp,0x9(%rax)
     cb6:	64 09 65 09          	or     %esp,%fs:0x9(%rbp)
     cba:	66 09 62 09          	or     %sp,0x9(%rdx)
     cbe:	63 09                	movsxd (%rcx),%ecx
     cc0:	61                   	(bad)  
     cc1:	09 67 09             	or     %esp,0x9(%rdi)
     cc4:	68 09 6b 09 b3       	push   $0xffffffffb3096b09
     cc9:	0a b6 0a b5 0a b4    	or     -0x4bf54af6(%rsi),%dh
     ccf:	0a b7 0a b8 0a d2    	or     -0x2df547f6(%rdi),%dh
     cd5:	0a c5                	or     %ch,%al
     cd7:	0a c6                	or     %dh,%al
     cd9:	0a c4                	or     %ah,%al
     cdb:	0a c8                	or     %al,%cl
     cdd:	0a c7                	or     %bh,%al
     cdf:	0a bd 0a c2 0a bf    	or     -0x40f53df6(%rbp),%bh
     ce5:	0a c0                	or     %al,%al
     ce7:	0a be 0a c1 0a 0e    	or     0xe0ac10a(%rsi),%bh
     ced:	09 d6                	or     %edx,%esi
     cef:	0a 07                	or     (%rdi),%al
     cf1:	09 bc 0a ba 0a ca 0a 	or     %edi,0xaca0aba(%rdx,%rcx,1)
     cf8:	d4                   	(bad)  
     cf9:	0a d3                	or     %bl,%dl
     cfb:	0a c3                	or     %bl,%al
     cfd:	0a c9                	or     %cl,%cl
     cff:	0a e1                	or     %cl,%ah
     d01:	08 b9 0a 17 0a 21    	or     %bh,0x210a170a(%rcx)
     d07:	0a 0f                	or     (%rdi),%cl
     d09:	09 f5                	or     %esi,%ebp
     d0b:	08 00                	or     %al,(%rax)
     d0d:	00 01                	add    %al,(%rcx)
     d0f:	00 f5                	add    %dh,%ch
     d11:	00 05 00 08 00 0d    	add    %al,0xd000800(%rip)        # 0xd001517
     d17:	01 0a                	add    %ecx,(%rdx)
     d19:	01 08                	add    %ecx,(%rax)
     d1b:	01 07                	add    %eax,(%rdi)
     d1d:	01 0b                	add    %ecx,(%rbx)
     d1f:	01 09                	add    %ecx,(%rcx)
     d21:	01 0c 01             	add    %ecx,(%rcx,%rax,1)
     d24:	07                   	(bad)  
     d25:	00 00                	add    %al,(%rax)
     d27:	01 06                	add    %eax,(%rsi)
     d29:	00 02                	add    %al,(%rdx)
     d2b:	01 f4                	add    %esi,%esp
     d2d:	00 ee                	add    %ch,%dh
     d2f:	00 ef                	add    %ch,%bh
     d31:	00 fa                	add    %bh,%dl
     d33:	00 f3                	add    %dh,%bl
     d35:	00 0f                	add    %cl,(%rdi)
     d37:	01 12                	add    %edx,(%rdx)
     d39:	00 0d 00 0e 01 26    	add    %cl,0x26010e00(%rip)        # 0x26011b3f
     d3f:	01 04 01             	add    %eax,(%rcx,%rax,1)
     d42:	05 01 03 01 12       	add    $0x12010301,%eax
     d47:	01 23                	add    %esp,(%rbx)
     d49:	01 1e                	add    %ebx,(%rsi)
     d4b:	01 24 01             	add    %esp,(%rcx,%rax,1)
     d4e:	09 00                	or     %eax,(%rax)
     d50:	13 01                	adc    (%rcx),%eax
     d52:	16                   	(bad)  
     d53:	01 17                	add    %edx,(%rdi)
     d55:	01 21                	add    %esp,(%rcx)
     d57:	01 22                	add    %esp,(%rdx)
     d59:	01 18                	add    %ebx,(%rax)
     d5b:	01 1b                	add    %ebx,(%rbx)
     d5d:	01 1a                	add    %ebx,(%rdx)
     d5f:	01 19                	add    %ebx,(%rcx)
     d61:	01 1d 01 1c 01 1f    	add    %ebx,0x1f011c01(%rip)        # 0x1f012968
     d67:	01 20                	add    %esp,(%rax)
     d69:	01 25 01 11 01 27    	add    %esp,0x27011101(%rip)        # 0x27011e70
     d6f:	01 06                	add    %eax,(%rsi)
     d71:	01 10                	add    %edx,(%rax)
     d73:	00 02                	add    %al,(%rdx)
     d75:	00 04 00             	add    %al,(%rax,%rax,1)
     d78:	03 00                	add    (%rax),%eax
     d7a:	f6 00 f8             	testb  $0xf8,(%rax)
     d7d:	00 f7                	add    %dh,%bh
     d7f:	00 f9                	add    %bh,%cl
     d81:	00 fb                	add    %bh,%bl
     d83:	00 0e                	add    %cl,(%rsi)
     d85:	00 0f                	add    %cl,(%rdi)
     d87:	00 fe                	add    %bh,%dh
     d89:	00 ff                	add    %bh,%bh
     d8b:	00 01                	add    %al,(%rcx)
     d8d:	01 fc                	add    %edi,%esp
     d8f:	00 fd                	add    %bh,%ch
     d91:	00 57 05             	add    %dl,0x5(%rdi)
     d94:	4c 05 4b 05 5a 05    	rex.WR add $0x55a054b,%rax
     d9a:	58                   	pop    %rax
     d9b:	05 59 05 5d 05       	add    $0x55d0559,%eax
     da0:	55                   	push   %rbp
     da1:	05 56 05 5c 05       	add    $0x55c0556,%eax
     da6:	42 05 66 05 61 05    	rex.X add $0x5610566,%eax
     dac:	60                   	(bad)  
     dad:	05 49 05 48 05       	add    $0x5480549,%eax
     db2:	74 05                	je     0xdb9
     db4:	70 05                	jo     0xdbb
     db6:	73 05                	jae    0xdbd
     db8:	6f                   	outsl  %ds:(%rsi),(%dx)
     db9:	05 72 05 6e 05       	add    $0x56e0572,%eax
     dbe:	6d                   	insl   (%dx),%es:(%rdi)
     dbf:	05 6c 05 6b 05       	add    $0x56b056c,%eax
     dc4:	6a 05                	push   $0x5
     dc6:	67 05 69 05 5f 05    	addr32 add $0x55f0569,%eax
     dcc:	64 05 65 05 68 05    	fs add $0x5680565,%eax
     dd2:	5b                   	pop    %rbx
     dd3:	05 63 05 62 05       	add    $0x5620563,%eax
     dd8:	4d 05 4e 05 4f 05    	rex.WRB add $0x54f054e,%rax
     dde:	50                   	push   %rax
     ddf:	05 53 05 51 05       	add    $0x5510553,%eax
     de4:	54                   	push   %rsp
     de5:	05 52 05 79 03       	add    $0x3790552,%eax
     dea:	84 03                	test   %al,(%rbx)
     dec:	85 03                	test   %eax,(%rbx)
     dee:	70 02                	jo     0xdf2
     df0:	95                   	xchg   %eax,%ebp
     df1:	02 77 02             	add    0x2(%rdi),%dh
     df4:	78 02                	js     0xdf8
     df6:	76 02                	jbe    0xdfa
     df8:	55                   	push   %rbp
     df9:	02 74 02 75          	add    0x75(%rdx,%rax,1),%dh
     dfd:	02 4b 02             	add    0x2(%rbx),%cl
     e00:	46 02 81 02 83 02 7a 	rex.RX add 0x7a028302(%rcx),%r8b
     e07:	02 7c 02 63          	add    0x63(%rdx,%rax,1),%bh
     e0b:	02 69 02             	add    0x2(%rcx),%ch
     e0e:	6a 02                	push   $0x2
     e10:	6b 02 65             	imul   $0x65,(%rdx),%eax
     e13:	02 6c 02 6d          	add    0x6d(%rdx,%rax,1),%ch
     e17:	02 6e 02             	add    0x2(%rsi),%ch
     e1a:	68 02 66 02 67       	push   $0x67026602
     e1f:	02 92 02 6f 02 7e    	add    0x7e026f02(%rdx),%dl
     e25:	02 7d 02             	add    0x2(%rbp),%bh
     e28:	7f 02                	jg     0xe2c
     e2a:	4d 02 4e 02          	rex.WRB add 0x2(%r14),%r9b
     e2e:	86 03                	xchg   %al,(%rbx)
     e30:	57                   	push   %rdi
     e31:	02 59 02             	add    0x2(%rcx),%bl
     e34:	5a                   	pop    %rdx
     e35:	02 5b 02             	add    0x2(%rbx),%bl
     e38:	5d                   	pop    %rbp
     e39:	02 58 02             	add    0x2(%rax),%bl
     e3c:	5c                   	pop    %rsp
     e3d:	02 5e 02             	add    0x2(%rsi),%bl
     e40:	5f                   	pop    %rdi
     e41:	02 60 02             	add    0x2(%rax),%ah
     e44:	8f 02                	pop    (%rdx)
     e46:	90                   	nop
     e47:	02 47 02             	add    0x2(%rdi),%al
     e4a:	53                   	push   %rbx
     e4b:	02 54 02 52          	add    0x52(%rdx,%rax,1),%dl
     e4f:	02 51 02             	add    0x2(%rcx),%dl
     e52:	f5                   	cmc    
     e53:	02 f3                	add    %bl,%dh
     e55:	02 88 03 81 03 83    	add    -0x7cfc7efd(%rax),%cl
     e5b:	03 7f 03             	add    0x3(%rdi),%edi
     e5e:	7b 03                	jnp    0xe63
     e60:	7a 03                	jp     0xe65
     e62:	76 03                	jbe    0xe67
     e64:	78 03                	js     0xe69
     e66:	77 03                	ja     0xe6b
     e68:	7e 03                	jle    0xe6d
     e6a:	7c 03                	jl     0xe6f
     e6c:	7d 03                	jge    0xe71
     e6e:	82                   	(bad)  
     e6f:	03 89 03 8a 03 8b    	add    -0x74fc75fd(%rcx),%ecx
     e75:	03 8c 03 8d 03 f2 02 	add    0x2f2038d(%rbx,%rax,1),%ecx
     e7c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     e7d:	02 ab 02 a8 02 ac    	add    -0x53fd57fe(%rbx),%ch
     e83:	02 a9 02 aa 02 d7    	add    -0x28fd55fe(%rcx),%ch
     e89:	02 c2                	add    %dl,%al
     e8b:	02 f4                	add    %ah,%dh
     e8d:	02 f1                	add    %cl,%dh
     e8f:	02 c0                	add    %al,%al
     e91:	02 e9                	add    %cl,%ch
     e93:	02 ea                	add    %dl,%ch
     e95:	02 e7                	add    %bh,%ah
     e97:	02 eb                	add    %bl,%ch
     e99:	02 e8                	add    %al,%ch
     e9b:	02 da                	add    %dl,%bl
     e9d:	02 de                	add    %dh,%bl
     e9f:	02 dd                	add    %ch,%bl
     ea1:	02 db                	add    %bl,%bl
     ea3:	02 dc                	add    %ah,%bl
     ea5:	02 df                	add    %bh,%bl
     ea7:	02 e6                	add    %dh,%ah
     ea9:	02 ed                	add    %ch,%ch
     eab:	02 ec                	add    %ah,%ch
     ead:	02 e0                	add    %al,%ah
     eaf:	02 e4                	add    %ah,%ah
     eb1:	02 e5                	add    %ch,%ah
     eb3:	02 e2                	add    %dl,%ah
     eb5:	02 e1                	add    %cl,%ah
     eb7:	02 e3                	add    %bl,%ah
     eb9:	02 f0                	add    %al,%dh
     ebb:	02 ee                	add    %dh,%ch
     ebd:	02 ef                	add    %bh,%ch
     ebf:	02 bf 02 d9 02 d8    	add    -0x27fd26fe(%rdi),%bh
     ec5:	02 b0 02 ad 02 b1    	add    -0x4efd52fe(%rax),%dh
     ecb:	02 be 02 ae 02 b2    	add    -0x4dfd51fe(%rsi),%bh
     ed1:	02 bd 02 ba 02 b9    	add    -0x46fd45fe(%rbp),%bh
     ed7:	02 b8 02 bb 02 bc    	add    -0x43fd44fe(%rax),%bh
     edd:	02 b6 02 b4 02 b5    	add    -0x4afd4bfe(%rsi),%dh
     ee3:	02 b7 02 b3 02 d6    	add    -0x29fd4cfe(%rdi),%dh
     ee9:	02 af 02 2c 03 2a    	add    0x2a032c02(%rdi),%ch
     eef:	03 95 08 97 08 b1    	add    -0x4ef768f8(%rbp),%edx
     ef5:	03 9b 03 99 03 9a    	add    -0x65fc66fd(%rbx),%ebx
     efb:	03 96 03 95 03 9e    	add    -0x61fc6afd(%rsi),%edx
     f01:	03 9c 03 9d 03 ba 03 	add    0x3ba039d(%rbx,%rax,1),%ebx
     f08:	b9 03 cd 03 c4       	mov    $0xc403cd03,%ecx
     f0d:	03 8e 03 39 03 c0    	add    -0x3ffcc6fd(%rsi),%ecx
     f13:	03 cc                	add    %esp,%ecx
     f15:	03 97 03 b0 03 b4    	add    -0x4bfc4ffd(%rdi),%edx
     f1b:	03 98 03 16 03 18    	add    0x18031603(%rax),%ebx
     f21:	03 80 03 05 03 08    	add    0x8030503(%rax),%eax
     f27:	03 07                	add    (%rdi),%eax
     f29:	03 25 03 22 03 1f    	add    0x1f032203(%rip),%esp        # 0x1f033132
     f2f:	03 21                	add    (%rcx),%esp
     f31:	03 20                	add    (%rax),%esp
     f33:	03 1e                	add    (%rsi),%ebx
     f35:	03 15 03 33 03 34    	add    0x34033303(%rip),%edx        # 0x3403423e
     f3b:	03 2f                	add    (%rdi),%ebp
     f3d:	03 06                	add    (%rsi),%eax
     f3f:	03 cf                	add    %edi,%ecx
     f41:	02 cc                	add    %ah,%cl
     f43:	02 d0                	add    %al,%dl
     f45:	02 ce                	add    %dh,%cl
     f47:	02 cd                	add    %ch,%cl
     f49:	02 d2                	add    %dl,%dl
     f4b:	02 d1                	add    %cl,%dl
     f4d:	02 d4                	add    %ah,%dl
     f4f:	02 d5                	add    %ch,%dl
     f51:	02 d3                	add    %bl,%dl
     f53:	02 c1                	add    %cl,%al
     f55:	02 de                	add    %dh,%bl
     f57:	0c db                	or     $0xdb,%al
     f59:	0c be                	or     $0xbe,%al
     f5b:	0c c3                	or     $0xc3,%al
     f5d:	0c 83                	or     $0x83,%al
     f5f:	0d 85 0d 84 0d       	or     $0xd840d85,%eax
     f64:	51                   	push   %rcx
     f65:	0d d5 0c f0 0c       	or     $0xcf00cd5,%eax
     f6a:	f1                   	int1   
     f6b:	0c ef                	or     $0xef,%al
     f6d:	0c b5                	or     $0xb5,%al
     f6f:	0c 4d                	or     $0x4d,%al
     f71:	0d df 0c dd 0c       	or     $0xcdd0cdf,%eax
     f76:	e1 0c                	loope  0xf84
     f78:	e2 0c                	loop   0xf86
     f7a:	e5 0c                	in     $0xc,%eax
     f7c:	e7 0c                	out    %eax,$0xc
     f7e:	e6 0c                	out    %al,$0xc
     f80:	e8 0c e4 0c d0       	call   0xffffffffd00cf391
     f85:	0c e0                	or     $0xe0,%al
     f87:	0c 8e                	or     $0x8e,%al
     f89:	0d ca 0c c9 0c       	or     $0xcc90cca,%eax
     f8e:	ba 0c da 0d db       	mov    $0xdb0dda0c,%edx
     f93:	0d dc 0d d8 0d       	or     $0xdd80ddc,%eax
     f98:	bc 0c bd 0c 46       	mov    $0x460cbd0c,%esp
     f9d:	0d 88 0d 3a 0d       	or     $0xd3a0d88,%eax
     fa2:	3e 0d 34 0d 36 0d    	ds or  $0xd360d34,%eax
     fa8:	35 0d 92 0d 61       	xor    $0x610d920d,%eax
     fad:	0d 62 0d 68 0d       	or     $0xd680d62,%eax
     fb2:	67 0d 53 0d 54 0d    	addr32 or $0xd540d53,%eax
     fb8:	47 0d 89 0d 8a 0d    	rex.RXB or $0xd8a0d89,%eax
     fbe:	86 0d 5c 0d 5d 0d    	xchg   %cl,0xd5d0d5c(%rip)        # 0xd5d1d20
     fc4:	5f                   	pop    %rdi
     fc5:	0d 60 0d 5e 0d       	or     $0xd5e0d60,%eax
     fca:	fe 0c 65 0d 8f 0d 6c 	decb   0x6c0d8f0d(,%riz,2)
     fd1:	0d 6a 0d 6b 0d       	or     $0xd6b0d6a,%eax
     fd6:	5a                   	pop    %rdx
     fd7:	0d 5b 0d 4c 0d       	or     $0xd4c0d5b,%eax
     fdc:	f3 0c 14             	repz or $0x14,%al
     fdf:	0d 13 0d 00 0d       	or     $0xd000d13,%eax
     fe4:	b1 0c                	mov    $0xc,%cl
     fe6:	aa                   	stos   %al,%es:(%rdi)
     fe7:	0c ab                	or     $0xab,%al
     fe9:	0c a8                	or     $0xa8,%al
     feb:	0c b0                	or     $0xb0,%al
     fed:	0c 28                	or     $0x28,%al
     fef:	0d b4 0c 27 0d       	or     $0xd270cb4,%eax
     ff4:	1d 0d 2b 0d 30       	sbb    $0x300d2b0d,%eax
     ff9:	0d 2e 0d 2f 0d       	or     $0xd2f0d2e,%eax
     ffe:	12 0d a3 0c ff 0c    	adc    0xcff0ca3(%rip),%cl        # 0xcff1ca7
    1004:	ad                   	lods   %ds:(%rsi),%eax
    1005:	0c 0f                	or     $0xf,%al
    1007:	0d 10 0d 11 0d       	or     $0xd110d10,%eax
    100c:	b2 0c                	mov    $0xc,%dl
    100e:	b3 0c                	mov    $0xc,%bl
    1010:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    1011:	0d ab 0d 9e 0d       	or     $0xd9e0dab,%eax
    1016:	9d                   	popf   
    1017:	0d a0 0d 9f 0d       	or     $0xd9f0da0,%eax
    101c:	9a                   	(bad)  
    101d:	0d c0 0d bd 0d       	or     $0xdbd0dc0,%eax
    1022:	be 0d bc 0d b0       	mov    $0xb00dbc0d,%esi
    1027:	0d b3 0d b6 0d       	or     $0xdb60db3,%eax
    102c:	b4 0d                	mov    $0xd,%ah
    102e:	b2 0d                	mov    $0xd,%dl
    1030:	b1 0d                	mov    $0xd,%cl
    1032:	b9 0d b7 0d ba       	mov    $0xba0db70d,%ecx
    1037:	0d b5 0d b8 0d       	or     $0xdb80db5,%eax
    103c:	bb 0d bf 0d 40       	mov    $0x400dbf0d,%ebx
    1041:	0d 3f 0d cd 0d       	or     $0xdcd0d3f,%eax
    1046:	d0 0d cb 0d cf 0d    	rorb   0xdcf0dcb(%rip)        # 0xdcf1e17
    104c:	cc                   	int3   
    104d:	0d c9 0d d2 0d       	or     $0xdd20dc9,%eax
    1052:	d1 0d ca 0d c8 0d    	rorl   0xdc80dca(%rip)        # 0xdc81e22
    1058:	39 0d 38 0d ac 0d    	cmp    %ecx,0xdac0d38(%rip)        # 0xdac1d96
    105e:	d6                   	(bad)  
    105f:	0c d7                	or     $0xd7,%al
    1061:	0c d8                	or     $0xd8,%al
    1063:	0c d9                	or     $0xd9,%al
    1065:	0c c0                	or     $0xc0,%al
    1067:	0c cc                	or     $0xcc,%al
    1069:	0c cb                	or     $0xcb,%al
    106b:	0c cd                	or     $0xcd,%al
    106d:	0c ce                	or     $0xce,%al
    106f:	0c 44                	or     $0x44,%al
    1071:	0d 3b 0d 45 0d       	or     $0xd450d3b,%eax
    1076:	43 0d 37 0d 26 0d    	rex.XB or $0xd260d37,%eax
    107c:	3c 0d                	cmp    $0xd,%al
    107e:	e5 01                	in     $0x1,%eax
    1080:	18 0d 08 0d 5c 0b    	sbb    %cl,0xb5c0d08(%rip)        # 0xb5c1d8e
    1086:	4d 0b 41 0b          	or     0xb(%r9),%r8
    108a:	42 0b 47 0b          	rex.X or 0xb(%rdi),%eax
    108e:	45 0b 48 0b          	or     0xb(%r8),%r9d
    1092:	49 0b 4f 0b          	or     0xb(%r15),%rcx
    1096:	58                   	pop    %rax
    1097:	0b 39                	or     (%rcx),%edi
    1099:	0b 38                	or     (%rax),%edi
    109b:	0b 3a                	or     (%rdx),%edi
    109d:	0b 3b                	or     (%rbx),%edi
    109f:	0b 37                	or     (%rdi),%esi
    10a1:	0b 2f                	or     (%rdi),%ebp
    10a3:	0b 30                	or     (%rax),%esi
    10a5:	0b 5d 0b             	or     0xb(%rbp),%ebx
    10a8:	20 0b                	and    %cl,(%rbx)
    10aa:	12 0c e3             	adc    (%rbx,%riz,8),%cl
    10ad:	0b 3d 0c 36 0b 3c    	or     0x3c0b360c(%rip),%edi        # 0x3c0b46bf
    10b3:	0b 14 0c             	or     (%rsp,%rcx,1),%edx
    10b6:	29 0b                	sub    %ecx,(%rbx)
    10b8:	2d 0b 2e 0b 2c       	sub    $0x2c0b2e0b,%eax
    10bd:	0b 2b                	or     (%rbx),%ebp
    10bf:	0b 32                	or     (%rdx),%esi
    10c1:	0b 31                	or     (%rcx),%esi
    10c3:	0b 28                	or     (%rax),%ebp
    10c5:	0b 70 0b             	or     0xb(%rax),%esi
    10c8:	72 0b                	jb     0x10d5
    10ca:	73 0b                	jae    0x10d7
    10cc:	71 0b                	jno    0x10d9
    10ce:	5e                   	pop    %rsi
    10cf:	0b 83 0b 80 0b 7c    	or     0x7c0b800b(%rbx),%eax
    10d5:	0b 7e 0b             	or     0xb(%rsi),%edi
    10d8:	7f 0b                	jg     0x10e5
    10da:	81 0b 82 0b 5a 0b    	orl    $0xb5a0b82,(%rbx)
    10e0:	59                   	pop    %rcx
    10e1:	0b 5b 0b             	or     0xb(%rbx),%ebx
    10e4:	7d 0b                	jge    0x10f1
    10e6:	4e 0b 88 0b 89 0b 6e 	rex.WRX or 0x6e0b890b(%rax),%r9
    10ed:	0b 6d 0b             	or     0xb(%rbp),%ebp
    10f0:	86 0b                	xchg   %cl,(%rbx)
    10f2:	63 0b                	movsxd (%rbx),%ecx
    10f4:	64 0b 85 0b 7b 0b 65 	or     %fs:0x650b7b0b(%rbp),%eax
    10fb:	0b 87 0b 75 0b 7a    	or     0x7a0b750b(%rdi),%eax
    1101:	0b 78 0b             	or     0xb(%rax),%edi
    1104:	77 0b                	ja     0x1111
    1106:	76 0b                	jbe    0x1113
    1108:	79 0b                	jns    0x1115
    110a:	66 0b 69 0b          	or     0xb(%rcx),%bp
    110e:	6b 0b 67             	imul   $0x67,(%rbx),%ecx
    1111:	0b 6a 0b             	or     0xb(%rdx),%ebp
    1114:	6c                   	insb   (%dx),%es:(%rdi)
    1115:	0b 68 0b             	or     0xb(%rax),%ebp
    1118:	6f                   	outsl  %ds:(%rsi),(%dx)
    1119:	0b 8a 0b 8b 0b 8c    	or     -0x73f474f5(%rdx),%ecx
    111f:	0b 84 0b 34 0b 33 0b 	or     0xb330b34(%rbx,%rcx,1),%eax
    1126:	3e 0b 3f             	ds or  (%rdi),%edi
    1129:	0b 3d 0b 40 0b 55    	or     0x550b400b(%rip),%edi        # 0x550b513a
    112f:	0b 57 0b             	or     0xb(%rdi),%edx
    1132:	54                   	push   %rsp
    1133:	0b 56 0b             	or     0xb(%rsi),%edx
    1136:	53                   	push   %rbx
    1137:	0b 52 0b             	or     0xb(%rdx),%edx
    113a:	46 0b 43 0b          	rex.RX or 0xb(%rbx),%r8d
    113e:	44 0b 50 0b          	or     0xb(%rax),%r10d
    1142:	51                   	push   %rcx
    1143:	0b 5d 0c             	or     0xc(%rbp),%ebx
    1146:	4b 0b 4a 0b          	rex.WXB or 0xb(%r10),%rcx
    114a:	4c 0b 2a             	or     (%rdx),%r13
    114d:	0b 60 0b             	or     0xb(%rax),%esp
    1150:	62                   	(bad)  
    1151:	0b 61 0b             	or     0xb(%rcx),%esp
    1154:	2f                   	(bad)  
    1155:	0c 3c                	or     $0x3c,%al
    1157:	0c 13                	or     $0x13,%al
    1159:	0c 10                	or     $0x10,%al
    115b:	0c 0d                	or     $0xd,%al
    115d:	0c e5                	or     $0xe5,%al
    115f:	0b e6                	or     %esi,%esp
    1161:	0b e4                	or     %esp,%esp
    1163:	0b f6                	or     %esi,%esi
    1165:	0a f5                	or     %ch,%dh
    1167:	0a f9                	or     %cl,%bh
    1169:	0a 1e                	or     (%rsi),%bl
    116b:	0b f7                	or     %edi,%esi
    116d:	0a f8                	or     %al,%bh
    116f:	0a fa                	or     %dl,%bh
    1171:	0a 0c 0b             	or     (%rbx,%rcx,1),%cl
    1174:	0d 0b 11 0b 15       	or     $0x150b110b,%eax
    1179:	0b 10                	or     (%rax),%edx
    117b:	0b 12                	or     (%rdx),%edx
    117d:	0b 13                	or     (%rbx),%edx
    117f:	0b 08                	or     (%rax),%ecx
    1181:	0b 02                	or     (%rdx),%eax
    1183:	0b ff                	or     %edi,%edi
    1185:	0a 09                	or     (%rcx),%cl
    1187:	0b fd                	or     %ebp,%edi
    1189:	0a fc                	or     %ah,%bh
    118b:	0a 0e                	or     (%rsi),%cl
    118d:	0b 0f                	or     (%rdi),%ecx
    118f:	0b 00                	or     (%rax),%eax
    1191:	0b 01                	or     (%rcx),%eax
    1193:	0b 0b                	or     (%rbx),%ecx
    1195:	0b 14 0b             	or     (%rbx,%rcx,1),%edx
    1198:	0a 0b                	or     (%rbx),%cl
    119a:	fb                   	sti    
    119b:	0a 04 0b             	or     (%rbx,%rcx,1),%al
    119e:	fe 0a                	decb   (%rdx)
    11a0:	1b 0b                	sbb    (%rbx),%ecx
    11a2:	1a 0b                	sbb    (%rbx),%cl
    11a4:	16                   	(bad)  
    11a5:	0b 18                	or     (%rax),%ebx
    11a7:	0b 17                	or     (%rdi),%edx
    11a9:	0b 19                	or     (%rcx),%ebx
    11ab:	0b 1d 0b 1c 0b 05    	or     0x50b1c0b(%rip),%ebx        # 0x50b2dbc
    11b1:	0b 03                	or     (%rbx),%eax
    11b3:	0b 07                	or     (%rdi),%eax
    11b5:	0b 06                	or     (%rsi),%eax
    11b7:	0b 0f                	or     (%rdi),%ecx
    11b9:	0c e8                	or     $0xe8,%al
    11bb:	0b fe                	or     %esi,%edi
    11bd:	0b 01                	or     (%rcx),%eax
    11bf:	0c 03                	or     $0x3,%al
    11c1:	0c f1                	or     $0xf1,%al
    11c3:	0b fb                	or     %ebx,%edi
    11c5:	0b fa                	or     %edx,%edi
    11c7:	0b e9                	or     %ecx,%ebp
    11c9:	0b 00                	or     (%rax),%eax
    11cb:	0c fd                	or     $0xfd,%al
    11cd:	0b 02                	or     (%rdx),%eax
    11cf:	0c e7                	or     $0xe7,%al
    11d1:	0b ec                	or     %esp,%ebp
    11d3:	0b ee                	or     %esi,%ebp
    11d5:	0b ed                	or     %ebp,%ebp
    11d7:	0b ef                	or     %edi,%ebp
    11d9:	0b 06                	or     (%rsi),%eax
    11db:	0c 05                	or     $0x5,%al
    11dd:	0c 04                	or     $0x4,%al
    11df:	0c 07                	or     $0x7,%al
    11e1:	0c 0a                	or     $0xa,%al
    11e3:	0c 08                	or     $0x8,%al
    11e5:	0c 09                	or     $0x9,%al
    11e7:	0c fc                	or     $0xfc,%al
    11e9:	0b ea                	or     %edx,%ebp
    11eb:	0b eb                	or     %ebx,%ebp
    11ed:	0b f0                	or     %eax,%esi
    11ef:	0b 0b                	or     (%rbx),%ecx
    11f1:	0c 0c                	or     $0xc,%al
    11f3:	0c f2                	or     $0xf2,%al
    11f5:	0b f4                	or     %esp,%esi
    11f7:	0b f3                	or     %ebx,%esi
    11f9:	0b f5                	or     %ebp,%esi
    11fb:	0b f7                	or     %edi,%esi
    11fd:	0b f8                	or     %eax,%edi
    11ff:	0b f6                	or     %esi,%esi
    1201:	0b f9                	or     %ecx,%edi
    1203:	0b ff                	or     %edi,%edi
    1205:	0b ef                	or     %edi,%ebp
    1207:	0a 11                	or     (%rcx),%dl
    1209:	0c 0e                	or     $0xe,%al
    120b:	0c 16                	or     $0x16,%al
    120d:	0c 15                	or     $0x15,%al
    120f:	0c 22                	or     $0x22,%al
    1211:	0c 23                	or     $0x23,%al
    1213:	0c 24                	or     $0x24,%al
    1215:	0c 21                	or     $0x21,%al
    1217:	0c 1a                	or     $0x1a,%al
    1219:	0c 1e                	or     $0x1e,%al
    121b:	0c 1c                	or     $0x1c,%al
    121d:	0c 20                	or     $0x20,%al
    121f:	0c 2e                	or     $0x2e,%al
    1221:	0c 27                	or     $0x27,%al
    1223:	0c 28                	or     $0x28,%al
    1225:	0c 26                	or     $0x26,%al
    1227:	0c 25                	or     $0x25,%al
    1229:	0c 2a                	or     $0x2a,%al
    122b:	0c 2b                	or     $0x2b,%al
    122d:	0c 29                	or     $0x29,%al
    122f:	0c 1f                	or     $0x1f,%al
    1231:	0c 2d                	or     $0x2d,%al
    1233:	0c 2c                	or     $0x2c,%al
    1235:	0c 18                	or     $0x18,%al
    1237:	0c 17                	or     $0x17,%al
    1239:	0c 19                	or     $0x19,%al
    123b:	0c 1d                	or     $0x1d,%al
    123d:	0c 1b                	or     $0x1b,%al
    123f:	0c 34                	or     $0x34,%al
    1241:	0c 37                	or     $0x37,%al
    1243:	0c 3a                	or     $0x3a,%al
    1245:	0c 35                	or     $0x35,%al
    1247:	0c 3b                	or     $0x3b,%al
    1249:	0c 30                	or     $0x30,%al
    124b:	0c 32                	or     $0x32,%al
    124d:	0c 31                	or     $0x31,%al
    124f:	0c 33                	or     $0x33,%al
    1251:	0c 3e                	or     $0x3e,%al
    1253:	0c 38                	or     $0x38,%al
    1255:	0c 39                	or     $0x39,%al
    1257:	0c 36                	or     $0x36,%al
    1259:	0c 8d                	or     $0x8d,%al
    125b:	0b d1                	or     %ecx,%edx
    125d:	01 92 0b af 0b b7    	add    %edx,-0x48f450f5(%rdx)
    1263:	0b b2 0b b1 0b bb    	or     -0x44f44ef5(%rdx),%esi
    1269:	0b b0 0b 8e 0b f4    	or     -0xbf471f5(%rax),%esi
    126f:	0a be 0b bf 0b aa    	or     -0x55f440f5(%rsi),%bh
    1275:	0b a9 0b ab 0b ad    	or     -0x52f454f5(%rcx),%ebp
    127b:	0b a6 0b a7 0b a4    	or     -0x5bf458f5(%rsi),%esp
    1281:	0b ac 0b a5 0b ae 0b 	or     0xbae0ba5(%rbx,%rcx,1),%ebp
    1288:	a8 0b                	test   $0xb,%al
    128a:	d3 0b                	rorl   %cl,(%rbx)
    128c:	d2 0b                	rorb   %cl,(%rbx)
    128e:	d4                   	(bad)  
    128f:	0b d5                	or     %ebp,%edx
    1291:	0b d1                	or     %ecx,%edx
    1293:	0b bc 0b 23 0b 22 0b 	or     0xb220b23(%rbx,%rcx,1),%edi
    129a:	bd 0b cf 0b cd       	mov    $0xcd0bcf0b,%ebp
    129f:	0b ce                	or     %esi,%ecx
    12a1:	0b cb                	or     %ebx,%ecx
    12a3:	0b cc                	or     %esp,%ecx
    12a5:	0b 90 0b 91 0b 93    	or     -0x6cf46ef5(%rax),%edx
    12ab:	0b a1 0b 9f 0b a0    	or     -0x5ff460f5(%rcx),%esp
    12b1:	0b a2 0b 94 0b a3    	or     -0x5cf46bf5(%rdx),%esp
    12b7:	0b b9 0b b8 0b ba    	or     -0x45f447f5(%rcx),%edi
    12bd:	0b b3 0b b4 0b b5    	or     -0x4af44bf5(%rbx),%esi
    12c3:	0b b6 0b 8f 0b c2    	or     -0x3df470f5(%rsi),%esi
    12c9:	0b c0                	or     %eax,%eax
    12cb:	0b c1                	or     %ecx,%eax
    12cd:	0b c4                	or     %esp,%eax
    12cf:	0b c3                	or     %ebx,%eax
    12d1:	0b d2                	or     %edx,%edx
    12d3:	01 5c 0c 3f          	add    %ebx,0x3f(%rsp,%rcx,1)
    12d7:	0c 40                	or     $0x40,%al
    12d9:	0c 41                	or     $0x41,%al
    12db:	0c 42                	or     $0x42,%al
    12dd:	0c 43                	or     $0x43,%al
    12df:	0c 4f                	or     $0x4f,%al
    12e1:	0c 5f                	or     $0x5f,%al
    12e3:	0b 5b 0c             	or     0xc(%rbx),%ebx
    12e6:	5a                   	pop    %rdx
    12e7:	0c 59                	or     $0x59,%al
    12e9:	0c 50                	or     $0x50,%al
    12eb:	0c 4d                	or     $0x4d,%al
    12ed:	0c da                	or     $0xda,%al
    12ef:	0b 52 0c             	or     0xc(%rdx),%edx
    12f2:	53                   	push   %rbx
    12f3:	0c 54                	or     $0x54,%al
    12f5:	0c 57                	or     $0x57,%al
    12f7:	0c 56                	or     $0x56,%al
    12f9:	0c 55                	or     $0x55,%al
    12fb:	0c 58                	or     $0x58,%al
    12fd:	0c 51                	or     $0x51,%al
    12ff:	0c df                	or     $0xdf,%al
    1301:	0b e2                	or     %edx,%esp
    1303:	0b e1                	or     %ecx,%esp
    1305:	0b dc                	or     %esp,%ebx
    1307:	0b 4e 0c             	or     0xc(%rsi),%ecx
    130a:	35 0b 4c 0c 25       	xor    $0x250c4c0b,%eax
    130f:	0b 26                	or     (%rsi),%esp
    1311:	0b 27                	or     (%rdi),%esp
    1313:	0b 24 0b             	or     (%rbx,%rcx,1),%esp
    1316:	d9 0b                	(bad)  (%rbx)
    1318:	dd 0b                	fisttpll (%rbx)
    131a:	e0 0b                	loopne 0x1327
    131c:	44 0c 45             	rex.R or $0x45,%al
    131f:	0c 49                	or     $0x49,%al
    1321:	0c 46                	or     $0x46,%al
    1323:	0c 4b                	or     $0x4b,%al
    1325:	0c 4a                	or     $0x4a,%al
    1327:	0c 48                	or     $0x48,%al
    1329:	0c 47                	or     $0x47,%al
    132b:	0c 9a                	or     $0x9a,%al
    132d:	0b 98 0b 96 0b 95    	or     -0x6af469f5(%rax),%ebx
    1333:	0b 9b 0b 99 0b 9c    	or     -0x63f466f5(%rbx),%ebx
    1339:	0b 97 0b db 0b d7    	or     -0x28f424f5(%rdi),%edx
    133f:	0b de                	or     %esi,%ebx
    1341:	0b d8                	or     %eax,%ebx
    1343:	0b c5                	or     %ebp,%eax
    1345:	0b d6                	or     %esi,%edx
    1347:	0b 74 0b c6          	or     -0x3a(%rbx,%rcx,1),%esi
    134b:	0b c7                	or     %edi,%eax
    134d:	0b c8                	or     %eax,%ecx
    134f:	0b c9                	or     %ecx,%ecx
    1351:	0b ca                	or     %edx,%ecx
    1353:	0b 1f                	or     (%rdi),%ebx
    1355:	0b 21                	or     (%rcx),%esp
    1357:	0b ed                	or     %ebp,%ebp
    1359:	0a f1                	or     %cl,%dh
    135b:	0a ee                	or     %dh,%ch
    135d:	0a f0                	or     %al,%dh
    135f:	0a f3                	or     %bl,%dh
    1361:	0a f2                	or     %dl,%dh
    1363:	0a d0                	or     %al,%dl
    1365:	0b 9e 0b 9d 0b 69    	or     0x690b9d0b(%rsi),%ebx
    136b:	08 63 08             	or     %ah,0x8(%rbx)
    136e:	62                   	(bad)  
    136f:	08 61 08             	or     %ah,0x8(%rcx)
    1372:	bd 08 6b 08 6d       	mov    $0x6d086b08,%ebp
    1377:	08 6e 08             	or     %ch,0x8(%rsi)
    137a:	6c                   	insb   (%dx),%es:(%rdi)
    137b:	08 6f 08             	or     %ch,0x8(%rdi)
    137e:	75 08                	jne    0x1388
    1380:	73 08                	jae    0x138a
    1382:	74 08                	je     0x138c
    1384:	70 08                	jo     0x138e
    1386:	71 08                	jno    0x1390
    1388:	72 08                	jb     0x1392
    138a:	6a 08                	push   $0x8
    138c:	84 08                	test   %cl,(%rax)
    138e:	60                   	(bad)  
    138f:	08 76 08             	or     %dh,0x8(%rsi)
    1392:	83 08 7f             	orl    $0x7f,(%rax)
    1395:	08 79 08             	or     %bh,0x8(%rcx)
    1398:	7c 08                	jl     0x13a2
    139a:	78 08                	js     0x13a4
    139c:	7e 08                	jle    0x13a6
    139e:	80 08 77             	orb    $0x77,(%rax)
    13a1:	08 81 08 7b 08 7a    	or     %al,0x7a087b08(%rcx)
    13a7:	08 7d 08             	or     %bh,0x8(%rbp)
    13aa:	82                   	(bad)  
    13ab:	08 64 08 65          	or     %ah,0x65(%rax,%rcx,1)
    13af:	08 67 08             	or     %ah,0x8(%rdi)
    13b2:	66 08 b0 08 b1 08 68 	data16 or %dh,0x6808b108(%rax)
    13b9:	08 af 08 85 08 ba    	or     %ch,-0x45f77af8(%rdi)
    13bf:	08 bb 08 bc 08 b8    	or     %bh,-0x47f743f8(%rbx)
    13c5:	08 b6 08 b5 08 b7    	or     %dh,-0x48f74af8(%rsi)
    13cb:	08 b9 08 b4 08 b2    	or     %bh,-0x4df74bf8(%rcx)
    13d1:	08 b3 08 a9 08 aa    	or     %dh,-0x55f756f8(%rbx)
    13d7:	08 86 08 5f 08 5e    	or     %al,0x5e085f08(%rsi)
    13dd:	08 5d 08             	or     %bl,0x8(%rbp)
    13e0:	93                   	xchg   %eax,%ebx
    13e1:	08 94 08 9b 08 9c 08 	or     %dl,0x89c089b(%rax,%rcx,1)
    13e8:	a8 08                	test   $0x8,%al
    13ea:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    13eb:	08 a3 08 9f 08 a0    	or     %ah,-0x5ff760f8(%rbx)
    13f1:	08 a5 08 a4 08 a6    	or     %ah,-0x59f75bf8(%rbp)
    13f7:	08 a1 08 a2 08 9e    	or     %ah,-0x61f75df8(%rcx)
    13fd:	08 9d 08 92 08 5a    	or     %bl,0x5a089208(%rbp)
    1403:	08 5b 08             	or     %bl,0x8(%rbx)
    1406:	5c                   	pop    %rsp
    1407:	08 98 08 99 08 9a    	or     %bl,-0x65f766f8(%rax)
    140d:	08 88 08 87 08 89    	or     %cl,-0x76f778f8(%rax)
    1413:	08 8f 08 8c 08 8e    	or     %cl,-0x71f773f8(%rdi)
    1419:	08 8d 08 90 08 91    	or     %cl,-0x6ef76ff8(%rbp)
    141f:	08 8b 08 8a 08 96    	or     %cl,-0x69f775f8(%rbx)
    1425:	08 d9                	or     %bl,%cl
    1427:	08 d8                	or     %bl,%al
    1429:	08 be 08 d5 08 d6    	or     %bh,-0x29f72af8(%rsi)
    142f:	08 c7                	or     %al,%bh
    1431:	08 c5                	or     %al,%ch
    1433:	08 c6                	or     %al,%dh
    1435:	08 c8                	or     %cl,%al
    1437:	08 c9                	or     %cl,%cl
    1439:	08 c4                	or     %al,%ah
    143b:	08 c0                	or     %al,%al
    143d:	08 ca                	or     %cl,%dl
    143f:	08 ad 08 d7 08 d4    	or     %ch,-0x2bf728f8(%rbp)
    1445:	08 d3                	or     %dl,%bl
    1447:	08 d2                	or     %dl,%dl
    1449:	08 cc                	or     %cl,%ah
    144b:	08 cd                	or     %cl,%ch
    144d:	08 d0                	or     %dl,%al
    144f:	08 d1                	or     %dl,%cl
    1451:	08 ce                	or     %cl,%dh
    1453:	08 cf                	or     %cl,%bh
    1455:	08 c2                	or     %al,%dl
    1457:	08 c3                	or     %al,%bl
    1459:	08 c1                	or     %al,%cl
    145b:	08 cb                	or     %cl,%bl
    145d:	08 bf 08 ab 08 ae    	or     %bh,-0x51f754f8(%rdi)
    1463:	08 ac 08 37 02 01 02 	or     %ch,0x2010237(%rax,%rcx,1)
    146a:	39 02                	cmp    %eax,(%rdx)
    146c:	09 02                	or     %eax,(%rdx)
    146e:	24 02                	and    $0x2,%al
    1470:	03 02                	add    (%rdx),%eax
    1472:	0a 02                	or     (%rdx),%al
    1474:	0e                   	(bad)  
    1475:	02 0d 02 02 02 04    	add    0x4020202(%rip),%cl        # 0x402167d
    147b:	02 05 02 35 02 fd    	add    -0x2fdcafe(%rip),%al        # 0xfffffffffd024983
    1481:	01 08                	add    %ecx,(%rax)
    1483:	02 ff                	add    %bh,%bh
    1485:	01 00                	add    %eax,(%rax)
    1487:	02 fe                	add    %dh,%bh
    1489:	01 11                	add    %edx,(%rcx)
    148b:	02 13                	add    (%rbx),%dl
    148d:	02 12                	add    (%rdx),%dl
    148f:	02 14 02             	add    (%rdx,%rax,1),%dl
    1492:	3b 02                	cmp    (%rdx),%eax
    1494:	eb 0d                	jmp    0x14a3
    1496:	f3 0d ec 0d f4 0d    	repz or $0xdf40dec,%eax
    149c:	f5                   	cmc    
    149d:	0d f6 0d 0c 02       	or     $0x20c0df6,%eax
    14a2:	1b 02                	sbb    (%rdx),%eax
    14a4:	1c 02                	sbb    $0x2,%al
    14a6:	1f                   	(bad)  
    14a7:	02 1d 02 1e 02 0b    	add    0xb021e02(%rip),%bl        # 0xb0232af
    14ad:	02 0f                	add    (%rdi),%cl
    14af:	02 3a                	add    (%rdx),%bh
    14b1:	02 10                	add    (%rax),%dl
    14b3:	02 1a                	add    (%rdx),%bl
    14b5:	02 19                	add    (%rcx),%bl
    14b7:	02 18                	add    (%rax),%bl
    14b9:	02 16                	add    (%rsi),%dl
    14bb:	02 3c 02             	add    (%rdx,%rax,1),%bh
    14be:	44 02 07             	add    (%rdi),%r8b
    14c1:	02 06                	add    (%rsi),%al
    14c3:	02 30                	add    (%rax),%dh
    14c5:	02 28                	add    (%rax),%ch
    14c7:	02 2d 02 2e 02 27    	add    0x27022e02(%rip),%ch        # 0x270242cf
    14cd:	02 2f                	add    (%rdi),%ch
    14cf:	02 26                	add    (%rsi),%ah
    14d1:	02 2a                	add    (%rdx),%ch
    14d3:	02 31                	add    (%rcx),%dh
    14d5:	02 32                	add    (%rdx),%dh
    14d7:	02 29                	add    (%rcx),%ch
    14d9:	02 2b                	add    (%rbx),%ch
    14db:	02 2c 02             	add    (%rdx,%rax,1),%ch
    14de:	36 02 2d 01 18 00 17 	ss add 0x17001801(%rip),%ch        # 0x17002ce6
    14e5:	00 38                	add    %bh,(%rax)
    14e7:	02 15 02 a9 0a 47    	add    0x470aa902(%rip),%dl        # 0x470abdef
    14ed:	09 48 09             	or     %ecx,0x9(%rax)
    14f0:	4b 09 4a 09          	rex.WXB or %rcx,0x9(%r10)
    14f4:	41 09 44 09 45       	or     %eax,0x45(%r9,%rcx,1)
    14f9:	09 46 09             	or     %eax,0x9(%rsi)
    14fc:	51                   	push   %rcx
    14fd:	09 42 09             	or     %eax,0x9(%rdx)
    1500:	3d 09 3f 09 40       	cmp    $0x40093f09,%eax
    1505:	09 3e                	or     %edi,(%rsi)
    1507:	09 3c 09             	or     %edi,(%rcx,%rcx,1)
    150a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    150b:	0a ad 09 ac 0a b2    	or     -0x4df553f7(%rbp),%ch
    1511:	0a aa 0a 4d 09 4c    	or     0x4c094d0a(%rdx),%ch
    1517:	09 a8 0a b1 0a ad    	or     %ebp,-0x52f54ef6(%rax)
    151d:	0a af 0a 43 09 ae    	or     -0x51f6bcf6(%rdi),%ch
    1523:	0a 4e 09             	or     0x9(%rsi),%cl
    1526:	b0 0a                	mov    $0xa,%al
    1528:	4f 09 50 09          	rex.WRXB or %r10,0x9(%r8)
    152c:	ae                   	scas   %es:(%rdi),%al
    152d:	09 ab 0a 61 0a c6    	or     %ebp,-0x39f59ef6(%rbx)
    1533:	09 cc                	or     %ecx,%esp
    1535:	09 d1                	or     %edx,%ecx
    1537:	09 d7                	or     %edx,%edi
    1539:	09 a5 09 ac 09 a4    	or     %esp,-0x5bf653f7(%rbp)
    153f:	09 a7 09 aa 09 ab    	or     %esp,-0x54f655f7(%rdi)
    1545:	09 a8 09 a6 09 67    	or     %ebp,0x6709a609(%rax)
    154b:	0a 79 0a             	or     0xa(%rcx),%bh
    154e:	e7 0a                	out    %eax,$0xa
    1550:	eb 0a                	jmp    0x155c
    1552:	ec                   	in     (%dx),%al
    1553:	0a e8                	or     %al,%ch
    1555:	0a ea                	or     %dl,%ch
    1557:	0a e9                	or     %cl,%ch
    1559:	0a 85 0a 49 09 66    	or     0x6609490a(%rbp),%al
    155f:	0a 76 0a             	or     0xa(%rsi),%dh
    1562:	75 0a                	jne    0x156e
    1564:	7b 0a                	jnp    0x1570
    1566:	69 0a 7a 0a 68 0a    	imul   $0xa680a7a,(%rdx),%ecx
    156c:	77 0a                	ja     0x1578
    156e:	7f 0a                	jg     0x157a
    1570:	78 0a                	js     0x157c
    1572:	7c 0a                	jl     0x157e
    1574:	7d 0a                	jge    0x1580
    1576:	7e 0a                	jle    0x1582
    1578:	6a 0a                	push   $0xa
    157a:	6c                   	insb   (%dx),%es:(%rdi)
    157b:	0a 6b 0a             	or     0xa(%rbx),%ch
    157e:	63 0a                	movsxd (%rdx),%ecx
    1580:	64 0a 6e 0a          	or     %fs:0xa(%rsi),%ch
    1584:	6d                   	insl   (%dx),%es:(%rdi)
    1585:	0a 71 0a             	or     0xa(%rcx),%dh
    1588:	72 0a                	jb     0x1594
    158a:	6f                   	outsl  %ds:(%rsi),(%dx)
    158b:	0a 70 0a             	or     0xa(%rax),%dh
    158e:	62                   	(bad)  
    158f:	0a 80 0a 83 0a 84    	or     -0x7bf57cf6(%rax),%al
    1595:	0a 82 0a 81 0a 65    	or     0x650a810a(%rdx),%al
    159b:	0a 73 0a             	or     0xa(%rbx),%dh
    159e:	a9 09 74 0a 3b       	test   $0x3b0a7409,%eax
    15a3:	09 04 03             	or     %eax,(%rbx,%rax,1)
    15a6:	c6 02 03             	movb   $0x3,(%rdx)
    15a9:	03 ff                	add    %edi,%edi
    15ab:	02 00                	add    (%rax),%al
    15ad:	03 02                	add    (%rdx),%eax
    15af:	03 01                	add    (%rcx),%eax
    15b1:	03 36                	add    (%rsi),%esi
    15b3:	03 ed                	add    %ebp,%ebp
    15b5:	00 d1                	add    %dl,%cl
    15b7:	0c d2                	or     $0xd2,%al
    15b9:	0c 50                	or     $0x50,%al
    15bb:	0d c7 0c d3 0c       	or     $0xcd30cc7,%eax
    15c0:	c4                   	(bad)  
    15c1:	0c c6                	or     $0xc6,%al
    15c3:	0c a7                	or     $0xa7,%al
    15c5:	0c 55                	or     $0x55,%al
    15c7:	0d 56 0d 57 0d       	or     $0xd570d56,%eax
    15cc:	59                   	pop    %rcx
    15cd:	0d 58 0d 4e 0d       	or     $0xd4e0d58,%eax
    15d2:	4f 0d ee 0c dc 0c    	rex.WRXB or $0xcdc0cee,%rax
    15d8:	87 0d da 0c bf 0c    	xchg   %ecx,0xcbf0cda(%rip)        # 0xcbf22b8
    15de:	33 0d f6 0c f7 0c    	xor    0xcf70cf6(%rip),%ecx        # 0xcf722da
    15e4:	f8                   	clc    
    15e5:	0c f9                	or     $0xf9,%al
    15e7:	0c f5                	or     $0xf5,%al
    15e9:	0c f4                	or     $0xf4,%al
    15eb:	0c 71                	or     $0x71,%al
    15ed:	0d 6d 0d 70 0d       	or     $0xd700d6d,%eax
    15f2:	6e                   	outsb  %ds:(%rsi),(%dx)
    15f3:	0d 6f 0d 7e 0d       	or     $0xd7e0d6f,%eax
    15f8:	7d 0d                	jge    0x1607
    15fa:	79 0d                	jns    0x1609
    15fc:	74 0d                	je     0x160b
    15fe:	7b 0d                	jnp    0x160d
    1600:	7a 0d                	jp     0x160f
    1602:	72 0d                	jb     0x1611
    1604:	7c 0d                	jl     0x1613
    1606:	73 0d                	jae    0x1615
    1608:	76 0d                	jbe    0x1617
    160a:	75 0d                	jne    0x1619
    160c:	82                   	(bad)  
    160d:	0d 7f 0d 80 0d       	or     $0xd800d7f,%eax
    1612:	81 0d 77 0d 8d 0a 78 	orl    $0xd170d78,0xa8d0d77(%rip)        # 0xa8d2393
    1619:	0d 17 0d 
    161c:	19 0d 1a 0d 63 0d    	sbb    %ecx,0xd630d1a(%rip)        # 0xd63233c
    1622:	31 0d 69 0d 64 0d    	xor    %ecx,0xd640d69(%rip)        # 0xd642391
    1628:	90                   	nop
    1629:	0d 91 0d 8b 0d       	or     $0xd8b0d91,%eax
    162e:	1e                   	(bad)  
    162f:	0d 41 0d ec 0c       	or     $0xcec0d41,%eax
    1634:	66 0d 09 0d          	or     $0xd09,%ax
    1638:	8c 0d 8d 0d 2a 0d    	mov    %cs,0xd2a0d8d(%rip)        # 0xd2a23cb
    163e:	29 0d 52 0d b6 0c    	sub    %ecx,0xcb60d52(%rip)        # 0xcb62396
    1644:	b7 0c                	mov    $0xc,%bh
    1646:	b9 0c b8 0c f2       	mov    $0xf20cb80c,%ecx
    164b:	0c 1c                	or     $0x1c,%al
    164d:	0d 0b 0d a6 0c       	or     $0xca60d0b,%eax
    1652:	0d 0d 0c 0d 0e       	or     $0xe0d0c0d,%eax
    1657:	0d fd 0c 32 0d       	or     $0xd320cfd,%eax
    165c:	ae                   	scas   %es:(%rdi),%al
    165d:	0c a9                	or     $0xa9,%al
    165f:	0c af                	or     $0xaf,%al
    1661:	0c ac                	or     $0xac,%al
    1663:	0c 04                	or     $0x4,%al
    1665:	0d 06 0d 03 0d       	or     $0xd030d06,%eax
    166a:	01 0d 02 0d 07 0d    	add    %ecx,0xd070d02(%rip)        # 0xd072372
    1670:	05 0d 2d 0d 2c       	add    $0x2c0d2d0d,%eax
    1675:	0d a2 0c 1b 0d       	or     $0xd1b0ca2,%eax
    167a:	0a 0d a4 0c a5 0c    	or     0xca50ca4(%rip),%cl        # 0xca52324
    1680:	fa                   	cli    
    1681:	0c 16                	or     $0x16,%al
    1683:	0d fb 0c fc 0c       	or     $0xcfc0cfb,%eax
    1688:	15 0d ce 0d 93       	adc    $0x930dce0d,%eax
    168d:	0d aa 0d d4 0d       	or     $0xdd40daa,%eax
    1692:	d3 0d ad 0d a8 0d    	rorl   %cl,0xda80dad(%rip)        # 0xda82445
    1698:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    1699:	0d a7 0d 99 0d       	or     $0xd990da7,%eax
    169e:	a3 0d a4 0d a9 0d af 	movabs %eax,0xd90daf0da90da40d
    16a5:	0d d9 
    16a7:	0d d7 0d d5 0d       	or     $0xdd50dd7,%eax
    16ac:	d6                   	(bad)  
    16ad:	0d ae 0d 48 0d       	or     $0xd480dae,%eax
    16b2:	9b                   	fwait
    16b3:	0d 9c 0d a2 0d       	or     $0xda20d9c,%eax
    16b8:	c3                   	ret    
    16b9:	0d c2 0d c5 0d       	or     $0xdc50dc2,%eax
    16be:	c4                   	(bad)  
    16bf:	0d c6 0d c7 0d       	or     $0xdc70dc6,%eax
    16c4:	a1 0d 4a 0d 49 0d bb 	movabs 0xc10cbb0d490d4a0d,%eax
    16cb:	0c c1 
    16cd:	0d 97 0d 98 0d       	or     $0xd980d97,%eax
    16d2:	94                   	xchg   %eax,%esp
    16d3:	0d 95 0d 96 0d       	or     $0xd960d95,%eax
    16d8:	42 0d d4 0c c5 0c    	rex.X or $0xcc50cd4,%eax
    16de:	c2 0c c1             	ret    $0xc10c
    16e1:	0c 4b                	or     $0x4b,%al
    16e3:	0d eb 0c ed 0c       	or     $0xced0ceb,%eax
    16e8:	e3 0c                	jrcxz  0x16f6
    16ea:	ea                   	(bad)  
    16eb:	0c e9                	or     $0xe9,%al
    16ed:	0c cf                	or     $0xcf,%al
    16ef:	0c c8                	or     $0xc8,%al
    16f1:	0c 3d                	or     $0x3d,%al
    16f3:	0d 25 0d 1f 0d       	or     $0xd1f0d25,%eax
    16f8:	24 0d                	and    $0xd,%al
    16fa:	20 0d 21 0d 22 0d    	and    %cl,0xd220d21(%rip)        # 0xd222421
    1700:	23 0d 57 04 38 04    	and    0x4380457(%rip),%ecx        # 0x4381b5d
    1706:	10 06                	adc    %al,(%rsi)
    1708:	11 06                	adc    %eax,(%rsi)
    170a:	37                   	(bad)  
    170b:	04 36                	add    $0x36,%al
    170d:	04 4e                	add    $0x4e,%al
    170f:	04 14                	add    $0x14,%al
    1711:	06                   	(bad)  
    1712:	20 06                	and    %al,(%rsi)
    1714:	55                   	push   %rbp
    1715:	04 98                	add    $0x98,%al
    1717:	04 11                	add    $0x11,%al
    1719:	04 12                	add    $0x12,%al
    171b:	04 9b                	add    $0x9b,%al
    171d:	04 fc                	add    $0xfc,%al
    171f:	03 fb                	add    %ebx,%edi
    1721:	03 31                	add    (%rcx),%esi
    1723:	06                   	(bad)  
    1724:	76 04                	jbe    0x172a
    1726:	7b 04                	jnp    0x172c
    1728:	15 06 16 06 fd       	adc    $0xfd061606,%eax
    172d:	03 0f                	add    (%rdi),%ecx
    172f:	04 13                	add    $0x13,%al
    1731:	04 2d                	add    $0x2d,%al
    1733:	04 1e                	add    $0x1e,%al
    1735:	04 27                	add    $0x27,%al
    1737:	04 28                	add    $0x28,%al
    1739:	04 29                	add    $0x29,%al
    173b:	04 1a                	add    $0x1a,%al
    173d:	04 18                	add    $0x18,%al
    173f:	04 1b                	add    $0x1b,%al
    1741:	04 1d                	add    $0x1d,%al
    1743:	04 20                	add    $0x20,%al
    1745:	04 1f                	add    $0x1f,%al
    1747:	04 2c                	add    $0x2c,%al
    1749:	04 30                	add    $0x30,%al
    174b:	04 33                	add    $0x33,%al
    174d:	04 31                	add    $0x31,%al
    174f:	04 1c                	add    $0x1c,%al
    1751:	04 2f                	add    $0x2f,%al
    1753:	04 2e                	add    $0x2e,%al
    1755:	04 26                	add    $0x26,%al
    1757:	04 23                	add    $0x23,%al
    1759:	04 22                	add    $0x22,%al
    175b:	04 25                	add    $0x25,%al
    175d:	04 24                	add    $0x24,%al
    175f:	04 21                	add    $0x21,%al
    1761:	04 2b                	add    $0x2b,%al
    1763:	04 2a                	add    $0x2a,%al
    1765:	04 19                	add    $0x19,%al
    1767:	04 32                	add    $0x32,%al
    1769:	04 62                	add    $0x62,%al
    176b:	04 64                	add    $0x64,%al
    176d:	04 66                	add    $0x66,%al
    176f:	04 67                	add    $0x67,%al
    1771:	04 5a                	add    $0x5a,%al
    1773:	04 5c                	add    $0x5c,%al
    1775:	04 7f                	add    $0x7f,%al
    1777:	04 60                	add    $0x60,%al
    1779:	04 6c                	add    $0x6c,%al
    177b:	04 77                	add    $0x77,%al
    177d:	04 6b                	add    $0x6b,%al
    177f:	04 7e                	add    $0x7e,%al
    1781:	04 6f                	add    $0x6f,%al
    1783:	04 7c                	add    $0x7c,%al
    1785:	04 7d                	add    $0x7d,%al
    1787:	04 73                	add    $0x73,%al
    1789:	04 69                	add    $0x69,%al
    178b:	04 6a                	add    $0x6a,%al
    178d:	04 81                	add    $0x81,%al
    178f:	04 70                	add    $0x70,%al
    1791:	04 6d                	add    $0x6d,%al
    1793:	04 95                	add    $0x95,%al
    1795:	04 96                	add    $0x96,%al
    1797:	04 68                	add    $0x68,%al
    1799:	04 72                	add    $0x72,%al
    179b:	04 10                	add    $0x10,%al
    179d:	04 a5                	add    $0xa5,%al
    179f:	04 65                	add    $0x65,%al
    17a1:	04 34                	add    $0x34,%al
    17a3:	04 3b                	add    $0x3b,%al
    17a5:	04 3a                	add    $0x3a,%al
    17a7:	04 3c                	add    $0x3c,%al
    17a9:	04 3d                	add    $0x3d,%al
    17ab:	04 3f                	add    $0x3f,%al
    17ad:	04 42                	add    $0x42,%al
    17af:	04 41                	add    $0x41,%al
    17b1:	04 45                	add    $0x45,%al
    17b3:	04 48                	add    $0x48,%al
    17b5:	04 49                	add    $0x49,%al
    17b7:	04 40                	add    $0x40,%al
    17b9:	04 43                	add    $0x43,%al
    17bb:	04 3e                	add    $0x3e,%al
    17bd:	04 4b                	add    $0x4b,%al
    17bf:	04 47                	add    $0x47,%al
    17c1:	04 4a                	add    $0x4a,%al
    17c3:	04 4c                	add    $0x4c,%al
    17c5:	04 44                	add    $0x44,%al
    17c7:	04 46                	add    $0x46,%al
    17c9:	04 4d                	add    $0x4d,%al
    17cb:	04 9c                	add    $0x9c,%al
    17cd:	04 0e                	add    $0xe,%al
    17cf:	04 17                	add    $0x17,%al
    17d1:	04 61                	add    $0x61,%al
    17d3:	04 89                	add    $0x89,%al
    17d5:	05 88 05 8a 05       	add    $0x58a0588,%eax
    17da:	21 06                	and    %eax,(%rsi)
    17dc:	e0 04                	loopne 0x17e2
    17de:	b0 04                	mov    $0x4,%al
    17e0:	af                   	scas   %es:(%rdi),%eax
    17e1:	04 c5                	add    $0xc5,%al
    17e3:	04 23                	add    $0x23,%al
    17e5:	05 95 05 94 05       	add    $0x5940595,%eax
    17ea:	3b 05 30 05 39 05    	cmp    0x5390530(%rip),%eax        # 0x5391d20
    17f0:	36 05 35 05 3a 05    	ss add $0x53a0535,%eax
    17f6:	3c 05                	cmp    $0x5,%al
    17f8:	38 05 a9 04 17 06    	cmp    %al,0x61704a9(%rip)        # 0x6171ca7
    17fe:	1b 06                	sbb    (%rsi),%eax
    1800:	1c 06                	sbb    $0x6,%al
    1802:	1d 06 34 05 32       	sbb    $0x32053406,%eax
    1807:	05 31 05 33 05       	add    $0x5330531,%eax
    180c:	41 06                	rex.B (bad) 
    180e:	12 06                	adc    (%rsi),%al
    1810:	13 06                	adc    (%rsi),%eax
    1812:	0e                   	(bad)  
    1813:	06                   	(bad)  
    1814:	0c 06                	or     $0x6,%al
    1816:	0d 06 0f 06 1a       	or     $0x1a060f06,%eax
    181b:	06                   	(bad)  
    181c:	18 06                	sbb    %al,(%rsi)
    181e:	19 06                	sbb    %eax,(%rsi)
    1820:	25 06 26 06 3c       	and    $0x3c062606,%eax
    1825:	06                   	(bad)  
    1826:	2e 06                	cs (bad) 
    1828:	2a 06                	sub    (%rsi),%al
    182a:	29 06                	sub    %eax,(%rsi)
    182c:	38 06                	cmp    %al,(%rsi)
    182e:	22 06                	and    (%rsi),%al
    1830:	23 06                	and    (%rsi),%eax
    1832:	28 06                	sub    %al,(%rsi)
    1834:	24 06                	and    $0x6,%al
    1836:	1f                   	(bad)  
    1837:	06                   	(bad)  
    1838:	1e                   	(bad)  
    1839:	06                   	(bad)  
    183a:	c6 04 c7 04          	movb   $0x4,(%rdi,%rax,8)
    183e:	c8 04 c9 04          	enter  $0xc904,$0x4
    1842:	ce                   	(bad)  
    1843:	04 cc                	add    $0xcc,%al
    1845:	04 cd                	add    $0xcd,%al
    1847:	04 cf                	add    $0xcf,%al
    1849:	04 d8                	add    $0xd8,%al
    184b:	04 d0                	add    $0xd0,%al
    184d:	04 ad                	add    $0xad,%al
    184f:	04 d1                	add    $0xd1,%al
    1851:	04 d2                	add    $0xd2,%al
    1853:	04 d3                	add    $0xd3,%al
    1855:	04 ab                	add    $0xab,%al
    1857:	04 d7                	add    $0xd7,%al
    1859:	04 2e                	add    $0x2e,%al
    185b:	05 ac 04 d6 04       	add    $0x4d604ac,%eax
    1860:	d5                   	(bad)  
    1861:	04 ae                	add    $0xae,%al
    1863:	04 bf                	add    $0xbf,%al
    1865:	04 b5                	add    $0xb5,%al
    1867:	04 b6                	add    $0xb6,%al
    1869:	04 2c                	add    $0x2c,%al
    186b:	05 26 05 25 05       	add    $0x5250526,%eax
    1870:	22 05 11 05 27 05    	and    0x5270511(%rip),%al        # 0x5271d87
    1876:	12 05 0f 05 10 05    	adc    0x510050f(%rip),%al        # 0x5101d8b
    187c:	c4                   	(bad)  
    187d:	04 18                	add    $0x18,%al
    187f:	05 17 05 c3 04       	add    $0x4c30517,%eax
    1884:	c2 04 c1             	ret    $0xc104
    1887:	04 1a                	add    $0x1a,%al
    1889:	05 1d 05 1b 05       	add    $0x51b051d,%eax
    188e:	1e                   	(bad)  
    188f:	05 1f 05 1c 05       	add    $0x51c051f,%eax
    1894:	19 05 be 04 2d 05    	sbb    %eax,0x52d04be(%rip)        # 0x52d1d58
    189a:	20 05 fb 04 2f 05    	and    %al,0x52f04fb(%rip)        # 0x52f1d9b
    18a0:	aa                   	stos   %al,%es:(%rdi)
    18a1:	04 f9                	add    $0xf9,%al
    18a3:	04 fa                	add    $0xfa,%al
    18a5:	04 f7                	add    $0xf7,%al
    18a7:	04 f1                	add    $0xf1,%al
    18a9:	04 e4                	add    $0xe4,%al
    18ab:	04 e5                	add    $0xe5,%al
    18ad:	04 e7                	add    $0xe7,%al
    18af:	04 e6                	add    $0xe6,%al
    18b1:	04 ec                	add    $0xec,%al
    18b3:	04 e9                	add    $0xe9,%al
    18b5:	04 e8                	add    $0xe8,%al
    18b7:	04 f0                	add    $0xf0,%al
    18b9:	04 ef                	add    $0xef,%al
    18bb:	04 eb                	add    $0xeb,%al
    18bd:	04 ee                	add    $0xee,%al
    18bf:	04 ed                	add    $0xed,%al
    18c1:	04 ea                	add    $0xea,%al
    18c3:	04 f2                	add    $0xf2,%al
    18c5:	04 f4                	add    $0xf4,%al
    18c7:	04 f5                	add    $0xf5,%al
    18c9:	04 f6                	add    $0xf6,%al
    18cb:	04 d9                	add    $0xd9,%al
    18cd:	04 e1                	add    $0xe1,%al
    18cf:	04 e2                	add    $0xe2,%al
    18d1:	04 dc                	add    $0xdc,%al
    18d3:	04 b1                	add    $0xb1,%al
    18d5:	04 ff                	add    $0xff,%al
    18d7:	03 77 05             	add    0x5(%rdi),%esi
    18da:	00 04 02             	add    %al,(%rdx,%rax,1)
    18dd:	04 03                	add    $0x3,%al
    18df:	04 04                	add    $0x4,%al
    18e1:	04 06                	add    $0x6,%al
    18e3:	04 05                	add    $0x5,%al
    18e5:	04 01                	add    $0x1,%al
    18e7:	04 07                	add    $0x7,%al
    18e9:	05 04 05 06 05       	add    $0x5060504,%eax
    18ee:	02 05 09 05 05 05    	add    0x5050509(%rip),%al        # 0x5051dfd
    18f4:	08 05 03 05 01 05    	or     %al,0x5010503(%rip)        # 0x5011dfd
    18fa:	0e                   	(bad)  
    18fb:	05 00 05 0c 05       	add    $0x50c0500,%eax
    1900:	fe 04 0d 05 0a 05 ff 	incb   -0xfaf5fb(,%rcx,1)
    1907:	04 0b                	add    $0xb,%al
    1909:	05 14 05 13 05       	add    $0x5130514,%eax
    190e:	16                   	(bad)  
    190f:	05 15 05 24 05       	add    $0x5240515,%eax
    1914:	21 05 97 04 9d 04    	and    %eax,0x49d0497(%rip)        # 0x49d1db1
    191a:	fc                   	cld    
    191b:	04 fd                	add    $0xfd,%al
    191d:	04 b7                	add    $0xb7,%al
    191f:	04 b8                	add    $0xb8,%al
    1921:	04 b9                	add    $0xb9,%al
    1923:	04 ba                	add    $0xba,%al
    1925:	04 bb                	add    $0xbb,%al
    1927:	04 8f                	add    $0x8f,%al
    1929:	05 8e 05 8d 05       	add    $0x58d058e,%eax
    192e:	86 05 fa 05 fe 05    	xchg   %al,0x5fe05fa(%rip)        # 0x5fe1f2e
    1934:	fd                   	std    
    1935:	05 f3 05 f2 05       	add    $0x5f205f3,%eax
    193a:	f0 05 f4 05 ef 05    	lock add $0x5ef05f4,%eax
    1940:	ee                   	out    %al,(%dx)
    1941:	05 f5 05 f1 05       	add    $0x5f105f5,%eax
    1946:	ed                   	in     (%dx),%eax
    1947:	05 ec 05 ea 05       	add    $0x5ea05ec,%eax
    194c:	e9 05 eb 05 e8       	jmp    0xffffffffe8060456
    1951:	05 d4 05 d6 05       	add    $0x5d605d4,%eax
    1956:	d5                   	(bad)  
    1957:	05 d7 05 d8 05       	add    $0x5d805d7,%eax
    195c:	57                   	push   %rdi
    195d:	06                   	(bad)  
    195e:	56                   	push   %rsi
    195f:	06                   	(bad)  
    1960:	59                   	pop    %rcx
    1961:	06                   	(bad)  
    1962:	39 04 47             	cmp    %eax,(%rdi,%rax,2)
    1965:	06                   	(bad)  
    1966:	5a                   	pop    %rdx
    1967:	06                   	(bad)  
    1968:	63 04 4c             	movsxd (%rsp,%rcx,2),%eax
    196b:	06                   	(bad)  
    196c:	4e 06                	rex.WRX (bad) 
    196e:	4a 06                	rex.WX (bad) 
    1970:	48 06                	rex.W (bad) 
    1972:	49 06                	rex.WB (bad) 
    1974:	51                   	push   %rcx
    1975:	06                   	(bad)  
    1976:	50                   	push   %rax
    1977:	06                   	(bad)  
    1978:	52                   	push   %rdx
    1979:	06                   	(bad)  
    197a:	4f 06                	rex.WRXB (bad) 
    197c:	4b 06                	rex.WXB (bad) 
    197e:	5b                   	pop    %rbx
    197f:	04 53                	add    $0x53,%al
    1981:	06                   	(bad)  
    1982:	54                   	push   %rsp
    1983:	06                   	(bad)  
    1984:	55                   	push   %rbp
    1985:	06                   	(bad)  
    1986:	4d 06                	rex.WRB (bad) 
    1988:	42 06                	rex.X (bad) 
    198a:	43 06                	rex.XB (bad) 
    198c:	45 06                	rex.RB (bad) 
    198e:	44 06                	rex.R (bad) 
    1990:	0b 04 09             	or     (%rcx,%rcx,1),%eax
    1993:	04 08                	add    $0x8,%al
    1995:	04 0d                	add    $0xd,%al
    1997:	04 0a                	add    $0xa,%al
    1999:	04 0c                	add    $0xc,%al
    199b:	04 07                	add    $0x7,%al
    199d:	04 35                	add    $0x35,%al
    199f:	04 46                	add    $0x46,%al
    19a1:	06                   	(bad)  
    19a2:	dc 05 e6 05 e5 05    	faddl  0x5e505e6(%rip)        # 0x5e51f8e
    19a8:	e0 05                	loopne 0x19af
    19aa:	df 05 e1 05 dd 05    	filds  0x5dd05e1(%rip)        # 0x5dd1f91
    19b0:	de 05 d9 05 e7 05    	fiadds 0x5e705d9(%rip)        # 0x5e71f8f
    19b6:	db 05 da 05 e4 05    	fildl  0x5e405da(%rip)        # 0x5e41f96
    19bc:	e3 05                	jrcxz  0x19c3
    19be:	e2 05                	loop   0x19c5
    19c0:	87 05 33 06 30 06    	xchg   %eax,0x6300633(%rip)        # 0x6301ff9
    19c6:	36 06                	ss (bad) 
    19c8:	37                   	(bad)  
    19c9:	06                   	(bad)  
    19ca:	34 06                	xor    $0x6,%al
    19cc:	35 06 32 06 a5       	xor    $0xa5063206,%eax
    19d1:	05 a1 05 be 05       	add    $0x5be05a1,%eax
    19d6:	cf                   	iret   
    19d7:	05 a4 05 b8 05       	add    $0x5b805a4,%eax
    19dc:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    19dd:	05 ab 05 aa 05       	add    $0x5aa05ab,%eax
    19e2:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    19e3:	05 ac 05 ae 05       	add    $0x5ae05ac,%eax
    19e8:	a8 05                	test   $0x5,%al
    19ea:	a9 05 bf 05 b6       	test   $0xb605bf05,%eax
    19ef:	05 b5 05 b4 05       	add    $0x5b405b5,%eax
    19f4:	b3 05                	mov    $0x5,%bl
    19f6:	b9 05 bb 05 ba       	mov    $0xba05bb05,%ecx
    19fb:	05 bd 05 bc 05       	add    $0x5bc05bd,%eax
    1a00:	ad                   	lods   %ds:(%rsi),%eax
    1a01:	05 b0 05 b1 05       	add    $0x5b105b0,%eax
    1a06:	b2 05                	mov    $0x5,%dl
    1a08:	d3 05 d2 05 d1 05    	roll   %cl,0x5d105d2(%rip)        # 0x5d11fe0
    1a0e:	d0 05 c0 05 c3 05    	rolb   0x5c305c0(%rip)        # 0x5c31fd4
    1a14:	de 04 ce             	fiadds (%rsi,%rcx,8)
    1a17:	05 c4 05 c1 05       	add    $0x5c105c4,%eax
    1a1c:	c2 05 cb             	ret    $0xcb05
    1a1f:	05 c5 05 c7 05       	add    $0x5c705c5,%eax
    1a24:	ca 05 c6             	lret   $0xc605
    1a27:	05 cd 05 cc 05       	add    $0x5cc05cd,%eax
    1a2c:	c8 05 c9 05          	enter  $0xc905,$0x5
    1a30:	df 04 a2             	filds  (%rdx,%riz,4)
    1a33:	05 a3 05 01 06       	add    $0x60105a3,%eax
    1a38:	02 06                	add    (%rsi),%al
    1a3a:	03 06                	add    (%rsi),%eax
    1a3c:	56                   	push   %rsi
    1a3d:	04 58                	add    $0x58,%al
    1a3f:	04 15                	add    $0x15,%al
    1a41:	04 16                	add    $0x16,%al
    1a43:	04 14                	add    $0x14,%al
    1a45:	04 af                	add    $0xaf,%al
    1a47:	05 84 05 85 05       	add    $0x5850584,%eax
    1a4c:	8c 05 8b 05 dd 04    	mov    %es,0x4dd058b(%rip)        # 0x4dd1fdd
    1a52:	93                   	xchg   %eax,%ebx
    1a53:	05 91 05 90 05       	add    $0x5900591,%eax
    1a58:	92                   	xchg   %eax,%edx
    1a59:	05 5f 04 5e 04       	add    $0x45e045f,%eax
    1a5e:	5d                   	pop    %rbp
    1a5f:	04 82                	add    $0x82,%al
    1a61:	04 80                	add    $0x80,%al
    1a63:	04 75                	add    $0x75,%al
    1a65:	04 e3                	add    $0xe3,%al
    1a67:	04 7a                	add    $0x7a,%al
    1a69:	04 79                	add    $0x79,%al
    1a6b:	04 78                	add    $0x78,%al
    1a6d:	04 71                	add    $0x71,%al
    1a6f:	04 05                	add    $0x5,%al
    1a71:	06                   	(bad)  
    1a72:	94                   	xchg   %eax,%esp
    1a73:	04 4f                	add    $0x4f,%al
    1a75:	04 53                	add    $0x53,%al
    1a77:	04 51                	add    $0x51,%al
    1a79:	04 52                	add    $0x52,%al
    1a7b:	04 54                	add    $0x54,%al
    1a7d:	04 50                	add    $0x50,%al
    1a7f:	04 84                	add    $0x84,%al
    1a81:	04 83                	add    $0x83,%al
    1a83:	04 8b                	add    $0x8b,%al
    1a85:	04 85                	add    $0x85,%al
    1a87:	04 8c                	add    $0x8c,%al
    1a89:	04 8d                	add    $0x8d,%al
    1a8b:	04 91                	add    $0x91,%al
    1a8d:	04 92                	add    $0x92,%al
    1a8f:	04 87                	add    $0x87,%al
    1a91:	04 86                	add    $0x86,%al
    1a93:	04 93                	add    $0x93,%al
    1a95:	04 8a                	add    $0x8a,%al
    1a97:	04 90                	add    $0x90,%al
    1a99:	04 8e                	add    $0x8e,%al
    1a9b:	04 89                	add    $0x89,%al
    1a9d:	04 8f                	add    $0x8f,%al
    1a9f:	04 88                	add    $0x88,%al
    1aa1:	04 06                	add    $0x6,%al
    1aa3:	06                   	(bad)  
    1aa4:	09 06                	or     %eax,(%rsi)
    1aa6:	07                   	(bad)  
    1aa7:	06                   	(bad)  
    1aa8:	0a 06                	or     (%rsi),%al
    1aaa:	08 06                	or     %al,(%rsi)
    1aac:	59                   	pop    %rcx
    1aad:	04 0b                	add    $0xb,%al
    1aaf:	06                   	(bad)  
    1ab0:	04 06                	add    $0x6,%al
    1ab2:	b7 05                	mov    $0x5,%bh
    1ab4:	9d                   	popf   
    1ab5:	05 9f 05 9e 05       	add    $0x59e059f,%eax
    1aba:	97                   	xchg   %eax,%edi
    1abb:	05 98 05 99 05       	add    $0x5990598,%eax
    1ac0:	96                   	xchg   %eax,%esi
    1ac1:	05 9b 05 9a 05       	add    $0x59a059b,%eax
    1ac6:	9c                   	pushf  
    1ac7:	05 a0 05 82 05       	add    $0x58205a0,%eax
    1acc:	81 05 00 06 83 05 80 	addl   $0x57e0580,0x5830600(%rip)        # 0x58320d6
    1ad3:	05 7e 05 
    1ad6:	7d 05                	jge    0x1add
    1ad8:	7c 05                	jl     0x1adf
    1ada:	7a 05                	jp     0x1ae1
    1adc:	7b 05                	jnp    0x1ae3
    1ade:	7f 05                	jg     0x1ae5
    1ae0:	78 05                	js     0x1ae7
    1ae2:	79 05                	jns    0x1ae9
    1ae4:	58                   	pop    %rax
    1ae5:	06                   	(bad)  
    1ae6:	2a 05 28 05 29 05    	sub    0x5290528(%rip),%al        # 0x5292014
    1aec:	2b 05 f3 04 5b 07    	sub    0x75b04f3(%rip),%eax        # 0x75b1fe5
    1af2:	5f                   	pop    %rdi
    1af3:	07                   	(bad)  
    1af4:	84 07                	test   %al,(%rdi)
    1af6:	85 07                	test   %eax,(%rdi)
    1af8:	86 07                	xchg   %al,(%rdi)
    1afa:	4f 07                	rex.WRXB (bad) 
    1afc:	77 06                	ja     0x1b04
    1afe:	7f 06                	jg     0x1b06
    1b00:	87 06                	xchg   %eax,(%rsi)
    1b02:	85 06                	test   %eax,(%rsi)
    1b04:	81 06 80 06 82 06    	addl   $0x6820680,(%rsi)
    1b0a:	83 06 88             	addl   $0xffffff88,(%rsi)
    1b0d:	06                   	(bad)  
    1b0e:	84 06                	test   %al,(%rsi)
    1b10:	86 06                	xchg   %al,(%rsi)
    1b12:	8a 06                	mov    (%rsi),%al
    1b14:	6c                   	insb   (%dx),%es:(%rdi)
    1b15:	06                   	(bad)  
    1b16:	70 06                	jo     0x1b1e
    1b18:	61                   	(bad)  
    1b19:	06                   	(bad)  
    1b1a:	63 06                	movsxd (%rsi),%eax
    1b1c:	5f                   	pop    %rdi
    1b1d:	06                   	(bad)  
    1b1e:	5c                   	pop    %rsp
    1b1f:	06                   	(bad)  
    1b20:	62 06 64 06 67       	(bad)
    1b25:	06                   	(bad)  
    1b26:	66 06                	data16 (bad) 
    1b28:	65 06                	gs (bad) 
    1b2a:	5e                   	pop    %rsi
    1b2b:	06                   	(bad)  
    1b2c:	5d                   	pop    %rbp
    1b2d:	06                   	(bad)  
    1b2e:	60                   	(bad)  
    1b2f:	06                   	(bad)  
    1b30:	68 06 6a 06 6b       	push   $0x6b066a06
    1b35:	06                   	(bad)  
    1b36:	69 06 76 06 79 06    	imul   $0x6790676,(%rsi),%eax
    1b3c:	78 06                	js     0x1b44
    1b3e:	7a 06                	jp     0x1b46
    1b40:	7e 06                	jle    0x1b48
    1b42:	7b 06                	jnp    0x1b4a
    1b44:	7c 06                	jl     0x1b4c
    1b46:	7d 06                	jge    0x1b4e
    1b48:	66 07                	data16 (bad) 
    1b4a:	94                   	xchg   %eax,%esp
    1b4b:	06                   	(bad)  
    1b4c:	93                   	xchg   %eax,%ebx
    1b4d:	06                   	(bad)  
    1b4e:	95                   	xchg   %eax,%ebp
    1b4f:	06                   	(bad)  
    1b50:	96                   	xchg   %eax,%esi
    1b51:	06                   	(bad)  
    1b52:	8d 06                	lea    (%rsi),%eax
    1b54:	8e 06                	mov    (%rsi),%es
    1b56:	8f 06                	pop    (%rsi)
    1b58:	91                   	xchg   %eax,%ecx
    1b59:	06                   	(bad)  
    1b5a:	90                   	nop
    1b5b:	06                   	(bad)  
    1b5c:	92                   	xchg   %eax,%edx
    1b5d:	06                   	(bad)  
    1b5e:	67 07                	addr32 (bad) 
    1b60:	8b 06                	mov    (%rsi),%eax
    1b62:	8c 06                	mov    %es,(%rsi)
    1b64:	89 06                	mov    %eax,(%rsi)
    1b66:	b7 06                	mov    $0x6,%bh
    1b68:	15 08 34 08 a8       	adc    $0xa8083408,%eax
    1b6d:	06                   	(bad)  
    1b6e:	a9 06 b0 06 af       	test   $0xaf06b006,%eax
    1b73:	06                   	(bad)  
    1b74:	aa                   	stos   %al,%es:(%rdi)
    1b75:	06                   	(bad)  
    1b76:	ae                   	scas   %es:(%rdi),%al
    1b77:	06                   	(bad)  
    1b78:	ad                   	lods   %ds:(%rsi),%eax
    1b79:	06                   	(bad)  
    1b7a:	b1 06                	mov    $0x6,%cl
    1b7c:	ac                   	lods   %ds:(%rsi),%al
    1b7d:	06                   	(bad)  
    1b7e:	ab                   	stos   %eax,%es:(%rdi)
    1b7f:	06                   	(bad)  
    1b80:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    1b81:	06                   	(bad)  
    1b82:	b2 06                	mov    $0x6,%dl
    1b84:	a2 06 a1 06 9f 06 9d 	movabs %al,0xa0069d069f06a106
    1b8b:	06 a0 
    1b8d:	06                   	(bad)  
    1b8e:	a3 06 a4 06 9e 06 b9 	movabs %eax,0xba06b9069e06a406
    1b95:	06 ba 
    1b97:	06                   	(bad)  
    1b98:	9b                   	fwait
    1b99:	06                   	(bad)  
    1b9a:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    1b9b:	06                   	(bad)  
    1b9c:	97                   	xchg   %eax,%edi
    1b9d:	06                   	(bad)  
    1b9e:	98                   	cwtl   
    1b9f:	06                   	(bad)  
    1ba0:	9c                   	pushf  
    1ba1:	06                   	(bad)  
    1ba2:	33 08                	xor    (%rax),%ecx
    1ba4:	b3 06                	mov    $0x6,%bl
    1ba6:	b5 06                	mov    $0x6,%ch
    1ba8:	b4 06                	mov    $0x6,%ah
    1baa:	54                   	push   %rsp
    1bab:	07                   	(bad)  
    1bac:	79 07                	jns    0x1bb5
    1bae:	74 07                	je     0x1bb7
    1bb0:	82                   	(bad)  
    1bb1:	07                   	(bad)  
    1bb2:	83 07 80             	addl   $0xffffff80,(%rdi)
    1bb5:	07                   	(bad)  
    1bb6:	81 07 7e 07 7a 07    	addl   $0x77a077e,(%rdi)
    1bbc:	70 07                	jo     0x1bc5
    1bbe:	7f 07                	jg     0x1bc7
    1bc0:	7d 07                	jge    0x1bc9
    1bc2:	7b 07                	jnp    0x1bcb
    1bc4:	7c 07                	jl     0x1bcd
    1bc6:	69 07 71 07 75 07    	imul   $0x7750771,(%rdi),%eax
    1bcc:	77 07                	ja     0x1bd5
    1bce:	78 07                	js     0x1bd7
    1bd0:	76 07                	jbe    0x1bd9
    1bd2:	6b 07 6a             	imul   $0x6a,(%rdi),%eax
    1bd5:	07                   	(bad)  
    1bd6:	6c                   	insb   (%dx),%es:(%rdi)
    1bd7:	07                   	(bad)  
    1bd8:	6f                   	outsl  %ds:(%rsi),(%dx)
    1bd9:	07                   	(bad)  
    1bda:	6e                   	outsb  %ds:(%rsi),(%dx)
    1bdb:	07                   	(bad)  
    1bdc:	6e                   	outsb  %ds:(%rsi),(%dx)
    1bdd:	04 a0                	add    $0xa0,%al
    1bdf:	04 a3                	add    $0xa3,%al
    1be1:	04 a4                	add    $0xa4,%al
    1be3:	04 a1                	add    $0xa1,%al
    1be5:	04 a8                	add    $0xa8,%al
    1be7:	04 6d                	add    $0x6d,%al
    1be9:	07                   	(bad)  
    1bea:	f6 05 f9 05 f7 05 fc 	testb  $0xfc,0x5f705f9(%rip)        # 0x5f721ea
    1bf1:	05 f8 05 fb 05       	add    $0x5fb05f8,%eax
    1bf6:	ff 05 74 04 50 07    	incl   0x7500474(%rip)        # 0x7502070
    1bfc:	5b                   	pop    %rbx
    1bfd:	06                   	(bad)  
    1bfe:	52                   	push   %rdx
    1bff:	07                   	(bad)  
    1c00:	71 06                	jno    0x1c08
    1c02:	74 06                	je     0x1c0a
    1c04:	75 06                	jne    0x1c0c
    1c06:	73 06                	jae    0x1c0e
    1c08:	72 06                	jb     0x1c10
    1c0a:	6e                   	outsb  %ds:(%rsi),(%dx)
    1c0b:	06                   	(bad)  
    1c0c:	68 07 6d 06 51       	push   $0x51066d07
    1c11:	07                   	(bad)  
    1c12:	5a                   	pop    %rdx
    1c13:	07                   	(bad)  
    1c14:	60                   	(bad)  
    1c15:	07                   	(bad)  
    1c16:	55                   	push   %rbp
    1c17:	07                   	(bad)  
    1c18:	56                   	push   %rsi
    1c19:	07                   	(bad)  
    1c1a:	5e                   	pop    %rsi
    1c1b:	07                   	(bad)  
    1c1c:	5d                   	pop    %rbp
    1c1d:	07                   	(bad)  
    1c1e:	65 07                	gs (bad) 
    1c20:	57                   	push   %rdi
    1c21:	07                   	(bad)  
    1c22:	59                   	pop    %rcx
    1c23:	07                   	(bad)  
    1c24:	58                   	pop    %rax
    1c25:	07                   	(bad)  
    1c26:	64 07                	fs (bad) 
    1c28:	5c                   	pop    %rsp
    1c29:	07                   	(bad)  
    1c2a:	61                   	(bad)  
    1c2b:	07                   	(bad)  
    1c2c:	62                   	(bad)  
    1c2d:	07                   	(bad)  
    1c2e:	63 07                	movsxd (%rdi),%eax
    1c30:	bf 07 be 07 c0       	mov    $0xc007be07,%edi
    1c35:	07                   	(bad)  
    1c36:	14 08                	adc    $0x8,%al
    1c38:	ee                   	out    %al,(%dx)
    1c39:	07                   	(bad)  
    1c3a:	ef                   	out    %eax,(%dx)
    1c3b:	07                   	(bad)  
    1c3c:	f0 07                	lock (bad) 
    1c3e:	f8                   	clc    
    1c3f:	07                   	(bad)  
    1c40:	df 07                	filds  (%rdi)
    1c42:	28 08                	sub    %cl,(%rax)
    1c44:	27                   	(bad)  
    1c45:	08 2e                	or     %ch,(%rsi)
    1c47:	08 2d 08 29 08 2c    	or     %ch,0x2c082908(%rip)        # 0x2c084555
    1c4d:	08 2f                	or     %ch,(%rdi)
    1c4f:	08 2a                	or     %ch,(%rdx)
    1c51:	08 2b                	or     %ch,(%rbx)
    1c53:	08 ca                	or     %cl,%dl
    1c55:	07                   	(bad)  
    1c56:	cb                   	lret   
    1c57:	07                   	(bad)  
    1c58:	c4                   	(bad)  
    1c59:	07                   	(bad)  
    1c5a:	c9                   	leave  
    1c5b:	07                   	(bad)  
    1c5c:	c8 07 cc 07          	enter  $0xcc07,$0x7
    1c60:	c5 07 c6             	(bad)
    1c63:	07                   	(bad)  
    1c64:	c7 07 cd 07 d0 07    	movl   $0x7d007cd,(%rdi)
    1c6a:	d1 07                	roll   (%rdi)
    1c6c:	cf                   	iret   
    1c6d:	07                   	(bad)  
    1c6e:	ce                   	(bad)  
    1c6f:	07                   	(bad)  
    1c70:	e5 07                	in     $0x7,%eax
    1c72:	e4 07                	in     $0x7,%al
    1c74:	e2 07                	loop   0x1c7d
    1c76:	e1 07                	loope  0x1c7f
    1c78:	e3 07                	jrcxz  0x1c81
    1c7a:	d2 07                	rolb   %cl,(%rdi)
    1c7c:	e6 07                	out    %al,$0x7
    1c7e:	fc                   	cld    
    1c7f:	07                   	(bad)  
    1c80:	fd                   	std    
    1c81:	07                   	(bad)  
    1c82:	fe 07                	incb   (%rdi)
    1c84:	e0 07                	loopne 0x1c8d
    1c86:	fa                   	cli    
    1c87:	07                   	(bad)  
    1c88:	fb                   	sti    
    1c89:	07                   	(bad)  
    1c8a:	ff 07                	incl   (%rdi)
    1c8c:	f9                   	stc    
    1c8d:	07                   	(bad)  
    1c8e:	c2 07 f3             	ret    $0xf307
    1c91:	07                   	(bad)  
    1c92:	f2 07                	repnz (bad) 
    1c94:	f6 07 f1             	testb  $0xf1,(%rdi)
    1c97:	07                   	(bad)  
    1c98:	f7 07 f5 07 f4 07    	testl  $0x7f407f5,(%rdi)
    1c9e:	08 08                	or     %cl,(%rax)
    1ca0:	e7 07                	out    %eax,$0x7
    1ca2:	22 08                	and    (%rax),%cl
    1ca4:	21 08                	and    %ecx,(%rax)
    1ca6:	18 08                	sbb    %cl,(%rax)
    1ca8:	19 08                	sbb    %ecx,(%rax)
    1caa:	1f                   	(bad)  
    1cab:	08 23                	or     %ah,(%rbx)
    1cad:	08 1b                	or     %bl,(%rbx)
    1caf:	08 1c 08             	or     %bl,(%rax,%rcx,1)
    1cb2:	24 08                	and    $0x8,%al
    1cb4:	25 08 1a 08 1d       	and    $0x1d081a08,%eax
    1cb9:	08 1e                	or     %bl,(%rsi)
    1cbb:	08 20                	or     %ah,(%rax)
    1cbd:	08 e9                	or     %ch,%cl
    1cbf:	07                   	(bad)  
    1cc0:	ea                   	(bad)  
    1cc1:	07                   	(bad)  
    1cc2:	ec                   	in     (%dx),%al
    1cc3:	07                   	(bad)  
    1cc4:	eb 07                	jmp    0x1ccd
    1cc6:	e8 07 17 08 16       	call   0x160833d2
    1ccb:	08 de                	or     %bl,%dh
    1ccd:	07                   	(bad)  
    1cce:	d3 07                	roll   %cl,(%rdi)
    1cd0:	db 07                	fildl  (%rdi)
    1cd2:	d6                   	(bad)  
    1cd3:	07                   	(bad)  
    1cd4:	d9 07                	flds   (%rdi)
    1cd6:	d4                   	(bad)  
    1cd7:	07                   	(bad)  
    1cd8:	d7                   	xlat   %ds:(%rbx)
    1cd9:	07                   	(bad)  
    1cda:	dd 07                	fldl   (%rdi)
    1cdc:	dc 07                	faddl  (%rdi)
    1cde:	da 07                	fiaddl (%rdi)
    1ce0:	d8 07                	fadds  (%rdi)
    1ce2:	d5                   	(bad)  
    1ce3:	07                   	(bad)  
    1ce4:	ed                   	in     (%dx),%eax
    1ce5:	07                   	(bad)  
    1ce6:	26 08 99 06 9a 06 a6 	es or  %bl,-0x59f965fa(%rcx)
    1ced:	06                   	(bad)  
    1cee:	37                   	(bad)  
    1cef:	08 36                	or     %dh,(%rsi)
    1cf1:	08 35 08 b8 06 31    	or     %dh,0x3106b808(%rip)        # 0x3106d4ff
    1cf7:	08 32                	or     %dh,(%rdx)
    1cf9:	08 30                	or     %dh,(%rax)
    1cfb:	08 0c 08             	or     %cl,(%rax,%rcx,1)
    1cfe:	09 08                	or     %ecx,(%rax)
    1d00:	04 08                	add    $0x8,%al
    1d02:	03 08                	add    (%rax),%ecx
    1d04:	0b 08                	or     (%rax),%ecx
    1d06:	0a 08                	or     (%rax),%cl
    1d08:	07                   	(bad)  
    1d09:	08 05 08 06 08 13    	or     %al,0x13080608(%rip)        # 0x13082317
    1d0f:	08 12                	or     %dl,(%rdx)
    1d11:	08 11                	or     %dl,(%rcx)
    1d13:	08 10                	or     %dl,(%rax)
    1d15:	08 0f                	or     %cl,(%rdi)
    1d17:	08 0e                	or     %cl,(%rsi)
    1d19:	08 0d 08 00 08 01    	or     %cl,0x1080008(%rip)        # 0x1081d27
    1d1f:	08 02                	or     %al,(%rdx)
    1d21:	08 49 07             	or     %cl,0x7(%rcx)
    1d24:	46 07                	rex.RX (bad) 
    1d26:	47 07                	rex.RXB (bad) 
    1d28:	48 07                	rex.W (bad) 
    1d2a:	4d 07                	rex.WRB (bad) 
    1d2c:	4a 07                	rex.WX (bad) 
    1d2e:	4b 07                	rex.WXB (bad) 
    1d30:	4e 07                	rex.WRX (bad) 
    1d32:	4c 07                	rex.WR (bad) 
    1d34:	72 07                	jb     0x1d3d
    1d36:	c3                   	ret    
    1d37:	07                   	(bad)  
    1d38:	73 07                	jae    0x1d41
    1d3a:	b6 06                	mov    $0x6,%dh
    1d3c:	c1 07 bb             	roll   $0xbb,(%rdi)
    1d3f:	06                   	(bad)  
    1d40:	53                   	push   %rbx
    1d41:	07                   	(bad)  
    1d42:	44 07                	rex.R (bad) 
    1d44:	bd 07 6f 06 97       	mov    $0x97066f07,%ebp
    1d49:	0c 8e                	or     $0x8e,%al
    1d4b:	0c 5a                	or     $0x5a,%al
    1d4d:	01 5f 01             	add    %ebx,0x1(%rdi)
    1d50:	b6 00                	mov    $0x0,%dh
    1d52:	5e                   	pop    %rsi
    1d53:	01 dd                	add    %ebx,%ebp
    1d55:	00 dc                	add    %bl,%ah
    1d57:	00 ce                	add    %cl,%dh
    1d59:	00 8d 0c e1 00 59    	add    %cl,0x5900e10c(%rbp)
    1d5f:	00 e8                	add    %ch,%al
    1d61:	00 e9                	add    %ch,%cl
    1d63:	00 ea                	add    %ch,%dl
    1d65:	00 e7                	add    %ah,%bh
    1d67:	00 91 0c 5b 01 94    	add    %dl,-0x6bfea4f4(%rcx)
    1d6d:	0c 95                	or     $0x95,%al
    1d6f:	0c 96                	or     $0x96,%al
    1d71:	0c 5c                	or     $0x5c,%al
    1d73:	01 62 01             	add    %esp,0x1(%rdx)
    1d76:	74 01                	je     0x1d79
    1d78:	67 01 64 01 65       	add    %esp,0x65(%ecx,%eax,1)
    1d7d:	01 66 01             	add    %esp,0x1(%rsi)
    1d80:	91                   	xchg   %eax,%ecx
    1d81:	0a 75 01             	or     0x1(%rbp),%dh
    1d84:	79 01                	jns    0x1d87
    1d86:	7a 01                	jp     0x1d89
    1d88:	7b 01                	jnp    0x1d8b
    1d8a:	7c 01                	jl     0x1d8d
    1d8c:	9f                   	lahf   
    1d8d:	09 77 01             	or     %esi,0x1(%rdi)
    1d90:	df 09                	fisttps (%rcx)
    1d92:	6a 01                	push   $0x1
    1d94:	a3 0a 9b 0a 76 01 70 	movabs %eax,0x6e017001760a9b0a
    1d9b:	01 6e 
    1d9d:	01 6b 01             	add    %ebp,0x1(%rbx)
    1da0:	6d                   	insl   (%dx),%es:(%rdi)
    1da1:	01 2c 01             	add    %ebp,(%rcx,%rax,1)
    1da4:	7d 09                	jge    0x1daf
    1da6:	6c                   	insb   (%dx),%es:(%rdi)
    1da7:	01 7e 09             	add    %edi,0x9(%rsi)
    1daa:	69 01 68 01 71 01    	imul   $0x1710168,(%rcx),%eax
    1db0:	72 01                	jb     0x1db3
    1db2:	73 01                	jae    0x1db5
    1db4:	6f                   	outsl  %ds:(%rsi),(%dx)
    1db5:	01 59 01             	add    %ebx,0x1(%rcx)
    1db8:	7d 01                	jge    0x1dbb
    1dba:	0c 07                	or     $0x7,%al
    1dbc:	e7 0d                	out    %eax,$0xd
    1dbe:	e6 0d                	out    %al,$0xd
    1dc0:	e5 0d                	in     $0xd,%eax
    1dc2:	e8 0d 63 01 ea       	call   0xffffffffea0180d4
    1dc7:	0d 54 01 55 01       	or     $0x1550154,%eax
    1dcc:	56                   	push   %rsi
    1dcd:	01 f8                	add    %edi,%eax
    1dcf:	0d e9 0d 58 01       	or     $0x1580de9,%eax
    1dd4:	57                   	push   %rdi
    1dd5:	01 61 01             	add    %esp,0x1(%rcx)
    1dd8:	4f 01 78 01          	rex.WRXB add %r15,0x1(%r8)
    1ddc:	53                   	push   %rbx
    1ddd:	01 4e 01             	add    %ecx,0x1(%rsi)
    1de0:	51                   	push   %rcx
    1de1:	01 52 01             	add    %edx,0x1(%rdx)
    1de4:	50                   	push   %rax
    1de5:	01 bb 0a cb 0a cc    	add    %edi,-0x33f534f6(%rbx)
    1deb:	0a cf                	or     %bh,%cl
    1ded:	0a d0                	or     %al,%dl
    1def:	0a d1                	or     %cl,%dl
    1df1:	0a cd                	or     %ch,%cl
    1df3:	0a ce                	or     %dh,%cl
    1df5:	0a de                	or     %dh,%bl
    1df7:	0d df 0d e1 0d       	or     $0xde10ddf,%eax
    1dfc:	e0 0d                	loopne 0x1e0b
    1dfe:	e2 0d                	loop   0x1e0d
    1e00:	e3 0d                	jrcxz  0x1e0f
    1e02:	e4 0d                	in     $0xd,%al
    1e04:	32 01                	xor    (%rcx),%al
    1e06:	31 01                	xor    %eax,(%rcx)
    1e08:	46 01 45 01          	rex.RX add %r8d,0x1(%rbp)
    1e0c:	37                   	(bad)  
    1e0d:	01 44 01 38          	add    %eax,0x38(%rcx,%rax,1)
    1e11:	01 3f                	add    %edi,(%rdi)
    1e13:	01 3c 01             	add    %edi,(%rcx,%rax,1)
    1e16:	3d 01 39 01 3a       	cmp    $0x3a013901,%eax
    1e1b:	01 4b 01             	add    %ecx,0x1(%rbx)
    1e1e:	49 01 4a 01          	add    %rcx,0x1(%r10)
    1e22:	48 01 4c 01 47       	add    %rcx,0x47(%rcx,%rax,1)
    1e27:	01 4d 01             	add    %ecx,0x1(%rbp)
    1e2a:	40 01 43 01          	rex add %eax,0x1(%rbx)
    1e2e:	42 01 34 01          	add    %esi,(%rcx,%r8,1)
    1e32:	41 01 3b             	add    %edi,(%r11)
    1e35:	01 3e                	add    %edi,(%rsi)
    1e37:	01 2f                	add    %ebp,(%rdi)
    1e39:	01 35 01 30 01 36    	add    %esi,0x36013001(%rip)        # 0x36014e40
    1e3f:	01 33                	add    %esi,(%rbx)
    1e41:	01 dd                	add    %ebx,%ebp
    1e43:	0d 2e 01 60 01       	or     $0x160012e,%eax
    1e48:	ee                   	out    %al,(%dx)
    1e49:	0d f1 0d f2 0d       	or     $0xdf20df1,%eax
    1e4e:	f0 0d ef 0d ed 0d    	lock or $0xded0def,%eax
    1e54:	5d                   	pop    %rbp
    1e55:	01 f7                	add    %esi,%edi
    1e57:	0d f9 0d fa 0d       	or     $0xdfa0df9,%eax
    1e5c:	fb                   	sti    
    1e5d:	0d 1a 03 b8 01       	or     $0x1b8031a,%eax
    1e62:	5e                   	pop    %rsi
    1e63:	0c 5f                	or     $0x5f,%al
    1e65:	0c 7f                	or     $0x7f,%al
    1e67:	0c 7d                	or     $0x7d,%al
    1e69:	0c 61                	or     $0x61,%al
    1e6b:	0c 63                	or     $0x63,%al
    1e6d:	0c 62                	or     $0x62,%al
    1e6f:	0c 66                	or     $0x66,%al
    1e71:	0c 65                	or     $0x65,%al
    1e73:	0c 71                	or     $0x71,%al
    1e75:	0c 73                	or     $0x73,%al
    1e77:	0c 74                	or     $0x74,%al
    1e79:	0c 6b                	or     $0x6b,%al
    1e7b:	0c 67                	or     $0x67,%al
    1e7d:	0c 6a                	or     $0x6a,%al
    1e7f:	0c 75                	or     $0x75,%al
    1e81:	0c 77                	or     $0x77,%al
    1e83:	0c 76                	or     $0x76,%al
    1e85:	0c 69                	or     $0x69,%al
    1e87:	0c 72                	or     $0x72,%al
    1e89:	0c 78                	or     $0x78,%al
    1e8b:	0c 6c                	or     $0x6c,%al
    1e8d:	0c 6d                	or     $0x6d,%al
    1e8f:	0c 6f                	or     $0x6f,%al
    1e91:	0c 6e                	or     $0x6e,%al
    1e93:	0c 68                	or     $0x68,%al
    1e95:	0c 70                	or     $0x70,%al
    1e97:	0c 7b                	or     $0x7b,%al
    1e99:	0c 7c                	or     $0x7c,%al
    1e9b:	0c 79                	or     $0x79,%al
    1e9d:	0c 7a                	or     $0x7a,%al
    1e9f:	0c 7e                	or     $0x7e,%al
    1ea1:	0c 64                	or     $0x64,%al
    1ea3:	0c 60                	or     $0x60,%al
    1ea5:	0c f0                	or     $0xf0,%al
    1ea7:	00 a1 0c 9d 0c 9e    	add    %ah,-0x61f362f4(%rcx)
    1ead:	0c 9c                	or     $0x9c,%al
    1eaf:	0c 9f                	or     $0x9f,%al
    1eb1:	0c a0                	or     $0xa0,%al
    1eb3:	0c 90                	or     $0x90,%al
    1eb5:	0c 80                	or     $0x80,%al
    1eb7:	0c 81                	or     $0x81,%al
    1eb9:	0c 87                	or     $0x87,%al
    1ebb:	0c 85                	or     $0x85,%al
    1ebd:	0c 82                	or     $0x82,%al
    1ebf:	0c 83                	or     $0x83,%al
    1ec1:	0c 88                	or     $0x88,%al
    1ec3:	0c 8b                	or     $0x8b,%al
    1ec5:	0c 8c                	or     $0x8c,%al
    1ec7:	0c 8a                	or     $0x8a,%al
    1ec9:	0c 89                	or     $0x89,%al
    1ecb:	0c 98                	or     $0x98,%al
    1ecd:	0c 8f                	or     $0x8f,%al
    1ecf:	0c 93                	or     $0x93,%al
    1ed1:	0c 92                	or     $0x92,%al
    1ed3:	0c 84                	or     $0x84,%al
    1ed5:	0c 86                	or     $0x86,%al
    1ed7:	0c 9a                	or     $0x9a,%al
    1ed9:	0c 9b                	or     $0x9b,%al
    1edb:	0c 99                	or     $0x99,%al
    1edd:	0c 9e                	or     $0x9e,%al
    1edf:	04 9f                	add    $0x9f,%al
    1ee1:	04 a2                	add    $0xa2,%al
    1ee3:	04 a7                	add    $0xa7,%al
    1ee5:	04 a6                	add    $0xa6,%al
    1ee7:	04 39                	add    $0x39,%al
    1ee9:	06                   	(bad)  
    1eea:	40 06                	rex (bad) 
    1eec:	3d 06 3e 06 3f       	cmp    $0x3f063e06,%eax
    1ef1:	06                   	(bad)  
    1ef2:	3a 06                	cmp    (%rsi),%al
    1ef4:	75 05                	jne    0x1efb
    1ef6:	45 07                	rex.RB (bad) 
    1ef8:	06                   	(bad)  
    1ef9:	05 07 05 3a 05       	add    $0x53a0507,%eax
    1efe:	3c 05                	cmp    $0x5,%al
    1f00:	3b 05 09 05 14 05    	cmp    0x5140509(%rip),%eax        # 0x514240f
    1f06:	12 05 0a 05 27 05    	adc    0x527050a(%rip),%al        # 0x5272416
    1f0c:	5a                   	pop    %rdx
    1f0d:	00 70 03             	add    %dh,0x3(%rax)
    1f10:	6f                   	outsl  %ds:(%rsi),(%dx)
    1f11:	03 1d 05 42 05 43    	add    0x43054205(%rip),%ebx        # 0x4305611c
    1f17:	05 39 05 fc 00       	add    $0xfc0539,%eax
    1f1c:	1c 05                	sbb    $0x5,%al
    1f1e:	26 03 25 03 0e 00 f8 	es add -0x7fff1fd(%rip),%esp        # 0xfffffffff8002d28
    1f25:	00 f2                	add    %dh,%dl
    1f27:	08 f1                	or     %dh,%cl
    1f29:	08 f7                	or     %dh,%bh
    1f2b:	00 f6                	add    %dh,%dh
    1f2d:	00 44 00 43          	add    %al,0x43(%rax,%rax,1)
    1f31:	00 72 00             	add    %dh,0x0(%rdx)
    1f34:	73 00                	jae    0x1f36
    1f36:	75 00                	jne    0x1f38
    1f38:	15 00 74 00 18       	adc    $0x18007400,%eax
    1f3d:	00 fb                	add    %bh,%bl
    1f3f:	00 19                	add    %bl,(%rcx)
    1f41:	00 1a                	add    %bl,(%rdx)
    1f43:	00 4a 00             	add    %cl,0x0(%rdx)
    1f46:	56                   	push   %rsi
    1f47:	00 50 00             	add    %dl,0x0(%rax)
    1f4a:	4e 00 4f 00          	rex.WRX add %r9b,0x0(%rdi)
    1f4e:	54                   	push   %rsp
    1f4f:	00 55 00             	add    %dl,0x0(%rbp)
    1f52:	4b 00 52 00          	rex.WXB add %dl,0x0(%r10)
    1f56:	4c 00 4d 00          	rex.WR add %r9b,0x0(%rbp)
    1f5a:	53                   	push   %rbx
    1f5b:	00 51 00             	add    %dl,0x0(%rcx)
    1f5e:	57                   	push   %rdi
    1f5f:	00 58 00             	add    %bl,0x0(%rax)
    1f62:	d6                   	(bad)  
    1f63:	00 d8                	add    %bl,%al
    1f65:	00 d5                	add    %dl,%ch
    1f67:	00 d7                	add    %dl,%bh
    1f69:	00 db                	add    %bl,%bl
    1f6b:	00 da                	add    %bl,%dl
    1f6d:	00 dc                	add    %bl,%ah
    1f6f:	00 d9                	add    %bl,%cl
    1f71:	00 d2                	add    %dl,%dl
    1f73:	00 d3                	add    %dl,%bl
    1f75:	00 d4                	add    %dl,%ah
    1f77:	00 de                	add    %bl,%dh
    1f79:	00 dd                	add    %bl,%ch
    1f7b:	00 e0                	add    %ah,%al
    1f7d:	00 e1                	add    %ah,%cl
    1f7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1f82:	e8 00 ea 00 e9       	call   0xffffffffe9010987
    1f87:	00 e4                	add    %ah,%ah
    1f89:	00 e5                	add    %ah,%ch
    1f8b:	00 e3                	add    %ah,%bl
    1f8d:	00 df                	add    %bl,%bh
    1f8f:	00 e6                	add    %ah,%dh
    1f91:	00 e7                	add    %ah,%bh
    1f93:	00 ff                	add    %bh,%bh
    1f95:	00 01                	add    %al,(%rcx)
    1f97:	01 02                	add    %eax,(%rdx)
    1f99:	01 03                	add    %eax,(%rbx)
    1f9b:	01 00                	add    %eax,(%rax)
    1f9d:	01 fe                	add    %edi,%esi
    1f9f:	00 eb                	add    %ch,%bl
    1fa1:	00 ed                	add    %ch,%ch
    1fa3:	00 1b                	add    %bl,(%rbx)
    1fa5:	00 17                	add    %dl,(%rdi)
    1fa7:	00 b8 00 2f 0d 00    	add    %bh,0xd2f00(%rax)
    1fad:	00 ee                	add    %ch,%dh
    1faf:	00 28                	add    %ch,(%rax)
    1fb1:	00 1e                	add    %bl,(%rsi)
    1fb3:	00 30                	add    %dh,(%rax)
    1fb5:	00 31                	add    %dh,(%rcx)
    1fb7:	00 3b                	add    %bh,(%rbx)
    1fb9:	00 2a                	add    %ch,(%rdx)
    1fbb:	00 24 00             	add    %ah,(%rax,%rax,1)
    1fbe:	23 00                	and    (%rax),%eax
    1fc0:	22 00                	and    (%rax),%al
    1fc2:	2f                   	(bad)  
    1fc3:	00 2d 00 2e 00 3e    	add    %ch,0x3e002e00(%rip)        # 0x3e004dc9
    1fc9:	00 41 00             	add    %al,0x0(%rcx)
    1fcc:	3f                   	(bad)  
    1fcd:	00 25 00 26 00 27    	add    %ah,0x27002600(%rip)        # 0x270045d3
    1fd3:	00 29                	add    %ch,(%rcx)
    1fd5:	00 40 00             	add    %al,0x0(%rax)
    1fd8:	1f                   	(bad)  
    1fd9:	00 2b                	add    %ch,(%rbx)
    1fdb:	00 2c 00             	add    %ch,(%rax,%rax,1)
    1fde:	20 00                	and    %al,(%rax)
    1fe0:	21 00                	and    %eax,(%rax)
    1fe2:	37                   	(bad)  
    1fe3:	00 36                	add    %dh,(%rsi)
    1fe5:	00 34 00             	add    %dh,(%rax,%rax,1)
    1fe8:	35 00 38 00 3a       	xor    $0x3a003800,%eax
    1fed:	00 33                	add    %dh,(%rbx)
    1fef:	00 39                	add    %bh,(%rcx)
    1ff1:	00 3c 00             	add    %bh,(%rax,%rax,1)
    1ff4:	32 00                	xor    (%rax),%al
    1ff6:	3d 00 1d 00 42       	cmp    $0x42001d00,%eax
    1ffb:	00 b1 00 b0 00 a5    	add    %dh,-0x5aff5000(%rcx)
    2001:	00 ae 00 af 00 0f    	add    %ch,0xf00af00(%rsi)
    2007:	00 b4 00 b9 00 47 00 	add    %dh,0x4700b9(%rax,%rax,1)
    200e:	46 00 49 00          	rex.RX add %r9b,0x0(%rcx)
    2012:	48 00 12             	rex.W add %dl,(%rdx)
    2015:	00 14 00             	add    %dl,(%rax,%rax,1)
    2018:	13 00                	adc    (%rax),%eax
    201a:	11 00                	adc    %eax,(%rax)
    201c:	10 00                	adc    %al,(%rax)
    201e:	bb 00 ba 00 b5       	mov    $0xb500ba00,%ebx
    2023:	00 b7 00 b6 00 98    	add    %dh,-0x67ff4a00(%rdi)
    2029:	00 97 00 a1 00 a3    	add    %dl,-0x5cff5f00(%rdi)
    202f:	00 a0 00 9f 00 9e    	add    %ah,-0x61ff6100(%rax)
    2035:	00 9d 00 fd 00 be    	add    %bl,-0x41ff0300(%rbp)
    203b:	00 c2                	add    %al,%dl
    203d:	00 bf 00 c0 00 c1    	add    %bh,-0x3eff4000(%rdi)
    2043:	00 bd 00 c7 00 93    	add    %bh,-0x6cff3900(%rbp)
    2049:	00 95 00 7e 00 c8    	add    %dl,-0x37ff8200(%rbp)
    204f:	00 7f 00             	add    %bh,0x0(%rdi)
    2052:	94                   	xchg   %eax,%esp
    2053:	00 ca                	add    %cl,%dl
    2055:	00 76 00             	add    %dh,0x0(%rsi)
    2058:	bc 00 80 00 c3       	mov    $0xc3008000,%esp
    205d:	00 c5                	add    %al,%ch
    205f:	00 c4                	add    %al,%ah
    2061:	00 c6                	add    %al,%dh
    2063:	00 28                	add    %ch,(%rax)
    2065:	0d cf 00 77 00       	or     $0x7700cf,%eax
    206a:	78 00                	js     0x206c
    206c:	79 00                	jns    0x206e
    206e:	7a 00                	jp     0x2070
    2070:	7b 00                	jnp    0x2072
    2072:	7c 00                	jl     0x2074
    2074:	92                   	xchg   %eax,%edx
    2075:	00 91 00 7d 00 8c    	add    %dl,-0x73ff8300(%rcx)
    207b:	00 d1                	add    %dl,%cl
    207d:	00 8a 00 8b 00 87    	add    %cl,-0x78ff7500(%rdx)
    2083:	00 88 00 cb 00 8e    	add    %cl,-0x71ff3500(%rax)
    2089:	00 8f 00 c9 00 90    	add    %cl,-0x6fff3700(%rdi)
    208f:	00 cd                	add    %cl,%ch
    2091:	00 cc                	add    %cl,%ah
    2093:	00 2c 0d ac 00 a6 00 	add    %ch,0xa600ac(,%rcx,1)
    209a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    209b:	00 4a 03             	add    %cl,0x3(%rdx)
    209e:	ab                   	stos   %eax,%es:(%rdi)
    209f:	00 a8 00 aa 00 a9    	add    %ch,-0x56ff5600(%rax)
    20a5:	00 96 00 99 00 9a    	add    %dl,-0x65ff6700(%rsi)
    20ab:	00 a4 00 9b 00 2b 0d 	add    %ah,0xd2b009b(%rax,%rax,1)
    20b2:	2a 0d 44 03 9c 00    	sub    0x9c0344(%rip),%cl        # 0x9c23fc
    20b8:	a2 00 2e 0d 16 03 d0 	movabs %al,0xec00d003160d2e00
    20bf:	00 ec 
    20c1:	00 ce                	add    %cl,%dh
    20c3:	00 15 03 33 0d 30    	add    %dl,0x300d3303(%rip)        # 0x300d53cc
    20c9:	0d 31 0d 32 0d       	or     $0xd320d31,%eax
    20ce:	8d 00                	lea    (%rax),%eax
    20d0:	14 03                	adc    $0x3,%al
    20d2:	5a                   	pop    %rdx
    20d3:	09 17                	or     %edx,(%rdi)
    20d5:	05 18 05 d3 0d       	add    $0xdd30518,%eax
    20da:	57                   	push   %rdi
    20db:	03 6c 03 1a          	add    0x1a(%rbx,%rax,1),%ebp
    20df:	05 16 05 08 05       	add    $0x5080516,%eax
    20e4:	3d 05 3f 05 3e       	cmp    $0x3e053f05,%eax
    20e9:	05 40 05 19 05       	add    $0x5190540,%eax
    20ee:	41 05 47 05 48 05    	rex.B add $0x5480547,%eax
    20f4:	44 05 45 05 13 05    	rex.R add $0x5130545,%eax
    20fa:	46 05 15 05 22 05    	rex.RX add $0x5220515,%eax
    2100:	20 05 21 05 38 05    	and    %al,0x5380521(%rip)        # 0x5382627
    2106:	0e                   	(bad)  
    2107:	05 0d 05 10 05       	add    $0x510050d,%eax
    210c:	0c 05                	or     $0x5,%al
    210e:	0f 05                	syscall 
    2110:	11 05 0b 05 1e 05    	adc    %eax,0x51e050b(%rip)        # 0x51e2621
    2116:	1b 05 43 03 36 05    	sbb    0x5360343(%rip),%eax        # 0x536245f
    211c:	23 05 28 05 4e 03    	and    0x34e0528(%rip),%eax        # 0x34e264a
    2122:	4f 03 29             	rex.WRXB add (%r9),%r13
    2125:	05 2a 05 2d 05       	add    $0x52d052a,%eax
    212a:	30 05 2f 05 2e 05    	xor    %al,0x52e052f(%rip)        # 0x52e265f
    2130:	32 05 31 05 25 05    	xor    0x5250531(%rip),%al        # 0x5252667
    2136:	33 05 34 05 2b 05    	xor    0x52b0534(%rip),%eax        # 0x52b2670
    213c:	2c 05                	sub    $0x5,%al
    213e:	24 05                	and    $0x5,%al
    2140:	26 05 35 05 1f 05    	es add $0x51f0535,%eax
    2146:	37                   	(bad)  
    2147:	05 12 03 13 03       	add    $0x3130312,%eax
    214c:	59                   	pop    %rcx
    214d:	00 17                	add    %dl,(%rdi)
    214f:	03 51 0d             	add    0xd(%rcx),%edx
    2152:	f0 08 a2 0d 9c 0d 9e 	lock or %ah,-0x61f263f3(%rdx)
    2159:	0d 83 0d 82 0d       	or     $0xd820d83,%eax
    215e:	a0 0d 98 0d 9d 0d 9f 	movabs 0x860d9f0d9d0d980d,%al
    2165:	0d 86 
    2167:	0d 88 0d 8c 0d       	or     $0xd8c0d88,%eax
    216c:	8d 0d 9a 0d 8a 0d    	lea    0xd8a0d9a(%rip),%ecx        # 0xd8a2f0c
    2172:	8b 0d 9b 0d 89 0d    	mov    0xd890d9b(%rip),%ecx        # 0xd892f13
    2178:	95                   	xchg   %eax,%ebp
    2179:	0d 99 0d 97 0d       	or     $0xd970d99,%eax
    217e:	96                   	xchg   %eax,%esi
    217f:	0d 87 0d 85 0d       	or     $0xd850d87,%eax
    2184:	84 0d 93 0d 91 0d    	test   %cl,0xd910d93(%rip)        # 0xd912f1d
    218a:	8f                   	(bad)  
    218b:	0d 90 0d 8e 0d       	or     $0xd8e0d90,%eax
    2190:	92                   	xchg   %eax,%edx
    2191:	0d 94 0d 6f 0d       	or     $0xd6f0d94,%eax
    2196:	6c                   	insb   (%dx),%es:(%rdi)
    2197:	0d 72 0d 70 0d       	or     $0xd700d72,%eax
    219c:	71 0d                	jno    0x21ab
    219e:	6e                   	outsb  %ds:(%rsi),(%dx)
    219f:	0d 64 0d 65 0d       	or     $0xd650d64,%eax
    21a4:	66 0d 6a 0d          	or     $0xd6a,%ax
    21a8:	69 0d 5b 0d 26 0d 35 	imul   $0xd390d35,0xd260d5b(%rip),%ecx        # 0xd262f0d
    21af:	0d 39 0d 
    21b2:	aa                   	stos   %al,%es:(%rdi)
    21b3:	0d 29 0d 27 0d       	or     $0xd270d29,%eax
    21b8:	a3 0d 6b 0d 3a 0d 62 	movabs %eax,0x3d0d620d3a0d6b0d
    21bf:	0d 3d 
    21c1:	0d 3e 0d 3f 0d       	or     $0xd3f0d3e,%eax
    21c6:	3c 0d                	cmp    $0xd,%al
    21c8:	56                   	push   %rsi
    21c9:	0d 55 0d 49 0d       	or     $0xd490d55,%eax
    21ce:	4f 0d 53 0d 50 0d    	rex.WRXB or $0xd500d53,%rax
    21d4:	4e 0d 5a 0d 4d 0d    	rex.WRX or $0xd4d0d5a,%rax
    21da:	57                   	push   %rdi
    21db:	0d 58 0d 59 0d       	or     $0xd590d58,%eax
    21e0:	3b 0d 41 0d 4c 0d    	cmp    0xd4c0d41(%rip),%ecx        # 0xd4c2f27
    21e6:	47 0d 6d 0d 42 0d    	rex.RXB or $0xd420d6d,%eax
    21ec:	43 0d 44 0d 45 0d    	rex.XB or $0xd450d44,%eax
    21f2:	5c                   	pop    %rsp
    21f3:	0d 5b 00 5c 00       	or     $0x5c005b,%eax
    21f8:	6e                   	outsb  %ds:(%rsi),(%dx)
    21f9:	00 6f 00             	add    %ch,0x0(%rdi)
    21fc:	5f                   	pop    %rdi
    21fd:	00 61 00             	add    %ah,0x0(%rcx)
    2200:	60                   	(bad)  
    2201:	00 70 00             	add    %dh,0x0(%rax)
    2204:	69 00 6a 00 62 00    	imul   $0x62006a,(%rax),%eax
    220a:	71 00                	jno    0x220c
    220c:	6c                   	insb   (%dx),%es:(%rdi)
    220d:	00 6b 00             	add    %ch,0x0(%rbx)
    2210:	68 00 67 00 5e       	push   $0x5e006700
    2215:	00 5d 00             	add    %bl,0x0(%rbp)
    2218:	6d                   	insl   (%dx),%es:(%rdi)
    2219:	00 63 00             	add    %ah,0x0(%rbx)
    221c:	65 00 66 00          	add    %ah,%gs:0x0(%rsi)
    2220:	64 00 45 00          	add    %al,%fs:0x0(%rbp)
    2224:	27                   	(bad)  
    2225:	03 30                	add    (%rax),%esi
    2227:	03 2e                	add    (%rsi),%ebp
    2229:	03 29                	add    (%rcx),%ebp
    222b:	03 34 03             	add    (%rbx,%rax,1),%esi
    222e:	33 03                	xor    (%rbx),%eax
    2230:	2a 03                	sub    (%rbx),%al
    2232:	37                   	(bad)  
    2233:	03 36                	add    (%rsi),%esi
    2235:	03 35 03 02 00 2b    	add    0x2b000203(%rip),%esi        # 0x2b00243e
    223b:	03 2c 03             	add    (%rbx,%rax,1),%ebp
    223e:	28 03                	sub    %al,(%rbx)
    2240:	06                   	(bad)  
    2241:	00 38                	add    %bh,(%rax)
    2243:	03 03                	add    (%rbx),%eax
    2245:	00 2d 03 01 00 31    	add    %ch,0x31000103(%rip)        # 0x3100234e
    224b:	03 32                	add    (%rdx),%esi
    224d:	03 2f                	add    (%rdi),%ebp
    224f:	03 3a                	add    (%rdx),%edi
    2251:	03 39                	add    (%rcx),%edi
    2253:	03 e2                	add    %edx,%esp
    2255:	00 1f                	add    %bl,(%rdi)
    2257:	03 22                	add    (%rdx),%esp
    2259:	03 21                	add    (%rcx),%esp
    225b:	03 20                	add    (%rax),%esp
    225d:	03 24 03             	add    (%rbx,%rax,1),%esp
    2260:	1c 03                	sbb    $0x3,%al
    2262:	1e                   	(bad)  
    2263:	03 6b 03             	add    0x3(%rbx),%ebp
    2266:	6e                   	outsb  %ds:(%rsi),(%dx)
    2267:	03 b0 0d 68 03 6d    	add    0x6d03680d(%rax),%esi
    226d:	03 69 03             	add    0x3(%rcx),%ebp
    2270:	6a 03                	push   $0x3
    2272:	3b 03                	cmp    (%rbx),%eax
    2274:	1a 03                	sbb    (%rbx),%al
    2276:	1b 03                	sbb    (%rbx),%eax
    2278:	65 03 64 03 66       	add    %gs:0x66(%rbx,%rax,1),%esp
    227d:	03 67 03             	add    0x3(%rdi),%esp
    2280:	4b 03 4c 03 19       	add    0x19(%r11,%r8,1),%rcx
    2285:	03 18                	add    (%rax),%ebx
    2287:	03 51 03             	add    0x3(%rcx),%edx
    228a:	50                   	push   %rax
    228b:	03 53 03             	add    0x3(%rbx),%edx
    228e:	52                   	push   %rdx
    228f:	03 c7                	add    %edi,%eax
    2291:	03 1d 03 54 03 55    	add    0x55035403(%rip),%ebx        # 0x5503769a
    2297:	03 49 03             	add    0x3(%rcx),%ecx
    229a:	ae                   	scas   %es:(%rdi),%al
    229b:	07                   	(bad)  
    229c:	e9 07 46 03 47       	jmp    0x470368a8
    22a1:	03 3f                	add    (%rdi),%edi
    22a3:	03 5b 03             	add    0x3(%rbx),%ebx
    22a6:	5a                   	pop    %rdx
    22a7:	03 59 03             	add    0x3(%rcx),%ebx
    22aa:	42 03 41 03          	rex.X add 0x3(%rcx),%eax
    22ae:	b1 04                	mov    $0x4,%cl
    22b0:	5f                   	pop    %rdi
    22b1:	03 5d 03             	add    0x3(%rbp),%ebx
    22b4:	60                   	(bad)  
    22b5:	03 5e 03             	add    0x3(%rsi),%ebx
    22b8:	61                   	(bad)  
    22b9:	03 5c 03 62          	add    0x62(%rbx,%rax,1),%ebx
    22bd:	03 63 03             	add    0x3(%rbx),%esp
    22c0:	40 03 bf 06 3c 03 3e 	rex add 0x3e033c06(%rdi),%edi
    22c7:	03 3d 03 b4 04 58    	add    0x5804b403(%rip),%edi        # 0x5804d6d0
    22cd:	03 4d 03             	add    0x3(%rbp),%ecx
    22d0:	ad                   	lods   %ds:(%rsi),%eax
    22d1:	00 45 03             	add    %al,0x3(%rbp)
    22d4:	48 03 23             	add    (%rbx),%rsp
    22d7:	03 0a                	add    (%rdx),%ecx
    22d9:	00 05 00 09 00 04    	add    %al,0x4000900(%rip)        # 0x4002bdf
    22df:	00 0b                	add    %cl,(%rbx)
    22e1:	00 07                	add    %al,(%rdi)
    22e3:	00 08                	add    %cl,(%rax)
    22e5:	00 16                	add    %dl,(%rsi)
    22e7:	00 0c 00             	add    %cl,(%rax,%rax,1)
    22ea:	0d 00 b2 00 b3       	or     $0xb300b200,%eax
    22ef:	00 56 03             	add    %dl,0x3(%rsi)
    22f2:	c0 08 c4             	rorb   $0xc4,(%rax)
    22f5:	08 c2                	or     %al,%dl
    22f7:	08 c3                	or     %al,%bl
    22f9:	08 b4 08 bc 08 b8 08 	or     %dh,0x8b808bc(%rax,%rcx,1)
    2300:	bd 08 be 08 e1       	mov    $0xe108be08,%ebp
    2305:	08 e0                	or     %ah,%al
    2307:	08 c1                	or     %al,%cl
    2309:	08 b6 08 b9 08 d6    	or     %dh,-0x29f746f8(%rsi)
    230f:	08 d0                	or     %dl,%al
    2311:	08 bb 08 ba 08 d7    	or     %bh,-0x28f745f8(%rbx)
    2317:	08 d9                	or     %bl,%cl
    2319:	08 c5                	or     %al,%ch
    231b:	08 c7                	or     %al,%bh
    231d:	08 c6                	or     %al,%dh
    231f:	08 c8                	or     %cl,%al
    2321:	08 f4                	or     %dh,%ah
    2323:	08 dd                	or     %bl,%ch
    2325:	08 f0                	or     %dh,%al
    2327:	00 dc                	add    %bl,%ah
    2329:	08 db                	or     %bl,%bl
    232b:	08 da                	or     %bl,%dl
    232d:	08 d1                	or     %dl,%cl
    232f:	08 d2                	or     %dl,%dl
    2331:	08 d4                	or     %dl,%ah
    2333:	08 d5                	or     %dl,%ch
    2335:	08 d3                	or     %dl,%bl
    2337:	08 f5                	or     %dh,%ch
    2339:	00 ef                	add    %ch,%bh
    233b:	00 f9                	add    %bh,%cl
    233d:	00 fa                	add    %bh,%dl
    233f:	00 b7 08 f2 00 e8    	add    %dh,-0x17ff0df8(%rdi)
    2345:	08 e6                	or     %ah,%dh
    2347:	08 e3                	or     %ah,%bl
    2349:	08 ec                	or     %ch,%ah
    234b:	08 e9                	or     %ch,%cl
    234d:	08 ed                	or     %ch,%ch
    234f:	08 ee                	or     %ch,%dh
    2351:	08 e4                	or     %ah,%ah
    2353:	08 e5                	or     %ah,%ch
    2355:	08 e7                	or     %ah,%bh
    2357:	08 e2                	or     %ah,%dl
    2359:	08 ea                	or     %ch,%dl
    235b:	08 eb                	or     %ch,%bl
    235d:	08 f3                	or     %dh,%bl
    235f:	00 f4                	add    %dh,%ah
    2361:	00 bf 08 ef 08 b3    	add    %bh,-0x4cf710f8(%rdi)
    2367:	08 f3                	or     %dh,%bl
    2369:	08 b5 08 d8 08 c9    	or     %dh,-0x36f727f8(%rbp)
    236f:	08 de                	or     %bl,%dh
    2371:	08 82 00 83 00 81    	or     %al,-0x7eff7d00(%rdx)
    2377:	00 86 00 89 00 85    	add    %al,-0x7aff7700(%rsi)
    237d:	00 84 00 df 08 f1 00 	add    %al,0xf108df(%rax,%rax,1)
    2384:	80 05 a4 05 2c 02 2b 	addb   $0x2b,0x22c05a4(%rip)        # 0x22c292f
    238b:	02 c1                	add    %cl,%al
    238d:	01 7f 05             	add    %edi,0x5(%rdi)
    2390:	bd 01 95 05 96       	mov    $0x96059501,%ebp
    2395:	05 bb 01 bc 01       	add    $0x1bc01bb,%eax
    239a:	a8 05                	test   $0x5,%al
    239c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    239d:	05 a5 05 a6 05       	add    $0x5a605a5,%eax
    23a2:	7c 05                	jl     0x23a9
    23a4:	48 02 98 05 9d 05 99 	rex.W add -0x66fa62fb(%rax),%bl
    23ab:	05 9a 05 9b 05       	add    $0x59b059a,%eax
    23b0:	9e                   	sahf   
    23b1:	05 9c 05 9f 05       	add    $0x59f059c,%eax
    23b6:	a0 05 a1 05 c0 01 a3 	movabs 0x8501a301c005a105,%al
    23bd:	01 85 
    23bf:	05 af 01 89 05       	add    $0x58901af,%eax
    23c4:	8e 05 8f 05 8d 05    	mov    0x58d058f(%rip),%es        # 0x58d2959
    23ca:	86 05 87 05 88 05    	xchg   %al,0x5880587(%rip)        # 0x5882957
    23d0:	8a 05 8b 05 8c 05    	mov    0x58c058b(%rip),%al        # 0x58c2961
    23d6:	91                   	xchg   %eax,%ecx
    23d7:	05 77 05 a6 01       	add    $0x1a60577,%eax
    23dc:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    23dd:	01 a5 01 7d 05 7e    	add    %esp,0x7e057d01(%rbp)
    23e3:	05 7b 05 79 05       	add    $0x579057b,%eax
    23e8:	7a 05                	jp     0x23ef
    23ea:	b5 01                	mov    $0x1,%ch
    23ec:	83 05 ad 01 84 05 93 	addl   $0xffffff93,0x58401ad(%rip)        # 0x58425a0
    23f3:	05 92 05 94 05       	add    $0x5940592,%eax
    23f8:	02 02                	add    (%rdx),%al
    23fa:	81 05 a8 01 82 05 cf 	addl   $0x1d001cf,0x58201a8(%rip)        # 0x58225ac
    2401:	01 d0 01 
    2404:	a9 01 aa 01 b8       	test   $0xb801aa01,%eax
    2409:	01 ab 01 43 02 46    	add    %ebp,0x46024301(%rbx)
    240f:	02 45 02             	add    0x2(%rbp),%al
    2412:	47 02 b9 01 a2 05 a3 	rex.RXB add -0x5cfa5dff(%r9),%r15b
    2419:	05 b1 01 90 05       	add    $0x59001b1,%eax
    241e:	05 02 ae 01 78       	add    $0x7801ae02,%eax
    2423:	05 01 02 b7 01       	add    $0x1b70201,%eax
    2428:	44 02 e0             	add    %al,%r12b
    242b:	03 fe                	add    %esi,%edi
    242d:	03 f0                	add    %eax,%esi
    242f:	03 df                	add    %edi,%ebx
    2431:	03 eb                	add    %ebx,%ebp
    2433:	03 ee                	add    %esi,%ebp
    2435:	03 e3                	add    %ebx,%esp
    2437:	03 e2                	add    %edx,%esp
    2439:	03 ed                	add    %ebp,%ebp
    243b:	03 e9                	add    %ecx,%ebp
    243d:	03 ec                	add    %esp,%ebp
    243f:	03 68 04             	add    0x4(%rax),%ebp
    2442:	66 04 ef             	data16 add $0xef,%al
    2445:	03 be 05 c0 05 c2    	add    -0x3dfa3ffb(%rsi),%edi
    244b:	05 c3 05 bf 05       	add    $0x5bf05c3,%eax
    2450:	c1 05 e4 05 e7 05 f5 	roll   $0xf5,0x5e705e4(%rip)        # 0x5e72a3b
    2457:	05 e3 05 e5 05       	add    $0x5e505e3,%eax
    245c:	e8 05 f3 05 f0       	call   0xfffffffff0061766
    2461:	05 f1 05 ef 05       	add    $0x5ef05f1,%eax
    2466:	f2 05 ec 05 eb 05    	repnz add $0x5eb05ec,%eax
    246c:	ea                   	(bad)  
    246d:	05 ed 05 ee 05       	add    $0x5ee05ed,%eax
    2472:	e9 05 e6 05 e0       	jmp    0xffffffffe0060a7c
    2477:	05 c8 05 2a 06       	add    $0x62a05c8,%eax
    247c:	c5 05 e1 01          	vpsraw (%rcx),%ymm15,%ymm8
    2480:	be 01 bf 01 53       	mov    $0x5301bf01,%esi
    2485:	09 b2 01 b6 01 ac    	or     %esi,-0x53fe49ff(%rdx)
    248b:	01 ba 01 b0 01 21    	add    %edi,0x2101b001(%rdx)
    2491:	06                   	(bad)  
    2492:	24 06                	and    $0x6,%al
    2494:	23 06                	and    (%rsi),%eax
    2496:	20 06                	and    %al,(%rsi)
    2498:	22 06                	and    (%rsi),%al
    249a:	26 06                	es (bad) 
    249c:	25 06 29 06 27       	and    $0x27062906,%eax
    24a1:	06                   	(bad)  
    24a2:	28 06                	sub    %al,(%rsi)
    24a4:	f4                   	hlt    
    24a5:	05 c4 05 e2 05       	add    $0x5e205c4,%eax
    24aa:	e1 05                	loope  0x24b1
    24ac:	ce                   	(bad)  
    24ad:	05 d1 05 d2 05       	add    $0x5d205d1,%eax
    24b2:	d0 05 cf 05 d3 05    	rolb   0x5d305cf(%rip)        # 0x5d32a87
    24b8:	d7                   	xlat   %ds:(%rbx)
    24b9:	05 db 05 da 05       	add    $0x5da05db,%eax
    24be:	dc 05 d8 05 d9 05    	faddl  0x5d905d8(%rip)        # 0x5d92a9c
    24c4:	d4                   	(bad)  
    24c5:	05 cb 05 cd 05       	add    $0x5cd05cb,%eax
    24ca:	c9                   	leave  
    24cb:	05 ca 05 cc 05       	add    $0x5cc05ca,%eax
    24d0:	d6                   	(bad)  
    24d1:	05 d5 05 de 05       	add    $0x5de05d5,%eax
    24d6:	df 05 dd 05 c7 05    	filds  0x5c705dd(%rip)        # 0x5c72ab9
    24dc:	bd 05 aa 05 c6       	mov    $0xc605aa05,%ebp
    24e1:	05 a9 05 01 04       	add    $0x40105a9,%eax
    24e6:	e4 03                	in     $0x3,%al
    24e8:	e6 03                	out    %al,$0x3
    24ea:	e5 03                	in     $0x3,%eax
    24ec:	e7 03                	out    %eax,$0x3
    24ee:	e8 03 69 04 03       	call   0x3048df6
    24f3:	04 02                	add    $0x2,%al
    24f5:	04 55                	add    $0x55,%al
    24f7:	09 56 09             	or     %edx,0x9(%rsi)
    24fa:	58                   	pop    %rax
    24fb:	09 57 09             	or     %edx,0x9(%rdi)
    24fe:	54                   	push   %rsp
    24ff:	09 52 09             	or     %edx,0x9(%rdx)
    2502:	12 06                	adc    (%rsi),%al
    2504:	1f                   	(bad)  
    2505:	06                   	(bad)  
    2506:	14 06                	adc    $0x6,%al
    2508:	13 06                	adc    (%rsi),%eax
    250a:	f9                   	stc    
    250b:	01 3e                	add    %edi,(%rsi)
    250d:	02 3f                	add    (%rdi),%bh
    250f:	02 40 02             	add    0x2(%rax),%al
    2512:	33 02                	xor    (%rdx),%eax
    2514:	35 02 34 02 f7       	xor    $0xf7023402,%eax
    2519:	01 f6                	add    %esi,%esi
    251b:	01 36                	add    %esi,(%rsi)
    251d:	02 2d 02 f8 01 1b    	add    0x1b01f802(%rip),%ch        # 0x1b021d25
    2523:	06                   	(bad)  
    2524:	0f 06                	clts   
    2526:	e6 01                	out    %al,$0x1
    2528:	10 06                	adc    %al,(%rsi)
    252a:	42 02 af 0d e7 01 e9 	rex.X add -0x16fe18f3(%rdi),%bpl
    2531:	01 ea                	add    %ebp,%edx
    2533:	01 1a                	add    %ebx,(%rdx)
    2535:	06                   	(bad)  
    2536:	17                   	(bad)  
    2537:	06                   	(bad)  
    2538:	19 06                	sbb    %eax,(%rsi)
    253a:	18 06                	sbb    %al,(%rsi)
    253c:	16                   	(bad)  
    253d:	06                   	(bad)  
    253e:	41 02 3a             	add    (%r10),%dil
    2541:	02 15 06 fa 01 2f    	add    0x2f01fa06(%rip),%dl        # 0x2f021f4d
    2547:	02 2e                	add    (%rsi),%ch
    2549:	02 30                	add    (%rax),%dh
    254b:	02 f7                	add    %bh,%dh
    254d:	05 37 02 f6 05       	add    $0x5f60237,%eax
    2552:	39 02                	cmp    %eax,(%rdx)
    2554:	38 02                	cmp    %al,(%rdx)
    2556:	1e                   	(bad)  
    2557:	06                   	(bad)  
    2558:	3b 02                	cmp    (%rdx),%eax
    255a:	3d 02 e8 01 1c       	cmp    $0x1c01e802,%eax
    255f:	06                   	(bad)  
    2560:	1d 06 3c 02 59       	sbb    $0x59023c06,%eax
    2565:	09 31                	or     %esi,(%rcx)
    2567:	02 2a                	add    (%rdx),%ch
    2569:	02 08                	add    (%rax),%cl
    256b:	06                   	(bad)  
    256c:	0e                   	(bad)  
    256d:	02 0f                	add    (%rdi),%cl
    256f:	02 10                	add    (%rax),%dl
    2571:	02 65 04             	add    0x4(%rbp),%ah
    2574:	34 04                	xor    $0x4,%al
    2576:	33 04 4d 04 4e 04 4f 	xor    0x4f044e04(,%rcx,2),%eax
    257d:	04 39                	add    $0x39,%al
    257f:	04 50                	add    $0x50,%al
    2581:	04 06                	add    $0x6,%al
    2583:	04 3f                	add    $0x3f,%al
    2585:	04 49                	add    $0x49,%al
    2587:	04 63                	add    $0x63,%al
    2589:	04 4a                	add    $0x4a,%al
    258b:	04 43                	add    $0x43,%al
    258d:	04 48                	add    $0x48,%al
    258f:	04 41                	add    $0x41,%al
    2591:	04 44                	add    $0x44,%al
    2593:	04 45                	add    $0x45,%al
    2595:	04 42                	add    $0x42,%al
    2597:	04 46                	add    $0x46,%al
    2599:	04 47                	add    $0x47,%al
    259b:	04 40                	add    $0x40,%al
    259d:	04 60                	add    $0x60,%al
    259f:	04 64                	add    $0x64,%al
    25a1:	04 5d                	add    $0x5d,%al
    25a3:	04 5c                	add    $0x5c,%al
    25a5:	04 5e                	add    $0x5e,%al
    25a7:	04 5a                	add    $0x5a,%al
    25a9:	04 5b                	add    $0x5b,%al
    25ab:	04 67                	add    $0x67,%al
    25ad:	04 38                	add    $0x38,%al
    25af:	04 61                	add    $0x61,%al
    25b1:	04 62                	add    $0x62,%al
    25b3:	04 3c                	add    $0x3c,%al
    25b5:	04 3a                	add    $0x3a,%al
    25b7:	04 3d                	add    $0x3d,%al
    25b9:	04 52                	add    $0x52,%al
    25bb:	04 54                	add    $0x54,%al
    25bd:	04 3e                	add    $0x3e,%al
    25bf:	04 5f                	add    $0x5f,%al
    25c1:	04 08                	add    $0x8,%al
    25c3:	04 07                	add    $0x7,%al
    25c5:	04 3b                	add    $0x3b,%al
    25c7:	04 59                	add    $0x59,%al
    25c9:	04 56                	add    $0x56,%al
    25cb:	04 55                	add    $0x55,%al
    25cd:	04 57                	add    $0x57,%al
    25cf:	04 51                	add    $0x51,%al
    25d1:	04 53                	add    $0x53,%al
    25d3:	04 58                	add    $0x58,%al
    25d5:	04 4c                	add    $0x4c,%al
    25d7:	04 0b                	add    $0xb,%al
    25d9:	04 0a                	add    $0xa,%al
    25db:	04 4b                	add    $0x4b,%al
    25dd:	04 09                	add    $0x9,%al
    25df:	04 0c                	add    $0xc,%al
    25e1:	04 0d                	add    $0xd,%al
    25e3:	04 b1                	add    $0xb1,%al
    25e5:	05 b3 05 b2 05       	add    $0x5b205b3,%eax
    25ea:	74 05                	je     0x25f1
    25ec:	b0 05                	mov    $0x5,%al
    25ee:	af                   	scas   %es:(%rdi),%eax
    25ef:	05 b5 05 b6 05       	add    $0x5b605b5,%eax
    25f4:	b4 05                	mov    $0x5,%ah
    25f6:	ae                   	scas   %es:(%rdi),%al
    25f7:	05 11 06 ac 05       	add    $0x5ac0611,%eax
    25fc:	b7 05                	mov    $0x5,%bh
    25fe:	ad                   	lods   %ds:(%rsi),%eax
    25ff:	05 75 05 76 05       	add    $0x5760575,%eax
    2604:	97                   	xchg   %eax,%edi
    2605:	05 a4 01 ab 05       	add    $0x5ab01a4,%eax
    260a:	b8 05 b9 05 ba       	mov    $0xba05b905,%eax
    260f:	05 bb 05 bc 05       	add    $0x5bc05bb,%eax
    2614:	07                   	(bad)  
    2615:	06                   	(bad)  
    2616:	b3 01                	mov    $0x1,%bl
    2618:	b4 01                	mov    $0x1,%ah
    261a:	ea                   	(bad)  
    261b:	03 e1                	add    %ecx,%esp
    261d:	03 fd                	add    %ebp,%edi
    261f:	03 f1                	add    %ecx,%esi
    2621:	03 ff                	add    %edi,%edi
    2623:	05 fe 05 0b 06       	add    $0x60b05fe,%eax
    2628:	0e                   	(bad)  
    2629:	06                   	(bad)  
    262a:	fc                   	cld    
    262b:	05 fd 05 fb 05       	add    $0x5fb05fd,%eax
    2630:	01 06                	add    %eax,(%rsi)
    2632:	02 06                	add    (%rsi),%al
    2634:	00 06                	add    %al,(%rsi)
    2636:	32 02                	xor    (%rdx),%al
    2638:	29 02                	sub    %eax,(%rdx)
    263a:	28 02                	sub    %al,(%rdx)
    263c:	27                   	(bad)  
    263d:	02 22                	add    (%rdx),%ah
    263f:	02 1f                	add    (%rdi),%bl
    2641:	02 26                	add    (%rsi),%ah
    2643:	02 25 02 1b 02 21    	add    0x21021b02(%rip),%ah        # 0x2102414b
    2649:	02 1a                	add    (%rdx),%bl
    264b:	02 23                	add    (%rbx),%ah
    264d:	02 1d 02 1c 02 24    	add    0x24021c02(%rip),%bl        # 0x24024255
    2653:	02 1e                	add    (%rsi),%bl
    2655:	02 20                	add    (%rax),%ah
    2657:	02 0c 06             	add    (%rsi,%rax,1),%cl
    265a:	fa                   	cli    
    265b:	05 fd 01 fc 01       	add    $0x1fc01fd,%eax
    2660:	0d 06 12 02 11       	or     $0x11021206,%eax
    2665:	02 13                	add    (%rbx),%dl
    2667:	02 14 02             	add    (%rdx,%rax,1),%dl
    266a:	04 06                	add    $0x6,%al
    266c:	03 06                	add    (%rsi),%eax
    266e:	03 02                	add    (%rdx),%eax
    2670:	16                   	(bad)  
    2671:	02 fe                	add    %dh,%bh
    2673:	01 19                	add    %ebx,(%rcx)
    2675:	02 ff                	add    %bh,%bh
    2677:	01 09                	add    %ecx,(%rcx)
    2679:	06                   	(bad)  
    267a:	17                   	(bad)  
    267b:	02 09                	add    (%rcx),%cl
    267d:	02 08                	add    (%rax),%cl
    267f:	02 06                	add    (%rsi),%al
    2681:	06                   	(bad)  
    2682:	06                   	(bad)  
    2683:	02 07                	add    (%rdi),%al
    2685:	02 0b                	add    (%rbx),%cl
    2687:	02 0c 02             	add    (%rdx,%rax,1),%cl
    268a:	0d 02 04 02 0a       	or     $0xa020402,%eax
    268f:	02 0a                	add    (%rdx),%cl
    2691:	06                   	(bad)  
    2692:	05 06 00 02 15       	add    $0x15020006,%eax
    2697:	02 18                	add    (%rax),%bl
    2699:	02 fb                	add    %bl,%bh
    269b:	01 10                	add    %edx,(%rax)
    269d:	04 37                	add    $0x37,%al
    269f:	04 12                	add    $0x12,%al
    26a1:	04 35                	add    $0x35,%al
    26a3:	04 30                	add    $0x30,%al
    26a5:	04 18                	add    $0x18,%al
    26a7:	04 31                	add    $0x31,%al
    26a9:	04 14                	add    $0x14,%al
    26ab:	04 13                	add    $0x13,%al
    26ad:	04 11                	add    $0x11,%al
    26af:	04 ff                	add    $0xff,%al
    26b1:	03 0e                	add    (%rsi),%ecx
    26b3:	04 0f                	add    $0xf,%al
    26b5:	04 36                	add    $0x36,%al
    26b7:	04 26                	add    $0x26,%al
    26b9:	04 2a                	add    $0x2a,%al
    26bb:	04 2f                	add    $0x2f,%al
    26bd:	04 24                	add    $0x24,%al
    26bf:	04 2d                	add    $0x2d,%al
    26c1:	04 2b                	add    $0x2b,%al
    26c3:	04 25                	add    $0x25,%al
    26c5:	04 2e                	add    $0x2e,%al
    26c7:	04 28                	add    $0x28,%al
    26c9:	04 27                	add    $0x27,%al
    26cb:	04 29                	add    $0x29,%al
    26cd:	04 2c                	add    $0x2c,%al
    26cf:	04 15                	add    $0x15,%al
    26d1:	04 16                	add    $0x16,%al
    26d3:	04 17                	add    $0x17,%al
    26d5:	04 1b                	add    $0x1b,%al
    26d7:	04 23                	add    $0x23,%al
    26d9:	04 1e                	add    $0x1e,%al
    26db:	04 19                	add    $0x19,%al
    26dd:	04 20                	add    $0x20,%al
    26df:	04 21                	add    $0x21,%al
    26e1:	04 22                	add    $0x22,%al
    26e3:	04 1a                	add    $0x1a,%al
    26e5:	04 1d                	add    $0x1d,%al
    26e7:	04 1c                	add    $0x1c,%al
    26e9:	04 1f                	add    $0x1f,%al
    26eb:	04 32                	add    $0x32,%al
    26ed:	04 10                	add    $0x10,%al
    26ef:	0a 0f                	or     (%rdi),%cl
    26f1:	0a 16                	or     (%rsi),%dl
    26f3:	0a f3                	or     %bl,%dh
    26f5:	01 eb                	add    %ebp,%ebx
    26f7:	0a ed                	or     %ch,%ch
    26f9:	0a f3                	or     %bl,%dh
    26fb:	0a ee                	or     %dh,%ch
    26fd:	0a ef                	or     %bh,%ch
    26ff:	0a f0                	or     %al,%dh
    2701:	0a f2                	or     %dl,%dh
    2703:	0a f1                	or     %cl,%dh
    2705:	0a 4e 0b             	or     0xb(%rsi),%cl
    2708:	4a 0b 49 0b          	rex.WX or 0xb(%rcx),%rcx
    270c:	4c 0b 48 0b          	or     0xb(%rax),%r9
    2710:	4d 0b 4b 0b          	or     0xb(%r11),%r9
    2714:	67 0a 17             	or     (%edi),%dl
    2717:	0a 4e 0a             	or     0xa(%rsi),%cl
    271a:	0c 0a                	or     $0xa,%al
    271c:	0d 0a 18 0a a2       	or     $0xa20a180a,%eax
    2721:	0b a0 0b a1 0b 68    	or     0x680ba10b(%rax),%esp
    2727:	0a 1f                	or     (%rdi),%bl
    2729:	0a 33                	or     (%rbx),%dh
    272b:	0a 1e                	or     (%rsi),%bl
    272d:	0a 20                	or     (%rax),%ah
    272f:	0a 28                	or     (%rax),%ch
    2731:	0a 21                	or     (%rcx),%ah
    2733:	0a 1a                	or     (%rdx),%bl
    2735:	0a 23                	or     (%rbx),%ah
    2737:	0a 22                	or     (%rdx),%ah
    2739:	0a 30                	or     (%rax),%dh
    273b:	0a 2d 0a 2c 0a 2f    	or     0x2f0a2c0a(%rip),%ch        # 0x2f0a534b
    2741:	0a 2e                	or     (%rsi),%ch
    2743:	0a 2b                	or     (%rbx),%ch
    2745:	0a 1b                	or     (%rbx),%bl
    2747:	0a 1c 0a             	or     (%rdx,%rcx,1),%bl
    274a:	1d 0a 32 0a 31       	sbb    $0x310a320a,%eax
    274f:	0a 24 0a             	or     (%rdx,%rcx,1),%ah
    2752:	19 0a                	sbb    %ecx,(%rdx)
    2754:	2a 0a                	sub    (%rdx),%cl
    2756:	29 0a                	sub    %ecx,(%rdx)
    2758:	25 0a 27 0a 34       	and    $0x340a270a,%eax
    275d:	0a 26                	or     (%rsi),%ah
    275f:	0a 51 0a             	or     0xa(%rcx),%dl
    2762:	4f 0b 06             	rex.WRXB or (%r14),%r8
    2765:	0a 05 0a 02 0a 31    	or     0x310a020a(%rip),%al        # 0x310a2975
    276b:	0b 53 0a             	or     0xa(%rbx),%edx
    276e:	52                   	push   %rdx
    276f:	0a 54 0a 55          	or     0x55(%rdx,%rcx,1),%dl
    2773:	0a 5e 0a             	or     0xa(%rsi),%bl
    2776:	56                   	push   %rsi
    2777:	0a 5c 0a 58          	or     0x58(%rdx,%rcx,1),%bl
    277b:	0a 57 0a             	or     0xa(%rdi),%dl
    277e:	5d                   	pop    %rbp
    277f:	0a 63 0a             	or     0xa(%rbx),%ah
    2782:	59                   	pop    %rcx
    2783:	0a 64 0a 60          	or     0x60(%rdx,%rcx,1),%ah
    2787:	0a 5a 0a             	or     0xa(%rdx),%bl
    278a:	5b                   	pop    %rbx
    278b:	0a 61 0a             	or     0xa(%rcx),%ah
    278e:	5f                   	pop    %rdi
    278f:	0a 62 0a             	or     0xa(%rdx),%ah
    2792:	65 0a 07             	or     %gs:(%rdi),%al
    2795:	0a ba 0b bf 0b bc    	or     -0x43f440f5(%rdx),%bh
    279b:	0b bd 0b bb 0b be    	or     -0x41f444f5(%rbp),%edi
    27a1:	0b 0a                	or     (%rdx),%ecx
    27a3:	0a 9e 0b 01 0a 9f    	or     -0x60f5fef5(%rsi),%bl
    27a9:	0b d6                	or     %esi,%edx
    27ab:	0b 39                	or     (%rcx),%edi
    27ad:	0a 3f                	or     (%rdi),%bh
    27af:	0b 3a                	or     (%rdx),%edi
    27b1:	0a af 0b ae 0b ad    	or     -0x52f451f5(%rdi),%ch
    27b7:	0b 3c 0a             	or     (%rdx,%rcx,1),%edi
    27ba:	69 0a 35 0a 34 0b    	imul   $0xb340a35,(%rdx),%ecx
    27c0:	36 0a 50 0a          	ss or  0xa(%rax),%dl
    27c4:	37                   	(bad)  
    27c5:	0a 38                	or     (%rax),%bh
    27c7:	0a 4c 0a 45          	or     0x45(%rdx,%rcx,1),%cl
    27cb:	0a 46 0a             	or     0xa(%rsi),%al
    27ce:	3f                   	(bad)  
    27cf:	0a 3d 0a 49 0a 6e    	or     0x6e0a490a(%rip),%bh        # 0x6e0a70df
    27d5:	0c 41                	or     $0x41,%al
    27d7:	0a 48 0a             	or     0xa(%rax),%cl
    27da:	b7 0b                	mov    $0xb,%bh
    27dc:	4d 0a 44 0a 7c       	rex.WRB or 0x7c(%r10,%rcx,1),%r8b
    27e1:	0c b2                	or     $0xb2,%al
    27e3:	0b 12                	or     (%rdx),%edx
    27e5:	0a 3e                	or     (%rsi),%bh
    27e7:	0a b6 0b b5 0b b4    	or     -0x4bf44af5(%rsi),%dh
    27ed:	0b 13                	or     (%rbx),%edx
    27ef:	0a 42 0a             	or     0xa(%rdx),%al
    27f2:	43 0a 40 0a          	rex.XB or 0xa(%r8),%al
    27f6:	3b 0a                	cmp    (%rdx),%ecx
    27f8:	b1 0b                	mov    $0xb,%cl
    27fa:	47 0a b0 0b c1 0b c0 	rex.RXB or -0x3ff43ef5(%r8),%r14b
    2801:	0b c3                	or     %ebx,%eax
    2803:	0b c9                	or     %ecx,%ecx
    2805:	0b c8                	or     %eax,%ecx
    2807:	0b d0                	or     %eax,%edx
    2809:	0b ce                	or     %esi,%ecx
    280b:	0b cb                	or     %ebx,%ecx
    280d:	0b c2                	or     %edx,%eax
    280f:	0b c4                	or     %esp,%eax
    2811:	0b c5                	or     %ebp,%eax
    2813:	0b cd                	or     %ebp,%ecx
    2815:	0b cf                	or     %edi,%ecx
    2817:	0b cc                	or     %esp,%ecx
    2819:	0b c6                	or     %esi,%eax
    281b:	0b c7                	or     %edi,%eax
    281d:	0b ca                	or     %edx,%ecx
    281f:	0b b9 0b 4a 0a 4b    	or     0x4b0a4a0b(%rcx),%edi
    2825:	0a 0b                	or     (%rbx),%cl
    2827:	0b 0b                	or     (%rbx),%ecx
    2829:	0a f1                	or     %cl,%dh
    282b:	01 f2                	add    %esi,%edx
    282d:	01 0e                	add    %ecx,(%rsi)
    282f:	0a 66 0a             	or     0xa(%rsi),%ah
    2832:	0c 0b                	or     $0xb,%al
    2834:	ef                   	out    %eax,(%dx)
    2835:	0d f0 0d 6f 0c       	or     $0xc6f0df0,%eax
    283a:	72 0c                	jb     0x2848
    283c:	f1                   	int1   
    283d:	0d 70 0c 71 0c       	or     $0xc710c70,%eax
    2842:	4f 0a f3             	rex.WRXB or %r11b,%r14b
    2845:	0d f2 0d 73 0c       	or     $0xc730df2,%eax
    284a:	7d 0a                	jge    0x2856
    284c:	d0 0a                	rorb   (%rdx)
    284e:	ab                   	stos   %eax,%es:(%rdi)
    284f:	0a ae 0a a7 0a b1    	or     -0x4ef558f6(%rsi),%ch
    2855:	0a 70 0a             	or     0xa(%rax),%dh
    2858:	6f                   	outsl  %ds:(%rsi),(%dx)
    2859:	0a ea                	or     %dl,%ch
    285b:	0a ef                	or     %bh,%ch
    285d:	01 49 02             	add    %ecx,0x2(%rcx)
    2860:	ee                   	out    %al,(%dx)
    2861:	01 b3 0a b4 0a 0f    	add    %esi,0xf0ab40a(%rbx)
    2867:	0b 10                	or     (%rax),%edx
    2869:	0b 11                	or     (%rcx),%edx
    286b:	0b 12                	or     (%rdx),%edx
    286d:	0b 13                	or     (%rbx),%edx
    286f:	0b f4                	or     %esp,%esi
    2871:	01 f0                	add    %esi,%eax
    2873:	01 cb                	add    %ecx,%ebx
    2875:	0a b2 0a f5 01 c3    	or     -0x3cfe0af6(%rdx),%dh
    287b:	0a c2                	or     %dl,%al
    287d:	0a c1                	or     %cl,%al
    287f:	0a be 0a 71 0a 9d    	or     -0x62f58ef6(%rsi),%bh
    2885:	0a 9e 0a 9f 0a a0    	or     -0x5ff560f6(%rsi),%bl
    288b:	0a d3                	or     %bl,%dl
    288d:	01 d2                	add    %edx,%edx
    288f:	01 a2 0a a3 0a a1    	add    %esp,-0x5ef55cf6(%rdx)
    2895:	0a a4 0a a6 0a a8 0a 	or     0xaa80aa6(%rdx,%rcx,1),%ah
    289c:	a9 0a aa 0a cd       	test   $0xcd0aaa0a,%eax
    28a1:	01 b0 0a af 0a ac    	add    %esi,-0x53f550f6(%rax)
    28a7:	0a a5 0a e6 0a dd    	or     -0x22f519f6(%rbp),%ah
    28ad:	01 dc                	add    %ebx,%esp
    28af:	01 e9                	add    %ebp,%ecx
    28b1:	0a a8 0b 8a 0b 98    	or     -0x67f475f5(%rax),%ch
    28b7:	0b 6e 0a             	or     0xa(%rsi),%ebp
    28ba:	e7 0a                	out    %eax,$0xa
    28bc:	e8 0a b3 0b d5       	call   0xffffffffd50bdbcb
    28c1:	0a d6                	or     %dh,%dl
    28c3:	0a d8                	or     %al,%bl
    28c5:	0a d7                	or     %bh,%dl
    28c7:	0a db                	or     %bl,%bl
    28c9:	0a da                	or     %dl,%bl
    28cb:	0a e1                	or     %cl,%ah
    28cd:	0a de                	or     %dh,%bl
    28cf:	0a d9                	or     %cl,%bl
    28d1:	0a e0                	or     %al,%ah
    28d3:	0a df                	or     %bh,%bl
    28d5:	0a dd                	or     %ch,%bl
    28d7:	0a dc                	or     %ah,%bl
    28d9:	0a d4                	or     %ah,%dl
    28db:	0a e2                	or     %dl,%ah
    28dd:	0a f7                	or     %bh,%dh
    28df:	0b e3                	or     %ebx,%esp
    28e1:	0a e4                	or     %ah,%ah
    28e3:	0a e5                	or     %ch,%ah
    28e5:	0a d3                	or     %bl,%dl
    28e7:	0a e3                	or     %bl,%ah
    28e9:	01 d1                	add    %edx,%ecx
    28eb:	0a d2                	or     %dl,%dl
    28ed:	0a ce                	or     %dh,%cl
    28ef:	0a 0d 0b 0e 0b 00    	or     0xb0e0b(%rip),%cl        # 0xb3700
    28f5:	0b 03                	or     (%rbx),%eax
    28f7:	0b fe                	or     %esi,%edi
    28f9:	0a fc                	or     %ah,%bh
    28fb:	0a f7                	or     %bh,%dh
    28fd:	0a fb                	or     %bl,%bh
    28ff:	0a f5                	or     %ch,%dh
    2901:	0a f9                	or     %cl,%bh
    2903:	0a f6                	or     %dh,%dh
    2905:	0a f4                	or     %ah,%dh
    2907:	0a fa                	or     %dl,%bh
    2909:	0a f8                	or     %al,%bh
    290b:	0a 02                	or     (%rdx),%al
    290d:	0b 04 0b             	or     (%rbx,%rcx,1),%eax
    2910:	ff 0a                	decl   (%rdx)
    2912:	01 0b                	add    %ecx,(%rbx)
    2914:	fd                   	std    
    2915:	0a bc 0a bd 0a b9 0a 	or     0xab90abd(%rdx,%rcx,1),%bh
    291c:	bb 0a 06 0b 05       	mov    $0x50b060a,%ebx
    2921:	0b 08                	or     (%rax),%ecx
    2923:	0b 07                	or     (%rdi),%eax
    2925:	0b c0                	or     %eax,%eax
    2927:	0a bf 0a ca 0a c4    	or     -0x3bf535f6(%rdi),%bh
    292d:	0a c6                	or     %dh,%al
    292f:	0a c9                	or     %cl,%cl
    2931:	0a c5                	or     %ch,%al
    2933:	0a c7                	or     %bh,%al
    2935:	0a c8                	or     %al,%cl
    2937:	0a cd                	or     %ch,%cl
    2939:	0a 0a                	or     (%rdx),%cl
    293b:	0b b8 0a 72 0a 09    	or     0x90a720a(%rax),%edi
    2941:	0b b7 0a b6 0a ba    	or     -0x45f549f6(%rdi),%esi
    2947:	0a f4                	or     %ah,%dh
    2949:	0b f5                	or     %ebp,%esi
    294b:	0b f3                	or     %ebx,%esi
    294d:	0b f6                	or     %esi,%esi
    294f:	0b b5 0a cc 0a ad    	or     -0x52f533f6(%rbp),%esi
    2955:	0a cf                	or     %bh,%cl
    2957:	0a 76 0a             	or     0xa(%rsi),%dh
    295a:	84 0a                	test   %cl,(%rdx)
    295c:	83 0a 85             	orl    $0xffffff85,(%rdx)
    295f:	0a 82 0a 79 0a 78    	or     0x780a790a(%rdx),%al
    2965:	0a cb                	or     %bl,%cl
    2967:	01 7c 0a 77          	add    %edi,0x77(%rdx,%rcx,1)
    296b:	0a 7a 0a             	or     0xa(%rdx),%bh
    296e:	75 0a                	jne    0x297a
    2970:	7b 0a                	jnp    0x297c
    2972:	c2 01 f7             	ret    $0xf701
    2975:	03 f8                	add    %eax,%edi
    2977:	03 f5                	add    %ebp,%esi
    2979:	03 f3                	add    %ebx,%esi
    297b:	03 53 05             	add    0x5(%rbx),%edx
    297e:	fb                   	sti    
    297f:	03 fc                	add    %esp,%edi
    2981:	03 f6                	add    %esi,%esi
    2983:	03 f9                	add    %ecx,%edi
    2985:	03 05 04 58 05 57    	add    0x57055804(%rip),%eax        # 0x5705818f
    298b:	05 00 04 4b 05       	add    $0x54b0400,%eax
    2990:	4a 05 6c 05 6d 05    	rex.WX add $0x56d056c,%rax
    2996:	6e                   	outsb  %ds:(%rsi),(%dx)
    2997:	05 6f 05 71 05       	add    $0x571056f,%eax
    299c:	73 05                	jae    0x29a3
    299e:	70 05                	jo     0x29a5
    29a0:	72 05                	jb     0x29a7
    29a2:	50                   	push   %rax
    29a3:	05 51 05 49 05       	add    $0x5490551,%eax
    29a8:	4d 05 4e 05 4c 05    	rex.WRB add $0x54c054e,%rax
    29ae:	69 05 52 05 4f 05 f2 	imul   $0x56503f2,0x54f0552(%rip),%eax        # 0x54f2f0a
    29b5:	03 65 05 
    29b8:	56                   	push   %rsi
    29b9:	05 55 05 6b 05       	add    $0x56b0555,%eax
    29be:	6a 05                	push   $0x5
    29c0:	66 05 67 05          	add    $0x567,%ax
    29c4:	54                   	push   %rsp
    29c5:	05 63 05 68 05       	add    $0x5680563,%eax
    29ca:	64 05 62 05 61 05    	fs add $0x5610562,%eax
    29d0:	60                   	(bad)  
    29d1:	05 5f 05 5e 05       	add    $0x55e055f,%eax
    29d6:	5c                   	pop    %rsp
    29d7:	05 5a 05 fa 03       	add    $0x3fa055a,%eax
    29dc:	5d                   	pop    %rbp
    29dd:	05 5b 05 59 05       	add    $0x559055b,%eax
    29e2:	fa                   	cli    
    29e3:	0d 04 04 ec 0a       	or     $0xaec0404,%eax
    29e8:	f0 0b f1             	lock or %ecx,%esi
    29eb:	0b ed                	or     %ebp,%ebp
    29ed:	0b ee                	or     %esi,%ebp
    29ef:	0b ec                	or     %esp,%ebp
    29f1:	0b eb                	or     %ebx,%ebp
    29f3:	0b ea                	or     %edx,%ebp
    29f5:	0b ef                	or     %edi,%ebp
    29f7:	0b e9                	or     %ecx,%ebp
    29f9:	0b e6                	or     %esi,%esp
    29fb:	0b e5                	or     %ebp,%esp
    29fd:	0b e8                	or     %eax,%ebp
    29ff:	0b a4 0b a5 0b 17 0b 	or     0xb170ba5(%rbx,%rcx,1),%esp
    2a06:	60                   	(bad)  
    2a07:	0b 6b 0a             	or     0xa(%rbx),%ebp
    2a0a:	6a 0a                	push   $0xa
    2a0c:	6c                   	insb   (%dx),%es:(%rdi)
    2a0d:	0a a7 0b a6 0b 16    	or     0x160ba60b(%rdi),%ah
    2a13:	0b 15 0b 14 0b ab    	or     -0x54f4ebf5(%rip),%edx        # 0xffffffffab0b3e24
    2a19:	0b aa 0b ac 0b a9    	or     -0x56f453f5(%rdx),%ebp
    2a1f:	0b 74 0a 73          	or     0x73(%rdx,%rcx,1),%esi
    2a23:	0a e0                	or     %al,%ah
    2a25:	0b dd                	or     %ebp,%ebx
    2a27:	0b de                	or     %esi,%ebx
    2a29:	0b df                	or     %edi,%ebx
    2a2b:	0b e2                	or     %edx,%esp
    2a2d:	0b e1                	or     %ecx,%esp
    2a2f:	0b e3                	or     %ebx,%esp
    2a31:	0b da                	or     %edx,%ebx
    2a33:	0b dc                	or     %esp,%ebx
    2a35:	0b db                	or     %ebx,%ebx
    2a37:	0b e4                	or     %esp,%esp
    2a39:	0b 69 0b             	or     0xb(%rcx),%ebp
    2a3c:	99                   	cltd   
    2a3d:	0b 9a 0b 6c 0b 68    	or     0x680b6c0b(%rdx),%ebx
    2a43:	0b 6e 0b             	or     0xb(%rsi),%ebp
    2a46:	71 0b                	jno    0x2a53
    2a48:	74 0b                	je     0x2a55
    2a4a:	75 0b                	jne    0x2a57
    2a4c:	70 0b                	jo     0x2a59
    2a4e:	6f                   	outsl  %ds:(%rsi),(%dx)
    2a4f:	0b 72 0b             	or     0xb(%rdx),%esi
    2a52:	80 0b 73             	orb    $0x73,(%rbx)
    2a55:	0b a3 0b 81 0b 82    	or     -0x7df47ef5(%rbx),%esp
    2a5b:	0b 83 0b 7a 0b 79    	or     0x790b7a0b(%rbx),%eax
    2a61:	0b 78 0b             	or     0xb(%rax),%edi
    2a64:	77 0b                	ja     0x2a71
    2a66:	d9 0b                	(bad)  (%rbx)
    2a68:	6d                   	insl   (%dx),%es:(%rdi)
    2a69:	0b 7b 0b             	or     0xb(%rbx),%edi
    2a6c:	7d 0b                	jge    0x2a79
    2a6e:	7c 0b                	jl     0x2a7b
    2a70:	7f 0b                	jg     0x2a7d
    2a72:	7e 0b                	jle    0x2a7f
    2a74:	6a 0b                	push   $0xb
    2a76:	76 0b                	jbe    0x2a83
    2a78:	88 0b                	mov    %cl,(%rbx)
    2a7a:	8d 0b                	lea    (%rbx),%ecx
    2a7c:	8e 0b                	mov    (%rbx),%cs
    2a7e:	89 0b                	mov    %ecx,(%rbx)
    2a80:	8c 0b                	mov    %cs,(%rbx)
    2a82:	90                   	nop
    2a83:	0b 93 0b 91 0b 96    	or     -0x69f46ef5(%rbx),%edx
    2a89:	0b 97 0b 92 0b 8f    	or     -0x70f46df5(%rdi),%edx
    2a8f:	0b 95 0b 94 0b 8b    	or     -0x74f46bf5(%rbp),%edx
    2a95:	0b 6b 0b             	or     0xb(%rbx),%ebp
    2a98:	87 0b                	xchg   %ecx,(%rbx)
    2a9a:	86 0b                	xchg   %cl,(%rbx)
    2a9c:	85 0b                	test   %ecx,(%rbx)
    2a9e:	84 0b                	test   %cl,(%rbx)
    2aa0:	29 0b                	sub    %ecx,(%rbx)
    2aa2:	2b 0b                	sub    (%rbx),%ecx
    2aa4:	2a 0b                	sub    (%rbx),%cl
    2aa6:	2c 0b                	sub    $0xb,%al
    2aa8:	2d 0b 59 0b 5c       	sub    $0x5c0b590b,%eax
    2aad:	0b 5b 0b             	or     0xb(%rbx),%ebx
    2ab0:	51                   	push   %rcx
    2ab1:	0b 57 0b             	or     0xb(%rdi),%edx
    2ab4:	58                   	pop    %rax
    2ab5:	0b 55 0b             	or     0xb(%rbp),%edx
    2ab8:	54                   	push   %rsp
    2ab9:	0b 56 0b             	or     0xb(%rsi),%edx
    2abc:	5f                   	pop    %rdi
    2abd:	0b 5e 0b             	or     0xb(%rsi),%ebx
    2ac0:	5d                   	pop    %rbp
    2ac1:	0b 53 0b             	or     0xb(%rbx),%edx
    2ac4:	52                   	push   %rdx
    2ac5:	0b 5a 0b             	or     0xb(%rdx),%ebx
    2ac8:	28 0b                	sub    %cl,(%rbx)
    2aca:	26 0b 25 0b 27 0b 24 	es or  0x240b270b(%rip),%esp        # 0x240b51dc
    2ad1:	0b 23                	or     (%rbx),%esp
    2ad3:	0b 20                	or     (%rax),%esp
    2ad5:	0b 1f                	or     (%rdi),%ebx
    2ad7:	0b 1d 0b 22 0b 1c    	or     0x1c0b220b(%rip),%ebx        # 0x1c0b4ce8
    2add:	0b 1b                	or     (%rbx),%ebx
    2adf:	0b 1e                	or     (%rsi),%ebx
    2ae1:	0b 21                	or     (%rcx),%esp
    2ae3:	0b 75 0c             	or     0xc(%rbp),%esi
    2ae6:	77 0c                	ja     0x2af4
    2ae8:	79 0c                	jns    0x2af6
    2aea:	76 0c                	jbe    0x2af8
    2aec:	18 0b                	sbb    %cl,(%rbx)
    2aee:	7a 0c                	jp     0x2afc
    2af0:	78 0c                	js     0x2afe
    2af2:	1a 0b                	sbb    (%rbx),%cl
    2af4:	19 0b                	sbb    %ecx,(%rbx)
    2af6:	7b 0c                	jnp    0x2b04
    2af8:	e7 0b                	out    %eax,$0xb
    2afa:	9b                   	fwait
    2afb:	0b 9c 0b 9d 0b d8 0b 	or     0xbd80b9d(%rbx,%rcx,1),%ebx
    2b02:	b8 0b d1 0b d3       	mov    $0xd30bd10b,%eax
    2b07:	0b d5                	or     %ebp,%edx
    2b09:	0b d2                	or     %edx,%edx
    2b0b:	0b d4                	or     %esp,%edx
    2b0d:	0b d7                	or     %edi,%edx
    2b0f:	0b 8a 0a 8b 0a 89    	or     -0x76f574f6(%rdx),%ecx
    2b15:	0a 8c 0a 03 0a 04 0a 	or     0xa040a03(%rdx,%rcx,1),%cl
    2b1c:	87 0a                	xchg   %ecx,(%rdx)
    2b1e:	88 0a                	mov    %cl,(%rdx)
    2b20:	08 0a                	or     %cl,(%rdx)
    2b22:	14 0a                	adc    $0xa,%al
    2b24:	15 0a 7e 0a 8e       	adc    $0x8e0a7e0a,%eax
    2b29:	0a 8f 0a 8d 0a 7f    	or     0x7f0a8d0a(%rdi),%cl
    2b2f:	0a 80 0a 81 0a 9c    	or     -0x63f57ef6(%rax),%al
    2b35:	0a 9b 0a 09 0a 6d    	or     0x6d0a090a(%rbx),%bl
    2b3b:	0a 97 0a 98 0a 9a    	or     -0x65f567f6(%rdi),%dl
    2b41:	0a 90 0a 91 0a c9    	or     -0x36f56ef6(%rax),%dl
    2b47:	01 99 0a 95 0a 94    	add    %ebx,-0x6bf56af6(%rcx)
    2b4d:	0a c7                	or     %bh,%al
    2b4f:	01 c6                	add    %eax,%esi
    2b51:	01 c8                	add    %ecx,%eax
    2b53:	01 93 0a c5 01 62    	add    %edx,0x6201c50a(%rbx)
    2b59:	0b 11                	or     (%rcx),%edx
    2b5b:	0a 67 0b             	or     0xb(%rdi),%ah
    2b5e:	61                   	(bad)  
    2b5f:	0b 65 0b             	or     0xb(%rbp),%esp
    2b62:	66 0b 63 0b          	or     0xb(%rbx),%sp
    2b66:	64 0b 96 0a f4 0d f9 	or     %fs:-0x6f20bf6(%rsi),%edx
    2b6d:	0d f4 03 92 0a       	or     $0xa9203f4,%eax
    2b72:	f6 0d f7 0d f8 0d f5 	testb  $0xf5,0xdf80df7(%rip)        # 0xdf83970
    2b79:	0d 86 0a 44 0b       	or     $0xb440a86,%eax
    2b7e:	45 0b 47 0b          	or     0xb(%r15),%r8d
    2b82:	46 0b 50 0b          	rex.RX or 0xb(%rax),%r10d
    2b86:	32 0b                	xor    (%rbx),%cl
    2b88:	38 0b                	cmp    %cl,(%rbx)
    2b8a:	39 0b                	cmp    %ecx,(%rbx)
    2b8c:	37                   	(bad)  
    2b8d:	0b 3e                	or     (%rsi),%edi
    2b8f:	0b 35 0b 43 0b 36    	or     0x360b430b(%rip),%esi        # 0x360b6ea0
    2b95:	0b 3d 0b 3b 0b 3a    	or     0x3a0b3b0b(%rip),%edi        # 0x3a0b66a6
    2b9b:	0b 3c 0b             	or     (%rbx,%rcx,1),%edi
    2b9e:	40 0b 41 0b          	rex or 0xb(%rcx),%eax
    2ba2:	42 0b 2f             	rex.X or (%rdi),%ebp
    2ba5:	0b 2e                	or     (%rsi),%ebp
    2ba7:	0b f2                	or     %edx,%esi
    2ba9:	0b 30                	or     (%rax),%esi
    2bab:	0b 33                	or     (%rbx),%esi
    2bad:	0b 7e 0c             	or     0xc(%rsi),%edi
    2bb0:	0f 0c                	(bad)  
    2bb2:	16                   	(bad)  
    2bb3:	0c 15                	or     $0x15,%al
    2bb5:	0c 0e                	or     $0xe,%al
    2bb7:	0c 17                	or     $0x17,%al
    2bb9:	0c 0c                	or     $0xc,%al
    2bbb:	0c 10                	or     $0x10,%al
    2bbd:	0c 0d                	or     $0xd,%al
    2bbf:	0c 11                	or     $0x11,%al
    2bc1:	0c 14                	or     $0x14,%al
    2bc3:	0c 13                	or     $0x13,%al
    2bc5:	0c 12                	or     $0x12,%al
    2bc7:	0c 18                	or     $0x18,%al
    2bc9:	0c 1b                	or     $0x1b,%al
    2bcb:	0c 19                	or     $0x19,%al
    2bcd:	0c 1a                	or     $0x1a,%al
    2bcf:	0c 0a                	or     $0xa,%al
    2bd1:	0c 87                	or     $0x87,%al
    2bd3:	0c 85                	or     $0x85,%al
    2bd5:	0c 23                	or     $0x23,%al
    2bd7:	0d 0b 0c 80 0c       	or     $0xc800c0b,%eax
    2bdc:	84 0c 83             	test   %cl,(%rbx,%rax,4)
    2bdf:	0c 81                	or     $0x81,%al
    2be1:	0c 82                	or     $0x82,%al
    2be3:	0c 1c                	or     $0x1c,%al
    2be5:	0c fe                	or     $0xfe,%al
    2be7:	0b 1e                	or     (%rsi),%ebx
    2be9:	0c 1d                	or     $0x1d,%al
    2beb:	0c 1f                	or     $0x1f,%al
    2bed:	0c 21                	or     $0x21,%al
    2bef:	0c 22                	or     $0x22,%al
    2bf1:	0c 23                	or     $0x23,%al
    2bf3:	0c 20                	or     $0x20,%al
    2bf5:	0c ff                	or     $0xff,%al
    2bf7:	0b 03                	or     (%rbx),%eax
    2bf9:	0c 02                	or     $0x2,%al
    2bfb:	0c 04                	or     $0x4,%al
    2bfd:	0c 05                	or     $0x5,%al
    2bff:	0c 07                	or     $0x7,%al
    2c01:	0c 01                	or     $0x1,%al
    2c03:	0c 08                	or     $0x8,%al
    2c05:	0c 00                	or     $0x0,%al
    2c07:	0c 06                	or     $0x6,%al
    2c09:	0c 32                	or     $0x32,%al
    2c0b:	0c 09                	or     $0x9,%al
    2c0d:	0c 30                	or     $0x30,%al
    2c0f:	0c 31                	or     $0x31,%al
    2c11:	0c 29                	or     $0x29,%al
    2c13:	0c 2a                	or     $0x2a,%al
    2c15:	0c 2b                	or     $0x2b,%al
    2c17:	0c 2d                	or     $0x2d,%al
    2c19:	0c 2c                	or     $0x2c,%al
    2c1b:	0c 2e                	or     $0x2e,%al
    2c1d:	0c 26                	or     $0x26,%al
    2c1f:	0c 25                	or     $0x25,%al
    2c21:	0c 27                	or     $0x27,%al
    2c23:	0c 28                	or     $0x28,%al
    2c25:	0c 4e                	or     $0x4e,%al
    2c27:	0c 4f                	or     $0x4f,%al
    2c29:	0c f4                	or     $0xf4,%al
    2c2b:	0c f5                	or     $0xf5,%al
    2c2d:	0c 4c                	or     $0x4c,%al
    2c2f:	0c 50                	or     $0x50,%al
    2c31:	0c 45                	or     $0x45,%al
    2c33:	0c 49                	or     $0x49,%al
    2c35:	0c 44                	or     $0x44,%al
    2c37:	0c 46                	or     $0x46,%al
    2c39:	0c 43                	or     $0x43,%al
    2c3b:	0c 42                	or     $0x42,%al
    2c3d:	0c 47                	or     $0x47,%al
    2c3f:	0c 48                	or     $0x48,%al
    2c41:	0c 4d                	or     $0x4d,%al
    2c43:	0c f6                	or     $0xf6,%al
    2c45:	0c 40                	or     $0x40,%al
    2c47:	0c 36                	or     $0x36,%al
    2c49:	0c 37                	or     $0x37,%al
    2c4b:	0c 3a                	or     $0x3a,%al
    2c4d:	0c 3f                	or     $0x3f,%al
    2c4f:	0c 3e                	or     $0x3e,%al
    2c51:	0c 3c                	or     $0x3c,%al
    2c53:	0c 3b                	or     $0x3b,%al
    2c55:	0c 39                	or     $0x39,%al
    2c57:	0c 38                	or     $0x38,%al
    2c59:	0c 3d                	or     $0x3d,%al
    2c5b:	0c 41                	or     $0x41,%al
    2c5d:	0c 52                	or     $0x52,%al
    2c5f:	0c 54                	or     $0x54,%al
    2c61:	0c 53                	or     $0x53,%al
    2c63:	0c 1d                	or     $0x1d,%al
    2c65:	0d 33 0c fa 0c       	or     $0xcfa0c33,%eax
    2c6a:	4a 0c 4b             	rex.WX or $0x4b,%al
    2c6d:	0c 1f                	or     $0x1f,%al
    2c6f:	0d cc 02 cb 02       	or     $0x2cb02cc,%eax
    2c74:	c9                   	leave  
    2c75:	02 ca                	add    %dl,%cl
    2c77:	02 53 02             	add    0x2(%rbx),%dl
    2c7a:	54                   	push   %rsp
    2c7b:	02 55 02             	add    0x2(%rbp),%dl
    2c7e:	56                   	push   %rsi
    2c7f:	02 4e 02             	add    0x2(%rsi),%cl
    2c82:	51                   	push   %rcx
    2c83:	02 52 02             	add    0x2(%rdx),%dl
    2c86:	50                   	push   %rax
    2c87:	02 5a 02             	add    0x2(%rdx),%bl
    2c8a:	59                   	pop    %rcx
    2c8b:	02 5b 02             	add    0x2(%rbx),%bl
    2c8e:	4f 02 6d 02          	rex.WRXB add 0x2(%r13),%r13b
    2c92:	5c                   	pop    %rsp
    2c93:	02 5d 02             	add    0x2(%rbp),%bl
    2c96:	60                   	(bad)  
    2c97:	02 5f 02             	add    0x2(%rdi),%bl
    2c9a:	5e                   	pop    %rsi
    2c9b:	02 03                	add    (%rbx),%al
    2c9d:	03 04 03             	add    (%rbx,%rax,1),%eax
    2ca0:	02 03                	add    (%rbx),%al
    2ca2:	0d 03 07 03 06       	or     $0x6030703,%eax
    2ca7:	03 0a                	add    (%rdx),%ecx
    2ca9:	03 08                	add    (%rax),%ecx
    2cab:	03 10                	add    (%rax),%edx
    2cad:	03 0f                	add    (%rdi),%ecx
    2caf:	03 0e                	add    (%rsi),%ecx
    2cb1:	03 58 02             	add    0x2(%rax),%ebx
    2cb4:	09 03                	or     %eax,(%rbx)
    2cb6:	05 03 11 03 0c       	add    $0xc031103,%eax
    2cbb:	03 0b                	add    (%rbx),%ecx
    2cbd:	03 57 02             	add    0x2(%rdi),%edx
    2cc0:	c8 02 c7 02          	enter  $0xc702,$0x2
    2cc4:	6c                   	insb   (%dx),%es:(%rdi)
    2cc5:	02 61 02             	add    0x2(%rcx),%ah
    2cc8:	62 02                	(bad)  
    2cca:	63 02                	movsxd (%rdx),%eax
    2ccc:	6a 02                	push   $0x2
    2cce:	6b 02 67             	imul   $0x67,(%rdx),%eax
    2cd1:	02 64 02 65          	add    0x65(%rdx,%rax,1),%ah
    2cd5:	02 66 02             	add    0x2(%rsi),%ah
    2cd8:	69 02 68 02 a4 02    	imul   $0x2a40268,(%rdx),%eax
    2cde:	4c 02 9f 02 a0 02 a3 	rex.WR add -0x5cfd5ffe(%rdi),%r11b
    2ce5:	02 a1 02 a2 02 84    	add    -0x7bfd5dfe(%rcx),%ah
    2ceb:	02 83 02 8d 02 7f    	add    0x7f028d02(%rbx),%al
    2cf1:	02 8b 02 8a 02 8c    	add    -0x73fd75fe(%rbx),%cl
    2cf7:	02 80 02 81 02 7d    	add    0x7d028102(%rax),%al
    2cfd:	02 87 02 82 02 88    	add    -0x77fd7dfe(%rdi),%al
    2d03:	02 89 02 7e 02 86    	add    -0x79fd81fe(%rcx),%cl
    2d09:	02 8e 02 85 02 eb    	add    -0x14fd7afe(%rsi),%cl
    2d0f:	02 5d 0d             	add    0xd(%rbp),%bl
    2d12:	4b 02 6f 02          	rex.WXB add 0x2(%r15),%bpl
    2d16:	6e                   	outsb  %ds:(%rsi),(%dx)
    2d17:	02 8f 02 79 02 7a    	add    0x7a027902(%rdi),%cl
    2d1d:	02 97 02 71 02 74    	add    0x74027102(%rdi),%dl
    2d23:	02 75 02             	add    0x2(%rbp),%dh
    2d26:	76 02                	jbe    0x2d2a
    2d28:	78 02                	js     0x2d2c
    2d2a:	72 02                	jb     0x2d2e
    2d2c:	77 02                	ja     0x2d30
    2d2e:	73 02                	jae    0x2d32
    2d30:	90                   	nop
    2d31:	02 93 02 95 02 96    	add    -0x69fd6afe(%rbx),%dl
    2d37:	02 92 02 91 02 94    	add    -0x6bfd6efe(%rdx),%dl
    2d3d:	02 70 02             	add    0x2(%rax),%dh
    2d40:	9d                   	popf   
    2d41:	02 9c 02 ba 02 bc 02 	add    0x2bc02ba(%rdx,%rax,1),%bl
    2d48:	bb 02 4d 02 98       	mov    $0x98024d02,%ebx
    2d4d:	02 9a 02 9e 02 d6    	add    -0x29fd61fe(%rdx),%bl
    2d53:	01 d8                	add    %ebx,%eax
    2d55:	01 da                	add    %ebx,%edx
    2d57:	01 d7                	add    %edx,%edi
    2d59:	01 d9                	add    %ebx,%ecx
    2d5b:	01 d5                	add    %edx,%ebp
    2d5d:	01 c3                	add    %eax,%ebx
    2d5f:	01 d4                	add    %edx,%esp
    2d61:	01 db                	add    %ebx,%ebx
    2d63:	01 ca                	add    %ecx,%edx
    2d65:	01 c4                	add    %eax,%esp
    2d67:	01 de                	add    %ebx,%esi
    2d69:	01 df                	add    %ebx,%edi
    2d6b:	01 e0                	add    %esp,%eax
    2d6d:	01 e2                	add    %esp,%edx
    2d6f:	01 cc                	add    %ecx,%esp
    2d71:	01 eb                	add    %ebp,%ebx
    2d73:	01 ce                	add    %ecx,%esi
    2d75:	01 d1                	add    %edx,%ecx
    2d77:	01 ed                	add    %ebp,%ebp
    2d79:	01 ec                	add    %ebp,%esp
    2d7b:	01 e4                	add    %esp,%esp
    2d7d:	01 e5                	add    %esp,%ebp
    2d7f:	01 21                	add    %esp,(%rcx)
    2d81:	0d fb 0d 12 0d       	or     $0xd120dfb,%eax
    2d86:	13 0d 14 0d 11 0d    	adc    0xd110d14(%rip),%ecx        # 0xd113aa0
    2d8c:	16                   	(bad)  
    2d8d:	0d 17 0d 19 0d       	or     $0xd190d17,%eax
    2d92:	15 0d 18 0d fd       	adc    $0xfd0d180d,%eax
    2d97:	0b 7d 0c             	or     0xc(%rbp),%edi
    2d9a:	88 0c 7f             	mov    %cl,(%rdi,%rdi,2)
    2d9d:	0c 20                	or     $0x20,%al
    2d9f:	0d 55 0c 8b 0c       	or     $0xc8b0c55,%eax
    2da4:	8c 0c 90             	mov    %cs,(%rax,%rdx,4)
    2da7:	0c 92                	or     $0x92,%al
    2da9:	0c 91                	or     $0x91,%al
    2dab:	0c 89                	or     $0x89,%al
    2dad:	0c f8                	or     $0xf8,%al
    2daf:	0b 94 0c 8e 0c 8d 0c 	or     0xc8d0c8e(%rsp,%rcx,1),%edx
    2db6:	f9                   	stc    
    2db7:	0b 8a 0c 95 0c 96    	or     -0x69f36af4(%rdx),%ecx
    2dbd:	0c 97                	or     $0x97,%al
    2dbf:	0c 93                	or     $0x93,%al
    2dc1:	0c 8f                	or     $0x8f,%al
    2dc3:	0c 24                	or     $0x24,%al
    2dc5:	0c 2f                	or     $0x2f,%al
    2dc7:	0c 86                	or     $0x86,%al
    2dc9:	0c 63                	or     $0x63,%al
    2dcb:	0c 6a                	or     $0x6a,%al
    2dcd:	0c 69                	or     $0x69,%al
    2dcf:	0c 6b                	or     $0x6b,%al
    2dd1:	0c 74                	or     $0x74,%al
    2dd3:	0c 6d                	or     $0x6d,%al
    2dd5:	0c 6c                	or     $0x6c,%al
    2dd7:	0c 5e                	or     $0x5e,%al
    2dd9:	0c 64                	or     $0x64,%al
    2ddb:	0c 1a                	or     $0x1a,%al
    2ddd:	0d 1c 0d 57 0c       	or     $0xc570d1c,%eax
    2de2:	65 0c 68             	gs or  $0x68,%al
    2de5:	0c 66                	or     $0x66,%al
    2de7:	0c 67                	or     $0x67,%al
    2de9:	0c 56                	or     $0x56,%al
    2deb:	0c 5d                	or     $0x5d,%al
    2ded:	0c 61                	or     $0x61,%al
    2def:	0c 62                	or     $0x62,%al
    2df1:	0c 60                	or     $0x60,%al
    2df3:	0c 5c                	or     $0x5c,%al
    2df5:	0c 5f                	or     $0x5f,%al
    2df7:	0c 5a                	or     $0x5a,%al
    2df9:	0c 5b                	or     $0x5b,%al
    2dfb:	0c 58                	or     $0x58,%al
    2dfd:	0c 59                	or     $0x59,%al
    2dff:	0c fa                	or     $0xfa,%al
    2e01:	0b fb                	or     %ebx,%edi
    2e03:	0b fc                	or     %esp,%edi
    2e05:	0b 9b 02 99 02 a8    	or     -0x57fd66fe(%rbx),%ebx
    2e0b:	02 ab 02 a9 02 c5    	add    -0x3afd56fe(%rbx),%ch
    2e11:	02 c4                	add    %ah,%al
    2e13:	02 aa 02 b4 02 c6    	add    -0x39fd4bfe(%rdx),%ch
    2e19:	02 d4                	add    %ah,%dl
    2e1b:	02 d8                	add    %al,%bl
    2e1d:	02 d6                	add    %dh,%dl
    2e1f:	02 d2                	add    %dl,%dl
    2e21:	02 cf                	add    %bh,%cl
    2e23:	02 cd                	add    %ch,%cl
    2e25:	02 ce                	add    %dh,%cl
    2e27:	02 d0                	add    %al,%dl
    2e29:	02 ac 02 d5 02 c3 02 	add    0x2c302d5(%rdx,%rax,1),%ch
    2e30:	d9 02                	flds   (%rdx)
    2e32:	d7                   	xlat   %ds:(%rbx)
    2e33:	02 d1                	add    %cl,%dl
    2e35:	02 d3                	add    %bl,%dl
    2e37:	02 01                	add    (%rcx),%al
    2e39:	03 4a 02             	add    0x2(%rdx),%ecx
    2e3c:	b0 02                	mov    $0x2,%al
    2e3e:	b3 02                	mov    $0x2,%bl
    2e40:	b2 02                	mov    $0x2,%dl
    2e42:	af                   	scas   %es:(%rdi),%eax
    2e43:	02 ae 02 b1 02 ad    	add    -0x52fd4efe(%rsi),%ch
    2e49:	02 a5 02 a6 02 7b    	add    0x7b02a602(%rbp),%ah
    2e4f:	02 7c 02 a7          	add    -0x59(%rdx,%rax,1),%bh
    2e53:	02 c0                	add    %al,%al
    2e55:	02 c1                	add    %cl,%al
    2e57:	02 c2                	add    %dl,%al
    2e59:	02 bf 02 b6 02 b9    	add    -0x46fd49fe(%rdi),%bh
    2e5f:	02 f7                	add    %bh,%dh
    2e61:	02 ff                	add    %bh,%bh
    2e63:	02 fb                	add    %bl,%bh
    2e65:	02 fa                	add    %dl,%bh
    2e67:	02 b5 02 be 02 bd    	add    -0x42fd41fe(%rbp),%dh
    2e6d:	02 b7 02 b8 02 22    	add    0x2202b802(%rdi),%dh
    2e73:	0d 99 0c 98 0c       	or     $0xc980c99,%eax
    2e78:	9a                   	(bad)  
    2e79:	0c 1e                	or     $0x1e,%al
    2e7b:	0d c7 0c 1b 0d       	or     $0xd1b0cc7,%eax
    2e80:	ac                   	lods   %ds:(%rsi),%al
    2e81:	0c b0                	or     $0xb0,%al
    2e83:	0c b1                	or     $0xb1,%al
    2e85:	0c b2                	or     $0xb2,%al
    2e87:	0c ae                	or     $0xae,%al
    2e89:	0c ad                	or     $0xad,%al
    2e8b:	0c aa                	or     $0xaa,%al
    2e8d:	0c ab                	or     $0xab,%al
    2e8f:	0c af                	or     $0xaf,%al
    2e91:	0c b3                	or     $0xb3,%al
    2e93:	0c b7                	or     $0xb7,%al
    2e95:	0c b6                	or     $0xb6,%al
    2e97:	0c b4                	or     $0xb4,%al
    2e99:	0c b5                	or     $0xb5,%al
    2e9b:	0c bd                	or     $0xbd,%al
    2e9d:	0c e7                	or     $0xe7,%al
    2e9f:	0c eb                	or     $0xeb,%al
    2ea1:	0c f1                	or     $0xf1,%al
    2ea3:	0c e9                	or     $0xe9,%al
    2ea5:	0c ec                	or     $0xec,%al
    2ea7:	0c f0                	or     $0xf0,%al
    2ea9:	0c ea                	or     $0xea,%al
    2eab:	0c ef                	or     $0xef,%al
    2ead:	0c e8                	or     $0xe8,%al
    2eaf:	0c ee                	or     $0xee,%al
    2eb1:	0c ed                	or     $0xed,%al
    2eb3:	0c e6                	or     $0xe6,%al
    2eb5:	0c a0                	or     $0xa0,%al
    2eb7:	0c c2                	or     $0xc2,%al
    2eb9:	0c bb                	or     $0xbb,%al
    2ebb:	0c ba                	or     $0xba,%al
    2ebd:	0c bc                	or     $0xbc,%al
    2ebf:	0c b9                	or     $0xb9,%al
    2ec1:	0c b8                	or     $0xb8,%al
    2ec3:	0c be                	or     $0xbe,%al
    2ec5:	0c d0                	or     $0xd0,%al
    2ec7:	0c e3                	or     $0xe3,%al
    2ec9:	0c df                	or     $0xdf,%al
    2ecb:	0c e0                	or     $0xe0,%al
    2ecd:	0c e2                	or     $0xe2,%al
    2ecf:	0c e1                	or     $0xe1,%al
    2ed1:	0c f2                	or     $0xf2,%al
    2ed3:	0c 9c                	or     $0x9c,%al
    2ed5:	0c 9d                	or     $0x9d,%al
    2ed7:	0c 9e                	or     $0x9e,%al
    2ed9:	0c cb                	or     $0xcb,%al
    2edb:	0c c9                	or     $0xc9,%al
    2edd:	0c c8                	or     $0xc8,%al
    2edf:	0c ce                	or     $0xce,%al
    2ee1:	0c cd                	or     $0xcd,%al
    2ee3:	0c ca                	or     $0xca,%al
    2ee5:	0c cc                	or     $0xcc,%al
    2ee7:	0c 9f                	or     $0x9f,%al
    2ee9:	0c c6                	or     $0xc6,%al
    2eeb:	0c c3                	or     $0xc3,%al
    2eed:	0c c4                	or     $0xc4,%al
    2eef:	0c bf                	or     $0xbf,%al
    2ef1:	0c c0                	or     $0xc0,%al
    2ef3:	0c c1                	or     $0xc1,%al
    2ef5:	0c c5                	or     $0xc5,%al
    2ef7:	0c 0e                	or     $0xe,%al
    2ef9:	0d 0f 0d 10 0d       	or     $0xd100d0f,%eax
    2efe:	01 0d 00 0d 05 0d    	add    %ecx,0xd050d00(%rip)        # 0xd053c04
    2f04:	06                   	(bad)  
    2f05:	0d 04 0d cf 0c       	or     $0xccf0d04,%eax
    2f0a:	ff 0c 03             	decl   (%rbx,%rax,1)
    2f0d:	0d 02 0d fe 0c       	or     $0xcfe0d02,%eax
    2f12:	0d 0d 0c 0d 0b       	or     $0xb0d0c0d,%eax
    2f17:	0d 0a 0d 09 0d       	or     $0xd090d0a,%eax
    2f1c:	08 0d 07 0d 9b 0c    	or     %cl,0xc9b0d07(%rip)        # 0xc9b3c29
    2f22:	34 0c                	xor    $0xc,%al
    2f24:	e5 0c                	in     $0xc,%eax
    2f26:	e4 0c                	in     $0xc,%al
    2f28:	d3 0c d4             	rorl   %cl,(%rsp,%rdx,8)
    2f2b:	0c db                	or     $0xdb,%al
    2f2d:	0c d7                	or     $0xd7,%al
    2f2f:	0c d8                	or     $0xd8,%al
    2f31:	0c dc                	or     $0xdc,%al
    2f33:	0c dd                	or     $0xdd,%al
    2f35:	0c d5                	or     $0xd5,%al
    2f37:	0c de                	or     $0xde,%al
    2f39:	0c d2                	or     $0xd2,%al
    2f3b:	0c d1                	or     $0xd1,%al
    2f3d:	0c d6                	or     $0xd6,%al
    2f3f:	0c d9                	or     $0xd9,%al
    2f41:	0c da                	or     $0xda,%al
    2f43:	0c f3                	or     $0xf3,%al
    2f45:	0c a2                	or     $0xa2,%al
    2f47:	0c a1                	or     $0xa1,%al
    2f49:	0c a5                	or     $0xa5,%al
    2f4b:	0c a8                	or     $0xa8,%al
    2f4d:	0c a9                	or     $0xa9,%al
    2f4f:	0c a6                	or     $0xa6,%al
    2f51:	0c a4                	or     $0xa4,%al
    2f53:	0c a3                	or     $0xa3,%al
    2f55:	0c a7                	or     $0xa7,%al
    2f57:	0c fd                	or     $0xfd,%al
    2f59:	0c fb                	or     $0xfb,%al
    2f5b:	0c fc                	or     $0xfc,%al
    2f5d:	0c 51                	or     $0x51,%al
    2f5f:	0c 35                	or     $0x35,%al
    2f61:	0c f9                	or     $0xf9,%al
    2f63:	0c f8                	or     $0xf8,%al
    2f65:	0c f7                	or     $0xf7,%al
    2f67:	0c fd                	or     $0xfd,%al
    2f69:	02 fe                	add    %dh,%bh
    2f6b:	02 00                	add    (%rax),%al
    2f6d:	03 fc                	add    %esp,%edi
    2f6f:	02 e0                	add    %al,%ah
    2f71:	02 de                	add    %dh,%bl
    2f73:	02 df                	add    %bh,%bl
    2f75:	02 da                	add    %dl,%bl
    2f77:	02 dc                	add    %ah,%bl
    2f79:	02 ec                	add    %ah,%ch
    2f7b:	02 db                	add    %bl,%bl
    2f7d:	02 ea                	add    %dl,%ch
    2f7f:	02 f8                	add    %al,%bh
    2f81:	02 f9                	add    %cl,%bh
    2f83:	02 e4                	add    %ah,%ah
    2f85:	02 e5                	add    %ch,%ah
    2f87:	02 f6                	add    %dh,%dh
    2f89:	02 ed                	add    %ch,%ch
    2f8b:	02 e2                	add    %dl,%ah
    2f8d:	02 f3                	add    %bl,%dh
    2f8f:	02 f1                	add    %cl,%dh
    2f91:	02 ef                	add    %bh,%ch
    2f93:	02 f2                	add    %dl,%dh
    2f95:	02 f0                	add    %al,%dh
    2f97:	02 e1                	add    %cl,%ah
    2f99:	02 e3                	add    %bl,%ah
    2f9b:	02 ee                	add    %dh,%ch
    2f9d:	02 f4                	add    %ah,%dh
    2f9f:	02 f5                	add    %ch,%dh
    2fa1:	02 e9                	add    %cl,%ch
    2fa3:	02 e6                	add    %dh,%ah
    2fa5:	02 e7                	add    %bh,%ah
    2fa7:	02 e8                	add    %al,%ch
    2fa9:	02 dd                	add    %ch,%bl
    2fab:	02 81 08 82 08 83    	add    -0x7cf77df8(%rcx),%al
    2fb1:	08 6f 08             	or     %ch,0x8(%rdi)
    2fb4:	6e                   	outsb  %ds:(%rsi),(%dx)
    2fb5:	08 6d 08             	or     %ch,0x8(%rbp)
    2fb8:	47 08 38             	rex.RXB or %r15b,(%r8)
    2fbb:	08 37                	or     %dh,(%rdi)
    2fbd:	08 36                	or     %dh,(%rsi)
    2fbf:	08 56 08             	or     %dl,0x8(%rsi)
    2fc2:	57                   	push   %rdi
    2fc3:	08 59 08             	or     %bl,0x8(%rcx)
    2fc6:	58                   	pop    %rax
    2fc7:	08 5c 08 35          	or     %bl,0x35(%rax,%rcx,1)
    2fcb:	08 45 08             	or     %al,0x8(%rbp)
    2fce:	3a 08                	cmp    (%rax),%cl
    2fd0:	3d 08 3b 08 3c       	cmp    $0x3c083b08,%eax
    2fd5:	08 3e                	or     %bh,(%rsi)
    2fd7:	08 42 08             	or     %al,0x8(%rdx)
    2fda:	43 08 44 08 40       	or     %al,0x40(%r8,%r9,1)
    2fdf:	08 41 08             	or     %al,0x8(%rcx)
    2fe2:	3f                   	(bad)  
    2fe3:	08 48 08             	or     %cl,0x8(%rax)
    2fe6:	50                   	push   %rax
    2fe7:	08 4d 08             	or     %cl,0x8(%rbp)
    2fea:	4b 08 53 08          	rex.WXB or %dl,0x8(%r11)
    2fee:	52                   	push   %rdx
    2fef:	08 4c 08 54          	or     %cl,0x54(%rax,%rcx,1)
    2ff3:	08 4e 08             	or     %cl,0x8(%rsi)
    2ff6:	4a 08 4f 08          	rex.WX or %cl,0x8(%rdi)
    2ffa:	51                   	push   %rcx
    2ffb:	08 55 08             	or     %dl,0x8(%rbp)
    2ffe:	49 08 46 08          	rex.WB or %al,0x8(%r14)
    3002:	5e                   	pop    %rsi
    3003:	08 6c 08 88          	or     %ch,-0x78(%rax,%rcx,1)
    3007:	08 87 08 89 08 91    	or     %al,-0x6ef776f8(%rdi)
    300d:	08 90 08 8b 08 8d    	or     %dl,-0x72f774f8(%rax)
    3013:	08 8c 08 8a 08 8e 08 	or     %cl,0x88e088a(%rax,%rcx,1)
    301a:	8f 08 80 08          	(bad)
    301e:	70 08                	jo     0x3028
    3020:	71 08                	jno    0x302a
    3022:	f8                   	clc    
    3023:	05 92 08 f9 05       	add    $0x5f90892,%eax
    3028:	84 08                	test   %cl,(%rax)
    302a:	85 08                	test   %ecx,(%rax)
    302c:	86 08                	xchg   %cl,(%rax)
    302e:	72 08                	jb     0x3038
    3030:	73 08                	jae    0x303a
    3032:	7f 08                	jg     0x303c
    3034:	7e 08                	jle    0x303e
    3036:	77 08                	ja     0x3040
    3038:	78 08                	js     0x3042
    303a:	7c 08                	jl     0x3044
    303c:	7d 08                	jge    0x3046
    303e:	76 08                	jbe    0x3048
    3040:	7a 08                	jp     0x304a
    3042:	79 08                	jns    0x304c
    3044:	7b 08                	jnp    0x304e
    3046:	75 08                	jne    0x3050
    3048:	74 08                	je     0x3052
    304a:	6a 08                	push   $0x8
    304c:	6b 08 b0             	imul   $0xffffffb0,(%rax),%ecx
    304f:	08 b2 08 a0 08 b1    	or     %dh,-0x4ef75ff8(%rdx)
    3055:	08 5d 08             	or     %bl,0x8(%rbp)
    3058:	5a                   	pop    %rdx
    3059:	08 5b 08             	or     %bl,0x8(%rbx)
    305c:	68 08 69 08 67       	push   $0x67086908
    3061:	08 64 08 63          	or     %ah,0x63(%rax,%rcx,1)
    3065:	08 65 08             	or     %ah,0x8(%rbp)
    3068:	62                   	(bad)  
    3069:	08 66 08             	or     %ah,0x8(%rsi)
    306c:	5f                   	pop    %rdi
    306d:	08 60 08             	or     %ah,0x8(%rax)
    3070:	61                   	(bad)  
    3071:	08 39                	or     %bh,(%rcx)
    3073:	08 95 08 af 08 9e    	or     %dl,-0x61f750f8(%rbp)
    3079:	08 ad 08 ab 08 ac    	or     %ch,-0x53f754f8(%rbp)
    307f:	08 9d 08 99 08 9a    	or     %bl,-0x65f766f8(%rbp)
    3085:	08 98 08 9b 08 9c    	or     %bl,-0x63f764f8(%rax)
    308b:	08 9f 08 ae 08 a5    	or     %bl,-0x5af751f8(%rdi)
    3091:	08 a6 08 a9 08 aa    	or     %ah,-0x55f756f8(%rsi)
    3097:	08 a7 08 a8 08 a4    	or     %ah,-0x5bf757f8(%rdi)
    309d:	08 a3 08 a2 08 96    	or     %ah,-0x69f75df8(%rbx)
    30a3:	08 97 08 a1 08 94    	or     %dl,-0x6bf75ef8(%rdi)
    30a9:	08 93 08 c2 04 c1    	or     %dl,-0x3efb3df8(%rbx)
    30af:	04 72                	add    $0x72,%al
    30b1:	04 b6                	add    $0xb6,%al
    30b3:	04 b7                	add    $0xb7,%al
    30b5:	04 c3                	add    $0xc3,%al
    30b7:	04 c4                	add    $0xc4,%al
    30b9:	04 00                	add    $0x0,%al
    30bb:	05 a1 04 73 04       	add    $0x47304a1,%eax
    30c0:	6b 04 6e 04          	imul   $0x4,(%rsi,%rbp,2),%eax
    30c4:	70 04                	jo     0x30ca
    30c6:	6c                   	insb   (%dx),%es:(%rdi)
    30c7:	04 6d                	add    $0x6d,%al
    30c9:	04 6f                	add    $0x6f,%al
    30cb:	04 78                	add    $0x78,%al
    30cd:	04 76                	add    $0x76,%al
    30cf:	04 79                	add    $0x79,%al
    30d1:	04 74                	add    $0x74,%al
    30d3:	04 75                	add    $0x75,%al
    30d5:	04 77                	add    $0x77,%al
    30d7:	04 98                	add    $0x98,%al
    30d9:	04 9a                	add    $0x9a,%al
    30db:	04 97                	add    $0x97,%al
    30dd:	04 9b                	add    $0x9b,%al
    30df:	04 99                	add    $0x99,%al
    30e1:	04 05                	add    $0x5,%al
    30e3:	05 95 04 96 04       	add    $0x4960495,%eax
    30e8:	9d                   	popf   
    30e9:	04 9c                	add    $0x9c,%al
    30eb:	04 82                	add    $0x82,%al
    30ed:	04 83                	add    $0x83,%al
    30ef:	04 85                	add    $0x85,%al
    30f1:	04 88                	add    $0x88,%al
    30f3:	04 86                	add    $0x86,%al
    30f5:	04 87                	add    $0x87,%al
    30f7:	04 84                	add    $0x84,%al
    30f9:	04 a0                	add    $0xa0,%al
    30fb:	04 9e                	add    $0x9e,%al
    30fd:	04 9f                	add    $0x9f,%al
    30ff:	04 7f                	add    $0x7f,%al
    3101:	04 80                	add    $0x80,%al
    3103:	04 7e                	add    $0x7e,%al
    3105:	04 f8                	add    $0xf8,%al
    3107:	04 6a                	add    $0x6a,%al
    3109:	04 7d                	add    $0x7d,%al
    310b:	04 a8                	add    $0xa8,%al
    310d:	04 a7                	add    $0xa7,%al
    310f:	04 a6                	add    $0xa6,%al
    3111:	04 a9                	add    $0xa9,%al
    3113:	04 f6                	add    $0xf6,%al
    3115:	04 04                	add    $0x4,%al
    3117:	05 7a 04 94 04       	add    $0x494047a,%eax
    311c:	93                   	xchg   %eax,%ebx
    311d:	04 a2                	add    $0xa2,%al
    311f:	04 a4                	add    $0xa4,%al
    3121:	04 a3                	add    $0xa3,%al
    3123:	04 81                	add    $0x81,%al
    3125:	04 ad                	add    $0xad,%al
    3127:	04 8e                	add    $0x8e,%al
    3129:	04 8f                	add    $0x8f,%al
    312b:	04 92                	add    $0x92,%al
    312d:	04 8d                	add    $0x8d,%al
    312f:	04 8c                	add    $0x8c,%al
    3131:	04 8b                	add    $0x8b,%al
    3133:	04 8a                	add    $0x8a,%al
    3135:	04 91                	add    $0x91,%al
    3137:	04 89                	add    $0x89,%al
    3139:	04 90                	add    $0x90,%al
    313b:	04 4c                	add    $0x4c,%al
    313d:	01 7d 01             	add    %edi,0x1(%rbp)
    3140:	7c 01                	jl     0x3143
    3142:	0a 01                	or     (%rcx),%al
    3144:	09 01                	or     %eax,(%rcx)
    3146:	18 01                	sbb    %al,(%rcx)
    3148:	9c                   	pushf  
    3149:	01 19                	add    %ebx,(%rcx)
    314b:	01 07                	add    %eax,(%rdi)
    314d:	01 9b 01 1a 01 16    	add    %ebx,0x16011a01(%rbx)
    3153:	01 0b                	add    %ecx,(%rbx)
    3155:	01 0e                	add    %ecx,(%rsi)
    3157:	01 15 01 0f 01 11    	add    %edx,0x11010f01(%rip)        # 0x1101405e
    315d:	01 12                	add    %edx,(%rdx)
    315f:	01 10                	add    %edx,(%rax)
    3161:	01 14 01             	add    %edx,(%rcx,%rax,1)
    3164:	13 01                	adc    (%rcx),%eax
    3166:	06                   	(bad)  
    3167:	01 4d 01             	add    %ecx,0x1(%rbp)
    316a:	08 01                	or     %al,(%rcx)
    316c:	17                   	(bad)  
    316d:	01 51 09             	add    %edx,0x9(%rcx)
    3170:	04 09                	add    $0x9,%al
    3172:	00 09                	add    %cl,(%rcx)
    3174:	03 09                	add    (%rcx),%ecx
    3176:	01 09                	add    %ecx,(%rcx)
    3178:	02 09                	add    (%rcx),%cl
    317a:	fa                   	cli    
    317b:	08 ff                	or     %bh,%bh
    317d:	08 10                	or     %dl,(%rax)
    317f:	09 fb                	or     %edi,%ebx
    3181:	08 fc                	or     %bh,%ah
    3183:	08 fd                	or     %bh,%ch
    3185:	08 f6                	or     %dh,%dh
    3187:	08 f7                	or     %dh,%bh
    3189:	08 2e                	or     %ch,(%rsi)
    318b:	09 f9                	or     %edi,%ecx
    318d:	08 f8                	or     %bh,%al
    318f:	08 0b                	or     %cl,(%rbx)
    3191:	09 0a                	or     %ecx,(%rdx)
    3193:	09 12                	or     %edx,(%rdx)
    3195:	09 14 09             	or     %edx,(%rcx,%rcx,1)
    3198:	15 09 fe 08 c5       	adc    $0xc508fe09,%eax
    319d:	04 c6                	add    $0xc6,%al
    319f:	04 c7                	add    $0xc7,%al
    31a1:	04 c9                	add    $0xc9,%al
    31a3:	04 cc                	add    $0xcc,%al
    31a5:	04 c8                	add    $0xc8,%al
    31a7:	04 cb                	add    $0xcb,%al
    31a9:	04 ca                	add    $0xca,%al
    31ab:	04 c0                	add    $0xc0,%al
    31ad:	04 bf                	add    $0xbf,%al
    31af:	04 cd                	add    $0xcd,%al
    31b1:	04 d7                	add    $0xd7,%al
    31b3:	04 d9                	add    $0xd9,%al
    31b5:	04 d8                	add    $0xd8,%al
    31b7:	04 da                	add    $0xda,%al
    31b9:	04 e0                	add    $0xe0,%al
    31bb:	04 de                	add    $0xde,%al
    31bd:	04 df                	add    $0xdf,%al
    31bf:	04 db                	add    $0xdb,%al
    31c1:	04 dc                	add    $0xdc,%al
    31c3:	04 dd                	add    $0xdd,%al
    31c5:	04 e1                	add    $0xe1,%al
    31c7:	04 e2                	add    $0xe2,%al
    31c9:	04 b9                	add    $0xb9,%al
    31cb:	04 b8                	add    $0xb8,%al
    31cd:	04 e3                	add    $0xe3,%al
    31cf:	04 bb                	add    $0xbb,%al
    31d1:	04 bc                	add    $0xbc,%al
    31d3:	04 be                	add    $0xbe,%al
    31d5:	04 ba                	add    $0xba,%al
    31d7:	04 bd                	add    $0xbd,%al
    31d9:	04 cf                	add    $0xcf,%al
    31db:	04 d3                	add    $0xd3,%al
    31dd:	04 d2                	add    $0xd2,%al
    31df:	04 d4                	add    $0xd4,%al
    31e1:	04 d6                	add    $0xd6,%al
    31e3:	04 ce                	add    $0xce,%al
    31e5:	04 d5                	add    $0xd5,%al
    31e7:	04 d1                	add    $0xd1,%al
    31e9:	04 d0                	add    $0xd0,%al
    31eb:	04 b5                	add    $0xb5,%al
    31ed:	04 ae                	add    $0xae,%al
    31ef:	04 39                	add    $0x39,%al
    31f1:	01 52 0d             	add    %edx,0xd(%rdx)
    31f4:	54                   	push   %rsp
    31f5:	0d 49 01 a2 01       	or     $0x1a20149,%eax
    31fa:	51                   	push   %rcx
    31fb:	01 3a                	add    %edi,(%rdx)
    31fd:	01 47 01             	add    %eax,0x1(%rdi)
    3200:	48 01 41 01          	add    %rax,0x1(%rcx)
    3204:	40 01 46 01          	rex add %eax,0x1(%rsi)
    3208:	45 01 3e             	add    %r15d,(%r14)
    320b:	01 3b                	add    %edi,(%rbx)
    320d:	01 3c 01             	add    %edi,(%rcx,%rax,1)
    3210:	3f                   	(bad)  
    3211:	01 3d 01 42 01 43    	add    %edi,0x43014201(%rip)        # 0x43017418
    3217:	01 44 01 38          	add    %eax,0x38(%rcx,%rax,1)
    321b:	01 20                	add    %esp,(%rax)
    321d:	01 21                	add    %esp,(%rcx)
    321f:	01 1f                	add    %ebx,(%rdi)
    3221:	01 37                	add    %esi,(%rdi)
    3223:	01 24 01             	add    %esp,(%rcx,%rax,1)
    3226:	25 01 50 01 4f       	and    $0x4f015001,%eax
    322b:	01 4e 01             	add    %ecx,0x1(%rsi)
    322e:	4a 01 4b 01          	rex.WX add %rcx,0x1(%rbx)
    3232:	1b 01                	sbb    (%rcx),%eax
    3234:	1e                   	(bad)  
    3235:	01 46 0d             	add    %eax,0xd(%rsi)
    3238:	05 01 04 01 1d       	add    $0x1d010401,%eax
    323d:	01 1c 01             	add    %ebx,(%rcx,%rax,1)
    3240:	1f                   	(bad)  
    3241:	09 1d 09 24 09 20    	or     %ebx,0x20092409(%rip)        # 0x20095650
    3247:	09 23                	or     %esp,(%rbx)
    3249:	09 4f 09             	or     %ecx,0x9(%rdi)
    324c:	21 09                	and    %ecx,(%rcx)
    324e:	22 09                	and    (%rcx),%cl
    3250:	1e                   	(bad)  
    3251:	09 06                	or     %eax,(%rsi)
    3253:	09 16                	or     %edx,(%rsi)
    3255:	09 a4 03 99 03 9c 03 	or     %esp,0x39c0399(%rbx,%rax,1)
    325c:	a8 03                	test   $0x3,%al
    325e:	9e                   	sahf   
    325f:	03 9d 03 a0 03 a1    	add    -0x5efc5ffd(%rbp),%ebx
    3265:	03 9f 03 a3 03 a2    	add    -0x5dfc5cfd(%rdi),%ebx
    326b:	03 85 03 ba 03 82    	add    -0x7dfc45fd(%rbp),%eax
    3271:	03 80 03 a6 03 81    	add    -0x7efc59fd(%rax),%eax
    3277:	03 7f 03             	add    0x3(%rdi),%edi
    327a:	7e 03                	jle    0x327f
    327c:	71 03                	jno    0x3281
    327e:	7d 03                	jge    0x3283
    3280:	76 03                	jbe    0x3285
    3282:	75 03                	jne    0x3287
    3284:	19 09                	sbb    %ecx,(%rcx)
    3286:	7a 03                	jp     0x328b
    3288:	7c 03                	jl     0x328d
    328a:	7b 03                	jnp    0x328f
    328c:	79 03                	jns    0x3291
    328e:	78 03                	js     0x3293
    3290:	1a 09                	sbb    (%rcx),%cl
    3292:	bc 03 bb 03 a7       	mov    $0xa703bb03,%esp
    3297:	03 8c 03 1b 09 8d 03 	add    0x38d091b(%rbx,%rax,1),%ecx
    329e:	95                   	xchg   %eax,%ebp
    329f:	03 92 03 96 03 91    	add    -0x6efc69fd(%rdx),%edx
    32a5:	03 1c 09             	add    (%rcx,%rcx,1),%ebx
    32a8:	97                   	xchg   %eax,%edi
    32a9:	03 98 03 9a 03 a5    	add    -0x5afc65fd(%rax),%ebx
    32af:	03 9b 03 94 03 93    	add    -0x6cfc6bfd(%rbx),%ebx
    32b5:	03 48 0d             	add    0xd(%rax),%ecx
    32b8:	73 03                	jae    0x32bd
    32ba:	74 03                	je     0x32bf
    32bc:	72 03                	jb     0x32c1
    32be:	86 03                	xchg   %al,(%rbx)
    32c0:	84 03                	test   %al,(%rbx)
    32c2:	77 03                	ja     0x32c7
    32c4:	8f 03                	pop    (%rbx)
    32c6:	90                   	nop
    32c7:	03 87 03 8b 03 88    	add    -0x77fc74fd(%rdi),%eax
    32cd:	03 8e 03 8a 03 83    	add    -0x7cfc75fd(%rsi),%ecx
    32d3:	03 89 03 b2 03 b6    	add    -0x49fc4dfd(%rcx),%ecx
    32d9:	03 b9 03 b7 03 b3    	add    -0x4cfc48fd(%rcx),%edi
    32df:	03 b5 03 b4 03 b0    	add    -0x4ffc4bfd(%rbp),%esi
    32e5:	03 b8 03 d4 03 d5    	add    -0x2afc2bfd(%rax),%edi
    32eb:	03 db                	add    %ebx,%ebx
    32ed:	03 dd                	add    %ebp,%ebx
    32ef:	03 dc                	add    %esp,%ebx
    32f1:	03 d7                	add    %edi,%edx
    32f3:	03 d8                	add    %eax,%ebx
    32f5:	03 d6                	add    %esi,%edx
    32f7:	03 da                	add    %edx,%ebx
    32f9:	03 d9                	add    %ecx,%ebx
    32fb:	03 c8                	add    %eax,%ecx
    32fd:	03 ca                	add    %edx,%ecx
    32ff:	03 cf                	add    %edi,%ecx
    3301:	03 cb                	add    %ebx,%ecx
    3303:	03 ce                	add    %esi,%ecx
    3305:	03 cd                	add    %ebp,%ecx
    3307:	03 cc                	add    %esp,%ecx
    3309:	03 c9                	add    %ecx,%ecx
    330b:	03 d0                	add    %eax,%edx
    330d:	03 d2                	add    %edx,%edx
    330f:	03 de                	add    %esi,%ebx
    3311:	03 bd 03 ac 03 af    	add    -0x50fc53fd(%rbp),%edi
    3317:	03 be 03 ad 03 bf    	add    -0x40fc52fd(%rsi),%edi
    331d:	03 d3                	add    %ebx,%edx
    331f:	03 ab 03 aa 03 c0    	add    -0x3ffc55fd(%rbx),%ebp
    3325:	03 02                	add    (%rdx),%eax
    3327:	05 d1 03 ae 03       	add    $0x3ae03d1,%eax
    332c:	c3                   	ret    
    332d:	03 c1                	add    %ecx,%eax
    332f:	03 c4                	add    %esp,%eax
    3331:	03 c2                	add    %edx,%eax
    3333:	03 c6                	add    %esi,%eax
    3335:	03 c5                	add    %ebp,%eax
    3337:	03 a9 03 03 05 b1    	add    -0x4efafcfd(%rcx),%ebp
    333d:	03 9d 01 a1 01 7e    	add    0x7e01a101(%rbp),%ebx
    3343:	01 8c 01 8b 01 8a 01 	add    %ecx,0x18a018b(%rcx,%rax,1)
    334a:	92                   	xchg   %eax,%edx
    334b:	01 8f 01 90 01 91    	add    %ecx,-0x6efe6fff(%rdi)
    3351:	01 93 01 99 01 98    	add    %edx,-0x67fe66ff(%rbx)
    3357:	01 9a 01 80 01 60    	add    %ebx,0x60018001(%rdx)
    335d:	01 5f 01             	add    %ebx,0x1(%rdi)
    3360:	54                   	push   %rsp
    3361:	01 53 01             	add    %edx,0x1(%rbx)
    3364:	5c                   	pop    %rsp
    3365:	01 58 01             	add    %ebx,0x1(%rax)
    3368:	5a                   	pop    %rdx
    3369:	01 59 01             	add    %ebx,0x1(%rcx)
    336c:	5b                   	pop    %rbx
    336d:	01 52 01             	add    %edx,0x1(%rdx)
    3370:	55                   	push   %rbp
    3371:	01 56 01             	add    %edx,0x1(%rsi)
    3374:	57                   	push   %rdi
    3375:	01 6e 01             	add    %ebp,0x1(%rsi)
    3378:	84 01                	test   %al,(%rcx)
    337a:	83 01 7f             	addl   $0x7f,(%rcx)
    337d:	01 5e 01             	add    %ebx,0x1(%rsi)
    3380:	8e 01                	mov    (%rcx),%es
    3382:	8d 01                	lea    (%rcx),%eax
    3384:	9f                   	lahf   
    3385:	01 63 01             	add    %esp,0x1(%rbx)
    3388:	62 01 94 01 9e       	(bad)
    338d:	01 66 01             	add    %esp,0x1(%rsi)
    3390:	65 01 6b 01          	add    %ebp,%gs:0x1(%rbx)
    3394:	6a 01                	push   $0x1
    3396:	6c                   	insb   (%dx),%es:(%rdi)
    3397:	01 67 01             	add    %esp,0x1(%rdi)
    339a:	69 01 6d 01 68 01    	imul   $0x168016d,(%rcx),%eax
    33a0:	87 01                	xchg   %eax,(%rcx)
    33a2:	86 01                	xchg   %al,(%rcx)
    33a4:	85 01                	test   %eax,(%rcx)
    33a6:	89 01                	mov    %eax,(%rcx)
    33a8:	81 01 5d 01 61 01    	addl   $0x161015d,(%rcx)
    33ae:	88 01                	mov    %al,(%rcx)
    33b0:	82                   	(bad)  
    33b1:	01 97 01 64 01 95    	add    %edx,-0x6afe9bff(%rdi)
    33b7:	01 96 01 18 09 47    	add    %edx,0x47091801(%rsi)
    33bd:	09 3f                	or     %edi,(%rdi)
    33bf:	09 40 09             	or     %eax,0x9(%rax)
    33c2:	4d 09 2f             	or     %r13,(%r15)
    33c5:	09 25 09 35 09 33    	or     %esp,0x33093509(%rip)        # 0x330968d4
    33cb:	09 3c 09             	or     %edi,(%rcx,%rcx,1)
    33ce:	3e 09 3d 09 42 09 41 	ds or  %edi,0x41094209(%rip)        # 0x410975de
    33d5:	09 45 09             	or     %eax,0x9(%rbp)
    33d8:	46 09 43 09          	rex.RX or %r8d,0x9(%rbx)
    33dc:	44 09 4e 09          	or     %r9d,0x9(%rsi)
    33e0:	50                   	push   %rax
    33e1:	09 31                	or     %esi,(%rcx)
    33e3:	09 30                	or     %esi,(%rax)
    33e5:	09 36                	or     %esi,(%rsi)
    33e7:	09 38                	or     %edi,(%rax)
    33e9:	09 26                	or     %esp,(%rsi)
    33eb:	09 34 09             	or     %esi,(%rcx,%rcx,1)
    33ee:	32 09                	xor    (%rcx),%cl
    33f0:	39 09                	cmp    %ecx,(%rcx)
    33f2:	3a 09                	cmp    (%rcx),%cl
    33f4:	3b 09                	cmp    (%rcx),%ecx
    33f6:	37                   	(bad)  
    33f7:	09 48 09             	or     %ecx,0x9(%rax)
    33fa:	4c 09 4b 09          	or     %r9,0x9(%rbx)
    33fe:	49 09 4a 09          	or     %rcx,0x9(%r10)
    3402:	2d 09 a5 04 71       	sub    $0x7104a509,%eax
    3407:	04 7c                	add    $0x7c,%al
    3409:	04 af                	add    $0xaf,%al
    340b:	04 b0                	add    $0xb0,%al
    340d:	04 ab                	add    $0xab,%al
    340f:	04 aa                	add    $0xaa,%al
    3411:	04 8b                	add    $0x8b,%al
    3413:	09 b2 04 ac 04 b3    	or     %esi,-0x4cfb53fc(%rdx)
    3419:	04 40                	add    $0x40,%al
    341b:	0d 31 01 35 01       	or     $0x1350131,%eax
    3420:	34 01                	xor    $0x1,%al
    3422:	32 01                	xor    (%rcx),%al
    3424:	33 01                	xor    (%rcx),%eax
    3426:	36 01 28             	ss add %ebp,(%rax)
    3429:	01 29                	add    %ebp,(%rcx)
    342b:	01 2a                	add    %ebp,(%rdx)
    342d:	01 4b 0d             	add    %ecx,0xd(%rbx)
    3430:	22 01                	and    (%rcx),%al
    3432:	2c 01                	sub    $0x1,%al
    3434:	26 01 27             	es add %esp,(%rdi)
    3437:	01 2d 01 30 01 23    	add    %ebp,0x23013001(%rip)        # 0x2301643e
    343d:	01 4a 0d             	add    %ecx,0xd(%rdx)
    3440:	2b 01                	sub    (%rcx),%eax
    3442:	2e 01 2f             	cs add %ebp,(%rdi)
    3445:	01 05 09 0c 09 f5    	add    %eax,-0xaf6f3f7(%rip)        # 0xfffffffff5094054
    344b:	08 09                	or     %cl,(%rcx)
    344d:	09 17                	or     %edx,(%rdi)
    344f:	09 07                	or     %eax,(%rdi)
    3451:	09 0e                	or     %ecx,(%rsi)
    3453:	09 11                	or     %edx,(%rcx)
    3455:	09 0f                	or     %ecx,(%rdi)
    3457:	09 13                	or     %edx,(%rbx)
    3459:	09 0d 09 08 09 e4    	or     %ecx,-0x1bf6f7f7(%rip)        # 0xffffffffe4093c68
    345f:	04 e7                	add    $0xe7,%al
    3461:	04 e6                	add    $0xe6,%al
    3463:	04 e5                	add    $0xe5,%al
    3465:	04 e8                	add    $0xe8,%al
    3467:	04 e9                	add    $0xe9,%al
    3469:	04 01                	add    $0x1,%al
    346b:	05 fa 04 73 0d       	add    $0xd7304fa,%eax
    3470:	f9                   	stc    
    3471:	04 f0                	add    $0xf0,%al
    3473:	04 f4                	add    $0xf4,%al
    3475:	04 f2                	add    $0xf2,%al
    3477:	04 f3                	add    $0xf3,%al
    3479:	04 f5                	add    $0xf5,%al
    347b:	04 f1                	add    $0xf1,%al
    347d:	04 fe                	add    $0xfe,%al
    347f:	04 ed                	add    $0xed,%al
    3481:	04 eb                	add    $0xeb,%al
    3483:	04 ec                	add    $0xec,%al
    3485:	04 ef                	add    $0xef,%al
    3487:	04 ee                	add    $0xee,%al
    3489:	04 ff                	add    $0xff,%al
    348b:	04 fb                	add    $0xfb,%al
    348d:	04 74                	add    $0x74,%al
    348f:	0d 75 0d 79 0d       	or     $0xd790d75,%eax
    3494:	7a 0d                	jp     0x34a3
    3496:	76 0d                	jbe    0x34a5
    3498:	77 0d                	ja     0x34a7
    349a:	78 0d                	js     0x34a9
    349c:	ea                   	(bad)  
    349d:	04 fd                	add    $0xfd,%al
    349f:	04 fc                	add    $0xfc,%al
    34a1:	04 7b                	add    $0x7b,%al
    34a3:	04 f7                	add    $0xf7,%al
    34a5:	04 7b                	add    $0x7b,%al
    34a7:	01 7a 01             	add    %edi,0x1(%rdx)
    34aa:	6f                   	outsl  %ds:(%rsi),(%dx)
    34ab:	01 70 01             	add    %esi,0x1(%rax)
    34ae:	78 01                	js     0x34b1
    34b0:	77 01                	ja     0x34b3
    34b2:	a0 01 0c 01 72 01 75 	movabs 0x7101750172010c01,%al
    34b9:	01 71 
    34bb:	01 73 01             	add    %esi,0x1(%rbx)
    34be:	74 01                	je     0x34c1
    34c0:	0d 01 79 01 76       	or     $0x76017901,%eax
    34c5:	01 27                	add    %esp,(%rdi)
    34c7:	09 2a                	or     %ebp,(%rdx)
    34c9:	09 2c 09             	or     %ebp,(%rcx,%rcx,1)
    34cc:	2b 09                	sub    (%rcx),%ecx
    34ce:	28 09                	sub    %cl,(%rcx)
    34d0:	29 09                	sub    %ecx,(%rcx)
    34d2:	2c 08                	sub    $0x8,%al
    34d4:	2e 08 83 07 2f 08 2d 	cs or  %al,0x2d082f07(%rbx)
    34db:	08 31                	or     %dh,(%rcx)
    34dd:	08 30                	or     %dh,(%rax)
    34df:	08 b7 07 33 07 32    	or     %dh,0x32073307(%rdi)
    34e5:	07                   	(bad)  
    34e6:	36 07                	ss (bad) 
    34e8:	37                   	(bad)  
    34e9:	07                   	(bad)  
    34ea:	34 07                	xor    $0x7,%al
    34ec:	38 07                	cmp    %al,(%rdi)
    34ee:	4d 07                	rex.WRB (bad) 
    34f0:	45 07                	rex.RB (bad) 
    34f2:	44 07                	rex.R (bad) 
    34f4:	4f 07                	rex.WRXB (bad) 
    34f6:	42 07                	rex.X (bad) 
    34f8:	48 07                	rex.W (bad) 
    34fa:	49 07                	rex.WB (bad) 
    34fc:	41 07                	rex.B (bad) 
    34fe:	59                   	pop    %rcx
    34ff:	07                   	(bad)  
    3500:	4e 07                	rex.WRX (bad) 
    3502:	58                   	pop    %rax
    3503:	07                   	(bad)  
    3504:	5b                   	pop    %rbx
    3505:	07                   	(bad)  
    3506:	5a                   	pop    %rdx
    3507:	07                   	(bad)  
    3508:	40 07                	rex (bad) 
    350a:	43 07                	rex.XB (bad) 
    350c:	4c 07                	rex.WR (bad) 
    350e:	4a 07                	rex.WX (bad) 
    3510:	39 07                	cmp    %eax,(%rdi)
    3512:	3a 07                	cmp    (%rdi),%al
    3514:	46 07                	rex.RX (bad) 
    3516:	47 07                	rex.RXB (bad) 
    3518:	3d 07 3b 07 3e       	cmp    $0x3e073b07,%eax
    351d:	07                   	(bad)  
    351e:	3f                   	(bad)  
    351f:	07                   	(bad)  
    3520:	4b 07                	rex.WXB (bad) 
    3522:	3c 07                	cmp    $0x7,%al
    3524:	52                   	push   %rdx
    3525:	07                   	(bad)  
    3526:	54                   	push   %rsp
    3527:	07                   	(bad)  
    3528:	53                   	push   %rbx
    3529:	07                   	(bad)  
    352a:	55                   	push   %rbp
    352b:	07                   	(bad)  
    352c:	51                   	push   %rcx
    352d:	07                   	(bad)  
    352e:	50                   	push   %rax
    352f:	07                   	(bad)  
    3530:	57                   	push   %rdi
    3531:	07                   	(bad)  
    3532:	56                   	push   %rsi
    3533:	07                   	(bad)  
    3534:	35 07 2a 08 d4       	xor    $0xd4082a07,%eax
    3539:	06                   	(bad)  
    353a:	2b 08                	sub    (%rax),%ecx
    353c:	cc                   	int3   
    353d:	07                   	(bad)  
    353e:	cb                   	lret   
    353f:	07                   	(bad)  
    3540:	0a 08                	or     (%rax),%cl
    3542:	07                   	(bad)  
    3543:	08 08                	or     %cl,(%rax)
    3545:	08 09                	or     %cl,(%rcx)
    3547:	08 e2                	or     %ah,%dl
    3549:	06                   	(bad)  
    354a:	db 06                	fildl  (%rsi)
    354c:	26 07                	es (bad) 
    354e:	df 06                	filds  (%rsi)
    3550:	de 06                	fiadds (%rsi)
    3552:	dc 06                	faddl  (%rsi)
    3554:	dd 06                	fldl   (%rsi)
    3556:	d1 06                	roll   (%rsi)
    3558:	d2 06                	rolb   %cl,(%rsi)
    355a:	e1 06                	loope  0x3562
    355c:	e0 06                	loopne 0x3564
    355e:	12 07                	adc    (%rdi),%al
    3560:	11 07                	adc    %eax,(%rdi)
    3562:	05 08 d8 06 d0       	add    $0xd006d808,%eax
    3567:	06                   	(bad)  
    3568:	cd 06                	int    $0x6
    356a:	cc                   	int3   
    356b:	06                   	(bad)  
    356c:	ce                   	(bad)  
    356d:	06                   	(bad)  
    356e:	cf                   	iret   
    356f:	06                   	(bad)  
    3570:	d9 06                	flds   (%rsi)
    3572:	15 07 13 07 14       	adc    $0x14071307,%eax
    3577:	07                   	(bad)  
    3578:	16                   	(bad)  
    3579:	07                   	(bad)  
    357a:	c4                   	(bad)  
    357b:	06                   	(bad)  
    357c:	c5 06 1e             	(bad)
    357f:	07                   	(bad)  
    3580:	1f                   	(bad)  
    3581:	07                   	(bad)  
    3582:	c7 06 1d 07 c6 06    	movl   $0x6c6071d,(%rsi)
    3588:	c8 06 c9 06          	enter  $0xc906,$0x6
    358c:	24 07                	and    $0x7,%al
    358e:	23 07                	and    (%rdi),%eax
    3590:	25 07 c3 06 f3       	and    $0xf306c307,%eax
    3595:	06                   	(bad)  
    3596:	ca 06 20             	lret   $0x2006
    3599:	07                   	(bad)  
    359a:	21 07                	and    %eax,(%rdi)
    359c:	1c 07                	sbb    $0x7,%al
    359e:	1b 07                	sbb    (%rdi),%eax
    35a0:	19 07                	sbb    %eax,(%rdi)
    35a2:	17                   	(bad)  
    35a3:	07                   	(bad)  
    35a4:	1a 07                	sbb    (%rdi),%al
    35a6:	18 07                	sbb    %al,(%rdi)
    35a8:	cb                   	lret   
    35a9:	06                   	(bad)  
    35aa:	f0 06                	lock (bad) 
    35ac:	ef                   	out    %eax,(%dx)
    35ad:	06                   	(bad)  
    35ae:	f1                   	int1   
    35af:	06                   	(bad)  
    35b0:	c2 06 d3             	ret    $0xd306
    35b3:	06                   	(bad)  
    35b4:	e7 06                	out    %eax,$0x6
    35b6:	f1                   	int1   
    35b7:	07                   	(bad)  
    35b8:	27                   	(bad)  
    35b9:	07                   	(bad)  
    35ba:	29 07                	sub    %eax,(%rdi)
    35bc:	28 07                	sub    %al,(%rdi)
    35be:	f9                   	stc    
    35bf:	06                   	(bad)  
    35c0:	fa                   	cli    
    35c1:	06                   	(bad)  
    35c2:	fd                   	std    
    35c3:	06                   	(bad)  
    35c4:	05 07 08 07 0b       	add    $0xb070807,%eax
    35c9:	07                   	(bad)  
    35ca:	06                   	(bad)  
    35cb:	07                   	(bad)  
    35cc:	09 07                	or     %eax,(%rdi)
    35ce:	07                   	(bad)  
    35cf:	07                   	(bad)  
    35d0:	0a 07                	or     (%rdi),%al
    35d2:	f7 06 f6 06 0c 07    	testl  $0x70c06f6,(%rsi)
    35d8:	e3 06                	jrcxz  0x35e0
    35da:	e6 06                	out    %al,$0x6
    35dc:	e4 06                	in     $0x6,%al
    35de:	e5 06                	in     $0x6,%eax
    35e0:	24 08                	and    $0x8,%al
    35e2:	ff 06                	incl   (%rsi)
    35e4:	03 07                	add    (%rdi),%eax
    35e6:	02 07                	add    (%rdi),%al
    35e8:	01 07                	add    %eax,(%rdi)
    35ea:	04 07                	add    $0x7,%al
    35ec:	00 07                	add    %al,(%rdi)
    35ee:	fc                   	cld    
    35ef:	06                   	(bad)  
    35f0:	ea                   	(bad)  
    35f1:	06                   	(bad)  
    35f2:	f2 06                	repnz (bad) 
    35f4:	eb 06                	jmp    0x35fc
    35f6:	ec                   	in     (%dx),%al
    35f7:	06                   	(bad)  
    35f8:	e9 06 ed 06 ee       	jmp    0xffffffffee072303
    35fd:	06                   	(bad)  
    35fe:	e8 06 10 07 fb       	call   0xfffffffffb074609
    3603:	06                   	(bad)  
    3604:	f8                   	clc    
    3605:	06                   	(bad)  
    3606:	fe 06                	incb   (%rsi)
    3608:	f4                   	hlt    
    3609:	06                   	(bad)  
    360a:	f5                   	cmc    
    360b:	06                   	(bad)  
    360c:	0d 07 0e 07 0f       	or     $0xf070e07,%eax
    3611:	07                   	(bad)  
    3612:	ad                   	lods   %ds:(%rsi),%eax
    3613:	07                   	(bad)  
    3614:	b6 07                	mov    $0x7,%dh
    3616:	e3 07                	jrcxz  0x361f
    3618:	d3 07                	roll   %cl,(%rdi)
    361a:	d4                   	(bad)  
    361b:	07                   	(bad)  
    361c:	af                   	scas   %es:(%rdi),%eax
    361d:	07                   	(bad)  
    361e:	d5                   	(bad)  
    361f:	07                   	(bad)  
    3620:	da 07                	fiaddl (%rdi)
    3622:	19 08                	sbb    %ecx,(%rax)
    3624:	18 08                	sbb    %cl,(%rax)
    3626:	1d 08 17 08 1b       	sbb    $0x1b081708,%eax
    362b:	08 16                	or     %dl,(%rsi)
    362d:	08 1a                	or     %bl,(%rdx)
    362f:	08 1c 08             	or     %bl,(%rax,%rcx,1)
    3632:	34 08                	xor    $0x8,%al
    3634:	33 08                	xor    (%rax),%ecx
    3636:	d7                   	xlat   %ds:(%rbx)
    3637:	07                   	(bad)  
    3638:	d8 07                	fadds  (%rdi)
    363a:	d6                   	(bad)  
    363b:	07                   	(bad)  
    363c:	d9 07                	flds   (%rdi)
    363e:	db 07                	fildl  (%rdi)
    3640:	c0 07 c2             	rolb   $0xc2,(%rdi)
    3643:	07                   	(bad)  
    3644:	be 07 bf 07 c4       	mov    $0xc407bf07,%esi
    3649:	07                   	(bad)  
    364a:	bb 07 ba 07 bc       	mov    $0xbc07ba07,%ebx
    364f:	07                   	(bad)  
    3650:	c1 07 bd             	roll   $0xbd,(%rdi)
    3653:	07                   	(bad)  
    3654:	c3                   	ret    
    3655:	07                   	(bad)  
    3656:	b0 07                	mov    $0x7,%al
    3658:	b5 07                	mov    $0x7,%ch
    365a:	b3 07                	mov    $0x7,%bl
    365c:	b2 07                	mov    $0x7,%dl
    365e:	df 07                	filds  (%rdi)
    3660:	e0 07                	loopne 0x3669
    3662:	e1 07                	loope  0x366b
    3664:	e2 07                	loop   0x366d
    3666:	b1 07                	mov    $0x7,%cl
    3668:	dd 07                	fldl   (%rdi)
    366a:	dc 07                	faddl  (%rdi)
    366c:	de 07                	fiadds (%rdi)
    366e:	b4 07                	mov    $0x7,%ah
    3670:	ca 07 cd             	lret   $0xcd07
    3673:	07                   	(bad)  
    3674:	b8 07 b9 07 e5       	mov    $0xe507b907,%eax
    3679:	07                   	(bad)  
    367a:	e6 07                	out    %al,$0x7
    367c:	e4 07                	in     $0x7,%al
    367e:	e8 07 e7 07 22       	call   0x22081d8a
    3683:	08 25 08 26 08 27    	or     %ah,0x27082608(%rip)        # 0x27085c91
    3689:	08 28                	or     %ch,(%rax)
    368b:	08 29                	or     %ch,(%rcx)
    368d:	08 d1                	or     %dl,%cl
    368f:	07                   	(bad)  
    3690:	d2 07                	rolb   %cl,(%rdi)
    3692:	cf                   	iret   
    3693:	07                   	(bad)  
    3694:	d0 07                	rolb   (%rdi)
    3696:	ce                   	(bad)  
    3697:	07                   	(bad)  
    3698:	32 08                	xor    (%rax),%cl
    369a:	c9                   	leave  
    369b:	07                   	(bad)  
    369c:	c6 07 c5             	movb   $0xc5,(%rdi)
    369f:	07                   	(bad)  
    36a0:	c7 07 c8 07 23 08    	movl   $0x82307c8,(%rdi)
    36a6:	1f                   	(bad)  
    36a7:	08 21                	or     %ah,(%rcx)
    36a9:	08 0b                	or     %cl,(%rbx)
    36ab:	08 f7                	or     %dh,%bh
    36ad:	07                   	(bad)  
    36ae:	1e                   	(bad)  
    36af:	08 03                	or     %al,(%rbx)
    36b1:	08 0c 08             	or     %cl,(%rax,%rcx,1)
    36b4:	20 08                	and    %cl,(%rax)
    36b6:	00 08                	add    %cl,(%rax)
    36b8:	0d 08 02 08 01       	or     $0x1080208,%eax
    36bd:	08 d6                	or     %dl,%dh
    36bf:	06                   	(bad)  
    36c0:	31 07                	xor    %eax,(%rdi)
    36c2:	2f                   	(bad)  
    36c3:	07                   	(bad)  
    36c4:	30 07                	xor    %al,(%rdi)
    36c6:	68 07 5d 07 64       	push   $0x64075d07
    36cb:	07                   	(bad)  
    36cc:	75 07                	jne    0x36d5
    36ce:	76 07                	jbe    0x36d7
    36d0:	69 07 6b 07 6a 07    	imul   $0x76a076b,(%rdi),%eax
    36d6:	6c                   	insb   (%dx),%es:(%rdi)
    36d7:	07                   	(bad)  
    36d8:	77 07                	ja     0x36e1
    36da:	61                   	(bad)  
    36db:	07                   	(bad)  
    36dc:	7a 07                	jp     0x36e5
    36de:	7c 07                	jl     0x36e7
    36e0:	7b 07                	jnp    0x36e9
    36e2:	7d 07                	jge    0x36eb
    36e4:	80 07 7e             	addb   $0x7e,(%rdi)
    36e7:	07                   	(bad)  
    36e8:	7f 07                	jg     0x36f1
    36ea:	81 07 63 07 62 07    	addl   $0x7620763,(%rdi)
    36f0:	74 07                	je     0x36f9
    36f2:	66 07                	data16 (bad) 
    36f4:	5e                   	pop    %rsi
    36f5:	07                   	(bad)  
    36f6:	82                   	(bad)  
    36f7:	07                   	(bad)  
    36f8:	65 07                	gs (bad) 
    36fa:	5f                   	pop    %rdi
    36fb:	07                   	(bad)  
    36fc:	67 07                	addr32 (bad) 
    36fe:	60                   	(bad)  
    36ff:	07                   	(bad)  
    3700:	6f                   	outsl  %ds:(%rsi),(%dx)
    3701:	07                   	(bad)  
    3702:	6e                   	outsb  %ds:(%rsi),(%dx)
    3703:	07                   	(bad)  
    3704:	6d                   	insl   (%dx),%es:(%rdi)
    3705:	07                   	(bad)  
    3706:	70 07                	jo     0x370f
    3708:	72 07                	jb     0x3711
    370a:	73 07                	jae    0x3713
    370c:	71 07                	jno    0x3715
    370e:	78 07                	js     0x3717
    3710:	79 07                	jns    0x3719
    3712:	2e 07                	cs (bad) 
    3714:	85 07                	test   %eax,(%rdi)
    3716:	5c                   	pop    %rsp
    3717:	07                   	(bad)  
    3718:	2d 07 84 07 d5       	sub    $0xd5078407,%eax
    371d:	06                   	(bad)  
    371e:	2c 07                	sub    $0x7,%al
    3720:	da 06                	fiaddl (%rsi)
    3722:	87 07                	xchg   %eax,(%rdi)
    3724:	86 07                	xchg   %al,(%rdi)
    3726:	9c                   	pushf  
    3727:	07                   	(bad)  
    3728:	9b                   	fwait
    3729:	07                   	(bad)  
    372a:	9d                   	popf   
    372b:	07                   	(bad)  
    372c:	8c 07                	mov    %es,(%rdi)
    372e:	9f                   	lahf   
    372f:	07                   	(bad)  
    3730:	8e 07                	mov    (%rdi),%es
    3732:	9e                   	sahf   
    3733:	07                   	(bad)  
    3734:	8d 07                	lea    (%rdi),%eax
    3736:	98                   	cwtl   
    3737:	07                   	(bad)  
    3738:	8f 07                	pop    (%rdi)
    373a:	8b 07                	mov    (%rdi),%eax
    373c:	88 07                	mov    %al,(%rdi)
    373e:	89 07                	mov    %eax,(%rdi)
    3740:	8a 07                	mov    (%rdi),%al
    3742:	94                   	xchg   %eax,%esp
    3743:	07                   	(bad)  
    3744:	93                   	xchg   %eax,%ebx
    3745:	07                   	(bad)  
    3746:	91                   	xchg   %eax,%ecx
    3747:	07                   	(bad)  
    3748:	92                   	xchg   %eax,%edx
    3749:	07                   	(bad)  
    374a:	97                   	xchg   %eax,%edi
    374b:	07                   	(bad)  
    374c:	95                   	xchg   %eax,%ebp
    374d:	07                   	(bad)  
    374e:	96                   	xchg   %eax,%esi
    374f:	07                   	(bad)  
    3750:	9a                   	(bad)  
    3751:	07                   	(bad)  
    3752:	99                   	cltd   
    3753:	07                   	(bad)  
    3754:	90                   	nop
    3755:	07                   	(bad)  
    3756:	2a 07                	sub    (%rdi),%al
    3758:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    3759:	07                   	(bad)  
    375a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    375b:	07                   	(bad)  
    375c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    375d:	07                   	(bad)  
    375e:	a8 07                	test   $0x7,%al
    3760:	a0 07 a3 07 ac 07 a1 	movabs 0xaa07a107ac07a307,%al
    3767:	07 aa 
    3769:	07                   	(bad)  
    376a:	ab                   	stos   %eax,%es:(%rdi)
    376b:	07                   	(bad)  
    376c:	a2 07 a4 07 2b 07 d7 	movabs %al,0xa906d7072b07a407
    3773:	06 a9 
    3775:	07                   	(bad)  
    3776:	eb 07                	jmp    0x377f
    3778:	ec                   	in     (%dx),%al
    3779:	07                   	(bad)  
    377a:	ed                   	in     (%dx),%eax
    377b:	07                   	(bad)  
    377c:	ee                   	out    %al,(%dx)
    377d:	07                   	(bad)  
    377e:	ef                   	out    %eax,(%dx)
    377f:	07                   	(bad)  
    3780:	0e                   	(bad)  
    3781:	08 0f                	or     %cl,(%rdi)
    3783:	08 11                	or     %dl,(%rcx)
    3785:	08 15 08 14 08 10    	or     %dl,0x10081408(%rip)        # 0x10084b93
    378b:	08 13                	or     %dl,(%rbx)
    378d:	08 12                	or     %dl,(%rdx)
    378f:	08 06                	or     %al,(%rsi)
    3791:	08 f6                	or     %dh,%dh
    3793:	07                   	(bad)  
    3794:	04 08                	add    $0x8,%al
    3796:	f0 07                	lock (bad) 
    3798:	f5                   	cmc    
    3799:	07                   	(bad)  
    379a:	ff 07                	incl   (%rdi)
    379c:	f8                   	clc    
    379d:	07                   	(bad)  
    379e:	f9                   	stc    
    379f:	07                   	(bad)  
    37a0:	fa                   	cli    
    37a1:	07                   	(bad)  
    37a2:	fd                   	std    
    37a3:	07                   	(bad)  
    37a4:	fc                   	cld    
    37a5:	07                   	(bad)  
    37a6:	fb                   	sti    
    37a7:	07                   	(bad)  
    37a8:	fe 07                	incb   (%rdi)
    37aa:	f4                   	hlt    
    37ab:	07                   	(bad)  
    37ac:	f3 07                	repz (bad) 
    37ae:	f2 07                	repnz (bad) 
    37b0:	ea                   	(bad)  
    37b1:	07                   	(bad)  
    37b2:	22 07                	and    (%rdi),%al
    37b4:	b1 0d                	mov    $0xd,%cl
    37b6:	b2 0d                	mov    $0xd,%dl
    37b8:	d2 0d b5 0d b7 0d    	rorb   %cl,0xdb70db5(%rip)        # 0xdb74573
    37be:	b6 0d                	mov    $0xd,%dh
    37c0:	d1 0d b9 0d b8 0d    	rorl   0xdb80db9(%rip)        # 0xdb8457f
    37c6:	be 0d ca 0d c3       	mov    $0xc30dca0d,%esi
    37cb:	0d bf 0d bd 0d       	or     $0xdbd0dbf,%eax
    37d0:	c6                   	(bad)  
    37d1:	0d c7 0d c9 0d       	or     $0xdc90dc7,%eax
    37d6:	c8 0d cb 0d          	enter  $0xcb0d,$0xd
    37da:	ba 0d c4 0d bb       	mov    $0xbb0dc40d,%edx
    37df:	0d bc 0d c0 0d       	or     $0xdc00dbc,%eax
    37e4:	c2 0d c1             	ret    $0xc10d
    37e7:	0d c5 0d ce 0d       	or     $0xdce0dc5,%eax
    37ec:	cf                   	iret   
    37ed:	0d cc 0d cd 0d       	or     $0xdcd0dcc,%eax
    37f2:	b4 0d                	mov    $0xd,%ah
    37f4:	d0 0d b3 0d db 0d    	rorb   0xddb0db3(%rip)        # 0xddb45ad
    37fa:	dc 0d df 0d e0 0d    	fmull  0xde00ddf(%rip)        # 0xde045df
    3800:	ea                   	(bad)  
    3801:	0d de 0d eb 0d       	or     $0xdeb0dde,%eax
    3806:	dd 0d e1 0d e5 0d    	fisttpll 0xde50de1(%rip)        # 0xde545ed
    380c:	e4 0d                	in     $0xd,%al
    380e:	e2 0d                	loop   0x381d
    3810:	e3 0d                	jrcxz  0x381f
    3812:	2d 0d 25 0d e7       	sub    $0xe70d250d,%eax
    3817:	0d da 0d 34 0d       	or     $0xd340dda,%eax
    381c:	e9 0d e8 0d 36       	jmp    0x360e202e
    3821:	0d 37 0d 38 0d       	or     $0xd380d37,%eax
    3826:	24 0d                	and    $0xd,%al
    3828:	e6 0d                	out    %al,$0xd
    382a:	ee                   	out    %al,(%dx)
    382b:	0d ec 0d ed 0d       	or     $0xded0dec,%eax
    3830:	d7                   	xlat   %ds:(%rbx)
    3831:	0d d5 0d d6 0d       	or     $0xdd60dd5,%eax
    3836:	d8 0d d9 0d d4 0d    	fmuls  0xdd40dd9(%rip)        # 0xdd44615
    383c:	bb 09 80 06 be       	mov    $0xbe068009,%ebx
    3841:	09 bf 09 a8 09 62    	or     %edi,0x6209a809(%rdi)
    3847:	09 75 06             	or     %esi,0x6(%rbp)
    384a:	af                   	scas   %es:(%rdi),%eax
    384b:	09 73 06             	or     %esi,0x6(%rbx)
    384e:	74 06                	je     0x3856
    3850:	b1 09                	mov    $0x9,%cl
    3852:	82                   	(bad)  
    3853:	06                   	(bad)  
    3854:	ae                   	scas   %es:(%rdi),%al
    3855:	09 b0 09 76 06 72    	or     %esi,0x72067609(%rax)
    385b:	06                   	(bad)  
    385c:	86 06                	xchg   %al,(%rsi)
    385e:	87 06                	xchg   %eax,(%rsi)
    3860:	78 06                	js     0x3868
    3862:	37                   	(bad)  
    3863:	06                   	(bad)  
    3864:	a1 09 a2 09 a4 09 a3 	movabs 0x4709a309a409a209,%eax
    386b:	09 47 
    386d:	06                   	(bad)  
    386e:	e5 09                	in     $0x9,%eax
    3870:	4c 06                	rex.WR (bad) 
    3872:	4d 06                	rex.WRB (bad) 
    3874:	2d 06 6e 09 b3       	sub    $0xb3096e06,%eax
    3879:	06                   	(bad)  
    387a:	f0 09 ef             	lock or %ebp,%edi
    387d:	09 2e                	or     %ebp,(%rsi)
    387f:	06                   	(bad)  
    3880:	60                   	(bad)  
    3881:	09 ee                	or     %ebp,%esi
    3883:	09 61 09             	or     %esp,0x9(%rcx)
    3886:	5e                   	pop    %rsi
    3887:	09 f8                	or     %edi,%eax
    3889:	09 46 06             	or     %eax,0x6(%rsi)
    388c:	45 06                	rex.RB (bad) 
    388e:	b5 06                	mov    $0x6,%ch
    3890:	b4 06                	mov    $0x6,%ah
    3892:	b6 06                	mov    $0x6,%dh
    3894:	b7 06                	mov    $0x6,%bh
    3896:	f7 09 42 06 5b 09    	testl  $0x95b0642,(%rcx)
    389c:	5c                   	pop    %rsp
    389d:	09 5f 09             	or     %ebx,0x9(%rdi)
    38a0:	ed                   	in     (%dx),%eax
    38a1:	09 33                	or     %esi,(%rbx)
    38a3:	06                   	(bad)  
    38a4:	af                   	scas   %es:(%rdi),%eax
    38a5:	06                   	(bad)  
    38a6:	b0 06                	mov    $0x6,%al
    38a8:	b1 06                	mov    $0x6,%cl
    38aa:	b2 06                	mov    $0x6,%dl
    38ac:	6d                   	insl   (%dx),%es:(%rdi)
    38ad:	09 2c 06             	or     %ebp,(%rsi,%rax,1)
    38b0:	6b 09 3a             	imul   $0x3a,(%rcx),%ecx
    38b3:	06                   	(bad)  
    38b4:	2b 06                	sub    (%rsi),%eax
    38b6:	39 06                	cmp    %eax,(%rsi)
    38b8:	43 06                	rex.XB (bad) 
    38ba:	3b 06                	cmp    (%rsi),%eax
    38bc:	3c 06                	cmp    $0x6,%al
    38be:	f4                   	hlt    
    38bf:	09 41 06             	or     %eax,0x6(%rcx)
    38c2:	3d 06 3f 06 3e       	cmp    $0x3e063f06,%eax
    38c7:	06                   	(bad)  
    38c8:	40 06                	rex (bad) 
    38ca:	f6 09 f5             	testb  $0xf5,(%rcx)
    38cd:	09 f2                	or     %esi,%edx
    38cf:	09 99 09 f3 09 6a    	or     %ebx,0x6a09f309(%rcx)
    38d5:	09 36                	or     %esi,(%rsi)
    38d7:	06                   	(bad)  
    38d8:	34 06                	xor    $0x6,%al
    38da:	35 06 a5 09 6e       	xor    $0x6e09a506,%eax
    38df:	06                   	(bad)  
    38e0:	75 09                	jne    0x38eb
    38e2:	74 09                	je     0x38ed
    38e4:	70 09                	jo     0x38ef
    38e6:	71 09                	jno    0x38f1
    38e8:	72 09                	jb     0x38f3
    38ea:	73 09                	jae    0x38f5
    38ec:	c0 09 c2             	rorb   $0xc2,(%rcx)
    38ef:	09 c3                	or     %eax,%ebx
    38f1:	09 ac 09 65 06 81 06 	or     %ebp,0x6810665(%rcx,%rcx,1)
    38f8:	71 06                	jno    0x3900
    38fa:	b5 09                	mov    $0x9,%ch
    38fc:	b6 09                	mov    $0x9,%dh
    38fe:	b4 09                	mov    $0x9,%ah
    3900:	b2 09                	mov    $0x9,%dl
    3902:	b8 09 b3 09 b7       	mov    $0xb709b309,%eax
    3907:	09 c1                	or     %eax,%ecx
    3909:	06                   	(bad)  
    390a:	9b                   	fwait
    390b:	09 bd 09 a7 09 aa    	or     %edi,-0x55f658f7(%rbp)
    3911:	09 a9 09 ab 09 83    	or     %ebp,-0x7cf654f7(%rcx)
    3917:	06                   	(bad)  
    3918:	84 06                	test   %al,(%rsi)
    391a:	85 06                	test   %eax,(%rsi)
    391c:	7f 06                	jg     0x3924
    391e:	70 06                	jo     0x3926
    3920:	6f                   	outsl  %ds:(%rsi),(%dx)
    3921:	06                   	(bad)  
    3922:	c4                   	(bad)  
    3923:	09 c1                	or     %eax,%ecx
    3925:	09 8d 09 c0 06 8e    	or     %ecx,-0x71f93ff7(%rbp)
    392b:	09 8f 09 bc 09 a6    	or     %ecx,-0x59f643f7(%rdi)
    3931:	09 7a 06             	or     %edi,0x6(%rdx)
    3934:	97                   	xchg   %eax,%edi
    3935:	09 fb                	or     %edi,%ebx
    3937:	09 fd                	or     %edi,%ebp
    3939:	09 fe                	or     %edi,%esi
    393b:	09 ff                	or     %edi,%edi
    393d:	09 00                	or     %eax,(%rax)
    393f:	0a fc                	or     %ah,%bh
    3941:	09 fa                	or     %edi,%edx
    3943:	09 bd 06 79 06 77    	or     %edi,0x77067906(%rbp)
    3949:	06                   	(bad)  
    394a:	9f                   	lahf   
    394b:	09 9e 09 7b 06 ba    	or     %ebx,-0x45f984f7(%rsi)
    3951:	09 b9 09 7d 06 7e    	or     %edi,0x7e067d09(%rcx)
    3957:	06                   	(bad)  
    3958:	7c 06                	jl     0x3960
    395a:	91                   	xchg   %eax,%ecx
    395b:	09 ad 09 6f 09 52    	or     %ebp,0x52096f09(%rbp)
    3961:	06                   	(bad)  
    3962:	54                   	push   %rsp
    3963:	06                   	(bad)  
    3964:	53                   	push   %rbx
    3965:	06                   	(bad)  
    3966:	bc 06 ad 06 ac       	mov    $0xac06ad06,%esp
    396b:	06                   	(bad)  
    396c:	50                   	push   %rax
    396d:	06                   	(bad)  
    396e:	b9 06 be 06 f9       	mov    $0xf906be06,%ecx
    3973:	09 51 06             	or     %edx,0x6(%rcx)
    3976:	a1 06 a0 06 98 09 ec 	movabs 0xbb09ec099806a006,%eax
    397d:	09 bb 
    397f:	06                   	(bad)  
    3980:	b8 06 ba 06 4e       	mov    $0x4e06ba06,%eax
    3985:	06                   	(bad)  
    3986:	5c                   	pop    %rsp
    3987:	06                   	(bad)  
    3988:	d8 09                	fmuls  (%rcx)
    398a:	e4 09                	in     $0x9,%al
    398c:	e3 09                	jrcxz  0x3997
    398e:	f1                   	int1   
    398f:	09 6d 06             	or     %ebp,0x6(%rbp)
    3992:	38 06                	cmp    %al,(%rsi)
    3994:	68 09 69 09 5d       	push   $0x5d096909
    3999:	09 32                	or     %esi,(%rdx)
    399b:	06                   	(bad)  
    399c:	a0 09 5a 06 5b 06 63 	movabs 0x640963065b065a09,%al
    39a3:	09 64 
    39a5:	09 65 09             	or     %esp,0x9(%rbp)
    39a8:	67 09 66 09          	or     %esp,0x9(%esi)
    39ac:	6b 06 6c             	imul   $0x6c,(%rsi),%eax
    39af:	06                   	(bad)  
    39b0:	60                   	(bad)  
    39b1:	06                   	(bad)  
    39b2:	61                   	(bad)  
    39b3:	06                   	(bad)  
    39b4:	64 06                	fs (bad) 
    39b6:	62 06                	(bad)  
    39b8:	63 06                	movsxd (%rsi),%eax
    39ba:	56                   	push   %rsi
    39bb:	06                   	(bad)  
    39bc:	57                   	push   %rdi
    39bd:	06                   	(bad)  
    39be:	90                   	nop
    39bf:	09 93 09 66 06 9a    	or     %edx,-0x65f999f7(%rbx)
    39c5:	09 59 06             	or     %ebx,0x6(%rcx)
    39c8:	58                   	pop    %rax
    39c9:	06                   	(bad)  
    39ca:	92                   	xchg   %eax,%edx
    39cb:	09 69 06             	or     %ebp,0x6(%rcx)
    39ce:	6a 06                	push   $0x6
    39d0:	68 06 77 09 79       	push   $0x79097706
    39d5:	09 7a 09             	or     %edi,0x9(%rdx)
    39d8:	78 09                	js     0x39e3
    39da:	76 09                	jbe    0x39e5
    39dc:	81 09 83 09 7e 09    	orl    $0x97e0983,(%rcx)
    39e2:	85 09                	test   %ecx,(%rcx)
    39e4:	84 09                	test   %cl,(%rcx)
    39e6:	8a 09                	mov    (%rcx),%cl
    39e8:	8c 09                	mov    %cs,(%rcx)
    39ea:	7d 09                	jge    0x39f5
    39ec:	80 09 7f             	orb    $0x7f,(%rcx)
    39ef:	09 82 09 7c 09 7b    	or     %eax,0x7b097c09(%rdx)
    39f5:	09 87 09 88 09 89    	or     %eax,-0x76f677f7(%rdi)
    39fb:	09 86 09 2f 06 31    	or     %eax,0x31062f09(%rsi)
    3a01:	06                   	(bad)  
    3a02:	30 06                	xor    %al,(%rsi)
    3a04:	5f                   	pop    %rdi
    3a05:	06                   	(bad)  
    3a06:	6c                   	insb   (%dx),%es:(%rdi)
    3a07:	09 4f 06             	or     %ecx,0x6(%rdi)
    3a0a:	5d                   	pop    %rbp
    3a0b:	06                   	(bad)  
    3a0c:	5e                   	pop    %rsi
    3a0d:	06                   	(bad)  
    3a0e:	96                   	xchg   %eax,%esi
    3a0f:	09 9c 09 9d 09 44 06 	or     %ebx,0x644099d(%rcx,%rcx,1)
    3a16:	67 06                	addr32 (bad) 
    3a18:	94                   	xchg   %eax,%esp
    3a19:	09 95 09 55 06 c6    	or     %edx,-0x39f9aaf7(%rbp)
    3a1f:	09 e9                	or     %ebp,%ecx
    3a21:	09 ea                	or     %ebp,%edx
    3a23:	09 eb                	or     %ebp,%ebx
    3a25:	09 e7                	or     %esp,%edi
    3a27:	09 e8                	or     %ebp,%eax
    3a29:	09 ce                	or     %ecx,%esi
    3a2b:	09 8e 06 d9 09 da    	or     %ecx,-0x25f626fa(%rsi)
    3a31:	09 8b 06 8a 06 8d    	or     %ecx,-0x72f975fa(%rbx)
    3a37:	06                   	(bad)  
    3a38:	8c 06                	mov    %es,(%rsi)
    3a3a:	e2 09                	loop   0x3a45
    3a3c:	db 09                	fisttpl (%rcx)
    3a3e:	cf                   	iret   
    3a3f:	09 d0                	or     %edx,%eax
    3a41:	09 cc                	or     %ecx,%esp
    3a43:	09 88 06 cd 09 cb    	or     %ecx,-0x34f632fa(%rax)
    3a49:	09 d1                	or     %edx,%ecx
    3a4b:	09 c7                	or     %eax,%edi
    3a4d:	09 89 06 ae 06 ca    	or     %ecx,-0x35f951fa(%rcx)
    3a53:	09 d7                	or     %edx,%edi
    3a55:	09 d2                	or     %edx,%edx
    3a57:	09 93 06 98 06 97    	or     %edx,-0x68f967fa(%rbx)
    3a5d:	06                   	(bad)  
    3a5e:	94                   	xchg   %eax,%esp
    3a5f:	06                   	(bad)  
    3a60:	96                   	xchg   %eax,%esi
    3a61:	06                   	(bad)  
    3a62:	9c                   	pushf  
    3a63:	06                   	(bad)  
    3a64:	95                   	xchg   %eax,%ebp
    3a65:	06                   	(bad)  
    3a66:	9a                   	(bad)  
    3a67:	06                   	(bad)  
    3a68:	9d                   	popf   
    3a69:	06                   	(bad)  
    3a6a:	99                   	cltd   
    3a6b:	06                   	(bad)  
    3a6c:	9b                   	fwait
    3a6d:	06                   	(bad)  
    3a6e:	9e                   	sahf   
    3a6f:	06                   	(bad)  
    3a70:	92                   	xchg   %eax,%edx
    3a71:	06                   	(bad)  
    3a72:	90                   	nop
    3a73:	06                   	(bad)  
    3a74:	91                   	xchg   %eax,%ecx
    3a75:	06                   	(bad)  
    3a76:	9f                   	lahf   
    3a77:	06                   	(bad)  
    3a78:	8f 06                	pop    (%rsi)
    3a7a:	e6 09                	out    %al,$0x9
    3a7c:	dd 09                	fisttpll (%rcx)
    3a7e:	dc 09                	fmull  (%rcx)
    3a80:	df 09                	fisttps (%rcx)
    3a82:	de 09                	fimuls (%rcx)
    3a84:	e0 09                	loopne 0x3a8f
    3a86:	e1 09                	loope  0x3a91
    3a88:	ab                   	stos   %eax,%es:(%rdi)
    3a89:	06                   	(bad)  
    3a8a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    3a8b:	06                   	(bad)  
    3a8c:	aa                   	stos   %al,%es:(%rdi)
    3a8d:	06                   	(bad)  
    3a8e:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    3a8f:	06                   	(bad)  
    3a90:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    3a91:	06                   	(bad)  
    3a92:	a2 06 c5 09 a5 06 a3 	movabs %al,0xa906a306a509c506
    3a99:	06 a9 
    3a9b:	06                   	(bad)  
    3a9c:	a8 06                	test   $0x6,%al
    3a9e:	c9                   	leave  
    3a9f:	09 c8                	or     %ecx,%eax
    3aa1:	09 d5                	or     %edx,%ebp
    3aa3:	09 d6                	or     %edx,%esi
    3aa5:	09 d4                	or     %edx,%esp
    3aa7:	09 4b 06             	or     %ecx,0x6(%rbx)
    3aaa:	d3 09                	rorl   %cl,(%rcx)
    3aac:	48 06                	rex.W (bad) 
    3aae:	49 06                	rex.WB (bad) 
    3ab0:	4a 06                	rex.WX (bad) 
    3ab2:	a1 0d 7b 0d 7c 0d 7e 	movabs 0x7d0d7e0d7c0d7b0d,%eax
    3ab9:	0d 7d 
    3abb:	0d 7f 0d 80 0d       	or     $0xd800d7f,%eax
    3ac0:	81 0d 60 0d 5f 0d 5e 	orl    $0xd610d5e,0xd5f0d60(%rip)        # 0xd5f482a
    3ac7:	0d 61 0d 
    3aca:	68 0d 63 0d ca       	push   $0xffffffffca0d630d
    3acf:	08 cc                	or     %cl,%ah
    3ad1:	08 a9 0d a4 0d a8    	or     %ch,-0x57f25bf3(%rcx)
    3ad7:	0d a7 0d a5 0d       	or     $0xda50da7,%eax
    3adc:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    3add:	0d cb 08 cd 08       	or     $0x8cd08cb,%eax
    3ae2:	ce                   	(bad)  
    3ae3:	08 cf                	or     %cl,%bh
    3ae5:	08 ab 0d 67 0d ac    	or     %ch,-0x53f298f3(%rbx)
    3aeb:	0d ad 0d ae 0d       	or     $0xdae0dad,%eax
	...
    3b00:	48 01 c2             	add    %rax,%rdx
    3b03:	41 ff c4             	inc    %r12d
    3b06:	41 81 fc 23 09 00 00 	cmp    $0x923,%r12d
    3b0d:	73 05                	jae    0x3b14
    3b0f:	80 3a 00             	cmpb   $0x0,(%rdx)
    3b12:	75 1d                	jne    0x3b31
    3b14:	45 85 e4             	test   %r12d,%r12d
    3b17:	74 1e                	je     0x3b37
    3b19:	42 0f b7 8c 65 4e 04 	movzwl 0x44e(%rbp,%r12,2),%ecx
    3b20:	00 00 
    3b22:	80 3c 0e 20          	cmpb   $0x20,(%rsi,%rcx,1)
    3b26:	75 0f                	jne    0x3b37
    3b28:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
    3b2c:	41 ff cc             	dec    %r12d
    3b2f:	eb e3                	jmp    0x3b14
    3b31:	ff 25 99 c7 ff ff    	jmp    *-0x3867(%rip)        # 0x2d0
    3b37:	ff 25 9b c7 ff ff    	jmp    *-0x3865(%rip)        # 0x2d8
	...
    3b7d:	00 00                	add    %al,(%rax)
    3b7f:	00 44 39 e7          	add    %al,-0x19(%rcx,%rdi,1)
    3b83:	74 1c                	je     0x3ba1
    3b85:	41 83 bb 80 25 00 00 	cmpl   $0x9,0x2580(%r11)
    3b8c:	09 
    3b8d:	73 12                	jae    0x3ba1
    3b8f:	41 ff 83 80 25 00 00 	incl   0x2580(%r11)
    3b96:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
    3b9b:	ff 25 3f c7 ff ff    	jmp    *-0x38c1(%rip)        # 0x2e0
    3ba1:	ff 25 41 c7 ff ff    	jmp    *-0x38bf(%rip)        # 0x2e8
	...
