
g.dll:     file format pei-x86-64


Disassembly of section .text:

0000000180001000 <.text>:
   180001000:	push   %r15
   180001002:	push   %r14
   180001004:	push   %rsi
   180001005:	push   %rdi
   180001006:	push   %rbx
   180001007:	sub    $0x290,%rsp
   18000100e:	mov    %r9,%rsi
   180001011:	mov    %r8,%rdi
   180001014:	mov    %edx,%ebx
   180001016:	mov    %rcx,%r14
   180001019:	mov    0x6ff0(%rip),%rcx        # 0x180008010
   180001020:	test   %rcx,%rcx
   180001023:	jne    0x1800010b6
   180001029:	lea    0x30(%rsp),%r15
   18000102e:	mov    %r15,%rcx
   180001031:	mov    $0x208,%edx
   180001036:	call   *0x6974(%rip)        # 0x1800079b0
   18000103c:	lea    0x1(%rax),%ecx
   18000103f:	mov    %eax,%edx
   180001041:	movb   $0x5c,0x30(%rsp,%rdx,1)
   180001046:	lea    0x2(%rax),%edx
   180001049:	movb   $0x64,0x30(%rsp,%rcx,1)
   18000104e:	lea    0x3(%rax),%ecx
   180001051:	movb   $0x69,0x30(%rsp,%rdx,1)
   180001056:	lea    0x4(%rax),%edx
   180001059:	movb   $0x6e,0x30(%rsp,%rcx,1)
   18000105e:	lea    0x5(%rax),%ecx
   180001061:	movb   $0x70,0x30(%rsp,%rdx,1)
   180001066:	lea    0x6(%rax),%edx
   180001069:	movb   $0x75,0x30(%rsp,%rcx,1)
   18000106e:	lea    0x7(%rax),%ecx
   180001071:	movb   $0x74,0x30(%rsp,%rdx,1)
   180001076:	lea    0x8(%rax),%edx
   180001079:	movb   $0x38,0x30(%rsp,%rcx,1)
   18000107e:	lea    0x9(%rax),%ecx
   180001081:	movb   $0x2e,0x30(%rsp,%rdx,1)
   180001086:	lea    0xa(%rax),%edx
   180001089:	movb   $0x64,0x30(%rsp,%rcx,1)
   18000108e:	lea    0xb(%rax),%ecx
   180001091:	movb   $0x6c,0x30(%rsp,%rdx,1)
   180001096:	add    $0xc,%eax
   180001099:	movb   $0x6c,0x30(%rsp,%rcx,1)
   18000109e:	movb   $0x0,0x30(%rsp,%rax,1)
   1800010a3:	mov    %r15,%rcx
   1800010a6:	call   *0x6914(%rip)        # 0x1800079c0
   1800010ac:	mov    %rax,%rcx
   1800010af:	mov    %rax,0x6f5a(%rip)        # 0x180008010
   1800010b6:	lea    0x62cb(%rip),%rdx        # 0x180007388
   1800010bd:	call   *0x68e5(%rip)        # 0x1800079a8
   1800010c3:	test   %rax,%rax
   1800010c6:	je     0x1800010e4
   1800010c8:	mov    0x2e0(%rsp),%rcx
   1800010d0:	mov    %rcx,0x20(%rsp)
   1800010d5:	mov    %r14,%rcx
   1800010d8:	mov    %ebx,%edx
   1800010da:	mov    %rdi,%r8
   1800010dd:	mov    %rsi,%r9
   1800010e0:	call   *%rax
   1800010e2:	jmp    0x1800010e9
   1800010e4:	mov    $0x80004005,%eax
   1800010e9:	add    $0x290,%rsp
   1800010f0:	pop    %rbx
   1800010f1:	pop    %rdi
   1800010f2:	pop    %rsi
   1800010f3:	pop    %r14
   1800010f5:	pop    %r15
   1800010f7:	ret    
   1800010f8:	nopl   0x0(%rax,%rax,1)
   180001100:	push   %rsi
   180001101:	push   %rdi
   180001102:	sub    $0x298,%rsp
   180001109:	cmp    $0x1,%edx
   18000110c:	jne    0x18000159a
   180001112:	mov    %rcx,%rdi
   180001115:	mov    %rcx,0x6efc(%rip)        # 0x180008018
   18000111c:	xor    %ecx,%ecx
   18000111e:	call   *0x687c(%rip)        # 0x1800079a0
   180001124:	mov    %rax,0x6ef5(%rip)        # 0x180008020
   18000112b:	lea    0x6efe(%rip),%rcx        # 0x180008030
   180001132:	mov    %rcx,%rdx
   180001135:	sub    %rax,%rdx
   180001138:	add    $0xfffffffffffff000,%rdx
   18000113f:	cmp    $0xf,%rdx
   180001143:	ja     0x1800011cb
   180001149:	xor    %edx,%edx
   18000114b:	nopl   0x0(%rax,%rax,1)
   180001150:	movzbl 0x1000(%rax,%rdx,1),%r8d
   180001159:	mov    %r8b,(%rdx,%rcx,1)
   18000115d:	movzbl 0x1001(%rax,%rdx,1),%r8d
   180001166:	mov    %r8b,0x1(%rdx,%rcx,1)
   18000116b:	movzbl 0x1002(%rax,%rdx,1),%r8d
   180001174:	mov    %r8b,0x2(%rdx,%rcx,1)
   180001179:	movzbl 0x1003(%rax,%rdx,1),%r8d
   180001182:	mov    %r8b,0x3(%rdx,%rcx,1)
   180001187:	movzbl 0x1004(%rax,%rdx,1),%r8d
   180001190:	mov    %r8b,0x4(%rdx,%rcx,1)
   180001195:	movzbl 0x1005(%rax,%rdx,1),%r8d
   18000119e:	mov    %r8b,0x5(%rdx,%rcx,1)
   1800011a3:	movzbl 0x1006(%rax,%rdx,1),%r8d
   1800011ac:	mov    %r8b,0x6(%rdx,%rcx,1)
   1800011b1:	movzbl 0x1007(%rax,%rdx,1),%r8d
   1800011ba:	mov    %r8b,0x7(%rdx,%rcx,1)
   1800011bf:	add    $0x8,%rdx
   1800011c3:	cmp    $0x40,%rdx
   1800011c7:	jne    0x180001150
   1800011c9:	jmp    0x180001203
   1800011cb:	movups 0x1000(%rax),%xmm0
   1800011d2:	movaps %xmm0,0x6e57(%rip)        # 0x180008030
   1800011d9:	movups 0x1010(%rax),%xmm0
   1800011e0:	movaps %xmm0,0x6e59(%rip)        # 0x180008040
   1800011e7:	movups 0x1020(%rax),%xmm0
   1800011ee:	movaps %xmm0,0x6e5b(%rip)        # 0x180008050
   1800011f5:	movups 0x1030(%rax),%xmm0
   1800011fc:	movaps %xmm0,0x6e5d(%rip)        # 0x180008060
   180001203:	lea    0x6e66(%rip),%rsi        # 0x180008070
   18000120a:	mov    %rdi,%rcx
   18000120d:	mov    %rsi,%rdx
   180001210:	mov    $0x200,%r8d
   180001216:	call   *0x677c(%rip)        # 0x180007998
   18000121c:	mov    %eax,%ecx
   18000121e:	inc    %rcx
   180001221:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001230:	cmp    $0x1,%rcx
   180001234:	je     0x180001259
   180001236:	lea    -0x1(%rcx),%rax
   18000123a:	cmpb   $0x5c,-0x2(%rcx,%rsi,1)
   18000123f:	mov    %rax,%rcx
   180001242:	jne    0x180001230
   180001244:	mov    %eax,0x702e(%rip)        # 0x180008278
   18000124a:	mov    %eax,%edx
   18000124c:	cmp    $0x8,%rdx
   180001250:	jae    0x18000126a
   180001252:	xor    %ecx,%ecx
   180001254:	jmp    0x1800012ea
   180001259:	movl   $0x0,0x7015(%rip)        # 0x180008278
   180001263:	xor    %eax,%eax
   180001265:	jmp    0x180001302
   18000126a:	cmp    $0x20,%edx
   18000126d:	jae    0x180001273
   18000126f:	xor    %ecx,%ecx
   180001271:	jmp    0x1800012bb
   180001273:	mov    %eax,%r9d
   180001276:	mov    %eax,%r8d
   180001279:	and    $0x1f,%r8d
   18000127d:	mov    %rdx,%rcx
   180001280:	sub    %r8,%rcx
   180001283:	sub    %r8,%r9
   180001286:	xor    %r10d,%r10d
   180001289:	nopl   0x0(%rax)
   180001290:	movaps (%r10,%rsi,1),%xmm0
   180001295:	movaps 0x10(%r10,%rsi,1),%xmm1
   18000129b:	movaps %xmm0,0x40(%rsp,%r10,1)
   1800012a1:	movaps %xmm1,0x50(%rsp,%r10,1)
   1800012a7:	add    $0x20,%r10
   1800012ab:	cmp    %r10,%r9
   1800012ae:	jne    0x180001290
   1800012b0:	test   %r8,%r8
   1800012b3:	je     0x180001302
   1800012b5:	cmp    $0x8,%r8d
   1800012b9:	jb     0x1800012ea
   1800012bb:	mov    %eax,%r9d
   1800012be:	mov    %eax,%r8d
   1800012c1:	and    $0x7,%r8d
   1800012c5:	sub    %r8,%rdx
   1800012c8:	sub    %r8,%r9
   1800012cb:	nopl   0x0(%rax,%rax,1)
   1800012d0:	mov    (%rcx,%rsi,1),%r10
   1800012d4:	mov    %r10,0x40(%rsp,%rcx,1)
   1800012d9:	add    $0x8,%rcx
   1800012dd:	cmp    %rcx,%r9
   1800012e0:	jne    0x1800012d0
   1800012e2:	mov    %rdx,%rcx
   1800012e5:	test   %r8,%r8
   1800012e8:	je     0x180001302
   1800012ea:	mov    %eax,%edx
   1800012ec:	nopl   0x0(%rax)
   1800012f0:	movzbl (%rcx,%rsi,1),%r8d
   1800012f5:	mov    %r8b,0x40(%rsp,%rcx,1)
   1800012fa:	inc    %rcx
   1800012fd:	cmp    %rcx,%rdx
   180001300:	jne    0x1800012f0
   180001302:	lea    0x1(%rax),%ecx
   180001305:	mov    %eax,%edx
   180001307:	movb   $0x57,0x40(%rsp,%rdx,1)
   18000130c:	lea    0x2(%rax),%edx
   18000130f:	movb   $0x50,0x40(%rsp,%rcx,1)
   180001314:	lea    0x3(%rax),%ecx
   180001317:	movb   $0x31,0x40(%rsp,%rdx,1)
   18000131c:	lea    0x4(%rax),%edx
   18000131f:	movb   $0x30,0x40(%rsp,%rcx,1)
   180001324:	lea    0x5(%rax),%ecx
   180001327:	movb   $0x5f,0x40(%rsp,%rdx,1)
   18000132c:	lea    0x6(%rax),%edx
   18000132f:	movb   $0x45,0x40(%rsp,%rcx,1)
   180001334:	lea    0x7(%rax),%ecx
   180001337:	movb   $0x4e,0x40(%rsp,%rdx,1)
   18000133c:	lea    0x8(%rax),%edx
   18000133f:	movb   $0x2e,0x40(%rsp,%rcx,1)
   180001344:	lea    0x9(%rax),%ecx
   180001347:	movb   $0x6c,0x40(%rsp,%rdx,1)
   18000134c:	lea    0xa(%rax),%edx
   18000134f:	movb   $0x6f,0x40(%rsp,%rcx,1)
   180001354:	add    $0xb,%eax
   180001357:	movb   $0x67,0x40(%rsp,%rdx,1)
   18000135c:	movb   $0x0,0x40(%rsp,%rax,1)
   180001361:	movq   $0x0,0x30(%rsp)
   18000136a:	movl   $0x80,0x28(%rsp)
   180001372:	movl   $0x2,0x20(%rsp)
   18000137a:	lea    0x40(%rsp),%rcx
   18000137f:	mov    $0x40000000,%edx
   180001384:	mov    $0x1,%r8d
   18000138a:	xor    %r9d,%r9d
   18000138d:	call   *0x65e5(%rip)        # 0x180007978
   180001393:	mov    %rax,0x6ee6(%rip)        # 0x180008280
   18000139a:	test   %rax,%rax
   18000139d:	je     0x1800013c3
   18000139f:	movq   $0x0,0x20(%rsp)
   1800013a8:	lea    0x6351(%rip),%rdx        # 0x180007700
   1800013af:	lea    0x3c(%rsp),%r9
   1800013b4:	mov    %rax,%rcx
   1800013b7:	mov    $0x19,%r8d
   1800013bd:	call   *0x663d(%rip)        # 0x180007a00
   1800013c3:	mov    0x6eaf(%rip),%eax        # 0x180008278
   1800013c9:	test   %rax,%rax
   1800013cc:	je     0x1800013d7
   1800013ce:	cmp    $0x8,%eax
   1800013d1:	jae    0x1800013db
   1800013d3:	xor    %ecx,%ecx
   1800013d5:	jmp    0x180001440
   1800013d7:	xor    %edx,%edx
   1800013d9:	jmp    0x180001453
   1800013db:	cmp    $0x20,%eax
   1800013de:	jae    0x1800013e4
   1800013e0:	xor    %ecx,%ecx
   1800013e2:	jmp    0x180001418
   1800013e4:	mov    %eax,%ecx
   1800013e6:	and    $0xffffffe0,%ecx
   1800013e9:	xor    %edx,%edx
   1800013eb:	nopl   0x0(%rax,%rax,1)
   1800013f0:	movaps (%rdx,%rsi,1),%xmm0
   1800013f4:	movaps 0x10(%rdx,%rsi,1),%xmm1
   1800013f9:	movaps %xmm0,0x40(%rsp,%rdx,1)
   1800013fe:	movaps %xmm1,0x50(%rsp,%rdx,1)
   180001403:	add    $0x20,%rdx
   180001407:	cmp    %rdx,%rcx
   18000140a:	jne    0x1800013f0
   18000140c:	mov    %rax,%rdx
   18000140f:	cmp    %rax,%rcx
   180001412:	je     0x180001453
   180001414:	test   $0x18,%al
   180001416:	je     0x180001440
   180001418:	mov    %rcx,%rdx
   18000141b:	mov    %eax,%ecx
   18000141d:	and    $0xfffffff8,%ecx
   180001420:	mov    (%rdx,%rsi,1),%r8
   180001424:	mov    %r8,0x40(%rsp,%rdx,1)
   180001429:	add    $0x8,%rdx
   18000142d:	cmp    %rdx,%rcx
   180001430:	jne    0x180001420
   180001432:	mov    %rax,%rdx
   180001435:	cmp    %rax,%rcx
   180001438:	je     0x180001453
   18000143a:	nopw   0x0(%rax,%rax,1)
   180001440:	movzbl (%rcx,%rsi,1),%edx
   180001444:	mov    %dl,0x40(%rsp,%rcx,1)
   180001448:	inc    %rcx
   18000144b:	cmp    %rcx,%rax
   18000144e:	jne    0x180001440
   180001450:	mov    %rax,%rdx
   180001453:	lea    0x1(%rax),%ecx
   180001456:	movb   $0x57,0x40(%rsp,%rdx,1)
   18000145b:	lea    0x2(%rax),%edx
   18000145e:	movb   $0x50,0x40(%rsp,%rcx,1)
   180001463:	lea    0x3(%rax),%ecx
   180001466:	movb   $0x31,0x40(%rsp,%rdx,1)
   18000146b:	lea    0x4(%rax),%edx
   18000146e:	movb   $0x30,0x40(%rsp,%rcx,1)
   180001473:	lea    0x5(%rax),%ecx
   180001476:	movb   $0x5f,0x40(%rsp,%rdx,1)
   18000147b:	lea    0x6(%rax),%edx
   18000147e:	movb   $0x45,0x40(%rsp,%rcx,1)
   180001483:	lea    0x7(%rax),%ecx
   180001486:	movb   $0x4e,0x40(%rsp,%rdx,1)
   18000148b:	lea    0x8(%rax),%edx
   18000148e:	movb   $0x5f,0x40(%rsp,%rcx,1)
   180001493:	lea    0x9(%rax),%ecx
   180001496:	movb   $0x65,0x40(%rsp,%rdx,1)
   18000149b:	lea    0xa(%rax),%edx
   18000149e:	movb   $0x61,0x40(%rsp,%rcx,1)
   1800014a3:	lea    0xb(%rax),%ecx
   1800014a6:	movb   $0x72,0x40(%rsp,%rdx,1)
   1800014ab:	lea    0xc(%rax),%edx
   1800014ae:	movb   $0x6c,0x40(%rsp,%rcx,1)
   1800014b3:	lea    0xd(%rax),%ecx
   1800014b6:	movb   $0x79,0x40(%rsp,%rdx,1)
   1800014bb:	lea    0xe(%rax),%edx
   1800014be:	movb   $0x2e,0x40(%rsp,%rcx,1)
   1800014c3:	lea    0xf(%rax),%ecx
   1800014c6:	movb   $0x66,0x40(%rsp,%rdx,1)
   1800014cb:	lea    0x10(%rax),%edx
   1800014ce:	movb   $0x6c,0x40(%rsp,%rcx,1)
   1800014d3:	lea    0x11(%rax),%ecx
   1800014d6:	movb   $0x61,0x40(%rsp,%rdx,1)
   1800014db:	add    $0x12,%eax
   1800014de:	movb   $0x67,0x40(%rsp,%rcx,1)
   1800014e3:	movb   $0x0,0x40(%rsp,%rax,1)
   1800014e8:	movq   $0x0,0x30(%rsp)
   1800014f1:	movl   $0x80,0x28(%rsp)
   1800014f9:	movl   $0x3,0x20(%rsp)
   180001501:	lea    0x40(%rsp),%rcx
   180001506:	mov    $0x80000000,%edx
   18000150b:	mov    $0x1,%r8d
   180001511:	xor    %r9d,%r9d
   180001514:	call   *0x645e(%rip)        # 0x180007978
   18000151a:	cmp    $0xffffffffffffffff,%rax
   18000151e:	je     0x180001575
   180001520:	mov    %rax,%rcx
   180001523:	call   *0x6447(%rip)        # 0x180007970
   180001529:	mov    0x6d50(%rip),%rcx        # 0x180008280
   180001530:	test   %rcx,%rcx
   180001533:	je     0x180001556
   180001535:	movq   $0x0,0x20(%rsp)
   18000153e:	lea    0x60d7(%rip),%rdx        # 0x18000761c
   180001545:	lea    0x3c(%rsp),%r9
   18000154a:	mov    $0xc,%r8d
   180001550:	call   *0x64aa(%rip)        # 0x180007a00
   180001556:	call   0x1800015b0
   18000155b:	mov    0x6d1e(%rip),%rcx        # 0x180008280
   180001562:	call   *0x6408(%rip)        # 0x180007970
   180001568:	movq   $0x0,0x6d0d(%rip)        # 0x180008280
   180001573:	jmp    0x18000159a
   180001575:	movq   $0x0,0x28(%rsp)
   18000157e:	movl   $0x0,0x20(%rsp)
   180001586:	lea    0xb83(%rip),%r8        # 0x180002110
   18000158d:	xor    %ecx,%ecx
   18000158f:	xor    %edx,%edx
   180001591:	xor    %r9d,%r9d
   180001594:	call   *0x63e6(%rip)        # 0x180007980
   18000159a:	mov    $0x1,%eax
   18000159f:	add    $0x298,%rsp
   1800015a6:	pop    %rdi
   1800015a7:	pop    %rsi
   1800015a8:	ret    
   1800015a9:	nopl   0x0(%rax)
   1800015b0:	push   %r15
   1800015b2:	push   %r14
   1800015b4:	push   %r13
   1800015b6:	push   %r12
   1800015b8:	push   %rsi
   1800015b9:	push   %rdi
   1800015ba:	push   %rbp
   1800015bb:	push   %rbx
   1800015bc:	sub    $0x308,%rsp
   1800015c3:	mov    0x6caf(%rip),%eax        # 0x180008278
   1800015c9:	test   %rax,%rax
   1800015cc:	je     0x1800015da
   1800015ce:	cmp    $0x8,%eax
   1800015d1:	jae    0x1800015e1
   1800015d3:	xor    %ecx,%ecx
   1800015d5:	jmp    0x18000165d
   1800015da:	xor    %edx,%edx
   1800015dc:	jmp    0x180001688
   1800015e1:	cmp    $0x20,%eax
   1800015e4:	jae    0x1800015ea
   1800015e6:	xor    %ecx,%ecx
   1800015e8:	jmp    0x180001630
   1800015ea:	mov    %eax,%ecx
   1800015ec:	and    $0xffffffe0,%ecx
   1800015ef:	xor    %edx,%edx
   1800015f1:	lea    0x6a78(%rip),%r8        # 0x180008070
   1800015f8:	nopl   0x0(%rax,%rax,1)
   180001600:	movaps (%rdx,%r8,1),%xmm0
   180001605:	movaps 0x10(%rdx,%r8,1),%xmm1
   18000160b:	movaps %xmm0,0xb0(%rsp,%rdx,1)
   180001613:	movaps %xmm1,0xc0(%rsp,%rdx,1)
   18000161b:	add    $0x20,%rdx
   18000161f:	cmp    %rdx,%rcx
   180001622:	jne    0x180001600
   180001624:	mov    %rax,%rdx
   180001627:	cmp    %rax,%rcx
   18000162a:	je     0x180001688
   18000162c:	test   $0x18,%al
   18000162e:	je     0x18000165d
   180001630:	mov    %rcx,%rdx
   180001633:	mov    %eax,%ecx
   180001635:	and    $0xfffffff8,%ecx
   180001638:	lea    0x6a31(%rip),%r8        # 0x180008070
   18000163f:	nop
   180001640:	mov    (%rdx,%r8,1),%r9
   180001644:	mov    %r9,0xb0(%rsp,%rdx,1)
   18000164c:	add    $0x8,%rdx
   180001650:	cmp    %rdx,%rcx
   180001653:	jne    0x180001640
   180001655:	mov    %rax,%rdx
   180001658:	cmp    %rax,%rcx
   18000165b:	je     0x180001688
   18000165d:	lea    0x6a0c(%rip),%rdx        # 0x180008070
   180001664:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001670:	movzbl (%rcx,%rdx,1),%r8d
   180001675:	mov    %r8b,0xb0(%rsp,%rcx,1)
   18000167d:	inc    %rcx
   180001680:	cmp    %rcx,%rax
   180001683:	jne    0x180001670
   180001685:	mov    %rax,%rdx
   180001688:	lea    0x1(%rax),%ecx
   18000168b:	movb   $0x57,0xb0(%rsp,%rdx,1)
   180001693:	lea    0x2(%rax),%edx
   180001696:	movb   $0x50,0xb0(%rsp,%rcx,1)
   18000169e:	lea    0x3(%rax),%ecx
   1800016a1:	movb   $0x31,0xb0(%rsp,%rdx,1)
   1800016a9:	lea    0x4(%rax),%edx
   1800016ac:	movb   $0x30,0xb0(%rsp,%rcx,1)
   1800016b4:	lea    0x5(%rax),%ecx
   1800016b7:	movb   $0x5f,0xb0(%rsp,%rdx,1)
   1800016bf:	lea    0x6(%rax),%edx
   1800016c2:	movb   $0x45,0xb0(%rsp,%rcx,1)
   1800016ca:	lea    0x7(%rax),%ecx
   1800016cd:	movb   $0x4e,0xb0(%rsp,%rdx,1)
   1800016d5:	lea    0x8(%rax),%edx
   1800016d8:	movb   $0x2e,0xb0(%rsp,%rcx,1)
   1800016e0:	lea    0x9(%rax),%ecx
   1800016e3:	movb   $0x62,0xb0(%rsp,%rdx,1)
   1800016eb:	lea    0xa(%rax),%edx
   1800016ee:	movb   $0x69,0xb0(%rsp,%rcx,1)
   1800016f6:	add    $0xb,%eax
   1800016f9:	movb   $0x6e,0xb0(%rsp,%rdx,1)
   180001701:	movb   $0x0,0xb0(%rsp,%rax,1)
   180001709:	movq   $0x0,0x30(%rsp)
   180001712:	movl   $0x80,0x28(%rsp)
   18000171a:	movl   $0x3,0x20(%rsp)
   180001722:	lea    0xb0(%rsp),%rcx
   18000172a:	mov    $0x80000000,%edx
   18000172f:	mov    $0x1,%r8d
   180001735:	xor    %r9d,%r9d
   180001738:	call   *0x623a(%rip)        # 0x180007978
   18000173e:	cmp    $0xffffffffffffffff,%rax
   180001742:	je     0x180001890
   180001748:	mov    %rax,%rdi
   18000174b:	mov    %rax,%rcx
   18000174e:	xor    %edx,%edx
   180001750:	call   *0x623a(%rip)        # 0x180007990
   180001756:	mov    %eax,%ebp
   180001758:	mov    %eax,%ebx
   18000175a:	xor    %ecx,%ecx
   18000175c:	mov    %rbx,%rdx
   18000175f:	mov    $0x3000,%r8d
   180001765:	mov    $0x4,%r9d
   18000176b:	call   *0x6277(%rip)        # 0x1800079e8
   180001771:	mov    %rax,%rsi
   180001774:	movq   $0x0,0x20(%rsp)
   18000177d:	lea    0xac(%rsp),%r9
   180001785:	mov    %rdi,%rcx
   180001788:	mov    %rax,%rdx
   18000178b:	mov    %ebp,%r8d
   18000178e:	call   *0x623c(%rip)        # 0x1800079d0
   180001794:	mov    %rdi,%rcx
   180001797:	call   *0x61d3(%rip)        # 0x180007970
   18000179d:	cmpb   $0x57,(%rsi)
   1800017a0:	jne    0x180001867
   1800017a6:	cmpb   $0x50,0x1(%rsi)
   1800017aa:	jne    0x180001867
   1800017b0:	cmpb   $0x45,0x2(%rsi)
   1800017b4:	jne    0x180001867
   1800017ba:	cmpb   $0x4e,0x3(%rsi)
   1800017be:	jne    0x180001867
   1800017c4:	mov    0x4(%rsi),%r15d
   1800017c8:	mov    0x6219(%rip),%rdi        # 0x1800079e8
   1800017cf:	xor    %r12d,%r12d
   1800017d2:	xor    %ecx,%ecx
   1800017d4:	mov    %rbx,%rdx
   1800017d7:	mov    $0x3000,%r8d
   1800017dd:	mov    $0x4,%r9d
   1800017e3:	call   *%rdi
   1800017e5:	mov    %rax,0x88(%rsp)
   1800017ed:	xor    %ecx,%ecx
   1800017ef:	mov    %rbx,%rdx
   1800017f2:	mov    $0x3000,%r8d
   1800017f8:	mov    $0x4,%r9d
   1800017fe:	call   *%rdi
   180001800:	mov    %rax,0x70(%rsp)
   180001805:	mov    $0x0,%ebp
   18000180a:	test   %r15d,%r15d
   18000180d:	je     0x180001f22
   180001813:	add    $0x8,%rsi
   180001817:	mov    0x88(%rsp),%rax
   18000181f:	lea    -0x9(%rax),%rcx
   180001823:	mov    %rcx,0xa0(%rsp)
   18000182b:	add    $0x10,%rax
   18000182f:	mov    %rax,0x98(%rsp)
   180001837:	mov    0x70(%rsp),%rax
   18000183c:	add    $0x10,%rax
   180001840:	mov    %rax,0x90(%rsp)
   180001848:	xor    %eax,%eax
   18000184a:	mov    %rax,0x68(%rsp)
   18000184f:	xor    %ebp,%ebp
   180001851:	xor    %edi,%edi
   180001853:	xor    %eax,%eax
   180001855:	mov    %rax,0x60(%rsp)
   18000185a:	xor    %r12d,%r12d
   18000185d:	mov    %r15d,0x5c(%rsp)
   180001862:	jmp    0x180001907
   180001867:	mov    0x6a12(%rip),%rcx        # 0x180008280
   18000186e:	test   %rcx,%rcx
   180001871:	je     0x1800018bd
   180001873:	movq   $0x0,0x20(%rsp)
   18000187c:	lea    0x5d88(%rip),%rdx        # 0x18000760b
   180001883:	lea    0x40(%rsp),%r9
   180001888:	mov    $0x10,%r8d
   18000188e:	jmp    0x1800018b7
   180001890:	mov    0x69e9(%rip),%rcx        # 0x180008280
   180001897:	test   %rcx,%rcx
   18000189a:	je     0x1800018bd
   18000189c:	movq   $0x0,0x20(%rsp)
   1800018a5:	lea    0x5d98(%rip),%rdx        # 0x180007644
   1800018ac:	lea    0x40(%rsp),%r9
   1800018b1:	mov    $0x17,%r8d
   1800018b7:	call   *0x6143(%rip)        # 0x180007a00
   1800018bd:	add    $0x308,%rsp
   1800018c4:	pop    %rbx
   1800018c5:	pop    %rbp
   1800018c6:	pop    %rdi
   1800018c7:	pop    %rsi
   1800018c8:	pop    %r12
   1800018ca:	pop    %r13
   1800018cc:	pop    %r14
   1800018ce:	pop    %r15
   1800018d0:	ret    
   1800018d1:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800018e0:	mov    0x40(%rsp),%r8d
   1800018e5:	mov    %r14,%rdx
   1800018e8:	lea    0x40(%rsp),%r9
   1800018ed:	call   *0x60fd(%rip)        # 0x1800079f0
   1800018f3:	inc    %ebp
   1800018f5:	add    $0x9,%r14d
   1800018f9:	add    %r14,%rsi
   1800018fc:	inc    %edi
   1800018fe:	cmp    %r15d,%edi
   180001901:	je     0x180001f22
   180001907:	movzbl (%rsi),%eax
   18000190a:	mov    0x1(%rsi),%ebx
   18000190d:	mov    0x5(%rsi),%r14d
   180001911:	lea    0x9(%rsi),%r13
   180001915:	cmp    $0x1,%eax
   180001918:	je     0x180001a10
   18000191e:	test   %eax,%eax
   180001920:	jne    0x1800018f5
   180001922:	mov    0x6960(%rip),%eax        # 0x180008288
   180001928:	mov    0x66f1(%rip),%rcx        # 0x180008020
   18000192f:	cmp    $0x4e1f,%rax
   180001935:	ja     0x180001c01
   18000193b:	lea    -0x3851600(%rbx),%edx
   180001941:	cmp    $0x45f,%edx
   180001947:	jbe    0x180001c01
   18000194d:	lea    0x693c(%rip),%rdx        # 0x180008290
   180001954:	mov    %rbx,0x50(%rsp)
   180001959:	mov    %ebx,(%rdx,%rax,4)
   18000195c:	lea    0x1a1ad(%rip),%rdx        # 0x18001bb10
   180001963:	mov    %r14d,(%rdx,%rax,4)
   180001967:	lea    0x2da22(%rip),%rdx        # 0x18002f390
   18000196e:	mov    %r13,(%rdx,%rax,8)
   180001972:	mov    0x70(%rsp),%rdx
   180001977:	mov    0x60(%rsp),%r8
   18000197c:	lea    (%rdx,%r8,1),%r9
   180001980:	lea    0x54b09(%rip),%rdx        # 0x180056490
   180001987:	mov    %r9,(%rdx,%rax,8)
   18000198b:	test   %r14d,%r14d
   18000198e:	je     0x180001bef
   180001994:	mov    0x50(%rsp),%r11
   180001999:	lea    (%rcx,%r11,1),%r10
   18000199d:	cmp    $0x8,%r14d
   1800019a1:	jb     0x1800019c0
   1800019a3:	mov    0x70(%rsp),%rdx
   1800019a8:	mov    0x60(%rsp),%r8
   1800019ad:	add    %r8,%rdx
   1800019b0:	sub    %rcx,%rdx
   1800019b3:	sub    %r11,%rdx
   1800019b6:	cmp    $0x20,%rdx
   1800019ba:	jae    0x180001d90
   1800019c0:	mov    %r9,%rdx
   1800019c3:	mov    %r10,%r8
   1800019c6:	mov    %r14,%rbx
   1800019c9:	mov    %rbx,%r9
   1800019cc:	and    $0x7,%r9
   1800019d0:	je     0x180001b79
   1800019d6:	xor    %r10d,%r10d
   1800019d9:	nopl   0x0(%rax)
   1800019e0:	movzbl (%r8,%r10,1),%r11d
   1800019e5:	mov    %r11b,(%rdx,%r10,1)
   1800019e9:	inc    %r10
   1800019ec:	cmp    %r10,%r9
   1800019ef:	jne    0x1800019e0
   1800019f1:	add    %r10,%rdx
   1800019f4:	add    %r10,%r8
   1800019f7:	mov    %rbx,%r9
   1800019fa:	sub    %r10,%r9
   1800019fd:	jmp    0x180001b7c
   180001a02:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001a10:	mov    %ebp,0x78(%rsp)
   180001a14:	mov    %rbx,%rbp
   180001a17:	mov    %r12,0x50(%rsp)
   180001a1c:	mov    0x88(%rsp),%rax
   180001a24:	mov    0x68(%rsp),%rcx
   180001a29:	lea    (%rax,%rcx,1),%rbx
   180001a2d:	test   %r14d,%r14d
   180001a30:	je     0x180001aff
   180001a36:	cmp    $0x8,%r14d
   180001a3a:	jb     0x180001a59
   180001a3c:	mov    0xa0(%rsp),%rax
   180001a44:	mov    0x68(%rsp),%rcx
   180001a49:	add    %rcx,%rax
   180001a4c:	sub    %rsi,%rax
   180001a4f:	cmp    $0x20,%rax
   180001a53:	jae    0x180001b67
   180001a59:	mov    %rbx,%rax
   180001a5c:	mov    %r13,%rcx
   180001a5f:	mov    %r14,%rdx
   180001a62:	mov    %rdx,%r8
   180001a65:	and    $0x7,%r8
   180001a69:	je     0x180001a8f
   180001a6b:	xor    %r9d,%r9d
   180001a6e:	xchg   %ax,%ax
   180001a70:	movzbl (%rcx,%r9,1),%r10d
   180001a75:	mov    %r10b,(%rax,%r9,1)
   180001a79:	inc    %r9
   180001a7c:	cmp    %r9,%r8
   180001a7f:	jne    0x180001a70
   180001a81:	add    %r9,%rax
   180001a84:	add    %r9,%rcx
   180001a87:	mov    %rdx,%r8
   180001a8a:	sub    %r9,%r8
   180001a8d:	jmp    0x180001a92
   180001a8f:	mov    %rdx,%r8
   180001a92:	dec    %rdx
   180001a95:	cmp    $0x7,%rdx
   180001a99:	jb     0x180001aff
   180001a9b:	xor    %edx,%edx
   180001a9d:	nopl   (%rax)
   180001aa0:	movzbl (%rcx,%rdx,1),%r9d
   180001aa5:	mov    %r9b,(%rax,%rdx,1)
   180001aa9:	movzbl 0x1(%rcx,%rdx,1),%r9d
   180001aaf:	mov    %r9b,0x1(%rax,%rdx,1)
   180001ab4:	movzbl 0x2(%rcx,%rdx,1),%r9d
   180001aba:	mov    %r9b,0x2(%rax,%rdx,1)
   180001abf:	movzbl 0x3(%rcx,%rdx,1),%r9d
   180001ac5:	mov    %r9b,0x3(%rax,%rdx,1)
   180001aca:	movzbl 0x4(%rcx,%rdx,1),%r9d
   180001ad0:	mov    %r9b,0x4(%rax,%rdx,1)
   180001ad5:	movzbl 0x5(%rcx,%rdx,1),%r9d
   180001adb:	mov    %r9b,0x5(%rax,%rdx,1)
   180001ae0:	movzbl 0x6(%rcx,%rdx,1),%r9d
   180001ae6:	mov    %r9b,0x6(%rax,%rdx,1)
   180001aeb:	movzbl 0x7(%rcx,%rdx,1),%r9d
   180001af1:	mov    %r9b,0x7(%rax,%rdx,1)
   180001af6:	add    $0x8,%rdx
   180001afa:	cmp    %rdx,%r8
   180001afd:	jne    0x180001aa0
   180001aff:	lea    0x7(%r14),%r15d
   180001b03:	and    $0xfffffff8,%r15d
   180001b07:	mov    0x6512(%rip),%rcx        # 0x180008020
   180001b0e:	add    %rbp,%rcx
   180001b11:	mov    $0x8,%edx
   180001b16:	mov    $0x4,%r8d
   180001b1c:	lea    0x40(%rsp),%r12
   180001b21:	mov    %r12,%r9
   180001b24:	mov    0x5ec5(%rip),%r13        # 0x1800079f0
   180001b2b:	call   *%r13
   180001b2e:	mov    0x64eb(%rip),%rcx        # 0x180008020
   180001b35:	mov    %rbx,(%rcx,%rbp,1)
   180001b39:	add    %rbp,%rcx
   180001b3c:	add    %r15,0x68(%rsp)
   180001b41:	mov    0x40(%rsp),%r8d
   180001b46:	mov    $0x8,%edx
   180001b4b:	mov    %r12,%r9
   180001b4e:	call   *%r13
   180001b51:	mov    0x50(%rsp),%r12
   180001b56:	inc    %r12d
   180001b59:	mov    0x5c(%rsp),%r15d
   180001b5e:	mov    0x78(%rsp),%ebp
   180001b62:	jmp    0x1800018f5
   180001b67:	cmp    $0x20,%r14d
   180001b6b:	jae    0x180001da1
   180001b71:	xor    %r8d,%r8d
   180001b74:	jmp    0x180001def
   180001b79:	mov    %rbx,%r9
   180001b7c:	dec    %rbx
   180001b7f:	cmp    $0x7,%rbx
   180001b83:	jb     0x180001bef
   180001b85:	xor    %r10d,%r10d
   180001b88:	nopl   0x0(%rax,%rax,1)
   180001b90:	movzbl (%r8,%r10,1),%r11d
   180001b95:	mov    %r11b,(%rdx,%r10,1)
   180001b99:	movzbl 0x1(%r8,%r10,1),%r11d
   180001b9f:	mov    %r11b,0x1(%rdx,%r10,1)
   180001ba4:	movzbl 0x2(%r8,%r10,1),%r11d
   180001baa:	mov    %r11b,0x2(%rdx,%r10,1)
   180001baf:	movzbl 0x3(%r8,%r10,1),%r11d
   180001bb5:	mov    %r11b,0x3(%rdx,%r10,1)
   180001bba:	movzbl 0x4(%r8,%r10,1),%r11d
   180001bc0:	mov    %r11b,0x4(%rdx,%r10,1)
   180001bc5:	movzbl 0x5(%r8,%r10,1),%r11d
   180001bcb:	mov    %r11b,0x5(%rdx,%r10,1)
   180001bd0:	movzbl 0x6(%r8,%r10,1),%r11d
   180001bd6:	mov    %r11b,0x6(%rdx,%r10,1)
   180001bdb:	movzbl 0x7(%r8,%r10,1),%r11d
   180001be1:	mov    %r11b,0x7(%rdx,%r10,1)
   180001be6:	add    $0x8,%r10
   180001bea:	cmp    %r10,%r9
   180001bed:	jne    0x180001b90
   180001bef:	add    %r14,0x60(%rsp)
   180001bf4:	inc    %eax
   180001bf6:	mov    %eax,0x668c(%rip)        # 0x180008288
   180001bfc:	mov    0x50(%rsp),%rbx
   180001c01:	add    %rbx,%rcx
   180001c04:	mov    %r14,%rdx
   180001c07:	mov    $0x4,%r8d
   180001c0d:	lea    0x40(%rsp),%r9
   180001c12:	call   *0x5dd8(%rip)        # 0x1800079f0
   180001c18:	mov    0x6401(%rip),%rax        # 0x180008020
   180001c1f:	lea    (%rax,%rbx,1),%rcx
   180001c23:	test   %r14d,%r14d
   180001c26:	je     0x1800018e0
   180001c2c:	cmp    $0x8,%r14d
   180001c30:	jb     0x180001c47
   180001c32:	lea    (%rax,%rbx,1),%rdx
   180001c36:	sub    %rsi,%rdx
   180001c39:	add    $0xfffffffffffffff7,%rdx
   180001c3d:	cmp    $0x20,%rdx
   180001c41:	jae    0x180001d04
   180001c47:	mov    %rcx,%rax
   180001c4a:	mov    %r13,%rdx
   180001c4d:	mov    %r14,%r8
   180001c50:	mov    %r8,%r9
   180001c53:	and    $0x7,%r9
   180001c57:	je     0x180001c7f
   180001c59:	xor    %r10d,%r10d
   180001c5c:	nopl   0x0(%rax)
   180001c60:	movzbl (%rdx,%r10,1),%r11d
   180001c65:	mov    %r11b,(%rax,%r10,1)
   180001c69:	inc    %r10
   180001c6c:	cmp    %r10,%r9
   180001c6f:	jne    0x180001c60
   180001c71:	add    %r10,%rax
   180001c74:	add    %r10,%rdx
   180001c77:	mov    %r8,%r9
   180001c7a:	sub    %r10,%r9
   180001c7d:	jmp    0x180001c82
   180001c7f:	mov    %r8,%r9
   180001c82:	dec    %r8
   180001c85:	cmp    $0x7,%r8
   180001c89:	jb     0x1800018e0
   180001c8f:	xor    %r8d,%r8d
   180001c92:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001ca0:	movzbl (%rdx,%r8,1),%r10d
   180001ca5:	mov    %r10b,(%rax,%r8,1)
   180001ca9:	movzbl 0x1(%rdx,%r8,1),%r10d
   180001caf:	mov    %r10b,0x1(%rax,%r8,1)
   180001cb4:	movzbl 0x2(%rdx,%r8,1),%r10d
   180001cba:	mov    %r10b,0x2(%rax,%r8,1)
   180001cbf:	movzbl 0x3(%rdx,%r8,1),%r10d
   180001cc5:	mov    %r10b,0x3(%rax,%r8,1)
   180001cca:	movzbl 0x4(%rdx,%r8,1),%r10d
   180001cd0:	mov    %r10b,0x4(%rax,%r8,1)
   180001cd5:	movzbl 0x5(%rdx,%r8,1),%r10d
   180001cdb:	mov    %r10b,0x5(%rax,%r8,1)
   180001ce0:	movzbl 0x6(%rdx,%r8,1),%r10d
   180001ce6:	mov    %r10b,0x6(%rax,%r8,1)
   180001ceb:	movzbl 0x7(%rdx,%r8,1),%r10d
   180001cf1:	mov    %r10b,0x7(%rax,%r8,1)
   180001cf6:	add    $0x8,%r8
   180001cfa:	cmp    %r8,%r9
   180001cfd:	jne    0x180001ca0
   180001cff:	jmp    0x1800018e0
   180001d04:	cmp    $0x20,%r14d
   180001d08:	jae    0x180001d0f
   180001d0a:	xor    %r9d,%r9d
   180001d0d:	jmp    0x180001d4f
   180001d0f:	mov    %r14d,%r9d
   180001d12:	and    $0xffffffe0,%r9d
   180001d16:	add    %rbx,%rax
   180001d19:	add    $0x10,%rax
   180001d1d:	xor    %edx,%edx
   180001d1f:	nop
   180001d20:	movups 0x9(%rsi,%rdx,1),%xmm0
   180001d25:	movups 0x19(%rsi,%rdx,1),%xmm1
   180001d2a:	movups %xmm0,-0x10(%rax,%rdx,1)
   180001d2f:	movups %xmm1,(%rax,%rdx,1)
   180001d33:	add    $0x20,%rdx
   180001d37:	cmp    %rdx,%r9
   180001d3a:	jne    0x180001d20
   180001d3c:	cmp    %r9,%r14
   180001d3f:	je     0x1800018e0
   180001d45:	test   $0x18,%r14b
   180001d49:	je     0x180001ed9
   180001d4f:	mov    %r14d,%r10d
   180001d52:	and    $0xfffffff8,%r10d
   180001d56:	lea    (%rcx,%r10,1),%rax
   180001d5a:	lea    (%r10,%r13,1),%rdx
   180001d5e:	mov    %r14d,%r8d
   180001d61:	and    $0x7,%r8d
   180001d65:	data16 cs nopw 0x0(%rax,%rax,1)
   180001d70:	mov    0x0(%r13,%r9,1),%r11
   180001d75:	mov    %r11,(%rcx,%r9,1)
   180001d79:	add    $0x8,%r9
   180001d7d:	cmp    %r9,%r10
   180001d80:	jne    0x180001d70
   180001d82:	cmp    %r10,%r14
   180001d85:	je     0x1800018e0
   180001d8b:	jmp    0x180001c50
   180001d90:	cmp    $0x20,%r14d
   180001d94:	jae    0x180001e30
   180001d9a:	xor    %ebx,%ebx
   180001d9c:	jmp    0x180001e8e
   180001da1:	mov    %r14d,%r8d
   180001da4:	and    $0xffffffe0,%r8d
   180001da8:	mov    0x98(%rsp),%rax
   180001db0:	mov    0x68(%rsp),%rcx
   180001db5:	add    %rcx,%rax
   180001db8:	xor    %ecx,%ecx
   180001dba:	nopw   0x0(%rax,%rax,1)
   180001dc0:	movups 0x9(%rsi,%rcx,1),%xmm0
   180001dc5:	movups 0x19(%rsi,%rcx,1),%xmm1
   180001dca:	movups %xmm0,-0x10(%rax,%rcx,1)
   180001dcf:	movups %xmm1,(%rax,%rcx,1)
   180001dd3:	add    $0x20,%rcx
   180001dd7:	cmp    %rcx,%r8
   180001dda:	jne    0x180001dc0
   180001ddc:	cmp    %r14,%r8
   180001ddf:	je     0x180001aff
   180001de5:	test   $0x18,%r14b
   180001de9:	je     0x180001ef1
   180001def:	mov    %r14d,%r9d
   180001df2:	and    $0xfffffff8,%r9d
   180001df6:	lea    (%rbx,%r9,1),%rax
   180001dfa:	lea    (%r9,%r13,1),%rcx
   180001dfe:	mov    %r14d,%edx
   180001e01:	and    $0x7,%edx
   180001e04:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180001e10:	mov    0x0(%r13,%r8,1),%r10
   180001e15:	mov    %r10,(%rbx,%r8,1)
   180001e19:	add    $0x8,%r8
   180001e1d:	cmp    %r8,%r9
   180001e20:	jne    0x180001e10
   180001e22:	cmp    %r14,%r9
   180001e25:	jne    0x180001a62
   180001e2b:	jmp    0x180001aff
   180001e30:	mov    %r14d,%ebx
   180001e33:	and    $0xffffffe0,%ebx
   180001e36:	mov    0x50(%rsp),%rdx
   180001e3b:	add    %rcx,%rdx
   180001e3e:	add    $0x10,%rdx
   180001e42:	mov    0x90(%rsp),%r8
   180001e4a:	mov    0x60(%rsp),%r11
   180001e4f:	add    %r11,%r8
   180001e52:	xor    %r11d,%r11d
   180001e55:	data16 cs nopw 0x0(%rax,%rax,1)
   180001e60:	movups -0x10(%rdx,%r11,1),%xmm0
   180001e66:	movups (%rdx,%r11,1),%xmm1
   180001e6b:	movups %xmm0,-0x10(%r8,%r11,1)
   180001e71:	movups %xmm1,(%r8,%r11,1)
   180001e76:	add    $0x20,%r11
   180001e7a:	cmp    %r11,%rbx
   180001e7d:	jne    0x180001e60
   180001e7f:	cmp    %r14,%rbx
   180001e82:	je     0x180001bef
   180001e88:	test   $0x18,%r14b
   180001e8c:	je     0x180001f08
   180001e8e:	mov    %r14d,%r15d
   180001e91:	and    $0xfffffff8,%r15d
   180001e95:	lea    (%r9,%r15,1),%rdx
   180001e99:	lea    (%r10,%r15,1),%r8
   180001e9d:	mov    %r14d,%r11d
   180001ea0:	and    $0x7,%r11d
   180001ea4:	mov    %r11,0x78(%rsp)
   180001ea9:	nopl   0x0(%rax)
   180001eb0:	mov    (%r10,%rbx,1),%r11
   180001eb4:	mov    %r11,(%r9,%rbx,1)
   180001eb8:	add    $0x8,%rbx
   180001ebc:	cmp    %rbx,%r15
   180001ebf:	jne    0x180001eb0
   180001ec1:	cmp    %r14,%r15
   180001ec4:	mov    0x5c(%rsp),%r15d
   180001ec9:	mov    0x78(%rsp),%rbx
   180001ece:	jne    0x1800019c9
   180001ed4:	jmp    0x180001bef
   180001ed9:	mov    %r14d,%r8d
   180001edc:	and    $0x1f,%r8d
   180001ee0:	add    %r9,%r13
   180001ee3:	add    %rcx,%r9
   180001ee6:	mov    %r9,%rax
   180001ee9:	mov    %r13,%rdx
   180001eec:	jmp    0x180001c50
   180001ef1:	mov    %r14d,%edx
   180001ef4:	and    $0x1f,%edx
   180001ef7:	add    %r8,%r13
   180001efa:	add    %rbx,%r8
   180001efd:	mov    %r8,%rax
   180001f00:	mov    %r13,%rcx
   180001f03:	jmp    0x180001a62
   180001f08:	mov    %r14d,%edx
   180001f0b:	and    $0x1f,%edx
   180001f0e:	add    %rbx,%r10
   180001f11:	add    %rbx,%r9
   180001f14:	mov    %rdx,%rbx
   180001f17:	mov    %r9,%rdx
   180001f1a:	mov    %r10,%r8
   180001f1d:	jmp    0x1800019c9
   180001f22:	mov    0x6357(%rip),%rcx        # 0x180008280
   180001f29:	test   %rcx,%rcx
   180001f2c:	je     0x180001f4f
   180001f2e:	movq   $0x0,0x20(%rsp)
   180001f37:	lea    0x5605(%rip),%rdx        # 0x180007543
   180001f3e:	lea    0x40(%rsp),%r9
   180001f43:	mov    $0x12,%r8d
   180001f49:	call   *0x5ab1(%rip)        # 0x180007a00
   180001f4f:	movabs $0xffffffff00000000,%rdi
   180001f59:	movabs $0xf00000000,%rsi
   180001f63:	movb   $0x0,0x4f(%rsp)
   180001f68:	test   %ebp,%ebp
   180001f6a:	je     0x180001fb4
   180001f6c:	lea    0x4e(%rsp),%rcx
   180001f71:	mov    $0xcccccccd,%edx
   180001f76:	mov    %rsi,%rax
   180001f79:	nopl   0x0(%rax)
   180001f80:	mov    %ebp,%r8d
   180001f83:	imul   %rdx,%r8
   180001f87:	shr    $0x23,%r8
   180001f8b:	lea    (%r8,%r8,1),%r9d
   180001f8f:	lea    (%r9,%r9,4),%r9d
   180001f93:	mov    %ebp,%r10d
   180001f96:	sub    %r9d,%r10d
   180001f99:	or     $0x30,%r10b
   180001f9d:	mov    %r10b,(%rcx)
   180001fa0:	add    %rdi,%rax
   180001fa3:	dec    %rcx
   180001fa6:	cmp    $0x9,%ebp
   180001fa9:	mov    %r8d,%ebp
   180001fac:	ja     0x180001f80
   180001fae:	sar    $0x20,%rax
   180001fb2:	jmp    0x180001fbe
   180001fb4:	movb   $0x30,0x4e(%rsp)
   180001fb9:	mov    $0xe,%eax
   180001fbe:	mov    0x62bb(%rip),%rcx        # 0x180008280
   180001fc5:	test   %rcx,%rcx
   180001fc8:	je     0x18000202e
   180001fca:	lea    (%rsp,%rax,1),%rdx
   180001fce:	add    $0x40,%rdx
   180001fd2:	mov    $0xffffffff,%r8d
   180001fd8:	nopl   0x0(%rax,%rax,1)
   180001fe0:	inc    %r8d
   180001fe3:	cmpb   $0x0,(%rdx,%r8,1)
   180001fe8:	jne    0x180001fe0
   180001fea:	movq   $0x0,0x20(%rsp)
   180001ff3:	lea    0x84(%rsp),%r9
   180001ffb:	call   *0x59ff(%rip)        # 0x180007a00
   180002001:	mov    0x6278(%rip),%rcx        # 0x180008280
   180002008:	test   %rcx,%rcx
   18000200b:	je     0x18000202e
   18000200d:	movq   $0x0,0x20(%rsp)
   180002016:	lea    0x5539(%rip),%rdx        # 0x180007556
   18000201d:	lea    0x40(%rsp),%r9
   180002022:	mov    $0xd,%r8d
   180002028:	call   *0x59d2(%rip)        # 0x180007a00
   18000202e:	movb   $0x0,0x4f(%rsp)
   180002033:	test   %r12d,%r12d
   180002036:	je     0x180002085
   180002038:	lea    0x4e(%rsp),%rax
   18000203d:	mov    $0xcccccccd,%ecx
   180002042:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002050:	mov    %r12d,%edx
   180002053:	imul   %rcx,%rdx
   180002057:	shr    $0x23,%rdx
   18000205b:	lea    (%rdx,%rdx,1),%r8d
   18000205f:	lea    (%r8,%r8,4),%r8d
   180002063:	mov    %r12d,%r9d
   180002066:	sub    %r8d,%r9d
   180002069:	or     $0x30,%r9b
   18000206d:	mov    %r9b,(%rax)
   180002070:	add    %rdi,%rsi
   180002073:	dec    %rax
   180002076:	cmp    $0x9,%r12d
   18000207a:	mov    %edx,%r12d
   18000207d:	ja     0x180002050
   18000207f:	sar    $0x20,%rsi
   180002083:	jmp    0x18000208f
   180002085:	movb   $0x30,0x4e(%rsp)
   18000208a:	mov    $0xe,%esi
   18000208f:	mov    0x61ea(%rip),%rcx        # 0x180008280
   180002096:	test   %rcx,%rcx
   180002099:	je     0x1800018bd
   18000209f:	lea    (%rsp,%rsi,1),%rdx
   1800020a3:	add    $0x40,%rdx
   1800020a7:	mov    $0xffffffff,%r8d
   1800020ad:	nopl   (%rax)
   1800020b0:	inc    %r8d
   1800020b3:	cmpb   $0x0,(%rdx,%r8,1)
   1800020b8:	jne    0x1800020b0
   1800020ba:	movq   $0x0,0x20(%rsp)
   1800020c3:	lea    0x84(%rsp),%r9
   1800020cb:	call   *0x592f(%rip)        # 0x180007a00
   1800020d1:	mov    0x61a8(%rip),%rcx        # 0x180008280
   1800020d8:	test   %rcx,%rcx
   1800020db:	je     0x1800018bd
   1800020e1:	movq   $0x0,0x20(%rsp)
   1800020ea:	lea    0x5511(%rip),%rdx        # 0x180007602
   1800020f1:	lea    0x40(%rsp),%r9
   1800020f6:	mov    $0x8,%r8d
   1800020fc:	jmp    0x1800018b7
   180002101:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002110:	push   %r14
   180002112:	push   %rsi
   180002113:	push   %rdi
   180002114:	push   %rbx
   180002115:	sub    $0x48,%rsp
   180002119:	call   *0x5899(%rip)        # 0x1800079b8
   18000211f:	mov    %eax,%esi
   180002121:	lea    0x5f08(%rip),%rdi        # 0x180008030
   180002128:	mov    0x5889(%rip),%rbx        # 0x1800079b8
   18000212f:	mov    0x58aa(%rip),%r14        # 0x1800079e0
   180002136:	mov    0x5ee3(%rip),%rax        # 0x180008020
   18000213d:	xor    %ecx,%ecx
   18000213f:	nop
   180002140:	movzbl 0x1000(%rax,%rcx,1),%edx
   180002148:	cmp    (%rcx,%rdi,1),%dl
   18000214b:	jne    0x1800021a8
   18000214d:	movzbl 0x1001(%rax,%rcx,1),%edx
   180002155:	cmp    0x1(%rcx,%rdi,1),%dl
   180002159:	jne    0x1800021a8
   18000215b:	movzbl 0x1002(%rax,%rcx,1),%edx
   180002163:	cmp    0x2(%rcx,%rdi,1),%dl
   180002167:	jne    0x1800021a8
   180002169:	movzbl 0x1003(%rax,%rcx,1),%edx
   180002171:	cmp    0x3(%rcx,%rdi,1),%dl
   180002175:	jne    0x1800021a8
   180002177:	cmp    $0x3c,%rcx
   18000217b:	je     0x180002194
   18000217d:	movzbl 0x1004(%rax,%rcx,1),%edx
   180002185:	lea    0x5(%rcx),%r8
   180002189:	cmp    0x4(%rcx,%rdi,1),%dl
   18000218d:	mov    %r8,%rcx
   180002190:	je     0x180002140
   180002192:	jmp    0x1800021a8
   180002194:	call   *%rbx
   180002196:	sub    %esi,%eax
   180002198:	cmp    $0x1d4c1,%eax
   18000219d:	jae    0x180002309
   1800021a3:	call   *%r14
   1800021a6:	jmp    0x180002136
   1800021a8:	mov    0x60d1(%rip),%rcx        # 0x180008280
   1800021af:	test   %rcx,%rcx
   1800021b2:	je     0x1800021d5
   1800021b4:	movq   $0x0,0x20(%rsp)
   1800021bd:	lea    0x5343(%rip),%rdx        # 0x180007507
   1800021c4:	lea    0x30(%rsp),%r9
   1800021c9:	mov    $0x1a,%r8d
   1800021cf:	call   *0x582b(%rip)        # 0x180007a00
   1800021d5:	call   *0x57dd(%rip)        # 0x1800079b8
   1800021db:	movb   $0x0,0x3f(%rsp)
   1800021e0:	sub    %esi,%eax
   1800021e2:	je     0x180002243
   1800021e4:	movabs $0xf00000000,%rdx
   1800021ee:	lea    0x3e(%rsp),%rcx
   1800021f3:	mov    $0xcccccccd,%r8d
   1800021f9:	movabs $0xffffffff00000000,%r9
   180002203:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002210:	add    %r9,%rdx
   180002213:	mov    %eax,%r10d
   180002216:	imul   %r8,%r10
   18000221a:	shr    $0x23,%r10
   18000221e:	lea    (%r10,%r10,1),%r11d
   180002222:	lea    (%r11,%r11,4),%r11d
   180002226:	mov    %eax,%esi
   180002228:	sub    %r11d,%esi
   18000222b:	or     $0x30,%sil
   18000222f:	mov    %sil,(%rcx)
   180002232:	dec    %rcx
   180002235:	cmp    $0x9,%eax
   180002238:	mov    %r10d,%eax
   18000223b:	ja     0x180002210
   18000223d:	sar    $0x20,%rdx
   180002241:	jmp    0x18000224d
   180002243:	movb   $0x30,0x3e(%rsp)
   180002248:	mov    $0xe,%edx
   18000224d:	mov    0x602c(%rip),%rcx        # 0x180008280
   180002254:	test   %rcx,%rcx
   180002257:	je     0x1800022bb
   180002259:	add    %rsp,%rdx
   18000225c:	add    $0x30,%rdx
   180002260:	mov    $0xffffffff,%r8d
   180002266:	cs nopw 0x0(%rax,%rax,1)
   180002270:	inc    %r8d
   180002273:	cmpb   $0x0,(%rdx,%r8,1)
   180002278:	jne    0x180002270
   18000227a:	movq   $0x0,0x20(%rsp)
   180002283:	lea    0x44(%rsp),%r9
   180002288:	call   *0x5772(%rip)        # 0x180007a00
   18000228e:	mov    0x5feb(%rip),%rcx        # 0x180008280
   180002295:	test   %rcx,%rcx
   180002298:	je     0x1800022bb
   18000229a:	movq   $0x0,0x20(%rsp)
   1800022a3:	lea    0x5532(%rip),%rdx        # 0x1800077dc
   1800022aa:	lea    0x30(%rsp),%r9
   1800022af:	mov    $0x2,%r8d
   1800022b5:	call   *0x5745(%rip)        # 0x180007a00
   1800022bb:	call   0x18007fc00
   1800022c0:	mov    0x5fb9(%rip),%rcx        # 0x180008280
   1800022c7:	call   *0x56a3(%rip)        # 0x180007970
   1800022cd:	movq   $0x0,0x5fa8(%rip)        # 0x180008280
   1800022d8:	movq   $0x0,0x28(%rsp)
   1800022e1:	movl   $0x0,0x20(%rsp)
   1800022e9:	lea    0x50(%rip),%r8        # 0x180002340
   1800022f0:	xor    %ecx,%ecx
   1800022f2:	xor    %edx,%edx
   1800022f4:	xor    %r9d,%r9d
   1800022f7:	call   *0x5683(%rip)        # 0x180007980
   1800022fd:	xor    %eax,%eax
   1800022ff:	add    $0x48,%rsp
   180002303:	pop    %rbx
   180002304:	pop    %rdi
   180002305:	pop    %rsi
   180002306:	pop    %r14
   180002308:	ret    
   180002309:	mov    0x5f70(%rip),%rcx        # 0x180008280
   180002310:	test   %rcx,%rcx
   180002313:	je     0x1800022fd
   180002315:	movq   $0x0,0x20(%rsp)
   18000231e:	lea    0x524c(%rip),%rdx        # 0x180007571
   180002325:	lea    0x30(%rsp),%r9
   18000232a:	mov    $0x20,%r8d
   180002330:	call   *0x56ca(%rip)        # 0x180007a00
   180002336:	jmp    0x1800022fd
   180002338:	nopl   0x0(%rax,%rax,1)
   180002340:	push   %r15
   180002342:	push   %r14
   180002344:	push   %r13
   180002346:	push   %r12
   180002348:	push   %rsi
   180002349:	push   %rdi
   18000234a:	push   %rbp
   18000234b:	push   %rbx
   18000234c:	sub    $0x7a8,%rsp
   180002353:	movaps %xmm12,0x790(%rsp)
   18000235c:	movaps %xmm11,0x780(%rsp)
   180002365:	movaps %xmm10,0x770(%rsp)
   18000236e:	movaps %xmm9,0x760(%rsp)
   180002377:	movaps %xmm8,0x750(%rsp)
   180002380:	movaps %xmm7,0x740(%rsp)
   180002388:	movaps %xmm6,0x730(%rsp)
   180002390:	mov    0x5ee2(%rip),%eax        # 0x180008278
   180002396:	test   %rax,%rax
   180002399:	je     0x1800023a7
   18000239b:	cmp    $0x8,%eax
   18000239e:	jae    0x1800023ae
   1800023a0:	xor    %ecx,%ecx
   1800023a2:	jmp    0x18000242d
   1800023a7:	xor    %edx,%edx
   1800023a9:	jmp    0x180002458
   1800023ae:	cmp    $0x20,%eax
   1800023b1:	jae    0x1800023b7
   1800023b3:	xor    %ecx,%ecx
   1800023b5:	jmp    0x180002400
   1800023b7:	mov    %eax,%ecx
   1800023b9:	and    $0xffffffe0,%ecx
   1800023bc:	xor    %edx,%edx
   1800023be:	lea    0x5cab(%rip),%r8        # 0x180008070
   1800023c5:	data16 cs nopw 0x0(%rax,%rax,1)
   1800023d0:	movaps (%rdx,%r8,1),%xmm0
   1800023d5:	movaps 0x10(%rdx,%r8,1),%xmm1
   1800023db:	movaps %xmm0,0x4d0(%rsp,%rdx,1)
   1800023e3:	movaps %xmm1,0x4e0(%rsp,%rdx,1)
   1800023eb:	add    $0x20,%rdx
   1800023ef:	cmp    %rdx,%rcx
   1800023f2:	jne    0x1800023d0
   1800023f4:	mov    %rax,%rdx
   1800023f7:	cmp    %rax,%rcx
   1800023fa:	je     0x180002458
   1800023fc:	test   $0x18,%al
   1800023fe:	je     0x18000242d
   180002400:	mov    %rcx,%rdx
   180002403:	mov    %eax,%ecx
   180002405:	and    $0xfffffff8,%ecx
   180002408:	lea    0x5c61(%rip),%r8        # 0x180008070
   18000240f:	nop
   180002410:	mov    (%rdx,%r8,1),%r9
   180002414:	mov    %r9,0x4d0(%rsp,%rdx,1)
   18000241c:	add    $0x8,%rdx
   180002420:	cmp    %rdx,%rcx
   180002423:	jne    0x180002410
   180002425:	mov    %rax,%rdx
   180002428:	cmp    %rax,%rcx
   18000242b:	je     0x180002458
   18000242d:	lea    0x5c3c(%rip),%rdx        # 0x180008070
   180002434:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002440:	movzbl (%rcx,%rdx,1),%r8d
   180002445:	mov    %r8b,0x4d0(%rsp,%rcx,1)
   18000244d:	inc    %rcx
   180002450:	cmp    %rcx,%rax
   180002453:	jne    0x180002440
   180002455:	mov    %rax,%rdx
   180002458:	lea    0x1(%rax),%ecx
   18000245b:	movb   $0x57,0x4d0(%rsp,%rdx,1)
   180002463:	lea    0x2(%rax),%edx
   180002466:	movb   $0x50,0x4d0(%rsp,%rcx,1)
   18000246e:	lea    0x3(%rax),%ecx
   180002471:	movb   $0x31,0x4d0(%rsp,%rdx,1)
   180002479:	lea    0x4(%rax),%edx
   18000247c:	movb   $0x30,0x4d0(%rsp,%rcx,1)
   180002484:	lea    0x5(%rax),%ecx
   180002487:	movb   $0x5f,0x4d0(%rsp,%rdx,1)
   18000248f:	lea    0x6(%rax),%edx
   180002492:	movb   $0x45,0x4d0(%rsp,%rcx,1)
   18000249a:	lea    0x7(%rax),%ecx
   18000249d:	movb   $0x4e,0x4d0(%rsp,%rdx,1)
   1800024a5:	lea    0x8(%rax),%edx
   1800024a8:	movb   $0x5f,0x4d0(%rsp,%rcx,1)
   1800024b0:	lea    0x9(%rax),%ecx
   1800024b3:	movb   $0x6e,0x4d0(%rsp,%rdx,1)
   1800024bb:	lea    0xa(%rax),%edx
   1800024be:	movb   $0x61,0x4d0(%rsp,%rcx,1)
   1800024c6:	lea    0xb(%rax),%ecx
   1800024c9:	movb   $0x6d,0x4d0(%rsp,%rdx,1)
   1800024d1:	lea    0xc(%rax),%edx
   1800024d4:	movb   $0x65,0x4d0(%rsp,%rcx,1)
   1800024dc:	lea    0xd(%rax),%ecx
   1800024df:	movb   $0x73,0x4d0(%rsp,%rdx,1)
   1800024e7:	lea    0xe(%rax),%edx
   1800024ea:	movb   $0x2e,0x4d0(%rsp,%rcx,1)
   1800024f2:	lea    0xf(%rax),%ecx
   1800024f5:	movb   $0x6c,0x4d0(%rsp,%rdx,1)
   1800024fd:	lea    0x10(%rax),%edx
   180002500:	movb   $0x6f,0x4d0(%rsp,%rcx,1)
   180002508:	add    $0x11,%eax
   18000250b:	movb   $0x67,0x4d0(%rsp,%rdx,1)
   180002513:	movb   $0x0,0x4d0(%rsp,%rax,1)
   18000251b:	movq   $0x0,0x30(%rsp)
   180002524:	movl   $0x80,0x28(%rsp)
   18000252c:	movl   $0x2,0x20(%rsp)
   180002534:	lea    0x4d0(%rsp),%rcx
   18000253c:	mov    $0x40000000,%edx
   180002541:	mov    $0x1,%r8d
   180002547:	xor    %r9d,%r9d
   18000254a:	call   *0x5428(%rip)        # 0x180007978
   180002550:	mov    %rax,0x5d29(%rip)        # 0x180008280
   180002557:	test   %rax,%rax
   18000255a:	je     0x180002598
   18000255c:	mov    $0xffffffff,%r8d
   180002562:	lea    0x51b1(%rip),%rcx        # 0x18000771a
   180002569:	nopl   0x0(%rax)
   180002570:	inc    %r8d
   180002573:	cmpb   $0x0,(%r8,%rcx,1)
   180002578:	jne    0x180002570
   18000257a:	movq   $0x0,0x20(%rsp)
   180002583:	lea    0x5190(%rip),%rdx        # 0x18000771a
   18000258a:	lea    0x70(%rsp),%r9
   18000258f:	mov    %rax,%rcx
   180002592:	call   *0x5468(%rip)        # 0x180007a00
   180002598:	movl   $0x1,0x7afee(%rip)        # 0x18007d590
   1800025a2:	mov    0x5a77(%rip),%r14        # 0x180008020
   1800025a9:	lea    0x2a030d8(%r14),%rsi
   1800025b0:	mov    0x2a030d8(%r14),%rax
   1800025b7:	mov    %rax,0x7b1fa(%rip)        # 0x18007d7b8
   1800025be:	mov    0x542b(%rip),%rbx        # 0x1800079f0
   1800025c5:	lea    0x70(%rsp),%rdi
   1800025ca:	mov    $0x8,%edx
   1800025cf:	mov    %rsi,%rcx
   1800025d2:	mov    $0x4,%r8d
   1800025d8:	mov    %rdi,%r9
   1800025db:	call   *%rbx
   1800025dd:	lea    0x33bc(%rip),%rax        # 0x1800059a0
   1800025e4:	mov    %rax,0x2a030d8(%r14)
   1800025eb:	mov    0x70(%rsp),%r8d
   1800025f0:	mov    $0x8,%edx
   1800025f5:	mov    %rsi,%rcx
   1800025f8:	mov    %rdi,%r9
   1800025fb:	call   *%rbx
   1800025fd:	mov    0x5a1c(%rip),%r14        # 0x180008020
   180002604:	lea    0x2a030c8(%r14),%rsi
   18000260b:	mov    0x2a030c8(%r14),%rax
   180002612:	mov    %rax,0x7b1a7(%rip)        # 0x18007d7c0
   180002619:	lea    0x70(%rsp),%rdi
   18000261e:	mov    $0x8,%edx
   180002623:	mov    %rsi,%rcx
   180002626:	mov    $0x4,%r8d
   18000262c:	mov    %rdi,%r9
   18000262f:	call   *%rbx
   180002631:	lea    0x3388(%rip),%rax        # 0x1800059c0
   180002638:	mov    %rax,0x2a030c8(%r14)
   18000263f:	mov    0x70(%rsp),%r8d
   180002644:	mov    $0x8,%edx
   180002649:	mov    %rsi,%rcx
   18000264c:	mov    %rdi,%r9
   18000264f:	call   *%rbx
   180002651:	mov    0x59c8(%rip),%r14        # 0x180008020
   180002658:	lea    0x2a030e8(%r14),%rsi
   18000265f:	mov    0x2a030e8(%r14),%rax
   180002666:	mov    %rax,0x7b15b(%rip)        # 0x18007d7c8
   18000266d:	lea    0x70(%rsp),%rdi
   180002672:	mov    $0x8,%edx
   180002677:	mov    %rsi,%rcx
   18000267a:	mov    $0x4,%r8d
   180002680:	mov    %rdi,%r9
   180002683:	call   *%rbx
   180002685:	lea    0x3374(%rip),%rax        # 0x180005a00
   18000268c:	mov    %rax,0x2a030e8(%r14)
   180002693:	mov    0x70(%rsp),%r8d
   180002698:	mov    $0x8,%edx
   18000269d:	mov    %rsi,%rcx
   1800026a0:	mov    %rdi,%r9
   1800026a3:	call   *%rbx
   1800026a5:	mov    0x5974(%rip),%r14        # 0x180008020
   1800026ac:	lea    0x2a031f0(%r14),%rsi
   1800026b3:	mov    0x2a031f0(%r14),%rax
   1800026ba:	mov    %rax,0x7b10f(%rip)        # 0x18007d7d0
   1800026c1:	lea    0x70(%rsp),%rdi
   1800026c6:	mov    $0x8,%edx
   1800026cb:	mov    %rsi,%rcx
   1800026ce:	mov    $0x4,%r8d
   1800026d4:	mov    %rdi,%r9
   1800026d7:	call   *%rbx
   1800026d9:	lea    0x3350(%rip),%rax        # 0x180005a30
   1800026e0:	mov    %rax,0x2a031f0(%r14)
   1800026e7:	mov    0x70(%rsp),%r8d
   1800026ec:	mov    $0x8,%edx
   1800026f1:	mov    %rsi,%rcx
   1800026f4:	mov    %rdi,%r9
   1800026f7:	call   *%rbx
   1800026f9:	mov    0x5920(%rip),%r14        # 0x180008020
   180002700:	lea    0x2a031f8(%r14),%rsi
   180002707:	mov    0x2a031f8(%r14),%rax
   18000270e:	mov    %rax,0x7b0c3(%rip)        # 0x18007d7d8
   180002715:	lea    0x70(%rsp),%rdi
   18000271a:	mov    $0x8,%edx
   18000271f:	mov    %rsi,%rcx
   180002722:	mov    $0x4,%r8d
   180002728:	mov    %rdi,%r9
   18000272b:	call   *%rbx
   18000272d:	lea    0x331c(%rip),%rax        # 0x180005a50
   180002734:	mov    %rax,0x2a031f8(%r14)
   18000273b:	mov    0x70(%rsp),%r8d
   180002740:	mov    $0x8,%edx
   180002745:	mov    %rsi,%rcx
   180002748:	mov    %rdi,%r9
   18000274b:	call   *%rbx
   18000274d:	mov    0x58cc(%rip),%r14        # 0x180008020
   180002754:	lea    0x2a038d8(%r14),%rsi
   18000275b:	mov    0x2a038d8(%r14),%rax
   180002762:	mov    %rax,0x7b077(%rip)        # 0x18007d7e0
   180002769:	lea    0x70(%rsp),%rdi
   18000276e:	mov    $0x8,%edx
   180002773:	mov    %rsi,%rcx
   180002776:	mov    $0x4,%r8d
   18000277c:	mov    %rdi,%r9
   18000277f:	call   *%rbx
   180002781:	lea    0x3308(%rip),%rax        # 0x180005a90
   180002788:	mov    %rax,0x2a038d8(%r14)
   18000278f:	mov    0x70(%rsp),%r8d
   180002794:	mov    $0x8,%edx
   180002799:	mov    %rsi,%rcx
   18000279c:	mov    %rdi,%r9
   18000279f:	call   *%rbx
   1800027a1:	mov    0x5878(%rip),%r14        # 0x180008020
   1800027a8:	lea    0x2a030c0(%r14),%rsi
   1800027af:	mov    0x2a030c0(%r14),%rax
   1800027b6:	mov    %rax,0x7b02b(%rip)        # 0x18007d7e8
   1800027bd:	lea    0x70(%rsp),%rdi
   1800027c2:	mov    $0x8,%edx
   1800027c7:	mov    %rsi,%rcx
   1800027ca:	mov    $0x4,%r8d
   1800027d0:	mov    %rdi,%r9
   1800027d3:	call   *%rbx
   1800027d5:	lea    0x32d4(%rip),%rax        # 0x180005ab0
   1800027dc:	mov    %rax,0x2a030c0(%r14)
   1800027e3:	mov    0x70(%rsp),%r8d
   1800027e8:	mov    $0x8,%edx
   1800027ed:	mov    %rsi,%rcx
   1800027f0:	mov    %rdi,%r9
   1800027f3:	call   *%rbx
   1800027f5:	mov    0x5824(%rip),%r14        # 0x180008020
   1800027fc:	lea    0x2a030b0(%r14),%rsi
   180002803:	mov    0x2a030b0(%r14),%rax
   18000280a:	mov    %rax,0x7afdf(%rip)        # 0x18007d7f0
   180002811:	lea    0x70(%rsp),%rdi
   180002816:	mov    $0x8,%edx
   18000281b:	mov    %rsi,%rcx
   18000281e:	mov    $0x4,%r8d
   180002824:	mov    %rdi,%r9
   180002827:	call   *%rbx
   180002829:	lea    0x3310(%rip),%rax        # 0x180005b40
   180002830:	mov    %rax,0x2a030b0(%r14)
   180002837:	mov    0x70(%rsp),%r8d
   18000283c:	mov    $0x8,%edx
   180002841:	mov    %rsi,%rcx
   180002844:	mov    %rdi,%r9
   180002847:	call   *%rbx
   180002849:	mov    0x5a30(%rip),%rcx        # 0x180008280
   180002850:	test   %rcx,%rcx
   180002853:	je     0x180002876
   180002855:	movq   $0x0,0x20(%rsp)
   18000285e:	lea    0x4e18(%rip),%rdx        # 0x18000767d
   180002865:	lea    0x70(%rsp),%r9
   18000286a:	mov    $0x2f,%r8d
   180002870:	call   *0x518a(%rip)        # 0x180007a00
   180002876:	movabs $0xffffffff00000000,%r15
   180002880:	movabs $0xf00000000,%rbp
   18000288a:	lea    0x7e(%rsp),%r13
   18000288f:	xor    %esi,%esi
   180002891:	xorps  %xmm6,%xmm6
   180002894:	movaps 0x4a55(%rip),%xmm7        # 0x1800072f0
   18000289b:	movaps 0x4a5d(%rip),%xmm8        # 0x180007300
   1800028a3:	movaps 0x4a65(%rip),%xmm9        # 0x180007310
   1800028ab:	movaps 0x4a6d(%rip),%xmm10        # 0x180007320
   1800028b3:	movaps 0x4a75(%rip),%xmm11        # 0x180007330
   1800028bb:	movaps 0x4a7d(%rip),%xmm12        # 0x180007340
   1800028c3:	mov    $0xcccccccd,%r14d
   1800028c9:	lea    0x70(%rsp),%r12
   1800028ce:	xor    %eax,%eax
   1800028d0:	mov    %rax,0x58(%rsp)
   1800028d5:	movl   $0x0,0x40(%rsp)
   1800028dd:	movl   $0x0,0x44(%rsp)
   1800028e5:	data16 cs nopw 0x0(%rax,%rax,1)
   1800028f0:	mov    %esi,%eax
   1800028f2:	mov    %esi,0x64(%rsp)
   1800028f6:	cs nopw 0x0(%rax,%rax,1)
   180002900:	mov    0x44(%rsp),%eax
   180002904:	mov    %eax,%ebx
   180002906:	mov    0x40(%rsp),%eax
   18000290a:	mov    %al,0x48(%rsp)
   18000290e:	mov    $0x32,%ecx
   180002913:	call   *0x50bf(%rip)        # 0x1800079d8
   180002919:	mov    0x58(%rsp),%rax
   18000291e:	inc    %eax
   180002920:	mov    %rax,0x58(%rsp)
   180002925:	cmpq   $0x0,0x7ac6b(%rip)        # 0x18007d598
   18000292d:	jne    0x1800029e0
   180002933:	mov    0x58(%rsp),%rcx
   180002938:	mov    %rcx,%rax
   18000293b:	imul   %r14,%rax
   18000293f:	shr    $0x24,%rax
   180002943:	shl    $0x2,%eax
   180002946:	lea    (%rax,%rax,4),%eax
   180002949:	sub    %eax,%ecx
   18000294b:	jne    0x1800029e0
   180002951:	movl   $0x0,0x7ac45(%rip)        # 0x18007d5a0
   18000295b:	lea    0x1cee(%rip),%rcx        # 0x180004650
   180002962:	xor    %edx,%edx
   180002964:	call   *0x50ae(%rip)        # 0x180007a18
   18000296a:	mov    0x7ac2f(%rip),%r9d        # 0x18007d5a0
   180002971:	test   %r9d,%r9d
   180002974:	je     0x1800029e0
   180002976:	mov    $0x3,%ecx
   18000297b:	lea    0x1d2e(%rip),%rdx        # 0x1800046b0
   180002982:	xor    %r8d,%r8d
   180002985:	call   *0x50c5(%rip)        # 0x180007a50
   18000298b:	mov    %rax,0x7ac06(%rip)        # 0x18007d598
   180002992:	test   %rax,%rax
   180002995:	lea    0x4cc9(%rip),%rdx        # 0x180007665
   18000299c:	lea    0x4d2b(%rip),%rax        # 0x1800076ce
   1800029a3:	cmove  %rax,%rdx
   1800029a7:	mov    0x58d2(%rip),%rcx        # 0x180008280
   1800029ae:	test   %rcx,%rcx
   1800029b1:	je     0x1800029e0
   1800029b3:	mov    $0xffffffff,%r8d
   1800029b9:	nopl   0x0(%rax)
   1800029c0:	inc    %r8d
   1800029c3:	cmpb   $0x0,(%rdx,%r8,1)
   1800029c8:	jne    0x1800029c0
   1800029ca:	movq   $0x0,0x20(%rsp)
   1800029d3:	mov    %r12,%r9
   1800029d6:	call   *0x5024(%rip)        # 0x180007a00
   1800029dc:	nopl   0x0(%rax)
   1800029e0:	mov    $0x11,%ecx
   1800029e5:	mov    0x5034(%rip),%rsi        # 0x180007a20
   1800029ec:	call   *%rsi
   1800029ee:	test   %ax,%ax
   1800029f1:	js     0x180002a00
   1800029f3:	xor    %edi,%edi
   1800029f5:	jmp    0x180002a0d
   1800029f7:	nopw   0x0(%rax,%rax,1)
   180002a00:	mov    $0x10,%ecx
   180002a05:	call   *%rsi
   180002a07:	movzwl %ax,%edi
   180002a0a:	shr    $0xf,%edi
   180002a0d:	mov    $0x77,%ecx
   180002a12:	call   *%rsi
   180002a14:	movzwl %ax,%eax
   180002a17:	mov    %eax,%ecx
   180002a19:	shr    $0xf,%ecx
   180002a1c:	mov    %ecx,0x44(%rsp)
   180002a20:	mov    %edi,%esi
   180002a22:	xor    $0x1,%sil
   180002a26:	test   %ax,%ax
   180002a29:	mov    %edi,0x6c(%rsp)
   180002a2d:	js     0x180002a49
   180002a2f:	test   %sil,%sil
   180002a32:	jne    0x180002a49
   180002a34:	mov    $0x4e,%ecx
   180002a39:	call   *0x4fe1(%rip)        # 0x180007a20
   180002a3f:	movzwl %ax,%eax
   180002a42:	shr    $0xf,%eax
   180002a45:	mov    %eax,0x44(%rsp)
   180002a49:	mov    $0x76,%ecx
   180002a4e:	mov    0x4fcb(%rip),%rdi        # 0x180007a20
   180002a55:	call   *%rdi
   180002a57:	test   %ax,%ax
   180002a5a:	sets   %cl
   180002a5d:	or     %sil,%cl
   180002a60:	jne    0x180002a69
   180002a62:	mov    $0x46,%ecx
   180002a67:	call   *%rdi
   180002a69:	movzwl %ax,%eax
   180002a6c:	shr    $0xf,%eax
   180002a6f:	mov    %eax,0x40(%rsp)
   180002a73:	lea    0x7ab46(%rip),%rdi        # 0x18007d5c0
   180002a7a:	lea    0x55ef(%rip),%r9        # 0x180008070
   180002a81:	mov    0x44(%rsp),%eax
   180002a85:	not    %al
   180002a87:	or     %al,%bl
   180002a89:	test   $0x1,%bl
   180002a8c:	mov    0x4f6d(%rip),%rbx        # 0x180007a00
   180002a93:	jne    0x180003240
   180002a99:	mov    0x57d9(%rip),%eax        # 0x180008278
   180002a9f:	test   %rax,%rax
   180002aa2:	je     0x180002ab0
   180002aa4:	cmp    $0x8,%eax
   180002aa7:	jae    0x180002ab7
   180002aa9:	xor    %ecx,%ecx
   180002aab:	jmp    0x180002b30
   180002ab0:	xor    %edx,%edx
   180002ab2:	jmp    0x180002b44
   180002ab7:	cmp    $0x20,%eax
   180002aba:	jae    0x180002ac0
   180002abc:	xor    %ecx,%ecx
   180002abe:	jmp    0x180002afd
   180002ac0:	mov    %eax,%ecx
   180002ac2:	and    $0xffffffe0,%ecx
   180002ac5:	xor    %edx,%edx
   180002ac7:	nopw   0x0(%rax,%rax,1)
   180002ad0:	movaps (%rdx,%r9,1),%xmm0
   180002ad5:	movaps 0x10(%rdx,%r9,1),%xmm1
   180002adb:	movaps %xmm0,0x70(%rsp,%rdx,1)
   180002ae0:	movaps %xmm1,0x80(%rsp,%rdx,1)
   180002ae8:	add    $0x20,%rdx
   180002aec:	cmp    %rdx,%rcx
   180002aef:	jne    0x180002ad0
   180002af1:	mov    %rax,%rdx
   180002af4:	cmp    %rax,%rcx
   180002af7:	je     0x180002b44
   180002af9:	test   $0x18,%al
   180002afb:	je     0x180002b30
   180002afd:	mov    %rcx,%rdx
   180002b00:	mov    %eax,%ecx
   180002b02:	and    $0xfffffff8,%ecx
   180002b05:	data16 cs nopw 0x0(%rax,%rax,1)
   180002b10:	mov    (%rdx,%r9,1),%r8
   180002b14:	mov    %r8,0x70(%rsp,%rdx,1)
   180002b19:	add    $0x8,%rdx
   180002b1d:	cmp    %rdx,%rcx
   180002b20:	jne    0x180002b10
   180002b22:	mov    %rax,%rdx
   180002b25:	cmp    %rax,%rcx
   180002b28:	je     0x180002b44
   180002b2a:	nopw   0x0(%rax,%rax,1)
   180002b30:	movzbl (%rcx,%r9,1),%edx
   180002b35:	mov    %dl,0x70(%rsp,%rcx,1)
   180002b39:	inc    %rcx
   180002b3c:	cmp    %rcx,%rax
   180002b3f:	jne    0x180002b30
   180002b41:	mov    %rax,%rdx
   180002b44:	lea    0x1(%rax),%ecx
   180002b47:	movb   $0x57,0x70(%rsp,%rdx,1)
   180002b4c:	lea    0x2(%rax),%edx
   180002b4f:	movb   $0x50,0x70(%rsp,%rcx,1)
   180002b54:	lea    0x3(%rax),%ecx
   180002b57:	movb   $0x31,0x70(%rsp,%rdx,1)
   180002b5c:	lea    0x4(%rax),%edx
   180002b5f:	movb   $0x30,0x70(%rsp,%rcx,1)
   180002b64:	lea    0x5(%rax),%ecx
   180002b67:	movb   $0x5f,0x70(%rsp,%rdx,1)
   180002b6c:	lea    0x6(%rax),%edx
   180002b6f:	movb   $0x45,0x70(%rsp,%rcx,1)
   180002b74:	lea    0x7(%rax),%ecx
   180002b77:	movb   $0x4e,0x70(%rsp,%rdx,1)
   180002b7c:	lea    0x8(%rax),%edx
   180002b7f:	movb   $0x5f,0x70(%rsp,%rcx,1)
   180002b84:	lea    0x9(%rax),%ecx
   180002b87:	movb   $0x6e,0x70(%rsp,%rdx,1)
   180002b8c:	lea    0xa(%rax),%edx
   180002b8f:	movb   $0x61,0x70(%rsp,%rcx,1)
   180002b94:	lea    0xb(%rax),%ecx
   180002b97:	movb   $0x6d,0x70(%rsp,%rdx,1)
   180002b9c:	lea    0xc(%rax),%edx
   180002b9f:	movb   $0x65,0x70(%rsp,%rcx,1)
   180002ba4:	lea    0xd(%rax),%ecx
   180002ba7:	movb   $0x2e,0x70(%rsp,%rdx,1)
   180002bac:	lea    0xe(%rax),%edx
   180002baf:	movb   $0x74,0x70(%rsp,%rcx,1)
   180002bb4:	lea    0xf(%rax),%ecx
   180002bb7:	movb   $0x78,0x70(%rsp,%rdx,1)
   180002bbc:	add    $0x10,%eax
   180002bbf:	movb   $0x74,0x70(%rsp,%rcx,1)
   180002bc4:	movb   $0x0,0x70(%rsp,%rax,1)
   180002bc9:	movq   $0x0,0x30(%rsp)
   180002bd2:	movl   $0x80,0x28(%rsp)
   180002bda:	movl   $0x3,0x20(%rsp)
   180002be2:	mov    %r12,%rcx
   180002be5:	mov    $0x80000000,%edx
   180002bea:	mov    $0x3,%r8d
   180002bf0:	xor    %r9d,%r9d
   180002bf3:	call   *0x4d7f(%rip)        # 0x180007978
   180002bf9:	movq   $0x0,0x7a9a0(%rip)        # 0x18007d5a4
   180002c04:	cmp    $0xffffffffffffffff,%rax
   180002c08:	je     0x180002df0
   180002c0e:	mov    %rax,%rsi
   180002c11:	movl   $0x0,0x54(%rsp)
   180002c19:	movq   $0x0,0x20(%rsp)
   180002c22:	mov    %rax,%rcx
   180002c25:	lea    0x2d0(%rsp),%rdx
   180002c2d:	mov    $0x1ff,%r8d
   180002c33:	lea    0x54(%rsp),%r9
   180002c38:	call   *0x4d92(%rip)        # 0x1800079d0
   180002c3e:	mov    %rsi,%rcx
   180002c41:	call   *0x4d29(%rip)        # 0x180007970
   180002c47:	mov    0x54(%rsp),%eax
   180002c4b:	movb   $0x0,0x2d0(%rsp,%rax,1)
   180002c53:	test   %rax,%rax
   180002c56:	je     0x180002df0
   180002c5c:	xor    %r8d,%r8d
   180002c5f:	jmp    0x180002c7f
   180002c61:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002c70:	mov    %eax,%ecx
   180002c72:	inc    %ecx
   180002c74:	mov    %ecx,%r8d
   180002c77:	cmp    %eax,%ecx
   180002c79:	jae    0x180002df0
   180002c7f:	mov    %r8d,%ecx
   180002c82:	movzbl 0x2d0(%rsp,%rcx,1),%edx
   180002c8a:	cmp    $0x6c,%edx
   180002c8d:	je     0x180002ce0
   180002c8f:	cmp    $0x66,%edx
   180002c92:	jne    0x180002d30
   180002c98:	cmpb   $0x69,0x2d1(%rsp,%rcx,1)
   180002ca0:	jne    0x180002d30
   180002ca6:	cmpb   $0x72,0x2d2(%rsp,%rcx,1)
   180002cae:	jne    0x180002d30
   180002cb4:	cmpb   $0x73,0x2d3(%rsp,%rcx,1)
   180002cbc:	jne    0x180002d30
   180002cbe:	cmpb   $0x74,0x2d4(%rsp,%rcx,1)
   180002cc6:	jne    0x180002d30
   180002cc8:	cmpb   $0x3d,0x2d5(%rsp,%rcx,1)
   180002cd0:	jne    0x180002d30
   180002cd2:	mov    $0x6,%ecx
   180002cd7:	xor    %edx,%edx
   180002cd9:	jmp    0x180002d12
   180002cdb:	nopl   0x0(%rax,%rax,1)
   180002ce0:	cmpb   $0x61,0x2d1(%rsp,%rcx,1)
   180002ce8:	jne    0x180002d30
   180002cea:	cmpb   $0x73,0x2d2(%rsp,%rcx,1)
   180002cf2:	jne    0x180002d30
   180002cf4:	cmpb   $0x74,0x2d3(%rsp,%rcx,1)
   180002cfc:	jne    0x180002d30
   180002cfe:	cmpb   $0x3d,0x2d4(%rsp,%rcx,1)
   180002d06:	jne    0x180002d30
   180002d08:	mov    $0x1,%edx
   180002d0d:	mov    $0x5,%ecx
   180002d12:	add    %r8d,%ecx
   180002d15:	xor    %r8d,%r8d
   180002d18:	cmp    %eax,%ecx
   180002d1a:	jae    0x180002d9a
   180002d1c:	mov    %ecx,%ecx
   180002d1e:	xor    %r8d,%r8d
   180002d21:	jmp    0x180002d68
   180002d23:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002d30:	mov    %r8d,%ecx
   180002d33:	cmp    %eax,%ecx
   180002d35:	jae    0x180002c72
   180002d3b:	mov    %ecx,%ecx
   180002d3d:	nopl   (%rax)
   180002d40:	cmpb   $0xa,0x2d0(%rsp,%rcx,1)
   180002d48:	je     0x180002c72
   180002d4e:	inc    %rcx
   180002d51:	cmp    %rcx,%rax
   180002d54:	jne    0x180002d40
   180002d56:	jmp    0x180002c70
   180002d5b:	nopl   0x0(%rax,%rax,1)
   180002d60:	inc    %rcx
   180002d63:	cmp    %rcx,%rax
   180002d66:	je     0x180002d98
   180002d68:	movzbl 0x2d0(%rsp,%rcx,1),%r9d
   180002d71:	lea    -0x20(%r9),%r10d
   180002d75:	cmp    $0x5e,%r10b
   180002d79:	ja     0x180002d9a
   180002d7b:	cmp    $0x5,%r8d
   180002d7f:	jg     0x180002d60
   180002d81:	movslq %r8d,%r10
   180002d84:	inc    %r8d
   180002d87:	lea    0x7aaa2(%rip),%r11        # 0x18007d830
   180002d8e:	lea    (%r11,%rdx,8),%r11
   180002d92:	mov    %r9b,(%r10,%r11,1)
   180002d96:	jmp    0x180002d60
   180002d98:	mov    %eax,%ecx
   180002d9a:	movslq %r8d,%r9
   180002d9d:	lea    0x1(%r9),%r8d
   180002da1:	lea    0x7aa88(%rip),%r10        # 0x18007d830
   180002da8:	lea    (%r10,%rdx,8),%r10
   180002dac:	dec    %r10
   180002daf:	mov    %r9,%r11
   180002db2:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002dc0:	sub    $0x1,%r11
   180002dc4:	jb     0x180002dd5
   180002dc6:	dec    %r8d
   180002dc9:	cmpb   $0x20,(%r10,%r9,1)
   180002dce:	mov    %r11,%r9
   180002dd1:	je     0x180002dc0
   180002dd3:	jmp    0x180002dd8
   180002dd5:	xor    %r8d,%r8d
   180002dd8:	lea    0x7a7c5(%rip),%r9        # 0x18007d5a4
   180002ddf:	mov    %r8d,(%r9,%rdx,4)
   180002de3:	cmp    %eax,%ecx
   180002de5:	jae    0x180002c72
   180002deb:	jmp    0x180002d3b
   180002df0:	mov    0x5489(%rip),%rcx        # 0x180008280
   180002df7:	test   %rcx,%rcx
   180002dfa:	je     0x180002e17
   180002dfc:	movq   $0x0,0x20(%rsp)
   180002e05:	lea    0x465e(%rip),%rdx        # 0x18000746a
   180002e0c:	mov    $0x10,%r8d
   180002e12:	mov    %r12,%r9
   180002e15:	call   *%rbx
   180002e17:	mov    0x7a787(%rip),%edx        # 0x18007d5a4
   180002e1d:	movb   $0x0,0x7f(%rsp)
   180002e22:	lea    0x7e(%rsp),%rcx
   180002e27:	mov    %rbp,%rax
   180002e2a:	test   %edx,%edx
   180002e2c:	je     0x180002e64
   180002e2e:	xchg   %ax,%ax
   180002e30:	mov    %edx,%r8d
   180002e33:	imul   %r14,%r8
   180002e37:	shr    $0x23,%r8
   180002e3b:	lea    (%r8,%r8,1),%r9d
   180002e3f:	lea    (%r9,%r9,4),%r9d
   180002e43:	mov    %edx,%r10d
   180002e46:	sub    %r9d,%r10d
   180002e49:	or     $0x30,%r10b
   180002e4d:	mov    %r10b,(%rcx)
   180002e50:	add    %r15,%rax
   180002e53:	dec    %rcx
   180002e56:	cmp    $0x9,%edx
   180002e59:	mov    %r8d,%edx
   180002e5c:	ja     0x180002e30
   180002e5e:	sar    $0x20,%rax
   180002e62:	jmp    0x180002e6e
   180002e64:	movb   $0x30,0x7e(%rsp)
   180002e69:	mov    $0xe,%eax
   180002e6e:	mov    0x540b(%rip),%rcx        # 0x180008280
   180002e75:	test   %rcx,%rcx
   180002e78:	je     0x180002ed4
   180002e7a:	lea    (%rsp,%rax,1),%rdx
   180002e7e:	add    $0x70,%rdx
   180002e82:	mov    $0xffffffff,%r8d
   180002e88:	nopl   0x0(%rax,%rax,1)
   180002e90:	inc    %r8d
   180002e93:	cmpb   $0x0,(%rdx,%r8,1)
   180002e98:	jne    0x180002e90
   180002e9a:	movq   $0x0,0x20(%rsp)
   180002ea3:	lea    0x2d0(%rsp),%r9
   180002eab:	call   *%rbx
   180002ead:	mov    0x53cc(%rip),%rcx        # 0x180008280
   180002eb4:	test   %rcx,%rcx
   180002eb7:	je     0x180002ed4
   180002eb9:	movq   $0x0,0x20(%rsp)
   180002ec2:	lea    0x45b2(%rip),%rdx        # 0x18000747b
   180002ec9:	mov    $0xa,%r8d
   180002ecf:	mov    %r12,%r9
   180002ed2:	call   *%rbx
   180002ed4:	mov    0x7a6ce(%rip),%edx        # 0x18007d5a8
   180002eda:	movb   $0x0,0x7f(%rsp)
   180002edf:	lea    0x7e(%rsp),%rcx
   180002ee4:	mov    %rbp,%rax
   180002ee7:	test   %edx,%edx
   180002ee9:	je     0x180002f24
   180002eeb:	nopl   0x0(%rax,%rax,1)
   180002ef0:	mov    %edx,%r8d
   180002ef3:	imul   %r14,%r8
   180002ef7:	shr    $0x23,%r8
   180002efb:	lea    (%r8,%r8,1),%r9d
   180002eff:	lea    (%r9,%r9,4),%r9d
   180002f03:	mov    %edx,%r10d
   180002f06:	sub    %r9d,%r10d
   180002f09:	or     $0x30,%r10b
   180002f0d:	mov    %r10b,(%rcx)
   180002f10:	add    %r15,%rax
   180002f13:	dec    %rcx
   180002f16:	cmp    $0x9,%edx
   180002f19:	mov    %r8d,%edx
   180002f1c:	ja     0x180002ef0
   180002f1e:	sar    $0x20,%rax
   180002f22:	jmp    0x180002f2e
   180002f24:	movb   $0x30,0x7e(%rsp)
   180002f29:	mov    $0xe,%eax
   180002f2e:	mov    0x534b(%rip),%rcx        # 0x180008280
   180002f35:	test   %rcx,%rcx
   180002f38:	je     0x180002f6d
   180002f3a:	lea    (%rsp,%rax,1),%rdx
   180002f3e:	add    $0x70,%rdx
   180002f42:	mov    $0xffffffff,%r8d
   180002f48:	nopl   0x0(%rax,%rax,1)
   180002f50:	inc    %r8d
   180002f53:	cmpb   $0x0,(%rdx,%r8,1)
   180002f58:	jne    0x180002f50
   180002f5a:	movq   $0x0,0x20(%rsp)
   180002f63:	lea    0x2d0(%rsp),%r9
   180002f6b:	call   *%rbx
   180002f6d:	xor    %esi,%esi
   180002f6f:	xor    %ecx,%ecx
   180002f71:	jmp    0x180002f8c
   180002f73:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180002f80:	add    %rax,%rcx
   180002f83:	test   %rax,%rax
   180002f86:	je     0x180003150
   180002f8c:	mov    $0x30,%r8d
   180002f92:	mov    %r12,%rdx
   180002f95:	call   *0x4a5d(%rip)        # 0x1800079f8
   180002f9b:	test   %rax,%rax
   180002f9e:	je     0x180003150
   180002fa4:	mov    0x70(%rsp),%rcx
   180002fa9:	mov    0x88(%rsp),%rax
   180002fb1:	cmpl   $0x1000,0x90(%rsp)
   180002fbc:	jne    0x180002f80
   180002fbe:	mov    0x94(%rsp),%edx
   180002fc5:	test   $0x4,%dl
   180002fc8:	je     0x180002f80
   180002fca:	test   $0x700,%edx
   180002fd0:	jne    0x180002f80
   180002fd2:	cmp    $0x3fffffff,%rax
   180002fd8:	ja     0x180002f80
   180002fda:	cmp    $0x10,%rax
   180002fde:	jb     0x180002f80
   180002fe0:	lea    (%rcx,%rax,1),%rdx
   180002fe4:	add    $0xfffffffffffffff8,%rdx
   180002fe8:	mov    %rcx,%r8
   180002feb:	jmp    0x18000301c
   180002fed:	lea    0x7a83c(%rip),%r10        # 0x18007d830
   180002ff4:	movzbl 0x5(%r10,%r9,8),%r9d
   180002ffa:	mov    %r9b,0x5(%r8)
   180002ffe:	add    $0x6,%r8
   180003002:	inc    %esi
   180003004:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003010:	inc    %r8
   180003013:	cmp    %rdx,%r8
   180003016:	jae    0x180002f80
   18000301c:	cmpb   $0x82,(%r8)
   180003020:	jne    0x180003010
   180003022:	cmpb   $0x82,0x2(%r8)
   180003027:	jne    0x180003010
   180003029:	cmpb   $0x82,0x4(%r8)
   18000302e:	jne    0x180003010
   180003030:	cmpb   $0x0,0x6(%r8)
   180003035:	jne    0x180003010
   180003037:	movzbl 0x1(%r8),%r10d
   18000303c:	lea    -0x78(%r10),%r9d
   180003040:	cmp    $0x22,%r9d
   180003044:	ja     0x180003010
   180003046:	lea    0x3fb3(%rip),%r11        # 0x180007000
   18000304d:	movslq (%r11,%r9,4),%r9
   180003051:	add    %r11,%r9
   180003054:	jmp    *%r9
   180003057:	cmp    %r10b,0x3(%r8)
   18000305b:	jne    0x180003068
   18000305d:	cmp    %r10b,0x5(%r8)
   180003061:	jne    0x180003068
   180003063:	xor    %r9d,%r9d
   180003066:	jmp    0x180003080
   180003068:	cmp    $0x99,%r10b
   18000306c:	jne    0x180003010
   18000306e:	cmp    %r10b,0x3(%r8)
   180003072:	jne    0x180003010
   180003074:	mov    $0x1,%r9d
   18000307a:	cmp    %r10b,0x5(%r8)
   18000307e:	jne    0x180003010
   180003080:	lea    0x7a51d(%rip),%r10        # 0x18007d5a4
   180003087:	mov    (%r10,%r9,4),%r10d
   18000308b:	test   %r10d,%r10d
   18000308e:	je     0x180003010
   180003090:	jle    0x1800030a0
   180003092:	lea    0x7a797(%rip),%r10        # 0x18007d830
   180003099:	movzbl (%r10,%r9,8),%r10d
   18000309e:	jmp    0x1800030a3
   1800030a0:	xor    %r10d,%r10d
   1800030a3:	mov    %r10b,(%r8)
   1800030a6:	lea    0x7a4f7(%rip),%r10        # 0x18007d5a4
   1800030ad:	cmpl   $0x2,(%r10,%r9,4)
   1800030b2:	jl     0x1800030c3
   1800030b4:	lea    0x7a775(%rip),%r10        # 0x18007d830
   1800030bb:	movzbl 0x1(%r10,%r9,8),%r10d
   1800030c1:	jmp    0x1800030c6
   1800030c3:	xor    %r10d,%r10d
   1800030c6:	mov    %r10b,0x1(%r8)
   1800030ca:	lea    0x7a4d3(%rip),%r10        # 0x18007d5a4
   1800030d1:	cmpl   $0x3,(%r10,%r9,4)
   1800030d6:	jl     0x1800030e7
   1800030d8:	lea    0x7a751(%rip),%r10        # 0x18007d830
   1800030df:	movzbl 0x2(%r10,%r9,8),%r10d
   1800030e5:	jmp    0x1800030ea
   1800030e7:	xor    %r10d,%r10d
   1800030ea:	mov    %r10b,0x2(%r8)
   1800030ee:	lea    0x7a4af(%rip),%r10        # 0x18007d5a4
   1800030f5:	cmpl   $0x4,(%r10,%r9,4)
   1800030fa:	jl     0x18000310b
   1800030fc:	lea    0x7a72d(%rip),%r10        # 0x18007d830
   180003103:	movzbl 0x3(%r10,%r9,8),%r10d
   180003109:	jmp    0x18000310e
   18000310b:	xor    %r10d,%r10d
   18000310e:	mov    %r10b,0x3(%r8)
   180003112:	lea    0x7a48b(%rip),%r10        # 0x18007d5a4
   180003119:	cmpl   $0x5,(%r10,%r9,4)
   18000311e:	jl     0x18000312f
   180003120:	lea    0x7a709(%rip),%r10        # 0x18007d830
   180003127:	movzbl 0x4(%r10,%r9,8),%r10d
   18000312d:	jmp    0x180003132
   18000312f:	xor    %r10d,%r10d
   180003132:	mov    %r10b,0x4(%r8)
   180003136:	lea    0x7a467(%rip),%r10        # 0x18007d5a4
   18000313d:	cmpl   $0x6,(%r10,%r9,4)
   180003142:	jge    0x180002fed
   180003148:	xor    %r9d,%r9d
   18000314b:	jmp    0x180002ffa
   180003150:	mov    0x5129(%rip),%rcx        # 0x180008280
   180003157:	test   %rcx,%rcx
   18000315a:	je     0x180003177
   18000315c:	movq   $0x0,0x20(%rsp)
   180003165:	lea    0x438a(%rip),%rdx        # 0x1800074f6
   18000316c:	mov    $0xa,%r8d
   180003172:	mov    %r12,%r9
   180003175:	call   *%rbx
   180003177:	movb   $0x0,0x7f(%rsp)
   18000317c:	lea    0x7e(%rsp),%rcx
   180003181:	mov    %rbp,%rax
   180003184:	test   %esi,%esi
   180003186:	je     0x1800031c2
   180003188:	nopl   0x0(%rax,%rax,1)
   180003190:	mov    %esi,%edx
   180003192:	imul   %r14,%rdx
   180003196:	shr    $0x23,%rdx
   18000319a:	lea    (%rdx,%rdx,1),%r8d
   18000319e:	lea    (%r8,%r8,4),%r8d
   1800031a2:	mov    %esi,%r9d
   1800031a5:	sub    %r8d,%r9d
   1800031a8:	or     $0x30,%r9b
   1800031ac:	mov    %r9b,(%rcx)
   1800031af:	add    %r15,%rax
   1800031b2:	dec    %rcx
   1800031b5:	cmp    $0x9,%esi
   1800031b8:	mov    %edx,%esi
   1800031ba:	ja     0x180003190
   1800031bc:	sar    $0x20,%rax
   1800031c0:	jmp    0x1800031cc
   1800031c2:	movb   $0x30,0x7e(%rsp)
   1800031c7:	mov    $0xe,%eax
   1800031cc:	mov    0x50ad(%rip),%rcx        # 0x180008280
   1800031d3:	test   %rcx,%rcx
   1800031d6:	je     0x180003240
   1800031d8:	lea    (%rsp,%rax,1),%rdx
   1800031dc:	add    $0x70,%rdx
   1800031e0:	mov    $0xffffffff,%r8d
   1800031e6:	cs nopw 0x0(%rax,%rax,1)
   1800031f0:	inc    %r8d
   1800031f3:	cmpb   $0x0,(%rdx,%r8,1)
   1800031f8:	jne    0x1800031f0
   1800031fa:	movq   $0x0,0x20(%rsp)
   180003203:	lea    0x2d0(%rsp),%r9
   18000320b:	call   *%rbx
   18000320d:	mov    0x506c(%rip),%rcx        # 0x180008280
   180003214:	test   %rcx,%rcx
   180003217:	je     0x180003240
   180003219:	movq   $0x0,0x20(%rsp)
   180003222:	lea    0x45b3(%rip),%rdx        # 0x1800077dc
   180003229:	mov    $0x2,%r8d
   18000322f:	mov    %r12,%r9
   180003232:	call   *%rbx
   180003234:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003240:	mov    0x40(%rsp),%eax
   180003244:	not    %al
   180003246:	movzbl 0x48(%rsp),%ecx
   18000324b:	or     %al,%cl
   18000324d:	test   $0x1,%cl
   180003250:	jne    0x1800032a8
   180003252:	xor    %eax,%eax
   180003254:	cmpl   $0x0,0x7a335(%rip)        # 0x18007d590
   18000325b:	sete   %al
   18000325e:	mov    %eax,0x7a32c(%rip)        # 0x18007d590
   180003264:	cmpl   $0x0,0x7a325(%rip)        # 0x18007d590
   18000326b:	lea    0x443b(%rip),%rdx        # 0x1800076ad
   180003272:	lea    0x4444(%rip),%rax        # 0x1800076bd
   180003279:	cmove  %rax,%rdx
   18000327d:	mov    0x4ffc(%rip),%rcx        # 0x180008280
   180003284:	test   %rcx,%rcx
   180003287:	je     0x1800032a8
   180003289:	mov    $0xffffffff,%r8d
   18000328f:	nop
   180003290:	inc    %r8d
   180003293:	cmpb   $0x0,(%rdx,%r8,1)
   180003298:	jne    0x180003290
   18000329a:	movq   $0x0,0x20(%rsp)
   1800032a3:	mov    %r12,%r9
   1800032a6:	call   *%rbx
   1800032a8:	mov    0x7a2fe(%rip),%eax        # 0x18007d5ac
   1800032ae:	cmp    0x7a2fc(%rip),%eax        # 0x18007d5b0
   1800032b4:	jae    0x180003420
   1800032ba:	mov    0x4fbf(%rip),%rcx        # 0x180008280
   1800032c1:	jmp    0x1800032e4
   1800032c3:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800032d0:	xor    %ecx,%ecx
   1800032d2:	mov    0x7a2d4(%rip),%eax        # 0x18007d5ac
   1800032d8:	cmp    0x7a2d2(%rip),%eax        # 0x18007d5b0
   1800032de:	jae    0x180003420
   1800032e4:	lea    0x1(%rax),%edx
   1800032e7:	mov    %edx,0x7a2bf(%rip)        # 0x18007d5ac
   1800032ed:	mov    %eax,%eax
   1800032ef:	mov    (%rdi,%rax,4),%esi
   1800032f2:	mov    %esi,%eax
   1800032f4:	and    $0xffff0000,%eax
   1800032f9:	cmp    $0x10000,%eax
   1800032fe:	lea    0x4152(%rip),%rdx        # 0x180007457
   180003305:	lea    0x41b3(%rip),%rax        # 0x1800074bf
   18000330c:	cmove  %rax,%rdx
   180003310:	test   %rcx,%rcx
   180003313:	je     0x180003338
   180003315:	mov    $0xffffffff,%r8d
   18000331b:	nopl   0x0(%rax,%rax,1)
   180003320:	inc    %r8d
   180003323:	cmpb   $0x0,(%rdx,%r8,1)
   180003328:	jne    0x180003320
   18000332a:	movq   $0x0,0x20(%rsp)
   180003333:	mov    %r12,%r9
   180003336:	call   *%rbx
   180003338:	movb   $0x0,0x7f(%rsp)
   18000333d:	mov    %r13,%rcx
   180003340:	mov    %rbp,%rax
   180003343:	and    $0xffff,%esi
   180003349:	je     0x180003390
   18000334b:	nopl   0x0(%rax,%rax,1)
   180003350:	mov    %esi,%edx
   180003352:	imul   %r14,%rdx
   180003356:	shr    $0x23,%rdx
   18000335a:	lea    (%rdx,%rdx,1),%r8d
   18000335e:	lea    (%r8,%r8,4),%r8d
   180003362:	mov    %esi,%r9d
   180003365:	sub    %r8d,%r9d
   180003368:	or     $0x30,%r9b
   18000336c:	mov    %r9b,(%rcx)
   18000336f:	add    %r15,%rax
   180003372:	dec    %rcx
   180003375:	cmp    $0x9,%esi
   180003378:	mov    %edx,%esi
   18000337a:	ja     0x180003350
   18000337c:	sar    $0x20,%rax
   180003380:	jmp    0x18000339a
   180003382:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003390:	movb   $0x30,0x7e(%rsp)
   180003395:	mov    $0xe,%eax
   18000339a:	mov    0x4edf(%rip),%rcx        # 0x180008280
   1800033a1:	test   %rcx,%rcx
   1800033a4:	je     0x1800032d0
   1800033aa:	lea    (%rsp,%rax,1),%rdx
   1800033ae:	add    $0x70,%rdx
   1800033b2:	mov    $0xffffffff,%r8d
   1800033b8:	nopl   0x0(%rax,%rax,1)
   1800033c0:	inc    %r8d
   1800033c3:	cmpb   $0x0,(%rdx,%r8,1)
   1800033c8:	jne    0x1800033c0
   1800033ca:	movq   $0x0,0x20(%rsp)
   1800033d3:	lea    0x2d0(%rsp),%r9
   1800033db:	call   *%rbx
   1800033dd:	mov    0x4e9c(%rip),%rcx        # 0x180008280
   1800033e4:	test   %rcx,%rcx
   1800033e7:	je     0x1800032d0
   1800033ed:	movq   $0x0,0x20(%rsp)
   1800033f6:	lea    0x43df(%rip),%rdx        # 0x1800077dc
   1800033fd:	mov    $0x2,%r8d
   180003403:	mov    %r12,%r9
   180003406:	call   *%rbx
   180003408:	mov    0x4e71(%rip),%rcx        # 0x180008280
   18000340f:	jmp    0x1800032d2
   180003414:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003420:	mov    0x58(%rsp),%rcx
   180003425:	mov    %ecx,%eax
   180003427:	imul   %r14,%rax
   18000342b:	shr    $0x25,%rax
   18000342f:	shl    $0x3,%eax
   180003432:	lea    (%rax,%rax,4),%eax
   180003435:	sub    %eax,%ecx
   180003437:	mov    %ecx,0x68(%rsp)
   18000343b:	cmp    $0x14,%ecx
   18000343e:	jne    0x180003826
   180003444:	mov    0x7a2a2(%rip),%eax        # 0x18007d6ec
   18000344a:	or     0x7a284(%rip),%eax        # 0x18007d6d4
   180003450:	or     0x7a2ae(%rip),%eax        # 0x18007d704
   180003456:	or     0x7a2c0(%rip),%eax        # 0x18007d71c
   18000345c:	or     0x7a2d2(%rip),%eax        # 0x18007d734
   180003462:	or     0x7a2e4(%rip),%eax        # 0x18007d74c
   180003468:	je     0x180003826
   18000346e:	mov    0x4bab(%rip),%rdi        # 0x180008020
   180003475:	mov    0x3c(%rdi),%eax
   180003478:	mov    0x50(%rdi,%rax,1),%esi
   18000347c:	mov    %rsi,0x48(%rsp)
   180003481:	jmp    0x1800034a3
   180003483:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180003490:	test   %r13,%r13
   180003493:	lea    0x70(%rsp),%r12
   180003498:	mov    0x48(%rsp),%rsi
   18000349d:	je     0x180003810
   1800034a3:	mov    0x4b76(%rip),%rax        # 0x180008020
   1800034aa:	add    %rsi,%rax
   1800034ad:	cmp    %rax,%rdi
   1800034b0:	jae    0x180003810
   1800034b6:	mov    $0x30,%r8d
   1800034bc:	mov    %rdi,%rcx
   1800034bf:	mov    %r12,%rdx
   1800034c2:	call   *0x4530(%rip)        # 0x1800079f8
   1800034c8:	test   %rax,%rax
   1800034cb:	je     0x180003810
   1800034d1:	mov    0x70(%rsp),%r12
   1800034d6:	mov    0x88(%rsp),%r13
   1800034de:	lea    (%r12,%r13,1),%rdi
   1800034e2:	mov    0x4b37(%rip),%rbx        # 0x180008020
   1800034e9:	add    %rsi,%rbx
   1800034ec:	cmp    %rbx,%rdi
   1800034ef:	cmovbe %rdi,%rbx
   1800034f3:	cmpl   $0x1000,0x90(%rsp)
   1800034fe:	lea    0x7a1bb(%rip),%rdx        # 0x18007d6c0
   180003505:	jne    0x180003490
   180003507:	mov    0x94(%rsp),%eax
   18000350e:	mov    $0x704,%ecx
   180003513:	and    %ecx,%eax
   180003515:	cmp    $0x4,%eax
   180003518:	jne    0x180003490
   18000351e:	lea    0x11(%r12),%rax
   180003523:	cmp    %rbx,%rax
   180003526:	jb     0x180003545
   180003528:	jmp    0x180003490
   18000352d:	nopl   (%rax)
   180003530:	lea    0x1(%r12),%rax
   180003535:	add    $0x12,%r12
   180003539:	cmp    %rbx,%r12
   18000353c:	mov    %rax,%r12
   18000353f:	jae    0x180003490
   180003545:	cmpb   $0x82,(%r12)
   18000354a:	jne    0x180003530
   18000354c:	cmpb   $0x82,0x2(%r12)
   180003552:	jne    0x180003530
   180003554:	cmpb   $0x82,0x4(%r12)
   18000355a:	jne    0x180003530
   18000355c:	cmpb   $0x0,0x6(%r12)
   180003562:	jne    0x180003530
   180003564:	xor    %ebp,%ebp
   180003566:	jmp    0x180003579
   180003568:	nopl   0x0(%rax,%rax,1)
   180003570:	inc    %rbp
   180003573:	cmp    $0x6,%rbp
   180003577:	je     0x180003530
   180003579:	lea    0x0(,%rbp,2),%rsi
   180003581:	add    %rbp,%rsi
   180003584:	cmpl   $0x0,0x14(%rdx,%rsi,8)
   180003589:	je     0x180003570
   18000358b:	movzbl (%r12),%eax
   180003590:	cmp    (%rdx,%rsi,8),%al
   180003593:	jne    0x180003570
   180003595:	lea    (%rdx,%rsi,8),%rax
   180003599:	movzbl 0x1(%r12),%ecx
   18000359f:	cmp    0x1(%rax),%cl
   1800035a2:	jne    0x180003570
   1800035a4:	movzbl 0x2(%r12),%ecx
   1800035aa:	cmp    0x2(%rax),%cl
   1800035ad:	jne    0x180003570
   1800035af:	movzbl 0x3(%r12),%ecx
   1800035b5:	cmp    0x3(%rax),%cl
   1800035b8:	jne    0x180003570
   1800035ba:	movzbl 0x4(%r12),%ecx
   1800035c0:	cmp    0x4(%rax),%cl
   1800035c3:	jne    0x180003570
   1800035c5:	movzbl 0x5(%r12),%ecx
   1800035cb:	cmp    0x5(%rax),%cl
   1800035ce:	jne    0x180003570
   1800035d0:	cmpq   $0x0,0x9(%r12)
   1800035d6:	jne    0x180003570
   1800035d8:	movzbl 0x7(%r12),%eax
   1800035de:	or     0x8(%r12),%al
   1800035e3:	jne    0x180003570
   1800035e5:	cmpb   $0x0,0x6(%r12)
   1800035eb:	jne    0x180003570
   1800035ed:	cmpl   $0x0,0x10(%rdx,%rsi,8)
   1800035f2:	jle    0x1800035fb
   1800035f4:	movzbl 0x6(%rdx,%rsi,8),%ecx
   1800035f9:	jmp    0x1800035fd
   1800035fb:	xor    %ecx,%ecx
   1800035fd:	lea    (%rdx,%rsi,8),%rax
   180003601:	add    $0x10,%rax
   180003605:	mov    %cl,(%r12)
   180003609:	cmpl   $0x2,(%rax)
   18000360c:	jl     0x180003615
   18000360e:	movzbl 0x7(%rdx,%rsi,8),%ecx
   180003613:	jmp    0x180003617
   180003615:	xor    %ecx,%ecx
   180003617:	mov    %cl,0x1(%r12)
   18000361c:	cmpl   $0x3,(%rax)
   18000361f:	jl     0x180003628
   180003621:	movzbl 0x8(%rdx,%rsi,8),%ecx
   180003626:	jmp    0x18000362a
   180003628:	xor    %ecx,%ecx
   18000362a:	mov    %cl,0x2(%r12)
   18000362f:	cmpl   $0x4,(%rax)
   180003632:	jl     0x18000363b
   180003634:	movzbl 0x9(%rdx,%rsi,8),%ecx
   180003639:	jmp    0x18000363d
   18000363b:	xor    %ecx,%ecx
   18000363d:	mov    %cl,0x3(%r12)
   180003642:	cmpl   $0x5,(%rax)
   180003645:	jl     0x18000364e
   180003647:	movzbl 0xa(%rdx,%rsi,8),%ecx
   18000364c:	jmp    0x180003650
   18000364e:	xor    %ecx,%ecx
   180003650:	mov    %cl,0x4(%r12)
   180003655:	cmpl   $0x6,(%rax)
   180003658:	jl     0x180003661
   18000365a:	movzbl 0xb(%rdx,%rsi,8),%ecx
   18000365f:	jmp    0x180003663
   180003661:	xor    %ecx,%ecx
   180003663:	mov    %cl,0x5(%r12)
   180003668:	cmpl   $0x7,(%rax)
   18000366b:	jl     0x180003674
   18000366d:	movzbl 0xc(%rdx,%rsi,8),%ecx
   180003672:	jmp    0x180003676
   180003674:	xor    %ecx,%ecx
   180003676:	mov    %cl,0x6(%r12)
   18000367b:	cmpl   $0x8,(%rax)
   18000367e:	jl     0x180003687
   180003680:	movzbl 0xd(%rdx,%rsi,8),%ecx
   180003685:	jmp    0x180003689
   180003687:	xor    %ecx,%ecx
   180003689:	mov    %cl,0x7(%r12)
   18000368e:	cmpl   $0x9,(%rax)
   180003691:	jl     0x18000369a
   180003693:	movzbl 0xe(%rdx,%rsi,8),%ecx
   180003698:	jmp    0x18000369c
   18000369a:	xor    %ecx,%ecx
   18000369c:	mov    %cl,0x8(%r12)
   1800036a1:	xor    %ecx,%ecx
   1800036a3:	cmpl   $0xa,(%rax)
   1800036a6:	mov    $0x0,%edx
   1800036ab:	jl     0x1800036b9
   1800036ad:	lea    0x7a00c(%rip),%rdx        # 0x18007d6c0
   1800036b4:	movzbl 0xf(%rdx,%rsi,8),%edx
   1800036b9:	mov    %dl,0x9(%r12)
   1800036be:	mov    (%rax),%edx
   1800036c0:	cmp    $0xb,%edx
   1800036c3:	cmovl  %ecx,%edx
   1800036c6:	mov    %dl,0xa(%r12)
   1800036cb:	mov    (%rax),%edx
   1800036cd:	mov    %edx,%r8d
   1800036d0:	shr    $0x8,%r8d
   1800036d4:	cmp    $0xc,%edx
   1800036d7:	cmovl  %ecx,%r8d
   1800036db:	mov    %r8b,0xb(%r12)
   1800036e0:	mov    (%rax),%edx
   1800036e2:	mov    %edx,%r8d
   1800036e5:	shr    $0x10,%r8d
   1800036e9:	cmp    $0xd,%edx
   1800036ec:	cmovl  %ecx,%r8d
   1800036f0:	mov    %r8b,0xc(%r12)
   1800036f5:	mov    (%rax),%edx
   1800036f7:	mov    %edx,%r8d
   1800036fa:	shr    $0x18,%r8d
   1800036fe:	cmp    $0xe,%edx
   180003701:	cmovl  %ecx,%r8d
   180003705:	mov    %r8b,0xd(%r12)
   18000370a:	cmpl   $0xf,(%rax)
   18000370d:	lea    0x79fac(%rip),%rdx        # 0x18007d6c0
   180003714:	jl     0x180003721
   180003716:	lea    (%rdx,%rsi,8),%rcx
   18000371a:	add    $0x14,%rcx
   18000371e:	movzbl (%rcx),%ecx
   180003721:	mov    %cl,0xe(%r12)
   180003726:	cmpl   $0x10,(%rax)
   180003729:	jl     0x180003732
   18000372b:	movzbl 0x15(%rdx,%rsi,8),%eax
   180003730:	jmp    0x180003734
   180003732:	xor    %eax,%eax
   180003734:	mov    %al,0xf(%r12)
   180003739:	mov    0x4b40(%rip),%rcx        # 0x180008280
   180003740:	test   %rcx,%rcx
   180003743:	je     0x180003570
   180003749:	movq   $0x0,0x20(%rsp)
   180003752:	lea    0x3dc9(%rip),%rdx        # 0x180007522
   180003759:	mov    $0x13,%r8d
   18000375f:	lea    0x2d0(%rsp),%r9
   180003767:	call   *0x4293(%rip)        # 0x180007a00
   18000376d:	lea    0x79f4c(%rip),%rdx        # 0x18007d6c0
   180003774:	mov    0x4b05(%rip),%rcx        # 0x180008280
   18000377b:	test   %rcx,%rcx
   18000377e:	je     0x180003570
   180003784:	lea    (%rdx,%rsi,8),%rdx
   180003788:	add    $0x6,%rdx
   18000378c:	mov    $0xffffffff,%r8d
   180003792:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800037a0:	inc    %r8d
   1800037a3:	cmpb   $0x0,(%rdx,%r8,1)
   1800037a8:	jne    0x1800037a0
   1800037aa:	movq   $0x0,0x20(%rsp)
   1800037b3:	lea    0x2d0(%rsp),%r9
   1800037bb:	call   *0x423f(%rip)        # 0x180007a00
   1800037c1:	mov    0x4ab8(%rip),%rcx        # 0x180008280
   1800037c8:	test   %rcx,%rcx
   1800037cb:	lea    0x79eee(%rip),%rdx        # 0x18007d6c0
   1800037d2:	je     0x180003570
   1800037d8:	movq   $0x0,0x20(%rsp)
   1800037e1:	lea    0x3ff4(%rip),%rdx        # 0x1800077dc
   1800037e8:	mov    $0x2,%r8d
   1800037ee:	lea    0x2d0(%rsp),%r9
   1800037f6:	call   *0x4204(%rip)        # 0x180007a00
   1800037fc:	lea    0x79ebd(%rip),%rdx        # 0x18007d6c0
   180003803:	jmp    0x180003570
   180003808:	nopl   0x0(%rax,%rax,1)
   180003810:	movabs $0xf00000000,%rbp
   18000381a:	lea    0x7e(%rsp),%r13
   18000381f:	mov    0x41da(%rip),%rbx        # 0x180007a00
   180003826:	cmpl   $0x0,0x79f23(%rip)        # 0x18007d750
   18000382d:	mov    0x6c(%rsp),%edi
   180003831:	je     0x1800038b0
   180003833:	mov    0x79f17(%rip),%esi        # 0x18007d750
   180003839:	movl   $0x0,0x79f0d(%rip)        # 0x18007d750
   180003843:	cmp    $0x2,%esi
   180003846:	lea    0x3ddc(%rip),%rdx        # 0x180007629
   18000384d:	lea    0x3de0(%rip),%rax        # 0x180007634
   180003854:	cmove  %rax,%rdx
   180003858:	mov    0x4a21(%rip),%rcx        # 0x180008280
   18000385f:	test   %rcx,%rcx
   180003862:	je     0x180003888
   180003864:	mov    $0xffffffff,%r8d
   18000386a:	nopw   0x0(%rax,%rax,1)
   180003870:	inc    %r8d
   180003873:	cmpb   $0x0,(%rdx,%r8,1)
   180003878:	jne    0x180003870
   18000387a:	movq   $0x0,0x20(%rsp)
   180003883:	mov    %r12,%r9
   180003886:	call   *%rbx
   180003888:	cmp    $0x2,%esi
   18000388b:	jne    0x180003f80
   180003891:	mov    $0x4b0,%ecx
   180003896:	mov    $0x78,%edx
   18000389b:	mov    0x40c6(%rip),%rsi        # 0x180007968
   1800038a2:	call   *%rsi
   1800038a4:	mov    $0x640,%ecx
   1800038a9:	mov    $0x78,%edx
   1800038ae:	call   *%rsi
   1800038b0:	test   %dil,%dil
   1800038b3:	je     0x180003f99
   1800038b9:	mov    $0x38,%ecx
   1800038be:	mov    0x415b(%rip),%r12        # 0x180007a20
   1800038c5:	call   *%r12
   1800038c8:	mov    %eax,%esi
   1800038ca:	mov    $0x39,%ecx
   1800038cf:	call   *%r12
   1800038d2:	mov    %eax,%edi
   1800038d4:	mov    $0x30,%ecx
   1800038d9:	call   *%r12
   1800038dc:	mov    %eax,%r12d
   1800038df:	test   %si,%si
   1800038e2:	jns    0x180003934
   1800038e4:	cmpl   $0x0,0x79e69(%rip)        # 0x18007d754
   1800038eb:	jne    0x180003934
   1800038ed:	movl   $0x1,0x79f49(%rip)        # 0x18007d840
   1800038f7:	movl   $0x0,0x79f43(%rip)        # 0x18007d844
   180003901:	mov    0x4981(%rip),%eax        # 0x180008288
   180003907:	mov    %eax,0x79f3b(%rip)        # 0x18007d848
   18000390d:	mov    %eax,0x79f39(%rip)        # 0x18007d84c
   180003913:	call   0x180005dd0
   180003918:	lea    0x3ae0(%rip),%rcx        # 0x1800073ff
   18000391f:	call   0x180006040
   180003924:	mov    $0x320,%ecx
   180003929:	mov    $0x64,%edx
   18000392e:	call   *0x4034(%rip)        # 0x180007968
   180003934:	test   %di,%di
   180003937:	jns    0x180003959
   180003939:	cmpl   $0x0,0x79e18(%rip)        # 0x18007d758
   180003940:	jne    0x180003959
   180003942:	xor    %ecx,%ecx
   180003944:	call   0x180004f60
   180003949:	mov    $0x1f4,%ecx
   18000394e:	mov    $0x64,%edx
   180003953:	call   *0x400f(%rip)        # 0x180007968
   180003959:	test   %r12w,%r12w
   18000395d:	jns    0x180003982
   18000395f:	cmpl   $0x0,0x79df6(%rip)        # 0x18007d75c
   180003966:	jne    0x180003982
   180003968:	mov    $0x1,%ecx
   18000396d:	call   0x180004f60
   180003972:	mov    $0x5dc,%ecx
   180003977:	mov    $0x64,%edx
   18000397c:	call   *0x3fe6(%rip)        # 0x180007968
   180003982:	movzwl %si,%eax
   180003985:	shr    $0xf,%eax
   180003988:	movzwl %di,%ecx
   18000398b:	shr    $0xf,%ecx
   18000398e:	movzwl %r12w,%edx
   180003992:	shr    $0xf,%edx
   180003995:	mov    %eax,0x79db9(%rip)        # 0x18007d754
   18000399b:	mov    %ecx,0x79db7(%rip)        # 0x18007d758
   1800039a1:	mov    %edx,0x79db5(%rip)        # 0x18007d75c
   1800039a7:	mov    $0x44,%ecx
   1800039ac:	mov    0x406d(%rip),%r12        # 0x180007a20
   1800039b3:	call   *%r12
   1800039b6:	mov    %eax,%edi
   1800039b8:	test   %ax,%ax
   1800039bb:	jns    0x180003a8f
   1800039c1:	cmpl   $0x0,0x79d98(%rip)        # 0x18007d760
   1800039c8:	jne    0x180003a8f
   1800039ce:	mov    $0x384,%ecx
   1800039d3:	mov    $0x96,%edx
   1800039d8:	call   *0x3f8a(%rip)        # 0x180007968
   1800039de:	mov    0x489b(%rip),%rcx        # 0x180008280
   1800039e5:	test   %rcx,%rcx
   1800039e8:	lea    0x70(%rsp),%r12
   1800039ed:	je     0x180003a0a
   1800039ef:	movq   $0x0,0x20(%rsp)
   1800039f8:	lea    0x3ce4(%rip),%rdx        # 0x1800076e3
   1800039ff:	mov    $0xe,%r8d
   180003a05:	mov    %r12,%r9
   180003a08:	call   *%rbx
   180003a0a:	mov    0x79d54(%rip),%eax        # 0x18007d764
   180003a10:	cmp    $0x3,%eax
   180003a13:	jg     0x180003a1b
   180003a15:	mov    0x79d49(%rip),%eax        # 0x18007d764
   180003a1b:	mov    0x79d43(%rip),%eax        # 0x18007d764
   180003a21:	xor    %esi,%esi
   180003a23:	cmp    $0x3,%eax
   180003a26:	jl     0x180003a31
   180003a28:	mov    0x79d36(%rip),%esi        # 0x18007d764
   180003a2e:	add    $0xfffffffe,%esi
   180003a31:	cmp    0x79d2d(%rip),%esi        # 0x18007d764
   180003a37:	mov    %r13,%rbp
   180003a3a:	jl     0x180003ebe
   180003a40:	mov    0x4839(%rip),%rcx        # 0x180008280
   180003a47:	test   %rcx,%rcx
   180003a4a:	mov    0x3faf(%rip),%rbx        # 0x180007a00
   180003a51:	je     0x180003a6e
   180003a53:	movq   $0x0,0x20(%rsp)
   180003a5c:	lea    0x3c8f(%rip),%rdx        # 0x1800076f2
   180003a63:	mov    $0xd,%r8d
   180003a69:	mov    %r12,%r9
   180003a6c:	call   *%rbx
   180003a6e:	mov    $0x514,%ecx
   180003a73:	mov    $0x96,%edx
   180003a78:	call   *0x3eea(%rip)        # 0x180007968
   180003a7e:	mov    0x3f9b(%rip),%r12        # 0x180007a20
   180003a85:	movabs $0xf00000000,%rbp
   180003a8f:	movzwl %di,%eax
   180003a92:	shr    $0xf,%eax
   180003a95:	mov    %eax,0x79cc5(%rip)        # 0x18007d760
   180003a9b:	mov    $0x31,%ecx
   180003aa0:	call   *%r12
   180003aa3:	mov    %eax,%edi
   180003aa5:	mov    $0x32,%ecx
   180003aaa:	call   *%r12
   180003aad:	mov    %eax,%esi
   180003aaf:	mov    $0x33,%ecx
   180003ab4:	call   *%r12
   180003ab7:	mov    %eax,%r12d
   180003aba:	test   %di,%di
   180003abd:	jns    0x180003b24
   180003abf:	cmpl   $0x0,0x79cca(%rip)        # 0x18007d790
   180003ac6:	jne    0x180003b24
   180003ac8:	mov    0x47b1(%rip),%rcx        # 0x180008280
   180003acf:	test   %rcx,%rcx
   180003ad2:	je     0x180003af1
   180003ad4:	movq   $0x0,0x20(%rsp)
   180003add:	lea    0x3ad5(%rip),%rdx        # 0x1800075b9
   180003ae4:	mov    $0x1a,%r8d
   180003aea:	lea    0x70(%rsp),%r9
   180003aef:	call   *%rbx
   180003af1:	mov    $0x102,%ecx
   180003af6:	call   0x1800058e0
   180003afb:	mov    0x477e(%rip),%rcx        # 0x180008280
   180003b02:	test   %rcx,%rcx
   180003b05:	je     0x180003b24
   180003b07:	movq   $0x0,0x20(%rsp)
   180003b10:	lea    0x3b45(%rip),%rdx        # 0x18000765c
   180003b17:	mov    $0x8,%r8d
   180003b1d:	lea    0x70(%rsp),%r9
   180003b22:	call   *%rbx
   180003b24:	test   %si,%si
   180003b27:	jns    0x180003d0f
   180003b2d:	cmpl   $0x0,0x79c60(%rip)        # 0x18007d794
   180003b34:	jne    0x180003d0f
   180003b3a:	mov    0x473f(%rip),%rcx        # 0x180008280
   180003b41:	test   %rcx,%rcx
   180003b44:	mov    0x3eb5(%rip),%rax        # 0x180007a00
   180003b4b:	je     0x180003b6a
   180003b4d:	movq   $0x0,0x20(%rsp)
   180003b56:	lea    0x3a96(%rip),%rdx        # 0x1800075f3
   180003b5d:	mov    $0xe,%r8d
   180003b63:	lea    0x70(%rsp),%r9
   180003b68:	call   *%rax
   180003b6a:	mov    %r12w,0x48(%rsp)
   180003b70:	mov    $0x3c,%ebx
   180003b75:	data16 cs nopw 0x0(%rax,%rax,1)
   180003b80:	mov    $0x11,%ecx
   180003b85:	mov    0x3e94(%rip),%r12        # 0x180007a20
   180003b8c:	call   *%r12
   180003b8f:	mov    %eax,%r13d
   180003b92:	mov    $0x10,%ecx
   180003b97:	call   *%r12
   180003b9a:	or     %r13w,%ax
   180003b9e:	jns    0x180003baf
   180003ba0:	mov    $0x32,%ecx
   180003ba5:	call   *0x3e2d(%rip)        # 0x1800079d8
   180003bab:	dec    %ebx
   180003bad:	jne    0x180003b80
   180003baf:	mov    $0x1388,%ecx
   180003bb4:	mov    0x3e1d(%rip),%rbx        # 0x1800079d8
   180003bbb:	call   *%rbx
   180003bbd:	movaps %xmm6,0x80(%rsp)
   180003bc5:	movq   $0x0,0x90(%rsp)
   180003bd1:	movaps %xmm7,0x70(%rsp)
   180003bd6:	movups %xmm6,0xa8(%rsp)
   180003bde:	movq   $0x0,0xb8(%rsp)
   180003bea:	movups %xmm8,0x98(%rsp)
   180003bf3:	mov    $0x2,%ecx
   180003bf8:	lea    0x70(%rsp),%r13
   180003bfd:	mov    %r13,%rdx
   180003c00:	mov    $0x28,%r8d
   180003c06:	mov    0x3e3b(%rip),%r12        # 0x180007a48
   180003c0d:	call   *%r12
   180003c10:	mov    $0x78,%ecx
   180003c15:	call   *%rbx
   180003c17:	movaps %xmm6,0x80(%rsp)
   180003c1f:	movq   $0x0,0x90(%rsp)
   180003c2b:	movaps %xmm9,0x70(%rsp)
   180003c31:	movups %xmm6,0xa8(%rsp)
   180003c39:	movq   $0x0,0xb8(%rsp)
   180003c45:	movups %xmm10,0x98(%rsp)
   180003c4e:	mov    $0x2,%ecx
   180003c53:	mov    %r13,%rdx
   180003c56:	mov    $0x28,%r8d
   180003c5c:	call   *%r12
   180003c5f:	mov    $0x78,%ecx
   180003c64:	call   *%rbx
   180003c66:	movaps %xmm6,0x80(%rsp)
   180003c6e:	movq   $0x0,0x90(%rsp)
   180003c7a:	movaps %xmm11,0x70(%rsp)
   180003c80:	movups %xmm6,0xa8(%rsp)
   180003c88:	movq   $0x0,0xb8(%rsp)
   180003c94:	movups %xmm12,0x98(%rsp)
   180003c9d:	mov    $0x2,%ecx
   180003ca2:	mov    %r13,%rdx
   180003ca5:	mov    $0x28,%r8d
   180003cab:	call   *%r12
   180003cae:	mov    $0x78,%ecx
   180003cb3:	call   *%rbx
   180003cb5:	movaps %xmm6,0x80(%rsp)
   180003cbd:	movq   $0x0,0x90(%rsp)
   180003cc9:	movaps %xmm9,0x70(%rsp)
   180003ccf:	movups %xmm6,0xa8(%rsp)
   180003cd7:	movq   $0x0,0xb8(%rsp)
   180003ce3:	movups %xmm10,0x98(%rsp)
   180003cec:	mov    $0x2,%ecx
   180003cf1:	mov    %r13,%rdx
   180003cf4:	mov    $0x28,%r8d
   180003cfa:	call   *%r12
   180003cfd:	mov    $0x78,%ecx
   180003d02:	call   *%rbx
   180003d04:	lea    0x7e(%rsp),%r13
   180003d09:	movzwl 0x48(%rsp),%r12d
   180003d0f:	movzwl %di,%edi
   180003d12:	shr    $0xf,%edi
   180003d15:	movzwl %si,%ebx
   180003d18:	shr    $0xf,%ebx
   180003d1b:	movzwl %r12w,%eax
   180003d1f:	mov    %eax,%esi
   180003d21:	shr    $0xf,%esi
   180003d24:	test   %ax,%ax
   180003d27:	jns    0x180003fff
   180003d2d:	cmpl   $0x0,0x79a64(%rip)        # 0x18007d798
   180003d34:	lea    0x70(%rsp),%r12
   180003d39:	jne    0x180003fc7
   180003d3f:	mov    0x453a(%rip),%rcx        # 0x180008280
   180003d46:	test   %rcx,%rcx
   180003d49:	je     0x180003d6a
   180003d4b:	movq   $0x0,0x20(%rsp)
   180003d54:	lea    0x3879(%rip),%rdx        # 0x1800075d4
   180003d5b:	mov    $0x1e,%r8d
   180003d61:	mov    %r12,%r9
   180003d64:	call   *0x3c96(%rip)        # 0x180007a00
   180003d6a:	mov    $0x286,%ecx
   180003d6f:	call   0x1800058e0
   180003d74:	mov    0x4505(%rip),%rcx        # 0x180008280
   180003d7b:	test   %rcx,%rcx
   180003d7e:	je     0x180003fc7
   180003d84:	movq   $0x0,0x20(%rsp)
   180003d8d:	lea    0x38c8(%rip),%rdx        # 0x18000765c
   180003d94:	mov    $0x8,%r8d
   180003d9a:	mov    %r12,%r9
   180003d9d:	call   *0x3c5d(%rip)        # 0x180007a00
   180003da3:	jmp    0x180003fc7
   180003da8:	nopl   0x0(%rax,%rax,1)
   180003db0:	and    $0xfffffffc,%ebx
   180003db3:	mov    %esi,%eax
   180003db5:	sub    %ebx,%eax
   180003db7:	movslq %eax,%rbx
   180003dba:	movl   $0x1f821f82,0x799ac(%rip)        # 0x18007d770
   180003dc4:	movw   $0x1f82,0x799a7(%rip)        # 0x18007d774
   180003dcd:	lea    0x7999c(%rip),%r13        # 0x18007d770
   180003dd4:	mov    %r13,%rcx
   180003dd7:	mov    $0x6,%edx
   180003ddc:	lea    0x35be(%rip),%r8        # 0x1800073a1
   180003de3:	call   0x180005360
   180003de8:	movl   $0xfee0fee0,0x7997e(%rip)        # 0x18007d770
   180003df2:	movw   $0xfee0,0x79979(%rip)        # 0x18007d774
   180003dfb:	mov    %r13,%rcx
   180003dfe:	mov    $0x6,%edx
   180003e03:	lea    0x35a3(%rip),%r8        # 0x1800073ad
   180003e0a:	call   0x180005360
   180003e0f:	movw   $0xbbef,0x79958(%rip)        # 0x18007d770
   180003e18:	movb   $0xa0,0x79953(%rip)        # 0x18007d772
   180003e1f:	movl   $0xefa0bbef,0x7994a(%rip)        # 0x18007d773
   180003e29:	movw   $0xa0bb,0x79945(%rip)        # 0x18007d777
   180003e32:	mov    %r13,%rcx
   180003e35:	mov    $0x9,%edx
   180003e3a:	lea    0x3567(%rip),%r8        # 0x1800073a8
   180003e41:	call   0x180005360
   180003e46:	movw   $0x0,0x79921(%rip)        # 0x18007d770
   180003e4f:	movb   $0x0,0x7991c(%rip)        # 0x18007d772
   180003e56:	mov    %r13,%rcx
   180003e59:	mov    $0x3,%edx
   180003e5e:	lea    0x354e(%rip),%r8        # 0x1800073b3
   180003e65:	call   0x180005360
   180003e6a:	movl   $0x0,0x798fc(%rip)        # 0x18007d770
   180003e74:	movw   $0x0,0x798f7(%rip)        # 0x18007d774
   180003e7d:	mov    %r13,%rcx
   180003e80:	mov    $0x6,%edx
   180003e85:	lea    0x353f(%rip),%r8        # 0x1800073cb
   180003e8c:	call   0x180005360
   180003e91:	lea    0x798e8(%rip),%rax        # 0x18007d780
   180003e98:	lea    (%rax,%rbx,4),%rcx
   180003e9c:	mov    $0x3,%edx
   180003ea1:	lea    0x3511(%rip),%r8        # 0x1800073b9
   180003ea8:	call   0x180005360
   180003ead:	inc    %esi
   180003eaf:	cmp    0x798af(%rip),%esi        # 0x18007d764
   180003eb5:	mov    %rbp,%r13
   180003eb8:	jge    0x180003a40
   180003ebe:	lea    0x3(%rsi),%ebx
   180003ec1:	test   %esi,%esi
   180003ec3:	cmovns %esi,%ebx
   180003ec6:	mov    0x43b3(%rip),%rcx        # 0x180008280
   180003ecd:	test   %rcx,%rcx
   180003ed0:	je     0x180003db0
   180003ed6:	movq   $0x0,0x20(%rsp)
   180003edf:	lea    0x35cf(%rip),%rdx        # 0x1800074b5
   180003ee6:	mov    $0x9,%r8d
   180003eec:	mov    %r12,%r9
   180003eef:	call   *0x3b0b(%rip)        # 0x180007a00
   180003ef5:	mov    0x4384(%rip),%rcx        # 0x180008280
   180003efc:	movl   $0x0,0x2d0(%rsp)
   180003f07:	test   %rcx,%rcx
   180003f0a:	je     0x180003db0
   180003f10:	mov    $0xffffffff,%r8d
   180003f16:	cs nopw 0x0(%rax,%rax,1)
   180003f20:	inc    %r8d
   180003f23:	cmpb   $0x0,0x2d0(%rsp,%r8,1)
   180003f2c:	jne    0x180003f20
   180003f2e:	movq   $0x0,0x20(%rsp)
   180003f37:	lea    0x2d0(%rsp),%rdx
   180003f3f:	mov    %r12,%r9
   180003f42:	call   *0x3ab8(%rip)        # 0x180007a00
   180003f48:	mov    0x4331(%rip),%rcx        # 0x180008280
   180003f4f:	test   %rcx,%rcx
   180003f52:	je     0x180003db0
   180003f58:	movq   $0x0,0x20(%rsp)
   180003f61:	lea    0x3874(%rip),%rdx        # 0x1800077dc
   180003f68:	mov    $0x2,%r8d
   180003f6e:	mov    %r12,%r9
   180003f71:	call   *0x3a89(%rip)        # 0x180007a00
   180003f77:	jmp    0x180003db0
   180003f7c:	nopl   0x0(%rax)
   180003f80:	mov    $0x258,%ecx
   180003f85:	mov    $0xc8,%edx
   180003f8a:	call   *0x39d8(%rip)        # 0x180007968
   180003f90:	test   %dil,%dil
   180003f93:	jne    0x1800038b9
   180003f99:	movl   $0x0,0x797b1(%rip)        # 0x18007d754
   180003fa3:	movl   $0x0,0x797ab(%rip)        # 0x18007d758
   180003fad:	movl   $0x0,0x797a5(%rip)        # 0x18007d75c
   180003fb7:	movl   $0x0,0x7979f(%rip)        # 0x18007d760
   180003fc1:	xor    %esi,%esi
   180003fc3:	xor    %edi,%edi
   180003fc5:	xor    %ebx,%ebx
   180003fc7:	movzwl %bx,%eax
   180003fca:	movzwl %di,%ecx
   180003fcd:	movzwl %si,%edx
   180003fd0:	mov    %ecx,0x797ba(%rip)        # 0x18007d790
   180003fd6:	mov    %eax,0x797b8(%rip)        # 0x18007d794
   180003fdc:	mov    %edx,0x797b6(%rip)        # 0x18007d798
   180003fe2:	cmpl   $0x0,0x68(%rsp)
   180003fe7:	jne    0x180002900
   180003fed:	mov    0x797a9(%rip),%esi        # 0x18007d79c
   180003ff3:	cmp    0x64(%rsp),%esi
   180003ff7:	je     0x180002900
   180003ffd:	jmp    0x180004010
   180003fff:	lea    0x70(%rsp),%r12
   180004004:	jmp    0x180003fc7
   180004006:	cs nopw 0x0(%rax,%rax,1)
   180004010:	mov    0x4269(%rip),%rcx        # 0x180008280
   180004017:	mov    %esi,%edx
   180004019:	test   %rcx,%rcx
   18000401c:	mov    0x39dd(%rip),%rdi        # 0x180007a00
   180004023:	je     0x180004046
   180004025:	movq   $0x0,0x20(%rsp)
   18000402e:	lea    0x3451(%rip),%rdx        # 0x180007486
   180004035:	mov    $0x11,%r8d
   18000403b:	mov    %r12,%r9
   18000403e:	call   *%rdi
   180004040:	mov    0x79756(%rip),%edx        # 0x18007d79c
   180004046:	movb   $0x0,0x7f(%rsp)
   18000404b:	lea    0x7e(%rsp),%rcx
   180004050:	mov    %rbp,%rax
   180004053:	test   %edx,%edx
   180004055:	je     0x1800040a0
   180004057:	nopw   0x0(%rax,%rax,1)
   180004060:	mov    %edx,%r8d
   180004063:	imul   %r14,%r8
   180004067:	shr    $0x23,%r8
   18000406b:	lea    (%r8,%r8,1),%r9d
   18000406f:	lea    (%r9,%r9,4),%r9d
   180004073:	mov    %edx,%r10d
   180004076:	sub    %r9d,%r10d
   180004079:	or     $0x30,%r10b
   18000407d:	mov    %r10b,(%rcx)
   180004080:	add    %r15,%rax
   180004083:	dec    %rcx
   180004086:	cmp    $0x9,%edx
   180004089:	mov    %r8d,%edx
   18000408c:	ja     0x180004060
   18000408e:	sar    $0x20,%rax
   180004092:	jmp    0x1800040aa
   180004094:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800040a0:	movb   $0x30,0x7e(%rsp)
   1800040a5:	mov    $0xe,%eax
   1800040aa:	mov    0x41cf(%rip),%rcx        # 0x180008280
   1800040b1:	test   %rcx,%rcx
   1800040b4:	je     0x180004114
   1800040b6:	lea    (%rsp,%rax,1),%rdx
   1800040ba:	add    $0x70,%rdx
   1800040be:	mov    $0xffffffff,%r8d
   1800040c4:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800040d0:	inc    %r8d
   1800040d3:	cmpb   $0x0,(%rdx,%r8,1)
   1800040d8:	jne    0x1800040d0
   1800040da:	movq   $0x0,0x20(%rsp)
   1800040e3:	lea    0x2d0(%rsp),%r9
   1800040eb:	call   *%rdi
   1800040ed:	mov    0x418c(%rip),%rcx        # 0x180008280
   1800040f4:	test   %rcx,%rcx
   1800040f7:	je     0x180004114
   1800040f9:	movq   $0x0,0x20(%rsp)
   180004102:	lea    0x33e1(%rip),%rdx        # 0x1800074ea
   180004109:	mov    $0xb,%r8d
   18000410f:	mov    %r12,%r9
   180004112:	call   *%rdi
   180004114:	mov    0x79686(%rip),%edx        # 0x18007d7a0
   18000411a:	movb   $0x0,0x7f(%rsp)
   18000411f:	lea    0x7e(%rsp),%rcx
   180004124:	mov    %rbp,%rax
   180004127:	test   %edx,%edx
   180004129:	je     0x180004170
   18000412b:	nopl   0x0(%rax,%rax,1)
   180004130:	mov    %edx,%r8d
   180004133:	imul   %r14,%r8
   180004137:	shr    $0x23,%r8
   18000413b:	lea    (%r8,%r8,1),%r9d
   18000413f:	lea    (%r9,%r9,4),%r9d
   180004143:	mov    %edx,%r10d
   180004146:	sub    %r9d,%r10d
   180004149:	or     $0x30,%r10b
   18000414d:	mov    %r10b,(%rcx)
   180004150:	add    %r15,%rax
   180004153:	dec    %rcx
   180004156:	cmp    $0x9,%edx
   180004159:	mov    %r8d,%edx
   18000415c:	ja     0x180004130
   18000415e:	sar    $0x20,%rax
   180004162:	jmp    0x18000417a
   180004164:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004170:	movb   $0x30,0x7e(%rsp)
   180004175:	mov    $0xe,%eax
   18000417a:	mov    0x40ff(%rip),%rcx        # 0x180008280
   180004181:	test   %rcx,%rcx
   180004184:	je     0x18000422f
   18000418a:	lea    (%rsp,%rax,1),%rdx
   18000418e:	add    $0x70,%rdx
   180004192:	mov    $0xffffffff,%r8d
   180004198:	nopl   0x0(%rax,%rax,1)
   1800041a0:	inc    %r8d
   1800041a3:	cmpb   $0x0,(%rdx,%r8,1)
   1800041a8:	jne    0x1800041a0
   1800041aa:	movq   $0x0,0x20(%rsp)
   1800041b3:	lea    0x2d0(%rsp),%r9
   1800041bb:	call   *%rdi
   1800041bd:	mov    0x40bc(%rip),%rcx        # 0x180008280
   1800041c4:	cmpl   $0x1,0x3e35(%rip)        # 0x180008000
   1800041cb:	lea    0x320c(%rip),%rdx        # 0x1800073de
   1800041d2:	lea    0x3214(%rip),%rax        # 0x1800073ed
   1800041d9:	cmove  %rax,%rdx
   1800041dd:	test   %rcx,%rcx
   1800041e0:	je     0x18000422f
   1800041e2:	mov    $0xffffffff,%r8d
   1800041e8:	nopl   0x0(%rax,%rax,1)
   1800041f0:	inc    %r8d
   1800041f3:	cmpb   $0x0,(%rdx,%r8,1)
   1800041f8:	jne    0x1800041f0
   1800041fa:	movq   $0x0,0x20(%rsp)
   180004203:	mov    %r12,%r9
   180004206:	call   *%rdi
   180004208:	mov    0x4071(%rip),%rcx        # 0x180008280
   18000420f:	test   %rcx,%rcx
   180004212:	je     0x18000422f
   180004214:	movq   $0x0,0x20(%rsp)
   18000421d:	lea    0x3225(%rip),%rdx        # 0x180007449
   180004224:	mov    $0xd,%r8d
   18000422a:	mov    %r12,%r9
   18000422d:	call   *%rdi
   18000422f:	mov    0x7956f(%rip),%edx        # 0x18007d7a4
   180004235:	movb   $0x0,0x7f(%rsp)
   18000423a:	lea    0x7e(%rsp),%rcx
   18000423f:	mov    %rbp,%rax
   180004242:	test   %edx,%edx
   180004244:	je     0x180004290
   180004246:	cs nopw 0x0(%rax,%rax,1)
   180004250:	mov    %edx,%r8d
   180004253:	imul   %r14,%r8
   180004257:	shr    $0x23,%r8
   18000425b:	lea    (%r8,%r8,1),%r9d
   18000425f:	lea    (%r9,%r9,4),%r9d
   180004263:	mov    %edx,%r10d
   180004266:	sub    %r9d,%r10d
   180004269:	or     $0x30,%r10b
   18000426d:	mov    %r10b,(%rcx)
   180004270:	add    %r15,%rax
   180004273:	dec    %rcx
   180004276:	cmp    $0x9,%edx
   180004279:	mov    %r8d,%edx
   18000427c:	ja     0x180004250
   18000427e:	sar    $0x20,%rax
   180004282:	jmp    0x18000429a
   180004284:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004290:	movb   $0x30,0x7e(%rsp)
   180004295:	mov    $0xe,%eax
   18000429a:	mov    0x3fdf(%rip),%rcx        # 0x180008280
   1800042a1:	test   %rcx,%rcx
   1800042a4:	je     0x180004304
   1800042a6:	lea    (%rsp,%rax,1),%rdx
   1800042aa:	add    $0x70,%rdx
   1800042ae:	mov    $0xffffffff,%r8d
   1800042b4:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800042c0:	inc    %r8d
   1800042c3:	cmpb   $0x0,(%rdx,%r8,1)
   1800042c8:	jne    0x1800042c0
   1800042ca:	movq   $0x0,0x20(%rsp)
   1800042d3:	lea    0x2d0(%rsp),%r9
   1800042db:	call   *%rdi
   1800042dd:	mov    0x3f9c(%rip),%rcx        # 0x180008280
   1800042e4:	test   %rcx,%rcx
   1800042e7:	je     0x180004304
   1800042e9:	movq   $0x0,0x20(%rsp)
   1800042f2:	lea    0x30d6(%rip),%rdx        # 0x1800073cf
   1800042f9:	mov    $0x1,%r8d
   1800042ff:	mov    %r12,%r9
   180004302:	call   *%rdi
   180004304:	mov    0x7949e(%rip),%edx        # 0x18007d7a8
   18000430a:	movb   $0x0,0x7f(%rsp)
   18000430f:	lea    0x7e(%rsp),%rcx
   180004314:	mov    %rbp,%rax
   180004317:	test   %edx,%edx
   180004319:	je     0x180004360
   18000431b:	nopl   0x0(%rax,%rax,1)
   180004320:	mov    %edx,%r8d
   180004323:	imul   %r14,%r8
   180004327:	shr    $0x23,%r8
   18000432b:	lea    (%r8,%r8,1),%r9d
   18000432f:	lea    (%r9,%r9,4),%r9d
   180004333:	mov    %edx,%r10d
   180004336:	sub    %r9d,%r10d
   180004339:	or     $0x30,%r10b
   18000433d:	mov    %r10b,(%rcx)
   180004340:	add    %r15,%rax
   180004343:	dec    %rcx
   180004346:	cmp    $0x9,%edx
   180004349:	mov    %r8d,%edx
   18000434c:	ja     0x180004320
   18000434e:	sar    $0x20,%rax
   180004352:	jmp    0x18000436a
   180004354:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004360:	movb   $0x30,0x7e(%rsp)
   180004365:	mov    $0xe,%eax
   18000436a:	mov    0x3f0f(%rip),%rcx        # 0x180008280
   180004371:	test   %rcx,%rcx
   180004374:	je     0x1800043d4
   180004376:	lea    (%rsp,%rax,1),%rdx
   18000437a:	add    $0x70,%rdx
   18000437e:	mov    $0xffffffff,%r8d
   180004384:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004390:	inc    %r8d
   180004393:	cmpb   $0x0,(%rdx,%r8,1)
   180004398:	jne    0x180004390
   18000439a:	movq   $0x0,0x20(%rsp)
   1800043a3:	lea    0x2d0(%rsp),%r9
   1800043ab:	call   *%rdi
   1800043ad:	mov    0x3ecc(%rip),%rcx        # 0x180008280
   1800043b4:	test   %rcx,%rcx
   1800043b7:	je     0x1800043d4
   1800043b9:	movq   $0x0,0x20(%rsp)
   1800043c2:	lea    0x3006(%rip),%rdx        # 0x1800073cf
   1800043c9:	mov    $0x1,%r8d
   1800043cf:	mov    %r12,%r9
   1800043d2:	call   *%rdi
   1800043d4:	mov    0x793d2(%rip),%edx        # 0x18007d7ac
   1800043da:	movb   $0x0,0x7f(%rsp)
   1800043df:	lea    0x7e(%rsp),%rcx
   1800043e4:	mov    %rbp,%rax
   1800043e7:	test   %edx,%edx
   1800043e9:	je     0x180004430
   1800043eb:	nopl   0x0(%rax,%rax,1)
   1800043f0:	mov    %edx,%r8d
   1800043f3:	imul   %r14,%r8
   1800043f7:	shr    $0x23,%r8
   1800043fb:	lea    (%r8,%r8,1),%r9d
   1800043ff:	lea    (%r9,%r9,4),%r9d
   180004403:	mov    %edx,%r10d
   180004406:	sub    %r9d,%r10d
   180004409:	or     $0x30,%r10b
   18000440d:	mov    %r10b,(%rcx)
   180004410:	add    %r15,%rax
   180004413:	dec    %rcx
   180004416:	cmp    $0x9,%edx
   180004419:	mov    %r8d,%edx
   18000441c:	ja     0x1800043f0
   18000441e:	sar    $0x20,%rax
   180004422:	jmp    0x18000443a
   180004424:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004430:	movb   $0x30,0x7e(%rsp)
   180004435:	mov    $0xe,%eax
   18000443a:	mov    0x3e3f(%rip),%rcx        # 0x180008280
   180004441:	test   %rcx,%rcx
   180004444:	je     0x1800044a4
   180004446:	lea    (%rsp,%rax,1),%rdx
   18000444a:	add    $0x70,%rdx
   18000444e:	mov    $0xffffffff,%r8d
   180004454:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004460:	inc    %r8d
   180004463:	cmpb   $0x0,(%rdx,%r8,1)
   180004468:	jne    0x180004460
   18000446a:	movq   $0x0,0x20(%rsp)
   180004473:	lea    0x2d0(%rsp),%r9
   18000447b:	call   *%rdi
   18000447d:	mov    0x3dfc(%rip),%rcx        # 0x180008280
   180004484:	test   %rcx,%rcx
   180004487:	je     0x1800044a4
   180004489:	movq   $0x0,0x20(%rsp)
   180004492:	lea    0x2f9d(%rip),%rdx        # 0x180007436
   180004499:	mov    $0x12,%r8d
   18000449f:	mov    %r12,%r9
   1800044a2:	call   *%rdi
   1800044a4:	mov    0x79306(%rip),%edx        # 0x18007d7b0
   1800044aa:	movb   $0x0,0x7f(%rsp)
   1800044af:	lea    0x7e(%rsp),%rcx
   1800044b4:	mov    %rbp,%rax
   1800044b7:	test   %edx,%edx
   1800044b9:	je     0x180004500
   1800044bb:	nopl   0x0(%rax,%rax,1)
   1800044c0:	mov    %edx,%r8d
   1800044c3:	imul   %r14,%r8
   1800044c7:	shr    $0x23,%r8
   1800044cb:	lea    (%r8,%r8,1),%r9d
   1800044cf:	lea    (%r9,%r9,4),%r9d
   1800044d3:	mov    %edx,%r10d
   1800044d6:	sub    %r9d,%r10d
   1800044d9:	or     $0x30,%r10b
   1800044dd:	mov    %r10b,(%rcx)
   1800044e0:	add    %r15,%rax
   1800044e3:	dec    %rcx
   1800044e6:	cmp    $0x9,%edx
   1800044e9:	mov    %r8d,%edx
   1800044ec:	ja     0x1800044c0
   1800044ee:	sar    $0x20,%rax
   1800044f2:	jmp    0x18000450a
   1800044f4:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004500:	movb   $0x30,0x7e(%rsp)
   180004505:	mov    $0xe,%eax
   18000450a:	mov    0x3d6f(%rip),%rcx        # 0x180008280
   180004511:	test   %rcx,%rcx
   180004514:	je     0x180004574
   180004516:	lea    (%rsp,%rax,1),%rdx
   18000451a:	add    $0x70,%rdx
   18000451e:	mov    $0xffffffff,%r8d
   180004524:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004530:	inc    %r8d
   180004533:	cmpb   $0x0,(%rdx,%r8,1)
   180004538:	jne    0x180004530
   18000453a:	movq   $0x0,0x20(%rsp)
   180004543:	lea    0x2d0(%rsp),%r9
   18000454b:	call   *%rdi
   18000454d:	mov    0x3d2c(%rip),%rcx        # 0x180008280
   180004554:	test   %rcx,%rcx
   180004557:	je     0x180004574
   180004559:	movq   $0x0,0x20(%rsp)
   180004562:	lea    0x2ebd(%rip),%rdx        # 0x180007426
   180004569:	mov    $0xf,%r8d
   18000456f:	mov    %r12,%r9
   180004572:	call   *%rdi
   180004574:	mov    0x7923a(%rip),%edx        # 0x18007d7b4
   18000457a:	movb   $0x0,0x7f(%rsp)
   18000457f:	lea    0x7e(%rsp),%rcx
   180004584:	mov    %rbp,%rax
   180004587:	test   %edx,%edx
   180004589:	je     0x1800045d0
   18000458b:	nopl   0x0(%rax,%rax,1)
   180004590:	mov    %edx,%r8d
   180004593:	imul   %r14,%r8
   180004597:	shr    $0x23,%r8
   18000459b:	lea    (%r8,%r8,1),%r9d
   18000459f:	lea    (%r9,%r9,4),%r9d
   1800045a3:	mov    %edx,%r10d
   1800045a6:	sub    %r9d,%r10d
   1800045a9:	or     $0x30,%r10b
   1800045ad:	mov    %r10b,(%rcx)
   1800045b0:	add    %r15,%rax
   1800045b3:	dec    %rcx
   1800045b6:	cmp    $0x9,%edx
   1800045b9:	mov    %r8d,%edx
   1800045bc:	ja     0x180004590
   1800045be:	sar    $0x20,%rax
   1800045c2:	jmp    0x1800045da
   1800045c4:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800045d0:	movb   $0x30,0x7e(%rsp)
   1800045d5:	mov    $0xe,%eax
   1800045da:	mov    0x3c9f(%rip),%rcx        # 0x180008280
   1800045e1:	test   %rcx,%rcx
   1800045e4:	je     0x1800028f0
   1800045ea:	lea    (%rsp,%rax,1),%rdx
   1800045ee:	add    $0x70,%rdx
   1800045f2:	mov    $0xffffffff,%r8d
   1800045f8:	nopl   0x0(%rax,%rax,1)
   180004600:	inc    %r8d
   180004603:	cmpb   $0x0,(%rdx,%r8,1)
   180004608:	jne    0x180004600
   18000460a:	movq   $0x0,0x20(%rsp)
   180004613:	lea    0x2d0(%rsp),%r9
   18000461b:	call   *%rdi
   18000461d:	mov    0x3c5c(%rip),%rcx        # 0x180008280
   180004624:	test   %rcx,%rcx
   180004627:	je     0x1800028f0
   18000462d:	movq   $0x0,0x20(%rsp)
   180004636:	lea    0x319f(%rip),%rdx        # 0x1800077dc
   18000463d:	mov    $0x2,%r8d
   180004643:	mov    %r12,%r9
   180004646:	call   *%rdi
   180004648:	jmp    0x1800028f0
   18000464d:	nopl   (%rax)
   180004650:	push   %rsi
   180004651:	push   %rdi
   180004652:	push   %rbp
   180004653:	push   %rbx
   180004654:	sub    $0x28,%rsp
   180004658:	mov    %rcx,%rsi
   18000465b:	movl   $0x0,0x24(%rsp)
   180004663:	lea    0x24(%rsp),%rdx
   180004668:	call   *0x33ba(%rip)        # 0x180007a28
   18000466e:	mov    %eax,%edi
   180004670:	mov    0x24(%rsp),%ebp
   180004674:	call   *0x330e(%rip)        # 0x180007988
   18000467a:	mov    $0x1,%ebx
   18000467f:	cmp    %eax,%ebp
   180004681:	jne    0x18000469f
   180004683:	mov    %rsi,%rcx
   180004686:	call   *0x33ac(%rip)        # 0x180007a38
   18000468c:	test   %eax,%eax
   18000468e:	je     0x18000469f
   180004690:	mov    %edi,0x78f0a(%rip)        # 0x18007d5a0
   180004696:	mov    %rsi,0x7917b(%rip)        # 0x18007d818
   18000469d:	xor    %ebx,%ebx
   18000469f:	mov    %ebx,%eax
   1800046a1:	add    $0x28,%rsp
   1800046a5:	pop    %rbx
   1800046a6:	pop    %rbp
   1800046a7:	pop    %rdi
   1800046a8:	pop    %rsi
   1800046a9:	ret    
   1800046aa:	nopw   0x0(%rax,%rax,1)
   1800046b0:	push   %r15
   1800046b2:	push   %r14
   1800046b4:	push   %r13
   1800046b6:	push   %r12
   1800046b8:	push   %rsi
   1800046b9:	push   %rdi
   1800046ba:	push   %rbp
   1800046bb:	push   %rbx
   1800046bc:	sub    $0x48,%rsp
   1800046c0:	mov    %r8,%rsi
   1800046c3:	mov    %rdx,%rbx
   1800046c6:	mov    %ecx,%edi
   1800046c8:	test   %ecx,%ecx
   1800046ca:	js     0x180004d66
   1800046d0:	cmp    $0x1,%rbx
   1800046d4:	jne    0x180004d66
   1800046da:	cmpl   $0x0,0x78eaf(%rip)        # 0x18007d590
   1800046e1:	je     0x180004d66
   1800046e7:	mov    0x8(%rsi),%eax
   1800046ea:	cmp    $0x100,%eax
   1800046ef:	je     0x180004785
   1800046f5:	cmp    $0x102,%eax
   1800046fa:	jne    0x18000482c
   180004700:	cmpq   $0x57503031,0x18(%rsi)
   180004708:	je     0x180004837
   18000470e:	mov    0x10(%rsi),%rax
   180004712:	cmp    $0x7e,%rax
   180004716:	je     0x180004722
   180004718:	cmp    $0x60,%rax
   18000471c:	jne    0x1800047e5
   180004722:	xor    %eax,%eax
   180004724:	cmpl   $0x0,0x790cd(%rip)        # 0x18007d7f8
   18000472b:	sete   %al
   18000472e:	mov    %eax,0x790c4(%rip)        # 0x18007d7f8
   180004734:	movl   $0x0,0x790be(%rip)        # 0x18007d7fc
   18000473e:	mov    0x790b4(%rip),%eax        # 0x18007d7f8
   180004744:	cmp    $0x1,%eax
   180004747:	mov    $0x2,%eax
   18000474c:	sbb    $0x0,%eax
   18000474f:	mov    %eax,0x78ffb(%rip)        # 0x18007d750
   180004755:	movl   $0x0,0x8(%rsi)
   18000475c:	mov    0x78e35(%rip),%rcx        # 0x18007d598
   180004763:	mov    $0x1,%r8d
   180004769:	mov    %edi,%edx
   18000476b:	mov    %rsi,%r9
   18000476e:	add    $0x48,%rsp
   180004772:	pop    %rbx
   180004773:	pop    %rbp
   180004774:	pop    %rdi
   180004775:	pop    %rsi
   180004776:	pop    %r12
   180004778:	pop    %r13
   18000477a:	pop    %r14
   18000477c:	pop    %r15
   18000477e:	rex.W jmp *0x328b(%rip)        # 0x180007a10
   180004785:	cmpq   $0x4b,0x10(%rsi)
   18000478a:	jne    0x1800047ef
   18000478c:	mov    $0x11,%ecx
   180004791:	call   *0x3289(%rip)        # 0x180007a20
   180004797:	test   %ax,%ax
   18000479a:	jns    0x1800047e5
   18000479c:	mov    $0x10,%ecx
   1800047a1:	call   *0x3279(%rip)        # 0x180007a20
   1800047a7:	test   %ax,%ax
   1800047aa:	jns    0x1800047e5
   1800047ac:	testb  $0x40,0x1b(%rsi)
   1800047b0:	jne    0x1800047e5
   1800047b2:	xor    %eax,%eax
   1800047b4:	cmpl   $0x0,0x7903d(%rip)        # 0x18007d7f8
   1800047bb:	sete   %al
   1800047be:	mov    %eax,0x79034(%rip)        # 0x18007d7f8
   1800047c4:	movl   $0x0,0x7902e(%rip)        # 0x18007d7fc
   1800047ce:	mov    0x79024(%rip),%eax        # 0x18007d7f8
   1800047d4:	cmp    $0x1,%eax
   1800047d7:	mov    $0x2,%eax
   1800047dc:	sbb    $0x0,%eax
   1800047df:	mov    %eax,0x78f6b(%rip)        # 0x18007d750
   1800047e5:	mov    0x8(%rsi),%eax
   1800047e8:	cmp    $0x100,%eax
   1800047ed:	jne    0x18000482c
   1800047ef:	cmpq   $0x8,0x10(%rsi)
   1800047f4:	jne    0x180004d66
   1800047fa:	cmpl   $0x0,0x78fff(%rip)        # 0x18007d800
   180004801:	je     0x180004d66
   180004807:	cmpl   $0x0,0x78fea(%rip)        # 0x18007d7f8
   18000480e:	jne    0x180004d66
   180004814:	cmpl   $0x0,0x78fe9(%rip)        # 0x18007d804
   18000481b:	jle    0x180004d66
   180004821:	decl   0x78fdd(%rip)        # 0x18007d804
   180004827:	jmp    0x180004d66
   18000482c:	cmp    $0x102,%eax
   180004831:	jne    0x180004d66
   180004837:	cmpq   $0x57503031,0x18(%rsi)
   18000483f:	je     0x180004d66
   180004845:	mov    0x10(%rsi),%r14
   180004849:	incl   0x78f4d(%rip)        # 0x18007d79c
   18000484f:	mov    (%rsi),%rcx
   180004852:	call   *0x31d8(%rip)        # 0x180007a30
   180004858:	mov    %eax,0x37a2(%rip)        # 0x180008000
   18000485e:	cmpl   $0x0,0x78f93(%rip)        # 0x18007d7f8
   180004865:	je     0x180004894
   180004867:	lea    -0x41(%r14),%eax
   18000486b:	mov    %r14d,%ecx
   18000486e:	or     $0x20,%ecx
   180004871:	cmp    $0x1a,%eax
   180004874:	cmovae %r14d,%ecx
   180004878:	cmp    $0x2d,%ecx
   18000487b:	je     0x1800048d2
   18000487d:	lea    -0x61(%rcx),%eax
   180004880:	cmp    $0x19,%eax
   180004883:	jbe    0x1800048d2
   180004885:	movl   $0x0,0x78f6d(%rip)        # 0x18007d7fc
   18000488f:	jmp    0x180004d66
   180004894:	mov    %r14d,%eax
   180004897:	and    $0xffffffdf,%eax
   18000489a:	add    $0xffffffbf,%eax
   18000489d:	cmp    $0x1a,%eax
   1800048a0:	jb     0x1800048fe
   1800048a2:	lea    -0x30(%r14),%eax
   1800048a6:	cmp    $0x9,%eax
   1800048a9:	jbe    0x1800048fe
   1800048ab:	lea    -0x20(%r14),%eax
   1800048af:	cmp    $0xe,%eax
   1800048b2:	ja     0x180004d66
   1800048b8:	lea    0x27e5(%rip),%rcx        # 0x1800070a4
   1800048bf:	movslq (%rcx,%rax,4),%rax
   1800048c3:	add    %rcx,%rax
   1800048c6:	jmp    *%rax
   1800048c8:	mov    $0x8140,%r15w
   1800048cd:	jmp    0x180004955
   1800048d2:	lea    -0x61(%rcx),%eax
   1800048d5:	rol    $0x6,%al
   1800048d8:	cmp    $0x5,%al
   1800048da:	ja     0x180004972
   1800048e0:	movzbl %al,%eax
   1800048e3:	lea    0x27a2(%rip),%rdx        # 0x18000708c
   1800048ea:	movslq (%rdx,%rax,4),%r8
   1800048ee:	add    %rdx,%r8
   1800048f1:	jmp    *%r8
   1800048f4:	mov    $0x3,%eax
   1800048f9:	jmp    0x18000498e
   1800048fe:	cmpl   $0x0,0x78efb(%rip)        # 0x18007d800
   180004905:	je     0x18000492d
   180004907:	mov    0x78ef7(%rip),%eax        # 0x18007d804
   18000490d:	cmp    $0x7,%eax
   180004910:	jg     0x18000492d
   180004912:	movslq 0x78eeb(%rip),%rax        # 0x18007d804
   180004919:	lea    0x1(%rax),%ecx
   18000491c:	mov    %ecx,0x78ee2(%rip)        # 0x18007d804
   180004922:	lea    0x78edf(%rip),%rcx        # 0x18007d808
   180004929:	mov    %r14b,(%rax,%rcx,1)
   18000492d:	movzbl %r14b,%eax
   180004931:	lea    -0x41(%r14),%ecx
   180004935:	lea    -0x61(%r14),%edx
   180004939:	xor    %r8d,%r8d
   18000493c:	cmp    $0x1a,%dl
   18000493f:	adc    $0x821f,%r8w
   180004945:	cmp    $0x1a,%cl
   180004948:	mov    $0x821f,%r15d
   18000494e:	cmovae %r8d,%r15d
   180004952:	add    %eax,%r15d
   180004955:	movl   $0x1,0x3c(%rsp)
   18000495d:	jmp    0x180004be0
   180004962:	mov    $0x1,%eax
   180004967:	jmp    0x18000498e
   180004969:	mov    $0x2,%eax
   18000496e:	mov    $0x1,%dl
   180004970:	jmp    0x180004990
   180004972:	xor    %edx,%edx
   180004974:	cmp    $0x2d,%cl
   180004977:	je     0x180004aee
   18000497d:	movzbl %cl,%eax
   180004980:	cmp    $0x6f,%eax
   180004983:	jne    0x180004b30
   180004989:	mov    $0x4,%eax
   18000498e:	xor    %edx,%edx
   180004990:	mov    0x78e65(%rip),%r9d        # 0x18007d7fc
   180004997:	lea    0x78e82(%rip),%rcx        # 0x18007d820
   18000499e:	movb   $0x0,(%r9,%rcx,1)
   1800049a3:	movzbl 0x78e75(%rip),%r8d        # 0x18007d820
   1800049ab:	lea    0x29d4(%rip),%r10        # 0x180007386
   1800049b2:	test   %r8b,%r8b
   1800049b5:	je     0x180004b9f
   1800049bb:	xor    %r14d,%r14d
   1800049be:	lea    0x29aa(%rip),%r15        # 0x18000736f
   1800049c5:	mov    %r8d,%r11d
   1800049c8:	movzbl (%r14,%r15,1),%ebp
   1800049cd:	cmp    %bpl,%r11b
   1800049d0:	jne    0x1800049e8
   1800049d2:	movzbl 0x1(%r14,%rcx,1),%r11d
   1800049d8:	inc    %r14
   1800049db:	test   %r11b,%r11b
   1800049de:	jne    0x1800049c8
   1800049e0:	movzbl (%r14,%r15,1),%ebp
   1800049e5:	xor    %r11d,%r11d
   1800049e8:	cmp    %bpl,%r11b
   1800049eb:	jne    0x1800049fa
   1800049ed:	mov    $0x1,%r8d
   1800049f3:	mov    $0x8356,%r15w
   1800049f8:	jmp    0x180004a76
   1800049fa:	xor    %r14d,%r14d
   1800049fd:	lea    0x296e(%rip),%r15        # 0x180007372
   180004a04:	mov    %r8d,%r11d
   180004a07:	movzbl (%r14,%r15,1),%ebp
   180004a0c:	cmp    %bpl,%r11b
   180004a0f:	jne    0x180004a27
   180004a11:	movzbl 0x1(%r14,%rcx,1),%r11d
   180004a17:	inc    %r14
   180004a1a:	test   %r11b,%r11b
   180004a1d:	jne    0x180004a07
   180004a1f:	movzbl (%r14,%r15,1),%ebp
   180004a24:	xor    %r11d,%r11d
   180004a27:	cmp    %bpl,%r11b
   180004a2a:	jne    0x180004a39
   180004a2c:	mov    $0x1,%r8d
   180004a32:	mov    $0x8360,%r15w
   180004a37:	jmp    0x180004a76
   180004a39:	xor    %r14d,%r14d
   180004a3c:	lea    0x292a(%rip),%r15        # 0x18000736d
   180004a43:	mov    %r8d,%r11d
   180004a46:	movzbl (%r14,%r15,1),%ebp
   180004a4b:	cmp    %bpl,%r11b
   180004a4e:	jne    0x180004a66
   180004a50:	movzbl 0x1(%r14,%rcx,1),%r11d
   180004a56:	inc    %r14
   180004a59:	test   %r11b,%r11b
   180004a5c:	jne    0x180004a46
   180004a5e:	movzbl (%r14,%r15,1),%ebp
   180004a63:	xor    %r11d,%r11d
   180004a66:	cmp    %bpl,%r11b
   180004a69:	jne    0x180004aae
   180004a6b:	mov    $0x1,%r8d
   180004a71:	mov    $0x8357,%r15w
   180004a76:	mov    %eax,%ecx
   180004a78:	or     $0x2,%ecx
   180004a7b:	cmp    $0x3,%ecx
   180004a7e:	je     0x180004bd1
   180004a84:	lea    0x2665(%rip),%rcx        # 0x1800070f0
   180004a8b:	jmp    0x180004bc0
   180004a90:	mov    $0x817c,%r15w
   180004a95:	jmp    0x180004955
   180004a9a:	mov    $0x8166,%r15w
   180004a9f:	jmp    0x180004955
   180004aa4:	mov    $0x8144,%r15w
   180004aa9:	jmp    0x180004955
   180004aae:	lea    0x28a7(%rip),%r11        # 0x18000735c
   180004ab5:	lea    0x78d65(%rip),%r14        # 0x18007d821
   180004abc:	mov    %r8d,%ebp
   180004abf:	cmp    (%r11),%bpl
   180004ac2:	jne    0x180004ad5
   180004ac4:	inc    %r11
   180004ac7:	movzbl (%r14),%ebp
   180004acb:	inc    %r14
   180004ace:	test   %bpl,%bpl
   180004ad1:	jne    0x180004abf
   180004ad3:	xor    %ebp,%ebp
   180004ad5:	cmp    (%r11),%bpl
   180004ad8:	jne    0x180004b6d
   180004ade:	mov    $0x1,%r8d
   180004ae4:	mov    $0x8363,%r15w
   180004ae9:	jmp    0x180004bd1
   180004aee:	cmpl   $0x1,0x78d07(%rip)        # 0x18007d7fc
   180004af5:	jne    0x180004b0c
   180004af7:	cmpb   $0x6e,0x78d22(%rip)        # 0x18007d820
   180004afe:	jne    0x180004b0c
   180004b00:	movw   $0x8393,0x40(%rsp)
   180004b07:	mov    $0x1,%edx
   180004b0c:	movl   $0x0,0x78ce6(%rip)        # 0x18007d7fc
   180004b16:	mov    %edx,%eax
   180004b18:	inc    %edx
   180004b1a:	mov    %edx,0x3c(%rsp)
   180004b1e:	movw   $0x815b,0x40(%rsp,%rax,2)
   180004b25:	movzwl 0x40(%rsp),%r15d
   180004b2b:	jmp    0x180004be0
   180004b30:	mov    0x78cc6(%rip),%eax        # 0x18007d7fc
   180004b36:	cmp    $0x79,%cl
   180004b39:	je     0x180004d8c
   180004b3f:	cmp    $0x1,%eax
   180004b42:	jne    0x180004d8c
   180004b48:	cmpb   $0x6e,0x78cd1(%rip)        # 0x18007d820
   180004b4f:	jne    0x180004d8c
   180004b55:	cmp    $0x6e,%cl
   180004b58:	jne    0x180004dba
   180004b5e:	movl   $0x0,0x78c94(%rip)        # 0x18007d7fc
   180004b68:	jmp    0x180004dca
   180004b6d:	test   %r8b,%r8b
   180004b70:	je     0x180004b9f
   180004b72:	lea    0x280d(%rip),%r10        # 0x180007386
   180004b79:	lea    0x78ca1(%rip),%r11        # 0x18007d821
   180004b80:	mov    %r8d,%r14d
   180004b83:	xor    %ebp,%ebp
   180004b85:	cmp    (%r10),%r14b
   180004b88:	jne    0x180004ddc
   180004b8e:	inc    %r10
   180004b91:	movzbl (%r11),%r14d
   180004b95:	inc    %r11
   180004b98:	test   %r14b,%r14b
   180004b9b:	jne    0x180004b85
   180004b9d:	jmp    0x180004ba1
   180004b9f:	xor    %ebp,%ebp
   180004ba1:	cmp    (%r10),%bpl
   180004ba4:	jne    0x180004de8
   180004baa:	mov    $0x1,%r8d
   180004bb0:	mov    $0x8374,%r15w
   180004bb5:	test   %dl,%dl
   180004bb7:	jne    0x180004bd1
   180004bb9:	lea    0x253a(%rip),%rcx        # 0x1800070fa
   180004bc0:	mov    %eax,%eax
   180004bc2:	movzwl (%rcx,%rax,2),%eax
   180004bc6:	mov    %ax,0x42(%rsp)
   180004bcb:	mov    $0x2,%r8d
   180004bd1:	mov    %r8d,0x3c(%rsp)
   180004bd6:	movl   $0x0,0x78c1c(%rip)        # 0x18007d7fc
   180004be0:	incl   0x78bba(%rip)        # 0x18007d7a0
   180004be6:	movzwl %r15w,%ebp
   180004bea:	mov    %ebp,%r13d
   180004bed:	shr    $0x8,%r13d
   180004bf1:	movw   $0x0,0x3a(%rsp)
   180004bf8:	mov    %r13b,0x39(%rsp)
   180004bfd:	lea    0x3a(%rsp),%r14
   180004c02:	mov    %r14,0x20(%rsp)
   180004c07:	movl   $0x1,0x28(%rsp)
   180004c0f:	mov    0x2db2(%rip),%r12        # 0x1800079c8
   180004c16:	lea    0x39(%rsp),%r8
   180004c1b:	xor    %ecx,%ecx
   180004c1d:	xor    %edx,%edx
   180004c1f:	mov    $0x1,%r9d
   180004c25:	call   *%r12
   180004c28:	movzwl 0x3a(%rsp),%ecx
   180004c2d:	test   %cx,%cx
   180004c30:	cmove  %r13d,%ecx
   180004c34:	cmp    $0x1,%eax
   180004c37:	cmovne %r13d,%ecx
   180004c3b:	mov    %r12,%r13
   180004c3e:	mov    %r14,%r12
   180004c41:	movzwl %cx,%eax
   180004c44:	mov    %rax,0x10(%rsi)
   180004c48:	movw   $0x0,0x3a(%rsp)
   180004c4f:	mov    %bpl,0x39(%rsp)
   180004c54:	mov    %r14,0x20(%rsp)
   180004c59:	movl   $0x1,0x28(%rsp)
   180004c61:	lea    0x39(%rsp),%r8
   180004c66:	xor    %ecx,%ecx
   180004c68:	xor    %edx,%edx
   180004c6a:	mov    $0x1,%r9d
   180004c70:	call   *%r13
   180004c73:	movzwl 0x3a(%rsp),%ecx
   180004c78:	test   %cx,%cx
   180004c7b:	movzbl %r15b,%edx
   180004c7f:	cmove  %edx,%ecx
   180004c82:	cmp    $0x1,%eax
   180004c85:	cmovne %edx,%ecx
   180004c88:	movzwl %cx,%r8d
   180004c8c:	mov    (%rsi),%rcx
   180004c8f:	mov    $0x57503031,%r9d
   180004c95:	mov    $0x102,%edx
   180004c9a:	call   *0x2da0(%rip)        # 0x180007a40
   180004ca0:	cmpl   $0x2,0x3c(%rsp)
   180004ca5:	jb     0x180004d66
   180004cab:	movzwl 0x42(%rsp),%ebp
   180004cb0:	mov    %ebp,%r14d
   180004cb3:	shr    $0x8,%r14d
   180004cb7:	movw   $0x0,0x3a(%rsp)
   180004cbe:	mov    %r14b,0x39(%rsp)
   180004cc3:	mov    %r12,0x20(%rsp)
   180004cc8:	movl   $0x1,0x28(%rsp)
   180004cd0:	lea    0x39(%rsp),%r8
   180004cd5:	xor    %ecx,%ecx
   180004cd7:	xor    %edx,%edx
   180004cd9:	mov    $0x1,%r9d
   180004cdf:	call   *%r13
   180004ce2:	movzwl 0x3a(%rsp),%ecx
   180004ce7:	test   %cx,%cx
   180004cea:	cmove  %r14d,%ecx
   180004cee:	cmp    $0x1,%eax
   180004cf1:	cmovne %r14d,%ecx
   180004cf5:	movzwl %cx,%r8d
   180004cf9:	mov    (%rsi),%rcx
   180004cfc:	mov    0x2d3d(%rip),%r14        # 0x180007a40
   180004d03:	mov    $0x57503031,%r9d
   180004d09:	mov    $0x102,%edx
   180004d0e:	call   *%r14
   180004d11:	movw   $0x0,0x3a(%rsp)
   180004d18:	mov    %bpl,0x39(%rsp)
   180004d1d:	mov    %r12,0x20(%rsp)
   180004d22:	movl   $0x1,0x28(%rsp)
   180004d2a:	lea    0x39(%rsp),%r8
   180004d2f:	xor    %ecx,%ecx
   180004d31:	xor    %edx,%edx
   180004d33:	mov    $0x1,%r9d
   180004d39:	call   *%r13
   180004d3c:	movzwl 0x3a(%rsp),%ecx
   180004d41:	test   %cx,%cx
   180004d44:	movzbl %bpl,%edx
   180004d48:	cmove  %edx,%ecx
   180004d4b:	cmp    $0x1,%eax
   180004d4e:	cmovne %edx,%ecx
   180004d51:	movzwl %cx,%r8d
   180004d55:	mov    (%rsi),%rcx
   180004d58:	mov    $0x57503031,%r9d
   180004d5e:	mov    $0x102,%edx
   180004d63:	call   *%r14
   180004d66:	mov    0x7882b(%rip),%rcx        # 0x18007d598
   180004d6d:	mov    %edi,%edx
   180004d6f:	mov    %rbx,%r8
   180004d72:	mov    %rsi,%r9
   180004d75:	call   *0x2c95(%rip)        # 0x180007a10
   180004d7b:	add    $0x48,%rsp
   180004d7f:	pop    %rbx
   180004d80:	pop    %rbp
   180004d81:	pop    %rdi
   180004d82:	pop    %rsi
   180004d83:	pop    %r12
   180004d85:	pop    %r13
   180004d87:	pop    %r14
   180004d89:	pop    %r15
   180004d8b:	ret    
   180004d8c:	test   %eax,%eax
   180004d8e:	jle    0x180004f2b
   180004d94:	lea    -0x1(%rax),%edx
   180004d97:	lea    0x78a82(%rip),%r8        # 0x18007d820
   180004d9e:	cmp    %cl,(%rdx,%r8,1)
   180004da2:	jne    0x180004f26
   180004da8:	movl   $0x1,0x3c(%rsp)
   180004db0:	mov    $0x8362,%r15w
   180004db5:	jmp    0x180004be0
   180004dba:	mov    %cl,0x78a60(%rip)        # 0x18007d820
   180004dc0:	movl   $0x1,0x78a32(%rip)        # 0x18007d7fc
   180004dca:	movl   $0x1,0x3c(%rsp)
   180004dd2:	mov    $0x8393,%r15w
   180004dd7:	jmp    0x180004be0
   180004ddc:	mov    %r14d,%ebp
   180004ddf:	cmp    (%r10),%bpl
   180004de2:	je     0x180004baa
   180004de8:	cmp    $0x2,%r9d
   180004dec:	jne    0x180004e63
   180004dee:	cmpb   $0x79,0x78a2c(%rip)        # 0x18007d821
   180004df5:	jne    0x180004e63
   180004df7:	mov    %r8b,0x3a(%rsp)
   180004dfc:	movb   $0x0,0x3b(%rsp)
   180004e01:	xor    %r8d,%r8d
   180004e04:	lea    0x2305(%rip),%rcx        # 0x180007110
   180004e0b:	lea    0x3a(%rsp),%r9
   180004e10:	lea    (%r8,%r8,2),%rdx
   180004e14:	mov    (%rcx,%rdx,8),%r14
   180004e18:	movzbl (%r14),%r10d
   180004e1c:	test   %r10b,%r10b
   180004e1f:	je     0x180004e49
   180004e21:	inc    %r14
   180004e24:	mov    %r9,%r11
   180004e27:	nopw   0x0(%rax,%rax,1)
   180004e30:	cmp    (%r11),%r10b
   180004e33:	jne    0x180004e4f
   180004e35:	inc    %r11
   180004e38:	movzbl (%r14),%r10d
   180004e3c:	inc    %r14
   180004e3f:	test   %r10b,%r10b
   180004e42:	jne    0x180004e30
   180004e44:	xor    %r10d,%r10d
   180004e47:	jmp    0x180004e4f
   180004e49:	xor    %r10d,%r10d
   180004e4c:	mov    %r9,%r11
   180004e4f:	cmp    (%r11),%r10b
   180004e52:	je     0x180004eea
   180004e58:	inc    %r8
   180004e5b:	cmp    $0x14,%r8
   180004e5f:	jne    0x180004e10
   180004e61:	jmp    0x180004edb
   180004e63:	xor    %edx,%edx
   180004e65:	lea    0x22a4(%rip),%r8        # 0x180007110
   180004e6c:	lea    (%rdx,%rdx,2),%r9
   180004e70:	mov    (%r8,%r9,8),%r14
   180004e74:	movzbl (%r14),%r10d
   180004e78:	test   %r10b,%r10b
   180004e7b:	je     0x180004ea9
   180004e7d:	inc    %r14
   180004e80:	mov    %rcx,%r11
   180004e83:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180004e90:	cmp    (%r11),%r10b
   180004e93:	jne    0x180004eaf
   180004e95:	inc    %r11
   180004e98:	movzbl (%r14),%r10d
   180004e9c:	inc    %r14
   180004e9f:	test   %r10b,%r10b
   180004ea2:	jne    0x180004e90
   180004ea4:	xor    %r10d,%r10d
   180004ea7:	jmp    0x180004eaf
   180004ea9:	xor    %r10d,%r10d
   180004eac:	mov    %rcx,%r11
   180004eaf:	cmp    (%r11),%r10b
   180004eb2:	je     0x180004ebf
   180004eb4:	inc    %rdx
   180004eb7:	cmp    $0x14,%rdx
   180004ebb:	jne    0x180004e6c
   180004ebd:	jmp    0x180004edb
   180004ebf:	lea    (%r8,%r9,8),%rcx
   180004ec3:	mov    %eax,%eax
   180004ec5:	movzwl 0x8(%rcx,%rax,2),%r15d
   180004ecb:	mov    $0x1,%r8d
   180004ed1:	test   %r15w,%r15w
   180004ed5:	jne    0x180004bd1
   180004edb:	movl   $0x0,0x78917(%rip)        # 0x18007d7fc
   180004ee5:	jmp    0x180004755
   180004eea:	mov    %eax,%r8d
   180004eed:	and    $0x5,%r8d
   180004ef1:	mov    $0x1,%r9d
   180004ef7:	cmp    $0x1,%r8d
   180004efb:	je     0x180004f16
   180004efd:	mov    %eax,%eax
   180004eff:	lea    0x21ea(%rip),%r8        # 0x1800070f0
   180004f06:	movzwl (%r8,%rax,2),%eax
   180004f0b:	mov    %ax,0x42(%rsp)
   180004f10:	mov    $0x2,%r9d
   180004f16:	mov    %r9d,0x3c(%rsp)
   180004f1b:	movzwl 0xa(%rcx,%rdx,8),%r15d
   180004f21:	jmp    0x180004bd6
   180004f26:	cmp    $0x1,%eax
   180004f29:	jne    0x180004f43
   180004f2b:	lea    0x1(%rax),%edx
   180004f2e:	mov    %edx,0x788c8(%rip)        # 0x18007d7fc
   180004f34:	lea    0x788e5(%rip),%rdx        # 0x18007d820
   180004f3b:	mov    %cl,(%rax,%rdx,1)
   180004f3e:	jmp    0x180004755
   180004f43:	mov    %cl,0x788d7(%rip)        # 0x18007d820
   180004f49:	movl   $0x1,0x788a9(%rip)        # 0x18007d7fc
   180004f53:	jmp    0x180004755
   180004f58:	nopl   0x0(%rax,%rax,1)
   180004f60:	push   %rsi
   180004f61:	push   %rdi
   180004f62:	sub    $0x48,%rsp
   180004f66:	cmpl   $0x0,0x788d3(%rip)        # 0x18007d840
   180004f6d:	je     0x180005351
   180004f73:	mov    0x788d3(%rip),%edx        # 0x18007d84c
   180004f79:	mov    0x788c8(%rip),%r8d        # 0x18007d848
   180004f80:	mov    0x788be(%rip),%eax        # 0x18007d844
   180004f86:	cmp    %r8d,%edx
   180004f89:	jne    0x180004fef
   180004f8b:	test   %eax,%eax
   180004f8d:	jne    0x180004fef
   180004f8f:	cmp    0x32f2(%rip),%r8d        # 0x180008288
   180004f96:	jne    0x180004fef
   180004f98:	xor    %eax,%eax
   180004f9a:	test   %ecx,%ecx
   180004f9c:	jne    0x180005010
   180004f9e:	mov    0x32db(%rip),%rcx        # 0x180008280
   180004fa5:	test   %rcx,%rcx
   180004fa8:	je     0x180004fcb
   180004faa:	movq   $0x0,0x20(%rsp)
   180004fb3:	lea    0x25d8(%rip),%rdx        # 0x180007592
   180004fba:	lea    0x30(%rsp),%r9
   180004fbf:	mov    $0x26,%r8d
   180004fc5:	call   *0x2a35(%rip)        # 0x180007a00
   180004fcb:	movl   $0x0,0x7886b(%rip)        # 0x18007d840
   180004fd5:	call   0x180005dd0
   180004fda:	mov    $0x12c,%ecx
   180004fdf:	mov    $0x258,%edx
   180004fe4:	call   *0x297e(%rip)        # 0x180007968
   180004fea:	jmp    0x180005351
   180004fef:	test   %ecx,%ecx
   180004ff1:	lea    0x7884c(%rip),%r9        # 0x18007d844
   180004ff8:	lea    0x78849(%rip),%r10        # 0x18007d848
   180004fff:	cmove  %r9,%r10
   180005003:	cmove  %edx,%eax
   180005006:	cmovne %edx,%r8d
   18000500a:	mov    %edx,(%r10)
   18000500d:	mov    %r8d,%edx
   180005010:	sub    %eax,%edx
   180005012:	cmp    $0x1,%edx
   180005015:	ja     0x1800050b4
   18000501b:	mov    0x325e(%rip),%rcx        # 0x180008280
   180005022:	test   %rcx,%rcx
   180005025:	je     0x18000504e
   180005027:	movq   $0x0,0x20(%rsp)
   180005030:	lea    0x249d(%rip),%rdx        # 0x1800074d4
   180005037:	lea    0x30(%rsp),%r9
   18000503c:	mov    $0x15,%r8d
   180005042:	call   *0x29b8(%rip)        # 0x180007a00
   180005048:	mov    0x787f6(%rip),%eax        # 0x18007d844
   18000504e:	movabs $0xffffffff00000000,%rdi
   180005058:	movabs $0xf00000000,%rsi
   180005062:	movb   $0x0,0x3f(%rsp)
   180005067:	test   %eax,%eax
   180005069:	je     0x1800050e4
   18000506b:	lea    0x3e(%rsp),%rcx
   180005070:	mov    $0xcccccccd,%r8d
   180005076:	mov    %rsi,%rdx
   180005079:	nopl   0x0(%rax)
   180005080:	mov    %eax,%r9d
   180005083:	imul   %r8,%r9
   180005087:	shr    $0x23,%r9
   18000508b:	lea    (%r9,%r9,1),%r10d
   18000508f:	lea    (%r10,%r10,4),%r10d
   180005093:	mov    %eax,%r11d
   180005096:	sub    %r10d,%r11d
   180005099:	or     $0x30,%r11b
   18000509d:	mov    %r11b,(%rcx)
   1800050a0:	add    %rdi,%rdx
   1800050a3:	dec    %rcx
   1800050a6:	cmp    $0x9,%eax
   1800050a9:	mov    %r9d,%eax
   1800050ac:	ja     0x180005080
   1800050ae:	sar    $0x20,%rdx
   1800050b2:	jmp    0x1800050ee
   1800050b4:	shr    %edx
   1800050b6:	add    %eax,%edx
   1800050b8:	mov    %edx,0x7878e(%rip)        # 0x18007d84c
   1800050be:	mov    %ecx,%esi
   1800050c0:	call   0x180005dd0
   1800050c5:	test   %esi,%esi
   1800050c7:	lea    0x22f6(%rip),%rax        # 0x1800073c4
   1800050ce:	lea    0x22e9(%rip),%rcx        # 0x1800073be
   1800050d5:	cmove  %rax,%rcx
   1800050d9:	add    $0x48,%rsp
   1800050dd:	pop    %rdi
   1800050de:	pop    %rsi
   1800050df:	jmp    0x180006040
   1800050e4:	movb   $0x30,0x3e(%rsp)
   1800050e9:	mov    $0xe,%edx
   1800050ee:	mov    0x318b(%rip),%rcx        # 0x180008280
   1800050f5:	test   %rcx,%rcx
   1800050f8:	je     0x18000515b
   1800050fa:	add    %rsp,%rdx
   1800050fd:	add    $0x30,%rdx
   180005101:	mov    $0xffffffff,%r8d
   180005107:	nopw   0x0(%rax,%rax,1)
   180005110:	inc    %r8d
   180005113:	cmpb   $0x0,(%rdx,%r8,1)
   180005118:	jne    0x180005110
   18000511a:	movq   $0x0,0x20(%rsp)
   180005123:	lea    0x44(%rsp),%r9
   180005128:	call   *0x28d2(%rip)        # 0x180007a00
   18000512e:	mov    0x314b(%rip),%rcx        # 0x180008280
   180005135:	test   %rcx,%rcx
   180005138:	je     0x18000515b
   18000513a:	movq   $0x0,0x20(%rsp)
   180005143:	lea    0x23b7(%rip),%rdx        # 0x180007501
   18000514a:	lea    0x30(%rsp),%r9
   18000514f:	mov    $0x5,%r8d
   180005155:	call   *0x28a5(%rip)        # 0x180007a00
   18000515b:	mov    0x786e3(%rip),%eax        # 0x18007d844
   180005161:	lea    0x3128(%rip),%rcx        # 0x180008290
   180005168:	mov    (%rcx,%rax,4),%ecx
   18000516b:	movb   $0x0,0x3f(%rsp)
   180005170:	test   %ecx,%ecx
   180005172:	je     0x1800051c4
   180005174:	lea    0x3e(%rsp),%rdx
   180005179:	mov    $0xcccccccd,%r8d
   18000517f:	mov    %rsi,%rax
   180005182:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005190:	mov    %ecx,%r9d
   180005193:	imul   %r8,%r9
   180005197:	shr    $0x23,%r9
   18000519b:	lea    (%r9,%r9,1),%r10d
   18000519f:	lea    (%r10,%r10,4),%r10d
   1800051a3:	mov    %ecx,%r11d
   1800051a6:	sub    %r10d,%r11d
   1800051a9:	or     $0x30,%r11b
   1800051ad:	mov    %r11b,(%rdx)
   1800051b0:	add    %rdi,%rax
   1800051b3:	dec    %rdx
   1800051b6:	cmp    $0x9,%ecx
   1800051b9:	mov    %r9d,%ecx
   1800051bc:	ja     0x180005190
   1800051be:	sar    $0x20,%rax
   1800051c2:	jmp    0x1800051ce
   1800051c4:	movb   $0x30,0x3e(%rsp)
   1800051c9:	mov    $0xe,%eax
   1800051ce:	mov    0x30ab(%rip),%rcx        # 0x180008280
   1800051d5:	test   %rcx,%rcx
   1800051d8:	je     0x18000523b
   1800051da:	lea    (%rsp,%rax,1),%rdx
   1800051de:	add    $0x30,%rdx
   1800051e2:	mov    $0xffffffff,%r8d
   1800051e8:	nopl   0x0(%rax,%rax,1)
   1800051f0:	inc    %r8d
   1800051f3:	cmpb   $0x0,(%rdx,%r8,1)
   1800051f8:	jne    0x1800051f0
   1800051fa:	movq   $0x0,0x20(%rsp)
   180005203:	lea    0x44(%rsp),%r9
   180005208:	call   *0x27f2(%rip)        # 0x180007a00
   18000520e:	mov    0x306b(%rip),%rcx        # 0x180008280
   180005215:	test   %rcx,%rcx
   180005218:	je     0x18000523b
   18000521a:	movq   $0x0,0x20(%rsp)
   180005223:	lea    0x2256(%rip),%rdx        # 0x180007480
   18000522a:	lea    0x30(%rsp),%r9
   18000522f:	mov    $0x5,%r8d
   180005235:	call   *0x27c5(%rip)        # 0x180007a00
   18000523b:	mov    0x78603(%rip),%eax        # 0x18007d844
   180005241:	lea    0x168c8(%rip),%rcx        # 0x18001bb10
   180005248:	mov    (%rcx,%rax,4),%eax
   18000524b:	movb   $0x0,0x3f(%rsp)
   180005250:	test   %eax,%eax
   180005252:	je     0x180005294
   180005254:	lea    0x3e(%rsp),%rcx
   180005259:	mov    $0xcccccccd,%edx
   18000525e:	xchg   %ax,%ax
   180005260:	mov    %eax,%r8d
   180005263:	imul   %rdx,%r8
   180005267:	shr    $0x23,%r8
   18000526b:	lea    (%r8,%r8,1),%r9d
   18000526f:	lea    (%r9,%r9,4),%r9d
   180005273:	mov    %eax,%r10d
   180005276:	sub    %r9d,%r10d
   180005279:	or     $0x30,%r10b
   18000527d:	mov    %r10b,(%rcx)
   180005280:	add    %rdi,%rsi
   180005283:	dec    %rcx
   180005286:	cmp    $0x9,%eax
   180005289:	mov    %r8d,%eax
   18000528c:	ja     0x180005260
   18000528e:	sar    $0x20,%rsi
   180005292:	jmp    0x18000529e
   180005294:	movb   $0x30,0x3e(%rsp)
   180005299:	mov    $0xe,%esi
   18000529e:	mov    0x2fdb(%rip),%rcx        # 0x180008280
   1800052a5:	test   %rcx,%rcx
   1800052a8:	je     0x18000530b
   1800052aa:	lea    (%rsp,%rsi,1),%rdx
   1800052ae:	add    $0x30,%rdx
   1800052b2:	mov    $0xffffffff,%r8d
   1800052b8:	nopl   0x0(%rax,%rax,1)
   1800052c0:	inc    %r8d
   1800052c3:	cmpb   $0x0,(%rdx,%r8,1)
   1800052c8:	jne    0x1800052c0
   1800052ca:	movq   $0x0,0x20(%rsp)
   1800052d3:	lea    0x44(%rsp),%r9
   1800052d8:	call   *0x2722(%rip)        # 0x180007a00
   1800052de:	mov    0x2f9b(%rip),%rcx        # 0x180008280
   1800052e5:	test   %rcx,%rcx
   1800052e8:	je     0x18000530b
   1800052ea:	movq   $0x0,0x20(%rsp)
   1800052f3:	lea    0x24e2(%rip),%rdx        # 0x1800077dc
   1800052fa:	lea    0x30(%rsp),%r9
   1800052ff:	mov    $0x2,%r8d
   180005305:	call   *0x26f5(%rip)        # 0x180007a00
   18000530b:	mov    0x78537(%rip),%eax        # 0x18007d848
   180005311:	mov    %eax,0x78535(%rip)        # 0x18007d84c
   180005317:	call   0x180005dd0
   18000531c:	mov    0x2645(%rip),%rsi        # 0x180007968
   180005323:	mov    $0x3e8,%ecx
   180005328:	mov    $0x96,%edx
   18000532d:	call   *%rsi
   18000532f:	mov    $0x3e8,%ecx
   180005334:	mov    $0x96,%edx
   180005339:	call   *%rsi
   18000533b:	mov    $0x3e8,%ecx
   180005340:	mov    $0x96,%edx
   180005345:	call   *%rsi
   180005347:	movl   $0x2,0x784ef(%rip)        # 0x18007d840
   180005351:	add    $0x48,%rsp
   180005355:	pop    %rdi
   180005356:	pop    %rsi
   180005357:	ret    
   180005358:	nopl   0x0(%rax,%rax,1)
   180005360:	push   %r15
   180005362:	push   %r14
   180005364:	push   %r13
   180005366:	push   %r12
   180005368:	push   %rsi
   180005369:	push   %rdi
   18000536a:	push   %rbp
   18000536b:	push   %rbx
   18000536c:	sub    $0x78,%rsp
   180005370:	mov    %r8,0x40(%rsp)
   180005375:	mov    %rcx,%rdi
   180005378:	mov    %edx,%r12d
   18000537b:	xor    %r14d,%r14d
   18000537e:	movabs $0xffffffff00000000,%rsi
   180005388:	xor    %ebp,%ebp
   18000538a:	jmp    0x18000539c
   18000538c:	nopl   0x0(%rax)
   180005390:	add    %rbx,%rbp
   180005393:	test   %rbx,%rbx
   180005396:	je     0x180005792
   18000539c:	mov    $0x30,%r8d
   1800053a2:	mov    %rbp,%rcx
   1800053a5:	lea    0x48(%rsp),%rdx
   1800053aa:	call   *0x2648(%rip)        # 0x1800079f8
   1800053b0:	test   %rax,%rax
   1800053b3:	je     0x180005792
   1800053b9:	mov    0x48(%rsp),%rbp
   1800053be:	mov    0x60(%rsp),%rbx
   1800053c3:	cmpl   $0x1000,0x68(%rsp)
   1800053cb:	jne    0x180005390
   1800053cd:	mov    0x6c(%rsp),%eax
   1800053d1:	test   $0x4,%al
   1800053d3:	je     0x180005390
   1800053d5:	test   $0x700,%eax
   1800053da:	jne    0x180005390
   1800053dc:	cmp    $0x3fffffff,%rbx
   1800053e3:	ja     0x180005390
   1800053e5:	cmp    $0x200,%rbx
   1800053ec:	jb     0x180005390
   1800053ee:	lea    (%rbx,%rbp,1),%r13
   1800053f2:	add    $0xffffffffffffff38,%r13
   1800053f9:	lea    0x40(%rbp),%r15
   1800053fd:	jmp    0x18000541c
   1800053ff:	movabs $0xffffffff00000000,%rsi
   180005409:	inc    %r14d
   18000540c:	add    %r12,%r15
   18000540f:	nop
   180005410:	inc    %r15
   180005413:	cmp    %r13,%r15
   180005416:	jae    0x180005390
   18000541c:	movzbl (%r15),%eax
   180005420:	cmp    (%rdi),%al
   180005422:	jne    0x180005410
   180005424:	movzbl 0x1(%r15),%eax
   180005429:	cmp    0x1(%rdi),%al
   18000542c:	jne    0x180005410
   18000542e:	xor    %eax,%eax
   180005430:	cmp    %rax,%r12
   180005433:	je     0x180005448
   180005435:	movzbl (%r15,%rax,1),%ecx
   18000543a:	lea    0x1(%rax),%rdx
   18000543e:	cmp    (%rdi,%rax,1),%cl
   180005441:	mov    %rdx,%rax
   180005444:	je     0x180005430
   180005446:	jmp    0x180005410
   180005448:	lea    0x78331(%rip),%rax        # 0x18007d780
   18000544f:	cmp    %rax,%r15
   180005452:	jb     0x180005460
   180005454:	lea    0x78335(%rip),%rax        # 0x18007d790
   18000545b:	cmp    %rax,%r15
   18000545e:	jb     0x180005410
   180005460:	lea    0x1c79(%rip),%rax        # 0x1800070e0
   180005467:	cmp    %rax,%r15
   18000546a:	jb     0x180005478
   18000546c:	lea    0x1c7d(%rip),%rax        # 0x1800070f0
   180005473:	cmp    %rax,%r15
   180005476:	jb     0x180005410
   180005478:	lea    0x782f1(%rip),%rax        # 0x18007d770
   18000547f:	cmp    %rax,%r15
   180005482:	jb     0x180005490
   180005484:	lea    0x782f5(%rip),%rax        # 0x18007d780
   18000548b:	cmp    %rax,%r15
   18000548e:	jb     0x180005410
   180005490:	lea    0x78371(%rip),%rax        # 0x18007d808
   180005497:	cmp    %rax,%r15
   18000549a:	jb     0x1800054ac
   18000549c:	lea    0x7836d(%rip),%rax        # 0x18007d810
   1800054a3:	cmp    %rax,%r15
   1800054a6:	jb     0x180005410
   1800054ac:	cmp    $0xb,%r14d
   1800054b0:	ja     0x180005409
   1800054b6:	mov    0x2dc3(%rip),%rcx        # 0x180008280
   1800054bd:	test   %rcx,%rcx
   1800054c0:	je     0x18000554e
   1800054c6:	mov    $0xffffffff,%r8d
   1800054cc:	mov    0x40(%rsp),%rdx
   1800054d1:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800054e0:	inc    %r8d
   1800054e3:	cmpb   $0x0,(%rdx,%r8,1)
   1800054e8:	jne    0x1800054e0
   1800054ea:	movq   $0x0,0x20(%rsp)
   1800054f3:	lea    0x30(%rsp),%r9
   1800054f8:	call   *0x2502(%rip)        # 0x180007a00
   1800054fe:	mov    0x2d7b(%rip),%rcx        # 0x180008280
   180005505:	cmpl   $0x1000000,0x70(%rsp)
   18000550d:	lea    0x1f8c(%rip),%rdx        # 0x1800074a0
   180005514:	lea    0x1f90(%rip),%rax        # 0x1800074ab
   18000551b:	cmove  %rax,%rdx
   18000551f:	test   %rcx,%rcx
   180005522:	je     0x18000554e
   180005524:	mov    $0xffffffff,%r8d
   18000552a:	nopw   0x0(%rax,%rax,1)
   180005530:	inc    %r8d
   180005533:	cmpb   $0x0,(%rdx,%r8,1)
   180005538:	jne    0x180005530
   18000553a:	movq   $0x0,0x20(%rsp)
   180005543:	lea    0x30(%rsp),%r9
   180005548:	call   *0x24b2(%rip)        # 0x180007a00
   18000554e:	mov    %r15d,%ecx
   180005551:	movb   $0x0,0x3f(%rsp)
   180005556:	sub    %ebp,%ecx
   180005558:	je     0x1800055a4
   18000555a:	lea    0x3e(%rsp),%rdx
   18000555f:	movabs $0xf00000000,%rax
   180005569:	mov    $0xcccccccd,%r11d
   18000556f:	nop
   180005570:	mov    %ecx,%r8d
   180005573:	imul   %r11,%r8
   180005577:	shr    $0x23,%r8
   18000557b:	lea    (%r8,%r8,1),%r9d
   18000557f:	lea    (%r9,%r9,4),%r9d
   180005583:	mov    %ecx,%r10d
   180005586:	sub    %r9d,%r10d
   180005589:	or     $0x30,%r10b
   18000558d:	mov    %r10b,(%rdx)
   180005590:	add    %rsi,%rax
   180005593:	dec    %rdx
   180005596:	cmp    $0x9,%ecx
   180005599:	mov    %r8d,%ecx
   18000559c:	ja     0x180005570
   18000559e:	sar    $0x20,%rax
   1800055a2:	jmp    0x1800055ae
   1800055a4:	movb   $0x30,0x3e(%rsp)
   1800055a9:	mov    $0xe,%eax
   1800055ae:	mov    0x2ccb(%rip),%rcx        # 0x180008280
   1800055b5:	test   %rcx,%rcx
   1800055b8:	mov    0x2441(%rip),%rsi        # 0x180007a00
   1800055bf:	je     0x18000561c
   1800055c1:	lea    (%rsp,%rax,1),%rdx
   1800055c5:	add    $0x30,%rdx
   1800055c9:	mov    $0xffffffff,%r8d
   1800055cf:	nop
   1800055d0:	inc    %r8d
   1800055d3:	cmpb   $0x0,(%rdx,%r8,1)
   1800055d8:	jne    0x1800055d0
   1800055da:	movq   $0x0,0x20(%rsp)
   1800055e3:	lea    0x2c(%rsp),%r9
   1800055e8:	call   *%rsi
   1800055ea:	mov    0x2c8f(%rip),%rcx        # 0x180008280
   1800055f1:	test   %rcx,%rcx
   1800055f4:	je     0x18000561c
   1800055f6:	movq   $0x0,0x20(%rsp)
   1800055ff:	lea    0x1f30(%rip),%rdx        # 0x180007536
   180005606:	mov    $0xc,%r8d
   18000560c:	lea    0x30(%rsp),%r9
   180005611:	call   *%rsi
   180005613:	mov    0x2c66(%rip),%rcx        # 0x180008280
   18000561a:	jmp    0x18000561e
   18000561c:	xor    %ecx,%ecx
   18000561e:	movw   $0x20,0x2e(%rsp)
   180005625:	mov    %rcx,%rax
   180005628:	xor    %esi,%esi
   18000562a:	jmp    0x18000563b
   18000562c:	nopl   0x0(%rax)
   180005630:	xor    %eax,%eax
   180005632:	inc    %rsi
   180005635:	cmp    $0x40,%rsi
   180005639:	je     0x1800056a3
   18000563b:	movzbl -0x40(%r15,%rsi,1),%edx
   180005641:	mov    %edx,%r8d
   180005644:	shr    $0x4,%r8d
   180005648:	lea    0x1d28(%rip),%r9        # 0x180007377
   18000564f:	movzbl (%r8,%r9,1),%r8d
   180005654:	mov    %r8b,0x2c(%rsp)
   180005659:	and    $0xf,%edx
   18000565c:	movzbl (%rdx,%r9,1),%edx
   180005661:	mov    %dl,0x2d(%rsp)
   180005665:	test   %rax,%rax
   180005668:	je     0x180005630
   18000566a:	mov    $0xffffffff,%r8d
   180005670:	inc    %r8d
   180005673:	cmpb   $0x0,0x2c(%rsp,%r8,1)
   180005679:	jne    0x180005670
   18000567b:	movq   $0x0,0x20(%rsp)
   180005684:	mov    %rax,%rcx
   180005687:	lea    0x2c(%rsp),%rdx
   18000568c:	lea    0x30(%rsp),%r9
   180005691:	call   *0x2369(%rip)        # 0x180007a00
   180005697:	mov    0x2be2(%rip),%rcx        # 0x180008280
   18000569e:	mov    %rcx,%rax
   1800056a1:	jmp    0x180005632
   1800056a3:	test   %rcx,%rcx
   1800056a6:	je     0x1800056d2
   1800056a8:	movq   $0x0,0x20(%rsp)
   1800056b1:	lea    0x1eac(%rip),%rdx        # 0x180007564
   1800056b8:	mov    $0xc,%r8d
   1800056be:	lea    0x30(%rsp),%r9
   1800056c3:	call   *0x2337(%rip)        # 0x180007a00
   1800056c9:	mov    0x2bb0(%rip),%rcx        # 0x180008280
   1800056d0:	jmp    0x1800056d4
   1800056d2:	xor    %ecx,%ecx
   1800056d4:	movw   $0x20,0x2e(%rsp)
   1800056db:	mov    %rcx,%rax
   1800056de:	xor    %esi,%esi
   1800056e0:	jmp    0x1800056fb
   1800056e2:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1800056f0:	xor    %eax,%eax
   1800056f2:	inc    %rsi
   1800056f5:	cmp    $0x60,%rsi
   1800056f9:	je     0x180005763
   1800056fb:	movzbl (%r15,%rsi,1),%edx
   180005700:	mov    %edx,%r8d
   180005703:	shr    $0x4,%r8d
   180005707:	lea    0x1c69(%rip),%r9        # 0x180007377
   18000570e:	movzbl (%r8,%r9,1),%r8d
   180005713:	mov    %r8b,0x2c(%rsp)
   180005718:	and    $0xf,%edx
   18000571b:	movzbl (%rdx,%r9,1),%edx
   180005720:	mov    %dl,0x2d(%rsp)
   180005724:	test   %rax,%rax
   180005727:	je     0x1800056f0
   180005729:	mov    $0xffffffff,%r8d
   18000572f:	nop
   180005730:	inc    %r8d
   180005733:	cmpb   $0x0,0x2c(%rsp,%r8,1)
   180005739:	jne    0x180005730
   18000573b:	movq   $0x0,0x20(%rsp)
   180005744:	mov    %rax,%rcx
   180005747:	lea    0x2c(%rsp),%rdx
   18000574c:	lea    0x30(%rsp),%r9
   180005751:	call   *0x22a9(%rip)        # 0x180007a00
   180005757:	mov    0x2b22(%rip),%rcx        # 0x180008280
   18000575e:	mov    %rcx,%rax
   180005761:	jmp    0x1800056f2
   180005763:	test   %rcx,%rcx
   180005766:	je     0x1800053ff
   18000576c:	movq   $0x0,0x20(%rsp)
   180005775:	lea    0x2060(%rip),%rdx        # 0x1800077dc
   18000577c:	mov    $0x2,%r8d
   180005782:	lea    0x30(%rsp),%r9
   180005787:	call   *0x2273(%rip)        # 0x180007a00
   18000578d:	jmp    0x1800053ff
   180005792:	mov    0x2ae7(%rip),%rcx        # 0x180008280
   180005799:	test   %rcx,%rcx
   18000579c:	je     0x1800057fb
   18000579e:	mov    $0xffffffff,%r8d
   1800057a4:	mov    0x40(%rsp),%rdx
   1800057a9:	nopl   0x0(%rax)
   1800057b0:	inc    %r8d
   1800057b3:	cmpb   $0x0,(%rdx,%r8,1)
   1800057b8:	jne    0x1800057b0
   1800057ba:	movq   $0x0,0x20(%rsp)
   1800057c3:	lea    0x30(%rsp),%r9
   1800057c8:	call   *0x2232(%rip)        # 0x180007a00
   1800057ce:	mov    0x2aab(%rip),%rcx        # 0x180008280
   1800057d5:	test   %rcx,%rcx
   1800057d8:	je     0x1800057fb
   1800057da:	movq   $0x0,0x20(%rsp)
   1800057e3:	lea    0x1cae(%rip),%rdx        # 0x180007498
   1800057ea:	lea    0x30(%rsp),%r9
   1800057ef:	mov    $0x7,%r8d
   1800057f5:	call   *0x2205(%rip)        # 0x180007a00
   1800057fb:	movb   $0x0,0x3f(%rsp)
   180005800:	test   %r14d,%r14d
   180005803:	je     0x180005855
   180005805:	movabs $0xf00000000,%rax
   18000580f:	lea    0x3e(%rsp),%rcx
   180005814:	mov    $0xcccccccd,%edx
   180005819:	nopl   0x0(%rax)
   180005820:	mov    %r14d,%r8d
   180005823:	imul   %rdx,%r8
   180005827:	shr    $0x23,%r8
   18000582b:	lea    (%r8,%r8,1),%r9d
   18000582f:	lea    (%r9,%r9,4),%r9d
   180005833:	mov    %r14d,%r10d
   180005836:	sub    %r9d,%r10d
   180005839:	or     $0x30,%r10b
   18000583d:	mov    %r10b,(%rcx)
   180005840:	add    %rsi,%rax
   180005843:	dec    %rcx
   180005846:	cmp    $0x9,%r14d
   18000584a:	mov    %r8d,%r14d
   18000584d:	ja     0x180005820
   18000584f:	sar    $0x20,%rax
   180005853:	jmp    0x18000585f
   180005855:	movb   $0x30,0x3e(%rsp)
   18000585a:	mov    $0xe,%eax
   18000585f:	mov    0x2a1a(%rip),%rcx        # 0x180008280
   180005866:	test   %rcx,%rcx
   180005869:	je     0x1800058cb
   18000586b:	lea    (%rsp,%rax,1),%rdx
   18000586f:	add    $0x30,%rdx
   180005873:	mov    $0xffffffff,%r8d
   180005879:	nopl   0x0(%rax)
   180005880:	inc    %r8d
   180005883:	cmpb   $0x0,(%rdx,%r8,1)
   180005888:	jne    0x180005880
   18000588a:	movq   $0x0,0x20(%rsp)
   180005893:	lea    0x2c(%rsp),%r9
   180005898:	call   *0x2162(%rip)        # 0x180007a00
   18000589e:	mov    0x29db(%rip),%rcx        # 0x180008280
   1800058a5:	test   %rcx,%rcx
   1800058a8:	je     0x1800058cb
   1800058aa:	movq   $0x0,0x20(%rsp)
   1800058b3:	lea    0x1f22(%rip),%rdx        # 0x1800077dc
   1800058ba:	lea    0x30(%rsp),%r9
   1800058bf:	mov    $0x2,%r8d
   1800058c5:	call   *0x2135(%rip)        # 0x180007a00
   1800058cb:	add    $0x78,%rsp
   1800058cf:	pop    %rbx
   1800058d0:	pop    %rbp
   1800058d1:	pop    %rdi
   1800058d2:	pop    %rsi
   1800058d3:	pop    %r12
   1800058d5:	pop    %r13
   1800058d7:	pop    %r14
   1800058d9:	pop    %r15
   1800058db:	ret    
   1800058dc:	nopl   0x0(%rax)
   1800058e0:	push   %r15
   1800058e2:	push   %r14
   1800058e4:	push   %rsi
   1800058e5:	push   %rdi
   1800058e6:	push   %rbx
   1800058e7:	sub    $0x20,%rsp
   1800058eb:	mov    %ecx,%esi
   1800058ed:	mov    $0x3c,%ebx
   1800058f2:	mov    0x2127(%rip),%r14        # 0x180007a20
   1800058f9:	mov    0x20d8(%rip),%r15        # 0x1800079d8
   180005900:	mov    $0x11,%ecx
   180005905:	call   *%r14
   180005908:	mov    %eax,%edi
   18000590a:	mov    $0x10,%ecx
   18000590f:	call   *%r14
   180005912:	or     %di,%ax
   180005915:	jns    0x180005923
   180005917:	mov    $0x32,%ecx
   18000591c:	call   *%r15
   18000591f:	dec    %ebx
   180005921:	jne    0x180005900
   180005923:	mov    $0x1388,%ecx
   180005928:	call   *%r15
   18000592b:	mov    0x77ee6(%rip),%rcx        # 0x18007d818
   180005932:	mov    0x2107(%rip),%rdi        # 0x180007a40
   180005939:	mov    $0xff3a,%r8d
   18000593f:	mov    $0x57503031,%r9d
   180005945:	mov    %esi,%edx
   180005947:	call   *%rdi
   180005949:	mov    $0x96,%ecx
   18000594e:	call   *%r15
   180005951:	mov    0x77ec0(%rip),%rcx        # 0x18007d818
   180005958:	mov    $0xff3a,%r8d
   18000595e:	mov    $0x57503031,%r9d
   180005964:	mov    %esi,%edx
   180005966:	call   *%rdi
   180005968:	mov    $0x96,%ecx
   18000596d:	call   *%r15
   180005970:	mov    0x77ea1(%rip),%rcx        # 0x18007d818
   180005977:	mov    $0xff3a,%r8d
   18000597d:	mov    $0x57503031,%r9d
   180005983:	mov    %esi,%edx
   180005985:	call   *%rdi
   180005987:	mov    $0x96,%ecx
   18000598c:	mov    %r15,%rax
   18000598f:	add    $0x20,%rsp
   180005993:	pop    %rbx
   180005994:	pop    %rdi
   180005995:	pop    %rsi
   180005996:	pop    %r14
   180005998:	pop    %r15
   18000599a:	rex.W jmp *%rax
   18000599d:	nopl   (%rax)
   1800059a0:	incl   0x77dfe(%rip)        # 0x18007d7a4
   1800059a6:	cmpl   $0x0,0x77be3(%rip)        # 0x18007d590
   1800059ad:	je     0x1800059b5
   1800059af:	mov    $0x1,%eax
   1800059b4:	ret    
   1800059b5:	rex.W jmp *0x77dfc(%rip)        # 0x18007d7b8
   1800059bc:	nopl   0x0(%rax)
   1800059c0:	incl   0x77de2(%rip)        # 0x18007d7a8
   1800059c6:	cmpl   $0x0,0x77bc3(%rip)        # 0x18007d590
   1800059cd:	je     0x1800059ec
   1800059cf:	test   %rdx,%rdx
   1800059d2:	je     0x1800059da
   1800059d4:	movl   $0x19,(%rdx)
   1800059da:	test   %r8,%r8
   1800059dd:	je     0x1800059e6
   1800059df:	movl   $0x0,(%r8)
   1800059e6:	mov    $0x1,%eax
   1800059eb:	ret    
   1800059ec:	mov    0x77dcd(%rip),%rax        # 0x18007d7c0
   1800059f3:	rex.W jmp *%rax
   1800059f6:	cs nopw 0x0(%rax,%rax,1)
   180005a00:	sub    $0x28,%rsp
   180005a04:	incl   0x77da2(%rip)        # 0x18007d7ac
   180005a0a:	call   *0x77db8(%rip)        # 0x18007d7c8
   180005a10:	test   %rax,%rax
   180005a13:	je     0x180005a1a
   180005a15:	add    $0x28,%rsp
   180005a19:	ret    
   180005a1a:	xor    %eax,%eax
   180005a1c:	cmpl   $0x0,0x77b6d(%rip)        # 0x18007d590
   180005a23:	setne  %al
   180005a26:	add    $0x28,%rsp
   180005a2a:	ret    
   180005a2b:	nopl   0x0(%rax,%rax,1)
   180005a30:	incl   0x77d7a(%rip)        # 0x18007d7b0
   180005a36:	lea    0x7f(%rcx),%eax
   180005a39:	cmp    $0x1f,%al
   180005a3b:	setb   %al
   180005a3e:	add    $0x20,%cl
   180005a41:	cmp    $0x1d,%cl
   180005a44:	setb   %cl
   180005a47:	or     %al,%cl
   180005a49:	movzbl %cl,%eax
   180005a4c:	ret    
   180005a4d:	nopl   (%rax)
   180005a50:	incl   0x77d5a(%rip)        # 0x18007d7b0
   180005a56:	test   %ecx,%ecx
   180005a58:	je     0x180005a67
   180005a5a:	cmp    $0x3a4,%ecx
   180005a60:	je     0x180005a67
   180005a62:	cmp    $0x3,%ecx
   180005a65:	jne    0x180005a7e
   180005a67:	lea    0x7f(%rdx),%eax
   180005a6a:	cmp    $0x1f,%al
   180005a6c:	setb   %al
   180005a6f:	add    $0x20,%dl
   180005a72:	cmp    $0x1d,%dl
   180005a75:	setb   %cl
   180005a78:	or     %al,%cl
   180005a7a:	movzbl %cl,%eax
   180005a7d:	ret    
   180005a7e:	mov    0x77d53(%rip),%rax        # 0x18007d7d8
   180005a85:	rex.W jmp *%rax
   180005a88:	nopl   0x0(%rax,%rax,1)
   180005a90:	incl   0x77d1e(%rip)        # 0x18007d7b4
   180005a96:	cmpl   $0x0,0x77af3(%rip)        # 0x18007d590
   180005a9d:	je     0x180005aa5
   180005a9f:	mov    $0x4110411,%eax
   180005aa4:	ret    
   180005aa5:	rex.W jmp *0x77d34(%rip)        # 0x18007d7e0
   180005aac:	nopl   0x0(%rax)
   180005ab0:	mov    0x77afa(%rip),%eax        # 0x18007d5b0
   180005ab6:	cmp    $0x3f,%eax
   180005ab9:	ja     0x180005ae0
   180005abb:	movzwl %dx,%eax
   180005abe:	or     $0x10000,%eax
   180005ac3:	mov    0x77ae6(%rip),%r9d        # 0x18007d5b0
   180005aca:	lea    0x1(%r9),%r10d
   180005ace:	mov    %r10d,0x77adb(%rip)        # 0x18007d5b0
   180005ad5:	lea    0x77ae4(%rip),%r10        # 0x18007d5c0
   180005adc:	mov    %eax,(%r10,%r9,4)
   180005ae0:	test   $0x2,%dl
   180005ae3:	jne    0x180005afd
   180005ae5:	test   $0x1,%dl
   180005ae8:	je     0x180005b06
   180005aea:	cmpl   $0x0,0x77d07(%rip)        # 0x18007d7f8
   180005af1:	je     0x180005b06
   180005af3:	mov    $0x1,%eax
   180005af8:	xor    %r9d,%r9d
   180005afb:	jmp    0x180005b1b
   180005afd:	cmpl   $0x0,0x77cf4(%rip)        # 0x18007d7f8
   180005b04:	je     0x180005b10
   180005b06:	mov    0x77cdb(%rip),%rax        # 0x18007d7e8
   180005b0d:	rex.W jmp *%rax
   180005b10:	jmp    0x180005af3
   180005b15:	mov    $0x1,%r9d
   180005b1b:	mov    %r9d,0x77cd6(%rip)        # 0x18007d7f8
   180005b22:	movl   $0x0,0x77cd0(%rip)        # 0x18007d7fc
   180005b2c:	mov    %eax,0x77c1e(%rip)        # 0x18007d750
   180005b32:	mov    0x77caf(%rip),%rax        # 0x18007d7e8
   180005b39:	rex.W jmp *%rax
   180005b3c:	nopl   0x0(%rax)
   180005b40:	push   %r15
   180005b42:	push   %r14
   180005b44:	push   %rsi
   180005b45:	push   %rdi
   180005b46:	push   %rbp
   180005b47:	push   %rbx
   180005b48:	mov    0x77a62(%rip),%eax        # 0x18007d5b0
   180005b4e:	cmp    $0x3f,%eax
   180005b51:	ja     0x180005b7a
   180005b53:	mov    %edx,%eax
   180005b55:	and    $0x1,%eax
   180005b58:	or     $0x20000,%eax
   180005b5d:	mov    0x77a4c(%rip),%r8d        # 0x18007d5b0
   180005b64:	lea    0x1(%r8),%r9d
   180005b68:	mov    %r9d,0x77a41(%rip)        # 0x18007d5b0
   180005b6f:	lea    0x77a4a(%rip),%r9        # 0x18007d5c0
   180005b76:	mov    %eax,(%r9,%r8,4)
   180005b7a:	test   %edx,%edx
   180005b7c:	je     0x180005ba7
   180005b7e:	movl   $0x1,0x77c78(%rip)        # 0x18007d800
   180005b88:	lea    0x77c75(%rip),%rax        # 0x18007d804
   180005b8f:	movl   $0x0,(%rax)
   180005b95:	mov    0x77c54(%rip),%rax        # 0x18007d7f0
   180005b9c:	pop    %rbx
   180005b9d:	pop    %rbp
   180005b9e:	pop    %rdi
   180005b9f:	pop    %rsi
   180005ba0:	pop    %r14
   180005ba2:	pop    %r15
   180005ba4:	rex.W jmp *%rax
   180005ba7:	lea    0x77c52(%rip),%rax        # 0x18007d800
   180005bae:	cmpl   $0x0,0x77c4b(%rip)        # 0x18007d800
   180005bb5:	je     0x180005b8f
   180005bb7:	mov    0x77c46(%rip),%r8d        # 0x18007d804
   180005bbe:	cmp    $0x3,%r8d
   180005bc2:	jl     0x180005b8f
   180005bc4:	xor    %r8d,%r8d
   180005bc7:	cmpl   $0x0,0x77b06(%rip)        # 0x18007d6d4
   180005bce:	mov    $0x0,%r9d
   180005bd4:	je     0x180005c2b
   180005bd6:	cmpl   $0x0,0x77b0f(%rip)        # 0x18007d6ec
   180005bdd:	je     0x180005c0d
   180005bdf:	cmpl   $0x0,0x77b1e(%rip)        # 0x18007d704
   180005be6:	je     0x180005c15
   180005be8:	cmpl   $0x0,0x77b2d(%rip)        # 0x18007d71c
   180005bef:	je     0x180005c1d
   180005bf1:	cmpl   $0x0,0x77b3c(%rip)        # 0x18007d734
   180005bf8:	je     0x180005c25
   180005bfa:	xor    %r9d,%r9d
   180005bfd:	cmp    0x77b48(%rip),%r9d        # 0x18007d74c
   180005c04:	sbb    %r9d,%r9d
   180005c07:	or     $0x5,%r9d
   180005c0b:	jmp    0x180005c2b
   180005c0d:	mov    $0x1,%r9d
   180005c13:	jmp    0x180005c2b
   180005c15:	mov    $0x2,%r9d
   180005c1b:	jmp    0x180005c2b
   180005c1d:	mov    $0x3,%r9d
   180005c23:	jmp    0x180005c2b
   180005c25:	mov    $0x4,%r9d
   180005c2b:	test   %r9d,%r9d
   180005c2e:	cmovle %r8d,%r9d
   180005c32:	movzbl 0x77bce(%rip),%r10d        # 0x18007d808
   180005c3a:	lea    -0x41(%r10),%r11d
   180005c3e:	lea    -0x61(%r10),%esi
   180005c42:	cmp    $0x1a,%sil
   180005c46:	mov    $0x0,%edi
   180005c4b:	adc    $0x821f,%edi
   180005c51:	cmp    $0x1a,%r11b
   180005c55:	mov    $0x821f,%r11d
   180005c5b:	cmovb  %r11d,%edi
   180005c5f:	add    %r10d,%edi
   180005c62:	rol    $0x8,%di
   180005c66:	movzbl 0x77b9c(%rip),%esi        # 0x18007d809
   180005c6d:	lea    -0x61(%rsi),%ebx
   180005c70:	cmp    $0x1a,%bl
   180005c73:	mov    $0x0,%ebp
   180005c78:	adc    $0x821f,%ebp
   180005c7e:	lea    -0x41(%rsi),%ebx
   180005c81:	cmp    $0x1a,%bl
   180005c84:	cmovb  %r11d,%ebp
   180005c88:	add    %esi,%ebp
   180005c8a:	rol    $0x8,%bp
   180005c8e:	movzbl 0x77b75(%rip),%ebx        # 0x18007d80a
   180005c95:	lea    -0x41(%rbx),%r14d
   180005c99:	lea    -0x61(%rbx),%r15d
   180005c9d:	cmp    $0x1a,%r15b
   180005ca1:	mov    $0x0,%r15d
   180005ca7:	adc    $0x821f,%r15d
   180005cae:	cmp    $0x1a,%r14b
   180005cb2:	lea    (%r9,%r9,2),%r9
   180005cb6:	mov    %r9d,%r9d
   180005cb9:	cmovb  %r11d,%r15d
   180005cbd:	lea    0x779fc(%rip),%r11        # 0x18007d6c0
   180005cc4:	mov    %di,(%r11,%r9,8)
   180005cc9:	add    %ebx,%r15d
   180005ccc:	rol    $0x8,%r15w
   180005cd1:	mov    %bp,0x2(%r11,%r9,8)
   180005cd7:	mov    %r15w,0x4(%r11,%r9,8)
   180005cdd:	cmpl   $0x0,0x77b20(%rip)        # 0x18007d804
   180005ce4:	cmovle %r8d,%r10d
   180005ce8:	mov    %r10b,0x6(%r11,%r9,8)
   180005ced:	mov    0x77b10(%rip),%r10d        # 0x18007d804
   180005cf4:	cmp    $0x2,%r10d
   180005cf8:	cmovl  %r8d,%esi
   180005cfc:	mov    %sil,0x7(%r11,%r9,8)
   180005d01:	mov    0x77afc(%rip),%r10d        # 0x18007d804
   180005d08:	cmp    $0x3,%r10d
   180005d0c:	cmovl  %r8d,%ebx
   180005d10:	mov    %bl,0x8(%r11,%r9,8)
   180005d15:	mov    0x77ae8(%rip),%r10d        # 0x18007d804
   180005d1c:	cmp    $0x4,%r10d
   180005d20:	movzbl 0x77ae3(%rip),%r10d        # 0x18007d80b
   180005d28:	cmovl  %r8d,%r10d
   180005d2c:	mov    %r10b,0x9(%r11,%r9,8)
   180005d31:	mov    0x77acc(%rip),%r10d        # 0x18007d804
   180005d38:	cmp    $0x5,%r10d
   180005d3c:	movzbl 0x77ac8(%rip),%r10d        # 0x18007d80c
   180005d44:	cmovl  %r8d,%r10d
   180005d48:	mov    %r10b,0xa(%r11,%r9,8)
   180005d4d:	mov    0x77ab0(%rip),%r10d        # 0x18007d804
   180005d54:	cmp    $0x6,%r10d
   180005d58:	movzbl 0x77aad(%rip),%r10d        # 0x18007d80d
   180005d60:	cmovl  %r8d,%r10d
   180005d64:	mov    %r10b,0xb(%r11,%r9,8)
   180005d69:	mov    0x77a94(%rip),%r10d        # 0x18007d804
   180005d70:	cmp    $0x7,%r10d
   180005d74:	movzbl 0x77a92(%rip),%r10d        # 0x18007d80e
   180005d7c:	cmovl  %r8d,%r10d
   180005d80:	mov    %r10b,0xc(%r11,%r9,8)
   180005d85:	mov    0x77a78(%rip),%r10d        # 0x18007d804
   180005d8c:	cmp    $0x8,%r10d
   180005d90:	movzbl 0x77a77(%rip),%r10d        # 0x18007d80f
   180005d98:	cmovl  %r8d,%r10d
   180005d9c:	mov    %r10b,0xd(%r11,%r9,8)
   180005da1:	movb   $0x0,0xe(%r11,%r9,8)
   180005da7:	mov    0x77a56(%rip),%r8d        # 0x18007d804
   180005dae:	mov    %r8d,0x10(%r11,%r9,8)
   180005db3:	movl   $0x1,0x14(%r11,%r9,8)
   180005dbc:	jmp    0x180005b8f
   180005dc1:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005dd0:	push   %r15
   180005dd2:	push   %r14
   180005dd4:	push   %r13
   180005dd6:	push   %r12
   180005dd8:	push   %rsi
   180005dd9:	push   %rdi
   180005dda:	push   %rbp
   180005ddb:	push   %rbx
   180005ddc:	sub    $0x28,%rsp
   180005de0:	cmpl   $0x0,0x24a1(%rip)        # 0x180008288
   180005de7:	je     0x180006027
   180005ded:	xor    %ebx,%ebx
   180005def:	lea    0x15d1a(%rip),%r15        # 0x18001bb10
   180005df6:	lea    0x24(%rsp),%rsi
   180005dfb:	mov    0x1bee(%rip),%r12        # 0x1800079f0
   180005e02:	jmp    0x180005e30
   180005e04:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005e10:	mov    0x24(%rsp),%r8d
   180005e15:	mov    %rdi,%rcx
   180005e18:	mov    %rsi,%r9
   180005e1b:	call   *%r12
   180005e1e:	inc    %rbx
   180005e21:	mov    0x2461(%rip),%eax        # 0x180008288
   180005e27:	cmp    %rax,%rbx
   180005e2a:	jae    0x180006027
   180005e30:	xor    %r14d,%r14d
   180005e33:	cmpl   $0x0,0x77a06(%rip)        # 0x18007d840
   180005e3a:	je     0x180005e54
   180005e3c:	mov    0x77a02(%rip),%eax        # 0x18007d844
   180005e42:	cmp    %rax,%rbx
   180005e45:	jb     0x180005e54
   180005e47:	mov    0x779ff(%rip),%eax        # 0x18007d84c
   180005e4d:	cmp    %rax,%rbx
   180005e50:	setb   %r14b
   180005e54:	mov    0x21c5(%rip),%r13        # 0x180008020
   180005e5b:	lea    0x242e(%rip),%rax        # 0x180008290
   180005e62:	mov    (%rax,%rbx,4),%ebp
   180005e65:	mov    %r13,%rdi
   180005e68:	add    %rbp,%rdi
   180005e6b:	mov    (%r15,%rbx,4),%edx
   180005e6f:	mov    %rdi,%rcx
   180005e72:	mov    $0x4,%r8d
   180005e78:	mov    %rsi,%r9
   180005e7b:	call   *%r12
   180005e7e:	mov    (%r15,%rbx,4),%edx
   180005e82:	test   %rdx,%rdx
   180005e85:	je     0x180005e10
   180005e87:	test   %r14b,%r14b
   180005e8a:	lea    0x294ff(%rip),%rax        # 0x18002f390
   180005e91:	lea    0x505f8(%rip),%rcx        # 0x180056490
   180005e98:	cmovne %rcx,%rax
   180005e9c:	mov    (%rax,%rbx,8),%r8
   180005ea0:	cmp    $0x8,%edx
   180005ea3:	jb     0x180005eb8
   180005ea5:	mov    %r13,%rax
   180005ea8:	add    %rbp,%rax
   180005eab:	sub    %r8,%rax
   180005eae:	cmp    $0x20,%rax
   180005eb2:	jae    0x180005f74
   180005eb8:	mov    %rdi,%rax
   180005ebb:	mov    %r8,%rcx
   180005ebe:	mov    %rdx,%r9
   180005ec1:	mov    %r9,%r8
   180005ec4:	and    $0x7,%r8
   180005ec8:	je     0x180005ef0
   180005eca:	xor    %r10d,%r10d
   180005ecd:	nopl   (%rax)
   180005ed0:	movzbl (%rcx,%r10,1),%r11d
   180005ed5:	mov    %r11b,(%rax,%r10,1)
   180005ed9:	inc    %r10
   180005edc:	cmp    %r10,%r8
   180005edf:	jne    0x180005ed0
   180005ee1:	add    %r10,%rax
   180005ee4:	add    %r10,%rcx
   180005ee7:	mov    %r9,%r8
   180005eea:	sub    %r10,%r8
   180005eed:	jmp    0x180005ef3
   180005eef:	nop
   180005ef0:	mov    %r9,%r8
   180005ef3:	dec    %r9
   180005ef6:	cmp    $0x7,%r9
   180005efa:	jb     0x180005e10
   180005f00:	xor    %r9d,%r9d
   180005f03:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005f10:	movzbl (%rcx,%r9,1),%r10d
   180005f15:	mov    %r10b,(%rax,%r9,1)
   180005f19:	movzbl 0x1(%rcx,%r9,1),%r10d
   180005f1f:	mov    %r10b,0x1(%rax,%r9,1)
   180005f24:	movzbl 0x2(%rcx,%r9,1),%r10d
   180005f2a:	mov    %r10b,0x2(%rax,%r9,1)
   180005f2f:	movzbl 0x3(%rcx,%r9,1),%r10d
   180005f35:	mov    %r10b,0x3(%rax,%r9,1)
   180005f3a:	movzbl 0x4(%rcx,%r9,1),%r10d
   180005f40:	mov    %r10b,0x4(%rax,%r9,1)
   180005f45:	movzbl 0x5(%rcx,%r9,1),%r10d
   180005f4b:	mov    %r10b,0x5(%rax,%r9,1)
   180005f50:	movzbl 0x6(%rcx,%r9,1),%r10d
   180005f56:	mov    %r10b,0x6(%rax,%r9,1)
   180005f5b:	movzbl 0x7(%rcx,%r9,1),%r10d
   180005f61:	mov    %r10b,0x7(%rax,%r9,1)
   180005f66:	add    $0x8,%r9
   180005f6a:	cmp    %r9,%r8
   180005f6d:	jne    0x180005f10
   180005f6f:	jmp    0x180005e10
   180005f74:	cmp    $0x20,%edx
   180005f77:	jae    0x180005f7e
   180005f79:	xor    %r10d,%r10d
   180005f7c:	jmp    0x180005fcb
   180005f7e:	mov    %edx,%r10d
   180005f81:	and    $0xffffffe0,%r10d
   180005f85:	lea    0x10(,%rbp,1),%rax
   180005f8d:	add    %r13,%rax
   180005f90:	xor    %ecx,%ecx
   180005f92:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005fa0:	movups (%r8,%rcx,1),%xmm0
   180005fa5:	movups 0x10(%r8,%rcx,1),%xmm1
   180005fab:	movups %xmm0,-0x10(%rax,%rcx,1)
   180005fb0:	movups %xmm1,(%rax,%rcx,1)
   180005fb4:	add    $0x20,%rcx
   180005fb8:	cmp    %rcx,%r10
   180005fbb:	jne    0x180005fa0
   180005fbd:	cmp    %rdx,%r10
   180005fc0:	je     0x180005e10
   180005fc6:	test   $0x18,%dl
   180005fc9:	je     0x18000600f
   180005fcb:	mov    %edx,%r11d
   180005fce:	and    $0xfffffff8,%r11d
   180005fd2:	lea    (%rdi,%r11,1),%rax
   180005fd6:	lea    (%r8,%r11,1),%rcx
   180005fda:	mov    %edx,%r9d
   180005fdd:	and    $0x7,%r9d
   180005fe1:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   180005ff0:	mov    (%r8,%r10,1),%r14
   180005ff4:	mov    %r14,(%rdi,%r10,1)
   180005ff8:	add    $0x8,%r10
   180005ffc:	cmp    %r10,%r11
   180005fff:	jne    0x180005ff0
   180006001:	cmp    %rdx,%r11
   180006004:	je     0x180005e10
   18000600a:	jmp    0x180005ec1
   18000600f:	mov    %edx,%r9d
   180006012:	and    $0x1f,%r9d
   180006016:	add    %r10,%r8
   180006019:	add    %rdi,%r10
   18000601c:	mov    %r10,%rax
   18000601f:	mov    %r8,%rcx
   180006022:	jmp    0x180005ec1
   180006027:	add    $0x28,%rsp
   18000602b:	pop    %rbx
   18000602c:	pop    %rbp
   18000602d:	pop    %rdi
   18000602e:	pop    %rsi
   18000602f:	pop    %r12
   180006031:	pop    %r13
   180006033:	pop    %r14
   180006035:	pop    %r15
   180006037:	ret    
   180006038:	nopl   0x0(%rax,%rax,1)
   180006040:	push   %rsi
   180006041:	push   %rdi
   180006042:	sub    $0x48,%rsp
   180006046:	mov    %rcx,%rdx
   180006049:	mov    0x2230(%rip),%rcx        # 0x180008280
   180006050:	test   %rcx,%rcx
   180006053:	je     0x1800060ab
   180006055:	mov    $0xffffffff,%r8d
   18000605b:	nopl   0x0(%rax,%rax,1)
   180006060:	inc    %r8d
   180006063:	cmpb   $0x0,(%rdx,%r8,1)
   180006068:	jne    0x180006060
   18000606a:	movq   $0x0,0x20(%rsp)
   180006073:	lea    0x30(%rsp),%r9
   180006078:	call   *0x1982(%rip)        # 0x180007a00
   18000607e:	mov    0x21fb(%rip),%rcx        # 0x180008280
   180006085:	test   %rcx,%rcx
   180006088:	je     0x1800060ab
   18000608a:	movq   $0x0,0x20(%rsp)
   180006093:	lea    0x1381(%rip),%rdx        # 0x18000741b
   18000609a:	lea    0x30(%rsp),%r9
   18000609f:	mov    $0xa,%r8d
   1800060a5:	call   *0x1955(%rip)        # 0x180007a00
   1800060ab:	movabs $0xffffffff00000000,%rdi
   1800060b5:	movabs $0xf00000000,%rsi
   1800060bf:	mov    0x7777f(%rip),%ecx        # 0x18007d844
   1800060c5:	movb   $0x0,0x3f(%rsp)
   1800060ca:	test   %ecx,%ecx
   1800060cc:	je     0x180006114
   1800060ce:	lea    0x3e(%rsp),%rdx
   1800060d3:	mov    $0xcccccccd,%r8d
   1800060d9:	mov    %rsi,%rax
   1800060dc:	nopl   0x0(%rax)
   1800060e0:	mov    %ecx,%r9d
   1800060e3:	imul   %r8,%r9
   1800060e7:	shr    $0x23,%r9
   1800060eb:	lea    (%r9,%r9,1),%r10d
   1800060ef:	lea    (%r10,%r10,4),%r10d
   1800060f3:	mov    %ecx,%r11d
   1800060f6:	sub    %r10d,%r11d
   1800060f9:	or     $0x30,%r11b
   1800060fd:	mov    %r11b,(%rdx)
   180006100:	add    %rdi,%rax
   180006103:	dec    %rdx
   180006106:	cmp    $0x9,%ecx
   180006109:	mov    %r9d,%ecx
   18000610c:	ja     0x1800060e0
   18000610e:	sar    $0x20,%rax
   180006112:	jmp    0x18000611e
   180006114:	movb   $0x30,0x3e(%rsp)
   180006119:	mov    $0xe,%eax
   18000611e:	mov    0x215b(%rip),%rcx        # 0x180008280
   180006125:	test   %rcx,%rcx
   180006128:	je     0x18000618b
   18000612a:	lea    (%rsp,%rax,1),%rdx
   18000612e:	add    $0x30,%rdx
   180006132:	mov    $0xffffffff,%r8d
   180006138:	nopl   0x0(%rax,%rax,1)
   180006140:	inc    %r8d
   180006143:	cmpb   $0x0,(%rdx,%r8,1)
   180006148:	jne    0x180006140
   18000614a:	movq   $0x0,0x20(%rsp)
   180006153:	lea    0x44(%rsp),%r9
   180006158:	call   *0x18a2(%rip)        # 0x180007a00
   18000615e:	mov    0x211b(%rip),%rcx        # 0x180008280
   180006165:	test   %rcx,%rcx
   180006168:	je     0x18000618b
   18000616a:	movq   $0x0,0x20(%rsp)
   180006173:	lea    0x1261(%rip),%rdx        # 0x1800073db
   18000617a:	lea    0x30(%rsp),%r9
   18000617f:	mov    $0x2,%r8d
   180006185:	call   *0x1875(%rip)        # 0x180007a00
   18000618b:	mov    0x776b7(%rip),%ecx        # 0x18007d848
   180006191:	movb   $0x0,0x3f(%rsp)
   180006196:	test   %ecx,%ecx
   180006198:	je     0x1800061e4
   18000619a:	lea    0x3e(%rsp),%rdx
   18000619f:	mov    $0xcccccccd,%r8d
   1800061a5:	mov    %rsi,%rax
   1800061a8:	nopl   0x0(%rax,%rax,1)
   1800061b0:	mov    %ecx,%r9d
   1800061b3:	imul   %r8,%r9
   1800061b7:	shr    $0x23,%r9
   1800061bb:	lea    (%r9,%r9,1),%r10d
   1800061bf:	lea    (%r10,%r10,4),%r10d
   1800061c3:	mov    %ecx,%r11d
   1800061c6:	sub    %r10d,%r11d
   1800061c9:	or     $0x30,%r11b
   1800061cd:	mov    %r11b,(%rdx)
   1800061d0:	add    %rdi,%rax
   1800061d3:	dec    %rdx
   1800061d6:	cmp    $0x9,%ecx
   1800061d9:	mov    %r9d,%ecx
   1800061dc:	ja     0x1800061b0
   1800061de:	sar    $0x20,%rax
   1800061e2:	jmp    0x1800061ee
   1800061e4:	movb   $0x30,0x3e(%rsp)
   1800061e9:	mov    $0xe,%eax
   1800061ee:	mov    0x208b(%rip),%rcx        # 0x180008280
   1800061f5:	test   %rcx,%rcx
   1800061f8:	je     0x18000625b
   1800061fa:	lea    (%rsp,%rax,1),%rdx
   1800061fe:	add    $0x30,%rdx
   180006202:	mov    $0xffffffff,%r8d
   180006208:	nopl   0x0(%rax,%rax,1)
   180006210:	inc    %r8d
   180006213:	cmpb   $0x0,(%rdx,%r8,1)
   180006218:	jne    0x180006210
   18000621a:	movq   $0x0,0x20(%rsp)
   180006223:	lea    0x44(%rsp),%r9
   180006228:	call   *0x17d2(%rip)        # 0x180007a00
   18000622e:	mov    0x204b(%rip),%rcx        # 0x180008280
   180006235:	test   %rcx,%rcx
   180006238:	je     0x18000625b
   18000623a:	movq   $0x0,0x20(%rsp)
   180006243:	lea    0x1187(%rip),%rdx        # 0x1800073d1
   18000624a:	lea    0x30(%rsp),%r9
   18000624f:	mov    $0xc,%r8d
   180006255:	call   *0x17a5(%rip)        # 0x180007a00
   18000625b:	mov    0x775eb(%rip),%eax        # 0x18007d84c
   180006261:	movb   $0x0,0x3f(%rsp)
   180006266:	test   %eax,%eax
   180006268:	je     0x1800062b4
   18000626a:	lea    0x3e(%rsp),%rcx
   18000626f:	mov    $0xcccccccd,%edx
   180006274:	data16 data16 cs nopw 0x0(%rax,%rax,1)
   180006280:	mov    %eax,%r8d
   180006283:	imul   %rdx,%r8
   180006287:	shr    $0x23,%r8
   18000628b:	lea    (%r8,%r8,1),%r9d
   18000628f:	lea    (%r9,%r9,4),%r9d
   180006293:	mov    %eax,%r10d
   180006296:	sub    %r9d,%r10d
   180006299:	or     $0x30,%r10b
   18000629d:	mov    %r10b,(%rcx)
   1800062a0:	add    %rdi,%rsi
   1800062a3:	dec    %rcx
   1800062a6:	cmp    $0x9,%eax
   1800062a9:	mov    %r8d,%eax
   1800062ac:	ja     0x180006280
   1800062ae:	sar    $0x20,%rsi
   1800062b2:	jmp    0x1800062be
   1800062b4:	movb   $0x30,0x3e(%rsp)
   1800062b9:	mov    $0xe,%esi
   1800062be:	mov    0x1fbb(%rip),%rcx        # 0x180008280
   1800062c5:	test   %rcx,%rcx
   1800062c8:	je     0x18000632b
   1800062ca:	lea    (%rsp,%rsi,1),%rdx
   1800062ce:	add    $0x30,%rdx
   1800062d2:	mov    $0xffffffff,%r8d
   1800062d8:	nopl   0x0(%rax,%rax,1)
   1800062e0:	inc    %r8d
   1800062e3:	cmpb   $0x0,(%rdx,%r8,1)
   1800062e8:	jne    0x1800062e0
   1800062ea:	movq   $0x0,0x20(%rsp)
   1800062f3:	lea    0x44(%rsp),%r9
   1800062f8:	call   *0x1702(%rip)        # 0x180007a00
   1800062fe:	mov    0x1f7b(%rip),%rcx        # 0x180008280
   180006305:	test   %rcx,%rcx
   180006308:	je     0x18000632b
   18000630a:	movq   $0x0,0x20(%rsp)
   180006313:	lea    0x14c2(%rip),%rdx        # 0x1800077dc
   18000631a:	lea    0x30(%rsp),%r9
   18000631f:	mov    $0x2,%r8d
   180006325:	call   *0x16d5(%rip)        # 0x180007a00
   18000632b:	add    $0x48,%rsp
   18000632f:	pop    %rdi
   180006330:	pop    %rsi
   180006331:	ret    

Disassembly of section .wpname:

000000018007f000 <.wpname>:
   18007f000:	push   %r15
   18007f002:	lea    -0x7f009(%rip),%r15        # 0x180000000
   18007f009:	push   %rbx
   18007f00a:	push   %rsi
   18007f00b:	push   %rdi
   18007f00c:	push   %r12
   18007f00e:	push   %r13
   18007f010:	push   %r14
   18007f012:	sub    $0x60,%rsp
   18007f016:	lea    0x15b0(%r15),%rax
   18007f01d:	call   *%rax
   18007f01f:	xor    %ecx,%ecx
   18007f021:	call   *0x79a0(%r15)
   18007f028:	test   %rax,%rax
   18007f02b:	je     0x18007f48a
   18007f031:	mov    %rax,%rbx
   18007f034:	cmpl   $0xba4614e8,0x49b107(%rbx)
   18007f03e:	jne    0x18007f48a
   18007f044:	cmpb   $0xff,0x49b10b(%rbx)
   18007f04b:	jne    0x18007f48a
   18007f051:	cmpl   $0xba45b0e8,0x49b13b(%rbx)
   18007f05b:	jne    0x18007f48a
   18007f061:	cmpb   $0xff,0x49b13f(%rbx)
   18007f068:	jne    0x18007f48a
   18007f06e:	cmpl   $0x45eb4e8,0x3f8c7(%rbx)
   18007f078:	jne    0x18007f48a
   18007f07e:	cmpb   $0x0,0x3f8cb(%rbx)
   18007f085:	jne    0x18007f48a
   18007f08b:	cmpl   $0x3224e8,0x82557(%rbx)
   18007f095:	jne    0x18007f48a
   18007f09b:	cmpb   $0x0,0x8255b(%rbx)
   18007f0a2:	jne    0x18007f48a
   18007f0a8:	cmpw   $0x8b45,0x3f88f(%rbx)
   18007f0b1:	jne    0x18007f48a
   18007f0b7:	cmpb   $0xc7,0x3f891(%rbx)
   18007f0be:	jne    0x18007f48a
   18007f0c4:	cmpl   $0x1418d45,0x82526(%rbx)
   18007f0ce:	jne    0x18007f48a
   18007f0d4:	cmpl   $0x466cb8e8,0xff713(%rbx)
   18007f0de:	jne    0x18007f48a
   18007f0e4:	cmpb   $0x0,0xff717(%rbx)
   18007f0eb:	jne    0x18007f48a
   18007f0f1:	cmpl   $0x462a26e8,0x1039a5(%rbx)
   18007f0fb:	jne    0x18007f48a
   18007f101:	cmpb   $0x0,0x1039a9(%rbx)
   18007f108:	jne    0x18007f48a
   18007f10e:	cmpl   $0x467d71e8,0xfe65a(%rbx)
   18007f118:	jne    0x18007f48a
   18007f11e:	cmpb   $0x0,0xfe65e(%rbx)
   18007f125:	jne    0x18007f48a
   18007f12b:	mov    %rbx,%r12
   18007f12e:	and    $0xffffffffffff0000,%r12
   18007f135:	sub    $0x10000,%r12
   18007f13c:	lea    -0x70000000(%r12),%r13
   18007f144:	mov    %r12,%rcx
   18007f147:	mov    $0x1000,%edx
   18007f14c:	mov    $0x3000,%r8d
   18007f152:	mov    $0x4,%r9d
   18007f158:	call   *0x79e8(%r15)
   18007f15f:	test   %rax,%rax
   18007f162:	jne    0x18007f175
   18007f164:	sub    $0x10000,%r12
   18007f16b:	cmp    %r13,%r12
   18007f16e:	ja     0x18007f144
   18007f170:	jmp    0x18007f48a
   18007f175:	mov    %rax,%r12
   18007f178:	lea    0x7f800(%r15),%rsi
   18007f17f:	mov    %r12,%rdi
   18007f182:	mov    $0x400,%ecx
   18007f187:	cld    
   18007f188:	rep movsb %ds:(%rsi),%es:(%rdi)
   18007f18a:	lea    0x3f790(%rbx),%rax
   18007f191:	lea    0x11(%r12),%rcx
   18007f196:	sub    %rcx,%rax
   18007f199:	mov    %eax,0xd(%r12)
   18007f19e:	lea    0x85780(%rbx),%rax
   18007f1a5:	lea    0x8b(%r12),%rcx
   18007f1ad:	sub    %rcx,%rax
   18007f1b0:	mov    %eax,0x87(%r12)
   18007f1b8:	lea    0x85780(%rbx),%rax
   18007f1bf:	lea    0x16f(%r12),%rcx
   18007f1c7:	sub    %rcx,%rax
   18007f1ca:	mov    %eax,0x16b(%r12)
   18007f1d2:	lea    0x5663d0(%rbx),%rax
   18007f1d9:	lea    0x35c(%r12),%rcx
   18007f1e1:	sub    %rcx,%rax
   18007f1e4:	mov    %eax,0x358(%r12)
   18007f1ec:	lea    0x1677f9(%rbx),%rax
   18007f1f3:	mov    %rax,0x382(%r12)
   18007f1fb:	mov    %r12,%rcx
   18007f1fe:	mov    $0x1000,%edx
   18007f203:	mov    $0x20,%r8d
   18007f209:	lea    0x30(%rsp),%r9
   18007f20e:	call   *0x79f0(%r15)
   18007f215:	test   %eax,%eax
   18007f217:	je     0x18007f48a
   18007f21d:	xor    %r13d,%r13d
   18007f220:	lea    0x3f000(%rbx),%rcx
   18007f227:	mov    $0x1000,%edx
   18007f22c:	mov    $0x40,%r8d
   18007f232:	lea    0x34(%rsp),%r9
   18007f237:	call   *0x79f0(%r15)
   18007f23e:	test   %eax,%eax
   18007f240:	je     0x18007f3b8
   18007f246:	inc    %r13d
   18007f249:	lea    0x82000(%rbx),%rcx
   18007f250:	mov    $0x1000,%edx
   18007f255:	mov    $0x40,%r8d
   18007f25b:	lea    0x38(%rsp),%r9
   18007f260:	call   *0x79f0(%r15)
   18007f267:	test   %eax,%eax
   18007f269:	je     0x18007f3b8
   18007f26f:	inc    %r13d
   18007f272:	lea    0xfe000(%rbx),%rcx
   18007f279:	mov    $0x1000,%edx
   18007f27e:	mov    $0x40,%r8d
   18007f284:	lea    0x3c(%rsp),%r9
   18007f289:	call   *0x79f0(%r15)
   18007f290:	test   %eax,%eax
   18007f292:	je     0x18007f3b8
   18007f298:	inc    %r13d
   18007f29b:	lea    0xff000(%rbx),%rcx
   18007f2a2:	mov    $0x1000,%edx
   18007f2a7:	mov    $0x40,%r8d
   18007f2ad:	lea    0x40(%rsp),%r9
   18007f2b2:	call   *0x79f0(%r15)
   18007f2b9:	test   %eax,%eax
   18007f2bb:	je     0x18007f3b8
   18007f2c1:	inc    %r13d
   18007f2c4:	lea    0x103000(%rbx),%rcx
   18007f2cb:	mov    $0x1000,%edx
   18007f2d0:	mov    $0x40,%r8d
   18007f2d6:	lea    0x44(%rsp),%r9
   18007f2db:	call   *0x79f0(%r15)
   18007f2e2:	test   %eax,%eax
   18007f2e4:	je     0x18007f3b8
   18007f2ea:	inc    %r13d
   18007f2ed:	lea    0x49b000(%rbx),%rcx
   18007f2f4:	mov    $0x1000,%edx
   18007f2f9:	mov    $0x40,%r8d
   18007f2ff:	lea    0x48(%rsp),%r9
   18007f304:	call   *0x79f0(%r15)
   18007f30b:	test   %eax,%eax
   18007f30d:	je     0x18007f3b8
   18007f313:	inc    %r13d
   18007f316:	lea    (%r12),%rax
   18007f31a:	lea    0x49b10c(%rbx),%rcx
   18007f321:	sub    %rcx,%rax
   18007f324:	mov    %eax,-0x4(%rcx)
   18007f327:	lea    (%r12),%rax
   18007f32b:	lea    0x49b140(%rbx),%rcx
   18007f332:	sub    %rcx,%rax
   18007f335:	mov    %eax,-0x4(%rcx)
   18007f338:	lea    0x40(%r12),%rax
   18007f33d:	lea    0x3f8cc(%rbx),%rcx
   18007f344:	sub    %rcx,%rax
   18007f347:	mov    %eax,-0x4(%rcx)
   18007f34a:	lea    0x100(%r12),%rax
   18007f352:	lea    0x8255c(%rbx),%rcx
   18007f359:	sub    %rcx,%rax
   18007f35c:	mov    %eax,-0x4(%rcx)
   18007f35f:	lea    0x300(%r12),%rax
   18007f367:	lea    0xff718(%rbx),%rcx
   18007f36e:	sub    %rcx,%rax
   18007f371:	mov    %eax,-0x4(%rcx)
   18007f374:	lea    0x300(%r12),%rax
   18007f37c:	lea    0x1039aa(%rbx),%rcx
   18007f383:	sub    %rcx,%rax
   18007f386:	mov    %eax,-0x4(%rcx)
   18007f389:	lea    0x380(%r12),%rax
   18007f391:	lea    0xfe65f(%rbx),%rcx
   18007f398:	sub    %rcx,%rax
   18007f39b:	mov    %eax,-0x4(%rcx)
   18007f39e:	movw   $0x3145,0x3f88f(%rbx)
   18007f3a7:	movb   $0xc0,0x3f891(%rbx)
   18007f3ae:	movl   $0x90c03145,0x82526(%rbx)
   18007f3b8:	cmp    $0x6,%r13d
   18007f3bc:	jb     0x18007f3db
   18007f3be:	lea    0x49b000(%rbx),%rcx
   18007f3c5:	mov    $0x1000,%edx
   18007f3ca:	mov    0x48(%rsp),%r8d
   18007f3cf:	lea    0x30(%rsp),%r9
   18007f3d4:	call   *0x79f0(%r15)
   18007f3db:	cmp    $0x5,%r13d
   18007f3df:	jb     0x18007f3fe
   18007f3e1:	lea    0x103000(%rbx),%rcx
   18007f3e8:	mov    $0x1000,%edx
   18007f3ed:	mov    0x44(%rsp),%r8d
   18007f3f2:	lea    0x30(%rsp),%r9
   18007f3f7:	call   *0x79f0(%r15)
   18007f3fe:	cmp    $0x4,%r13d
   18007f402:	jb     0x18007f421
   18007f404:	lea    0xff000(%rbx),%rcx
   18007f40b:	mov    $0x1000,%edx
   18007f410:	mov    0x40(%rsp),%r8d
   18007f415:	lea    0x30(%rsp),%r9
   18007f41a:	call   *0x79f0(%r15)
   18007f421:	cmp    $0x3,%r13d
   18007f425:	jb     0x18007f444
   18007f427:	lea    0xfe000(%rbx),%rcx
   18007f42e:	mov    $0x1000,%edx
   18007f433:	mov    0x3c(%rsp),%r8d
   18007f438:	lea    0x30(%rsp),%r9
   18007f43d:	call   *0x79f0(%r15)
   18007f444:	cmp    $0x2,%r13d
   18007f448:	jb     0x18007f467
   18007f44a:	lea    0x82000(%rbx),%rcx
   18007f451:	mov    $0x1000,%edx
   18007f456:	mov    0x38(%rsp),%r8d
   18007f45b:	lea    0x30(%rsp),%r9
   18007f460:	call   *0x79f0(%r15)
   18007f467:	cmp    $0x1,%r13d
   18007f46b:	jb     0x18007f48a
   18007f46d:	lea    0x3f000(%rbx),%rcx
   18007f474:	mov    $0x1000,%edx
   18007f479:	mov    0x34(%rsp),%r8d
   18007f47e:	lea    0x30(%rsp),%r9
   18007f483:	call   *0x79f0(%r15)
   18007f48a:	add    $0x60,%rsp
   18007f48e:	pop    %r14
   18007f490:	pop    %r13
   18007f492:	pop    %r12
   18007f494:	pop    %rdi
   18007f495:	pop    %rsi
   18007f496:	pop    %rbx
   18007f497:	pop    %r15
   18007f499:	ret    
   18007f49a:	int3   
   18007f49b:	int3   
   18007f49c:	int3   
   18007f49d:	int3   
   18007f49e:	int3   
   18007f49f:	int3   
   18007f4a0:	int3   
   18007f4a1:	int3   
   18007f4a2:	int3   
   18007f4a3:	int3   
   18007f4a4:	int3   
   18007f4a5:	int3   
   18007f4a6:	int3   
   18007f4a7:	int3   
   18007f4a8:	int3   
   18007f4a9:	int3   
   18007f4aa:	int3   
   18007f4ab:	int3   
   18007f4ac:	int3   
   18007f4ad:	int3   
   18007f4ae:	int3   
   18007f4af:	int3   
   18007f4b0:	int3   
   18007f4b1:	int3   
   18007f4b2:	int3   
   18007f4b3:	int3   
   18007f4b4:	int3   
   18007f4b5:	int3   
   18007f4b6:	int3   
   18007f4b7:	int3   
   18007f4b8:	int3   
   18007f4b9:	int3   
   18007f4ba:	int3   
   18007f4bb:	int3   
   18007f4bc:	int3   
   18007f4bd:	int3   
   18007f4be:	int3   
   18007f4bf:	int3   
   18007f4c0:	int3   
   18007f4c1:	int3   
   18007f4c2:	int3   
   18007f4c3:	int3   
   18007f4c4:	int3   
   18007f4c5:	int3   
   18007f4c6:	int3   
   18007f4c7:	int3   
   18007f4c8:	int3   
   18007f4c9:	int3   
   18007f4ca:	int3   
   18007f4cb:	int3   
   18007f4cc:	int3   
   18007f4cd:	int3   
   18007f4ce:	int3   
   18007f4cf:	int3   
   18007f4d0:	int3   
   18007f4d1:	int3   
   18007f4d2:	int3   
   18007f4d3:	int3   
   18007f4d4:	int3   
   18007f4d5:	int3   
   18007f4d6:	int3   
   18007f4d7:	int3   
   18007f4d8:	int3   
   18007f4d9:	int3   
   18007f4da:	int3   
   18007f4db:	int3   
   18007f4dc:	int3   
   18007f4dd:	int3   
   18007f4de:	int3   
   18007f4df:	int3   
   18007f4e0:	int3   
   18007f4e1:	int3   
   18007f4e2:	int3   
   18007f4e3:	int3   
   18007f4e4:	int3   
   18007f4e5:	int3   
   18007f4e6:	int3   
   18007f4e7:	int3   
   18007f4e8:	int3   
   18007f4e9:	int3   
   18007f4ea:	int3   
   18007f4eb:	int3   
   18007f4ec:	int3   
   18007f4ed:	int3   
   18007f4ee:	int3   
   18007f4ef:	int3   
   18007f4f0:	int3   
   18007f4f1:	int3   
   18007f4f2:	int3   
   18007f4f3:	int3   
   18007f4f4:	int3   
   18007f4f5:	int3   
   18007f4f6:	int3   
   18007f4f7:	int3   
   18007f4f8:	int3   
   18007f4f9:	int3   
   18007f4fa:	int3   
   18007f4fb:	int3   
   18007f4fc:	int3   
   18007f4fd:	int3   
   18007f4fe:	int3   
   18007f4ff:	int3   
   18007f500:	int3   
   18007f501:	int3   
   18007f502:	int3   
   18007f503:	int3   
   18007f504:	int3   
   18007f505:	int3   
   18007f506:	int3   
   18007f507:	int3   
   18007f508:	int3   
   18007f509:	int3   
   18007f50a:	int3   
   18007f50b:	int3   
   18007f50c:	int3   
   18007f50d:	int3   
   18007f50e:	int3   
   18007f50f:	int3   
   18007f510:	int3   
   18007f511:	int3   
   18007f512:	int3   
   18007f513:	int3   
   18007f514:	int3   
   18007f515:	int3   
   18007f516:	int3   
   18007f517:	int3   
   18007f518:	int3   
   18007f519:	int3   
   18007f51a:	int3   
   18007f51b:	int3   
   18007f51c:	int3   
   18007f51d:	int3   
   18007f51e:	int3   
   18007f51f:	int3   
   18007f520:	int3   
   18007f521:	int3   
   18007f522:	int3   
   18007f523:	int3   
   18007f524:	int3   
   18007f525:	int3   
   18007f526:	int3   
   18007f527:	int3   
   18007f528:	int3   
   18007f529:	int3   
   18007f52a:	int3   
   18007f52b:	int3   
   18007f52c:	int3   
   18007f52d:	int3   
   18007f52e:	int3   
   18007f52f:	int3   
   18007f530:	int3   
   18007f531:	int3   
   18007f532:	int3   
   18007f533:	int3   
   18007f534:	int3   
   18007f535:	int3   
   18007f536:	int3   
   18007f537:	int3   
   18007f538:	int3   
   18007f539:	int3   
   18007f53a:	int3   
   18007f53b:	int3   
   18007f53c:	int3   
   18007f53d:	int3   
   18007f53e:	int3   
   18007f53f:	int3   
   18007f540:	int3   
   18007f541:	int3   
   18007f542:	int3   
   18007f543:	int3   
   18007f544:	int3   
   18007f545:	int3   
   18007f546:	int3   
   18007f547:	int3   
   18007f548:	int3   
   18007f549:	int3   
   18007f54a:	int3   
   18007f54b:	int3   
   18007f54c:	int3   
   18007f54d:	int3   
   18007f54e:	int3   
   18007f54f:	int3   
   18007f550:	int3   
   18007f551:	int3   
   18007f552:	int3   
   18007f553:	int3   
   18007f554:	int3   
   18007f555:	int3   
   18007f556:	int3   
   18007f557:	int3   
   18007f558:	int3   
   18007f559:	int3   
   18007f55a:	int3   
   18007f55b:	int3   
   18007f55c:	int3   
   18007f55d:	int3   
   18007f55e:	int3   
   18007f55f:	int3   
   18007f560:	int3   
   18007f561:	int3   
   18007f562:	int3   
   18007f563:	int3   
   18007f564:	int3   
   18007f565:	int3   
   18007f566:	int3   
   18007f567:	int3   
   18007f568:	int3   
   18007f569:	int3   
   18007f56a:	int3   
   18007f56b:	int3   
   18007f56c:	int3   
   18007f56d:	int3   
   18007f56e:	int3   
   18007f56f:	int3   
   18007f570:	int3   
   18007f571:	int3   
   18007f572:	int3   
   18007f573:	int3   
   18007f574:	int3   
   18007f575:	int3   
   18007f576:	int3   
   18007f577:	int3   
   18007f578:	int3   
   18007f579:	int3   
   18007f57a:	int3   
   18007f57b:	int3   
   18007f57c:	int3   
   18007f57d:	int3   
   18007f57e:	int3   
   18007f57f:	int3   
   18007f580:	int3   
   18007f581:	int3   
   18007f582:	int3   
   18007f583:	int3   
   18007f584:	int3   
   18007f585:	int3   
   18007f586:	int3   
   18007f587:	int3   
   18007f588:	int3   
   18007f589:	int3   
   18007f58a:	int3   
   18007f58b:	int3   
   18007f58c:	int3   
   18007f58d:	int3   
   18007f58e:	int3   
   18007f58f:	int3   
   18007f590:	int3   
   18007f591:	int3   
   18007f592:	int3   
   18007f593:	int3   
   18007f594:	int3   
   18007f595:	int3   
   18007f596:	int3   
   18007f597:	int3   
   18007f598:	int3   
   18007f599:	int3   
   18007f59a:	int3   
   18007f59b:	int3   
   18007f59c:	int3   
   18007f59d:	int3   
   18007f59e:	int3   
   18007f59f:	int3   
   18007f5a0:	int3   
   18007f5a1:	int3   
   18007f5a2:	int3   
   18007f5a3:	int3   
   18007f5a4:	int3   
   18007f5a5:	int3   
   18007f5a6:	int3   
   18007f5a7:	int3   
   18007f5a8:	int3   
   18007f5a9:	int3   
   18007f5aa:	int3   
   18007f5ab:	int3   
   18007f5ac:	int3   
   18007f5ad:	int3   
   18007f5ae:	int3   
   18007f5af:	int3   
   18007f5b0:	int3   
   18007f5b1:	int3   
   18007f5b2:	int3   
   18007f5b3:	int3   
   18007f5b4:	int3   
   18007f5b5:	int3   
   18007f5b6:	int3   
   18007f5b7:	int3   
   18007f5b8:	int3   
   18007f5b9:	int3   
   18007f5ba:	int3   
   18007f5bb:	int3   
   18007f5bc:	int3   
   18007f5bd:	int3   
   18007f5be:	int3   
   18007f5bf:	int3   
   18007f5c0:	int3   
   18007f5c1:	int3   
   18007f5c2:	int3   
   18007f5c3:	int3   
   18007f5c4:	int3   
   18007f5c5:	int3   
   18007f5c6:	int3   
   18007f5c7:	int3   
   18007f5c8:	int3   
   18007f5c9:	int3   
   18007f5ca:	int3   
   18007f5cb:	int3   
   18007f5cc:	int3   
   18007f5cd:	int3   
   18007f5ce:	int3   
   18007f5cf:	int3   
   18007f5d0:	int3   
   18007f5d1:	int3   
   18007f5d2:	int3   
   18007f5d3:	int3   
   18007f5d4:	int3   
   18007f5d5:	int3   
   18007f5d6:	int3   
   18007f5d7:	int3   
   18007f5d8:	int3   
   18007f5d9:	int3   
   18007f5da:	int3   
   18007f5db:	int3   
   18007f5dc:	int3   
   18007f5dd:	int3   
   18007f5de:	int3   
   18007f5df:	int3   
   18007f5e0:	int3   
   18007f5e1:	int3   
   18007f5e2:	int3   
   18007f5e3:	int3   
   18007f5e4:	int3   
   18007f5e5:	int3   
   18007f5e6:	int3   
   18007f5e7:	int3   
   18007f5e8:	int3   
   18007f5e9:	int3   
   18007f5ea:	int3   
   18007f5eb:	int3   
   18007f5ec:	int3   
   18007f5ed:	int3   
   18007f5ee:	int3   
   18007f5ef:	int3   
   18007f5f0:	int3   
   18007f5f1:	int3   
   18007f5f2:	int3   
   18007f5f3:	int3   
   18007f5f4:	int3   
   18007f5f5:	int3   
   18007f5f6:	int3   
   18007f5f7:	int3   
   18007f5f8:	int3   
   18007f5f9:	int3   
   18007f5fa:	int3   
   18007f5fb:	int3   
   18007f5fc:	int3   
   18007f5fd:	int3   
   18007f5fe:	int3   
   18007f5ff:	int3   
   18007f600:	int3   
   18007f601:	int3   
   18007f602:	int3   
   18007f603:	int3   
   18007f604:	int3   
   18007f605:	int3   
   18007f606:	int3   
   18007f607:	int3   
   18007f608:	int3   
   18007f609:	int3   
   18007f60a:	int3   
   18007f60b:	int3   
   18007f60c:	int3   
   18007f60d:	int3   
   18007f60e:	int3   
   18007f60f:	int3   
   18007f610:	int3   
   18007f611:	int3   
   18007f612:	int3   
   18007f613:	int3   
   18007f614:	int3   
   18007f615:	int3   
   18007f616:	int3   
   18007f617:	int3   
   18007f618:	int3   
   18007f619:	int3   
   18007f61a:	int3   
   18007f61b:	int3   
   18007f61c:	int3   
   18007f61d:	int3   
   18007f61e:	int3   
   18007f61f:	int3   
   18007f620:	int3   
   18007f621:	int3   
   18007f622:	int3   
   18007f623:	int3   
   18007f624:	int3   
   18007f625:	int3   
   18007f626:	int3   
   18007f627:	int3   
   18007f628:	int3   
   18007f629:	int3   
   18007f62a:	int3   
   18007f62b:	int3   
   18007f62c:	int3   
   18007f62d:	int3   
   18007f62e:	int3   
   18007f62f:	int3   
   18007f630:	int3   
   18007f631:	int3   
   18007f632:	int3   
   18007f633:	int3   
   18007f634:	int3   
   18007f635:	int3   
   18007f636:	int3   
   18007f637:	int3   
   18007f638:	int3   
   18007f639:	int3   
   18007f63a:	int3   
   18007f63b:	int3   
   18007f63c:	int3   
   18007f63d:	int3   
   18007f63e:	int3   
   18007f63f:	int3   
   18007f640:	int3   
   18007f641:	int3   
   18007f642:	int3   
   18007f643:	int3   
   18007f644:	int3   
   18007f645:	int3   
   18007f646:	int3   
   18007f647:	int3   
   18007f648:	int3   
   18007f649:	int3   
   18007f64a:	int3   
   18007f64b:	int3   
   18007f64c:	int3   
   18007f64d:	int3   
   18007f64e:	int3   
   18007f64f:	int3   
   18007f650:	int3   
   18007f651:	int3   
   18007f652:	int3   
   18007f653:	int3   
   18007f654:	int3   
   18007f655:	int3   
   18007f656:	int3   
   18007f657:	int3   
   18007f658:	int3   
   18007f659:	int3   
   18007f65a:	int3   
   18007f65b:	int3   
   18007f65c:	int3   
   18007f65d:	int3   
   18007f65e:	int3   
   18007f65f:	int3   
   18007f660:	int3   
   18007f661:	int3   
   18007f662:	int3   
   18007f663:	int3   
   18007f664:	int3   
   18007f665:	int3   
   18007f666:	int3   
   18007f667:	int3   
   18007f668:	int3   
   18007f669:	int3   
   18007f66a:	int3   
   18007f66b:	int3   
   18007f66c:	int3   
   18007f66d:	int3   
   18007f66e:	int3   
   18007f66f:	int3   
   18007f670:	int3   
   18007f671:	int3   
   18007f672:	int3   
   18007f673:	int3   
   18007f674:	int3   
   18007f675:	int3   
   18007f676:	int3   
   18007f677:	int3   
   18007f678:	int3   
   18007f679:	int3   
   18007f67a:	int3   
   18007f67b:	int3   
   18007f67c:	int3   
   18007f67d:	int3   
   18007f67e:	int3   
   18007f67f:	int3   
   18007f680:	int3   
   18007f681:	int3   
   18007f682:	int3   
   18007f683:	int3   
   18007f684:	int3   
   18007f685:	int3   
   18007f686:	int3   
   18007f687:	int3   
   18007f688:	int3   
   18007f689:	int3   
   18007f68a:	int3   
   18007f68b:	int3   
   18007f68c:	int3   
   18007f68d:	int3   
   18007f68e:	int3   
   18007f68f:	int3   
   18007f690:	int3   
   18007f691:	int3   
   18007f692:	int3   
   18007f693:	int3   
   18007f694:	int3   
   18007f695:	int3   
   18007f696:	int3   
   18007f697:	int3   
   18007f698:	int3   
   18007f699:	int3   
   18007f69a:	int3   
   18007f69b:	int3   
   18007f69c:	int3   
   18007f69d:	int3   
   18007f69e:	int3   
   18007f69f:	int3   
   18007f6a0:	int3   
   18007f6a1:	int3   
   18007f6a2:	int3   
   18007f6a3:	int3   
   18007f6a4:	int3   
   18007f6a5:	int3   
   18007f6a6:	int3   
   18007f6a7:	int3   
   18007f6a8:	int3   
   18007f6a9:	int3   
   18007f6aa:	int3   
   18007f6ab:	int3   
   18007f6ac:	int3   
   18007f6ad:	int3   
   18007f6ae:	int3   
   18007f6af:	int3   
   18007f6b0:	int3   
   18007f6b1:	int3   
   18007f6b2:	int3   
   18007f6b3:	int3   
   18007f6b4:	int3   
   18007f6b5:	int3   
   18007f6b6:	int3   
   18007f6b7:	int3   
   18007f6b8:	int3   
   18007f6b9:	int3   
   18007f6ba:	int3   
   18007f6bb:	int3   
   18007f6bc:	int3   
   18007f6bd:	int3   
   18007f6be:	int3   
   18007f6bf:	int3   
   18007f6c0:	int3   
   18007f6c1:	int3   
   18007f6c2:	int3   
   18007f6c3:	int3   
   18007f6c4:	int3   
   18007f6c5:	int3   
   18007f6c6:	int3   
   18007f6c7:	int3   
   18007f6c8:	int3   
   18007f6c9:	int3   
   18007f6ca:	int3   
   18007f6cb:	int3   
   18007f6cc:	int3   
   18007f6cd:	int3   
   18007f6ce:	int3   
   18007f6cf:	int3   
   18007f6d0:	int3   
   18007f6d1:	int3   
   18007f6d2:	int3   
   18007f6d3:	int3   
   18007f6d4:	int3   
   18007f6d5:	int3   
   18007f6d6:	int3   
   18007f6d7:	int3   
   18007f6d8:	int3   
   18007f6d9:	int3   
   18007f6da:	int3   
   18007f6db:	int3   
   18007f6dc:	int3   
   18007f6dd:	int3   
   18007f6de:	int3   
   18007f6df:	int3   
   18007f6e0:	int3   
   18007f6e1:	int3   
   18007f6e2:	int3   
   18007f6e3:	int3   
   18007f6e4:	int3   
   18007f6e5:	int3   
   18007f6e6:	int3   
   18007f6e7:	int3   
   18007f6e8:	int3   
   18007f6e9:	int3   
   18007f6ea:	int3   
   18007f6eb:	int3   
   18007f6ec:	int3   
   18007f6ed:	int3   
   18007f6ee:	int3   
   18007f6ef:	int3   
   18007f6f0:	int3   
   18007f6f1:	int3   
   18007f6f2:	int3   
   18007f6f3:	int3   
   18007f6f4:	int3   
   18007f6f5:	int3   
   18007f6f6:	int3   
   18007f6f7:	int3   
   18007f6f8:	int3   
   18007f6f9:	int3   
   18007f6fa:	int3   
   18007f6fb:	int3   
   18007f6fc:	int3   
   18007f6fd:	int3   
   18007f6fe:	int3   
   18007f6ff:	int3   
   18007f700:	int3   
   18007f701:	int3   
   18007f702:	int3   
   18007f703:	int3   
   18007f704:	int3   
   18007f705:	int3   
   18007f706:	int3   
   18007f707:	int3   
   18007f708:	int3   
   18007f709:	int3   
   18007f70a:	int3   
   18007f70b:	int3   
   18007f70c:	int3   
   18007f70d:	int3   
   18007f70e:	int3   
   18007f70f:	int3   
   18007f710:	int3   
   18007f711:	int3   
   18007f712:	int3   
   18007f713:	int3   
   18007f714:	int3   
   18007f715:	int3   
   18007f716:	int3   
   18007f717:	int3   
   18007f718:	int3   
   18007f719:	int3   
   18007f71a:	int3   
   18007f71b:	int3   
   18007f71c:	int3   
   18007f71d:	int3   
   18007f71e:	int3   
   18007f71f:	int3   
   18007f720:	int3   
   18007f721:	int3   
   18007f722:	int3   
   18007f723:	int3   
   18007f724:	int3   
   18007f725:	int3   
   18007f726:	int3   
   18007f727:	int3   
   18007f728:	int3   
   18007f729:	int3   
   18007f72a:	int3   
   18007f72b:	int3   
   18007f72c:	int3   
   18007f72d:	int3   
   18007f72e:	int3   
   18007f72f:	int3   
   18007f730:	int3   
   18007f731:	int3   
   18007f732:	int3   
   18007f733:	int3   
   18007f734:	int3   
   18007f735:	int3   
   18007f736:	int3   
   18007f737:	int3   
   18007f738:	int3   
   18007f739:	int3   
   18007f73a:	int3   
   18007f73b:	int3   
   18007f73c:	int3   
   18007f73d:	int3   
   18007f73e:	int3   
   18007f73f:	int3   
   18007f740:	int3   
   18007f741:	int3   
   18007f742:	int3   
   18007f743:	int3   
   18007f744:	int3   
   18007f745:	int3   
   18007f746:	int3   
   18007f747:	int3   
   18007f748:	int3   
   18007f749:	int3   
   18007f74a:	int3   
   18007f74b:	int3   
   18007f74c:	int3   
   18007f74d:	int3   
   18007f74e:	int3   
   18007f74f:	int3   
   18007f750:	int3   
   18007f751:	int3   
   18007f752:	int3   
   18007f753:	int3   
   18007f754:	int3   
   18007f755:	int3   
   18007f756:	int3   
   18007f757:	int3   
   18007f758:	int3   
   18007f759:	int3   
   18007f75a:	int3   
   18007f75b:	int3   
   18007f75c:	int3   
   18007f75d:	int3   
   18007f75e:	int3   
   18007f75f:	int3   
   18007f760:	int3   
   18007f761:	int3   
   18007f762:	int3   
   18007f763:	int3   
   18007f764:	int3   
   18007f765:	int3   
   18007f766:	int3   
   18007f767:	int3   
   18007f768:	int3   
   18007f769:	int3   
   18007f76a:	int3   
   18007f76b:	int3   
   18007f76c:	int3   
   18007f76d:	int3   
   18007f76e:	int3   
   18007f76f:	int3   
   18007f770:	int3   
   18007f771:	int3   
   18007f772:	int3   
   18007f773:	int3   
   18007f774:	int3   
   18007f775:	int3   
   18007f776:	int3   
   18007f777:	int3   
   18007f778:	int3   
   18007f779:	int3   
   18007f77a:	int3   
   18007f77b:	int3   
   18007f77c:	int3   
   18007f77d:	int3   
   18007f77e:	int3   
   18007f77f:	int3   
   18007f780:	int3   
   18007f781:	int3   
   18007f782:	int3   
   18007f783:	int3   
   18007f784:	int3   
   18007f785:	int3   
   18007f786:	int3   
   18007f787:	int3   
   18007f788:	int3   
   18007f789:	int3   
   18007f78a:	int3   
   18007f78b:	int3   
   18007f78c:	int3   
   18007f78d:	int3   
   18007f78e:	int3   
   18007f78f:	int3   
   18007f790:	int3   
   18007f791:	int3   
   18007f792:	int3   
   18007f793:	int3   
   18007f794:	int3   
   18007f795:	int3   
   18007f796:	int3   
   18007f797:	int3   
   18007f798:	int3   
   18007f799:	int3   
   18007f79a:	int3   
   18007f79b:	int3   
   18007f79c:	int3   
   18007f79d:	int3   
   18007f79e:	int3   
   18007f79f:	int3   
   18007f7a0:	int3   
   18007f7a1:	int3   
   18007f7a2:	int3   
   18007f7a3:	int3   
   18007f7a4:	int3   
   18007f7a5:	int3   
   18007f7a6:	int3   
   18007f7a7:	int3   
   18007f7a8:	int3   
   18007f7a9:	int3   
   18007f7aa:	int3   
   18007f7ab:	int3   
   18007f7ac:	int3   
   18007f7ad:	int3   
   18007f7ae:	int3   
   18007f7af:	int3   
   18007f7b0:	int3   
   18007f7b1:	int3   
   18007f7b2:	int3   
   18007f7b3:	int3   
   18007f7b4:	int3   
   18007f7b5:	int3   
   18007f7b6:	int3   
   18007f7b7:	int3   
   18007f7b8:	int3   
   18007f7b9:	int3   
   18007f7ba:	int3   
   18007f7bb:	int3   
   18007f7bc:	int3   
   18007f7bd:	int3   
   18007f7be:	int3   
   18007f7bf:	int3   
   18007f7c0:	int3   
   18007f7c1:	int3   
   18007f7c2:	int3   
   18007f7c3:	int3   
   18007f7c4:	int3   
   18007f7c5:	int3   
   18007f7c6:	int3   
   18007f7c7:	int3   
   18007f7c8:	int3   
   18007f7c9:	int3   
   18007f7ca:	int3   
   18007f7cb:	int3   
   18007f7cc:	int3   
   18007f7cd:	int3   
   18007f7ce:	int3   
   18007f7cf:	int3   
   18007f7d0:	int3   
   18007f7d1:	int3   
   18007f7d2:	int3   
   18007f7d3:	int3   
   18007f7d4:	int3   
   18007f7d5:	int3   
   18007f7d6:	int3   
   18007f7d7:	int3   
   18007f7d8:	int3   
   18007f7d9:	int3   
   18007f7da:	int3   
   18007f7db:	int3   
   18007f7dc:	int3   
   18007f7dd:	int3   
   18007f7de:	int3   
   18007f7df:	int3   
   18007f7e0:	int3   
   18007f7e1:	int3   
   18007f7e2:	int3   
   18007f7e3:	int3   
   18007f7e4:	int3   
   18007f7e5:	int3   
   18007f7e6:	int3   
   18007f7e7:	int3   
   18007f7e8:	int3   
   18007f7e9:	int3   
   18007f7ea:	int3   
   18007f7eb:	int3   
   18007f7ec:	int3   
   18007f7ed:	int3   
   18007f7ee:	int3   
   18007f7ef:	int3   
   18007f7f0:	int3   
   18007f7f1:	int3   
   18007f7f2:	int3   
   18007f7f3:	int3   
   18007f7f4:	int3   
   18007f7f5:	int3   
   18007f7f6:	int3   
   18007f7f7:	int3   
   18007f7f8:	int3   
   18007f7f9:	int3   
   18007f7fa:	int3   
   18007f7fb:	int3   
   18007f7fc:	int3   
   18007f7fd:	int3   
   18007f7fe:	int3   
   18007f7ff:	int3   
   18007f800:	sub    $0x38,%rsp
   18007f804:	movl   $0x8,0x20(%rsp)
   18007f80c:	call   0x18007f811
   18007f811:	add    $0x38,%rsp
   18007f815:	ret    
	...
   18007f83e:	add    %al,(%rax)
   18007f840:	mov    %edx,%r9d
   18007f843:	mov    %rcx,%r8
   18007f846:	movzbl (%r8),%eax
   18007f84a:	cmp    $0x82,%al
   18007f84c:	je     0x18007f85b
   18007f84e:	and    $0xffffffdf,%eax
   18007f851:	sub    $0x41,%eax
   18007f854:	cmp    $0x19,%eax
   18007f857:	ja     0x18007f883
   18007f859:	jmp    0x18007f874
   18007f85b:	inc    %r8
   18007f85e:	movzbl (%r8),%eax
   18007f862:	lea    -0x60(%rax),%edx
   18007f865:	cmp    $0x19,%edx
   18007f868:	jbe    0x18007f874
   18007f86a:	sub    $0x81,%eax
   18007f86f:	cmp    $0x19,%eax
   18007f872:	ja     0x18007f883
   18007f874:	inc    %r8
   18007f877:	cmpb   $0x0,(%r8)
   18007f87b:	jne    0x18007f846
   18007f87d:	jmp    0x18007fa00
   18007f882:	nop
   18007f883:	mov    %r9d,%edx
   18007f886:	jmp    0x18007f88b
	...
   18007f8ff:	add    %al,-0x77(%rcx)
   18007f902:	rorl   -0x77(%rcx)
   18007f905:	enter  $0x3145,$0xd2
   18007f909:	movzbl (%r8),%eax
   18007f90d:	cmp    $0x20,%al
   18007f90f:	je     0x18007f95a
   18007f911:	cmp    $0x81,%al
   18007f913:	je     0x18007f951
   18007f915:	cmp    $0x82,%al
   18007f917:	je     0x18007f926
   18007f919:	and    $0xffffffdf,%eax
   18007f91c:	sub    $0x41,%eax
   18007f91f:	cmp    $0x19,%eax
   18007f922:	ja     0x18007f967
   18007f924:	jmp    0x18007f93f
   18007f926:	inc    %r8
   18007f929:	movzbl (%r8),%eax
   18007f92d:	lea    -0x60(%rax),%edx
   18007f930:	cmp    $0x19,%edx
   18007f933:	jbe    0x18007f93f
   18007f935:	sub    $0x81,%eax
   18007f93a:	cmp    $0x19,%eax
   18007f93d:	ja     0x18007f967
   18007f93f:	mov    $0x1,%r10b
   18007f942:	inc    %r8
   18007f945:	cmpb   $0x0,(%r8)
   18007f949:	jne    0x18007f909
   18007f94b:	jmp    0x18007fa00
   18007f950:	nop
   18007f951:	inc    %r8
   18007f954:	cmpb   $0x40,(%r8)
   18007f958:	jne    0x18007f967
   18007f95a:	test   %r10b,%r10b
   18007f95d:	je     0x18007f967
   18007f95f:	xor    %r10d,%r10d
   18007f962:	inc    %r8
   18007f965:	jmp    0x18007f909
   18007f967:	mov    %r9d,%edx
   18007f96a:	jmp    0x18007f96f
	...
   18007f9ff:	add    %cl,-0x77(%rcx)
   18007fa02:	enter  $0x8949,$0xc9
   18007fa06:	movzbl (%r8),%eax
   18007fa0a:	inc    %r8
   18007fa0d:	cmp    $0x81,%al
   18007fa0f:	je     0x18007fa28
   18007fa11:	cmp    $0x82,%al
   18007fa13:	jne    0x18007fa2d
   18007fa15:	movzbl (%r8),%eax
   18007fa19:	inc    %r8
   18007fa1c:	cmp    $0x81,%al
   18007fa1e:	jb     0x18007fa24
   18007fa20:	sub    $0x20,%al
   18007fa22:	jmp    0x18007fa2d
   18007fa24:	sub    $0x1f,%al
   18007fa26:	jmp    0x18007fa2d
   18007fa28:	inc    %r8
   18007fa2b:	mov    $0x20,%al
   18007fa2d:	mov    %al,(%r9)
   18007fa30:	inc    %r9
   18007fa33:	test   %al,%al
   18007fa35:	jne    0x18007fa06
   18007fa37:	mov    $0x1,%eax
   18007fa3c:	ret    
	...
   18007fafd:	add    %al,(%rax)
   18007faff:	add    %al,0x52740039(%rax)
   18007fb05:	cmpb   $0x0,(%rdx)
   18007fb08:	je     0x18007fb57
   18007fb0a:	xor    %r8d,%r8d
   18007fb0d:	movzbl (%rcx,%r8,1),%eax
   18007fb12:	test   %al,%al
   18007fb14:	je     0x18007fb25
   18007fb16:	test   $0x80,%al
   18007fb18:	jne    0x18007fb57
   18007fb1a:	inc    %r8d
   18007fb1d:	cmp    $0x1f,%r8d
   18007fb21:	jb     0x18007fb0d
   18007fb23:	jmp    0x18007fb57
   18007fb25:	cmpb   $0x20,-0x1(%rcx,%r8,1)
   18007fb2b:	je     0x18007fb57
   18007fb2d:	cmpb   $0x20,(%rdx)
   18007fb30:	je     0x18007fb57
   18007fb32:	xor    %r9d,%r9d
   18007fb35:	movzbl (%rdx,%r9,1),%eax
   18007fb3a:	test   %al,%al
   18007fb3c:	je     0x18007fb50
   18007fb3e:	test   $0x80,%al
   18007fb40:	jne    0x18007fb57
   18007fb42:	inc    %r9d
   18007fb45:	lea    (%r8,%r9,1),%eax
   18007fb49:	cmp    $0x1f,%eax
   18007fb4c:	jbe    0x18007fb35
   18007fb4e:	jmp    0x18007fb57
   18007fb50:	movw   $0x20,(%rcx,%r8,1)
   18007fb57:	jmp    0x18007fb5c
	...
   18007fb80:	movabs $0x0,%rax
   18007fb8a:	cmp    %rax,0x30(%rsp)
   18007fb8f:	jne    0x18007fb96
   18007fb91:	jmp    0x18007fb00
   18007fb96:	jmp    0x18007fb57
	...
   18007fbff:	add    %al,0x57(%rcx)
   18007fc02:	lea    -0x7fc09(%rip),%r15        # 0x180000000
   18007fc09:	push   %rbx
   18007fc0a:	push   %r12
   18007fc0c:	push   %r13
   18007fc0e:	sub    $0x68,%rsp
   18007fc12:	call   0x18007f000
   18007fc17:	xor    %ecx,%ecx
   18007fc19:	call   *0x79a0(%r15)
   18007fc20:	test   %rax,%rax
   18007fc23:	je     0x1800803ef
   18007fc29:	mov    %rax,%rbx
   18007fc2c:	cmpl   $0x833bdce8,0x87d56f(%rbx)
   18007fc36:	jne    0x1800803ef
   18007fc3c:	cmpb   $0xff,0x87d573(%rbx)
   18007fc43:	jne    0x1800803ef
   18007fc49:	cmpl   $0x832c59e8,0x87e4f2(%rbx)
   18007fc53:	jne    0x1800803ef
   18007fc59:	cmpb   $0xff,0x87e4f6(%rbx)
   18007fc60:	jne    0x1800803ef
   18007fc66:	cmpl   $0x832bdfe8,0x87e56c(%rbx)
   18007fc70:	jne    0x1800803ef
   18007fc76:	cmpb   $0xff,0x87e570(%rbx)
   18007fc7d:	jne    0x1800803ef
   18007fc83:	cmpl   $0x832103e8,0x87f048(%rbx)
   18007fc8d:	jne    0x1800803ef
   18007fc93:	cmpb   $0xff,0x87f04c(%rbx)
   18007fc9a:	jne    0x1800803ef
   18007fca0:	cmpl   $0x831d83e8,0x87f3c8(%rbx)
   18007fcaa:	jne    0x1800803ef
   18007fcb0:	cmpb   $0xff,0x87f3cc(%rbx)
   18007fcb7:	jne    0x1800803ef
   18007fcbd:	cmpl   $0x833a68e8,0x87d5a3(%rbx)
   18007fcc7:	jne    0x1800803ef
   18007fccd:	cmpb   $0xff,0x87d5a7(%rbx)
   18007fcd4:	jne    0x1800803ef
   18007fcda:	cmpl   $0xffd66ee8,0x87fafd(%rbx)
   18007fce4:	jne    0x1800803ef
   18007fcea:	cmpb   $0xff,0x87fb01(%rbx)
   18007fcf1:	jne    0x1800803ef
   18007fcf7:	cmpl   $0xffc087e8,0x87fbb4(%rbx)
   18007fd01:	jne    0x1800803ef
   18007fd07:	cmpb   $0xff,0x87fbb8(%rbx)
   18007fd0e:	jne    0x1800803ef
   18007fd14:	cmpl   $0xffbc78e8,0x87fbf3(%rbx)
   18007fd1e:	jne    0x1800803ef
   18007fd24:	cmpb   $0xff,0x87fbf7(%rbx)
   18007fd2b:	jne    0x1800803ef
   18007fd31:	cmpl   $0x4cfd8b41,0x87ec22(%rbx)
   18007fd3b:	jne    0x1800803ef
   18007fd41:	cmpl   $0xdfc4258d,0x87ec26(%rbx)
   18007fd4b:	jne    0x1800803ef
   18007fd51:	cmpw   $0x22c,0x87ec2a(%rbx)
   18007fd5a:	jne    0x1800803ef
   18007fd60:	cmpl   $0x41d00348,0x87c16b(%rbx)
   18007fd6a:	jne    0x1800803ef
   18007fd70:	cmpl   $0x3a80c4ff,0x87c16f(%rbx)
   18007fd7a:	jne    0x1800803ef
   18007fd80:	cmpw   $0x7500,0x87c173(%rbx)
   18007fd89:	jne    0x1800803ef
   18007fd8f:	cmpb   $0xca,0x87c175(%rbx)
   18007fd96:	jne    0x1800803ef
   18007fd9c:	cmpl   $0x74fc3b41,0x87c547(%rbx)
   18007fda6:	jne    0x1800803ef
   18007fdac:	cmpl   $0x83ff411d,0x87c54b(%rbx)
   18007fdb6:	jne    0x1800803ef
   18007fdbc:	cmpl   $0x2580,0x87c54f(%rbx)
   18007fdc6:	jne    0x1800803ef
   18007fdcc:	cmpl   $0x24748b48,0x87c553(%rbx)
   18007fdd6:	jne    0x1800803ef
   18007fddc:	cmpl   $0xfd38e950,0x87c557(%rbx)
   18007fde6:	jne    0x1800803ef
   18007fdec:	cmpw   $0xffff,0x87c55b(%rbx)
   18007fdf4:	jne    0x1800803ef
   18007fdfa:	lea    0x2b44fbc(%rbx),%rax
   18007fe01:	cmp    %rax,0x3aaa750(%rbx)
   18007fe08:	jne    0x1800803ef
   18007fe0e:	lea    0x2b44fe4(%rbx),%rax
   18007fe15:	cmp    %rax,0x3aaa758(%rbx)
   18007fe1c:	jne    0x1800803ef
   18007fe22:	lea    0x2b4500c(%rbx),%rax
   18007fe29:	cmp    %rax,0x3aaa760(%rbx)
   18007fe30:	jne    0x1800803ef
   18007fe36:	lea    0x2b45024(%rbx),%rax
   18007fe3d:	cmp    %rax,0x3aaa768(%rbx)
   18007fe44:	jne    0x1800803ef
   18007fe4a:	lea    0x2b4503c(%rbx),%rax
   18007fe51:	cmp    %rax,0x3aaa770(%rbx)
   18007fe58:	jne    0x1800803ef
   18007fe5e:	lea    0x2b45054(%rbx),%rax
   18007fe65:	cmp    %rax,0x3aaa778(%rbx)
   18007fe6c:	jne    0x1800803ef
   18007fe72:	lea    0x2b4507c(%rbx),%rax
   18007fe79:	cmp    %rax,0x3aaa780(%rbx)
   18007fe80:	jne    0x1800803ef
   18007fe86:	lea    0x2b45094(%rbx),%rax
   18007fe8d:	cmp    %rax,0x3aaa788(%rbx)
   18007fe94:	jne    0x1800803ef
   18007fe9a:	lea    0x2b450bc(%rbx),%rax
   18007fea1:	cmp    %rax,0x3aaa790(%rbx)
   18007fea8:	jne    0x1800803ef
   18007feae:	lea    0x2b4515c(%rbx),%rax
   18007feb5:	cmp    %rax,0x3aaa798(%rbx)
   18007febc:	jne    0x1800803ef
   18007fec2:	lea    0x80ea0(%r15),%rcx
   18007fec9:	call   *0x79a0(%r15)
   18007fed0:	test   %rax,%rax
   18007fed3:	je     0x1800803ef
   18007fed9:	mov    %rax,%rcx
   18007fedc:	lea    0x80eb0(%r15),%rdx
   18007fee3:	call   *0x79a8(%r15)
   18007feea:	test   %rax,%rax
   18007feed:	je     0x1800803ef
   18007fef3:	mov    %rax,0x60(%rsp)
   18007fef8:	mov    %rbx,%r12
   18007fefb:	and    $0xffffffffffff0000,%r12
   18007ff02:	sub    $0x10000,%r12
   18007ff09:	lea    -0x70000000(%r12),%r13
   18007ff11:	mov    %r12,%rcx
   18007ff14:	mov    $0x4000,%edx
   18007ff19:	mov    $0x3000,%r8d
   18007ff1f:	mov    $0x4,%r9d
   18007ff25:	call   *0x79e8(%r15)
   18007ff2c:	test   %rax,%rax
   18007ff2f:	jne    0x18007ff42
   18007ff31:	sub    $0x10000,%r12
   18007ff38:	cmp    %r13,%r12
   18007ff3b:	ja     0x18007ff11
   18007ff3d:	jmp    0x1800803ef
   18007ff42:	mov    %rax,%r12
   18007ff45:	lea    0x80c00(%r15),%rdx
   18007ff4c:	xor    %ecx,%ecx
   18007ff4e:	mov    (%rdx,%rcx,1),%rax
   18007ff52:	mov    %rax,(%r12,%rcx,1)
   18007ff56:	add    $0x8,%ecx
   18007ff59:	cmp    $0x4000,%ecx
   18007ff5f:	jb     0x18007ff4e
   18007ff61:	lea    0xb1150(%rbx),%rax
   18007ff68:	mov    %rax,0x200(%r12)
   18007ff70:	lea    0xb1010(%rbx),%rax
   18007ff77:	mov    %rax,0x208(%r12)
   18007ff7f:	lea    0x87d170(%rbx),%rax
   18007ff86:	mov    %rax,0x210(%r12)
   18007ff8e:	lea    0x87bc40(%rbx),%rax
   18007ff95:	mov    %rax,0x218(%r12)
   18007ff9d:	lea    0x87b870(%rbx),%rax
   18007ffa4:	mov    %rax,0x220(%r12)
   18007ffac:	lea    0x87ed02(%rbx),%rax
   18007ffb3:	mov    %rax,0x228(%r12)
   18007ffbb:	lea    0x87c140(%rbx),%rax
   18007ffc2:	mov    %rax,0x2d0(%r12)
   18007ffca:	lea    0x87c176(%rbx),%rax
   18007ffd1:	mov    %rax,0x2d8(%r12)
   18007ffd9:	lea    0x87c295(%rbx),%rax
   18007ffe0:	mov    %rax,0x2e0(%r12)
   18007ffe8:	lea    0x87c569(%rbx),%rax
   18007ffef:	mov    %rax,0x2e8(%r12)
   18007fff7:	mov    %r12,%rcx
   18007fffa:	mov    $0x4000,%edx
   18007ffff:	mov    $0x20,%r8d
   180080005:	lea    0x30(%rsp),%r9
   18008000a:	call   *0x79f0(%r15)
   180080011:	test   %eax,%eax
   180080013:	je     0x1800803ef
   180080019:	mov    $0xffffffffffffffff,%rcx
   180080020:	mov    %r12,%rdx
   180080023:	mov    $0x4000,%r8d
   180080029:	call   *0x60(%rsp)
   18008002d:	test   %eax,%eax
   18008002f:	je     0x1800803ef
   180080035:	xor    %r13d,%r13d
   180080038:	lea    0x87c000(%rbx),%rcx
   18008003f:	mov    $0x1000,%edx
   180080044:	mov    $0x40,%r8d
   18008004a:	lea    0x34(%rsp),%r9
   18008004f:	call   *0x79f0(%r15)
   180080056:	test   %eax,%eax
   180080058:	je     0x180080340
   18008005e:	inc    %r13d
   180080061:	lea    0x87d000(%rbx),%rcx
   180080068:	mov    $0x1000,%edx
   18008006d:	mov    $0x40,%r8d
   180080073:	lea    0x38(%rsp),%r9
   180080078:	call   *0x79f0(%r15)
   18008007f:	test   %eax,%eax
   180080081:	je     0x180080340
   180080087:	inc    %r13d
   18008008a:	lea    0x87e000(%rbx),%rcx
   180080091:	mov    $0x1000,%edx
   180080096:	mov    $0x40,%r8d
   18008009c:	lea    0x3c(%rsp),%r9
   1800800a1:	call   *0x79f0(%r15)
   1800800a8:	test   %eax,%eax
   1800800aa:	je     0x180080340
   1800800b0:	inc    %r13d
   1800800b3:	lea    0x87f000(%rbx),%rcx
   1800800ba:	mov    $0x1000,%edx
   1800800bf:	mov    $0x40,%r8d
   1800800c5:	lea    0x40(%rsp),%r9
   1800800ca:	call   *0x79f0(%r15)
   1800800d1:	test   %eax,%eax
   1800800d3:	je     0x180080340
   1800800d9:	inc    %r13d
   1800800dc:	lea    0x3aaa000(%rbx),%rcx
   1800800e3:	mov    $0x1000,%edx
   1800800e8:	mov    $0x4,%r8d
   1800800ee:	lea    0x44(%rsp),%r9
   1800800f3:	call   *0x79f0(%r15)
   1800800fa:	test   %eax,%eax
   1800800fc:	je     0x180080340
   180080102:	inc    %r13d
   180080105:	lea    0x100(%r12),%rax
   18008010d:	lea    0x87d574(%rbx),%rcx
   180080114:	sub    %rcx,%rax
   180080117:	movb   $0xe8,-0x5(%rcx)
   18008011b:	mov    %eax,-0x4(%rcx)
   18008011e:	lea    0x100(%r12),%rax
   180080126:	lea    0x87e4f7(%rbx),%rcx
   18008012d:	sub    %rcx,%rax
   180080130:	movb   $0xe8,-0x5(%rcx)
   180080134:	mov    %eax,-0x4(%rcx)
   180080137:	lea    0x100(%r12),%rax
   18008013f:	lea    0x87e571(%rbx),%rcx
   180080146:	sub    %rcx,%rax
   180080149:	movb   $0xe8,-0x5(%rcx)
   18008014d:	mov    %eax,-0x4(%rcx)
   180080150:	lea    0x100(%r12),%rax
   180080158:	lea    0x87f04d(%rbx),%rcx
   18008015f:	sub    %rcx,%rax
   180080162:	movb   $0xe8,-0x5(%rcx)
   180080166:	mov    %eax,-0x4(%rcx)
   180080169:	lea    0x100(%r12),%rax
   180080171:	lea    0x87f3cd(%rbx),%rcx
   180080178:	sub    %rcx,%rax
   18008017b:	movb   $0xe8,-0x5(%rcx)
   18008017f:	mov    %eax,-0x4(%rcx)
   180080182:	lea    0x130(%r12),%rax
   18008018a:	lea    0x87d5a8(%rbx),%rcx
   180080191:	sub    %rcx,%rax
   180080194:	movb   $0xe8,-0x5(%rcx)
   180080198:	mov    %eax,-0x4(%rcx)
   18008019b:	lea    0x160(%r12),%rax
   1800801a3:	lea    0x87fb02(%rbx),%rcx
   1800801aa:	sub    %rcx,%rax
   1800801ad:	movb   $0xe8,-0x5(%rcx)
   1800801b1:	mov    %eax,-0x4(%rcx)
   1800801b4:	lea    0x190(%r12),%rax
   1800801bc:	lea    0x87fbb9(%rbx),%rcx
   1800801c3:	sub    %rcx,%rax
   1800801c6:	movb   $0xe8,-0x5(%rcx)
   1800801ca:	mov    %eax,-0x4(%rcx)
   1800801cd:	lea    0x1c0(%r12),%rax
   1800801d5:	lea    0x87fbf8(%rbx),%rcx
   1800801dc:	sub    %rcx,%rax
   1800801df:	movb   $0xe8,-0x5(%rcx)
   1800801e3:	mov    %eax,-0x4(%rcx)
   1800801e6:	lea    (%r12),%rax
   1800801ea:	lea    0x87ec27(%rbx),%rcx
   1800801f1:	sub    %rcx,%rax
   1800801f4:	movb   $0xe9,-0x5(%rcx)
   1800801f8:	mov    %eax,-0x4(%rcx)
   1800801fb:	movb   $0x90,(%rcx)
   1800801fe:	movb   $0x90,0x1(%rcx)
   180080202:	movb   $0x90,0x2(%rcx)
   180080206:	movb   $0x90,0x3(%rcx)
   18008020a:	movb   $0x90,0x4(%rcx)
   18008020e:	lea    0x3b00(%r12),%rax
   180080216:	lea    0x87c170(%rbx),%rcx
   18008021d:	sub    %rcx,%rax
   180080220:	movb   $0xe9,-0x5(%rcx)
   180080224:	mov    %eax,-0x4(%rcx)
   180080227:	movb   $0x90,(%rcx)
   18008022a:	movb   $0x90,0x1(%rcx)
   18008022e:	movb   $0x90,0x2(%rcx)
   180080232:	movb   $0x90,0x3(%rcx)
   180080236:	movb   $0x90,0x4(%rcx)
   18008023a:	movb   $0x90,0x5(%rcx)
   18008023e:	lea    0x3b80(%r12),%rax
   180080246:	lea    0x87c54c(%rbx),%rcx
   18008024d:	sub    %rcx,%rax
   180080250:	movb   $0xe9,-0x5(%rcx)
   180080254:	mov    %eax,-0x4(%rcx)
   180080257:	movb   $0x90,(%rcx)
   18008025a:	movb   $0x90,0x1(%rcx)
   18008025e:	movb   $0x90,0x2(%rcx)
   180080262:	movb   $0x90,0x3(%rcx)
   180080266:	movb   $0x90,0x4(%rcx)
   18008026a:	movb   $0x90,0x5(%rcx)
   18008026e:	movb   $0x90,0x6(%rcx)
   180080272:	movb   $0x90,0x7(%rcx)
   180080276:	movb   $0x90,0x8(%rcx)
   18008027a:	movb   $0x90,0x9(%rcx)
   18008027e:	movb   $0x90,0xa(%rcx)
   180080282:	movb   $0x90,0xb(%rcx)
   180080286:	movb   $0x90,0xc(%rcx)
   18008028a:	movb   $0x90,0xd(%rcx)
   18008028e:	movb   $0x90,0xe(%rcx)
   180080292:	movb   $0x90,0xf(%rcx)
   180080296:	movb   $0x90,0x10(%rcx)
   18008029a:	lea    0x240(%r12),%rax
   1800802a2:	mov    %rax,0x3aaa750(%rbx)
   1800802a9:	lea    0x248(%r12),%rax
   1800802b1:	mov    %rax,0x3aaa758(%rbx)
   1800802b8:	lea    0x250(%r12),%rax
   1800802c0:	mov    %rax,0x3aaa760(%rbx)
   1800802c7:	lea    0x258(%r12),%rax
   1800802cf:	mov    %rax,0x3aaa768(%rbx)
   1800802d6:	lea    0x260(%r12),%rax
   1800802de:	mov    %rax,0x3aaa770(%rbx)
   1800802e5:	lea    0x268(%r12),%rax
   1800802ed:	mov    %rax,0x3aaa778(%rbx)
   1800802f4:	lea    0x270(%r12),%rax
   1800802fc:	mov    %rax,0x3aaa780(%rbx)
   180080303:	lea    0x278(%r12),%rax
   18008030b:	mov    %rax,0x3aaa788(%rbx)
   180080312:	lea    0x280(%r12),%rax
   18008031a:	mov    %rax,0x3aaa790(%rbx)
   180080321:	lea    0x288(%r12),%rax
   180080329:	mov    %rax,0x3aaa798(%rbx)
   180080330:	mov    $0xffffffffffffffff,%rcx
   180080337:	xor    %edx,%edx
   180080339:	xor    %r8d,%r8d
   18008033c:	call   *0x60(%rsp)
   180080340:	cmp    $0x5,%r13d
   180080344:	jb     0x180080363
   180080346:	lea    0x3aaa000(%rbx),%rcx
   18008034d:	mov    $0x1000,%edx
   180080352:	mov    0x44(%rsp),%r8d
   180080357:	lea    0x30(%rsp),%r9
   18008035c:	call   *0x79f0(%r15)
   180080363:	cmp    $0x4,%r13d
   180080367:	jb     0x180080386
   180080369:	lea    0x87f000(%rbx),%rcx
   180080370:	mov    $0x1000,%edx
   180080375:	mov    0x40(%rsp),%r8d
   18008037a:	lea    0x30(%rsp),%r9
   18008037f:	call   *0x79f0(%r15)
   180080386:	cmp    $0x3,%r13d
   18008038a:	jb     0x1800803a9
   18008038c:	lea    0x87e000(%rbx),%rcx
   180080393:	mov    $0x1000,%edx
   180080398:	mov    0x3c(%rsp),%r8d
   18008039d:	lea    0x30(%rsp),%r9
   1800803a2:	call   *0x79f0(%r15)
   1800803a9:	cmp    $0x2,%r13d
   1800803ad:	jb     0x1800803cc
   1800803af:	lea    0x87d000(%rbx),%rcx
   1800803b6:	mov    $0x1000,%edx
   1800803bb:	mov    0x38(%rsp),%r8d
   1800803c0:	lea    0x30(%rsp),%r9
   1800803c5:	call   *0x79f0(%r15)
   1800803cc:	cmp    $0x1,%r13d
   1800803d0:	jb     0x1800803ef
   1800803d2:	lea    0x87c000(%rbx),%rcx
   1800803d9:	mov    $0x1000,%edx
   1800803de:	mov    0x34(%rsp),%r8d
   1800803e3:	lea    0x30(%rsp),%r9
   1800803e8:	call   *0x79f0(%r15)
   1800803ef:	add    $0x68,%rsp
   1800803f3:	pop    %r13
   1800803f5:	pop    %r12
   1800803f7:	pop    %rbx
   1800803f8:	pop    %r15
   1800803fa:	ret    
   1800803fb:	int3   
   1800803fc:	int3   
   1800803fd:	int3   
   1800803fe:	int3   
   1800803ff:	int3   
   180080400:	int3   
   180080401:	int3   
   180080402:	int3   
   180080403:	int3   
   180080404:	int3   
   180080405:	int3   
   180080406:	int3   
   180080407:	int3   
   180080408:	int3   
   180080409:	int3   
   18008040a:	int3   
   18008040b:	int3   
   18008040c:	int3   
   18008040d:	int3   
   18008040e:	int3   
   18008040f:	int3   
   180080410:	int3   
   180080411:	int3   
   180080412:	int3   
   180080413:	int3   
   180080414:	int3   
   180080415:	int3   
   180080416:	int3   
   180080417:	int3   
   180080418:	int3   
   180080419:	int3   
   18008041a:	int3   
   18008041b:	int3   
   18008041c:	int3   
   18008041d:	int3   
   18008041e:	int3   
   18008041f:	int3   
   180080420:	int3   
   180080421:	int3   
   180080422:	int3   
   180080423:	int3   
   180080424:	int3   
   180080425:	int3   
   180080426:	int3   
   180080427:	int3   
   180080428:	int3   
   180080429:	int3   
   18008042a:	int3   
   18008042b:	int3   
   18008042c:	int3   
   18008042d:	int3   
   18008042e:	int3   
   18008042f:	int3   
   180080430:	int3   
   180080431:	int3   
   180080432:	int3   
   180080433:	int3   
   180080434:	int3   
   180080435:	int3   
   180080436:	int3   
   180080437:	int3   
   180080438:	int3   
   180080439:	int3   
   18008043a:	int3   
   18008043b:	int3   
   18008043c:	int3   
   18008043d:	int3   
   18008043e:	int3   
   18008043f:	int3   
   180080440:	int3   
   180080441:	int3   
   180080442:	int3   
   180080443:	int3   
   180080444:	int3   
   180080445:	int3   
   180080446:	int3   
   180080447:	int3   
   180080448:	int3   
   180080449:	int3   
   18008044a:	int3   
   18008044b:	int3   
   18008044c:	int3   
   18008044d:	int3   
   18008044e:	int3   
   18008044f:	int3   
   180080450:	int3   
   180080451:	int3   
   180080452:	int3   
   180080453:	int3   
   180080454:	int3   
   180080455:	int3   
   180080456:	int3   
   180080457:	int3   
   180080458:	int3   
   180080459:	int3   
   18008045a:	int3   
   18008045b:	int3   
   18008045c:	int3   
   18008045d:	int3   
   18008045e:	int3   
   18008045f:	int3   
   180080460:	int3   
   180080461:	int3   
   180080462:	int3   
   180080463:	int3   
   180080464:	int3   
   180080465:	int3   
   180080466:	int3   
   180080467:	int3   
   180080468:	int3   
   180080469:	int3   
   18008046a:	int3   
   18008046b:	int3   
   18008046c:	int3   
   18008046d:	int3   
   18008046e:	int3   
   18008046f:	int3   
   180080470:	int3   
   180080471:	int3   
   180080472:	int3   
   180080473:	int3   
   180080474:	int3   
   180080475:	int3   
   180080476:	int3   
   180080477:	int3   
   180080478:	int3   
   180080479:	int3   
   18008047a:	int3   
   18008047b:	int3   
   18008047c:	int3   
   18008047d:	int3   
   18008047e:	int3   
   18008047f:	int3   
   180080480:	int3   
   180080481:	int3   
   180080482:	int3   
   180080483:	int3   
   180080484:	int3   
   180080485:	int3   
   180080486:	int3   
   180080487:	int3   
   180080488:	int3   
   180080489:	int3   
   18008048a:	int3   
   18008048b:	int3   
   18008048c:	int3   
   18008048d:	int3   
   18008048e:	int3   
   18008048f:	int3   
   180080490:	int3   
   180080491:	int3   
   180080492:	int3   
   180080493:	int3   
   180080494:	int3   
   180080495:	int3   
   180080496:	int3   
   180080497:	int3   
   180080498:	int3   
   180080499:	int3   
   18008049a:	int3   
   18008049b:	int3   
   18008049c:	int3   
   18008049d:	int3   
   18008049e:	int3   
   18008049f:	int3   
   1800804a0:	int3   
   1800804a1:	int3   
   1800804a2:	int3   
   1800804a3:	int3   
   1800804a4:	int3   
   1800804a5:	int3   
   1800804a6:	int3   
   1800804a7:	int3   
   1800804a8:	int3   
   1800804a9:	int3   
   1800804aa:	int3   
   1800804ab:	int3   
   1800804ac:	int3   
   1800804ad:	int3   
   1800804ae:	int3   
   1800804af:	int3   
   1800804b0:	int3   
   1800804b1:	int3   
   1800804b2:	int3   
   1800804b3:	int3   
   1800804b4:	int3   
   1800804b5:	int3   
   1800804b6:	int3   
   1800804b7:	int3   
   1800804b8:	int3   
   1800804b9:	int3   
   1800804ba:	int3   
   1800804bb:	int3   
   1800804bc:	int3   
   1800804bd:	int3   
   1800804be:	int3   
   1800804bf:	int3   
   1800804c0:	int3   
   1800804c1:	int3   
   1800804c2:	int3   
   1800804c3:	int3   
   1800804c4:	int3   
   1800804c5:	int3   
   1800804c6:	int3   
   1800804c7:	int3   
   1800804c8:	int3   
   1800804c9:	int3   
   1800804ca:	int3   
   1800804cb:	int3   
   1800804cc:	int3   
   1800804cd:	int3   
   1800804ce:	int3   
   1800804cf:	int3   
   1800804d0:	int3   
   1800804d1:	int3   
   1800804d2:	int3   
   1800804d3:	int3   
   1800804d4:	int3   
   1800804d5:	int3   
   1800804d6:	int3   
   1800804d7:	int3   
   1800804d8:	int3   
   1800804d9:	int3   
   1800804da:	int3   
   1800804db:	int3   
   1800804dc:	int3   
   1800804dd:	int3   
   1800804de:	int3   
   1800804df:	int3   
   1800804e0:	int3   
   1800804e1:	int3   
   1800804e2:	int3   
   1800804e3:	int3   
   1800804e4:	int3   
   1800804e5:	int3   
   1800804e6:	int3   
   1800804e7:	int3   
   1800804e8:	int3   
   1800804e9:	int3   
   1800804ea:	int3   
   1800804eb:	int3   
   1800804ec:	int3   
   1800804ed:	int3   
   1800804ee:	int3   
   1800804ef:	int3   
   1800804f0:	int3   
   1800804f1:	int3   
   1800804f2:	int3   
   1800804f3:	int3   
   1800804f4:	int3   
   1800804f5:	int3   
   1800804f6:	int3   
   1800804f7:	int3   
   1800804f8:	int3   
   1800804f9:	int3   
   1800804fa:	int3   
   1800804fb:	int3   
   1800804fc:	int3   
   1800804fd:	int3   
   1800804fe:	int3   
   1800804ff:	int3   
   180080500:	int3   
   180080501:	int3   
   180080502:	int3   
   180080503:	int3   
   180080504:	int3   
   180080505:	int3   
   180080506:	int3   
   180080507:	int3   
   180080508:	int3   
   180080509:	int3   
   18008050a:	int3   
   18008050b:	int3   
   18008050c:	int3   
   18008050d:	int3   
   18008050e:	int3   
   18008050f:	int3   
   180080510:	int3   
   180080511:	int3   
   180080512:	int3   
   180080513:	int3   
   180080514:	int3   
   180080515:	int3   
   180080516:	int3   
   180080517:	int3   
   180080518:	int3   
   180080519:	int3   
   18008051a:	int3   
   18008051b:	int3   
   18008051c:	int3   
   18008051d:	int3   
   18008051e:	int3   
   18008051f:	int3   
   180080520:	int3   
   180080521:	int3   
   180080522:	int3   
   180080523:	int3   
   180080524:	int3   
   180080525:	int3   
   180080526:	int3   
   180080527:	int3   
   180080528:	int3   
   180080529:	int3   
   18008052a:	int3   
   18008052b:	int3   
   18008052c:	int3   
   18008052d:	int3   
   18008052e:	int3   
   18008052f:	int3   
   180080530:	int3   
   180080531:	int3   
   180080532:	int3   
   180080533:	int3   
   180080534:	int3   
   180080535:	int3   
   180080536:	int3   
   180080537:	int3   
   180080538:	int3   
   180080539:	int3   
   18008053a:	int3   
   18008053b:	int3   
   18008053c:	int3   
   18008053d:	int3   
   18008053e:	int3   
   18008053f:	int3   
   180080540:	int3   
   180080541:	int3   
   180080542:	int3   
   180080543:	int3   
   180080544:	int3   
   180080545:	int3   
   180080546:	int3   
   180080547:	int3   
   180080548:	int3   
   180080549:	int3   
   18008054a:	int3   
   18008054b:	int3   
   18008054c:	int3   
   18008054d:	int3   
   18008054e:	int3   
   18008054f:	int3   
   180080550:	int3   
   180080551:	int3   
   180080552:	int3   
   180080553:	int3   
   180080554:	int3   
   180080555:	int3   
   180080556:	int3   
   180080557:	int3   
   180080558:	int3   
   180080559:	int3   
   18008055a:	int3   
   18008055b:	int3   
   18008055c:	int3   
   18008055d:	int3   
   18008055e:	int3   
   18008055f:	int3   
   180080560:	int3   
   180080561:	int3   
   180080562:	int3   
   180080563:	int3   
   180080564:	int3   
   180080565:	int3   
   180080566:	int3   
   180080567:	int3   
   180080568:	int3   
   180080569:	int3   
   18008056a:	int3   
   18008056b:	int3   
   18008056c:	int3   
   18008056d:	int3   
   18008056e:	int3   
   18008056f:	int3   
   180080570:	int3   
   180080571:	int3   
   180080572:	int3   
   180080573:	int3   
   180080574:	int3   
   180080575:	int3   
   180080576:	int3   
   180080577:	int3   
   180080578:	int3   
   180080579:	int3   
   18008057a:	int3   
   18008057b:	int3   
   18008057c:	int3   
   18008057d:	int3   
   18008057e:	int3   
   18008057f:	int3   
   180080580:	int3   
   180080581:	int3   
   180080582:	int3   
   180080583:	int3   
   180080584:	int3   
   180080585:	int3   
   180080586:	int3   
   180080587:	int3   
   180080588:	int3   
   180080589:	int3   
   18008058a:	int3   
   18008058b:	int3   
   18008058c:	int3   
   18008058d:	int3   
   18008058e:	int3   
   18008058f:	int3   
   180080590:	int3   
   180080591:	int3   
   180080592:	int3   
   180080593:	int3   
   180080594:	int3   
   180080595:	int3   
   180080596:	int3   
   180080597:	int3   
   180080598:	int3   
   180080599:	int3   
   18008059a:	int3   
   18008059b:	int3   
   18008059c:	int3   
   18008059d:	int3   
   18008059e:	int3   
   18008059f:	int3   
   1800805a0:	int3   
   1800805a1:	int3   
   1800805a2:	int3   
   1800805a3:	int3   
   1800805a4:	int3   
   1800805a5:	int3   
   1800805a6:	int3   
   1800805a7:	int3   
   1800805a8:	int3   
   1800805a9:	int3   
   1800805aa:	int3   
   1800805ab:	int3   
   1800805ac:	int3   
   1800805ad:	int3   
   1800805ae:	int3   
   1800805af:	int3   
   1800805b0:	int3   
   1800805b1:	int3   
   1800805b2:	int3   
   1800805b3:	int3   
   1800805b4:	int3   
   1800805b5:	int3   
   1800805b6:	int3   
   1800805b7:	int3   
   1800805b8:	int3   
   1800805b9:	int3   
   1800805ba:	int3   
   1800805bb:	int3   
   1800805bc:	int3   
   1800805bd:	int3   
   1800805be:	int3   
   1800805bf:	int3   
   1800805c0:	int3   
   1800805c1:	int3   
   1800805c2:	int3   
   1800805c3:	int3   
   1800805c4:	int3   
   1800805c5:	int3   
   1800805c6:	int3   
   1800805c7:	int3   
   1800805c8:	int3   
   1800805c9:	int3   
   1800805ca:	int3   
   1800805cb:	int3   
   1800805cc:	int3   
   1800805cd:	int3   
   1800805ce:	int3   
   1800805cf:	int3   
   1800805d0:	int3   
   1800805d1:	int3   
   1800805d2:	int3   
   1800805d3:	int3   
   1800805d4:	int3   
   1800805d5:	int3   
   1800805d6:	int3   
   1800805d7:	int3   
   1800805d8:	int3   
   1800805d9:	int3   
   1800805da:	int3   
   1800805db:	int3   
   1800805dc:	int3   
   1800805dd:	int3   
   1800805de:	int3   
   1800805df:	int3   
   1800805e0:	int3   
   1800805e1:	int3   
   1800805e2:	int3   
   1800805e3:	int3   
   1800805e4:	int3   
   1800805e5:	int3   
   1800805e6:	int3   
   1800805e7:	int3   
   1800805e8:	int3   
   1800805e9:	int3   
   1800805ea:	int3   
   1800805eb:	int3   
   1800805ec:	int3   
   1800805ed:	int3   
   1800805ee:	int3   
   1800805ef:	int3   
   1800805f0:	int3   
   1800805f1:	int3   
   1800805f2:	int3   
   1800805f3:	int3   
   1800805f4:	int3   
   1800805f5:	int3   
   1800805f6:	int3   
   1800805f7:	int3   
   1800805f8:	int3   
   1800805f9:	int3   
   1800805fa:	int3   
   1800805fb:	int3   
   1800805fc:	int3   
   1800805fd:	int3   
   1800805fe:	int3   
   1800805ff:	int3   
   180080600:	int3   
   180080601:	int3   
   180080602:	int3   
   180080603:	int3   
   180080604:	int3   
   180080605:	int3   
   180080606:	int3   
   180080607:	int3   
   180080608:	int3   
   180080609:	int3   
   18008060a:	int3   
   18008060b:	int3   
   18008060c:	int3   
   18008060d:	int3   
   18008060e:	int3   
   18008060f:	int3   
   180080610:	int3   
   180080611:	int3   
   180080612:	int3   
   180080613:	int3   
   180080614:	int3   
   180080615:	int3   
   180080616:	int3   
   180080617:	int3   
   180080618:	int3   
   180080619:	int3   
   18008061a:	int3   
   18008061b:	int3   
   18008061c:	int3   
   18008061d:	int3   
   18008061e:	int3   
   18008061f:	int3   
   180080620:	int3   
   180080621:	int3   
   180080622:	int3   
   180080623:	int3   
   180080624:	int3   
   180080625:	int3   
   180080626:	int3   
   180080627:	int3   
   180080628:	int3   
   180080629:	int3   
   18008062a:	int3   
   18008062b:	int3   
   18008062c:	int3   
   18008062d:	int3   
   18008062e:	int3   
   18008062f:	int3   
   180080630:	int3   
   180080631:	int3   
   180080632:	int3   
   180080633:	int3   
   180080634:	int3   
   180080635:	int3   
   180080636:	int3   
   180080637:	int3   
   180080638:	int3   
   180080639:	int3   
   18008063a:	int3   
   18008063b:	int3   
   18008063c:	int3   
   18008063d:	int3   
   18008063e:	int3   
   18008063f:	int3   
   180080640:	int3   
   180080641:	int3   
   180080642:	int3   
   180080643:	int3   
   180080644:	int3   
   180080645:	int3   
   180080646:	int3   
   180080647:	int3   
   180080648:	int3   
   180080649:	int3   
   18008064a:	int3   
   18008064b:	int3   
   18008064c:	int3   
   18008064d:	int3   
   18008064e:	int3   
   18008064f:	int3   
   180080650:	int3   
   180080651:	int3   
   180080652:	int3   
   180080653:	int3   
   180080654:	int3   
   180080655:	int3   
   180080656:	int3   
   180080657:	int3   
   180080658:	int3   
   180080659:	int3   
   18008065a:	int3   
   18008065b:	int3   
   18008065c:	int3   
   18008065d:	int3   
   18008065e:	int3   
   18008065f:	int3   
   180080660:	int3   
   180080661:	int3   
   180080662:	int3   
   180080663:	int3   
   180080664:	int3   
   180080665:	int3   
   180080666:	int3   
   180080667:	int3   
   180080668:	int3   
   180080669:	int3   
   18008066a:	int3   
   18008066b:	int3   
   18008066c:	int3   
   18008066d:	int3   
   18008066e:	int3   
   18008066f:	int3   
   180080670:	int3   
   180080671:	int3   
   180080672:	int3   
   180080673:	int3   
   180080674:	int3   
   180080675:	int3   
   180080676:	int3   
   180080677:	int3   
   180080678:	int3   
   180080679:	int3   
   18008067a:	int3   
   18008067b:	int3   
   18008067c:	int3   
   18008067d:	int3   
   18008067e:	int3   
   18008067f:	int3   
   180080680:	int3   
   180080681:	int3   
   180080682:	int3   
   180080683:	int3   
   180080684:	int3   
   180080685:	int3   
   180080686:	int3   
   180080687:	int3   
   180080688:	int3   
   180080689:	int3   
   18008068a:	int3   
   18008068b:	int3   
   18008068c:	int3   
   18008068d:	int3   
   18008068e:	int3   
   18008068f:	int3   
   180080690:	int3   
   180080691:	int3   
   180080692:	int3   
   180080693:	int3   
   180080694:	int3   
   180080695:	int3   
   180080696:	int3   
   180080697:	int3   
   180080698:	int3   
   180080699:	int3   
   18008069a:	int3   
   18008069b:	int3   
   18008069c:	int3   
   18008069d:	int3   
   18008069e:	int3   
   18008069f:	int3   
   1800806a0:	int3   
   1800806a1:	int3   
   1800806a2:	int3   
   1800806a3:	int3   
   1800806a4:	int3   
   1800806a5:	int3   
   1800806a6:	int3   
   1800806a7:	int3   
   1800806a8:	int3   
   1800806a9:	int3   
   1800806aa:	int3   
   1800806ab:	int3   
   1800806ac:	int3   
   1800806ad:	int3   
   1800806ae:	int3   
   1800806af:	int3   
   1800806b0:	int3   
   1800806b1:	int3   
   1800806b2:	int3   
   1800806b3:	int3   
   1800806b4:	int3   
   1800806b5:	int3   
   1800806b6:	int3   
   1800806b7:	int3   
   1800806b8:	int3   
   1800806b9:	int3   
   1800806ba:	int3   
   1800806bb:	int3   
   1800806bc:	int3   
   1800806bd:	int3   
   1800806be:	int3   
   1800806bf:	int3   
   1800806c0:	int3   
   1800806c1:	int3   
   1800806c2:	int3   
   1800806c3:	int3   
   1800806c4:	int3   
   1800806c5:	int3   
   1800806c6:	int3   
   1800806c7:	int3   
   1800806c8:	int3   
   1800806c9:	int3   
   1800806ca:	int3   
   1800806cb:	int3   
   1800806cc:	int3   
   1800806cd:	int3   
   1800806ce:	int3   
   1800806cf:	int3   
   1800806d0:	int3   
   1800806d1:	int3   
   1800806d2:	int3   
   1800806d3:	int3   
   1800806d4:	int3   
   1800806d5:	int3   
   1800806d6:	int3   
   1800806d7:	int3   
   1800806d8:	int3   
   1800806d9:	int3   
   1800806da:	int3   
   1800806db:	int3   
   1800806dc:	int3   
   1800806dd:	int3   
   1800806de:	int3   
   1800806df:	int3   
   1800806e0:	int3   
   1800806e1:	int3   
   1800806e2:	int3   
   1800806e3:	int3   
   1800806e4:	int3   
   1800806e5:	int3   
   1800806e6:	int3   
   1800806e7:	int3   
   1800806e8:	int3   
   1800806e9:	int3   
   1800806ea:	int3   
   1800806eb:	int3   
   1800806ec:	int3   
   1800806ed:	int3   
   1800806ee:	int3   
   1800806ef:	int3   
   1800806f0:	int3   
   1800806f1:	int3   
   1800806f2:	int3   
   1800806f3:	int3   
   1800806f4:	int3   
   1800806f5:	int3   
   1800806f6:	int3   
   1800806f7:	int3   
   1800806f8:	int3   
   1800806f9:	int3   
   1800806fa:	int3   
   1800806fb:	int3   
   1800806fc:	int3   
   1800806fd:	int3   
   1800806fe:	int3   
   1800806ff:	int3   
   180080700:	int3   
   180080701:	int3   
   180080702:	int3   
   180080703:	int3   
   180080704:	int3   
   180080705:	int3   
   180080706:	int3   
   180080707:	int3   
   180080708:	int3   
   180080709:	int3   
   18008070a:	int3   
   18008070b:	int3   
   18008070c:	int3   
   18008070d:	int3   
   18008070e:	int3   
   18008070f:	int3   
   180080710:	int3   
   180080711:	int3   
   180080712:	int3   
   180080713:	int3   
   180080714:	int3   
   180080715:	int3   
   180080716:	int3   
   180080717:	int3   
   180080718:	int3   
   180080719:	int3   
   18008071a:	int3   
   18008071b:	int3   
   18008071c:	int3   
   18008071d:	int3   
   18008071e:	int3   
   18008071f:	int3   
   180080720:	int3   
   180080721:	int3   
   180080722:	int3   
   180080723:	int3   
   180080724:	int3   
   180080725:	int3   
   180080726:	int3   
   180080727:	int3   
   180080728:	int3   
   180080729:	int3   
   18008072a:	int3   
   18008072b:	int3   
   18008072c:	int3   
   18008072d:	int3   
   18008072e:	int3   
   18008072f:	int3   
   180080730:	int3   
   180080731:	int3   
   180080732:	int3   
   180080733:	int3   
   180080734:	int3   
   180080735:	int3   
   180080736:	int3   
   180080737:	int3   
   180080738:	int3   
   180080739:	int3   
   18008073a:	int3   
   18008073b:	int3   
   18008073c:	int3   
   18008073d:	int3   
   18008073e:	int3   
   18008073f:	int3   
   180080740:	int3   
   180080741:	int3   
   180080742:	int3   
   180080743:	int3   
   180080744:	int3   
   180080745:	int3   
   180080746:	int3   
   180080747:	int3   
   180080748:	int3   
   180080749:	int3   
   18008074a:	int3   
   18008074b:	int3   
   18008074c:	int3   
   18008074d:	int3   
   18008074e:	int3   
   18008074f:	int3   
   180080750:	int3   
   180080751:	int3   
   180080752:	int3   
   180080753:	int3   
   180080754:	int3   
   180080755:	int3   
   180080756:	int3   
   180080757:	int3   
   180080758:	int3   
   180080759:	int3   
   18008075a:	int3   
   18008075b:	int3   
   18008075c:	int3   
   18008075d:	int3   
   18008075e:	int3   
   18008075f:	int3   
   180080760:	int3   
   180080761:	int3   
   180080762:	int3   
   180080763:	int3   
   180080764:	int3   
   180080765:	int3   
   180080766:	int3   
   180080767:	int3   
   180080768:	int3   
   180080769:	int3   
   18008076a:	int3   
   18008076b:	int3   
   18008076c:	int3   
   18008076d:	int3   
   18008076e:	int3   
   18008076f:	int3   
   180080770:	int3   
   180080771:	int3   
   180080772:	int3   
   180080773:	int3   
   180080774:	int3   
   180080775:	int3   
   180080776:	int3   
   180080777:	int3   
   180080778:	int3   
   180080779:	int3   
   18008077a:	int3   
   18008077b:	int3   
   18008077c:	int3   
   18008077d:	int3   
   18008077e:	int3   
   18008077f:	int3   
   180080780:	int3   
   180080781:	int3   
   180080782:	int3   
   180080783:	int3   
   180080784:	int3   
   180080785:	int3   
   180080786:	int3   
   180080787:	int3   
   180080788:	int3   
   180080789:	int3   
   18008078a:	int3   
   18008078b:	int3   
   18008078c:	int3   
   18008078d:	int3   
   18008078e:	int3   
   18008078f:	int3   
   180080790:	int3   
   180080791:	int3   
   180080792:	int3   
   180080793:	int3   
   180080794:	int3   
   180080795:	int3   
   180080796:	int3   
   180080797:	int3   
   180080798:	int3   
   180080799:	int3   
   18008079a:	int3   
   18008079b:	int3   
   18008079c:	int3   
   18008079d:	int3   
   18008079e:	int3   
   18008079f:	int3   
   1800807a0:	int3   
   1800807a1:	int3   
   1800807a2:	int3   
   1800807a3:	int3   
   1800807a4:	int3   
   1800807a5:	int3   
   1800807a6:	int3   
   1800807a7:	int3   
   1800807a8:	int3   
   1800807a9:	int3   
   1800807aa:	int3   
   1800807ab:	int3   
   1800807ac:	int3   
   1800807ad:	int3   
   1800807ae:	int3   
   1800807af:	int3   
   1800807b0:	int3   
   1800807b1:	int3   
   1800807b2:	int3   
   1800807b3:	int3   
   1800807b4:	int3   
   1800807b5:	int3   
   1800807b6:	int3   
   1800807b7:	int3   
   1800807b8:	int3   
   1800807b9:	int3   
   1800807ba:	int3   
   1800807bb:	int3   
   1800807bc:	int3   
   1800807bd:	int3   
   1800807be:	int3   
   1800807bf:	int3   
   1800807c0:	int3   
   1800807c1:	int3   
   1800807c2:	int3   
   1800807c3:	int3   
   1800807c4:	int3   
   1800807c5:	int3   
   1800807c6:	int3   
   1800807c7:	int3   
   1800807c8:	int3   
   1800807c9:	int3   
   1800807ca:	int3   
   1800807cb:	int3   
   1800807cc:	int3   
   1800807cd:	int3   
   1800807ce:	int3   
   1800807cf:	int3   
   1800807d0:	int3   
   1800807d1:	int3   
   1800807d2:	int3   
   1800807d3:	int3   
   1800807d4:	int3   
   1800807d5:	int3   
   1800807d6:	int3   
   1800807d7:	int3   
   1800807d8:	int3   
   1800807d9:	int3   
   1800807da:	int3   
   1800807db:	int3   
   1800807dc:	int3   
   1800807dd:	int3   
   1800807de:	int3   
   1800807df:	int3   
   1800807e0:	int3   
   1800807e1:	int3   
   1800807e2:	int3   
   1800807e3:	int3   
   1800807e4:	int3   
   1800807e5:	int3   
   1800807e6:	int3   
   1800807e7:	int3   
   1800807e8:	int3   
   1800807e9:	int3   
   1800807ea:	int3   
   1800807eb:	int3   
   1800807ec:	int3   
   1800807ed:	int3   
   1800807ee:	int3   
   1800807ef:	int3   
   1800807f0:	int3   
   1800807f1:	int3   
   1800807f2:	int3   
   1800807f3:	int3   
   1800807f4:	int3   
   1800807f5:	int3   
   1800807f6:	int3   
   1800807f7:	int3   
   1800807f8:	int3   
   1800807f9:	int3   
   1800807fa:	int3   
   1800807fb:	int3   
   1800807fc:	int3   
   1800807fd:	int3   
   1800807fe:	int3   
   1800807ff:	int3   
   180080800:	int3   
   180080801:	int3   
   180080802:	int3   
   180080803:	int3   
   180080804:	int3   
   180080805:	int3   
   180080806:	int3   
   180080807:	int3   
   180080808:	int3   
   180080809:	int3   
   18008080a:	int3   
   18008080b:	int3   
   18008080c:	int3   
   18008080d:	int3   
   18008080e:	int3   
   18008080f:	int3   
   180080810:	int3   
   180080811:	int3   
   180080812:	int3   
   180080813:	int3   
   180080814:	int3   
   180080815:	int3   
   180080816:	int3   
   180080817:	int3   
   180080818:	int3   
   180080819:	int3   
   18008081a:	int3   
   18008081b:	int3   
   18008081c:	int3   
   18008081d:	int3   
   18008081e:	int3   
   18008081f:	int3   
   180080820:	int3   
   180080821:	int3   
   180080822:	int3   
   180080823:	int3   
   180080824:	int3   
   180080825:	int3   
   180080826:	int3   
   180080827:	int3   
   180080828:	int3   
   180080829:	int3   
   18008082a:	int3   
   18008082b:	int3   
   18008082c:	int3   
   18008082d:	int3   
   18008082e:	int3   
   18008082f:	int3   
   180080830:	int3   
   180080831:	int3   
   180080832:	int3   
   180080833:	int3   
   180080834:	int3   
   180080835:	int3   
   180080836:	int3   
   180080837:	int3   
   180080838:	int3   
   180080839:	int3   
   18008083a:	int3   
   18008083b:	int3   
   18008083c:	int3   
   18008083d:	int3   
   18008083e:	int3   
   18008083f:	int3   
   180080840:	int3   
   180080841:	int3   
   180080842:	int3   
   180080843:	int3   
   180080844:	int3   
   180080845:	int3   
   180080846:	int3   
   180080847:	int3   
   180080848:	int3   
   180080849:	int3   
   18008084a:	int3   
   18008084b:	int3   
   18008084c:	int3   
   18008084d:	int3   
   18008084e:	int3   
   18008084f:	int3   
   180080850:	int3   
   180080851:	int3   
   180080852:	int3   
   180080853:	int3   
   180080854:	int3   
   180080855:	int3   
   180080856:	int3   
   180080857:	int3   
   180080858:	int3   
   180080859:	int3   
   18008085a:	int3   
   18008085b:	int3   
   18008085c:	int3   
   18008085d:	int3   
   18008085e:	int3   
   18008085f:	int3   
   180080860:	int3   
   180080861:	int3   
   180080862:	int3   
   180080863:	int3   
   180080864:	int3   
   180080865:	int3   
   180080866:	int3   
   180080867:	int3   
   180080868:	int3   
   180080869:	int3   
   18008086a:	int3   
   18008086b:	int3   
   18008086c:	int3   
   18008086d:	int3   
   18008086e:	int3   
   18008086f:	int3   
   180080870:	int3   
   180080871:	int3   
   180080872:	int3   
   180080873:	int3   
   180080874:	int3   
   180080875:	int3   
   180080876:	int3   
   180080877:	int3   
   180080878:	int3   
   180080879:	int3   
   18008087a:	int3   
   18008087b:	int3   
   18008087c:	int3   
   18008087d:	int3   
   18008087e:	int3   
   18008087f:	int3   
   180080880:	int3   
   180080881:	int3   
   180080882:	int3   
   180080883:	int3   
   180080884:	int3   
   180080885:	int3   
   180080886:	int3   
   180080887:	int3   
   180080888:	int3   
   180080889:	int3   
   18008088a:	int3   
   18008088b:	int3   
   18008088c:	int3   
   18008088d:	int3   
   18008088e:	int3   
   18008088f:	int3   
   180080890:	int3   
   180080891:	int3   
   180080892:	int3   
   180080893:	int3   
   180080894:	int3   
   180080895:	int3   
   180080896:	int3   
   180080897:	int3   
   180080898:	int3   
   180080899:	int3   
   18008089a:	int3   
   18008089b:	int3   
   18008089c:	int3   
   18008089d:	int3   
   18008089e:	int3   
   18008089f:	int3   
   1800808a0:	int3   
   1800808a1:	int3   
   1800808a2:	int3   
   1800808a3:	int3   
   1800808a4:	int3   
   1800808a5:	int3   
   1800808a6:	int3   
   1800808a7:	int3   
   1800808a8:	int3   
   1800808a9:	int3   
   1800808aa:	int3   
   1800808ab:	int3   
   1800808ac:	int3   
   1800808ad:	int3   
   1800808ae:	int3   
   1800808af:	int3   
   1800808b0:	int3   
   1800808b1:	int3   
   1800808b2:	int3   
   1800808b3:	int3   
   1800808b4:	int3   
   1800808b5:	int3   
   1800808b6:	int3   
   1800808b7:	int3   
   1800808b8:	int3   
   1800808b9:	int3   
   1800808ba:	int3   
   1800808bb:	int3   
   1800808bc:	int3   
   1800808bd:	int3   
   1800808be:	int3   
   1800808bf:	int3   
   1800808c0:	int3   
   1800808c1:	int3   
   1800808c2:	int3   
   1800808c3:	int3   
   1800808c4:	int3   
   1800808c5:	int3   
   1800808c6:	int3   
   1800808c7:	int3   
   1800808c8:	int3   
   1800808c9:	int3   
   1800808ca:	int3   
   1800808cb:	int3   
   1800808cc:	int3   
   1800808cd:	int3   
   1800808ce:	int3   
   1800808cf:	int3   
   1800808d0:	int3   
   1800808d1:	int3   
   1800808d2:	int3   
   1800808d3:	int3   
   1800808d4:	int3   
   1800808d5:	int3   
   1800808d6:	int3   
   1800808d7:	int3   
   1800808d8:	int3   
   1800808d9:	int3   
   1800808da:	int3   
   1800808db:	int3   
   1800808dc:	int3   
   1800808dd:	int3   
   1800808de:	int3   
   1800808df:	int3   
   1800808e0:	int3   
   1800808e1:	int3   
   1800808e2:	int3   
   1800808e3:	int3   
   1800808e4:	int3   
   1800808e5:	int3   
   1800808e6:	int3   
   1800808e7:	int3   
   1800808e8:	int3   
   1800808e9:	int3   
   1800808ea:	int3   
   1800808eb:	int3   
   1800808ec:	int3   
   1800808ed:	int3   
   1800808ee:	int3   
   1800808ef:	int3   
   1800808f0:	int3   
   1800808f1:	int3   
   1800808f2:	int3   
   1800808f3:	int3   
   1800808f4:	int3   
   1800808f5:	int3   
   1800808f6:	int3   
   1800808f7:	int3   
   1800808f8:	int3   
   1800808f9:	int3   
   1800808fa:	int3   
   1800808fb:	int3   
   1800808fc:	int3   
   1800808fd:	int3   
   1800808fe:	int3   
   1800808ff:	int3   
   180080900:	int3   
   180080901:	int3   
   180080902:	int3   
   180080903:	int3   
   180080904:	int3   
   180080905:	int3   
   180080906:	int3   
   180080907:	int3   
   180080908:	int3   
   180080909:	int3   
   18008090a:	int3   
   18008090b:	int3   
   18008090c:	int3   
   18008090d:	int3   
   18008090e:	int3   
   18008090f:	int3   
   180080910:	int3   
   180080911:	int3   
   180080912:	int3   
   180080913:	int3   
   180080914:	int3   
   180080915:	int3   
   180080916:	int3   
   180080917:	int3   
   180080918:	int3   
   180080919:	int3   
   18008091a:	int3   
   18008091b:	int3   
   18008091c:	int3   
   18008091d:	int3   
   18008091e:	int3   
   18008091f:	int3   
   180080920:	int3   
   180080921:	int3   
   180080922:	int3   
   180080923:	int3   
   180080924:	int3   
   180080925:	int3   
   180080926:	int3   
   180080927:	int3   
   180080928:	int3   
   180080929:	int3   
   18008092a:	int3   
   18008092b:	int3   
   18008092c:	int3   
   18008092d:	int3   
   18008092e:	int3   
   18008092f:	int3   
   180080930:	int3   
   180080931:	int3   
   180080932:	int3   
   180080933:	int3   
   180080934:	int3   
   180080935:	int3   
   180080936:	int3   
   180080937:	int3   
   180080938:	int3   
   180080939:	int3   
   18008093a:	int3   
   18008093b:	int3   
   18008093c:	int3   
   18008093d:	int3   
   18008093e:	int3   
   18008093f:	int3   
   180080940:	int3   
   180080941:	int3   
   180080942:	int3   
   180080943:	int3   
   180080944:	int3   
   180080945:	int3   
   180080946:	int3   
   180080947:	int3   
   180080948:	int3   
   180080949:	int3   
   18008094a:	int3   
   18008094b:	int3   
   18008094c:	int3   
   18008094d:	int3   
   18008094e:	int3   
   18008094f:	int3   
   180080950:	int3   
   180080951:	int3   
   180080952:	int3   
   180080953:	int3   
   180080954:	int3   
   180080955:	int3   
   180080956:	int3   
   180080957:	int3   
   180080958:	int3   
   180080959:	int3   
   18008095a:	int3   
   18008095b:	int3   
   18008095c:	int3   
   18008095d:	int3   
   18008095e:	int3   
   18008095f:	int3   
   180080960:	int3   
   180080961:	int3   
   180080962:	int3   
   180080963:	int3   
   180080964:	int3   
   180080965:	int3   
   180080966:	int3   
   180080967:	int3   
   180080968:	int3   
   180080969:	int3   
   18008096a:	int3   
   18008096b:	int3   
   18008096c:	int3   
   18008096d:	int3   
   18008096e:	int3   
   18008096f:	int3   
   180080970:	int3   
   180080971:	int3   
   180080972:	int3   
   180080973:	int3   
   180080974:	int3   
   180080975:	int3   
   180080976:	int3   
   180080977:	int3   
   180080978:	int3   
   180080979:	int3   
   18008097a:	int3   
   18008097b:	int3   
   18008097c:	int3   
   18008097d:	int3   
   18008097e:	int3   
   18008097f:	int3   
   180080980:	int3   
   180080981:	int3   
   180080982:	int3   
   180080983:	int3   
   180080984:	int3   
   180080985:	int3   
   180080986:	int3   
   180080987:	int3   
   180080988:	int3   
   180080989:	int3   
   18008098a:	int3   
   18008098b:	int3   
   18008098c:	int3   
   18008098d:	int3   
   18008098e:	int3   
   18008098f:	int3   
   180080990:	int3   
   180080991:	int3   
   180080992:	int3   
   180080993:	int3   
   180080994:	int3   
   180080995:	int3   
   180080996:	int3   
   180080997:	int3   
   180080998:	int3   
   180080999:	int3   
   18008099a:	int3   
   18008099b:	int3   
   18008099c:	int3   
   18008099d:	int3   
   18008099e:	int3   
   18008099f:	int3   
   1800809a0:	int3   
   1800809a1:	int3   
   1800809a2:	int3   
   1800809a3:	int3   
   1800809a4:	int3   
   1800809a5:	int3   
   1800809a6:	int3   
   1800809a7:	int3   
   1800809a8:	int3   
   1800809a9:	int3   
   1800809aa:	int3   
   1800809ab:	int3   
   1800809ac:	int3   
   1800809ad:	int3   
   1800809ae:	int3   
   1800809af:	int3   
   1800809b0:	int3   
   1800809b1:	int3   
   1800809b2:	int3   
   1800809b3:	int3   
   1800809b4:	int3   
   1800809b5:	int3   
   1800809b6:	int3   
   1800809b7:	int3   
   1800809b8:	int3   
   1800809b9:	int3   
   1800809ba:	int3   
   1800809bb:	int3   
   1800809bc:	int3   
   1800809bd:	int3   
   1800809be:	int3   
   1800809bf:	int3   
   1800809c0:	int3   
   1800809c1:	int3   
   1800809c2:	int3   
   1800809c3:	int3   
   1800809c4:	int3   
   1800809c5:	int3   
   1800809c6:	int3   
   1800809c7:	int3   
   1800809c8:	int3   
   1800809c9:	int3   
   1800809ca:	int3   
   1800809cb:	int3   
   1800809cc:	int3   
   1800809cd:	int3   
   1800809ce:	int3   
   1800809cf:	int3   
   1800809d0:	int3   
   1800809d1:	int3   
   1800809d2:	int3   
   1800809d3:	int3   
   1800809d4:	int3   
   1800809d5:	int3   
   1800809d6:	int3   
   1800809d7:	int3   
   1800809d8:	int3   
   1800809d9:	int3   
   1800809da:	int3   
   1800809db:	int3   
   1800809dc:	int3   
   1800809dd:	int3   
   1800809de:	int3   
   1800809df:	int3   
   1800809e0:	int3   
   1800809e1:	int3   
   1800809e2:	int3   
   1800809e3:	int3   
   1800809e4:	int3   
   1800809e5:	int3   
   1800809e6:	int3   
   1800809e7:	int3   
   1800809e8:	int3   
   1800809e9:	int3   
   1800809ea:	int3   
   1800809eb:	int3   
   1800809ec:	int3   
   1800809ed:	int3   
   1800809ee:	int3   
   1800809ef:	int3   
   1800809f0:	int3   
   1800809f1:	int3   
   1800809f2:	int3   
   1800809f3:	int3   
   1800809f4:	int3   
   1800809f5:	int3   
   1800809f6:	int3   
   1800809f7:	int3   
   1800809f8:	int3   
   1800809f9:	int3   
   1800809fa:	int3   
   1800809fb:	int3   
   1800809fc:	int3   
   1800809fd:	int3   
   1800809fe:	int3   
   1800809ff:	int3   
   180080a00:	int3   
   180080a01:	int3   
   180080a02:	int3   
   180080a03:	int3   
   180080a04:	int3   
   180080a05:	int3   
   180080a06:	int3   
   180080a07:	int3   
   180080a08:	int3   
   180080a09:	int3   
   180080a0a:	int3   
   180080a0b:	int3   
   180080a0c:	int3   
   180080a0d:	int3   
   180080a0e:	int3   
   180080a0f:	int3   
   180080a10:	int3   
   180080a11:	int3   
   180080a12:	int3   
   180080a13:	int3   
   180080a14:	int3   
   180080a15:	int3   
   180080a16:	int3   
   180080a17:	int3   
   180080a18:	int3   
   180080a19:	int3   
   180080a1a:	int3   
   180080a1b:	int3   
   180080a1c:	int3   
   180080a1d:	int3   
   180080a1e:	int3   
   180080a1f:	int3   
   180080a20:	int3   
   180080a21:	int3   
   180080a22:	int3   
   180080a23:	int3   
   180080a24:	int3   
   180080a25:	int3   
   180080a26:	int3   
   180080a27:	int3   
   180080a28:	int3   
   180080a29:	int3   
   180080a2a:	int3   
   180080a2b:	int3   
   180080a2c:	int3   
   180080a2d:	int3   
   180080a2e:	int3   
   180080a2f:	int3   
   180080a30:	int3   
   180080a31:	int3   
   180080a32:	int3   
   180080a33:	int3   
   180080a34:	int3   
   180080a35:	int3   
   180080a36:	int3   
   180080a37:	int3   
   180080a38:	int3   
   180080a39:	int3   
   180080a3a:	int3   
   180080a3b:	int3   
   180080a3c:	int3   
   180080a3d:	int3   
   180080a3e:	int3   
   180080a3f:	int3   
   180080a40:	int3   
   180080a41:	int3   
   180080a42:	int3   
   180080a43:	int3   
   180080a44:	int3   
   180080a45:	int3   
   180080a46:	int3   
   180080a47:	int3   
   180080a48:	int3   
   180080a49:	int3   
   180080a4a:	int3   
   180080a4b:	int3   
   180080a4c:	int3   
   180080a4d:	int3   
   180080a4e:	int3   
   180080a4f:	int3   
   180080a50:	int3   
   180080a51:	int3   
   180080a52:	int3   
   180080a53:	int3   
   180080a54:	int3   
   180080a55:	int3   
   180080a56:	int3   
   180080a57:	int3   
   180080a58:	int3   
   180080a59:	int3   
   180080a5a:	int3   
   180080a5b:	int3   
   180080a5c:	int3   
   180080a5d:	int3   
   180080a5e:	int3   
   180080a5f:	int3   
   180080a60:	int3   
   180080a61:	int3   
   180080a62:	int3   
   180080a63:	int3   
   180080a64:	int3   
   180080a65:	int3   
   180080a66:	int3   
   180080a67:	int3   
   180080a68:	int3   
   180080a69:	int3   
   180080a6a:	int3   
   180080a6b:	int3   
   180080a6c:	int3   
   180080a6d:	int3   
   180080a6e:	int3   
   180080a6f:	int3   
   180080a70:	int3   
   180080a71:	int3   
   180080a72:	int3   
   180080a73:	int3   
   180080a74:	int3   
   180080a75:	int3   
   180080a76:	int3   
   180080a77:	int3   
   180080a78:	int3   
   180080a79:	int3   
   180080a7a:	int3   
   180080a7b:	int3   
   180080a7c:	int3   
   180080a7d:	int3   
   180080a7e:	int3   
   180080a7f:	int3   
   180080a80:	int3   
   180080a81:	int3   
   180080a82:	int3   
   180080a83:	int3   
   180080a84:	int3   
   180080a85:	int3   
   180080a86:	int3   
   180080a87:	int3   
   180080a88:	int3   
   180080a89:	int3   
   180080a8a:	int3   
   180080a8b:	int3   
   180080a8c:	int3   
   180080a8d:	int3   
   180080a8e:	int3   
   180080a8f:	int3   
   180080a90:	int3   
   180080a91:	int3   
   180080a92:	int3   
   180080a93:	int3   
   180080a94:	int3   
   180080a95:	int3   
   180080a96:	int3   
   180080a97:	int3   
   180080a98:	int3   
   180080a99:	int3   
   180080a9a:	int3   
   180080a9b:	int3   
   180080a9c:	int3   
   180080a9d:	int3   
   180080a9e:	int3   
   180080a9f:	int3   
   180080aa0:	int3   
   180080aa1:	int3   
   180080aa2:	int3   
   180080aa3:	int3   
   180080aa4:	int3   
   180080aa5:	int3   
   180080aa6:	int3   
   180080aa7:	int3   
   180080aa8:	int3   
   180080aa9:	int3   
   180080aaa:	int3   
   180080aab:	int3   
   180080aac:	int3   
   180080aad:	int3   
   180080aae:	int3   
   180080aaf:	int3   
   180080ab0:	int3   
   180080ab1:	int3   
   180080ab2:	int3   
   180080ab3:	int3   
   180080ab4:	int3   
   180080ab5:	int3   
   180080ab6:	int3   
   180080ab7:	int3   
   180080ab8:	int3   
   180080ab9:	int3   
   180080aba:	int3   
   180080abb:	int3   
   180080abc:	int3   
   180080abd:	int3   
   180080abe:	int3   
   180080abf:	int3   
   180080ac0:	int3   
   180080ac1:	int3   
   180080ac2:	int3   
   180080ac3:	int3   
   180080ac4:	int3   
   180080ac5:	int3   
   180080ac6:	int3   
   180080ac7:	int3   
   180080ac8:	int3   
   180080ac9:	int3   
   180080aca:	int3   
   180080acb:	int3   
   180080acc:	int3   
   180080acd:	int3   
   180080ace:	int3   
   180080acf:	int3   
   180080ad0:	int3   
   180080ad1:	int3   
   180080ad2:	int3   
   180080ad3:	int3   
   180080ad4:	int3   
   180080ad5:	int3   
   180080ad6:	int3   
   180080ad7:	int3   
   180080ad8:	int3   
   180080ad9:	int3   
   180080ada:	int3   
   180080adb:	int3   
   180080adc:	int3   
   180080add:	int3   
   180080ade:	int3   
   180080adf:	int3   
   180080ae0:	int3   
   180080ae1:	int3   
   180080ae2:	int3   
   180080ae3:	int3   
   180080ae4:	int3   
   180080ae5:	int3   
   180080ae6:	int3   
   180080ae7:	int3   
   180080ae8:	int3   
   180080ae9:	int3   
   180080aea:	int3   
   180080aeb:	int3   
   180080aec:	int3   
   180080aed:	int3   
   180080aee:	int3   
   180080aef:	int3   
   180080af0:	int3   
   180080af1:	int3   
   180080af2:	int3   
   180080af3:	int3   
   180080af4:	int3   
   180080af5:	int3   
   180080af6:	int3   
   180080af7:	int3   
   180080af8:	int3   
   180080af9:	int3   
   180080afa:	int3   
   180080afb:	int3   
   180080afc:	int3   
   180080afd:	int3   
   180080afe:	int3   
   180080aff:	int3   
   180080b00:	int3   
   180080b01:	int3   
   180080b02:	int3   
   180080b03:	int3   
   180080b04:	int3   
   180080b05:	int3   
   180080b06:	int3   
   180080b07:	int3   
   180080b08:	int3   
   180080b09:	int3   
   180080b0a:	int3   
   180080b0b:	int3   
   180080b0c:	int3   
   180080b0d:	int3   
   180080b0e:	int3   
   180080b0f:	int3   
   180080b10:	int3   
   180080b11:	int3   
   180080b12:	int3   
   180080b13:	int3   
   180080b14:	int3   
   180080b15:	int3   
   180080b16:	int3   
   180080b17:	int3   
   180080b18:	int3   
   180080b19:	int3   
   180080b1a:	int3   
   180080b1b:	int3   
   180080b1c:	int3   
   180080b1d:	int3   
   180080b1e:	int3   
   180080b1f:	int3   
   180080b20:	int3   
   180080b21:	int3   
   180080b22:	int3   
   180080b23:	int3   
   180080b24:	int3   
   180080b25:	int3   
   180080b26:	int3   
   180080b27:	int3   
   180080b28:	int3   
   180080b29:	int3   
   180080b2a:	int3   
   180080b2b:	int3   
   180080b2c:	int3   
   180080b2d:	int3   
   180080b2e:	int3   
   180080b2f:	int3   
   180080b30:	int3   
   180080b31:	int3   
   180080b32:	int3   
   180080b33:	int3   
   180080b34:	int3   
   180080b35:	int3   
   180080b36:	int3   
   180080b37:	int3   
   180080b38:	int3   
   180080b39:	int3   
   180080b3a:	int3   
   180080b3b:	int3   
   180080b3c:	int3   
   180080b3d:	int3   
   180080b3e:	int3   
   180080b3f:	int3   
   180080b40:	int3   
   180080b41:	int3   
   180080b42:	int3   
   180080b43:	int3   
   180080b44:	int3   
   180080b45:	int3   
   180080b46:	int3   
   180080b47:	int3   
   180080b48:	int3   
   180080b49:	int3   
   180080b4a:	int3   
   180080b4b:	int3   
   180080b4c:	int3   
   180080b4d:	int3   
   180080b4e:	int3   
   180080b4f:	int3   
   180080b50:	int3   
   180080b51:	int3   
   180080b52:	int3   
   180080b53:	int3   
   180080b54:	int3   
   180080b55:	int3   
   180080b56:	int3   
   180080b57:	int3   
   180080b58:	int3   
   180080b59:	int3   
   180080b5a:	int3   
   180080b5b:	int3   
   180080b5c:	int3   
   180080b5d:	int3   
   180080b5e:	int3   
   180080b5f:	int3   
   180080b60:	int3   
   180080b61:	int3   
   180080b62:	int3   
   180080b63:	int3   
   180080b64:	int3   
   180080b65:	int3   
   180080b66:	int3   
   180080b67:	int3   
   180080b68:	int3   
   180080b69:	int3   
   180080b6a:	int3   
   180080b6b:	int3   
   180080b6c:	int3   
   180080b6d:	int3   
   180080b6e:	int3   
   180080b6f:	int3   
   180080b70:	int3   
   180080b71:	int3   
   180080b72:	int3   
   180080b73:	int3   
   180080b74:	int3   
   180080b75:	int3   
   180080b76:	int3   
   180080b77:	int3   
   180080b78:	int3   
   180080b79:	int3   
   180080b7a:	int3   
   180080b7b:	int3   
   180080b7c:	int3   
   180080b7d:	int3   
   180080b7e:	int3   
   180080b7f:	int3   
   180080b80:	int3   
   180080b81:	int3   
   180080b82:	int3   
   180080b83:	int3   
   180080b84:	int3   
   180080b85:	int3   
   180080b86:	int3   
   180080b87:	int3   
   180080b88:	int3   
   180080b89:	int3   
   180080b8a:	int3   
   180080b8b:	int3   
   180080b8c:	int3   
   180080b8d:	int3   
   180080b8e:	int3   
   180080b8f:	int3   
   180080b90:	int3   
   180080b91:	int3   
   180080b92:	int3   
   180080b93:	int3   
   180080b94:	int3   
   180080b95:	int3   
   180080b96:	int3   
   180080b97:	int3   
   180080b98:	int3   
   180080b99:	int3   
   180080b9a:	int3   
   180080b9b:	int3   
   180080b9c:	int3   
   180080b9d:	int3   
   180080b9e:	int3   
   180080b9f:	int3   
   180080ba0:	int3   
   180080ba1:	int3   
   180080ba2:	int3   
   180080ba3:	int3   
   180080ba4:	int3   
   180080ba5:	int3   
   180080ba6:	int3   
   180080ba7:	int3   
   180080ba8:	int3   
   180080ba9:	int3   
   180080baa:	int3   
   180080bab:	int3   
   180080bac:	int3   
   180080bad:	int3   
   180080bae:	int3   
   180080baf:	int3   
   180080bb0:	int3   
   180080bb1:	int3   
   180080bb2:	int3   
   180080bb3:	int3   
   180080bb4:	int3   
   180080bb5:	int3   
   180080bb6:	int3   
   180080bb7:	int3   
   180080bb8:	int3   
   180080bb9:	int3   
   180080bba:	int3   
   180080bbb:	int3   
   180080bbc:	int3   
   180080bbd:	int3   
   180080bbe:	int3   
   180080bbf:	int3   
   180080bc0:	int3   
   180080bc1:	int3   
   180080bc2:	int3   
   180080bc3:	int3   
   180080bc4:	int3   
   180080bc5:	int3   
   180080bc6:	int3   
   180080bc7:	int3   
   180080bc8:	int3   
   180080bc9:	int3   
   180080bca:	int3   
   180080bcb:	int3   
   180080bcc:	int3   
   180080bcd:	int3   
   180080bce:	int3   
   180080bcf:	int3   
   180080bd0:	int3   
   180080bd1:	int3   
   180080bd2:	int3   
   180080bd3:	int3   
   180080bd4:	int3   
   180080bd5:	int3   
   180080bd6:	int3   
   180080bd7:	int3   
   180080bd8:	int3   
   180080bd9:	int3   
   180080bda:	int3   
   180080bdb:	int3   
   180080bdc:	int3   
   180080bdd:	int3   
   180080bde:	int3   
   180080bdf:	int3   
   180080be0:	int3   
   180080be1:	int3   
   180080be2:	int3   
   180080be3:	int3   
   180080be4:	int3   
   180080be5:	int3   
   180080be6:	int3   
   180080be7:	int3   
   180080be8:	int3   
   180080be9:	int3   
   180080bea:	int3   
   180080beb:	int3   
   180080bec:	int3   
   180080bed:	int3   
   180080bee:	int3   
   180080bef:	int3   
   180080bf0:	int3   
   180080bf1:	int3   
   180080bf2:	int3   
   180080bf3:	int3   
   180080bf4:	int3   
   180080bf5:	int3   
   180080bf6:	int3   
   180080bf7:	int3   
   180080bf8:	int3   
   180080bf9:	int3   
   180080bfa:	int3   
   180080bfb:	int3   
   180080bfc:	int3   
   180080bfd:	int3   
   180080bfe:	int3   
   180080bff:	int3   
   180080c00:	cmp    $0xdfc,%edx
   180080c06:	jae    0x180080c14
   180080c08:	lea    0x1ee9(%rip),%rax        # 0x180082af8
   180080c0f:	movzwl (%rax,%r12,2),%r12d
   180080c14:	movl   $0x0,0x1110c(%r15)
   180080c1f:	movl   $0x1a3,0x11144(%r15)
   180080c2a:	movl   $0x1a3,0x11110(%r15)
   180080c35:	movl   $0x16f,0x11148(%r15)
   180080c40:	movl   $0x312,0x11114(%r15)
   180080c4b:	movl   $0x158,0x1114c(%r15)
   180080c56:	movl   $0x46a,0x11118(%r15)
   180080c61:	movl   $0x10a,0x11150(%r15)
   180080c6c:	movl   $0x574,0x1111c(%r15)
   180080c77:	movl   $0x14e,0x11154(%r15)
   180080c82:	movl   $0x6c2,0x11120(%r15)
   180080c8d:	movl   $0x173,0x11158(%r15)
   180080c98:	movl   $0x835,0x11124(%r15)
   180080ca3:	movl   $0x1cc,0x1115c(%r15)
   180080cae:	movl   $0xa01,0x11128(%r15)
   180080cb9:	movl   $0x1f7,0x11160(%r15)
   180080cc4:	movl   $0xbf8,0x1112c(%r15)
   180080ccf:	movl   $0x12c,0x11164(%r15)
   180080cda:	movl   $0xd24,0x11130(%r15)
   180080ce5:	movl   $0xd8,0x11168(%r15)
   180080cf0:	jmp    *0x132(%rip)        # 0x180080e28
	...
   180080cfe:	add    %al,(%rax)
   180080d00:	cmp    $0xdfc,%ecx
   180080d06:	jae    0x180080d13
   180080d08:	lea    0x1f1(%rip),%rax        # 0x180080f00
   180080d0f:	movzwl (%rax,%rcx,2),%ecx
   180080d13:	jmp    *0xe7(%rip)        # 0x180080e00
	...
   180080d2d:	add    %al,(%rax)
   180080d2f:	add    %al,0xdfcf9(%rcx)
   180080d35:	add    %dh,0xb(%rbx)
   180080d38:	lea    0x1c1(%rip),%rax        # 0x180080f00
   180080d3f:	movzwl (%rax,%rcx,2),%ecx
   180080d43:	jmp    *0xbf(%rip)        # 0x180080e08
	...
   180080d5d:	add    %al,(%rax)
   180080d5f:	add    %al,0xdfcfa(%rcx)
   180080d65:	add    %dh,0xb(%rbx)
   180080d68:	lea    0x191(%rip),%rax        # 0x180080f00
   180080d6f:	movzwl (%rax,%rdx,2),%edx
   180080d73:	jmp    *0x97(%rip)        # 0x180080e10
	...
   180080d8d:	add    %al,(%rax)
   180080d8f:	add    %al,-0x7f(%rcx)
   180080d92:	clc    
   180080d93:	cld    
   180080d94:	or     $0xc730000,%eax
   180080d99:	lea    0x160(%rip),%rax        # 0x180080f00
   180080da0:	movzwl (%rax,%r8,2),%r8d
   180080da5:	jmp    *0x6d(%rip)        # 0x180080e18
	...
   180080dbf:	add    %al,-0x7f(%rcx)
   180080dc2:	clc    
   180080dc3:	cld    
   180080dc4:	or     $0xc730000,%eax
   180080dc9:	lea    0x130(%rip),%rax        # 0x180080f00
   180080dd0:	movzwl (%rax,%r8,2),%r8d
   180080dd5:	jmp    *0x45(%rip)        # 0x180080e20
	...
   180080e3f:	add    %al,0x2d(%rcx)
   180080e42:	rex.X add %al,(%rax)
   180080e45:	add    %al,(%rax)
   180080e47:	add    %al,0x2d(%rbx)
   180080e4a:	add    %r8b,(%rax)
   180080e4d:	add    %al,(%rax)
   180080e4f:	add    %al,0x2d(%rbp)
   180080e52:	rex.RXB add %r8b,(%r8)
   180080e55:	add    %al,(%rax)
   180080e57:	add    %cl,0x2d(%rax)
   180080e5a:	rex.WX add %al,(%rax)
   180080e5d:	add    %al,(%rax)
   180080e5f:	add    %cl,0x2d(%rbx)
   180080e62:	rex.WR add %r8b,(%rax)
   180080e65:	add    %al,(%rax)
   180080e67:	add    %cl,0x0(%rbp)
   180080e6a:	add    %al,(%rax)
   180080e6c:	add    %al,(%rax)
   180080e6e:	add    %al,(%rax)
   180080e70:	rex.WRX sub $0x52,%rax
   180080e76:	add    %al,(%rax)
   180080e78:	push   %rbx
   180080e79:	add    %al,(%rax)
   180080e7b:	add    %al,(%rax)
   180080e7d:	add    %al,(%rax)
   180080e7f:	add    %dl,0x0(%rax,%rax,1)
   180080e83:	add    %al,(%rax)
   180080e85:	add    %al,(%rax)
   180080e87:	add    %dl,0x2d(%rbp)
   180080e8a:	pop    %rdx
	...
   180080e9f:	add    %ch,0x65(%rbx)
   180080ea2:	jb     0x180080f12
   180080ea4:	gs insb (%dx),%es:(%rdi)
   180080ea6:	xor    (%rdx),%esi
   180080ea8:	cs fs insb (%dx),%es:(%rdi)
   180080eab:	insb   (%dx),%es:(%rdi)
   180080eac:	add    %al,(%rax)
   180080eae:	add    %al,(%rax)
   180080eb0:	rex.RX insb (%dx),%es:(%rdi)
   180080eb2:	jne    0x180080f27
   180080eb4:	push   $0x74736e49
   180080eb9:	jb     0x180080f30
   180080ebb:	movsxd 0x6f(%rcx,%rbp,2),%esi
   180080ebf:	outsb  %ds:(%rsi),(%dx)
   180080ec0:	rex.XB (bad) 
   180080ec2:	movsxd 0x65(%rax),%ebp
	...
   180080efd:	add    %al,(%rax)
   180080eff:	add    %bl,0x0(%rdx)
   180080f02:	test   $0x1,%al
   180080f04:	movabs 0xa401f101f301a601,%al
   180080f0d:	add    %esi,%ebp
   180080f0f:	add    %esi,%esi
   180080f11:	add    %esi,%edx
   180080f13:	add    %esi,%eax
   180080f15:	add    %esi,%esp
   180080f17:	add    %edi,%eax
   180080f19:	add    %edi,%ecx
   180080f1b:	add    %edx,-0x6dff7900(%rip)        # 0x112089621
   180080f21:	add    %dl,-0x6fff7200(%rcx)
   180080f27:	add    %cl,-0x8ffe000(%rdi)
   180080f2d:	add    %edx,0x0(%rdi)
   180080f30:	and    (%rax),%al
   180080f32:	and    $0x0,%al
   180080f34:	and    $0x44005600,%eax
   180080f39:	add    %al,0x70005d00(%rax)
   180080f3f:	add    %dh,0x0(%rbx)
   180080f42:	je     0x180080f44
   180080f44:	add    %ah,%fs:0x0(%rbx)
   180080f48:	(bad)  
   180080f49:	add    %ch,0x0(%rbx)
   180080f4c:	insb   (%dx),%es:(%rdi)
   180080f4d:	add    %ch,0x0(%rbp)
   180080f50:	pop    %rsp
   180080f51:	add    %ch,0x0(%rsi)
   180080f54:	(bad)  
   180080f55:	add    %dh,0x0(%rcx)
   180080f58:	jb     0x180080f5a
   180080f5a:	data16 add %ah,0x0(%rdi)
   180080f5e:	add    %bl,%gs:0x0(%rsi)
   180080f62:	pop    %rdi
   180080f63:	add    %bh,0x0(%rsi)
   180080f66:	jnp    0x180080f68
   180080f68:	ja     0x180080f6a
   180080f6a:	js     0x180080f6c
   180080f6c:	jbe    0x180080f6e
   180080f6e:	jne    0x180080f70
   180080f70:	jns    0x180080f72
   180080f72:	jl     0x180080f74
   180080f74:	jp     0x180080f76
   180080f76:	(bad)  
   180080f77:	add    %bh,0x0(%rbp)
   180080f7a:	jg     0x180080f7c
   180080f7c:	push   $0x6f006a00
   180080f81:	add    %ch,0x0(%rcx)
   180080f84:	addl   $0x1b001c,(%rax)
   180080f8a:	xchg   %eax,%ebp
   180080f8b:	add    %ecx,-0x72ff7600(%rbx)
   180080f91:	add    %cl,0x2d0026(%rax,%rax,1)
   180080f98:	(bad)  
   180080f99:	add    %dh,(%rax)
   180080f9b:	add    %ch,(%rcx)
   180080f9d:	add    %ch,(%rdx)
   180080f9f:	add    %ch,(%rax)
   180080fa1:	add    %dh,(%rdx)
   180080fa3:	add    %ch,(%rsi)
   180080fa5:	add    %dh,(%rcx)
   180080fa7:	add    %ch,(%rbx)
   180080fa9:	add    %ch,(%rax,%rax,1)
   180080fac:	(bad)  
   180080fad:	add    %dh,(%rbx)
   180080faf:	add    %dh,(%rax,%rax,1)
   180080fb2:	sub    (%rcx),%al
   180080fb4:	or     (%rax),%al
   180080fb6:	jle    0x180080fb9
   180080fb8:	jg     0x180080fbb
   180080fba:	pop    (%rcx)
   180080fbc:	mov    (%rcx),%es
   180080fbe:	(bad)  
   180080fbf:	add    %eax,0x1880183(%rcx,%rax,1)
   180080fc6:	xchg   %eax,%ecx
   180080fc7:	add    %edx,0x1930192(%rcx,%rax,1)
   180080fce:	lea    (%rcx),%eax
   180080fd0:	mov    %es,(%rcx)
   180080fd2:	xchg   %al,(%rcx)
   180080fd4:	xchg   %eax,(%rcx)
   180080fd6:	mov    (%rcx),%eax
   180080fd8:	mov    (%rcx),%al
   180080fda:	nop
   180080fdb:	add    %eax,-0x7afe7eff(%rax)
   180080fe1:	add    %ecx,0x1e001d01(%rcx)
   180080fe7:	add    %ah,(%rcx)
   180080fe9:	add    %bl,(%rdi)
   180080feb:	add    %ch,-0x46ff4800(%rdi)
   180080ff1:	add    %bh,-0x43ff4500(%rdx)
   180080ff7:	add    %bh,-0x55ff4000(%rbp)
   180080ffd:	add    %ch,0x23f00b1(%rax,%rax,1)
   180081004:	cmp    $0x43023e02,%eax
   180081009:	add    0x2(%rdx),%al
   18008100c:	add    %bpl,%al
   18008100f:	add    %al,%dh
   180081011:	add    %al,0x2(%rcx)
   180081014:	ret    
   180081015:	add    %al,%ah
   180081017:	add    %al,%cl
   180081019:	add    %ch,%bl
   18008101b:	add    %cl,%al
   18008101d:	add    %cl,%cl
   18008101f:	add    %cl,%bl
   180081021:	add    %bh,-0x57ff4200(%rdi)
   180081027:	add    %ch,-0x28ff5700(%rbp)
   18008102d:	add    %bl,-0x27ff6800(%rcx)
   180081033:	add    %bl,%cl
   180081035:	add    %bl,%bl
   180081037:	add    %bl,%bh
   180081039:	add    %bl,-0x62ff6200(%rdi)
   18008103f:	add    %bl,0xe0009a(%rax,%rax,1)
   180081046:	fwait
   180081047:	add    %bl,%dl
   180081049:	add    %al,0xd100d0(%rax,%rax,1)
   180081050:	(bad)  
   180081051:	add    %dl,%dh
   180081053:	add    %dl,%ch
   180081055:	add    %dl,%bl
   180081057:	add    %cl,%bh
   180081059:	add    %ch,%ah
   18008105b:	add    %eax,-0x7cff7a00(%rbp)
   180081061:	add    %al,-0x4fe0600(%rdx)
   180081067:	add    %ecx,-0x68ff6b00(%rax)
   18008106d:	add    %dl,-0x76ffa800(%rsi)
   180081073:	add    %dl,0xb00093(%rax,%rax,1)
   18008107a:	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008107b:	add    %ah,-0x5bff5d00(%rcx)
   180081081:	add    %ah,-0x4dff5e00(%rbp)
   180081087:	add    %dh,0xb500b3(%rax,%rax,1)
   18008108e:	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008108f:	add    %ch,-0x51ff3600(%rbx)
   180081095:	add    %al,%bh
   180081097:	add    %cl,%ch
   180081099:	add    %cl,%ah
   18008109b:	add    %ah,%ch
   18008109d:	add    %dh,-0x3dff1d00(%rdi)
   1800810a3:	add    %bh,0x3f003e00(%rip)        # 0x1bf084ea9
   1800810a9:	add    %dh,(%rdi)
   1800810ab:	add    %dh,0x36003800(%rip)        # 0x1b60848b1
   1800810b1:	add    %bh,(%rax,%rax,1)
   1800810b4:	cmp    (%rax),%al
   1800810b6:	cmp    %eax,(%rax)
   1800810b8:	cmp    (%rax),%eax
   1800810ba:	add    %al,0x0(%r8)
   1800810be:	rex.WXB add %al,0x0(%r10)
   1800810c2:	rex.XB add %bpl,0x48004a01(%r14)
   1800810c9:	add    %cl,0x0(%rcx)
   1800810cc:	rex.WR add %r9b,0x0(%rbp)
   1800810d0:	add    %r8b,0x0(%r15)
   1800810d4:	add    %r10b,-0x1c(%rax,%r8,1)
   1800810d9:	add    %dl,0x0(%rbp)
   1800810dc:	pop    %rbx
   1800810dd:	add    %ah,(%rcx)
   1800810df:	add    (%rdi),%dl
   1800810e1:	add    0x2(%rbp),%al
   1800810e4:	and    $0x34023302,%eax
   1800810e9:	add    (%rax),%ah
   1800810eb:	add    (%rdx),%bl
   1800810ed:	add    %bl,(%rcx)
   1800810ef:	add    %dl,(%rsi)
   1800810f1:	add    %ah,(%rdx)
   1800810f3:	add    (%rbx),%ah
   1800810f5:	add    (%rbx),%ah
   1800810f7:	add    %dl,(%rcx)
   1800810f9:	add    %ah,0x4e005300(%rax)
   1800810ff:	add    %dl,0x0(%rdx)
   180081102:	rex.WRXB add %r10b,0x0(%r8)
   180081106:	push   %rcx
   180081107:	add    %ah,0x3709a009(%rcx)
   18008110d:	or     %ebp,(%rdx)
   18008110f:	or     %edi,(%rcx)
   180081111:	or     %esp,(%rsi)
   180081113:	or     %esp,-0x21f6d1f7(%rip)        # 0x15e113f22
   180081119:	or     %ah,%ah
   18008111b:	or     (%rdi),%ch
   18008111d:	or     %esi,(%rcx)
   18008111f:	or     %esi,(%rcx,%rcx,1)
   180081122:	xor    (%rcx),%cl
   180081124:	xor    (%rcx),%ecx
   180081126:	ss or  %esi,0x2d093009(%rip)        # 0x1ad114136
   18008112d:	or     %edi,(%rdx)
   18008112f:	or     %esp,(%rdi)
   180081131:	or     %ebp,(%rcx)
   180081133:	or     %ebp,(%rcx,%rcx,1)
   180081136:	popf   
   180081137:	or     %esp,-0x61f65df7(%rbx)
   18008113d:	or     %edx,0x9930992(%rcx,%rcx,1)
   180081144:	pushf  
   180081145:	or     -0x68f669f6(%rdx),%ah
   18008114b:	or     %ebx,-0x67f560f6(%rsi)
   180081151:	or     -0x5bf565f6(%rcx),%bl
   180081157:	or     -0x5af55ff6(%rbp),%bl
   18008115d:	or     -0x6df55ef6(%rsi),%ah
   180081163:	or     -0x6bf569f6(%rbp),%dl
   180081169:	or     -0x6af568f6(%rbx),%dl
   18008116f:	or     %edx,-0x7df683f7(%rcx)
   180081175:	or     %ecx,-0x72f674f7(%rdx)
   18008117b:	or     %ecx,-0x79f673f7(%rcx)
   180081181:	or     %eax,-0x70f671f7(%rbp)
   180081187:	or     %edx,-0x78f677f7(%rax)
   18008118d:	or     %eax,0x7f098409(%rbx)
   180081193:	or     %ebx,0x22099c09(%rbx)
   180081199:	or     %edi,(%rax)
   18008119b:	or     %ebx,-0x67f666f7(%rdx)
   1800811a1:	or     %eax,0x350a3b09(%rcx)
   1800811a7:	or     (%rdx,%rcx,1),%dh
   1800811aa:	cmp    $0xa,%al
   1800811ac:	cmp    $0x370a3e0a,%eax
   1800811b1:	or     (%rcx),%bh
   1800811b3:	or     (%rax),%bh
   1800811b5:	or     (%rdx),%bh
   1800811b7:	or     (%rsi),%dh
   1800811b9:	or     0xa(%rcx),%bl
   1800811bc:	rex.XB or (%r11),%sil
   1800811bf:	or     (%rdx),%dh
   1800811c1:	or     0xa(%rdx),%bl
   1800811c4:	rex.W or 0xa(%rdi),%al
   1800811c8:	pop    %rsi
   1800811c9:	or     0x4b(%rdx,%rcx,1),%cl
   1800811cd:	or     0xa(%rax),%dl
   1800811d0:	push   %rbx
   1800811d1:	or     0xa(%rcx),%dl
   1800811d4:	rex.WRX or 0xa(%rbp),%r9b
   1800811d8:	rex.WRXB or 0xa(%r10),%r10b
   1800811dc:	(bad)  
   1800811dd:	or     %cl,%bl
   1800811df:	or     %dl,%bl
   1800811e1:	or     %cl,%ah
   1800811e3:	or     %bh,%bl
   1800811e5:	or     %dl,%ah
   1800811e7:	or     %bl,%ah
   1800811e9:	or     %al,%ah
   1800811eb:	or     %dh,%ah
   1800811ed:	or     %ah,%bl
   1800811ef:	or     %bl,%bl
   1800811f1:	or     %ch,%ah
   1800811f3:	or     %al,%bl
   1800811f5:	or     %bh,%dl
   1800811f7:	or     (%rcx,%rcx,1),%ah
   1800811fa:	and    (%rcx),%ecx
   1800811fc:	and    $0x310a420a,%eax
   180081201:	or     0xa(%rax),%bl
   180081204:	pop    %rsp
   180081205:	or     0xa(%rcx),%al
   180081208:	rex or 0xa(%rsi),%dl
   18008120c:	push   %rbp
   18008120d:	or     0x5b(%rdx,%rcx,1),%dl
   180081211:	or     0xa(%rdi),%dl
   180081214:	sub    %cl,(%rdx)
   180081216:	(bad)  
   180081217:	or     (%rsi),%ah
   180081219:	or     0xa(%rbp),%al
   18008121c:	or     (%rdx),%r13b
   18008121f:	or     (%rbx),%ch
   180081221:	or     (%rdx,%rcx,1),%ch
   180081224:	sub    %ecx,(%rdx)
   180081226:	sub    $0x5f0a490a,%eax
   18008122b:	or     0xa(%rax),%ah
   18008122e:	pop    %rbp
   18008122f:	or     (%rdi),%ch
   180081231:	or     (%rsi),%ch
   180081233:	or     (%rax),%dh
   180081235:	or     (%rbx),%ch
   180081237:	or     %ebp,(%rax)
   180081239:	or     %esp,(%rbx)
   18008123b:	or     0xa(%rdx),%cl
   18008123e:	rex.RX or %bpl,%r11b
   180081241:	or     (%rdx,%rcx,1),%ah
   180081244:	orb    $0x62,(%rcx)
   180081247:	add    0x71027303(%rdi),%al
   18008124d:	add    0x2(%rdx),%dh
   180081250:	(bad)  
   180081251:	add    -0x76fd78fe(%rsi),%al
   180081257:	add    %cl,%cl
   180081259:	add    0x2(%rbx),%bh
   18008125c:	xchg   %eax,%esp
   18008125d:	add    -0x35(%rdx,%rax,1),%ah
   180081261:	add    -0x70fd38fe(%rcx),%dl
   180081267:	add    -0x37fd86fd(%rax),%edx
   18008126d:	add    -0x71fd77fe(%rdi),%dl
   180081273:	add    %dl,%cl
   180081275:	add    0x2(%rdi),%cl
   180081278:	push   %rax
   180081279:	add    -0x3c(%rdx,%rax,1),%cl
   18008127d:	add    %ch,%al
   18008127f:	add    0x2(%rcx),%ah
   180081282:	rex.WX add 0x37073305(%rip),%dil        # 0x1b70f458e
   180081289:	(bad)  
   18008128a:	(bad)  
   18008128b:	(bad)  
   18008128c:	sub    $0x6,%al
   18008128e:	sub    (%rsi),%eax
   180081290:	sub    $0x36062706,%eax
   180081295:	(bad)  
   180081296:	(bad)  
   180081297:	add    $0x4d4073c,%eax
   18008129c:	ds (bad) 
   18008129e:	test   %al,(%rdx)
   1800812a0:	test   %eax,(%rdx)
   1800812a2:	(bad)  
   1800812a3:	(bad)  
   1800812a4:	lret   
   1800812a5:	add    $0xca,%al
   1800812a7:	add    $0x34,%al
   1800812a9:	(bad)  
   1800812aa:	xor    (%rdi),%al
   1800812ac:	sub    $0x2e073007,%eax
   1800812b1:	(bad)  
   1800812b2:	xor    %eax,(%rdi)
   1800812b4:	(bad)  
   1800812b5:	(bad)  
   1800812b6:	xor    $0xda04db07,%eax
   1800812bb:	add    $0x38,%al
   1800812bd:	(bad)  
   1800812be:	cmp    %eax,(%rdi)
   1800812c0:	cmp    (%rdi),%al
   1800812c2:	ret    
   1800812c3:	add    (%rbx),%bh
   1800812c5:	(bad)  
   1800812c6:	clc    
   1800812c7:	add    $0x42,%al
   1800812c9:	(bad)  
   1800812ca:	rex.XB (bad) 
   1800812cc:	(bad)  
   1800812cd:	add    (%rbx),%ebx
   1800812cf:	add    (%rdx),%esi
   1800812d1:	add    (%rbx,%rax,1),%ebx
   1800812d4:	sbb    $0x41073d03,%eax
   1800812d9:	(bad)  
   1800812da:	rex (bad) 
   1800812dc:	mov    $0x4,%ah
   1800812de:	mov    $0x4,%dl
   1800812e0:	mov    $0x9a049904,%ebp
   1800812e5:	add    $0xfe,%al
   1800812e7:	add    0x31104c0(%rsp,%rax,1),%edi
   1800812ee:	adc    %al,(%rbx)
   1800812f0:	adc    $0x3,%al
   1800812f2:	or     %eax,(%rbx)
   1800812f4:	es add %ecx,%edx
   1800812f7:	add    -0x42fc4dfd(%rbx),%esi
   1800812fd:	add    -0x69fc31fd(%rdi),%edi
   180081303:	add    -0x35fc44fe(%rax),%al
   180081309:	add    -0x39fc3afe(%rbx),%edx
   18008130f:	add    %ebx,%eax
   180081311:	add    %edx,%eax
   180081313:	add    %ebx,%ecx
   180081315:	add    %edi,%eax
   180081317:	add    %eax,%ecx
   180081319:	add    %ecx,%ecx
   18008131b:	add    (%rdx),%edi
   18008131d:	add    (%rbx),%edi
   18008131f:	add    (%rbx,%rax,1),%edi
   180081322:	mov    $0x3,%dh
   180081324:	mov    $0x3,%ch
   180081326:	mov    $0x3,%bh
   180081328:	mov    $0xbc03cf03,%eax
   18008132d:	add    %ecx,%eax
   18008132f:	add    %eax,%edx
   180081331:	add    -0x58fc56fd(%rsi),%edi
   180081337:	add    0x3ae03ab(%rbx,%rax,1),%ebp
   18008133e:	movsb  %ds:(%rsi),%es:(%rdi)
   18008133f:	add    -0x5cfc57fd(%rdi),%ebp
   180081345:	add    -0x59fc52fd(%rdx),%ebp
   18008134b:	add    -0x5efc5dfd(%rbp),%esp
   180081351:	add    0x49033803(%rax),%esp
   180081357:	add    0x2(%rax),%cl
   18008135a:	adc    (%rbx),%eax
   18008135c:	sub    %al,(%rbx)
   18008135e:	(bad)  
   18008135f:	add    (%rcx),%ebp
   180081361:	add    (%rdi),%esi
   180081363:	add    0xf030d03(%rdi),%ebx
   180081369:	add    (%rsi),%ecx
   18008136b:	add    (%rdx),%edx
   18008136d:	add    (%rbx),%ebp
   18008136f:	add    (%rsi),%ebp
   180081371:	add    0x30032403(%rip),%ebp        # 0x1b00b377a
   180081377:	add    0xa033103(%rip),%esi        # 0x18a0b4480
   18008137d:	add    (%rbx),%ecx
   18008137f:	add    (%rbx,%rax,1),%ecx
   180081382:	and    (%rbx),%eax
   180081384:	sbb    %eax,(%rbx)
   180081386:	mov    (%rdx),%al
   180081388:	cwtl   
   180081389:	add    0x28d028b(%rdx,%rax,1),%cl
   180081390:	push   %rsi
   180081391:	add    0xd07a104(%rbx),%dh
   180081397:	(bad)  
   180081398:	repz (bad) 
   18008139a:	sub    %eax,(%rdi)
   18008139c:	(bad)  
   18008139d:	(bad)  
   18008139e:	lret   
   18008139f:	(bad)  
   1800813a0:	movl   $0x6c606c5,(%rsi)
   1800813a6:	rolb   $0xc1,(%rsi)
   1800813a9:	(bad)  
   1800813aa:	ret    $0xc306
   1800813ad:	(bad)  
   1800813ae:	jrcxz  0x1800813b6
   1800813b0:	fldl   (%rsi)
   1800813b2:	leave  
   1800813b3:	(bad)  
   1800813b4:	enter  $0xca06,$0x6
   1800813b8:	int    $0x6
   1800813ba:	(bad)  
   1800813bb:	(bad)  
   1800813bc:	roll   (%rsi)
   1800813be:	rolb   (%rsi)
   1800813c0:	iret   
   1800813c1:	(bad)  
   1800813c2:	out    %eax,$0x6
   1800813c4:	call   0x16d0efccf
   1800813c9:	(bad)  
   1800813ca:	out    %al,(%dx)
   1800813cb:	(bad)  
   1800813cc:	out    %eax,(%dx)
   1800813cd:	(bad)  
   1800813ce:	in     (%dx),%al
   1800813cf:	(bad)  
   1800813d0:	int1   
   1800813d1:	(bad)  
   1800813d2:	lock (bad) 
   1800813d4:	(bad)  
   1800813d5:	(bad)  
   1800813d6:	jmp    0x1800813de
   1800813d8:	out    %al,$0x6
   1800813da:	int3   
   1800813db:	(bad)  
   1800813dc:	sysretl 
   1800813de:	(bad)  
   1800813df:	(bad)  
   1800813e0:	and    (%rdi),%eax
   1800813e2:	adc    $0x7,%al
   1800813e4:	sbb    %eax,(%rdi)
   1800813e6:	sbb    (%rdi),%eax
   1800813e8:	adc    $0x17071607,%eax
   1800813ed:	(bad)  
   1800813ee:	sbb    (%rdi),%al
   1800813f0:	sbb    %al,(%rdi)
   1800813f2:	adc    %eax,(%rdi)
   1800813f4:	adc    (%rdi),%al
   1800813f6:	stos   %eax,%es:(%rdi)
   1800813f7:	(bad)  
   1800813f8:	lods   %ds:(%rsi),%al
   1800813f9:	(bad)  
   1800813fa:	add    (%rdi),%al
   1800813fc:	(bad)  
   1800813fd:	(bad)  
   1800813fe:	cld    
   1800813ff:	(bad)  
   180081400:	add    %al,(%rdi)
   180081402:	add    %eax,(%rdi)
   180081404:	add    $0x7,%al
   180081406:	cli    
   180081407:	(bad)  
   180081408:	stc    
   180081409:	(bad)  
   18008140a:	or     (%rdi),%al
   18008140c:	or     %al,(%rdi)
   18008140e:	add    (%rdi),%eax
   180081410:	add    $0xfe070607,%eax
   180081415:	(bad)  
   180081416:	std    
   180081417:	(bad)  
   180081418:	incl   (%rsi)
   18008141a:	sti    
   18008141b:	(bad)  
   18008141c:	or     %eax,(%rdi)
   18008141e:	adc    %al,(%rdi)
   180081420:	sbb    $0x7,%al
   180081422:	and    %eax,(%rdi)
   180081424:	and    %al,(%rdi)
   180081426:	sbb    $0x1e072207,%eax
   18008142b:	(bad)  
   18008142c:	(bad)  
   18008142d:	(bad)  
   18008142e:	adc    (%rdi),%eax
   180081430:	sub    (%rdi),%al
   180081432:	mov    %al,(%rdi)
   180081434:	sub    (%rdi),%eax
   180081436:	xchg   %eax,(%rdi)
   180081438:	and    $0x2c072407,%eax
   18008143d:	(bad)  
   18008143e:	hlt    
   18008143f:	(bad)  
   180081440:	cmc    
   180081441:	(bad)  
   180081442:	testl  $0x6f606f8,(%rsi)
   180081448:	repnz (bad) 
   18008144a:	test   $0xad07aa07,%eax
   18008144f:	(bad)  
   180081450:	mov    %eax,(%rdi)
   180081452:	mov    (%rdi),%eax
   180081454:	mov    (%rdi),%es
   180081456:	mov    (%rdi),%al
   180081458:	cltd   
   180081459:	(bad)  
   18008145a:	test   $0x7,%al
   18008145c:	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008145d:	(bad)  
   18008145e:	movsl  %ds:(%rsi),%es:(%rdi)
   18008145f:	(bad)  
   180081460:	movabs %al,0x8f07a307a407a707
   180081469:	(bad)  
   18008146a:	mov    $0xbb07b207,%eax
   18008146f:	(bad)  
   180081470:	mov    $0x2607b307,%esp
   180081475:	(bad)  
   180081476:	sub    %al,(%rdi)
   180081478:	(bad)  
   180081479:	(bad)  
   18008147a:	mov    $0xb107b907,%edx
   18008147f:	(bad)  
   180081480:	scas   %es:(%rdi),%al
   180081481:	(bad)  
   180081482:	scas   %es:(%rdi),%eax
   180081483:	(bad)  
   180081484:	mov    $0x7,%al
   180081486:	fwait
   180081487:	(bad)  
   180081488:	lea    (%rdi),%eax
   18008148a:	mov    %es,(%rdi)
   18008148c:	nop
   18008148d:	(bad)  
   18008148e:	in     $0x6,%eax
   180081490:	in     $0x6,%al
   180081492:	mov    $0xbd06bf06,%esi
   180081497:	(bad)  
   180081498:	mov    $0x97079606,%esp
   18008149d:	(bad)  
   18008149e:	xchg   %eax,%ebp
   18008149f:	(bad)  
   1800814a0:	cwtl   
   1800814a1:	(bad)  
   1800814a2:	sahf   
   1800814a3:	(bad)  
   1800814a4:	xchg   %eax,%esp
   1800814a5:	(bad)  
   1800814a6:	lahf   
   1800814a7:	(bad)  
   1800814a8:	xchg   %eax,%ecx
   1800814a9:	(bad)  
   1800814aa:	(bad)  
   1800814ab:	(bad)  
   1800814ac:	xchg   %eax,%ebx
   1800814ad:	(bad)  
   1800814ae:	popf   
   1800814af:	(bad)  
   1800814b0:	xchg   %eax,%edx
   1800814b1:	(bad)  
   1800814b2:	pushf  
   1800814b3:	(bad)  
   1800814b4:	(bad)  
   1800814b5:	or     %al,0x8(%rdx)
   1800814b8:	rex or %bl,0x8(%rcx)
   1800814bc:	cmp    $0x3c083e08,%eax
   1800814c1:	or     %dl,0x8(%rax)
   1800814c4:	rex.WX or %dl,0x8(%rcx)
   1800814c8:	rex.RX or %r8b,0x8(%rdi)
   1800814cc:	push   %rsi
   1800814cd:	or     %dl,0x8(%rdi)
   1800814d0:	pop    %rax
   1800814d1:	or     %dl,0x8(%rbp)
   1800814d4:	rex.XB or %cl,(%r11)
   1800814d7:	(bad)  
   1800814d8:	or     %cl,0x8(%r9)
   1800814dc:	push   %rdx
   1800814dd:	or     %cl,0x8(%rbp)
   1800814e0:	rex.WRXB or %r9b,0x4e(%r8,%r9,1)
   1800814e5:	or     %cl,0x8(%rbx)
   1800814e8:	push   %rbx
   1800814e9:	or     %dl,0x48(%rax,%rcx,1)
   1800814ed:	or     %dh,0x8450844(%rdi,%rax,1)
   1800814f4:	mov    $0x7,%bh
   1800814f6:	mov    $0x7,%dh
   1800814f8:	cmp    (%rax),%ecx
   1800814fa:	cmp    %cl,(%rax)
   1800814fc:	cmp    %ecx,(%rax)
   1800814fe:	mov    $0x7,%ch
   180081500:	cmp    (%rax),%cl
   180081502:	movabs 0xdf06d306d206d407,%al
   18008150b:	(bad)  
   18008150c:	xlat   %ds:(%rbx)
   18008150d:	(bad)  
   18008150e:	(bad)  
   18008150f:	(bad)  
   180081510:	flds   (%rsi)
   180081512:	fiadds (%rsi)
   180081514:	fadds  (%rsi)
   180081516:	loop   0x18008151e
   180081518:	loope  0x180081520
   18008151a:	(bad)  
   18008151b:	(bad)  
   18008151c:	faddl  (%rsi)
   18008151e:	fildl  (%rsi)
   180081520:	fiaddl (%rsi)
   180081522:	loopne 0x18008152a
   180081524:	sub    %al,(%rcx)
   180081526:	sub    %eax,(%rcx)
   180081528:	in     (%dx),%al
   180081529:	add    %ah,%dh
   18008152b:	add    %ah,%dl
   18008152d:	add    %ch,(%rbx)
   18008152f:	add    %eax,%edi
   180081531:	add    %eax,%esi
   180081533:	add    %edi,-0x4bfe40ff(%rsi)
   180081539:	add    %ecx,%ebp
   18008153b:	add    %esi,-0x4dfe50ff(%rbp)
   180081541:	add    %esi,-0x10fe4fff(%rcx)
   180081547:	add    %esi,0x13001401(%rbx)
   18008154d:	add    %dl,-0x66fe5cff(%rsi)
   180081553:	add    %ebx,0x1a201a1(%rcx,%rax,1)
   18008155a:	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008155b:	add    %ebx,-0x68fe54ff(%rax)
   180081561:	add    %ebp,-0x64fe55ff(%rcx)
   180081567:	add    %ebx,-0x61fe60ff(%rdx)
   18008156d:	add    %ebx,-0x52fe5aff(%rbp)
   180081573:	add    %ebp,0x1e601bd(%rcx,%rax,1)
   18008157a:	call   0x15509fc80
   18008157f:	add    %esp,%esp
   180081581:	add    %ebx,%edx
   180081583:	add    %ebx,%ecx
   180081585:	add    %edx,(%rax)
   180081587:	add    %ebx,%esi
   180081589:	add    %ch,%ch
   18008158b:	add    %edx,%ebx
   18008158d:	add    %edx,%esp
   18008158f:	add    %ebp,%esi
   180081591:	add    %edx,%eax
   180081593:	add    %edx,%edx
   180081595:	add    %al,%ah
   180081597:	add    %eax,%ebp
   180081599:	add    %ebp,%ebx
   18008159b:	add    %edx,(%rcx,%rax,1)
   18008159e:	adc    $0xc801c901,%eax
   1800815a3:	add    %ecx,%ebx
   1800815a5:	add    %ecx,%edx
   1800815a7:	add    %ecx,%esi
   1800815a9:	add    %ecx,%edi
   1800815ab:	add    %edi,%esp
   1800815ad:	add    %esi,%ecx
   1800815af:	add    %ch,%dl
   1800815b1:	add    %ebx,%eax
   1800815b3:	add    %edx,%edi
   1800815b5:	add    %edx,%esi
   1800815b7:	add    %esp,%ecx
   1800815b9:	add    %ebx,%ebp
   1800815bb:	add    %ebx,%edi
   1800815bd:	add    %ebx,%esp
   1800815bf:	add    %ebx,%esi
   1800815c1:	add    %esp,%eax
   1800815c3:	add    %esp,%edx
   1800815c5:	add    %esp,%ebx
   1800815c7:	add    %eax,%ecx
   1800815c9:	add    %eax,%eax
   1800815cb:	add    %eax,%edx
   1800815cd:	add    %eax,%ebx
   1800815cf:	add    %edi,-0x43fe44ff(%rcx)
   1800815d5:	add    %esi,-0x45ff0dff(%rsi)
   1800815db:	add    %esi,0xb000c01(%rdi)
   1800815e1:	add    %al,%dl
   1800815e3:	or     %esp,%edx
   1800815e5:	or     %esp,%eax
   1800815e7:	or     %esp,%ecx
   1800815e9:	or     %eax,%ebp
   1800815eb:	or     %eax,%esp
   1800815ed:	or     %esp,%ebp
   1800815ef:	or     %ecx,%ebx
   1800815f1:	or     %ecx,%edx
   1800815f3:	or     %eax,%edi
   1800815f5:	or     %ecx,%ecx
   1800815f7:	or     %ecx,%eax
   1800815f9:	or     %eax,%ebx
   1800815fb:	or     %eax,%ecx
   1800815fd:	or     %eax,%eax
   1800815ff:	or     %edi,-0x43f640f7(%rbp)
   180081605:	or     %ebp,%ebp
   180081607:	or     %esp,%esp
   180081609:	or     %edi,-0x17f61cf7(%rdx)
   18008160f:	or     %ebp,%edx
   180081611:	or     %ebp,%esi
   180081613:	or     %ebp,%esp
   180081615:	or     %ebp,%ecx
   180081617:	or     %edx,%eax
   180081619:	or     %edx,%edx
   18008161b:	or     %ebp,%ebx
   18008161d:	or     %esp,%esi
   18008161f:	or     %esp,%edi
   180081621:	or     %edx,%esi
   180081623:	or     %edx,%esp
   180081625:	or     %ebx,%esi
   180081627:	or     %ebx,%ebp
   180081629:	or     %edx,%ebx
   18008162b:	or     %edx,%ebp
   18008162d:	or     %ebx,%eax
   18008162f:	or     %ebx,%ecx
   180081631:	or     %esi,-0x23f625f7(%rax)
   180081637:	or     %esi,-0x4cf64bf7(%rcx)
   18008163d:	or     %esi,-0x49f64af7(%rdi)
   180081643:	or     %edi,-0x50f647f7(%rcx)
   180081649:	or     %ebx,%ebx
   18008164b:	or     %edi,-0x4df630f7(%rsi)
   180081651:	or     %esp,(%rax)
   180081653:	or     0xe0a140a(%rip),%dl        # 0x18e122a63
   180081659:	or     (%rcx),%dl
   18008165b:	or     (%rcx),%bl
   18008165d:	or     (%rdi),%cl
   18008165f:	or     %dh,%dh
   180081661:	or     %esp,(%rdx)
   180081663:	or     %bh,%ch
   180081665:	or     %esi,%ebx
   180081667:	or     %esi,%ebp
   180081669:	or     %esi,%esp
   18008166b:	or     %esi,%eax
   18008166d:	or     %esi,%edx
   18008166f:	or     %esi,%edi
   180081671:	or     %esi,%ecx
   180081673:	or     %edi,-0x32f631f7(%rbx)
   180081679:	or     %ecx,0x120a100a(%rip)        # 0x192122689
   18008167f:	or     (%rsi),%dl
   180081681:	or     (%rbx),%bl
   180081683:	or     0x1c0a1a0a(%rip),%bl        # 0x19c123093
   180081689:	or     (%rdi),%bl
   18008168b:	or     (%rsi),%bl
   18008168d:	or     %ah,%cl
   18008168f:	add    %eax,(%rdx)
   180081691:	or     (%rcx),%cl
   180081693:	or     (%rbx),%al
   180081695:	or     0x70a080a(%rip),%al        # 0x187121ea5
   18008169b:	or     (%rsi),%al
   18008169d:	or     (%rdx,%rcx,1),%al
   1800816a0:	or     (%rdx),%cl
   1800816a2:	sbb    %cl,(%rdx)
   1800816a4:	or     (%rdx),%ecx
   1800816a6:	adc    (%rdx),%ecx
   1800816a8:	clc    
   1800816a9:	or     %edi,%ecx
   1800816ab:	or     %edi,%edi
   1800816ad:	or     %edi,%ebp
   1800816af:	or     %edi,%esi
   1800816b1:	or     %eax,(%rcx)
   1800816b3:	or     (%rax),%al
   1800816b5:	or     %dl,%bh
   1800816b7:	or     %edi,%esp
   1800816b9:	or     %edi,%ebx
   1800816bb:	or     %ecx,(%rdx,%rcx,1)
   1800816be:	pushf  
   1800816bf:	add    -0x5ffc6dfe(%rcx),%bl
   1800816c5:	add    -0x6fd08fe(%rdi),%bl
   1800816cb:	add    %al,%bh
   1800816cd:	add    %dl,%bh
   1800816cf:	add    %bl,%bh
   1800816d1:	add    -0x62fc6efe(%rdx),%ah
   1800816d7:	add    -0x61fd5efe(%rbx),%ah
   1800816dd:	add    -0x6bfd64fe(%rsi),%ah
   1800816e3:	add    0x5(%rsi),%ebx
   1800816e6:	rex.B add $0x540063b,%eax
   1800816ec:	rex.RB add $0x53f053e,%eax
   1800816f2:	rex.RX add $0x5430571,%eax
   1800816f8:	rex.R add $0x29a0393,%eax
   1800816fe:	faddl  (%rbx)
   180081700:	rex.WX add $0x2fe02f6,%rax
   180081706:	std    
   180081707:	add    0x5(%rsi),%dh
   18008170a:	rex.RXB add $0x3660345,%eax
   180081710:	add    %gs:0x3(%rbx),%esi
   180081714:	jno    0x180081719
   180081716:	jo     0x18008171b
   180081718:	je     0x18008171d
   18008171a:	jne    0x18008171f
   18008171c:	fldl   (%rbx)
   18008171e:	fiadds (%rbx)
   180081720:	rolb   %cl,(%rbx)
   180081722:	fildl  (%rbx)
   180081724:	(bad)  
   180081725:	add    %edx,%ebx
   180081727:	add    %ecx,%ebx
   180081729:	add    %esp,%ebp
   18008172b:	add    %ebp,%ebp
   18008172d:	add    %esi,%ebp
   18008172f:	add    %edi,%edx
   180081731:	add    %edx,%esi
   180081733:	add    %esi,%esi
   180081735:	add    %edi,%ebp
   180081737:	add    %eax,%edi
   180081739:	add    %edi,%esi
   18008173b:	add    %ecx,%esi
   18008173d:	add    %ecx,%edi
   18008173f:	add    %ebx,%esi
   180081741:	add    %esp,%esi
   180081743:	add    %ebp,%esi
   180081745:	add    %eax,%esi
   180081747:	add    %ebx,%esp
   180081749:	add    %esi,%esp
   18008174b:	add    %eax,%esp
   18008174d:	add    %ecx,%ebp
   18008174f:	add    %eax,%ebp
   180081751:	add    %edx,%ebp
   180081753:	add    %ecx,%esp
   180081755:	add    %ebp,%esp
   180081757:	add    %ebx,%ebp
   180081759:	add    %esp,%esp
   18008175b:	add    %edi,%esp
   18008175d:	add    %edx,%esp
   18008175f:	add    %esi,%edx
   180081761:	add    %eax,%ebx
   180081763:	add    %edx,%edi
   180081765:	add    (%rdi),%edi
   180081767:	add    (%rsi),%edi
   180081769:	add    %ebp,%edx
   18008176b:	add    %edi,%ebx
   18008176d:	add    %ebx,%edx
   18008176f:	add    0x3(%rbx),%ebx
   180081772:	rex.XB add 0x3(%r15),%ebx
   180081776:	add    0x3(%esi),%ebx
   18008177a:	(bad)  
   18008177b:	add    0x3(%rbx),%esp
   18008177e:	rex.RX add 0x3(%rdx),%r10d
   180081782:	add    0x3(%rdi),%r9
   180081786:	rex.WX add 0x3(%rbp),%rcx
   18008178a:	rex.WRX add 0x3(%rax),%r10
   18008178e:	push   %rcx
   18008178f:	add    0x3(%rbx),%ecx
   180081792:	rex.RXB add 0x3(%r9),%r9d
   180081796:	jb     0x18008179b
   180081798:	outsl  %ds:(%rsi),(%dx)
   180081799:	add    0x3(%rax),%eax
   18008179c:	add    0x3(%r10),%eax
   1800817a0:	add    0x61(%rbx,%rax,1),%r13d
   1800817a5:	add    0x3(%rbp),%ebp
   1800817a8:	(bad)  
   1800817aa:	push   $0x3
   1800817ac:	imul   $0x36e036b,(%rbx),%eax
   1800817b2:	push   $0x59035803
   1800817b7:	add    0x3(%rsi),%edx
   1800817ba:	push   %rbp
   1800817bb:	add    0x3(%rdi),%edx
   1800817be:	add    %fs:0x3(%rbx),%edx
   1800817c2:	pop    %rsp
   1800817c3:	add    0x3(%rbp),%ebx
   1800817c6:	add    0x3d(%rbx,%rax,1),%rdx
   1800817cb:	add    -0x5bfca5fe(%rbp),%esp
   1800817d1:	add    %ah,%bh
   1800817d3:	add    (%rax),%cl
   1800817d5:	or     %esp,%esp
   1800817d7:	or     %ah,%bh
   1800817d9:	or     %ch,%al
   1800817db:	or     %ah,%ch
   1800817dd:	or     %ch,%cl
   1800817df:	or     %ah,%dh
   1800817e1:	or     %al,-0x1cf723f6(%rdi)
   1800817e7:	or     %ch,%ch
   1800817e9:	or     %ch,%dh
   1800817eb:	or     %ch,%bl
   1800817ed:	or     %ch,%bh
   1800817ef:	or     %ch,%dl
   1800817f1:	or     %ch,%ah
   1800817f3:	or     %dl,(%rax)
   1800817f5:	or     %edx,%ebp
   1800817f7:	or     0x609090a(%rax),%cl
   1800817fd:	or     %eax,(%rcx,%rcx,1)
   180081800:	add    $0xfa091609,%eax
   180081805:	or     %bh,%bl
   180081807:	or     %al,(%rax)
   180081809:	or     %edi,%esp
   18008180b:	or     %bh,%dh
   18008180d:	or     %bh,%bh
   18008180f:	or     %bh,%ch
   180081811:	or     %ah,(%rax)
   180081813:	or     %ebx,(%rsi)
   180081815:	or     %ebx,0x1b091c09(%rip)        # 0x19b113424
   18008181b:	or     %ebx,(%rax)
   18008181d:	or     %ebx,(%rcx)
   18008181f:	or     %esp,(%rcx)
   180081821:	or     %ebx,(%rdi)
   180081823:	or     %ebx,(%rdx)
   180081825:	or     %edx,(%rdx)
   180081827:	or     %edx,(%rcx)
   180081829:	or     %esi,%esi
   18008182b:	or     %dh,%bh
   18008182d:	or     %dh,%dl
   18008182f:	or     %dh,%al
   180081831:	or     %dh,%ah
   180081833:	or     %dh,%cl
   180081835:	or     %dh,%bl
   180081837:	or     %bh,%cl
   180081839:	or     %bh,%al
   18008183b:	or     %al,(%rdx)
   18008183d:	or     %eax,(%rbx)
   18008183f:	or     %eax,(%rcx)
   180081841:	or     %esp,%edx
   180081843:	or     %dl,(%rbx)
   180081845:	or     %edx,-0x79f6ebf7(%rip)        # 0x106112c54
   18008184b:	or     (%rcx,%rcx,1),%cl
   18008184e:	or     (%rcx),%ecx
   180081850:	or     (%rcx),%cl
   180081852:	or     $0x8b0a8c09,%eax
   180081857:	or     0x7b09170a(%rdi),%cl
   18008185d:	or     %ecx,-0x24f575f6(%rcx)
   180081863:	add    %ecx,-0x16f56ff6(%rsi)
   180081869:	add    %edi,0x9(%rdx)
   18008186c:	fisttpll (%rax)
   18008186e:	fimuls (%rax)
   180081870:	push   $0x9
   180081872:	imul   $0x96c096f,(%rcx),%ecx
   180081878:	insl   (%dx),%es:(%rdi)
   180081879:	or     %esi,0x9(%rax)
   18008187c:	outsb  %ds:(%rsi),(%dx)
   18008187d:	or     %ebx,0x9(%rbx)
   180081880:	pop    %rdx
   180081881:	or     %ebx,%ebx
   180081883:	or     %bl,%dl
   180081885:	or     %bl,%bh
   180081887:	or     %ah,%al
   180081889:	or     %dl,0x9(%rdx)
   18008188c:	push   %rbx
   18008188d:	or     %edx,0x57(%rcx,%rcx,1)
   180081891:	or     %edx,0x9(%rbp)
   180081894:	pop    %rcx
   180081895:	or     %ebx,0x9(%rax)
   180081898:	push   %rsi
   180081899:	or     %ebx,0x76(%rcx,%rcx,1)
   18008189d:	or     %esi,0x9(%rcx)
   1800818a0:	jns    0x1800818ab
   1800818a2:	js     0x1800818ad
   1800818a4:	jae    0x1800818af
   1800818a6:	jb     0x1800818b1
   1800818a8:	je     0x1800818b3
   1800818aa:	ja     0x1800818b5
   1800818ac:	jne    0x1800818b7
   1800818ae:	pop    %rbp
   1800818af:	or     %ebx,0x9(%rdi)
   1800818b2:	pop    %rsi
   1800818b3:	or     %esp,0x9(%rax)
   1800818b6:	or     %esp,%fs:0x9(%rbp)
   1800818ba:	or     %sp,0x9(%rdx)
   1800818be:	movsxd (%rcx),%ecx
   1800818c0:	(bad)  
   1800818c1:	or     %esp,0x9(%rdi)
   1800818c4:	push   $0xffffffffb3096b09
   1800818c9:	or     -0x4bf54af6(%rsi),%dh
   1800818cf:	or     -0x2df547f6(%rdi),%dh
   1800818d5:	or     %ch,%al
   1800818d7:	or     %dh,%al
   1800818d9:	or     %ah,%al
   1800818db:	or     %al,%cl
   1800818dd:	or     %bh,%al
   1800818df:	or     -0x40f53df6(%rbp),%bh
   1800818e5:	or     %al,%al
   1800818e7:	or     0xe0ac10a(%rsi),%bh
   1800818ed:	or     %edx,%esi
   1800818ef:	or     (%rdi),%al
   1800818f1:	or     %edi,0xaca0aba(%rdx,%rcx,1)
   1800818f8:	(bad)  
   1800818f9:	or     %bl,%dl
   1800818fb:	or     %bl,%al
   1800818fd:	or     %cl,%cl
   1800818ff:	or     %cl,%ah
   180081901:	or     %bh,0x210a170a(%rcx)
   180081907:	or     (%rdi),%cl
   180081909:	or     %esi,%ebp
   18008190b:	or     %al,(%rax)
   18008190d:	add    %al,(%rcx)
   18008190f:	add    %dh,%ch
   180081911:	add    %al,0xd000800(%rip)        # 0x18d082117
   180081917:	add    %ecx,(%rdx)
   180081919:	add    %ecx,(%rax)
   18008191b:	add    %eax,(%rdi)
   18008191d:	add    %ecx,(%rbx)
   18008191f:	add    %ecx,(%rcx)
   180081921:	add    %ecx,(%rcx,%rax,1)
   180081924:	(bad)  
   180081925:	add    %al,(%rax)
   180081927:	add    %eax,(%rsi)
   180081929:	add    %al,(%rdx)
   18008192b:	add    %esi,%esp
   18008192d:	add    %ch,%dh
   18008192f:	add    %ch,%bh
   180081931:	add    %bh,%dl
   180081933:	add    %dh,%bl
   180081935:	add    %cl,(%rdi)
   180081937:	add    %edx,(%rdx)
   180081939:	add    %cl,0x26010e00(%rip)        # 0x1a609273f
   18008193f:	add    %eax,(%rcx,%rax,1)
   180081942:	add    $0x12010301,%eax
   180081947:	add    %esp,(%rbx)
   180081949:	add    %ebx,(%rsi)
   18008194b:	add    %esp,(%rcx,%rax,1)
   18008194e:	or     %eax,(%rax)
   180081950:	adc    (%rcx),%eax
   180081952:	(bad)  
   180081953:	add    %edx,(%rdi)
   180081955:	add    %esp,(%rcx)
   180081957:	add    %esp,(%rdx)
   180081959:	add    %ebx,(%rax)
   18008195b:	add    %ebx,(%rbx)
   18008195d:	add    %ebx,(%rdx)
   18008195f:	add    %ebx,(%rcx)
   180081961:	add    %ebx,0x1f011c01(%rip)        # 0x19f093568
   180081967:	add    %esp,(%rax)
   180081969:	add    %esp,0x27011101(%rip)        # 0x1a7092a70
   18008196f:	add    %eax,(%rsi)
   180081971:	add    %edx,(%rax)
   180081973:	add    %al,(%rdx)
   180081975:	add    %al,(%rax,%rax,1)
   180081978:	add    (%rax),%eax
   18008197a:	testb  $0xf8,(%rax)
   18008197d:	add    %dh,%bh
   18008197f:	add    %bh,%cl
   180081981:	add    %bh,%bl
   180081983:	add    %cl,(%rsi)
   180081985:	add    %cl,(%rdi)
   180081987:	add    %bh,%dh
   180081989:	add    %bh,%bh
   18008198b:	add    %al,(%rcx)
   18008198d:	add    %edi,%esp
   18008198f:	add    %bh,%ch
   180081991:	add    %dl,0x5(%rdi)
   180081994:	rex.WR add $0x55a054b,%rax
   18008199a:	pop    %rax
   18008199b:	add    $0x55d0559,%eax
   1800819a0:	push   %rbp
   1800819a1:	add    $0x55c0556,%eax
   1800819a6:	rex.X add $0x5610566,%eax
   1800819ac:	(bad)  
   1800819ad:	add    $0x5480549,%eax
   1800819b2:	je     0x1800819b9
   1800819b4:	jo     0x1800819bb
   1800819b6:	jae    0x1800819bd
   1800819b8:	outsl  %ds:(%rsi),(%dx)
   1800819b9:	add    $0x56e0572,%eax
   1800819be:	insl   (%dx),%es:(%rdi)
   1800819bf:	add    $0x56b056c,%eax
   1800819c4:	push   $0x5
   1800819c6:	addr32 add $0x55f0569,%eax
   1800819cc:	fs add $0x5680565,%eax
   1800819d2:	pop    %rbx
   1800819d3:	add    $0x5620563,%eax
   1800819d8:	rex.WRB add $0x54f054e,%rax
   1800819de:	push   %rax
   1800819df:	add    $0x5510553,%eax
   1800819e4:	push   %rsp
   1800819e5:	add    $0x3790552,%eax
   1800819ea:	test   %al,(%rbx)
   1800819ec:	test   %eax,(%rbx)
   1800819ee:	jo     0x1800819f2
   1800819f0:	xchg   %eax,%ebp
   1800819f1:	add    0x2(%rdi),%dh
   1800819f4:	js     0x1800819f8
   1800819f6:	jbe    0x1800819fa
   1800819f8:	push   %rbp
   1800819f9:	add    0x75(%rdx,%rax,1),%dh
   1800819fd:	add    0x2(%rbx),%cl
   180081a00:	rex.RX add 0x7a028302(%rcx),%r8b
   180081a07:	add    0x63(%rdx,%rax,1),%bh
   180081a0b:	add    0x2(%rcx),%ch
   180081a0e:	push   $0x2
   180081a10:	imul   $0x65,(%rdx),%eax
   180081a13:	add    0x6d(%rdx,%rax,1),%ch
   180081a17:	add    0x2(%rsi),%ch
   180081a1a:	push   $0x67026602
   180081a1f:	add    0x7e026f02(%rdx),%dl
   180081a25:	add    0x2(%rbp),%bh
   180081a28:	jg     0x180081a2c
   180081a2a:	rex.WRB add 0x2(%r14),%r9b
   180081a2e:	xchg   %al,(%rbx)
   180081a30:	push   %rdi
   180081a31:	add    0x2(%rcx),%bl
   180081a34:	pop    %rdx
   180081a35:	add    0x2(%rbx),%bl
   180081a38:	pop    %rbp
   180081a39:	add    0x2(%rax),%bl
   180081a3c:	pop    %rsp
   180081a3d:	add    0x2(%rsi),%bl
   180081a40:	pop    %rdi
   180081a41:	add    0x2(%rax),%ah
   180081a44:	pop    (%rdx)
   180081a46:	nop
   180081a47:	add    0x2(%rdi),%al
   180081a4a:	push   %rbx
   180081a4b:	add    0x52(%rdx,%rax,1),%dl
   180081a4f:	add    0x2(%rcx),%dl
   180081a52:	cmc    
   180081a53:	add    %bl,%dh
   180081a55:	add    -0x7cfc7efd(%rax),%cl
   180081a5b:	add    0x3(%rdi),%edi
   180081a5e:	jnp    0x180081a63
   180081a60:	jp     0x180081a65
   180081a62:	jbe    0x180081a67
   180081a64:	js     0x180081a69
   180081a66:	ja     0x180081a6b
   180081a68:	jle    0x180081a6d
   180081a6a:	jl     0x180081a6f
   180081a6c:	jge    0x180081a71
   180081a6e:	(bad)  
   180081a6f:	add    -0x74fc75fd(%rcx),%ecx
   180081a75:	add    0x2f2038d(%rbx,%rax,1),%ecx
   180081a7c:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180081a7d:	add    -0x53fd57fe(%rbx),%ch
   180081a83:	add    -0x28fd55fe(%rcx),%ch
   180081a89:	add    %dl,%al
   180081a8b:	add    %ah,%dh
   180081a8d:	add    %cl,%dh
   180081a8f:	add    %al,%al
   180081a91:	add    %cl,%ch
   180081a93:	add    %dl,%ch
   180081a95:	add    %bh,%ah
   180081a97:	add    %bl,%ch
   180081a99:	add    %al,%ch
   180081a9b:	add    %dl,%bl
   180081a9d:	add    %dh,%bl
   180081a9f:	add    %ch,%bl
   180081aa1:	add    %bl,%bl
   180081aa3:	add    %ah,%bl
   180081aa5:	add    %bh,%bl
   180081aa7:	add    %dh,%ah
   180081aa9:	add    %ch,%ch
   180081aab:	add    %ah,%ch
   180081aad:	add    %al,%ah
   180081aaf:	add    %ah,%ah
   180081ab1:	add    %ch,%ah
   180081ab3:	add    %dl,%ah
   180081ab5:	add    %cl,%ah
   180081ab7:	add    %bl,%ah
   180081ab9:	add    %al,%dh
   180081abb:	add    %dh,%ch
   180081abd:	add    %bh,%ch
   180081abf:	add    -0x27fd26fe(%rdi),%bh
   180081ac5:	add    -0x4efd52fe(%rax),%dh
   180081acb:	add    -0x4dfd51fe(%rsi),%bh
   180081ad1:	add    -0x46fd45fe(%rbp),%bh
   180081ad7:	add    -0x43fd44fe(%rax),%bh
   180081add:	add    -0x4afd4bfe(%rsi),%dh
   180081ae3:	add    -0x29fd4cfe(%rdi),%dh
   180081ae9:	add    0x2a032c02(%rdi),%ch
   180081aef:	add    -0x4ef768f8(%rbp),%edx
   180081af5:	add    -0x65fc66fd(%rbx),%ebx
   180081afb:	add    -0x61fc6afd(%rsi),%edx
   180081b01:	add    0x3ba039d(%rbx,%rax,1),%ebx
   180081b08:	mov    $0xc403cd03,%ecx
   180081b0d:	add    -0x3ffcc6fd(%rsi),%ecx
   180081b13:	add    %esp,%ecx
   180081b15:	add    -0x4bfc4ffd(%rdi),%edx
   180081b1b:	add    0x18031603(%rax),%ebx
   180081b21:	add    0x8030503(%rax),%eax
   180081b27:	add    (%rdi),%eax
   180081b29:	add    0x1f032203(%rip),%esp        # 0x19f0b3d32
   180081b2f:	add    (%rcx),%esp
   180081b31:	add    (%rax),%esp
   180081b33:	add    (%rsi),%ebx
   180081b35:	add    0x34033303(%rip),%edx        # 0x1b40b4e3e
   180081b3b:	add    (%rdi),%ebp
   180081b3d:	add    (%rsi),%eax
   180081b3f:	add    %edi,%ecx
   180081b41:	add    %ah,%cl
   180081b43:	add    %al,%dl
   180081b45:	add    %dh,%cl
   180081b47:	add    %ch,%cl
   180081b49:	add    %dl,%dl
   180081b4b:	add    %cl,%dl
   180081b4d:	add    %ah,%dl
   180081b4f:	add    %ch,%dl
   180081b51:	add    %bl,%dl
   180081b53:	add    %cl,%al
   180081b55:	add    %dh,%bl
   180081b57:	or     $0xdb,%al
   180081b59:	or     $0xbe,%al
   180081b5b:	or     $0xc3,%al
   180081b5d:	or     $0x83,%al
   180081b5f:	or     $0xd840d85,%eax
   180081b64:	push   %rcx
   180081b65:	or     $0xcf00cd5,%eax
   180081b6a:	int1   
   180081b6b:	or     $0xef,%al
   180081b6d:	or     $0xb5,%al
   180081b6f:	or     $0x4d,%al
   180081b71:	or     $0xcdd0cdf,%eax
   180081b76:	loope  0x180081b84
   180081b78:	loop   0x180081b86
   180081b7a:	in     $0xc,%eax
   180081b7c:	out    %eax,$0xc
   180081b7e:	out    %al,$0xc
   180081b80:	call   0x15014ff91
   180081b85:	or     $0xe0,%al
   180081b87:	or     $0x8e,%al
   180081b89:	or     $0xcc90cca,%eax
   180081b8e:	mov    $0xdb0dda0c,%edx
   180081b93:	or     $0xdd80ddc,%eax
   180081b98:	mov    $0x460cbd0c,%esp
   180081b9d:	or     $0xd3a0d88,%eax
   180081ba2:	ds or  $0xd360d34,%eax
   180081ba8:	xor    $0x610d920d,%eax
   180081bad:	or     $0xd680d62,%eax
   180081bb2:	addr32 or $0xd540d53,%eax
   180081bb8:	rex.RXB or $0xd8a0d89,%eax
   180081bbe:	xchg   %cl,0xd5d0d5c(%rip)        # 0x18d652920
   180081bc4:	pop    %rdi
   180081bc5:	or     $0xd5e0d60,%eax
   180081bca:	decb   0x6c0d8f0d(,%riz,2)
   180081bd1:	or     $0xd6b0d6a,%eax
   180081bd6:	pop    %rdx
   180081bd7:	or     $0xd4c0d5b,%eax
   180081bdc:	repz or $0x14,%al
   180081bdf:	or     $0xd000d13,%eax
   180081be4:	mov    $0xc,%cl
   180081be6:	stos   %al,%es:(%rdi)
   180081be7:	or     $0xab,%al
   180081be9:	or     $0xa8,%al
   180081beb:	or     $0xb0,%al
   180081bed:	or     $0x28,%al
   180081bef:	or     $0xd270cb4,%eax
   180081bf4:	sbb    $0x300d2b0d,%eax
   180081bf9:	or     $0xd2f0d2e,%eax
   180081bfe:	adc    0xcff0ca3(%rip),%cl        # 0x18d0728a7
   180081c04:	lods   %ds:(%rsi),%eax
   180081c05:	or     $0xf,%al
   180081c07:	or     $0xd110d10,%eax
   180081c0c:	mov    $0xc,%dl
   180081c0e:	mov    $0xc,%bl
   180081c10:	cmpsb  %es:(%rdi),%ds:(%rsi)
   180081c11:	or     $0xd9e0dab,%eax
   180081c16:	popf   
   180081c17:	or     $0xd9f0da0,%eax
   180081c1c:	(bad)  
   180081c1d:	or     $0xdbd0dc0,%eax
   180081c22:	mov    $0xb00dbc0d,%esi
   180081c27:	or     $0xdb60db3,%eax
   180081c2c:	mov    $0xd,%ah
   180081c2e:	mov    $0xd,%dl
   180081c30:	mov    $0xd,%cl
   180081c32:	mov    $0xba0db70d,%ecx
   180081c37:	or     $0xdb80db5,%eax
   180081c3c:	mov    $0x400dbf0d,%ebx
   180081c41:	or     $0xdcd0d3f,%eax
   180081c46:	rorb   0xdcf0dcb(%rip)        # 0x18dd72a17
   180081c4c:	int3   
   180081c4d:	or     $0xdd20dc9,%eax
   180081c52:	rorl   0xdc80dca(%rip)        # 0x18dd02a22
   180081c58:	cmp    %ecx,0xdac0d38(%rip)        # 0x18db42996
   180081c5e:	(bad)  
   180081c5f:	or     $0xd7,%al
   180081c61:	or     $0xd8,%al
   180081c63:	or     $0xd9,%al
   180081c65:	or     $0xc0,%al
   180081c67:	or     $0xcc,%al
   180081c69:	or     $0xcb,%al
   180081c6b:	or     $0xcd,%al
   180081c6d:	or     $0xce,%al
   180081c6f:	or     $0x44,%al
   180081c71:	or     $0xd450d3b,%eax
   180081c76:	rex.XB or $0xd260d37,%eax
   180081c7c:	cmp    $0xd,%al
   180081c7e:	in     $0x1,%eax
   180081c80:	sbb    %cl,0xb5c0d08(%rip)        # 0x18b64298e
   180081c86:	or     0xb(%r9),%r8
   180081c8a:	rex.X or 0xb(%rdi),%eax
   180081c8e:	or     0xb(%r8),%r9d
   180081c92:	or     0xb(%r15),%rcx
   180081c96:	pop    %rax
   180081c97:	or     (%rcx),%edi
   180081c99:	or     (%rax),%edi
   180081c9b:	or     (%rdx),%edi
   180081c9d:	or     (%rbx),%edi
   180081c9f:	or     (%rdi),%esi
   180081ca1:	or     (%rdi),%ebp
   180081ca3:	or     (%rax),%esi
   180081ca5:	or     0xb(%rbp),%ebx
   180081ca8:	and    %cl,(%rbx)
   180081caa:	adc    (%rbx,%riz,8),%cl
   180081cad:	or     0x3c0b360c(%rip),%edi        # 0x1bc1352bf
   180081cb3:	or     (%rsp,%rcx,1),%edx
   180081cb6:	sub    %ecx,(%rbx)
   180081cb8:	sub    $0x2c0b2e0b,%eax
   180081cbd:	or     (%rbx),%ebp
   180081cbf:	or     (%rdx),%esi
   180081cc1:	or     (%rcx),%esi
   180081cc3:	or     (%rax),%ebp
   180081cc5:	or     0xb(%rax),%esi
   180081cc8:	jb     0x180081cd5
   180081cca:	jae    0x180081cd7
   180081ccc:	jno    0x180081cd9
   180081cce:	pop    %rsi
   180081ccf:	or     0x7c0b800b(%rbx),%eax
   180081cd5:	or     0xb(%rsi),%edi
   180081cd8:	jg     0x180081ce5
   180081cda:	orl    $0xb5a0b82,(%rbx)
   180081ce0:	pop    %rcx
   180081ce1:	or     0xb(%rbx),%ebx
   180081ce4:	jge    0x180081cf1
   180081ce6:	rex.WRX or 0x6e0b890b(%rax),%r9
   180081ced:	or     0xb(%rbp),%ebp
   180081cf0:	xchg   %cl,(%rbx)
   180081cf2:	movsxd (%rbx),%ecx
   180081cf4:	or     %fs:0x650b7b0b(%rbp),%eax
   180081cfb:	or     0x7a0b750b(%rdi),%eax
   180081d01:	or     0xb(%rax),%edi
   180081d04:	ja     0x180081d11
   180081d06:	jbe    0x180081d13
   180081d08:	jns    0x180081d15
   180081d0a:	or     0xb(%rcx),%bp
   180081d0e:	imul   $0x67,(%rbx),%ecx
   180081d11:	or     0xb(%rdx),%ebp
   180081d14:	insb   (%dx),%es:(%rdi)
   180081d15:	or     0xb(%rax),%ebp
   180081d18:	outsl  %ds:(%rsi),(%dx)
   180081d19:	or     -0x73f474f5(%rdx),%ecx
   180081d1f:	or     0xb330b34(%rbx,%rcx,1),%eax
   180081d26:	ds or  (%rdi),%edi
   180081d29:	or     0x550b400b(%rip),%edi        # 0x1d5135d3a
   180081d2f:	or     0xb(%rdi),%edx
   180081d32:	push   %rsp
   180081d33:	or     0xb(%rsi),%edx
   180081d36:	push   %rbx
   180081d37:	or     0xb(%rdx),%edx
   180081d3a:	rex.RX or 0xb(%rbx),%r8d
   180081d3e:	or     0xb(%rax),%r10d
   180081d42:	push   %rcx
   180081d43:	or     0xc(%rbp),%ebx
   180081d46:	rex.WXB or 0xb(%r10),%rcx
   180081d4a:	or     (%rdx),%r13
   180081d4d:	or     0xb(%rax),%esp
   180081d50:	(bad)  
   180081d51:	or     0xb(%rcx),%esp
   180081d54:	(bad)  
   180081d55:	or     $0x3c,%al
   180081d57:	or     $0x13,%al
   180081d59:	or     $0x10,%al
   180081d5b:	or     $0xd,%al
   180081d5d:	or     $0xe5,%al
   180081d5f:	or     %esi,%esp
   180081d61:	or     %esp,%esp
   180081d63:	or     %esi,%esi
   180081d65:	or     %ch,%dh
   180081d67:	or     %cl,%bh
   180081d69:	or     (%rsi),%bl
   180081d6b:	or     %edi,%esi
   180081d6d:	or     %al,%bh
   180081d6f:	or     %dl,%bh
   180081d71:	or     (%rbx,%rcx,1),%cl
   180081d74:	or     $0x150b110b,%eax
   180081d79:	or     (%rax),%edx
   180081d7b:	or     (%rdx),%edx
   180081d7d:	or     (%rbx),%edx
   180081d7f:	or     (%rax),%ecx
   180081d81:	or     (%rdx),%eax
   180081d83:	or     %edi,%edi
   180081d85:	or     (%rcx),%cl
   180081d87:	or     %ebp,%edi
   180081d89:	or     %ah,%bh
   180081d8b:	or     (%rsi),%cl
   180081d8d:	or     (%rdi),%ecx
   180081d8f:	or     (%rax),%eax
   180081d91:	or     (%rcx),%eax
   180081d93:	or     (%rbx),%ecx
   180081d95:	or     (%rbx,%rcx,1),%edx
   180081d98:	or     (%rbx),%cl
   180081d9a:	sti    
   180081d9b:	or     (%rbx,%rcx,1),%al
   180081d9e:	decb   (%rdx)
   180081da0:	sbb    (%rbx),%ecx
   180081da2:	sbb    (%rbx),%cl
   180081da4:	(bad)  
   180081da5:	or     (%rax),%ebx
   180081da7:	or     (%rdi),%edx
   180081da9:	or     (%rcx),%ebx
   180081dab:	or     0x50b1c0b(%rip),%ebx        # 0x1851339bc
   180081db1:	or     (%rbx),%eax
   180081db3:	or     (%rdi),%eax
   180081db5:	or     (%rsi),%eax
   180081db7:	or     (%rdi),%ecx
   180081db9:	or     $0xe8,%al
   180081dbb:	or     %esi,%edi
   180081dbd:	or     (%rcx),%eax
   180081dbf:	or     $0x3,%al
   180081dc1:	or     $0xf1,%al
   180081dc3:	or     %ebx,%edi
   180081dc5:	or     %edx,%edi
   180081dc7:	or     %ecx,%ebp
   180081dc9:	or     (%rax),%eax
   180081dcb:	or     $0xfd,%al
   180081dcd:	or     (%rdx),%eax
   180081dcf:	or     $0xe7,%al
   180081dd1:	or     %esp,%ebp
   180081dd3:	or     %esi,%ebp
   180081dd5:	or     %ebp,%ebp
   180081dd7:	or     %edi,%ebp
   180081dd9:	or     (%rsi),%eax
   180081ddb:	or     $0x5,%al
   180081ddd:	or     $0x4,%al
   180081ddf:	or     $0x7,%al
   180081de1:	or     $0xa,%al
   180081de3:	or     $0x8,%al
   180081de5:	or     $0x9,%al
   180081de7:	or     $0xfc,%al
   180081de9:	or     %edx,%ebp
   180081deb:	or     %ebx,%ebp
   180081ded:	or     %eax,%esi
   180081def:	or     (%rbx),%ecx
   180081df1:	or     $0xc,%al
   180081df3:	or     $0xf2,%al
   180081df5:	or     %esp,%esi
   180081df7:	or     %ebx,%esi
   180081df9:	or     %ebp,%esi
   180081dfb:	or     %edi,%esi
   180081dfd:	or     %eax,%edi
   180081dff:	or     %esi,%esi
   180081e01:	or     %ecx,%edi
   180081e03:	or     %edi,%edi
   180081e05:	or     %edi,%ebp
   180081e07:	or     (%rcx),%dl
   180081e09:	or     $0xe,%al
   180081e0b:	or     $0x16,%al
   180081e0d:	or     $0x15,%al
   180081e0f:	or     $0x22,%al
   180081e11:	or     $0x23,%al
   180081e13:	or     $0x24,%al
   180081e15:	or     $0x21,%al
   180081e17:	or     $0x1a,%al
   180081e19:	or     $0x1e,%al
   180081e1b:	or     $0x1c,%al
   180081e1d:	or     $0x20,%al
   180081e1f:	or     $0x2e,%al
   180081e21:	or     $0x27,%al
   180081e23:	or     $0x28,%al
   180081e25:	or     $0x26,%al
   180081e27:	or     $0x25,%al
   180081e29:	or     $0x2a,%al
   180081e2b:	or     $0x2b,%al
   180081e2d:	or     $0x29,%al
   180081e2f:	or     $0x1f,%al
   180081e31:	or     $0x2d,%al
   180081e33:	or     $0x2c,%al
   180081e35:	or     $0x18,%al
   180081e37:	or     $0x17,%al
   180081e39:	or     $0x19,%al
   180081e3b:	or     $0x1d,%al
   180081e3d:	or     $0x1b,%al
   180081e3f:	or     $0x34,%al
   180081e41:	or     $0x37,%al
   180081e43:	or     $0x3a,%al
   180081e45:	or     $0x35,%al
   180081e47:	or     $0x3b,%al
   180081e49:	or     $0x30,%al
   180081e4b:	or     $0x32,%al
   180081e4d:	or     $0x31,%al
   180081e4f:	or     $0x33,%al
   180081e51:	or     $0x3e,%al
   180081e53:	or     $0x38,%al
   180081e55:	or     $0x39,%al
   180081e57:	or     $0x36,%al
   180081e59:	or     $0x8d,%al
   180081e5b:	or     %ecx,%edx
   180081e5d:	add    %edx,-0x48f450f5(%rdx)
   180081e63:	or     -0x44f44ef5(%rdx),%esi
   180081e69:	or     -0xbf471f5(%rax),%esi
   180081e6f:	or     -0x55f440f5(%rsi),%bh
   180081e75:	or     -0x52f454f5(%rcx),%ebp
   180081e7b:	or     -0x5bf458f5(%rsi),%esp
   180081e81:	or     0xbae0ba5(%rbx,%rcx,1),%ebp
   180081e88:	test   $0xb,%al
   180081e8a:	rorl   %cl,(%rbx)
   180081e8c:	rorb   %cl,(%rbx)
   180081e8e:	(bad)  
   180081e8f:	or     %ebp,%edx
   180081e91:	or     %ecx,%edx
   180081e93:	or     0xb220b23(%rbx,%rcx,1),%edi
   180081e9a:	mov    $0xcd0bcf0b,%ebp
   180081e9f:	or     %esi,%ecx
   180081ea1:	or     %ebx,%ecx
   180081ea3:	or     %esp,%ecx
   180081ea5:	or     -0x6cf46ef5(%rax),%edx
   180081eab:	or     -0x5ff460f5(%rcx),%esp
   180081eb1:	or     -0x5cf46bf5(%rdx),%esp
   180081eb7:	or     -0x45f447f5(%rcx),%edi
   180081ebd:	or     -0x4af44bf5(%rbx),%esi
   180081ec3:	or     -0x3df470f5(%rsi),%esi
   180081ec9:	or     %eax,%eax
   180081ecb:	or     %ecx,%eax
   180081ecd:	or     %esp,%eax
   180081ecf:	or     %ebx,%eax
   180081ed1:	or     %edx,%edx
   180081ed3:	add    %ebx,0x3f(%rsp,%rcx,1)
   180081ed7:	or     $0x40,%al
   180081ed9:	or     $0x41,%al
   180081edb:	or     $0x42,%al
   180081edd:	or     $0x43,%al
   180081edf:	or     $0x4f,%al
   180081ee1:	or     $0x5f,%al
   180081ee3:	or     0xc(%rbx),%ebx
   180081ee6:	pop    %rdx
   180081ee7:	or     $0x59,%al
   180081ee9:	or     $0x50,%al
   180081eeb:	or     $0x4d,%al
   180081eed:	or     $0xda,%al
   180081eef:	or     0xc(%rdx),%edx
   180081ef2:	push   %rbx
   180081ef3:	or     $0x54,%al
   180081ef5:	or     $0x57,%al
   180081ef7:	or     $0x56,%al
   180081ef9:	or     $0x55,%al
   180081efb:	or     $0x58,%al
   180081efd:	or     $0x51,%al
   180081eff:	or     $0xdf,%al
   180081f01:	or     %edx,%esp
   180081f03:	or     %ecx,%esp
   180081f05:	or     %esp,%ebx
   180081f07:	or     0xc(%rsi),%ecx
   180081f0a:	xor    $0x250c4c0b,%eax
   180081f0f:	or     (%rsi),%esp
   180081f11:	or     (%rdi),%esp
   180081f13:	or     (%rbx,%rcx,1),%esp
   180081f16:	(bad)  (%rbx)
   180081f18:	fisttpll (%rbx)
   180081f1a:	loopne 0x180081f27
   180081f1c:	rex.R or $0x45,%al
   180081f1f:	or     $0x49,%al
   180081f21:	or     $0x46,%al
   180081f23:	or     $0x4b,%al
   180081f25:	or     $0x4a,%al
   180081f27:	or     $0x48,%al
   180081f29:	or     $0x47,%al
   180081f2b:	or     $0x9a,%al
   180081f2d:	or     -0x6af469f5(%rax),%ebx
   180081f33:	or     -0x63f466f5(%rbx),%ebx
   180081f39:	or     -0x28f424f5(%rdi),%edx
   180081f3f:	or     %esi,%ebx
   180081f41:	or     %eax,%ebx
   180081f43:	or     %ebp,%eax
   180081f45:	or     %esi,%edx
   180081f47:	or     -0x3a(%rbx,%rcx,1),%esi
   180081f4b:	or     %edi,%eax
   180081f4d:	or     %eax,%ecx
   180081f4f:	or     %ecx,%ecx
   180081f51:	or     %edx,%ecx
   180081f53:	or     (%rdi),%ebx
   180081f55:	or     (%rcx),%esp
   180081f57:	or     %ebp,%ebp
   180081f59:	or     %cl,%dh
   180081f5b:	or     %dh,%ch
   180081f5d:	or     %al,%dh
   180081f5f:	or     %bl,%dh
   180081f61:	or     %dl,%dh
   180081f63:	or     %al,%dl
   180081f65:	or     0x690b9d0b(%rsi),%ebx
   180081f6b:	or     %ah,0x8(%rbx)
   180081f6e:	(bad)  
   180081f6f:	or     %ah,0x8(%rcx)
   180081f72:	mov    $0x6d086b08,%ebp
   180081f77:	or     %ch,0x8(%rsi)
   180081f7a:	insb   (%dx),%es:(%rdi)
   180081f7b:	or     %ch,0x8(%rdi)
   180081f7e:	jne    0x180081f88
   180081f80:	jae    0x180081f8a
   180081f82:	je     0x180081f8c
   180081f84:	jo     0x180081f8e
   180081f86:	jno    0x180081f90
   180081f88:	jb     0x180081f92
   180081f8a:	push   $0x8
   180081f8c:	test   %cl,(%rax)
   180081f8e:	(bad)  
   180081f8f:	or     %dh,0x8(%rsi)
   180081f92:	orl    $0x7f,(%rax)
   180081f95:	or     %bh,0x8(%rcx)
   180081f98:	jl     0x180081fa2
   180081f9a:	js     0x180081fa4
   180081f9c:	jle    0x180081fa6
   180081f9e:	orb    $0x77,(%rax)
   180081fa1:	or     %al,0x7a087b08(%rcx)
   180081fa7:	or     %bh,0x8(%rbp)
   180081faa:	(bad)  
   180081fab:	or     %ah,0x65(%rax,%rcx,1)
   180081faf:	or     %ah,0x8(%rdi)
   180081fb2:	data16 or %dh,0x6808b108(%rax)
   180081fb9:	or     %ch,-0x45f77af8(%rdi)
   180081fbf:	or     %bh,-0x47f743f8(%rbx)
   180081fc5:	or     %dh,-0x48f74af8(%rsi)
   180081fcb:	or     %bh,-0x4df74bf8(%rcx)
   180081fd1:	or     %dh,-0x55f756f8(%rbx)
   180081fd7:	or     %al,0x5e085f08(%rsi)
   180081fdd:	or     %bl,0x8(%rbp)
   180081fe0:	xchg   %eax,%ebx
   180081fe1:	or     %dl,0x89c089b(%rax,%rcx,1)
   180081fe8:	test   $0x8,%al
   180081fea:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180081feb:	or     %ah,-0x5ff760f8(%rbx)
   180081ff1:	or     %ah,-0x59f75bf8(%rbp)
   180081ff7:	or     %ah,-0x61f75df8(%rcx)
   180081ffd:	or     %bl,0x5a089208(%rbp)
   180082003:	or     %bl,0x8(%rbx)
   180082006:	pop    %rsp
   180082007:	or     %bl,-0x65f766f8(%rax)
   18008200d:	or     %cl,-0x76f778f8(%rax)
   180082013:	or     %cl,-0x71f773f8(%rdi)
   180082019:	or     %cl,-0x6ef76ff8(%rbp)
   18008201f:	or     %cl,-0x69f775f8(%rbx)
   180082025:	or     %bl,%cl
   180082027:	or     %bl,%al
   180082029:	or     %bh,-0x29f72af8(%rsi)
   18008202f:	or     %al,%bh
   180082031:	or     %al,%ch
   180082033:	or     %al,%dh
   180082035:	or     %cl,%al
   180082037:	or     %cl,%cl
   180082039:	or     %al,%ah
   18008203b:	or     %al,%al
   18008203d:	or     %cl,%dl
   18008203f:	or     %ch,-0x2bf728f8(%rbp)
   180082045:	or     %dl,%bl
   180082047:	or     %dl,%dl
   180082049:	or     %cl,%ah
   18008204b:	or     %cl,%ch
   18008204d:	or     %dl,%al
   18008204f:	or     %dl,%cl
   180082051:	or     %cl,%dh
   180082053:	or     %cl,%bh
   180082055:	or     %al,%dl
   180082057:	or     %al,%bl
   180082059:	or     %al,%cl
   18008205b:	or     %cl,%bl
   18008205d:	or     %bh,-0x51f754f8(%rdi)
   180082063:	or     %ch,0x2010237(%rax,%rcx,1)
   18008206a:	cmp    %eax,(%rdx)
   18008206c:	or     %eax,(%rdx)
   18008206e:	and    $0x2,%al
   180082070:	add    (%rdx),%eax
   180082072:	or     (%rdx),%al
   180082074:	(bad)  
   180082075:	add    0x4020202(%rip),%cl        # 0x1840a227d
   18008207b:	add    -0x2fdcafe(%rip),%al        # 0x17d0a5583
   180082081:	add    %ecx,(%rax)
   180082083:	add    %bh,%bh
   180082085:	add    %eax,(%rax)
   180082087:	add    %dh,%bh
   180082089:	add    %edx,(%rcx)
   18008208b:	add    (%rbx),%dl
   18008208d:	add    (%rdx),%dl
   18008208f:	add    (%rdx,%rax,1),%dl
   180082092:	cmp    (%rdx),%eax
   180082094:	jmp    0x1800820a3
   180082096:	repz or $0xdf40dec,%eax
   18008209c:	cmc    
   18008209d:	or     $0x20c0df6,%eax
   1800820a2:	sbb    (%rdx),%eax
   1800820a4:	sbb    $0x2,%al
   1800820a6:	(bad)  
   1800820a7:	add    0xb021e02(%rip),%bl        # 0x18b0a3eaf
   1800820ad:	add    (%rdi),%cl
   1800820af:	add    (%rdx),%bh
   1800820b1:	add    (%rax),%dl
   1800820b3:	add    (%rdx),%bl
   1800820b5:	add    (%rcx),%bl
   1800820b7:	add    (%rax),%bl
   1800820b9:	add    (%rsi),%dl
   1800820bb:	add    (%rdx,%rax,1),%bh
   1800820be:	add    (%rdi),%r8b
   1800820c1:	add    (%rsi),%al
   1800820c3:	add    (%rax),%dh
   1800820c5:	add    (%rax),%ch
   1800820c7:	add    0x27022e02(%rip),%ch        # 0x1a70a4ecf
   1800820cd:	add    (%rdi),%ch
   1800820cf:	add    (%rsi),%ah
   1800820d1:	add    (%rdx),%ch
   1800820d3:	add    (%rcx),%dh
   1800820d5:	add    (%rdx),%dh
   1800820d7:	add    (%rcx),%ch
   1800820d9:	add    (%rbx),%ch
   1800820db:	add    (%rdx,%rax,1),%ch
   1800820de:	ss add 0x17001801(%rip),%ch        # 0x1970838e6
   1800820e5:	add    %bh,(%rax)
   1800820e7:	add    0x470aa902(%rip),%dl        # 0x1c712c9ef
   1800820ed:	or     %ecx,0x9(%rax)
   1800820f0:	rex.WXB or %rcx,0x9(%r10)
   1800820f4:	or     %eax,0x45(%r9,%rcx,1)
   1800820f9:	or     %eax,0x9(%rsi)
   1800820fc:	push   %rcx
   1800820fd:	or     %eax,0x9(%rdx)
   180082100:	cmp    $0x40093f09,%eax
   180082105:	or     %edi,(%rsi)
   180082107:	or     %edi,(%rcx,%rcx,1)
   18008210a:	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008210b:	or     -0x4df553f7(%rbp),%ch
   180082111:	or     0x4c094d0a(%rdx),%ch
   180082117:	or     %ebp,-0x52f54ef6(%rax)
   18008211d:	or     -0x51f6bcf6(%rdi),%ch
   180082123:	or     0x9(%rsi),%cl
   180082126:	mov    $0xa,%al
   180082128:	rex.WRXB or %r10,0x9(%r8)
   18008212c:	scas   %es:(%rdi),%al
   18008212d:	or     %ebp,-0x39f59ef6(%rbx)
   180082133:	or     %ecx,%esp
   180082135:	or     %edx,%ecx
   180082137:	or     %edx,%edi
   180082139:	or     %esp,-0x5bf653f7(%rbp)
   18008213f:	or     %esp,-0x54f655f7(%rdi)
   180082145:	or     %ebp,0x6709a609(%rax)
   18008214b:	or     0xa(%rcx),%bh
   18008214e:	out    %eax,$0xa
   180082150:	jmp    0x18008215c
   180082152:	in     (%dx),%al
   180082153:	or     %al,%ch
   180082155:	or     %dl,%ch
   180082157:	or     %cl,%ch
   180082159:	or     0x6609490a(%rbp),%al
   18008215f:	or     0xa(%rsi),%dh
   180082162:	jne    0x18008216e
   180082164:	jnp    0x180082170
   180082166:	imul   $0xa680a7a,(%rdx),%ecx
   18008216c:	ja     0x180082178
   18008216e:	jg     0x18008217a
   180082170:	js     0x18008217c
   180082172:	jl     0x18008217e
   180082174:	jge    0x180082180
   180082176:	jle    0x180082182
   180082178:	push   $0xa
   18008217a:	insb   (%dx),%es:(%rdi)
   18008217b:	or     0xa(%rbx),%ch
   18008217e:	movsxd (%rdx),%ecx
   180082180:	or     %fs:0xa(%rsi),%ch
   180082184:	insl   (%dx),%es:(%rdi)
   180082185:	or     0xa(%rcx),%dh
   180082188:	jb     0x180082194
   18008218a:	outsl  %ds:(%rsi),(%dx)
   18008218b:	or     0xa(%rax),%dh
   18008218e:	(bad)  
   18008218f:	or     -0x7bf57cf6(%rax),%al
   180082195:	or     0x650a810a(%rdx),%al
   18008219b:	or     0xa(%rbx),%dh
   18008219e:	test   $0x3b0a7409,%eax
   1800821a3:	or     %eax,(%rbx,%rax,1)
   1800821a6:	movb   $0x3,(%rdx)
   1800821a9:	add    %edi,%edi
   1800821ab:	add    (%rax),%al
   1800821ad:	add    (%rdx),%eax
   1800821af:	add    (%rcx),%eax
   1800821b1:	add    (%rsi),%esi
   1800821b3:	add    %ebp,%ebp
   1800821b5:	add    %dl,%cl
   1800821b7:	or     $0xd2,%al
   1800821b9:	or     $0x50,%al
   1800821bb:	or     $0xcd30cc7,%eax
   1800821c0:	(bad)  
   1800821c1:	or     $0xc6,%al
   1800821c3:	or     $0xa7,%al
   1800821c5:	or     $0x55,%al
   1800821c7:	or     $0xd570d56,%eax
   1800821cc:	pop    %rcx
   1800821cd:	or     $0xd4e0d58,%eax
   1800821d2:	rex.WRXB or $0xcdc0cee,%rax
   1800821d8:	xchg   %ecx,0xcbf0cda(%rip)        # 0x18cc72eb8
   1800821de:	xor    0xcf70cf6(%rip),%ecx        # 0x18cff2eda
   1800821e4:	clc    
   1800821e5:	or     $0xf9,%al
   1800821e7:	or     $0xf5,%al
   1800821e9:	or     $0xf4,%al
   1800821eb:	or     $0x71,%al
   1800821ed:	or     $0xd700d6d,%eax
   1800821f2:	outsb  %ds:(%rsi),(%dx)
   1800821f3:	or     $0xd7e0d6f,%eax
   1800821f8:	jge    0x180082207
   1800821fa:	jns    0x180082209
   1800821fc:	je     0x18008220b
   1800821fe:	jnp    0x18008220d
   180082200:	jp     0x18008220f
   180082202:	jb     0x180082211
   180082204:	jl     0x180082213
   180082206:	jae    0x180082215
   180082208:	jbe    0x180082217
   18008220a:	jne    0x180082219
   18008220c:	(bad)  
   18008220d:	or     $0xd800d7f,%eax
   180082212:	orl    $0xd170d78,0xa8d0d77(%rip)        # 0x18a952f93
   18008221c:	sbb    %ecx,0xd630d1a(%rip)        # 0x18d6b2f3c
   180082222:	xor    %ecx,0xd640d69(%rip)        # 0x18d6c2f91
   180082228:	nop
   180082229:	or     $0xd8b0d91,%eax
   18008222e:	(bad)  
   18008222f:	or     $0xcec0d41,%eax
   180082234:	or     $0xd09,%ax
   180082238:	mov    %cs,0xd2a0d8d(%rip)        # 0x18d322fcb
   18008223e:	sub    %ecx,0xcb60d52(%rip)        # 0x18cbe2f96
   180082244:	mov    $0xc,%bh
   180082246:	mov    $0xf20cb80c,%ecx
   18008224b:	or     $0x1c,%al
   18008224d:	or     $0xca60d0b,%eax
   180082252:	or     $0xe0d0c0d,%eax
   180082257:	or     $0xd320cfd,%eax
   18008225c:	scas   %es:(%rdi),%al
   18008225d:	or     $0xa9,%al
   18008225f:	or     $0xaf,%al
   180082261:	or     $0xac,%al
   180082263:	or     $0x4,%al
   180082265:	or     $0xd030d06,%eax
   18008226a:	add    %ecx,0xd070d02(%rip)        # 0x18d0f2f72
   180082270:	add    $0x2c0d2d0d,%eax
   180082275:	or     $0xd1b0ca2,%eax
   18008227a:	or     0xca50ca4(%rip),%cl        # 0x18cad2f24
   180082280:	cli    
   180082281:	or     $0x16,%al
   180082283:	or     $0xcfc0cfb,%eax
   180082288:	adc    $0x930dce0d,%eax
   18008228d:	or     $0xdd40daa,%eax
   180082292:	rorl   %cl,0xda80dad(%rip)        # 0x18db03045
   180082298:	movsl  %ds:(%rsi),%es:(%rdi)
   180082299:	or     $0xd990da7,%eax
   18008229e:	movabs %eax,0xd90daf0da90da40d
   1800822a7:	or     $0xdd50dd7,%eax
   1800822ac:	(bad)  
   1800822ad:	or     $0xd480dae,%eax
   1800822b2:	fwait
   1800822b3:	or     $0xda20d9c,%eax
   1800822b8:	ret    
   1800822b9:	or     $0xdc50dc2,%eax
   1800822be:	(bad)  
   1800822bf:	or     $0xdc70dc6,%eax
   1800822c4:	movabs 0xc10cbb0d490d4a0d,%eax
   1800822cd:	or     $0xd980d97,%eax
   1800822d2:	xchg   %eax,%esp
   1800822d3:	or     $0xd960d95,%eax
   1800822d8:	rex.X or $0xcc50cd4,%eax
   1800822de:	ret    $0xc10c
   1800822e1:	or     $0x4b,%al
   1800822e3:	or     $0xced0ceb,%eax
   1800822e8:	jrcxz  0x1800822f6
   1800822ea:	(bad)  
   1800822eb:	or     $0xe9,%al
   1800822ed:	or     $0xcf,%al
   1800822ef:	or     $0xc8,%al
   1800822f1:	or     $0x3d,%al
   1800822f3:	or     $0xd1f0d25,%eax
   1800822f8:	and    $0xd,%al
   1800822fa:	and    %cl,0xd220d21(%rip)        # 0x18d2a3021
   180082300:	and    0x4380457(%rip),%ecx        # 0x18440275d
   180082306:	adc    %al,(%rsi)
   180082308:	adc    %eax,(%rsi)
   18008230a:	(bad)  
   18008230b:	add    $0x36,%al
   18008230d:	add    $0x4e,%al
   18008230f:	add    $0x14,%al
   180082311:	(bad)  
   180082312:	and    %al,(%rsi)
   180082314:	push   %rbp
   180082315:	add    $0x98,%al
   180082317:	add    $0x11,%al
   180082319:	add    $0x12,%al
   18008231b:	add    $0x9b,%al
   18008231d:	add    $0xfc,%al
   18008231f:	add    %ebx,%edi
   180082321:	add    (%rcx),%esi
   180082323:	(bad)  
   180082324:	jbe    0x18008232a
   180082326:	jnp    0x18008232c
   180082328:	adc    $0xfd061606,%eax
   18008232d:	add    (%rdi),%ecx
   18008232f:	add    $0x13,%al
   180082331:	add    $0x2d,%al
   180082333:	add    $0x1e,%al
   180082335:	add    $0x27,%al
   180082337:	add    $0x28,%al
   180082339:	add    $0x29,%al
   18008233b:	add    $0x1a,%al
   18008233d:	add    $0x18,%al
   18008233f:	add    $0x1b,%al
   180082341:	add    $0x1d,%al
   180082343:	add    $0x20,%al
   180082345:	add    $0x1f,%al
   180082347:	add    $0x2c,%al
   180082349:	add    $0x30,%al
   18008234b:	add    $0x33,%al
   18008234d:	add    $0x31,%al
   18008234f:	add    $0x1c,%al
   180082351:	add    $0x2f,%al
   180082353:	add    $0x2e,%al
   180082355:	add    $0x26,%al
   180082357:	add    $0x23,%al
   180082359:	add    $0x22,%al
   18008235b:	add    $0x25,%al
   18008235d:	add    $0x24,%al
   18008235f:	add    $0x21,%al
   180082361:	add    $0x2b,%al
   180082363:	add    $0x2a,%al
   180082365:	add    $0x19,%al
   180082367:	add    $0x32,%al
   180082369:	add    $0x62,%al
   18008236b:	add    $0x64,%al
   18008236d:	add    $0x66,%al
   18008236f:	add    $0x67,%al
   180082371:	add    $0x5a,%al
   180082373:	add    $0x5c,%al
   180082375:	add    $0x7f,%al
   180082377:	add    $0x60,%al
   180082379:	add    $0x6c,%al
   18008237b:	add    $0x77,%al
   18008237d:	add    $0x6b,%al
   18008237f:	add    $0x7e,%al
   180082381:	add    $0x6f,%al
   180082383:	add    $0x7c,%al
   180082385:	add    $0x7d,%al
   180082387:	add    $0x73,%al
   180082389:	add    $0x69,%al
   18008238b:	add    $0x6a,%al
   18008238d:	add    $0x81,%al
   18008238f:	add    $0x70,%al
   180082391:	add    $0x6d,%al
   180082393:	add    $0x95,%al
   180082395:	add    $0x96,%al
   180082397:	add    $0x68,%al
   180082399:	add    $0x72,%al
   18008239b:	add    $0x10,%al
   18008239d:	add    $0xa5,%al
   18008239f:	add    $0x65,%al
   1800823a1:	add    $0x34,%al
   1800823a3:	add    $0x3b,%al
   1800823a5:	add    $0x3a,%al
   1800823a7:	add    $0x3c,%al
   1800823a9:	add    $0x3d,%al
   1800823ab:	add    $0x3f,%al
   1800823ad:	add    $0x42,%al
   1800823af:	add    $0x41,%al
   1800823b1:	add    $0x45,%al
   1800823b3:	add    $0x48,%al
   1800823b5:	add    $0x49,%al
   1800823b7:	add    $0x40,%al
   1800823b9:	add    $0x43,%al
   1800823bb:	add    $0x3e,%al
   1800823bd:	add    $0x4b,%al
   1800823bf:	add    $0x47,%al
   1800823c1:	add    $0x4a,%al
   1800823c3:	add    $0x4c,%al
   1800823c5:	add    $0x44,%al
   1800823c7:	add    $0x46,%al
   1800823c9:	add    $0x4d,%al
   1800823cb:	add    $0x9c,%al
   1800823cd:	add    $0xe,%al
   1800823cf:	add    $0x17,%al
   1800823d1:	add    $0x61,%al
   1800823d3:	add    $0x89,%al
   1800823d5:	add    $0x58a0588,%eax
   1800823da:	and    %eax,(%rsi)
   1800823dc:	loopne 0x1800823e2
   1800823de:	mov    $0x4,%al
   1800823e0:	scas   %es:(%rdi),%eax
   1800823e1:	add    $0xc5,%al
   1800823e3:	add    $0x23,%al
   1800823e5:	add    $0x5940595,%eax
   1800823ea:	cmp    0x5390530(%rip),%eax        # 0x185412920
   1800823f0:	ss add $0x53a0535,%eax
   1800823f6:	cmp    $0x5,%al
   1800823f8:	cmp    %al,0x61704a9(%rip)        # 0x1861f28a7
   1800823fe:	sbb    (%rsi),%eax
   180082400:	sbb    $0x6,%al
   180082402:	sbb    $0x32053406,%eax
   180082407:	add    $0x5330531,%eax
   18008240c:	rex.B (bad) 
   18008240e:	adc    (%rsi),%al
   180082410:	adc    (%rsi),%eax
   180082412:	(bad)  
   180082413:	(bad)  
   180082414:	or     $0x6,%al
   180082416:	or     $0x1a060f06,%eax
   18008241b:	(bad)  
   18008241c:	sbb    %al,(%rsi)
   18008241e:	sbb    %eax,(%rsi)
   180082420:	and    $0x3c062606,%eax
   180082425:	(bad)  
   180082426:	cs (bad) 
   180082428:	sub    (%rsi),%al
   18008242a:	sub    %eax,(%rsi)
   18008242c:	cmp    %al,(%rsi)
   18008242e:	and    (%rsi),%al
   180082430:	and    (%rsi),%eax
   180082432:	sub    %al,(%rsi)
   180082434:	and    $0x6,%al
   180082436:	(bad)  
   180082437:	(bad)  
   180082438:	(bad)  
   180082439:	(bad)  
   18008243a:	movb   $0x4,(%rdi,%rax,8)
   18008243e:	enter  $0xc904,$0x4
   180082442:	(bad)  
   180082443:	add    $0xcc,%al
   180082445:	add    $0xcd,%al
   180082447:	add    $0xcf,%al
   180082449:	add    $0xd8,%al
   18008244b:	add    $0xd0,%al
   18008244d:	add    $0xad,%al
   18008244f:	add    $0xd1,%al
   180082451:	add    $0xd2,%al
   180082453:	add    $0xd3,%al
   180082455:	add    $0xab,%al
   180082457:	add    $0xd7,%al
   180082459:	add    $0x2e,%al
   18008245b:	add    $0x4d604ac,%eax
   180082460:	(bad)  
   180082461:	add    $0xae,%al
   180082463:	add    $0xbf,%al
   180082465:	add    $0xb5,%al
   180082467:	add    $0xb6,%al
   180082469:	add    $0x2c,%al
   18008246b:	add    $0x5250526,%eax
   180082470:	and    0x5270511(%rip),%al        # 0x1852f2987
   180082476:	adc    0x510050f(%rip),%al        # 0x18518298b
   18008247c:	(bad)  
   18008247d:	add    $0x18,%al
   18008247f:	add    $0x4c30517,%eax
   180082484:	ret    $0xc104
   180082487:	add    $0x1a,%al
   180082489:	add    $0x51b051d,%eax
   18008248e:	(bad)  
   18008248f:	add    $0x51c051f,%eax
   180082494:	sbb    %eax,0x52d04be(%rip)        # 0x185352958
   18008249a:	and    %al,0x52f04fb(%rip)        # 0x18537299b
   1800824a0:	stos   %al,%es:(%rdi)
   1800824a1:	add    $0xf9,%al
   1800824a3:	add    $0xfa,%al
   1800824a5:	add    $0xf7,%al
   1800824a7:	add    $0xf1,%al
   1800824a9:	add    $0xe4,%al
   1800824ab:	add    $0xe5,%al
   1800824ad:	add    $0xe7,%al
   1800824af:	add    $0xe6,%al
   1800824b1:	add    $0xec,%al
   1800824b3:	add    $0xe9,%al
   1800824b5:	add    $0xe8,%al
   1800824b7:	add    $0xf0,%al
   1800824b9:	add    $0xef,%al
   1800824bb:	add    $0xeb,%al
   1800824bd:	add    $0xee,%al
   1800824bf:	add    $0xed,%al
   1800824c1:	add    $0xea,%al
   1800824c3:	add    $0xf2,%al
   1800824c5:	add    $0xf4,%al
   1800824c7:	add    $0xf5,%al
   1800824c9:	add    $0xf6,%al
   1800824cb:	add    $0xd9,%al
   1800824cd:	add    $0xe1,%al
   1800824cf:	add    $0xe2,%al
   1800824d1:	add    $0xdc,%al
   1800824d3:	add    $0xb1,%al
   1800824d5:	add    $0xff,%al
   1800824d7:	add    0x5(%rdi),%esi
   1800824da:	add    %al,(%rdx,%rax,1)
   1800824dd:	add    $0x3,%al
   1800824df:	add    $0x4,%al
   1800824e1:	add    $0x6,%al
   1800824e3:	add    $0x5,%al
   1800824e5:	add    $0x1,%al
   1800824e7:	add    $0x7,%al
   1800824e9:	add    $0x5060504,%eax
   1800824ee:	add    0x5050509(%rip),%al        # 0x1850d29fd
   1800824f4:	or     %al,0x5010503(%rip)        # 0x1850929fd
   1800824fa:	(bad)  
   1800824fb:	add    $0x50c0500,%eax
   180082500:	incb   -0xfaf5fb(,%rcx,1)
   180082507:	add    $0xb,%al
   180082509:	add    $0x5130514,%eax
   18008250e:	(bad)  
   18008250f:	add    $0x5240515,%eax
   180082514:	and    %eax,0x49d0497(%rip)        # 0x184a529b1
   18008251a:	cld    
   18008251b:	add    $0xfd,%al
   18008251d:	add    $0xb7,%al
   18008251f:	add    $0xb8,%al
   180082521:	add    $0xb9,%al
   180082523:	add    $0xba,%al
   180082525:	add    $0xbb,%al
   180082527:	add    $0x8f,%al
   180082529:	add    $0x58d058e,%eax
   18008252e:	xchg   %al,0x5fe05fa(%rip)        # 0x186062b2e
   180082534:	std    
   180082535:	add    $0x5f205f3,%eax
   18008253a:	lock add $0x5ef05f4,%eax
   180082540:	out    %al,(%dx)
   180082541:	add    $0x5f105f5,%eax
   180082546:	in     (%dx),%eax
   180082547:	add    $0x5ea05ec,%eax
   18008254c:	jmp    0x1680e1056
   180082551:	add    $0x5d605d4,%eax
   180082556:	(bad)  
   180082557:	add    $0x5d805d7,%eax
   18008255c:	push   %rdi
   18008255d:	(bad)  
   18008255e:	push   %rsi
   18008255f:	(bad)  
   180082560:	pop    %rcx
   180082561:	(bad)  
   180082562:	cmp    %eax,(%rdi,%rax,2)
   180082565:	(bad)  
   180082566:	pop    %rdx
   180082567:	(bad)  
   180082568:	movsxd (%rsp,%rcx,2),%eax
   18008256b:	(bad)  
   18008256c:	rex.WRX (bad) 
   18008256e:	rex.WX (bad) 
   180082570:	rex.W (bad) 
   180082572:	rex.WB (bad) 
   180082574:	push   %rcx
   180082575:	(bad)  
   180082576:	push   %rax
   180082577:	(bad)  
   180082578:	push   %rdx
   180082579:	(bad)  
   18008257a:	rex.WRXB (bad) 
   18008257c:	rex.WXB (bad) 
   18008257e:	pop    %rbx
   18008257f:	add    $0x53,%al
   180082581:	(bad)  
   180082582:	push   %rsp
   180082583:	(bad)  
   180082584:	push   %rbp
   180082585:	(bad)  
   180082586:	rex.WRB (bad) 
   180082588:	rex.X (bad) 
   18008258a:	rex.XB (bad) 
   18008258c:	rex.RB (bad) 
   18008258e:	rex.R (bad) 
   180082590:	or     (%rcx,%rcx,1),%eax
   180082593:	add    $0x8,%al
   180082595:	add    $0xd,%al
   180082597:	add    $0xa,%al
   180082599:	add    $0xc,%al
   18008259b:	add    $0x7,%al
   18008259d:	add    $0x35,%al
   18008259f:	add    $0x46,%al
   1800825a1:	(bad)  
   1800825a2:	faddl  0x5e505e6(%rip)        # 0x185ed2b8e
   1800825a8:	loopne 0x1800825af
   1800825aa:	filds  0x5dd05e1(%rip)        # 0x185e52b91
   1800825b0:	fiadds 0x5e705d9(%rip)        # 0x185ef2b8f
   1800825b6:	fildl  0x5e405da(%rip)        # 0x185ec2b96
   1800825bc:	jrcxz  0x1800825c3
   1800825be:	loop   0x1800825c5
   1800825c0:	xchg   %eax,0x6300633(%rip)        # 0x186382bf9
   1800825c6:	ss (bad) 
   1800825c8:	(bad)  
   1800825c9:	(bad)  
   1800825ca:	xor    $0x6,%al
   1800825cc:	xor    $0xa5063206,%eax
   1800825d1:	add    $0x5be05a1,%eax
   1800825d6:	iret   
   1800825d7:	add    $0x5b805a4,%eax
   1800825dc:	cmpsb  %es:(%rdi),%ds:(%rsi)
   1800825dd:	add    $0x5aa05ab,%eax
   1800825e2:	cmpsl  %es:(%rdi),%ds:(%rsi)
   1800825e3:	add    $0x5ae05ac,%eax
   1800825e8:	test   $0x5,%al
   1800825ea:	test   $0xb605bf05,%eax
   1800825ef:	add    $0x5b405b5,%eax
   1800825f4:	mov    $0x5,%bl
   1800825f6:	mov    $0xba05bb05,%ecx
   1800825fb:	add    $0x5bc05bd,%eax
   180082600:	lods   %ds:(%rsi),%eax
   180082601:	add    $0x5b105b0,%eax
   180082606:	mov    $0x5,%dl
   180082608:	roll   %cl,0x5d105d2(%rip)        # 0x185d92be0
   18008260e:	rolb   0x5c305c0(%rip)        # 0x185cb2bd4
   180082614:	fiadds (%rsi,%rcx,8)
   180082617:	add    $0x5c105c4,%eax
   18008261c:	ret    $0xcb05
   18008261f:	add    $0x5c705c5,%eax
   180082624:	lret   $0xc605
   180082627:	add    $0x5cc05cd,%eax
   18008262c:	enter  $0xc905,$0x5
   180082630:	filds  (%rdx,%riz,4)
   180082633:	add    $0x60105a3,%eax
   180082638:	add    (%rsi),%al
   18008263a:	add    (%rsi),%eax
   18008263c:	push   %rsi
   18008263d:	add    $0x58,%al
   18008263f:	add    $0x15,%al
   180082641:	add    $0x16,%al
   180082643:	add    $0x14,%al
   180082645:	add    $0xaf,%al
   180082647:	add    $0x5850584,%eax
   18008264c:	mov    %es,0x4dd058b(%rip)        # 0x184e52bdd
   180082652:	xchg   %eax,%ebx
   180082653:	add    $0x5900591,%eax
   180082658:	xchg   %eax,%edx
   180082659:	add    $0x45e045f,%eax
   18008265e:	pop    %rbp
   18008265f:	add    $0x82,%al
   180082661:	add    $0x80,%al
   180082663:	add    $0x75,%al
   180082665:	add    $0xe3,%al
   180082667:	add    $0x7a,%al
   180082669:	add    $0x79,%al
   18008266b:	add    $0x78,%al
   18008266d:	add    $0x71,%al
   18008266f:	add    $0x5,%al
   180082671:	(bad)  
   180082672:	xchg   %eax,%esp
   180082673:	add    $0x4f,%al
   180082675:	add    $0x53,%al
   180082677:	add    $0x51,%al
   180082679:	add    $0x52,%al
   18008267b:	add    $0x54,%al
   18008267d:	add    $0x50,%al
   18008267f:	add    $0x84,%al
   180082681:	add    $0x83,%al
   180082683:	add    $0x8b,%al
   180082685:	add    $0x85,%al
   180082687:	add    $0x8c,%al
   180082689:	add    $0x8d,%al
   18008268b:	add    $0x91,%al
   18008268d:	add    $0x92,%al
   18008268f:	add    $0x87,%al
   180082691:	add    $0x86,%al
   180082693:	add    $0x93,%al
   180082695:	add    $0x8a,%al
   180082697:	add    $0x90,%al
   180082699:	add    $0x8e,%al
   18008269b:	add    $0x89,%al
   18008269d:	add    $0x8f,%al
   18008269f:	add    $0x88,%al
   1800826a1:	add    $0x6,%al
   1800826a3:	(bad)  
   1800826a4:	or     %eax,(%rsi)
   1800826a6:	(bad)  
   1800826a7:	(bad)  
   1800826a8:	or     (%rsi),%al
   1800826aa:	or     %al,(%rsi)
   1800826ac:	pop    %rcx
   1800826ad:	add    $0xb,%al
   1800826af:	(bad)  
   1800826b0:	add    $0x6,%al
   1800826b2:	mov    $0x5,%bh
   1800826b4:	popf   
   1800826b5:	add    $0x59e059f,%eax
   1800826ba:	xchg   %eax,%edi
   1800826bb:	add    $0x5990598,%eax
   1800826c0:	xchg   %eax,%esi
   1800826c1:	add    $0x59a059b,%eax
   1800826c6:	pushf  
   1800826c7:	add    $0x58205a0,%eax
   1800826cc:	addl   $0x57e0580,0x5830600(%rip)        # 0x1858b2cd6
   1800826d6:	jge    0x1800826dd
   1800826d8:	jl     0x1800826df
   1800826da:	jp     0x1800826e1
   1800826dc:	jnp    0x1800826e3
   1800826de:	jg     0x1800826e5
   1800826e0:	js     0x1800826e7
   1800826e2:	jns    0x1800826e9
   1800826e4:	pop    %rax
   1800826e5:	(bad)  
   1800826e6:	sub    0x5290528(%rip),%al        # 0x185312c14
   1800826ec:	sub    0x75b04f3(%rip),%eax        # 0x187632be5
   1800826f2:	pop    %rdi
   1800826f3:	(bad)  
   1800826f4:	test   %al,(%rdi)
   1800826f6:	test   %eax,(%rdi)
   1800826f8:	xchg   %al,(%rdi)
   1800826fa:	rex.WRXB (bad) 
   1800826fc:	ja     0x180082704
   1800826fe:	jg     0x180082706
   180082700:	xchg   %eax,(%rsi)
   180082702:	test   %eax,(%rsi)
   180082704:	addl   $0x6820680,(%rsi)
   18008270a:	addl   $0xffffff88,(%rsi)
   18008270d:	(bad)  
   18008270e:	test   %al,(%rsi)
   180082710:	xchg   %al,(%rsi)
   180082712:	mov    (%rsi),%al
   180082714:	insb   (%dx),%es:(%rdi)
   180082715:	(bad)  
   180082716:	jo     0x18008271e
   180082718:	(bad)  
   180082719:	(bad)  
   18008271a:	movsxd (%rsi),%eax
   18008271c:	pop    %rdi
   18008271d:	(bad)  
   18008271e:	pop    %rsp
   18008271f:	(bad)  
   180082720:	(bad)
   180082725:	(bad)  
   180082726:	data16 (bad) 
   180082728:	gs (bad) 
   18008272a:	pop    %rsi
   18008272b:	(bad)  
   18008272c:	pop    %rbp
   18008272d:	(bad)  
   18008272e:	(bad)  
   18008272f:	(bad)  
   180082730:	push   $0x6b066a06
   180082735:	(bad)  
   180082736:	imul   $0x6790676,(%rsi),%eax
   18008273c:	js     0x180082744
   18008273e:	jp     0x180082746
   180082740:	jle    0x180082748
   180082742:	jnp    0x18008274a
   180082744:	jl     0x18008274c
   180082746:	jge    0x18008274e
   180082748:	data16 (bad) 
   18008274a:	xchg   %eax,%esp
   18008274b:	(bad)  
   18008274c:	xchg   %eax,%ebx
   18008274d:	(bad)  
   18008274e:	xchg   %eax,%ebp
   18008274f:	(bad)  
   180082750:	xchg   %eax,%esi
   180082751:	(bad)  
   180082752:	lea    (%rsi),%eax
   180082754:	mov    (%rsi),%es
   180082756:	pop    (%rsi)
   180082758:	xchg   %eax,%ecx
   180082759:	(bad)  
   18008275a:	nop
   18008275b:	(bad)  
   18008275c:	xchg   %eax,%edx
   18008275d:	(bad)  
   18008275e:	addr32 (bad) 
   180082760:	mov    (%rsi),%eax
   180082762:	mov    %es,(%rsi)
   180082764:	mov    %eax,(%rsi)
   180082766:	mov    $0x6,%bh
   180082768:	adc    $0xa8083408,%eax
   18008276d:	(bad)  
   18008276e:	test   $0xaf06b006,%eax
   180082773:	(bad)  
   180082774:	stos   %al,%es:(%rdi)
   180082775:	(bad)  
   180082776:	scas   %es:(%rdi),%al
   180082777:	(bad)  
   180082778:	lods   %ds:(%rsi),%eax
   180082779:	(bad)  
   18008277a:	mov    $0x6,%cl
   18008277c:	lods   %ds:(%rsi),%al
   18008277d:	(bad)  
   18008277e:	stos   %eax,%es:(%rdi)
   18008277f:	(bad)  
   180082780:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082781:	(bad)  
   180082782:	mov    $0x6,%dl
   180082784:	movabs %al,0xa0069d069f06a106
   18008278d:	(bad)  
   18008278e:	movabs %eax,0xba06b9069e06a406
   180082797:	(bad)  
   180082798:	fwait
   180082799:	(bad)  
   18008279a:	movsl  %ds:(%rsi),%es:(%rdi)
   18008279b:	(bad)  
   18008279c:	xchg   %eax,%edi
   18008279d:	(bad)  
   18008279e:	cwtl   
   18008279f:	(bad)  
   1800827a0:	pushf  
   1800827a1:	(bad)  
   1800827a2:	xor    (%rax),%ecx
   1800827a4:	mov    $0x6,%bl
   1800827a6:	mov    $0x6,%ch
   1800827a8:	mov    $0x6,%ah
   1800827aa:	push   %rsp
   1800827ab:	(bad)  
   1800827ac:	jns    0x1800827b5
   1800827ae:	je     0x1800827b7
   1800827b0:	(bad)  
   1800827b1:	(bad)  
   1800827b2:	addl   $0xffffff80,(%rdi)
   1800827b5:	(bad)  
   1800827b6:	addl   $0x77a077e,(%rdi)
   1800827bc:	jo     0x1800827c5
   1800827be:	jg     0x1800827c7
   1800827c0:	jge    0x1800827c9
   1800827c2:	jnp    0x1800827cb
   1800827c4:	jl     0x1800827cd
   1800827c6:	imul   $0x7750771,(%rdi),%eax
   1800827cc:	ja     0x1800827d5
   1800827ce:	js     0x1800827d7
   1800827d0:	jbe    0x1800827d9
   1800827d2:	imul   $0x6a,(%rdi),%eax
   1800827d5:	(bad)  
   1800827d6:	insb   (%dx),%es:(%rdi)
   1800827d7:	(bad)  
   1800827d8:	outsl  %ds:(%rsi),(%dx)
   1800827d9:	(bad)  
   1800827da:	outsb  %ds:(%rsi),(%dx)
   1800827db:	(bad)  
   1800827dc:	outsb  %ds:(%rsi),(%dx)
   1800827dd:	add    $0xa0,%al
   1800827df:	add    $0xa3,%al
   1800827e1:	add    $0xa4,%al
   1800827e3:	add    $0xa1,%al
   1800827e5:	add    $0xa8,%al
   1800827e7:	add    $0x6d,%al
   1800827e9:	(bad)  
   1800827ea:	testb  $0xfc,0x5f705f9(%rip)        # 0x185ff2dea
   1800827f1:	add    $0x5fb05f8,%eax
   1800827f6:	incl   0x7500474(%rip)        # 0x187582c70
   1800827fc:	pop    %rbx
   1800827fd:	(bad)  
   1800827fe:	push   %rdx
   1800827ff:	(bad)  
   180082800:	jno    0x180082808
   180082802:	je     0x18008280a
   180082804:	jne    0x18008280c
   180082806:	jae    0x18008280e
   180082808:	jb     0x180082810
   18008280a:	outsb  %ds:(%rsi),(%dx)
   18008280b:	(bad)  
   18008280c:	push   $0x51066d07
   180082811:	(bad)  
   180082812:	pop    %rdx
   180082813:	(bad)  
   180082814:	(bad)  
   180082815:	(bad)  
   180082816:	push   %rbp
   180082817:	(bad)  
   180082818:	push   %rsi
   180082819:	(bad)  
   18008281a:	pop    %rsi
   18008281b:	(bad)  
   18008281c:	pop    %rbp
   18008281d:	(bad)  
   18008281e:	gs (bad) 
   180082820:	push   %rdi
   180082821:	(bad)  
   180082822:	pop    %rcx
   180082823:	(bad)  
   180082824:	pop    %rax
   180082825:	(bad)  
   180082826:	fs (bad) 
   180082828:	pop    %rsp
   180082829:	(bad)  
   18008282a:	(bad)  
   18008282b:	(bad)  
   18008282c:	(bad)  
   18008282d:	(bad)  
   18008282e:	movsxd (%rdi),%eax
   180082830:	mov    $0xc007be07,%edi
   180082835:	(bad)  
   180082836:	adc    $0x8,%al
   180082838:	out    %al,(%dx)
   180082839:	(bad)  
   18008283a:	out    %eax,(%dx)
   18008283b:	(bad)  
   18008283c:	lock (bad) 
   18008283e:	clc    
   18008283f:	(bad)  
   180082840:	filds  (%rdi)
   180082842:	sub    %cl,(%rax)
   180082844:	(bad)  
   180082845:	or     %ch,(%rsi)
   180082847:	or     %ch,0x2c082908(%rip)        # 0x1ac105155
   18008284d:	or     %ch,(%rdi)
   18008284f:	or     %ch,(%rdx)
   180082851:	or     %ch,(%rbx)
   180082853:	or     %cl,%dl
   180082855:	(bad)  
   180082856:	lret   
   180082857:	(bad)  
   180082858:	(bad)  
   180082859:	(bad)  
   18008285a:	leave  
   18008285b:	(bad)  
   18008285c:	enter  $0xcc07,$0x7
   180082860:	(bad)
   180082863:	(bad)  
   180082864:	movl   $0x7d007cd,(%rdi)
   18008286a:	roll   (%rdi)
   18008286c:	iret   
   18008286d:	(bad)  
   18008286e:	(bad)  
   18008286f:	(bad)  
   180082870:	in     $0x7,%eax
   180082872:	in     $0x7,%al
   180082874:	loop   0x18008287d
   180082876:	loope  0x18008287f
   180082878:	jrcxz  0x180082881
   18008287a:	rolb   %cl,(%rdi)
   18008287c:	out    %al,$0x7
   18008287e:	cld    
   18008287f:	(bad)  
   180082880:	std    
   180082881:	(bad)  
   180082882:	incb   (%rdi)
   180082884:	loopne 0x18008288d
   180082886:	cli    
   180082887:	(bad)  
   180082888:	sti    
   180082889:	(bad)  
   18008288a:	incl   (%rdi)
   18008288c:	stc    
   18008288d:	(bad)  
   18008288e:	ret    $0xf307
   180082891:	(bad)  
   180082892:	repnz (bad) 
   180082894:	testb  $0xf1,(%rdi)
   180082897:	(bad)  
   180082898:	testl  $0x7f407f5,(%rdi)
   18008289e:	or     %cl,(%rax)
   1800828a0:	out    %eax,$0x7
   1800828a2:	and    (%rax),%cl
   1800828a4:	and    %ecx,(%rax)
   1800828a6:	sbb    %cl,(%rax)
   1800828a8:	sbb    %ecx,(%rax)
   1800828aa:	(bad)  
   1800828ab:	or     %ah,(%rbx)
   1800828ad:	or     %bl,(%rbx)
   1800828af:	or     %bl,(%rax,%rcx,1)
   1800828b2:	and    $0x8,%al
   1800828b4:	and    $0x1d081a08,%eax
   1800828b9:	or     %bl,(%rsi)
   1800828bb:	or     %ah,(%rax)
   1800828bd:	or     %ch,%cl
   1800828bf:	(bad)  
   1800828c0:	(bad)  
   1800828c1:	(bad)  
   1800828c2:	in     (%dx),%al
   1800828c3:	(bad)  
   1800828c4:	jmp    0x1800828cd
   1800828c6:	call   0x196103fd2
   1800828cb:	or     %bl,%dh
   1800828cd:	(bad)  
   1800828ce:	roll   %cl,(%rdi)
   1800828d0:	fildl  (%rdi)
   1800828d2:	(bad)  
   1800828d3:	(bad)  
   1800828d4:	flds   (%rdi)
   1800828d6:	(bad)  
   1800828d7:	(bad)  
   1800828d8:	xlat   %ds:(%rbx)
   1800828d9:	(bad)  
   1800828da:	fldl   (%rdi)
   1800828dc:	faddl  (%rdi)
   1800828de:	fiaddl (%rdi)
   1800828e0:	fadds  (%rdi)
   1800828e2:	(bad)  
   1800828e3:	(bad)  
   1800828e4:	in     (%dx),%eax
   1800828e5:	(bad)  
   1800828e6:	es or  %bl,-0x59f965fa(%rcx)
   1800828ed:	(bad)  
   1800828ee:	(bad)  
   1800828ef:	or     %dh,(%rsi)
   1800828f1:	or     %dh,0x3106b808(%rip)        # 0x1b10ee0ff
   1800828f7:	or     %dh,(%rdx)
   1800828f9:	or     %dh,(%rax)
   1800828fb:	or     %cl,(%rax,%rcx,1)
   1800828fe:	or     %ecx,(%rax)
   180082900:	add    $0x8,%al
   180082902:	add    (%rax),%ecx
   180082904:	or     (%rax),%ecx
   180082906:	or     (%rax),%cl
   180082908:	(bad)  
   180082909:	or     %al,0x13080608(%rip)        # 0x193102f17
   18008290f:	or     %dl,(%rdx)
   180082911:	or     %dl,(%rcx)
   180082913:	or     %dl,(%rax)
   180082915:	or     %cl,(%rdi)
   180082917:	or     %cl,(%rsi)
   180082919:	or     %cl,0x1080008(%rip)        # 0x181102927
   18008291f:	or     %al,(%rdx)
   180082921:	or     %cl,0x7(%rcx)
   180082924:	rex.RX (bad) 
   180082926:	rex.RXB (bad) 
   180082928:	rex.W (bad) 
   18008292a:	rex.WRB (bad) 
   18008292c:	rex.WX (bad) 
   18008292e:	rex.WXB (bad) 
   180082930:	rex.WRX (bad) 
   180082932:	rex.WR (bad) 
   180082934:	jb     0x18008293d
   180082936:	ret    
   180082937:	(bad)  
   180082938:	jae    0x180082941
   18008293a:	mov    $0x6,%dh
   18008293c:	roll   $0xbb,(%rdi)
   18008293f:	(bad)  
   180082940:	push   %rbx
   180082941:	(bad)  
   180082942:	rex.R (bad) 
   180082944:	mov    $0x97066f07,%ebp
   180082949:	or     $0x8e,%al
   18008294b:	or     $0x5a,%al
   18008294d:	add    %ebx,0x1(%rdi)
   180082950:	mov    $0x0,%dh
   180082952:	pop    %rsi
   180082953:	add    %ebx,%ebp
   180082955:	add    %bl,%ah
   180082957:	add    %cl,%dh
   180082959:	add    %cl,0x5900e10c(%rbp)
   18008295f:	add    %ch,%al
   180082961:	add    %ch,%cl
   180082963:	add    %ch,%dl
   180082965:	add    %ah,%bh
   180082967:	add    %dl,-0x6bfea4f4(%rcx)
   18008296d:	or     $0x95,%al
   18008296f:	or     $0x96,%al
   180082971:	or     $0x5c,%al
   180082973:	add    %esp,0x1(%rdx)
   180082976:	je     0x180082979
   180082978:	add    %esp,0x65(%ecx,%eax,1)
   18008297d:	add    %esp,0x1(%rsi)
   180082980:	xchg   %eax,%ecx
   180082981:	or     0x1(%rbp),%dh
   180082984:	jns    0x180082987
   180082986:	jp     0x180082989
   180082988:	jnp    0x18008298b
   18008298a:	jl     0x18008298d
   18008298c:	lahf   
   18008298d:	or     %esi,0x1(%rdi)
   180082990:	fisttps (%rcx)
   180082992:	push   $0x1
   180082994:	movabs %eax,0x6e017001760a9b0a
   18008299d:	add    %ebp,0x1(%rbx)
   1800829a0:	insl   (%dx),%es:(%rdi)
   1800829a1:	add    %ebp,(%rcx,%rax,1)
   1800829a4:	jge    0x1800829af
   1800829a6:	insb   (%dx),%es:(%rdi)
   1800829a7:	add    %edi,0x9(%rsi)
   1800829aa:	imul   $0x1710168,(%rcx),%eax
   1800829b0:	jb     0x1800829b3
   1800829b2:	jae    0x1800829b5
   1800829b4:	outsl  %ds:(%rsi),(%dx)
   1800829b5:	add    %ebx,0x1(%rcx)
   1800829b8:	jge    0x1800829bb
   1800829ba:	or     $0x7,%al
   1800829bc:	out    %eax,$0xd
   1800829be:	out    %al,$0xd
   1800829c0:	in     $0xd,%eax
   1800829c2:	call   0x16a098cd4
   1800829c7:	or     $0x1550154,%eax
   1800829cc:	push   %rsi
   1800829cd:	add    %edi,%eax
   1800829cf:	or     $0x1580de9,%eax
   1800829d4:	push   %rdi
   1800829d5:	add    %esp,0x1(%rcx)
   1800829d8:	rex.WRXB add %r15,0x1(%r8)
   1800829dc:	push   %rbx
   1800829dd:	add    %ecx,0x1(%rsi)
   1800829e0:	push   %rcx
   1800829e1:	add    %edx,0x1(%rdx)
   1800829e4:	push   %rax
   1800829e5:	add    %edi,-0x33f534f6(%rbx)
   1800829eb:	or     %bh,%cl
   1800829ed:	or     %al,%dl
   1800829ef:	or     %cl,%dl
   1800829f1:	or     %ch,%cl
   1800829f3:	or     %dh,%cl
   1800829f5:	or     %dh,%bl
   1800829f7:	or     $0xde10ddf,%eax
   1800829fc:	loopne 0x180082a0b
   1800829fe:	loop   0x180082a0d
   180082a00:	jrcxz  0x180082a0f
   180082a02:	in     $0xd,%al
   180082a04:	xor    (%rcx),%al
   180082a06:	xor    %eax,(%rcx)
   180082a08:	rex.RX add %r8d,0x1(%rbp)
   180082a0c:	(bad)  
   180082a0d:	add    %eax,0x38(%rcx,%rax,1)
   180082a11:	add    %edi,(%rdi)
   180082a13:	add    %edi,(%rcx,%rax,1)
   180082a16:	cmp    $0x3a013901,%eax
   180082a1b:	add    %ecx,0x1(%rbx)
   180082a1e:	add    %rcx,0x1(%r10)
   180082a22:	add    %rcx,0x47(%rcx,%rax,1)
   180082a27:	add    %ecx,0x1(%rbp)
   180082a2a:	rex add %eax,0x1(%rbx)
   180082a2e:	add    %esi,(%rcx,%r8,1)
   180082a32:	add    %edi,(%r11)
   180082a35:	add    %edi,(%rsi)
   180082a37:	add    %ebp,(%rdi)
   180082a39:	add    %esi,0x36013001(%rip)        # 0x1b6095a40
   180082a3f:	add    %esi,(%rbx)
   180082a41:	add    %ebx,%ebp
   180082a43:	or     $0x160012e,%eax
   180082a48:	out    %al,(%dx)
   180082a49:	or     $0xdf20df1,%eax
   180082a4e:	lock or $0xded0def,%eax
   180082a54:	pop    %rbp
   180082a55:	add    %esi,%edi
   180082a57:	or     $0xdfa0df9,%eax
   180082a5c:	sti    
   180082a5d:	or     $0x1b8031a,%eax
   180082a62:	pop    %rsi
   180082a63:	or     $0x5f,%al
   180082a65:	or     $0x7f,%al
   180082a67:	or     $0x7d,%al
   180082a69:	or     $0x61,%al
   180082a6b:	or     $0x63,%al
   180082a6d:	or     $0x62,%al
   180082a6f:	or     $0x66,%al
   180082a71:	or     $0x65,%al
   180082a73:	or     $0x71,%al
   180082a75:	or     $0x73,%al
   180082a77:	or     $0x74,%al
   180082a79:	or     $0x6b,%al
   180082a7b:	or     $0x67,%al
   180082a7d:	or     $0x6a,%al
   180082a7f:	or     $0x75,%al
   180082a81:	or     $0x77,%al
   180082a83:	or     $0x76,%al
   180082a85:	or     $0x69,%al
   180082a87:	or     $0x72,%al
   180082a89:	or     $0x78,%al
   180082a8b:	or     $0x6c,%al
   180082a8d:	or     $0x6d,%al
   180082a8f:	or     $0x6f,%al
   180082a91:	or     $0x6e,%al
   180082a93:	or     $0x68,%al
   180082a95:	or     $0x70,%al
   180082a97:	or     $0x7b,%al
   180082a99:	or     $0x7c,%al
   180082a9b:	or     $0x79,%al
   180082a9d:	or     $0x7a,%al
   180082a9f:	or     $0x7e,%al
   180082aa1:	or     $0x64,%al
   180082aa3:	or     $0x60,%al
   180082aa5:	or     $0xf0,%al
   180082aa7:	add    %ah,-0x61f362f4(%rcx)
   180082aad:	or     $0x9c,%al
   180082aaf:	or     $0x9f,%al
   180082ab1:	or     $0xa0,%al
   180082ab3:	or     $0x90,%al
   180082ab5:	or     $0x80,%al
   180082ab7:	or     $0x81,%al
   180082ab9:	or     $0x87,%al
   180082abb:	or     $0x85,%al
   180082abd:	or     $0x82,%al
   180082abf:	or     $0x83,%al
   180082ac1:	or     $0x88,%al
   180082ac3:	or     $0x8b,%al
   180082ac5:	or     $0x8c,%al
   180082ac7:	or     $0x8a,%al
   180082ac9:	or     $0x89,%al
   180082acb:	or     $0x98,%al
   180082acd:	or     $0x8f,%al
   180082acf:	or     $0x93,%al
   180082ad1:	or     $0x92,%al
   180082ad3:	or     $0x84,%al
   180082ad5:	or     $0x86,%al
   180082ad7:	or     $0x9a,%al
   180082ad9:	or     $0x9b,%al
   180082adb:	or     $0x99,%al
   180082add:	or     $0x9e,%al
   180082adf:	add    $0x9f,%al
   180082ae1:	add    $0xa2,%al
   180082ae3:	add    $0xa7,%al
   180082ae5:	add    $0xa6,%al
   180082ae7:	add    $0x39,%al
   180082ae9:	(bad)  
   180082aea:	rex (bad) 
   180082aec:	cmp    $0x3f063e06,%eax
   180082af1:	(bad)  
   180082af2:	cmp    (%rsi),%al
   180082af4:	jne    0x180082afb
   180082af6:	rex.RB (bad) 
   180082af8:	(bad)  
   180082af9:	add    $0x53a0507,%eax
   180082afe:	cmp    $0x5,%al
   180082b00:	cmp    0x5140509(%rip),%eax        # 0x1851c300f
   180082b06:	adc    0x527050a(%rip),%al        # 0x1852f3016
   180082b0c:	pop    %rdx
   180082b0d:	add    %dh,0x3(%rax)
   180082b10:	outsl  %ds:(%rsi),(%dx)
   180082b11:	add    0x43054205(%rip),%ebx        # 0x1c30d6d1c
   180082b17:	add    $0xfc0539,%eax
   180082b1c:	sbb    $0x5,%al
   180082b1e:	es add -0x7fff1fd(%rip),%esp        # 0x178083928
   180082b25:	add    %dh,%dl
   180082b27:	or     %dh,%cl
   180082b29:	or     %dh,%bh
   180082b2b:	add    %dh,%dh
   180082b2d:	add    %al,0x43(%rax,%rax,1)
   180082b31:	add    %dh,0x0(%rdx)
   180082b34:	jae    0x180082b36
   180082b36:	jne    0x180082b38
   180082b38:	adc    $0x18007400,%eax
   180082b3d:	add    %bh,%bl
   180082b3f:	add    %bl,(%rcx)
   180082b41:	add    %bl,(%rdx)
   180082b43:	add    %cl,0x0(%rdx)
   180082b46:	push   %rsi
   180082b47:	add    %dl,0x0(%rax)
   180082b4a:	rex.WRX add %r9b,0x0(%rdi)
   180082b4e:	push   %rsp
   180082b4f:	add    %dl,0x0(%rbp)
   180082b52:	rex.WXB add %dl,0x0(%r10)
   180082b56:	rex.WR add %r9b,0x0(%rbp)
   180082b5a:	push   %rbx
   180082b5b:	add    %dl,0x0(%rcx)
   180082b5e:	push   %rdi
   180082b5f:	add    %bl,0x0(%rax)
   180082b62:	(bad)  
   180082b63:	add    %bl,%al
   180082b65:	add    %dl,%ch
   180082b67:	add    %dl,%bh
   180082b69:	add    %bl,%bl
   180082b6b:	add    %bl,%dl
   180082b6d:	add    %bl,%ah
   180082b6f:	add    %bl,%cl
   180082b71:	add    %dl,%dl
   180082b73:	add    %dl,%bl
   180082b75:	add    %dl,%ah
   180082b77:	add    %bl,%dh
   180082b79:	add    %bl,%ch
   180082b7b:	add    %ah,%al
   180082b7d:	add    %ah,%cl
   180082b7f:	add    %bl,(%rax,%rax,1)
   180082b82:	call   0x169091587
   180082b87:	add    %ah,%ah
   180082b89:	add    %ah,%ch
   180082b8b:	add    %ah,%bl
   180082b8d:	add    %bl,%bh
   180082b8f:	add    %ah,%dh
   180082b91:	add    %ah,%bh
   180082b93:	add    %bh,%bh
   180082b95:	add    %al,(%rcx)
   180082b97:	add    %eax,(%rdx)
   180082b99:	add    %eax,(%rbx)
   180082b9b:	add    %eax,(%rax)
   180082b9d:	add    %edi,%esi
   180082b9f:	add    %ch,%bl
   180082ba1:	add    %ch,%ch
   180082ba3:	add    %bl,(%rbx)
   180082ba5:	add    %dl,(%rdi)
   180082ba7:	add    %bh,0xd2f00(%rax)
   180082bad:	add    %ch,%dh
   180082baf:	add    %ch,(%rax)
   180082bb1:	add    %bl,(%rsi)
   180082bb3:	add    %dh,(%rax)
   180082bb5:	add    %dh,(%rcx)
   180082bb7:	add    %bh,(%rbx)
   180082bb9:	add    %ch,(%rdx)
   180082bbb:	add    %ah,(%rax,%rax,1)
   180082bbe:	and    (%rax),%eax
   180082bc0:	and    (%rax),%al
   180082bc2:	(bad)  
   180082bc3:	add    %ch,0x3e002e00(%rip)        # 0x1be0859c9
   180082bc9:	add    %al,0x0(%rcx)
   180082bcc:	(bad)  
   180082bcd:	add    %ah,0x27002600(%rip)        # 0x1a70851d3
   180082bd3:	add    %ch,(%rcx)
   180082bd5:	add    %al,0x0(%rax)
   180082bd8:	(bad)  
   180082bd9:	add    %ch,(%rbx)
   180082bdb:	add    %ch,(%rax,%rax,1)
   180082bde:	and    %al,(%rax)
   180082be0:	and    %eax,(%rax)
   180082be2:	(bad)  
   180082be3:	add    %dh,(%rsi)
   180082be5:	add    %dh,(%rax,%rax,1)
   180082be8:	xor    $0x3a003800,%eax
   180082bed:	add    %dh,(%rbx)
   180082bef:	add    %bh,(%rcx)
   180082bf1:	add    %bh,(%rax,%rax,1)
   180082bf4:	xor    (%rax),%al
   180082bf6:	cmp    $0x42001d00,%eax
   180082bfb:	add    %dh,-0x5aff5000(%rcx)
   180082c01:	add    %ch,0xf00af00(%rsi)
   180082c07:	add    %dh,0x4700b9(%rax,%rax,1)
   180082c0e:	rex.RX add %r9b,0x0(%rcx)
   180082c12:	rex.W add %dl,(%rdx)
   180082c15:	add    %dl,(%rax,%rax,1)
   180082c18:	adc    (%rax),%eax
   180082c1a:	adc    %eax,(%rax)
   180082c1c:	adc    %al,(%rax)
   180082c1e:	mov    $0xb500ba00,%ebx
   180082c23:	add    %dh,-0x67ff4a00(%rdi)
   180082c29:	add    %dl,-0x5cff5f00(%rdi)
   180082c2f:	add    %ah,-0x61ff6100(%rax)
   180082c35:	add    %bl,-0x41ff0300(%rbp)
   180082c3b:	add    %al,%dl
   180082c3d:	add    %bh,-0x3eff4000(%rdi)
   180082c43:	add    %bh,-0x6cff3900(%rbp)
   180082c49:	add    %dl,-0x37ff8200(%rbp)
   180082c4f:	add    %bh,0x0(%rdi)
   180082c52:	xchg   %eax,%esp
   180082c53:	add    %cl,%dl
   180082c55:	add    %dh,0x0(%rsi)
   180082c58:	mov    $0xc3008000,%esp
   180082c5d:	add    %al,%ch
   180082c5f:	add    %al,%ah
   180082c61:	add    %al,%dh
   180082c63:	add    %ch,(%rax)
   180082c65:	or     $0x7700cf,%eax
   180082c6a:	js     0x180082c6c
   180082c6c:	jns    0x180082c6e
   180082c6e:	jp     0x180082c70
   180082c70:	jnp    0x180082c72
   180082c72:	jl     0x180082c74
   180082c74:	xchg   %eax,%edx
   180082c75:	add    %dl,-0x73ff8300(%rcx)
   180082c7b:	add    %dl,%cl
   180082c7d:	add    %cl,-0x78ff7500(%rdx)
   180082c83:	add    %cl,-0x71ff3500(%rax)
   180082c89:	add    %cl,-0x6fff3700(%rdi)
   180082c8f:	add    %cl,%ch
   180082c91:	add    %cl,%ah
   180082c93:	add    %ch,0xa600ac(,%rcx,1)
   180082c9a:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082c9b:	add    %cl,0x3(%rdx)
   180082c9e:	stos   %eax,%es:(%rdi)
   180082c9f:	add    %ch,-0x56ff5600(%rax)
   180082ca5:	add    %dl,-0x65ff6700(%rsi)
   180082cab:	add    %ah,0xd2b009b(%rax,%rax,1)
   180082cb2:	sub    0x9c0344(%rip),%cl        # 0x180a42ffc
   180082cb8:	movabs %al,0xec00d003160d2e00
   180082cc1:	add    %cl,%dh
   180082cc3:	add    %dl,0x300d3303(%rip)        # 0x1b0155fcc
   180082cc9:	or     $0xd320d31,%eax
   180082cce:	lea    (%rax),%eax
   180082cd0:	adc    $0x3,%al
   180082cd2:	pop    %rdx
   180082cd3:	or     %edx,(%rdi)
   180082cd5:	add    $0xdd30518,%eax
   180082cda:	push   %rdi
   180082cdb:	add    0x1a(%rbx,%rax,1),%ebp
   180082cdf:	add    $0x5080516,%eax
   180082ce4:	cmp    $0x3e053f05,%eax
   180082ce9:	add    $0x5190540,%eax
   180082cee:	rex.B add $0x5480547,%eax
   180082cf4:	rex.R add $0x5130545,%eax
   180082cfa:	rex.RX add $0x5220515,%eax
   180082d00:	and    %al,0x5380521(%rip)        # 0x185403227
   180082d06:	(bad)  
   180082d07:	add    $0x510050d,%eax
   180082d0c:	or     $0x5,%al
   180082d0e:	syscall 
   180082d10:	adc    %eax,0x51e050b(%rip)        # 0x185263221
   180082d16:	sbb    0x5360343(%rip),%eax        # 0x1853e305f
   180082d1c:	and    0x34e0528(%rip),%eax        # 0x18356324a
   180082d22:	rex.WRXB add (%r9),%r13
   180082d25:	add    $0x52d052a,%eax
   180082d2a:	xor    %al,0x52e052f(%rip)        # 0x18536325f
   180082d30:	xor    0x5250531(%rip),%al        # 0x1852d3267
   180082d36:	xor    0x52b0534(%rip),%eax        # 0x185333270
   180082d3c:	sub    $0x5,%al
   180082d3e:	and    $0x5,%al
   180082d40:	es add $0x51f0535,%eax
   180082d46:	(bad)  
   180082d47:	add    $0x3130312,%eax
   180082d4c:	pop    %rcx
   180082d4d:	add    %dl,(%rdi)
   180082d4f:	add    0xd(%rcx),%edx
   180082d52:	lock or %ah,-0x61f263f3(%rdx)
   180082d59:	or     $0xd820d83,%eax
   180082d5e:	movabs 0x860d9f0d9d0d980d,%al
   180082d67:	or     $0xd8c0d88,%eax
   180082d6c:	lea    0xd8a0d9a(%rip),%ecx        # 0x18d923b0c
   180082d72:	mov    0xd890d9b(%rip),%ecx        # 0x18d913b13
   180082d78:	xchg   %eax,%ebp
   180082d79:	or     $0xd970d99,%eax
   180082d7e:	xchg   %eax,%esi
   180082d7f:	or     $0xd850d87,%eax
   180082d84:	test   %cl,0xd910d93(%rip)        # 0x18d993b1d
   180082d8a:	(bad)  
   180082d8b:	or     $0xd8e0d90,%eax
   180082d90:	xchg   %eax,%edx
   180082d91:	or     $0xd6f0d94,%eax
   180082d96:	insb   (%dx),%es:(%rdi)
   180082d97:	or     $0xd700d72,%eax
   180082d9c:	jno    0x180082dab
   180082d9e:	outsb  %ds:(%rsi),(%dx)
   180082d9f:	or     $0xd650d64,%eax
   180082da4:	or     $0xd6a,%ax
   180082da8:	imul   $0xd390d35,0xd260d5b(%rip),%ecx        # 0x18d2e3b0d
   180082db2:	stos   %al,%es:(%rdi)
   180082db3:	or     $0xd270d29,%eax
   180082db8:	movabs %eax,0x3d0d620d3a0d6b0d
   180082dc1:	or     $0xd3f0d3e,%eax
   180082dc6:	cmp    $0xd,%al
   180082dc8:	push   %rsi
   180082dc9:	or     $0xd490d55,%eax
   180082dce:	rex.WRXB or $0xd500d53,%rax
   180082dd4:	rex.WRX or $0xd4d0d5a,%rax
   180082dda:	push   %rdi
   180082ddb:	or     $0xd590d58,%eax
   180082de0:	cmp    0xd4c0d41(%rip),%ecx        # 0x18d543b27
   180082de6:	rex.RXB or $0xd420d6d,%eax
   180082dec:	rex.XB or $0xd450d44,%eax
   180082df2:	pop    %rsp
   180082df3:	or     $0x5c005b,%eax
   180082df8:	outsb  %ds:(%rsi),(%dx)
   180082df9:	add    %ch,0x0(%rdi)
   180082dfc:	pop    %rdi
   180082dfd:	add    %ah,0x0(%rcx)
   180082e00:	(bad)  
   180082e01:	add    %dh,0x0(%rax)
   180082e04:	imul   $0x62006a,(%rax),%eax
   180082e0a:	jno    0x180082e0c
   180082e0c:	insb   (%dx),%es:(%rdi)
   180082e0d:	add    %ch,0x0(%rbx)
   180082e10:	push   $0x5e006700
   180082e15:	add    %bl,0x0(%rbp)
   180082e18:	insl   (%dx),%es:(%rdi)
   180082e19:	add    %ah,0x0(%rbx)
   180082e1c:	add    %ah,%gs:0x0(%rsi)
   180082e20:	add    %al,%fs:0x0(%rbp)
   180082e24:	(bad)  
   180082e25:	add    (%rax),%esi
   180082e27:	add    (%rsi),%ebp
   180082e29:	add    (%rcx),%ebp
   180082e2b:	add    (%rbx,%rax,1),%esi
   180082e2e:	xor    (%rbx),%eax
   180082e30:	sub    (%rbx),%al
   180082e32:	(bad)  
   180082e33:	add    (%rsi),%esi
   180082e35:	add    0x2b000203(%rip),%esi        # 0x1ab08303e
   180082e3b:	add    (%rbx,%rax,1),%ebp
   180082e3e:	sub    %al,(%rbx)
   180082e40:	(bad)  
   180082e41:	add    %bh,(%rax)
   180082e43:	add    (%rbx),%eax
   180082e45:	add    %ch,0x31000103(%rip)        # 0x1b1082f4e
   180082e4b:	add    (%rdx),%esi
   180082e4d:	add    (%rdi),%ebp
   180082e4f:	add    (%rdx),%edi
   180082e51:	add    (%rcx),%edi
   180082e53:	add    %edx,%esp
   180082e55:	add    %bl,(%rdi)
   180082e57:	add    (%rdx),%esp
   180082e59:	add    (%rcx),%esp
   180082e5b:	add    (%rax),%esp
   180082e5d:	add    (%rbx,%rax,1),%esp
   180082e60:	sbb    $0x3,%al
   180082e62:	(bad)  
   180082e63:	add    0x3(%rbx),%ebp
   180082e66:	outsb  %ds:(%rsi),(%dx)
   180082e67:	add    0x6d03680d(%rax),%esi
   180082e6d:	add    0x3(%rcx),%ebp
   180082e70:	push   $0x3
   180082e72:	cmp    (%rbx),%eax
   180082e74:	sbb    (%rbx),%al
   180082e76:	sbb    (%rbx),%eax
   180082e78:	add    %gs:0x66(%rbx,%rax,1),%esp
   180082e7d:	add    0x3(%rdi),%esp
   180082e80:	add    0x19(%r11,%r8,1),%rcx
   180082e85:	add    (%rax),%ebx
   180082e87:	add    0x3(%rcx),%edx
   180082e8a:	push   %rax
   180082e8b:	add    0x3(%rbx),%edx
   180082e8e:	push   %rdx
   180082e8f:	add    %edi,%eax
   180082e91:	add    0x55035403(%rip),%ebx        # 0x1d50b829a
   180082e97:	add    0x3(%rcx),%ecx
   180082e9a:	scas   %es:(%rdi),%al
   180082e9b:	(bad)  
   180082e9c:	jmp    0x1c70b74a8
   180082ea1:	add    (%rdi),%edi
   180082ea3:	add    0x3(%rbx),%ebx
   180082ea6:	pop    %rdx
   180082ea7:	add    0x3(%rcx),%ebx
   180082eaa:	rex.X add 0x3(%rcx),%eax
   180082eae:	mov    $0x4,%cl
   180082eb0:	pop    %rdi
   180082eb1:	add    0x3(%rbp),%ebx
   180082eb4:	(bad)  
   180082eb5:	add    0x3(%rsi),%ebx
   180082eb8:	(bad)  
   180082eb9:	add    0x62(%rbx,%rax,1),%ebx
   180082ebd:	add    0x3(%rbx),%esp
   180082ec0:	rex add 0x3e033c06(%rdi),%edi
   180082ec7:	add    0x5804b403(%rip),%edi        # 0x1d80ce2d0
   180082ecd:	add    0x3(%rbp),%ecx
   180082ed0:	lods   %ds:(%rsi),%eax
   180082ed1:	add    %al,0x3(%rbp)
   180082ed4:	add    (%rbx),%rsp
   180082ed7:	add    (%rdx),%ecx
   180082ed9:	add    %al,0x4000900(%rip)        # 0x1840837df
   180082edf:	add    %cl,(%rbx)
   180082ee1:	add    %al,(%rdi)
   180082ee3:	add    %cl,(%rax)
   180082ee5:	add    %dl,(%rsi)
   180082ee7:	add    %cl,(%rax,%rax,1)
   180082eea:	or     $0xb300b200,%eax
   180082eef:	add    %dl,0x3(%rsi)
   180082ef2:	rorb   $0xc4,(%rax)
   180082ef5:	or     %al,%dl
   180082ef7:	or     %al,%bl
   180082ef9:	or     %dh,0x8b808bc(%rax,%rcx,1)
   180082f00:	mov    $0xe108be08,%ebp
   180082f05:	or     %ah,%al
   180082f07:	or     %al,%cl
   180082f09:	or     %dh,-0x29f746f8(%rsi)
   180082f0f:	or     %dl,%al
   180082f11:	or     %bh,-0x28f745f8(%rbx)
   180082f17:	or     %bl,%cl
   180082f19:	or     %al,%ch
   180082f1b:	or     %al,%bh
   180082f1d:	or     %al,%dh
   180082f1f:	or     %cl,%al
   180082f21:	or     %dh,%ah
   180082f23:	or     %bl,%ch
   180082f25:	or     %dh,%al
   180082f27:	add    %bl,%ah
   180082f29:	or     %bl,%bl
   180082f2b:	or     %bl,%dl
   180082f2d:	or     %dl,%cl
   180082f2f:	or     %dl,%dl
   180082f31:	or     %dl,%ah
   180082f33:	or     %dl,%ch
   180082f35:	or     %dl,%bl
   180082f37:	or     %dh,%ch
   180082f39:	add    %ch,%bh
   180082f3b:	add    %bh,%cl
   180082f3d:	add    %bh,%dl
   180082f3f:	add    %dh,-0x17ff0df8(%rdi)
   180082f45:	or     %ah,%dh
   180082f47:	or     %ah,%bl
   180082f49:	or     %ch,%ah
   180082f4b:	or     %ch,%cl
   180082f4d:	or     %ch,%ch
   180082f4f:	or     %ch,%dh
   180082f51:	or     %ah,%ah
   180082f53:	or     %ah,%ch
   180082f55:	or     %ah,%bh
   180082f57:	or     %ah,%dl
   180082f59:	or     %ch,%dl
   180082f5b:	or     %ch,%bl
   180082f5d:	or     %dh,%bl
   180082f5f:	add    %dh,%ah
   180082f61:	add    %bh,-0x4cf710f8(%rdi)
   180082f67:	or     %dh,%bl
   180082f69:	or     %dh,-0x36f727f8(%rbp)
   180082f6f:	or     %bl,%dh
   180082f71:	or     %al,-0x7eff7d00(%rdx)
   180082f77:	add    %al,-0x7aff7700(%rsi)
   180082f7d:	add    %al,0xf108df(%rax,%rax,1)
   180082f84:	addb   $0x2b,0x22c05a4(%rip)        # 0x18234352f
   180082f8b:	add    %cl,%al
   180082f8d:	add    %edi,0x5(%rdi)
   180082f90:	mov    $0x96059501,%ebp
   180082f95:	add    $0x1bc01bb,%eax
   180082f9a:	test   $0x5,%al
   180082f9c:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082f9d:	add    $0x5a605a5,%eax
   180082fa2:	jl     0x180082fa9
   180082fa4:	rex.W add -0x66fa62fb(%rax),%bl
   180082fab:	add    $0x59b059a,%eax
   180082fb0:	sahf   
   180082fb1:	add    $0x59f059c,%eax
   180082fb6:	movabs 0x8501a301c005a105,%al
   180082fbf:	add    $0x58901af,%eax
   180082fc4:	mov    0x58d058f(%rip),%es        # 0x185953559
   180082fca:	xchg   %al,0x5880587(%rip)        # 0x185903557
   180082fd0:	mov    0x58c058b(%rip),%al        # 0x185943561
   180082fd6:	xchg   %eax,%ecx
   180082fd7:	add    $0x1a60577,%eax
   180082fdc:	cmpsl  %es:(%rdi),%ds:(%rsi)
   180082fdd:	add    %esp,0x7e057d01(%rbp)
   180082fe3:	add    $0x579057b,%eax
   180082fe8:	jp     0x180082fef
   180082fea:	mov    $0x1,%ch
   180082fec:	addl   $0xffffff93,0x58401ad(%rip)        # 0x1858c31a0
   180082ff3:	add    $0x5940592,%eax
   180082ff8:	add    (%rdx),%al
   180082ffa:	addl   $0x1d001cf,0x58201a8(%rip)        # 0x1858a31ac
   180083004:	test   $0xb801aa01,%eax
   180083009:	add    %ebp,0x46024301(%rbx)
   18008300f:	add    0x2(%rbp),%al
   180083012:	rex.RXB add -0x5cfa5dff(%r9),%r15b
   180083019:	add    $0x59001b1,%eax
   18008301e:	add    $0x7801ae02,%eax
   180083023:	add    $0x1b70201,%eax
   180083028:	add    %al,%r12b
   18008302b:	add    %esi,%edi
   18008302d:	add    %eax,%esi
   18008302f:	add    %edi,%ebx
   180083031:	add    %ebx,%ebp
   180083033:	add    %esi,%ebp
   180083035:	add    %ebx,%esp
   180083037:	add    %edx,%esp
   180083039:	add    %ebp,%ebp
   18008303b:	add    %ecx,%ebp
   18008303d:	add    %esp,%ebp
   18008303f:	add    0x4(%rax),%ebp
   180083042:	data16 add $0xef,%al
   180083045:	add    -0x3dfa3ffb(%rsi),%edi
   18008304b:	add    $0x5bf05c3,%eax
   180083050:	roll   $0xf5,0x5e705e4(%rip)        # 0x185ef363b
   180083057:	add    $0x5e505e3,%eax
   18008305c:	call   0x1700e2366
   180083061:	add    $0x5ef05f1,%eax
   180083066:	repnz add $0x5eb05ec,%eax
   18008306c:	(bad)  
   18008306d:	add    $0x5ee05ed,%eax
   180083072:	jmp    0x1600e167c
   180083077:	add    $0x62a05c8,%eax
   18008307c:	vpsraw (%rcx),%ymm15,%ymm8
   180083080:	mov    $0x5301bf01,%esi
   180083085:	or     %esi,-0x53fe49ff(%rdx)
   18008308b:	add    %edi,0x2101b001(%rdx)
   180083091:	(bad)  
   180083092:	and    $0x6,%al
   180083094:	and    (%rsi),%eax
   180083096:	and    %al,(%rsi)
   180083098:	and    (%rsi),%al
   18008309a:	es (bad) 
   18008309c:	and    $0x27062906,%eax
   1800830a1:	(bad)  
   1800830a2:	sub    %al,(%rsi)
   1800830a4:	hlt    
   1800830a5:	add    $0x5e205c4,%eax
   1800830aa:	loope  0x1800830b1
   1800830ac:	(bad)  
   1800830ad:	add    $0x5d205d1,%eax
   1800830b2:	rolb   0x5d305cf(%rip)        # 0x185db3687
   1800830b8:	xlat   %ds:(%rbx)
   1800830b9:	add    $0x5da05db,%eax
   1800830be:	faddl  0x5d905d8(%rip)        # 0x185e1369c
   1800830c4:	(bad)  
   1800830c5:	add    $0x5cd05cb,%eax
   1800830ca:	leave  
   1800830cb:	add    $0x5cc05ca,%eax
   1800830d0:	(bad)  
   1800830d1:	add    $0x5de05d5,%eax
   1800830d6:	filds  0x5c705dd(%rip)        # 0x185cf36b9
   1800830dc:	mov    $0xc605aa05,%ebp
   1800830e1:	add    $0x40105a9,%eax
   1800830e6:	in     $0x3,%al
   1800830e8:	out    %al,$0x3
   1800830ea:	in     $0x3,%eax
   1800830ec:	out    %eax,$0x3
   1800830ee:	call   0x1830c99f6
   1800830f3:	add    $0x2,%al
   1800830f5:	add    $0x55,%al
   1800830f7:	or     %edx,0x9(%rsi)
   1800830fa:	pop    %rax
   1800830fb:	or     %edx,0x9(%rdi)
   1800830fe:	push   %rsp
   1800830ff:	or     %edx,0x9(%rdx)
   180083102:	adc    (%rsi),%al
   180083104:	(bad)  
   180083105:	(bad)  
   180083106:	adc    $0x6,%al
   180083108:	adc    (%rsi),%eax
   18008310a:	stc    
   18008310b:	add    %edi,(%rsi)
   18008310d:	add    (%rdi),%bh
   18008310f:	add    0x2(%rax),%al
   180083112:	xor    (%rdx),%eax
   180083114:	xor    $0xf7023402,%eax
   180083119:	add    %esi,%esi
   18008311b:	add    %esi,(%rsi)
   18008311d:	add    0x1b01f802(%rip),%ch        # 0x19b0a2925
   180083123:	(bad)  
   180083124:	clts   
   180083126:	out    %al,$0x1
   180083128:	adc    %al,(%rsi)
   18008312a:	rex.X add -0x16fe18f3(%rdi),%bpl
   180083131:	add    %ebp,%edx
   180083133:	add    %ebx,(%rdx)
   180083135:	(bad)  
   180083136:	(bad)  
   180083137:	(bad)  
   180083138:	sbb    %eax,(%rsi)
   18008313a:	sbb    %al,(%rsi)
   18008313c:	(bad)  
   18008313d:	(bad)  
   18008313e:	add    (%r10),%dil
   180083141:	add    0x2f01fa06(%rip),%dl        # 0x1af0a2b4d
   180083147:	add    (%rsi),%ch
   180083149:	add    (%rax),%dh
   18008314b:	add    %bh,%dh
   18008314d:	add    $0x5f60237,%eax
   180083152:	cmp    %eax,(%rdx)
   180083154:	cmp    %al,(%rdx)
   180083156:	(bad)  
   180083157:	(bad)  
   180083158:	cmp    (%rdx),%eax
   18008315a:	cmp    $0x1c01e802,%eax
   18008315f:	(bad)  
   180083160:	sbb    $0x59023c06,%eax
   180083165:	or     %esi,(%rcx)
   180083167:	add    (%rdx),%ch
   180083169:	add    (%rax),%cl
   18008316b:	(bad)  
   18008316c:	(bad)  
   18008316d:	add    (%rdi),%cl
   18008316f:	add    (%rax),%dl
   180083171:	add    0x4(%rbp),%ah
   180083174:	xor    $0x4,%al
   180083176:	xor    0x4f044e04(,%rcx,2),%eax
   18008317d:	add    $0x39,%al
   18008317f:	add    $0x50,%al
   180083181:	add    $0x6,%al
   180083183:	add    $0x3f,%al
   180083185:	add    $0x49,%al
   180083187:	add    $0x63,%al
   180083189:	add    $0x4a,%al
   18008318b:	add    $0x43,%al
   18008318d:	add    $0x48,%al
   18008318f:	add    $0x41,%al
   180083191:	add    $0x44,%al
   180083193:	add    $0x45,%al
   180083195:	add    $0x42,%al
   180083197:	add    $0x46,%al
   180083199:	add    $0x47,%al
   18008319b:	add    $0x40,%al
   18008319d:	add    $0x60,%al
   18008319f:	add    $0x64,%al
   1800831a1:	add    $0x5d,%al
   1800831a3:	add    $0x5c,%al
   1800831a5:	add    $0x5e,%al
   1800831a7:	add    $0x5a,%al
   1800831a9:	add    $0x5b,%al
   1800831ab:	add    $0x67,%al
   1800831ad:	add    $0x38,%al
   1800831af:	add    $0x61,%al
   1800831b1:	add    $0x62,%al
   1800831b3:	add    $0x3c,%al
   1800831b5:	add    $0x3a,%al
   1800831b7:	add    $0x3d,%al
   1800831b9:	add    $0x52,%al
   1800831bb:	add    $0x54,%al
   1800831bd:	add    $0x3e,%al
   1800831bf:	add    $0x5f,%al
   1800831c1:	add    $0x8,%al
   1800831c3:	add    $0x7,%al
   1800831c5:	add    $0x3b,%al
   1800831c7:	add    $0x59,%al
   1800831c9:	add    $0x56,%al
   1800831cb:	add    $0x55,%al
   1800831cd:	add    $0x57,%al
   1800831cf:	add    $0x51,%al
   1800831d1:	add    $0x53,%al
   1800831d3:	add    $0x58,%al
   1800831d5:	add    $0x4c,%al
   1800831d7:	add    $0xb,%al
   1800831d9:	add    $0xa,%al
   1800831db:	add    $0x4b,%al
   1800831dd:	add    $0x9,%al
   1800831df:	add    $0xc,%al
   1800831e1:	add    $0xd,%al
   1800831e3:	add    $0xb1,%al
   1800831e5:	add    $0x5b205b3,%eax
   1800831ea:	je     0x1800831f1
   1800831ec:	mov    $0x5,%al
   1800831ee:	scas   %es:(%rdi),%eax
   1800831ef:	add    $0x5b605b5,%eax
   1800831f4:	mov    $0x5,%ah
   1800831f6:	scas   %es:(%rdi),%al
   1800831f7:	add    $0x5ac0611,%eax
   1800831fc:	mov    $0x5,%bh
   1800831fe:	lods   %ds:(%rsi),%eax
   1800831ff:	add    $0x5760575,%eax
   180083204:	xchg   %eax,%edi
   180083205:	add    $0x5ab01a4,%eax
   18008320a:	mov    $0xba05b905,%eax
   18008320f:	add    $0x5bc05bb,%eax
   180083214:	(bad)  
   180083215:	(bad)  
   180083216:	mov    $0x1,%bl
   180083218:	mov    $0x1,%ah
   18008321a:	(bad)  
   18008321b:	add    %ecx,%esp
   18008321d:	add    %ebp,%edi
   18008321f:	add    %ecx,%esi
   180083221:	add    %edi,%edi
   180083223:	add    $0x60b05fe,%eax
   180083228:	(bad)  
   180083229:	(bad)  
   18008322a:	cld    
   18008322b:	add    $0x5fb05fd,%eax
   180083230:	add    %eax,(%rsi)
   180083232:	add    (%rsi),%al
   180083234:	add    %al,(%rsi)
   180083236:	xor    (%rdx),%al
   180083238:	sub    %eax,(%rdx)
   18008323a:	sub    %al,(%rdx)
   18008323c:	(bad)  
   18008323d:	add    (%rdx),%ah
   18008323f:	add    (%rdi),%bl
   180083241:	add    (%rsi),%ah
   180083243:	add    0x21021b02(%rip),%ah        # 0x1a10a4d4b
   180083249:	add    (%rdx),%bl
   18008324b:	add    (%rbx),%ah
   18008324d:	add    0x24021c02(%rip),%bl        # 0x1a40a4e55
   180083253:	add    (%rsi),%bl
   180083255:	add    (%rax),%ah
   180083257:	add    (%rsi,%rax,1),%cl
   18008325a:	cli    
   18008325b:	add    $0x1fc01fd,%eax
   180083260:	or     $0x11021206,%eax
   180083265:	add    (%rbx),%dl
   180083267:	add    (%rdx,%rax,1),%dl
   18008326a:	add    $0x6,%al
   18008326c:	add    (%rsi),%eax
   18008326e:	add    (%rdx),%eax
   180083270:	(bad)  
   180083271:	add    %dh,%bh
   180083273:	add    %ebx,(%rcx)
   180083275:	add    %bh,%bh
   180083277:	add    %ecx,(%rcx)
   180083279:	(bad)  
   18008327a:	(bad)  
   18008327b:	add    (%rcx),%cl
   18008327d:	add    (%rax),%cl
   18008327f:	add    (%rsi),%al
   180083281:	(bad)  
   180083282:	(bad)  
   180083283:	add    (%rdi),%al
   180083285:	add    (%rbx),%cl
   180083287:	add    (%rdx,%rax,1),%cl
   18008328a:	or     $0xa020402,%eax
   18008328f:	add    (%rdx),%cl
   180083291:	(bad)  
   180083292:	add    $0x15020006,%eax
   180083297:	add    (%rax),%bl
   180083299:	add    %bl,%bh
   18008329b:	add    %edx,(%rax)
   18008329d:	add    $0x37,%al
   18008329f:	add    $0x12,%al
   1800832a1:	add    $0x35,%al
   1800832a3:	add    $0x30,%al
   1800832a5:	add    $0x18,%al
   1800832a7:	add    $0x31,%al
   1800832a9:	add    $0x14,%al
   1800832ab:	add    $0x13,%al
   1800832ad:	add    $0x11,%al
   1800832af:	add    $0xff,%al
   1800832b1:	add    (%rsi),%ecx
   1800832b3:	add    $0xf,%al
   1800832b5:	add    $0x36,%al
   1800832b7:	add    $0x26,%al
   1800832b9:	add    $0x2a,%al
   1800832bb:	add    $0x2f,%al
   1800832bd:	add    $0x24,%al
   1800832bf:	add    $0x2d,%al
   1800832c1:	add    $0x2b,%al
   1800832c3:	add    $0x25,%al
   1800832c5:	add    $0x2e,%al
   1800832c7:	add    $0x28,%al
   1800832c9:	add    $0x27,%al
   1800832cb:	add    $0x29,%al
   1800832cd:	add    $0x2c,%al
   1800832cf:	add    $0x15,%al
   1800832d1:	add    $0x16,%al
   1800832d3:	add    $0x17,%al
   1800832d5:	add    $0x1b,%al
   1800832d7:	add    $0x23,%al
   1800832d9:	add    $0x1e,%al
   1800832db:	add    $0x19,%al
   1800832dd:	add    $0x20,%al
   1800832df:	add    $0x21,%al
   1800832e1:	add    $0x22,%al
   1800832e3:	add    $0x1a,%al
   1800832e5:	add    $0x1d,%al
   1800832e7:	add    $0x1c,%al
   1800832e9:	add    $0x1f,%al
   1800832eb:	add    $0x32,%al
   1800832ed:	add    $0x10,%al
   1800832ef:	or     (%rdi),%cl
   1800832f1:	or     (%rsi),%dl
   1800832f3:	or     %bl,%dh
   1800832f5:	add    %ebp,%ebx
   1800832f7:	or     %ch,%ch
   1800832f9:	or     %bl,%dh
   1800832fb:	or     %dh,%ch
   1800832fd:	or     %bh,%ch
   1800832ff:	or     %al,%dh
   180083301:	or     %dl,%dh
   180083303:	or     %cl,%dh
   180083305:	or     0xb(%rsi),%cl
   180083308:	rex.WX or 0xb(%rcx),%rcx
   18008330c:	or     0xb(%rax),%r9
   180083310:	or     0xb(%r11),%r9
   180083314:	or     (%edi),%dl
   180083317:	or     0xa(%rsi),%cl
   18008331a:	or     $0xa,%al
   18008331c:	or     $0xa20a180a,%eax
   180083321:	or     0x680ba10b(%rax),%esp
   180083327:	or     (%rdi),%bl
   180083329:	or     (%rbx),%dh
   18008332b:	or     (%rsi),%bl
   18008332d:	or     (%rax),%ah
   18008332f:	or     (%rax),%ch
   180083331:	or     (%rcx),%ah
   180083333:	or     (%rdx),%bl
   180083335:	or     (%rbx),%ah
   180083337:	or     (%rdx),%ah
   180083339:	or     (%rax),%dh
   18008333b:	or     0x2f0a2c0a(%rip),%ch        # 0x1af125f4b
   180083341:	or     (%rsi),%ch
   180083343:	or     (%rbx),%ch
   180083345:	or     (%rbx),%bl
   180083347:	or     (%rdx,%rcx,1),%bl
   18008334a:	sbb    $0x310a320a,%eax
   18008334f:	or     (%rdx,%rcx,1),%ah
   180083352:	sbb    %ecx,(%rdx)
   180083354:	sub    (%rdx),%cl
   180083356:	sub    %ecx,(%rdx)
   180083358:	and    $0x340a270a,%eax
   18008335d:	or     (%rsi),%ah
   18008335f:	or     0xa(%rcx),%dl
   180083362:	rex.WRXB or (%r14),%r8
   180083365:	or     0x310a020a(%rip),%al        # 0x1b1123575
   18008336b:	or     0xa(%rbx),%edx
   18008336e:	push   %rdx
   18008336f:	or     0x55(%rdx,%rcx,1),%dl
   180083373:	or     0xa(%rsi),%bl
   180083376:	push   %rsi
   180083377:	or     0x58(%rdx,%rcx,1),%bl
   18008337b:	or     0xa(%rdi),%dl
   18008337e:	pop    %rbp
   18008337f:	or     0xa(%rbx),%ah
   180083382:	pop    %rcx
   180083383:	or     0x60(%rdx,%rcx,1),%ah
   180083387:	or     0xa(%rdx),%bl
   18008338a:	pop    %rbx
   18008338b:	or     0xa(%rcx),%ah
   18008338e:	pop    %rdi
   18008338f:	or     0xa(%rdx),%ah
   180083392:	or     %gs:(%rdi),%al
   180083395:	or     -0x43f440f5(%rdx),%bh
   18008339b:	or     -0x41f444f5(%rbp),%edi
   1800833a1:	or     (%rdx),%ecx
   1800833a3:	or     -0x60f5fef5(%rsi),%bl
   1800833a9:	or     %esi,%edx
   1800833ab:	or     (%rcx),%edi
   1800833ad:	or     (%rdi),%bh
   1800833af:	or     (%rdx),%edi
   1800833b1:	or     -0x52f451f5(%rdi),%ch
   1800833b7:	or     (%rdx,%rcx,1),%edi
   1800833ba:	imul   $0xb340a35,(%rdx),%ecx
   1800833c0:	ss or  0xa(%rax),%dl
   1800833c4:	(bad)  
   1800833c5:	or     (%rax),%bh
   1800833c7:	or     0x45(%rdx,%rcx,1),%cl
   1800833cb:	or     0xa(%rsi),%al
   1800833ce:	(bad)  
   1800833cf:	or     0x6e0a490a(%rip),%bh        # 0x1ee127cdf
   1800833d5:	or     $0x41,%al
   1800833d7:	or     0xa(%rax),%cl
   1800833da:	mov    $0xb,%bh
   1800833dc:	rex.WRB or 0x7c(%r10,%rcx,1),%r8b
   1800833e1:	or     $0xb2,%al
   1800833e3:	or     (%rdx),%edx
   1800833e5:	or     (%rsi),%bh
   1800833e7:	or     -0x4bf44af5(%rsi),%dh
   1800833ed:	or     (%rbx),%edx
   1800833ef:	or     0xa(%rdx),%al
   1800833f2:	rex.XB or 0xa(%r8),%al
   1800833f6:	cmp    (%rdx),%ecx
   1800833f8:	mov    $0xb,%cl
   1800833fa:	rex.RXB or -0x3ff43ef5(%r8),%r14b
   180083401:	or     %ebx,%eax
   180083403:	or     %ecx,%ecx
   180083405:	or     %eax,%ecx
   180083407:	or     %eax,%edx
   180083409:	or     %esi,%ecx
   18008340b:	or     %ebx,%ecx
   18008340d:	or     %edx,%eax
   18008340f:	or     %esp,%eax
   180083411:	or     %ebp,%eax
   180083413:	or     %ebp,%ecx
   180083415:	or     %edi,%ecx
   180083417:	or     %esp,%ecx
   180083419:	or     %esi,%eax
   18008341b:	or     %edi,%eax
   18008341d:	or     %edx,%ecx
   18008341f:	or     0x4b0a4a0b(%rcx),%edi
   180083425:	or     (%rbx),%cl
   180083427:	or     (%rbx),%ecx
   180083429:	or     %cl,%dh
   18008342b:	add    %esi,%edx
   18008342d:	add    %ecx,(%rsi)
   18008342f:	or     0xa(%rsi),%ah
   180083432:	or     $0xb,%al
   180083434:	out    %eax,(%dx)
   180083435:	or     $0xc6f0df0,%eax
   18008343a:	jb     0x180083448
   18008343c:	int1   
   18008343d:	or     $0xc710c70,%eax
   180083442:	rex.WRXB or %r11b,%r14b
   180083445:	or     $0xc730df2,%eax
   18008344a:	jge    0x180083456
   18008344c:	rorb   (%rdx)
   18008344e:	stos   %eax,%es:(%rdi)
   18008344f:	or     -0x4ef558f6(%rsi),%ch
   180083455:	or     0xa(%rax),%dh
   180083458:	outsl  %ds:(%rsi),(%dx)
   180083459:	or     %dl,%ch
   18008345b:	or     %bh,%ch
   18008345d:	add    %ecx,0x2(%rcx)
   180083460:	out    %al,(%dx)
   180083461:	add    %esi,0xf0ab40a(%rbx)
   180083467:	or     (%rax),%edx
   180083469:	or     (%rcx),%edx
   18008346b:	or     (%rdx),%edx
   18008346d:	or     (%rbx),%edx
   18008346f:	or     %esp,%esi
   180083471:	add    %esi,%eax
   180083473:	add    %ecx,%ebx
   180083475:	or     -0x3cfe0af6(%rdx),%dh
   18008347b:	or     %dl,%al
   18008347d:	or     %cl,%al
   18008347f:	or     -0x62f58ef6(%rsi),%bh
   180083485:	or     -0x5ff560f6(%rsi),%bl
   18008348b:	or     %bl,%dl
   18008348d:	add    %edx,%edx
   18008348f:	add    %esp,-0x5ef55cf6(%rdx)
   180083495:	or     0xaa80aa6(%rdx,%rcx,1),%ah
   18008349c:	test   $0xcd0aaa0a,%eax
   1800834a1:	add    %esi,-0x53f550f6(%rax)
   1800834a7:	or     -0x22f519f6(%rbp),%ah
   1800834ad:	add    %ebx,%esp
   1800834af:	add    %ebp,%ecx
   1800834b1:	or     -0x67f475f5(%rax),%ch
   1800834b7:	or     0xa(%rsi),%ebp
   1800834ba:	out    %eax,$0xa
   1800834bc:	call   0x15513e7cb
   1800834c1:	or     %dh,%dl
   1800834c3:	or     %al,%bl
   1800834c5:	or     %bh,%dl
   1800834c7:	or     %bl,%bl
   1800834c9:	or     %dl,%bl
   1800834cb:	or     %cl,%ah
   1800834cd:	or     %dh,%bl
   1800834cf:	or     %cl,%bl
   1800834d1:	or     %al,%ah
   1800834d3:	or     %bh,%bl
   1800834d5:	or     %ch,%bl
   1800834d7:	or     %ah,%bl
   1800834d9:	or     %ah,%dl
   1800834db:	or     %dl,%ah
   1800834dd:	or     %bh,%dh
   1800834df:	or     %ebx,%esp
   1800834e1:	or     %ah,%ah
   1800834e3:	or     %ch,%ah
   1800834e5:	or     %bl,%dl
   1800834e7:	or     %bl,%ah
   1800834e9:	add    %edx,%ecx
   1800834eb:	or     %dl,%dl
   1800834ed:	or     %dh,%cl
   1800834ef:	or     0xb0e0b(%rip),%cl        # 0x180134300
   1800834f5:	or     (%rbx),%eax
   1800834f7:	or     %esi,%edi
   1800834f9:	or     %ah,%bh
   1800834fb:	or     %bh,%dh
   1800834fd:	or     %bl,%bh
   1800834ff:	or     %ch,%dh
   180083501:	or     %cl,%bh
   180083503:	or     %dh,%dh
   180083505:	or     %ah,%dh
   180083507:	or     %dl,%bh
   180083509:	or     %al,%bh
   18008350b:	or     (%rdx),%al
   18008350d:	or     (%rbx,%rcx,1),%eax
   180083510:	decl   (%rdx)
   180083512:	add    %ecx,(%rbx)
   180083514:	std    
   180083515:	or     0xab90abd(%rdx,%rcx,1),%bh
   18008351c:	mov    $0x50b060a,%ebx
   180083521:	or     (%rax),%ecx
   180083523:	or     (%rdi),%eax
   180083525:	or     %eax,%eax
   180083527:	or     -0x3bf535f6(%rdi),%bh
   18008352d:	or     %dh,%al
   18008352f:	or     %cl,%cl
   180083531:	or     %ch,%al
   180083533:	or     %bh,%al
   180083535:	or     %al,%cl
   180083537:	or     %ch,%cl
   180083539:	or     (%rdx),%cl
   18008353b:	or     0x90a720a(%rax),%edi
   180083541:	or     -0x45f549f6(%rdi),%esi
   180083547:	or     %ah,%dh
   180083549:	or     %ebp,%esi
   18008354b:	or     %ebx,%esi
   18008354d:	or     %esi,%esi
   18008354f:	or     -0x52f533f6(%rbp),%esi
   180083555:	or     %bh,%cl
   180083557:	or     0xa(%rsi),%dh
   18008355a:	test   %cl,(%rdx)
   18008355c:	orl    $0xffffff85,(%rdx)
   18008355f:	or     0x780a790a(%rdx),%al
   180083565:	or     %bl,%cl
   180083567:	add    %edi,0x77(%rdx,%rcx,1)
   18008356b:	or     0xa(%rdx),%bh
   18008356e:	jne    0x18008357a
   180083570:	jnp    0x18008357c
   180083572:	ret    $0xf701
   180083575:	add    %eax,%edi
   180083577:	add    %ebp,%esi
   180083579:	add    %ebx,%esi
   18008357b:	add    0x5(%rbx),%edx
   18008357e:	sti    
   18008357f:	add    %esp,%edi
   180083581:	add    %esi,%esi
   180083583:	add    %ecx,%edi
   180083585:	add    0x57055804(%rip),%eax        # 0x1d70d8d8f
   18008358b:	add    $0x54b0400,%eax
   180083590:	rex.WX add $0x56d056c,%rax
   180083596:	outsb  %ds:(%rsi),(%dx)
   180083597:	add    $0x571056f,%eax
   18008359c:	jae    0x1800835a3
   18008359e:	jo     0x1800835a5
   1800835a0:	jb     0x1800835a7
   1800835a2:	push   %rax
   1800835a3:	add    $0x5490551,%eax
   1800835a8:	rex.WRB add $0x54c054e,%rax
   1800835ae:	imul   $0x56503f2,0x54f0552(%rip),%eax        # 0x185573b0a
   1800835b8:	push   %rsi
   1800835b9:	add    $0x56b0555,%eax
   1800835be:	push   $0x5
   1800835c0:	add    $0x567,%ax
   1800835c4:	push   %rsp
   1800835c5:	add    $0x5680563,%eax
   1800835ca:	fs add $0x5610562,%eax
   1800835d0:	(bad)  
   1800835d1:	add    $0x55e055f,%eax
   1800835d6:	pop    %rsp
   1800835d7:	add    $0x3fa055a,%eax
   1800835dc:	pop    %rbp
   1800835dd:	add    $0x559055b,%eax
   1800835e2:	cli    
   1800835e3:	or     $0xaec0404,%eax
   1800835e8:	lock or %ecx,%esi
   1800835eb:	or     %ebp,%ebp
   1800835ed:	or     %esi,%ebp
   1800835ef:	or     %esp,%ebp
   1800835f1:	or     %ebx,%ebp
   1800835f3:	or     %edx,%ebp
   1800835f5:	or     %edi,%ebp
   1800835f7:	or     %ecx,%ebp
   1800835f9:	or     %esi,%esp
   1800835fb:	or     %ebp,%esp
   1800835fd:	or     %eax,%ebp
   1800835ff:	or     0xb170ba5(%rbx,%rcx,1),%esp
   180083606:	(bad)  
   180083607:	or     0xa(%rbx),%ebp
   18008360a:	push   $0xa
   18008360c:	insb   (%dx),%es:(%rdi)
   18008360d:	or     0x160ba60b(%rdi),%ah
   180083613:	or     -0x54f4ebf5(%rip),%edx        # 0x12b134a24
   180083619:	or     -0x56f453f5(%rdx),%ebp
   18008361f:	or     0x73(%rdx,%rcx,1),%esi
   180083623:	or     %al,%ah
   180083625:	or     %ebp,%ebx
   180083627:	or     %esi,%ebx
   180083629:	or     %edi,%ebx
   18008362b:	or     %edx,%esp
   18008362d:	or     %ecx,%esp
   18008362f:	or     %ebx,%esp
   180083631:	or     %edx,%ebx
   180083633:	or     %esp,%ebx
   180083635:	or     %ebx,%ebx
   180083637:	or     %esp,%esp
   180083639:	or     0xb(%rcx),%ebp
   18008363c:	cltd   
   18008363d:	or     0x680b6c0b(%rdx),%ebx
   180083643:	or     0xb(%rsi),%ebp
   180083646:	jno    0x180083653
   180083648:	je     0x180083655
   18008364a:	jne    0x180083657
   18008364c:	jo     0x180083659
   18008364e:	outsl  %ds:(%rsi),(%dx)
   18008364f:	or     0xb(%rdx),%esi
   180083652:	orb    $0x73,(%rbx)
   180083655:	or     -0x7df47ef5(%rbx),%esp
   18008365b:	or     0x790b7a0b(%rbx),%eax
   180083661:	or     0xb(%rax),%edi
   180083664:	ja     0x180083671
   180083666:	(bad)  (%rbx)
   180083668:	insl   (%dx),%es:(%rdi)
   180083669:	or     0xb(%rbx),%edi
   18008366c:	jge    0x180083679
   18008366e:	jl     0x18008367b
   180083670:	jg     0x18008367d
   180083672:	jle    0x18008367f
   180083674:	push   $0xb
   180083676:	jbe    0x180083683
   180083678:	mov    %cl,(%rbx)
   18008367a:	lea    (%rbx),%ecx
   18008367c:	mov    (%rbx),%cs
   18008367e:	mov    %ecx,(%rbx)
   180083680:	mov    %cs,(%rbx)
   180083682:	nop
   180083683:	or     -0x69f46ef5(%rbx),%edx
   180083689:	or     -0x70f46df5(%rdi),%edx
   18008368f:	or     -0x74f46bf5(%rbp),%edx
   180083695:	or     0xb(%rbx),%ebp
   180083698:	xchg   %ecx,(%rbx)
   18008369a:	xchg   %cl,(%rbx)
   18008369c:	test   %ecx,(%rbx)
   18008369e:	test   %cl,(%rbx)
   1800836a0:	sub    %ecx,(%rbx)
   1800836a2:	sub    (%rbx),%ecx
   1800836a4:	sub    (%rbx),%cl
   1800836a6:	sub    $0xb,%al
   1800836a8:	sub    $0x5c0b590b,%eax
   1800836ad:	or     0xb(%rbx),%ebx
   1800836b0:	push   %rcx
   1800836b1:	or     0xb(%rdi),%edx
   1800836b4:	pop    %rax
   1800836b5:	or     0xb(%rbp),%edx
   1800836b8:	push   %rsp
   1800836b9:	or     0xb(%rsi),%edx
   1800836bc:	pop    %rdi
   1800836bd:	or     0xb(%rsi),%ebx
   1800836c0:	pop    %rbp
   1800836c1:	or     0xb(%rbx),%edx
   1800836c4:	push   %rdx
   1800836c5:	or     0xb(%rdx),%ebx
   1800836c8:	sub    %cl,(%rbx)
   1800836ca:	es or  0x240b270b(%rip),%esp        # 0x1a4135ddc
   1800836d1:	or     (%rbx),%esp
   1800836d3:	or     (%rax),%esp
   1800836d5:	or     (%rdi),%ebx
   1800836d7:	or     0x1c0b220b(%rip),%ebx        # 0x19c1358e8
   1800836dd:	or     (%rbx),%ebx
   1800836df:	or     (%rsi),%ebx
   1800836e1:	or     (%rcx),%esp
   1800836e3:	or     0xc(%rbp),%esi
   1800836e6:	ja     0x1800836f4
   1800836e8:	jns    0x1800836f6
   1800836ea:	jbe    0x1800836f8
   1800836ec:	sbb    %cl,(%rbx)
   1800836ee:	jp     0x1800836fc
   1800836f0:	js     0x1800836fe
   1800836f2:	sbb    (%rbx),%cl
   1800836f4:	sbb    %ecx,(%rbx)
   1800836f6:	jnp    0x180083704
   1800836f8:	out    %eax,$0xb
   1800836fa:	fwait
   1800836fb:	or     0xbd80b9d(%rbx,%rcx,1),%ebx
   180083702:	mov    $0xd30bd10b,%eax
   180083707:	or     %ebp,%edx
   180083709:	or     %edx,%edx
   18008370b:	or     %esp,%edx
   18008370d:	or     %edi,%edx
   18008370f:	or     -0x76f574f6(%rdx),%ecx
   180083715:	or     0xa040a03(%rdx,%rcx,1),%cl
   18008371c:	xchg   %ecx,(%rdx)
   18008371e:	mov    %cl,(%rdx)
   180083720:	or     %cl,(%rdx)
   180083722:	adc    $0xa,%al
   180083724:	adc    $0x8e0a7e0a,%eax
   180083729:	or     0x7f0a8d0a(%rdi),%cl
   18008372f:	or     -0x63f57ef6(%rax),%al
   180083735:	or     0x6d0a090a(%rbx),%bl
   18008373b:	or     -0x65f567f6(%rdi),%dl
   180083741:	or     -0x36f56ef6(%rax),%dl
   180083747:	add    %ebx,-0x6bf56af6(%rcx)
   18008374d:	or     %bh,%al
   18008374f:	add    %eax,%esi
   180083751:	add    %ecx,%eax
   180083753:	add    %edx,0x6201c50a(%rbx)
   180083759:	or     (%rcx),%edx
   18008375b:	or     0xb(%rdi),%ah
   18008375e:	(bad)  
   18008375f:	or     0xb(%rbp),%esp
   180083762:	or     0xb(%rbx),%sp
   180083766:	or     %fs:-0x6f20bf6(%rsi),%edx
   18008376d:	or     $0xa9203f4,%eax
   180083772:	testb  $0xf5,0xdf80df7(%rip)        # 0x18e004570
   180083779:	or     $0xb440a86,%eax
   18008377e:	or     0xb(%r15),%r8d
   180083782:	rex.RX or 0xb(%rax),%r10d
   180083786:	xor    (%rbx),%cl
   180083788:	cmp    %cl,(%rbx)
   18008378a:	cmp    %ecx,(%rbx)
   18008378c:	(bad)  
   18008378d:	or     (%rsi),%edi
   18008378f:	or     0x360b430b(%rip),%esi        # 0x1b6137aa0
   180083795:	or     0x3a0b3b0b(%rip),%edi        # 0x1ba1372a6
   18008379b:	or     (%rbx,%rcx,1),%edi
   18008379e:	rex or 0xb(%rcx),%eax
   1800837a2:	rex.X or (%rdi),%ebp
   1800837a5:	or     (%rsi),%ebp
   1800837a7:	or     %edx,%esi
   1800837a9:	or     (%rax),%esi
   1800837ab:	or     (%rbx),%esi
   1800837ad:	or     0xc(%rsi),%edi
   1800837b0:	(bad)  
   1800837b2:	(bad)  
   1800837b3:	or     $0x15,%al
   1800837b5:	or     $0xe,%al
   1800837b7:	or     $0x17,%al
   1800837b9:	or     $0xc,%al
   1800837bb:	or     $0x10,%al
   1800837bd:	or     $0xd,%al
   1800837bf:	or     $0x11,%al
   1800837c1:	or     $0x14,%al
   1800837c3:	or     $0x13,%al
   1800837c5:	or     $0x12,%al
   1800837c7:	or     $0x18,%al
   1800837c9:	or     $0x1b,%al
   1800837cb:	or     $0x19,%al
   1800837cd:	or     $0x1a,%al
   1800837cf:	or     $0xa,%al
   1800837d1:	or     $0x87,%al
   1800837d3:	or     $0x85,%al
   1800837d5:	or     $0x23,%al
   1800837d7:	or     $0xc800c0b,%eax
   1800837dc:	test   %cl,(%rbx,%rax,4)
   1800837df:	or     $0x81,%al
   1800837e1:	or     $0x82,%al
   1800837e3:	or     $0x1c,%al
   1800837e5:	or     $0xfe,%al
   1800837e7:	or     (%rsi),%ebx
   1800837e9:	or     $0x1d,%al
   1800837eb:	or     $0x1f,%al
   1800837ed:	or     $0x21,%al
   1800837ef:	or     $0x22,%al
   1800837f1:	or     $0x23,%al
   1800837f3:	or     $0x20,%al
   1800837f5:	or     $0xff,%al
   1800837f7:	or     (%rbx),%eax
   1800837f9:	or     $0x2,%al
   1800837fb:	or     $0x4,%al
   1800837fd:	or     $0x5,%al
   1800837ff:	or     $0x7,%al
   180083801:	or     $0x1,%al
   180083803:	or     $0x8,%al
   180083805:	or     $0x0,%al
   180083807:	or     $0x6,%al
   180083809:	or     $0x32,%al
   18008380b:	or     $0x9,%al
   18008380d:	or     $0x30,%al
   18008380f:	or     $0x31,%al
   180083811:	or     $0x29,%al
   180083813:	or     $0x2a,%al
   180083815:	or     $0x2b,%al
   180083817:	or     $0x2d,%al
   180083819:	or     $0x2c,%al
   18008381b:	or     $0x2e,%al
   18008381d:	or     $0x26,%al
   18008381f:	or     $0x25,%al
   180083821:	or     $0x27,%al
   180083823:	or     $0x28,%al
   180083825:	or     $0x4e,%al
   180083827:	or     $0x4f,%al
   180083829:	or     $0xf4,%al
   18008382b:	or     $0xf5,%al
   18008382d:	or     $0x4c,%al
   18008382f:	or     $0x50,%al
   180083831:	or     $0x45,%al
   180083833:	or     $0x49,%al
   180083835:	or     $0x44,%al
   180083837:	or     $0x46,%al
   180083839:	or     $0x43,%al
   18008383b:	or     $0x42,%al
   18008383d:	or     $0x47,%al
   18008383f:	or     $0x48,%al
   180083841:	or     $0x4d,%al
   180083843:	or     $0xf6,%al
   180083845:	or     $0x40,%al
   180083847:	or     $0x36,%al
   180083849:	or     $0x37,%al
   18008384b:	or     $0x3a,%al
   18008384d:	or     $0x3f,%al
   18008384f:	or     $0x3e,%al
   180083851:	or     $0x3c,%al
   180083853:	or     $0x3b,%al
   180083855:	or     $0x39,%al
   180083857:	or     $0x38,%al
   180083859:	or     $0x3d,%al
   18008385b:	or     $0x41,%al
   18008385d:	or     $0x52,%al
   18008385f:	or     $0x54,%al
   180083861:	or     $0x53,%al
   180083863:	or     $0x1d,%al
   180083865:	or     $0xcfa0c33,%eax
   18008386a:	rex.WX or $0x4b,%al
   18008386d:	or     $0x1f,%al
   18008386f:	or     $0x2cb02cc,%eax
   180083874:	leave  
   180083875:	add    %dl,%cl
   180083877:	add    0x2(%rbx),%dl
   18008387a:	push   %rsp
   18008387b:	add    0x2(%rbp),%dl
   18008387e:	push   %rsi
   18008387f:	add    0x2(%rsi),%cl
   180083882:	push   %rcx
   180083883:	add    0x2(%rdx),%dl
   180083886:	push   %rax
   180083887:	add    0x2(%rdx),%bl
   18008388a:	pop    %rcx
   18008388b:	add    0x2(%rbx),%bl
   18008388e:	rex.WRXB add 0x2(%r13),%r13b
   180083892:	pop    %rsp
   180083893:	add    0x2(%rbp),%bl
   180083896:	(bad)  
   180083897:	add    0x2(%rdi),%bl
   18008389a:	pop    %rsi
   18008389b:	add    (%rbx),%al
   18008389d:	add    (%rbx,%rax,1),%eax
   1800838a0:	add    (%rbx),%al
   1800838a2:	or     $0x6030703,%eax
   1800838a7:	add    (%rdx),%ecx
   1800838a9:	add    (%rax),%ecx
   1800838ab:	add    (%rax),%edx
   1800838ad:	add    (%rdi),%ecx
   1800838af:	add    (%rsi),%ecx
   1800838b1:	add    0x2(%rax),%ebx
   1800838b4:	or     %eax,(%rbx)
   1800838b6:	add    $0xc031103,%eax
   1800838bb:	add    (%rbx),%ecx
   1800838bd:	add    0x2(%rdi),%edx
   1800838c0:	enter  $0xc702,$0x2
   1800838c4:	insb   (%dx),%es:(%rdi)
   1800838c5:	add    0x2(%rcx),%ah
   1800838c8:	(bad)  
   1800838ca:	movsxd (%rdx),%eax
   1800838cc:	push   $0x2
   1800838ce:	imul   $0x67,(%rdx),%eax
   1800838d1:	add    0x65(%rdx,%rax,1),%ah
   1800838d5:	add    0x2(%rsi),%ah
   1800838d8:	imul   $0x2a40268,(%rdx),%eax
   1800838de:	rex.WR add -0x5cfd5ffe(%rdi),%r11b
   1800838e5:	add    -0x7bfd5dfe(%rcx),%ah
   1800838eb:	add    0x7f028d02(%rbx),%al
   1800838f1:	add    -0x73fd75fe(%rbx),%cl
   1800838f7:	add    0x7d028102(%rax),%al
   1800838fd:	add    -0x77fd7dfe(%rdi),%al
   180083903:	add    -0x79fd81fe(%rcx),%cl
   180083909:	add    -0x14fd7afe(%rsi),%cl
   18008390f:	add    0xd(%rbp),%bl
   180083912:	rex.WXB add 0x2(%r15),%bpl
   180083916:	outsb  %ds:(%rsi),(%dx)
   180083917:	add    0x7a027902(%rdi),%cl
   18008391d:	add    0x74027102(%rdi),%dl
   180083923:	add    0x2(%rbp),%dh
   180083926:	jbe    0x18008392a
   180083928:	js     0x18008392c
   18008392a:	jb     0x18008392e
   18008392c:	ja     0x180083930
   18008392e:	jae    0x180083932
   180083930:	nop
   180083931:	add    -0x69fd6afe(%rbx),%dl
   180083937:	add    -0x6bfd6efe(%rdx),%dl
   18008393d:	add    0x2(%rax),%dh
   180083940:	popf   
   180083941:	add    0x2bc02ba(%rdx,%rax,1),%bl
   180083948:	mov    $0x98024d02,%ebx
   18008394d:	add    -0x29fd61fe(%rdx),%bl
   180083953:	add    %ebx,%eax
   180083955:	add    %ebx,%edx
   180083957:	add    %edx,%edi
   180083959:	add    %ebx,%ecx
   18008395b:	add    %edx,%ebp
   18008395d:	add    %eax,%ebx
   18008395f:	add    %edx,%esp
   180083961:	add    %ebx,%ebx
   180083963:	add    %ecx,%edx
   180083965:	add    %eax,%esp
   180083967:	add    %ebx,%esi
   180083969:	add    %ebx,%edi
   18008396b:	add    %esp,%eax
   18008396d:	add    %esp,%edx
   18008396f:	add    %ecx,%esp
   180083971:	add    %ebp,%ebx
   180083973:	add    %ecx,%esi
   180083975:	add    %edx,%ecx
   180083977:	add    %ebp,%ebp
   180083979:	add    %ebp,%esp
   18008397b:	add    %esp,%esp
   18008397d:	add    %esp,%ebp
   18008397f:	add    %esp,(%rcx)
   180083981:	or     $0xd120dfb,%eax
   180083986:	adc    0xd110d14(%rip),%ecx        # 0x18d1946a0
   18008398c:	(bad)  
   18008398d:	or     $0xd190d17,%eax
   180083992:	adc    $0xfd0d180d,%eax
   180083997:	or     0xc(%rbp),%edi
   18008399a:	mov    %cl,(%rdi,%rdi,2)
   18008399d:	or     $0x20,%al
   18008399f:	or     $0xc8b0c55,%eax
   1800839a4:	mov    %cs,(%rax,%rdx,4)
   1800839a7:	or     $0x92,%al
   1800839a9:	or     $0x91,%al
   1800839ab:	or     $0x89,%al
   1800839ad:	or     $0xf8,%al
   1800839af:	or     0xc8d0c8e(%rsp,%rcx,1),%edx
   1800839b6:	stc    
   1800839b7:	or     -0x69f36af4(%rdx),%ecx
   1800839bd:	or     $0x97,%al
   1800839bf:	or     $0x93,%al
   1800839c1:	or     $0x8f,%al
   1800839c3:	or     $0x24,%al
   1800839c5:	or     $0x2f,%al
   1800839c7:	or     $0x86,%al
   1800839c9:	or     $0x63,%al
   1800839cb:	or     $0x6a,%al
   1800839cd:	or     $0x69,%al
   1800839cf:	or     $0x6b,%al
   1800839d1:	or     $0x74,%al
   1800839d3:	or     $0x6d,%al
   1800839d5:	or     $0x6c,%al
   1800839d7:	or     $0x5e,%al
   1800839d9:	or     $0x64,%al
   1800839db:	or     $0x1a,%al
   1800839dd:	or     $0xc570d1c,%eax
   1800839e2:	gs or  $0x68,%al
   1800839e5:	or     $0x66,%al
   1800839e7:	or     $0x67,%al
   1800839e9:	or     $0x56,%al
   1800839eb:	or     $0x5d,%al
   1800839ed:	or     $0x61,%al
   1800839ef:	or     $0x62,%al
   1800839f1:	or     $0x60,%al
   1800839f3:	or     $0x5c,%al
   1800839f5:	or     $0x5f,%al
   1800839f7:	or     $0x5a,%al
   1800839f9:	or     $0x5b,%al
   1800839fb:	or     $0x58,%al
   1800839fd:	or     $0x59,%al
   1800839ff:	or     $0xfa,%al
   180083a01:	or     %ebx,%edi
   180083a03:	or     %esp,%edi
   180083a05:	or     -0x57fd66fe(%rbx),%ebx
   180083a0b:	add    -0x3afd56fe(%rbx),%ch
   180083a11:	add    %ah,%al
   180083a13:	add    -0x39fd4bfe(%rdx),%ch
   180083a19:	add    %ah,%dl
   180083a1b:	add    %al,%bl
   180083a1d:	add    %dh,%dl
   180083a1f:	add    %dl,%dl
   180083a21:	add    %bh,%cl
   180083a23:	add    %ch,%cl
   180083a25:	add    %dh,%cl
   180083a27:	add    %al,%dl
   180083a29:	add    0x2c302d5(%rdx,%rax,1),%ch
   180083a30:	flds   (%rdx)
   180083a32:	xlat   %ds:(%rbx)
   180083a33:	add    %cl,%dl
   180083a35:	add    %bl,%dl
   180083a37:	add    (%rcx),%al
   180083a39:	add    0x2(%rdx),%ecx
   180083a3c:	mov    $0x2,%al
   180083a3e:	mov    $0x2,%bl
   180083a40:	mov    $0x2,%dl
   180083a42:	scas   %es:(%rdi),%eax
   180083a43:	add    -0x52fd4efe(%rsi),%ch
   180083a49:	add    0x7b02a602(%rbp),%ah
   180083a4f:	add    -0x59(%rdx,%rax,1),%bh
   180083a53:	add    %al,%al
   180083a55:	add    %cl,%al
   180083a57:	add    %dl,%al
   180083a59:	add    -0x46fd49fe(%rdi),%bh
   180083a5f:	add    %bh,%dh
   180083a61:	add    %bh,%bh
   180083a63:	add    %bl,%bh
   180083a65:	add    %dl,%bh
   180083a67:	add    -0x42fd41fe(%rbp),%dh
   180083a6d:	add    0x2202b802(%rdi),%dh
   180083a73:	or     $0xc980c99,%eax
   180083a78:	(bad)  
   180083a79:	or     $0x1e,%al
   180083a7b:	or     $0xd1b0cc7,%eax
   180083a80:	lods   %ds:(%rsi),%al
   180083a81:	or     $0xb0,%al
   180083a83:	or     $0xb1,%al
   180083a85:	or     $0xb2,%al
   180083a87:	or     $0xae,%al
   180083a89:	or     $0xad,%al
   180083a8b:	or     $0xaa,%al
   180083a8d:	or     $0xab,%al
   180083a8f:	or     $0xaf,%al
   180083a91:	or     $0xb3,%al
   180083a93:	or     $0xb7,%al
   180083a95:	or     $0xb6,%al
   180083a97:	or     $0xb4,%al
   180083a99:	or     $0xb5,%al
   180083a9b:	or     $0xbd,%al
   180083a9d:	or     $0xe7,%al
   180083a9f:	or     $0xeb,%al
   180083aa1:	or     $0xf1,%al
   180083aa3:	or     $0xe9,%al
   180083aa5:	or     $0xec,%al
   180083aa7:	or     $0xf0,%al
   180083aa9:	or     $0xea,%al
   180083aab:	or     $0xef,%al
   180083aad:	or     $0xe8,%al
   180083aaf:	or     $0xee,%al
   180083ab1:	or     $0xed,%al
   180083ab3:	or     $0xe6,%al
   180083ab5:	or     $0xa0,%al
   180083ab7:	or     $0xc2,%al
   180083ab9:	or     $0xbb,%al
   180083abb:	or     $0xba,%al
   180083abd:	or     $0xbc,%al
   180083abf:	or     $0xb9,%al
   180083ac1:	or     $0xb8,%al
   180083ac3:	or     $0xbe,%al
   180083ac5:	or     $0xd0,%al
   180083ac7:	or     $0xe3,%al
   180083ac9:	or     $0xdf,%al
   180083acb:	or     $0xe0,%al
   180083acd:	or     $0xe2,%al
   180083acf:	or     $0xe1,%al
   180083ad1:	or     $0xf2,%al
   180083ad3:	or     $0x9c,%al
   180083ad5:	or     $0x9d,%al
   180083ad7:	or     $0x9e,%al
   180083ad9:	or     $0xcb,%al
   180083adb:	or     $0xc9,%al
   180083add:	or     $0xc8,%al
   180083adf:	or     $0xce,%al
   180083ae1:	or     $0xcd,%al
   180083ae3:	or     $0xca,%al
   180083ae5:	or     $0xcc,%al
   180083ae7:	or     $0x9f,%al
   180083ae9:	or     $0xc6,%al
   180083aeb:	or     $0xc3,%al
   180083aed:	or     $0xc4,%al
   180083aef:	or     $0xbf,%al
   180083af1:	or     $0xc0,%al
   180083af3:	or     $0xc1,%al
   180083af5:	or     $0xc5,%al
   180083af7:	or     $0xe,%al
   180083af9:	or     $0xd100d0f,%eax
   180083afe:	add    %ecx,0xd050d00(%rip)        # 0x18d0d4804
   180083b04:	(bad)  
   180083b05:	or     $0xccf0d04,%eax
   180083b0a:	decl   (%rbx,%rax,1)
   180083b0d:	or     $0xcfe0d02,%eax
   180083b12:	or     $0xb0d0c0d,%eax
   180083b17:	or     $0xd090d0a,%eax
   180083b1c:	or     %cl,0xc9b0d07(%rip)        # 0x18ca34829
   180083b22:	xor    $0xc,%al
   180083b24:	in     $0xc,%eax
   180083b26:	in     $0xc,%al
   180083b28:	rorl   %cl,(%rsp,%rdx,8)
   180083b2b:	or     $0xdb,%al
   180083b2d:	or     $0xd7,%al
   180083b2f:	or     $0xd8,%al
   180083b31:	or     $0xdc,%al
   180083b33:	or     $0xdd,%al
   180083b35:	or     $0xd5,%al
   180083b37:	or     $0xde,%al
   180083b39:	or     $0xd2,%al
   180083b3b:	or     $0xd1,%al
   180083b3d:	or     $0xd6,%al
   180083b3f:	or     $0xd9,%al
   180083b41:	or     $0xda,%al
   180083b43:	or     $0xf3,%al
   180083b45:	or     $0xa2,%al
   180083b47:	or     $0xa1,%al
   180083b49:	or     $0xa5,%al
   180083b4b:	or     $0xa8,%al
   180083b4d:	or     $0xa9,%al
   180083b4f:	or     $0xa6,%al
   180083b51:	or     $0xa4,%al
   180083b53:	or     $0xa3,%al
   180083b55:	or     $0xa7,%al
   180083b57:	or     $0xfd,%al
   180083b59:	or     $0xfb,%al
   180083b5b:	or     $0xfc,%al
   180083b5d:	or     $0x51,%al
   180083b5f:	or     $0x35,%al
   180083b61:	or     $0xf9,%al
   180083b63:	or     $0xf8,%al
   180083b65:	or     $0xf7,%al
   180083b67:	or     $0xfd,%al
   180083b69:	add    %dh,%bh
   180083b6b:	add    (%rax),%al
   180083b6d:	add    %esp,%edi
   180083b6f:	add    %al,%ah
   180083b71:	add    %dh,%bl
   180083b73:	add    %bh,%bl
   180083b75:	add    %dl,%bl
   180083b77:	add    %ah,%bl
   180083b79:	add    %ah,%ch
   180083b7b:	add    %bl,%bl
   180083b7d:	add    %dl,%ch
   180083b7f:	add    %al,%bh
   180083b81:	add    %cl,%bh
   180083b83:	add    %ah,%ah
   180083b85:	add    %ch,%ah
   180083b87:	add    %dh,%dh
   180083b89:	add    %ch,%ch
   180083b8b:	add    %dl,%ah
   180083b8d:	add    %bl,%dh
   180083b8f:	add    %cl,%dh
   180083b91:	add    %bh,%ch
   180083b93:	add    %dl,%dh
   180083b95:	add    %al,%dh
   180083b97:	add    %cl,%ah
   180083b99:	add    %bl,%ah
   180083b9b:	add    %dh,%ch
   180083b9d:	add    %ah,%dh
   180083b9f:	add    %ch,%dh
   180083ba1:	add    %cl,%ch
   180083ba3:	add    %dh,%ah
   180083ba5:	add    %bh,%ah
   180083ba7:	add    %al,%ch
   180083ba9:	add    %ch,%bl
   180083bab:	add    -0x7cf77df8(%rcx),%al
   180083bb1:	or     %ch,0x8(%rdi)
   180083bb4:	outsb  %ds:(%rsi),(%dx)
   180083bb5:	or     %ch,0x8(%rbp)
   180083bb8:	rex.RXB or %r15b,(%r8)
   180083bbb:	or     %dh,(%rdi)
   180083bbd:	or     %dh,(%rsi)
   180083bbf:	or     %dl,0x8(%rsi)
   180083bc2:	push   %rdi
   180083bc3:	or     %bl,0x8(%rcx)
   180083bc6:	pop    %rax
   180083bc7:	or     %bl,0x35(%rax,%rcx,1)
   180083bcb:	or     %al,0x8(%rbp)
   180083bce:	cmp    (%rax),%cl
   180083bd0:	cmp    $0x3c083b08,%eax
   180083bd5:	or     %bh,(%rsi)
   180083bd7:	or     %al,0x8(%rdx)
   180083bda:	or     %al,0x40(%r8,%r9,1)
   180083bdf:	or     %al,0x8(%rcx)
   180083be2:	(bad)  
   180083be3:	or     %cl,0x8(%rax)
   180083be6:	push   %rax
   180083be7:	or     %cl,0x8(%rbp)
   180083bea:	rex.WXB or %dl,0x8(%r11)
   180083bee:	push   %rdx
   180083bef:	or     %cl,0x54(%rax,%rcx,1)
   180083bf3:	or     %cl,0x8(%rsi)
   180083bf6:	rex.WX or %cl,0x8(%rdi)
   180083bfa:	push   %rcx
   180083bfb:	or     %dl,0x8(%rbp)
   180083bfe:	rex.WB or %al,0x8(%r14)
   180083c02:	pop    %rsi
   180083c03:	or     %ch,-0x78(%rax,%rcx,1)
   180083c07:	or     %al,-0x6ef776f8(%rdi)
   180083c0d:	or     %dl,-0x72f774f8(%rax)
   180083c13:	or     %cl,0x88e088a(%rax,%rcx,1)
   180083c1a:	(bad)
   180083c1e:	jo     0x180083c28
   180083c20:	jno    0x180083c2a
   180083c22:	clc    
   180083c23:	add    $0x5f90892,%eax
   180083c28:	test   %cl,(%rax)
   180083c2a:	test   %ecx,(%rax)
   180083c2c:	xchg   %cl,(%rax)
   180083c2e:	jb     0x180083c38
   180083c30:	jae    0x180083c3a
   180083c32:	jg     0x180083c3c
   180083c34:	jle    0x180083c3e
   180083c36:	ja     0x180083c40
   180083c38:	js     0x180083c42
   180083c3a:	jl     0x180083c44
   180083c3c:	jge    0x180083c46
   180083c3e:	jbe    0x180083c48
   180083c40:	jp     0x180083c4a
   180083c42:	jns    0x180083c4c
   180083c44:	jnp    0x180083c4e
   180083c46:	jne    0x180083c50
   180083c48:	je     0x180083c52
   180083c4a:	push   $0x8
   180083c4c:	imul   $0xffffffb0,(%rax),%ecx
   180083c4f:	or     %dh,-0x4ef75ff8(%rdx)
   180083c55:	or     %bl,0x8(%rbp)
   180083c58:	pop    %rdx
   180083c59:	or     %bl,0x8(%rbx)
   180083c5c:	push   $0x67086908
   180083c61:	or     %ah,0x63(%rax,%rcx,1)
   180083c65:	or     %ah,0x8(%rbp)
   180083c68:	(bad)  
   180083c69:	or     %ah,0x8(%rsi)
   180083c6c:	pop    %rdi
   180083c6d:	or     %ah,0x8(%rax)
   180083c70:	(bad)  
   180083c71:	or     %bh,(%rcx)
   180083c73:	or     %dl,-0x61f750f8(%rbp)
   180083c79:	or     %ch,-0x53f754f8(%rbp)
   180083c7f:	or     %bl,-0x65f766f8(%rbp)
   180083c85:	or     %bl,-0x63f764f8(%rax)
   180083c8b:	or     %bl,-0x5af751f8(%rdi)
   180083c91:	or     %ah,-0x55f756f8(%rsi)
   180083c97:	or     %ah,-0x5bf757f8(%rdi)
   180083c9d:	or     %ah,-0x69f75df8(%rbx)
   180083ca3:	or     %dl,-0x6bf75ef8(%rdi)
   180083ca9:	or     %dl,-0x3efb3df8(%rbx)
   180083caf:	add    $0x72,%al
   180083cb1:	add    $0xb6,%al
   180083cb3:	add    $0xb7,%al
   180083cb5:	add    $0xc3,%al
   180083cb7:	add    $0xc4,%al
   180083cb9:	add    $0x0,%al
   180083cbb:	add    $0x47304a1,%eax
   180083cc0:	imul   $0x4,(%rsi,%rbp,2),%eax
   180083cc4:	jo     0x180083cca
   180083cc6:	insb   (%dx),%es:(%rdi)
   180083cc7:	add    $0x6d,%al
   180083cc9:	add    $0x6f,%al
   180083ccb:	add    $0x78,%al
   180083ccd:	add    $0x76,%al
   180083ccf:	add    $0x79,%al
   180083cd1:	add    $0x74,%al
   180083cd3:	add    $0x75,%al
   180083cd5:	add    $0x77,%al
   180083cd7:	add    $0x98,%al
   180083cd9:	add    $0x9a,%al
   180083cdb:	add    $0x97,%al
   180083cdd:	add    $0x9b,%al
   180083cdf:	add    $0x99,%al
   180083ce1:	add    $0x5,%al
   180083ce3:	add    $0x4960495,%eax
   180083ce8:	popf   
   180083ce9:	add    $0x9c,%al
   180083ceb:	add    $0x82,%al
   180083ced:	add    $0x83,%al
   180083cef:	add    $0x85,%al
   180083cf1:	add    $0x88,%al
   180083cf3:	add    $0x86,%al
   180083cf5:	add    $0x87,%al
   180083cf7:	add    $0x84,%al
   180083cf9:	add    $0xa0,%al
   180083cfb:	add    $0x9e,%al
   180083cfd:	add    $0x9f,%al
   180083cff:	add    $0x7f,%al
   180083d01:	add    $0x80,%al
   180083d03:	add    $0x7e,%al
   180083d05:	add    $0xf8,%al
   180083d07:	add    $0x6a,%al
   180083d09:	add    $0x7d,%al
   180083d0b:	add    $0xa8,%al
   180083d0d:	add    $0xa7,%al
   180083d0f:	add    $0xa6,%al
   180083d11:	add    $0xa9,%al
   180083d13:	add    $0xf6,%al
   180083d15:	add    $0x4,%al
   180083d17:	add    $0x494047a,%eax
   180083d1c:	xchg   %eax,%ebx
   180083d1d:	add    $0xa2,%al
   180083d1f:	add    $0xa4,%al
   180083d21:	add    $0xa3,%al
   180083d23:	add    $0x81,%al
   180083d25:	add    $0xad,%al
   180083d27:	add    $0x8e,%al
   180083d29:	add    $0x8f,%al
   180083d2b:	add    $0x92,%al
   180083d2d:	add    $0x8d,%al
   180083d2f:	add    $0x8c,%al
   180083d31:	add    $0x8b,%al
   180083d33:	add    $0x8a,%al
   180083d35:	add    $0x91,%al
   180083d37:	add    $0x89,%al
   180083d39:	add    $0x90,%al
   180083d3b:	add    $0x4c,%al
   180083d3d:	add    %edi,0x1(%rbp)
   180083d40:	jl     0x180083d43
   180083d42:	or     (%rcx),%al
   180083d44:	or     %eax,(%rcx)
   180083d46:	sbb    %al,(%rcx)
   180083d48:	pushf  
   180083d49:	add    %ebx,(%rcx)
   180083d4b:	add    %eax,(%rdi)
   180083d4d:	add    %ebx,0x16011a01(%rbx)
   180083d53:	add    %ecx,(%rbx)
   180083d55:	add    %ecx,(%rsi)
   180083d57:	add    %edx,0x11010f01(%rip)        # 0x191094c5e
   180083d5d:	add    %edx,(%rdx)
   180083d5f:	add    %edx,(%rax)
   180083d61:	add    %edx,(%rcx,%rax,1)
   180083d64:	adc    (%rcx),%eax
   180083d66:	(bad)  
   180083d67:	add    %ecx,0x1(%rbp)
   180083d6a:	or     %al,(%rcx)
   180083d6c:	(bad)  
   180083d6d:	add    %edx,0x9(%rcx)
   180083d70:	add    $0x9,%al
   180083d72:	add    %cl,(%rcx)
   180083d74:	add    (%rcx),%ecx
   180083d76:	add    %ecx,(%rcx)
   180083d78:	add    (%rcx),%cl
   180083d7a:	cli    
   180083d7b:	or     %bh,%bh
   180083d7d:	or     %dl,(%rax)
   180083d7f:	or     %edi,%ebx
   180083d81:	or     %bh,%ah
   180083d83:	or     %bh,%ch
   180083d85:	or     %dh,%dh
   180083d87:	or     %dh,%bh
   180083d89:	or     %ch,(%rsi)
   180083d8b:	or     %edi,%ecx
   180083d8d:	or     %bh,%al
   180083d8f:	or     %cl,(%rbx)
   180083d91:	or     %ecx,(%rdx)
   180083d93:	or     %edx,(%rdx)
   180083d95:	or     %edx,(%rcx,%rcx,1)
   180083d98:	adc    $0xc508fe09,%eax
   180083d9d:	add    $0xc6,%al
   180083d9f:	add    $0xc7,%al
   180083da1:	add    $0xc9,%al
   180083da3:	add    $0xcc,%al
   180083da5:	add    $0xc8,%al
   180083da7:	add    $0xcb,%al
   180083da9:	add    $0xca,%al
   180083dab:	add    $0xc0,%al
   180083dad:	add    $0xbf,%al
   180083daf:	add    $0xcd,%al
   180083db1:	add    $0xd7,%al
   180083db3:	add    $0xd9,%al
   180083db5:	add    $0xd8,%al
   180083db7:	add    $0xda,%al
   180083db9:	add    $0xe0,%al
   180083dbb:	add    $0xde,%al
   180083dbd:	add    $0xdf,%al
   180083dbf:	add    $0xdb,%al
   180083dc1:	add    $0xdc,%al
   180083dc3:	add    $0xdd,%al
   180083dc5:	add    $0xe1,%al
   180083dc7:	add    $0xe2,%al
   180083dc9:	add    $0xb9,%al
   180083dcb:	add    $0xb8,%al
   180083dcd:	add    $0xe3,%al
   180083dcf:	add    $0xbb,%al
   180083dd1:	add    $0xbc,%al
   180083dd3:	add    $0xbe,%al
   180083dd5:	add    $0xba,%al
   180083dd7:	add    $0xbd,%al
   180083dd9:	add    $0xcf,%al
   180083ddb:	add    $0xd3,%al
   180083ddd:	add    $0xd2,%al
   180083ddf:	add    $0xd4,%al
   180083de1:	add    $0xd6,%al
   180083de3:	add    $0xce,%al
   180083de5:	add    $0xd5,%al
   180083de7:	add    $0xd1,%al
   180083de9:	add    $0xd0,%al
   180083deb:	add    $0xb5,%al
   180083ded:	add    $0xae,%al
   180083def:	add    $0x39,%al
   180083df1:	add    %edx,0xd(%rdx)
   180083df4:	push   %rsp
   180083df5:	or     $0x1a20149,%eax
   180083dfa:	push   %rcx
   180083dfb:	add    %edi,(%rdx)
   180083dfd:	add    %eax,0x1(%rdi)
   180083e00:	add    %rax,0x1(%rcx)
   180083e04:	rex add %eax,0x1(%rsi)
   180083e08:	add    %r15d,(%r14)
   180083e0b:	add    %edi,(%rbx)
   180083e0d:	add    %edi,(%rcx,%rax,1)
   180083e10:	(bad)  
   180083e11:	add    %edi,0x43014201(%rip)        # 0x1c3098018
   180083e17:	add    %eax,0x38(%rcx,%rax,1)
   180083e1b:	add    %esp,(%rax)
   180083e1d:	add    %esp,(%rcx)
   180083e1f:	add    %ebx,(%rdi)
   180083e21:	add    %esi,(%rdi)
   180083e23:	add    %esp,(%rcx,%rax,1)
   180083e26:	and    $0x4f015001,%eax
   180083e2b:	add    %ecx,0x1(%rsi)
   180083e2e:	rex.WX add %rcx,0x1(%rbx)
   180083e32:	sbb    (%rcx),%eax
   180083e34:	(bad)  
   180083e35:	add    %eax,0xd(%rsi)
   180083e38:	add    $0x1d010401,%eax
   180083e3d:	add    %ebx,(%rcx,%rax,1)
   180083e40:	(bad)  
   180083e41:	or     %ebx,0x20092409(%rip)        # 0x1a0116250
   180083e47:	or     %esp,(%rbx)
   180083e49:	or     %ecx,0x9(%rdi)
   180083e4c:	and    %ecx,(%rcx)
   180083e4e:	and    (%rcx),%cl
   180083e50:	(bad)  
   180083e51:	or     %eax,(%rsi)
   180083e53:	or     %edx,(%rsi)
   180083e55:	or     %esp,0x39c0399(%rbx,%rax,1)
   180083e5c:	test   $0x3,%al
   180083e5e:	sahf   
   180083e5f:	add    -0x5efc5ffd(%rbp),%ebx
   180083e65:	add    -0x5dfc5cfd(%rdi),%ebx
   180083e6b:	add    -0x7dfc45fd(%rbp),%eax
   180083e71:	add    -0x7efc59fd(%rax),%eax
   180083e77:	add    0x3(%rdi),%edi
   180083e7a:	jle    0x180083e7f
   180083e7c:	jno    0x180083e81
   180083e7e:	jge    0x180083e83
   180083e80:	jbe    0x180083e85
   180083e82:	jne    0x180083e87
   180083e84:	sbb    %ecx,(%rcx)
   180083e86:	jp     0x180083e8b
   180083e88:	jl     0x180083e8d
   180083e8a:	jnp    0x180083e8f
   180083e8c:	jns    0x180083e91
   180083e8e:	js     0x180083e93
   180083e90:	sbb    (%rcx),%cl
   180083e92:	mov    $0xa703bb03,%esp
   180083e97:	add    0x38d091b(%rbx,%rax,1),%ecx
   180083e9e:	xchg   %eax,%ebp
   180083e9f:	add    -0x6efc69fd(%rdx),%edx
   180083ea5:	add    (%rcx,%rcx,1),%ebx
   180083ea8:	xchg   %eax,%edi
   180083ea9:	add    -0x5afc65fd(%rax),%ebx
   180083eaf:	add    -0x6cfc6bfd(%rbx),%ebx
   180083eb5:	add    0xd(%rax),%ecx
   180083eb8:	jae    0x180083ebd
   180083eba:	je     0x180083ebf
   180083ebc:	jb     0x180083ec1
   180083ebe:	xchg   %al,(%rbx)
   180083ec0:	test   %al,(%rbx)
   180083ec2:	ja     0x180083ec7
   180083ec4:	pop    (%rbx)
   180083ec6:	nop
   180083ec7:	add    -0x77fc74fd(%rdi),%eax
   180083ecd:	add    -0x7cfc75fd(%rsi),%ecx
   180083ed3:	add    -0x49fc4dfd(%rcx),%ecx
   180083ed9:	add    -0x4cfc48fd(%rcx),%edi
   180083edf:	add    -0x4ffc4bfd(%rbp),%esi
   180083ee5:	add    -0x2afc2bfd(%rax),%edi
   180083eeb:	add    %ebx,%ebx
   180083eed:	add    %ebp,%ebx
   180083eef:	add    %esp,%ebx
   180083ef1:	add    %edi,%edx
   180083ef3:	add    %eax,%ebx
   180083ef5:	add    %esi,%edx
   180083ef7:	add    %edx,%ebx
   180083ef9:	add    %ecx,%ebx
   180083efb:	add    %eax,%ecx
   180083efd:	add    %edx,%ecx
   180083eff:	add    %edi,%ecx
   180083f01:	add    %ebx,%ecx
   180083f03:	add    %esi,%ecx
   180083f05:	add    %ebp,%ecx
   180083f07:	add    %esp,%ecx
   180083f09:	add    %ecx,%ecx
   180083f0b:	add    %eax,%edx
   180083f0d:	add    %edx,%edx
   180083f0f:	add    %esi,%ebx
   180083f11:	add    -0x50fc53fd(%rbp),%edi
   180083f17:	add    -0x40fc52fd(%rsi),%edi
   180083f1d:	add    %ebx,%edx
   180083f1f:	add    -0x3ffc55fd(%rbx),%ebp
   180083f25:	add    (%rdx),%eax
   180083f27:	add    $0x3ae03d1,%eax
   180083f2c:	ret    
   180083f2d:	add    %ecx,%eax
   180083f2f:	add    %esp,%eax
   180083f31:	add    %edx,%eax
   180083f33:	add    %esi,%eax
   180083f35:	add    %ebp,%eax
   180083f37:	add    -0x4efafcfd(%rcx),%ebp
   180083f3d:	add    0x7e01a101(%rbp),%ebx
   180083f43:	add    %ecx,0x18a018b(%rcx,%rax,1)
   180083f4a:	xchg   %eax,%edx
   180083f4b:	add    %ecx,-0x6efe6fff(%rdi)
   180083f51:	add    %edx,-0x67fe66ff(%rbx)
   180083f57:	add    %ebx,0x60018001(%rdx)
   180083f5d:	add    %ebx,0x1(%rdi)
   180083f60:	push   %rsp
   180083f61:	add    %edx,0x1(%rbx)
   180083f64:	pop    %rsp
   180083f65:	add    %ebx,0x1(%rax)
   180083f68:	pop    %rdx
   180083f69:	add    %ebx,0x1(%rcx)
   180083f6c:	pop    %rbx
   180083f6d:	add    %edx,0x1(%rdx)
   180083f70:	push   %rbp
   180083f71:	add    %edx,0x1(%rsi)
   180083f74:	push   %rdi
   180083f75:	add    %ebp,0x1(%rsi)
   180083f78:	test   %al,(%rcx)
   180083f7a:	addl   $0x7f,(%rcx)
   180083f7d:	add    %ebx,0x1(%rsi)
   180083f80:	mov    (%rcx),%es
   180083f82:	lea    (%rcx),%eax
   180083f84:	lahf   
   180083f85:	add    %esp,0x1(%rbx)
   180083f88:	(bad)
   180083f8d:	add    %esp,0x1(%rsi)
   180083f90:	add    %ebp,%gs:0x1(%rbx)
   180083f94:	push   $0x1
   180083f96:	insb   (%dx),%es:(%rdi)
   180083f97:	add    %esp,0x1(%rdi)
   180083f9a:	imul   $0x168016d,(%rcx),%eax
   180083fa0:	xchg   %eax,(%rcx)
   180083fa2:	xchg   %al,(%rcx)
   180083fa4:	test   %eax,(%rcx)
   180083fa6:	mov    %eax,(%rcx)
   180083fa8:	addl   $0x161015d,(%rcx)
   180083fae:	mov    %al,(%rcx)
   180083fb0:	(bad)  
   180083fb1:	add    %edx,-0x6afe9bff(%rdi)
   180083fb7:	add    %edx,0x47091801(%rsi)
   180083fbd:	or     %edi,(%rdi)
   180083fbf:	or     %eax,0x9(%rax)
   180083fc2:	or     %r13,(%r15)
   180083fc5:	or     %esp,0x33093509(%rip)        # 0x1b31174d4
   180083fcb:	or     %edi,(%rcx,%rcx,1)
   180083fce:	ds or  %edi,0x41094209(%rip)        # 0x1c11181de
   180083fd5:	or     %eax,0x9(%rbp)
   180083fd8:	rex.RX or %r8d,0x9(%rbx)
   180083fdc:	or     %r9d,0x9(%rsi)
   180083fe0:	push   %rax
   180083fe1:	or     %esi,(%rcx)
   180083fe3:	or     %esi,(%rax)
   180083fe5:	or     %esi,(%rsi)
   180083fe7:	or     %edi,(%rax)
   180083fe9:	or     %esp,(%rsi)
   180083feb:	or     %esi,(%rcx,%rcx,1)
   180083fee:	xor    (%rcx),%cl
   180083ff0:	cmp    %ecx,(%rcx)
   180083ff2:	cmp    (%rcx),%cl
   180083ff4:	cmp    (%rcx),%ecx
   180083ff6:	(bad)  
   180083ff7:	or     %ecx,0x9(%rax)
   180083ffa:	or     %r9,0x9(%rbx)
   180083ffe:	or     %rcx,0x9(%r10)
   180084002:	sub    $0x7104a509,%eax
   180084007:	add    $0x7c,%al
   180084009:	add    $0xaf,%al
   18008400b:	add    $0xb0,%al
   18008400d:	add    $0xab,%al
   18008400f:	add    $0xaa,%al
   180084011:	add    $0x8b,%al
   180084013:	or     %esi,-0x4cfb53fc(%rdx)
   180084019:	add    $0x40,%al
   18008401b:	or     $0x1350131,%eax
   180084020:	xor    $0x1,%al
   180084022:	xor    (%rcx),%al
   180084024:	xor    (%rcx),%eax
   180084026:	ss add %ebp,(%rax)
   180084029:	add    %ebp,(%rcx)
   18008402b:	add    %ebp,(%rdx)
   18008402d:	add    %ecx,0xd(%rbx)
   180084030:	and    (%rcx),%al
   180084032:	sub    $0x1,%al
   180084034:	es add %esp,(%rdi)
   180084037:	add    %ebp,0x23013001(%rip)        # 0x1a309703e
   18008403d:	add    %ecx,0xd(%rdx)
   180084040:	sub    (%rcx),%eax
   180084042:	cs add %ebp,(%rdi)
   180084045:	add    %eax,-0xaf6f3f7(%rip)        # 0x175114c54
   18008404b:	or     %cl,(%rcx)
   18008404d:	or     %edx,(%rdi)
   18008404f:	or     %eax,(%rdi)
   180084051:	or     %ecx,(%rsi)
   180084053:	or     %edx,(%rcx)
   180084055:	or     %ecx,(%rdi)
   180084057:	or     %edx,(%rbx)
   180084059:	or     %ecx,-0x1bf6f7f7(%rip)        # 0x164114868
   18008405f:	add    $0xe7,%al
   180084061:	add    $0xe6,%al
   180084063:	add    $0xe5,%al
   180084065:	add    $0xe8,%al
   180084067:	add    $0xe9,%al
   180084069:	add    $0x1,%al
   18008406b:	add    $0xd7304fa,%eax
   180084070:	stc    
   180084071:	add    $0xf0,%al
   180084073:	add    $0xf4,%al
   180084075:	add    $0xf2,%al
   180084077:	add    $0xf3,%al
   180084079:	add    $0xf5,%al
   18008407b:	add    $0xf1,%al
   18008407d:	add    $0xfe,%al
   18008407f:	add    $0xed,%al
   180084081:	add    $0xeb,%al
   180084083:	add    $0xec,%al
   180084085:	add    $0xef,%al
   180084087:	add    $0xee,%al
   180084089:	add    $0xff,%al
   18008408b:	add    $0xfb,%al
   18008408d:	add    $0x74,%al
   18008408f:	or     $0xd790d75,%eax
   180084094:	jp     0x1800840a3
   180084096:	jbe    0x1800840a5
   180084098:	ja     0x1800840a7
   18008409a:	js     0x1800840a9
   18008409c:	(bad)  
   18008409d:	add    $0xfd,%al
   18008409f:	add    $0xfc,%al
   1800840a1:	add    $0x7b,%al
   1800840a3:	add    $0xf7,%al
   1800840a5:	add    $0x7b,%al
   1800840a7:	add    %edi,0x1(%rdx)
   1800840aa:	outsl  %ds:(%rsi),(%dx)
   1800840ab:	add    %esi,0x1(%rax)
   1800840ae:	js     0x1800840b1
   1800840b0:	ja     0x1800840b3
   1800840b2:	movabs 0x7101750172010c01,%al
   1800840bb:	add    %esi,0x1(%rbx)
   1800840be:	je     0x1800840c1
   1800840c0:	or     $0x76017901,%eax
   1800840c5:	add    %esp,(%rdi)
   1800840c7:	or     %ebp,(%rdx)
   1800840c9:	or     %ebp,(%rcx,%rcx,1)
   1800840cc:	sub    (%rcx),%ecx
   1800840ce:	sub    %cl,(%rcx)
   1800840d0:	sub    %ecx,(%rcx)
   1800840d2:	sub    $0x8,%al
   1800840d4:	cs or  %al,0x2d082f07(%rbx)
   1800840db:	or     %dh,(%rcx)
   1800840dd:	or     %dh,(%rax)
   1800840df:	or     %dh,0x32073307(%rdi)
   1800840e5:	(bad)  
   1800840e6:	ss (bad) 
   1800840e8:	(bad)  
   1800840e9:	(bad)  
   1800840ea:	xor    $0x7,%al
   1800840ec:	cmp    %al,(%rdi)
   1800840ee:	rex.WRB (bad) 
   1800840f0:	rex.RB (bad) 
   1800840f2:	rex.R (bad) 
   1800840f4:	rex.WRXB (bad) 
   1800840f6:	rex.X (bad) 
   1800840f8:	rex.W (bad) 
   1800840fa:	rex.WB (bad) 
   1800840fc:	rex.B (bad) 
   1800840fe:	pop    %rcx
   1800840ff:	(bad)  
   180084100:	rex.WRX (bad) 
   180084102:	pop    %rax
   180084103:	(bad)  
   180084104:	pop    %rbx
   180084105:	(bad)  
   180084106:	pop    %rdx
   180084107:	(bad)  
   180084108:	rex (bad) 
   18008410a:	rex.XB (bad) 
   18008410c:	rex.WR (bad) 
   18008410e:	rex.WX (bad) 
   180084110:	cmp    %eax,(%rdi)
   180084112:	cmp    (%rdi),%al
   180084114:	rex.RX (bad) 
   180084116:	rex.RXB (bad) 
   180084118:	cmp    $0x3e073b07,%eax
   18008411d:	(bad)  
   18008411e:	(bad)  
   18008411f:	(bad)  
   180084120:	rex.WXB (bad) 
   180084122:	cmp    $0x7,%al
   180084124:	push   %rdx
   180084125:	(bad)  
   180084126:	push   %rsp
   180084127:	(bad)  
   180084128:	push   %rbx
   180084129:	(bad)  
   18008412a:	push   %rbp
   18008412b:	(bad)  
   18008412c:	push   %rcx
   18008412d:	(bad)  
   18008412e:	push   %rax
   18008412f:	(bad)  
   180084130:	push   %rdi
   180084131:	(bad)  
   180084132:	push   %rsi
   180084133:	(bad)  
   180084134:	xor    $0xd4082a07,%eax
   180084139:	(bad)  
   18008413a:	sub    (%rax),%ecx
   18008413c:	int3   
   18008413d:	(bad)  
   18008413e:	lret   
   18008413f:	(bad)  
   180084140:	or     (%rax),%cl
   180084142:	(bad)  
   180084143:	or     %cl,(%rax)
   180084145:	or     %cl,(%rcx)
   180084147:	or     %ah,%dl
   180084149:	(bad)  
   18008414a:	fildl  (%rsi)
   18008414c:	es (bad) 
   18008414e:	filds  (%rsi)
   180084150:	fiadds (%rsi)
   180084152:	faddl  (%rsi)
   180084154:	fldl   (%rsi)
   180084156:	roll   (%rsi)
   180084158:	rolb   %cl,(%rsi)
   18008415a:	loope  0x180084162
   18008415c:	loopne 0x180084164
   18008415e:	adc    (%rdi),%al
   180084160:	adc    %eax,(%rdi)
   180084162:	add    $0xd006d808,%eax
   180084167:	(bad)  
   180084168:	int    $0x6
   18008416a:	int3   
   18008416b:	(bad)  
   18008416c:	(bad)  
   18008416d:	(bad)  
   18008416e:	iret   
   18008416f:	(bad)  
   180084170:	flds   (%rsi)
   180084172:	adc    $0x14071307,%eax
   180084177:	(bad)  
   180084178:	(bad)  
   180084179:	(bad)  
   18008417a:	(bad)  
   18008417b:	(bad)  
   18008417c:	(bad)
   18008417f:	(bad)  
   180084180:	(bad)  
   180084181:	(bad)  
   180084182:	movl   $0x6c6071d,(%rsi)
   180084188:	enter  $0xc906,$0x6
   18008418c:	and    $0x7,%al
   18008418e:	and    (%rdi),%eax
   180084190:	and    $0xf306c307,%eax
   180084195:	(bad)  
   180084196:	lret   $0x2006
   180084199:	(bad)  
   18008419a:	and    %eax,(%rdi)
   18008419c:	sbb    $0x7,%al
   18008419e:	sbb    (%rdi),%eax
   1800841a0:	sbb    %eax,(%rdi)
   1800841a2:	(bad)  
   1800841a3:	(bad)  
   1800841a4:	sbb    (%rdi),%al
   1800841a6:	sbb    %al,(%rdi)
   1800841a8:	lret   
   1800841a9:	(bad)  
   1800841aa:	lock (bad) 
   1800841ac:	out    %eax,(%dx)
   1800841ad:	(bad)  
   1800841ae:	int1   
   1800841af:	(bad)  
   1800841b0:	ret    $0xd306
   1800841b3:	(bad)  
   1800841b4:	out    %eax,$0x6
   1800841b6:	int1   
   1800841b7:	(bad)  
   1800841b8:	(bad)  
   1800841b9:	(bad)  
   1800841ba:	sub    %eax,(%rdi)
   1800841bc:	sub    %al,(%rdi)
   1800841be:	stc    
   1800841bf:	(bad)  
   1800841c0:	cli    
   1800841c1:	(bad)  
   1800841c2:	std    
   1800841c3:	(bad)  
   1800841c4:	add    $0xb070807,%eax
   1800841c9:	(bad)  
   1800841ca:	(bad)  
   1800841cb:	(bad)  
   1800841cc:	or     %eax,(%rdi)
   1800841ce:	(bad)  
   1800841cf:	(bad)  
   1800841d0:	or     (%rdi),%al
   1800841d2:	testl  $0x70c06f6,(%rsi)
   1800841d8:	jrcxz  0x1800841e0
   1800841da:	out    %al,$0x6
   1800841dc:	in     $0x6,%al
   1800841de:	in     $0x6,%eax
   1800841e0:	and    $0x8,%al
   1800841e2:	incl   (%rsi)
   1800841e4:	add    (%rdi),%eax
   1800841e6:	add    (%rdi),%al
   1800841e8:	add    %eax,(%rdi)
   1800841ea:	add    $0x7,%al
   1800841ec:	add    %al,(%rdi)
   1800841ee:	cld    
   1800841ef:	(bad)  
   1800841f0:	(bad)  
   1800841f1:	(bad)  
   1800841f2:	repnz (bad) 
   1800841f4:	jmp    0x1800841fc
   1800841f6:	in     (%dx),%al
   1800841f7:	(bad)  
   1800841f8:	jmp    0x16e0f2f03
   1800841fd:	(bad)  
   1800841fe:	call   0x17b0f5209
   180084203:	(bad)  
   180084204:	clc    
   180084205:	(bad)  
   180084206:	incb   (%rsi)
   180084208:	hlt    
   180084209:	(bad)  
   18008420a:	cmc    
   18008420b:	(bad)  
   18008420c:	or     $0xf070e07,%eax
   180084211:	(bad)  
   180084212:	lods   %ds:(%rsi),%eax
   180084213:	(bad)  
   180084214:	mov    $0x7,%dh
   180084216:	jrcxz  0x18008421f
   180084218:	roll   %cl,(%rdi)
   18008421a:	(bad)  
   18008421b:	(bad)  
   18008421c:	scas   %es:(%rdi),%eax
   18008421d:	(bad)  
   18008421e:	(bad)  
   18008421f:	(bad)  
   180084220:	fiaddl (%rdi)
   180084222:	sbb    %ecx,(%rax)
   180084224:	sbb    %cl,(%rax)
   180084226:	sbb    $0x1b081708,%eax
   18008422b:	or     %dl,(%rsi)
   18008422d:	or     %bl,(%rdx)
   18008422f:	or     %bl,(%rax,%rcx,1)
   180084232:	xor    $0x8,%al
   180084234:	xor    (%rax),%ecx
   180084236:	xlat   %ds:(%rbx)
   180084237:	(bad)  
   180084238:	fadds  (%rdi)
   18008423a:	(bad)  
   18008423b:	(bad)  
   18008423c:	flds   (%rdi)
   18008423e:	fildl  (%rdi)
   180084240:	rolb   $0xc2,(%rdi)
   180084243:	(bad)  
   180084244:	mov    $0xc407bf07,%esi
   180084249:	(bad)  
   18008424a:	mov    $0xbc07ba07,%ebx
   18008424f:	(bad)  
   180084250:	roll   $0xbd,(%rdi)
   180084253:	(bad)  
   180084254:	ret    
   180084255:	(bad)  
   180084256:	mov    $0x7,%al
   180084258:	mov    $0x7,%ch
   18008425a:	mov    $0x7,%bl
   18008425c:	mov    $0x7,%dl
   18008425e:	filds  (%rdi)
   180084260:	loopne 0x180084269
   180084262:	loope  0x18008426b
   180084264:	loop   0x18008426d
   180084266:	mov    $0x7,%cl
   180084268:	fldl   (%rdi)
   18008426a:	faddl  (%rdi)
   18008426c:	fiadds (%rdi)
   18008426e:	mov    $0x7,%ah
   180084270:	lret   $0xcd07
   180084273:	(bad)  
   180084274:	mov    $0xe507b907,%eax
   180084279:	(bad)  
   18008427a:	out    %al,$0x7
   18008427c:	in     $0x7,%al
   18008427e:	call   0x1a210298a
   180084283:	or     %ah,0x27082608(%rip)        # 0x1a7106891
   180084289:	or     %ch,(%rax)
   18008428b:	or     %ch,(%rcx)
   18008428d:	or     %dl,%cl
   18008428f:	(bad)  
   180084290:	rolb   %cl,(%rdi)
   180084292:	iret   
   180084293:	(bad)  
   180084294:	rolb   (%rdi)
   180084296:	(bad)  
   180084297:	(bad)  
   180084298:	xor    (%rax),%cl
   18008429a:	leave  
   18008429b:	(bad)  
   18008429c:	movb   $0xc5,(%rdi)
   18008429f:	(bad)  
   1800842a0:	movl   $0x82307c8,(%rdi)
   1800842a6:	(bad)  
   1800842a7:	or     %ah,(%rcx)
   1800842a9:	or     %cl,(%rbx)
   1800842ab:	or     %dh,%bh
   1800842ad:	(bad)  
   1800842ae:	(bad)  
   1800842af:	or     %al,(%rbx)
   1800842b1:	or     %cl,(%rax,%rcx,1)
   1800842b4:	and    %cl,(%rax)
   1800842b6:	add    %cl,(%rax)
   1800842b8:	or     $0x1080208,%eax
   1800842bd:	or     %dl,%dh
   1800842bf:	(bad)  
   1800842c0:	xor    %eax,(%rdi)
   1800842c2:	(bad)  
   1800842c3:	(bad)  
   1800842c4:	xor    %al,(%rdi)
   1800842c6:	push   $0x64075d07
   1800842cb:	(bad)  
   1800842cc:	jne    0x1800842d5
   1800842ce:	jbe    0x1800842d7
   1800842d0:	imul   $0x76a076b,(%rdi),%eax
   1800842d6:	insb   (%dx),%es:(%rdi)
   1800842d7:	(bad)  
   1800842d8:	ja     0x1800842e1
   1800842da:	(bad)  
   1800842db:	(bad)  
   1800842dc:	jp     0x1800842e5
   1800842de:	jl     0x1800842e7
   1800842e0:	jnp    0x1800842e9
   1800842e2:	jge    0x1800842eb
   1800842e4:	addb   $0x7e,(%rdi)
   1800842e7:	(bad)  
   1800842e8:	jg     0x1800842f1
   1800842ea:	addl   $0x7620763,(%rdi)
   1800842f0:	je     0x1800842f9
   1800842f2:	data16 (bad) 
   1800842f4:	pop    %rsi
   1800842f5:	(bad)  
   1800842f6:	(bad)  
   1800842f7:	(bad)  
   1800842f8:	gs (bad) 
   1800842fa:	pop    %rdi
   1800842fb:	(bad)  
   1800842fc:	addr32 (bad) 
   1800842fe:	(bad)  
   1800842ff:	(bad)  
   180084300:	outsl  %ds:(%rsi),(%dx)
   180084301:	(bad)  
   180084302:	outsb  %ds:(%rsi),(%dx)
   180084303:	(bad)  
   180084304:	insl   (%dx),%es:(%rdi)
   180084305:	(bad)  
   180084306:	jo     0x18008430f
   180084308:	jb     0x180084311
   18008430a:	jae    0x180084313
   18008430c:	jno    0x180084315
   18008430e:	js     0x180084317
   180084310:	jns    0x180084319
   180084312:	cs (bad) 
   180084314:	test   %eax,(%rdi)
   180084316:	pop    %rsp
   180084317:	(bad)  
   180084318:	sub    $0xd5078407,%eax
   18008431d:	(bad)  
   18008431e:	sub    $0x7,%al
   180084320:	fiaddl (%rsi)
   180084322:	xchg   %eax,(%rdi)
   180084324:	xchg   %al,(%rdi)
   180084326:	pushf  
   180084327:	(bad)  
   180084328:	fwait
   180084329:	(bad)  
   18008432a:	popf   
   18008432b:	(bad)  
   18008432c:	mov    %es,(%rdi)
   18008432e:	lahf   
   18008432f:	(bad)  
   180084330:	mov    (%rdi),%es
   180084332:	sahf   
   180084333:	(bad)  
   180084334:	lea    (%rdi),%eax
   180084336:	cwtl   
   180084337:	(bad)  
   180084338:	pop    (%rdi)
   18008433a:	mov    (%rdi),%eax
   18008433c:	mov    %al,(%rdi)
   18008433e:	mov    %eax,(%rdi)
   180084340:	mov    (%rdi),%al
   180084342:	xchg   %eax,%esp
   180084343:	(bad)  
   180084344:	xchg   %eax,%ebx
   180084345:	(bad)  
   180084346:	xchg   %eax,%ecx
   180084347:	(bad)  
   180084348:	xchg   %eax,%edx
   180084349:	(bad)  
   18008434a:	xchg   %eax,%edi
   18008434b:	(bad)  
   18008434c:	xchg   %eax,%ebp
   18008434d:	(bad)  
   18008434e:	xchg   %eax,%esi
   18008434f:	(bad)  
   180084350:	(bad)  
   180084351:	(bad)  
   180084352:	cltd   
   180084353:	(bad)  
   180084354:	nop
   180084355:	(bad)  
   180084356:	sub    (%rdi),%al
   180084358:	movsl  %ds:(%rsi),%es:(%rdi)
   180084359:	(bad)  
   18008435a:	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008435b:	(bad)  
   18008435c:	cmpsb  %es:(%rdi),%ds:(%rsi)
   18008435d:	(bad)  
   18008435e:	test   $0x7,%al
   180084360:	movabs 0xaa07a107ac07a307,%al
   180084369:	(bad)  
   18008436a:	stos   %eax,%es:(%rdi)
   18008436b:	(bad)  
   18008436c:	movabs %al,0xa906d7072b07a407
   180084375:	(bad)  
   180084376:	jmp    0x18008437f
   180084378:	in     (%dx),%al
   180084379:	(bad)  
   18008437a:	in     (%dx),%eax
   18008437b:	(bad)  
   18008437c:	out    %al,(%dx)
   18008437d:	(bad)  
   18008437e:	out    %eax,(%dx)
   18008437f:	(bad)  
   180084380:	(bad)  
   180084381:	or     %cl,(%rdi)
   180084383:	or     %dl,(%rcx)
   180084385:	or     %dl,0x10081408(%rip)        # 0x190105793
   18008438b:	or     %dl,(%rbx)
   18008438d:	or     %dl,(%rdx)
   18008438f:	or     %al,(%rsi)
   180084391:	or     %dh,%dh
   180084393:	(bad)  
   180084394:	add    $0x8,%al
   180084396:	lock (bad) 
   180084398:	cmc    
   180084399:	(bad)  
   18008439a:	incl   (%rdi)
   18008439c:	clc    
   18008439d:	(bad)  
   18008439e:	stc    
   18008439f:	(bad)  
   1800843a0:	cli    
   1800843a1:	(bad)  
   1800843a2:	std    
   1800843a3:	(bad)  
   1800843a4:	cld    
   1800843a5:	(bad)  
   1800843a6:	sti    
   1800843a7:	(bad)  
   1800843a8:	incb   (%rdi)
   1800843aa:	hlt    
   1800843ab:	(bad)  
   1800843ac:	repz (bad) 
   1800843ae:	repnz (bad) 
   1800843b0:	(bad)  
   1800843b1:	(bad)  
   1800843b2:	and    (%rdi),%al
   1800843b4:	mov    $0xd,%cl
   1800843b6:	mov    $0xd,%dl
   1800843b8:	rorb   %cl,0xdb70db5(%rip)        # 0x18dbf5173
   1800843be:	mov    $0xd,%dh
   1800843c0:	rorl   0xdb80db9(%rip)        # 0x18dc0517f
   1800843c6:	mov    $0xc30dca0d,%esi
   1800843cb:	or     $0xdbd0dbf,%eax
   1800843d0:	(bad)  
   1800843d1:	or     $0xdc90dc7,%eax
   1800843d6:	enter  $0xcb0d,$0xd
   1800843da:	mov    $0xbb0dc40d,%edx
   1800843df:	or     $0xdc00dbc,%eax
   1800843e4:	ret    $0xc10d
   1800843e7:	or     $0xdce0dc5,%eax
   1800843ec:	iret   
   1800843ed:	or     $0xdcd0dcc,%eax
   1800843f2:	mov    $0xd,%ah
   1800843f4:	rorb   0xddb0db3(%rip)        # 0x18de351ad
   1800843fa:	fmull  0xde00ddf(%rip)        # 0x18de851df
   180084400:	(bad)  
   180084401:	or     $0xdeb0dde,%eax
   180084406:	fisttpll 0xde50de1(%rip)        # 0x18ded51ed
   18008440c:	in     $0xd,%al
   18008440e:	loop   0x18008441d
   180084410:	jrcxz  0x18008441f
   180084412:	sub    $0xe70d250d,%eax
   180084417:	or     $0xd340dda,%eax
   18008441c:	jmp    0x1b6162c2e
   180084421:	or     $0xd380d37,%eax
   180084426:	and    $0xd,%al
   180084428:	out    %al,$0xd
   18008442a:	out    %al,(%dx)
   18008442b:	or     $0xded0dec,%eax
   180084430:	xlat   %ds:(%rbx)
   180084431:	or     $0xdd60dd5,%eax
   180084436:	fmuls  0xdd40dd9(%rip)        # 0x18ddc5215
   18008443c:	mov    $0xbe068009,%ebx
   180084441:	or     %edi,0x6209a809(%rdi)
   180084447:	or     %esi,0x6(%rbp)
   18008444a:	scas   %es:(%rdi),%eax
   18008444b:	or     %esi,0x6(%rbx)
   18008444e:	je     0x180084456
   180084450:	mov    $0x9,%cl
   180084452:	(bad)  
   180084453:	(bad)  
   180084454:	scas   %es:(%rdi),%al
   180084455:	or     %esi,0x72067609(%rax)
   18008445b:	(bad)  
   18008445c:	xchg   %al,(%rsi)
   18008445e:	xchg   %eax,(%rsi)
   180084460:	js     0x180084468
   180084462:	(bad)  
   180084463:	(bad)  
   180084464:	movabs 0x4709a309a409a209,%eax
   18008446d:	(bad)  
   18008446e:	in     $0x9,%eax
   180084470:	rex.WR (bad) 
   180084472:	rex.WRB (bad) 
   180084474:	sub    $0xb3096e06,%eax
   180084479:	(bad)  
   18008447a:	lock or %ebp,%edi
   18008447d:	or     %ebp,(%rsi)
   18008447f:	(bad)  
   180084480:	(bad)  
   180084481:	or     %ebp,%esi
   180084483:	or     %esp,0x9(%rcx)
   180084486:	pop    %rsi
   180084487:	or     %edi,%eax
   180084489:	or     %eax,0x6(%rsi)
   18008448c:	rex.RB (bad) 
   18008448e:	mov    $0x6,%ch
   180084490:	mov    $0x6,%ah
   180084492:	mov    $0x6,%dh
   180084494:	mov    $0x6,%bh
   180084496:	testl  $0x95b0642,(%rcx)
   18008449c:	pop    %rsp
   18008449d:	or     %ebx,0x9(%rdi)
   1800844a0:	in     (%dx),%eax
   1800844a1:	or     %esi,(%rbx)
   1800844a3:	(bad)  
   1800844a4:	scas   %es:(%rdi),%eax
   1800844a5:	(bad)  
   1800844a6:	mov    $0x6,%al
   1800844a8:	mov    $0x6,%cl
   1800844aa:	mov    $0x6,%dl
   1800844ac:	insl   (%dx),%es:(%rdi)
   1800844ad:	or     %ebp,(%rsi,%rax,1)
   1800844b0:	imul   $0x3a,(%rcx),%ecx
   1800844b3:	(bad)  
   1800844b4:	sub    (%rsi),%eax
   1800844b6:	cmp    %eax,(%rsi)
   1800844b8:	rex.XB (bad) 
   1800844ba:	cmp    (%rsi),%eax
   1800844bc:	cmp    $0x6,%al
   1800844be:	hlt    
   1800844bf:	or     %eax,0x6(%rcx)
   1800844c2:	cmp    $0x3e063f06,%eax
   1800844c7:	(bad)  
   1800844c8:	rex (bad) 
   1800844ca:	testb  $0xf5,(%rcx)
   1800844cd:	or     %esi,%edx
   1800844cf:	or     %ebx,0x6a09f309(%rcx)
   1800844d5:	or     %esi,(%rsi)
   1800844d7:	(bad)  
   1800844d8:	xor    $0x6,%al
   1800844da:	xor    $0x6e09a506,%eax
   1800844df:	(bad)  
   1800844e0:	jne    0x1800844eb
   1800844e2:	je     0x1800844ed
   1800844e4:	jo     0x1800844ef
   1800844e6:	jno    0x1800844f1
   1800844e8:	jb     0x1800844f3
   1800844ea:	jae    0x1800844f5
   1800844ec:	rorb   $0xc2,(%rcx)
   1800844ef:	or     %eax,%ebx
   1800844f1:	or     %ebp,0x6810665(%rcx,%rcx,1)
   1800844f8:	jno    0x180084500
   1800844fa:	mov    $0x9,%ch
   1800844fc:	mov    $0x9,%dh
   1800844fe:	mov    $0x9,%ah
   180084500:	mov    $0x9,%dl
   180084502:	mov    $0xb709b309,%eax
   180084507:	or     %eax,%ecx
   180084509:	(bad)  
   18008450a:	fwait
   18008450b:	or     %edi,-0x55f658f7(%rbp)
   180084511:	or     %ebp,-0x7cf654f7(%rcx)
   180084517:	(bad)  
   180084518:	test   %al,(%rsi)
   18008451a:	test   %eax,(%rsi)
   18008451c:	jg     0x180084524
   18008451e:	jo     0x180084526
   180084520:	outsl  %ds:(%rsi),(%dx)
   180084521:	(bad)  
   180084522:	(bad)  
   180084523:	or     %eax,%ecx
   180084525:	or     %ecx,-0x71f93ff7(%rbp)
   18008452b:	or     %ecx,-0x59f643f7(%rdi)
   180084531:	or     %edi,0x6(%rdx)
   180084534:	xchg   %eax,%edi
   180084535:	or     %edi,%ebx
   180084537:	or     %edi,%ebp
   180084539:	or     %edi,%esi
   18008453b:	or     %edi,%edi
   18008453d:	or     %eax,(%rax)
   18008453f:	or     %ah,%bh
   180084541:	or     %edi,%edx
   180084543:	or     %edi,0x77067906(%rbp)
   180084549:	(bad)  
   18008454a:	lahf   
   18008454b:	or     %ebx,-0x45f984f7(%rsi)
   180084551:	or     %edi,0x7e067d09(%rcx)
   180084557:	(bad)  
   180084558:	jl     0x180084560
   18008455a:	xchg   %eax,%ecx
   18008455b:	or     %ebp,0x52096f09(%rbp)
   180084561:	(bad)  
   180084562:	push   %rsp
   180084563:	(bad)  
   180084564:	push   %rbx
   180084565:	(bad)  
   180084566:	mov    $0xac06ad06,%esp
   18008456b:	(bad)  
   18008456c:	push   %rax
   18008456d:	(bad)  
   18008456e:	mov    $0xf906be06,%ecx
   180084573:	or     %edx,0x6(%rcx)
   180084576:	movabs 0xbb09ec099806a006,%eax
   18008457f:	(bad)  
   180084580:	mov    $0x4e06ba06,%eax
   180084585:	(bad)  
   180084586:	pop    %rsp
   180084587:	(bad)  
   180084588:	fmuls  (%rcx)
   18008458a:	in     $0x9,%al
   18008458c:	jrcxz  0x180084597
   18008458e:	int1   
   18008458f:	or     %ebp,0x6(%rbp)
   180084592:	cmp    %al,(%rsi)
   180084594:	push   $0x5d096909
   180084599:	or     %esi,(%rdx)
   18008459b:	(bad)  
   18008459c:	movabs 0x640963065b065a09,%al
   1800845a5:	or     %esp,0x9(%rbp)
   1800845a8:	or     %esp,0x9(%esi)
   1800845ac:	imul   $0x6c,(%rsi),%eax
   1800845af:	(bad)  
   1800845b0:	(bad)  
   1800845b1:	(bad)  
   1800845b2:	(bad)  
   1800845b3:	(bad)  
   1800845b4:	fs (bad) 
   1800845b6:	(bad)  
   1800845b8:	movsxd (%rsi),%eax
   1800845ba:	push   %rsi
   1800845bb:	(bad)  
   1800845bc:	push   %rdi
   1800845bd:	(bad)  
   1800845be:	nop
   1800845bf:	or     %edx,-0x65f999f7(%rbx)
   1800845c5:	or     %ebx,0x6(%rcx)
   1800845c8:	pop    %rax
   1800845c9:	(bad)  
   1800845ca:	xchg   %eax,%edx
   1800845cb:	or     %ebp,0x6(%rcx)
   1800845ce:	push   $0x6
   1800845d0:	push   $0x79097706
   1800845d5:	or     %edi,0x9(%rdx)
   1800845d8:	js     0x1800845e3
   1800845da:	jbe    0x1800845e5
   1800845dc:	orl    $0x97e0983,(%rcx)
   1800845e2:	test   %ecx,(%rcx)
   1800845e4:	test   %cl,(%rcx)
   1800845e6:	mov    (%rcx),%cl
   1800845e8:	mov    %cs,(%rcx)
   1800845ea:	jge    0x1800845f5
   1800845ec:	orb    $0x7f,(%rcx)
   1800845ef:	or     %eax,0x7b097c09(%rdx)
   1800845f5:	or     %eax,-0x76f677f7(%rdi)
   1800845fb:	or     %eax,0x31062f09(%rsi)
   180084601:	(bad)  
   180084602:	xor    %al,(%rsi)
   180084604:	pop    %rdi
   180084605:	(bad)  
   180084606:	insb   (%dx),%es:(%rdi)
   180084607:	or     %ecx,0x6(%rdi)
   18008460a:	pop    %rbp
   18008460b:	(bad)  
   18008460c:	pop    %rsi
   18008460d:	(bad)  
   18008460e:	xchg   %eax,%esi
   18008460f:	or     %ebx,0x644099d(%rcx,%rcx,1)
   180084616:	addr32 (bad) 
   180084618:	xchg   %eax,%esp
   180084619:	or     %edx,-0x39f9aaf7(%rbp)
   18008461f:	or     %ebp,%ecx
   180084621:	or     %ebp,%edx
   180084623:	or     %ebp,%ebx
   180084625:	or     %esp,%edi
   180084627:	or     %ebp,%eax
   180084629:	or     %ecx,%esi
   18008462b:	or     %ecx,-0x25f626fa(%rsi)
   180084631:	or     %ecx,-0x72f975fa(%rbx)
   180084637:	(bad)  
   180084638:	mov    %es,(%rsi)
   18008463a:	loop   0x180084645
   18008463c:	fisttpl (%rcx)
   18008463e:	iret   
   18008463f:	or     %edx,%eax
   180084641:	or     %ecx,%esp
   180084643:	or     %ecx,-0x34f632fa(%rax)
   180084649:	or     %edx,%ecx
   18008464b:	or     %eax,%edi
   18008464d:	or     %ecx,-0x35f951fa(%rcx)
   180084653:	or     %edx,%edi
   180084655:	or     %edx,%edx
   180084657:	or     %edx,-0x68f967fa(%rbx)
   18008465d:	(bad)  
   18008465e:	xchg   %eax,%esp
   18008465f:	(bad)  
   180084660:	xchg   %eax,%esi
   180084661:	(bad)  
   180084662:	pushf  
   180084663:	(bad)  
   180084664:	xchg   %eax,%ebp
   180084665:	(bad)  
   180084666:	(bad)  
   180084667:	(bad)  
   180084668:	popf   
   180084669:	(bad)  
   18008466a:	cltd   
   18008466b:	(bad)  
   18008466c:	fwait
   18008466d:	(bad)  
   18008466e:	sahf   
   18008466f:	(bad)  
   180084670:	xchg   %eax,%edx
   180084671:	(bad)  
   180084672:	nop
   180084673:	(bad)  
   180084674:	xchg   %eax,%ecx
   180084675:	(bad)  
   180084676:	lahf   
   180084677:	(bad)  
   180084678:	pop    (%rsi)
   18008467a:	out    %al,$0x9
   18008467c:	fisttpll (%rcx)
   18008467e:	fmull  (%rcx)
   180084680:	fisttps (%rcx)
   180084682:	fimuls (%rcx)
   180084684:	loopne 0x18008468f
   180084686:	loope  0x180084691
   180084688:	stos   %eax,%es:(%rdi)
   180084689:	(bad)  
   18008468a:	cmpsl  %es:(%rdi),%ds:(%rsi)
   18008468b:	(bad)  
   18008468c:	stos   %al,%es:(%rdi)
   18008468d:	(bad)  
   18008468e:	movsb  %ds:(%rsi),%es:(%rdi)
   18008468f:	(bad)  
   180084690:	cmpsb  %es:(%rdi),%ds:(%rsi)
   180084691:	(bad)  
   180084692:	movabs %al,0xa906a306a509c506
   18008469b:	(bad)  
   18008469c:	test   $0x6,%al
   18008469e:	leave  
   18008469f:	or     %ecx,%eax
   1800846a1:	or     %edx,%ebp
   1800846a3:	or     %edx,%esi
   1800846a5:	or     %edx,%esp
   1800846a7:	or     %ecx,0x6(%rbx)
   1800846aa:	rorl   %cl,(%rcx)
   1800846ac:	rex.W (bad) 
   1800846ae:	rex.WB (bad) 
   1800846b0:	rex.WX (bad) 
   1800846b2:	movabs 0x7d0d7e0d7c0d7b0d,%eax
   1800846bb:	or     $0xd800d7f,%eax
   1800846c0:	orl    $0xd610d5e,0xd5f0d60(%rip)        # 0x18d67542a
   1800846ca:	push   $0xffffffffca0d630d
   1800846cf:	or     %cl,%ah
   1800846d1:	or     %ch,-0x57f25bf3(%rcx)
   1800846d7:	or     $0xda50da7,%eax
   1800846dc:	cmpsb  %es:(%rdi),%ds:(%rsi)
   1800846dd:	or     $0x8cd08cb,%eax
   1800846e2:	(bad)  
   1800846e3:	or     %cl,%bh
   1800846e5:	or     %ch,-0x53f298f3(%rbx)
   1800846eb:	or     $0xdae0dad,%eax
	...
   180084700:	add    %rax,%rdx
   180084703:	inc    %r12d
   180084706:	cmp    $0x923,%r12d
   18008470d:	jae    0x180084714
   18008470f:	cmpb   $0x0,(%rdx)
   180084712:	jne    0x180084731
   180084714:	test   %r12d,%r12d
   180084717:	je     0x180084737
   180084719:	movzwl 0x44e(%rbp,%r12,2),%ecx
   180084722:	cmpb   $0x20,(%rsi,%rcx,1)
   180084726:	jne    0x180084737
   180084728:	lea    (%rsi,%rcx,1),%rdx
   18008472c:	dec    %r12d
   18008472f:	jmp    0x180084714
   180084731:	jmp    *-0x3867(%rip)        # 0x180080ed0
   180084737:	jmp    *-0x3865(%rip)        # 0x180080ed8
	...
   18008477d:	add    %al,(%rax)
   18008477f:	add    %al,-0x19(%rcx,%rdi,1)
   180084783:	je     0x1800847a1
   180084785:	cmpl   $0x9,0x2580(%r11)
   18008478d:	jae    0x1800847a1
   18008478f:	incl   0x2580(%r11)
   180084796:	mov    0x50(%rsp),%rsi
   18008479b:	jmp    *-0x38c1(%rip)        # 0x180080ee0
   1800847a1:	jmp    *-0x38bf(%rip)        # 0x180080ee8
	...
