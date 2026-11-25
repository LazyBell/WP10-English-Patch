
g.dll:     file format pei-x86-64


Disassembly of section .text:

0000000180001000 <.text>:
   180001000:	41 57                	push   %r15
   180001002:	41 56                	push   %r14
   180001004:	56                   	push   %rsi
   180001005:	57                   	push   %rdi
   180001006:	53                   	push   %rbx
   180001007:	48 81 ec 90 02 00 00 	sub    $0x290,%rsp
   18000100e:	4c 89 ce             	mov    %r9,%rsi
   180001011:	4c 89 c7             	mov    %r8,%rdi
   180001014:	89 d3                	mov    %edx,%ebx
   180001016:	49 89 ce             	mov    %rcx,%r14
   180001019:	48 8b 0d f0 6f 00 00 	mov    0x6ff0(%rip),%rcx        # 0x180008010
   180001020:	48 85 c9             	test   %rcx,%rcx
   180001023:	0f 85 8d 00 00 00    	jne    0x1800010b6
   180001029:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
   18000102e:	4c 89 f9             	mov    %r15,%rcx
   180001031:	ba 08 02 00 00       	mov    $0x208,%edx
   180001036:	ff 15 74 69 00 00    	call   *0x6974(%rip)        # 0x1800079b0
   18000103c:	8d 48 01             	lea    0x1(%rax),%ecx
   18000103f:	89 c2                	mov    %eax,%edx
   180001041:	c6 44 14 30 5c       	movb   $0x5c,0x30(%rsp,%rdx,1)
   180001046:	8d 50 02             	lea    0x2(%rax),%edx
   180001049:	c6 44 0c 30 64       	movb   $0x64,0x30(%rsp,%rcx,1)
   18000104e:	8d 48 03             	lea    0x3(%rax),%ecx
   180001051:	c6 44 14 30 69       	movb   $0x69,0x30(%rsp,%rdx,1)
   180001056:	8d 50 04             	lea    0x4(%rax),%edx
   180001059:	c6 44 0c 30 6e       	movb   $0x6e,0x30(%rsp,%rcx,1)
   18000105e:	8d 48 05             	lea    0x5(%rax),%ecx
   180001061:	c6 44 14 30 70       	movb   $0x70,0x30(%rsp,%rdx,1)
   180001066:	8d 50 06             	lea    0x6(%rax),%edx
   180001069:	c6 44 0c 30 75       	movb   $0x75,0x30(%rsp,%rcx,1)
   18000106e:	8d 48 07             	lea    0x7(%rax),%ecx
   180001071:	c6 44 14 30 74       	movb   $0x74,0x30(%rsp,%rdx,1)
   180001076:	8d 50 08             	lea    0x8(%rax),%edx
   180001079:	c6 44 0c 30 38       	movb   $0x38,0x30(%rsp,%rcx,1)
   18000107e:	8d 48 09             	lea    0x9(%rax),%ecx
   180001081:	c6 44 14 30 2e       	movb   $0x2e,0x30(%rsp,%rdx,1)
   180001086:	8d 50 0a             	lea    0xa(%rax),%edx
   180001089:	c6 44 0c 30 64       	movb   $0x64,0x30(%rsp,%rcx,1)
   18000108e:	8d 48 0b             	lea    0xb(%rax),%ecx
   180001091:	c6 44 14 30 6c       	movb   $0x6c,0x30(%rsp,%rdx,1)
   180001096:	83 c0 0c             	add    $0xc,%eax
   180001099:	c6 44 0c 30 6c       	movb   $0x6c,0x30(%rsp,%rcx,1)
   18000109e:	c6 44 04 30 00       	movb   $0x0,0x30(%rsp,%rax,1)
   1800010a3:	4c 89 f9             	mov    %r15,%rcx
   1800010a6:	ff 15 14 69 00 00    	call   *0x6914(%rip)        # 0x1800079c0
   1800010ac:	48 89 c1             	mov    %rax,%rcx
   1800010af:	48 89 05 5a 6f 00 00 	mov    %rax,0x6f5a(%rip)        # 0x180008010
   1800010b6:	48 8d 15 cb 62 00 00 	lea    0x62cb(%rip),%rdx        # 0x180007388
   1800010bd:	ff 15 e5 68 00 00    	call   *0x68e5(%rip)        # 0x1800079a8
   1800010c3:	48 85 c0             	test   %rax,%rax
   1800010c6:	74 1c                	je     0x1800010e4
   1800010c8:	48 8b 8c 24 e0 02 00 	mov    0x2e0(%rsp),%rcx
   1800010cf:	00 
   1800010d0:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   1800010d5:	4c 89 f1             	mov    %r14,%rcx
   1800010d8:	89 da                	mov    %ebx,%edx
   1800010da:	49 89 f8             	mov    %rdi,%r8
   1800010dd:	49 89 f1             	mov    %rsi,%r9
   1800010e0:	ff d0                	call   *%rax
   1800010e2:	eb 05                	jmp    0x1800010e9
   1800010e4:	b8 05 40 00 80       	mov    $0x80004005,%eax
   1800010e9:	48 81 c4 90 02 00 00 	add    $0x290,%rsp
   1800010f0:	5b                   	pop    %rbx
   1800010f1:	5f                   	pop    %rdi
   1800010f2:	5e                   	pop    %rsi
   1800010f3:	41 5e                	pop    %r14
   1800010f5:	41 5f                	pop    %r15
   1800010f7:	c3                   	ret    
   1800010f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800010ff:	00 
   180001100:	56                   	push   %rsi
   180001101:	57                   	push   %rdi
   180001102:	48 81 ec 98 02 00 00 	sub    $0x298,%rsp
   180001109:	83 fa 01             	cmp    $0x1,%edx
   18000110c:	0f 85 88 04 00 00    	jne    0x18000159a
   180001112:	48 89 cf             	mov    %rcx,%rdi
   180001115:	48 89 0d fc 6e 00 00 	mov    %rcx,0x6efc(%rip)        # 0x180008018
   18000111c:	31 c9                	xor    %ecx,%ecx
   18000111e:	ff 15 7c 68 00 00    	call   *0x687c(%rip)        # 0x1800079a0
   180001124:	48 89 05 f5 6e 00 00 	mov    %rax,0x6ef5(%rip)        # 0x180008020
   18000112b:	48 8d 0d fe 6e 00 00 	lea    0x6efe(%rip),%rcx        # 0x180008030
   180001132:	48 89 ca             	mov    %rcx,%rdx
   180001135:	48 29 c2             	sub    %rax,%rdx
   180001138:	48 81 c2 00 f0 ff ff 	add    $0xfffffffffffff000,%rdx
   18000113f:	48 83 fa 0f          	cmp    $0xf,%rdx
   180001143:	0f 87 82 00 00 00    	ja     0x1800011cb
   180001149:	31 d2                	xor    %edx,%edx
   18000114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180001150:	44 0f b6 84 10 00 10 	movzbl 0x1000(%rax,%rdx,1),%r8d
   180001157:	00 00 
   180001159:	44 88 04 0a          	mov    %r8b,(%rdx,%rcx,1)
   18000115d:	44 0f b6 84 10 01 10 	movzbl 0x1001(%rax,%rdx,1),%r8d
   180001164:	00 00 
   180001166:	44 88 44 0a 01       	mov    %r8b,0x1(%rdx,%rcx,1)
   18000116b:	44 0f b6 84 10 02 10 	movzbl 0x1002(%rax,%rdx,1),%r8d
   180001172:	00 00 
   180001174:	44 88 44 0a 02       	mov    %r8b,0x2(%rdx,%rcx,1)
   180001179:	44 0f b6 84 10 03 10 	movzbl 0x1003(%rax,%rdx,1),%r8d
   180001180:	00 00 
   180001182:	44 88 44 0a 03       	mov    %r8b,0x3(%rdx,%rcx,1)
   180001187:	44 0f b6 84 10 04 10 	movzbl 0x1004(%rax,%rdx,1),%r8d
   18000118e:	00 00 
   180001190:	44 88 44 0a 04       	mov    %r8b,0x4(%rdx,%rcx,1)
   180001195:	44 0f b6 84 10 05 10 	movzbl 0x1005(%rax,%rdx,1),%r8d
   18000119c:	00 00 
   18000119e:	44 88 44 0a 05       	mov    %r8b,0x5(%rdx,%rcx,1)
   1800011a3:	44 0f b6 84 10 06 10 	movzbl 0x1006(%rax,%rdx,1),%r8d
   1800011aa:	00 00 
   1800011ac:	44 88 44 0a 06       	mov    %r8b,0x6(%rdx,%rcx,1)
   1800011b1:	44 0f b6 84 10 07 10 	movzbl 0x1007(%rax,%rdx,1),%r8d
   1800011b8:	00 00 
   1800011ba:	44 88 44 0a 07       	mov    %r8b,0x7(%rdx,%rcx,1)
   1800011bf:	48 83 c2 08          	add    $0x8,%rdx
   1800011c3:	48 83 fa 40          	cmp    $0x40,%rdx
   1800011c7:	75 87                	jne    0x180001150
   1800011c9:	eb 38                	jmp    0x180001203
   1800011cb:	0f 10 80 00 10 00 00 	movups 0x1000(%rax),%xmm0
   1800011d2:	0f 29 05 57 6e 00 00 	movaps %xmm0,0x6e57(%rip)        # 0x180008030
   1800011d9:	0f 10 80 10 10 00 00 	movups 0x1010(%rax),%xmm0
   1800011e0:	0f 29 05 59 6e 00 00 	movaps %xmm0,0x6e59(%rip)        # 0x180008040
   1800011e7:	0f 10 80 20 10 00 00 	movups 0x1020(%rax),%xmm0
   1800011ee:	0f 29 05 5b 6e 00 00 	movaps %xmm0,0x6e5b(%rip)        # 0x180008050
   1800011f5:	0f 10 80 30 10 00 00 	movups 0x1030(%rax),%xmm0
   1800011fc:	0f 29 05 5d 6e 00 00 	movaps %xmm0,0x6e5d(%rip)        # 0x180008060
   180001203:	48 8d 35 66 6e 00 00 	lea    0x6e66(%rip),%rsi        # 0x180008070
   18000120a:	48 89 f9             	mov    %rdi,%rcx
   18000120d:	48 89 f2             	mov    %rsi,%rdx
   180001210:	41 b8 00 02 00 00    	mov    $0x200,%r8d
   180001216:	ff 15 7c 67 00 00    	call   *0x677c(%rip)        # 0x180007998
   18000121c:	89 c1                	mov    %eax,%ecx
   18000121e:	48 ff c1             	inc    %rcx
   180001221:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001228:	0f 1f 84 00 00 00 00 
   18000122f:	00 
   180001230:	48 83 f9 01          	cmp    $0x1,%rcx
   180001234:	74 23                	je     0x180001259
   180001236:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
   18000123a:	80 7c 31 fe 5c       	cmpb   $0x5c,-0x2(%rcx,%rsi,1)
   18000123f:	48 89 c1             	mov    %rax,%rcx
   180001242:	75 ec                	jne    0x180001230
   180001244:	89 05 2e 70 00 00    	mov    %eax,0x702e(%rip)        # 0x180008278
   18000124a:	89 c2                	mov    %eax,%edx
   18000124c:	48 83 fa 08          	cmp    $0x8,%rdx
   180001250:	73 18                	jae    0x18000126a
   180001252:	31 c9                	xor    %ecx,%ecx
   180001254:	e9 91 00 00 00       	jmp    0x1800012ea
   180001259:	c7 05 15 70 00 00 00 	movl   $0x0,0x7015(%rip)        # 0x180008278
   180001260:	00 00 00 
   180001263:	31 c0                	xor    %eax,%eax
   180001265:	e9 98 00 00 00       	jmp    0x180001302
   18000126a:	83 fa 20             	cmp    $0x20,%edx
   18000126d:	73 04                	jae    0x180001273
   18000126f:	31 c9                	xor    %ecx,%ecx
   180001271:	eb 48                	jmp    0x1800012bb
   180001273:	41 89 c1             	mov    %eax,%r9d
   180001276:	41 89 c0             	mov    %eax,%r8d
   180001279:	41 83 e0 1f          	and    $0x1f,%r8d
   18000127d:	48 89 d1             	mov    %rdx,%rcx
   180001280:	4c 29 c1             	sub    %r8,%rcx
   180001283:	4d 29 c1             	sub    %r8,%r9
   180001286:	45 31 d2             	xor    %r10d,%r10d
   180001289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180001290:	41 0f 28 04 32       	movaps (%r10,%rsi,1),%xmm0
   180001295:	41 0f 28 4c 32 10    	movaps 0x10(%r10,%rsi,1),%xmm1
   18000129b:	42 0f 29 44 14 40    	movaps %xmm0,0x40(%rsp,%r10,1)
   1800012a1:	42 0f 29 4c 14 50    	movaps %xmm1,0x50(%rsp,%r10,1)
   1800012a7:	49 83 c2 20          	add    $0x20,%r10
   1800012ab:	4d 39 d1             	cmp    %r10,%r9
   1800012ae:	75 e0                	jne    0x180001290
   1800012b0:	4d 85 c0             	test   %r8,%r8
   1800012b3:	74 4d                	je     0x180001302
   1800012b5:	41 83 f8 08          	cmp    $0x8,%r8d
   1800012b9:	72 2f                	jb     0x1800012ea
   1800012bb:	41 89 c1             	mov    %eax,%r9d
   1800012be:	41 89 c0             	mov    %eax,%r8d
   1800012c1:	41 83 e0 07          	and    $0x7,%r8d
   1800012c5:	4c 29 c2             	sub    %r8,%rdx
   1800012c8:	4d 29 c1             	sub    %r8,%r9
   1800012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1800012d0:	4c 8b 14 31          	mov    (%rcx,%rsi,1),%r10
   1800012d4:	4c 89 54 0c 40       	mov    %r10,0x40(%rsp,%rcx,1)
   1800012d9:	48 83 c1 08          	add    $0x8,%rcx
   1800012dd:	49 39 c9             	cmp    %rcx,%r9
   1800012e0:	75 ee                	jne    0x1800012d0
   1800012e2:	48 89 d1             	mov    %rdx,%rcx
   1800012e5:	4d 85 c0             	test   %r8,%r8
   1800012e8:	74 18                	je     0x180001302
   1800012ea:	89 c2                	mov    %eax,%edx
   1800012ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1800012f0:	44 0f b6 04 31       	movzbl (%rcx,%rsi,1),%r8d
   1800012f5:	44 88 44 0c 40       	mov    %r8b,0x40(%rsp,%rcx,1)
   1800012fa:	48 ff c1             	inc    %rcx
   1800012fd:	48 39 ca             	cmp    %rcx,%rdx
   180001300:	75 ee                	jne    0x1800012f0
   180001302:	8d 48 01             	lea    0x1(%rax),%ecx
   180001305:	89 c2                	mov    %eax,%edx
   180001307:	c6 44 14 40 57       	movb   $0x57,0x40(%rsp,%rdx,1)
   18000130c:	8d 50 02             	lea    0x2(%rax),%edx
   18000130f:	c6 44 0c 40 50       	movb   $0x50,0x40(%rsp,%rcx,1)
   180001314:	8d 48 03             	lea    0x3(%rax),%ecx
   180001317:	c6 44 14 40 31       	movb   $0x31,0x40(%rsp,%rdx,1)
   18000131c:	8d 50 04             	lea    0x4(%rax),%edx
   18000131f:	c6 44 0c 40 30       	movb   $0x30,0x40(%rsp,%rcx,1)
   180001324:	8d 48 05             	lea    0x5(%rax),%ecx
   180001327:	c6 44 14 40 5f       	movb   $0x5f,0x40(%rsp,%rdx,1)
   18000132c:	8d 50 06             	lea    0x6(%rax),%edx
   18000132f:	c6 44 0c 40 45       	movb   $0x45,0x40(%rsp,%rcx,1)
   180001334:	8d 48 07             	lea    0x7(%rax),%ecx
   180001337:	c6 44 14 40 4e       	movb   $0x4e,0x40(%rsp,%rdx,1)
   18000133c:	8d 50 08             	lea    0x8(%rax),%edx
   18000133f:	c6 44 0c 40 2e       	movb   $0x2e,0x40(%rsp,%rcx,1)
   180001344:	8d 48 09             	lea    0x9(%rax),%ecx
   180001347:	c6 44 14 40 6c       	movb   $0x6c,0x40(%rsp,%rdx,1)
   18000134c:	8d 50 0a             	lea    0xa(%rax),%edx
   18000134f:	c6 44 0c 40 6f       	movb   $0x6f,0x40(%rsp,%rcx,1)
   180001354:	83 c0 0b             	add    $0xb,%eax
   180001357:	c6 44 14 40 67       	movb   $0x67,0x40(%rsp,%rdx,1)
   18000135c:	c6 44 04 40 00       	movb   $0x0,0x40(%rsp,%rax,1)
   180001361:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   180001368:	00 00 
   18000136a:	c7 44 24 28 80 00 00 	movl   $0x80,0x28(%rsp)
   180001371:	00 
   180001372:	c7 44 24 20 02 00 00 	movl   $0x2,0x20(%rsp)
   180001379:	00 
   18000137a:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   18000137f:	ba 00 00 00 40       	mov    $0x40000000,%edx
   180001384:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   18000138a:	45 31 c9             	xor    %r9d,%r9d
   18000138d:	ff 15 e5 65 00 00    	call   *0x65e5(%rip)        # 0x180007978
   180001393:	48 89 05 e6 6e 00 00 	mov    %rax,0x6ee6(%rip)        # 0x180008280
   18000139a:	48 85 c0             	test   %rax,%rax
   18000139d:	74 24                	je     0x1800013c3
   18000139f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800013a6:	00 00 
   1800013a8:	48 8d 15 51 63 00 00 	lea    0x6351(%rip),%rdx        # 0x180007700
   1800013af:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
   1800013b4:	48 89 c1             	mov    %rax,%rcx
   1800013b7:	41 b8 19 00 00 00    	mov    $0x19,%r8d
   1800013bd:	ff 15 3d 66 00 00    	call   *0x663d(%rip)        # 0x180007a00
   1800013c3:	8b 05 af 6e 00 00    	mov    0x6eaf(%rip),%eax        # 0x180008278
   1800013c9:	48 85 c0             	test   %rax,%rax
   1800013cc:	74 09                	je     0x1800013d7
   1800013ce:	83 f8 08             	cmp    $0x8,%eax
   1800013d1:	73 08                	jae    0x1800013db
   1800013d3:	31 c9                	xor    %ecx,%ecx
   1800013d5:	eb 69                	jmp    0x180001440
   1800013d7:	31 d2                	xor    %edx,%edx
   1800013d9:	eb 78                	jmp    0x180001453
   1800013db:	83 f8 20             	cmp    $0x20,%eax
   1800013de:	73 04                	jae    0x1800013e4
   1800013e0:	31 c9                	xor    %ecx,%ecx
   1800013e2:	eb 34                	jmp    0x180001418
   1800013e4:	89 c1                	mov    %eax,%ecx
   1800013e6:	83 e1 e0             	and    $0xffffffe0,%ecx
   1800013e9:	31 d2                	xor    %edx,%edx
   1800013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1800013f0:	0f 28 04 32          	movaps (%rdx,%rsi,1),%xmm0
   1800013f4:	0f 28 4c 32 10       	movaps 0x10(%rdx,%rsi,1),%xmm1
   1800013f9:	0f 29 44 14 40       	movaps %xmm0,0x40(%rsp,%rdx,1)
   1800013fe:	0f 29 4c 14 50       	movaps %xmm1,0x50(%rsp,%rdx,1)
   180001403:	48 83 c2 20          	add    $0x20,%rdx
   180001407:	48 39 d1             	cmp    %rdx,%rcx
   18000140a:	75 e4                	jne    0x1800013f0
   18000140c:	48 89 c2             	mov    %rax,%rdx
   18000140f:	48 39 c1             	cmp    %rax,%rcx
   180001412:	74 3f                	je     0x180001453
   180001414:	a8 18                	test   $0x18,%al
   180001416:	74 28                	je     0x180001440
   180001418:	48 89 ca             	mov    %rcx,%rdx
   18000141b:	89 c1                	mov    %eax,%ecx
   18000141d:	83 e1 f8             	and    $0xfffffff8,%ecx
   180001420:	4c 8b 04 32          	mov    (%rdx,%rsi,1),%r8
   180001424:	4c 89 44 14 40       	mov    %r8,0x40(%rsp,%rdx,1)
   180001429:	48 83 c2 08          	add    $0x8,%rdx
   18000142d:	48 39 d1             	cmp    %rdx,%rcx
   180001430:	75 ee                	jne    0x180001420
   180001432:	48 89 c2             	mov    %rax,%rdx
   180001435:	48 39 c1             	cmp    %rax,%rcx
   180001438:	74 19                	je     0x180001453
   18000143a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   180001440:	0f b6 14 31          	movzbl (%rcx,%rsi,1),%edx
   180001444:	88 54 0c 40          	mov    %dl,0x40(%rsp,%rcx,1)
   180001448:	48 ff c1             	inc    %rcx
   18000144b:	48 39 c8             	cmp    %rcx,%rax
   18000144e:	75 f0                	jne    0x180001440
   180001450:	48 89 c2             	mov    %rax,%rdx
   180001453:	8d 48 01             	lea    0x1(%rax),%ecx
   180001456:	c6 44 14 40 57       	movb   $0x57,0x40(%rsp,%rdx,1)
   18000145b:	8d 50 02             	lea    0x2(%rax),%edx
   18000145e:	c6 44 0c 40 50       	movb   $0x50,0x40(%rsp,%rcx,1)
   180001463:	8d 48 03             	lea    0x3(%rax),%ecx
   180001466:	c6 44 14 40 31       	movb   $0x31,0x40(%rsp,%rdx,1)
   18000146b:	8d 50 04             	lea    0x4(%rax),%edx
   18000146e:	c6 44 0c 40 30       	movb   $0x30,0x40(%rsp,%rcx,1)
   180001473:	8d 48 05             	lea    0x5(%rax),%ecx
   180001476:	c6 44 14 40 5f       	movb   $0x5f,0x40(%rsp,%rdx,1)
   18000147b:	8d 50 06             	lea    0x6(%rax),%edx
   18000147e:	c6 44 0c 40 45       	movb   $0x45,0x40(%rsp,%rcx,1)
   180001483:	8d 48 07             	lea    0x7(%rax),%ecx
   180001486:	c6 44 14 40 4e       	movb   $0x4e,0x40(%rsp,%rdx,1)
   18000148b:	8d 50 08             	lea    0x8(%rax),%edx
   18000148e:	c6 44 0c 40 5f       	movb   $0x5f,0x40(%rsp,%rcx,1)
   180001493:	8d 48 09             	lea    0x9(%rax),%ecx
   180001496:	c6 44 14 40 65       	movb   $0x65,0x40(%rsp,%rdx,1)
   18000149b:	8d 50 0a             	lea    0xa(%rax),%edx
   18000149e:	c6 44 0c 40 61       	movb   $0x61,0x40(%rsp,%rcx,1)
   1800014a3:	8d 48 0b             	lea    0xb(%rax),%ecx
   1800014a6:	c6 44 14 40 72       	movb   $0x72,0x40(%rsp,%rdx,1)
   1800014ab:	8d 50 0c             	lea    0xc(%rax),%edx
   1800014ae:	c6 44 0c 40 6c       	movb   $0x6c,0x40(%rsp,%rcx,1)
   1800014b3:	8d 48 0d             	lea    0xd(%rax),%ecx
   1800014b6:	c6 44 14 40 79       	movb   $0x79,0x40(%rsp,%rdx,1)
   1800014bb:	8d 50 0e             	lea    0xe(%rax),%edx
   1800014be:	c6 44 0c 40 2e       	movb   $0x2e,0x40(%rsp,%rcx,1)
   1800014c3:	8d 48 0f             	lea    0xf(%rax),%ecx
   1800014c6:	c6 44 14 40 66       	movb   $0x66,0x40(%rsp,%rdx,1)
   1800014cb:	8d 50 10             	lea    0x10(%rax),%edx
   1800014ce:	c6 44 0c 40 6c       	movb   $0x6c,0x40(%rsp,%rcx,1)
   1800014d3:	8d 48 11             	lea    0x11(%rax),%ecx
   1800014d6:	c6 44 14 40 61       	movb   $0x61,0x40(%rsp,%rdx,1)
   1800014db:	83 c0 12             	add    $0x12,%eax
   1800014de:	c6 44 0c 40 67       	movb   $0x67,0x40(%rsp,%rcx,1)
   1800014e3:	c6 44 04 40 00       	movb   $0x0,0x40(%rsp,%rax,1)
   1800014e8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1800014ef:	00 00 
   1800014f1:	c7 44 24 28 80 00 00 	movl   $0x80,0x28(%rsp)
   1800014f8:	00 
   1800014f9:	c7 44 24 20 03 00 00 	movl   $0x3,0x20(%rsp)
   180001500:	00 
   180001501:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   180001506:	ba 00 00 00 80       	mov    $0x80000000,%edx
   18000150b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180001511:	45 31 c9             	xor    %r9d,%r9d
   180001514:	ff 15 5e 64 00 00    	call   *0x645e(%rip)        # 0x180007978
   18000151a:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
   18000151e:	74 55                	je     0x180001575
   180001520:	48 89 c1             	mov    %rax,%rcx
   180001523:	ff 15 47 64 00 00    	call   *0x6447(%rip)        # 0x180007970
   180001529:	48 8b 0d 50 6d 00 00 	mov    0x6d50(%rip),%rcx        # 0x180008280
   180001530:	48 85 c9             	test   %rcx,%rcx
   180001533:	74 21                	je     0x180001556
   180001535:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000153c:	00 00 
   18000153e:	48 8d 15 d7 60 00 00 	lea    0x60d7(%rip),%rdx        # 0x18000761c
   180001545:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
   18000154a:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
   180001550:	ff 15 aa 64 00 00    	call   *0x64aa(%rip)        # 0x180007a00
   180001556:	e8 55 00 00 00       	call   0x1800015b0
   18000155b:	48 8b 0d 1e 6d 00 00 	mov    0x6d1e(%rip),%rcx        # 0x180008280
   180001562:	ff 15 08 64 00 00    	call   *0x6408(%rip)        # 0x180007970
   180001568:	48 c7 05 0d 6d 00 00 	movq   $0x0,0x6d0d(%rip)        # 0x180008280
   18000156f:	00 00 00 00 
   180001573:	eb 25                	jmp    0x18000159a
   180001575:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
   18000157c:	00 00 
   18000157e:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
   180001585:	00 
   180001586:	4c 8d 05 83 0b 00 00 	lea    0xb83(%rip),%r8        # 0x180002110
   18000158d:	31 c9                	xor    %ecx,%ecx
   18000158f:	31 d2                	xor    %edx,%edx
   180001591:	45 31 c9             	xor    %r9d,%r9d
   180001594:	ff 15 e6 63 00 00    	call   *0x63e6(%rip)        # 0x180007980
   18000159a:	b8 01 00 00 00       	mov    $0x1,%eax
   18000159f:	48 81 c4 98 02 00 00 	add    $0x298,%rsp
   1800015a6:	5f                   	pop    %rdi
   1800015a7:	5e                   	pop    %rsi
   1800015a8:	c3                   	ret    
   1800015a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1800015b0:	41 57                	push   %r15
   1800015b2:	41 56                	push   %r14
   1800015b4:	41 55                	push   %r13
   1800015b6:	41 54                	push   %r12
   1800015b8:	56                   	push   %rsi
   1800015b9:	57                   	push   %rdi
   1800015ba:	55                   	push   %rbp
   1800015bb:	53                   	push   %rbx
   1800015bc:	48 81 ec 08 03 00 00 	sub    $0x308,%rsp
   1800015c3:	8b 05 af 6c 00 00    	mov    0x6caf(%rip),%eax        # 0x180008278
   1800015c9:	48 85 c0             	test   %rax,%rax
   1800015cc:	74 0c                	je     0x1800015da
   1800015ce:	83 f8 08             	cmp    $0x8,%eax
   1800015d1:	73 0e                	jae    0x1800015e1
   1800015d3:	31 c9                	xor    %ecx,%ecx
   1800015d5:	e9 83 00 00 00       	jmp    0x18000165d
   1800015da:	31 d2                	xor    %edx,%edx
   1800015dc:	e9 a7 00 00 00       	jmp    0x180001688
   1800015e1:	83 f8 20             	cmp    $0x20,%eax
   1800015e4:	73 04                	jae    0x1800015ea
   1800015e6:	31 c9                	xor    %ecx,%ecx
   1800015e8:	eb 46                	jmp    0x180001630
   1800015ea:	89 c1                	mov    %eax,%ecx
   1800015ec:	83 e1 e0             	and    $0xffffffe0,%ecx
   1800015ef:	31 d2                	xor    %edx,%edx
   1800015f1:	4c 8d 05 78 6a 00 00 	lea    0x6a78(%rip),%r8        # 0x180008070
   1800015f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800015ff:	00 
   180001600:	42 0f 28 04 02       	movaps (%rdx,%r8,1),%xmm0
   180001605:	42 0f 28 4c 02 10    	movaps 0x10(%rdx,%r8,1),%xmm1
   18000160b:	0f 29 84 14 b0 00 00 	movaps %xmm0,0xb0(%rsp,%rdx,1)
   180001612:	00 
   180001613:	0f 29 8c 14 c0 00 00 	movaps %xmm1,0xc0(%rsp,%rdx,1)
   18000161a:	00 
   18000161b:	48 83 c2 20          	add    $0x20,%rdx
   18000161f:	48 39 d1             	cmp    %rdx,%rcx
   180001622:	75 dc                	jne    0x180001600
   180001624:	48 89 c2             	mov    %rax,%rdx
   180001627:	48 39 c1             	cmp    %rax,%rcx
   18000162a:	74 5c                	je     0x180001688
   18000162c:	a8 18                	test   $0x18,%al
   18000162e:	74 2d                	je     0x18000165d
   180001630:	48 89 ca             	mov    %rcx,%rdx
   180001633:	89 c1                	mov    %eax,%ecx
   180001635:	83 e1 f8             	and    $0xfffffff8,%ecx
   180001638:	4c 8d 05 31 6a 00 00 	lea    0x6a31(%rip),%r8        # 0x180008070
   18000163f:	90                   	nop
   180001640:	4e 8b 0c 02          	mov    (%rdx,%r8,1),%r9
   180001644:	4c 89 8c 14 b0 00 00 	mov    %r9,0xb0(%rsp,%rdx,1)
   18000164b:	00 
   18000164c:	48 83 c2 08          	add    $0x8,%rdx
   180001650:	48 39 d1             	cmp    %rdx,%rcx
   180001653:	75 eb                	jne    0x180001640
   180001655:	48 89 c2             	mov    %rax,%rdx
   180001658:	48 39 c1             	cmp    %rax,%rcx
   18000165b:	74 2b                	je     0x180001688
   18000165d:	48 8d 15 0c 6a 00 00 	lea    0x6a0c(%rip),%rdx        # 0x180008070
   180001664:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000166b:	00 00 00 00 00 
   180001670:	44 0f b6 04 11       	movzbl (%rcx,%rdx,1),%r8d
   180001675:	44 88 84 0c b0 00 00 	mov    %r8b,0xb0(%rsp,%rcx,1)
   18000167c:	00 
   18000167d:	48 ff c1             	inc    %rcx
   180001680:	48 39 c8             	cmp    %rcx,%rax
   180001683:	75 eb                	jne    0x180001670
   180001685:	48 89 c2             	mov    %rax,%rdx
   180001688:	8d 48 01             	lea    0x1(%rax),%ecx
   18000168b:	c6 84 14 b0 00 00 00 	movb   $0x57,0xb0(%rsp,%rdx,1)
   180001692:	57 
   180001693:	8d 50 02             	lea    0x2(%rax),%edx
   180001696:	c6 84 0c b0 00 00 00 	movb   $0x50,0xb0(%rsp,%rcx,1)
   18000169d:	50 
   18000169e:	8d 48 03             	lea    0x3(%rax),%ecx
   1800016a1:	c6 84 14 b0 00 00 00 	movb   $0x31,0xb0(%rsp,%rdx,1)
   1800016a8:	31 
   1800016a9:	8d 50 04             	lea    0x4(%rax),%edx
   1800016ac:	c6 84 0c b0 00 00 00 	movb   $0x30,0xb0(%rsp,%rcx,1)
   1800016b3:	30 
   1800016b4:	8d 48 05             	lea    0x5(%rax),%ecx
   1800016b7:	c6 84 14 b0 00 00 00 	movb   $0x5f,0xb0(%rsp,%rdx,1)
   1800016be:	5f 
   1800016bf:	8d 50 06             	lea    0x6(%rax),%edx
   1800016c2:	c6 84 0c b0 00 00 00 	movb   $0x45,0xb0(%rsp,%rcx,1)
   1800016c9:	45 
   1800016ca:	8d 48 07             	lea    0x7(%rax),%ecx
   1800016cd:	c6 84 14 b0 00 00 00 	movb   $0x4e,0xb0(%rsp,%rdx,1)
   1800016d4:	4e 
   1800016d5:	8d 50 08             	lea    0x8(%rax),%edx
   1800016d8:	c6 84 0c b0 00 00 00 	movb   $0x2e,0xb0(%rsp,%rcx,1)
   1800016df:	2e 
   1800016e0:	8d 48 09             	lea    0x9(%rax),%ecx
   1800016e3:	c6 84 14 b0 00 00 00 	movb   $0x62,0xb0(%rsp,%rdx,1)
   1800016ea:	62 
   1800016eb:	8d 50 0a             	lea    0xa(%rax),%edx
   1800016ee:	c6 84 0c b0 00 00 00 	movb   $0x69,0xb0(%rsp,%rcx,1)
   1800016f5:	69 
   1800016f6:	83 c0 0b             	add    $0xb,%eax
   1800016f9:	c6 84 14 b0 00 00 00 	movb   $0x6e,0xb0(%rsp,%rdx,1)
   180001700:	6e 
   180001701:	c6 84 04 b0 00 00 00 	movb   $0x0,0xb0(%rsp,%rax,1)
   180001708:	00 
   180001709:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   180001710:	00 00 
   180001712:	c7 44 24 28 80 00 00 	movl   $0x80,0x28(%rsp)
   180001719:	00 
   18000171a:	c7 44 24 20 03 00 00 	movl   $0x3,0x20(%rsp)
   180001721:	00 
   180001722:	48 8d 8c 24 b0 00 00 	lea    0xb0(%rsp),%rcx
   180001729:	00 
   18000172a:	ba 00 00 00 80       	mov    $0x80000000,%edx
   18000172f:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180001735:	45 31 c9             	xor    %r9d,%r9d
   180001738:	ff 15 3a 62 00 00    	call   *0x623a(%rip)        # 0x180007978
   18000173e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
   180001742:	0f 84 48 01 00 00    	je     0x180001890
   180001748:	48 89 c7             	mov    %rax,%rdi
   18000174b:	48 89 c1             	mov    %rax,%rcx
   18000174e:	31 d2                	xor    %edx,%edx
   180001750:	ff 15 3a 62 00 00    	call   *0x623a(%rip)        # 0x180007990
   180001756:	89 c5                	mov    %eax,%ebp
   180001758:	89 c3                	mov    %eax,%ebx
   18000175a:	31 c9                	xor    %ecx,%ecx
   18000175c:	48 89 da             	mov    %rbx,%rdx
   18000175f:	41 b8 00 30 00 00    	mov    $0x3000,%r8d
   180001765:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   18000176b:	ff 15 77 62 00 00    	call   *0x6277(%rip)        # 0x1800079e8
   180001771:	48 89 c6             	mov    %rax,%rsi
   180001774:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000177b:	00 00 
   18000177d:	4c 8d 8c 24 ac 00 00 	lea    0xac(%rsp),%r9
   180001784:	00 
   180001785:	48 89 f9             	mov    %rdi,%rcx
   180001788:	48 89 c2             	mov    %rax,%rdx
   18000178b:	41 89 e8             	mov    %ebp,%r8d
   18000178e:	ff 15 3c 62 00 00    	call   *0x623c(%rip)        # 0x1800079d0
   180001794:	48 89 f9             	mov    %rdi,%rcx
   180001797:	ff 15 d3 61 00 00    	call   *0x61d3(%rip)        # 0x180007970
   18000179d:	80 3e 57             	cmpb   $0x57,(%rsi)
   1800017a0:	0f 85 c1 00 00 00    	jne    0x180001867
   1800017a6:	80 7e 01 50          	cmpb   $0x50,0x1(%rsi)
   1800017aa:	0f 85 b7 00 00 00    	jne    0x180001867
   1800017b0:	80 7e 02 45          	cmpb   $0x45,0x2(%rsi)
   1800017b4:	0f 85 ad 00 00 00    	jne    0x180001867
   1800017ba:	80 7e 03 4e          	cmpb   $0x4e,0x3(%rsi)
   1800017be:	0f 85 a3 00 00 00    	jne    0x180001867
   1800017c4:	44 8b 7e 04          	mov    0x4(%rsi),%r15d
   1800017c8:	48 8b 3d 19 62 00 00 	mov    0x6219(%rip),%rdi        # 0x1800079e8
   1800017cf:	45 31 e4             	xor    %r12d,%r12d
   1800017d2:	31 c9                	xor    %ecx,%ecx
   1800017d4:	48 89 da             	mov    %rbx,%rdx
   1800017d7:	41 b8 00 30 00 00    	mov    $0x3000,%r8d
   1800017dd:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   1800017e3:	ff d7                	call   *%rdi
   1800017e5:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
   1800017ec:	00 
   1800017ed:	31 c9                	xor    %ecx,%ecx
   1800017ef:	48 89 da             	mov    %rbx,%rdx
   1800017f2:	41 b8 00 30 00 00    	mov    $0x3000,%r8d
   1800017f8:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   1800017fe:	ff d7                	call   *%rdi
   180001800:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   180001805:	bd 00 00 00 00       	mov    $0x0,%ebp
   18000180a:	45 85 ff             	test   %r15d,%r15d
   18000180d:	0f 84 0f 07 00 00    	je     0x180001f22
   180001813:	48 83 c6 08          	add    $0x8,%rsi
   180001817:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
   18000181e:	00 
   18000181f:	48 8d 48 f7          	lea    -0x9(%rax),%rcx
   180001823:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   18000182a:	00 
   18000182b:	48 83 c0 10          	add    $0x10,%rax
   18000182f:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
   180001836:	00 
   180001837:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   18000183c:	48 83 c0 10          	add    $0x10,%rax
   180001840:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   180001847:	00 
   180001848:	31 c0                	xor    %eax,%eax
   18000184a:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   18000184f:	31 ed                	xor    %ebp,%ebp
   180001851:	31 ff                	xor    %edi,%edi
   180001853:	31 c0                	xor    %eax,%eax
   180001855:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   18000185a:	45 31 e4             	xor    %r12d,%r12d
   18000185d:	44 89 7c 24 5c       	mov    %r15d,0x5c(%rsp)
   180001862:	e9 a0 00 00 00       	jmp    0x180001907
   180001867:	48 8b 0d 12 6a 00 00 	mov    0x6a12(%rip),%rcx        # 0x180008280
   18000186e:	48 85 c9             	test   %rcx,%rcx
   180001871:	74 4a                	je     0x1800018bd
   180001873:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000187a:	00 00 
   18000187c:	48 8d 15 88 5d 00 00 	lea    0x5d88(%rip),%rdx        # 0x18000760b
   180001883:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   180001888:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   18000188e:	eb 27                	jmp    0x1800018b7
   180001890:	48 8b 0d e9 69 00 00 	mov    0x69e9(%rip),%rcx        # 0x180008280
   180001897:	48 85 c9             	test   %rcx,%rcx
   18000189a:	74 21                	je     0x1800018bd
   18000189c:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800018a3:	00 00 
   1800018a5:	48 8d 15 98 5d 00 00 	lea    0x5d98(%rip),%rdx        # 0x180007644
   1800018ac:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   1800018b1:	41 b8 17 00 00 00    	mov    $0x17,%r8d
   1800018b7:	ff 15 43 61 00 00    	call   *0x6143(%rip)        # 0x180007a00
   1800018bd:	48 81 c4 08 03 00 00 	add    $0x308,%rsp
   1800018c4:	5b                   	pop    %rbx
   1800018c5:	5d                   	pop    %rbp
   1800018c6:	5f                   	pop    %rdi
   1800018c7:	5e                   	pop    %rsi
   1800018c8:	41 5c                	pop    %r12
   1800018ca:	41 5d                	pop    %r13
   1800018cc:	41 5e                	pop    %r14
   1800018ce:	41 5f                	pop    %r15
   1800018d0:	c3                   	ret    
   1800018d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800018d8:	0f 1f 84 00 00 00 00 
   1800018df:	00 
   1800018e0:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   1800018e5:	4c 89 f2             	mov    %r14,%rdx
   1800018e8:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   1800018ed:	ff 15 fd 60 00 00    	call   *0x60fd(%rip)        # 0x1800079f0
   1800018f3:	ff c5                	inc    %ebp
   1800018f5:	41 83 c6 09          	add    $0x9,%r14d
   1800018f9:	4c 01 f6             	add    %r14,%rsi
   1800018fc:	ff c7                	inc    %edi
   1800018fe:	44 39 ff             	cmp    %r15d,%edi
   180001901:	0f 84 1b 06 00 00    	je     0x180001f22
   180001907:	0f b6 06             	movzbl (%rsi),%eax
   18000190a:	8b 5e 01             	mov    0x1(%rsi),%ebx
   18000190d:	44 8b 76 05          	mov    0x5(%rsi),%r14d
   180001911:	4c 8d 6e 09          	lea    0x9(%rsi),%r13
   180001915:	83 f8 01             	cmp    $0x1,%eax
   180001918:	0f 84 f2 00 00 00    	je     0x180001a10
   18000191e:	85 c0                	test   %eax,%eax
   180001920:	75 d3                	jne    0x1800018f5
   180001922:	8b 05 60 69 00 00    	mov    0x6960(%rip),%eax        # 0x180008288
   180001928:	48 8b 0d f1 66 00 00 	mov    0x66f1(%rip),%rcx        # 0x180008020
   18000192f:	48 3d 1f 4e 00 00    	cmp    $0x4e1f,%rax
   180001935:	0f 87 c6 02 00 00    	ja     0x180001c01
   18000193b:	8d 93 00 ea 7a fc    	lea    -0x3851600(%rbx),%edx
   180001941:	81 fa 5f 04 00 00    	cmp    $0x45f,%edx
   180001947:	0f 86 b4 02 00 00    	jbe    0x180001c01
   18000194d:	48 8d 15 3c 69 00 00 	lea    0x693c(%rip),%rdx        # 0x180008290
   180001954:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
   180001959:	89 1c 82             	mov    %ebx,(%rdx,%rax,4)
   18000195c:	48 8d 15 ad a1 01 00 	lea    0x1a1ad(%rip),%rdx        # 0x18001bb10
   180001963:	44 89 34 82          	mov    %r14d,(%rdx,%rax,4)
   180001967:	48 8d 15 22 da 02 00 	lea    0x2da22(%rip),%rdx        # 0x18002f390
   18000196e:	4c 89 2c c2          	mov    %r13,(%rdx,%rax,8)
   180001972:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
   180001977:	4c 8b 44 24 60       	mov    0x60(%rsp),%r8
   18000197c:	4e 8d 0c 02          	lea    (%rdx,%r8,1),%r9
   180001980:	48 8d 15 09 4b 05 00 	lea    0x54b09(%rip),%rdx        # 0x180056490
   180001987:	4c 89 0c c2          	mov    %r9,(%rdx,%rax,8)
   18000198b:	45 85 f6             	test   %r14d,%r14d
   18000198e:	0f 84 5b 02 00 00    	je     0x180001bef
   180001994:	4c 8b 5c 24 50       	mov    0x50(%rsp),%r11
   180001999:	4e 8d 14 19          	lea    (%rcx,%r11,1),%r10
   18000199d:	41 83 fe 08          	cmp    $0x8,%r14d
   1800019a1:	72 1d                	jb     0x1800019c0
   1800019a3:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
   1800019a8:	4c 8b 44 24 60       	mov    0x60(%rsp),%r8
   1800019ad:	4c 01 c2             	add    %r8,%rdx
   1800019b0:	48 29 ca             	sub    %rcx,%rdx
   1800019b3:	4c 29 da             	sub    %r11,%rdx
   1800019b6:	48 83 fa 20          	cmp    $0x20,%rdx
   1800019ba:	0f 83 d0 03 00 00    	jae    0x180001d90
   1800019c0:	4c 89 ca             	mov    %r9,%rdx
   1800019c3:	4d 89 d0             	mov    %r10,%r8
   1800019c6:	4c 89 f3             	mov    %r14,%rbx
   1800019c9:	49 89 d9             	mov    %rbx,%r9
   1800019cc:	49 83 e1 07          	and    $0x7,%r9
   1800019d0:	0f 84 a3 01 00 00    	je     0x180001b79
   1800019d6:	45 31 d2             	xor    %r10d,%r10d
   1800019d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1800019e0:	47 0f b6 1c 10       	movzbl (%r8,%r10,1),%r11d
   1800019e5:	46 88 1c 12          	mov    %r11b,(%rdx,%r10,1)
   1800019e9:	49 ff c2             	inc    %r10
   1800019ec:	4d 39 d1             	cmp    %r10,%r9
   1800019ef:	75 ef                	jne    0x1800019e0
   1800019f1:	4c 01 d2             	add    %r10,%rdx
   1800019f4:	4d 01 d0             	add    %r10,%r8
   1800019f7:	49 89 d9             	mov    %rbx,%r9
   1800019fa:	4d 29 d1             	sub    %r10,%r9
   1800019fd:	e9 7a 01 00 00       	jmp    0x180001b7c
   180001a02:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001a09:	1f 84 00 00 00 00 00 
   180001a10:	89 6c 24 78          	mov    %ebp,0x78(%rsp)
   180001a14:	48 89 dd             	mov    %rbx,%rbp
   180001a17:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
   180001a1c:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
   180001a23:	00 
   180001a24:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   180001a29:	48 8d 1c 08          	lea    (%rax,%rcx,1),%rbx
   180001a2d:	45 85 f6             	test   %r14d,%r14d
   180001a30:	0f 84 c9 00 00 00    	je     0x180001aff
   180001a36:	41 83 fe 08          	cmp    $0x8,%r14d
   180001a3a:	72 1d                	jb     0x180001a59
   180001a3c:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   180001a43:	00 
   180001a44:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   180001a49:	48 01 c8             	add    %rcx,%rax
   180001a4c:	48 29 f0             	sub    %rsi,%rax
   180001a4f:	48 83 f8 20          	cmp    $0x20,%rax
   180001a53:	0f 83 0e 01 00 00    	jae    0x180001b67
   180001a59:	48 89 d8             	mov    %rbx,%rax
   180001a5c:	4c 89 e9             	mov    %r13,%rcx
   180001a5f:	4c 89 f2             	mov    %r14,%rdx
   180001a62:	49 89 d0             	mov    %rdx,%r8
   180001a65:	49 83 e0 07          	and    $0x7,%r8
   180001a69:	74 24                	je     0x180001a8f
   180001a6b:	45 31 c9             	xor    %r9d,%r9d
   180001a6e:	66 90                	xchg   %ax,%ax
   180001a70:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
   180001a75:	46 88 14 08          	mov    %r10b,(%rax,%r9,1)
   180001a79:	49 ff c1             	inc    %r9
   180001a7c:	4d 39 c8             	cmp    %r9,%r8
   180001a7f:	75 ef                	jne    0x180001a70
   180001a81:	4c 01 c8             	add    %r9,%rax
   180001a84:	4c 01 c9             	add    %r9,%rcx
   180001a87:	49 89 d0             	mov    %rdx,%r8
   180001a8a:	4d 29 c8             	sub    %r9,%r8
   180001a8d:	eb 03                	jmp    0x180001a92
   180001a8f:	49 89 d0             	mov    %rdx,%r8
   180001a92:	48 ff ca             	dec    %rdx
   180001a95:	48 83 fa 07          	cmp    $0x7,%rdx
   180001a99:	72 64                	jb     0x180001aff
   180001a9b:	31 d2                	xor    %edx,%edx
   180001a9d:	0f 1f 00             	nopl   (%rax)
   180001aa0:	44 0f b6 0c 11       	movzbl (%rcx,%rdx,1),%r9d
   180001aa5:	44 88 0c 10          	mov    %r9b,(%rax,%rdx,1)
   180001aa9:	44 0f b6 4c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r9d
   180001aaf:	44 88 4c 10 01       	mov    %r9b,0x1(%rax,%rdx,1)
   180001ab4:	44 0f b6 4c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r9d
   180001aba:	44 88 4c 10 02       	mov    %r9b,0x2(%rax,%rdx,1)
   180001abf:	44 0f b6 4c 11 03    	movzbl 0x3(%rcx,%rdx,1),%r9d
   180001ac5:	44 88 4c 10 03       	mov    %r9b,0x3(%rax,%rdx,1)
   180001aca:	44 0f b6 4c 11 04    	movzbl 0x4(%rcx,%rdx,1),%r9d
   180001ad0:	44 88 4c 10 04       	mov    %r9b,0x4(%rax,%rdx,1)
   180001ad5:	44 0f b6 4c 11 05    	movzbl 0x5(%rcx,%rdx,1),%r9d
   180001adb:	44 88 4c 10 05       	mov    %r9b,0x5(%rax,%rdx,1)
   180001ae0:	44 0f b6 4c 11 06    	movzbl 0x6(%rcx,%rdx,1),%r9d
   180001ae6:	44 88 4c 10 06       	mov    %r9b,0x6(%rax,%rdx,1)
   180001aeb:	44 0f b6 4c 11 07    	movzbl 0x7(%rcx,%rdx,1),%r9d
   180001af1:	44 88 4c 10 07       	mov    %r9b,0x7(%rax,%rdx,1)
   180001af6:	48 83 c2 08          	add    $0x8,%rdx
   180001afa:	49 39 d0             	cmp    %rdx,%r8
   180001afd:	75 a1                	jne    0x180001aa0
   180001aff:	45 8d 7e 07          	lea    0x7(%r14),%r15d
   180001b03:	41 83 e7 f8          	and    $0xfffffff8,%r15d
   180001b07:	48 8b 0d 12 65 00 00 	mov    0x6512(%rip),%rcx        # 0x180008020
   180001b0e:	48 01 e9             	add    %rbp,%rcx
   180001b11:	ba 08 00 00 00       	mov    $0x8,%edx
   180001b16:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180001b1c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   180001b21:	4d 89 e1             	mov    %r12,%r9
   180001b24:	4c 8b 2d c5 5e 00 00 	mov    0x5ec5(%rip),%r13        # 0x1800079f0
   180001b2b:	41 ff d5             	call   *%r13
   180001b2e:	48 8b 0d eb 64 00 00 	mov    0x64eb(%rip),%rcx        # 0x180008020
   180001b35:	48 89 1c 29          	mov    %rbx,(%rcx,%rbp,1)
   180001b39:	48 01 e9             	add    %rbp,%rcx
   180001b3c:	4c 01 7c 24 68       	add    %r15,0x68(%rsp)
   180001b41:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   180001b46:	ba 08 00 00 00       	mov    $0x8,%edx
   180001b4b:	4d 89 e1             	mov    %r12,%r9
   180001b4e:	41 ff d5             	call   *%r13
   180001b51:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
   180001b56:	41 ff c4             	inc    %r12d
   180001b59:	44 8b 7c 24 5c       	mov    0x5c(%rsp),%r15d
   180001b5e:	8b 6c 24 78          	mov    0x78(%rsp),%ebp
   180001b62:	e9 8e fd ff ff       	jmp    0x1800018f5
   180001b67:	41 83 fe 20          	cmp    $0x20,%r14d
   180001b6b:	0f 83 30 02 00 00    	jae    0x180001da1
   180001b71:	45 31 c0             	xor    %r8d,%r8d
   180001b74:	e9 76 02 00 00       	jmp    0x180001def
   180001b79:	49 89 d9             	mov    %rbx,%r9
   180001b7c:	48 ff cb             	dec    %rbx
   180001b7f:	48 83 fb 07          	cmp    $0x7,%rbx
   180001b83:	72 6a                	jb     0x180001bef
   180001b85:	45 31 d2             	xor    %r10d,%r10d
   180001b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180001b8f:	00 
   180001b90:	47 0f b6 1c 10       	movzbl (%r8,%r10,1),%r11d
   180001b95:	46 88 1c 12          	mov    %r11b,(%rdx,%r10,1)
   180001b99:	47 0f b6 5c 10 01    	movzbl 0x1(%r8,%r10,1),%r11d
   180001b9f:	46 88 5c 12 01       	mov    %r11b,0x1(%rdx,%r10,1)
   180001ba4:	47 0f b6 5c 10 02    	movzbl 0x2(%r8,%r10,1),%r11d
   180001baa:	46 88 5c 12 02       	mov    %r11b,0x2(%rdx,%r10,1)
   180001baf:	47 0f b6 5c 10 03    	movzbl 0x3(%r8,%r10,1),%r11d
   180001bb5:	46 88 5c 12 03       	mov    %r11b,0x3(%rdx,%r10,1)
   180001bba:	47 0f b6 5c 10 04    	movzbl 0x4(%r8,%r10,1),%r11d
   180001bc0:	46 88 5c 12 04       	mov    %r11b,0x4(%rdx,%r10,1)
   180001bc5:	47 0f b6 5c 10 05    	movzbl 0x5(%r8,%r10,1),%r11d
   180001bcb:	46 88 5c 12 05       	mov    %r11b,0x5(%rdx,%r10,1)
   180001bd0:	47 0f b6 5c 10 06    	movzbl 0x6(%r8,%r10,1),%r11d
   180001bd6:	46 88 5c 12 06       	mov    %r11b,0x6(%rdx,%r10,1)
   180001bdb:	47 0f b6 5c 10 07    	movzbl 0x7(%r8,%r10,1),%r11d
   180001be1:	46 88 5c 12 07       	mov    %r11b,0x7(%rdx,%r10,1)
   180001be6:	49 83 c2 08          	add    $0x8,%r10
   180001bea:	4d 39 d1             	cmp    %r10,%r9
   180001bed:	75 a1                	jne    0x180001b90
   180001bef:	4c 01 74 24 60       	add    %r14,0x60(%rsp)
   180001bf4:	ff c0                	inc    %eax
   180001bf6:	89 05 8c 66 00 00    	mov    %eax,0x668c(%rip)        # 0x180008288
   180001bfc:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   180001c01:	48 01 d9             	add    %rbx,%rcx
   180001c04:	4c 89 f2             	mov    %r14,%rdx
   180001c07:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180001c0d:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   180001c12:	ff 15 d8 5d 00 00    	call   *0x5dd8(%rip)        # 0x1800079f0
   180001c18:	48 8b 05 01 64 00 00 	mov    0x6401(%rip),%rax        # 0x180008020
   180001c1f:	48 8d 0c 18          	lea    (%rax,%rbx,1),%rcx
   180001c23:	45 85 f6             	test   %r14d,%r14d
   180001c26:	0f 84 b4 fc ff ff    	je     0x1800018e0
   180001c2c:	41 83 fe 08          	cmp    $0x8,%r14d
   180001c30:	72 15                	jb     0x180001c47
   180001c32:	48 8d 14 18          	lea    (%rax,%rbx,1),%rdx
   180001c36:	48 29 f2             	sub    %rsi,%rdx
   180001c39:	48 83 c2 f7          	add    $0xfffffffffffffff7,%rdx
   180001c3d:	48 83 fa 20          	cmp    $0x20,%rdx
   180001c41:	0f 83 bd 00 00 00    	jae    0x180001d04
   180001c47:	48 89 c8             	mov    %rcx,%rax
   180001c4a:	4c 89 ea             	mov    %r13,%rdx
   180001c4d:	4d 89 f0             	mov    %r14,%r8
   180001c50:	4d 89 c1             	mov    %r8,%r9
   180001c53:	49 83 e1 07          	and    $0x7,%r9
   180001c57:	74 26                	je     0x180001c7f
   180001c59:	45 31 d2             	xor    %r10d,%r10d
   180001c5c:	0f 1f 40 00          	nopl   0x0(%rax)
   180001c60:	46 0f b6 1c 12       	movzbl (%rdx,%r10,1),%r11d
   180001c65:	46 88 1c 10          	mov    %r11b,(%rax,%r10,1)
   180001c69:	49 ff c2             	inc    %r10
   180001c6c:	4d 39 d1             	cmp    %r10,%r9
   180001c6f:	75 ef                	jne    0x180001c60
   180001c71:	4c 01 d0             	add    %r10,%rax
   180001c74:	4c 01 d2             	add    %r10,%rdx
   180001c77:	4d 89 c1             	mov    %r8,%r9
   180001c7a:	4d 29 d1             	sub    %r10,%r9
   180001c7d:	eb 03                	jmp    0x180001c82
   180001c7f:	4d 89 c1             	mov    %r8,%r9
   180001c82:	49 ff c8             	dec    %r8
   180001c85:	49 83 f8 07          	cmp    $0x7,%r8
   180001c89:	0f 82 51 fc ff ff    	jb     0x1800018e0
   180001c8f:	45 31 c0             	xor    %r8d,%r8d
   180001c92:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001c99:	1f 84 00 00 00 00 00 
   180001ca0:	46 0f b6 14 02       	movzbl (%rdx,%r8,1),%r10d
   180001ca5:	46 88 14 00          	mov    %r10b,(%rax,%r8,1)
   180001ca9:	46 0f b6 54 02 01    	movzbl 0x1(%rdx,%r8,1),%r10d
   180001caf:	46 88 54 00 01       	mov    %r10b,0x1(%rax,%r8,1)
   180001cb4:	46 0f b6 54 02 02    	movzbl 0x2(%rdx,%r8,1),%r10d
   180001cba:	46 88 54 00 02       	mov    %r10b,0x2(%rax,%r8,1)
   180001cbf:	46 0f b6 54 02 03    	movzbl 0x3(%rdx,%r8,1),%r10d
   180001cc5:	46 88 54 00 03       	mov    %r10b,0x3(%rax,%r8,1)
   180001cca:	46 0f b6 54 02 04    	movzbl 0x4(%rdx,%r8,1),%r10d
   180001cd0:	46 88 54 00 04       	mov    %r10b,0x4(%rax,%r8,1)
   180001cd5:	46 0f b6 54 02 05    	movzbl 0x5(%rdx,%r8,1),%r10d
   180001cdb:	46 88 54 00 05       	mov    %r10b,0x5(%rax,%r8,1)
   180001ce0:	46 0f b6 54 02 06    	movzbl 0x6(%rdx,%r8,1),%r10d
   180001ce6:	46 88 54 00 06       	mov    %r10b,0x6(%rax,%r8,1)
   180001ceb:	46 0f b6 54 02 07    	movzbl 0x7(%rdx,%r8,1),%r10d
   180001cf1:	46 88 54 00 07       	mov    %r10b,0x7(%rax,%r8,1)
   180001cf6:	49 83 c0 08          	add    $0x8,%r8
   180001cfa:	4d 39 c1             	cmp    %r8,%r9
   180001cfd:	75 a1                	jne    0x180001ca0
   180001cff:	e9 dc fb ff ff       	jmp    0x1800018e0
   180001d04:	41 83 fe 20          	cmp    $0x20,%r14d
   180001d08:	73 05                	jae    0x180001d0f
   180001d0a:	45 31 c9             	xor    %r9d,%r9d
   180001d0d:	eb 40                	jmp    0x180001d4f
   180001d0f:	45 89 f1             	mov    %r14d,%r9d
   180001d12:	41 83 e1 e0          	and    $0xffffffe0,%r9d
   180001d16:	48 01 d8             	add    %rbx,%rax
   180001d19:	48 83 c0 10          	add    $0x10,%rax
   180001d1d:	31 d2                	xor    %edx,%edx
   180001d1f:	90                   	nop
   180001d20:	0f 10 44 16 09       	movups 0x9(%rsi,%rdx,1),%xmm0
   180001d25:	0f 10 4c 16 19       	movups 0x19(%rsi,%rdx,1),%xmm1
   180001d2a:	0f 11 44 10 f0       	movups %xmm0,-0x10(%rax,%rdx,1)
   180001d2f:	0f 11 0c 10          	movups %xmm1,(%rax,%rdx,1)
   180001d33:	48 83 c2 20          	add    $0x20,%rdx
   180001d37:	49 39 d1             	cmp    %rdx,%r9
   180001d3a:	75 e4                	jne    0x180001d20
   180001d3c:	4d 39 ce             	cmp    %r9,%r14
   180001d3f:	0f 84 9b fb ff ff    	je     0x1800018e0
   180001d45:	41 f6 c6 18          	test   $0x18,%r14b
   180001d49:	0f 84 8a 01 00 00    	je     0x180001ed9
   180001d4f:	45 89 f2             	mov    %r14d,%r10d
   180001d52:	41 83 e2 f8          	and    $0xfffffff8,%r10d
   180001d56:	4a 8d 04 11          	lea    (%rcx,%r10,1),%rax
   180001d5a:	4b 8d 14 2a          	lea    (%r10,%r13,1),%rdx
   180001d5e:	45 89 f0             	mov    %r14d,%r8d
   180001d61:	41 83 e0 07          	and    $0x7,%r8d
   180001d65:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   180001d6c:	00 00 00 00 
   180001d70:	4f 8b 5c 0d 00       	mov    0x0(%r13,%r9,1),%r11
   180001d75:	4e 89 1c 09          	mov    %r11,(%rcx,%r9,1)
   180001d79:	49 83 c1 08          	add    $0x8,%r9
   180001d7d:	4d 39 ca             	cmp    %r9,%r10
   180001d80:	75 ee                	jne    0x180001d70
   180001d82:	4d 39 d6             	cmp    %r10,%r14
   180001d85:	0f 84 55 fb ff ff    	je     0x1800018e0
   180001d8b:	e9 c0 fe ff ff       	jmp    0x180001c50
   180001d90:	41 83 fe 20          	cmp    $0x20,%r14d
   180001d94:	0f 83 96 00 00 00    	jae    0x180001e30
   180001d9a:	31 db                	xor    %ebx,%ebx
   180001d9c:	e9 ed 00 00 00       	jmp    0x180001e8e
   180001da1:	45 89 f0             	mov    %r14d,%r8d
   180001da4:	41 83 e0 e0          	and    $0xffffffe0,%r8d
   180001da8:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   180001daf:	00 
   180001db0:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   180001db5:	48 01 c8             	add    %rcx,%rax
   180001db8:	31 c9                	xor    %ecx,%ecx
   180001dba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   180001dc0:	0f 10 44 0e 09       	movups 0x9(%rsi,%rcx,1),%xmm0
   180001dc5:	0f 10 4c 0e 19       	movups 0x19(%rsi,%rcx,1),%xmm1
   180001dca:	0f 11 44 08 f0       	movups %xmm0,-0x10(%rax,%rcx,1)
   180001dcf:	0f 11 0c 08          	movups %xmm1,(%rax,%rcx,1)
   180001dd3:	48 83 c1 20          	add    $0x20,%rcx
   180001dd7:	49 39 c8             	cmp    %rcx,%r8
   180001dda:	75 e4                	jne    0x180001dc0
   180001ddc:	4d 39 f0             	cmp    %r14,%r8
   180001ddf:	0f 84 1a fd ff ff    	je     0x180001aff
   180001de5:	41 f6 c6 18          	test   $0x18,%r14b
   180001de9:	0f 84 02 01 00 00    	je     0x180001ef1
   180001def:	45 89 f1             	mov    %r14d,%r9d
   180001df2:	41 83 e1 f8          	and    $0xfffffff8,%r9d
   180001df6:	4a 8d 04 0b          	lea    (%rbx,%r9,1),%rax
   180001dfa:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
   180001dfe:	44 89 f2             	mov    %r14d,%edx
   180001e01:	83 e2 07             	and    $0x7,%edx
   180001e04:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001e0b:	00 00 00 00 00 
   180001e10:	4f 8b 54 05 00       	mov    0x0(%r13,%r8,1),%r10
   180001e15:	4e 89 14 03          	mov    %r10,(%rbx,%r8,1)
   180001e19:	49 83 c0 08          	add    $0x8,%r8
   180001e1d:	4d 39 c1             	cmp    %r8,%r9
   180001e20:	75 ee                	jne    0x180001e10
   180001e22:	4d 39 f1             	cmp    %r14,%r9
   180001e25:	0f 85 37 fc ff ff    	jne    0x180001a62
   180001e2b:	e9 cf fc ff ff       	jmp    0x180001aff
   180001e30:	44 89 f3             	mov    %r14d,%ebx
   180001e33:	83 e3 e0             	and    $0xffffffe0,%ebx
   180001e36:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
   180001e3b:	48 01 ca             	add    %rcx,%rdx
   180001e3e:	48 83 c2 10          	add    $0x10,%rdx
   180001e42:	4c 8b 84 24 90 00 00 	mov    0x90(%rsp),%r8
   180001e49:	00 
   180001e4a:	4c 8b 5c 24 60       	mov    0x60(%rsp),%r11
   180001e4f:	4d 01 d8             	add    %r11,%r8
   180001e52:	45 31 db             	xor    %r11d,%r11d
   180001e55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   180001e5c:	00 00 00 00 
   180001e60:	42 0f 10 44 1a f0    	movups -0x10(%rdx,%r11,1),%xmm0
   180001e66:	42 0f 10 0c 1a       	movups (%rdx,%r11,1),%xmm1
   180001e6b:	43 0f 11 44 18 f0    	movups %xmm0,-0x10(%r8,%r11,1)
   180001e71:	43 0f 11 0c 18       	movups %xmm1,(%r8,%r11,1)
   180001e76:	49 83 c3 20          	add    $0x20,%r11
   180001e7a:	4c 39 db             	cmp    %r11,%rbx
   180001e7d:	75 e1                	jne    0x180001e60
   180001e7f:	4c 39 f3             	cmp    %r14,%rbx
   180001e82:	0f 84 67 fd ff ff    	je     0x180001bef
   180001e88:	41 f6 c6 18          	test   $0x18,%r14b
   180001e8c:	74 7a                	je     0x180001f08
   180001e8e:	45 89 f7             	mov    %r14d,%r15d
   180001e91:	41 83 e7 f8          	and    $0xfffffff8,%r15d
   180001e95:	4b 8d 14 39          	lea    (%r9,%r15,1),%rdx
   180001e99:	4f 8d 04 3a          	lea    (%r10,%r15,1),%r8
   180001e9d:	45 89 f3             	mov    %r14d,%r11d
   180001ea0:	41 83 e3 07          	and    $0x7,%r11d
   180001ea4:	4c 89 5c 24 78       	mov    %r11,0x78(%rsp)
   180001ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180001eb0:	4d 8b 1c 1a          	mov    (%r10,%rbx,1),%r11
   180001eb4:	4d 89 1c 19          	mov    %r11,(%r9,%rbx,1)
   180001eb8:	48 83 c3 08          	add    $0x8,%rbx
   180001ebc:	49 39 df             	cmp    %rbx,%r15
   180001ebf:	75 ef                	jne    0x180001eb0
   180001ec1:	4d 39 f7             	cmp    %r14,%r15
   180001ec4:	44 8b 7c 24 5c       	mov    0x5c(%rsp),%r15d
   180001ec9:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
   180001ece:	0f 85 f5 fa ff ff    	jne    0x1800019c9
   180001ed4:	e9 16 fd ff ff       	jmp    0x180001bef
   180001ed9:	45 89 f0             	mov    %r14d,%r8d
   180001edc:	41 83 e0 1f          	and    $0x1f,%r8d
   180001ee0:	4d 01 cd             	add    %r9,%r13
   180001ee3:	49 01 c9             	add    %rcx,%r9
   180001ee6:	4c 89 c8             	mov    %r9,%rax
   180001ee9:	4c 89 ea             	mov    %r13,%rdx
   180001eec:	e9 5f fd ff ff       	jmp    0x180001c50
   180001ef1:	44 89 f2             	mov    %r14d,%edx
   180001ef4:	83 e2 1f             	and    $0x1f,%edx
   180001ef7:	4d 01 c5             	add    %r8,%r13
   180001efa:	49 01 d8             	add    %rbx,%r8
   180001efd:	4c 89 c0             	mov    %r8,%rax
   180001f00:	4c 89 e9             	mov    %r13,%rcx
   180001f03:	e9 5a fb ff ff       	jmp    0x180001a62
   180001f08:	44 89 f2             	mov    %r14d,%edx
   180001f0b:	83 e2 1f             	and    $0x1f,%edx
   180001f0e:	49 01 da             	add    %rbx,%r10
   180001f11:	49 01 d9             	add    %rbx,%r9
   180001f14:	48 89 d3             	mov    %rdx,%rbx
   180001f17:	4c 89 ca             	mov    %r9,%rdx
   180001f1a:	4d 89 d0             	mov    %r10,%r8
   180001f1d:	e9 a7 fa ff ff       	jmp    0x1800019c9
   180001f22:	48 8b 0d 57 63 00 00 	mov    0x6357(%rip),%rcx        # 0x180008280
   180001f29:	48 85 c9             	test   %rcx,%rcx
   180001f2c:	74 21                	je     0x180001f4f
   180001f2e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180001f35:	00 00 
   180001f37:	48 8d 15 05 56 00 00 	lea    0x5605(%rip),%rdx        # 0x180007543
   180001f3e:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   180001f43:	41 b8 12 00 00 00    	mov    $0x12,%r8d
   180001f49:	ff 15 b1 5a 00 00    	call   *0x5ab1(%rip)        # 0x180007a00
   180001f4f:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
   180001f56:	ff ff ff 
   180001f59:	48 be 00 00 00 00 0f 	movabs $0xf00000000,%rsi
   180001f60:	00 00 00 
   180001f63:	c6 44 24 4f 00       	movb   $0x0,0x4f(%rsp)
   180001f68:	85 ed                	test   %ebp,%ebp
   180001f6a:	74 48                	je     0x180001fb4
   180001f6c:	48 8d 4c 24 4e       	lea    0x4e(%rsp),%rcx
   180001f71:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
   180001f76:	48 89 f0             	mov    %rsi,%rax
   180001f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180001f80:	41 89 e8             	mov    %ebp,%r8d
   180001f83:	4c 0f af c2          	imul   %rdx,%r8
   180001f87:	49 c1 e8 23          	shr    $0x23,%r8
   180001f8b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   180001f8f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180001f93:	41 89 ea             	mov    %ebp,%r10d
   180001f96:	45 29 ca             	sub    %r9d,%r10d
   180001f99:	41 80 ca 30          	or     $0x30,%r10b
   180001f9d:	44 88 11             	mov    %r10b,(%rcx)
   180001fa0:	48 01 f8             	add    %rdi,%rax
   180001fa3:	48 ff c9             	dec    %rcx
   180001fa6:	83 fd 09             	cmp    $0x9,%ebp
   180001fa9:	44 89 c5             	mov    %r8d,%ebp
   180001fac:	77 d2                	ja     0x180001f80
   180001fae:	48 c1 f8 20          	sar    $0x20,%rax
   180001fb2:	eb 0a                	jmp    0x180001fbe
   180001fb4:	c6 44 24 4e 30       	movb   $0x30,0x4e(%rsp)
   180001fb9:	b8 0e 00 00 00       	mov    $0xe,%eax
   180001fbe:	48 8b 0d bb 62 00 00 	mov    0x62bb(%rip),%rcx        # 0x180008280
   180001fc5:	48 85 c9             	test   %rcx,%rcx
   180001fc8:	74 64                	je     0x18000202e
   180001fca:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   180001fce:	48 83 c2 40          	add    $0x40,%rdx
   180001fd2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180001fd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180001fdf:	00 
   180001fe0:	41 ff c0             	inc    %r8d
   180001fe3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180001fe8:	75 f6                	jne    0x180001fe0
   180001fea:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180001ff1:	00 00 
   180001ff3:	4c 8d 8c 24 84 00 00 	lea    0x84(%rsp),%r9
   180001ffa:	00 
   180001ffb:	ff 15 ff 59 00 00    	call   *0x59ff(%rip)        # 0x180007a00
   180002001:	48 8b 0d 78 62 00 00 	mov    0x6278(%rip),%rcx        # 0x180008280
   180002008:	48 85 c9             	test   %rcx,%rcx
   18000200b:	74 21                	je     0x18000202e
   18000200d:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002014:	00 00 
   180002016:	48 8d 15 39 55 00 00 	lea    0x5539(%rip),%rdx        # 0x180007556
   18000201d:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   180002022:	41 b8 0d 00 00 00    	mov    $0xd,%r8d
   180002028:	ff 15 d2 59 00 00    	call   *0x59d2(%rip)        # 0x180007a00
   18000202e:	c6 44 24 4f 00       	movb   $0x0,0x4f(%rsp)
   180002033:	45 85 e4             	test   %r12d,%r12d
   180002036:	74 4d                	je     0x180002085
   180002038:	48 8d 44 24 4e       	lea    0x4e(%rsp),%rax
   18000203d:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
   180002042:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002049:	1f 84 00 00 00 00 00 
   180002050:	44 89 e2             	mov    %r12d,%edx
   180002053:	48 0f af d1          	imul   %rcx,%rdx
   180002057:	48 c1 ea 23          	shr    $0x23,%rdx
   18000205b:	44 8d 04 12          	lea    (%rdx,%rdx,1),%r8d
   18000205f:	47 8d 04 80          	lea    (%r8,%r8,4),%r8d
   180002063:	45 89 e1             	mov    %r12d,%r9d
   180002066:	45 29 c1             	sub    %r8d,%r9d
   180002069:	41 80 c9 30          	or     $0x30,%r9b
   18000206d:	44 88 08             	mov    %r9b,(%rax)
   180002070:	48 01 fe             	add    %rdi,%rsi
   180002073:	48 ff c8             	dec    %rax
   180002076:	41 83 fc 09          	cmp    $0x9,%r12d
   18000207a:	41 89 d4             	mov    %edx,%r12d
   18000207d:	77 d1                	ja     0x180002050
   18000207f:	48 c1 fe 20          	sar    $0x20,%rsi
   180002083:	eb 0a                	jmp    0x18000208f
   180002085:	c6 44 24 4e 30       	movb   $0x30,0x4e(%rsp)
   18000208a:	be 0e 00 00 00       	mov    $0xe,%esi
   18000208f:	48 8b 0d ea 61 00 00 	mov    0x61ea(%rip),%rcx        # 0x180008280
   180002096:	48 85 c9             	test   %rcx,%rcx
   180002099:	0f 84 1e f8 ff ff    	je     0x1800018bd
   18000209f:	48 8d 14 34          	lea    (%rsp,%rsi,1),%rdx
   1800020a3:	48 83 c2 40          	add    $0x40,%rdx
   1800020a7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800020ad:	0f 1f 00             	nopl   (%rax)
   1800020b0:	41 ff c0             	inc    %r8d
   1800020b3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800020b8:	75 f6                	jne    0x1800020b0
   1800020ba:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800020c1:	00 00 
   1800020c3:	4c 8d 8c 24 84 00 00 	lea    0x84(%rsp),%r9
   1800020ca:	00 
   1800020cb:	ff 15 2f 59 00 00    	call   *0x592f(%rip)        # 0x180007a00
   1800020d1:	48 8b 0d a8 61 00 00 	mov    0x61a8(%rip),%rcx        # 0x180008280
   1800020d8:	48 85 c9             	test   %rcx,%rcx
   1800020db:	0f 84 dc f7 ff ff    	je     0x1800018bd
   1800020e1:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800020e8:	00 00 
   1800020ea:	48 8d 15 11 55 00 00 	lea    0x5511(%rip),%rdx        # 0x180007602
   1800020f1:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   1800020f6:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1800020fc:	e9 b6 f7 ff ff       	jmp    0x1800018b7
   180002101:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002108:	0f 1f 84 00 00 00 00 
   18000210f:	00 
   180002110:	41 56                	push   %r14
   180002112:	56                   	push   %rsi
   180002113:	57                   	push   %rdi
   180002114:	53                   	push   %rbx
   180002115:	48 83 ec 48          	sub    $0x48,%rsp
   180002119:	ff 15 99 58 00 00    	call   *0x5899(%rip)        # 0x1800079b8
   18000211f:	89 c6                	mov    %eax,%esi
   180002121:	48 8d 3d 08 5f 00 00 	lea    0x5f08(%rip),%rdi        # 0x180008030
   180002128:	48 8b 1d 89 58 00 00 	mov    0x5889(%rip),%rbx        # 0x1800079b8
   18000212f:	4c 8b 35 aa 58 00 00 	mov    0x58aa(%rip),%r14        # 0x1800079e0
   180002136:	48 8b 05 e3 5e 00 00 	mov    0x5ee3(%rip),%rax        # 0x180008020
   18000213d:	31 c9                	xor    %ecx,%ecx
   18000213f:	90                   	nop
   180002140:	0f b6 94 08 00 10 00 	movzbl 0x1000(%rax,%rcx,1),%edx
   180002147:	00 
   180002148:	3a 14 39             	cmp    (%rcx,%rdi,1),%dl
   18000214b:	75 5b                	jne    0x1800021a8
   18000214d:	0f b6 94 08 01 10 00 	movzbl 0x1001(%rax,%rcx,1),%edx
   180002154:	00 
   180002155:	3a 54 39 01          	cmp    0x1(%rcx,%rdi,1),%dl
   180002159:	75 4d                	jne    0x1800021a8
   18000215b:	0f b6 94 08 02 10 00 	movzbl 0x1002(%rax,%rcx,1),%edx
   180002162:	00 
   180002163:	3a 54 39 02          	cmp    0x2(%rcx,%rdi,1),%dl
   180002167:	75 3f                	jne    0x1800021a8
   180002169:	0f b6 94 08 03 10 00 	movzbl 0x1003(%rax,%rcx,1),%edx
   180002170:	00 
   180002171:	3a 54 39 03          	cmp    0x3(%rcx,%rdi,1),%dl
   180002175:	75 31                	jne    0x1800021a8
   180002177:	48 83 f9 3c          	cmp    $0x3c,%rcx
   18000217b:	74 17                	je     0x180002194
   18000217d:	0f b6 94 08 04 10 00 	movzbl 0x1004(%rax,%rcx,1),%edx
   180002184:	00 
   180002185:	4c 8d 41 05          	lea    0x5(%rcx),%r8
   180002189:	3a 54 39 04          	cmp    0x4(%rcx,%rdi,1),%dl
   18000218d:	4c 89 c1             	mov    %r8,%rcx
   180002190:	74 ae                	je     0x180002140
   180002192:	eb 14                	jmp    0x1800021a8
   180002194:	ff d3                	call   *%rbx
   180002196:	29 f0                	sub    %esi,%eax
   180002198:	3d c1 d4 01 00       	cmp    $0x1d4c1,%eax
   18000219d:	0f 83 66 01 00 00    	jae    0x180002309
   1800021a3:	41 ff d6             	call   *%r14
   1800021a6:	eb 8e                	jmp    0x180002136
   1800021a8:	48 8b 0d d1 60 00 00 	mov    0x60d1(%rip),%rcx        # 0x180008280
   1800021af:	48 85 c9             	test   %rcx,%rcx
   1800021b2:	74 21                	je     0x1800021d5
   1800021b4:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800021bb:	00 00 
   1800021bd:	48 8d 15 43 53 00 00 	lea    0x5343(%rip),%rdx        # 0x180007507
   1800021c4:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800021c9:	41 b8 1a 00 00 00    	mov    $0x1a,%r8d
   1800021cf:	ff 15 2b 58 00 00    	call   *0x582b(%rip)        # 0x180007a00
   1800021d5:	ff 15 dd 57 00 00    	call   *0x57dd(%rip)        # 0x1800079b8
   1800021db:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   1800021e0:	29 f0                	sub    %esi,%eax
   1800021e2:	74 5f                	je     0x180002243
   1800021e4:	48 ba 00 00 00 00 0f 	movabs $0xf00000000,%rdx
   1800021eb:	00 00 00 
   1800021ee:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   1800021f3:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
   1800021f9:	49 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%r9
   180002200:	ff ff ff 
   180002203:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000220a:	84 00 00 00 00 00 
   180002210:	4c 01 ca             	add    %r9,%rdx
   180002213:	41 89 c2             	mov    %eax,%r10d
   180002216:	4d 0f af d0          	imul   %r8,%r10
   18000221a:	49 c1 ea 23          	shr    $0x23,%r10
   18000221e:	47 8d 1c 12          	lea    (%r10,%r10,1),%r11d
   180002222:	47 8d 1c 9b          	lea    (%r11,%r11,4),%r11d
   180002226:	89 c6                	mov    %eax,%esi
   180002228:	44 29 de             	sub    %r11d,%esi
   18000222b:	40 80 ce 30          	or     $0x30,%sil
   18000222f:	40 88 31             	mov    %sil,(%rcx)
   180002232:	48 ff c9             	dec    %rcx
   180002235:	83 f8 09             	cmp    $0x9,%eax
   180002238:	44 89 d0             	mov    %r10d,%eax
   18000223b:	77 d3                	ja     0x180002210
   18000223d:	48 c1 fa 20          	sar    $0x20,%rdx
   180002241:	eb 0a                	jmp    0x18000224d
   180002243:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   180002248:	ba 0e 00 00 00       	mov    $0xe,%edx
   18000224d:	48 8b 0d 2c 60 00 00 	mov    0x602c(%rip),%rcx        # 0x180008280
   180002254:	48 85 c9             	test   %rcx,%rcx
   180002257:	74 62                	je     0x1800022bb
   180002259:	48 01 e2             	add    %rsp,%rdx
   18000225c:	48 83 c2 30          	add    $0x30,%rdx
   180002260:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180002266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   18000226d:	00 00 00 
   180002270:	41 ff c0             	inc    %r8d
   180002273:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180002278:	75 f6                	jne    0x180002270
   18000227a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002281:	00 00 
   180002283:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   180002288:	ff 15 72 57 00 00    	call   *0x5772(%rip)        # 0x180007a00
   18000228e:	48 8b 0d eb 5f 00 00 	mov    0x5feb(%rip),%rcx        # 0x180008280
   180002295:	48 85 c9             	test   %rcx,%rcx
   180002298:	74 21                	je     0x1800022bb
   18000229a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800022a1:	00 00 
   1800022a3:	48 8d 15 32 55 00 00 	lea    0x5532(%rip),%rdx        # 0x1800077dc
   1800022aa:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800022af:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1800022b5:	ff 15 45 57 00 00    	call   *0x5745(%rip)        # 0x180007a00
   1800022bb:	e8 40 d9 07 00       	call   0x18007fc00
   1800022c0:	48 8b 0d b9 5f 00 00 	mov    0x5fb9(%rip),%rcx        # 0x180008280
   1800022c7:	ff 15 a3 56 00 00    	call   *0x56a3(%rip)        # 0x180007970
   1800022cd:	48 c7 05 a8 5f 00 00 	movq   $0x0,0x5fa8(%rip)        # 0x180008280
   1800022d4:	00 00 00 00 
   1800022d8:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
   1800022df:	00 00 
   1800022e1:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
   1800022e8:	00 
   1800022e9:	4c 8d 05 50 00 00 00 	lea    0x50(%rip),%r8        # 0x180002340
   1800022f0:	31 c9                	xor    %ecx,%ecx
   1800022f2:	31 d2                	xor    %edx,%edx
   1800022f4:	45 31 c9             	xor    %r9d,%r9d
   1800022f7:	ff 15 83 56 00 00    	call   *0x5683(%rip)        # 0x180007980
   1800022fd:	31 c0                	xor    %eax,%eax
   1800022ff:	48 83 c4 48          	add    $0x48,%rsp
   180002303:	5b                   	pop    %rbx
   180002304:	5f                   	pop    %rdi
   180002305:	5e                   	pop    %rsi
   180002306:	41 5e                	pop    %r14
   180002308:	c3                   	ret    
   180002309:	48 8b 0d 70 5f 00 00 	mov    0x5f70(%rip),%rcx        # 0x180008280
   180002310:	48 85 c9             	test   %rcx,%rcx
   180002313:	74 e8                	je     0x1800022fd
   180002315:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000231c:	00 00 
   18000231e:	48 8d 15 4c 52 00 00 	lea    0x524c(%rip),%rdx        # 0x180007571
   180002325:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000232a:	41 b8 20 00 00 00    	mov    $0x20,%r8d
   180002330:	ff 15 ca 56 00 00    	call   *0x56ca(%rip)        # 0x180007a00
   180002336:	eb c5                	jmp    0x1800022fd
   180002338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000233f:	00 
   180002340:	41 57                	push   %r15
   180002342:	41 56                	push   %r14
   180002344:	41 55                	push   %r13
   180002346:	41 54                	push   %r12
   180002348:	56                   	push   %rsi
   180002349:	57                   	push   %rdi
   18000234a:	55                   	push   %rbp
   18000234b:	53                   	push   %rbx
   18000234c:	48 81 ec a8 07 00 00 	sub    $0x7a8,%rsp
   180002353:	44 0f 29 a4 24 90 07 	movaps %xmm12,0x790(%rsp)
   18000235a:	00 00 
   18000235c:	44 0f 29 9c 24 80 07 	movaps %xmm11,0x780(%rsp)
   180002363:	00 00 
   180002365:	44 0f 29 94 24 70 07 	movaps %xmm10,0x770(%rsp)
   18000236c:	00 00 
   18000236e:	44 0f 29 8c 24 60 07 	movaps %xmm9,0x760(%rsp)
   180002375:	00 00 
   180002377:	44 0f 29 84 24 50 07 	movaps %xmm8,0x750(%rsp)
   18000237e:	00 00 
   180002380:	0f 29 bc 24 40 07 00 	movaps %xmm7,0x740(%rsp)
   180002387:	00 
   180002388:	0f 29 b4 24 30 07 00 	movaps %xmm6,0x730(%rsp)
   18000238f:	00 
   180002390:	8b 05 e2 5e 00 00    	mov    0x5ee2(%rip),%eax        # 0x180008278
   180002396:	48 85 c0             	test   %rax,%rax
   180002399:	74 0c                	je     0x1800023a7
   18000239b:	83 f8 08             	cmp    $0x8,%eax
   18000239e:	73 0e                	jae    0x1800023ae
   1800023a0:	31 c9                	xor    %ecx,%ecx
   1800023a2:	e9 86 00 00 00       	jmp    0x18000242d
   1800023a7:	31 d2                	xor    %edx,%edx
   1800023a9:	e9 aa 00 00 00       	jmp    0x180002458
   1800023ae:	83 f8 20             	cmp    $0x20,%eax
   1800023b1:	73 04                	jae    0x1800023b7
   1800023b3:	31 c9                	xor    %ecx,%ecx
   1800023b5:	eb 49                	jmp    0x180002400
   1800023b7:	89 c1                	mov    %eax,%ecx
   1800023b9:	83 e1 e0             	and    $0xffffffe0,%ecx
   1800023bc:	31 d2                	xor    %edx,%edx
   1800023be:	4c 8d 05 ab 5c 00 00 	lea    0x5cab(%rip),%r8        # 0x180008070
   1800023c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1800023cc:	00 00 00 00 
   1800023d0:	42 0f 28 04 02       	movaps (%rdx,%r8,1),%xmm0
   1800023d5:	42 0f 28 4c 02 10    	movaps 0x10(%rdx,%r8,1),%xmm1
   1800023db:	0f 29 84 14 d0 04 00 	movaps %xmm0,0x4d0(%rsp,%rdx,1)
   1800023e2:	00 
   1800023e3:	0f 29 8c 14 e0 04 00 	movaps %xmm1,0x4e0(%rsp,%rdx,1)
   1800023ea:	00 
   1800023eb:	48 83 c2 20          	add    $0x20,%rdx
   1800023ef:	48 39 d1             	cmp    %rdx,%rcx
   1800023f2:	75 dc                	jne    0x1800023d0
   1800023f4:	48 89 c2             	mov    %rax,%rdx
   1800023f7:	48 39 c1             	cmp    %rax,%rcx
   1800023fa:	74 5c                	je     0x180002458
   1800023fc:	a8 18                	test   $0x18,%al
   1800023fe:	74 2d                	je     0x18000242d
   180002400:	48 89 ca             	mov    %rcx,%rdx
   180002403:	89 c1                	mov    %eax,%ecx
   180002405:	83 e1 f8             	and    $0xfffffff8,%ecx
   180002408:	4c 8d 05 61 5c 00 00 	lea    0x5c61(%rip),%r8        # 0x180008070
   18000240f:	90                   	nop
   180002410:	4e 8b 0c 02          	mov    (%rdx,%r8,1),%r9
   180002414:	4c 89 8c 14 d0 04 00 	mov    %r9,0x4d0(%rsp,%rdx,1)
   18000241b:	00 
   18000241c:	48 83 c2 08          	add    $0x8,%rdx
   180002420:	48 39 d1             	cmp    %rdx,%rcx
   180002423:	75 eb                	jne    0x180002410
   180002425:	48 89 c2             	mov    %rax,%rdx
   180002428:	48 39 c1             	cmp    %rax,%rcx
   18000242b:	74 2b                	je     0x180002458
   18000242d:	48 8d 15 3c 5c 00 00 	lea    0x5c3c(%rip),%rdx        # 0x180008070
   180002434:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000243b:	00 00 00 00 00 
   180002440:	44 0f b6 04 11       	movzbl (%rcx,%rdx,1),%r8d
   180002445:	44 88 84 0c d0 04 00 	mov    %r8b,0x4d0(%rsp,%rcx,1)
   18000244c:	00 
   18000244d:	48 ff c1             	inc    %rcx
   180002450:	48 39 c8             	cmp    %rcx,%rax
   180002453:	75 eb                	jne    0x180002440
   180002455:	48 89 c2             	mov    %rax,%rdx
   180002458:	8d 48 01             	lea    0x1(%rax),%ecx
   18000245b:	c6 84 14 d0 04 00 00 	movb   $0x57,0x4d0(%rsp,%rdx,1)
   180002462:	57 
   180002463:	8d 50 02             	lea    0x2(%rax),%edx
   180002466:	c6 84 0c d0 04 00 00 	movb   $0x50,0x4d0(%rsp,%rcx,1)
   18000246d:	50 
   18000246e:	8d 48 03             	lea    0x3(%rax),%ecx
   180002471:	c6 84 14 d0 04 00 00 	movb   $0x31,0x4d0(%rsp,%rdx,1)
   180002478:	31 
   180002479:	8d 50 04             	lea    0x4(%rax),%edx
   18000247c:	c6 84 0c d0 04 00 00 	movb   $0x30,0x4d0(%rsp,%rcx,1)
   180002483:	30 
   180002484:	8d 48 05             	lea    0x5(%rax),%ecx
   180002487:	c6 84 14 d0 04 00 00 	movb   $0x5f,0x4d0(%rsp,%rdx,1)
   18000248e:	5f 
   18000248f:	8d 50 06             	lea    0x6(%rax),%edx
   180002492:	c6 84 0c d0 04 00 00 	movb   $0x45,0x4d0(%rsp,%rcx,1)
   180002499:	45 
   18000249a:	8d 48 07             	lea    0x7(%rax),%ecx
   18000249d:	c6 84 14 d0 04 00 00 	movb   $0x4e,0x4d0(%rsp,%rdx,1)
   1800024a4:	4e 
   1800024a5:	8d 50 08             	lea    0x8(%rax),%edx
   1800024a8:	c6 84 0c d0 04 00 00 	movb   $0x5f,0x4d0(%rsp,%rcx,1)
   1800024af:	5f 
   1800024b0:	8d 48 09             	lea    0x9(%rax),%ecx
   1800024b3:	c6 84 14 d0 04 00 00 	movb   $0x6e,0x4d0(%rsp,%rdx,1)
   1800024ba:	6e 
   1800024bb:	8d 50 0a             	lea    0xa(%rax),%edx
   1800024be:	c6 84 0c d0 04 00 00 	movb   $0x61,0x4d0(%rsp,%rcx,1)
   1800024c5:	61 
   1800024c6:	8d 48 0b             	lea    0xb(%rax),%ecx
   1800024c9:	c6 84 14 d0 04 00 00 	movb   $0x6d,0x4d0(%rsp,%rdx,1)
   1800024d0:	6d 
   1800024d1:	8d 50 0c             	lea    0xc(%rax),%edx
   1800024d4:	c6 84 0c d0 04 00 00 	movb   $0x65,0x4d0(%rsp,%rcx,1)
   1800024db:	65 
   1800024dc:	8d 48 0d             	lea    0xd(%rax),%ecx
   1800024df:	c6 84 14 d0 04 00 00 	movb   $0x73,0x4d0(%rsp,%rdx,1)
   1800024e6:	73 
   1800024e7:	8d 50 0e             	lea    0xe(%rax),%edx
   1800024ea:	c6 84 0c d0 04 00 00 	movb   $0x2e,0x4d0(%rsp,%rcx,1)
   1800024f1:	2e 
   1800024f2:	8d 48 0f             	lea    0xf(%rax),%ecx
   1800024f5:	c6 84 14 d0 04 00 00 	movb   $0x6c,0x4d0(%rsp,%rdx,1)
   1800024fc:	6c 
   1800024fd:	8d 50 10             	lea    0x10(%rax),%edx
   180002500:	c6 84 0c d0 04 00 00 	movb   $0x6f,0x4d0(%rsp,%rcx,1)
   180002507:	6f 
   180002508:	83 c0 11             	add    $0x11,%eax
   18000250b:	c6 84 14 d0 04 00 00 	movb   $0x67,0x4d0(%rsp,%rdx,1)
   180002512:	67 
   180002513:	c6 84 04 d0 04 00 00 	movb   $0x0,0x4d0(%rsp,%rax,1)
   18000251a:	00 
   18000251b:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   180002522:	00 00 
   180002524:	c7 44 24 28 80 00 00 	movl   $0x80,0x28(%rsp)
   18000252b:	00 
   18000252c:	c7 44 24 20 02 00 00 	movl   $0x2,0x20(%rsp)
   180002533:	00 
   180002534:	48 8d 8c 24 d0 04 00 	lea    0x4d0(%rsp),%rcx
   18000253b:	00 
   18000253c:	ba 00 00 00 40       	mov    $0x40000000,%edx
   180002541:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180002547:	45 31 c9             	xor    %r9d,%r9d
   18000254a:	ff 15 28 54 00 00    	call   *0x5428(%rip)        # 0x180007978
   180002550:	48 89 05 29 5d 00 00 	mov    %rax,0x5d29(%rip)        # 0x180008280
   180002557:	48 85 c0             	test   %rax,%rax
   18000255a:	74 3c                	je     0x180002598
   18000255c:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180002562:	48 8d 0d b1 51 00 00 	lea    0x51b1(%rip),%rcx        # 0x18000771a
   180002569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180002570:	41 ff c0             	inc    %r8d
   180002573:	41 80 3c 08 00       	cmpb   $0x0,(%r8,%rcx,1)
   180002578:	75 f6                	jne    0x180002570
   18000257a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002581:	00 00 
   180002583:	48 8d 15 90 51 00 00 	lea    0x5190(%rip),%rdx        # 0x18000771a
   18000258a:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
   18000258f:	48 89 c1             	mov    %rax,%rcx
   180002592:	ff 15 68 54 00 00    	call   *0x5468(%rip)        # 0x180007a00
   180002598:	c7 05 ee af 07 00 01 	movl   $0x1,0x7afee(%rip)        # 0x18007d590
   18000259f:	00 00 00 
   1800025a2:	4c 8b 35 77 5a 00 00 	mov    0x5a77(%rip),%r14        # 0x180008020
   1800025a9:	49 8d b6 d8 30 a0 02 	lea    0x2a030d8(%r14),%rsi
   1800025b0:	49 8b 86 d8 30 a0 02 	mov    0x2a030d8(%r14),%rax
   1800025b7:	48 89 05 fa b1 07 00 	mov    %rax,0x7b1fa(%rip)        # 0x18007d7b8
   1800025be:	48 8b 1d 2b 54 00 00 	mov    0x542b(%rip),%rbx        # 0x1800079f0
   1800025c5:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   1800025ca:	ba 08 00 00 00       	mov    $0x8,%edx
   1800025cf:	48 89 f1             	mov    %rsi,%rcx
   1800025d2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1800025d8:	49 89 f9             	mov    %rdi,%r9
   1800025db:	ff d3                	call   *%rbx
   1800025dd:	48 8d 05 bc 33 00 00 	lea    0x33bc(%rip),%rax        # 0x1800059a0
   1800025e4:	49 89 86 d8 30 a0 02 	mov    %rax,0x2a030d8(%r14)
   1800025eb:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   1800025f0:	ba 08 00 00 00       	mov    $0x8,%edx
   1800025f5:	48 89 f1             	mov    %rsi,%rcx
   1800025f8:	49 89 f9             	mov    %rdi,%r9
   1800025fb:	ff d3                	call   *%rbx
   1800025fd:	4c 8b 35 1c 5a 00 00 	mov    0x5a1c(%rip),%r14        # 0x180008020
   180002604:	49 8d b6 c8 30 a0 02 	lea    0x2a030c8(%r14),%rsi
   18000260b:	49 8b 86 c8 30 a0 02 	mov    0x2a030c8(%r14),%rax
   180002612:	48 89 05 a7 b1 07 00 	mov    %rax,0x7b1a7(%rip)        # 0x18007d7c0
   180002619:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   18000261e:	ba 08 00 00 00       	mov    $0x8,%edx
   180002623:	48 89 f1             	mov    %rsi,%rcx
   180002626:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   18000262c:	49 89 f9             	mov    %rdi,%r9
   18000262f:	ff d3                	call   *%rbx
   180002631:	48 8d 05 88 33 00 00 	lea    0x3388(%rip),%rax        # 0x1800059c0
   180002638:	49 89 86 c8 30 a0 02 	mov    %rax,0x2a030c8(%r14)
   18000263f:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   180002644:	ba 08 00 00 00       	mov    $0x8,%edx
   180002649:	48 89 f1             	mov    %rsi,%rcx
   18000264c:	49 89 f9             	mov    %rdi,%r9
   18000264f:	ff d3                	call   *%rbx
   180002651:	4c 8b 35 c8 59 00 00 	mov    0x59c8(%rip),%r14        # 0x180008020
   180002658:	49 8d b6 e8 30 a0 02 	lea    0x2a030e8(%r14),%rsi
   18000265f:	49 8b 86 e8 30 a0 02 	mov    0x2a030e8(%r14),%rax
   180002666:	48 89 05 5b b1 07 00 	mov    %rax,0x7b15b(%rip)        # 0x18007d7c8
   18000266d:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   180002672:	ba 08 00 00 00       	mov    $0x8,%edx
   180002677:	48 89 f1             	mov    %rsi,%rcx
   18000267a:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180002680:	49 89 f9             	mov    %rdi,%r9
   180002683:	ff d3                	call   *%rbx
   180002685:	48 8d 05 74 33 00 00 	lea    0x3374(%rip),%rax        # 0x180005a00
   18000268c:	49 89 86 e8 30 a0 02 	mov    %rax,0x2a030e8(%r14)
   180002693:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   180002698:	ba 08 00 00 00       	mov    $0x8,%edx
   18000269d:	48 89 f1             	mov    %rsi,%rcx
   1800026a0:	49 89 f9             	mov    %rdi,%r9
   1800026a3:	ff d3                	call   *%rbx
   1800026a5:	4c 8b 35 74 59 00 00 	mov    0x5974(%rip),%r14        # 0x180008020
   1800026ac:	49 8d b6 f0 31 a0 02 	lea    0x2a031f0(%r14),%rsi
   1800026b3:	49 8b 86 f0 31 a0 02 	mov    0x2a031f0(%r14),%rax
   1800026ba:	48 89 05 0f b1 07 00 	mov    %rax,0x7b10f(%rip)        # 0x18007d7d0
   1800026c1:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   1800026c6:	ba 08 00 00 00       	mov    $0x8,%edx
   1800026cb:	48 89 f1             	mov    %rsi,%rcx
   1800026ce:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1800026d4:	49 89 f9             	mov    %rdi,%r9
   1800026d7:	ff d3                	call   *%rbx
   1800026d9:	48 8d 05 50 33 00 00 	lea    0x3350(%rip),%rax        # 0x180005a30
   1800026e0:	49 89 86 f0 31 a0 02 	mov    %rax,0x2a031f0(%r14)
   1800026e7:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   1800026ec:	ba 08 00 00 00       	mov    $0x8,%edx
   1800026f1:	48 89 f1             	mov    %rsi,%rcx
   1800026f4:	49 89 f9             	mov    %rdi,%r9
   1800026f7:	ff d3                	call   *%rbx
   1800026f9:	4c 8b 35 20 59 00 00 	mov    0x5920(%rip),%r14        # 0x180008020
   180002700:	49 8d b6 f8 31 a0 02 	lea    0x2a031f8(%r14),%rsi
   180002707:	49 8b 86 f8 31 a0 02 	mov    0x2a031f8(%r14),%rax
   18000270e:	48 89 05 c3 b0 07 00 	mov    %rax,0x7b0c3(%rip)        # 0x18007d7d8
   180002715:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   18000271a:	ba 08 00 00 00       	mov    $0x8,%edx
   18000271f:	48 89 f1             	mov    %rsi,%rcx
   180002722:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180002728:	49 89 f9             	mov    %rdi,%r9
   18000272b:	ff d3                	call   *%rbx
   18000272d:	48 8d 05 1c 33 00 00 	lea    0x331c(%rip),%rax        # 0x180005a50
   180002734:	49 89 86 f8 31 a0 02 	mov    %rax,0x2a031f8(%r14)
   18000273b:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   180002740:	ba 08 00 00 00       	mov    $0x8,%edx
   180002745:	48 89 f1             	mov    %rsi,%rcx
   180002748:	49 89 f9             	mov    %rdi,%r9
   18000274b:	ff d3                	call   *%rbx
   18000274d:	4c 8b 35 cc 58 00 00 	mov    0x58cc(%rip),%r14        # 0x180008020
   180002754:	49 8d b6 d8 38 a0 02 	lea    0x2a038d8(%r14),%rsi
   18000275b:	49 8b 86 d8 38 a0 02 	mov    0x2a038d8(%r14),%rax
   180002762:	48 89 05 77 b0 07 00 	mov    %rax,0x7b077(%rip)        # 0x18007d7e0
   180002769:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   18000276e:	ba 08 00 00 00       	mov    $0x8,%edx
   180002773:	48 89 f1             	mov    %rsi,%rcx
   180002776:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   18000277c:	49 89 f9             	mov    %rdi,%r9
   18000277f:	ff d3                	call   *%rbx
   180002781:	48 8d 05 08 33 00 00 	lea    0x3308(%rip),%rax        # 0x180005a90
   180002788:	49 89 86 d8 38 a0 02 	mov    %rax,0x2a038d8(%r14)
   18000278f:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   180002794:	ba 08 00 00 00       	mov    $0x8,%edx
   180002799:	48 89 f1             	mov    %rsi,%rcx
   18000279c:	49 89 f9             	mov    %rdi,%r9
   18000279f:	ff d3                	call   *%rbx
   1800027a1:	4c 8b 35 78 58 00 00 	mov    0x5878(%rip),%r14        # 0x180008020
   1800027a8:	49 8d b6 c0 30 a0 02 	lea    0x2a030c0(%r14),%rsi
   1800027af:	49 8b 86 c0 30 a0 02 	mov    0x2a030c0(%r14),%rax
   1800027b6:	48 89 05 2b b0 07 00 	mov    %rax,0x7b02b(%rip)        # 0x18007d7e8
   1800027bd:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   1800027c2:	ba 08 00 00 00       	mov    $0x8,%edx
   1800027c7:	48 89 f1             	mov    %rsi,%rcx
   1800027ca:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1800027d0:	49 89 f9             	mov    %rdi,%r9
   1800027d3:	ff d3                	call   *%rbx
   1800027d5:	48 8d 05 d4 32 00 00 	lea    0x32d4(%rip),%rax        # 0x180005ab0
   1800027dc:	49 89 86 c0 30 a0 02 	mov    %rax,0x2a030c0(%r14)
   1800027e3:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   1800027e8:	ba 08 00 00 00       	mov    $0x8,%edx
   1800027ed:	48 89 f1             	mov    %rsi,%rcx
   1800027f0:	49 89 f9             	mov    %rdi,%r9
   1800027f3:	ff d3                	call   *%rbx
   1800027f5:	4c 8b 35 24 58 00 00 	mov    0x5824(%rip),%r14        # 0x180008020
   1800027fc:	49 8d b6 b0 30 a0 02 	lea    0x2a030b0(%r14),%rsi
   180002803:	49 8b 86 b0 30 a0 02 	mov    0x2a030b0(%r14),%rax
   18000280a:	48 89 05 df af 07 00 	mov    %rax,0x7afdf(%rip)        # 0x18007d7f0
   180002811:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   180002816:	ba 08 00 00 00       	mov    $0x8,%edx
   18000281b:	48 89 f1             	mov    %rsi,%rcx
   18000281e:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180002824:	49 89 f9             	mov    %rdi,%r9
   180002827:	ff d3                	call   *%rbx
   180002829:	48 8d 05 10 33 00 00 	lea    0x3310(%rip),%rax        # 0x180005b40
   180002830:	49 89 86 b0 30 a0 02 	mov    %rax,0x2a030b0(%r14)
   180002837:	44 8b 44 24 70       	mov    0x70(%rsp),%r8d
   18000283c:	ba 08 00 00 00       	mov    $0x8,%edx
   180002841:	48 89 f1             	mov    %rsi,%rcx
   180002844:	49 89 f9             	mov    %rdi,%r9
   180002847:	ff d3                	call   *%rbx
   180002849:	48 8b 0d 30 5a 00 00 	mov    0x5a30(%rip),%rcx        # 0x180008280
   180002850:	48 85 c9             	test   %rcx,%rcx
   180002853:	74 21                	je     0x180002876
   180002855:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000285c:	00 00 
   18000285e:	48 8d 15 18 4e 00 00 	lea    0x4e18(%rip),%rdx        # 0x18000767d
   180002865:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
   18000286a:	41 b8 2f 00 00 00    	mov    $0x2f,%r8d
   180002870:	ff 15 8a 51 00 00    	call   *0x518a(%rip)        # 0x180007a00
   180002876:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
   18000287d:	ff ff ff 
   180002880:	48 bd 00 00 00 00 0f 	movabs $0xf00000000,%rbp
   180002887:	00 00 00 
   18000288a:	4c 8d 6c 24 7e       	lea    0x7e(%rsp),%r13
   18000288f:	31 f6                	xor    %esi,%esi
   180002891:	0f 57 f6             	xorps  %xmm6,%xmm6
   180002894:	0f 28 3d 55 4a 00 00 	movaps 0x4a55(%rip),%xmm7        # 0x1800072f0
   18000289b:	44 0f 28 05 5d 4a 00 	movaps 0x4a5d(%rip),%xmm8        # 0x180007300
   1800028a2:	00 
   1800028a3:	44 0f 28 0d 65 4a 00 	movaps 0x4a65(%rip),%xmm9        # 0x180007310
   1800028aa:	00 
   1800028ab:	44 0f 28 15 6d 4a 00 	movaps 0x4a6d(%rip),%xmm10        # 0x180007320
   1800028b2:	00 
   1800028b3:	44 0f 28 1d 75 4a 00 	movaps 0x4a75(%rip),%xmm11        # 0x180007330
   1800028ba:	00 
   1800028bb:	44 0f 28 25 7d 4a 00 	movaps 0x4a7d(%rip),%xmm12        # 0x180007340
   1800028c2:	00 
   1800028c3:	41 be cd cc cc cc    	mov    $0xcccccccd,%r14d
   1800028c9:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   1800028ce:	31 c0                	xor    %eax,%eax
   1800028d0:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   1800028d5:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
   1800028dc:	00 
   1800028dd:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
   1800028e4:	00 
   1800028e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1800028ec:	00 00 00 00 
   1800028f0:	89 f0                	mov    %esi,%eax
   1800028f2:	89 74 24 64          	mov    %esi,0x64(%rsp)
   1800028f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1800028fd:	00 00 00 
   180002900:	8b 44 24 44          	mov    0x44(%rsp),%eax
   180002904:	89 c3                	mov    %eax,%ebx
   180002906:	8b 44 24 40          	mov    0x40(%rsp),%eax
   18000290a:	88 44 24 48          	mov    %al,0x48(%rsp)
   18000290e:	b9 32 00 00 00       	mov    $0x32,%ecx
   180002913:	ff 15 bf 50 00 00    	call   *0x50bf(%rip)        # 0x1800079d8
   180002919:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   18000291e:	ff c0                	inc    %eax
   180002920:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   180002925:	48 83 3d 6b ac 07 00 	cmpq   $0x0,0x7ac6b(%rip)        # 0x18007d598
   18000292c:	00 
   18000292d:	0f 85 ad 00 00 00    	jne    0x1800029e0
   180002933:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
   180002938:	48 89 c8             	mov    %rcx,%rax
   18000293b:	49 0f af c6          	imul   %r14,%rax
   18000293f:	48 c1 e8 24          	shr    $0x24,%rax
   180002943:	c1 e0 02             	shl    $0x2,%eax
   180002946:	8d 04 80             	lea    (%rax,%rax,4),%eax
   180002949:	29 c1                	sub    %eax,%ecx
   18000294b:	0f 85 8f 00 00 00    	jne    0x1800029e0
   180002951:	c7 05 45 ac 07 00 00 	movl   $0x0,0x7ac45(%rip)        # 0x18007d5a0
   180002958:	00 00 00 
   18000295b:	48 8d 0d ee 1c 00 00 	lea    0x1cee(%rip),%rcx        # 0x180004650
   180002962:	31 d2                	xor    %edx,%edx
   180002964:	ff 15 ae 50 00 00    	call   *0x50ae(%rip)        # 0x180007a18
   18000296a:	44 8b 0d 2f ac 07 00 	mov    0x7ac2f(%rip),%r9d        # 0x18007d5a0
   180002971:	45 85 c9             	test   %r9d,%r9d
   180002974:	74 6a                	je     0x1800029e0
   180002976:	b9 03 00 00 00       	mov    $0x3,%ecx
   18000297b:	48 8d 15 2e 1d 00 00 	lea    0x1d2e(%rip),%rdx        # 0x1800046b0
   180002982:	45 31 c0             	xor    %r8d,%r8d
   180002985:	ff 15 c5 50 00 00    	call   *0x50c5(%rip)        # 0x180007a50
   18000298b:	48 89 05 06 ac 07 00 	mov    %rax,0x7ac06(%rip)        # 0x18007d598
   180002992:	48 85 c0             	test   %rax,%rax
   180002995:	48 8d 15 c9 4c 00 00 	lea    0x4cc9(%rip),%rdx        # 0x180007665
   18000299c:	48 8d 05 2b 4d 00 00 	lea    0x4d2b(%rip),%rax        # 0x1800076ce
   1800029a3:	48 0f 44 d0          	cmove  %rax,%rdx
   1800029a7:	48 8b 0d d2 58 00 00 	mov    0x58d2(%rip),%rcx        # 0x180008280
   1800029ae:	48 85 c9             	test   %rcx,%rcx
   1800029b1:	74 2d                	je     0x1800029e0
   1800029b3:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800029b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1800029c0:	41 ff c0             	inc    %r8d
   1800029c3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800029c8:	75 f6                	jne    0x1800029c0
   1800029ca:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800029d1:	00 00 
   1800029d3:	4d 89 e1             	mov    %r12,%r9
   1800029d6:	ff 15 24 50 00 00    	call   *0x5024(%rip)        # 0x180007a00
   1800029dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1800029e0:	b9 11 00 00 00       	mov    $0x11,%ecx
   1800029e5:	48 8b 35 34 50 00 00 	mov    0x5034(%rip),%rsi        # 0x180007a20
   1800029ec:	ff d6                	call   *%rsi
   1800029ee:	66 85 c0             	test   %ax,%ax
   1800029f1:	78 0d                	js     0x180002a00
   1800029f3:	31 ff                	xor    %edi,%edi
   1800029f5:	eb 16                	jmp    0x180002a0d
   1800029f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1800029fe:	00 00 
   180002a00:	b9 10 00 00 00       	mov    $0x10,%ecx
   180002a05:	ff d6                	call   *%rsi
   180002a07:	0f b7 f8             	movzwl %ax,%edi
   180002a0a:	c1 ef 0f             	shr    $0xf,%edi
   180002a0d:	b9 77 00 00 00       	mov    $0x77,%ecx
   180002a12:	ff d6                	call   *%rsi
   180002a14:	0f b7 c0             	movzwl %ax,%eax
   180002a17:	89 c1                	mov    %eax,%ecx
   180002a19:	c1 e9 0f             	shr    $0xf,%ecx
   180002a1c:	89 4c 24 44          	mov    %ecx,0x44(%rsp)
   180002a20:	89 fe                	mov    %edi,%esi
   180002a22:	40 80 f6 01          	xor    $0x1,%sil
   180002a26:	66 85 c0             	test   %ax,%ax
   180002a29:	89 7c 24 6c          	mov    %edi,0x6c(%rsp)
   180002a2d:	78 1a                	js     0x180002a49
   180002a2f:	40 84 f6             	test   %sil,%sil
   180002a32:	75 15                	jne    0x180002a49
   180002a34:	b9 4e 00 00 00       	mov    $0x4e,%ecx
   180002a39:	ff 15 e1 4f 00 00    	call   *0x4fe1(%rip)        # 0x180007a20
   180002a3f:	0f b7 c0             	movzwl %ax,%eax
   180002a42:	c1 e8 0f             	shr    $0xf,%eax
   180002a45:	89 44 24 44          	mov    %eax,0x44(%rsp)
   180002a49:	b9 76 00 00 00       	mov    $0x76,%ecx
   180002a4e:	48 8b 3d cb 4f 00 00 	mov    0x4fcb(%rip),%rdi        # 0x180007a20
   180002a55:	ff d7                	call   *%rdi
   180002a57:	66 85 c0             	test   %ax,%ax
   180002a5a:	0f 98 c1             	sets   %cl
   180002a5d:	40 08 f1             	or     %sil,%cl
   180002a60:	75 07                	jne    0x180002a69
   180002a62:	b9 46 00 00 00       	mov    $0x46,%ecx
   180002a67:	ff d7                	call   *%rdi
   180002a69:	0f b7 c0             	movzwl %ax,%eax
   180002a6c:	c1 e8 0f             	shr    $0xf,%eax
   180002a6f:	89 44 24 40          	mov    %eax,0x40(%rsp)
   180002a73:	48 8d 3d 46 ab 07 00 	lea    0x7ab46(%rip),%rdi        # 0x18007d5c0
   180002a7a:	4c 8d 0d ef 55 00 00 	lea    0x55ef(%rip),%r9        # 0x180008070
   180002a81:	8b 44 24 44          	mov    0x44(%rsp),%eax
   180002a85:	f6 d0                	not    %al
   180002a87:	08 c3                	or     %al,%bl
   180002a89:	f6 c3 01             	test   $0x1,%bl
   180002a8c:	48 8b 1d 6d 4f 00 00 	mov    0x4f6d(%rip),%rbx        # 0x180007a00
   180002a93:	0f 85 a7 07 00 00    	jne    0x180003240
   180002a99:	8b 05 d9 57 00 00    	mov    0x57d9(%rip),%eax        # 0x180008278
   180002a9f:	48 85 c0             	test   %rax,%rax
   180002aa2:	74 0c                	je     0x180002ab0
   180002aa4:	83 f8 08             	cmp    $0x8,%eax
   180002aa7:	73 0e                	jae    0x180002ab7
   180002aa9:	31 c9                	xor    %ecx,%ecx
   180002aab:	e9 80 00 00 00       	jmp    0x180002b30
   180002ab0:	31 d2                	xor    %edx,%edx
   180002ab2:	e9 8d 00 00 00       	jmp    0x180002b44
   180002ab7:	83 f8 20             	cmp    $0x20,%eax
   180002aba:	73 04                	jae    0x180002ac0
   180002abc:	31 c9                	xor    %ecx,%ecx
   180002abe:	eb 3d                	jmp    0x180002afd
   180002ac0:	89 c1                	mov    %eax,%ecx
   180002ac2:	83 e1 e0             	and    $0xffffffe0,%ecx
   180002ac5:	31 d2                	xor    %edx,%edx
   180002ac7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   180002ace:	00 00 
   180002ad0:	42 0f 28 04 0a       	movaps (%rdx,%r9,1),%xmm0
   180002ad5:	42 0f 28 4c 0a 10    	movaps 0x10(%rdx,%r9,1),%xmm1
   180002adb:	0f 29 44 14 70       	movaps %xmm0,0x70(%rsp,%rdx,1)
   180002ae0:	0f 29 8c 14 80 00 00 	movaps %xmm1,0x80(%rsp,%rdx,1)
   180002ae7:	00 
   180002ae8:	48 83 c2 20          	add    $0x20,%rdx
   180002aec:	48 39 d1             	cmp    %rdx,%rcx
   180002aef:	75 df                	jne    0x180002ad0
   180002af1:	48 89 c2             	mov    %rax,%rdx
   180002af4:	48 39 c1             	cmp    %rax,%rcx
   180002af7:	74 4b                	je     0x180002b44
   180002af9:	a8 18                	test   $0x18,%al
   180002afb:	74 33                	je     0x180002b30
   180002afd:	48 89 ca             	mov    %rcx,%rdx
   180002b00:	89 c1                	mov    %eax,%ecx
   180002b02:	83 e1 f8             	and    $0xfffffff8,%ecx
   180002b05:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   180002b0c:	00 00 00 00 
   180002b10:	4e 8b 04 0a          	mov    (%rdx,%r9,1),%r8
   180002b14:	4c 89 44 14 70       	mov    %r8,0x70(%rsp,%rdx,1)
   180002b19:	48 83 c2 08          	add    $0x8,%rdx
   180002b1d:	48 39 d1             	cmp    %rdx,%rcx
   180002b20:	75 ee                	jne    0x180002b10
   180002b22:	48 89 c2             	mov    %rax,%rdx
   180002b25:	48 39 c1             	cmp    %rax,%rcx
   180002b28:	74 1a                	je     0x180002b44
   180002b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   180002b30:	42 0f b6 14 09       	movzbl (%rcx,%r9,1),%edx
   180002b35:	88 54 0c 70          	mov    %dl,0x70(%rsp,%rcx,1)
   180002b39:	48 ff c1             	inc    %rcx
   180002b3c:	48 39 c8             	cmp    %rcx,%rax
   180002b3f:	75 ef                	jne    0x180002b30
   180002b41:	48 89 c2             	mov    %rax,%rdx
   180002b44:	8d 48 01             	lea    0x1(%rax),%ecx
   180002b47:	c6 44 14 70 57       	movb   $0x57,0x70(%rsp,%rdx,1)
   180002b4c:	8d 50 02             	lea    0x2(%rax),%edx
   180002b4f:	c6 44 0c 70 50       	movb   $0x50,0x70(%rsp,%rcx,1)
   180002b54:	8d 48 03             	lea    0x3(%rax),%ecx
   180002b57:	c6 44 14 70 31       	movb   $0x31,0x70(%rsp,%rdx,1)
   180002b5c:	8d 50 04             	lea    0x4(%rax),%edx
   180002b5f:	c6 44 0c 70 30       	movb   $0x30,0x70(%rsp,%rcx,1)
   180002b64:	8d 48 05             	lea    0x5(%rax),%ecx
   180002b67:	c6 44 14 70 5f       	movb   $0x5f,0x70(%rsp,%rdx,1)
   180002b6c:	8d 50 06             	lea    0x6(%rax),%edx
   180002b6f:	c6 44 0c 70 45       	movb   $0x45,0x70(%rsp,%rcx,1)
   180002b74:	8d 48 07             	lea    0x7(%rax),%ecx
   180002b77:	c6 44 14 70 4e       	movb   $0x4e,0x70(%rsp,%rdx,1)
   180002b7c:	8d 50 08             	lea    0x8(%rax),%edx
   180002b7f:	c6 44 0c 70 5f       	movb   $0x5f,0x70(%rsp,%rcx,1)
   180002b84:	8d 48 09             	lea    0x9(%rax),%ecx
   180002b87:	c6 44 14 70 6e       	movb   $0x6e,0x70(%rsp,%rdx,1)
   180002b8c:	8d 50 0a             	lea    0xa(%rax),%edx
   180002b8f:	c6 44 0c 70 61       	movb   $0x61,0x70(%rsp,%rcx,1)
   180002b94:	8d 48 0b             	lea    0xb(%rax),%ecx
   180002b97:	c6 44 14 70 6d       	movb   $0x6d,0x70(%rsp,%rdx,1)
   180002b9c:	8d 50 0c             	lea    0xc(%rax),%edx
   180002b9f:	c6 44 0c 70 65       	movb   $0x65,0x70(%rsp,%rcx,1)
   180002ba4:	8d 48 0d             	lea    0xd(%rax),%ecx
   180002ba7:	c6 44 14 70 2e       	movb   $0x2e,0x70(%rsp,%rdx,1)
   180002bac:	8d 50 0e             	lea    0xe(%rax),%edx
   180002baf:	c6 44 0c 70 74       	movb   $0x74,0x70(%rsp,%rcx,1)
   180002bb4:	8d 48 0f             	lea    0xf(%rax),%ecx
   180002bb7:	c6 44 14 70 78       	movb   $0x78,0x70(%rsp,%rdx,1)
   180002bbc:	83 c0 10             	add    $0x10,%eax
   180002bbf:	c6 44 0c 70 74       	movb   $0x74,0x70(%rsp,%rcx,1)
   180002bc4:	c6 44 04 70 00       	movb   $0x0,0x70(%rsp,%rax,1)
   180002bc9:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   180002bd0:	00 00 
   180002bd2:	c7 44 24 28 80 00 00 	movl   $0x80,0x28(%rsp)
   180002bd9:	00 
   180002bda:	c7 44 24 20 03 00 00 	movl   $0x3,0x20(%rsp)
   180002be1:	00 
   180002be2:	4c 89 e1             	mov    %r12,%rcx
   180002be5:	ba 00 00 00 80       	mov    $0x80000000,%edx
   180002bea:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   180002bf0:	45 31 c9             	xor    %r9d,%r9d
   180002bf3:	ff 15 7f 4d 00 00    	call   *0x4d7f(%rip)        # 0x180007978
   180002bf9:	48 c7 05 a0 a9 07 00 	movq   $0x0,0x7a9a0(%rip)        # 0x18007d5a4
   180002c00:	00 00 00 00 
   180002c04:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
   180002c08:	0f 84 e2 01 00 00    	je     0x180002df0
   180002c0e:	48 89 c6             	mov    %rax,%rsi
   180002c11:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   180002c18:	00 
   180002c19:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002c20:	00 00 
   180002c22:	48 89 c1             	mov    %rax,%rcx
   180002c25:	48 8d 94 24 d0 02 00 	lea    0x2d0(%rsp),%rdx
   180002c2c:	00 
   180002c2d:	41 b8 ff 01 00 00    	mov    $0x1ff,%r8d
   180002c33:	4c 8d 4c 24 54       	lea    0x54(%rsp),%r9
   180002c38:	ff 15 92 4d 00 00    	call   *0x4d92(%rip)        # 0x1800079d0
   180002c3e:	48 89 f1             	mov    %rsi,%rcx
   180002c41:	ff 15 29 4d 00 00    	call   *0x4d29(%rip)        # 0x180007970
   180002c47:	8b 44 24 54          	mov    0x54(%rsp),%eax
   180002c4b:	c6 84 04 d0 02 00 00 	movb   $0x0,0x2d0(%rsp,%rax,1)
   180002c52:	00 
   180002c53:	48 85 c0             	test   %rax,%rax
   180002c56:	0f 84 94 01 00 00    	je     0x180002df0
   180002c5c:	45 31 c0             	xor    %r8d,%r8d
   180002c5f:	eb 1e                	jmp    0x180002c7f
   180002c61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002c68:	0f 1f 84 00 00 00 00 
   180002c6f:	00 
   180002c70:	89 c1                	mov    %eax,%ecx
   180002c72:	ff c1                	inc    %ecx
   180002c74:	41 89 c8             	mov    %ecx,%r8d
   180002c77:	39 c1                	cmp    %eax,%ecx
   180002c79:	0f 83 71 01 00 00    	jae    0x180002df0
   180002c7f:	44 89 c1             	mov    %r8d,%ecx
   180002c82:	0f b6 94 0c d0 02 00 	movzbl 0x2d0(%rsp,%rcx,1),%edx
   180002c89:	00 
   180002c8a:	83 fa 6c             	cmp    $0x6c,%edx
   180002c8d:	74 51                	je     0x180002ce0
   180002c8f:	83 fa 66             	cmp    $0x66,%edx
   180002c92:	0f 85 98 00 00 00    	jne    0x180002d30
   180002c98:	80 bc 0c d1 02 00 00 	cmpb   $0x69,0x2d1(%rsp,%rcx,1)
   180002c9f:	69 
   180002ca0:	0f 85 8a 00 00 00    	jne    0x180002d30
   180002ca6:	80 bc 0c d2 02 00 00 	cmpb   $0x72,0x2d2(%rsp,%rcx,1)
   180002cad:	72 
   180002cae:	0f 85 7c 00 00 00    	jne    0x180002d30
   180002cb4:	80 bc 0c d3 02 00 00 	cmpb   $0x73,0x2d3(%rsp,%rcx,1)
   180002cbb:	73 
   180002cbc:	75 72                	jne    0x180002d30
   180002cbe:	80 bc 0c d4 02 00 00 	cmpb   $0x74,0x2d4(%rsp,%rcx,1)
   180002cc5:	74 
   180002cc6:	75 68                	jne    0x180002d30
   180002cc8:	80 bc 0c d5 02 00 00 	cmpb   $0x3d,0x2d5(%rsp,%rcx,1)
   180002ccf:	3d 
   180002cd0:	75 5e                	jne    0x180002d30
   180002cd2:	b9 06 00 00 00       	mov    $0x6,%ecx
   180002cd7:	31 d2                	xor    %edx,%edx
   180002cd9:	eb 37                	jmp    0x180002d12
   180002cdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180002ce0:	80 bc 0c d1 02 00 00 	cmpb   $0x61,0x2d1(%rsp,%rcx,1)
   180002ce7:	61 
   180002ce8:	75 46                	jne    0x180002d30
   180002cea:	80 bc 0c d2 02 00 00 	cmpb   $0x73,0x2d2(%rsp,%rcx,1)
   180002cf1:	73 
   180002cf2:	75 3c                	jne    0x180002d30
   180002cf4:	80 bc 0c d3 02 00 00 	cmpb   $0x74,0x2d3(%rsp,%rcx,1)
   180002cfb:	74 
   180002cfc:	75 32                	jne    0x180002d30
   180002cfe:	80 bc 0c d4 02 00 00 	cmpb   $0x3d,0x2d4(%rsp,%rcx,1)
   180002d05:	3d 
   180002d06:	75 28                	jne    0x180002d30
   180002d08:	ba 01 00 00 00       	mov    $0x1,%edx
   180002d0d:	b9 05 00 00 00       	mov    $0x5,%ecx
   180002d12:	44 01 c1             	add    %r8d,%ecx
   180002d15:	45 31 c0             	xor    %r8d,%r8d
   180002d18:	39 c1                	cmp    %eax,%ecx
   180002d1a:	73 7e                	jae    0x180002d9a
   180002d1c:	89 c9                	mov    %ecx,%ecx
   180002d1e:	45 31 c0             	xor    %r8d,%r8d
   180002d21:	eb 45                	jmp    0x180002d68
   180002d23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002d2a:	84 00 00 00 00 00 
   180002d30:	44 89 c1             	mov    %r8d,%ecx
   180002d33:	39 c1                	cmp    %eax,%ecx
   180002d35:	0f 83 37 ff ff ff    	jae    0x180002c72
   180002d3b:	89 c9                	mov    %ecx,%ecx
   180002d3d:	0f 1f 00             	nopl   (%rax)
   180002d40:	80 bc 0c d0 02 00 00 	cmpb   $0xa,0x2d0(%rsp,%rcx,1)
   180002d47:	0a 
   180002d48:	0f 84 24 ff ff ff    	je     0x180002c72
   180002d4e:	48 ff c1             	inc    %rcx
   180002d51:	48 39 c8             	cmp    %rcx,%rax
   180002d54:	75 ea                	jne    0x180002d40
   180002d56:	e9 15 ff ff ff       	jmp    0x180002c70
   180002d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180002d60:	48 ff c1             	inc    %rcx
   180002d63:	48 39 c8             	cmp    %rcx,%rax
   180002d66:	74 30                	je     0x180002d98
   180002d68:	44 0f b6 8c 0c d0 02 	movzbl 0x2d0(%rsp,%rcx,1),%r9d
   180002d6f:	00 00 
   180002d71:	45 8d 51 e0          	lea    -0x20(%r9),%r10d
   180002d75:	41 80 fa 5e          	cmp    $0x5e,%r10b
   180002d79:	77 1f                	ja     0x180002d9a
   180002d7b:	41 83 f8 05          	cmp    $0x5,%r8d
   180002d7f:	7f df                	jg     0x180002d60
   180002d81:	4d 63 d0             	movslq %r8d,%r10
   180002d84:	41 ff c0             	inc    %r8d
   180002d87:	4c 8d 1d a2 aa 07 00 	lea    0x7aaa2(%rip),%r11        # 0x18007d830
   180002d8e:	4d 8d 1c d3          	lea    (%r11,%rdx,8),%r11
   180002d92:	47 88 0c 1a          	mov    %r9b,(%r10,%r11,1)
   180002d96:	eb c8                	jmp    0x180002d60
   180002d98:	89 c1                	mov    %eax,%ecx
   180002d9a:	4d 63 c8             	movslq %r8d,%r9
   180002d9d:	45 8d 41 01          	lea    0x1(%r9),%r8d
   180002da1:	4c 8d 15 88 aa 07 00 	lea    0x7aa88(%rip),%r10        # 0x18007d830
   180002da8:	4d 8d 14 d2          	lea    (%r10,%rdx,8),%r10
   180002dac:	49 ff ca             	dec    %r10
   180002daf:	4d 89 cb             	mov    %r9,%r11
   180002db2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002db9:	1f 84 00 00 00 00 00 
   180002dc0:	49 83 eb 01          	sub    $0x1,%r11
   180002dc4:	72 0f                	jb     0x180002dd5
   180002dc6:	41 ff c8             	dec    %r8d
   180002dc9:	43 80 3c 0a 20       	cmpb   $0x20,(%r10,%r9,1)
   180002dce:	4d 89 d9             	mov    %r11,%r9
   180002dd1:	74 ed                	je     0x180002dc0
   180002dd3:	eb 03                	jmp    0x180002dd8
   180002dd5:	45 31 c0             	xor    %r8d,%r8d
   180002dd8:	4c 8d 0d c5 a7 07 00 	lea    0x7a7c5(%rip),%r9        # 0x18007d5a4
   180002ddf:	45 89 04 91          	mov    %r8d,(%r9,%rdx,4)
   180002de3:	39 c1                	cmp    %eax,%ecx
   180002de5:	0f 83 87 fe ff ff    	jae    0x180002c72
   180002deb:	e9 4b ff ff ff       	jmp    0x180002d3b
   180002df0:	48 8b 0d 89 54 00 00 	mov    0x5489(%rip),%rcx        # 0x180008280
   180002df7:	48 85 c9             	test   %rcx,%rcx
   180002dfa:	74 1b                	je     0x180002e17
   180002dfc:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002e03:	00 00 
   180002e05:	48 8d 15 5e 46 00 00 	lea    0x465e(%rip),%rdx        # 0x18000746a
   180002e0c:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   180002e12:	4d 89 e1             	mov    %r12,%r9
   180002e15:	ff d3                	call   *%rbx
   180002e17:	8b 15 87 a7 07 00    	mov    0x7a787(%rip),%edx        # 0x18007d5a4
   180002e1d:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   180002e22:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180002e27:	48 89 e8             	mov    %rbp,%rax
   180002e2a:	85 d2                	test   %edx,%edx
   180002e2c:	74 36                	je     0x180002e64
   180002e2e:	66 90                	xchg   %ax,%ax
   180002e30:	41 89 d0             	mov    %edx,%r8d
   180002e33:	4d 0f af c6          	imul   %r14,%r8
   180002e37:	49 c1 e8 23          	shr    $0x23,%r8
   180002e3b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   180002e3f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180002e43:	41 89 d2             	mov    %edx,%r10d
   180002e46:	45 29 ca             	sub    %r9d,%r10d
   180002e49:	41 80 ca 30          	or     $0x30,%r10b
   180002e4d:	44 88 11             	mov    %r10b,(%rcx)
   180002e50:	4c 01 f8             	add    %r15,%rax
   180002e53:	48 ff c9             	dec    %rcx
   180002e56:	83 fa 09             	cmp    $0x9,%edx
   180002e59:	44 89 c2             	mov    %r8d,%edx
   180002e5c:	77 d2                	ja     0x180002e30
   180002e5e:	48 c1 f8 20          	sar    $0x20,%rax
   180002e62:	eb 0a                	jmp    0x180002e6e
   180002e64:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180002e69:	b8 0e 00 00 00       	mov    $0xe,%eax
   180002e6e:	48 8b 0d 0b 54 00 00 	mov    0x540b(%rip),%rcx        # 0x180008280
   180002e75:	48 85 c9             	test   %rcx,%rcx
   180002e78:	74 5a                	je     0x180002ed4
   180002e7a:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   180002e7e:	48 83 c2 70          	add    $0x70,%rdx
   180002e82:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180002e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180002e8f:	00 
   180002e90:	41 ff c0             	inc    %r8d
   180002e93:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180002e98:	75 f6                	jne    0x180002e90
   180002e9a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002ea1:	00 00 
   180002ea3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   180002eaa:	00 
   180002eab:	ff d3                	call   *%rbx
   180002ead:	48 8b 0d cc 53 00 00 	mov    0x53cc(%rip),%rcx        # 0x180008280
   180002eb4:	48 85 c9             	test   %rcx,%rcx
   180002eb7:	74 1b                	je     0x180002ed4
   180002eb9:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002ec0:	00 00 
   180002ec2:	48 8d 15 b2 45 00 00 	lea    0x45b2(%rip),%rdx        # 0x18000747b
   180002ec9:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   180002ecf:	4d 89 e1             	mov    %r12,%r9
   180002ed2:	ff d3                	call   *%rbx
   180002ed4:	8b 15 ce a6 07 00    	mov    0x7a6ce(%rip),%edx        # 0x18007d5a8
   180002eda:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   180002edf:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180002ee4:	48 89 e8             	mov    %rbp,%rax
   180002ee7:	85 d2                	test   %edx,%edx
   180002ee9:	74 39                	je     0x180002f24
   180002eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180002ef0:	41 89 d0             	mov    %edx,%r8d
   180002ef3:	4d 0f af c6          	imul   %r14,%r8
   180002ef7:	49 c1 e8 23          	shr    $0x23,%r8
   180002efb:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   180002eff:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180002f03:	41 89 d2             	mov    %edx,%r10d
   180002f06:	45 29 ca             	sub    %r9d,%r10d
   180002f09:	41 80 ca 30          	or     $0x30,%r10b
   180002f0d:	44 88 11             	mov    %r10b,(%rcx)
   180002f10:	4c 01 f8             	add    %r15,%rax
   180002f13:	48 ff c9             	dec    %rcx
   180002f16:	83 fa 09             	cmp    $0x9,%edx
   180002f19:	44 89 c2             	mov    %r8d,%edx
   180002f1c:	77 d2                	ja     0x180002ef0
   180002f1e:	48 c1 f8 20          	sar    $0x20,%rax
   180002f22:	eb 0a                	jmp    0x180002f2e
   180002f24:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180002f29:	b8 0e 00 00 00       	mov    $0xe,%eax
   180002f2e:	48 8b 0d 4b 53 00 00 	mov    0x534b(%rip),%rcx        # 0x180008280
   180002f35:	48 85 c9             	test   %rcx,%rcx
   180002f38:	74 33                	je     0x180002f6d
   180002f3a:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   180002f3e:	48 83 c2 70          	add    $0x70,%rdx
   180002f42:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180002f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180002f4f:	00 
   180002f50:	41 ff c0             	inc    %r8d
   180002f53:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180002f58:	75 f6                	jne    0x180002f50
   180002f5a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180002f61:	00 00 
   180002f63:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   180002f6a:	00 
   180002f6b:	ff d3                	call   *%rbx
   180002f6d:	31 f6                	xor    %esi,%esi
   180002f6f:	31 c9                	xor    %ecx,%ecx
   180002f71:	eb 19                	jmp    0x180002f8c
   180002f73:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002f7a:	84 00 00 00 00 00 
   180002f80:	48 01 c1             	add    %rax,%rcx
   180002f83:	48 85 c0             	test   %rax,%rax
   180002f86:	0f 84 c4 01 00 00    	je     0x180003150
   180002f8c:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   180002f92:	4c 89 e2             	mov    %r12,%rdx
   180002f95:	ff 15 5d 4a 00 00    	call   *0x4a5d(%rip)        # 0x1800079f8
   180002f9b:	48 85 c0             	test   %rax,%rax
   180002f9e:	0f 84 ac 01 00 00    	je     0x180003150
   180002fa4:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   180002fa9:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
   180002fb0:	00 
   180002fb1:	81 bc 24 90 00 00 00 	cmpl   $0x1000,0x90(%rsp)
   180002fb8:	00 10 00 00 
   180002fbc:	75 c2                	jne    0x180002f80
   180002fbe:	8b 94 24 94 00 00 00 	mov    0x94(%rsp),%edx
   180002fc5:	f6 c2 04             	test   $0x4,%dl
   180002fc8:	74 b6                	je     0x180002f80
   180002fca:	f7 c2 00 07 00 00    	test   $0x700,%edx
   180002fd0:	75 ae                	jne    0x180002f80
   180002fd2:	48 3d ff ff ff 3f    	cmp    $0x3fffffff,%rax
   180002fd8:	77 a6                	ja     0x180002f80
   180002fda:	48 83 f8 10          	cmp    $0x10,%rax
   180002fde:	72 a0                	jb     0x180002f80
   180002fe0:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   180002fe4:	48 83 c2 f8          	add    $0xfffffffffffffff8,%rdx
   180002fe8:	49 89 c8             	mov    %rcx,%r8
   180002feb:	eb 2f                	jmp    0x18000301c
   180002fed:	4c 8d 15 3c a8 07 00 	lea    0x7a83c(%rip),%r10        # 0x18007d830
   180002ff4:	47 0f b6 4c ca 05    	movzbl 0x5(%r10,%r9,8),%r9d
   180002ffa:	45 88 48 05          	mov    %r9b,0x5(%r8)
   180002ffe:	49 83 c0 06          	add    $0x6,%r8
   180003002:	ff c6                	inc    %esi
   180003004:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000300b:	00 00 00 00 00 
   180003010:	49 ff c0             	inc    %r8
   180003013:	49 39 d0             	cmp    %rdx,%r8
   180003016:	0f 83 64 ff ff ff    	jae    0x180002f80
   18000301c:	41 80 38 82          	cmpb   $0x82,(%r8)
   180003020:	75 ee                	jne    0x180003010
   180003022:	41 80 78 02 82       	cmpb   $0x82,0x2(%r8)
   180003027:	75 e7                	jne    0x180003010
   180003029:	41 80 78 04 82       	cmpb   $0x82,0x4(%r8)
   18000302e:	75 e0                	jne    0x180003010
   180003030:	41 80 78 06 00       	cmpb   $0x0,0x6(%r8)
   180003035:	75 d9                	jne    0x180003010
   180003037:	45 0f b6 50 01       	movzbl 0x1(%r8),%r10d
   18000303c:	45 8d 4a 88          	lea    -0x78(%r10),%r9d
   180003040:	41 83 f9 22          	cmp    $0x22,%r9d
   180003044:	77 ca                	ja     0x180003010
   180003046:	4c 8d 1d b3 3f 00 00 	lea    0x3fb3(%rip),%r11        # 0x180007000
   18000304d:	4f 63 0c 8b          	movslq (%r11,%r9,4),%r9
   180003051:	4d 01 d9             	add    %r11,%r9
   180003054:	41 ff e1             	jmp    *%r9
   180003057:	45 38 50 03          	cmp    %r10b,0x3(%r8)
   18000305b:	75 0b                	jne    0x180003068
   18000305d:	45 38 50 05          	cmp    %r10b,0x5(%r8)
   180003061:	75 05                	jne    0x180003068
   180003063:	45 31 c9             	xor    %r9d,%r9d
   180003066:	eb 18                	jmp    0x180003080
   180003068:	41 80 fa 99          	cmp    $0x99,%r10b
   18000306c:	75 a2                	jne    0x180003010
   18000306e:	45 38 50 03          	cmp    %r10b,0x3(%r8)
   180003072:	75 9c                	jne    0x180003010
   180003074:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   18000307a:	45 38 50 05          	cmp    %r10b,0x5(%r8)
   18000307e:	75 90                	jne    0x180003010
   180003080:	4c 8d 15 1d a5 07 00 	lea    0x7a51d(%rip),%r10        # 0x18007d5a4
   180003087:	47 8b 14 8a          	mov    (%r10,%r9,4),%r10d
   18000308b:	45 85 d2             	test   %r10d,%r10d
   18000308e:	74 80                	je     0x180003010
   180003090:	7e 0e                	jle    0x1800030a0
   180003092:	4c 8d 15 97 a7 07 00 	lea    0x7a797(%rip),%r10        # 0x18007d830
   180003099:	47 0f b6 14 ca       	movzbl (%r10,%r9,8),%r10d
   18000309e:	eb 03                	jmp    0x1800030a3
   1800030a0:	45 31 d2             	xor    %r10d,%r10d
   1800030a3:	45 88 10             	mov    %r10b,(%r8)
   1800030a6:	4c 8d 15 f7 a4 07 00 	lea    0x7a4f7(%rip),%r10        # 0x18007d5a4
   1800030ad:	43 83 3c 8a 02       	cmpl   $0x2,(%r10,%r9,4)
   1800030b2:	7c 0f                	jl     0x1800030c3
   1800030b4:	4c 8d 15 75 a7 07 00 	lea    0x7a775(%rip),%r10        # 0x18007d830
   1800030bb:	47 0f b6 54 ca 01    	movzbl 0x1(%r10,%r9,8),%r10d
   1800030c1:	eb 03                	jmp    0x1800030c6
   1800030c3:	45 31 d2             	xor    %r10d,%r10d
   1800030c6:	45 88 50 01          	mov    %r10b,0x1(%r8)
   1800030ca:	4c 8d 15 d3 a4 07 00 	lea    0x7a4d3(%rip),%r10        # 0x18007d5a4
   1800030d1:	43 83 3c 8a 03       	cmpl   $0x3,(%r10,%r9,4)
   1800030d6:	7c 0f                	jl     0x1800030e7
   1800030d8:	4c 8d 15 51 a7 07 00 	lea    0x7a751(%rip),%r10        # 0x18007d830
   1800030df:	47 0f b6 54 ca 02    	movzbl 0x2(%r10,%r9,8),%r10d
   1800030e5:	eb 03                	jmp    0x1800030ea
   1800030e7:	45 31 d2             	xor    %r10d,%r10d
   1800030ea:	45 88 50 02          	mov    %r10b,0x2(%r8)
   1800030ee:	4c 8d 15 af a4 07 00 	lea    0x7a4af(%rip),%r10        # 0x18007d5a4
   1800030f5:	43 83 3c 8a 04       	cmpl   $0x4,(%r10,%r9,4)
   1800030fa:	7c 0f                	jl     0x18000310b
   1800030fc:	4c 8d 15 2d a7 07 00 	lea    0x7a72d(%rip),%r10        # 0x18007d830
   180003103:	47 0f b6 54 ca 03    	movzbl 0x3(%r10,%r9,8),%r10d
   180003109:	eb 03                	jmp    0x18000310e
   18000310b:	45 31 d2             	xor    %r10d,%r10d
   18000310e:	45 88 50 03          	mov    %r10b,0x3(%r8)
   180003112:	4c 8d 15 8b a4 07 00 	lea    0x7a48b(%rip),%r10        # 0x18007d5a4
   180003119:	43 83 3c 8a 05       	cmpl   $0x5,(%r10,%r9,4)
   18000311e:	7c 0f                	jl     0x18000312f
   180003120:	4c 8d 15 09 a7 07 00 	lea    0x7a709(%rip),%r10        # 0x18007d830
   180003127:	47 0f b6 54 ca 04    	movzbl 0x4(%r10,%r9,8),%r10d
   18000312d:	eb 03                	jmp    0x180003132
   18000312f:	45 31 d2             	xor    %r10d,%r10d
   180003132:	45 88 50 04          	mov    %r10b,0x4(%r8)
   180003136:	4c 8d 15 67 a4 07 00 	lea    0x7a467(%rip),%r10        # 0x18007d5a4
   18000313d:	43 83 3c 8a 06       	cmpl   $0x6,(%r10,%r9,4)
   180003142:	0f 8d a5 fe ff ff    	jge    0x180002fed
   180003148:	45 31 c9             	xor    %r9d,%r9d
   18000314b:	e9 aa fe ff ff       	jmp    0x180002ffa
   180003150:	48 8b 0d 29 51 00 00 	mov    0x5129(%rip),%rcx        # 0x180008280
   180003157:	48 85 c9             	test   %rcx,%rcx
   18000315a:	74 1b                	je     0x180003177
   18000315c:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003163:	00 00 
   180003165:	48 8d 15 8a 43 00 00 	lea    0x438a(%rip),%rdx        # 0x1800074f6
   18000316c:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   180003172:	4d 89 e1             	mov    %r12,%r9
   180003175:	ff d3                	call   *%rbx
   180003177:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000317c:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180003181:	48 89 e8             	mov    %rbp,%rax
   180003184:	85 f6                	test   %esi,%esi
   180003186:	74 3a                	je     0x1800031c2
   180003188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000318f:	00 
   180003190:	89 f2                	mov    %esi,%edx
   180003192:	49 0f af d6          	imul   %r14,%rdx
   180003196:	48 c1 ea 23          	shr    $0x23,%rdx
   18000319a:	44 8d 04 12          	lea    (%rdx,%rdx,1),%r8d
   18000319e:	47 8d 04 80          	lea    (%r8,%r8,4),%r8d
   1800031a2:	41 89 f1             	mov    %esi,%r9d
   1800031a5:	45 29 c1             	sub    %r8d,%r9d
   1800031a8:	41 80 c9 30          	or     $0x30,%r9b
   1800031ac:	44 88 09             	mov    %r9b,(%rcx)
   1800031af:	4c 01 f8             	add    %r15,%rax
   1800031b2:	48 ff c9             	dec    %rcx
   1800031b5:	83 fe 09             	cmp    $0x9,%esi
   1800031b8:	89 d6                	mov    %edx,%esi
   1800031ba:	77 d4                	ja     0x180003190
   1800031bc:	48 c1 f8 20          	sar    $0x20,%rax
   1800031c0:	eb 0a                	jmp    0x1800031cc
   1800031c2:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   1800031c7:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800031cc:	48 8b 0d ad 50 00 00 	mov    0x50ad(%rip),%rcx        # 0x180008280
   1800031d3:	48 85 c9             	test   %rcx,%rcx
   1800031d6:	74 68                	je     0x180003240
   1800031d8:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800031dc:	48 83 c2 70          	add    $0x70,%rdx
   1800031e0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800031e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1800031ed:	00 00 00 
   1800031f0:	41 ff c0             	inc    %r8d
   1800031f3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800031f8:	75 f6                	jne    0x1800031f0
   1800031fa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003201:	00 00 
   180003203:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   18000320a:	00 
   18000320b:	ff d3                	call   *%rbx
   18000320d:	48 8b 0d 6c 50 00 00 	mov    0x506c(%rip),%rcx        # 0x180008280
   180003214:	48 85 c9             	test   %rcx,%rcx
   180003217:	74 27                	je     0x180003240
   180003219:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003220:	00 00 
   180003222:	48 8d 15 b3 45 00 00 	lea    0x45b3(%rip),%rdx        # 0x1800077dc
   180003229:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   18000322f:	4d 89 e1             	mov    %r12,%r9
   180003232:	ff d3                	call   *%rbx
   180003234:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000323b:	00 00 00 00 00 
   180003240:	8b 44 24 40          	mov    0x40(%rsp),%eax
   180003244:	f6 d0                	not    %al
   180003246:	0f b6 4c 24 48       	movzbl 0x48(%rsp),%ecx
   18000324b:	08 c1                	or     %al,%cl
   18000324d:	f6 c1 01             	test   $0x1,%cl
   180003250:	75 56                	jne    0x1800032a8
   180003252:	31 c0                	xor    %eax,%eax
   180003254:	83 3d 35 a3 07 00 00 	cmpl   $0x0,0x7a335(%rip)        # 0x18007d590
   18000325b:	0f 94 c0             	sete   %al
   18000325e:	89 05 2c a3 07 00    	mov    %eax,0x7a32c(%rip)        # 0x18007d590
   180003264:	83 3d 25 a3 07 00 00 	cmpl   $0x0,0x7a325(%rip)        # 0x18007d590
   18000326b:	48 8d 15 3b 44 00 00 	lea    0x443b(%rip),%rdx        # 0x1800076ad
   180003272:	48 8d 05 44 44 00 00 	lea    0x4444(%rip),%rax        # 0x1800076bd
   180003279:	48 0f 44 d0          	cmove  %rax,%rdx
   18000327d:	48 8b 0d fc 4f 00 00 	mov    0x4ffc(%rip),%rcx        # 0x180008280
   180003284:	48 85 c9             	test   %rcx,%rcx
   180003287:	74 1f                	je     0x1800032a8
   180003289:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000328f:	90                   	nop
   180003290:	41 ff c0             	inc    %r8d
   180003293:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180003298:	75 f6                	jne    0x180003290
   18000329a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800032a1:	00 00 
   1800032a3:	4d 89 e1             	mov    %r12,%r9
   1800032a6:	ff d3                	call   *%rbx
   1800032a8:	8b 05 fe a2 07 00    	mov    0x7a2fe(%rip),%eax        # 0x18007d5ac
   1800032ae:	3b 05 fc a2 07 00    	cmp    0x7a2fc(%rip),%eax        # 0x18007d5b0
   1800032b4:	0f 83 66 01 00 00    	jae    0x180003420
   1800032ba:	48 8b 0d bf 4f 00 00 	mov    0x4fbf(%rip),%rcx        # 0x180008280
   1800032c1:	eb 21                	jmp    0x1800032e4
   1800032c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800032ca:	84 00 00 00 00 00 
   1800032d0:	31 c9                	xor    %ecx,%ecx
   1800032d2:	8b 05 d4 a2 07 00    	mov    0x7a2d4(%rip),%eax        # 0x18007d5ac
   1800032d8:	3b 05 d2 a2 07 00    	cmp    0x7a2d2(%rip),%eax        # 0x18007d5b0
   1800032de:	0f 83 3c 01 00 00    	jae    0x180003420
   1800032e4:	8d 50 01             	lea    0x1(%rax),%edx
   1800032e7:	89 15 bf a2 07 00    	mov    %edx,0x7a2bf(%rip)        # 0x18007d5ac
   1800032ed:	89 c0                	mov    %eax,%eax
   1800032ef:	8b 34 87             	mov    (%rdi,%rax,4),%esi
   1800032f2:	89 f0                	mov    %esi,%eax
   1800032f4:	25 00 00 ff ff       	and    $0xffff0000,%eax
   1800032f9:	3d 00 00 01 00       	cmp    $0x10000,%eax
   1800032fe:	48 8d 15 52 41 00 00 	lea    0x4152(%rip),%rdx        # 0x180007457
   180003305:	48 8d 05 b3 41 00 00 	lea    0x41b3(%rip),%rax        # 0x1800074bf
   18000330c:	48 0f 44 d0          	cmove  %rax,%rdx
   180003310:	48 85 c9             	test   %rcx,%rcx
   180003313:	74 23                	je     0x180003338
   180003315:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180003320:	41 ff c0             	inc    %r8d
   180003323:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180003328:	75 f6                	jne    0x180003320
   18000332a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003331:	00 00 
   180003333:	4d 89 e1             	mov    %r12,%r9
   180003336:	ff d3                	call   *%rbx
   180003338:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000333d:	4c 89 e9             	mov    %r13,%rcx
   180003340:	48 89 e8             	mov    %rbp,%rax
   180003343:	81 e6 ff ff 00 00    	and    $0xffff,%esi
   180003349:	74 45                	je     0x180003390
   18000334b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180003350:	89 f2                	mov    %esi,%edx
   180003352:	49 0f af d6          	imul   %r14,%rdx
   180003356:	48 c1 ea 23          	shr    $0x23,%rdx
   18000335a:	44 8d 04 12          	lea    (%rdx,%rdx,1),%r8d
   18000335e:	47 8d 04 80          	lea    (%r8,%r8,4),%r8d
   180003362:	41 89 f1             	mov    %esi,%r9d
   180003365:	45 29 c1             	sub    %r8d,%r9d
   180003368:	41 80 c9 30          	or     $0x30,%r9b
   18000336c:	44 88 09             	mov    %r9b,(%rcx)
   18000336f:	4c 01 f8             	add    %r15,%rax
   180003372:	48 ff c9             	dec    %rcx
   180003375:	83 fe 09             	cmp    $0x9,%esi
   180003378:	89 d6                	mov    %edx,%esi
   18000337a:	77 d4                	ja     0x180003350
   18000337c:	48 c1 f8 20          	sar    $0x20,%rax
   180003380:	eb 18                	jmp    0x18000339a
   180003382:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003389:	1f 84 00 00 00 00 00 
   180003390:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180003395:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000339a:	48 8b 0d df 4e 00 00 	mov    0x4edf(%rip),%rcx        # 0x180008280
   1800033a1:	48 85 c9             	test   %rcx,%rcx
   1800033a4:	0f 84 26 ff ff ff    	je     0x1800032d0
   1800033aa:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800033ae:	48 83 c2 70          	add    $0x70,%rdx
   1800033b2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800033b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800033bf:	00 
   1800033c0:	41 ff c0             	inc    %r8d
   1800033c3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800033c8:	75 f6                	jne    0x1800033c0
   1800033ca:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800033d1:	00 00 
   1800033d3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800033da:	00 
   1800033db:	ff d3                	call   *%rbx
   1800033dd:	48 8b 0d 9c 4e 00 00 	mov    0x4e9c(%rip),%rcx        # 0x180008280
   1800033e4:	48 85 c9             	test   %rcx,%rcx
   1800033e7:	0f 84 e3 fe ff ff    	je     0x1800032d0
   1800033ed:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800033f4:	00 00 
   1800033f6:	48 8d 15 df 43 00 00 	lea    0x43df(%rip),%rdx        # 0x1800077dc
   1800033fd:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180003403:	4d 89 e1             	mov    %r12,%r9
   180003406:	ff d3                	call   *%rbx
   180003408:	48 8b 0d 71 4e 00 00 	mov    0x4e71(%rip),%rcx        # 0x180008280
   18000340f:	e9 be fe ff ff       	jmp    0x1800032d2
   180003414:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000341b:	00 00 00 00 00 
   180003420:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
   180003425:	89 c8                	mov    %ecx,%eax
   180003427:	49 0f af c6          	imul   %r14,%rax
   18000342b:	48 c1 e8 25          	shr    $0x25,%rax
   18000342f:	c1 e0 03             	shl    $0x3,%eax
   180003432:	8d 04 80             	lea    (%rax,%rax,4),%eax
   180003435:	29 c1                	sub    %eax,%ecx
   180003437:	89 4c 24 68          	mov    %ecx,0x68(%rsp)
   18000343b:	83 f9 14             	cmp    $0x14,%ecx
   18000343e:	0f 85 e2 03 00 00    	jne    0x180003826
   180003444:	8b 05 a2 a2 07 00    	mov    0x7a2a2(%rip),%eax        # 0x18007d6ec
   18000344a:	0b 05 84 a2 07 00    	or     0x7a284(%rip),%eax        # 0x18007d6d4
   180003450:	0b 05 ae a2 07 00    	or     0x7a2ae(%rip),%eax        # 0x18007d704
   180003456:	0b 05 c0 a2 07 00    	or     0x7a2c0(%rip),%eax        # 0x18007d71c
   18000345c:	0b 05 d2 a2 07 00    	or     0x7a2d2(%rip),%eax        # 0x18007d734
   180003462:	0b 05 e4 a2 07 00    	or     0x7a2e4(%rip),%eax        # 0x18007d74c
   180003468:	0f 84 b8 03 00 00    	je     0x180003826
   18000346e:	48 8b 3d ab 4b 00 00 	mov    0x4bab(%rip),%rdi        # 0x180008020
   180003475:	8b 47 3c             	mov    0x3c(%rdi),%eax
   180003478:	8b 74 07 50          	mov    0x50(%rdi,%rax,1),%esi
   18000347c:	48 89 74 24 48       	mov    %rsi,0x48(%rsp)
   180003481:	eb 20                	jmp    0x1800034a3
   180003483:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000348a:	84 00 00 00 00 00 
   180003490:	4d 85 ed             	test   %r13,%r13
   180003493:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   180003498:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
   18000349d:	0f 84 6d 03 00 00    	je     0x180003810
   1800034a3:	48 8b 05 76 4b 00 00 	mov    0x4b76(%rip),%rax        # 0x180008020
   1800034aa:	48 01 f0             	add    %rsi,%rax
   1800034ad:	48 39 c7             	cmp    %rax,%rdi
   1800034b0:	0f 83 5a 03 00 00    	jae    0x180003810
   1800034b6:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1800034bc:	48 89 f9             	mov    %rdi,%rcx
   1800034bf:	4c 89 e2             	mov    %r12,%rdx
   1800034c2:	ff 15 30 45 00 00    	call   *0x4530(%rip)        # 0x1800079f8
   1800034c8:	48 85 c0             	test   %rax,%rax
   1800034cb:	0f 84 3f 03 00 00    	je     0x180003810
   1800034d1:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1800034d6:	4c 8b ac 24 88 00 00 	mov    0x88(%rsp),%r13
   1800034dd:	00 
   1800034de:	4b 8d 3c 2c          	lea    (%r12,%r13,1),%rdi
   1800034e2:	48 8b 1d 37 4b 00 00 	mov    0x4b37(%rip),%rbx        # 0x180008020
   1800034e9:	48 01 f3             	add    %rsi,%rbx
   1800034ec:	48 39 df             	cmp    %rbx,%rdi
   1800034ef:	48 0f 46 df          	cmovbe %rdi,%rbx
   1800034f3:	81 bc 24 90 00 00 00 	cmpl   $0x1000,0x90(%rsp)
   1800034fa:	00 10 00 00 
   1800034fe:	48 8d 15 bb a1 07 00 	lea    0x7a1bb(%rip),%rdx        # 0x18007d6c0
   180003505:	75 89                	jne    0x180003490
   180003507:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
   18000350e:	b9 04 07 00 00       	mov    $0x704,%ecx
   180003513:	21 c8                	and    %ecx,%eax
   180003515:	83 f8 04             	cmp    $0x4,%eax
   180003518:	0f 85 72 ff ff ff    	jne    0x180003490
   18000351e:	49 8d 44 24 11       	lea    0x11(%r12),%rax
   180003523:	48 39 d8             	cmp    %rbx,%rax
   180003526:	72 1d                	jb     0x180003545
   180003528:	e9 63 ff ff ff       	jmp    0x180003490
   18000352d:	0f 1f 00             	nopl   (%rax)
   180003530:	49 8d 44 24 01       	lea    0x1(%r12),%rax
   180003535:	49 83 c4 12          	add    $0x12,%r12
   180003539:	49 39 dc             	cmp    %rbx,%r12
   18000353c:	49 89 c4             	mov    %rax,%r12
   18000353f:	0f 83 4b ff ff ff    	jae    0x180003490
   180003545:	41 80 3c 24 82       	cmpb   $0x82,(%r12)
   18000354a:	75 e4                	jne    0x180003530
   18000354c:	41 80 7c 24 02 82    	cmpb   $0x82,0x2(%r12)
   180003552:	75 dc                	jne    0x180003530
   180003554:	41 80 7c 24 04 82    	cmpb   $0x82,0x4(%r12)
   18000355a:	75 d4                	jne    0x180003530
   18000355c:	41 80 7c 24 06 00    	cmpb   $0x0,0x6(%r12)
   180003562:	75 cc                	jne    0x180003530
   180003564:	31 ed                	xor    %ebp,%ebp
   180003566:	eb 11                	jmp    0x180003579
   180003568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000356f:	00 
   180003570:	48 ff c5             	inc    %rbp
   180003573:	48 83 fd 06          	cmp    $0x6,%rbp
   180003577:	74 b7                	je     0x180003530
   180003579:	48 8d 34 6d 00 00 00 	lea    0x0(,%rbp,2),%rsi
   180003580:	00 
   180003581:	48 01 ee             	add    %rbp,%rsi
   180003584:	83 7c f2 14 00       	cmpl   $0x0,0x14(%rdx,%rsi,8)
   180003589:	74 e5                	je     0x180003570
   18000358b:	41 0f b6 04 24       	movzbl (%r12),%eax
   180003590:	3a 04 f2             	cmp    (%rdx,%rsi,8),%al
   180003593:	75 db                	jne    0x180003570
   180003595:	48 8d 04 f2          	lea    (%rdx,%rsi,8),%rax
   180003599:	41 0f b6 4c 24 01    	movzbl 0x1(%r12),%ecx
   18000359f:	3a 48 01             	cmp    0x1(%rax),%cl
   1800035a2:	75 cc                	jne    0x180003570
   1800035a4:	41 0f b6 4c 24 02    	movzbl 0x2(%r12),%ecx
   1800035aa:	3a 48 02             	cmp    0x2(%rax),%cl
   1800035ad:	75 c1                	jne    0x180003570
   1800035af:	41 0f b6 4c 24 03    	movzbl 0x3(%r12),%ecx
   1800035b5:	3a 48 03             	cmp    0x3(%rax),%cl
   1800035b8:	75 b6                	jne    0x180003570
   1800035ba:	41 0f b6 4c 24 04    	movzbl 0x4(%r12),%ecx
   1800035c0:	3a 48 04             	cmp    0x4(%rax),%cl
   1800035c3:	75 ab                	jne    0x180003570
   1800035c5:	41 0f b6 4c 24 05    	movzbl 0x5(%r12),%ecx
   1800035cb:	3a 48 05             	cmp    0x5(%rax),%cl
   1800035ce:	75 a0                	jne    0x180003570
   1800035d0:	49 83 7c 24 09 00    	cmpq   $0x0,0x9(%r12)
   1800035d6:	75 98                	jne    0x180003570
   1800035d8:	41 0f b6 44 24 07    	movzbl 0x7(%r12),%eax
   1800035de:	41 0a 44 24 08       	or     0x8(%r12),%al
   1800035e3:	75 8b                	jne    0x180003570
   1800035e5:	41 80 7c 24 06 00    	cmpb   $0x0,0x6(%r12)
   1800035eb:	75 83                	jne    0x180003570
   1800035ed:	83 7c f2 10 00       	cmpl   $0x0,0x10(%rdx,%rsi,8)
   1800035f2:	7e 07                	jle    0x1800035fb
   1800035f4:	0f b6 4c f2 06       	movzbl 0x6(%rdx,%rsi,8),%ecx
   1800035f9:	eb 02                	jmp    0x1800035fd
   1800035fb:	31 c9                	xor    %ecx,%ecx
   1800035fd:	48 8d 04 f2          	lea    (%rdx,%rsi,8),%rax
   180003601:	48 83 c0 10          	add    $0x10,%rax
   180003605:	41 88 0c 24          	mov    %cl,(%r12)
   180003609:	83 38 02             	cmpl   $0x2,(%rax)
   18000360c:	7c 07                	jl     0x180003615
   18000360e:	0f b6 4c f2 07       	movzbl 0x7(%rdx,%rsi,8),%ecx
   180003613:	eb 02                	jmp    0x180003617
   180003615:	31 c9                	xor    %ecx,%ecx
   180003617:	41 88 4c 24 01       	mov    %cl,0x1(%r12)
   18000361c:	83 38 03             	cmpl   $0x3,(%rax)
   18000361f:	7c 07                	jl     0x180003628
   180003621:	0f b6 4c f2 08       	movzbl 0x8(%rdx,%rsi,8),%ecx
   180003626:	eb 02                	jmp    0x18000362a
   180003628:	31 c9                	xor    %ecx,%ecx
   18000362a:	41 88 4c 24 02       	mov    %cl,0x2(%r12)
   18000362f:	83 38 04             	cmpl   $0x4,(%rax)
   180003632:	7c 07                	jl     0x18000363b
   180003634:	0f b6 4c f2 09       	movzbl 0x9(%rdx,%rsi,8),%ecx
   180003639:	eb 02                	jmp    0x18000363d
   18000363b:	31 c9                	xor    %ecx,%ecx
   18000363d:	41 88 4c 24 03       	mov    %cl,0x3(%r12)
   180003642:	83 38 05             	cmpl   $0x5,(%rax)
   180003645:	7c 07                	jl     0x18000364e
   180003647:	0f b6 4c f2 0a       	movzbl 0xa(%rdx,%rsi,8),%ecx
   18000364c:	eb 02                	jmp    0x180003650
   18000364e:	31 c9                	xor    %ecx,%ecx
   180003650:	41 88 4c 24 04       	mov    %cl,0x4(%r12)
   180003655:	83 38 06             	cmpl   $0x6,(%rax)
   180003658:	7c 07                	jl     0x180003661
   18000365a:	0f b6 4c f2 0b       	movzbl 0xb(%rdx,%rsi,8),%ecx
   18000365f:	eb 02                	jmp    0x180003663
   180003661:	31 c9                	xor    %ecx,%ecx
   180003663:	41 88 4c 24 05       	mov    %cl,0x5(%r12)
   180003668:	83 38 07             	cmpl   $0x7,(%rax)
   18000366b:	7c 07                	jl     0x180003674
   18000366d:	0f b6 4c f2 0c       	movzbl 0xc(%rdx,%rsi,8),%ecx
   180003672:	eb 02                	jmp    0x180003676
   180003674:	31 c9                	xor    %ecx,%ecx
   180003676:	41 88 4c 24 06       	mov    %cl,0x6(%r12)
   18000367b:	83 38 08             	cmpl   $0x8,(%rax)
   18000367e:	7c 07                	jl     0x180003687
   180003680:	0f b6 4c f2 0d       	movzbl 0xd(%rdx,%rsi,8),%ecx
   180003685:	eb 02                	jmp    0x180003689
   180003687:	31 c9                	xor    %ecx,%ecx
   180003689:	41 88 4c 24 07       	mov    %cl,0x7(%r12)
   18000368e:	83 38 09             	cmpl   $0x9,(%rax)
   180003691:	7c 07                	jl     0x18000369a
   180003693:	0f b6 4c f2 0e       	movzbl 0xe(%rdx,%rsi,8),%ecx
   180003698:	eb 02                	jmp    0x18000369c
   18000369a:	31 c9                	xor    %ecx,%ecx
   18000369c:	41 88 4c 24 08       	mov    %cl,0x8(%r12)
   1800036a1:	31 c9                	xor    %ecx,%ecx
   1800036a3:	83 38 0a             	cmpl   $0xa,(%rax)
   1800036a6:	ba 00 00 00 00       	mov    $0x0,%edx
   1800036ab:	7c 0c                	jl     0x1800036b9
   1800036ad:	48 8d 15 0c a0 07 00 	lea    0x7a00c(%rip),%rdx        # 0x18007d6c0
   1800036b4:	0f b6 54 f2 0f       	movzbl 0xf(%rdx,%rsi,8),%edx
   1800036b9:	41 88 54 24 09       	mov    %dl,0x9(%r12)
   1800036be:	8b 10                	mov    (%rax),%edx
   1800036c0:	83 fa 0b             	cmp    $0xb,%edx
   1800036c3:	0f 4c d1             	cmovl  %ecx,%edx
   1800036c6:	41 88 54 24 0a       	mov    %dl,0xa(%r12)
   1800036cb:	8b 10                	mov    (%rax),%edx
   1800036cd:	41 89 d0             	mov    %edx,%r8d
   1800036d0:	41 c1 e8 08          	shr    $0x8,%r8d
   1800036d4:	83 fa 0c             	cmp    $0xc,%edx
   1800036d7:	44 0f 4c c1          	cmovl  %ecx,%r8d
   1800036db:	45 88 44 24 0b       	mov    %r8b,0xb(%r12)
   1800036e0:	8b 10                	mov    (%rax),%edx
   1800036e2:	41 89 d0             	mov    %edx,%r8d
   1800036e5:	41 c1 e8 10          	shr    $0x10,%r8d
   1800036e9:	83 fa 0d             	cmp    $0xd,%edx
   1800036ec:	44 0f 4c c1          	cmovl  %ecx,%r8d
   1800036f0:	45 88 44 24 0c       	mov    %r8b,0xc(%r12)
   1800036f5:	8b 10                	mov    (%rax),%edx
   1800036f7:	41 89 d0             	mov    %edx,%r8d
   1800036fa:	41 c1 e8 18          	shr    $0x18,%r8d
   1800036fe:	83 fa 0e             	cmp    $0xe,%edx
   180003701:	44 0f 4c c1          	cmovl  %ecx,%r8d
   180003705:	45 88 44 24 0d       	mov    %r8b,0xd(%r12)
   18000370a:	83 38 0f             	cmpl   $0xf,(%rax)
   18000370d:	48 8d 15 ac 9f 07 00 	lea    0x79fac(%rip),%rdx        # 0x18007d6c0
   180003714:	7c 0b                	jl     0x180003721
   180003716:	48 8d 0c f2          	lea    (%rdx,%rsi,8),%rcx
   18000371a:	48 83 c1 14          	add    $0x14,%rcx
   18000371e:	0f b6 09             	movzbl (%rcx),%ecx
   180003721:	41 88 4c 24 0e       	mov    %cl,0xe(%r12)
   180003726:	83 38 10             	cmpl   $0x10,(%rax)
   180003729:	7c 07                	jl     0x180003732
   18000372b:	0f b6 44 f2 15       	movzbl 0x15(%rdx,%rsi,8),%eax
   180003730:	eb 02                	jmp    0x180003734
   180003732:	31 c0                	xor    %eax,%eax
   180003734:	41 88 44 24 0f       	mov    %al,0xf(%r12)
   180003739:	48 8b 0d 40 4b 00 00 	mov    0x4b40(%rip),%rcx        # 0x180008280
   180003740:	48 85 c9             	test   %rcx,%rcx
   180003743:	0f 84 27 fe ff ff    	je     0x180003570
   180003749:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003750:	00 00 
   180003752:	48 8d 15 c9 3d 00 00 	lea    0x3dc9(%rip),%rdx        # 0x180007522
   180003759:	41 b8 13 00 00 00    	mov    $0x13,%r8d
   18000375f:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   180003766:	00 
   180003767:	ff 15 93 42 00 00    	call   *0x4293(%rip)        # 0x180007a00
   18000376d:	48 8d 15 4c 9f 07 00 	lea    0x79f4c(%rip),%rdx        # 0x18007d6c0
   180003774:	48 8b 0d 05 4b 00 00 	mov    0x4b05(%rip),%rcx        # 0x180008280
   18000377b:	48 85 c9             	test   %rcx,%rcx
   18000377e:	0f 84 ec fd ff ff    	je     0x180003570
   180003784:	48 8d 14 f2          	lea    (%rdx,%rsi,8),%rdx
   180003788:	48 83 c2 06          	add    $0x6,%rdx
   18000378c:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180003792:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003799:	1f 84 00 00 00 00 00 
   1800037a0:	41 ff c0             	inc    %r8d
   1800037a3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800037a8:	75 f6                	jne    0x1800037a0
   1800037aa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800037b1:	00 00 
   1800037b3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800037ba:	00 
   1800037bb:	ff 15 3f 42 00 00    	call   *0x423f(%rip)        # 0x180007a00
   1800037c1:	48 8b 0d b8 4a 00 00 	mov    0x4ab8(%rip),%rcx        # 0x180008280
   1800037c8:	48 85 c9             	test   %rcx,%rcx
   1800037cb:	48 8d 15 ee 9e 07 00 	lea    0x79eee(%rip),%rdx        # 0x18007d6c0
   1800037d2:	0f 84 98 fd ff ff    	je     0x180003570
   1800037d8:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800037df:	00 00 
   1800037e1:	48 8d 15 f4 3f 00 00 	lea    0x3ff4(%rip),%rdx        # 0x1800077dc
   1800037e8:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1800037ee:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800037f5:	00 
   1800037f6:	ff 15 04 42 00 00    	call   *0x4204(%rip)        # 0x180007a00
   1800037fc:	48 8d 15 bd 9e 07 00 	lea    0x79ebd(%rip),%rdx        # 0x18007d6c0
   180003803:	e9 68 fd ff ff       	jmp    0x180003570
   180003808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000380f:	00 
   180003810:	48 bd 00 00 00 00 0f 	movabs $0xf00000000,%rbp
   180003817:	00 00 00 
   18000381a:	4c 8d 6c 24 7e       	lea    0x7e(%rsp),%r13
   18000381f:	48 8b 1d da 41 00 00 	mov    0x41da(%rip),%rbx        # 0x180007a00
   180003826:	83 3d 23 9f 07 00 00 	cmpl   $0x0,0x79f23(%rip)        # 0x18007d750
   18000382d:	8b 7c 24 6c          	mov    0x6c(%rsp),%edi
   180003831:	74 7d                	je     0x1800038b0
   180003833:	8b 35 17 9f 07 00    	mov    0x79f17(%rip),%esi        # 0x18007d750
   180003839:	c7 05 0d 9f 07 00 00 	movl   $0x0,0x79f0d(%rip)        # 0x18007d750
   180003840:	00 00 00 
   180003843:	83 fe 02             	cmp    $0x2,%esi
   180003846:	48 8d 15 dc 3d 00 00 	lea    0x3ddc(%rip),%rdx        # 0x180007629
   18000384d:	48 8d 05 e0 3d 00 00 	lea    0x3de0(%rip),%rax        # 0x180007634
   180003854:	48 0f 44 d0          	cmove  %rax,%rdx
   180003858:	48 8b 0d 21 4a 00 00 	mov    0x4a21(%rip),%rcx        # 0x180008280
   18000385f:	48 85 c9             	test   %rcx,%rcx
   180003862:	74 24                	je     0x180003888
   180003864:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000386a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   180003870:	41 ff c0             	inc    %r8d
   180003873:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180003878:	75 f6                	jne    0x180003870
   18000387a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003881:	00 00 
   180003883:	4d 89 e1             	mov    %r12,%r9
   180003886:	ff d3                	call   *%rbx
   180003888:	83 fe 02             	cmp    $0x2,%esi
   18000388b:	0f 85 ef 06 00 00    	jne    0x180003f80
   180003891:	b9 b0 04 00 00       	mov    $0x4b0,%ecx
   180003896:	ba 78 00 00 00       	mov    $0x78,%edx
   18000389b:	48 8b 35 c6 40 00 00 	mov    0x40c6(%rip),%rsi        # 0x180007968
   1800038a2:	ff d6                	call   *%rsi
   1800038a4:	b9 40 06 00 00       	mov    $0x640,%ecx
   1800038a9:	ba 78 00 00 00       	mov    $0x78,%edx
   1800038ae:	ff d6                	call   *%rsi
   1800038b0:	40 84 ff             	test   %dil,%dil
   1800038b3:	0f 84 e0 06 00 00    	je     0x180003f99
   1800038b9:	b9 38 00 00 00       	mov    $0x38,%ecx
   1800038be:	4c 8b 25 5b 41 00 00 	mov    0x415b(%rip),%r12        # 0x180007a20
   1800038c5:	41 ff d4             	call   *%r12
   1800038c8:	89 c6                	mov    %eax,%esi
   1800038ca:	b9 39 00 00 00       	mov    $0x39,%ecx
   1800038cf:	41 ff d4             	call   *%r12
   1800038d2:	89 c7                	mov    %eax,%edi
   1800038d4:	b9 30 00 00 00       	mov    $0x30,%ecx
   1800038d9:	41 ff d4             	call   *%r12
   1800038dc:	41 89 c4             	mov    %eax,%r12d
   1800038df:	66 85 f6             	test   %si,%si
   1800038e2:	79 50                	jns    0x180003934
   1800038e4:	83 3d 69 9e 07 00 00 	cmpl   $0x0,0x79e69(%rip)        # 0x18007d754
   1800038eb:	75 47                	jne    0x180003934
   1800038ed:	c7 05 49 9f 07 00 01 	movl   $0x1,0x79f49(%rip)        # 0x18007d840
   1800038f4:	00 00 00 
   1800038f7:	c7 05 43 9f 07 00 00 	movl   $0x0,0x79f43(%rip)        # 0x18007d844
   1800038fe:	00 00 00 
   180003901:	8b 05 81 49 00 00    	mov    0x4981(%rip),%eax        # 0x180008288
   180003907:	89 05 3b 9f 07 00    	mov    %eax,0x79f3b(%rip)        # 0x18007d848
   18000390d:	89 05 39 9f 07 00    	mov    %eax,0x79f39(%rip)        # 0x18007d84c
   180003913:	e8 b8 24 00 00       	call   0x180005dd0
   180003918:	48 8d 0d e0 3a 00 00 	lea    0x3ae0(%rip),%rcx        # 0x1800073ff
   18000391f:	e8 1c 27 00 00       	call   0x180006040
   180003924:	b9 20 03 00 00       	mov    $0x320,%ecx
   180003929:	ba 64 00 00 00       	mov    $0x64,%edx
   18000392e:	ff 15 34 40 00 00    	call   *0x4034(%rip)        # 0x180007968
   180003934:	66 85 ff             	test   %di,%di
   180003937:	79 20                	jns    0x180003959
   180003939:	83 3d 18 9e 07 00 00 	cmpl   $0x0,0x79e18(%rip)        # 0x18007d758
   180003940:	75 17                	jne    0x180003959
   180003942:	31 c9                	xor    %ecx,%ecx
   180003944:	e8 17 16 00 00       	call   0x180004f60
   180003949:	b9 f4 01 00 00       	mov    $0x1f4,%ecx
   18000394e:	ba 64 00 00 00       	mov    $0x64,%edx
   180003953:	ff 15 0f 40 00 00    	call   *0x400f(%rip)        # 0x180007968
   180003959:	66 45 85 e4          	test   %r12w,%r12w
   18000395d:	79 23                	jns    0x180003982
   18000395f:	83 3d f6 9d 07 00 00 	cmpl   $0x0,0x79df6(%rip)        # 0x18007d75c
   180003966:	75 1a                	jne    0x180003982
   180003968:	b9 01 00 00 00       	mov    $0x1,%ecx
   18000396d:	e8 ee 15 00 00       	call   0x180004f60
   180003972:	b9 dc 05 00 00       	mov    $0x5dc,%ecx
   180003977:	ba 64 00 00 00       	mov    $0x64,%edx
   18000397c:	ff 15 e6 3f 00 00    	call   *0x3fe6(%rip)        # 0x180007968
   180003982:	0f b7 c6             	movzwl %si,%eax
   180003985:	c1 e8 0f             	shr    $0xf,%eax
   180003988:	0f b7 cf             	movzwl %di,%ecx
   18000398b:	c1 e9 0f             	shr    $0xf,%ecx
   18000398e:	41 0f b7 d4          	movzwl %r12w,%edx
   180003992:	c1 ea 0f             	shr    $0xf,%edx
   180003995:	89 05 b9 9d 07 00    	mov    %eax,0x79db9(%rip)        # 0x18007d754
   18000399b:	89 0d b7 9d 07 00    	mov    %ecx,0x79db7(%rip)        # 0x18007d758
   1800039a1:	89 15 b5 9d 07 00    	mov    %edx,0x79db5(%rip)        # 0x18007d75c
   1800039a7:	b9 44 00 00 00       	mov    $0x44,%ecx
   1800039ac:	4c 8b 25 6d 40 00 00 	mov    0x406d(%rip),%r12        # 0x180007a20
   1800039b3:	41 ff d4             	call   *%r12
   1800039b6:	89 c7                	mov    %eax,%edi
   1800039b8:	66 85 c0             	test   %ax,%ax
   1800039bb:	0f 89 ce 00 00 00    	jns    0x180003a8f
   1800039c1:	83 3d 98 9d 07 00 00 	cmpl   $0x0,0x79d98(%rip)        # 0x18007d760
   1800039c8:	0f 85 c1 00 00 00    	jne    0x180003a8f
   1800039ce:	b9 84 03 00 00       	mov    $0x384,%ecx
   1800039d3:	ba 96 00 00 00       	mov    $0x96,%edx
   1800039d8:	ff 15 8a 3f 00 00    	call   *0x3f8a(%rip)        # 0x180007968
   1800039de:	48 8b 0d 9b 48 00 00 	mov    0x489b(%rip),%rcx        # 0x180008280
   1800039e5:	48 85 c9             	test   %rcx,%rcx
   1800039e8:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   1800039ed:	74 1b                	je     0x180003a0a
   1800039ef:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800039f6:	00 00 
   1800039f8:	48 8d 15 e4 3c 00 00 	lea    0x3ce4(%rip),%rdx        # 0x1800076e3
   1800039ff:	41 b8 0e 00 00 00    	mov    $0xe,%r8d
   180003a05:	4d 89 e1             	mov    %r12,%r9
   180003a08:	ff d3                	call   *%rbx
   180003a0a:	8b 05 54 9d 07 00    	mov    0x79d54(%rip),%eax        # 0x18007d764
   180003a10:	83 f8 03             	cmp    $0x3,%eax
   180003a13:	7f 06                	jg     0x180003a1b
   180003a15:	8b 05 49 9d 07 00    	mov    0x79d49(%rip),%eax        # 0x18007d764
   180003a1b:	8b 05 43 9d 07 00    	mov    0x79d43(%rip),%eax        # 0x18007d764
   180003a21:	31 f6                	xor    %esi,%esi
   180003a23:	83 f8 03             	cmp    $0x3,%eax
   180003a26:	7c 09                	jl     0x180003a31
   180003a28:	8b 35 36 9d 07 00    	mov    0x79d36(%rip),%esi        # 0x18007d764
   180003a2e:	83 c6 fe             	add    $0xfffffffe,%esi
   180003a31:	3b 35 2d 9d 07 00    	cmp    0x79d2d(%rip),%esi        # 0x18007d764
   180003a37:	4c 89 ed             	mov    %r13,%rbp
   180003a3a:	0f 8c 7e 04 00 00    	jl     0x180003ebe
   180003a40:	48 8b 0d 39 48 00 00 	mov    0x4839(%rip),%rcx        # 0x180008280
   180003a47:	48 85 c9             	test   %rcx,%rcx
   180003a4a:	48 8b 1d af 3f 00 00 	mov    0x3faf(%rip),%rbx        # 0x180007a00
   180003a51:	74 1b                	je     0x180003a6e
   180003a53:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003a5a:	00 00 
   180003a5c:	48 8d 15 8f 3c 00 00 	lea    0x3c8f(%rip),%rdx        # 0x1800076f2
   180003a63:	41 b8 0d 00 00 00    	mov    $0xd,%r8d
   180003a69:	4d 89 e1             	mov    %r12,%r9
   180003a6c:	ff d3                	call   *%rbx
   180003a6e:	b9 14 05 00 00       	mov    $0x514,%ecx
   180003a73:	ba 96 00 00 00       	mov    $0x96,%edx
   180003a78:	ff 15 ea 3e 00 00    	call   *0x3eea(%rip)        # 0x180007968
   180003a7e:	4c 8b 25 9b 3f 00 00 	mov    0x3f9b(%rip),%r12        # 0x180007a20
   180003a85:	48 bd 00 00 00 00 0f 	movabs $0xf00000000,%rbp
   180003a8c:	00 00 00 
   180003a8f:	0f b7 c7             	movzwl %di,%eax
   180003a92:	c1 e8 0f             	shr    $0xf,%eax
   180003a95:	89 05 c5 9c 07 00    	mov    %eax,0x79cc5(%rip)        # 0x18007d760
   180003a9b:	b9 31 00 00 00       	mov    $0x31,%ecx
   180003aa0:	41 ff d4             	call   *%r12
   180003aa3:	89 c7                	mov    %eax,%edi
   180003aa5:	b9 32 00 00 00       	mov    $0x32,%ecx
   180003aaa:	41 ff d4             	call   *%r12
   180003aad:	89 c6                	mov    %eax,%esi
   180003aaf:	b9 33 00 00 00       	mov    $0x33,%ecx
   180003ab4:	41 ff d4             	call   *%r12
   180003ab7:	41 89 c4             	mov    %eax,%r12d
   180003aba:	66 85 ff             	test   %di,%di
   180003abd:	79 65                	jns    0x180003b24
   180003abf:	83 3d ca 9c 07 00 00 	cmpl   $0x0,0x79cca(%rip)        # 0x18007d790
   180003ac6:	75 5c                	jne    0x180003b24
   180003ac8:	48 8b 0d b1 47 00 00 	mov    0x47b1(%rip),%rcx        # 0x180008280
   180003acf:	48 85 c9             	test   %rcx,%rcx
   180003ad2:	74 1d                	je     0x180003af1
   180003ad4:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003adb:	00 00 
   180003add:	48 8d 15 d5 3a 00 00 	lea    0x3ad5(%rip),%rdx        # 0x1800075b9
   180003ae4:	41 b8 1a 00 00 00    	mov    $0x1a,%r8d
   180003aea:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
   180003aef:	ff d3                	call   *%rbx
   180003af1:	b9 02 01 00 00       	mov    $0x102,%ecx
   180003af6:	e8 e5 1d 00 00       	call   0x1800058e0
   180003afb:	48 8b 0d 7e 47 00 00 	mov    0x477e(%rip),%rcx        # 0x180008280
   180003b02:	48 85 c9             	test   %rcx,%rcx
   180003b05:	74 1d                	je     0x180003b24
   180003b07:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003b0e:	00 00 
   180003b10:	48 8d 15 45 3b 00 00 	lea    0x3b45(%rip),%rdx        # 0x18000765c
   180003b17:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   180003b1d:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
   180003b22:	ff d3                	call   *%rbx
   180003b24:	66 85 f6             	test   %si,%si
   180003b27:	0f 89 e2 01 00 00    	jns    0x180003d0f
   180003b2d:	83 3d 60 9c 07 00 00 	cmpl   $0x0,0x79c60(%rip)        # 0x18007d794
   180003b34:	0f 85 d5 01 00 00    	jne    0x180003d0f
   180003b3a:	48 8b 0d 3f 47 00 00 	mov    0x473f(%rip),%rcx        # 0x180008280
   180003b41:	48 85 c9             	test   %rcx,%rcx
   180003b44:	48 8b 05 b5 3e 00 00 	mov    0x3eb5(%rip),%rax        # 0x180007a00
   180003b4b:	74 1d                	je     0x180003b6a
   180003b4d:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003b54:	00 00 
   180003b56:	48 8d 15 96 3a 00 00 	lea    0x3a96(%rip),%rdx        # 0x1800075f3
   180003b5d:	41 b8 0e 00 00 00    	mov    $0xe,%r8d
   180003b63:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
   180003b68:	ff d0                	call   *%rax
   180003b6a:	66 44 89 64 24 48    	mov    %r12w,0x48(%rsp)
   180003b70:	bb 3c 00 00 00       	mov    $0x3c,%ebx
   180003b75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   180003b7c:	00 00 00 00 
   180003b80:	b9 11 00 00 00       	mov    $0x11,%ecx
   180003b85:	4c 8b 25 94 3e 00 00 	mov    0x3e94(%rip),%r12        # 0x180007a20
   180003b8c:	41 ff d4             	call   *%r12
   180003b8f:	41 89 c5             	mov    %eax,%r13d
   180003b92:	b9 10 00 00 00       	mov    $0x10,%ecx
   180003b97:	41 ff d4             	call   *%r12
   180003b9a:	66 44 09 e8          	or     %r13w,%ax
   180003b9e:	79 0f                	jns    0x180003baf
   180003ba0:	b9 32 00 00 00       	mov    $0x32,%ecx
   180003ba5:	ff 15 2d 3e 00 00    	call   *0x3e2d(%rip)        # 0x1800079d8
   180003bab:	ff cb                	dec    %ebx
   180003bad:	75 d1                	jne    0x180003b80
   180003baf:	b9 88 13 00 00       	mov    $0x1388,%ecx
   180003bb4:	48 8b 1d 1d 3e 00 00 	mov    0x3e1d(%rip),%rbx        # 0x1800079d8
   180003bbb:	ff d3                	call   *%rbx
   180003bbd:	0f 29 b4 24 80 00 00 	movaps %xmm6,0x80(%rsp)
   180003bc4:	00 
   180003bc5:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   180003bcc:	00 00 00 00 00 
   180003bd1:	0f 29 7c 24 70       	movaps %xmm7,0x70(%rsp)
   180003bd6:	0f 11 b4 24 a8 00 00 	movups %xmm6,0xa8(%rsp)
   180003bdd:	00 
   180003bde:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
   180003be5:	00 00 00 00 00 
   180003bea:	44 0f 11 84 24 98 00 	movups %xmm8,0x98(%rsp)
   180003bf1:	00 00 
   180003bf3:	b9 02 00 00 00       	mov    $0x2,%ecx
   180003bf8:	4c 8d 6c 24 70       	lea    0x70(%rsp),%r13
   180003bfd:	4c 89 ea             	mov    %r13,%rdx
   180003c00:	41 b8 28 00 00 00    	mov    $0x28,%r8d
   180003c06:	4c 8b 25 3b 3e 00 00 	mov    0x3e3b(%rip),%r12        # 0x180007a48
   180003c0d:	41 ff d4             	call   *%r12
   180003c10:	b9 78 00 00 00       	mov    $0x78,%ecx
   180003c15:	ff d3                	call   *%rbx
   180003c17:	0f 29 b4 24 80 00 00 	movaps %xmm6,0x80(%rsp)
   180003c1e:	00 
   180003c1f:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   180003c26:	00 00 00 00 00 
   180003c2b:	44 0f 29 4c 24 70    	movaps %xmm9,0x70(%rsp)
   180003c31:	0f 11 b4 24 a8 00 00 	movups %xmm6,0xa8(%rsp)
   180003c38:	00 
   180003c39:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
   180003c40:	00 00 00 00 00 
   180003c45:	44 0f 11 94 24 98 00 	movups %xmm10,0x98(%rsp)
   180003c4c:	00 00 
   180003c4e:	b9 02 00 00 00       	mov    $0x2,%ecx
   180003c53:	4c 89 ea             	mov    %r13,%rdx
   180003c56:	41 b8 28 00 00 00    	mov    $0x28,%r8d
   180003c5c:	41 ff d4             	call   *%r12
   180003c5f:	b9 78 00 00 00       	mov    $0x78,%ecx
   180003c64:	ff d3                	call   *%rbx
   180003c66:	0f 29 b4 24 80 00 00 	movaps %xmm6,0x80(%rsp)
   180003c6d:	00 
   180003c6e:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   180003c75:	00 00 00 00 00 
   180003c7a:	44 0f 29 5c 24 70    	movaps %xmm11,0x70(%rsp)
   180003c80:	0f 11 b4 24 a8 00 00 	movups %xmm6,0xa8(%rsp)
   180003c87:	00 
   180003c88:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
   180003c8f:	00 00 00 00 00 
   180003c94:	44 0f 11 a4 24 98 00 	movups %xmm12,0x98(%rsp)
   180003c9b:	00 00 
   180003c9d:	b9 02 00 00 00       	mov    $0x2,%ecx
   180003ca2:	4c 89 ea             	mov    %r13,%rdx
   180003ca5:	41 b8 28 00 00 00    	mov    $0x28,%r8d
   180003cab:	41 ff d4             	call   *%r12
   180003cae:	b9 78 00 00 00       	mov    $0x78,%ecx
   180003cb3:	ff d3                	call   *%rbx
   180003cb5:	0f 29 b4 24 80 00 00 	movaps %xmm6,0x80(%rsp)
   180003cbc:	00 
   180003cbd:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   180003cc4:	00 00 00 00 00 
   180003cc9:	44 0f 29 4c 24 70    	movaps %xmm9,0x70(%rsp)
   180003ccf:	0f 11 b4 24 a8 00 00 	movups %xmm6,0xa8(%rsp)
   180003cd6:	00 
   180003cd7:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
   180003cde:	00 00 00 00 00 
   180003ce3:	44 0f 11 94 24 98 00 	movups %xmm10,0x98(%rsp)
   180003cea:	00 00 
   180003cec:	b9 02 00 00 00       	mov    $0x2,%ecx
   180003cf1:	4c 89 ea             	mov    %r13,%rdx
   180003cf4:	41 b8 28 00 00 00    	mov    $0x28,%r8d
   180003cfa:	41 ff d4             	call   *%r12
   180003cfd:	b9 78 00 00 00       	mov    $0x78,%ecx
   180003d02:	ff d3                	call   *%rbx
   180003d04:	4c 8d 6c 24 7e       	lea    0x7e(%rsp),%r13
   180003d09:	44 0f b7 64 24 48    	movzwl 0x48(%rsp),%r12d
   180003d0f:	0f b7 ff             	movzwl %di,%edi
   180003d12:	c1 ef 0f             	shr    $0xf,%edi
   180003d15:	0f b7 de             	movzwl %si,%ebx
   180003d18:	c1 eb 0f             	shr    $0xf,%ebx
   180003d1b:	41 0f b7 c4          	movzwl %r12w,%eax
   180003d1f:	89 c6                	mov    %eax,%esi
   180003d21:	c1 ee 0f             	shr    $0xf,%esi
   180003d24:	66 85 c0             	test   %ax,%ax
   180003d27:	0f 89 d2 02 00 00    	jns    0x180003fff
   180003d2d:	83 3d 64 9a 07 00 00 	cmpl   $0x0,0x79a64(%rip)        # 0x18007d798
   180003d34:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   180003d39:	0f 85 88 02 00 00    	jne    0x180003fc7
   180003d3f:	48 8b 0d 3a 45 00 00 	mov    0x453a(%rip),%rcx        # 0x180008280
   180003d46:	48 85 c9             	test   %rcx,%rcx
   180003d49:	74 1f                	je     0x180003d6a
   180003d4b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003d52:	00 00 
   180003d54:	48 8d 15 79 38 00 00 	lea    0x3879(%rip),%rdx        # 0x1800075d4
   180003d5b:	41 b8 1e 00 00 00    	mov    $0x1e,%r8d
   180003d61:	4d 89 e1             	mov    %r12,%r9
   180003d64:	ff 15 96 3c 00 00    	call   *0x3c96(%rip)        # 0x180007a00
   180003d6a:	b9 86 02 00 00       	mov    $0x286,%ecx
   180003d6f:	e8 6c 1b 00 00       	call   0x1800058e0
   180003d74:	48 8b 0d 05 45 00 00 	mov    0x4505(%rip),%rcx        # 0x180008280
   180003d7b:	48 85 c9             	test   %rcx,%rcx
   180003d7e:	0f 84 43 02 00 00    	je     0x180003fc7
   180003d84:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003d8b:	00 00 
   180003d8d:	48 8d 15 c8 38 00 00 	lea    0x38c8(%rip),%rdx        # 0x18000765c
   180003d94:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   180003d9a:	4d 89 e1             	mov    %r12,%r9
   180003d9d:	ff 15 5d 3c 00 00    	call   *0x3c5d(%rip)        # 0x180007a00
   180003da3:	e9 1f 02 00 00       	jmp    0x180003fc7
   180003da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180003daf:	00 
   180003db0:	83 e3 fc             	and    $0xfffffffc,%ebx
   180003db3:	89 f0                	mov    %esi,%eax
   180003db5:	29 d8                	sub    %ebx,%eax
   180003db7:	48 63 d8             	movslq %eax,%rbx
   180003dba:	c7 05 ac 99 07 00 82 	movl   $0x1f821f82,0x799ac(%rip)        # 0x18007d770
   180003dc1:	1f 82 1f 
   180003dc4:	66 c7 05 a7 99 07 00 	movw   $0x1f82,0x799a7(%rip)        # 0x18007d774
   180003dcb:	82 1f 
   180003dcd:	4c 8d 2d 9c 99 07 00 	lea    0x7999c(%rip),%r13        # 0x18007d770
   180003dd4:	4c 89 e9             	mov    %r13,%rcx
   180003dd7:	ba 06 00 00 00       	mov    $0x6,%edx
   180003ddc:	4c 8d 05 be 35 00 00 	lea    0x35be(%rip),%r8        # 0x1800073a1
   180003de3:	e8 78 15 00 00       	call   0x180005360
   180003de8:	c7 05 7e 99 07 00 e0 	movl   $0xfee0fee0,0x7997e(%rip)        # 0x18007d770
   180003def:	fe e0 fe 
   180003df2:	66 c7 05 79 99 07 00 	movw   $0xfee0,0x79979(%rip)        # 0x18007d774
   180003df9:	e0 fe 
   180003dfb:	4c 89 e9             	mov    %r13,%rcx
   180003dfe:	ba 06 00 00 00       	mov    $0x6,%edx
   180003e03:	4c 8d 05 a3 35 00 00 	lea    0x35a3(%rip),%r8        # 0x1800073ad
   180003e0a:	e8 51 15 00 00       	call   0x180005360
   180003e0f:	66 c7 05 58 99 07 00 	movw   $0xbbef,0x79958(%rip)        # 0x18007d770
   180003e16:	ef bb 
   180003e18:	c6 05 53 99 07 00 a0 	movb   $0xa0,0x79953(%rip)        # 0x18007d772
   180003e1f:	c7 05 4a 99 07 00 ef 	movl   $0xefa0bbef,0x7994a(%rip)        # 0x18007d773
   180003e26:	bb a0 ef 
   180003e29:	66 c7 05 45 99 07 00 	movw   $0xa0bb,0x79945(%rip)        # 0x18007d777
   180003e30:	bb a0 
   180003e32:	4c 89 e9             	mov    %r13,%rcx
   180003e35:	ba 09 00 00 00       	mov    $0x9,%edx
   180003e3a:	4c 8d 05 67 35 00 00 	lea    0x3567(%rip),%r8        # 0x1800073a8
   180003e41:	e8 1a 15 00 00       	call   0x180005360
   180003e46:	66 c7 05 21 99 07 00 	movw   $0x0,0x79921(%rip)        # 0x18007d770
   180003e4d:	00 00 
   180003e4f:	c6 05 1c 99 07 00 00 	movb   $0x0,0x7991c(%rip)        # 0x18007d772
   180003e56:	4c 89 e9             	mov    %r13,%rcx
   180003e59:	ba 03 00 00 00       	mov    $0x3,%edx
   180003e5e:	4c 8d 05 4e 35 00 00 	lea    0x354e(%rip),%r8        # 0x1800073b3
   180003e65:	e8 f6 14 00 00       	call   0x180005360
   180003e6a:	c7 05 fc 98 07 00 00 	movl   $0x0,0x798fc(%rip)        # 0x18007d770
   180003e71:	00 00 00 
   180003e74:	66 c7 05 f7 98 07 00 	movw   $0x0,0x798f7(%rip)        # 0x18007d774
   180003e7b:	00 00 
   180003e7d:	4c 89 e9             	mov    %r13,%rcx
   180003e80:	ba 06 00 00 00       	mov    $0x6,%edx
   180003e85:	4c 8d 05 3f 35 00 00 	lea    0x353f(%rip),%r8        # 0x1800073cb
   180003e8c:	e8 cf 14 00 00       	call   0x180005360
   180003e91:	48 8d 05 e8 98 07 00 	lea    0x798e8(%rip),%rax        # 0x18007d780
   180003e98:	48 8d 0c 98          	lea    (%rax,%rbx,4),%rcx
   180003e9c:	ba 03 00 00 00       	mov    $0x3,%edx
   180003ea1:	4c 8d 05 11 35 00 00 	lea    0x3511(%rip),%r8        # 0x1800073b9
   180003ea8:	e8 b3 14 00 00       	call   0x180005360
   180003ead:	ff c6                	inc    %esi
   180003eaf:	3b 35 af 98 07 00    	cmp    0x798af(%rip),%esi        # 0x18007d764
   180003eb5:	49 89 ed             	mov    %rbp,%r13
   180003eb8:	0f 8d 82 fb ff ff    	jge    0x180003a40
   180003ebe:	8d 5e 03             	lea    0x3(%rsi),%ebx
   180003ec1:	85 f6                	test   %esi,%esi
   180003ec3:	0f 49 de             	cmovns %esi,%ebx
   180003ec6:	48 8b 0d b3 43 00 00 	mov    0x43b3(%rip),%rcx        # 0x180008280
   180003ecd:	48 85 c9             	test   %rcx,%rcx
   180003ed0:	0f 84 da fe ff ff    	je     0x180003db0
   180003ed6:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003edd:	00 00 
   180003edf:	48 8d 15 cf 35 00 00 	lea    0x35cf(%rip),%rdx        # 0x1800074b5
   180003ee6:	41 b8 09 00 00 00    	mov    $0x9,%r8d
   180003eec:	4d 89 e1             	mov    %r12,%r9
   180003eef:	ff 15 0b 3b 00 00    	call   *0x3b0b(%rip)        # 0x180007a00
   180003ef5:	48 8b 0d 84 43 00 00 	mov    0x4384(%rip),%rcx        # 0x180008280
   180003efc:	c7 84 24 d0 02 00 00 	movl   $0x0,0x2d0(%rsp)
   180003f03:	00 00 00 00 
   180003f07:	48 85 c9             	test   %rcx,%rcx
   180003f0a:	0f 84 a0 fe ff ff    	je     0x180003db0
   180003f10:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180003f16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   180003f1d:	00 00 00 
   180003f20:	41 ff c0             	inc    %r8d
   180003f23:	42 80 bc 04 d0 02 00 	cmpb   $0x0,0x2d0(%rsp,%r8,1)
   180003f2a:	00 00 
   180003f2c:	75 f2                	jne    0x180003f20
   180003f2e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003f35:	00 00 
   180003f37:	48 8d 94 24 d0 02 00 	lea    0x2d0(%rsp),%rdx
   180003f3e:	00 
   180003f3f:	4d 89 e1             	mov    %r12,%r9
   180003f42:	ff 15 b8 3a 00 00    	call   *0x3ab8(%rip)        # 0x180007a00
   180003f48:	48 8b 0d 31 43 00 00 	mov    0x4331(%rip),%rcx        # 0x180008280
   180003f4f:	48 85 c9             	test   %rcx,%rcx
   180003f52:	0f 84 58 fe ff ff    	je     0x180003db0
   180003f58:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180003f5f:	00 00 
   180003f61:	48 8d 15 74 38 00 00 	lea    0x3874(%rip),%rdx        # 0x1800077dc
   180003f68:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180003f6e:	4d 89 e1             	mov    %r12,%r9
   180003f71:	ff 15 89 3a 00 00    	call   *0x3a89(%rip)        # 0x180007a00
   180003f77:	e9 34 fe ff ff       	jmp    0x180003db0
   180003f7c:	0f 1f 40 00          	nopl   0x0(%rax)
   180003f80:	b9 58 02 00 00       	mov    $0x258,%ecx
   180003f85:	ba c8 00 00 00       	mov    $0xc8,%edx
   180003f8a:	ff 15 d8 39 00 00    	call   *0x39d8(%rip)        # 0x180007968
   180003f90:	40 84 ff             	test   %dil,%dil
   180003f93:	0f 85 20 f9 ff ff    	jne    0x1800038b9
   180003f99:	c7 05 b1 97 07 00 00 	movl   $0x0,0x797b1(%rip)        # 0x18007d754
   180003fa0:	00 00 00 
   180003fa3:	c7 05 ab 97 07 00 00 	movl   $0x0,0x797ab(%rip)        # 0x18007d758
   180003faa:	00 00 00 
   180003fad:	c7 05 a5 97 07 00 00 	movl   $0x0,0x797a5(%rip)        # 0x18007d75c
   180003fb4:	00 00 00 
   180003fb7:	c7 05 9f 97 07 00 00 	movl   $0x0,0x7979f(%rip)        # 0x18007d760
   180003fbe:	00 00 00 
   180003fc1:	31 f6                	xor    %esi,%esi
   180003fc3:	31 ff                	xor    %edi,%edi
   180003fc5:	31 db                	xor    %ebx,%ebx
   180003fc7:	0f b7 c3             	movzwl %bx,%eax
   180003fca:	0f b7 cf             	movzwl %di,%ecx
   180003fcd:	0f b7 d6             	movzwl %si,%edx
   180003fd0:	89 0d ba 97 07 00    	mov    %ecx,0x797ba(%rip)        # 0x18007d790
   180003fd6:	89 05 b8 97 07 00    	mov    %eax,0x797b8(%rip)        # 0x18007d794
   180003fdc:	89 15 b6 97 07 00    	mov    %edx,0x797b6(%rip)        # 0x18007d798
   180003fe2:	83 7c 24 68 00       	cmpl   $0x0,0x68(%rsp)
   180003fe7:	0f 85 13 e9 ff ff    	jne    0x180002900
   180003fed:	8b 35 a9 97 07 00    	mov    0x797a9(%rip),%esi        # 0x18007d79c
   180003ff3:	3b 74 24 64          	cmp    0x64(%rsp),%esi
   180003ff7:	0f 84 03 e9 ff ff    	je     0x180002900
   180003ffd:	eb 11                	jmp    0x180004010
   180003fff:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   180004004:	eb c1                	jmp    0x180003fc7
   180004006:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   18000400d:	00 00 00 
   180004010:	48 8b 0d 69 42 00 00 	mov    0x4269(%rip),%rcx        # 0x180008280
   180004017:	89 f2                	mov    %esi,%edx
   180004019:	48 85 c9             	test   %rcx,%rcx
   18000401c:	48 8b 3d dd 39 00 00 	mov    0x39dd(%rip),%rdi        # 0x180007a00
   180004023:	74 21                	je     0x180004046
   180004025:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000402c:	00 00 
   18000402e:	48 8d 15 51 34 00 00 	lea    0x3451(%rip),%rdx        # 0x180007486
   180004035:	41 b8 11 00 00 00    	mov    $0x11,%r8d
   18000403b:	4d 89 e1             	mov    %r12,%r9
   18000403e:	ff d7                	call   *%rdi
   180004040:	8b 15 56 97 07 00    	mov    0x79756(%rip),%edx        # 0x18007d79c
   180004046:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000404b:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180004050:	48 89 e8             	mov    %rbp,%rax
   180004053:	85 d2                	test   %edx,%edx
   180004055:	74 49                	je     0x1800040a0
   180004057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   18000405e:	00 00 
   180004060:	41 89 d0             	mov    %edx,%r8d
   180004063:	4d 0f af c6          	imul   %r14,%r8
   180004067:	49 c1 e8 23          	shr    $0x23,%r8
   18000406b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000406f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180004073:	41 89 d2             	mov    %edx,%r10d
   180004076:	45 29 ca             	sub    %r9d,%r10d
   180004079:	41 80 ca 30          	or     $0x30,%r10b
   18000407d:	44 88 11             	mov    %r10b,(%rcx)
   180004080:	4c 01 f8             	add    %r15,%rax
   180004083:	48 ff c9             	dec    %rcx
   180004086:	83 fa 09             	cmp    $0x9,%edx
   180004089:	44 89 c2             	mov    %r8d,%edx
   18000408c:	77 d2                	ja     0x180004060
   18000408e:	48 c1 f8 20          	sar    $0x20,%rax
   180004092:	eb 16                	jmp    0x1800040aa
   180004094:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000409b:	00 00 00 00 00 
   1800040a0:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   1800040a5:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800040aa:	48 8b 0d cf 41 00 00 	mov    0x41cf(%rip),%rcx        # 0x180008280
   1800040b1:	48 85 c9             	test   %rcx,%rcx
   1800040b4:	74 5e                	je     0x180004114
   1800040b6:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800040ba:	48 83 c2 70          	add    $0x70,%rdx
   1800040be:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800040c4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800040cb:	00 00 00 00 00 
   1800040d0:	41 ff c0             	inc    %r8d
   1800040d3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800040d8:	75 f6                	jne    0x1800040d0
   1800040da:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800040e1:	00 00 
   1800040e3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800040ea:	00 
   1800040eb:	ff d7                	call   *%rdi
   1800040ed:	48 8b 0d 8c 41 00 00 	mov    0x418c(%rip),%rcx        # 0x180008280
   1800040f4:	48 85 c9             	test   %rcx,%rcx
   1800040f7:	74 1b                	je     0x180004114
   1800040f9:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004100:	00 00 
   180004102:	48 8d 15 e1 33 00 00 	lea    0x33e1(%rip),%rdx        # 0x1800074ea
   180004109:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
   18000410f:	4d 89 e1             	mov    %r12,%r9
   180004112:	ff d7                	call   *%rdi
   180004114:	8b 15 86 96 07 00    	mov    0x79686(%rip),%edx        # 0x18007d7a0
   18000411a:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000411f:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180004124:	48 89 e8             	mov    %rbp,%rax
   180004127:	85 d2                	test   %edx,%edx
   180004129:	74 45                	je     0x180004170
   18000412b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180004130:	41 89 d0             	mov    %edx,%r8d
   180004133:	4d 0f af c6          	imul   %r14,%r8
   180004137:	49 c1 e8 23          	shr    $0x23,%r8
   18000413b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000413f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180004143:	41 89 d2             	mov    %edx,%r10d
   180004146:	45 29 ca             	sub    %r9d,%r10d
   180004149:	41 80 ca 30          	or     $0x30,%r10b
   18000414d:	44 88 11             	mov    %r10b,(%rcx)
   180004150:	4c 01 f8             	add    %r15,%rax
   180004153:	48 ff c9             	dec    %rcx
   180004156:	83 fa 09             	cmp    $0x9,%edx
   180004159:	44 89 c2             	mov    %r8d,%edx
   18000415c:	77 d2                	ja     0x180004130
   18000415e:	48 c1 f8 20          	sar    $0x20,%rax
   180004162:	eb 16                	jmp    0x18000417a
   180004164:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000416b:	00 00 00 00 00 
   180004170:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180004175:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000417a:	48 8b 0d ff 40 00 00 	mov    0x40ff(%rip),%rcx        # 0x180008280
   180004181:	48 85 c9             	test   %rcx,%rcx
   180004184:	0f 84 a5 00 00 00    	je     0x18000422f
   18000418a:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000418e:	48 83 c2 70          	add    $0x70,%rdx
   180004192:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180004198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000419f:	00 
   1800041a0:	41 ff c0             	inc    %r8d
   1800041a3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800041a8:	75 f6                	jne    0x1800041a0
   1800041aa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800041b1:	00 00 
   1800041b3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800041ba:	00 
   1800041bb:	ff d7                	call   *%rdi
   1800041bd:	48 8b 0d bc 40 00 00 	mov    0x40bc(%rip),%rcx        # 0x180008280
   1800041c4:	83 3d 35 3e 00 00 01 	cmpl   $0x1,0x3e35(%rip)        # 0x180008000
   1800041cb:	48 8d 15 0c 32 00 00 	lea    0x320c(%rip),%rdx        # 0x1800073de
   1800041d2:	48 8d 05 14 32 00 00 	lea    0x3214(%rip),%rax        # 0x1800073ed
   1800041d9:	48 0f 44 d0          	cmove  %rax,%rdx
   1800041dd:	48 85 c9             	test   %rcx,%rcx
   1800041e0:	74 4d                	je     0x18000422f
   1800041e2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800041e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800041ef:	00 
   1800041f0:	41 ff c0             	inc    %r8d
   1800041f3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800041f8:	75 f6                	jne    0x1800041f0
   1800041fa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004201:	00 00 
   180004203:	4d 89 e1             	mov    %r12,%r9
   180004206:	ff d7                	call   *%rdi
   180004208:	48 8b 0d 71 40 00 00 	mov    0x4071(%rip),%rcx        # 0x180008280
   18000420f:	48 85 c9             	test   %rcx,%rcx
   180004212:	74 1b                	je     0x18000422f
   180004214:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000421b:	00 00 
   18000421d:	48 8d 15 25 32 00 00 	lea    0x3225(%rip),%rdx        # 0x180007449
   180004224:	41 b8 0d 00 00 00    	mov    $0xd,%r8d
   18000422a:	4d 89 e1             	mov    %r12,%r9
   18000422d:	ff d7                	call   *%rdi
   18000422f:	8b 15 6f 95 07 00    	mov    0x7956f(%rip),%edx        # 0x18007d7a4
   180004235:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000423a:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   18000423f:	48 89 e8             	mov    %rbp,%rax
   180004242:	85 d2                	test   %edx,%edx
   180004244:	74 4a                	je     0x180004290
   180004246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   18000424d:	00 00 00 
   180004250:	41 89 d0             	mov    %edx,%r8d
   180004253:	4d 0f af c6          	imul   %r14,%r8
   180004257:	49 c1 e8 23          	shr    $0x23,%r8
   18000425b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000425f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180004263:	41 89 d2             	mov    %edx,%r10d
   180004266:	45 29 ca             	sub    %r9d,%r10d
   180004269:	41 80 ca 30          	or     $0x30,%r10b
   18000426d:	44 88 11             	mov    %r10b,(%rcx)
   180004270:	4c 01 f8             	add    %r15,%rax
   180004273:	48 ff c9             	dec    %rcx
   180004276:	83 fa 09             	cmp    $0x9,%edx
   180004279:	44 89 c2             	mov    %r8d,%edx
   18000427c:	77 d2                	ja     0x180004250
   18000427e:	48 c1 f8 20          	sar    $0x20,%rax
   180004282:	eb 16                	jmp    0x18000429a
   180004284:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000428b:	00 00 00 00 00 
   180004290:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180004295:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000429a:	48 8b 0d df 3f 00 00 	mov    0x3fdf(%rip),%rcx        # 0x180008280
   1800042a1:	48 85 c9             	test   %rcx,%rcx
   1800042a4:	74 5e                	je     0x180004304
   1800042a6:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800042aa:	48 83 c2 70          	add    $0x70,%rdx
   1800042ae:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800042b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800042bb:	00 00 00 00 00 
   1800042c0:	41 ff c0             	inc    %r8d
   1800042c3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800042c8:	75 f6                	jne    0x1800042c0
   1800042ca:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800042d1:	00 00 
   1800042d3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800042da:	00 
   1800042db:	ff d7                	call   *%rdi
   1800042dd:	48 8b 0d 9c 3f 00 00 	mov    0x3f9c(%rip),%rcx        # 0x180008280
   1800042e4:	48 85 c9             	test   %rcx,%rcx
   1800042e7:	74 1b                	je     0x180004304
   1800042e9:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800042f0:	00 00 
   1800042f2:	48 8d 15 d6 30 00 00 	lea    0x30d6(%rip),%rdx        # 0x1800073cf
   1800042f9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1800042ff:	4d 89 e1             	mov    %r12,%r9
   180004302:	ff d7                	call   *%rdi
   180004304:	8b 15 9e 94 07 00    	mov    0x7949e(%rip),%edx        # 0x18007d7a8
   18000430a:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000430f:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180004314:	48 89 e8             	mov    %rbp,%rax
   180004317:	85 d2                	test   %edx,%edx
   180004319:	74 45                	je     0x180004360
   18000431b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180004320:	41 89 d0             	mov    %edx,%r8d
   180004323:	4d 0f af c6          	imul   %r14,%r8
   180004327:	49 c1 e8 23          	shr    $0x23,%r8
   18000432b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000432f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180004333:	41 89 d2             	mov    %edx,%r10d
   180004336:	45 29 ca             	sub    %r9d,%r10d
   180004339:	41 80 ca 30          	or     $0x30,%r10b
   18000433d:	44 88 11             	mov    %r10b,(%rcx)
   180004340:	4c 01 f8             	add    %r15,%rax
   180004343:	48 ff c9             	dec    %rcx
   180004346:	83 fa 09             	cmp    $0x9,%edx
   180004349:	44 89 c2             	mov    %r8d,%edx
   18000434c:	77 d2                	ja     0x180004320
   18000434e:	48 c1 f8 20          	sar    $0x20,%rax
   180004352:	eb 16                	jmp    0x18000436a
   180004354:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000435b:	00 00 00 00 00 
   180004360:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180004365:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000436a:	48 8b 0d 0f 3f 00 00 	mov    0x3f0f(%rip),%rcx        # 0x180008280
   180004371:	48 85 c9             	test   %rcx,%rcx
   180004374:	74 5e                	je     0x1800043d4
   180004376:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000437a:	48 83 c2 70          	add    $0x70,%rdx
   18000437e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180004384:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000438b:	00 00 00 00 00 
   180004390:	41 ff c0             	inc    %r8d
   180004393:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180004398:	75 f6                	jne    0x180004390
   18000439a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800043a1:	00 00 
   1800043a3:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   1800043aa:	00 
   1800043ab:	ff d7                	call   *%rdi
   1800043ad:	48 8b 0d cc 3e 00 00 	mov    0x3ecc(%rip),%rcx        # 0x180008280
   1800043b4:	48 85 c9             	test   %rcx,%rcx
   1800043b7:	74 1b                	je     0x1800043d4
   1800043b9:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800043c0:	00 00 
   1800043c2:	48 8d 15 06 30 00 00 	lea    0x3006(%rip),%rdx        # 0x1800073cf
   1800043c9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1800043cf:	4d 89 e1             	mov    %r12,%r9
   1800043d2:	ff d7                	call   *%rdi
   1800043d4:	8b 15 d2 93 07 00    	mov    0x793d2(%rip),%edx        # 0x18007d7ac
   1800043da:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   1800043df:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   1800043e4:	48 89 e8             	mov    %rbp,%rax
   1800043e7:	85 d2                	test   %edx,%edx
   1800043e9:	74 45                	je     0x180004430
   1800043eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1800043f0:	41 89 d0             	mov    %edx,%r8d
   1800043f3:	4d 0f af c6          	imul   %r14,%r8
   1800043f7:	49 c1 e8 23          	shr    $0x23,%r8
   1800043fb:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   1800043ff:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180004403:	41 89 d2             	mov    %edx,%r10d
   180004406:	45 29 ca             	sub    %r9d,%r10d
   180004409:	41 80 ca 30          	or     $0x30,%r10b
   18000440d:	44 88 11             	mov    %r10b,(%rcx)
   180004410:	4c 01 f8             	add    %r15,%rax
   180004413:	48 ff c9             	dec    %rcx
   180004416:	83 fa 09             	cmp    $0x9,%edx
   180004419:	44 89 c2             	mov    %r8d,%edx
   18000441c:	77 d2                	ja     0x1800043f0
   18000441e:	48 c1 f8 20          	sar    $0x20,%rax
   180004422:	eb 16                	jmp    0x18000443a
   180004424:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000442b:	00 00 00 00 00 
   180004430:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180004435:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000443a:	48 8b 0d 3f 3e 00 00 	mov    0x3e3f(%rip),%rcx        # 0x180008280
   180004441:	48 85 c9             	test   %rcx,%rcx
   180004444:	74 5e                	je     0x1800044a4
   180004446:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000444a:	48 83 c2 70          	add    $0x70,%rdx
   18000444e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180004454:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000445b:	00 00 00 00 00 
   180004460:	41 ff c0             	inc    %r8d
   180004463:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180004468:	75 f6                	jne    0x180004460
   18000446a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004471:	00 00 
   180004473:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   18000447a:	00 
   18000447b:	ff d7                	call   *%rdi
   18000447d:	48 8b 0d fc 3d 00 00 	mov    0x3dfc(%rip),%rcx        # 0x180008280
   180004484:	48 85 c9             	test   %rcx,%rcx
   180004487:	74 1b                	je     0x1800044a4
   180004489:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004490:	00 00 
   180004492:	48 8d 15 9d 2f 00 00 	lea    0x2f9d(%rip),%rdx        # 0x180007436
   180004499:	41 b8 12 00 00 00    	mov    $0x12,%r8d
   18000449f:	4d 89 e1             	mov    %r12,%r9
   1800044a2:	ff d7                	call   *%rdi
   1800044a4:	8b 15 06 93 07 00    	mov    0x79306(%rip),%edx        # 0x18007d7b0
   1800044aa:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   1800044af:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   1800044b4:	48 89 e8             	mov    %rbp,%rax
   1800044b7:	85 d2                	test   %edx,%edx
   1800044b9:	74 45                	je     0x180004500
   1800044bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1800044c0:	41 89 d0             	mov    %edx,%r8d
   1800044c3:	4d 0f af c6          	imul   %r14,%r8
   1800044c7:	49 c1 e8 23          	shr    $0x23,%r8
   1800044cb:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   1800044cf:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   1800044d3:	41 89 d2             	mov    %edx,%r10d
   1800044d6:	45 29 ca             	sub    %r9d,%r10d
   1800044d9:	41 80 ca 30          	or     $0x30,%r10b
   1800044dd:	44 88 11             	mov    %r10b,(%rcx)
   1800044e0:	4c 01 f8             	add    %r15,%rax
   1800044e3:	48 ff c9             	dec    %rcx
   1800044e6:	83 fa 09             	cmp    $0x9,%edx
   1800044e9:	44 89 c2             	mov    %r8d,%edx
   1800044ec:	77 d2                	ja     0x1800044c0
   1800044ee:	48 c1 f8 20          	sar    $0x20,%rax
   1800044f2:	eb 16                	jmp    0x18000450a
   1800044f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800044fb:	00 00 00 00 00 
   180004500:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   180004505:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000450a:	48 8b 0d 6f 3d 00 00 	mov    0x3d6f(%rip),%rcx        # 0x180008280
   180004511:	48 85 c9             	test   %rcx,%rcx
   180004514:	74 5e                	je     0x180004574
   180004516:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000451a:	48 83 c2 70          	add    $0x70,%rdx
   18000451e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180004524:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000452b:	00 00 00 00 00 
   180004530:	41 ff c0             	inc    %r8d
   180004533:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180004538:	75 f6                	jne    0x180004530
   18000453a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004541:	00 00 
   180004543:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   18000454a:	00 
   18000454b:	ff d7                	call   *%rdi
   18000454d:	48 8b 0d 2c 3d 00 00 	mov    0x3d2c(%rip),%rcx        # 0x180008280
   180004554:	48 85 c9             	test   %rcx,%rcx
   180004557:	74 1b                	je     0x180004574
   180004559:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004560:	00 00 
   180004562:	48 8d 15 bd 2e 00 00 	lea    0x2ebd(%rip),%rdx        # 0x180007426
   180004569:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   18000456f:	4d 89 e1             	mov    %r12,%r9
   180004572:	ff d7                	call   *%rdi
   180004574:	8b 15 3a 92 07 00    	mov    0x7923a(%rip),%edx        # 0x18007d7b4
   18000457a:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
   18000457f:	48 8d 4c 24 7e       	lea    0x7e(%rsp),%rcx
   180004584:	48 89 e8             	mov    %rbp,%rax
   180004587:	85 d2                	test   %edx,%edx
   180004589:	74 45                	je     0x1800045d0
   18000458b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180004590:	41 89 d0             	mov    %edx,%r8d
   180004593:	4d 0f af c6          	imul   %r14,%r8
   180004597:	49 c1 e8 23          	shr    $0x23,%r8
   18000459b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000459f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   1800045a3:	41 89 d2             	mov    %edx,%r10d
   1800045a6:	45 29 ca             	sub    %r9d,%r10d
   1800045a9:	41 80 ca 30          	or     $0x30,%r10b
   1800045ad:	44 88 11             	mov    %r10b,(%rcx)
   1800045b0:	4c 01 f8             	add    %r15,%rax
   1800045b3:	48 ff c9             	dec    %rcx
   1800045b6:	83 fa 09             	cmp    $0x9,%edx
   1800045b9:	44 89 c2             	mov    %r8d,%edx
   1800045bc:	77 d2                	ja     0x180004590
   1800045be:	48 c1 f8 20          	sar    $0x20,%rax
   1800045c2:	eb 16                	jmp    0x1800045da
   1800045c4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800045cb:	00 00 00 00 00 
   1800045d0:	c6 44 24 7e 30       	movb   $0x30,0x7e(%rsp)
   1800045d5:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800045da:	48 8b 0d 9f 3c 00 00 	mov    0x3c9f(%rip),%rcx        # 0x180008280
   1800045e1:	48 85 c9             	test   %rcx,%rcx
   1800045e4:	0f 84 06 e3 ff ff    	je     0x1800028f0
   1800045ea:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800045ee:	48 83 c2 70          	add    $0x70,%rdx
   1800045f2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800045f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800045ff:	00 
   180004600:	41 ff c0             	inc    %r8d
   180004603:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180004608:	75 f6                	jne    0x180004600
   18000460a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004611:	00 00 
   180004613:	4c 8d 8c 24 d0 02 00 	lea    0x2d0(%rsp),%r9
   18000461a:	00 
   18000461b:	ff d7                	call   *%rdi
   18000461d:	48 8b 0d 5c 3c 00 00 	mov    0x3c5c(%rip),%rcx        # 0x180008280
   180004624:	48 85 c9             	test   %rcx,%rcx
   180004627:	0f 84 c3 e2 ff ff    	je     0x1800028f0
   18000462d:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004634:	00 00 
   180004636:	48 8d 15 9f 31 00 00 	lea    0x319f(%rip),%rdx        # 0x1800077dc
   18000463d:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180004643:	4d 89 e1             	mov    %r12,%r9
   180004646:	ff d7                	call   *%rdi
   180004648:	e9 a3 e2 ff ff       	jmp    0x1800028f0
   18000464d:	0f 1f 00             	nopl   (%rax)
   180004650:	56                   	push   %rsi
   180004651:	57                   	push   %rdi
   180004652:	55                   	push   %rbp
   180004653:	53                   	push   %rbx
   180004654:	48 83 ec 28          	sub    $0x28,%rsp
   180004658:	48 89 ce             	mov    %rcx,%rsi
   18000465b:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
   180004662:	00 
   180004663:	48 8d 54 24 24       	lea    0x24(%rsp),%rdx
   180004668:	ff 15 ba 33 00 00    	call   *0x33ba(%rip)        # 0x180007a28
   18000466e:	89 c7                	mov    %eax,%edi
   180004670:	8b 6c 24 24          	mov    0x24(%rsp),%ebp
   180004674:	ff 15 0e 33 00 00    	call   *0x330e(%rip)        # 0x180007988
   18000467a:	bb 01 00 00 00       	mov    $0x1,%ebx
   18000467f:	39 c5                	cmp    %eax,%ebp
   180004681:	75 1c                	jne    0x18000469f
   180004683:	48 89 f1             	mov    %rsi,%rcx
   180004686:	ff 15 ac 33 00 00    	call   *0x33ac(%rip)        # 0x180007a38
   18000468c:	85 c0                	test   %eax,%eax
   18000468e:	74 0f                	je     0x18000469f
   180004690:	89 3d 0a 8f 07 00    	mov    %edi,0x78f0a(%rip)        # 0x18007d5a0
   180004696:	48 89 35 7b 91 07 00 	mov    %rsi,0x7917b(%rip)        # 0x18007d818
   18000469d:	31 db                	xor    %ebx,%ebx
   18000469f:	89 d8                	mov    %ebx,%eax
   1800046a1:	48 83 c4 28          	add    $0x28,%rsp
   1800046a5:	5b                   	pop    %rbx
   1800046a6:	5d                   	pop    %rbp
   1800046a7:	5f                   	pop    %rdi
   1800046a8:	5e                   	pop    %rsi
   1800046a9:	c3                   	ret    
   1800046aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1800046b0:	41 57                	push   %r15
   1800046b2:	41 56                	push   %r14
   1800046b4:	41 55                	push   %r13
   1800046b6:	41 54                	push   %r12
   1800046b8:	56                   	push   %rsi
   1800046b9:	57                   	push   %rdi
   1800046ba:	55                   	push   %rbp
   1800046bb:	53                   	push   %rbx
   1800046bc:	48 83 ec 48          	sub    $0x48,%rsp
   1800046c0:	4c 89 c6             	mov    %r8,%rsi
   1800046c3:	48 89 d3             	mov    %rdx,%rbx
   1800046c6:	89 cf                	mov    %ecx,%edi
   1800046c8:	85 c9                	test   %ecx,%ecx
   1800046ca:	0f 88 96 06 00 00    	js     0x180004d66
   1800046d0:	48 83 fb 01          	cmp    $0x1,%rbx
   1800046d4:	0f 85 8c 06 00 00    	jne    0x180004d66
   1800046da:	83 3d af 8e 07 00 00 	cmpl   $0x0,0x78eaf(%rip)        # 0x18007d590
   1800046e1:	0f 84 7f 06 00 00    	je     0x180004d66
   1800046e7:	8b 46 08             	mov    0x8(%rsi),%eax
   1800046ea:	3d 00 01 00 00       	cmp    $0x100,%eax
   1800046ef:	0f 84 90 00 00 00    	je     0x180004785
   1800046f5:	3d 02 01 00 00       	cmp    $0x102,%eax
   1800046fa:	0f 85 2c 01 00 00    	jne    0x18000482c
   180004700:	48 81 7e 18 31 30 50 	cmpq   $0x57503031,0x18(%rsi)
   180004707:	57 
   180004708:	0f 84 29 01 00 00    	je     0x180004837
   18000470e:	48 8b 46 10          	mov    0x10(%rsi),%rax
   180004712:	48 83 f8 7e          	cmp    $0x7e,%rax
   180004716:	74 0a                	je     0x180004722
   180004718:	48 83 f8 60          	cmp    $0x60,%rax
   18000471c:	0f 85 c3 00 00 00    	jne    0x1800047e5
   180004722:	31 c0                	xor    %eax,%eax
   180004724:	83 3d cd 90 07 00 00 	cmpl   $0x0,0x790cd(%rip)        # 0x18007d7f8
   18000472b:	0f 94 c0             	sete   %al
   18000472e:	89 05 c4 90 07 00    	mov    %eax,0x790c4(%rip)        # 0x18007d7f8
   180004734:	c7 05 be 90 07 00 00 	movl   $0x0,0x790be(%rip)        # 0x18007d7fc
   18000473b:	00 00 00 
   18000473e:	8b 05 b4 90 07 00    	mov    0x790b4(%rip),%eax        # 0x18007d7f8
   180004744:	83 f8 01             	cmp    $0x1,%eax
   180004747:	b8 02 00 00 00       	mov    $0x2,%eax
   18000474c:	83 d8 00             	sbb    $0x0,%eax
   18000474f:	89 05 fb 8f 07 00    	mov    %eax,0x78ffb(%rip)        # 0x18007d750
   180004755:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%rsi)
   18000475c:	48 8b 0d 35 8e 07 00 	mov    0x78e35(%rip),%rcx        # 0x18007d598
   180004763:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004769:	89 fa                	mov    %edi,%edx
   18000476b:	49 89 f1             	mov    %rsi,%r9
   18000476e:	48 83 c4 48          	add    $0x48,%rsp
   180004772:	5b                   	pop    %rbx
   180004773:	5d                   	pop    %rbp
   180004774:	5f                   	pop    %rdi
   180004775:	5e                   	pop    %rsi
   180004776:	41 5c                	pop    %r12
   180004778:	41 5d                	pop    %r13
   18000477a:	41 5e                	pop    %r14
   18000477c:	41 5f                	pop    %r15
   18000477e:	48 ff 25 8b 32 00 00 	rex.W jmp *0x328b(%rip)        # 0x180007a10
   180004785:	48 83 7e 10 4b       	cmpq   $0x4b,0x10(%rsi)
   18000478a:	75 63                	jne    0x1800047ef
   18000478c:	b9 11 00 00 00       	mov    $0x11,%ecx
   180004791:	ff 15 89 32 00 00    	call   *0x3289(%rip)        # 0x180007a20
   180004797:	66 85 c0             	test   %ax,%ax
   18000479a:	79 49                	jns    0x1800047e5
   18000479c:	b9 10 00 00 00       	mov    $0x10,%ecx
   1800047a1:	ff 15 79 32 00 00    	call   *0x3279(%rip)        # 0x180007a20
   1800047a7:	66 85 c0             	test   %ax,%ax
   1800047aa:	79 39                	jns    0x1800047e5
   1800047ac:	f6 46 1b 40          	testb  $0x40,0x1b(%rsi)
   1800047b0:	75 33                	jne    0x1800047e5
   1800047b2:	31 c0                	xor    %eax,%eax
   1800047b4:	83 3d 3d 90 07 00 00 	cmpl   $0x0,0x7903d(%rip)        # 0x18007d7f8
   1800047bb:	0f 94 c0             	sete   %al
   1800047be:	89 05 34 90 07 00    	mov    %eax,0x79034(%rip)        # 0x18007d7f8
   1800047c4:	c7 05 2e 90 07 00 00 	movl   $0x0,0x7902e(%rip)        # 0x18007d7fc
   1800047cb:	00 00 00 
   1800047ce:	8b 05 24 90 07 00    	mov    0x79024(%rip),%eax        # 0x18007d7f8
   1800047d4:	83 f8 01             	cmp    $0x1,%eax
   1800047d7:	b8 02 00 00 00       	mov    $0x2,%eax
   1800047dc:	83 d8 00             	sbb    $0x0,%eax
   1800047df:	89 05 6b 8f 07 00    	mov    %eax,0x78f6b(%rip)        # 0x18007d750
   1800047e5:	8b 46 08             	mov    0x8(%rsi),%eax
   1800047e8:	3d 00 01 00 00       	cmp    $0x100,%eax
   1800047ed:	75 3d                	jne    0x18000482c
   1800047ef:	48 83 7e 10 08       	cmpq   $0x8,0x10(%rsi)
   1800047f4:	0f 85 6c 05 00 00    	jne    0x180004d66
   1800047fa:	83 3d ff 8f 07 00 00 	cmpl   $0x0,0x78fff(%rip)        # 0x18007d800
   180004801:	0f 84 5f 05 00 00    	je     0x180004d66
   180004807:	83 3d ea 8f 07 00 00 	cmpl   $0x0,0x78fea(%rip)        # 0x18007d7f8
   18000480e:	0f 85 52 05 00 00    	jne    0x180004d66
   180004814:	83 3d e9 8f 07 00 00 	cmpl   $0x0,0x78fe9(%rip)        # 0x18007d804
   18000481b:	0f 8e 45 05 00 00    	jle    0x180004d66
   180004821:	ff 0d dd 8f 07 00    	decl   0x78fdd(%rip)        # 0x18007d804
   180004827:	e9 3a 05 00 00       	jmp    0x180004d66
   18000482c:	3d 02 01 00 00       	cmp    $0x102,%eax
   180004831:	0f 85 2f 05 00 00    	jne    0x180004d66
   180004837:	48 81 7e 18 31 30 50 	cmpq   $0x57503031,0x18(%rsi)
   18000483e:	57 
   18000483f:	0f 84 21 05 00 00    	je     0x180004d66
   180004845:	4c 8b 76 10          	mov    0x10(%rsi),%r14
   180004849:	ff 05 4d 8f 07 00    	incl   0x78f4d(%rip)        # 0x18007d79c
   18000484f:	48 8b 0e             	mov    (%rsi),%rcx
   180004852:	ff 15 d8 31 00 00    	call   *0x31d8(%rip)        # 0x180007a30
   180004858:	89 05 a2 37 00 00    	mov    %eax,0x37a2(%rip)        # 0x180008000
   18000485e:	83 3d 93 8f 07 00 00 	cmpl   $0x0,0x78f93(%rip)        # 0x18007d7f8
   180004865:	74 2d                	je     0x180004894
   180004867:	41 8d 46 bf          	lea    -0x41(%r14),%eax
   18000486b:	44 89 f1             	mov    %r14d,%ecx
   18000486e:	83 c9 20             	or     $0x20,%ecx
   180004871:	83 f8 1a             	cmp    $0x1a,%eax
   180004874:	41 0f 43 ce          	cmovae %r14d,%ecx
   180004878:	83 f9 2d             	cmp    $0x2d,%ecx
   18000487b:	74 55                	je     0x1800048d2
   18000487d:	8d 41 9f             	lea    -0x61(%rcx),%eax
   180004880:	83 f8 19             	cmp    $0x19,%eax
   180004883:	76 4d                	jbe    0x1800048d2
   180004885:	c7 05 6d 8f 07 00 00 	movl   $0x0,0x78f6d(%rip)        # 0x18007d7fc
   18000488c:	00 00 00 
   18000488f:	e9 d2 04 00 00       	jmp    0x180004d66
   180004894:	44 89 f0             	mov    %r14d,%eax
   180004897:	83 e0 df             	and    $0xffffffdf,%eax
   18000489a:	83 c0 bf             	add    $0xffffffbf,%eax
   18000489d:	83 f8 1a             	cmp    $0x1a,%eax
   1800048a0:	72 5c                	jb     0x1800048fe
   1800048a2:	41 8d 46 d0          	lea    -0x30(%r14),%eax
   1800048a6:	83 f8 09             	cmp    $0x9,%eax
   1800048a9:	76 53                	jbe    0x1800048fe
   1800048ab:	41 8d 46 e0          	lea    -0x20(%r14),%eax
   1800048af:	83 f8 0e             	cmp    $0xe,%eax
   1800048b2:	0f 87 ae 04 00 00    	ja     0x180004d66
   1800048b8:	48 8d 0d e5 27 00 00 	lea    0x27e5(%rip),%rcx        # 0x1800070a4
   1800048bf:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
   1800048c3:	48 01 c8             	add    %rcx,%rax
   1800048c6:	ff e0                	jmp    *%rax
   1800048c8:	66 41 bf 40 81       	mov    $0x8140,%r15w
   1800048cd:	e9 83 00 00 00       	jmp    0x180004955
   1800048d2:	8d 41 9f             	lea    -0x61(%rcx),%eax
   1800048d5:	c0 c0 06             	rol    $0x6,%al
   1800048d8:	3c 05                	cmp    $0x5,%al
   1800048da:	0f 87 92 00 00 00    	ja     0x180004972
   1800048e0:	0f b6 c0             	movzbl %al,%eax
   1800048e3:	48 8d 15 a2 27 00 00 	lea    0x27a2(%rip),%rdx        # 0x18000708c
   1800048ea:	4c 63 04 82          	movslq (%rdx,%rax,4),%r8
   1800048ee:	49 01 d0             	add    %rdx,%r8
   1800048f1:	41 ff e0             	jmp    *%r8
   1800048f4:	b8 03 00 00 00       	mov    $0x3,%eax
   1800048f9:	e9 90 00 00 00       	jmp    0x18000498e
   1800048fe:	83 3d fb 8e 07 00 00 	cmpl   $0x0,0x78efb(%rip)        # 0x18007d800
   180004905:	74 26                	je     0x18000492d
   180004907:	8b 05 f7 8e 07 00    	mov    0x78ef7(%rip),%eax        # 0x18007d804
   18000490d:	83 f8 07             	cmp    $0x7,%eax
   180004910:	7f 1b                	jg     0x18000492d
   180004912:	48 63 05 eb 8e 07 00 	movslq 0x78eeb(%rip),%rax        # 0x18007d804
   180004919:	8d 48 01             	lea    0x1(%rax),%ecx
   18000491c:	89 0d e2 8e 07 00    	mov    %ecx,0x78ee2(%rip)        # 0x18007d804
   180004922:	48 8d 0d df 8e 07 00 	lea    0x78edf(%rip),%rcx        # 0x18007d808
   180004929:	44 88 34 08          	mov    %r14b,(%rax,%rcx,1)
   18000492d:	41 0f b6 c6          	movzbl %r14b,%eax
   180004931:	41 8d 4e bf          	lea    -0x41(%r14),%ecx
   180004935:	41 8d 56 9f          	lea    -0x61(%r14),%edx
   180004939:	45 31 c0             	xor    %r8d,%r8d
   18000493c:	80 fa 1a             	cmp    $0x1a,%dl
   18000493f:	66 41 81 d0 1f 82    	adc    $0x821f,%r8w
   180004945:	80 f9 1a             	cmp    $0x1a,%cl
   180004948:	41 bf 1f 82 00 00    	mov    $0x821f,%r15d
   18000494e:	45 0f 43 f8          	cmovae %r8d,%r15d
   180004952:	41 01 c7             	add    %eax,%r15d
   180004955:	c7 44 24 3c 01 00 00 	movl   $0x1,0x3c(%rsp)
   18000495c:	00 
   18000495d:	e9 7e 02 00 00       	jmp    0x180004be0
   180004962:	b8 01 00 00 00       	mov    $0x1,%eax
   180004967:	eb 25                	jmp    0x18000498e
   180004969:	b8 02 00 00 00       	mov    $0x2,%eax
   18000496e:	b2 01                	mov    $0x1,%dl
   180004970:	eb 1e                	jmp    0x180004990
   180004972:	31 d2                	xor    %edx,%edx
   180004974:	80 f9 2d             	cmp    $0x2d,%cl
   180004977:	0f 84 71 01 00 00    	je     0x180004aee
   18000497d:	0f b6 c1             	movzbl %cl,%eax
   180004980:	83 f8 6f             	cmp    $0x6f,%eax
   180004983:	0f 85 a7 01 00 00    	jne    0x180004b30
   180004989:	b8 04 00 00 00       	mov    $0x4,%eax
   18000498e:	31 d2                	xor    %edx,%edx
   180004990:	44 8b 0d 65 8e 07 00 	mov    0x78e65(%rip),%r9d        # 0x18007d7fc
   180004997:	48 8d 0d 82 8e 07 00 	lea    0x78e82(%rip),%rcx        # 0x18007d820
   18000499e:	41 c6 04 09 00       	movb   $0x0,(%r9,%rcx,1)
   1800049a3:	44 0f b6 05 75 8e 07 	movzbl 0x78e75(%rip),%r8d        # 0x18007d820
   1800049aa:	00 
   1800049ab:	4c 8d 15 d4 29 00 00 	lea    0x29d4(%rip),%r10        # 0x180007386
   1800049b2:	45 84 c0             	test   %r8b,%r8b
   1800049b5:	0f 84 e4 01 00 00    	je     0x180004b9f
   1800049bb:	45 31 f6             	xor    %r14d,%r14d
   1800049be:	4c 8d 3d aa 29 00 00 	lea    0x29aa(%rip),%r15        # 0x18000736f
   1800049c5:	45 89 c3             	mov    %r8d,%r11d
   1800049c8:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   1800049cd:	41 38 eb             	cmp    %bpl,%r11b
   1800049d0:	75 16                	jne    0x1800049e8
   1800049d2:	45 0f b6 5c 0e 01    	movzbl 0x1(%r14,%rcx,1),%r11d
   1800049d8:	49 ff c6             	inc    %r14
   1800049db:	45 84 db             	test   %r11b,%r11b
   1800049de:	75 e8                	jne    0x1800049c8
   1800049e0:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   1800049e5:	45 31 db             	xor    %r11d,%r11d
   1800049e8:	41 38 eb             	cmp    %bpl,%r11b
   1800049eb:	75 0d                	jne    0x1800049fa
   1800049ed:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1800049f3:	66 41 bf 56 83       	mov    $0x8356,%r15w
   1800049f8:	eb 7c                	jmp    0x180004a76
   1800049fa:	45 31 f6             	xor    %r14d,%r14d
   1800049fd:	4c 8d 3d 6e 29 00 00 	lea    0x296e(%rip),%r15        # 0x180007372
   180004a04:	45 89 c3             	mov    %r8d,%r11d
   180004a07:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   180004a0c:	41 38 eb             	cmp    %bpl,%r11b
   180004a0f:	75 16                	jne    0x180004a27
   180004a11:	45 0f b6 5c 0e 01    	movzbl 0x1(%r14,%rcx,1),%r11d
   180004a17:	49 ff c6             	inc    %r14
   180004a1a:	45 84 db             	test   %r11b,%r11b
   180004a1d:	75 e8                	jne    0x180004a07
   180004a1f:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   180004a24:	45 31 db             	xor    %r11d,%r11d
   180004a27:	41 38 eb             	cmp    %bpl,%r11b
   180004a2a:	75 0d                	jne    0x180004a39
   180004a2c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004a32:	66 41 bf 60 83       	mov    $0x8360,%r15w
   180004a37:	eb 3d                	jmp    0x180004a76
   180004a39:	45 31 f6             	xor    %r14d,%r14d
   180004a3c:	4c 8d 3d 2a 29 00 00 	lea    0x292a(%rip),%r15        # 0x18000736d
   180004a43:	45 89 c3             	mov    %r8d,%r11d
   180004a46:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   180004a4b:	41 38 eb             	cmp    %bpl,%r11b
   180004a4e:	75 16                	jne    0x180004a66
   180004a50:	45 0f b6 5c 0e 01    	movzbl 0x1(%r14,%rcx,1),%r11d
   180004a56:	49 ff c6             	inc    %r14
   180004a59:	45 84 db             	test   %r11b,%r11b
   180004a5c:	75 e8                	jne    0x180004a46
   180004a5e:	43 0f b6 2c 3e       	movzbl (%r14,%r15,1),%ebp
   180004a63:	45 31 db             	xor    %r11d,%r11d
   180004a66:	41 38 eb             	cmp    %bpl,%r11b
   180004a69:	75 43                	jne    0x180004aae
   180004a6b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004a71:	66 41 bf 57 83       	mov    $0x8357,%r15w
   180004a76:	89 c1                	mov    %eax,%ecx
   180004a78:	83 c9 02             	or     $0x2,%ecx
   180004a7b:	83 f9 03             	cmp    $0x3,%ecx
   180004a7e:	0f 84 4d 01 00 00    	je     0x180004bd1
   180004a84:	48 8d 0d 65 26 00 00 	lea    0x2665(%rip),%rcx        # 0x1800070f0
   180004a8b:	e9 30 01 00 00       	jmp    0x180004bc0
   180004a90:	66 41 bf 7c 81       	mov    $0x817c,%r15w
   180004a95:	e9 bb fe ff ff       	jmp    0x180004955
   180004a9a:	66 41 bf 66 81       	mov    $0x8166,%r15w
   180004a9f:	e9 b1 fe ff ff       	jmp    0x180004955
   180004aa4:	66 41 bf 44 81       	mov    $0x8144,%r15w
   180004aa9:	e9 a7 fe ff ff       	jmp    0x180004955
   180004aae:	4c 8d 1d a7 28 00 00 	lea    0x28a7(%rip),%r11        # 0x18000735c
   180004ab5:	4c 8d 35 65 8d 07 00 	lea    0x78d65(%rip),%r14        # 0x18007d821
   180004abc:	44 89 c5             	mov    %r8d,%ebp
   180004abf:	41 3a 2b             	cmp    (%r11),%bpl
   180004ac2:	75 11                	jne    0x180004ad5
   180004ac4:	49 ff c3             	inc    %r11
   180004ac7:	41 0f b6 2e          	movzbl (%r14),%ebp
   180004acb:	49 ff c6             	inc    %r14
   180004ace:	40 84 ed             	test   %bpl,%bpl
   180004ad1:	75 ec                	jne    0x180004abf
   180004ad3:	31 ed                	xor    %ebp,%ebp
   180004ad5:	41 3a 2b             	cmp    (%r11),%bpl
   180004ad8:	0f 85 8f 00 00 00    	jne    0x180004b6d
   180004ade:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004ae4:	66 41 bf 63 83       	mov    $0x8363,%r15w
   180004ae9:	e9 e3 00 00 00       	jmp    0x180004bd1
   180004aee:	83 3d 07 8d 07 00 01 	cmpl   $0x1,0x78d07(%rip)        # 0x18007d7fc
   180004af5:	75 15                	jne    0x180004b0c
   180004af7:	80 3d 22 8d 07 00 6e 	cmpb   $0x6e,0x78d22(%rip)        # 0x18007d820
   180004afe:	75 0c                	jne    0x180004b0c
   180004b00:	66 c7 44 24 40 93 83 	movw   $0x8393,0x40(%rsp)
   180004b07:	ba 01 00 00 00       	mov    $0x1,%edx
   180004b0c:	c7 05 e6 8c 07 00 00 	movl   $0x0,0x78ce6(%rip)        # 0x18007d7fc
   180004b13:	00 00 00 
   180004b16:	89 d0                	mov    %edx,%eax
   180004b18:	ff c2                	inc    %edx
   180004b1a:	89 54 24 3c          	mov    %edx,0x3c(%rsp)
   180004b1e:	66 c7 44 44 40 5b 81 	movw   $0x815b,0x40(%rsp,%rax,2)
   180004b25:	44 0f b7 7c 24 40    	movzwl 0x40(%rsp),%r15d
   180004b2b:	e9 b0 00 00 00       	jmp    0x180004be0
   180004b30:	8b 05 c6 8c 07 00    	mov    0x78cc6(%rip),%eax        # 0x18007d7fc
   180004b36:	80 f9 79             	cmp    $0x79,%cl
   180004b39:	0f 84 4d 02 00 00    	je     0x180004d8c
   180004b3f:	83 f8 01             	cmp    $0x1,%eax
   180004b42:	0f 85 44 02 00 00    	jne    0x180004d8c
   180004b48:	80 3d d1 8c 07 00 6e 	cmpb   $0x6e,0x78cd1(%rip)        # 0x18007d820
   180004b4f:	0f 85 37 02 00 00    	jne    0x180004d8c
   180004b55:	80 f9 6e             	cmp    $0x6e,%cl
   180004b58:	0f 85 5c 02 00 00    	jne    0x180004dba
   180004b5e:	c7 05 94 8c 07 00 00 	movl   $0x0,0x78c94(%rip)        # 0x18007d7fc
   180004b65:	00 00 00 
   180004b68:	e9 5d 02 00 00       	jmp    0x180004dca
   180004b6d:	45 84 c0             	test   %r8b,%r8b
   180004b70:	74 2d                	je     0x180004b9f
   180004b72:	4c 8d 15 0d 28 00 00 	lea    0x280d(%rip),%r10        # 0x180007386
   180004b79:	4c 8d 1d a1 8c 07 00 	lea    0x78ca1(%rip),%r11        # 0x18007d821
   180004b80:	45 89 c6             	mov    %r8d,%r14d
   180004b83:	31 ed                	xor    %ebp,%ebp
   180004b85:	45 3a 32             	cmp    (%r10),%r14b
   180004b88:	0f 85 4e 02 00 00    	jne    0x180004ddc
   180004b8e:	49 ff c2             	inc    %r10
   180004b91:	45 0f b6 33          	movzbl (%r11),%r14d
   180004b95:	49 ff c3             	inc    %r11
   180004b98:	45 84 f6             	test   %r14b,%r14b
   180004b9b:	75 e8                	jne    0x180004b85
   180004b9d:	eb 02                	jmp    0x180004ba1
   180004b9f:	31 ed                	xor    %ebp,%ebp
   180004ba1:	41 3a 2a             	cmp    (%r10),%bpl
   180004ba4:	0f 85 3e 02 00 00    	jne    0x180004de8
   180004baa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004bb0:	66 41 bf 74 83       	mov    $0x8374,%r15w
   180004bb5:	84 d2                	test   %dl,%dl
   180004bb7:	75 18                	jne    0x180004bd1
   180004bb9:	48 8d 0d 3a 25 00 00 	lea    0x253a(%rip),%rcx        # 0x1800070fa
   180004bc0:	89 c0                	mov    %eax,%eax
   180004bc2:	0f b7 04 41          	movzwl (%rcx,%rax,2),%eax
   180004bc6:	66 89 44 24 42       	mov    %ax,0x42(%rsp)
   180004bcb:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180004bd1:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
   180004bd6:	c7 05 1c 8c 07 00 00 	movl   $0x0,0x78c1c(%rip)        # 0x18007d7fc
   180004bdd:	00 00 00 
   180004be0:	ff 05 ba 8b 07 00    	incl   0x78bba(%rip)        # 0x18007d7a0
   180004be6:	41 0f b7 ef          	movzwl %r15w,%ebp
   180004bea:	41 89 ed             	mov    %ebp,%r13d
   180004bed:	41 c1 ed 08          	shr    $0x8,%r13d
   180004bf1:	66 c7 44 24 3a 00 00 	movw   $0x0,0x3a(%rsp)
   180004bf8:	44 88 6c 24 39       	mov    %r13b,0x39(%rsp)
   180004bfd:	4c 8d 74 24 3a       	lea    0x3a(%rsp),%r14
   180004c02:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
   180004c07:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   180004c0e:	00 
   180004c0f:	4c 8b 25 b2 2d 00 00 	mov    0x2db2(%rip),%r12        # 0x1800079c8
   180004c16:	4c 8d 44 24 39       	lea    0x39(%rsp),%r8
   180004c1b:	31 c9                	xor    %ecx,%ecx
   180004c1d:	31 d2                	xor    %edx,%edx
   180004c1f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180004c25:	41 ff d4             	call   *%r12
   180004c28:	0f b7 4c 24 3a       	movzwl 0x3a(%rsp),%ecx
   180004c2d:	66 85 c9             	test   %cx,%cx
   180004c30:	41 0f 44 cd          	cmove  %r13d,%ecx
   180004c34:	83 f8 01             	cmp    $0x1,%eax
   180004c37:	41 0f 45 cd          	cmovne %r13d,%ecx
   180004c3b:	4d 89 e5             	mov    %r12,%r13
   180004c3e:	4d 89 f4             	mov    %r14,%r12
   180004c41:	0f b7 c1             	movzwl %cx,%eax
   180004c44:	48 89 46 10          	mov    %rax,0x10(%rsi)
   180004c48:	66 c7 44 24 3a 00 00 	movw   $0x0,0x3a(%rsp)
   180004c4f:	40 88 6c 24 39       	mov    %bpl,0x39(%rsp)
   180004c54:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
   180004c59:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   180004c60:	00 
   180004c61:	4c 8d 44 24 39       	lea    0x39(%rsp),%r8
   180004c66:	31 c9                	xor    %ecx,%ecx
   180004c68:	31 d2                	xor    %edx,%edx
   180004c6a:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180004c70:	41 ff d5             	call   *%r13
   180004c73:	0f b7 4c 24 3a       	movzwl 0x3a(%rsp),%ecx
   180004c78:	66 85 c9             	test   %cx,%cx
   180004c7b:	41 0f b6 d7          	movzbl %r15b,%edx
   180004c7f:	0f 44 ca             	cmove  %edx,%ecx
   180004c82:	83 f8 01             	cmp    $0x1,%eax
   180004c85:	0f 45 ca             	cmovne %edx,%ecx
   180004c88:	44 0f b7 c1          	movzwl %cx,%r8d
   180004c8c:	48 8b 0e             	mov    (%rsi),%rcx
   180004c8f:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180004c95:	ba 02 01 00 00       	mov    $0x102,%edx
   180004c9a:	ff 15 a0 2d 00 00    	call   *0x2da0(%rip)        # 0x180007a40
   180004ca0:	83 7c 24 3c 02       	cmpl   $0x2,0x3c(%rsp)
   180004ca5:	0f 82 bb 00 00 00    	jb     0x180004d66
   180004cab:	0f b7 6c 24 42       	movzwl 0x42(%rsp),%ebp
   180004cb0:	41 89 ee             	mov    %ebp,%r14d
   180004cb3:	41 c1 ee 08          	shr    $0x8,%r14d
   180004cb7:	66 c7 44 24 3a 00 00 	movw   $0x0,0x3a(%rsp)
   180004cbe:	44 88 74 24 39       	mov    %r14b,0x39(%rsp)
   180004cc3:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
   180004cc8:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   180004ccf:	00 
   180004cd0:	4c 8d 44 24 39       	lea    0x39(%rsp),%r8
   180004cd5:	31 c9                	xor    %ecx,%ecx
   180004cd7:	31 d2                	xor    %edx,%edx
   180004cd9:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180004cdf:	41 ff d5             	call   *%r13
   180004ce2:	0f b7 4c 24 3a       	movzwl 0x3a(%rsp),%ecx
   180004ce7:	66 85 c9             	test   %cx,%cx
   180004cea:	41 0f 44 ce          	cmove  %r14d,%ecx
   180004cee:	83 f8 01             	cmp    $0x1,%eax
   180004cf1:	41 0f 45 ce          	cmovne %r14d,%ecx
   180004cf5:	44 0f b7 c1          	movzwl %cx,%r8d
   180004cf9:	48 8b 0e             	mov    (%rsi),%rcx
   180004cfc:	4c 8b 35 3d 2d 00 00 	mov    0x2d3d(%rip),%r14        # 0x180007a40
   180004d03:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180004d09:	ba 02 01 00 00       	mov    $0x102,%edx
   180004d0e:	41 ff d6             	call   *%r14
   180004d11:	66 c7 44 24 3a 00 00 	movw   $0x0,0x3a(%rsp)
   180004d18:	40 88 6c 24 39       	mov    %bpl,0x39(%rsp)
   180004d1d:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
   180004d22:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   180004d29:	00 
   180004d2a:	4c 8d 44 24 39       	lea    0x39(%rsp),%r8
   180004d2f:	31 c9                	xor    %ecx,%ecx
   180004d31:	31 d2                	xor    %edx,%edx
   180004d33:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180004d39:	41 ff d5             	call   *%r13
   180004d3c:	0f b7 4c 24 3a       	movzwl 0x3a(%rsp),%ecx
   180004d41:	66 85 c9             	test   %cx,%cx
   180004d44:	40 0f b6 d5          	movzbl %bpl,%edx
   180004d48:	0f 44 ca             	cmove  %edx,%ecx
   180004d4b:	83 f8 01             	cmp    $0x1,%eax
   180004d4e:	0f 45 ca             	cmovne %edx,%ecx
   180004d51:	44 0f b7 c1          	movzwl %cx,%r8d
   180004d55:	48 8b 0e             	mov    (%rsi),%rcx
   180004d58:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180004d5e:	ba 02 01 00 00       	mov    $0x102,%edx
   180004d63:	41 ff d6             	call   *%r14
   180004d66:	48 8b 0d 2b 88 07 00 	mov    0x7882b(%rip),%rcx        # 0x18007d598
   180004d6d:	89 fa                	mov    %edi,%edx
   180004d6f:	49 89 d8             	mov    %rbx,%r8
   180004d72:	49 89 f1             	mov    %rsi,%r9
   180004d75:	ff 15 95 2c 00 00    	call   *0x2c95(%rip)        # 0x180007a10
   180004d7b:	48 83 c4 48          	add    $0x48,%rsp
   180004d7f:	5b                   	pop    %rbx
   180004d80:	5d                   	pop    %rbp
   180004d81:	5f                   	pop    %rdi
   180004d82:	5e                   	pop    %rsi
   180004d83:	41 5c                	pop    %r12
   180004d85:	41 5d                	pop    %r13
   180004d87:	41 5e                	pop    %r14
   180004d89:	41 5f                	pop    %r15
   180004d8b:	c3                   	ret    
   180004d8c:	85 c0                	test   %eax,%eax
   180004d8e:	0f 8e 97 01 00 00    	jle    0x180004f2b
   180004d94:	8d 50 ff             	lea    -0x1(%rax),%edx
   180004d97:	4c 8d 05 82 8a 07 00 	lea    0x78a82(%rip),%r8        # 0x18007d820
   180004d9e:	42 38 0c 02          	cmp    %cl,(%rdx,%r8,1)
   180004da2:	0f 85 7e 01 00 00    	jne    0x180004f26
   180004da8:	c7 44 24 3c 01 00 00 	movl   $0x1,0x3c(%rsp)
   180004daf:	00 
   180004db0:	66 41 bf 62 83       	mov    $0x8362,%r15w
   180004db5:	e9 26 fe ff ff       	jmp    0x180004be0
   180004dba:	88 0d 60 8a 07 00    	mov    %cl,0x78a60(%rip)        # 0x18007d820
   180004dc0:	c7 05 32 8a 07 00 01 	movl   $0x1,0x78a32(%rip)        # 0x18007d7fc
   180004dc7:	00 00 00 
   180004dca:	c7 44 24 3c 01 00 00 	movl   $0x1,0x3c(%rsp)
   180004dd1:	00 
   180004dd2:	66 41 bf 93 83       	mov    $0x8393,%r15w
   180004dd7:	e9 04 fe ff ff       	jmp    0x180004be0
   180004ddc:	44 89 f5             	mov    %r14d,%ebp
   180004ddf:	41 3a 2a             	cmp    (%r10),%bpl
   180004de2:	0f 84 c2 fd ff ff    	je     0x180004baa
   180004de8:	41 83 f9 02          	cmp    $0x2,%r9d
   180004dec:	75 75                	jne    0x180004e63
   180004dee:	80 3d 2c 8a 07 00 79 	cmpb   $0x79,0x78a2c(%rip)        # 0x18007d821
   180004df5:	75 6c                	jne    0x180004e63
   180004df7:	44 88 44 24 3a       	mov    %r8b,0x3a(%rsp)
   180004dfc:	c6 44 24 3b 00       	movb   $0x0,0x3b(%rsp)
   180004e01:	45 31 c0             	xor    %r8d,%r8d
   180004e04:	48 8d 0d 05 23 00 00 	lea    0x2305(%rip),%rcx        # 0x180007110
   180004e0b:	4c 8d 4c 24 3a       	lea    0x3a(%rsp),%r9
   180004e10:	4b 8d 14 40          	lea    (%r8,%r8,2),%rdx
   180004e14:	4c 8b 34 d1          	mov    (%rcx,%rdx,8),%r14
   180004e18:	45 0f b6 16          	movzbl (%r14),%r10d
   180004e1c:	45 84 d2             	test   %r10b,%r10b
   180004e1f:	74 28                	je     0x180004e49
   180004e21:	49 ff c6             	inc    %r14
   180004e24:	4d 89 cb             	mov    %r9,%r11
   180004e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   180004e2e:	00 00 
   180004e30:	45 3a 13             	cmp    (%r11),%r10b
   180004e33:	75 1a                	jne    0x180004e4f
   180004e35:	49 ff c3             	inc    %r11
   180004e38:	45 0f b6 16          	movzbl (%r14),%r10d
   180004e3c:	49 ff c6             	inc    %r14
   180004e3f:	45 84 d2             	test   %r10b,%r10b
   180004e42:	75 ec                	jne    0x180004e30
   180004e44:	45 31 d2             	xor    %r10d,%r10d
   180004e47:	eb 06                	jmp    0x180004e4f
   180004e49:	45 31 d2             	xor    %r10d,%r10d
   180004e4c:	4d 89 cb             	mov    %r9,%r11
   180004e4f:	45 3a 13             	cmp    (%r11),%r10b
   180004e52:	0f 84 92 00 00 00    	je     0x180004eea
   180004e58:	49 ff c0             	inc    %r8
   180004e5b:	49 83 f8 14          	cmp    $0x14,%r8
   180004e5f:	75 af                	jne    0x180004e10
   180004e61:	eb 78                	jmp    0x180004edb
   180004e63:	31 d2                	xor    %edx,%edx
   180004e65:	4c 8d 05 a4 22 00 00 	lea    0x22a4(%rip),%r8        # 0x180007110
   180004e6c:	4c 8d 0c 52          	lea    (%rdx,%rdx,2),%r9
   180004e70:	4f 8b 34 c8          	mov    (%r8,%r9,8),%r14
   180004e74:	45 0f b6 16          	movzbl (%r14),%r10d
   180004e78:	45 84 d2             	test   %r10b,%r10b
   180004e7b:	74 2c                	je     0x180004ea9
   180004e7d:	49 ff c6             	inc    %r14
   180004e80:	49 89 cb             	mov    %rcx,%r11
   180004e83:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004e8a:	84 00 00 00 00 00 
   180004e90:	45 3a 13             	cmp    (%r11),%r10b
   180004e93:	75 1a                	jne    0x180004eaf
   180004e95:	49 ff c3             	inc    %r11
   180004e98:	45 0f b6 16          	movzbl (%r14),%r10d
   180004e9c:	49 ff c6             	inc    %r14
   180004e9f:	45 84 d2             	test   %r10b,%r10b
   180004ea2:	75 ec                	jne    0x180004e90
   180004ea4:	45 31 d2             	xor    %r10d,%r10d
   180004ea7:	eb 06                	jmp    0x180004eaf
   180004ea9:	45 31 d2             	xor    %r10d,%r10d
   180004eac:	49 89 cb             	mov    %rcx,%r11
   180004eaf:	45 3a 13             	cmp    (%r11),%r10b
   180004eb2:	74 0b                	je     0x180004ebf
   180004eb4:	48 ff c2             	inc    %rdx
   180004eb7:	48 83 fa 14          	cmp    $0x14,%rdx
   180004ebb:	75 af                	jne    0x180004e6c
   180004ebd:	eb 1c                	jmp    0x180004edb
   180004ebf:	4b 8d 0c c8          	lea    (%r8,%r9,8),%rcx
   180004ec3:	89 c0                	mov    %eax,%eax
   180004ec5:	44 0f b7 7c 41 08    	movzwl 0x8(%rcx,%rax,2),%r15d
   180004ecb:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   180004ed1:	66 45 85 ff          	test   %r15w,%r15w
   180004ed5:	0f 85 f6 fc ff ff    	jne    0x180004bd1
   180004edb:	c7 05 17 89 07 00 00 	movl   $0x0,0x78917(%rip)        # 0x18007d7fc
   180004ee2:	00 00 00 
   180004ee5:	e9 6b f8 ff ff       	jmp    0x180004755
   180004eea:	41 89 c0             	mov    %eax,%r8d
   180004eed:	41 83 e0 05          	and    $0x5,%r8d
   180004ef1:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180004ef7:	41 83 f8 01          	cmp    $0x1,%r8d
   180004efb:	74 19                	je     0x180004f16
   180004efd:	89 c0                	mov    %eax,%eax
   180004eff:	4c 8d 05 ea 21 00 00 	lea    0x21ea(%rip),%r8        # 0x1800070f0
   180004f06:	41 0f b7 04 40       	movzwl (%r8,%rax,2),%eax
   180004f0b:	66 89 44 24 42       	mov    %ax,0x42(%rsp)
   180004f10:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   180004f16:	44 89 4c 24 3c       	mov    %r9d,0x3c(%rsp)
   180004f1b:	44 0f b7 7c d1 0a    	movzwl 0xa(%rcx,%rdx,8),%r15d
   180004f21:	e9 b0 fc ff ff       	jmp    0x180004bd6
   180004f26:	83 f8 01             	cmp    $0x1,%eax
   180004f29:	75 18                	jne    0x180004f43
   180004f2b:	8d 50 01             	lea    0x1(%rax),%edx
   180004f2e:	89 15 c8 88 07 00    	mov    %edx,0x788c8(%rip)        # 0x18007d7fc
   180004f34:	48 8d 15 e5 88 07 00 	lea    0x788e5(%rip),%rdx        # 0x18007d820
   180004f3b:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
   180004f3e:	e9 12 f8 ff ff       	jmp    0x180004755
   180004f43:	88 0d d7 88 07 00    	mov    %cl,0x788d7(%rip)        # 0x18007d820
   180004f49:	c7 05 a9 88 07 00 01 	movl   $0x1,0x788a9(%rip)        # 0x18007d7fc
   180004f50:	00 00 00 
   180004f53:	e9 fd f7 ff ff       	jmp    0x180004755
   180004f58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180004f5f:	00 
   180004f60:	56                   	push   %rsi
   180004f61:	57                   	push   %rdi
   180004f62:	48 83 ec 48          	sub    $0x48,%rsp
   180004f66:	83 3d d3 88 07 00 00 	cmpl   $0x0,0x788d3(%rip)        # 0x18007d840
   180004f6d:	0f 84 de 03 00 00    	je     0x180005351
   180004f73:	8b 15 d3 88 07 00    	mov    0x788d3(%rip),%edx        # 0x18007d84c
   180004f79:	44 8b 05 c8 88 07 00 	mov    0x788c8(%rip),%r8d        # 0x18007d848
   180004f80:	8b 05 be 88 07 00    	mov    0x788be(%rip),%eax        # 0x18007d844
   180004f86:	44 39 c2             	cmp    %r8d,%edx
   180004f89:	75 64                	jne    0x180004fef
   180004f8b:	85 c0                	test   %eax,%eax
   180004f8d:	75 60                	jne    0x180004fef
   180004f8f:	44 3b 05 f2 32 00 00 	cmp    0x32f2(%rip),%r8d        # 0x180008288
   180004f96:	75 57                	jne    0x180004fef
   180004f98:	31 c0                	xor    %eax,%eax
   180004f9a:	85 c9                	test   %ecx,%ecx
   180004f9c:	75 72                	jne    0x180005010
   180004f9e:	48 8b 0d db 32 00 00 	mov    0x32db(%rip),%rcx        # 0x180008280
   180004fa5:	48 85 c9             	test   %rcx,%rcx
   180004fa8:	74 21                	je     0x180004fcb
   180004faa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180004fb1:	00 00 
   180004fb3:	48 8d 15 d8 25 00 00 	lea    0x25d8(%rip),%rdx        # 0x180007592
   180004fba:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180004fbf:	41 b8 26 00 00 00    	mov    $0x26,%r8d
   180004fc5:	ff 15 35 2a 00 00    	call   *0x2a35(%rip)        # 0x180007a00
   180004fcb:	c7 05 6b 88 07 00 00 	movl   $0x0,0x7886b(%rip)        # 0x18007d840
   180004fd2:	00 00 00 
   180004fd5:	e8 f6 0d 00 00       	call   0x180005dd0
   180004fda:	b9 2c 01 00 00       	mov    $0x12c,%ecx
   180004fdf:	ba 58 02 00 00       	mov    $0x258,%edx
   180004fe4:	ff 15 7e 29 00 00    	call   *0x297e(%rip)        # 0x180007968
   180004fea:	e9 62 03 00 00       	jmp    0x180005351
   180004fef:	85 c9                	test   %ecx,%ecx
   180004ff1:	4c 8d 0d 4c 88 07 00 	lea    0x7884c(%rip),%r9        # 0x18007d844
   180004ff8:	4c 8d 15 49 88 07 00 	lea    0x78849(%rip),%r10        # 0x18007d848
   180004fff:	4d 0f 44 d1          	cmove  %r9,%r10
   180005003:	0f 44 c2             	cmove  %edx,%eax
   180005006:	44 0f 45 c2          	cmovne %edx,%r8d
   18000500a:	41 89 12             	mov    %edx,(%r10)
   18000500d:	44 89 c2             	mov    %r8d,%edx
   180005010:	29 c2                	sub    %eax,%edx
   180005012:	83 fa 01             	cmp    $0x1,%edx
   180005015:	0f 87 99 00 00 00    	ja     0x1800050b4
   18000501b:	48 8b 0d 5e 32 00 00 	mov    0x325e(%rip),%rcx        # 0x180008280
   180005022:	48 85 c9             	test   %rcx,%rcx
   180005025:	74 27                	je     0x18000504e
   180005027:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   18000502e:	00 00 
   180005030:	48 8d 15 9d 24 00 00 	lea    0x249d(%rip),%rdx        # 0x1800074d4
   180005037:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000503c:	41 b8 15 00 00 00    	mov    $0x15,%r8d
   180005042:	ff 15 b8 29 00 00    	call   *0x29b8(%rip)        # 0x180007a00
   180005048:	8b 05 f6 87 07 00    	mov    0x787f6(%rip),%eax        # 0x18007d844
   18000504e:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
   180005055:	ff ff ff 
   180005058:	48 be 00 00 00 00 0f 	movabs $0xf00000000,%rsi
   18000505f:	00 00 00 
   180005062:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180005067:	85 c0                	test   %eax,%eax
   180005069:	74 79                	je     0x1800050e4
   18000506b:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   180005070:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
   180005076:	48 89 f2             	mov    %rsi,%rdx
   180005079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180005080:	41 89 c1             	mov    %eax,%r9d
   180005083:	4d 0f af c8          	imul   %r8,%r9
   180005087:	49 c1 e9 23          	shr    $0x23,%r9
   18000508b:	47 8d 14 09          	lea    (%r9,%r9,1),%r10d
   18000508f:	47 8d 14 92          	lea    (%r10,%r10,4),%r10d
   180005093:	41 89 c3             	mov    %eax,%r11d
   180005096:	45 29 d3             	sub    %r10d,%r11d
   180005099:	41 80 cb 30          	or     $0x30,%r11b
   18000509d:	44 88 19             	mov    %r11b,(%rcx)
   1800050a0:	48 01 fa             	add    %rdi,%rdx
   1800050a3:	48 ff c9             	dec    %rcx
   1800050a6:	83 f8 09             	cmp    $0x9,%eax
   1800050a9:	44 89 c8             	mov    %r9d,%eax
   1800050ac:	77 d2                	ja     0x180005080
   1800050ae:	48 c1 fa 20          	sar    $0x20,%rdx
   1800050b2:	eb 3a                	jmp    0x1800050ee
   1800050b4:	d1 ea                	shr    %edx
   1800050b6:	01 c2                	add    %eax,%edx
   1800050b8:	89 15 8e 87 07 00    	mov    %edx,0x7878e(%rip)        # 0x18007d84c
   1800050be:	89 ce                	mov    %ecx,%esi
   1800050c0:	e8 0b 0d 00 00       	call   0x180005dd0
   1800050c5:	85 f6                	test   %esi,%esi
   1800050c7:	48 8d 05 f6 22 00 00 	lea    0x22f6(%rip),%rax        # 0x1800073c4
   1800050ce:	48 8d 0d e9 22 00 00 	lea    0x22e9(%rip),%rcx        # 0x1800073be
   1800050d5:	48 0f 44 c8          	cmove  %rax,%rcx
   1800050d9:	48 83 c4 48          	add    $0x48,%rsp
   1800050dd:	5f                   	pop    %rdi
   1800050de:	5e                   	pop    %rsi
   1800050df:	e9 5c 0f 00 00       	jmp    0x180006040
   1800050e4:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   1800050e9:	ba 0e 00 00 00       	mov    $0xe,%edx
   1800050ee:	48 8b 0d 8b 31 00 00 	mov    0x318b(%rip),%rcx        # 0x180008280
   1800050f5:	48 85 c9             	test   %rcx,%rcx
   1800050f8:	74 61                	je     0x18000515b
   1800050fa:	48 01 e2             	add    %rsp,%rdx
   1800050fd:	48 83 c2 30          	add    $0x30,%rdx
   180005101:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180005107:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   18000510e:	00 00 
   180005110:	41 ff c0             	inc    %r8d
   180005113:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180005118:	75 f6                	jne    0x180005110
   18000511a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005121:	00 00 
   180005123:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   180005128:	ff 15 d2 28 00 00    	call   *0x28d2(%rip)        # 0x180007a00
   18000512e:	48 8b 0d 4b 31 00 00 	mov    0x314b(%rip),%rcx        # 0x180008280
   180005135:	48 85 c9             	test   %rcx,%rcx
   180005138:	74 21                	je     0x18000515b
   18000513a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005141:	00 00 
   180005143:	48 8d 15 b7 23 00 00 	lea    0x23b7(%rip),%rdx        # 0x180007501
   18000514a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000514f:	41 b8 05 00 00 00    	mov    $0x5,%r8d
   180005155:	ff 15 a5 28 00 00    	call   *0x28a5(%rip)        # 0x180007a00
   18000515b:	8b 05 e3 86 07 00    	mov    0x786e3(%rip),%eax        # 0x18007d844
   180005161:	48 8d 0d 28 31 00 00 	lea    0x3128(%rip),%rcx        # 0x180008290
   180005168:	8b 0c 81             	mov    (%rcx,%rax,4),%ecx
   18000516b:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180005170:	85 c9                	test   %ecx,%ecx
   180005172:	74 50                	je     0x1800051c4
   180005174:	48 8d 54 24 3e       	lea    0x3e(%rsp),%rdx
   180005179:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
   18000517f:	48 89 f0             	mov    %rsi,%rax
   180005182:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005189:	1f 84 00 00 00 00 00 
   180005190:	41 89 c9             	mov    %ecx,%r9d
   180005193:	4d 0f af c8          	imul   %r8,%r9
   180005197:	49 c1 e9 23          	shr    $0x23,%r9
   18000519b:	47 8d 14 09          	lea    (%r9,%r9,1),%r10d
   18000519f:	47 8d 14 92          	lea    (%r10,%r10,4),%r10d
   1800051a3:	41 89 cb             	mov    %ecx,%r11d
   1800051a6:	45 29 d3             	sub    %r10d,%r11d
   1800051a9:	41 80 cb 30          	or     $0x30,%r11b
   1800051ad:	44 88 1a             	mov    %r11b,(%rdx)
   1800051b0:	48 01 f8             	add    %rdi,%rax
   1800051b3:	48 ff ca             	dec    %rdx
   1800051b6:	83 f9 09             	cmp    $0x9,%ecx
   1800051b9:	44 89 c9             	mov    %r9d,%ecx
   1800051bc:	77 d2                	ja     0x180005190
   1800051be:	48 c1 f8 20          	sar    $0x20,%rax
   1800051c2:	eb 0a                	jmp    0x1800051ce
   1800051c4:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   1800051c9:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800051ce:	48 8b 0d ab 30 00 00 	mov    0x30ab(%rip),%rcx        # 0x180008280
   1800051d5:	48 85 c9             	test   %rcx,%rcx
   1800051d8:	74 61                	je     0x18000523b
   1800051da:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800051de:	48 83 c2 30          	add    $0x30,%rdx
   1800051e2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800051e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800051ef:	00 
   1800051f0:	41 ff c0             	inc    %r8d
   1800051f3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800051f8:	75 f6                	jne    0x1800051f0
   1800051fa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005201:	00 00 
   180005203:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   180005208:	ff 15 f2 27 00 00    	call   *0x27f2(%rip)        # 0x180007a00
   18000520e:	48 8b 0d 6b 30 00 00 	mov    0x306b(%rip),%rcx        # 0x180008280
   180005215:	48 85 c9             	test   %rcx,%rcx
   180005218:	74 21                	je     0x18000523b
   18000521a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005221:	00 00 
   180005223:	48 8d 15 56 22 00 00 	lea    0x2256(%rip),%rdx        # 0x180007480
   18000522a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000522f:	41 b8 05 00 00 00    	mov    $0x5,%r8d
   180005235:	ff 15 c5 27 00 00    	call   *0x27c5(%rip)        # 0x180007a00
   18000523b:	8b 05 03 86 07 00    	mov    0x78603(%rip),%eax        # 0x18007d844
   180005241:	48 8d 0d c8 68 01 00 	lea    0x168c8(%rip),%rcx        # 0x18001bb10
   180005248:	8b 04 81             	mov    (%rcx,%rax,4),%eax
   18000524b:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180005250:	85 c0                	test   %eax,%eax
   180005252:	74 40                	je     0x180005294
   180005254:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   180005259:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
   18000525e:	66 90                	xchg   %ax,%ax
   180005260:	41 89 c0             	mov    %eax,%r8d
   180005263:	4c 0f af c2          	imul   %rdx,%r8
   180005267:	49 c1 e8 23          	shr    $0x23,%r8
   18000526b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000526f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180005273:	41 89 c2             	mov    %eax,%r10d
   180005276:	45 29 ca             	sub    %r9d,%r10d
   180005279:	41 80 ca 30          	or     $0x30,%r10b
   18000527d:	44 88 11             	mov    %r10b,(%rcx)
   180005280:	48 01 fe             	add    %rdi,%rsi
   180005283:	48 ff c9             	dec    %rcx
   180005286:	83 f8 09             	cmp    $0x9,%eax
   180005289:	44 89 c0             	mov    %r8d,%eax
   18000528c:	77 d2                	ja     0x180005260
   18000528e:	48 c1 fe 20          	sar    $0x20,%rsi
   180005292:	eb 0a                	jmp    0x18000529e
   180005294:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   180005299:	be 0e 00 00 00       	mov    $0xe,%esi
   18000529e:	48 8b 0d db 2f 00 00 	mov    0x2fdb(%rip),%rcx        # 0x180008280
   1800052a5:	48 85 c9             	test   %rcx,%rcx
   1800052a8:	74 61                	je     0x18000530b
   1800052aa:	48 8d 14 34          	lea    (%rsp,%rsi,1),%rdx
   1800052ae:	48 83 c2 30          	add    $0x30,%rdx
   1800052b2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800052b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800052bf:	00 
   1800052c0:	41 ff c0             	inc    %r8d
   1800052c3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800052c8:	75 f6                	jne    0x1800052c0
   1800052ca:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800052d1:	00 00 
   1800052d3:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   1800052d8:	ff 15 22 27 00 00    	call   *0x2722(%rip)        # 0x180007a00
   1800052de:	48 8b 0d 9b 2f 00 00 	mov    0x2f9b(%rip),%rcx        # 0x180008280
   1800052e5:	48 85 c9             	test   %rcx,%rcx
   1800052e8:	74 21                	je     0x18000530b
   1800052ea:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800052f1:	00 00 
   1800052f3:	48 8d 15 e2 24 00 00 	lea    0x24e2(%rip),%rdx        # 0x1800077dc
   1800052fa:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800052ff:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180005305:	ff 15 f5 26 00 00    	call   *0x26f5(%rip)        # 0x180007a00
   18000530b:	8b 05 37 85 07 00    	mov    0x78537(%rip),%eax        # 0x18007d848
   180005311:	89 05 35 85 07 00    	mov    %eax,0x78535(%rip)        # 0x18007d84c
   180005317:	e8 b4 0a 00 00       	call   0x180005dd0
   18000531c:	48 8b 35 45 26 00 00 	mov    0x2645(%rip),%rsi        # 0x180007968
   180005323:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   180005328:	ba 96 00 00 00       	mov    $0x96,%edx
   18000532d:	ff d6                	call   *%rsi
   18000532f:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   180005334:	ba 96 00 00 00       	mov    $0x96,%edx
   180005339:	ff d6                	call   *%rsi
   18000533b:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   180005340:	ba 96 00 00 00       	mov    $0x96,%edx
   180005345:	ff d6                	call   *%rsi
   180005347:	c7 05 ef 84 07 00 02 	movl   $0x2,0x784ef(%rip)        # 0x18007d840
   18000534e:	00 00 00 
   180005351:	48 83 c4 48          	add    $0x48,%rsp
   180005355:	5f                   	pop    %rdi
   180005356:	5e                   	pop    %rsi
   180005357:	c3                   	ret    
   180005358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000535f:	00 
   180005360:	41 57                	push   %r15
   180005362:	41 56                	push   %r14
   180005364:	41 55                	push   %r13
   180005366:	41 54                	push   %r12
   180005368:	56                   	push   %rsi
   180005369:	57                   	push   %rdi
   18000536a:	55                   	push   %rbp
   18000536b:	53                   	push   %rbx
   18000536c:	48 83 ec 78          	sub    $0x78,%rsp
   180005370:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
   180005375:	48 89 cf             	mov    %rcx,%rdi
   180005378:	41 89 d4             	mov    %edx,%r12d
   18000537b:	45 31 f6             	xor    %r14d,%r14d
   18000537e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
   180005385:	ff ff ff 
   180005388:	31 ed                	xor    %ebp,%ebp
   18000538a:	eb 10                	jmp    0x18000539c
   18000538c:	0f 1f 40 00          	nopl   0x0(%rax)
   180005390:	48 01 dd             	add    %rbx,%rbp
   180005393:	48 85 db             	test   %rbx,%rbx
   180005396:	0f 84 f6 03 00 00    	je     0x180005792
   18000539c:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1800053a2:	48 89 e9             	mov    %rbp,%rcx
   1800053a5:	48 8d 54 24 48       	lea    0x48(%rsp),%rdx
   1800053aa:	ff 15 48 26 00 00    	call   *0x2648(%rip)        # 0x1800079f8
   1800053b0:	48 85 c0             	test   %rax,%rax
   1800053b3:	0f 84 d9 03 00 00    	je     0x180005792
   1800053b9:	48 8b 6c 24 48       	mov    0x48(%rsp),%rbp
   1800053be:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1800053c3:	81 7c 24 68 00 10 00 	cmpl   $0x1000,0x68(%rsp)
   1800053ca:	00 
   1800053cb:	75 c3                	jne    0x180005390
   1800053cd:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
   1800053d1:	a8 04                	test   $0x4,%al
   1800053d3:	74 bb                	je     0x180005390
   1800053d5:	a9 00 07 00 00       	test   $0x700,%eax
   1800053da:	75 b4                	jne    0x180005390
   1800053dc:	48 81 fb ff ff ff 3f 	cmp    $0x3fffffff,%rbx
   1800053e3:	77 ab                	ja     0x180005390
   1800053e5:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
   1800053ec:	72 a2                	jb     0x180005390
   1800053ee:	4c 8d 2c 2b          	lea    (%rbx,%rbp,1),%r13
   1800053f2:	49 81 c5 38 ff ff ff 	add    $0xffffffffffffff38,%r13
   1800053f9:	4c 8d 7d 40          	lea    0x40(%rbp),%r15
   1800053fd:	eb 1d                	jmp    0x18000541c
   1800053ff:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
   180005406:	ff ff ff 
   180005409:	41 ff c6             	inc    %r14d
   18000540c:	4d 01 e7             	add    %r12,%r15
   18000540f:	90                   	nop
   180005410:	49 ff c7             	inc    %r15
   180005413:	4d 39 ef             	cmp    %r13,%r15
   180005416:	0f 83 74 ff ff ff    	jae    0x180005390
   18000541c:	41 0f b6 07          	movzbl (%r15),%eax
   180005420:	3a 07                	cmp    (%rdi),%al
   180005422:	75 ec                	jne    0x180005410
   180005424:	41 0f b6 47 01       	movzbl 0x1(%r15),%eax
   180005429:	3a 47 01             	cmp    0x1(%rdi),%al
   18000542c:	75 e2                	jne    0x180005410
   18000542e:	31 c0                	xor    %eax,%eax
   180005430:	49 39 c4             	cmp    %rax,%r12
   180005433:	74 13                	je     0x180005448
   180005435:	41 0f b6 0c 07       	movzbl (%r15,%rax,1),%ecx
   18000543a:	48 8d 50 01          	lea    0x1(%rax),%rdx
   18000543e:	3a 0c 07             	cmp    (%rdi,%rax,1),%cl
   180005441:	48 89 d0             	mov    %rdx,%rax
   180005444:	74 ea                	je     0x180005430
   180005446:	eb c8                	jmp    0x180005410
   180005448:	48 8d 05 31 83 07 00 	lea    0x78331(%rip),%rax        # 0x18007d780
   18000544f:	49 39 c7             	cmp    %rax,%r15
   180005452:	72 0c                	jb     0x180005460
   180005454:	48 8d 05 35 83 07 00 	lea    0x78335(%rip),%rax        # 0x18007d790
   18000545b:	49 39 c7             	cmp    %rax,%r15
   18000545e:	72 b0                	jb     0x180005410
   180005460:	48 8d 05 79 1c 00 00 	lea    0x1c79(%rip),%rax        # 0x1800070e0
   180005467:	49 39 c7             	cmp    %rax,%r15
   18000546a:	72 0c                	jb     0x180005478
   18000546c:	48 8d 05 7d 1c 00 00 	lea    0x1c7d(%rip),%rax        # 0x1800070f0
   180005473:	49 39 c7             	cmp    %rax,%r15
   180005476:	72 98                	jb     0x180005410
   180005478:	48 8d 05 f1 82 07 00 	lea    0x782f1(%rip),%rax        # 0x18007d770
   18000547f:	49 39 c7             	cmp    %rax,%r15
   180005482:	72 0c                	jb     0x180005490
   180005484:	48 8d 05 f5 82 07 00 	lea    0x782f5(%rip),%rax        # 0x18007d780
   18000548b:	49 39 c7             	cmp    %rax,%r15
   18000548e:	72 80                	jb     0x180005410
   180005490:	48 8d 05 71 83 07 00 	lea    0x78371(%rip),%rax        # 0x18007d808
   180005497:	49 39 c7             	cmp    %rax,%r15
   18000549a:	72 10                	jb     0x1800054ac
   18000549c:	48 8d 05 6d 83 07 00 	lea    0x7836d(%rip),%rax        # 0x18007d810
   1800054a3:	49 39 c7             	cmp    %rax,%r15
   1800054a6:	0f 82 64 ff ff ff    	jb     0x180005410
   1800054ac:	41 83 fe 0b          	cmp    $0xb,%r14d
   1800054b0:	0f 87 53 ff ff ff    	ja     0x180005409
   1800054b6:	48 8b 0d c3 2d 00 00 	mov    0x2dc3(%rip),%rcx        # 0x180008280
   1800054bd:	48 85 c9             	test   %rcx,%rcx
   1800054c0:	0f 84 88 00 00 00    	je     0x18000554e
   1800054c6:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800054cc:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   1800054d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800054d8:	0f 1f 84 00 00 00 00 
   1800054df:	00 
   1800054e0:	41 ff c0             	inc    %r8d
   1800054e3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800054e8:	75 f6                	jne    0x1800054e0
   1800054ea:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800054f1:	00 00 
   1800054f3:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800054f8:	ff 15 02 25 00 00    	call   *0x2502(%rip)        # 0x180007a00
   1800054fe:	48 8b 0d 7b 2d 00 00 	mov    0x2d7b(%rip),%rcx        # 0x180008280
   180005505:	81 7c 24 70 00 00 00 	cmpl   $0x1000000,0x70(%rsp)
   18000550c:	01 
   18000550d:	48 8d 15 8c 1f 00 00 	lea    0x1f8c(%rip),%rdx        # 0x1800074a0
   180005514:	48 8d 05 90 1f 00 00 	lea    0x1f90(%rip),%rax        # 0x1800074ab
   18000551b:	48 0f 44 d0          	cmove  %rax,%rdx
   18000551f:	48 85 c9             	test   %rcx,%rcx
   180005522:	74 2a                	je     0x18000554e
   180005524:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000552a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   180005530:	41 ff c0             	inc    %r8d
   180005533:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180005538:	75 f6                	jne    0x180005530
   18000553a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005541:	00 00 
   180005543:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180005548:	ff 15 b2 24 00 00    	call   *0x24b2(%rip)        # 0x180007a00
   18000554e:	44 89 f9             	mov    %r15d,%ecx
   180005551:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180005556:	29 e9                	sub    %ebp,%ecx
   180005558:	74 4a                	je     0x1800055a4
   18000555a:	48 8d 54 24 3e       	lea    0x3e(%rsp),%rdx
   18000555f:	48 b8 00 00 00 00 0f 	movabs $0xf00000000,%rax
   180005566:	00 00 00 
   180005569:	41 bb cd cc cc cc    	mov    $0xcccccccd,%r11d
   18000556f:	90                   	nop
   180005570:	41 89 c8             	mov    %ecx,%r8d
   180005573:	4d 0f af c3          	imul   %r11,%r8
   180005577:	49 c1 e8 23          	shr    $0x23,%r8
   18000557b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000557f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180005583:	41 89 ca             	mov    %ecx,%r10d
   180005586:	45 29 ca             	sub    %r9d,%r10d
   180005589:	41 80 ca 30          	or     $0x30,%r10b
   18000558d:	44 88 12             	mov    %r10b,(%rdx)
   180005590:	48 01 f0             	add    %rsi,%rax
   180005593:	48 ff ca             	dec    %rdx
   180005596:	83 f9 09             	cmp    $0x9,%ecx
   180005599:	44 89 c1             	mov    %r8d,%ecx
   18000559c:	77 d2                	ja     0x180005570
   18000559e:	48 c1 f8 20          	sar    $0x20,%rax
   1800055a2:	eb 0a                	jmp    0x1800055ae
   1800055a4:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   1800055a9:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800055ae:	48 8b 0d cb 2c 00 00 	mov    0x2ccb(%rip),%rcx        # 0x180008280
   1800055b5:	48 85 c9             	test   %rcx,%rcx
   1800055b8:	48 8b 35 41 24 00 00 	mov    0x2441(%rip),%rsi        # 0x180007a00
   1800055bf:	74 5b                	je     0x18000561c
   1800055c1:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800055c5:	48 83 c2 30          	add    $0x30,%rdx
   1800055c9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800055cf:	90                   	nop
   1800055d0:	41 ff c0             	inc    %r8d
   1800055d3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800055d8:	75 f6                	jne    0x1800055d0
   1800055da:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800055e1:	00 00 
   1800055e3:	4c 8d 4c 24 2c       	lea    0x2c(%rsp),%r9
   1800055e8:	ff d6                	call   *%rsi
   1800055ea:	48 8b 0d 8f 2c 00 00 	mov    0x2c8f(%rip),%rcx        # 0x180008280
   1800055f1:	48 85 c9             	test   %rcx,%rcx
   1800055f4:	74 26                	je     0x18000561c
   1800055f6:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800055fd:	00 00 
   1800055ff:	48 8d 15 30 1f 00 00 	lea    0x1f30(%rip),%rdx        # 0x180007536
   180005606:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
   18000560c:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180005611:	ff d6                	call   *%rsi
   180005613:	48 8b 0d 66 2c 00 00 	mov    0x2c66(%rip),%rcx        # 0x180008280
   18000561a:	eb 02                	jmp    0x18000561e
   18000561c:	31 c9                	xor    %ecx,%ecx
   18000561e:	66 c7 44 24 2e 20 00 	movw   $0x20,0x2e(%rsp)
   180005625:	48 89 c8             	mov    %rcx,%rax
   180005628:	31 f6                	xor    %esi,%esi
   18000562a:	eb 0f                	jmp    0x18000563b
   18000562c:	0f 1f 40 00          	nopl   0x0(%rax)
   180005630:	31 c0                	xor    %eax,%eax
   180005632:	48 ff c6             	inc    %rsi
   180005635:	48 83 fe 40          	cmp    $0x40,%rsi
   180005639:	74 68                	je     0x1800056a3
   18000563b:	41 0f b6 54 37 c0    	movzbl -0x40(%r15,%rsi,1),%edx
   180005641:	41 89 d0             	mov    %edx,%r8d
   180005644:	41 c1 e8 04          	shr    $0x4,%r8d
   180005648:	4c 8d 0d 28 1d 00 00 	lea    0x1d28(%rip),%r9        # 0x180007377
   18000564f:	47 0f b6 04 08       	movzbl (%r8,%r9,1),%r8d
   180005654:	44 88 44 24 2c       	mov    %r8b,0x2c(%rsp)
   180005659:	83 e2 0f             	and    $0xf,%edx
   18000565c:	42 0f b6 14 0a       	movzbl (%rdx,%r9,1),%edx
   180005661:	88 54 24 2d          	mov    %dl,0x2d(%rsp)
   180005665:	48 85 c0             	test   %rax,%rax
   180005668:	74 c6                	je     0x180005630
   18000566a:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180005670:	41 ff c0             	inc    %r8d
   180005673:	42 80 7c 04 2c 00    	cmpb   $0x0,0x2c(%rsp,%r8,1)
   180005679:	75 f5                	jne    0x180005670
   18000567b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005682:	00 00 
   180005684:	48 89 c1             	mov    %rax,%rcx
   180005687:	48 8d 54 24 2c       	lea    0x2c(%rsp),%rdx
   18000568c:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180005691:	ff 15 69 23 00 00    	call   *0x2369(%rip)        # 0x180007a00
   180005697:	48 8b 0d e2 2b 00 00 	mov    0x2be2(%rip),%rcx        # 0x180008280
   18000569e:	48 89 c8             	mov    %rcx,%rax
   1800056a1:	eb 8f                	jmp    0x180005632
   1800056a3:	48 85 c9             	test   %rcx,%rcx
   1800056a6:	74 2a                	je     0x1800056d2
   1800056a8:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800056af:	00 00 
   1800056b1:	48 8d 15 ac 1e 00 00 	lea    0x1eac(%rip),%rdx        # 0x180007564
   1800056b8:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
   1800056be:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800056c3:	ff 15 37 23 00 00    	call   *0x2337(%rip)        # 0x180007a00
   1800056c9:	48 8b 0d b0 2b 00 00 	mov    0x2bb0(%rip),%rcx        # 0x180008280
   1800056d0:	eb 02                	jmp    0x1800056d4
   1800056d2:	31 c9                	xor    %ecx,%ecx
   1800056d4:	66 c7 44 24 2e 20 00 	movw   $0x20,0x2e(%rsp)
   1800056db:	48 89 c8             	mov    %rcx,%rax
   1800056de:	31 f6                	xor    %esi,%esi
   1800056e0:	eb 19                	jmp    0x1800056fb
   1800056e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800056e9:	1f 84 00 00 00 00 00 
   1800056f0:	31 c0                	xor    %eax,%eax
   1800056f2:	48 ff c6             	inc    %rsi
   1800056f5:	48 83 fe 60          	cmp    $0x60,%rsi
   1800056f9:	74 68                	je     0x180005763
   1800056fb:	41 0f b6 14 37       	movzbl (%r15,%rsi,1),%edx
   180005700:	41 89 d0             	mov    %edx,%r8d
   180005703:	41 c1 e8 04          	shr    $0x4,%r8d
   180005707:	4c 8d 0d 69 1c 00 00 	lea    0x1c69(%rip),%r9        # 0x180007377
   18000570e:	47 0f b6 04 08       	movzbl (%r8,%r9,1),%r8d
   180005713:	44 88 44 24 2c       	mov    %r8b,0x2c(%rsp)
   180005718:	83 e2 0f             	and    $0xf,%edx
   18000571b:	42 0f b6 14 0a       	movzbl (%rdx,%r9,1),%edx
   180005720:	88 54 24 2d          	mov    %dl,0x2d(%rsp)
   180005724:	48 85 c0             	test   %rax,%rax
   180005727:	74 c7                	je     0x1800056f0
   180005729:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000572f:	90                   	nop
   180005730:	41 ff c0             	inc    %r8d
   180005733:	42 80 7c 04 2c 00    	cmpb   $0x0,0x2c(%rsp,%r8,1)
   180005739:	75 f5                	jne    0x180005730
   18000573b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005742:	00 00 
   180005744:	48 89 c1             	mov    %rax,%rcx
   180005747:	48 8d 54 24 2c       	lea    0x2c(%rsp),%rdx
   18000574c:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180005751:	ff 15 a9 22 00 00    	call   *0x22a9(%rip)        # 0x180007a00
   180005757:	48 8b 0d 22 2b 00 00 	mov    0x2b22(%rip),%rcx        # 0x180008280
   18000575e:	48 89 c8             	mov    %rcx,%rax
   180005761:	eb 8f                	jmp    0x1800056f2
   180005763:	48 85 c9             	test   %rcx,%rcx
   180005766:	0f 84 93 fc ff ff    	je     0x1800053ff
   18000576c:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005773:	00 00 
   180005775:	48 8d 15 60 20 00 00 	lea    0x2060(%rip),%rdx        # 0x1800077dc
   18000577c:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180005782:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180005787:	ff 15 73 22 00 00    	call   *0x2273(%rip)        # 0x180007a00
   18000578d:	e9 6d fc ff ff       	jmp    0x1800053ff
   180005792:	48 8b 0d e7 2a 00 00 	mov    0x2ae7(%rip),%rcx        # 0x180008280
   180005799:	48 85 c9             	test   %rcx,%rcx
   18000579c:	74 5d                	je     0x1800057fb
   18000579e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800057a4:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   1800057a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1800057b0:	41 ff c0             	inc    %r8d
   1800057b3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800057b8:	75 f6                	jne    0x1800057b0
   1800057ba:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800057c1:	00 00 
   1800057c3:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800057c8:	ff 15 32 22 00 00    	call   *0x2232(%rip)        # 0x180007a00
   1800057ce:	48 8b 0d ab 2a 00 00 	mov    0x2aab(%rip),%rcx        # 0x180008280
   1800057d5:	48 85 c9             	test   %rcx,%rcx
   1800057d8:	74 21                	je     0x1800057fb
   1800057da:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800057e1:	00 00 
   1800057e3:	48 8d 15 ae 1c 00 00 	lea    0x1cae(%rip),%rdx        # 0x180007498
   1800057ea:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800057ef:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   1800057f5:	ff 15 05 22 00 00    	call   *0x2205(%rip)        # 0x180007a00
   1800057fb:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180005800:	45 85 f6             	test   %r14d,%r14d
   180005803:	74 50                	je     0x180005855
   180005805:	48 b8 00 00 00 00 0f 	movabs $0xf00000000,%rax
   18000580c:	00 00 00 
   18000580f:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   180005814:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
   180005819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180005820:	45 89 f0             	mov    %r14d,%r8d
   180005823:	4c 0f af c2          	imul   %rdx,%r8
   180005827:	49 c1 e8 23          	shr    $0x23,%r8
   18000582b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000582f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180005833:	45 89 f2             	mov    %r14d,%r10d
   180005836:	45 29 ca             	sub    %r9d,%r10d
   180005839:	41 80 ca 30          	or     $0x30,%r10b
   18000583d:	44 88 11             	mov    %r10b,(%rcx)
   180005840:	48 01 f0             	add    %rsi,%rax
   180005843:	48 ff c9             	dec    %rcx
   180005846:	41 83 fe 09          	cmp    $0x9,%r14d
   18000584a:	45 89 c6             	mov    %r8d,%r14d
   18000584d:	77 d1                	ja     0x180005820
   18000584f:	48 c1 f8 20          	sar    $0x20,%rax
   180005853:	eb 0a                	jmp    0x18000585f
   180005855:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   18000585a:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000585f:	48 8b 0d 1a 2a 00 00 	mov    0x2a1a(%rip),%rcx        # 0x180008280
   180005866:	48 85 c9             	test   %rcx,%rcx
   180005869:	74 60                	je     0x1800058cb
   18000586b:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000586f:	48 83 c2 30          	add    $0x30,%rdx
   180005873:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180005879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   180005880:	41 ff c0             	inc    %r8d
   180005883:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180005888:	75 f6                	jne    0x180005880
   18000588a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180005891:	00 00 
   180005893:	4c 8d 4c 24 2c       	lea    0x2c(%rsp),%r9
   180005898:	ff 15 62 21 00 00    	call   *0x2162(%rip)        # 0x180007a00
   18000589e:	48 8b 0d db 29 00 00 	mov    0x29db(%rip),%rcx        # 0x180008280
   1800058a5:	48 85 c9             	test   %rcx,%rcx
   1800058a8:	74 21                	je     0x1800058cb
   1800058aa:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800058b1:	00 00 
   1800058b3:	48 8d 15 22 1f 00 00 	lea    0x1f22(%rip),%rdx        # 0x1800077dc
   1800058ba:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800058bf:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1800058c5:	ff 15 35 21 00 00    	call   *0x2135(%rip)        # 0x180007a00
   1800058cb:	48 83 c4 78          	add    $0x78,%rsp
   1800058cf:	5b                   	pop    %rbx
   1800058d0:	5d                   	pop    %rbp
   1800058d1:	5f                   	pop    %rdi
   1800058d2:	5e                   	pop    %rsi
   1800058d3:	41 5c                	pop    %r12
   1800058d5:	41 5d                	pop    %r13
   1800058d7:	41 5e                	pop    %r14
   1800058d9:	41 5f                	pop    %r15
   1800058db:	c3                   	ret    
   1800058dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1800058e0:	41 57                	push   %r15
   1800058e2:	41 56                	push   %r14
   1800058e4:	56                   	push   %rsi
   1800058e5:	57                   	push   %rdi
   1800058e6:	53                   	push   %rbx
   1800058e7:	48 83 ec 20          	sub    $0x20,%rsp
   1800058eb:	89 ce                	mov    %ecx,%esi
   1800058ed:	bb 3c 00 00 00       	mov    $0x3c,%ebx
   1800058f2:	4c 8b 35 27 21 00 00 	mov    0x2127(%rip),%r14        # 0x180007a20
   1800058f9:	4c 8b 3d d8 20 00 00 	mov    0x20d8(%rip),%r15        # 0x1800079d8
   180005900:	b9 11 00 00 00       	mov    $0x11,%ecx
   180005905:	41 ff d6             	call   *%r14
   180005908:	89 c7                	mov    %eax,%edi
   18000590a:	b9 10 00 00 00       	mov    $0x10,%ecx
   18000590f:	41 ff d6             	call   *%r14
   180005912:	66 09 f8             	or     %di,%ax
   180005915:	79 0c                	jns    0x180005923
   180005917:	b9 32 00 00 00       	mov    $0x32,%ecx
   18000591c:	41 ff d7             	call   *%r15
   18000591f:	ff cb                	dec    %ebx
   180005921:	75 dd                	jne    0x180005900
   180005923:	b9 88 13 00 00       	mov    $0x1388,%ecx
   180005928:	41 ff d7             	call   *%r15
   18000592b:	48 8b 0d e6 7e 07 00 	mov    0x77ee6(%rip),%rcx        # 0x18007d818
   180005932:	48 8b 3d 07 21 00 00 	mov    0x2107(%rip),%rdi        # 0x180007a40
   180005939:	41 b8 3a ff 00 00    	mov    $0xff3a,%r8d
   18000593f:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180005945:	89 f2                	mov    %esi,%edx
   180005947:	ff d7                	call   *%rdi
   180005949:	b9 96 00 00 00       	mov    $0x96,%ecx
   18000594e:	41 ff d7             	call   *%r15
   180005951:	48 8b 0d c0 7e 07 00 	mov    0x77ec0(%rip),%rcx        # 0x18007d818
   180005958:	41 b8 3a ff 00 00    	mov    $0xff3a,%r8d
   18000595e:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180005964:	89 f2                	mov    %esi,%edx
   180005966:	ff d7                	call   *%rdi
   180005968:	b9 96 00 00 00       	mov    $0x96,%ecx
   18000596d:	41 ff d7             	call   *%r15
   180005970:	48 8b 0d a1 7e 07 00 	mov    0x77ea1(%rip),%rcx        # 0x18007d818
   180005977:	41 b8 3a ff 00 00    	mov    $0xff3a,%r8d
   18000597d:	41 b9 31 30 50 57    	mov    $0x57503031,%r9d
   180005983:	89 f2                	mov    %esi,%edx
   180005985:	ff d7                	call   *%rdi
   180005987:	b9 96 00 00 00       	mov    $0x96,%ecx
   18000598c:	4c 89 f8             	mov    %r15,%rax
   18000598f:	48 83 c4 20          	add    $0x20,%rsp
   180005993:	5b                   	pop    %rbx
   180005994:	5f                   	pop    %rdi
   180005995:	5e                   	pop    %rsi
   180005996:	41 5e                	pop    %r14
   180005998:	41 5f                	pop    %r15
   18000599a:	48 ff e0             	rex.W jmp *%rax
   18000599d:	0f 1f 00             	nopl   (%rax)
   1800059a0:	ff 05 fe 7d 07 00    	incl   0x77dfe(%rip)        # 0x18007d7a4
   1800059a6:	83 3d e3 7b 07 00 00 	cmpl   $0x0,0x77be3(%rip)        # 0x18007d590
   1800059ad:	74 06                	je     0x1800059b5
   1800059af:	b8 01 00 00 00       	mov    $0x1,%eax
   1800059b4:	c3                   	ret    
   1800059b5:	48 ff 25 fc 7d 07 00 	rex.W jmp *0x77dfc(%rip)        # 0x18007d7b8
   1800059bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1800059c0:	ff 05 e2 7d 07 00    	incl   0x77de2(%rip)        # 0x18007d7a8
   1800059c6:	83 3d c3 7b 07 00 00 	cmpl   $0x0,0x77bc3(%rip)        # 0x18007d590
   1800059cd:	74 1d                	je     0x1800059ec
   1800059cf:	48 85 d2             	test   %rdx,%rdx
   1800059d2:	74 06                	je     0x1800059da
   1800059d4:	c7 02 19 00 00 00    	movl   $0x19,(%rdx)
   1800059da:	4d 85 c0             	test   %r8,%r8
   1800059dd:	74 07                	je     0x1800059e6
   1800059df:	41 c7 00 00 00 00 00 	movl   $0x0,(%r8)
   1800059e6:	b8 01 00 00 00       	mov    $0x1,%eax
   1800059eb:	c3                   	ret    
   1800059ec:	48 8b 05 cd 7d 07 00 	mov    0x77dcd(%rip),%rax        # 0x18007d7c0
   1800059f3:	48 ff e0             	rex.W jmp *%rax
   1800059f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1800059fd:	00 00 00 
   180005a00:	48 83 ec 28          	sub    $0x28,%rsp
   180005a04:	ff 05 a2 7d 07 00    	incl   0x77da2(%rip)        # 0x18007d7ac
   180005a0a:	ff 15 b8 7d 07 00    	call   *0x77db8(%rip)        # 0x18007d7c8
   180005a10:	48 85 c0             	test   %rax,%rax
   180005a13:	74 05                	je     0x180005a1a
   180005a15:	48 83 c4 28          	add    $0x28,%rsp
   180005a19:	c3                   	ret    
   180005a1a:	31 c0                	xor    %eax,%eax
   180005a1c:	83 3d 6d 7b 07 00 00 	cmpl   $0x0,0x77b6d(%rip)        # 0x18007d590
   180005a23:	0f 95 c0             	setne  %al
   180005a26:	48 83 c4 28          	add    $0x28,%rsp
   180005a2a:	c3                   	ret    
   180005a2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180005a30:	ff 05 7a 7d 07 00    	incl   0x77d7a(%rip)        # 0x18007d7b0
   180005a36:	8d 41 7f             	lea    0x7f(%rcx),%eax
   180005a39:	3c 1f                	cmp    $0x1f,%al
   180005a3b:	0f 92 c0             	setb   %al
   180005a3e:	80 c1 20             	add    $0x20,%cl
   180005a41:	80 f9 1d             	cmp    $0x1d,%cl
   180005a44:	0f 92 c1             	setb   %cl
   180005a47:	08 c1                	or     %al,%cl
   180005a49:	0f b6 c1             	movzbl %cl,%eax
   180005a4c:	c3                   	ret    
   180005a4d:	0f 1f 00             	nopl   (%rax)
   180005a50:	ff 05 5a 7d 07 00    	incl   0x77d5a(%rip)        # 0x18007d7b0
   180005a56:	85 c9                	test   %ecx,%ecx
   180005a58:	74 0d                	je     0x180005a67
   180005a5a:	81 f9 a4 03 00 00    	cmp    $0x3a4,%ecx
   180005a60:	74 05                	je     0x180005a67
   180005a62:	83 f9 03             	cmp    $0x3,%ecx
   180005a65:	75 17                	jne    0x180005a7e
   180005a67:	8d 42 7f             	lea    0x7f(%rdx),%eax
   180005a6a:	3c 1f                	cmp    $0x1f,%al
   180005a6c:	0f 92 c0             	setb   %al
   180005a6f:	80 c2 20             	add    $0x20,%dl
   180005a72:	80 fa 1d             	cmp    $0x1d,%dl
   180005a75:	0f 92 c1             	setb   %cl
   180005a78:	08 c1                	or     %al,%cl
   180005a7a:	0f b6 c1             	movzbl %cl,%eax
   180005a7d:	c3                   	ret    
   180005a7e:	48 8b 05 53 7d 07 00 	mov    0x77d53(%rip),%rax        # 0x18007d7d8
   180005a85:	48 ff e0             	rex.W jmp *%rax
   180005a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   180005a8f:	00 
   180005a90:	ff 05 1e 7d 07 00    	incl   0x77d1e(%rip)        # 0x18007d7b4
   180005a96:	83 3d f3 7a 07 00 00 	cmpl   $0x0,0x77af3(%rip)        # 0x18007d590
   180005a9d:	74 06                	je     0x180005aa5
   180005a9f:	b8 11 04 11 04       	mov    $0x4110411,%eax
   180005aa4:	c3                   	ret    
   180005aa5:	48 ff 25 34 7d 07 00 	rex.W jmp *0x77d34(%rip)        # 0x18007d7e0
   180005aac:	0f 1f 40 00          	nopl   0x0(%rax)
   180005ab0:	8b 05 fa 7a 07 00    	mov    0x77afa(%rip),%eax        # 0x18007d5b0
   180005ab6:	83 f8 3f             	cmp    $0x3f,%eax
   180005ab9:	77 25                	ja     0x180005ae0
   180005abb:	0f b7 c2             	movzwl %dx,%eax
   180005abe:	0d 00 00 01 00       	or     $0x10000,%eax
   180005ac3:	44 8b 0d e6 7a 07 00 	mov    0x77ae6(%rip),%r9d        # 0x18007d5b0
   180005aca:	45 8d 51 01          	lea    0x1(%r9),%r10d
   180005ace:	44 89 15 db 7a 07 00 	mov    %r10d,0x77adb(%rip)        # 0x18007d5b0
   180005ad5:	4c 8d 15 e4 7a 07 00 	lea    0x77ae4(%rip),%r10        # 0x18007d5c0
   180005adc:	43 89 04 8a          	mov    %eax,(%r10,%r9,4)
   180005ae0:	f6 c2 02             	test   $0x2,%dl
   180005ae3:	75 18                	jne    0x180005afd
   180005ae5:	f6 c2 01             	test   $0x1,%dl
   180005ae8:	74 1c                	je     0x180005b06
   180005aea:	83 3d 07 7d 07 00 00 	cmpl   $0x0,0x77d07(%rip)        # 0x18007d7f8
   180005af1:	74 13                	je     0x180005b06
   180005af3:	b8 01 00 00 00       	mov    $0x1,%eax
   180005af8:	45 31 c9             	xor    %r9d,%r9d
   180005afb:	eb 1e                	jmp    0x180005b1b
   180005afd:	83 3d f4 7c 07 00 00 	cmpl   $0x0,0x77cf4(%rip)        # 0x18007d7f8
   180005b04:	74 0a                	je     0x180005b10
   180005b06:	48 8b 05 db 7c 07 00 	mov    0x77cdb(%rip),%rax        # 0x18007d7e8
   180005b0d:	48 ff e0             	rex.W jmp *%rax
   180005b10:	e9 de ff ff ff       	jmp    0x180005af3
   180005b15:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180005b1b:	44 89 0d d6 7c 07 00 	mov    %r9d,0x77cd6(%rip)        # 0x18007d7f8
   180005b22:	c7 05 d0 7c 07 00 00 	movl   $0x0,0x77cd0(%rip)        # 0x18007d7fc
   180005b29:	00 00 00 
   180005b2c:	89 05 1e 7c 07 00    	mov    %eax,0x77c1e(%rip)        # 0x18007d750
   180005b32:	48 8b 05 af 7c 07 00 	mov    0x77caf(%rip),%rax        # 0x18007d7e8
   180005b39:	48 ff e0             	rex.W jmp *%rax
   180005b3c:	0f 1f 40 00          	nopl   0x0(%rax)
   180005b40:	41 57                	push   %r15
   180005b42:	41 56                	push   %r14
   180005b44:	56                   	push   %rsi
   180005b45:	57                   	push   %rdi
   180005b46:	55                   	push   %rbp
   180005b47:	53                   	push   %rbx
   180005b48:	8b 05 62 7a 07 00    	mov    0x77a62(%rip),%eax        # 0x18007d5b0
   180005b4e:	83 f8 3f             	cmp    $0x3f,%eax
   180005b51:	77 27                	ja     0x180005b7a
   180005b53:	89 d0                	mov    %edx,%eax
   180005b55:	83 e0 01             	and    $0x1,%eax
   180005b58:	0d 00 00 02 00       	or     $0x20000,%eax
   180005b5d:	44 8b 05 4c 7a 07 00 	mov    0x77a4c(%rip),%r8d        # 0x18007d5b0
   180005b64:	45 8d 48 01          	lea    0x1(%r8),%r9d
   180005b68:	44 89 0d 41 7a 07 00 	mov    %r9d,0x77a41(%rip)        # 0x18007d5b0
   180005b6f:	4c 8d 0d 4a 7a 07 00 	lea    0x77a4a(%rip),%r9        # 0x18007d5c0
   180005b76:	43 89 04 81          	mov    %eax,(%r9,%r8,4)
   180005b7a:	85 d2                	test   %edx,%edx
   180005b7c:	74 29                	je     0x180005ba7
   180005b7e:	c7 05 78 7c 07 00 01 	movl   $0x1,0x77c78(%rip)        # 0x18007d800
   180005b85:	00 00 00 
   180005b88:	48 8d 05 75 7c 07 00 	lea    0x77c75(%rip),%rax        # 0x18007d804
   180005b8f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   180005b95:	48 8b 05 54 7c 07 00 	mov    0x77c54(%rip),%rax        # 0x18007d7f0
   180005b9c:	5b                   	pop    %rbx
   180005b9d:	5d                   	pop    %rbp
   180005b9e:	5f                   	pop    %rdi
   180005b9f:	5e                   	pop    %rsi
   180005ba0:	41 5e                	pop    %r14
   180005ba2:	41 5f                	pop    %r15
   180005ba4:	48 ff e0             	rex.W jmp *%rax
   180005ba7:	48 8d 05 52 7c 07 00 	lea    0x77c52(%rip),%rax        # 0x18007d800
   180005bae:	83 3d 4b 7c 07 00 00 	cmpl   $0x0,0x77c4b(%rip)        # 0x18007d800
   180005bb5:	74 d8                	je     0x180005b8f
   180005bb7:	44 8b 05 46 7c 07 00 	mov    0x77c46(%rip),%r8d        # 0x18007d804
   180005bbe:	41 83 f8 03          	cmp    $0x3,%r8d
   180005bc2:	7c cb                	jl     0x180005b8f
   180005bc4:	45 31 c0             	xor    %r8d,%r8d
   180005bc7:	83 3d 06 7b 07 00 00 	cmpl   $0x0,0x77b06(%rip)        # 0x18007d6d4
   180005bce:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   180005bd4:	74 55                	je     0x180005c2b
   180005bd6:	83 3d 0f 7b 07 00 00 	cmpl   $0x0,0x77b0f(%rip)        # 0x18007d6ec
   180005bdd:	74 2e                	je     0x180005c0d
   180005bdf:	83 3d 1e 7b 07 00 00 	cmpl   $0x0,0x77b1e(%rip)        # 0x18007d704
   180005be6:	74 2d                	je     0x180005c15
   180005be8:	83 3d 2d 7b 07 00 00 	cmpl   $0x0,0x77b2d(%rip)        # 0x18007d71c
   180005bef:	74 2c                	je     0x180005c1d
   180005bf1:	83 3d 3c 7b 07 00 00 	cmpl   $0x0,0x77b3c(%rip)        # 0x18007d734
   180005bf8:	74 2b                	je     0x180005c25
   180005bfa:	45 31 c9             	xor    %r9d,%r9d
   180005bfd:	44 3b 0d 48 7b 07 00 	cmp    0x77b48(%rip),%r9d        # 0x18007d74c
   180005c04:	45 19 c9             	sbb    %r9d,%r9d
   180005c07:	41 83 c9 05          	or     $0x5,%r9d
   180005c0b:	eb 1e                	jmp    0x180005c2b
   180005c0d:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   180005c13:	eb 16                	jmp    0x180005c2b
   180005c15:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   180005c1b:	eb 0e                	jmp    0x180005c2b
   180005c1d:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   180005c23:	eb 06                	jmp    0x180005c2b
   180005c25:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   180005c2b:	45 85 c9             	test   %r9d,%r9d
   180005c2e:	45 0f 4e c8          	cmovle %r8d,%r9d
   180005c32:	44 0f b6 15 ce 7b 07 	movzbl 0x77bce(%rip),%r10d        # 0x18007d808
   180005c39:	00 
   180005c3a:	45 8d 5a bf          	lea    -0x41(%r10),%r11d
   180005c3e:	41 8d 72 9f          	lea    -0x61(%r10),%esi
   180005c42:	40 80 fe 1a          	cmp    $0x1a,%sil
   180005c46:	bf 00 00 00 00       	mov    $0x0,%edi
   180005c4b:	81 d7 1f 82 00 00    	adc    $0x821f,%edi
   180005c51:	41 80 fb 1a          	cmp    $0x1a,%r11b
   180005c55:	41 bb 1f 82 00 00    	mov    $0x821f,%r11d
   180005c5b:	41 0f 42 fb          	cmovb  %r11d,%edi
   180005c5f:	44 01 d7             	add    %r10d,%edi
   180005c62:	66 c1 c7 08          	rol    $0x8,%di
   180005c66:	0f b6 35 9c 7b 07 00 	movzbl 0x77b9c(%rip),%esi        # 0x18007d809
   180005c6d:	8d 5e 9f             	lea    -0x61(%rsi),%ebx
   180005c70:	80 fb 1a             	cmp    $0x1a,%bl
   180005c73:	bd 00 00 00 00       	mov    $0x0,%ebp
   180005c78:	81 d5 1f 82 00 00    	adc    $0x821f,%ebp
   180005c7e:	8d 5e bf             	lea    -0x41(%rsi),%ebx
   180005c81:	80 fb 1a             	cmp    $0x1a,%bl
   180005c84:	41 0f 42 eb          	cmovb  %r11d,%ebp
   180005c88:	01 f5                	add    %esi,%ebp
   180005c8a:	66 c1 c5 08          	rol    $0x8,%bp
   180005c8e:	0f b6 1d 75 7b 07 00 	movzbl 0x77b75(%rip),%ebx        # 0x18007d80a
   180005c95:	44 8d 73 bf          	lea    -0x41(%rbx),%r14d
   180005c99:	44 8d 7b 9f          	lea    -0x61(%rbx),%r15d
   180005c9d:	41 80 ff 1a          	cmp    $0x1a,%r15b
   180005ca1:	41 bf 00 00 00 00    	mov    $0x0,%r15d
   180005ca7:	41 81 d7 1f 82 00 00 	adc    $0x821f,%r15d
   180005cae:	41 80 fe 1a          	cmp    $0x1a,%r14b
   180005cb2:	4f 8d 0c 49          	lea    (%r9,%r9,2),%r9
   180005cb6:	45 89 c9             	mov    %r9d,%r9d
   180005cb9:	45 0f 42 fb          	cmovb  %r11d,%r15d
   180005cbd:	4c 8d 1d fc 79 07 00 	lea    0x779fc(%rip),%r11        # 0x18007d6c0
   180005cc4:	66 43 89 3c cb       	mov    %di,(%r11,%r9,8)
   180005cc9:	41 01 df             	add    %ebx,%r15d
   180005ccc:	66 41 c1 c7 08       	rol    $0x8,%r15w
   180005cd1:	66 43 89 6c cb 02    	mov    %bp,0x2(%r11,%r9,8)
   180005cd7:	66 47 89 7c cb 04    	mov    %r15w,0x4(%r11,%r9,8)
   180005cdd:	83 3d 20 7b 07 00 00 	cmpl   $0x0,0x77b20(%rip)        # 0x18007d804
   180005ce4:	45 0f 4e d0          	cmovle %r8d,%r10d
   180005ce8:	47 88 54 cb 06       	mov    %r10b,0x6(%r11,%r9,8)
   180005ced:	44 8b 15 10 7b 07 00 	mov    0x77b10(%rip),%r10d        # 0x18007d804
   180005cf4:	41 83 fa 02          	cmp    $0x2,%r10d
   180005cf8:	41 0f 4c f0          	cmovl  %r8d,%esi
   180005cfc:	43 88 74 cb 07       	mov    %sil,0x7(%r11,%r9,8)
   180005d01:	44 8b 15 fc 7a 07 00 	mov    0x77afc(%rip),%r10d        # 0x18007d804
   180005d08:	41 83 fa 03          	cmp    $0x3,%r10d
   180005d0c:	41 0f 4c d8          	cmovl  %r8d,%ebx
   180005d10:	43 88 5c cb 08       	mov    %bl,0x8(%r11,%r9,8)
   180005d15:	44 8b 15 e8 7a 07 00 	mov    0x77ae8(%rip),%r10d        # 0x18007d804
   180005d1c:	41 83 fa 04          	cmp    $0x4,%r10d
   180005d20:	44 0f b6 15 e3 7a 07 	movzbl 0x77ae3(%rip),%r10d        # 0x18007d80b
   180005d27:	00 
   180005d28:	45 0f 4c d0          	cmovl  %r8d,%r10d
   180005d2c:	47 88 54 cb 09       	mov    %r10b,0x9(%r11,%r9,8)
   180005d31:	44 8b 15 cc 7a 07 00 	mov    0x77acc(%rip),%r10d        # 0x18007d804
   180005d38:	41 83 fa 05          	cmp    $0x5,%r10d
   180005d3c:	44 0f b6 15 c8 7a 07 	movzbl 0x77ac8(%rip),%r10d        # 0x18007d80c
   180005d43:	00 
   180005d44:	45 0f 4c d0          	cmovl  %r8d,%r10d
   180005d48:	47 88 54 cb 0a       	mov    %r10b,0xa(%r11,%r9,8)
   180005d4d:	44 8b 15 b0 7a 07 00 	mov    0x77ab0(%rip),%r10d        # 0x18007d804
   180005d54:	41 83 fa 06          	cmp    $0x6,%r10d
   180005d58:	44 0f b6 15 ad 7a 07 	movzbl 0x77aad(%rip),%r10d        # 0x18007d80d
   180005d5f:	00 
   180005d60:	45 0f 4c d0          	cmovl  %r8d,%r10d
   180005d64:	47 88 54 cb 0b       	mov    %r10b,0xb(%r11,%r9,8)
   180005d69:	44 8b 15 94 7a 07 00 	mov    0x77a94(%rip),%r10d        # 0x18007d804
   180005d70:	41 83 fa 07          	cmp    $0x7,%r10d
   180005d74:	44 0f b6 15 92 7a 07 	movzbl 0x77a92(%rip),%r10d        # 0x18007d80e
   180005d7b:	00 
   180005d7c:	45 0f 4c d0          	cmovl  %r8d,%r10d
   180005d80:	47 88 54 cb 0c       	mov    %r10b,0xc(%r11,%r9,8)
   180005d85:	44 8b 15 78 7a 07 00 	mov    0x77a78(%rip),%r10d        # 0x18007d804
   180005d8c:	41 83 fa 08          	cmp    $0x8,%r10d
   180005d90:	44 0f b6 15 77 7a 07 	movzbl 0x77a77(%rip),%r10d        # 0x18007d80f
   180005d97:	00 
   180005d98:	45 0f 4c d0          	cmovl  %r8d,%r10d
   180005d9c:	47 88 54 cb 0d       	mov    %r10b,0xd(%r11,%r9,8)
   180005da1:	43 c6 44 cb 0e 00    	movb   $0x0,0xe(%r11,%r9,8)
   180005da7:	44 8b 05 56 7a 07 00 	mov    0x77a56(%rip),%r8d        # 0x18007d804
   180005dae:	47 89 44 cb 10       	mov    %r8d,0x10(%r11,%r9,8)
   180005db3:	43 c7 44 cb 14 01 00 	movl   $0x1,0x14(%r11,%r9,8)
   180005dba:	00 00 
   180005dbc:	e9 ce fd ff ff       	jmp    0x180005b8f
   180005dc1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005dc8:	0f 1f 84 00 00 00 00 
   180005dcf:	00 
   180005dd0:	41 57                	push   %r15
   180005dd2:	41 56                	push   %r14
   180005dd4:	41 55                	push   %r13
   180005dd6:	41 54                	push   %r12
   180005dd8:	56                   	push   %rsi
   180005dd9:	57                   	push   %rdi
   180005dda:	55                   	push   %rbp
   180005ddb:	53                   	push   %rbx
   180005ddc:	48 83 ec 28          	sub    $0x28,%rsp
   180005de0:	83 3d a1 24 00 00 00 	cmpl   $0x0,0x24a1(%rip)        # 0x180008288
   180005de7:	0f 84 3a 02 00 00    	je     0x180006027
   180005ded:	31 db                	xor    %ebx,%ebx
   180005def:	4c 8d 3d 1a 5d 01 00 	lea    0x15d1a(%rip),%r15        # 0x18001bb10
   180005df6:	48 8d 74 24 24       	lea    0x24(%rsp),%rsi
   180005dfb:	4c 8b 25 ee 1b 00 00 	mov    0x1bee(%rip),%r12        # 0x1800079f0
   180005e02:	eb 2c                	jmp    0x180005e30
   180005e04:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005e0b:	00 00 00 00 00 
   180005e10:	44 8b 44 24 24       	mov    0x24(%rsp),%r8d
   180005e15:	48 89 f9             	mov    %rdi,%rcx
   180005e18:	49 89 f1             	mov    %rsi,%r9
   180005e1b:	41 ff d4             	call   *%r12
   180005e1e:	48 ff c3             	inc    %rbx
   180005e21:	8b 05 61 24 00 00    	mov    0x2461(%rip),%eax        # 0x180008288
   180005e27:	48 39 c3             	cmp    %rax,%rbx
   180005e2a:	0f 83 f7 01 00 00    	jae    0x180006027
   180005e30:	45 31 f6             	xor    %r14d,%r14d
   180005e33:	83 3d 06 7a 07 00 00 	cmpl   $0x0,0x77a06(%rip)        # 0x18007d840
   180005e3a:	74 18                	je     0x180005e54
   180005e3c:	8b 05 02 7a 07 00    	mov    0x77a02(%rip),%eax        # 0x18007d844
   180005e42:	48 39 c3             	cmp    %rax,%rbx
   180005e45:	72 0d                	jb     0x180005e54
   180005e47:	8b 05 ff 79 07 00    	mov    0x779ff(%rip),%eax        # 0x18007d84c
   180005e4d:	48 39 c3             	cmp    %rax,%rbx
   180005e50:	41 0f 92 c6          	setb   %r14b
   180005e54:	4c 8b 2d c5 21 00 00 	mov    0x21c5(%rip),%r13        # 0x180008020
   180005e5b:	48 8d 05 2e 24 00 00 	lea    0x242e(%rip),%rax        # 0x180008290
   180005e62:	8b 2c 98             	mov    (%rax,%rbx,4),%ebp
   180005e65:	4c 89 ef             	mov    %r13,%rdi
   180005e68:	48 01 ef             	add    %rbp,%rdi
   180005e6b:	41 8b 14 9f          	mov    (%r15,%rbx,4),%edx
   180005e6f:	48 89 f9             	mov    %rdi,%rcx
   180005e72:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   180005e78:	49 89 f1             	mov    %rsi,%r9
   180005e7b:	41 ff d4             	call   *%r12
   180005e7e:	41 8b 14 9f          	mov    (%r15,%rbx,4),%edx
   180005e82:	48 85 d2             	test   %rdx,%rdx
   180005e85:	74 89                	je     0x180005e10
   180005e87:	45 84 f6             	test   %r14b,%r14b
   180005e8a:	48 8d 05 ff 94 02 00 	lea    0x294ff(%rip),%rax        # 0x18002f390
   180005e91:	48 8d 0d f8 05 05 00 	lea    0x505f8(%rip),%rcx        # 0x180056490
   180005e98:	48 0f 45 c1          	cmovne %rcx,%rax
   180005e9c:	4c 8b 04 d8          	mov    (%rax,%rbx,8),%r8
   180005ea0:	83 fa 08             	cmp    $0x8,%edx
   180005ea3:	72 13                	jb     0x180005eb8
   180005ea5:	4c 89 e8             	mov    %r13,%rax
   180005ea8:	48 01 e8             	add    %rbp,%rax
   180005eab:	4c 29 c0             	sub    %r8,%rax
   180005eae:	48 83 f8 20          	cmp    $0x20,%rax
   180005eb2:	0f 83 bc 00 00 00    	jae    0x180005f74
   180005eb8:	48 89 f8             	mov    %rdi,%rax
   180005ebb:	4c 89 c1             	mov    %r8,%rcx
   180005ebe:	49 89 d1             	mov    %rdx,%r9
   180005ec1:	4d 89 c8             	mov    %r9,%r8
   180005ec4:	49 83 e0 07          	and    $0x7,%r8
   180005ec8:	74 26                	je     0x180005ef0
   180005eca:	45 31 d2             	xor    %r10d,%r10d
   180005ecd:	0f 1f 00             	nopl   (%rax)
   180005ed0:	46 0f b6 1c 11       	movzbl (%rcx,%r10,1),%r11d
   180005ed5:	46 88 1c 10          	mov    %r11b,(%rax,%r10,1)
   180005ed9:	49 ff c2             	inc    %r10
   180005edc:	4d 39 d0             	cmp    %r10,%r8
   180005edf:	75 ef                	jne    0x180005ed0
   180005ee1:	4c 01 d0             	add    %r10,%rax
   180005ee4:	4c 01 d1             	add    %r10,%rcx
   180005ee7:	4d 89 c8             	mov    %r9,%r8
   180005eea:	4d 29 d0             	sub    %r10,%r8
   180005eed:	eb 04                	jmp    0x180005ef3
   180005eef:	90                   	nop
   180005ef0:	4d 89 c8             	mov    %r9,%r8
   180005ef3:	49 ff c9             	dec    %r9
   180005ef6:	49 83 f9 07          	cmp    $0x7,%r9
   180005efa:	0f 82 10 ff ff ff    	jb     0x180005e10
   180005f00:	45 31 c9             	xor    %r9d,%r9d
   180005f03:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005f0a:	84 00 00 00 00 00 
   180005f10:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
   180005f15:	46 88 14 08          	mov    %r10b,(%rax,%r9,1)
   180005f19:	46 0f b6 54 09 01    	movzbl 0x1(%rcx,%r9,1),%r10d
   180005f1f:	46 88 54 08 01       	mov    %r10b,0x1(%rax,%r9,1)
   180005f24:	46 0f b6 54 09 02    	movzbl 0x2(%rcx,%r9,1),%r10d
   180005f2a:	46 88 54 08 02       	mov    %r10b,0x2(%rax,%r9,1)
   180005f2f:	46 0f b6 54 09 03    	movzbl 0x3(%rcx,%r9,1),%r10d
   180005f35:	46 88 54 08 03       	mov    %r10b,0x3(%rax,%r9,1)
   180005f3a:	46 0f b6 54 09 04    	movzbl 0x4(%rcx,%r9,1),%r10d
   180005f40:	46 88 54 08 04       	mov    %r10b,0x4(%rax,%r9,1)
   180005f45:	46 0f b6 54 09 05    	movzbl 0x5(%rcx,%r9,1),%r10d
   180005f4b:	46 88 54 08 05       	mov    %r10b,0x5(%rax,%r9,1)
   180005f50:	46 0f b6 54 09 06    	movzbl 0x6(%rcx,%r9,1),%r10d
   180005f56:	46 88 54 08 06       	mov    %r10b,0x6(%rax,%r9,1)
   180005f5b:	46 0f b6 54 09 07    	movzbl 0x7(%rcx,%r9,1),%r10d
   180005f61:	46 88 54 08 07       	mov    %r10b,0x7(%rax,%r9,1)
   180005f66:	49 83 c1 08          	add    $0x8,%r9
   180005f6a:	4d 39 c8             	cmp    %r9,%r8
   180005f6d:	75 a1                	jne    0x180005f10
   180005f6f:	e9 9c fe ff ff       	jmp    0x180005e10
   180005f74:	83 fa 20             	cmp    $0x20,%edx
   180005f77:	73 05                	jae    0x180005f7e
   180005f79:	45 31 d2             	xor    %r10d,%r10d
   180005f7c:	eb 4d                	jmp    0x180005fcb
   180005f7e:	41 89 d2             	mov    %edx,%r10d
   180005f81:	41 83 e2 e0          	and    $0xffffffe0,%r10d
   180005f85:	48 8d 04 2d 10 00 00 	lea    0x10(,%rbp,1),%rax
   180005f8c:	00 
   180005f8d:	4c 01 e8             	add    %r13,%rax
   180005f90:	31 c9                	xor    %ecx,%ecx
   180005f92:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005f99:	1f 84 00 00 00 00 00 
   180005fa0:	41 0f 10 04 08       	movups (%r8,%rcx,1),%xmm0
   180005fa5:	41 0f 10 4c 08 10    	movups 0x10(%r8,%rcx,1),%xmm1
   180005fab:	0f 11 44 08 f0       	movups %xmm0,-0x10(%rax,%rcx,1)
   180005fb0:	0f 11 0c 08          	movups %xmm1,(%rax,%rcx,1)
   180005fb4:	48 83 c1 20          	add    $0x20,%rcx
   180005fb8:	49 39 ca             	cmp    %rcx,%r10
   180005fbb:	75 e3                	jne    0x180005fa0
   180005fbd:	49 39 d2             	cmp    %rdx,%r10
   180005fc0:	0f 84 4a fe ff ff    	je     0x180005e10
   180005fc6:	f6 c2 18             	test   $0x18,%dl
   180005fc9:	74 44                	je     0x18000600f
   180005fcb:	41 89 d3             	mov    %edx,%r11d
   180005fce:	41 83 e3 f8          	and    $0xfffffff8,%r11d
   180005fd2:	4a 8d 04 1f          	lea    (%rdi,%r11,1),%rax
   180005fd6:	4b 8d 0c 18          	lea    (%r8,%r11,1),%rcx
   180005fda:	41 89 d1             	mov    %edx,%r9d
   180005fdd:	41 83 e1 07          	and    $0x7,%r9d
   180005fe1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005fe8:	0f 1f 84 00 00 00 00 
   180005fef:	00 
   180005ff0:	4f 8b 34 10          	mov    (%r8,%r10,1),%r14
   180005ff4:	4e 89 34 17          	mov    %r14,(%rdi,%r10,1)
   180005ff8:	49 83 c2 08          	add    $0x8,%r10
   180005ffc:	4d 39 d3             	cmp    %r10,%r11
   180005fff:	75 ef                	jne    0x180005ff0
   180006001:	49 39 d3             	cmp    %rdx,%r11
   180006004:	0f 84 06 fe ff ff    	je     0x180005e10
   18000600a:	e9 b2 fe ff ff       	jmp    0x180005ec1
   18000600f:	41 89 d1             	mov    %edx,%r9d
   180006012:	41 83 e1 1f          	and    $0x1f,%r9d
   180006016:	4d 01 d0             	add    %r10,%r8
   180006019:	49 01 fa             	add    %rdi,%r10
   18000601c:	4c 89 d0             	mov    %r10,%rax
   18000601f:	4c 89 c1             	mov    %r8,%rcx
   180006022:	e9 9a fe ff ff       	jmp    0x180005ec1
   180006027:	48 83 c4 28          	add    $0x28,%rsp
   18000602b:	5b                   	pop    %rbx
   18000602c:	5d                   	pop    %rbp
   18000602d:	5f                   	pop    %rdi
   18000602e:	5e                   	pop    %rsi
   18000602f:	41 5c                	pop    %r12
   180006031:	41 5d                	pop    %r13
   180006033:	41 5e                	pop    %r14
   180006035:	41 5f                	pop    %r15
   180006037:	c3                   	ret    
   180006038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000603f:	00 
   180006040:	56                   	push   %rsi
   180006041:	57                   	push   %rdi
   180006042:	48 83 ec 48          	sub    $0x48,%rsp
   180006046:	48 89 ca             	mov    %rcx,%rdx
   180006049:	48 8b 0d 30 22 00 00 	mov    0x2230(%rip),%rcx        # 0x180008280
   180006050:	48 85 c9             	test   %rcx,%rcx
   180006053:	74 56                	je     0x1800060ab
   180006055:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   18000605b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   180006060:	41 ff c0             	inc    %r8d
   180006063:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180006068:	75 f6                	jne    0x180006060
   18000606a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006071:	00 00 
   180006073:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   180006078:	ff 15 82 19 00 00    	call   *0x1982(%rip)        # 0x180007a00
   18000607e:	48 8b 0d fb 21 00 00 	mov    0x21fb(%rip),%rcx        # 0x180008280
   180006085:	48 85 c9             	test   %rcx,%rcx
   180006088:	74 21                	je     0x1800060ab
   18000608a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006091:	00 00 
   180006093:	48 8d 15 81 13 00 00 	lea    0x1381(%rip),%rdx        # 0x18000741b
   18000609a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000609f:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   1800060a5:	ff 15 55 19 00 00    	call   *0x1955(%rip)        # 0x180007a00
   1800060ab:	48 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdi
   1800060b2:	ff ff ff 
   1800060b5:	48 be 00 00 00 00 0f 	movabs $0xf00000000,%rsi
   1800060bc:	00 00 00 
   1800060bf:	8b 0d 7f 77 07 00    	mov    0x7777f(%rip),%ecx        # 0x18007d844
   1800060c5:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   1800060ca:	85 c9                	test   %ecx,%ecx
   1800060cc:	74 46                	je     0x180006114
   1800060ce:	48 8d 54 24 3e       	lea    0x3e(%rsp),%rdx
   1800060d3:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
   1800060d9:	48 89 f0             	mov    %rsi,%rax
   1800060dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1800060e0:	41 89 c9             	mov    %ecx,%r9d
   1800060e3:	4d 0f af c8          	imul   %r8,%r9
   1800060e7:	49 c1 e9 23          	shr    $0x23,%r9
   1800060eb:	47 8d 14 09          	lea    (%r9,%r9,1),%r10d
   1800060ef:	47 8d 14 92          	lea    (%r10,%r10,4),%r10d
   1800060f3:	41 89 cb             	mov    %ecx,%r11d
   1800060f6:	45 29 d3             	sub    %r10d,%r11d
   1800060f9:	41 80 cb 30          	or     $0x30,%r11b
   1800060fd:	44 88 1a             	mov    %r11b,(%rdx)
   180006100:	48 01 f8             	add    %rdi,%rax
   180006103:	48 ff ca             	dec    %rdx
   180006106:	83 f9 09             	cmp    $0x9,%ecx
   180006109:	44 89 c9             	mov    %r9d,%ecx
   18000610c:	77 d2                	ja     0x1800060e0
   18000610e:	48 c1 f8 20          	sar    $0x20,%rax
   180006112:	eb 0a                	jmp    0x18000611e
   180006114:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   180006119:	b8 0e 00 00 00       	mov    $0xe,%eax
   18000611e:	48 8b 0d 5b 21 00 00 	mov    0x215b(%rip),%rcx        # 0x180008280
   180006125:	48 85 c9             	test   %rcx,%rcx
   180006128:	74 61                	je     0x18000618b
   18000612a:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   18000612e:	48 83 c2 30          	add    $0x30,%rdx
   180006132:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180006138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000613f:	00 
   180006140:	41 ff c0             	inc    %r8d
   180006143:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180006148:	75 f6                	jne    0x180006140
   18000614a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006151:	00 00 
   180006153:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   180006158:	ff 15 a2 18 00 00    	call   *0x18a2(%rip)        # 0x180007a00
   18000615e:	48 8b 0d 1b 21 00 00 	mov    0x211b(%rip),%rcx        # 0x180008280
   180006165:	48 85 c9             	test   %rcx,%rcx
   180006168:	74 21                	je     0x18000618b
   18000616a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006171:	00 00 
   180006173:	48 8d 15 61 12 00 00 	lea    0x1261(%rip),%rdx        # 0x1800073db
   18000617a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000617f:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180006185:	ff 15 75 18 00 00    	call   *0x1875(%rip)        # 0x180007a00
   18000618b:	8b 0d b7 76 07 00    	mov    0x776b7(%rip),%ecx        # 0x18007d848
   180006191:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180006196:	85 c9                	test   %ecx,%ecx
   180006198:	74 4a                	je     0x1800061e4
   18000619a:	48 8d 54 24 3e       	lea    0x3e(%rsp),%rdx
   18000619f:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
   1800061a5:	48 89 f0             	mov    %rsi,%rax
   1800061a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800061af:	00 
   1800061b0:	41 89 c9             	mov    %ecx,%r9d
   1800061b3:	4d 0f af c8          	imul   %r8,%r9
   1800061b7:	49 c1 e9 23          	shr    $0x23,%r9
   1800061bb:	47 8d 14 09          	lea    (%r9,%r9,1),%r10d
   1800061bf:	47 8d 14 92          	lea    (%r10,%r10,4),%r10d
   1800061c3:	41 89 cb             	mov    %ecx,%r11d
   1800061c6:	45 29 d3             	sub    %r10d,%r11d
   1800061c9:	41 80 cb 30          	or     $0x30,%r11b
   1800061cd:	44 88 1a             	mov    %r11b,(%rdx)
   1800061d0:	48 01 f8             	add    %rdi,%rax
   1800061d3:	48 ff ca             	dec    %rdx
   1800061d6:	83 f9 09             	cmp    $0x9,%ecx
   1800061d9:	44 89 c9             	mov    %r9d,%ecx
   1800061dc:	77 d2                	ja     0x1800061b0
   1800061de:	48 c1 f8 20          	sar    $0x20,%rax
   1800061e2:	eb 0a                	jmp    0x1800061ee
   1800061e4:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   1800061e9:	b8 0e 00 00 00       	mov    $0xe,%eax
   1800061ee:	48 8b 0d 8b 20 00 00 	mov    0x208b(%rip),%rcx        # 0x180008280
   1800061f5:	48 85 c9             	test   %rcx,%rcx
   1800061f8:	74 61                	je     0x18000625b
   1800061fa:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
   1800061fe:	48 83 c2 30          	add    $0x30,%rdx
   180006202:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   180006208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   18000620f:	00 
   180006210:	41 ff c0             	inc    %r8d
   180006213:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   180006218:	75 f6                	jne    0x180006210
   18000621a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006221:	00 00 
   180006223:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   180006228:	ff 15 d2 17 00 00    	call   *0x17d2(%rip)        # 0x180007a00
   18000622e:	48 8b 0d 4b 20 00 00 	mov    0x204b(%rip),%rcx        # 0x180008280
   180006235:	48 85 c9             	test   %rcx,%rcx
   180006238:	74 21                	je     0x18000625b
   18000623a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006241:	00 00 
   180006243:	48 8d 15 87 11 00 00 	lea    0x1187(%rip),%rdx        # 0x1800073d1
   18000624a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000624f:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
   180006255:	ff 15 a5 17 00 00    	call   *0x17a5(%rip)        # 0x180007a00
   18000625b:	8b 05 eb 75 07 00    	mov    0x775eb(%rip),%eax        # 0x18007d84c
   180006261:	c6 44 24 3f 00       	movb   $0x0,0x3f(%rsp)
   180006266:	85 c0                	test   %eax,%eax
   180006268:	74 4a                	je     0x1800062b4
   18000626a:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   18000626f:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
   180006274:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
   18000627b:	00 00 00 00 00 
   180006280:	41 89 c0             	mov    %eax,%r8d
   180006283:	4c 0f af c2          	imul   %rdx,%r8
   180006287:	49 c1 e8 23          	shr    $0x23,%r8
   18000628b:	47 8d 0c 00          	lea    (%r8,%r8,1),%r9d
   18000628f:	47 8d 0c 89          	lea    (%r9,%r9,4),%r9d
   180006293:	41 89 c2             	mov    %eax,%r10d
   180006296:	45 29 ca             	sub    %r9d,%r10d
   180006299:	41 80 ca 30          	or     $0x30,%r10b
   18000629d:	44 88 11             	mov    %r10b,(%rcx)
   1800062a0:	48 01 fe             	add    %rdi,%rsi
   1800062a3:	48 ff c9             	dec    %rcx
   1800062a6:	83 f8 09             	cmp    $0x9,%eax
   1800062a9:	44 89 c0             	mov    %r8d,%eax
   1800062ac:	77 d2                	ja     0x180006280
   1800062ae:	48 c1 fe 20          	sar    $0x20,%rsi
   1800062b2:	eb 0a                	jmp    0x1800062be
   1800062b4:	c6 44 24 3e 30       	movb   $0x30,0x3e(%rsp)
   1800062b9:	be 0e 00 00 00       	mov    $0xe,%esi
   1800062be:	48 8b 0d bb 1f 00 00 	mov    0x1fbb(%rip),%rcx        # 0x180008280
   1800062c5:	48 85 c9             	test   %rcx,%rcx
   1800062c8:	74 61                	je     0x18000632b
   1800062ca:	48 8d 14 34          	lea    (%rsp,%rsi,1),%rdx
   1800062ce:	48 83 c2 30          	add    $0x30,%rdx
   1800062d2:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1800062d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1800062df:	00 
   1800062e0:	41 ff c0             	inc    %r8d
   1800062e3:	42 80 3c 02 00       	cmpb   $0x0,(%rdx,%r8,1)
   1800062e8:	75 f6                	jne    0x1800062e0
   1800062ea:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   1800062f1:	00 00 
   1800062f3:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   1800062f8:	ff 15 02 17 00 00    	call   *0x1702(%rip)        # 0x180007a00
   1800062fe:	48 8b 0d 7b 1f 00 00 	mov    0x1f7b(%rip),%rcx        # 0x180008280
   180006305:	48 85 c9             	test   %rcx,%rcx
   180006308:	74 21                	je     0x18000632b
   18000630a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   180006311:	00 00 
   180006313:	48 8d 15 c2 14 00 00 	lea    0x14c2(%rip),%rdx        # 0x1800077dc
   18000631a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18000631f:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   180006325:	ff 15 d5 16 00 00    	call   *0x16d5(%rip)        # 0x180007a00
   18000632b:	48 83 c4 48          	add    $0x48,%rsp
   18000632f:	5f                   	pop    %rdi
   180006330:	5e                   	pop    %rsi
   180006331:	c3                   	ret    

Disassembly of section .wpname:

000000018007f000 <.wpname>:
   18007f000:	41 57                	push   %r15
   18007f002:	4c 8d 3d f7 0f f8 ff 	lea    -0x7f009(%rip),%r15        # 0x180000000
   18007f009:	53                   	push   %rbx
   18007f00a:	56                   	push   %rsi
   18007f00b:	57                   	push   %rdi
   18007f00c:	41 54                	push   %r12
   18007f00e:	41 55                	push   %r13
   18007f010:	41 56                	push   %r14
   18007f012:	48 83 ec 60          	sub    $0x60,%rsp
   18007f016:	49 8d 87 b0 15 00 00 	lea    0x15b0(%r15),%rax
   18007f01d:	ff d0                	call   *%rax
   18007f01f:	31 c9                	xor    %ecx,%ecx
   18007f021:	41 ff 97 a0 79 00 00 	call   *0x79a0(%r15)
   18007f028:	48 85 c0             	test   %rax,%rax
   18007f02b:	0f 84 59 04 00 00    	je     0x18007f48a
   18007f031:	48 89 c3             	mov    %rax,%rbx
   18007f034:	81 bb 07 b1 49 00 e8 	cmpl   $0xba4614e8,0x49b107(%rbx)
   18007f03b:	14 46 ba 
   18007f03e:	0f 85 46 04 00 00    	jne    0x18007f48a
   18007f044:	80 bb 0b b1 49 00 ff 	cmpb   $0xff,0x49b10b(%rbx)
   18007f04b:	0f 85 39 04 00 00    	jne    0x18007f48a
   18007f051:	81 bb 3b b1 49 00 e8 	cmpl   $0xba45b0e8,0x49b13b(%rbx)
   18007f058:	b0 45 ba 
   18007f05b:	0f 85 29 04 00 00    	jne    0x18007f48a
   18007f061:	80 bb 3f b1 49 00 ff 	cmpb   $0xff,0x49b13f(%rbx)
   18007f068:	0f 85 1c 04 00 00    	jne    0x18007f48a
   18007f06e:	81 bb c7 f8 03 00 e8 	cmpl   $0x45eb4e8,0x3f8c7(%rbx)
   18007f075:	b4 5e 04 
   18007f078:	0f 85 0c 04 00 00    	jne    0x18007f48a
   18007f07e:	80 bb cb f8 03 00 00 	cmpb   $0x0,0x3f8cb(%rbx)
   18007f085:	0f 85 ff 03 00 00    	jne    0x18007f48a
   18007f08b:	81 bb 57 25 08 00 e8 	cmpl   $0x3224e8,0x82557(%rbx)
   18007f092:	24 32 00 
   18007f095:	0f 85 ef 03 00 00    	jne    0x18007f48a
   18007f09b:	80 bb 5b 25 08 00 00 	cmpb   $0x0,0x8255b(%rbx)
   18007f0a2:	0f 85 e2 03 00 00    	jne    0x18007f48a
   18007f0a8:	66 81 bb 8f f8 03 00 	cmpw   $0x8b45,0x3f88f(%rbx)
   18007f0af:	45 8b 
   18007f0b1:	0f 85 d3 03 00 00    	jne    0x18007f48a
   18007f0b7:	80 bb 91 f8 03 00 c7 	cmpb   $0xc7,0x3f891(%rbx)
   18007f0be:	0f 85 c6 03 00 00    	jne    0x18007f48a
   18007f0c4:	81 bb 26 25 08 00 45 	cmpl   $0x1418d45,0x82526(%rbx)
   18007f0cb:	8d 41 01 
   18007f0ce:	0f 85 b6 03 00 00    	jne    0x18007f48a
   18007f0d4:	81 bb 13 f7 0f 00 e8 	cmpl   $0x466cb8e8,0xff713(%rbx)
   18007f0db:	b8 6c 46 
   18007f0de:	0f 85 a6 03 00 00    	jne    0x18007f48a
   18007f0e4:	80 bb 17 f7 0f 00 00 	cmpb   $0x0,0xff717(%rbx)
   18007f0eb:	0f 85 99 03 00 00    	jne    0x18007f48a
   18007f0f1:	81 bb a5 39 10 00 e8 	cmpl   $0x462a26e8,0x1039a5(%rbx)
   18007f0f8:	26 2a 46 
   18007f0fb:	0f 85 89 03 00 00    	jne    0x18007f48a
   18007f101:	80 bb a9 39 10 00 00 	cmpb   $0x0,0x1039a9(%rbx)
   18007f108:	0f 85 7c 03 00 00    	jne    0x18007f48a
   18007f10e:	81 bb 5a e6 0f 00 e8 	cmpl   $0x467d71e8,0xfe65a(%rbx)
   18007f115:	71 7d 46 
   18007f118:	0f 85 6c 03 00 00    	jne    0x18007f48a
   18007f11e:	80 bb 5e e6 0f 00 00 	cmpb   $0x0,0xfe65e(%rbx)
   18007f125:	0f 85 5f 03 00 00    	jne    0x18007f48a
   18007f12b:	49 89 dc             	mov    %rbx,%r12
   18007f12e:	49 81 e4 00 00 ff ff 	and    $0xffffffffffff0000,%r12
   18007f135:	49 81 ec 00 00 01 00 	sub    $0x10000,%r12
   18007f13c:	4d 8d ac 24 00 00 00 	lea    -0x70000000(%r12),%r13
   18007f143:	90 
   18007f144:	4c 89 e1             	mov    %r12,%rcx
   18007f147:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f14c:	41 b8 00 30 00 00    	mov    $0x3000,%r8d
   18007f152:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   18007f158:	41 ff 97 e8 79 00 00 	call   *0x79e8(%r15)
   18007f15f:	48 85 c0             	test   %rax,%rax
   18007f162:	75 11                	jne    0x18007f175
   18007f164:	49 81 ec 00 00 01 00 	sub    $0x10000,%r12
   18007f16b:	4d 39 ec             	cmp    %r13,%r12
   18007f16e:	77 d4                	ja     0x18007f144
   18007f170:	e9 15 03 00 00       	jmp    0x18007f48a
   18007f175:	49 89 c4             	mov    %rax,%r12
   18007f178:	49 8d b7 00 f8 07 00 	lea    0x7f800(%r15),%rsi
   18007f17f:	4c 89 e7             	mov    %r12,%rdi
   18007f182:	b9 00 04 00 00       	mov    $0x400,%ecx
   18007f187:	fc                   	cld    
   18007f188:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
   18007f18a:	48 8d 83 90 f7 03 00 	lea    0x3f790(%rbx),%rax
   18007f191:	49 8d 4c 24 11       	lea    0x11(%r12),%rcx
   18007f196:	48 29 c8             	sub    %rcx,%rax
   18007f199:	41 89 44 24 0d       	mov    %eax,0xd(%r12)
   18007f19e:	48 8d 83 80 57 08 00 	lea    0x85780(%rbx),%rax
   18007f1a5:	49 8d 8c 24 8b 00 00 	lea    0x8b(%r12),%rcx
   18007f1ac:	00 
   18007f1ad:	48 29 c8             	sub    %rcx,%rax
   18007f1b0:	41 89 84 24 87 00 00 	mov    %eax,0x87(%r12)
   18007f1b7:	00 
   18007f1b8:	48 8d 83 80 57 08 00 	lea    0x85780(%rbx),%rax
   18007f1bf:	49 8d 8c 24 6f 01 00 	lea    0x16f(%r12),%rcx
   18007f1c6:	00 
   18007f1c7:	48 29 c8             	sub    %rcx,%rax
   18007f1ca:	41 89 84 24 6b 01 00 	mov    %eax,0x16b(%r12)
   18007f1d1:	00 
   18007f1d2:	48 8d 83 d0 63 56 00 	lea    0x5663d0(%rbx),%rax
   18007f1d9:	49 8d 8c 24 5c 03 00 	lea    0x35c(%r12),%rcx
   18007f1e0:	00 
   18007f1e1:	48 29 c8             	sub    %rcx,%rax
   18007f1e4:	41 89 84 24 58 03 00 	mov    %eax,0x358(%r12)
   18007f1eb:	00 
   18007f1ec:	48 8d 83 f9 77 16 00 	lea    0x1677f9(%rbx),%rax
   18007f1f3:	49 89 84 24 82 03 00 	mov    %rax,0x382(%r12)
   18007f1fa:	00 
   18007f1fb:	4c 89 e1             	mov    %r12,%rcx
   18007f1fe:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f203:	41 b8 20 00 00 00    	mov    $0x20,%r8d
   18007f209:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f20e:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f215:	85 c0                	test   %eax,%eax
   18007f217:	0f 84 6d 02 00 00    	je     0x18007f48a
   18007f21d:	45 31 ed             	xor    %r13d,%r13d
   18007f220:	48 8d 8b 00 f0 03 00 	lea    0x3f000(%rbx),%rcx
   18007f227:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f22c:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f232:	4c 8d 4c 24 34       	lea    0x34(%rsp),%r9
   18007f237:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f23e:	85 c0                	test   %eax,%eax
   18007f240:	0f 84 72 01 00 00    	je     0x18007f3b8
   18007f246:	41 ff c5             	inc    %r13d
   18007f249:	48 8d 8b 00 20 08 00 	lea    0x82000(%rbx),%rcx
   18007f250:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f255:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f25b:	4c 8d 4c 24 38       	lea    0x38(%rsp),%r9
   18007f260:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f267:	85 c0                	test   %eax,%eax
   18007f269:	0f 84 49 01 00 00    	je     0x18007f3b8
   18007f26f:	41 ff c5             	inc    %r13d
   18007f272:	48 8d 8b 00 e0 0f 00 	lea    0xfe000(%rbx),%rcx
   18007f279:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f27e:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f284:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
   18007f289:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f290:	85 c0                	test   %eax,%eax
   18007f292:	0f 84 20 01 00 00    	je     0x18007f3b8
   18007f298:	41 ff c5             	inc    %r13d
   18007f29b:	48 8d 8b 00 f0 0f 00 	lea    0xff000(%rbx),%rcx
   18007f2a2:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f2a7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f2ad:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   18007f2b2:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f2b9:	85 c0                	test   %eax,%eax
   18007f2bb:	0f 84 f7 00 00 00    	je     0x18007f3b8
   18007f2c1:	41 ff c5             	inc    %r13d
   18007f2c4:	48 8d 8b 00 30 10 00 	lea    0x103000(%rbx),%rcx
   18007f2cb:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f2d0:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f2d6:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   18007f2db:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f2e2:	85 c0                	test   %eax,%eax
   18007f2e4:	0f 84 ce 00 00 00    	je     0x18007f3b8
   18007f2ea:	41 ff c5             	inc    %r13d
   18007f2ed:	48 8d 8b 00 b0 49 00 	lea    0x49b000(%rbx),%rcx
   18007f2f4:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f2f9:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18007f2ff:	4c 8d 4c 24 48       	lea    0x48(%rsp),%r9
   18007f304:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f30b:	85 c0                	test   %eax,%eax
   18007f30d:	0f 84 a5 00 00 00    	je     0x18007f3b8
   18007f313:	41 ff c5             	inc    %r13d
   18007f316:	49 8d 04 24          	lea    (%r12),%rax
   18007f31a:	48 8d 8b 0c b1 49 00 	lea    0x49b10c(%rbx),%rcx
   18007f321:	48 29 c8             	sub    %rcx,%rax
   18007f324:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f327:	49 8d 04 24          	lea    (%r12),%rax
   18007f32b:	48 8d 8b 40 b1 49 00 	lea    0x49b140(%rbx),%rcx
   18007f332:	48 29 c8             	sub    %rcx,%rax
   18007f335:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f338:	49 8d 44 24 40       	lea    0x40(%r12),%rax
   18007f33d:	48 8d 8b cc f8 03 00 	lea    0x3f8cc(%rbx),%rcx
   18007f344:	48 29 c8             	sub    %rcx,%rax
   18007f347:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f34a:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   18007f351:	00 
   18007f352:	48 8d 8b 5c 25 08 00 	lea    0x8255c(%rbx),%rcx
   18007f359:	48 29 c8             	sub    %rcx,%rax
   18007f35c:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f35f:	49 8d 84 24 00 03 00 	lea    0x300(%r12),%rax
   18007f366:	00 
   18007f367:	48 8d 8b 18 f7 0f 00 	lea    0xff718(%rbx),%rcx
   18007f36e:	48 29 c8             	sub    %rcx,%rax
   18007f371:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f374:	49 8d 84 24 00 03 00 	lea    0x300(%r12),%rax
   18007f37b:	00 
   18007f37c:	48 8d 8b aa 39 10 00 	lea    0x1039aa(%rbx),%rcx
   18007f383:	48 29 c8             	sub    %rcx,%rax
   18007f386:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f389:	49 8d 84 24 80 03 00 	lea    0x380(%r12),%rax
   18007f390:	00 
   18007f391:	48 8d 8b 5f e6 0f 00 	lea    0xfe65f(%rbx),%rcx
   18007f398:	48 29 c8             	sub    %rcx,%rax
   18007f39b:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18007f39e:	66 c7 83 8f f8 03 00 	movw   $0x3145,0x3f88f(%rbx)
   18007f3a5:	45 31 
   18007f3a7:	c6 83 91 f8 03 00 c0 	movb   $0xc0,0x3f891(%rbx)
   18007f3ae:	c7 83 26 25 08 00 45 	movl   $0x90c03145,0x82526(%rbx)
   18007f3b5:	31 c0 90 
   18007f3b8:	41 83 fd 06          	cmp    $0x6,%r13d
   18007f3bc:	72 1d                	jb     0x18007f3db
   18007f3be:	48 8d 8b 00 b0 49 00 	lea    0x49b000(%rbx),%rcx
   18007f3c5:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f3ca:	44 8b 44 24 48       	mov    0x48(%rsp),%r8d
   18007f3cf:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f3d4:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f3db:	41 83 fd 05          	cmp    $0x5,%r13d
   18007f3df:	72 1d                	jb     0x18007f3fe
   18007f3e1:	48 8d 8b 00 30 10 00 	lea    0x103000(%rbx),%rcx
   18007f3e8:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f3ed:	44 8b 44 24 44       	mov    0x44(%rsp),%r8d
   18007f3f2:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f3f7:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f3fe:	41 83 fd 04          	cmp    $0x4,%r13d
   18007f402:	72 1d                	jb     0x18007f421
   18007f404:	48 8d 8b 00 f0 0f 00 	lea    0xff000(%rbx),%rcx
   18007f40b:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f410:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   18007f415:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f41a:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f421:	41 83 fd 03          	cmp    $0x3,%r13d
   18007f425:	72 1d                	jb     0x18007f444
   18007f427:	48 8d 8b 00 e0 0f 00 	lea    0xfe000(%rbx),%rcx
   18007f42e:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f433:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
   18007f438:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f43d:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f444:	41 83 fd 02          	cmp    $0x2,%r13d
   18007f448:	72 1d                	jb     0x18007f467
   18007f44a:	48 8d 8b 00 20 08 00 	lea    0x82000(%rbx),%rcx
   18007f451:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f456:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   18007f45b:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f460:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f467:	41 83 fd 01          	cmp    $0x1,%r13d
   18007f46b:	72 1d                	jb     0x18007f48a
   18007f46d:	48 8d 8b 00 f0 03 00 	lea    0x3f000(%rbx),%rcx
   18007f474:	ba 00 10 00 00       	mov    $0x1000,%edx
   18007f479:	44 8b 44 24 34       	mov    0x34(%rsp),%r8d
   18007f47e:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18007f483:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18007f48a:	48 83 c4 60          	add    $0x60,%rsp
   18007f48e:	41 5e                	pop    %r14
   18007f490:	41 5d                	pop    %r13
   18007f492:	41 5c                	pop    %r12
   18007f494:	5f                   	pop    %rdi
   18007f495:	5e                   	pop    %rsi
   18007f496:	5b                   	pop    %rbx
   18007f497:	41 5f                	pop    %r15
   18007f499:	c3                   	ret    
   18007f49a:	cc                   	int3   
   18007f49b:	cc                   	int3   
   18007f49c:	cc                   	int3   
   18007f49d:	cc                   	int3   
   18007f49e:	cc                   	int3   
   18007f49f:	cc                   	int3   
   18007f4a0:	cc                   	int3   
   18007f4a1:	cc                   	int3   
   18007f4a2:	cc                   	int3   
   18007f4a3:	cc                   	int3   
   18007f4a4:	cc                   	int3   
   18007f4a5:	cc                   	int3   
   18007f4a6:	cc                   	int3   
   18007f4a7:	cc                   	int3   
   18007f4a8:	cc                   	int3   
   18007f4a9:	cc                   	int3   
   18007f4aa:	cc                   	int3   
   18007f4ab:	cc                   	int3   
   18007f4ac:	cc                   	int3   
   18007f4ad:	cc                   	int3   
   18007f4ae:	cc                   	int3   
   18007f4af:	cc                   	int3   
   18007f4b0:	cc                   	int3   
   18007f4b1:	cc                   	int3   
   18007f4b2:	cc                   	int3   
   18007f4b3:	cc                   	int3   
   18007f4b4:	cc                   	int3   
   18007f4b5:	cc                   	int3   
   18007f4b6:	cc                   	int3   
   18007f4b7:	cc                   	int3   
   18007f4b8:	cc                   	int3   
   18007f4b9:	cc                   	int3   
   18007f4ba:	cc                   	int3   
   18007f4bb:	cc                   	int3   
   18007f4bc:	cc                   	int3   
   18007f4bd:	cc                   	int3   
   18007f4be:	cc                   	int3   
   18007f4bf:	cc                   	int3   
   18007f4c0:	cc                   	int3   
   18007f4c1:	cc                   	int3   
   18007f4c2:	cc                   	int3   
   18007f4c3:	cc                   	int3   
   18007f4c4:	cc                   	int3   
   18007f4c5:	cc                   	int3   
   18007f4c6:	cc                   	int3   
   18007f4c7:	cc                   	int3   
   18007f4c8:	cc                   	int3   
   18007f4c9:	cc                   	int3   
   18007f4ca:	cc                   	int3   
   18007f4cb:	cc                   	int3   
   18007f4cc:	cc                   	int3   
   18007f4cd:	cc                   	int3   
   18007f4ce:	cc                   	int3   
   18007f4cf:	cc                   	int3   
   18007f4d0:	cc                   	int3   
   18007f4d1:	cc                   	int3   
   18007f4d2:	cc                   	int3   
   18007f4d3:	cc                   	int3   
   18007f4d4:	cc                   	int3   
   18007f4d5:	cc                   	int3   
   18007f4d6:	cc                   	int3   
   18007f4d7:	cc                   	int3   
   18007f4d8:	cc                   	int3   
   18007f4d9:	cc                   	int3   
   18007f4da:	cc                   	int3   
   18007f4db:	cc                   	int3   
   18007f4dc:	cc                   	int3   
   18007f4dd:	cc                   	int3   
   18007f4de:	cc                   	int3   
   18007f4df:	cc                   	int3   
   18007f4e0:	cc                   	int3   
   18007f4e1:	cc                   	int3   
   18007f4e2:	cc                   	int3   
   18007f4e3:	cc                   	int3   
   18007f4e4:	cc                   	int3   
   18007f4e5:	cc                   	int3   
   18007f4e6:	cc                   	int3   
   18007f4e7:	cc                   	int3   
   18007f4e8:	cc                   	int3   
   18007f4e9:	cc                   	int3   
   18007f4ea:	cc                   	int3   
   18007f4eb:	cc                   	int3   
   18007f4ec:	cc                   	int3   
   18007f4ed:	cc                   	int3   
   18007f4ee:	cc                   	int3   
   18007f4ef:	cc                   	int3   
   18007f4f0:	cc                   	int3   
   18007f4f1:	cc                   	int3   
   18007f4f2:	cc                   	int3   
   18007f4f3:	cc                   	int3   
   18007f4f4:	cc                   	int3   
   18007f4f5:	cc                   	int3   
   18007f4f6:	cc                   	int3   
   18007f4f7:	cc                   	int3   
   18007f4f8:	cc                   	int3   
   18007f4f9:	cc                   	int3   
   18007f4fa:	cc                   	int3   
   18007f4fb:	cc                   	int3   
   18007f4fc:	cc                   	int3   
   18007f4fd:	cc                   	int3   
   18007f4fe:	cc                   	int3   
   18007f4ff:	cc                   	int3   
   18007f500:	cc                   	int3   
   18007f501:	cc                   	int3   
   18007f502:	cc                   	int3   
   18007f503:	cc                   	int3   
   18007f504:	cc                   	int3   
   18007f505:	cc                   	int3   
   18007f506:	cc                   	int3   
   18007f507:	cc                   	int3   
   18007f508:	cc                   	int3   
   18007f509:	cc                   	int3   
   18007f50a:	cc                   	int3   
   18007f50b:	cc                   	int3   
   18007f50c:	cc                   	int3   
   18007f50d:	cc                   	int3   
   18007f50e:	cc                   	int3   
   18007f50f:	cc                   	int3   
   18007f510:	cc                   	int3   
   18007f511:	cc                   	int3   
   18007f512:	cc                   	int3   
   18007f513:	cc                   	int3   
   18007f514:	cc                   	int3   
   18007f515:	cc                   	int3   
   18007f516:	cc                   	int3   
   18007f517:	cc                   	int3   
   18007f518:	cc                   	int3   
   18007f519:	cc                   	int3   
   18007f51a:	cc                   	int3   
   18007f51b:	cc                   	int3   
   18007f51c:	cc                   	int3   
   18007f51d:	cc                   	int3   
   18007f51e:	cc                   	int3   
   18007f51f:	cc                   	int3   
   18007f520:	cc                   	int3   
   18007f521:	cc                   	int3   
   18007f522:	cc                   	int3   
   18007f523:	cc                   	int3   
   18007f524:	cc                   	int3   
   18007f525:	cc                   	int3   
   18007f526:	cc                   	int3   
   18007f527:	cc                   	int3   
   18007f528:	cc                   	int3   
   18007f529:	cc                   	int3   
   18007f52a:	cc                   	int3   
   18007f52b:	cc                   	int3   
   18007f52c:	cc                   	int3   
   18007f52d:	cc                   	int3   
   18007f52e:	cc                   	int3   
   18007f52f:	cc                   	int3   
   18007f530:	cc                   	int3   
   18007f531:	cc                   	int3   
   18007f532:	cc                   	int3   
   18007f533:	cc                   	int3   
   18007f534:	cc                   	int3   
   18007f535:	cc                   	int3   
   18007f536:	cc                   	int3   
   18007f537:	cc                   	int3   
   18007f538:	cc                   	int3   
   18007f539:	cc                   	int3   
   18007f53a:	cc                   	int3   
   18007f53b:	cc                   	int3   
   18007f53c:	cc                   	int3   
   18007f53d:	cc                   	int3   
   18007f53e:	cc                   	int3   
   18007f53f:	cc                   	int3   
   18007f540:	cc                   	int3   
   18007f541:	cc                   	int3   
   18007f542:	cc                   	int3   
   18007f543:	cc                   	int3   
   18007f544:	cc                   	int3   
   18007f545:	cc                   	int3   
   18007f546:	cc                   	int3   
   18007f547:	cc                   	int3   
   18007f548:	cc                   	int3   
   18007f549:	cc                   	int3   
   18007f54a:	cc                   	int3   
   18007f54b:	cc                   	int3   
   18007f54c:	cc                   	int3   
   18007f54d:	cc                   	int3   
   18007f54e:	cc                   	int3   
   18007f54f:	cc                   	int3   
   18007f550:	cc                   	int3   
   18007f551:	cc                   	int3   
   18007f552:	cc                   	int3   
   18007f553:	cc                   	int3   
   18007f554:	cc                   	int3   
   18007f555:	cc                   	int3   
   18007f556:	cc                   	int3   
   18007f557:	cc                   	int3   
   18007f558:	cc                   	int3   
   18007f559:	cc                   	int3   
   18007f55a:	cc                   	int3   
   18007f55b:	cc                   	int3   
   18007f55c:	cc                   	int3   
   18007f55d:	cc                   	int3   
   18007f55e:	cc                   	int3   
   18007f55f:	cc                   	int3   
   18007f560:	cc                   	int3   
   18007f561:	cc                   	int3   
   18007f562:	cc                   	int3   
   18007f563:	cc                   	int3   
   18007f564:	cc                   	int3   
   18007f565:	cc                   	int3   
   18007f566:	cc                   	int3   
   18007f567:	cc                   	int3   
   18007f568:	cc                   	int3   
   18007f569:	cc                   	int3   
   18007f56a:	cc                   	int3   
   18007f56b:	cc                   	int3   
   18007f56c:	cc                   	int3   
   18007f56d:	cc                   	int3   
   18007f56e:	cc                   	int3   
   18007f56f:	cc                   	int3   
   18007f570:	cc                   	int3   
   18007f571:	cc                   	int3   
   18007f572:	cc                   	int3   
   18007f573:	cc                   	int3   
   18007f574:	cc                   	int3   
   18007f575:	cc                   	int3   
   18007f576:	cc                   	int3   
   18007f577:	cc                   	int3   
   18007f578:	cc                   	int3   
   18007f579:	cc                   	int3   
   18007f57a:	cc                   	int3   
   18007f57b:	cc                   	int3   
   18007f57c:	cc                   	int3   
   18007f57d:	cc                   	int3   
   18007f57e:	cc                   	int3   
   18007f57f:	cc                   	int3   
   18007f580:	cc                   	int3   
   18007f581:	cc                   	int3   
   18007f582:	cc                   	int3   
   18007f583:	cc                   	int3   
   18007f584:	cc                   	int3   
   18007f585:	cc                   	int3   
   18007f586:	cc                   	int3   
   18007f587:	cc                   	int3   
   18007f588:	cc                   	int3   
   18007f589:	cc                   	int3   
   18007f58a:	cc                   	int3   
   18007f58b:	cc                   	int3   
   18007f58c:	cc                   	int3   
   18007f58d:	cc                   	int3   
   18007f58e:	cc                   	int3   
   18007f58f:	cc                   	int3   
   18007f590:	cc                   	int3   
   18007f591:	cc                   	int3   
   18007f592:	cc                   	int3   
   18007f593:	cc                   	int3   
   18007f594:	cc                   	int3   
   18007f595:	cc                   	int3   
   18007f596:	cc                   	int3   
   18007f597:	cc                   	int3   
   18007f598:	cc                   	int3   
   18007f599:	cc                   	int3   
   18007f59a:	cc                   	int3   
   18007f59b:	cc                   	int3   
   18007f59c:	cc                   	int3   
   18007f59d:	cc                   	int3   
   18007f59e:	cc                   	int3   
   18007f59f:	cc                   	int3   
   18007f5a0:	cc                   	int3   
   18007f5a1:	cc                   	int3   
   18007f5a2:	cc                   	int3   
   18007f5a3:	cc                   	int3   
   18007f5a4:	cc                   	int3   
   18007f5a5:	cc                   	int3   
   18007f5a6:	cc                   	int3   
   18007f5a7:	cc                   	int3   
   18007f5a8:	cc                   	int3   
   18007f5a9:	cc                   	int3   
   18007f5aa:	cc                   	int3   
   18007f5ab:	cc                   	int3   
   18007f5ac:	cc                   	int3   
   18007f5ad:	cc                   	int3   
   18007f5ae:	cc                   	int3   
   18007f5af:	cc                   	int3   
   18007f5b0:	cc                   	int3   
   18007f5b1:	cc                   	int3   
   18007f5b2:	cc                   	int3   
   18007f5b3:	cc                   	int3   
   18007f5b4:	cc                   	int3   
   18007f5b5:	cc                   	int3   
   18007f5b6:	cc                   	int3   
   18007f5b7:	cc                   	int3   
   18007f5b8:	cc                   	int3   
   18007f5b9:	cc                   	int3   
   18007f5ba:	cc                   	int3   
   18007f5bb:	cc                   	int3   
   18007f5bc:	cc                   	int3   
   18007f5bd:	cc                   	int3   
   18007f5be:	cc                   	int3   
   18007f5bf:	cc                   	int3   
   18007f5c0:	cc                   	int3   
   18007f5c1:	cc                   	int3   
   18007f5c2:	cc                   	int3   
   18007f5c3:	cc                   	int3   
   18007f5c4:	cc                   	int3   
   18007f5c5:	cc                   	int3   
   18007f5c6:	cc                   	int3   
   18007f5c7:	cc                   	int3   
   18007f5c8:	cc                   	int3   
   18007f5c9:	cc                   	int3   
   18007f5ca:	cc                   	int3   
   18007f5cb:	cc                   	int3   
   18007f5cc:	cc                   	int3   
   18007f5cd:	cc                   	int3   
   18007f5ce:	cc                   	int3   
   18007f5cf:	cc                   	int3   
   18007f5d0:	cc                   	int3   
   18007f5d1:	cc                   	int3   
   18007f5d2:	cc                   	int3   
   18007f5d3:	cc                   	int3   
   18007f5d4:	cc                   	int3   
   18007f5d5:	cc                   	int3   
   18007f5d6:	cc                   	int3   
   18007f5d7:	cc                   	int3   
   18007f5d8:	cc                   	int3   
   18007f5d9:	cc                   	int3   
   18007f5da:	cc                   	int3   
   18007f5db:	cc                   	int3   
   18007f5dc:	cc                   	int3   
   18007f5dd:	cc                   	int3   
   18007f5de:	cc                   	int3   
   18007f5df:	cc                   	int3   
   18007f5e0:	cc                   	int3   
   18007f5e1:	cc                   	int3   
   18007f5e2:	cc                   	int3   
   18007f5e3:	cc                   	int3   
   18007f5e4:	cc                   	int3   
   18007f5e5:	cc                   	int3   
   18007f5e6:	cc                   	int3   
   18007f5e7:	cc                   	int3   
   18007f5e8:	cc                   	int3   
   18007f5e9:	cc                   	int3   
   18007f5ea:	cc                   	int3   
   18007f5eb:	cc                   	int3   
   18007f5ec:	cc                   	int3   
   18007f5ed:	cc                   	int3   
   18007f5ee:	cc                   	int3   
   18007f5ef:	cc                   	int3   
   18007f5f0:	cc                   	int3   
   18007f5f1:	cc                   	int3   
   18007f5f2:	cc                   	int3   
   18007f5f3:	cc                   	int3   
   18007f5f4:	cc                   	int3   
   18007f5f5:	cc                   	int3   
   18007f5f6:	cc                   	int3   
   18007f5f7:	cc                   	int3   
   18007f5f8:	cc                   	int3   
   18007f5f9:	cc                   	int3   
   18007f5fa:	cc                   	int3   
   18007f5fb:	cc                   	int3   
   18007f5fc:	cc                   	int3   
   18007f5fd:	cc                   	int3   
   18007f5fe:	cc                   	int3   
   18007f5ff:	cc                   	int3   
   18007f600:	cc                   	int3   
   18007f601:	cc                   	int3   
   18007f602:	cc                   	int3   
   18007f603:	cc                   	int3   
   18007f604:	cc                   	int3   
   18007f605:	cc                   	int3   
   18007f606:	cc                   	int3   
   18007f607:	cc                   	int3   
   18007f608:	cc                   	int3   
   18007f609:	cc                   	int3   
   18007f60a:	cc                   	int3   
   18007f60b:	cc                   	int3   
   18007f60c:	cc                   	int3   
   18007f60d:	cc                   	int3   
   18007f60e:	cc                   	int3   
   18007f60f:	cc                   	int3   
   18007f610:	cc                   	int3   
   18007f611:	cc                   	int3   
   18007f612:	cc                   	int3   
   18007f613:	cc                   	int3   
   18007f614:	cc                   	int3   
   18007f615:	cc                   	int3   
   18007f616:	cc                   	int3   
   18007f617:	cc                   	int3   
   18007f618:	cc                   	int3   
   18007f619:	cc                   	int3   
   18007f61a:	cc                   	int3   
   18007f61b:	cc                   	int3   
   18007f61c:	cc                   	int3   
   18007f61d:	cc                   	int3   
   18007f61e:	cc                   	int3   
   18007f61f:	cc                   	int3   
   18007f620:	cc                   	int3   
   18007f621:	cc                   	int3   
   18007f622:	cc                   	int3   
   18007f623:	cc                   	int3   
   18007f624:	cc                   	int3   
   18007f625:	cc                   	int3   
   18007f626:	cc                   	int3   
   18007f627:	cc                   	int3   
   18007f628:	cc                   	int3   
   18007f629:	cc                   	int3   
   18007f62a:	cc                   	int3   
   18007f62b:	cc                   	int3   
   18007f62c:	cc                   	int3   
   18007f62d:	cc                   	int3   
   18007f62e:	cc                   	int3   
   18007f62f:	cc                   	int3   
   18007f630:	cc                   	int3   
   18007f631:	cc                   	int3   
   18007f632:	cc                   	int3   
   18007f633:	cc                   	int3   
   18007f634:	cc                   	int3   
   18007f635:	cc                   	int3   
   18007f636:	cc                   	int3   
   18007f637:	cc                   	int3   
   18007f638:	cc                   	int3   
   18007f639:	cc                   	int3   
   18007f63a:	cc                   	int3   
   18007f63b:	cc                   	int3   
   18007f63c:	cc                   	int3   
   18007f63d:	cc                   	int3   
   18007f63e:	cc                   	int3   
   18007f63f:	cc                   	int3   
   18007f640:	cc                   	int3   
   18007f641:	cc                   	int3   
   18007f642:	cc                   	int3   
   18007f643:	cc                   	int3   
   18007f644:	cc                   	int3   
   18007f645:	cc                   	int3   
   18007f646:	cc                   	int3   
   18007f647:	cc                   	int3   
   18007f648:	cc                   	int3   
   18007f649:	cc                   	int3   
   18007f64a:	cc                   	int3   
   18007f64b:	cc                   	int3   
   18007f64c:	cc                   	int3   
   18007f64d:	cc                   	int3   
   18007f64e:	cc                   	int3   
   18007f64f:	cc                   	int3   
   18007f650:	cc                   	int3   
   18007f651:	cc                   	int3   
   18007f652:	cc                   	int3   
   18007f653:	cc                   	int3   
   18007f654:	cc                   	int3   
   18007f655:	cc                   	int3   
   18007f656:	cc                   	int3   
   18007f657:	cc                   	int3   
   18007f658:	cc                   	int3   
   18007f659:	cc                   	int3   
   18007f65a:	cc                   	int3   
   18007f65b:	cc                   	int3   
   18007f65c:	cc                   	int3   
   18007f65d:	cc                   	int3   
   18007f65e:	cc                   	int3   
   18007f65f:	cc                   	int3   
   18007f660:	cc                   	int3   
   18007f661:	cc                   	int3   
   18007f662:	cc                   	int3   
   18007f663:	cc                   	int3   
   18007f664:	cc                   	int3   
   18007f665:	cc                   	int3   
   18007f666:	cc                   	int3   
   18007f667:	cc                   	int3   
   18007f668:	cc                   	int3   
   18007f669:	cc                   	int3   
   18007f66a:	cc                   	int3   
   18007f66b:	cc                   	int3   
   18007f66c:	cc                   	int3   
   18007f66d:	cc                   	int3   
   18007f66e:	cc                   	int3   
   18007f66f:	cc                   	int3   
   18007f670:	cc                   	int3   
   18007f671:	cc                   	int3   
   18007f672:	cc                   	int3   
   18007f673:	cc                   	int3   
   18007f674:	cc                   	int3   
   18007f675:	cc                   	int3   
   18007f676:	cc                   	int3   
   18007f677:	cc                   	int3   
   18007f678:	cc                   	int3   
   18007f679:	cc                   	int3   
   18007f67a:	cc                   	int3   
   18007f67b:	cc                   	int3   
   18007f67c:	cc                   	int3   
   18007f67d:	cc                   	int3   
   18007f67e:	cc                   	int3   
   18007f67f:	cc                   	int3   
   18007f680:	cc                   	int3   
   18007f681:	cc                   	int3   
   18007f682:	cc                   	int3   
   18007f683:	cc                   	int3   
   18007f684:	cc                   	int3   
   18007f685:	cc                   	int3   
   18007f686:	cc                   	int3   
   18007f687:	cc                   	int3   
   18007f688:	cc                   	int3   
   18007f689:	cc                   	int3   
   18007f68a:	cc                   	int3   
   18007f68b:	cc                   	int3   
   18007f68c:	cc                   	int3   
   18007f68d:	cc                   	int3   
   18007f68e:	cc                   	int3   
   18007f68f:	cc                   	int3   
   18007f690:	cc                   	int3   
   18007f691:	cc                   	int3   
   18007f692:	cc                   	int3   
   18007f693:	cc                   	int3   
   18007f694:	cc                   	int3   
   18007f695:	cc                   	int3   
   18007f696:	cc                   	int3   
   18007f697:	cc                   	int3   
   18007f698:	cc                   	int3   
   18007f699:	cc                   	int3   
   18007f69a:	cc                   	int3   
   18007f69b:	cc                   	int3   
   18007f69c:	cc                   	int3   
   18007f69d:	cc                   	int3   
   18007f69e:	cc                   	int3   
   18007f69f:	cc                   	int3   
   18007f6a0:	cc                   	int3   
   18007f6a1:	cc                   	int3   
   18007f6a2:	cc                   	int3   
   18007f6a3:	cc                   	int3   
   18007f6a4:	cc                   	int3   
   18007f6a5:	cc                   	int3   
   18007f6a6:	cc                   	int3   
   18007f6a7:	cc                   	int3   
   18007f6a8:	cc                   	int3   
   18007f6a9:	cc                   	int3   
   18007f6aa:	cc                   	int3   
   18007f6ab:	cc                   	int3   
   18007f6ac:	cc                   	int3   
   18007f6ad:	cc                   	int3   
   18007f6ae:	cc                   	int3   
   18007f6af:	cc                   	int3   
   18007f6b0:	cc                   	int3   
   18007f6b1:	cc                   	int3   
   18007f6b2:	cc                   	int3   
   18007f6b3:	cc                   	int3   
   18007f6b4:	cc                   	int3   
   18007f6b5:	cc                   	int3   
   18007f6b6:	cc                   	int3   
   18007f6b7:	cc                   	int3   
   18007f6b8:	cc                   	int3   
   18007f6b9:	cc                   	int3   
   18007f6ba:	cc                   	int3   
   18007f6bb:	cc                   	int3   
   18007f6bc:	cc                   	int3   
   18007f6bd:	cc                   	int3   
   18007f6be:	cc                   	int3   
   18007f6bf:	cc                   	int3   
   18007f6c0:	cc                   	int3   
   18007f6c1:	cc                   	int3   
   18007f6c2:	cc                   	int3   
   18007f6c3:	cc                   	int3   
   18007f6c4:	cc                   	int3   
   18007f6c5:	cc                   	int3   
   18007f6c6:	cc                   	int3   
   18007f6c7:	cc                   	int3   
   18007f6c8:	cc                   	int3   
   18007f6c9:	cc                   	int3   
   18007f6ca:	cc                   	int3   
   18007f6cb:	cc                   	int3   
   18007f6cc:	cc                   	int3   
   18007f6cd:	cc                   	int3   
   18007f6ce:	cc                   	int3   
   18007f6cf:	cc                   	int3   
   18007f6d0:	cc                   	int3   
   18007f6d1:	cc                   	int3   
   18007f6d2:	cc                   	int3   
   18007f6d3:	cc                   	int3   
   18007f6d4:	cc                   	int3   
   18007f6d5:	cc                   	int3   
   18007f6d6:	cc                   	int3   
   18007f6d7:	cc                   	int3   
   18007f6d8:	cc                   	int3   
   18007f6d9:	cc                   	int3   
   18007f6da:	cc                   	int3   
   18007f6db:	cc                   	int3   
   18007f6dc:	cc                   	int3   
   18007f6dd:	cc                   	int3   
   18007f6de:	cc                   	int3   
   18007f6df:	cc                   	int3   
   18007f6e0:	cc                   	int3   
   18007f6e1:	cc                   	int3   
   18007f6e2:	cc                   	int3   
   18007f6e3:	cc                   	int3   
   18007f6e4:	cc                   	int3   
   18007f6e5:	cc                   	int3   
   18007f6e6:	cc                   	int3   
   18007f6e7:	cc                   	int3   
   18007f6e8:	cc                   	int3   
   18007f6e9:	cc                   	int3   
   18007f6ea:	cc                   	int3   
   18007f6eb:	cc                   	int3   
   18007f6ec:	cc                   	int3   
   18007f6ed:	cc                   	int3   
   18007f6ee:	cc                   	int3   
   18007f6ef:	cc                   	int3   
   18007f6f0:	cc                   	int3   
   18007f6f1:	cc                   	int3   
   18007f6f2:	cc                   	int3   
   18007f6f3:	cc                   	int3   
   18007f6f4:	cc                   	int3   
   18007f6f5:	cc                   	int3   
   18007f6f6:	cc                   	int3   
   18007f6f7:	cc                   	int3   
   18007f6f8:	cc                   	int3   
   18007f6f9:	cc                   	int3   
   18007f6fa:	cc                   	int3   
   18007f6fb:	cc                   	int3   
   18007f6fc:	cc                   	int3   
   18007f6fd:	cc                   	int3   
   18007f6fe:	cc                   	int3   
   18007f6ff:	cc                   	int3   
   18007f700:	cc                   	int3   
   18007f701:	cc                   	int3   
   18007f702:	cc                   	int3   
   18007f703:	cc                   	int3   
   18007f704:	cc                   	int3   
   18007f705:	cc                   	int3   
   18007f706:	cc                   	int3   
   18007f707:	cc                   	int3   
   18007f708:	cc                   	int3   
   18007f709:	cc                   	int3   
   18007f70a:	cc                   	int3   
   18007f70b:	cc                   	int3   
   18007f70c:	cc                   	int3   
   18007f70d:	cc                   	int3   
   18007f70e:	cc                   	int3   
   18007f70f:	cc                   	int3   
   18007f710:	cc                   	int3   
   18007f711:	cc                   	int3   
   18007f712:	cc                   	int3   
   18007f713:	cc                   	int3   
   18007f714:	cc                   	int3   
   18007f715:	cc                   	int3   
   18007f716:	cc                   	int3   
   18007f717:	cc                   	int3   
   18007f718:	cc                   	int3   
   18007f719:	cc                   	int3   
   18007f71a:	cc                   	int3   
   18007f71b:	cc                   	int3   
   18007f71c:	cc                   	int3   
   18007f71d:	cc                   	int3   
   18007f71e:	cc                   	int3   
   18007f71f:	cc                   	int3   
   18007f720:	cc                   	int3   
   18007f721:	cc                   	int3   
   18007f722:	cc                   	int3   
   18007f723:	cc                   	int3   
   18007f724:	cc                   	int3   
   18007f725:	cc                   	int3   
   18007f726:	cc                   	int3   
   18007f727:	cc                   	int3   
   18007f728:	cc                   	int3   
   18007f729:	cc                   	int3   
   18007f72a:	cc                   	int3   
   18007f72b:	cc                   	int3   
   18007f72c:	cc                   	int3   
   18007f72d:	cc                   	int3   
   18007f72e:	cc                   	int3   
   18007f72f:	cc                   	int3   
   18007f730:	cc                   	int3   
   18007f731:	cc                   	int3   
   18007f732:	cc                   	int3   
   18007f733:	cc                   	int3   
   18007f734:	cc                   	int3   
   18007f735:	cc                   	int3   
   18007f736:	cc                   	int3   
   18007f737:	cc                   	int3   
   18007f738:	cc                   	int3   
   18007f739:	cc                   	int3   
   18007f73a:	cc                   	int3   
   18007f73b:	cc                   	int3   
   18007f73c:	cc                   	int3   
   18007f73d:	cc                   	int3   
   18007f73e:	cc                   	int3   
   18007f73f:	cc                   	int3   
   18007f740:	cc                   	int3   
   18007f741:	cc                   	int3   
   18007f742:	cc                   	int3   
   18007f743:	cc                   	int3   
   18007f744:	cc                   	int3   
   18007f745:	cc                   	int3   
   18007f746:	cc                   	int3   
   18007f747:	cc                   	int3   
   18007f748:	cc                   	int3   
   18007f749:	cc                   	int3   
   18007f74a:	cc                   	int3   
   18007f74b:	cc                   	int3   
   18007f74c:	cc                   	int3   
   18007f74d:	cc                   	int3   
   18007f74e:	cc                   	int3   
   18007f74f:	cc                   	int3   
   18007f750:	cc                   	int3   
   18007f751:	cc                   	int3   
   18007f752:	cc                   	int3   
   18007f753:	cc                   	int3   
   18007f754:	cc                   	int3   
   18007f755:	cc                   	int3   
   18007f756:	cc                   	int3   
   18007f757:	cc                   	int3   
   18007f758:	cc                   	int3   
   18007f759:	cc                   	int3   
   18007f75a:	cc                   	int3   
   18007f75b:	cc                   	int3   
   18007f75c:	cc                   	int3   
   18007f75d:	cc                   	int3   
   18007f75e:	cc                   	int3   
   18007f75f:	cc                   	int3   
   18007f760:	cc                   	int3   
   18007f761:	cc                   	int3   
   18007f762:	cc                   	int3   
   18007f763:	cc                   	int3   
   18007f764:	cc                   	int3   
   18007f765:	cc                   	int3   
   18007f766:	cc                   	int3   
   18007f767:	cc                   	int3   
   18007f768:	cc                   	int3   
   18007f769:	cc                   	int3   
   18007f76a:	cc                   	int3   
   18007f76b:	cc                   	int3   
   18007f76c:	cc                   	int3   
   18007f76d:	cc                   	int3   
   18007f76e:	cc                   	int3   
   18007f76f:	cc                   	int3   
   18007f770:	cc                   	int3   
   18007f771:	cc                   	int3   
   18007f772:	cc                   	int3   
   18007f773:	cc                   	int3   
   18007f774:	cc                   	int3   
   18007f775:	cc                   	int3   
   18007f776:	cc                   	int3   
   18007f777:	cc                   	int3   
   18007f778:	cc                   	int3   
   18007f779:	cc                   	int3   
   18007f77a:	cc                   	int3   
   18007f77b:	cc                   	int3   
   18007f77c:	cc                   	int3   
   18007f77d:	cc                   	int3   
   18007f77e:	cc                   	int3   
   18007f77f:	cc                   	int3   
   18007f780:	cc                   	int3   
   18007f781:	cc                   	int3   
   18007f782:	cc                   	int3   
   18007f783:	cc                   	int3   
   18007f784:	cc                   	int3   
   18007f785:	cc                   	int3   
   18007f786:	cc                   	int3   
   18007f787:	cc                   	int3   
   18007f788:	cc                   	int3   
   18007f789:	cc                   	int3   
   18007f78a:	cc                   	int3   
   18007f78b:	cc                   	int3   
   18007f78c:	cc                   	int3   
   18007f78d:	cc                   	int3   
   18007f78e:	cc                   	int3   
   18007f78f:	cc                   	int3   
   18007f790:	cc                   	int3   
   18007f791:	cc                   	int3   
   18007f792:	cc                   	int3   
   18007f793:	cc                   	int3   
   18007f794:	cc                   	int3   
   18007f795:	cc                   	int3   
   18007f796:	cc                   	int3   
   18007f797:	cc                   	int3   
   18007f798:	cc                   	int3   
   18007f799:	cc                   	int3   
   18007f79a:	cc                   	int3   
   18007f79b:	cc                   	int3   
   18007f79c:	cc                   	int3   
   18007f79d:	cc                   	int3   
   18007f79e:	cc                   	int3   
   18007f79f:	cc                   	int3   
   18007f7a0:	cc                   	int3   
   18007f7a1:	cc                   	int3   
   18007f7a2:	cc                   	int3   
   18007f7a3:	cc                   	int3   
   18007f7a4:	cc                   	int3   
   18007f7a5:	cc                   	int3   
   18007f7a6:	cc                   	int3   
   18007f7a7:	cc                   	int3   
   18007f7a8:	cc                   	int3   
   18007f7a9:	cc                   	int3   
   18007f7aa:	cc                   	int3   
   18007f7ab:	cc                   	int3   
   18007f7ac:	cc                   	int3   
   18007f7ad:	cc                   	int3   
   18007f7ae:	cc                   	int3   
   18007f7af:	cc                   	int3   
   18007f7b0:	cc                   	int3   
   18007f7b1:	cc                   	int3   
   18007f7b2:	cc                   	int3   
   18007f7b3:	cc                   	int3   
   18007f7b4:	cc                   	int3   
   18007f7b5:	cc                   	int3   
   18007f7b6:	cc                   	int3   
   18007f7b7:	cc                   	int3   
   18007f7b8:	cc                   	int3   
   18007f7b9:	cc                   	int3   
   18007f7ba:	cc                   	int3   
   18007f7bb:	cc                   	int3   
   18007f7bc:	cc                   	int3   
   18007f7bd:	cc                   	int3   
   18007f7be:	cc                   	int3   
   18007f7bf:	cc                   	int3   
   18007f7c0:	cc                   	int3   
   18007f7c1:	cc                   	int3   
   18007f7c2:	cc                   	int3   
   18007f7c3:	cc                   	int3   
   18007f7c4:	cc                   	int3   
   18007f7c5:	cc                   	int3   
   18007f7c6:	cc                   	int3   
   18007f7c7:	cc                   	int3   
   18007f7c8:	cc                   	int3   
   18007f7c9:	cc                   	int3   
   18007f7ca:	cc                   	int3   
   18007f7cb:	cc                   	int3   
   18007f7cc:	cc                   	int3   
   18007f7cd:	cc                   	int3   
   18007f7ce:	cc                   	int3   
   18007f7cf:	cc                   	int3   
   18007f7d0:	cc                   	int3   
   18007f7d1:	cc                   	int3   
   18007f7d2:	cc                   	int3   
   18007f7d3:	cc                   	int3   
   18007f7d4:	cc                   	int3   
   18007f7d5:	cc                   	int3   
   18007f7d6:	cc                   	int3   
   18007f7d7:	cc                   	int3   
   18007f7d8:	cc                   	int3   
   18007f7d9:	cc                   	int3   
   18007f7da:	cc                   	int3   
   18007f7db:	cc                   	int3   
   18007f7dc:	cc                   	int3   
   18007f7dd:	cc                   	int3   
   18007f7de:	cc                   	int3   
   18007f7df:	cc                   	int3   
   18007f7e0:	cc                   	int3   
   18007f7e1:	cc                   	int3   
   18007f7e2:	cc                   	int3   
   18007f7e3:	cc                   	int3   
   18007f7e4:	cc                   	int3   
   18007f7e5:	cc                   	int3   
   18007f7e6:	cc                   	int3   
   18007f7e7:	cc                   	int3   
   18007f7e8:	cc                   	int3   
   18007f7e9:	cc                   	int3   
   18007f7ea:	cc                   	int3   
   18007f7eb:	cc                   	int3   
   18007f7ec:	cc                   	int3   
   18007f7ed:	cc                   	int3   
   18007f7ee:	cc                   	int3   
   18007f7ef:	cc                   	int3   
   18007f7f0:	cc                   	int3   
   18007f7f1:	cc                   	int3   
   18007f7f2:	cc                   	int3   
   18007f7f3:	cc                   	int3   
   18007f7f4:	cc                   	int3   
   18007f7f5:	cc                   	int3   
   18007f7f6:	cc                   	int3   
   18007f7f7:	cc                   	int3   
   18007f7f8:	cc                   	int3   
   18007f7f9:	cc                   	int3   
   18007f7fa:	cc                   	int3   
   18007f7fb:	cc                   	int3   
   18007f7fc:	cc                   	int3   
   18007f7fd:	cc                   	int3   
   18007f7fe:	cc                   	int3   
   18007f7ff:	cc                   	int3   
   18007f800:	48 83 ec 38          	sub    $0x38,%rsp
   18007f804:	c7 44 24 20 08 00 00 	movl   $0x8,0x20(%rsp)
   18007f80b:	00 
   18007f80c:	e8 00 00 00 00       	call   0x18007f811
   18007f811:	48 83 c4 38          	add    $0x38,%rsp
   18007f815:	c3                   	ret    
	...
   18007f83e:	00 00                	add    %al,(%rax)
   18007f840:	41 89 d1             	mov    %edx,%r9d
   18007f843:	49 89 c8             	mov    %rcx,%r8
   18007f846:	41 0f b6 00          	movzbl (%r8),%eax
   18007f84a:	3c 82                	cmp    $0x82,%al
   18007f84c:	74 0d                	je     0x18007f85b
   18007f84e:	83 e0 df             	and    $0xffffffdf,%eax
   18007f851:	83 e8 41             	sub    $0x41,%eax
   18007f854:	83 f8 19             	cmp    $0x19,%eax
   18007f857:	77 2a                	ja     0x18007f883
   18007f859:	eb 19                	jmp    0x18007f874
   18007f85b:	49 ff c0             	inc    %r8
   18007f85e:	41 0f b6 00          	movzbl (%r8),%eax
   18007f862:	8d 50 a0             	lea    -0x60(%rax),%edx
   18007f865:	83 fa 19             	cmp    $0x19,%edx
   18007f868:	76 0a                	jbe    0x18007f874
   18007f86a:	2d 81 00 00 00       	sub    $0x81,%eax
   18007f86f:	83 f8 19             	cmp    $0x19,%eax
   18007f872:	77 0f                	ja     0x18007f883
   18007f874:	49 ff c0             	inc    %r8
   18007f877:	41 80 38 00          	cmpb   $0x0,(%r8)
   18007f87b:	75 c9                	jne    0x18007f846
   18007f87d:	e9 7e 01 00 00       	jmp    0x18007fa00
   18007f882:	90                   	nop
   18007f883:	44 89 ca             	mov    %r9d,%edx
   18007f886:	e9 00 00 00 00       	jmp    0x18007f88b
	...
   18007f8ff:	00 41 89             	add    %al,-0x77(%rcx)
   18007f902:	d1 49 89             	rorl   -0x77(%rcx)
   18007f905:	c8 45 31 d2          	enter  $0x3145,$0xd2
   18007f909:	41 0f b6 00          	movzbl (%r8),%eax
   18007f90d:	3c 20                	cmp    $0x20,%al
   18007f90f:	74 49                	je     0x18007f95a
   18007f911:	3c 81                	cmp    $0x81,%al
   18007f913:	74 3c                	je     0x18007f951
   18007f915:	3c 82                	cmp    $0x82,%al
   18007f917:	74 0d                	je     0x18007f926
   18007f919:	83 e0 df             	and    $0xffffffdf,%eax
   18007f91c:	83 e8 41             	sub    $0x41,%eax
   18007f91f:	83 f8 19             	cmp    $0x19,%eax
   18007f922:	77 43                	ja     0x18007f967
   18007f924:	eb 19                	jmp    0x18007f93f
   18007f926:	49 ff c0             	inc    %r8
   18007f929:	41 0f b6 00          	movzbl (%r8),%eax
   18007f92d:	8d 50 a0             	lea    -0x60(%rax),%edx
   18007f930:	83 fa 19             	cmp    $0x19,%edx
   18007f933:	76 0a                	jbe    0x18007f93f
   18007f935:	2d 81 00 00 00       	sub    $0x81,%eax
   18007f93a:	83 f8 19             	cmp    $0x19,%eax
   18007f93d:	77 28                	ja     0x18007f967
   18007f93f:	41 b2 01             	mov    $0x1,%r10b
   18007f942:	49 ff c0             	inc    %r8
   18007f945:	41 80 38 00          	cmpb   $0x0,(%r8)
   18007f949:	75 be                	jne    0x18007f909
   18007f94b:	e9 b0 00 00 00       	jmp    0x18007fa00
   18007f950:	90                   	nop
   18007f951:	49 ff c0             	inc    %r8
   18007f954:	41 80 38 40          	cmpb   $0x40,(%r8)
   18007f958:	75 0d                	jne    0x18007f967
   18007f95a:	45 84 d2             	test   %r10b,%r10b
   18007f95d:	74 08                	je     0x18007f967
   18007f95f:	45 31 d2             	xor    %r10d,%r10d
   18007f962:	49 ff c0             	inc    %r8
   18007f965:	eb a2                	jmp    0x18007f909
   18007f967:	44 89 ca             	mov    %r9d,%edx
   18007f96a:	e9 00 00 00 00       	jmp    0x18007f96f
	...
   18007f9ff:	00 49 89             	add    %cl,-0x77(%rcx)
   18007fa02:	c8 49 89 c9          	enter  $0x8949,$0xc9
   18007fa06:	41 0f b6 00          	movzbl (%r8),%eax
   18007fa0a:	49 ff c0             	inc    %r8
   18007fa0d:	3c 81                	cmp    $0x81,%al
   18007fa0f:	74 17                	je     0x18007fa28
   18007fa11:	3c 82                	cmp    $0x82,%al
   18007fa13:	75 18                	jne    0x18007fa2d
   18007fa15:	41 0f b6 00          	movzbl (%r8),%eax
   18007fa19:	49 ff c0             	inc    %r8
   18007fa1c:	3c 81                	cmp    $0x81,%al
   18007fa1e:	72 04                	jb     0x18007fa24
   18007fa20:	2c 20                	sub    $0x20,%al
   18007fa22:	eb 09                	jmp    0x18007fa2d
   18007fa24:	2c 1f                	sub    $0x1f,%al
   18007fa26:	eb 05                	jmp    0x18007fa2d
   18007fa28:	49 ff c0             	inc    %r8
   18007fa2b:	b0 20                	mov    $0x20,%al
   18007fa2d:	41 88 01             	mov    %al,(%r9)
   18007fa30:	49 ff c1             	inc    %r9
   18007fa33:	84 c0                	test   %al,%al
   18007fa35:	75 cf                	jne    0x18007fa06
   18007fa37:	b8 01 00 00 00       	mov    $0x1,%eax
   18007fa3c:	c3                   	ret    
	...
   18007fafd:	00 00                	add    %al,(%rax)
   18007faff:	00 80 39 00 74 52    	add    %al,0x52740039(%rax)
   18007fb05:	80 3a 00             	cmpb   $0x0,(%rdx)
   18007fb08:	74 4d                	je     0x18007fb57
   18007fb0a:	45 31 c0             	xor    %r8d,%r8d
   18007fb0d:	42 0f b6 04 01       	movzbl (%rcx,%r8,1),%eax
   18007fb12:	84 c0                	test   %al,%al
   18007fb14:	74 0f                	je     0x18007fb25
   18007fb16:	a8 80                	test   $0x80,%al
   18007fb18:	75 3d                	jne    0x18007fb57
   18007fb1a:	41 ff c0             	inc    %r8d
   18007fb1d:	41 83 f8 1f          	cmp    $0x1f,%r8d
   18007fb21:	72 ea                	jb     0x18007fb0d
   18007fb23:	eb 32                	jmp    0x18007fb57
   18007fb25:	42 80 7c 01 ff 20    	cmpb   $0x20,-0x1(%rcx,%r8,1)
   18007fb2b:	74 2a                	je     0x18007fb57
   18007fb2d:	80 3a 20             	cmpb   $0x20,(%rdx)
   18007fb30:	74 25                	je     0x18007fb57
   18007fb32:	45 31 c9             	xor    %r9d,%r9d
   18007fb35:	42 0f b6 04 0a       	movzbl (%rdx,%r9,1),%eax
   18007fb3a:	84 c0                	test   %al,%al
   18007fb3c:	74 12                	je     0x18007fb50
   18007fb3e:	a8 80                	test   $0x80,%al
   18007fb40:	75 15                	jne    0x18007fb57
   18007fb42:	41 ff c1             	inc    %r9d
   18007fb45:	43 8d 04 08          	lea    (%r8,%r9,1),%eax
   18007fb49:	83 f8 1f             	cmp    $0x1f,%eax
   18007fb4c:	76 e7                	jbe    0x18007fb35
   18007fb4e:	eb 07                	jmp    0x18007fb57
   18007fb50:	66 42 c7 04 01 20 00 	movw   $0x20,(%rcx,%r8,1)
   18007fb57:	e9 00 00 00 00       	jmp    0x18007fb5c
	...
   18007fb80:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
   18007fb87:	00 00 00 
   18007fb8a:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
   18007fb8f:	75 05                	jne    0x18007fb96
   18007fb91:	e9 6a ff ff ff       	jmp    0x18007fb00
   18007fb96:	e9 bc ff ff ff       	jmp    0x18007fb57
	...
   18007fbff:	00 41 57             	add    %al,0x57(%rcx)
   18007fc02:	4c 8d 3d f7 03 f8 ff 	lea    -0x7fc09(%rip),%r15        # 0x180000000
   18007fc09:	53                   	push   %rbx
   18007fc0a:	41 54                	push   %r12
   18007fc0c:	41 55                	push   %r13
   18007fc0e:	48 83 ec 68          	sub    $0x68,%rsp
   18007fc12:	e8 e9 f3 ff ff       	call   0x18007f000
   18007fc17:	31 c9                	xor    %ecx,%ecx
   18007fc19:	41 ff 97 a0 79 00 00 	call   *0x79a0(%r15)
   18007fc20:	48 85 c0             	test   %rax,%rax
   18007fc23:	0f 84 c6 07 00 00    	je     0x1800803ef
   18007fc29:	48 89 c3             	mov    %rax,%rbx
   18007fc2c:	81 bb 6f d5 87 00 e8 	cmpl   $0x833bdce8,0x87d56f(%rbx)
   18007fc33:	dc 3b 83 
   18007fc36:	0f 85 b3 07 00 00    	jne    0x1800803ef
   18007fc3c:	80 bb 73 d5 87 00 ff 	cmpb   $0xff,0x87d573(%rbx)
   18007fc43:	0f 85 a6 07 00 00    	jne    0x1800803ef
   18007fc49:	81 bb f2 e4 87 00 e8 	cmpl   $0x832c59e8,0x87e4f2(%rbx)
   18007fc50:	59 2c 83 
   18007fc53:	0f 85 96 07 00 00    	jne    0x1800803ef
   18007fc59:	80 bb f6 e4 87 00 ff 	cmpb   $0xff,0x87e4f6(%rbx)
   18007fc60:	0f 85 89 07 00 00    	jne    0x1800803ef
   18007fc66:	81 bb 6c e5 87 00 e8 	cmpl   $0x832bdfe8,0x87e56c(%rbx)
   18007fc6d:	df 2b 83 
   18007fc70:	0f 85 79 07 00 00    	jne    0x1800803ef
   18007fc76:	80 bb 70 e5 87 00 ff 	cmpb   $0xff,0x87e570(%rbx)
   18007fc7d:	0f 85 6c 07 00 00    	jne    0x1800803ef
   18007fc83:	81 bb 48 f0 87 00 e8 	cmpl   $0x832103e8,0x87f048(%rbx)
   18007fc8a:	03 21 83 
   18007fc8d:	0f 85 5c 07 00 00    	jne    0x1800803ef
   18007fc93:	80 bb 4c f0 87 00 ff 	cmpb   $0xff,0x87f04c(%rbx)
   18007fc9a:	0f 85 4f 07 00 00    	jne    0x1800803ef
   18007fca0:	81 bb c8 f3 87 00 e8 	cmpl   $0x831d83e8,0x87f3c8(%rbx)
   18007fca7:	83 1d 83 
   18007fcaa:	0f 85 3f 07 00 00    	jne    0x1800803ef
   18007fcb0:	80 bb cc f3 87 00 ff 	cmpb   $0xff,0x87f3cc(%rbx)
   18007fcb7:	0f 85 32 07 00 00    	jne    0x1800803ef
   18007fcbd:	81 bb a3 d5 87 00 e8 	cmpl   $0x833a68e8,0x87d5a3(%rbx)
   18007fcc4:	68 3a 83 
   18007fcc7:	0f 85 22 07 00 00    	jne    0x1800803ef
   18007fccd:	80 bb a7 d5 87 00 ff 	cmpb   $0xff,0x87d5a7(%rbx)
   18007fcd4:	0f 85 15 07 00 00    	jne    0x1800803ef
   18007fcda:	81 bb fd fa 87 00 e8 	cmpl   $0xffd66ee8,0x87fafd(%rbx)
   18007fce1:	6e d6 ff 
   18007fce4:	0f 85 05 07 00 00    	jne    0x1800803ef
   18007fcea:	80 bb 01 fb 87 00 ff 	cmpb   $0xff,0x87fb01(%rbx)
   18007fcf1:	0f 85 f8 06 00 00    	jne    0x1800803ef
   18007fcf7:	81 bb b4 fb 87 00 e8 	cmpl   $0xffc087e8,0x87fbb4(%rbx)
   18007fcfe:	87 c0 ff 
   18007fd01:	0f 85 e8 06 00 00    	jne    0x1800803ef
   18007fd07:	80 bb b8 fb 87 00 ff 	cmpb   $0xff,0x87fbb8(%rbx)
   18007fd0e:	0f 85 db 06 00 00    	jne    0x1800803ef
   18007fd14:	81 bb f3 fb 87 00 e8 	cmpl   $0xffbc78e8,0x87fbf3(%rbx)
   18007fd1b:	78 bc ff 
   18007fd1e:	0f 85 cb 06 00 00    	jne    0x1800803ef
   18007fd24:	80 bb f7 fb 87 00 ff 	cmpb   $0xff,0x87fbf7(%rbx)
   18007fd2b:	0f 85 be 06 00 00    	jne    0x1800803ef
   18007fd31:	81 bb 22 ec 87 00 41 	cmpl   $0x4cfd8b41,0x87ec22(%rbx)
   18007fd38:	8b fd 4c 
   18007fd3b:	0f 85 ae 06 00 00    	jne    0x1800803ef
   18007fd41:	81 bb 26 ec 87 00 8d 	cmpl   $0xdfc4258d,0x87ec26(%rbx)
   18007fd48:	25 c4 df 
   18007fd4b:	0f 85 9e 06 00 00    	jne    0x1800803ef
   18007fd51:	66 81 bb 2a ec 87 00 	cmpw   $0x22c,0x87ec2a(%rbx)
   18007fd58:	2c 02 
   18007fd5a:	0f 85 8f 06 00 00    	jne    0x1800803ef
   18007fd60:	81 bb 6b c1 87 00 48 	cmpl   $0x41d00348,0x87c16b(%rbx)
   18007fd67:	03 d0 41 
   18007fd6a:	0f 85 7f 06 00 00    	jne    0x1800803ef
   18007fd70:	81 bb 6f c1 87 00 ff 	cmpl   $0x3a80c4ff,0x87c16f(%rbx)
   18007fd77:	c4 80 3a 
   18007fd7a:	0f 85 6f 06 00 00    	jne    0x1800803ef
   18007fd80:	66 81 bb 73 c1 87 00 	cmpw   $0x7500,0x87c173(%rbx)
   18007fd87:	00 75 
   18007fd89:	0f 85 60 06 00 00    	jne    0x1800803ef
   18007fd8f:	80 bb 75 c1 87 00 ca 	cmpb   $0xca,0x87c175(%rbx)
   18007fd96:	0f 85 53 06 00 00    	jne    0x1800803ef
   18007fd9c:	81 bb 47 c5 87 00 41 	cmpl   $0x74fc3b41,0x87c547(%rbx)
   18007fda3:	3b fc 74 
   18007fda6:	0f 85 43 06 00 00    	jne    0x1800803ef
   18007fdac:	81 bb 4b c5 87 00 1d 	cmpl   $0x83ff411d,0x87c54b(%rbx)
   18007fdb3:	41 ff 83 
   18007fdb6:	0f 85 33 06 00 00    	jne    0x1800803ef
   18007fdbc:	81 bb 4f c5 87 00 80 	cmpl   $0x2580,0x87c54f(%rbx)
   18007fdc3:	25 00 00 
   18007fdc6:	0f 85 23 06 00 00    	jne    0x1800803ef
   18007fdcc:	81 bb 53 c5 87 00 48 	cmpl   $0x24748b48,0x87c553(%rbx)
   18007fdd3:	8b 74 24 
   18007fdd6:	0f 85 13 06 00 00    	jne    0x1800803ef
   18007fddc:	81 bb 57 c5 87 00 50 	cmpl   $0xfd38e950,0x87c557(%rbx)
   18007fde3:	e9 38 fd 
   18007fde6:	0f 85 03 06 00 00    	jne    0x1800803ef
   18007fdec:	66 83 bb 5b c5 87 00 	cmpw   $0xffff,0x87c55b(%rbx)
   18007fdf3:	ff 
   18007fdf4:	0f 85 f5 05 00 00    	jne    0x1800803ef
   18007fdfa:	48 8d 83 bc 4f b4 02 	lea    0x2b44fbc(%rbx),%rax
   18007fe01:	48 39 83 50 a7 aa 03 	cmp    %rax,0x3aaa750(%rbx)
   18007fe08:	0f 85 e1 05 00 00    	jne    0x1800803ef
   18007fe0e:	48 8d 83 e4 4f b4 02 	lea    0x2b44fe4(%rbx),%rax
   18007fe15:	48 39 83 58 a7 aa 03 	cmp    %rax,0x3aaa758(%rbx)
   18007fe1c:	0f 85 cd 05 00 00    	jne    0x1800803ef
   18007fe22:	48 8d 83 0c 50 b4 02 	lea    0x2b4500c(%rbx),%rax
   18007fe29:	48 39 83 60 a7 aa 03 	cmp    %rax,0x3aaa760(%rbx)
   18007fe30:	0f 85 b9 05 00 00    	jne    0x1800803ef
   18007fe36:	48 8d 83 24 50 b4 02 	lea    0x2b45024(%rbx),%rax
   18007fe3d:	48 39 83 68 a7 aa 03 	cmp    %rax,0x3aaa768(%rbx)
   18007fe44:	0f 85 a5 05 00 00    	jne    0x1800803ef
   18007fe4a:	48 8d 83 3c 50 b4 02 	lea    0x2b4503c(%rbx),%rax
   18007fe51:	48 39 83 70 a7 aa 03 	cmp    %rax,0x3aaa770(%rbx)
   18007fe58:	0f 85 91 05 00 00    	jne    0x1800803ef
   18007fe5e:	48 8d 83 54 50 b4 02 	lea    0x2b45054(%rbx),%rax
   18007fe65:	48 39 83 78 a7 aa 03 	cmp    %rax,0x3aaa778(%rbx)
   18007fe6c:	0f 85 7d 05 00 00    	jne    0x1800803ef
   18007fe72:	48 8d 83 7c 50 b4 02 	lea    0x2b4507c(%rbx),%rax
   18007fe79:	48 39 83 80 a7 aa 03 	cmp    %rax,0x3aaa780(%rbx)
   18007fe80:	0f 85 69 05 00 00    	jne    0x1800803ef
   18007fe86:	48 8d 83 94 50 b4 02 	lea    0x2b45094(%rbx),%rax
   18007fe8d:	48 39 83 88 a7 aa 03 	cmp    %rax,0x3aaa788(%rbx)
   18007fe94:	0f 85 55 05 00 00    	jne    0x1800803ef
   18007fe9a:	48 8d 83 bc 50 b4 02 	lea    0x2b450bc(%rbx),%rax
   18007fea1:	48 39 83 90 a7 aa 03 	cmp    %rax,0x3aaa790(%rbx)
   18007fea8:	0f 85 41 05 00 00    	jne    0x1800803ef
   18007feae:	48 8d 83 5c 51 b4 02 	lea    0x2b4515c(%rbx),%rax
   18007feb5:	48 39 83 98 a7 aa 03 	cmp    %rax,0x3aaa798(%rbx)
   18007febc:	0f 85 2d 05 00 00    	jne    0x1800803ef
   18007fec2:	49 8d 8f a0 0e 08 00 	lea    0x80ea0(%r15),%rcx
   18007fec9:	41 ff 97 a0 79 00 00 	call   *0x79a0(%r15)
   18007fed0:	48 85 c0             	test   %rax,%rax
   18007fed3:	0f 84 16 05 00 00    	je     0x1800803ef
   18007fed9:	48 89 c1             	mov    %rax,%rcx
   18007fedc:	49 8d 97 b0 0e 08 00 	lea    0x80eb0(%r15),%rdx
   18007fee3:	41 ff 97 a8 79 00 00 	call   *0x79a8(%r15)
   18007feea:	48 85 c0             	test   %rax,%rax
   18007feed:	0f 84 fc 04 00 00    	je     0x1800803ef
   18007fef3:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   18007fef8:	49 89 dc             	mov    %rbx,%r12
   18007fefb:	49 81 e4 00 00 ff ff 	and    $0xffffffffffff0000,%r12
   18007ff02:	49 81 ec 00 00 01 00 	sub    $0x10000,%r12
   18007ff09:	4d 8d ac 24 00 00 00 	lea    -0x70000000(%r12),%r13
   18007ff10:	90 
   18007ff11:	4c 89 e1             	mov    %r12,%rcx
   18007ff14:	ba 00 40 00 00       	mov    $0x4000,%edx
   18007ff19:	41 b8 00 30 00 00    	mov    $0x3000,%r8d
   18007ff1f:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   18007ff25:	41 ff 97 e8 79 00 00 	call   *0x79e8(%r15)
   18007ff2c:	48 85 c0             	test   %rax,%rax
   18007ff2f:	75 11                	jne    0x18007ff42
   18007ff31:	49 81 ec 00 00 01 00 	sub    $0x10000,%r12
   18007ff38:	4d 39 ec             	cmp    %r13,%r12
   18007ff3b:	77 d4                	ja     0x18007ff11
   18007ff3d:	e9 ad 04 00 00       	jmp    0x1800803ef
   18007ff42:	49 89 c4             	mov    %rax,%r12
   18007ff45:	49 8d 97 00 0c 08 00 	lea    0x80c00(%r15),%rdx
   18007ff4c:	31 c9                	xor    %ecx,%ecx
   18007ff4e:	48 8b 04 0a          	mov    (%rdx,%rcx,1),%rax
   18007ff52:	49 89 04 0c          	mov    %rax,(%r12,%rcx,1)
   18007ff56:	83 c1 08             	add    $0x8,%ecx
   18007ff59:	81 f9 00 40 00 00    	cmp    $0x4000,%ecx
   18007ff5f:	72 ed                	jb     0x18007ff4e
   18007ff61:	48 8d 83 50 11 0b 00 	lea    0xb1150(%rbx),%rax
   18007ff68:	49 89 84 24 00 02 00 	mov    %rax,0x200(%r12)
   18007ff6f:	00 
   18007ff70:	48 8d 83 10 10 0b 00 	lea    0xb1010(%rbx),%rax
   18007ff77:	49 89 84 24 08 02 00 	mov    %rax,0x208(%r12)
   18007ff7e:	00 
   18007ff7f:	48 8d 83 70 d1 87 00 	lea    0x87d170(%rbx),%rax
   18007ff86:	49 89 84 24 10 02 00 	mov    %rax,0x210(%r12)
   18007ff8d:	00 
   18007ff8e:	48 8d 83 40 bc 87 00 	lea    0x87bc40(%rbx),%rax
   18007ff95:	49 89 84 24 18 02 00 	mov    %rax,0x218(%r12)
   18007ff9c:	00 
   18007ff9d:	48 8d 83 70 b8 87 00 	lea    0x87b870(%rbx),%rax
   18007ffa4:	49 89 84 24 20 02 00 	mov    %rax,0x220(%r12)
   18007ffab:	00 
   18007ffac:	48 8d 83 02 ed 87 00 	lea    0x87ed02(%rbx),%rax
   18007ffb3:	49 89 84 24 28 02 00 	mov    %rax,0x228(%r12)
   18007ffba:	00 
   18007ffbb:	48 8d 83 40 c1 87 00 	lea    0x87c140(%rbx),%rax
   18007ffc2:	49 89 84 24 d0 02 00 	mov    %rax,0x2d0(%r12)
   18007ffc9:	00 
   18007ffca:	48 8d 83 76 c1 87 00 	lea    0x87c176(%rbx),%rax
   18007ffd1:	49 89 84 24 d8 02 00 	mov    %rax,0x2d8(%r12)
   18007ffd8:	00 
   18007ffd9:	48 8d 83 95 c2 87 00 	lea    0x87c295(%rbx),%rax
   18007ffe0:	49 89 84 24 e0 02 00 	mov    %rax,0x2e0(%r12)
   18007ffe7:	00 
   18007ffe8:	48 8d 83 69 c5 87 00 	lea    0x87c569(%rbx),%rax
   18007ffef:	49 89 84 24 e8 02 00 	mov    %rax,0x2e8(%r12)
   18007fff6:	00 
   18007fff7:	4c 89 e1             	mov    %r12,%rcx
   18007fffa:	ba 00 40 00 00       	mov    $0x4000,%edx
   18007ffff:	41 b8 20 00 00 00    	mov    $0x20,%r8d
   180080005:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18008000a:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   180080011:	85 c0                	test   %eax,%eax
   180080013:	0f 84 d6 03 00 00    	je     0x1800803ef
   180080019:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   180080020:	4c 89 e2             	mov    %r12,%rdx
   180080023:	41 b8 00 40 00 00    	mov    $0x4000,%r8d
   180080029:	ff 54 24 60          	call   *0x60(%rsp)
   18008002d:	85 c0                	test   %eax,%eax
   18008002f:	0f 84 ba 03 00 00    	je     0x1800803ef
   180080035:	45 31 ed             	xor    %r13d,%r13d
   180080038:	48 8d 8b 00 c0 87 00 	lea    0x87c000(%rbx),%rcx
   18008003f:	ba 00 10 00 00       	mov    $0x1000,%edx
   180080044:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18008004a:	4c 8d 4c 24 34       	lea    0x34(%rsp),%r9
   18008004f:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   180080056:	85 c0                	test   %eax,%eax
   180080058:	0f 84 e2 02 00 00    	je     0x180080340
   18008005e:	41 ff c5             	inc    %r13d
   180080061:	48 8d 8b 00 d0 87 00 	lea    0x87d000(%rbx),%rcx
   180080068:	ba 00 10 00 00       	mov    $0x1000,%edx
   18008006d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   180080073:	4c 8d 4c 24 38       	lea    0x38(%rsp),%r9
   180080078:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   18008007f:	85 c0                	test   %eax,%eax
   180080081:	0f 84 b9 02 00 00    	je     0x180080340
   180080087:	41 ff c5             	inc    %r13d
   18008008a:	48 8d 8b 00 e0 87 00 	lea    0x87e000(%rbx),%rcx
   180080091:	ba 00 10 00 00       	mov    $0x1000,%edx
   180080096:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   18008009c:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
   1800800a1:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800800a8:	85 c0                	test   %eax,%eax
   1800800aa:	0f 84 90 02 00 00    	je     0x180080340
   1800800b0:	41 ff c5             	inc    %r13d
   1800800b3:	48 8d 8b 00 f0 87 00 	lea    0x87f000(%rbx),%rcx
   1800800ba:	ba 00 10 00 00       	mov    $0x1000,%edx
   1800800bf:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1800800c5:	4c 8d 4c 24 40       	lea    0x40(%rsp),%r9
   1800800ca:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800800d1:	85 c0                	test   %eax,%eax
   1800800d3:	0f 84 67 02 00 00    	je     0x180080340
   1800800d9:	41 ff c5             	inc    %r13d
   1800800dc:	48 8d 8b 00 a0 aa 03 	lea    0x3aaa000(%rbx),%rcx
   1800800e3:	ba 00 10 00 00       	mov    $0x1000,%edx
   1800800e8:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1800800ee:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   1800800f3:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800800fa:	85 c0                	test   %eax,%eax
   1800800fc:	0f 84 3e 02 00 00    	je     0x180080340
   180080102:	41 ff c5             	inc    %r13d
   180080105:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   18008010c:	00 
   18008010d:	48 8d 8b 74 d5 87 00 	lea    0x87d574(%rbx),%rcx
   180080114:	48 29 c8             	sub    %rcx,%rax
   180080117:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   18008011b:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18008011e:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   180080125:	00 
   180080126:	48 8d 8b f7 e4 87 00 	lea    0x87e4f7(%rbx),%rcx
   18008012d:	48 29 c8             	sub    %rcx,%rax
   180080130:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   180080134:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080137:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   18008013e:	00 
   18008013f:	48 8d 8b 71 e5 87 00 	lea    0x87e571(%rbx),%rcx
   180080146:	48 29 c8             	sub    %rcx,%rax
   180080149:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   18008014d:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080150:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   180080157:	00 
   180080158:	48 8d 8b 4d f0 87 00 	lea    0x87f04d(%rbx),%rcx
   18008015f:	48 29 c8             	sub    %rcx,%rax
   180080162:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   180080166:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080169:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
   180080170:	00 
   180080171:	48 8d 8b cd f3 87 00 	lea    0x87f3cd(%rbx),%rcx
   180080178:	48 29 c8             	sub    %rcx,%rax
   18008017b:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   18008017f:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080182:	49 8d 84 24 30 01 00 	lea    0x130(%r12),%rax
   180080189:	00 
   18008018a:	48 8d 8b a8 d5 87 00 	lea    0x87d5a8(%rbx),%rcx
   180080191:	48 29 c8             	sub    %rcx,%rax
   180080194:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   180080198:	89 41 fc             	mov    %eax,-0x4(%rcx)
   18008019b:	49 8d 84 24 60 01 00 	lea    0x160(%r12),%rax
   1800801a2:	00 
   1800801a3:	48 8d 8b 02 fb 87 00 	lea    0x87fb02(%rbx),%rcx
   1800801aa:	48 29 c8             	sub    %rcx,%rax
   1800801ad:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   1800801b1:	89 41 fc             	mov    %eax,-0x4(%rcx)
   1800801b4:	49 8d 84 24 90 01 00 	lea    0x190(%r12),%rax
   1800801bb:	00 
   1800801bc:	48 8d 8b b9 fb 87 00 	lea    0x87fbb9(%rbx),%rcx
   1800801c3:	48 29 c8             	sub    %rcx,%rax
   1800801c6:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   1800801ca:	89 41 fc             	mov    %eax,-0x4(%rcx)
   1800801cd:	49 8d 84 24 c0 01 00 	lea    0x1c0(%r12),%rax
   1800801d4:	00 
   1800801d5:	48 8d 8b f8 fb 87 00 	lea    0x87fbf8(%rbx),%rcx
   1800801dc:	48 29 c8             	sub    %rcx,%rax
   1800801df:	c6 41 fb e8          	movb   $0xe8,-0x5(%rcx)
   1800801e3:	89 41 fc             	mov    %eax,-0x4(%rcx)
   1800801e6:	49 8d 04 24          	lea    (%r12),%rax
   1800801ea:	48 8d 8b 27 ec 87 00 	lea    0x87ec27(%rbx),%rcx
   1800801f1:	48 29 c8             	sub    %rcx,%rax
   1800801f4:	c6 41 fb e9          	movb   $0xe9,-0x5(%rcx)
   1800801f8:	89 41 fc             	mov    %eax,-0x4(%rcx)
   1800801fb:	c6 01 90             	movb   $0x90,(%rcx)
   1800801fe:	c6 41 01 90          	movb   $0x90,0x1(%rcx)
   180080202:	c6 41 02 90          	movb   $0x90,0x2(%rcx)
   180080206:	c6 41 03 90          	movb   $0x90,0x3(%rcx)
   18008020a:	c6 41 04 90          	movb   $0x90,0x4(%rcx)
   18008020e:	49 8d 84 24 00 3b 00 	lea    0x3b00(%r12),%rax
   180080215:	00 
   180080216:	48 8d 8b 70 c1 87 00 	lea    0x87c170(%rbx),%rcx
   18008021d:	48 29 c8             	sub    %rcx,%rax
   180080220:	c6 41 fb e9          	movb   $0xe9,-0x5(%rcx)
   180080224:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080227:	c6 01 90             	movb   $0x90,(%rcx)
   18008022a:	c6 41 01 90          	movb   $0x90,0x1(%rcx)
   18008022e:	c6 41 02 90          	movb   $0x90,0x2(%rcx)
   180080232:	c6 41 03 90          	movb   $0x90,0x3(%rcx)
   180080236:	c6 41 04 90          	movb   $0x90,0x4(%rcx)
   18008023a:	c6 41 05 90          	movb   $0x90,0x5(%rcx)
   18008023e:	49 8d 84 24 80 3b 00 	lea    0x3b80(%r12),%rax
   180080245:	00 
   180080246:	48 8d 8b 4c c5 87 00 	lea    0x87c54c(%rbx),%rcx
   18008024d:	48 29 c8             	sub    %rcx,%rax
   180080250:	c6 41 fb e9          	movb   $0xe9,-0x5(%rcx)
   180080254:	89 41 fc             	mov    %eax,-0x4(%rcx)
   180080257:	c6 01 90             	movb   $0x90,(%rcx)
   18008025a:	c6 41 01 90          	movb   $0x90,0x1(%rcx)
   18008025e:	c6 41 02 90          	movb   $0x90,0x2(%rcx)
   180080262:	c6 41 03 90          	movb   $0x90,0x3(%rcx)
   180080266:	c6 41 04 90          	movb   $0x90,0x4(%rcx)
   18008026a:	c6 41 05 90          	movb   $0x90,0x5(%rcx)
   18008026e:	c6 41 06 90          	movb   $0x90,0x6(%rcx)
   180080272:	c6 41 07 90          	movb   $0x90,0x7(%rcx)
   180080276:	c6 41 08 90          	movb   $0x90,0x8(%rcx)
   18008027a:	c6 41 09 90          	movb   $0x90,0x9(%rcx)
   18008027e:	c6 41 0a 90          	movb   $0x90,0xa(%rcx)
   180080282:	c6 41 0b 90          	movb   $0x90,0xb(%rcx)
   180080286:	c6 41 0c 90          	movb   $0x90,0xc(%rcx)
   18008028a:	c6 41 0d 90          	movb   $0x90,0xd(%rcx)
   18008028e:	c6 41 0e 90          	movb   $0x90,0xe(%rcx)
   180080292:	c6 41 0f 90          	movb   $0x90,0xf(%rcx)
   180080296:	c6 41 10 90          	movb   $0x90,0x10(%rcx)
   18008029a:	49 8d 84 24 40 02 00 	lea    0x240(%r12),%rax
   1800802a1:	00 
   1800802a2:	48 89 83 50 a7 aa 03 	mov    %rax,0x3aaa750(%rbx)
   1800802a9:	49 8d 84 24 48 02 00 	lea    0x248(%r12),%rax
   1800802b0:	00 
   1800802b1:	48 89 83 58 a7 aa 03 	mov    %rax,0x3aaa758(%rbx)
   1800802b8:	49 8d 84 24 50 02 00 	lea    0x250(%r12),%rax
   1800802bf:	00 
   1800802c0:	48 89 83 60 a7 aa 03 	mov    %rax,0x3aaa760(%rbx)
   1800802c7:	49 8d 84 24 58 02 00 	lea    0x258(%r12),%rax
   1800802ce:	00 
   1800802cf:	48 89 83 68 a7 aa 03 	mov    %rax,0x3aaa768(%rbx)
   1800802d6:	49 8d 84 24 60 02 00 	lea    0x260(%r12),%rax
   1800802dd:	00 
   1800802de:	48 89 83 70 a7 aa 03 	mov    %rax,0x3aaa770(%rbx)
   1800802e5:	49 8d 84 24 68 02 00 	lea    0x268(%r12),%rax
   1800802ec:	00 
   1800802ed:	48 89 83 78 a7 aa 03 	mov    %rax,0x3aaa778(%rbx)
   1800802f4:	49 8d 84 24 70 02 00 	lea    0x270(%r12),%rax
   1800802fb:	00 
   1800802fc:	48 89 83 80 a7 aa 03 	mov    %rax,0x3aaa780(%rbx)
   180080303:	49 8d 84 24 78 02 00 	lea    0x278(%r12),%rax
   18008030a:	00 
   18008030b:	48 89 83 88 a7 aa 03 	mov    %rax,0x3aaa788(%rbx)
   180080312:	49 8d 84 24 80 02 00 	lea    0x280(%r12),%rax
   180080319:	00 
   18008031a:	48 89 83 90 a7 aa 03 	mov    %rax,0x3aaa790(%rbx)
   180080321:	49 8d 84 24 88 02 00 	lea    0x288(%r12),%rax
   180080328:	00 
   180080329:	48 89 83 98 a7 aa 03 	mov    %rax,0x3aaa798(%rbx)
   180080330:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   180080337:	31 d2                	xor    %edx,%edx
   180080339:	45 31 c0             	xor    %r8d,%r8d
   18008033c:	ff 54 24 60          	call   *0x60(%rsp)
   180080340:	41 83 fd 05          	cmp    $0x5,%r13d
   180080344:	72 1d                	jb     0x180080363
   180080346:	48 8d 8b 00 a0 aa 03 	lea    0x3aaa000(%rbx),%rcx
   18008034d:	ba 00 10 00 00       	mov    $0x1000,%edx
   180080352:	44 8b 44 24 44       	mov    0x44(%rsp),%r8d
   180080357:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18008035c:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   180080363:	41 83 fd 04          	cmp    $0x4,%r13d
   180080367:	72 1d                	jb     0x180080386
   180080369:	48 8d 8b 00 f0 87 00 	lea    0x87f000(%rbx),%rcx
   180080370:	ba 00 10 00 00       	mov    $0x1000,%edx
   180080375:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   18008037a:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   18008037f:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   180080386:	41 83 fd 03          	cmp    $0x3,%r13d
   18008038a:	72 1d                	jb     0x1800803a9
   18008038c:	48 8d 8b 00 e0 87 00 	lea    0x87e000(%rbx),%rcx
   180080393:	ba 00 10 00 00       	mov    $0x1000,%edx
   180080398:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
   18008039d:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800803a2:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800803a9:	41 83 fd 02          	cmp    $0x2,%r13d
   1800803ad:	72 1d                	jb     0x1800803cc
   1800803af:	48 8d 8b 00 d0 87 00 	lea    0x87d000(%rbx),%rcx
   1800803b6:	ba 00 10 00 00       	mov    $0x1000,%edx
   1800803bb:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   1800803c0:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800803c5:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800803cc:	41 83 fd 01          	cmp    $0x1,%r13d
   1800803d0:	72 1d                	jb     0x1800803ef
   1800803d2:	48 8d 8b 00 c0 87 00 	lea    0x87c000(%rbx),%rcx
   1800803d9:	ba 00 10 00 00       	mov    $0x1000,%edx
   1800803de:	44 8b 44 24 34       	mov    0x34(%rsp),%r8d
   1800803e3:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
   1800803e8:	41 ff 97 f0 79 00 00 	call   *0x79f0(%r15)
   1800803ef:	48 83 c4 68          	add    $0x68,%rsp
   1800803f3:	41 5d                	pop    %r13
   1800803f5:	41 5c                	pop    %r12
   1800803f7:	5b                   	pop    %rbx
   1800803f8:	41 5f                	pop    %r15
   1800803fa:	c3                   	ret    
   1800803fb:	cc                   	int3   
   1800803fc:	cc                   	int3   
   1800803fd:	cc                   	int3   
   1800803fe:	cc                   	int3   
   1800803ff:	cc                   	int3   
   180080400:	cc                   	int3   
   180080401:	cc                   	int3   
   180080402:	cc                   	int3   
   180080403:	cc                   	int3   
   180080404:	cc                   	int3   
   180080405:	cc                   	int3   
   180080406:	cc                   	int3   
   180080407:	cc                   	int3   
   180080408:	cc                   	int3   
   180080409:	cc                   	int3   
   18008040a:	cc                   	int3   
   18008040b:	cc                   	int3   
   18008040c:	cc                   	int3   
   18008040d:	cc                   	int3   
   18008040e:	cc                   	int3   
   18008040f:	cc                   	int3   
   180080410:	cc                   	int3   
   180080411:	cc                   	int3   
   180080412:	cc                   	int3   
   180080413:	cc                   	int3   
   180080414:	cc                   	int3   
   180080415:	cc                   	int3   
   180080416:	cc                   	int3   
   180080417:	cc                   	int3   
   180080418:	cc                   	int3   
   180080419:	cc                   	int3   
   18008041a:	cc                   	int3   
   18008041b:	cc                   	int3   
   18008041c:	cc                   	int3   
   18008041d:	cc                   	int3   
   18008041e:	cc                   	int3   
   18008041f:	cc                   	int3   
   180080420:	cc                   	int3   
   180080421:	cc                   	int3   
   180080422:	cc                   	int3   
   180080423:	cc                   	int3   
   180080424:	cc                   	int3   
   180080425:	cc                   	int3   
   180080426:	cc                   	int3   
   180080427:	cc                   	int3   
   180080428:	cc                   	int3   
   180080429:	cc                   	int3   
   18008042a:	cc                   	int3   
   18008042b:	cc                   	int3   
   18008042c:	cc                   	int3   
   18008042d:	cc                   	int3   
   18008042e:	cc                   	int3   
   18008042f:	cc                   	int3   
   180080430:	cc                   	int3   
   180080431:	cc                   	int3   
   180080432:	cc                   	int3   
   180080433:	cc                   	int3   
   180080434:	cc                   	int3   
   180080435:	cc                   	int3   
   180080436:	cc                   	int3   
   180080437:	cc                   	int3   
   180080438:	cc                   	int3   
   180080439:	cc                   	int3   
   18008043a:	cc                   	int3   
   18008043b:	cc                   	int3   
   18008043c:	cc                   	int3   
   18008043d:	cc                   	int3   
   18008043e:	cc                   	int3   
   18008043f:	cc                   	int3   
   180080440:	cc                   	int3   
   180080441:	cc                   	int3   
   180080442:	cc                   	int3   
   180080443:	cc                   	int3   
   180080444:	cc                   	int3   
   180080445:	cc                   	int3   
   180080446:	cc                   	int3   
   180080447:	cc                   	int3   
   180080448:	cc                   	int3   
   180080449:	cc                   	int3   
   18008044a:	cc                   	int3   
   18008044b:	cc                   	int3   
   18008044c:	cc                   	int3   
   18008044d:	cc                   	int3   
   18008044e:	cc                   	int3   
   18008044f:	cc                   	int3   
   180080450:	cc                   	int3   
   180080451:	cc                   	int3   
   180080452:	cc                   	int3   
   180080453:	cc                   	int3   
   180080454:	cc                   	int3   
   180080455:	cc                   	int3   
   180080456:	cc                   	int3   
   180080457:	cc                   	int3   
   180080458:	cc                   	int3   
   180080459:	cc                   	int3   
   18008045a:	cc                   	int3   
   18008045b:	cc                   	int3   
   18008045c:	cc                   	int3   
   18008045d:	cc                   	int3   
   18008045e:	cc                   	int3   
   18008045f:	cc                   	int3   
   180080460:	cc                   	int3   
   180080461:	cc                   	int3   
   180080462:	cc                   	int3   
   180080463:	cc                   	int3   
   180080464:	cc                   	int3   
   180080465:	cc                   	int3   
   180080466:	cc                   	int3   
   180080467:	cc                   	int3   
   180080468:	cc                   	int3   
   180080469:	cc                   	int3   
   18008046a:	cc                   	int3   
   18008046b:	cc                   	int3   
   18008046c:	cc                   	int3   
   18008046d:	cc                   	int3   
   18008046e:	cc                   	int3   
   18008046f:	cc                   	int3   
   180080470:	cc                   	int3   
   180080471:	cc                   	int3   
   180080472:	cc                   	int3   
   180080473:	cc                   	int3   
   180080474:	cc                   	int3   
   180080475:	cc                   	int3   
   180080476:	cc                   	int3   
   180080477:	cc                   	int3   
   180080478:	cc                   	int3   
   180080479:	cc                   	int3   
   18008047a:	cc                   	int3   
   18008047b:	cc                   	int3   
   18008047c:	cc                   	int3   
   18008047d:	cc                   	int3   
   18008047e:	cc                   	int3   
   18008047f:	cc                   	int3   
   180080480:	cc                   	int3   
   180080481:	cc                   	int3   
   180080482:	cc                   	int3   
   180080483:	cc                   	int3   
   180080484:	cc                   	int3   
   180080485:	cc                   	int3   
   180080486:	cc                   	int3   
   180080487:	cc                   	int3   
   180080488:	cc                   	int3   
   180080489:	cc                   	int3   
   18008048a:	cc                   	int3   
   18008048b:	cc                   	int3   
   18008048c:	cc                   	int3   
   18008048d:	cc                   	int3   
   18008048e:	cc                   	int3   
   18008048f:	cc                   	int3   
   180080490:	cc                   	int3   
   180080491:	cc                   	int3   
   180080492:	cc                   	int3   
   180080493:	cc                   	int3   
   180080494:	cc                   	int3   
   180080495:	cc                   	int3   
   180080496:	cc                   	int3   
   180080497:	cc                   	int3   
   180080498:	cc                   	int3   
   180080499:	cc                   	int3   
   18008049a:	cc                   	int3   
   18008049b:	cc                   	int3   
   18008049c:	cc                   	int3   
   18008049d:	cc                   	int3   
   18008049e:	cc                   	int3   
   18008049f:	cc                   	int3   
   1800804a0:	cc                   	int3   
   1800804a1:	cc                   	int3   
   1800804a2:	cc                   	int3   
   1800804a3:	cc                   	int3   
   1800804a4:	cc                   	int3   
   1800804a5:	cc                   	int3   
   1800804a6:	cc                   	int3   
   1800804a7:	cc                   	int3   
   1800804a8:	cc                   	int3   
   1800804a9:	cc                   	int3   
   1800804aa:	cc                   	int3   
   1800804ab:	cc                   	int3   
   1800804ac:	cc                   	int3   
   1800804ad:	cc                   	int3   
   1800804ae:	cc                   	int3   
   1800804af:	cc                   	int3   
   1800804b0:	cc                   	int3   
   1800804b1:	cc                   	int3   
   1800804b2:	cc                   	int3   
   1800804b3:	cc                   	int3   
   1800804b4:	cc                   	int3   
   1800804b5:	cc                   	int3   
   1800804b6:	cc                   	int3   
   1800804b7:	cc                   	int3   
   1800804b8:	cc                   	int3   
   1800804b9:	cc                   	int3   
   1800804ba:	cc                   	int3   
   1800804bb:	cc                   	int3   
   1800804bc:	cc                   	int3   
   1800804bd:	cc                   	int3   
   1800804be:	cc                   	int3   
   1800804bf:	cc                   	int3   
   1800804c0:	cc                   	int3   
   1800804c1:	cc                   	int3   
   1800804c2:	cc                   	int3   
   1800804c3:	cc                   	int3   
   1800804c4:	cc                   	int3   
   1800804c5:	cc                   	int3   
   1800804c6:	cc                   	int3   
   1800804c7:	cc                   	int3   
   1800804c8:	cc                   	int3   
   1800804c9:	cc                   	int3   
   1800804ca:	cc                   	int3   
   1800804cb:	cc                   	int3   
   1800804cc:	cc                   	int3   
   1800804cd:	cc                   	int3   
   1800804ce:	cc                   	int3   
   1800804cf:	cc                   	int3   
   1800804d0:	cc                   	int3   
   1800804d1:	cc                   	int3   
   1800804d2:	cc                   	int3   
   1800804d3:	cc                   	int3   
   1800804d4:	cc                   	int3   
   1800804d5:	cc                   	int3   
   1800804d6:	cc                   	int3   
   1800804d7:	cc                   	int3   
   1800804d8:	cc                   	int3   
   1800804d9:	cc                   	int3   
   1800804da:	cc                   	int3   
   1800804db:	cc                   	int3   
   1800804dc:	cc                   	int3   
   1800804dd:	cc                   	int3   
   1800804de:	cc                   	int3   
   1800804df:	cc                   	int3   
   1800804e0:	cc                   	int3   
   1800804e1:	cc                   	int3   
   1800804e2:	cc                   	int3   
   1800804e3:	cc                   	int3   
   1800804e4:	cc                   	int3   
   1800804e5:	cc                   	int3   
   1800804e6:	cc                   	int3   
   1800804e7:	cc                   	int3   
   1800804e8:	cc                   	int3   
   1800804e9:	cc                   	int3   
   1800804ea:	cc                   	int3   
   1800804eb:	cc                   	int3   
   1800804ec:	cc                   	int3   
   1800804ed:	cc                   	int3   
   1800804ee:	cc                   	int3   
   1800804ef:	cc                   	int3   
   1800804f0:	cc                   	int3   
   1800804f1:	cc                   	int3   
   1800804f2:	cc                   	int3   
   1800804f3:	cc                   	int3   
   1800804f4:	cc                   	int3   
   1800804f5:	cc                   	int3   
   1800804f6:	cc                   	int3   
   1800804f7:	cc                   	int3   
   1800804f8:	cc                   	int3   
   1800804f9:	cc                   	int3   
   1800804fa:	cc                   	int3   
   1800804fb:	cc                   	int3   
   1800804fc:	cc                   	int3   
   1800804fd:	cc                   	int3   
   1800804fe:	cc                   	int3   
   1800804ff:	cc                   	int3   
   180080500:	cc                   	int3   
   180080501:	cc                   	int3   
   180080502:	cc                   	int3   
   180080503:	cc                   	int3   
   180080504:	cc                   	int3   
   180080505:	cc                   	int3   
   180080506:	cc                   	int3   
   180080507:	cc                   	int3   
   180080508:	cc                   	int3   
   180080509:	cc                   	int3   
   18008050a:	cc                   	int3   
   18008050b:	cc                   	int3   
   18008050c:	cc                   	int3   
   18008050d:	cc                   	int3   
   18008050e:	cc                   	int3   
   18008050f:	cc                   	int3   
   180080510:	cc                   	int3   
   180080511:	cc                   	int3   
   180080512:	cc                   	int3   
   180080513:	cc                   	int3   
   180080514:	cc                   	int3   
   180080515:	cc                   	int3   
   180080516:	cc                   	int3   
   180080517:	cc                   	int3   
   180080518:	cc                   	int3   
   180080519:	cc                   	int3   
   18008051a:	cc                   	int3   
   18008051b:	cc                   	int3   
   18008051c:	cc                   	int3   
   18008051d:	cc                   	int3   
   18008051e:	cc                   	int3   
   18008051f:	cc                   	int3   
   180080520:	cc                   	int3   
   180080521:	cc                   	int3   
   180080522:	cc                   	int3   
   180080523:	cc                   	int3   
   180080524:	cc                   	int3   
   180080525:	cc                   	int3   
   180080526:	cc                   	int3   
   180080527:	cc                   	int3   
   180080528:	cc                   	int3   
   180080529:	cc                   	int3   
   18008052a:	cc                   	int3   
   18008052b:	cc                   	int3   
   18008052c:	cc                   	int3   
   18008052d:	cc                   	int3   
   18008052e:	cc                   	int3   
   18008052f:	cc                   	int3   
   180080530:	cc                   	int3   
   180080531:	cc                   	int3   
   180080532:	cc                   	int3   
   180080533:	cc                   	int3   
   180080534:	cc                   	int3   
   180080535:	cc                   	int3   
   180080536:	cc                   	int3   
   180080537:	cc                   	int3   
   180080538:	cc                   	int3   
   180080539:	cc                   	int3   
   18008053a:	cc                   	int3   
   18008053b:	cc                   	int3   
   18008053c:	cc                   	int3   
   18008053d:	cc                   	int3   
   18008053e:	cc                   	int3   
   18008053f:	cc                   	int3   
   180080540:	cc                   	int3   
   180080541:	cc                   	int3   
   180080542:	cc                   	int3   
   180080543:	cc                   	int3   
   180080544:	cc                   	int3   
   180080545:	cc                   	int3   
   180080546:	cc                   	int3   
   180080547:	cc                   	int3   
   180080548:	cc                   	int3   
   180080549:	cc                   	int3   
   18008054a:	cc                   	int3   
   18008054b:	cc                   	int3   
   18008054c:	cc                   	int3   
   18008054d:	cc                   	int3   
   18008054e:	cc                   	int3   
   18008054f:	cc                   	int3   
   180080550:	cc                   	int3   
   180080551:	cc                   	int3   
   180080552:	cc                   	int3   
   180080553:	cc                   	int3   
   180080554:	cc                   	int3   
   180080555:	cc                   	int3   
   180080556:	cc                   	int3   
   180080557:	cc                   	int3   
   180080558:	cc                   	int3   
   180080559:	cc                   	int3   
   18008055a:	cc                   	int3   
   18008055b:	cc                   	int3   
   18008055c:	cc                   	int3   
   18008055d:	cc                   	int3   
   18008055e:	cc                   	int3   
   18008055f:	cc                   	int3   
   180080560:	cc                   	int3   
   180080561:	cc                   	int3   
   180080562:	cc                   	int3   
   180080563:	cc                   	int3   
   180080564:	cc                   	int3   
   180080565:	cc                   	int3   
   180080566:	cc                   	int3   
   180080567:	cc                   	int3   
   180080568:	cc                   	int3   
   180080569:	cc                   	int3   
   18008056a:	cc                   	int3   
   18008056b:	cc                   	int3   
   18008056c:	cc                   	int3   
   18008056d:	cc                   	int3   
   18008056e:	cc                   	int3   
   18008056f:	cc                   	int3   
   180080570:	cc                   	int3   
   180080571:	cc                   	int3   
   180080572:	cc                   	int3   
   180080573:	cc                   	int3   
   180080574:	cc                   	int3   
   180080575:	cc                   	int3   
   180080576:	cc                   	int3   
   180080577:	cc                   	int3   
   180080578:	cc                   	int3   
   180080579:	cc                   	int3   
   18008057a:	cc                   	int3   
   18008057b:	cc                   	int3   
   18008057c:	cc                   	int3   
   18008057d:	cc                   	int3   
   18008057e:	cc                   	int3   
   18008057f:	cc                   	int3   
   180080580:	cc                   	int3   
   180080581:	cc                   	int3   
   180080582:	cc                   	int3   
   180080583:	cc                   	int3   
   180080584:	cc                   	int3   
   180080585:	cc                   	int3   
   180080586:	cc                   	int3   
   180080587:	cc                   	int3   
   180080588:	cc                   	int3   
   180080589:	cc                   	int3   
   18008058a:	cc                   	int3   
   18008058b:	cc                   	int3   
   18008058c:	cc                   	int3   
   18008058d:	cc                   	int3   
   18008058e:	cc                   	int3   
   18008058f:	cc                   	int3   
   180080590:	cc                   	int3   
   180080591:	cc                   	int3   
   180080592:	cc                   	int3   
   180080593:	cc                   	int3   
   180080594:	cc                   	int3   
   180080595:	cc                   	int3   
   180080596:	cc                   	int3   
   180080597:	cc                   	int3   
   180080598:	cc                   	int3   
   180080599:	cc                   	int3   
   18008059a:	cc                   	int3   
   18008059b:	cc                   	int3   
   18008059c:	cc                   	int3   
   18008059d:	cc                   	int3   
   18008059e:	cc                   	int3   
   18008059f:	cc                   	int3   
   1800805a0:	cc                   	int3   
   1800805a1:	cc                   	int3   
   1800805a2:	cc                   	int3   
   1800805a3:	cc                   	int3   
   1800805a4:	cc                   	int3   
   1800805a5:	cc                   	int3   
   1800805a6:	cc                   	int3   
   1800805a7:	cc                   	int3   
   1800805a8:	cc                   	int3   
   1800805a9:	cc                   	int3   
   1800805aa:	cc                   	int3   
   1800805ab:	cc                   	int3   
   1800805ac:	cc                   	int3   
   1800805ad:	cc                   	int3   
   1800805ae:	cc                   	int3   
   1800805af:	cc                   	int3   
   1800805b0:	cc                   	int3   
   1800805b1:	cc                   	int3   
   1800805b2:	cc                   	int3   
   1800805b3:	cc                   	int3   
   1800805b4:	cc                   	int3   
   1800805b5:	cc                   	int3   
   1800805b6:	cc                   	int3   
   1800805b7:	cc                   	int3   
   1800805b8:	cc                   	int3   
   1800805b9:	cc                   	int3   
   1800805ba:	cc                   	int3   
   1800805bb:	cc                   	int3   
   1800805bc:	cc                   	int3   
   1800805bd:	cc                   	int3   
   1800805be:	cc                   	int3   
   1800805bf:	cc                   	int3   
   1800805c0:	cc                   	int3   
   1800805c1:	cc                   	int3   
   1800805c2:	cc                   	int3   
   1800805c3:	cc                   	int3   
   1800805c4:	cc                   	int3   
   1800805c5:	cc                   	int3   
   1800805c6:	cc                   	int3   
   1800805c7:	cc                   	int3   
   1800805c8:	cc                   	int3   
   1800805c9:	cc                   	int3   
   1800805ca:	cc                   	int3   
   1800805cb:	cc                   	int3   
   1800805cc:	cc                   	int3   
   1800805cd:	cc                   	int3   
   1800805ce:	cc                   	int3   
   1800805cf:	cc                   	int3   
   1800805d0:	cc                   	int3   
   1800805d1:	cc                   	int3   
   1800805d2:	cc                   	int3   
   1800805d3:	cc                   	int3   
   1800805d4:	cc                   	int3   
   1800805d5:	cc                   	int3   
   1800805d6:	cc                   	int3   
   1800805d7:	cc                   	int3   
   1800805d8:	cc                   	int3   
   1800805d9:	cc                   	int3   
   1800805da:	cc                   	int3   
   1800805db:	cc                   	int3   
   1800805dc:	cc                   	int3   
   1800805dd:	cc                   	int3   
   1800805de:	cc                   	int3   
   1800805df:	cc                   	int3   
   1800805e0:	cc                   	int3   
   1800805e1:	cc                   	int3   
   1800805e2:	cc                   	int3   
   1800805e3:	cc                   	int3   
   1800805e4:	cc                   	int3   
   1800805e5:	cc                   	int3   
   1800805e6:	cc                   	int3   
   1800805e7:	cc                   	int3   
   1800805e8:	cc                   	int3   
   1800805e9:	cc                   	int3   
   1800805ea:	cc                   	int3   
   1800805eb:	cc                   	int3   
   1800805ec:	cc                   	int3   
   1800805ed:	cc                   	int3   
   1800805ee:	cc                   	int3   
   1800805ef:	cc                   	int3   
   1800805f0:	cc                   	int3   
   1800805f1:	cc                   	int3   
   1800805f2:	cc                   	int3   
   1800805f3:	cc                   	int3   
   1800805f4:	cc                   	int3   
   1800805f5:	cc                   	int3   
   1800805f6:	cc                   	int3   
   1800805f7:	cc                   	int3   
   1800805f8:	cc                   	int3   
   1800805f9:	cc                   	int3   
   1800805fa:	cc                   	int3   
   1800805fb:	cc                   	int3   
   1800805fc:	cc                   	int3   
   1800805fd:	cc                   	int3   
   1800805fe:	cc                   	int3   
   1800805ff:	cc                   	int3   
   180080600:	cc                   	int3   
   180080601:	cc                   	int3   
   180080602:	cc                   	int3   
   180080603:	cc                   	int3   
   180080604:	cc                   	int3   
   180080605:	cc                   	int3   
   180080606:	cc                   	int3   
   180080607:	cc                   	int3   
   180080608:	cc                   	int3   
   180080609:	cc                   	int3   
   18008060a:	cc                   	int3   
   18008060b:	cc                   	int3   
   18008060c:	cc                   	int3   
   18008060d:	cc                   	int3   
   18008060e:	cc                   	int3   
   18008060f:	cc                   	int3   
   180080610:	cc                   	int3   
   180080611:	cc                   	int3   
   180080612:	cc                   	int3   
   180080613:	cc                   	int3   
   180080614:	cc                   	int3   
   180080615:	cc                   	int3   
   180080616:	cc                   	int3   
   180080617:	cc                   	int3   
   180080618:	cc                   	int3   
   180080619:	cc                   	int3   
   18008061a:	cc                   	int3   
   18008061b:	cc                   	int3   
   18008061c:	cc                   	int3   
   18008061d:	cc                   	int3   
   18008061e:	cc                   	int3   
   18008061f:	cc                   	int3   
   180080620:	cc                   	int3   
   180080621:	cc                   	int3   
   180080622:	cc                   	int3   
   180080623:	cc                   	int3   
   180080624:	cc                   	int3   
   180080625:	cc                   	int3   
   180080626:	cc                   	int3   
   180080627:	cc                   	int3   
   180080628:	cc                   	int3   
   180080629:	cc                   	int3   
   18008062a:	cc                   	int3   
   18008062b:	cc                   	int3   
   18008062c:	cc                   	int3   
   18008062d:	cc                   	int3   
   18008062e:	cc                   	int3   
   18008062f:	cc                   	int3   
   180080630:	cc                   	int3   
   180080631:	cc                   	int3   
   180080632:	cc                   	int3   
   180080633:	cc                   	int3   
   180080634:	cc                   	int3   
   180080635:	cc                   	int3   
   180080636:	cc                   	int3   
   180080637:	cc                   	int3   
   180080638:	cc                   	int3   
   180080639:	cc                   	int3   
   18008063a:	cc                   	int3   
   18008063b:	cc                   	int3   
   18008063c:	cc                   	int3   
   18008063d:	cc                   	int3   
   18008063e:	cc                   	int3   
   18008063f:	cc                   	int3   
   180080640:	cc                   	int3   
   180080641:	cc                   	int3   
   180080642:	cc                   	int3   
   180080643:	cc                   	int3   
   180080644:	cc                   	int3   
   180080645:	cc                   	int3   
   180080646:	cc                   	int3   
   180080647:	cc                   	int3   
   180080648:	cc                   	int3   
   180080649:	cc                   	int3   
   18008064a:	cc                   	int3   
   18008064b:	cc                   	int3   
   18008064c:	cc                   	int3   
   18008064d:	cc                   	int3   
   18008064e:	cc                   	int3   
   18008064f:	cc                   	int3   
   180080650:	cc                   	int3   
   180080651:	cc                   	int3   
   180080652:	cc                   	int3   
   180080653:	cc                   	int3   
   180080654:	cc                   	int3   
   180080655:	cc                   	int3   
   180080656:	cc                   	int3   
   180080657:	cc                   	int3   
   180080658:	cc                   	int3   
   180080659:	cc                   	int3   
   18008065a:	cc                   	int3   
   18008065b:	cc                   	int3   
   18008065c:	cc                   	int3   
   18008065d:	cc                   	int3   
   18008065e:	cc                   	int3   
   18008065f:	cc                   	int3   
   180080660:	cc                   	int3   
   180080661:	cc                   	int3   
   180080662:	cc                   	int3   
   180080663:	cc                   	int3   
   180080664:	cc                   	int3   
   180080665:	cc                   	int3   
   180080666:	cc                   	int3   
   180080667:	cc                   	int3   
   180080668:	cc                   	int3   
   180080669:	cc                   	int3   
   18008066a:	cc                   	int3   
   18008066b:	cc                   	int3   
   18008066c:	cc                   	int3   
   18008066d:	cc                   	int3   
   18008066e:	cc                   	int3   
   18008066f:	cc                   	int3   
   180080670:	cc                   	int3   
   180080671:	cc                   	int3   
   180080672:	cc                   	int3   
   180080673:	cc                   	int3   
   180080674:	cc                   	int3   
   180080675:	cc                   	int3   
   180080676:	cc                   	int3   
   180080677:	cc                   	int3   
   180080678:	cc                   	int3   
   180080679:	cc                   	int3   
   18008067a:	cc                   	int3   
   18008067b:	cc                   	int3   
   18008067c:	cc                   	int3   
   18008067d:	cc                   	int3   
   18008067e:	cc                   	int3   
   18008067f:	cc                   	int3   
   180080680:	cc                   	int3   
   180080681:	cc                   	int3   
   180080682:	cc                   	int3   
   180080683:	cc                   	int3   
   180080684:	cc                   	int3   
   180080685:	cc                   	int3   
   180080686:	cc                   	int3   
   180080687:	cc                   	int3   
   180080688:	cc                   	int3   
   180080689:	cc                   	int3   
   18008068a:	cc                   	int3   
   18008068b:	cc                   	int3   
   18008068c:	cc                   	int3   
   18008068d:	cc                   	int3   
   18008068e:	cc                   	int3   
   18008068f:	cc                   	int3   
   180080690:	cc                   	int3   
   180080691:	cc                   	int3   
   180080692:	cc                   	int3   
   180080693:	cc                   	int3   
   180080694:	cc                   	int3   
   180080695:	cc                   	int3   
   180080696:	cc                   	int3   
   180080697:	cc                   	int3   
   180080698:	cc                   	int3   
   180080699:	cc                   	int3   
   18008069a:	cc                   	int3   
   18008069b:	cc                   	int3   
   18008069c:	cc                   	int3   
   18008069d:	cc                   	int3   
   18008069e:	cc                   	int3   
   18008069f:	cc                   	int3   
   1800806a0:	cc                   	int3   
   1800806a1:	cc                   	int3   
   1800806a2:	cc                   	int3   
   1800806a3:	cc                   	int3   
   1800806a4:	cc                   	int3   
   1800806a5:	cc                   	int3   
   1800806a6:	cc                   	int3   
   1800806a7:	cc                   	int3   
   1800806a8:	cc                   	int3   
   1800806a9:	cc                   	int3   
   1800806aa:	cc                   	int3   
   1800806ab:	cc                   	int3   
   1800806ac:	cc                   	int3   
   1800806ad:	cc                   	int3   
   1800806ae:	cc                   	int3   
   1800806af:	cc                   	int3   
   1800806b0:	cc                   	int3   
   1800806b1:	cc                   	int3   
   1800806b2:	cc                   	int3   
   1800806b3:	cc                   	int3   
   1800806b4:	cc                   	int3   
   1800806b5:	cc                   	int3   
   1800806b6:	cc                   	int3   
   1800806b7:	cc                   	int3   
   1800806b8:	cc                   	int3   
   1800806b9:	cc                   	int3   
   1800806ba:	cc                   	int3   
   1800806bb:	cc                   	int3   
   1800806bc:	cc                   	int3   
   1800806bd:	cc                   	int3   
   1800806be:	cc                   	int3   
   1800806bf:	cc                   	int3   
   1800806c0:	cc                   	int3   
   1800806c1:	cc                   	int3   
   1800806c2:	cc                   	int3   
   1800806c3:	cc                   	int3   
   1800806c4:	cc                   	int3   
   1800806c5:	cc                   	int3   
   1800806c6:	cc                   	int3   
   1800806c7:	cc                   	int3   
   1800806c8:	cc                   	int3   
   1800806c9:	cc                   	int3   
   1800806ca:	cc                   	int3   
   1800806cb:	cc                   	int3   
   1800806cc:	cc                   	int3   
   1800806cd:	cc                   	int3   
   1800806ce:	cc                   	int3   
   1800806cf:	cc                   	int3   
   1800806d0:	cc                   	int3   
   1800806d1:	cc                   	int3   
   1800806d2:	cc                   	int3   
   1800806d3:	cc                   	int3   
   1800806d4:	cc                   	int3   
   1800806d5:	cc                   	int3   
   1800806d6:	cc                   	int3   
   1800806d7:	cc                   	int3   
   1800806d8:	cc                   	int3   
   1800806d9:	cc                   	int3   
   1800806da:	cc                   	int3   
   1800806db:	cc                   	int3   
   1800806dc:	cc                   	int3   
   1800806dd:	cc                   	int3   
   1800806de:	cc                   	int3   
   1800806df:	cc                   	int3   
   1800806e0:	cc                   	int3   
   1800806e1:	cc                   	int3   
   1800806e2:	cc                   	int3   
   1800806e3:	cc                   	int3   
   1800806e4:	cc                   	int3   
   1800806e5:	cc                   	int3   
   1800806e6:	cc                   	int3   
   1800806e7:	cc                   	int3   
   1800806e8:	cc                   	int3   
   1800806e9:	cc                   	int3   
   1800806ea:	cc                   	int3   
   1800806eb:	cc                   	int3   
   1800806ec:	cc                   	int3   
   1800806ed:	cc                   	int3   
   1800806ee:	cc                   	int3   
   1800806ef:	cc                   	int3   
   1800806f0:	cc                   	int3   
   1800806f1:	cc                   	int3   
   1800806f2:	cc                   	int3   
   1800806f3:	cc                   	int3   
   1800806f4:	cc                   	int3   
   1800806f5:	cc                   	int3   
   1800806f6:	cc                   	int3   
   1800806f7:	cc                   	int3   
   1800806f8:	cc                   	int3   
   1800806f9:	cc                   	int3   
   1800806fa:	cc                   	int3   
   1800806fb:	cc                   	int3   
   1800806fc:	cc                   	int3   
   1800806fd:	cc                   	int3   
   1800806fe:	cc                   	int3   
   1800806ff:	cc                   	int3   
   180080700:	cc                   	int3   
   180080701:	cc                   	int3   
   180080702:	cc                   	int3   
   180080703:	cc                   	int3   
   180080704:	cc                   	int3   
   180080705:	cc                   	int3   
   180080706:	cc                   	int3   
   180080707:	cc                   	int3   
   180080708:	cc                   	int3   
   180080709:	cc                   	int3   
   18008070a:	cc                   	int3   
   18008070b:	cc                   	int3   
   18008070c:	cc                   	int3   
   18008070d:	cc                   	int3   
   18008070e:	cc                   	int3   
   18008070f:	cc                   	int3   
   180080710:	cc                   	int3   
   180080711:	cc                   	int3   
   180080712:	cc                   	int3   
   180080713:	cc                   	int3   
   180080714:	cc                   	int3   
   180080715:	cc                   	int3   
   180080716:	cc                   	int3   
   180080717:	cc                   	int3   
   180080718:	cc                   	int3   
   180080719:	cc                   	int3   
   18008071a:	cc                   	int3   
   18008071b:	cc                   	int3   
   18008071c:	cc                   	int3   
   18008071d:	cc                   	int3   
   18008071e:	cc                   	int3   
   18008071f:	cc                   	int3   
   180080720:	cc                   	int3   
   180080721:	cc                   	int3   
   180080722:	cc                   	int3   
   180080723:	cc                   	int3   
   180080724:	cc                   	int3   
   180080725:	cc                   	int3   
   180080726:	cc                   	int3   
   180080727:	cc                   	int3   
   180080728:	cc                   	int3   
   180080729:	cc                   	int3   
   18008072a:	cc                   	int3   
   18008072b:	cc                   	int3   
   18008072c:	cc                   	int3   
   18008072d:	cc                   	int3   
   18008072e:	cc                   	int3   
   18008072f:	cc                   	int3   
   180080730:	cc                   	int3   
   180080731:	cc                   	int3   
   180080732:	cc                   	int3   
   180080733:	cc                   	int3   
   180080734:	cc                   	int3   
   180080735:	cc                   	int3   
   180080736:	cc                   	int3   
   180080737:	cc                   	int3   
   180080738:	cc                   	int3   
   180080739:	cc                   	int3   
   18008073a:	cc                   	int3   
   18008073b:	cc                   	int3   
   18008073c:	cc                   	int3   
   18008073d:	cc                   	int3   
   18008073e:	cc                   	int3   
   18008073f:	cc                   	int3   
   180080740:	cc                   	int3   
   180080741:	cc                   	int3   
   180080742:	cc                   	int3   
   180080743:	cc                   	int3   
   180080744:	cc                   	int3   
   180080745:	cc                   	int3   
   180080746:	cc                   	int3   
   180080747:	cc                   	int3   
   180080748:	cc                   	int3   
   180080749:	cc                   	int3   
   18008074a:	cc                   	int3   
   18008074b:	cc                   	int3   
   18008074c:	cc                   	int3   
   18008074d:	cc                   	int3   
   18008074e:	cc                   	int3   
   18008074f:	cc                   	int3   
   180080750:	cc                   	int3   
   180080751:	cc                   	int3   
   180080752:	cc                   	int3   
   180080753:	cc                   	int3   
   180080754:	cc                   	int3   
   180080755:	cc                   	int3   
   180080756:	cc                   	int3   
   180080757:	cc                   	int3   
   180080758:	cc                   	int3   
   180080759:	cc                   	int3   
   18008075a:	cc                   	int3   
   18008075b:	cc                   	int3   
   18008075c:	cc                   	int3   
   18008075d:	cc                   	int3   
   18008075e:	cc                   	int3   
   18008075f:	cc                   	int3   
   180080760:	cc                   	int3   
   180080761:	cc                   	int3   
   180080762:	cc                   	int3   
   180080763:	cc                   	int3   
   180080764:	cc                   	int3   
   180080765:	cc                   	int3   
   180080766:	cc                   	int3   
   180080767:	cc                   	int3   
   180080768:	cc                   	int3   
   180080769:	cc                   	int3   
   18008076a:	cc                   	int3   
   18008076b:	cc                   	int3   
   18008076c:	cc                   	int3   
   18008076d:	cc                   	int3   
   18008076e:	cc                   	int3   
   18008076f:	cc                   	int3   
   180080770:	cc                   	int3   
   180080771:	cc                   	int3   
   180080772:	cc                   	int3   
   180080773:	cc                   	int3   
   180080774:	cc                   	int3   
   180080775:	cc                   	int3   
   180080776:	cc                   	int3   
   180080777:	cc                   	int3   
   180080778:	cc                   	int3   
   180080779:	cc                   	int3   
   18008077a:	cc                   	int3   
   18008077b:	cc                   	int3   
   18008077c:	cc                   	int3   
   18008077d:	cc                   	int3   
   18008077e:	cc                   	int3   
   18008077f:	cc                   	int3   
   180080780:	cc                   	int3   
   180080781:	cc                   	int3   
   180080782:	cc                   	int3   
   180080783:	cc                   	int3   
   180080784:	cc                   	int3   
   180080785:	cc                   	int3   
   180080786:	cc                   	int3   
   180080787:	cc                   	int3   
   180080788:	cc                   	int3   
   180080789:	cc                   	int3   
   18008078a:	cc                   	int3   
   18008078b:	cc                   	int3   
   18008078c:	cc                   	int3   
   18008078d:	cc                   	int3   
   18008078e:	cc                   	int3   
   18008078f:	cc                   	int3   
   180080790:	cc                   	int3   
   180080791:	cc                   	int3   
   180080792:	cc                   	int3   
   180080793:	cc                   	int3   
   180080794:	cc                   	int3   
   180080795:	cc                   	int3   
   180080796:	cc                   	int3   
   180080797:	cc                   	int3   
   180080798:	cc                   	int3   
   180080799:	cc                   	int3   
   18008079a:	cc                   	int3   
   18008079b:	cc                   	int3   
   18008079c:	cc                   	int3   
   18008079d:	cc                   	int3   
   18008079e:	cc                   	int3   
   18008079f:	cc                   	int3   
   1800807a0:	cc                   	int3   
   1800807a1:	cc                   	int3   
   1800807a2:	cc                   	int3   
   1800807a3:	cc                   	int3   
   1800807a4:	cc                   	int3   
   1800807a5:	cc                   	int3   
   1800807a6:	cc                   	int3   
   1800807a7:	cc                   	int3   
   1800807a8:	cc                   	int3   
   1800807a9:	cc                   	int3   
   1800807aa:	cc                   	int3   
   1800807ab:	cc                   	int3   
   1800807ac:	cc                   	int3   
   1800807ad:	cc                   	int3   
   1800807ae:	cc                   	int3   
   1800807af:	cc                   	int3   
   1800807b0:	cc                   	int3   
   1800807b1:	cc                   	int3   
   1800807b2:	cc                   	int3   
   1800807b3:	cc                   	int3   
   1800807b4:	cc                   	int3   
   1800807b5:	cc                   	int3   
   1800807b6:	cc                   	int3   
   1800807b7:	cc                   	int3   
   1800807b8:	cc                   	int3   
   1800807b9:	cc                   	int3   
   1800807ba:	cc                   	int3   
   1800807bb:	cc                   	int3   
   1800807bc:	cc                   	int3   
   1800807bd:	cc                   	int3   
   1800807be:	cc                   	int3   
   1800807bf:	cc                   	int3   
   1800807c0:	cc                   	int3   
   1800807c1:	cc                   	int3   
   1800807c2:	cc                   	int3   
   1800807c3:	cc                   	int3   
   1800807c4:	cc                   	int3   
   1800807c5:	cc                   	int3   
   1800807c6:	cc                   	int3   
   1800807c7:	cc                   	int3   
   1800807c8:	cc                   	int3   
   1800807c9:	cc                   	int3   
   1800807ca:	cc                   	int3   
   1800807cb:	cc                   	int3   
   1800807cc:	cc                   	int3   
   1800807cd:	cc                   	int3   
   1800807ce:	cc                   	int3   
   1800807cf:	cc                   	int3   
   1800807d0:	cc                   	int3   
   1800807d1:	cc                   	int3   
   1800807d2:	cc                   	int3   
   1800807d3:	cc                   	int3   
   1800807d4:	cc                   	int3   
   1800807d5:	cc                   	int3   
   1800807d6:	cc                   	int3   
   1800807d7:	cc                   	int3   
   1800807d8:	cc                   	int3   
   1800807d9:	cc                   	int3   
   1800807da:	cc                   	int3   
   1800807db:	cc                   	int3   
   1800807dc:	cc                   	int3   
   1800807dd:	cc                   	int3   
   1800807de:	cc                   	int3   
   1800807df:	cc                   	int3   
   1800807e0:	cc                   	int3   
   1800807e1:	cc                   	int3   
   1800807e2:	cc                   	int3   
   1800807e3:	cc                   	int3   
   1800807e4:	cc                   	int3   
   1800807e5:	cc                   	int3   
   1800807e6:	cc                   	int3   
   1800807e7:	cc                   	int3   
   1800807e8:	cc                   	int3   
   1800807e9:	cc                   	int3   
   1800807ea:	cc                   	int3   
   1800807eb:	cc                   	int3   
   1800807ec:	cc                   	int3   
   1800807ed:	cc                   	int3   
   1800807ee:	cc                   	int3   
   1800807ef:	cc                   	int3   
   1800807f0:	cc                   	int3   
   1800807f1:	cc                   	int3   
   1800807f2:	cc                   	int3   
   1800807f3:	cc                   	int3   
   1800807f4:	cc                   	int3   
   1800807f5:	cc                   	int3   
   1800807f6:	cc                   	int3   
   1800807f7:	cc                   	int3   
   1800807f8:	cc                   	int3   
   1800807f9:	cc                   	int3   
   1800807fa:	cc                   	int3   
   1800807fb:	cc                   	int3   
   1800807fc:	cc                   	int3   
   1800807fd:	cc                   	int3   
   1800807fe:	cc                   	int3   
   1800807ff:	cc                   	int3   
   180080800:	cc                   	int3   
   180080801:	cc                   	int3   
   180080802:	cc                   	int3   
   180080803:	cc                   	int3   
   180080804:	cc                   	int3   
   180080805:	cc                   	int3   
   180080806:	cc                   	int3   
   180080807:	cc                   	int3   
   180080808:	cc                   	int3   
   180080809:	cc                   	int3   
   18008080a:	cc                   	int3   
   18008080b:	cc                   	int3   
   18008080c:	cc                   	int3   
   18008080d:	cc                   	int3   
   18008080e:	cc                   	int3   
   18008080f:	cc                   	int3   
   180080810:	cc                   	int3   
   180080811:	cc                   	int3   
   180080812:	cc                   	int3   
   180080813:	cc                   	int3   
   180080814:	cc                   	int3   
   180080815:	cc                   	int3   
   180080816:	cc                   	int3   
   180080817:	cc                   	int3   
   180080818:	cc                   	int3   
   180080819:	cc                   	int3   
   18008081a:	cc                   	int3   
   18008081b:	cc                   	int3   
   18008081c:	cc                   	int3   
   18008081d:	cc                   	int3   
   18008081e:	cc                   	int3   
   18008081f:	cc                   	int3   
   180080820:	cc                   	int3   
   180080821:	cc                   	int3   
   180080822:	cc                   	int3   
   180080823:	cc                   	int3   
   180080824:	cc                   	int3   
   180080825:	cc                   	int3   
   180080826:	cc                   	int3   
   180080827:	cc                   	int3   
   180080828:	cc                   	int3   
   180080829:	cc                   	int3   
   18008082a:	cc                   	int3   
   18008082b:	cc                   	int3   
   18008082c:	cc                   	int3   
   18008082d:	cc                   	int3   
   18008082e:	cc                   	int3   
   18008082f:	cc                   	int3   
   180080830:	cc                   	int3   
   180080831:	cc                   	int3   
   180080832:	cc                   	int3   
   180080833:	cc                   	int3   
   180080834:	cc                   	int3   
   180080835:	cc                   	int3   
   180080836:	cc                   	int3   
   180080837:	cc                   	int3   
   180080838:	cc                   	int3   
   180080839:	cc                   	int3   
   18008083a:	cc                   	int3   
   18008083b:	cc                   	int3   
   18008083c:	cc                   	int3   
   18008083d:	cc                   	int3   
   18008083e:	cc                   	int3   
   18008083f:	cc                   	int3   
   180080840:	cc                   	int3   
   180080841:	cc                   	int3   
   180080842:	cc                   	int3   
   180080843:	cc                   	int3   
   180080844:	cc                   	int3   
   180080845:	cc                   	int3   
   180080846:	cc                   	int3   
   180080847:	cc                   	int3   
   180080848:	cc                   	int3   
   180080849:	cc                   	int3   
   18008084a:	cc                   	int3   
   18008084b:	cc                   	int3   
   18008084c:	cc                   	int3   
   18008084d:	cc                   	int3   
   18008084e:	cc                   	int3   
   18008084f:	cc                   	int3   
   180080850:	cc                   	int3   
   180080851:	cc                   	int3   
   180080852:	cc                   	int3   
   180080853:	cc                   	int3   
   180080854:	cc                   	int3   
   180080855:	cc                   	int3   
   180080856:	cc                   	int3   
   180080857:	cc                   	int3   
   180080858:	cc                   	int3   
   180080859:	cc                   	int3   
   18008085a:	cc                   	int3   
   18008085b:	cc                   	int3   
   18008085c:	cc                   	int3   
   18008085d:	cc                   	int3   
   18008085e:	cc                   	int3   
   18008085f:	cc                   	int3   
   180080860:	cc                   	int3   
   180080861:	cc                   	int3   
   180080862:	cc                   	int3   
   180080863:	cc                   	int3   
   180080864:	cc                   	int3   
   180080865:	cc                   	int3   
   180080866:	cc                   	int3   
   180080867:	cc                   	int3   
   180080868:	cc                   	int3   
   180080869:	cc                   	int3   
   18008086a:	cc                   	int3   
   18008086b:	cc                   	int3   
   18008086c:	cc                   	int3   
   18008086d:	cc                   	int3   
   18008086e:	cc                   	int3   
   18008086f:	cc                   	int3   
   180080870:	cc                   	int3   
   180080871:	cc                   	int3   
   180080872:	cc                   	int3   
   180080873:	cc                   	int3   
   180080874:	cc                   	int3   
   180080875:	cc                   	int3   
   180080876:	cc                   	int3   
   180080877:	cc                   	int3   
   180080878:	cc                   	int3   
   180080879:	cc                   	int3   
   18008087a:	cc                   	int3   
   18008087b:	cc                   	int3   
   18008087c:	cc                   	int3   
   18008087d:	cc                   	int3   
   18008087e:	cc                   	int3   
   18008087f:	cc                   	int3   
   180080880:	cc                   	int3   
   180080881:	cc                   	int3   
   180080882:	cc                   	int3   
   180080883:	cc                   	int3   
   180080884:	cc                   	int3   
   180080885:	cc                   	int3   
   180080886:	cc                   	int3   
   180080887:	cc                   	int3   
   180080888:	cc                   	int3   
   180080889:	cc                   	int3   
   18008088a:	cc                   	int3   
   18008088b:	cc                   	int3   
   18008088c:	cc                   	int3   
   18008088d:	cc                   	int3   
   18008088e:	cc                   	int3   
   18008088f:	cc                   	int3   
   180080890:	cc                   	int3   
   180080891:	cc                   	int3   
   180080892:	cc                   	int3   
   180080893:	cc                   	int3   
   180080894:	cc                   	int3   
   180080895:	cc                   	int3   
   180080896:	cc                   	int3   
   180080897:	cc                   	int3   
   180080898:	cc                   	int3   
   180080899:	cc                   	int3   
   18008089a:	cc                   	int3   
   18008089b:	cc                   	int3   
   18008089c:	cc                   	int3   
   18008089d:	cc                   	int3   
   18008089e:	cc                   	int3   
   18008089f:	cc                   	int3   
   1800808a0:	cc                   	int3   
   1800808a1:	cc                   	int3   
   1800808a2:	cc                   	int3   
   1800808a3:	cc                   	int3   
   1800808a4:	cc                   	int3   
   1800808a5:	cc                   	int3   
   1800808a6:	cc                   	int3   
   1800808a7:	cc                   	int3   
   1800808a8:	cc                   	int3   
   1800808a9:	cc                   	int3   
   1800808aa:	cc                   	int3   
   1800808ab:	cc                   	int3   
   1800808ac:	cc                   	int3   
   1800808ad:	cc                   	int3   
   1800808ae:	cc                   	int3   
   1800808af:	cc                   	int3   
   1800808b0:	cc                   	int3   
   1800808b1:	cc                   	int3   
   1800808b2:	cc                   	int3   
   1800808b3:	cc                   	int3   
   1800808b4:	cc                   	int3   
   1800808b5:	cc                   	int3   
   1800808b6:	cc                   	int3   
   1800808b7:	cc                   	int3   
   1800808b8:	cc                   	int3   
   1800808b9:	cc                   	int3   
   1800808ba:	cc                   	int3   
   1800808bb:	cc                   	int3   
   1800808bc:	cc                   	int3   
   1800808bd:	cc                   	int3   
   1800808be:	cc                   	int3   
   1800808bf:	cc                   	int3   
   1800808c0:	cc                   	int3   
   1800808c1:	cc                   	int3   
   1800808c2:	cc                   	int3   
   1800808c3:	cc                   	int3   
   1800808c4:	cc                   	int3   
   1800808c5:	cc                   	int3   
   1800808c6:	cc                   	int3   
   1800808c7:	cc                   	int3   
   1800808c8:	cc                   	int3   
   1800808c9:	cc                   	int3   
   1800808ca:	cc                   	int3   
   1800808cb:	cc                   	int3   
   1800808cc:	cc                   	int3   
   1800808cd:	cc                   	int3   
   1800808ce:	cc                   	int3   
   1800808cf:	cc                   	int3   
   1800808d0:	cc                   	int3   
   1800808d1:	cc                   	int3   
   1800808d2:	cc                   	int3   
   1800808d3:	cc                   	int3   
   1800808d4:	cc                   	int3   
   1800808d5:	cc                   	int3   
   1800808d6:	cc                   	int3   
   1800808d7:	cc                   	int3   
   1800808d8:	cc                   	int3   
   1800808d9:	cc                   	int3   
   1800808da:	cc                   	int3   
   1800808db:	cc                   	int3   
   1800808dc:	cc                   	int3   
   1800808dd:	cc                   	int3   
   1800808de:	cc                   	int3   
   1800808df:	cc                   	int3   
   1800808e0:	cc                   	int3   
   1800808e1:	cc                   	int3   
   1800808e2:	cc                   	int3   
   1800808e3:	cc                   	int3   
   1800808e4:	cc                   	int3   
   1800808e5:	cc                   	int3   
   1800808e6:	cc                   	int3   
   1800808e7:	cc                   	int3   
   1800808e8:	cc                   	int3   
   1800808e9:	cc                   	int3   
   1800808ea:	cc                   	int3   
   1800808eb:	cc                   	int3   
   1800808ec:	cc                   	int3   
   1800808ed:	cc                   	int3   
   1800808ee:	cc                   	int3   
   1800808ef:	cc                   	int3   
   1800808f0:	cc                   	int3   
   1800808f1:	cc                   	int3   
   1800808f2:	cc                   	int3   
   1800808f3:	cc                   	int3   
   1800808f4:	cc                   	int3   
   1800808f5:	cc                   	int3   
   1800808f6:	cc                   	int3   
   1800808f7:	cc                   	int3   
   1800808f8:	cc                   	int3   
   1800808f9:	cc                   	int3   
   1800808fa:	cc                   	int3   
   1800808fb:	cc                   	int3   
   1800808fc:	cc                   	int3   
   1800808fd:	cc                   	int3   
   1800808fe:	cc                   	int3   
   1800808ff:	cc                   	int3   
   180080900:	cc                   	int3   
   180080901:	cc                   	int3   
   180080902:	cc                   	int3   
   180080903:	cc                   	int3   
   180080904:	cc                   	int3   
   180080905:	cc                   	int3   
   180080906:	cc                   	int3   
   180080907:	cc                   	int3   
   180080908:	cc                   	int3   
   180080909:	cc                   	int3   
   18008090a:	cc                   	int3   
   18008090b:	cc                   	int3   
   18008090c:	cc                   	int3   
   18008090d:	cc                   	int3   
   18008090e:	cc                   	int3   
   18008090f:	cc                   	int3   
   180080910:	cc                   	int3   
   180080911:	cc                   	int3   
   180080912:	cc                   	int3   
   180080913:	cc                   	int3   
   180080914:	cc                   	int3   
   180080915:	cc                   	int3   
   180080916:	cc                   	int3   
   180080917:	cc                   	int3   
   180080918:	cc                   	int3   
   180080919:	cc                   	int3   
   18008091a:	cc                   	int3   
   18008091b:	cc                   	int3   
   18008091c:	cc                   	int3   
   18008091d:	cc                   	int3   
   18008091e:	cc                   	int3   
   18008091f:	cc                   	int3   
   180080920:	cc                   	int3   
   180080921:	cc                   	int3   
   180080922:	cc                   	int3   
   180080923:	cc                   	int3   
   180080924:	cc                   	int3   
   180080925:	cc                   	int3   
   180080926:	cc                   	int3   
   180080927:	cc                   	int3   
   180080928:	cc                   	int3   
   180080929:	cc                   	int3   
   18008092a:	cc                   	int3   
   18008092b:	cc                   	int3   
   18008092c:	cc                   	int3   
   18008092d:	cc                   	int3   
   18008092e:	cc                   	int3   
   18008092f:	cc                   	int3   
   180080930:	cc                   	int3   
   180080931:	cc                   	int3   
   180080932:	cc                   	int3   
   180080933:	cc                   	int3   
   180080934:	cc                   	int3   
   180080935:	cc                   	int3   
   180080936:	cc                   	int3   
   180080937:	cc                   	int3   
   180080938:	cc                   	int3   
   180080939:	cc                   	int3   
   18008093a:	cc                   	int3   
   18008093b:	cc                   	int3   
   18008093c:	cc                   	int3   
   18008093d:	cc                   	int3   
   18008093e:	cc                   	int3   
   18008093f:	cc                   	int3   
   180080940:	cc                   	int3   
   180080941:	cc                   	int3   
   180080942:	cc                   	int3   
   180080943:	cc                   	int3   
   180080944:	cc                   	int3   
   180080945:	cc                   	int3   
   180080946:	cc                   	int3   
   180080947:	cc                   	int3   
   180080948:	cc                   	int3   
   180080949:	cc                   	int3   
   18008094a:	cc                   	int3   
   18008094b:	cc                   	int3   
   18008094c:	cc                   	int3   
   18008094d:	cc                   	int3   
   18008094e:	cc                   	int3   
   18008094f:	cc                   	int3   
   180080950:	cc                   	int3   
   180080951:	cc                   	int3   
   180080952:	cc                   	int3   
   180080953:	cc                   	int3   
   180080954:	cc                   	int3   
   180080955:	cc                   	int3   
   180080956:	cc                   	int3   
   180080957:	cc                   	int3   
   180080958:	cc                   	int3   
   180080959:	cc                   	int3   
   18008095a:	cc                   	int3   
   18008095b:	cc                   	int3   
   18008095c:	cc                   	int3   
   18008095d:	cc                   	int3   
   18008095e:	cc                   	int3   
   18008095f:	cc                   	int3   
   180080960:	cc                   	int3   
   180080961:	cc                   	int3   
   180080962:	cc                   	int3   
   180080963:	cc                   	int3   
   180080964:	cc                   	int3   
   180080965:	cc                   	int3   
   180080966:	cc                   	int3   
   180080967:	cc                   	int3   
   180080968:	cc                   	int3   
   180080969:	cc                   	int3   
   18008096a:	cc                   	int3   
   18008096b:	cc                   	int3   
   18008096c:	cc                   	int3   
   18008096d:	cc                   	int3   
   18008096e:	cc                   	int3   
   18008096f:	cc                   	int3   
   180080970:	cc                   	int3   
   180080971:	cc                   	int3   
   180080972:	cc                   	int3   
   180080973:	cc                   	int3   
   180080974:	cc                   	int3   
   180080975:	cc                   	int3   
   180080976:	cc                   	int3   
   180080977:	cc                   	int3   
   180080978:	cc                   	int3   
   180080979:	cc                   	int3   
   18008097a:	cc                   	int3   
   18008097b:	cc                   	int3   
   18008097c:	cc                   	int3   
   18008097d:	cc                   	int3   
   18008097e:	cc                   	int3   
   18008097f:	cc                   	int3   
   180080980:	cc                   	int3   
   180080981:	cc                   	int3   
   180080982:	cc                   	int3   
   180080983:	cc                   	int3   
   180080984:	cc                   	int3   
   180080985:	cc                   	int3   
   180080986:	cc                   	int3   
   180080987:	cc                   	int3   
   180080988:	cc                   	int3   
   180080989:	cc                   	int3   
   18008098a:	cc                   	int3   
   18008098b:	cc                   	int3   
   18008098c:	cc                   	int3   
   18008098d:	cc                   	int3   
   18008098e:	cc                   	int3   
   18008098f:	cc                   	int3   
   180080990:	cc                   	int3   
   180080991:	cc                   	int3   
   180080992:	cc                   	int3   
   180080993:	cc                   	int3   
   180080994:	cc                   	int3   
   180080995:	cc                   	int3   
   180080996:	cc                   	int3   
   180080997:	cc                   	int3   
   180080998:	cc                   	int3   
   180080999:	cc                   	int3   
   18008099a:	cc                   	int3   
   18008099b:	cc                   	int3   
   18008099c:	cc                   	int3   
   18008099d:	cc                   	int3   
   18008099e:	cc                   	int3   
   18008099f:	cc                   	int3   
   1800809a0:	cc                   	int3   
   1800809a1:	cc                   	int3   
   1800809a2:	cc                   	int3   
   1800809a3:	cc                   	int3   
   1800809a4:	cc                   	int3   
   1800809a5:	cc                   	int3   
   1800809a6:	cc                   	int3   
   1800809a7:	cc                   	int3   
   1800809a8:	cc                   	int3   
   1800809a9:	cc                   	int3   
   1800809aa:	cc                   	int3   
   1800809ab:	cc                   	int3   
   1800809ac:	cc                   	int3   
   1800809ad:	cc                   	int3   
   1800809ae:	cc                   	int3   
   1800809af:	cc                   	int3   
   1800809b0:	cc                   	int3   
   1800809b1:	cc                   	int3   
   1800809b2:	cc                   	int3   
   1800809b3:	cc                   	int3   
   1800809b4:	cc                   	int3   
   1800809b5:	cc                   	int3   
   1800809b6:	cc                   	int3   
   1800809b7:	cc                   	int3   
   1800809b8:	cc                   	int3   
   1800809b9:	cc                   	int3   
   1800809ba:	cc                   	int3   
   1800809bb:	cc                   	int3   
   1800809bc:	cc                   	int3   
   1800809bd:	cc                   	int3   
   1800809be:	cc                   	int3   
   1800809bf:	cc                   	int3   
   1800809c0:	cc                   	int3   
   1800809c1:	cc                   	int3   
   1800809c2:	cc                   	int3   
   1800809c3:	cc                   	int3   
   1800809c4:	cc                   	int3   
   1800809c5:	cc                   	int3   
   1800809c6:	cc                   	int3   
   1800809c7:	cc                   	int3   
   1800809c8:	cc                   	int3   
   1800809c9:	cc                   	int3   
   1800809ca:	cc                   	int3   
   1800809cb:	cc                   	int3   
   1800809cc:	cc                   	int3   
   1800809cd:	cc                   	int3   
   1800809ce:	cc                   	int3   
   1800809cf:	cc                   	int3   
   1800809d0:	cc                   	int3   
   1800809d1:	cc                   	int3   
   1800809d2:	cc                   	int3   
   1800809d3:	cc                   	int3   
   1800809d4:	cc                   	int3   
   1800809d5:	cc                   	int3   
   1800809d6:	cc                   	int3   
   1800809d7:	cc                   	int3   
   1800809d8:	cc                   	int3   
   1800809d9:	cc                   	int3   
   1800809da:	cc                   	int3   
   1800809db:	cc                   	int3   
   1800809dc:	cc                   	int3   
   1800809dd:	cc                   	int3   
   1800809de:	cc                   	int3   
   1800809df:	cc                   	int3   
   1800809e0:	cc                   	int3   
   1800809e1:	cc                   	int3   
   1800809e2:	cc                   	int3   
   1800809e3:	cc                   	int3   
   1800809e4:	cc                   	int3   
   1800809e5:	cc                   	int3   
   1800809e6:	cc                   	int3   
   1800809e7:	cc                   	int3   
   1800809e8:	cc                   	int3   
   1800809e9:	cc                   	int3   
   1800809ea:	cc                   	int3   
   1800809eb:	cc                   	int3   
   1800809ec:	cc                   	int3   
   1800809ed:	cc                   	int3   
   1800809ee:	cc                   	int3   
   1800809ef:	cc                   	int3   
   1800809f0:	cc                   	int3   
   1800809f1:	cc                   	int3   
   1800809f2:	cc                   	int3   
   1800809f3:	cc                   	int3   
   1800809f4:	cc                   	int3   
   1800809f5:	cc                   	int3   
   1800809f6:	cc                   	int3   
   1800809f7:	cc                   	int3   
   1800809f8:	cc                   	int3   
   1800809f9:	cc                   	int3   
   1800809fa:	cc                   	int3   
   1800809fb:	cc                   	int3   
   1800809fc:	cc                   	int3   
   1800809fd:	cc                   	int3   
   1800809fe:	cc                   	int3   
   1800809ff:	cc                   	int3   
   180080a00:	cc                   	int3   
   180080a01:	cc                   	int3   
   180080a02:	cc                   	int3   
   180080a03:	cc                   	int3   
   180080a04:	cc                   	int3   
   180080a05:	cc                   	int3   
   180080a06:	cc                   	int3   
   180080a07:	cc                   	int3   
   180080a08:	cc                   	int3   
   180080a09:	cc                   	int3   
   180080a0a:	cc                   	int3   
   180080a0b:	cc                   	int3   
   180080a0c:	cc                   	int3   
   180080a0d:	cc                   	int3   
   180080a0e:	cc                   	int3   
   180080a0f:	cc                   	int3   
   180080a10:	cc                   	int3   
   180080a11:	cc                   	int3   
   180080a12:	cc                   	int3   
   180080a13:	cc                   	int3   
   180080a14:	cc                   	int3   
   180080a15:	cc                   	int3   
   180080a16:	cc                   	int3   
   180080a17:	cc                   	int3   
   180080a18:	cc                   	int3   
   180080a19:	cc                   	int3   
   180080a1a:	cc                   	int3   
   180080a1b:	cc                   	int3   
   180080a1c:	cc                   	int3   
   180080a1d:	cc                   	int3   
   180080a1e:	cc                   	int3   
   180080a1f:	cc                   	int3   
   180080a20:	cc                   	int3   
   180080a21:	cc                   	int3   
   180080a22:	cc                   	int3   
   180080a23:	cc                   	int3   
   180080a24:	cc                   	int3   
   180080a25:	cc                   	int3   
   180080a26:	cc                   	int3   
   180080a27:	cc                   	int3   
   180080a28:	cc                   	int3   
   180080a29:	cc                   	int3   
   180080a2a:	cc                   	int3   
   180080a2b:	cc                   	int3   
   180080a2c:	cc                   	int3   
   180080a2d:	cc                   	int3   
   180080a2e:	cc                   	int3   
   180080a2f:	cc                   	int3   
   180080a30:	cc                   	int3   
   180080a31:	cc                   	int3   
   180080a32:	cc                   	int3   
   180080a33:	cc                   	int3   
   180080a34:	cc                   	int3   
   180080a35:	cc                   	int3   
   180080a36:	cc                   	int3   
   180080a37:	cc                   	int3   
   180080a38:	cc                   	int3   
   180080a39:	cc                   	int3   
   180080a3a:	cc                   	int3   
   180080a3b:	cc                   	int3   
   180080a3c:	cc                   	int3   
   180080a3d:	cc                   	int3   
   180080a3e:	cc                   	int3   
   180080a3f:	cc                   	int3   
   180080a40:	cc                   	int3   
   180080a41:	cc                   	int3   
   180080a42:	cc                   	int3   
   180080a43:	cc                   	int3   
   180080a44:	cc                   	int3   
   180080a45:	cc                   	int3   
   180080a46:	cc                   	int3   
   180080a47:	cc                   	int3   
   180080a48:	cc                   	int3   
   180080a49:	cc                   	int3   
   180080a4a:	cc                   	int3   
   180080a4b:	cc                   	int3   
   180080a4c:	cc                   	int3   
   180080a4d:	cc                   	int3   
   180080a4e:	cc                   	int3   
   180080a4f:	cc                   	int3   
   180080a50:	cc                   	int3   
   180080a51:	cc                   	int3   
   180080a52:	cc                   	int3   
   180080a53:	cc                   	int3   
   180080a54:	cc                   	int3   
   180080a55:	cc                   	int3   
   180080a56:	cc                   	int3   
   180080a57:	cc                   	int3   
   180080a58:	cc                   	int3   
   180080a59:	cc                   	int3   
   180080a5a:	cc                   	int3   
   180080a5b:	cc                   	int3   
   180080a5c:	cc                   	int3   
   180080a5d:	cc                   	int3   
   180080a5e:	cc                   	int3   
   180080a5f:	cc                   	int3   
   180080a60:	cc                   	int3   
   180080a61:	cc                   	int3   
   180080a62:	cc                   	int3   
   180080a63:	cc                   	int3   
   180080a64:	cc                   	int3   
   180080a65:	cc                   	int3   
   180080a66:	cc                   	int3   
   180080a67:	cc                   	int3   
   180080a68:	cc                   	int3   
   180080a69:	cc                   	int3   
   180080a6a:	cc                   	int3   
   180080a6b:	cc                   	int3   
   180080a6c:	cc                   	int3   
   180080a6d:	cc                   	int3   
   180080a6e:	cc                   	int3   
   180080a6f:	cc                   	int3   
   180080a70:	cc                   	int3   
   180080a71:	cc                   	int3   
   180080a72:	cc                   	int3   
   180080a73:	cc                   	int3   
   180080a74:	cc                   	int3   
   180080a75:	cc                   	int3   
   180080a76:	cc                   	int3   
   180080a77:	cc                   	int3   
   180080a78:	cc                   	int3   
   180080a79:	cc                   	int3   
   180080a7a:	cc                   	int3   
   180080a7b:	cc                   	int3   
   180080a7c:	cc                   	int3   
   180080a7d:	cc                   	int3   
   180080a7e:	cc                   	int3   
   180080a7f:	cc                   	int3   
   180080a80:	cc                   	int3   
   180080a81:	cc                   	int3   
   180080a82:	cc                   	int3   
   180080a83:	cc                   	int3   
   180080a84:	cc                   	int3   
   180080a85:	cc                   	int3   
   180080a86:	cc                   	int3   
   180080a87:	cc                   	int3   
   180080a88:	cc                   	int3   
   180080a89:	cc                   	int3   
   180080a8a:	cc                   	int3   
   180080a8b:	cc                   	int3   
   180080a8c:	cc                   	int3   
   180080a8d:	cc                   	int3   
   180080a8e:	cc                   	int3   
   180080a8f:	cc                   	int3   
   180080a90:	cc                   	int3   
   180080a91:	cc                   	int3   
   180080a92:	cc                   	int3   
   180080a93:	cc                   	int3   
   180080a94:	cc                   	int3   
   180080a95:	cc                   	int3   
   180080a96:	cc                   	int3   
   180080a97:	cc                   	int3   
   180080a98:	cc                   	int3   
   180080a99:	cc                   	int3   
   180080a9a:	cc                   	int3   
   180080a9b:	cc                   	int3   
   180080a9c:	cc                   	int3   
   180080a9d:	cc                   	int3   
   180080a9e:	cc                   	int3   
   180080a9f:	cc                   	int3   
   180080aa0:	cc                   	int3   
   180080aa1:	cc                   	int3   
   180080aa2:	cc                   	int3   
   180080aa3:	cc                   	int3   
   180080aa4:	cc                   	int3   
   180080aa5:	cc                   	int3   
   180080aa6:	cc                   	int3   
   180080aa7:	cc                   	int3   
   180080aa8:	cc                   	int3   
   180080aa9:	cc                   	int3   
   180080aaa:	cc                   	int3   
   180080aab:	cc                   	int3   
   180080aac:	cc                   	int3   
   180080aad:	cc                   	int3   
   180080aae:	cc                   	int3   
   180080aaf:	cc                   	int3   
   180080ab0:	cc                   	int3   
   180080ab1:	cc                   	int3   
   180080ab2:	cc                   	int3   
   180080ab3:	cc                   	int3   
   180080ab4:	cc                   	int3   
   180080ab5:	cc                   	int3   
   180080ab6:	cc                   	int3   
   180080ab7:	cc                   	int3   
   180080ab8:	cc                   	int3   
   180080ab9:	cc                   	int3   
   180080aba:	cc                   	int3   
   180080abb:	cc                   	int3   
   180080abc:	cc                   	int3   
   180080abd:	cc                   	int3   
   180080abe:	cc                   	int3   
   180080abf:	cc                   	int3   
   180080ac0:	cc                   	int3   
   180080ac1:	cc                   	int3   
   180080ac2:	cc                   	int3   
   180080ac3:	cc                   	int3   
   180080ac4:	cc                   	int3   
   180080ac5:	cc                   	int3   
   180080ac6:	cc                   	int3   
   180080ac7:	cc                   	int3   
   180080ac8:	cc                   	int3   
   180080ac9:	cc                   	int3   
   180080aca:	cc                   	int3   
   180080acb:	cc                   	int3   
   180080acc:	cc                   	int3   
   180080acd:	cc                   	int3   
   180080ace:	cc                   	int3   
   180080acf:	cc                   	int3   
   180080ad0:	cc                   	int3   
   180080ad1:	cc                   	int3   
   180080ad2:	cc                   	int3   
   180080ad3:	cc                   	int3   
   180080ad4:	cc                   	int3   
   180080ad5:	cc                   	int3   
   180080ad6:	cc                   	int3   
   180080ad7:	cc                   	int3   
   180080ad8:	cc                   	int3   
   180080ad9:	cc                   	int3   
   180080ada:	cc                   	int3   
   180080adb:	cc                   	int3   
   180080adc:	cc                   	int3   
   180080add:	cc                   	int3   
   180080ade:	cc                   	int3   
   180080adf:	cc                   	int3   
   180080ae0:	cc                   	int3   
   180080ae1:	cc                   	int3   
   180080ae2:	cc                   	int3   
   180080ae3:	cc                   	int3   
   180080ae4:	cc                   	int3   
   180080ae5:	cc                   	int3   
   180080ae6:	cc                   	int3   
   180080ae7:	cc                   	int3   
   180080ae8:	cc                   	int3   
   180080ae9:	cc                   	int3   
   180080aea:	cc                   	int3   
   180080aeb:	cc                   	int3   
   180080aec:	cc                   	int3   
   180080aed:	cc                   	int3   
   180080aee:	cc                   	int3   
   180080aef:	cc                   	int3   
   180080af0:	cc                   	int3   
   180080af1:	cc                   	int3   
   180080af2:	cc                   	int3   
   180080af3:	cc                   	int3   
   180080af4:	cc                   	int3   
   180080af5:	cc                   	int3   
   180080af6:	cc                   	int3   
   180080af7:	cc                   	int3   
   180080af8:	cc                   	int3   
   180080af9:	cc                   	int3   
   180080afa:	cc                   	int3   
   180080afb:	cc                   	int3   
   180080afc:	cc                   	int3   
   180080afd:	cc                   	int3   
   180080afe:	cc                   	int3   
   180080aff:	cc                   	int3   
   180080b00:	cc                   	int3   
   180080b01:	cc                   	int3   
   180080b02:	cc                   	int3   
   180080b03:	cc                   	int3   
   180080b04:	cc                   	int3   
   180080b05:	cc                   	int3   
   180080b06:	cc                   	int3   
   180080b07:	cc                   	int3   
   180080b08:	cc                   	int3   
   180080b09:	cc                   	int3   
   180080b0a:	cc                   	int3   
   180080b0b:	cc                   	int3   
   180080b0c:	cc                   	int3   
   180080b0d:	cc                   	int3   
   180080b0e:	cc                   	int3   
   180080b0f:	cc                   	int3   
   180080b10:	cc                   	int3   
   180080b11:	cc                   	int3   
   180080b12:	cc                   	int3   
   180080b13:	cc                   	int3   
   180080b14:	cc                   	int3   
   180080b15:	cc                   	int3   
   180080b16:	cc                   	int3   
   180080b17:	cc                   	int3   
   180080b18:	cc                   	int3   
   180080b19:	cc                   	int3   
   180080b1a:	cc                   	int3   
   180080b1b:	cc                   	int3   
   180080b1c:	cc                   	int3   
   180080b1d:	cc                   	int3   
   180080b1e:	cc                   	int3   
   180080b1f:	cc                   	int3   
   180080b20:	cc                   	int3   
   180080b21:	cc                   	int3   
   180080b22:	cc                   	int3   
   180080b23:	cc                   	int3   
   180080b24:	cc                   	int3   
   180080b25:	cc                   	int3   
   180080b26:	cc                   	int3   
   180080b27:	cc                   	int3   
   180080b28:	cc                   	int3   
   180080b29:	cc                   	int3   
   180080b2a:	cc                   	int3   
   180080b2b:	cc                   	int3   
   180080b2c:	cc                   	int3   
   180080b2d:	cc                   	int3   
   180080b2e:	cc                   	int3   
   180080b2f:	cc                   	int3   
   180080b30:	cc                   	int3   
   180080b31:	cc                   	int3   
   180080b32:	cc                   	int3   
   180080b33:	cc                   	int3   
   180080b34:	cc                   	int3   
   180080b35:	cc                   	int3   
   180080b36:	cc                   	int3   
   180080b37:	cc                   	int3   
   180080b38:	cc                   	int3   
   180080b39:	cc                   	int3   
   180080b3a:	cc                   	int3   
   180080b3b:	cc                   	int3   
   180080b3c:	cc                   	int3   
   180080b3d:	cc                   	int3   
   180080b3e:	cc                   	int3   
   180080b3f:	cc                   	int3   
   180080b40:	cc                   	int3   
   180080b41:	cc                   	int3   
   180080b42:	cc                   	int3   
   180080b43:	cc                   	int3   
   180080b44:	cc                   	int3   
   180080b45:	cc                   	int3   
   180080b46:	cc                   	int3   
   180080b47:	cc                   	int3   
   180080b48:	cc                   	int3   
   180080b49:	cc                   	int3   
   180080b4a:	cc                   	int3   
   180080b4b:	cc                   	int3   
   180080b4c:	cc                   	int3   
   180080b4d:	cc                   	int3   
   180080b4e:	cc                   	int3   
   180080b4f:	cc                   	int3   
   180080b50:	cc                   	int3   
   180080b51:	cc                   	int3   
   180080b52:	cc                   	int3   
   180080b53:	cc                   	int3   
   180080b54:	cc                   	int3   
   180080b55:	cc                   	int3   
   180080b56:	cc                   	int3   
   180080b57:	cc                   	int3   
   180080b58:	cc                   	int3   
   180080b59:	cc                   	int3   
   180080b5a:	cc                   	int3   
   180080b5b:	cc                   	int3   
   180080b5c:	cc                   	int3   
   180080b5d:	cc                   	int3   
   180080b5e:	cc                   	int3   
   180080b5f:	cc                   	int3   
   180080b60:	cc                   	int3   
   180080b61:	cc                   	int3   
   180080b62:	cc                   	int3   
   180080b63:	cc                   	int3   
   180080b64:	cc                   	int3   
   180080b65:	cc                   	int3   
   180080b66:	cc                   	int3   
   180080b67:	cc                   	int3   
   180080b68:	cc                   	int3   
   180080b69:	cc                   	int3   
   180080b6a:	cc                   	int3   
   180080b6b:	cc                   	int3   
   180080b6c:	cc                   	int3   
   180080b6d:	cc                   	int3   
   180080b6e:	cc                   	int3   
   180080b6f:	cc                   	int3   
   180080b70:	cc                   	int3   
   180080b71:	cc                   	int3   
   180080b72:	cc                   	int3   
   180080b73:	cc                   	int3   
   180080b74:	cc                   	int3   
   180080b75:	cc                   	int3   
   180080b76:	cc                   	int3   
   180080b77:	cc                   	int3   
   180080b78:	cc                   	int3   
   180080b79:	cc                   	int3   
   180080b7a:	cc                   	int3   
   180080b7b:	cc                   	int3   
   180080b7c:	cc                   	int3   
   180080b7d:	cc                   	int3   
   180080b7e:	cc                   	int3   
   180080b7f:	cc                   	int3   
   180080b80:	cc                   	int3   
   180080b81:	cc                   	int3   
   180080b82:	cc                   	int3   
   180080b83:	cc                   	int3   
   180080b84:	cc                   	int3   
   180080b85:	cc                   	int3   
   180080b86:	cc                   	int3   
   180080b87:	cc                   	int3   
   180080b88:	cc                   	int3   
   180080b89:	cc                   	int3   
   180080b8a:	cc                   	int3   
   180080b8b:	cc                   	int3   
   180080b8c:	cc                   	int3   
   180080b8d:	cc                   	int3   
   180080b8e:	cc                   	int3   
   180080b8f:	cc                   	int3   
   180080b90:	cc                   	int3   
   180080b91:	cc                   	int3   
   180080b92:	cc                   	int3   
   180080b93:	cc                   	int3   
   180080b94:	cc                   	int3   
   180080b95:	cc                   	int3   
   180080b96:	cc                   	int3   
   180080b97:	cc                   	int3   
   180080b98:	cc                   	int3   
   180080b99:	cc                   	int3   
   180080b9a:	cc                   	int3   
   180080b9b:	cc                   	int3   
   180080b9c:	cc                   	int3   
   180080b9d:	cc                   	int3   
   180080b9e:	cc                   	int3   
   180080b9f:	cc                   	int3   
   180080ba0:	cc                   	int3   
   180080ba1:	cc                   	int3   
   180080ba2:	cc                   	int3   
   180080ba3:	cc                   	int3   
   180080ba4:	cc                   	int3   
   180080ba5:	cc                   	int3   
   180080ba6:	cc                   	int3   
   180080ba7:	cc                   	int3   
   180080ba8:	cc                   	int3   
   180080ba9:	cc                   	int3   
   180080baa:	cc                   	int3   
   180080bab:	cc                   	int3   
   180080bac:	cc                   	int3   
   180080bad:	cc                   	int3   
   180080bae:	cc                   	int3   
   180080baf:	cc                   	int3   
   180080bb0:	cc                   	int3   
   180080bb1:	cc                   	int3   
   180080bb2:	cc                   	int3   
   180080bb3:	cc                   	int3   
   180080bb4:	cc                   	int3   
   180080bb5:	cc                   	int3   
   180080bb6:	cc                   	int3   
   180080bb7:	cc                   	int3   
   180080bb8:	cc                   	int3   
   180080bb9:	cc                   	int3   
   180080bba:	cc                   	int3   
   180080bbb:	cc                   	int3   
   180080bbc:	cc                   	int3   
   180080bbd:	cc                   	int3   
   180080bbe:	cc                   	int3   
   180080bbf:	cc                   	int3   
   180080bc0:	cc                   	int3   
   180080bc1:	cc                   	int3   
   180080bc2:	cc                   	int3   
   180080bc3:	cc                   	int3   
   180080bc4:	cc                   	int3   
   180080bc5:	cc                   	int3   
   180080bc6:	cc                   	int3   
   180080bc7:	cc                   	int3   
   180080bc8:	cc                   	int3   
   180080bc9:	cc                   	int3   
   180080bca:	cc                   	int3   
   180080bcb:	cc                   	int3   
   180080bcc:	cc                   	int3   
   180080bcd:	cc                   	int3   
   180080bce:	cc                   	int3   
   180080bcf:	cc                   	int3   
   180080bd0:	cc                   	int3   
   180080bd1:	cc                   	int3   
   180080bd2:	cc                   	int3   
   180080bd3:	cc                   	int3   
   180080bd4:	cc                   	int3   
   180080bd5:	cc                   	int3   
   180080bd6:	cc                   	int3   
   180080bd7:	cc                   	int3   
   180080bd8:	cc                   	int3   
   180080bd9:	cc                   	int3   
   180080bda:	cc                   	int3   
   180080bdb:	cc                   	int3   
   180080bdc:	cc                   	int3   
   180080bdd:	cc                   	int3   
   180080bde:	cc                   	int3   
   180080bdf:	cc                   	int3   
   180080be0:	cc                   	int3   
   180080be1:	cc                   	int3   
   180080be2:	cc                   	int3   
   180080be3:	cc                   	int3   
   180080be4:	cc                   	int3   
   180080be5:	cc                   	int3   
   180080be6:	cc                   	int3   
   180080be7:	cc                   	int3   
   180080be8:	cc                   	int3   
   180080be9:	cc                   	int3   
   180080bea:	cc                   	int3   
   180080beb:	cc                   	int3   
   180080bec:	cc                   	int3   
   180080bed:	cc                   	int3   
   180080bee:	cc                   	int3   
   180080bef:	cc                   	int3   
   180080bf0:	cc                   	int3   
   180080bf1:	cc                   	int3   
   180080bf2:	cc                   	int3   
   180080bf3:	cc                   	int3   
   180080bf4:	cc                   	int3   
   180080bf5:	cc                   	int3   
   180080bf6:	cc                   	int3   
   180080bf7:	cc                   	int3   
   180080bf8:	cc                   	int3   
   180080bf9:	cc                   	int3   
   180080bfa:	cc                   	int3   
   180080bfb:	cc                   	int3   
   180080bfc:	cc                   	int3   
   180080bfd:	cc                   	int3   
   180080bfe:	cc                   	int3   
   180080bff:	cc                   	int3   
   180080c00:	81 fa fc 0d 00 00    	cmp    $0xdfc,%edx
   180080c06:	73 0c                	jae    0x180080c14
   180080c08:	48 8d 05 e9 1e 00 00 	lea    0x1ee9(%rip),%rax        # 0x180082af8
   180080c0f:	46 0f b7 24 60       	movzwl (%rax,%r12,2),%r12d
   180080c14:	41 c7 87 0c 11 01 00 	movl   $0x0,0x1110c(%r15)
   180080c1b:	00 00 00 00 
   180080c1f:	41 c7 87 44 11 01 00 	movl   $0x1a3,0x11144(%r15)
   180080c26:	a3 01 00 00 
   180080c2a:	41 c7 87 10 11 01 00 	movl   $0x1a3,0x11110(%r15)
   180080c31:	a3 01 00 00 
   180080c35:	41 c7 87 48 11 01 00 	movl   $0x16f,0x11148(%r15)
   180080c3c:	6f 01 00 00 
   180080c40:	41 c7 87 14 11 01 00 	movl   $0x312,0x11114(%r15)
   180080c47:	12 03 00 00 
   180080c4b:	41 c7 87 4c 11 01 00 	movl   $0x158,0x1114c(%r15)
   180080c52:	58 01 00 00 
   180080c56:	41 c7 87 18 11 01 00 	movl   $0x46a,0x11118(%r15)
   180080c5d:	6a 04 00 00 
   180080c61:	41 c7 87 50 11 01 00 	movl   $0x10a,0x11150(%r15)
   180080c68:	0a 01 00 00 
   180080c6c:	41 c7 87 1c 11 01 00 	movl   $0x574,0x1111c(%r15)
   180080c73:	74 05 00 00 
   180080c77:	41 c7 87 54 11 01 00 	movl   $0x14e,0x11154(%r15)
   180080c7e:	4e 01 00 00 
   180080c82:	41 c7 87 20 11 01 00 	movl   $0x6c2,0x11120(%r15)
   180080c89:	c2 06 00 00 
   180080c8d:	41 c7 87 58 11 01 00 	movl   $0x173,0x11158(%r15)
   180080c94:	73 01 00 00 
   180080c98:	41 c7 87 24 11 01 00 	movl   $0x835,0x11124(%r15)
   180080c9f:	35 08 00 00 
   180080ca3:	41 c7 87 5c 11 01 00 	movl   $0x1cc,0x1115c(%r15)
   180080caa:	cc 01 00 00 
   180080cae:	41 c7 87 28 11 01 00 	movl   $0xa01,0x11128(%r15)
   180080cb5:	01 0a 00 00 
   180080cb9:	41 c7 87 60 11 01 00 	movl   $0x1f7,0x11160(%r15)
   180080cc0:	f7 01 00 00 
   180080cc4:	41 c7 87 2c 11 01 00 	movl   $0xbf8,0x1112c(%r15)
   180080ccb:	f8 0b 00 00 
   180080ccf:	41 c7 87 64 11 01 00 	movl   $0x12c,0x11164(%r15)
   180080cd6:	2c 01 00 00 
   180080cda:	41 c7 87 30 11 01 00 	movl   $0xd24,0x11130(%r15)
   180080ce1:	24 0d 00 00 
   180080ce5:	41 c7 87 68 11 01 00 	movl   $0xd8,0x11168(%r15)
   180080cec:	d8 00 00 00 
   180080cf0:	ff 25 32 01 00 00    	jmp    *0x132(%rip)        # 0x180080e28
	...
   180080cfe:	00 00                	add    %al,(%rax)
   180080d00:	81 f9 fc 0d 00 00    	cmp    $0xdfc,%ecx
   180080d06:	73 0b                	jae    0x180080d13
   180080d08:	48 8d 05 f1 01 00 00 	lea    0x1f1(%rip),%rax        # 0x180080f00
   180080d0f:	0f b7 0c 48          	movzwl (%rax,%rcx,2),%ecx
   180080d13:	ff 25 e7 00 00 00    	jmp    *0xe7(%rip)        # 0x180080e00
	...
   180080d2d:	00 00                	add    %al,(%rax)
   180080d2f:	00 81 f9 fc 0d 00    	add    %al,0xdfcf9(%rcx)
   180080d35:	00 73 0b             	add    %dh,0xb(%rbx)
   180080d38:	48 8d 05 c1 01 00 00 	lea    0x1c1(%rip),%rax        # 0x180080f00
   180080d3f:	0f b7 0c 48          	movzwl (%rax,%rcx,2),%ecx
   180080d43:	ff 25 bf 00 00 00    	jmp    *0xbf(%rip)        # 0x180080e08
	...
   180080d5d:	00 00                	add    %al,(%rax)
   180080d5f:	00 81 fa fc 0d 00    	add    %al,0xdfcfa(%rcx)
   180080d65:	00 73 0b             	add    %dh,0xb(%rbx)
   180080d68:	48 8d 05 91 01 00 00 	lea    0x191(%rip),%rax        # 0x180080f00
   180080d6f:	0f b7 14 50          	movzwl (%rax,%rdx,2),%edx
   180080d73:	ff 25 97 00 00 00    	jmp    *0x97(%rip)        # 0x180080e10
	...
   180080d8d:	00 00                	add    %al,(%rax)
   180080d8f:	00 41 81             	add    %al,-0x7f(%rcx)
   180080d92:	f8                   	clc    
   180080d93:	fc                   	cld    
   180080d94:	0d 00 00 73 0c       	or     $0xc730000,%eax
   180080d99:	48 8d 05 60 01 00 00 	lea    0x160(%rip),%rax        # 0x180080f00
   180080da0:	46 0f b7 04 40       	movzwl (%rax,%r8,2),%r8d
   180080da5:	ff 25 6d 00 00 00    	jmp    *0x6d(%rip)        # 0x180080e18
	...
   180080dbf:	00 41 81             	add    %al,-0x7f(%rcx)
   180080dc2:	f8                   	clc    
   180080dc3:	fc                   	cld    
   180080dc4:	0d 00 00 73 0c       	or     $0xc730000,%eax
   180080dc9:	48 8d 05 30 01 00 00 	lea    0x130(%rip),%rax        # 0x180080f00
   180080dd0:	46 0f b7 04 40       	movzwl (%rax,%r8,2),%r8d
   180080dd5:	ff 25 45 00 00 00    	jmp    *0x45(%rip)        # 0x180080e20
	...
   180080e3f:	00 41 2d             	add    %al,0x2d(%rcx)
   180080e42:	42 00 00             	rex.X add %al,(%rax)
   180080e45:	00 00                	add    %al,(%rax)
   180080e47:	00 43 2d             	add    %al,0x2d(%rbx)
   180080e4a:	44 00 00             	add    %r8b,(%rax)
   180080e4d:	00 00                	add    %al,(%rax)
   180080e4f:	00 45 2d             	add    %al,0x2d(%rbp)
   180080e52:	47 00 00             	rex.RXB add %r8b,(%r8)
   180080e55:	00 00                	add    %al,(%rax)
   180080e57:	00 48 2d             	add    %cl,0x2d(%rax)
   180080e5a:	4a 00 00             	rex.WX add %al,(%rax)
   180080e5d:	00 00                	add    %al,(%rax)
   180080e5f:	00 4b 2d             	add    %cl,0x2d(%rbx)
   180080e62:	4c 00 00             	rex.WR add %r8b,(%rax)
   180080e65:	00 00                	add    %al,(%rax)
   180080e67:	00 4d 00             	add    %cl,0x0(%rbp)
   180080e6a:	00 00                	add    %al,(%rax)
   180080e6c:	00 00                	add    %al,(%rax)
   180080e6e:	00 00                	add    %al,(%rax)
   180080e70:	4e 2d 52 00 00 00    	rex.WRX sub $0x52,%rax
   180080e76:	00 00                	add    %al,(%rax)
   180080e78:	53                   	push   %rbx
   180080e79:	00 00                	add    %al,(%rax)
   180080e7b:	00 00                	add    %al,(%rax)
   180080e7d:	00 00                	add    %al,(%rax)
   180080e7f:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
   180080e83:	00 00                	add    %al,(%rax)
   180080e85:	00 00                	add    %al,(%rax)
   180080e87:	00 55 2d             	add    %dl,0x2d(%rbp)
   180080e8a:	5a                   	pop    %rdx
	...
   180080e9f:	00 6b 65             	add    %ch,0x65(%rbx)
   180080ea2:	72 6e                	jb     0x180080f12
   180080ea4:	65 6c                	gs insb (%dx),%es:(%rdi)
   180080ea6:	33 32                	xor    (%rdx),%esi
   180080ea8:	2e 64 6c             	cs fs insb (%dx),%es:(%rdi)
   180080eab:	6c                   	insb   (%dx),%es:(%rdi)
   180080eac:	00 00                	add    %al,(%rax)
   180080eae:	00 00                	add    %al,(%rax)
   180080eb0:	46 6c                	rex.RX insb (%dx),%es:(%rdi)
   180080eb2:	75 73                	jne    0x180080f27
   180080eb4:	68 49 6e 73 74       	push   $0x74736e49
   180080eb9:	72 75                	jb     0x180080f30
   180080ebb:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
   180080ebf:	6e                   	outsb  %ds:(%rsi),(%dx)
   180080ec0:	43 61                	rex.XB (bad) 
   180080ec2:	63 68 65             	movsxd 0x65(%rax),%ebp
	...
   180080efd:	00 00                	add    %al,(%rax)
   180080eff:	00 5a 00             	add    %bl,0x0(%rdx)
   180080f02:	a8 01                	test   $0x1,%al
   180080f04:	a0 01 a6 01 f3 01 f1 	movabs 0xa401f101f301a601,%al
   180080f0b:	01 a4 
   180080f0d:	01 f5                	add    %esi,%ebp
   180080f0f:	01 f6                	add    %esi,%esi
   180080f11:	01 f2                	add    %esi,%edx
   180080f13:	01 f0                	add    %esi,%eax
   180080f15:	01 f4                	add    %esi,%esp
   180080f17:	01 f8                	add    %edi,%eax
   180080f19:	01 f9                	add    %edi,%ecx
   180080f1b:	01 15 00 87 00 92    	add    %edx,-0x6dff7900(%rip)        # 0x112089621
   180080f21:	00 91 00 8e 00 90    	add    %dl,-0x6fff7200(%rcx)
   180080f27:	00 8f 00 20 00 f7    	add    %cl,-0x8ffe000(%rdi)
   180080f2d:	01 57 00             	add    %edx,0x0(%rdi)
   180080f30:	22 00                	and    (%rax),%al
   180080f32:	24 00                	and    $0x0,%al
   180080f34:	25 00 56 00 44       	and    $0x44005600,%eax
   180080f39:	00 80 00 5d 00 70    	add    %al,0x70005d00(%rax)
   180080f3f:	00 73 00             	add    %dh,0x0(%rbx)
   180080f42:	74 00                	je     0x180080f44
   180080f44:	64 00 63 00          	add    %ah,%fs:0x0(%rbx)
   180080f48:	62                   	(bad)  
   180080f49:	00 6b 00             	add    %ch,0x0(%rbx)
   180080f4c:	6c                   	insb   (%dx),%es:(%rdi)
   180080f4d:	00 6d 00             	add    %ch,0x0(%rbp)
   180080f50:	5c                   	pop    %rsp
   180080f51:	00 6e 00             	add    %ch,0x0(%rsi)
   180080f54:	61                   	(bad)  
   180080f55:	00 71 00             	add    %dh,0x0(%rcx)
   180080f58:	72 00                	jb     0x180080f5a
   180080f5a:	66 00 67 00          	data16 add %ah,0x0(%rdi)
   180080f5e:	65 00 5e 00          	add    %bl,%gs:0x0(%rsi)
   180080f62:	5f                   	pop    %rdi
   180080f63:	00 7e 00             	add    %bh,0x0(%rsi)
   180080f66:	7b 00                	jnp    0x180080f68
   180080f68:	77 00                	ja     0x180080f6a
   180080f6a:	78 00                	js     0x180080f6c
   180080f6c:	76 00                	jbe    0x180080f6e
   180080f6e:	75 00                	jne    0x180080f70
   180080f70:	79 00                	jns    0x180080f72
   180080f72:	7c 00                	jl     0x180080f74
   180080f74:	7a 00                	jp     0x180080f76
   180080f76:	60                   	(bad)  
   180080f77:	00 7d 00             	add    %bh,0x0(%rbp)
   180080f7a:	7f 00                	jg     0x180080f7c
   180080f7c:	68 00 6a 00 6f       	push   $0x6f006a00
   180080f81:	00 69 00             	add    %ch,0x0(%rcx)
   180080f84:	81 00 1c 00 1b 00    	addl   $0x1b001c,(%rax)
   180080f8a:	95                   	xchg   %eax,%ebp
   180080f8b:	01 8b 00 8a 00 8d    	add    %ecx,-0x72ff7600(%rbx)
   180080f91:	00 8c 00 26 00 2d 00 	add    %cl,0x2d0026(%rax,%rax,1)
   180080f98:	2f                   	(bad)  
   180080f99:	00 30                	add    %dh,(%rax)
   180080f9b:	00 29                	add    %ch,(%rcx)
   180080f9d:	00 2a                	add    %ch,(%rdx)
   180080f9f:	00 28                	add    %ch,(%rax)
   180080fa1:	00 32                	add    %dh,(%rdx)
   180080fa3:	00 2e                	add    %ch,(%rsi)
   180080fa5:	00 31                	add    %dh,(%rcx)
   180080fa7:	00 2b                	add    %ch,(%rbx)
   180080fa9:	00 2c 00             	add    %ch,(%rax,%rax,1)
   180080fac:	27                   	(bad)  
   180080fad:	00 33                	add    %dh,(%rbx)
   180080faf:	00 34 00             	add    %dh,(%rax,%rax,1)
   180080fb2:	2a 01                	sub    (%rcx),%al
   180080fb4:	0a 00                	or     (%rax),%al
   180080fb6:	7e 01                	jle    0x180080fb9
   180080fb8:	7f 01                	jg     0x180080fbb
   180080fba:	8f 01                	pop    (%rcx)
   180080fbc:	8e 01                	mov    (%rcx),%es
   180080fbe:	82                   	(bad)  
   180080fbf:	01 84 01 83 01 88 01 	add    %eax,0x1880183(%rcx,%rax,1)
   180080fc6:	91                   	xchg   %eax,%ecx
   180080fc7:	01 94 01 92 01 93 01 	add    %edx,0x1930192(%rcx,%rax,1)
   180080fce:	8d 01                	lea    (%rcx),%eax
   180080fd0:	8c 01                	mov    %es,(%rcx)
   180080fd2:	86 01                	xchg   %al,(%rcx)
   180080fd4:	87 01                	xchg   %eax,(%rcx)
   180080fd6:	8b 01                	mov    (%rcx),%eax
   180080fd8:	8a 01                	mov    (%rcx),%al
   180080fda:	90                   	nop
   180080fdb:	01 80 01 81 01 85    	add    %eax,-0x7afe7eff(%rax)
   180080fe1:	01 89 01 1d 00 1e    	add    %ecx,0x1e001d01(%rcx)
   180080fe7:	00 21                	add    %ah,(%rcx)
   180080fe9:	00 1f                	add    %bl,(%rdi)
   180080feb:	00 af 00 b8 00 b9    	add    %ch,-0x46ff4800(%rdi)
   180080ff1:	00 ba 00 bb 00 bc    	add    %bh,-0x43ff4500(%rdx)
   180080ff7:	00 bd 00 c0 00 aa    	add    %bh,-0x55ff4000(%rbp)
   180080ffd:	00 ac 00 b1 00 3f 02 	add    %ch,0x23f00b1(%rax,%rax,1)
   180081004:	3d 02 3e 02 43       	cmp    $0x43023e02,%eax
   180081009:	02 42 02             	add    0x2(%rdx),%al
   18008100c:	40 02 c5             	add    %bpl,%al
   18008100f:	00 c6                	add    %al,%dh
   180081011:	00 41 02             	add    %al,0x2(%rcx)
   180081014:	c3                   	ret    
   180081015:	00 c4                	add    %al,%ah
   180081017:	00 c1                	add    %al,%cl
   180081019:	00 eb                	add    %ch,%bl
   18008101b:	00 c8                	add    %cl,%al
   18008101d:	00 c9                	add    %cl,%cl
   18008101f:	00 cb                	add    %cl,%bl
   180081021:	00 bf 00 be 00 a8    	add    %bh,-0x57ff4200(%rdi)
   180081027:	00 ad 00 a9 00 d7    	add    %ch,-0x28ff5700(%rbp)
   18008102d:	00 99 00 98 00 d8    	add    %bl,-0x27ff6800(%rcx)
   180081033:	00 d9                	add    %bl,%cl
   180081035:	00 db                	add    %bl,%bl
   180081037:	00 df                	add    %bl,%bh
   180081039:	00 9f 00 9e 00 9d    	add    %bl,-0x62ff6200(%rdi)
   18008103f:	00 9c 00 9a 00 e0 00 	add    %bl,0xe0009a(%rax,%rax,1)
   180081046:	9b                   	fwait
   180081047:	00 da                	add    %bl,%dl
   180081049:	00 84 00 d0 00 d1 00 	add    %al,0xd100d0(%rax,%rax,1)
   180081050:	d4                   	(bad)  
   180081051:	00 d6                	add    %dl,%dh
   180081053:	00 d5                	add    %dl,%ch
   180081055:	00 d3                	add    %dl,%bl
   180081057:	00 cf                	add    %cl,%bh
   180081059:	00 ec                	add    %ch,%ah
   18008105b:	01 85 00 86 00 83    	add    %eax,-0x7cff7a00(%rbp)
   180081061:	00 82 00 fa 01 fb    	add    %al,-0x4fe0600(%rdx)
   180081067:	01 88 00 95 00 97    	add    %ecx,-0x68ff6b00(%rax)
   18008106d:	00 96 00 58 00 89    	add    %dl,-0x76ffa800(%rsi)
   180081073:	00 94 00 93 00 b0 00 	add    %dl,0xb00093(%rax,%rax,1)
   18008107a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008107b:	00 a1 00 a3 00 a4    	add    %ah,-0x5bff5d00(%rcx)
   180081081:	00 a5 00 a2 00 b2    	add    %ah,-0x4dff5e00(%rbp)
   180081087:	00 b4 00 b3 00 b5 00 	add    %dh,0xb500b3(%rax,%rax,1)
   18008108e:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008108f:	00 ab 00 ca 00 ae    	add    %ch,-0x51ff3600(%rbx)
   180081095:	00 c7                	add    %al,%bh
   180081097:	00 cd                	add    %cl,%ch
   180081099:	00 cc                	add    %cl,%ah
   18008109b:	00 e5                	add    %ah,%ch
   18008109d:	00 b7 00 e3 00 c2    	add    %dh,-0x3dff1d00(%rdi)
   1800810a3:	00 3d 00 3e 00 3f    	add    %bh,0x3f003e00(%rip)        # 0x1bf084ea9
   1800810a9:	00 37                	add    %dh,(%rdi)
   1800810ab:	00 35 00 38 00 36    	add    %dh,0x36003800(%rip)        # 0x1b60848b1
   1800810b1:	00 3c 00             	add    %bh,(%rax,%rax,1)
   1800810b4:	3a 00                	cmp    (%rax),%al
   1800810b6:	39 00                	cmp    %eax,(%rax)
   1800810b8:	3b 00                	cmp    (%rax),%eax
   1800810ba:	41 00 40 00          	add    %al,0x0(%r8)
   1800810be:	4b 00 42 00          	rex.WXB add %al,0x0(%r10)
   1800810c2:	43 00 ae 01 4a 00 48 	rex.XB add %bpl,0x48004a01(%r14)
   1800810c9:	00 49 00             	add    %cl,0x0(%rcx)
   1800810cc:	4c 00 4d 00          	rex.WR add %r9b,0x0(%rbp)
   1800810d0:	45 00 47 00          	add    %r8b,0x0(%r15)
   1800810d4:	46 00 54 00 e4       	add    %r10b,-0x1c(%rax,%r8,1)
   1800810d9:	00 55 00             	add    %dl,0x0(%rbp)
   1800810dc:	5b                   	pop    %rbx
   1800810dd:	00 21                	add    %ah,(%rcx)
   1800810df:	02 17                	add    (%rdi),%dl
   1800810e1:	02 45 02             	add    0x2(%rbp),%al
   1800810e4:	25 02 33 02 34       	and    $0x34023302,%eax
   1800810e9:	02 20                	add    (%rax),%ah
   1800810eb:	02 1a                	add    (%rdx),%bl
   1800810ed:	00 19                	add    %bl,(%rcx)
   1800810ef:	00 16                	add    %dl,(%rsi)
   1800810f1:	00 22                	add    %ah,(%rdx)
   1800810f3:	02 23                	add    (%rbx),%ah
   1800810f5:	02 23                	add    (%rbx),%ah
   1800810f7:	00 11                	add    %dl,(%rcx)
   1800810f9:	00 a0 00 53 00 4e    	add    %ah,0x4e005300(%rax)
   1800810ff:	00 52 00             	add    %dl,0x0(%rdx)
   180081102:	4f 00 50 00          	rex.WRXB add %r10b,0x0(%r8)
   180081106:	51                   	push   %rcx
   180081107:	00 a1 09 a0 09 37    	add    %ah,0x3709a009(%rcx)
   18008110d:	09 2a                	or     %ebp,(%rdx)
   18008110f:	09 39                	or     %edi,(%rcx)
   180081111:	09 26                	or     %esp,(%rsi)
   180081113:	09 25 09 2e 09 de    	or     %esp,-0x21f6d1f7(%rip)        # 0x15e113f22
   180081119:	0a e4                	or     %ah,%ah
   18008111b:	0a 2f                	or     (%rdi),%ch
   18008111d:	09 31                	or     %esi,(%rcx)
   18008111f:	09 34 09             	or     %esi,(%rcx,%rcx,1)
   180081122:	32 09                	xor    (%rcx),%cl
   180081124:	33 09                	xor    (%rcx),%ecx
   180081126:	36 09 35 09 30 09 2d 	ss or  %esi,0x2d093009(%rip)        # 0x1ad114136
   18008112d:	09 3a                	or     %edi,(%rdx)
   18008112f:	09 27                	or     %esp,(%rdi)
   180081131:	09 29                	or     %ebp,(%rcx)
   180081133:	09 2c 09             	or     %ebp,(%rcx,%rcx,1)
   180081136:	9d                   	popf   
   180081137:	09 a3 09 a2 09 9e    	or     %esp,-0x61f65df7(%rbx)
   18008113d:	09 94 09 92 09 93 09 	or     %edx,0x9930992(%rcx,%rcx,1)
   180081144:	9c                   	pushf  
   180081145:	0a a2 0a 96 09 97    	or     -0x68f669f6(%rdx),%ah
   18008114b:	09 9e 0a 9f 0a 98    	or     %ebx,-0x67f560f6(%rsi)
   180081151:	0a 99 0a 9a 0a a4    	or     -0x5bf565f6(%rcx),%bl
   180081157:	0a 9d 0a a0 0a a5    	or     -0x5af55ff6(%rbp),%bl
   18008115d:	0a a6 0a a1 0a 92    	or     -0x6df55ef6(%rsi),%ah
   180081163:	0a 95 0a 96 0a 94    	or     -0x6bf569f6(%rbp),%dl
   180081169:	0a 93 0a 97 0a 95    	or     -0x6af568f6(%rbx),%dl
   18008116f:	09 91 09 7c 09 82    	or     %edx,-0x7df683f7(%rcx)
   180081175:	09 8a 09 8b 09 8d    	or     %ecx,-0x72f674f7(%rdx)
   18008117b:	09 89 09 8c 09 86    	or     %ecx,-0x79f673f7(%rcx)
   180081181:	09 85 09 8e 09 8f    	or     %eax,-0x70f671f7(%rbp)
   180081187:	09 90 09 88 09 87    	or     %edx,-0x78f677f7(%rax)
   18008118d:	09 83 09 84 09 7f    	or     %eax,0x7f098409(%rbx)
   180081193:	09 9b 09 9c 09 22    	or     %ebx,0x22099c09(%rbx)
   180081199:	09 38                	or     %edi,(%rax)
   18008119b:	09 9a 09 99 09 98    	or     %ebx,-0x67f666f7(%rdx)
   1800811a1:	09 81 09 3b 0a 35    	or     %eax,0x350a3b09(%rcx)
   1800811a7:	0a 34 0a             	or     (%rdx,%rcx,1),%dh
   1800811aa:	3c 0a                	cmp    $0xa,%al
   1800811ac:	3d 0a 3e 0a 37       	cmp    $0x370a3e0a,%eax
   1800811b1:	0a 39                	or     (%rcx),%bh
   1800811b3:	0a 38                	or     (%rax),%bh
   1800811b5:	0a 3a                	or     (%rdx),%bh
   1800811b7:	0a 36                	or     (%rsi),%dh
   1800811b9:	0a 59 0a             	or     0xa(%rcx),%bl
   1800811bc:	43 0a 33             	rex.XB or (%r11),%sil
   1800811bf:	0a 32                	or     (%rdx),%dh
   1800811c1:	0a 5a 0a             	or     0xa(%rdx),%bl
   1800811c4:	48 0a 47 0a          	rex.W or 0xa(%rdi),%al
   1800811c8:	5e                   	pop    %rsi
   1800811c9:	0a 4c 0a 4b          	or     0x4b(%rdx,%rcx,1),%cl
   1800811cd:	0a 50 0a             	or     0xa(%rax),%dl
   1800811d0:	53                   	push   %rbx
   1800811d1:	0a 51 0a             	or     0xa(%rcx),%dl
   1800811d4:	4e 0a 4d 0a          	rex.WRX or 0xa(%rbp),%r9b
   1800811d8:	4f 0a 52 0a          	rex.WRXB or 0xa(%r10),%r10b
   1800811dc:	3f                   	(bad)  
   1800811dd:	0a d9                	or     %cl,%bl
   1800811df:	0a da                	or     %dl,%bl
   1800811e1:	0a e1                	or     %cl,%ah
   1800811e3:	0a df                	or     %bh,%bl
   1800811e5:	0a e2                	or     %dl,%ah
   1800811e7:	0a e3                	or     %bl,%ah
   1800811e9:	0a e0                	or     %al,%ah
   1800811eb:	0a e6                	or     %dh,%ah
   1800811ed:	0a dc                	or     %ah,%bl
   1800811ef:	0a db                	or     %bl,%bl
   1800811f1:	0a e5                	or     %ch,%ah
   1800811f3:	0a d8                	or     %al,%bl
   1800811f5:	0a d7                	or     %bh,%dl
   1800811f7:	0a 24 09             	or     (%rcx,%rcx,1),%ah
   1800811fa:	23 09                	and    (%rcx),%ecx
   1800811fc:	25 0a 42 0a 31       	and    $0x310a420a,%eax
   180081201:	0a 58 0a             	or     0xa(%rax),%bl
   180081204:	5c                   	pop    %rsp
   180081205:	0a 41 0a             	or     0xa(%rcx),%al
   180081208:	40 0a 56 0a          	rex or 0xa(%rsi),%dl
   18008120c:	55                   	push   %rbp
   18008120d:	0a 54 0a 5b          	or     0x5b(%rdx,%rcx,1),%dl
   180081211:	0a 57 0a             	or     0xa(%rdi),%dl
   180081214:	28 0a                	sub    %cl,(%rdx)
   180081216:	27                   	(bad)  
   180081217:	0a 26                	or     (%rsi),%ah
   180081219:	0a 45 0a             	or     0xa(%rbp),%al
   18008121c:	44 0a 2a             	or     (%rdx),%r13b
   18008121f:	0a 2b                	or     (%rbx),%ch
   180081221:	0a 2c 0a             	or     (%rdx,%rcx,1),%ch
   180081224:	29 0a                	sub    %ecx,(%rdx)
   180081226:	2d 0a 49 0a 5f       	sub    $0x5f0a490a,%eax
   18008122b:	0a 60 0a             	or     0xa(%rax),%ah
   18008122e:	5d                   	pop    %rbp
   18008122f:	0a 2f                	or     (%rdi),%ch
   180081231:	0a 2e                	or     (%rsi),%ch
   180081233:	0a 30                	or     (%rax),%dh
   180081235:	0a 2b                	or     (%rbx),%ch
   180081237:	09 28                	or     %ebp,(%rax)
   180081239:	09 23                	or     %esp,(%rbx)
   18008123b:	0a 4a 0a             	or     0xa(%rdx),%cl
   18008123e:	46 0a dd             	rex.RX or %bpl,%r11b
   180081241:	0a 24 0a             	or     (%rdx,%rcx,1),%ah
   180081244:	80 09 62             	orb    $0x62,(%rcx)
   180081247:	02 87 03 73 02 71    	add    0x71027303(%rdi),%al
   18008124d:	02 72 02             	add    0x2(%rdx),%dh
   180081250:	82                   	(bad)  
   180081251:	02 86 02 87 02 89    	add    -0x76fd78fe(%rsi),%al
   180081257:	02 c9                	add    %cl,%cl
   180081259:	02 7b 02             	add    0x2(%rbx),%bh
   18008125c:	94                   	xchg   %eax,%esp
   18008125d:	02 64 02 cb          	add    -0x35(%rdx,%rax,1),%ah
   180081261:	02 91 02 c7 02 8f    	add    -0x70fd38fe(%rcx),%dl
   180081267:	03 90 03 79 02 c8    	add    -0x37fd86fd(%rax),%edx
   18008126d:	02 97 02 88 02 8e    	add    -0x71fd77fe(%rdi),%dl
   180081273:	02 ca                	add    %dl,%cl
   180081275:	02 4f 02             	add    0x2(%rdi),%cl
   180081278:	50                   	push   %rax
   180081279:	02 4c 02 c4          	add    -0x3c(%rdx,%rax,1),%cl
   18008127d:	02 c5                	add    %ch,%al
   18008127f:	02 61 02             	add    0x2(%rcx),%ah
   180081282:	4a 02 3d 05 33 07 37 	rex.WX add 0x37073305(%rip),%dil        # 0x1b70f458e
   180081289:	07                   	(bad)  
   18008128a:	2f                   	(bad)  
   18008128b:	06                   	(bad)  
   18008128c:	2c 06                	sub    $0x6,%al
   18008128e:	2b 06                	sub    (%rsi),%eax
   180081290:	2d 06 27 06 36       	sub    $0x36062706,%eax
   180081295:	07                   	(bad)  
   180081296:	37                   	(bad)  
   180081297:	05 3c 07 d4 04       	add    $0x4d4073c,%eax
   18008129c:	3e 07                	ds (bad) 
   18008129e:	84 02                	test   %al,(%rdx)
   1800812a0:	85 02                	test   %eax,(%rdx)
   1800812a2:	3f                   	(bad)  
   1800812a3:	07                   	(bad)  
   1800812a4:	cb                   	lret   
   1800812a5:	04 ca                	add    $0xca,%al
   1800812a7:	04 34                	add    $0x34,%al
   1800812a9:	07                   	(bad)  
   1800812aa:	32 07                	xor    (%rdi),%al
   1800812ac:	2d 07 30 07 2e       	sub    $0x2e073007,%eax
   1800812b1:	07                   	(bad)  
   1800812b2:	31 07                	xor    %eax,(%rdi)
   1800812b4:	2f                   	(bad)  
   1800812b5:	07                   	(bad)  
   1800812b6:	35 07 db 04 da       	xor    $0xda04db07,%eax
   1800812bb:	04 38                	add    $0x38,%al
   1800812bd:	07                   	(bad)  
   1800812be:	39 07                	cmp    %eax,(%rdi)
   1800812c0:	3a 07                	cmp    (%rdi),%al
   1800812c2:	c3                   	ret    
   1800812c3:	02 3b                	add    (%rbx),%bh
   1800812c5:	07                   	(bad)  
   1800812c6:	f8                   	clc    
   1800812c7:	04 42                	add    $0x42,%al
   1800812c9:	07                   	(bad)  
   1800812ca:	43 07                	rex.XB (bad) 
   1800812cc:	17                   	(bad)  
   1800812cd:	03 1b                	add    (%rbx),%ebx
   1800812cf:	03 32                	add    (%rdx),%esi
   1800812d1:	03 1c 03             	add    (%rbx,%rax,1),%ebx
   1800812d4:	1d 03 3d 07 41       	sbb    $0x41073d03,%eax
   1800812d9:	07                   	(bad)  
   1800812da:	40 07                	rex (bad) 
   1800812dc:	b4 04                	mov    $0x4,%ah
   1800812de:	b2 04                	mov    $0x4,%dl
   1800812e0:	bd 04 99 04 9a       	mov    $0x9a049904,%ebp
   1800812e5:	04 fe                	add    $0xfe,%al
   1800812e7:	03 bc 04 c0 04 11 03 	add    0x31104c0(%rsp,%rax,1),%edi
   1800812ee:	10 03                	adc    %al,(%rbx)
   1800812f0:	14 03                	adc    $0x3,%al
   1800812f2:	09 03                	or     %eax,(%rbx)
   1800812f4:	26 03 d1             	es add %ecx,%edx
   1800812f7:	03 b3 03 b2 03 bd    	add    -0x42fc4dfd(%rbx),%esi
   1800812fd:	03 bf 03 ce 03 96    	add    -0x69fc31fd(%rdi),%edi
   180081303:	02 80 02 bb 03 ca    	add    -0x35fc44fe(%rax),%al
   180081309:	03 93 02 c5 03 c6    	add    -0x39fc3afe(%rbx),%edx
   18008130f:	03 c3                	add    %ebx,%eax
   180081311:	03 c2                	add    %edx,%eax
   180081313:	03 cb                	add    %ebx,%ecx
   180081315:	03 c7                	add    %edi,%eax
   180081317:	03 c8                	add    %eax,%ecx
   180081319:	03 c9                	add    %ecx,%ecx
   18008131b:	03 3a                	add    (%rdx),%edi
   18008131d:	03 3b                	add    (%rbx),%edi
   18008131f:	03 3c 03             	add    (%rbx,%rax,1),%edi
   180081322:	b6 03                	mov    $0x3,%dh
   180081324:	b5 03                	mov    $0x3,%ch
   180081326:	b7 03                	mov    $0x3,%bh
   180081328:	b8 03 cf 03 bc       	mov    $0xbc03cf03,%eax
   18008132d:	03 c1                	add    %ecx,%eax
   18008132f:	03 d0                	add    %eax,%edx
   180081331:	03 be 03 a9 03 a7    	add    -0x58fc56fd(%rsi),%edi
   180081337:	03 ac 03 ab 03 ae 03 	add    0x3ae03ab(%rbx,%rax,1),%ebp
   18008133e:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
   18008133f:	03 af 03 a8 03 a3    	add    -0x5cfc57fd(%rdi),%ebp
   180081345:	03 aa 03 ad 03 a6    	add    -0x59fc52fd(%rdx),%ebp
   18008134b:	03 a5 03 a2 03 a1    	add    -0x5efc5dfd(%rbp),%esp
   180081351:	03 a0 03 38 03 49    	add    0x49033803(%rax),%esp
   180081357:	02 48 02             	add    0x2(%rax),%cl
   18008135a:	13 03                	adc    (%rbx),%eax
   18008135c:	28 03                	sub    %al,(%rbx)
   18008135e:	27                   	(bad)  
   18008135f:	03 29                	add    (%rcx),%ebp
   180081361:	03 37                	add    (%rdi),%esi
   180081363:	03 9f 03 0d 03 0f    	add    0xf030d03(%rdi),%ebx
   180081369:	03 0e                	add    (%rsi),%ecx
   18008136b:	03 12                	add    (%rdx),%edx
   18008136d:	03 2b                	add    (%rbx),%ebp
   18008136f:	03 2e                	add    (%rsi),%ebp
   180081371:	03 2d 03 24 03 30    	add    0x30032403(%rip),%ebp        # 0x1b00b377a
   180081377:	03 35 03 31 03 0a    	add    0xa033103(%rip),%esi        # 0x18a0b4480
   18008137d:	03 0b                	add    (%rbx),%ecx
   18008137f:	03 0c 03             	add    (%rbx,%rax,1),%ecx
   180081382:	23 03                	and    (%rbx),%eax
   180081384:	19 03                	sbb    %eax,(%rbx)
   180081386:	8a 02                	mov    (%rdx),%al
   180081388:	98                   	cwtl   
   180081389:	02 8c 02 8b 02 8d 02 	add    0x28d028b(%rdx,%rax,1),%cl
   180081390:	56                   	push   %rsi
   180081391:	02 b3 04 a1 07 0d    	add    0xd07a104(%rbx),%dh
   180081397:	07                   	(bad)  
   180081398:	f3 06                	repz (bad) 
   18008139a:	29 07                	sub    %eax,(%rdi)
   18008139c:	c4                   	(bad)  
   18008139d:	06                   	(bad)  
   18008139e:	cb                   	lret   
   18008139f:	06                   	(bad)  
   1800813a0:	c7 06 c5 06 c6 06    	movl   $0x6c606c5,(%rsi)
   1800813a6:	c0 06 c1             	rolb   $0xc1,(%rsi)
   1800813a9:	06                   	(bad)  
   1800813aa:	c2 06 c3             	ret    $0xc306
   1800813ad:	06                   	(bad)  
   1800813ae:	e3 06                	jrcxz  0x1800813b6
   1800813b0:	dd 06                	fldl   (%rsi)
   1800813b2:	c9                   	leave  
   1800813b3:	06                   	(bad)  
   1800813b4:	c8 06 ca 06          	enter  $0xca06,$0x6
   1800813b8:	cd 06                	int    $0x6
   1800813ba:	ce                   	(bad)  
   1800813bb:	06                   	(bad)  
   1800813bc:	d1 06                	roll   (%rsi)
   1800813be:	d0 06                	rolb   (%rsi)
   1800813c0:	cf                   	iret   
   1800813c1:	06                   	(bad)  
   1800813c2:	e7 06                	out    %eax,$0x6
   1800813c4:	e8 06 e9 06 ed       	call   0x16d0efccf
   1800813c9:	06                   	(bad)  
   1800813ca:	ee                   	out    %al,(%dx)
   1800813cb:	06                   	(bad)  
   1800813cc:	ef                   	out    %eax,(%dx)
   1800813cd:	06                   	(bad)  
   1800813ce:	ec                   	in     (%dx),%al
   1800813cf:	06                   	(bad)  
   1800813d0:	f1                   	int1   
   1800813d1:	06                   	(bad)  
   1800813d2:	f0 06                	lock (bad) 
   1800813d4:	ea                   	(bad)  
   1800813d5:	06                   	(bad)  
   1800813d6:	eb 06                	jmp    0x1800813de
   1800813d8:	e6 06                	out    %al,$0x6
   1800813da:	cc                   	int3   
   1800813db:	06                   	(bad)  
   1800813dc:	0f 07                	sysretl 
   1800813de:	0e                   	(bad)  
   1800813df:	07                   	(bad)  
   1800813e0:	23 07                	and    (%rdi),%eax
   1800813e2:	14 07                	adc    $0x7,%al
   1800813e4:	19 07                	sbb    %eax,(%rdi)
   1800813e6:	1b 07                	sbb    (%rdi),%eax
   1800813e8:	15 07 16 07 17       	adc    $0x17071607,%eax
   1800813ed:	07                   	(bad)  
   1800813ee:	1a 07                	sbb    (%rdi),%al
   1800813f0:	18 07                	sbb    %al,(%rdi)
   1800813f2:	11 07                	adc    %eax,(%rdi)
   1800813f4:	12 07                	adc    (%rdi),%al
   1800813f6:	ab                   	stos   %eax,%es:(%rdi)
   1800813f7:	07                   	(bad)  
   1800813f8:	ac                   	lods   %ds:(%rsi),%al
   1800813f9:	07                   	(bad)  
   1800813fa:	02 07                	add    (%rdi),%al
   1800813fc:	07                   	(bad)  
   1800813fd:	07                   	(bad)  
   1800813fe:	fc                   	cld    
   1800813ff:	06                   	(bad)  
   180081400:	00 07                	add    %al,(%rdi)
   180081402:	01 07                	add    %eax,(%rdi)
   180081404:	04 07                	add    $0x7,%al
   180081406:	fa                   	cli    
   180081407:	06                   	(bad)  
   180081408:	f9                   	stc    
   180081409:	06                   	(bad)  
   18008140a:	0a 07                	or     (%rdi),%al
   18008140c:	08 07                	or     %al,(%rdi)
   18008140e:	03 07                	add    (%rdi),%eax
   180081410:	05 07 06 07 fe       	add    $0xfe070607,%eax
   180081415:	06                   	(bad)  
   180081416:	fd                   	std    
   180081417:	06                   	(bad)  
   180081418:	ff 06                	incl   (%rsi)
   18008141a:	fb                   	sti    
   18008141b:	06                   	(bad)  
   18008141c:	09 07                	or     %eax,(%rdi)
   18008141e:	10 07                	adc    %al,(%rdi)
   180081420:	1c 07                	sbb    $0x7,%al
   180081422:	21 07                	and    %eax,(%rdi)
   180081424:	20 07                	and    %al,(%rdi)
   180081426:	1d 07 22 07 1e       	sbb    $0x1e072207,%eax
   18008142b:	07                   	(bad)  
   18008142c:	1f                   	(bad)  
   18008142d:	07                   	(bad)  
   18008142e:	13 07                	adc    (%rdi),%eax
   180081430:	2a 07                	sub    (%rdi),%al
   180081432:	88 07                	mov    %al,(%rdi)
   180081434:	2b 07                	sub    (%rdi),%eax
   180081436:	87 07                	xchg   %eax,(%rdi)
   180081438:	25 07 24 07 2c       	and    $0x2c072407,%eax
   18008143d:	07                   	(bad)  
   18008143e:	f4                   	hlt    
   18008143f:	06                   	(bad)  
   180081440:	f5                   	cmc    
   180081441:	06                   	(bad)  
   180081442:	f7 06 f8 06 f6 06    	testl  $0x6f606f8,(%rsi)
   180081448:	f2 06                	repnz (bad) 
   18008144a:	a9 07 aa 07 ad       	test   $0xad07aa07,%eax
   18008144f:	07                   	(bad)  
   180081450:	89 07                	mov    %eax,(%rdi)
   180081452:	8b 07                	mov    (%rdi),%eax
   180081454:	8e 07                	mov    (%rdi),%es
   180081456:	8a 07                	mov    (%rdi),%al
   180081458:	99                   	cltd   
   180081459:	07                   	(bad)  
   18008145a:	a8 07                	test   $0x7,%al
   18008145c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008145d:	07                   	(bad)  
   18008145e:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   18008145f:	07                   	(bad)  
   180081460:	a2 07 a7 07 a4 07 a3 	movabs %al,0x8f07a307a407a707
   180081467:	07 8f 
   180081469:	07                   	(bad)  
   18008146a:	b8 07 b2 07 bb       	mov    $0xbb07b207,%eax
   18008146f:	07                   	(bad)  
   180081470:	bc 07 b3 07 26       	mov    $0x2607b307,%esp
   180081475:	07                   	(bad)  
   180081476:	28 07                	sub    %al,(%rdi)
   180081478:	27                   	(bad)  
   180081479:	07                   	(bad)  
   18008147a:	ba 07 b9 07 b1       	mov    $0xb107b907,%edx
   18008147f:	07                   	(bad)  
   180081480:	ae                   	scas   %es:(%rdi),%al
   180081481:	07                   	(bad)  
   180081482:	af                   	scas   %es:(%rdi),%eax
   180081483:	07                   	(bad)  
   180081484:	b0 07                	mov    $0x7,%al
   180081486:	9b                   	fwait
   180081487:	07                   	(bad)  
   180081488:	8d 07                	lea    (%rdi),%eax
   18008148a:	8c 07                	mov    %es,(%rdi)
   18008148c:	90                   	nop
   18008148d:	07                   	(bad)  
   18008148e:	e5 06                	in     $0x6,%eax
   180081490:	e4 06                	in     $0x6,%al
   180081492:	be 06 bf 06 bd       	mov    $0xbd06bf06,%esi
   180081497:	06                   	(bad)  
   180081498:	bc 06 96 07 97       	mov    $0x97079606,%esp
   18008149d:	07                   	(bad)  
   18008149e:	95                   	xchg   %eax,%ebp
   18008149f:	07                   	(bad)  
   1800814a0:	98                   	cwtl   
   1800814a1:	07                   	(bad)  
   1800814a2:	9e                   	sahf   
   1800814a3:	07                   	(bad)  
   1800814a4:	94                   	xchg   %eax,%esp
   1800814a5:	07                   	(bad)  
   1800814a6:	9f                   	lahf   
   1800814a7:	07                   	(bad)  
   1800814a8:	91                   	xchg   %eax,%ecx
   1800814a9:	07                   	(bad)  
   1800814aa:	9a                   	(bad)  
   1800814ab:	07                   	(bad)  
   1800814ac:	93                   	xchg   %eax,%ebx
   1800814ad:	07                   	(bad)  
   1800814ae:	9d                   	popf   
   1800814af:	07                   	(bad)  
   1800814b0:	92                   	xchg   %eax,%edx
   1800814b1:	07                   	(bad)  
   1800814b2:	9c                   	pushf  
   1800814b3:	07                   	(bad)  
   1800814b4:	3f                   	(bad)  
   1800814b5:	08 42 08             	or     %al,0x8(%rdx)
   1800814b8:	40 08 59 08          	rex or %bl,0x8(%rcx)
   1800814bc:	3d 08 3e 08 3c       	cmp    $0x3c083e08,%eax
   1800814c1:	08 50 08             	or     %dl,0x8(%rax)
   1800814c4:	4a 08 51 08          	rex.WX or %dl,0x8(%rcx)
   1800814c8:	46 08 47 08          	rex.RX or %r8b,0x8(%rdi)
   1800814cc:	56                   	push   %rsi
   1800814cd:	08 57 08             	or     %dl,0x8(%rdi)
   1800814d0:	58                   	pop    %rax
   1800814d1:	08 55 08             	or     %dl,0x8(%rbp)
   1800814d4:	43 08 0b             	rex.XB or %cl,(%r11)
   1800814d7:	07                   	(bad)  
   1800814d8:	41 08 49 08          	or     %cl,0x8(%r9)
   1800814dc:	52                   	push   %rdx
   1800814dd:	08 4d 08             	or     %cl,0x8(%rbp)
   1800814e0:	4f 08 4c 08 4e       	rex.WRXB or %r9b,0x4e(%r8,%r9,1)
   1800814e5:	08 4b 08             	or     %cl,0x8(%rbx)
   1800814e8:	53                   	push   %rbx
   1800814e9:	08 54 08 48          	or     %dl,0x48(%rax,%rcx,1)
   1800814ed:	08 b4 07 44 08 45 08 	or     %dh,0x8450844(%rdi,%rax,1)
   1800814f4:	b7 07                	mov    $0x7,%bh
   1800814f6:	b6 07                	mov    $0x7,%dh
   1800814f8:	3b 08                	cmp    (%rax),%ecx
   1800814fa:	38 08                	cmp    %cl,(%rax)
   1800814fc:	39 08                	cmp    %ecx,(%rax)
   1800814fe:	b5 07                	mov    $0x7,%ch
   180081500:	3a 08                	cmp    (%rax),%cl
   180081502:	a0 07 d4 06 d2 06 d3 	movabs 0xdf06d306d206d407,%al
   180081509:	06 df 
   18008150b:	06                   	(bad)  
   18008150c:	d7                   	xlat   %ds:(%rbx)
   18008150d:	06                   	(bad)  
   18008150e:	d6                   	(bad)  
   18008150f:	06                   	(bad)  
   180081510:	d9 06                	flds   (%rsi)
   180081512:	de 06                	fiadds (%rsi)
   180081514:	d8 06                	fadds  (%rsi)
   180081516:	e2 06                	loop   0x18008151e
   180081518:	e1 06                	loope  0x180081520
   18008151a:	d5                   	(bad)  
   18008151b:	06                   	(bad)  
   18008151c:	dc 06                	faddl  (%rsi)
   18008151e:	db 06                	fildl  (%rsi)
   180081520:	da 06                	fiaddl (%rsi)
   180081522:	e0 06                	loopne 0x18008152a
   180081524:	28 01                	sub    %al,(%rcx)
   180081526:	29 01                	sub    %eax,(%rcx)
   180081528:	ec                   	in     (%dx),%al
   180081529:	00 e6                	add    %ah,%dh
   18008152b:	00 e2                	add    %ah,%dl
   18008152d:	00 2b                	add    %ch,(%rbx)
   18008152f:	01 c7                	add    %eax,%edi
   180081531:	01 c6                	add    %eax,%esi
   180081533:	01 be 01 bf 01 b4    	add    %edi,-0x4bfe40ff(%rsi)
   180081539:	01 cd                	add    %ecx,%ebp
   18008153b:	01 b5 01 af 01 b2    	add    %esi,-0x4dfe50ff(%rbp)
   180081541:	01 b1 01 b0 01 ef    	add    %esi,-0x10fe4fff(%rcx)
   180081547:	01 b3 01 14 00 13    	add    %esi,0x13001401(%rbx)
   18008154d:	00 96 01 a3 01 99    	add    %dl,-0x66fe5cff(%rsi)
   180081553:	01 9c 01 a1 01 a2 01 	add    %ebx,0x1a201a1(%rcx,%rax,1)
   18008155a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008155b:	01 98 01 ab 01 97    	add    %ebx,-0x68fe54ff(%rax)
   180081561:	01 a9 01 aa 01 9b    	add    %ebp,-0x64fe55ff(%rcx)
   180081567:	01 9a 01 9f 01 9e    	add    %ebx,-0x61fe60ff(%rdx)
   18008156d:	01 9d 01 a5 01 ad    	add    %ebx,-0x52fe5aff(%rbp)
   180081573:	01 ac 01 bd 01 e6 01 	add    %ebp,0x1e601bd(%rcx,%rax,1)
   18008157a:	e8 01 e7 01 d5       	call   0x15509fc80
   18008157f:	01 e4                	add    %esp,%esp
   180081581:	01 da                	add    %ebx,%edx
   180081583:	01 d9                	add    %ebx,%ecx
   180081585:	01 10                	add    %edx,(%rax)
   180081587:	01 de                	add    %ebx,%esi
   180081589:	00 ed                	add    %ch,%ch
   18008158b:	01 d3                	add    %edx,%ebx
   18008158d:	01 d4                	add    %edx,%esp
   18008158f:	01 ee                	add    %ebp,%esi
   180081591:	01 d0                	add    %edx,%eax
   180081593:	01 d2                	add    %edx,%edx
   180081595:	00 c4                	add    %al,%ah
   180081597:	01 c5                	add    %eax,%ebp
   180081599:	01 eb                	add    %ebp,%ebx
   18008159b:	01 14 01             	add    %edx,(%rcx,%rax,1)
   18008159e:	15 01 c9 01 c8       	adc    $0xc801c901,%eax
   1800815a3:	01 cb                	add    %ecx,%ebx
   1800815a5:	01 ca                	add    %ecx,%edx
   1800815a7:	01 ce                	add    %ecx,%esi
   1800815a9:	01 cf                	add    %ecx,%edi
   1800815ab:	01 fc                	add    %edi,%esp
   1800815ad:	01 f1                	add    %esi,%ecx
   1800815af:	00 ea                	add    %ch,%dl
   1800815b1:	01 d8                	add    %ebx,%eax
   1800815b3:	01 d7                	add    %edx,%edi
   1800815b5:	01 d6                	add    %edx,%esi
   1800815b7:	01 e1                	add    %esp,%ecx
   1800815b9:	01 dd                	add    %ebx,%ebp
   1800815bb:	01 df                	add    %ebx,%edi
   1800815bd:	01 dc                	add    %ebx,%esp
   1800815bf:	01 de                	add    %ebx,%esi
   1800815c1:	01 e0                	add    %esp,%eax
   1800815c3:	01 e2                	add    %esp,%edx
   1800815c5:	01 e3                	add    %esp,%ebx
   1800815c7:	01 c1                	add    %eax,%ecx
   1800815c9:	01 c0                	add    %eax,%eax
   1800815cb:	01 c2                	add    %eax,%edx
   1800815cd:	01 c3                	add    %eax,%ebx
   1800815cf:	01 b9 01 bb 01 bc    	add    %edi,-0x43fe44ff(%rcx)
   1800815d5:	01 b6 01 f2 00 ba    	add    %esi,-0x45ff0dff(%rsi)
   1800815db:	01 b7 01 0c 00 0b    	add    %esi,0xb000c01(%rdi)
   1800815e1:	00 c2                	add    %al,%dl
   1800815e3:	09 e2                	or     %esp,%edx
   1800815e5:	09 e0                	or     %esp,%eax
   1800815e7:	09 e1                	or     %esp,%ecx
   1800815e9:	09 c5                	or     %eax,%ebp
   1800815eb:	09 c4                	or     %eax,%esp
   1800815ed:	09 e5                	or     %esp,%ebp
   1800815ef:	09 cb                	or     %ecx,%ebx
   1800815f1:	09 ca                	or     %ecx,%edx
   1800815f3:	09 c7                	or     %eax,%edi
   1800815f5:	09 c9                	or     %ecx,%ecx
   1800815f7:	09 c8                	or     %ecx,%eax
   1800815f9:	09 c3                	or     %eax,%ebx
   1800815fb:	09 c1                	or     %eax,%ecx
   1800815fd:	09 c0                	or     %eax,%eax
   1800815ff:	09 bd 09 bf 09 bc    	or     %edi,-0x43f640f7(%rbp)
   180081605:	09 ed                	or     %ebp,%ebp
   180081607:	09 e4                	or     %esp,%esp
   180081609:	09 ba 09 e3 09 e8    	or     %edi,-0x17f61cf7(%rdx)
   18008160f:	09 ea                	or     %ebp,%edx
   180081611:	09 ee                	or     %ebp,%esi
   180081613:	09 ec                	or     %ebp,%esp
   180081615:	09 e9                	or     %ebp,%ecx
   180081617:	09 d0                	or     %edx,%eax
   180081619:	09 d2                	or     %edx,%edx
   18008161b:	09 eb                	or     %ebp,%ebx
   18008161d:	09 e6                	or     %esp,%esi
   18008161f:	09 e7                	or     %esp,%edi
   180081621:	09 d6                	or     %edx,%esi
   180081623:	09 d4                	or     %edx,%esp
   180081625:	09 de                	or     %ebx,%esi
   180081627:	09 dd                	or     %ebx,%ebp
   180081629:	09 d3                	or     %edx,%ebx
   18008162b:	09 d5                	or     %edx,%ebp
   18008162d:	09 d8                	or     %ebx,%eax
   18008162f:	09 d9                	or     %ebx,%ecx
   180081631:	09 b0 09 da 09 dc    	or     %esi,-0x23f625f7(%rax)
   180081637:	09 b1 09 b4 09 b3    	or     %esi,-0x4cf64bf7(%rcx)
   18008163d:	09 b7 09 b5 09 b6    	or     %esi,-0x49f64af7(%rdi)
   180081643:	09 b9 09 b8 09 af    	or     %edi,-0x50f647f7(%rcx)
   180081649:	09 db                	or     %ebx,%ebx
   18008164b:	09 be 09 cf 09 b2    	or     %edi,-0x4df630f7(%rsi)
   180081651:	09 20                	or     %esp,(%rax)
   180081653:	0a 15 0a 14 0a 0e    	or     0xe0a140a(%rip),%dl        # 0x18e122a63
   180081659:	0a 11                	or     (%rcx),%dl
   18008165b:	0a 19                	or     (%rcx),%bl
   18008165d:	0a 0f                	or     (%rdi),%cl
   18008165f:	0a f6                	or     %dh,%dh
   180081661:	09 22                	or     %esp,(%rdx)
   180081663:	0a ef                	or     %bh,%ch
   180081665:	09 f3                	or     %esi,%ebx
   180081667:	09 f5                	or     %esi,%ebp
   180081669:	09 f4                	or     %esi,%esp
   18008166b:	09 f0                	or     %esi,%eax
   18008166d:	09 f2                	or     %esi,%edx
   18008166f:	09 f7                	or     %esi,%edi
   180081671:	09 f1                	or     %esi,%ecx
   180081673:	09 bb 09 ce 09 cd    	or     %edi,-0x32f631f7(%rbx)
   180081679:	09 0d 0a 10 0a 12    	or     %ecx,0x120a100a(%rip)        # 0x192122689
   18008167f:	0a 16                	or     (%rsi),%dl
   180081681:	0a 1b                	or     (%rbx),%bl
   180081683:	0a 1d 0a 1a 0a 1c    	or     0x1c0a1a0a(%rip),%bl        # 0x19c123093
   180081689:	0a 1f                	or     (%rdi),%bl
   18008168b:	0a 1e                	or     (%rsi),%bl
   18008168d:	0a cc                	or     %ah,%cl
   18008168f:	01 02                	add    %eax,(%rdx)
   180081691:	0a 09                	or     (%rcx),%cl
   180081693:	0a 03                	or     (%rbx),%al
   180081695:	0a 05 0a 08 0a 07    	or     0x70a080a(%rip),%al        # 0x187121ea5
   18008169b:	0a 06                	or     (%rsi),%al
   18008169d:	0a 04 0a             	or     (%rdx,%rcx,1),%al
   1800816a0:	0a 0a                	or     (%rdx),%cl
   1800816a2:	18 0a                	sbb    %cl,(%rdx)
   1800816a4:	0b 0a                	or     (%rdx),%ecx
   1800816a6:	13 0a                	adc    (%rdx),%ecx
   1800816a8:	f8                   	clc    
   1800816a9:	09 f9                	or     %edi,%ecx
   1800816ab:	09 ff                	or     %edi,%edi
   1800816ad:	09 fd                	or     %edi,%ebp
   1800816af:	09 fe                	or     %edi,%esi
   1800816b1:	09 01                	or     %eax,(%rcx)
   1800816b3:	0a 00                	or     (%rax),%al
   1800816b5:	0a fa                	or     %dl,%bh
   1800816b7:	09 fc                	or     %edi,%esp
   1800816b9:	09 fb                	or     %edi,%ebx
   1800816bb:	09 0c 0a             	or     %ecx,(%rdx,%rcx,1)
   1800816be:	9c                   	pushf  
   1800816bf:	02 99 02 92 03 a0    	add    -0x5ffc6dfe(%rcx),%bl
   1800816c5:	02 9f 02 f7 02 f9    	add    -0x6fd08fe(%rdi),%bl
   1800816cb:	02 f8                	add    %al,%bh
   1800816cd:	02 fa                	add    %dl,%bh
   1800816cf:	02 fb                	add    %bl,%bh
   1800816d1:	02 a2 02 91 03 9d    	add    -0x62fc6efe(%rdx),%ah
   1800816d7:	02 a3 02 a1 02 9e    	add    -0x61fd5efe(%rbx),%ah
   1800816dd:	02 a6 02 9b 02 94    	add    -0x6bfd64fe(%rsi),%ah
   1800816e3:	03 5e 05             	add    0x5(%rsi),%ebx
   1800816e6:	41 05 3b 06 40 05    	rex.B add $0x540063b,%eax
   1800816ec:	45 05 3e 05 3f 05    	rex.RB add $0x53f053e,%eax
   1800816f2:	46 05 71 05 43 05    	rex.RX add $0x5430571,%eax
   1800816f8:	44 05 93 03 9a 02    	rex.R add $0x29a0393,%eax
   1800816fe:	dc 03                	faddl  (%rbx)
   180081700:	4a 05 f6 02 fe 02    	rex.WX add $0x2fe02f6,%rax
   180081706:	fd                   	std    
   180081707:	02 76 05             	add    0x5(%rsi),%dh
   18008170a:	47 05 45 03 66 03    	rex.RXB add $0x3660345,%eax
   180081710:	65 03 73 03          	add    %gs:0x3(%rbx),%esi
   180081714:	71 03                	jno    0x180081719
   180081716:	70 03                	jo     0x18008171b
   180081718:	74 03                	je     0x18008171d
   18008171a:	75 03                	jne    0x18008171f
   18008171c:	dd 03                	fldl   (%rbx)
   18008171e:	de 03                	fiadds (%rbx)
   180081720:	d2 03                	rolb   %cl,(%rbx)
   180081722:	db 03                	fildl  (%rbx)
   180081724:	d4                   	(bad)  
   180081725:	03 da                	add    %edx,%ebx
   180081727:	03 d9                	add    %ecx,%ebx
   180081729:	03 ec                	add    %esp,%ebp
   18008172b:	03 ed                	add    %ebp,%ebp
   18008172d:	03 ee                	add    %esi,%ebp
   18008172f:	03 d7                	add    %edi,%edx
   180081731:	03 f2                	add    %edx,%esi
   180081733:	03 f6                	add    %esi,%esi
   180081735:	03 ef                	add    %edi,%ebp
   180081737:	03 f8                	add    %eax,%edi
   180081739:	03 f7                	add    %edi,%esi
   18008173b:	03 f1                	add    %ecx,%esi
   18008173d:	03 f9                	add    %ecx,%edi
   18008173f:	03 f3                	add    %ebx,%esi
   180081741:	03 f4                	add    %esp,%esi
   180081743:	03 f5                	add    %ebp,%esi
   180081745:	03 f0                	add    %eax,%esi
   180081747:	03 e3                	add    %ebx,%esp
   180081749:	03 e6                	add    %esi,%esp
   18008174b:	03 e0                	add    %eax,%esp
   18008174d:	03 e9                	add    %ecx,%ebp
   18008174f:	03 e8                	add    %eax,%ebp
   180081751:	03 ea                	add    %edx,%ebp
   180081753:	03 e1                	add    %ecx,%esp
   180081755:	03 e5                	add    %ebp,%esp
   180081757:	03 eb                	add    %ebx,%ebp
   180081759:	03 e4                	add    %esp,%esp
   18008175b:	03 e7                	add    %edi,%esp
   18008175d:	03 e2                	add    %edx,%esp
   18008175f:	03 d6                	add    %esi,%edx
   180081761:	03 d8                	add    %eax,%ebx
   180081763:	03 fa                	add    %edx,%edi
   180081765:	03 3f                	add    (%rdi),%edi
   180081767:	03 3e                	add    (%rsi),%edi
   180081769:	03 d5                	add    %ebp,%edx
   18008176b:	03 df                	add    %edi,%ebx
   18008176d:	03 d3                	add    %ebx,%edx
   18008176f:	03 5b 03             	add    0x3(%rbx),%ebx
   180081772:	43 03 5f 03          	rex.XB add 0x3(%r15),%ebx
   180081776:	67 03 5e 03          	add    0x3(%esi),%ebx
   18008177a:	60                   	(bad)  
   18008177b:	03 63 03             	add    0x3(%rbx),%esp
   18008177e:	46 03 52 03          	rex.RX add 0x3(%rdx),%r10d
   180081782:	4c 03 4f 03          	add    0x3(%rdi),%r9
   180081786:	4a 03 4d 03          	rex.WX add 0x3(%rbp),%rcx
   18008178a:	4e 03 50 03          	rex.WRX add 0x3(%rax),%r10
   18008178e:	51                   	push   %rcx
   18008178f:	03 4b 03             	add    0x3(%rbx),%ecx
   180081792:	47 03 49 03          	rex.RXB add 0x3(%r9),%r9d
   180081796:	72 03                	jb     0x18008179b
   180081798:	6f                   	outsl  %ds:(%rsi),(%dx)
   180081799:	03 40 03             	add    0x3(%rax),%eax
   18008179c:	41 03 42 03          	add    0x3(%r10),%eax
   1800817a0:	44 03 6c 03 61       	add    0x61(%rbx,%rax,1),%r13d
   1800817a5:	03 6d 03             	add    0x3(%rbp),%ebp
   1800817a8:	62 03                	(bad)  
   1800817aa:	6a 03                	push   $0x3
   1800817ac:	69 03 6b 03 6e 03    	imul   $0x36e036b,(%rbx),%eax
   1800817b2:	68 03 58 03 59       	push   $0x59035803
   1800817b7:	03 56 03             	add    0x3(%rsi),%edx
   1800817ba:	55                   	push   %rbp
   1800817bb:	03 57 03             	add    0x3(%rdi),%edx
   1800817be:	64 03 53 03          	add    %fs:0x3(%rbx),%edx
   1800817c2:	5c                   	pop    %rsp
   1800817c3:	03 5d 03             	add    0x3(%rbp),%ebx
   1800817c6:	48 03 54 03 3d       	add    0x3d(%rbx,%rax,1),%rdx
   1800817cb:	03 a5 02 5a 03 a4    	add    -0x5bfca5fe(%rbp),%esp
   1800817d1:	02 fc                	add    %ah,%bh
   1800817d3:	02 08                	add    (%rax),%cl
   1800817d5:	09 e4                	or     %esp,%esp
   1800817d7:	08 e7                	or     %ah,%bh
   1800817d9:	08 e8                	or     %ch,%al
   1800817db:	08 e5                	or     %ah,%ch
   1800817dd:	08 e9                	or     %ch,%cl
   1800817df:	08 e6                	or     %ah,%dh
   1800817e1:	08 87 0a dc 08 e3    	or     %al,-0x1cf723f6(%rdi)
   1800817e7:	08 ed                	or     %ch,%ch
   1800817e9:	08 ee                	or     %ch,%dh
   1800817eb:	08 eb                	or     %ch,%bl
   1800817ed:	08 ef                	or     %ch,%bh
   1800817ef:	08 ea                	or     %ch,%dl
   1800817f1:	08 ec                	or     %ch,%ah
   1800817f3:	08 10                	or     %dl,(%rax)
   1800817f5:	09 d5                	or     %edx,%ebp
   1800817f7:	0a 88 0a 09 09 06    	or     0x609090a(%rax),%cl
   1800817fd:	09 04 09             	or     %eax,(%rcx,%rcx,1)
   180081800:	05 09 16 09 fa       	add    $0xfa091609,%eax
   180081805:	08 fb                	or     %bh,%bl
   180081807:	08 00                	or     %al,(%rax)
   180081809:	09 fc                	or     %edi,%esp
   18008180b:	08 fe                	or     %bh,%dh
   18008180d:	08 ff                	or     %bh,%bh
   18008180f:	08 fd                	or     %bh,%ch
   180081811:	08 20                	or     %ah,(%rax)
   180081813:	09 1e                	or     %ebx,(%rsi)
   180081815:	09 1d 09 1c 09 1b    	or     %ebx,0x1b091c09(%rip)        # 0x19b113424
   18008181b:	09 18                	or     %ebx,(%rax)
   18008181d:	09 19                	or     %ebx,(%rcx)
   18008181f:	09 21                	or     %esp,(%rcx)
   180081821:	09 1f                	or     %ebx,(%rdi)
   180081823:	09 1a                	or     %ebx,(%rdx)
   180081825:	09 12                	or     %edx,(%rdx)
   180081827:	09 11                	or     %edx,(%rcx)
   180081829:	09 f6                	or     %esi,%esi
   18008182b:	08 f7                	or     %dh,%bh
   18008182d:	08 f2                	or     %dh,%dl
   18008182f:	08 f0                	or     %dh,%al
   180081831:	08 f4                	or     %dh,%ah
   180081833:	08 f1                	or     %dh,%cl
   180081835:	08 f3                	or     %dh,%bl
   180081837:	08 f9                	or     %bh,%cl
   180081839:	08 f8                	or     %bh,%al
   18008183b:	08 02                	or     %al,(%rdx)
   18008183d:	09 03                	or     %eax,(%rbx)
   18008183f:	09 01                	or     %eax,(%rcx)
   180081841:	09 e2                	or     %esp,%edx
   180081843:	08 13                	or     %dl,(%rbx)
   180081845:	09 15 09 14 09 86    	or     %edx,-0x79f6ebf7(%rip)        # 0x106112c54
   18008184b:	0a 0c 09             	or     (%rcx,%rcx,1),%cl
   18008184e:	0b 09                	or     (%rcx),%ecx
   180081850:	0a 09                	or     (%rcx),%cl
   180081852:	0d 09 8c 0a 8b       	or     $0x8b0a8c09,%eax
   180081857:	0a 8f 0a 17 09 7b    	or     0x7b09170a(%rdi),%cl
   18008185d:	09 89 0a 8a 0a db    	or     %ecx,-0x24f575f6(%rcx)
   180081863:	01 8e 0a 90 0a e9    	add    %ecx,-0x16f56ff6(%rsi)
   180081869:	01 7a 09             	add    %edi,0x9(%rdx)
   18008186c:	dd 08                	fisttpll (%rax)
   18008186e:	de 08                	fimuls (%rax)
   180081870:	6a 09                	push   $0x9
   180081872:	69 09 6f 09 6c 09    	imul   $0x96c096f,(%rcx),%ecx
   180081878:	6d                   	insl   (%dx),%es:(%rdi)
   180081879:	09 70 09             	or     %esi,0x9(%rax)
   18008187c:	6e                   	outsb  %ds:(%rsi),(%dx)
   18008187d:	09 5b 09             	or     %ebx,0x9(%rbx)
   180081880:	5a                   	pop    %rdx
   180081881:	09 db                	or     %ebx,%ebx
   180081883:	08 da                	or     %bl,%dl
   180081885:	08 df                	or     %bl,%bh
   180081887:	08 e0                	or     %ah,%al
   180081889:	08 52 09             	or     %dl,0x9(%rdx)
   18008188c:	53                   	push   %rbx
   18008188d:	09 54 09 57          	or     %edx,0x57(%rcx,%rcx,1)
   180081891:	09 55 09             	or     %edx,0x9(%rbp)
   180081894:	59                   	pop    %rcx
   180081895:	09 58 09             	or     %ebx,0x9(%rax)
   180081898:	56                   	push   %rsi
   180081899:	09 5c 09 76          	or     %ebx,0x76(%rcx,%rcx,1)
   18008189d:	09 71 09             	or     %esi,0x9(%rcx)
   1800818a0:	79 09                	jns    0x1800818ab
   1800818a2:	78 09                	js     0x1800818ad
   1800818a4:	73 09                	jae    0x1800818af
   1800818a6:	72 09                	jb     0x1800818b1
   1800818a8:	74 09                	je     0x1800818b3
   1800818aa:	77 09                	ja     0x1800818b5
   1800818ac:	75 09                	jne    0x1800818b7
   1800818ae:	5d                   	pop    %rbp
   1800818af:	09 5f 09             	or     %ebx,0x9(%rdi)
   1800818b2:	5e                   	pop    %rsi
   1800818b3:	09 60 09             	or     %esp,0x9(%rax)
   1800818b6:	64 09 65 09          	or     %esp,%fs:0x9(%rbp)
   1800818ba:	66 09 62 09          	or     %sp,0x9(%rdx)
   1800818be:	63 09                	movsxd (%rcx),%ecx
   1800818c0:	61                   	(bad)  
   1800818c1:	09 67 09             	or     %esp,0x9(%rdi)
   1800818c4:	68 09 6b 09 b3       	push   $0xffffffffb3096b09
   1800818c9:	0a b6 0a b5 0a b4    	or     -0x4bf54af6(%rsi),%dh
   1800818cf:	0a b7 0a b8 0a d2    	or     -0x2df547f6(%rdi),%dh
   1800818d5:	0a c5                	or     %ch,%al
   1800818d7:	0a c6                	or     %dh,%al
   1800818d9:	0a c4                	or     %ah,%al
   1800818db:	0a c8                	or     %al,%cl
   1800818dd:	0a c7                	or     %bh,%al
   1800818df:	0a bd 0a c2 0a bf    	or     -0x40f53df6(%rbp),%bh
   1800818e5:	0a c0                	or     %al,%al
   1800818e7:	0a be 0a c1 0a 0e    	or     0xe0ac10a(%rsi),%bh
   1800818ed:	09 d6                	or     %edx,%esi
   1800818ef:	0a 07                	or     (%rdi),%al
   1800818f1:	09 bc 0a ba 0a ca 0a 	or     %edi,0xaca0aba(%rdx,%rcx,1)
   1800818f8:	d4                   	(bad)  
   1800818f9:	0a d3                	or     %bl,%dl
   1800818fb:	0a c3                	or     %bl,%al
   1800818fd:	0a c9                	or     %cl,%cl
   1800818ff:	0a e1                	or     %cl,%ah
   180081901:	08 b9 0a 17 0a 21    	or     %bh,0x210a170a(%rcx)
   180081907:	0a 0f                	or     (%rdi),%cl
   180081909:	09 f5                	or     %esi,%ebp
   18008190b:	08 00                	or     %al,(%rax)
   18008190d:	00 01                	add    %al,(%rcx)
   18008190f:	00 f5                	add    %dh,%ch
   180081911:	00 05 00 08 00 0d    	add    %al,0xd000800(%rip)        # 0x18d082117
   180081917:	01 0a                	add    %ecx,(%rdx)
   180081919:	01 08                	add    %ecx,(%rax)
   18008191b:	01 07                	add    %eax,(%rdi)
   18008191d:	01 0b                	add    %ecx,(%rbx)
   18008191f:	01 09                	add    %ecx,(%rcx)
   180081921:	01 0c 01             	add    %ecx,(%rcx,%rax,1)
   180081924:	07                   	(bad)  
   180081925:	00 00                	add    %al,(%rax)
   180081927:	01 06                	add    %eax,(%rsi)
   180081929:	00 02                	add    %al,(%rdx)
   18008192b:	01 f4                	add    %esi,%esp
   18008192d:	00 ee                	add    %ch,%dh
   18008192f:	00 ef                	add    %ch,%bh
   180081931:	00 fa                	add    %bh,%dl
   180081933:	00 f3                	add    %dh,%bl
   180081935:	00 0f                	add    %cl,(%rdi)
   180081937:	01 12                	add    %edx,(%rdx)
   180081939:	00 0d 00 0e 01 26    	add    %cl,0x26010e00(%rip)        # 0x1a609273f
   18008193f:	01 04 01             	add    %eax,(%rcx,%rax,1)
   180081942:	05 01 03 01 12       	add    $0x12010301,%eax
   180081947:	01 23                	add    %esp,(%rbx)
   180081949:	01 1e                	add    %ebx,(%rsi)
   18008194b:	01 24 01             	add    %esp,(%rcx,%rax,1)
   18008194e:	09 00                	or     %eax,(%rax)
   180081950:	13 01                	adc    (%rcx),%eax
   180081952:	16                   	(bad)  
   180081953:	01 17                	add    %edx,(%rdi)
   180081955:	01 21                	add    %esp,(%rcx)
   180081957:	01 22                	add    %esp,(%rdx)
   180081959:	01 18                	add    %ebx,(%rax)
   18008195b:	01 1b                	add    %ebx,(%rbx)
   18008195d:	01 1a                	add    %ebx,(%rdx)
   18008195f:	01 19                	add    %ebx,(%rcx)
   180081961:	01 1d 01 1c 01 1f    	add    %ebx,0x1f011c01(%rip)        # 0x19f093568
   180081967:	01 20                	add    %esp,(%rax)
   180081969:	01 25 01 11 01 27    	add    %esp,0x27011101(%rip)        # 0x1a7092a70
   18008196f:	01 06                	add    %eax,(%rsi)
   180081971:	01 10                	add    %edx,(%rax)
   180081973:	00 02                	add    %al,(%rdx)
   180081975:	00 04 00             	add    %al,(%rax,%rax,1)
   180081978:	03 00                	add    (%rax),%eax
   18008197a:	f6 00 f8             	testb  $0xf8,(%rax)
   18008197d:	00 f7                	add    %dh,%bh
   18008197f:	00 f9                	add    %bh,%cl
   180081981:	00 fb                	add    %bh,%bl
   180081983:	00 0e                	add    %cl,(%rsi)
   180081985:	00 0f                	add    %cl,(%rdi)
   180081987:	00 fe                	add    %bh,%dh
   180081989:	00 ff                	add    %bh,%bh
   18008198b:	00 01                	add    %al,(%rcx)
   18008198d:	01 fc                	add    %edi,%esp
   18008198f:	00 fd                	add    %bh,%ch
   180081991:	00 57 05             	add    %dl,0x5(%rdi)
   180081994:	4c 05 4b 05 5a 05    	rex.WR add $0x55a054b,%rax
   18008199a:	58                   	pop    %rax
   18008199b:	05 59 05 5d 05       	add    $0x55d0559,%eax
   1800819a0:	55                   	push   %rbp
   1800819a1:	05 56 05 5c 05       	add    $0x55c0556,%eax
   1800819a6:	42 05 66 05 61 05    	rex.X add $0x5610566,%eax
   1800819ac:	60                   	(bad)  
   1800819ad:	05 49 05 48 05       	add    $0x5480549,%eax
   1800819b2:	74 05                	je     0x1800819b9
   1800819b4:	70 05                	jo     0x1800819bb
   1800819b6:	73 05                	jae    0x1800819bd
   1800819b8:	6f                   	outsl  %ds:(%rsi),(%dx)
   1800819b9:	05 72 05 6e 05       	add    $0x56e0572,%eax
   1800819be:	6d                   	insl   (%dx),%es:(%rdi)
   1800819bf:	05 6c 05 6b 05       	add    $0x56b056c,%eax
   1800819c4:	6a 05                	push   $0x5
   1800819c6:	67 05 69 05 5f 05    	addr32 add $0x55f0569,%eax
   1800819cc:	64 05 65 05 68 05    	fs add $0x5680565,%eax
   1800819d2:	5b                   	pop    %rbx
   1800819d3:	05 63 05 62 05       	add    $0x5620563,%eax
   1800819d8:	4d 05 4e 05 4f 05    	rex.WRB add $0x54f054e,%rax
   1800819de:	50                   	push   %rax
   1800819df:	05 53 05 51 05       	add    $0x5510553,%eax
   1800819e4:	54                   	push   %rsp
   1800819e5:	05 52 05 79 03       	add    $0x3790552,%eax
   1800819ea:	84 03                	test   %al,(%rbx)
   1800819ec:	85 03                	test   %eax,(%rbx)
   1800819ee:	70 02                	jo     0x1800819f2
   1800819f0:	95                   	xchg   %eax,%ebp
   1800819f1:	02 77 02             	add    0x2(%rdi),%dh
   1800819f4:	78 02                	js     0x1800819f8
   1800819f6:	76 02                	jbe    0x1800819fa
   1800819f8:	55                   	push   %rbp
   1800819f9:	02 74 02 75          	add    0x75(%rdx,%rax,1),%dh
   1800819fd:	02 4b 02             	add    0x2(%rbx),%cl
   180081a00:	46 02 81 02 83 02 7a 	rex.RX add 0x7a028302(%rcx),%r8b
   180081a07:	02 7c 02 63          	add    0x63(%rdx,%rax,1),%bh
   180081a0b:	02 69 02             	add    0x2(%rcx),%ch
   180081a0e:	6a 02                	push   $0x2
   180081a10:	6b 02 65             	imul   $0x65,(%rdx),%eax
   180081a13:	02 6c 02 6d          	add    0x6d(%rdx,%rax,1),%ch
   180081a17:	02 6e 02             	add    0x2(%rsi),%ch
   180081a1a:	68 02 66 02 67       	push   $0x67026602
   180081a1f:	02 92 02 6f 02 7e    	add    0x7e026f02(%rdx),%dl
   180081a25:	02 7d 02             	add    0x2(%rbp),%bh
   180081a28:	7f 02                	jg     0x180081a2c
   180081a2a:	4d 02 4e 02          	rex.WRB add 0x2(%r14),%r9b
   180081a2e:	86 03                	xchg   %al,(%rbx)
   180081a30:	57                   	push   %rdi
   180081a31:	02 59 02             	add    0x2(%rcx),%bl
   180081a34:	5a                   	pop    %rdx
   180081a35:	02 5b 02             	add    0x2(%rbx),%bl
   180081a38:	5d                   	pop    %rbp
   180081a39:	02 58 02             	add    0x2(%rax),%bl
   180081a3c:	5c                   	pop    %rsp
   180081a3d:	02 5e 02             	add    0x2(%rsi),%bl
   180081a40:	5f                   	pop    %rdi
   180081a41:	02 60 02             	add    0x2(%rax),%ah
   180081a44:	8f 02                	pop    (%rdx)
   180081a46:	90                   	nop
   180081a47:	02 47 02             	add    0x2(%rdi),%al
   180081a4a:	53                   	push   %rbx
   180081a4b:	02 54 02 52          	add    0x52(%rdx,%rax,1),%dl
   180081a4f:	02 51 02             	add    0x2(%rcx),%dl
   180081a52:	f5                   	cmc    
   180081a53:	02 f3                	add    %bl,%dh
   180081a55:	02 88 03 81 03 83    	add    -0x7cfc7efd(%rax),%cl
   180081a5b:	03 7f 03             	add    0x3(%rdi),%edi
   180081a5e:	7b 03                	jnp    0x180081a63
   180081a60:	7a 03                	jp     0x180081a65
   180081a62:	76 03                	jbe    0x180081a67
   180081a64:	78 03                	js     0x180081a69
   180081a66:	77 03                	ja     0x180081a6b
   180081a68:	7e 03                	jle    0x180081a6d
   180081a6a:	7c 03                	jl     0x180081a6f
   180081a6c:	7d 03                	jge    0x180081a71
   180081a6e:	82                   	(bad)  
   180081a6f:	03 89 03 8a 03 8b    	add    -0x74fc75fd(%rcx),%ecx
   180081a75:	03 8c 03 8d 03 f2 02 	add    0x2f2038d(%rbx,%rax,1),%ecx
   180081a7c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180081a7d:	02 ab 02 a8 02 ac    	add    -0x53fd57fe(%rbx),%ch
   180081a83:	02 a9 02 aa 02 d7    	add    -0x28fd55fe(%rcx),%ch
   180081a89:	02 c2                	add    %dl,%al
   180081a8b:	02 f4                	add    %ah,%dh
   180081a8d:	02 f1                	add    %cl,%dh
   180081a8f:	02 c0                	add    %al,%al
   180081a91:	02 e9                	add    %cl,%ch
   180081a93:	02 ea                	add    %dl,%ch
   180081a95:	02 e7                	add    %bh,%ah
   180081a97:	02 eb                	add    %bl,%ch
   180081a99:	02 e8                	add    %al,%ch
   180081a9b:	02 da                	add    %dl,%bl
   180081a9d:	02 de                	add    %dh,%bl
   180081a9f:	02 dd                	add    %ch,%bl
   180081aa1:	02 db                	add    %bl,%bl
   180081aa3:	02 dc                	add    %ah,%bl
   180081aa5:	02 df                	add    %bh,%bl
   180081aa7:	02 e6                	add    %dh,%ah
   180081aa9:	02 ed                	add    %ch,%ch
   180081aab:	02 ec                	add    %ah,%ch
   180081aad:	02 e0                	add    %al,%ah
   180081aaf:	02 e4                	add    %ah,%ah
   180081ab1:	02 e5                	add    %ch,%ah
   180081ab3:	02 e2                	add    %dl,%ah
   180081ab5:	02 e1                	add    %cl,%ah
   180081ab7:	02 e3                	add    %bl,%ah
   180081ab9:	02 f0                	add    %al,%dh
   180081abb:	02 ee                	add    %dh,%ch
   180081abd:	02 ef                	add    %bh,%ch
   180081abf:	02 bf 02 d9 02 d8    	add    -0x27fd26fe(%rdi),%bh
   180081ac5:	02 b0 02 ad 02 b1    	add    -0x4efd52fe(%rax),%dh
   180081acb:	02 be 02 ae 02 b2    	add    -0x4dfd51fe(%rsi),%bh
   180081ad1:	02 bd 02 ba 02 b9    	add    -0x46fd45fe(%rbp),%bh
   180081ad7:	02 b8 02 bb 02 bc    	add    -0x43fd44fe(%rax),%bh
   180081add:	02 b6 02 b4 02 b5    	add    -0x4afd4bfe(%rsi),%dh
   180081ae3:	02 b7 02 b3 02 d6    	add    -0x29fd4cfe(%rdi),%dh
   180081ae9:	02 af 02 2c 03 2a    	add    0x2a032c02(%rdi),%ch
   180081aef:	03 95 08 97 08 b1    	add    -0x4ef768f8(%rbp),%edx
   180081af5:	03 9b 03 99 03 9a    	add    -0x65fc66fd(%rbx),%ebx
   180081afb:	03 96 03 95 03 9e    	add    -0x61fc6afd(%rsi),%edx
   180081b01:	03 9c 03 9d 03 ba 03 	add    0x3ba039d(%rbx,%rax,1),%ebx
   180081b08:	b9 03 cd 03 c4       	mov    $0xc403cd03,%ecx
   180081b0d:	03 8e 03 39 03 c0    	add    -0x3ffcc6fd(%rsi),%ecx
   180081b13:	03 cc                	add    %esp,%ecx
   180081b15:	03 97 03 b0 03 b4    	add    -0x4bfc4ffd(%rdi),%edx
   180081b1b:	03 98 03 16 03 18    	add    0x18031603(%rax),%ebx
   180081b21:	03 80 03 05 03 08    	add    0x8030503(%rax),%eax
   180081b27:	03 07                	add    (%rdi),%eax
   180081b29:	03 25 03 22 03 1f    	add    0x1f032203(%rip),%esp        # 0x19f0b3d32
   180081b2f:	03 21                	add    (%rcx),%esp
   180081b31:	03 20                	add    (%rax),%esp
   180081b33:	03 1e                	add    (%rsi),%ebx
   180081b35:	03 15 03 33 03 34    	add    0x34033303(%rip),%edx        # 0x1b40b4e3e
   180081b3b:	03 2f                	add    (%rdi),%ebp
   180081b3d:	03 06                	add    (%rsi),%eax
   180081b3f:	03 cf                	add    %edi,%ecx
   180081b41:	02 cc                	add    %ah,%cl
   180081b43:	02 d0                	add    %al,%dl
   180081b45:	02 ce                	add    %dh,%cl
   180081b47:	02 cd                	add    %ch,%cl
   180081b49:	02 d2                	add    %dl,%dl
   180081b4b:	02 d1                	add    %cl,%dl
   180081b4d:	02 d4                	add    %ah,%dl
   180081b4f:	02 d5                	add    %ch,%dl
   180081b51:	02 d3                	add    %bl,%dl
   180081b53:	02 c1                	add    %cl,%al
   180081b55:	02 de                	add    %dh,%bl
   180081b57:	0c db                	or     $0xdb,%al
   180081b59:	0c be                	or     $0xbe,%al
   180081b5b:	0c c3                	or     $0xc3,%al
   180081b5d:	0c 83                	or     $0x83,%al
   180081b5f:	0d 85 0d 84 0d       	or     $0xd840d85,%eax
   180081b64:	51                   	push   %rcx
   180081b65:	0d d5 0c f0 0c       	or     $0xcf00cd5,%eax
   180081b6a:	f1                   	int1   
   180081b6b:	0c ef                	or     $0xef,%al
   180081b6d:	0c b5                	or     $0xb5,%al
   180081b6f:	0c 4d                	or     $0x4d,%al
   180081b71:	0d df 0c dd 0c       	or     $0xcdd0cdf,%eax
   180081b76:	e1 0c                	loope  0x180081b84
   180081b78:	e2 0c                	loop   0x180081b86
   180081b7a:	e5 0c                	in     $0xc,%eax
   180081b7c:	e7 0c                	out    %eax,$0xc
   180081b7e:	e6 0c                	out    %al,$0xc
   180081b80:	e8 0c e4 0c d0       	call   0x15014ff91
   180081b85:	0c e0                	or     $0xe0,%al
   180081b87:	0c 8e                	or     $0x8e,%al
   180081b89:	0d ca 0c c9 0c       	or     $0xcc90cca,%eax
   180081b8e:	ba 0c da 0d db       	mov    $0xdb0dda0c,%edx
   180081b93:	0d dc 0d d8 0d       	or     $0xdd80ddc,%eax
   180081b98:	bc 0c bd 0c 46       	mov    $0x460cbd0c,%esp
   180081b9d:	0d 88 0d 3a 0d       	or     $0xd3a0d88,%eax
   180081ba2:	3e 0d 34 0d 36 0d    	ds or  $0xd360d34,%eax
   180081ba8:	35 0d 92 0d 61       	xor    $0x610d920d,%eax
   180081bad:	0d 62 0d 68 0d       	or     $0xd680d62,%eax
   180081bb2:	67 0d 53 0d 54 0d    	addr32 or $0xd540d53,%eax
   180081bb8:	47 0d 89 0d 8a 0d    	rex.RXB or $0xd8a0d89,%eax
   180081bbe:	86 0d 5c 0d 5d 0d    	xchg   %cl,0xd5d0d5c(%rip)        # 0x18d652920
   180081bc4:	5f                   	pop    %rdi
   180081bc5:	0d 60 0d 5e 0d       	or     $0xd5e0d60,%eax
   180081bca:	fe 0c 65 0d 8f 0d 6c 	decb   0x6c0d8f0d(,%riz,2)
   180081bd1:	0d 6a 0d 6b 0d       	or     $0xd6b0d6a,%eax
   180081bd6:	5a                   	pop    %rdx
   180081bd7:	0d 5b 0d 4c 0d       	or     $0xd4c0d5b,%eax
   180081bdc:	f3 0c 14             	repz or $0x14,%al
   180081bdf:	0d 13 0d 00 0d       	or     $0xd000d13,%eax
   180081be4:	b1 0c                	mov    $0xc,%cl
   180081be6:	aa                   	stos   %al,%es:(%rdi)
   180081be7:	0c ab                	or     $0xab,%al
   180081be9:	0c a8                	or     $0xa8,%al
   180081beb:	0c b0                	or     $0xb0,%al
   180081bed:	0c 28                	or     $0x28,%al
   180081bef:	0d b4 0c 27 0d       	or     $0xd270cb4,%eax
   180081bf4:	1d 0d 2b 0d 30       	sbb    $0x300d2b0d,%eax
   180081bf9:	0d 2e 0d 2f 0d       	or     $0xd2f0d2e,%eax
   180081bfe:	12 0d a3 0c ff 0c    	adc    0xcff0ca3(%rip),%cl        # 0x18d0728a7
   180081c04:	ad                   	lods   %ds:(%rsi),%eax
   180081c05:	0c 0f                	or     $0xf,%al
   180081c07:	0d 10 0d 11 0d       	or     $0xd110d10,%eax
   180081c0c:	b2 0c                	mov    $0xc,%dl
   180081c0e:	b3 0c                	mov    $0xc,%bl
   180081c10:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   180081c11:	0d ab 0d 9e 0d       	or     $0xd9e0dab,%eax
   180081c16:	9d                   	popf   
   180081c17:	0d a0 0d 9f 0d       	or     $0xd9f0da0,%eax
   180081c1c:	9a                   	(bad)  
   180081c1d:	0d c0 0d bd 0d       	or     $0xdbd0dc0,%eax
   180081c22:	be 0d bc 0d b0       	mov    $0xb00dbc0d,%esi
   180081c27:	0d b3 0d b6 0d       	or     $0xdb60db3,%eax
   180081c2c:	b4 0d                	mov    $0xd,%ah
   180081c2e:	b2 0d                	mov    $0xd,%dl
   180081c30:	b1 0d                	mov    $0xd,%cl
   180081c32:	b9 0d b7 0d ba       	mov    $0xba0db70d,%ecx
   180081c37:	0d b5 0d b8 0d       	or     $0xdb80db5,%eax
   180081c3c:	bb 0d bf 0d 40       	mov    $0x400dbf0d,%ebx
   180081c41:	0d 3f 0d cd 0d       	or     $0xdcd0d3f,%eax
   180081c46:	d0 0d cb 0d cf 0d    	rorb   0xdcf0dcb(%rip)        # 0x18dd72a17
   180081c4c:	cc                   	int3   
   180081c4d:	0d c9 0d d2 0d       	or     $0xdd20dc9,%eax
   180081c52:	d1 0d ca 0d c8 0d    	rorl   0xdc80dca(%rip)        # 0x18dd02a22
   180081c58:	39 0d 38 0d ac 0d    	cmp    %ecx,0xdac0d38(%rip)        # 0x18db42996
   180081c5e:	d6                   	(bad)  
   180081c5f:	0c d7                	or     $0xd7,%al
   180081c61:	0c d8                	or     $0xd8,%al
   180081c63:	0c d9                	or     $0xd9,%al
   180081c65:	0c c0                	or     $0xc0,%al
   180081c67:	0c cc                	or     $0xcc,%al
   180081c69:	0c cb                	or     $0xcb,%al
   180081c6b:	0c cd                	or     $0xcd,%al
   180081c6d:	0c ce                	or     $0xce,%al
   180081c6f:	0c 44                	or     $0x44,%al
   180081c71:	0d 3b 0d 45 0d       	or     $0xd450d3b,%eax
   180081c76:	43 0d 37 0d 26 0d    	rex.XB or $0xd260d37,%eax
   180081c7c:	3c 0d                	cmp    $0xd,%al
   180081c7e:	e5 01                	in     $0x1,%eax
   180081c80:	18 0d 08 0d 5c 0b    	sbb    %cl,0xb5c0d08(%rip)        # 0x18b64298e
   180081c86:	4d 0b 41 0b          	or     0xb(%r9),%r8
   180081c8a:	42 0b 47 0b          	rex.X or 0xb(%rdi),%eax
   180081c8e:	45 0b 48 0b          	or     0xb(%r8),%r9d
   180081c92:	49 0b 4f 0b          	or     0xb(%r15),%rcx
   180081c96:	58                   	pop    %rax
   180081c97:	0b 39                	or     (%rcx),%edi
   180081c99:	0b 38                	or     (%rax),%edi
   180081c9b:	0b 3a                	or     (%rdx),%edi
   180081c9d:	0b 3b                	or     (%rbx),%edi
   180081c9f:	0b 37                	or     (%rdi),%esi
   180081ca1:	0b 2f                	or     (%rdi),%ebp
   180081ca3:	0b 30                	or     (%rax),%esi
   180081ca5:	0b 5d 0b             	or     0xb(%rbp),%ebx
   180081ca8:	20 0b                	and    %cl,(%rbx)
   180081caa:	12 0c e3             	adc    (%rbx,%riz,8),%cl
   180081cad:	0b 3d 0c 36 0b 3c    	or     0x3c0b360c(%rip),%edi        # 0x1bc1352bf
   180081cb3:	0b 14 0c             	or     (%rsp,%rcx,1),%edx
   180081cb6:	29 0b                	sub    %ecx,(%rbx)
   180081cb8:	2d 0b 2e 0b 2c       	sub    $0x2c0b2e0b,%eax
   180081cbd:	0b 2b                	or     (%rbx),%ebp
   180081cbf:	0b 32                	or     (%rdx),%esi
   180081cc1:	0b 31                	or     (%rcx),%esi
   180081cc3:	0b 28                	or     (%rax),%ebp
   180081cc5:	0b 70 0b             	or     0xb(%rax),%esi
   180081cc8:	72 0b                	jb     0x180081cd5
   180081cca:	73 0b                	jae    0x180081cd7
   180081ccc:	71 0b                	jno    0x180081cd9
   180081cce:	5e                   	pop    %rsi
   180081ccf:	0b 83 0b 80 0b 7c    	or     0x7c0b800b(%rbx),%eax
   180081cd5:	0b 7e 0b             	or     0xb(%rsi),%edi
   180081cd8:	7f 0b                	jg     0x180081ce5
   180081cda:	81 0b 82 0b 5a 0b    	orl    $0xb5a0b82,(%rbx)
   180081ce0:	59                   	pop    %rcx
   180081ce1:	0b 5b 0b             	or     0xb(%rbx),%ebx
   180081ce4:	7d 0b                	jge    0x180081cf1
   180081ce6:	4e 0b 88 0b 89 0b 6e 	rex.WRX or 0x6e0b890b(%rax),%r9
   180081ced:	0b 6d 0b             	or     0xb(%rbp),%ebp
   180081cf0:	86 0b                	xchg   %cl,(%rbx)
   180081cf2:	63 0b                	movsxd (%rbx),%ecx
   180081cf4:	64 0b 85 0b 7b 0b 65 	or     %fs:0x650b7b0b(%rbp),%eax
   180081cfb:	0b 87 0b 75 0b 7a    	or     0x7a0b750b(%rdi),%eax
   180081d01:	0b 78 0b             	or     0xb(%rax),%edi
   180081d04:	77 0b                	ja     0x180081d11
   180081d06:	76 0b                	jbe    0x180081d13
   180081d08:	79 0b                	jns    0x180081d15
   180081d0a:	66 0b 69 0b          	or     0xb(%rcx),%bp
   180081d0e:	6b 0b 67             	imul   $0x67,(%rbx),%ecx
   180081d11:	0b 6a 0b             	or     0xb(%rdx),%ebp
   180081d14:	6c                   	insb   (%dx),%es:(%rdi)
   180081d15:	0b 68 0b             	or     0xb(%rax),%ebp
   180081d18:	6f                   	outsl  %ds:(%rsi),(%dx)
   180081d19:	0b 8a 0b 8b 0b 8c    	or     -0x73f474f5(%rdx),%ecx
   180081d1f:	0b 84 0b 34 0b 33 0b 	or     0xb330b34(%rbx,%rcx,1),%eax
   180081d26:	3e 0b 3f             	ds or  (%rdi),%edi
   180081d29:	0b 3d 0b 40 0b 55    	or     0x550b400b(%rip),%edi        # 0x1d5135d3a
   180081d2f:	0b 57 0b             	or     0xb(%rdi),%edx
   180081d32:	54                   	push   %rsp
   180081d33:	0b 56 0b             	or     0xb(%rsi),%edx
   180081d36:	53                   	push   %rbx
   180081d37:	0b 52 0b             	or     0xb(%rdx),%edx
   180081d3a:	46 0b 43 0b          	rex.RX or 0xb(%rbx),%r8d
   180081d3e:	44 0b 50 0b          	or     0xb(%rax),%r10d
   180081d42:	51                   	push   %rcx
   180081d43:	0b 5d 0c             	or     0xc(%rbp),%ebx
   180081d46:	4b 0b 4a 0b          	rex.WXB or 0xb(%r10),%rcx
   180081d4a:	4c 0b 2a             	or     (%rdx),%r13
   180081d4d:	0b 60 0b             	or     0xb(%rax),%esp
   180081d50:	62                   	(bad)  
   180081d51:	0b 61 0b             	or     0xb(%rcx),%esp
   180081d54:	2f                   	(bad)  
   180081d55:	0c 3c                	or     $0x3c,%al
   180081d57:	0c 13                	or     $0x13,%al
   180081d59:	0c 10                	or     $0x10,%al
   180081d5b:	0c 0d                	or     $0xd,%al
   180081d5d:	0c e5                	or     $0xe5,%al
   180081d5f:	0b e6                	or     %esi,%esp
   180081d61:	0b e4                	or     %esp,%esp
   180081d63:	0b f6                	or     %esi,%esi
   180081d65:	0a f5                	or     %ch,%dh
   180081d67:	0a f9                	or     %cl,%bh
   180081d69:	0a 1e                	or     (%rsi),%bl
   180081d6b:	0b f7                	or     %edi,%esi
   180081d6d:	0a f8                	or     %al,%bh
   180081d6f:	0a fa                	or     %dl,%bh
   180081d71:	0a 0c 0b             	or     (%rbx,%rcx,1),%cl
   180081d74:	0d 0b 11 0b 15       	or     $0x150b110b,%eax
   180081d79:	0b 10                	or     (%rax),%edx
   180081d7b:	0b 12                	or     (%rdx),%edx
   180081d7d:	0b 13                	or     (%rbx),%edx
   180081d7f:	0b 08                	or     (%rax),%ecx
   180081d81:	0b 02                	or     (%rdx),%eax
   180081d83:	0b ff                	or     %edi,%edi
   180081d85:	0a 09                	or     (%rcx),%cl
   180081d87:	0b fd                	or     %ebp,%edi
   180081d89:	0a fc                	or     %ah,%bh
   180081d8b:	0a 0e                	or     (%rsi),%cl
   180081d8d:	0b 0f                	or     (%rdi),%ecx
   180081d8f:	0b 00                	or     (%rax),%eax
   180081d91:	0b 01                	or     (%rcx),%eax
   180081d93:	0b 0b                	or     (%rbx),%ecx
   180081d95:	0b 14 0b             	or     (%rbx,%rcx,1),%edx
   180081d98:	0a 0b                	or     (%rbx),%cl
   180081d9a:	fb                   	sti    
   180081d9b:	0a 04 0b             	or     (%rbx,%rcx,1),%al
   180081d9e:	fe 0a                	decb   (%rdx)
   180081da0:	1b 0b                	sbb    (%rbx),%ecx
   180081da2:	1a 0b                	sbb    (%rbx),%cl
   180081da4:	16                   	(bad)  
   180081da5:	0b 18                	or     (%rax),%ebx
   180081da7:	0b 17                	or     (%rdi),%edx
   180081da9:	0b 19                	or     (%rcx),%ebx
   180081dab:	0b 1d 0b 1c 0b 05    	or     0x50b1c0b(%rip),%ebx        # 0x1851339bc
   180081db1:	0b 03                	or     (%rbx),%eax
   180081db3:	0b 07                	or     (%rdi),%eax
   180081db5:	0b 06                	or     (%rsi),%eax
   180081db7:	0b 0f                	or     (%rdi),%ecx
   180081db9:	0c e8                	or     $0xe8,%al
   180081dbb:	0b fe                	or     %esi,%edi
   180081dbd:	0b 01                	or     (%rcx),%eax
   180081dbf:	0c 03                	or     $0x3,%al
   180081dc1:	0c f1                	or     $0xf1,%al
   180081dc3:	0b fb                	or     %ebx,%edi
   180081dc5:	0b fa                	or     %edx,%edi
   180081dc7:	0b e9                	or     %ecx,%ebp
   180081dc9:	0b 00                	or     (%rax),%eax
   180081dcb:	0c fd                	or     $0xfd,%al
   180081dcd:	0b 02                	or     (%rdx),%eax
   180081dcf:	0c e7                	or     $0xe7,%al
   180081dd1:	0b ec                	or     %esp,%ebp
   180081dd3:	0b ee                	or     %esi,%ebp
   180081dd5:	0b ed                	or     %ebp,%ebp
   180081dd7:	0b ef                	or     %edi,%ebp
   180081dd9:	0b 06                	or     (%rsi),%eax
   180081ddb:	0c 05                	or     $0x5,%al
   180081ddd:	0c 04                	or     $0x4,%al
   180081ddf:	0c 07                	or     $0x7,%al
   180081de1:	0c 0a                	or     $0xa,%al
   180081de3:	0c 08                	or     $0x8,%al
   180081de5:	0c 09                	or     $0x9,%al
   180081de7:	0c fc                	or     $0xfc,%al
   180081de9:	0b ea                	or     %edx,%ebp
   180081deb:	0b eb                	or     %ebx,%ebp
   180081ded:	0b f0                	or     %eax,%esi
   180081def:	0b 0b                	or     (%rbx),%ecx
   180081df1:	0c 0c                	or     $0xc,%al
   180081df3:	0c f2                	or     $0xf2,%al
   180081df5:	0b f4                	or     %esp,%esi
   180081df7:	0b f3                	or     %ebx,%esi
   180081df9:	0b f5                	or     %ebp,%esi
   180081dfb:	0b f7                	or     %edi,%esi
   180081dfd:	0b f8                	or     %eax,%edi
   180081dff:	0b f6                	or     %esi,%esi
   180081e01:	0b f9                	or     %ecx,%edi
   180081e03:	0b ff                	or     %edi,%edi
   180081e05:	0b ef                	or     %edi,%ebp
   180081e07:	0a 11                	or     (%rcx),%dl
   180081e09:	0c 0e                	or     $0xe,%al
   180081e0b:	0c 16                	or     $0x16,%al
   180081e0d:	0c 15                	or     $0x15,%al
   180081e0f:	0c 22                	or     $0x22,%al
   180081e11:	0c 23                	or     $0x23,%al
   180081e13:	0c 24                	or     $0x24,%al
   180081e15:	0c 21                	or     $0x21,%al
   180081e17:	0c 1a                	or     $0x1a,%al
   180081e19:	0c 1e                	or     $0x1e,%al
   180081e1b:	0c 1c                	or     $0x1c,%al
   180081e1d:	0c 20                	or     $0x20,%al
   180081e1f:	0c 2e                	or     $0x2e,%al
   180081e21:	0c 27                	or     $0x27,%al
   180081e23:	0c 28                	or     $0x28,%al
   180081e25:	0c 26                	or     $0x26,%al
   180081e27:	0c 25                	or     $0x25,%al
   180081e29:	0c 2a                	or     $0x2a,%al
   180081e2b:	0c 2b                	or     $0x2b,%al
   180081e2d:	0c 29                	or     $0x29,%al
   180081e2f:	0c 1f                	or     $0x1f,%al
   180081e31:	0c 2d                	or     $0x2d,%al
   180081e33:	0c 2c                	or     $0x2c,%al
   180081e35:	0c 18                	or     $0x18,%al
   180081e37:	0c 17                	or     $0x17,%al
   180081e39:	0c 19                	or     $0x19,%al
   180081e3b:	0c 1d                	or     $0x1d,%al
   180081e3d:	0c 1b                	or     $0x1b,%al
   180081e3f:	0c 34                	or     $0x34,%al
   180081e41:	0c 37                	or     $0x37,%al
   180081e43:	0c 3a                	or     $0x3a,%al
   180081e45:	0c 35                	or     $0x35,%al
   180081e47:	0c 3b                	or     $0x3b,%al
   180081e49:	0c 30                	or     $0x30,%al
   180081e4b:	0c 32                	or     $0x32,%al
   180081e4d:	0c 31                	or     $0x31,%al
   180081e4f:	0c 33                	or     $0x33,%al
   180081e51:	0c 3e                	or     $0x3e,%al
   180081e53:	0c 38                	or     $0x38,%al
   180081e55:	0c 39                	or     $0x39,%al
   180081e57:	0c 36                	or     $0x36,%al
   180081e59:	0c 8d                	or     $0x8d,%al
   180081e5b:	0b d1                	or     %ecx,%edx
   180081e5d:	01 92 0b af 0b b7    	add    %edx,-0x48f450f5(%rdx)
   180081e63:	0b b2 0b b1 0b bb    	or     -0x44f44ef5(%rdx),%esi
   180081e69:	0b b0 0b 8e 0b f4    	or     -0xbf471f5(%rax),%esi
   180081e6f:	0a be 0b bf 0b aa    	or     -0x55f440f5(%rsi),%bh
   180081e75:	0b a9 0b ab 0b ad    	or     -0x52f454f5(%rcx),%ebp
   180081e7b:	0b a6 0b a7 0b a4    	or     -0x5bf458f5(%rsi),%esp
   180081e81:	0b ac 0b a5 0b ae 0b 	or     0xbae0ba5(%rbx,%rcx,1),%ebp
   180081e88:	a8 0b                	test   $0xb,%al
   180081e8a:	d3 0b                	rorl   %cl,(%rbx)
   180081e8c:	d2 0b                	rorb   %cl,(%rbx)
   180081e8e:	d4                   	(bad)  
   180081e8f:	0b d5                	or     %ebp,%edx
   180081e91:	0b d1                	or     %ecx,%edx
   180081e93:	0b bc 0b 23 0b 22 0b 	or     0xb220b23(%rbx,%rcx,1),%edi
   180081e9a:	bd 0b cf 0b cd       	mov    $0xcd0bcf0b,%ebp
   180081e9f:	0b ce                	or     %esi,%ecx
   180081ea1:	0b cb                	or     %ebx,%ecx
   180081ea3:	0b cc                	or     %esp,%ecx
   180081ea5:	0b 90 0b 91 0b 93    	or     -0x6cf46ef5(%rax),%edx
   180081eab:	0b a1 0b 9f 0b a0    	or     -0x5ff460f5(%rcx),%esp
   180081eb1:	0b a2 0b 94 0b a3    	or     -0x5cf46bf5(%rdx),%esp
   180081eb7:	0b b9 0b b8 0b ba    	or     -0x45f447f5(%rcx),%edi
   180081ebd:	0b b3 0b b4 0b b5    	or     -0x4af44bf5(%rbx),%esi
   180081ec3:	0b b6 0b 8f 0b c2    	or     -0x3df470f5(%rsi),%esi
   180081ec9:	0b c0                	or     %eax,%eax
   180081ecb:	0b c1                	or     %ecx,%eax
   180081ecd:	0b c4                	or     %esp,%eax
   180081ecf:	0b c3                	or     %ebx,%eax
   180081ed1:	0b d2                	or     %edx,%edx
   180081ed3:	01 5c 0c 3f          	add    %ebx,0x3f(%rsp,%rcx,1)
   180081ed7:	0c 40                	or     $0x40,%al
   180081ed9:	0c 41                	or     $0x41,%al
   180081edb:	0c 42                	or     $0x42,%al
   180081edd:	0c 43                	or     $0x43,%al
   180081edf:	0c 4f                	or     $0x4f,%al
   180081ee1:	0c 5f                	or     $0x5f,%al
   180081ee3:	0b 5b 0c             	or     0xc(%rbx),%ebx
   180081ee6:	5a                   	pop    %rdx
   180081ee7:	0c 59                	or     $0x59,%al
   180081ee9:	0c 50                	or     $0x50,%al
   180081eeb:	0c 4d                	or     $0x4d,%al
   180081eed:	0c da                	or     $0xda,%al
   180081eef:	0b 52 0c             	or     0xc(%rdx),%edx
   180081ef2:	53                   	push   %rbx
   180081ef3:	0c 54                	or     $0x54,%al
   180081ef5:	0c 57                	or     $0x57,%al
   180081ef7:	0c 56                	or     $0x56,%al
   180081ef9:	0c 55                	or     $0x55,%al
   180081efb:	0c 58                	or     $0x58,%al
   180081efd:	0c 51                	or     $0x51,%al
   180081eff:	0c df                	or     $0xdf,%al
   180081f01:	0b e2                	or     %edx,%esp
   180081f03:	0b e1                	or     %ecx,%esp
   180081f05:	0b dc                	or     %esp,%ebx
   180081f07:	0b 4e 0c             	or     0xc(%rsi),%ecx
   180081f0a:	35 0b 4c 0c 25       	xor    $0x250c4c0b,%eax
   180081f0f:	0b 26                	or     (%rsi),%esp
   180081f11:	0b 27                	or     (%rdi),%esp
   180081f13:	0b 24 0b             	or     (%rbx,%rcx,1),%esp
   180081f16:	d9 0b                	(bad)  (%rbx)
   180081f18:	dd 0b                	fisttpll (%rbx)
   180081f1a:	e0 0b                	loopne 0x180081f27
   180081f1c:	44 0c 45             	rex.R or $0x45,%al
   180081f1f:	0c 49                	or     $0x49,%al
   180081f21:	0c 46                	or     $0x46,%al
   180081f23:	0c 4b                	or     $0x4b,%al
   180081f25:	0c 4a                	or     $0x4a,%al
   180081f27:	0c 48                	or     $0x48,%al
   180081f29:	0c 47                	or     $0x47,%al
   180081f2b:	0c 9a                	or     $0x9a,%al
   180081f2d:	0b 98 0b 96 0b 95    	or     -0x6af469f5(%rax),%ebx
   180081f33:	0b 9b 0b 99 0b 9c    	or     -0x63f466f5(%rbx),%ebx
   180081f39:	0b 97 0b db 0b d7    	or     -0x28f424f5(%rdi),%edx
   180081f3f:	0b de                	or     %esi,%ebx
   180081f41:	0b d8                	or     %eax,%ebx
   180081f43:	0b c5                	or     %ebp,%eax
   180081f45:	0b d6                	or     %esi,%edx
   180081f47:	0b 74 0b c6          	or     -0x3a(%rbx,%rcx,1),%esi
   180081f4b:	0b c7                	or     %edi,%eax
   180081f4d:	0b c8                	or     %eax,%ecx
   180081f4f:	0b c9                	or     %ecx,%ecx
   180081f51:	0b ca                	or     %edx,%ecx
   180081f53:	0b 1f                	or     (%rdi),%ebx
   180081f55:	0b 21                	or     (%rcx),%esp
   180081f57:	0b ed                	or     %ebp,%ebp
   180081f59:	0a f1                	or     %cl,%dh
   180081f5b:	0a ee                	or     %dh,%ch
   180081f5d:	0a f0                	or     %al,%dh
   180081f5f:	0a f3                	or     %bl,%dh
   180081f61:	0a f2                	or     %dl,%dh
   180081f63:	0a d0                	or     %al,%dl
   180081f65:	0b 9e 0b 9d 0b 69    	or     0x690b9d0b(%rsi),%ebx
   180081f6b:	08 63 08             	or     %ah,0x8(%rbx)
   180081f6e:	62                   	(bad)  
   180081f6f:	08 61 08             	or     %ah,0x8(%rcx)
   180081f72:	bd 08 6b 08 6d       	mov    $0x6d086b08,%ebp
   180081f77:	08 6e 08             	or     %ch,0x8(%rsi)
   180081f7a:	6c                   	insb   (%dx),%es:(%rdi)
   180081f7b:	08 6f 08             	or     %ch,0x8(%rdi)
   180081f7e:	75 08                	jne    0x180081f88
   180081f80:	73 08                	jae    0x180081f8a
   180081f82:	74 08                	je     0x180081f8c
   180081f84:	70 08                	jo     0x180081f8e
   180081f86:	71 08                	jno    0x180081f90
   180081f88:	72 08                	jb     0x180081f92
   180081f8a:	6a 08                	push   $0x8
   180081f8c:	84 08                	test   %cl,(%rax)
   180081f8e:	60                   	(bad)  
   180081f8f:	08 76 08             	or     %dh,0x8(%rsi)
   180081f92:	83 08 7f             	orl    $0x7f,(%rax)
   180081f95:	08 79 08             	or     %bh,0x8(%rcx)
   180081f98:	7c 08                	jl     0x180081fa2
   180081f9a:	78 08                	js     0x180081fa4
   180081f9c:	7e 08                	jle    0x180081fa6
   180081f9e:	80 08 77             	orb    $0x77,(%rax)
   180081fa1:	08 81 08 7b 08 7a    	or     %al,0x7a087b08(%rcx)
   180081fa7:	08 7d 08             	or     %bh,0x8(%rbp)
   180081faa:	82                   	(bad)  
   180081fab:	08 64 08 65          	or     %ah,0x65(%rax,%rcx,1)
   180081faf:	08 67 08             	or     %ah,0x8(%rdi)
   180081fb2:	66 08 b0 08 b1 08 68 	data16 or %dh,0x6808b108(%rax)
   180081fb9:	08 af 08 85 08 ba    	or     %ch,-0x45f77af8(%rdi)
   180081fbf:	08 bb 08 bc 08 b8    	or     %bh,-0x47f743f8(%rbx)
   180081fc5:	08 b6 08 b5 08 b7    	or     %dh,-0x48f74af8(%rsi)
   180081fcb:	08 b9 08 b4 08 b2    	or     %bh,-0x4df74bf8(%rcx)
   180081fd1:	08 b3 08 a9 08 aa    	or     %dh,-0x55f756f8(%rbx)
   180081fd7:	08 86 08 5f 08 5e    	or     %al,0x5e085f08(%rsi)
   180081fdd:	08 5d 08             	or     %bl,0x8(%rbp)
   180081fe0:	93                   	xchg   %eax,%ebx
   180081fe1:	08 94 08 9b 08 9c 08 	or     %dl,0x89c089b(%rax,%rcx,1)
   180081fe8:	a8 08                	test   $0x8,%al
   180081fea:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180081feb:	08 a3 08 9f 08 a0    	or     %ah,-0x5ff760f8(%rbx)
   180081ff1:	08 a5 08 a4 08 a6    	or     %ah,-0x59f75bf8(%rbp)
   180081ff7:	08 a1 08 a2 08 9e    	or     %ah,-0x61f75df8(%rcx)
   180081ffd:	08 9d 08 92 08 5a    	or     %bl,0x5a089208(%rbp)
   180082003:	08 5b 08             	or     %bl,0x8(%rbx)
   180082006:	5c                   	pop    %rsp
   180082007:	08 98 08 99 08 9a    	or     %bl,-0x65f766f8(%rax)
   18008200d:	08 88 08 87 08 89    	or     %cl,-0x76f778f8(%rax)
   180082013:	08 8f 08 8c 08 8e    	or     %cl,-0x71f773f8(%rdi)
   180082019:	08 8d 08 90 08 91    	or     %cl,-0x6ef76ff8(%rbp)
   18008201f:	08 8b 08 8a 08 96    	or     %cl,-0x69f775f8(%rbx)
   180082025:	08 d9                	or     %bl,%cl
   180082027:	08 d8                	or     %bl,%al
   180082029:	08 be 08 d5 08 d6    	or     %bh,-0x29f72af8(%rsi)
   18008202f:	08 c7                	or     %al,%bh
   180082031:	08 c5                	or     %al,%ch
   180082033:	08 c6                	or     %al,%dh
   180082035:	08 c8                	or     %cl,%al
   180082037:	08 c9                	or     %cl,%cl
   180082039:	08 c4                	or     %al,%ah
   18008203b:	08 c0                	or     %al,%al
   18008203d:	08 ca                	or     %cl,%dl
   18008203f:	08 ad 08 d7 08 d4    	or     %ch,-0x2bf728f8(%rbp)
   180082045:	08 d3                	or     %dl,%bl
   180082047:	08 d2                	or     %dl,%dl
   180082049:	08 cc                	or     %cl,%ah
   18008204b:	08 cd                	or     %cl,%ch
   18008204d:	08 d0                	or     %dl,%al
   18008204f:	08 d1                	or     %dl,%cl
   180082051:	08 ce                	or     %cl,%dh
   180082053:	08 cf                	or     %cl,%bh
   180082055:	08 c2                	or     %al,%dl
   180082057:	08 c3                	or     %al,%bl
   180082059:	08 c1                	or     %al,%cl
   18008205b:	08 cb                	or     %cl,%bl
   18008205d:	08 bf 08 ab 08 ae    	or     %bh,-0x51f754f8(%rdi)
   180082063:	08 ac 08 37 02 01 02 	or     %ch,0x2010237(%rax,%rcx,1)
   18008206a:	39 02                	cmp    %eax,(%rdx)
   18008206c:	09 02                	or     %eax,(%rdx)
   18008206e:	24 02                	and    $0x2,%al
   180082070:	03 02                	add    (%rdx),%eax
   180082072:	0a 02                	or     (%rdx),%al
   180082074:	0e                   	(bad)  
   180082075:	02 0d 02 02 02 04    	add    0x4020202(%rip),%cl        # 0x1840a227d
   18008207b:	02 05 02 35 02 fd    	add    -0x2fdcafe(%rip),%al        # 0x17d0a5583
   180082081:	01 08                	add    %ecx,(%rax)
   180082083:	02 ff                	add    %bh,%bh
   180082085:	01 00                	add    %eax,(%rax)
   180082087:	02 fe                	add    %dh,%bh
   180082089:	01 11                	add    %edx,(%rcx)
   18008208b:	02 13                	add    (%rbx),%dl
   18008208d:	02 12                	add    (%rdx),%dl
   18008208f:	02 14 02             	add    (%rdx,%rax,1),%dl
   180082092:	3b 02                	cmp    (%rdx),%eax
   180082094:	eb 0d                	jmp    0x1800820a3
   180082096:	f3 0d ec 0d f4 0d    	repz or $0xdf40dec,%eax
   18008209c:	f5                   	cmc    
   18008209d:	0d f6 0d 0c 02       	or     $0x20c0df6,%eax
   1800820a2:	1b 02                	sbb    (%rdx),%eax
   1800820a4:	1c 02                	sbb    $0x2,%al
   1800820a6:	1f                   	(bad)  
   1800820a7:	02 1d 02 1e 02 0b    	add    0xb021e02(%rip),%bl        # 0x18b0a3eaf
   1800820ad:	02 0f                	add    (%rdi),%cl
   1800820af:	02 3a                	add    (%rdx),%bh
   1800820b1:	02 10                	add    (%rax),%dl
   1800820b3:	02 1a                	add    (%rdx),%bl
   1800820b5:	02 19                	add    (%rcx),%bl
   1800820b7:	02 18                	add    (%rax),%bl
   1800820b9:	02 16                	add    (%rsi),%dl
   1800820bb:	02 3c 02             	add    (%rdx,%rax,1),%bh
   1800820be:	44 02 07             	add    (%rdi),%r8b
   1800820c1:	02 06                	add    (%rsi),%al
   1800820c3:	02 30                	add    (%rax),%dh
   1800820c5:	02 28                	add    (%rax),%ch
   1800820c7:	02 2d 02 2e 02 27    	add    0x27022e02(%rip),%ch        # 0x1a70a4ecf
   1800820cd:	02 2f                	add    (%rdi),%ch
   1800820cf:	02 26                	add    (%rsi),%ah
   1800820d1:	02 2a                	add    (%rdx),%ch
   1800820d3:	02 31                	add    (%rcx),%dh
   1800820d5:	02 32                	add    (%rdx),%dh
   1800820d7:	02 29                	add    (%rcx),%ch
   1800820d9:	02 2b                	add    (%rbx),%ch
   1800820db:	02 2c 02             	add    (%rdx,%rax,1),%ch
   1800820de:	36 02 2d 01 18 00 17 	ss add 0x17001801(%rip),%ch        # 0x1970838e6
   1800820e5:	00 38                	add    %bh,(%rax)
   1800820e7:	02 15 02 a9 0a 47    	add    0x470aa902(%rip),%dl        # 0x1c712c9ef
   1800820ed:	09 48 09             	or     %ecx,0x9(%rax)
   1800820f0:	4b 09 4a 09          	rex.WXB or %rcx,0x9(%r10)
   1800820f4:	41 09 44 09 45       	or     %eax,0x45(%r9,%rcx,1)
   1800820f9:	09 46 09             	or     %eax,0x9(%rsi)
   1800820fc:	51                   	push   %rcx
   1800820fd:	09 42 09             	or     %eax,0x9(%rdx)
   180082100:	3d 09 3f 09 40       	cmp    $0x40093f09,%eax
   180082105:	09 3e                	or     %edi,(%rsi)
   180082107:	09 3c 09             	or     %edi,(%rcx,%rcx,1)
   18008210a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008210b:	0a ad 09 ac 0a b2    	or     -0x4df553f7(%rbp),%ch
   180082111:	0a aa 0a 4d 09 4c    	or     0x4c094d0a(%rdx),%ch
   180082117:	09 a8 0a b1 0a ad    	or     %ebp,-0x52f54ef6(%rax)
   18008211d:	0a af 0a 43 09 ae    	or     -0x51f6bcf6(%rdi),%ch
   180082123:	0a 4e 09             	or     0x9(%rsi),%cl
   180082126:	b0 0a                	mov    $0xa,%al
   180082128:	4f 09 50 09          	rex.WRXB or %r10,0x9(%r8)
   18008212c:	ae                   	scas   %es:(%rdi),%al
   18008212d:	09 ab 0a 61 0a c6    	or     %ebp,-0x39f59ef6(%rbx)
   180082133:	09 cc                	or     %ecx,%esp
   180082135:	09 d1                	or     %edx,%ecx
   180082137:	09 d7                	or     %edx,%edi
   180082139:	09 a5 09 ac 09 a4    	or     %esp,-0x5bf653f7(%rbp)
   18008213f:	09 a7 09 aa 09 ab    	or     %esp,-0x54f655f7(%rdi)
   180082145:	09 a8 09 a6 09 67    	or     %ebp,0x6709a609(%rax)
   18008214b:	0a 79 0a             	or     0xa(%rcx),%bh
   18008214e:	e7 0a                	out    %eax,$0xa
   180082150:	eb 0a                	jmp    0x18008215c
   180082152:	ec                   	in     (%dx),%al
   180082153:	0a e8                	or     %al,%ch
   180082155:	0a ea                	or     %dl,%ch
   180082157:	0a e9                	or     %cl,%ch
   180082159:	0a 85 0a 49 09 66    	or     0x6609490a(%rbp),%al
   18008215f:	0a 76 0a             	or     0xa(%rsi),%dh
   180082162:	75 0a                	jne    0x18008216e
   180082164:	7b 0a                	jnp    0x180082170
   180082166:	69 0a 7a 0a 68 0a    	imul   $0xa680a7a,(%rdx),%ecx
   18008216c:	77 0a                	ja     0x180082178
   18008216e:	7f 0a                	jg     0x18008217a
   180082170:	78 0a                	js     0x18008217c
   180082172:	7c 0a                	jl     0x18008217e
   180082174:	7d 0a                	jge    0x180082180
   180082176:	7e 0a                	jle    0x180082182
   180082178:	6a 0a                	push   $0xa
   18008217a:	6c                   	insb   (%dx),%es:(%rdi)
   18008217b:	0a 6b 0a             	or     0xa(%rbx),%ch
   18008217e:	63 0a                	movsxd (%rdx),%ecx
   180082180:	64 0a 6e 0a          	or     %fs:0xa(%rsi),%ch
   180082184:	6d                   	insl   (%dx),%es:(%rdi)
   180082185:	0a 71 0a             	or     0xa(%rcx),%dh
   180082188:	72 0a                	jb     0x180082194
   18008218a:	6f                   	outsl  %ds:(%rsi),(%dx)
   18008218b:	0a 70 0a             	or     0xa(%rax),%dh
   18008218e:	62                   	(bad)  
   18008218f:	0a 80 0a 83 0a 84    	or     -0x7bf57cf6(%rax),%al
   180082195:	0a 82 0a 81 0a 65    	or     0x650a810a(%rdx),%al
   18008219b:	0a 73 0a             	or     0xa(%rbx),%dh
   18008219e:	a9 09 74 0a 3b       	test   $0x3b0a7409,%eax
   1800821a3:	09 04 03             	or     %eax,(%rbx,%rax,1)
   1800821a6:	c6 02 03             	movb   $0x3,(%rdx)
   1800821a9:	03 ff                	add    %edi,%edi
   1800821ab:	02 00                	add    (%rax),%al
   1800821ad:	03 02                	add    (%rdx),%eax
   1800821af:	03 01                	add    (%rcx),%eax
   1800821b1:	03 36                	add    (%rsi),%esi
   1800821b3:	03 ed                	add    %ebp,%ebp
   1800821b5:	00 d1                	add    %dl,%cl
   1800821b7:	0c d2                	or     $0xd2,%al
   1800821b9:	0c 50                	or     $0x50,%al
   1800821bb:	0d c7 0c d3 0c       	or     $0xcd30cc7,%eax
   1800821c0:	c4                   	(bad)  
   1800821c1:	0c c6                	or     $0xc6,%al
   1800821c3:	0c a7                	or     $0xa7,%al
   1800821c5:	0c 55                	or     $0x55,%al
   1800821c7:	0d 56 0d 57 0d       	or     $0xd570d56,%eax
   1800821cc:	59                   	pop    %rcx
   1800821cd:	0d 58 0d 4e 0d       	or     $0xd4e0d58,%eax
   1800821d2:	4f 0d ee 0c dc 0c    	rex.WRXB or $0xcdc0cee,%rax
   1800821d8:	87 0d da 0c bf 0c    	xchg   %ecx,0xcbf0cda(%rip)        # 0x18cc72eb8
   1800821de:	33 0d f6 0c f7 0c    	xor    0xcf70cf6(%rip),%ecx        # 0x18cff2eda
   1800821e4:	f8                   	clc    
   1800821e5:	0c f9                	or     $0xf9,%al
   1800821e7:	0c f5                	or     $0xf5,%al
   1800821e9:	0c f4                	or     $0xf4,%al
   1800821eb:	0c 71                	or     $0x71,%al
   1800821ed:	0d 6d 0d 70 0d       	or     $0xd700d6d,%eax
   1800821f2:	6e                   	outsb  %ds:(%rsi),(%dx)
   1800821f3:	0d 6f 0d 7e 0d       	or     $0xd7e0d6f,%eax
   1800821f8:	7d 0d                	jge    0x180082207
   1800821fa:	79 0d                	jns    0x180082209
   1800821fc:	74 0d                	je     0x18008220b
   1800821fe:	7b 0d                	jnp    0x18008220d
   180082200:	7a 0d                	jp     0x18008220f
   180082202:	72 0d                	jb     0x180082211
   180082204:	7c 0d                	jl     0x180082213
   180082206:	73 0d                	jae    0x180082215
   180082208:	76 0d                	jbe    0x180082217
   18008220a:	75 0d                	jne    0x180082219
   18008220c:	82                   	(bad)  
   18008220d:	0d 7f 0d 80 0d       	or     $0xd800d7f,%eax
   180082212:	81 0d 77 0d 8d 0a 78 	orl    $0xd170d78,0xa8d0d77(%rip)        # 0x18a952f93
   180082219:	0d 17 0d 
   18008221c:	19 0d 1a 0d 63 0d    	sbb    %ecx,0xd630d1a(%rip)        # 0x18d6b2f3c
   180082222:	31 0d 69 0d 64 0d    	xor    %ecx,0xd640d69(%rip)        # 0x18d6c2f91
   180082228:	90                   	nop
   180082229:	0d 91 0d 8b 0d       	or     $0xd8b0d91,%eax
   18008222e:	1e                   	(bad)  
   18008222f:	0d 41 0d ec 0c       	or     $0xcec0d41,%eax
   180082234:	66 0d 09 0d          	or     $0xd09,%ax
   180082238:	8c 0d 8d 0d 2a 0d    	mov    %cs,0xd2a0d8d(%rip)        # 0x18d322fcb
   18008223e:	29 0d 52 0d b6 0c    	sub    %ecx,0xcb60d52(%rip)        # 0x18cbe2f96
   180082244:	b7 0c                	mov    $0xc,%bh
   180082246:	b9 0c b8 0c f2       	mov    $0xf20cb80c,%ecx
   18008224b:	0c 1c                	or     $0x1c,%al
   18008224d:	0d 0b 0d a6 0c       	or     $0xca60d0b,%eax
   180082252:	0d 0d 0c 0d 0e       	or     $0xe0d0c0d,%eax
   180082257:	0d fd 0c 32 0d       	or     $0xd320cfd,%eax
   18008225c:	ae                   	scas   %es:(%rdi),%al
   18008225d:	0c a9                	or     $0xa9,%al
   18008225f:	0c af                	or     $0xaf,%al
   180082261:	0c ac                	or     $0xac,%al
   180082263:	0c 04                	or     $0x4,%al
   180082265:	0d 06 0d 03 0d       	or     $0xd030d06,%eax
   18008226a:	01 0d 02 0d 07 0d    	add    %ecx,0xd070d02(%rip)        # 0x18d0f2f72
   180082270:	05 0d 2d 0d 2c       	add    $0x2c0d2d0d,%eax
   180082275:	0d a2 0c 1b 0d       	or     $0xd1b0ca2,%eax
   18008227a:	0a 0d a4 0c a5 0c    	or     0xca50ca4(%rip),%cl        # 0x18cad2f24
   180082280:	fa                   	cli    
   180082281:	0c 16                	or     $0x16,%al
   180082283:	0d fb 0c fc 0c       	or     $0xcfc0cfb,%eax
   180082288:	15 0d ce 0d 93       	adc    $0x930dce0d,%eax
   18008228d:	0d aa 0d d4 0d       	or     $0xdd40daa,%eax
   180082292:	d3 0d ad 0d a8 0d    	rorl   %cl,0xda80dad(%rip)        # 0x18db03045
   180082298:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   180082299:	0d a7 0d 99 0d       	or     $0xd990da7,%eax
   18008229e:	a3 0d a4 0d a9 0d af 	movabs %eax,0xd90daf0da90da40d
   1800822a5:	0d d9 
   1800822a7:	0d d7 0d d5 0d       	or     $0xdd50dd7,%eax
   1800822ac:	d6                   	(bad)  
   1800822ad:	0d ae 0d 48 0d       	or     $0xd480dae,%eax
   1800822b2:	9b                   	fwait
   1800822b3:	0d 9c 0d a2 0d       	or     $0xda20d9c,%eax
   1800822b8:	c3                   	ret    
   1800822b9:	0d c2 0d c5 0d       	or     $0xdc50dc2,%eax
   1800822be:	c4                   	(bad)  
   1800822bf:	0d c6 0d c7 0d       	or     $0xdc70dc6,%eax
   1800822c4:	a1 0d 4a 0d 49 0d bb 	movabs 0xc10cbb0d490d4a0d,%eax
   1800822cb:	0c c1 
   1800822cd:	0d 97 0d 98 0d       	or     $0xd980d97,%eax
   1800822d2:	94                   	xchg   %eax,%esp
   1800822d3:	0d 95 0d 96 0d       	or     $0xd960d95,%eax
   1800822d8:	42 0d d4 0c c5 0c    	rex.X or $0xcc50cd4,%eax
   1800822de:	c2 0c c1             	ret    $0xc10c
   1800822e1:	0c 4b                	or     $0x4b,%al
   1800822e3:	0d eb 0c ed 0c       	or     $0xced0ceb,%eax
   1800822e8:	e3 0c                	jrcxz  0x1800822f6
   1800822ea:	ea                   	(bad)  
   1800822eb:	0c e9                	or     $0xe9,%al
   1800822ed:	0c cf                	or     $0xcf,%al
   1800822ef:	0c c8                	or     $0xc8,%al
   1800822f1:	0c 3d                	or     $0x3d,%al
   1800822f3:	0d 25 0d 1f 0d       	or     $0xd1f0d25,%eax
   1800822f8:	24 0d                	and    $0xd,%al
   1800822fa:	20 0d 21 0d 22 0d    	and    %cl,0xd220d21(%rip)        # 0x18d2a3021
   180082300:	23 0d 57 04 38 04    	and    0x4380457(%rip),%ecx        # 0x18440275d
   180082306:	10 06                	adc    %al,(%rsi)
   180082308:	11 06                	adc    %eax,(%rsi)
   18008230a:	37                   	(bad)  
   18008230b:	04 36                	add    $0x36,%al
   18008230d:	04 4e                	add    $0x4e,%al
   18008230f:	04 14                	add    $0x14,%al
   180082311:	06                   	(bad)  
   180082312:	20 06                	and    %al,(%rsi)
   180082314:	55                   	push   %rbp
   180082315:	04 98                	add    $0x98,%al
   180082317:	04 11                	add    $0x11,%al
   180082319:	04 12                	add    $0x12,%al
   18008231b:	04 9b                	add    $0x9b,%al
   18008231d:	04 fc                	add    $0xfc,%al
   18008231f:	03 fb                	add    %ebx,%edi
   180082321:	03 31                	add    (%rcx),%esi
   180082323:	06                   	(bad)  
   180082324:	76 04                	jbe    0x18008232a
   180082326:	7b 04                	jnp    0x18008232c
   180082328:	15 06 16 06 fd       	adc    $0xfd061606,%eax
   18008232d:	03 0f                	add    (%rdi),%ecx
   18008232f:	04 13                	add    $0x13,%al
   180082331:	04 2d                	add    $0x2d,%al
   180082333:	04 1e                	add    $0x1e,%al
   180082335:	04 27                	add    $0x27,%al
   180082337:	04 28                	add    $0x28,%al
   180082339:	04 29                	add    $0x29,%al
   18008233b:	04 1a                	add    $0x1a,%al
   18008233d:	04 18                	add    $0x18,%al
   18008233f:	04 1b                	add    $0x1b,%al
   180082341:	04 1d                	add    $0x1d,%al
   180082343:	04 20                	add    $0x20,%al
   180082345:	04 1f                	add    $0x1f,%al
   180082347:	04 2c                	add    $0x2c,%al
   180082349:	04 30                	add    $0x30,%al
   18008234b:	04 33                	add    $0x33,%al
   18008234d:	04 31                	add    $0x31,%al
   18008234f:	04 1c                	add    $0x1c,%al
   180082351:	04 2f                	add    $0x2f,%al
   180082353:	04 2e                	add    $0x2e,%al
   180082355:	04 26                	add    $0x26,%al
   180082357:	04 23                	add    $0x23,%al
   180082359:	04 22                	add    $0x22,%al
   18008235b:	04 25                	add    $0x25,%al
   18008235d:	04 24                	add    $0x24,%al
   18008235f:	04 21                	add    $0x21,%al
   180082361:	04 2b                	add    $0x2b,%al
   180082363:	04 2a                	add    $0x2a,%al
   180082365:	04 19                	add    $0x19,%al
   180082367:	04 32                	add    $0x32,%al
   180082369:	04 62                	add    $0x62,%al
   18008236b:	04 64                	add    $0x64,%al
   18008236d:	04 66                	add    $0x66,%al
   18008236f:	04 67                	add    $0x67,%al
   180082371:	04 5a                	add    $0x5a,%al
   180082373:	04 5c                	add    $0x5c,%al
   180082375:	04 7f                	add    $0x7f,%al
   180082377:	04 60                	add    $0x60,%al
   180082379:	04 6c                	add    $0x6c,%al
   18008237b:	04 77                	add    $0x77,%al
   18008237d:	04 6b                	add    $0x6b,%al
   18008237f:	04 7e                	add    $0x7e,%al
   180082381:	04 6f                	add    $0x6f,%al
   180082383:	04 7c                	add    $0x7c,%al
   180082385:	04 7d                	add    $0x7d,%al
   180082387:	04 73                	add    $0x73,%al
   180082389:	04 69                	add    $0x69,%al
   18008238b:	04 6a                	add    $0x6a,%al
   18008238d:	04 81                	add    $0x81,%al
   18008238f:	04 70                	add    $0x70,%al
   180082391:	04 6d                	add    $0x6d,%al
   180082393:	04 95                	add    $0x95,%al
   180082395:	04 96                	add    $0x96,%al
   180082397:	04 68                	add    $0x68,%al
   180082399:	04 72                	add    $0x72,%al
   18008239b:	04 10                	add    $0x10,%al
   18008239d:	04 a5                	add    $0xa5,%al
   18008239f:	04 65                	add    $0x65,%al
   1800823a1:	04 34                	add    $0x34,%al
   1800823a3:	04 3b                	add    $0x3b,%al
   1800823a5:	04 3a                	add    $0x3a,%al
   1800823a7:	04 3c                	add    $0x3c,%al
   1800823a9:	04 3d                	add    $0x3d,%al
   1800823ab:	04 3f                	add    $0x3f,%al
   1800823ad:	04 42                	add    $0x42,%al
   1800823af:	04 41                	add    $0x41,%al
   1800823b1:	04 45                	add    $0x45,%al
   1800823b3:	04 48                	add    $0x48,%al
   1800823b5:	04 49                	add    $0x49,%al
   1800823b7:	04 40                	add    $0x40,%al
   1800823b9:	04 43                	add    $0x43,%al
   1800823bb:	04 3e                	add    $0x3e,%al
   1800823bd:	04 4b                	add    $0x4b,%al
   1800823bf:	04 47                	add    $0x47,%al
   1800823c1:	04 4a                	add    $0x4a,%al
   1800823c3:	04 4c                	add    $0x4c,%al
   1800823c5:	04 44                	add    $0x44,%al
   1800823c7:	04 46                	add    $0x46,%al
   1800823c9:	04 4d                	add    $0x4d,%al
   1800823cb:	04 9c                	add    $0x9c,%al
   1800823cd:	04 0e                	add    $0xe,%al
   1800823cf:	04 17                	add    $0x17,%al
   1800823d1:	04 61                	add    $0x61,%al
   1800823d3:	04 89                	add    $0x89,%al
   1800823d5:	05 88 05 8a 05       	add    $0x58a0588,%eax
   1800823da:	21 06                	and    %eax,(%rsi)
   1800823dc:	e0 04                	loopne 0x1800823e2
   1800823de:	b0 04                	mov    $0x4,%al
   1800823e0:	af                   	scas   %es:(%rdi),%eax
   1800823e1:	04 c5                	add    $0xc5,%al
   1800823e3:	04 23                	add    $0x23,%al
   1800823e5:	05 95 05 94 05       	add    $0x5940595,%eax
   1800823ea:	3b 05 30 05 39 05    	cmp    0x5390530(%rip),%eax        # 0x185412920
   1800823f0:	36 05 35 05 3a 05    	ss add $0x53a0535,%eax
   1800823f6:	3c 05                	cmp    $0x5,%al
   1800823f8:	38 05 a9 04 17 06    	cmp    %al,0x61704a9(%rip)        # 0x1861f28a7
   1800823fe:	1b 06                	sbb    (%rsi),%eax
   180082400:	1c 06                	sbb    $0x6,%al
   180082402:	1d 06 34 05 32       	sbb    $0x32053406,%eax
   180082407:	05 31 05 33 05       	add    $0x5330531,%eax
   18008240c:	41 06                	rex.B (bad) 
   18008240e:	12 06                	adc    (%rsi),%al
   180082410:	13 06                	adc    (%rsi),%eax
   180082412:	0e                   	(bad)  
   180082413:	06                   	(bad)  
   180082414:	0c 06                	or     $0x6,%al
   180082416:	0d 06 0f 06 1a       	or     $0x1a060f06,%eax
   18008241b:	06                   	(bad)  
   18008241c:	18 06                	sbb    %al,(%rsi)
   18008241e:	19 06                	sbb    %eax,(%rsi)
   180082420:	25 06 26 06 3c       	and    $0x3c062606,%eax
   180082425:	06                   	(bad)  
   180082426:	2e 06                	cs (bad) 
   180082428:	2a 06                	sub    (%rsi),%al
   18008242a:	29 06                	sub    %eax,(%rsi)
   18008242c:	38 06                	cmp    %al,(%rsi)
   18008242e:	22 06                	and    (%rsi),%al
   180082430:	23 06                	and    (%rsi),%eax
   180082432:	28 06                	sub    %al,(%rsi)
   180082434:	24 06                	and    $0x6,%al
   180082436:	1f                   	(bad)  
   180082437:	06                   	(bad)  
   180082438:	1e                   	(bad)  
   180082439:	06                   	(bad)  
   18008243a:	c6 04 c7 04          	movb   $0x4,(%rdi,%rax,8)
   18008243e:	c8 04 c9 04          	enter  $0xc904,$0x4
   180082442:	ce                   	(bad)  
   180082443:	04 cc                	add    $0xcc,%al
   180082445:	04 cd                	add    $0xcd,%al
   180082447:	04 cf                	add    $0xcf,%al
   180082449:	04 d8                	add    $0xd8,%al
   18008244b:	04 d0                	add    $0xd0,%al
   18008244d:	04 ad                	add    $0xad,%al
   18008244f:	04 d1                	add    $0xd1,%al
   180082451:	04 d2                	add    $0xd2,%al
   180082453:	04 d3                	add    $0xd3,%al
   180082455:	04 ab                	add    $0xab,%al
   180082457:	04 d7                	add    $0xd7,%al
   180082459:	04 2e                	add    $0x2e,%al
   18008245b:	05 ac 04 d6 04       	add    $0x4d604ac,%eax
   180082460:	d5                   	(bad)  
   180082461:	04 ae                	add    $0xae,%al
   180082463:	04 bf                	add    $0xbf,%al
   180082465:	04 b5                	add    $0xb5,%al
   180082467:	04 b6                	add    $0xb6,%al
   180082469:	04 2c                	add    $0x2c,%al
   18008246b:	05 26 05 25 05       	add    $0x5250526,%eax
   180082470:	22 05 11 05 27 05    	and    0x5270511(%rip),%al        # 0x1852f2987
   180082476:	12 05 0f 05 10 05    	adc    0x510050f(%rip),%al        # 0x18518298b
   18008247c:	c4                   	(bad)  
   18008247d:	04 18                	add    $0x18,%al
   18008247f:	05 17 05 c3 04       	add    $0x4c30517,%eax
   180082484:	c2 04 c1             	ret    $0xc104
   180082487:	04 1a                	add    $0x1a,%al
   180082489:	05 1d 05 1b 05       	add    $0x51b051d,%eax
   18008248e:	1e                   	(bad)  
   18008248f:	05 1f 05 1c 05       	add    $0x51c051f,%eax
   180082494:	19 05 be 04 2d 05    	sbb    %eax,0x52d04be(%rip)        # 0x185352958
   18008249a:	20 05 fb 04 2f 05    	and    %al,0x52f04fb(%rip)        # 0x18537299b
   1800824a0:	aa                   	stos   %al,%es:(%rdi)
   1800824a1:	04 f9                	add    $0xf9,%al
   1800824a3:	04 fa                	add    $0xfa,%al
   1800824a5:	04 f7                	add    $0xf7,%al
   1800824a7:	04 f1                	add    $0xf1,%al
   1800824a9:	04 e4                	add    $0xe4,%al
   1800824ab:	04 e5                	add    $0xe5,%al
   1800824ad:	04 e7                	add    $0xe7,%al
   1800824af:	04 e6                	add    $0xe6,%al
   1800824b1:	04 ec                	add    $0xec,%al
   1800824b3:	04 e9                	add    $0xe9,%al
   1800824b5:	04 e8                	add    $0xe8,%al
   1800824b7:	04 f0                	add    $0xf0,%al
   1800824b9:	04 ef                	add    $0xef,%al
   1800824bb:	04 eb                	add    $0xeb,%al
   1800824bd:	04 ee                	add    $0xee,%al
   1800824bf:	04 ed                	add    $0xed,%al
   1800824c1:	04 ea                	add    $0xea,%al
   1800824c3:	04 f2                	add    $0xf2,%al
   1800824c5:	04 f4                	add    $0xf4,%al
   1800824c7:	04 f5                	add    $0xf5,%al
   1800824c9:	04 f6                	add    $0xf6,%al
   1800824cb:	04 d9                	add    $0xd9,%al
   1800824cd:	04 e1                	add    $0xe1,%al
   1800824cf:	04 e2                	add    $0xe2,%al
   1800824d1:	04 dc                	add    $0xdc,%al
   1800824d3:	04 b1                	add    $0xb1,%al
   1800824d5:	04 ff                	add    $0xff,%al
   1800824d7:	03 77 05             	add    0x5(%rdi),%esi
   1800824da:	00 04 02             	add    %al,(%rdx,%rax,1)
   1800824dd:	04 03                	add    $0x3,%al
   1800824df:	04 04                	add    $0x4,%al
   1800824e1:	04 06                	add    $0x6,%al
   1800824e3:	04 05                	add    $0x5,%al
   1800824e5:	04 01                	add    $0x1,%al
   1800824e7:	04 07                	add    $0x7,%al
   1800824e9:	05 04 05 06 05       	add    $0x5060504,%eax
   1800824ee:	02 05 09 05 05 05    	add    0x5050509(%rip),%al        # 0x1850d29fd
   1800824f4:	08 05 03 05 01 05    	or     %al,0x5010503(%rip)        # 0x1850929fd
   1800824fa:	0e                   	(bad)  
   1800824fb:	05 00 05 0c 05       	add    $0x50c0500,%eax
   180082500:	fe 04 0d 05 0a 05 ff 	incb   -0xfaf5fb(,%rcx,1)
   180082507:	04 0b                	add    $0xb,%al
   180082509:	05 14 05 13 05       	add    $0x5130514,%eax
   18008250e:	16                   	(bad)  
   18008250f:	05 15 05 24 05       	add    $0x5240515,%eax
   180082514:	21 05 97 04 9d 04    	and    %eax,0x49d0497(%rip)        # 0x184a529b1
   18008251a:	fc                   	cld    
   18008251b:	04 fd                	add    $0xfd,%al
   18008251d:	04 b7                	add    $0xb7,%al
   18008251f:	04 b8                	add    $0xb8,%al
   180082521:	04 b9                	add    $0xb9,%al
   180082523:	04 ba                	add    $0xba,%al
   180082525:	04 bb                	add    $0xbb,%al
   180082527:	04 8f                	add    $0x8f,%al
   180082529:	05 8e 05 8d 05       	add    $0x58d058e,%eax
   18008252e:	86 05 fa 05 fe 05    	xchg   %al,0x5fe05fa(%rip)        # 0x186062b2e
   180082534:	fd                   	std    
   180082535:	05 f3 05 f2 05       	add    $0x5f205f3,%eax
   18008253a:	f0 05 f4 05 ef 05    	lock add $0x5ef05f4,%eax
   180082540:	ee                   	out    %al,(%dx)
   180082541:	05 f5 05 f1 05       	add    $0x5f105f5,%eax
   180082546:	ed                   	in     (%dx),%eax
   180082547:	05 ec 05 ea 05       	add    $0x5ea05ec,%eax
   18008254c:	e9 05 eb 05 e8       	jmp    0x1680e1056
   180082551:	05 d4 05 d6 05       	add    $0x5d605d4,%eax
   180082556:	d5                   	(bad)  
   180082557:	05 d7 05 d8 05       	add    $0x5d805d7,%eax
   18008255c:	57                   	push   %rdi
   18008255d:	06                   	(bad)  
   18008255e:	56                   	push   %rsi
   18008255f:	06                   	(bad)  
   180082560:	59                   	pop    %rcx
   180082561:	06                   	(bad)  
   180082562:	39 04 47             	cmp    %eax,(%rdi,%rax,2)
   180082565:	06                   	(bad)  
   180082566:	5a                   	pop    %rdx
   180082567:	06                   	(bad)  
   180082568:	63 04 4c             	movsxd (%rsp,%rcx,2),%eax
   18008256b:	06                   	(bad)  
   18008256c:	4e 06                	rex.WRX (bad) 
   18008256e:	4a 06                	rex.WX (bad) 
   180082570:	48 06                	rex.W (bad) 
   180082572:	49 06                	rex.WB (bad) 
   180082574:	51                   	push   %rcx
   180082575:	06                   	(bad)  
   180082576:	50                   	push   %rax
   180082577:	06                   	(bad)  
   180082578:	52                   	push   %rdx
   180082579:	06                   	(bad)  
   18008257a:	4f 06                	rex.WRXB (bad) 
   18008257c:	4b 06                	rex.WXB (bad) 
   18008257e:	5b                   	pop    %rbx
   18008257f:	04 53                	add    $0x53,%al
   180082581:	06                   	(bad)  
   180082582:	54                   	push   %rsp
   180082583:	06                   	(bad)  
   180082584:	55                   	push   %rbp
   180082585:	06                   	(bad)  
   180082586:	4d 06                	rex.WRB (bad) 
   180082588:	42 06                	rex.X (bad) 
   18008258a:	43 06                	rex.XB (bad) 
   18008258c:	45 06                	rex.RB (bad) 
   18008258e:	44 06                	rex.R (bad) 
   180082590:	0b 04 09             	or     (%rcx,%rcx,1),%eax
   180082593:	04 08                	add    $0x8,%al
   180082595:	04 0d                	add    $0xd,%al
   180082597:	04 0a                	add    $0xa,%al
   180082599:	04 0c                	add    $0xc,%al
   18008259b:	04 07                	add    $0x7,%al
   18008259d:	04 35                	add    $0x35,%al
   18008259f:	04 46                	add    $0x46,%al
   1800825a1:	06                   	(bad)  
   1800825a2:	dc 05 e6 05 e5 05    	faddl  0x5e505e6(%rip)        # 0x185ed2b8e
   1800825a8:	e0 05                	loopne 0x1800825af
   1800825aa:	df 05 e1 05 dd 05    	filds  0x5dd05e1(%rip)        # 0x185e52b91
   1800825b0:	de 05 d9 05 e7 05    	fiadds 0x5e705d9(%rip)        # 0x185ef2b8f
   1800825b6:	db 05 da 05 e4 05    	fildl  0x5e405da(%rip)        # 0x185ec2b96
   1800825bc:	e3 05                	jrcxz  0x1800825c3
   1800825be:	e2 05                	loop   0x1800825c5
   1800825c0:	87 05 33 06 30 06    	xchg   %eax,0x6300633(%rip)        # 0x186382bf9
   1800825c6:	36 06                	ss (bad) 
   1800825c8:	37                   	(bad)  
   1800825c9:	06                   	(bad)  
   1800825ca:	34 06                	xor    $0x6,%al
   1800825cc:	35 06 32 06 a5       	xor    $0xa5063206,%eax
   1800825d1:	05 a1 05 be 05       	add    $0x5be05a1,%eax
   1800825d6:	cf                   	iret   
   1800825d7:	05 a4 05 b8 05       	add    $0x5b805a4,%eax
   1800825dc:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   1800825dd:	05 ab 05 aa 05       	add    $0x5aa05ab,%eax
   1800825e2:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   1800825e3:	05 ac 05 ae 05       	add    $0x5ae05ac,%eax
   1800825e8:	a8 05                	test   $0x5,%al
   1800825ea:	a9 05 bf 05 b6       	test   $0xb605bf05,%eax
   1800825ef:	05 b5 05 b4 05       	add    $0x5b405b5,%eax
   1800825f4:	b3 05                	mov    $0x5,%bl
   1800825f6:	b9 05 bb 05 ba       	mov    $0xba05bb05,%ecx
   1800825fb:	05 bd 05 bc 05       	add    $0x5bc05bd,%eax
   180082600:	ad                   	lods   %ds:(%rsi),%eax
   180082601:	05 b0 05 b1 05       	add    $0x5b105b0,%eax
   180082606:	b2 05                	mov    $0x5,%dl
   180082608:	d3 05 d2 05 d1 05    	roll   %cl,0x5d105d2(%rip)        # 0x185d92be0
   18008260e:	d0 05 c0 05 c3 05    	rolb   0x5c305c0(%rip)        # 0x185cb2bd4
   180082614:	de 04 ce             	fiadds (%rsi,%rcx,8)
   180082617:	05 c4 05 c1 05       	add    $0x5c105c4,%eax
   18008261c:	c2 05 cb             	ret    $0xcb05
   18008261f:	05 c5 05 c7 05       	add    $0x5c705c5,%eax
   180082624:	ca 05 c6             	lret   $0xc605
   180082627:	05 cd 05 cc 05       	add    $0x5cc05cd,%eax
   18008262c:	c8 05 c9 05          	enter  $0xc905,$0x5
   180082630:	df 04 a2             	filds  (%rdx,%riz,4)
   180082633:	05 a3 05 01 06       	add    $0x60105a3,%eax
   180082638:	02 06                	add    (%rsi),%al
   18008263a:	03 06                	add    (%rsi),%eax
   18008263c:	56                   	push   %rsi
   18008263d:	04 58                	add    $0x58,%al
   18008263f:	04 15                	add    $0x15,%al
   180082641:	04 16                	add    $0x16,%al
   180082643:	04 14                	add    $0x14,%al
   180082645:	04 af                	add    $0xaf,%al
   180082647:	05 84 05 85 05       	add    $0x5850584,%eax
   18008264c:	8c 05 8b 05 dd 04    	mov    %es,0x4dd058b(%rip)        # 0x184e52bdd
   180082652:	93                   	xchg   %eax,%ebx
   180082653:	05 91 05 90 05       	add    $0x5900591,%eax
   180082658:	92                   	xchg   %eax,%edx
   180082659:	05 5f 04 5e 04       	add    $0x45e045f,%eax
   18008265e:	5d                   	pop    %rbp
   18008265f:	04 82                	add    $0x82,%al
   180082661:	04 80                	add    $0x80,%al
   180082663:	04 75                	add    $0x75,%al
   180082665:	04 e3                	add    $0xe3,%al
   180082667:	04 7a                	add    $0x7a,%al
   180082669:	04 79                	add    $0x79,%al
   18008266b:	04 78                	add    $0x78,%al
   18008266d:	04 71                	add    $0x71,%al
   18008266f:	04 05                	add    $0x5,%al
   180082671:	06                   	(bad)  
   180082672:	94                   	xchg   %eax,%esp
   180082673:	04 4f                	add    $0x4f,%al
   180082675:	04 53                	add    $0x53,%al
   180082677:	04 51                	add    $0x51,%al
   180082679:	04 52                	add    $0x52,%al
   18008267b:	04 54                	add    $0x54,%al
   18008267d:	04 50                	add    $0x50,%al
   18008267f:	04 84                	add    $0x84,%al
   180082681:	04 83                	add    $0x83,%al
   180082683:	04 8b                	add    $0x8b,%al
   180082685:	04 85                	add    $0x85,%al
   180082687:	04 8c                	add    $0x8c,%al
   180082689:	04 8d                	add    $0x8d,%al
   18008268b:	04 91                	add    $0x91,%al
   18008268d:	04 92                	add    $0x92,%al
   18008268f:	04 87                	add    $0x87,%al
   180082691:	04 86                	add    $0x86,%al
   180082693:	04 93                	add    $0x93,%al
   180082695:	04 8a                	add    $0x8a,%al
   180082697:	04 90                	add    $0x90,%al
   180082699:	04 8e                	add    $0x8e,%al
   18008269b:	04 89                	add    $0x89,%al
   18008269d:	04 8f                	add    $0x8f,%al
   18008269f:	04 88                	add    $0x88,%al
   1800826a1:	04 06                	add    $0x6,%al
   1800826a3:	06                   	(bad)  
   1800826a4:	09 06                	or     %eax,(%rsi)
   1800826a6:	07                   	(bad)  
   1800826a7:	06                   	(bad)  
   1800826a8:	0a 06                	or     (%rsi),%al
   1800826aa:	08 06                	or     %al,(%rsi)
   1800826ac:	59                   	pop    %rcx
   1800826ad:	04 0b                	add    $0xb,%al
   1800826af:	06                   	(bad)  
   1800826b0:	04 06                	add    $0x6,%al
   1800826b2:	b7 05                	mov    $0x5,%bh
   1800826b4:	9d                   	popf   
   1800826b5:	05 9f 05 9e 05       	add    $0x59e059f,%eax
   1800826ba:	97                   	xchg   %eax,%edi
   1800826bb:	05 98 05 99 05       	add    $0x5990598,%eax
   1800826c0:	96                   	xchg   %eax,%esi
   1800826c1:	05 9b 05 9a 05       	add    $0x59a059b,%eax
   1800826c6:	9c                   	pushf  
   1800826c7:	05 a0 05 82 05       	add    $0x58205a0,%eax
   1800826cc:	81 05 00 06 83 05 80 	addl   $0x57e0580,0x5830600(%rip)        # 0x1858b2cd6
   1800826d3:	05 7e 05 
   1800826d6:	7d 05                	jge    0x1800826dd
   1800826d8:	7c 05                	jl     0x1800826df
   1800826da:	7a 05                	jp     0x1800826e1
   1800826dc:	7b 05                	jnp    0x1800826e3
   1800826de:	7f 05                	jg     0x1800826e5
   1800826e0:	78 05                	js     0x1800826e7
   1800826e2:	79 05                	jns    0x1800826e9
   1800826e4:	58                   	pop    %rax
   1800826e5:	06                   	(bad)  
   1800826e6:	2a 05 28 05 29 05    	sub    0x5290528(%rip),%al        # 0x185312c14
   1800826ec:	2b 05 f3 04 5b 07    	sub    0x75b04f3(%rip),%eax        # 0x187632be5
   1800826f2:	5f                   	pop    %rdi
   1800826f3:	07                   	(bad)  
   1800826f4:	84 07                	test   %al,(%rdi)
   1800826f6:	85 07                	test   %eax,(%rdi)
   1800826f8:	86 07                	xchg   %al,(%rdi)
   1800826fa:	4f 07                	rex.WRXB (bad) 
   1800826fc:	77 06                	ja     0x180082704
   1800826fe:	7f 06                	jg     0x180082706
   180082700:	87 06                	xchg   %eax,(%rsi)
   180082702:	85 06                	test   %eax,(%rsi)
   180082704:	81 06 80 06 82 06    	addl   $0x6820680,(%rsi)
   18008270a:	83 06 88             	addl   $0xffffff88,(%rsi)
   18008270d:	06                   	(bad)  
   18008270e:	84 06                	test   %al,(%rsi)
   180082710:	86 06                	xchg   %al,(%rsi)
   180082712:	8a 06                	mov    (%rsi),%al
   180082714:	6c                   	insb   (%dx),%es:(%rdi)
   180082715:	06                   	(bad)  
   180082716:	70 06                	jo     0x18008271e
   180082718:	61                   	(bad)  
   180082719:	06                   	(bad)  
   18008271a:	63 06                	movsxd (%rsi),%eax
   18008271c:	5f                   	pop    %rdi
   18008271d:	06                   	(bad)  
   18008271e:	5c                   	pop    %rsp
   18008271f:	06                   	(bad)  
   180082720:	62 06 64 06 67       	(bad)
   180082725:	06                   	(bad)  
   180082726:	66 06                	data16 (bad) 
   180082728:	65 06                	gs (bad) 
   18008272a:	5e                   	pop    %rsi
   18008272b:	06                   	(bad)  
   18008272c:	5d                   	pop    %rbp
   18008272d:	06                   	(bad)  
   18008272e:	60                   	(bad)  
   18008272f:	06                   	(bad)  
   180082730:	68 06 6a 06 6b       	push   $0x6b066a06
   180082735:	06                   	(bad)  
   180082736:	69 06 76 06 79 06    	imul   $0x6790676,(%rsi),%eax
   18008273c:	78 06                	js     0x180082744
   18008273e:	7a 06                	jp     0x180082746
   180082740:	7e 06                	jle    0x180082748
   180082742:	7b 06                	jnp    0x18008274a
   180082744:	7c 06                	jl     0x18008274c
   180082746:	7d 06                	jge    0x18008274e
   180082748:	66 07                	data16 (bad) 
   18008274a:	94                   	xchg   %eax,%esp
   18008274b:	06                   	(bad)  
   18008274c:	93                   	xchg   %eax,%ebx
   18008274d:	06                   	(bad)  
   18008274e:	95                   	xchg   %eax,%ebp
   18008274f:	06                   	(bad)  
   180082750:	96                   	xchg   %eax,%esi
   180082751:	06                   	(bad)  
   180082752:	8d 06                	lea    (%rsi),%eax
   180082754:	8e 06                	mov    (%rsi),%es
   180082756:	8f 06                	pop    (%rsi)
   180082758:	91                   	xchg   %eax,%ecx
   180082759:	06                   	(bad)  
   18008275a:	90                   	nop
   18008275b:	06                   	(bad)  
   18008275c:	92                   	xchg   %eax,%edx
   18008275d:	06                   	(bad)  
   18008275e:	67 07                	addr32 (bad) 
   180082760:	8b 06                	mov    (%rsi),%eax
   180082762:	8c 06                	mov    %es,(%rsi)
   180082764:	89 06                	mov    %eax,(%rsi)
   180082766:	b7 06                	mov    $0x6,%bh
   180082768:	15 08 34 08 a8       	adc    $0xa8083408,%eax
   18008276d:	06                   	(bad)  
   18008276e:	a9 06 b0 06 af       	test   $0xaf06b006,%eax
   180082773:	06                   	(bad)  
   180082774:	aa                   	stos   %al,%es:(%rdi)
   180082775:	06                   	(bad)  
   180082776:	ae                   	scas   %es:(%rdi),%al
   180082777:	06                   	(bad)  
   180082778:	ad                   	lods   %ds:(%rsi),%eax
   180082779:	06                   	(bad)  
   18008277a:	b1 06                	mov    $0x6,%cl
   18008277c:	ac                   	lods   %ds:(%rsi),%al
   18008277d:	06                   	(bad)  
   18008277e:	ab                   	stos   %eax,%es:(%rdi)
   18008277f:	06                   	(bad)  
   180082780:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082781:	06                   	(bad)  
   180082782:	b2 06                	mov    $0x6,%dl
   180082784:	a2 06 a1 06 9f 06 9d 	movabs %al,0xa0069d069f06a106
   18008278b:	06 a0 
   18008278d:	06                   	(bad)  
   18008278e:	a3 06 a4 06 9e 06 b9 	movabs %eax,0xba06b9069e06a406
   180082795:	06 ba 
   180082797:	06                   	(bad)  
   180082798:	9b                   	fwait
   180082799:	06                   	(bad)  
   18008279a:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   18008279b:	06                   	(bad)  
   18008279c:	97                   	xchg   %eax,%edi
   18008279d:	06                   	(bad)  
   18008279e:	98                   	cwtl   
   18008279f:	06                   	(bad)  
   1800827a0:	9c                   	pushf  
   1800827a1:	06                   	(bad)  
   1800827a2:	33 08                	xor    (%rax),%ecx
   1800827a4:	b3 06                	mov    $0x6,%bl
   1800827a6:	b5 06                	mov    $0x6,%ch
   1800827a8:	b4 06                	mov    $0x6,%ah
   1800827aa:	54                   	push   %rsp
   1800827ab:	07                   	(bad)  
   1800827ac:	79 07                	jns    0x1800827b5
   1800827ae:	74 07                	je     0x1800827b7
   1800827b0:	82                   	(bad)  
   1800827b1:	07                   	(bad)  
   1800827b2:	83 07 80             	addl   $0xffffff80,(%rdi)
   1800827b5:	07                   	(bad)  
   1800827b6:	81 07 7e 07 7a 07    	addl   $0x77a077e,(%rdi)
   1800827bc:	70 07                	jo     0x1800827c5
   1800827be:	7f 07                	jg     0x1800827c7
   1800827c0:	7d 07                	jge    0x1800827c9
   1800827c2:	7b 07                	jnp    0x1800827cb
   1800827c4:	7c 07                	jl     0x1800827cd
   1800827c6:	69 07 71 07 75 07    	imul   $0x7750771,(%rdi),%eax
   1800827cc:	77 07                	ja     0x1800827d5
   1800827ce:	78 07                	js     0x1800827d7
   1800827d0:	76 07                	jbe    0x1800827d9
   1800827d2:	6b 07 6a             	imul   $0x6a,(%rdi),%eax
   1800827d5:	07                   	(bad)  
   1800827d6:	6c                   	insb   (%dx),%es:(%rdi)
   1800827d7:	07                   	(bad)  
   1800827d8:	6f                   	outsl  %ds:(%rsi),(%dx)
   1800827d9:	07                   	(bad)  
   1800827da:	6e                   	outsb  %ds:(%rsi),(%dx)
   1800827db:	07                   	(bad)  
   1800827dc:	6e                   	outsb  %ds:(%rsi),(%dx)
   1800827dd:	04 a0                	add    $0xa0,%al
   1800827df:	04 a3                	add    $0xa3,%al
   1800827e1:	04 a4                	add    $0xa4,%al
   1800827e3:	04 a1                	add    $0xa1,%al
   1800827e5:	04 a8                	add    $0xa8,%al
   1800827e7:	04 6d                	add    $0x6d,%al
   1800827e9:	07                   	(bad)  
   1800827ea:	f6 05 f9 05 f7 05 fc 	testb  $0xfc,0x5f705f9(%rip)        # 0x185ff2dea
   1800827f1:	05 f8 05 fb 05       	add    $0x5fb05f8,%eax
   1800827f6:	ff 05 74 04 50 07    	incl   0x7500474(%rip)        # 0x187582c70
   1800827fc:	5b                   	pop    %rbx
   1800827fd:	06                   	(bad)  
   1800827fe:	52                   	push   %rdx
   1800827ff:	07                   	(bad)  
   180082800:	71 06                	jno    0x180082808
   180082802:	74 06                	je     0x18008280a
   180082804:	75 06                	jne    0x18008280c
   180082806:	73 06                	jae    0x18008280e
   180082808:	72 06                	jb     0x180082810
   18008280a:	6e                   	outsb  %ds:(%rsi),(%dx)
   18008280b:	06                   	(bad)  
   18008280c:	68 07 6d 06 51       	push   $0x51066d07
   180082811:	07                   	(bad)  
   180082812:	5a                   	pop    %rdx
   180082813:	07                   	(bad)  
   180082814:	60                   	(bad)  
   180082815:	07                   	(bad)  
   180082816:	55                   	push   %rbp
   180082817:	07                   	(bad)  
   180082818:	56                   	push   %rsi
   180082819:	07                   	(bad)  
   18008281a:	5e                   	pop    %rsi
   18008281b:	07                   	(bad)  
   18008281c:	5d                   	pop    %rbp
   18008281d:	07                   	(bad)  
   18008281e:	65 07                	gs (bad) 
   180082820:	57                   	push   %rdi
   180082821:	07                   	(bad)  
   180082822:	59                   	pop    %rcx
   180082823:	07                   	(bad)  
   180082824:	58                   	pop    %rax
   180082825:	07                   	(bad)  
   180082826:	64 07                	fs (bad) 
   180082828:	5c                   	pop    %rsp
   180082829:	07                   	(bad)  
   18008282a:	61                   	(bad)  
   18008282b:	07                   	(bad)  
   18008282c:	62                   	(bad)  
   18008282d:	07                   	(bad)  
   18008282e:	63 07                	movsxd (%rdi),%eax
   180082830:	bf 07 be 07 c0       	mov    $0xc007be07,%edi
   180082835:	07                   	(bad)  
   180082836:	14 08                	adc    $0x8,%al
   180082838:	ee                   	out    %al,(%dx)
   180082839:	07                   	(bad)  
   18008283a:	ef                   	out    %eax,(%dx)
   18008283b:	07                   	(bad)  
   18008283c:	f0 07                	lock (bad) 
   18008283e:	f8                   	clc    
   18008283f:	07                   	(bad)  
   180082840:	df 07                	filds  (%rdi)
   180082842:	28 08                	sub    %cl,(%rax)
   180082844:	27                   	(bad)  
   180082845:	08 2e                	or     %ch,(%rsi)
   180082847:	08 2d 08 29 08 2c    	or     %ch,0x2c082908(%rip)        # 0x1ac105155
   18008284d:	08 2f                	or     %ch,(%rdi)
   18008284f:	08 2a                	or     %ch,(%rdx)
   180082851:	08 2b                	or     %ch,(%rbx)
   180082853:	08 ca                	or     %cl,%dl
   180082855:	07                   	(bad)  
   180082856:	cb                   	lret   
   180082857:	07                   	(bad)  
   180082858:	c4                   	(bad)  
   180082859:	07                   	(bad)  
   18008285a:	c9                   	leave  
   18008285b:	07                   	(bad)  
   18008285c:	c8 07 cc 07          	enter  $0xcc07,$0x7
   180082860:	c5 07 c6             	(bad)
   180082863:	07                   	(bad)  
   180082864:	c7 07 cd 07 d0 07    	movl   $0x7d007cd,(%rdi)
   18008286a:	d1 07                	roll   (%rdi)
   18008286c:	cf                   	iret   
   18008286d:	07                   	(bad)  
   18008286e:	ce                   	(bad)  
   18008286f:	07                   	(bad)  
   180082870:	e5 07                	in     $0x7,%eax
   180082872:	e4 07                	in     $0x7,%al
   180082874:	e2 07                	loop   0x18008287d
   180082876:	e1 07                	loope  0x18008287f
   180082878:	e3 07                	jrcxz  0x180082881
   18008287a:	d2 07                	rolb   %cl,(%rdi)
   18008287c:	e6 07                	out    %al,$0x7
   18008287e:	fc                   	cld    
   18008287f:	07                   	(bad)  
   180082880:	fd                   	std    
   180082881:	07                   	(bad)  
   180082882:	fe 07                	incb   (%rdi)
   180082884:	e0 07                	loopne 0x18008288d
   180082886:	fa                   	cli    
   180082887:	07                   	(bad)  
   180082888:	fb                   	sti    
   180082889:	07                   	(bad)  
   18008288a:	ff 07                	incl   (%rdi)
   18008288c:	f9                   	stc    
   18008288d:	07                   	(bad)  
   18008288e:	c2 07 f3             	ret    $0xf307
   180082891:	07                   	(bad)  
   180082892:	f2 07                	repnz (bad) 
   180082894:	f6 07 f1             	testb  $0xf1,(%rdi)
   180082897:	07                   	(bad)  
   180082898:	f7 07 f5 07 f4 07    	testl  $0x7f407f5,(%rdi)
   18008289e:	08 08                	or     %cl,(%rax)
   1800828a0:	e7 07                	out    %eax,$0x7
   1800828a2:	22 08                	and    (%rax),%cl
   1800828a4:	21 08                	and    %ecx,(%rax)
   1800828a6:	18 08                	sbb    %cl,(%rax)
   1800828a8:	19 08                	sbb    %ecx,(%rax)
   1800828aa:	1f                   	(bad)  
   1800828ab:	08 23                	or     %ah,(%rbx)
   1800828ad:	08 1b                	or     %bl,(%rbx)
   1800828af:	08 1c 08             	or     %bl,(%rax,%rcx,1)
   1800828b2:	24 08                	and    $0x8,%al
   1800828b4:	25 08 1a 08 1d       	and    $0x1d081a08,%eax
   1800828b9:	08 1e                	or     %bl,(%rsi)
   1800828bb:	08 20                	or     %ah,(%rax)
   1800828bd:	08 e9                	or     %ch,%cl
   1800828bf:	07                   	(bad)  
   1800828c0:	ea                   	(bad)  
   1800828c1:	07                   	(bad)  
   1800828c2:	ec                   	in     (%dx),%al
   1800828c3:	07                   	(bad)  
   1800828c4:	eb 07                	jmp    0x1800828cd
   1800828c6:	e8 07 17 08 16       	call   0x196103fd2
   1800828cb:	08 de                	or     %bl,%dh
   1800828cd:	07                   	(bad)  
   1800828ce:	d3 07                	roll   %cl,(%rdi)
   1800828d0:	db 07                	fildl  (%rdi)
   1800828d2:	d6                   	(bad)  
   1800828d3:	07                   	(bad)  
   1800828d4:	d9 07                	flds   (%rdi)
   1800828d6:	d4                   	(bad)  
   1800828d7:	07                   	(bad)  
   1800828d8:	d7                   	xlat   %ds:(%rbx)
   1800828d9:	07                   	(bad)  
   1800828da:	dd 07                	fldl   (%rdi)
   1800828dc:	dc 07                	faddl  (%rdi)
   1800828de:	da 07                	fiaddl (%rdi)
   1800828e0:	d8 07                	fadds  (%rdi)
   1800828e2:	d5                   	(bad)  
   1800828e3:	07                   	(bad)  
   1800828e4:	ed                   	in     (%dx),%eax
   1800828e5:	07                   	(bad)  
   1800828e6:	26 08 99 06 9a 06 a6 	es or  %bl,-0x59f965fa(%rcx)
   1800828ed:	06                   	(bad)  
   1800828ee:	37                   	(bad)  
   1800828ef:	08 36                	or     %dh,(%rsi)
   1800828f1:	08 35 08 b8 06 31    	or     %dh,0x3106b808(%rip)        # 0x1b10ee0ff
   1800828f7:	08 32                	or     %dh,(%rdx)
   1800828f9:	08 30                	or     %dh,(%rax)
   1800828fb:	08 0c 08             	or     %cl,(%rax,%rcx,1)
   1800828fe:	09 08                	or     %ecx,(%rax)
   180082900:	04 08                	add    $0x8,%al
   180082902:	03 08                	add    (%rax),%ecx
   180082904:	0b 08                	or     (%rax),%ecx
   180082906:	0a 08                	or     (%rax),%cl
   180082908:	07                   	(bad)  
   180082909:	08 05 08 06 08 13    	or     %al,0x13080608(%rip)        # 0x193102f17
   18008290f:	08 12                	or     %dl,(%rdx)
   180082911:	08 11                	or     %dl,(%rcx)
   180082913:	08 10                	or     %dl,(%rax)
   180082915:	08 0f                	or     %cl,(%rdi)
   180082917:	08 0e                	or     %cl,(%rsi)
   180082919:	08 0d 08 00 08 01    	or     %cl,0x1080008(%rip)        # 0x181102927
   18008291f:	08 02                	or     %al,(%rdx)
   180082921:	08 49 07             	or     %cl,0x7(%rcx)
   180082924:	46 07                	rex.RX (bad) 
   180082926:	47 07                	rex.RXB (bad) 
   180082928:	48 07                	rex.W (bad) 
   18008292a:	4d 07                	rex.WRB (bad) 
   18008292c:	4a 07                	rex.WX (bad) 
   18008292e:	4b 07                	rex.WXB (bad) 
   180082930:	4e 07                	rex.WRX (bad) 
   180082932:	4c 07                	rex.WR (bad) 
   180082934:	72 07                	jb     0x18008293d
   180082936:	c3                   	ret    
   180082937:	07                   	(bad)  
   180082938:	73 07                	jae    0x180082941
   18008293a:	b6 06                	mov    $0x6,%dh
   18008293c:	c1 07 bb             	roll   $0xbb,(%rdi)
   18008293f:	06                   	(bad)  
   180082940:	53                   	push   %rbx
   180082941:	07                   	(bad)  
   180082942:	44 07                	rex.R (bad) 
   180082944:	bd 07 6f 06 97       	mov    $0x97066f07,%ebp
   180082949:	0c 8e                	or     $0x8e,%al
   18008294b:	0c 5a                	or     $0x5a,%al
   18008294d:	01 5f 01             	add    %ebx,0x1(%rdi)
   180082950:	b6 00                	mov    $0x0,%dh
   180082952:	5e                   	pop    %rsi
   180082953:	01 dd                	add    %ebx,%ebp
   180082955:	00 dc                	add    %bl,%ah
   180082957:	00 ce                	add    %cl,%dh
   180082959:	00 8d 0c e1 00 59    	add    %cl,0x5900e10c(%rbp)
   18008295f:	00 e8                	add    %ch,%al
   180082961:	00 e9                	add    %ch,%cl
   180082963:	00 ea                	add    %ch,%dl
   180082965:	00 e7                	add    %ah,%bh
   180082967:	00 91 0c 5b 01 94    	add    %dl,-0x6bfea4f4(%rcx)
   18008296d:	0c 95                	or     $0x95,%al
   18008296f:	0c 96                	or     $0x96,%al
   180082971:	0c 5c                	or     $0x5c,%al
   180082973:	01 62 01             	add    %esp,0x1(%rdx)
   180082976:	74 01                	je     0x180082979
   180082978:	67 01 64 01 65       	add    %esp,0x65(%ecx,%eax,1)
   18008297d:	01 66 01             	add    %esp,0x1(%rsi)
   180082980:	91                   	xchg   %eax,%ecx
   180082981:	0a 75 01             	or     0x1(%rbp),%dh
   180082984:	79 01                	jns    0x180082987
   180082986:	7a 01                	jp     0x180082989
   180082988:	7b 01                	jnp    0x18008298b
   18008298a:	7c 01                	jl     0x18008298d
   18008298c:	9f                   	lahf   
   18008298d:	09 77 01             	or     %esi,0x1(%rdi)
   180082990:	df 09                	fisttps (%rcx)
   180082992:	6a 01                	push   $0x1
   180082994:	a3 0a 9b 0a 76 01 70 	movabs %eax,0x6e017001760a9b0a
   18008299b:	01 6e 
   18008299d:	01 6b 01             	add    %ebp,0x1(%rbx)
   1800829a0:	6d                   	insl   (%dx),%es:(%rdi)
   1800829a1:	01 2c 01             	add    %ebp,(%rcx,%rax,1)
   1800829a4:	7d 09                	jge    0x1800829af
   1800829a6:	6c                   	insb   (%dx),%es:(%rdi)
   1800829a7:	01 7e 09             	add    %edi,0x9(%rsi)
   1800829aa:	69 01 68 01 71 01    	imul   $0x1710168,(%rcx),%eax
   1800829b0:	72 01                	jb     0x1800829b3
   1800829b2:	73 01                	jae    0x1800829b5
   1800829b4:	6f                   	outsl  %ds:(%rsi),(%dx)
   1800829b5:	01 59 01             	add    %ebx,0x1(%rcx)
   1800829b8:	7d 01                	jge    0x1800829bb
   1800829ba:	0c 07                	or     $0x7,%al
   1800829bc:	e7 0d                	out    %eax,$0xd
   1800829be:	e6 0d                	out    %al,$0xd
   1800829c0:	e5 0d                	in     $0xd,%eax
   1800829c2:	e8 0d 63 01 ea       	call   0x16a098cd4
   1800829c7:	0d 54 01 55 01       	or     $0x1550154,%eax
   1800829cc:	56                   	push   %rsi
   1800829cd:	01 f8                	add    %edi,%eax
   1800829cf:	0d e9 0d 58 01       	or     $0x1580de9,%eax
   1800829d4:	57                   	push   %rdi
   1800829d5:	01 61 01             	add    %esp,0x1(%rcx)
   1800829d8:	4f 01 78 01          	rex.WRXB add %r15,0x1(%r8)
   1800829dc:	53                   	push   %rbx
   1800829dd:	01 4e 01             	add    %ecx,0x1(%rsi)
   1800829e0:	51                   	push   %rcx
   1800829e1:	01 52 01             	add    %edx,0x1(%rdx)
   1800829e4:	50                   	push   %rax
   1800829e5:	01 bb 0a cb 0a cc    	add    %edi,-0x33f534f6(%rbx)
   1800829eb:	0a cf                	or     %bh,%cl
   1800829ed:	0a d0                	or     %al,%dl
   1800829ef:	0a d1                	or     %cl,%dl
   1800829f1:	0a cd                	or     %ch,%cl
   1800829f3:	0a ce                	or     %dh,%cl
   1800829f5:	0a de                	or     %dh,%bl
   1800829f7:	0d df 0d e1 0d       	or     $0xde10ddf,%eax
   1800829fc:	e0 0d                	loopne 0x180082a0b
   1800829fe:	e2 0d                	loop   0x180082a0d
   180082a00:	e3 0d                	jrcxz  0x180082a0f
   180082a02:	e4 0d                	in     $0xd,%al
   180082a04:	32 01                	xor    (%rcx),%al
   180082a06:	31 01                	xor    %eax,(%rcx)
   180082a08:	46 01 45 01          	rex.RX add %r8d,0x1(%rbp)
   180082a0c:	37                   	(bad)  
   180082a0d:	01 44 01 38          	add    %eax,0x38(%rcx,%rax,1)
   180082a11:	01 3f                	add    %edi,(%rdi)
   180082a13:	01 3c 01             	add    %edi,(%rcx,%rax,1)
   180082a16:	3d 01 39 01 3a       	cmp    $0x3a013901,%eax
   180082a1b:	01 4b 01             	add    %ecx,0x1(%rbx)
   180082a1e:	49 01 4a 01          	add    %rcx,0x1(%r10)
   180082a22:	48 01 4c 01 47       	add    %rcx,0x47(%rcx,%rax,1)
   180082a27:	01 4d 01             	add    %ecx,0x1(%rbp)
   180082a2a:	40 01 43 01          	rex add %eax,0x1(%rbx)
   180082a2e:	42 01 34 01          	add    %esi,(%rcx,%r8,1)
   180082a32:	41 01 3b             	add    %edi,(%r11)
   180082a35:	01 3e                	add    %edi,(%rsi)
   180082a37:	01 2f                	add    %ebp,(%rdi)
   180082a39:	01 35 01 30 01 36    	add    %esi,0x36013001(%rip)        # 0x1b6095a40
   180082a3f:	01 33                	add    %esi,(%rbx)
   180082a41:	01 dd                	add    %ebx,%ebp
   180082a43:	0d 2e 01 60 01       	or     $0x160012e,%eax
   180082a48:	ee                   	out    %al,(%dx)
   180082a49:	0d f1 0d f2 0d       	or     $0xdf20df1,%eax
   180082a4e:	f0 0d ef 0d ed 0d    	lock or $0xded0def,%eax
   180082a54:	5d                   	pop    %rbp
   180082a55:	01 f7                	add    %esi,%edi
   180082a57:	0d f9 0d fa 0d       	or     $0xdfa0df9,%eax
   180082a5c:	fb                   	sti    
   180082a5d:	0d 1a 03 b8 01       	or     $0x1b8031a,%eax
   180082a62:	5e                   	pop    %rsi
   180082a63:	0c 5f                	or     $0x5f,%al
   180082a65:	0c 7f                	or     $0x7f,%al
   180082a67:	0c 7d                	or     $0x7d,%al
   180082a69:	0c 61                	or     $0x61,%al
   180082a6b:	0c 63                	or     $0x63,%al
   180082a6d:	0c 62                	or     $0x62,%al
   180082a6f:	0c 66                	or     $0x66,%al
   180082a71:	0c 65                	or     $0x65,%al
   180082a73:	0c 71                	or     $0x71,%al
   180082a75:	0c 73                	or     $0x73,%al
   180082a77:	0c 74                	or     $0x74,%al
   180082a79:	0c 6b                	or     $0x6b,%al
   180082a7b:	0c 67                	or     $0x67,%al
   180082a7d:	0c 6a                	or     $0x6a,%al
   180082a7f:	0c 75                	or     $0x75,%al
   180082a81:	0c 77                	or     $0x77,%al
   180082a83:	0c 76                	or     $0x76,%al
   180082a85:	0c 69                	or     $0x69,%al
   180082a87:	0c 72                	or     $0x72,%al
   180082a89:	0c 78                	or     $0x78,%al
   180082a8b:	0c 6c                	or     $0x6c,%al
   180082a8d:	0c 6d                	or     $0x6d,%al
   180082a8f:	0c 6f                	or     $0x6f,%al
   180082a91:	0c 6e                	or     $0x6e,%al
   180082a93:	0c 68                	or     $0x68,%al
   180082a95:	0c 70                	or     $0x70,%al
   180082a97:	0c 7b                	or     $0x7b,%al
   180082a99:	0c 7c                	or     $0x7c,%al
   180082a9b:	0c 79                	or     $0x79,%al
   180082a9d:	0c 7a                	or     $0x7a,%al
   180082a9f:	0c 7e                	or     $0x7e,%al
   180082aa1:	0c 64                	or     $0x64,%al
   180082aa3:	0c 60                	or     $0x60,%al
   180082aa5:	0c f0                	or     $0xf0,%al
   180082aa7:	00 a1 0c 9d 0c 9e    	add    %ah,-0x61f362f4(%rcx)
   180082aad:	0c 9c                	or     $0x9c,%al
   180082aaf:	0c 9f                	or     $0x9f,%al
   180082ab1:	0c a0                	or     $0xa0,%al
   180082ab3:	0c 90                	or     $0x90,%al
   180082ab5:	0c 80                	or     $0x80,%al
   180082ab7:	0c 81                	or     $0x81,%al
   180082ab9:	0c 87                	or     $0x87,%al
   180082abb:	0c 85                	or     $0x85,%al
   180082abd:	0c 82                	or     $0x82,%al
   180082abf:	0c 83                	or     $0x83,%al
   180082ac1:	0c 88                	or     $0x88,%al
   180082ac3:	0c 8b                	or     $0x8b,%al
   180082ac5:	0c 8c                	or     $0x8c,%al
   180082ac7:	0c 8a                	or     $0x8a,%al
   180082ac9:	0c 89                	or     $0x89,%al
   180082acb:	0c 98                	or     $0x98,%al
   180082acd:	0c 8f                	or     $0x8f,%al
   180082acf:	0c 93                	or     $0x93,%al
   180082ad1:	0c 92                	or     $0x92,%al
   180082ad3:	0c 84                	or     $0x84,%al
   180082ad5:	0c 86                	or     $0x86,%al
   180082ad7:	0c 9a                	or     $0x9a,%al
   180082ad9:	0c 9b                	or     $0x9b,%al
   180082adb:	0c 99                	or     $0x99,%al
   180082add:	0c 9e                	or     $0x9e,%al
   180082adf:	04 9f                	add    $0x9f,%al
   180082ae1:	04 a2                	add    $0xa2,%al
   180082ae3:	04 a7                	add    $0xa7,%al
   180082ae5:	04 a6                	add    $0xa6,%al
   180082ae7:	04 39                	add    $0x39,%al
   180082ae9:	06                   	(bad)  
   180082aea:	40 06                	rex (bad) 
   180082aec:	3d 06 3e 06 3f       	cmp    $0x3f063e06,%eax
   180082af1:	06                   	(bad)  
   180082af2:	3a 06                	cmp    (%rsi),%al
   180082af4:	75 05                	jne    0x180082afb
   180082af6:	45 07                	rex.RB (bad) 
   180082af8:	06                   	(bad)  
   180082af9:	05 07 05 3a 05       	add    $0x53a0507,%eax
   180082afe:	3c 05                	cmp    $0x5,%al
   180082b00:	3b 05 09 05 14 05    	cmp    0x5140509(%rip),%eax        # 0x1851c300f
   180082b06:	12 05 0a 05 27 05    	adc    0x527050a(%rip),%al        # 0x1852f3016
   180082b0c:	5a                   	pop    %rdx
   180082b0d:	00 70 03             	add    %dh,0x3(%rax)
   180082b10:	6f                   	outsl  %ds:(%rsi),(%dx)
   180082b11:	03 1d 05 42 05 43    	add    0x43054205(%rip),%ebx        # 0x1c30d6d1c
   180082b17:	05 39 05 fc 00       	add    $0xfc0539,%eax
   180082b1c:	1c 05                	sbb    $0x5,%al
   180082b1e:	26 03 25 03 0e 00 f8 	es add -0x7fff1fd(%rip),%esp        # 0x178083928
   180082b25:	00 f2                	add    %dh,%dl
   180082b27:	08 f1                	or     %dh,%cl
   180082b29:	08 f7                	or     %dh,%bh
   180082b2b:	00 f6                	add    %dh,%dh
   180082b2d:	00 44 00 43          	add    %al,0x43(%rax,%rax,1)
   180082b31:	00 72 00             	add    %dh,0x0(%rdx)
   180082b34:	73 00                	jae    0x180082b36
   180082b36:	75 00                	jne    0x180082b38
   180082b38:	15 00 74 00 18       	adc    $0x18007400,%eax
   180082b3d:	00 fb                	add    %bh,%bl
   180082b3f:	00 19                	add    %bl,(%rcx)
   180082b41:	00 1a                	add    %bl,(%rdx)
   180082b43:	00 4a 00             	add    %cl,0x0(%rdx)
   180082b46:	56                   	push   %rsi
   180082b47:	00 50 00             	add    %dl,0x0(%rax)
   180082b4a:	4e 00 4f 00          	rex.WRX add %r9b,0x0(%rdi)
   180082b4e:	54                   	push   %rsp
   180082b4f:	00 55 00             	add    %dl,0x0(%rbp)
   180082b52:	4b 00 52 00          	rex.WXB add %dl,0x0(%r10)
   180082b56:	4c 00 4d 00          	rex.WR add %r9b,0x0(%rbp)
   180082b5a:	53                   	push   %rbx
   180082b5b:	00 51 00             	add    %dl,0x0(%rcx)
   180082b5e:	57                   	push   %rdi
   180082b5f:	00 58 00             	add    %bl,0x0(%rax)
   180082b62:	d6                   	(bad)  
   180082b63:	00 d8                	add    %bl,%al
   180082b65:	00 d5                	add    %dl,%ch
   180082b67:	00 d7                	add    %dl,%bh
   180082b69:	00 db                	add    %bl,%bl
   180082b6b:	00 da                	add    %bl,%dl
   180082b6d:	00 dc                	add    %bl,%ah
   180082b6f:	00 d9                	add    %bl,%cl
   180082b71:	00 d2                	add    %dl,%dl
   180082b73:	00 d3                	add    %dl,%bl
   180082b75:	00 d4                	add    %dl,%ah
   180082b77:	00 de                	add    %bl,%dh
   180082b79:	00 dd                	add    %bl,%ch
   180082b7b:	00 e0                	add    %ah,%al
   180082b7d:	00 e1                	add    %ah,%cl
   180082b7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
   180082b82:	e8 00 ea 00 e9       	call   0x169091587
   180082b87:	00 e4                	add    %ah,%ah
   180082b89:	00 e5                	add    %ah,%ch
   180082b8b:	00 e3                	add    %ah,%bl
   180082b8d:	00 df                	add    %bl,%bh
   180082b8f:	00 e6                	add    %ah,%dh
   180082b91:	00 e7                	add    %ah,%bh
   180082b93:	00 ff                	add    %bh,%bh
   180082b95:	00 01                	add    %al,(%rcx)
   180082b97:	01 02                	add    %eax,(%rdx)
   180082b99:	01 03                	add    %eax,(%rbx)
   180082b9b:	01 00                	add    %eax,(%rax)
   180082b9d:	01 fe                	add    %edi,%esi
   180082b9f:	00 eb                	add    %ch,%bl
   180082ba1:	00 ed                	add    %ch,%ch
   180082ba3:	00 1b                	add    %bl,(%rbx)
   180082ba5:	00 17                	add    %dl,(%rdi)
   180082ba7:	00 b8 00 2f 0d 00    	add    %bh,0xd2f00(%rax)
   180082bad:	00 ee                	add    %ch,%dh
   180082baf:	00 28                	add    %ch,(%rax)
   180082bb1:	00 1e                	add    %bl,(%rsi)
   180082bb3:	00 30                	add    %dh,(%rax)
   180082bb5:	00 31                	add    %dh,(%rcx)
   180082bb7:	00 3b                	add    %bh,(%rbx)
   180082bb9:	00 2a                	add    %ch,(%rdx)
   180082bbb:	00 24 00             	add    %ah,(%rax,%rax,1)
   180082bbe:	23 00                	and    (%rax),%eax
   180082bc0:	22 00                	and    (%rax),%al
   180082bc2:	2f                   	(bad)  
   180082bc3:	00 2d 00 2e 00 3e    	add    %ch,0x3e002e00(%rip)        # 0x1be0859c9
   180082bc9:	00 41 00             	add    %al,0x0(%rcx)
   180082bcc:	3f                   	(bad)  
   180082bcd:	00 25 00 26 00 27    	add    %ah,0x27002600(%rip)        # 0x1a70851d3
   180082bd3:	00 29                	add    %ch,(%rcx)
   180082bd5:	00 40 00             	add    %al,0x0(%rax)
   180082bd8:	1f                   	(bad)  
   180082bd9:	00 2b                	add    %ch,(%rbx)
   180082bdb:	00 2c 00             	add    %ch,(%rax,%rax,1)
   180082bde:	20 00                	and    %al,(%rax)
   180082be0:	21 00                	and    %eax,(%rax)
   180082be2:	37                   	(bad)  
   180082be3:	00 36                	add    %dh,(%rsi)
   180082be5:	00 34 00             	add    %dh,(%rax,%rax,1)
   180082be8:	35 00 38 00 3a       	xor    $0x3a003800,%eax
   180082bed:	00 33                	add    %dh,(%rbx)
   180082bef:	00 39                	add    %bh,(%rcx)
   180082bf1:	00 3c 00             	add    %bh,(%rax,%rax,1)
   180082bf4:	32 00                	xor    (%rax),%al
   180082bf6:	3d 00 1d 00 42       	cmp    $0x42001d00,%eax
   180082bfb:	00 b1 00 b0 00 a5    	add    %dh,-0x5aff5000(%rcx)
   180082c01:	00 ae 00 af 00 0f    	add    %ch,0xf00af00(%rsi)
   180082c07:	00 b4 00 b9 00 47 00 	add    %dh,0x4700b9(%rax,%rax,1)
   180082c0e:	46 00 49 00          	rex.RX add %r9b,0x0(%rcx)
   180082c12:	48 00 12             	rex.W add %dl,(%rdx)
   180082c15:	00 14 00             	add    %dl,(%rax,%rax,1)
   180082c18:	13 00                	adc    (%rax),%eax
   180082c1a:	11 00                	adc    %eax,(%rax)
   180082c1c:	10 00                	adc    %al,(%rax)
   180082c1e:	bb 00 ba 00 b5       	mov    $0xb500ba00,%ebx
   180082c23:	00 b7 00 b6 00 98    	add    %dh,-0x67ff4a00(%rdi)
   180082c29:	00 97 00 a1 00 a3    	add    %dl,-0x5cff5f00(%rdi)
   180082c2f:	00 a0 00 9f 00 9e    	add    %ah,-0x61ff6100(%rax)
   180082c35:	00 9d 00 fd 00 be    	add    %bl,-0x41ff0300(%rbp)
   180082c3b:	00 c2                	add    %al,%dl
   180082c3d:	00 bf 00 c0 00 c1    	add    %bh,-0x3eff4000(%rdi)
   180082c43:	00 bd 00 c7 00 93    	add    %bh,-0x6cff3900(%rbp)
   180082c49:	00 95 00 7e 00 c8    	add    %dl,-0x37ff8200(%rbp)
   180082c4f:	00 7f 00             	add    %bh,0x0(%rdi)
   180082c52:	94                   	xchg   %eax,%esp
   180082c53:	00 ca                	add    %cl,%dl
   180082c55:	00 76 00             	add    %dh,0x0(%rsi)
   180082c58:	bc 00 80 00 c3       	mov    $0xc3008000,%esp
   180082c5d:	00 c5                	add    %al,%ch
   180082c5f:	00 c4                	add    %al,%ah
   180082c61:	00 c6                	add    %al,%dh
   180082c63:	00 28                	add    %ch,(%rax)
   180082c65:	0d cf 00 77 00       	or     $0x7700cf,%eax
   180082c6a:	78 00                	js     0x180082c6c
   180082c6c:	79 00                	jns    0x180082c6e
   180082c6e:	7a 00                	jp     0x180082c70
   180082c70:	7b 00                	jnp    0x180082c72
   180082c72:	7c 00                	jl     0x180082c74
   180082c74:	92                   	xchg   %eax,%edx
   180082c75:	00 91 00 7d 00 8c    	add    %dl,-0x73ff8300(%rcx)
   180082c7b:	00 d1                	add    %dl,%cl
   180082c7d:	00 8a 00 8b 00 87    	add    %cl,-0x78ff7500(%rdx)
   180082c83:	00 88 00 cb 00 8e    	add    %cl,-0x71ff3500(%rax)
   180082c89:	00 8f 00 c9 00 90    	add    %cl,-0x6fff3700(%rdi)
   180082c8f:	00 cd                	add    %cl,%ch
   180082c91:	00 cc                	add    %cl,%ah
   180082c93:	00 2c 0d ac 00 a6 00 	add    %ch,0xa600ac(,%rcx,1)
   180082c9a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082c9b:	00 4a 03             	add    %cl,0x3(%rdx)
   180082c9e:	ab                   	stos   %eax,%es:(%rdi)
   180082c9f:	00 a8 00 aa 00 a9    	add    %ch,-0x56ff5600(%rax)
   180082ca5:	00 96 00 99 00 9a    	add    %dl,-0x65ff6700(%rsi)
   180082cab:	00 a4 00 9b 00 2b 0d 	add    %ah,0xd2b009b(%rax,%rax,1)
   180082cb2:	2a 0d 44 03 9c 00    	sub    0x9c0344(%rip),%cl        # 0x180a42ffc
   180082cb8:	a2 00 2e 0d 16 03 d0 	movabs %al,0xec00d003160d2e00
   180082cbf:	00 ec 
   180082cc1:	00 ce                	add    %cl,%dh
   180082cc3:	00 15 03 33 0d 30    	add    %dl,0x300d3303(%rip)        # 0x1b0155fcc
   180082cc9:	0d 31 0d 32 0d       	or     $0xd320d31,%eax
   180082cce:	8d 00                	lea    (%rax),%eax
   180082cd0:	14 03                	adc    $0x3,%al
   180082cd2:	5a                   	pop    %rdx
   180082cd3:	09 17                	or     %edx,(%rdi)
   180082cd5:	05 18 05 d3 0d       	add    $0xdd30518,%eax
   180082cda:	57                   	push   %rdi
   180082cdb:	03 6c 03 1a          	add    0x1a(%rbx,%rax,1),%ebp
   180082cdf:	05 16 05 08 05       	add    $0x5080516,%eax
   180082ce4:	3d 05 3f 05 3e       	cmp    $0x3e053f05,%eax
   180082ce9:	05 40 05 19 05       	add    $0x5190540,%eax
   180082cee:	41 05 47 05 48 05    	rex.B add $0x5480547,%eax
   180082cf4:	44 05 45 05 13 05    	rex.R add $0x5130545,%eax
   180082cfa:	46 05 15 05 22 05    	rex.RX add $0x5220515,%eax
   180082d00:	20 05 21 05 38 05    	and    %al,0x5380521(%rip)        # 0x185403227
   180082d06:	0e                   	(bad)  
   180082d07:	05 0d 05 10 05       	add    $0x510050d,%eax
   180082d0c:	0c 05                	or     $0x5,%al
   180082d0e:	0f 05                	syscall 
   180082d10:	11 05 0b 05 1e 05    	adc    %eax,0x51e050b(%rip)        # 0x185263221
   180082d16:	1b 05 43 03 36 05    	sbb    0x5360343(%rip),%eax        # 0x1853e305f
   180082d1c:	23 05 28 05 4e 03    	and    0x34e0528(%rip),%eax        # 0x18356324a
   180082d22:	4f 03 29             	rex.WRXB add (%r9),%r13
   180082d25:	05 2a 05 2d 05       	add    $0x52d052a,%eax
   180082d2a:	30 05 2f 05 2e 05    	xor    %al,0x52e052f(%rip)        # 0x18536325f
   180082d30:	32 05 31 05 25 05    	xor    0x5250531(%rip),%al        # 0x1852d3267
   180082d36:	33 05 34 05 2b 05    	xor    0x52b0534(%rip),%eax        # 0x185333270
   180082d3c:	2c 05                	sub    $0x5,%al
   180082d3e:	24 05                	and    $0x5,%al
   180082d40:	26 05 35 05 1f 05    	es add $0x51f0535,%eax
   180082d46:	37                   	(bad)  
   180082d47:	05 12 03 13 03       	add    $0x3130312,%eax
   180082d4c:	59                   	pop    %rcx
   180082d4d:	00 17                	add    %dl,(%rdi)
   180082d4f:	03 51 0d             	add    0xd(%rcx),%edx
   180082d52:	f0 08 a2 0d 9c 0d 9e 	lock or %ah,-0x61f263f3(%rdx)
   180082d59:	0d 83 0d 82 0d       	or     $0xd820d83,%eax
   180082d5e:	a0 0d 98 0d 9d 0d 9f 	movabs 0x860d9f0d9d0d980d,%al
   180082d65:	0d 86 
   180082d67:	0d 88 0d 8c 0d       	or     $0xd8c0d88,%eax
   180082d6c:	8d 0d 9a 0d 8a 0d    	lea    0xd8a0d9a(%rip),%ecx        # 0x18d923b0c
   180082d72:	8b 0d 9b 0d 89 0d    	mov    0xd890d9b(%rip),%ecx        # 0x18d913b13
   180082d78:	95                   	xchg   %eax,%ebp
   180082d79:	0d 99 0d 97 0d       	or     $0xd970d99,%eax
   180082d7e:	96                   	xchg   %eax,%esi
   180082d7f:	0d 87 0d 85 0d       	or     $0xd850d87,%eax
   180082d84:	84 0d 93 0d 91 0d    	test   %cl,0xd910d93(%rip)        # 0x18d993b1d
   180082d8a:	8f                   	(bad)  
   180082d8b:	0d 90 0d 8e 0d       	or     $0xd8e0d90,%eax
   180082d90:	92                   	xchg   %eax,%edx
   180082d91:	0d 94 0d 6f 0d       	or     $0xd6f0d94,%eax
   180082d96:	6c                   	insb   (%dx),%es:(%rdi)
   180082d97:	0d 72 0d 70 0d       	or     $0xd700d72,%eax
   180082d9c:	71 0d                	jno    0x180082dab
   180082d9e:	6e                   	outsb  %ds:(%rsi),(%dx)
   180082d9f:	0d 64 0d 65 0d       	or     $0xd650d64,%eax
   180082da4:	66 0d 6a 0d          	or     $0xd6a,%ax
   180082da8:	69 0d 5b 0d 26 0d 35 	imul   $0xd390d35,0xd260d5b(%rip),%ecx        # 0x18d2e3b0d
   180082daf:	0d 39 0d 
   180082db2:	aa                   	stos   %al,%es:(%rdi)
   180082db3:	0d 29 0d 27 0d       	or     $0xd270d29,%eax
   180082db8:	a3 0d 6b 0d 3a 0d 62 	movabs %eax,0x3d0d620d3a0d6b0d
   180082dbf:	0d 3d 
   180082dc1:	0d 3e 0d 3f 0d       	or     $0xd3f0d3e,%eax
   180082dc6:	3c 0d                	cmp    $0xd,%al
   180082dc8:	56                   	push   %rsi
   180082dc9:	0d 55 0d 49 0d       	or     $0xd490d55,%eax
   180082dce:	4f 0d 53 0d 50 0d    	rex.WRXB or $0xd500d53,%rax
   180082dd4:	4e 0d 5a 0d 4d 0d    	rex.WRX or $0xd4d0d5a,%rax
   180082dda:	57                   	push   %rdi
   180082ddb:	0d 58 0d 59 0d       	or     $0xd590d58,%eax
   180082de0:	3b 0d 41 0d 4c 0d    	cmp    0xd4c0d41(%rip),%ecx        # 0x18d543b27
   180082de6:	47 0d 6d 0d 42 0d    	rex.RXB or $0xd420d6d,%eax
   180082dec:	43 0d 44 0d 45 0d    	rex.XB or $0xd450d44,%eax
   180082df2:	5c                   	pop    %rsp
   180082df3:	0d 5b 00 5c 00       	or     $0x5c005b,%eax
   180082df8:	6e                   	outsb  %ds:(%rsi),(%dx)
   180082df9:	00 6f 00             	add    %ch,0x0(%rdi)
   180082dfc:	5f                   	pop    %rdi
   180082dfd:	00 61 00             	add    %ah,0x0(%rcx)
   180082e00:	60                   	(bad)  
   180082e01:	00 70 00             	add    %dh,0x0(%rax)
   180082e04:	69 00 6a 00 62 00    	imul   $0x62006a,(%rax),%eax
   180082e0a:	71 00                	jno    0x180082e0c
   180082e0c:	6c                   	insb   (%dx),%es:(%rdi)
   180082e0d:	00 6b 00             	add    %ch,0x0(%rbx)
   180082e10:	68 00 67 00 5e       	push   $0x5e006700
   180082e15:	00 5d 00             	add    %bl,0x0(%rbp)
   180082e18:	6d                   	insl   (%dx),%es:(%rdi)
   180082e19:	00 63 00             	add    %ah,0x0(%rbx)
   180082e1c:	65 00 66 00          	add    %ah,%gs:0x0(%rsi)
   180082e20:	64 00 45 00          	add    %al,%fs:0x0(%rbp)
   180082e24:	27                   	(bad)  
   180082e25:	03 30                	add    (%rax),%esi
   180082e27:	03 2e                	add    (%rsi),%ebp
   180082e29:	03 29                	add    (%rcx),%ebp
   180082e2b:	03 34 03             	add    (%rbx,%rax,1),%esi
   180082e2e:	33 03                	xor    (%rbx),%eax
   180082e30:	2a 03                	sub    (%rbx),%al
   180082e32:	37                   	(bad)  
   180082e33:	03 36                	add    (%rsi),%esi
   180082e35:	03 35 03 02 00 2b    	add    0x2b000203(%rip),%esi        # 0x1ab08303e
   180082e3b:	03 2c 03             	add    (%rbx,%rax,1),%ebp
   180082e3e:	28 03                	sub    %al,(%rbx)
   180082e40:	06                   	(bad)  
   180082e41:	00 38                	add    %bh,(%rax)
   180082e43:	03 03                	add    (%rbx),%eax
   180082e45:	00 2d 03 01 00 31    	add    %ch,0x31000103(%rip)        # 0x1b1082f4e
   180082e4b:	03 32                	add    (%rdx),%esi
   180082e4d:	03 2f                	add    (%rdi),%ebp
   180082e4f:	03 3a                	add    (%rdx),%edi
   180082e51:	03 39                	add    (%rcx),%edi
   180082e53:	03 e2                	add    %edx,%esp
   180082e55:	00 1f                	add    %bl,(%rdi)
   180082e57:	03 22                	add    (%rdx),%esp
   180082e59:	03 21                	add    (%rcx),%esp
   180082e5b:	03 20                	add    (%rax),%esp
   180082e5d:	03 24 03             	add    (%rbx,%rax,1),%esp
   180082e60:	1c 03                	sbb    $0x3,%al
   180082e62:	1e                   	(bad)  
   180082e63:	03 6b 03             	add    0x3(%rbx),%ebp
   180082e66:	6e                   	outsb  %ds:(%rsi),(%dx)
   180082e67:	03 b0 0d 68 03 6d    	add    0x6d03680d(%rax),%esi
   180082e6d:	03 69 03             	add    0x3(%rcx),%ebp
   180082e70:	6a 03                	push   $0x3
   180082e72:	3b 03                	cmp    (%rbx),%eax
   180082e74:	1a 03                	sbb    (%rbx),%al
   180082e76:	1b 03                	sbb    (%rbx),%eax
   180082e78:	65 03 64 03 66       	add    %gs:0x66(%rbx,%rax,1),%esp
   180082e7d:	03 67 03             	add    0x3(%rdi),%esp
   180082e80:	4b 03 4c 03 19       	add    0x19(%r11,%r8,1),%rcx
   180082e85:	03 18                	add    (%rax),%ebx
   180082e87:	03 51 03             	add    0x3(%rcx),%edx
   180082e8a:	50                   	push   %rax
   180082e8b:	03 53 03             	add    0x3(%rbx),%edx
   180082e8e:	52                   	push   %rdx
   180082e8f:	03 c7                	add    %edi,%eax
   180082e91:	03 1d 03 54 03 55    	add    0x55035403(%rip),%ebx        # 0x1d50b829a
   180082e97:	03 49 03             	add    0x3(%rcx),%ecx
   180082e9a:	ae                   	scas   %es:(%rdi),%al
   180082e9b:	07                   	(bad)  
   180082e9c:	e9 07 46 03 47       	jmp    0x1c70b74a8
   180082ea1:	03 3f                	add    (%rdi),%edi
   180082ea3:	03 5b 03             	add    0x3(%rbx),%ebx
   180082ea6:	5a                   	pop    %rdx
   180082ea7:	03 59 03             	add    0x3(%rcx),%ebx
   180082eaa:	42 03 41 03          	rex.X add 0x3(%rcx),%eax
   180082eae:	b1 04                	mov    $0x4,%cl
   180082eb0:	5f                   	pop    %rdi
   180082eb1:	03 5d 03             	add    0x3(%rbp),%ebx
   180082eb4:	60                   	(bad)  
   180082eb5:	03 5e 03             	add    0x3(%rsi),%ebx
   180082eb8:	61                   	(bad)  
   180082eb9:	03 5c 03 62          	add    0x62(%rbx,%rax,1),%ebx
   180082ebd:	03 63 03             	add    0x3(%rbx),%esp
   180082ec0:	40 03 bf 06 3c 03 3e 	rex add 0x3e033c06(%rdi),%edi
   180082ec7:	03 3d 03 b4 04 58    	add    0x5804b403(%rip),%edi        # 0x1d80ce2d0
   180082ecd:	03 4d 03             	add    0x3(%rbp),%ecx
   180082ed0:	ad                   	lods   %ds:(%rsi),%eax
   180082ed1:	00 45 03             	add    %al,0x3(%rbp)
   180082ed4:	48 03 23             	add    (%rbx),%rsp
   180082ed7:	03 0a                	add    (%rdx),%ecx
   180082ed9:	00 05 00 09 00 04    	add    %al,0x4000900(%rip)        # 0x1840837df
   180082edf:	00 0b                	add    %cl,(%rbx)
   180082ee1:	00 07                	add    %al,(%rdi)
   180082ee3:	00 08                	add    %cl,(%rax)
   180082ee5:	00 16                	add    %dl,(%rsi)
   180082ee7:	00 0c 00             	add    %cl,(%rax,%rax,1)
   180082eea:	0d 00 b2 00 b3       	or     $0xb300b200,%eax
   180082eef:	00 56 03             	add    %dl,0x3(%rsi)
   180082ef2:	c0 08 c4             	rorb   $0xc4,(%rax)
   180082ef5:	08 c2                	or     %al,%dl
   180082ef7:	08 c3                	or     %al,%bl
   180082ef9:	08 b4 08 bc 08 b8 08 	or     %dh,0x8b808bc(%rax,%rcx,1)
   180082f00:	bd 08 be 08 e1       	mov    $0xe108be08,%ebp
   180082f05:	08 e0                	or     %ah,%al
   180082f07:	08 c1                	or     %al,%cl
   180082f09:	08 b6 08 b9 08 d6    	or     %dh,-0x29f746f8(%rsi)
   180082f0f:	08 d0                	or     %dl,%al
   180082f11:	08 bb 08 ba 08 d7    	or     %bh,-0x28f745f8(%rbx)
   180082f17:	08 d9                	or     %bl,%cl
   180082f19:	08 c5                	or     %al,%ch
   180082f1b:	08 c7                	or     %al,%bh
   180082f1d:	08 c6                	or     %al,%dh
   180082f1f:	08 c8                	or     %cl,%al
   180082f21:	08 f4                	or     %dh,%ah
   180082f23:	08 dd                	or     %bl,%ch
   180082f25:	08 f0                	or     %dh,%al
   180082f27:	00 dc                	add    %bl,%ah
   180082f29:	08 db                	or     %bl,%bl
   180082f2b:	08 da                	or     %bl,%dl
   180082f2d:	08 d1                	or     %dl,%cl
   180082f2f:	08 d2                	or     %dl,%dl
   180082f31:	08 d4                	or     %dl,%ah
   180082f33:	08 d5                	or     %dl,%ch
   180082f35:	08 d3                	or     %dl,%bl
   180082f37:	08 f5                	or     %dh,%ch
   180082f39:	00 ef                	add    %ch,%bh
   180082f3b:	00 f9                	add    %bh,%cl
   180082f3d:	00 fa                	add    %bh,%dl
   180082f3f:	00 b7 08 f2 00 e8    	add    %dh,-0x17ff0df8(%rdi)
   180082f45:	08 e6                	or     %ah,%dh
   180082f47:	08 e3                	or     %ah,%bl
   180082f49:	08 ec                	or     %ch,%ah
   180082f4b:	08 e9                	or     %ch,%cl
   180082f4d:	08 ed                	or     %ch,%ch
   180082f4f:	08 ee                	or     %ch,%dh
   180082f51:	08 e4                	or     %ah,%ah
   180082f53:	08 e5                	or     %ah,%ch
   180082f55:	08 e7                	or     %ah,%bh
   180082f57:	08 e2                	or     %ah,%dl
   180082f59:	08 ea                	or     %ch,%dl
   180082f5b:	08 eb                	or     %ch,%bl
   180082f5d:	08 f3                	or     %dh,%bl
   180082f5f:	00 f4                	add    %dh,%ah
   180082f61:	00 bf 08 ef 08 b3    	add    %bh,-0x4cf710f8(%rdi)
   180082f67:	08 f3                	or     %dh,%bl
   180082f69:	08 b5 08 d8 08 c9    	or     %dh,-0x36f727f8(%rbp)
   180082f6f:	08 de                	or     %bl,%dh
   180082f71:	08 82 00 83 00 81    	or     %al,-0x7eff7d00(%rdx)
   180082f77:	00 86 00 89 00 85    	add    %al,-0x7aff7700(%rsi)
   180082f7d:	00 84 00 df 08 f1 00 	add    %al,0xf108df(%rax,%rax,1)
   180082f84:	80 05 a4 05 2c 02 2b 	addb   $0x2b,0x22c05a4(%rip)        # 0x18234352f
   180082f8b:	02 c1                	add    %cl,%al
   180082f8d:	01 7f 05             	add    %edi,0x5(%rdi)
   180082f90:	bd 01 95 05 96       	mov    $0x96059501,%ebp
   180082f95:	05 bb 01 bc 01       	add    $0x1bc01bb,%eax
   180082f9a:	a8 05                	test   $0x5,%al
   180082f9c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082f9d:	05 a5 05 a6 05       	add    $0x5a605a5,%eax
   180082fa2:	7c 05                	jl     0x180082fa9
   180082fa4:	48 02 98 05 9d 05 99 	rex.W add -0x66fa62fb(%rax),%bl
   180082fab:	05 9a 05 9b 05       	add    $0x59b059a,%eax
   180082fb0:	9e                   	sahf   
   180082fb1:	05 9c 05 9f 05       	add    $0x59f059c,%eax
   180082fb6:	a0 05 a1 05 c0 01 a3 	movabs 0x8501a301c005a105,%al
   180082fbd:	01 85 
   180082fbf:	05 af 01 89 05       	add    $0x58901af,%eax
   180082fc4:	8e 05 8f 05 8d 05    	mov    0x58d058f(%rip),%es        # 0x185953559
   180082fca:	86 05 87 05 88 05    	xchg   %al,0x5880587(%rip)        # 0x185903557
   180082fd0:	8a 05 8b 05 8c 05    	mov    0x58c058b(%rip),%al        # 0x185943561
   180082fd6:	91                   	xchg   %eax,%ecx
   180082fd7:	05 77 05 a6 01       	add    $0x1a60577,%eax
   180082fdc:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082fdd:	01 a5 01 7d 05 7e    	add    %esp,0x7e057d01(%rbp)
   180082fe3:	05 7b 05 79 05       	add    $0x579057b,%eax
   180082fe8:	7a 05                	jp     0x180082fef
   180082fea:	b5 01                	mov    $0x1,%ch
   180082fec:	83 05 ad 01 84 05 93 	addl   $0xffffff93,0x58401ad(%rip)        # 0x1858c31a0
   180082ff3:	05 92 05 94 05       	add    $0x5940592,%eax
   180082ff8:	02 02                	add    (%rdx),%al
   180082ffa:	81 05 a8 01 82 05 cf 	addl   $0x1d001cf,0x58201a8(%rip)        # 0x1858a31ac
   180083001:	01 d0 01 
   180083004:	a9 01 aa 01 b8       	test   $0xb801aa01,%eax
   180083009:	01 ab 01 43 02 46    	add    %ebp,0x46024301(%rbx)
   18008300f:	02 45 02             	add    0x2(%rbp),%al
   180083012:	47 02 b9 01 a2 05 a3 	rex.RXB add -0x5cfa5dff(%r9),%r15b
   180083019:	05 b1 01 90 05       	add    $0x59001b1,%eax
   18008301e:	05 02 ae 01 78       	add    $0x7801ae02,%eax
   180083023:	05 01 02 b7 01       	add    $0x1b70201,%eax
   180083028:	44 02 e0             	add    %al,%r12b
   18008302b:	03 fe                	add    %esi,%edi
   18008302d:	03 f0                	add    %eax,%esi
   18008302f:	03 df                	add    %edi,%ebx
   180083031:	03 eb                	add    %ebx,%ebp
   180083033:	03 ee                	add    %esi,%ebp
   180083035:	03 e3                	add    %ebx,%esp
   180083037:	03 e2                	add    %edx,%esp
   180083039:	03 ed                	add    %ebp,%ebp
   18008303b:	03 e9                	add    %ecx,%ebp
   18008303d:	03 ec                	add    %esp,%ebp
   18008303f:	03 68 04             	add    0x4(%rax),%ebp
   180083042:	66 04 ef             	data16 add $0xef,%al
   180083045:	03 be 05 c0 05 c2    	add    -0x3dfa3ffb(%rsi),%edi
   18008304b:	05 c3 05 bf 05       	add    $0x5bf05c3,%eax
   180083050:	c1 05 e4 05 e7 05 f5 	roll   $0xf5,0x5e705e4(%rip)        # 0x185ef363b
   180083057:	05 e3 05 e5 05       	add    $0x5e505e3,%eax
   18008305c:	e8 05 f3 05 f0       	call   0x1700e2366
   180083061:	05 f1 05 ef 05       	add    $0x5ef05f1,%eax
   180083066:	f2 05 ec 05 eb 05    	repnz add $0x5eb05ec,%eax
   18008306c:	ea                   	(bad)  
   18008306d:	05 ed 05 ee 05       	add    $0x5ee05ed,%eax
   180083072:	e9 05 e6 05 e0       	jmp    0x1600e167c
   180083077:	05 c8 05 2a 06       	add    $0x62a05c8,%eax
   18008307c:	c5 05 e1 01          	vpsraw (%rcx),%ymm15,%ymm8
   180083080:	be 01 bf 01 53       	mov    $0x5301bf01,%esi
   180083085:	09 b2 01 b6 01 ac    	or     %esi,-0x53fe49ff(%rdx)
   18008308b:	01 ba 01 b0 01 21    	add    %edi,0x2101b001(%rdx)
   180083091:	06                   	(bad)  
   180083092:	24 06                	and    $0x6,%al
   180083094:	23 06                	and    (%rsi),%eax
   180083096:	20 06                	and    %al,(%rsi)
   180083098:	22 06                	and    (%rsi),%al
   18008309a:	26 06                	es (bad) 
   18008309c:	25 06 29 06 27       	and    $0x27062906,%eax
   1800830a1:	06                   	(bad)  
   1800830a2:	28 06                	sub    %al,(%rsi)
   1800830a4:	f4                   	hlt    
   1800830a5:	05 c4 05 e2 05       	add    $0x5e205c4,%eax
   1800830aa:	e1 05                	loope  0x1800830b1
   1800830ac:	ce                   	(bad)  
   1800830ad:	05 d1 05 d2 05       	add    $0x5d205d1,%eax
   1800830b2:	d0 05 cf 05 d3 05    	rolb   0x5d305cf(%rip)        # 0x185db3687
   1800830b8:	d7                   	xlat   %ds:(%rbx)
   1800830b9:	05 db 05 da 05       	add    $0x5da05db,%eax
   1800830be:	dc 05 d8 05 d9 05    	faddl  0x5d905d8(%rip)        # 0x185e1369c
   1800830c4:	d4                   	(bad)  
   1800830c5:	05 cb 05 cd 05       	add    $0x5cd05cb,%eax
   1800830ca:	c9                   	leave  
   1800830cb:	05 ca 05 cc 05       	add    $0x5cc05ca,%eax
   1800830d0:	d6                   	(bad)  
   1800830d1:	05 d5 05 de 05       	add    $0x5de05d5,%eax
   1800830d6:	df 05 dd 05 c7 05    	filds  0x5c705dd(%rip)        # 0x185cf36b9
   1800830dc:	bd 05 aa 05 c6       	mov    $0xc605aa05,%ebp
   1800830e1:	05 a9 05 01 04       	add    $0x40105a9,%eax
   1800830e6:	e4 03                	in     $0x3,%al
   1800830e8:	e6 03                	out    %al,$0x3
   1800830ea:	e5 03                	in     $0x3,%eax
   1800830ec:	e7 03                	out    %eax,$0x3
   1800830ee:	e8 03 69 04 03       	call   0x1830c99f6
   1800830f3:	04 02                	add    $0x2,%al
   1800830f5:	04 55                	add    $0x55,%al
   1800830f7:	09 56 09             	or     %edx,0x9(%rsi)
   1800830fa:	58                   	pop    %rax
   1800830fb:	09 57 09             	or     %edx,0x9(%rdi)
   1800830fe:	54                   	push   %rsp
   1800830ff:	09 52 09             	or     %edx,0x9(%rdx)
   180083102:	12 06                	adc    (%rsi),%al
   180083104:	1f                   	(bad)  
   180083105:	06                   	(bad)  
   180083106:	14 06                	adc    $0x6,%al
   180083108:	13 06                	adc    (%rsi),%eax
   18008310a:	f9                   	stc    
   18008310b:	01 3e                	add    %edi,(%rsi)
   18008310d:	02 3f                	add    (%rdi),%bh
   18008310f:	02 40 02             	add    0x2(%rax),%al
   180083112:	33 02                	xor    (%rdx),%eax
   180083114:	35 02 34 02 f7       	xor    $0xf7023402,%eax
   180083119:	01 f6                	add    %esi,%esi
   18008311b:	01 36                	add    %esi,(%rsi)
   18008311d:	02 2d 02 f8 01 1b    	add    0x1b01f802(%rip),%ch        # 0x19b0a2925
   180083123:	06                   	(bad)  
   180083124:	0f 06                	clts   
   180083126:	e6 01                	out    %al,$0x1
   180083128:	10 06                	adc    %al,(%rsi)
   18008312a:	42 02 af 0d e7 01 e9 	rex.X add -0x16fe18f3(%rdi),%bpl
   180083131:	01 ea                	add    %ebp,%edx
   180083133:	01 1a                	add    %ebx,(%rdx)
   180083135:	06                   	(bad)  
   180083136:	17                   	(bad)  
   180083137:	06                   	(bad)  
   180083138:	19 06                	sbb    %eax,(%rsi)
   18008313a:	18 06                	sbb    %al,(%rsi)
   18008313c:	16                   	(bad)  
   18008313d:	06                   	(bad)  
   18008313e:	41 02 3a             	add    (%r10),%dil
   180083141:	02 15 06 fa 01 2f    	add    0x2f01fa06(%rip),%dl        # 0x1af0a2b4d
   180083147:	02 2e                	add    (%rsi),%ch
   180083149:	02 30                	add    (%rax),%dh
   18008314b:	02 f7                	add    %bh,%dh
   18008314d:	05 37 02 f6 05       	add    $0x5f60237,%eax
   180083152:	39 02                	cmp    %eax,(%rdx)
   180083154:	38 02                	cmp    %al,(%rdx)
   180083156:	1e                   	(bad)  
   180083157:	06                   	(bad)  
   180083158:	3b 02                	cmp    (%rdx),%eax
   18008315a:	3d 02 e8 01 1c       	cmp    $0x1c01e802,%eax
   18008315f:	06                   	(bad)  
   180083160:	1d 06 3c 02 59       	sbb    $0x59023c06,%eax
   180083165:	09 31                	or     %esi,(%rcx)
   180083167:	02 2a                	add    (%rdx),%ch
   180083169:	02 08                	add    (%rax),%cl
   18008316b:	06                   	(bad)  
   18008316c:	0e                   	(bad)  
   18008316d:	02 0f                	add    (%rdi),%cl
   18008316f:	02 10                	add    (%rax),%dl
   180083171:	02 65 04             	add    0x4(%rbp),%ah
   180083174:	34 04                	xor    $0x4,%al
   180083176:	33 04 4d 04 4e 04 4f 	xor    0x4f044e04(,%rcx,2),%eax
   18008317d:	04 39                	add    $0x39,%al
   18008317f:	04 50                	add    $0x50,%al
   180083181:	04 06                	add    $0x6,%al
   180083183:	04 3f                	add    $0x3f,%al
   180083185:	04 49                	add    $0x49,%al
   180083187:	04 63                	add    $0x63,%al
   180083189:	04 4a                	add    $0x4a,%al
   18008318b:	04 43                	add    $0x43,%al
   18008318d:	04 48                	add    $0x48,%al
   18008318f:	04 41                	add    $0x41,%al
   180083191:	04 44                	add    $0x44,%al
   180083193:	04 45                	add    $0x45,%al
   180083195:	04 42                	add    $0x42,%al
   180083197:	04 46                	add    $0x46,%al
   180083199:	04 47                	add    $0x47,%al
   18008319b:	04 40                	add    $0x40,%al
   18008319d:	04 60                	add    $0x60,%al
   18008319f:	04 64                	add    $0x64,%al
   1800831a1:	04 5d                	add    $0x5d,%al
   1800831a3:	04 5c                	add    $0x5c,%al
   1800831a5:	04 5e                	add    $0x5e,%al
   1800831a7:	04 5a                	add    $0x5a,%al
   1800831a9:	04 5b                	add    $0x5b,%al
   1800831ab:	04 67                	add    $0x67,%al
   1800831ad:	04 38                	add    $0x38,%al
   1800831af:	04 61                	add    $0x61,%al
   1800831b1:	04 62                	add    $0x62,%al
   1800831b3:	04 3c                	add    $0x3c,%al
   1800831b5:	04 3a                	add    $0x3a,%al
   1800831b7:	04 3d                	add    $0x3d,%al
   1800831b9:	04 52                	add    $0x52,%al
   1800831bb:	04 54                	add    $0x54,%al
   1800831bd:	04 3e                	add    $0x3e,%al
   1800831bf:	04 5f                	add    $0x5f,%al
   1800831c1:	04 08                	add    $0x8,%al
   1800831c3:	04 07                	add    $0x7,%al
   1800831c5:	04 3b                	add    $0x3b,%al
   1800831c7:	04 59                	add    $0x59,%al
   1800831c9:	04 56                	add    $0x56,%al
   1800831cb:	04 55                	add    $0x55,%al
   1800831cd:	04 57                	add    $0x57,%al
   1800831cf:	04 51                	add    $0x51,%al
   1800831d1:	04 53                	add    $0x53,%al
   1800831d3:	04 58                	add    $0x58,%al
   1800831d5:	04 4c                	add    $0x4c,%al
   1800831d7:	04 0b                	add    $0xb,%al
   1800831d9:	04 0a                	add    $0xa,%al
   1800831db:	04 4b                	add    $0x4b,%al
   1800831dd:	04 09                	add    $0x9,%al
   1800831df:	04 0c                	add    $0xc,%al
   1800831e1:	04 0d                	add    $0xd,%al
   1800831e3:	04 b1                	add    $0xb1,%al
   1800831e5:	05 b3 05 b2 05       	add    $0x5b205b3,%eax
   1800831ea:	74 05                	je     0x1800831f1
   1800831ec:	b0 05                	mov    $0x5,%al
   1800831ee:	af                   	scas   %es:(%rdi),%eax
   1800831ef:	05 b5 05 b6 05       	add    $0x5b605b5,%eax
   1800831f4:	b4 05                	mov    $0x5,%ah
   1800831f6:	ae                   	scas   %es:(%rdi),%al
   1800831f7:	05 11 06 ac 05       	add    $0x5ac0611,%eax
   1800831fc:	b7 05                	mov    $0x5,%bh
   1800831fe:	ad                   	lods   %ds:(%rsi),%eax
   1800831ff:	05 75 05 76 05       	add    $0x5760575,%eax
   180083204:	97                   	xchg   %eax,%edi
   180083205:	05 a4 01 ab 05       	add    $0x5ab01a4,%eax
   18008320a:	b8 05 b9 05 ba       	mov    $0xba05b905,%eax
   18008320f:	05 bb 05 bc 05       	add    $0x5bc05bb,%eax
   180083214:	07                   	(bad)  
   180083215:	06                   	(bad)  
   180083216:	b3 01                	mov    $0x1,%bl
   180083218:	b4 01                	mov    $0x1,%ah
   18008321a:	ea                   	(bad)  
   18008321b:	03 e1                	add    %ecx,%esp
   18008321d:	03 fd                	add    %ebp,%edi
   18008321f:	03 f1                	add    %ecx,%esi
   180083221:	03 ff                	add    %edi,%edi
   180083223:	05 fe 05 0b 06       	add    $0x60b05fe,%eax
   180083228:	0e                   	(bad)  
   180083229:	06                   	(bad)  
   18008322a:	fc                   	cld    
   18008322b:	05 fd 05 fb 05       	add    $0x5fb05fd,%eax
   180083230:	01 06                	add    %eax,(%rsi)
   180083232:	02 06                	add    (%rsi),%al
   180083234:	00 06                	add    %al,(%rsi)
   180083236:	32 02                	xor    (%rdx),%al
   180083238:	29 02                	sub    %eax,(%rdx)
   18008323a:	28 02                	sub    %al,(%rdx)
   18008323c:	27                   	(bad)  
   18008323d:	02 22                	add    (%rdx),%ah
   18008323f:	02 1f                	add    (%rdi),%bl
   180083241:	02 26                	add    (%rsi),%ah
   180083243:	02 25 02 1b 02 21    	add    0x21021b02(%rip),%ah        # 0x1a10a4d4b
   180083249:	02 1a                	add    (%rdx),%bl
   18008324b:	02 23                	add    (%rbx),%ah
   18008324d:	02 1d 02 1c 02 24    	add    0x24021c02(%rip),%bl        # 0x1a40a4e55
   180083253:	02 1e                	add    (%rsi),%bl
   180083255:	02 20                	add    (%rax),%ah
   180083257:	02 0c 06             	add    (%rsi,%rax,1),%cl
   18008325a:	fa                   	cli    
   18008325b:	05 fd 01 fc 01       	add    $0x1fc01fd,%eax
   180083260:	0d 06 12 02 11       	or     $0x11021206,%eax
   180083265:	02 13                	add    (%rbx),%dl
   180083267:	02 14 02             	add    (%rdx,%rax,1),%dl
   18008326a:	04 06                	add    $0x6,%al
   18008326c:	03 06                	add    (%rsi),%eax
   18008326e:	03 02                	add    (%rdx),%eax
   180083270:	16                   	(bad)  
   180083271:	02 fe                	add    %dh,%bh
   180083273:	01 19                	add    %ebx,(%rcx)
   180083275:	02 ff                	add    %bh,%bh
   180083277:	01 09                	add    %ecx,(%rcx)
   180083279:	06                   	(bad)  
   18008327a:	17                   	(bad)  
   18008327b:	02 09                	add    (%rcx),%cl
   18008327d:	02 08                	add    (%rax),%cl
   18008327f:	02 06                	add    (%rsi),%al
   180083281:	06                   	(bad)  
   180083282:	06                   	(bad)  
   180083283:	02 07                	add    (%rdi),%al
   180083285:	02 0b                	add    (%rbx),%cl
   180083287:	02 0c 02             	add    (%rdx,%rax,1),%cl
   18008328a:	0d 02 04 02 0a       	or     $0xa020402,%eax
   18008328f:	02 0a                	add    (%rdx),%cl
   180083291:	06                   	(bad)  
   180083292:	05 06 00 02 15       	add    $0x15020006,%eax
   180083297:	02 18                	add    (%rax),%bl
   180083299:	02 fb                	add    %bl,%bh
   18008329b:	01 10                	add    %edx,(%rax)
   18008329d:	04 37                	add    $0x37,%al
   18008329f:	04 12                	add    $0x12,%al
   1800832a1:	04 35                	add    $0x35,%al
   1800832a3:	04 30                	add    $0x30,%al
   1800832a5:	04 18                	add    $0x18,%al
   1800832a7:	04 31                	add    $0x31,%al
   1800832a9:	04 14                	add    $0x14,%al
   1800832ab:	04 13                	add    $0x13,%al
   1800832ad:	04 11                	add    $0x11,%al
   1800832af:	04 ff                	add    $0xff,%al
   1800832b1:	03 0e                	add    (%rsi),%ecx
   1800832b3:	04 0f                	add    $0xf,%al
   1800832b5:	04 36                	add    $0x36,%al
   1800832b7:	04 26                	add    $0x26,%al
   1800832b9:	04 2a                	add    $0x2a,%al
   1800832bb:	04 2f                	add    $0x2f,%al
   1800832bd:	04 24                	add    $0x24,%al
   1800832bf:	04 2d                	add    $0x2d,%al
   1800832c1:	04 2b                	add    $0x2b,%al
   1800832c3:	04 25                	add    $0x25,%al
   1800832c5:	04 2e                	add    $0x2e,%al
   1800832c7:	04 28                	add    $0x28,%al
   1800832c9:	04 27                	add    $0x27,%al
   1800832cb:	04 29                	add    $0x29,%al
   1800832cd:	04 2c                	add    $0x2c,%al
   1800832cf:	04 15                	add    $0x15,%al
   1800832d1:	04 16                	add    $0x16,%al
   1800832d3:	04 17                	add    $0x17,%al
   1800832d5:	04 1b                	add    $0x1b,%al
   1800832d7:	04 23                	add    $0x23,%al
   1800832d9:	04 1e                	add    $0x1e,%al
   1800832db:	04 19                	add    $0x19,%al
   1800832dd:	04 20                	add    $0x20,%al
   1800832df:	04 21                	add    $0x21,%al
   1800832e1:	04 22                	add    $0x22,%al
   1800832e3:	04 1a                	add    $0x1a,%al
   1800832e5:	04 1d                	add    $0x1d,%al
   1800832e7:	04 1c                	add    $0x1c,%al
   1800832e9:	04 1f                	add    $0x1f,%al
   1800832eb:	04 32                	add    $0x32,%al
   1800832ed:	04 10                	add    $0x10,%al
   1800832ef:	0a 0f                	or     (%rdi),%cl
   1800832f1:	0a 16                	or     (%rsi),%dl
   1800832f3:	0a f3                	or     %bl,%dh
   1800832f5:	01 eb                	add    %ebp,%ebx
   1800832f7:	0a ed                	or     %ch,%ch
   1800832f9:	0a f3                	or     %bl,%dh
   1800832fb:	0a ee                	or     %dh,%ch
   1800832fd:	0a ef                	or     %bh,%ch
   1800832ff:	0a f0                	or     %al,%dh
   180083301:	0a f2                	or     %dl,%dh
   180083303:	0a f1                	or     %cl,%dh
   180083305:	0a 4e 0b             	or     0xb(%rsi),%cl
   180083308:	4a 0b 49 0b          	rex.WX or 0xb(%rcx),%rcx
   18008330c:	4c 0b 48 0b          	or     0xb(%rax),%r9
   180083310:	4d 0b 4b 0b          	or     0xb(%r11),%r9
   180083314:	67 0a 17             	or     (%edi),%dl
   180083317:	0a 4e 0a             	or     0xa(%rsi),%cl
   18008331a:	0c 0a                	or     $0xa,%al
   18008331c:	0d 0a 18 0a a2       	or     $0xa20a180a,%eax
   180083321:	0b a0 0b a1 0b 68    	or     0x680ba10b(%rax),%esp
   180083327:	0a 1f                	or     (%rdi),%bl
   180083329:	0a 33                	or     (%rbx),%dh
   18008332b:	0a 1e                	or     (%rsi),%bl
   18008332d:	0a 20                	or     (%rax),%ah
   18008332f:	0a 28                	or     (%rax),%ch
   180083331:	0a 21                	or     (%rcx),%ah
   180083333:	0a 1a                	or     (%rdx),%bl
   180083335:	0a 23                	or     (%rbx),%ah
   180083337:	0a 22                	or     (%rdx),%ah
   180083339:	0a 30                	or     (%rax),%dh
   18008333b:	0a 2d 0a 2c 0a 2f    	or     0x2f0a2c0a(%rip),%ch        # 0x1af125f4b
   180083341:	0a 2e                	or     (%rsi),%ch
   180083343:	0a 2b                	or     (%rbx),%ch
   180083345:	0a 1b                	or     (%rbx),%bl
   180083347:	0a 1c 0a             	or     (%rdx,%rcx,1),%bl
   18008334a:	1d 0a 32 0a 31       	sbb    $0x310a320a,%eax
   18008334f:	0a 24 0a             	or     (%rdx,%rcx,1),%ah
   180083352:	19 0a                	sbb    %ecx,(%rdx)
   180083354:	2a 0a                	sub    (%rdx),%cl
   180083356:	29 0a                	sub    %ecx,(%rdx)
   180083358:	25 0a 27 0a 34       	and    $0x340a270a,%eax
   18008335d:	0a 26                	or     (%rsi),%ah
   18008335f:	0a 51 0a             	or     0xa(%rcx),%dl
   180083362:	4f 0b 06             	rex.WRXB or (%r14),%r8
   180083365:	0a 05 0a 02 0a 31    	or     0x310a020a(%rip),%al        # 0x1b1123575
   18008336b:	0b 53 0a             	or     0xa(%rbx),%edx
   18008336e:	52                   	push   %rdx
   18008336f:	0a 54 0a 55          	or     0x55(%rdx,%rcx,1),%dl
   180083373:	0a 5e 0a             	or     0xa(%rsi),%bl
   180083376:	56                   	push   %rsi
   180083377:	0a 5c 0a 58          	or     0x58(%rdx,%rcx,1),%bl
   18008337b:	0a 57 0a             	or     0xa(%rdi),%dl
   18008337e:	5d                   	pop    %rbp
   18008337f:	0a 63 0a             	or     0xa(%rbx),%ah
   180083382:	59                   	pop    %rcx
   180083383:	0a 64 0a 60          	or     0x60(%rdx,%rcx,1),%ah
   180083387:	0a 5a 0a             	or     0xa(%rdx),%bl
   18008338a:	5b                   	pop    %rbx
   18008338b:	0a 61 0a             	or     0xa(%rcx),%ah
   18008338e:	5f                   	pop    %rdi
   18008338f:	0a 62 0a             	or     0xa(%rdx),%ah
   180083392:	65 0a 07             	or     %gs:(%rdi),%al
   180083395:	0a ba 0b bf 0b bc    	or     -0x43f440f5(%rdx),%bh
   18008339b:	0b bd 0b bb 0b be    	or     -0x41f444f5(%rbp),%edi
   1800833a1:	0b 0a                	or     (%rdx),%ecx
   1800833a3:	0a 9e 0b 01 0a 9f    	or     -0x60f5fef5(%rsi),%bl
   1800833a9:	0b d6                	or     %esi,%edx
   1800833ab:	0b 39                	or     (%rcx),%edi
   1800833ad:	0a 3f                	or     (%rdi),%bh
   1800833af:	0b 3a                	or     (%rdx),%edi
   1800833b1:	0a af 0b ae 0b ad    	or     -0x52f451f5(%rdi),%ch
   1800833b7:	0b 3c 0a             	or     (%rdx,%rcx,1),%edi
   1800833ba:	69 0a 35 0a 34 0b    	imul   $0xb340a35,(%rdx),%ecx
   1800833c0:	36 0a 50 0a          	ss or  0xa(%rax),%dl
   1800833c4:	37                   	(bad)  
   1800833c5:	0a 38                	or     (%rax),%bh
   1800833c7:	0a 4c 0a 45          	or     0x45(%rdx,%rcx,1),%cl
   1800833cb:	0a 46 0a             	or     0xa(%rsi),%al
   1800833ce:	3f                   	(bad)  
   1800833cf:	0a 3d 0a 49 0a 6e    	or     0x6e0a490a(%rip),%bh        # 0x1ee127cdf
   1800833d5:	0c 41                	or     $0x41,%al
   1800833d7:	0a 48 0a             	or     0xa(%rax),%cl
   1800833da:	b7 0b                	mov    $0xb,%bh
   1800833dc:	4d 0a 44 0a 7c       	rex.WRB or 0x7c(%r10,%rcx,1),%r8b
   1800833e1:	0c b2                	or     $0xb2,%al
   1800833e3:	0b 12                	or     (%rdx),%edx
   1800833e5:	0a 3e                	or     (%rsi),%bh
   1800833e7:	0a b6 0b b5 0b b4    	or     -0x4bf44af5(%rsi),%dh
   1800833ed:	0b 13                	or     (%rbx),%edx
   1800833ef:	0a 42 0a             	or     0xa(%rdx),%al
   1800833f2:	43 0a 40 0a          	rex.XB or 0xa(%r8),%al
   1800833f6:	3b 0a                	cmp    (%rdx),%ecx
   1800833f8:	b1 0b                	mov    $0xb,%cl
   1800833fa:	47 0a b0 0b c1 0b c0 	rex.RXB or -0x3ff43ef5(%r8),%r14b
   180083401:	0b c3                	or     %ebx,%eax
   180083403:	0b c9                	or     %ecx,%ecx
   180083405:	0b c8                	or     %eax,%ecx
   180083407:	0b d0                	or     %eax,%edx
   180083409:	0b ce                	or     %esi,%ecx
   18008340b:	0b cb                	or     %ebx,%ecx
   18008340d:	0b c2                	or     %edx,%eax
   18008340f:	0b c4                	or     %esp,%eax
   180083411:	0b c5                	or     %ebp,%eax
   180083413:	0b cd                	or     %ebp,%ecx
   180083415:	0b cf                	or     %edi,%ecx
   180083417:	0b cc                	or     %esp,%ecx
   180083419:	0b c6                	or     %esi,%eax
   18008341b:	0b c7                	or     %edi,%eax
   18008341d:	0b ca                	or     %edx,%ecx
   18008341f:	0b b9 0b 4a 0a 4b    	or     0x4b0a4a0b(%rcx),%edi
   180083425:	0a 0b                	or     (%rbx),%cl
   180083427:	0b 0b                	or     (%rbx),%ecx
   180083429:	0a f1                	or     %cl,%dh
   18008342b:	01 f2                	add    %esi,%edx
   18008342d:	01 0e                	add    %ecx,(%rsi)
   18008342f:	0a 66 0a             	or     0xa(%rsi),%ah
   180083432:	0c 0b                	or     $0xb,%al
   180083434:	ef                   	out    %eax,(%dx)
   180083435:	0d f0 0d 6f 0c       	or     $0xc6f0df0,%eax
   18008343a:	72 0c                	jb     0x180083448
   18008343c:	f1                   	int1   
   18008343d:	0d 70 0c 71 0c       	or     $0xc710c70,%eax
   180083442:	4f 0a f3             	rex.WRXB or %r11b,%r14b
   180083445:	0d f2 0d 73 0c       	or     $0xc730df2,%eax
   18008344a:	7d 0a                	jge    0x180083456
   18008344c:	d0 0a                	rorb   (%rdx)
   18008344e:	ab                   	stos   %eax,%es:(%rdi)
   18008344f:	0a ae 0a a7 0a b1    	or     -0x4ef558f6(%rsi),%ch
   180083455:	0a 70 0a             	or     0xa(%rax),%dh
   180083458:	6f                   	outsl  %ds:(%rsi),(%dx)
   180083459:	0a ea                	or     %dl,%ch
   18008345b:	0a ef                	or     %bh,%ch
   18008345d:	01 49 02             	add    %ecx,0x2(%rcx)
   180083460:	ee                   	out    %al,(%dx)
   180083461:	01 b3 0a b4 0a 0f    	add    %esi,0xf0ab40a(%rbx)
   180083467:	0b 10                	or     (%rax),%edx
   180083469:	0b 11                	or     (%rcx),%edx
   18008346b:	0b 12                	or     (%rdx),%edx
   18008346d:	0b 13                	or     (%rbx),%edx
   18008346f:	0b f4                	or     %esp,%esi
   180083471:	01 f0                	add    %esi,%eax
   180083473:	01 cb                	add    %ecx,%ebx
   180083475:	0a b2 0a f5 01 c3    	or     -0x3cfe0af6(%rdx),%dh
   18008347b:	0a c2                	or     %dl,%al
   18008347d:	0a c1                	or     %cl,%al
   18008347f:	0a be 0a 71 0a 9d    	or     -0x62f58ef6(%rsi),%bh
   180083485:	0a 9e 0a 9f 0a a0    	or     -0x5ff560f6(%rsi),%bl
   18008348b:	0a d3                	or     %bl,%dl
   18008348d:	01 d2                	add    %edx,%edx
   18008348f:	01 a2 0a a3 0a a1    	add    %esp,-0x5ef55cf6(%rdx)
   180083495:	0a a4 0a a6 0a a8 0a 	or     0xaa80aa6(%rdx,%rcx,1),%ah
   18008349c:	a9 0a aa 0a cd       	test   $0xcd0aaa0a,%eax
   1800834a1:	01 b0 0a af 0a ac    	add    %esi,-0x53f550f6(%rax)
   1800834a7:	0a a5 0a e6 0a dd    	or     -0x22f519f6(%rbp),%ah
   1800834ad:	01 dc                	add    %ebx,%esp
   1800834af:	01 e9                	add    %ebp,%ecx
   1800834b1:	0a a8 0b 8a 0b 98    	or     -0x67f475f5(%rax),%ch
   1800834b7:	0b 6e 0a             	or     0xa(%rsi),%ebp
   1800834ba:	e7 0a                	out    %eax,$0xa
   1800834bc:	e8 0a b3 0b d5       	call   0x15513e7cb
   1800834c1:	0a d6                	or     %dh,%dl
   1800834c3:	0a d8                	or     %al,%bl
   1800834c5:	0a d7                	or     %bh,%dl
   1800834c7:	0a db                	or     %bl,%bl
   1800834c9:	0a da                	or     %dl,%bl
   1800834cb:	0a e1                	or     %cl,%ah
   1800834cd:	0a de                	or     %dh,%bl
   1800834cf:	0a d9                	or     %cl,%bl
   1800834d1:	0a e0                	or     %al,%ah
   1800834d3:	0a df                	or     %bh,%bl
   1800834d5:	0a dd                	or     %ch,%bl
   1800834d7:	0a dc                	or     %ah,%bl
   1800834d9:	0a d4                	or     %ah,%dl
   1800834db:	0a e2                	or     %dl,%ah
   1800834dd:	0a f7                	or     %bh,%dh
   1800834df:	0b e3                	or     %ebx,%esp
   1800834e1:	0a e4                	or     %ah,%ah
   1800834e3:	0a e5                	or     %ch,%ah
   1800834e5:	0a d3                	or     %bl,%dl
   1800834e7:	0a e3                	or     %bl,%ah
   1800834e9:	01 d1                	add    %edx,%ecx
   1800834eb:	0a d2                	or     %dl,%dl
   1800834ed:	0a ce                	or     %dh,%cl
   1800834ef:	0a 0d 0b 0e 0b 00    	or     0xb0e0b(%rip),%cl        # 0x180134300
   1800834f5:	0b 03                	or     (%rbx),%eax
   1800834f7:	0b fe                	or     %esi,%edi
   1800834f9:	0a fc                	or     %ah,%bh
   1800834fb:	0a f7                	or     %bh,%dh
   1800834fd:	0a fb                	or     %bl,%bh
   1800834ff:	0a f5                	or     %ch,%dh
   180083501:	0a f9                	or     %cl,%bh
   180083503:	0a f6                	or     %dh,%dh
   180083505:	0a f4                	or     %ah,%dh
   180083507:	0a fa                	or     %dl,%bh
   180083509:	0a f8                	or     %al,%bh
   18008350b:	0a 02                	or     (%rdx),%al
   18008350d:	0b 04 0b             	or     (%rbx,%rcx,1),%eax
   180083510:	ff 0a                	decl   (%rdx)
   180083512:	01 0b                	add    %ecx,(%rbx)
   180083514:	fd                   	std    
   180083515:	0a bc 0a bd 0a b9 0a 	or     0xab90abd(%rdx,%rcx,1),%bh
   18008351c:	bb 0a 06 0b 05       	mov    $0x50b060a,%ebx
   180083521:	0b 08                	or     (%rax),%ecx
   180083523:	0b 07                	or     (%rdi),%eax
   180083525:	0b c0                	or     %eax,%eax
   180083527:	0a bf 0a ca 0a c4    	or     -0x3bf535f6(%rdi),%bh
   18008352d:	0a c6                	or     %dh,%al
   18008352f:	0a c9                	or     %cl,%cl
   180083531:	0a c5                	or     %ch,%al
   180083533:	0a c7                	or     %bh,%al
   180083535:	0a c8                	or     %al,%cl
   180083537:	0a cd                	or     %ch,%cl
   180083539:	0a 0a                	or     (%rdx),%cl
   18008353b:	0b b8 0a 72 0a 09    	or     0x90a720a(%rax),%edi
   180083541:	0b b7 0a b6 0a ba    	or     -0x45f549f6(%rdi),%esi
   180083547:	0a f4                	or     %ah,%dh
   180083549:	0b f5                	or     %ebp,%esi
   18008354b:	0b f3                	or     %ebx,%esi
   18008354d:	0b f6                	or     %esi,%esi
   18008354f:	0b b5 0a cc 0a ad    	or     -0x52f533f6(%rbp),%esi
   180083555:	0a cf                	or     %bh,%cl
   180083557:	0a 76 0a             	or     0xa(%rsi),%dh
   18008355a:	84 0a                	test   %cl,(%rdx)
   18008355c:	83 0a 85             	orl    $0xffffff85,(%rdx)
   18008355f:	0a 82 0a 79 0a 78    	or     0x780a790a(%rdx),%al
   180083565:	0a cb                	or     %bl,%cl
   180083567:	01 7c 0a 77          	add    %edi,0x77(%rdx,%rcx,1)
   18008356b:	0a 7a 0a             	or     0xa(%rdx),%bh
   18008356e:	75 0a                	jne    0x18008357a
   180083570:	7b 0a                	jnp    0x18008357c
   180083572:	c2 01 f7             	ret    $0xf701
   180083575:	03 f8                	add    %eax,%edi
   180083577:	03 f5                	add    %ebp,%esi
   180083579:	03 f3                	add    %ebx,%esi
   18008357b:	03 53 05             	add    0x5(%rbx),%edx
   18008357e:	fb                   	sti    
   18008357f:	03 fc                	add    %esp,%edi
   180083581:	03 f6                	add    %esi,%esi
   180083583:	03 f9                	add    %ecx,%edi
   180083585:	03 05 04 58 05 57    	add    0x57055804(%rip),%eax        # 0x1d70d8d8f
   18008358b:	05 00 04 4b 05       	add    $0x54b0400,%eax
   180083590:	4a 05 6c 05 6d 05    	rex.WX add $0x56d056c,%rax
   180083596:	6e                   	outsb  %ds:(%rsi),(%dx)
   180083597:	05 6f 05 71 05       	add    $0x571056f,%eax
   18008359c:	73 05                	jae    0x1800835a3
   18008359e:	70 05                	jo     0x1800835a5
   1800835a0:	72 05                	jb     0x1800835a7
   1800835a2:	50                   	push   %rax
   1800835a3:	05 51 05 49 05       	add    $0x5490551,%eax
   1800835a8:	4d 05 4e 05 4c 05    	rex.WRB add $0x54c054e,%rax
   1800835ae:	69 05 52 05 4f 05 f2 	imul   $0x56503f2,0x54f0552(%rip),%eax        # 0x185573b0a
   1800835b5:	03 65 05 
   1800835b8:	56                   	push   %rsi
   1800835b9:	05 55 05 6b 05       	add    $0x56b0555,%eax
   1800835be:	6a 05                	push   $0x5
   1800835c0:	66 05 67 05          	add    $0x567,%ax
   1800835c4:	54                   	push   %rsp
   1800835c5:	05 63 05 68 05       	add    $0x5680563,%eax
   1800835ca:	64 05 62 05 61 05    	fs add $0x5610562,%eax
   1800835d0:	60                   	(bad)  
   1800835d1:	05 5f 05 5e 05       	add    $0x55e055f,%eax
   1800835d6:	5c                   	pop    %rsp
   1800835d7:	05 5a 05 fa 03       	add    $0x3fa055a,%eax
   1800835dc:	5d                   	pop    %rbp
   1800835dd:	05 5b 05 59 05       	add    $0x559055b,%eax
   1800835e2:	fa                   	cli    
   1800835e3:	0d 04 04 ec 0a       	or     $0xaec0404,%eax
   1800835e8:	f0 0b f1             	lock or %ecx,%esi
   1800835eb:	0b ed                	or     %ebp,%ebp
   1800835ed:	0b ee                	or     %esi,%ebp
   1800835ef:	0b ec                	or     %esp,%ebp
   1800835f1:	0b eb                	or     %ebx,%ebp
   1800835f3:	0b ea                	or     %edx,%ebp
   1800835f5:	0b ef                	or     %edi,%ebp
   1800835f7:	0b e9                	or     %ecx,%ebp
   1800835f9:	0b e6                	or     %esi,%esp
   1800835fb:	0b e5                	or     %ebp,%esp
   1800835fd:	0b e8                	or     %eax,%ebp
   1800835ff:	0b a4 0b a5 0b 17 0b 	or     0xb170ba5(%rbx,%rcx,1),%esp
   180083606:	60                   	(bad)  
   180083607:	0b 6b 0a             	or     0xa(%rbx),%ebp
   18008360a:	6a 0a                	push   $0xa
   18008360c:	6c                   	insb   (%dx),%es:(%rdi)
   18008360d:	0a a7 0b a6 0b 16    	or     0x160ba60b(%rdi),%ah
   180083613:	0b 15 0b 14 0b ab    	or     -0x54f4ebf5(%rip),%edx        # 0x12b134a24
   180083619:	0b aa 0b ac 0b a9    	or     -0x56f453f5(%rdx),%ebp
   18008361f:	0b 74 0a 73          	or     0x73(%rdx,%rcx,1),%esi
   180083623:	0a e0                	or     %al,%ah
   180083625:	0b dd                	or     %ebp,%ebx
   180083627:	0b de                	or     %esi,%ebx
   180083629:	0b df                	or     %edi,%ebx
   18008362b:	0b e2                	or     %edx,%esp
   18008362d:	0b e1                	or     %ecx,%esp
   18008362f:	0b e3                	or     %ebx,%esp
   180083631:	0b da                	or     %edx,%ebx
   180083633:	0b dc                	or     %esp,%ebx
   180083635:	0b db                	or     %ebx,%ebx
   180083637:	0b e4                	or     %esp,%esp
   180083639:	0b 69 0b             	or     0xb(%rcx),%ebp
   18008363c:	99                   	cltd   
   18008363d:	0b 9a 0b 6c 0b 68    	or     0x680b6c0b(%rdx),%ebx
   180083643:	0b 6e 0b             	or     0xb(%rsi),%ebp
   180083646:	71 0b                	jno    0x180083653
   180083648:	74 0b                	je     0x180083655
   18008364a:	75 0b                	jne    0x180083657
   18008364c:	70 0b                	jo     0x180083659
   18008364e:	6f                   	outsl  %ds:(%rsi),(%dx)
   18008364f:	0b 72 0b             	or     0xb(%rdx),%esi
   180083652:	80 0b 73             	orb    $0x73,(%rbx)
   180083655:	0b a3 0b 81 0b 82    	or     -0x7df47ef5(%rbx),%esp
   18008365b:	0b 83 0b 7a 0b 79    	or     0x790b7a0b(%rbx),%eax
   180083661:	0b 78 0b             	or     0xb(%rax),%edi
   180083664:	77 0b                	ja     0x180083671
   180083666:	d9 0b                	(bad)  (%rbx)
   180083668:	6d                   	insl   (%dx),%es:(%rdi)
   180083669:	0b 7b 0b             	or     0xb(%rbx),%edi
   18008366c:	7d 0b                	jge    0x180083679
   18008366e:	7c 0b                	jl     0x18008367b
   180083670:	7f 0b                	jg     0x18008367d
   180083672:	7e 0b                	jle    0x18008367f
   180083674:	6a 0b                	push   $0xb
   180083676:	76 0b                	jbe    0x180083683
   180083678:	88 0b                	mov    %cl,(%rbx)
   18008367a:	8d 0b                	lea    (%rbx),%ecx
   18008367c:	8e 0b                	mov    (%rbx),%cs
   18008367e:	89 0b                	mov    %ecx,(%rbx)
   180083680:	8c 0b                	mov    %cs,(%rbx)
   180083682:	90                   	nop
   180083683:	0b 93 0b 91 0b 96    	or     -0x69f46ef5(%rbx),%edx
   180083689:	0b 97 0b 92 0b 8f    	or     -0x70f46df5(%rdi),%edx
   18008368f:	0b 95 0b 94 0b 8b    	or     -0x74f46bf5(%rbp),%edx
   180083695:	0b 6b 0b             	or     0xb(%rbx),%ebp
   180083698:	87 0b                	xchg   %ecx,(%rbx)
   18008369a:	86 0b                	xchg   %cl,(%rbx)
   18008369c:	85 0b                	test   %ecx,(%rbx)
   18008369e:	84 0b                	test   %cl,(%rbx)
   1800836a0:	29 0b                	sub    %ecx,(%rbx)
   1800836a2:	2b 0b                	sub    (%rbx),%ecx
   1800836a4:	2a 0b                	sub    (%rbx),%cl
   1800836a6:	2c 0b                	sub    $0xb,%al
   1800836a8:	2d 0b 59 0b 5c       	sub    $0x5c0b590b,%eax
   1800836ad:	0b 5b 0b             	or     0xb(%rbx),%ebx
   1800836b0:	51                   	push   %rcx
   1800836b1:	0b 57 0b             	or     0xb(%rdi),%edx
   1800836b4:	58                   	pop    %rax
   1800836b5:	0b 55 0b             	or     0xb(%rbp),%edx
   1800836b8:	54                   	push   %rsp
   1800836b9:	0b 56 0b             	or     0xb(%rsi),%edx
   1800836bc:	5f                   	pop    %rdi
   1800836bd:	0b 5e 0b             	or     0xb(%rsi),%ebx
   1800836c0:	5d                   	pop    %rbp
   1800836c1:	0b 53 0b             	or     0xb(%rbx),%edx
   1800836c4:	52                   	push   %rdx
   1800836c5:	0b 5a 0b             	or     0xb(%rdx),%ebx
   1800836c8:	28 0b                	sub    %cl,(%rbx)
   1800836ca:	26 0b 25 0b 27 0b 24 	es or  0x240b270b(%rip),%esp        # 0x1a4135ddc
   1800836d1:	0b 23                	or     (%rbx),%esp
   1800836d3:	0b 20                	or     (%rax),%esp
   1800836d5:	0b 1f                	or     (%rdi),%ebx
   1800836d7:	0b 1d 0b 22 0b 1c    	or     0x1c0b220b(%rip),%ebx        # 0x19c1358e8
   1800836dd:	0b 1b                	or     (%rbx),%ebx
   1800836df:	0b 1e                	or     (%rsi),%ebx
   1800836e1:	0b 21                	or     (%rcx),%esp
   1800836e3:	0b 75 0c             	or     0xc(%rbp),%esi
   1800836e6:	77 0c                	ja     0x1800836f4
   1800836e8:	79 0c                	jns    0x1800836f6
   1800836ea:	76 0c                	jbe    0x1800836f8
   1800836ec:	18 0b                	sbb    %cl,(%rbx)
   1800836ee:	7a 0c                	jp     0x1800836fc
   1800836f0:	78 0c                	js     0x1800836fe
   1800836f2:	1a 0b                	sbb    (%rbx),%cl
   1800836f4:	19 0b                	sbb    %ecx,(%rbx)
   1800836f6:	7b 0c                	jnp    0x180083704
   1800836f8:	e7 0b                	out    %eax,$0xb
   1800836fa:	9b                   	fwait
   1800836fb:	0b 9c 0b 9d 0b d8 0b 	or     0xbd80b9d(%rbx,%rcx,1),%ebx
   180083702:	b8 0b d1 0b d3       	mov    $0xd30bd10b,%eax
   180083707:	0b d5                	or     %ebp,%edx
   180083709:	0b d2                	or     %edx,%edx
   18008370b:	0b d4                	or     %esp,%edx
   18008370d:	0b d7                	or     %edi,%edx
   18008370f:	0b 8a 0a 8b 0a 89    	or     -0x76f574f6(%rdx),%ecx
   180083715:	0a 8c 0a 03 0a 04 0a 	or     0xa040a03(%rdx,%rcx,1),%cl
   18008371c:	87 0a                	xchg   %ecx,(%rdx)
   18008371e:	88 0a                	mov    %cl,(%rdx)
   180083720:	08 0a                	or     %cl,(%rdx)
   180083722:	14 0a                	adc    $0xa,%al
   180083724:	15 0a 7e 0a 8e       	adc    $0x8e0a7e0a,%eax
   180083729:	0a 8f 0a 8d 0a 7f    	or     0x7f0a8d0a(%rdi),%cl
   18008372f:	0a 80 0a 81 0a 9c    	or     -0x63f57ef6(%rax),%al
   180083735:	0a 9b 0a 09 0a 6d    	or     0x6d0a090a(%rbx),%bl
   18008373b:	0a 97 0a 98 0a 9a    	or     -0x65f567f6(%rdi),%dl
   180083741:	0a 90 0a 91 0a c9    	or     -0x36f56ef6(%rax),%dl
   180083747:	01 99 0a 95 0a 94    	add    %ebx,-0x6bf56af6(%rcx)
   18008374d:	0a c7                	or     %bh,%al
   18008374f:	01 c6                	add    %eax,%esi
   180083751:	01 c8                	add    %ecx,%eax
   180083753:	01 93 0a c5 01 62    	add    %edx,0x6201c50a(%rbx)
   180083759:	0b 11                	or     (%rcx),%edx
   18008375b:	0a 67 0b             	or     0xb(%rdi),%ah
   18008375e:	61                   	(bad)  
   18008375f:	0b 65 0b             	or     0xb(%rbp),%esp
   180083762:	66 0b 63 0b          	or     0xb(%rbx),%sp
   180083766:	64 0b 96 0a f4 0d f9 	or     %fs:-0x6f20bf6(%rsi),%edx
   18008376d:	0d f4 03 92 0a       	or     $0xa9203f4,%eax
   180083772:	f6 0d f7 0d f8 0d f5 	testb  $0xf5,0xdf80df7(%rip)        # 0x18e004570
   180083779:	0d 86 0a 44 0b       	or     $0xb440a86,%eax
   18008377e:	45 0b 47 0b          	or     0xb(%r15),%r8d
   180083782:	46 0b 50 0b          	rex.RX or 0xb(%rax),%r10d
   180083786:	32 0b                	xor    (%rbx),%cl
   180083788:	38 0b                	cmp    %cl,(%rbx)
   18008378a:	39 0b                	cmp    %ecx,(%rbx)
   18008378c:	37                   	(bad)  
   18008378d:	0b 3e                	or     (%rsi),%edi
   18008378f:	0b 35 0b 43 0b 36    	or     0x360b430b(%rip),%esi        # 0x1b6137aa0
   180083795:	0b 3d 0b 3b 0b 3a    	or     0x3a0b3b0b(%rip),%edi        # 0x1ba1372a6
   18008379b:	0b 3c 0b             	or     (%rbx,%rcx,1),%edi
   18008379e:	40 0b 41 0b          	rex or 0xb(%rcx),%eax
   1800837a2:	42 0b 2f             	rex.X or (%rdi),%ebp
   1800837a5:	0b 2e                	or     (%rsi),%ebp
   1800837a7:	0b f2                	or     %edx,%esi
   1800837a9:	0b 30                	or     (%rax),%esi
   1800837ab:	0b 33                	or     (%rbx),%esi
   1800837ad:	0b 7e 0c             	or     0xc(%rsi),%edi
   1800837b0:	0f 0c                	(bad)  
   1800837b2:	16                   	(bad)  
   1800837b3:	0c 15                	or     $0x15,%al
   1800837b5:	0c 0e                	or     $0xe,%al
   1800837b7:	0c 17                	or     $0x17,%al
   1800837b9:	0c 0c                	or     $0xc,%al
   1800837bb:	0c 10                	or     $0x10,%al
   1800837bd:	0c 0d                	or     $0xd,%al
   1800837bf:	0c 11                	or     $0x11,%al
   1800837c1:	0c 14                	or     $0x14,%al
   1800837c3:	0c 13                	or     $0x13,%al
   1800837c5:	0c 12                	or     $0x12,%al
   1800837c7:	0c 18                	or     $0x18,%al
   1800837c9:	0c 1b                	or     $0x1b,%al
   1800837cb:	0c 19                	or     $0x19,%al
   1800837cd:	0c 1a                	or     $0x1a,%al
   1800837cf:	0c 0a                	or     $0xa,%al
   1800837d1:	0c 87                	or     $0x87,%al
   1800837d3:	0c 85                	or     $0x85,%al
   1800837d5:	0c 23                	or     $0x23,%al
   1800837d7:	0d 0b 0c 80 0c       	or     $0xc800c0b,%eax
   1800837dc:	84 0c 83             	test   %cl,(%rbx,%rax,4)
   1800837df:	0c 81                	or     $0x81,%al
   1800837e1:	0c 82                	or     $0x82,%al
   1800837e3:	0c 1c                	or     $0x1c,%al
   1800837e5:	0c fe                	or     $0xfe,%al
   1800837e7:	0b 1e                	or     (%rsi),%ebx
   1800837e9:	0c 1d                	or     $0x1d,%al
   1800837eb:	0c 1f                	or     $0x1f,%al
   1800837ed:	0c 21                	or     $0x21,%al
   1800837ef:	0c 22                	or     $0x22,%al
   1800837f1:	0c 23                	or     $0x23,%al
   1800837f3:	0c 20                	or     $0x20,%al
   1800837f5:	0c ff                	or     $0xff,%al
   1800837f7:	0b 03                	or     (%rbx),%eax
   1800837f9:	0c 02                	or     $0x2,%al
   1800837fb:	0c 04                	or     $0x4,%al
   1800837fd:	0c 05                	or     $0x5,%al
   1800837ff:	0c 07                	or     $0x7,%al
   180083801:	0c 01                	or     $0x1,%al
   180083803:	0c 08                	or     $0x8,%al
   180083805:	0c 00                	or     $0x0,%al
   180083807:	0c 06                	or     $0x6,%al
   180083809:	0c 32                	or     $0x32,%al
   18008380b:	0c 09                	or     $0x9,%al
   18008380d:	0c 30                	or     $0x30,%al
   18008380f:	0c 31                	or     $0x31,%al
   180083811:	0c 29                	or     $0x29,%al
   180083813:	0c 2a                	or     $0x2a,%al
   180083815:	0c 2b                	or     $0x2b,%al
   180083817:	0c 2d                	or     $0x2d,%al
   180083819:	0c 2c                	or     $0x2c,%al
   18008381b:	0c 2e                	or     $0x2e,%al
   18008381d:	0c 26                	or     $0x26,%al
   18008381f:	0c 25                	or     $0x25,%al
   180083821:	0c 27                	or     $0x27,%al
   180083823:	0c 28                	or     $0x28,%al
   180083825:	0c 4e                	or     $0x4e,%al
   180083827:	0c 4f                	or     $0x4f,%al
   180083829:	0c f4                	or     $0xf4,%al
   18008382b:	0c f5                	or     $0xf5,%al
   18008382d:	0c 4c                	or     $0x4c,%al
   18008382f:	0c 50                	or     $0x50,%al
   180083831:	0c 45                	or     $0x45,%al
   180083833:	0c 49                	or     $0x49,%al
   180083835:	0c 44                	or     $0x44,%al
   180083837:	0c 46                	or     $0x46,%al
   180083839:	0c 43                	or     $0x43,%al
   18008383b:	0c 42                	or     $0x42,%al
   18008383d:	0c 47                	or     $0x47,%al
   18008383f:	0c 48                	or     $0x48,%al
   180083841:	0c 4d                	or     $0x4d,%al
   180083843:	0c f6                	or     $0xf6,%al
   180083845:	0c 40                	or     $0x40,%al
   180083847:	0c 36                	or     $0x36,%al
   180083849:	0c 37                	or     $0x37,%al
   18008384b:	0c 3a                	or     $0x3a,%al
   18008384d:	0c 3f                	or     $0x3f,%al
   18008384f:	0c 3e                	or     $0x3e,%al
   180083851:	0c 3c                	or     $0x3c,%al
   180083853:	0c 3b                	or     $0x3b,%al
   180083855:	0c 39                	or     $0x39,%al
   180083857:	0c 38                	or     $0x38,%al
   180083859:	0c 3d                	or     $0x3d,%al
   18008385b:	0c 41                	or     $0x41,%al
   18008385d:	0c 52                	or     $0x52,%al
   18008385f:	0c 54                	or     $0x54,%al
   180083861:	0c 53                	or     $0x53,%al
   180083863:	0c 1d                	or     $0x1d,%al
   180083865:	0d 33 0c fa 0c       	or     $0xcfa0c33,%eax
   18008386a:	4a 0c 4b             	rex.WX or $0x4b,%al
   18008386d:	0c 1f                	or     $0x1f,%al
   18008386f:	0d cc 02 cb 02       	or     $0x2cb02cc,%eax
   180083874:	c9                   	leave  
   180083875:	02 ca                	add    %dl,%cl
   180083877:	02 53 02             	add    0x2(%rbx),%dl
   18008387a:	54                   	push   %rsp
   18008387b:	02 55 02             	add    0x2(%rbp),%dl
   18008387e:	56                   	push   %rsi
   18008387f:	02 4e 02             	add    0x2(%rsi),%cl
   180083882:	51                   	push   %rcx
   180083883:	02 52 02             	add    0x2(%rdx),%dl
   180083886:	50                   	push   %rax
   180083887:	02 5a 02             	add    0x2(%rdx),%bl
   18008388a:	59                   	pop    %rcx
   18008388b:	02 5b 02             	add    0x2(%rbx),%bl
   18008388e:	4f 02 6d 02          	rex.WRXB add 0x2(%r13),%r13b
   180083892:	5c                   	pop    %rsp
   180083893:	02 5d 02             	add    0x2(%rbp),%bl
   180083896:	60                   	(bad)  
   180083897:	02 5f 02             	add    0x2(%rdi),%bl
   18008389a:	5e                   	pop    %rsi
   18008389b:	02 03                	add    (%rbx),%al
   18008389d:	03 04 03             	add    (%rbx,%rax,1),%eax
   1800838a0:	02 03                	add    (%rbx),%al
   1800838a2:	0d 03 07 03 06       	or     $0x6030703,%eax
   1800838a7:	03 0a                	add    (%rdx),%ecx
   1800838a9:	03 08                	add    (%rax),%ecx
   1800838ab:	03 10                	add    (%rax),%edx
   1800838ad:	03 0f                	add    (%rdi),%ecx
   1800838af:	03 0e                	add    (%rsi),%ecx
   1800838b1:	03 58 02             	add    0x2(%rax),%ebx
   1800838b4:	09 03                	or     %eax,(%rbx)
   1800838b6:	05 03 11 03 0c       	add    $0xc031103,%eax
   1800838bb:	03 0b                	add    (%rbx),%ecx
   1800838bd:	03 57 02             	add    0x2(%rdi),%edx
   1800838c0:	c8 02 c7 02          	enter  $0xc702,$0x2
   1800838c4:	6c                   	insb   (%dx),%es:(%rdi)
   1800838c5:	02 61 02             	add    0x2(%rcx),%ah
   1800838c8:	62 02                	(bad)  
   1800838ca:	63 02                	movsxd (%rdx),%eax
   1800838cc:	6a 02                	push   $0x2
   1800838ce:	6b 02 67             	imul   $0x67,(%rdx),%eax
   1800838d1:	02 64 02 65          	add    0x65(%rdx,%rax,1),%ah
   1800838d5:	02 66 02             	add    0x2(%rsi),%ah
   1800838d8:	69 02 68 02 a4 02    	imul   $0x2a40268,(%rdx),%eax
   1800838de:	4c 02 9f 02 a0 02 a3 	rex.WR add -0x5cfd5ffe(%rdi),%r11b
   1800838e5:	02 a1 02 a2 02 84    	add    -0x7bfd5dfe(%rcx),%ah
   1800838eb:	02 83 02 8d 02 7f    	add    0x7f028d02(%rbx),%al
   1800838f1:	02 8b 02 8a 02 8c    	add    -0x73fd75fe(%rbx),%cl
   1800838f7:	02 80 02 81 02 7d    	add    0x7d028102(%rax),%al
   1800838fd:	02 87 02 82 02 88    	add    -0x77fd7dfe(%rdi),%al
   180083903:	02 89 02 7e 02 86    	add    -0x79fd81fe(%rcx),%cl
   180083909:	02 8e 02 85 02 eb    	add    -0x14fd7afe(%rsi),%cl
   18008390f:	02 5d 0d             	add    0xd(%rbp),%bl
   180083912:	4b 02 6f 02          	rex.WXB add 0x2(%r15),%bpl
   180083916:	6e                   	outsb  %ds:(%rsi),(%dx)
   180083917:	02 8f 02 79 02 7a    	add    0x7a027902(%rdi),%cl
   18008391d:	02 97 02 71 02 74    	add    0x74027102(%rdi),%dl
   180083923:	02 75 02             	add    0x2(%rbp),%dh
   180083926:	76 02                	jbe    0x18008392a
   180083928:	78 02                	js     0x18008392c
   18008392a:	72 02                	jb     0x18008392e
   18008392c:	77 02                	ja     0x180083930
   18008392e:	73 02                	jae    0x180083932
   180083930:	90                   	nop
   180083931:	02 93 02 95 02 96    	add    -0x69fd6afe(%rbx),%dl
   180083937:	02 92 02 91 02 94    	add    -0x6bfd6efe(%rdx),%dl
   18008393d:	02 70 02             	add    0x2(%rax),%dh
   180083940:	9d                   	popf   
   180083941:	02 9c 02 ba 02 bc 02 	add    0x2bc02ba(%rdx,%rax,1),%bl
   180083948:	bb 02 4d 02 98       	mov    $0x98024d02,%ebx
   18008394d:	02 9a 02 9e 02 d6    	add    -0x29fd61fe(%rdx),%bl
   180083953:	01 d8                	add    %ebx,%eax
   180083955:	01 da                	add    %ebx,%edx
   180083957:	01 d7                	add    %edx,%edi
   180083959:	01 d9                	add    %ebx,%ecx
   18008395b:	01 d5                	add    %edx,%ebp
   18008395d:	01 c3                	add    %eax,%ebx
   18008395f:	01 d4                	add    %edx,%esp
   180083961:	01 db                	add    %ebx,%ebx
   180083963:	01 ca                	add    %ecx,%edx
   180083965:	01 c4                	add    %eax,%esp
   180083967:	01 de                	add    %ebx,%esi
   180083969:	01 df                	add    %ebx,%edi
   18008396b:	01 e0                	add    %esp,%eax
   18008396d:	01 e2                	add    %esp,%edx
   18008396f:	01 cc                	add    %ecx,%esp
   180083971:	01 eb                	add    %ebp,%ebx
   180083973:	01 ce                	add    %ecx,%esi
   180083975:	01 d1                	add    %edx,%ecx
   180083977:	01 ed                	add    %ebp,%ebp
   180083979:	01 ec                	add    %ebp,%esp
   18008397b:	01 e4                	add    %esp,%esp
   18008397d:	01 e5                	add    %esp,%ebp
   18008397f:	01 21                	add    %esp,(%rcx)
   180083981:	0d fb 0d 12 0d       	or     $0xd120dfb,%eax
   180083986:	13 0d 14 0d 11 0d    	adc    0xd110d14(%rip),%ecx        # 0x18d1946a0
   18008398c:	16                   	(bad)  
   18008398d:	0d 17 0d 19 0d       	or     $0xd190d17,%eax
   180083992:	15 0d 18 0d fd       	adc    $0xfd0d180d,%eax
   180083997:	0b 7d 0c             	or     0xc(%rbp),%edi
   18008399a:	88 0c 7f             	mov    %cl,(%rdi,%rdi,2)
   18008399d:	0c 20                	or     $0x20,%al
   18008399f:	0d 55 0c 8b 0c       	or     $0xc8b0c55,%eax
   1800839a4:	8c 0c 90             	mov    %cs,(%rax,%rdx,4)
   1800839a7:	0c 92                	or     $0x92,%al
   1800839a9:	0c 91                	or     $0x91,%al
   1800839ab:	0c 89                	or     $0x89,%al
   1800839ad:	0c f8                	or     $0xf8,%al
   1800839af:	0b 94 0c 8e 0c 8d 0c 	or     0xc8d0c8e(%rsp,%rcx,1),%edx
   1800839b6:	f9                   	stc    
   1800839b7:	0b 8a 0c 95 0c 96    	or     -0x69f36af4(%rdx),%ecx
   1800839bd:	0c 97                	or     $0x97,%al
   1800839bf:	0c 93                	or     $0x93,%al
   1800839c1:	0c 8f                	or     $0x8f,%al
   1800839c3:	0c 24                	or     $0x24,%al
   1800839c5:	0c 2f                	or     $0x2f,%al
   1800839c7:	0c 86                	or     $0x86,%al
   1800839c9:	0c 63                	or     $0x63,%al
   1800839cb:	0c 6a                	or     $0x6a,%al
   1800839cd:	0c 69                	or     $0x69,%al
   1800839cf:	0c 6b                	or     $0x6b,%al
   1800839d1:	0c 74                	or     $0x74,%al
   1800839d3:	0c 6d                	or     $0x6d,%al
   1800839d5:	0c 6c                	or     $0x6c,%al
   1800839d7:	0c 5e                	or     $0x5e,%al
   1800839d9:	0c 64                	or     $0x64,%al
   1800839db:	0c 1a                	or     $0x1a,%al
   1800839dd:	0d 1c 0d 57 0c       	or     $0xc570d1c,%eax
   1800839e2:	65 0c 68             	gs or  $0x68,%al
   1800839e5:	0c 66                	or     $0x66,%al
   1800839e7:	0c 67                	or     $0x67,%al
   1800839e9:	0c 56                	or     $0x56,%al
   1800839eb:	0c 5d                	or     $0x5d,%al
   1800839ed:	0c 61                	or     $0x61,%al
   1800839ef:	0c 62                	or     $0x62,%al
   1800839f1:	0c 60                	or     $0x60,%al
   1800839f3:	0c 5c                	or     $0x5c,%al
   1800839f5:	0c 5f                	or     $0x5f,%al
   1800839f7:	0c 5a                	or     $0x5a,%al
   1800839f9:	0c 5b                	or     $0x5b,%al
   1800839fb:	0c 58                	or     $0x58,%al
   1800839fd:	0c 59                	or     $0x59,%al
   1800839ff:	0c fa                	or     $0xfa,%al
   180083a01:	0b fb                	or     %ebx,%edi
   180083a03:	0b fc                	or     %esp,%edi
   180083a05:	0b 9b 02 99 02 a8    	or     -0x57fd66fe(%rbx),%ebx
   180083a0b:	02 ab 02 a9 02 c5    	add    -0x3afd56fe(%rbx),%ch
   180083a11:	02 c4                	add    %ah,%al
   180083a13:	02 aa 02 b4 02 c6    	add    -0x39fd4bfe(%rdx),%ch
   180083a19:	02 d4                	add    %ah,%dl
   180083a1b:	02 d8                	add    %al,%bl
   180083a1d:	02 d6                	add    %dh,%dl
   180083a1f:	02 d2                	add    %dl,%dl
   180083a21:	02 cf                	add    %bh,%cl
   180083a23:	02 cd                	add    %ch,%cl
   180083a25:	02 ce                	add    %dh,%cl
   180083a27:	02 d0                	add    %al,%dl
   180083a29:	02 ac 02 d5 02 c3 02 	add    0x2c302d5(%rdx,%rax,1),%ch
   180083a30:	d9 02                	flds   (%rdx)
   180083a32:	d7                   	xlat   %ds:(%rbx)
   180083a33:	02 d1                	add    %cl,%dl
   180083a35:	02 d3                	add    %bl,%dl
   180083a37:	02 01                	add    (%rcx),%al
   180083a39:	03 4a 02             	add    0x2(%rdx),%ecx
   180083a3c:	b0 02                	mov    $0x2,%al
   180083a3e:	b3 02                	mov    $0x2,%bl
   180083a40:	b2 02                	mov    $0x2,%dl
   180083a42:	af                   	scas   %es:(%rdi),%eax
   180083a43:	02 ae 02 b1 02 ad    	add    -0x52fd4efe(%rsi),%ch
   180083a49:	02 a5 02 a6 02 7b    	add    0x7b02a602(%rbp),%ah
   180083a4f:	02 7c 02 a7          	add    -0x59(%rdx,%rax,1),%bh
   180083a53:	02 c0                	add    %al,%al
   180083a55:	02 c1                	add    %cl,%al
   180083a57:	02 c2                	add    %dl,%al
   180083a59:	02 bf 02 b6 02 b9    	add    -0x46fd49fe(%rdi),%bh
   180083a5f:	02 f7                	add    %bh,%dh
   180083a61:	02 ff                	add    %bh,%bh
   180083a63:	02 fb                	add    %bl,%bh
   180083a65:	02 fa                	add    %dl,%bh
   180083a67:	02 b5 02 be 02 bd    	add    -0x42fd41fe(%rbp),%dh
   180083a6d:	02 b7 02 b8 02 22    	add    0x2202b802(%rdi),%dh
   180083a73:	0d 99 0c 98 0c       	or     $0xc980c99,%eax
   180083a78:	9a                   	(bad)  
   180083a79:	0c 1e                	or     $0x1e,%al
   180083a7b:	0d c7 0c 1b 0d       	or     $0xd1b0cc7,%eax
   180083a80:	ac                   	lods   %ds:(%rsi),%al
   180083a81:	0c b0                	or     $0xb0,%al
   180083a83:	0c b1                	or     $0xb1,%al
   180083a85:	0c b2                	or     $0xb2,%al
   180083a87:	0c ae                	or     $0xae,%al
   180083a89:	0c ad                	or     $0xad,%al
   180083a8b:	0c aa                	or     $0xaa,%al
   180083a8d:	0c ab                	or     $0xab,%al
   180083a8f:	0c af                	or     $0xaf,%al
   180083a91:	0c b3                	or     $0xb3,%al
   180083a93:	0c b7                	or     $0xb7,%al
   180083a95:	0c b6                	or     $0xb6,%al
   180083a97:	0c b4                	or     $0xb4,%al
   180083a99:	0c b5                	or     $0xb5,%al
   180083a9b:	0c bd                	or     $0xbd,%al
   180083a9d:	0c e7                	or     $0xe7,%al
   180083a9f:	0c eb                	or     $0xeb,%al
   180083aa1:	0c f1                	or     $0xf1,%al
   180083aa3:	0c e9                	or     $0xe9,%al
   180083aa5:	0c ec                	or     $0xec,%al
   180083aa7:	0c f0                	or     $0xf0,%al
   180083aa9:	0c ea                	or     $0xea,%al
   180083aab:	0c ef                	or     $0xef,%al
   180083aad:	0c e8                	or     $0xe8,%al
   180083aaf:	0c ee                	or     $0xee,%al
   180083ab1:	0c ed                	or     $0xed,%al
   180083ab3:	0c e6                	or     $0xe6,%al
   180083ab5:	0c a0                	or     $0xa0,%al
   180083ab7:	0c c2                	or     $0xc2,%al
   180083ab9:	0c bb                	or     $0xbb,%al
   180083abb:	0c ba                	or     $0xba,%al
   180083abd:	0c bc                	or     $0xbc,%al
   180083abf:	0c b9                	or     $0xb9,%al
   180083ac1:	0c b8                	or     $0xb8,%al
   180083ac3:	0c be                	or     $0xbe,%al
   180083ac5:	0c d0                	or     $0xd0,%al
   180083ac7:	0c e3                	or     $0xe3,%al
   180083ac9:	0c df                	or     $0xdf,%al
   180083acb:	0c e0                	or     $0xe0,%al
   180083acd:	0c e2                	or     $0xe2,%al
   180083acf:	0c e1                	or     $0xe1,%al
   180083ad1:	0c f2                	or     $0xf2,%al
   180083ad3:	0c 9c                	or     $0x9c,%al
   180083ad5:	0c 9d                	or     $0x9d,%al
   180083ad7:	0c 9e                	or     $0x9e,%al
   180083ad9:	0c cb                	or     $0xcb,%al
   180083adb:	0c c9                	or     $0xc9,%al
   180083add:	0c c8                	or     $0xc8,%al
   180083adf:	0c ce                	or     $0xce,%al
   180083ae1:	0c cd                	or     $0xcd,%al
   180083ae3:	0c ca                	or     $0xca,%al
   180083ae5:	0c cc                	or     $0xcc,%al
   180083ae7:	0c 9f                	or     $0x9f,%al
   180083ae9:	0c c6                	or     $0xc6,%al
   180083aeb:	0c c3                	or     $0xc3,%al
   180083aed:	0c c4                	or     $0xc4,%al
   180083aef:	0c bf                	or     $0xbf,%al
   180083af1:	0c c0                	or     $0xc0,%al
   180083af3:	0c c1                	or     $0xc1,%al
   180083af5:	0c c5                	or     $0xc5,%al
   180083af7:	0c 0e                	or     $0xe,%al
   180083af9:	0d 0f 0d 10 0d       	or     $0xd100d0f,%eax
   180083afe:	01 0d 00 0d 05 0d    	add    %ecx,0xd050d00(%rip)        # 0x18d0d4804
   180083b04:	06                   	(bad)  
   180083b05:	0d 04 0d cf 0c       	or     $0xccf0d04,%eax
   180083b0a:	ff 0c 03             	decl   (%rbx,%rax,1)
   180083b0d:	0d 02 0d fe 0c       	or     $0xcfe0d02,%eax
   180083b12:	0d 0d 0c 0d 0b       	or     $0xb0d0c0d,%eax
   180083b17:	0d 0a 0d 09 0d       	or     $0xd090d0a,%eax
   180083b1c:	08 0d 07 0d 9b 0c    	or     %cl,0xc9b0d07(%rip)        # 0x18ca34829
   180083b22:	34 0c                	xor    $0xc,%al
   180083b24:	e5 0c                	in     $0xc,%eax
   180083b26:	e4 0c                	in     $0xc,%al
   180083b28:	d3 0c d4             	rorl   %cl,(%rsp,%rdx,8)
   180083b2b:	0c db                	or     $0xdb,%al
   180083b2d:	0c d7                	or     $0xd7,%al
   180083b2f:	0c d8                	or     $0xd8,%al
   180083b31:	0c dc                	or     $0xdc,%al
   180083b33:	0c dd                	or     $0xdd,%al
   180083b35:	0c d5                	or     $0xd5,%al
   180083b37:	0c de                	or     $0xde,%al
   180083b39:	0c d2                	or     $0xd2,%al
   180083b3b:	0c d1                	or     $0xd1,%al
   180083b3d:	0c d6                	or     $0xd6,%al
   180083b3f:	0c d9                	or     $0xd9,%al
   180083b41:	0c da                	or     $0xda,%al
   180083b43:	0c f3                	or     $0xf3,%al
   180083b45:	0c a2                	or     $0xa2,%al
   180083b47:	0c a1                	or     $0xa1,%al
   180083b49:	0c a5                	or     $0xa5,%al
   180083b4b:	0c a8                	or     $0xa8,%al
   180083b4d:	0c a9                	or     $0xa9,%al
   180083b4f:	0c a6                	or     $0xa6,%al
   180083b51:	0c a4                	or     $0xa4,%al
   180083b53:	0c a3                	or     $0xa3,%al
   180083b55:	0c a7                	or     $0xa7,%al
   180083b57:	0c fd                	or     $0xfd,%al
   180083b59:	0c fb                	or     $0xfb,%al
   180083b5b:	0c fc                	or     $0xfc,%al
   180083b5d:	0c 51                	or     $0x51,%al
   180083b5f:	0c 35                	or     $0x35,%al
   180083b61:	0c f9                	or     $0xf9,%al
   180083b63:	0c f8                	or     $0xf8,%al
   180083b65:	0c f7                	or     $0xf7,%al
   180083b67:	0c fd                	or     $0xfd,%al
   180083b69:	02 fe                	add    %dh,%bh
   180083b6b:	02 00                	add    (%rax),%al
   180083b6d:	03 fc                	add    %esp,%edi
   180083b6f:	02 e0                	add    %al,%ah
   180083b71:	02 de                	add    %dh,%bl
   180083b73:	02 df                	add    %bh,%bl
   180083b75:	02 da                	add    %dl,%bl
   180083b77:	02 dc                	add    %ah,%bl
   180083b79:	02 ec                	add    %ah,%ch
   180083b7b:	02 db                	add    %bl,%bl
   180083b7d:	02 ea                	add    %dl,%ch
   180083b7f:	02 f8                	add    %al,%bh
   180083b81:	02 f9                	add    %cl,%bh
   180083b83:	02 e4                	add    %ah,%ah
   180083b85:	02 e5                	add    %ch,%ah
   180083b87:	02 f6                	add    %dh,%dh
   180083b89:	02 ed                	add    %ch,%ch
   180083b8b:	02 e2                	add    %dl,%ah
   180083b8d:	02 f3                	add    %bl,%dh
   180083b8f:	02 f1                	add    %cl,%dh
   180083b91:	02 ef                	add    %bh,%ch
   180083b93:	02 f2                	add    %dl,%dh
   180083b95:	02 f0                	add    %al,%dh
   180083b97:	02 e1                	add    %cl,%ah
   180083b99:	02 e3                	add    %bl,%ah
   180083b9b:	02 ee                	add    %dh,%ch
   180083b9d:	02 f4                	add    %ah,%dh
   180083b9f:	02 f5                	add    %ch,%dh
   180083ba1:	02 e9                	add    %cl,%ch
   180083ba3:	02 e6                	add    %dh,%ah
   180083ba5:	02 e7                	add    %bh,%ah
   180083ba7:	02 e8                	add    %al,%ch
   180083ba9:	02 dd                	add    %ch,%bl
   180083bab:	02 81 08 82 08 83    	add    -0x7cf77df8(%rcx),%al
   180083bb1:	08 6f 08             	or     %ch,0x8(%rdi)
   180083bb4:	6e                   	outsb  %ds:(%rsi),(%dx)
   180083bb5:	08 6d 08             	or     %ch,0x8(%rbp)
   180083bb8:	47 08 38             	rex.RXB or %r15b,(%r8)
   180083bbb:	08 37                	or     %dh,(%rdi)
   180083bbd:	08 36                	or     %dh,(%rsi)
   180083bbf:	08 56 08             	or     %dl,0x8(%rsi)
   180083bc2:	57                   	push   %rdi
   180083bc3:	08 59 08             	or     %bl,0x8(%rcx)
   180083bc6:	58                   	pop    %rax
   180083bc7:	08 5c 08 35          	or     %bl,0x35(%rax,%rcx,1)
   180083bcb:	08 45 08             	or     %al,0x8(%rbp)
   180083bce:	3a 08                	cmp    (%rax),%cl
   180083bd0:	3d 08 3b 08 3c       	cmp    $0x3c083b08,%eax
   180083bd5:	08 3e                	or     %bh,(%rsi)
   180083bd7:	08 42 08             	or     %al,0x8(%rdx)
   180083bda:	43 08 44 08 40       	or     %al,0x40(%r8,%r9,1)
   180083bdf:	08 41 08             	or     %al,0x8(%rcx)
   180083be2:	3f                   	(bad)  
   180083be3:	08 48 08             	or     %cl,0x8(%rax)
   180083be6:	50                   	push   %rax
   180083be7:	08 4d 08             	or     %cl,0x8(%rbp)
   180083bea:	4b 08 53 08          	rex.WXB or %dl,0x8(%r11)
   180083bee:	52                   	push   %rdx
   180083bef:	08 4c 08 54          	or     %cl,0x54(%rax,%rcx,1)
   180083bf3:	08 4e 08             	or     %cl,0x8(%rsi)
   180083bf6:	4a 08 4f 08          	rex.WX or %cl,0x8(%rdi)
   180083bfa:	51                   	push   %rcx
   180083bfb:	08 55 08             	or     %dl,0x8(%rbp)
   180083bfe:	49 08 46 08          	rex.WB or %al,0x8(%r14)
   180083c02:	5e                   	pop    %rsi
   180083c03:	08 6c 08 88          	or     %ch,-0x78(%rax,%rcx,1)
   180083c07:	08 87 08 89 08 91    	or     %al,-0x6ef776f8(%rdi)
   180083c0d:	08 90 08 8b 08 8d    	or     %dl,-0x72f774f8(%rax)
   180083c13:	08 8c 08 8a 08 8e 08 	or     %cl,0x88e088a(%rax,%rcx,1)
   180083c1a:	8f 08 80 08          	(bad)
   180083c1e:	70 08                	jo     0x180083c28
   180083c20:	71 08                	jno    0x180083c2a
   180083c22:	f8                   	clc    
   180083c23:	05 92 08 f9 05       	add    $0x5f90892,%eax
   180083c28:	84 08                	test   %cl,(%rax)
   180083c2a:	85 08                	test   %ecx,(%rax)
   180083c2c:	86 08                	xchg   %cl,(%rax)
   180083c2e:	72 08                	jb     0x180083c38
   180083c30:	73 08                	jae    0x180083c3a
   180083c32:	7f 08                	jg     0x180083c3c
   180083c34:	7e 08                	jle    0x180083c3e
   180083c36:	77 08                	ja     0x180083c40
   180083c38:	78 08                	js     0x180083c42
   180083c3a:	7c 08                	jl     0x180083c44
   180083c3c:	7d 08                	jge    0x180083c46
   180083c3e:	76 08                	jbe    0x180083c48
   180083c40:	7a 08                	jp     0x180083c4a
   180083c42:	79 08                	jns    0x180083c4c
   180083c44:	7b 08                	jnp    0x180083c4e
   180083c46:	75 08                	jne    0x180083c50
   180083c48:	74 08                	je     0x180083c52
   180083c4a:	6a 08                	push   $0x8
   180083c4c:	6b 08 b0             	imul   $0xffffffb0,(%rax),%ecx
   180083c4f:	08 b2 08 a0 08 b1    	or     %dh,-0x4ef75ff8(%rdx)
   180083c55:	08 5d 08             	or     %bl,0x8(%rbp)
   180083c58:	5a                   	pop    %rdx
   180083c59:	08 5b 08             	or     %bl,0x8(%rbx)
   180083c5c:	68 08 69 08 67       	push   $0x67086908
   180083c61:	08 64 08 63          	or     %ah,0x63(%rax,%rcx,1)
   180083c65:	08 65 08             	or     %ah,0x8(%rbp)
   180083c68:	62                   	(bad)  
   180083c69:	08 66 08             	or     %ah,0x8(%rsi)
   180083c6c:	5f                   	pop    %rdi
   180083c6d:	08 60 08             	or     %ah,0x8(%rax)
   180083c70:	61                   	(bad)  
   180083c71:	08 39                	or     %bh,(%rcx)
   180083c73:	08 95 08 af 08 9e    	or     %dl,-0x61f750f8(%rbp)
   180083c79:	08 ad 08 ab 08 ac    	or     %ch,-0x53f754f8(%rbp)
   180083c7f:	08 9d 08 99 08 9a    	or     %bl,-0x65f766f8(%rbp)
   180083c85:	08 98 08 9b 08 9c    	or     %bl,-0x63f764f8(%rax)
   180083c8b:	08 9f 08 ae 08 a5    	or     %bl,-0x5af751f8(%rdi)
   180083c91:	08 a6 08 a9 08 aa    	or     %ah,-0x55f756f8(%rsi)
   180083c97:	08 a7 08 a8 08 a4    	or     %ah,-0x5bf757f8(%rdi)
   180083c9d:	08 a3 08 a2 08 96    	or     %ah,-0x69f75df8(%rbx)
   180083ca3:	08 97 08 a1 08 94    	or     %dl,-0x6bf75ef8(%rdi)
   180083ca9:	08 93 08 c2 04 c1    	or     %dl,-0x3efb3df8(%rbx)
   180083caf:	04 72                	add    $0x72,%al
   180083cb1:	04 b6                	add    $0xb6,%al
   180083cb3:	04 b7                	add    $0xb7,%al
   180083cb5:	04 c3                	add    $0xc3,%al
   180083cb7:	04 c4                	add    $0xc4,%al
   180083cb9:	04 00                	add    $0x0,%al
   180083cbb:	05 a1 04 73 04       	add    $0x47304a1,%eax
   180083cc0:	6b 04 6e 04          	imul   $0x4,(%rsi,%rbp,2),%eax
   180083cc4:	70 04                	jo     0x180083cca
   180083cc6:	6c                   	insb   (%dx),%es:(%rdi)
   180083cc7:	04 6d                	add    $0x6d,%al
   180083cc9:	04 6f                	add    $0x6f,%al
   180083ccb:	04 78                	add    $0x78,%al
   180083ccd:	04 76                	add    $0x76,%al
   180083ccf:	04 79                	add    $0x79,%al
   180083cd1:	04 74                	add    $0x74,%al
   180083cd3:	04 75                	add    $0x75,%al
   180083cd5:	04 77                	add    $0x77,%al
   180083cd7:	04 98                	add    $0x98,%al
   180083cd9:	04 9a                	add    $0x9a,%al
   180083cdb:	04 97                	add    $0x97,%al
   180083cdd:	04 9b                	add    $0x9b,%al
   180083cdf:	04 99                	add    $0x99,%al
   180083ce1:	04 05                	add    $0x5,%al
   180083ce3:	05 95 04 96 04       	add    $0x4960495,%eax
   180083ce8:	9d                   	popf   
   180083ce9:	04 9c                	add    $0x9c,%al
   180083ceb:	04 82                	add    $0x82,%al
   180083ced:	04 83                	add    $0x83,%al
   180083cef:	04 85                	add    $0x85,%al
   180083cf1:	04 88                	add    $0x88,%al
   180083cf3:	04 86                	add    $0x86,%al
   180083cf5:	04 87                	add    $0x87,%al
   180083cf7:	04 84                	add    $0x84,%al
   180083cf9:	04 a0                	add    $0xa0,%al
   180083cfb:	04 9e                	add    $0x9e,%al
   180083cfd:	04 9f                	add    $0x9f,%al
   180083cff:	04 7f                	add    $0x7f,%al
   180083d01:	04 80                	add    $0x80,%al
   180083d03:	04 7e                	add    $0x7e,%al
   180083d05:	04 f8                	add    $0xf8,%al
   180083d07:	04 6a                	add    $0x6a,%al
   180083d09:	04 7d                	add    $0x7d,%al
   180083d0b:	04 a8                	add    $0xa8,%al
   180083d0d:	04 a7                	add    $0xa7,%al
   180083d0f:	04 a6                	add    $0xa6,%al
   180083d11:	04 a9                	add    $0xa9,%al
   180083d13:	04 f6                	add    $0xf6,%al
   180083d15:	04 04                	add    $0x4,%al
   180083d17:	05 7a 04 94 04       	add    $0x494047a,%eax
   180083d1c:	93                   	xchg   %eax,%ebx
   180083d1d:	04 a2                	add    $0xa2,%al
   180083d1f:	04 a4                	add    $0xa4,%al
   180083d21:	04 a3                	add    $0xa3,%al
   180083d23:	04 81                	add    $0x81,%al
   180083d25:	04 ad                	add    $0xad,%al
   180083d27:	04 8e                	add    $0x8e,%al
   180083d29:	04 8f                	add    $0x8f,%al
   180083d2b:	04 92                	add    $0x92,%al
   180083d2d:	04 8d                	add    $0x8d,%al
   180083d2f:	04 8c                	add    $0x8c,%al
   180083d31:	04 8b                	add    $0x8b,%al
   180083d33:	04 8a                	add    $0x8a,%al
   180083d35:	04 91                	add    $0x91,%al
   180083d37:	04 89                	add    $0x89,%al
   180083d39:	04 90                	add    $0x90,%al
   180083d3b:	04 4c                	add    $0x4c,%al
   180083d3d:	01 7d 01             	add    %edi,0x1(%rbp)
   180083d40:	7c 01                	jl     0x180083d43
   180083d42:	0a 01                	or     (%rcx),%al
   180083d44:	09 01                	or     %eax,(%rcx)
   180083d46:	18 01                	sbb    %al,(%rcx)
   180083d48:	9c                   	pushf  
   180083d49:	01 19                	add    %ebx,(%rcx)
   180083d4b:	01 07                	add    %eax,(%rdi)
   180083d4d:	01 9b 01 1a 01 16    	add    %ebx,0x16011a01(%rbx)
   180083d53:	01 0b                	add    %ecx,(%rbx)
   180083d55:	01 0e                	add    %ecx,(%rsi)
   180083d57:	01 15 01 0f 01 11    	add    %edx,0x11010f01(%rip)        # 0x191094c5e
   180083d5d:	01 12                	add    %edx,(%rdx)
   180083d5f:	01 10                	add    %edx,(%rax)
   180083d61:	01 14 01             	add    %edx,(%rcx,%rax,1)
   180083d64:	13 01                	adc    (%rcx),%eax
   180083d66:	06                   	(bad)  
   180083d67:	01 4d 01             	add    %ecx,0x1(%rbp)
   180083d6a:	08 01                	or     %al,(%rcx)
   180083d6c:	17                   	(bad)  
   180083d6d:	01 51 09             	add    %edx,0x9(%rcx)
   180083d70:	04 09                	add    $0x9,%al
   180083d72:	00 09                	add    %cl,(%rcx)
   180083d74:	03 09                	add    (%rcx),%ecx
   180083d76:	01 09                	add    %ecx,(%rcx)
   180083d78:	02 09                	add    (%rcx),%cl
   180083d7a:	fa                   	cli    
   180083d7b:	08 ff                	or     %bh,%bh
   180083d7d:	08 10                	or     %dl,(%rax)
   180083d7f:	09 fb                	or     %edi,%ebx
   180083d81:	08 fc                	or     %bh,%ah
   180083d83:	08 fd                	or     %bh,%ch
   180083d85:	08 f6                	or     %dh,%dh
   180083d87:	08 f7                	or     %dh,%bh
   180083d89:	08 2e                	or     %ch,(%rsi)
   180083d8b:	09 f9                	or     %edi,%ecx
   180083d8d:	08 f8                	or     %bh,%al
   180083d8f:	08 0b                	or     %cl,(%rbx)
   180083d91:	09 0a                	or     %ecx,(%rdx)
   180083d93:	09 12                	or     %edx,(%rdx)
   180083d95:	09 14 09             	or     %edx,(%rcx,%rcx,1)
   180083d98:	15 09 fe 08 c5       	adc    $0xc508fe09,%eax
   180083d9d:	04 c6                	add    $0xc6,%al
   180083d9f:	04 c7                	add    $0xc7,%al
   180083da1:	04 c9                	add    $0xc9,%al
   180083da3:	04 cc                	add    $0xcc,%al
   180083da5:	04 c8                	add    $0xc8,%al
   180083da7:	04 cb                	add    $0xcb,%al
   180083da9:	04 ca                	add    $0xca,%al
   180083dab:	04 c0                	add    $0xc0,%al
   180083dad:	04 bf                	add    $0xbf,%al
   180083daf:	04 cd                	add    $0xcd,%al
   180083db1:	04 d7                	add    $0xd7,%al
   180083db3:	04 d9                	add    $0xd9,%al
   180083db5:	04 d8                	add    $0xd8,%al
   180083db7:	04 da                	add    $0xda,%al
   180083db9:	04 e0                	add    $0xe0,%al
   180083dbb:	04 de                	add    $0xde,%al
   180083dbd:	04 df                	add    $0xdf,%al
   180083dbf:	04 db                	add    $0xdb,%al
   180083dc1:	04 dc                	add    $0xdc,%al
   180083dc3:	04 dd                	add    $0xdd,%al
   180083dc5:	04 e1                	add    $0xe1,%al
   180083dc7:	04 e2                	add    $0xe2,%al
   180083dc9:	04 b9                	add    $0xb9,%al
   180083dcb:	04 b8                	add    $0xb8,%al
   180083dcd:	04 e3                	add    $0xe3,%al
   180083dcf:	04 bb                	add    $0xbb,%al
   180083dd1:	04 bc                	add    $0xbc,%al
   180083dd3:	04 be                	add    $0xbe,%al
   180083dd5:	04 ba                	add    $0xba,%al
   180083dd7:	04 bd                	add    $0xbd,%al
   180083dd9:	04 cf                	add    $0xcf,%al
   180083ddb:	04 d3                	add    $0xd3,%al
   180083ddd:	04 d2                	add    $0xd2,%al
   180083ddf:	04 d4                	add    $0xd4,%al
   180083de1:	04 d6                	add    $0xd6,%al
   180083de3:	04 ce                	add    $0xce,%al
   180083de5:	04 d5                	add    $0xd5,%al
   180083de7:	04 d1                	add    $0xd1,%al
   180083de9:	04 d0                	add    $0xd0,%al
   180083deb:	04 b5                	add    $0xb5,%al
   180083ded:	04 ae                	add    $0xae,%al
   180083def:	04 39                	add    $0x39,%al
   180083df1:	01 52 0d             	add    %edx,0xd(%rdx)
   180083df4:	54                   	push   %rsp
   180083df5:	0d 49 01 a2 01       	or     $0x1a20149,%eax
   180083dfa:	51                   	push   %rcx
   180083dfb:	01 3a                	add    %edi,(%rdx)
   180083dfd:	01 47 01             	add    %eax,0x1(%rdi)
   180083e00:	48 01 41 01          	add    %rax,0x1(%rcx)
   180083e04:	40 01 46 01          	rex add %eax,0x1(%rsi)
   180083e08:	45 01 3e             	add    %r15d,(%r14)
   180083e0b:	01 3b                	add    %edi,(%rbx)
   180083e0d:	01 3c 01             	add    %edi,(%rcx,%rax,1)
   180083e10:	3f                   	(bad)  
   180083e11:	01 3d 01 42 01 43    	add    %edi,0x43014201(%rip)        # 0x1c3098018
   180083e17:	01 44 01 38          	add    %eax,0x38(%rcx,%rax,1)
   180083e1b:	01 20                	add    %esp,(%rax)
   180083e1d:	01 21                	add    %esp,(%rcx)
   180083e1f:	01 1f                	add    %ebx,(%rdi)
   180083e21:	01 37                	add    %esi,(%rdi)
   180083e23:	01 24 01             	add    %esp,(%rcx,%rax,1)
   180083e26:	25 01 50 01 4f       	and    $0x4f015001,%eax
   180083e2b:	01 4e 01             	add    %ecx,0x1(%rsi)
   180083e2e:	4a 01 4b 01          	rex.WX add %rcx,0x1(%rbx)
   180083e32:	1b 01                	sbb    (%rcx),%eax
   180083e34:	1e                   	(bad)  
   180083e35:	01 46 0d             	add    %eax,0xd(%rsi)
   180083e38:	05 01 04 01 1d       	add    $0x1d010401,%eax
   180083e3d:	01 1c 01             	add    %ebx,(%rcx,%rax,1)
   180083e40:	1f                   	(bad)  
   180083e41:	09 1d 09 24 09 20    	or     %ebx,0x20092409(%rip)        # 0x1a0116250
   180083e47:	09 23                	or     %esp,(%rbx)
   180083e49:	09 4f 09             	or     %ecx,0x9(%rdi)
   180083e4c:	21 09                	and    %ecx,(%rcx)
   180083e4e:	22 09                	and    (%rcx),%cl
   180083e50:	1e                   	(bad)  
   180083e51:	09 06                	or     %eax,(%rsi)
   180083e53:	09 16                	or     %edx,(%rsi)
   180083e55:	09 a4 03 99 03 9c 03 	or     %esp,0x39c0399(%rbx,%rax,1)
   180083e5c:	a8 03                	test   $0x3,%al
   180083e5e:	9e                   	sahf   
   180083e5f:	03 9d 03 a0 03 a1    	add    -0x5efc5ffd(%rbp),%ebx
   180083e65:	03 9f 03 a3 03 a2    	add    -0x5dfc5cfd(%rdi),%ebx
   180083e6b:	03 85 03 ba 03 82    	add    -0x7dfc45fd(%rbp),%eax
   180083e71:	03 80 03 a6 03 81    	add    -0x7efc59fd(%rax),%eax
   180083e77:	03 7f 03             	add    0x3(%rdi),%edi
   180083e7a:	7e 03                	jle    0x180083e7f
   180083e7c:	71 03                	jno    0x180083e81
   180083e7e:	7d 03                	jge    0x180083e83
   180083e80:	76 03                	jbe    0x180083e85
   180083e82:	75 03                	jne    0x180083e87
   180083e84:	19 09                	sbb    %ecx,(%rcx)
   180083e86:	7a 03                	jp     0x180083e8b
   180083e88:	7c 03                	jl     0x180083e8d
   180083e8a:	7b 03                	jnp    0x180083e8f
   180083e8c:	79 03                	jns    0x180083e91
   180083e8e:	78 03                	js     0x180083e93
   180083e90:	1a 09                	sbb    (%rcx),%cl
   180083e92:	bc 03 bb 03 a7       	mov    $0xa703bb03,%esp
   180083e97:	03 8c 03 1b 09 8d 03 	add    0x38d091b(%rbx,%rax,1),%ecx
   180083e9e:	95                   	xchg   %eax,%ebp
   180083e9f:	03 92 03 96 03 91    	add    -0x6efc69fd(%rdx),%edx
   180083ea5:	03 1c 09             	add    (%rcx,%rcx,1),%ebx
   180083ea8:	97                   	xchg   %eax,%edi
   180083ea9:	03 98 03 9a 03 a5    	add    -0x5afc65fd(%rax),%ebx
   180083eaf:	03 9b 03 94 03 93    	add    -0x6cfc6bfd(%rbx),%ebx
   180083eb5:	03 48 0d             	add    0xd(%rax),%ecx
   180083eb8:	73 03                	jae    0x180083ebd
   180083eba:	74 03                	je     0x180083ebf
   180083ebc:	72 03                	jb     0x180083ec1
   180083ebe:	86 03                	xchg   %al,(%rbx)
   180083ec0:	84 03                	test   %al,(%rbx)
   180083ec2:	77 03                	ja     0x180083ec7
   180083ec4:	8f 03                	pop    (%rbx)
   180083ec6:	90                   	nop
   180083ec7:	03 87 03 8b 03 88    	add    -0x77fc74fd(%rdi),%eax
   180083ecd:	03 8e 03 8a 03 83    	add    -0x7cfc75fd(%rsi),%ecx
   180083ed3:	03 89 03 b2 03 b6    	add    -0x49fc4dfd(%rcx),%ecx
   180083ed9:	03 b9 03 b7 03 b3    	add    -0x4cfc48fd(%rcx),%edi
   180083edf:	03 b5 03 b4 03 b0    	add    -0x4ffc4bfd(%rbp),%esi
   180083ee5:	03 b8 03 d4 03 d5    	add    -0x2afc2bfd(%rax),%edi
   180083eeb:	03 db                	add    %ebx,%ebx
   180083eed:	03 dd                	add    %ebp,%ebx
   180083eef:	03 dc                	add    %esp,%ebx
   180083ef1:	03 d7                	add    %edi,%edx
   180083ef3:	03 d8                	add    %eax,%ebx
   180083ef5:	03 d6                	add    %esi,%edx
   180083ef7:	03 da                	add    %edx,%ebx
   180083ef9:	03 d9                	add    %ecx,%ebx
   180083efb:	03 c8                	add    %eax,%ecx
   180083efd:	03 ca                	add    %edx,%ecx
   180083eff:	03 cf                	add    %edi,%ecx
   180083f01:	03 cb                	add    %ebx,%ecx
   180083f03:	03 ce                	add    %esi,%ecx
   180083f05:	03 cd                	add    %ebp,%ecx
   180083f07:	03 cc                	add    %esp,%ecx
   180083f09:	03 c9                	add    %ecx,%ecx
   180083f0b:	03 d0                	add    %eax,%edx
   180083f0d:	03 d2                	add    %edx,%edx
   180083f0f:	03 de                	add    %esi,%ebx
   180083f11:	03 bd 03 ac 03 af    	add    -0x50fc53fd(%rbp),%edi
   180083f17:	03 be 03 ad 03 bf    	add    -0x40fc52fd(%rsi),%edi
   180083f1d:	03 d3                	add    %ebx,%edx
   180083f1f:	03 ab 03 aa 03 c0    	add    -0x3ffc55fd(%rbx),%ebp
   180083f25:	03 02                	add    (%rdx),%eax
   180083f27:	05 d1 03 ae 03       	add    $0x3ae03d1,%eax
   180083f2c:	c3                   	ret    
   180083f2d:	03 c1                	add    %ecx,%eax
   180083f2f:	03 c4                	add    %esp,%eax
   180083f31:	03 c2                	add    %edx,%eax
   180083f33:	03 c6                	add    %esi,%eax
   180083f35:	03 c5                	add    %ebp,%eax
   180083f37:	03 a9 03 03 05 b1    	add    -0x4efafcfd(%rcx),%ebp
   180083f3d:	03 9d 01 a1 01 7e    	add    0x7e01a101(%rbp),%ebx
   180083f43:	01 8c 01 8b 01 8a 01 	add    %ecx,0x18a018b(%rcx,%rax,1)
   180083f4a:	92                   	xchg   %eax,%edx
   180083f4b:	01 8f 01 90 01 91    	add    %ecx,-0x6efe6fff(%rdi)
   180083f51:	01 93 01 99 01 98    	add    %edx,-0x67fe66ff(%rbx)
   180083f57:	01 9a 01 80 01 60    	add    %ebx,0x60018001(%rdx)
   180083f5d:	01 5f 01             	add    %ebx,0x1(%rdi)
   180083f60:	54                   	push   %rsp
   180083f61:	01 53 01             	add    %edx,0x1(%rbx)
   180083f64:	5c                   	pop    %rsp
   180083f65:	01 58 01             	add    %ebx,0x1(%rax)
   180083f68:	5a                   	pop    %rdx
   180083f69:	01 59 01             	add    %ebx,0x1(%rcx)
   180083f6c:	5b                   	pop    %rbx
   180083f6d:	01 52 01             	add    %edx,0x1(%rdx)
   180083f70:	55                   	push   %rbp
   180083f71:	01 56 01             	add    %edx,0x1(%rsi)
   180083f74:	57                   	push   %rdi
   180083f75:	01 6e 01             	add    %ebp,0x1(%rsi)
   180083f78:	84 01                	test   %al,(%rcx)
   180083f7a:	83 01 7f             	addl   $0x7f,(%rcx)
   180083f7d:	01 5e 01             	add    %ebx,0x1(%rsi)
   180083f80:	8e 01                	mov    (%rcx),%es
   180083f82:	8d 01                	lea    (%rcx),%eax
   180083f84:	9f                   	lahf   
   180083f85:	01 63 01             	add    %esp,0x1(%rbx)
   180083f88:	62 01 94 01 9e       	(bad)
   180083f8d:	01 66 01             	add    %esp,0x1(%rsi)
   180083f90:	65 01 6b 01          	add    %ebp,%gs:0x1(%rbx)
   180083f94:	6a 01                	push   $0x1
   180083f96:	6c                   	insb   (%dx),%es:(%rdi)
   180083f97:	01 67 01             	add    %esp,0x1(%rdi)
   180083f9a:	69 01 6d 01 68 01    	imul   $0x168016d,(%rcx),%eax
   180083fa0:	87 01                	xchg   %eax,(%rcx)
   180083fa2:	86 01                	xchg   %al,(%rcx)
   180083fa4:	85 01                	test   %eax,(%rcx)
   180083fa6:	89 01                	mov    %eax,(%rcx)
   180083fa8:	81 01 5d 01 61 01    	addl   $0x161015d,(%rcx)
   180083fae:	88 01                	mov    %al,(%rcx)
   180083fb0:	82                   	(bad)  
   180083fb1:	01 97 01 64 01 95    	add    %edx,-0x6afe9bff(%rdi)
   180083fb7:	01 96 01 18 09 47    	add    %edx,0x47091801(%rsi)
   180083fbd:	09 3f                	or     %edi,(%rdi)
   180083fbf:	09 40 09             	or     %eax,0x9(%rax)
   180083fc2:	4d 09 2f             	or     %r13,(%r15)
   180083fc5:	09 25 09 35 09 33    	or     %esp,0x33093509(%rip)        # 0x1b31174d4
   180083fcb:	09 3c 09             	or     %edi,(%rcx,%rcx,1)
   180083fce:	3e 09 3d 09 42 09 41 	ds or  %edi,0x41094209(%rip)        # 0x1c11181de
   180083fd5:	09 45 09             	or     %eax,0x9(%rbp)
   180083fd8:	46 09 43 09          	rex.RX or %r8d,0x9(%rbx)
   180083fdc:	44 09 4e 09          	or     %r9d,0x9(%rsi)
   180083fe0:	50                   	push   %rax
   180083fe1:	09 31                	or     %esi,(%rcx)
   180083fe3:	09 30                	or     %esi,(%rax)
   180083fe5:	09 36                	or     %esi,(%rsi)
   180083fe7:	09 38                	or     %edi,(%rax)
   180083fe9:	09 26                	or     %esp,(%rsi)
   180083feb:	09 34 09             	or     %esi,(%rcx,%rcx,1)
   180083fee:	32 09                	xor    (%rcx),%cl
   180083ff0:	39 09                	cmp    %ecx,(%rcx)
   180083ff2:	3a 09                	cmp    (%rcx),%cl
   180083ff4:	3b 09                	cmp    (%rcx),%ecx
   180083ff6:	37                   	(bad)  
   180083ff7:	09 48 09             	or     %ecx,0x9(%rax)
   180083ffa:	4c 09 4b 09          	or     %r9,0x9(%rbx)
   180083ffe:	49 09 4a 09          	or     %rcx,0x9(%r10)
   180084002:	2d 09 a5 04 71       	sub    $0x7104a509,%eax
   180084007:	04 7c                	add    $0x7c,%al
   180084009:	04 af                	add    $0xaf,%al
   18008400b:	04 b0                	add    $0xb0,%al
   18008400d:	04 ab                	add    $0xab,%al
   18008400f:	04 aa                	add    $0xaa,%al
   180084011:	04 8b                	add    $0x8b,%al
   180084013:	09 b2 04 ac 04 b3    	or     %esi,-0x4cfb53fc(%rdx)
   180084019:	04 40                	add    $0x40,%al
   18008401b:	0d 31 01 35 01       	or     $0x1350131,%eax
   180084020:	34 01                	xor    $0x1,%al
   180084022:	32 01                	xor    (%rcx),%al
   180084024:	33 01                	xor    (%rcx),%eax
   180084026:	36 01 28             	ss add %ebp,(%rax)
   180084029:	01 29                	add    %ebp,(%rcx)
   18008402b:	01 2a                	add    %ebp,(%rdx)
   18008402d:	01 4b 0d             	add    %ecx,0xd(%rbx)
   180084030:	22 01                	and    (%rcx),%al
   180084032:	2c 01                	sub    $0x1,%al
   180084034:	26 01 27             	es add %esp,(%rdi)
   180084037:	01 2d 01 30 01 23    	add    %ebp,0x23013001(%rip)        # 0x1a309703e
   18008403d:	01 4a 0d             	add    %ecx,0xd(%rdx)
   180084040:	2b 01                	sub    (%rcx),%eax
   180084042:	2e 01 2f             	cs add %ebp,(%rdi)
   180084045:	01 05 09 0c 09 f5    	add    %eax,-0xaf6f3f7(%rip)        # 0x175114c54
   18008404b:	08 09                	or     %cl,(%rcx)
   18008404d:	09 17                	or     %edx,(%rdi)
   18008404f:	09 07                	or     %eax,(%rdi)
   180084051:	09 0e                	or     %ecx,(%rsi)
   180084053:	09 11                	or     %edx,(%rcx)
   180084055:	09 0f                	or     %ecx,(%rdi)
   180084057:	09 13                	or     %edx,(%rbx)
   180084059:	09 0d 09 08 09 e4    	or     %ecx,-0x1bf6f7f7(%rip)        # 0x164114868
   18008405f:	04 e7                	add    $0xe7,%al
   180084061:	04 e6                	add    $0xe6,%al
   180084063:	04 e5                	add    $0xe5,%al
   180084065:	04 e8                	add    $0xe8,%al
   180084067:	04 e9                	add    $0xe9,%al
   180084069:	04 01                	add    $0x1,%al
   18008406b:	05 fa 04 73 0d       	add    $0xd7304fa,%eax
   180084070:	f9                   	stc    
   180084071:	04 f0                	add    $0xf0,%al
   180084073:	04 f4                	add    $0xf4,%al
   180084075:	04 f2                	add    $0xf2,%al
   180084077:	04 f3                	add    $0xf3,%al
   180084079:	04 f5                	add    $0xf5,%al
   18008407b:	04 f1                	add    $0xf1,%al
   18008407d:	04 fe                	add    $0xfe,%al
   18008407f:	04 ed                	add    $0xed,%al
   180084081:	04 eb                	add    $0xeb,%al
   180084083:	04 ec                	add    $0xec,%al
   180084085:	04 ef                	add    $0xef,%al
   180084087:	04 ee                	add    $0xee,%al
   180084089:	04 ff                	add    $0xff,%al
   18008408b:	04 fb                	add    $0xfb,%al
   18008408d:	04 74                	add    $0x74,%al
   18008408f:	0d 75 0d 79 0d       	or     $0xd790d75,%eax
   180084094:	7a 0d                	jp     0x1800840a3
   180084096:	76 0d                	jbe    0x1800840a5
   180084098:	77 0d                	ja     0x1800840a7
   18008409a:	78 0d                	js     0x1800840a9
   18008409c:	ea                   	(bad)  
   18008409d:	04 fd                	add    $0xfd,%al
   18008409f:	04 fc                	add    $0xfc,%al
   1800840a1:	04 7b                	add    $0x7b,%al
   1800840a3:	04 f7                	add    $0xf7,%al
   1800840a5:	04 7b                	add    $0x7b,%al
   1800840a7:	01 7a 01             	add    %edi,0x1(%rdx)
   1800840aa:	6f                   	outsl  %ds:(%rsi),(%dx)
   1800840ab:	01 70 01             	add    %esi,0x1(%rax)
   1800840ae:	78 01                	js     0x1800840b1
   1800840b0:	77 01                	ja     0x1800840b3
   1800840b2:	a0 01 0c 01 72 01 75 	movabs 0x7101750172010c01,%al
   1800840b9:	01 71 
   1800840bb:	01 73 01             	add    %esi,0x1(%rbx)
   1800840be:	74 01                	je     0x1800840c1
   1800840c0:	0d 01 79 01 76       	or     $0x76017901,%eax
   1800840c5:	01 27                	add    %esp,(%rdi)
   1800840c7:	09 2a                	or     %ebp,(%rdx)
   1800840c9:	09 2c 09             	or     %ebp,(%rcx,%rcx,1)
   1800840cc:	2b 09                	sub    (%rcx),%ecx
   1800840ce:	28 09                	sub    %cl,(%rcx)
   1800840d0:	29 09                	sub    %ecx,(%rcx)
   1800840d2:	2c 08                	sub    $0x8,%al
   1800840d4:	2e 08 83 07 2f 08 2d 	cs or  %al,0x2d082f07(%rbx)
   1800840db:	08 31                	or     %dh,(%rcx)
   1800840dd:	08 30                	or     %dh,(%rax)
   1800840df:	08 b7 07 33 07 32    	or     %dh,0x32073307(%rdi)
   1800840e5:	07                   	(bad)  
   1800840e6:	36 07                	ss (bad) 
   1800840e8:	37                   	(bad)  
   1800840e9:	07                   	(bad)  
   1800840ea:	34 07                	xor    $0x7,%al
   1800840ec:	38 07                	cmp    %al,(%rdi)
   1800840ee:	4d 07                	rex.WRB (bad) 
   1800840f0:	45 07                	rex.RB (bad) 
   1800840f2:	44 07                	rex.R (bad) 
   1800840f4:	4f 07                	rex.WRXB (bad) 
   1800840f6:	42 07                	rex.X (bad) 
   1800840f8:	48 07                	rex.W (bad) 
   1800840fa:	49 07                	rex.WB (bad) 
   1800840fc:	41 07                	rex.B (bad) 
   1800840fe:	59                   	pop    %rcx
   1800840ff:	07                   	(bad)  
   180084100:	4e 07                	rex.WRX (bad) 
   180084102:	58                   	pop    %rax
   180084103:	07                   	(bad)  
   180084104:	5b                   	pop    %rbx
   180084105:	07                   	(bad)  
   180084106:	5a                   	pop    %rdx
   180084107:	07                   	(bad)  
   180084108:	40 07                	rex (bad) 
   18008410a:	43 07                	rex.XB (bad) 
   18008410c:	4c 07                	rex.WR (bad) 
   18008410e:	4a 07                	rex.WX (bad) 
   180084110:	39 07                	cmp    %eax,(%rdi)
   180084112:	3a 07                	cmp    (%rdi),%al
   180084114:	46 07                	rex.RX (bad) 
   180084116:	47 07                	rex.RXB (bad) 
   180084118:	3d 07 3b 07 3e       	cmp    $0x3e073b07,%eax
   18008411d:	07                   	(bad)  
   18008411e:	3f                   	(bad)  
   18008411f:	07                   	(bad)  
   180084120:	4b 07                	rex.WXB (bad) 
   180084122:	3c 07                	cmp    $0x7,%al
   180084124:	52                   	push   %rdx
   180084125:	07                   	(bad)  
   180084126:	54                   	push   %rsp
   180084127:	07                   	(bad)  
   180084128:	53                   	push   %rbx
   180084129:	07                   	(bad)  
   18008412a:	55                   	push   %rbp
   18008412b:	07                   	(bad)  
   18008412c:	51                   	push   %rcx
   18008412d:	07                   	(bad)  
   18008412e:	50                   	push   %rax
   18008412f:	07                   	(bad)  
   180084130:	57                   	push   %rdi
   180084131:	07                   	(bad)  
   180084132:	56                   	push   %rsi
   180084133:	07                   	(bad)  
   180084134:	35 07 2a 08 d4       	xor    $0xd4082a07,%eax
   180084139:	06                   	(bad)  
   18008413a:	2b 08                	sub    (%rax),%ecx
   18008413c:	cc                   	int3   
   18008413d:	07                   	(bad)  
   18008413e:	cb                   	lret   
   18008413f:	07                   	(bad)  
   180084140:	0a 08                	or     (%rax),%cl
   180084142:	07                   	(bad)  
   180084143:	08 08                	or     %cl,(%rax)
   180084145:	08 09                	or     %cl,(%rcx)
   180084147:	08 e2                	or     %ah,%dl
   180084149:	06                   	(bad)  
   18008414a:	db 06                	fildl  (%rsi)
   18008414c:	26 07                	es (bad) 
   18008414e:	df 06                	filds  (%rsi)
   180084150:	de 06                	fiadds (%rsi)
   180084152:	dc 06                	faddl  (%rsi)
   180084154:	dd 06                	fldl   (%rsi)
   180084156:	d1 06                	roll   (%rsi)
   180084158:	d2 06                	rolb   %cl,(%rsi)
   18008415a:	e1 06                	loope  0x180084162
   18008415c:	e0 06                	loopne 0x180084164
   18008415e:	12 07                	adc    (%rdi),%al
   180084160:	11 07                	adc    %eax,(%rdi)
   180084162:	05 08 d8 06 d0       	add    $0xd006d808,%eax
   180084167:	06                   	(bad)  
   180084168:	cd 06                	int    $0x6
   18008416a:	cc                   	int3   
   18008416b:	06                   	(bad)  
   18008416c:	ce                   	(bad)  
   18008416d:	06                   	(bad)  
   18008416e:	cf                   	iret   
   18008416f:	06                   	(bad)  
   180084170:	d9 06                	flds   (%rsi)
   180084172:	15 07 13 07 14       	adc    $0x14071307,%eax
   180084177:	07                   	(bad)  
   180084178:	16                   	(bad)  
   180084179:	07                   	(bad)  
   18008417a:	c4                   	(bad)  
   18008417b:	06                   	(bad)  
   18008417c:	c5 06 1e             	(bad)
   18008417f:	07                   	(bad)  
   180084180:	1f                   	(bad)  
   180084181:	07                   	(bad)  
   180084182:	c7 06 1d 07 c6 06    	movl   $0x6c6071d,(%rsi)
   180084188:	c8 06 c9 06          	enter  $0xc906,$0x6
   18008418c:	24 07                	and    $0x7,%al
   18008418e:	23 07                	and    (%rdi),%eax
   180084190:	25 07 c3 06 f3       	and    $0xf306c307,%eax
   180084195:	06                   	(bad)  
   180084196:	ca 06 20             	lret   $0x2006
   180084199:	07                   	(bad)  
   18008419a:	21 07                	and    %eax,(%rdi)
   18008419c:	1c 07                	sbb    $0x7,%al
   18008419e:	1b 07                	sbb    (%rdi),%eax
   1800841a0:	19 07                	sbb    %eax,(%rdi)
   1800841a2:	17                   	(bad)  
   1800841a3:	07                   	(bad)  
   1800841a4:	1a 07                	sbb    (%rdi),%al
   1800841a6:	18 07                	sbb    %al,(%rdi)
   1800841a8:	cb                   	lret   
   1800841a9:	06                   	(bad)  
   1800841aa:	f0 06                	lock (bad) 
   1800841ac:	ef                   	out    %eax,(%dx)
   1800841ad:	06                   	(bad)  
   1800841ae:	f1                   	int1   
   1800841af:	06                   	(bad)  
   1800841b0:	c2 06 d3             	ret    $0xd306
   1800841b3:	06                   	(bad)  
   1800841b4:	e7 06                	out    %eax,$0x6
   1800841b6:	f1                   	int1   
   1800841b7:	07                   	(bad)  
   1800841b8:	27                   	(bad)  
   1800841b9:	07                   	(bad)  
   1800841ba:	29 07                	sub    %eax,(%rdi)
   1800841bc:	28 07                	sub    %al,(%rdi)
   1800841be:	f9                   	stc    
   1800841bf:	06                   	(bad)  
   1800841c0:	fa                   	cli    
   1800841c1:	06                   	(bad)  
   1800841c2:	fd                   	std    
   1800841c3:	06                   	(bad)  
   1800841c4:	05 07 08 07 0b       	add    $0xb070807,%eax
   1800841c9:	07                   	(bad)  
   1800841ca:	06                   	(bad)  
   1800841cb:	07                   	(bad)  
   1800841cc:	09 07                	or     %eax,(%rdi)
   1800841ce:	07                   	(bad)  
   1800841cf:	07                   	(bad)  
   1800841d0:	0a 07                	or     (%rdi),%al
   1800841d2:	f7 06 f6 06 0c 07    	testl  $0x70c06f6,(%rsi)
   1800841d8:	e3 06                	jrcxz  0x1800841e0
   1800841da:	e6 06                	out    %al,$0x6
   1800841dc:	e4 06                	in     $0x6,%al
   1800841de:	e5 06                	in     $0x6,%eax
   1800841e0:	24 08                	and    $0x8,%al
   1800841e2:	ff 06                	incl   (%rsi)
   1800841e4:	03 07                	add    (%rdi),%eax
   1800841e6:	02 07                	add    (%rdi),%al
   1800841e8:	01 07                	add    %eax,(%rdi)
   1800841ea:	04 07                	add    $0x7,%al
   1800841ec:	00 07                	add    %al,(%rdi)
   1800841ee:	fc                   	cld    
   1800841ef:	06                   	(bad)  
   1800841f0:	ea                   	(bad)  
   1800841f1:	06                   	(bad)  
   1800841f2:	f2 06                	repnz (bad) 
   1800841f4:	eb 06                	jmp    0x1800841fc
   1800841f6:	ec                   	in     (%dx),%al
   1800841f7:	06                   	(bad)  
   1800841f8:	e9 06 ed 06 ee       	jmp    0x16e0f2f03
   1800841fd:	06                   	(bad)  
   1800841fe:	e8 06 10 07 fb       	call   0x17b0f5209
   180084203:	06                   	(bad)  
   180084204:	f8                   	clc    
   180084205:	06                   	(bad)  
   180084206:	fe 06                	incb   (%rsi)
   180084208:	f4                   	hlt    
   180084209:	06                   	(bad)  
   18008420a:	f5                   	cmc    
   18008420b:	06                   	(bad)  
   18008420c:	0d 07 0e 07 0f       	or     $0xf070e07,%eax
   180084211:	07                   	(bad)  
   180084212:	ad                   	lods   %ds:(%rsi),%eax
   180084213:	07                   	(bad)  
   180084214:	b6 07                	mov    $0x7,%dh
   180084216:	e3 07                	jrcxz  0x18008421f
   180084218:	d3 07                	roll   %cl,(%rdi)
   18008421a:	d4                   	(bad)  
   18008421b:	07                   	(bad)  
   18008421c:	af                   	scas   %es:(%rdi),%eax
   18008421d:	07                   	(bad)  
   18008421e:	d5                   	(bad)  
   18008421f:	07                   	(bad)  
   180084220:	da 07                	fiaddl (%rdi)
   180084222:	19 08                	sbb    %ecx,(%rax)
   180084224:	18 08                	sbb    %cl,(%rax)
   180084226:	1d 08 17 08 1b       	sbb    $0x1b081708,%eax
   18008422b:	08 16                	or     %dl,(%rsi)
   18008422d:	08 1a                	or     %bl,(%rdx)
   18008422f:	08 1c 08             	or     %bl,(%rax,%rcx,1)
   180084232:	34 08                	xor    $0x8,%al
   180084234:	33 08                	xor    (%rax),%ecx
   180084236:	d7                   	xlat   %ds:(%rbx)
   180084237:	07                   	(bad)  
   180084238:	d8 07                	fadds  (%rdi)
   18008423a:	d6                   	(bad)  
   18008423b:	07                   	(bad)  
   18008423c:	d9 07                	flds   (%rdi)
   18008423e:	db 07                	fildl  (%rdi)
   180084240:	c0 07 c2             	rolb   $0xc2,(%rdi)
   180084243:	07                   	(bad)  
   180084244:	be 07 bf 07 c4       	mov    $0xc407bf07,%esi
   180084249:	07                   	(bad)  
   18008424a:	bb 07 ba 07 bc       	mov    $0xbc07ba07,%ebx
   18008424f:	07                   	(bad)  
   180084250:	c1 07 bd             	roll   $0xbd,(%rdi)
   180084253:	07                   	(bad)  
   180084254:	c3                   	ret    
   180084255:	07                   	(bad)  
   180084256:	b0 07                	mov    $0x7,%al
   180084258:	b5 07                	mov    $0x7,%ch
   18008425a:	b3 07                	mov    $0x7,%bl
   18008425c:	b2 07                	mov    $0x7,%dl
   18008425e:	df 07                	filds  (%rdi)
   180084260:	e0 07                	loopne 0x180084269
   180084262:	e1 07                	loope  0x18008426b
   180084264:	e2 07                	loop   0x18008426d
   180084266:	b1 07                	mov    $0x7,%cl
   180084268:	dd 07                	fldl   (%rdi)
   18008426a:	dc 07                	faddl  (%rdi)
   18008426c:	de 07                	fiadds (%rdi)
   18008426e:	b4 07                	mov    $0x7,%ah
   180084270:	ca 07 cd             	lret   $0xcd07
   180084273:	07                   	(bad)  
   180084274:	b8 07 b9 07 e5       	mov    $0xe507b907,%eax
   180084279:	07                   	(bad)  
   18008427a:	e6 07                	out    %al,$0x7
   18008427c:	e4 07                	in     $0x7,%al
   18008427e:	e8 07 e7 07 22       	call   0x1a210298a
   180084283:	08 25 08 26 08 27    	or     %ah,0x27082608(%rip)        # 0x1a7106891
   180084289:	08 28                	or     %ch,(%rax)
   18008428b:	08 29                	or     %ch,(%rcx)
   18008428d:	08 d1                	or     %dl,%cl
   18008428f:	07                   	(bad)  
   180084290:	d2 07                	rolb   %cl,(%rdi)
   180084292:	cf                   	iret   
   180084293:	07                   	(bad)  
   180084294:	d0 07                	rolb   (%rdi)
   180084296:	ce                   	(bad)  
   180084297:	07                   	(bad)  
   180084298:	32 08                	xor    (%rax),%cl
   18008429a:	c9                   	leave  
   18008429b:	07                   	(bad)  
   18008429c:	c6 07 c5             	movb   $0xc5,(%rdi)
   18008429f:	07                   	(bad)  
   1800842a0:	c7 07 c8 07 23 08    	movl   $0x82307c8,(%rdi)
   1800842a6:	1f                   	(bad)  
   1800842a7:	08 21                	or     %ah,(%rcx)
   1800842a9:	08 0b                	or     %cl,(%rbx)
   1800842ab:	08 f7                	or     %dh,%bh
   1800842ad:	07                   	(bad)  
   1800842ae:	1e                   	(bad)  
   1800842af:	08 03                	or     %al,(%rbx)
   1800842b1:	08 0c 08             	or     %cl,(%rax,%rcx,1)
   1800842b4:	20 08                	and    %cl,(%rax)
   1800842b6:	00 08                	add    %cl,(%rax)
   1800842b8:	0d 08 02 08 01       	or     $0x1080208,%eax
   1800842bd:	08 d6                	or     %dl,%dh
   1800842bf:	06                   	(bad)  
   1800842c0:	31 07                	xor    %eax,(%rdi)
   1800842c2:	2f                   	(bad)  
   1800842c3:	07                   	(bad)  
   1800842c4:	30 07                	xor    %al,(%rdi)
   1800842c6:	68 07 5d 07 64       	push   $0x64075d07
   1800842cb:	07                   	(bad)  
   1800842cc:	75 07                	jne    0x1800842d5
   1800842ce:	76 07                	jbe    0x1800842d7
   1800842d0:	69 07 6b 07 6a 07    	imul   $0x76a076b,(%rdi),%eax
   1800842d6:	6c                   	insb   (%dx),%es:(%rdi)
   1800842d7:	07                   	(bad)  
   1800842d8:	77 07                	ja     0x1800842e1
   1800842da:	61                   	(bad)  
   1800842db:	07                   	(bad)  
   1800842dc:	7a 07                	jp     0x1800842e5
   1800842de:	7c 07                	jl     0x1800842e7
   1800842e0:	7b 07                	jnp    0x1800842e9
   1800842e2:	7d 07                	jge    0x1800842eb
   1800842e4:	80 07 7e             	addb   $0x7e,(%rdi)
   1800842e7:	07                   	(bad)  
   1800842e8:	7f 07                	jg     0x1800842f1
   1800842ea:	81 07 63 07 62 07    	addl   $0x7620763,(%rdi)
   1800842f0:	74 07                	je     0x1800842f9
   1800842f2:	66 07                	data16 (bad) 
   1800842f4:	5e                   	pop    %rsi
   1800842f5:	07                   	(bad)  
   1800842f6:	82                   	(bad)  
   1800842f7:	07                   	(bad)  
   1800842f8:	65 07                	gs (bad) 
   1800842fa:	5f                   	pop    %rdi
   1800842fb:	07                   	(bad)  
   1800842fc:	67 07                	addr32 (bad) 
   1800842fe:	60                   	(bad)  
   1800842ff:	07                   	(bad)  
   180084300:	6f                   	outsl  %ds:(%rsi),(%dx)
   180084301:	07                   	(bad)  
   180084302:	6e                   	outsb  %ds:(%rsi),(%dx)
   180084303:	07                   	(bad)  
   180084304:	6d                   	insl   (%dx),%es:(%rdi)
   180084305:	07                   	(bad)  
   180084306:	70 07                	jo     0x18008430f
   180084308:	72 07                	jb     0x180084311
   18008430a:	73 07                	jae    0x180084313
   18008430c:	71 07                	jno    0x180084315
   18008430e:	78 07                	js     0x180084317
   180084310:	79 07                	jns    0x180084319
   180084312:	2e 07                	cs (bad) 
   180084314:	85 07                	test   %eax,(%rdi)
   180084316:	5c                   	pop    %rsp
   180084317:	07                   	(bad)  
   180084318:	2d 07 84 07 d5       	sub    $0xd5078407,%eax
   18008431d:	06                   	(bad)  
   18008431e:	2c 07                	sub    $0x7,%al
   180084320:	da 06                	fiaddl (%rsi)
   180084322:	87 07                	xchg   %eax,(%rdi)
   180084324:	86 07                	xchg   %al,(%rdi)
   180084326:	9c                   	pushf  
   180084327:	07                   	(bad)  
   180084328:	9b                   	fwait
   180084329:	07                   	(bad)  
   18008432a:	9d                   	popf   
   18008432b:	07                   	(bad)  
   18008432c:	8c 07                	mov    %es,(%rdi)
   18008432e:	9f                   	lahf   
   18008432f:	07                   	(bad)  
   180084330:	8e 07                	mov    (%rdi),%es
   180084332:	9e                   	sahf   
   180084333:	07                   	(bad)  
   180084334:	8d 07                	lea    (%rdi),%eax
   180084336:	98                   	cwtl   
   180084337:	07                   	(bad)  
   180084338:	8f 07                	pop    (%rdi)
   18008433a:	8b 07                	mov    (%rdi),%eax
   18008433c:	88 07                	mov    %al,(%rdi)
   18008433e:	89 07                	mov    %eax,(%rdi)
   180084340:	8a 07                	mov    (%rdi),%al
   180084342:	94                   	xchg   %eax,%esp
   180084343:	07                   	(bad)  
   180084344:	93                   	xchg   %eax,%ebx
   180084345:	07                   	(bad)  
   180084346:	91                   	xchg   %eax,%ecx
   180084347:	07                   	(bad)  
   180084348:	92                   	xchg   %eax,%edx
   180084349:	07                   	(bad)  
   18008434a:	97                   	xchg   %eax,%edi
   18008434b:	07                   	(bad)  
   18008434c:	95                   	xchg   %eax,%ebp
   18008434d:	07                   	(bad)  
   18008434e:	96                   	xchg   %eax,%esi
   18008434f:	07                   	(bad)  
   180084350:	9a                   	(bad)  
   180084351:	07                   	(bad)  
   180084352:	99                   	cltd   
   180084353:	07                   	(bad)  
   180084354:	90                   	nop
   180084355:	07                   	(bad)  
   180084356:	2a 07                	sub    (%rdi),%al
   180084358:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   180084359:	07                   	(bad)  
   18008435a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008435b:	07                   	(bad)  
   18008435c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008435d:	07                   	(bad)  
   18008435e:	a8 07                	test   $0x7,%al
   180084360:	a0 07 a3 07 ac 07 a1 	movabs 0xaa07a107ac07a307,%al
   180084367:	07 aa 
   180084369:	07                   	(bad)  
   18008436a:	ab                   	stos   %eax,%es:(%rdi)
   18008436b:	07                   	(bad)  
   18008436c:	a2 07 a4 07 2b 07 d7 	movabs %al,0xa906d7072b07a407
   180084373:	06 a9 
   180084375:	07                   	(bad)  
   180084376:	eb 07                	jmp    0x18008437f
   180084378:	ec                   	in     (%dx),%al
   180084379:	07                   	(bad)  
   18008437a:	ed                   	in     (%dx),%eax
   18008437b:	07                   	(bad)  
   18008437c:	ee                   	out    %al,(%dx)
   18008437d:	07                   	(bad)  
   18008437e:	ef                   	out    %eax,(%dx)
   18008437f:	07                   	(bad)  
   180084380:	0e                   	(bad)  
   180084381:	08 0f                	or     %cl,(%rdi)
   180084383:	08 11                	or     %dl,(%rcx)
   180084385:	08 15 08 14 08 10    	or     %dl,0x10081408(%rip)        # 0x190105793
   18008438b:	08 13                	or     %dl,(%rbx)
   18008438d:	08 12                	or     %dl,(%rdx)
   18008438f:	08 06                	or     %al,(%rsi)
   180084391:	08 f6                	or     %dh,%dh
   180084393:	07                   	(bad)  
   180084394:	04 08                	add    $0x8,%al
   180084396:	f0 07                	lock (bad) 
   180084398:	f5                   	cmc    
   180084399:	07                   	(bad)  
   18008439a:	ff 07                	incl   (%rdi)
   18008439c:	f8                   	clc    
   18008439d:	07                   	(bad)  
   18008439e:	f9                   	stc    
   18008439f:	07                   	(bad)  
   1800843a0:	fa                   	cli    
   1800843a1:	07                   	(bad)  
   1800843a2:	fd                   	std    
   1800843a3:	07                   	(bad)  
   1800843a4:	fc                   	cld    
   1800843a5:	07                   	(bad)  
   1800843a6:	fb                   	sti    
   1800843a7:	07                   	(bad)  
   1800843a8:	fe 07                	incb   (%rdi)
   1800843aa:	f4                   	hlt    
   1800843ab:	07                   	(bad)  
   1800843ac:	f3 07                	repz (bad) 
   1800843ae:	f2 07                	repnz (bad) 
   1800843b0:	ea                   	(bad)  
   1800843b1:	07                   	(bad)  
   1800843b2:	22 07                	and    (%rdi),%al
   1800843b4:	b1 0d                	mov    $0xd,%cl
   1800843b6:	b2 0d                	mov    $0xd,%dl
   1800843b8:	d2 0d b5 0d b7 0d    	rorb   %cl,0xdb70db5(%rip)        # 0x18dbf5173
   1800843be:	b6 0d                	mov    $0xd,%dh
   1800843c0:	d1 0d b9 0d b8 0d    	rorl   0xdb80db9(%rip)        # 0x18dc0517f
   1800843c6:	be 0d ca 0d c3       	mov    $0xc30dca0d,%esi
   1800843cb:	0d bf 0d bd 0d       	or     $0xdbd0dbf,%eax
   1800843d0:	c6                   	(bad)  
   1800843d1:	0d c7 0d c9 0d       	or     $0xdc90dc7,%eax
   1800843d6:	c8 0d cb 0d          	enter  $0xcb0d,$0xd
   1800843da:	ba 0d c4 0d bb       	mov    $0xbb0dc40d,%edx
   1800843df:	0d bc 0d c0 0d       	or     $0xdc00dbc,%eax
   1800843e4:	c2 0d c1             	ret    $0xc10d
   1800843e7:	0d c5 0d ce 0d       	or     $0xdce0dc5,%eax
   1800843ec:	cf                   	iret   
   1800843ed:	0d cc 0d cd 0d       	or     $0xdcd0dcc,%eax
   1800843f2:	b4 0d                	mov    $0xd,%ah
   1800843f4:	d0 0d b3 0d db 0d    	rorb   0xddb0db3(%rip)        # 0x18de351ad
   1800843fa:	dc 0d df 0d e0 0d    	fmull  0xde00ddf(%rip)        # 0x18de851df
   180084400:	ea                   	(bad)  
   180084401:	0d de 0d eb 0d       	or     $0xdeb0dde,%eax
   180084406:	dd 0d e1 0d e5 0d    	fisttpll 0xde50de1(%rip)        # 0x18ded51ed
   18008440c:	e4 0d                	in     $0xd,%al
   18008440e:	e2 0d                	loop   0x18008441d
   180084410:	e3 0d                	jrcxz  0x18008441f
   180084412:	2d 0d 25 0d e7       	sub    $0xe70d250d,%eax
   180084417:	0d da 0d 34 0d       	or     $0xd340dda,%eax
   18008441c:	e9 0d e8 0d 36       	jmp    0x1b6162c2e
   180084421:	0d 37 0d 38 0d       	or     $0xd380d37,%eax
   180084426:	24 0d                	and    $0xd,%al
   180084428:	e6 0d                	out    %al,$0xd
   18008442a:	ee                   	out    %al,(%dx)
   18008442b:	0d ec 0d ed 0d       	or     $0xded0dec,%eax
   180084430:	d7                   	xlat   %ds:(%rbx)
   180084431:	0d d5 0d d6 0d       	or     $0xdd60dd5,%eax
   180084436:	d8 0d d9 0d d4 0d    	fmuls  0xdd40dd9(%rip)        # 0x18ddc5215
   18008443c:	bb 09 80 06 be       	mov    $0xbe068009,%ebx
   180084441:	09 bf 09 a8 09 62    	or     %edi,0x6209a809(%rdi)
   180084447:	09 75 06             	or     %esi,0x6(%rbp)
   18008444a:	af                   	scas   %es:(%rdi),%eax
   18008444b:	09 73 06             	or     %esi,0x6(%rbx)
   18008444e:	74 06                	je     0x180084456
   180084450:	b1 09                	mov    $0x9,%cl
   180084452:	82                   	(bad)  
   180084453:	06                   	(bad)  
   180084454:	ae                   	scas   %es:(%rdi),%al
   180084455:	09 b0 09 76 06 72    	or     %esi,0x72067609(%rax)
   18008445b:	06                   	(bad)  
   18008445c:	86 06                	xchg   %al,(%rsi)
   18008445e:	87 06                	xchg   %eax,(%rsi)
   180084460:	78 06                	js     0x180084468
   180084462:	37                   	(bad)  
   180084463:	06                   	(bad)  
   180084464:	a1 09 a2 09 a4 09 a3 	movabs 0x4709a309a409a209,%eax
   18008446b:	09 47 
   18008446d:	06                   	(bad)  
   18008446e:	e5 09                	in     $0x9,%eax
   180084470:	4c 06                	rex.WR (bad) 
   180084472:	4d 06                	rex.WRB (bad) 
   180084474:	2d 06 6e 09 b3       	sub    $0xb3096e06,%eax
   180084479:	06                   	(bad)  
   18008447a:	f0 09 ef             	lock or %ebp,%edi
   18008447d:	09 2e                	or     %ebp,(%rsi)
   18008447f:	06                   	(bad)  
   180084480:	60                   	(bad)  
   180084481:	09 ee                	or     %ebp,%esi
   180084483:	09 61 09             	or     %esp,0x9(%rcx)
   180084486:	5e                   	pop    %rsi
   180084487:	09 f8                	or     %edi,%eax
   180084489:	09 46 06             	or     %eax,0x6(%rsi)
   18008448c:	45 06                	rex.RB (bad) 
   18008448e:	b5 06                	mov    $0x6,%ch
   180084490:	b4 06                	mov    $0x6,%ah
   180084492:	b6 06                	mov    $0x6,%dh
   180084494:	b7 06                	mov    $0x6,%bh
   180084496:	f7 09 42 06 5b 09    	testl  $0x95b0642,(%rcx)
   18008449c:	5c                   	pop    %rsp
   18008449d:	09 5f 09             	or     %ebx,0x9(%rdi)
   1800844a0:	ed                   	in     (%dx),%eax
   1800844a1:	09 33                	or     %esi,(%rbx)
   1800844a3:	06                   	(bad)  
   1800844a4:	af                   	scas   %es:(%rdi),%eax
   1800844a5:	06                   	(bad)  
   1800844a6:	b0 06                	mov    $0x6,%al
   1800844a8:	b1 06                	mov    $0x6,%cl
   1800844aa:	b2 06                	mov    $0x6,%dl
   1800844ac:	6d                   	insl   (%dx),%es:(%rdi)
   1800844ad:	09 2c 06             	or     %ebp,(%rsi,%rax,1)
   1800844b0:	6b 09 3a             	imul   $0x3a,(%rcx),%ecx
   1800844b3:	06                   	(bad)  
   1800844b4:	2b 06                	sub    (%rsi),%eax
   1800844b6:	39 06                	cmp    %eax,(%rsi)
   1800844b8:	43 06                	rex.XB (bad) 
   1800844ba:	3b 06                	cmp    (%rsi),%eax
   1800844bc:	3c 06                	cmp    $0x6,%al
   1800844be:	f4                   	hlt    
   1800844bf:	09 41 06             	or     %eax,0x6(%rcx)
   1800844c2:	3d 06 3f 06 3e       	cmp    $0x3e063f06,%eax
   1800844c7:	06                   	(bad)  
   1800844c8:	40 06                	rex (bad) 
   1800844ca:	f6 09 f5             	testb  $0xf5,(%rcx)
   1800844cd:	09 f2                	or     %esi,%edx
   1800844cf:	09 99 09 f3 09 6a    	or     %ebx,0x6a09f309(%rcx)
   1800844d5:	09 36                	or     %esi,(%rsi)
   1800844d7:	06                   	(bad)  
   1800844d8:	34 06                	xor    $0x6,%al
   1800844da:	35 06 a5 09 6e       	xor    $0x6e09a506,%eax
   1800844df:	06                   	(bad)  
   1800844e0:	75 09                	jne    0x1800844eb
   1800844e2:	74 09                	je     0x1800844ed
   1800844e4:	70 09                	jo     0x1800844ef
   1800844e6:	71 09                	jno    0x1800844f1
   1800844e8:	72 09                	jb     0x1800844f3
   1800844ea:	73 09                	jae    0x1800844f5
   1800844ec:	c0 09 c2             	rorb   $0xc2,(%rcx)
   1800844ef:	09 c3                	or     %eax,%ebx
   1800844f1:	09 ac 09 65 06 81 06 	or     %ebp,0x6810665(%rcx,%rcx,1)
   1800844f8:	71 06                	jno    0x180084500
   1800844fa:	b5 09                	mov    $0x9,%ch
   1800844fc:	b6 09                	mov    $0x9,%dh
   1800844fe:	b4 09                	mov    $0x9,%ah
   180084500:	b2 09                	mov    $0x9,%dl
   180084502:	b8 09 b3 09 b7       	mov    $0xb709b309,%eax
   180084507:	09 c1                	or     %eax,%ecx
   180084509:	06                   	(bad)  
   18008450a:	9b                   	fwait
   18008450b:	09 bd 09 a7 09 aa    	or     %edi,-0x55f658f7(%rbp)
   180084511:	09 a9 09 ab 09 83    	or     %ebp,-0x7cf654f7(%rcx)
   180084517:	06                   	(bad)  
   180084518:	84 06                	test   %al,(%rsi)
   18008451a:	85 06                	test   %eax,(%rsi)
   18008451c:	7f 06                	jg     0x180084524
   18008451e:	70 06                	jo     0x180084526
   180084520:	6f                   	outsl  %ds:(%rsi),(%dx)
   180084521:	06                   	(bad)  
   180084522:	c4                   	(bad)  
   180084523:	09 c1                	or     %eax,%ecx
   180084525:	09 8d 09 c0 06 8e    	or     %ecx,-0x71f93ff7(%rbp)
   18008452b:	09 8f 09 bc 09 a6    	or     %ecx,-0x59f643f7(%rdi)
   180084531:	09 7a 06             	or     %edi,0x6(%rdx)
   180084534:	97                   	xchg   %eax,%edi
   180084535:	09 fb                	or     %edi,%ebx
   180084537:	09 fd                	or     %edi,%ebp
   180084539:	09 fe                	or     %edi,%esi
   18008453b:	09 ff                	or     %edi,%edi
   18008453d:	09 00                	or     %eax,(%rax)
   18008453f:	0a fc                	or     %ah,%bh
   180084541:	09 fa                	or     %edi,%edx
   180084543:	09 bd 06 79 06 77    	or     %edi,0x77067906(%rbp)
   180084549:	06                   	(bad)  
   18008454a:	9f                   	lahf   
   18008454b:	09 9e 09 7b 06 ba    	or     %ebx,-0x45f984f7(%rsi)
   180084551:	09 b9 09 7d 06 7e    	or     %edi,0x7e067d09(%rcx)
   180084557:	06                   	(bad)  
   180084558:	7c 06                	jl     0x180084560
   18008455a:	91                   	xchg   %eax,%ecx
   18008455b:	09 ad 09 6f 09 52    	or     %ebp,0x52096f09(%rbp)
   180084561:	06                   	(bad)  
   180084562:	54                   	push   %rsp
   180084563:	06                   	(bad)  
   180084564:	53                   	push   %rbx
   180084565:	06                   	(bad)  
   180084566:	bc 06 ad 06 ac       	mov    $0xac06ad06,%esp
   18008456b:	06                   	(bad)  
   18008456c:	50                   	push   %rax
   18008456d:	06                   	(bad)  
   18008456e:	b9 06 be 06 f9       	mov    $0xf906be06,%ecx
   180084573:	09 51 06             	or     %edx,0x6(%rcx)
   180084576:	a1 06 a0 06 98 09 ec 	movabs 0xbb09ec099806a006,%eax
   18008457d:	09 bb 
   18008457f:	06                   	(bad)  
   180084580:	b8 06 ba 06 4e       	mov    $0x4e06ba06,%eax
   180084585:	06                   	(bad)  
   180084586:	5c                   	pop    %rsp
   180084587:	06                   	(bad)  
   180084588:	d8 09                	fmuls  (%rcx)
   18008458a:	e4 09                	in     $0x9,%al
   18008458c:	e3 09                	jrcxz  0x180084597
   18008458e:	f1                   	int1   
   18008458f:	09 6d 06             	or     %ebp,0x6(%rbp)
   180084592:	38 06                	cmp    %al,(%rsi)
   180084594:	68 09 69 09 5d       	push   $0x5d096909
   180084599:	09 32                	or     %esi,(%rdx)
   18008459b:	06                   	(bad)  
   18008459c:	a0 09 5a 06 5b 06 63 	movabs 0x640963065b065a09,%al
   1800845a3:	09 64 
   1800845a5:	09 65 09             	or     %esp,0x9(%rbp)
   1800845a8:	67 09 66 09          	or     %esp,0x9(%esi)
   1800845ac:	6b 06 6c             	imul   $0x6c,(%rsi),%eax
   1800845af:	06                   	(bad)  
   1800845b0:	60                   	(bad)  
   1800845b1:	06                   	(bad)  
   1800845b2:	61                   	(bad)  
   1800845b3:	06                   	(bad)  
   1800845b4:	64 06                	fs (bad) 
   1800845b6:	62 06                	(bad)  
   1800845b8:	63 06                	movsxd (%rsi),%eax
   1800845ba:	56                   	push   %rsi
   1800845bb:	06                   	(bad)  
   1800845bc:	57                   	push   %rdi
   1800845bd:	06                   	(bad)  
   1800845be:	90                   	nop
   1800845bf:	09 93 09 66 06 9a    	or     %edx,-0x65f999f7(%rbx)
   1800845c5:	09 59 06             	or     %ebx,0x6(%rcx)
   1800845c8:	58                   	pop    %rax
   1800845c9:	06                   	(bad)  
   1800845ca:	92                   	xchg   %eax,%edx
   1800845cb:	09 69 06             	or     %ebp,0x6(%rcx)
   1800845ce:	6a 06                	push   $0x6
   1800845d0:	68 06 77 09 79       	push   $0x79097706
   1800845d5:	09 7a 09             	or     %edi,0x9(%rdx)
   1800845d8:	78 09                	js     0x1800845e3
   1800845da:	76 09                	jbe    0x1800845e5
   1800845dc:	81 09 83 09 7e 09    	orl    $0x97e0983,(%rcx)
   1800845e2:	85 09                	test   %ecx,(%rcx)
   1800845e4:	84 09                	test   %cl,(%rcx)
   1800845e6:	8a 09                	mov    (%rcx),%cl
   1800845e8:	8c 09                	mov    %cs,(%rcx)
   1800845ea:	7d 09                	jge    0x1800845f5
   1800845ec:	80 09 7f             	orb    $0x7f,(%rcx)
   1800845ef:	09 82 09 7c 09 7b    	or     %eax,0x7b097c09(%rdx)
   1800845f5:	09 87 09 88 09 89    	or     %eax,-0x76f677f7(%rdi)
   1800845fb:	09 86 09 2f 06 31    	or     %eax,0x31062f09(%rsi)
   180084601:	06                   	(bad)  
   180084602:	30 06                	xor    %al,(%rsi)
   180084604:	5f                   	pop    %rdi
   180084605:	06                   	(bad)  
   180084606:	6c                   	insb   (%dx),%es:(%rdi)
   180084607:	09 4f 06             	or     %ecx,0x6(%rdi)
   18008460a:	5d                   	pop    %rbp
   18008460b:	06                   	(bad)  
   18008460c:	5e                   	pop    %rsi
   18008460d:	06                   	(bad)  
   18008460e:	96                   	xchg   %eax,%esi
   18008460f:	09 9c 09 9d 09 44 06 	or     %ebx,0x644099d(%rcx,%rcx,1)
   180084616:	67 06                	addr32 (bad) 
   180084618:	94                   	xchg   %eax,%esp
   180084619:	09 95 09 55 06 c6    	or     %edx,-0x39f9aaf7(%rbp)
   18008461f:	09 e9                	or     %ebp,%ecx
   180084621:	09 ea                	or     %ebp,%edx
   180084623:	09 eb                	or     %ebp,%ebx
   180084625:	09 e7                	or     %esp,%edi
   180084627:	09 e8                	or     %ebp,%eax
   180084629:	09 ce                	or     %ecx,%esi
   18008462b:	09 8e 06 d9 09 da    	or     %ecx,-0x25f626fa(%rsi)
   180084631:	09 8b 06 8a 06 8d    	or     %ecx,-0x72f975fa(%rbx)
   180084637:	06                   	(bad)  
   180084638:	8c 06                	mov    %es,(%rsi)
   18008463a:	e2 09                	loop   0x180084645
   18008463c:	db 09                	fisttpl (%rcx)
   18008463e:	cf                   	iret   
   18008463f:	09 d0                	or     %edx,%eax
   180084641:	09 cc                	or     %ecx,%esp
   180084643:	09 88 06 cd 09 cb    	or     %ecx,-0x34f632fa(%rax)
   180084649:	09 d1                	or     %edx,%ecx
   18008464b:	09 c7                	or     %eax,%edi
   18008464d:	09 89 06 ae 06 ca    	or     %ecx,-0x35f951fa(%rcx)
   180084653:	09 d7                	or     %edx,%edi
   180084655:	09 d2                	or     %edx,%edx
   180084657:	09 93 06 98 06 97    	or     %edx,-0x68f967fa(%rbx)
   18008465d:	06                   	(bad)  
   18008465e:	94                   	xchg   %eax,%esp
   18008465f:	06                   	(bad)  
   180084660:	96                   	xchg   %eax,%esi
   180084661:	06                   	(bad)  
   180084662:	9c                   	pushf  
   180084663:	06                   	(bad)  
   180084664:	95                   	xchg   %eax,%ebp
   180084665:	06                   	(bad)  
   180084666:	9a                   	(bad)  
   180084667:	06                   	(bad)  
   180084668:	9d                   	popf   
   180084669:	06                   	(bad)  
   18008466a:	99                   	cltd   
   18008466b:	06                   	(bad)  
   18008466c:	9b                   	fwait
   18008466d:	06                   	(bad)  
   18008466e:	9e                   	sahf   
   18008466f:	06                   	(bad)  
   180084670:	92                   	xchg   %eax,%edx
   180084671:	06                   	(bad)  
   180084672:	90                   	nop
   180084673:	06                   	(bad)  
   180084674:	91                   	xchg   %eax,%ecx
   180084675:	06                   	(bad)  
   180084676:	9f                   	lahf   
   180084677:	06                   	(bad)  
   180084678:	8f 06                	pop    (%rsi)
   18008467a:	e6 09                	out    %al,$0x9
   18008467c:	dd 09                	fisttpll (%rcx)
   18008467e:	dc 09                	fmull  (%rcx)
   180084680:	df 09                	fisttps (%rcx)
   180084682:	de 09                	fimuls (%rcx)
   180084684:	e0 09                	loopne 0x18008468f
   180084686:	e1 09                	loope  0x180084691
   180084688:	ab                   	stos   %eax,%es:(%rdi)
   180084689:	06                   	(bad)  
   18008468a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008468b:	06                   	(bad)  
   18008468c:	aa                   	stos   %al,%es:(%rdi)
   18008468d:	06                   	(bad)  
   18008468e:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
   18008468f:	06                   	(bad)  
   180084690:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   180084691:	06                   	(bad)  
   180084692:	a2 06 c5 09 a5 06 a3 	movabs %al,0xa906a306a509c506
   180084699:	06 a9 
   18008469b:	06                   	(bad)  
   18008469c:	a8 06                	test   $0x6,%al
   18008469e:	c9                   	leave  
   18008469f:	09 c8                	or     %ecx,%eax
   1800846a1:	09 d5                	or     %edx,%ebp
   1800846a3:	09 d6                	or     %edx,%esi
   1800846a5:	09 d4                	or     %edx,%esp
   1800846a7:	09 4b 06             	or     %ecx,0x6(%rbx)
   1800846aa:	d3 09                	rorl   %cl,(%rcx)
   1800846ac:	48 06                	rex.W (bad) 
   1800846ae:	49 06                	rex.WB (bad) 
   1800846b0:	4a 06                	rex.WX (bad) 
   1800846b2:	a1 0d 7b 0d 7c 0d 7e 	movabs 0x7d0d7e0d7c0d7b0d,%eax
   1800846b9:	0d 7d 
   1800846bb:	0d 7f 0d 80 0d       	or     $0xd800d7f,%eax
   1800846c0:	81 0d 60 0d 5f 0d 5e 	orl    $0xd610d5e,0xd5f0d60(%rip)        # 0x18d67542a
   1800846c7:	0d 61 0d 
   1800846ca:	68 0d 63 0d ca       	push   $0xffffffffca0d630d
   1800846cf:	08 cc                	or     %cl,%ah
   1800846d1:	08 a9 0d a4 0d a8    	or     %ch,-0x57f25bf3(%rcx)
   1800846d7:	0d a7 0d a5 0d       	or     $0xda50da7,%eax
   1800846dc:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
   1800846dd:	0d cb 08 cd 08       	or     $0x8cd08cb,%eax
   1800846e2:	ce                   	(bad)  
   1800846e3:	08 cf                	or     %cl,%bh
   1800846e5:	08 ab 0d 67 0d ac    	or     %ch,-0x53f298f3(%rbx)
   1800846eb:	0d ad 0d ae 0d       	or     $0xdae0dad,%eax
	...
   180084700:	48 01 c2             	add    %rax,%rdx
   180084703:	41 ff c4             	inc    %r12d
   180084706:	41 81 fc 23 09 00 00 	cmp    $0x923,%r12d
   18008470d:	73 05                	jae    0x180084714
   18008470f:	80 3a 00             	cmpb   $0x0,(%rdx)
   180084712:	75 1d                	jne    0x180084731
   180084714:	45 85 e4             	test   %r12d,%r12d
   180084717:	74 1e                	je     0x180084737
   180084719:	42 0f b7 8c 65 4e 04 	movzwl 0x44e(%rbp,%r12,2),%ecx
   180084720:	00 00 
   180084722:	80 3c 0e 20          	cmpb   $0x20,(%rsi,%rcx,1)
   180084726:	75 0f                	jne    0x180084737
   180084728:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
   18008472c:	41 ff cc             	dec    %r12d
   18008472f:	eb e3                	jmp    0x180084714
   180084731:	ff 25 99 c7 ff ff    	jmp    *-0x3867(%rip)        # 0x180080ed0
   180084737:	ff 25 9b c7 ff ff    	jmp    *-0x3865(%rip)        # 0x180080ed8
	...
   18008477d:	00 00                	add    %al,(%rax)
   18008477f:	00 44 39 e7          	add    %al,-0x19(%rcx,%rdi,1)
   180084783:	74 1c                	je     0x1800847a1
   180084785:	41 83 bb 80 25 00 00 	cmpl   $0x9,0x2580(%r11)
   18008478c:	09 
   18008478d:	73 12                	jae    0x1800847a1
   18008478f:	41 ff 83 80 25 00 00 	incl   0x2580(%r11)
   180084796:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   18008479b:	ff 25 3f c7 ff ff    	jmp    *-0x38c1(%rip)        # 0x180080ee0
   1800847a1:	ff 25 41 c7 ff ff    	jmp    *-0x38bf(%rip)        # 0x180080ee8
	...
