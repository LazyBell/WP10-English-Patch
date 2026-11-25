
stub1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	48 83 ec 38          	sub    $0x38,%rsp
   4:	c7 44 24 20 08 00 00 	movl   $0x8,0x20(%rsp)
   b:	00 
   c:	e8 00 00 00 00       	call   0x11
  11:	48 83 c4 38          	add    $0x38,%rsp
  15:	c3                   	ret    
	...
  3e:	00 00                	add    %al,(%rax)
  40:	41 89 d1             	mov    %edx,%r9d
  43:	49 89 c8             	mov    %rcx,%r8
  46:	41 0f b6 00          	movzbl (%r8),%eax
  4a:	3c 82                	cmp    $0x82,%al
  4c:	74 0d                	je     0x5b
  4e:	83 e0 df             	and    $0xffffffdf,%eax
  51:	83 e8 41             	sub    $0x41,%eax
  54:	83 f8 19             	cmp    $0x19,%eax
  57:	77 2a                	ja     0x83
  59:	eb 19                	jmp    0x74
  5b:	49 ff c0             	inc    %r8
  5e:	41 0f b6 00          	movzbl (%r8),%eax
  62:	8d 50 a0             	lea    -0x60(%rax),%edx
  65:	83 fa 19             	cmp    $0x19,%edx
  68:	76 0a                	jbe    0x74
  6a:	2d 81 00 00 00       	sub    $0x81,%eax
  6f:	83 f8 19             	cmp    $0x19,%eax
  72:	77 0f                	ja     0x83
  74:	49 ff c0             	inc    %r8
  77:	41 80 38 00          	cmpb   $0x0,(%r8)
  7b:	75 c9                	jne    0x46
  7d:	e9 7e 01 00 00       	jmp    0x200
  82:	90                   	nop
  83:	44 89 ca             	mov    %r9d,%edx
  86:	e9 00 00 00 00       	jmp    0x8b
	...
  ff:	00 41 89             	add    %al,-0x77(%rcx)
 102:	d1 49 89             	rorl   -0x77(%rcx)
 105:	c8 45 31 d2          	enter  $0x3145,$0xd2
 109:	41 0f b6 00          	movzbl (%r8),%eax
 10d:	3c 20                	cmp    $0x20,%al
 10f:	74 49                	je     0x15a
 111:	3c 81                	cmp    $0x81,%al
 113:	74 3c                	je     0x151
 115:	3c 82                	cmp    $0x82,%al
 117:	74 0d                	je     0x126
 119:	83 e0 df             	and    $0xffffffdf,%eax
 11c:	83 e8 41             	sub    $0x41,%eax
 11f:	83 f8 19             	cmp    $0x19,%eax
 122:	77 43                	ja     0x167
 124:	eb 19                	jmp    0x13f
 126:	49 ff c0             	inc    %r8
 129:	41 0f b6 00          	movzbl (%r8),%eax
 12d:	8d 50 a0             	lea    -0x60(%rax),%edx
 130:	83 fa 19             	cmp    $0x19,%edx
 133:	76 0a                	jbe    0x13f
 135:	2d 81 00 00 00       	sub    $0x81,%eax
 13a:	83 f8 19             	cmp    $0x19,%eax
 13d:	77 28                	ja     0x167
 13f:	41 b2 01             	mov    $0x1,%r10b
 142:	49 ff c0             	inc    %r8
 145:	41 80 38 00          	cmpb   $0x0,(%r8)
 149:	75 be                	jne    0x109
 14b:	e9 b0 00 00 00       	jmp    0x200
 150:	90                   	nop
 151:	49 ff c0             	inc    %r8
 154:	41 80 38 40          	cmpb   $0x40,(%r8)
 158:	75 0d                	jne    0x167
 15a:	45 84 d2             	test   %r10b,%r10b
 15d:	74 08                	je     0x167
 15f:	45 31 d2             	xor    %r10d,%r10d
 162:	49 ff c0             	inc    %r8
 165:	eb a2                	jmp    0x109
 167:	44 89 ca             	mov    %r9d,%edx
 16a:	e9 00 00 00 00       	jmp    0x16f
	...
 1ff:	00 49 89             	add    %cl,-0x77(%rcx)
 202:	c8 49 89 c9          	enter  $0x8949,$0xc9
 206:	41 0f b6 00          	movzbl (%r8),%eax
 20a:	49 ff c0             	inc    %r8
 20d:	3c 81                	cmp    $0x81,%al
 20f:	74 17                	je     0x228
 211:	3c 82                	cmp    $0x82,%al
 213:	75 18                	jne    0x22d
 215:	41 0f b6 00          	movzbl (%r8),%eax
 219:	49 ff c0             	inc    %r8
 21c:	3c 81                	cmp    $0x81,%al
 21e:	72 04                	jb     0x224
 220:	2c 20                	sub    $0x20,%al
 222:	eb 09                	jmp    0x22d
 224:	2c 1f                	sub    $0x1f,%al
 226:	eb 05                	jmp    0x22d
 228:	49 ff c0             	inc    %r8
 22b:	b0 20                	mov    $0x20,%al
 22d:	41 88 01             	mov    %al,(%r9)
 230:	49 ff c1             	inc    %r9
 233:	84 c0                	test   %al,%al
 235:	75 cf                	jne    0x206
 237:	b8 01 00 00 00       	mov    $0x1,%eax
 23c:	c3                   	ret    
	...
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 80 39 00 74 52    	add    %al,0x52740039(%rax)
 305:	80 3a 00             	cmpb   $0x0,(%rdx)
 308:	74 4d                	je     0x357
 30a:	45 31 c0             	xor    %r8d,%r8d
 30d:	42 0f b6 04 01       	movzbl (%rcx,%r8,1),%eax
 312:	84 c0                	test   %al,%al
 314:	74 0f                	je     0x325
 316:	a8 80                	test   $0x80,%al
 318:	75 3d                	jne    0x357
 31a:	41 ff c0             	inc    %r8d
 31d:	41 83 f8 1f          	cmp    $0x1f,%r8d
 321:	72 ea                	jb     0x30d
 323:	eb 32                	jmp    0x357
 325:	42 80 7c 01 ff 20    	cmpb   $0x20,-0x1(%rcx,%r8,1)
 32b:	74 2a                	je     0x357
 32d:	80 3a 20             	cmpb   $0x20,(%rdx)
 330:	74 25                	je     0x357
 332:	45 31 c9             	xor    %r9d,%r9d
 335:	42 0f b6 04 0a       	movzbl (%rdx,%r9,1),%eax
 33a:	84 c0                	test   %al,%al
 33c:	74 12                	je     0x350
 33e:	a8 80                	test   $0x80,%al
 340:	75 15                	jne    0x357
 342:	41 ff c1             	inc    %r9d
 345:	43 8d 04 08          	lea    (%r8,%r9,1),%eax
 349:	83 f8 1f             	cmp    $0x1f,%eax
 34c:	76 e7                	jbe    0x335
 34e:	eb 07                	jmp    0x357
 350:	66 42 c7 04 01 20 00 	movw   $0x20,(%rcx,%r8,1)
 357:	e9 00 00 00 00       	jmp    0x35c
	...
 380:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 387:	00 00 00 
 38a:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
 38f:	75 05                	jne    0x396
 391:	e9 6a ff ff ff       	jmp    0x300
 396:	e9 bc ff ff ff       	jmp    0x357
	...
