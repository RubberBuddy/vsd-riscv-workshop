
filter_bench.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	ffff0797          	auipc	a5,0xffff0
   100b4:	f5078793          	addi	a5,a5,-176 # 0 <register_fini-0x100b0>
   100b8:	00078863          	beqz	a5,100c8 <register_fini+0x18>
   100bc:	00001517          	auipc	a0,0x1
   100c0:	8f450513          	addi	a0,a0,-1804 # 109b0 <__libc_fini_array>
   100c4:	0a50006f          	j	10968 <atexit>
   100c8:	00008067          	ret

00000000000100cc <_start>:
   100cc:	00014197          	auipc	gp,0x14
   100d0:	f8418193          	addi	gp,gp,-124 # 24050 <__global_pointer$>
   100d4:	77018513          	addi	a0,gp,1904 # 247c0 <_edata>
   100d8:	00014617          	auipc	a2,0x14
   100dc:	77860613          	addi	a2,a2,1912 # 24850 <__BSS_END__>
   100e0:	40a60633          	sub	a2,a2,a0
   100e4:	00000593          	li	a1,0
   100e8:	1b9000ef          	jal	ra,10aa0 <memset>
   100ec:	00001517          	auipc	a0,0x1
   100f0:	8c450513          	addi	a0,a0,-1852 # 109b0 <__libc_fini_array>
   100f4:	075000ef          	jal	ra,10968 <atexit>
   100f8:	115000ef          	jal	ra,10a0c <__libc_init_array>
   100fc:	00012503          	lw	a0,0(sp)
   10100:	00810593          	addi	a1,sp,8
   10104:	00000613          	li	a2,0
   10108:	07c000ef          	jal	ra,10184 <main>
   1010c:	0710006f          	j	1097c <exit>

0000000000010110 <__do_global_dtors_aux>:
   10110:	7981c783          	lbu	a5,1944(gp) # 247e8 <completed.5468>
   10114:	04079463          	bnez	a5,1015c <__do_global_dtors_aux+0x4c>
   10118:	ffff0797          	auipc	a5,0xffff0
   1011c:	ee878793          	addi	a5,a5,-280 # 0 <register_fini-0x100b0>
   10120:	02078863          	beqz	a5,10150 <__do_global_dtors_aux+0x40>
   10124:	ff010113          	addi	sp,sp,-16
   10128:	00013517          	auipc	a0,0x13
   1012c:	52450513          	addi	a0,a0,1316 # 2364c <__FRAME_END__>
   10130:	00113423          	sd	ra,8(sp)
   10134:	00000097          	auipc	ra,0x0
   10138:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   1013c:	00813083          	ld	ra,8(sp)
   10140:	00100793          	li	a5,1
   10144:	78f18c23          	sb	a5,1944(gp) # 247e8 <completed.5468>
   10148:	01010113          	addi	sp,sp,16
   1014c:	00008067          	ret
   10150:	00100793          	li	a5,1
   10154:	78f18c23          	sb	a5,1944(gp) # 247e8 <completed.5468>
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	ffff0797          	auipc	a5,0xffff0
   10164:	ea078793          	addi	a5,a5,-352 # 0 <register_fini-0x100b0>
   10168:	00078c63          	beqz	a5,10180 <frame_dummy+0x20>
   1016c:	7a018593          	addi	a1,gp,1952 # 247f0 <object.5473>
   10170:	00013517          	auipc	a0,0x13
   10174:	4dc50513          	addi	a0,a0,1244 # 2364c <__FRAME_END__>
   10178:	00000317          	auipc	t1,0x0
   1017c:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   10180:	00008067          	ret

0000000000010184 <main>:
   10184:	f9010113          	addi	sp,sp,-112
   10188:	06113423          	sd	ra,104(sp)
   1018c:	06813023          	sd	s0,96(sp)
   10190:	04913c23          	sd	s1,88(sp)
   10194:	05213823          	sd	s2,80(sp)
   10198:	05313423          	sd	s3,72(sp)
   1019c:	05413023          	sd	s4,64(sp)
   101a0:	03513c23          	sd	s5,56(sp)
   101a4:	000217b7          	lui	a5,0x21
   101a8:	7f078793          	addi	a5,a5,2032 # 217f0 <__muldi3+0x24>
   101ac:	0007b583          	ld	a1,0(a5)
   101b0:	0087b603          	ld	a2,8(a5)
   101b4:	0107b683          	ld	a3,16(a5)
   101b8:	0187b703          	ld	a4,24(a5)
   101bc:	0207b783          	ld	a5,32(a5)
   101c0:	00b13423          	sd	a1,8(sp)
   101c4:	00c13823          	sd	a2,16(sp)
   101c8:	00d13c23          	sd	a3,24(sp)
   101cc:	02e13023          	sd	a4,32(sp)
   101d0:	02f13423          	sd	a5,40(sp)
   101d4:	c0002af3          	rdcycle	s5
   101d8:	c0202a73          	rdinstret	s4
   101dc:	00810413          	addi	s0,sp,8
   101e0:	00000493          	li	s1,0
   101e4:	000229b7          	lui	s3,0x22
   101e8:	00800913          	li	s2,8
   101ec:	00042783          	lw	a5,0(s0)
   101f0:	00442503          	lw	a0,4(s0)
   101f4:	00a787bb          	addw	a5,a5,a0
   101f8:	00842503          	lw	a0,8(s0)
   101fc:	00300593          	li	a1,3
   10200:	00f5053b          	addw	a0,a0,a5
   10204:	668000ef          	jal	ra,1086c <__divdi3>
   10208:	0005051b          	sext.w	a0,a0
   1020c:	378000ef          	jal	ra,10584 <__floatsisf>
   10210:	574000ef          	jal	ra,10784 <__extendsfdf2>
   10214:	00050613          	mv	a2,a0
   10218:	00048593          	mv	a1,s1
   1021c:	81898513          	addi	a0,s3,-2024 # 21818 <__muldi3+0x4c>
   10220:	1a1000ef          	jal	ra,10bc0 <printf>
   10224:	0014849b          	addiw	s1,s1,1
   10228:	00440413          	addi	s0,s0,4
   1022c:	fd2490e3          	bne	s1,s2,101ec <main+0x68>
   10230:	c0002473          	rdcycle	s0
   10234:	c02024f3          	rdinstret	s1
   10238:	41540433          	sub	s0,s0,s5
   1023c:	414484b3          	sub	s1,s1,s4
   10240:	00040593          	mv	a1,s0
   10244:	00022537          	lui	a0,0x22
   10248:	83050513          	addi	a0,a0,-2000 # 21830 <__muldi3+0x64>
   1024c:	175000ef          	jal	ra,10bc0 <printf>
   10250:	00048593          	mv	a1,s1
   10254:	00022537          	lui	a0,0x22
   10258:	85050513          	addi	a0,a0,-1968 # 21850 <__muldi3+0x84>
   1025c:	165000ef          	jal	ra,10bc0 <printf>
   10260:	00048513          	mv	a0,s1
   10264:	448000ef          	jal	ra,106ac <__floatundisf>
   10268:	00050493          	mv	s1,a0
   1026c:	00040513          	mv	a0,s0
   10270:	43c000ef          	jal	ra,106ac <__floatundisf>
   10274:	00050593          	mv	a1,a0
   10278:	00048513          	mv	a0,s1
   1027c:	040000ef          	jal	ra,102bc <__divsf3>
   10280:	504000ef          	jal	ra,10784 <__extendsfdf2>
   10284:	00050593          	mv	a1,a0
   10288:	00022537          	lui	a0,0x22
   1028c:	87850513          	addi	a0,a0,-1928 # 21878 <__muldi3+0xac>
   10290:	131000ef          	jal	ra,10bc0 <printf>
   10294:	00000513          	li	a0,0
   10298:	06813083          	ld	ra,104(sp)
   1029c:	06013403          	ld	s0,96(sp)
   102a0:	05813483          	ld	s1,88(sp)
   102a4:	05013903          	ld	s2,80(sp)
   102a8:	04813983          	ld	s3,72(sp)
   102ac:	04013a03          	ld	s4,64(sp)
   102b0:	03813a83          	ld	s5,56(sp)
   102b4:	07010113          	addi	sp,sp,112
   102b8:	00008067          	ret

00000000000102bc <__divsf3>:
   102bc:	fc010113          	addi	sp,sp,-64
   102c0:	02913423          	sd	s1,40(sp)
   102c4:	0175549b          	srliw	s1,a0,0x17
   102c8:	03213023          	sd	s2,32(sp)
   102cc:	01313c23          	sd	s3,24(sp)
   102d0:	01513423          	sd	s5,8(sp)
   102d4:	02951913          	slli	s2,a0,0x29
   102d8:	02113c23          	sd	ra,56(sp)
   102dc:	02813823          	sd	s0,48(sp)
   102e0:	01413823          	sd	s4,16(sp)
   102e4:	01613023          	sd	s6,0(sp)
   102e8:	0ff4f493          	andi	s1,s1,255
   102ec:	00058a93          	mv	s5,a1
   102f0:	02995913          	srli	s2,s2,0x29
   102f4:	01f5599b          	srliw	s3,a0,0x1f
   102f8:	08048663          	beqz	s1,10384 <__divsf3+0xc8>
   102fc:	0ff00793          	li	a5,255
   10300:	0af48463          	beq	s1,a5,103a8 <__divsf3+0xec>
   10304:	00391913          	slli	s2,s2,0x3
   10308:	040007b7          	lui	a5,0x4000
   1030c:	00f96933          	or	s2,s2,a5
   10310:	f8148493          	addi	s1,s1,-127
   10314:	00000b13          	li	s6,0
   10318:	017ad79b          	srliw	a5,s5,0x17
   1031c:	029a9413          	slli	s0,s5,0x29
   10320:	0ff7f793          	andi	a5,a5,255
   10324:	02945413          	srli	s0,s0,0x29
   10328:	01fada9b          	srliw	s5,s5,0x1f
   1032c:	08078e63          	beqz	a5,103c8 <__divsf3+0x10c>
   10330:	0ff00713          	li	a4,255
   10334:	0ae78c63          	beq	a5,a4,103ec <__divsf3+0x130>
   10338:	00341413          	slli	s0,s0,0x3
   1033c:	04000737          	lui	a4,0x4000
   10340:	00e46433          	or	s0,s0,a4
   10344:	f8178793          	addi	a5,a5,-127 # 3ffff81 <__BSS_END__+0x3fdb731>
   10348:	00000713          	li	a4,0
   1034c:	40f484b3          	sub	s1,s1,a5
   10350:	002b1793          	slli	a5,s6,0x2
   10354:	00e7e7b3          	or	a5,a5,a4
   10358:	fff78793          	addi	a5,a5,-1
   1035c:	00e00693          	li	a3,14
   10360:	0159ca33          	xor	s4,s3,s5
   10364:	0af6e463          	bltu	a3,a5,1040c <__divsf3+0x150>
   10368:	00011697          	auipc	a3,0x11
   1036c:	53468693          	addi	a3,a3,1332 # 2189c <__muldi3+0xd0>
   10370:	00279793          	slli	a5,a5,0x2
   10374:	00d787b3          	add	a5,a5,a3
   10378:	0007a783          	lw	a5,0(a5)
   1037c:	00d787b3          	add	a5,a5,a3
   10380:	00078067          	jr	a5
   10384:	02090c63          	beqz	s2,103bc <__divsf3+0x100>
   10388:	00090513          	mv	a0,s2
   1038c:	5a0000ef          	jal	ra,1092c <__clzdi2>
   10390:	0005051b          	sext.w	a0,a0
   10394:	fdb5079b          	addiw	a5,a0,-37
   10398:	faa00493          	li	s1,-86
   1039c:	00f91933          	sll	s2,s2,a5
   103a0:	40a484b3          	sub	s1,s1,a0
   103a4:	f71ff06f          	j	10314 <__divsf3+0x58>
   103a8:	0ff00493          	li	s1,255
   103ac:	00200b13          	li	s6,2
   103b0:	f60904e3          	beqz	s2,10318 <__divsf3+0x5c>
   103b4:	00300b13          	li	s6,3
   103b8:	f61ff06f          	j	10318 <__divsf3+0x5c>
   103bc:	00000493          	li	s1,0
   103c0:	00100b13          	li	s6,1
   103c4:	f55ff06f          	j	10318 <__divsf3+0x5c>
   103c8:	02040c63          	beqz	s0,10400 <__divsf3+0x144>
   103cc:	00040513          	mv	a0,s0
   103d0:	55c000ef          	jal	ra,1092c <__clzdi2>
   103d4:	0005051b          	sext.w	a0,a0
   103d8:	fdb5079b          	addiw	a5,a0,-37
   103dc:	00f41433          	sll	s0,s0,a5
   103e0:	faa00793          	li	a5,-86
   103e4:	40a787b3          	sub	a5,a5,a0
   103e8:	f61ff06f          	j	10348 <__divsf3+0x8c>
   103ec:	0ff00793          	li	a5,255
   103f0:	00200713          	li	a4,2
   103f4:	f4040ce3          	beqz	s0,1034c <__divsf3+0x90>
   103f8:	00300713          	li	a4,3
   103fc:	f51ff06f          	j	1034c <__divsf3+0x90>
   10400:	00000793          	li	a5,0
   10404:	00100713          	li	a4,1
   10408:	f45ff06f          	j	1034c <__divsf3+0x90>
   1040c:	01a00793          	li	a5,26
   10410:	00897663          	bgeu	s2,s0,1041c <__divsf3+0x160>
   10414:	fff48493          	addi	s1,s1,-1
   10418:	01b00793          	li	a5,27
   1041c:	00f91933          	sll	s2,s2,a5
   10420:	00040593          	mv	a1,s0
   10424:	00090513          	mv	a0,s2
   10428:	494000ef          	jal	ra,108bc <__umoddi3>
   1042c:	00a039b3          	snez	s3,a0
   10430:	00040593          	mv	a1,s0
   10434:	00090513          	mv	a0,s2
   10438:	43c000ef          	jal	ra,10874 <__udivdi3>
   1043c:	00a9e433          	or	s0,s3,a0
   10440:	07f48793          	addi	a5,s1,127
   10444:	0cf05a63          	blez	a5,10518 <__divsf3+0x25c>
   10448:	00747713          	andi	a4,s0,7
   1044c:	00070a63          	beqz	a4,10460 <__divsf3+0x1a4>
   10450:	00f47713          	andi	a4,s0,15
   10454:	00400693          	li	a3,4
   10458:	00d70463          	beq	a4,a3,10460 <__divsf3+0x1a4>
   1045c:	00440413          	addi	s0,s0,4
   10460:	02441713          	slli	a4,s0,0x24
   10464:	00075a63          	bgez	a4,10478 <__divsf3+0x1bc>
   10468:	f80007b7          	lui	a5,0xf8000
   1046c:	fff78793          	addi	a5,a5,-1 # fffffffff7ffffff <__BSS_END__+0xfffffffff7fdb7af>
   10470:	00f47433          	and	s0,s0,a5
   10474:	08048793          	addi	a5,s1,128
   10478:	0fe00713          	li	a4,254
   1047c:	00345413          	srli	s0,s0,0x3
   10480:	02f75e63          	bge	a4,a5,104bc <__divsf3+0x200>
   10484:	00000413          	li	s0,0
   10488:	0ff00793          	li	a5,255
   1048c:	0300006f          	j	104bc <__divsf3+0x200>
   10490:	00098a13          	mv	s4,s3
   10494:	00090413          	mv	s0,s2
   10498:	000b0713          	mv	a4,s6
   1049c:	00200793          	li	a5,2
   104a0:	fef702e3          	beq	a4,a5,10484 <__divsf3+0x1c8>
   104a4:	00300793          	li	a5,3
   104a8:	0cf70663          	beq	a4,a5,10574 <__divsf3+0x2b8>
   104ac:	00100793          	li	a5,1
   104b0:	f8f718e3          	bne	a4,a5,10440 <__divsf3+0x184>
   104b4:	00000413          	li	s0,0
   104b8:	00000793          	li	a5,0
   104bc:	02941413          	slli	s0,s0,0x29
   104c0:	0ff7f793          	andi	a5,a5,255
   104c4:	0177979b          	slliw	a5,a5,0x17
   104c8:	02945413          	srli	s0,s0,0x29
   104cc:	01fa151b          	slliw	a0,s4,0x1f
   104d0:	00f46433          	or	s0,s0,a5
   104d4:	00a46533          	or	a0,s0,a0
   104d8:	03813083          	ld	ra,56(sp)
   104dc:	03013403          	ld	s0,48(sp)
   104e0:	02813483          	ld	s1,40(sp)
   104e4:	02013903          	ld	s2,32(sp)
   104e8:	01813983          	ld	s3,24(sp)
   104ec:	01013a03          	ld	s4,16(sp)
   104f0:	00813a83          	ld	s5,8(sp)
   104f4:	00013b03          	ld	s6,0(sp)
   104f8:	04010113          	addi	sp,sp,64
   104fc:	00008067          	ret
   10500:	000a8a13          	mv	s4,s5
   10504:	f99ff06f          	j	1049c <__divsf3+0x1e0>
   10508:	00400437          	lui	s0,0x400
   1050c:	00000a13          	li	s4,0
   10510:	00300713          	li	a4,3
   10514:	f89ff06f          	j	1049c <__divsf3+0x1e0>
   10518:	00100713          	li	a4,1
   1051c:	40f707b3          	sub	a5,a4,a5
   10520:	01b00713          	li	a4,27
   10524:	f8f748e3          	blt	a4,a5,104b4 <__divsf3+0x1f8>
   10528:	0007871b          	sext.w	a4,a5
   1052c:	04000693          	li	a3,64
   10530:	00e457b3          	srl	a5,s0,a4
   10534:	40e6873b          	subw	a4,a3,a4
   10538:	00e41433          	sll	s0,s0,a4
   1053c:	00803433          	snez	s0,s0
   10540:	0087e433          	or	s0,a5,s0
   10544:	00747793          	andi	a5,s0,7
   10548:	00078a63          	beqz	a5,1055c <__divsf3+0x2a0>
   1054c:	00f47793          	andi	a5,s0,15
   10550:	00400713          	li	a4,4
   10554:	00e78463          	beq	a5,a4,1055c <__divsf3+0x2a0>
   10558:	00440413          	addi	s0,s0,4 # 400004 <__BSS_END__+0x3db7b4>
   1055c:	02541793          	slli	a5,s0,0x25
   10560:	00345413          	srli	s0,s0,0x3
   10564:	f407dae3          	bgez	a5,104b8 <__divsf3+0x1fc>
   10568:	00000413          	li	s0,0
   1056c:	00100793          	li	a5,1
   10570:	f4dff06f          	j	104bc <__divsf3+0x200>
   10574:	00400437          	lui	s0,0x400
   10578:	0ff00793          	li	a5,255
   1057c:	00000a13          	li	s4,0
   10580:	f3dff06f          	j	104bc <__divsf3+0x200>

0000000000010584 <__floatsisf>:
   10584:	fe010113          	addi	sp,sp,-32
   10588:	00113c23          	sd	ra,24(sp)
   1058c:	00813823          	sd	s0,16(sp)
   10590:	00913423          	sd	s1,8(sp)
   10594:	01213023          	sd	s2,0(sp)
   10598:	10050263          	beqz	a0,1069c <__floatsisf+0x118>
   1059c:	0005049b          	sext.w	s1,a0
   105a0:	03f55913          	srli	s2,a0,0x3f
   105a4:	00055463          	bgez	a0,105ac <__floatsisf+0x28>
   105a8:	409004bb          	negw	s1,s1
   105ac:	02049413          	slli	s0,s1,0x20
   105b0:	02045413          	srli	s0,s0,0x20
   105b4:	00040513          	mv	a0,s0
   105b8:	374000ef          	jal	ra,1092c <__clzdi2>
   105bc:	0be00793          	li	a5,190
   105c0:	40a787bb          	subw	a5,a5,a0
   105c4:	09600713          	li	a4,150
   105c8:	04f74263          	blt	a4,a5,1060c <__floatsisf+0x88>
   105cc:	00e78663          	beq	a5,a4,105d8 <__floatsisf+0x54>
   105d0:	40f7053b          	subw	a0,a4,a5
   105d4:	00a41433          	sll	s0,s0,a0
   105d8:	02941413          	slli	s0,s0,0x29
   105dc:	0ff7f793          	andi	a5,a5,255
   105e0:	0177979b          	slliw	a5,a5,0x17
   105e4:	02945413          	srli	s0,s0,0x29
   105e8:	01f9151b          	slliw	a0,s2,0x1f
   105ec:	00f46433          	or	s0,s0,a5
   105f0:	00a46533          	or	a0,s0,a0
   105f4:	01813083          	ld	ra,24(sp)
   105f8:	01013403          	ld	s0,16(sp)
   105fc:	00813483          	ld	s1,8(sp)
   10600:	00013903          	ld	s2,0(sp)
   10604:	02010113          	addi	sp,sp,32
   10608:	00008067          	ret
   1060c:	09900713          	li	a4,153
   10610:	02f75463          	bge	a4,a5,10638 <__floatsisf+0xb4>
   10614:	0007861b          	sext.w	a2,a5
   10618:	0b900693          	li	a3,185
   1061c:	f676071b          	addiw	a4,a2,-153
   10620:	40c686bb          	subw	a3,a3,a2
   10624:	00e4d73b          	srlw	a4,s1,a4
   10628:	00d494bb          	sllw	s1,s1,a3
   1062c:	009034b3          	snez	s1,s1
   10630:	009764b3          	or	s1,a4,s1
   10634:	0004849b          	sext.w	s1,s1
   10638:	09900713          	li	a4,153
   1063c:	02049493          	slli	s1,s1,0x20
   10640:	40f70733          	sub	a4,a4,a5
   10644:	0204d493          	srli	s1,s1,0x20
   10648:	00e05863          	blez	a4,10658 <__floatsisf+0xd4>
   1064c:	09900713          	li	a4,153
   10650:	40f7073b          	subw	a4,a4,a5
   10654:	00e494b3          	sll	s1,s1,a4
   10658:	fc000437          	lui	s0,0xfc000
   1065c:	fff40413          	addi	s0,s0,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfdb7af>
   10660:	0074f713          	andi	a4,s1,7
   10664:	0084f433          	and	s0,s1,s0
   10668:	00070a63          	beqz	a4,1067c <__floatsisf+0xf8>
   1066c:	00f4f493          	andi	s1,s1,15
   10670:	00400713          	li	a4,4
   10674:	00e48463          	beq	s1,a4,1067c <__floatsisf+0xf8>
   10678:	00440413          	addi	s0,s0,4
   1067c:	02541713          	slli	a4,s0,0x25
   10680:	00075a63          	bgez	a4,10694 <__floatsisf+0x110>
   10684:	fc000737          	lui	a4,0xfc000
   10688:	fff70713          	addi	a4,a4,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfdb7af>
   1068c:	00e47433          	and	s0,s0,a4
   10690:	00178793          	addi	a5,a5,1
   10694:	00345413          	srli	s0,s0,0x3
   10698:	f41ff06f          	j	105d8 <__floatsisf+0x54>
   1069c:	00000413          	li	s0,0
   106a0:	00000793          	li	a5,0
   106a4:	00000913          	li	s2,0
   106a8:	f31ff06f          	j	105d8 <__floatsisf+0x54>

00000000000106ac <__floatundisf>:
   106ac:	ff010113          	addi	sp,sp,-16
   106b0:	00813023          	sd	s0,0(sp)
   106b4:	00113423          	sd	ra,8(sp)
   106b8:	00050413          	mv	s0,a0
   106bc:	00000793          	li	a5,0
   106c0:	02050263          	beqz	a0,106e4 <__floatundisf+0x38>
   106c4:	268000ef          	jal	ra,1092c <__clzdi2>
   106c8:	0be00793          	li	a5,190
   106cc:	40a787bb          	subw	a5,a5,a0
   106d0:	09600713          	li	a4,150
   106d4:	02f74a63          	blt	a4,a5,10708 <__floatundisf+0x5c>
   106d8:	00e78663          	beq	a5,a4,106e4 <__floatundisf+0x38>
   106dc:	40f7053b          	subw	a0,a4,a5
   106e0:	00a41433          	sll	s0,s0,a0
   106e4:	02941413          	slli	s0,s0,0x29
   106e8:	0ff7f513          	andi	a0,a5,255
   106ec:	02945413          	srli	s0,s0,0x29
   106f0:	0175151b          	slliw	a0,a0,0x17
   106f4:	00856533          	or	a0,a0,s0
   106f8:	00813083          	ld	ra,8(sp)
   106fc:	00013403          	ld	s0,0(sp)
   10700:	01010113          	addi	sp,sp,16
   10704:	00008067          	ret
   10708:	09900713          	li	a4,153
   1070c:	06f75263          	bge	a4,a5,10770 <__floatundisf+0xc4>
   10710:	0d900713          	li	a4,217
   10714:	40f7073b          	subw	a4,a4,a5
   10718:	00e41733          	sll	a4,s0,a4
   1071c:	f677851b          	addiw	a0,a5,-153
   10720:	00e03733          	snez	a4,a4
   10724:	00a45433          	srl	s0,s0,a0
   10728:	00876433          	or	s0,a4,s0
   1072c:	fc000737          	lui	a4,0xfc000
   10730:	fff70713          	addi	a4,a4,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfdb7af>
   10734:	00747693          	andi	a3,s0,7
   10738:	00e47733          	and	a4,s0,a4
   1073c:	00068a63          	beqz	a3,10750 <__floatundisf+0xa4>
   10740:	00f47413          	andi	s0,s0,15
   10744:	00400693          	li	a3,4
   10748:	00d40463          	beq	s0,a3,10750 <__floatundisf+0xa4>
   1074c:	00470713          	addi	a4,a4,4
   10750:	02571693          	slli	a3,a4,0x25
   10754:	0006da63          	bgez	a3,10768 <__floatundisf+0xbc>
   10758:	fc0006b7          	lui	a3,0xfc000
   1075c:	fff68693          	addi	a3,a3,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfdb7af>
   10760:	00d77733          	and	a4,a4,a3
   10764:	00178793          	addi	a5,a5,1
   10768:	00375413          	srli	s0,a4,0x3
   1076c:	f79ff06f          	j	106e4 <__floatundisf+0x38>
   10770:	fae78ee3          	beq	a5,a4,1072c <__floatundisf+0x80>
   10774:	09900713          	li	a4,153
   10778:	40f7053b          	subw	a0,a4,a5
   1077c:	00a41433          	sll	s0,s0,a0
   10780:	fadff06f          	j	1072c <__floatundisf+0x80>

0000000000010784 <__extendsfdf2>:
   10784:	0175579b          	srliw	a5,a0,0x17
   10788:	fe010113          	addi	sp,sp,-32
   1078c:	0ff7f793          	andi	a5,a5,255
   10790:	00813823          	sd	s0,16(sp)
   10794:	00913423          	sd	s1,8(sp)
   10798:	02951413          	slli	s0,a0,0x29
   1079c:	01f5549b          	srliw	s1,a0,0x1f
   107a0:	00178513          	addi	a0,a5,1
   107a4:	00113c23          	sd	ra,24(sp)
   107a8:	0fe57513          	andi	a0,a0,254
   107ac:	02945413          	srli	s0,s0,0x29
   107b0:	02050e63          	beqz	a0,107ec <__extendsfdf2+0x68>
   107b4:	38078513          	addi	a0,a5,896
   107b8:	01d41413          	slli	s0,s0,0x1d
   107bc:	7ff57513          	andi	a0,a0,2047
   107c0:	00c41413          	slli	s0,s0,0xc
   107c4:	03451793          	slli	a5,a0,0x34
   107c8:	00c45413          	srli	s0,s0,0xc
   107cc:	03f49513          	slli	a0,s1,0x3f
   107d0:	00f46433          	or	s0,s0,a5
   107d4:	00a46533          	or	a0,s0,a0
   107d8:	01813083          	ld	ra,24(sp)
   107dc:	01013403          	ld	s0,16(sp)
   107e0:	00813483          	ld	s1,8(sp)
   107e4:	02010113          	addi	sp,sp,32
   107e8:	00008067          	ret
   107ec:	02079263          	bnez	a5,10810 <__extendsfdf2+0x8c>
   107f0:	fc0406e3          	beqz	s0,107bc <__extendsfdf2+0x38>
   107f4:	00040513          	mv	a0,s0
   107f8:	134000ef          	jal	ra,1092c <__clzdi2>
   107fc:	ff55079b          	addiw	a5,a0,-11
   10800:	00f41433          	sll	s0,s0,a5
   10804:	3a900793          	li	a5,937
   10808:	40a7853b          	subw	a0,a5,a0
   1080c:	fb1ff06f          	j	107bc <__extendsfdf2+0x38>
   10810:	7ff00513          	li	a0,2047
   10814:	fa0404e3          	beqz	s0,107bc <__extendsfdf2+0x38>
   10818:	00100793          	li	a5,1
   1081c:	01d41413          	slli	s0,s0,0x1d
   10820:	03379793          	slli	a5,a5,0x33
   10824:	00f46433          	or	s0,s0,a5
   10828:	f95ff06f          	j	107bc <__extendsfdf2+0x38>

000000000001082c <__udivsi3>:
   1082c:	02051513          	slli	a0,a0,0x20
   10830:	02059593          	slli	a1,a1,0x20
   10834:	00008293          	mv	t0,ra
   10838:	03c000ef          	jal	ra,10874 <__udivdi3>
   1083c:	0005051b          	sext.w	a0,a0
   10840:	00028067          	jr	t0

0000000000010844 <__umodsi3>:
   10844:	02051513          	slli	a0,a0,0x20
   10848:	02059593          	slli	a1,a1,0x20
   1084c:	02055513          	srli	a0,a0,0x20
   10850:	0205d593          	srli	a1,a1,0x20
   10854:	00008293          	mv	t0,ra
   10858:	01c000ef          	jal	ra,10874 <__udivdi3>
   1085c:	0005851b          	sext.w	a0,a1
   10860:	00028067          	jr	t0

0000000000010864 <__divsi3>:
   10864:	fff00293          	li	t0,-1
   10868:	0a558c63          	beq	a1,t0,10920 <__moddi3+0x30>

000000000001086c <__divdi3>:
   1086c:	06054063          	bltz	a0,108cc <__umoddi3+0x10>
   10870:	0605c663          	bltz	a1,108dc <__umoddi3+0x20>

0000000000010874 <__udivdi3>:
   10874:	00058613          	mv	a2,a1
   10878:	00050593          	mv	a1,a0
   1087c:	fff00513          	li	a0,-1
   10880:	02060c63          	beqz	a2,108b8 <__udivdi3+0x44>
   10884:	00100693          	li	a3,1
   10888:	00b67a63          	bgeu	a2,a1,1089c <__udivdi3+0x28>
   1088c:	00c05863          	blez	a2,1089c <__udivdi3+0x28>
   10890:	00161613          	slli	a2,a2,0x1
   10894:	00169693          	slli	a3,a3,0x1
   10898:	feb66ae3          	bltu	a2,a1,1088c <__udivdi3+0x18>
   1089c:	00000513          	li	a0,0
   108a0:	00c5e663          	bltu	a1,a2,108ac <__udivdi3+0x38>
   108a4:	40c585b3          	sub	a1,a1,a2
   108a8:	00d56533          	or	a0,a0,a3
   108ac:	0016d693          	srli	a3,a3,0x1
   108b0:	00165613          	srli	a2,a2,0x1
   108b4:	fe0696e3          	bnez	a3,108a0 <__udivdi3+0x2c>
   108b8:	00008067          	ret

00000000000108bc <__umoddi3>:
   108bc:	00008293          	mv	t0,ra
   108c0:	fb5ff0ef          	jal	ra,10874 <__udivdi3>
   108c4:	00058513          	mv	a0,a1
   108c8:	00028067          	jr	t0
   108cc:	40a00533          	neg	a0,a0
   108d0:	0005d863          	bgez	a1,108e0 <__umoddi3+0x24>
   108d4:	40b005b3          	neg	a1,a1
   108d8:	f9dff06f          	j	10874 <__udivdi3>
   108dc:	40b005b3          	neg	a1,a1
   108e0:	00008293          	mv	t0,ra
   108e4:	f91ff0ef          	jal	ra,10874 <__udivdi3>
   108e8:	40a00533          	neg	a0,a0
   108ec:	00028067          	jr	t0

00000000000108f0 <__moddi3>:
   108f0:	00008293          	mv	t0,ra
   108f4:	0005ca63          	bltz	a1,10908 <__moddi3+0x18>
   108f8:	00054c63          	bltz	a0,10910 <__moddi3+0x20>
   108fc:	f79ff0ef          	jal	ra,10874 <__udivdi3>
   10900:	00058513          	mv	a0,a1
   10904:	00028067          	jr	t0
   10908:	40b005b3          	neg	a1,a1
   1090c:	fe0558e3          	bgez	a0,108fc <__moddi3+0xc>
   10910:	40a00533          	neg	a0,a0
   10914:	f61ff0ef          	jal	ra,10874 <__udivdi3>
   10918:	40b00533          	neg	a0,a1
   1091c:	00028067          	jr	t0
   10920:	01f29293          	slli	t0,t0,0x1f
   10924:	f45514e3          	bne	a0,t0,1086c <__divdi3>
   10928:	00008067          	ret

000000000001092c <__clzdi2>:
   1092c:	03800793          	li	a5,56
   10930:	00f55733          	srl	a4,a0,a5
   10934:	0ff77713          	andi	a4,a4,255
   10938:	00071663          	bnez	a4,10944 <__clzdi2+0x18>
   1093c:	ff878793          	addi	a5,a5,-8
   10940:	fe0798e3          	bnez	a5,10930 <__clzdi2+0x4>
   10944:	04000713          	li	a4,64
   10948:	40f70733          	sub	a4,a4,a5
   1094c:	00f557b3          	srl	a5,a0,a5
   10950:	00011517          	auipc	a0,0x11
   10954:	f8850513          	addi	a0,a0,-120 # 218d8 <__clz_tab>
   10958:	00f507b3          	add	a5,a0,a5
   1095c:	0007c503          	lbu	a0,0(a5)
   10960:	40a7053b          	subw	a0,a4,a0
   10964:	00008067          	ret

0000000000010968 <atexit>:
   10968:	00050593          	mv	a1,a0
   1096c:	00000693          	li	a3,0
   10970:	00000613          	li	a2,0
   10974:	00000513          	li	a0,0
   10978:	4390206f          	j	135b0 <__register_exitproc>

000000000001097c <exit>:
   1097c:	ff010113          	addi	sp,sp,-16
   10980:	00000593          	li	a1,0
   10984:	00813023          	sd	s0,0(sp)
   10988:	00113423          	sd	ra,8(sp)
   1098c:	00050413          	mv	s0,a0
   10990:	4cd020ef          	jal	ra,1365c <__call_exitprocs>
   10994:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   10998:	0007b503          	ld	a0,0(a5)
   1099c:	05853783          	ld	a5,88(a0)
   109a0:	00078463          	beqz	a5,109a8 <exit+0x2c>
   109a4:	000780e7          	jalr	a5
   109a8:	00040513          	mv	a0,s0
   109ac:	7410e0ef          	jal	ra,1f8ec <_exit>

00000000000109b0 <__libc_fini_array>:
   109b0:	fe010113          	addi	sp,sp,-32
   109b4:	00813823          	sd	s0,16(sp)
   109b8:	00013797          	auipc	a5,0x13
   109bc:	cb078793          	addi	a5,a5,-848 # 23668 <__fini_array_end>
   109c0:	00013417          	auipc	s0,0x13
   109c4:	ca040413          	addi	s0,s0,-864 # 23660 <__init_array_end>
   109c8:	408787b3          	sub	a5,a5,s0
   109cc:	00913423          	sd	s1,8(sp)
   109d0:	00113c23          	sd	ra,24(sp)
   109d4:	4037d493          	srai	s1,a5,0x3
   109d8:	02048063          	beqz	s1,109f8 <__libc_fini_array+0x48>
   109dc:	ff878793          	addi	a5,a5,-8
   109e0:	00878433          	add	s0,a5,s0
   109e4:	00043783          	ld	a5,0(s0)
   109e8:	fff48493          	addi	s1,s1,-1
   109ec:	ff840413          	addi	s0,s0,-8
   109f0:	000780e7          	jalr	a5
   109f4:	fe0498e3          	bnez	s1,109e4 <__libc_fini_array+0x34>
   109f8:	01813083          	ld	ra,24(sp)
   109fc:	01013403          	ld	s0,16(sp)
   10a00:	00813483          	ld	s1,8(sp)
   10a04:	02010113          	addi	sp,sp,32
   10a08:	00008067          	ret

0000000000010a0c <__libc_init_array>:
   10a0c:	fe010113          	addi	sp,sp,-32
   10a10:	00813823          	sd	s0,16(sp)
   10a14:	01213023          	sd	s2,0(sp)
   10a18:	00013417          	auipc	s0,0x13
   10a1c:	c3840413          	addi	s0,s0,-968 # 23650 <__init_array_start>
   10a20:	00013917          	auipc	s2,0x13
   10a24:	c3090913          	addi	s2,s2,-976 # 23650 <__init_array_start>
   10a28:	40890933          	sub	s2,s2,s0
   10a2c:	00113c23          	sd	ra,24(sp)
   10a30:	00913423          	sd	s1,8(sp)
   10a34:	40395913          	srai	s2,s2,0x3
   10a38:	00090e63          	beqz	s2,10a54 <__libc_init_array+0x48>
   10a3c:	00000493          	li	s1,0
   10a40:	00043783          	ld	a5,0(s0)
   10a44:	00148493          	addi	s1,s1,1
   10a48:	00840413          	addi	s0,s0,8
   10a4c:	000780e7          	jalr	a5
   10a50:	fe9918e3          	bne	s2,s1,10a40 <__libc_init_array+0x34>
   10a54:	00013417          	auipc	s0,0x13
   10a58:	bfc40413          	addi	s0,s0,-1028 # 23650 <__init_array_start>
   10a5c:	00013917          	auipc	s2,0x13
   10a60:	c0490913          	addi	s2,s2,-1020 # 23660 <__init_array_end>
   10a64:	40890933          	sub	s2,s2,s0
   10a68:	40395913          	srai	s2,s2,0x3
   10a6c:	00090e63          	beqz	s2,10a88 <__libc_init_array+0x7c>
   10a70:	00000493          	li	s1,0
   10a74:	00043783          	ld	a5,0(s0)
   10a78:	00148493          	addi	s1,s1,1
   10a7c:	00840413          	addi	s0,s0,8
   10a80:	000780e7          	jalr	a5
   10a84:	fe9918e3          	bne	s2,s1,10a74 <__libc_init_array+0x68>
   10a88:	01813083          	ld	ra,24(sp)
   10a8c:	01013403          	ld	s0,16(sp)
   10a90:	00813483          	ld	s1,8(sp)
   10a94:	00013903          	ld	s2,0(sp)
   10a98:	02010113          	addi	sp,sp,32
   10a9c:	00008067          	ret

0000000000010aa0 <memset>:
   10aa0:	00f00313          	li	t1,15
   10aa4:	00050713          	mv	a4,a0
   10aa8:	02c37a63          	bgeu	t1,a2,10adc <memset+0x3c>
   10aac:	00f77793          	andi	a5,a4,15
   10ab0:	0a079063          	bnez	a5,10b50 <memset+0xb0>
   10ab4:	06059e63          	bnez	a1,10b30 <memset+0x90>
   10ab8:	ff067693          	andi	a3,a2,-16
   10abc:	00f67613          	andi	a2,a2,15
   10ac0:	00e686b3          	add	a3,a3,a4
   10ac4:	00b73023          	sd	a1,0(a4)
   10ac8:	00b73423          	sd	a1,8(a4)
   10acc:	01070713          	addi	a4,a4,16
   10ad0:	fed76ae3          	bltu	a4,a3,10ac4 <memset+0x24>
   10ad4:	00061463          	bnez	a2,10adc <memset+0x3c>
   10ad8:	00008067          	ret
   10adc:	40c306b3          	sub	a3,t1,a2
   10ae0:	00269693          	slli	a3,a3,0x2
   10ae4:	00000297          	auipc	t0,0x0
   10ae8:	005686b3          	add	a3,a3,t0
   10aec:	00c68067          	jr	12(a3)
   10af0:	00b70723          	sb	a1,14(a4)
   10af4:	00b706a3          	sb	a1,13(a4)
   10af8:	00b70623          	sb	a1,12(a4)
   10afc:	00b705a3          	sb	a1,11(a4)
   10b00:	00b70523          	sb	a1,10(a4)
   10b04:	00b704a3          	sb	a1,9(a4)
   10b08:	00b70423          	sb	a1,8(a4)
   10b0c:	00b703a3          	sb	a1,7(a4)
   10b10:	00b70323          	sb	a1,6(a4)
   10b14:	00b702a3          	sb	a1,5(a4)
   10b18:	00b70223          	sb	a1,4(a4)
   10b1c:	00b701a3          	sb	a1,3(a4)
   10b20:	00b70123          	sb	a1,2(a4)
   10b24:	00b700a3          	sb	a1,1(a4)
   10b28:	00b70023          	sb	a1,0(a4)
   10b2c:	00008067          	ret
   10b30:	0ff5f593          	andi	a1,a1,255
   10b34:	00859693          	slli	a3,a1,0x8
   10b38:	00d5e5b3          	or	a1,a1,a3
   10b3c:	01059693          	slli	a3,a1,0x10
   10b40:	00d5e5b3          	or	a1,a1,a3
   10b44:	02059693          	slli	a3,a1,0x20
   10b48:	00d5e5b3          	or	a1,a1,a3
   10b4c:	f6dff06f          	j	10ab8 <memset+0x18>
   10b50:	00279693          	slli	a3,a5,0x2
   10b54:	00000297          	auipc	t0,0x0
   10b58:	005686b3          	add	a3,a3,t0
   10b5c:	00008293          	mv	t0,ra
   10b60:	f98680e7          	jalr	-104(a3)
   10b64:	00028093          	mv	ra,t0
   10b68:	ff078793          	addi	a5,a5,-16
   10b6c:	40f70733          	sub	a4,a4,a5
   10b70:	00f60633          	add	a2,a2,a5
   10b74:	f6c374e3          	bgeu	t1,a2,10adc <memset+0x3c>
   10b78:	f3dff06f          	j	10ab4 <memset+0x14>

0000000000010b7c <_printf_r>:
   10b7c:	fb010113          	addi	sp,sp,-80
   10b80:	02c13023          	sd	a2,32(sp)
   10b84:	02d13423          	sd	a3,40(sp)
   10b88:	02f13c23          	sd	a5,56(sp)
   10b8c:	02e13823          	sd	a4,48(sp)
   10b90:	05013023          	sd	a6,64(sp)
   10b94:	05113423          	sd	a7,72(sp)
   10b98:	00058613          	mv	a2,a1
   10b9c:	01053583          	ld	a1,16(a0)
   10ba0:	02010793          	addi	a5,sp,32
   10ba4:	00078693          	mv	a3,a5
   10ba8:	00113c23          	sd	ra,24(sp)
   10bac:	00f13423          	sd	a5,8(sp)
   10bb0:	064000ef          	jal	ra,10c14 <_vfprintf_r>
   10bb4:	01813083          	ld	ra,24(sp)
   10bb8:	05010113          	addi	sp,sp,80
   10bbc:	00008067          	ret

0000000000010bc0 <printf>:
   10bc0:	75818313          	addi	t1,gp,1880 # 247a8 <_impure_ptr>
   10bc4:	00033303          	ld	t1,0(t1) # 10178 <frame_dummy+0x18>
   10bc8:	fa010113          	addi	sp,sp,-96
   10bcc:	02c13823          	sd	a2,48(sp)
   10bd0:	02d13c23          	sd	a3,56(sp)
   10bd4:	04f13423          	sd	a5,72(sp)
   10bd8:	02b13423          	sd	a1,40(sp)
   10bdc:	04e13023          	sd	a4,64(sp)
   10be0:	05013823          	sd	a6,80(sp)
   10be4:	05113c23          	sd	a7,88(sp)
   10be8:	01033583          	ld	a1,16(t1)
   10bec:	02810793          	addi	a5,sp,40
   10bf0:	00050613          	mv	a2,a0
   10bf4:	00078693          	mv	a3,a5
   10bf8:	00030513          	mv	a0,t1
   10bfc:	00113c23          	sd	ra,24(sp)
   10c00:	00f13423          	sd	a5,8(sp)
   10c04:	010000ef          	jal	ra,10c14 <_vfprintf_r>
   10c08:	01813083          	ld	ra,24(sp)
   10c0c:	06010113          	addi	sp,sp,96
   10c10:	00008067          	ret

0000000000010c14 <_vfprintf_r>:
   10c14:	d8010113          	addi	sp,sp,-640
   10c18:	26113c23          	sd	ra,632(sp)
   10c1c:	26813823          	sd	s0,624(sp)
   10c20:	25613023          	sd	s6,576(sp)
   10c24:	00b13023          	sd	a1,0(sp)
   10c28:	00060b13          	mv	s6,a2
   10c2c:	00d13823          	sd	a3,16(sp)
   10c30:	26913423          	sd	s1,616(sp)
   10c34:	27213023          	sd	s2,608(sp)
   10c38:	25313c23          	sd	s3,600(sp)
   10c3c:	25413823          	sd	s4,592(sp)
   10c40:	25513423          	sd	s5,584(sp)
   10c44:	23713c23          	sd	s7,568(sp)
   10c48:	23813823          	sd	s8,560(sp)
   10c4c:	23913423          	sd	s9,552(sp)
   10c50:	23a13023          	sd	s10,544(sp)
   10c54:	21b13c23          	sd	s11,536(sp)
   10c58:	00050413          	mv	s0,a0
   10c5c:	02a13823          	sd	a0,48(sp)
   10c60:	364060ef          	jal	ra,16fc4 <_localeconv_r>
   10c64:	00053783          	ld	a5,0(a0)
   10c68:	00078513          	mv	a0,a5
   10c6c:	04f13c23          	sd	a5,88(sp)
   10c70:	68c080ef          	jal	ra,192fc <strlen>
   10c74:	04a13423          	sd	a0,72(sp)
   10c78:	10013023          	sd	zero,256(sp)
   10c7c:	10013423          	sd	zero,264(sp)
   10c80:	00040663          	beqz	s0,10c8c <_vfprintf_r+0x78>
   10c84:	05042783          	lw	a5,80(s0)
   10c88:	54078ee3          	beqz	a5,119e4 <_vfprintf_r+0xdd0>
   10c8c:	00013703          	ld	a4,0(sp)
   10c90:	01071683          	lh	a3,16(a4)
   10c94:	03069793          	slli	a5,a3,0x30
   10c98:	0307d793          	srli	a5,a5,0x30
   10c9c:	03279613          	slli	a2,a5,0x32
   10ca0:	02064663          	bltz	a2,10ccc <_vfprintf_r+0xb8>
   10ca4:	0ac72603          	lw	a2,172(a4)
   10ca8:	000027b7          	lui	a5,0x2
   10cac:	00f6e7b3          	or	a5,a3,a5
   10cb0:	ffffe6b7          	lui	a3,0xffffe
   10cb4:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd97af>
   10cb8:	00d676b3          	and	a3,a2,a3
   10cbc:	00f71823          	sh	a5,16(a4)
   10cc0:	03079793          	slli	a5,a5,0x30
   10cc4:	0ad72623          	sw	a3,172(a4)
   10cc8:	0307d793          	srli	a5,a5,0x30
   10ccc:	0087f693          	andi	a3,a5,8
   10cd0:	14068463          	beqz	a3,10e18 <_vfprintf_r+0x204>
   10cd4:	00013703          	ld	a4,0(sp)
   10cd8:	01873683          	ld	a3,24(a4)
   10cdc:	12068e63          	beqz	a3,10e18 <_vfprintf_r+0x204>
   10ce0:	01a7f793          	andi	a5,a5,26
   10ce4:	00a00693          	li	a3,10
   10ce8:	14d78c63          	beq	a5,a3,10e40 <_vfprintf_r+0x22c>
   10cec:	19010793          	addi	a5,sp,400
   10cf0:	000b0d93          	mv	s11,s6
   10cf4:	10f13823          	sd	a5,272(sp)
   10cf8:	00078313          	mv	t1,a5
   10cfc:	000dc783          	lbu	a5,0(s11)
   10d00:	12013023          	sd	zero,288(sp)
   10d04:	10012c23          	sw	zero,280(sp)
   10d08:	02013423          	sd	zero,40(sp)
   10d0c:	04013823          	sd	zero,80(sp)
   10d10:	06013423          	sd	zero,104(sp)
   10d14:	06013c23          	sd	zero,120(sp)
   10d18:	08013423          	sd	zero,136(sp)
   10d1c:	06013823          	sd	zero,112(sp)
   10d20:	00013423          	sd	zero,8(sp)
   10d24:	01000d13          	li	s10,16
   10d28:	00011c17          	auipc	s8,0x11
   10d2c:	e30c0c13          	addi	s8,s8,-464 # 21b58 <zeroes.4539>
   10d30:	03013a83          	ld	s5,48(sp)
   10d34:	1e078ce3          	beqz	a5,1172c <_vfprintf_r+0xb18>
   10d38:	02500693          	li	a3,37
   10d3c:	00d79463          	bne	a5,a3,10d44 <_vfprintf_r+0x130>
   10d40:	6e80106f          	j	12428 <_vfprintf_r+0x1814>
   10d44:	000d8413          	mv	s0,s11
   10d48:	00c0006f          	j	10d54 <_vfprintf_r+0x140>
   10d4c:	10d78e63          	beq	a5,a3,10e68 <_vfprintf_r+0x254>
   10d50:	00048413          	mv	s0,s1
   10d54:	00144783          	lbu	a5,1(s0)
   10d58:	00140493          	addi	s1,s0,1
   10d5c:	fe0798e3          	bnez	a5,10d4c <_vfprintf_r+0x138>
   10d60:	41b4893b          	subw	s2,s1,s11
   10d64:	1c0904e3          	beqz	s2,1172c <_vfprintf_r+0xb18>
   10d68:	12013683          	ld	a3,288(sp)
   10d6c:	11812783          	lw	a5,280(sp)
   10d70:	01b33023          	sd	s11,0(t1)
   10d74:	012686b3          	add	a3,a3,s2
   10d78:	0017879b          	addiw	a5,a5,1
   10d7c:	01233423          	sd	s2,8(t1)
   10d80:	12d13023          	sd	a3,288(sp)
   10d84:	10f12c23          	sw	a5,280(sp)
   10d88:	0007869b          	sext.w	a3,a5
   10d8c:	00700793          	li	a5,7
   10d90:	01030313          	addi	t1,t1,16
   10d94:	0ed7c063          	blt	a5,a3,10e74 <_vfprintf_r+0x260>
   10d98:	00813703          	ld	a4,8(sp)
   10d9c:	00144783          	lbu	a5,1(s0)
   10da0:	00e9073b          	addw	a4,s2,a4
   10da4:	00e13423          	sd	a4,8(sp)
   10da8:	180782e3          	beqz	a5,1172c <_vfprintf_r+0xb18>
   10dac:	00148913          	addi	s2,s1,1
   10db0:	0014c403          	lbu	s0,1(s1)
   10db4:	0c010fa3          	sb	zero,223(sp)
   10db8:	fff00b93          	li	s7,-1
   10dbc:	00000993          	li	s3,0
   10dc0:	00000493          	li	s1,0
   10dc4:	00900a13          	li	s4,9
   10dc8:	02a00b13          	li	s6,42
   10dcc:	00030c93          	mv	s9,t1
   10dd0:	00190913          	addi	s2,s2,1
   10dd4:	0004041b          	sext.w	s0,s0
   10dd8:	05a00693          	li	a3,90
   10ddc:	fe04079b          	addiw	a5,s0,-32
   10de0:	0007871b          	sext.w	a4,a5
   10de4:	20e6ea63          	bltu	a3,a4,10ff8 <_vfprintf_r+0x3e4>
   10de8:	02079793          	slli	a5,a5,0x20
   10dec:	00011717          	auipc	a4,0x11
   10df0:	bec70713          	addi	a4,a4,-1044 # 219d8 <__clz_tab+0x100>
   10df4:	01e7d793          	srli	a5,a5,0x1e
   10df8:	00e787b3          	add	a5,a5,a4
   10dfc:	0007a783          	lw	a5,0(a5) # 2000 <register_fini-0xe0b0>
   10e00:	00e787b3          	add	a5,a5,a4
   10e04:	00078067          	jr	a5
   10e08:	0104e493          	ori	s1,s1,16
   10e0c:	0004849b          	sext.w	s1,s1
   10e10:	00094403          	lbu	s0,0(s2)
   10e14:	fbdff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   10e18:	00013583          	ld	a1,0(sp)
   10e1c:	03013503          	ld	a0,48(sp)
   10e20:	628020ef          	jal	ra,13448 <__swsetup_r>
   10e24:	00050463          	beqz	a0,10e2c <_vfprintf_r+0x218>
   10e28:	1b40206f          	j	12fdc <_vfprintf_r+0x23c8>
   10e2c:	00013783          	ld	a5,0(sp)
   10e30:	00a00693          	li	a3,10
   10e34:	0107d783          	lhu	a5,16(a5)
   10e38:	01a7f793          	andi	a5,a5,26
   10e3c:	ead798e3          	bne	a5,a3,10cec <_vfprintf_r+0xd8>
   10e40:	00013783          	ld	a5,0(sp)
   10e44:	01279783          	lh	a5,18(a5)
   10e48:	ea07c2e3          	bltz	a5,10cec <_vfprintf_r+0xd8>
   10e4c:	01013683          	ld	a3,16(sp)
   10e50:	00013583          	ld	a1,0(sp)
   10e54:	03013503          	ld	a0,48(sp)
   10e58:	000b0613          	mv	a2,s6
   10e5c:	52c020ef          	jal	ra,13388 <__sbprintf>
   10e60:	00a13423          	sd	a0,8(sp)
   10e64:	0680006f          	j	10ecc <_vfprintf_r+0x2b8>
   10e68:	41b4893b          	subw	s2,s1,s11
   10e6c:	f40900e3          	beqz	s2,10dac <_vfprintf_r+0x198>
   10e70:	ef9ff06f          	j	10d68 <_vfprintf_r+0x154>
   10e74:	00013583          	ld	a1,0(sp)
   10e78:	11010613          	addi	a2,sp,272
   10e7c:	000a8513          	mv	a0,s5
   10e80:	62d0a0ef          	jal	ra,1bcac <__sprint_r>
   10e84:	02051a63          	bnez	a0,10eb8 <_vfprintf_r+0x2a4>
   10e88:	19010313          	addi	t1,sp,400
   10e8c:	f0dff06f          	j	10d98 <_vfprintf_r+0x184>
   10e90:	00013583          	ld	a1,0(sp)
   10e94:	11010613          	addi	a2,sp,272
   10e98:	000a8513          	mv	a0,s5
   10e9c:	6110a0ef          	jal	ra,1bcac <__sprint_r>
   10ea0:	060502e3          	beqz	a0,11704 <_vfprintf_r+0xaf0>
   10ea4:	01813783          	ld	a5,24(sp)
   10ea8:	00078863          	beqz	a5,10eb8 <_vfprintf_r+0x2a4>
   10eac:	03013503          	ld	a0,48(sp)
   10eb0:	00078593          	mv	a1,a5
   10eb4:	050030ef          	jal	ra,13f04 <_free_r>
   10eb8:	00013783          	ld	a5,0(sp)
   10ebc:	0107d783          	lhu	a5,16(a5)
   10ec0:	0407f793          	andi	a5,a5,64
   10ec4:	00078463          	beqz	a5,10ecc <_vfprintf_r+0x2b8>
   10ec8:	1140206f          	j	12fdc <_vfprintf_r+0x23c8>
   10ecc:	27813083          	ld	ra,632(sp)
   10ed0:	27013403          	ld	s0,624(sp)
   10ed4:	00813503          	ld	a0,8(sp)
   10ed8:	26813483          	ld	s1,616(sp)
   10edc:	26013903          	ld	s2,608(sp)
   10ee0:	25813983          	ld	s3,600(sp)
   10ee4:	25013a03          	ld	s4,592(sp)
   10ee8:	24813a83          	ld	s5,584(sp)
   10eec:	24013b03          	ld	s6,576(sp)
   10ef0:	23813b83          	ld	s7,568(sp)
   10ef4:	23013c03          	ld	s8,560(sp)
   10ef8:	22813c83          	ld	s9,552(sp)
   10efc:	22013d03          	ld	s10,544(sp)
   10f00:	21813d83          	ld	s11,536(sp)
   10f04:	28010113          	addi	sp,sp,640
   10f08:	00008067          	ret
   10f0c:	01013683          	ld	a3,16(sp)
   10f10:	00011797          	auipc	a5,0x11
   10f14:	cb078793          	addi	a5,a5,-848 # 21bc0 <zeroes.4539+0x68>
   10f18:	04f13823          	sd	a5,80(sp)
   10f1c:	0204f793          	andi	a5,s1,32
   10f20:	000c8313          	mv	t1,s9
   10f24:	00868713          	addi	a4,a3,8
   10f28:	10078863          	beqz	a5,11038 <_vfprintf_r+0x424>
   10f2c:	0006bb03          	ld	s6,0(a3)
   10f30:	0014f793          	andi	a5,s1,1
   10f34:	00078e63          	beqz	a5,10f50 <_vfprintf_r+0x33c>
   10f38:	000b0c63          	beqz	s6,10f50 <_vfprintf_r+0x33c>
   10f3c:	0024e493          	ori	s1,s1,2
   10f40:	03000793          	li	a5,48
   10f44:	0ef10023          	sb	a5,224(sp)
   10f48:	0e8100a3          	sb	s0,225(sp)
   10f4c:	0004849b          	sext.w	s1,s1
   10f50:	bff4f813          	andi	a6,s1,-1025
   10f54:	00080a1b          	sext.w	s4,a6
   10f58:	00e13823          	sd	a4,16(sp)
   10f5c:	00200793          	li	a5,2
   10f60:	0c010fa3          	sb	zero,223(sp)
   10f64:	fff00713          	li	a4,-1
   10f68:	5eeb8e63          	beq	s7,a4,11564 <_vfprintf_r+0x950>
   10f6c:	f7fa7493          	andi	s1,s4,-129
   10f70:	0004849b          	sext.w	s1,s1
   10f74:	6c0b16e3          	bnez	s6,11e40 <_vfprintf_r+0x122c>
   10f78:	000b8463          	beqz	s7,10f80 <_vfprintf_r+0x36c>
   10f7c:	0bc0106f          	j	12038 <_vfprintf_r+0x1424>
   10f80:	52079663          	bnez	a5,114ac <_vfprintf_r+0x898>
   10f84:	001a7c93          	andi	s9,s4,1
   10f88:	18c10d93          	addi	s11,sp,396
   10f8c:	000c8463          	beqz	s9,10f94 <_vfprintf_r+0x380>
   10f90:	2f40106f          	j	12284 <_vfprintf_r+0x1670>
   10f94:	000c8a1b          	sext.w	s4,s9
   10f98:	017cd463          	bge	s9,s7,10fa0 <_vfprintf_r+0x38c>
   10f9c:	000b8a1b          	sext.w	s4,s7
   10fa0:	0df14783          	lbu	a5,223(sp)
   10fa4:	00013c23          	sd	zero,24(sp)
   10fa8:	04013023          	sd	zero,64(sp)
   10fac:	02013c23          	sd	zero,56(sp)
   10fb0:	02013023          	sd	zero,32(sp)
   10fb4:	64078663          	beqz	a5,11600 <_vfprintf_r+0x9ec>
   10fb8:	001a0a1b          	addiw	s4,s4,1
   10fbc:	6440006f          	j	11600 <_vfprintf_r+0x9ec>
   10fc0:	00000993          	li	s3,0
   10fc4:	00190913          	addi	s2,s2,1
   10fc8:	fff94703          	lbu	a4,-1(s2)
   10fcc:	0029979b          	slliw	a5,s3,0x2
   10fd0:	013787bb          	addw	a5,a5,s3
   10fd4:	fd04041b          	addiw	s0,s0,-48
   10fd8:	0017979b          	slliw	a5,a5,0x1
   10fdc:	fd07061b          	addiw	a2,a4,-48
   10fe0:	00f409bb          	addw	s3,s0,a5
   10fe4:	0007041b          	sext.w	s0,a4
   10fe8:	fcca7ee3          	bgeu	s4,a2,10fc4 <_vfprintf_r+0x3b0>
   10fec:	fe04079b          	addiw	a5,s0,-32
   10ff0:	0007871b          	sext.w	a4,a5
   10ff4:	dee6fae3          	bgeu	a3,a4,10de8 <_vfprintf_r+0x1d4>
   10ff8:	000c8313          	mv	t1,s9
   10ffc:	72040863          	beqz	s0,1172c <_vfprintf_r+0xb18>
   11000:	12810423          	sb	s0,296(sp)
   11004:	0c010fa3          	sb	zero,223(sp)
   11008:	00100a13          	li	s4,1
   1100c:	00100c93          	li	s9,1
   11010:	12810d93          	addi	s11,sp,296
   11014:	5d80006f          	j	115ec <_vfprintf_r+0x9d8>
   11018:	01013683          	ld	a3,16(sp)
   1101c:	00011797          	auipc	a5,0x11
   11020:	bbc78793          	addi	a5,a5,-1092 # 21bd8 <zeroes.4539+0x80>
   11024:	04f13823          	sd	a5,80(sp)
   11028:	0204f793          	andi	a5,s1,32
   1102c:	000c8313          	mv	t1,s9
   11030:	00868713          	addi	a4,a3,8
   11034:	ee079ce3          	bnez	a5,10f2c <_vfprintf_r+0x318>
   11038:	0104f793          	andi	a5,s1,16
   1103c:	00078463          	beqz	a5,11044 <_vfprintf_r+0x430>
   11040:	26c0106f          	j	122ac <_vfprintf_r+0x1698>
   11044:	01013683          	ld	a3,16(sp)
   11048:	0404f793          	andi	a5,s1,64
   1104c:	0006ab03          	lw	s6,0(a3)
   11050:	00079463          	bnez	a5,11058 <_vfprintf_r+0x444>
   11054:	66c0106f          	j	126c0 <_vfprintf_r+0x1aac>
   11058:	030b1b13          	slli	s6,s6,0x30
   1105c:	030b5b13          	srli	s6,s6,0x30
   11060:	ed1ff06f          	j	10f30 <_vfprintf_r+0x31c>
   11064:	00094403          	lbu	s0,0(s2)
   11068:	0044e493          	ori	s1,s1,4
   1106c:	0004849b          	sext.w	s1,s1
   11070:	d61ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11074:	00094403          	lbu	s0,0(s2)
   11078:	06800793          	li	a5,104
   1107c:	00f41463          	bne	s0,a5,11084 <_vfprintf_r+0x470>
   11080:	2e40106f          	j	12364 <_vfprintf_r+0x1750>
   11084:	0404e493          	ori	s1,s1,64
   11088:	0004849b          	sext.w	s1,s1
   1108c:	d45ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11090:	0084f793          	andi	a5,s1,8
   11094:	000c8313          	mv	t1,s9
   11098:	00079463          	bnez	a5,110a0 <_vfprintf_r+0x48c>
   1109c:	22c0106f          	j	122c8 <_vfprintf_r+0x16b4>
   110a0:	01013783          	ld	a5,16(sp)
   110a4:	00f78793          	addi	a5,a5,15
   110a8:	ff07f793          	andi	a5,a5,-16
   110ac:	0007b683          	ld	a3,0(a5)
   110b0:	0087b703          	ld	a4,8(a5)
   110b4:	01078793          	addi	a5,a5,16
   110b8:	00f13823          	sd	a5,16(sp)
   110bc:	10d13023          	sd	a3,256(sp)
   110c0:	10e13423          	sd	a4,264(sp)
   110c4:	10010513          	addi	a0,sp,256
   110c8:	00613c23          	sd	t1,24(sp)
   110cc:	69d050ef          	jal	ra,16f68 <_ldcheck>
   110d0:	0ea12423          	sw	a0,232(sp)
   110d4:	00200793          	li	a5,2
   110d8:	01813303          	ld	t1,24(sp)
   110dc:	00f51463          	bne	a0,a5,110e4 <_vfprintf_r+0x4d0>
   110e0:	4e40106f          	j	125c4 <_vfprintf_r+0x19b0>
   110e4:	00100793          	li	a5,1
   110e8:	00f51463          	bne	a0,a5,110f0 <_vfprintf_r+0x4dc>
   110ec:	5e40106f          	j	126d0 <_vfprintf_r+0x1abc>
   110f0:	06100793          	li	a5,97
   110f4:	00f41463          	bne	s0,a5,110fc <_vfprintf_r+0x4e8>
   110f8:	7fd0106f          	j	130f4 <_vfprintf_r+0x24e0>
   110fc:	04100793          	li	a5,65
   11100:	00f41463          	bne	s0,a5,11108 <_vfprintf_r+0x4f4>
   11104:	12d0106f          	j	12a30 <_vfprintf_r+0x1e1c>
   11108:	fdf47713          	andi	a4,s0,-33
   1110c:	fff00793          	li	a5,-1
   11110:	02e13c23          	sd	a4,56(sp)
   11114:	00fb9463          	bne	s7,a5,1111c <_vfprintf_r+0x508>
   11118:	7fd0106f          	j	13114 <_vfprintf_r+0x2500>
   1111c:	04700793          	li	a5,71
   11120:	00f71463          	bne	a4,a5,11128 <_vfprintf_r+0x514>
   11124:	7e10106f          	j	13104 <_vfprintf_r+0x24f0>
   11128:	10813c83          	ld	s9,264(sp)
   1112c:	1004e793          	ori	a5,s1,256
   11130:	04913023          	sd	s1,64(sp)
   11134:	0007879b          	sext.w	a5,a5
   11138:	10013e83          	ld	t4,256(sp)
   1113c:	000cd463          	bgez	s9,11144 <_vfprintf_r+0x530>
   11140:	4c10106f          	j	12e00 <_vfprintf_r+0x21ec>
   11144:	06013023          	sd	zero,96(sp)
   11148:	00078493          	mv	s1,a5
   1114c:	00013c23          	sd	zero,24(sp)
   11150:	03813703          	ld	a4,56(sp)
   11154:	04600793          	li	a5,70
   11158:	00f71463          	bne	a4,a5,11160 <_vfprintf_r+0x54c>
   1115c:	4050106f          	j	12d60 <_vfprintf_r+0x214c>
   11160:	04500793          	li	a5,69
   11164:	02613423          	sd	t1,40(sp)
   11168:	00f71463          	bne	a4,a5,11170 <_vfprintf_r+0x55c>
   1116c:	7250106f          	j	13090 <_vfprintf_r+0x247c>
   11170:	0e810793          	addi	a5,sp,232
   11174:	000b8713          	mv	a4,s7
   11178:	000e8593          	mv	a1,t4
   1117c:	0f810893          	addi	a7,sp,248
   11180:	0ec10813          	addi	a6,sp,236
   11184:	00200693          	li	a3,2
   11188:	000c8613          	mv	a2,s9
   1118c:	000a8513          	mv	a0,s5
   11190:	03d13023          	sd	t4,32(sp)
   11194:	2b5040ef          	jal	ra,15c48 <_ldtoa_r>
   11198:	03813703          	ld	a4,56(sp)
   1119c:	04700793          	li	a5,71
   111a0:	00050d93          	mv	s11,a0
   111a4:	02013e83          	ld	t4,32(sp)
   111a8:	02813303          	ld	t1,40(sp)
   111ac:	00f70463          	beq	a4,a5,111b4 <_vfprintf_r+0x5a0>
   111b0:	1a80206f          	j	13358 <_vfprintf_r+0x2744>
   111b4:	04013783          	ld	a5,64(sp)
   111b8:	01750a33          	add	s4,a0,s7
   111bc:	0017f793          	andi	a5,a5,1
   111c0:	00078463          	beqz	a5,111c8 <_vfprintf_r+0x5b4>
   111c4:	3ed0106f          	j	12db0 <_vfprintf_r+0x219c>
   111c8:	0f813783          	ld	a5,248(sp)
   111cc:	41b787bb          	subw	a5,a5,s11
   111d0:	02f13423          	sd	a5,40(sp)
   111d4:	0e812703          	lw	a4,232(sp)
   111d8:	04700793          	li	a5,71
   111dc:	02e13023          	sd	a4,32(sp)
   111e0:	03813703          	ld	a4,56(sp)
   111e4:	00f71463          	bne	a4,a5,111ec <_vfprintf_r+0x5d8>
   111e8:	2ed0106f          	j	12cd4 <_vfprintf_r+0x20c0>
   111ec:	03813703          	ld	a4,56(sp)
   111f0:	04600793          	li	a5,70
   111f4:	00f71463          	bne	a4,a5,111fc <_vfprintf_r+0x5e8>
   111f8:	5550106f          	j	12f4c <_vfprintf_r+0x2338>
   111fc:	02013783          	ld	a5,32(sp)
   11200:	03813703          	ld	a4,56(sp)
   11204:	04100613          	li	a2,65
   11208:	fff78a1b          	addiw	s4,a5,-1
   1120c:	0f412423          	sw	s4,232(sp)
   11210:	0ff47793          	andi	a5,s0,255
   11214:	00000693          	li	a3,0
   11218:	00c71863          	bne	a4,a2,11228 <_vfprintf_r+0x614>
   1121c:	00f7879b          	addiw	a5,a5,15
   11220:	0ff7f793          	andi	a5,a5,255
   11224:	00100693          	li	a3,1
   11228:	0ef10823          	sb	a5,240(sp)
   1122c:	02b00793          	li	a5,43
   11230:	000a5a63          	bgez	s4,11244 <_vfprintf_r+0x630>
   11234:	02013783          	ld	a5,32(sp)
   11238:	00100a13          	li	s4,1
   1123c:	40fa0a3b          	subw	s4,s4,a5
   11240:	02d00793          	li	a5,45
   11244:	0ef108a3          	sb	a5,241(sp)
   11248:	00900793          	li	a5,9
   1124c:	0147c463          	blt	a5,s4,11254 <_vfprintf_r+0x640>
   11250:	0280206f          	j	13278 <_vfprintf_r+0x2664>
   11254:	0ff10b13          	addi	s6,sp,255
   11258:	000b0c93          	mv	s9,s6
   1125c:	06300493          	li	s1,99
   11260:	00030b93          	mv	s7,t1
   11264:	00c0006f          	j	11270 <_vfprintf_r+0x65c>
   11268:	00060c93          	mv	s9,a2
   1126c:	00050a13          	mv	s4,a0
   11270:	00a00593          	li	a1,10
   11274:	000a0513          	mv	a0,s4
   11278:	e78ff0ef          	jal	ra,108f0 <__moddi3>
   1127c:	0305051b          	addiw	a0,a0,48
   11280:	feac8fa3          	sb	a0,-1(s9)
   11284:	00a00593          	li	a1,10
   11288:	000a0513          	mv	a0,s4
   1128c:	de0ff0ef          	jal	ra,1086c <__divdi3>
   11290:	fffc8613          	addi	a2,s9,-1
   11294:	0005051b          	sext.w	a0,a0
   11298:	fd44c8e3          	blt	s1,s4,11268 <_vfprintf_r+0x654>
   1129c:	0305079b          	addiw	a5,a0,48
   112a0:	0ff7f793          	andi	a5,a5,255
   112a4:	ffec8693          	addi	a3,s9,-2
   112a8:	fef60fa3          	sb	a5,-1(a2)
   112ac:	000b8313          	mv	t1,s7
   112b0:	0166e463          	bltu	a3,s6,112b8 <_vfprintf_r+0x6a4>
   112b4:	0b00206f          	j	13364 <_vfprintf_r+0x2750>
   112b8:	0f210613          	addi	a2,sp,242
   112bc:	0080006f          	j	112c4 <_vfprintf_r+0x6b0>
   112c0:	0006c783          	lbu	a5,0(a3)
   112c4:	00160613          	addi	a2,a2,1
   112c8:	00168693          	addi	a3,a3,1
   112cc:	fef60fa3          	sb	a5,-1(a2)
   112d0:	ff6698e3          	bne	a3,s6,112c0 <_vfprintf_r+0x6ac>
   112d4:	10110793          	addi	a5,sp,257
   112d8:	419787b3          	sub	a5,a5,s9
   112dc:	0f210713          	addi	a4,sp,242
   112e0:	00f707b3          	add	a5,a4,a5
   112e4:	0f010693          	addi	a3,sp,240
   112e8:	40d787bb          	subw	a5,a5,a3
   112ec:	06f13423          	sd	a5,104(sp)
   112f0:	06813783          	ld	a5,104(sp)
   112f4:	02813703          	ld	a4,40(sp)
   112f8:	00100693          	li	a3,1
   112fc:	00f70cbb          	addw	s9,a4,a5
   11300:	000c8793          	mv	a5,s9
   11304:	00e6c463          	blt	a3,a4,1130c <_vfprintf_r+0x6f8>
   11308:	7c10106f          	j	132c8 <_vfprintf_r+0x26b4>
   1130c:	04813703          	ld	a4,72(sp)
   11310:	00e78cbb          	addw	s9,a5,a4
   11314:	04013783          	ld	a5,64(sp)
   11318:	fffcca13          	not	s4,s9
   1131c:	43fa5a13          	srai	s4,s4,0x3f
   11320:	bff7f493          	andi	s1,a5,-1025
   11324:	0004849b          	sext.w	s1,s1
   11328:	014cfa33          	and	s4,s9,s4
   1132c:	1004e493          	ori	s1,s1,256
   11330:	000a0a1b          	sext.w	s4,s4
   11334:	04013023          	sd	zero,64(sp)
   11338:	02013c23          	sd	zero,56(sp)
   1133c:	02013023          	sd	zero,32(sp)
   11340:	06013783          	ld	a5,96(sp)
   11344:	00079463          	bnez	a5,1134c <_vfprintf_r+0x738>
   11348:	2050106f          	j	12d4c <_vfprintf_r+0x2138>
   1134c:	02d00793          	li	a5,45
   11350:	0cf10fa3          	sb	a5,223(sp)
   11354:	00000b93          	li	s7,0
   11358:	001a0a1b          	addiw	s4,s4,1
   1135c:	2a40006f          	j	11600 <_vfprintf_r+0x9ec>
   11360:	01013783          	ld	a5,16(sp)
   11364:	0104e813          	ori	a6,s1,16
   11368:	000c8313          	mv	t1,s9
   1136c:	00080a1b          	sext.w	s4,a6
   11370:	00878713          	addi	a4,a5,8
   11374:	01013783          	ld	a5,16(sp)
   11378:	0007bb03          	ld	s6,0(a5)
   1137c:	00100793          	li	a5,1
   11380:	00e13823          	sd	a4,16(sp)
   11384:	bddff06f          	j	10f60 <_vfprintf_r+0x34c>
   11388:	01013783          	ld	a5,16(sp)
   1138c:	0c010fa3          	sb	zero,223(sp)
   11390:	000c8313          	mv	t1,s9
   11394:	0007bd83          	ld	s11,0(a5)
   11398:	00878b13          	addi	s6,a5,8
   1139c:	000d9463          	bnez	s11,113a4 <_vfprintf_r+0x790>
   113a0:	7fd0006f          	j	1239c <_vfprintf_r+0x1788>
   113a4:	fff00793          	li	a5,-1
   113a8:	00fb9463          	bne	s7,a5,113b0 <_vfprintf_r+0x79c>
   113ac:	2780106f          	j	12624 <_vfprintf_r+0x1a10>
   113b0:	000b8613          	mv	a2,s7
   113b4:	00000593          	li	a1,0
   113b8:	000d8513          	mv	a0,s11
   113bc:	01913823          	sd	s9,16(sp)
   113c0:	768060ef          	jal	ra,17b28 <memchr>
   113c4:	00a13c23          	sd	a0,24(sp)
   113c8:	01013303          	ld	t1,16(sp)
   113cc:	00051463          	bnez	a0,113d4 <_vfprintf_r+0x7c0>
   113d0:	2e90106f          	j	12eb8 <_vfprintf_r+0x22a4>
   113d4:	01813783          	ld	a5,24(sp)
   113d8:	01613823          	sd	s6,16(sp)
   113dc:	00013c23          	sd	zero,24(sp)
   113e0:	41b78cbb          	subw	s9,a5,s11
   113e4:	fffcca13          	not	s4,s9
   113e8:	0df14783          	lbu	a5,223(sp)
   113ec:	43fa5a13          	srai	s4,s4,0x3f
   113f0:	014cfa33          	and	s4,s9,s4
   113f4:	04013023          	sd	zero,64(sp)
   113f8:	02013c23          	sd	zero,56(sp)
   113fc:	02013023          	sd	zero,32(sp)
   11400:	000a0a1b          	sext.w	s4,s4
   11404:	00000b93          	li	s7,0
   11408:	ba0798e3          	bnez	a5,10fb8 <_vfprintf_r+0x3a4>
   1140c:	1f40006f          	j	11600 <_vfprintf_r+0x9ec>
   11410:	01013703          	ld	a4,16(sp)
   11414:	0104e813          	ori	a6,s1,16
   11418:	000c8313          	mv	t1,s9
   1141c:	0008049b          	sext.w	s1,a6
   11420:	00870713          	addi	a4,a4,8
   11424:	01013783          	ld	a5,16(sp)
   11428:	0007bb03          	ld	s6,0(a5)
   1142c:	00e13823          	sd	a4,16(sp)
   11430:	bff4f813          	andi	a6,s1,-1025
   11434:	00080a1b          	sext.w	s4,a6
   11438:	00000793          	li	a5,0
   1143c:	b25ff06f          	j	10f60 <_vfprintf_r+0x34c>
   11440:	0084e493          	ori	s1,s1,8
   11444:	0004849b          	sext.w	s1,s1
   11448:	00094403          	lbu	s0,0(s2)
   1144c:	985ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11450:	01013703          	ld	a4,16(sp)
   11454:	0204f793          	andi	a5,s1,32
   11458:	000c8313          	mv	t1,s9
   1145c:	00870713          	addi	a4,a4,8
   11460:	660790e3          	bnez	a5,122c0 <_vfprintf_r+0x16ac>
   11464:	0104f793          	andi	a5,s1,16
   11468:	64079ce3          	bnez	a5,122c0 <_vfprintf_r+0x16ac>
   1146c:	0404f793          	andi	a5,s1,64
   11470:	00079463          	bnez	a5,11478 <_vfprintf_r+0x864>
   11474:	22c0106f          	j	126a0 <_vfprintf_r+0x1a8c>
   11478:	01013783          	ld	a5,16(sp)
   1147c:	00048a13          	mv	s4,s1
   11480:	00e13823          	sd	a4,16(sp)
   11484:	00079b03          	lh	s6,0(a5)
   11488:	000b0793          	mv	a5,s6
   1148c:	0c07c063          	bltz	a5,1154c <_vfprintf_r+0x938>
   11490:	fff00793          	li	a5,-1
   11494:	56fb8063          	beq	s7,a5,119f4 <_vfprintf_r+0xde0>
   11498:	f7fa7813          	andi	a6,s4,-129
   1149c:	0008049b          	sext.w	s1,a6
   114a0:	540b1863          	bnez	s6,119f0 <_vfprintf_r+0xddc>
   114a4:	000b8463          	beqz	s7,114ac <_vfprintf_r+0x898>
   114a8:	7f80106f          	j	12ca0 <_vfprintf_r+0x208c>
   114ac:	00000b93          	li	s7,0
   114b0:	00000c93          	li	s9,0
   114b4:	18c10d93          	addi	s11,sp,396
   114b8:	addff06f          	j	10f94 <_vfprintf_r+0x380>
   114bc:	02b00793          	li	a5,43
   114c0:	0cf10fa3          	sb	a5,223(sp)
   114c4:	00094403          	lbu	s0,0(s2)
   114c8:	909ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   114cc:	0804e493          	ori	s1,s1,128
   114d0:	0004849b          	sext.w	s1,s1
   114d4:	00094403          	lbu	s0,0(s2)
   114d8:	8f9ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   114dc:	00094403          	lbu	s0,0(s2)
   114e0:	00190793          	addi	a5,s2,1
   114e4:	01641463          	bne	s0,s6,114ec <_vfprintf_r+0x8d8>
   114e8:	6390106f          	j	13320 <_vfprintf_r+0x270c>
   114ec:	fd04071b          	addiw	a4,s0,-48
   114f0:	00078913          	mv	s2,a5
   114f4:	00000b93          	li	s7,0
   114f8:	8eea62e3          	bltu	s4,a4,10ddc <_vfprintf_r+0x1c8>
   114fc:	00190913          	addi	s2,s2,1
   11500:	002b979b          	slliw	a5,s7,0x2
   11504:	fff94603          	lbu	a2,-1(s2)
   11508:	017787bb          	addw	a5,a5,s7
   1150c:	0017979b          	slliw	a5,a5,0x1
   11510:	00e78bbb          	addw	s7,a5,a4
   11514:	fd06071b          	addiw	a4,a2,-48
   11518:	feea72e3          	bgeu	s4,a4,114fc <_vfprintf_r+0x8e8>
   1151c:	00060413          	mv	s0,a2
   11520:	8bdff06f          	j	10ddc <_vfprintf_r+0x1c8>
   11524:	01013783          	ld	a5,16(sp)
   11528:	0104e813          	ori	a6,s1,16
   1152c:	000c8313          	mv	t1,s9
   11530:	00080a1b          	sext.w	s4,a6
   11534:	00878713          	addi	a4,a5,8
   11538:	01013783          	ld	a5,16(sp)
   1153c:	0007b783          	ld	a5,0(a5)
   11540:	00e13823          	sd	a4,16(sp)
   11544:	00078b13          	mv	s6,a5
   11548:	f407d4e3          	bgez	a5,11490 <_vfprintf_r+0x87c>
   1154c:	02d00793          	li	a5,45
   11550:	0cf10fa3          	sb	a5,223(sp)
   11554:	fff00713          	li	a4,-1
   11558:	41600b33          	neg	s6,s6
   1155c:	00100793          	li	a5,1
   11560:	a0eb96e3          	bne	s7,a4,10f6c <_vfprintf_r+0x358>
   11564:	00100713          	li	a4,1
   11568:	48e78663          	beq	a5,a4,119f4 <_vfprintf_r+0xde0>
   1156c:	00200713          	li	a4,2
   11570:	2ce78ee3          	beq	a5,a4,1204c <_vfprintf_r+0x1438>
   11574:	18c10c93          	addi	s9,sp,396
   11578:	000c8693          	mv	a3,s9
   1157c:	0080006f          	j	11584 <_vfprintf_r+0x970>
   11580:	000d8693          	mv	a3,s11
   11584:	007b7793          	andi	a5,s6,7
   11588:	03078793          	addi	a5,a5,48
   1158c:	fef68fa3          	sb	a5,-1(a3)
   11590:	003b5b13          	srli	s6,s6,0x3
   11594:	fff68d93          	addi	s11,a3,-1
   11598:	fe0b14e3          	bnez	s6,11580 <_vfprintf_r+0x96c>
   1159c:	001a7613          	andi	a2,s4,1
   115a0:	4a060463          	beqz	a2,11a48 <_vfprintf_r+0xe34>
   115a4:	03000613          	li	a2,48
   115a8:	4ac78063          	beq	a5,a2,11a48 <_vfprintf_r+0xe34>
   115ac:	ffe68693          	addi	a3,a3,-2
   115b0:	fecd8fa3          	sb	a2,-1(s11)
   115b4:	40dc8cbb          	subw	s9,s9,a3
   115b8:	000a0493          	mv	s1,s4
   115bc:	00068d93          	mv	s11,a3
   115c0:	9d5ff06f          	j	10f94 <_vfprintf_r+0x380>
   115c4:	01013703          	ld	a4,16(sp)
   115c8:	000c8313          	mv	t1,s9
   115cc:	0c010fa3          	sb	zero,223(sp)
   115d0:	00072783          	lw	a5,0(a4)
   115d4:	00870713          	addi	a4,a4,8
   115d8:	00e13823          	sd	a4,16(sp)
   115dc:	12f10423          	sb	a5,296(sp)
   115e0:	00100a13          	li	s4,1
   115e4:	00100c93          	li	s9,1
   115e8:	12810d93          	addi	s11,sp,296
   115ec:	00013c23          	sd	zero,24(sp)
   115f0:	00000b93          	li	s7,0
   115f4:	04013023          	sd	zero,64(sp)
   115f8:	02013c23          	sd	zero,56(sp)
   115fc:	02013023          	sd	zero,32(sp)
   11600:	0024fe93          	andi	t4,s1,2
   11604:	000e8e9b          	sext.w	t4,t4
   11608:	000e8463          	beqz	t4,11610 <_vfprintf_r+0x9fc>
   1160c:	002a0a1b          	addiw	s4,s4,2
   11610:	0844ff13          	andi	t5,s1,132
   11614:	12013783          	ld	a5,288(sp)
   11618:	000f1663          	bnez	t5,11624 <_vfprintf_r+0xa10>
   1161c:	4149883b          	subw	a6,s3,s4
   11620:	030044e3          	bgtz	a6,11e48 <_vfprintf_r+0x1234>
   11624:	0df14683          	lbu	a3,223(sp)
   11628:	02068c63          	beqz	a3,11660 <_vfprintf_r+0xa4c>
   1162c:	11812683          	lw	a3,280(sp)
   11630:	0df10613          	addi	a2,sp,223
   11634:	00c33023          	sd	a2,0(t1)
   11638:	0016869b          	addiw	a3,a3,1
   1163c:	00100613          	li	a2,1
   11640:	00178793          	addi	a5,a5,1
   11644:	00c33423          	sd	a2,8(t1)
   11648:	10d12c23          	sw	a3,280(sp)
   1164c:	0006861b          	sext.w	a2,a3
   11650:	12f13023          	sd	a5,288(sp)
   11654:	00700693          	li	a3,7
   11658:	01030313          	addi	t1,t1,16
   1165c:	0ec6c663          	blt	a3,a2,11748 <_vfprintf_r+0xb34>
   11660:	020e8c63          	beqz	t4,11698 <_vfprintf_r+0xa84>
   11664:	11812683          	lw	a3,280(sp)
   11668:	0e010613          	addi	a2,sp,224
   1166c:	00c33023          	sd	a2,0(t1)
   11670:	0016869b          	addiw	a3,a3,1
   11674:	00200613          	li	a2,2
   11678:	00278793          	addi	a5,a5,2
   1167c:	00c33423          	sd	a2,8(t1)
   11680:	10d12c23          	sw	a3,280(sp)
   11684:	0006861b          	sext.w	a2,a3
   11688:	12f13023          	sd	a5,288(sp)
   1168c:	00700693          	li	a3,7
   11690:	01030313          	addi	t1,t1,16
   11694:	0cc6c4e3          	blt	a3,a2,11f5c <_vfprintf_r+0x1348>
   11698:	08000693          	li	a3,128
   1169c:	4edf0063          	beq	t5,a3,11b7c <_vfprintf_r+0xf68>
   116a0:	419b8bbb          	subw	s7,s7,s9
   116a4:	5b704e63          	bgtz	s7,11c60 <_vfprintf_r+0x104c>
   116a8:	1004f693          	andi	a3,s1,256
   116ac:	3a069463          	bnez	a3,11a54 <_vfprintf_r+0xe40>
   116b0:	11812703          	lw	a4,280(sp)
   116b4:	019787b3          	add	a5,a5,s9
   116b8:	01b33023          	sd	s11,0(t1)
   116bc:	0017069b          	addiw	a3,a4,1
   116c0:	01933423          	sd	s9,8(t1)
   116c4:	12f13023          	sd	a5,288(sp)
   116c8:	10d12c23          	sw	a3,280(sp)
   116cc:	00700713          	li	a4,7
   116d0:	12d74463          	blt	a4,a3,117f8 <_vfprintf_r+0xbe4>
   116d4:	01030313          	addi	t1,t1,16
   116d8:	0044f493          	andi	s1,s1,4
   116dc:	00048663          	beqz	s1,116e8 <_vfprintf_r+0xad4>
   116e0:	4149843b          	subw	s0,s3,s4
   116e4:	0a8042e3          	bgtz	s0,11f88 <_vfprintf_r+0x1374>
   116e8:	00098713          	mv	a4,s3
   116ec:	0149d463          	bge	s3,s4,116f4 <_vfprintf_r+0xae0>
   116f0:	000a0713          	mv	a4,s4
   116f4:	00813683          	ld	a3,8(sp)
   116f8:	00d7073b          	addw	a4,a4,a3
   116fc:	00e13423          	sd	a4,8(sp)
   11700:	f8079863          	bnez	a5,10e90 <_vfprintf_r+0x27c>
   11704:	01813783          	ld	a5,24(sp)
   11708:	10012c23          	sw	zero,280(sp)
   1170c:	00078863          	beqz	a5,1171c <_vfprintf_r+0xb08>
   11710:	01813583          	ld	a1,24(sp)
   11714:	000a8513          	mv	a0,s5
   11718:	7ec020ef          	jal	ra,13f04 <_free_r>
   1171c:	19010313          	addi	t1,sp,400
   11720:	00090d93          	mv	s11,s2
   11724:	000dc783          	lbu	a5,0(s11)
   11728:	e0079863          	bnez	a5,10d38 <_vfprintf_r+0x124>
   1172c:	12013783          	ld	a5,288(sp)
   11730:	f8078463          	beqz	a5,10eb8 <_vfprintf_r+0x2a4>
   11734:	00013583          	ld	a1,0(sp)
   11738:	03013503          	ld	a0,48(sp)
   1173c:	11010613          	addi	a2,sp,272
   11740:	56c0a0ef          	jal	ra,1bcac <__sprint_r>
   11744:	f74ff06f          	j	10eb8 <_vfprintf_r+0x2a4>
   11748:	00013583          	ld	a1,0(sp)
   1174c:	11010613          	addi	a2,sp,272
   11750:	000a8513          	mv	a0,s5
   11754:	09e13023          	sd	t5,128(sp)
   11758:	07d13023          	sd	t4,96(sp)
   1175c:	5500a0ef          	jal	ra,1bcac <__sprint_r>
   11760:	f4051263          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11764:	12013783          	ld	a5,288(sp)
   11768:	19010313          	addi	t1,sp,400
   1176c:	08013f03          	ld	t5,128(sp)
   11770:	06013e83          	ld	t4,96(sp)
   11774:	eedff06f          	j	11660 <_vfprintf_r+0xa4c>
   11778:	11812603          	lw	a2,280(sp)
   1177c:	04813703          	ld	a4,72(sp)
   11780:	05813683          	ld	a3,88(sp)
   11784:	01030313          	addi	t1,t1,16
   11788:	00f707b3          	add	a5,a4,a5
   1178c:	fed33823          	sd	a3,-16(t1)
   11790:	0016069b          	addiw	a3,a2,1
   11794:	fee33c23          	sd	a4,-8(t1)
   11798:	12f13023          	sd	a5,288(sp)
   1179c:	10d12c23          	sw	a3,280(sp)
   117a0:	00700613          	li	a2,7
   117a4:	02d65463          	bge	a2,a3,117cc <_vfprintf_r+0xbb8>
   117a8:	00013583          	ld	a1,0(sp)
   117ac:	11010613          	addi	a2,sp,272
   117b0:	000a8513          	mv	a0,s5
   117b4:	4f80a0ef          	jal	ra,1bcac <__sprint_r>
   117b8:	ee051663          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   117bc:	0e812583          	lw	a1,232(sp)
   117c0:	12013783          	ld	a5,288(sp)
   117c4:	11812683          	lw	a3,280(sp)
   117c8:	19010313          	addi	t1,sp,400
   117cc:	0005d463          	bgez	a1,117d4 <_vfprintf_r+0xbc0>
   117d0:	7a40106f          	j	12f74 <_vfprintf_r+0x2360>
   117d4:	02813703          	ld	a4,40(sp)
   117d8:	0016861b          	addiw	a2,a3,1
   117dc:	01b33023          	sd	s11,0(t1)
   117e0:	00f707b3          	add	a5,a4,a5
   117e4:	00e33423          	sd	a4,8(t1)
   117e8:	12f13023          	sd	a5,288(sp)
   117ec:	10c12c23          	sw	a2,280(sp)
   117f0:	00700713          	li	a4,7
   117f4:	eec750e3          	bge	a4,a2,116d4 <_vfprintf_r+0xac0>
   117f8:	00013583          	ld	a1,0(sp)
   117fc:	11010613          	addi	a2,sp,272
   11800:	000a8513          	mv	a0,s5
   11804:	4a80a0ef          	jal	ra,1bcac <__sprint_r>
   11808:	e8051e63          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   1180c:	12013783          	ld	a5,288(sp)
   11810:	19010313          	addi	t1,sp,400
   11814:	ec5ff06f          	j	116d8 <_vfprintf_r+0xac4>
   11818:	01013783          	ld	a5,16(sp)
   1181c:	00094403          	lbu	s0,0(s2)
   11820:	0007a983          	lw	s3,0(a5)
   11824:	00878793          	addi	a5,a5,8
   11828:	00f13823          	sd	a5,16(sp)
   1182c:	da09d263          	bgez	s3,10dd0 <_vfprintf_r+0x1bc>
   11830:	413009bb          	negw	s3,s3
   11834:	835ff06f          	j	11068 <_vfprintf_r+0x454>
   11838:	000a8513          	mv	a0,s5
   1183c:	788050ef          	jal	ra,16fc4 <_localeconv_r>
   11840:	00853783          	ld	a5,8(a0)
   11844:	00078513          	mv	a0,a5
   11848:	06f13823          	sd	a5,112(sp)
   1184c:	2b1070ef          	jal	ra,192fc <strlen>
   11850:	08a13423          	sd	a0,136(sp)
   11854:	00050413          	mv	s0,a0
   11858:	000a8513          	mv	a0,s5
   1185c:	768050ef          	jal	ra,16fc4 <_localeconv_r>
   11860:	01053783          	ld	a5,16(a0)
   11864:	06f13c23          	sd	a5,120(sp)
   11868:	22040ee3          	beqz	s0,122a4 <_vfprintf_r+0x1690>
   1186c:	00094403          	lbu	s0,0(s2)
   11870:	d6078063          	beqz	a5,10dd0 <_vfprintf_r+0x1bc>
   11874:	0007c783          	lbu	a5,0(a5)
   11878:	d4078c63          	beqz	a5,10dd0 <_vfprintf_r+0x1bc>
   1187c:	4004e493          	ori	s1,s1,1024
   11880:	0004849b          	sext.w	s1,s1
   11884:	d4cff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11888:	0014e493          	ori	s1,s1,1
   1188c:	0004849b          	sext.w	s1,s1
   11890:	00094403          	lbu	s0,0(s2)
   11894:	d3cff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11898:	0df14783          	lbu	a5,223(sp)
   1189c:	00094403          	lbu	s0,0(s2)
   118a0:	d2079863          	bnez	a5,10dd0 <_vfprintf_r+0x1bc>
   118a4:	02000793          	li	a5,32
   118a8:	0cf10fa3          	sb	a5,223(sp)
   118ac:	d24ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   118b0:	01013703          	ld	a4,16(sp)
   118b4:	0204f793          	andi	a5,s1,32
   118b8:	000c8313          	mv	t1,s9
   118bc:	00870713          	addi	a4,a4,8
   118c0:	1e079ce3          	bnez	a5,122b8 <_vfprintf_r+0x16a4>
   118c4:	0104f793          	andi	a5,s1,16
   118c8:	1e0798e3          	bnez	a5,122b8 <_vfprintf_r+0x16a4>
   118cc:	01013683          	ld	a3,16(sp)
   118d0:	0404f793          	andi	a5,s1,64
   118d4:	0006ab03          	lw	s6,0(a3)
   118d8:	5a0786e3          	beqz	a5,12684 <_vfprintf_r+0x1a70>
   118dc:	030b1b13          	slli	s6,s6,0x30
   118e0:	030b5b13          	srli	s6,s6,0x30
   118e4:	00e13823          	sd	a4,16(sp)
   118e8:	00048a13          	mv	s4,s1
   118ec:	00100793          	li	a5,1
   118f0:	e70ff06f          	j	10f60 <_vfprintf_r+0x34c>
   118f4:	0204e493          	ori	s1,s1,32
   118f8:	0004849b          	sext.w	s1,s1
   118fc:	00094403          	lbu	s0,0(s2)
   11900:	cd0ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   11904:	01013703          	ld	a4,16(sp)
   11908:	ffff87b7          	lui	a5,0xffff8
   1190c:	8307c793          	xori	a5,a5,-2000
   11910:	0ef11023          	sh	a5,224(sp)
   11914:	00870793          	addi	a5,a4,8
   11918:	0024e813          	ori	a6,s1,2
   1191c:	00f13823          	sd	a5,16(sp)
   11920:	00010797          	auipc	a5,0x10
   11924:	2a078793          	addi	a5,a5,672 # 21bc0 <zeroes.4539+0x68>
   11928:	04f13823          	sd	a5,80(sp)
   1192c:	000c8313          	mv	t1,s9
   11930:	00073b03          	ld	s6,0(a4)
   11934:	00080a1b          	sext.w	s4,a6
   11938:	00200793          	li	a5,2
   1193c:	07800413          	li	s0,120
   11940:	e20ff06f          	j	10f60 <_vfprintf_r+0x34c>
   11944:	01013703          	ld	a4,16(sp)
   11948:	0204f793          	andi	a5,s1,32
   1194c:	000c8313          	mv	t1,s9
   11950:	00870713          	addi	a4,a4,8
   11954:	ac0798e3          	bnez	a5,11424 <_vfprintf_r+0x810>
   11958:	0104f793          	andi	a5,s1,16
   1195c:	ac0794e3          	bnez	a5,11424 <_vfprintf_r+0x810>
   11960:	01013683          	ld	a3,16(sp)
   11964:	0404f793          	andi	a5,s1,64
   11968:	0006ab03          	lw	s6,0(a3)
   1196c:	500782e3          	beqz	a5,12670 <_vfprintf_r+0x1a5c>
   11970:	030b1b13          	slli	s6,s6,0x30
   11974:	030b5b13          	srli	s6,s6,0x30
   11978:	00e13823          	sd	a4,16(sp)
   1197c:	ab5ff06f          	j	11430 <_vfprintf_r+0x81c>
   11980:	01013683          	ld	a3,16(sp)
   11984:	0204f793          	andi	a5,s1,32
   11988:	000c8313          	mv	t1,s9
   1198c:	0006b703          	ld	a4,0(a3)
   11990:	00868693          	addi	a3,a3,8
   11994:	00d13823          	sd	a3,16(sp)
   11998:	0e079ee3          	bnez	a5,12294 <_vfprintf_r+0x1680>
   1199c:	0104f793          	andi	a5,s1,16
   119a0:	0e079ae3          	bnez	a5,12294 <_vfprintf_r+0x1680>
   119a4:	0404f793          	andi	a5,s1,64
   119a8:	00078463          	beqz	a5,119b0 <_vfprintf_r+0xd9c>
   119ac:	01c0106f          	j	129c8 <_vfprintf_r+0x1db4>
   119b0:	2004f493          	andi	s1,s1,512
   119b4:	00813783          	ld	a5,8(sp)
   119b8:	00049463          	bnez	s1,119c0 <_vfprintf_r+0xdac>
   119bc:	7980106f          	j	13154 <_vfprintf_r+0x2540>
   119c0:	00f70023          	sb	a5,0(a4)
   119c4:	00090d93          	mv	s11,s2
   119c8:	d5dff06f          	j	11724 <_vfprintf_r+0xb10>
   119cc:	00094403          	lbu	s0,0(s2)
   119d0:	06c00793          	li	a5,108
   119d4:	16f40ee3          	beq	s0,a5,12350 <_vfprintf_r+0x173c>
   119d8:	0104e493          	ori	s1,s1,16
   119dc:	0004849b          	sext.w	s1,s1
   119e0:	bf0ff06f          	j	10dd0 <_vfprintf_r+0x1bc>
   119e4:	03013503          	ld	a0,48(sp)
   119e8:	39c020ef          	jal	ra,13d84 <__sinit>
   119ec:	aa0ff06f          	j	10c8c <_vfprintf_r+0x78>
   119f0:	00048a13          	mv	s4,s1
   119f4:	00900793          	li	a5,9
   119f8:	3167e4e3          	bltu	a5,s6,12500 <_vfprintf_r+0x18ec>
   119fc:	030b0b1b          	addiw	s6,s6,48
   11a00:	196105a3          	sb	s6,395(sp)
   11a04:	000a0493          	mv	s1,s4
   11a08:	00100c93          	li	s9,1
   11a0c:	18b10d93          	addi	s11,sp,395
   11a10:	d84ff06f          	j	10f94 <_vfprintf_r+0x380>
   11a14:	0ff00793          	li	a5,255
   11a18:	34f686e3          	beq	a3,a5,12564 <_vfprintf_r+0x1950>
   11a1c:	00900793          	li	a5,9
   11a20:	7537e6e3          	bltu	a5,s3,1296c <_vfprintf_r+0x1d58>
   11a24:	07213c23          	sd	s2,120(sp)
   11a28:	000a8313          	mv	t1,s5
   11a2c:	03813983          	ld	s3,56(sp)
   11a30:	000c8a93          	mv	s5,s9
   11a34:	01813903          	ld	s2,24(sp)
   11a38:	000d8c93          	mv	s9,s11
   11a3c:	00040d93          	mv	s11,s0
   11a40:	02013403          	ld	s0,32(sp)
   11a44:	02913423          	sd	s1,40(sp)
   11a48:	41bc8cbb          	subw	s9,s9,s11
   11a4c:	000a0493          	mv	s1,s4
   11a50:	d44ff06f          	j	10f94 <_vfprintf_r+0x380>
   11a54:	06500693          	li	a3,101
   11a58:	2e86d063          	bge	a3,s0,11d38 <_vfprintf_r+0x1124>
   11a5c:	10013503          	ld	a0,256(sp)
   11a60:	10813583          	ld	a1,264(sp)
   11a64:	00000613          	li	a2,0
   11a68:	00000693          	li	a3,0
   11a6c:	08613023          	sd	t1,128(sp)
   11a70:	06f13023          	sd	a5,96(sp)
   11a74:	0790e0ef          	jal	ra,202ec <__eqtf2>
   11a78:	06013783          	ld	a5,96(sp)
   11a7c:	08013303          	ld	t1,128(sp)
   11a80:	60051063          	bnez	a0,12080 <_vfprintf_r+0x146c>
   11a84:	11812703          	lw	a4,280(sp)
   11a88:	00010697          	auipc	a3,0x10
   11a8c:	17068693          	addi	a3,a3,368 # 21bf8 <zeroes.4539+0xa0>
   11a90:	00178793          	addi	a5,a5,1
   11a94:	0017071b          	addiw	a4,a4,1
   11a98:	00d33023          	sd	a3,0(t1)
   11a9c:	00100693          	li	a3,1
   11aa0:	00d33423          	sd	a3,8(t1)
   11aa4:	12f13023          	sd	a5,288(sp)
   11aa8:	0007069b          	sext.w	a3,a4
   11aac:	10e12c23          	sw	a4,280(sp)
   11ab0:	00700793          	li	a5,7
   11ab4:	01030313          	addi	t1,t1,16
   11ab8:	2cd7c4e3          	blt	a5,a3,12580 <_vfprintf_r+0x196c>
   11abc:	0e812783          	lw	a5,232(sp)
   11ac0:	02813703          	ld	a4,40(sp)
   11ac4:	00e7ca63          	blt	a5,a4,11ad8 <_vfprintf_r+0xec4>
   11ac8:	0014f793          	andi	a5,s1,1
   11acc:	00079663          	bnez	a5,11ad8 <_vfprintf_r+0xec4>
   11ad0:	12013783          	ld	a5,288(sp)
   11ad4:	c05ff06f          	j	116d8 <_vfprintf_r+0xac4>
   11ad8:	05813783          	ld	a5,88(sp)
   11adc:	04813683          	ld	a3,72(sp)
   11ae0:	11812703          	lw	a4,280(sp)
   11ae4:	00f33023          	sd	a5,0(t1)
   11ae8:	12013783          	ld	a5,288(sp)
   11aec:	0017071b          	addiw	a4,a4,1
   11af0:	00d33423          	sd	a3,8(t1)
   11af4:	00f687b3          	add	a5,a3,a5
   11af8:	10e12c23          	sw	a4,280(sp)
   11afc:	0007069b          	sext.w	a3,a4
   11b00:	12f13023          	sd	a5,288(sp)
   11b04:	00700713          	li	a4,7
   11b08:	01030313          	addi	t1,t1,16
   11b0c:	06d746e3          	blt	a4,a3,12378 <_vfprintf_r+0x1764>
   11b10:	02813703          	ld	a4,40(sp)
   11b14:	fff7041b          	addiw	s0,a4,-1
   11b18:	bc8050e3          	blez	s0,116d8 <_vfprintf_r+0xac4>
   11b1c:	11812703          	lw	a4,280(sp)
   11b20:	288d50e3          	bge	s10,s0,125a0 <_vfprintf_r+0x198c>
   11b24:	00700c93          	li	s9,7
   11b28:	00013b03          	ld	s6,0(sp)
   11b2c:	00c0006f          	j	11b38 <_vfprintf_r+0xf24>
   11b30:	ff04041b          	addiw	s0,s0,-16
   11b34:	268d56e3          	bge	s10,s0,125a0 <_vfprintf_r+0x198c>
   11b38:	0017071b          	addiw	a4,a4,1
   11b3c:	01078793          	addi	a5,a5,16
   11b40:	01833023          	sd	s8,0(t1)
   11b44:	01a33423          	sd	s10,8(t1)
   11b48:	12f13023          	sd	a5,288(sp)
   11b4c:	10e12c23          	sw	a4,280(sp)
   11b50:	01030313          	addi	t1,t1,16
   11b54:	fcecdee3          	bge	s9,a4,11b30 <_vfprintf_r+0xf1c>
   11b58:	11010613          	addi	a2,sp,272
   11b5c:	000b0593          	mv	a1,s6
   11b60:	000a8513          	mv	a0,s5
   11b64:	1480a0ef          	jal	ra,1bcac <__sprint_r>
   11b68:	b2051e63          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11b6c:	12013783          	ld	a5,288(sp)
   11b70:	11812703          	lw	a4,280(sp)
   11b74:	19010313          	addi	t1,sp,400
   11b78:	fb9ff06f          	j	11b30 <_vfprintf_r+0xf1c>
   11b7c:	41498b3b          	subw	s6,s3,s4
   11b80:	b36050e3          	blez	s6,116a0 <_vfprintf_r+0xa8c>
   11b84:	11812683          	lw	a3,280(sp)
   11b88:	096d5a63          	bge	s10,s6,11c1c <_vfprintf_r+0x1008>
   11b8c:	000b0713          	mv	a4,s6
   11b90:	06813023          	sd	s0,96(sp)
   11b94:	000a0b13          	mv	s6,s4
   11b98:	00700893          	li	a7,7
   11b9c:	00098a13          	mv	s4,s3
   11ba0:	00013403          	ld	s0,0(sp)
   11ba4:	00048993          	mv	s3,s1
   11ba8:	00070493          	mv	s1,a4
   11bac:	00c0006f          	j	11bb8 <_vfprintf_r+0xfa4>
   11bb0:	ff04849b          	addiw	s1,s1,-16
   11bb4:	049d5863          	bge	s10,s1,11c04 <_vfprintf_r+0xff0>
   11bb8:	0016869b          	addiw	a3,a3,1
   11bbc:	01078793          	addi	a5,a5,16
   11bc0:	01833023          	sd	s8,0(t1)
   11bc4:	01a33423          	sd	s10,8(t1)
   11bc8:	12f13023          	sd	a5,288(sp)
   11bcc:	10d12c23          	sw	a3,280(sp)
   11bd0:	01030313          	addi	t1,t1,16
   11bd4:	fcd8dee3          	bge	a7,a3,11bb0 <_vfprintf_r+0xf9c>
   11bd8:	11010613          	addi	a2,sp,272
   11bdc:	00040593          	mv	a1,s0
   11be0:	000a8513          	mv	a0,s5
   11be4:	0c80a0ef          	jal	ra,1bcac <__sprint_r>
   11be8:	aa051e63          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11bec:	ff04849b          	addiw	s1,s1,-16
   11bf0:	12013783          	ld	a5,288(sp)
   11bf4:	11812683          	lw	a3,280(sp)
   11bf8:	19010313          	addi	t1,sp,400
   11bfc:	00700893          	li	a7,7
   11c00:	fa9d4ce3          	blt	s10,s1,11bb8 <_vfprintf_r+0xfa4>
   11c04:	06013403          	ld	s0,96(sp)
   11c08:	00048713          	mv	a4,s1
   11c0c:	00098493          	mv	s1,s3
   11c10:	000a0993          	mv	s3,s4
   11c14:	000b0a13          	mv	s4,s6
   11c18:	00070b13          	mv	s6,a4
   11c1c:	0016861b          	addiw	a2,a3,1
   11c20:	016787b3          	add	a5,a5,s6
   11c24:	01833023          	sd	s8,0(t1)
   11c28:	01633423          	sd	s6,8(t1)
   11c2c:	12f13023          	sd	a5,288(sp)
   11c30:	10c12c23          	sw	a2,280(sp)
   11c34:	00700693          	li	a3,7
   11c38:	01030313          	addi	t1,t1,16
   11c3c:	a6c6d2e3          	bge	a3,a2,116a0 <_vfprintf_r+0xa8c>
   11c40:	00013583          	ld	a1,0(sp)
   11c44:	11010613          	addi	a2,sp,272
   11c48:	000a8513          	mv	a0,s5
   11c4c:	0600a0ef          	jal	ra,1bcac <__sprint_r>
   11c50:	a4051a63          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11c54:	12013783          	ld	a5,288(sp)
   11c58:	19010313          	addi	t1,sp,400
   11c5c:	a45ff06f          	j	116a0 <_vfprintf_r+0xa8c>
   11c60:	11812683          	lw	a3,280(sp)
   11c64:	097d5863          	bge	s10,s7,11cf4 <_vfprintf_r+0x10e0>
   11c68:	000a0713          	mv	a4,s4
   11c6c:	06813023          	sd	s0,96(sp)
   11c70:	00098a13          	mv	s4,s3
   11c74:	00700b13          	li	s6,7
   11c78:	00048993          	mv	s3,s1
   11c7c:	00013403          	ld	s0,0(sp)
   11c80:	000b8493          	mv	s1,s7
   11c84:	00070b93          	mv	s7,a4
   11c88:	00c0006f          	j	11c94 <_vfprintf_r+0x1080>
   11c8c:	ff04849b          	addiw	s1,s1,-16
   11c90:	049d5663          	bge	s10,s1,11cdc <_vfprintf_r+0x10c8>
   11c94:	0016869b          	addiw	a3,a3,1
   11c98:	01078793          	addi	a5,a5,16
   11c9c:	01833023          	sd	s8,0(t1)
   11ca0:	01a33423          	sd	s10,8(t1)
   11ca4:	12f13023          	sd	a5,288(sp)
   11ca8:	10d12c23          	sw	a3,280(sp)
   11cac:	01030313          	addi	t1,t1,16
   11cb0:	fcdb5ee3          	bge	s6,a3,11c8c <_vfprintf_r+0x1078>
   11cb4:	11010613          	addi	a2,sp,272
   11cb8:	00040593          	mv	a1,s0
   11cbc:	000a8513          	mv	a0,s5
   11cc0:	7ed090ef          	jal	ra,1bcac <__sprint_r>
   11cc4:	9e051063          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11cc8:	ff04849b          	addiw	s1,s1,-16
   11ccc:	12013783          	ld	a5,288(sp)
   11cd0:	11812683          	lw	a3,280(sp)
   11cd4:	19010313          	addi	t1,sp,400
   11cd8:	fa9d4ee3          	blt	s10,s1,11c94 <_vfprintf_r+0x1080>
   11cdc:	06013403          	ld	s0,96(sp)
   11ce0:	000b8713          	mv	a4,s7
   11ce4:	00048b93          	mv	s7,s1
   11ce8:	00098493          	mv	s1,s3
   11cec:	000a0993          	mv	s3,s4
   11cf0:	00070a13          	mv	s4,a4
   11cf4:	0016861b          	addiw	a2,a3,1
   11cf8:	017787b3          	add	a5,a5,s7
   11cfc:	01833023          	sd	s8,0(t1)
   11d00:	01733423          	sd	s7,8(t1)
   11d04:	12f13023          	sd	a5,288(sp)
   11d08:	10c12c23          	sw	a2,280(sp)
   11d0c:	00700693          	li	a3,7
   11d10:	01030313          	addi	t1,t1,16
   11d14:	98c6dae3          	bge	a3,a2,116a8 <_vfprintf_r+0xa94>
   11d18:	00013583          	ld	a1,0(sp)
   11d1c:	11010613          	addi	a2,sp,272
   11d20:	000a8513          	mv	a0,s5
   11d24:	789090ef          	jal	ra,1bcac <__sprint_r>
   11d28:	96051e63          	bnez	a0,10ea4 <_vfprintf_r+0x290>
   11d2c:	12013783          	ld	a5,288(sp)
   11d30:	19010313          	addi	t1,sp,400
   11d34:	975ff06f          	j	116a8 <_vfprintf_r+0xa94>
   11d38:	11812583          	lw	a1,280(sp)
   11d3c:	02813703          	ld	a4,40(sp)
   11d40:	00178c93          	addi	s9,a5,1
   11d44:	00100613          	li	a2,1
   11d48:	0015879b          	addiw	a5,a1,1
   11d4c:	01b33023          	sd	s11,0(t1)
   11d50:	00078693          	mv	a3,a5
   11d54:	01030413          	addi	s0,t1,16
   11d58:	48e65c63          	bge	a2,a4,121f0 <_vfprintf_r+0x15dc>
   11d5c:	00100613          	li	a2,1
   11d60:	10d12c23          	sw	a3,280(sp)
   11d64:	00c33423          	sd	a2,8(t1)
   11d68:	13913023          	sd	s9,288(sp)
   11d6c:	00700693          	li	a3,7
   11d70:	6cf6c063          	blt	a3,a5,12430 <_vfprintf_r+0x181c>
   11d74:	0017869b          	addiw	a3,a5,1
   11d78:	04813783          	ld	a5,72(sp)
   11d7c:	05813703          	ld	a4,88(sp)
   11d80:	10d12c23          	sw	a3,280(sp)
   11d84:	00fc8cb3          	add	s9,s9,a5
   11d88:	00f43423          	sd	a5,8(s0)
   11d8c:	00e43023          	sd	a4,0(s0)
   11d90:	0006879b          	sext.w	a5,a3
   11d94:	13913023          	sd	s9,288(sp)
   11d98:	00700693          	li	a3,7
   11d9c:	01040413          	addi	s0,s0,16
   11da0:	6af6cc63          	blt	a3,a5,12458 <_vfprintf_r+0x1844>
   11da4:	0017889b          	addiw	a7,a5,1
   11da8:	04f13023          	sd	a5,64(sp)
   11dac:	10013503          	ld	a0,256(sp)
   11db0:	02813783          	ld	a5,40(sp)
   11db4:	10813583          	ld	a1,264(sp)
   11db8:	01040313          	addi	t1,s0,16
   11dbc:	00000613          	li	a2,0
   11dc0:	00000693          	li	a3,0
   11dc4:	00088b1b          	sext.w	s6,a7
   11dc8:	03113c23          	sd	a7,56(sp)
   11dcc:	02613023          	sd	t1,32(sp)
   11dd0:	fff78b9b          	addiw	s7,a5,-1
   11dd4:	5180e0ef          	jal	ra,202ec <__eqtf2>
   11dd8:	02013303          	ld	t1,32(sp)
   11ddc:	03813883          	ld	a7,56(sp)
   11de0:	42050c63          	beqz	a0,12218 <_vfprintf_r+0x1604>
   11de4:	001d8713          	addi	a4,s11,1
   11de8:	017c8cb3          	add	s9,s9,s7
   11dec:	00e43023          	sd	a4,0(s0)
   11df0:	01743423          	sd	s7,8(s0)
   11df4:	13913023          	sd	s9,288(sp)
   11df8:	11112c23          	sw	a7,280(sp)
   11dfc:	00700713          	li	a4,7
   11e00:	53674063          	blt	a4,s6,12320 <_vfprintf_r+0x170c>
   11e04:	04013783          	ld	a5,64(sp)
   11e08:	02040713          	addi	a4,s0,32
   11e0c:	00030413          	mv	s0,t1
   11e10:	00278b1b          	addiw	s6,a5,2
   11e14:	00070313          	mv	t1,a4
   11e18:	06813683          	ld	a3,104(sp)
   11e1c:	0f010713          	addi	a4,sp,240
   11e20:	00e43023          	sd	a4,0(s0)
   11e24:	00dc87b3          	add	a5,s9,a3
   11e28:	00d43423          	sd	a3,8(s0)
   11e2c:	12f13023          	sd	a5,288(sp)
   11e30:	11612c23          	sw	s6,280(sp)
   11e34:	00700713          	li	a4,7
   11e38:	8b6750e3          	bge	a4,s6,116d8 <_vfprintf_r+0xac4>
   11e3c:	9bdff06f          	j	117f8 <_vfprintf_r+0xbe4>
   11e40:	00048a13          	mv	s4,s1
   11e44:	f20ff06f          	j	11564 <_vfprintf_r+0x950>
   11e48:	11812683          	lw	a3,280(sp)
   11e4c:	00010b17          	auipc	s6,0x10
   11e50:	cfcb0b13          	addi	s6,s6,-772 # 21b48 <blanks.4538>
   11e54:	0b0d5863          	bge	s10,a6,11f04 <_vfprintf_r+0x12f0>
   11e58:	09213823          	sd	s2,144(sp)
   11e5c:	08813c23          	sd	s0,152(sp)
   11e60:	000b0913          	mv	s2,s6
   11e64:	00700f93          	li	t6,7
   11e68:	000a0b13          	mv	s6,s4
   11e6c:	07d13023          	sd	t4,96(sp)
   11e70:	00098a13          	mv	s4,s3
   11e74:	09e13023          	sd	t5,128(sp)
   11e78:	00048993          	mv	s3,s1
   11e7c:	00080413          	mv	s0,a6
   11e80:	00013483          	ld	s1,0(sp)
   11e84:	00c0006f          	j	11e90 <_vfprintf_r+0x127c>
   11e88:	ff04041b          	addiw	s0,s0,-16
   11e8c:	048d5a63          	bge	s10,s0,11ee0 <_vfprintf_r+0x12cc>
   11e90:	0016869b          	addiw	a3,a3,1
   11e94:	01078793          	addi	a5,a5,16
   11e98:	01233023          	sd	s2,0(t1)
   11e9c:	01a33423          	sd	s10,8(t1)
   11ea0:	12f13023          	sd	a5,288(sp)
   11ea4:	10d12c23          	sw	a3,280(sp)
   11ea8:	01030313          	addi	t1,t1,16
   11eac:	fcdfdee3          	bge	t6,a3,11e88 <_vfprintf_r+0x1274>
   11eb0:	11010613          	addi	a2,sp,272
   11eb4:	00048593          	mv	a1,s1
   11eb8:	000a8513          	mv	a0,s5
   11ebc:	5f1090ef          	jal	ra,1bcac <__sprint_r>
   11ec0:	00050463          	beqz	a0,11ec8 <_vfprintf_r+0x12b4>
   11ec4:	fe1fe06f          	j	10ea4 <_vfprintf_r+0x290>
   11ec8:	ff04041b          	addiw	s0,s0,-16
   11ecc:	12013783          	ld	a5,288(sp)
   11ed0:	11812683          	lw	a3,280(sp)
   11ed4:	19010313          	addi	t1,sp,400
   11ed8:	00700f93          	li	t6,7
   11edc:	fa8d4ae3          	blt	s10,s0,11e90 <_vfprintf_r+0x127c>
   11ee0:	00098493          	mv	s1,s3
   11ee4:	00040813          	mv	a6,s0
   11ee8:	000a0993          	mv	s3,s4
   11eec:	06013e83          	ld	t4,96(sp)
   11ef0:	000b0a13          	mv	s4,s6
   11ef4:	08013f03          	ld	t5,128(sp)
   11ef8:	00090b13          	mv	s6,s2
   11efc:	09813403          	ld	s0,152(sp)
   11f00:	09013903          	ld	s2,144(sp)
   11f04:	0016861b          	addiw	a2,a3,1
   11f08:	010787b3          	add	a5,a5,a6
   11f0c:	01633023          	sd	s6,0(t1)
   11f10:	01033423          	sd	a6,8(t1)
   11f14:	12f13023          	sd	a5,288(sp)
   11f18:	10c12c23          	sw	a2,280(sp)
   11f1c:	00700693          	li	a3,7
   11f20:	01030313          	addi	t1,t1,16
   11f24:	f0c6d063          	bge	a3,a2,11624 <_vfprintf_r+0xa10>
   11f28:	00013583          	ld	a1,0(sp)
   11f2c:	11010613          	addi	a2,sp,272
   11f30:	000a8513          	mv	a0,s5
   11f34:	09e13023          	sd	t5,128(sp)
   11f38:	07d13023          	sd	t4,96(sp)
   11f3c:	571090ef          	jal	ra,1bcac <__sprint_r>
   11f40:	00050463          	beqz	a0,11f48 <_vfprintf_r+0x1334>
   11f44:	f61fe06f          	j	10ea4 <_vfprintf_r+0x290>
   11f48:	12013783          	ld	a5,288(sp)
   11f4c:	19010313          	addi	t1,sp,400
   11f50:	08013f03          	ld	t5,128(sp)
   11f54:	06013e83          	ld	t4,96(sp)
   11f58:	eccff06f          	j	11624 <_vfprintf_r+0xa10>
   11f5c:	00013583          	ld	a1,0(sp)
   11f60:	11010613          	addi	a2,sp,272
   11f64:	000a8513          	mv	a0,s5
   11f68:	07e13023          	sd	t5,96(sp)
   11f6c:	541090ef          	jal	ra,1bcac <__sprint_r>
   11f70:	00050463          	beqz	a0,11f78 <_vfprintf_r+0x1364>
   11f74:	f31fe06f          	j	10ea4 <_vfprintf_r+0x290>
   11f78:	12013783          	ld	a5,288(sp)
   11f7c:	19010313          	addi	t1,sp,400
   11f80:	06013f03          	ld	t5,96(sp)
   11f84:	f14ff06f          	j	11698 <_vfprintf_r+0xa84>
   11f88:	11812703          	lw	a4,280(sp)
   11f8c:	00010b17          	auipc	s6,0x10
   11f90:	bbcb0b13          	addi	s6,s6,-1092 # 21b48 <blanks.4538>
   11f94:	068d5263          	bge	s10,s0,11ff8 <_vfprintf_r+0x13e4>
   11f98:	00700493          	li	s1,7
   11f9c:	00013b83          	ld	s7,0(sp)
   11fa0:	00c0006f          	j	11fac <_vfprintf_r+0x1398>
   11fa4:	ff04041b          	addiw	s0,s0,-16
   11fa8:	048d5863          	bge	s10,s0,11ff8 <_vfprintf_r+0x13e4>
   11fac:	0017071b          	addiw	a4,a4,1
   11fb0:	01078793          	addi	a5,a5,16
   11fb4:	01633023          	sd	s6,0(t1)
   11fb8:	01a33423          	sd	s10,8(t1)
   11fbc:	12f13023          	sd	a5,288(sp)
   11fc0:	10e12c23          	sw	a4,280(sp)
   11fc4:	01030313          	addi	t1,t1,16
   11fc8:	fce4dee3          	bge	s1,a4,11fa4 <_vfprintf_r+0x1390>
   11fcc:	11010613          	addi	a2,sp,272
   11fd0:	000b8593          	mv	a1,s7
   11fd4:	000a8513          	mv	a0,s5
   11fd8:	4d5090ef          	jal	ra,1bcac <__sprint_r>
   11fdc:	00050463          	beqz	a0,11fe4 <_vfprintf_r+0x13d0>
   11fe0:	ec5fe06f          	j	10ea4 <_vfprintf_r+0x290>
   11fe4:	ff04041b          	addiw	s0,s0,-16
   11fe8:	12013783          	ld	a5,288(sp)
   11fec:	11812703          	lw	a4,280(sp)
   11ff0:	19010313          	addi	t1,sp,400
   11ff4:	fa8d4ce3          	blt	s10,s0,11fac <_vfprintf_r+0x1398>
   11ff8:	0017069b          	addiw	a3,a4,1
   11ffc:	008787b3          	add	a5,a5,s0
   12000:	01633023          	sd	s6,0(t1)
   12004:	00833423          	sd	s0,8(t1)
   12008:	12f13023          	sd	a5,288(sp)
   1200c:	10d12c23          	sw	a3,280(sp)
   12010:	00700713          	li	a4,7
   12014:	ecd75a63          	bge	a4,a3,116e8 <_vfprintf_r+0xad4>
   12018:	00013583          	ld	a1,0(sp)
   1201c:	11010613          	addi	a2,sp,272
   12020:	000a8513          	mv	a0,s5
   12024:	489090ef          	jal	ra,1bcac <__sprint_r>
   12028:	00050463          	beqz	a0,12030 <_vfprintf_r+0x141c>
   1202c:	e79fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12030:	12013783          	ld	a5,288(sp)
   12034:	eb4ff06f          	j	116e8 <_vfprintf_r+0xad4>
   12038:	00100713          	li	a4,1
   1203c:	46e782e3          	beq	a5,a4,12ca0 <_vfprintf_r+0x208c>
   12040:	00200713          	li	a4,2
   12044:	00048a13          	mv	s4,s1
   12048:	d2e79663          	bne	a5,a4,11574 <_vfprintf_r+0x960>
   1204c:	05013703          	ld	a4,80(sp)
   12050:	18c10c93          	addi	s9,sp,396
   12054:	000c8d93          	mv	s11,s9
   12058:	00fb7793          	andi	a5,s6,15
   1205c:	00f707b3          	add	a5,a4,a5
   12060:	0007c783          	lbu	a5,0(a5)
   12064:	fffd8d93          	addi	s11,s11,-1
   12068:	004b5b13          	srli	s6,s6,0x4
   1206c:	00fd8023          	sb	a5,0(s11)
   12070:	fe0b14e3          	bnez	s6,12058 <_vfprintf_r+0x1444>
   12074:	41bc8cbb          	subw	s9,s9,s11
   12078:	000a0493          	mv	s1,s4
   1207c:	f19fe06f          	j	10f94 <_vfprintf_r+0x380>
   12080:	0e812583          	lw	a1,232(sp)
   12084:	3eb05e63          	blez	a1,12480 <_vfprintf_r+0x186c>
   12088:	02813703          	ld	a4,40(sp)
   1208c:	02013683          	ld	a3,32(sp)
   12090:	0007041b          	sext.w	s0,a4
   12094:	24e6ce63          	blt	a3,a4,122f0 <_vfprintf_r+0x16dc>
   12098:	02805663          	blez	s0,120c4 <_vfprintf_r+0x14b0>
   1209c:	11812683          	lw	a3,280(sp)
   120a0:	008787b3          	add	a5,a5,s0
   120a4:	01b33023          	sd	s11,0(t1)
   120a8:	0016861b          	addiw	a2,a3,1
   120ac:	00833423          	sd	s0,8(t1)
   120b0:	12f13023          	sd	a5,288(sp)
   120b4:	10c12c23          	sw	a2,280(sp)
   120b8:	00700693          	li	a3,7
   120bc:	01030313          	addi	t1,t1,16
   120c0:	08c6c0e3          	blt	a3,a2,12940 <_vfprintf_r+0x1d2c>
   120c4:	fff44693          	not	a3,s0
   120c8:	02013703          	ld	a4,32(sp)
   120cc:	43f6d693          	srai	a3,a3,0x3f
   120d0:	00d47433          	and	s0,s0,a3
   120d4:	4087043b          	subw	s0,a4,s0
   120d8:	2e804663          	bgtz	s0,123c4 <_vfprintf_r+0x17b0>
   120dc:	02013703          	ld	a4,32(sp)
   120e0:	4004f693          	andi	a3,s1,1024
   120e4:	00ed8bb3          	add	s7,s11,a4
   120e8:	64069c63          	bnez	a3,12740 <_vfprintf_r+0x1b2c>
   120ec:	0e812403          	lw	s0,232(sp)
   120f0:	02813703          	ld	a4,40(sp)
   120f4:	00e44663          	blt	s0,a4,12100 <_vfprintf_r+0x14ec>
   120f8:	0014f693          	andi	a3,s1,1
   120fc:	0a0686e3          	beqz	a3,129a8 <_vfprintf_r+0x1d94>
   12100:	05813683          	ld	a3,88(sp)
   12104:	04813703          	ld	a4,72(sp)
   12108:	01030313          	addi	t1,t1,16
   1210c:	fed33823          	sd	a3,-16(t1)
   12110:	11812683          	lw	a3,280(sp)
   12114:	00e787b3          	add	a5,a5,a4
   12118:	fee33c23          	sd	a4,-8(t1)
   1211c:	0016861b          	addiw	a2,a3,1
   12120:	12f13023          	sd	a5,288(sp)
   12124:	10c12c23          	sw	a2,280(sp)
   12128:	00700693          	li	a3,7
   1212c:	52c6c0e3          	blt	a3,a2,12e4c <_vfprintf_r+0x2238>
   12130:	02813703          	ld	a4,40(sp)
   12134:	4087063b          	subw	a2,a4,s0
   12138:	00ed8733          	add	a4,s11,a4
   1213c:	4177073b          	subw	a4,a4,s7
   12140:	00060413          	mv	s0,a2
   12144:	00c75463          	bge	a4,a2,1214c <_vfprintf_r+0x1538>
   12148:	0007041b          	sext.w	s0,a4
   1214c:	02805663          	blez	s0,12178 <_vfprintf_r+0x1564>
   12150:	11812703          	lw	a4,280(sp)
   12154:	008787b3          	add	a5,a5,s0
   12158:	01733023          	sd	s7,0(t1)
   1215c:	0017069b          	addiw	a3,a4,1
   12160:	00833423          	sd	s0,8(t1)
   12164:	12f13023          	sd	a5,288(sp)
   12168:	10d12c23          	sw	a3,280(sp)
   1216c:	00700713          	li	a4,7
   12170:	01030313          	addi	t1,t1,16
   12174:	56d748e3          	blt	a4,a3,12ee4 <_vfprintf_r+0x22d0>
   12178:	fff44713          	not	a4,s0
   1217c:	43f75713          	srai	a4,a4,0x3f
   12180:	00e47433          	and	s0,s0,a4
   12184:	4086043b          	subw	s0,a2,s0
   12188:	d4805863          	blez	s0,116d8 <_vfprintf_r+0xac4>
   1218c:	11812703          	lw	a4,280(sp)
   12190:	408d5863          	bge	s10,s0,125a0 <_vfprintf_r+0x198c>
   12194:	00700c93          	li	s9,7
   12198:	00013b03          	ld	s6,0(sp)
   1219c:	00c0006f          	j	121a8 <_vfprintf_r+0x1594>
   121a0:	ff04041b          	addiw	s0,s0,-16
   121a4:	3e8d5e63          	bge	s10,s0,125a0 <_vfprintf_r+0x198c>
   121a8:	0017071b          	addiw	a4,a4,1
   121ac:	01078793          	addi	a5,a5,16
   121b0:	01833023          	sd	s8,0(t1)
   121b4:	01a33423          	sd	s10,8(t1)
   121b8:	12f13023          	sd	a5,288(sp)
   121bc:	10e12c23          	sw	a4,280(sp)
   121c0:	01030313          	addi	t1,t1,16
   121c4:	fcecdee3          	bge	s9,a4,121a0 <_vfprintf_r+0x158c>
   121c8:	11010613          	addi	a2,sp,272
   121cc:	000b0593          	mv	a1,s6
   121d0:	000a8513          	mv	a0,s5
   121d4:	2d9090ef          	jal	ra,1bcac <__sprint_r>
   121d8:	00050463          	beqz	a0,121e0 <_vfprintf_r+0x15cc>
   121dc:	cc9fe06f          	j	10ea4 <_vfprintf_r+0x290>
   121e0:	12013783          	ld	a5,288(sp)
   121e4:	11812703          	lw	a4,280(sp)
   121e8:	19010313          	addi	t1,sp,400
   121ec:	fb5ff06f          	j	121a0 <_vfprintf_r+0x158c>
   121f0:	0014f513          	andi	a0,s1,1
   121f4:	b60514e3          	bnez	a0,11d5c <_vfprintf_r+0x1148>
   121f8:	00c33423          	sd	a2,8(t1)
   121fc:	13913023          	sd	s9,288(sp)
   12200:	10f12c23          	sw	a5,280(sp)
   12204:	00700713          	li	a4,7
   12208:	10f74c63          	blt	a4,a5,12320 <_vfprintf_r+0x170c>
   1220c:	00258b1b          	addiw	s6,a1,2
   12210:	02030313          	addi	t1,t1,32
   12214:	c05ff06f          	j	11e18 <_vfprintf_r+0x1204>
   12218:	c17050e3          	blez	s7,11e18 <_vfprintf_r+0x1204>
   1221c:	017d4463          	blt	s10,s7,12224 <_vfprintf_r+0x1610>
   12220:	0bc0106f          	j	132dc <_vfprintf_r+0x26c8>
   12224:	00700b13          	li	s6,7
   12228:	00013d83          	ld	s11,0(sp)
   1222c:	0100006f          	j	1223c <_vfprintf_r+0x1628>
   12230:	ff0b8b9b          	addiw	s7,s7,-16
   12234:	0d7d5463          	bge	s10,s7,122fc <_vfprintf_r+0x16e8>
   12238:	0017889b          	addiw	a7,a5,1
   1223c:	010c8c93          	addi	s9,s9,16
   12240:	01843023          	sd	s8,0(s0)
   12244:	01a43423          	sd	s10,8(s0)
   12248:	13913023          	sd	s9,288(sp)
   1224c:	0008879b          	sext.w	a5,a7
   12250:	11112c23          	sw	a7,280(sp)
   12254:	01040413          	addi	s0,s0,16
   12258:	fcfb5ce3          	bge	s6,a5,12230 <_vfprintf_r+0x161c>
   1225c:	11010613          	addi	a2,sp,272
   12260:	000d8593          	mv	a1,s11
   12264:	000a8513          	mv	a0,s5
   12268:	245090ef          	jal	ra,1bcac <__sprint_r>
   1226c:	00050463          	beqz	a0,12274 <_vfprintf_r+0x1660>
   12270:	c35fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12274:	12013c83          	ld	s9,288(sp)
   12278:	11812783          	lw	a5,280(sp)
   1227c:	19010413          	addi	s0,sp,400
   12280:	fb1ff06f          	j	12230 <_vfprintf_r+0x161c>
   12284:	03000793          	li	a5,48
   12288:	18f105a3          	sb	a5,395(sp)
   1228c:	18b10d93          	addi	s11,sp,395
   12290:	d05fe06f          	j	10f94 <_vfprintf_r+0x380>
   12294:	00813783          	ld	a5,8(sp)
   12298:	00090d93          	mv	s11,s2
   1229c:	00f73023          	sd	a5,0(a4)
   122a0:	c84ff06f          	j	11724 <_vfprintf_r+0xb10>
   122a4:	00094403          	lbu	s0,0(s2)
   122a8:	b29fe06f          	j	10dd0 <_vfprintf_r+0x1bc>
   122ac:	01013783          	ld	a5,16(sp)
   122b0:	0007bb03          	ld	s6,0(a5)
   122b4:	c7dfe06f          	j	10f30 <_vfprintf_r+0x31c>
   122b8:	00048a13          	mv	s4,s1
   122bc:	8b8ff06f          	j	11374 <_vfprintf_r+0x760>
   122c0:	00048a13          	mv	s4,s1
   122c4:	a74ff06f          	j	11538 <_vfprintf_r+0x924>
   122c8:	01013783          	ld	a5,16(sp)
   122cc:	01913c23          	sd	s9,24(sp)
   122d0:	0007b503          	ld	a0,0(a5)
   122d4:	00878793          	addi	a5,a5,8
   122d8:	00f13823          	sd	a5,16(sp)
   122dc:	2440f0ef          	jal	ra,21520 <__extenddftf2>
   122e0:	10a13023          	sd	a0,256(sp)
   122e4:	10b13423          	sd	a1,264(sp)
   122e8:	01813303          	ld	t1,24(sp)
   122ec:	dd9fe06f          	j	110c4 <_vfprintf_r+0x4b0>
   122f0:	0006841b          	sext.w	s0,a3
   122f4:	da8044e3          	bgtz	s0,1209c <_vfprintf_r+0x1488>
   122f8:	dcdff06f          	j	120c4 <_vfprintf_r+0x14b0>
   122fc:	00178b1b          	addiw	s6,a5,1
   12300:	01040793          	addi	a5,s0,16
   12304:	017c8cb3          	add	s9,s9,s7
   12308:	01843023          	sd	s8,0(s0)
   1230c:	01743423          	sd	s7,8(s0)
   12310:	13913023          	sd	s9,288(sp)
   12314:	11612c23          	sw	s6,280(sp)
   12318:	00700713          	li	a4,7
   1231c:	5f675063          	bge	a4,s6,128fc <_vfprintf_r+0x1ce8>
   12320:	00013583          	ld	a1,0(sp)
   12324:	11010613          	addi	a2,sp,272
   12328:	000a8513          	mv	a0,s5
   1232c:	181090ef          	jal	ra,1bcac <__sprint_r>
   12330:	00050463          	beqz	a0,12338 <_vfprintf_r+0x1724>
   12334:	b71fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12338:	11812583          	lw	a1,280(sp)
   1233c:	12013c83          	ld	s9,288(sp)
   12340:	1a010313          	addi	t1,sp,416
   12344:	00158b1b          	addiw	s6,a1,1
   12348:	19010413          	addi	s0,sp,400
   1234c:	acdff06f          	j	11e18 <_vfprintf_r+0x1204>
   12350:	0204e493          	ori	s1,s1,32
   12354:	00194403          	lbu	s0,1(s2)
   12358:	0004849b          	sext.w	s1,s1
   1235c:	00190913          	addi	s2,s2,1
   12360:	a71fe06f          	j	10dd0 <_vfprintf_r+0x1bc>
   12364:	2004e493          	ori	s1,s1,512
   12368:	00194403          	lbu	s0,1(s2)
   1236c:	0004849b          	sext.w	s1,s1
   12370:	00190913          	addi	s2,s2,1
   12374:	a5dfe06f          	j	10dd0 <_vfprintf_r+0x1bc>
   12378:	00013583          	ld	a1,0(sp)
   1237c:	11010613          	addi	a2,sp,272
   12380:	000a8513          	mv	a0,s5
   12384:	129090ef          	jal	ra,1bcac <__sprint_r>
   12388:	00050463          	beqz	a0,12390 <_vfprintf_r+0x177c>
   1238c:	b19fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12390:	12013783          	ld	a5,288(sp)
   12394:	19010313          	addi	t1,sp,400
   12398:	f78ff06f          	j	11b10 <_vfprintf_r+0xefc>
   1239c:	000b871b          	sext.w	a4,s7
   123a0:	00600793          	li	a5,6
   123a4:	000b8e13          	mv	t3,s7
   123a8:	5ae7ee63          	bltu	a5,a4,12964 <_vfprintf_r+0x1d50>
   123ac:	000e0c9b          	sext.w	s9,t3
   123b0:	000c8a13          	mv	s4,s9
   123b4:	01613823          	sd	s6,16(sp)
   123b8:	00010d97          	auipc	s11,0x10
   123bc:	838d8d93          	addi	s11,s11,-1992 # 21bf0 <zeroes.4539+0x98>
   123c0:	a2cff06f          	j	115ec <_vfprintf_r+0x9d8>
   123c4:	11812683          	lw	a3,280(sp)
   123c8:	328d5863          	bge	s10,s0,126f8 <_vfprintf_r+0x1ae4>
   123cc:	00700c93          	li	s9,7
   123d0:	00013b03          	ld	s6,0(sp)
   123d4:	00c0006f          	j	123e0 <_vfprintf_r+0x17cc>
   123d8:	ff04041b          	addiw	s0,s0,-16
   123dc:	308d5e63          	bge	s10,s0,126f8 <_vfprintf_r+0x1ae4>
   123e0:	0016869b          	addiw	a3,a3,1
   123e4:	01078793          	addi	a5,a5,16
   123e8:	01833023          	sd	s8,0(t1)
   123ec:	01a33423          	sd	s10,8(t1)
   123f0:	12f13023          	sd	a5,288(sp)
   123f4:	10d12c23          	sw	a3,280(sp)
   123f8:	01030313          	addi	t1,t1,16
   123fc:	fcdcdee3          	bge	s9,a3,123d8 <_vfprintf_r+0x17c4>
   12400:	11010613          	addi	a2,sp,272
   12404:	000b0593          	mv	a1,s6
   12408:	000a8513          	mv	a0,s5
   1240c:	0a1090ef          	jal	ra,1bcac <__sprint_r>
   12410:	00050463          	beqz	a0,12418 <_vfprintf_r+0x1804>
   12414:	a91fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12418:	12013783          	ld	a5,288(sp)
   1241c:	11812683          	lw	a3,280(sp)
   12420:	19010313          	addi	t1,sp,400
   12424:	fb5ff06f          	j	123d8 <_vfprintf_r+0x17c4>
   12428:	000d8493          	mv	s1,s11
   1242c:	981fe06f          	j	10dac <_vfprintf_r+0x198>
   12430:	00013583          	ld	a1,0(sp)
   12434:	11010613          	addi	a2,sp,272
   12438:	000a8513          	mv	a0,s5
   1243c:	071090ef          	jal	ra,1bcac <__sprint_r>
   12440:	00050463          	beqz	a0,12448 <_vfprintf_r+0x1834>
   12444:	a61fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12448:	12013c83          	ld	s9,288(sp)
   1244c:	11812783          	lw	a5,280(sp)
   12450:	19010413          	addi	s0,sp,400
   12454:	921ff06f          	j	11d74 <_vfprintf_r+0x1160>
   12458:	00013583          	ld	a1,0(sp)
   1245c:	11010613          	addi	a2,sp,272
   12460:	000a8513          	mv	a0,s5
   12464:	049090ef          	jal	ra,1bcac <__sprint_r>
   12468:	00050463          	beqz	a0,12470 <_vfprintf_r+0x185c>
   1246c:	a39fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12470:	12013c83          	ld	s9,288(sp)
   12474:	11812783          	lw	a5,280(sp)
   12478:	19010413          	addi	s0,sp,400
   1247c:	929ff06f          	j	11da4 <_vfprintf_r+0x1190>
   12480:	11812683          	lw	a3,280(sp)
   12484:	0000f617          	auipc	a2,0xf
   12488:	77460613          	addi	a2,a2,1908 # 21bf8 <zeroes.4539+0xa0>
   1248c:	00c33023          	sd	a2,0(t1)
   12490:	0016869b          	addiw	a3,a3,1
   12494:	00100613          	li	a2,1
   12498:	00178793          	addi	a5,a5,1
   1249c:	00c33423          	sd	a2,8(t1)
   124a0:	10d12c23          	sw	a3,280(sp)
   124a4:	0006861b          	sext.w	a2,a3
   124a8:	12f13023          	sd	a5,288(sp)
   124ac:	00700693          	li	a3,7
   124b0:	01030313          	addi	t1,t1,16
   124b4:	44c6cc63          	blt	a3,a2,1290c <_vfprintf_r+0x1cf8>
   124b8:	ac059063          	bnez	a1,11778 <_vfprintf_r+0xb64>
   124bc:	02813703          	ld	a4,40(sp)
   124c0:	0014f693          	andi	a3,s1,1
   124c4:	00d766b3          	or	a3,a4,a3
   124c8:	a0068863          	beqz	a3,116d8 <_vfprintf_r+0xac4>
   124cc:	11812603          	lw	a2,280(sp)
   124d0:	04813703          	ld	a4,72(sp)
   124d4:	05813683          	ld	a3,88(sp)
   124d8:	00f707b3          	add	a5,a4,a5
   124dc:	00d33023          	sd	a3,0(t1)
   124e0:	0016069b          	addiw	a3,a2,1
   124e4:	00e33423          	sd	a4,8(t1)
   124e8:	12f13023          	sd	a5,288(sp)
   124ec:	10d12c23          	sw	a3,280(sp)
   124f0:	00700613          	li	a2,7
   124f4:	aad64a63          	blt	a2,a3,117a8 <_vfprintf_r+0xb94>
   124f8:	01030313          	addi	t1,t1,16
   124fc:	ad8ff06f          	j	117d4 <_vfprintf_r+0xbc0>
   12500:	400a7493          	andi	s1,s4,1024
   12504:	01213c23          	sd	s2,24(sp)
   12508:	07813903          	ld	s2,120(sp)
   1250c:	18c10c93          	addi	s9,sp,396
   12510:	0004849b          	sext.w	s1,s1
   12514:	00000793          	li	a5,0
   12518:	000c8d93          	mv	s11,s9
   1251c:	02813023          	sd	s0,32(sp)
   12520:	03313c23          	sd	s3,56(sp)
   12524:	000c8413          	mv	s0,s9
   12528:	000b0993          	mv	s3,s6
   1252c:	000a8c93          	mv	s9,s5
   12530:	00048b13          	mv	s6,s1
   12534:	00030a93          	mv	s5,t1
   12538:	00078493          	mv	s1,a5
   1253c:	00a00593          	li	a1,10
   12540:	00098513          	mv	a0,s3
   12544:	b78fe0ef          	jal	ra,108bc <__umoddi3>
   12548:	0305051b          	addiw	a0,a0,48
   1254c:	fea40fa3          	sb	a0,-1(s0)
   12550:	0014849b          	addiw	s1,s1,1
   12554:	fff40413          	addi	s0,s0,-1
   12558:	000b0663          	beqz	s6,12564 <_vfprintf_r+0x1950>
   1255c:	00094683          	lbu	a3,0(s2)
   12560:	cad48a63          	beq	s1,a3,11a14 <_vfprintf_r+0xe00>
   12564:	00a00593          	li	a1,10
   12568:	00098513          	mv	a0,s3
   1256c:	b08fe0ef          	jal	ra,10874 <__udivdi3>
   12570:	00900793          	li	a5,9
   12574:	cb37f863          	bgeu	a5,s3,11a24 <_vfprintf_r+0xe10>
   12578:	00050993          	mv	s3,a0
   1257c:	fc1ff06f          	j	1253c <_vfprintf_r+0x1928>
   12580:	00013583          	ld	a1,0(sp)
   12584:	11010613          	addi	a2,sp,272
   12588:	000a8513          	mv	a0,s5
   1258c:	720090ef          	jal	ra,1bcac <__sprint_r>
   12590:	00050463          	beqz	a0,12598 <_vfprintf_r+0x1984>
   12594:	911fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12598:	19010313          	addi	t1,sp,400
   1259c:	d20ff06f          	j	11abc <_vfprintf_r+0xea8>
   125a0:	0017069b          	addiw	a3,a4,1
   125a4:	01833023          	sd	s8,0(t1)
   125a8:	00833423          	sd	s0,8(t1)
   125ac:	008787b3          	add	a5,a5,s0
   125b0:	12f13023          	sd	a5,288(sp)
   125b4:	10d12c23          	sw	a3,280(sp)
   125b8:	00700713          	li	a4,7
   125bc:	90d75c63          	bge	a4,a3,116d4 <_vfprintf_r+0xac0>
   125c0:	a38ff06f          	j	117f8 <_vfprintf_r+0xbe4>
   125c4:	10013503          	ld	a0,256(sp)
   125c8:	10813583          	ld	a1,264(sp)
   125cc:	00000613          	li	a2,0
   125d0:	00000693          	li	a3,0
   125d4:	6850d0ef          	jal	ra,20458 <__letf2>
   125d8:	01813303          	ld	t1,24(sp)
   125dc:	08054ce3          	bltz	a0,12e74 <_vfprintf_r+0x2260>
   125e0:	0df14783          	lbu	a5,223(sp)
   125e4:	04700693          	li	a3,71
   125e8:	0000fd97          	auipc	s11,0xf
   125ec:	5b8d8d93          	addi	s11,s11,1464 # 21ba0 <zeroes.4539+0x48>
   125f0:	3486c263          	blt	a3,s0,12934 <_vfprintf_r+0x1d20>
   125f4:	f7f4f493          	andi	s1,s1,-129
   125f8:	00013c23          	sd	zero,24(sp)
   125fc:	04013023          	sd	zero,64(sp)
   12600:	02013c23          	sd	zero,56(sp)
   12604:	02013023          	sd	zero,32(sp)
   12608:	0004849b          	sext.w	s1,s1
   1260c:	00300a13          	li	s4,3
   12610:	00300c93          	li	s9,3
   12614:	00000b93          	li	s7,0
   12618:	00078463          	beqz	a5,12620 <_vfprintf_r+0x1a0c>
   1261c:	99dfe06f          	j	10fb8 <_vfprintf_r+0x3a4>
   12620:	fe1fe06f          	j	11600 <_vfprintf_r+0x9ec>
   12624:	000d8513          	mv	a0,s11
   12628:	07913023          	sd	s9,96(sp)
   1262c:	4d1060ef          	jal	ra,192fc <strlen>
   12630:	00050c9b          	sext.w	s9,a0
   12634:	fffcca13          	not	s4,s9
   12638:	0df14783          	lbu	a5,223(sp)
   1263c:	43fa5a13          	srai	s4,s4,0x3f
   12640:	014cfa33          	and	s4,s9,s4
   12644:	01613823          	sd	s6,16(sp)
   12648:	00013c23          	sd	zero,24(sp)
   1264c:	04013023          	sd	zero,64(sp)
   12650:	02013c23          	sd	zero,56(sp)
   12654:	02013023          	sd	zero,32(sp)
   12658:	000a0a1b          	sext.w	s4,s4
   1265c:	00000b93          	li	s7,0
   12660:	06013303          	ld	t1,96(sp)
   12664:	00078463          	beqz	a5,1266c <_vfprintf_r+0x1a58>
   12668:	951fe06f          	j	10fb8 <_vfprintf_r+0x3a4>
   1266c:	f95fe06f          	j	11600 <_vfprintf_r+0x9ec>
   12670:	2004f793          	andi	a5,s1,512
   12674:	3a078063          	beqz	a5,12a14 <_vfprintf_r+0x1e00>
   12678:	0ffb7b13          	andi	s6,s6,255
   1267c:	00e13823          	sd	a4,16(sp)
   12680:	db1fe06f          	j	11430 <_vfprintf_r+0x81c>
   12684:	2004f793          	andi	a5,s1,512
   12688:	36078a63          	beqz	a5,129fc <_vfprintf_r+0x1de8>
   1268c:	0ffb7b13          	andi	s6,s6,255
   12690:	00e13823          	sd	a4,16(sp)
   12694:	00048a13          	mv	s4,s1
   12698:	00100793          	li	a5,1
   1269c:	8c5fe06f          	j	10f60 <_vfprintf_r+0x34c>
   126a0:	2004f793          	andi	a5,s1,512
   126a4:	34078063          	beqz	a5,129e4 <_vfprintf_r+0x1dd0>
   126a8:	01013783          	ld	a5,16(sp)
   126ac:	00048a13          	mv	s4,s1
   126b0:	00e13823          	sd	a4,16(sp)
   126b4:	00078b03          	lb	s6,0(a5)
   126b8:	000b0793          	mv	a5,s6
   126bc:	dd1fe06f          	j	1148c <_vfprintf_r+0x878>
   126c0:	2004f793          	andi	a5,s1,512
   126c4:	30078a63          	beqz	a5,129d8 <_vfprintf_r+0x1dc4>
   126c8:	0ffb7b13          	andi	s6,s6,255
   126cc:	865fe06f          	j	10f30 <_vfprintf_r+0x31c>
   126d0:	10813783          	ld	a5,264(sp)
   126d4:	3407c863          	bltz	a5,12a24 <_vfprintf_r+0x1e10>
   126d8:	0df14783          	lbu	a5,223(sp)
   126dc:	04700693          	li	a3,71
   126e0:	0000fd97          	auipc	s11,0xf
   126e4:	4d0d8d93          	addi	s11,s11,1232 # 21bb0 <zeroes.4539+0x58>
   126e8:	f086d6e3          	bge	a3,s0,125f4 <_vfprintf_r+0x19e0>
   126ec:	0000fd97          	auipc	s11,0xf
   126f0:	4ccd8d93          	addi	s11,s11,1228 # 21bb8 <zeroes.4539+0x60>
   126f4:	f01ff06f          	j	125f4 <_vfprintf_r+0x19e0>
   126f8:	0016861b          	addiw	a2,a3,1
   126fc:	008787b3          	add	a5,a5,s0
   12700:	01833023          	sd	s8,0(t1)
   12704:	00833423          	sd	s0,8(t1)
   12708:	12f13023          	sd	a5,288(sp)
   1270c:	10c12c23          	sw	a2,280(sp)
   12710:	00700693          	li	a3,7
   12714:	01030313          	addi	t1,t1,16
   12718:	9cc6d2e3          	bge	a3,a2,120dc <_vfprintf_r+0x14c8>
   1271c:	00013583          	ld	a1,0(sp)
   12720:	11010613          	addi	a2,sp,272
   12724:	000a8513          	mv	a0,s5
   12728:	584090ef          	jal	ra,1bcac <__sprint_r>
   1272c:	00050463          	beqz	a0,12734 <_vfprintf_r+0x1b20>
   12730:	f74fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12734:	12013783          	ld	a5,288(sp)
   12738:	19010313          	addi	t1,sp,400
   1273c:	9a1ff06f          	j	120dc <_vfprintf_r+0x14c8>
   12740:	02813703          	ld	a4,40(sp)
   12744:	03813c83          	ld	s9,56(sp)
   12748:	03213023          	sd	s2,32(sp)
   1274c:	06913023          	sd	s1,96(sp)
   12750:	09313023          	sd	s3,128(sp)
   12754:	04013903          	ld	s2,64(sp)
   12758:	03413c23          	sd	s4,56(sp)
   1275c:	05b13023          	sd	s11,64(sp)
   12760:	00700b13          	li	s6,7
   12764:	00ed8433          	add	s0,s11,a4
   12768:	08813983          	ld	s3,136(sp)
   1276c:	07813483          	ld	s1,120(sp)
   12770:	00013a03          	ld	s4,0(sp)
   12774:	0a0c8063          	beqz	s9,12814 <_vfprintf_r+0x1c00>
   12778:	0a091063          	bnez	s2,12818 <_vfprintf_r+0x1c04>
   1277c:	fff48493          	addi	s1,s1,-1
   12780:	fffc8c9b          	addiw	s9,s9,-1
   12784:	07013703          	ld	a4,112(sp)
   12788:	013787b3          	add	a5,a5,s3
   1278c:	01333423          	sd	s3,8(t1)
   12790:	00e33023          	sd	a4,0(t1)
   12794:	11812703          	lw	a4,280(sp)
   12798:	12f13023          	sd	a5,288(sp)
   1279c:	01030313          	addi	t1,t1,16
   127a0:	0017069b          	addiw	a3,a4,1
   127a4:	10d12c23          	sw	a3,280(sp)
   127a8:	10db4263          	blt	s6,a3,128ac <_vfprintf_r+0x1c98>
   127ac:	0004c603          	lbu	a2,0(s1)
   127b0:	417405bb          	subw	a1,s0,s7
   127b4:	0006071b          	sext.w	a4,a2
   127b8:	00070693          	mv	a3,a4
   127bc:	00e5d463          	bge	a1,a4,127c4 <_vfprintf_r+0x1bb0>
   127c0:	00058693          	mv	a3,a1
   127c4:	00068d9b          	sext.w	s11,a3
   127c8:	03b05863          	blez	s11,127f8 <_vfprintf_r+0x1be4>
   127cc:	11812703          	lw	a4,280(sp)
   127d0:	01b787b3          	add	a5,a5,s11
   127d4:	01733023          	sd	s7,0(t1)
   127d8:	0017061b          	addiw	a2,a4,1
   127dc:	01b33423          	sd	s11,8(t1)
   127e0:	12f13023          	sd	a5,288(sp)
   127e4:	10c12c23          	sw	a2,280(sp)
   127e8:	0ecb4463          	blt	s6,a2,128d0 <_vfprintf_r+0x1cbc>
   127ec:	0004c603          	lbu	a2,0(s1)
   127f0:	01030313          	addi	t1,t1,16
   127f4:	0006071b          	sext.w	a4,a2
   127f8:	fffdc593          	not	a1,s11
   127fc:	43f5d593          	srai	a1,a1,0x3f
   12800:	00bdf6b3          	and	a3,s11,a1
   12804:	40d70dbb          	subw	s11,a4,a3
   12808:	01b04c63          	bgtz	s11,12820 <_vfprintf_r+0x1c0c>
   1280c:	00cb8bb3          	add	s7,s7,a2
   12810:	f60c94e3          	bnez	s9,12778 <_vfprintf_r+0x1b64>
   12814:	48090a63          	beqz	s2,12ca8 <_vfprintf_r+0x2094>
   12818:	fff9091b          	addiw	s2,s2,-1
   1281c:	f69ff06f          	j	12784 <_vfprintf_r+0x1b70>
   12820:	11812683          	lw	a3,280(sp)
   12824:	01bd4863          	blt	s10,s11,12834 <_vfprintf_r+0x1c20>
   12828:	0580006f          	j	12880 <_vfprintf_r+0x1c6c>
   1282c:	ff0d8d9b          	addiw	s11,s11,-16
   12830:	05bd5863          	bge	s10,s11,12880 <_vfprintf_r+0x1c6c>
   12834:	0016869b          	addiw	a3,a3,1
   12838:	01078793          	addi	a5,a5,16
   1283c:	01833023          	sd	s8,0(t1)
   12840:	01a33423          	sd	s10,8(t1)
   12844:	12f13023          	sd	a5,288(sp)
   12848:	10d12c23          	sw	a3,280(sp)
   1284c:	01030313          	addi	t1,t1,16
   12850:	fcdb5ee3          	bge	s6,a3,1282c <_vfprintf_r+0x1c18>
   12854:	11010613          	addi	a2,sp,272
   12858:	000a0593          	mv	a1,s4
   1285c:	000a8513          	mv	a0,s5
   12860:	44c090ef          	jal	ra,1bcac <__sprint_r>
   12864:	00050463          	beqz	a0,1286c <_vfprintf_r+0x1c58>
   12868:	e3cfe06f          	j	10ea4 <_vfprintf_r+0x290>
   1286c:	ff0d8d9b          	addiw	s11,s11,-16
   12870:	12013783          	ld	a5,288(sp)
   12874:	11812683          	lw	a3,280(sp)
   12878:	19010313          	addi	t1,sp,400
   1287c:	fbbd4ce3          	blt	s10,s11,12834 <_vfprintf_r+0x1c20>
   12880:	0016871b          	addiw	a4,a3,1
   12884:	01b787b3          	add	a5,a5,s11
   12888:	01833023          	sd	s8,0(t1)
   1288c:	01b33423          	sd	s11,8(t1)
   12890:	12f13023          	sd	a5,288(sp)
   12894:	10e12c23          	sw	a4,280(sp)
   12898:	58eb4463          	blt	s6,a4,12e20 <_vfprintf_r+0x220c>
   1289c:	0004c603          	lbu	a2,0(s1)
   128a0:	01030313          	addi	t1,t1,16
   128a4:	00cb8bb3          	add	s7,s7,a2
   128a8:	f69ff06f          	j	12810 <_vfprintf_r+0x1bfc>
   128ac:	11010613          	addi	a2,sp,272
   128b0:	000a0593          	mv	a1,s4
   128b4:	000a8513          	mv	a0,s5
   128b8:	3f4090ef          	jal	ra,1bcac <__sprint_r>
   128bc:	00050463          	beqz	a0,128c4 <_vfprintf_r+0x1cb0>
   128c0:	de4fe06f          	j	10ea4 <_vfprintf_r+0x290>
   128c4:	12013783          	ld	a5,288(sp)
   128c8:	19010313          	addi	t1,sp,400
   128cc:	ee1ff06f          	j	127ac <_vfprintf_r+0x1b98>
   128d0:	11010613          	addi	a2,sp,272
   128d4:	000a0593          	mv	a1,s4
   128d8:	000a8513          	mv	a0,s5
   128dc:	3d0090ef          	jal	ra,1bcac <__sprint_r>
   128e0:	00050463          	beqz	a0,128e8 <_vfprintf_r+0x1cd4>
   128e4:	dc0fe06f          	j	10ea4 <_vfprintf_r+0x290>
   128e8:	0004c603          	lbu	a2,0(s1)
   128ec:	12013783          	ld	a5,288(sp)
   128f0:	19010313          	addi	t1,sp,400
   128f4:	0006071b          	sext.w	a4,a2
   128f8:	f01ff06f          	j	127f8 <_vfprintf_r+0x1be4>
   128fc:	001b0b1b          	addiw	s6,s6,1
   12900:	01078313          	addi	t1,a5,16
   12904:	00078413          	mv	s0,a5
   12908:	d10ff06f          	j	11e18 <_vfprintf_r+0x1204>
   1290c:	00013583          	ld	a1,0(sp)
   12910:	11010613          	addi	a2,sp,272
   12914:	000a8513          	mv	a0,s5
   12918:	394090ef          	jal	ra,1bcac <__sprint_r>
   1291c:	00050463          	beqz	a0,12924 <_vfprintf_r+0x1d10>
   12920:	d84fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12924:	0e812583          	lw	a1,232(sp)
   12928:	12013783          	ld	a5,288(sp)
   1292c:	19010313          	addi	t1,sp,400
   12930:	b89ff06f          	j	124b8 <_vfprintf_r+0x18a4>
   12934:	0000fd97          	auipc	s11,0xf
   12938:	274d8d93          	addi	s11,s11,628 # 21ba8 <zeroes.4539+0x50>
   1293c:	cb9ff06f          	j	125f4 <_vfprintf_r+0x19e0>
   12940:	00013583          	ld	a1,0(sp)
   12944:	11010613          	addi	a2,sp,272
   12948:	000a8513          	mv	a0,s5
   1294c:	360090ef          	jal	ra,1bcac <__sprint_r>
   12950:	00050463          	beqz	a0,12958 <_vfprintf_r+0x1d44>
   12954:	d50fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12958:	12013783          	ld	a5,288(sp)
   1295c:	19010313          	addi	t1,sp,400
   12960:	f64ff06f          	j	120c4 <_vfprintf_r+0x14b0>
   12964:	00600e13          	li	t3,6
   12968:	a45ff06f          	j	123ac <_vfprintf_r+0x1798>
   1296c:	08813783          	ld	a5,136(sp)
   12970:	07013583          	ld	a1,112(sp)
   12974:	00000493          	li	s1,0
   12978:	40f40433          	sub	s0,s0,a5
   1297c:	00078613          	mv	a2,a5
   12980:	00040513          	mv	a0,s0
   12984:	249060ef          	jal	ra,193cc <strncpy>
   12988:	00194683          	lbu	a3,1(s2)
   1298c:	00098513          	mv	a0,s3
   12990:	00a00593          	li	a1,10
   12994:	00d03733          	snez	a4,a3
   12998:	00e90933          	add	s2,s2,a4
   1299c:	ed9fd0ef          	jal	ra,10874 <__udivdi3>
   129a0:	00050993          	mv	s3,a0
   129a4:	b99ff06f          	j	1253c <_vfprintf_r+0x1928>
   129a8:	02813683          	ld	a3,40(sp)
   129ac:	00dd8733          	add	a4,s11,a3
   129b0:	4086863b          	subw	a2,a3,s0
   129b4:	4177083b          	subw	a6,a4,s7
   129b8:	0008041b          	sext.w	s0,a6
   129bc:	fb065e63          	bge	a2,a6,12178 <_vfprintf_r+0x1564>
   129c0:	0006041b          	sext.w	s0,a2
   129c4:	fb4ff06f          	j	12178 <_vfprintf_r+0x1564>
   129c8:	00813783          	ld	a5,8(sp)
   129cc:	00090d93          	mv	s11,s2
   129d0:	00f71023          	sh	a5,0(a4)
   129d4:	d51fe06f          	j	11724 <_vfprintf_r+0xb10>
   129d8:	020b1b13          	slli	s6,s6,0x20
   129dc:	020b5b13          	srli	s6,s6,0x20
   129e0:	d50fe06f          	j	10f30 <_vfprintf_r+0x31c>
   129e4:	01013783          	ld	a5,16(sp)
   129e8:	00048a13          	mv	s4,s1
   129ec:	00e13823          	sd	a4,16(sp)
   129f0:	0007ab03          	lw	s6,0(a5)
   129f4:	000b0793          	mv	a5,s6
   129f8:	a95fe06f          	j	1148c <_vfprintf_r+0x878>
   129fc:	020b1b13          	slli	s6,s6,0x20
   12a00:	020b5b13          	srli	s6,s6,0x20
   12a04:	00e13823          	sd	a4,16(sp)
   12a08:	00048a13          	mv	s4,s1
   12a0c:	00100793          	li	a5,1
   12a10:	d50fe06f          	j	10f60 <_vfprintf_r+0x34c>
   12a14:	020b1b13          	slli	s6,s6,0x20
   12a18:	020b5b13          	srli	s6,s6,0x20
   12a1c:	00e13823          	sd	a4,16(sp)
   12a20:	a11fe06f          	j	11430 <_vfprintf_r+0x81c>
   12a24:	02d00793          	li	a5,45
   12a28:	0cf10fa3          	sb	a5,223(sp)
   12a2c:	cb1ff06f          	j	126dc <_vfprintf_r+0x1ac8>
   12a30:	03000793          	li	a5,48
   12a34:	0ef10023          	sb	a5,224(sp)
   12a38:	05800713          	li	a4,88
   12a3c:	0024e793          	ori	a5,s1,2
   12a40:	0007879b          	sext.w	a5,a5
   12a44:	0ee100a3          	sb	a4,225(sp)
   12a48:	06300693          	li	a3,99
   12a4c:	04f13023          	sd	a5,64(sp)
   12a50:	00013c23          	sd	zero,24(sp)
   12a54:	12810d93          	addi	s11,sp,296
   12a58:	6776cc63          	blt	a3,s7,130d0 <_vfprintf_r+0x24bc>
   12a5c:	10813c83          	ld	s9,264(sp)
   12a60:	fdf47793          	andi	a5,s0,-33
   12a64:	1024e493          	ori	s1,s1,258
   12a68:	02f13c23          	sd	a5,56(sp)
   12a6c:	06013023          	sd	zero,96(sp)
   12a70:	0004849b          	sext.w	s1,s1
   12a74:	10013e83          	ld	t4,256(sp)
   12a78:	380cc863          	bltz	s9,12e08 <_vfprintf_r+0x21f4>
   12a7c:	06100793          	li	a5,97
   12a80:	76f40e63          	beq	s0,a5,131fc <_vfprintf_r+0x25e8>
   12a84:	04100793          	li	a5,65
   12a88:	00f40463          	beq	s0,a5,12a90 <_vfprintf_r+0x1e7c>
   12a8c:	ec4fe06f          	j	11150 <_vfprintf_r+0x53c>
   12a90:	000e8513          	mv	a0,t4
   12a94:	000c8593          	mv	a1,s9
   12a98:	02613423          	sd	t1,40(sp)
   12a9c:	3790e0ef          	jal	ra,21614 <__trunctfdf2>
   12aa0:	0e810593          	addi	a1,sp,232
   12aa4:	340060ef          	jal	ra,18de4 <frexp>
   12aa8:	2790e0ef          	jal	ra,21520 <__extenddftf2>
   12aac:	0000f797          	auipc	a5,0xf
   12ab0:	0e478793          	addi	a5,a5,228 # 21b90 <zeroes.4539+0x38>
   12ab4:	0087b683          	ld	a3,8(a5)
   12ab8:	00000613          	li	a2,0
   12abc:	27d0d0ef          	jal	ra,20538 <__multf3>
   12ac0:	00000613          	li	a2,0
   12ac4:	00000693          	li	a3,0
   12ac8:	00050c93          	mv	s9,a0
   12acc:	02b13023          	sd	a1,32(sp)
   12ad0:	01d0d0ef          	jal	ra,202ec <__eqtf2>
   12ad4:	02013f03          	ld	t5,32(sp)
   12ad8:	02813303          	ld	t1,40(sp)
   12adc:	00051663          	bnez	a0,12ae8 <_vfprintf_r+0x1ed4>
   12ae0:	00100793          	li	a5,1
   12ae4:	0ef12423          	sw	a5,232(sp)
   12ae8:	0000f797          	auipc	a5,0xf
   12aec:	0f078793          	addi	a5,a5,240 # 21bd8 <zeroes.4539+0x80>
   12af0:	02f13023          	sd	a5,32(sp)
   12af4:	000b869b          	sext.w	a3,s7
   12af8:	02069793          	slli	a5,a3,0x20
   12afc:	0207d793          	srli	a5,a5,0x20
   12b00:	00178793          	addi	a5,a5,1
   12b04:	00fd8633          	add	a2,s11,a5
   12b08:	0000f797          	auipc	a5,0xf
   12b0c:	06878793          	addi	a5,a5,104 # 21b70 <zeroes.4539+0x18>
   12b10:	0087b783          	ld	a5,8(a5)
   12b14:	00dd86bb          	addw	a3,s11,a3
   12b18:	09213023          	sd	s2,128(sp)
   12b1c:	08813823          	sd	s0,144(sp)
   12b20:	0b313023          	sd	s3,160(sp)
   12b24:	0b713423          	sd	s7,168(sp)
   12b28:	0cc13423          	sd	a2,200(sp)
   12b2c:	02f13423          	sd	a5,40(sp)
   12b30:	08913c23          	sd	s1,152(sp)
   12b34:	0a613823          	sd	t1,176(sp)
   12b38:	000d8413          	mv	s0,s11
   12b3c:	00060913          	mv	s2,a2
   12b40:	0b513c23          	sd	s5,184(sp)
   12b44:	0db13023          	sd	s11,192(sp)
   12b48:	000c8b13          	mv	s6,s9
   12b4c:	000f0b93          	mv	s7,t5
   12b50:	00068993          	mv	s3,a3
   12b54:	0180006f          	j	12b6c <_vfprintf_r+0x1f58>
   12b58:	00000613          	li	a2,0
   12b5c:	00000693          	li	a3,0
   12b60:	78c0d0ef          	jal	ra,202ec <__eqtf2>
   12b64:	5a050c63          	beqz	a0,1311c <_vfprintf_r+0x2508>
   12b68:	000c8413          	mv	s0,s9
   12b6c:	02813683          	ld	a3,40(sp)
   12b70:	00000613          	li	a2,0
   12b74:	000b0513          	mv	a0,s6
   12b78:	000b8593          	mv	a1,s7
   12b7c:	1bd0d0ef          	jal	ra,20538 <__multf3>
   12b80:	00058a93          	mv	s5,a1
   12b84:	00050493          	mv	s1,a0
   12b88:	0a10e0ef          	jal	ra,21428 <__fixtfsi>
   12b8c:	00050a1b          	sext.w	s4,a0
   12b90:	000a0513          	mv	a0,s4
   12b94:	0fd0e0ef          	jal	ra,21490 <__floatsitf>
   12b98:	00058693          	mv	a3,a1
   12b9c:	00050613          	mv	a2,a0
   12ba0:	000a8593          	mv	a1,s5
   12ba4:	00048513          	mv	a0,s1
   12ba8:	0b00e0ef          	jal	ra,20c58 <__subtf3>
   12bac:	02013783          	ld	a5,32(sp)
   12bb0:	00140c93          	addi	s9,s0,1
   12bb4:	00050d93          	mv	s11,a0
   12bb8:	014787b3          	add	a5,a5,s4
   12bbc:	0007c683          	lbu	a3,0(a5)
   12bc0:	00058493          	mv	s1,a1
   12bc4:	00050b13          	mv	s6,a0
   12bc8:	fedc8fa3          	sb	a3,-1(s9)
   12bcc:	00058b93          	mv	s7,a1
   12bd0:	41998abb          	subw	s5,s3,s9
   12bd4:	f92c92e3          	bne	s9,s2,12b58 <_vfprintf_r+0x1f44>
   12bd8:	08013903          	ld	s2,128(sp)
   12bdc:	0a013983          	ld	s3,160(sp)
   12be0:	08813023          	sd	s0,128(sp)
   12be4:	0a813b83          	ld	s7,168(sp)
   12be8:	0b013303          	ld	t1,176(sp)
   12bec:	09013403          	ld	s0,144(sp)
   12bf0:	0b813a83          	ld	s5,184(sp)
   12bf4:	0c013d83          	ld	s11,192(sp)
   12bf8:	09813483          	ld	s1,152(sp)
   12bfc:	0c813b03          	ld	s6,200(sp)
   12c00:	fff00793          	li	a5,-1
   12c04:	00050893          	mv	a7,a0
   12c08:	00058813          	mv	a6,a1
   12c0c:	02f13423          	sd	a5,40(sp)
   12c10:	0000f697          	auipc	a3,0xf
   12c14:	f7068693          	addi	a3,a3,-144 # 21b80 <zeroes.4539+0x28>
   12c18:	0086b783          	ld	a5,8(a3)
   12c1c:	00000613          	li	a2,0
   12c20:	00088513          	mv	a0,a7
   12c24:	00078693          	mv	a3,a5
   12c28:	00080593          	mv	a1,a6
   12c2c:	08613c23          	sd	t1,152(sp)
   12c30:	08f13823          	sd	a5,144(sp)
   12c34:	0b113423          	sd	a7,168(sp)
   12c38:	0b013023          	sd	a6,160(sp)
   12c3c:	73c0d0ef          	jal	ra,20378 <__getf2>
   12c40:	09813303          	ld	t1,152(sp)
   12c44:	3ea04663          	bgtz	a0,13030 <_vfprintf_r+0x241c>
   12c48:	0a813883          	ld	a7,168(sp)
   12c4c:	0a013803          	ld	a6,160(sp)
   12c50:	09013683          	ld	a3,144(sp)
   12c54:	00000613          	li	a2,0
   12c58:	00088513          	mv	a0,a7
   12c5c:	00080593          	mv	a1,a6
   12c60:	68c0d0ef          	jal	ra,202ec <__eqtf2>
   12c64:	09813303          	ld	t1,152(sp)
   12c68:	00051663          	bnez	a0,12c74 <_vfprintf_r+0x2060>
   12c6c:	001a7a13          	andi	s4,s4,1
   12c70:	3c0a1063          	bnez	s4,13030 <_vfprintf_r+0x241c>
   12c74:	02813783          	ld	a5,40(sp)
   12c78:	03000613          	li	a2,48
   12c7c:	00178693          	addi	a3,a5,1
   12c80:	00db06b3          	add	a3,s6,a3
   12c84:	0007c863          	bltz	a5,12c94 <_vfprintf_r+0x2080>
   12c88:	001b0b13          	addi	s6,s6,1
   12c8c:	fecb0fa3          	sb	a2,-1(s6)
   12c90:	ff669ce3          	bne	a3,s6,12c88 <_vfprintf_r+0x2074>
   12c94:	41bb07bb          	subw	a5,s6,s11
   12c98:	02f13423          	sd	a5,40(sp)
   12c9c:	d38fe06f          	j	111d4 <_vfprintf_r+0x5c0>
   12ca0:	00048a13          	mv	s4,s1
   12ca4:	d59fe06f          	j	119fc <_vfprintf_r+0xde8>
   12ca8:	04013d83          	ld	s11,64(sp)
   12cac:	02813703          	ld	a4,40(sp)
   12cb0:	06913c23          	sd	s1,120(sp)
   12cb4:	02013903          	ld	s2,32(sp)
   12cb8:	00ed86b3          	add	a3,s11,a4
   12cbc:	08013983          	ld	s3,128(sp)
   12cc0:	06013483          	ld	s1,96(sp)
   12cc4:	03813a03          	ld	s4,56(sp)
   12cc8:	c376f263          	bgeu	a3,s7,120ec <_vfprintf_r+0x14d8>
   12ccc:	00068b93          	mv	s7,a3
   12cd0:	c1cff06f          	j	120ec <_vfprintf_r+0x14d8>
   12cd4:	02013703          	ld	a4,32(sp)
   12cd8:	ffd00793          	li	a5,-3
   12cdc:	00f74463          	blt	a4,a5,12ce4 <_vfprintf_r+0x20d0>
   12ce0:	00ebda63          	bge	s7,a4,12cf4 <_vfprintf_r+0x20e0>
   12ce4:	ffe4041b          	addiw	s0,s0,-2
   12ce8:	fdf47793          	andi	a5,s0,-33
   12cec:	02f13c23          	sd	a5,56(sp)
   12cf0:	d0cfe06f          	j	111fc <_vfprintf_r+0x5e8>
   12cf4:	02813783          	ld	a5,40(sp)
   12cf8:	02013703          	ld	a4,32(sp)
   12cfc:	20f74c63          	blt	a4,a5,12f14 <_vfprintf_r+0x2300>
   12d00:	04013783          	ld	a5,64(sp)
   12d04:	00070c93          	mv	s9,a4
   12d08:	0017f793          	andi	a5,a5,1
   12d0c:	00078663          	beqz	a5,12d18 <_vfprintf_r+0x2104>
   12d10:	04813783          	ld	a5,72(sp)
   12d14:	00e78cbb          	addw	s9,a5,a4
   12d18:	04013783          	ld	a5,64(sp)
   12d1c:	4007f793          	andi	a5,a5,1024
   12d20:	00078663          	beqz	a5,12d2c <_vfprintf_r+0x2118>
   12d24:	02013783          	ld	a5,32(sp)
   12d28:	42f04c63          	bgtz	a5,13160 <_vfprintf_r+0x254c>
   12d2c:	fffcca13          	not	s4,s9
   12d30:	43fa5a13          	srai	s4,s4,0x3f
   12d34:	014cfa33          	and	s4,s9,s4
   12d38:	000a0a1b          	sext.w	s4,s4
   12d3c:	06700413          	li	s0,103
   12d40:	04013023          	sd	zero,64(sp)
   12d44:	02013c23          	sd	zero,56(sp)
   12d48:	df8fe06f          	j	11340 <_vfprintf_r+0x72c>
   12d4c:	0df14783          	lbu	a5,223(sp)
   12d50:	00000b93          	li	s7,0
   12d54:	00078463          	beqz	a5,12d5c <_vfprintf_r+0x2148>
   12d58:	a60fe06f          	j	10fb8 <_vfprintf_r+0x3a4>
   12d5c:	8a5fe06f          	j	11600 <_vfprintf_r+0x9ec>
   12d60:	0e810793          	addi	a5,sp,232
   12d64:	00300693          	li	a3,3
   12d68:	000e8593          	mv	a1,t4
   12d6c:	0f810893          	addi	a7,sp,248
   12d70:	0ec10813          	addi	a6,sp,236
   12d74:	000b8713          	mv	a4,s7
   12d78:	000c8613          	mv	a2,s9
   12d7c:	000a8513          	mv	a0,s5
   12d80:	02613423          	sd	t1,40(sp)
   12d84:	03d13023          	sd	t4,32(sp)
   12d88:	6c1020ef          	jal	ra,15c48 <_ldtoa_r>
   12d8c:	00054683          	lbu	a3,0(a0)
   12d90:	03000793          	li	a5,48
   12d94:	00050d93          	mv	s11,a0
   12d98:	02013e83          	ld	t4,32(sp)
   12d9c:	02813303          	ld	t1,40(sp)
   12da0:	0ef68063          	beq	a3,a5,12e80 <_vfprintf_r+0x226c>
   12da4:	0e812783          	lw	a5,232(sp)
   12da8:	017787b3          	add	a5,a5,s7
   12dac:	00fd8a33          	add	s4,s11,a5
   12db0:	00000613          	li	a2,0
   12db4:	00000693          	li	a3,0
   12db8:	000e8513          	mv	a0,t4
   12dbc:	000c8593          	mv	a1,s9
   12dc0:	02613023          	sd	t1,32(sp)
   12dc4:	5280d0ef          	jal	ra,202ec <__eqtf2>
   12dc8:	000a0793          	mv	a5,s4
   12dcc:	02013303          	ld	t1,32(sp)
   12dd0:	00051463          	bnez	a0,12dd8 <_vfprintf_r+0x21c4>
   12dd4:	bf8fe06f          	j	111cc <_vfprintf_r+0x5b8>
   12dd8:	0f813783          	ld	a5,248(sp)
   12ddc:	03000613          	li	a2,48
   12de0:	0147e463          	bltu	a5,s4,12de8 <_vfprintf_r+0x21d4>
   12de4:	be8fe06f          	j	111cc <_vfprintf_r+0x5b8>
   12de8:	00178713          	addi	a4,a5,1
   12dec:	0ee13c23          	sd	a4,248(sp)
   12df0:	00c78023          	sb	a2,0(a5)
   12df4:	0f813783          	ld	a5,248(sp)
   12df8:	ff47e8e3          	bltu	a5,s4,12de8 <_vfprintf_r+0x21d4>
   12dfc:	bd0fe06f          	j	111cc <_vfprintf_r+0x5b8>
   12e00:	00013c23          	sd	zero,24(sp)
   12e04:	00078493          	mv	s1,a5
   12e08:	fff00793          	li	a5,-1
   12e0c:	03f79793          	slli	a5,a5,0x3f
   12e10:	00fcccb3          	xor	s9,s9,a5
   12e14:	02d00793          	li	a5,45
   12e18:	06f13023          	sd	a5,96(sp)
   12e1c:	c61ff06f          	j	12a7c <_vfprintf_r+0x1e68>
   12e20:	11010613          	addi	a2,sp,272
   12e24:	000a0593          	mv	a1,s4
   12e28:	000a8513          	mv	a0,s5
   12e2c:	681080ef          	jal	ra,1bcac <__sprint_r>
   12e30:	00050463          	beqz	a0,12e38 <_vfprintf_r+0x2224>
   12e34:	870fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12e38:	0004c603          	lbu	a2,0(s1)
   12e3c:	12013783          	ld	a5,288(sp)
   12e40:	19010313          	addi	t1,sp,400
   12e44:	00cb8bb3          	add	s7,s7,a2
   12e48:	9c9ff06f          	j	12810 <_vfprintf_r+0x1bfc>
   12e4c:	00013583          	ld	a1,0(sp)
   12e50:	11010613          	addi	a2,sp,272
   12e54:	000a8513          	mv	a0,s5
   12e58:	655080ef          	jal	ra,1bcac <__sprint_r>
   12e5c:	00050463          	beqz	a0,12e64 <_vfprintf_r+0x2250>
   12e60:	844fe06f          	j	10ea4 <_vfprintf_r+0x290>
   12e64:	0e812403          	lw	s0,232(sp)
   12e68:	12013783          	ld	a5,288(sp)
   12e6c:	19010313          	addi	t1,sp,400
   12e70:	ac0ff06f          	j	12130 <_vfprintf_r+0x151c>
   12e74:	02d00793          	li	a5,45
   12e78:	0cf10fa3          	sb	a5,223(sp)
   12e7c:	f68ff06f          	j	125e4 <_vfprintf_r+0x19d0>
   12e80:	000e8513          	mv	a0,t4
   12e84:	00000613          	li	a2,0
   12e88:	00000693          	li	a3,0
   12e8c:	000c8593          	mv	a1,s9
   12e90:	02613423          	sd	t1,40(sp)
   12e94:	03d13023          	sd	t4,32(sp)
   12e98:	4540d0ef          	jal	ra,202ec <__eqtf2>
   12e9c:	02013e83          	ld	t4,32(sp)
   12ea0:	02813303          	ld	t1,40(sp)
   12ea4:	f00500e3          	beqz	a0,12da4 <_vfprintf_r+0x2190>
   12ea8:	00100693          	li	a3,1
   12eac:	417687bb          	subw	a5,a3,s7
   12eb0:	0ef12423          	sw	a5,232(sp)
   12eb4:	ef5ff06f          	j	12da8 <_vfprintf_r+0x2194>
   12eb8:	0df14783          	lbu	a5,223(sp)
   12ebc:	01613823          	sd	s6,16(sp)
   12ec0:	04013023          	sd	zero,64(sp)
   12ec4:	02013c23          	sd	zero,56(sp)
   12ec8:	02013023          	sd	zero,32(sp)
   12ecc:	000b8a13          	mv	s4,s7
   12ed0:	000b8c93          	mv	s9,s7
   12ed4:	00000b93          	li	s7,0
   12ed8:	00078463          	beqz	a5,12ee0 <_vfprintf_r+0x22cc>
   12edc:	8dcfe06f          	j	10fb8 <_vfprintf_r+0x3a4>
   12ee0:	f20fe06f          	j	11600 <_vfprintf_r+0x9ec>
   12ee4:	00013583          	ld	a1,0(sp)
   12ee8:	11010613          	addi	a2,sp,272
   12eec:	000a8513          	mv	a0,s5
   12ef0:	5bd080ef          	jal	ra,1bcac <__sprint_r>
   12ef4:	00050463          	beqz	a0,12efc <_vfprintf_r+0x22e8>
   12ef8:	fadfd06f          	j	10ea4 <_vfprintf_r+0x290>
   12efc:	0e812603          	lw	a2,232(sp)
   12f00:	02813703          	ld	a4,40(sp)
   12f04:	12013783          	ld	a5,288(sp)
   12f08:	19010313          	addi	t1,sp,400
   12f0c:	40c7063b          	subw	a2,a4,a2
   12f10:	a68ff06f          	j	12178 <_vfprintf_r+0x1564>
   12f14:	02813703          	ld	a4,40(sp)
   12f18:	04813783          	ld	a5,72(sp)
   12f1c:	06700413          	li	s0,103
   12f20:	00e78cbb          	addw	s9,a5,a4
   12f24:	02013703          	ld	a4,32(sp)
   12f28:	38e05063          	blez	a4,132a8 <_vfprintf_r+0x2694>
   12f2c:	04013783          	ld	a5,64(sp)
   12f30:	4007f793          	andi	a5,a5,1024
   12f34:	22079863          	bnez	a5,13164 <_vfprintf_r+0x2550>
   12f38:	fffcca13          	not	s4,s9
   12f3c:	43fa5a13          	srai	s4,s4,0x3f
   12f40:	014cfa33          	and	s4,s9,s4
   12f44:	000a0a1b          	sext.w	s4,s4
   12f48:	df9ff06f          	j	12d40 <_vfprintf_r+0x212c>
   12f4c:	04013783          	ld	a5,64(sp)
   12f50:	02013703          	ld	a4,32(sp)
   12f54:	0017f793          	andi	a5,a5,1
   12f58:	00fbe7b3          	or	a5,s7,a5
   12f5c:	0007879b          	sext.w	a5,a5
   12f60:	38e05263          	blez	a4,132e4 <_vfprintf_r+0x26d0>
   12f64:	30079063          	bnez	a5,13264 <_vfprintf_r+0x2650>
   12f68:	02013c83          	ld	s9,32(sp)
   12f6c:	06600413          	li	s0,102
   12f70:	fbdff06f          	j	12f2c <_vfprintf_r+0x2318>
   12f74:	ff000613          	li	a2,-16
   12f78:	40b0043b          	negw	s0,a1
   12f7c:	06c5d663          	bge	a1,a2,12fe8 <_vfprintf_r+0x23d4>
   12f80:	00700c93          	li	s9,7
   12f84:	00013b03          	ld	s6,0(sp)
   12f88:	00c0006f          	j	12f94 <_vfprintf_r+0x2380>
   12f8c:	ff04041b          	addiw	s0,s0,-16
   12f90:	048d5c63          	bge	s10,s0,12fe8 <_vfprintf_r+0x23d4>
   12f94:	0016869b          	addiw	a3,a3,1
   12f98:	01078793          	addi	a5,a5,16
   12f9c:	01833023          	sd	s8,0(t1)
   12fa0:	01a33423          	sd	s10,8(t1)
   12fa4:	12f13023          	sd	a5,288(sp)
   12fa8:	10d12c23          	sw	a3,280(sp)
   12fac:	01030313          	addi	t1,t1,16
   12fb0:	fcdcdee3          	bge	s9,a3,12f8c <_vfprintf_r+0x2378>
   12fb4:	11010613          	addi	a2,sp,272
   12fb8:	000b0593          	mv	a1,s6
   12fbc:	000a8513          	mv	a0,s5
   12fc0:	4ed080ef          	jal	ra,1bcac <__sprint_r>
   12fc4:	00050463          	beqz	a0,12fcc <_vfprintf_r+0x23b8>
   12fc8:	eddfd06f          	j	10ea4 <_vfprintf_r+0x290>
   12fcc:	12013783          	ld	a5,288(sp)
   12fd0:	11812683          	lw	a3,280(sp)
   12fd4:	19010313          	addi	t1,sp,400
   12fd8:	fb5ff06f          	j	12f8c <_vfprintf_r+0x2378>
   12fdc:	fff00793          	li	a5,-1
   12fe0:	00f13423          	sd	a5,8(sp)
   12fe4:	ee9fd06f          	j	10ecc <_vfprintf_r+0x2b8>
   12fe8:	0016869b          	addiw	a3,a3,1
   12fec:	008787b3          	add	a5,a5,s0
   12ff0:	01833023          	sd	s8,0(t1)
   12ff4:	00833423          	sd	s0,8(t1)
   12ff8:	12f13023          	sd	a5,288(sp)
   12ffc:	10d12c23          	sw	a3,280(sp)
   13000:	00700613          	li	a2,7
   13004:	ced65a63          	bge	a2,a3,124f8 <_vfprintf_r+0x18e4>
   13008:	00013583          	ld	a1,0(sp)
   1300c:	11010613          	addi	a2,sp,272
   13010:	000a8513          	mv	a0,s5
   13014:	499080ef          	jal	ra,1bcac <__sprint_r>
   13018:	00050463          	beqz	a0,13020 <_vfprintf_r+0x240c>
   1301c:	e89fd06f          	j	10ea4 <_vfprintf_r+0x290>
   13020:	12013783          	ld	a5,288(sp)
   13024:	11812683          	lw	a3,280(sp)
   13028:	19010313          	addi	t1,sp,400
   1302c:	fa8fe06f          	j	117d4 <_vfprintf_r+0xbc0>
   13030:	08013783          	ld	a5,128(sp)
   13034:	000b0693          	mv	a3,s6
   13038:	0ef13c23          	sd	a5,248(sp)
   1303c:	02013783          	ld	a5,32(sp)
   13040:	fffb4603          	lbu	a2,-1(s6)
   13044:	00f7c583          	lbu	a1,15(a5)
   13048:	02c59063          	bne	a1,a2,13068 <_vfprintf_r+0x2454>
   1304c:	03000513          	li	a0,48
   13050:	fea68fa3          	sb	a0,-1(a3)
   13054:	0f813683          	ld	a3,248(sp)
   13058:	fff68793          	addi	a5,a3,-1
   1305c:	0ef13c23          	sd	a5,248(sp)
   13060:	fff6c603          	lbu	a2,-1(a3)
   13064:	fec586e3          	beq	a1,a2,13050 <_vfprintf_r+0x243c>
   13068:	0016059b          	addiw	a1,a2,1
   1306c:	03900513          	li	a0,57
   13070:	0ff5f593          	andi	a1,a1,255
   13074:	00a60663          	beq	a2,a0,13080 <_vfprintf_r+0x246c>
   13078:	feb68fa3          	sb	a1,-1(a3)
   1307c:	c19ff06f          	j	12c94 <_vfprintf_r+0x2080>
   13080:	02013783          	ld	a5,32(sp)
   13084:	00a7c583          	lbu	a1,10(a5)
   13088:	feb68fa3          	sb	a1,-1(a3)
   1308c:	c09ff06f          	j	12c94 <_vfprintf_r+0x2080>
   13090:	001b8a1b          	addiw	s4,s7,1
   13094:	000a0713          	mv	a4,s4
   13098:	000e8593          	mv	a1,t4
   1309c:	0f810893          	addi	a7,sp,248
   130a0:	0ec10813          	addi	a6,sp,236
   130a4:	0e810793          	addi	a5,sp,232
   130a8:	00200693          	li	a3,2
   130ac:	000c8613          	mv	a2,s9
   130b0:	000a8513          	mv	a0,s5
   130b4:	03d13023          	sd	t4,32(sp)
   130b8:	391020ef          	jal	ra,15c48 <_ldtoa_r>
   130bc:	00050d93          	mv	s11,a0
   130c0:	02013e83          	ld	t4,32(sp)
   130c4:	02813303          	ld	t1,40(sp)
   130c8:	014d8a33          	add	s4,s11,s4
   130cc:	ce5ff06f          	j	12db0 <_vfprintf_r+0x219c>
   130d0:	001b859b          	addiw	a1,s7,1
   130d4:	000a8513          	mv	a0,s5
   130d8:	00613c23          	sd	t1,24(sp)
   130dc:	180040ef          	jal	ra,1725c <_malloc_r>
   130e0:	00050d93          	mv	s11,a0
   130e4:	01813303          	ld	t1,24(sp)
   130e8:	24050e63          	beqz	a0,13344 <_vfprintf_r+0x2730>
   130ec:	00a13c23          	sd	a0,24(sp)
   130f0:	96dff06f          	j	12a5c <_vfprintf_r+0x1e48>
   130f4:	03000793          	li	a5,48
   130f8:	0ef10023          	sb	a5,224(sp)
   130fc:	07800713          	li	a4,120
   13100:	93dff06f          	j	12a3c <_vfprintf_r+0x1e28>
   13104:	000b8463          	beqz	s7,1310c <_vfprintf_r+0x24f8>
   13108:	820fe06f          	j	11128 <_vfprintf_r+0x514>
   1310c:	00100b93          	li	s7,1
   13110:	818fe06f          	j	11128 <_vfprintf_r+0x514>
   13114:	00600b93          	li	s7,6
   13118:	810fe06f          	j	11128 <_vfprintf_r+0x514>
   1311c:	03513423          	sd	s5,40(sp)
   13120:	08013903          	ld	s2,128(sp)
   13124:	000d8893          	mv	a7,s11
   13128:	08813023          	sd	s0,128(sp)
   1312c:	00048813          	mv	a6,s1
   13130:	0a013983          	ld	s3,160(sp)
   13134:	0a813b83          	ld	s7,168(sp)
   13138:	0b013303          	ld	t1,176(sp)
   1313c:	09013403          	ld	s0,144(sp)
   13140:	000c8b13          	mv	s6,s9
   13144:	0b813a83          	ld	s5,184(sp)
   13148:	0c013d83          	ld	s11,192(sp)
   1314c:	09813483          	ld	s1,152(sp)
   13150:	ac1ff06f          	j	12c10 <_vfprintf_r+0x1ffc>
   13154:	00f72023          	sw	a5,0(a4)
   13158:	00090d93          	mv	s11,s2
   1315c:	dc8fe06f          	j	11724 <_vfprintf_r+0xb10>
   13160:	06700413          	li	s0,103
   13164:	07813503          	ld	a0,120(sp)
   13168:	02013703          	ld	a4,32(sp)
   1316c:	04013023          	sd	zero,64(sp)
   13170:	00054783          	lbu	a5,0(a0)
   13174:	02013c23          	sd	zero,56(sp)
   13178:	0ff00593          	li	a1,255
   1317c:	04b78063          	beq	a5,a1,131bc <_vfprintf_r+0x25a8>
   13180:	0007869b          	sext.w	a3,a5
   13184:	02e6dc63          	bge	a3,a4,131bc <_vfprintf_r+0x25a8>
   13188:	00154603          	lbu	a2,1(a0)
   1318c:	40d7073b          	subw	a4,a4,a3
   13190:	00060e63          	beqz	a2,131ac <_vfprintf_r+0x2598>
   13194:	03813783          	ld	a5,56(sp)
   13198:	00150513          	addi	a0,a0,1
   1319c:	0017879b          	addiw	a5,a5,1
   131a0:	02f13c23          	sd	a5,56(sp)
   131a4:	00060793          	mv	a5,a2
   131a8:	fd5ff06f          	j	1317c <_vfprintf_r+0x2568>
   131ac:	04013683          	ld	a3,64(sp)
   131b0:	0016869b          	addiw	a3,a3,1
   131b4:	04d13023          	sd	a3,64(sp)
   131b8:	fc5ff06f          	j	1317c <_vfprintf_r+0x2568>
   131bc:	02e13023          	sd	a4,32(sp)
   131c0:	03813783          	ld	a5,56(sp)
   131c4:	04013703          	ld	a4,64(sp)
   131c8:	08813583          	ld	a1,136(sp)
   131cc:	06a13c23          	sd	a0,120(sp)
   131d0:	00e7853b          	addw	a0,a5,a4
   131d4:	08613023          	sd	t1,128(sp)
   131d8:	5f40e0ef          	jal	ra,217cc <__muldi3>
   131dc:	0195053b          	addw	a0,a0,s9
   131e0:	00050c9b          	sext.w	s9,a0
   131e4:	fffcca13          	not	s4,s9
   131e8:	43fa5a13          	srai	s4,s4,0x3f
   131ec:	01457533          	and	a0,a0,s4
   131f0:	00050a1b          	sext.w	s4,a0
   131f4:	08013303          	ld	t1,128(sp)
   131f8:	948fe06f          	j	11340 <_vfprintf_r+0x72c>
   131fc:	000e8513          	mv	a0,t4
   13200:	000c8593          	mv	a1,s9
   13204:	02613423          	sd	t1,40(sp)
   13208:	40c0e0ef          	jal	ra,21614 <__trunctfdf2>
   1320c:	0e810593          	addi	a1,sp,232
   13210:	3d5050ef          	jal	ra,18de4 <frexp>
   13214:	30c0e0ef          	jal	ra,21520 <__extenddftf2>
   13218:	0000f797          	auipc	a5,0xf
   1321c:	97878793          	addi	a5,a5,-1672 # 21b90 <zeroes.4539+0x38>
   13220:	0087b683          	ld	a3,8(a5)
   13224:	00000613          	li	a2,0
   13228:	3100d0ef          	jal	ra,20538 <__multf3>
   1322c:	00000613          	li	a2,0
   13230:	00000693          	li	a3,0
   13234:	00050c93          	mv	s9,a0
   13238:	02b13023          	sd	a1,32(sp)
   1323c:	0b00d0ef          	jal	ra,202ec <__eqtf2>
   13240:	02013f03          	ld	t5,32(sp)
   13244:	02813303          	ld	t1,40(sp)
   13248:	00051663          	bnez	a0,13254 <_vfprintf_r+0x2640>
   1324c:	00100793          	li	a5,1
   13250:	0ef12423          	sw	a5,232(sp)
   13254:	0000f797          	auipc	a5,0xf
   13258:	96c78793          	addi	a5,a5,-1684 # 21bc0 <zeroes.4539+0x68>
   1325c:	02f13023          	sd	a5,32(sp)
   13260:	895ff06f          	j	12af4 <_vfprintf_r+0x1ee0>
   13264:	04813783          	ld	a5,72(sp)
   13268:	06600413          	li	s0,102
   1326c:	00e78cbb          	addw	s9,a5,a4
   13270:	017c8cbb          	addw	s9,s9,s7
   13274:	cb9ff06f          	j	12f2c <_vfprintf_r+0x2318>
   13278:	0f210793          	addi	a5,sp,242
   1327c:	00069863          	bnez	a3,1328c <_vfprintf_r+0x2678>
   13280:	03000793          	li	a5,48
   13284:	0ef10923          	sb	a5,242(sp)
   13288:	0f310793          	addi	a5,sp,243
   1328c:	21010713          	addi	a4,sp,528
   13290:	030a0a1b          	addiw	s4,s4,48
   13294:	40e786b3          	sub	a3,a5,a4
   13298:	01478023          	sb	s4,0(a5)
   1329c:	1216879b          	addiw	a5,a3,289
   132a0:	06f13423          	sd	a5,104(sp)
   132a4:	84cfe06f          	j	112f0 <_vfprintf_r+0x6dc>
   132a8:	40ec87bb          	subw	a5,s9,a4
   132ac:	0017879b          	addiw	a5,a5,1
   132b0:	00078c9b          	sext.w	s9,a5
   132b4:	fffcca13          	not	s4,s9
   132b8:	43fa5a13          	srai	s4,s4,0x3f
   132bc:	0147f7b3          	and	a5,a5,s4
   132c0:	00078a1b          	sext.w	s4,a5
   132c4:	a7dff06f          	j	12d40 <_vfprintf_r+0x212c>
   132c8:	04013703          	ld	a4,64(sp)
   132cc:	00177693          	andi	a3,a4,1
   132d0:	00069463          	bnez	a3,132d8 <_vfprintf_r+0x26c4>
   132d4:	840fe06f          	j	11314 <_vfprintf_r+0x700>
   132d8:	834fe06f          	j	1130c <_vfprintf_r+0x6f8>
   132dc:	00030793          	mv	a5,t1
   132e0:	824ff06f          	j	12304 <_vfprintf_r+0x16f0>
   132e4:	00079a63          	bnez	a5,132f8 <_vfprintf_r+0x26e4>
   132e8:	00100a13          	li	s4,1
   132ec:	06600413          	li	s0,102
   132f0:	00100c93          	li	s9,1
   132f4:	a4dff06f          	j	12d40 <_vfprintf_r+0x212c>
   132f8:	04813783          	ld	a5,72(sp)
   132fc:	06600413          	li	s0,102
   13300:	0017879b          	addiw	a5,a5,1
   13304:	01778e3b          	addw	t3,a5,s7
   13308:	000e0c9b          	sext.w	s9,t3
   1330c:	fffcca13          	not	s4,s9
   13310:	43fa5a13          	srai	s4,s4,0x3f
   13314:	014e7e33          	and	t3,t3,s4
   13318:	000e0a1b          	sext.w	s4,t3
   1331c:	a25ff06f          	j	12d40 <_vfprintf_r+0x212c>
   13320:	01013703          	ld	a4,16(sp)
   13324:	00072b83          	lw	s7,0(a4)
   13328:	00870713          	addi	a4,a4,8
   1332c:	000bd463          	bgez	s7,13334 <_vfprintf_r+0x2720>
   13330:	fff00b93          	li	s7,-1
   13334:	00194403          	lbu	s0,1(s2)
   13338:	00e13823          	sd	a4,16(sp)
   1333c:	00078913          	mv	s2,a5
   13340:	a91fd06f          	j	10dd0 <_vfprintf_r+0x1bc>
   13344:	00013703          	ld	a4,0(sp)
   13348:	01075783          	lhu	a5,16(a4)
   1334c:	0407e793          	ori	a5,a5,64
   13350:	00f71823          	sh	a5,16(a4)
   13354:	b65fd06f          	j	10eb8 <_vfprintf_r+0x2a4>
   13358:	000b8a13          	mv	s4,s7
   1335c:	014d8a33          	add	s4,s11,s4
   13360:	a51ff06f          	j	12db0 <_vfprintf_r+0x219c>
   13364:	00200793          	li	a5,2
   13368:	06f13423          	sd	a5,104(sp)
   1336c:	f85fd06f          	j	112f0 <_vfprintf_r+0x6dc>

0000000000013370 <vfprintf>:
   13370:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   13374:	00060693          	mv	a3,a2
   13378:	00058613          	mv	a2,a1
   1337c:	00050593          	mv	a1,a0
   13380:	0007b503          	ld	a0,0(a5)
   13384:	891fd06f          	j	10c14 <_vfprintf_r>

0000000000013388 <__sbprintf>:
   13388:	0105d783          	lhu	a5,16(a1)
   1338c:	0ac5ae03          	lw	t3,172(a1)
   13390:	0125d303          	lhu	t1,18(a1)
   13394:	0305b883          	ld	a7,48(a1)
   13398:	0405b803          	ld	a6,64(a1)
   1339c:	b3010113          	addi	sp,sp,-1232
   133a0:	ffd7f793          	andi	a5,a5,-3
   133a4:	40000713          	li	a4,1024
   133a8:	4c813023          	sd	s0,1216(sp)
   133ac:	00f11823          	sh	a5,16(sp)
   133b0:	00058413          	mv	s0,a1
   133b4:	0b010793          	addi	a5,sp,176
   133b8:	00010593          	mv	a1,sp
   133bc:	4a913c23          	sd	s1,1208(sp)
   133c0:	4b213823          	sd	s2,1200(sp)
   133c4:	4c113423          	sd	ra,1224(sp)
   133c8:	00050913          	mv	s2,a0
   133cc:	0bc12623          	sw	t3,172(sp)
   133d0:	00611923          	sh	t1,18(sp)
   133d4:	03113823          	sd	a7,48(sp)
   133d8:	05013023          	sd	a6,64(sp)
   133dc:	00f13023          	sd	a5,0(sp)
   133e0:	00f13c23          	sd	a5,24(sp)
   133e4:	00e12623          	sw	a4,12(sp)
   133e8:	02e12023          	sw	a4,32(sp)
   133ec:	02012423          	sw	zero,40(sp)
   133f0:	825fd0ef          	jal	ra,10c14 <_vfprintf_r>
   133f4:	00050493          	mv	s1,a0
   133f8:	02055c63          	bgez	a0,13430 <__sbprintf+0xa8>
   133fc:	01015783          	lhu	a5,16(sp)
   13400:	0407f793          	andi	a5,a5,64
   13404:	00078863          	beqz	a5,13414 <__sbprintf+0x8c>
   13408:	01045783          	lhu	a5,16(s0)
   1340c:	0407e793          	ori	a5,a5,64
   13410:	00f41823          	sh	a5,16(s0)
   13414:	4c813083          	ld	ra,1224(sp)
   13418:	4c013403          	ld	s0,1216(sp)
   1341c:	00048513          	mv	a0,s1
   13420:	4b013903          	ld	s2,1200(sp)
   13424:	4b813483          	ld	s1,1208(sp)
   13428:	4d010113          	addi	sp,sp,1232
   1342c:	00008067          	ret
   13430:	00010593          	mv	a1,sp
   13434:	00090513          	mv	a0,s2
   13438:	5a4000ef          	jal	ra,139dc <_fflush_r>
   1343c:	fc0500e3          	beqz	a0,133fc <__sbprintf+0x74>
   13440:	fff00493          	li	s1,-1
   13444:	fb9ff06f          	j	133fc <__sbprintf+0x74>

0000000000013448 <__swsetup_r>:
   13448:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1344c:	0007b783          	ld	a5,0(a5)
   13450:	fe010113          	addi	sp,sp,-32
   13454:	00813823          	sd	s0,16(sp)
   13458:	00913423          	sd	s1,8(sp)
   1345c:	00113c23          	sd	ra,24(sp)
   13460:	00050493          	mv	s1,a0
   13464:	00058413          	mv	s0,a1
   13468:	00078663          	beqz	a5,13474 <__swsetup_r+0x2c>
   1346c:	0507a703          	lw	a4,80(a5)
   13470:	08070663          	beqz	a4,134fc <__swsetup_r+0xb4>
   13474:	01041703          	lh	a4,16(s0)
   13478:	03071793          	slli	a5,a4,0x30
   1347c:	0307d793          	srli	a5,a5,0x30
   13480:	0087f693          	andi	a3,a5,8
   13484:	08068a63          	beqz	a3,13518 <__swsetup_r+0xd0>
   13488:	01843683          	ld	a3,24(s0)
   1348c:	0a068a63          	beqz	a3,13540 <__swsetup_r+0xf8>
   13490:	0017f713          	andi	a4,a5,1
   13494:	02070863          	beqz	a4,134c4 <__swsetup_r+0x7c>
   13498:	02042783          	lw	a5,32(s0)
   1349c:	00042623          	sw	zero,12(s0)
   134a0:	00000513          	li	a0,0
   134a4:	40f007bb          	negw	a5,a5
   134a8:	02f42423          	sw	a5,40(s0)
   134ac:	02068a63          	beqz	a3,134e0 <__swsetup_r+0x98>
   134b0:	01813083          	ld	ra,24(sp)
   134b4:	01013403          	ld	s0,16(sp)
   134b8:	00813483          	ld	s1,8(sp)
   134bc:	02010113          	addi	sp,sp,32
   134c0:	00008067          	ret
   134c4:	0027f793          	andi	a5,a5,2
   134c8:	00000713          	li	a4,0
   134cc:	00079463          	bnez	a5,134d4 <__swsetup_r+0x8c>
   134d0:	02042703          	lw	a4,32(s0)
   134d4:	00e42623          	sw	a4,12(s0)
   134d8:	00000513          	li	a0,0
   134dc:	fc069ae3          	bnez	a3,134b0 <__swsetup_r+0x68>
   134e0:	01041783          	lh	a5,16(s0)
   134e4:	0807f713          	andi	a4,a5,128
   134e8:	fc0704e3          	beqz	a4,134b0 <__swsetup_r+0x68>
   134ec:	0407e793          	ori	a5,a5,64
   134f0:	00f41823          	sh	a5,16(s0)
   134f4:	fff00513          	li	a0,-1
   134f8:	fb9ff06f          	j	134b0 <__swsetup_r+0x68>
   134fc:	00078513          	mv	a0,a5
   13500:	085000ef          	jal	ra,13d84 <__sinit>
   13504:	01041703          	lh	a4,16(s0)
   13508:	03071793          	slli	a5,a4,0x30
   1350c:	0307d793          	srli	a5,a5,0x30
   13510:	0087f693          	andi	a3,a5,8
   13514:	f6069ae3          	bnez	a3,13488 <__swsetup_r+0x40>
   13518:	0107f693          	andi	a3,a5,16
   1351c:	06068e63          	beqz	a3,13598 <__swsetup_r+0x150>
   13520:	0047f793          	andi	a5,a5,4
   13524:	04079063          	bnez	a5,13564 <__swsetup_r+0x11c>
   13528:	01843683          	ld	a3,24(s0)
   1352c:	00876793          	ori	a5,a4,8
   13530:	00f41823          	sh	a5,16(s0)
   13534:	03079793          	slli	a5,a5,0x30
   13538:	0307d793          	srli	a5,a5,0x30
   1353c:	f4069ae3          	bnez	a3,13490 <__swsetup_r+0x48>
   13540:	2807f713          	andi	a4,a5,640
   13544:	20000613          	li	a2,512
   13548:	f4c704e3          	beq	a4,a2,13490 <__swsetup_r+0x48>
   1354c:	00040593          	mv	a1,s0
   13550:	00048513          	mv	a0,s1
   13554:	3e9030ef          	jal	ra,1713c <__smakebuf_r>
   13558:	01045783          	lhu	a5,16(s0)
   1355c:	01843683          	ld	a3,24(s0)
   13560:	f31ff06f          	j	13490 <__swsetup_r+0x48>
   13564:	05843583          	ld	a1,88(s0)
   13568:	00058e63          	beqz	a1,13584 <__swsetup_r+0x13c>
   1356c:	07440793          	addi	a5,s0,116
   13570:	00f58863          	beq	a1,a5,13580 <__swsetup_r+0x138>
   13574:	00048513          	mv	a0,s1
   13578:	18d000ef          	jal	ra,13f04 <_free_r>
   1357c:	01041703          	lh	a4,16(s0)
   13580:	04043c23          	sd	zero,88(s0)
   13584:	01843683          	ld	a3,24(s0)
   13588:	fdb77713          	andi	a4,a4,-37
   1358c:	00042423          	sw	zero,8(s0)
   13590:	00d43023          	sd	a3,0(s0)
   13594:	f99ff06f          	j	1352c <__swsetup_r+0xe4>
   13598:	00900793          	li	a5,9
   1359c:	00f4a023          	sw	a5,0(s1)
   135a0:	04076713          	ori	a4,a4,64
   135a4:	00e41823          	sh	a4,16(s0)
   135a8:	fff00513          	li	a0,-1
   135ac:	f05ff06f          	j	134b0 <__swsetup_r+0x68>

00000000000135b0 <__register_exitproc>:
   135b0:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   135b4:	0007b703          	ld	a4,0(a5)
   135b8:	1f873783          	ld	a5,504(a4)
   135bc:	06078063          	beqz	a5,1361c <__register_exitproc+0x6c>
   135c0:	0087a703          	lw	a4,8(a5)
   135c4:	01f00813          	li	a6,31
   135c8:	08e84663          	blt	a6,a4,13654 <__register_exitproc+0xa4>
   135cc:	02050863          	beqz	a0,135fc <__register_exitproc+0x4c>
   135d0:	00371813          	slli	a6,a4,0x3
   135d4:	01078833          	add	a6,a5,a6
   135d8:	10c83823          	sd	a2,272(a6)
   135dc:	3107a883          	lw	a7,784(a5)
   135e0:	00100613          	li	a2,1
   135e4:	00e6163b          	sllw	a2,a2,a4
   135e8:	00c8e8b3          	or	a7,a7,a2
   135ec:	3117a823          	sw	a7,784(a5)
   135f0:	20d83823          	sd	a3,528(a6)
   135f4:	00200693          	li	a3,2
   135f8:	02d50863          	beq	a0,a3,13628 <__register_exitproc+0x78>
   135fc:	00270693          	addi	a3,a4,2
   13600:	00369693          	slli	a3,a3,0x3
   13604:	0017071b          	addiw	a4,a4,1
   13608:	00e7a423          	sw	a4,8(a5)
   1360c:	00d787b3          	add	a5,a5,a3
   13610:	00b7b023          	sd	a1,0(a5)
   13614:	00000513          	li	a0,0
   13618:	00008067          	ret
   1361c:	20070793          	addi	a5,a4,512
   13620:	1ef73c23          	sd	a5,504(a4)
   13624:	f9dff06f          	j	135c0 <__register_exitproc+0x10>
   13628:	3147a683          	lw	a3,788(a5)
   1362c:	00000513          	li	a0,0
   13630:	00c6e633          	or	a2,a3,a2
   13634:	00270693          	addi	a3,a4,2
   13638:	00369693          	slli	a3,a3,0x3
   1363c:	0017071b          	addiw	a4,a4,1
   13640:	30c7aa23          	sw	a2,788(a5)
   13644:	00e7a423          	sw	a4,8(a5)
   13648:	00d787b3          	add	a5,a5,a3
   1364c:	00b7b023          	sd	a1,0(a5)
   13650:	00008067          	ret
   13654:	fff00513          	li	a0,-1
   13658:	00008067          	ret

000000000001365c <__call_exitprocs>:
   1365c:	fb010113          	addi	sp,sp,-80
   13660:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   13664:	01813023          	sd	s8,0(sp)
   13668:	0007bc03          	ld	s8,0(a5)
   1366c:	03313423          	sd	s3,40(sp)
   13670:	03413023          	sd	s4,32(sp)
   13674:	01513c23          	sd	s5,24(sp)
   13678:	01613823          	sd	s6,16(sp)
   1367c:	04113423          	sd	ra,72(sp)
   13680:	04813023          	sd	s0,64(sp)
   13684:	02913c23          	sd	s1,56(sp)
   13688:	03213823          	sd	s2,48(sp)
   1368c:	01713423          	sd	s7,8(sp)
   13690:	00050a93          	mv	s5,a0
   13694:	00058b13          	mv	s6,a1
   13698:	00100a13          	li	s4,1
   1369c:	fff00993          	li	s3,-1
   136a0:	1f8c3903          	ld	s2,504(s8)
   136a4:	02090863          	beqz	s2,136d4 <__call_exitprocs+0x78>
   136a8:	00892483          	lw	s1,8(s2)
   136ac:	fff4841b          	addiw	s0,s1,-1
   136b0:	02044263          	bltz	s0,136d4 <__call_exitprocs+0x78>
   136b4:	00349493          	slli	s1,s1,0x3
   136b8:	009904b3          	add	s1,s2,s1
   136bc:	040b0463          	beqz	s6,13704 <__call_exitprocs+0xa8>
   136c0:	2084b783          	ld	a5,520(s1)
   136c4:	05678063          	beq	a5,s6,13704 <__call_exitprocs+0xa8>
   136c8:	fff4041b          	addiw	s0,s0,-1
   136cc:	ff848493          	addi	s1,s1,-8
   136d0:	ff3416e3          	bne	s0,s3,136bc <__call_exitprocs+0x60>
   136d4:	04813083          	ld	ra,72(sp)
   136d8:	04013403          	ld	s0,64(sp)
   136dc:	03813483          	ld	s1,56(sp)
   136e0:	03013903          	ld	s2,48(sp)
   136e4:	02813983          	ld	s3,40(sp)
   136e8:	02013a03          	ld	s4,32(sp)
   136ec:	01813a83          	ld	s5,24(sp)
   136f0:	01013b03          	ld	s6,16(sp)
   136f4:	00813b83          	ld	s7,8(sp)
   136f8:	00013c03          	ld	s8,0(sp)
   136fc:	05010113          	addi	sp,sp,80
   13700:	00008067          	ret
   13704:	00892783          	lw	a5,8(s2)
   13708:	0084b703          	ld	a4,8(s1)
   1370c:	fff7879b          	addiw	a5,a5,-1
   13710:	04878e63          	beq	a5,s0,1376c <__call_exitprocs+0x110>
   13714:	0004b423          	sd	zero,8(s1)
   13718:	fa0708e3          	beqz	a4,136c8 <__call_exitprocs+0x6c>
   1371c:	31092783          	lw	a5,784(s2)
   13720:	008a16bb          	sllw	a3,s4,s0
   13724:	00892b83          	lw	s7,8(s2)
   13728:	00d7f7b3          	and	a5,a5,a3
   1372c:	0007879b          	sext.w	a5,a5
   13730:	00079e63          	bnez	a5,1374c <__call_exitprocs+0xf0>
   13734:	000700e7          	jalr	a4
   13738:	00892783          	lw	a5,8(s2)
   1373c:	f77792e3          	bne	a5,s7,136a0 <__call_exitprocs+0x44>
   13740:	1f8c3783          	ld	a5,504(s8)
   13744:	f92782e3          	beq	a5,s2,136c8 <__call_exitprocs+0x6c>
   13748:	f59ff06f          	j	136a0 <__call_exitprocs+0x44>
   1374c:	31492783          	lw	a5,788(s2)
   13750:	1084b583          	ld	a1,264(s1)
   13754:	00d7f7b3          	and	a5,a5,a3
   13758:	0007879b          	sext.w	a5,a5
   1375c:	00079c63          	bnez	a5,13774 <__call_exitprocs+0x118>
   13760:	000a8513          	mv	a0,s5
   13764:	000700e7          	jalr	a4
   13768:	fd1ff06f          	j	13738 <__call_exitprocs+0xdc>
   1376c:	00892423          	sw	s0,8(s2)
   13770:	fa9ff06f          	j	13718 <__call_exitprocs+0xbc>
   13774:	00058513          	mv	a0,a1
   13778:	000700e7          	jalr	a4
   1377c:	fbdff06f          	j	13738 <__call_exitprocs+0xdc>

0000000000013780 <__sflush_r>:
   13780:	01059783          	lh	a5,16(a1)
   13784:	fd010113          	addi	sp,sp,-48
   13788:	02813023          	sd	s0,32(sp)
   1378c:	03079713          	slli	a4,a5,0x30
   13790:	03075713          	srli	a4,a4,0x30
   13794:	01313423          	sd	s3,8(sp)
   13798:	02113423          	sd	ra,40(sp)
   1379c:	00913c23          	sd	s1,24(sp)
   137a0:	01213823          	sd	s2,16(sp)
   137a4:	00877693          	andi	a3,a4,8
   137a8:	00058413          	mv	s0,a1
   137ac:	00050993          	mv	s3,a0
   137b0:	10069a63          	bnez	a3,138c4 <__sflush_r+0x144>
   137b4:	00001737          	lui	a4,0x1
   137b8:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   137bc:	0085a683          	lw	a3,8(a1)
   137c0:	00e7e7b3          	or	a5,a5,a4
   137c4:	00f59823          	sh	a5,16(a1)
   137c8:	18d05063          	blez	a3,13948 <__sflush_r+0x1c8>
   137cc:	04843703          	ld	a4,72(s0)
   137d0:	0c070a63          	beqz	a4,138a4 <__sflush_r+0x124>
   137d4:	03079793          	slli	a5,a5,0x30
   137d8:	0307d793          	srli	a5,a5,0x30
   137dc:	0009a483          	lw	s1,0(s3)
   137e0:	03379693          	slli	a3,a5,0x33
   137e4:	0009a023          	sw	zero,0(s3)
   137e8:	03043583          	ld	a1,48(s0)
   137ec:	1606c463          	bltz	a3,13954 <__sflush_r+0x1d4>
   137f0:	00000613          	li	a2,0
   137f4:	00100693          	li	a3,1
   137f8:	00098513          	mv	a0,s3
   137fc:	000700e7          	jalr	a4
   13800:	fff00793          	li	a5,-1
   13804:	00050613          	mv	a2,a0
   13808:	18f50663          	beq	a0,a5,13994 <__sflush_r+0x214>
   1380c:	01045783          	lhu	a5,16(s0)
   13810:	04843703          	ld	a4,72(s0)
   13814:	03043583          	ld	a1,48(s0)
   13818:	0047f793          	andi	a5,a5,4
   1381c:	00078e63          	beqz	a5,13838 <__sflush_r+0xb8>
   13820:	00842683          	lw	a3,8(s0)
   13824:	05843783          	ld	a5,88(s0)
   13828:	40d60633          	sub	a2,a2,a3
   1382c:	00078663          	beqz	a5,13838 <__sflush_r+0xb8>
   13830:	07042783          	lw	a5,112(s0)
   13834:	40f60633          	sub	a2,a2,a5
   13838:	00000693          	li	a3,0
   1383c:	00098513          	mv	a0,s3
   13840:	000700e7          	jalr	a4
   13844:	fff00793          	li	a5,-1
   13848:	10f51a63          	bne	a0,a5,1395c <__sflush_r+0x1dc>
   1384c:	0009a703          	lw	a4,0(s3)
   13850:	01041783          	lh	a5,16(s0)
   13854:	16070263          	beqz	a4,139b8 <__sflush_r+0x238>
   13858:	01d00693          	li	a3,29
   1385c:	00d70663          	beq	a4,a3,13868 <__sflush_r+0xe8>
   13860:	01600693          	li	a3,22
   13864:	16d71463          	bne	a4,a3,139cc <__sflush_r+0x24c>
   13868:	01843683          	ld	a3,24(s0)
   1386c:	fffff737          	lui	a4,0xfffff
   13870:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdafaf>
   13874:	00e7f7b3          	and	a5,a5,a4
   13878:	00f41823          	sh	a5,16(s0)
   1387c:	00042423          	sw	zero,8(s0)
   13880:	00d43023          	sd	a3,0(s0)
   13884:	05843583          	ld	a1,88(s0)
   13888:	0099a023          	sw	s1,0(s3)
   1388c:	00058c63          	beqz	a1,138a4 <__sflush_r+0x124>
   13890:	07440793          	addi	a5,s0,116
   13894:	00f58663          	beq	a1,a5,138a0 <__sflush_r+0x120>
   13898:	00098513          	mv	a0,s3
   1389c:	668000ef          	jal	ra,13f04 <_free_r>
   138a0:	04043c23          	sd	zero,88(s0)
   138a4:	00000513          	li	a0,0
   138a8:	02813083          	ld	ra,40(sp)
   138ac:	02013403          	ld	s0,32(sp)
   138b0:	01813483          	ld	s1,24(sp)
   138b4:	01013903          	ld	s2,16(sp)
   138b8:	00813983          	ld	s3,8(sp)
   138bc:	03010113          	addi	sp,sp,48
   138c0:	00008067          	ret
   138c4:	0185b903          	ld	s2,24(a1)
   138c8:	fc090ee3          	beqz	s2,138a4 <__sflush_r+0x124>
   138cc:	0005b483          	ld	s1,0(a1)
   138d0:	00377713          	andi	a4,a4,3
   138d4:	0125b023          	sd	s2,0(a1)
   138d8:	412484bb          	subw	s1,s1,s2
   138dc:	00000793          	li	a5,0
   138e0:	00071463          	bnez	a4,138e8 <__sflush_r+0x168>
   138e4:	0205a783          	lw	a5,32(a1)
   138e8:	00f42623          	sw	a5,12(s0)
   138ec:	00904863          	bgtz	s1,138fc <__sflush_r+0x17c>
   138f0:	fb5ff06f          	j	138a4 <__sflush_r+0x124>
   138f4:	00a90933          	add	s2,s2,a0
   138f8:	fa9056e3          	blez	s1,138a4 <__sflush_r+0x124>
   138fc:	04043783          	ld	a5,64(s0)
   13900:	03043583          	ld	a1,48(s0)
   13904:	00048693          	mv	a3,s1
   13908:	00090613          	mv	a2,s2
   1390c:	00098513          	mv	a0,s3
   13910:	000780e7          	jalr	a5
   13914:	40a484bb          	subw	s1,s1,a0
   13918:	fca04ee3          	bgtz	a0,138f4 <__sflush_r+0x174>
   1391c:	01045783          	lhu	a5,16(s0)
   13920:	02813083          	ld	ra,40(sp)
   13924:	01813483          	ld	s1,24(sp)
   13928:	0407e793          	ori	a5,a5,64
   1392c:	00f41823          	sh	a5,16(s0)
   13930:	02013403          	ld	s0,32(sp)
   13934:	01013903          	ld	s2,16(sp)
   13938:	00813983          	ld	s3,8(sp)
   1393c:	fff00513          	li	a0,-1
   13940:	03010113          	addi	sp,sp,48
   13944:	00008067          	ret
   13948:	0705a703          	lw	a4,112(a1)
   1394c:	e8e040e3          	bgtz	a4,137cc <__sflush_r+0x4c>
   13950:	f55ff06f          	j	138a4 <__sflush_r+0x124>
   13954:	09043603          	ld	a2,144(s0)
   13958:	ec1ff06f          	j	13818 <__sflush_r+0x98>
   1395c:	01045783          	lhu	a5,16(s0)
   13960:	fffff737          	lui	a4,0xfffff
   13964:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdafaf>
   13968:	00e7f7b3          	and	a5,a5,a4
   1396c:	01843683          	ld	a3,24(s0)
   13970:	0107979b          	slliw	a5,a5,0x10
   13974:	4107d79b          	sraiw	a5,a5,0x10
   13978:	00f41823          	sh	a5,16(s0)
   1397c:	00042423          	sw	zero,8(s0)
   13980:	00d43023          	sd	a3,0(s0)
   13984:	03379713          	slli	a4,a5,0x33
   13988:	ee075ee3          	bgez	a4,13884 <__sflush_r+0x104>
   1398c:	08a43823          	sd	a0,144(s0)
   13990:	ef5ff06f          	j	13884 <__sflush_r+0x104>
   13994:	0009a783          	lw	a5,0(s3)
   13998:	e6078ae3          	beqz	a5,1380c <__sflush_r+0x8c>
   1399c:	01d00713          	li	a4,29
   139a0:	00e78663          	beq	a5,a4,139ac <__sflush_r+0x22c>
   139a4:	01600713          	li	a4,22
   139a8:	f6e79ae3          	bne	a5,a4,1391c <__sflush_r+0x19c>
   139ac:	0099a023          	sw	s1,0(s3)
   139b0:	00000513          	li	a0,0
   139b4:	ef5ff06f          	j	138a8 <__sflush_r+0x128>
   139b8:	fffff737          	lui	a4,0xfffff
   139bc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdafaf>
   139c0:	01843683          	ld	a3,24(s0)
   139c4:	00e7f7b3          	and	a5,a5,a4
   139c8:	fb1ff06f          	j	13978 <__sflush_r+0x1f8>
   139cc:	0407e793          	ori	a5,a5,64
   139d0:	00f41823          	sh	a5,16(s0)
   139d4:	fff00513          	li	a0,-1
   139d8:	ed1ff06f          	j	138a8 <__sflush_r+0x128>

00000000000139dc <_fflush_r>:
   139dc:	fe010113          	addi	sp,sp,-32
   139e0:	00813823          	sd	s0,16(sp)
   139e4:	00113c23          	sd	ra,24(sp)
   139e8:	00050413          	mv	s0,a0
   139ec:	00050663          	beqz	a0,139f8 <_fflush_r+0x1c>
   139f0:	05052783          	lw	a5,80(a0)
   139f4:	02078063          	beqz	a5,13a14 <_fflush_r+0x38>
   139f8:	01059783          	lh	a5,16(a1)
   139fc:	02079663          	bnez	a5,13a28 <_fflush_r+0x4c>
   13a00:	01813083          	ld	ra,24(sp)
   13a04:	01013403          	ld	s0,16(sp)
   13a08:	00000513          	li	a0,0
   13a0c:	02010113          	addi	sp,sp,32
   13a10:	00008067          	ret
   13a14:	00b13423          	sd	a1,8(sp)
   13a18:	36c000ef          	jal	ra,13d84 <__sinit>
   13a1c:	00813583          	ld	a1,8(sp)
   13a20:	01059783          	lh	a5,16(a1)
   13a24:	fc078ee3          	beqz	a5,13a00 <_fflush_r+0x24>
   13a28:	00040513          	mv	a0,s0
   13a2c:	01013403          	ld	s0,16(sp)
   13a30:	01813083          	ld	ra,24(sp)
   13a34:	02010113          	addi	sp,sp,32
   13a38:	d49ff06f          	j	13780 <__sflush_r>

0000000000013a3c <fflush>:
   13a3c:	00050593          	mv	a1,a0
   13a40:	00050863          	beqz	a0,13a50 <fflush+0x14>
   13a44:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   13a48:	0007b503          	ld	a0,0(a5)
   13a4c:	f91ff06f          	j	139dc <_fflush_r>
   13a50:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   13a54:	0007b503          	ld	a0,0(a5)
   13a58:	00000597          	auipc	a1,0x0
   13a5c:	f8458593          	addi	a1,a1,-124 # 139dc <_fflush_r>
   13a60:	0c10006f          	j	14320 <_fwalk_reent>

0000000000013a64 <__fp_lock>:
   13a64:	00000513          	li	a0,0
   13a68:	00008067          	ret

0000000000013a6c <_cleanup_r>:
   13a6c:	00009597          	auipc	a1,0x9
   13a70:	71058593          	addi	a1,a1,1808 # 1d17c <_fclose_r>
   13a74:	0ad0006f          	j	14320 <_fwalk_reent>

0000000000013a78 <__sinit.part.0>:
   13a78:	fc010113          	addi	sp,sp,-64
   13a7c:	02113c23          	sd	ra,56(sp)
   13a80:	02813823          	sd	s0,48(sp)
   13a84:	02913423          	sd	s1,40(sp)
   13a88:	03213023          	sd	s2,32(sp)
   13a8c:	01313c23          	sd	s3,24(sp)
   13a90:	01413823          	sd	s4,16(sp)
   13a94:	01513423          	sd	s5,8(sp)
   13a98:	01613023          	sd	s6,0(sp)
   13a9c:	00853403          	ld	s0,8(a0)
   13aa0:	00000717          	auipc	a4,0x0
   13aa4:	fcc70713          	addi	a4,a4,-52 # 13a6c <_cleanup_r>
   13aa8:	04e53c23          	sd	a4,88(a0)
   13aac:	53850793          	addi	a5,a0,1336
   13ab0:	00300713          	li	a4,3
   13ab4:	52e52423          	sw	a4,1320(a0)
   13ab8:	52f53823          	sd	a5,1328(a0)
   13abc:	52053023          	sd	zero,1312(a0)
   13ac0:	00400793          	li	a5,4
   13ac4:	00050913          	mv	s2,a0
   13ac8:	00f42823          	sw	a5,16(s0)
   13acc:	00800613          	li	a2,8
   13ad0:	00000593          	li	a1,0
   13ad4:	0a042623          	sw	zero,172(s0)
   13ad8:	00043023          	sd	zero,0(s0)
   13adc:	00043423          	sd	zero,8(s0)
   13ae0:	00043c23          	sd	zero,24(s0)
   13ae4:	02042023          	sw	zero,32(s0)
   13ae8:	02042423          	sw	zero,40(s0)
   13aec:	0a440513          	addi	a0,s0,164
   13af0:	fb1fc0ef          	jal	ra,10aa0 <memset>
   13af4:	01093483          	ld	s1,16(s2)
   13af8:	00005b17          	auipc	s6,0x5
   13afc:	498b0b13          	addi	s6,s6,1176 # 18f90 <__sread>
   13b00:	00005a97          	auipc	s5,0x5
   13b04:	4f4a8a93          	addi	s5,s5,1268 # 18ff4 <__swrite>
   13b08:	00005a17          	auipc	s4,0x5
   13b0c:	574a0a13          	addi	s4,s4,1396 # 1907c <__sseek>
   13b10:	00005997          	auipc	s3,0x5
   13b14:	5d498993          	addi	s3,s3,1492 # 190e4 <__sclose>
   13b18:	000107b7          	lui	a5,0x10
   13b1c:	03643c23          	sd	s6,56(s0)
   13b20:	05543023          	sd	s5,64(s0)
   13b24:	05443423          	sd	s4,72(s0)
   13b28:	05343823          	sd	s3,80(s0)
   13b2c:	02843823          	sd	s0,48(s0)
   13b30:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   13b34:	00f4a823          	sw	a5,16(s1)
   13b38:	00800613          	li	a2,8
   13b3c:	00000593          	li	a1,0
   13b40:	0a04a623          	sw	zero,172(s1)
   13b44:	0004b023          	sd	zero,0(s1)
   13b48:	0004b423          	sd	zero,8(s1)
   13b4c:	0004bc23          	sd	zero,24(s1)
   13b50:	0204a023          	sw	zero,32(s1)
   13b54:	0204a423          	sw	zero,40(s1)
   13b58:	0a448513          	addi	a0,s1,164
   13b5c:	f45fc0ef          	jal	ra,10aa0 <memset>
   13b60:	01893403          	ld	s0,24(s2)
   13b64:	000207b7          	lui	a5,0x20
   13b68:	0364bc23          	sd	s6,56(s1)
   13b6c:	0554b023          	sd	s5,64(s1)
   13b70:	0544b423          	sd	s4,72(s1)
   13b74:	0534b823          	sd	s3,80(s1)
   13b78:	0294b823          	sd	s1,48(s1)
   13b7c:	01278793          	addi	a5,a5,18 # 20012 <__muldf3+0x7a>
   13b80:	00f42823          	sw	a5,16(s0)
   13b84:	0a042623          	sw	zero,172(s0)
   13b88:	00043023          	sd	zero,0(s0)
   13b8c:	00043423          	sd	zero,8(s0)
   13b90:	00043c23          	sd	zero,24(s0)
   13b94:	02042023          	sw	zero,32(s0)
   13b98:	02042423          	sw	zero,40(s0)
   13b9c:	0a440513          	addi	a0,s0,164
   13ba0:	00800613          	li	a2,8
   13ba4:	00000593          	li	a1,0
   13ba8:	ef9fc0ef          	jal	ra,10aa0 <memset>
   13bac:	03813083          	ld	ra,56(sp)
   13bb0:	03643c23          	sd	s6,56(s0)
   13bb4:	05543023          	sd	s5,64(s0)
   13bb8:	05443423          	sd	s4,72(s0)
   13bbc:	05343823          	sd	s3,80(s0)
   13bc0:	02843823          	sd	s0,48(s0)
   13bc4:	03013403          	ld	s0,48(sp)
   13bc8:	00100793          	li	a5,1
   13bcc:	04f92823          	sw	a5,80(s2)
   13bd0:	02813483          	ld	s1,40(sp)
   13bd4:	02013903          	ld	s2,32(sp)
   13bd8:	01813983          	ld	s3,24(sp)
   13bdc:	01013a03          	ld	s4,16(sp)
   13be0:	00813a83          	ld	s5,8(sp)
   13be4:	00013b03          	ld	s6,0(sp)
   13be8:	04010113          	addi	sp,sp,64
   13bec:	00008067          	ret

0000000000013bf0 <__fp_unlock>:
   13bf0:	00000513          	li	a0,0
   13bf4:	00008067          	ret

0000000000013bf8 <__sfmoreglue>:
   13bf8:	fe010113          	addi	sp,sp,-32
   13bfc:	fff5861b          	addiw	a2,a1,-1
   13c00:	00813823          	sd	s0,16(sp)
   13c04:	00161413          	slli	s0,a2,0x1
   13c08:	00c40433          	add	s0,s0,a2
   13c0c:	00241413          	slli	s0,s0,0x2
   13c10:	40c40433          	sub	s0,s0,a2
   13c14:	00441413          	slli	s0,s0,0x4
   13c18:	01213023          	sd	s2,0(sp)
   13c1c:	00058913          	mv	s2,a1
   13c20:	0c840593          	addi	a1,s0,200
   13c24:	00913423          	sd	s1,8(sp)
   13c28:	00113c23          	sd	ra,24(sp)
   13c2c:	630030ef          	jal	ra,1725c <_malloc_r>
   13c30:	00050493          	mv	s1,a0
   13c34:	02050063          	beqz	a0,13c54 <__sfmoreglue+0x5c>
   13c38:	01850513          	addi	a0,a0,24
   13c3c:	0004b023          	sd	zero,0(s1)
   13c40:	0124a423          	sw	s2,8(s1)
   13c44:	00a4b823          	sd	a0,16(s1)
   13c48:	0b040613          	addi	a2,s0,176
   13c4c:	00000593          	li	a1,0
   13c50:	e51fc0ef          	jal	ra,10aa0 <memset>
   13c54:	01813083          	ld	ra,24(sp)
   13c58:	01013403          	ld	s0,16(sp)
   13c5c:	00048513          	mv	a0,s1
   13c60:	00013903          	ld	s2,0(sp)
   13c64:	00813483          	ld	s1,8(sp)
   13c68:	02010113          	addi	sp,sp,32
   13c6c:	00008067          	ret

0000000000013c70 <__sfp>:
   13c70:	fd010113          	addi	sp,sp,-48
   13c74:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   13c78:	01213823          	sd	s2,16(sp)
   13c7c:	0007b903          	ld	s2,0(a5)
   13c80:	01313423          	sd	s3,8(sp)
   13c84:	02113423          	sd	ra,40(sp)
   13c88:	05092783          	lw	a5,80(s2)
   13c8c:	02813023          	sd	s0,32(sp)
   13c90:	00913c23          	sd	s1,24(sp)
   13c94:	00050993          	mv	s3,a0
   13c98:	0a078463          	beqz	a5,13d40 <__sfp+0xd0>
   13c9c:	52090913          	addi	s2,s2,1312
   13ca0:	fff00493          	li	s1,-1
   13ca4:	00892783          	lw	a5,8(s2)
   13ca8:	01093403          	ld	s0,16(s2)
   13cac:	fff7879b          	addiw	a5,a5,-1
   13cb0:	0007da63          	bgez	a5,13cc4 <__sfp+0x54>
   13cb4:	07c0006f          	j	13d30 <__sfp+0xc0>
   13cb8:	fff7879b          	addiw	a5,a5,-1
   13cbc:	0b040413          	addi	s0,s0,176
   13cc0:	06978863          	beq	a5,s1,13d30 <__sfp+0xc0>
   13cc4:	01041703          	lh	a4,16(s0)
   13cc8:	fe0718e3          	bnez	a4,13cb8 <__sfp+0x48>
   13ccc:	ffff07b7          	lui	a5,0xffff0
   13cd0:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb7b1>
   13cd4:	0a042623          	sw	zero,172(s0)
   13cd8:	00043023          	sd	zero,0(s0)
   13cdc:	00043423          	sd	zero,8(s0)
   13ce0:	00f42823          	sw	a5,16(s0)
   13ce4:	00043c23          	sd	zero,24(s0)
   13ce8:	02042023          	sw	zero,32(s0)
   13cec:	02042423          	sw	zero,40(s0)
   13cf0:	00800613          	li	a2,8
   13cf4:	00000593          	li	a1,0
   13cf8:	0a440513          	addi	a0,s0,164
   13cfc:	da5fc0ef          	jal	ra,10aa0 <memset>
   13d00:	04043c23          	sd	zero,88(s0)
   13d04:	06042023          	sw	zero,96(s0)
   13d08:	06043c23          	sd	zero,120(s0)
   13d0c:	08042023          	sw	zero,128(s0)
   13d10:	00040513          	mv	a0,s0
   13d14:	02813083          	ld	ra,40(sp)
   13d18:	02013403          	ld	s0,32(sp)
   13d1c:	01813483          	ld	s1,24(sp)
   13d20:	01013903          	ld	s2,16(sp)
   13d24:	00813983          	ld	s3,8(sp)
   13d28:	03010113          	addi	sp,sp,48
   13d2c:	00008067          	ret
   13d30:	00093403          	ld	s0,0(s2)
   13d34:	00040c63          	beqz	s0,13d4c <__sfp+0xdc>
   13d38:	00040913          	mv	s2,s0
   13d3c:	f69ff06f          	j	13ca4 <__sfp+0x34>
   13d40:	00090513          	mv	a0,s2
   13d44:	d35ff0ef          	jal	ra,13a78 <__sinit.part.0>
   13d48:	f55ff06f          	j	13c9c <__sfp+0x2c>
   13d4c:	00400593          	li	a1,4
   13d50:	00098513          	mv	a0,s3
   13d54:	ea5ff0ef          	jal	ra,13bf8 <__sfmoreglue>
   13d58:	00a93023          	sd	a0,0(s2)
   13d5c:	00050413          	mv	s0,a0
   13d60:	fc051ce3          	bnez	a0,13d38 <__sfp+0xc8>
   13d64:	00c00793          	li	a5,12
   13d68:	00f9a023          	sw	a5,0(s3)
   13d6c:	fa5ff06f          	j	13d10 <__sfp+0xa0>

0000000000013d70 <_cleanup>:
   13d70:	74818793          	addi	a5,gp,1864 # 24798 <_global_impure_ptr>
   13d74:	0007b503          	ld	a0,0(a5)
   13d78:	00009597          	auipc	a1,0x9
   13d7c:	40458593          	addi	a1,a1,1028 # 1d17c <_fclose_r>
   13d80:	5a00006f          	j	14320 <_fwalk_reent>

0000000000013d84 <__sinit>:
   13d84:	05052783          	lw	a5,80(a0)
   13d88:	00078463          	beqz	a5,13d90 <__sinit+0xc>
   13d8c:	00008067          	ret
   13d90:	ce9ff06f          	j	13a78 <__sinit.part.0>

0000000000013d94 <__sfp_lock_acquire>:
   13d94:	00008067          	ret

0000000000013d98 <__sfp_lock_release>:
   13d98:	00008067          	ret

0000000000013d9c <__sinit_lock_acquire>:
   13d9c:	00008067          	ret

0000000000013da0 <__sinit_lock_release>:
   13da0:	00008067          	ret

0000000000013da4 <__fp_lock_all>:
   13da4:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   13da8:	0007b503          	ld	a0,0(a5)
   13dac:	00000597          	auipc	a1,0x0
   13db0:	cb858593          	addi	a1,a1,-840 # 13a64 <__fp_lock>
   13db4:	4980006f          	j	1424c <_fwalk>

0000000000013db8 <__fp_unlock_all>:
   13db8:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   13dbc:	0007b503          	ld	a0,0(a5)
   13dc0:	00000597          	auipc	a1,0x0
   13dc4:	e3058593          	addi	a1,a1,-464 # 13bf0 <__fp_unlock>
   13dc8:	4840006f          	j	1424c <_fwalk>

0000000000013dcc <_malloc_trim_r>:
   13dcc:	fd010113          	addi	sp,sp,-48
   13dd0:	02813023          	sd	s0,32(sp)
   13dd4:	00913c23          	sd	s1,24(sp)
   13dd8:	01213823          	sd	s2,16(sp)
   13ddc:	01313423          	sd	s3,8(sp)
   13de0:	00058413          	mv	s0,a1
   13de4:	02113423          	sd	ra,40(sp)
   13de8:	00010997          	auipc	s3,0x10
   13dec:	17098993          	addi	s3,s3,368 # 23f58 <__malloc_av_>
   13df0:	00050913          	mv	s2,a0
   13df4:	625030ef          	jal	ra,17c18 <__malloc_lock>
   13df8:	0109b683          	ld	a3,16(s3)
   13dfc:	00001737          	lui	a4,0x1
   13e00:	fdf70793          	addi	a5,a4,-33 # fdf <register_fini-0xf0d1>
   13e04:	0086b483          	ld	s1,8(a3)
   13e08:	40878433          	sub	s0,a5,s0
   13e0c:	ffc4f493          	andi	s1,s1,-4
   13e10:	00940433          	add	s0,s0,s1
   13e14:	00c45413          	srli	s0,s0,0xc
   13e18:	fff40413          	addi	s0,s0,-1
   13e1c:	00c41413          	slli	s0,s0,0xc
   13e20:	00e44e63          	blt	s0,a4,13e3c <_malloc_trim_r+0x70>
   13e24:	00000593          	li	a1,0
   13e28:	00090513          	mv	a0,s2
   13e2c:	75d040ef          	jal	ra,18d88 <_sbrk_r>
   13e30:	0109b783          	ld	a5,16(s3)
   13e34:	009787b3          	add	a5,a5,s1
   13e38:	02f50663          	beq	a0,a5,13e64 <_malloc_trim_r+0x98>
   13e3c:	00090513          	mv	a0,s2
   13e40:	5dd030ef          	jal	ra,17c1c <__malloc_unlock>
   13e44:	02813083          	ld	ra,40(sp)
   13e48:	02013403          	ld	s0,32(sp)
   13e4c:	01813483          	ld	s1,24(sp)
   13e50:	01013903          	ld	s2,16(sp)
   13e54:	00813983          	ld	s3,8(sp)
   13e58:	00000513          	li	a0,0
   13e5c:	03010113          	addi	sp,sp,48
   13e60:	00008067          	ret
   13e64:	408005b3          	neg	a1,s0
   13e68:	00090513          	mv	a0,s2
   13e6c:	71d040ef          	jal	ra,18d88 <_sbrk_r>
   13e70:	fff00793          	li	a5,-1
   13e74:	04f50a63          	beq	a0,a5,13ec8 <_malloc_trim_r+0xfc>
   13e78:	00011797          	auipc	a5,0x11
   13e7c:	9a878793          	addi	a5,a5,-1624 # 24820 <__malloc_current_mallinfo>
   13e80:	0007a783          	lw	a5,0(a5)
   13e84:	0109b703          	ld	a4,16(s3)
   13e88:	408484b3          	sub	s1,s1,s0
   13e8c:	0014e493          	ori	s1,s1,1
   13e90:	4087843b          	subw	s0,a5,s0
   13e94:	00090513          	mv	a0,s2
   13e98:	00973423          	sd	s1,8(a4)
   13e9c:	00011797          	auipc	a5,0x11
   13ea0:	9887a223          	sw	s0,-1660(a5) # 24820 <__malloc_current_mallinfo>
   13ea4:	579030ef          	jal	ra,17c1c <__malloc_unlock>
   13ea8:	02813083          	ld	ra,40(sp)
   13eac:	02013403          	ld	s0,32(sp)
   13eb0:	01813483          	ld	s1,24(sp)
   13eb4:	01013903          	ld	s2,16(sp)
   13eb8:	00813983          	ld	s3,8(sp)
   13ebc:	00100513          	li	a0,1
   13ec0:	03010113          	addi	sp,sp,48
   13ec4:	00008067          	ret
   13ec8:	00000593          	li	a1,0
   13ecc:	00090513          	mv	a0,s2
   13ed0:	6b9040ef          	jal	ra,18d88 <_sbrk_r>
   13ed4:	0109b703          	ld	a4,16(s3)
   13ed8:	01f00693          	li	a3,31
   13edc:	40e507b3          	sub	a5,a0,a4
   13ee0:	f4f6dee3          	bge	a3,a5,13e3c <_malloc_trim_r+0x70>
   13ee4:	76018693          	addi	a3,gp,1888 # 247b0 <__malloc_sbrk_base>
   13ee8:	0006b683          	ld	a3,0(a3)
   13eec:	0017e793          	ori	a5,a5,1
   13ef0:	00f73423          	sd	a5,8(a4)
   13ef4:	40d50533          	sub	a0,a0,a3
   13ef8:	00011797          	auipc	a5,0x11
   13efc:	92a7a423          	sw	a0,-1752(a5) # 24820 <__malloc_current_mallinfo>
   13f00:	f3dff06f          	j	13e3c <_malloc_trim_r+0x70>

0000000000013f04 <_free_r>:
   13f04:	14058263          	beqz	a1,14048 <_free_r+0x144>
   13f08:	fe010113          	addi	sp,sp,-32
   13f0c:	00813823          	sd	s0,16(sp)
   13f10:	00913423          	sd	s1,8(sp)
   13f14:	00058413          	mv	s0,a1
   13f18:	00050493          	mv	s1,a0
   13f1c:	00113c23          	sd	ra,24(sp)
   13f20:	4f9030ef          	jal	ra,17c18 <__malloc_lock>
   13f24:	ff843583          	ld	a1,-8(s0)
   13f28:	ff040713          	addi	a4,s0,-16
   13f2c:	00010517          	auipc	a0,0x10
   13f30:	02c50513          	addi	a0,a0,44 # 23f58 <__malloc_av_>
   13f34:	ffe5f793          	andi	a5,a1,-2
   13f38:	00f70633          	add	a2,a4,a5
   13f3c:	00863683          	ld	a3,8(a2)
   13f40:	01053803          	ld	a6,16(a0)
   13f44:	ffc6f693          	andi	a3,a3,-4
   13f48:	1ac80c63          	beq	a6,a2,14100 <_free_r+0x1fc>
   13f4c:	00d63423          	sd	a3,8(a2)
   13f50:	0015f593          	andi	a1,a1,1
   13f54:	00d60833          	add	a6,a2,a3
   13f58:	0a059863          	bnez	a1,14008 <_free_r+0x104>
   13f5c:	ff043303          	ld	t1,-16(s0)
   13f60:	00883583          	ld	a1,8(a6)
   13f64:	00010897          	auipc	a7,0x10
   13f68:	00488893          	addi	a7,a7,4 # 23f68 <__malloc_av_+0x10>
   13f6c:	40670733          	sub	a4,a4,t1
   13f70:	01073803          	ld	a6,16(a4)
   13f74:	006787b3          	add	a5,a5,t1
   13f78:	0015f593          	andi	a1,a1,1
   13f7c:	15180c63          	beq	a6,a7,140d4 <_free_r+0x1d0>
   13f80:	01873303          	ld	t1,24(a4)
   13f84:	00683c23          	sd	t1,24(a6)
   13f88:	01033823          	sd	a6,16(t1)
   13f8c:	1e058c63          	beqz	a1,14184 <_free_r+0x280>
   13f90:	0017e693          	ori	a3,a5,1
   13f94:	00d73423          	sd	a3,8(a4)
   13f98:	00f63023          	sd	a5,0(a2)
   13f9c:	1ff00693          	li	a3,511
   13fa0:	0cf6e063          	bltu	a3,a5,14060 <_free_r+0x15c>
   13fa4:	0037d793          	srli	a5,a5,0x3
   13fa8:	0007879b          	sext.w	a5,a5
   13fac:	0017869b          	addiw	a3,a5,1
   13fb0:	0016969b          	slliw	a3,a3,0x1
   13fb4:	00369693          	slli	a3,a3,0x3
   13fb8:	00853583          	ld	a1,8(a0)
   13fbc:	00d50533          	add	a0,a0,a3
   13fc0:	00053603          	ld	a2,0(a0)
   13fc4:	00100693          	li	a3,1
   13fc8:	4027d79b          	sraiw	a5,a5,0x2
   13fcc:	00f697b3          	sll	a5,a3,a5
   13fd0:	00b7e7b3          	or	a5,a5,a1
   13fd4:	ff050693          	addi	a3,a0,-16
   13fd8:	00d73c23          	sd	a3,24(a4)
   13fdc:	00c73823          	sd	a2,16(a4)
   13fe0:	00010697          	auipc	a3,0x10
   13fe4:	f8f6b023          	sd	a5,-128(a3) # 23f60 <__malloc_av_+0x8>
   13fe8:	00e53023          	sd	a4,0(a0)
   13fec:	00e63c23          	sd	a4,24(a2)
   13ff0:	01013403          	ld	s0,16(sp)
   13ff4:	01813083          	ld	ra,24(sp)
   13ff8:	00048513          	mv	a0,s1
   13ffc:	00813483          	ld	s1,8(sp)
   14000:	02010113          	addi	sp,sp,32
   14004:	4190306f          	j	17c1c <__malloc_unlock>
   14008:	00883583          	ld	a1,8(a6)
   1400c:	0015f593          	andi	a1,a1,1
   14010:	02059e63          	bnez	a1,1404c <_free_r+0x148>
   14014:	00d787b3          	add	a5,a5,a3
   14018:	00010897          	auipc	a7,0x10
   1401c:	f5088893          	addi	a7,a7,-176 # 23f68 <__malloc_av_+0x10>
   14020:	01063683          	ld	a3,16(a2)
   14024:	0017e813          	ori	a6,a5,1
   14028:	00f705b3          	add	a1,a4,a5
   1402c:	17168c63          	beq	a3,a7,141a4 <_free_r+0x2a0>
   14030:	01863603          	ld	a2,24(a2)
   14034:	00c6bc23          	sd	a2,24(a3)
   14038:	00d63823          	sd	a3,16(a2)
   1403c:	01073423          	sd	a6,8(a4)
   14040:	00f5b023          	sd	a5,0(a1)
   14044:	f59ff06f          	j	13f9c <_free_r+0x98>
   14048:	00008067          	ret
   1404c:	0017e693          	ori	a3,a5,1
   14050:	fed43c23          	sd	a3,-8(s0)
   14054:	00f63023          	sd	a5,0(a2)
   14058:	1ff00693          	li	a3,511
   1405c:	f4f6f4e3          	bgeu	a3,a5,13fa4 <_free_r+0xa0>
   14060:	0097d693          	srli	a3,a5,0x9
   14064:	00400613          	li	a2,4
   14068:	0ed66863          	bltu	a2,a3,14158 <_free_r+0x254>
   1406c:	0067d693          	srli	a3,a5,0x6
   14070:	0006869b          	sext.w	a3,a3
   14074:	0396859b          	addiw	a1,a3,57
   14078:	0015959b          	slliw	a1,a1,0x1
   1407c:	0386861b          	addiw	a2,a3,56
   14080:	00359593          	slli	a1,a1,0x3
   14084:	00b505b3          	add	a1,a0,a1
   14088:	0005b683          	ld	a3,0(a1)
   1408c:	ff058593          	addi	a1,a1,-16
   14090:	12d58c63          	beq	a1,a3,141c8 <_free_r+0x2c4>
   14094:	0086b603          	ld	a2,8(a3)
   14098:	ffc67613          	andi	a2,a2,-4
   1409c:	00c7f663          	bgeu	a5,a2,140a8 <_free_r+0x1a4>
   140a0:	0106b683          	ld	a3,16(a3)
   140a4:	fed598e3          	bne	a1,a3,14094 <_free_r+0x190>
   140a8:	0186b583          	ld	a1,24(a3)
   140ac:	00b73c23          	sd	a1,24(a4)
   140b0:	00d73823          	sd	a3,16(a4)
   140b4:	01013403          	ld	s0,16(sp)
   140b8:	00e5b823          	sd	a4,16(a1)
   140bc:	01813083          	ld	ra,24(sp)
   140c0:	00048513          	mv	a0,s1
   140c4:	00813483          	ld	s1,8(sp)
   140c8:	00e6bc23          	sd	a4,24(a3)
   140cc:	02010113          	addi	sp,sp,32
   140d0:	34d0306f          	j	17c1c <__malloc_unlock>
   140d4:	16059463          	bnez	a1,1423c <_free_r+0x338>
   140d8:	01063583          	ld	a1,16(a2)
   140dc:	01863603          	ld	a2,24(a2)
   140e0:	00f687b3          	add	a5,a3,a5
   140e4:	0017e693          	ori	a3,a5,1
   140e8:	00c5bc23          	sd	a2,24(a1)
   140ec:	00b63823          	sd	a1,16(a2)
   140f0:	00d73423          	sd	a3,8(a4)
   140f4:	00f70733          	add	a4,a4,a5
   140f8:	00f73023          	sd	a5,0(a4)
   140fc:	ef5ff06f          	j	13ff0 <_free_r+0xec>
   14100:	0015f593          	andi	a1,a1,1
   14104:	00d787b3          	add	a5,a5,a3
   14108:	02059063          	bnez	a1,14128 <_free_r+0x224>
   1410c:	ff043583          	ld	a1,-16(s0)
   14110:	40b70733          	sub	a4,a4,a1
   14114:	01873683          	ld	a3,24(a4)
   14118:	01073603          	ld	a2,16(a4)
   1411c:	00b787b3          	add	a5,a5,a1
   14120:	00d63c23          	sd	a3,24(a2)
   14124:	00c6b823          	sd	a2,16(a3)
   14128:	76818693          	addi	a3,gp,1896 # 247b8 <__malloc_trim_threshold>
   1412c:	0017e613          	ori	a2,a5,1
   14130:	0006b683          	ld	a3,0(a3)
   14134:	00c73423          	sd	a2,8(a4)
   14138:	00010617          	auipc	a2,0x10
   1413c:	e2e63823          	sd	a4,-464(a2) # 23f68 <__malloc_av_+0x10>
   14140:	ead7e8e3          	bltu	a5,a3,13ff0 <_free_r+0xec>
   14144:	78818793          	addi	a5,gp,1928 # 247d8 <__malloc_top_pad>
   14148:	0007b583          	ld	a1,0(a5)
   1414c:	00048513          	mv	a0,s1
   14150:	c7dff0ef          	jal	ra,13dcc <_malloc_trim_r>
   14154:	e9dff06f          	j	13ff0 <_free_r+0xec>
   14158:	01400613          	li	a2,20
   1415c:	02d67863          	bgeu	a2,a3,1418c <_free_r+0x288>
   14160:	05400613          	li	a2,84
   14164:	08d66263          	bltu	a2,a3,141e8 <_free_r+0x2e4>
   14168:	00c7d693          	srli	a3,a5,0xc
   1416c:	0006869b          	sext.w	a3,a3
   14170:	06f6859b          	addiw	a1,a3,111
   14174:	0015959b          	slliw	a1,a1,0x1
   14178:	06e6861b          	addiw	a2,a3,110
   1417c:	00359593          	slli	a1,a1,0x3
   14180:	f05ff06f          	j	14084 <_free_r+0x180>
   14184:	00d787b3          	add	a5,a5,a3
   14188:	e99ff06f          	j	14020 <_free_r+0x11c>
   1418c:	0006869b          	sext.w	a3,a3
   14190:	05c6859b          	addiw	a1,a3,92
   14194:	0015959b          	slliw	a1,a1,0x1
   14198:	05b6861b          	addiw	a2,a3,91
   1419c:	00359593          	slli	a1,a1,0x3
   141a0:	ee5ff06f          	j	14084 <_free_r+0x180>
   141a4:	00010697          	auipc	a3,0x10
   141a8:	dce6be23          	sd	a4,-548(a3) # 23f80 <__malloc_av_+0x28>
   141ac:	00010697          	auipc	a3,0x10
   141b0:	dce6b623          	sd	a4,-564(a3) # 23f78 <__malloc_av_+0x20>
   141b4:	01173c23          	sd	a7,24(a4)
   141b8:	01173823          	sd	a7,16(a4)
   141bc:	01073423          	sd	a6,8(a4)
   141c0:	00f5b023          	sd	a5,0(a1)
   141c4:	e2dff06f          	j	13ff0 <_free_r+0xec>
   141c8:	00853503          	ld	a0,8(a0)
   141cc:	00100793          	li	a5,1
   141d0:	4026561b          	sraiw	a2,a2,0x2
   141d4:	00c79633          	sll	a2,a5,a2
   141d8:	00a66633          	or	a2,a2,a0
   141dc:	00010797          	auipc	a5,0x10
   141e0:	d8c7b223          	sd	a2,-636(a5) # 23f60 <__malloc_av_+0x8>
   141e4:	ec9ff06f          	j	140ac <_free_r+0x1a8>
   141e8:	15400613          	li	a2,340
   141ec:	02d66063          	bltu	a2,a3,1420c <_free_r+0x308>
   141f0:	00f7d693          	srli	a3,a5,0xf
   141f4:	0006869b          	sext.w	a3,a3
   141f8:	0786859b          	addiw	a1,a3,120
   141fc:	0015959b          	slliw	a1,a1,0x1
   14200:	0776861b          	addiw	a2,a3,119
   14204:	00359593          	slli	a1,a1,0x3
   14208:	e7dff06f          	j	14084 <_free_r+0x180>
   1420c:	55400613          	li	a2,1364
   14210:	02d66063          	bltu	a2,a3,14230 <_free_r+0x32c>
   14214:	0127d693          	srli	a3,a5,0x12
   14218:	0006869b          	sext.w	a3,a3
   1421c:	07d6859b          	addiw	a1,a3,125
   14220:	0015959b          	slliw	a1,a1,0x1
   14224:	07c6861b          	addiw	a2,a3,124
   14228:	00359593          	slli	a1,a1,0x3
   1422c:	e59ff06f          	j	14084 <_free_r+0x180>
   14230:	7f000593          	li	a1,2032
   14234:	07e00613          	li	a2,126
   14238:	e4dff06f          	j	14084 <_free_r+0x180>
   1423c:	0017e693          	ori	a3,a5,1
   14240:	00d73423          	sd	a3,8(a4)
   14244:	00f63023          	sd	a5,0(a2)
   14248:	da9ff06f          	j	13ff0 <_free_r+0xec>

000000000001424c <_fwalk>:
   1424c:	fc010113          	addi	sp,sp,-64
   14250:	01313c23          	sd	s3,24(sp)
   14254:	02113c23          	sd	ra,56(sp)
   14258:	02813823          	sd	s0,48(sp)
   1425c:	02913423          	sd	s1,40(sp)
   14260:	03213023          	sd	s2,32(sp)
   14264:	01413823          	sd	s4,16(sp)
   14268:	01513423          	sd	s5,8(sp)
   1426c:	01613023          	sd	s6,0(sp)
   14270:	52050993          	addi	s3,a0,1312
   14274:	0a098263          	beqz	s3,14318 <_fwalk+0xcc>
   14278:	00058a93          	mv	s5,a1
   1427c:	00000913          	li	s2,0
   14280:	00100b13          	li	s6,1
   14284:	fff00a13          	li	s4,-1
   14288:	0089a783          	lw	a5,8(s3)
   1428c:	0109b403          	ld	s0,16(s3)
   14290:	04f05a63          	blez	a5,142e4 <_fwalk+0x98>
   14294:	fff7879b          	addiw	a5,a5,-1
   14298:	02079493          	slli	s1,a5,0x20
   1429c:	0204d493          	srli	s1,s1,0x20
   142a0:	00148793          	addi	a5,s1,1
   142a4:	00179493          	slli	s1,a5,0x1
   142a8:	00f484b3          	add	s1,s1,a5
   142ac:	00249493          	slli	s1,s1,0x2
   142b0:	40f484b3          	sub	s1,s1,a5
   142b4:	00449493          	slli	s1,s1,0x4
   142b8:	009404b3          	add	s1,s0,s1
   142bc:	01045783          	lhu	a5,16(s0)
   142c0:	00fb7e63          	bgeu	s6,a5,142dc <_fwalk+0x90>
   142c4:	01241783          	lh	a5,18(s0)
   142c8:	00040513          	mv	a0,s0
   142cc:	01478863          	beq	a5,s4,142dc <_fwalk+0x90>
   142d0:	000a80e7          	jalr	s5
   142d4:	01256933          	or	s2,a0,s2
   142d8:	0009091b          	sext.w	s2,s2
   142dc:	0b040413          	addi	s0,s0,176
   142e0:	fc941ee3          	bne	s0,s1,142bc <_fwalk+0x70>
   142e4:	0009b983          	ld	s3,0(s3)
   142e8:	fa0990e3          	bnez	s3,14288 <_fwalk+0x3c>
   142ec:	03813083          	ld	ra,56(sp)
   142f0:	03013403          	ld	s0,48(sp)
   142f4:	00090513          	mv	a0,s2
   142f8:	02813483          	ld	s1,40(sp)
   142fc:	02013903          	ld	s2,32(sp)
   14300:	01813983          	ld	s3,24(sp)
   14304:	01013a03          	ld	s4,16(sp)
   14308:	00813a83          	ld	s5,8(sp)
   1430c:	00013b03          	ld	s6,0(sp)
   14310:	04010113          	addi	sp,sp,64
   14314:	00008067          	ret
   14318:	00000913          	li	s2,0
   1431c:	fd1ff06f          	j	142ec <_fwalk+0xa0>

0000000000014320 <_fwalk_reent>:
   14320:	fb010113          	addi	sp,sp,-80
   14324:	03213823          	sd	s2,48(sp)
   14328:	04113423          	sd	ra,72(sp)
   1432c:	04813023          	sd	s0,64(sp)
   14330:	02913c23          	sd	s1,56(sp)
   14334:	03313423          	sd	s3,40(sp)
   14338:	03413023          	sd	s4,32(sp)
   1433c:	01513c23          	sd	s5,24(sp)
   14340:	01613823          	sd	s6,16(sp)
   14344:	01713423          	sd	s7,8(sp)
   14348:	52050913          	addi	s2,a0,1312
   1434c:	0a090863          	beqz	s2,143fc <_fwalk_reent+0xdc>
   14350:	00058a93          	mv	s5,a1
   14354:	00050993          	mv	s3,a0
   14358:	00000b13          	li	s6,0
   1435c:	00100b93          	li	s7,1
   14360:	fff00a13          	li	s4,-1
   14364:	00892783          	lw	a5,8(s2)
   14368:	01093403          	ld	s0,16(s2)
   1436c:	04f05c63          	blez	a5,143c4 <_fwalk_reent+0xa4>
   14370:	fff7879b          	addiw	a5,a5,-1
   14374:	02079493          	slli	s1,a5,0x20
   14378:	0204d493          	srli	s1,s1,0x20
   1437c:	00148793          	addi	a5,s1,1
   14380:	00179493          	slli	s1,a5,0x1
   14384:	00f484b3          	add	s1,s1,a5
   14388:	00249493          	slli	s1,s1,0x2
   1438c:	40f484b3          	sub	s1,s1,a5
   14390:	00449493          	slli	s1,s1,0x4
   14394:	009404b3          	add	s1,s0,s1
   14398:	01045783          	lhu	a5,16(s0)
   1439c:	02fbf063          	bgeu	s7,a5,143bc <_fwalk_reent+0x9c>
   143a0:	01241783          	lh	a5,18(s0)
   143a4:	00040593          	mv	a1,s0
   143a8:	00098513          	mv	a0,s3
   143ac:	01478863          	beq	a5,s4,143bc <_fwalk_reent+0x9c>
   143b0:	000a80e7          	jalr	s5
   143b4:	01656b33          	or	s6,a0,s6
   143b8:	000b0b1b          	sext.w	s6,s6
   143bc:	0b040413          	addi	s0,s0,176
   143c0:	fc941ce3          	bne	s0,s1,14398 <_fwalk_reent+0x78>
   143c4:	00093903          	ld	s2,0(s2)
   143c8:	f8091ee3          	bnez	s2,14364 <_fwalk_reent+0x44>
   143cc:	04813083          	ld	ra,72(sp)
   143d0:	04013403          	ld	s0,64(sp)
   143d4:	000b0513          	mv	a0,s6
   143d8:	03813483          	ld	s1,56(sp)
   143dc:	03013903          	ld	s2,48(sp)
   143e0:	02813983          	ld	s3,40(sp)
   143e4:	02013a03          	ld	s4,32(sp)
   143e8:	01813a83          	ld	s5,24(sp)
   143ec:	01013b03          	ld	s6,16(sp)
   143f0:	00813b83          	ld	s7,8(sp)
   143f4:	05010113          	addi	sp,sp,80
   143f8:	00008067          	ret
   143fc:	00000b13          	li	s6,0
   14400:	fcdff06f          	j	143cc <_fwalk_reent+0xac>

0000000000014404 <eshdn1>:
   14404:	00450693          	addi	a3,a0,4
   14408:	00000793          	li	a5,0
   1440c:	01a50513          	addi	a0,a0,26
   14410:	ffff8837          	lui	a6,0xffff8
   14414:	01c0006f          	j	14430 <eshdn1+0x2c>
   14418:	0017979b          	slliw	a5,a5,0x1
   1441c:	00e69023          	sh	a4,0(a3)
   14420:	03079793          	slli	a5,a5,0x30
   14424:	00268693          	addi	a3,a3,2
   14428:	0307d793          	srli	a5,a5,0x30
   1442c:	02d50e63          	beq	a0,a3,14468 <eshdn1+0x64>
   14430:	0006d703          	lhu	a4,0(a3)
   14434:	00177613          	andi	a2,a4,1
   14438:	00060463          	beqz	a2,14440 <eshdn1+0x3c>
   1443c:	0017e793          	ori	a5,a5,1
   14440:	00175713          	srli	a4,a4,0x1
   14444:	0027f613          	andi	a2,a5,2
   14448:	010765b3          	or	a1,a4,a6
   1444c:	fc0606e3          	beqz	a2,14418 <eshdn1+0x14>
   14450:	0017979b          	slliw	a5,a5,0x1
   14454:	00b69023          	sh	a1,0(a3)
   14458:	03079793          	slli	a5,a5,0x30
   1445c:	00268693          	addi	a3,a3,2
   14460:	0307d793          	srli	a5,a5,0x30
   14464:	fcd516e3          	bne	a0,a3,14430 <eshdn1+0x2c>
   14468:	00008067          	ret

000000000001446c <eshup1>:
   1446c:	01850693          	addi	a3,a0,24
   14470:	00000713          	li	a4,0
   14474:	00250513          	addi	a0,a0,2
   14478:	01c0006f          	j	14494 <eshup1+0x28>
   1447c:	0017171b          	slliw	a4,a4,0x1
   14480:	00f69023          	sh	a5,0(a3)
   14484:	03071713          	slli	a4,a4,0x30
   14488:	ffe68693          	addi	a3,a3,-2
   1448c:	03075713          	srli	a4,a4,0x30
   14490:	04d50663          	beq	a0,a3,144dc <eshup1+0x70>
   14494:	0006d783          	lhu	a5,0(a3)
   14498:	0107961b          	slliw	a2,a5,0x10
   1449c:	4106561b          	sraiw	a2,a2,0x10
   144a0:	02061593          	slli	a1,a2,0x20
   144a4:	0017979b          	slliw	a5,a5,0x1
   144a8:	0005d463          	bgez	a1,144b0 <eshup1+0x44>
   144ac:	00176713          	ori	a4,a4,1
   144b0:	03079793          	slli	a5,a5,0x30
   144b4:	0307d793          	srli	a5,a5,0x30
   144b8:	00277613          	andi	a2,a4,2
   144bc:	0017e593          	ori	a1,a5,1
   144c0:	fa060ee3          	beqz	a2,1447c <eshup1+0x10>
   144c4:	0017171b          	slliw	a4,a4,0x1
   144c8:	00b69023          	sh	a1,0(a3)
   144cc:	03071713          	slli	a4,a4,0x30
   144d0:	ffe68693          	addi	a3,a3,-2
   144d4:	03075713          	srli	a4,a4,0x30
   144d8:	fad51ee3          	bne	a0,a3,14494 <eshup1+0x28>
   144dc:	00008067          	ret

00000000000144e0 <m16m>:
   144e0:	fa010113          	addi	sp,sp,-96
   144e4:	03413823          	sd	s4,48(sp)
   144e8:	00010a37          	lui	s4,0x10
   144ec:	04813823          	sd	s0,80(sp)
   144f0:	04913423          	sd	s1,72(sp)
   144f4:	05213023          	sd	s2,64(sp)
   144f8:	03313c23          	sd	s3,56(sp)
   144fc:	03513423          	sd	s5,40(sp)
   14500:	04113c23          	sd	ra,88(sp)
   14504:	00050a93          	mv	s5,a0
   14508:	00060493          	mv	s1,a2
   1450c:	00011b23          	sh	zero,22(sp)
   14510:	00011c23          	sh	zero,24(sp)
   14514:	01858913          	addi	s2,a1,24
   14518:	01810413          	addi	s0,sp,24
   1451c:	00410993          	addi	s3,sp,4
   14520:	fffa0a13          	addi	s4,s4,-1 # ffff <register_fini-0xb1>
   14524:	00095783          	lhu	a5,0(s2)
   14528:	000a8593          	mv	a1,s5
   1452c:	ffe40413          	addi	s0,s0,-2
   14530:	ffe90913          	addi	s2,s2,-2
   14534:	00078513          	mv	a0,a5
   14538:	04079663          	bnez	a5,14584 <m16m+0xa4>
   1453c:	fe041f23          	sh	zero,-2(s0)
   14540:	ff3412e3          	bne	s0,s3,14524 <m16m+0x44>
   14544:	00448613          	addi	a2,s1,4
   14548:	01a10713          	addi	a4,sp,26
   1454c:	00045783          	lhu	a5,0(s0)
   14550:	00260613          	addi	a2,a2,2
   14554:	00240413          	addi	s0,s0,2
   14558:	fef61f23          	sh	a5,-2(a2)
   1455c:	fee418e3          	bne	s0,a4,1454c <m16m+0x6c>
   14560:	05813083          	ld	ra,88(sp)
   14564:	05013403          	ld	s0,80(sp)
   14568:	04813483          	ld	s1,72(sp)
   1456c:	04013903          	ld	s2,64(sp)
   14570:	03813983          	ld	s3,56(sp)
   14574:	03013a03          	ld	s4,48(sp)
   14578:	02813a83          	ld	s5,40(sp)
   1457c:	06010113          	addi	sp,sp,96
   14580:	00008067          	ret
   14584:	2480d0ef          	jal	ra,217cc <__muldi3>
   14588:	00245703          	lhu	a4,2(s0)
   1458c:	00045683          	lhu	a3,0(s0)
   14590:	014577b3          	and	a5,a0,s4
   14594:	00e787b3          	add	a5,a5,a4
   14598:	01055513          	srli	a0,a0,0x10
   1459c:	0107d713          	srli	a4,a5,0x10
   145a0:	00d50533          	add	a0,a0,a3
   145a4:	00e50533          	add	a0,a0,a4
   145a8:	01055713          	srli	a4,a0,0x10
   145ac:	00f41123          	sh	a5,2(s0)
   145b0:	00a41023          	sh	a0,0(s0)
   145b4:	fee41f23          	sh	a4,-2(s0)
   145b8:	f73416e3          	bne	s0,s3,14524 <m16m+0x44>
   145bc:	f89ff06f          	j	14544 <m16m+0x64>

00000000000145c0 <eisnan.part.0>:
   145c0:	01250713          	addi	a4,a0,18
   145c4:	00250513          	addi	a0,a0,2
   145c8:	ffe55783          	lhu	a5,-2(a0)
   145cc:	00079863          	bnez	a5,145dc <eisnan.part.0+0x1c>
   145d0:	fea71ae3          	bne	a4,a0,145c4 <eisnan.part.0+0x4>
   145d4:	00000513          	li	a0,0
   145d8:	00008067          	ret
   145dc:	00100513          	li	a0,1
   145e0:	00008067          	ret

00000000000145e4 <eneg>:
   145e4:	fe010113          	addi	sp,sp,-32
   145e8:	00813823          	sd	s0,16(sp)
   145ec:	01255403          	lhu	s0,18(a0)
   145f0:	00913423          	sd	s1,8(sp)
   145f4:	00113c23          	sd	ra,24(sp)
   145f8:	fff44793          	not	a5,s0
   145fc:	03179713          	slli	a4,a5,0x31
   14600:	00050493          	mv	s1,a0
   14604:	00071663          	bnez	a4,14610 <eneg+0x2c>
   14608:	fb9ff0ef          	jal	ra,145c0 <eisnan.part.0>
   1460c:	00051863          	bnez	a0,1461c <eneg+0x38>
   14610:	ffff87b7          	lui	a5,0xffff8
   14614:	00f44433          	xor	s0,s0,a5
   14618:	00849923          	sh	s0,18(s1)
   1461c:	01813083          	ld	ra,24(sp)
   14620:	01013403          	ld	s0,16(sp)
   14624:	00813483          	ld	s1,8(sp)
   14628:	02010113          	addi	sp,sp,32
   1462c:	00008067          	ret

0000000000014630 <eisneg>:
   14630:	ff010113          	addi	sp,sp,-16
   14634:	00813023          	sd	s0,0(sp)
   14638:	01255403          	lhu	s0,18(a0)
   1463c:	00113423          	sd	ra,8(sp)
   14640:	fff44793          	not	a5,s0
   14644:	03179713          	slli	a4,a5,0x31
   14648:	00071863          	bnez	a4,14658 <eisneg+0x28>
   1464c:	f75ff0ef          	jal	ra,145c0 <eisnan.part.0>
   14650:	00000793          	li	a5,0
   14654:	00051463          	bnez	a0,1465c <eisneg+0x2c>
   14658:	00f45793          	srli	a5,s0,0xf
   1465c:	00813083          	ld	ra,8(sp)
   14660:	00013403          	ld	s0,0(sp)
   14664:	00078513          	mv	a0,a5
   14668:	01010113          	addi	sp,sp,16
   1466c:	00008067          	ret

0000000000014670 <emovi>:
   14670:	01255783          	lhu	a5,18(a0)
   14674:	fe010113          	addi	sp,sp,-32
   14678:	00813823          	sd	s0,16(sp)
   1467c:	00f7d79b          	srliw	a5,a5,0xf
   14680:	00913423          	sd	s1,8(sp)
   14684:	00113c23          	sd	ra,24(sp)
   14688:	01213023          	sd	s2,0(sp)
   1468c:	40f007bb          	negw	a5,a5
   14690:	00f59023          	sh	a5,0(a1)
   14694:	01255783          	lhu	a5,18(a0)
   14698:	000086b7          	lui	a3,0x8
   1469c:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   146a0:	00f6f7b3          	and	a5,a3,a5
   146a4:	00f59123          	sh	a5,2(a1)
   146a8:	0007879b          	sext.w	a5,a5
   146ac:	00050493          	mv	s1,a0
   146b0:	01050413          	addi	s0,a0,16
   146b4:	04d78063          	beq	a5,a3,146f4 <emovi+0x84>
   146b8:	00658793          	addi	a5,a1,6
   146bc:	00059223          	sh	zero,4(a1)
   146c0:	ffe50513          	addi	a0,a0,-2
   146c4:	ffe40413          	addi	s0,s0,-2
   146c8:	00245703          	lhu	a4,2(s0)
   146cc:	00278793          	addi	a5,a5,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd37b2>
   146d0:	fee79f23          	sh	a4,-2(a5)
   146d4:	fea418e3          	bne	s0,a0,146c4 <emovi+0x54>
   146d8:	00059c23          	sh	zero,24(a1)
   146dc:	01813083          	ld	ra,24(sp)
   146e0:	01013403          	ld	s0,16(sp)
   146e4:	00813483          	ld	s1,8(sp)
   146e8:	00013903          	ld	s2,0(sp)
   146ec:	02010113          	addi	sp,sp,32
   146f0:	00008067          	ret
   146f4:	01255703          	lhu	a4,18(a0)
   146f8:	00058913          	mv	s2,a1
   146fc:	00e7f733          	and	a4,a5,a4
   14700:	02f71863          	bne	a4,a5,14730 <emovi+0xc0>
   14704:	ebdff0ef          	jal	ra,145c0 <eisnan.part.0>
   14708:	02050463          	beqz	a0,14730 <emovi+0xc0>
   1470c:	00690713          	addi	a4,s2,6
   14710:	00091223          	sh	zero,4(s2)
   14714:	ffc48793          	addi	a5,s1,-4
   14718:	ffe40413          	addi	s0,s0,-2
   1471c:	00245683          	lhu	a3,2(s0)
   14720:	00270713          	addi	a4,a4,2
   14724:	fed71f23          	sh	a3,-2(a4)
   14728:	fe8798e3          	bne	a5,s0,14718 <emovi+0xa8>
   1472c:	fb1ff06f          	j	146dc <emovi+0x6c>
   14730:	00490793          	addi	a5,s2,4
   14734:	01a90593          	addi	a1,s2,26
   14738:	00278793          	addi	a5,a5,2
   1473c:	fe079f23          	sh	zero,-2(a5)
   14740:	fef59ce3          	bne	a1,a5,14738 <emovi+0xc8>
   14744:	01813083          	ld	ra,24(sp)
   14748:	01013403          	ld	s0,16(sp)
   1474c:	00813483          	ld	s1,8(sp)
   14750:	00013903          	ld	s2,0(sp)
   14754:	02010113          	addi	sp,sp,32
   14758:	00008067          	ret

000000000001475c <ecmp>:
   1475c:	01255783          	lhu	a5,18(a0)
   14760:	fa010113          	addi	sp,sp,-96
   14764:	04813823          	sd	s0,80(sp)
   14768:	fff7c793          	not	a5,a5
   1476c:	04913423          	sd	s1,72(sp)
   14770:	04113c23          	sd	ra,88(sp)
   14774:	03179713          	slli	a4,a5,0x31
   14778:	00050493          	mv	s1,a0
   1477c:	00058413          	mv	s0,a1
   14780:	00071663          	bnez	a4,1478c <ecmp+0x30>
   14784:	e3dff0ef          	jal	ra,145c0 <eisnan.part.0>
   14788:	08051263          	bnez	a0,1480c <ecmp+0xb0>
   1478c:	01245783          	lhu	a5,18(s0)
   14790:	fff7c793          	not	a5,a5
   14794:	03179713          	slli	a4,a5,0x31
   14798:	06070463          	beqz	a4,14800 <ecmp+0xa4>
   1479c:	00010593          	mv	a1,sp
   147a0:	00048513          	mv	a0,s1
   147a4:	ecdff0ef          	jal	ra,14670 <emovi>
   147a8:	02010593          	addi	a1,sp,32
   147ac:	00040513          	mv	a0,s0
   147b0:	ec1ff0ef          	jal	ra,14670 <emovi>
   147b4:	00015583          	lhu	a1,0(sp)
   147b8:	02015783          	lhu	a5,32(sp)
   147bc:	04b78c63          	beq	a5,a1,14814 <ecmp+0xb8>
   147c0:	00210793          	addi	a5,sp,2
   147c4:	02210713          	addi	a4,sp,34
   147c8:	01810613          	addi	a2,sp,24
   147cc:	0007d683          	lhu	a3,0(a5)
   147d0:	00278793          	addi	a5,a5,2
   147d4:	08069663          	bnez	a3,14860 <ecmp+0x104>
   147d8:	00075683          	lhu	a3,0(a4)
   147dc:	00270713          	addi	a4,a4,2
   147e0:	08069063          	bnez	a3,14860 <ecmp+0x104>
   147e4:	fec794e3          	bne	a5,a2,147cc <ecmp+0x70>
   147e8:	00000513          	li	a0,0
   147ec:	05813083          	ld	ra,88(sp)
   147f0:	05013403          	ld	s0,80(sp)
   147f4:	04813483          	ld	s1,72(sp)
   147f8:	06010113          	addi	sp,sp,96
   147fc:	00008067          	ret
   14800:	00040513          	mv	a0,s0
   14804:	dbdff0ef          	jal	ra,145c0 <eisnan.part.0>
   14808:	f8050ae3          	beqz	a0,1479c <ecmp+0x40>
   1480c:	ffe00513          	li	a0,-2
   14810:	fddff06f          	j	147ec <ecmp+0x90>
   14814:	00100513          	li	a0,1
   14818:	04059c63          	bnez	a1,14870 <ecmp+0x114>
   1481c:	00210713          	addi	a4,sp,2
   14820:	02210793          	addi	a5,sp,34
   14824:	00278793          	addi	a5,a5,2
   14828:	00270713          	addi	a4,a4,2
   1482c:	ffe75603          	lhu	a2,-2(a4)
   14830:	ffe7d683          	lhu	a3,-2(a5)
   14834:	03810593          	addi	a1,sp,56
   14838:	00d61e63          	bne	a2,a3,14854 <ecmp+0xf8>
   1483c:	fab786e3          	beq	a5,a1,147e8 <ecmp+0x8c>
   14840:	00278793          	addi	a5,a5,2
   14844:	00270713          	addi	a4,a4,2
   14848:	ffe75603          	lhu	a2,-2(a4)
   1484c:	ffe7d683          	lhu	a3,-2(a5)
   14850:	fed606e3          	beq	a2,a3,1483c <ecmp+0xe0>
   14854:	f8c6ece3          	bltu	a3,a2,147ec <ecmp+0x90>
   14858:	40a0053b          	negw	a0,a0
   1485c:	f91ff06f          	j	147ec <ecmp+0x90>
   14860:	00100513          	li	a0,1
   14864:	f80584e3          	beqz	a1,147ec <ecmp+0x90>
   14868:	fff00513          	li	a0,-1
   1486c:	f81ff06f          	j	147ec <ecmp+0x90>
   14870:	fff00513          	li	a0,-1
   14874:	fa9ff06f          	j	1481c <ecmp+0xc0>

0000000000014878 <eisinf.part.1>:
   14878:	ff010113          	addi	sp,sp,-16
   1487c:	00113423          	sd	ra,8(sp)
   14880:	d41ff0ef          	jal	ra,145c0 <eisnan.part.0>
   14884:	00813083          	ld	ra,8(sp)
   14888:	00153513          	seqz	a0,a0
   1488c:	01010113          	addi	sp,sp,16
   14890:	00008067          	ret

0000000000014894 <eshift.part.3>:
   14894:	fe010113          	addi	sp,sp,-32
   14898:	00813823          	sd	s0,16(sp)
   1489c:	01213023          	sd	s2,0(sp)
   148a0:	00113c23          	sd	ra,24(sp)
   148a4:	00913423          	sd	s1,8(sp)
   148a8:	00058913          	mv	s2,a1
   148ac:	00050413          	mv	s0,a0
   148b0:	0a05c263          	bltz	a1,14954 <eshift.part.3+0xc0>
   148b4:	00f00793          	li	a5,15
   148b8:	00058613          	mv	a2,a1
   148bc:	00450513          	addi	a0,a0,4
   148c0:	01840693          	addi	a3,s0,24
   148c4:	00f00593          	li	a1,15
   148c8:	0327d463          	bge	a5,s2,148f0 <eshift.part.3+0x5c>
   148cc:	00050793          	mv	a5,a0
   148d0:	00278793          	addi	a5,a5,2
   148d4:	0007d703          	lhu	a4,0(a5)
   148d8:	fee79f23          	sh	a4,-2(a5)
   148dc:	fed79ae3          	bne	a5,a3,148d0 <eshift.part.3+0x3c>
   148e0:	00041c23          	sh	zero,24(s0)
   148e4:	ff06061b          	addiw	a2,a2,-16
   148e8:	fec5c2e3          	blt	a1,a2,148cc <eshift.part.3+0x38>
   148ec:	00f97913          	andi	s2,s2,15
   148f0:	00700793          	li	a5,7
   148f4:	0327d863          	bge	a5,s2,14924 <eshift.part.3+0x90>
   148f8:	01840793          	addi	a5,s0,24
   148fc:	00240593          	addi	a1,s0,2
   14900:	00000713          	li	a4,0
   14904:	0007d683          	lhu	a3,0(a5)
   14908:	ffe78793          	addi	a5,a5,-2
   1490c:	00869613          	slli	a2,a3,0x8
   14910:	00c76733          	or	a4,a4,a2
   14914:	00e79123          	sh	a4,2(a5)
   14918:	0086d713          	srli	a4,a3,0x8
   1491c:	feb794e3          	bne	a5,a1,14904 <eshift.part.3+0x70>
   14920:	ff89091b          	addiw	s2,s2,-8
   14924:	00090a63          	beqz	s2,14938 <eshift.part.3+0xa4>
   14928:	fff9091b          	addiw	s2,s2,-1
   1492c:	00040513          	mv	a0,s0
   14930:	b3dff0ef          	jal	ra,1446c <eshup1>
   14934:	fe091ae3          	bnez	s2,14928 <eshift.part.3+0x94>
   14938:	01813083          	ld	ra,24(sp)
   1493c:	01013403          	ld	s0,16(sp)
   14940:	00813483          	ld	s1,8(sp)
   14944:	00013903          	ld	s2,0(sp)
   14948:	00000513          	li	a0,0
   1494c:	02010113          	addi	sp,sp,32
   14950:	00008067          	ret
   14954:	ff100793          	li	a5,-15
   14958:	40b004bb          	negw	s1,a1
   1495c:	0cf5d463          	bge	a1,a5,14a24 <eshift.part.3+0x190>
   14960:	01850593          	addi	a1,a0,24
   14964:	00000913          	li	s2,0
   14968:	00450693          	addi	a3,a0,4
   1496c:	00f00613          	li	a2,15
   14970:	01845703          	lhu	a4,24(s0)
   14974:	00058793          	mv	a5,a1
   14978:	00e96933          	or	s2,s2,a4
   1497c:	ffe78793          	addi	a5,a5,-2
   14980:	0007d703          	lhu	a4,0(a5)
   14984:	00e79123          	sh	a4,2(a5)
   14988:	fed79ae3          	bne	a5,a3,1497c <eshift.part.3+0xe8>
   1498c:	00041223          	sh	zero,4(s0)
   14990:	ff04849b          	addiw	s1,s1,-16
   14994:	fc964ee3          	blt	a2,s1,14970 <eshift.part.3+0xdc>
   14998:	00700793          	li	a5,7
   1499c:	0497d663          	bge	a5,s1,149e8 <eshift.part.3+0x154>
   149a0:	0109191b          	slliw	s2,s2,0x10
   149a4:	4109591b          	sraiw	s2,s2,0x10
   149a8:	01844783          	lbu	a5,24(s0)
   149ac:	01a40593          	addi	a1,s0,26
   149b0:	00000713          	li	a4,0
   149b4:	00f96933          	or	s2,s2,a5
   149b8:	03091913          	slli	s2,s2,0x30
   149bc:	03095913          	srli	s2,s2,0x30
   149c0:	0006d783          	lhu	a5,0(a3)
   149c4:	00268693          	addi	a3,a3,2
   149c8:	0087d61b          	srliw	a2,a5,0x8
   149cc:	00c76733          	or	a4,a4,a2
   149d0:	0087979b          	slliw	a5,a5,0x8
   149d4:	fee69f23          	sh	a4,-2(a3)
   149d8:	03079713          	slli	a4,a5,0x30
   149dc:	03075713          	srli	a4,a4,0x30
   149e0:	feb690e3          	bne	a3,a1,149c0 <eshift.part.3+0x12c>
   149e4:	ff84849b          	addiw	s1,s1,-8
   149e8:	02048063          	beqz	s1,14a08 <eshift.part.3+0x174>
   149ec:	01845783          	lhu	a5,24(s0)
   149f0:	fff4849b          	addiw	s1,s1,-1
   149f4:	00040513          	mv	a0,s0
   149f8:	0017f793          	andi	a5,a5,1
   149fc:	0127e933          	or	s2,a5,s2
   14a00:	a05ff0ef          	jal	ra,14404 <eshdn1>
   14a04:	fe0494e3          	bnez	s1,149ec <eshift.part.3+0x158>
   14a08:	01813083          	ld	ra,24(sp)
   14a0c:	01013403          	ld	s0,16(sp)
   14a10:	01203533          	snez	a0,s2
   14a14:	00813483          	ld	s1,8(sp)
   14a18:	00013903          	ld	s2,0(sp)
   14a1c:	02010113          	addi	sp,sp,32
   14a20:	00008067          	ret
   14a24:	ff900793          	li	a5,-7
   14a28:	00f5c663          	blt	a1,a5,14a34 <eshift.part.3+0x1a0>
   14a2c:	00000913          	li	s2,0
   14a30:	fbdff06f          	j	149ec <eshift.part.3+0x158>
   14a34:	00000913          	li	s2,0
   14a38:	00440693          	addi	a3,s0,4
   14a3c:	f6dff06f          	j	149a8 <eshift.part.3+0x114>

0000000000014a40 <enormlz>:
   14a40:	00455783          	lhu	a5,4(a0)
   14a44:	fe010113          	addi	sp,sp,-32
   14a48:	00913423          	sd	s1,8(sp)
   14a4c:	00113c23          	sd	ra,24(sp)
   14a50:	00813823          	sd	s0,16(sp)
   14a54:	01213023          	sd	s2,0(sp)
   14a58:	00050493          	mv	s1,a0
   14a5c:	0e079063          	bnez	a5,14b3c <enormlz+0xfc>
   14a60:	00655703          	lhu	a4,6(a0)
   14a64:	00000413          	li	s0,0
   14a68:	0107179b          	slliw	a5,a4,0x10
   14a6c:	4107d79b          	sraiw	a5,a5,0x10
   14a70:	02079693          	slli	a3,a5,0x20
   14a74:	0a06c663          	bltz	a3,14b20 <enormlz+0xe0>
   14a78:	01a50693          	addi	a3,a0,26
   14a7c:	0a000613          	li	a2,160
   14a80:	02071863          	bnez	a4,14ab0 <enormlz+0x70>
   14a84:	00648793          	addi	a5,s1,6
   14a88:	0080006f          	j	14a90 <enormlz+0x50>
   14a8c:	0007d703          	lhu	a4,0(a5)
   14a90:	00278793          	addi	a5,a5,2
   14a94:	fee79e23          	sh	a4,-4(a5)
   14a98:	fef69ae3          	bne	a3,a5,14a8c <enormlz+0x4c>
   14a9c:	00049c23          	sh	zero,24(s1)
   14aa0:	0104041b          	addiw	s0,s0,16
   14aa4:	06c40e63          	beq	s0,a2,14b20 <enormlz+0xe0>
   14aa8:	0064d703          	lhu	a4,6(s1)
   14aac:	fc070ce3          	beqz	a4,14a84 <enormlz+0x44>
   14ab0:	f0077793          	andi	a5,a4,-256
   14ab4:	04079063          	bnez	a5,14af4 <enormlz+0xb4>
   14ab8:	01848513          	addi	a0,s1,24
   14abc:	00248593          	addi	a1,s1,2
   14ac0:	00000713          	li	a4,0
   14ac4:	00050793          	mv	a5,a0
   14ac8:	0007d683          	lhu	a3,0(a5)
   14acc:	ffe78793          	addi	a5,a5,-2
   14ad0:	00869613          	slli	a2,a3,0x8
   14ad4:	00c76733          	or	a4,a4,a2
   14ad8:	00e79123          	sh	a4,2(a5)
   14adc:	0086d713          	srli	a4,a3,0x8
   14ae0:	fef594e3          	bne	a1,a5,14ac8 <enormlz+0x88>
   14ae4:	0064d703          	lhu	a4,6(s1)
   14ae8:	0084041b          	addiw	s0,s0,8
   14aec:	f0077793          	andi	a5,a4,-256
   14af0:	fc0788e3          	beqz	a5,14ac0 <enormlz+0x80>
   14af4:	0a000913          	li	s2,160
   14af8:	0140006f          	j	14b0c <enormlz+0xcc>
   14afc:	0014041b          	addiw	s0,s0,1
   14b00:	96dff0ef          	jal	ra,1446c <eshup1>
   14b04:	00894e63          	blt	s2,s0,14b20 <enormlz+0xe0>
   14b08:	0064d703          	lhu	a4,6(s1)
   14b0c:	0107171b          	slliw	a4,a4,0x10
   14b10:	4107571b          	sraiw	a4,a4,0x10
   14b14:	02071793          	slli	a5,a4,0x20
   14b18:	00048513          	mv	a0,s1
   14b1c:	fe07d0e3          	bgez	a5,14afc <enormlz+0xbc>
   14b20:	00040513          	mv	a0,s0
   14b24:	01813083          	ld	ra,24(sp)
   14b28:	01013403          	ld	s0,16(sp)
   14b2c:	00813483          	ld	s1,8(sp)
   14b30:	00013903          	ld	s2,0(sp)
   14b34:	02010113          	addi	sp,sp,32
   14b38:	00008067          	ret
   14b3c:	f007f713          	andi	a4,a5,-256
   14b40:	00000413          	li	s0,0
   14b44:	04071063          	bnez	a4,14b84 <enormlz+0x144>
   14b48:	f6f00913          	li	s2,-145
   14b4c:	0140006f          	j	14b60 <enormlz+0x120>
   14b50:	fff4041b          	addiw	s0,s0,-1
   14b54:	8b1ff0ef          	jal	ra,14404 <eshdn1>
   14b58:	fd2404e3          	beq	s0,s2,14b20 <enormlz+0xe0>
   14b5c:	0044d783          	lhu	a5,4(s1)
   14b60:	00048513          	mv	a0,s1
   14b64:	fe0796e3          	bnez	a5,14b50 <enormlz+0x110>
   14b68:	00040513          	mv	a0,s0
   14b6c:	01813083          	ld	ra,24(sp)
   14b70:	01013403          	ld	s0,16(sp)
   14b74:	00813483          	ld	s1,8(sp)
   14b78:	00013903          	ld	s2,0(sp)
   14b7c:	02010113          	addi	sp,sp,32
   14b80:	00008067          	ret
   14b84:	00450693          	addi	a3,a0,4
   14b88:	01a50593          	addi	a1,a0,26
   14b8c:	00000713          	li	a4,0
   14b90:	0080006f          	j	14b98 <enormlz+0x158>
   14b94:	0006d783          	lhu	a5,0(a3)
   14b98:	0087d61b          	srliw	a2,a5,0x8
   14b9c:	00c76733          	or	a4,a4,a2
   14ba0:	0087979b          	slliw	a5,a5,0x8
   14ba4:	00e69023          	sh	a4,0(a3)
   14ba8:	03079713          	slli	a4,a5,0x30
   14bac:	00268693          	addi	a3,a3,2
   14bb0:	03075713          	srli	a4,a4,0x30
   14bb4:	feb690e3          	bne	a3,a1,14b94 <enormlz+0x154>
   14bb8:	0044d783          	lhu	a5,4(s1)
   14bbc:	ff800413          	li	s0,-8
   14bc0:	f89ff06f          	j	14b48 <enormlz+0x108>

0000000000014bc4 <emdnorm>:
   14bc4:	fc010113          	addi	sp,sp,-64
   14bc8:	02813823          	sd	s0,48(sp)
   14bcc:	02913423          	sd	s1,40(sp)
   14bd0:	03213023          	sd	s2,32(sp)
   14bd4:	01313c23          	sd	s3,24(sp)
   14bd8:	01413823          	sd	s4,16(sp)
   14bdc:	01513423          	sd	s5,8(sp)
   14be0:	00068913          	mv	s2,a3
   14be4:	00078493          	mv	s1,a5
   14be8:	02113c23          	sd	ra,56(sp)
   14bec:	00050413          	mv	s0,a0
   14bf0:	00058993          	mv	s3,a1
   14bf4:	00060a13          	mv	s4,a2
   14bf8:	00070a93          	mv	s5,a4
   14bfc:	e45ff0ef          	jal	ra,14a40 <enormlz>
   14c00:	09000793          	li	a5,144
   14c04:	40a90933          	sub	s2,s2,a0
   14c08:	08a7d063          	bge	a5,a0,14c88 <emdnorm+0xc4>
   14c0c:	000087b7          	lui	a5,0x8
   14c10:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14c14:	2327dc63          	bge	a5,s2,14e4c <emdnorm+0x288>
   14c18:	200a8663          	beqz	s5,14e24 <emdnorm+0x260>
   14c1c:	0044a503          	lw	a0,4(s1)
   14c20:	0004a783          	lw	a5,0(s1)
   14c24:	0ea78e63          	beq	a5,a0,14d20 <emdnorm+0x15c>
   14c28:	01a48713          	addi	a4,s1,26
   14c2c:	03448793          	addi	a5,s1,52
   14c30:	00270713          	addi	a4,a4,2
   14c34:	fe071f23          	sh	zero,-2(a4)
   14c38:	fef71ce3          	bne	a4,a5,14c30 <emdnorm+0x6c>
   14c3c:	03800793          	li	a5,56
   14c40:	38f50263          	beq	a0,a5,14fc4 <emdnorm+0x400>
   14c44:	06a7d463          	bge	a5,a0,14cac <emdnorm+0xe8>
   14c48:	04000793          	li	a5,64
   14c4c:	30f50c63          	beq	a0,a5,14f64 <emdnorm+0x3a0>
   14c50:	07100793          	li	a5,113
   14c54:	32f51e63          	bne	a0,a5,14f90 <emdnorm+0x3cc>
   14c58:	00a00793          	li	a5,10
   14c5c:	40008737          	lui	a4,0x40008
   14c60:	fff70713          	addi	a4,a4,-1 # 40007fff <__BSS_END__+0x3ffe37af>
   14c64:	02079793          	slli	a5,a5,0x20
   14c68:	00a78793          	addi	a5,a5,10
   14c6c:	00e4aa23          	sw	a4,20(s1)
   14c70:	ffff8737          	lui	a4,0xffff8
   14c74:	00e49c23          	sh	a4,24(s1)
   14c78:	00f4b423          	sd	a5,8(s1)
   14c7c:	00008737          	lui	a4,0x8
   14c80:	00a00793          	li	a5,10
   14c84:	0640006f          	j	14ce8 <emdnorm+0x124>
   14c88:	20095263          	bgez	s2,14e8c <emdnorm+0x2c8>
   14c8c:	f7000793          	li	a5,-144
   14c90:	1cf95a63          	bge	s2,a5,14e64 <emdnorm+0x2a0>
   14c94:	00240793          	addi	a5,s0,2
   14c98:	01a40413          	addi	s0,s0,26
   14c9c:	00278793          	addi	a5,a5,2
   14ca0:	fe079f23          	sh	zero,-2(a5)
   14ca4:	fe879ce3          	bne	a5,s0,14c9c <emdnorm+0xd8>
   14ca8:	1580006f          	j	14e00 <emdnorm+0x23c>
   14cac:	01800793          	li	a5,24
   14cb0:	28f50463          	beq	a0,a5,14f38 <emdnorm+0x374>
   14cb4:	03500793          	li	a5,53
   14cb8:	2cf51c63          	bne	a0,a5,14f90 <emdnorm+0x3cc>
   14cbc:	040006b7          	lui	a3,0x4000
   14cc0:	00001737          	lui	a4,0x1
   14cc4:	7ff68693          	addi	a3,a3,2047 # 40007ff <__BSS_END__+0x3fdbfaf>
   14cc8:	00600793          	li	a5,6
   14ccc:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14cd0:	00d4aa23          	sw	a3,20(s1)
   14cd4:	02079793          	slli	a5,a5,0x20
   14cd8:	00678793          	addi	a5,a5,6
   14cdc:	00f4b423          	sd	a5,8(s1)
   14ce0:	00e49c23          	sh	a4,24(s1)
   14ce4:	00600793          	li	a5,6
   14ce8:	00878793          	addi	a5,a5,8
   14cec:	00179793          	slli	a5,a5,0x1
   14cf0:	00f487b3          	add	a5,s1,a5
   14cf4:	00e79523          	sh	a4,10(a5)
   14cf8:	00a4a023          	sw	a0,0(s1)
   14cfc:	03204263          	bgtz	s2,14d20 <emdnorm+0x15c>
   14d00:	09000793          	li	a5,144
   14d04:	20f50663          	beq	a0,a5,14f10 <emdnorm+0x34c>
   14d08:	01845783          	lhu	a5,24(s0)
   14d0c:	00040513          	mv	a0,s0
   14d10:	0017f793          	andi	a5,a5,1
   14d14:	00f9e9b3          	or	s3,s3,a5
   14d18:	eecff0ef          	jal	ra,14404 <eshdn1>
   14d1c:	0044a503          	lw	a0,4(s1)
   14d20:	0084a683          	lw	a3,8(s1)
   14d24:	0144d603          	lhu	a2,20(s1)
   14d28:	08f00793          	li	a5,143
   14d2c:	00169713          	slli	a4,a3,0x1
   14d30:	00e40833          	add	a6,s0,a4
   14d34:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd37b0>
   14d38:	00c8f5b3          	and	a1,a7,a2
   14d3c:	04a7c863          	blt	a5,a0,14d8c <emdnorm+0x1c8>
   14d40:	00b00793          	li	a5,11
   14d44:	04d7c463          	blt	a5,a3,14d8c <emdnorm+0x1c8>
   14d48:	40d787bb          	subw	a5,a5,a3
   14d4c:	02079793          	slli	a5,a5,0x20
   14d50:	0207d793          	srli	a5,a5,0x20
   14d54:	00d787b3          	add	a5,a5,a3
   14d58:	00179693          	slli	a3,a5,0x1
   14d5c:	00270713          	addi	a4,a4,2
   14d60:	00440793          	addi	a5,s0,4
   14d64:	00e40733          	add	a4,s0,a4
   14d68:	00f687b3          	add	a5,a3,a5
   14d6c:	00075683          	lhu	a3,0(a4)
   14d70:	00068463          	beqz	a3,14d78 <emdnorm+0x1b4>
   14d74:	0015e593          	ori	a1,a1,1
   14d78:	00071023          	sh	zero,0(a4)
   14d7c:	00270713          	addi	a4,a4,2
   14d80:	fee796e3          	bne	a5,a4,14d6c <emdnorm+0x1a8>
   14d84:	00085883          	lhu	a7,0(a6)
   14d88:	0144d603          	lhu	a2,20(s1)
   14d8c:	fff64613          	not	a2,a2
   14d90:	01167633          	and	a2,a2,a7
   14d94:	00c81023          	sh	a2,0(a6)
   14d98:	0164d783          	lhu	a5,22(s1)
   14d9c:	00b7f733          	and	a4,a5,a1
   14da0:	04070063          	beqz	a4,14de0 <emdnorm+0x21c>
   14da4:	12b78263          	beq	a5,a1,14ec8 <emdnorm+0x304>
   14da8:	03248613          	addi	a2,s1,50
   14dac:	01840713          	addi	a4,s0,24
   14db0:	01c48493          	addi	s1,s1,28
   14db4:	00000693          	li	a3,0
   14db8:	00065783          	lhu	a5,0(a2)
   14dbc:	00075583          	lhu	a1,0(a4)
   14dc0:	ffe70713          	addi	a4,a4,-2
   14dc4:	ffe60613          	addi	a2,a2,-2
   14dc8:	00b787b3          	add	a5,a5,a1
   14dcc:	00d787b3          	add	a5,a5,a3
   14dd0:	00f71123          	sh	a5,2(a4)
   14dd4:	0107d793          	srli	a5,a5,0x10
   14dd8:	0017f693          	andi	a3,a5,1
   14ddc:	fc961ee3          	bne	a2,s1,14db8 <emdnorm+0x1f4>
   14de0:	11205663          	blez	s2,14eec <emdnorm+0x328>
   14de4:	00445783          	lhu	a5,4(s0)
   14de8:	0a079c63          	bnez	a5,14ea0 <emdnorm+0x2dc>
   14dec:	000087b7          	lui	a5,0x8
   14df0:	00041c23          	sh	zero,24(s0)
   14df4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14df8:	0327c863          	blt	a5,s2,14e28 <emdnorm+0x264>
   14dfc:	01241123          	sh	s2,2(s0)
   14e00:	03813083          	ld	ra,56(sp)
   14e04:	03013403          	ld	s0,48(sp)
   14e08:	02813483          	ld	s1,40(sp)
   14e0c:	02013903          	ld	s2,32(sp)
   14e10:	01813983          	ld	s3,24(sp)
   14e14:	01013a03          	ld	s4,16(sp)
   14e18:	00813a83          	ld	s5,8(sp)
   14e1c:	04010113          	addi	sp,sp,64
   14e20:	00008067          	ret
   14e24:	00041c23          	sh	zero,24(s0)
   14e28:	ffff87b7          	lui	a5,0xffff8
   14e2c:	fff7c793          	not	a5,a5
   14e30:	00f41123          	sh	a5,2(s0)
   14e34:	00440793          	addi	a5,s0,4
   14e38:	01840413          	addi	s0,s0,24
   14e3c:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd37b0>
   14e40:	00278793          	addi	a5,a5,2
   14e44:	fef41ce3          	bne	s0,a5,14e3c <emdnorm+0x278>
   14e48:	fb9ff06f          	j	14e00 <emdnorm+0x23c>
   14e4c:	00240793          	addi	a5,s0,2
   14e50:	01a40413          	addi	s0,s0,26
   14e54:	00278793          	addi	a5,a5,2
   14e58:	fe079f23          	sh	zero,-2(a5)
   14e5c:	fe879ce3          	bne	a5,s0,14e54 <emdnorm+0x290>
   14e60:	fa1ff06f          	j	14e00 <emdnorm+0x23c>
   14e64:	0009059b          	sext.w	a1,s2
   14e68:	00040513          	mv	a0,s0
   14e6c:	a29ff0ef          	jal	ra,14894 <eshift.part.3>
   14e70:	00050463          	beqz	a0,14e78 <emdnorm+0x2b4>
   14e74:	00100993          	li	s3,1
   14e78:	0a0a8a63          	beqz	s5,14f2c <emdnorm+0x368>
   14e7c:	0044a503          	lw	a0,4(s1)
   14e80:	0004a783          	lw	a5,0(s1)
   14e84:	daa792e3          	bne	a5,a0,14c28 <emdnorm+0x64>
   14e88:	e79ff06f          	j	14d00 <emdnorm+0x13c>
   14e8c:	f60a80e3          	beqz	s5,14dec <emdnorm+0x228>
   14e90:	0044a503          	lw	a0,4(s1)
   14e94:	0004a783          	lw	a5,0(s1)
   14e98:	d8a798e3          	bne	a5,a0,14c28 <emdnorm+0x64>
   14e9c:	e61ff06f          	j	14cfc <emdnorm+0x138>
   14ea0:	00040513          	mv	a0,s0
   14ea4:	d60ff0ef          	jal	ra,14404 <eshdn1>
   14ea8:	000087b7          	lui	a5,0x8
   14eac:	00190913          	addi	s2,s2,1
   14eb0:	00041c23          	sh	zero,24(s0)
   14eb4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14eb8:	f727c8e3          	blt	a5,s2,14e28 <emdnorm+0x264>
   14ebc:	f40950e3          	bgez	s2,14dfc <emdnorm+0x238>
   14ec0:	00041123          	sh	zero,2(s0)
   14ec4:	f3dff06f          	j	14e00 <emdnorm+0x23c>
   14ec8:	0e099a63          	bnez	s3,14fbc <emdnorm+0x3f8>
   14ecc:	00c4a783          	lw	a5,12(s1)
   14ed0:	0184d703          	lhu	a4,24(s1)
   14ed4:	00179793          	slli	a5,a5,0x1
   14ed8:	00f407b3          	add	a5,s0,a5
   14edc:	0007d783          	lhu	a5,0(a5)
   14ee0:	00e7f7b3          	and	a5,a5,a4
   14ee4:	ec0792e3          	bnez	a5,14da8 <emdnorm+0x1e4>
   14ee8:	ef204ee3          	bgtz	s2,14de4 <emdnorm+0x220>
   14eec:	09000793          	li	a5,144
   14ef0:	00f50663          	beq	a0,a5,14efc <emdnorm+0x338>
   14ef4:	00040513          	mv	a0,s0
   14ef8:	d74ff0ef          	jal	ra,1446c <eshup1>
   14efc:	00445783          	lhu	a5,4(s0)
   14f00:	fa0790e3          	bnez	a5,14ea0 <emdnorm+0x2dc>
   14f04:	00041c23          	sh	zero,24(s0)
   14f08:	fa094ce3          	bltz	s2,14ec0 <emdnorm+0x2fc>
   14f0c:	ef1ff06f          	j	14dfc <emdnorm+0x238>
   14f10:	0084a803          	lw	a6,8(s1)
   14f14:	0144d603          	lhu	a2,20(s1)
   14f18:	00181813          	slli	a6,a6,0x1
   14f1c:	01040833          	add	a6,s0,a6
   14f20:	00085883          	lhu	a7,0(a6)
   14f24:	011675b3          	and	a1,a2,a7
   14f28:	e65ff06f          	j	14d8c <emdnorm+0x1c8>
   14f2c:	00041c23          	sh	zero,24(s0)
   14f30:	00041123          	sh	zero,2(s0)
   14f34:	ecdff06f          	j	14e00 <emdnorm+0x23c>
   14f38:	00400793          	li	a5,4
   14f3c:	00800737          	lui	a4,0x800
   14f40:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7db8af>
   14f44:	02079793          	slli	a5,a5,0x20
   14f48:	00478793          	addi	a5,a5,4
   14f4c:	00e4aa23          	sw	a4,20(s1)
   14f50:	10000713          	li	a4,256
   14f54:	00f4b423          	sd	a5,8(s1)
   14f58:	00e49c23          	sh	a4,24(s1)
   14f5c:	00400793          	li	a5,4
   14f60:	d89ff06f          	j	14ce8 <emdnorm+0x124>
   14f64:	00300793          	li	a5,3
   14f68:	80010737          	lui	a4,0x80010
   14f6c:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb7af>
   14f70:	02179793          	slli	a5,a5,0x21
   14f74:	00778793          	addi	a5,a5,7
   14f78:	00e4aa23          	sw	a4,20(s1)
   14f7c:	00100713          	li	a4,1
   14f80:	00f4b423          	sd	a5,8(s1)
   14f84:	00e49c23          	sh	a4,24(s1)
   14f88:	00600793          	li	a5,6
   14f8c:	d5dff06f          	j	14ce8 <emdnorm+0x124>
   14f90:	00b00793          	li	a5,11
   14f94:	80010737          	lui	a4,0x80010
   14f98:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb7af>
   14f9c:	02079793          	slli	a5,a5,0x20
   14fa0:	00c78793          	addi	a5,a5,12
   14fa4:	00e4aa23          	sw	a4,20(s1)
   14fa8:	00100713          	li	a4,1
   14fac:	00f4b423          	sd	a5,8(s1)
   14fb0:	00e49c23          	sh	a4,24(s1)
   14fb4:	00b00793          	li	a5,11
   14fb8:	d31ff06f          	j	14ce8 <emdnorm+0x124>
   14fbc:	de0a06e3          	beqz	s4,14da8 <emdnorm+0x1e4>
   14fc0:	e21ff06f          	j	14de0 <emdnorm+0x21c>
   14fc4:	00800737          	lui	a4,0x800
   14fc8:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7db8af>
   14fcc:	00e4aa23          	sw	a4,20(s1)
   14fd0:	00600793          	li	a5,6
   14fd4:	10000713          	li	a4,256
   14fd8:	cfdff06f          	j	14cd4 <emdnorm+0x110>

0000000000014fdc <eiremain>:
   14fdc:	fa010113          	addi	sp,sp,-96
   14fe0:	03313c23          	sd	s3,56(sp)
   14fe4:	00255983          	lhu	s3,2(a0)
   14fe8:	04913423          	sd	s1,72(sp)
   14fec:	00058493          	mv	s1,a1
   14ff0:	04113c23          	sd	ra,88(sp)
   14ff4:	04813823          	sd	s0,80(sp)
   14ff8:	05213023          	sd	s2,64(sp)
   14ffc:	03413823          	sd	s4,48(sp)
   15000:	00060913          	mv	s2,a2
   15004:	03513423          	sd	s5,40(sp)
   15008:	03613023          	sd	s6,32(sp)
   1500c:	01713c23          	sd	s7,24(sp)
   15010:	01813823          	sd	s8,16(sp)
   15014:	01913423          	sd	s9,8(sp)
   15018:	01a13023          	sd	s10,0(sp)
   1501c:	00050a13          	mv	s4,a0
   15020:	a21ff0ef          	jal	ra,14a40 <enormlz>
   15024:	0024d403          	lhu	s0,2(s1)
   15028:	40a989b3          	sub	s3,s3,a0
   1502c:	00048513          	mv	a0,s1
   15030:	a11ff0ef          	jal	ra,14a40 <enormlz>
   15034:	03490a93          	addi	s5,s2,52
   15038:	40a40433          	sub	s0,s0,a0
   1503c:	04e90713          	addi	a4,s2,78
   15040:	000a8793          	mv	a5,s5
   15044:	00278793          	addi	a5,a5,2
   15048:	fe079f23          	sh	zero,-2(a5)
   1504c:	fee79ce3          	bne	a5,a4,15044 <eiremain+0x68>
   15050:	09344a63          	blt	s0,s3,150e4 <eiremain+0x108>
   15054:	004a0b93          	addi	s7,s4,4
   15058:	00448b13          	addi	s6,s1,4
   1505c:	fff98993          	addi	s3,s3,-1
   15060:	01aa0c93          	addi	s9,s4,26
   15064:	00248c13          	addi	s8,s1,2
   15068:	000b0713          	mv	a4,s6
   1506c:	000b8793          	mv	a5,s7
   15070:	00278793          	addi	a5,a5,2
   15074:	00270713          	addi	a4,a4,2
   15078:	ffe7d603          	lhu	a2,-2(a5)
   1507c:	ffe75683          	lhu	a3,-2(a4)
   15080:	0ad61a63          	bne	a2,a3,15134 <eiremain+0x158>
   15084:	fefc96e3          	bne	s9,a5,15070 <eiremain+0x94>
   15088:	018a0693          	addi	a3,s4,24
   1508c:	01848713          	addi	a4,s1,24
   15090:	00000613          	li	a2,0
   15094:	00075783          	lhu	a5,0(a4)
   15098:	0006d583          	lhu	a1,0(a3)
   1509c:	ffe70713          	addi	a4,a4,-2
   150a0:	40c787b3          	sub	a5,a5,a2
   150a4:	40b787b3          	sub	a5,a5,a1
   150a8:	00f71123          	sh	a5,2(a4)
   150ac:	0107d793          	srli	a5,a5,0x10
   150b0:	ffe68693          	addi	a3,a3,-2
   150b4:	0017f613          	andi	a2,a5,1
   150b8:	fcec1ee3          	bne	s8,a4,15094 <eiremain+0xb8>
   150bc:	00100d13          	li	s10,1
   150c0:	000a8513          	mv	a0,s5
   150c4:	ba8ff0ef          	jal	ra,1446c <eshup1>
   150c8:	04c95783          	lhu	a5,76(s2)
   150cc:	fff40413          	addi	s0,s0,-1
   150d0:	00048513          	mv	a0,s1
   150d4:	00fd6d33          	or	s10,s10,a5
   150d8:	05a91623          	sh	s10,76(s2)
   150dc:	b90ff0ef          	jal	ra,1446c <eshup1>
   150e0:	f93414e3          	bne	s0,s3,15068 <eiremain+0x8c>
   150e4:	00040693          	mv	a3,s0
   150e8:	05013403          	ld	s0,80(sp)
   150ec:	05813083          	ld	ra,88(sp)
   150f0:	03813983          	ld	s3,56(sp)
   150f4:	03013a03          	ld	s4,48(sp)
   150f8:	02813a83          	ld	s5,40(sp)
   150fc:	02013b03          	ld	s6,32(sp)
   15100:	01813b83          	ld	s7,24(sp)
   15104:	01013c03          	ld	s8,16(sp)
   15108:	00813c83          	ld	s9,8(sp)
   1510c:	00013d03          	ld	s10,0(sp)
   15110:	00090793          	mv	a5,s2
   15114:	00048513          	mv	a0,s1
   15118:	04013903          	ld	s2,64(sp)
   1511c:	04813483          	ld	s1,72(sp)
   15120:	00000713          	li	a4,0
   15124:	00000613          	li	a2,0
   15128:	00000593          	li	a1,0
   1512c:	06010113          	addi	sp,sp,96
   15130:	a95ff06f          	j	14bc4 <emdnorm>
   15134:	00000d13          	li	s10,0
   15138:	f8c6e4e3          	bltu	a3,a2,150c0 <eiremain+0xe4>
   1513c:	f4dff06f          	j	15088 <eiremain+0xac>

0000000000015140 <emovo.isra.6>:
   15140:	00055703          	lhu	a4,0(a0)
   15144:	00255783          	lhu	a5,2(a0)
   15148:	00070663          	beqz	a4,15154 <emovo.isra.6+0x14>
   1514c:	00008737          	lui	a4,0x8
   15150:	00e7e7b3          	or	a5,a5,a4
   15154:	00f59923          	sh	a5,18(a1)
   15158:	00255703          	lhu	a4,2(a0)
   1515c:	000087b7          	lui	a5,0x8
   15160:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15164:	02f70463          	beq	a4,a5,1518c <emovo.isra.6+0x4c>
   15168:	00650793          	addi	a5,a0,6
   1516c:	01058593          	addi	a1,a1,16
   15170:	01850513          	addi	a0,a0,24
   15174:	00278793          	addi	a5,a5,2
   15178:	ffe7d703          	lhu	a4,-2(a5)
   1517c:	ffe58593          	addi	a1,a1,-2
   15180:	00e59123          	sh	a4,2(a1)
   15184:	fea798e3          	bne	a5,a0,15174 <emovo.isra.6+0x34>
   15188:	00008067          	ret
   1518c:	00650793          	addi	a5,a0,6
   15190:	01a50513          	addi	a0,a0,26
   15194:	0007d703          	lhu	a4,0(a5)
   15198:	00278793          	addi	a5,a5,2
   1519c:	02071a63          	bnez	a4,151d0 <emovo.isra.6+0x90>
   151a0:	fea79ae3          	bne	a5,a0,15194 <emovo.isra.6+0x54>
   151a4:	01258713          	addi	a4,a1,18
   151a8:	00058793          	mv	a5,a1
   151ac:	00278793          	addi	a5,a5,2
   151b0:	fe079f23          	sh	zero,-2(a5)
   151b4:	fef71ce3          	bne	a4,a5,151ac <emovo.isra.6+0x6c>
   151b8:	0125d783          	lhu	a5,18(a1)
   151bc:	00008737          	lui	a4,0x8
   151c0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   151c4:	00e7e7b3          	or	a5,a5,a4
   151c8:	00f59923          	sh	a5,18(a1)
   151cc:	00008067          	ret
   151d0:	01058713          	addi	a4,a1,16
   151d4:	00058793          	mv	a5,a1
   151d8:	00278793          	addi	a5,a5,2
   151dc:	fe079f23          	sh	zero,-2(a5)
   151e0:	fef71ce3          	bne	a4,a5,151d8 <emovo.isra.6+0x98>
   151e4:	7fffc7b7          	lui	a5,0x7fffc
   151e8:	00f5a823          	sw	a5,16(a1)
   151ec:	00008067          	ret

00000000000151f0 <emul>:
   151f0:	f4010113          	addi	sp,sp,-192
   151f4:	09513423          	sd	s5,136(sp)
   151f8:	01255a83          	lhu	s5,18(a0)
   151fc:	000087b7          	lui	a5,0x8
   15200:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15204:	0a813823          	sd	s0,176(sp)
   15208:	0a913423          	sd	s1,168(sp)
   1520c:	0b213023          	sd	s2,160(sp)
   15210:	09313c23          	sd	s3,152(sp)
   15214:	09613023          	sd	s6,128(sp)
   15218:	0a113c23          	sd	ra,184(sp)
   1521c:	09413823          	sd	s4,144(sp)
   15220:	07713c23          	sd	s7,120(sp)
   15224:	07813823          	sd	s8,112(sp)
   15228:	07913423          	sd	s9,104(sp)
   1522c:	0157fb33          	and	s6,a5,s5
   15230:	00050493          	mv	s1,a0
   15234:	00058913          	mv	s2,a1
   15238:	00060413          	mv	s0,a2
   1523c:	00068993          	mv	s3,a3
   15240:	0afb1863          	bne	s6,a5,152f0 <emul+0x100>
   15244:	b7cff0ef          	jal	ra,145c0 <eisnan.part.0>
   15248:	20051c63          	bnez	a0,15460 <emul+0x270>
   1524c:	01295a03          	lhu	s4,18(s2)
   15250:	014b77b3          	and	a5,s6,s4
   15254:	23679463          	bne	a5,s6,1547c <emul+0x28c>
   15258:	00090513          	mv	a0,s2
   1525c:	b64ff0ef          	jal	ra,145c0 <eisnan.part.0>
   15260:	0a051463          	bnez	a0,15308 <emul+0x118>
   15264:	00048513          	mv	a0,s1
   15268:	e10ff0ef          	jal	ra,14878 <eisinf.part.1>
   1526c:	20051e63          	bnez	a0,15488 <emul+0x298>
   15270:	000087b7          	lui	a5,0x8
   15274:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15278:	0147fa33          	and	s4,a5,s4
   1527c:	030a1a13          	slli	s4,s4,0x30
   15280:	030a5a13          	srli	s4,s4,0x30
   15284:	2cfa1663          	bne	s4,a5,15550 <emul+0x360>
   15288:	00090513          	mv	a0,s2
   1528c:	decff0ef          	jal	ra,14878 <eisinf.part.1>
   15290:	32051263          	bnez	a0,155b4 <emul+0x3c4>
   15294:	0124d783          	lhu	a5,18(s1)
   15298:	00fa77b3          	and	a5,s4,a5
   1529c:	21478463          	beq	a5,s4,154a4 <emul+0x2b4>
   152a0:	00048513          	mv	a0,s1
   152a4:	00010593          	mv	a1,sp
   152a8:	bc8ff0ef          	jal	ra,14670 <emovi>
   152ac:	00090513          	mv	a0,s2
   152b0:	02010593          	addi	a1,sp,32
   152b4:	bbcff0ef          	jal	ra,14670 <emovi>
   152b8:	00215483          	lhu	s1,2(sp)
   152bc:	02215903          	lhu	s2,34(sp)
   152c0:	08049a63          	bnez	s1,15354 <emul+0x164>
   152c4:	00410793          	addi	a5,sp,4
   152c8:	01810693          	addi	a3,sp,24
   152cc:	2cd78063          	beq	a5,a3,1558c <emul+0x39c>
   152d0:	00278793          	addi	a5,a5,2
   152d4:	ffe7d703          	lhu	a4,-2(a5)
   152d8:	fe070ae3          	beqz	a4,152cc <emul+0xdc>
   152dc:	00010513          	mv	a0,sp
   152e0:	f60ff0ef          	jal	ra,14a40 <enormlz>
   152e4:	40a004b3          	neg	s1,a0
   152e8:	02215703          	lhu	a4,34(sp)
   152ec:	06c0006f          	j	15358 <emul+0x168>
   152f0:	0125da03          	lhu	s4,18(a1)
   152f4:	0147f733          	and	a4,a5,s4
   152f8:	faf714e3          	bne	a4,a5,152a0 <emul+0xb0>
   152fc:	00058513          	mv	a0,a1
   15300:	ac0ff0ef          	jal	ra,145c0 <eisnan.part.0>
   15304:	f60506e3          	beqz	a0,15270 <emul+0x80>
   15308:	01490713          	addi	a4,s2,20
   1530c:	00290913          	addi	s2,s2,2
   15310:	ffe95783          	lhu	a5,-2(s2)
   15314:	00240413          	addi	s0,s0,2
   15318:	fef41f23          	sh	a5,-2(s0)
   1531c:	fee918e3          	bne	s2,a4,1530c <emul+0x11c>
   15320:	0b813083          	ld	ra,184(sp)
   15324:	0b013403          	ld	s0,176(sp)
   15328:	0a813483          	ld	s1,168(sp)
   1532c:	0a013903          	ld	s2,160(sp)
   15330:	09813983          	ld	s3,152(sp)
   15334:	09013a03          	ld	s4,144(sp)
   15338:	08813a83          	ld	s5,136(sp)
   1533c:	08013b03          	ld	s6,128(sp)
   15340:	07813b83          	ld	s7,120(sp)
   15344:	07013c03          	ld	s8,112(sp)
   15348:	06813c83          	ld	s9,104(sp)
   1534c:	0c010113          	addi	sp,sp,192
   15350:	00008067          	ret
   15354:	00090713          	mv	a4,s2
   15358:	00090b13          	mv	s6,s2
   1535c:	02410793          	addi	a5,sp,36
   15360:	03810693          	addi	a3,sp,56
   15364:	02071263          	bnez	a4,15388 <emul+0x198>
   15368:	22f68c63          	beq	a3,a5,155a0 <emul+0x3b0>
   1536c:	00278793          	addi	a5,a5,2
   15370:	ffe7d703          	lhu	a4,-2(a5)
   15374:	fe070ae3          	beqz	a4,15368 <emul+0x178>
   15378:	02010513          	addi	a0,sp,32
   1537c:	ec4ff0ef          	jal	ra,14a40 <enormlz>
   15380:	02215703          	lhu	a4,34(sp)
   15384:	40a90b33          	sub	s6,s2,a0
   15388:	02015783          	lhu	a5,32(sp)
   1538c:	03898a93          	addi	s5,s3,56
   15390:	02e99b23          	sh	a4,54(s3)
   15394:	02f99a23          	sh	a5,52(s3)
   15398:	04e98713          	addi	a4,s3,78
   1539c:	000a8793          	mv	a5,s5
   153a0:	00079023          	sh	zero,0(a5)
   153a4:	00278793          	addi	a5,a5,2
   153a8:	fef71ce3          	bne	a4,a5,153a0 <emul+0x1b0>
   153ac:	04c98b93          	addi	s7,s3,76
   153b0:	00000a13          	li	s4,0
   153b4:	01810913          	addi	s2,sp,24
   153b8:	00410c93          	addi	s9,sp,4
   153bc:	04210c13          	addi	s8,sp,66
   153c0:	00095503          	lhu	a0,0(s2)
   153c4:	ffe90913          	addi	s2,s2,-2
   153c8:	14051263          	bnez	a0,1550c <emul+0x31c>
   153cc:	04c9d703          	lhu	a4,76(s3)
   153d0:	000b8793          	mv	a5,s7
   153d4:	00ea6a33          	or	s4,s4,a4
   153d8:	ffe78793          	addi	a5,a5,-2
   153dc:	0007d703          	lhu	a4,0(a5)
   153e0:	00e79123          	sh	a4,2(a5)
   153e4:	ff579ae3          	bne	a5,s5,153d8 <emul+0x1e8>
   153e8:	02099c23          	sh	zero,56(s3)
   153ec:	fd991ae3          	bne	s2,s9,153c0 <emul+0x1d0>
   153f0:	03498713          	addi	a4,s3,52
   153f4:	02010793          	addi	a5,sp,32
   153f8:	03a10693          	addi	a3,sp,58
   153fc:	00075603          	lhu	a2,0(a4)
   15400:	00278793          	addi	a5,a5,2
   15404:	00270713          	addi	a4,a4,2
   15408:	fec79f23          	sh	a2,-2(a5)
   1540c:	fef698e3          	bne	a3,a5,153fc <emul+0x20c>
   15410:	ffffc6b7          	lui	a3,0xffffc
   15414:	016484b3          	add	s1,s1,s6
   15418:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd77b2>
   1541c:	000a0593          	mv	a1,s4
   15420:	02010513          	addi	a0,sp,32
   15424:	00098793          	mv	a5,s3
   15428:	04000713          	li	a4,64
   1542c:	00d486b3          	add	a3,s1,a3
   15430:	00000613          	li	a2,0
   15434:	f90ff0ef          	jal	ra,14bc4 <emdnorm>
   15438:	02015703          	lhu	a4,32(sp)
   1543c:	00015783          	lhu	a5,0(sp)
   15440:	00040593          	mv	a1,s0
   15444:	02010513          	addi	a0,sp,32
   15448:	40e787b3          	sub	a5,a5,a4
   1544c:	00f037b3          	snez	a5,a5
   15450:	40f007bb          	negw	a5,a5
   15454:	02f11023          	sh	a5,32(sp)
   15458:	ce9ff0ef          	jal	ra,15140 <emovo.isra.6>
   1545c:	ec5ff06f          	j	15320 <emul+0x130>
   15460:	01448713          	addi	a4,s1,20
   15464:	00248493          	addi	s1,s1,2
   15468:	ffe4d783          	lhu	a5,-2(s1)
   1546c:	00240413          	addi	s0,s0,2
   15470:	fef41f23          	sh	a5,-2(s0)
   15474:	fee498e3          	bne	s1,a4,15464 <emul+0x274>
   15478:	ea9ff06f          	j	15320 <emul+0x130>
   1547c:	00048513          	mv	a0,s1
   15480:	bf8ff0ef          	jal	ra,14878 <eisinf.part.1>
   15484:	0c050863          	beqz	a0,15554 <emul+0x364>
   15488:	0000c597          	auipc	a1,0xc
   1548c:	77858593          	addi	a1,a1,1912 # 21c00 <ezero>
   15490:	00090513          	mv	a0,s2
   15494:	ac8ff0ef          	jal	ra,1475c <ecmp>
   15498:	14050063          	beqz	a0,155d8 <emul+0x3e8>
   1549c:	01295a03          	lhu	s4,18(s2)
   154a0:	dd1ff06f          	j	15270 <emul+0x80>
   154a4:	00048513          	mv	a0,s1
   154a8:	bd0ff0ef          	jal	ra,14878 <eisinf.part.1>
   154ac:	00051863          	bnez	a0,154bc <emul+0x2cc>
   154b0:	00090513          	mv	a0,s2
   154b4:	bc4ff0ef          	jal	ra,14878 <eisinf.part.1>
   154b8:	de0504e3          	beqz	a0,152a0 <emul+0xb0>
   154bc:	00048513          	mv	a0,s1
   154c0:	970ff0ef          	jal	ra,14630 <eisneg>
   154c4:	00050493          	mv	s1,a0
   154c8:	00090513          	mv	a0,s2
   154cc:	964ff0ef          	jal	ra,14630 <eisneg>
   154d0:	40a48533          	sub	a0,s1,a0
   154d4:	00a03533          	snez	a0,a0
   154d8:	00f51513          	slli	a0,a0,0xf
   154dc:	00a41923          	sh	a0,18(s0)
   154e0:	01240713          	addi	a4,s0,18
   154e4:	00040793          	mv	a5,s0
   154e8:	00278793          	addi	a5,a5,2
   154ec:	fe079f23          	sh	zero,-2(a5)
   154f0:	fee79ce3          	bne	a5,a4,154e8 <emul+0x2f8>
   154f4:	01245783          	lhu	a5,18(s0)
   154f8:	00008737          	lui	a4,0x8
   154fc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15500:	00e7e7b3          	or	a5,a5,a4
   15504:	00f41923          	sh	a5,18(s0)
   15508:	e19ff06f          	j	15320 <emul+0x130>
   1550c:	04010613          	addi	a2,sp,64
   15510:	02010593          	addi	a1,sp,32
   15514:	fcdfe0ef          	jal	ra,144e0 <m16m>
   15518:	000b8613          	mv	a2,s7
   1551c:	00000593          	li	a1,0
   15520:	05810713          	addi	a4,sp,88
   15524:	00065503          	lhu	a0,0(a2)
   15528:	00075783          	lhu	a5,0(a4)
   1552c:	ffe60613          	addi	a2,a2,-2
   15530:	ffe70713          	addi	a4,a4,-2
   15534:	00a787b3          	add	a5,a5,a0
   15538:	00b787b3          	add	a5,a5,a1
   1553c:	00f61123          	sh	a5,2(a2)
   15540:	0107d793          	srli	a5,a5,0x10
   15544:	0017f593          	andi	a1,a5,1
   15548:	fd871ee3          	bne	a4,s8,15524 <emul+0x334>
   1554c:	e81ff06f          	j	153cc <emul+0x1dc>
   15550:	0124da83          	lhu	s5,18(s1)
   15554:	000087b7          	lui	a5,0x8
   15558:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1555c:	0157fab3          	and	s5,a5,s5
   15560:	030a9a93          	slli	s5,s5,0x30
   15564:	030ada93          	srli	s5,s5,0x30
   15568:	d2fa9ce3          	bne	s5,a5,152a0 <emul+0xb0>
   1556c:	00048513          	mv	a0,s1
   15570:	b08ff0ef          	jal	ra,14878 <eisinf.part.1>
   15574:	f40514e3          	bnez	a0,154bc <emul+0x2cc>
   15578:	01295783          	lhu	a5,18(s2)
   1557c:	fff7c793          	not	a5,a5
   15580:	03179713          	slli	a4,a5,0x31
   15584:	d0071ee3          	bnez	a4,152a0 <emul+0xb0>
   15588:	f29ff06f          	j	154b0 <emul+0x2c0>
   1558c:	01440793          	addi	a5,s0,20
   15590:	00240413          	addi	s0,s0,2
   15594:	fe041f23          	sh	zero,-2(s0)
   15598:	fe879ce3          	bne	a5,s0,15590 <emul+0x3a0>
   1559c:	d85ff06f          	j	15320 <emul+0x130>
   155a0:	01440793          	addi	a5,s0,20
   155a4:	00240413          	addi	s0,s0,2
   155a8:	fe041f23          	sh	zero,-2(s0)
   155ac:	fef41ce3          	bne	s0,a5,155a4 <emul+0x3b4>
   155b0:	d71ff06f          	j	15320 <emul+0x130>
   155b4:	0000c597          	auipc	a1,0xc
   155b8:	64c58593          	addi	a1,a1,1612 # 21c00 <ezero>
   155bc:	00048513          	mv	a0,s1
   155c0:	99cff0ef          	jal	ra,1475c <ecmp>
   155c4:	00050a63          	beqz	a0,155d8 <emul+0x3e8>
   155c8:	0124d783          	lhu	a5,18(s1)
   155cc:	00fa77b3          	and	a5,s4,a5
   155d0:	f9478ee3          	beq	a5,s4,1556c <emul+0x37c>
   155d4:	fa5ff06f          	j	15578 <emul+0x388>
   155d8:	01040713          	addi	a4,s0,16
   155dc:	00040793          	mv	a5,s0
   155e0:	00278793          	addi	a5,a5,2
   155e4:	fe079f23          	sh	zero,-2(a5)
   155e8:	fee79ce3          	bne	a5,a4,155e0 <emul+0x3f0>
   155ec:	7fffc7b7          	lui	a5,0x7fffc
   155f0:	00f42823          	sw	a5,16(s0)
   155f4:	d2dff06f          	j	15320 <emul+0x130>

00000000000155f8 <ediv>:
   155f8:	01255783          	lhu	a5,18(a0)
   155fc:	f2010113          	addi	sp,sp,-224
   15600:	0c813823          	sd	s0,208(sp)
   15604:	fff7c793          	not	a5,a5
   15608:	0c913423          	sd	s1,200(sp)
   1560c:	0d213023          	sd	s2,192(sp)
   15610:	09813823          	sd	s8,144(sp)
   15614:	0c113c23          	sd	ra,216(sp)
   15618:	0b313c23          	sd	s3,184(sp)
   1561c:	0b413823          	sd	s4,176(sp)
   15620:	0b513423          	sd	s5,168(sp)
   15624:	0b613023          	sd	s6,160(sp)
   15628:	09713c23          	sd	s7,152(sp)
   1562c:	09913423          	sd	s9,136(sp)
   15630:	09a13023          	sd	s10,128(sp)
   15634:	07b13c23          	sd	s11,120(sp)
   15638:	03179713          	slli	a4,a5,0x31
   1563c:	00050493          	mv	s1,a0
   15640:	00058913          	mv	s2,a1
   15644:	00060413          	mv	s0,a2
   15648:	00068c13          	mv	s8,a3
   1564c:	00071663          	bnez	a4,15658 <ediv+0x60>
   15650:	f71fe0ef          	jal	ra,145c0 <eisnan.part.0>
   15654:	38051463          	bnez	a0,159dc <ediv+0x3e4>
   15658:	01295783          	lhu	a5,18(s2)
   1565c:	fff7c793          	not	a5,a5
   15660:	03179713          	slli	a4,a5,0x31
   15664:	08070e63          	beqz	a4,15700 <ediv+0x108>
   15668:	0000c597          	auipc	a1,0xc
   1566c:	59858593          	addi	a1,a1,1432 # 21c00 <ezero>
   15670:	00048513          	mv	a0,s1
   15674:	8e8ff0ef          	jal	ra,1475c <ecmp>
   15678:	10050463          	beqz	a0,15780 <ediv+0x188>
   1567c:	0124d983          	lhu	s3,18(s1)
   15680:	01295703          	lhu	a4,18(s2)
   15684:	000087b7          	lui	a5,0x8
   15688:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1568c:	0137f9b3          	and	s3,a5,s3
   15690:	00e7fa33          	and	s4,a5,a4
   15694:	08f99a63          	bne	s3,a5,15728 <ediv+0x130>
   15698:	00048513          	mv	a0,s1
   1569c:	9dcff0ef          	jal	ra,14878 <eisinf.part.1>
   156a0:	10050a63          	beqz	a0,157b4 <ediv+0x1bc>
   156a4:	013a1863          	bne	s4,s3,156b4 <ediv+0xbc>
   156a8:	00090513          	mv	a0,s2
   156ac:	9ccff0ef          	jal	ra,14878 <eisinf.part.1>
   156b0:	0e051263          	bnez	a0,15794 <ediv+0x19c>
   156b4:	01440793          	addi	a5,s0,20
   156b8:	00240413          	addi	s0,s0,2
   156bc:	fe041f23          	sh	zero,-2(s0)
   156c0:	fef41ce3          	bne	s0,a5,156b8 <ediv+0xc0>
   156c4:	0d813083          	ld	ra,216(sp)
   156c8:	0d013403          	ld	s0,208(sp)
   156cc:	0c813483          	ld	s1,200(sp)
   156d0:	0c013903          	ld	s2,192(sp)
   156d4:	0b813983          	ld	s3,184(sp)
   156d8:	0b013a03          	ld	s4,176(sp)
   156dc:	0a813a83          	ld	s5,168(sp)
   156e0:	0a013b03          	ld	s6,160(sp)
   156e4:	09813b83          	ld	s7,152(sp)
   156e8:	09013c03          	ld	s8,144(sp)
   156ec:	08813c83          	ld	s9,136(sp)
   156f0:	08013d03          	ld	s10,128(sp)
   156f4:	07813d83          	ld	s11,120(sp)
   156f8:	0e010113          	addi	sp,sp,224
   156fc:	00008067          	ret
   15700:	00090513          	mv	a0,s2
   15704:	ebdfe0ef          	jal	ra,145c0 <eisnan.part.0>
   15708:	f60500e3          	beqz	a0,15668 <ediv+0x70>
   1570c:	01490713          	addi	a4,s2,20
   15710:	00290913          	addi	s2,s2,2
   15714:	ffe95783          	lhu	a5,-2(s2)
   15718:	00240413          	addi	s0,s0,2
   1571c:	fef41f23          	sh	a5,-2(s0)
   15720:	fee918e3          	bne	s2,a4,15710 <ediv+0x118>
   15724:	fa1ff06f          	j	156c4 <ediv+0xcc>
   15728:	08fa0863          	beq	s4,a5,157b8 <ediv+0x1c0>
   1572c:	01010593          	addi	a1,sp,16
   15730:	00048513          	mv	a0,s1
   15734:	f3dfe0ef          	jal	ra,14670 <emovi>
   15738:	00090513          	mv	a0,s2
   1573c:	03010593          	addi	a1,sp,48
   15740:	f31fe0ef          	jal	ra,14670 <emovi>
   15744:	03215c83          	lhu	s9,50(sp)
   15748:	01215903          	lhu	s2,18(sp)
   1574c:	0c0c9463          	bnez	s9,15814 <ediv+0x21c>
   15750:	03410793          	addi	a5,sp,52
   15754:	04810493          	addi	s1,sp,72
   15758:	34f48a63          	beq	s1,a5,15aac <ediv+0x4b4>
   1575c:	00278793          	addi	a5,a5,2
   15760:	ffe7d703          	lhu	a4,-2(a5)
   15764:	fe070ae3          	beqz	a4,15758 <ediv+0x160>
   15768:	03010513          	addi	a0,sp,48
   1576c:	ad4ff0ef          	jal	ra,14a40 <enormlz>
   15770:	40a007b3          	neg	a5,a0
   15774:	00f13423          	sd	a5,8(sp)
   15778:	01215603          	lhu	a2,18(sp)
   1577c:	0a00006f          	j	1581c <ediv+0x224>
   15780:	0000c597          	auipc	a1,0xc
   15784:	48058593          	addi	a1,a1,1152 # 21c00 <ezero>
   15788:	00090513          	mv	a0,s2
   1578c:	fd1fe0ef          	jal	ra,1475c <ecmp>
   15790:	ee0516e3          	bnez	a0,1567c <ediv+0x84>
   15794:	01040713          	addi	a4,s0,16
   15798:	00040793          	mv	a5,s0
   1579c:	00278793          	addi	a5,a5,2
   157a0:	fe079f23          	sh	zero,-2(a5)
   157a4:	fee79ce3          	bne	a5,a4,1579c <ediv+0x1a4>
   157a8:	7fffc7b7          	lui	a5,0x7fffc
   157ac:	00f42823          	sw	a5,16(s0)
   157b0:	f15ff06f          	j	156c4 <ediv+0xcc>
   157b4:	f73a1ce3          	bne	s4,s3,1572c <ediv+0x134>
   157b8:	00090513          	mv	a0,s2
   157bc:	8bcff0ef          	jal	ra,14878 <eisinf.part.1>
   157c0:	f60506e3          	beqz	a0,1572c <ediv+0x134>
   157c4:	00048513          	mv	a0,s1
   157c8:	e69fe0ef          	jal	ra,14630 <eisneg>
   157cc:	00050493          	mv	s1,a0
   157d0:	00090513          	mv	a0,s2
   157d4:	e5dfe0ef          	jal	ra,14630 <eisneg>
   157d8:	40a48533          	sub	a0,s1,a0
   157dc:	00a03533          	snez	a0,a0
   157e0:	00f51513          	slli	a0,a0,0xf
   157e4:	00a41923          	sh	a0,18(s0)
   157e8:	01240713          	addi	a4,s0,18
   157ec:	00040793          	mv	a5,s0
   157f0:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd77b2>
   157f4:	fe079f23          	sh	zero,-2(a5)
   157f8:	fee79ce3          	bne	a5,a4,157f0 <ediv+0x1f8>
   157fc:	01245783          	lhu	a5,18(s0)
   15800:	00008737          	lui	a4,0x8
   15804:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15808:	00e7e7b3          	or	a5,a5,a4
   1580c:	00f41923          	sh	a5,18(s0)
   15810:	eb5ff06f          	j	156c4 <ediv+0xcc>
   15814:	01913423          	sd	s9,8(sp)
   15818:	00090613          	mv	a2,s2
   1581c:	01213023          	sd	s2,0(sp)
   15820:	01410793          	addi	a5,sp,20
   15824:	02810693          	addi	a3,sp,40
   15828:	02061263          	bnez	a2,1584c <ediv+0x254>
   1582c:	28f68a63          	beq	a3,a5,15ac0 <ediv+0x4c8>
   15830:	00278793          	addi	a5,a5,2
   15834:	ffe7d703          	lhu	a4,-2(a5)
   15838:	fe070ae3          	beqz	a4,1582c <ediv+0x234>
   1583c:	01010513          	addi	a0,sp,16
   15840:	a00ff0ef          	jal	ra,14a40 <enormlz>
   15844:	40a907b3          	sub	a5,s2,a0
   15848:	00f13023          	sd	a5,0(sp)
   1584c:	03012703          	lw	a4,48(sp)
   15850:	038c0d93          	addi	s11,s8,56
   15854:	000d8793          	mv	a5,s11
   15858:	02ec2a23          	sw	a4,52(s8)
   1585c:	04ec0993          	addi	s3,s8,78
   15860:	00278793          	addi	a5,a5,2
   15864:	fe079f23          	sh	zero,-2(a5)
   15868:	fef99ce3          	bne	s3,a5,15860 <ediv+0x268>
   1586c:	03010513          	addi	a0,sp,48
   15870:	b95fe0ef          	jal	ra,14404 <eshdn1>
   15874:	01615d03          	lhu	s10,22(sp)
   15878:	00010ab7          	lui	s5,0x10
   1587c:	04810493          	addi	s1,sp,72
   15880:	010d1b13          	slli	s6,s10,0x10
   15884:	41ab0b33          	sub	s6,s6,s10
   15888:	03210b93          	addi	s7,sp,50
   1588c:	fffa8a93          	addi	s5,s5,-1 # ffff <register_fini-0xb1>
   15890:	06a10913          	addi	s2,sp,106
   15894:	05210a13          	addi	s4,sp,82
   15898:	03415503          	lhu	a0,52(sp)
   1589c:	03615783          	lhu	a5,54(sp)
   158a0:	000a8c93          	mv	s9,s5
   158a4:	01051513          	slli	a0,a0,0x10
   158a8:	00f50533          	add	a0,a0,a5
   158ac:	00ab6a63          	bltu	s6,a0,158c0 <ediv+0x2c8>
   158b0:	000d0593          	mv	a1,s10
   158b4:	fc1fa0ef          	jal	ra,10874 <__udivdi3>
   158b8:	03051c93          	slli	s9,a0,0x30
   158bc:	030cdc93          	srli	s9,s9,0x30
   158c0:	05010613          	addi	a2,sp,80
   158c4:	01010593          	addi	a1,sp,16
   158c8:	000c8513          	mv	a0,s9
   158cc:	c15fe0ef          	jal	ra,144e0 <m16m>
   158d0:	03410613          	addi	a2,sp,52
   158d4:	05410793          	addi	a5,sp,84
   158d8:	00278793          	addi	a5,a5,2
   158dc:	00260613          	addi	a2,a2,2
   158e0:	ffe7d503          	lhu	a0,-2(a5)
   158e4:	ffe65583          	lhu	a1,-2(a2)
   158e8:	10b51863          	bne	a0,a1,159f8 <ediv+0x400>
   158ec:	ff2796e3          	bne	a5,s2,158d8 <ediv+0x2e0>
   158f0:	00000513          	li	a0,0
   158f4:	06810593          	addi	a1,sp,104
   158f8:	00048613          	mv	a2,s1
   158fc:	00065783          	lhu	a5,0(a2)
   15900:	0005d803          	lhu	a6,0(a1)
   15904:	ffe60613          	addi	a2,a2,-2
   15908:	40a787b3          	sub	a5,a5,a0
   1590c:	410787b3          	sub	a5,a5,a6
   15910:	00f61123          	sh	a5,2(a2)
   15914:	0107d793          	srli	a5,a5,0x10
   15918:	ffe58593          	addi	a1,a1,-2
   1591c:	0017f513          	andi	a0,a5,1
   15920:	fd761ee3          	bne	a2,s7,158fc <ediv+0x304>
   15924:	019d9023          	sh	s9,0(s11)
   15928:	03410793          	addi	a5,sp,52
   1592c:	00278793          	addi	a5,a5,2
   15930:	0007d683          	lhu	a3,0(a5)
   15934:	fed79f23          	sh	a3,-2(a5)
   15938:	fe979ae3          	bne	a5,s1,1592c <ediv+0x334>
   1593c:	04011423          	sh	zero,72(sp)
   15940:	002d8d93          	addi	s11,s11,2
   15944:	f5b99ae3          	bne	s3,s11,15898 <ediv+0x2a0>
   15948:	00000593          	li	a1,0
   1594c:	03410793          	addi	a5,sp,52
   15950:	04a10693          	addi	a3,sp,74
   15954:	00278793          	addi	a5,a5,2
   15958:	ffe7d703          	lhu	a4,-2(a5)
   1595c:	00e5e5b3          	or	a1,a1,a4
   15960:	fed79ae3          	bne	a5,a3,15954 <ediv+0x35c>
   15964:	0005859b          	sext.w	a1,a1
   15968:	00b035b3          	snez	a1,a1
   1596c:	034c0713          	addi	a4,s8,52
   15970:	03010793          	addi	a5,sp,48
   15974:	00075603          	lhu	a2,0(a4)
   15978:	00278793          	addi	a5,a5,2
   1597c:	00270713          	addi	a4,a4,2
   15980:	fec79f23          	sh	a2,-2(a5)
   15984:	fef698e3          	bne	a3,a5,15974 <ediv+0x37c>
   15988:	00813783          	ld	a5,8(sp)
   1598c:	00013703          	ld	a4,0(sp)
   15990:	000046b7          	lui	a3,0x4
   15994:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   15998:	40e78cb3          	sub	s9,a5,a4
   1599c:	03010513          	addi	a0,sp,48
   159a0:	000c0793          	mv	a5,s8
   159a4:	04000713          	li	a4,64
   159a8:	00dc86b3          	add	a3,s9,a3
   159ac:	00000613          	li	a2,0
   159b0:	a14ff0ef          	jal	ra,14bc4 <emdnorm>
   159b4:	03015703          	lhu	a4,48(sp)
   159b8:	01015783          	lhu	a5,16(sp)
   159bc:	00040593          	mv	a1,s0
   159c0:	03010513          	addi	a0,sp,48
   159c4:	40e787b3          	sub	a5,a5,a4
   159c8:	00f037b3          	snez	a5,a5
   159cc:	40f007bb          	negw	a5,a5
   159d0:	02f11823          	sh	a5,48(sp)
   159d4:	f6cff0ef          	jal	ra,15140 <emovo.isra.6>
   159d8:	cedff06f          	j	156c4 <ediv+0xcc>
   159dc:	01448713          	addi	a4,s1,20
   159e0:	00248493          	addi	s1,s1,2
   159e4:	ffe4d783          	lhu	a5,-2(s1)
   159e8:	00240413          	addi	s0,s0,2
   159ec:	fef41f23          	sh	a5,-2(s0)
   159f0:	fee498e3          	bne	s1,a4,159e0 <ediv+0x3e8>
   159f4:	cd1ff06f          	j	156c4 <ediv+0xcc>
   159f8:	eea5fce3          	bgeu	a1,a0,158f0 <ediv+0x2f8>
   159fc:	fffc879b          	addiw	a5,s9,-1
   15a00:	03079893          	slli	a7,a5,0x30
   15a04:	0308d893          	srli	a7,a7,0x30
   15a08:	00000513          	li	a0,0
   15a0c:	02810593          	addi	a1,sp,40
   15a10:	06810613          	addi	a2,sp,104
   15a14:	00065783          	lhu	a5,0(a2)
   15a18:	0005d803          	lhu	a6,0(a1)
   15a1c:	ffe60613          	addi	a2,a2,-2
   15a20:	40a787b3          	sub	a5,a5,a0
   15a24:	410787b3          	sub	a5,a5,a6
   15a28:	00f61123          	sh	a5,2(a2)
   15a2c:	0107d793          	srli	a5,a5,0x10
   15a30:	ffe58593          	addi	a1,a1,-2
   15a34:	0017f513          	andi	a0,a5,1
   15a38:	fd461ee3          	bne	a2,s4,15a14 <ediv+0x41c>
   15a3c:	03410613          	addi	a2,sp,52
   15a40:	05410793          	addi	a5,sp,84
   15a44:	00278793          	addi	a5,a5,2
   15a48:	00260613          	addi	a2,a2,2
   15a4c:	ffe7d503          	lhu	a0,-2(a5)
   15a50:	ffe65583          	lhu	a1,-2(a2)
   15a54:	00b51863          	bne	a0,a1,15a64 <ediv+0x46c>
   15a58:	ff2796e3          	bne	a5,s2,15a44 <ediv+0x44c>
   15a5c:	00088c93          	mv	s9,a7
   15a60:	e91ff06f          	j	158f0 <ediv+0x2f8>
   15a64:	fea5fce3          	bgeu	a1,a0,15a5c <ediv+0x464>
   15a68:	ffec869b          	addiw	a3,s9,-2
   15a6c:	03069c93          	slli	s9,a3,0x30
   15a70:	030cdc93          	srli	s9,s9,0x30
   15a74:	00000513          	li	a0,0
   15a78:	02810593          	addi	a1,sp,40
   15a7c:	06810613          	addi	a2,sp,104
   15a80:	00065783          	lhu	a5,0(a2)
   15a84:	0005d803          	lhu	a6,0(a1)
   15a88:	ffe60613          	addi	a2,a2,-2
   15a8c:	40a787b3          	sub	a5,a5,a0
   15a90:	410787b3          	sub	a5,a5,a6
   15a94:	00f61123          	sh	a5,2(a2)
   15a98:	0107d793          	srli	a5,a5,0x10
   15a9c:	ffe58593          	addi	a1,a1,-2
   15aa0:	0017f513          	andi	a0,a5,1
   15aa4:	fd461ee3          	bne	a2,s4,15a80 <ediv+0x488>
   15aa8:	e49ff06f          	j	158f0 <ediv+0x2f8>
   15aac:	01440793          	addi	a5,s0,20
   15ab0:	00240413          	addi	s0,s0,2
   15ab4:	fe041f23          	sh	zero,-2(s0)
   15ab8:	fe879ce3          	bne	a5,s0,15ab0 <ediv+0x4b8>
   15abc:	c09ff06f          	j	156c4 <ediv+0xcc>
   15ac0:	01015703          	lhu	a4,16(sp)
   15ac4:	03015783          	lhu	a5,48(sp)
   15ac8:	00f70463          	beq	a4,a5,15ad0 <ediv+0x4d8>
   15acc:	00008637          	lui	a2,0x8
   15ad0:	00c41923          	sh	a2,18(s0)
   15ad4:	01240713          	addi	a4,s0,18
   15ad8:	00040793          	mv	a5,s0
   15adc:	00278793          	addi	a5,a5,2
   15ae0:	fe079f23          	sh	zero,-2(a5)
   15ae4:	fef71ce3          	bne	a4,a5,15adc <ediv+0x4e4>
   15ae8:	01245783          	lhu	a5,18(s0)
   15aec:	00008737          	lui	a4,0x8
   15af0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15af4:	00e7e7b3          	or	a5,a5,a4
   15af8:	00f41923          	sh	a5,18(s0)
   15afc:	bc9ff06f          	j	156c4 <ediv+0xcc>

0000000000015b00 <e113toe.isra.8>:
   15b00:	fd010113          	addi	sp,sp,-48
   15b04:	02813023          	sd	s0,32(sp)
   15b08:	02113423          	sd	ra,40(sp)
   15b0c:	00058413          	mv	s0,a1
   15b10:	00010793          	mv	a5,sp
   15b14:	01a10713          	addi	a4,sp,26
   15b18:	00278793          	addi	a5,a5,2
   15b1c:	fe079f23          	sh	zero,-2(a5)
   15b20:	fee79ce3          	bne	a5,a4,15b18 <e113toe.isra.8+0x18>
   15b24:	00e55603          	lhu	a2,14(a0)
   15b28:	0106179b          	slliw	a5,a2,0x10
   15b2c:	4107d79b          	sraiw	a5,a5,0x10
   15b30:	02079713          	slli	a4,a5,0x20
   15b34:	06074a63          	bltz	a4,15ba8 <e113toe.isra.8+0xa8>
   15b38:	000087b7          	lui	a5,0x8
   15b3c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15b40:	00011023          	sh	zero,0(sp)
   15b44:	00f67633          	and	a2,a2,a5
   15b48:	06f60c63          	beq	a2,a5,15bc0 <e113toe.isra.8+0xc0>
   15b4c:	00e50793          	addi	a5,a0,14
   15b50:	00c11123          	sh	a2,2(sp)
   15b54:	00610713          	addi	a4,sp,6
   15b58:	ffe78793          	addi	a5,a5,-2
   15b5c:	0007d683          	lhu	a3,0(a5)
   15b60:	00270713          	addi	a4,a4,2
   15b64:	fed71f23          	sh	a3,-2(a4)
   15b68:	fef518e3          	bne	a0,a5,15b58 <e113toe.isra.8+0x58>
   15b6c:	02061263          	bnez	a2,15b90 <e113toe.isra.8+0x90>
   15b70:	00011223          	sh	zero,4(sp)
   15b74:	00040593          	mv	a1,s0
   15b78:	00010513          	mv	a0,sp
   15b7c:	dc4ff0ef          	jal	ra,15140 <emovo.isra.6>
   15b80:	02813083          	ld	ra,40(sp)
   15b84:	02013403          	ld	s0,32(sp)
   15b88:	03010113          	addi	sp,sp,48
   15b8c:	00008067          	ret
   15b90:	00100793          	li	a5,1
   15b94:	fff00593          	li	a1,-1
   15b98:	00010513          	mv	a0,sp
   15b9c:	00f11223          	sh	a5,4(sp)
   15ba0:	cf5fe0ef          	jal	ra,14894 <eshift.part.3>
   15ba4:	fd1ff06f          	j	15b74 <e113toe.isra.8+0x74>
   15ba8:	fff00793          	li	a5,-1
   15bac:	00f11023          	sh	a5,0(sp)
   15bb0:	000087b7          	lui	a5,0x8
   15bb4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15bb8:	00f67633          	and	a2,a2,a5
   15bbc:	f8f618e3          	bne	a2,a5,15b4c <e113toe.isra.8+0x4c>
   15bc0:	00050793          	mv	a5,a0
   15bc4:	00e50693          	addi	a3,a0,14
   15bc8:	0007d703          	lhu	a4,0(a5)
   15bcc:	00278793          	addi	a5,a5,2
   15bd0:	04071c63          	bnez	a4,15c28 <e113toe.isra.8+0x128>
   15bd4:	fef69ae3          	bne	a3,a5,15bc8 <e113toe.isra.8+0xc8>
   15bd8:	01440713          	addi	a4,s0,20
   15bdc:	00040793          	mv	a5,s0
   15be0:	00278793          	addi	a5,a5,2
   15be4:	fe079f23          	sh	zero,-2(a5)
   15be8:	fee79ce3          	bne	a5,a4,15be0 <e113toe.isra.8+0xe0>
   15bec:	01240713          	addi	a4,s0,18
   15bf0:	00040793          	mv	a5,s0
   15bf4:	00278793          	addi	a5,a5,2
   15bf8:	fe079f23          	sh	zero,-2(a5)
   15bfc:	fee79ce3          	bne	a5,a4,15bf4 <e113toe.isra.8+0xf4>
   15c00:	01245783          	lhu	a5,18(s0)
   15c04:	00008737          	lui	a4,0x8
   15c08:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15c0c:	00e7e7b3          	or	a5,a5,a4
   15c10:	00f41923          	sh	a5,18(s0)
   15c14:	00e51783          	lh	a5,14(a0)
   15c18:	f607d4e3          	bgez	a5,15b80 <e113toe.isra.8+0x80>
   15c1c:	00040513          	mv	a0,s0
   15c20:	9c5fe0ef          	jal	ra,145e4 <eneg>
   15c24:	f5dff06f          	j	15b80 <e113toe.isra.8+0x80>
   15c28:	01040713          	addi	a4,s0,16
   15c2c:	00040793          	mv	a5,s0
   15c30:	00278793          	addi	a5,a5,2
   15c34:	fe079f23          	sh	zero,-2(a5)
   15c38:	fee79ce3          	bne	a5,a4,15c30 <e113toe.isra.8+0x130>
   15c3c:	7fffc7b7          	lui	a5,0x7fffc
   15c40:	00f42823          	sw	a5,16(s0)
   15c44:	f3dff06f          	j	15b80 <e113toe.isra.8+0x80>

0000000000015c48 <_ldtoa_r>:
   15c48:	09100313          	li	t1,145
   15c4c:	02031313          	slli	t1,t1,0x20
   15c50:	06053e03          	ld	t3,96(a0)
   15c54:	da010113          	addi	sp,sp,-608
   15c58:	fff30313          	addi	t1,t1,-1
   15c5c:	24813823          	sd	s0,592(sp)
   15c60:	23613023          	sd	s6,544(sp)
   15c64:	21713c23          	sd	s7,536(sp)
   15c68:	24113c23          	sd	ra,600(sp)
   15c6c:	24913423          	sd	s1,584(sp)
   15c70:	25213023          	sd	s2,576(sp)
   15c74:	23313c23          	sd	s3,568(sp)
   15c78:	23413823          	sd	s4,560(sp)
   15c7c:	23513423          	sd	s5,552(sp)
   15c80:	21813823          	sd	s8,528(sp)
   15c84:	21913423          	sd	s9,520(sp)
   15c88:	21a13023          	sd	s10,512(sp)
   15c8c:	1fb13c23          	sd	s11,504(sp)
   15c90:	04b13823          	sd	a1,80(sp)
   15c94:	04c13c23          	sd	a2,88(sp)
   15c98:	1a613023          	sd	t1,416(sp)
   15c9c:	00e13823          	sd	a4,16(sp)
   15ca0:	00f13c23          	sd	a5,24(sp)
   15ca4:	03113823          	sd	a7,48(sp)
   15ca8:	00050b13          	mv	s6,a0
   15cac:	00068b93          	mv	s7,a3
   15cb0:	00080413          	mv	s0,a6
   15cb4:	020e0263          	beqz	t3,15cd8 <_ldtoa_r+0x90>
   15cb8:	06852703          	lw	a4,104(a0)
   15cbc:	00100793          	li	a5,1
   15cc0:	000e0593          	mv	a1,t3
   15cc4:	00e797bb          	sllw	a5,a5,a4
   15cc8:	00ee2423          	sw	a4,8(t3)
   15ccc:	00fe2623          	sw	a5,12(t3)
   15cd0:	7f9010ef          	jal	ra,17cc8 <_Bfree>
   15cd4:	060b3023          	sd	zero,96(s6)
   15cd8:	08010593          	addi	a1,sp,128
   15cdc:	05010513          	addi	a0,sp,80
   15ce0:	e21ff0ef          	jal	ra,15b00 <e113toe.isra.8>
   15ce4:	08010513          	addi	a0,sp,128
   15ce8:	949fe0ef          	jal	ra,14630 <eisneg>
   15cec:	00a03533          	snez	a0,a0
   15cf0:	00a42023          	sw	a0,0(s0)
   15cf4:	00300793          	li	a5,3
   15cf8:	1cfb80e3          	beq	s7,a5,166b8 <_ldtoa_r+0xa70>
   15cfc:	01400793          	li	a5,20
   15d00:	00f13423          	sd	a5,8(sp)
   15d04:	620b9ee3          	bnez	s7,16b40 <_ldtoa_r+0xef8>
   15d08:	09215783          	lhu	a5,146(sp)
   15d0c:	1a412703          	lw	a4,420(sp)
   15d10:	fff7c793          	not	a5,a5
   15d14:	02e13423          	sd	a4,40(sp)
   15d18:	03179713          	slli	a4,a5,0x31
   15d1c:	00071863          	bnez	a4,15d2c <_ldtoa_r+0xe4>
   15d20:	08010513          	addi	a0,sp,128
   15d24:	89dfe0ef          	jal	ra,145c0 <eisnan.part.0>
   15d28:	460510e3          	bnez	a0,16988 <_ldtoa_r+0xd40>
   15d2c:	09000793          	li	a5,144
   15d30:	1af12223          	sw	a5,420(sp)
   15d34:	0a010713          	addi	a4,sp,160
   15d38:	08010793          	addi	a5,sp,128
   15d3c:	09410613          	addi	a2,sp,148
   15d40:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd77b2>
   15d44:	ffe7d683          	lhu	a3,-2(a5)
   15d48:	00270713          	addi	a4,a4,2
   15d4c:	fed71f23          	sh	a3,-2(a4)
   15d50:	fec798e3          	bne	a5,a2,15d40 <_ldtoa_r+0xf8>
   15d54:	0b215603          	lhu	a2,178(sp)
   15d58:	02013023          	sd	zero,32(sp)
   15d5c:	0106179b          	slliw	a5,a2,0x10
   15d60:	4107d79b          	sraiw	a5,a5,0x10
   15d64:	02079713          	slli	a4,a5,0x20
   15d68:	00075e63          	bgez	a4,15d84 <_ldtoa_r+0x13c>
   15d6c:	03161613          	slli	a2,a2,0x31
   15d70:	000107b7          	lui	a5,0x10
   15d74:	03165613          	srli	a2,a2,0x31
   15d78:	fff78793          	addi	a5,a5,-1 # ffff <register_fini-0xb1>
   15d7c:	0ac11923          	sh	a2,178(sp)
   15d80:	02f13023          	sd	a5,32(sp)
   15d84:	00000693          	li	a3,0
   15d88:	0c010793          	addi	a5,sp,192
   15d8c:	0000c717          	auipc	a4,0xc
   15d90:	e8c70713          	addi	a4,a4,-372 # 21c18 <eone>
   15d94:	0d410d93          	addi	s11,sp,212
   15d98:	0080006f          	j	15da0 <_ldtoa_r+0x158>
   15d9c:	00075683          	lhu	a3,0(a4)
   15da0:	00278793          	addi	a5,a5,2
   15da4:	fed79f23          	sh	a3,-2(a5)
   15da8:	00270713          	addi	a4,a4,2
   15dac:	ffb798e3          	bne	a5,s11,15d9c <_ldtoa_r+0x154>
   15db0:	16060663          	beqz	a2,15f1c <_ldtoa_r+0x2d4>
   15db4:	000087b7          	lui	a5,0x8
   15db8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15dbc:	5af60ee3          	beq	a2,a5,16b78 <_ldtoa_r+0xf30>
   15dc0:	0b011783          	lh	a5,176(sp)
   15dc4:	6407d0e3          	bgez	a5,16c04 <_ldtoa_r+0xfbc>
   15dc8:	0a010593          	addi	a1,sp,160
   15dcc:	0000c517          	auipc	a0,0xc
   15dd0:	e4c50513          	addi	a0,a0,-436 # 21c18 <eone>
   15dd4:	989fe0ef          	jal	ra,1475c <ecmp>
   15dd8:	14050e63          	beqz	a0,15f34 <_ldtoa_r+0x2ec>
   15ddc:	100548e3          	bltz	a0,166ec <_ldtoa_r+0xaa4>
   15de0:	0b215783          	lhu	a5,178(sp)
   15de4:	6a079ee3          	bnez	a5,16ca0 <_ldtoa_r+0x1058>
   15de8:	0b011783          	lh	a5,176(sp)
   15dec:	00000493          	li	s1,0
   15df0:	1a010993          	addi	s3,sp,416
   15df4:	0207c663          	bltz	a5,15e20 <_ldtoa_r+0x1d8>
   15df8:	0000c417          	auipc	s0,0xc
   15dfc:	f2840413          	addi	s0,s0,-216 # 21d20 <etens+0xf0>
   15e00:	0a010613          	addi	a2,sp,160
   15e04:	00098693          	mv	a3,s3
   15e08:	00060593          	mv	a1,a2
   15e0c:	00040513          	mv	a0,s0
   15e10:	be0ff0ef          	jal	ra,151f0 <emul>
   15e14:	0b011783          	lh	a5,176(sp)
   15e18:	fff4849b          	addiw	s1,s1,-1
   15e1c:	fe07d2e3          	bgez	a5,15e00 <_ldtoa_r+0x1b8>
   15e20:	10010413          	addi	s0,sp,256
   15e24:	11810a13          	addi	s4,sp,280
   15e28:	00040713          	mv	a4,s0
   15e2c:	0a010793          	addi	a5,sp,160
   15e30:	0b410613          	addi	a2,sp,180
   15e34:	00278793          	addi	a5,a5,2
   15e38:	ffe7d683          	lhu	a3,-2(a5)
   15e3c:	00270713          	addi	a4,a4,2
   15e40:	fed71f23          	sh	a3,-2(a4)
   15e44:	fec798e3          	bne	a5,a2,15e34 <_ldtoa_r+0x1ec>
   15e48:	00000693          	li	a3,0
   15e4c:	0c010793          	addi	a5,sp,192
   15e50:	0000c717          	auipc	a4,0xc
   15e54:	dc870713          	addi	a4,a4,-568 # 21c18 <eone>
   15e58:	0080006f          	j	15e60 <_ldtoa_r+0x218>
   15e5c:	00075683          	lhu	a3,0(a4)
   15e60:	00278793          	addi	a5,a5,2
   15e64:	fed79f23          	sh	a3,-2(a5)
   15e68:	00270713          	addi	a4,a4,2
   15e6c:	ffb798e3          	bne	a5,s11,15e5c <_ldtoa_r+0x214>
   15e70:	fffff937          	lui	s2,0xfffff
   15e74:	0000ca97          	auipc	s5,0xc
   15e78:	dbca8a93          	addi	s5,s5,-580 # 21c30 <etens>
   15e7c:	0000cc97          	auipc	s9,0xc
   15e80:	ebcc8c93          	addi	s9,s9,-324 # 21d38 <emtens>
   15e84:	0000cd17          	auipc	s10,0xc
   15e88:	d94d0d13          	addi	s10,s10,-620 # 21c18 <eone>
   15e8c:	0000cd97          	auipc	s11,0xc
   15e90:	e94d8d93          	addi	s11,s11,-364 # 21d20 <etens+0xf0>
   15e94:	00c0006f          	j	15ea0 <_ldtoa_r+0x258>
   15e98:	014c8c93          	addi	s9,s9,20
   15e9c:	014a8a93          	addi	s5,s5,20
   15ea0:	00040593          	mv	a1,s0
   15ea4:	000d0513          	mv	a0,s10
   15ea8:	8b5fe0ef          	jal	ra,1475c <ecmp>
   15eac:	00040593          	mv	a1,s0
   15eb0:	04a05663          	blez	a0,15efc <_ldtoa_r+0x2b4>
   15eb4:	000c8513          	mv	a0,s9
   15eb8:	8a5fe0ef          	jal	ra,1475c <ecmp>
   15ebc:	00098693          	mv	a3,s3
   15ec0:	00040613          	mv	a2,s0
   15ec4:	00040593          	mv	a1,s0
   15ec8:	02054263          	bltz	a0,15eec <_ldtoa_r+0x2a4>
   15ecc:	000a8513          	mv	a0,s5
   15ed0:	b20ff0ef          	jal	ra,151f0 <emul>
   15ed4:	0c010613          	addi	a2,sp,192
   15ed8:	00098693          	mv	a3,s3
   15edc:	00060593          	mv	a1,a2
   15ee0:	000a8513          	mv	a0,s5
   15ee4:	b0cff0ef          	jal	ra,151f0 <emul>
   15ee8:	009904bb          	addw	s1,s2,s1
   15eec:	01f9579b          	srliw	a5,s2,0x1f
   15ef0:	0127893b          	addw	s2,a5,s2
   15ef4:	4019591b          	sraiw	s2,s2,0x1
   15ef8:	fbba90e3          	bne	s5,s11,15e98 <_ldtoa_r+0x250>
   15efc:	0c010613          	addi	a2,sp,192
   15f00:	00098693          	mv	a3,s3
   15f04:	0000c597          	auipc	a1,0xc
   15f08:	d1458593          	addi	a1,a1,-748 # 21c18 <eone>
   15f0c:	00060513          	mv	a0,a2
   15f10:	ee8ff0ef          	jal	ra,155f8 <ediv>
   15f14:	16010913          	addi	s2,sp,352
   15f18:	0300006f          	j	15f48 <_ldtoa_r+0x300>
   15f1c:	0a010793          	addi	a5,sp,160
   15f20:	0b210693          	addi	a3,sp,178
   15f24:	0007d703          	lhu	a4,0(a5)
   15f28:	00278793          	addi	a5,a5,2
   15f2c:	e8071ee3          	bnez	a4,15dc8 <_ldtoa_r+0x180>
   15f30:	fef69ae3          	bne	a3,a5,15f24 <_ldtoa_r+0x2dc>
   15f34:	00000493          	li	s1,0
   15f38:	16010913          	addi	s2,sp,352
   15f3c:	1a010993          	addi	s3,sp,416
   15f40:	10010413          	addi	s0,sp,256
   15f44:	11810a13          	addi	s4,sp,280
   15f48:	00040593          	mv	a1,s0
   15f4c:	0c010513          	addi	a0,sp,192
   15f50:	f20fe0ef          	jal	ra,14670 <emovi>
   15f54:	0c010713          	addi	a4,sp,192
   15f58:	00040793          	mv	a5,s0
   15f5c:	00278793          	addi	a5,a5,2
   15f60:	ffe7d683          	lhu	a3,-2(a5)
   15f64:	00270713          	addi	a4,a4,2
   15f68:	fed71f23          	sh	a3,-2(a4)
   15f6c:	ff4798e3          	bne	a5,s4,15f5c <_ldtoa_r+0x314>
   15f70:	00040593          	mv	a1,s0
   15f74:	0a010513          	addi	a0,sp,160
   15f78:	0c011c23          	sh	zero,216(sp)
   15f7c:	ef4fe0ef          	jal	ra,14670 <emovi>
   15f80:	0a010793          	addi	a5,sp,160
   15f84:	00240413          	addi	s0,s0,2
   15f88:	ffe45703          	lhu	a4,-2(s0)
   15f8c:	00278793          	addi	a5,a5,2
   15f90:	fee79f23          	sh	a4,-2(a5)
   15f94:	ff4418e3          	bne	s0,s4,15f84 <_ldtoa_r+0x33c>
   15f98:	00098613          	mv	a2,s3
   15f9c:	0a010593          	addi	a1,sp,160
   15fa0:	0c010513          	addi	a0,sp,192
   15fa4:	0a011c23          	sh	zero,184(sp)
   15fa8:	834ff0ef          	jal	ra,14fdc <eiremain>
   15fac:	1ec15c83          	lhu	s9,492(sp)
   15fb0:	1e0c9063          	bnez	s9,16190 <_ldtoa_r+0x548>
   15fb4:	0000ca97          	auipc	s5,0xc
   15fb8:	c4ca8a93          	addi	s5,s5,-948 # 21c00 <ezero>
   15fbc:	0b810d93          	addi	s11,sp,184
   15fc0:	0a210413          	addi	s0,sp,162
   15fc4:	0e210d13          	addi	s10,sp,226
   15fc8:	000a8593          	mv	a1,s5
   15fcc:	0a010513          	addi	a0,sp,160
   15fd0:	f8cfe0ef          	jal	ra,1475c <ecmp>
   15fd4:	1a050e63          	beqz	a0,16190 <_ldtoa_r+0x548>
   15fd8:	00000713          	li	a4,0
   15fdc:	000d8693          	mv	a3,s11
   15fe0:	01c0006f          	j	15ffc <_ldtoa_r+0x3b4>
   15fe4:	0017171b          	slliw	a4,a4,0x1
   15fe8:	00f69023          	sh	a5,0(a3)
   15fec:	03071713          	slli	a4,a4,0x30
   15ff0:	ffe68693          	addi	a3,a3,-2
   15ff4:	03075713          	srli	a4,a4,0x30
   15ff8:	04868663          	beq	a3,s0,16044 <_ldtoa_r+0x3fc>
   15ffc:	0006d783          	lhu	a5,0(a3)
   16000:	0107961b          	slliw	a2,a5,0x10
   16004:	4106561b          	sraiw	a2,a2,0x10
   16008:	02061593          	slli	a1,a2,0x20
   1600c:	0017979b          	slliw	a5,a5,0x1
   16010:	0005d463          	bgez	a1,16018 <_ldtoa_r+0x3d0>
   16014:	00176713          	ori	a4,a4,1
   16018:	03079793          	slli	a5,a5,0x30
   1601c:	0307d793          	srli	a5,a5,0x30
   16020:	00277613          	andi	a2,a4,2
   16024:	0017e593          	ori	a1,a5,1
   16028:	fa060ee3          	beqz	a2,15fe4 <_ldtoa_r+0x39c>
   1602c:	0017171b          	slliw	a4,a4,0x1
   16030:	00b69023          	sh	a1,0(a3)
   16034:	03071713          	slli	a4,a4,0x30
   16038:	ffe68693          	addi	a3,a3,-2
   1603c:	03075713          	srli	a4,a4,0x30
   16040:	fa869ee3          	bne	a3,s0,15ffc <_ldtoa_r+0x3b4>
   16044:	0e010713          	addi	a4,sp,224
   16048:	0a010793          	addi	a5,sp,160
   1604c:	00278793          	addi	a5,a5,2
   16050:	ffe7d683          	lhu	a3,-2(a5)
   16054:	00270713          	addi	a4,a4,2
   16058:	fed71f23          	sh	a3,-2(a4)
   1605c:	ffb798e3          	bne	a5,s11,1604c <_ldtoa_r+0x404>
   16060:	0e011c23          	sh	zero,248(sp)
   16064:	00000713          	li	a4,0
   16068:	0f810693          	addi	a3,sp,248
   1606c:	01c0006f          	j	16088 <_ldtoa_r+0x440>
   16070:	0017171b          	slliw	a4,a4,0x1
   16074:	00f69023          	sh	a5,0(a3)
   16078:	03071713          	slli	a4,a4,0x30
   1607c:	ffe68693          	addi	a3,a3,-2
   16080:	03075713          	srli	a4,a4,0x30
   16084:	05a68663          	beq	a3,s10,160d0 <_ldtoa_r+0x488>
   16088:	0006d783          	lhu	a5,0(a3)
   1608c:	0107961b          	slliw	a2,a5,0x10
   16090:	4106561b          	sraiw	a2,a2,0x10
   16094:	02061593          	slli	a1,a2,0x20
   16098:	0017979b          	slliw	a5,a5,0x1
   1609c:	0005d463          	bgez	a1,160a4 <_ldtoa_r+0x45c>
   160a0:	00176713          	ori	a4,a4,1
   160a4:	03079793          	slli	a5,a5,0x30
   160a8:	0307d793          	srli	a5,a5,0x30
   160ac:	00277613          	andi	a2,a4,2
   160b0:	0017e593          	ori	a1,a5,1
   160b4:	fa060ee3          	beqz	a2,16070 <_ldtoa_r+0x428>
   160b8:	0017171b          	slliw	a4,a4,0x1
   160bc:	00b69023          	sh	a1,0(a3)
   160c0:	03071713          	slli	a4,a4,0x30
   160c4:	ffe68693          	addi	a3,a3,-2
   160c8:	03075713          	srli	a4,a4,0x30
   160cc:	fba69ee3          	bne	a3,s10,16088 <_ldtoa_r+0x440>
   160d0:	00000713          	li	a4,0
   160d4:	0f810693          	addi	a3,sp,248
   160d8:	01c0006f          	j	160f4 <_ldtoa_r+0x4ac>
   160dc:	0017171b          	slliw	a4,a4,0x1
   160e0:	00f69023          	sh	a5,0(a3)
   160e4:	03071713          	slli	a4,a4,0x30
   160e8:	ffe68693          	addi	a3,a3,-2
   160ec:	03075713          	srli	a4,a4,0x30
   160f0:	05a68663          	beq	a3,s10,1613c <_ldtoa_r+0x4f4>
   160f4:	0006d783          	lhu	a5,0(a3)
   160f8:	0107961b          	slliw	a2,a5,0x10
   160fc:	4106561b          	sraiw	a2,a2,0x10
   16100:	02061593          	slli	a1,a2,0x20
   16104:	0017979b          	slliw	a5,a5,0x1
   16108:	0005d463          	bgez	a1,16110 <_ldtoa_r+0x4c8>
   1610c:	00176713          	ori	a4,a4,1
   16110:	03079793          	slli	a5,a5,0x30
   16114:	0307d793          	srli	a5,a5,0x30
   16118:	00277613          	andi	a2,a4,2
   1611c:	0017e593          	ori	a1,a5,1
   16120:	fa060ee3          	beqz	a2,160dc <_ldtoa_r+0x494>
   16124:	0017171b          	slliw	a4,a4,0x1
   16128:	00b69023          	sh	a1,0(a3)
   1612c:	03071713          	slli	a4,a4,0x30
   16130:	ffe68693          	addi	a3,a3,-2
   16134:	03075713          	srli	a4,a4,0x30
   16138:	fba69ee3          	bne	a3,s10,160f4 <_ldtoa_r+0x4ac>
   1613c:	00000613          	li	a2,0
   16140:	000d8693          	mv	a3,s11
   16144:	0f810713          	addi	a4,sp,248
   16148:	0006d583          	lhu	a1,0(a3)
   1614c:	00075783          	lhu	a5,0(a4)
   16150:	ffe68693          	addi	a3,a3,-2
   16154:	ffe70713          	addi	a4,a4,-2
   16158:	00b787b3          	add	a5,a5,a1
   1615c:	00c787b3          	add	a5,a5,a2
   16160:	00f69123          	sh	a5,2(a3)
   16164:	0107d793          	srli	a5,a5,0x10
   16168:	0017f613          	andi	a2,a5,1
   1616c:	fda71ee3          	bne	a4,s10,16148 <_ldtoa_r+0x500>
   16170:	00098613          	mv	a2,s3
   16174:	0a010593          	addi	a1,sp,160
   16178:	0c010513          	addi	a0,sp,192
   1617c:	e61fe0ef          	jal	ra,14fdc <eiremain>
   16180:	1ec15783          	lhu	a5,492(sp)
   16184:	fff4849b          	addiw	s1,s1,-1
   16188:	e40780e3          	beqz	a5,15fc8 <_ldtoa_r+0x380>
   1618c:	00078c93          	mv	s9,a5
   16190:	02013703          	ld	a4,32(sp)
   16194:	02d00793          	li	a5,45
   16198:	00071463          	bnez	a4,161a0 <_ldtoa_r+0x558>
   1619c:	02000793          	li	a5,32
   161a0:	16f10023          	sb	a5,352(sp)
   161a4:	00300793          	li	a5,3
   161a8:	00813403          	ld	s0,8(sp)
   161ac:	02fb8463          	beq	s7,a5,161d4 <_ldtoa_r+0x58c>
   161b0:	00a00793          	li	a5,10
   161b4:	20fc8ae3          	beq	s9,a5,16bc8 <_ldtoa_r+0xf80>
   161b8:	030c8c9b          	addiw	s9,s9,48
   161bc:	02e00793          	li	a5,46
   161c0:	179100a3          	sb	s9,353(sp)
   161c4:	16f10123          	sb	a5,354(sp)
   161c8:	7a044863          	bltz	s0,16978 <_ldtoa_r+0xd30>
   161cc:	16310c93          	addi	s9,sp,355
   161d0:	0300006f          	j	16200 <_ldtoa_r+0x5b8>
   161d4:	0094043b          	addw	s0,s0,s1
   161d8:	02a00793          	li	a5,42
   161dc:	fc87dae3          	bge	a5,s0,161b0 <_ldtoa_r+0x568>
   161e0:	00a00793          	li	a5,10
   161e4:	1afc8ee3          	beq	s9,a5,16ba0 <_ldtoa_r+0xf58>
   161e8:	030c8c9b          	addiw	s9,s9,48
   161ec:	02e00793          	li	a5,46
   161f0:	179100a3          	sb	s9,353(sp)
   161f4:	16f10123          	sb	a5,354(sp)
   161f8:	02a00413          	li	s0,42
   161fc:	16310c93          	addi	s9,sp,355
   16200:	00000c13          	li	s8,0
   16204:	0e010a93          	addi	s5,sp,224
   16208:	0b810d93          	addi	s11,sp,184
   1620c:	0a210a13          	addi	s4,sp,162
   16210:	0e210d13          	addi	s10,sp,226
   16214:	00000713          	li	a4,0
   16218:	000d8693          	mv	a3,s11
   1621c:	01c0006f          	j	16238 <_ldtoa_r+0x5f0>
   16220:	0017171b          	slliw	a4,a4,0x1
   16224:	00f69023          	sh	a5,0(a3)
   16228:	03071713          	slli	a4,a4,0x30
   1622c:	ffe68693          	addi	a3,a3,-2
   16230:	03075713          	srli	a4,a4,0x30
   16234:	05468663          	beq	a3,s4,16280 <_ldtoa_r+0x638>
   16238:	0006d783          	lhu	a5,0(a3)
   1623c:	0107961b          	slliw	a2,a5,0x10
   16240:	4106561b          	sraiw	a2,a2,0x10
   16244:	02061593          	slli	a1,a2,0x20
   16248:	0017979b          	slliw	a5,a5,0x1
   1624c:	0005d463          	bgez	a1,16254 <_ldtoa_r+0x60c>
   16250:	00176713          	ori	a4,a4,1
   16254:	03079793          	slli	a5,a5,0x30
   16258:	0307d793          	srli	a5,a5,0x30
   1625c:	00277613          	andi	a2,a4,2
   16260:	0017e593          	ori	a1,a5,1
   16264:	fa060ee3          	beqz	a2,16220 <_ldtoa_r+0x5d8>
   16268:	0017171b          	slliw	a4,a4,0x1
   1626c:	00b69023          	sh	a1,0(a3)
   16270:	03071713          	slli	a4,a4,0x30
   16274:	ffe68693          	addi	a3,a3,-2
   16278:	03075713          	srli	a4,a4,0x30
   1627c:	fb469ee3          	bne	a3,s4,16238 <_ldtoa_r+0x5f0>
   16280:	000a8713          	mv	a4,s5
   16284:	0a010793          	addi	a5,sp,160
   16288:	00278793          	addi	a5,a5,2
   1628c:	ffe7d683          	lhu	a3,-2(a5)
   16290:	00270713          	addi	a4,a4,2
   16294:	fed71f23          	sh	a3,-2(a4)
   16298:	ffb798e3          	bne	a5,s11,16288 <_ldtoa_r+0x640>
   1629c:	0e011c23          	sh	zero,248(sp)
   162a0:	00000713          	li	a4,0
   162a4:	0f810693          	addi	a3,sp,248
   162a8:	01c0006f          	j	162c4 <_ldtoa_r+0x67c>
   162ac:	0017171b          	slliw	a4,a4,0x1
   162b0:	00f69023          	sh	a5,0(a3)
   162b4:	03071713          	slli	a4,a4,0x30
   162b8:	ffe68693          	addi	a3,a3,-2
   162bc:	03075713          	srli	a4,a4,0x30
   162c0:	05a68663          	beq	a3,s10,1630c <_ldtoa_r+0x6c4>
   162c4:	0006d783          	lhu	a5,0(a3)
   162c8:	0107961b          	slliw	a2,a5,0x10
   162cc:	4106561b          	sraiw	a2,a2,0x10
   162d0:	02061593          	slli	a1,a2,0x20
   162d4:	0017979b          	slliw	a5,a5,0x1
   162d8:	0005d463          	bgez	a1,162e0 <_ldtoa_r+0x698>
   162dc:	00176713          	ori	a4,a4,1
   162e0:	03079793          	slli	a5,a5,0x30
   162e4:	0307d793          	srli	a5,a5,0x30
   162e8:	00277613          	andi	a2,a4,2
   162ec:	0017e593          	ori	a1,a5,1
   162f0:	fa060ee3          	beqz	a2,162ac <_ldtoa_r+0x664>
   162f4:	0017171b          	slliw	a4,a4,0x1
   162f8:	00b69023          	sh	a1,0(a3)
   162fc:	03071713          	slli	a4,a4,0x30
   16300:	ffe68693          	addi	a3,a3,-2
   16304:	03075713          	srli	a4,a4,0x30
   16308:	fba69ee3          	bne	a3,s10,162c4 <_ldtoa_r+0x67c>
   1630c:	00000713          	li	a4,0
   16310:	0f810693          	addi	a3,sp,248
   16314:	01c0006f          	j	16330 <_ldtoa_r+0x6e8>
   16318:	0017171b          	slliw	a4,a4,0x1
   1631c:	00f69023          	sh	a5,0(a3)
   16320:	03071713          	slli	a4,a4,0x30
   16324:	ffe68693          	addi	a3,a3,-2
   16328:	03075713          	srli	a4,a4,0x30
   1632c:	05a68663          	beq	a3,s10,16378 <_ldtoa_r+0x730>
   16330:	0006d783          	lhu	a5,0(a3)
   16334:	0107961b          	slliw	a2,a5,0x10
   16338:	4106561b          	sraiw	a2,a2,0x10
   1633c:	02061593          	slli	a1,a2,0x20
   16340:	0017979b          	slliw	a5,a5,0x1
   16344:	0005d463          	bgez	a1,1634c <_ldtoa_r+0x704>
   16348:	00176713          	ori	a4,a4,1
   1634c:	03079793          	slli	a5,a5,0x30
   16350:	0307d793          	srli	a5,a5,0x30
   16354:	00277613          	andi	a2,a4,2
   16358:	0017e593          	ori	a1,a5,1
   1635c:	fa060ee3          	beqz	a2,16318 <_ldtoa_r+0x6d0>
   16360:	0017171b          	slliw	a4,a4,0x1
   16364:	00b69023          	sh	a1,0(a3)
   16368:	03071713          	slli	a4,a4,0x30
   1636c:	ffe68693          	addi	a3,a3,-2
   16370:	03075713          	srli	a4,a4,0x30
   16374:	fba69ee3          	bne	a3,s10,16330 <_ldtoa_r+0x6e8>
   16378:	00000613          	li	a2,0
   1637c:	000d8693          	mv	a3,s11
   16380:	0f810713          	addi	a4,sp,248
   16384:	0006d583          	lhu	a1,0(a3)
   16388:	00075783          	lhu	a5,0(a4)
   1638c:	ffe68693          	addi	a3,a3,-2
   16390:	ffe70713          	addi	a4,a4,-2
   16394:	00b787b3          	add	a5,a5,a1
   16398:	00c787b3          	add	a5,a5,a2
   1639c:	00f69123          	sh	a5,2(a3)
   163a0:	0107d793          	srli	a5,a5,0x10
   163a4:	0017f613          	andi	a2,a5,1
   163a8:	fda71ee3          	bne	a4,s10,16384 <_ldtoa_r+0x73c>
   163ac:	00098613          	mv	a2,s3
   163b0:	0a010593          	addi	a1,sp,160
   163b4:	0c010513          	addi	a0,sp,192
   163b8:	c25fe0ef          	jal	ra,14fdc <eiremain>
   163bc:	1ec15783          	lhu	a5,492(sp)
   163c0:	018c8733          	add	a4,s9,s8
   163c4:	001c0c13          	addi	s8,s8,1
   163c8:	0307869b          	addiw	a3,a5,48
   163cc:	00d70023          	sb	a3,0(a4)
   163d0:	000c071b          	sext.w	a4,s8
   163d4:	e4e450e3          	bge	s0,a4,16214 <_ldtoa_r+0x5cc>
   163d8:	00140993          	addi	s3,s0,1
   163dc:	013c89b3          	add	s3,s9,s3
   163e0:	008c8cb3          	add	s9,s9,s0
   163e4:	00400713          	li	a4,4
   163e8:	08f75063          	bge	a4,a5,16468 <_ldtoa_r+0x820>
   163ec:	00500713          	li	a4,5
   163f0:	02e78ae3          	beq	a5,a4,16c24 <_ldtoa_r+0xfdc>
   163f4:	ffe9c783          	lbu	a5,-2(s3)
   163f8:	ffe98713          	addi	a4,s3,-2
   163fc:	07f7f793          	andi	a5,a5,127
   16400:	0007881b          	sext.w	a6,a5
   16404:	7e044863          	bltz	s0,16bf4 <_ldtoa_r+0xfac>
   16408:	02e00693          	li	a3,46
   1640c:	04d78263          	beq	a5,a3,16450 <_ldtoa_r+0x808>
   16410:	0017879b          	addiw	a5,a5,1
   16414:	00f70023          	sb	a5,0(a4)
   16418:	03800793          	li	a5,56
   1641c:	03000593          	li	a1,48
   16420:	02e00613          	li	a2,46
   16424:	03800513          	li	a0,56
   16428:	0107c863          	blt	a5,a6,16438 <_ldtoa_r+0x7f0>
   1642c:	03c0006f          	j	16468 <_ldtoa_r+0x820>
   16430:	00d70023          	sb	a3,0(a4)
   16434:	02f57a63          	bgeu	a0,a5,16468 <_ldtoa_r+0x820>
   16438:	00b70023          	sb	a1,0(a4)
   1643c:	fff70713          	addi	a4,a4,-1
   16440:	00074783          	lbu	a5,0(a4)
   16444:	07f7f793          	andi	a5,a5,127
   16448:	0017869b          	addiw	a3,a5,1
   1644c:	fec792e3          	bne	a5,a2,16430 <_ldtoa_r+0x7e8>
   16450:	fff74783          	lbu	a5,-1(a4)
   16454:	03800693          	li	a3,56
   16458:	02f6fee3          	bgeu	a3,a5,16c94 <_ldtoa_r+0x104c>
   1645c:	03100793          	li	a5,49
   16460:	0014849b          	addiw	s1,s1,1
   16464:	fef70fa3          	sb	a5,-1(a4)
   16468:	00048613          	mv	a2,s1
   1646c:	0000c597          	auipc	a1,0xc
   16470:	a2c58593          	addi	a1,a1,-1492 # 21e98 <bmask+0x58>
   16474:	000c8513          	mv	a0,s9
   16478:	29d020ef          	jal	ra,18f14 <sprintf>
   1647c:	09215783          	lhu	a5,146(sp)
   16480:	02813703          	ld	a4,40(sp)
   16484:	1a912823          	sw	s1,432(sp)
   16488:	fff7c793          	not	a5,a5
   1648c:	1ae12223          	sw	a4,420(sp)
   16490:	03179713          	slli	a4,a5,0x31
   16494:	00071e63          	bnez	a4,164b0 <_ldtoa_r+0x868>
   16498:	08010513          	addi	a0,sp,128
   1649c:	bdcfe0ef          	jal	ra,14878 <eisinf.part.1>
   164a0:	22051c63          	bnez	a0,166d8 <_ldtoa_r+0xa90>
   164a4:	08010513          	addi	a0,sp,128
   164a8:	918fe0ef          	jal	ra,145c0 <eisnan.part.0>
   164ac:	22051663          	bnez	a0,166d8 <_ldtoa_r+0xa90>
   164b0:	01813683          	ld	a3,24(sp)
   164b4:	16014783          	lbu	a5,352(sp)
   164b8:	0014871b          	addiw	a4,s1,1
   164bc:	00e6a023          	sw	a4,0(a3)
   164c0:	0e078ce3          	beqz	a5,16db8 <_ldtoa_r+0x1170>
   164c4:	02e00713          	li	a4,46
   164c8:	06e78063          	beq	a5,a4,16528 <_ldtoa_r+0x8e0>
   164cc:	00090793          	mv	a5,s2
   164d0:	02e00693          	li	a3,46
   164d4:	0080006f          	j	164dc <_ldtoa_r+0x894>
   164d8:	04d70a63          	beq	a4,a3,1652c <_ldtoa_r+0x8e4>
   164dc:	00178793          	addi	a5,a5,1
   164e0:	0007c703          	lbu	a4,0(a5)
   164e4:	fe071ae3          	bnez	a4,164d8 <_ldtoa_r+0x890>
   164e8:	04500693          	li	a3,69
   164ec:	00f96663          	bltu	s2,a5,164f8 <_ldtoa_r+0x8b0>
   164f0:	0140006f          	j	16504 <_ldtoa_r+0x8bc>
   164f4:	01278863          	beq	a5,s2,16504 <_ldtoa_r+0x8bc>
   164f8:	fff78793          	addi	a5,a5,-1
   164fc:	0007c703          	lbu	a4,0(a5)
   16500:	fed71ae3          	bne	a4,a3,164f4 <_ldtoa_r+0x8ac>
   16504:	00078023          	sb	zero,0(a5)
   16508:	00090793          	mv	a5,s2
   1650c:	02000693          	li	a3,32
   16510:	02d00613          	li	a2,45
   16514:	0007c703          	lbu	a4,0(a5)
   16518:	00d70463          	beq	a4,a3,16520 <_ldtoa_r+0x8d8>
   1651c:	02c71a63          	bne	a4,a2,16550 <_ldtoa_r+0x908>
   16520:	00178793          	addi	a5,a5,1
   16524:	ff1ff06f          	j	16514 <_ldtoa_r+0x8cc>
   16528:	00090793          	mv	a5,s2
   1652c:	0017c703          	lbu	a4,1(a5)
   16530:	00178793          	addi	a5,a5,1
   16534:	fee78fa3          	sb	a4,-1(a5)
   16538:	fa0708e3          	beqz	a4,164e8 <_ldtoa_r+0x8a0>
   1653c:	0017c703          	lbu	a4,1(a5)
   16540:	00178793          	addi	a5,a5,1
   16544:	fee78fa3          	sb	a4,-1(a5)
   16548:	fe0712e3          	bnez	a4,1652c <_ldtoa_r+0x8e4>
   1654c:	f9dff06f          	j	164e8 <_ldtoa_r+0x8a0>
   16550:	00090413          	mv	s0,s2
   16554:	00c0006f          	j	16560 <_ldtoa_r+0x918>
   16558:	0007c703          	lbu	a4,0(a5)
   1655c:	00068413          	mv	s0,a3
   16560:	00e40023          	sb	a4,0(s0)
   16564:	00140693          	addi	a3,s0,1
   16568:	00178793          	addi	a5,a5,1
   1656c:	fe0716e3          	bnez	a4,16558 <_ldtoa_r+0x910>
   16570:	00200793          	li	a5,2
   16574:	fff44703          	lbu	a4,-1(s0)
   16578:	12fb8463          	beq	s7,a5,166a0 <_ldtoa_r+0xa58>
   1657c:	00813783          	ld	a5,8(sp)
   16580:	0007869b          	sext.w	a3,a5
   16584:	0097d463          	bge	a5,s1,1658c <_ldtoa_r+0x944>
   16588:	0004869b          	sext.w	a3,s1
   1658c:	03000793          	li	a5,48
   16590:	02f71663          	bne	a4,a5,165bc <_ldtoa_r+0x974>
   16594:	412407b3          	sub	a5,s0,s2
   16598:	02f6d263          	bge	a3,a5,165bc <_ldtoa_r+0x974>
   1659c:	03000613          	li	a2,48
   165a0:	0080006f          	j	165a8 <_ldtoa_r+0x960>
   165a4:	00e6dc63          	bge	a3,a4,165bc <_ldtoa_r+0x974>
   165a8:	fff40413          	addi	s0,s0,-1
   165ac:	fff44783          	lbu	a5,-1(s0)
   165b0:	00040023          	sb	zero,0(s0)
   165b4:	41240733          	sub	a4,s0,s2
   165b8:	fec786e3          	beq	a5,a2,165a4 <_ldtoa_r+0x95c>
   165bc:	00300793          	li	a5,3
   165c0:	0afb8263          	beq	s7,a5,16664 <_ldtoa_r+0xa1c>
   165c4:	01013783          	ld	a5,16(sp)
   165c8:	060b2423          	sw	zero,104(s6)
   165cc:	00978a1b          	addiw	s4,a5,9
   165d0:	01f00793          	li	a5,31
   165d4:	0d47f263          	bgeu	a5,s4,16698 <_ldtoa_r+0xa50>
   165d8:	00100713          	li	a4,1
   165dc:	00400793          	li	a5,4
   165e0:	0017979b          	slliw	a5,a5,0x1
   165e4:	01c78693          	addi	a3,a5,28
   165e8:	0007059b          	sext.w	a1,a4
   165ec:	0017071b          	addiw	a4,a4,1
   165f0:	feda78e3          	bgeu	s4,a3,165e0 <_ldtoa_r+0x998>
   165f4:	06bb2423          	sw	a1,104(s6)
   165f8:	000b0513          	mv	a0,s6
   165fc:	624010ef          	jal	ra,17c20 <_Balloc>
   16600:	06ab3023          	sd	a0,96(s6)
   16604:	00090593          	mv	a1,s2
   16608:	00050493          	mv	s1,a0
   1660c:	40d020ef          	jal	ra,19218 <strcpy>
   16610:	03013783          	ld	a5,48(sp)
   16614:	00078863          	beqz	a5,16624 <_ldtoa_r+0x9dc>
   16618:	41240433          	sub	s0,s0,s2
   1661c:	00848433          	add	s0,s1,s0
   16620:	0087b023          	sd	s0,0(a5)
   16624:	25813083          	ld	ra,600(sp)
   16628:	25013403          	ld	s0,592(sp)
   1662c:	00048513          	mv	a0,s1
   16630:	24013903          	ld	s2,576(sp)
   16634:	24813483          	ld	s1,584(sp)
   16638:	23813983          	ld	s3,568(sp)
   1663c:	23013a03          	ld	s4,560(sp)
   16640:	22813a83          	ld	s5,552(sp)
   16644:	22013b03          	ld	s6,544(sp)
   16648:	21813b83          	ld	s7,536(sp)
   1664c:	21013c03          	ld	s8,528(sp)
   16650:	20813c83          	ld	s9,520(sp)
   16654:	20013d03          	ld	s10,512(sp)
   16658:	1f813d83          	ld	s11,504(sp)
   1665c:	26010113          	addi	sp,sp,608
   16660:	00008067          	ret
   16664:	00813783          	ld	a5,8(sp)
   16668:	009784bb          	addw	s1,a5,s1
   1666c:	4e04c063          	bltz	s1,16b4c <_ldtoa_r+0xf04>
   16670:	01813783          	ld	a5,24(sp)
   16674:	01013703          	ld	a4,16(sp)
   16678:	0007a783          	lw	a5,0(a5)
   1667c:	00e787bb          	addw	a5,a5,a4
   16680:	00f13823          	sd	a5,16(sp)
   16684:	01013783          	ld	a5,16(sp)
   16688:	060b2423          	sw	zero,104(s6)
   1668c:	00378a1b          	addiw	s4,a5,3
   16690:	01f00793          	li	a5,31
   16694:	f547e2e3          	bltu	a5,s4,165d8 <_ldtoa_r+0x990>
   16698:	00000593          	li	a1,0
   1669c:	f5dff06f          	j	165f8 <_ldtoa_r+0x9b0>
   166a0:	03000793          	li	a5,48
   166a4:	f2f710e3          	bne	a4,a5,165c4 <_ldtoa_r+0x97c>
   166a8:	412407b3          	sub	a5,s0,s2
   166ac:	00100693          	li	a3,1
   166b0:	eef6c6e3          	blt	a3,a5,1659c <_ldtoa_r+0x954>
   166b4:	f11ff06f          	j	165c4 <_ldtoa_r+0x97c>
   166b8:	01013783          	ld	a5,16(sp)
   166bc:	02a00713          	li	a4,42
   166c0:	00078c13          	mv	s8,a5
   166c4:	00f75463          	bge	a4,a5,166cc <_ldtoa_r+0xa84>
   166c8:	02a00c13          	li	s8,42
   166cc:	000c079b          	sext.w	a5,s8
   166d0:	00f13423          	sd	a5,8(sp)
   166d4:	e34ff06f          	j	15d08 <_ldtoa_r+0xc0>
   166d8:	01813703          	ld	a4,24(sp)
   166dc:	000027b7          	lui	a5,0x2
   166e0:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   166e4:	00f72023          	sw	a5,0(a4)
   166e8:	e21ff06f          	j	16508 <_ldtoa_r+0x8c0>
   166ec:	0e010a93          	addi	s5,sp,224
   166f0:	000a8713          	mv	a4,s5
   166f4:	0a010793          	addi	a5,sp,160
   166f8:	0b410613          	addi	a2,sp,180
   166fc:	00278793          	addi	a5,a5,2
   16700:	ffe7d683          	lhu	a3,-2(a5)
   16704:	00270713          	addi	a4,a4,2
   16708:	fed71f23          	sh	a3,-2(a4)
   1670c:	fec798e3          	bne	a5,a2,166fc <_ldtoa_r+0xab4>
   16710:	000047b7          	lui	a5,0x4
   16714:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   16718:	0ef11923          	sh	a5,242(sp)
   1671c:	000087b7          	lui	a5,0x8
   16720:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   16724:	02f13c23          	sd	a5,56(sp)
   16728:	ffffc7b7          	lui	a5,0xffffc
   1672c:	0027879b          	addiw	a5,a5,2
   16730:	01000d13          	li	s10,16
   16734:	00000493          	li	s1,0
   16738:	0000bc17          	auipc	s8,0xb
   1673c:	598c0c13          	addi	s8,s8,1432 # 21cd0 <etens+0xa0>
   16740:	16010913          	addi	s2,sp,352
   16744:	1a010993          	addi	s3,sp,416
   16748:	10010413          	addi	s0,sp,256
   1674c:	0d210a13          	addi	s4,sp,210
   16750:	04f12223          	sw	a5,68(sp)
   16754:	07a10c93          	addi	s9,sp,122
   16758:	00098693          	mv	a3,s3
   1675c:	0c010613          	addi	a2,sp,192
   16760:	000a8593          	mv	a1,s5
   16764:	000c0513          	mv	a0,s8
   16768:	e91fe0ef          	jal	ra,155f8 <ediv>
   1676c:	06810713          	addi	a4,sp,104
   16770:	0c010793          	addi	a5,sp,192
   16774:	00278793          	addi	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd77b2>
   16778:	ffe7d683          	lhu	a3,-2(a5)
   1677c:	00270713          	addi	a4,a4,2
   16780:	fed71f23          	sh	a3,-2(a4)
   16784:	ffb798e3          	bne	a5,s11,16774 <_ldtoa_r+0xb2c>
   16788:	03813783          	ld	a5,56(sp)
   1678c:	07a15503          	lhu	a0,122(sp)
   16790:	00f57833          	and	a6,a0,a5
   16794:	04412783          	lw	a5,68(sp)
   16798:	00f807bb          	addw	a5,a6,a5
   1679c:	00078893          	mv	a7,a5
   167a0:	3cf05063          	blez	a5,16b60 <_ldtoa_r+0xf18>
   167a4:	09000593          	li	a1,144
   167a8:	40f5883b          	subw	a6,a1,a5
   167ac:	00080593          	mv	a1,a6
   167b0:	00040713          	mv	a4,s0
   167b4:	06810793          	addi	a5,sp,104
   167b8:	07c10613          	addi	a2,sp,124
   167bc:	00278793          	addi	a5,a5,2
   167c0:	ffe7d683          	lhu	a3,-2(a5)
   167c4:	00270713          	addi	a4,a4,2
   167c8:	fed71f23          	sh	a3,-2(a4)
   167cc:	fec798e3          	bne	a5,a2,167bc <_ldtoa_r+0xb74>
   167d0:	07005e63          	blez	a6,1684c <_ldtoa_r+0xc04>
   167d4:	00f00793          	li	a5,15
   167d8:	00040713          	mv	a4,s0
   167dc:	0507d063          	bge	a5,a6,1681c <_ldtoa_r+0xbd4>
   167e0:	ff05859b          	addiw	a1,a1,-16
   167e4:	0045d59b          	srliw	a1,a1,0x4
   167e8:	02059713          	slli	a4,a1,0x20
   167ec:	02075713          	srli	a4,a4,0x20
   167f0:	00170713          	addi	a4,a4,1
   167f4:	00171713          	slli	a4,a4,0x1
   167f8:	00e40733          	add	a4,s0,a4
   167fc:	00040793          	mv	a5,s0
   16800:	00278793          	addi	a5,a5,2
   16804:	fe079f23          	sh	zero,-2(a5)
   16808:	fee79ce3          	bne	a5,a4,16800 <_ldtoa_r+0xbb8>
   1680c:	08000813          	li	a6,128
   16810:	4118083b          	subw	a6,a6,a7
   16814:	0045959b          	slliw	a1,a1,0x4
   16818:	40b8083b          	subw	a6,a6,a1
   1681c:	00181593          	slli	a1,a6,0x1
   16820:	0000b817          	auipc	a6,0xb
   16824:	3e080813          	addi	a6,a6,992 # 21c00 <ezero>
   16828:	00b805b3          	add	a1,a6,a1
   1682c:	00075783          	lhu	a5,0(a4)
   16830:	2405d683          	lhu	a3,576(a1)
   16834:	00d7f7b3          	and	a5,a5,a3
   16838:	00f71023          	sh	a5,0(a4)
   1683c:	0105151b          	slliw	a0,a0,0x10
   16840:	4105551b          	sraiw	a0,a0,0x10
   16844:	02051793          	slli	a5,a0,0x20
   16848:	1607c063          	bltz	a5,169a8 <_ldtoa_r+0xd60>
   1684c:	0c010793          	addi	a5,sp,192
   16850:	00040713          	mv	a4,s0
   16854:	0007d603          	lhu	a2,0(a5)
   16858:	00075683          	lhu	a3,0(a4)
   1685c:	00278793          	addi	a5,a5,2
   16860:	00270713          	addi	a4,a4,2
   16864:	02d61463          	bne	a2,a3,1688c <_ldtoa_r+0xc44>
   16868:	fefa16e3          	bne	s4,a5,16854 <_ldtoa_r+0xc0c>
   1686c:	000a8713          	mv	a4,s5
   16870:	0c010793          	addi	a5,sp,192
   16874:	00278793          	addi	a5,a5,2
   16878:	ffe7d683          	lhu	a3,-2(a5)
   1687c:	00270713          	addi	a4,a4,2
   16880:	fed71f23          	sh	a3,-2(a4)
   16884:	ffb798e3          	bne	a5,s11,16874 <_ldtoa_r+0xc2c>
   16888:	009d04bb          	addw	s1,s10,s1
   1688c:	014c0c13          	addi	s8,s8,20
   16890:	0000b797          	auipc	a5,0xb
   16894:	4a478793          	addi	a5,a5,1188 # 21d34 <etens+0x104>
   16898:	001d5d13          	srli	s10,s10,0x1
   1689c:	eafc1ee3          	bne	s8,a5,16758 <_ldtoa_r+0xb10>
   168a0:	0f215783          	lhu	a5,242(sp)
   168a4:	0b215703          	lhu	a4,178(sp)
   168a8:	0f410613          	addi	a2,sp,244
   168ac:	00e787bb          	addw	a5,a5,a4
   168b0:	ffffc737          	lui	a4,0xffffc
   168b4:	f727071b          	addiw	a4,a4,-142
   168b8:	00e787bb          	addw	a5,a5,a4
   168bc:	0ef11923          	sh	a5,242(sp)
   168c0:	0a010713          	addi	a4,sp,160
   168c4:	000a8793          	mv	a5,s5
   168c8:	00278793          	addi	a5,a5,2
   168cc:	ffe7d683          	lhu	a3,-2(a5)
   168d0:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd77b2>
   168d4:	fed71f23          	sh	a3,-2(a4)
   168d8:	fec798e3          	bne	a5,a2,168c8 <_ldtoa_r+0xc80>
   168dc:	00000693          	li	a3,0
   168e0:	0c010793          	addi	a5,sp,192
   168e4:	0000b717          	auipc	a4,0xb
   168e8:	33470713          	addi	a4,a4,820 # 21c18 <eone>
   168ec:	0080006f          	j	168f4 <_ldtoa_r+0xcac>
   168f0:	00075683          	lhu	a3,0(a4)
   168f4:	00278793          	addi	a5,a5,2
   168f8:	fed79f23          	sh	a3,-2(a5)
   168fc:	00270713          	addi	a4,a4,2
   16900:	ffb798e3          	bne	a5,s11,168f0 <_ldtoa_r+0xca8>
   16904:	00001d37          	lui	s10,0x1
   16908:	0000bc97          	auipc	s9,0xb
   1690c:	328c8c93          	addi	s9,s9,808 # 21c30 <etens>
   16910:	0000bd97          	auipc	s11,0xb
   16914:	410d8d93          	addi	s11,s11,1040 # 21d20 <etens+0xf0>
   16918:	0100006f          	j	16928 <_ldtoa_r+0xce0>
   1691c:	001d5d13          	srli	s10,s10,0x1
   16920:	2dbc8663          	beq	s9,s11,16bec <_ldtoa_r+0xfa4>
   16924:	014c8c93          	addi	s9,s9,20
   16928:	000a8593          	mv	a1,s5
   1692c:	000d8513          	mv	a0,s11
   16930:	e2dfd0ef          	jal	ra,1475c <ecmp>
   16934:	000a8593          	mv	a1,s5
   16938:	2aa04a63          	bgtz	a0,16bec <_ldtoa_r+0xfa4>
   1693c:	000c8513          	mv	a0,s9
   16940:	e1dfd0ef          	jal	ra,1475c <ecmp>
   16944:	fca04ce3          	bgtz	a0,1691c <_ldtoa_r+0xcd4>
   16948:	00098693          	mv	a3,s3
   1694c:	000a8613          	mv	a2,s5
   16950:	000a8593          	mv	a1,s5
   16954:	000c8513          	mv	a0,s9
   16958:	ca1fe0ef          	jal	ra,155f8 <ediv>
   1695c:	0c010613          	addi	a2,sp,192
   16960:	00098693          	mv	a3,s3
   16964:	00060593          	mv	a1,a2
   16968:	000c8513          	mv	a0,s9
   1696c:	885fe0ef          	jal	ra,151f0 <emul>
   16970:	009d04bb          	addw	s1,s10,s1
   16974:	fa9ff06f          	j	1691c <_ldtoa_r+0xcd4>
   16978:	1ec15783          	lhu	a5,492(sp)
   1697c:	16210c93          	addi	s9,sp,354
   16980:	16310993          	addi	s3,sp,355
   16984:	a61ff06f          	j	163e4 <_ldtoa_r+0x79c>
   16988:	16010913          	addi	s2,sp,352
   1698c:	0000b597          	auipc	a1,0xb
   16990:	4dc58593          	addi	a1,a1,1244 # 21e68 <bmask+0x28>
   16994:	00090513          	mv	a0,s2
   16998:	000024b7          	lui	s1,0x2
   1699c:	578020ef          	jal	ra,18f14 <sprintf>
   169a0:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   169a4:	ad9ff06f          	j	1647c <_ldtoa_r+0x834>
   169a8:	06810793          	addi	a5,sp,104
   169ac:	00040713          	mv	a4,s0
   169b0:	0080006f          	j	169b8 <_ldtoa_r+0xd70>
   169b4:	e8fc8ce3          	beq	s9,a5,1684c <_ldtoa_r+0xc04>
   169b8:	0007d603          	lhu	a2,0(a5)
   169bc:	00075683          	lhu	a3,0(a4)
   169c0:	00278793          	addi	a5,a5,2
   169c4:	00270713          	addi	a4,a4,2
   169c8:	fed606e3          	beq	a2,a3,169b4 <_ldtoa_r+0xd6c>
   169cc:	11215783          	lhu	a5,274(sp)
   169d0:	03813703          	ld	a4,56(sp)
   169d4:	00f777b3          	and	a5,a4,a5
   169d8:	00e79e63          	bne	a5,a4,169f4 <_ldtoa_r+0xdac>
   169dc:	00040513          	mv	a0,s0
   169e0:	be1fd0ef          	jal	ra,145c0 <eisnan.part.0>
   169e4:	e60514e3          	bnez	a0,1684c <_ldtoa_r+0xc04>
   169e8:	00040513          	mv	a0,s0
   169ec:	e8dfd0ef          	jal	ra,14878 <eisinf.part.1>
   169f0:	e4051ee3          	bnez	a0,1684c <_ldtoa_r+0xc04>
   169f4:	12010593          	addi	a1,sp,288
   169f8:	0000b517          	auipc	a0,0xb
   169fc:	22050513          	addi	a0,a0,544 # 21c18 <eone>
   16a00:	c71fd0ef          	jal	ra,14670 <emovi>
   16a04:	14010593          	addi	a1,sp,320
   16a08:	00040513          	mv	a0,s0
   16a0c:	c65fd0ef          	jal	ra,14670 <emovi>
   16a10:	12015503          	lhu	a0,288(sp)
   16a14:	14215803          	lhu	a6,322(sp)
   16a18:	12215883          	lhu	a7,290(sp)
   16a1c:	fff54513          	not	a0,a0
   16a20:	03051513          	slli	a0,a0,0x30
   16a24:	03055513          	srli	a0,a0,0x30
   16a28:	12a11023          	sh	a0,288(sp)
   16a2c:	410885b3          	sub	a1,a7,a6
   16a30:	00080693          	mv	a3,a6
   16a34:	06b05e63          	blez	a1,16ab0 <_ldtoa_r+0xe68>
   16a38:	00090713          	mv	a4,s2
   16a3c:	14010793          	addi	a5,sp,320
   16a40:	15810613          	addi	a2,sp,344
   16a44:	00278793          	addi	a5,a5,2
   16a48:	ffe7d683          	lhu	a3,-2(a5)
   16a4c:	00270713          	addi	a4,a4,2
   16a50:	fed71f23          	sh	a3,-2(a4)
   16a54:	fec798e3          	bne	a5,a2,16a44 <_ldtoa_r+0xdfc>
   16a58:	16011c23          	sh	zero,376(sp)
   16a5c:	14010793          	addi	a5,sp,320
   16a60:	12010713          	addi	a4,sp,288
   16a64:	0080006f          	j	16a6c <_ldtoa_r+0xe24>
   16a68:	00075503          	lhu	a0,0(a4)
   16a6c:	00278793          	addi	a5,a5,2
   16a70:	fea79f23          	sh	a0,-2(a5)
   16a74:	00270713          	addi	a4,a4,2
   16a78:	fec798e3          	bne	a5,a2,16a68 <_ldtoa_r+0xe20>
   16a7c:	14011c23          	sh	zero,344(sp)
   16a80:	12010713          	addi	a4,sp,288
   16a84:	00090793          	mv	a5,s2
   16a88:	17810593          	addi	a1,sp,376
   16a8c:	00278793          	addi	a5,a5,2
   16a90:	ffe7d683          	lhu	a3,-2(a5)
   16a94:	00270713          	addi	a4,a4,2
   16a98:	fed71f23          	sh	a3,-2(a4)
   16a9c:	feb798e3          	bne	a5,a1,16a8c <_ldtoa_r+0xe44>
   16aa0:	14215683          	lhu	a3,322(sp)
   16aa4:	411805b3          	sub	a1,a6,a7
   16aa8:	12011c23          	sh	zero,312(sp)
   16aac:	00068813          	mv	a6,a3
   16ab0:	30058c63          	beqz	a1,16dc8 <_ldtoa_r+0x1180>
   16ab4:	04d13423          	sd	a3,72(sp)
   16ab8:	f6f00793          	li	a5,-145
   16abc:	06f5ca63          	blt	a1,a5,16b30 <_ldtoa_r+0xee8>
   16ac0:	0005859b          	sext.w	a1,a1
   16ac4:	12010513          	addi	a0,sp,288
   16ac8:	dcdfd0ef          	jal	ra,14894 <eshift.part.3>
   16acc:	04813683          	ld	a3,72(sp)
   16ad0:	00050593          	mv	a1,a0
   16ad4:	15810613          	addi	a2,sp,344
   16ad8:	13810813          	addi	a6,sp,312
   16adc:	12015703          	lhu	a4,288(sp)
   16ae0:	14015783          	lhu	a5,320(sp)
   16ae4:	34f70063          	beq	a4,a5,16e24 <_ldtoa_r+0x11dc>
   16ae8:	00000793          	li	a5,0
   16aec:	00078713          	mv	a4,a5
   16af0:	00065783          	lhu	a5,0(a2) # 8000 <register_fini-0x80b0>
   16af4:	00085503          	lhu	a0,0(a6)
   16af8:	ffe60613          	addi	a2,a2,-2
   16afc:	40e787b3          	sub	a5,a5,a4
   16b00:	40a787b3          	sub	a5,a5,a0
   16b04:	00f61123          	sh	a5,2(a2)
   16b08:	0107d793          	srli	a5,a5,0x10
   16b0c:	0017f713          	andi	a4,a5,1
   16b10:	14210793          	addi	a5,sp,322
   16b14:	ffe80813          	addi	a6,a6,-2
   16b18:	fcf61ce3          	bne	a2,a5,16af0 <_ldtoa_r+0xea8>
   16b1c:	00100613          	li	a2,1
   16b20:	00098793          	mv	a5,s3
   16b24:	04000713          	li	a4,64
   16b28:	14010513          	addi	a0,sp,320
   16b2c:	898fe0ef          	jal	ra,14bc4 <emdnorm>
   16b30:	00040593          	mv	a1,s0
   16b34:	14010513          	addi	a0,sp,320
   16b38:	e08fe0ef          	jal	ra,15140 <emovo.isra.6>
   16b3c:	d11ff06f          	j	1684c <_ldtoa_r+0xc04>
   16b40:	01013783          	ld	a5,16(sp)
   16b44:	fff7879b          	addiw	a5,a5,-1
   16b48:	b75ff06f          	j	166bc <_ldtoa_r+0xa74>
   16b4c:	01813783          	ld	a5,24(sp)
   16b50:	16010023          	sb	zero,352(sp)
   16b54:	00090413          	mv	s0,s2
   16b58:	0007a023          	sw	zero,0(a5)
   16b5c:	b29ff06f          	j	16684 <_ldtoa_r+0xa3c>
   16b60:	00040793          	mv	a5,s0
   16b64:	11410713          	addi	a4,sp,276
   16b68:	00278793          	addi	a5,a5,2
   16b6c:	fe079f23          	sh	zero,-2(a5)
   16b70:	fee79ce3          	bne	a5,a4,16b68 <_ldtoa_r+0xf20>
   16b74:	cc9ff06f          	j	1683c <_ldtoa_r+0xbf4>
   16b78:	02013783          	ld	a5,32(sp)
   16b7c:	16010913          	addi	s2,sp,352
   16b80:	0e078c63          	beqz	a5,16c78 <_ldtoa_r+0x1030>
   16b84:	0000b597          	auipc	a1,0xb
   16b88:	2ec58593          	addi	a1,a1,748 # 21e70 <bmask+0x30>
   16b8c:	00090513          	mv	a0,s2
   16b90:	000024b7          	lui	s1,0x2
   16b94:	380020ef          	jal	ra,18f14 <sprintf>
   16b98:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16b9c:	8e1ff06f          	j	1647c <_ldtoa_r+0x834>
   16ba0:	03100793          	li	a5,49
   16ba4:	16f100a3          	sb	a5,353(sp)
   16ba8:	02e00793          	li	a5,46
   16bac:	16f10123          	sb	a5,354(sp)
   16bb0:	0014849b          	addiw	s1,s1,1
   16bb4:	02900413          	li	s0,41
   16bb8:	03000793          	li	a5,48
   16bbc:	16f101a3          	sb	a5,355(sp)
   16bc0:	16410c93          	addi	s9,sp,356
   16bc4:	e3cff06f          	j	16200 <_ldtoa_r+0x5b8>
   16bc8:	03100793          	li	a5,49
   16bcc:	16f100a3          	sb	a5,353(sp)
   16bd0:	02e00793          	li	a5,46
   16bd4:	16f10123          	sb	a5,354(sp)
   16bd8:	0014849b          	addiw	s1,s1,1
   16bdc:	1e804263          	bgtz	s0,16dc0 <_ldtoa_r+0x1178>
   16be0:	16310c93          	addi	s9,sp,355
   16be4:	880412e3          	bnez	s0,16468 <_ldtoa_r+0x820>
   16be8:	e18ff06f          	j	16200 <_ldtoa_r+0x5b8>
   16bec:	11810a13          	addi	s4,sp,280
   16bf0:	b58ff06f          	j	15f48 <_ldtoa_r+0x300>
   16bf4:	03100793          	li	a5,49
   16bf8:	fef98f23          	sb	a5,-2(s3)
   16bfc:	0014849b          	addiw	s1,s1,1
   16c00:	869ff06f          	j	16468 <_ldtoa_r+0x820>
   16c04:	16010913          	addi	s2,sp,352
   16c08:	0000b597          	auipc	a1,0xb
   16c0c:	28858593          	addi	a1,a1,648 # 21e90 <bmask+0x50>
   16c10:	00090513          	mv	a0,s2
   16c14:	000024b7          	lui	s1,0x2
   16c18:	2fc020ef          	jal	ra,18f14 <sprintf>
   16c1c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16c20:	85dff06f          	j	1647c <_ldtoa_r+0x834>
   16c24:	0c010593          	addi	a1,sp,192
   16c28:	0a010513          	addi	a0,sp,160
   16c2c:	d14fe0ef          	jal	ra,15140 <emovo.isra.6>
   16c30:	0000b597          	auipc	a1,0xb
   16c34:	fd058593          	addi	a1,a1,-48 # 21c00 <ezero>
   16c38:	0c010513          	addi	a0,sp,192
   16c3c:	b21fd0ef          	jal	ra,1475c <ecmp>
   16c40:	fa051a63          	bnez	a0,163f4 <_ldtoa_r+0x7ac>
   16c44:	820442e3          	bltz	s0,16468 <_ldtoa_r+0x820>
   16c48:	ffe9c783          	lbu	a5,-2(s3)
   16c4c:	fd278713          	addi	a4,a5,-46
   16c50:	00173713          	seqz	a4,a4
   16c54:	fff74713          	not	a4,a4
   16c58:	00ec8733          	add	a4,s9,a4
   16c5c:	00074703          	lbu	a4,0(a4)
   16c60:	00177713          	andi	a4,a4,1
   16c64:	800702e3          	beqz	a4,16468 <_ldtoa_r+0x820>
   16c68:	07f7f793          	andi	a5,a5,127
   16c6c:	ffe98713          	addi	a4,s3,-2
   16c70:	0007881b          	sext.w	a6,a5
   16c74:	f94ff06f          	j	16408 <_ldtoa_r+0x7c0>
   16c78:	0000b597          	auipc	a1,0xb
   16c7c:	20858593          	addi	a1,a1,520 # 21e80 <bmask+0x40>
   16c80:	00090513          	mv	a0,s2
   16c84:	000024b7          	lui	s1,0x2
   16c88:	28c020ef          	jal	ra,18f14 <sprintf>
   16c8c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16c90:	fecff06f          	j	1647c <_ldtoa_r+0x834>
   16c94:	0017879b          	addiw	a5,a5,1
   16c98:	fef70fa3          	sb	a5,-1(a4)
   16c9c:	fccff06f          	j	16468 <_ldtoa_r+0x820>
   16ca0:	10010413          	addi	s0,sp,256
   16ca4:	00040593          	mv	a1,s0
   16ca8:	0a010513          	addi	a0,sp,160
   16cac:	00004ab7          	lui	s5,0x4
   16cb0:	9c1fd0ef          	jal	ra,14670 <emovi>
   16cb4:	00000493          	li	s1,0
   16cb8:	11810a13          	addi	s4,sp,280
   16cbc:	0f810913          	addi	s2,sp,248
   16cc0:	10210993          	addi	s3,sp,258
   16cc4:	ffea8a93          	addi	s5,s5,-2 # 3ffe <register_fini-0xc0b2>
   16cc8:	fd500c93          	li	s9,-43
   16ccc:	11815783          	lhu	a5,280(sp)
   16cd0:	0077f793          	andi	a5,a5,7
   16cd4:	0c079863          	bnez	a5,16da4 <_ldtoa_r+0x115c>
   16cd8:	0e010713          	addi	a4,sp,224
   16cdc:	00040793          	mv	a5,s0
   16ce0:	00278793          	addi	a5,a5,2
   16ce4:	ffe7d683          	lhu	a3,-2(a5)
   16ce8:	00270713          	addi	a4,a4,2
   16cec:	fed71f23          	sh	a3,-2(a4)
   16cf0:	ff4798e3          	bne	a5,s4,16ce0 <_ldtoa_r+0x1098>
   16cf4:	0e010513          	addi	a0,sp,224
   16cf8:	0e011c23          	sh	zero,248(sp)
   16cfc:	f08fd0ef          	jal	ra,14404 <eshdn1>
   16d00:	0e010513          	addi	a0,sp,224
   16d04:	f00fd0ef          	jal	ra,14404 <eshdn1>
   16d08:	00000613          	li	a2,0
   16d0c:	00090693          	mv	a3,s2
   16d10:	000a0713          	mv	a4,s4
   16d14:	0006d583          	lhu	a1,0(a3)
   16d18:	00075783          	lhu	a5,0(a4)
   16d1c:	ffe68693          	addi	a3,a3,-2
   16d20:	ffe70713          	addi	a4,a4,-2
   16d24:	00b787b3          	add	a5,a5,a1
   16d28:	00c787b3          	add	a5,a5,a2
   16d2c:	00f69123          	sh	a5,2(a3)
   16d30:	0107d793          	srli	a5,a5,0x10
   16d34:	0017f613          	andi	a2,a5,1
   16d38:	fd371ee3          	bne	a4,s3,16d14 <_ldtoa_r+0x10cc>
   16d3c:	0e215783          	lhu	a5,226(sp)
   16d40:	0e415703          	lhu	a4,228(sp)
   16d44:	0037879b          	addiw	a5,a5,3
   16d48:	0ef11123          	sh	a5,226(sp)
   16d4c:	02070063          	beqz	a4,16d6c <_ldtoa_r+0x1124>
   16d50:	0e010513          	addi	a0,sp,224
   16d54:	eb0fd0ef          	jal	ra,14404 <eshdn1>
   16d58:	0e215783          	lhu	a5,226(sp)
   16d5c:	0e415703          	lhu	a4,228(sp)
   16d60:	0017879b          	addiw	a5,a5,1
   16d64:	0ef11123          	sh	a5,226(sp)
   16d68:	fe0714e3          	bnez	a4,16d50 <_ldtoa_r+0x1108>
   16d6c:	0f815783          	lhu	a5,248(sp)
   16d70:	02079a63          	bnez	a5,16da4 <_ldtoa_r+0x115c>
   16d74:	0e215783          	lhu	a5,226(sp)
   16d78:	02fae663          	bltu	s5,a5,16da4 <_ldtoa_r+0x115c>
   16d7c:	00040713          	mv	a4,s0
   16d80:	0e010793          	addi	a5,sp,224
   16d84:	00278793          	addi	a5,a5,2
   16d88:	ffe7d683          	lhu	a3,-2(a5)
   16d8c:	00270713          	addi	a4,a4,2
   16d90:	fed71f23          	sh	a3,-2(a4)
   16d94:	ff2798e3          	bne	a5,s2,16d84 <_ldtoa_r+0x113c>
   16d98:	10011c23          	sh	zero,280(sp)
   16d9c:	fff4849b          	addiw	s1,s1,-1
   16da0:	f39496e3          	bne	s1,s9,16ccc <_ldtoa_r+0x1084>
   16da4:	0a010593          	addi	a1,sp,160
   16da8:	00040513          	mv	a0,s0
   16dac:	b94fe0ef          	jal	ra,15140 <emovo.isra.6>
   16db0:	1a010993          	addi	s3,sp,416
   16db4:	874ff06f          	j	15e28 <_ldtoa_r+0x1e0>
   16db8:	00090793          	mv	a5,s2
   16dbc:	f48ff06f          	j	16504 <_ldtoa_r+0x8bc>
   16dc0:	fff4041b          	addiw	s0,s0,-1
   16dc4:	df5ff06f          	j	16bb8 <_ldtoa_r+0xf70>
   16dc8:	14410713          	addi	a4,sp,324
   16dcc:	12410793          	addi	a5,sp,292
   16dd0:	00278793          	addi	a5,a5,2
   16dd4:	00270713          	addi	a4,a4,2
   16dd8:	ffe7d583          	lhu	a1,-2(a5)
   16ddc:	ffe75603          	lhu	a2,-2(a4)
   16de0:	02c59863          	bne	a1,a2,16e10 <_ldtoa_r+0x11c8>
   16de4:	13a10613          	addi	a2,sp,314
   16de8:	fec794e3          	bne	a5,a2,16dd0 <_ldtoa_r+0x1188>
   16dec:	12015703          	lhu	a4,288(sp)
   16df0:	14015783          	lhu	a5,320(sp)
   16df4:	06f70663          	beq	a4,a5,16e60 <_ldtoa_r+0x1218>
   16df8:	00040793          	mv	a5,s0
   16dfc:	11410713          	addi	a4,sp,276
   16e00:	00278793          	addi	a5,a5,2
   16e04:	fe079f23          	sh	zero,-2(a5)
   16e08:	fee79ce3          	bne	a5,a4,16e00 <_ldtoa_r+0x11b8>
   16e0c:	a41ff06f          	j	1684c <_ldtoa_r+0xc04>
   16e10:	0cb66c63          	bltu	a2,a1,16ee8 <_ldtoa_r+0x12a0>
   16e14:	00000593          	li	a1,0
   16e18:	15810613          	addi	a2,sp,344
   16e1c:	13810813          	addi	a6,sp,312
   16e20:	cbdff06f          	j	16adc <_ldtoa_r+0xe94>
   16e24:	00000713          	li	a4,0
   16e28:	00080793          	mv	a5,a6
   16e2c:	12210893          	addi	a7,sp,290
   16e30:	00065803          	lhu	a6,0(a2)
   16e34:	0007d503          	lhu	a0,0(a5)
   16e38:	ffe60613          	addi	a2,a2,-2
   16e3c:	ffe78793          	addi	a5,a5,-2
   16e40:	01050533          	add	a0,a0,a6
   16e44:	00e50733          	add	a4,a0,a4
   16e48:	00e61123          	sh	a4,2(a2)
   16e4c:	01075713          	srli	a4,a4,0x10
   16e50:	00177713          	andi	a4,a4,1
   16e54:	fd179ee3          	bne	a5,a7,16e30 <_ldtoa_r+0x11e8>
   16e58:	00000613          	li	a2,0
   16e5c:	cc5ff06f          	j	16b20 <_ldtoa_r+0xed8>
   16e60:	00068793          	mv	a5,a3
   16e64:	06069463          	bnez	a3,16ecc <_ldtoa_r+0x1284>
   16e68:	14611703          	lh	a4,326(sp)
   16e6c:	06074063          	bltz	a4,16ecc <_ldtoa_r+0x1284>
   16e70:	15810693          	addi	a3,sp,344
   16e74:	0200006f          	j	16e94 <_ldtoa_r+0x124c>
   16e78:	00e69023          	sh	a4,0(a3)
   16e7c:	0017979b          	slliw	a5,a5,0x1
   16e80:	03079793          	slli	a5,a5,0x30
   16e84:	ffe68693          	addi	a3,a3,-2
   16e88:	14210713          	addi	a4,sp,322
   16e8c:	0307d793          	srli	a5,a5,0x30
   16e90:	cae680e3          	beq	a3,a4,16b30 <_ldtoa_r+0xee8>
   16e94:	0006d703          	lhu	a4,0(a3)
   16e98:	0107161b          	slliw	a2,a4,0x10
   16e9c:	4106561b          	sraiw	a2,a2,0x10
   16ea0:	02061593          	slli	a1,a2,0x20
   16ea4:	0017171b          	slliw	a4,a4,0x1
   16ea8:	0005d463          	bgez	a1,16eb0 <_ldtoa_r+0x1268>
   16eac:	0017e793          	ori	a5,a5,1
   16eb0:	03071713          	slli	a4,a4,0x30
   16eb4:	03075713          	srli	a4,a4,0x30
   16eb8:	0027f613          	andi	a2,a5,2
   16ebc:	00176593          	ori	a1,a4,1
   16ec0:	fa060ce3          	beqz	a2,16e78 <_ldtoa_r+0x1230>
   16ec4:	00b69023          	sh	a1,0(a3)
   16ec8:	fb5ff06f          	j	16e7c <_ldtoa_r+0x1234>
   16ecc:	14410713          	addi	a4,sp,324
   16ed0:	15810613          	addi	a2,sp,344
   16ed4:	08079463          	bnez	a5,16f5c <_ldtoa_r+0x1314>
   16ed8:	08e60463          	beq	a2,a4,16f60 <_ldtoa_r+0x1318>
   16edc:	00075783          	lhu	a5,0(a4)
   16ee0:	00270713          	addi	a4,a4,2
   16ee4:	ff1ff06f          	j	16ed4 <_ldtoa_r+0x128c>
   16ee8:	00090713          	mv	a4,s2
   16eec:	14010793          	addi	a5,sp,320
   16ef0:	15810613          	addi	a2,sp,344
   16ef4:	00278793          	addi	a5,a5,2
   16ef8:	ffe7d583          	lhu	a1,-2(a5)
   16efc:	00270713          	addi	a4,a4,2
   16f00:	feb71f23          	sh	a1,-2(a4)
   16f04:	fec798e3          	bne	a5,a2,16ef4 <_ldtoa_r+0x12ac>
   16f08:	16011c23          	sh	zero,376(sp)
   16f0c:	14010713          	addi	a4,sp,320
   16f10:	12010793          	addi	a5,sp,288
   16f14:	13810813          	addi	a6,sp,312
   16f18:	00278793          	addi	a5,a5,2
   16f1c:	ffe7d583          	lhu	a1,-2(a5)
   16f20:	00270713          	addi	a4,a4,2
   16f24:	feb71f23          	sh	a1,-2(a4)
   16f28:	ff0798e3          	bne	a5,a6,16f18 <_ldtoa_r+0x12d0>
   16f2c:	14011c23          	sh	zero,344(sp)
   16f30:	12010713          	addi	a4,sp,288
   16f34:	00090793          	mv	a5,s2
   16f38:	17810593          	addi	a1,sp,376
   16f3c:	00278793          	addi	a5,a5,2
   16f40:	ffe7d503          	lhu	a0,-2(a5)
   16f44:	00270713          	addi	a4,a4,2
   16f48:	fea71f23          	sh	a0,-2(a4)
   16f4c:	feb798e3          	bne	a5,a1,16f3c <_ldtoa_r+0x12f4>
   16f50:	12011c23          	sh	zero,312(sp)
   16f54:	00000593          	li	a1,0
   16f58:	b85ff06f          	j	16adc <_ldtoa_r+0xe94>
   16f5c:	00168813          	addi	a6,a3,1
   16f60:	15011123          	sh	a6,322(sp)
   16f64:	bcdff06f          	j	16b30 <_ldtoa_r+0xee8>

0000000000016f68 <_ldcheck>:
   16f68:	00053703          	ld	a4,0(a0)
   16f6c:	00853783          	ld	a5,8(a0)
   16f70:	fc010113          	addi	sp,sp,-64
   16f74:	00010513          	mv	a0,sp
   16f78:	01010593          	addi	a1,sp,16
   16f7c:	00e13023          	sd	a4,0(sp)
   16f80:	00f13423          	sd	a5,8(sp)
   16f84:	02113c23          	sd	ra,56(sp)
   16f88:	b79fe0ef          	jal	ra,15b00 <e113toe.isra.8>
   16f8c:	02215783          	lhu	a5,34(sp)
   16f90:	00000513          	li	a0,0
   16f94:	fff7c793          	not	a5,a5
   16f98:	03179713          	slli	a4,a5,0x31
   16f9c:	00071a63          	bnez	a4,16fb0 <_ldcheck+0x48>
   16fa0:	01010513          	addi	a0,sp,16
   16fa4:	e1cfd0ef          	jal	ra,145c0 <eisnan.part.0>
   16fa8:	00153513          	seqz	a0,a0
   16fac:	00150513          	addi	a0,a0,1
   16fb0:	03813083          	ld	ra,56(sp)
   16fb4:	04010113          	addi	sp,sp,64
   16fb8:	00008067          	ret

0000000000016fbc <__localeconv_l>:
   16fbc:	10050513          	addi	a0,a0,256
   16fc0:	00008067          	ret

0000000000016fc4 <_localeconv_r>:
   16fc4:	e6018513          	addi	a0,gp,-416 # 23eb0 <__global_locale+0x100>
   16fc8:	00008067          	ret

0000000000016fcc <localeconv>:
   16fcc:	e6018513          	addi	a0,gp,-416 # 23eb0 <__global_locale+0x100>
   16fd0:	00008067          	ret

0000000000016fd4 <_setlocale_r>:
   16fd4:	04060063          	beqz	a2,17014 <_setlocale_r+0x40>
   16fd8:	ff010113          	addi	sp,sp,-16
   16fdc:	0000b597          	auipc	a1,0xb
   16fe0:	ecc58593          	addi	a1,a1,-308 # 21ea8 <bmask+0x68>
   16fe4:	00060513          	mv	a0,a2
   16fe8:	00813023          	sd	s0,0(sp)
   16fec:	00113423          	sd	ra,8(sp)
   16ff0:	00060413          	mv	s0,a2
   16ff4:	0f8020ef          	jal	ra,190ec <strcmp>
   16ff8:	02051463          	bnez	a0,17020 <_setlocale_r+0x4c>
   16ffc:	0000b517          	auipc	a0,0xb
   17000:	ea450513          	addi	a0,a0,-348 # 21ea0 <bmask+0x60>
   17004:	00813083          	ld	ra,8(sp)
   17008:	00013403          	ld	s0,0(sp)
   1700c:	01010113          	addi	sp,sp,16
   17010:	00008067          	ret
   17014:	0000b517          	auipc	a0,0xb
   17018:	e8c50513          	addi	a0,a0,-372 # 21ea0 <bmask+0x60>
   1701c:	00008067          	ret
   17020:	0000b597          	auipc	a1,0xb
   17024:	e8058593          	addi	a1,a1,-384 # 21ea0 <bmask+0x60>
   17028:	00040513          	mv	a0,s0
   1702c:	0c0020ef          	jal	ra,190ec <strcmp>
   17030:	fc0506e3          	beqz	a0,16ffc <_setlocale_r+0x28>
   17034:	0000b597          	auipc	a1,0xb
   17038:	bb458593          	addi	a1,a1,-1100 # 21be8 <zeroes.4539+0x90>
   1703c:	00040513          	mv	a0,s0
   17040:	0ac020ef          	jal	ra,190ec <strcmp>
   17044:	fa050ce3          	beqz	a0,16ffc <_setlocale_r+0x28>
   17048:	00000513          	li	a0,0
   1704c:	fb9ff06f          	j	17004 <_setlocale_r+0x30>

0000000000017050 <__locale_mb_cur_max>:
   17050:	ec01c503          	lbu	a0,-320(gp) # 23f10 <__global_locale+0x160>
   17054:	00008067          	ret

0000000000017058 <setlocale>:
   17058:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1705c:	00058613          	mv	a2,a1
   17060:	00050593          	mv	a1,a0
   17064:	0007b503          	ld	a0,0(a5)
   17068:	f6dff06f          	j	16fd4 <_setlocale_r>

000000000001706c <__swhatbuf_r>:
   1706c:	f7010113          	addi	sp,sp,-144
   17070:	08813023          	sd	s0,128(sp)
   17074:	00058413          	mv	s0,a1
   17078:	01259583          	lh	a1,18(a1)
   1707c:	06913c23          	sd	s1,120(sp)
   17080:	07213823          	sd	s2,112(sp)
   17084:	08113423          	sd	ra,136(sp)
   17088:	00060493          	mv	s1,a2
   1708c:	00068913          	mv	s2,a3
   17090:	0405ca63          	bltz	a1,170e4 <__swhatbuf_r+0x78>
   17094:	00810613          	addi	a2,sp,8
   17098:	3e0060ef          	jal	ra,1d478 <_fstat_r>
   1709c:	04054463          	bltz	a0,170e4 <__swhatbuf_r+0x78>
   170a0:	00c12783          	lw	a5,12(sp)
   170a4:	0000f737          	lui	a4,0xf
   170a8:	08813083          	ld	ra,136(sp)
   170ac:	00e7f7b3          	and	a5,a5,a4
   170b0:	00002737          	lui	a4,0x2
   170b4:	40e787b3          	sub	a5,a5,a4
   170b8:	0017b793          	seqz	a5,a5
   170bc:	08013403          	ld	s0,128(sp)
   170c0:	00f92023          	sw	a5,0(s2) # fffffffffffff000 <__BSS_END__+0xfffffffffffda7b0>
   170c4:	40000793          	li	a5,1024
   170c8:	00f4b023          	sd	a5,0(s1)
   170cc:	00001537          	lui	a0,0x1
   170d0:	07813483          	ld	s1,120(sp)
   170d4:	07013903          	ld	s2,112(sp)
   170d8:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   170dc:	09010113          	addi	sp,sp,144
   170e0:	00008067          	ret
   170e4:	01045783          	lhu	a5,16(s0)
   170e8:	00092023          	sw	zero,0(s2)
   170ec:	0807f793          	andi	a5,a5,128
   170f0:	02078463          	beqz	a5,17118 <__swhatbuf_r+0xac>
   170f4:	08813083          	ld	ra,136(sp)
   170f8:	08013403          	ld	s0,128(sp)
   170fc:	04000793          	li	a5,64
   17100:	00f4b023          	sd	a5,0(s1)
   17104:	07013903          	ld	s2,112(sp)
   17108:	07813483          	ld	s1,120(sp)
   1710c:	00000513          	li	a0,0
   17110:	09010113          	addi	sp,sp,144
   17114:	00008067          	ret
   17118:	08813083          	ld	ra,136(sp)
   1711c:	08013403          	ld	s0,128(sp)
   17120:	40000793          	li	a5,1024
   17124:	00f4b023          	sd	a5,0(s1)
   17128:	07013903          	ld	s2,112(sp)
   1712c:	07813483          	ld	s1,120(sp)
   17130:	00000513          	li	a0,0
   17134:	09010113          	addi	sp,sp,144
   17138:	00008067          	ret

000000000001713c <__smakebuf_r>:
   1713c:	0105d703          	lhu	a4,16(a1)
   17140:	fd010113          	addi	sp,sp,-48
   17144:	02813023          	sd	s0,32(sp)
   17148:	02113423          	sd	ra,40(sp)
   1714c:	00913c23          	sd	s1,24(sp)
   17150:	01213823          	sd	s2,16(sp)
   17154:	00277713          	andi	a4,a4,2
   17158:	00058413          	mv	s0,a1
   1715c:	02070863          	beqz	a4,1718c <__smakebuf_r+0x50>
   17160:	07758713          	addi	a4,a1,119
   17164:	00e5b023          	sd	a4,0(a1)
   17168:	00e5bc23          	sd	a4,24(a1)
   1716c:	00100713          	li	a4,1
   17170:	02e5a023          	sw	a4,32(a1)
   17174:	02813083          	ld	ra,40(sp)
   17178:	02013403          	ld	s0,32(sp)
   1717c:	01813483          	ld	s1,24(sp)
   17180:	01013903          	ld	s2,16(sp)
   17184:	03010113          	addi	sp,sp,48
   17188:	00008067          	ret
   1718c:	00410693          	addi	a3,sp,4
   17190:	00810613          	addi	a2,sp,8
   17194:	00050493          	mv	s1,a0
   17198:	ed5ff0ef          	jal	ra,1706c <__swhatbuf_r>
   1719c:	00813583          	ld	a1,8(sp)
   171a0:	00050913          	mv	s2,a0
   171a4:	00048513          	mv	a0,s1
   171a8:	0b4000ef          	jal	ra,1725c <_malloc_r>
   171ac:	01041783          	lh	a5,16(s0)
   171b0:	04050863          	beqz	a0,17200 <__smakebuf_r+0xc4>
   171b4:	ffffd697          	auipc	a3,0xffffd
   171b8:	8b868693          	addi	a3,a3,-1864 # 13a6c <_cleanup_r>
   171bc:	04d4bc23          	sd	a3,88(s1)
   171c0:	00813683          	ld	a3,8(sp)
   171c4:	00412703          	lw	a4,4(sp)
   171c8:	0807e793          	ori	a5,a5,128
   171cc:	00f41823          	sh	a5,16(s0)
   171d0:	00a43023          	sd	a0,0(s0)
   171d4:	00a43c23          	sd	a0,24(s0)
   171d8:	02d42023          	sw	a3,32(s0)
   171dc:	04071863          	bnez	a4,1722c <__smakebuf_r+0xf0>
   171e0:	0127e7b3          	or	a5,a5,s2
   171e4:	00f41823          	sh	a5,16(s0)
   171e8:	02813083          	ld	ra,40(sp)
   171ec:	02013403          	ld	s0,32(sp)
   171f0:	01813483          	ld	s1,24(sp)
   171f4:	01013903          	ld	s2,16(sp)
   171f8:	03010113          	addi	sp,sp,48
   171fc:	00008067          	ret
   17200:	2007f713          	andi	a4,a5,512
   17204:	f60718e3          	bnez	a4,17174 <__smakebuf_r+0x38>
   17208:	ffc7f793          	andi	a5,a5,-4
   1720c:	0027e793          	ori	a5,a5,2
   17210:	07740713          	addi	a4,s0,119
   17214:	00f41823          	sh	a5,16(s0)
   17218:	00100793          	li	a5,1
   1721c:	00e43023          	sd	a4,0(s0)
   17220:	00e43c23          	sd	a4,24(s0)
   17224:	02f42023          	sw	a5,32(s0)
   17228:	f4dff06f          	j	17174 <__smakebuf_r+0x38>
   1722c:	01241583          	lh	a1,18(s0)
   17230:	00048513          	mv	a0,s1
   17234:	770060ef          	jal	ra,1d9a4 <_isatty_r>
   17238:	00051663          	bnez	a0,17244 <__smakebuf_r+0x108>
   1723c:	01041783          	lh	a5,16(s0)
   17240:	fa1ff06f          	j	171e0 <__smakebuf_r+0xa4>
   17244:	01045783          	lhu	a5,16(s0)
   17248:	ffc7f793          	andi	a5,a5,-4
   1724c:	0017e793          	ori	a5,a5,1
   17250:	0107979b          	slliw	a5,a5,0x10
   17254:	4107d79b          	sraiw	a5,a5,0x10
   17258:	f89ff06f          	j	171e0 <__smakebuf_r+0xa4>

000000000001725c <_malloc_r>:
   1725c:	fa010113          	addi	sp,sp,-96
   17260:	04913423          	sd	s1,72(sp)
   17264:	05213023          	sd	s2,64(sp)
   17268:	04113c23          	sd	ra,88(sp)
   1726c:	04813823          	sd	s0,80(sp)
   17270:	03313c23          	sd	s3,56(sp)
   17274:	03413823          	sd	s4,48(sp)
   17278:	03513423          	sd	s5,40(sp)
   1727c:	03613023          	sd	s6,32(sp)
   17280:	01713c23          	sd	s7,24(sp)
   17284:	01813823          	sd	s8,16(sp)
   17288:	01913423          	sd	s9,8(sp)
   1728c:	01758493          	addi	s1,a1,23
   17290:	02e00793          	li	a5,46
   17294:	00050913          	mv	s2,a0
   17298:	0a97e663          	bltu	a5,s1,17344 <_malloc_r+0xe8>
   1729c:	02000793          	li	a5,32
   172a0:	06b7e263          	bltu	a5,a1,17304 <_malloc_r+0xa8>
   172a4:	175000ef          	jal	ra,17c18 <__malloc_lock>
   172a8:	02000493          	li	s1,32
   172ac:	05000793          	li	a5,80
   172b0:	00400613          	li	a2,4
   172b4:	0000d997          	auipc	s3,0xd
   172b8:	ca498993          	addi	s3,s3,-860 # 23f58 <__malloc_av_>
   172bc:	00f987b3          	add	a5,s3,a5
   172c0:	0087b403          	ld	s0,8(a5)
   172c4:	ff078713          	addi	a4,a5,-16
   172c8:	2ae40063          	beq	s0,a4,17568 <_malloc_r+0x30c>
   172cc:	00843783          	ld	a5,8(s0)
   172d0:	01843683          	ld	a3,24(s0)
   172d4:	01043603          	ld	a2,16(s0)
   172d8:	ffc7f793          	andi	a5,a5,-4
   172dc:	00f407b3          	add	a5,s0,a5
   172e0:	0087b703          	ld	a4,8(a5)
   172e4:	00d63c23          	sd	a3,24(a2)
   172e8:	00c6b823          	sd	a2,16(a3)
   172ec:	00176713          	ori	a4,a4,1
   172f0:	00090513          	mv	a0,s2
   172f4:	00e7b423          	sd	a4,8(a5)
   172f8:	125000ef          	jal	ra,17c1c <__malloc_unlock>
   172fc:	01040513          	addi	a0,s0,16
   17300:	0100006f          	j	17310 <_malloc_r+0xb4>
   17304:	00c00793          	li	a5,12
   17308:	00f92023          	sw	a5,0(s2)
   1730c:	00000513          	li	a0,0
   17310:	05813083          	ld	ra,88(sp)
   17314:	05013403          	ld	s0,80(sp)
   17318:	04813483          	ld	s1,72(sp)
   1731c:	04013903          	ld	s2,64(sp)
   17320:	03813983          	ld	s3,56(sp)
   17324:	03013a03          	ld	s4,48(sp)
   17328:	02813a83          	ld	s5,40(sp)
   1732c:	02013b03          	ld	s6,32(sp)
   17330:	01813b83          	ld	s7,24(sp)
   17334:	01013c03          	ld	s8,16(sp)
   17338:	00813c83          	ld	s9,8(sp)
   1733c:	06010113          	addi	sp,sp,96
   17340:	00008067          	ret
   17344:	800007b7          	lui	a5,0x80000
   17348:	ff04f493          	andi	s1,s1,-16
   1734c:	fff7c793          	not	a5,a5
   17350:	fa97eae3          	bltu	a5,s1,17304 <_malloc_r+0xa8>
   17354:	fab4e8e3          	bltu	s1,a1,17304 <_malloc_r+0xa8>
   17358:	0c1000ef          	jal	ra,17c18 <__malloc_lock>
   1735c:	1f700793          	li	a5,503
   17360:	4c97f263          	bgeu	a5,s1,17824 <_malloc_r+0x5c8>
   17364:	0094d793          	srli	a5,s1,0x9
   17368:	36078863          	beqz	a5,176d8 <_malloc_r+0x47c>
   1736c:	00400713          	li	a4,4
   17370:	42f76c63          	bltu	a4,a5,177a8 <_malloc_r+0x54c>
   17374:	0064d513          	srli	a0,s1,0x6
   17378:	0005051b          	sext.w	a0,a0
   1737c:	0395061b          	addiw	a2,a0,57
   17380:	0016169b          	slliw	a3,a2,0x1
   17384:	0385051b          	addiw	a0,a0,56
   17388:	00369693          	slli	a3,a3,0x3
   1738c:	0000d997          	auipc	s3,0xd
   17390:	bcc98993          	addi	s3,s3,-1076 # 23f58 <__malloc_av_>
   17394:	00d986b3          	add	a3,s3,a3
   17398:	0086b403          	ld	s0,8(a3)
   1739c:	ff068693          	addi	a3,a3,-16
   173a0:	1c868a63          	beq	a3,s0,17574 <_malloc_r+0x318>
   173a4:	00843783          	ld	a5,8(s0)
   173a8:	01f00593          	li	a1,31
   173ac:	ffc7f793          	andi	a5,a5,-4
   173b0:	40978733          	sub	a4,a5,s1
   173b4:	02e5c063          	blt	a1,a4,173d4 <_malloc_r+0x178>
   173b8:	36075e63          	bgez	a4,17734 <_malloc_r+0x4d8>
   173bc:	01843403          	ld	s0,24(s0)
   173c0:	1a868a63          	beq	a3,s0,17574 <_malloc_r+0x318>
   173c4:	00843783          	ld	a5,8(s0)
   173c8:	ffc7f793          	andi	a5,a5,-4
   173cc:	40978733          	sub	a4,a5,s1
   173d0:	fee5d4e3          	bge	a1,a4,173b8 <_malloc_r+0x15c>
   173d4:	0209b403          	ld	s0,32(s3)
   173d8:	0000d817          	auipc	a6,0xd
   173dc:	b9080813          	addi	a6,a6,-1136 # 23f68 <__malloc_av_+0x10>
   173e0:	00050613          	mv	a2,a0
   173e4:	1b041063          	bne	s0,a6,17584 <_malloc_r+0x328>
   173e8:	0089b783          	ld	a5,8(s3)
   173ec:	4026571b          	sraiw	a4,a2,0x2
   173f0:	00100693          	li	a3,1
   173f4:	00e696b3          	sll	a3,a3,a4
   173f8:	20d7fc63          	bgeu	a5,a3,17610 <_malloc_r+0x3b4>
   173fc:	0109b403          	ld	s0,16(s3)
   17400:	00843a03          	ld	s4,8(s0)
   17404:	ffca7a93          	andi	s5,s4,-4
   17408:	009ae863          	bltu	s5,s1,17418 <_malloc_r+0x1bc>
   1740c:	409a87b3          	sub	a5,s5,s1
   17410:	01f00713          	li	a4,31
   17414:	2ef74a63          	blt	a4,a5,17708 <_malloc_r+0x4ac>
   17418:	78818793          	addi	a5,gp,1928 # 247d8 <__malloc_top_pad>
   1741c:	76018c13          	addi	s8,gp,1888 # 247b0 <__malloc_sbrk_base>
   17420:	0007ba03          	ld	s4,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb7b0>
   17424:	000c3703          	ld	a4,0(s8)
   17428:	fff00793          	li	a5,-1
   1742c:	01540bb3          	add	s7,s0,s5
   17430:	01448a33          	add	s4,s1,s4
   17434:	4cf70263          	beq	a4,a5,178f8 <_malloc_r+0x69c>
   17438:	000017b7          	lui	a5,0x1
   1743c:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   17440:	00fa0a33          	add	s4,s4,a5
   17444:	fffff7b7          	lui	a5,0xfffff
   17448:	00fa7a33          	and	s4,s4,a5
   1744c:	000a0593          	mv	a1,s4
   17450:	00090513          	mv	a0,s2
   17454:	135010ef          	jal	ra,18d88 <_sbrk_r>
   17458:	fff00793          	li	a5,-1
   1745c:	00050b13          	mv	s6,a0
   17460:	3ef50e63          	beq	a0,a5,1785c <_malloc_r+0x600>
   17464:	3f756a63          	bltu	a0,s7,17858 <_malloc_r+0x5fc>
   17468:	7d018c93          	addi	s9,gp,2000 # 24820 <__malloc_current_mallinfo>
   1746c:	000ca703          	lw	a4,0(s9)
   17470:	014707bb          	addw	a5,a4,s4
   17474:	7cf1a823          	sw	a5,2000(gp) # 24820 <__malloc_current_mallinfo>
   17478:	00078693          	mv	a3,a5
   1747c:	54ab8063          	beq	s7,a0,179bc <_malloc_r+0x760>
   17480:	000c3703          	ld	a4,0(s8)
   17484:	fff00793          	li	a5,-1
   17488:	54f70863          	beq	a4,a5,179d8 <_malloc_r+0x77c>
   1748c:	417b07b3          	sub	a5,s6,s7
   17490:	00d787bb          	addw	a5,a5,a3
   17494:	7cf1a823          	sw	a5,2000(gp) # 24820 <__malloc_current_mallinfo>
   17498:	00fb7b93          	andi	s7,s6,15
   1749c:	480b8263          	beqz	s7,17920 <_malloc_r+0x6c4>
   174a0:	417b0b33          	sub	s6,s6,s7
   174a4:	000017b7          	lui	a5,0x1
   174a8:	010b0b13          	addi	s6,s6,16
   174ac:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf0b1>
   174b0:	014b0c33          	add	s8,s6,s4
   174b4:	01078793          	addi	a5,a5,16
   174b8:	41778a33          	sub	s4,a5,s7
   174bc:	00ec77b3          	and	a5,s8,a4
   174c0:	40fa0a33          	sub	s4,s4,a5
   174c4:	00ea7a33          	and	s4,s4,a4
   174c8:	000a0593          	mv	a1,s4
   174cc:	00090513          	mv	a0,s2
   174d0:	0b9010ef          	jal	ra,18d88 <_sbrk_r>
   174d4:	fff00793          	li	a5,-1
   174d8:	56f50263          	beq	a0,a5,17a3c <_malloc_r+0x7e0>
   174dc:	41650533          	sub	a0,a0,s6
   174e0:	000a071b          	sext.w	a4,s4
   174e4:	01450a33          	add	s4,a0,s4
   174e8:	000ca783          	lw	a5,0(s9)
   174ec:	0000d697          	auipc	a3,0xd
   174f0:	a766be23          	sd	s6,-1412(a3) # 23f68 <__malloc_av_+0x10>
   174f4:	001a6a13          	ori	s4,s4,1
   174f8:	00e787bb          	addw	a5,a5,a4
   174fc:	7cf1a823          	sw	a5,2000(gp) # 24820 <__malloc_current_mallinfo>
   17500:	014b3423          	sd	s4,8(s6)
   17504:	4d340e63          	beq	s0,s3,179e0 <_malloc_r+0x784>
   17508:	01f00613          	li	a2,31
   1750c:	4d567e63          	bgeu	a2,s5,179e8 <_malloc_r+0x78c>
   17510:	00843683          	ld	a3,8(s0)
   17514:	fe8a8713          	addi	a4,s5,-24
   17518:	ff077713          	andi	a4,a4,-16
   1751c:	0016f693          	andi	a3,a3,1
   17520:	00e6e6b3          	or	a3,a3,a4
   17524:	00d43423          	sd	a3,8(s0)
   17528:	00900593          	li	a1,9
   1752c:	00e406b3          	add	a3,s0,a4
   17530:	00b6b423          	sd	a1,8(a3)
   17534:	00b6b823          	sd	a1,16(a3)
   17538:	50e66c63          	bltu	a2,a4,17a50 <_malloc_r+0x7f4>
   1753c:	008b3a03          	ld	s4,8(s6)
   17540:	000b0413          	mv	s0,s6
   17544:	78018713          	addi	a4,gp,1920 # 247d0 <__malloc_max_sbrked_mem>
   17548:	00073703          	ld	a4,0(a4) # 2000 <register_fini-0xe0b0>
   1754c:	00f77463          	bgeu	a4,a5,17554 <_malloc_r+0x2f8>
   17550:	78f1b023          	sd	a5,1920(gp) # 247d0 <__malloc_max_sbrked_mem>
   17554:	77818713          	addi	a4,gp,1912 # 247c8 <__malloc_max_total_mem>
   17558:	00073703          	ld	a4,0(a4)
   1755c:	30f77463          	bgeu	a4,a5,17864 <_malloc_r+0x608>
   17560:	76f1bc23          	sd	a5,1912(gp) # 247c8 <__malloc_max_total_mem>
   17564:	3000006f          	j	17864 <_malloc_r+0x608>
   17568:	0187b403          	ld	s0,24(a5)
   1756c:	0026061b          	addiw	a2,a2,2
   17570:	d4879ee3          	bne	a5,s0,172cc <_malloc_r+0x70>
   17574:	0209b403          	ld	s0,32(s3)
   17578:	0000d817          	auipc	a6,0xd
   1757c:	9f080813          	addi	a6,a6,-1552 # 23f68 <__malloc_av_+0x10>
   17580:	e70404e3          	beq	s0,a6,173e8 <_malloc_r+0x18c>
   17584:	00843783          	ld	a5,8(s0)
   17588:	01f00693          	li	a3,31
   1758c:	ffc7f793          	andi	a5,a5,-4
   17590:	40978733          	sub	a4,a5,s1
   17594:	28e6c263          	blt	a3,a4,17818 <_malloc_r+0x5bc>
   17598:	0000d697          	auipc	a3,0xd
   1759c:	9f06b423          	sd	a6,-1560(a3) # 23f80 <__malloc_av_+0x28>
   175a0:	0000d697          	auipc	a3,0xd
   175a4:	9d06bc23          	sd	a6,-1576(a3) # 23f78 <__malloc_av_+0x20>
   175a8:	14075063          	bgez	a4,176e8 <_malloc_r+0x48c>
   175ac:	1ff00713          	li	a4,511
   175b0:	18f76863          	bltu	a4,a5,17740 <_malloc_r+0x4e4>
   175b4:	0037d793          	srli	a5,a5,0x3
   175b8:	0007879b          	sext.w	a5,a5
   175bc:	0017871b          	addiw	a4,a5,1
   175c0:	0017171b          	slliw	a4,a4,0x1
   175c4:	00371713          	slli	a4,a4,0x3
   175c8:	0089b503          	ld	a0,8(s3)
   175cc:	00e98733          	add	a4,s3,a4
   175d0:	00073583          	ld	a1,0(a4)
   175d4:	4027d69b          	sraiw	a3,a5,0x2
   175d8:	00100793          	li	a5,1
   175dc:	00d797b3          	sll	a5,a5,a3
   175e0:	00a7e7b3          	or	a5,a5,a0
   175e4:	ff070693          	addi	a3,a4,-16
   175e8:	00d43c23          	sd	a3,24(s0)
   175ec:	00b43823          	sd	a1,16(s0)
   175f0:	0000d697          	auipc	a3,0xd
   175f4:	96f6b823          	sd	a5,-1680(a3) # 23f60 <__malloc_av_+0x8>
   175f8:	00873023          	sd	s0,0(a4)
   175fc:	0085bc23          	sd	s0,24(a1)
   17600:	4026571b          	sraiw	a4,a2,0x2
   17604:	00100693          	li	a3,1
   17608:	00e696b3          	sll	a3,a3,a4
   1760c:	ded7e8e3          	bltu	a5,a3,173fc <_malloc_r+0x1a0>
   17610:	00f6f733          	and	a4,a3,a5
   17614:	02071463          	bnez	a4,1763c <_malloc_r+0x3e0>
   17618:	00169693          	slli	a3,a3,0x1
   1761c:	ffc67613          	andi	a2,a2,-4
   17620:	00f6f733          	and	a4,a3,a5
   17624:	0046061b          	addiw	a2,a2,4
   17628:	00071a63          	bnez	a4,1763c <_malloc_r+0x3e0>
   1762c:	00169693          	slli	a3,a3,0x1
   17630:	00f6f733          	and	a4,a3,a5
   17634:	0046061b          	addiw	a2,a2,4
   17638:	fe070ae3          	beqz	a4,1762c <_malloc_r+0x3d0>
   1763c:	01f00513          	li	a0,31
   17640:	0016089b          	addiw	a7,a2,1
   17644:	0018989b          	slliw	a7,a7,0x1
   17648:	00389893          	slli	a7,a7,0x3
   1764c:	ff088893          	addi	a7,a7,-16
   17650:	011988b3          	add	a7,s3,a7
   17654:	00088593          	mv	a1,a7
   17658:	00060313          	mv	t1,a2
   1765c:	0185b403          	ld	s0,24(a1)
   17660:	00859a63          	bne	a1,s0,17674 <_malloc_r+0x418>
   17664:	1700006f          	j	177d4 <_malloc_r+0x578>
   17668:	18075063          	bgez	a4,177e8 <_malloc_r+0x58c>
   1766c:	01843403          	ld	s0,24(s0)
   17670:	16858263          	beq	a1,s0,177d4 <_malloc_r+0x578>
   17674:	00843783          	ld	a5,8(s0)
   17678:	ffc7f793          	andi	a5,a5,-4
   1767c:	40978733          	sub	a4,a5,s1
   17680:	fee554e3          	bge	a0,a4,17668 <_malloc_r+0x40c>
   17684:	01843683          	ld	a3,24(s0)
   17688:	01043603          	ld	a2,16(s0)
   1768c:	0014e593          	ori	a1,s1,1
   17690:	00b43423          	sd	a1,8(s0)
   17694:	00d63c23          	sd	a3,24(a2)
   17698:	00c6b823          	sd	a2,16(a3)
   1769c:	009404b3          	add	s1,s0,s1
   176a0:	0000d697          	auipc	a3,0xd
   176a4:	8e96b023          	sd	s1,-1824(a3) # 23f80 <__malloc_av_+0x28>
   176a8:	0000d697          	auipc	a3,0xd
   176ac:	8c96b823          	sd	s1,-1840(a3) # 23f78 <__malloc_av_+0x20>
   176b0:	00176693          	ori	a3,a4,1
   176b4:	0104bc23          	sd	a6,24(s1)
   176b8:	0104b823          	sd	a6,16(s1)
   176bc:	00d4b423          	sd	a3,8(s1)
   176c0:	00f407b3          	add	a5,s0,a5
   176c4:	00090513          	mv	a0,s2
   176c8:	00e7b023          	sd	a4,0(a5)
   176cc:	550000ef          	jal	ra,17c1c <__malloc_unlock>
   176d0:	01040513          	addi	a0,s0,16
   176d4:	c3dff06f          	j	17310 <_malloc_r+0xb4>
   176d8:	40000693          	li	a3,1024
   176dc:	04000613          	li	a2,64
   176e0:	03f00513          	li	a0,63
   176e4:	ca9ff06f          	j	1738c <_malloc_r+0x130>
   176e8:	00f407b3          	add	a5,s0,a5
   176ec:	0087b703          	ld	a4,8(a5)
   176f0:	00090513          	mv	a0,s2
   176f4:	00176713          	ori	a4,a4,1
   176f8:	00e7b423          	sd	a4,8(a5)
   176fc:	520000ef          	jal	ra,17c1c <__malloc_unlock>
   17700:	01040513          	addi	a0,s0,16
   17704:	c0dff06f          	j	17310 <_malloc_r+0xb4>
   17708:	0014e713          	ori	a4,s1,1
   1770c:	00e43423          	sd	a4,8(s0)
   17710:	009404b3          	add	s1,s0,s1
   17714:	0000d717          	auipc	a4,0xd
   17718:	84973a23          	sd	s1,-1964(a4) # 23f68 <__malloc_av_+0x10>
   1771c:	0017e793          	ori	a5,a5,1
   17720:	00090513          	mv	a0,s2
   17724:	00f4b423          	sd	a5,8(s1)
   17728:	4f4000ef          	jal	ra,17c1c <__malloc_unlock>
   1772c:	01040513          	addi	a0,s0,16
   17730:	be1ff06f          	j	17310 <_malloc_r+0xb4>
   17734:	01843683          	ld	a3,24(s0)
   17738:	01043603          	ld	a2,16(s0)
   1773c:	ba1ff06f          	j	172dc <_malloc_r+0x80>
   17740:	0097d713          	srli	a4,a5,0x9
   17744:	00400693          	li	a3,4
   17748:	0ee6fa63          	bgeu	a3,a4,1783c <_malloc_r+0x5e0>
   1774c:	01400693          	li	a3,20
   17750:	20e6e863          	bltu	a3,a4,17960 <_malloc_r+0x704>
   17754:	0007071b          	sext.w	a4,a4
   17758:	05c7059b          	addiw	a1,a4,92
   1775c:	0015959b          	slliw	a1,a1,0x1
   17760:	05b7069b          	addiw	a3,a4,91
   17764:	00359593          	slli	a1,a1,0x3
   17768:	00b985b3          	add	a1,s3,a1
   1776c:	0005b703          	ld	a4,0(a1)
   17770:	ff058593          	addi	a1,a1,-16
   17774:	18e58663          	beq	a1,a4,17900 <_malloc_r+0x6a4>
   17778:	00873683          	ld	a3,8(a4)
   1777c:	ffc6f693          	andi	a3,a3,-4
   17780:	00d7f663          	bgeu	a5,a3,1778c <_malloc_r+0x530>
   17784:	01073703          	ld	a4,16(a4)
   17788:	fee598e3          	bne	a1,a4,17778 <_malloc_r+0x51c>
   1778c:	01873583          	ld	a1,24(a4)
   17790:	0089b783          	ld	a5,8(s3)
   17794:	00b43c23          	sd	a1,24(s0)
   17798:	00e43823          	sd	a4,16(s0)
   1779c:	0085b823          	sd	s0,16(a1)
   177a0:	00873c23          	sd	s0,24(a4)
   177a4:	e5dff06f          	j	17600 <_malloc_r+0x3a4>
   177a8:	01400713          	li	a4,20
   177ac:	0cf77e63          	bgeu	a4,a5,17888 <_malloc_r+0x62c>
   177b0:	05400713          	li	a4,84
   177b4:	1cf76863          	bltu	a4,a5,17984 <_malloc_r+0x728>
   177b8:	00c4d513          	srli	a0,s1,0xc
   177bc:	0005051b          	sext.w	a0,a0
   177c0:	06f5061b          	addiw	a2,a0,111
   177c4:	0016169b          	slliw	a3,a2,0x1
   177c8:	06e5051b          	addiw	a0,a0,110
   177cc:	00369693          	slli	a3,a3,0x3
   177d0:	bbdff06f          	j	1738c <_malloc_r+0x130>
   177d4:	0013031b          	addiw	t1,t1,1
   177d8:	00337793          	andi	a5,t1,3
   177dc:	01058593          	addi	a1,a1,16
   177e0:	e6079ee3          	bnez	a5,1765c <_malloc_r+0x400>
   177e4:	0c80006f          	j	178ac <_malloc_r+0x650>
   177e8:	00f407b3          	add	a5,s0,a5
   177ec:	0087b703          	ld	a4,8(a5)
   177f0:	01843683          	ld	a3,24(s0)
   177f4:	01043603          	ld	a2,16(s0)
   177f8:	00176713          	ori	a4,a4,1
   177fc:	00e7b423          	sd	a4,8(a5)
   17800:	00d63c23          	sd	a3,24(a2)
   17804:	00090513          	mv	a0,s2
   17808:	00c6b823          	sd	a2,16(a3)
   1780c:	410000ef          	jal	ra,17c1c <__malloc_unlock>
   17810:	01040513          	addi	a0,s0,16
   17814:	afdff06f          	j	17310 <_malloc_r+0xb4>
   17818:	0014e693          	ori	a3,s1,1
   1781c:	00d43423          	sd	a3,8(s0)
   17820:	e7dff06f          	j	1769c <_malloc_r+0x440>
   17824:	0034d613          	srli	a2,s1,0x3
   17828:	0006061b          	sext.w	a2,a2
   1782c:	0016079b          	addiw	a5,a2,1
   17830:	0017979b          	slliw	a5,a5,0x1
   17834:	00379793          	slli	a5,a5,0x3
   17838:	a7dff06f          	j	172b4 <_malloc_r+0x58>
   1783c:	0067d713          	srli	a4,a5,0x6
   17840:	0007071b          	sext.w	a4,a4
   17844:	0397059b          	addiw	a1,a4,57
   17848:	0015959b          	slliw	a1,a1,0x1
   1784c:	0387069b          	addiw	a3,a4,56
   17850:	00359593          	slli	a1,a1,0x3
   17854:	f15ff06f          	j	17768 <_malloc_r+0x50c>
   17858:	15340863          	beq	s0,s3,179a8 <_malloc_r+0x74c>
   1785c:	0109b403          	ld	s0,16(s3)
   17860:	00843a03          	ld	s4,8(s0)
   17864:	ffca7a13          	andi	s4,s4,-4
   17868:	409a07b3          	sub	a5,s4,s1
   1786c:	009a6663          	bltu	s4,s1,17878 <_malloc_r+0x61c>
   17870:	01f00713          	li	a4,31
   17874:	e8f74ae3          	blt	a4,a5,17708 <_malloc_r+0x4ac>
   17878:	00090513          	mv	a0,s2
   1787c:	3a0000ef          	jal	ra,17c1c <__malloc_unlock>
   17880:	00000513          	li	a0,0
   17884:	a8dff06f          	j	17310 <_malloc_r+0xb4>
   17888:	0007879b          	sext.w	a5,a5
   1788c:	05c7861b          	addiw	a2,a5,92
   17890:	0016169b          	slliw	a3,a2,0x1
   17894:	05b7851b          	addiw	a0,a5,91
   17898:	00369693          	slli	a3,a3,0x3
   1789c:	af1ff06f          	j	1738c <_malloc_r+0x130>
   178a0:	0108b783          	ld	a5,16(a7)
   178a4:	fff6061b          	addiw	a2,a2,-1
   178a8:	21179263          	bne	a5,a7,17aac <_malloc_r+0x850>
   178ac:	00367793          	andi	a5,a2,3
   178b0:	ff088893          	addi	a7,a7,-16
   178b4:	fe0796e3          	bnez	a5,178a0 <_malloc_r+0x644>
   178b8:	0089b703          	ld	a4,8(s3)
   178bc:	fff6c793          	not	a5,a3
   178c0:	00e7f7b3          	and	a5,a5,a4
   178c4:	0000c717          	auipc	a4,0xc
   178c8:	68f73e23          	sd	a5,1692(a4) # 23f60 <__malloc_av_+0x8>
   178cc:	00169693          	slli	a3,a3,0x1
   178d0:	b2d7e6e3          	bltu	a5,a3,173fc <_malloc_r+0x1a0>
   178d4:	b20684e3          	beqz	a3,173fc <_malloc_r+0x1a0>
   178d8:	00f6f733          	and	a4,a3,a5
   178dc:	00071a63          	bnez	a4,178f0 <_malloc_r+0x694>
   178e0:	00169693          	slli	a3,a3,0x1
   178e4:	00f6f733          	and	a4,a3,a5
   178e8:	0043031b          	addiw	t1,t1,4
   178ec:	fe070ae3          	beqz	a4,178e0 <_malloc_r+0x684>
   178f0:	00030613          	mv	a2,t1
   178f4:	d4dff06f          	j	17640 <_malloc_r+0x3e4>
   178f8:	020a0a13          	addi	s4,s4,32
   178fc:	b51ff06f          	j	1744c <_malloc_r+0x1f0>
   17900:	0089b503          	ld	a0,8(s3)
   17904:	4026d69b          	sraiw	a3,a3,0x2
   17908:	00100793          	li	a5,1
   1790c:	00d797b3          	sll	a5,a5,a3
   17910:	00a7e7b3          	or	a5,a5,a0
   17914:	0000c697          	auipc	a3,0xc
   17918:	64f6b623          	sd	a5,1612(a3) # 23f60 <__malloc_av_+0x8>
   1791c:	e79ff06f          	j	17794 <_malloc_r+0x538>
   17920:	000017b7          	lui	a5,0x1
   17924:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf0b1>
   17928:	014b0bb3          	add	s7,s6,s4
   1792c:	00ebfbb3          	and	s7,s7,a4
   17930:	417787b3          	sub	a5,a5,s7
   17934:	00e7fbb3          	and	s7,a5,a4
   17938:	000b8593          	mv	a1,s7
   1793c:	00090513          	mv	a0,s2
   17940:	448010ef          	jal	ra,18d88 <_sbrk_r>
   17944:	fff00793          	li	a5,-1
   17948:	00000713          	li	a4,0
   1794c:	b8f50ee3          	beq	a0,a5,174e8 <_malloc_r+0x28c>
   17950:	41650533          	sub	a0,a0,s6
   17954:	000b871b          	sext.w	a4,s7
   17958:	01750a33          	add	s4,a0,s7
   1795c:	b8dff06f          	j	174e8 <_malloc_r+0x28c>
   17960:	05400693          	li	a3,84
   17964:	08e6e863          	bltu	a3,a4,179f4 <_malloc_r+0x798>
   17968:	00c7d713          	srli	a4,a5,0xc
   1796c:	0007071b          	sext.w	a4,a4
   17970:	06f7059b          	addiw	a1,a4,111
   17974:	0015959b          	slliw	a1,a1,0x1
   17978:	06e7069b          	addiw	a3,a4,110
   1797c:	00359593          	slli	a1,a1,0x3
   17980:	de9ff06f          	j	17768 <_malloc_r+0x50c>
   17984:	15400713          	li	a4,340
   17988:	08f76863          	bltu	a4,a5,17a18 <_malloc_r+0x7bc>
   1798c:	00f4d513          	srli	a0,s1,0xf
   17990:	0005051b          	sext.w	a0,a0
   17994:	0785061b          	addiw	a2,a0,120
   17998:	0016169b          	slliw	a3,a2,0x1
   1799c:	0775051b          	addiw	a0,a0,119
   179a0:	00369693          	slli	a3,a3,0x3
   179a4:	9e9ff06f          	j	1738c <_malloc_r+0x130>
   179a8:	7d018c93          	addi	s9,gp,2000 # 24820 <__malloc_current_mallinfo>
   179ac:	000ca783          	lw	a5,0(s9)
   179b0:	014786bb          	addw	a3,a5,s4
   179b4:	7cd1a823          	sw	a3,2000(gp) # 24820 <__malloc_current_mallinfo>
   179b8:	ac9ff06f          	j	17480 <_malloc_r+0x224>
   179bc:	034b9713          	slli	a4,s7,0x34
   179c0:	ac0710e3          	bnez	a4,17480 <_malloc_r+0x224>
   179c4:	0109b403          	ld	s0,16(s3)
   179c8:	014a8a33          	add	s4,s5,s4
   179cc:	001a6a13          	ori	s4,s4,1
   179d0:	01443423          	sd	s4,8(s0)
   179d4:	b71ff06f          	j	17544 <_malloc_r+0x2e8>
   179d8:	7761b023          	sd	s6,1888(gp) # 247b0 <__malloc_sbrk_base>
   179dc:	abdff06f          	j	17498 <_malloc_r+0x23c>
   179e0:	000b0413          	mv	s0,s6
   179e4:	b61ff06f          	j	17544 <_malloc_r+0x2e8>
   179e8:	00100793          	li	a5,1
   179ec:	00fb3423          	sd	a5,8(s6)
   179f0:	e89ff06f          	j	17878 <_malloc_r+0x61c>
   179f4:	15400693          	li	a3,340
   179f8:	06e6ea63          	bltu	a3,a4,17a6c <_malloc_r+0x810>
   179fc:	00f7d713          	srli	a4,a5,0xf
   17a00:	0007071b          	sext.w	a4,a4
   17a04:	0787059b          	addiw	a1,a4,120
   17a08:	0015959b          	slliw	a1,a1,0x1
   17a0c:	0777069b          	addiw	a3,a4,119
   17a10:	00359593          	slli	a1,a1,0x3
   17a14:	d55ff06f          	j	17768 <_malloc_r+0x50c>
   17a18:	55400713          	li	a4,1364
   17a1c:	06f76a63          	bltu	a4,a5,17a90 <_malloc_r+0x834>
   17a20:	0124d513          	srli	a0,s1,0x12
   17a24:	0005051b          	sext.w	a0,a0
   17a28:	07d5061b          	addiw	a2,a0,125
   17a2c:	0016169b          	slliw	a3,a2,0x1
   17a30:	07c5051b          	addiw	a0,a0,124
   17a34:	00369693          	slli	a3,a3,0x3
   17a38:	955ff06f          	j	1738c <_malloc_r+0x130>
   17a3c:	ff0b8b93          	addi	s7,s7,-16
   17a40:	017c0a33          	add	s4,s8,s7
   17a44:	416a0a33          	sub	s4,s4,s6
   17a48:	00000713          	li	a4,0
   17a4c:	a9dff06f          	j	174e8 <_malloc_r+0x28c>
   17a50:	01040593          	addi	a1,s0,16
   17a54:	00090513          	mv	a0,s2
   17a58:	cacfc0ef          	jal	ra,13f04 <_free_r>
   17a5c:	0109b403          	ld	s0,16(s3)
   17a60:	000ca783          	lw	a5,0(s9)
   17a64:	00843a03          	ld	s4,8(s0)
   17a68:	addff06f          	j	17544 <_malloc_r+0x2e8>
   17a6c:	55400693          	li	a3,1364
   17a70:	02e6e863          	bltu	a3,a4,17aa0 <_malloc_r+0x844>
   17a74:	0127d713          	srli	a4,a5,0x12
   17a78:	0007071b          	sext.w	a4,a4
   17a7c:	07d7059b          	addiw	a1,a4,125
   17a80:	0015959b          	slliw	a1,a1,0x1
   17a84:	07c7069b          	addiw	a3,a4,124
   17a88:	00359593          	slli	a1,a1,0x3
   17a8c:	cddff06f          	j	17768 <_malloc_r+0x50c>
   17a90:	7f000693          	li	a3,2032
   17a94:	07f00613          	li	a2,127
   17a98:	07e00513          	li	a0,126
   17a9c:	8f1ff06f          	j	1738c <_malloc_r+0x130>
   17aa0:	7f000593          	li	a1,2032
   17aa4:	07e00693          	li	a3,126
   17aa8:	cc1ff06f          	j	17768 <_malloc_r+0x50c>
   17aac:	0089b783          	ld	a5,8(s3)
   17ab0:	e1dff06f          	j	178cc <_malloc_r+0x670>

0000000000017ab4 <_mbtowc_r>:
   17ab4:	d6018793          	addi	a5,gp,-672 # 23db0 <__global_locale>
   17ab8:	0e87b303          	ld	t1,232(a5)
   17abc:	00030067          	jr	t1

0000000000017ac0 <__ascii_mbtowc>:
   17ac0:	02058063          	beqz	a1,17ae0 <__ascii_mbtowc+0x20>
   17ac4:	04060263          	beqz	a2,17b08 <__ascii_mbtowc+0x48>
   17ac8:	04068863          	beqz	a3,17b18 <__ascii_mbtowc+0x58>
   17acc:	00064783          	lbu	a5,0(a2)
   17ad0:	00f5a023          	sw	a5,0(a1)
   17ad4:	00064503          	lbu	a0,0(a2)
   17ad8:	00a03533          	snez	a0,a0
   17adc:	00008067          	ret
   17ae0:	ff010113          	addi	sp,sp,-16
   17ae4:	00c10593          	addi	a1,sp,12
   17ae8:	02060463          	beqz	a2,17b10 <__ascii_mbtowc+0x50>
   17aec:	02068a63          	beqz	a3,17b20 <__ascii_mbtowc+0x60>
   17af0:	00064783          	lbu	a5,0(a2)
   17af4:	00f5a023          	sw	a5,0(a1)
   17af8:	00064503          	lbu	a0,0(a2)
   17afc:	00a03533          	snez	a0,a0
   17b00:	01010113          	addi	sp,sp,16
   17b04:	00008067          	ret
   17b08:	00000513          	li	a0,0
   17b0c:	00008067          	ret
   17b10:	00000513          	li	a0,0
   17b14:	fedff06f          	j	17b00 <__ascii_mbtowc+0x40>
   17b18:	ffe00513          	li	a0,-2
   17b1c:	00008067          	ret
   17b20:	ffe00513          	li	a0,-2
   17b24:	fddff06f          	j	17b00 <__ascii_mbtowc+0x40>

0000000000017b28 <memchr>:
   17b28:	00757793          	andi	a5,a0,7
   17b2c:	0ff5f813          	andi	a6,a1,255
   17b30:	0e078063          	beqz	a5,17c10 <memchr+0xe8>
   17b34:	fff60793          	addi	a5,a2,-1
   17b38:	04060e63          	beqz	a2,17b94 <memchr+0x6c>
   17b3c:	00054703          	lbu	a4,0(a0)
   17b40:	05070c63          	beq	a4,a6,17b98 <memchr+0x70>
   17b44:	fff00693          	li	a3,-1
   17b48:	0140006f          	j	17b5c <memchr+0x34>
   17b4c:	fff78793          	addi	a5,a5,-1
   17b50:	04d78263          	beq	a5,a3,17b94 <memchr+0x6c>
   17b54:	00054703          	lbu	a4,0(a0)
   17b58:	05070063          	beq	a4,a6,17b98 <memchr+0x70>
   17b5c:	00150513          	addi	a0,a0,1
   17b60:	00757713          	andi	a4,a0,7
   17b64:	fe0714e3          	bnez	a4,17b4c <memchr+0x24>
   17b68:	00700713          	li	a4,7
   17b6c:	02f76863          	bltu	a4,a5,17b9c <memchr+0x74>
   17b70:	02078263          	beqz	a5,17b94 <memchr+0x6c>
   17b74:	00054703          	lbu	a4,0(a0)
   17b78:	03070063          	beq	a4,a6,17b98 <memchr+0x70>
   17b7c:	00f507b3          	add	a5,a0,a5
   17b80:	00c0006f          	j	17b8c <memchr+0x64>
   17b84:	00054703          	lbu	a4,0(a0)
   17b88:	01070863          	beq	a4,a6,17b98 <memchr+0x70>
   17b8c:	00150513          	addi	a0,a0,1
   17b90:	fea79ae3          	bne	a5,a0,17b84 <memchr+0x5c>
   17b94:	00000513          	li	a0,0
   17b98:	00008067          	ret
   17b9c:	000106b7          	lui	a3,0x10
   17ba0:	0085971b          	slliw	a4,a1,0x8
   17ba4:	fff68693          	addi	a3,a3,-1 # ffff <register_fini-0xb1>
   17ba8:	00d77733          	and	a4,a4,a3
   17bac:	0ff5f593          	andi	a1,a1,255
   17bb0:	00b765b3          	or	a1,a4,a1
   17bb4:	0005859b          	sext.w	a1,a1
   17bb8:	0000d697          	auipc	a3,0xd
   17bbc:	bb068693          	addi	a3,a3,-1104 # 24768 <__SDATA_BEGIN__>
   17bc0:	01059613          	slli	a2,a1,0x10
   17bc4:	0006b883          	ld	a7,0(a3)
   17bc8:	0000d697          	auipc	a3,0xd
   17bcc:	ba868693          	addi	a3,a3,-1112 # 24770 <__SDATA_BEGIN__+0x8>
   17bd0:	00b66733          	or	a4,a2,a1
   17bd4:	0006b583          	ld	a1,0(a3)
   17bd8:	02071613          	slli	a2,a4,0x20
   17bdc:	00e66633          	or	a2,a2,a4
   17be0:	00700313          	li	t1,7
   17be4:	00053703          	ld	a4,0(a0)
   17be8:	00e64733          	xor	a4,a2,a4
   17bec:	011706b3          	add	a3,a4,a7
   17bf0:	fff74713          	not	a4,a4
   17bf4:	00e6f733          	and	a4,a3,a4
   17bf8:	00b77733          	and	a4,a4,a1
   17bfc:	f6071ce3          	bnez	a4,17b74 <memchr+0x4c>
   17c00:	ff878793          	addi	a5,a5,-8
   17c04:	00850513          	addi	a0,a0,8
   17c08:	fcf36ee3          	bltu	t1,a5,17be4 <memchr+0xbc>
   17c0c:	f65ff06f          	j	17b70 <memchr+0x48>
   17c10:	00060793          	mv	a5,a2
   17c14:	f55ff06f          	j	17b68 <memchr+0x40>

0000000000017c18 <__malloc_lock>:
   17c18:	00008067          	ret

0000000000017c1c <__malloc_unlock>:
   17c1c:	00008067          	ret

0000000000017c20 <_Balloc>:
   17c20:	07853783          	ld	a5,120(a0)
   17c24:	fe010113          	addi	sp,sp,-32
   17c28:	00813823          	sd	s0,16(sp)
   17c2c:	00913423          	sd	s1,8(sp)
   17c30:	00113c23          	sd	ra,24(sp)
   17c34:	01213023          	sd	s2,0(sp)
   17c38:	00050413          	mv	s0,a0
   17c3c:	00058493          	mv	s1,a1
   17c40:	02078c63          	beqz	a5,17c78 <_Balloc+0x58>
   17c44:	00349713          	slli	a4,s1,0x3
   17c48:	00e787b3          	add	a5,a5,a4
   17c4c:	0007b503          	ld	a0,0(a5)
   17c50:	04050463          	beqz	a0,17c98 <_Balloc+0x78>
   17c54:	00053703          	ld	a4,0(a0)
   17c58:	00e7b023          	sd	a4,0(a5)
   17c5c:	00053823          	sd	zero,16(a0)
   17c60:	01813083          	ld	ra,24(sp)
   17c64:	01013403          	ld	s0,16(sp)
   17c68:	00813483          	ld	s1,8(sp)
   17c6c:	00013903          	ld	s2,0(sp)
   17c70:	02010113          	addi	sp,sp,32
   17c74:	00008067          	ret
   17c78:	04100613          	li	a2,65
   17c7c:	00800593          	li	a1,8
   17c80:	3d8050ef          	jal	ra,1d058 <_calloc_r>
   17c84:	06a43c23          	sd	a0,120(s0)
   17c88:	00050793          	mv	a5,a0
   17c8c:	fa051ce3          	bnez	a0,17c44 <_Balloc+0x24>
   17c90:	00000513          	li	a0,0
   17c94:	fcdff06f          	j	17c60 <_Balloc+0x40>
   17c98:	00100913          	li	s2,1
   17c9c:	0099193b          	sllw	s2,s2,s1
   17ca0:	fff9061b          	addiw	a2,s2,-1
   17ca4:	00860613          	addi	a2,a2,8
   17ca8:	00261613          	slli	a2,a2,0x2
   17cac:	00100593          	li	a1,1
   17cb0:	00040513          	mv	a0,s0
   17cb4:	3a4050ef          	jal	ra,1d058 <_calloc_r>
   17cb8:	fc050ce3          	beqz	a0,17c90 <_Balloc+0x70>
   17cbc:	00952423          	sw	s1,8(a0)
   17cc0:	01252623          	sw	s2,12(a0)
   17cc4:	f99ff06f          	j	17c5c <_Balloc+0x3c>

0000000000017cc8 <_Bfree>:
   17cc8:	02058063          	beqz	a1,17ce8 <_Bfree+0x20>
   17ccc:	0085a703          	lw	a4,8(a1)
   17cd0:	07853783          	ld	a5,120(a0)
   17cd4:	00371713          	slli	a4,a4,0x3
   17cd8:	00e787b3          	add	a5,a5,a4
   17cdc:	0007b703          	ld	a4,0(a5)
   17ce0:	00e5b023          	sd	a4,0(a1)
   17ce4:	00b7b023          	sd	a1,0(a5)
   17ce8:	00008067          	ret

0000000000017cec <__multadd>:
   17cec:	fb010113          	addi	sp,sp,-80
   17cf0:	03313423          	sd	s3,40(sp)
   17cf4:	0145a983          	lw	s3,20(a1)
   17cf8:	01813023          	sd	s8,0(sp)
   17cfc:	00010c37          	lui	s8,0x10
   17d00:	04813023          	sd	s0,64(sp)
   17d04:	02913c23          	sd	s1,56(sp)
   17d08:	03213823          	sd	s2,48(sp)
   17d0c:	03413023          	sd	s4,32(sp)
   17d10:	01513c23          	sd	s5,24(sp)
   17d14:	01613823          	sd	s6,16(sp)
   17d18:	04113423          	sd	ra,72(sp)
   17d1c:	01713423          	sd	s7,8(sp)
   17d20:	00058a13          	mv	s4,a1
   17d24:	00050a93          	mv	s5,a0
   17d28:	00068413          	mv	s0,a3
   17d2c:	01858493          	addi	s1,a1,24
   17d30:	00060913          	mv	s2,a2
   17d34:	00000b13          	li	s6,0
   17d38:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0xb1>
   17d3c:	0004ab83          	lw	s7,0(s1)
   17d40:	00090593          	mv	a1,s2
   17d44:	00448493          	addi	s1,s1,4
   17d48:	018bf533          	and	a0,s7,s8
   17d4c:	281090ef          	jal	ra,217cc <__muldi3>
   17d50:	0085043b          	addw	s0,a0,s0
   17d54:	00090593          	mv	a1,s2
   17d58:	010bd51b          	srliw	a0,s7,0x10
   17d5c:	271090ef          	jal	ra,217cc <__muldi3>
   17d60:	0104569b          	srliw	a3,s0,0x10
   17d64:	00a6853b          	addw	a0,a3,a0
   17d68:	0105169b          	slliw	a3,a0,0x10
   17d6c:	008c7433          	and	s0,s8,s0
   17d70:	0086843b          	addw	s0,a3,s0
   17d74:	fe84ae23          	sw	s0,-4(s1)
   17d78:	001b0b1b          	addiw	s6,s6,1
   17d7c:	0105541b          	srliw	s0,a0,0x10
   17d80:	fb3b4ee3          	blt	s6,s3,17d3c <__multadd+0x50>
   17d84:	02040263          	beqz	s0,17da8 <__multadd+0xbc>
   17d88:	00ca2783          	lw	a5,12(s4)
   17d8c:	04f9d863          	bge	s3,a5,17ddc <__multadd+0xf0>
   17d90:	00498793          	addi	a5,s3,4
   17d94:	00279793          	slli	a5,a5,0x2
   17d98:	00fa07b3          	add	a5,s4,a5
   17d9c:	0087a423          	sw	s0,8(a5)
   17da0:	0019899b          	addiw	s3,s3,1
   17da4:	013a2a23          	sw	s3,20(s4)
   17da8:	04813083          	ld	ra,72(sp)
   17dac:	04013403          	ld	s0,64(sp)
   17db0:	000a0513          	mv	a0,s4
   17db4:	03813483          	ld	s1,56(sp)
   17db8:	03013903          	ld	s2,48(sp)
   17dbc:	02813983          	ld	s3,40(sp)
   17dc0:	02013a03          	ld	s4,32(sp)
   17dc4:	01813a83          	ld	s5,24(sp)
   17dc8:	01013b03          	ld	s6,16(sp)
   17dcc:	00813b83          	ld	s7,8(sp)
   17dd0:	00013c03          	ld	s8,0(sp)
   17dd4:	05010113          	addi	sp,sp,80
   17dd8:	00008067          	ret
   17ddc:	008a2583          	lw	a1,8(s4)
   17de0:	000a8513          	mv	a0,s5
   17de4:	0015859b          	addiw	a1,a1,1
   17de8:	e39ff0ef          	jal	ra,17c20 <_Balloc>
   17dec:	014a2603          	lw	a2,20(s4)
   17df0:	00050493          	mv	s1,a0
   17df4:	010a0593          	addi	a1,s4,16
   17df8:	00260613          	addi	a2,a2,2
   17dfc:	01050513          	addi	a0,a0,16
   17e00:	00261613          	slli	a2,a2,0x2
   17e04:	465050ef          	jal	ra,1da68 <memcpy>
   17e08:	008a2703          	lw	a4,8(s4)
   17e0c:	078ab783          	ld	a5,120(s5)
   17e10:	00371713          	slli	a4,a4,0x3
   17e14:	00e787b3          	add	a5,a5,a4
   17e18:	0007b703          	ld	a4,0(a5)
   17e1c:	00ea3023          	sd	a4,0(s4)
   17e20:	0147b023          	sd	s4,0(a5)
   17e24:	00498793          	addi	a5,s3,4
   17e28:	00048a13          	mv	s4,s1
   17e2c:	00279793          	slli	a5,a5,0x2
   17e30:	00fa07b3          	add	a5,s4,a5
   17e34:	0087a423          	sw	s0,8(a5)
   17e38:	0019899b          	addiw	s3,s3,1
   17e3c:	013a2a23          	sw	s3,20(s4)
   17e40:	f69ff06f          	j	17da8 <__multadd+0xbc>

0000000000017e44 <__s2b>:
   17e44:	fc010113          	addi	sp,sp,-64
   17e48:	02813823          	sd	s0,48(sp)
   17e4c:	03213023          	sd	s2,32(sp)
   17e50:	00058413          	mv	s0,a1
   17e54:	00050913          	mv	s2,a0
   17e58:	00900593          	li	a1,9
   17e5c:	0086851b          	addiw	a0,a3,8
   17e60:	02913423          	sd	s1,40(sp)
   17e64:	01313c23          	sd	s3,24(sp)
   17e68:	01413823          	sd	s4,16(sp)
   17e6c:	02113c23          	sd	ra,56(sp)
   17e70:	01513423          	sd	s5,8(sp)
   17e74:	01613023          	sd	s6,0(sp)
   17e78:	00068493          	mv	s1,a3
   17e7c:	00060a13          	mv	s4,a2
   17e80:	00070993          	mv	s3,a4
   17e84:	9e9f80ef          	jal	ra,1086c <__divdi3>
   17e88:	00900793          	li	a5,9
   17e8c:	0e97d663          	bge	a5,s1,17f78 <__s2b+0x134>
   17e90:	0005051b          	sext.w	a0,a0
   17e94:	00100793          	li	a5,1
   17e98:	00000593          	li	a1,0
   17e9c:	0017979b          	slliw	a5,a5,0x1
   17ea0:	0015859b          	addiw	a1,a1,1
   17ea4:	fea7cce3          	blt	a5,a0,17e9c <__s2b+0x58>
   17ea8:	00090513          	mv	a0,s2
   17eac:	d75ff0ef          	jal	ra,17c20 <_Balloc>
   17eb0:	00100793          	li	a5,1
   17eb4:	00f52a23          	sw	a5,20(a0)
   17eb8:	01352c23          	sw	s3,24(a0)
   17ebc:	00900793          	li	a5,9
   17ec0:	0b47d663          	bge	a5,s4,17f6c <__s2b+0x128>
   17ec4:	ff6a0a9b          	addiw	s5,s4,-10
   17ec8:	020a9a93          	slli	s5,s5,0x20
   17ecc:	020ada93          	srli	s5,s5,0x20
   17ed0:	00940b13          	addi	s6,s0,9
   17ed4:	00aa8793          	addi	a5,s5,10
   17ed8:	00f40433          	add	s0,s0,a5
   17edc:	000b0993          	mv	s3,s6
   17ee0:	00198993          	addi	s3,s3,1
   17ee4:	fff9c683          	lbu	a3,-1(s3)
   17ee8:	00050593          	mv	a1,a0
   17eec:	00a00613          	li	a2,10
   17ef0:	fd06869b          	addiw	a3,a3,-48
   17ef4:	00090513          	mv	a0,s2
   17ef8:	df5ff0ef          	jal	ra,17cec <__multadd>
   17efc:	fe8992e3          	bne	s3,s0,17ee0 <__s2b+0x9c>
   17f00:	002a8413          	addi	s0,s5,2
   17f04:	008b0433          	add	s0,s6,s0
   17f08:	029a5e63          	bge	s4,s1,17f44 <__s2b+0x100>
   17f0c:	fff4849b          	addiw	s1,s1,-1
   17f10:	414484bb          	subw	s1,s1,s4
   17f14:	02049493          	slli	s1,s1,0x20
   17f18:	0204d493          	srli	s1,s1,0x20
   17f1c:	00148493          	addi	s1,s1,1
   17f20:	009404b3          	add	s1,s0,s1
   17f24:	00140413          	addi	s0,s0,1
   17f28:	fff44683          	lbu	a3,-1(s0)
   17f2c:	00050593          	mv	a1,a0
   17f30:	00a00613          	li	a2,10
   17f34:	fd06869b          	addiw	a3,a3,-48
   17f38:	00090513          	mv	a0,s2
   17f3c:	db1ff0ef          	jal	ra,17cec <__multadd>
   17f40:	fe9412e3          	bne	s0,s1,17f24 <__s2b+0xe0>
   17f44:	03813083          	ld	ra,56(sp)
   17f48:	03013403          	ld	s0,48(sp)
   17f4c:	02813483          	ld	s1,40(sp)
   17f50:	02013903          	ld	s2,32(sp)
   17f54:	01813983          	ld	s3,24(sp)
   17f58:	01013a03          	ld	s4,16(sp)
   17f5c:	00813a83          	ld	s5,8(sp)
   17f60:	00013b03          	ld	s6,0(sp)
   17f64:	04010113          	addi	sp,sp,64
   17f68:	00008067          	ret
   17f6c:	00a40413          	addi	s0,s0,10
   17f70:	00900a13          	li	s4,9
   17f74:	f95ff06f          	j	17f08 <__s2b+0xc4>
   17f78:	00000593          	li	a1,0
   17f7c:	f2dff06f          	j	17ea8 <__s2b+0x64>

0000000000017f80 <__hi0bits>:
   17f80:	ffff0737          	lui	a4,0xffff0
   17f84:	00e57733          	and	a4,a0,a4
   17f88:	00050793          	mv	a5,a0
   17f8c:	00000513          	li	a0,0
   17f90:	00071663          	bnez	a4,17f9c <__hi0bits+0x1c>
   17f94:	0107979b          	slliw	a5,a5,0x10
   17f98:	01000513          	li	a0,16
   17f9c:	ff000737          	lui	a4,0xff000
   17fa0:	00e7f733          	and	a4,a5,a4
   17fa4:	00071663          	bnez	a4,17fb0 <__hi0bits+0x30>
   17fa8:	0087979b          	slliw	a5,a5,0x8
   17fac:	0085051b          	addiw	a0,a0,8
   17fb0:	f0000737          	lui	a4,0xf0000
   17fb4:	00e7f733          	and	a4,a5,a4
   17fb8:	00071663          	bnez	a4,17fc4 <__hi0bits+0x44>
   17fbc:	0047979b          	slliw	a5,a5,0x4
   17fc0:	0045051b          	addiw	a0,a0,4
   17fc4:	c0000737          	lui	a4,0xc0000
   17fc8:	00e7f733          	and	a4,a5,a4
   17fcc:	00071663          	bnez	a4,17fd8 <__hi0bits+0x58>
   17fd0:	0027979b          	slliw	a5,a5,0x2
   17fd4:	0025051b          	addiw	a0,a0,2
   17fd8:	0007c863          	bltz	a5,17fe8 <__hi0bits+0x68>
   17fdc:	02179713          	slli	a4,a5,0x21
   17fe0:	0015051b          	addiw	a0,a0,1
   17fe4:	00075463          	bgez	a4,17fec <__hi0bits+0x6c>
   17fe8:	00008067          	ret
   17fec:	02000513          	li	a0,32
   17ff0:	00008067          	ret

0000000000017ff4 <__lo0bits>:
   17ff4:	00052783          	lw	a5,0(a0)
   17ff8:	0077f713          	andi	a4,a5,7
   17ffc:	00078613          	mv	a2,a5
   18000:	02070663          	beqz	a4,1802c <__lo0bits+0x38>
   18004:	0017f693          	andi	a3,a5,1
   18008:	00000713          	li	a4,0
   1800c:	00069c63          	bnez	a3,18024 <__lo0bits+0x30>
   18010:	00267613          	andi	a2,a2,2
   18014:	08060463          	beqz	a2,1809c <__lo0bits+0xa8>
   18018:	0017d79b          	srliw	a5,a5,0x1
   1801c:	00f52023          	sw	a5,0(a0)
   18020:	00100713          	li	a4,1
   18024:	00070513          	mv	a0,a4
   18028:	00008067          	ret
   1802c:	03079693          	slli	a3,a5,0x30
   18030:	0306d693          	srli	a3,a3,0x30
   18034:	00000713          	li	a4,0
   18038:	00069663          	bnez	a3,18044 <__lo0bits+0x50>
   1803c:	0107d79b          	srliw	a5,a5,0x10
   18040:	01000713          	li	a4,16
   18044:	0ff7f693          	andi	a3,a5,255
   18048:	00069663          	bnez	a3,18054 <__lo0bits+0x60>
   1804c:	0087071b          	addiw	a4,a4,8
   18050:	0087d79b          	srliw	a5,a5,0x8
   18054:	00f7f693          	andi	a3,a5,15
   18058:	00069663          	bnez	a3,18064 <__lo0bits+0x70>
   1805c:	0047071b          	addiw	a4,a4,4
   18060:	0047d79b          	srliw	a5,a5,0x4
   18064:	0037f693          	andi	a3,a5,3
   18068:	00069663          	bnez	a3,18074 <__lo0bits+0x80>
   1806c:	0027071b          	addiw	a4,a4,2
   18070:	0027d79b          	srliw	a5,a5,0x2
   18074:	0017f693          	andi	a3,a5,1
   18078:	00069863          	bnez	a3,18088 <__lo0bits+0x94>
   1807c:	0017d79b          	srliw	a5,a5,0x1
   18080:	0017071b          	addiw	a4,a4,1
   18084:	00078863          	beqz	a5,18094 <__lo0bits+0xa0>
   18088:	00f52023          	sw	a5,0(a0)
   1808c:	00070513          	mv	a0,a4
   18090:	00008067          	ret
   18094:	02000713          	li	a4,32
   18098:	f8dff06f          	j	18024 <__lo0bits+0x30>
   1809c:	0027d79b          	srliw	a5,a5,0x2
   180a0:	00200713          	li	a4,2
   180a4:	00f52023          	sw	a5,0(a0)
   180a8:	00070513          	mv	a0,a4
   180ac:	00008067          	ret

00000000000180b0 <__i2b>:
   180b0:	ff010113          	addi	sp,sp,-16
   180b4:	00813023          	sd	s0,0(sp)
   180b8:	00058413          	mv	s0,a1
   180bc:	00100593          	li	a1,1
   180c0:	00113423          	sd	ra,8(sp)
   180c4:	b5dff0ef          	jal	ra,17c20 <_Balloc>
   180c8:	00852c23          	sw	s0,24(a0)
   180cc:	00813083          	ld	ra,8(sp)
   180d0:	00013403          	ld	s0,0(sp)
   180d4:	00100713          	li	a4,1
   180d8:	00e52a23          	sw	a4,20(a0)
   180dc:	01010113          	addi	sp,sp,16
   180e0:	00008067          	ret

00000000000180e4 <__multiply>:
   180e4:	f7010113          	addi	sp,sp,-144
   180e8:	07413023          	sd	s4,96(sp)
   180ec:	03913c23          	sd	s9,56(sp)
   180f0:	01462a03          	lw	s4,20(a2)
   180f4:	0145ac83          	lw	s9,20(a1)
   180f8:	05513c23          	sd	s5,88(sp)
   180fc:	03a13823          	sd	s10,48(sp)
   18100:	08113423          	sd	ra,136(sp)
   18104:	08813023          	sd	s0,128(sp)
   18108:	06913c23          	sd	s1,120(sp)
   1810c:	07213823          	sd	s2,112(sp)
   18110:	07313423          	sd	s3,104(sp)
   18114:	05613823          	sd	s6,80(sp)
   18118:	05713423          	sd	s7,72(sp)
   1811c:	05813023          	sd	s8,64(sp)
   18120:	03b13423          	sd	s11,40(sp)
   18124:	00058a93          	mv	s5,a1
   18128:	00060d13          	mv	s10,a2
   1812c:	014ccc63          	blt	s9,s4,18144 <__multiply+0x60>
   18130:	000a0793          	mv	a5,s4
   18134:	00058d13          	mv	s10,a1
   18138:	000c8a13          	mv	s4,s9
   1813c:	00060a93          	mv	s5,a2
   18140:	00078c93          	mv	s9,a5
   18144:	00cd2783          	lw	a5,12(s10) # 100c <register_fini-0xf0a4>
   18148:	019a0bbb          	addw	s7,s4,s9
   1814c:	008d2583          	lw	a1,8(s10)
   18150:	0177d463          	bge	a5,s7,18158 <__multiply+0x74>
   18154:	0015859b          	addiw	a1,a1,1
   18158:	ac9ff0ef          	jal	ra,17c20 <_Balloc>
   1815c:	01850c13          	addi	s8,a0,24
   18160:	002b9b13          	slli	s6,s7,0x2
   18164:	016c07b3          	add	a5,s8,s6
   18168:	00078713          	mv	a4,a5
   1816c:	00f13023          	sd	a5,0(sp)
   18170:	00a13c23          	sd	a0,24(sp)
   18174:	000c0793          	mv	a5,s8
   18178:	00ec7a63          	bgeu	s8,a4,1818c <__multiply+0xa8>
   1817c:	00013703          	ld	a4,0(sp)
   18180:	0007a023          	sw	zero,0(a5)
   18184:	00478793          	addi	a5,a5,4
   18188:	fee7eae3          	bltu	a5,a4,1817c <__multiply+0x98>
   1818c:	018a8a93          	addi	s5,s5,24
   18190:	002c9c93          	slli	s9,s9,0x2
   18194:	018d0793          	addi	a5,s10,24
   18198:	019a8733          	add	a4,s5,s9
   1819c:	002a1a13          	slli	s4,s4,0x2
   181a0:	00010937          	lui	s2,0x10
   181a4:	00f13823          	sd	a5,16(sp)
   181a8:	00e13423          	sd	a4,8(sp)
   181ac:	01478a33          	add	s4,a5,s4
   181b0:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   181b4:	02eae063          	bltu	s5,a4,181d4 <__multiply+0xf0>
   181b8:	1280006f          	j	182e0 <__multiply+0x1fc>
   181bc:	0104541b          	srliw	s0,s0,0x10
   181c0:	08041c63          	bnez	s0,18258 <__multiply+0x174>
   181c4:	00813783          	ld	a5,8(sp)
   181c8:	004a8a93          	addi	s5,s5,4
   181cc:	004c0c13          	addi	s8,s8,4
   181d0:	10faf863          	bgeu	s5,a5,182e0 <__multiply+0x1fc>
   181d4:	000aa403          	lw	s0,0(s5)
   181d8:	012479b3          	and	s3,s0,s2
   181dc:	fe0980e3          	beqz	s3,181bc <__multiply+0xd8>
   181e0:	01013d83          	ld	s11,16(sp)
   181e4:	000c0c93          	mv	s9,s8
   181e8:	00000d13          	li	s10,0
   181ec:	000dab03          	lw	s6,0(s11)
   181f0:	000ca483          	lw	s1,0(s9)
   181f4:	00098593          	mv	a1,s3
   181f8:	012b7533          	and	a0,s6,s2
   181fc:	5d0090ef          	jal	ra,217cc <__muldi3>
   18200:	0124f433          	and	s0,s1,s2
   18204:	0085043b          	addw	s0,a0,s0
   18208:	00098593          	mv	a1,s3
   1820c:	010b551b          	srliw	a0,s6,0x10
   18210:	01a4043b          	addw	s0,s0,s10
   18214:	5b8090ef          	jal	ra,217cc <__muldi3>
   18218:	0104d49b          	srliw	s1,s1,0x10
   1821c:	00a4853b          	addw	a0,s1,a0
   18220:	0104549b          	srliw	s1,s0,0x10
   18224:	0095053b          	addw	a0,a0,s1
   18228:	0105169b          	slliw	a3,a0,0x10
   1822c:	00897433          	and	s0,s2,s0
   18230:	004c8c93          	addi	s9,s9,4
   18234:	00d46433          	or	s0,s0,a3
   18238:	004d8d93          	addi	s11,s11,4
   1823c:	fe8cae23          	sw	s0,-4(s9)
   18240:	01055d1b          	srliw	s10,a0,0x10
   18244:	fb4de4e3          	bltu	s11,s4,181ec <__multiply+0x108>
   18248:	01aca023          	sw	s10,0(s9)
   1824c:	000aa403          	lw	s0,0(s5)
   18250:	0104541b          	srliw	s0,s0,0x10
   18254:	f60408e3          	beqz	s0,181c4 <__multiply+0xe0>
   18258:	000c2d03          	lw	s10,0(s8)
   1825c:	01013c83          	ld	s9,16(sp)
   18260:	000c0d93          	mv	s11,s8
   18264:	000d0493          	mv	s1,s10
   18268:	00000993          	li	s3,0
   1826c:	000ca503          	lw	a0,0(s9)
   18270:	00040593          	mv	a1,s0
   18274:	0104d49b          	srliw	s1,s1,0x10
   18278:	00a97533          	and	a0,s2,a0
   1827c:	550090ef          	jal	ra,217cc <__muldi3>
   18280:	00a484bb          	addw	s1,s1,a0
   18284:	013489bb          	addw	s3,s1,s3
   18288:	0109961b          	slliw	a2,s3,0x10
   1828c:	012d77b3          	and	a5,s10,s2
   18290:	00c7e7b3          	or	a5,a5,a2
   18294:	004d8d93          	addi	s11,s11,4
   18298:	fefdae23          	sw	a5,-4(s11)
   1829c:	004c8c93          	addi	s9,s9,4
   182a0:	ffecd503          	lhu	a0,-2(s9)
   182a4:	000da483          	lw	s1,0(s11)
   182a8:	00040593          	mv	a1,s0
   182ac:	520090ef          	jal	ra,217cc <__muldi3>
   182b0:	0124f7b3          	and	a5,s1,s2
   182b4:	0109d99b          	srliw	s3,s3,0x10
   182b8:	00f5053b          	addw	a0,a0,a5
   182bc:	0135053b          	addw	a0,a0,s3
   182c0:	00050d1b          	sext.w	s10,a0
   182c4:	0105599b          	srliw	s3,a0,0x10
   182c8:	fb4ce2e3          	bltu	s9,s4,1826c <__multiply+0x188>
   182cc:	00813783          	ld	a5,8(sp)
   182d0:	01ada023          	sw	s10,0(s11)
   182d4:	004a8a93          	addi	s5,s5,4
   182d8:	004c0c13          	addi	s8,s8,4
   182dc:	eefaece3          	bltu	s5,a5,181d4 <__multiply+0xf0>
   182e0:	03705663          	blez	s7,1830c <__multiply+0x228>
   182e4:	00013703          	ld	a4,0(sp)
   182e8:	ffc72783          	lw	a5,-4(a4) # ffffffffbffffffc <__BSS_END__+0xffffffffbffdb7ac>
   182ec:	ffc70b13          	addi	s6,a4,-4
   182f0:	00078863          	beqz	a5,18300 <__multiply+0x21c>
   182f4:	0180006f          	j	1830c <__multiply+0x228>
   182f8:	000b2783          	lw	a5,0(s6)
   182fc:	00079863          	bnez	a5,1830c <__multiply+0x228>
   18300:	fffb8b9b          	addiw	s7,s7,-1
   18304:	ffcb0b13          	addi	s6,s6,-4
   18308:	fe0b98e3          	bnez	s7,182f8 <__multiply+0x214>
   1830c:	01813783          	ld	a5,24(sp)
   18310:	08813083          	ld	ra,136(sp)
   18314:	08013403          	ld	s0,128(sp)
   18318:	0177aa23          	sw	s7,20(a5)
   1831c:	07813483          	ld	s1,120(sp)
   18320:	07013903          	ld	s2,112(sp)
   18324:	06813983          	ld	s3,104(sp)
   18328:	06013a03          	ld	s4,96(sp)
   1832c:	05813a83          	ld	s5,88(sp)
   18330:	05013b03          	ld	s6,80(sp)
   18334:	04813b83          	ld	s7,72(sp)
   18338:	04013c03          	ld	s8,64(sp)
   1833c:	03813c83          	ld	s9,56(sp)
   18340:	03013d03          	ld	s10,48(sp)
   18344:	02813d83          	ld	s11,40(sp)
   18348:	00078513          	mv	a0,a5
   1834c:	09010113          	addi	sp,sp,144
   18350:	00008067          	ret

0000000000018354 <__pow5mult>:
   18354:	fd010113          	addi	sp,sp,-48
   18358:	02813023          	sd	s0,32(sp)
   1835c:	01313423          	sd	s3,8(sp)
   18360:	01413023          	sd	s4,0(sp)
   18364:	02113423          	sd	ra,40(sp)
   18368:	00913c23          	sd	s1,24(sp)
   1836c:	01213823          	sd	s2,16(sp)
   18370:	00367793          	andi	a5,a2,3
   18374:	00060413          	mv	s0,a2
   18378:	00050993          	mv	s3,a0
   1837c:	00058a13          	mv	s4,a1
   18380:	0c079463          	bnez	a5,18448 <__pow5mult+0xf4>
   18384:	40245413          	srai	s0,s0,0x2
   18388:	000a0913          	mv	s2,s4
   1838c:	06040863          	beqz	s0,183fc <__pow5mult+0xa8>
   18390:	0709b483          	ld	s1,112(s3)
   18394:	0c048e63          	beqz	s1,18470 <__pow5mult+0x11c>
   18398:	00147793          	andi	a5,s0,1
   1839c:	000a0913          	mv	s2,s4
   183a0:	02079063          	bnez	a5,183c0 <__pow5mult+0x6c>
   183a4:	40145413          	srai	s0,s0,0x1
   183a8:	04040a63          	beqz	s0,183fc <__pow5mult+0xa8>
   183ac:	0004b503          	ld	a0,0(s1)
   183b0:	06050863          	beqz	a0,18420 <__pow5mult+0xcc>
   183b4:	00050493          	mv	s1,a0
   183b8:	00147793          	andi	a5,s0,1
   183bc:	fe0784e3          	beqz	a5,183a4 <__pow5mult+0x50>
   183c0:	00048613          	mv	a2,s1
   183c4:	00090593          	mv	a1,s2
   183c8:	00098513          	mv	a0,s3
   183cc:	d19ff0ef          	jal	ra,180e4 <__multiply>
   183d0:	06090863          	beqz	s2,18440 <__pow5mult+0xec>
   183d4:	00892703          	lw	a4,8(s2)
   183d8:	0789b783          	ld	a5,120(s3)
   183dc:	40145413          	srai	s0,s0,0x1
   183e0:	00371713          	slli	a4,a4,0x3
   183e4:	00e787b3          	add	a5,a5,a4
   183e8:	0007b703          	ld	a4,0(a5)
   183ec:	00e93023          	sd	a4,0(s2)
   183f0:	0127b023          	sd	s2,0(a5)
   183f4:	00050913          	mv	s2,a0
   183f8:	fa041ae3          	bnez	s0,183ac <__pow5mult+0x58>
   183fc:	02813083          	ld	ra,40(sp)
   18400:	02013403          	ld	s0,32(sp)
   18404:	00090513          	mv	a0,s2
   18408:	01813483          	ld	s1,24(sp)
   1840c:	01013903          	ld	s2,16(sp)
   18410:	00813983          	ld	s3,8(sp)
   18414:	00013a03          	ld	s4,0(sp)
   18418:	03010113          	addi	sp,sp,48
   1841c:	00008067          	ret
   18420:	00048613          	mv	a2,s1
   18424:	00048593          	mv	a1,s1
   18428:	00098513          	mv	a0,s3
   1842c:	cb9ff0ef          	jal	ra,180e4 <__multiply>
   18430:	00a4b023          	sd	a0,0(s1)
   18434:	00053023          	sd	zero,0(a0)
   18438:	00050493          	mv	s1,a0
   1843c:	f7dff06f          	j	183b8 <__pow5mult+0x64>
   18440:	00050913          	mv	s2,a0
   18444:	f61ff06f          	j	183a4 <__pow5mult+0x50>
   18448:	fff7879b          	addiw	a5,a5,-1
   1844c:	0000a717          	auipc	a4,0xa
   18450:	a6c70713          	addi	a4,a4,-1428 # 21eb8 <p05.3332>
   18454:	00279793          	slli	a5,a5,0x2
   18458:	00f707b3          	add	a5,a4,a5
   1845c:	0007a603          	lw	a2,0(a5)
   18460:	00000693          	li	a3,0
   18464:	889ff0ef          	jal	ra,17cec <__multadd>
   18468:	00050a13          	mv	s4,a0
   1846c:	f19ff06f          	j	18384 <__pow5mult+0x30>
   18470:	00100593          	li	a1,1
   18474:	00098513          	mv	a0,s3
   18478:	fa8ff0ef          	jal	ra,17c20 <_Balloc>
   1847c:	27100793          	li	a5,625
   18480:	00f52c23          	sw	a5,24(a0)
   18484:	00100793          	li	a5,1
   18488:	00f52a23          	sw	a5,20(a0)
   1848c:	06a9b823          	sd	a0,112(s3)
   18490:	00050493          	mv	s1,a0
   18494:	00053023          	sd	zero,0(a0)
   18498:	f01ff06f          	j	18398 <__pow5mult+0x44>

000000000001849c <__lshift>:
   1849c:	fc010113          	addi	sp,sp,-64
   184a0:	01313c23          	sd	s3,24(sp)
   184a4:	0145a983          	lw	s3,20(a1)
   184a8:	01613023          	sd	s6,0(sp)
   184ac:	00c5a783          	lw	a5,12(a1)
   184b0:	40565b1b          	sraiw	s6,a2,0x5
   184b4:	016989bb          	addw	s3,s3,s6
   184b8:	02813823          	sd	s0,48(sp)
   184bc:	02913423          	sd	s1,40(sp)
   184c0:	03213023          	sd	s2,32(sp)
   184c4:	01413823          	sd	s4,16(sp)
   184c8:	01513423          	sd	s5,8(sp)
   184cc:	02113c23          	sd	ra,56(sp)
   184d0:	0019849b          	addiw	s1,s3,1
   184d4:	00058913          	mv	s2,a1
   184d8:	00060a93          	mv	s5,a2
   184dc:	000b0413          	mv	s0,s6
   184e0:	00050a13          	mv	s4,a0
   184e4:	0085a583          	lw	a1,8(a1)
   184e8:	0097d863          	bge	a5,s1,184f8 <__lshift+0x5c>
   184ec:	0017979b          	slliw	a5,a5,0x1
   184f0:	0015859b          	addiw	a1,a1,1
   184f4:	fe97cce3          	blt	a5,s1,184ec <__lshift+0x50>
   184f8:	000a0513          	mv	a0,s4
   184fc:	f24ff0ef          	jal	ra,17c20 <_Balloc>
   18500:	01850713          	addi	a4,a0,24
   18504:	03605c63          	blez	s6,1853c <__lshift+0xa0>
   18508:	fff4041b          	addiw	s0,s0,-1
   1850c:	02041413          	slli	s0,s0,0x20
   18510:	02045413          	srli	s0,s0,0x20
   18514:	00740693          	addi	a3,s0,7
   18518:	00269693          	slli	a3,a3,0x2
   1851c:	00d506b3          	add	a3,a0,a3
   18520:	00070793          	mv	a5,a4
   18524:	00478793          	addi	a5,a5,4
   18528:	fe07ae23          	sw	zero,-4(a5)
   1852c:	fed79ce3          	bne	a5,a3,18524 <__lshift+0x88>
   18530:	00140413          	addi	s0,s0,1
   18534:	00241413          	slli	s0,s0,0x2
   18538:	00870733          	add	a4,a4,s0
   1853c:	01492803          	lw	a6,20(s2)
   18540:	01890793          	addi	a5,s2,24
   18544:	01faf613          	andi	a2,s5,31
   18548:	00281813          	slli	a6,a6,0x2
   1854c:	01078833          	add	a6,a5,a6
   18550:	08060463          	beqz	a2,185d8 <__lshift+0x13c>
   18554:	02000893          	li	a7,32
   18558:	40c888bb          	subw	a7,a7,a2
   1855c:	00000693          	li	a3,0
   18560:	0007a583          	lw	a1,0(a5)
   18564:	00470713          	addi	a4,a4,4
   18568:	00478793          	addi	a5,a5,4
   1856c:	00c595bb          	sllw	a1,a1,a2
   18570:	00b6e6b3          	or	a3,a3,a1
   18574:	fed72e23          	sw	a3,-4(a4)
   18578:	ffc7a683          	lw	a3,-4(a5)
   1857c:	0116d6bb          	srlw	a3,a3,a7
   18580:	ff07e0e3          	bltu	a5,a6,18560 <__lshift+0xc4>
   18584:	00d72023          	sw	a3,0(a4)
   18588:	00068463          	beqz	a3,18590 <__lshift+0xf4>
   1858c:	00048993          	mv	s3,s1
   18590:	00892703          	lw	a4,8(s2)
   18594:	078a3783          	ld	a5,120(s4)
   18598:	03813083          	ld	ra,56(sp)
   1859c:	00371713          	slli	a4,a4,0x3
   185a0:	00e787b3          	add	a5,a5,a4
   185a4:	0007b703          	ld	a4,0(a5)
   185a8:	01352a23          	sw	s3,20(a0)
   185ac:	03013403          	ld	s0,48(sp)
   185b0:	00e93023          	sd	a4,0(s2)
   185b4:	0127b023          	sd	s2,0(a5)
   185b8:	02813483          	ld	s1,40(sp)
   185bc:	02013903          	ld	s2,32(sp)
   185c0:	01813983          	ld	s3,24(sp)
   185c4:	01013a03          	ld	s4,16(sp)
   185c8:	00813a83          	ld	s5,8(sp)
   185cc:	00013b03          	ld	s6,0(sp)
   185d0:	04010113          	addi	sp,sp,64
   185d4:	00008067          	ret
   185d8:	00478793          	addi	a5,a5,4
   185dc:	ffc7a683          	lw	a3,-4(a5)
   185e0:	00470713          	addi	a4,a4,4
   185e4:	fed72e23          	sw	a3,-4(a4)
   185e8:	fb07f4e3          	bgeu	a5,a6,18590 <__lshift+0xf4>
   185ec:	00478793          	addi	a5,a5,4
   185f0:	ffc7a683          	lw	a3,-4(a5)
   185f4:	00470713          	addi	a4,a4,4
   185f8:	fed72e23          	sw	a3,-4(a4)
   185fc:	fd07eee3          	bltu	a5,a6,185d8 <__lshift+0x13c>
   18600:	f91ff06f          	j	18590 <__lshift+0xf4>

0000000000018604 <__mcmp>:
   18604:	00050613          	mv	a2,a0
   18608:	0145a783          	lw	a5,20(a1)
   1860c:	01452503          	lw	a0,20(a0)
   18610:	40f5053b          	subw	a0,a0,a5
   18614:	02051e63          	bnez	a0,18650 <__mcmp+0x4c>
   18618:	00279713          	slli	a4,a5,0x2
   1861c:	01860613          	addi	a2,a2,24
   18620:	01858593          	addi	a1,a1,24
   18624:	00e607b3          	add	a5,a2,a4
   18628:	00e585b3          	add	a1,a1,a4
   1862c:	0080006f          	j	18634 <__mcmp+0x30>
   18630:	02f67063          	bgeu	a2,a5,18650 <__mcmp+0x4c>
   18634:	ffc78793          	addi	a5,a5,-4
   18638:	ffc58593          	addi	a1,a1,-4
   1863c:	0007a683          	lw	a3,0(a5)
   18640:	0005a703          	lw	a4,0(a1)
   18644:	fee686e3          	beq	a3,a4,18630 <__mcmp+0x2c>
   18648:	fff00513          	li	a0,-1
   1864c:	00e6f463          	bgeu	a3,a4,18654 <__mcmp+0x50>
   18650:	00008067          	ret
   18654:	00100513          	li	a0,1
   18658:	00008067          	ret

000000000001865c <__mdiff>:
   1865c:	fd010113          	addi	sp,sp,-48
   18660:	01213823          	sd	s2,16(sp)
   18664:	01462703          	lw	a4,20(a2)
   18668:	0145a903          	lw	s2,20(a1)
   1866c:	02813023          	sd	s0,32(sp)
   18670:	00913c23          	sd	s1,24(sp)
   18674:	01313423          	sd	s3,8(sp)
   18678:	01413023          	sd	s4,0(sp)
   1867c:	02113423          	sd	ra,40(sp)
   18680:	40e9093b          	subw	s2,s2,a4
   18684:	00058993          	mv	s3,a1
   18688:	00060a13          	mv	s4,a2
   1868c:	01858413          	addi	s0,a1,24
   18690:	01860493          	addi	s1,a2,24
   18694:	04091863          	bnez	s2,186e4 <__mdiff+0x88>
   18698:	00271713          	slli	a4,a4,0x2
   1869c:	00e407b3          	add	a5,s0,a4
   186a0:	00e48733          	add	a4,s1,a4
   186a4:	0080006f          	j	186ac <__mdiff+0x50>
   186a8:	16f47663          	bgeu	s0,a5,18814 <__mdiff+0x1b8>
   186ac:	ffc78793          	addi	a5,a5,-4
   186b0:	ffc70713          	addi	a4,a4,-4
   186b4:	0007a583          	lw	a1,0(a5)
   186b8:	00072683          	lw	a3,0(a4)
   186bc:	fed586e3          	beq	a1,a3,186a8 <__mdiff+0x4c>
   186c0:	02d5f663          	bgeu	a1,a3,186ec <__mdiff+0x90>
   186c4:	00040713          	mv	a4,s0
   186c8:	00098793          	mv	a5,s3
   186cc:	00048413          	mv	s0,s1
   186d0:	000a0993          	mv	s3,s4
   186d4:	00070493          	mv	s1,a4
   186d8:	00078a13          	mv	s4,a5
   186dc:	00100913          	li	s2,1
   186e0:	00c0006f          	j	186ec <__mdiff+0x90>
   186e4:	fe0940e3          	bltz	s2,186c4 <__mdiff+0x68>
   186e8:	00000913          	li	s2,0
   186ec:	0089a583          	lw	a1,8(s3)
   186f0:	d30ff0ef          	jal	ra,17c20 <_Balloc>
   186f4:	0149a883          	lw	a7,20(s3)
   186f8:	014a2e83          	lw	t4,20(s4)
   186fc:	00010e37          	lui	t3,0x10
   18700:	00289313          	slli	t1,a7,0x2
   18704:	002e9e93          	slli	t4,t4,0x2
   18708:	01252823          	sw	s2,16(a0)
   1870c:	00640333          	add	t1,s0,t1
   18710:	01d48eb3          	add	t4,s1,t4
   18714:	01850593          	addi	a1,a0,24
   18718:	00000713          	li	a4,0
   1871c:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   18720:	0080006f          	j	18728 <__mdiff+0xcc>
   18724:	00080593          	mv	a1,a6
   18728:	00042683          	lw	a3,0(s0)
   1872c:	0004a603          	lw	a2,0(s1)
   18730:	00458813          	addi	a6,a1,4
   18734:	01c6f7b3          	and	a5,a3,t3
   18738:	00e787bb          	addw	a5,a5,a4
   1873c:	01c67733          	and	a4,a2,t3
   18740:	40e787bb          	subw	a5,a5,a4
   18744:	0106561b          	srliw	a2,a2,0x10
   18748:	0106d71b          	srliw	a4,a3,0x10
   1874c:	40c7073b          	subw	a4,a4,a2
   18750:	4107d69b          	sraiw	a3,a5,0x10
   18754:	00d7073b          	addw	a4,a4,a3
   18758:	0107169b          	slliw	a3,a4,0x10
   1875c:	01c7f7b3          	and	a5,a5,t3
   18760:	00d7e7b3          	or	a5,a5,a3
   18764:	0007879b          	sext.w	a5,a5
   18768:	00448493          	addi	s1,s1,4
   1876c:	fef82e23          	sw	a5,-4(a6)
   18770:	00440413          	addi	s0,s0,4
   18774:	4107571b          	sraiw	a4,a4,0x10
   18778:	fbd4e6e3          	bltu	s1,t4,18724 <__mdiff+0xc8>
   1877c:	06647063          	bgeu	s0,t1,187dc <__mdiff+0x180>
   18780:	00010e37          	lui	t3,0x10
   18784:	00080593          	mv	a1,a6
   18788:	00040613          	mv	a2,s0
   1878c:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   18790:	00062683          	lw	a3,0(a2)
   18794:	00458593          	addi	a1,a1,4
   18798:	00460613          	addi	a2,a2,4
   1879c:	01c6f7b3          	and	a5,a3,t3
   187a0:	00e787bb          	addw	a5,a5,a4
   187a4:	0106d71b          	srliw	a4,a3,0x10
   187a8:	4107d69b          	sraiw	a3,a5,0x10
   187ac:	00d7073b          	addw	a4,a4,a3
   187b0:	0107169b          	slliw	a3,a4,0x10
   187b4:	01c7f7b3          	and	a5,a5,t3
   187b8:	00d7e7b3          	or	a5,a5,a3
   187bc:	0007879b          	sext.w	a5,a5
   187c0:	fef5ae23          	sw	a5,-4(a1)
   187c4:	4107571b          	sraiw	a4,a4,0x10
   187c8:	fc6664e3          	bltu	a2,t1,18790 <__mdiff+0x134>
   187cc:	fff30593          	addi	a1,t1,-1
   187d0:	408585b3          	sub	a1,a1,s0
   187d4:	ffc5f593          	andi	a1,a1,-4
   187d8:	00b805b3          	add	a1,a6,a1
   187dc:	00079a63          	bnez	a5,187f0 <__mdiff+0x194>
   187e0:	ffc58593          	addi	a1,a1,-4
   187e4:	0005a783          	lw	a5,0(a1)
   187e8:	fff8889b          	addiw	a7,a7,-1
   187ec:	fe078ae3          	beqz	a5,187e0 <__mdiff+0x184>
   187f0:	02813083          	ld	ra,40(sp)
   187f4:	02013403          	ld	s0,32(sp)
   187f8:	01152a23          	sw	a7,20(a0)
   187fc:	01813483          	ld	s1,24(sp)
   18800:	01013903          	ld	s2,16(sp)
   18804:	00813983          	ld	s3,8(sp)
   18808:	00013a03          	ld	s4,0(sp)
   1880c:	03010113          	addi	sp,sp,48
   18810:	00008067          	ret
   18814:	00000593          	li	a1,0
   18818:	c08ff0ef          	jal	ra,17c20 <_Balloc>
   1881c:	02813083          	ld	ra,40(sp)
   18820:	02013403          	ld	s0,32(sp)
   18824:	00100793          	li	a5,1
   18828:	00f52a23          	sw	a5,20(a0)
   1882c:	00052c23          	sw	zero,24(a0)
   18830:	01813483          	ld	s1,24(sp)
   18834:	01013903          	ld	s2,16(sp)
   18838:	00813983          	ld	s3,8(sp)
   1883c:	00013a03          	ld	s4,0(sp)
   18840:	03010113          	addi	sp,sp,48
   18844:	00008067          	ret

0000000000018848 <__ulp>:
   18848:	02055513          	srli	a0,a0,0x20
   1884c:	7ff007b7          	lui	a5,0x7ff00
   18850:	00f577b3          	and	a5,a0,a5
   18854:	fcc00537          	lui	a0,0xfcc00
   18858:	00f5053b          	addw	a0,a0,a5
   1885c:	0005079b          	sext.w	a5,a0
   18860:	00f05663          	blez	a5,1886c <__ulp+0x24>
   18864:	02051513          	slli	a0,a0,0x20
   18868:	00008067          	ret
   1886c:	40a0053b          	negw	a0,a0
   18870:	4145579b          	sraiw	a5,a0,0x14
   18874:	01300713          	li	a4,19
   18878:	00f74a63          	blt	a4,a5,1888c <__ulp+0x44>
   1887c:	00080537          	lui	a0,0x80
   18880:	40f5553b          	sraw	a0,a0,a5
   18884:	02051513          	slli	a0,a0,0x20
   18888:	00008067          	ret
   1888c:	fec7871b          	addiw	a4,a5,-20
   18890:	01e00693          	li	a3,30
   18894:	00000513          	li	a0,0
   18898:	00100793          	li	a5,1
   1889c:	00e6c663          	blt	a3,a4,188a8 <__ulp+0x60>
   188a0:	800007b7          	lui	a5,0x80000
   188a4:	00e7d7bb          	srlw	a5,a5,a4
   188a8:	02055513          	srli	a0,a0,0x20
   188ac:	02079793          	slli	a5,a5,0x20
   188b0:	0207d793          	srli	a5,a5,0x20
   188b4:	02051513          	slli	a0,a0,0x20
   188b8:	00f56533          	or	a0,a0,a5
   188bc:	00008067          	ret

00000000000188c0 <__b2d>:
   188c0:	fd010113          	addi	sp,sp,-48
   188c4:	02813023          	sd	s0,32(sp)
   188c8:	01452403          	lw	s0,20(a0) # 80014 <__BSS_END__+0x5b7c4>
   188cc:	01213823          	sd	s2,16(sp)
   188d0:	01850913          	addi	s2,a0,24
   188d4:	00241413          	slli	s0,s0,0x2
   188d8:	00890433          	add	s0,s2,s0
   188dc:	00913c23          	sd	s1,24(sp)
   188e0:	ffc42483          	lw	s1,-4(s0)
   188e4:	01313423          	sd	s3,8(sp)
   188e8:	01413023          	sd	s4,0(sp)
   188ec:	00048513          	mv	a0,s1
   188f0:	00058a13          	mv	s4,a1
   188f4:	02113423          	sd	ra,40(sp)
   188f8:	e88ff0ef          	jal	ra,17f80 <__hi0bits>
   188fc:	02000693          	li	a3,32
   18900:	40a687bb          	subw	a5,a3,a0
   18904:	00fa2023          	sw	a5,0(s4)
   18908:	00a00793          	li	a5,10
   1890c:	ffc40993          	addi	s3,s0,-4
   18910:	0aa7d663          	bge	a5,a0,189bc <__b2d+0xfc>
   18914:	ff55079b          	addiw	a5,a0,-11
   18918:	07397063          	bgeu	s2,s3,18978 <__b2d+0xb8>
   1891c:	ff842703          	lw	a4,-8(s0)
   18920:	06078063          	beqz	a5,18980 <__b2d+0xc0>
   18924:	40f6853b          	subw	a0,a3,a5
   18928:	00f496bb          	sllw	a3,s1,a5
   1892c:	00a754bb          	srlw	s1,a4,a0
   18930:	0096e6b3          	or	a3,a3,s1
   18934:	3ff004b7          	lui	s1,0x3ff00
   18938:	0096e6b3          	or	a3,a3,s1
   1893c:	00f7173b          	sllw	a4,a4,a5
   18940:	ff840613          	addi	a2,s0,-8
   18944:	02069793          	slli	a5,a3,0x20
   18948:	0007069b          	sext.w	a3,a4
   1894c:	00c97a63          	bgeu	s2,a2,18960 <__b2d+0xa0>
   18950:	ff442683          	lw	a3,-12(s0)
   18954:	00a6d53b          	srlw	a0,a3,a0
   18958:	00e566b3          	or	a3,a0,a4
   1895c:	0006869b          	sext.w	a3,a3
   18960:	0207d793          	srli	a5,a5,0x20
   18964:	02069693          	slli	a3,a3,0x20
   18968:	0206d693          	srli	a3,a3,0x20
   1896c:	02079793          	slli	a5,a5,0x20
   18970:	00d7e7b3          	or	a5,a5,a3
   18974:	0240006f          	j	18998 <__b2d+0xd8>
   18978:	00000713          	li	a4,0
   1897c:	08079663          	bnez	a5,18a08 <__b2d+0x148>
   18980:	3ff007b7          	lui	a5,0x3ff00
   18984:	00f4e7b3          	or	a5,s1,a5
   18988:	02071713          	slli	a4,a4,0x20
   1898c:	02075713          	srli	a4,a4,0x20
   18990:	02079793          	slli	a5,a5,0x20
   18994:	00e7e7b3          	or	a5,a5,a4
   18998:	02813083          	ld	ra,40(sp)
   1899c:	02013403          	ld	s0,32(sp)
   189a0:	01813483          	ld	s1,24(sp)
   189a4:	01013903          	ld	s2,16(sp)
   189a8:	00813983          	ld	s3,8(sp)
   189ac:	00013a03          	ld	s4,0(sp)
   189b0:	00078513          	mv	a0,a5
   189b4:	03010113          	addi	sp,sp,48
   189b8:	00008067          	ret
   189bc:	00b00693          	li	a3,11
   189c0:	40a686bb          	subw	a3,a3,a0
   189c4:	3ff00737          	lui	a4,0x3ff00
   189c8:	00d4d7bb          	srlw	a5,s1,a3
   189cc:	00e7e7b3          	or	a5,a5,a4
   189d0:	02079793          	slli	a5,a5,0x20
   189d4:	00000713          	li	a4,0
   189d8:	01397663          	bgeu	s2,s3,189e4 <__b2d+0x124>
   189dc:	ff842703          	lw	a4,-8(s0)
   189e0:	00d7573b          	srlw	a4,a4,a3
   189e4:	0155051b          	addiw	a0,a0,21
   189e8:	00a494bb          	sllw	s1,s1,a0
   189ec:	009764b3          	or	s1,a4,s1
   189f0:	0207d793          	srli	a5,a5,0x20
   189f4:	02049493          	slli	s1,s1,0x20
   189f8:	0204d493          	srli	s1,s1,0x20
   189fc:	02079793          	slli	a5,a5,0x20
   18a00:	0097e7b3          	or	a5,a5,s1
   18a04:	f95ff06f          	j	18998 <__b2d+0xd8>
   18a08:	00f497bb          	sllw	a5,s1,a5
   18a0c:	3ff00537          	lui	a0,0x3ff00
   18a10:	00a7e7b3          	or	a5,a5,a0
   18a14:	02079793          	slli	a5,a5,0x20
   18a18:	00000693          	li	a3,0
   18a1c:	f45ff06f          	j	18960 <__b2d+0xa0>

0000000000018a20 <__d2b>:
   18a20:	fc010113          	addi	sp,sp,-64
   18a24:	02913423          	sd	s1,40(sp)
   18a28:	00058493          	mv	s1,a1
   18a2c:	00100593          	li	a1,1
   18a30:	02813823          	sd	s0,48(sp)
   18a34:	03213023          	sd	s2,32(sp)
   18a38:	01313c23          	sd	s3,24(sp)
   18a3c:	01413823          	sd	s4,16(sp)
   18a40:	02113c23          	sd	ra,56(sp)
   18a44:	00060993          	mv	s3,a2
   18a48:	00068913          	mv	s2,a3
   18a4c:	9d4ff0ef          	jal	ra,17c20 <_Balloc>
   18a50:	4204d793          	srai	a5,s1,0x20
   18a54:	0147d41b          	srliw	s0,a5,0x14
   18a58:	7ff47413          	andi	s0,s0,2047
   18a5c:	02c79793          	slli	a5,a5,0x2c
   18a60:	00050a13          	mv	s4,a0
   18a64:	02c7d793          	srli	a5,a5,0x2c
   18a68:	00040663          	beqz	s0,18a74 <__d2b+0x54>
   18a6c:	00100737          	lui	a4,0x100
   18a70:	00e7e7b3          	or	a5,a5,a4
   18a74:	00f12623          	sw	a5,12(sp)
   18a78:	0004849b          	sext.w	s1,s1
   18a7c:	08048e63          	beqz	s1,18b18 <__d2b+0xf8>
   18a80:	00810513          	addi	a0,sp,8
   18a84:	00912423          	sw	s1,8(sp)
   18a88:	d6cff0ef          	jal	ra,17ff4 <__lo0bits>
   18a8c:	06051063          	bnez	a0,18aec <__d2b+0xcc>
   18a90:	00812703          	lw	a4,8(sp)
   18a94:	00c12783          	lw	a5,12(sp)
   18a98:	00ea2c23          	sw	a4,24(s4)
   18a9c:	00f034b3          	snez	s1,a5
   18aa0:	00148493          	addi	s1,s1,1 # 3ff00001 <__BSS_END__+0x3fedb7b1>
   18aa4:	00fa2e23          	sw	a5,28(s4)
   18aa8:	009a2a23          	sw	s1,20(s4)
   18aac:	08040863          	beqz	s0,18b3c <__d2b+0x11c>
   18ab0:	bcd4041b          	addiw	s0,s0,-1075
   18ab4:	00a4043b          	addw	s0,s0,a0
   18ab8:	03500793          	li	a5,53
   18abc:	0089a023          	sw	s0,0(s3)
   18ac0:	40a7853b          	subw	a0,a5,a0
   18ac4:	00a92023          	sw	a0,0(s2)
   18ac8:	03813083          	ld	ra,56(sp)
   18acc:	03013403          	ld	s0,48(sp)
   18ad0:	000a0513          	mv	a0,s4
   18ad4:	02813483          	ld	s1,40(sp)
   18ad8:	02013903          	ld	s2,32(sp)
   18adc:	01813983          	ld	s3,24(sp)
   18ae0:	01013a03          	ld	s4,16(sp)
   18ae4:	04010113          	addi	sp,sp,64
   18ae8:	00008067          	ret
   18aec:	00c12703          	lw	a4,12(sp)
   18af0:	00812683          	lw	a3,8(sp)
   18af4:	02000793          	li	a5,32
   18af8:	40a787bb          	subw	a5,a5,a0
   18afc:	00f717bb          	sllw	a5,a4,a5
   18b00:	00d7e7b3          	or	a5,a5,a3
   18b04:	00a7573b          	srlw	a4,a4,a0
   18b08:	00fa2c23          	sw	a5,24(s4)
   18b0c:	00e12623          	sw	a4,12(sp)
   18b10:	0007079b          	sext.w	a5,a4
   18b14:	f89ff06f          	j	18a9c <__d2b+0x7c>
   18b18:	00c10513          	addi	a0,sp,12
   18b1c:	cd8ff0ef          	jal	ra,17ff4 <__lo0bits>
   18b20:	00100793          	li	a5,1
   18b24:	00fa2a23          	sw	a5,20(s4)
   18b28:	00c12783          	lw	a5,12(sp)
   18b2c:	0205051b          	addiw	a0,a0,32
   18b30:	00100493          	li	s1,1
   18b34:	00fa2c23          	sw	a5,24(s4)
   18b38:	f6041ce3          	bnez	s0,18ab0 <__d2b+0x90>
   18b3c:	bce5051b          	addiw	a0,a0,-1074
   18b40:	00249793          	slli	a5,s1,0x2
   18b44:	00a9a023          	sw	a0,0(s3)
   18b48:	00fa07b3          	add	a5,s4,a5
   18b4c:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb7c4>
   18b50:	0054949b          	slliw	s1,s1,0x5
   18b54:	c2cff0ef          	jal	ra,17f80 <__hi0bits>
   18b58:	40a484bb          	subw	s1,s1,a0
   18b5c:	00992023          	sw	s1,0(s2)
   18b60:	f69ff06f          	j	18ac8 <__d2b+0xa8>

0000000000018b64 <__ratio>:
   18b64:	fd010113          	addi	sp,sp,-48
   18b68:	00913c23          	sd	s1,24(sp)
   18b6c:	00058493          	mv	s1,a1
   18b70:	00810593          	addi	a1,sp,8
   18b74:	02113423          	sd	ra,40(sp)
   18b78:	02813023          	sd	s0,32(sp)
   18b7c:	01213823          	sd	s2,16(sp)
   18b80:	00050913          	mv	s2,a0
   18b84:	d3dff0ef          	jal	ra,188c0 <__b2d>
   18b88:	00c10593          	addi	a1,sp,12
   18b8c:	00050413          	mv	s0,a0
   18b90:	00048513          	mv	a0,s1
   18b94:	d2dff0ef          	jal	ra,188c0 <__b2d>
   18b98:	0144a703          	lw	a4,20(s1)
   18b9c:	01492783          	lw	a5,20(s2)
   18ba0:	00c12683          	lw	a3,12(sp)
   18ba4:	00050593          	mv	a1,a0
   18ba8:	40e787bb          	subw	a5,a5,a4
   18bac:	00812703          	lw	a4,8(sp)
   18bb0:	0057979b          	slliw	a5,a5,0x5
   18bb4:	40d7073b          	subw	a4,a4,a3
   18bb8:	00e7873b          	addw	a4,a5,a4
   18bbc:	00070793          	mv	a5,a4
   18bc0:	04e05263          	blez	a4,18c04 <__ratio+0xa0>
   18bc4:	02045713          	srli	a4,s0,0x20
   18bc8:	0147979b          	slliw	a5,a5,0x14
   18bcc:	00e787bb          	addw	a5,a5,a4
   18bd0:	fff00713          	li	a4,-1
   18bd4:	02075713          	srli	a4,a4,0x20
   18bd8:	02079793          	slli	a5,a5,0x20
   18bdc:	00877433          	and	s0,a4,s0
   18be0:	00f46433          	or	s0,s0,a5
   18be4:	00040513          	mv	a0,s0
   18be8:	004070ef          	jal	ra,1fbec <__divdf3>
   18bec:	02813083          	ld	ra,40(sp)
   18bf0:	02013403          	ld	s0,32(sp)
   18bf4:	01813483          	ld	s1,24(sp)
   18bf8:	01013903          	ld	s2,16(sp)
   18bfc:	03010113          	addi	sp,sp,48
   18c00:	00008067          	ret
   18c04:	02055713          	srli	a4,a0,0x20
   18c08:	0147979b          	slliw	a5,a5,0x14
   18c0c:	fff00513          	li	a0,-1
   18c10:	40f707bb          	subw	a5,a4,a5
   18c14:	02055513          	srli	a0,a0,0x20
   18c18:	02079793          	slli	a5,a5,0x20
   18c1c:	00b575b3          	and	a1,a0,a1
   18c20:	00f5e5b3          	or	a1,a1,a5
   18c24:	fc1ff06f          	j	18be4 <__ratio+0x80>

0000000000018c28 <_mprec_log10>:
   18c28:	fe010113          	addi	sp,sp,-32
   18c2c:	00813823          	sd	s0,16(sp)
   18c30:	00113c23          	sd	ra,24(sp)
   18c34:	00913423          	sd	s1,8(sp)
   18c38:	01700793          	li	a5,23
   18c3c:	00050413          	mv	s0,a0
   18c40:	04a7d063          	bge	a5,a0,18c80 <_mprec_log10+0x58>
   18c44:	0000c797          	auipc	a5,0xc
   18c48:	b3478793          	addi	a5,a5,-1228 # 24778 <__SDATA_BEGIN__+0x10>
   18c4c:	0007b503          	ld	a0,0(a5)
   18c50:	0000c797          	auipc	a5,0xc
   18c54:	b3078793          	addi	a5,a5,-1232 # 24780 <__SDATA_BEGIN__+0x18>
   18c58:	0007b483          	ld	s1,0(a5)
   18c5c:	fff4041b          	addiw	s0,s0,-1
   18c60:	00048593          	mv	a1,s1
   18c64:	334070ef          	jal	ra,1ff98 <__muldf3>
   18c68:	fe041ae3          	bnez	s0,18c5c <_mprec_log10+0x34>
   18c6c:	01813083          	ld	ra,24(sp)
   18c70:	01013403          	ld	s0,16(sp)
   18c74:	00813483          	ld	s1,8(sp)
   18c78:	02010113          	addi	sp,sp,32
   18c7c:	00008067          	ret
   18c80:	00351413          	slli	s0,a0,0x3
   18c84:	00009797          	auipc	a5,0x9
   18c88:	23478793          	addi	a5,a5,564 # 21eb8 <p05.3332>
   18c8c:	00878433          	add	s0,a5,s0
   18c90:	01043503          	ld	a0,16(s0)
   18c94:	01813083          	ld	ra,24(sp)
   18c98:	01013403          	ld	s0,16(sp)
   18c9c:	00813483          	ld	s1,8(sp)
   18ca0:	02010113          	addi	sp,sp,32
   18ca4:	00008067          	ret

0000000000018ca8 <__copybits>:
   18ca8:	01462683          	lw	a3,20(a2)
   18cac:	fff5859b          	addiw	a1,a1,-1
   18cb0:	4055d59b          	sraiw	a1,a1,0x5
   18cb4:	00158593          	addi	a1,a1,1
   18cb8:	01860793          	addi	a5,a2,24
   18cbc:	00269693          	slli	a3,a3,0x2
   18cc0:	00259593          	slli	a1,a1,0x2
   18cc4:	00d786b3          	add	a3,a5,a3
   18cc8:	00b505b3          	add	a1,a0,a1
   18ccc:	02d7f863          	bgeu	a5,a3,18cfc <__copybits+0x54>
   18cd0:	00050713          	mv	a4,a0
   18cd4:	00478793          	addi	a5,a5,4
   18cd8:	ffc7a803          	lw	a6,-4(a5)
   18cdc:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdb7b4>
   18ce0:	ff072e23          	sw	a6,-4(a4)
   18ce4:	fed7e8e3          	bltu	a5,a3,18cd4 <__copybits+0x2c>
   18ce8:	40c687b3          	sub	a5,a3,a2
   18cec:	fe778793          	addi	a5,a5,-25
   18cf0:	ffc7f793          	andi	a5,a5,-4
   18cf4:	00478793          	addi	a5,a5,4
   18cf8:	00f50533          	add	a0,a0,a5
   18cfc:	00b57863          	bgeu	a0,a1,18d0c <__copybits+0x64>
   18d00:	00450513          	addi	a0,a0,4 # 3ff00004 <__BSS_END__+0x3fedb7b4>
   18d04:	fe052e23          	sw	zero,-4(a0)
   18d08:	feb56ce3          	bltu	a0,a1,18d00 <__copybits+0x58>
   18d0c:	00008067          	ret

0000000000018d10 <__any_on>:
   18d10:	01452703          	lw	a4,20(a0)
   18d14:	4055d613          	srai	a2,a1,0x5
   18d18:	01850693          	addi	a3,a0,24
   18d1c:	02c75a63          	bge	a4,a2,18d50 <__any_on+0x40>
   18d20:	00271793          	slli	a5,a4,0x2
   18d24:	00f687b3          	add	a5,a3,a5
   18d28:	04f6fc63          	bgeu	a3,a5,18d80 <__any_on+0x70>
   18d2c:	ffc7a503          	lw	a0,-4(a5)
   18d30:	ffc78793          	addi	a5,a5,-4
   18d34:	00051a63          	bnez	a0,18d48 <__any_on+0x38>
   18d38:	04f6f263          	bgeu	a3,a5,18d7c <__any_on+0x6c>
   18d3c:	ffc78793          	addi	a5,a5,-4
   18d40:	0007a703          	lw	a4,0(a5)
   18d44:	fe070ae3          	beqz	a4,18d38 <__any_on+0x28>
   18d48:	00100513          	li	a0,1
   18d4c:	00008067          	ret
   18d50:	00261793          	slli	a5,a2,0x2
   18d54:	00f687b3          	add	a5,a3,a5
   18d58:	fce658e3          	bge	a2,a4,18d28 <__any_on+0x18>
   18d5c:	01f5f593          	andi	a1,a1,31
   18d60:	fc0584e3          	beqz	a1,18d28 <__any_on+0x18>
   18d64:	0007a603          	lw	a2,0(a5)
   18d68:	00100513          	li	a0,1
   18d6c:	00b6573b          	srlw	a4,a2,a1
   18d70:	00b715bb          	sllw	a1,a4,a1
   18d74:	fac58ae3          	beq	a1,a2,18d28 <__any_on+0x18>
   18d78:	00008067          	ret
   18d7c:	00008067          	ret
   18d80:	00000513          	li	a0,0
   18d84:	00008067          	ret

0000000000018d88 <_sbrk_r>:
   18d88:	ff010113          	addi	sp,sp,-16
   18d8c:	00813023          	sd	s0,0(sp)
   18d90:	00050413          	mv	s0,a0
   18d94:	00058513          	mv	a0,a1
   18d98:	0000c797          	auipc	a5,0xc
   18d9c:	aa07a823          	sw	zero,-1360(a5) # 24848 <errno>
   18da0:	00113423          	sd	ra,8(sp)
   18da4:	4e1060ef          	jal	ra,1fa84 <_sbrk>
   18da8:	fff00793          	li	a5,-1
   18dac:	00f50a63          	beq	a0,a5,18dc0 <_sbrk_r+0x38>
   18db0:	00813083          	ld	ra,8(sp)
   18db4:	00013403          	ld	s0,0(sp)
   18db8:	01010113          	addi	sp,sp,16
   18dbc:	00008067          	ret
   18dc0:	0000c797          	auipc	a5,0xc
   18dc4:	a8878793          	addi	a5,a5,-1400 # 24848 <errno>
   18dc8:	0007a783          	lw	a5,0(a5)
   18dcc:	fe0782e3          	beqz	a5,18db0 <_sbrk_r+0x28>
   18dd0:	00f42023          	sw	a5,0(s0)
   18dd4:	00813083          	ld	ra,8(sp)
   18dd8:	00013403          	ld	s0,0(sp)
   18ddc:	01010113          	addi	sp,sp,16
   18de0:	00008067          	ret

0000000000018de4 <frexp>:
   18de4:	fe010113          	addi	sp,sp,-32
   18de8:	00813823          	sd	s0,16(sp)
   18dec:	42055693          	srai	a3,a0,0x20
   18df0:	80000437          	lui	s0,0x80000
   18df4:	00913423          	sd	s1,8(sp)
   18df8:	00113c23          	sd	ra,24(sp)
   18dfc:	0006861b          	sext.w	a2,a3
   18e00:	fff44413          	not	s0,s0
   18e04:	00058493          	mv	s1,a1
   18e08:	0005a023          	sw	zero,0(a1)
   18e0c:	008677b3          	and	a5,a2,s0
   18e10:	7ff005b7          	lui	a1,0x7ff00
   18e14:	00050713          	mv	a4,a0
   18e18:	06b7dc63          	bge	a5,a1,18e90 <frexp+0xac>
   18e1c:	00a7e5b3          	or	a1,a5,a0
   18e20:	0005859b          	sext.w	a1,a1
   18e24:	06058663          	beqz	a1,18e90 <frexp+0xac>
   18e28:	7ff005b7          	lui	a1,0x7ff00
   18e2c:	00b67633          	and	a2,a2,a1
   18e30:	00000593          	li	a1,0
   18e34:	02061263          	bnez	a2,18e58 <frexp+0x74>
   18e38:	0000c797          	auipc	a5,0xc
   18e3c:	95078793          	addi	a5,a5,-1712 # 24788 <__SDATA_BEGIN__+0x20>
   18e40:	0007b583          	ld	a1,0(a5)
   18e44:	154070ef          	jal	ra,1ff98 <__muldf3>
   18e48:	42055693          	srai	a3,a0,0x20
   18e4c:	00050713          	mv	a4,a0
   18e50:	0086f7b3          	and	a5,a3,s0
   18e54:	fca00593          	li	a1,-54
   18e58:	80100637          	lui	a2,0x80100
   18e5c:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db7af>
   18e60:	00c6f6b3          	and	a3,a3,a2
   18e64:	3fe00637          	lui	a2,0x3fe00
   18e68:	00c6e6b3          	or	a3,a3,a2
   18e6c:	4147d79b          	sraiw	a5,a5,0x14
   18e70:	fff00613          	li	a2,-1
   18e74:	c027879b          	addiw	a5,a5,-1022
   18e78:	02065613          	srli	a2,a2,0x20
   18e7c:	00b787bb          	addw	a5,a5,a1
   18e80:	02069693          	slli	a3,a3,0x20
   18e84:	00e67733          	and	a4,a2,a4
   18e88:	00f4a023          	sw	a5,0(s1)
   18e8c:	00d76733          	or	a4,a4,a3
   18e90:	01813083          	ld	ra,24(sp)
   18e94:	01013403          	ld	s0,16(sp)
   18e98:	00813483          	ld	s1,8(sp)
   18e9c:	00070513          	mv	a0,a4
   18ea0:	02010113          	addi	sp,sp,32
   18ea4:	00008067          	ret

0000000000018ea8 <_sprintf_r>:
   18ea8:	f0010113          	addi	sp,sp,-256
   18eac:	0d810e13          	addi	t3,sp,216
   18eb0:	0ef13423          	sd	a5,232(sp)
   18eb4:	80000337          	lui	t1,0x80000
   18eb8:	ffff07b7          	lui	a5,0xffff0
   18ebc:	00058e93          	mv	t4,a1
   18ec0:	fff34313          	not	t1,t1
   18ec4:	0cd13c23          	sd	a3,216(sp)
   18ec8:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb9b8>
   18ecc:	01010593          	addi	a1,sp,16
   18ed0:	000e0693          	mv	a3,t3
   18ed4:	0c113423          	sd	ra,200(sp)
   18ed8:	02f12023          	sw	a5,32(sp)
   18edc:	0ee13023          	sd	a4,224(sp)
   18ee0:	0f013823          	sd	a6,240(sp)
   18ee4:	0f113c23          	sd	a7,248(sp)
   18ee8:	01d13823          	sd	t4,16(sp)
   18eec:	03d13423          	sd	t4,40(sp)
   18ef0:	02612823          	sw	t1,48(sp)
   18ef4:	00612e23          	sw	t1,28(sp)
   18ef8:	01c13423          	sd	t3,8(sp)
   18efc:	5a0000ef          	jal	ra,1949c <_svfprintf_r>
   18f00:	01013783          	ld	a5,16(sp)
   18f04:	00078023          	sb	zero,0(a5)
   18f08:	0c813083          	ld	ra,200(sp)
   18f0c:	10010113          	addi	sp,sp,256
   18f10:	00008067          	ret

0000000000018f14 <sprintf>:
   18f14:	00050e93          	mv	t4,a0
   18f18:	75818513          	addi	a0,gp,1880 # 247a8 <_impure_ptr>
   18f1c:	f0010113          	addi	sp,sp,-256
   18f20:	00053503          	ld	a0,0(a0)
   18f24:	0d010e13          	addi	t3,sp,208
   18f28:	0ef13423          	sd	a5,232(sp)
   18f2c:	80000337          	lui	t1,0x80000
   18f30:	ffff07b7          	lui	a5,0xffff0
   18f34:	fff34313          	not	t1,t1
   18f38:	0cc13823          	sd	a2,208(sp)
   18f3c:	0cd13c23          	sd	a3,216(sp)
   18f40:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb9b8>
   18f44:	00058613          	mv	a2,a1
   18f48:	000e0693          	mv	a3,t3
   18f4c:	01010593          	addi	a1,sp,16
   18f50:	0c113423          	sd	ra,200(sp)
   18f54:	02f12023          	sw	a5,32(sp)
   18f58:	0ee13023          	sd	a4,224(sp)
   18f5c:	0f013823          	sd	a6,240(sp)
   18f60:	0f113c23          	sd	a7,248(sp)
   18f64:	01d13823          	sd	t4,16(sp)
   18f68:	03d13423          	sd	t4,40(sp)
   18f6c:	02612823          	sw	t1,48(sp)
   18f70:	00612e23          	sw	t1,28(sp)
   18f74:	01c13423          	sd	t3,8(sp)
   18f78:	524000ef          	jal	ra,1949c <_svfprintf_r>
   18f7c:	01013783          	ld	a5,16(sp)
   18f80:	00078023          	sb	zero,0(a5)
   18f84:	0c813083          	ld	ra,200(sp)
   18f88:	10010113          	addi	sp,sp,256
   18f8c:	00008067          	ret

0000000000018f90 <__sread>:
   18f90:	ff010113          	addi	sp,sp,-16
   18f94:	00813023          	sd	s0,0(sp)
   18f98:	00058413          	mv	s0,a1
   18f9c:	01259583          	lh	a1,18(a1) # 7ff00012 <__BSS_END__+0x7fedb7c2>
   18fa0:	00113423          	sd	ra,8(sp)
   18fa4:	501040ef          	jal	ra,1dca4 <_read_r>
   18fa8:	02054063          	bltz	a0,18fc8 <__sread+0x38>
   18fac:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdb840>
   18fb0:	00813083          	ld	ra,8(sp)
   18fb4:	00a787b3          	add	a5,a5,a0
   18fb8:	08f43823          	sd	a5,144(s0)
   18fbc:	00013403          	ld	s0,0(sp)
   18fc0:	01010113          	addi	sp,sp,16
   18fc4:	00008067          	ret
   18fc8:	01045783          	lhu	a5,16(s0)
   18fcc:	fffff737          	lui	a4,0xfffff
   18fd0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda7af>
   18fd4:	00e7f7b3          	and	a5,a5,a4
   18fd8:	00f41823          	sh	a5,16(s0)
   18fdc:	00813083          	ld	ra,8(sp)
   18fe0:	00013403          	ld	s0,0(sp)
   18fe4:	01010113          	addi	sp,sp,16
   18fe8:	00008067          	ret

0000000000018fec <__seofread>:
   18fec:	00000513          	li	a0,0
   18ff0:	00008067          	ret

0000000000018ff4 <__swrite>:
   18ff4:	01059783          	lh	a5,16(a1)
   18ff8:	fd010113          	addi	sp,sp,-48
   18ffc:	02813023          	sd	s0,32(sp)
   19000:	00913c23          	sd	s1,24(sp)
   19004:	01213823          	sd	s2,16(sp)
   19008:	01313423          	sd	s3,8(sp)
   1900c:	02113423          	sd	ra,40(sp)
   19010:	1007f713          	andi	a4,a5,256
   19014:	00058413          	mv	s0,a1
   19018:	00050493          	mv	s1,a0
   1901c:	00060913          	mv	s2,a2
   19020:	00068993          	mv	s3,a3
   19024:	01259583          	lh	a1,18(a1)
   19028:	02071e63          	bnez	a4,19064 <__swrite+0x70>
   1902c:	fffff737          	lui	a4,0xfffff
   19030:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda7af>
   19034:	00e7f7b3          	and	a5,a5,a4
   19038:	00f41823          	sh	a5,16(s0)
   1903c:	02013403          	ld	s0,32(sp)
   19040:	02813083          	ld	ra,40(sp)
   19044:	00098693          	mv	a3,s3
   19048:	00090613          	mv	a2,s2
   1904c:	00813983          	ld	s3,8(sp)
   19050:	01013903          	ld	s2,16(sp)
   19054:	00048513          	mv	a0,s1
   19058:	01813483          	ld	s1,24(sp)
   1905c:	03010113          	addi	sp,sp,48
   19060:	7910306f          	j	1cff0 <_write_r>
   19064:	00200693          	li	a3,2
   19068:	00000613          	li	a2,0
   1906c:	195040ef          	jal	ra,1da00 <_lseek_r>
   19070:	01041783          	lh	a5,16(s0)
   19074:	01241583          	lh	a1,18(s0)
   19078:	fb5ff06f          	j	1902c <__swrite+0x38>

000000000001907c <__sseek>:
   1907c:	ff010113          	addi	sp,sp,-16
   19080:	00813023          	sd	s0,0(sp)
   19084:	00058413          	mv	s0,a1
   19088:	01259583          	lh	a1,18(a1)
   1908c:	00113423          	sd	ra,8(sp)
   19090:	171040ef          	jal	ra,1da00 <_lseek_r>
   19094:	fff00793          	li	a5,-1
   19098:	02f50463          	beq	a0,a5,190c0 <__sseek+0x44>
   1909c:	01045783          	lhu	a5,16(s0)
   190a0:	00001737          	lui	a4,0x1
   190a4:	08a43823          	sd	a0,144(s0)
   190a8:	00e7e7b3          	or	a5,a5,a4
   190ac:	00f41823          	sh	a5,16(s0)
   190b0:	00813083          	ld	ra,8(sp)
   190b4:	00013403          	ld	s0,0(sp)
   190b8:	01010113          	addi	sp,sp,16
   190bc:	00008067          	ret
   190c0:	01045783          	lhu	a5,16(s0)
   190c4:	fffff737          	lui	a4,0xfffff
   190c8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda7af>
   190cc:	00e7f7b3          	and	a5,a5,a4
   190d0:	00f41823          	sh	a5,16(s0)
   190d4:	00813083          	ld	ra,8(sp)
   190d8:	00013403          	ld	s0,0(sp)
   190dc:	01010113          	addi	sp,sp,16
   190e0:	00008067          	ret

00000000000190e4 <__sclose>:
   190e4:	01259583          	lh	a1,18(a1)
   190e8:	0380406f          	j	1d120 <_close_r>

00000000000190ec <strcmp>:
   190ec:	00b56733          	or	a4,a0,a1
   190f0:	fff00393          	li	t2,-1
   190f4:	00777713          	andi	a4,a4,7
   190f8:	0c071c63          	bnez	a4,191d0 <strcmp+0xe4>
   190fc:	0000b797          	auipc	a5,0xb
   19100:	6947b783          	ld	a5,1684(a5) # 24790 <mask>
   19104:	00053603          	ld	a2,0(a0)
   19108:	0005b683          	ld	a3,0(a1)
   1910c:	00f672b3          	and	t0,a2,a5
   19110:	00f66333          	or	t1,a2,a5
   19114:	00f282b3          	add	t0,t0,a5
   19118:	0062e2b3          	or	t0,t0,t1
   1911c:	0c729e63          	bne	t0,t2,191f8 <strcmp+0x10c>
   19120:	04d61663          	bne	a2,a3,1916c <strcmp+0x80>
   19124:	00853603          	ld	a2,8(a0)
   19128:	0085b683          	ld	a3,8(a1)
   1912c:	00f672b3          	and	t0,a2,a5
   19130:	00f66333          	or	t1,a2,a5
   19134:	00f282b3          	add	t0,t0,a5
   19138:	0062e2b3          	or	t0,t0,t1
   1913c:	0a729a63          	bne	t0,t2,191f0 <strcmp+0x104>
   19140:	02d61663          	bne	a2,a3,1916c <strcmp+0x80>
   19144:	01053603          	ld	a2,16(a0)
   19148:	0105b683          	ld	a3,16(a1)
   1914c:	00f672b3          	and	t0,a2,a5
   19150:	00f66333          	or	t1,a2,a5
   19154:	00f282b3          	add	t0,t0,a5
   19158:	0062e2b3          	or	t0,t0,t1
   1915c:	0a729463          	bne	t0,t2,19204 <strcmp+0x118>
   19160:	01850513          	addi	a0,a0,24
   19164:	01858593          	addi	a1,a1,24
   19168:	f8d60ee3          	beq	a2,a3,19104 <strcmp+0x18>
   1916c:	03061713          	slli	a4,a2,0x30
   19170:	03069793          	slli	a5,a3,0x30
   19174:	02f71a63          	bne	a4,a5,191a8 <strcmp+0xbc>
   19178:	02061713          	slli	a4,a2,0x20
   1917c:	02069793          	slli	a5,a3,0x20
   19180:	02f71463          	bne	a4,a5,191a8 <strcmp+0xbc>
   19184:	01061713          	slli	a4,a2,0x10
   19188:	01069793          	slli	a5,a3,0x10
   1918c:	00f71e63          	bne	a4,a5,191a8 <strcmp+0xbc>
   19190:	03065713          	srli	a4,a2,0x30
   19194:	0306d793          	srli	a5,a3,0x30
   19198:	40f70533          	sub	a0,a4,a5
   1919c:	0ff57593          	andi	a1,a0,255
   191a0:	02059063          	bnez	a1,191c0 <strcmp+0xd4>
   191a4:	00008067          	ret
   191a8:	03075713          	srli	a4,a4,0x30
   191ac:	0307d793          	srli	a5,a5,0x30
   191b0:	40f70533          	sub	a0,a4,a5
   191b4:	0ff57593          	andi	a1,a0,255
   191b8:	00059463          	bnez	a1,191c0 <strcmp+0xd4>
   191bc:	00008067          	ret
   191c0:	0ff77713          	andi	a4,a4,255
   191c4:	0ff7f793          	andi	a5,a5,255
   191c8:	40f70533          	sub	a0,a4,a5
   191cc:	00008067          	ret
   191d0:	00054603          	lbu	a2,0(a0)
   191d4:	0005c683          	lbu	a3,0(a1)
   191d8:	00150513          	addi	a0,a0,1
   191dc:	00158593          	addi	a1,a1,1
   191e0:	00d61463          	bne	a2,a3,191e8 <strcmp+0xfc>
   191e4:	fe0616e3          	bnez	a2,191d0 <strcmp+0xe4>
   191e8:	40d60533          	sub	a0,a2,a3
   191ec:	00008067          	ret
   191f0:	00850513          	addi	a0,a0,8
   191f4:	00858593          	addi	a1,a1,8
   191f8:	fcd61ce3          	bne	a2,a3,191d0 <strcmp+0xe4>
   191fc:	00000513          	li	a0,0
   19200:	00008067          	ret
   19204:	01050513          	addi	a0,a0,16
   19208:	01058593          	addi	a1,a1,16
   1920c:	fcd612e3          	bne	a2,a3,191d0 <strcmp+0xe4>
   19210:	00000513          	li	a0,0
   19214:	00008067          	ret

0000000000019218 <strcpy>:
   19218:	00b567b3          	or	a5,a0,a1
   1921c:	0077f793          	andi	a5,a5,7
   19220:	0a079863          	bnez	a5,192d0 <strcpy+0xb8>
   19224:	0000b797          	auipc	a5,0xb
   19228:	56c78793          	addi	a5,a5,1388 # 24790 <mask>
   1922c:	0007b683          	ld	a3,0(a5)
   19230:	0005b703          	ld	a4,0(a1)
   19234:	fff00613          	li	a2,-1
   19238:	00d777b3          	and	a5,a4,a3
   1923c:	00d787b3          	add	a5,a5,a3
   19240:	00e7e7b3          	or	a5,a5,a4
   19244:	00d7e7b3          	or	a5,a5,a3
   19248:	0ac79263          	bne	a5,a2,192ec <strcpy+0xd4>
   1924c:	00050613          	mv	a2,a0
   19250:	fff00813          	li	a6,-1
   19254:	00860613          	addi	a2,a2,8 # 3fe00008 <__BSS_END__+0x3fddb7b8>
   19258:	00858593          	addi	a1,a1,8
   1925c:	fee63c23          	sd	a4,-8(a2)
   19260:	0005b703          	ld	a4,0(a1)
   19264:	00d777b3          	and	a5,a4,a3
   19268:	00d787b3          	add	a5,a5,a3
   1926c:	00e7e7b3          	or	a5,a5,a4
   19270:	00d7e7b3          	or	a5,a5,a3
   19274:	ff0780e3          	beq	a5,a6,19254 <strcpy+0x3c>
   19278:	0005c783          	lbu	a5,0(a1)
   1927c:	0015c703          	lbu	a4,1(a1)
   19280:	0025c683          	lbu	a3,2(a1)
   19284:	00f60023          	sb	a5,0(a2)
   19288:	04078263          	beqz	a5,192cc <strcpy+0xb4>
   1928c:	00e600a3          	sb	a4,1(a2)
   19290:	02070e63          	beqz	a4,192cc <strcpy+0xb4>
   19294:	0035c783          	lbu	a5,3(a1)
   19298:	00d60123          	sb	a3,2(a2)
   1929c:	02068863          	beqz	a3,192cc <strcpy+0xb4>
   192a0:	0045c703          	lbu	a4,4(a1)
   192a4:	00f601a3          	sb	a5,3(a2)
   192a8:	02078263          	beqz	a5,192cc <strcpy+0xb4>
   192ac:	0055c783          	lbu	a5,5(a1)
   192b0:	00e60223          	sb	a4,4(a2)
   192b4:	00070c63          	beqz	a4,192cc <strcpy+0xb4>
   192b8:	0065c703          	lbu	a4,6(a1)
   192bc:	00f602a3          	sb	a5,5(a2)
   192c0:	00078663          	beqz	a5,192cc <strcpy+0xb4>
   192c4:	00e60323          	sb	a4,6(a2)
   192c8:	02071663          	bnez	a4,192f4 <strcpy+0xdc>
   192cc:	00008067          	ret
   192d0:	00050793          	mv	a5,a0
   192d4:	0005c703          	lbu	a4,0(a1)
   192d8:	00178793          	addi	a5,a5,1
   192dc:	00158593          	addi	a1,a1,1
   192e0:	fee78fa3          	sb	a4,-1(a5)
   192e4:	fe0718e3          	bnez	a4,192d4 <strcpy+0xbc>
   192e8:	00008067          	ret
   192ec:	00050613          	mv	a2,a0
   192f0:	f89ff06f          	j	19278 <strcpy+0x60>
   192f4:	000603a3          	sb	zero,7(a2)
   192f8:	00008067          	ret

00000000000192fc <strlen>:
   192fc:	00757793          	andi	a5,a0,7
   19300:	00050713          	mv	a4,a0
   19304:	06079e63          	bnez	a5,19380 <strlen+0x84>
   19308:	0000b797          	auipc	a5,0xb
   1930c:	48878793          	addi	a5,a5,1160 # 24790 <mask>
   19310:	0007b683          	ld	a3,0(a5)
   19314:	fff00593          	li	a1,-1
   19318:	00870713          	addi	a4,a4,8
   1931c:	ff873603          	ld	a2,-8(a4)
   19320:	00d677b3          	and	a5,a2,a3
   19324:	00d787b3          	add	a5,a5,a3
   19328:	00c7e7b3          	or	a5,a5,a2
   1932c:	00d7e7b3          	or	a5,a5,a3
   19330:	feb784e3          	beq	a5,a1,19318 <strlen+0x1c>
   19334:	ff874783          	lbu	a5,-8(a4)
   19338:	40a706b3          	sub	a3,a4,a0
   1933c:	06078463          	beqz	a5,193a4 <strlen+0xa8>
   19340:	ff974783          	lbu	a5,-7(a4)
   19344:	04078c63          	beqz	a5,1939c <strlen+0xa0>
   19348:	ffa74783          	lbu	a5,-6(a4)
   1934c:	06078463          	beqz	a5,193b4 <strlen+0xb8>
   19350:	ffb74783          	lbu	a5,-5(a4)
   19354:	04078c63          	beqz	a5,193ac <strlen+0xb0>
   19358:	ffc74603          	lbu	a2,-4(a4)
   1935c:	ffd74583          	lbu	a1,-3(a4)
   19360:	ffe74783          	lbu	a5,-2(a4)
   19364:	04060c63          	beqz	a2,193bc <strlen+0xc0>
   19368:	04058e63          	beqz	a1,193c4 <strlen+0xc8>
   1936c:	00f03533          	snez	a0,a5
   19370:	00d50533          	add	a0,a0,a3
   19374:	ffe50513          	addi	a0,a0,-2
   19378:	00008067          	ret
   1937c:	f80686e3          	beqz	a3,19308 <strlen+0xc>
   19380:	00074783          	lbu	a5,0(a4)
   19384:	00170713          	addi	a4,a4,1
   19388:	00777693          	andi	a3,a4,7
   1938c:	fe0798e3          	bnez	a5,1937c <strlen+0x80>
   19390:	40a70733          	sub	a4,a4,a0
   19394:	fff70513          	addi	a0,a4,-1
   19398:	00008067          	ret
   1939c:	ff968513          	addi	a0,a3,-7
   193a0:	00008067          	ret
   193a4:	ff868513          	addi	a0,a3,-8
   193a8:	00008067          	ret
   193ac:	ffb68513          	addi	a0,a3,-5
   193b0:	00008067          	ret
   193b4:	ffa68513          	addi	a0,a3,-6
   193b8:	00008067          	ret
   193bc:	ffc68513          	addi	a0,a3,-4
   193c0:	00008067          	ret
   193c4:	ffd68513          	addi	a0,a3,-3
   193c8:	00008067          	ret

00000000000193cc <strncpy>:
   193cc:	00a5e7b3          	or	a5,a1,a0
   193d0:	0077f793          	andi	a5,a5,7
   193d4:	0a079063          	bnez	a5,19474 <strncpy+0xa8>
   193d8:	00700793          	li	a5,7
   193dc:	08c7fc63          	bgeu	a5,a2,19474 <strncpy+0xa8>
   193e0:	0000b797          	auipc	a5,0xb
   193e4:	38878793          	addi	a5,a5,904 # 24768 <__SDATA_BEGIN__>
   193e8:	0007b303          	ld	t1,0(a5)
   193ec:	0000b797          	auipc	a5,0xb
   193f0:	38478793          	addi	a5,a5,900 # 24770 <__SDATA_BEGIN__+0x8>
   193f4:	0007b883          	ld	a7,0(a5)
   193f8:	00050713          	mv	a4,a0
   193fc:	00700e13          	li	t3,7
   19400:	0005b683          	ld	a3,0(a1)
   19404:	006687b3          	add	a5,a3,t1
   19408:	fff6c813          	not	a6,a3
   1940c:	0107f7b3          	and	a5,a5,a6
   19410:	0117f7b3          	and	a5,a5,a7
   19414:	00079e63          	bnez	a5,19430 <strncpy+0x64>
   19418:	00870713          	addi	a4,a4,8
   1941c:	ff860613          	addi	a2,a2,-8
   19420:	fed73c23          	sd	a3,-8(a4)
   19424:	00858593          	addi	a1,a1,8
   19428:	fcce6ce3          	bltu	t3,a2,19400 <strncpy+0x34>
   1942c:	06060463          	beqz	a2,19494 <strncpy+0xc8>
   19430:	0005c803          	lbu	a6,0(a1)
   19434:	fff60693          	addi	a3,a2,-1
   19438:	00158593          	addi	a1,a1,1
   1943c:	01070023          	sb	a6,0(a4)
   19440:	00170793          	addi	a5,a4,1
   19444:	02080c63          	beqz	a6,1947c <strncpy+0xb0>
   19448:	00c70633          	add	a2,a4,a2
   1944c:	00d706b3          	add	a3,a4,a3
   19450:	0140006f          	j	19464 <strncpy+0x98>
   19454:	fff5c703          	lbu	a4,-1(a1)
   19458:	00178793          	addi	a5,a5,1
   1945c:	fee78fa3          	sb	a4,-1(a5)
   19460:	02070063          	beqz	a4,19480 <strncpy+0xb4>
   19464:	00158593          	addi	a1,a1,1
   19468:	40f68833          	sub	a6,a3,a5
   1946c:	fec794e3          	bne	a5,a2,19454 <strncpy+0x88>
   19470:	00008067          	ret
   19474:	00050713          	mv	a4,a0
   19478:	fb5ff06f          	j	1942c <strncpy+0x60>
   1947c:	00068813          	mv	a6,a3
   19480:	01078733          	add	a4,a5,a6
   19484:	00080a63          	beqz	a6,19498 <strncpy+0xcc>
   19488:	00178793          	addi	a5,a5,1
   1948c:	fe078fa3          	sb	zero,-1(a5)
   19490:	fee79ce3          	bne	a5,a4,19488 <strncpy+0xbc>
   19494:	00008067          	ret
   19498:	00008067          	ret

000000000001949c <_svfprintf_r>:
   1949c:	d8010113          	addi	sp,sp,-640
   194a0:	26113c23          	sd	ra,632(sp)
   194a4:	26813823          	sd	s0,624(sp)
   194a8:	25613023          	sd	s6,576(sp)
   194ac:	00058413          	mv	s0,a1
   194b0:	00b13823          	sd	a1,16(sp)
   194b4:	00060b13          	mv	s6,a2
   194b8:	00d13c23          	sd	a3,24(sp)
   194bc:	26913423          	sd	s1,616(sp)
   194c0:	27213023          	sd	s2,608(sp)
   194c4:	25313c23          	sd	s3,600(sp)
   194c8:	25413823          	sd	s4,592(sp)
   194cc:	25513423          	sd	s5,584(sp)
   194d0:	23713c23          	sd	s7,568(sp)
   194d4:	23813823          	sd	s8,560(sp)
   194d8:	23913423          	sd	s9,552(sp)
   194dc:	23a13023          	sd	s10,544(sp)
   194e0:	21b13c23          	sd	s11,536(sp)
   194e4:	04a13423          	sd	a0,72(sp)
   194e8:	addfd0ef          	jal	ra,16fc4 <_localeconv_r>
   194ec:	00053783          	ld	a5,0(a0)
   194f0:	00078513          	mv	a0,a5
   194f4:	06f13023          	sd	a5,96(sp)
   194f8:	e05ff0ef          	jal	ra,192fc <strlen>
   194fc:	01045783          	lhu	a5,16(s0)
   19500:	04a13823          	sd	a0,80(sp)
   19504:	10013023          	sd	zero,256(sp)
   19508:	10013423          	sd	zero,264(sp)
   1950c:	0807f793          	andi	a5,a5,128
   19510:	00078863          	beqz	a5,19520 <_svfprintf_r+0x84>
   19514:	01843783          	ld	a5,24(s0)
   19518:	00079463          	bnez	a5,19520 <_svfprintf_r+0x84>
   1951c:	5f00106f          	j	1ab0c <_svfprintf_r+0x1670>
   19520:	19010793          	addi	a5,sp,400
   19524:	000b0d93          	mv	s11,s6
   19528:	10f13823          	sd	a5,272(sp)
   1952c:	00078313          	mv	t1,a5
   19530:	000dc783          	lbu	a5,0(s11)
   19534:	12013023          	sd	zero,288(sp)
   19538:	10012c23          	sw	zero,280(sp)
   1953c:	02013823          	sd	zero,48(sp)
   19540:	04013c23          	sd	zero,88(sp)
   19544:	06013823          	sd	zero,112(sp)
   19548:	08013023          	sd	zero,128(sp)
   1954c:	08013823          	sd	zero,144(sp)
   19550:	06013c23          	sd	zero,120(sp)
   19554:	00013423          	sd	zero,8(sp)
   19558:	01000d13          	li	s10,16
   1955c:	00009c17          	auipc	s8,0x9
   19560:	c04c0c13          	addi	s8,s8,-1020 # 22160 <zeroes.4524>
   19564:	04813a83          	ld	s5,72(sp)
   19568:	6c078863          	beqz	a5,19c38 <_svfprintf_r+0x79c>
   1956c:	02500693          	li	a3,37
   19570:	00d79463          	bne	a5,a3,19578 <_svfprintf_r+0xdc>
   19574:	48c0106f          	j	1aa00 <_svfprintf_r+0x1564>
   19578:	000d8413          	mv	s0,s11
   1957c:	00c0006f          	j	19588 <_svfprintf_r+0xec>
   19580:	0cd78663          	beq	a5,a3,1964c <_svfprintf_r+0x1b0>
   19584:	00048413          	mv	s0,s1
   19588:	00144783          	lbu	a5,1(s0)
   1958c:	00140493          	addi	s1,s0,1
   19590:	fe0798e3          	bnez	a5,19580 <_svfprintf_r+0xe4>
   19594:	41b4893b          	subw	s2,s1,s11
   19598:	6a090063          	beqz	s2,19c38 <_svfprintf_r+0x79c>
   1959c:	12013683          	ld	a3,288(sp)
   195a0:	11812783          	lw	a5,280(sp)
   195a4:	01b33023          	sd	s11,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb7b0>
   195a8:	012686b3          	add	a3,a3,s2
   195ac:	0017879b          	addiw	a5,a5,1
   195b0:	01233423          	sd	s2,8(t1)
   195b4:	12d13023          	sd	a3,288(sp)
   195b8:	10f12c23          	sw	a5,280(sp)
   195bc:	0007869b          	sext.w	a3,a5
   195c0:	00700793          	li	a5,7
   195c4:	01030313          	addi	t1,t1,16
   195c8:	08d7c863          	blt	a5,a3,19658 <_svfprintf_r+0x1bc>
   195cc:	00813703          	ld	a4,8(sp)
   195d0:	00144783          	lbu	a5,1(s0)
   195d4:	00e9073b          	addw	a4,s2,a4
   195d8:	00e13423          	sd	a4,8(sp)
   195dc:	64078e63          	beqz	a5,19c38 <_svfprintf_r+0x79c>
   195e0:	00148913          	addi	s2,s1,1
   195e4:	0014c403          	lbu	s0,1(s1)
   195e8:	0c010fa3          	sb	zero,223(sp)
   195ec:	fff00b93          	li	s7,-1
   195f0:	00000993          	li	s3,0
   195f4:	00000493          	li	s1,0
   195f8:	00900a13          	li	s4,9
   195fc:	02a00b13          	li	s6,42
   19600:	00030c93          	mv	s9,t1
   19604:	00190913          	addi	s2,s2,1
   19608:	0004041b          	sext.w	s0,s0
   1960c:	05a00693          	li	a3,90
   19610:	fe04079b          	addiw	a5,s0,-32
   19614:	0007871b          	sext.w	a4,a5
   19618:	1ce6e263          	bltu	a3,a4,197dc <_svfprintf_r+0x340>
   1961c:	02079793          	slli	a5,a5,0x20
   19620:	00009717          	auipc	a4,0x9
   19624:	9c070713          	addi	a4,a4,-1600 # 21fe0 <__mprec_bigtens+0x28>
   19628:	01e7d793          	srli	a5,a5,0x1e
   1962c:	00e787b3          	add	a5,a5,a4
   19630:	0007a783          	lw	a5,0(a5)
   19634:	00e787b3          	add	a5,a5,a4
   19638:	00078067          	jr	a5
   1963c:	0104e493          	ori	s1,s1,16
   19640:	0004849b          	sext.w	s1,s1
   19644:	00094403          	lbu	s0,0(s2)
   19648:	fbdff06f          	j	19604 <_svfprintf_r+0x168>
   1964c:	41b4893b          	subw	s2,s1,s11
   19650:	f80908e3          	beqz	s2,195e0 <_svfprintf_r+0x144>
   19654:	f49ff06f          	j	1959c <_svfprintf_r+0x100>
   19658:	01013583          	ld	a1,16(sp)
   1965c:	11010613          	addi	a2,sp,272
   19660:	000a8513          	mv	a0,s5
   19664:	57d040ef          	jal	ra,1e3e0 <__ssprint_r>
   19668:	02051a63          	bnez	a0,1969c <_svfprintf_r+0x200>
   1966c:	19010313          	addi	t1,sp,400
   19670:	f5dff06f          	j	195cc <_svfprintf_r+0x130>
   19674:	01013583          	ld	a1,16(sp)
   19678:	11010613          	addi	a2,sp,272
   1967c:	000a8513          	mv	a0,s5
   19680:	561040ef          	jal	ra,1e3e0 <__ssprint_r>
   19684:	58050663          	beqz	a0,19c10 <_svfprintf_r+0x774>
   19688:	02013783          	ld	a5,32(sp)
   1968c:	00078863          	beqz	a5,1969c <_svfprintf_r+0x200>
   19690:	02013583          	ld	a1,32(sp)
   19694:	04813503          	ld	a0,72(sp)
   19698:	86dfa0ef          	jal	ra,13f04 <_free_r>
   1969c:	01013783          	ld	a5,16(sp)
   196a0:	0107d783          	lhu	a5,16(a5)
   196a4:	0407f793          	andi	a5,a5,64
   196a8:	00078463          	beqz	a5,196b0 <_svfprintf_r+0x214>
   196ac:	2c80206f          	j	1b974 <_svfprintf_r+0x24d8>
   196b0:	27813083          	ld	ra,632(sp)
   196b4:	27013403          	ld	s0,624(sp)
   196b8:	00813503          	ld	a0,8(sp)
   196bc:	26813483          	ld	s1,616(sp)
   196c0:	26013903          	ld	s2,608(sp)
   196c4:	25813983          	ld	s3,600(sp)
   196c8:	25013a03          	ld	s4,592(sp)
   196cc:	24813a83          	ld	s5,584(sp)
   196d0:	24013b03          	ld	s6,576(sp)
   196d4:	23813b83          	ld	s7,568(sp)
   196d8:	23013c03          	ld	s8,560(sp)
   196dc:	22813c83          	ld	s9,552(sp)
   196e0:	22013d03          	ld	s10,544(sp)
   196e4:	21813d83          	ld	s11,536(sp)
   196e8:	28010113          	addi	sp,sp,640
   196ec:	00008067          	ret
   196f0:	01813683          	ld	a3,24(sp)
   196f4:	00008797          	auipc	a5,0x8
   196f8:	4cc78793          	addi	a5,a5,1228 # 21bc0 <zeroes.4539+0x68>
   196fc:	04f13c23          	sd	a5,88(sp)
   19700:	0204f793          	andi	a5,s1,32
   19704:	000c8313          	mv	t1,s9
   19708:	00868713          	addi	a4,a3,8
   1970c:	10078863          	beqz	a5,1981c <_svfprintf_r+0x380>
   19710:	0006bb03          	ld	s6,0(a3)
   19714:	0014f793          	andi	a5,s1,1
   19718:	00078e63          	beqz	a5,19734 <_svfprintf_r+0x298>
   1971c:	000b0c63          	beqz	s6,19734 <_svfprintf_r+0x298>
   19720:	0024e493          	ori	s1,s1,2
   19724:	03000793          	li	a5,48
   19728:	0ef10023          	sb	a5,224(sp)
   1972c:	0e8100a3          	sb	s0,225(sp)
   19730:	0004849b          	sext.w	s1,s1
   19734:	bff4f813          	andi	a6,s1,-1025
   19738:	00080a1b          	sext.w	s4,a6
   1973c:	00e13c23          	sd	a4,24(sp)
   19740:	00200793          	li	a5,2
   19744:	0c010fa3          	sb	zero,223(sp)
   19748:	fff00713          	li	a4,-1
   1974c:	32eb8263          	beq	s7,a4,19a70 <_svfprintf_r+0x5d4>
   19750:	f7fa7493          	andi	s1,s4,-129
   19754:	0004849b          	sext.w	s1,s1
   19758:	660b10e3          	bnez	s6,1a5b8 <_svfprintf_r+0x111c>
   1975c:	000b8463          	beqz	s7,19764 <_svfprintf_r+0x2c8>
   19760:	0500106f          	j	1a7b0 <_svfprintf_r+0x1314>
   19764:	2a079663          	bnez	a5,19a10 <_svfprintf_r+0x574>
   19768:	001a7c93          	andi	s9,s4,1
   1976c:	18c10d93          	addi	s11,sp,396
   19770:	000c8463          	beqz	s9,19778 <_svfprintf_r+0x2dc>
   19774:	2e40106f          	j	1aa58 <_svfprintf_r+0x15bc>
   19778:	000c8a1b          	sext.w	s4,s9
   1977c:	017cd463          	bge	s9,s7,19784 <_svfprintf_r+0x2e8>
   19780:	000b8a1b          	sext.w	s4,s7
   19784:	0df14783          	lbu	a5,223(sp)
   19788:	02013023          	sd	zero,32(sp)
   1978c:	04013023          	sd	zero,64(sp)
   19790:	02013c23          	sd	zero,56(sp)
   19794:	02013423          	sd	zero,40(sp)
   19798:	36078a63          	beqz	a5,19b0c <_svfprintf_r+0x670>
   1979c:	001a0a1b          	addiw	s4,s4,1
   197a0:	36c0006f          	j	19b0c <_svfprintf_r+0x670>
   197a4:	00000993          	li	s3,0
   197a8:	00190913          	addi	s2,s2,1
   197ac:	fff94703          	lbu	a4,-1(s2)
   197b0:	0029979b          	slliw	a5,s3,0x2
   197b4:	013787bb          	addw	a5,a5,s3
   197b8:	fd04041b          	addiw	s0,s0,-48
   197bc:	0017979b          	slliw	a5,a5,0x1
   197c0:	fd07061b          	addiw	a2,a4,-48
   197c4:	00f409bb          	addw	s3,s0,a5
   197c8:	0007041b          	sext.w	s0,a4
   197cc:	fcca7ee3          	bgeu	s4,a2,197a8 <_svfprintf_r+0x30c>
   197d0:	fe04079b          	addiw	a5,s0,-32
   197d4:	0007871b          	sext.w	a4,a5
   197d8:	e4e6f2e3          	bgeu	a3,a4,1961c <_svfprintf_r+0x180>
   197dc:	000c8313          	mv	t1,s9
   197e0:	44040c63          	beqz	s0,19c38 <_svfprintf_r+0x79c>
   197e4:	12810423          	sb	s0,296(sp)
   197e8:	0c010fa3          	sb	zero,223(sp)
   197ec:	00100a13          	li	s4,1
   197f0:	00100c93          	li	s9,1
   197f4:	12810d93          	addi	s11,sp,296
   197f8:	3000006f          	j	19af8 <_svfprintf_r+0x65c>
   197fc:	01813683          	ld	a3,24(sp)
   19800:	00008797          	auipc	a5,0x8
   19804:	3d878793          	addi	a5,a5,984 # 21bd8 <zeroes.4539+0x80>
   19808:	04f13c23          	sd	a5,88(sp)
   1980c:	0204f793          	andi	a5,s1,32
   19810:	000c8313          	mv	t1,s9
   19814:	00868713          	addi	a4,a3,8
   19818:	ee079ce3          	bnez	a5,19710 <_svfprintf_r+0x274>
   1981c:	0104f793          	andi	a5,s1,16
   19820:	00078463          	beqz	a5,19828 <_svfprintf_r+0x38c>
   19824:	2840106f          	j	1aaa8 <_svfprintf_r+0x160c>
   19828:	01813683          	ld	a3,24(sp)
   1982c:	0404f793          	andi	a5,s1,64
   19830:	0006ab03          	lw	s6,0(a3)
   19834:	00079463          	bnez	a5,1983c <_svfprintf_r+0x3a0>
   19838:	0e50106f          	j	1b11c <_svfprintf_r+0x1c80>
   1983c:	030b1b13          	slli	s6,s6,0x30
   19840:	030b5b13          	srli	s6,s6,0x30
   19844:	ed1ff06f          	j	19714 <_svfprintf_r+0x278>
   19848:	00094403          	lbu	s0,0(s2)
   1984c:	0044e493          	ori	s1,s1,4
   19850:	0004849b          	sext.w	s1,s1
   19854:	db1ff06f          	j	19604 <_svfprintf_r+0x168>
   19858:	00094403          	lbu	s0,0(s2)
   1985c:	00190793          	addi	a5,s2,1
   19860:	01641463          	bne	s0,s6,19868 <_svfprintf_r+0x3cc>
   19864:	2e00206f          	j	1bb44 <_svfprintf_r+0x26a8>
   19868:	fd04071b          	addiw	a4,s0,-48
   1986c:	00078913          	mv	s2,a5
   19870:	00000b93          	li	s7,0
   19874:	d8ea6ee3          	bltu	s4,a4,19610 <_svfprintf_r+0x174>
   19878:	00190913          	addi	s2,s2,1
   1987c:	002b979b          	slliw	a5,s7,0x2
   19880:	fff94603          	lbu	a2,-1(s2)
   19884:	017787bb          	addw	a5,a5,s7
   19888:	0017979b          	slliw	a5,a5,0x1
   1988c:	00e78bbb          	addw	s7,a5,a4
   19890:	fd06071b          	addiw	a4,a2,-48
   19894:	feea72e3          	bgeu	s4,a4,19878 <_svfprintf_r+0x3dc>
   19898:	00060413          	mv	s0,a2
   1989c:	d75ff06f          	j	19610 <_svfprintf_r+0x174>
   198a0:	0804e493          	ori	s1,s1,128
   198a4:	0004849b          	sext.w	s1,s1
   198a8:	00094403          	lbu	s0,0(s2)
   198ac:	d59ff06f          	j	19604 <_svfprintf_r+0x168>
   198b0:	01813783          	ld	a5,24(sp)
   198b4:	0c010fa3          	sb	zero,223(sp)
   198b8:	000c8313          	mv	t1,s9
   198bc:	0007bd83          	ld	s11,0(a5)
   198c0:	00878b13          	addi	s6,a5,8
   198c4:	000d9463          	bnez	s11,198cc <_svfprintf_r+0x430>
   198c8:	2740106f          	j	1ab3c <_svfprintf_r+0x16a0>
   198cc:	fff00793          	li	a5,-1
   198d0:	00fb9463          	bne	s7,a5,198d8 <_svfprintf_r+0x43c>
   198d4:	7780106f          	j	1b04c <_svfprintf_r+0x1bb0>
   198d8:	000b8613          	mv	a2,s7
   198dc:	00000593          	li	a1,0
   198e0:	000d8513          	mv	a0,s11
   198e4:	01913c23          	sd	s9,24(sp)
   198e8:	a40fe0ef          	jal	ra,17b28 <memchr>
   198ec:	02a13023          	sd	a0,32(sp)
   198f0:	01813303          	ld	t1,24(sp)
   198f4:	00051463          	bnez	a0,198fc <_svfprintf_r+0x460>
   198f8:	3d10106f          	j	1b4c8 <_svfprintf_r+0x202c>
   198fc:	02013783          	ld	a5,32(sp)
   19900:	01613c23          	sd	s6,24(sp)
   19904:	02013023          	sd	zero,32(sp)
   19908:	41b78cbb          	subw	s9,a5,s11
   1990c:	fffcca13          	not	s4,s9
   19910:	0df14783          	lbu	a5,223(sp)
   19914:	43fa5a13          	srai	s4,s4,0x3f
   19918:	014cfa33          	and	s4,s9,s4
   1991c:	04013023          	sd	zero,64(sp)
   19920:	02013c23          	sd	zero,56(sp)
   19924:	02013423          	sd	zero,40(sp)
   19928:	000a0a1b          	sext.w	s4,s4
   1992c:	00000b93          	li	s7,0
   19930:	e60796e3          	bnez	a5,1979c <_svfprintf_r+0x300>
   19934:	1d80006f          	j	19b0c <_svfprintf_r+0x670>
   19938:	01813703          	ld	a4,24(sp)
   1993c:	0104e813          	ori	a6,s1,16
   19940:	000c8313          	mv	t1,s9
   19944:	0008049b          	sext.w	s1,a6
   19948:	00870713          	addi	a4,a4,8
   1994c:	01813783          	ld	a5,24(sp)
   19950:	0007bb03          	ld	s6,0(a5)
   19954:	00e13c23          	sd	a4,24(sp)
   19958:	bff4f813          	andi	a6,s1,-1025
   1995c:	00080a1b          	sext.w	s4,a6
   19960:	00000793          	li	a5,0
   19964:	de1ff06f          	j	19744 <_svfprintf_r+0x2a8>
   19968:	01813783          	ld	a5,24(sp)
   1996c:	0104e813          	ori	a6,s1,16
   19970:	000c8313          	mv	t1,s9
   19974:	00080a1b          	sext.w	s4,a6
   19978:	00878713          	addi	a4,a5,8
   1997c:	01813783          	ld	a5,24(sp)
   19980:	0007bb03          	ld	s6,0(a5)
   19984:	00100793          	li	a5,1
   19988:	00e13c23          	sd	a4,24(sp)
   1998c:	db9ff06f          	j	19744 <_svfprintf_r+0x2a8>
   19990:	00094403          	lbu	s0,0(s2)
   19994:	06800793          	li	a5,104
   19998:	00f41463          	bne	s0,a5,199a0 <_svfprintf_r+0x504>
   1999c:	15c0106f          	j	1aaf8 <_svfprintf_r+0x165c>
   199a0:	0404e493          	ori	s1,s1,64
   199a4:	0004849b          	sext.w	s1,s1
   199a8:	c5dff06f          	j	19604 <_svfprintf_r+0x168>
   199ac:	01813703          	ld	a4,24(sp)
   199b0:	0204f793          	andi	a5,s1,32
   199b4:	000c8313          	mv	t1,s9
   199b8:	00870713          	addi	a4,a4,8
   199bc:	00078463          	beqz	a5,199c4 <_svfprintf_r+0x528>
   199c0:	0a80106f          	j	1aa68 <_svfprintf_r+0x15cc>
   199c4:	0104f793          	andi	a5,s1,16
   199c8:	00078463          	beqz	a5,199d0 <_svfprintf_r+0x534>
   199cc:	09c0106f          	j	1aa68 <_svfprintf_r+0x15cc>
   199d0:	0404f793          	andi	a5,s1,64
   199d4:	00079463          	bnez	a5,199dc <_svfprintf_r+0x540>
   199d8:	7100106f          	j	1b0e8 <_svfprintf_r+0x1c4c>
   199dc:	01813783          	ld	a5,24(sp)
   199e0:	00048a13          	mv	s4,s1
   199e4:	00e13c23          	sd	a4,24(sp)
   199e8:	00079b03          	lh	s6,0(a5)
   199ec:	000b0793          	mv	a5,s6
   199f0:	0607c463          	bltz	a5,19a58 <_svfprintf_r+0x5bc>
   199f4:	fff00793          	li	a5,-1
   199f8:	06fb8ce3          	beq	s7,a5,1a270 <_svfprintf_r+0xdd4>
   199fc:	f7fa7813          	andi	a6,s4,-129
   19a00:	0008049b          	sext.w	s1,a6
   19a04:	060b14e3          	bnez	s6,1a26c <_svfprintf_r+0xdd0>
   19a08:	000b8463          	beqz	s7,19a10 <_svfprintf_r+0x574>
   19a0c:	0c50106f          	j	1b2d0 <_svfprintf_r+0x1e34>
   19a10:	00000b93          	li	s7,0
   19a14:	00000c93          	li	s9,0
   19a18:	18c10d93          	addi	s11,sp,396
   19a1c:	d5dff06f          	j	19778 <_svfprintf_r+0x2dc>
   19a20:	0084e493          	ori	s1,s1,8
   19a24:	0004849b          	sext.w	s1,s1
   19a28:	00094403          	lbu	s0,0(s2)
   19a2c:	bd9ff06f          	j	19604 <_svfprintf_r+0x168>
   19a30:	01813783          	ld	a5,24(sp)
   19a34:	0104e813          	ori	a6,s1,16
   19a38:	000c8313          	mv	t1,s9
   19a3c:	00080a1b          	sext.w	s4,a6
   19a40:	00878713          	addi	a4,a5,8
   19a44:	01813783          	ld	a5,24(sp)
   19a48:	0007b783          	ld	a5,0(a5)
   19a4c:	00e13c23          	sd	a4,24(sp)
   19a50:	00078b13          	mv	s6,a5
   19a54:	fa07d0e3          	bgez	a5,199f4 <_svfprintf_r+0x558>
   19a58:	02d00793          	li	a5,45
   19a5c:	0cf10fa3          	sb	a5,223(sp)
   19a60:	fff00713          	li	a4,-1
   19a64:	41600b33          	neg	s6,s6
   19a68:	00100793          	li	a5,1
   19a6c:	ceeb92e3          	bne	s7,a4,19750 <_svfprintf_r+0x2b4>
   19a70:	00100713          	li	a4,1
   19a74:	7ee78e63          	beq	a5,a4,1a270 <_svfprintf_r+0xdd4>
   19a78:	00200713          	li	a4,2
   19a7c:	54e784e3          	beq	a5,a4,1a7c4 <_svfprintf_r+0x1328>
   19a80:	18c10c93          	addi	s9,sp,396
   19a84:	000c8693          	mv	a3,s9
   19a88:	0080006f          	j	19a90 <_svfprintf_r+0x5f4>
   19a8c:	000d8693          	mv	a3,s11
   19a90:	007b7793          	andi	a5,s6,7
   19a94:	03078793          	addi	a5,a5,48
   19a98:	fef68fa3          	sb	a5,-1(a3)
   19a9c:	003b5b13          	srli	s6,s6,0x3
   19aa0:	fff68d93          	addi	s11,a3,-1
   19aa4:	fe0b14e3          	bnez	s6,19a8c <_svfprintf_r+0x5f0>
   19aa8:	001a7613          	andi	a2,s4,1
   19aac:	00060ce3          	beqz	a2,1a2c4 <_svfprintf_r+0xe28>
   19ab0:	03000613          	li	a2,48
   19ab4:	00c788e3          	beq	a5,a2,1a2c4 <_svfprintf_r+0xe28>
   19ab8:	ffe68693          	addi	a3,a3,-2
   19abc:	fecd8fa3          	sb	a2,-1(s11)
   19ac0:	40dc8cbb          	subw	s9,s9,a3
   19ac4:	000a0493          	mv	s1,s4
   19ac8:	00068d93          	mv	s11,a3
   19acc:	cadff06f          	j	19778 <_svfprintf_r+0x2dc>
   19ad0:	01813703          	ld	a4,24(sp)
   19ad4:	000c8313          	mv	t1,s9
   19ad8:	0c010fa3          	sb	zero,223(sp)
   19adc:	00072783          	lw	a5,0(a4)
   19ae0:	00870713          	addi	a4,a4,8
   19ae4:	00e13c23          	sd	a4,24(sp)
   19ae8:	12f10423          	sb	a5,296(sp)
   19aec:	00100a13          	li	s4,1
   19af0:	00100c93          	li	s9,1
   19af4:	12810d93          	addi	s11,sp,296
   19af8:	02013023          	sd	zero,32(sp)
   19afc:	00000b93          	li	s7,0
   19b00:	04013023          	sd	zero,64(sp)
   19b04:	02013c23          	sd	zero,56(sp)
   19b08:	02013423          	sd	zero,40(sp)
   19b0c:	0024fe93          	andi	t4,s1,2
   19b10:	000e8e9b          	sext.w	t4,t4
   19b14:	000e8463          	beqz	t4,19b1c <_svfprintf_r+0x680>
   19b18:	002a0a1b          	addiw	s4,s4,2
   19b1c:	0844ff13          	andi	t5,s1,132
   19b20:	12013783          	ld	a5,288(sp)
   19b24:	000f1663          	bnez	t5,19b30 <_svfprintf_r+0x694>
   19b28:	4149883b          	subw	a6,s3,s4
   19b2c:	29004ae3          	bgtz	a6,1a5c0 <_svfprintf_r+0x1124>
   19b30:	0df14683          	lbu	a3,223(sp)
   19b34:	02068c63          	beqz	a3,19b6c <_svfprintf_r+0x6d0>
   19b38:	11812683          	lw	a3,280(sp)
   19b3c:	0df10613          	addi	a2,sp,223
   19b40:	00c33023          	sd	a2,0(t1)
   19b44:	0016869b          	addiw	a3,a3,1
   19b48:	00100613          	li	a2,1
   19b4c:	00178793          	addi	a5,a5,1
   19b50:	00c33423          	sd	a2,8(t1)
   19b54:	10d12c23          	sw	a3,280(sp)
   19b58:	0006861b          	sext.w	a2,a3
   19b5c:	12f13023          	sd	a5,288(sp)
   19b60:	00700693          	li	a3,7
   19b64:	01030313          	addi	t1,t1,16
   19b68:	0ec6ca63          	blt	a3,a2,19c5c <_svfprintf_r+0x7c0>
   19b6c:	020e8c63          	beqz	t4,19ba4 <_svfprintf_r+0x708>
   19b70:	11812683          	lw	a3,280(sp)
   19b74:	0e010613          	addi	a2,sp,224
   19b78:	00c33023          	sd	a2,0(t1)
   19b7c:	0016869b          	addiw	a3,a3,1
   19b80:	00200613          	li	a2,2
   19b84:	00278793          	addi	a5,a5,2
   19b88:	00c33423          	sd	a2,8(t1)
   19b8c:	10d12c23          	sw	a3,280(sp)
   19b90:	0006861b          	sext.w	a2,a3
   19b94:	12f13023          	sd	a5,288(sp)
   19b98:	00700693          	li	a3,7
   19b9c:	01030313          	addi	t1,t1,16
   19ba0:	32c6cae3          	blt	a3,a2,1a6d4 <_svfprintf_r+0x1238>
   19ba4:	08000693          	li	a3,128
   19ba8:	04df08e3          	beq	t5,a3,1a3f8 <_svfprintf_r+0xf5c>
   19bac:	419b8bbb          	subw	s7,s7,s9
   19bb0:	137048e3          	bgtz	s7,1a4e0 <_svfprintf_r+0x1044>
   19bb4:	1004f693          	andi	a3,s1,256
   19bb8:	70069c63          	bnez	a3,1a2d0 <_svfprintf_r+0xe34>
   19bbc:	11812703          	lw	a4,280(sp)
   19bc0:	019787b3          	add	a5,a5,s9
   19bc4:	01b33023          	sd	s11,0(t1)
   19bc8:	0017069b          	addiw	a3,a4,1
   19bcc:	01933423          	sd	s9,8(t1)
   19bd0:	12f13023          	sd	a5,288(sp)
   19bd4:	10d12c23          	sw	a3,280(sp)
   19bd8:	00700713          	li	a4,7
   19bdc:	1ad74c63          	blt	a4,a3,19d94 <_svfprintf_r+0x8f8>
   19be0:	01030313          	addi	t1,t1,16
   19be4:	0044f493          	andi	s1,s1,4
   19be8:	00048663          	beqz	s1,19bf4 <_svfprintf_r+0x758>
   19bec:	4149843b          	subw	s0,s3,s4
   19bf0:	308048e3          	bgtz	s0,1a700 <_svfprintf_r+0x1264>
   19bf4:	00098713          	mv	a4,s3
   19bf8:	0149d463          	bge	s3,s4,19c00 <_svfprintf_r+0x764>
   19bfc:	000a0713          	mv	a4,s4
   19c00:	00813683          	ld	a3,8(sp)
   19c04:	00d7073b          	addw	a4,a4,a3
   19c08:	00e13423          	sd	a4,8(sp)
   19c0c:	a60794e3          	bnez	a5,19674 <_svfprintf_r+0x1d8>
   19c10:	02013783          	ld	a5,32(sp)
   19c14:	10012c23          	sw	zero,280(sp)
   19c18:	00078863          	beqz	a5,19c28 <_svfprintf_r+0x78c>
   19c1c:	02013583          	ld	a1,32(sp)
   19c20:	000a8513          	mv	a0,s5
   19c24:	ae0fa0ef          	jal	ra,13f04 <_free_r>
   19c28:	19010313          	addi	t1,sp,400
   19c2c:	00090d93          	mv	s11,s2
   19c30:	000dc783          	lbu	a5,0(s11)
   19c34:	92079ce3          	bnez	a5,1956c <_svfprintf_r+0xd0>
   19c38:	12013783          	ld	a5,288(sp)
   19c3c:	a60780e3          	beqz	a5,1969c <_svfprintf_r+0x200>
   19c40:	01013403          	ld	s0,16(sp)
   19c44:	04813503          	ld	a0,72(sp)
   19c48:	11010613          	addi	a2,sp,272
   19c4c:	00040593          	mv	a1,s0
   19c50:	790040ef          	jal	ra,1e3e0 <__ssprint_r>
   19c54:	01045783          	lhu	a5,16(s0)
   19c58:	a4dff06f          	j	196a4 <_svfprintf_r+0x208>
   19c5c:	01013583          	ld	a1,16(sp)
   19c60:	11010613          	addi	a2,sp,272
   19c64:	000a8513          	mv	a0,s5
   19c68:	09e13423          	sd	t5,136(sp)
   19c6c:	07d13423          	sd	t4,104(sp)
   19c70:	770040ef          	jal	ra,1e3e0 <__ssprint_r>
   19c74:	a0051ae3          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   19c78:	12013783          	ld	a5,288(sp)
   19c7c:	19010313          	addi	t1,sp,400
   19c80:	08813f03          	ld	t5,136(sp)
   19c84:	06813e83          	ld	t4,104(sp)
   19c88:	ee5ff06f          	j	19b6c <_svfprintf_r+0x6d0>
   19c8c:	11812583          	lw	a1,280(sp)
   19c90:	03013703          	ld	a4,48(sp)
   19c94:	00178c93          	addi	s9,a5,1
   19c98:	00100613          	li	a2,1
   19c9c:	0015879b          	addiw	a5,a1,1
   19ca0:	01b33023          	sd	s11,0(t1)
   19ca4:	00078693          	mv	a3,a5
   19ca8:	01030413          	addi	s0,t1,16
   19cac:	4ce650e3          	bge	a2,a4,1a96c <_svfprintf_r+0x14d0>
   19cb0:	00100613          	li	a2,1
   19cb4:	10d12c23          	sw	a3,280(sp)
   19cb8:	00c33423          	sd	a2,8(t1)
   19cbc:	13913023          	sd	s9,288(sp)
   19cc0:	00700693          	li	a3,7
   19cc4:	54f6c2e3          	blt	a3,a5,1aa08 <_svfprintf_r+0x156c>
   19cc8:	0017869b          	addiw	a3,a5,1
   19ccc:	05013783          	ld	a5,80(sp)
   19cd0:	06013703          	ld	a4,96(sp)
   19cd4:	10d12c23          	sw	a3,280(sp)
   19cd8:	00fc8cb3          	add	s9,s9,a5
   19cdc:	00f43423          	sd	a5,8(s0)
   19ce0:	00e43023          	sd	a4,0(s0)
   19ce4:	0006879b          	sext.w	a5,a3
   19ce8:	13913023          	sd	s9,288(sp)
   19cec:	00700693          	li	a3,7
   19cf0:	01040413          	addi	s0,s0,16
   19cf4:	52f6cee3          	blt	a3,a5,1aa30 <_svfprintf_r+0x1594>
   19cf8:	0017889b          	addiw	a7,a5,1
   19cfc:	04f13023          	sd	a5,64(sp)
   19d00:	10013503          	ld	a0,256(sp)
   19d04:	03013783          	ld	a5,48(sp)
   19d08:	10813583          	ld	a1,264(sp)
   19d0c:	01040313          	addi	t1,s0,16
   19d10:	00000613          	li	a2,0
   19d14:	00000693          	li	a3,0
   19d18:	00088b1b          	sext.w	s6,a7
   19d1c:	03113c23          	sd	a7,56(sp)
   19d20:	02613423          	sd	t1,40(sp)
   19d24:	fff78b9b          	addiw	s7,a5,-1
   19d28:	5c4060ef          	jal	ra,202ec <__eqtf2>
   19d2c:	02813303          	ld	t1,40(sp)
   19d30:	03813883          	ld	a7,56(sp)
   19d34:	460500e3          	beqz	a0,1a994 <_svfprintf_r+0x14f8>
   19d38:	001d8713          	addi	a4,s11,1
   19d3c:	017c8cb3          	add	s9,s9,s7
   19d40:	00e43023          	sd	a4,0(s0)
   19d44:	01743423          	sd	s7,8(s0)
   19d48:	13913023          	sd	s9,288(sp)
   19d4c:	11112c23          	sw	a7,280(sp)
   19d50:	00700713          	li	a4,7
   19d54:	01675463          	bge	a4,s6,19d5c <_svfprintf_r+0x8c0>
   19d58:	0000106f          	j	1ad58 <_svfprintf_r+0x18bc>
   19d5c:	04013783          	ld	a5,64(sp)
   19d60:	02040713          	addi	a4,s0,32
   19d64:	00030413          	mv	s0,t1
   19d68:	00278b1b          	addiw	s6,a5,2
   19d6c:	00070313          	mv	t1,a4
   19d70:	07013683          	ld	a3,112(sp)
   19d74:	0f010713          	addi	a4,sp,240
   19d78:	00e43023          	sd	a4,0(s0)
   19d7c:	019687b3          	add	a5,a3,s9
   19d80:	00d43423          	sd	a3,8(s0)
   19d84:	12f13023          	sd	a5,288(sp)
   19d88:	11612c23          	sw	s6,280(sp)
   19d8c:	00700713          	li	a4,7
   19d90:	e5675ae3          	bge	a4,s6,19be4 <_svfprintf_r+0x748>
   19d94:	01013583          	ld	a1,16(sp)
   19d98:	11010613          	addi	a2,sp,272
   19d9c:	000a8513          	mv	a0,s5
   19da0:	640040ef          	jal	ra,1e3e0 <__ssprint_r>
   19da4:	8e0512e3          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   19da8:	12013783          	ld	a5,288(sp)
   19dac:	19010313          	addi	t1,sp,400
   19db0:	e35ff06f          	j	19be4 <_svfprintf_r+0x748>
   19db4:	0084f793          	andi	a5,s1,8
   19db8:	000c8313          	mv	t1,s9
   19dbc:	4c0782e3          	beqz	a5,1aa80 <_svfprintf_r+0x15e4>
   19dc0:	01813783          	ld	a5,24(sp)
   19dc4:	00f78793          	addi	a5,a5,15
   19dc8:	ff07f793          	andi	a5,a5,-16
   19dcc:	0007b683          	ld	a3,0(a5)
   19dd0:	0087b703          	ld	a4,8(a5)
   19dd4:	01078793          	addi	a5,a5,16
   19dd8:	00f13c23          	sd	a5,24(sp)
   19ddc:	10d13023          	sd	a3,256(sp)
   19de0:	10e13423          	sd	a4,264(sp)
   19de4:	10010513          	addi	a0,sp,256
   19de8:	02613023          	sd	t1,32(sp)
   19dec:	97cfd0ef          	jal	ra,16f68 <_ldcheck>
   19df0:	0ea12423          	sw	a0,232(sp)
   19df4:	00200793          	li	a5,2
   19df8:	02013303          	ld	t1,32(sp)
   19dfc:	00f51463          	bne	a0,a5,19e04 <_svfprintf_r+0x968>
   19e00:	1500106f          	j	1af50 <_svfprintf_r+0x1ab4>
   19e04:	00100793          	li	a5,1
   19e08:	00f51463          	bne	a0,a5,19e10 <_svfprintf_r+0x974>
   19e0c:	3200106f          	j	1b12c <_svfprintf_r+0x1c90>
   19e10:	06100793          	li	a5,97
   19e14:	00f41463          	bne	s0,a5,19e1c <_svfprintf_r+0x980>
   19e18:	2710106f          	j	1b888 <_svfprintf_r+0x23ec>
   19e1c:	04100793          	li	a5,65
   19e20:	00f41463          	bne	s0,a5,19e28 <_svfprintf_r+0x98c>
   19e24:	7600106f          	j	1b584 <_svfprintf_r+0x20e8>
   19e28:	fdf47713          	andi	a4,s0,-33
   19e2c:	fff00793          	li	a5,-1
   19e30:	02e13c23          	sd	a4,56(sp)
   19e34:	00fb9463          	bne	s7,a5,19e3c <_svfprintf_r+0x9a0>
   19e38:	4900106f          	j	1b2c8 <_svfprintf_r+0x1e2c>
   19e3c:	04700793          	li	a5,71
   19e40:	00f71463          	bne	a4,a5,19e48 <_svfprintf_r+0x9ac>
   19e44:	2e90106f          	j	1b92c <_svfprintf_r+0x2490>
   19e48:	10813c83          	ld	s9,264(sp)
   19e4c:	1004e793          	ori	a5,s1,256
   19e50:	04913023          	sd	s1,64(sp)
   19e54:	0007879b          	sext.w	a5,a5
   19e58:	10013e83          	ld	t4,256(sp)
   19e5c:	000cd463          	bgez	s9,19e64 <_svfprintf_r+0x9c8>
   19e60:	1890106f          	j	1b7e8 <_svfprintf_r+0x234c>
   19e64:	06013423          	sd	zero,104(sp)
   19e68:	00078493          	mv	s1,a5
   19e6c:	02013023          	sd	zero,32(sp)
   19e70:	03813703          	ld	a4,56(sp)
   19e74:	04600793          	li	a5,70
   19e78:	00f71463          	bne	a4,a5,19e80 <_svfprintf_r+0x9e4>
   19e7c:	5000106f          	j	1b37c <_svfprintf_r+0x1ee0>
   19e80:	04500793          	li	a5,69
   19e84:	02613823          	sd	t1,48(sp)
   19e88:	00f71463          	bne	a4,a5,19e90 <_svfprintf_r+0x9f4>
   19e8c:	20d0106f          	j	1b898 <_svfprintf_r+0x23fc>
   19e90:	0e810793          	addi	a5,sp,232
   19e94:	000b8713          	mv	a4,s7
   19e98:	000e8593          	mv	a1,t4
   19e9c:	0f810893          	addi	a7,sp,248
   19ea0:	0ec10813          	addi	a6,sp,236
   19ea4:	00200693          	li	a3,2
   19ea8:	000c8613          	mv	a2,s9
   19eac:	000a8513          	mv	a0,s5
   19eb0:	03d13423          	sd	t4,40(sp)
   19eb4:	d95fb0ef          	jal	ra,15c48 <_ldtoa_r>
   19eb8:	03813703          	ld	a4,56(sp)
   19ebc:	04700793          	li	a5,71
   19ec0:	00050d93          	mv	s11,a0
   19ec4:	02813e83          	ld	t4,40(sp)
   19ec8:	03013303          	ld	t1,48(sp)
   19ecc:	00f70463          	beq	a4,a5,19ed4 <_svfprintf_r+0xa38>
   19ed0:	4990106f          	j	1bb68 <_svfprintf_r+0x26cc>
   19ed4:	04013783          	ld	a5,64(sp)
   19ed8:	01750a33          	add	s4,a0,s7
   19edc:	0017f793          	andi	a5,a5,1
   19ee0:	00078463          	beqz	a5,19ee8 <_svfprintf_r+0xa4c>
   19ee4:	4e80106f          	j	1b3cc <_svfprintf_r+0x1f30>
   19ee8:	0f813783          	ld	a5,248(sp)
   19eec:	41b787bb          	subw	a5,a5,s11
   19ef0:	02f13823          	sd	a5,48(sp)
   19ef4:	0e812703          	lw	a4,232(sp)
   19ef8:	04700793          	li	a5,71
   19efc:	02e13423          	sd	a4,40(sp)
   19f00:	03813703          	ld	a4,56(sp)
   19f04:	00f71463          	bne	a4,a5,19f0c <_svfprintf_r+0xa70>
   19f08:	3fc0106f          	j	1b304 <_svfprintf_r+0x1e68>
   19f0c:	03813703          	ld	a4,56(sp)
   19f10:	04600793          	li	a5,70
   19f14:	00f71463          	bne	a4,a5,19f1c <_svfprintf_r+0xa80>
   19f18:	6440106f          	j	1b55c <_svfprintf_r+0x20c0>
   19f1c:	02813783          	ld	a5,40(sp)
   19f20:	03813703          	ld	a4,56(sp)
   19f24:	04100613          	li	a2,65
   19f28:	fff78a1b          	addiw	s4,a5,-1
   19f2c:	0f412423          	sw	s4,232(sp)
   19f30:	0ff47793          	andi	a5,s0,255
   19f34:	00000693          	li	a3,0
   19f38:	00c71863          	bne	a4,a2,19f48 <_svfprintf_r+0xaac>
   19f3c:	00f7879b          	addiw	a5,a5,15
   19f40:	0ff7f793          	andi	a5,a5,255
   19f44:	00100693          	li	a3,1
   19f48:	0ef10823          	sb	a5,240(sp)
   19f4c:	02b00793          	li	a5,43
   19f50:	000a5a63          	bgez	s4,19f64 <_svfprintf_r+0xac8>
   19f54:	02813783          	ld	a5,40(sp)
   19f58:	00100a13          	li	s4,1
   19f5c:	40fa0a3b          	subw	s4,s4,a5
   19f60:	02d00793          	li	a5,45
   19f64:	0ef108a3          	sb	a5,241(sp)
   19f68:	00900793          	li	a5,9
   19f6c:	0147c463          	blt	a5,s4,19f74 <_svfprintf_r+0xad8>
   19f70:	3190106f          	j	1ba88 <_svfprintf_r+0x25ec>
   19f74:	0ff10b13          	addi	s6,sp,255
   19f78:	000b0c93          	mv	s9,s6
   19f7c:	06300493          	li	s1,99
   19f80:	00030b93          	mv	s7,t1
   19f84:	00c0006f          	j	19f90 <_svfprintf_r+0xaf4>
   19f88:	00060c93          	mv	s9,a2
   19f8c:	00050a13          	mv	s4,a0
   19f90:	00a00593          	li	a1,10
   19f94:	000a0513          	mv	a0,s4
   19f98:	959f60ef          	jal	ra,108f0 <__moddi3>
   19f9c:	0305051b          	addiw	a0,a0,48
   19fa0:	feac8fa3          	sb	a0,-1(s9)
   19fa4:	00a00593          	li	a1,10
   19fa8:	000a0513          	mv	a0,s4
   19fac:	8c1f60ef          	jal	ra,1086c <__divdi3>
   19fb0:	fffc8613          	addi	a2,s9,-1
   19fb4:	0005051b          	sext.w	a0,a0
   19fb8:	fd44c8e3          	blt	s1,s4,19f88 <_svfprintf_r+0xaec>
   19fbc:	0305079b          	addiw	a5,a0,48
   19fc0:	0ff7f793          	andi	a5,a5,255
   19fc4:	ffec8693          	addi	a3,s9,-2
   19fc8:	fef60fa3          	sb	a5,-1(a2)
   19fcc:	000b8313          	mv	t1,s7
   19fd0:	0166e463          	bltu	a3,s6,19fd8 <_svfprintf_r+0xb3c>
   19fd4:	3a10106f          	j	1bb74 <_svfprintf_r+0x26d8>
   19fd8:	0f210613          	addi	a2,sp,242
   19fdc:	0080006f          	j	19fe4 <_svfprintf_r+0xb48>
   19fe0:	0006c783          	lbu	a5,0(a3)
   19fe4:	00160613          	addi	a2,a2,1
   19fe8:	00168693          	addi	a3,a3,1
   19fec:	fef60fa3          	sb	a5,-1(a2)
   19ff0:	ff6698e3          	bne	a3,s6,19fe0 <_svfprintf_r+0xb44>
   19ff4:	10110793          	addi	a5,sp,257
   19ff8:	419787b3          	sub	a5,a5,s9
   19ffc:	0f210713          	addi	a4,sp,242
   1a000:	00f707b3          	add	a5,a4,a5
   1a004:	0f010693          	addi	a3,sp,240
   1a008:	40d787bb          	subw	a5,a5,a3
   1a00c:	06f13823          	sd	a5,112(sp)
   1a010:	07013783          	ld	a5,112(sp)
   1a014:	03013703          	ld	a4,48(sp)
   1a018:	00100693          	li	a3,1
   1a01c:	00f70cbb          	addw	s9,a4,a5
   1a020:	000c8793          	mv	a5,s9
   1a024:	00e6c463          	blt	a3,a4,1a02c <_svfprintf_r+0xb90>
   1a028:	2c50106f          	j	1baec <_svfprintf_r+0x2650>
   1a02c:	05013703          	ld	a4,80(sp)
   1a030:	00e78cbb          	addw	s9,a5,a4
   1a034:	04013783          	ld	a5,64(sp)
   1a038:	fffcca13          	not	s4,s9
   1a03c:	43fa5a13          	srai	s4,s4,0x3f
   1a040:	bff7f493          	andi	s1,a5,-1025
   1a044:	0004849b          	sext.w	s1,s1
   1a048:	014cfa33          	and	s4,s9,s4
   1a04c:	1004e493          	ori	s1,s1,256
   1a050:	000a0a1b          	sext.w	s4,s4
   1a054:	04013023          	sd	zero,64(sp)
   1a058:	02013c23          	sd	zero,56(sp)
   1a05c:	02013423          	sd	zero,40(sp)
   1a060:	06813783          	ld	a5,104(sp)
   1a064:	00079463          	bnez	a5,1a06c <_svfprintf_r+0xbd0>
   1a068:	3b40106f          	j	1b41c <_svfprintf_r+0x1f80>
   1a06c:	02d00793          	li	a5,45
   1a070:	0cf10fa3          	sb	a5,223(sp)
   1a074:	00000b93          	li	s7,0
   1a078:	001a0a1b          	addiw	s4,s4,1
   1a07c:	a91ff06f          	j	19b0c <_svfprintf_r+0x670>
   1a080:	02b00793          	li	a5,43
   1a084:	0cf10fa3          	sb	a5,223(sp)
   1a088:	00094403          	lbu	s0,0(s2)
   1a08c:	d78ff06f          	j	19604 <_svfprintf_r+0x168>
   1a090:	01813783          	ld	a5,24(sp)
   1a094:	00094403          	lbu	s0,0(s2)
   1a098:	0007a983          	lw	s3,0(a5)
   1a09c:	00878793          	addi	a5,a5,8
   1a0a0:	00f13c23          	sd	a5,24(sp)
   1a0a4:	d609d063          	bgez	s3,19604 <_svfprintf_r+0x168>
   1a0a8:	413009bb          	negw	s3,s3
   1a0ac:	fa0ff06f          	j	1984c <_svfprintf_r+0x3b0>
   1a0b0:	000a8513          	mv	a0,s5
   1a0b4:	f11fc0ef          	jal	ra,16fc4 <_localeconv_r>
   1a0b8:	00853783          	ld	a5,8(a0)
   1a0bc:	00078513          	mv	a0,a5
   1a0c0:	06f13c23          	sd	a5,120(sp)
   1a0c4:	a38ff0ef          	jal	ra,192fc <strlen>
   1a0c8:	08a13823          	sd	a0,144(sp)
   1a0cc:	00050413          	mv	s0,a0
   1a0d0:	000a8513          	mv	a0,s5
   1a0d4:	ef1fc0ef          	jal	ra,16fc4 <_localeconv_r>
   1a0d8:	01053783          	ld	a5,16(a0)
   1a0dc:	08f13023          	sd	a5,128(sp)
   1a0e0:	18040ce3          	beqz	s0,1aa78 <_svfprintf_r+0x15dc>
   1a0e4:	00094403          	lbu	s0,0(s2)
   1a0e8:	d0078e63          	beqz	a5,19604 <_svfprintf_r+0x168>
   1a0ec:	0007c783          	lbu	a5,0(a5)
   1a0f0:	d0078a63          	beqz	a5,19604 <_svfprintf_r+0x168>
   1a0f4:	4004e493          	ori	s1,s1,1024
   1a0f8:	0004849b          	sext.w	s1,s1
   1a0fc:	d08ff06f          	j	19604 <_svfprintf_r+0x168>
   1a100:	0014e493          	ori	s1,s1,1
   1a104:	0004849b          	sext.w	s1,s1
   1a108:	00094403          	lbu	s0,0(s2)
   1a10c:	cf8ff06f          	j	19604 <_svfprintf_r+0x168>
   1a110:	0df14783          	lbu	a5,223(sp)
   1a114:	00094403          	lbu	s0,0(s2)
   1a118:	ce079663          	bnez	a5,19604 <_svfprintf_r+0x168>
   1a11c:	02000793          	li	a5,32
   1a120:	0cf10fa3          	sb	a5,223(sp)
   1a124:	ce0ff06f          	j	19604 <_svfprintf_r+0x168>
   1a128:	01813703          	ld	a4,24(sp)
   1a12c:	0204f793          	andi	a5,s1,32
   1a130:	000c8313          	mv	t1,s9
   1a134:	00870713          	addi	a4,a4,8
   1a138:	12079ce3          	bnez	a5,1aa70 <_svfprintf_r+0x15d4>
   1a13c:	0104f793          	andi	a5,s1,16
   1a140:	120798e3          	bnez	a5,1aa70 <_svfprintf_r+0x15d4>
   1a144:	01813683          	ld	a3,24(sp)
   1a148:	0404f793          	andi	a5,s1,64
   1a14c:	0006ab03          	lw	s6,0(a3)
   1a150:	76078ee3          	beqz	a5,1b0cc <_svfprintf_r+0x1c30>
   1a154:	030b1b13          	slli	s6,s6,0x30
   1a158:	030b5b13          	srli	s6,s6,0x30
   1a15c:	00e13c23          	sd	a4,24(sp)
   1a160:	00048a13          	mv	s4,s1
   1a164:	00100793          	li	a5,1
   1a168:	ddcff06f          	j	19744 <_svfprintf_r+0x2a8>
   1a16c:	0204e493          	ori	s1,s1,32
   1a170:	0004849b          	sext.w	s1,s1
   1a174:	00094403          	lbu	s0,0(s2)
   1a178:	c8cff06f          	j	19604 <_svfprintf_r+0x168>
   1a17c:	01813703          	ld	a4,24(sp)
   1a180:	ffff87b7          	lui	a5,0xffff8
   1a184:	8307c793          	xori	a5,a5,-2000
   1a188:	0ef11023          	sh	a5,224(sp)
   1a18c:	00870793          	addi	a5,a4,8
   1a190:	0024e813          	ori	a6,s1,2
   1a194:	00f13c23          	sd	a5,24(sp)
   1a198:	00008797          	auipc	a5,0x8
   1a19c:	a2878793          	addi	a5,a5,-1496 # 21bc0 <zeroes.4539+0x68>
   1a1a0:	04f13c23          	sd	a5,88(sp)
   1a1a4:	000c8313          	mv	t1,s9
   1a1a8:	00073b03          	ld	s6,0(a4)
   1a1ac:	00080a1b          	sext.w	s4,a6
   1a1b0:	00200793          	li	a5,2
   1a1b4:	07800413          	li	s0,120
   1a1b8:	d8cff06f          	j	19744 <_svfprintf_r+0x2a8>
   1a1bc:	01813703          	ld	a4,24(sp)
   1a1c0:	0204f793          	andi	a5,s1,32
   1a1c4:	000c8313          	mv	t1,s9
   1a1c8:	00870713          	addi	a4,a4,8
   1a1cc:	f8079063          	bnez	a5,1994c <_svfprintf_r+0x4b0>
   1a1d0:	0104f793          	andi	a5,s1,16
   1a1d4:	f6079c63          	bnez	a5,1994c <_svfprintf_r+0x4b0>
   1a1d8:	01813683          	ld	a3,24(sp)
   1a1dc:	0404f793          	andi	a5,s1,64
   1a1e0:	0006ab03          	lw	s6,0(a3)
   1a1e4:	720782e3          	beqz	a5,1b108 <_svfprintf_r+0x1c6c>
   1a1e8:	030b1b13          	slli	s6,s6,0x30
   1a1ec:	030b5b13          	srli	s6,s6,0x30
   1a1f0:	00e13c23          	sd	a4,24(sp)
   1a1f4:	f64ff06f          	j	19958 <_svfprintf_r+0x4bc>
   1a1f8:	01813683          	ld	a3,24(sp)
   1a1fc:	0204f793          	andi	a5,s1,32
   1a200:	000c8313          	mv	t1,s9
   1a204:	0006b703          	ld	a4,0(a3)
   1a208:	00868693          	addi	a3,a3,8
   1a20c:	00d13c23          	sd	a3,24(sp)
   1a210:	04079663          	bnez	a5,1a25c <_svfprintf_r+0xdc0>
   1a214:	0104f793          	andi	a5,s1,16
   1a218:	04079263          	bnez	a5,1a25c <_svfprintf_r+0xdc0>
   1a21c:	0404f793          	andi	a5,s1,64
   1a220:	00078463          	beqz	a5,1a228 <_svfprintf_r+0xd8c>
   1a224:	00c0106f          	j	1b230 <_svfprintf_r+0x1d94>
   1a228:	2004f493          	andi	s1,s1,512
   1a22c:	00813783          	ld	a5,8(sp)
   1a230:	00049463          	bnez	s1,1a238 <_svfprintf_r+0xd9c>
   1a234:	6ec0106f          	j	1b920 <_svfprintf_r+0x2484>
   1a238:	00f70023          	sb	a5,0(a4)
   1a23c:	00090d93          	mv	s11,s2
   1a240:	9f1ff06f          	j	19c30 <_svfprintf_r+0x794>
   1a244:	00094403          	lbu	s0,0(s2)
   1a248:	06c00793          	li	a5,108
   1a24c:	08f40ce3          	beq	s0,a5,1aae4 <_svfprintf_r+0x1648>
   1a250:	0104e493          	ori	s1,s1,16
   1a254:	0004849b          	sext.w	s1,s1
   1a258:	bacff06f          	j	19604 <_svfprintf_r+0x168>
   1a25c:	00813783          	ld	a5,8(sp)
   1a260:	00090d93          	mv	s11,s2
   1a264:	00f73023          	sd	a5,0(a4)
   1a268:	9c9ff06f          	j	19c30 <_svfprintf_r+0x794>
   1a26c:	00048a13          	mv	s4,s1
   1a270:	00900793          	li	a5,9
   1a274:	3f67e4e3          	bltu	a5,s6,1ae5c <_svfprintf_r+0x19c0>
   1a278:	030b0b1b          	addiw	s6,s6,48
   1a27c:	196105a3          	sb	s6,395(sp)
   1a280:	000a0493          	mv	s1,s4
   1a284:	00100c93          	li	s9,1
   1a288:	18b10d93          	addi	s11,sp,395
   1a28c:	cecff06f          	j	19778 <_svfprintf_r+0x2dc>
   1a290:	0ff00793          	li	a5,255
   1a294:	42f686e3          	beq	a3,a5,1aec0 <_svfprintf_r+0x1a24>
   1a298:	00900793          	li	a5,9
   1a29c:	7337e8e3          	bltu	a5,s3,1b1cc <_svfprintf_r+0x1d30>
   1a2a0:	09213023          	sd	s2,128(sp)
   1a2a4:	000a8313          	mv	t1,s5
   1a2a8:	03813983          	ld	s3,56(sp)
   1a2ac:	000c8a93          	mv	s5,s9
   1a2b0:	02013903          	ld	s2,32(sp)
   1a2b4:	000d8c93          	mv	s9,s11
   1a2b8:	00040d93          	mv	s11,s0
   1a2bc:	02813403          	ld	s0,40(sp)
   1a2c0:	02913823          	sd	s1,48(sp)
   1a2c4:	41bc8cbb          	subw	s9,s9,s11
   1a2c8:	000a0493          	mv	s1,s4
   1a2cc:	cacff06f          	j	19778 <_svfprintf_r+0x2dc>
   1a2d0:	06500693          	li	a3,101
   1a2d4:	9a86dce3          	bge	a3,s0,19c8c <_svfprintf_r+0x7f0>
   1a2d8:	10013503          	ld	a0,256(sp)
   1a2dc:	10813583          	ld	a1,264(sp)
   1a2e0:	00000613          	li	a2,0
   1a2e4:	00000693          	li	a3,0
   1a2e8:	08613423          	sd	t1,136(sp)
   1a2ec:	06f13423          	sd	a5,104(sp)
   1a2f0:	7fd050ef          	jal	ra,202ec <__eqtf2>
   1a2f4:	06813783          	ld	a5,104(sp)
   1a2f8:	08813303          	ld	t1,136(sp)
   1a2fc:	4e051e63          	bnez	a0,1a7f8 <_svfprintf_r+0x135c>
   1a300:	11812703          	lw	a4,280(sp)
   1a304:	00008697          	auipc	a3,0x8
   1a308:	8f468693          	addi	a3,a3,-1804 # 21bf8 <zeroes.4539+0xa0>
   1a30c:	00178793          	addi	a5,a5,1
   1a310:	0017071b          	addiw	a4,a4,1
   1a314:	00d33023          	sd	a3,0(t1)
   1a318:	00100693          	li	a3,1
   1a31c:	00d33423          	sd	a3,8(t1)
   1a320:	12f13023          	sd	a5,288(sp)
   1a324:	0007069b          	sext.w	a3,a4
   1a328:	10e12c23          	sw	a4,280(sp)
   1a32c:	00700793          	li	a5,7
   1a330:	01030313          	addi	t1,t1,16
   1a334:	3ad7c4e3          	blt	a5,a3,1aedc <_svfprintf_r+0x1a40>
   1a338:	0e812783          	lw	a5,232(sp)
   1a33c:	03013703          	ld	a4,48(sp)
   1a340:	00e7ca63          	blt	a5,a4,1a354 <_svfprintf_r+0xeb8>
   1a344:	0014f793          	andi	a5,s1,1
   1a348:	00079663          	bnez	a5,1a354 <_svfprintf_r+0xeb8>
   1a34c:	12013783          	ld	a5,288(sp)
   1a350:	895ff06f          	j	19be4 <_svfprintf_r+0x748>
   1a354:	06013783          	ld	a5,96(sp)
   1a358:	05013683          	ld	a3,80(sp)
   1a35c:	11812703          	lw	a4,280(sp)
   1a360:	00f33023          	sd	a5,0(t1)
   1a364:	12013783          	ld	a5,288(sp)
   1a368:	0017071b          	addiw	a4,a4,1
   1a36c:	00d33423          	sd	a3,8(t1)
   1a370:	00f687b3          	add	a5,a3,a5
   1a374:	10e12c23          	sw	a4,280(sp)
   1a378:	0007069b          	sext.w	a3,a4
   1a37c:	12f13023          	sd	a5,288(sp)
   1a380:	00700713          	li	a4,7
   1a384:	01030313          	addi	t1,t1,16
   1a388:	72d74c63          	blt	a4,a3,1aac0 <_svfprintf_r+0x1624>
   1a38c:	03013703          	ld	a4,48(sp)
   1a390:	fff7041b          	addiw	s0,a4,-1
   1a394:	848058e3          	blez	s0,19be4 <_svfprintf_r+0x748>
   1a398:	11812703          	lw	a4,280(sp)
   1a39c:	368d50e3          	bge	s10,s0,1aefc <_svfprintf_r+0x1a60>
   1a3a0:	00700c93          	li	s9,7
   1a3a4:	01013b03          	ld	s6,16(sp)
   1a3a8:	00c0006f          	j	1a3b4 <_svfprintf_r+0xf18>
   1a3ac:	ff04041b          	addiw	s0,s0,-16
   1a3b0:	348d56e3          	bge	s10,s0,1aefc <_svfprintf_r+0x1a60>
   1a3b4:	0017071b          	addiw	a4,a4,1
   1a3b8:	01078793          	addi	a5,a5,16
   1a3bc:	01833023          	sd	s8,0(t1)
   1a3c0:	01a33423          	sd	s10,8(t1)
   1a3c4:	12f13023          	sd	a5,288(sp)
   1a3c8:	10e12c23          	sw	a4,280(sp)
   1a3cc:	01030313          	addi	t1,t1,16
   1a3d0:	fcecdee3          	bge	s9,a4,1a3ac <_svfprintf_r+0xf10>
   1a3d4:	11010613          	addi	a2,sp,272
   1a3d8:	000b0593          	mv	a1,s6
   1a3dc:	000a8513          	mv	a0,s5
   1a3e0:	000040ef          	jal	ra,1e3e0 <__ssprint_r>
   1a3e4:	aa051263          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   1a3e8:	12013783          	ld	a5,288(sp)
   1a3ec:	11812703          	lw	a4,280(sp)
   1a3f0:	19010313          	addi	t1,sp,400
   1a3f4:	fb9ff06f          	j	1a3ac <_svfprintf_r+0xf10>
   1a3f8:	41498b3b          	subw	s6,s3,s4
   1a3fc:	fb605863          	blez	s6,19bac <_svfprintf_r+0x710>
   1a400:	11812683          	lw	a3,280(sp)
   1a404:	096d5a63          	bge	s10,s6,1a498 <_svfprintf_r+0xffc>
   1a408:	000b0713          	mv	a4,s6
   1a40c:	06813423          	sd	s0,104(sp)
   1a410:	000a0b13          	mv	s6,s4
   1a414:	00700893          	li	a7,7
   1a418:	00098a13          	mv	s4,s3
   1a41c:	01013403          	ld	s0,16(sp)
   1a420:	00048993          	mv	s3,s1
   1a424:	00070493          	mv	s1,a4
   1a428:	00c0006f          	j	1a434 <_svfprintf_r+0xf98>
   1a42c:	ff04849b          	addiw	s1,s1,-16
   1a430:	049d5863          	bge	s10,s1,1a480 <_svfprintf_r+0xfe4>
   1a434:	0016869b          	addiw	a3,a3,1
   1a438:	01078793          	addi	a5,a5,16
   1a43c:	01833023          	sd	s8,0(t1)
   1a440:	01a33423          	sd	s10,8(t1)
   1a444:	12f13023          	sd	a5,288(sp)
   1a448:	10d12c23          	sw	a3,280(sp)
   1a44c:	01030313          	addi	t1,t1,16
   1a450:	fcd8dee3          	bge	a7,a3,1a42c <_svfprintf_r+0xf90>
   1a454:	11010613          	addi	a2,sp,272
   1a458:	00040593          	mv	a1,s0
   1a45c:	000a8513          	mv	a0,s5
   1a460:	781030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a464:	a2051263          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   1a468:	ff04849b          	addiw	s1,s1,-16
   1a46c:	12013783          	ld	a5,288(sp)
   1a470:	11812683          	lw	a3,280(sp)
   1a474:	19010313          	addi	t1,sp,400
   1a478:	00700893          	li	a7,7
   1a47c:	fa9d4ce3          	blt	s10,s1,1a434 <_svfprintf_r+0xf98>
   1a480:	06813403          	ld	s0,104(sp)
   1a484:	00048713          	mv	a4,s1
   1a488:	00098493          	mv	s1,s3
   1a48c:	000a0993          	mv	s3,s4
   1a490:	000b0a13          	mv	s4,s6
   1a494:	00070b13          	mv	s6,a4
   1a498:	0016861b          	addiw	a2,a3,1
   1a49c:	016787b3          	add	a5,a5,s6
   1a4a0:	01833023          	sd	s8,0(t1)
   1a4a4:	01633423          	sd	s6,8(t1)
   1a4a8:	12f13023          	sd	a5,288(sp)
   1a4ac:	10c12c23          	sw	a2,280(sp)
   1a4b0:	00700693          	li	a3,7
   1a4b4:	01030313          	addi	t1,t1,16
   1a4b8:	eec6da63          	bge	a3,a2,19bac <_svfprintf_r+0x710>
   1a4bc:	01013583          	ld	a1,16(sp)
   1a4c0:	11010613          	addi	a2,sp,272
   1a4c4:	000a8513          	mv	a0,s5
   1a4c8:	719030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a4cc:	9a051e63          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   1a4d0:	419b8bbb          	subw	s7,s7,s9
   1a4d4:	12013783          	ld	a5,288(sp)
   1a4d8:	19010313          	addi	t1,sp,400
   1a4dc:	ed705c63          	blez	s7,19bb4 <_svfprintf_r+0x718>
   1a4e0:	11812683          	lw	a3,280(sp)
   1a4e4:	097d5863          	bge	s10,s7,1a574 <_svfprintf_r+0x10d8>
   1a4e8:	000a0713          	mv	a4,s4
   1a4ec:	06813423          	sd	s0,104(sp)
   1a4f0:	00098a13          	mv	s4,s3
   1a4f4:	00700b13          	li	s6,7
   1a4f8:	00048993          	mv	s3,s1
   1a4fc:	01013403          	ld	s0,16(sp)
   1a500:	000b8493          	mv	s1,s7
   1a504:	00070b93          	mv	s7,a4
   1a508:	00c0006f          	j	1a514 <_svfprintf_r+0x1078>
   1a50c:	ff04849b          	addiw	s1,s1,-16
   1a510:	049d5663          	bge	s10,s1,1a55c <_svfprintf_r+0x10c0>
   1a514:	0016869b          	addiw	a3,a3,1
   1a518:	01078793          	addi	a5,a5,16
   1a51c:	01833023          	sd	s8,0(t1)
   1a520:	01a33423          	sd	s10,8(t1)
   1a524:	12f13023          	sd	a5,288(sp)
   1a528:	10d12c23          	sw	a3,280(sp)
   1a52c:	01030313          	addi	t1,t1,16
   1a530:	fcdb5ee3          	bge	s6,a3,1a50c <_svfprintf_r+0x1070>
   1a534:	11010613          	addi	a2,sp,272
   1a538:	00040593          	mv	a1,s0
   1a53c:	000a8513          	mv	a0,s5
   1a540:	6a1030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a544:	94051263          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   1a548:	ff04849b          	addiw	s1,s1,-16
   1a54c:	12013783          	ld	a5,288(sp)
   1a550:	11812683          	lw	a3,280(sp)
   1a554:	19010313          	addi	t1,sp,400
   1a558:	fa9d4ee3          	blt	s10,s1,1a514 <_svfprintf_r+0x1078>
   1a55c:	06813403          	ld	s0,104(sp)
   1a560:	000b8713          	mv	a4,s7
   1a564:	00048b93          	mv	s7,s1
   1a568:	00098493          	mv	s1,s3
   1a56c:	000a0993          	mv	s3,s4
   1a570:	00070a13          	mv	s4,a4
   1a574:	0016861b          	addiw	a2,a3,1
   1a578:	017787b3          	add	a5,a5,s7
   1a57c:	01833023          	sd	s8,0(t1)
   1a580:	01733423          	sd	s7,8(t1)
   1a584:	12f13023          	sd	a5,288(sp)
   1a588:	10c12c23          	sw	a2,280(sp)
   1a58c:	00700693          	li	a3,7
   1a590:	01030313          	addi	t1,t1,16
   1a594:	e2c6d063          	bge	a3,a2,19bb4 <_svfprintf_r+0x718>
   1a598:	01013583          	ld	a1,16(sp)
   1a59c:	11010613          	addi	a2,sp,272
   1a5a0:	000a8513          	mv	a0,s5
   1a5a4:	63d030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a5a8:	8e051063          	bnez	a0,19688 <_svfprintf_r+0x1ec>
   1a5ac:	12013783          	ld	a5,288(sp)
   1a5b0:	19010313          	addi	t1,sp,400
   1a5b4:	e00ff06f          	j	19bb4 <_svfprintf_r+0x718>
   1a5b8:	00048a13          	mv	s4,s1
   1a5bc:	cb4ff06f          	j	19a70 <_svfprintf_r+0x5d4>
   1a5c0:	11812683          	lw	a3,280(sp)
   1a5c4:	00008b17          	auipc	s6,0x8
   1a5c8:	b8cb0b13          	addi	s6,s6,-1140 # 22150 <blanks.4523>
   1a5cc:	0b0d5863          	bge	s10,a6,1a67c <_svfprintf_r+0x11e0>
   1a5d0:	09213c23          	sd	s2,152(sp)
   1a5d4:	0a813023          	sd	s0,160(sp)
   1a5d8:	000b0913          	mv	s2,s6
   1a5dc:	00700f93          	li	t6,7
   1a5e0:	000a0b13          	mv	s6,s4
   1a5e4:	07d13423          	sd	t4,104(sp)
   1a5e8:	00098a13          	mv	s4,s3
   1a5ec:	09e13423          	sd	t5,136(sp)
   1a5f0:	00048993          	mv	s3,s1
   1a5f4:	00080413          	mv	s0,a6
   1a5f8:	01013483          	ld	s1,16(sp)
   1a5fc:	00c0006f          	j	1a608 <_svfprintf_r+0x116c>
   1a600:	ff04041b          	addiw	s0,s0,-16
   1a604:	048d5a63          	bge	s10,s0,1a658 <_svfprintf_r+0x11bc>
   1a608:	0016869b          	addiw	a3,a3,1
   1a60c:	01078793          	addi	a5,a5,16
   1a610:	01233023          	sd	s2,0(t1)
   1a614:	01a33423          	sd	s10,8(t1)
   1a618:	12f13023          	sd	a5,288(sp)
   1a61c:	10d12c23          	sw	a3,280(sp)
   1a620:	01030313          	addi	t1,t1,16
   1a624:	fcdfdee3          	bge	t6,a3,1a600 <_svfprintf_r+0x1164>
   1a628:	11010613          	addi	a2,sp,272
   1a62c:	00048593          	mv	a1,s1
   1a630:	000a8513          	mv	a0,s5
   1a634:	5ad030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a638:	00050463          	beqz	a0,1a640 <_svfprintf_r+0x11a4>
   1a63c:	84cff06f          	j	19688 <_svfprintf_r+0x1ec>
   1a640:	ff04041b          	addiw	s0,s0,-16
   1a644:	12013783          	ld	a5,288(sp)
   1a648:	11812683          	lw	a3,280(sp)
   1a64c:	19010313          	addi	t1,sp,400
   1a650:	00700f93          	li	t6,7
   1a654:	fa8d4ae3          	blt	s10,s0,1a608 <_svfprintf_r+0x116c>
   1a658:	00098493          	mv	s1,s3
   1a65c:	00040813          	mv	a6,s0
   1a660:	000a0993          	mv	s3,s4
   1a664:	06813e83          	ld	t4,104(sp)
   1a668:	000b0a13          	mv	s4,s6
   1a66c:	08813f03          	ld	t5,136(sp)
   1a670:	00090b13          	mv	s6,s2
   1a674:	0a013403          	ld	s0,160(sp)
   1a678:	09813903          	ld	s2,152(sp)
   1a67c:	0016861b          	addiw	a2,a3,1
   1a680:	010787b3          	add	a5,a5,a6
   1a684:	01633023          	sd	s6,0(t1)
   1a688:	01033423          	sd	a6,8(t1)
   1a68c:	12f13023          	sd	a5,288(sp)
   1a690:	10c12c23          	sw	a2,280(sp)
   1a694:	00700693          	li	a3,7
   1a698:	01030313          	addi	t1,t1,16
   1a69c:	c8c6da63          	bge	a3,a2,19b30 <_svfprintf_r+0x694>
   1a6a0:	01013583          	ld	a1,16(sp)
   1a6a4:	11010613          	addi	a2,sp,272
   1a6a8:	000a8513          	mv	a0,s5
   1a6ac:	09e13423          	sd	t5,136(sp)
   1a6b0:	07d13423          	sd	t4,104(sp)
   1a6b4:	52d030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a6b8:	00050463          	beqz	a0,1a6c0 <_svfprintf_r+0x1224>
   1a6bc:	fcdfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a6c0:	12013783          	ld	a5,288(sp)
   1a6c4:	19010313          	addi	t1,sp,400
   1a6c8:	08813f03          	ld	t5,136(sp)
   1a6cc:	06813e83          	ld	t4,104(sp)
   1a6d0:	c60ff06f          	j	19b30 <_svfprintf_r+0x694>
   1a6d4:	01013583          	ld	a1,16(sp)
   1a6d8:	11010613          	addi	a2,sp,272
   1a6dc:	000a8513          	mv	a0,s5
   1a6e0:	07e13423          	sd	t5,104(sp)
   1a6e4:	4fd030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a6e8:	00050463          	beqz	a0,1a6f0 <_svfprintf_r+0x1254>
   1a6ec:	f9dfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a6f0:	12013783          	ld	a5,288(sp)
   1a6f4:	19010313          	addi	t1,sp,400
   1a6f8:	06813f03          	ld	t5,104(sp)
   1a6fc:	ca8ff06f          	j	19ba4 <_svfprintf_r+0x708>
   1a700:	11812703          	lw	a4,280(sp)
   1a704:	00008b17          	auipc	s6,0x8
   1a708:	a4cb0b13          	addi	s6,s6,-1460 # 22150 <blanks.4523>
   1a70c:	068d5263          	bge	s10,s0,1a770 <_svfprintf_r+0x12d4>
   1a710:	00700493          	li	s1,7
   1a714:	01013b83          	ld	s7,16(sp)
   1a718:	00c0006f          	j	1a724 <_svfprintf_r+0x1288>
   1a71c:	ff04041b          	addiw	s0,s0,-16
   1a720:	048d5863          	bge	s10,s0,1a770 <_svfprintf_r+0x12d4>
   1a724:	0017071b          	addiw	a4,a4,1
   1a728:	01078793          	addi	a5,a5,16
   1a72c:	01633023          	sd	s6,0(t1)
   1a730:	01a33423          	sd	s10,8(t1)
   1a734:	12f13023          	sd	a5,288(sp)
   1a738:	10e12c23          	sw	a4,280(sp)
   1a73c:	01030313          	addi	t1,t1,16
   1a740:	fce4dee3          	bge	s1,a4,1a71c <_svfprintf_r+0x1280>
   1a744:	11010613          	addi	a2,sp,272
   1a748:	000b8593          	mv	a1,s7
   1a74c:	000a8513          	mv	a0,s5
   1a750:	491030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a754:	00050463          	beqz	a0,1a75c <_svfprintf_r+0x12c0>
   1a758:	f31fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a75c:	ff04041b          	addiw	s0,s0,-16
   1a760:	12013783          	ld	a5,288(sp)
   1a764:	11812703          	lw	a4,280(sp)
   1a768:	19010313          	addi	t1,sp,400
   1a76c:	fa8d4ce3          	blt	s10,s0,1a724 <_svfprintf_r+0x1288>
   1a770:	0017069b          	addiw	a3,a4,1
   1a774:	008787b3          	add	a5,a5,s0
   1a778:	01633023          	sd	s6,0(t1)
   1a77c:	00833423          	sd	s0,8(t1)
   1a780:	12f13023          	sd	a5,288(sp)
   1a784:	10d12c23          	sw	a3,280(sp)
   1a788:	00700713          	li	a4,7
   1a78c:	c6d75463          	bge	a4,a3,19bf4 <_svfprintf_r+0x758>
   1a790:	01013583          	ld	a1,16(sp)
   1a794:	11010613          	addi	a2,sp,272
   1a798:	000a8513          	mv	a0,s5
   1a79c:	445030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a7a0:	00050463          	beqz	a0,1a7a8 <_svfprintf_r+0x130c>
   1a7a4:	ee5fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a7a8:	12013783          	ld	a5,288(sp)
   1a7ac:	c48ff06f          	j	19bf4 <_svfprintf_r+0x758>
   1a7b0:	00100713          	li	a4,1
   1a7b4:	30e78ee3          	beq	a5,a4,1b2d0 <_svfprintf_r+0x1e34>
   1a7b8:	00200713          	li	a4,2
   1a7bc:	00048a13          	mv	s4,s1
   1a7c0:	ace79063          	bne	a5,a4,19a80 <_svfprintf_r+0x5e4>
   1a7c4:	05813703          	ld	a4,88(sp)
   1a7c8:	18c10c93          	addi	s9,sp,396
   1a7cc:	000c8d93          	mv	s11,s9
   1a7d0:	00fb7793          	andi	a5,s6,15
   1a7d4:	00f707b3          	add	a5,a4,a5
   1a7d8:	0007c783          	lbu	a5,0(a5)
   1a7dc:	fffd8d93          	addi	s11,s11,-1
   1a7e0:	004b5b13          	srli	s6,s6,0x4
   1a7e4:	00fd8023          	sb	a5,0(s11)
   1a7e8:	fe0b14e3          	bnez	s6,1a7d0 <_svfprintf_r+0x1334>
   1a7ec:	41bc8cbb          	subw	s9,s9,s11
   1a7f0:	000a0493          	mv	s1,s4
   1a7f4:	f85fe06f          	j	19778 <_svfprintf_r+0x2dc>
   1a7f8:	0e812583          	lw	a1,232(sp)
   1a7fc:	58b05663          	blez	a1,1ad88 <_svfprintf_r+0x18ec>
   1a800:	03013703          	ld	a4,48(sp)
   1a804:	02813683          	ld	a3,40(sp)
   1a808:	0007041b          	sext.w	s0,a4
   1a80c:	2ae6c463          	blt	a3,a4,1aab4 <_svfprintf_r+0x1618>
   1a810:	02805663          	blez	s0,1a83c <_svfprintf_r+0x13a0>
   1a814:	11812683          	lw	a3,280(sp)
   1a818:	008787b3          	add	a5,a5,s0
   1a81c:	01b33023          	sd	s11,0(t1)
   1a820:	0016861b          	addiw	a2,a3,1
   1a824:	00833423          	sd	s0,8(t1)
   1a828:	12f13023          	sd	a5,288(sp)
   1a82c:	10c12c23          	sw	a2,280(sp)
   1a830:	00700693          	li	a3,7
   1a834:	01030313          	addi	t1,t1,16
   1a838:	16c6c8e3          	blt	a3,a2,1b1a8 <_svfprintf_r+0x1d0c>
   1a83c:	fff44693          	not	a3,s0
   1a840:	02813703          	ld	a4,40(sp)
   1a844:	43f6d693          	srai	a3,a3,0x3f
   1a848:	00d47433          	and	s0,s0,a3
   1a84c:	4087043b          	subw	s0,a4,s0
   1a850:	30804a63          	bgtz	s0,1ab64 <_svfprintf_r+0x16c8>
   1a854:	02813703          	ld	a4,40(sp)
   1a858:	4004f693          	andi	a3,s1,1024
   1a85c:	00ed8bb3          	add	s7,s11,a4
   1a860:	36069463          	bnez	a3,1abc8 <_svfprintf_r+0x172c>
   1a864:	0e812683          	lw	a3,232(sp)
   1a868:	03013703          	ld	a4,48(sp)
   1a86c:	00e6c663          	blt	a3,a4,1a878 <_svfprintf_r+0x13dc>
   1a870:	0014f613          	andi	a2,s1,1
   1a874:	18060ee3          	beqz	a2,1b210 <_svfprintf_r+0x1d74>
   1a878:	06013603          	ld	a2,96(sp)
   1a87c:	05013703          	ld	a4,80(sp)
   1a880:	01030313          	addi	t1,t1,16
   1a884:	fec33823          	sd	a2,-16(t1)
   1a888:	11812603          	lw	a2,280(sp)
   1a88c:	00e787b3          	add	a5,a5,a4
   1a890:	fee33c23          	sd	a4,-8(t1)
   1a894:	0016059b          	addiw	a1,a2,1
   1a898:	12f13023          	sd	a5,288(sp)
   1a89c:	10b12c23          	sw	a1,280(sp)
   1a8a0:	00700613          	li	a2,7
   1a8a4:	3eb64ee3          	blt	a2,a1,1b4a0 <_svfprintf_r+0x2004>
   1a8a8:	03013703          	ld	a4,48(sp)
   1a8ac:	40d7063b          	subw	a2,a4,a3
   1a8b0:	00ed8733          	add	a4,s11,a4
   1a8b4:	4177073b          	subw	a4,a4,s7
   1a8b8:	00060693          	mv	a3,a2
   1a8bc:	00c75463          	bge	a4,a2,1a8c4 <_svfprintf_r+0x1428>
   1a8c0:	00070693          	mv	a3,a4
   1a8c4:	0006841b          	sext.w	s0,a3
   1a8c8:	02805663          	blez	s0,1a8f4 <_svfprintf_r+0x1458>
   1a8cc:	11812703          	lw	a4,280(sp)
   1a8d0:	008787b3          	add	a5,a5,s0
   1a8d4:	01733023          	sd	s7,0(t1)
   1a8d8:	0017069b          	addiw	a3,a4,1
   1a8dc:	00833423          	sd	s0,8(t1)
   1a8e0:	12f13023          	sd	a5,288(sp)
   1a8e4:	10d12c23          	sw	a3,280(sp)
   1a8e8:	00700713          	li	a4,7
   1a8ec:	01030313          	addi	t1,t1,16
   1a8f0:	40d742e3          	blt	a4,a3,1b4f4 <_svfprintf_r+0x2058>
   1a8f4:	fff44713          	not	a4,s0
   1a8f8:	43f75713          	srai	a4,a4,0x3f
   1a8fc:	00e47433          	and	s0,s0,a4
   1a900:	4086043b          	subw	s0,a2,s0
   1a904:	ae805063          	blez	s0,19be4 <_svfprintf_r+0x748>
   1a908:	11812703          	lw	a4,280(sp)
   1a90c:	5e8d5863          	bge	s10,s0,1aefc <_svfprintf_r+0x1a60>
   1a910:	00700c93          	li	s9,7
   1a914:	01013b03          	ld	s6,16(sp)
   1a918:	00c0006f          	j	1a924 <_svfprintf_r+0x1488>
   1a91c:	ff04041b          	addiw	s0,s0,-16
   1a920:	5c8d5e63          	bge	s10,s0,1aefc <_svfprintf_r+0x1a60>
   1a924:	0017071b          	addiw	a4,a4,1
   1a928:	01078793          	addi	a5,a5,16
   1a92c:	01833023          	sd	s8,0(t1)
   1a930:	01a33423          	sd	s10,8(t1)
   1a934:	12f13023          	sd	a5,288(sp)
   1a938:	10e12c23          	sw	a4,280(sp)
   1a93c:	01030313          	addi	t1,t1,16
   1a940:	fcecdee3          	bge	s9,a4,1a91c <_svfprintf_r+0x1480>
   1a944:	11010613          	addi	a2,sp,272
   1a948:	000b0593          	mv	a1,s6
   1a94c:	000a8513          	mv	a0,s5
   1a950:	291030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a954:	00050463          	beqz	a0,1a95c <_svfprintf_r+0x14c0>
   1a958:	d31fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a95c:	12013783          	ld	a5,288(sp)
   1a960:	11812703          	lw	a4,280(sp)
   1a964:	19010313          	addi	t1,sp,400
   1a968:	fb5ff06f          	j	1a91c <_svfprintf_r+0x1480>
   1a96c:	0014f513          	andi	a0,s1,1
   1a970:	b4051063          	bnez	a0,19cb0 <_svfprintf_r+0x814>
   1a974:	00c33423          	sd	a2,8(t1)
   1a978:	13913023          	sd	s9,288(sp)
   1a97c:	10f12c23          	sw	a5,280(sp)
   1a980:	00700713          	li	a4,7
   1a984:	3cf74a63          	blt	a4,a5,1ad58 <_svfprintf_r+0x18bc>
   1a988:	00258b1b          	addiw	s6,a1,2
   1a98c:	02030313          	addi	t1,t1,32
   1a990:	be0ff06f          	j	19d70 <_svfprintf_r+0x8d4>
   1a994:	bd705e63          	blez	s7,19d70 <_svfprintf_r+0x8d4>
   1a998:	017d4463          	blt	s10,s7,1a9a0 <_svfprintf_r+0x1504>
   1a99c:	1a00106f          	j	1bb3c <_svfprintf_r+0x26a0>
   1a9a0:	00700b13          	li	s6,7
   1a9a4:	01013d83          	ld	s11,16(sp)
   1a9a8:	0100006f          	j	1a9b8 <_svfprintf_r+0x151c>
   1a9ac:	ff0b8b9b          	addiw	s7,s7,-16
   1a9b0:	6f7d5463          	bge	s10,s7,1b098 <_svfprintf_r+0x1bfc>
   1a9b4:	0017889b          	addiw	a7,a5,1
   1a9b8:	010c8c93          	addi	s9,s9,16
   1a9bc:	01843023          	sd	s8,0(s0)
   1a9c0:	01a43423          	sd	s10,8(s0)
   1a9c4:	13913023          	sd	s9,288(sp)
   1a9c8:	0008879b          	sext.w	a5,a7
   1a9cc:	11112c23          	sw	a7,280(sp)
   1a9d0:	01040413          	addi	s0,s0,16
   1a9d4:	fcfb5ce3          	bge	s6,a5,1a9ac <_svfprintf_r+0x1510>
   1a9d8:	11010613          	addi	a2,sp,272
   1a9dc:	000d8593          	mv	a1,s11
   1a9e0:	000a8513          	mv	a0,s5
   1a9e4:	1fd030ef          	jal	ra,1e3e0 <__ssprint_r>
   1a9e8:	00050463          	beqz	a0,1a9f0 <_svfprintf_r+0x1554>
   1a9ec:	c9dfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1a9f0:	12013c83          	ld	s9,288(sp)
   1a9f4:	11812783          	lw	a5,280(sp)
   1a9f8:	19010413          	addi	s0,sp,400
   1a9fc:	fb1ff06f          	j	1a9ac <_svfprintf_r+0x1510>
   1aa00:	000d8493          	mv	s1,s11
   1aa04:	bddfe06f          	j	195e0 <_svfprintf_r+0x144>
   1aa08:	01013583          	ld	a1,16(sp)
   1aa0c:	11010613          	addi	a2,sp,272
   1aa10:	000a8513          	mv	a0,s5
   1aa14:	1cd030ef          	jal	ra,1e3e0 <__ssprint_r>
   1aa18:	00050463          	beqz	a0,1aa20 <_svfprintf_r+0x1584>
   1aa1c:	c6dfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1aa20:	12013c83          	ld	s9,288(sp)
   1aa24:	11812783          	lw	a5,280(sp)
   1aa28:	19010413          	addi	s0,sp,400
   1aa2c:	a9cff06f          	j	19cc8 <_svfprintf_r+0x82c>
   1aa30:	01013583          	ld	a1,16(sp)
   1aa34:	11010613          	addi	a2,sp,272
   1aa38:	000a8513          	mv	a0,s5
   1aa3c:	1a5030ef          	jal	ra,1e3e0 <__ssprint_r>
   1aa40:	00050463          	beqz	a0,1aa48 <_svfprintf_r+0x15ac>
   1aa44:	c45fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1aa48:	12013c83          	ld	s9,288(sp)
   1aa4c:	11812783          	lw	a5,280(sp)
   1aa50:	19010413          	addi	s0,sp,400
   1aa54:	aa4ff06f          	j	19cf8 <_svfprintf_r+0x85c>
   1aa58:	03000793          	li	a5,48
   1aa5c:	18f105a3          	sb	a5,395(sp)
   1aa60:	18b10d93          	addi	s11,sp,395
   1aa64:	d15fe06f          	j	19778 <_svfprintf_r+0x2dc>
   1aa68:	00048a13          	mv	s4,s1
   1aa6c:	fd9fe06f          	j	19a44 <_svfprintf_r+0x5a8>
   1aa70:	00048a13          	mv	s4,s1
   1aa74:	f09fe06f          	j	1997c <_svfprintf_r+0x4e0>
   1aa78:	00094403          	lbu	s0,0(s2)
   1aa7c:	b89fe06f          	j	19604 <_svfprintf_r+0x168>
   1aa80:	01813783          	ld	a5,24(sp)
   1aa84:	03913023          	sd	s9,32(sp)
   1aa88:	0007b503          	ld	a0,0(a5)
   1aa8c:	00878793          	addi	a5,a5,8
   1aa90:	00f13c23          	sd	a5,24(sp)
   1aa94:	28d060ef          	jal	ra,21520 <__extenddftf2>
   1aa98:	10a13023          	sd	a0,256(sp)
   1aa9c:	10b13423          	sd	a1,264(sp)
   1aaa0:	02013303          	ld	t1,32(sp)
   1aaa4:	b40ff06f          	j	19de4 <_svfprintf_r+0x948>
   1aaa8:	01813783          	ld	a5,24(sp)
   1aaac:	0007bb03          	ld	s6,0(a5)
   1aab0:	c65fe06f          	j	19714 <_svfprintf_r+0x278>
   1aab4:	0006841b          	sext.w	s0,a3
   1aab8:	d4804ee3          	bgtz	s0,1a814 <_svfprintf_r+0x1378>
   1aabc:	d81ff06f          	j	1a83c <_svfprintf_r+0x13a0>
   1aac0:	01013583          	ld	a1,16(sp)
   1aac4:	11010613          	addi	a2,sp,272
   1aac8:	000a8513          	mv	a0,s5
   1aacc:	115030ef          	jal	ra,1e3e0 <__ssprint_r>
   1aad0:	00050463          	beqz	a0,1aad8 <_svfprintf_r+0x163c>
   1aad4:	bb5fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1aad8:	12013783          	ld	a5,288(sp)
   1aadc:	19010313          	addi	t1,sp,400
   1aae0:	8adff06f          	j	1a38c <_svfprintf_r+0xef0>
   1aae4:	0204e493          	ori	s1,s1,32
   1aae8:	00194403          	lbu	s0,1(s2)
   1aaec:	0004849b          	sext.w	s1,s1
   1aaf0:	00190913          	addi	s2,s2,1
   1aaf4:	b11fe06f          	j	19604 <_svfprintf_r+0x168>
   1aaf8:	2004e493          	ori	s1,s1,512
   1aafc:	00194403          	lbu	s0,1(s2)
   1ab00:	0004849b          	sext.w	s1,s1
   1ab04:	00190913          	addi	s2,s2,1
   1ab08:	afdfe06f          	j	19604 <_svfprintf_r+0x168>
   1ab0c:	04813503          	ld	a0,72(sp)
   1ab10:	04000593          	li	a1,64
   1ab14:	f48fc0ef          	jal	ra,1725c <_malloc_r>
   1ab18:	01013783          	ld	a5,16(sp)
   1ab1c:	00a7b023          	sd	a0,0(a5)
   1ab20:	00a7bc23          	sd	a0,24(a5)
   1ab24:	00051463          	bnez	a0,1ab2c <_svfprintf_r+0x1690>
   1ab28:	0580106f          	j	1bb80 <_svfprintf_r+0x26e4>
   1ab2c:	01013703          	ld	a4,16(sp)
   1ab30:	04000793          	li	a5,64
   1ab34:	02f72023          	sw	a5,32(a4)
   1ab38:	9e9fe06f          	j	19520 <_svfprintf_r+0x84>
   1ab3c:	000b871b          	sext.w	a4,s7
   1ab40:	00600793          	li	a5,6
   1ab44:	000b8e13          	mv	t3,s7
   1ab48:	6ce7e063          	bltu	a5,a4,1b208 <_svfprintf_r+0x1d6c>
   1ab4c:	000e0c9b          	sext.w	s9,t3
   1ab50:	000c8a13          	mv	s4,s9
   1ab54:	01613c23          	sd	s6,24(sp)
   1ab58:	00007d97          	auipc	s11,0x7
   1ab5c:	098d8d93          	addi	s11,s11,152 # 21bf0 <zeroes.4539+0x98>
   1ab60:	f99fe06f          	j	19af8 <_svfprintf_r+0x65c>
   1ab64:	11812683          	lw	a3,280(sp)
   1ab68:	5e8d5663          	bge	s10,s0,1b154 <_svfprintf_r+0x1cb8>
   1ab6c:	00700c93          	li	s9,7
   1ab70:	01013b03          	ld	s6,16(sp)
   1ab74:	00c0006f          	j	1ab80 <_svfprintf_r+0x16e4>
   1ab78:	ff04041b          	addiw	s0,s0,-16
   1ab7c:	5c8d5c63          	bge	s10,s0,1b154 <_svfprintf_r+0x1cb8>
   1ab80:	0016869b          	addiw	a3,a3,1
   1ab84:	01078793          	addi	a5,a5,16
   1ab88:	01833023          	sd	s8,0(t1)
   1ab8c:	01a33423          	sd	s10,8(t1)
   1ab90:	12f13023          	sd	a5,288(sp)
   1ab94:	10d12c23          	sw	a3,280(sp)
   1ab98:	01030313          	addi	t1,t1,16
   1ab9c:	fcdcdee3          	bge	s9,a3,1ab78 <_svfprintf_r+0x16dc>
   1aba0:	11010613          	addi	a2,sp,272
   1aba4:	000b0593          	mv	a1,s6
   1aba8:	000a8513          	mv	a0,s5
   1abac:	035030ef          	jal	ra,1e3e0 <__ssprint_r>
   1abb0:	00050463          	beqz	a0,1abb8 <_svfprintf_r+0x171c>
   1abb4:	ad5fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1abb8:	12013783          	ld	a5,288(sp)
   1abbc:	11812683          	lw	a3,280(sp)
   1abc0:	19010313          	addi	t1,sp,400
   1abc4:	fb5ff06f          	j	1ab78 <_svfprintf_r+0x16dc>
   1abc8:	03013703          	ld	a4,48(sp)
   1abcc:	03813c83          	ld	s9,56(sp)
   1abd0:	03213423          	sd	s2,40(sp)
   1abd4:	06913423          	sd	s1,104(sp)
   1abd8:	09313423          	sd	s3,136(sp)
   1abdc:	04013903          	ld	s2,64(sp)
   1abe0:	03413c23          	sd	s4,56(sp)
   1abe4:	05b13023          	sd	s11,64(sp)
   1abe8:	00700b13          	li	s6,7
   1abec:	00ed8433          	add	s0,s11,a4
   1abf0:	09013983          	ld	s3,144(sp)
   1abf4:	08013483          	ld	s1,128(sp)
   1abf8:	01013a03          	ld	s4,16(sp)
   1abfc:	0a0c8063          	beqz	s9,1ac9c <_svfprintf_r+0x1800>
   1ac00:	0a091063          	bnez	s2,1aca0 <_svfprintf_r+0x1804>
   1ac04:	fff48493          	addi	s1,s1,-1
   1ac08:	fffc8c9b          	addiw	s9,s9,-1
   1ac0c:	07813703          	ld	a4,120(sp)
   1ac10:	013787b3          	add	a5,a5,s3
   1ac14:	01333423          	sd	s3,8(t1)
   1ac18:	00e33023          	sd	a4,0(t1)
   1ac1c:	11812703          	lw	a4,280(sp)
   1ac20:	12f13023          	sd	a5,288(sp)
   1ac24:	01030313          	addi	t1,t1,16
   1ac28:	0017069b          	addiw	a3,a4,1
   1ac2c:	10d12c23          	sw	a3,280(sp)
   1ac30:	10db4263          	blt	s6,a3,1ad34 <_svfprintf_r+0x1898>
   1ac34:	0004c603          	lbu	a2,0(s1)
   1ac38:	417405bb          	subw	a1,s0,s7
   1ac3c:	0006071b          	sext.w	a4,a2
   1ac40:	00070693          	mv	a3,a4
   1ac44:	00e5d463          	bge	a1,a4,1ac4c <_svfprintf_r+0x17b0>
   1ac48:	00058693          	mv	a3,a1
   1ac4c:	00068d9b          	sext.w	s11,a3
   1ac50:	03b05863          	blez	s11,1ac80 <_svfprintf_r+0x17e4>
   1ac54:	11812703          	lw	a4,280(sp)
   1ac58:	01b787b3          	add	a5,a5,s11
   1ac5c:	01733023          	sd	s7,0(t1)
   1ac60:	0017061b          	addiw	a2,a4,1
   1ac64:	01b33423          	sd	s11,8(t1)
   1ac68:	12f13023          	sd	a5,288(sp)
   1ac6c:	10c12c23          	sw	a2,280(sp)
   1ac70:	2acb4a63          	blt	s6,a2,1af24 <_svfprintf_r+0x1a88>
   1ac74:	0004c603          	lbu	a2,0(s1)
   1ac78:	01030313          	addi	t1,t1,16
   1ac7c:	0006071b          	sext.w	a4,a2
   1ac80:	fffdc593          	not	a1,s11
   1ac84:	43f5d593          	srai	a1,a1,0x3f
   1ac88:	00bdf6b3          	and	a3,s11,a1
   1ac8c:	40d70dbb          	subw	s11,a4,a3
   1ac90:	01b04c63          	bgtz	s11,1aca8 <_svfprintf_r+0x180c>
   1ac94:	00cb8bb3          	add	s7,s7,a2
   1ac98:	f60c94e3          	bnez	s9,1ac00 <_svfprintf_r+0x1764>
   1ac9c:	62090e63          	beqz	s2,1b2d8 <_svfprintf_r+0x1e3c>
   1aca0:	fff9091b          	addiw	s2,s2,-1
   1aca4:	f69ff06f          	j	1ac0c <_svfprintf_r+0x1770>
   1aca8:	11812683          	lw	a3,280(sp)
   1acac:	01bd4863          	blt	s10,s11,1acbc <_svfprintf_r+0x1820>
   1acb0:	0580006f          	j	1ad08 <_svfprintf_r+0x186c>
   1acb4:	ff0d8d9b          	addiw	s11,s11,-16
   1acb8:	05bd5863          	bge	s10,s11,1ad08 <_svfprintf_r+0x186c>
   1acbc:	0016869b          	addiw	a3,a3,1
   1acc0:	01078793          	addi	a5,a5,16
   1acc4:	01833023          	sd	s8,0(t1)
   1acc8:	01a33423          	sd	s10,8(t1)
   1accc:	12f13023          	sd	a5,288(sp)
   1acd0:	10d12c23          	sw	a3,280(sp)
   1acd4:	01030313          	addi	t1,t1,16
   1acd8:	fcdb5ee3          	bge	s6,a3,1acb4 <_svfprintf_r+0x1818>
   1acdc:	11010613          	addi	a2,sp,272
   1ace0:	000a0593          	mv	a1,s4
   1ace4:	000a8513          	mv	a0,s5
   1ace8:	6f8030ef          	jal	ra,1e3e0 <__ssprint_r>
   1acec:	00050463          	beqz	a0,1acf4 <_svfprintf_r+0x1858>
   1acf0:	999fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1acf4:	ff0d8d9b          	addiw	s11,s11,-16
   1acf8:	12013783          	ld	a5,288(sp)
   1acfc:	11812683          	lw	a3,280(sp)
   1ad00:	19010313          	addi	t1,sp,400
   1ad04:	fbbd4ce3          	blt	s10,s11,1acbc <_svfprintf_r+0x1820>
   1ad08:	0016871b          	addiw	a4,a3,1
   1ad0c:	01b787b3          	add	a5,a5,s11
   1ad10:	01833023          	sd	s8,0(t1)
   1ad14:	01b33423          	sd	s11,8(t1)
   1ad18:	12f13023          	sd	a5,288(sp)
   1ad1c:	10e12c23          	sw	a4,280(sp)
   1ad20:	70eb4863          	blt	s6,a4,1b430 <_svfprintf_r+0x1f94>
   1ad24:	0004c603          	lbu	a2,0(s1)
   1ad28:	01030313          	addi	t1,t1,16
   1ad2c:	00cb8bb3          	add	s7,s7,a2
   1ad30:	f69ff06f          	j	1ac98 <_svfprintf_r+0x17fc>
   1ad34:	11010613          	addi	a2,sp,272
   1ad38:	000a0593          	mv	a1,s4
   1ad3c:	000a8513          	mv	a0,s5
   1ad40:	6a0030ef          	jal	ra,1e3e0 <__ssprint_r>
   1ad44:	00050463          	beqz	a0,1ad4c <_svfprintf_r+0x18b0>
   1ad48:	941fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1ad4c:	12013783          	ld	a5,288(sp)
   1ad50:	19010313          	addi	t1,sp,400
   1ad54:	ee1ff06f          	j	1ac34 <_svfprintf_r+0x1798>
   1ad58:	01013583          	ld	a1,16(sp)
   1ad5c:	11010613          	addi	a2,sp,272
   1ad60:	000a8513          	mv	a0,s5
   1ad64:	67c030ef          	jal	ra,1e3e0 <__ssprint_r>
   1ad68:	00050463          	beqz	a0,1ad70 <_svfprintf_r+0x18d4>
   1ad6c:	91dfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1ad70:	11812583          	lw	a1,280(sp)
   1ad74:	12013c83          	ld	s9,288(sp)
   1ad78:	1a010313          	addi	t1,sp,416
   1ad7c:	00158b1b          	addiw	s6,a1,1
   1ad80:	19010413          	addi	s0,sp,400
   1ad84:	fedfe06f          	j	19d70 <_svfprintf_r+0x8d4>
   1ad88:	11812683          	lw	a3,280(sp)
   1ad8c:	00007617          	auipc	a2,0x7
   1ad90:	e6c60613          	addi	a2,a2,-404 # 21bf8 <zeroes.4539+0xa0>
   1ad94:	00c33023          	sd	a2,0(t1)
   1ad98:	0016869b          	addiw	a3,a3,1
   1ad9c:	00100613          	li	a2,1
   1ada0:	00178793          	addi	a5,a5,1
   1ada4:	00c33423          	sd	a2,8(t1)
   1ada8:	10d12c23          	sw	a3,280(sp)
   1adac:	0006861b          	sext.w	a2,a3
   1adb0:	12f13023          	sd	a5,288(sp)
   1adb4:	00700693          	li	a3,7
   1adb8:	01030313          	addi	t1,t1,16
   1adbc:	06c6cc63          	blt	a3,a2,1ae34 <_svfprintf_r+0x1998>
   1adc0:	1e059863          	bnez	a1,1afb0 <_svfprintf_r+0x1b14>
   1adc4:	03013703          	ld	a4,48(sp)
   1adc8:	0014f693          	andi	a3,s1,1
   1adcc:	00d766b3          	or	a3,a4,a3
   1add0:	00069463          	bnez	a3,1add8 <_svfprintf_r+0x193c>
   1add4:	e11fe06f          	j	19be4 <_svfprintf_r+0x748>
   1add8:	11812603          	lw	a2,280(sp)
   1addc:	05013703          	ld	a4,80(sp)
   1ade0:	06013683          	ld	a3,96(sp)
   1ade4:	00e787b3          	add	a5,a5,a4
   1ade8:	00d33023          	sd	a3,0(t1)
   1adec:	0016069b          	addiw	a3,a2,1
   1adf0:	00e33423          	sd	a4,8(t1)
   1adf4:	12f13023          	sd	a5,288(sp)
   1adf8:	10d12c23          	sw	a3,280(sp)
   1adfc:	00700613          	li	a2,7
   1ae00:	48d64c63          	blt	a2,a3,1b298 <_svfprintf_r+0x1dfc>
   1ae04:	01030313          	addi	t1,t1,16
   1ae08:	03013703          	ld	a4,48(sp)
   1ae0c:	0016861b          	addiw	a2,a3,1
   1ae10:	01b33023          	sd	s11,0(t1)
   1ae14:	00f707b3          	add	a5,a4,a5
   1ae18:	00e33423          	sd	a4,8(t1)
   1ae1c:	12f13023          	sd	a5,288(sp)
   1ae20:	10c12c23          	sw	a2,280(sp)
   1ae24:	00700713          	li	a4,7
   1ae28:	00c74463          	blt	a4,a2,1ae30 <_svfprintf_r+0x1994>
   1ae2c:	db5fe06f          	j	19be0 <_svfprintf_r+0x744>
   1ae30:	f65fe06f          	j	19d94 <_svfprintf_r+0x8f8>
   1ae34:	01013583          	ld	a1,16(sp)
   1ae38:	11010613          	addi	a2,sp,272
   1ae3c:	000a8513          	mv	a0,s5
   1ae40:	5a0030ef          	jal	ra,1e3e0 <__ssprint_r>
   1ae44:	00050463          	beqz	a0,1ae4c <_svfprintf_r+0x19b0>
   1ae48:	841fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1ae4c:	0e812583          	lw	a1,232(sp)
   1ae50:	12013783          	ld	a5,288(sp)
   1ae54:	19010313          	addi	t1,sp,400
   1ae58:	f69ff06f          	j	1adc0 <_svfprintf_r+0x1924>
   1ae5c:	400a7493          	andi	s1,s4,1024
   1ae60:	03213023          	sd	s2,32(sp)
   1ae64:	08013903          	ld	s2,128(sp)
   1ae68:	18c10c93          	addi	s9,sp,396
   1ae6c:	0004849b          	sext.w	s1,s1
   1ae70:	00000793          	li	a5,0
   1ae74:	000c8d93          	mv	s11,s9
   1ae78:	02813423          	sd	s0,40(sp)
   1ae7c:	03313c23          	sd	s3,56(sp)
   1ae80:	000c8413          	mv	s0,s9
   1ae84:	000b0993          	mv	s3,s6
   1ae88:	000a8c93          	mv	s9,s5
   1ae8c:	00048b13          	mv	s6,s1
   1ae90:	00030a93          	mv	s5,t1
   1ae94:	00078493          	mv	s1,a5
   1ae98:	00a00593          	li	a1,10
   1ae9c:	00098513          	mv	a0,s3
   1aea0:	a1df50ef          	jal	ra,108bc <__umoddi3>
   1aea4:	0305051b          	addiw	a0,a0,48
   1aea8:	fea40fa3          	sb	a0,-1(s0)
   1aeac:	0014849b          	addiw	s1,s1,1
   1aeb0:	fff40413          	addi	s0,s0,-1
   1aeb4:	000b0663          	beqz	s6,1aec0 <_svfprintf_r+0x1a24>
   1aeb8:	00094683          	lbu	a3,0(s2)
   1aebc:	bcd48a63          	beq	s1,a3,1a290 <_svfprintf_r+0xdf4>
   1aec0:	00a00593          	li	a1,10
   1aec4:	00098513          	mv	a0,s3
   1aec8:	9adf50ef          	jal	ra,10874 <__udivdi3>
   1aecc:	00900793          	li	a5,9
   1aed0:	bd37f863          	bgeu	a5,s3,1a2a0 <_svfprintf_r+0xe04>
   1aed4:	00050993          	mv	s3,a0
   1aed8:	fc1ff06f          	j	1ae98 <_svfprintf_r+0x19fc>
   1aedc:	01013583          	ld	a1,16(sp)
   1aee0:	11010613          	addi	a2,sp,272
   1aee4:	000a8513          	mv	a0,s5
   1aee8:	4f8030ef          	jal	ra,1e3e0 <__ssprint_r>
   1aeec:	00050463          	beqz	a0,1aef4 <_svfprintf_r+0x1a58>
   1aef0:	f98fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1aef4:	19010313          	addi	t1,sp,400
   1aef8:	c40ff06f          	j	1a338 <_svfprintf_r+0xe9c>
   1aefc:	0017069b          	addiw	a3,a4,1
   1af00:	01833023          	sd	s8,0(t1)
   1af04:	00833423          	sd	s0,8(t1)
   1af08:	008787b3          	add	a5,a5,s0
   1af0c:	12f13023          	sd	a5,288(sp)
   1af10:	10d12c23          	sw	a3,280(sp)
   1af14:	00700713          	li	a4,7
   1af18:	00d74463          	blt	a4,a3,1af20 <_svfprintf_r+0x1a84>
   1af1c:	cc5fe06f          	j	19be0 <_svfprintf_r+0x744>
   1af20:	e75fe06f          	j	19d94 <_svfprintf_r+0x8f8>
   1af24:	11010613          	addi	a2,sp,272
   1af28:	000a0593          	mv	a1,s4
   1af2c:	000a8513          	mv	a0,s5
   1af30:	4b0030ef          	jal	ra,1e3e0 <__ssprint_r>
   1af34:	00050463          	beqz	a0,1af3c <_svfprintf_r+0x1aa0>
   1af38:	f50fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1af3c:	0004c603          	lbu	a2,0(s1)
   1af40:	12013783          	ld	a5,288(sp)
   1af44:	19010313          	addi	t1,sp,400
   1af48:	0006071b          	sext.w	a4,a2
   1af4c:	d35ff06f          	j	1ac80 <_svfprintf_r+0x17e4>
   1af50:	10013503          	ld	a0,256(sp)
   1af54:	10813583          	ld	a1,264(sp)
   1af58:	00000613          	li	a2,0
   1af5c:	00000693          	li	a3,0
   1af60:	4f8050ef          	jal	ra,20458 <__letf2>
   1af64:	02013303          	ld	t1,32(sp)
   1af68:	52054663          	bltz	a0,1b494 <_svfprintf_r+0x1ff8>
   1af6c:	0df14783          	lbu	a5,223(sp)
   1af70:	04700693          	li	a3,71
   1af74:	00007d97          	auipc	s11,0x7
   1af78:	c2cd8d93          	addi	s11,s11,-980 # 21ba0 <zeroes.4539+0x48>
   1af7c:	2286c063          	blt	a3,s0,1b19c <_svfprintf_r+0x1d00>
   1af80:	f7f4f493          	andi	s1,s1,-129
   1af84:	02013023          	sd	zero,32(sp)
   1af88:	04013023          	sd	zero,64(sp)
   1af8c:	02013c23          	sd	zero,56(sp)
   1af90:	02013423          	sd	zero,40(sp)
   1af94:	0004849b          	sext.w	s1,s1
   1af98:	00300a13          	li	s4,3
   1af9c:	00300c93          	li	s9,3
   1afa0:	00000b93          	li	s7,0
   1afa4:	00078463          	beqz	a5,1afac <_svfprintf_r+0x1b10>
   1afa8:	ff4fe06f          	j	1979c <_svfprintf_r+0x300>
   1afac:	b61fe06f          	j	19b0c <_svfprintf_r+0x670>
   1afb0:	11812603          	lw	a2,280(sp)
   1afb4:	05013703          	ld	a4,80(sp)
   1afb8:	06013683          	ld	a3,96(sp)
   1afbc:	01030313          	addi	t1,t1,16
   1afc0:	00e787b3          	add	a5,a5,a4
   1afc4:	fed33823          	sd	a3,-16(t1)
   1afc8:	0016069b          	addiw	a3,a2,1
   1afcc:	fee33c23          	sd	a4,-8(t1)
   1afd0:	12f13023          	sd	a5,288(sp)
   1afd4:	10d12c23          	sw	a3,280(sp)
   1afd8:	00700613          	li	a2,7
   1afdc:	2ad64e63          	blt	a2,a3,1b298 <_svfprintf_r+0x1dfc>
   1afe0:	e205d4e3          	bgez	a1,1ae08 <_svfprintf_r+0x196c>
   1afe4:	ff000613          	li	a2,-16
   1afe8:	40b0043b          	negw	s0,a1
   1afec:	0ec5d6e3          	bge	a1,a2,1b8d8 <_svfprintf_r+0x243c>
   1aff0:	00700c93          	li	s9,7
   1aff4:	01013b03          	ld	s6,16(sp)
   1aff8:	00c0006f          	j	1b004 <_svfprintf_r+0x1b68>
   1affc:	ff04041b          	addiw	s0,s0,-16
   1b000:	0c8d5ce3          	bge	s10,s0,1b8d8 <_svfprintf_r+0x243c>
   1b004:	0016869b          	addiw	a3,a3,1
   1b008:	01078793          	addi	a5,a5,16
   1b00c:	01833023          	sd	s8,0(t1)
   1b010:	01a33423          	sd	s10,8(t1)
   1b014:	12f13023          	sd	a5,288(sp)
   1b018:	10d12c23          	sw	a3,280(sp)
   1b01c:	01030313          	addi	t1,t1,16
   1b020:	fcdcdee3          	bge	s9,a3,1affc <_svfprintf_r+0x1b60>
   1b024:	11010613          	addi	a2,sp,272
   1b028:	000b0593          	mv	a1,s6
   1b02c:	000a8513          	mv	a0,s5
   1b030:	3b0030ef          	jal	ra,1e3e0 <__ssprint_r>
   1b034:	00050463          	beqz	a0,1b03c <_svfprintf_r+0x1ba0>
   1b038:	e50fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b03c:	12013783          	ld	a5,288(sp)
   1b040:	11812683          	lw	a3,280(sp)
   1b044:	19010313          	addi	t1,sp,400
   1b048:	fb5ff06f          	j	1affc <_svfprintf_r+0x1b60>
   1b04c:	000d8513          	mv	a0,s11
   1b050:	07913423          	sd	s9,104(sp)
   1b054:	aa8fe0ef          	jal	ra,192fc <strlen>
   1b058:	00050c9b          	sext.w	s9,a0
   1b05c:	fffcca13          	not	s4,s9
   1b060:	0df14783          	lbu	a5,223(sp)
   1b064:	43fa5a13          	srai	s4,s4,0x3f
   1b068:	014cfa33          	and	s4,s9,s4
   1b06c:	01613c23          	sd	s6,24(sp)
   1b070:	02013023          	sd	zero,32(sp)
   1b074:	04013023          	sd	zero,64(sp)
   1b078:	02013c23          	sd	zero,56(sp)
   1b07c:	02013423          	sd	zero,40(sp)
   1b080:	000a0a1b          	sext.w	s4,s4
   1b084:	00000b93          	li	s7,0
   1b088:	06813303          	ld	t1,104(sp)
   1b08c:	00078463          	beqz	a5,1b094 <_svfprintf_r+0x1bf8>
   1b090:	f0cfe06f          	j	1979c <_svfprintf_r+0x300>
   1b094:	a79fe06f          	j	19b0c <_svfprintf_r+0x670>
   1b098:	00178b1b          	addiw	s6,a5,1
   1b09c:	01040793          	addi	a5,s0,16
   1b0a0:	017c8cb3          	add	s9,s9,s7
   1b0a4:	01843023          	sd	s8,0(s0)
   1b0a8:	01743423          	sd	s7,8(s0)
   1b0ac:	13913023          	sd	s9,288(sp)
   1b0b0:	11612c23          	sw	s6,280(sp)
   1b0b4:	00700713          	li	a4,7
   1b0b8:	cb6740e3          	blt	a4,s6,1ad58 <_svfprintf_r+0x18bc>
   1b0bc:	001b0b1b          	addiw	s6,s6,1
   1b0c0:	01078313          	addi	t1,a5,16
   1b0c4:	00078413          	mv	s0,a5
   1b0c8:	ca9fe06f          	j	19d70 <_svfprintf_r+0x8d4>
   1b0cc:	2004f793          	andi	a5,s1,512
   1b0d0:	1a078263          	beqz	a5,1b274 <_svfprintf_r+0x1dd8>
   1b0d4:	0ffb7b13          	andi	s6,s6,255
   1b0d8:	00e13c23          	sd	a4,24(sp)
   1b0dc:	00048a13          	mv	s4,s1
   1b0e0:	00100793          	li	a5,1
   1b0e4:	e60fe06f          	j	19744 <_svfprintf_r+0x2a8>
   1b0e8:	2004f793          	andi	a5,s1,512
   1b0ec:	16078863          	beqz	a5,1b25c <_svfprintf_r+0x1dc0>
   1b0f0:	01813783          	ld	a5,24(sp)
   1b0f4:	00048a13          	mv	s4,s1
   1b0f8:	00e13c23          	sd	a4,24(sp)
   1b0fc:	00078b03          	lb	s6,0(a5)
   1b100:	000b0793          	mv	a5,s6
   1b104:	8edfe06f          	j	199f0 <_svfprintf_r+0x554>
   1b108:	2004f793          	andi	a5,s1,512
   1b10c:	14078063          	beqz	a5,1b24c <_svfprintf_r+0x1db0>
   1b110:	0ffb7b13          	andi	s6,s6,255
   1b114:	00e13c23          	sd	a4,24(sp)
   1b118:	841fe06f          	j	19958 <_svfprintf_r+0x4bc>
   1b11c:	2004f793          	andi	a5,s1,512
   1b120:	12078063          	beqz	a5,1b240 <_svfprintf_r+0x1da4>
   1b124:	0ffb7b13          	andi	s6,s6,255
   1b128:	decfe06f          	j	19714 <_svfprintf_r+0x278>
   1b12c:	10813783          	ld	a5,264(sp)
   1b130:	1407ce63          	bltz	a5,1b28c <_svfprintf_r+0x1df0>
   1b134:	0df14783          	lbu	a5,223(sp)
   1b138:	04700693          	li	a3,71
   1b13c:	00007d97          	auipc	s11,0x7
   1b140:	a74d8d93          	addi	s11,s11,-1420 # 21bb0 <zeroes.4539+0x58>
   1b144:	e286dee3          	bge	a3,s0,1af80 <_svfprintf_r+0x1ae4>
   1b148:	00007d97          	auipc	s11,0x7
   1b14c:	a70d8d93          	addi	s11,s11,-1424 # 21bb8 <zeroes.4539+0x60>
   1b150:	e31ff06f          	j	1af80 <_svfprintf_r+0x1ae4>
   1b154:	0016861b          	addiw	a2,a3,1
   1b158:	008787b3          	add	a5,a5,s0
   1b15c:	01833023          	sd	s8,0(t1)
   1b160:	00833423          	sd	s0,8(t1)
   1b164:	12f13023          	sd	a5,288(sp)
   1b168:	10c12c23          	sw	a2,280(sp)
   1b16c:	00700693          	li	a3,7
   1b170:	01030313          	addi	t1,t1,16
   1b174:	eec6d063          	bge	a3,a2,1a854 <_svfprintf_r+0x13b8>
   1b178:	01013583          	ld	a1,16(sp)
   1b17c:	11010613          	addi	a2,sp,272
   1b180:	000a8513          	mv	a0,s5
   1b184:	25c030ef          	jal	ra,1e3e0 <__ssprint_r>
   1b188:	00050463          	beqz	a0,1b190 <_svfprintf_r+0x1cf4>
   1b18c:	cfcfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b190:	12013783          	ld	a5,288(sp)
   1b194:	19010313          	addi	t1,sp,400
   1b198:	ebcff06f          	j	1a854 <_svfprintf_r+0x13b8>
   1b19c:	00007d97          	auipc	s11,0x7
   1b1a0:	a0cd8d93          	addi	s11,s11,-1524 # 21ba8 <zeroes.4539+0x50>
   1b1a4:	dddff06f          	j	1af80 <_svfprintf_r+0x1ae4>
   1b1a8:	01013583          	ld	a1,16(sp)
   1b1ac:	11010613          	addi	a2,sp,272
   1b1b0:	000a8513          	mv	a0,s5
   1b1b4:	22c030ef          	jal	ra,1e3e0 <__ssprint_r>
   1b1b8:	00050463          	beqz	a0,1b1c0 <_svfprintf_r+0x1d24>
   1b1bc:	cccfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b1c0:	12013783          	ld	a5,288(sp)
   1b1c4:	19010313          	addi	t1,sp,400
   1b1c8:	e74ff06f          	j	1a83c <_svfprintf_r+0x13a0>
   1b1cc:	09013783          	ld	a5,144(sp)
   1b1d0:	07813583          	ld	a1,120(sp)
   1b1d4:	00000493          	li	s1,0
   1b1d8:	40f40433          	sub	s0,s0,a5
   1b1dc:	00078613          	mv	a2,a5
   1b1e0:	00040513          	mv	a0,s0
   1b1e4:	9e8fe0ef          	jal	ra,193cc <strncpy>
   1b1e8:	00194683          	lbu	a3,1(s2)
   1b1ec:	00098513          	mv	a0,s3
   1b1f0:	00a00593          	li	a1,10
   1b1f4:	00d03733          	snez	a4,a3
   1b1f8:	00e90933          	add	s2,s2,a4
   1b1fc:	e78f50ef          	jal	ra,10874 <__udivdi3>
   1b200:	00050993          	mv	s3,a0
   1b204:	c95ff06f          	j	1ae98 <_svfprintf_r+0x19fc>
   1b208:	00600e13          	li	t3,6
   1b20c:	941ff06f          	j	1ab4c <_svfprintf_r+0x16b0>
   1b210:	03013703          	ld	a4,48(sp)
   1b214:	40d7063b          	subw	a2,a4,a3
   1b218:	00ed8733          	add	a4,s11,a4
   1b21c:	4177083b          	subw	a6,a4,s7
   1b220:	00060413          	mv	s0,a2
   1b224:	ecc85863          	bge	a6,a2,1a8f4 <_svfprintf_r+0x1458>
   1b228:	0008041b          	sext.w	s0,a6
   1b22c:	ec8ff06f          	j	1a8f4 <_svfprintf_r+0x1458>
   1b230:	00813783          	ld	a5,8(sp)
   1b234:	00090d93          	mv	s11,s2
   1b238:	00f71023          	sh	a5,0(a4)
   1b23c:	9f5fe06f          	j	19c30 <_svfprintf_r+0x794>
   1b240:	020b1b13          	slli	s6,s6,0x20
   1b244:	020b5b13          	srli	s6,s6,0x20
   1b248:	cccfe06f          	j	19714 <_svfprintf_r+0x278>
   1b24c:	020b1b13          	slli	s6,s6,0x20
   1b250:	020b5b13          	srli	s6,s6,0x20
   1b254:	00e13c23          	sd	a4,24(sp)
   1b258:	f00fe06f          	j	19958 <_svfprintf_r+0x4bc>
   1b25c:	01813783          	ld	a5,24(sp)
   1b260:	00048a13          	mv	s4,s1
   1b264:	00e13c23          	sd	a4,24(sp)
   1b268:	0007ab03          	lw	s6,0(a5)
   1b26c:	000b0793          	mv	a5,s6
   1b270:	f80fe06f          	j	199f0 <_svfprintf_r+0x554>
   1b274:	020b1b13          	slli	s6,s6,0x20
   1b278:	020b5b13          	srli	s6,s6,0x20
   1b27c:	00e13c23          	sd	a4,24(sp)
   1b280:	00048a13          	mv	s4,s1
   1b284:	00100793          	li	a5,1
   1b288:	cbcfe06f          	j	19744 <_svfprintf_r+0x2a8>
   1b28c:	02d00793          	li	a5,45
   1b290:	0cf10fa3          	sb	a5,223(sp)
   1b294:	ea5ff06f          	j	1b138 <_svfprintf_r+0x1c9c>
   1b298:	01013583          	ld	a1,16(sp)
   1b29c:	11010613          	addi	a2,sp,272
   1b2a0:	000a8513          	mv	a0,s5
   1b2a4:	13c030ef          	jal	ra,1e3e0 <__ssprint_r>
   1b2a8:	00050463          	beqz	a0,1b2b0 <_svfprintf_r+0x1e14>
   1b2ac:	bdcfe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b2b0:	0e812583          	lw	a1,232(sp)
   1b2b4:	12013783          	ld	a5,288(sp)
   1b2b8:	11812683          	lw	a3,280(sp)
   1b2bc:	19010313          	addi	t1,sp,400
   1b2c0:	b405d4e3          	bgez	a1,1ae08 <_svfprintf_r+0x196c>
   1b2c4:	d21ff06f          	j	1afe4 <_svfprintf_r+0x1b48>
   1b2c8:	00600b93          	li	s7,6
   1b2cc:	b7dfe06f          	j	19e48 <_svfprintf_r+0x9ac>
   1b2d0:	00048a13          	mv	s4,s1
   1b2d4:	fa5fe06f          	j	1a278 <_svfprintf_r+0xddc>
   1b2d8:	04013d83          	ld	s11,64(sp)
   1b2dc:	03013703          	ld	a4,48(sp)
   1b2e0:	08913023          	sd	s1,128(sp)
   1b2e4:	02813903          	ld	s2,40(sp)
   1b2e8:	00ed86b3          	add	a3,s11,a4
   1b2ec:	08813983          	ld	s3,136(sp)
   1b2f0:	06813483          	ld	s1,104(sp)
   1b2f4:	03813a03          	ld	s4,56(sp)
   1b2f8:	d776f663          	bgeu	a3,s7,1a864 <_svfprintf_r+0x13c8>
   1b2fc:	00068b93          	mv	s7,a3
   1b300:	d64ff06f          	j	1a864 <_svfprintf_r+0x13c8>
   1b304:	02813703          	ld	a4,40(sp)
   1b308:	ffd00793          	li	a5,-3
   1b30c:	00f74463          	blt	a4,a5,1b314 <_svfprintf_r+0x1e78>
   1b310:	00ebda63          	bge	s7,a4,1b324 <_svfprintf_r+0x1e88>
   1b314:	ffe4041b          	addiw	s0,s0,-2
   1b318:	fdf47793          	andi	a5,s0,-33
   1b31c:	02f13c23          	sd	a5,56(sp)
   1b320:	bfdfe06f          	j	19f1c <_svfprintf_r+0xa80>
   1b324:	03013783          	ld	a5,48(sp)
   1b328:	02813703          	ld	a4,40(sp)
   1b32c:	1ef74c63          	blt	a4,a5,1b524 <_svfprintf_r+0x2088>
   1b330:	04013783          	ld	a5,64(sp)
   1b334:	00070c93          	mv	s9,a4
   1b338:	0017f793          	andi	a5,a5,1
   1b33c:	00078663          	beqz	a5,1b348 <_svfprintf_r+0x1eac>
   1b340:	05013783          	ld	a5,80(sp)
   1b344:	00e78cbb          	addw	s9,a5,a4
   1b348:	04013783          	ld	a5,64(sp)
   1b34c:	4007f793          	andi	a5,a5,1024
   1b350:	00078663          	beqz	a5,1b35c <_svfprintf_r+0x1ec0>
   1b354:	02813783          	ld	a5,40(sp)
   1b358:	68f04a63          	bgtz	a5,1b9ec <_svfprintf_r+0x2550>
   1b35c:	fffcca13          	not	s4,s9
   1b360:	43fa5a13          	srai	s4,s4,0x3f
   1b364:	014cfa33          	and	s4,s9,s4
   1b368:	000a0a1b          	sext.w	s4,s4
   1b36c:	06700413          	li	s0,103
   1b370:	04013023          	sd	zero,64(sp)
   1b374:	02013c23          	sd	zero,56(sp)
   1b378:	ce9fe06f          	j	1a060 <_svfprintf_r+0xbc4>
   1b37c:	0e810793          	addi	a5,sp,232
   1b380:	00300693          	li	a3,3
   1b384:	000e8593          	mv	a1,t4
   1b388:	0f810893          	addi	a7,sp,248
   1b38c:	0ec10813          	addi	a6,sp,236
   1b390:	000b8713          	mv	a4,s7
   1b394:	000c8613          	mv	a2,s9
   1b398:	000a8513          	mv	a0,s5
   1b39c:	02613823          	sd	t1,48(sp)
   1b3a0:	03d13423          	sd	t4,40(sp)
   1b3a4:	8a5fa0ef          	jal	ra,15c48 <_ldtoa_r>
   1b3a8:	00054683          	lbu	a3,0(a0)
   1b3ac:	03000793          	li	a5,48
   1b3b0:	00050d93          	mv	s11,a0
   1b3b4:	02813e83          	ld	t4,40(sp)
   1b3b8:	03013303          	ld	t1,48(sp)
   1b3bc:	0af68063          	beq	a3,a5,1b45c <_svfprintf_r+0x1fc0>
   1b3c0:	0e812783          	lw	a5,232(sp)
   1b3c4:	017787b3          	add	a5,a5,s7
   1b3c8:	00fd8a33          	add	s4,s11,a5
   1b3cc:	00000613          	li	a2,0
   1b3d0:	00000693          	li	a3,0
   1b3d4:	000e8513          	mv	a0,t4
   1b3d8:	000c8593          	mv	a1,s9
   1b3dc:	02613423          	sd	t1,40(sp)
   1b3e0:	70d040ef          	jal	ra,202ec <__eqtf2>
   1b3e4:	000a0793          	mv	a5,s4
   1b3e8:	02813303          	ld	t1,40(sp)
   1b3ec:	00051463          	bnez	a0,1b3f4 <_svfprintf_r+0x1f58>
   1b3f0:	afdfe06f          	j	19eec <_svfprintf_r+0xa50>
   1b3f4:	0f813783          	ld	a5,248(sp)
   1b3f8:	03000613          	li	a2,48
   1b3fc:	0147e463          	bltu	a5,s4,1b404 <_svfprintf_r+0x1f68>
   1b400:	aedfe06f          	j	19eec <_svfprintf_r+0xa50>
   1b404:	00178713          	addi	a4,a5,1
   1b408:	0ee13c23          	sd	a4,248(sp)
   1b40c:	00c78023          	sb	a2,0(a5)
   1b410:	0f813783          	ld	a5,248(sp)
   1b414:	ff47e8e3          	bltu	a5,s4,1b404 <_svfprintf_r+0x1f68>
   1b418:	ad5fe06f          	j	19eec <_svfprintf_r+0xa50>
   1b41c:	0df14783          	lbu	a5,223(sp)
   1b420:	00000b93          	li	s7,0
   1b424:	00078463          	beqz	a5,1b42c <_svfprintf_r+0x1f90>
   1b428:	b74fe06f          	j	1979c <_svfprintf_r+0x300>
   1b42c:	ee0fe06f          	j	19b0c <_svfprintf_r+0x670>
   1b430:	11010613          	addi	a2,sp,272
   1b434:	000a0593          	mv	a1,s4
   1b438:	000a8513          	mv	a0,s5
   1b43c:	7a5020ef          	jal	ra,1e3e0 <__ssprint_r>
   1b440:	00050463          	beqz	a0,1b448 <_svfprintf_r+0x1fac>
   1b444:	a44fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b448:	0004c603          	lbu	a2,0(s1)
   1b44c:	12013783          	ld	a5,288(sp)
   1b450:	19010313          	addi	t1,sp,400
   1b454:	00cb8bb3          	add	s7,s7,a2
   1b458:	841ff06f          	j	1ac98 <_svfprintf_r+0x17fc>
   1b45c:	000e8513          	mv	a0,t4
   1b460:	00000613          	li	a2,0
   1b464:	00000693          	li	a3,0
   1b468:	000c8593          	mv	a1,s9
   1b46c:	02613823          	sd	t1,48(sp)
   1b470:	03d13423          	sd	t4,40(sp)
   1b474:	679040ef          	jal	ra,202ec <__eqtf2>
   1b478:	02813e83          	ld	t4,40(sp)
   1b47c:	03013303          	ld	t1,48(sp)
   1b480:	f40500e3          	beqz	a0,1b3c0 <_svfprintf_r+0x1f24>
   1b484:	00100693          	li	a3,1
   1b488:	417687bb          	subw	a5,a3,s7
   1b48c:	0ef12423          	sw	a5,232(sp)
   1b490:	f35ff06f          	j	1b3c4 <_svfprintf_r+0x1f28>
   1b494:	02d00793          	li	a5,45
   1b498:	0cf10fa3          	sb	a5,223(sp)
   1b49c:	ad5ff06f          	j	1af70 <_svfprintf_r+0x1ad4>
   1b4a0:	01013583          	ld	a1,16(sp)
   1b4a4:	11010613          	addi	a2,sp,272
   1b4a8:	000a8513          	mv	a0,s5
   1b4ac:	735020ef          	jal	ra,1e3e0 <__ssprint_r>
   1b4b0:	00050463          	beqz	a0,1b4b8 <_svfprintf_r+0x201c>
   1b4b4:	9d4fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b4b8:	0e812683          	lw	a3,232(sp)
   1b4bc:	12013783          	ld	a5,288(sp)
   1b4c0:	19010313          	addi	t1,sp,400
   1b4c4:	be4ff06f          	j	1a8a8 <_svfprintf_r+0x140c>
   1b4c8:	0df14783          	lbu	a5,223(sp)
   1b4cc:	01613c23          	sd	s6,24(sp)
   1b4d0:	04013023          	sd	zero,64(sp)
   1b4d4:	02013c23          	sd	zero,56(sp)
   1b4d8:	02013423          	sd	zero,40(sp)
   1b4dc:	000b8a13          	mv	s4,s7
   1b4e0:	000b8c93          	mv	s9,s7
   1b4e4:	00000b93          	li	s7,0
   1b4e8:	00078463          	beqz	a5,1b4f0 <_svfprintf_r+0x2054>
   1b4ec:	ab0fe06f          	j	1979c <_svfprintf_r+0x300>
   1b4f0:	e1cfe06f          	j	19b0c <_svfprintf_r+0x670>
   1b4f4:	01013583          	ld	a1,16(sp)
   1b4f8:	11010613          	addi	a2,sp,272
   1b4fc:	000a8513          	mv	a0,s5
   1b500:	6e1020ef          	jal	ra,1e3e0 <__ssprint_r>
   1b504:	00050463          	beqz	a0,1b50c <_svfprintf_r+0x2070>
   1b508:	980fe06f          	j	19688 <_svfprintf_r+0x1ec>
   1b50c:	0e812603          	lw	a2,232(sp)
   1b510:	03013703          	ld	a4,48(sp)
   1b514:	12013783          	ld	a5,288(sp)
   1b518:	19010313          	addi	t1,sp,400
   1b51c:	40c7063b          	subw	a2,a4,a2
   1b520:	bd4ff06f          	j	1a8f4 <_svfprintf_r+0x1458>
   1b524:	03013703          	ld	a4,48(sp)
   1b528:	05013783          	ld	a5,80(sp)
   1b52c:	06700413          	li	s0,103
   1b530:	00e78cbb          	addw	s9,a5,a4
   1b534:	02813703          	ld	a4,40(sp)
   1b538:	58e05a63          	blez	a4,1bacc <_svfprintf_r+0x2630>
   1b53c:	04013783          	ld	a5,64(sp)
   1b540:	4007f793          	andi	a5,a5,1024
   1b544:	4a079663          	bnez	a5,1b9f0 <_svfprintf_r+0x2554>
   1b548:	fffcca13          	not	s4,s9
   1b54c:	43fa5a13          	srai	s4,s4,0x3f
   1b550:	014cfa33          	and	s4,s9,s4
   1b554:	000a0a1b          	sext.w	s4,s4
   1b558:	e19ff06f          	j	1b370 <_svfprintf_r+0x1ed4>
   1b55c:	04013783          	ld	a5,64(sp)
   1b560:	02813703          	ld	a4,40(sp)
   1b564:	0017f793          	andi	a5,a5,1
   1b568:	00fbe7b3          	or	a5,s7,a5
   1b56c:	0007879b          	sext.w	a5,a5
   1b570:	58e05863          	blez	a4,1bb00 <_svfprintf_r+0x2664>
   1b574:	54079263          	bnez	a5,1bab8 <_svfprintf_r+0x261c>
   1b578:	02813c83          	ld	s9,40(sp)
   1b57c:	06600413          	li	s0,102
   1b580:	fbdff06f          	j	1b53c <_svfprintf_r+0x20a0>
   1b584:	03000793          	li	a5,48
   1b588:	0ef10023          	sb	a5,224(sp)
   1b58c:	05800713          	li	a4,88
   1b590:	0024e793          	ori	a5,s1,2
   1b594:	0007879b          	sext.w	a5,a5
   1b598:	0ee100a3          	sb	a4,225(sp)
   1b59c:	06300693          	li	a3,99
   1b5a0:	04f13023          	sd	a5,64(sp)
   1b5a4:	02013023          	sd	zero,32(sp)
   1b5a8:	12810d93          	addi	s11,sp,296
   1b5ac:	2b76cc63          	blt	a3,s7,1b864 <_svfprintf_r+0x23c8>
   1b5b0:	10813c83          	ld	s9,264(sp)
   1b5b4:	fdf47793          	andi	a5,s0,-33
   1b5b8:	1024e493          	ori	s1,s1,258
   1b5bc:	02f13c23          	sd	a5,56(sp)
   1b5c0:	06013423          	sd	zero,104(sp)
   1b5c4:	0004849b          	sext.w	s1,s1
   1b5c8:	10013e83          	ld	t4,256(sp)
   1b5cc:	220cc263          	bltz	s9,1b7f0 <_svfprintf_r+0x2354>
   1b5d0:	06100793          	li	a5,97
   1b5d4:	3af40663          	beq	s0,a5,1b980 <_svfprintf_r+0x24e4>
   1b5d8:	04100793          	li	a5,65
   1b5dc:	00f40463          	beq	s0,a5,1b5e4 <_svfprintf_r+0x2148>
   1b5e0:	891fe06f          	j	19e70 <_svfprintf_r+0x9d4>
   1b5e4:	000e8513          	mv	a0,t4
   1b5e8:	000c8593          	mv	a1,s9
   1b5ec:	08613423          	sd	t1,136(sp)
   1b5f0:	024060ef          	jal	ra,21614 <__trunctfdf2>
   1b5f4:	0e810593          	addi	a1,sp,232
   1b5f8:	fecfd0ef          	jal	ra,18de4 <frexp>
   1b5fc:	725050ef          	jal	ra,21520 <__extenddftf2>
   1b600:	00006797          	auipc	a5,0x6
   1b604:	59078793          	addi	a5,a5,1424 # 21b90 <zeroes.4539+0x38>
   1b608:	0087b683          	ld	a3,8(a5)
   1b60c:	00000613          	li	a2,0
   1b610:	729040ef          	jal	ra,20538 <__multf3>
   1b614:	00000613          	li	a2,0
   1b618:	00000693          	li	a3,0
   1b61c:	02a13823          	sd	a0,48(sp)
   1b620:	02b13423          	sd	a1,40(sp)
   1b624:	4c9040ef          	jal	ra,202ec <__eqtf2>
   1b628:	02813f03          	ld	t5,40(sp)
   1b62c:	03013e83          	ld	t4,48(sp)
   1b630:	08813303          	ld	t1,136(sp)
   1b634:	00051663          	bnez	a0,1b640 <_svfprintf_r+0x21a4>
   1b638:	00100793          	li	a5,1
   1b63c:	0ef12423          	sw	a5,232(sp)
   1b640:	00006797          	auipc	a5,0x6
   1b644:	59878793          	addi	a5,a5,1432 # 21bd8 <zeroes.4539+0x80>
   1b648:	02f13423          	sd	a5,40(sp)
   1b64c:	000b879b          	sext.w	a5,s7
   1b650:	02079c93          	slli	s9,a5,0x20
   1b654:	00fd873b          	addw	a4,s11,a5
   1b658:	00006797          	auipc	a5,0x6
   1b65c:	51878793          	addi	a5,a5,1304 # 21b70 <zeroes.4539+0x18>
   1b660:	0087b783          	ld	a5,8(a5)
   1b664:	020cdc93          	srli	s9,s9,0x20
   1b668:	001c8c93          	addi	s9,s9,1
   1b66c:	0a913023          	sd	s1,160(sp)
   1b670:	0b313423          	sd	s3,168(sp)
   1b674:	0d513023          	sd	s5,192(sp)
   1b678:	019d8cb3          	add	s9,s11,s9
   1b67c:	000d8b13          	mv	s6,s11
   1b680:	02f13823          	sd	a5,48(sp)
   1b684:	09213423          	sd	s2,136(sp)
   1b688:	08813c23          	sd	s0,152(sp)
   1b68c:	0b713823          	sd	s7,176(sp)
   1b690:	0a613c23          	sd	t1,184(sp)
   1b694:	0db13423          	sd	s11,200(sp)
   1b698:	000e8993          	mv	s3,t4
   1b69c:	000f0a93          	mv	s5,t5
   1b6a0:	00070493          	mv	s1,a4
   1b6a4:	0180006f          	j	1b6bc <_svfprintf_r+0x2220>
   1b6a8:	00000613          	li	a2,0
   1b6ac:	00000693          	li	a3,0
   1b6b0:	43d040ef          	jal	ra,202ec <__eqtf2>
   1b6b4:	28050463          	beqz	a0,1b93c <_svfprintf_r+0x24a0>
   1b6b8:	000b8b13          	mv	s6,s7
   1b6bc:	03013683          	ld	a3,48(sp)
   1b6c0:	00000613          	li	a2,0
   1b6c4:	00098513          	mv	a0,s3
   1b6c8:	000a8593          	mv	a1,s5
   1b6cc:	66d040ef          	jal	ra,20538 <__multf3>
   1b6d0:	00058913          	mv	s2,a1
   1b6d4:	00050413          	mv	s0,a0
   1b6d8:	551050ef          	jal	ra,21428 <__fixtfsi>
   1b6dc:	00050a1b          	sext.w	s4,a0
   1b6e0:	000a0513          	mv	a0,s4
   1b6e4:	5ad050ef          	jal	ra,21490 <__floatsitf>
   1b6e8:	00050613          	mv	a2,a0
   1b6ec:	00058693          	mv	a3,a1
   1b6f0:	00040513          	mv	a0,s0
   1b6f4:	00090593          	mv	a1,s2
   1b6f8:	560050ef          	jal	ra,20c58 <__subtf3>
   1b6fc:	02813783          	ld	a5,40(sp)
   1b700:	001b0b93          	addi	s7,s6,1
   1b704:	00050d93          	mv	s11,a0
   1b708:	014787b3          	add	a5,a5,s4
   1b70c:	0007c703          	lbu	a4,0(a5)
   1b710:	00058413          	mv	s0,a1
   1b714:	00050993          	mv	s3,a0
   1b718:	feeb8fa3          	sb	a4,-1(s7)
   1b71c:	00058a93          	mv	s5,a1
   1b720:	4174893b          	subw	s2,s1,s7
   1b724:	f97c92e3          	bne	s9,s7,1b6a8 <_svfprintf_r+0x220c>
   1b728:	08813903          	ld	s2,136(sp)
   1b72c:	0a013483          	ld	s1,160(sp)
   1b730:	0a813983          	ld	s3,168(sp)
   1b734:	0b013b83          	ld	s7,176(sp)
   1b738:	0b813303          	ld	t1,184(sp)
   1b73c:	0c013a83          	ld	s5,192(sp)
   1b740:	0c813d83          	ld	s11,200(sp)
   1b744:	09813403          	ld	s0,152(sp)
   1b748:	fff00793          	li	a5,-1
   1b74c:	00050893          	mv	a7,a0
   1b750:	00058813          	mv	a6,a1
   1b754:	02f13823          	sd	a5,48(sp)
   1b758:	00006797          	auipc	a5,0x6
   1b75c:	42878793          	addi	a5,a5,1064 # 21b80 <zeroes.4539+0x28>
   1b760:	0087b783          	ld	a5,8(a5)
   1b764:	00000613          	li	a2,0
   1b768:	00088513          	mv	a0,a7
   1b76c:	00078693          	mv	a3,a5
   1b770:	00080593          	mv	a1,a6
   1b774:	08613c23          	sd	t1,152(sp)
   1b778:	08f13423          	sd	a5,136(sp)
   1b77c:	0b113423          	sd	a7,168(sp)
   1b780:	0b013023          	sd	a6,160(sp)
   1b784:	3f5040ef          	jal	ra,20378 <__getf2>
   1b788:	09813303          	ld	t1,152(sp)
   1b78c:	06a04e63          	bgtz	a0,1b808 <_svfprintf_r+0x236c>
   1b790:	0a813883          	ld	a7,168(sp)
   1b794:	0a013803          	ld	a6,160(sp)
   1b798:	08813683          	ld	a3,136(sp)
   1b79c:	00000613          	li	a2,0
   1b7a0:	00088513          	mv	a0,a7
   1b7a4:	00080593          	mv	a1,a6
   1b7a8:	345040ef          	jal	ra,202ec <__eqtf2>
   1b7ac:	09813303          	ld	t1,152(sp)
   1b7b0:	00051663          	bnez	a0,1b7bc <_svfprintf_r+0x2320>
   1b7b4:	001a7a13          	andi	s4,s4,1
   1b7b8:	040a1863          	bnez	s4,1b808 <_svfprintf_r+0x236c>
   1b7bc:	03013703          	ld	a4,48(sp)
   1b7c0:	03000693          	li	a3,48
   1b7c4:	00170793          	addi	a5,a4,1
   1b7c8:	00fc87b3          	add	a5,s9,a5
   1b7cc:	00074863          	bltz	a4,1b7dc <_svfprintf_r+0x2340>
   1b7d0:	001c8c93          	addi	s9,s9,1
   1b7d4:	fedc8fa3          	sb	a3,-1(s9)
   1b7d8:	ff979ce3          	bne	a5,s9,1b7d0 <_svfprintf_r+0x2334>
   1b7dc:	41bc87bb          	subw	a5,s9,s11
   1b7e0:	02f13823          	sd	a5,48(sp)
   1b7e4:	f10fe06f          	j	19ef4 <_svfprintf_r+0xa58>
   1b7e8:	02013023          	sd	zero,32(sp)
   1b7ec:	00078493          	mv	s1,a5
   1b7f0:	fff00793          	li	a5,-1
   1b7f4:	03f79793          	slli	a5,a5,0x3f
   1b7f8:	00fcccb3          	xor	s9,s9,a5
   1b7fc:	02d00793          	li	a5,45
   1b800:	06f13423          	sd	a5,104(sp)
   1b804:	dcdff06f          	j	1b5d0 <_svfprintf_r+0x2134>
   1b808:	02813783          	ld	a5,40(sp)
   1b80c:	0f613c23          	sd	s6,248(sp)
   1b810:	fffcc683          	lbu	a3,-1(s9)
   1b814:	00f7c603          	lbu	a2,15(a5)
   1b818:	000c8793          	mv	a5,s9
   1b81c:	02d61063          	bne	a2,a3,1b83c <_svfprintf_r+0x23a0>
   1b820:	03000593          	li	a1,48
   1b824:	feb78fa3          	sb	a1,-1(a5)
   1b828:	0f813783          	ld	a5,248(sp)
   1b82c:	fff78713          	addi	a4,a5,-1
   1b830:	0ee13c23          	sd	a4,248(sp)
   1b834:	fff7c683          	lbu	a3,-1(a5)
   1b838:	fed606e3          	beq	a2,a3,1b824 <_svfprintf_r+0x2388>
   1b83c:	0016861b          	addiw	a2,a3,1
   1b840:	03900593          	li	a1,57
   1b844:	0ff67613          	andi	a2,a2,255
   1b848:	00b68663          	beq	a3,a1,1b854 <_svfprintf_r+0x23b8>
   1b84c:	fec78fa3          	sb	a2,-1(a5)
   1b850:	f8dff06f          	j	1b7dc <_svfprintf_r+0x2340>
   1b854:	02813703          	ld	a4,40(sp)
   1b858:	00a74603          	lbu	a2,10(a4)
   1b85c:	fec78fa3          	sb	a2,-1(a5)
   1b860:	f7dff06f          	j	1b7dc <_svfprintf_r+0x2340>
   1b864:	001b859b          	addiw	a1,s7,1
   1b868:	000a8513          	mv	a0,s5
   1b86c:	02613023          	sd	t1,32(sp)
   1b870:	9edfb0ef          	jal	ra,1725c <_malloc_r>
   1b874:	00050d93          	mv	s11,a0
   1b878:	02013303          	ld	t1,32(sp)
   1b87c:	30050e63          	beqz	a0,1bb98 <_svfprintf_r+0x26fc>
   1b880:	02a13023          	sd	a0,32(sp)
   1b884:	d2dff06f          	j	1b5b0 <_svfprintf_r+0x2114>
   1b888:	03000793          	li	a5,48
   1b88c:	0ef10023          	sb	a5,224(sp)
   1b890:	07800713          	li	a4,120
   1b894:	cfdff06f          	j	1b590 <_svfprintf_r+0x20f4>
   1b898:	001b8a1b          	addiw	s4,s7,1
   1b89c:	000a0713          	mv	a4,s4
   1b8a0:	000e8593          	mv	a1,t4
   1b8a4:	0f810893          	addi	a7,sp,248
   1b8a8:	0ec10813          	addi	a6,sp,236
   1b8ac:	0e810793          	addi	a5,sp,232
   1b8b0:	00200693          	li	a3,2
   1b8b4:	000c8613          	mv	a2,s9
   1b8b8:	000a8513          	mv	a0,s5
   1b8bc:	03d13423          	sd	t4,40(sp)
   1b8c0:	b88fa0ef          	jal	ra,15c48 <_ldtoa_r>
   1b8c4:	00050d93          	mv	s11,a0
   1b8c8:	02813e83          	ld	t4,40(sp)
   1b8cc:	03013303          	ld	t1,48(sp)
   1b8d0:	014d8a33          	add	s4,s11,s4
   1b8d4:	af9ff06f          	j	1b3cc <_svfprintf_r+0x1f30>
   1b8d8:	0016869b          	addiw	a3,a3,1
   1b8dc:	008787b3          	add	a5,a5,s0
   1b8e0:	01833023          	sd	s8,0(t1)
   1b8e4:	00833423          	sd	s0,8(t1)
   1b8e8:	12f13023          	sd	a5,288(sp)
   1b8ec:	10d12c23          	sw	a3,280(sp)
   1b8f0:	00700613          	li	a2,7
   1b8f4:	d0d65863          	bge	a2,a3,1ae04 <_svfprintf_r+0x1968>
   1b8f8:	01013583          	ld	a1,16(sp)
   1b8fc:	11010613          	addi	a2,sp,272
   1b900:	000a8513          	mv	a0,s5
   1b904:	2dd020ef          	jal	ra,1e3e0 <__ssprint_r>
   1b908:	00050463          	beqz	a0,1b910 <_svfprintf_r+0x2474>
   1b90c:	d7dfd06f          	j	19688 <_svfprintf_r+0x1ec>
   1b910:	12013783          	ld	a5,288(sp)
   1b914:	11812683          	lw	a3,280(sp)
   1b918:	19010313          	addi	t1,sp,400
   1b91c:	cecff06f          	j	1ae08 <_svfprintf_r+0x196c>
   1b920:	00f72023          	sw	a5,0(a4)
   1b924:	00090d93          	mv	s11,s2
   1b928:	b08fe06f          	j	19c30 <_svfprintf_r+0x794>
   1b92c:	000b8463          	beqz	s7,1b934 <_svfprintf_r+0x2498>
   1b930:	d18fe06f          	j	19e48 <_svfprintf_r+0x9ac>
   1b934:	00100b93          	li	s7,1
   1b938:	d10fe06f          	j	19e48 <_svfprintf_r+0x9ac>
   1b93c:	000b8793          	mv	a5,s7
   1b940:	03213823          	sd	s2,48(sp)
   1b944:	000d8893          	mv	a7,s11
   1b948:	00040813          	mv	a6,s0
   1b94c:	0a013483          	ld	s1,160(sp)
   1b950:	0a813983          	ld	s3,168(sp)
   1b954:	0b813303          	ld	t1,184(sp)
   1b958:	08813903          	ld	s2,136(sp)
   1b95c:	0b013b83          	ld	s7,176(sp)
   1b960:	0c013a83          	ld	s5,192(sp)
   1b964:	0c813d83          	ld	s11,200(sp)
   1b968:	09813403          	ld	s0,152(sp)
   1b96c:	00078c93          	mv	s9,a5
   1b970:	de9ff06f          	j	1b758 <_svfprintf_r+0x22bc>
   1b974:	fff00793          	li	a5,-1
   1b978:	00f13423          	sd	a5,8(sp)
   1b97c:	d35fd06f          	j	196b0 <_svfprintf_r+0x214>
   1b980:	000e8513          	mv	a0,t4
   1b984:	000c8593          	mv	a1,s9
   1b988:	08613423          	sd	t1,136(sp)
   1b98c:	489050ef          	jal	ra,21614 <__trunctfdf2>
   1b990:	0e810593          	addi	a1,sp,232
   1b994:	c50fd0ef          	jal	ra,18de4 <frexp>
   1b998:	389050ef          	jal	ra,21520 <__extenddftf2>
   1b99c:	00006797          	auipc	a5,0x6
   1b9a0:	1f478793          	addi	a5,a5,500 # 21b90 <zeroes.4539+0x38>
   1b9a4:	0087b683          	ld	a3,8(a5)
   1b9a8:	00000613          	li	a2,0
   1b9ac:	38d040ef          	jal	ra,20538 <__multf3>
   1b9b0:	00000613          	li	a2,0
   1b9b4:	00000693          	li	a3,0
   1b9b8:	02a13823          	sd	a0,48(sp)
   1b9bc:	02b13423          	sd	a1,40(sp)
   1b9c0:	12d040ef          	jal	ra,202ec <__eqtf2>
   1b9c4:	02813f03          	ld	t5,40(sp)
   1b9c8:	03013e83          	ld	t4,48(sp)
   1b9cc:	08813303          	ld	t1,136(sp)
   1b9d0:	00051663          	bnez	a0,1b9dc <_svfprintf_r+0x2540>
   1b9d4:	00100793          	li	a5,1
   1b9d8:	0ef12423          	sw	a5,232(sp)
   1b9dc:	00006797          	auipc	a5,0x6
   1b9e0:	1e478793          	addi	a5,a5,484 # 21bc0 <zeroes.4539+0x68>
   1b9e4:	02f13423          	sd	a5,40(sp)
   1b9e8:	c65ff06f          	j	1b64c <_svfprintf_r+0x21b0>
   1b9ec:	06700413          	li	s0,103
   1b9f0:	08013503          	ld	a0,128(sp)
   1b9f4:	02813703          	ld	a4,40(sp)
   1b9f8:	04013023          	sd	zero,64(sp)
   1b9fc:	00054783          	lbu	a5,0(a0)
   1ba00:	02013c23          	sd	zero,56(sp)
   1ba04:	0ff00593          	li	a1,255
   1ba08:	04b78063          	beq	a5,a1,1ba48 <_svfprintf_r+0x25ac>
   1ba0c:	0007869b          	sext.w	a3,a5
   1ba10:	02e6dc63          	bge	a3,a4,1ba48 <_svfprintf_r+0x25ac>
   1ba14:	00154603          	lbu	a2,1(a0)
   1ba18:	40d7073b          	subw	a4,a4,a3
   1ba1c:	00060e63          	beqz	a2,1ba38 <_svfprintf_r+0x259c>
   1ba20:	03813783          	ld	a5,56(sp)
   1ba24:	00150513          	addi	a0,a0,1
   1ba28:	0017879b          	addiw	a5,a5,1
   1ba2c:	02f13c23          	sd	a5,56(sp)
   1ba30:	00060793          	mv	a5,a2
   1ba34:	fd5ff06f          	j	1ba08 <_svfprintf_r+0x256c>
   1ba38:	04013683          	ld	a3,64(sp)
   1ba3c:	0016869b          	addiw	a3,a3,1
   1ba40:	04d13023          	sd	a3,64(sp)
   1ba44:	fc5ff06f          	j	1ba08 <_svfprintf_r+0x256c>
   1ba48:	02e13423          	sd	a4,40(sp)
   1ba4c:	03813783          	ld	a5,56(sp)
   1ba50:	04013703          	ld	a4,64(sp)
   1ba54:	09013583          	ld	a1,144(sp)
   1ba58:	08a13023          	sd	a0,128(sp)
   1ba5c:	00e7853b          	addw	a0,a5,a4
   1ba60:	08613423          	sd	t1,136(sp)
   1ba64:	569050ef          	jal	ra,217cc <__muldi3>
   1ba68:	0195053b          	addw	a0,a0,s9
   1ba6c:	00050c9b          	sext.w	s9,a0
   1ba70:	fffcca13          	not	s4,s9
   1ba74:	43fa5a13          	srai	s4,s4,0x3f
   1ba78:	01457533          	and	a0,a0,s4
   1ba7c:	00050a1b          	sext.w	s4,a0
   1ba80:	08813303          	ld	t1,136(sp)
   1ba84:	ddcfe06f          	j	1a060 <_svfprintf_r+0xbc4>
   1ba88:	0f210793          	addi	a5,sp,242
   1ba8c:	00069863          	bnez	a3,1ba9c <_svfprintf_r+0x2600>
   1ba90:	03000793          	li	a5,48
   1ba94:	0ef10923          	sb	a5,242(sp)
   1ba98:	0f310793          	addi	a5,sp,243
   1ba9c:	21010713          	addi	a4,sp,528
   1baa0:	030a0a1b          	addiw	s4,s4,48
   1baa4:	40e786b3          	sub	a3,a5,a4
   1baa8:	01478023          	sb	s4,0(a5)
   1baac:	1216879b          	addiw	a5,a3,289
   1bab0:	06f13823          	sd	a5,112(sp)
   1bab4:	d5cfe06f          	j	1a010 <_svfprintf_r+0xb74>
   1bab8:	05013783          	ld	a5,80(sp)
   1babc:	06600413          	li	s0,102
   1bac0:	00e78cbb          	addw	s9,a5,a4
   1bac4:	017c8cbb          	addw	s9,s9,s7
   1bac8:	a75ff06f          	j	1b53c <_svfprintf_r+0x20a0>
   1bacc:	40ec87bb          	subw	a5,s9,a4
   1bad0:	0017879b          	addiw	a5,a5,1
   1bad4:	00078c9b          	sext.w	s9,a5
   1bad8:	fffcca13          	not	s4,s9
   1badc:	43fa5a13          	srai	s4,s4,0x3f
   1bae0:	0147f7b3          	and	a5,a5,s4
   1bae4:	00078a1b          	sext.w	s4,a5
   1bae8:	889ff06f          	j	1b370 <_svfprintf_r+0x1ed4>
   1baec:	04013703          	ld	a4,64(sp)
   1baf0:	00177693          	andi	a3,a4,1
   1baf4:	00069463          	bnez	a3,1bafc <_svfprintf_r+0x2660>
   1baf8:	d3cfe06f          	j	1a034 <_svfprintf_r+0xb98>
   1bafc:	d30fe06f          	j	1a02c <_svfprintf_r+0xb90>
   1bb00:	00079a63          	bnez	a5,1bb14 <_svfprintf_r+0x2678>
   1bb04:	00100a13          	li	s4,1
   1bb08:	06600413          	li	s0,102
   1bb0c:	00100c93          	li	s9,1
   1bb10:	861ff06f          	j	1b370 <_svfprintf_r+0x1ed4>
   1bb14:	05013783          	ld	a5,80(sp)
   1bb18:	06600413          	li	s0,102
   1bb1c:	0017879b          	addiw	a5,a5,1
   1bb20:	01778e3b          	addw	t3,a5,s7
   1bb24:	000e0c9b          	sext.w	s9,t3
   1bb28:	fffcca13          	not	s4,s9
   1bb2c:	43fa5a13          	srai	s4,s4,0x3f
   1bb30:	014e7e33          	and	t3,t3,s4
   1bb34:	000e0a1b          	sext.w	s4,t3
   1bb38:	839ff06f          	j	1b370 <_svfprintf_r+0x1ed4>
   1bb3c:	00030793          	mv	a5,t1
   1bb40:	d60ff06f          	j	1b0a0 <_svfprintf_r+0x1c04>
   1bb44:	01813703          	ld	a4,24(sp)
   1bb48:	00072b83          	lw	s7,0(a4)
   1bb4c:	00870713          	addi	a4,a4,8
   1bb50:	000bd463          	bgez	s7,1bb58 <_svfprintf_r+0x26bc>
   1bb54:	fff00b93          	li	s7,-1
   1bb58:	00194403          	lbu	s0,1(s2)
   1bb5c:	00e13c23          	sd	a4,24(sp)
   1bb60:	00078913          	mv	s2,a5
   1bb64:	aa1fd06f          	j	19604 <_svfprintf_r+0x168>
   1bb68:	000b8a13          	mv	s4,s7
   1bb6c:	014d8a33          	add	s4,s11,s4
   1bb70:	85dff06f          	j	1b3cc <_svfprintf_r+0x1f30>
   1bb74:	00200793          	li	a5,2
   1bb78:	06f13823          	sd	a5,112(sp)
   1bb7c:	c94fe06f          	j	1a010 <_svfprintf_r+0xb74>
   1bb80:	04813703          	ld	a4,72(sp)
   1bb84:	00c00793          	li	a5,12
   1bb88:	00f72023          	sw	a5,0(a4)
   1bb8c:	fff00793          	li	a5,-1
   1bb90:	00f13423          	sd	a5,8(sp)
   1bb94:	b1dfd06f          	j	196b0 <_svfprintf_r+0x214>
   1bb98:	01013683          	ld	a3,16(sp)
   1bb9c:	0106d783          	lhu	a5,16(a3)
   1bba0:	0407e713          	ori	a4,a5,64
   1bba4:	00070793          	mv	a5,a4
   1bba8:	00e69823          	sh	a4,16(a3)
   1bbac:	af9fd06f          	j	196a4 <_svfprintf_r+0x208>

000000000001bbb0 <__sprint_r.part.0>:
   1bbb0:	0ac5a783          	lw	a5,172(a1)
   1bbb4:	fb010113          	addi	sp,sp,-80
   1bbb8:	01513c23          	sd	s5,24(sp)
   1bbbc:	04113423          	sd	ra,72(sp)
   1bbc0:	04813023          	sd	s0,64(sp)
   1bbc4:	02913c23          	sd	s1,56(sp)
   1bbc8:	03213823          	sd	s2,48(sp)
   1bbcc:	03313423          	sd	s3,40(sp)
   1bbd0:	03413023          	sd	s4,32(sp)
   1bbd4:	01613823          	sd	s6,16(sp)
   1bbd8:	01713423          	sd	s7,8(sp)
   1bbdc:	03279713          	slli	a4,a5,0x32
   1bbe0:	00060a93          	mv	s5,a2
   1bbe4:	0c075063          	bgez	a4,1bca4 <__sprint_r.part.0+0xf4>
   1bbe8:	01063703          	ld	a4,16(a2)
   1bbec:	00058913          	mv	s2,a1
   1bbf0:	00050993          	mv	s3,a0
   1bbf4:	00063b03          	ld	s6,0(a2)
   1bbf8:	fff00a13          	li	s4,-1
   1bbfc:	0a070063          	beqz	a4,1bc9c <__sprint_r.part.0+0xec>
   1bc00:	008b3783          	ld	a5,8(s6)
   1bc04:	000b3403          	ld	s0,0(s6)
   1bc08:	0027d793          	srli	a5,a5,0x2
   1bc0c:	00078b9b          	sext.w	s7,a5
   1bc10:	07705c63          	blez	s7,1bc88 <__sprint_r.part.0+0xd8>
   1bc14:	fff7849b          	addiw	s1,a5,-1
   1bc18:	02049493          	slli	s1,s1,0x20
   1bc1c:	01e4d493          	srli	s1,s1,0x1e
   1bc20:	00440793          	addi	a5,s0,4
   1bc24:	00f484b3          	add	s1,s1,a5
   1bc28:	0080006f          	j	1bc30 <__sprint_r.part.0+0x80>
   1bc2c:	04848c63          	beq	s1,s0,1bc84 <__sprint_r.part.0+0xd4>
   1bc30:	00042583          	lw	a1,0(s0)
   1bc34:	00090613          	mv	a2,s2
   1bc38:	00098513          	mv	a0,s3
   1bc3c:	78c010ef          	jal	ra,1d3c8 <_fputwc_r>
   1bc40:	0005051b          	sext.w	a0,a0
   1bc44:	00440413          	addi	s0,s0,4
   1bc48:	ff4512e3          	bne	a0,s4,1bc2c <__sprint_r.part.0+0x7c>
   1bc4c:	fff00513          	li	a0,-1
   1bc50:	04813083          	ld	ra,72(sp)
   1bc54:	04013403          	ld	s0,64(sp)
   1bc58:	000ab823          	sd	zero,16(s5)
   1bc5c:	000aa423          	sw	zero,8(s5)
   1bc60:	03813483          	ld	s1,56(sp)
   1bc64:	03013903          	ld	s2,48(sp)
   1bc68:	02813983          	ld	s3,40(sp)
   1bc6c:	02013a03          	ld	s4,32(sp)
   1bc70:	01813a83          	ld	s5,24(sp)
   1bc74:	01013b03          	ld	s6,16(sp)
   1bc78:	00813b83          	ld	s7,8(sp)
   1bc7c:	05010113          	addi	sp,sp,80
   1bc80:	00008067          	ret
   1bc84:	010ab703          	ld	a4,16(s5)
   1bc88:	002b9b93          	slli	s7,s7,0x2
   1bc8c:	41770733          	sub	a4,a4,s7
   1bc90:	00eab823          	sd	a4,16(s5)
   1bc94:	010b0b13          	addi	s6,s6,16
   1bc98:	f60714e3          	bnez	a4,1bc00 <__sprint_r.part.0+0x50>
   1bc9c:	00000513          	li	a0,0
   1bca0:	fb1ff06f          	j	1bc50 <__sprint_r.part.0+0xa0>
   1bca4:	039010ef          	jal	ra,1d4dc <__sfvwrite_r>
   1bca8:	fa9ff06f          	j	1bc50 <__sprint_r.part.0+0xa0>

000000000001bcac <__sprint_r>:
   1bcac:	01063703          	ld	a4,16(a2)
   1bcb0:	00070463          	beqz	a4,1bcb8 <__sprint_r+0xc>
   1bcb4:	efdff06f          	j	1bbb0 <__sprint_r.part.0>
   1bcb8:	00062423          	sw	zero,8(a2)
   1bcbc:	00000513          	li	a0,0
   1bcc0:	00008067          	ret

000000000001bcc4 <_vfiprintf_r>:
   1bcc4:	e3010113          	addi	sp,sp,-464
   1bcc8:	1b213823          	sd	s2,432(sp)
   1bccc:	1b313423          	sd	s3,424(sp)
   1bcd0:	19713423          	sd	s7,392(sp)
   1bcd4:	1c113423          	sd	ra,456(sp)
   1bcd8:	1c813023          	sd	s0,448(sp)
   1bcdc:	1a913c23          	sd	s1,440(sp)
   1bce0:	1b413023          	sd	s4,416(sp)
   1bce4:	19513c23          	sd	s5,408(sp)
   1bce8:	19613823          	sd	s6,400(sp)
   1bcec:	19813023          	sd	s8,384(sp)
   1bcf0:	17913c23          	sd	s9,376(sp)
   1bcf4:	17a13823          	sd	s10,368(sp)
   1bcf8:	17b13423          	sd	s11,360(sp)
   1bcfc:	00d13823          	sd	a3,16(sp)
   1bd00:	00050993          	mv	s3,a0
   1bd04:	00058913          	mv	s2,a1
   1bd08:	00060b93          	mv	s7,a2
   1bd0c:	00050663          	beqz	a0,1bd18 <_vfiprintf_r+0x54>
   1bd10:	05052783          	lw	a5,80(a0)
   1bd14:	0e0780e3          	beqz	a5,1c5f4 <_vfiprintf_r+0x930>
   1bd18:	01091703          	lh	a4,16(s2)
   1bd1c:	03071793          	slli	a5,a4,0x30
   1bd20:	0307d793          	srli	a5,a5,0x30
   1bd24:	03279693          	slli	a3,a5,0x32
   1bd28:	0206c663          	bltz	a3,1bd54 <_vfiprintf_r+0x90>
   1bd2c:	0ac92683          	lw	a3,172(s2)
   1bd30:	000027b7          	lui	a5,0x2
   1bd34:	00f767b3          	or	a5,a4,a5
   1bd38:	ffffe737          	lui	a4,0xffffe
   1bd3c:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd97af>
   1bd40:	00e6f733          	and	a4,a3,a4
   1bd44:	00f91823          	sh	a5,16(s2)
   1bd48:	03079793          	slli	a5,a5,0x30
   1bd4c:	0ae92623          	sw	a4,172(s2)
   1bd50:	0307d793          	srli	a5,a5,0x30
   1bd54:	0087f713          	andi	a4,a5,8
   1bd58:	14070463          	beqz	a4,1bea0 <_vfiprintf_r+0x1dc>
   1bd5c:	01893703          	ld	a4,24(s2)
   1bd60:	14070063          	beqz	a4,1bea0 <_vfiprintf_r+0x1dc>
   1bd64:	01a7f793          	andi	a5,a5,26
   1bd68:	00a00713          	li	a4,10
   1bd6c:	14e78c63          	beq	a5,a4,1bec4 <_vfiprintf_r+0x200>
   1bd70:	ffff87b7          	lui	a5,0xffff8
   1bd74:	0e010493          	addi	s1,sp,224
   1bd78:	8307c793          	xori	a5,a5,-2000
   1bd7c:	000b8c13          	mv	s8,s7
   1bd80:	06913023          	sd	s1,96(sp)
   1bd84:	06013823          	sd	zero,112(sp)
   1bd88:	06012423          	sw	zero,104(sp)
   1bd8c:	00013c23          	sd	zero,24(sp)
   1bd90:	02013423          	sd	zero,40(sp)
   1bd94:	02013c23          	sd	zero,56(sp)
   1bd98:	02013823          	sd	zero,48(sp)
   1bd9c:	00013023          	sd	zero,0(sp)
   1bda0:	00006a17          	auipc	s4,0x6
   1bda4:	3d0a0a13          	addi	s4,s4,976 # 22170 <zeroes.4524+0x10>
   1bda8:	04f13023          	sd	a5,64(sp)
   1bdac:	00048b93          	mv	s7,s1
   1bdb0:	000c4783          	lbu	a5,0(s8)
   1bdb4:	14078063          	beqz	a5,1bef4 <_vfiprintf_r+0x230>
   1bdb8:	02500713          	li	a4,37
   1bdbc:	56e78ce3          	beq	a5,a4,1cb34 <_vfiprintf_r+0xe70>
   1bdc0:	000c0413          	mv	s0,s8
   1bdc4:	00c0006f          	j	1bdd0 <_vfiprintf_r+0x10c>
   1bdc8:	12e78063          	beq	a5,a4,1bee8 <_vfiprintf_r+0x224>
   1bdcc:	000c8413          	mv	s0,s9
   1bdd0:	00144783          	lbu	a5,1(s0)
   1bdd4:	00140c93          	addi	s9,s0,1
   1bdd8:	fe0798e3          	bnez	a5,1bdc8 <_vfiprintf_r+0x104>
   1bddc:	418c8d3b          	subw	s10,s9,s8
   1bde0:	100d0a63          	beqz	s10,1bef4 <_vfiprintf_r+0x230>
   1bde4:	06812783          	lw	a5,104(sp)
   1bde8:	07013703          	ld	a4,112(sp)
   1bdec:	018bb023          	sd	s8,0(s7)
   1bdf0:	0017869b          	addiw	a3,a5,1
   1bdf4:	00ed0733          	add	a4,s10,a4
   1bdf8:	01abb423          	sd	s10,8(s7)
   1bdfc:	06e13823          	sd	a4,112(sp)
   1be00:	06d12423          	sw	a3,104(sp)
   1be04:	00700793          	li	a5,7
   1be08:	010b8b93          	addi	s7,s7,16
   1be0c:	02d7d063          	bge	a5,a3,1be2c <_vfiprintf_r+0x168>
   1be10:	4e0708e3          	beqz	a4,1cb00 <_vfiprintf_r+0xe3c>
   1be14:	06010613          	addi	a2,sp,96
   1be18:	00090593          	mv	a1,s2
   1be1c:	00098513          	mv	a0,s3
   1be20:	d91ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1be24:	0e051463          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1be28:	00048b93          	mv	s7,s1
   1be2c:	00013703          	ld	a4,0(sp)
   1be30:	00144783          	lbu	a5,1(s0)
   1be34:	01a7073b          	addw	a4,a4,s10
   1be38:	00e13023          	sd	a4,0(sp)
   1be3c:	0a078c63          	beqz	a5,1bef4 <_vfiprintf_r+0x230>
   1be40:	001c8c13          	addi	s8,s9,1
   1be44:	001cc703          	lbu	a4,1(s9)
   1be48:	04010ba3          	sb	zero,87(sp)
   1be4c:	fff00a93          	li	s5,-1
   1be50:	00000413          	li	s0,0
   1be54:	00000b13          	li	s6,0
   1be58:	00900c93          	li	s9,9
   1be5c:	02a00d13          	li	s10,42
   1be60:	001c0c13          	addi	s8,s8,1
   1be64:	0007071b          	sext.w	a4,a4
   1be68:	05a00613          	li	a2,90
   1be6c:	fe07079b          	addiw	a5,a4,-32
   1be70:	0007869b          	sext.w	a3,a5
   1be74:	1cd66063          	bltu	a2,a3,1c034 <_vfiprintf_r+0x370>
   1be78:	02079793          	slli	a5,a5,0x20
   1be7c:	01e7d793          	srli	a5,a5,0x1e
   1be80:	014787b3          	add	a5,a5,s4
   1be84:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd37b0>
   1be88:	014787b3          	add	a5,a5,s4
   1be8c:	00078067          	jr	a5
   1be90:	010b6b13          	ori	s6,s6,16
   1be94:	000b0b1b          	sext.w	s6,s6
   1be98:	000c4703          	lbu	a4,0(s8)
   1be9c:	fc5ff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1bea0:	00090593          	mv	a1,s2
   1bea4:	00098513          	mv	a0,s3
   1bea8:	da0f70ef          	jal	ra,13448 <__swsetup_r>
   1beac:	00050463          	beqz	a0,1beb4 <_vfiprintf_r+0x1f0>
   1beb0:	7dd0006f          	j	1ce8c <_vfiprintf_r+0x11c8>
   1beb4:	01095783          	lhu	a5,16(s2)
   1beb8:	00a00713          	li	a4,10
   1bebc:	01a7f793          	andi	a5,a5,26
   1bec0:	eae798e3          	bne	a5,a4,1bd70 <_vfiprintf_r+0xac>
   1bec4:	01291783          	lh	a5,18(s2)
   1bec8:	ea07c4e3          	bltz	a5,1bd70 <_vfiprintf_r+0xac>
   1becc:	01013683          	ld	a3,16(sp)
   1bed0:	000b8613          	mv	a2,s7
   1bed4:	00090593          	mv	a1,s2
   1bed8:	00098513          	mv	a0,s3
   1bedc:	014010ef          	jal	ra,1cef0 <__sbprintf>
   1bee0:	00a13023          	sd	a0,0(sp)
   1bee4:	0340006f          	j	1bf18 <_vfiprintf_r+0x254>
   1bee8:	418c8d3b          	subw	s10,s9,s8
   1beec:	f40d0ae3          	beqz	s10,1be40 <_vfiprintf_r+0x17c>
   1bef0:	ef5ff06f          	j	1bde4 <_vfiprintf_r+0x120>
   1bef4:	07013783          	ld	a5,112(sp)
   1bef8:	00078a63          	beqz	a5,1bf0c <_vfiprintf_r+0x248>
   1befc:	06010613          	addi	a2,sp,96
   1bf00:	00090593          	mv	a1,s2
   1bf04:	00098513          	mv	a0,s3
   1bf08:	ca9ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1bf0c:	01095783          	lhu	a5,16(s2)
   1bf10:	0407f793          	andi	a5,a5,64
   1bf14:	76079ce3          	bnez	a5,1ce8c <_vfiprintf_r+0x11c8>
   1bf18:	1c813083          	ld	ra,456(sp)
   1bf1c:	1c013403          	ld	s0,448(sp)
   1bf20:	00013503          	ld	a0,0(sp)
   1bf24:	1b813483          	ld	s1,440(sp)
   1bf28:	1b013903          	ld	s2,432(sp)
   1bf2c:	1a813983          	ld	s3,424(sp)
   1bf30:	1a013a03          	ld	s4,416(sp)
   1bf34:	19813a83          	ld	s5,408(sp)
   1bf38:	19013b03          	ld	s6,400(sp)
   1bf3c:	18813b83          	ld	s7,392(sp)
   1bf40:	18013c03          	ld	s8,384(sp)
   1bf44:	17813c83          	ld	s9,376(sp)
   1bf48:	17013d03          	ld	s10,368(sp)
   1bf4c:	16813d83          	ld	s11,360(sp)
   1bf50:	1d010113          	addi	sp,sp,464
   1bf54:	00008067          	ret
   1bf58:	01013683          	ld	a3,16(sp)
   1bf5c:	00006797          	auipc	a5,0x6
   1bf60:	c7c78793          	addi	a5,a5,-900 # 21bd8 <zeroes.4539+0x80>
   1bf64:	00f13c23          	sd	a5,24(sp)
   1bf68:	020b7793          	andi	a5,s6,32
   1bf6c:	00868613          	addi	a2,a3,8
   1bf70:	66078063          	beqz	a5,1c5d0 <_vfiprintf_r+0x90c>
   1bf74:	0006bd83          	ld	s11,0(a3)
   1bf78:	001b7793          	andi	a5,s6,1
   1bf7c:	00078e63          	beqz	a5,1bf98 <_vfiprintf_r+0x2d4>
   1bf80:	000d8c63          	beqz	s11,1bf98 <_vfiprintf_r+0x2d4>
   1bf84:	002b6813          	ori	a6,s6,2
   1bf88:	03000793          	li	a5,48
   1bf8c:	04f10c23          	sb	a5,88(sp)
   1bf90:	04e10ca3          	sb	a4,89(sp)
   1bf94:	00080b1b          	sext.w	s6,a6
   1bf98:	bffb7813          	andi	a6,s6,-1025
   1bf9c:	00080c9b          	sext.w	s9,a6
   1bfa0:	00c13823          	sd	a2,16(sp)
   1bfa4:	00200793          	li	a5,2
   1bfa8:	04010ba3          	sb	zero,87(sp)
   1bfac:	fff00713          	li	a4,-1
   1bfb0:	5aea8063          	beq	s5,a4,1c550 <_vfiprintf_r+0x88c>
   1bfb4:	f7fcf813          	andi	a6,s9,-129
   1bfb8:	00080b1b          	sext.w	s6,a6
   1bfbc:	100d90e3          	bnez	s11,1c8bc <_vfiprintf_r+0xbf8>
   1bfc0:	640a9463          	bnez	s5,1c608 <_vfiprintf_r+0x944>
   1bfc4:	340796e3          	bnez	a5,1cb10 <_vfiprintf_r+0xe4c>
   1bfc8:	001cf793          	andi	a5,s9,1
   1bfcc:	00f13423          	sd	a5,8(sp)
   1bfd0:	0dc10d13          	addi	s10,sp,220
   1bfd4:	36079ee3          	bnez	a5,1cb50 <_vfiprintf_r+0xe8c>
   1bfd8:	00813703          	ld	a4,8(sp)
   1bfdc:	000a8793          	mv	a5,s5
   1bfe0:	00ead463          	bge	s5,a4,1bfe8 <_vfiprintf_r+0x324>
   1bfe4:	00070793          	mv	a5,a4
   1bfe8:	05714703          	lbu	a4,87(sp)
   1bfec:	00078c9b          	sext.w	s9,a5
   1bff0:	06070263          	beqz	a4,1c054 <_vfiprintf_r+0x390>
   1bff4:	00178c9b          	addiw	s9,a5,1
   1bff8:	05c0006f          	j	1c054 <_vfiprintf_r+0x390>
   1bffc:	00000413          	li	s0,0
   1c000:	001c0c13          	addi	s8,s8,1
   1c004:	fffc4683          	lbu	a3,-1(s8)
   1c008:	0024179b          	slliw	a5,s0,0x2
   1c00c:	0087843b          	addw	s0,a5,s0
   1c010:	fd07071b          	addiw	a4,a4,-48
   1c014:	0014141b          	slliw	s0,s0,0x1
   1c018:	fd06879b          	addiw	a5,a3,-48
   1c01c:	0087043b          	addw	s0,a4,s0
   1c020:	0006871b          	sext.w	a4,a3
   1c024:	fcfcfee3          	bgeu	s9,a5,1c000 <_vfiprintf_r+0x33c>
   1c028:	fe07079b          	addiw	a5,a4,-32
   1c02c:	0007869b          	sext.w	a3,a5
   1c030:	e4d674e3          	bgeu	a2,a3,1be78 <_vfiprintf_r+0x1b4>
   1c034:	ec0700e3          	beqz	a4,1bef4 <_vfiprintf_r+0x230>
   1c038:	00100793          	li	a5,1
   1c03c:	06e10c23          	sb	a4,120(sp)
   1c040:	04010ba3          	sb	zero,87(sp)
   1c044:	00100c93          	li	s9,1
   1c048:	00f13423          	sd	a5,8(sp)
   1c04c:	07810d13          	addi	s10,sp,120
   1c050:	00000a93          	li	s5,0
   1c054:	002b7e93          	andi	t4,s6,2
   1c058:	000e8e9b          	sext.w	t4,t4
   1c05c:	000e8463          	beqz	t4,1c064 <_vfiprintf_r+0x3a0>
   1c060:	002c8c9b          	addiw	s9,s9,2
   1c064:	06812703          	lw	a4,104(sp)
   1c068:	084b7f13          	andi	t5,s6,132
   1c06c:	07013783          	ld	a5,112(sp)
   1c070:	0017061b          	addiw	a2,a4,1
   1c074:	00060593          	mv	a1,a2
   1c078:	000f1663          	bnez	t5,1c084 <_vfiprintf_r+0x3c0>
   1c07c:	41940dbb          	subw	s11,s0,s9
   1c080:	05b042e3          	bgtz	s11,1c8c4 <_vfiprintf_r+0xc00>
   1c084:	05714503          	lbu	a0,87(sp)
   1c088:	010b8593          	addi	a1,s7,16
   1c08c:	02050c63          	beqz	a0,1c0c4 <_vfiprintf_r+0x400>
   1c090:	05710713          	addi	a4,sp,87
   1c094:	00178793          	addi	a5,a5,1
   1c098:	00ebb023          	sd	a4,0(s7)
   1c09c:	00100713          	li	a4,1
   1c0a0:	00ebb423          	sd	a4,8(s7)
   1c0a4:	06f13823          	sd	a5,112(sp)
   1c0a8:	06c12423          	sw	a2,104(sp)
   1c0ac:	00700713          	li	a4,7
   1c0b0:	78c74863          	blt	a4,a2,1c840 <_vfiprintf_r+0xb7c>
   1c0b4:	00060713          	mv	a4,a2
   1c0b8:	00058b93          	mv	s7,a1
   1c0bc:	0016061b          	addiw	a2,a2,1
   1c0c0:	01058593          	addi	a1,a1,16
   1c0c4:	040e8e63          	beqz	t4,1c120 <_vfiprintf_r+0x45c>
   1c0c8:	05810713          	addi	a4,sp,88
   1c0cc:	00278793          	addi	a5,a5,2
   1c0d0:	00ebb023          	sd	a4,0(s7)
   1c0d4:	00200713          	li	a4,2
   1c0d8:	00ebb423          	sd	a4,8(s7)
   1c0dc:	06f13823          	sd	a5,112(sp)
   1c0e0:	06c12423          	sw	a2,104(sp)
   1c0e4:	00700713          	li	a4,7
   1c0e8:	7cc75063          	bge	a4,a2,1c8a8 <_vfiprintf_r+0xbe4>
   1c0ec:	22078ae3          	beqz	a5,1cb20 <_vfiprintf_r+0xe5c>
   1c0f0:	06010613          	addi	a2,sp,96
   1c0f4:	00090593          	mv	a1,s2
   1c0f8:	00098513          	mv	a0,s3
   1c0fc:	03e13023          	sd	t5,32(sp)
   1c100:	ab1ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c104:	e00514e3          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c108:	06812703          	lw	a4,104(sp)
   1c10c:	07013783          	ld	a5,112(sp)
   1c110:	02013f03          	ld	t5,32(sp)
   1c114:	0f010593          	addi	a1,sp,240
   1c118:	0017061b          	addiw	a2,a4,1
   1c11c:	00048b93          	mv	s7,s1
   1c120:	08000513          	li	a0,128
   1c124:	52af0863          	beq	t5,a0,1c654 <_vfiprintf_r+0x990>
   1c128:	00813683          	ld	a3,8(sp)
   1c12c:	40da8abb          	subw	s5,s5,a3
   1c130:	61504c63          	bgtz	s5,1c748 <_vfiprintf_r+0xa84>
   1c134:	00813703          	ld	a4,8(sp)
   1c138:	01abb023          	sd	s10,0(s7)
   1c13c:	06c12423          	sw	a2,104(sp)
   1c140:	00f707b3          	add	a5,a4,a5
   1c144:	00ebb423          	sd	a4,8(s7)
   1c148:	06f13823          	sd	a5,112(sp)
   1c14c:	00700713          	li	a4,7
   1c150:	02c75263          	bge	a4,a2,1c174 <_vfiprintf_r+0x4b0>
   1c154:	06078ae3          	beqz	a5,1c9c8 <_vfiprintf_r+0xd04>
   1c158:	06010613          	addi	a2,sp,96
   1c15c:	00090593          	mv	a1,s2
   1c160:	00098513          	mv	a0,s3
   1c164:	a4dff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c168:	da0512e3          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c16c:	07013783          	ld	a5,112(sp)
   1c170:	00048593          	mv	a1,s1
   1c174:	004b7813          	andi	a6,s6,4
   1c178:	00080663          	beqz	a6,1c184 <_vfiprintf_r+0x4c0>
   1c17c:	41940bbb          	subw	s7,s0,s9
   1c180:	077040e3          	bgtz	s7,1c9e0 <_vfiprintf_r+0xd1c>
   1c184:	00040713          	mv	a4,s0
   1c188:	01945463          	bge	s0,s9,1c190 <_vfiprintf_r+0x4cc>
   1c18c:	000c8713          	mv	a4,s9
   1c190:	00013683          	ld	a3,0(sp)
   1c194:	00d7073b          	addw	a4,a4,a3
   1c198:	00e13023          	sd	a4,0(sp)
   1c19c:	66079e63          	bnez	a5,1c818 <_vfiprintf_r+0xb54>
   1c1a0:	06012423          	sw	zero,104(sp)
   1c1a4:	00048b93          	mv	s7,s1
   1c1a8:	c09ff06f          	j	1bdb0 <_vfiprintf_r+0xec>
   1c1ac:	01013703          	ld	a4,16(sp)
   1c1b0:	04010ba3          	sb	zero,87(sp)
   1c1b4:	00100c93          	li	s9,1
   1c1b8:	00072783          	lw	a5,0(a4)
   1c1bc:	00870713          	addi	a4,a4,8
   1c1c0:	00e13823          	sd	a4,16(sp)
   1c1c4:	06f10c23          	sb	a5,120(sp)
   1c1c8:	00100793          	li	a5,1
   1c1cc:	00f13423          	sd	a5,8(sp)
   1c1d0:	07810d13          	addi	s10,sp,120
   1c1d4:	e7dff06f          	j	1c050 <_vfiprintf_r+0x38c>
   1c1d8:	01013703          	ld	a4,16(sp)
   1c1dc:	020b7793          	andi	a5,s6,32
   1c1e0:	00870713          	addi	a4,a4,8
   1c1e4:	1c0798e3          	bnez	a5,1cbb4 <_vfiprintf_r+0xef0>
   1c1e8:	010b7793          	andi	a5,s6,16
   1c1ec:	1c0794e3          	bnez	a5,1cbb4 <_vfiprintf_r+0xef0>
   1c1f0:	01013683          	ld	a3,16(sp)
   1c1f4:	040b7793          	andi	a5,s6,64
   1c1f8:	0006ae03          	lw	t3,0(a3)
   1c1fc:	3a0784e3          	beqz	a5,1cda4 <_vfiprintf_r+0x10e0>
   1c200:	030e1d93          	slli	s11,t3,0x30
   1c204:	030ddd93          	srli	s11,s11,0x30
   1c208:	00e13823          	sd	a4,16(sp)
   1c20c:	000b0c93          	mv	s9,s6
   1c210:	00100793          	li	a5,1
   1c214:	d95ff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1c218:	080b6b13          	ori	s6,s6,128
   1c21c:	000b0b1b          	sext.w	s6,s6
   1c220:	000c4703          	lbu	a4,0(s8)
   1c224:	c3dff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c228:	000c4703          	lbu	a4,0(s8)
   1c22c:	001c0793          	addi	a5,s8,1
   1c230:	49a702e3          	beq	a4,s10,1ceb4 <_vfiprintf_r+0x11f0>
   1c234:	fd07069b          	addiw	a3,a4,-48
   1c238:	00078c13          	mv	s8,a5
   1c23c:	00000a93          	li	s5,0
   1c240:	c2dce6e3          	bltu	s9,a3,1be6c <_vfiprintf_r+0x1a8>
   1c244:	001c0c13          	addi	s8,s8,1
   1c248:	002a979b          	slliw	a5,s5,0x2
   1c24c:	fffc4703          	lbu	a4,-1(s8)
   1c250:	01578abb          	addw	s5,a5,s5
   1c254:	001a9a9b          	slliw	s5,s5,0x1
   1c258:	00da8abb          	addw	s5,s5,a3
   1c25c:	fd07069b          	addiw	a3,a4,-48
   1c260:	fedcf2e3          	bgeu	s9,a3,1c244 <_vfiprintf_r+0x580>
   1c264:	c09ff06f          	j	1be6c <_vfiprintf_r+0x1a8>
   1c268:	000c4703          	lbu	a4,0(s8)
   1c26c:	004b6b13          	ori	s6,s6,4
   1c270:	000b0b1b          	sext.w	s6,s6
   1c274:	bedff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c278:	02b00793          	li	a5,43
   1c27c:	04f10ba3          	sb	a5,87(sp)
   1c280:	000c4703          	lbu	a4,0(s8)
   1c284:	bddff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c288:	01013783          	ld	a5,16(sp)
   1c28c:	000c4703          	lbu	a4,0(s8)
   1c290:	0007a403          	lw	s0,0(a5)
   1c294:	00878793          	addi	a5,a5,8
   1c298:	00f13823          	sd	a5,16(sp)
   1c29c:	bc0452e3          	bgez	s0,1be60 <_vfiprintf_r+0x19c>
   1c2a0:	4080043b          	negw	s0,s0
   1c2a4:	fc9ff06f          	j	1c26c <_vfiprintf_r+0x5a8>
   1c2a8:	00098513          	mv	a0,s3
   1c2ac:	d19fa0ef          	jal	ra,16fc4 <_localeconv_r>
   1c2b0:	00853783          	ld	a5,8(a0)
   1c2b4:	00078513          	mv	a0,a5
   1c2b8:	02f13823          	sd	a5,48(sp)
   1c2bc:	840fd0ef          	jal	ra,192fc <strlen>
   1c2c0:	02a13c23          	sd	a0,56(sp)
   1c2c4:	00050d93          	mv	s11,a0
   1c2c8:	00098513          	mv	a0,s3
   1c2cc:	cf9fa0ef          	jal	ra,16fc4 <_localeconv_r>
   1c2d0:	01053783          	ld	a5,16(a0)
   1c2d4:	000c4703          	lbu	a4,0(s8)
   1c2d8:	02f13423          	sd	a5,40(sp)
   1c2dc:	b80d82e3          	beqz	s11,1be60 <_vfiprintf_r+0x19c>
   1c2e0:	b80780e3          	beqz	a5,1be60 <_vfiprintf_r+0x19c>
   1c2e4:	0007c783          	lbu	a5,0(a5)
   1c2e8:	b6078ce3          	beqz	a5,1be60 <_vfiprintf_r+0x19c>
   1c2ec:	400b6b13          	ori	s6,s6,1024
   1c2f0:	000b0b1b          	sext.w	s6,s6
   1c2f4:	b6dff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c2f8:	001b6b13          	ori	s6,s6,1
   1c2fc:	000b0b1b          	sext.w	s6,s6
   1c300:	000c4703          	lbu	a4,0(s8)
   1c304:	b5dff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c308:	05714783          	lbu	a5,87(sp)
   1c30c:	000c4703          	lbu	a4,0(s8)
   1c310:	b40798e3          	bnez	a5,1be60 <_vfiprintf_r+0x19c>
   1c314:	02000793          	li	a5,32
   1c318:	04f10ba3          	sb	a5,87(sp)
   1c31c:	b45ff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c320:	010b6793          	ori	a5,s6,16
   1c324:	0007881b          	sext.w	a6,a5
   1c328:	01013783          	ld	a5,16(sp)
   1c32c:	00878793          	addi	a5,a5,8
   1c330:	01013703          	ld	a4,16(sp)
   1c334:	00073d83          	ld	s11,0(a4)
   1c338:	00f13823          	sd	a5,16(sp)
   1c33c:	bff87813          	andi	a6,a6,-1025
   1c340:	00080c9b          	sext.w	s9,a6
   1c344:	00000793          	li	a5,0
   1c348:	c61ff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1c34c:	01013783          	ld	a5,16(sp)
   1c350:	010b6e93          	ori	t4,s6,16
   1c354:	000e8c9b          	sext.w	s9,t4
   1c358:	00878713          	addi	a4,a5,8
   1c35c:	01013783          	ld	a5,16(sp)
   1c360:	0007b783          	ld	a5,0(a5)
   1c364:	00e13823          	sd	a4,16(sp)
   1c368:	00078d93          	mv	s11,a5
   1c36c:	1c07c663          	bltz	a5,1c538 <_vfiprintf_r+0x874>
   1c370:	fff00793          	li	a5,-1
   1c374:	00fa8a63          	beq	s5,a5,1c388 <_vfiprintf_r+0x6c4>
   1c378:	f7fcf813          	andi	a6,s9,-129
   1c37c:	00080b1b          	sext.w	s6,a6
   1c380:	780d8663          	beqz	s11,1cb0c <_vfiprintf_r+0xe48>
   1c384:	000b0c93          	mv	s9,s6
   1c388:	00900793          	li	a5,9
   1c38c:	09b7e0e3          	bltu	a5,s11,1cc0c <_vfiprintf_r+0xf48>
   1c390:	030d8e1b          	addiw	t3,s11,48
   1c394:	00100793          	li	a5,1
   1c398:	0dc10da3          	sb	t3,219(sp)
   1c39c:	000c8b13          	mv	s6,s9
   1c3a0:	00f13423          	sd	a5,8(sp)
   1c3a4:	0db10d13          	addi	s10,sp,219
   1c3a8:	c31ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1c3ac:	01013783          	ld	a5,16(sp)
   1c3b0:	010b6e93          	ori	t4,s6,16
   1c3b4:	000e8c9b          	sext.w	s9,t4
   1c3b8:	00878713          	addi	a4,a5,8
   1c3bc:	01013783          	ld	a5,16(sp)
   1c3c0:	0007bd83          	ld	s11,0(a5)
   1c3c4:	00100793          	li	a5,1
   1c3c8:	00e13823          	sd	a4,16(sp)
   1c3cc:	bddff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1c3d0:	01013783          	ld	a5,16(sp)
   1c3d4:	04010ba3          	sb	zero,87(sp)
   1c3d8:	0007bd03          	ld	s10,0(a5)
   1c3dc:	00878d93          	addi	s11,a5,8
   1c3e0:	140d04e3          	beqz	s10,1cd28 <_vfiprintf_r+0x1064>
   1c3e4:	fff00793          	li	a5,-1
   1c3e8:	7efa8463          	beq	s5,a5,1cbd0 <_vfiprintf_r+0xf0c>
   1c3ec:	000a8613          	mv	a2,s5
   1c3f0:	00000593          	li	a1,0
   1c3f4:	000d0513          	mv	a0,s10
   1c3f8:	f30fb0ef          	jal	ra,17b28 <memchr>
   1c3fc:	260502e3          	beqz	a0,1ce60 <_vfiprintf_r+0x119c>
   1c400:	41a507bb          	subw	a5,a0,s10
   1c404:	00f13423          	sd	a5,8(sp)
   1c408:	01b13823          	sd	s11,16(sp)
   1c40c:	00000a93          	li	s5,0
   1c410:	bc9ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1c414:	020b6b13          	ori	s6,s6,32
   1c418:	000b0b1b          	sext.w	s6,s6
   1c41c:	000c4703          	lbu	a4,0(s8)
   1c420:	a41ff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c424:	01013783          	ld	a5,16(sp)
   1c428:	04013703          	ld	a4,64(sp)
   1c42c:	002b6813          	ori	a6,s6,2
   1c430:	0007bd83          	ld	s11,0(a5)
   1c434:	00878793          	addi	a5,a5,8
   1c438:	00f13823          	sd	a5,16(sp)
   1c43c:	00005797          	auipc	a5,0x5
   1c440:	78478793          	addi	a5,a5,1924 # 21bc0 <zeroes.4539+0x68>
   1c444:	00f13c23          	sd	a5,24(sp)
   1c448:	00080c9b          	sext.w	s9,a6
   1c44c:	04e11c23          	sh	a4,88(sp)
   1c450:	00200793          	li	a5,2
   1c454:	b55ff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1c458:	01013783          	ld	a5,16(sp)
   1c45c:	020b7713          	andi	a4,s6,32
   1c460:	00878793          	addi	a5,a5,8
   1c464:	74071463          	bnez	a4,1cbac <_vfiprintf_r+0xee8>
   1c468:	010b7713          	andi	a4,s6,16
   1c46c:	74071063          	bnez	a4,1cbac <_vfiprintf_r+0xee8>
   1c470:	01013683          	ld	a3,16(sp)
   1c474:	040b7713          	andi	a4,s6,64
   1c478:	0006ae03          	lw	t3,0(a3)
   1c47c:	100708e3          	beqz	a4,1cd8c <_vfiprintf_r+0x10c8>
   1c480:	030e1d93          	slli	s11,t3,0x30
   1c484:	030ddd93          	srli	s11,s11,0x30
   1c488:	000b0813          	mv	a6,s6
   1c48c:	00f13823          	sd	a5,16(sp)
   1c490:	eadff06f          	j	1c33c <_vfiprintf_r+0x678>
   1c494:	01013683          	ld	a3,16(sp)
   1c498:	020b7793          	andi	a5,s6,32
   1c49c:	0006b703          	ld	a4,0(a3)
   1c4a0:	00868693          	addi	a3,a3,8
   1c4a4:	00d13823          	sd	a3,16(sp)
   1c4a8:	14079a63          	bnez	a5,1c5fc <_vfiprintf_r+0x938>
   1c4ac:	010b7793          	andi	a5,s6,16
   1c4b0:	14079663          	bnez	a5,1c5fc <_vfiprintf_r+0x938>
   1c4b4:	040b7793          	andi	a5,s6,64
   1c4b8:	140798e3          	bnez	a5,1ce08 <_vfiprintf_r+0x1144>
   1c4bc:	200b7813          	andi	a6,s6,512
   1c4c0:	00013783          	ld	a5,0(sp)
   1c4c4:	1e0804e3          	beqz	a6,1ceac <_vfiprintf_r+0x11e8>
   1c4c8:	00f70023          	sb	a5,0(a4)
   1c4cc:	8e5ff06f          	j	1bdb0 <_vfiprintf_r+0xec>
   1c4d0:	000c4703          	lbu	a4,0(s8)
   1c4d4:	06c00793          	li	a5,108
   1c4d8:	02f70ee3          	beq	a4,a5,1cd14 <_vfiprintf_r+0x1050>
   1c4dc:	010b6b13          	ori	s6,s6,16
   1c4e0:	000b0b1b          	sext.w	s6,s6
   1c4e4:	97dff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c4e8:	000c4703          	lbu	a4,0(s8)
   1c4ec:	06800793          	li	a5,104
   1c4f0:	00f708e3          	beq	a4,a5,1cd00 <_vfiprintf_r+0x103c>
   1c4f4:	040b6b13          	ori	s6,s6,64
   1c4f8:	000b0b1b          	sext.w	s6,s6
   1c4fc:	965ff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1c500:	01013703          	ld	a4,16(sp)
   1c504:	020b7793          	andi	a5,s6,32
   1c508:	00870713          	addi	a4,a4,8
   1c50c:	6a079e63          	bnez	a5,1cbc8 <_vfiprintf_r+0xf04>
   1c510:	010b7793          	andi	a5,s6,16
   1c514:	6a079a63          	bnez	a5,1cbc8 <_vfiprintf_r+0xf04>
   1c518:	040b7793          	andi	a5,s6,64
   1c51c:	040788e3          	beqz	a5,1cd6c <_vfiprintf_r+0x10a8>
   1c520:	01013783          	ld	a5,16(sp)
   1c524:	00e13823          	sd	a4,16(sp)
   1c528:	000b0c93          	mv	s9,s6
   1c52c:	00079d83          	lh	s11,0(a5)
   1c530:	000d8793          	mv	a5,s11
   1c534:	e207dee3          	bgez	a5,1c370 <_vfiprintf_r+0x6ac>
   1c538:	02d00793          	li	a5,45
   1c53c:	04f10ba3          	sb	a5,87(sp)
   1c540:	fff00713          	li	a4,-1
   1c544:	41b00db3          	neg	s11,s11
   1c548:	00100793          	li	a5,1
   1c54c:	a6ea94e3          	bne	s5,a4,1bfb4 <_vfiprintf_r+0x2f0>
   1c550:	00100713          	li	a4,1
   1c554:	e2e78ae3          	beq	a5,a4,1c388 <_vfiprintf_r+0x6c4>
   1c558:	00200713          	li	a4,2
   1c55c:	0ce78063          	beq	a5,a4,1c61c <_vfiprintf_r+0x958>
   1c560:	0dc10713          	addi	a4,sp,220
   1c564:	0080006f          	j	1c56c <_vfiprintf_r+0x8a8>
   1c568:	000d0713          	mv	a4,s10
   1c56c:	007df793          	andi	a5,s11,7
   1c570:	03078793          	addi	a5,a5,48
   1c574:	fef70fa3          	sb	a5,-1(a4)
   1c578:	003ddd93          	srli	s11,s11,0x3
   1c57c:	fff70d13          	addi	s10,a4,-1
   1c580:	fe0d94e3          	bnez	s11,1c568 <_vfiprintf_r+0x8a4>
   1c584:	001cf613          	andi	a2,s9,1
   1c588:	0a060c63          	beqz	a2,1c640 <_vfiprintf_r+0x97c>
   1c58c:	03000613          	li	a2,48
   1c590:	0ac78863          	beq	a5,a2,1c640 <_vfiprintf_r+0x97c>
   1c594:	ffe70713          	addi	a4,a4,-2
   1c598:	0dc10793          	addi	a5,sp,220
   1c59c:	40e787bb          	subw	a5,a5,a4
   1c5a0:	fecd0fa3          	sb	a2,-1(s10)
   1c5a4:	00f13423          	sd	a5,8(sp)
   1c5a8:	000c8b13          	mv	s6,s9
   1c5ac:	00070d13          	mv	s10,a4
   1c5b0:	a29ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1c5b4:	01013683          	ld	a3,16(sp)
   1c5b8:	00005797          	auipc	a5,0x5
   1c5bc:	60878793          	addi	a5,a5,1544 # 21bc0 <zeroes.4539+0x68>
   1c5c0:	00f13c23          	sd	a5,24(sp)
   1c5c4:	020b7793          	andi	a5,s6,32
   1c5c8:	00868613          	addi	a2,a3,8
   1c5cc:	9a0794e3          	bnez	a5,1bf74 <_vfiprintf_r+0x2b0>
   1c5d0:	010b7793          	andi	a5,s6,16
   1c5d4:	5e079463          	bnez	a5,1cbbc <_vfiprintf_r+0xef8>
   1c5d8:	01013683          	ld	a3,16(sp)
   1c5dc:	040b7793          	andi	a5,s6,64
   1c5e0:	0006ae03          	lw	t3,0(a3)
   1c5e4:	76078863          	beqz	a5,1cd54 <_vfiprintf_r+0x1090>
   1c5e8:	030e1d93          	slli	s11,t3,0x30
   1c5ec:	030ddd93          	srli	s11,s11,0x30
   1c5f0:	989ff06f          	j	1bf78 <_vfiprintf_r+0x2b4>
   1c5f4:	f90f70ef          	jal	ra,13d84 <__sinit>
   1c5f8:	f20ff06f          	j	1bd18 <_vfiprintf_r+0x54>
   1c5fc:	00013783          	ld	a5,0(sp)
   1c600:	00f73023          	sd	a5,0(a4)
   1c604:	facff06f          	j	1bdb0 <_vfiprintf_r+0xec>
   1c608:	00100713          	li	a4,1
   1c60c:	04e786e3          	beq	a5,a4,1ce58 <_vfiprintf_r+0x1194>
   1c610:	00200713          	li	a4,2
   1c614:	000b0c93          	mv	s9,s6
   1c618:	f4e794e3          	bne	a5,a4,1c560 <_vfiprintf_r+0x89c>
   1c61c:	01813703          	ld	a4,24(sp)
   1c620:	0dc10d13          	addi	s10,sp,220
   1c624:	00fdf793          	andi	a5,s11,15
   1c628:	00f707b3          	add	a5,a4,a5
   1c62c:	0007c783          	lbu	a5,0(a5)
   1c630:	fffd0d13          	addi	s10,s10,-1
   1c634:	004ddd93          	srli	s11,s11,0x4
   1c638:	00fd0023          	sb	a5,0(s10)
   1c63c:	fe0d94e3          	bnez	s11,1c624 <_vfiprintf_r+0x960>
   1c640:	0dc10793          	addi	a5,sp,220
   1c644:	41a787bb          	subw	a5,a5,s10
   1c648:	00f13423          	sd	a5,8(sp)
   1c64c:	000c8b13          	mv	s6,s9
   1c650:	989ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1c654:	41940dbb          	subw	s11,s0,s9
   1c658:	adb058e3          	blez	s11,1c128 <_vfiprintf_r+0x464>
   1c65c:	01000513          	li	a0,16
   1c660:	03b55ce3          	bge	a0,s11,1ce98 <_vfiprintf_r+0x11d4>
   1c664:	00006e17          	auipc	t3,0x6
   1c668:	c8ce0e13          	addi	t3,t3,-884 # 222f0 <zeroes.4515>
   1c66c:	02813023          	sd	s0,32(sp)
   1c670:	01000e93          	li	t4,16
   1c674:	00700f13          	li	t5,7
   1c678:	000e0413          	mv	s0,t3
   1c67c:	0180006f          	j	1c694 <_vfiprintf_r+0x9d0>
   1c680:	0027051b          	addiw	a0,a4,2
   1c684:	010b8b93          	addi	s7,s7,16
   1c688:	00060713          	mv	a4,a2
   1c68c:	ff0d8d9b          	addiw	s11,s11,-16
   1c690:	05bedc63          	bge	t4,s11,1c6e8 <_vfiprintf_r+0xa24>
   1c694:	0017061b          	addiw	a2,a4,1
   1c698:	01078793          	addi	a5,a5,16
   1c69c:	008bb023          	sd	s0,0(s7)
   1c6a0:	01dbb423          	sd	t4,8(s7)
   1c6a4:	06f13823          	sd	a5,112(sp)
   1c6a8:	06c12423          	sw	a2,104(sp)
   1c6ac:	fccf5ae3          	bge	t5,a2,1c680 <_vfiprintf_r+0x9bc>
   1c6b0:	18078063          	beqz	a5,1c830 <_vfiprintf_r+0xb6c>
   1c6b4:	06010613          	addi	a2,sp,96
   1c6b8:	00090593          	mv	a1,s2
   1c6bc:	00098513          	mv	a0,s3
   1c6c0:	cf0ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c6c4:	840514e3          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c6c8:	06812703          	lw	a4,104(sp)
   1c6cc:	01000e93          	li	t4,16
   1c6d0:	ff0d8d9b          	addiw	s11,s11,-16
   1c6d4:	07013783          	ld	a5,112(sp)
   1c6d8:	00048b93          	mv	s7,s1
   1c6dc:	0017051b          	addiw	a0,a4,1
   1c6e0:	00700f13          	li	t5,7
   1c6e4:	fbbec8e3          	blt	t4,s11,1c694 <_vfiprintf_r+0x9d0>
   1c6e8:	00040e13          	mv	t3,s0
   1c6ec:	02013403          	ld	s0,32(sp)
   1c6f0:	010b8e93          	addi	t4,s7,16
   1c6f4:	01b787b3          	add	a5,a5,s11
   1c6f8:	01cbb023          	sd	t3,0(s7)
   1c6fc:	01bbb423          	sd	s11,8(s7)
   1c700:	06f13823          	sd	a5,112(sp)
   1c704:	06a12423          	sw	a0,104(sp)
   1c708:	00700713          	li	a4,7
   1c70c:	48a75663          	bge	a4,a0,1cb98 <_vfiprintf_r+0xed4>
   1c710:	6c078063          	beqz	a5,1cdd0 <_vfiprintf_r+0x110c>
   1c714:	06010613          	addi	a2,sp,96
   1c718:	00090593          	mv	a1,s2
   1c71c:	00098513          	mv	a0,s3
   1c720:	c90ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c724:	fe051463          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c728:	00813683          	ld	a3,8(sp)
   1c72c:	06812703          	lw	a4,104(sp)
   1c730:	07013783          	ld	a5,112(sp)
   1c734:	40da8abb          	subw	s5,s5,a3
   1c738:	0f010593          	addi	a1,sp,240
   1c73c:	0017061b          	addiw	a2,a4,1
   1c740:	00048b93          	mv	s7,s1
   1c744:	9f5058e3          	blez	s5,1c134 <_vfiprintf_r+0x470>
   1c748:	01000513          	li	a0,16
   1c74c:	67555a63          	bge	a0,s5,1cdc0 <_vfiprintf_r+0x10fc>
   1c750:	00006e17          	auipc	t3,0x6
   1c754:	ba0e0e13          	addi	t3,t3,-1120 # 222f0 <zeroes.4515>
   1c758:	02813023          	sd	s0,32(sp)
   1c75c:	01000893          	li	a7,16
   1c760:	00700d93          	li	s11,7
   1c764:	000e0413          	mv	s0,t3
   1c768:	0180006f          	j	1c780 <_vfiprintf_r+0xabc>
   1c76c:	0027061b          	addiw	a2,a4,2
   1c770:	010b8b93          	addi	s7,s7,16
   1c774:	00058713          	mv	a4,a1
   1c778:	ff0a8a9b          	addiw	s5,s5,-16
   1c77c:	0558da63          	bge	a7,s5,1c7d0 <_vfiprintf_r+0xb0c>
   1c780:	0017059b          	addiw	a1,a4,1
   1c784:	01078793          	addi	a5,a5,16
   1c788:	008bb023          	sd	s0,0(s7)
   1c78c:	011bb423          	sd	a7,8(s7)
   1c790:	06f13823          	sd	a5,112(sp)
   1c794:	06b12423          	sw	a1,104(sp)
   1c798:	fcbddae3          	bge	s11,a1,1c76c <_vfiprintf_r+0xaa8>
   1c79c:	06078663          	beqz	a5,1c808 <_vfiprintf_r+0xb44>
   1c7a0:	06010613          	addi	a2,sp,96
   1c7a4:	00090593          	mv	a1,s2
   1c7a8:	00098513          	mv	a0,s3
   1c7ac:	c04ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c7b0:	f4051e63          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c7b4:	06812703          	lw	a4,104(sp)
   1c7b8:	01000893          	li	a7,16
   1c7bc:	ff0a8a9b          	addiw	s5,s5,-16
   1c7c0:	07013783          	ld	a5,112(sp)
   1c7c4:	00048b93          	mv	s7,s1
   1c7c8:	0017061b          	addiw	a2,a4,1
   1c7cc:	fb58cae3          	blt	a7,s5,1c780 <_vfiprintf_r+0xabc>
   1c7d0:	00040e13          	mv	t3,s0
   1c7d4:	02013403          	ld	s0,32(sp)
   1c7d8:	010b8513          	addi	a0,s7,16
   1c7dc:	015787b3          	add	a5,a5,s5
   1c7e0:	01cbb023          	sd	t3,0(s7)
   1c7e4:	015bb423          	sd	s5,8(s7)
   1c7e8:	06f13823          	sd	a5,112(sp)
   1c7ec:	06c12423          	sw	a2,104(sp)
   1c7f0:	00700713          	li	a4,7
   1c7f4:	2cc74e63          	blt	a4,a2,1cad0 <_vfiprintf_r+0xe0c>
   1c7f8:	0016061b          	addiw	a2,a2,1
   1c7fc:	01050593          	addi	a1,a0,16
   1c800:	00050b93          	mv	s7,a0
   1c804:	931ff06f          	j	1c134 <_vfiprintf_r+0x470>
   1c808:	00100613          	li	a2,1
   1c80c:	00000713          	li	a4,0
   1c810:	00048b93          	mv	s7,s1
   1c814:	f65ff06f          	j	1c778 <_vfiprintf_r+0xab4>
   1c818:	06010613          	addi	a2,sp,96
   1c81c:	00090593          	mv	a1,s2
   1c820:	00098513          	mv	a0,s3
   1c824:	b8cff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c828:	96050ce3          	beqz	a0,1c1a0 <_vfiprintf_r+0x4dc>
   1c82c:	ee0ff06f          	j	1bf0c <_vfiprintf_r+0x248>
   1c830:	00100513          	li	a0,1
   1c834:	00000713          	li	a4,0
   1c838:	00048b93          	mv	s7,s1
   1c83c:	e51ff06f          	j	1c68c <_vfiprintf_r+0x9c8>
   1c840:	04078663          	beqz	a5,1c88c <_vfiprintf_r+0xbc8>
   1c844:	06010613          	addi	a2,sp,96
   1c848:	00090593          	mv	a1,s2
   1c84c:	00098513          	mv	a0,s3
   1c850:	05e13423          	sd	t5,72(sp)
   1c854:	03d13023          	sd	t4,32(sp)
   1c858:	b58ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c85c:	ea051863          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c860:	06812703          	lw	a4,104(sp)
   1c864:	07013783          	ld	a5,112(sp)
   1c868:	0f010593          	addi	a1,sp,240
   1c86c:	0017061b          	addiw	a2,a4,1
   1c870:	00048b93          	mv	s7,s1
   1c874:	04813f03          	ld	t5,72(sp)
   1c878:	02013e83          	ld	t4,32(sp)
   1c87c:	849ff06f          	j	1c0c4 <_vfiprintf_r+0x400>
   1c880:	2e079063          	bnez	a5,1cb60 <_vfiprintf_r+0xe9c>
   1c884:	05714703          	lbu	a4,87(sp)
   1c888:	56071263          	bnez	a4,1cdec <_vfiprintf_r+0x1128>
   1c88c:	2a0e8863          	beqz	t4,1cb3c <_vfiprintf_r+0xe78>
   1c890:	05810793          	addi	a5,sp,88
   1c894:	0ef13023          	sd	a5,224(sp)
   1c898:	00200793          	li	a5,2
   1c89c:	0ef13423          	sd	a5,232(sp)
   1c8a0:	00100613          	li	a2,1
   1c8a4:	0f010593          	addi	a1,sp,240
   1c8a8:	00060713          	mv	a4,a2
   1c8ac:	00058b93          	mv	s7,a1
   1c8b0:	0016061b          	addiw	a2,a2,1
   1c8b4:	01058593          	addi	a1,a1,16
   1c8b8:	869ff06f          	j	1c120 <_vfiprintf_r+0x45c>
   1c8bc:	000b0c93          	mv	s9,s6
   1c8c0:	c91ff06f          	j	1c550 <_vfiprintf_r+0x88c>
   1c8c4:	01000513          	li	a0,16
   1c8c8:	5bb55463          	bge	a0,s11,1ce70 <_vfiprintf_r+0x11ac>
   1c8cc:	00006e17          	auipc	t3,0x6
   1c8d0:	a14e0e13          	addi	t3,t3,-1516 # 222e0 <blanks.4514>
   1c8d4:	000b8693          	mv	a3,s7
   1c8d8:	01000f93          	li	t6,16
   1c8dc:	00040b93          	mv	s7,s0
   1c8e0:	00700293          	li	t0,7
   1c8e4:	000d8413          	mv	s0,s11
   1c8e8:	03d13023          	sd	t4,32(sp)
   1c8ec:	000c0d93          	mv	s11,s8
   1c8f0:	05e13423          	sd	t5,72(sp)
   1c8f4:	000a8c13          	mv	s8,s5
   1c8f8:	000e0a93          	mv	s5,t3
   1c8fc:	01c0006f          	j	1c918 <_vfiprintf_r+0xc54>
   1c900:	0027059b          	addiw	a1,a4,2
   1c904:	01068693          	addi	a3,a3,16
   1c908:	00060713          	mv	a4,a2
   1c90c:	ff04041b          	addiw	s0,s0,-16
   1c910:	048fde63          	bge	t6,s0,1c96c <_vfiprintf_r+0xca8>
   1c914:	0017059b          	addiw	a1,a4,1
   1c918:	01078793          	addi	a5,a5,16
   1c91c:	0156b023          	sd	s5,0(a3)
   1c920:	01f6b423          	sd	t6,8(a3)
   1c924:	06f13823          	sd	a5,112(sp)
   1c928:	0005861b          	sext.w	a2,a1
   1c92c:	06b12423          	sw	a1,104(sp)
   1c930:	fcc2d8e3          	bge	t0,a2,1c900 <_vfiprintf_r+0xc3c>
   1c934:	08078263          	beqz	a5,1c9b8 <_vfiprintf_r+0xcf4>
   1c938:	06010613          	addi	a2,sp,96
   1c93c:	00090593          	mv	a1,s2
   1c940:	00098513          	mv	a0,s3
   1c944:	a6cff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1c948:	dc051263          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1c94c:	06812703          	lw	a4,104(sp)
   1c950:	01000f93          	li	t6,16
   1c954:	ff04041b          	addiw	s0,s0,-16
   1c958:	07013783          	ld	a5,112(sp)
   1c95c:	00048693          	mv	a3,s1
   1c960:	0017059b          	addiw	a1,a4,1
   1c964:	00700293          	li	t0,7
   1c968:	fa8fc6e3          	blt	t6,s0,1c914 <_vfiprintf_r+0xc50>
   1c96c:	02013e83          	ld	t4,32(sp)
   1c970:	04813f03          	ld	t5,72(sp)
   1c974:	000a8e13          	mv	t3,s5
   1c978:	000c0a93          	mv	s5,s8
   1c97c:	000d8c13          	mv	s8,s11
   1c980:	00040d93          	mv	s11,s0
   1c984:	000b8413          	mv	s0,s7
   1c988:	00068b93          	mv	s7,a3
   1c98c:	01b787b3          	add	a5,a5,s11
   1c990:	01cbb023          	sd	t3,0(s7)
   1c994:	01bbb423          	sd	s11,8(s7)
   1c998:	06f13823          	sd	a5,112(sp)
   1c99c:	06b12423          	sw	a1,104(sp)
   1c9a0:	00700713          	li	a4,7
   1c9a4:	ecb74ee3          	blt	a4,a1,1c880 <_vfiprintf_r+0xbbc>
   1c9a8:	010b8b93          	addi	s7,s7,16
   1c9ac:	0015861b          	addiw	a2,a1,1
   1c9b0:	00058713          	mv	a4,a1
   1c9b4:	ed0ff06f          	j	1c084 <_vfiprintf_r+0x3c0>
   1c9b8:	00000713          	li	a4,0
   1c9bc:	00100593          	li	a1,1
   1c9c0:	00048693          	mv	a3,s1
   1c9c4:	f49ff06f          	j	1c90c <_vfiprintf_r+0xc48>
   1c9c8:	06012423          	sw	zero,104(sp)
   1c9cc:	004b7813          	andi	a6,s6,4
   1c9d0:	0e080263          	beqz	a6,1cab4 <_vfiprintf_r+0xdf0>
   1c9d4:	41940bbb          	subw	s7,s0,s9
   1c9d8:	0d705e63          	blez	s7,1cab4 <_vfiprintf_r+0xdf0>
   1c9dc:	00048593          	mv	a1,s1
   1c9e0:	01000713          	li	a4,16
   1c9e4:	06812603          	lw	a2,104(sp)
   1c9e8:	49775a63          	bge	a4,s7,1ce7c <_vfiprintf_r+0x11b8>
   1c9ec:	00006e17          	auipc	t3,0x6
   1c9f0:	8f4e0e13          	addi	t3,t3,-1804 # 222e0 <blanks.4514>
   1c9f4:	01000d13          	li	s10,16
   1c9f8:	00700d93          	li	s11,7
   1c9fc:	000e0a93          	mv	s5,t3
   1ca00:	0180006f          	j	1ca18 <_vfiprintf_r+0xd54>
   1ca04:	0026071b          	addiw	a4,a2,2
   1ca08:	01058593          	addi	a1,a1,16
   1ca0c:	00068613          	mv	a2,a3
   1ca10:	ff0b8b9b          	addiw	s7,s7,-16
   1ca14:	057d5863          	bge	s10,s7,1ca64 <_vfiprintf_r+0xda0>
   1ca18:	0016069b          	addiw	a3,a2,1
   1ca1c:	01078793          	addi	a5,a5,16
   1ca20:	0155b023          	sd	s5,0(a1)
   1ca24:	01a5b423          	sd	s10,8(a1)
   1ca28:	06f13823          	sd	a5,112(sp)
   1ca2c:	06d12423          	sw	a3,104(sp)
   1ca30:	fcdddae3          	bge	s11,a3,1ca04 <_vfiprintf_r+0xd40>
   1ca34:	06078863          	beqz	a5,1caa4 <_vfiprintf_r+0xde0>
   1ca38:	06010613          	addi	a2,sp,96
   1ca3c:	00090593          	mv	a1,s2
   1ca40:	00098513          	mv	a0,s3
   1ca44:	96cff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1ca48:	cc051263          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1ca4c:	06812603          	lw	a2,104(sp)
   1ca50:	ff0b8b9b          	addiw	s7,s7,-16
   1ca54:	07013783          	ld	a5,112(sp)
   1ca58:	00048593          	mv	a1,s1
   1ca5c:	0016071b          	addiw	a4,a2,1
   1ca60:	fb7d4ce3          	blt	s10,s7,1ca18 <_vfiprintf_r+0xd54>
   1ca64:	000a8e13          	mv	t3,s5
   1ca68:	017787b3          	add	a5,a5,s7
   1ca6c:	01c5b023          	sd	t3,0(a1)
   1ca70:	0175b423          	sd	s7,8(a1)
   1ca74:	06f13823          	sd	a5,112(sp)
   1ca78:	06e12423          	sw	a4,104(sp)
   1ca7c:	00700613          	li	a2,7
   1ca80:	f0e65263          	bge	a2,a4,1c184 <_vfiprintf_r+0x4c0>
   1ca84:	02078863          	beqz	a5,1cab4 <_vfiprintf_r+0xdf0>
   1ca88:	06010613          	addi	a2,sp,96
   1ca8c:	00090593          	mv	a1,s2
   1ca90:	00098513          	mv	a0,s3
   1ca94:	91cff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1ca98:	c6051a63          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1ca9c:	07013783          	ld	a5,112(sp)
   1caa0:	ee4ff06f          	j	1c184 <_vfiprintf_r+0x4c0>
   1caa4:	00100713          	li	a4,1
   1caa8:	00000613          	li	a2,0
   1caac:	00048593          	mv	a1,s1
   1cab0:	f61ff06f          	j	1ca10 <_vfiprintf_r+0xd4c>
   1cab4:	00040793          	mv	a5,s0
   1cab8:	01945463          	bge	s0,s9,1cac0 <_vfiprintf_r+0xdfc>
   1cabc:	000c8793          	mv	a5,s9
   1cac0:	00013703          	ld	a4,0(sp)
   1cac4:	00e787bb          	addw	a5,a5,a4
   1cac8:	00f13023          	sd	a5,0(sp)
   1cacc:	ed4ff06f          	j	1c1a0 <_vfiprintf_r+0x4dc>
   1cad0:	10078e63          	beqz	a5,1cbec <_vfiprintf_r+0xf28>
   1cad4:	06010613          	addi	a2,sp,96
   1cad8:	00090593          	mv	a1,s2
   1cadc:	00098513          	mv	a0,s3
   1cae0:	8d0ff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1cae4:	c2051463          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1cae8:	06812603          	lw	a2,104(sp)
   1caec:	07013783          	ld	a5,112(sp)
   1caf0:	0f010593          	addi	a1,sp,240
   1caf4:	0016061b          	addiw	a2,a2,1
   1caf8:	00048b93          	mv	s7,s1
   1cafc:	e38ff06f          	j	1c134 <_vfiprintf_r+0x470>
   1cb00:	06012423          	sw	zero,104(sp)
   1cb04:	00048b93          	mv	s7,s1
   1cb08:	b24ff06f          	j	1be2c <_vfiprintf_r+0x168>
   1cb0c:	340a9663          	bnez	s5,1ce58 <_vfiprintf_r+0x1194>
   1cb10:	00000a93          	li	s5,0
   1cb14:	00013423          	sd	zero,8(sp)
   1cb18:	0dc10d13          	addi	s10,sp,220
   1cb1c:	cbcff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1cb20:	0f010593          	addi	a1,sp,240
   1cb24:	00100613          	li	a2,1
   1cb28:	00000713          	li	a4,0
   1cb2c:	00048b93          	mv	s7,s1
   1cb30:	df0ff06f          	j	1c120 <_vfiprintf_r+0x45c>
   1cb34:	000c0c93          	mv	s9,s8
   1cb38:	b08ff06f          	j	1be40 <_vfiprintf_r+0x17c>
   1cb3c:	00000713          	li	a4,0
   1cb40:	0f010593          	addi	a1,sp,240
   1cb44:	00100613          	li	a2,1
   1cb48:	00048b93          	mv	s7,s1
   1cb4c:	dd4ff06f          	j	1c120 <_vfiprintf_r+0x45c>
   1cb50:	03000793          	li	a5,48
   1cb54:	0cf10da3          	sb	a5,219(sp)
   1cb58:	0db10d13          	addi	s10,sp,219
   1cb5c:	c7cff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1cb60:	06010613          	addi	a2,sp,96
   1cb64:	00090593          	mv	a1,s2
   1cb68:	00098513          	mv	a0,s3
   1cb6c:	05e13423          	sd	t5,72(sp)
   1cb70:	03d13023          	sd	t4,32(sp)
   1cb74:	83cff0ef          	jal	ra,1bbb0 <__sprint_r.part.0>
   1cb78:	b8051a63          	bnez	a0,1bf0c <_vfiprintf_r+0x248>
   1cb7c:	06812703          	lw	a4,104(sp)
   1cb80:	07013783          	ld	a5,112(sp)
   1cb84:	00048b93          	mv	s7,s1
   1cb88:	0017061b          	addiw	a2,a4,1
   1cb8c:	04813f03          	ld	t5,72(sp)
   1cb90:	02013e83          	ld	t4,32(sp)
   1cb94:	cf0ff06f          	j	1c084 <_vfiprintf_r+0x3c0>
   1cb98:	0015061b          	addiw	a2,a0,1
   1cb9c:	010e8593          	addi	a1,t4,16
   1cba0:	00050713          	mv	a4,a0
   1cba4:	000e8b93          	mv	s7,t4
   1cba8:	d80ff06f          	j	1c128 <_vfiprintf_r+0x464>
   1cbac:	000b0813          	mv	a6,s6
   1cbb0:	f80ff06f          	j	1c330 <_vfiprintf_r+0x66c>
   1cbb4:	000b0c93          	mv	s9,s6
   1cbb8:	805ff06f          	j	1c3bc <_vfiprintf_r+0x6f8>
   1cbbc:	01013783          	ld	a5,16(sp)
   1cbc0:	0007bd83          	ld	s11,0(a5)
   1cbc4:	bb4ff06f          	j	1bf78 <_vfiprintf_r+0x2b4>
   1cbc8:	000b0c93          	mv	s9,s6
   1cbcc:	f90ff06f          	j	1c35c <_vfiprintf_r+0x698>
   1cbd0:	000d0513          	mv	a0,s10
   1cbd4:	f28fc0ef          	jal	ra,192fc <strlen>
   1cbd8:	0005079b          	sext.w	a5,a0
   1cbdc:	00f13423          	sd	a5,8(sp)
   1cbe0:	01b13823          	sd	s11,16(sp)
   1cbe4:	00000a93          	li	s5,0
   1cbe8:	bf0ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1cbec:	00813783          	ld	a5,8(sp)
   1cbf0:	00100713          	li	a4,1
   1cbf4:	0fa13023          	sd	s10,224(sp)
   1cbf8:	0ef13423          	sd	a5,232(sp)
   1cbfc:	06f13823          	sd	a5,112(sp)
   1cc00:	06e12423          	sw	a4,104(sp)
   1cc04:	0f010593          	addi	a1,sp,240
   1cc08:	d6cff06f          	j	1c174 <_vfiprintf_r+0x4b0>
   1cc0c:	400cfd13          	andi	s10,s9,1024
   1cc10:	000d079b          	sext.w	a5,s10
   1cc14:	00813423          	sd	s0,8(sp)
   1cc18:	02813403          	ld	s0,40(sp)
   1cc1c:	0dc10d13          	addi	s10,sp,220
   1cc20:	03313023          	sd	s3,32(sp)
   1cc24:	000d8993          	mv	s3,s11
   1cc28:	00078d93          	mv	s11,a5
   1cc2c:	000c0793          	mv	a5,s8
   1cc30:	00000b13          	li	s6,0
   1cc34:	00090c13          	mv	s8,s2
   1cc38:	000d0913          	mv	s2,s10
   1cc3c:	00078d13          	mv	s10,a5
   1cc40:	00a00593          	li	a1,10
   1cc44:	00098513          	mv	a0,s3
   1cc48:	c75f30ef          	jal	ra,108bc <__umoddi3>
   1cc4c:	0305051b          	addiw	a0,a0,48
   1cc50:	fea90fa3          	sb	a0,-1(s2)
   1cc54:	001b0b1b          	addiw	s6,s6,1
   1cc58:	fff90913          	addi	s2,s2,-1
   1cc5c:	000d8663          	beqz	s11,1cc68 <_vfiprintf_r+0xfa4>
   1cc60:	00044683          	lbu	a3,0(s0)
   1cc64:	05668863          	beq	a3,s6,1ccb4 <_vfiprintf_r+0xff0>
   1cc68:	00a00593          	li	a1,10
   1cc6c:	00098513          	mv	a0,s3
   1cc70:	c05f30ef          	jal	ra,10874 <__udivdi3>
   1cc74:	00900793          	li	a5,9
   1cc78:	0137f663          	bgeu	a5,s3,1cc84 <_vfiprintf_r+0xfc0>
   1cc7c:	00050993          	mv	s3,a0
   1cc80:	fc1ff06f          	j	1cc40 <_vfiprintf_r+0xf7c>
   1cc84:	000d0793          	mv	a5,s10
   1cc88:	00090d13          	mv	s10,s2
   1cc8c:	000c0913          	mv	s2,s8
   1cc90:	00078c13          	mv	s8,a5
   1cc94:	0dc10793          	addi	a5,sp,220
   1cc98:	41a787bb          	subw	a5,a5,s10
   1cc9c:	02813423          	sd	s0,40(sp)
   1cca0:	02013983          	ld	s3,32(sp)
   1cca4:	00813403          	ld	s0,8(sp)
   1cca8:	000c8b13          	mv	s6,s9
   1ccac:	00f13423          	sd	a5,8(sp)
   1ccb0:	b28ff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1ccb4:	0ff00793          	li	a5,255
   1ccb8:	faf688e3          	beq	a3,a5,1cc68 <_vfiprintf_r+0xfa4>
   1ccbc:	00900793          	li	a5,9
   1ccc0:	fd37f2e3          	bgeu	a5,s3,1cc84 <_vfiprintf_r+0xfc0>
   1ccc4:	03813783          	ld	a5,56(sp)
   1ccc8:	03013583          	ld	a1,48(sp)
   1cccc:	00000b13          	li	s6,0
   1ccd0:	40f90933          	sub	s2,s2,a5
   1ccd4:	00078613          	mv	a2,a5
   1ccd8:	00090513          	mv	a0,s2
   1ccdc:	ef0fc0ef          	jal	ra,193cc <strncpy>
   1cce0:	00144683          	lbu	a3,1(s0)
   1cce4:	00098513          	mv	a0,s3
   1cce8:	00a00593          	li	a1,10
   1ccec:	00d03733          	snez	a4,a3
   1ccf0:	00e40433          	add	s0,s0,a4
   1ccf4:	b81f30ef          	jal	ra,10874 <__udivdi3>
   1ccf8:	00050993          	mv	s3,a0
   1ccfc:	f45ff06f          	j	1cc40 <_vfiprintf_r+0xf7c>
   1cd00:	200b6b13          	ori	s6,s6,512
   1cd04:	001c4703          	lbu	a4,1(s8)
   1cd08:	000b0b1b          	sext.w	s6,s6
   1cd0c:	001c0c13          	addi	s8,s8,1
   1cd10:	950ff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1cd14:	020b6b13          	ori	s6,s6,32
   1cd18:	001c4703          	lbu	a4,1(s8)
   1cd1c:	000b0b1b          	sext.w	s6,s6
   1cd20:	001c0c13          	addi	s8,s8,1
   1cd24:	93cff06f          	j	1be60 <_vfiprintf_r+0x19c>
   1cd28:	000a871b          	sext.w	a4,s5
   1cd2c:	00600793          	li	a5,6
   1cd30:	000a8693          	mv	a3,s5
   1cd34:	0ae7e863          	bltu	a5,a4,1cde4 <_vfiprintf_r+0x1120>
   1cd38:	0006879b          	sext.w	a5,a3
   1cd3c:	00f13423          	sd	a5,8(sp)
   1cd40:	00078c93          	mv	s9,a5
   1cd44:	01b13823          	sd	s11,16(sp)
   1cd48:	00005d17          	auipc	s10,0x5
   1cd4c:	ea8d0d13          	addi	s10,s10,-344 # 21bf0 <zeroes.4539+0x98>
   1cd50:	b00ff06f          	j	1c050 <_vfiprintf_r+0x38c>
   1cd54:	200b7793          	andi	a5,s6,512
   1cd58:	0ffe7d93          	andi	s11,t3,255
   1cd5c:	a0079e63          	bnez	a5,1bf78 <_vfiprintf_r+0x2b4>
   1cd60:	020e1d93          	slli	s11,t3,0x20
   1cd64:	020ddd93          	srli	s11,s11,0x20
   1cd68:	a10ff06f          	j	1bf78 <_vfiprintf_r+0x2b4>
   1cd6c:	200b7793          	andi	a5,s6,512
   1cd70:	0c078863          	beqz	a5,1ce40 <_vfiprintf_r+0x117c>
   1cd74:	01013783          	ld	a5,16(sp)
   1cd78:	000b0c93          	mv	s9,s6
   1cd7c:	00e13823          	sd	a4,16(sp)
   1cd80:	00078d83          	lb	s11,0(a5)
   1cd84:	000d8793          	mv	a5,s11
   1cd88:	de4ff06f          	j	1c36c <_vfiprintf_r+0x6a8>
   1cd8c:	200b7713          	andi	a4,s6,512
   1cd90:	08070e63          	beqz	a4,1ce2c <_vfiprintf_r+0x1168>
   1cd94:	0ffe7d93          	andi	s11,t3,255
   1cd98:	000b0813          	mv	a6,s6
   1cd9c:	00f13823          	sd	a5,16(sp)
   1cda0:	d9cff06f          	j	1c33c <_vfiprintf_r+0x678>
   1cda4:	200b7793          	andi	a5,s6,512
   1cda8:	06078663          	beqz	a5,1ce14 <_vfiprintf_r+0x1150>
   1cdac:	0ffe7d93          	andi	s11,t3,255
   1cdb0:	00e13823          	sd	a4,16(sp)
   1cdb4:	000b0c93          	mv	s9,s6
   1cdb8:	00100793          	li	a5,1
   1cdbc:	9ecff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1cdc0:	00058513          	mv	a0,a1
   1cdc4:	00005e17          	auipc	t3,0x5
   1cdc8:	52ce0e13          	addi	t3,t3,1324 # 222f0 <zeroes.4515>
   1cdcc:	a11ff06f          	j	1c7dc <_vfiprintf_r+0xb18>
   1cdd0:	0f010593          	addi	a1,sp,240
   1cdd4:	00100613          	li	a2,1
   1cdd8:	00000713          	li	a4,0
   1cddc:	00048b93          	mv	s7,s1
   1cde0:	b48ff06f          	j	1c128 <_vfiprintf_r+0x464>
   1cde4:	00600693          	li	a3,6
   1cde8:	f51ff06f          	j	1cd38 <_vfiprintf_r+0x1074>
   1cdec:	05710793          	addi	a5,sp,87
   1cdf0:	0ef13023          	sd	a5,224(sp)
   1cdf4:	00100793          	li	a5,1
   1cdf8:	0ef13423          	sd	a5,232(sp)
   1cdfc:	00100613          	li	a2,1
   1ce00:	0f010593          	addi	a1,sp,240
   1ce04:	ab0ff06f          	j	1c0b4 <_vfiprintf_r+0x3f0>
   1ce08:	00013783          	ld	a5,0(sp)
   1ce0c:	00f71023          	sh	a5,0(a4)
   1ce10:	fa1fe06f          	j	1bdb0 <_vfiprintf_r+0xec>
   1ce14:	020e1d93          	slli	s11,t3,0x20
   1ce18:	020ddd93          	srli	s11,s11,0x20
   1ce1c:	00e13823          	sd	a4,16(sp)
   1ce20:	000b0c93          	mv	s9,s6
   1ce24:	00100793          	li	a5,1
   1ce28:	980ff06f          	j	1bfa8 <_vfiprintf_r+0x2e4>
   1ce2c:	020e1d93          	slli	s11,t3,0x20
   1ce30:	020ddd93          	srli	s11,s11,0x20
   1ce34:	000b0813          	mv	a6,s6
   1ce38:	00f13823          	sd	a5,16(sp)
   1ce3c:	d00ff06f          	j	1c33c <_vfiprintf_r+0x678>
   1ce40:	01013783          	ld	a5,16(sp)
   1ce44:	000b0c93          	mv	s9,s6
   1ce48:	00e13823          	sd	a4,16(sp)
   1ce4c:	0007ad83          	lw	s11,0(a5)
   1ce50:	000d8793          	mv	a5,s11
   1ce54:	d18ff06f          	j	1c36c <_vfiprintf_r+0x6a8>
   1ce58:	000b0c93          	mv	s9,s6
   1ce5c:	d34ff06f          	j	1c390 <_vfiprintf_r+0x6cc>
   1ce60:	01513423          	sd	s5,8(sp)
   1ce64:	01b13823          	sd	s11,16(sp)
   1ce68:	00000a93          	li	s5,0
   1ce6c:	96cff06f          	j	1bfd8 <_vfiprintf_r+0x314>
   1ce70:	00005e17          	auipc	t3,0x5
   1ce74:	470e0e13          	addi	t3,t3,1136 # 222e0 <blanks.4514>
   1ce78:	b15ff06f          	j	1c98c <_vfiprintf_r+0xcc8>
   1ce7c:	0016071b          	addiw	a4,a2,1
   1ce80:	00005e17          	auipc	t3,0x5
   1ce84:	460e0e13          	addi	t3,t3,1120 # 222e0 <blanks.4514>
   1ce88:	be1ff06f          	j	1ca68 <_vfiprintf_r+0xda4>
   1ce8c:	fff00793          	li	a5,-1
   1ce90:	00f13023          	sd	a5,0(sp)
   1ce94:	884ff06f          	j	1bf18 <_vfiprintf_r+0x254>
   1ce98:	00058e93          	mv	t4,a1
   1ce9c:	00060513          	mv	a0,a2
   1cea0:	00005e17          	auipc	t3,0x5
   1cea4:	450e0e13          	addi	t3,t3,1104 # 222f0 <zeroes.4515>
   1cea8:	84dff06f          	j	1c6f4 <_vfiprintf_r+0xa30>
   1ceac:	00f72023          	sw	a5,0(a4)
   1ceb0:	f01fe06f          	j	1bdb0 <_vfiprintf_r+0xec>
   1ceb4:	01013703          	ld	a4,16(sp)
   1ceb8:	00072a83          	lw	s5,0(a4)
   1cebc:	00870693          	addi	a3,a4,8
   1cec0:	000ad463          	bgez	s5,1cec8 <_vfiprintf_r+0x1204>
   1cec4:	fff00a93          	li	s5,-1
   1cec8:	001c4703          	lbu	a4,1(s8)
   1cecc:	00d13823          	sd	a3,16(sp)
   1ced0:	00078c13          	mv	s8,a5
   1ced4:	f8dfe06f          	j	1be60 <_vfiprintf_r+0x19c>

000000000001ced8 <vfiprintf>:
   1ced8:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1cedc:	00060693          	mv	a3,a2
   1cee0:	00058613          	mv	a2,a1
   1cee4:	00050593          	mv	a1,a0
   1cee8:	0007b503          	ld	a0,0(a5)
   1ceec:	dd9fe06f          	j	1bcc4 <_vfiprintf_r>

000000000001cef0 <__sbprintf>:
   1cef0:	0105d783          	lhu	a5,16(a1)
   1cef4:	0ac5ae03          	lw	t3,172(a1)
   1cef8:	0125d303          	lhu	t1,18(a1)
   1cefc:	0305b883          	ld	a7,48(a1)
   1cf00:	0405b803          	ld	a6,64(a1)
   1cf04:	b3010113          	addi	sp,sp,-1232
   1cf08:	ffd7f793          	andi	a5,a5,-3
   1cf0c:	40000713          	li	a4,1024
   1cf10:	4c813023          	sd	s0,1216(sp)
   1cf14:	00f11823          	sh	a5,16(sp)
   1cf18:	00058413          	mv	s0,a1
   1cf1c:	0b010793          	addi	a5,sp,176
   1cf20:	00010593          	mv	a1,sp
   1cf24:	4a913c23          	sd	s1,1208(sp)
   1cf28:	4b213823          	sd	s2,1200(sp)
   1cf2c:	4c113423          	sd	ra,1224(sp)
   1cf30:	00050913          	mv	s2,a0
   1cf34:	0bc12623          	sw	t3,172(sp)
   1cf38:	00611923          	sh	t1,18(sp)
   1cf3c:	03113823          	sd	a7,48(sp)
   1cf40:	05013023          	sd	a6,64(sp)
   1cf44:	00f13023          	sd	a5,0(sp)
   1cf48:	00f13c23          	sd	a5,24(sp)
   1cf4c:	00e12623          	sw	a4,12(sp)
   1cf50:	02e12023          	sw	a4,32(sp)
   1cf54:	02012423          	sw	zero,40(sp)
   1cf58:	d6dfe0ef          	jal	ra,1bcc4 <_vfiprintf_r>
   1cf5c:	00050493          	mv	s1,a0
   1cf60:	02055c63          	bgez	a0,1cf98 <__sbprintf+0xa8>
   1cf64:	01015783          	lhu	a5,16(sp)
   1cf68:	0407f793          	andi	a5,a5,64
   1cf6c:	00078863          	beqz	a5,1cf7c <__sbprintf+0x8c>
   1cf70:	01045783          	lhu	a5,16(s0)
   1cf74:	0407e793          	ori	a5,a5,64
   1cf78:	00f41823          	sh	a5,16(s0)
   1cf7c:	4c813083          	ld	ra,1224(sp)
   1cf80:	4c013403          	ld	s0,1216(sp)
   1cf84:	00048513          	mv	a0,s1
   1cf88:	4b013903          	ld	s2,1200(sp)
   1cf8c:	4b813483          	ld	s1,1208(sp)
   1cf90:	4d010113          	addi	sp,sp,1232
   1cf94:	00008067          	ret
   1cf98:	00010593          	mv	a1,sp
   1cf9c:	00090513          	mv	a0,s2
   1cfa0:	a3df60ef          	jal	ra,139dc <_fflush_r>
   1cfa4:	fc0500e3          	beqz	a0,1cf64 <__sbprintf+0x74>
   1cfa8:	fff00493          	li	s1,-1
   1cfac:	fb9ff06f          	j	1cf64 <__sbprintf+0x74>

000000000001cfb0 <_wctomb_r>:
   1cfb0:	d6018793          	addi	a5,gp,-672 # 23db0 <__global_locale>
   1cfb4:	0e07b303          	ld	t1,224(a5)
   1cfb8:	00030067          	jr	t1

000000000001cfbc <__ascii_wctomb>:
   1cfbc:	0006079b          	sext.w	a5,a2
   1cfc0:	02058463          	beqz	a1,1cfe8 <__ascii_wctomb+0x2c>
   1cfc4:	0ff00713          	li	a4,255
   1cfc8:	00f76863          	bltu	a4,a5,1cfd8 <__ascii_wctomb+0x1c>
   1cfcc:	00c58023          	sb	a2,0(a1)
   1cfd0:	00100513          	li	a0,1
   1cfd4:	00008067          	ret
   1cfd8:	08a00793          	li	a5,138
   1cfdc:	00f52023          	sw	a5,0(a0)
   1cfe0:	fff00513          	li	a0,-1
   1cfe4:	00008067          	ret
   1cfe8:	00000513          	li	a0,0
   1cfec:	00008067          	ret

000000000001cff0 <_write_r>:
   1cff0:	00058793          	mv	a5,a1
   1cff4:	ff010113          	addi	sp,sp,-16
   1cff8:	00813023          	sd	s0,0(sp)
   1cffc:	00060593          	mv	a1,a2
   1d000:	00050413          	mv	s0,a0
   1d004:	00068613          	mv	a2,a3
   1d008:	00078513          	mv	a0,a5
   1d00c:	00113423          	sd	ra,8(sp)
   1d010:	00008797          	auipc	a5,0x8
   1d014:	8207ac23          	sw	zero,-1992(a5) # 24848 <errno>
   1d018:	30d020ef          	jal	ra,1fb24 <_write>
   1d01c:	fff00793          	li	a5,-1
   1d020:	00f50a63          	beq	a0,a5,1d034 <_write_r+0x44>
   1d024:	00813083          	ld	ra,8(sp)
   1d028:	00013403          	ld	s0,0(sp)
   1d02c:	01010113          	addi	sp,sp,16
   1d030:	00008067          	ret
   1d034:	00008797          	auipc	a5,0x8
   1d038:	81478793          	addi	a5,a5,-2028 # 24848 <errno>
   1d03c:	0007a783          	lw	a5,0(a5)
   1d040:	fe0782e3          	beqz	a5,1d024 <_write_r+0x34>
   1d044:	00f42023          	sw	a5,0(s0)
   1d048:	00813083          	ld	ra,8(sp)
   1d04c:	00013403          	ld	s0,0(sp)
   1d050:	01010113          	addi	sp,sp,16
   1d054:	00008067          	ret

000000000001d058 <_calloc_r>:
   1d058:	ff010113          	addi	sp,sp,-16
   1d05c:	00058793          	mv	a5,a1
   1d060:	00813023          	sd	s0,0(sp)
   1d064:	00060593          	mv	a1,a2
   1d068:	00050413          	mv	s0,a0
   1d06c:	00078513          	mv	a0,a5
   1d070:	00113423          	sd	ra,8(sp)
   1d074:	758040ef          	jal	ra,217cc <__muldi3>
   1d078:	00050593          	mv	a1,a0
   1d07c:	00040513          	mv	a0,s0
   1d080:	9dcfa0ef          	jal	ra,1725c <_malloc_r>
   1d084:	00050413          	mv	s0,a0
   1d088:	02050863          	beqz	a0,1d0b8 <_calloc_r+0x60>
   1d08c:	ff853603          	ld	a2,-8(a0)
   1d090:	04800713          	li	a4,72
   1d094:	ffc67613          	andi	a2,a2,-4
   1d098:	ff860613          	addi	a2,a2,-8
   1d09c:	06c76063          	bltu	a4,a2,1d0fc <_calloc_r+0xa4>
   1d0a0:	02700693          	li	a3,39
   1d0a4:	00050793          	mv	a5,a0
   1d0a8:	02c6e263          	bltu	a3,a2,1d0cc <_calloc_r+0x74>
   1d0ac:	0007b023          	sd	zero,0(a5)
   1d0b0:	0007b423          	sd	zero,8(a5)
   1d0b4:	0007b823          	sd	zero,16(a5)
   1d0b8:	00040513          	mv	a0,s0
   1d0bc:	00813083          	ld	ra,8(sp)
   1d0c0:	00013403          	ld	s0,0(sp)
   1d0c4:	01010113          	addi	sp,sp,16
   1d0c8:	00008067          	ret
   1d0cc:	00053023          	sd	zero,0(a0)
   1d0d0:	00053423          	sd	zero,8(a0)
   1d0d4:	03700793          	li	a5,55
   1d0d8:	04c7f063          	bgeu	a5,a2,1d118 <_calloc_r+0xc0>
   1d0dc:	00053823          	sd	zero,16(a0)
   1d0e0:	00053c23          	sd	zero,24(a0)
   1d0e4:	02050793          	addi	a5,a0,32
   1d0e8:	fce612e3          	bne	a2,a4,1d0ac <_calloc_r+0x54>
   1d0ec:	02053023          	sd	zero,32(a0)
   1d0f0:	03050793          	addi	a5,a0,48
   1d0f4:	02053423          	sd	zero,40(a0)
   1d0f8:	fb5ff06f          	j	1d0ac <_calloc_r+0x54>
   1d0fc:	00000593          	li	a1,0
   1d100:	9a1f30ef          	jal	ra,10aa0 <memset>
   1d104:	00040513          	mv	a0,s0
   1d108:	00813083          	ld	ra,8(sp)
   1d10c:	00013403          	ld	s0,0(sp)
   1d110:	01010113          	addi	sp,sp,16
   1d114:	00008067          	ret
   1d118:	01050793          	addi	a5,a0,16
   1d11c:	f91ff06f          	j	1d0ac <_calloc_r+0x54>

000000000001d120 <_close_r>:
   1d120:	ff010113          	addi	sp,sp,-16
   1d124:	00813023          	sd	s0,0(sp)
   1d128:	00050413          	mv	s0,a0
   1d12c:	00058513          	mv	a0,a1
   1d130:	00007797          	auipc	a5,0x7
   1d134:	7007ac23          	sw	zero,1816(a5) # 24848 <errno>
   1d138:	00113423          	sd	ra,8(sp)
   1d13c:	758020ef          	jal	ra,1f894 <_close>
   1d140:	fff00793          	li	a5,-1
   1d144:	00f50a63          	beq	a0,a5,1d158 <_close_r+0x38>
   1d148:	00813083          	ld	ra,8(sp)
   1d14c:	00013403          	ld	s0,0(sp)
   1d150:	01010113          	addi	sp,sp,16
   1d154:	00008067          	ret
   1d158:	00007797          	auipc	a5,0x7
   1d15c:	6f078793          	addi	a5,a5,1776 # 24848 <errno>
   1d160:	0007a783          	lw	a5,0(a5)
   1d164:	fe0782e3          	beqz	a5,1d148 <_close_r+0x28>
   1d168:	00f42023          	sw	a5,0(s0)
   1d16c:	00813083          	ld	ra,8(sp)
   1d170:	00013403          	ld	s0,0(sp)
   1d174:	01010113          	addi	sp,sp,16
   1d178:	00008067          	ret

000000000001d17c <_fclose_r>:
   1d17c:	fe010113          	addi	sp,sp,-32
   1d180:	00113c23          	sd	ra,24(sp)
   1d184:	00813823          	sd	s0,16(sp)
   1d188:	00913423          	sd	s1,8(sp)
   1d18c:	01213023          	sd	s2,0(sp)
   1d190:	02058063          	beqz	a1,1d1b0 <_fclose_r+0x34>
   1d194:	00050493          	mv	s1,a0
   1d198:	00058413          	mv	s0,a1
   1d19c:	00050663          	beqz	a0,1d1a8 <_fclose_r+0x2c>
   1d1a0:	05052783          	lw	a5,80(a0)
   1d1a4:	0a078c63          	beqz	a5,1d25c <_fclose_r+0xe0>
   1d1a8:	01041783          	lh	a5,16(s0)
   1d1ac:	02079263          	bnez	a5,1d1d0 <_fclose_r+0x54>
   1d1b0:	01813083          	ld	ra,24(sp)
   1d1b4:	01013403          	ld	s0,16(sp)
   1d1b8:	00000913          	li	s2,0
   1d1bc:	00090513          	mv	a0,s2
   1d1c0:	00813483          	ld	s1,8(sp)
   1d1c4:	00013903          	ld	s2,0(sp)
   1d1c8:	02010113          	addi	sp,sp,32
   1d1cc:	00008067          	ret
   1d1d0:	00040593          	mv	a1,s0
   1d1d4:	00048513          	mv	a0,s1
   1d1d8:	da8f60ef          	jal	ra,13780 <__sflush_r>
   1d1dc:	05043783          	ld	a5,80(s0)
   1d1e0:	00050913          	mv	s2,a0
   1d1e4:	00078a63          	beqz	a5,1d1f8 <_fclose_r+0x7c>
   1d1e8:	03043583          	ld	a1,48(s0)
   1d1ec:	00048513          	mv	a0,s1
   1d1f0:	000780e7          	jalr	a5
   1d1f4:	06054c63          	bltz	a0,1d26c <_fclose_r+0xf0>
   1d1f8:	01045783          	lhu	a5,16(s0)
   1d1fc:	0807f793          	andi	a5,a5,128
   1d200:	06079e63          	bnez	a5,1d27c <_fclose_r+0x100>
   1d204:	05843583          	ld	a1,88(s0)
   1d208:	00058c63          	beqz	a1,1d220 <_fclose_r+0xa4>
   1d20c:	07440793          	addi	a5,s0,116
   1d210:	00f58663          	beq	a1,a5,1d21c <_fclose_r+0xa0>
   1d214:	00048513          	mv	a0,s1
   1d218:	cedf60ef          	jal	ra,13f04 <_free_r>
   1d21c:	04043c23          	sd	zero,88(s0)
   1d220:	07843583          	ld	a1,120(s0)
   1d224:	00058863          	beqz	a1,1d234 <_fclose_r+0xb8>
   1d228:	00048513          	mv	a0,s1
   1d22c:	cd9f60ef          	jal	ra,13f04 <_free_r>
   1d230:	06043c23          	sd	zero,120(s0)
   1d234:	b61f60ef          	jal	ra,13d94 <__sfp_lock_acquire>
   1d238:	00041823          	sh	zero,16(s0)
   1d23c:	b5df60ef          	jal	ra,13d98 <__sfp_lock_release>
   1d240:	01813083          	ld	ra,24(sp)
   1d244:	01013403          	ld	s0,16(sp)
   1d248:	00090513          	mv	a0,s2
   1d24c:	00813483          	ld	s1,8(sp)
   1d250:	00013903          	ld	s2,0(sp)
   1d254:	02010113          	addi	sp,sp,32
   1d258:	00008067          	ret
   1d25c:	b29f60ef          	jal	ra,13d84 <__sinit>
   1d260:	01041783          	lh	a5,16(s0)
   1d264:	f40786e3          	beqz	a5,1d1b0 <_fclose_r+0x34>
   1d268:	f69ff06f          	j	1d1d0 <_fclose_r+0x54>
   1d26c:	01045783          	lhu	a5,16(s0)
   1d270:	fff00913          	li	s2,-1
   1d274:	0807f793          	andi	a5,a5,128
   1d278:	f80786e3          	beqz	a5,1d204 <_fclose_r+0x88>
   1d27c:	01843583          	ld	a1,24(s0)
   1d280:	00048513          	mv	a0,s1
   1d284:	c81f60ef          	jal	ra,13f04 <_free_r>
   1d288:	f7dff06f          	j	1d204 <_fclose_r+0x88>

000000000001d28c <fclose>:
   1d28c:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1d290:	00050593          	mv	a1,a0
   1d294:	0007b503          	ld	a0,0(a5)
   1d298:	ee5ff06f          	j	1d17c <_fclose_r>

000000000001d29c <__fputwc>:
   1d29c:	fb010113          	addi	sp,sp,-80
   1d2a0:	04813023          	sd	s0,64(sp)
   1d2a4:	03213823          	sd	s2,48(sp)
   1d2a8:	03313423          	sd	s3,40(sp)
   1d2ac:	04113423          	sd	ra,72(sp)
   1d2b0:	02913c23          	sd	s1,56(sp)
   1d2b4:	03413023          	sd	s4,32(sp)
   1d2b8:	01513c23          	sd	s5,24(sp)
   1d2bc:	01613823          	sd	s6,16(sp)
   1d2c0:	00050913          	mv	s2,a0
   1d2c4:	00058993          	mv	s3,a1
   1d2c8:	00060413          	mv	s0,a2
   1d2cc:	d85f90ef          	jal	ra,17050 <__locale_mb_cur_max>
   1d2d0:	00100793          	li	a5,1
   1d2d4:	02f51063          	bne	a0,a5,1d2f4 <__fputwc+0x58>
   1d2d8:	fff9879b          	addiw	a5,s3,-1
   1d2dc:	0fe00713          	li	a4,254
   1d2e0:	00f76a63          	bltu	a4,a5,1d2f4 <__fputwc+0x58>
   1d2e4:	0ff9f713          	andi	a4,s3,255
   1d2e8:	00e10423          	sb	a4,8(sp)
   1d2ec:	00100a93          	li	s5,1
   1d2f0:	02c0006f          	j	1d31c <__fputwc+0x80>
   1d2f4:	0a440693          	addi	a3,s0,164
   1d2f8:	00098613          	mv	a2,s3
   1d2fc:	00810593          	addi	a1,sp,8
   1d300:	00090513          	mv	a0,s2
   1d304:	488020ef          	jal	ra,1f78c <_wcrtomb_r>
   1d308:	fff00793          	li	a5,-1
   1d30c:	00050a93          	mv	s5,a0
   1d310:	0af50263          	beq	a0,a5,1d3b4 <__fputwc+0x118>
   1d314:	08050c63          	beqz	a0,1d3ac <__fputwc+0x110>
   1d318:	00814703          	lbu	a4,8(sp)
   1d31c:	00000493          	li	s1,0
   1d320:	fff00a13          	li	s4,-1
   1d324:	00a00b13          	li	s6,10
   1d328:	0280006f          	j	1d350 <__fputwc+0xb4>
   1d32c:	00043783          	ld	a5,0(s0)
   1d330:	00178693          	addi	a3,a5,1
   1d334:	00d43023          	sd	a3,0(s0)
   1d338:	00e78023          	sb	a4,0(a5)
   1d33c:	00148493          	addi	s1,s1,1
   1d340:	00810793          	addi	a5,sp,8
   1d344:	009787b3          	add	a5,a5,s1
   1d348:	0754f263          	bgeu	s1,s5,1d3ac <__fputwc+0x110>
   1d34c:	0007c703          	lbu	a4,0(a5)
   1d350:	00c42783          	lw	a5,12(s0)
   1d354:	fff7879b          	addiw	a5,a5,-1
   1d358:	00f42623          	sw	a5,12(s0)
   1d35c:	fc07d8e3          	bgez	a5,1d32c <__fputwc+0x90>
   1d360:	02842683          	lw	a3,40(s0)
   1d364:	00070593          	mv	a1,a4
   1d368:	00040613          	mv	a2,s0
   1d36c:	00090513          	mv	a0,s2
   1d370:	00d7c463          	blt	a5,a3,1d378 <__fputwc+0xdc>
   1d374:	fb671ce3          	bne	a4,s6,1d32c <__fputwc+0x90>
   1d378:	27c020ef          	jal	ra,1f5f4 <__swbuf_r>
   1d37c:	fd4510e3          	bne	a0,s4,1d33c <__fputwc+0xa0>
   1d380:	fff00513          	li	a0,-1
   1d384:	04813083          	ld	ra,72(sp)
   1d388:	04013403          	ld	s0,64(sp)
   1d38c:	03813483          	ld	s1,56(sp)
   1d390:	03013903          	ld	s2,48(sp)
   1d394:	02813983          	ld	s3,40(sp)
   1d398:	02013a03          	ld	s4,32(sp)
   1d39c:	01813a83          	ld	s5,24(sp)
   1d3a0:	01013b03          	ld	s6,16(sp)
   1d3a4:	05010113          	addi	sp,sp,80
   1d3a8:	00008067          	ret
   1d3ac:	0009851b          	sext.w	a0,s3
   1d3b0:	fd5ff06f          	j	1d384 <__fputwc+0xe8>
   1d3b4:	01045783          	lhu	a5,16(s0)
   1d3b8:	fff00513          	li	a0,-1
   1d3bc:	0407e793          	ori	a5,a5,64
   1d3c0:	00f41823          	sh	a5,16(s0)
   1d3c4:	fc1ff06f          	j	1d384 <__fputwc+0xe8>

000000000001d3c8 <_fputwc_r>:
   1d3c8:	01061783          	lh	a5,16(a2)
   1d3cc:	03279713          	slli	a4,a5,0x32
   1d3d0:	02074063          	bltz	a4,1d3f0 <_fputwc_r+0x28>
   1d3d4:	0ac62703          	lw	a4,172(a2)
   1d3d8:	000026b7          	lui	a3,0x2
   1d3dc:	00d7e7b3          	or	a5,a5,a3
   1d3e0:	000026b7          	lui	a3,0x2
   1d3e4:	00d76733          	or	a4,a4,a3
   1d3e8:	00f61823          	sh	a5,16(a2)
   1d3ec:	0ae62623          	sw	a4,172(a2)
   1d3f0:	eadff06f          	j	1d29c <__fputwc>

000000000001d3f4 <fputwc>:
   1d3f4:	fd010113          	addi	sp,sp,-48
   1d3f8:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1d3fc:	02813023          	sd	s0,32(sp)
   1d400:	0007b403          	ld	s0,0(a5)
   1d404:	00913c23          	sd	s1,24(sp)
   1d408:	02113423          	sd	ra,40(sp)
   1d40c:	00050493          	mv	s1,a0
   1d410:	00058613          	mv	a2,a1
   1d414:	00040663          	beqz	s0,1d420 <fputwc+0x2c>
   1d418:	05042783          	lw	a5,80(s0)
   1d41c:	04078463          	beqz	a5,1d464 <fputwc+0x70>
   1d420:	01061783          	lh	a5,16(a2)
   1d424:	03279713          	slli	a4,a5,0x32
   1d428:	02074063          	bltz	a4,1d448 <fputwc+0x54>
   1d42c:	0ac62703          	lw	a4,172(a2)
   1d430:	000026b7          	lui	a3,0x2
   1d434:	00d7e7b3          	or	a5,a5,a3
   1d438:	000026b7          	lui	a3,0x2
   1d43c:	00d76733          	or	a4,a4,a3
   1d440:	00f61823          	sh	a5,16(a2)
   1d444:	0ae62623          	sw	a4,172(a2)
   1d448:	00040513          	mv	a0,s0
   1d44c:	02013403          	ld	s0,32(sp)
   1d450:	02813083          	ld	ra,40(sp)
   1d454:	00048593          	mv	a1,s1
   1d458:	01813483          	ld	s1,24(sp)
   1d45c:	03010113          	addi	sp,sp,48
   1d460:	e3dff06f          	j	1d29c <__fputwc>
   1d464:	00040513          	mv	a0,s0
   1d468:	00b13423          	sd	a1,8(sp)
   1d46c:	919f60ef          	jal	ra,13d84 <__sinit>
   1d470:	00813603          	ld	a2,8(sp)
   1d474:	fadff06f          	j	1d420 <fputwc+0x2c>

000000000001d478 <_fstat_r>:
   1d478:	00058793          	mv	a5,a1
   1d47c:	ff010113          	addi	sp,sp,-16
   1d480:	00813023          	sd	s0,0(sp)
   1d484:	00060593          	mv	a1,a2
   1d488:	00050413          	mv	s0,a0
   1d48c:	00078513          	mv	a0,a5
   1d490:	00113423          	sd	ra,8(sp)
   1d494:	00007797          	auipc	a5,0x7
   1d498:	3a07aa23          	sw	zero,948(a5) # 24848 <errno>
   1d49c:	494020ef          	jal	ra,1f930 <_fstat>
   1d4a0:	fff00793          	li	a5,-1
   1d4a4:	00f50a63          	beq	a0,a5,1d4b8 <_fstat_r+0x40>
   1d4a8:	00813083          	ld	ra,8(sp)
   1d4ac:	00013403          	ld	s0,0(sp)
   1d4b0:	01010113          	addi	sp,sp,16
   1d4b4:	00008067          	ret
   1d4b8:	00007797          	auipc	a5,0x7
   1d4bc:	39078793          	addi	a5,a5,912 # 24848 <errno>
   1d4c0:	0007a783          	lw	a5,0(a5)
   1d4c4:	fe0782e3          	beqz	a5,1d4a8 <_fstat_r+0x30>
   1d4c8:	00f42023          	sw	a5,0(s0)
   1d4cc:	00813083          	ld	ra,8(sp)
   1d4d0:	00013403          	ld	s0,0(sp)
   1d4d4:	01010113          	addi	sp,sp,16
   1d4d8:	00008067          	ret

000000000001d4dc <__sfvwrite_r>:
   1d4dc:	01063783          	ld	a5,16(a2)
   1d4e0:	28078c63          	beqz	a5,1d778 <__sfvwrite_r+0x29c>
   1d4e4:	0105d783          	lhu	a5,16(a1)
   1d4e8:	fa010113          	addi	sp,sp,-96
   1d4ec:	04813823          	sd	s0,80(sp)
   1d4f0:	03413823          	sd	s4,48(sp)
   1d4f4:	03513423          	sd	s5,40(sp)
   1d4f8:	04113c23          	sd	ra,88(sp)
   1d4fc:	04913423          	sd	s1,72(sp)
   1d500:	05213023          	sd	s2,64(sp)
   1d504:	03313c23          	sd	s3,56(sp)
   1d508:	03613023          	sd	s6,32(sp)
   1d50c:	01713c23          	sd	s7,24(sp)
   1d510:	01813823          	sd	s8,16(sp)
   1d514:	01913423          	sd	s9,8(sp)
   1d518:	01a13023          	sd	s10,0(sp)
   1d51c:	0087f713          	andi	a4,a5,8
   1d520:	00058413          	mv	s0,a1
   1d524:	00050a93          	mv	s5,a0
   1d528:	00060a13          	mv	s4,a2
   1d52c:	08070c63          	beqz	a4,1d5c4 <__sfvwrite_r+0xe8>
   1d530:	0185b703          	ld	a4,24(a1)
   1d534:	08070863          	beqz	a4,1d5c4 <__sfvwrite_r+0xe8>
   1d538:	0027f713          	andi	a4,a5,2
   1d53c:	000a3903          	ld	s2,0(s4)
   1d540:	0a070263          	beqz	a4,1d5e4 <__sfvwrite_r+0x108>
   1d544:	04043703          	ld	a4,64(s0)
   1d548:	03043783          	ld	a5,48(s0)
   1d54c:	80000b37          	lui	s6,0x80000
   1d550:	00000993          	li	s3,0
   1d554:	00000493          	li	s1,0
   1d558:	c00b4b13          	xori	s6,s6,-1024
   1d55c:	00098613          	mv	a2,s3
   1d560:	00078593          	mv	a1,a5
   1d564:	000a8513          	mv	a0,s5
   1d568:	04048663          	beqz	s1,1d5b4 <__sfvwrite_r+0xd8>
   1d56c:	00048693          	mv	a3,s1
   1d570:	009b7463          	bgeu	s6,s1,1d578 <__sfvwrite_r+0x9c>
   1d574:	000b0693          	mv	a3,s6
   1d578:	0006869b          	sext.w	a3,a3
   1d57c:	000700e7          	jalr	a4
   1d580:	1ea05263          	blez	a0,1d764 <__sfvwrite_r+0x288>
   1d584:	010a3783          	ld	a5,16(s4)
   1d588:	00a989b3          	add	s3,s3,a0
   1d58c:	40a484b3          	sub	s1,s1,a0
   1d590:	40a78533          	sub	a0,a5,a0
   1d594:	00aa3823          	sd	a0,16(s4)
   1d598:	18050063          	beqz	a0,1d718 <__sfvwrite_r+0x23c>
   1d59c:	03043783          	ld	a5,48(s0)
   1d5a0:	04043703          	ld	a4,64(s0)
   1d5a4:	00098613          	mv	a2,s3
   1d5a8:	00078593          	mv	a1,a5
   1d5ac:	000a8513          	mv	a0,s5
   1d5b0:	fa049ee3          	bnez	s1,1d56c <__sfvwrite_r+0x90>
   1d5b4:	00093983          	ld	s3,0(s2)
   1d5b8:	00893483          	ld	s1,8(s2)
   1d5bc:	01090913          	addi	s2,s2,16
   1d5c0:	f9dff06f          	j	1d55c <__sfvwrite_r+0x80>
   1d5c4:	00040593          	mv	a1,s0
   1d5c8:	000a8513          	mv	a0,s5
   1d5cc:	e7df50ef          	jal	ra,13448 <__swsetup_r>
   1d5d0:	3c051663          	bnez	a0,1d99c <__sfvwrite_r+0x4c0>
   1d5d4:	01045783          	lhu	a5,16(s0)
   1d5d8:	000a3903          	ld	s2,0(s4)
   1d5dc:	0027f713          	andi	a4,a5,2
   1d5e0:	f60712e3          	bnez	a4,1d544 <__sfvwrite_r+0x68>
   1d5e4:	0017f713          	andi	a4,a5,1
   1d5e8:	0a071263          	bnez	a4,1d68c <__sfvwrite_r+0x1b0>
   1d5ec:	00c42483          	lw	s1,12(s0)
   1d5f0:	00043503          	ld	a0,0(s0)
   1d5f4:	80000b37          	lui	s6,0x80000
   1d5f8:	ffeb4b93          	xori	s7,s6,-2
   1d5fc:	00000c13          	li	s8,0
   1d600:	00000993          	li	s3,0
   1d604:	fffb4b13          	not	s6,s6
   1d608:	00048c93          	mv	s9,s1
   1d60c:	06098863          	beqz	s3,1d67c <__sfvwrite_r+0x1a0>
   1d610:	2007f713          	andi	a4,a5,512
   1d614:	1c070863          	beqz	a4,1d7e4 <__sfvwrite_r+0x308>
   1d618:	00048d13          	mv	s10,s1
   1d61c:	2699f663          	bgeu	s3,s1,1d888 <__sfvwrite_r+0x3ac>
   1d620:	00098c93          	mv	s9,s3
   1d624:	00098d13          	mv	s10,s3
   1d628:	000d0613          	mv	a2,s10
   1d62c:	000c0593          	mv	a1,s8
   1d630:	554000ef          	jal	ra,1db84 <memmove>
   1d634:	00c42783          	lw	a5,12(s0)
   1d638:	00043603          	ld	a2,0(s0)
   1d63c:	00098493          	mv	s1,s3
   1d640:	41978cbb          	subw	s9,a5,s9
   1d644:	01a60633          	add	a2,a2,s10
   1d648:	01942623          	sw	s9,12(s0)
   1d64c:	00c43023          	sd	a2,0(s0)
   1d650:	00000993          	li	s3,0
   1d654:	010a3783          	ld	a5,16(s4)
   1d658:	009c0c33          	add	s8,s8,s1
   1d65c:	409784b3          	sub	s1,a5,s1
   1d660:	009a3823          	sd	s1,16(s4)
   1d664:	0a048a63          	beqz	s1,1d718 <__sfvwrite_r+0x23c>
   1d668:	00c42483          	lw	s1,12(s0)
   1d66c:	00043503          	ld	a0,0(s0)
   1d670:	01045783          	lhu	a5,16(s0)
   1d674:	00048c93          	mv	s9,s1
   1d678:	f8099ce3          	bnez	s3,1d610 <__sfvwrite_r+0x134>
   1d67c:	00093c03          	ld	s8,0(s2)
   1d680:	00893983          	ld	s3,8(s2)
   1d684:	01090913          	addi	s2,s2,16
   1d688:	f81ff06f          	j	1d608 <__sfvwrite_r+0x12c>
   1d68c:	00000993          	li	s3,0
   1d690:	00000513          	li	a0,0
   1d694:	00000c93          	li	s9,0
   1d698:	00000493          	li	s1,0
   1d69c:	0e048263          	beqz	s1,1d780 <__sfvwrite_r+0x2a4>
   1d6a0:	0e050863          	beqz	a0,1d790 <__sfvwrite_r+0x2b4>
   1d6a4:	00098c13          	mv	s8,s3
   1d6a8:	0134f463          	bgeu	s1,s3,1d6b0 <__sfvwrite_r+0x1d4>
   1d6ac:	00048c13          	mv	s8,s1
   1d6b0:	00043503          	ld	a0,0(s0)
   1d6b4:	01843783          	ld	a5,24(s0)
   1d6b8:	000c0b13          	mv	s6,s8
   1d6bc:	02042683          	lw	a3,32(s0)
   1d6c0:	00a7f863          	bgeu	a5,a0,1d6d0 <__sfvwrite_r+0x1f4>
   1d6c4:	00c42603          	lw	a2,12(s0)
   1d6c8:	00d60bbb          	addw	s7,a2,a3
   1d6cc:	0f8bc263          	blt	s7,s8,1d7b0 <__sfvwrite_r+0x2d4>
   1d6d0:	24dc4a63          	blt	s8,a3,1d924 <__sfvwrite_r+0x448>
   1d6d4:	04043783          	ld	a5,64(s0)
   1d6d8:	03043583          	ld	a1,48(s0)
   1d6dc:	000c8613          	mv	a2,s9
   1d6e0:	000a8513          	mv	a0,s5
   1d6e4:	000780e7          	jalr	a5
   1d6e8:	00050b13          	mv	s6,a0
   1d6ec:	06a05c63          	blez	a0,1d764 <__sfvwrite_r+0x288>
   1d6f0:	0005061b          	sext.w	a2,a0
   1d6f4:	40c989bb          	subw	s3,s3,a2
   1d6f8:	00100513          	li	a0,1
   1d6fc:	04098c63          	beqz	s3,1d754 <__sfvwrite_r+0x278>
   1d700:	010a3783          	ld	a5,16(s4)
   1d704:	016c8cb3          	add	s9,s9,s6
   1d708:	416484b3          	sub	s1,s1,s6
   1d70c:	41678b33          	sub	s6,a5,s6
   1d710:	016a3823          	sd	s6,16(s4)
   1d714:	f80b14e3          	bnez	s6,1d69c <__sfvwrite_r+0x1c0>
   1d718:	00000513          	li	a0,0
   1d71c:	05813083          	ld	ra,88(sp)
   1d720:	05013403          	ld	s0,80(sp)
   1d724:	04813483          	ld	s1,72(sp)
   1d728:	04013903          	ld	s2,64(sp)
   1d72c:	03813983          	ld	s3,56(sp)
   1d730:	03013a03          	ld	s4,48(sp)
   1d734:	02813a83          	ld	s5,40(sp)
   1d738:	02013b03          	ld	s6,32(sp)
   1d73c:	01813b83          	ld	s7,24(sp)
   1d740:	01013c03          	ld	s8,16(sp)
   1d744:	00813c83          	ld	s9,8(sp)
   1d748:	00013d03          	ld	s10,0(sp)
   1d74c:	06010113          	addi	sp,sp,96
   1d750:	00008067          	ret
   1d754:	00040593          	mv	a1,s0
   1d758:	000a8513          	mv	a0,s5
   1d75c:	a80f60ef          	jal	ra,139dc <_fflush_r>
   1d760:	fa0500e3          	beqz	a0,1d700 <__sfvwrite_r+0x224>
   1d764:	01041783          	lh	a5,16(s0)
   1d768:	0407e793          	ori	a5,a5,64
   1d76c:	00f41823          	sh	a5,16(s0)
   1d770:	fff00513          	li	a0,-1
   1d774:	fa9ff06f          	j	1d71c <__sfvwrite_r+0x240>
   1d778:	00000513          	li	a0,0
   1d77c:	00008067          	ret
   1d780:	00893483          	ld	s1,8(s2)
   1d784:	00093c83          	ld	s9,0(s2)
   1d788:	01090913          	addi	s2,s2,16
   1d78c:	fe048ae3          	beqz	s1,1d780 <__sfvwrite_r+0x2a4>
   1d790:	00048613          	mv	a2,s1
   1d794:	00a00593          	li	a1,10
   1d798:	000c8513          	mv	a0,s9
   1d79c:	b8cfa0ef          	jal	ra,17b28 <memchr>
   1d7a0:	1e050263          	beqz	a0,1d984 <__sfvwrite_r+0x4a8>
   1d7a4:	00150513          	addi	a0,a0,1
   1d7a8:	419509bb          	subw	s3,a0,s9
   1d7ac:	ef9ff06f          	j	1d6a4 <__sfvwrite_r+0x1c8>
   1d7b0:	000c8593          	mv	a1,s9
   1d7b4:	000b8613          	mv	a2,s7
   1d7b8:	3cc000ef          	jal	ra,1db84 <memmove>
   1d7bc:	00043783          	ld	a5,0(s0)
   1d7c0:	00040593          	mv	a1,s0
   1d7c4:	000a8513          	mv	a0,s5
   1d7c8:	017787b3          	add	a5,a5,s7
   1d7cc:	00f43023          	sd	a5,0(s0)
   1d7d0:	a0cf60ef          	jal	ra,139dc <_fflush_r>
   1d7d4:	f80518e3          	bnez	a0,1d764 <__sfvwrite_r+0x288>
   1d7d8:	000b8613          	mv	a2,s7
   1d7dc:	000b8b13          	mv	s6,s7
   1d7e0:	f15ff06f          	j	1d6f4 <__sfvwrite_r+0x218>
   1d7e4:	01843783          	ld	a5,24(s0)
   1d7e8:	04a7ec63          	bltu	a5,a0,1d840 <__sfvwrite_r+0x364>
   1d7ec:	02042c83          	lw	s9,32(s0)
   1d7f0:	0599e863          	bltu	s3,s9,1d840 <__sfvwrite_r+0x364>
   1d7f4:	00098513          	mv	a0,s3
   1d7f8:	013bf463          	bgeu	s7,s3,1d800 <__sfvwrite_r+0x324>
   1d7fc:	000b0513          	mv	a0,s6
   1d800:	000c8593          	mv	a1,s9
   1d804:	0005051b          	sext.w	a0,a0
   1d808:	864f30ef          	jal	ra,1086c <__divdi3>
   1d80c:	00050593          	mv	a1,a0
   1d810:	000c8513          	mv	a0,s9
   1d814:	7b9030ef          	jal	ra,217cc <__muldi3>
   1d818:	03043583          	ld	a1,48(s0)
   1d81c:	04043783          	ld	a5,64(s0)
   1d820:	0005069b          	sext.w	a3,a0
   1d824:	000c0613          	mv	a2,s8
   1d828:	000a8513          	mv	a0,s5
   1d82c:	000780e7          	jalr	a5
   1d830:	f2a05ae3          	blez	a0,1d764 <__sfvwrite_r+0x288>
   1d834:	00050493          	mv	s1,a0
   1d838:	409989b3          	sub	s3,s3,s1
   1d83c:	e19ff06f          	j	1d654 <__sfvwrite_r+0x178>
   1d840:	0099f463          	bgeu	s3,s1,1d848 <__sfvwrite_r+0x36c>
   1d844:	00098493          	mv	s1,s3
   1d848:	00048613          	mv	a2,s1
   1d84c:	000c0593          	mv	a1,s8
   1d850:	334000ef          	jal	ra,1db84 <memmove>
   1d854:	00c42783          	lw	a5,12(s0)
   1d858:	00043703          	ld	a4,0(s0)
   1d85c:	409786bb          	subw	a3,a5,s1
   1d860:	00970733          	add	a4,a4,s1
   1d864:	00d42623          	sw	a3,12(s0)
   1d868:	00e43023          	sd	a4,0(s0)
   1d86c:	fc0696e3          	bnez	a3,1d838 <__sfvwrite_r+0x35c>
   1d870:	00040593          	mv	a1,s0
   1d874:	000a8513          	mv	a0,s5
   1d878:	964f60ef          	jal	ra,139dc <_fflush_r>
   1d87c:	ee0514e3          	bnez	a0,1d764 <__sfvwrite_r+0x288>
   1d880:	409989b3          	sub	s3,s3,s1
   1d884:	dd1ff06f          	j	1d654 <__sfvwrite_r+0x178>
   1d888:	4807f713          	andi	a4,a5,1152
   1d88c:	d8070ee3          	beqz	a4,1d628 <__sfvwrite_r+0x14c>
   1d890:	02042683          	lw	a3,32(s0)
   1d894:	01843583          	ld	a1,24(s0)
   1d898:	00198713          	addi	a4,s3,1
   1d89c:	0016949b          	slliw	s1,a3,0x1
   1d8a0:	00d486bb          	addw	a3,s1,a3
   1d8a4:	40b50533          	sub	a0,a0,a1
   1d8a8:	01f6d49b          	srliw	s1,a3,0x1f
   1d8ac:	00050c9b          	sext.w	s9,a0
   1d8b0:	00d484bb          	addw	s1,s1,a3
   1d8b4:	4014d49b          	sraiw	s1,s1,0x1
   1d8b8:	01970733          	add	a4,a4,s9
   1d8bc:	00e4f663          	bgeu	s1,a4,1d8c8 <__sfvwrite_r+0x3ec>
   1d8c0:	0019849b          	addiw	s1,s3,1
   1d8c4:	00a484bb          	addw	s1,s1,a0
   1d8c8:	4007f793          	andi	a5,a5,1024
   1d8cc:	08078263          	beqz	a5,1d950 <__sfvwrite_r+0x474>
   1d8d0:	00048593          	mv	a1,s1
   1d8d4:	000a8513          	mv	a0,s5
   1d8d8:	985f90ef          	jal	ra,1725c <_malloc_r>
   1d8dc:	00050d13          	mv	s10,a0
   1d8e0:	0a050663          	beqz	a0,1d98c <__sfvwrite_r+0x4b0>
   1d8e4:	01843583          	ld	a1,24(s0)
   1d8e8:	000c8613          	mv	a2,s9
   1d8ec:	17c000ef          	jal	ra,1da68 <memcpy>
   1d8f0:	01045783          	lhu	a5,16(s0)
   1d8f4:	b7f7f793          	andi	a5,a5,-1153
   1d8f8:	0807e793          	ori	a5,a5,128
   1d8fc:	00f41823          	sh	a5,16(s0)
   1d900:	019d0533          	add	a0,s10,s9
   1d904:	419487bb          	subw	a5,s1,s9
   1d908:	01a43c23          	sd	s10,24(s0)
   1d90c:	00a43023          	sd	a0,0(s0)
   1d910:	02942023          	sw	s1,32(s0)
   1d914:	00098c93          	mv	s9,s3
   1d918:	00f42623          	sw	a5,12(s0)
   1d91c:	00098d13          	mv	s10,s3
   1d920:	d09ff06f          	j	1d628 <__sfvwrite_r+0x14c>
   1d924:	000c0613          	mv	a2,s8
   1d928:	000c8593          	mv	a1,s9
   1d92c:	258000ef          	jal	ra,1db84 <memmove>
   1d930:	00c42703          	lw	a4,12(s0)
   1d934:	00043783          	ld	a5,0(s0)
   1d938:	000c061b          	sext.w	a2,s8
   1d93c:	40c7073b          	subw	a4,a4,a2
   1d940:	01878c33          	add	s8,a5,s8
   1d944:	00e42623          	sw	a4,12(s0)
   1d948:	01843023          	sd	s8,0(s0)
   1d94c:	da9ff06f          	j	1d6f4 <__sfvwrite_r+0x218>
   1d950:	00048613          	mv	a2,s1
   1d954:	000a8513          	mv	a0,s5
   1d958:	3b4000ef          	jal	ra,1dd0c <_realloc_r>
   1d95c:	00050d13          	mv	s10,a0
   1d960:	fa0510e3          	bnez	a0,1d900 <__sfvwrite_r+0x424>
   1d964:	01843583          	ld	a1,24(s0)
   1d968:	000a8513          	mv	a0,s5
   1d96c:	d98f60ef          	jal	ra,13f04 <_free_r>
   1d970:	01041783          	lh	a5,16(s0)
   1d974:	00c00713          	li	a4,12
   1d978:	00eaa023          	sw	a4,0(s5)
   1d97c:	f7f7f793          	andi	a5,a5,-129
   1d980:	de9ff06f          	j	1d768 <__sfvwrite_r+0x28c>
   1d984:	0014899b          	addiw	s3,s1,1
   1d988:	d1dff06f          	j	1d6a4 <__sfvwrite_r+0x1c8>
   1d98c:	00c00793          	li	a5,12
   1d990:	00faa023          	sw	a5,0(s5)
   1d994:	01041783          	lh	a5,16(s0)
   1d998:	dd1ff06f          	j	1d768 <__sfvwrite_r+0x28c>
   1d99c:	fff00513          	li	a0,-1
   1d9a0:	d7dff06f          	j	1d71c <__sfvwrite_r+0x240>

000000000001d9a4 <_isatty_r>:
   1d9a4:	ff010113          	addi	sp,sp,-16
   1d9a8:	00813023          	sd	s0,0(sp)
   1d9ac:	00050413          	mv	s0,a0
   1d9b0:	00058513          	mv	a0,a1
   1d9b4:	00007797          	auipc	a5,0x7
   1d9b8:	e807aa23          	sw	zero,-364(a5) # 24848 <errno>
   1d9bc:	00113423          	sd	ra,8(sp)
   1d9c0:	7e5010ef          	jal	ra,1f9a4 <_isatty>
   1d9c4:	fff00793          	li	a5,-1
   1d9c8:	00f50a63          	beq	a0,a5,1d9dc <_isatty_r+0x38>
   1d9cc:	00813083          	ld	ra,8(sp)
   1d9d0:	00013403          	ld	s0,0(sp)
   1d9d4:	01010113          	addi	sp,sp,16
   1d9d8:	00008067          	ret
   1d9dc:	00007797          	auipc	a5,0x7
   1d9e0:	e6c78793          	addi	a5,a5,-404 # 24848 <errno>
   1d9e4:	0007a783          	lw	a5,0(a5)
   1d9e8:	fe0782e3          	beqz	a5,1d9cc <_isatty_r+0x28>
   1d9ec:	00f42023          	sw	a5,0(s0)
   1d9f0:	00813083          	ld	ra,8(sp)
   1d9f4:	00013403          	ld	s0,0(sp)
   1d9f8:	01010113          	addi	sp,sp,16
   1d9fc:	00008067          	ret

000000000001da00 <_lseek_r>:
   1da00:	00058793          	mv	a5,a1
   1da04:	ff010113          	addi	sp,sp,-16
   1da08:	00813023          	sd	s0,0(sp)
   1da0c:	00060593          	mv	a1,a2
   1da10:	00050413          	mv	s0,a0
   1da14:	00068613          	mv	a2,a3
   1da18:	00078513          	mv	a0,a5
   1da1c:	00113423          	sd	ra,8(sp)
   1da20:	00007797          	auipc	a5,0x7
   1da24:	e207a423          	sw	zero,-472(a5) # 24848 <errno>
   1da28:	7bd010ef          	jal	ra,1f9e4 <_lseek>
   1da2c:	fff00793          	li	a5,-1
   1da30:	00f50a63          	beq	a0,a5,1da44 <_lseek_r+0x44>
   1da34:	00813083          	ld	ra,8(sp)
   1da38:	00013403          	ld	s0,0(sp)
   1da3c:	01010113          	addi	sp,sp,16
   1da40:	00008067          	ret
   1da44:	00007797          	auipc	a5,0x7
   1da48:	e0478793          	addi	a5,a5,-508 # 24848 <errno>
   1da4c:	0007a783          	lw	a5,0(a5)
   1da50:	fe0782e3          	beqz	a5,1da34 <_lseek_r+0x34>
   1da54:	00f42023          	sw	a5,0(s0)
   1da58:	00813083          	ld	ra,8(sp)
   1da5c:	00013403          	ld	s0,0(sp)
   1da60:	01010113          	addi	sp,sp,16
   1da64:	00008067          	ret

000000000001da68 <memcpy>:
   1da68:	00a5c7b3          	xor	a5,a1,a0
   1da6c:	0077f793          	andi	a5,a5,7
   1da70:	00c508b3          	add	a7,a0,a2
   1da74:	06079263          	bnez	a5,1dad8 <memcpy+0x70>
   1da78:	00700793          	li	a5,7
   1da7c:	04c7fe63          	bgeu	a5,a2,1dad8 <memcpy+0x70>
   1da80:	00757793          	andi	a5,a0,7
   1da84:	00050713          	mv	a4,a0
   1da88:	06079863          	bnez	a5,1daf8 <memcpy+0x90>
   1da8c:	ff88f613          	andi	a2,a7,-8
   1da90:	fc060793          	addi	a5,a2,-64
   1da94:	08f76c63          	bltu	a4,a5,1db2c <memcpy+0xc4>
   1da98:	02c77c63          	bgeu	a4,a2,1dad0 <memcpy+0x68>
   1da9c:	00058693          	mv	a3,a1
   1daa0:	00070793          	mv	a5,a4
   1daa4:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   1daa8:	00878793          	addi	a5,a5,8
   1daac:	00868693          	addi	a3,a3,8
   1dab0:	ff07bc23          	sd	a6,-8(a5)
   1dab4:	fec7e8e3          	bltu	a5,a2,1daa4 <memcpy+0x3c>
   1dab8:	fff60793          	addi	a5,a2,-1
   1dabc:	40e787b3          	sub	a5,a5,a4
   1dac0:	ff87f793          	andi	a5,a5,-8
   1dac4:	00878793          	addi	a5,a5,8
   1dac8:	00f70733          	add	a4,a4,a5
   1dacc:	00f585b3          	add	a1,a1,a5
   1dad0:	01176863          	bltu	a4,a7,1dae0 <memcpy+0x78>
   1dad4:	00008067          	ret
   1dad8:	00050713          	mv	a4,a0
   1dadc:	ff157ce3          	bgeu	a0,a7,1dad4 <memcpy+0x6c>
   1dae0:	0005c783          	lbu	a5,0(a1)
   1dae4:	00170713          	addi	a4,a4,1
   1dae8:	00158593          	addi	a1,a1,1
   1daec:	fef70fa3          	sb	a5,-1(a4)
   1daf0:	ff1768e3          	bltu	a4,a7,1dae0 <memcpy+0x78>
   1daf4:	00008067          	ret
   1daf8:	0005c683          	lbu	a3,0(a1)
   1dafc:	00170713          	addi	a4,a4,1
   1db00:	00777793          	andi	a5,a4,7
   1db04:	fed70fa3          	sb	a3,-1(a4)
   1db08:	00158593          	addi	a1,a1,1
   1db0c:	f80780e3          	beqz	a5,1da8c <memcpy+0x24>
   1db10:	0005c683          	lbu	a3,0(a1)
   1db14:	00170713          	addi	a4,a4,1
   1db18:	00777793          	andi	a5,a4,7
   1db1c:	fed70fa3          	sb	a3,-1(a4)
   1db20:	00158593          	addi	a1,a1,1
   1db24:	fc079ae3          	bnez	a5,1daf8 <memcpy+0x90>
   1db28:	f65ff06f          	j	1da8c <memcpy+0x24>
   1db2c:	0005b683          	ld	a3,0(a1)
   1db30:	0085b283          	ld	t0,8(a1)
   1db34:	0105bf83          	ld	t6,16(a1)
   1db38:	0185bf03          	ld	t5,24(a1)
   1db3c:	0205be83          	ld	t4,32(a1)
   1db40:	0285be03          	ld	t3,40(a1)
   1db44:	0305b303          	ld	t1,48(a1)
   1db48:	0385b803          	ld	a6,56(a1)
   1db4c:	04858593          	addi	a1,a1,72
   1db50:	00d73023          	sd	a3,0(a4)
   1db54:	ff85b683          	ld	a3,-8(a1)
   1db58:	00573423          	sd	t0,8(a4)
   1db5c:	01f73823          	sd	t6,16(a4)
   1db60:	01e73c23          	sd	t5,24(a4)
   1db64:	03d73023          	sd	t4,32(a4)
   1db68:	03c73423          	sd	t3,40(a4)
   1db6c:	02673823          	sd	t1,48(a4)
   1db70:	03073c23          	sd	a6,56(a4)
   1db74:	04870713          	addi	a4,a4,72
   1db78:	fed73c23          	sd	a3,-8(a4)
   1db7c:	faf768e3          	bltu	a4,a5,1db2c <memcpy+0xc4>
   1db80:	f19ff06f          	j	1da98 <memcpy+0x30>

000000000001db84 <memmove>:
   1db84:	02a5f663          	bgeu	a1,a0,1dbb0 <memmove+0x2c>
   1db88:	00c587b3          	add	a5,a1,a2
   1db8c:	02f57263          	bgeu	a0,a5,1dbb0 <memmove+0x2c>
   1db90:	00c50733          	add	a4,a0,a2
   1db94:	0e060a63          	beqz	a2,1dc88 <memmove+0x104>
   1db98:	fff78793          	addi	a5,a5,-1
   1db9c:	0007c683          	lbu	a3,0(a5)
   1dba0:	fff70713          	addi	a4,a4,-1
   1dba4:	00d70023          	sb	a3,0(a4)
   1dba8:	fef598e3          	bne	a1,a5,1db98 <memmove+0x14>
   1dbac:	00008067          	ret
   1dbb0:	01f00793          	li	a5,31
   1dbb4:	02c7e863          	bltu	a5,a2,1dbe4 <memmove+0x60>
   1dbb8:	00050793          	mv	a5,a0
   1dbbc:	fff60693          	addi	a3,a2,-1
   1dbc0:	0c060c63          	beqz	a2,1dc98 <memmove+0x114>
   1dbc4:	00168693          	addi	a3,a3,1
   1dbc8:	00d786b3          	add	a3,a5,a3
   1dbcc:	00158593          	addi	a1,a1,1
   1dbd0:	fff5c703          	lbu	a4,-1(a1)
   1dbd4:	00178793          	addi	a5,a5,1
   1dbd8:	fee78fa3          	sb	a4,-1(a5)
   1dbdc:	fed798e3          	bne	a5,a3,1dbcc <memmove+0x48>
   1dbe0:	00008067          	ret
   1dbe4:	00a5e7b3          	or	a5,a1,a0
   1dbe8:	0077f793          	andi	a5,a5,7
   1dbec:	0a079063          	bnez	a5,1dc8c <memmove+0x108>
   1dbf0:	fe060893          	addi	a7,a2,-32
   1dbf4:	fe08f893          	andi	a7,a7,-32
   1dbf8:	02088893          	addi	a7,a7,32
   1dbfc:	01150833          	add	a6,a0,a7
   1dc00:	00058713          	mv	a4,a1
   1dc04:	00050793          	mv	a5,a0
   1dc08:	00073683          	ld	a3,0(a4)
   1dc0c:	02078793          	addi	a5,a5,32
   1dc10:	02070713          	addi	a4,a4,32
   1dc14:	fed7b023          	sd	a3,-32(a5)
   1dc18:	fe873683          	ld	a3,-24(a4)
   1dc1c:	fed7b423          	sd	a3,-24(a5)
   1dc20:	ff073683          	ld	a3,-16(a4)
   1dc24:	fed7b823          	sd	a3,-16(a5)
   1dc28:	ff873683          	ld	a3,-8(a4)
   1dc2c:	fed7bc23          	sd	a3,-8(a5)
   1dc30:	fcf81ce3          	bne	a6,a5,1dc08 <memmove+0x84>
   1dc34:	01867713          	andi	a4,a2,24
   1dc38:	011585b3          	add	a1,a1,a7
   1dc3c:	01f67813          	andi	a6,a2,31
   1dc40:	04070e63          	beqz	a4,1dc9c <memmove+0x118>
   1dc44:	00058713          	mv	a4,a1
   1dc48:	00078893          	mv	a7,a5
   1dc4c:	00700e13          	li	t3,7
   1dc50:	00870713          	addi	a4,a4,8
   1dc54:	ff873303          	ld	t1,-8(a4)
   1dc58:	00888893          	addi	a7,a7,8
   1dc5c:	40e806b3          	sub	a3,a6,a4
   1dc60:	fe68bc23          	sd	t1,-8(a7)
   1dc64:	00d586b3          	add	a3,a1,a3
   1dc68:	fede64e3          	bltu	t3,a3,1dc50 <memmove+0xcc>
   1dc6c:	ff880713          	addi	a4,a6,-8
   1dc70:	ff877713          	andi	a4,a4,-8
   1dc74:	00870713          	addi	a4,a4,8
   1dc78:	00767613          	andi	a2,a2,7
   1dc7c:	00e787b3          	add	a5,a5,a4
   1dc80:	00e585b3          	add	a1,a1,a4
   1dc84:	f39ff06f          	j	1dbbc <memmove+0x38>
   1dc88:	00008067          	ret
   1dc8c:	fff60693          	addi	a3,a2,-1
   1dc90:	00050793          	mv	a5,a0
   1dc94:	f31ff06f          	j	1dbc4 <memmove+0x40>
   1dc98:	00008067          	ret
   1dc9c:	00080613          	mv	a2,a6
   1dca0:	f1dff06f          	j	1dbbc <memmove+0x38>

000000000001dca4 <_read_r>:
   1dca4:	00058793          	mv	a5,a1
   1dca8:	ff010113          	addi	sp,sp,-16
   1dcac:	00813023          	sd	s0,0(sp)
   1dcb0:	00060593          	mv	a1,a2
   1dcb4:	00050413          	mv	s0,a0
   1dcb8:	00068613          	mv	a2,a3
   1dcbc:	00078513          	mv	a0,a5
   1dcc0:	00113423          	sd	ra,8(sp)
   1dcc4:	00007797          	auipc	a5,0x7
   1dcc8:	b807a223          	sw	zero,-1148(a5) # 24848 <errno>
   1dccc:	569010ef          	jal	ra,1fa34 <_read>
   1dcd0:	fff00793          	li	a5,-1
   1dcd4:	00f50a63          	beq	a0,a5,1dce8 <_read_r+0x44>
   1dcd8:	00813083          	ld	ra,8(sp)
   1dcdc:	00013403          	ld	s0,0(sp)
   1dce0:	01010113          	addi	sp,sp,16
   1dce4:	00008067          	ret
   1dce8:	00007797          	auipc	a5,0x7
   1dcec:	b6078793          	addi	a5,a5,-1184 # 24848 <errno>
   1dcf0:	0007a783          	lw	a5,0(a5)
   1dcf4:	fe0782e3          	beqz	a5,1dcd8 <_read_r+0x34>
   1dcf8:	00f42023          	sw	a5,0(s0)
   1dcfc:	00813083          	ld	ra,8(sp)
   1dd00:	00013403          	ld	s0,0(sp)
   1dd04:	01010113          	addi	sp,sp,16
   1dd08:	00008067          	ret

000000000001dd0c <_realloc_r>:
   1dd0c:	fb010113          	addi	sp,sp,-80
   1dd10:	03213823          	sd	s2,48(sp)
   1dd14:	04113423          	sd	ra,72(sp)
   1dd18:	04813023          	sd	s0,64(sp)
   1dd1c:	02913c23          	sd	s1,56(sp)
   1dd20:	03313423          	sd	s3,40(sp)
   1dd24:	03413023          	sd	s4,32(sp)
   1dd28:	01513c23          	sd	s5,24(sp)
   1dd2c:	01613823          	sd	s6,16(sp)
   1dd30:	01713423          	sd	s7,8(sp)
   1dd34:	01813023          	sd	s8,0(sp)
   1dd38:	00060913          	mv	s2,a2
   1dd3c:	22058463          	beqz	a1,1df64 <_realloc_r+0x258>
   1dd40:	00058a93          	mv	s5,a1
   1dd44:	00050a13          	mv	s4,a0
   1dd48:	ed1f90ef          	jal	ra,17c18 <__malloc_lock>
   1dd4c:	ff8ab783          	ld	a5,-8(s5)
   1dd50:	01790413          	addi	s0,s2,23
   1dd54:	02e00713          	li	a4,46
   1dd58:	ff0a8b13          	addi	s6,s5,-16
   1dd5c:	ffc7f493          	andi	s1,a5,-4
   1dd60:	0e877a63          	bgeu	a4,s0,1de54 <_realloc_r+0x148>
   1dd64:	80000737          	lui	a4,0x80000
   1dd68:	ff047413          	andi	s0,s0,-16
   1dd6c:	fff74713          	not	a4,a4
   1dd70:	0e876663          	bltu	a4,s0,1de5c <_realloc_r+0x150>
   1dd74:	0f246463          	bltu	s0,s2,1de5c <_realloc_r+0x150>
   1dd78:	009b09b3          	add	s3,s6,s1
   1dd7c:	1884da63          	bge	s1,s0,1df10 <_realloc_r+0x204>
   1dd80:	00006717          	auipc	a4,0x6
   1dd84:	1d870713          	addi	a4,a4,472 # 23f58 <__malloc_av_>
   1dd88:	01073683          	ld	a3,16(a4)
   1dd8c:	0089b703          	ld	a4,8(s3)
   1dd90:	23368c63          	beq	a3,s3,1dfc8 <_realloc_r+0x2bc>
   1dd94:	ffe77693          	andi	a3,a4,-2
   1dd98:	00d986b3          	add	a3,s3,a3
   1dd9c:	0086b683          	ld	a3,8(a3)
   1dda0:	0016f693          	andi	a3,a3,1
   1dda4:	1a069263          	bnez	a3,1df48 <_realloc_r+0x23c>
   1dda8:	ffc77713          	andi	a4,a4,-4
   1ddac:	00e486b3          	add	a3,s1,a4
   1ddb0:	3486d063          	bge	a3,s0,1e0f0 <_realloc_r+0x3e4>
   1ddb4:	0017f793          	andi	a5,a5,1
   1ddb8:	02079463          	bnez	a5,1dde0 <_realloc_r+0xd4>
   1ddbc:	ff0abc03          	ld	s8,-16(s5)
   1ddc0:	418b0c33          	sub	s8,s6,s8
   1ddc4:	008c3783          	ld	a5,8(s8)
   1ddc8:	ffc7f793          	andi	a5,a5,-4
   1ddcc:	00e78733          	add	a4,a5,a4
   1ddd0:	00970bb3          	add	s7,a4,s1
   1ddd4:	348bdc63          	bge	s7,s0,1e12c <_realloc_r+0x420>
   1ddd8:	00f48bb3          	add	s7,s1,a5
   1dddc:	0c8bd063          	bge	s7,s0,1de9c <_realloc_r+0x190>
   1dde0:	00090593          	mv	a1,s2
   1dde4:	000a0513          	mv	a0,s4
   1dde8:	c74f90ef          	jal	ra,1725c <_malloc_r>
   1ddec:	00050913          	mv	s2,a0
   1ddf0:	04050c63          	beqz	a0,1de48 <_realloc_r+0x13c>
   1ddf4:	ff8ab783          	ld	a5,-8(s5)
   1ddf8:	ff050713          	addi	a4,a0,-16
   1ddfc:	ffe7f793          	andi	a5,a5,-2
   1de00:	00fb07b3          	add	a5,s6,a5
   1de04:	30e78463          	beq	a5,a4,1e10c <_realloc_r+0x400>
   1de08:	ff848613          	addi	a2,s1,-8
   1de0c:	04800793          	li	a5,72
   1de10:	30c7e863          	bltu	a5,a2,1e120 <_realloc_r+0x414>
   1de14:	02700713          	li	a4,39
   1de18:	000ab683          	ld	a3,0(s5)
   1de1c:	26c76c63          	bltu	a4,a2,1e094 <_realloc_r+0x388>
   1de20:	00050793          	mv	a5,a0
   1de24:	000a8713          	mv	a4,s5
   1de28:	00d7b023          	sd	a3,0(a5)
   1de2c:	00873683          	ld	a3,8(a4)
   1de30:	00d7b423          	sd	a3,8(a5)
   1de34:	01073703          	ld	a4,16(a4)
   1de38:	00e7b823          	sd	a4,16(a5)
   1de3c:	000a8593          	mv	a1,s5
   1de40:	000a0513          	mv	a0,s4
   1de44:	8c0f60ef          	jal	ra,13f04 <_free_r>
   1de48:	000a0513          	mv	a0,s4
   1de4c:	dd1f90ef          	jal	ra,17c1c <__malloc_unlock>
   1de50:	0180006f          	j	1de68 <_realloc_r+0x15c>
   1de54:	02000413          	li	s0,32
   1de58:	f32470e3          	bgeu	s0,s2,1dd78 <_realloc_r+0x6c>
   1de5c:	00c00793          	li	a5,12
   1de60:	00fa2023          	sw	a5,0(s4)
   1de64:	00000913          	li	s2,0
   1de68:	04813083          	ld	ra,72(sp)
   1de6c:	04013403          	ld	s0,64(sp)
   1de70:	00090513          	mv	a0,s2
   1de74:	03813483          	ld	s1,56(sp)
   1de78:	03013903          	ld	s2,48(sp)
   1de7c:	02813983          	ld	s3,40(sp)
   1de80:	02013a03          	ld	s4,32(sp)
   1de84:	01813a83          	ld	s5,24(sp)
   1de88:	01013b03          	ld	s6,16(sp)
   1de8c:	00813b83          	ld	s7,8(sp)
   1de90:	00013c03          	ld	s8,0(sp)
   1de94:	05010113          	addi	sp,sp,80
   1de98:	00008067          	ret
   1de9c:	018c3783          	ld	a5,24(s8)
   1dea0:	010c3703          	ld	a4,16(s8)
   1dea4:	ff848613          	addi	a2,s1,-8
   1dea8:	04800693          	li	a3,72
   1deac:	00f73c23          	sd	a5,24(a4)
   1deb0:	00e7b823          	sd	a4,16(a5)
   1deb4:	010c0913          	addi	s2,s8,16
   1deb8:	017c09b3          	add	s3,s8,s7
   1debc:	30c6e063          	bltu	a3,a2,1e1bc <_realloc_r+0x4b0>
   1dec0:	02700593          	li	a1,39
   1dec4:	000ab703          	ld	a4,0(s5)
   1dec8:	00090793          	mv	a5,s2
   1decc:	02c5f263          	bgeu	a1,a2,1def0 <_realloc_r+0x1e4>
   1ded0:	00ec3823          	sd	a4,16(s8)
   1ded4:	008ab703          	ld	a4,8(s5)
   1ded8:	03700793          	li	a5,55
   1dedc:	00ec3c23          	sd	a4,24(s8)
   1dee0:	32c7ee63          	bltu	a5,a2,1e21c <_realloc_r+0x510>
   1dee4:	010ab703          	ld	a4,16(s5)
   1dee8:	020c0793          	addi	a5,s8,32
   1deec:	010a8a93          	addi	s5,s5,16
   1def0:	00e7b023          	sd	a4,0(a5)
   1def4:	008ab703          	ld	a4,8(s5)
   1def8:	000b8493          	mv	s1,s7
   1defc:	000c0b13          	mv	s6,s8
   1df00:	00e7b423          	sd	a4,8(a5)
   1df04:	010ab703          	ld	a4,16(s5)
   1df08:	00090a93          	mv	s5,s2
   1df0c:	00e7b823          	sd	a4,16(a5)
   1df10:	008b3603          	ld	a2,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb7b8>
   1df14:	408487b3          	sub	a5,s1,s0
   1df18:	01f00713          	li	a4,31
   1df1c:	00167613          	andi	a2,a2,1
   1df20:	06f76c63          	bltu	a4,a5,1df98 <_realloc_r+0x28c>
   1df24:	00c4e633          	or	a2,s1,a2
   1df28:	00cb3423          	sd	a2,8(s6)
   1df2c:	0089b783          	ld	a5,8(s3)
   1df30:	0017e793          	ori	a5,a5,1
   1df34:	00f9b423          	sd	a5,8(s3)
   1df38:	000a0513          	mv	a0,s4
   1df3c:	ce1f90ef          	jal	ra,17c1c <__malloc_unlock>
   1df40:	000a8913          	mv	s2,s5
   1df44:	f25ff06f          	j	1de68 <_realloc_r+0x15c>
   1df48:	0017f793          	andi	a5,a5,1
   1df4c:	e8079ae3          	bnez	a5,1dde0 <_realloc_r+0xd4>
   1df50:	ff0abc03          	ld	s8,-16(s5)
   1df54:	418b0c33          	sub	s8,s6,s8
   1df58:	008c3783          	ld	a5,8(s8)
   1df5c:	ffc7f793          	andi	a5,a5,-4
   1df60:	e79ff06f          	j	1ddd8 <_realloc_r+0xcc>
   1df64:	04013403          	ld	s0,64(sp)
   1df68:	04813083          	ld	ra,72(sp)
   1df6c:	03813483          	ld	s1,56(sp)
   1df70:	03013903          	ld	s2,48(sp)
   1df74:	02813983          	ld	s3,40(sp)
   1df78:	02013a03          	ld	s4,32(sp)
   1df7c:	01813a83          	ld	s5,24(sp)
   1df80:	01013b03          	ld	s6,16(sp)
   1df84:	00813b83          	ld	s7,8(sp)
   1df88:	00013c03          	ld	s8,0(sp)
   1df8c:	00060593          	mv	a1,a2
   1df90:	05010113          	addi	sp,sp,80
   1df94:	ac8f906f          	j	1725c <_malloc_r>
   1df98:	00c46633          	or	a2,s0,a2
   1df9c:	00cb3423          	sd	a2,8(s6)
   1dfa0:	008b05b3          	add	a1,s6,s0
   1dfa4:	0017e793          	ori	a5,a5,1
   1dfa8:	00f5b423          	sd	a5,8(a1)
   1dfac:	0089b783          	ld	a5,8(s3)
   1dfb0:	01058593          	addi	a1,a1,16
   1dfb4:	000a0513          	mv	a0,s4
   1dfb8:	0017e793          	ori	a5,a5,1
   1dfbc:	00f9b423          	sd	a5,8(s3)
   1dfc0:	f45f50ef          	jal	ra,13f04 <_free_r>
   1dfc4:	f75ff06f          	j	1df38 <_realloc_r+0x22c>
   1dfc8:	ffc77713          	andi	a4,a4,-4
   1dfcc:	00e486b3          	add	a3,s1,a4
   1dfd0:	02040613          	addi	a2,s0,32
   1dfd4:	0ec6d263          	bge	a3,a2,1e0b8 <_realloc_r+0x3ac>
   1dfd8:	0017f793          	andi	a5,a5,1
   1dfdc:	e00792e3          	bnez	a5,1dde0 <_realloc_r+0xd4>
   1dfe0:	ff0abc03          	ld	s8,-16(s5)
   1dfe4:	418b0c33          	sub	s8,s6,s8
   1dfe8:	008c3783          	ld	a5,8(s8)
   1dfec:	ffc7f793          	andi	a5,a5,-4
   1dff0:	00e78733          	add	a4,a5,a4
   1dff4:	009709b3          	add	s3,a4,s1
   1dff8:	dec9c0e3          	blt	s3,a2,1ddd8 <_realloc_r+0xcc>
   1dffc:	018c3783          	ld	a5,24(s8)
   1e000:	010c3703          	ld	a4,16(s8)
   1e004:	ff848613          	addi	a2,s1,-8
   1e008:	04800693          	li	a3,72
   1e00c:	00f73c23          	sd	a5,24(a4)
   1e010:	00e7b823          	sd	a4,16(a5)
   1e014:	010c0913          	addi	s2,s8,16
   1e018:	22c6e463          	bltu	a3,a2,1e240 <_realloc_r+0x534>
   1e01c:	02700593          	li	a1,39
   1e020:	000ab703          	ld	a4,0(s5)
   1e024:	00090793          	mv	a5,s2
   1e028:	02c5f263          	bgeu	a1,a2,1e04c <_realloc_r+0x340>
   1e02c:	00ec3823          	sd	a4,16(s8)
   1e030:	008ab703          	ld	a4,8(s5)
   1e034:	03700793          	li	a5,55
   1e038:	00ec3c23          	sd	a4,24(s8)
   1e03c:	20c7ea63          	bltu	a5,a2,1e250 <_realloc_r+0x544>
   1e040:	010ab703          	ld	a4,16(s5)
   1e044:	020c0793          	addi	a5,s8,32
   1e048:	010a8a93          	addi	s5,s5,16
   1e04c:	00e7b023          	sd	a4,0(a5)
   1e050:	008ab703          	ld	a4,8(s5)
   1e054:	00e7b423          	sd	a4,8(a5)
   1e058:	010ab703          	ld	a4,16(s5)
   1e05c:	00e7b823          	sd	a4,16(a5)
   1e060:	008c0733          	add	a4,s8,s0
   1e064:	408987b3          	sub	a5,s3,s0
   1e068:	00006697          	auipc	a3,0x6
   1e06c:	f0e6b023          	sd	a4,-256(a3) # 23f68 <__malloc_av_+0x10>
   1e070:	0017e793          	ori	a5,a5,1
   1e074:	00f73423          	sd	a5,8(a4)
   1e078:	008c3783          	ld	a5,8(s8)
   1e07c:	000a0513          	mv	a0,s4
   1e080:	0017f793          	andi	a5,a5,1
   1e084:	0087e433          	or	s0,a5,s0
   1e088:	008c3423          	sd	s0,8(s8)
   1e08c:	b91f90ef          	jal	ra,17c1c <__malloc_unlock>
   1e090:	dd9ff06f          	j	1de68 <_realloc_r+0x15c>
   1e094:	00d53023          	sd	a3,0(a0)
   1e098:	008ab683          	ld	a3,8(s5)
   1e09c:	03700713          	li	a4,55
   1e0a0:	00d53423          	sd	a3,8(a0)
   1e0a4:	12c76a63          	bltu	a4,a2,1e1d8 <_realloc_r+0x4cc>
   1e0a8:	010a8713          	addi	a4,s5,16
   1e0ac:	01050793          	addi	a5,a0,16
   1e0b0:	010ab683          	ld	a3,16(s5)
   1e0b4:	d75ff06f          	j	1de28 <_realloc_r+0x11c>
   1e0b8:	008b0b33          	add	s6,s6,s0
   1e0bc:	408687b3          	sub	a5,a3,s0
   1e0c0:	00006717          	auipc	a4,0x6
   1e0c4:	eb673423          	sd	s6,-344(a4) # 23f68 <__malloc_av_+0x10>
   1e0c8:	0017e793          	ori	a5,a5,1
   1e0cc:	00fb3423          	sd	a5,8(s6)
   1e0d0:	ff8ab783          	ld	a5,-8(s5)
   1e0d4:	000a0513          	mv	a0,s4
   1e0d8:	000a8913          	mv	s2,s5
   1e0dc:	0017f793          	andi	a5,a5,1
   1e0e0:	0087e433          	or	s0,a5,s0
   1e0e4:	fe8abc23          	sd	s0,-8(s5)
   1e0e8:	b35f90ef          	jal	ra,17c1c <__malloc_unlock>
   1e0ec:	d7dff06f          	j	1de68 <_realloc_r+0x15c>
   1e0f0:	0189b783          	ld	a5,24(s3)
   1e0f4:	0109b703          	ld	a4,16(s3)
   1e0f8:	00068493          	mv	s1,a3
   1e0fc:	00db09b3          	add	s3,s6,a3
   1e100:	00f73c23          	sd	a5,24(a4)
   1e104:	00e7b823          	sd	a4,16(a5)
   1e108:	e09ff06f          	j	1df10 <_realloc_r+0x204>
   1e10c:	ff853783          	ld	a5,-8(a0)
   1e110:	ffc7f793          	andi	a5,a5,-4
   1e114:	00f484b3          	add	s1,s1,a5
   1e118:	009b09b3          	add	s3,s6,s1
   1e11c:	df5ff06f          	j	1df10 <_realloc_r+0x204>
   1e120:	000a8593          	mv	a1,s5
   1e124:	a61ff0ef          	jal	ra,1db84 <memmove>
   1e128:	d15ff06f          	j	1de3c <_realloc_r+0x130>
   1e12c:	0189b783          	ld	a5,24(s3)
   1e130:	0109b703          	ld	a4,16(s3)
   1e134:	ff848613          	addi	a2,s1,-8
   1e138:	04800693          	li	a3,72
   1e13c:	00f73c23          	sd	a5,24(a4)
   1e140:	00e7b823          	sd	a4,16(a5)
   1e144:	010c3703          	ld	a4,16(s8)
   1e148:	018c3783          	ld	a5,24(s8)
   1e14c:	010c0913          	addi	s2,s8,16
   1e150:	017c09b3          	add	s3,s8,s7
   1e154:	00f73c23          	sd	a5,24(a4)
   1e158:	00e7b823          	sd	a4,16(a5)
   1e15c:	06c6e063          	bltu	a3,a2,1e1bc <_realloc_r+0x4b0>
   1e160:	02700693          	li	a3,39
   1e164:	000ab703          	ld	a4,0(s5)
   1e168:	00090793          	mv	a5,s2
   1e16c:	d8c6f2e3          	bgeu	a3,a2,1def0 <_realloc_r+0x1e4>
   1e170:	00ec3823          	sd	a4,16(s8)
   1e174:	008ab703          	ld	a4,8(s5)
   1e178:	03700793          	li	a5,55
   1e17c:	00ec3c23          	sd	a4,24(s8)
   1e180:	010ab703          	ld	a4,16(s5)
   1e184:	d6c7f2e3          	bgeu	a5,a2,1dee8 <_realloc_r+0x1dc>
   1e188:	02ec3023          	sd	a4,32(s8)
   1e18c:	018ab703          	ld	a4,24(s5)
   1e190:	04800793          	li	a5,72
   1e194:	02ec3423          	sd	a4,40(s8)
   1e198:	020ab703          	ld	a4,32(s5)
   1e19c:	08f61c63          	bne	a2,a5,1e234 <_realloc_r+0x528>
   1e1a0:	02ec3823          	sd	a4,48(s8)
   1e1a4:	028ab703          	ld	a4,40(s5)
   1e1a8:	040c0793          	addi	a5,s8,64
   1e1ac:	030a8a93          	addi	s5,s5,48
   1e1b0:	02ec3c23          	sd	a4,56(s8)
   1e1b4:	000ab703          	ld	a4,0(s5)
   1e1b8:	d39ff06f          	j	1def0 <_realloc_r+0x1e4>
   1e1bc:	000a8593          	mv	a1,s5
   1e1c0:	00090513          	mv	a0,s2
   1e1c4:	9c1ff0ef          	jal	ra,1db84 <memmove>
   1e1c8:	00090a93          	mv	s5,s2
   1e1cc:	000b8493          	mv	s1,s7
   1e1d0:	000c0b13          	mv	s6,s8
   1e1d4:	d3dff06f          	j	1df10 <_realloc_r+0x204>
   1e1d8:	010ab703          	ld	a4,16(s5)
   1e1dc:	00e53823          	sd	a4,16(a0)
   1e1e0:	018ab703          	ld	a4,24(s5)
   1e1e4:	00e53c23          	sd	a4,24(a0)
   1e1e8:	00f60a63          	beq	a2,a5,1e1fc <_realloc_r+0x4f0>
   1e1ec:	020a8713          	addi	a4,s5,32
   1e1f0:	02050793          	addi	a5,a0,32
   1e1f4:	020ab683          	ld	a3,32(s5)
   1e1f8:	c31ff06f          	j	1de28 <_realloc_r+0x11c>
   1e1fc:	020ab683          	ld	a3,32(s5)
   1e200:	030a8713          	addi	a4,s5,48
   1e204:	03050793          	addi	a5,a0,48
   1e208:	02d53023          	sd	a3,32(a0)
   1e20c:	028ab683          	ld	a3,40(s5)
   1e210:	02d53423          	sd	a3,40(a0)
   1e214:	030ab683          	ld	a3,48(s5)
   1e218:	c11ff06f          	j	1de28 <_realloc_r+0x11c>
   1e21c:	010ab783          	ld	a5,16(s5)
   1e220:	02fc3023          	sd	a5,32(s8)
   1e224:	018ab783          	ld	a5,24(s5)
   1e228:	02fc3423          	sd	a5,40(s8)
   1e22c:	020ab703          	ld	a4,32(s5)
   1e230:	f6d608e3          	beq	a2,a3,1e1a0 <_realloc_r+0x494>
   1e234:	030c0793          	addi	a5,s8,48
   1e238:	020a8a93          	addi	s5,s5,32
   1e23c:	cb5ff06f          	j	1def0 <_realloc_r+0x1e4>
   1e240:	000a8593          	mv	a1,s5
   1e244:	00090513          	mv	a0,s2
   1e248:	93dff0ef          	jal	ra,1db84 <memmove>
   1e24c:	e15ff06f          	j	1e060 <_realloc_r+0x354>
   1e250:	010ab783          	ld	a5,16(s5)
   1e254:	02fc3023          	sd	a5,32(s8)
   1e258:	018ab783          	ld	a5,24(s5)
   1e25c:	02fc3423          	sd	a5,40(s8)
   1e260:	020ab703          	ld	a4,32(s5)
   1e264:	00d60863          	beq	a2,a3,1e274 <_realloc_r+0x568>
   1e268:	030c0793          	addi	a5,s8,48
   1e26c:	020a8a93          	addi	s5,s5,32
   1e270:	dddff06f          	j	1e04c <_realloc_r+0x340>
   1e274:	02ec3823          	sd	a4,48(s8)
   1e278:	028ab703          	ld	a4,40(s5)
   1e27c:	040c0793          	addi	a5,s8,64
   1e280:	030a8a93          	addi	s5,s5,48
   1e284:	02ec3c23          	sd	a4,56(s8)
   1e288:	000ab703          	ld	a4,0(s5)
   1e28c:	dc1ff06f          	j	1e04c <_realloc_r+0x340>

000000000001e290 <cleanup_glue>:
   1e290:	fe010113          	addi	sp,sp,-32
   1e294:	00813823          	sd	s0,16(sp)
   1e298:	00058413          	mv	s0,a1
   1e29c:	0005b583          	ld	a1,0(a1)
   1e2a0:	00913423          	sd	s1,8(sp)
   1e2a4:	00113c23          	sd	ra,24(sp)
   1e2a8:	00050493          	mv	s1,a0
   1e2ac:	00058463          	beqz	a1,1e2b4 <cleanup_glue+0x24>
   1e2b0:	fe1ff0ef          	jal	ra,1e290 <cleanup_glue>
   1e2b4:	00040593          	mv	a1,s0
   1e2b8:	01013403          	ld	s0,16(sp)
   1e2bc:	01813083          	ld	ra,24(sp)
   1e2c0:	00048513          	mv	a0,s1
   1e2c4:	00813483          	ld	s1,8(sp)
   1e2c8:	02010113          	addi	sp,sp,32
   1e2cc:	c39f506f          	j	13f04 <_free_r>

000000000001e2d0 <_reclaim_reent>:
   1e2d0:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1e2d4:	0007b783          	ld	a5,0(a5)
   1e2d8:	10a78263          	beq	a5,a0,1e3dc <_reclaim_reent+0x10c>
   1e2dc:	07853703          	ld	a4,120(a0)
   1e2e0:	fd010113          	addi	sp,sp,-48
   1e2e4:	00913c23          	sd	s1,24(sp)
   1e2e8:	02113423          	sd	ra,40(sp)
   1e2ec:	02813023          	sd	s0,32(sp)
   1e2f0:	01213823          	sd	s2,16(sp)
   1e2f4:	01313423          	sd	s3,8(sp)
   1e2f8:	00050493          	mv	s1,a0
   1e2fc:	04070263          	beqz	a4,1e340 <_reclaim_reent+0x70>
   1e300:	00000913          	li	s2,0
   1e304:	20000993          	li	s3,512
   1e308:	012707b3          	add	a5,a4,s2
   1e30c:	0007b583          	ld	a1,0(a5)
   1e310:	00058e63          	beqz	a1,1e32c <_reclaim_reent+0x5c>
   1e314:	0005b403          	ld	s0,0(a1)
   1e318:	00048513          	mv	a0,s1
   1e31c:	be9f50ef          	jal	ra,13f04 <_free_r>
   1e320:	00040593          	mv	a1,s0
   1e324:	fe0418e3          	bnez	s0,1e314 <_reclaim_reent+0x44>
   1e328:	0784b703          	ld	a4,120(s1)
   1e32c:	00890913          	addi	s2,s2,8
   1e330:	fd391ce3          	bne	s2,s3,1e308 <_reclaim_reent+0x38>
   1e334:	00070593          	mv	a1,a4
   1e338:	00048513          	mv	a0,s1
   1e33c:	bc9f50ef          	jal	ra,13f04 <_free_r>
   1e340:	0604b583          	ld	a1,96(s1)
   1e344:	00058663          	beqz	a1,1e350 <_reclaim_reent+0x80>
   1e348:	00048513          	mv	a0,s1
   1e34c:	bb9f50ef          	jal	ra,13f04 <_free_r>
   1e350:	1f84b583          	ld	a1,504(s1)
   1e354:	02058063          	beqz	a1,1e374 <_reclaim_reent+0xa4>
   1e358:	20048913          	addi	s2,s1,512
   1e35c:	01258c63          	beq	a1,s2,1e374 <_reclaim_reent+0xa4>
   1e360:	0005b403          	ld	s0,0(a1)
   1e364:	00048513          	mv	a0,s1
   1e368:	b9df50ef          	jal	ra,13f04 <_free_r>
   1e36c:	00040593          	mv	a1,s0
   1e370:	fe8918e3          	bne	s2,s0,1e360 <_reclaim_reent+0x90>
   1e374:	0884b583          	ld	a1,136(s1)
   1e378:	00058663          	beqz	a1,1e384 <_reclaim_reent+0xb4>
   1e37c:	00048513          	mv	a0,s1
   1e380:	b85f50ef          	jal	ra,13f04 <_free_r>
   1e384:	0504a783          	lw	a5,80(s1)
   1e388:	02078c63          	beqz	a5,1e3c0 <_reclaim_reent+0xf0>
   1e38c:	0584b783          	ld	a5,88(s1)
   1e390:	00048513          	mv	a0,s1
   1e394:	000780e7          	jalr	a5
   1e398:	5204b583          	ld	a1,1312(s1)
   1e39c:	02058263          	beqz	a1,1e3c0 <_reclaim_reent+0xf0>
   1e3a0:	02013403          	ld	s0,32(sp)
   1e3a4:	02813083          	ld	ra,40(sp)
   1e3a8:	01013903          	ld	s2,16(sp)
   1e3ac:	00813983          	ld	s3,8(sp)
   1e3b0:	00048513          	mv	a0,s1
   1e3b4:	01813483          	ld	s1,24(sp)
   1e3b8:	03010113          	addi	sp,sp,48
   1e3bc:	ed5ff06f          	j	1e290 <cleanup_glue>
   1e3c0:	02813083          	ld	ra,40(sp)
   1e3c4:	02013403          	ld	s0,32(sp)
   1e3c8:	01813483          	ld	s1,24(sp)
   1e3cc:	01013903          	ld	s2,16(sp)
   1e3d0:	00813983          	ld	s3,8(sp)
   1e3d4:	03010113          	addi	sp,sp,48
   1e3d8:	00008067          	ret
   1e3dc:	00008067          	ret

000000000001e3e0 <__ssprint_r>:
   1e3e0:	01063783          	ld	a5,16(a2)
   1e3e4:	fb010113          	addi	sp,sp,-80
   1e3e8:	03413023          	sd	s4,32(sp)
   1e3ec:	04113423          	sd	ra,72(sp)
   1e3f0:	04813023          	sd	s0,64(sp)
   1e3f4:	02913c23          	sd	s1,56(sp)
   1e3f8:	03213823          	sd	s2,48(sp)
   1e3fc:	03313423          	sd	s3,40(sp)
   1e400:	01513c23          	sd	s5,24(sp)
   1e404:	01613823          	sd	s6,16(sp)
   1e408:	01713423          	sd	s7,8(sp)
   1e40c:	01813023          	sd	s8,0(sp)
   1e410:	00060a13          	mv	s4,a2
   1e414:	10078c63          	beqz	a5,1e52c <__ssprint_r+0x14c>
   1e418:	00050a93          	mv	s5,a0
   1e41c:	00063983          	ld	s3,0(a2)
   1e420:	0005b503          	ld	a0,0(a1)
   1e424:	00c5a403          	lw	s0,12(a1)
   1e428:	00058913          	mv	s2,a1
   1e42c:	00000b13          	li	s6,0
   1e430:	00000493          	li	s1,0
   1e434:	12048863          	beqz	s1,1e564 <__ssprint_r+0x184>
   1e438:	00040c13          	mv	s8,s0
   1e43c:	0004879b          	sext.w	a5,s1
   1e440:	1284ea63          	bltu	s1,s0,1e574 <__ssprint_r+0x194>
   1e444:	01095783          	lhu	a5,16(s2)
   1e448:	00048b9b          	sext.w	s7,s1
   1e44c:	4807f713          	andi	a4,a5,1152
   1e450:	0a070063          	beqz	a4,1e4f0 <__ssprint_r+0x110>
   1e454:	02092683          	lw	a3,32(s2)
   1e458:	01893583          	ld	a1,24(s2)
   1e45c:	00148713          	addi	a4,s1,1
   1e460:	0016941b          	slliw	s0,a3,0x1
   1e464:	00d406bb          	addw	a3,s0,a3
   1e468:	40b50533          	sub	a0,a0,a1
   1e46c:	01f6d41b          	srliw	s0,a3,0x1f
   1e470:	00050b9b          	sext.w	s7,a0
   1e474:	00d4043b          	addw	s0,s0,a3
   1e478:	4014541b          	sraiw	s0,s0,0x1
   1e47c:	01770733          	add	a4,a4,s7
   1e480:	00e47663          	bgeu	s0,a4,1e48c <__ssprint_r+0xac>
   1e484:	0014841b          	addiw	s0,s1,1
   1e488:	00a4043b          	addw	s0,s0,a0
   1e48c:	4007f793          	andi	a5,a5,1024
   1e490:	0e078a63          	beqz	a5,1e584 <__ssprint_r+0x1a4>
   1e494:	00040593          	mv	a1,s0
   1e498:	000a8513          	mv	a0,s5
   1e49c:	dc1f80ef          	jal	ra,1725c <_malloc_r>
   1e4a0:	00050c13          	mv	s8,a0
   1e4a4:	10050063          	beqz	a0,1e5a4 <__ssprint_r+0x1c4>
   1e4a8:	01893583          	ld	a1,24(s2)
   1e4ac:	000b8613          	mv	a2,s7
   1e4b0:	db8ff0ef          	jal	ra,1da68 <memcpy>
   1e4b4:	01095783          	lhu	a5,16(s2)
   1e4b8:	b7f7f793          	andi	a5,a5,-1153
   1e4bc:	0807e793          	ori	a5,a5,128
   1e4c0:	00f91823          	sh	a5,16(s2)
   1e4c4:	017c0533          	add	a0,s8,s7
   1e4c8:	41740bbb          	subw	s7,s0,s7
   1e4cc:	0004879b          	sext.w	a5,s1
   1e4d0:	01893c23          	sd	s8,24(s2)
   1e4d4:	02892023          	sw	s0,32(s2)
   1e4d8:	01792623          	sw	s7,12(s2)
   1e4dc:	00a93023          	sd	a0,0(s2)
   1e4e0:	00078413          	mv	s0,a5
   1e4e4:	00078c13          	mv	s8,a5
   1e4e8:	00078b93          	mv	s7,a5
   1e4ec:	08f4e463          	bltu	s1,a5,1e574 <__ssprint_r+0x194>
   1e4f0:	00040613          	mv	a2,s0
   1e4f4:	000b0593          	mv	a1,s6
   1e4f8:	e8cff0ef          	jal	ra,1db84 <memmove>
   1e4fc:	00c92703          	lw	a4,12(s2)
   1e500:	00093503          	ld	a0,0(s2)
   1e504:	010a3783          	ld	a5,16(s4)
   1e508:	4087043b          	subw	s0,a4,s0
   1e50c:	01850533          	add	a0,a0,s8
   1e510:	00892623          	sw	s0,12(s2)
   1e514:	00a93023          	sd	a0,0(s2)
   1e518:	417787b3          	sub	a5,a5,s7
   1e51c:	00fa3823          	sd	a5,16(s4)
   1e520:	017b0b33          	add	s6,s6,s7
   1e524:	417484b3          	sub	s1,s1,s7
   1e528:	f00796e3          	bnez	a5,1e434 <__ssprint_r+0x54>
   1e52c:	000a2423          	sw	zero,8(s4)
   1e530:	00000513          	li	a0,0
   1e534:	04813083          	ld	ra,72(sp)
   1e538:	04013403          	ld	s0,64(sp)
   1e53c:	03813483          	ld	s1,56(sp)
   1e540:	03013903          	ld	s2,48(sp)
   1e544:	02813983          	ld	s3,40(sp)
   1e548:	02013a03          	ld	s4,32(sp)
   1e54c:	01813a83          	ld	s5,24(sp)
   1e550:	01013b03          	ld	s6,16(sp)
   1e554:	00813b83          	ld	s7,8(sp)
   1e558:	00013c03          	ld	s8,0(sp)
   1e55c:	05010113          	addi	sp,sp,80
   1e560:	00008067          	ret
   1e564:	0009bb03          	ld	s6,0(s3)
   1e568:	0089b483          	ld	s1,8(s3)
   1e56c:	01098993          	addi	s3,s3,16
   1e570:	ec5ff06f          	j	1e434 <__ssprint_r+0x54>
   1e574:	00078413          	mv	s0,a5
   1e578:	00078c13          	mv	s8,a5
   1e57c:	00078b93          	mv	s7,a5
   1e580:	f71ff06f          	j	1e4f0 <__ssprint_r+0x110>
   1e584:	00040613          	mv	a2,s0
   1e588:	000a8513          	mv	a0,s5
   1e58c:	f80ff0ef          	jal	ra,1dd0c <_realloc_r>
   1e590:	00050c13          	mv	s8,a0
   1e594:	f20518e3          	bnez	a0,1e4c4 <__ssprint_r+0xe4>
   1e598:	01893583          	ld	a1,24(s2)
   1e59c:	000a8513          	mv	a0,s5
   1e5a0:	965f50ef          	jal	ra,13f04 <_free_r>
   1e5a4:	00c00793          	li	a5,12
   1e5a8:	00faa023          	sw	a5,0(s5)
   1e5ac:	01095783          	lhu	a5,16(s2)
   1e5b0:	fff00513          	li	a0,-1
   1e5b4:	0407e793          	ori	a5,a5,64
   1e5b8:	00f91823          	sh	a5,16(s2)
   1e5bc:	000a3823          	sd	zero,16(s4)
   1e5c0:	000a2423          	sw	zero,8(s4)
   1e5c4:	f71ff06f          	j	1e534 <__ssprint_r+0x154>

000000000001e5c8 <_svfiprintf_r>:
   1e5c8:	0105d783          	lhu	a5,16(a1)
   1e5cc:	e3010113          	addi	sp,sp,-464
   1e5d0:	1b213823          	sd	s2,432(sp)
   1e5d4:	1b313423          	sd	s3,424(sp)
   1e5d8:	19713423          	sd	s7,392(sp)
   1e5dc:	1c113423          	sd	ra,456(sp)
   1e5e0:	1c813023          	sd	s0,448(sp)
   1e5e4:	1a913c23          	sd	s1,440(sp)
   1e5e8:	1b413023          	sd	s4,416(sp)
   1e5ec:	19513c23          	sd	s5,408(sp)
   1e5f0:	19613823          	sd	s6,400(sp)
   1e5f4:	19813023          	sd	s8,384(sp)
   1e5f8:	17913c23          	sd	s9,376(sp)
   1e5fc:	17a13823          	sd	s10,368(sp)
   1e600:	17b13423          	sd	s11,360(sp)
   1e604:	0807f793          	andi	a5,a5,128
   1e608:	00d13823          	sd	a3,16(sp)
   1e60c:	00058913          	mv	s2,a1
   1e610:	00050993          	mv	s3,a0
   1e614:	00060b93          	mv	s7,a2
   1e618:	00078663          	beqz	a5,1e624 <_svfiprintf_r+0x5c>
   1e61c:	0185b783          	ld	a5,24(a1)
   1e620:	4e078ce3          	beqz	a5,1f318 <_svfiprintf_r+0xd50>
   1e624:	ffff87b7          	lui	a5,0xffff8
   1e628:	0e010493          	addi	s1,sp,224
   1e62c:	8307c793          	xori	a5,a5,-2000
   1e630:	000b8c13          	mv	s8,s7
   1e634:	06913023          	sd	s1,96(sp)
   1e638:	06013823          	sd	zero,112(sp)
   1e63c:	06012423          	sw	zero,104(sp)
   1e640:	00013c23          	sd	zero,24(sp)
   1e644:	02013423          	sd	zero,40(sp)
   1e648:	02013c23          	sd	zero,56(sp)
   1e64c:	02013823          	sd	zero,48(sp)
   1e650:	00013023          	sd	zero,0(sp)
   1e654:	00004a17          	auipc	s4,0x4
   1e658:	db4a0a13          	addi	s4,s4,-588 # 22408 <_ctype_+0x108>
   1e65c:	04f13023          	sd	a5,64(sp)
   1e660:	00048b93          	mv	s7,s1
   1e664:	000c4783          	lbu	a5,0(s8)
   1e668:	0e078e63          	beqz	a5,1e764 <_svfiprintf_r+0x19c>
   1e66c:	02500713          	li	a4,37
   1e670:	46e780e3          	beq	a5,a4,1f2d0 <_svfiprintf_r+0xd08>
   1e674:	000c0413          	mv	s0,s8
   1e678:	00c0006f          	j	1e684 <_svfiprintf_r+0xbc>
   1e67c:	0ce78063          	beq	a5,a4,1e73c <_svfiprintf_r+0x174>
   1e680:	000c8413          	mv	s0,s9
   1e684:	00144783          	lbu	a5,1(s0)
   1e688:	00140c93          	addi	s9,s0,1
   1e68c:	fe0798e3          	bnez	a5,1e67c <_svfiprintf_r+0xb4>
   1e690:	418c8d3b          	subw	s10,s9,s8
   1e694:	0c0d0863          	beqz	s10,1e764 <_svfiprintf_r+0x19c>
   1e698:	07013703          	ld	a4,112(sp)
   1e69c:	06812783          	lw	a5,104(sp)
   1e6a0:	018bb023          	sd	s8,0(s7)
   1e6a4:	01a70733          	add	a4,a4,s10
   1e6a8:	0017879b          	addiw	a5,a5,1
   1e6ac:	01abb423          	sd	s10,8(s7)
   1e6b0:	06e13823          	sd	a4,112(sp)
   1e6b4:	06f12423          	sw	a5,104(sp)
   1e6b8:	0007871b          	sext.w	a4,a5
   1e6bc:	00700793          	li	a5,7
   1e6c0:	010b8b93          	addi	s7,s7,16
   1e6c4:	08e7c263          	blt	a5,a4,1e748 <_svfiprintf_r+0x180>
   1e6c8:	00013703          	ld	a4,0(sp)
   1e6cc:	00144783          	lbu	a5,1(s0)
   1e6d0:	00ed073b          	addw	a4,s10,a4
   1e6d4:	00e13023          	sd	a4,0(sp)
   1e6d8:	08078663          	beqz	a5,1e764 <_svfiprintf_r+0x19c>
   1e6dc:	001c8c13          	addi	s8,s9,1
   1e6e0:	001cc703          	lbu	a4,1(s9)
   1e6e4:	04010ba3          	sb	zero,87(sp)
   1e6e8:	fff00a93          	li	s5,-1
   1e6ec:	00000413          	li	s0,0
   1e6f0:	00000b13          	li	s6,0
   1e6f4:	00900c93          	li	s9,9
   1e6f8:	02a00d13          	li	s10,42
   1e6fc:	001c0c13          	addi	s8,s8,1
   1e700:	0007071b          	sext.w	a4,a4
   1e704:	05a00613          	li	a2,90
   1e708:	fe07079b          	addiw	a5,a4,-32
   1e70c:	0007869b          	sext.w	a3,a5
   1e710:	1ad66063          	bltu	a2,a3,1e8b0 <_svfiprintf_r+0x2e8>
   1e714:	02079793          	slli	a5,a5,0x20
   1e718:	01e7d793          	srli	a5,a5,0x1e
   1e71c:	014787b3          	add	a5,a5,s4
   1e720:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd37b0>
   1e724:	014787b3          	add	a5,a5,s4
   1e728:	00078067          	jr	a5
   1e72c:	010b6b13          	ori	s6,s6,16
   1e730:	000b0b1b          	sext.w	s6,s6
   1e734:	000c4703          	lbu	a4,0(s8)
   1e738:	fc5ff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1e73c:	418c8d3b          	subw	s10,s9,s8
   1e740:	f80d0ee3          	beqz	s10,1e6dc <_svfiprintf_r+0x114>
   1e744:	f55ff06f          	j	1e698 <_svfiprintf_r+0xd0>
   1e748:	06010613          	addi	a2,sp,96
   1e74c:	00090593          	mv	a1,s2
   1e750:	00098513          	mv	a0,s3
   1e754:	c8dff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1e758:	02051263          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1e75c:	00048b93          	mv	s7,s1
   1e760:	f69ff06f          	j	1e6c8 <_svfiprintf_r+0x100>
   1e764:	07013783          	ld	a5,112(sp)
   1e768:	00078a63          	beqz	a5,1e77c <_svfiprintf_r+0x1b4>
   1e76c:	06010613          	addi	a2,sp,96
   1e770:	00090593          	mv	a1,s2
   1e774:	00098513          	mv	a0,s3
   1e778:	c69ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1e77c:	01095783          	lhu	a5,16(s2)
   1e780:	0407f793          	andi	a5,a5,64
   1e784:	620796e3          	bnez	a5,1f5b0 <_svfiprintf_r+0xfe8>
   1e788:	1c813083          	ld	ra,456(sp)
   1e78c:	1c013403          	ld	s0,448(sp)
   1e790:	00013503          	ld	a0,0(sp)
   1e794:	1b813483          	ld	s1,440(sp)
   1e798:	1b013903          	ld	s2,432(sp)
   1e79c:	1a813983          	ld	s3,424(sp)
   1e7a0:	1a013a03          	ld	s4,416(sp)
   1e7a4:	19813a83          	ld	s5,408(sp)
   1e7a8:	19013b03          	ld	s6,400(sp)
   1e7ac:	18813b83          	ld	s7,392(sp)
   1e7b0:	18013c03          	ld	s8,384(sp)
   1e7b4:	17813c83          	ld	s9,376(sp)
   1e7b8:	17013d03          	ld	s10,368(sp)
   1e7bc:	16813d83          	ld	s11,360(sp)
   1e7c0:	1d010113          	addi	sp,sp,464
   1e7c4:	00008067          	ret
   1e7c8:	01013683          	ld	a3,16(sp)
   1e7cc:	00003797          	auipc	a5,0x3
   1e7d0:	40c78793          	addi	a5,a5,1036 # 21bd8 <zeroes.4539+0x80>
   1e7d4:	00f13c23          	sd	a5,24(sp)
   1e7d8:	020b7793          	andi	a5,s6,32
   1e7dc:	00868613          	addi	a2,a3,8
   1e7e0:	4e078463          	beqz	a5,1ecc8 <_svfiprintf_r+0x700>
   1e7e4:	0006bd83          	ld	s11,0(a3)
   1e7e8:	001b7793          	andi	a5,s6,1
   1e7ec:	00078e63          	beqz	a5,1e808 <_svfiprintf_r+0x240>
   1e7f0:	000d8c63          	beqz	s11,1e808 <_svfiprintf_r+0x240>
   1e7f4:	002b6893          	ori	a7,s6,2
   1e7f8:	03000793          	li	a5,48
   1e7fc:	04f10c23          	sb	a5,88(sp)
   1e800:	04e10ca3          	sb	a4,89(sp)
   1e804:	00088b1b          	sext.w	s6,a7
   1e808:	bffb7893          	andi	a7,s6,-1025
   1e80c:	00088c9b          	sext.w	s9,a7
   1e810:	00c13823          	sd	a2,16(sp)
   1e814:	00200793          	li	a5,2
   1e818:	04010ba3          	sb	zero,87(sp)
   1e81c:	fff00713          	li	a4,-1
   1e820:	52ea8a63          	beq	s5,a4,1ed54 <_svfiprintf_r+0x78c>
   1e824:	f7fcf893          	andi	a7,s9,-129
   1e828:	00088b1b          	sext.w	s6,a7
   1e82c:	020d96e3          	bnez	s11,1f058 <_svfiprintf_r+0xa90>
   1e830:	600a9663          	bnez	s5,1ee3c <_svfiprintf_r+0x874>
   1e834:	260790e3          	bnez	a5,1f294 <_svfiprintf_r+0xccc>
   1e838:	001cf793          	andi	a5,s9,1
   1e83c:	00f13423          	sd	a5,8(sp)
   1e840:	0dc10d13          	addi	s10,sp,220
   1e844:	00078863          	beqz	a5,1e854 <_svfiprintf_r+0x28c>
   1e848:	03000793          	li	a5,48
   1e84c:	0cf10da3          	sb	a5,219(sp)
   1e850:	0db10d13          	addi	s10,sp,219
   1e854:	00813703          	ld	a4,8(sp)
   1e858:	000a8793          	mv	a5,s5
   1e85c:	00ead463          	bge	s5,a4,1e864 <_svfiprintf_r+0x29c>
   1e860:	00070793          	mv	a5,a4
   1e864:	05714703          	lbu	a4,87(sp)
   1e868:	00078c9b          	sext.w	s9,a5
   1e86c:	06070263          	beqz	a4,1e8d0 <_svfiprintf_r+0x308>
   1e870:	00178c9b          	addiw	s9,a5,1
   1e874:	05c0006f          	j	1e8d0 <_svfiprintf_r+0x308>
   1e878:	00000413          	li	s0,0
   1e87c:	001c0c13          	addi	s8,s8,1
   1e880:	fffc4683          	lbu	a3,-1(s8)
   1e884:	0024179b          	slliw	a5,s0,0x2
   1e888:	0087843b          	addw	s0,a5,s0
   1e88c:	fd07071b          	addiw	a4,a4,-48
   1e890:	0014141b          	slliw	s0,s0,0x1
   1e894:	fd06879b          	addiw	a5,a3,-48
   1e898:	0087043b          	addw	s0,a4,s0
   1e89c:	0006871b          	sext.w	a4,a3
   1e8a0:	fcfcfee3          	bgeu	s9,a5,1e87c <_svfiprintf_r+0x2b4>
   1e8a4:	fe07079b          	addiw	a5,a4,-32
   1e8a8:	0007869b          	sext.w	a3,a5
   1e8ac:	e6d674e3          	bgeu	a2,a3,1e714 <_svfiprintf_r+0x14c>
   1e8b0:	ea070ae3          	beqz	a4,1e764 <_svfiprintf_r+0x19c>
   1e8b4:	00100793          	li	a5,1
   1e8b8:	06e10c23          	sb	a4,120(sp)
   1e8bc:	04010ba3          	sb	zero,87(sp)
   1e8c0:	00100c93          	li	s9,1
   1e8c4:	00f13423          	sd	a5,8(sp)
   1e8c8:	07810d13          	addi	s10,sp,120
   1e8cc:	00000a93          	li	s5,0
   1e8d0:	002b7e93          	andi	t4,s6,2
   1e8d4:	000e8e9b          	sext.w	t4,t4
   1e8d8:	000e8463          	beqz	t4,1e8e0 <_svfiprintf_r+0x318>
   1e8dc:	002c8c9b          	addiw	s9,s9,2
   1e8e0:	084b7f13          	andi	t5,s6,132
   1e8e4:	07013783          	ld	a5,112(sp)
   1e8e8:	06812603          	lw	a2,104(sp)
   1e8ec:	000f1663          	bnez	t5,1e8f8 <_svfiprintf_r+0x330>
   1e8f0:	41940dbb          	subw	s11,s0,s9
   1e8f4:	77b04663          	bgtz	s11,1f060 <_svfiprintf_r+0xa98>
   1e8f8:	05714e03          	lbu	t3,87(sp)
   1e8fc:	0016059b          	addiw	a1,a2,1
   1e900:	010b8713          	addi	a4,s7,16
   1e904:	040e0063          	beqz	t3,1e944 <_svfiprintf_r+0x37c>
   1e908:	05710e13          	addi	t3,sp,87
   1e90c:	00178793          	addi	a5,a5,1
   1e910:	01cbb023          	sd	t3,0(s7)
   1e914:	00100e13          	li	t3,1
   1e918:	01cbb423          	sd	t3,8(s7)
   1e91c:	06f13823          	sd	a5,112(sp)
   1e920:	06b12423          	sw	a1,104(sp)
   1e924:	00700513          	li	a0,7
   1e928:	04b542e3          	blt	a0,a1,1f16c <_svfiprintf_r+0xba4>
   1e92c:	00260e1b          	addiw	t3,a2,2
   1e930:	020b8513          	addi	a0,s7,32
   1e934:	00058613          	mv	a2,a1
   1e938:	00070b93          	mv	s7,a4
   1e93c:	000e0593          	mv	a1,t3
   1e940:	00050713          	mv	a4,a0
   1e944:	020e8c63          	beqz	t4,1e97c <_svfiprintf_r+0x3b4>
   1e948:	05810613          	addi	a2,sp,88
   1e94c:	00278793          	addi	a5,a5,2
   1e950:	00cbb023          	sd	a2,0(s7)
   1e954:	00200613          	li	a2,2
   1e958:	00cbb423          	sd	a2,8(s7)
   1e95c:	06f13823          	sd	a5,112(sp)
   1e960:	06b12423          	sw	a1,104(sp)
   1e964:	00700613          	li	a2,7
   1e968:	04b640e3          	blt	a2,a1,1f1a8 <_svfiprintf_r+0xbe0>
   1e96c:	00058613          	mv	a2,a1
   1e970:	00070b93          	mv	s7,a4
   1e974:	0015859b          	addiw	a1,a1,1
   1e978:	01070713          	addi	a4,a4,16
   1e97c:	08000513          	li	a0,128
   1e980:	50af0463          	beq	t5,a0,1ee88 <_svfiprintf_r+0x8c0>
   1e984:	00813683          	ld	a3,8(sp)
   1e988:	40da8abb          	subw	s5,s5,a3
   1e98c:	5d504263          	bgtz	s5,1ef50 <_svfiprintf_r+0x988>
   1e990:	00813683          	ld	a3,8(sp)
   1e994:	01abb023          	sd	s10,0(s7)
   1e998:	06b12423          	sw	a1,104(sp)
   1e99c:	00f687b3          	add	a5,a3,a5
   1e9a0:	00dbb423          	sd	a3,8(s7)
   1e9a4:	06f13823          	sd	a5,112(sp)
   1e9a8:	00700613          	li	a2,7
   1e9ac:	66b64a63          	blt	a2,a1,1f020 <_svfiprintf_r+0xa58>
   1e9b0:	004b7893          	andi	a7,s6,4
   1e9b4:	00088663          	beqz	a7,1e9c0 <_svfiprintf_r+0x3f8>
   1e9b8:	41940bbb          	subw	s7,s0,s9
   1e9bc:	037040e3          	bgtz	s7,1f1dc <_svfiprintf_r+0xc14>
   1e9c0:	00040713          	mv	a4,s0
   1e9c4:	01945463          	bge	s0,s9,1e9cc <_svfiprintf_r+0x404>
   1e9c8:	000c8713          	mv	a4,s9
   1e9cc:	00013683          	ld	a3,0(sp)
   1e9d0:	00d7073b          	addw	a4,a4,a3
   1e9d4:	00e13023          	sd	a4,0(sp)
   1e9d8:	66079463          	bnez	a5,1f040 <_svfiprintf_r+0xa78>
   1e9dc:	06012423          	sw	zero,104(sp)
   1e9e0:	00048b93          	mv	s7,s1
   1e9e4:	c81ff06f          	j	1e664 <_svfiprintf_r+0x9c>
   1e9e8:	01013703          	ld	a4,16(sp)
   1e9ec:	04010ba3          	sb	zero,87(sp)
   1e9f0:	00100c93          	li	s9,1
   1e9f4:	00072783          	lw	a5,0(a4)
   1e9f8:	00870713          	addi	a4,a4,8
   1e9fc:	00e13823          	sd	a4,16(sp)
   1ea00:	06f10c23          	sb	a5,120(sp)
   1ea04:	00100793          	li	a5,1
   1ea08:	00f13423          	sd	a5,8(sp)
   1ea0c:	07810d13          	addi	s10,sp,120
   1ea10:	ebdff06f          	j	1e8cc <_svfiprintf_r+0x304>
   1ea14:	001b6b13          	ori	s6,s6,1
   1ea18:	000b0b1b          	sext.w	s6,s6
   1ea1c:	000c4703          	lbu	a4,0(s8)
   1ea20:	cddff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ea24:	000c4703          	lbu	a4,0(s8)
   1ea28:	004b6b13          	ori	s6,s6,4
   1ea2c:	000b0b1b          	sext.w	s6,s6
   1ea30:	ccdff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ea34:	02b00793          	li	a5,43
   1ea38:	04f10ba3          	sb	a5,87(sp)
   1ea3c:	000c4703          	lbu	a4,0(s8)
   1ea40:	cbdff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ea44:	01013783          	ld	a5,16(sp)
   1ea48:	000c4703          	lbu	a4,0(s8)
   1ea4c:	0007a403          	lw	s0,0(a5)
   1ea50:	00878793          	addi	a5,a5,8
   1ea54:	00f13823          	sd	a5,16(sp)
   1ea58:	ca0452e3          	bgez	s0,1e6fc <_svfiprintf_r+0x134>
   1ea5c:	4080043b          	negw	s0,s0
   1ea60:	fc9ff06f          	j	1ea28 <_svfiprintf_r+0x460>
   1ea64:	00098513          	mv	a0,s3
   1ea68:	d5cf80ef          	jal	ra,16fc4 <_localeconv_r>
   1ea6c:	00853783          	ld	a5,8(a0)
   1ea70:	00078513          	mv	a0,a5
   1ea74:	02f13823          	sd	a5,48(sp)
   1ea78:	885fa0ef          	jal	ra,192fc <strlen>
   1ea7c:	02a13c23          	sd	a0,56(sp)
   1ea80:	00050d93          	mv	s11,a0
   1ea84:	00098513          	mv	a0,s3
   1ea88:	d3cf80ef          	jal	ra,16fc4 <_localeconv_r>
   1ea8c:	01053783          	ld	a5,16(a0)
   1ea90:	000c4703          	lbu	a4,0(s8)
   1ea94:	02f13423          	sd	a5,40(sp)
   1ea98:	c60d82e3          	beqz	s11,1e6fc <_svfiprintf_r+0x134>
   1ea9c:	c60780e3          	beqz	a5,1e6fc <_svfiprintf_r+0x134>
   1eaa0:	0007c783          	lbu	a5,0(a5)
   1eaa4:	c4078ce3          	beqz	a5,1e6fc <_svfiprintf_r+0x134>
   1eaa8:	400b6b13          	ori	s6,s6,1024
   1eaac:	000b0b1b          	sext.w	s6,s6
   1eab0:	c4dff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1eab4:	080b6b13          	ori	s6,s6,128
   1eab8:	000b0b1b          	sext.w	s6,s6
   1eabc:	000c4703          	lbu	a4,0(s8)
   1eac0:	c3dff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1eac4:	000c4703          	lbu	a4,0(s8)
   1eac8:	001c0793          	addi	a5,s8,1
   1eacc:	2fa708e3          	beq	a4,s10,1f5bc <_svfiprintf_r+0xff4>
   1ead0:	fd07069b          	addiw	a3,a4,-48
   1ead4:	00078c13          	mv	s8,a5
   1ead8:	00000a93          	li	s5,0
   1eadc:	c2dce6e3          	bltu	s9,a3,1e708 <_svfiprintf_r+0x140>
   1eae0:	001c0c13          	addi	s8,s8,1
   1eae4:	002a979b          	slliw	a5,s5,0x2
   1eae8:	fffc4703          	lbu	a4,-1(s8)
   1eaec:	01578abb          	addw	s5,a5,s5
   1eaf0:	001a9a9b          	slliw	s5,s5,0x1
   1eaf4:	00da8abb          	addw	s5,s5,a3
   1eaf8:	fd07069b          	addiw	a3,a4,-48
   1eafc:	fedcf2e3          	bgeu	s9,a3,1eae0 <_svfiprintf_r+0x518>
   1eb00:	c09ff06f          	j	1e708 <_svfiprintf_r+0x140>
   1eb04:	01013783          	ld	a5,16(sp)
   1eb08:	010b6e93          	ori	t4,s6,16
   1eb0c:	000e8c9b          	sext.w	s9,t4
   1eb10:	00878713          	addi	a4,a5,8
   1eb14:	01013783          	ld	a5,16(sp)
   1eb18:	0007bd83          	ld	s11,0(a5)
   1eb1c:	00100793          	li	a5,1
   1eb20:	00e13823          	sd	a4,16(sp)
   1eb24:	cf5ff06f          	j	1e818 <_svfiprintf_r+0x250>
   1eb28:	01013783          	ld	a5,16(sp)
   1eb2c:	04010ba3          	sb	zero,87(sp)
   1eb30:	0007bd03          	ld	s10,0(a5)
   1eb34:	00878d93          	addi	s11,a5,8
   1eb38:	140d04e3          	beqz	s10,1f480 <_svfiprintf_r+0xeb8>
   1eb3c:	fff00793          	li	a5,-1
   1eb40:	7afa8e63          	beq	s5,a5,1f2fc <_svfiprintf_r+0xd34>
   1eb44:	000a8613          	mv	a2,s5
   1eb48:	00000593          	li	a1,0
   1eb4c:	000d0513          	mv	a0,s10
   1eb50:	fd9f80ef          	jal	ra,17b28 <memchr>
   1eb54:	220508e3          	beqz	a0,1f584 <_svfiprintf_r+0xfbc>
   1eb58:	41a507bb          	subw	a5,a0,s10
   1eb5c:	00f13423          	sd	a5,8(sp)
   1eb60:	01b13823          	sd	s11,16(sp)
   1eb64:	00000a93          	li	s5,0
   1eb68:	cedff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1eb6c:	010b6793          	ori	a5,s6,16
   1eb70:	0007889b          	sext.w	a7,a5
   1eb74:	01013783          	ld	a5,16(sp)
   1eb78:	00878793          	addi	a5,a5,8
   1eb7c:	01013703          	ld	a4,16(sp)
   1eb80:	00073d83          	ld	s11,0(a4)
   1eb84:	00f13823          	sd	a5,16(sp)
   1eb88:	bff8f893          	andi	a7,a7,-1025
   1eb8c:	00088c9b          	sext.w	s9,a7
   1eb90:	00000793          	li	a5,0
   1eb94:	c85ff06f          	j	1e818 <_svfiprintf_r+0x250>
   1eb98:	01013783          	ld	a5,16(sp)
   1eb9c:	010b6e93          	ori	t4,s6,16
   1eba0:	000e8c9b          	sext.w	s9,t4
   1eba4:	00878713          	addi	a4,a5,8
   1eba8:	01013783          	ld	a5,16(sp)
   1ebac:	0007b783          	ld	a5,0(a5)
   1ebb0:	00e13823          	sd	a4,16(sp)
   1ebb4:	00078d93          	mv	s11,a5
   1ebb8:	1807c263          	bltz	a5,1ed3c <_svfiprintf_r+0x774>
   1ebbc:	fff00793          	li	a5,-1
   1ebc0:	00fa8a63          	beq	s5,a5,1ebd4 <_svfiprintf_r+0x60c>
   1ebc4:	f7fcf893          	andi	a7,s9,-129
   1ebc8:	00088b1b          	sext.w	s6,a7
   1ebcc:	6c0d8263          	beqz	s11,1f290 <_svfiprintf_r+0xcc8>
   1ebd0:	000b0c93          	mv	s9,s6
   1ebd4:	00900793          	li	a5,9
   1ebd8:	77b7e063          	bltu	a5,s11,1f338 <_svfiprintf_r+0xd70>
   1ebdc:	030d8e1b          	addiw	t3,s11,48
   1ebe0:	00100793          	li	a5,1
   1ebe4:	0dc10da3          	sb	t3,219(sp)
   1ebe8:	000c8b13          	mv	s6,s9
   1ebec:	00f13423          	sd	a5,8(sp)
   1ebf0:	0db10d13          	addi	s10,sp,219
   1ebf4:	c61ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1ebf8:	020b6b13          	ori	s6,s6,32
   1ebfc:	000b0b1b          	sext.w	s6,s6
   1ec00:	000c4703          	lbu	a4,0(s8)
   1ec04:	af9ff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ec08:	01013783          	ld	a5,16(sp)
   1ec0c:	04013703          	ld	a4,64(sp)
   1ec10:	002b6893          	ori	a7,s6,2
   1ec14:	0007bd83          	ld	s11,0(a5)
   1ec18:	00878793          	addi	a5,a5,8
   1ec1c:	00f13823          	sd	a5,16(sp)
   1ec20:	00003797          	auipc	a5,0x3
   1ec24:	fa078793          	addi	a5,a5,-96 # 21bc0 <zeroes.4539+0x68>
   1ec28:	00f13c23          	sd	a5,24(sp)
   1ec2c:	00088c9b          	sext.w	s9,a7
   1ec30:	04e11c23          	sh	a4,88(sp)
   1ec34:	00200793          	li	a5,2
   1ec38:	be1ff06f          	j	1e818 <_svfiprintf_r+0x250>
   1ec3c:	01013703          	ld	a4,16(sp)
   1ec40:	020b7793          	andi	a5,s6,32
   1ec44:	00870713          	addi	a4,a4,8
   1ec48:	6a079063          	bnez	a5,1f2e8 <_svfiprintf_r+0xd20>
   1ec4c:	010b7793          	andi	a5,s6,16
   1ec50:	68079c63          	bnez	a5,1f2e8 <_svfiprintf_r+0xd20>
   1ec54:	01013683          	ld	a3,16(sp)
   1ec58:	040b7793          	andi	a5,s6,64
   1ec5c:	0006ae03          	lw	t3,0(a3)
   1ec60:	040788e3          	beqz	a5,1f4b0 <_svfiprintf_r+0xee8>
   1ec64:	030e1d93          	slli	s11,t3,0x30
   1ec68:	030ddd93          	srli	s11,s11,0x30
   1ec6c:	00e13823          	sd	a4,16(sp)
   1ec70:	000b0c93          	mv	s9,s6
   1ec74:	00100793          	li	a5,1
   1ec78:	ba1ff06f          	j	1e818 <_svfiprintf_r+0x250>
   1ec7c:	05714783          	lbu	a5,87(sp)
   1ec80:	000c4703          	lbu	a4,0(s8)
   1ec84:	a6079ce3          	bnez	a5,1e6fc <_svfiprintf_r+0x134>
   1ec88:	02000793          	li	a5,32
   1ec8c:	04f10ba3          	sb	a5,87(sp)
   1ec90:	a6dff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ec94:	000c4703          	lbu	a4,0(s8)
   1ec98:	06c00793          	li	a5,108
   1ec9c:	7af70263          	beq	a4,a5,1f440 <_svfiprintf_r+0xe78>
   1eca0:	010b6b13          	ori	s6,s6,16
   1eca4:	000b0b1b          	sext.w	s6,s6
   1eca8:	a55ff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ecac:	01013683          	ld	a3,16(sp)
   1ecb0:	00003797          	auipc	a5,0x3
   1ecb4:	f1078793          	addi	a5,a5,-240 # 21bc0 <zeroes.4539+0x68>
   1ecb8:	00f13c23          	sd	a5,24(sp)
   1ecbc:	020b7793          	andi	a5,s6,32
   1ecc0:	00868613          	addi	a2,a3,8
   1ecc4:	b20790e3          	bnez	a5,1e7e4 <_svfiprintf_r+0x21c>
   1ecc8:	010b7793          	andi	a5,s6,16
   1eccc:	62079263          	bnez	a5,1f2f0 <_svfiprintf_r+0xd28>
   1ecd0:	01013683          	ld	a3,16(sp)
   1ecd4:	040b7793          	andi	a5,s6,64
   1ecd8:	0006ae03          	lw	t3,0(a3)
   1ecdc:	7e078863          	beqz	a5,1f4cc <_svfiprintf_r+0xf04>
   1ece0:	030e1d93          	slli	s11,t3,0x30
   1ece4:	030ddd93          	srli	s11,s11,0x30
   1ece8:	b01ff06f          	j	1e7e8 <_svfiprintf_r+0x220>
   1ecec:	000c4703          	lbu	a4,0(s8)
   1ecf0:	06800793          	li	a5,104
   1ecf4:	72f70c63          	beq	a4,a5,1f42c <_svfiprintf_r+0xe64>
   1ecf8:	040b6b13          	ori	s6,s6,64
   1ecfc:	000b0b1b          	sext.w	s6,s6
   1ed00:	9fdff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1ed04:	01013703          	ld	a4,16(sp)
   1ed08:	020b7793          	andi	a5,s6,32
   1ed0c:	00870713          	addi	a4,a4,8
   1ed10:	5c079863          	bnez	a5,1f2e0 <_svfiprintf_r+0xd18>
   1ed14:	010b7793          	andi	a5,s6,16
   1ed18:	5c079463          	bnez	a5,1f2e0 <_svfiprintf_r+0xd18>
   1ed1c:	040b7793          	andi	a5,s6,64
   1ed20:	7c078e63          	beqz	a5,1f4fc <_svfiprintf_r+0xf34>
   1ed24:	01013783          	ld	a5,16(sp)
   1ed28:	00e13823          	sd	a4,16(sp)
   1ed2c:	000b0c93          	mv	s9,s6
   1ed30:	00079d83          	lh	s11,0(a5)
   1ed34:	000d8793          	mv	a5,s11
   1ed38:	e807d2e3          	bgez	a5,1ebbc <_svfiprintf_r+0x5f4>
   1ed3c:	02d00793          	li	a5,45
   1ed40:	04f10ba3          	sb	a5,87(sp)
   1ed44:	fff00713          	li	a4,-1
   1ed48:	41b00db3          	neg	s11,s11
   1ed4c:	00100793          	li	a5,1
   1ed50:	acea9ae3          	bne	s5,a4,1e824 <_svfiprintf_r+0x25c>
   1ed54:	00100713          	li	a4,1
   1ed58:	e6e78ee3          	beq	a5,a4,1ebd4 <_svfiprintf_r+0x60c>
   1ed5c:	00200713          	li	a4,2
   1ed60:	0ee78863          	beq	a5,a4,1ee50 <_svfiprintf_r+0x888>
   1ed64:	0dc10713          	addi	a4,sp,220
   1ed68:	0080006f          	j	1ed70 <_svfiprintf_r+0x7a8>
   1ed6c:	000d0713          	mv	a4,s10
   1ed70:	007df793          	andi	a5,s11,7
   1ed74:	03078793          	addi	a5,a5,48
   1ed78:	fef70fa3          	sb	a5,-1(a4)
   1ed7c:	003ddd93          	srli	s11,s11,0x3
   1ed80:	fff70d13          	addi	s10,a4,-1
   1ed84:	fe0d94e3          	bnez	s11,1ed6c <_svfiprintf_r+0x7a4>
   1ed88:	001cf613          	andi	a2,s9,1
   1ed8c:	0e060463          	beqz	a2,1ee74 <_svfiprintf_r+0x8ac>
   1ed90:	03000613          	li	a2,48
   1ed94:	0ec78063          	beq	a5,a2,1ee74 <_svfiprintf_r+0x8ac>
   1ed98:	ffe70713          	addi	a4,a4,-2
   1ed9c:	0dc10793          	addi	a5,sp,220
   1eda0:	40e787bb          	subw	a5,a5,a4
   1eda4:	fecd0fa3          	sb	a2,-1(s10)
   1eda8:	00f13423          	sd	a5,8(sp)
   1edac:	000c8b13          	mv	s6,s9
   1edb0:	00070d13          	mv	s10,a4
   1edb4:	aa1ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1edb8:	01013783          	ld	a5,16(sp)
   1edbc:	020b7713          	andi	a4,s6,32
   1edc0:	00878793          	addi	a5,a5,8
   1edc4:	50071a63          	bnez	a4,1f2d8 <_svfiprintf_r+0xd10>
   1edc8:	010b7713          	andi	a4,s6,16
   1edcc:	50071663          	bnez	a4,1f2d8 <_svfiprintf_r+0xd10>
   1edd0:	01013683          	ld	a3,16(sp)
   1edd4:	040b7713          	andi	a4,s6,64
   1edd8:	0006ae03          	lw	t3,0(a3)
   1eddc:	70070463          	beqz	a4,1f4e4 <_svfiprintf_r+0xf1c>
   1ede0:	030e1d93          	slli	s11,t3,0x30
   1ede4:	030ddd93          	srli	s11,s11,0x30
   1ede8:	000b0893          	mv	a7,s6
   1edec:	00f13823          	sd	a5,16(sp)
   1edf0:	d99ff06f          	j	1eb88 <_svfiprintf_r+0x5c0>
   1edf4:	01013683          	ld	a3,16(sp)
   1edf8:	020b7793          	andi	a5,s6,32
   1edfc:	0006b703          	ld	a4,0(a3)
   1ee00:	00868693          	addi	a3,a3,8
   1ee04:	00d13823          	sd	a3,16(sp)
   1ee08:	02079463          	bnez	a5,1ee30 <_svfiprintf_r+0x868>
   1ee0c:	010b7793          	andi	a5,s6,16
   1ee10:	02079063          	bnez	a5,1ee30 <_svfiprintf_r+0x868>
   1ee14:	040b7793          	andi	a5,s6,64
   1ee18:	74079c63          	bnez	a5,1f570 <_svfiprintf_r+0xfa8>
   1ee1c:	200b7893          	andi	a7,s6,512
   1ee20:	00013783          	ld	a5,0(sp)
   1ee24:	78088263          	beqz	a7,1f5a8 <_svfiprintf_r+0xfe0>
   1ee28:	00f70023          	sb	a5,0(a4)
   1ee2c:	839ff06f          	j	1e664 <_svfiprintf_r+0x9c>
   1ee30:	00013783          	ld	a5,0(sp)
   1ee34:	00f73023          	sd	a5,0(a4)
   1ee38:	82dff06f          	j	1e664 <_svfiprintf_r+0x9c>
   1ee3c:	00100713          	li	a4,1
   1ee40:	72e78e63          	beq	a5,a4,1f57c <_svfiprintf_r+0xfb4>
   1ee44:	00200713          	li	a4,2
   1ee48:	000b0c93          	mv	s9,s6
   1ee4c:	f0e79ce3          	bne	a5,a4,1ed64 <_svfiprintf_r+0x79c>
   1ee50:	01813703          	ld	a4,24(sp)
   1ee54:	0dc10d13          	addi	s10,sp,220
   1ee58:	00fdf793          	andi	a5,s11,15
   1ee5c:	00f707b3          	add	a5,a4,a5
   1ee60:	0007c783          	lbu	a5,0(a5)
   1ee64:	fffd0d13          	addi	s10,s10,-1
   1ee68:	004ddd93          	srli	s11,s11,0x4
   1ee6c:	00fd0023          	sb	a5,0(s10)
   1ee70:	fe0d94e3          	bnez	s11,1ee58 <_svfiprintf_r+0x890>
   1ee74:	0dc10793          	addi	a5,sp,220
   1ee78:	41a787bb          	subw	a5,a5,s10
   1ee7c:	00f13423          	sd	a5,8(sp)
   1ee80:	000c8b13          	mv	s6,s9
   1ee84:	9d1ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1ee88:	41940dbb          	subw	s11,s0,s9
   1ee8c:	afb05ce3          	blez	s11,1e984 <_svfiprintf_r+0x3bc>
   1ee90:	01000513          	li	a0,16
   1ee94:	71b55063          	bge	a0,s11,1f594 <_svfiprintf_r+0xfcc>
   1ee98:	00003e17          	auipc	t3,0x3
   1ee9c:	6f0e0e13          	addi	t3,t3,1776 # 22588 <zeroes.4501>
   1eea0:	02813023          	sd	s0,32(sp)
   1eea4:	01000e93          	li	t4,16
   1eea8:	00700f13          	li	t5,7
   1eeac:	000e0413          	mv	s0,t3
   1eeb0:	00c0006f          	j	1eebc <_svfiprintf_r+0x8f4>
   1eeb4:	ff0d8d9b          	addiw	s11,s11,-16
   1eeb8:	05beda63          	bge	t4,s11,1ef0c <_svfiprintf_r+0x944>
   1eebc:	0016061b          	addiw	a2,a2,1
   1eec0:	01078793          	addi	a5,a5,16
   1eec4:	008bb023          	sd	s0,0(s7)
   1eec8:	01dbb423          	sd	t4,8(s7)
   1eecc:	06f13823          	sd	a5,112(sp)
   1eed0:	06c12423          	sw	a2,104(sp)
   1eed4:	010b8b93          	addi	s7,s7,16
   1eed8:	fccf5ee3          	bge	t5,a2,1eeb4 <_svfiprintf_r+0x8ec>
   1eedc:	06010613          	addi	a2,sp,96
   1eee0:	00090593          	mv	a1,s2
   1eee4:	00098513          	mv	a0,s3
   1eee8:	cf8ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1eeec:	880518e3          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1eef0:	01000e93          	li	t4,16
   1eef4:	ff0d8d9b          	addiw	s11,s11,-16
   1eef8:	07013783          	ld	a5,112(sp)
   1eefc:	06812603          	lw	a2,104(sp)
   1ef00:	00048b93          	mv	s7,s1
   1ef04:	00700f13          	li	t5,7
   1ef08:	fbbecae3          	blt	t4,s11,1eebc <_svfiprintf_r+0x8f4>
   1ef0c:	00040e13          	mv	t3,s0
   1ef10:	02013403          	ld	s0,32(sp)
   1ef14:	0016061b          	addiw	a2,a2,1
   1ef18:	010b8513          	addi	a0,s7,16
   1ef1c:	01b787b3          	add	a5,a5,s11
   1ef20:	01cbb023          	sd	t3,0(s7)
   1ef24:	01bbb423          	sd	s11,8(s7)
   1ef28:	06f13823          	sd	a5,112(sp)
   1ef2c:	06c12423          	sw	a2,104(sp)
   1ef30:	00700713          	li	a4,7
   1ef34:	52c74063          	blt	a4,a2,1f454 <_svfiprintf_r+0xe8c>
   1ef38:	00813683          	ld	a3,8(sp)
   1ef3c:	0016059b          	addiw	a1,a2,1
   1ef40:	01050713          	addi	a4,a0,16
   1ef44:	40da8abb          	subw	s5,s5,a3
   1ef48:	00050b93          	mv	s7,a0
   1ef4c:	a55052e3          	blez	s5,1e990 <_svfiprintf_r+0x3c8>
   1ef50:	01000513          	li	a0,16
   1ef54:	5d555463          	bge	a0,s5,1f51c <_svfiprintf_r+0xf54>
   1ef58:	00003e17          	auipc	t3,0x3
   1ef5c:	630e0e13          	addi	t3,t3,1584 # 22588 <zeroes.4501>
   1ef60:	02813023          	sd	s0,32(sp)
   1ef64:	01000813          	li	a6,16
   1ef68:	00700d93          	li	s11,7
   1ef6c:	000e0413          	mv	s0,t3
   1ef70:	00c0006f          	j	1ef7c <_svfiprintf_r+0x9b4>
   1ef74:	ff0a8a9b          	addiw	s5,s5,-16
   1ef78:	05585863          	bge	a6,s5,1efc8 <_svfiprintf_r+0xa00>
   1ef7c:	0016061b          	addiw	a2,a2,1
   1ef80:	01078793          	addi	a5,a5,16
   1ef84:	008bb023          	sd	s0,0(s7)
   1ef88:	010bb423          	sd	a6,8(s7)
   1ef8c:	06f13823          	sd	a5,112(sp)
   1ef90:	06c12423          	sw	a2,104(sp)
   1ef94:	010b8b93          	addi	s7,s7,16
   1ef98:	fccddee3          	bge	s11,a2,1ef74 <_svfiprintf_r+0x9ac>
   1ef9c:	06010613          	addi	a2,sp,96
   1efa0:	00090593          	mv	a1,s2
   1efa4:	00098513          	mv	a0,s3
   1efa8:	c38ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1efac:	fc051863          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1efb0:	01000813          	li	a6,16
   1efb4:	ff0a8a9b          	addiw	s5,s5,-16
   1efb8:	07013783          	ld	a5,112(sp)
   1efbc:	06812603          	lw	a2,104(sp)
   1efc0:	00048b93          	mv	s7,s1
   1efc4:	fb584ce3          	blt	a6,s5,1ef7c <_svfiprintf_r+0x9b4>
   1efc8:	00040e13          	mv	t3,s0
   1efcc:	02013403          	ld	s0,32(sp)
   1efd0:	0016059b          	addiw	a1,a2,1
   1efd4:	010b8613          	addi	a2,s7,16
   1efd8:	015787b3          	add	a5,a5,s5
   1efdc:	01cbb023          	sd	t3,0(s7)
   1efe0:	015bb423          	sd	s5,8(s7)
   1efe4:	06f13823          	sd	a5,112(sp)
   1efe8:	06b12423          	sw	a1,104(sp)
   1efec:	00700713          	li	a4,7
   1eff0:	2ab74a63          	blt	a4,a1,1f2a4 <_svfiprintf_r+0xcdc>
   1eff4:	00813683          	ld	a3,8(sp)
   1eff8:	00060b93          	mv	s7,a2
   1effc:	0015859b          	addiw	a1,a1,1
   1f000:	00f687b3          	add	a5,a3,a5
   1f004:	01060713          	addi	a4,a2,16
   1f008:	01abb023          	sd	s10,0(s7)
   1f00c:	00dbb423          	sd	a3,8(s7)
   1f010:	06f13823          	sd	a5,112(sp)
   1f014:	06b12423          	sw	a1,104(sp)
   1f018:	00700613          	li	a2,7
   1f01c:	98b65ae3          	bge	a2,a1,1e9b0 <_svfiprintf_r+0x3e8>
   1f020:	06010613          	addi	a2,sp,96
   1f024:	00090593          	mv	a1,s2
   1f028:	00098513          	mv	a0,s3
   1f02c:	bb4ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f030:	f4051663          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f034:	07013783          	ld	a5,112(sp)
   1f038:	00048713          	mv	a4,s1
   1f03c:	975ff06f          	j	1e9b0 <_svfiprintf_r+0x3e8>
   1f040:	06010613          	addi	a2,sp,96
   1f044:	00090593          	mv	a1,s2
   1f048:	00098513          	mv	a0,s3
   1f04c:	b94ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f050:	980506e3          	beqz	a0,1e9dc <_svfiprintf_r+0x414>
   1f054:	f28ff06f          	j	1e77c <_svfiprintf_r+0x1b4>
   1f058:	000b0c93          	mv	s9,s6
   1f05c:	cf9ff06f          	j	1ed54 <_svfiprintf_r+0x78c>
   1f060:	01000713          	li	a4,16
   1f064:	00003e17          	auipc	t3,0x3
   1f068:	514e0e13          	addi	t3,t3,1300 # 22578 <blanks.4500>
   1f06c:	0bb75463          	bge	a4,s11,1f114 <_svfiprintf_r+0xb4c>
   1f070:	000b8713          	mv	a4,s7
   1f074:	01000f93          	li	t6,16
   1f078:	00040b93          	mv	s7,s0
   1f07c:	00700293          	li	t0,7
   1f080:	000d8413          	mv	s0,s11
   1f084:	03d13023          	sd	t4,32(sp)
   1f088:	000c0d93          	mv	s11,s8
   1f08c:	05e13423          	sd	t5,72(sp)
   1f090:	000a8c13          	mv	s8,s5
   1f094:	000e0a93          	mv	s5,t3
   1f098:	00c0006f          	j	1f0a4 <_svfiprintf_r+0xadc>
   1f09c:	ff04041b          	addiw	s0,s0,-16
   1f0a0:	048fda63          	bge	t6,s0,1f0f4 <_svfiprintf_r+0xb2c>
   1f0a4:	0016061b          	addiw	a2,a2,1
   1f0a8:	01078793          	addi	a5,a5,16
   1f0ac:	01573023          	sd	s5,0(a4)
   1f0b0:	01f73423          	sd	t6,8(a4)
   1f0b4:	06f13823          	sd	a5,112(sp)
   1f0b8:	06c12423          	sw	a2,104(sp)
   1f0bc:	01070713          	addi	a4,a4,16
   1f0c0:	fcc2dee3          	bge	t0,a2,1f09c <_svfiprintf_r+0xad4>
   1f0c4:	06010613          	addi	a2,sp,96
   1f0c8:	00090593          	mv	a1,s2
   1f0cc:	00098513          	mv	a0,s3
   1f0d0:	b10ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f0d4:	ea051463          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f0d8:	01000f93          	li	t6,16
   1f0dc:	ff04041b          	addiw	s0,s0,-16
   1f0e0:	07013783          	ld	a5,112(sp)
   1f0e4:	06812603          	lw	a2,104(sp)
   1f0e8:	00048713          	mv	a4,s1
   1f0ec:	00700293          	li	t0,7
   1f0f0:	fa8fcae3          	blt	t6,s0,1f0a4 <_svfiprintf_r+0xadc>
   1f0f4:	02013e83          	ld	t4,32(sp)
   1f0f8:	04813f03          	ld	t5,72(sp)
   1f0fc:	000a8e13          	mv	t3,s5
   1f100:	000c0a93          	mv	s5,s8
   1f104:	000d8c13          	mv	s8,s11
   1f108:	00040d93          	mv	s11,s0
   1f10c:	000b8413          	mv	s0,s7
   1f110:	00070b93          	mv	s7,a4
   1f114:	0016061b          	addiw	a2,a2,1
   1f118:	01b787b3          	add	a5,a5,s11
   1f11c:	01cbb023          	sd	t3,0(s7)
   1f120:	01bbb423          	sd	s11,8(s7)
   1f124:	06f13823          	sd	a5,112(sp)
   1f128:	06c12423          	sw	a2,104(sp)
   1f12c:	00700713          	li	a4,7
   1f130:	010b8b93          	addi	s7,s7,16
   1f134:	fcc75263          	bge	a4,a2,1e8f8 <_svfiprintf_r+0x330>
   1f138:	06010613          	addi	a2,sp,96
   1f13c:	00090593          	mv	a1,s2
   1f140:	00098513          	mv	a0,s3
   1f144:	05e13423          	sd	t5,72(sp)
   1f148:	03d13023          	sd	t4,32(sp)
   1f14c:	a94ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f150:	e2051663          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f154:	07013783          	ld	a5,112(sp)
   1f158:	06812603          	lw	a2,104(sp)
   1f15c:	00048b93          	mv	s7,s1
   1f160:	04813f03          	ld	t5,72(sp)
   1f164:	02013e83          	ld	t4,32(sp)
   1f168:	f90ff06f          	j	1e8f8 <_svfiprintf_r+0x330>
   1f16c:	06010613          	addi	a2,sp,96
   1f170:	00090593          	mv	a1,s2
   1f174:	00098513          	mv	a0,s3
   1f178:	05e13423          	sd	t5,72(sp)
   1f17c:	03d13023          	sd	t4,32(sp)
   1f180:	a60ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f184:	de051c63          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f188:	06812603          	lw	a2,104(sp)
   1f18c:	07013783          	ld	a5,112(sp)
   1f190:	0f010713          	addi	a4,sp,240
   1f194:	0016059b          	addiw	a1,a2,1
   1f198:	00048b93          	mv	s7,s1
   1f19c:	04813f03          	ld	t5,72(sp)
   1f1a0:	02013e83          	ld	t4,32(sp)
   1f1a4:	fa0ff06f          	j	1e944 <_svfiprintf_r+0x37c>
   1f1a8:	06010613          	addi	a2,sp,96
   1f1ac:	00090593          	mv	a1,s2
   1f1b0:	00098513          	mv	a0,s3
   1f1b4:	03e13023          	sd	t5,32(sp)
   1f1b8:	a28ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f1bc:	dc051063          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f1c0:	06812603          	lw	a2,104(sp)
   1f1c4:	07013783          	ld	a5,112(sp)
   1f1c8:	0f010713          	addi	a4,sp,240
   1f1cc:	0016059b          	addiw	a1,a2,1
   1f1d0:	00048b93          	mv	s7,s1
   1f1d4:	02013f03          	ld	t5,32(sp)
   1f1d8:	fa4ff06f          	j	1e97c <_svfiprintf_r+0x3b4>
   1f1dc:	00003e17          	auipc	t3,0x3
   1f1e0:	39ce0e13          	addi	t3,t3,924 # 22578 <blanks.4500>
   1f1e4:	01000593          	li	a1,16
   1f1e8:	06812603          	lw	a2,104(sp)
   1f1ec:	01000d13          	li	s10,16
   1f1f0:	00700d93          	li	s11,7
   1f1f4:	000e0a93          	mv	s5,t3
   1f1f8:	0175c863          	blt	a1,s7,1f208 <_svfiprintf_r+0xc40>
   1f1fc:	0580006f          	j	1f254 <_svfiprintf_r+0xc8c>
   1f200:	ff0b8b9b          	addiw	s7,s7,-16
   1f204:	057d5663          	bge	s10,s7,1f250 <_svfiprintf_r+0xc88>
   1f208:	0016061b          	addiw	a2,a2,1
   1f20c:	01078793          	addi	a5,a5,16
   1f210:	01573023          	sd	s5,0(a4)
   1f214:	01a73423          	sd	s10,8(a4)
   1f218:	06f13823          	sd	a5,112(sp)
   1f21c:	06c12423          	sw	a2,104(sp)
   1f220:	01070713          	addi	a4,a4,16
   1f224:	fccddee3          	bge	s11,a2,1f200 <_svfiprintf_r+0xc38>
   1f228:	06010613          	addi	a2,sp,96
   1f22c:	00090593          	mv	a1,s2
   1f230:	00098513          	mv	a0,s3
   1f234:	9acff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f238:	d4051263          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f23c:	ff0b8b9b          	addiw	s7,s7,-16
   1f240:	07013783          	ld	a5,112(sp)
   1f244:	06812603          	lw	a2,104(sp)
   1f248:	00048713          	mv	a4,s1
   1f24c:	fb7d4ee3          	blt	s10,s7,1f208 <_svfiprintf_r+0xc40>
   1f250:	000a8e13          	mv	t3,s5
   1f254:	0016059b          	addiw	a1,a2,1
   1f258:	017787b3          	add	a5,a5,s7
   1f25c:	01c73023          	sd	t3,0(a4)
   1f260:	01773423          	sd	s7,8(a4)
   1f264:	06f13823          	sd	a5,112(sp)
   1f268:	06b12423          	sw	a1,104(sp)
   1f26c:	00700713          	li	a4,7
   1f270:	f4b75863          	bge	a4,a1,1e9c0 <_svfiprintf_r+0x3f8>
   1f274:	06010613          	addi	a2,sp,96
   1f278:	00090593          	mv	a1,s2
   1f27c:	00098513          	mv	a0,s3
   1f280:	960ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f284:	ce051c63          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f288:	07013783          	ld	a5,112(sp)
   1f28c:	f34ff06f          	j	1e9c0 <_svfiprintf_r+0x3f8>
   1f290:	2e0a9663          	bnez	s5,1f57c <_svfiprintf_r+0xfb4>
   1f294:	00000a93          	li	s5,0
   1f298:	00013423          	sd	zero,8(sp)
   1f29c:	0dc10d13          	addi	s10,sp,220
   1f2a0:	db4ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1f2a4:	06010613          	addi	a2,sp,96
   1f2a8:	00090593          	mv	a1,s2
   1f2ac:	00098513          	mv	a0,s3
   1f2b0:	930ff0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f2b4:	cc051463          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f2b8:	06812583          	lw	a1,104(sp)
   1f2bc:	07013783          	ld	a5,112(sp)
   1f2c0:	0f010713          	addi	a4,sp,240
   1f2c4:	0015859b          	addiw	a1,a1,1
   1f2c8:	00048b93          	mv	s7,s1
   1f2cc:	ec4ff06f          	j	1e990 <_svfiprintf_r+0x3c8>
   1f2d0:	000c0c93          	mv	s9,s8
   1f2d4:	c08ff06f          	j	1e6dc <_svfiprintf_r+0x114>
   1f2d8:	000b0893          	mv	a7,s6
   1f2dc:	8a1ff06f          	j	1eb7c <_svfiprintf_r+0x5b4>
   1f2e0:	000b0c93          	mv	s9,s6
   1f2e4:	8c5ff06f          	j	1eba8 <_svfiprintf_r+0x5e0>
   1f2e8:	000b0c93          	mv	s9,s6
   1f2ec:	829ff06f          	j	1eb14 <_svfiprintf_r+0x54c>
   1f2f0:	01013783          	ld	a5,16(sp)
   1f2f4:	0007bd83          	ld	s11,0(a5)
   1f2f8:	cf0ff06f          	j	1e7e8 <_svfiprintf_r+0x220>
   1f2fc:	000d0513          	mv	a0,s10
   1f300:	ffdf90ef          	jal	ra,192fc <strlen>
   1f304:	0005079b          	sext.w	a5,a0
   1f308:	00f13423          	sd	a5,8(sp)
   1f30c:	01b13823          	sd	s11,16(sp)
   1f310:	00000a93          	li	s5,0
   1f314:	d40ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1f318:	04000593          	li	a1,64
   1f31c:	f41f70ef          	jal	ra,1725c <_malloc_r>
   1f320:	00a93023          	sd	a0,0(s2)
   1f324:	00a93c23          	sd	a0,24(s2)
   1f328:	2a050c63          	beqz	a0,1f5e0 <_svfiprintf_r+0x1018>
   1f32c:	04000793          	li	a5,64
   1f330:	02f92023          	sw	a5,32(s2)
   1f334:	af0ff06f          	j	1e624 <_svfiprintf_r+0x5c>
   1f338:	400cfd13          	andi	s10,s9,1024
   1f33c:	000d079b          	sext.w	a5,s10
   1f340:	00813423          	sd	s0,8(sp)
   1f344:	02813403          	ld	s0,40(sp)
   1f348:	0dc10d13          	addi	s10,sp,220
   1f34c:	03313023          	sd	s3,32(sp)
   1f350:	000d8993          	mv	s3,s11
   1f354:	00078d93          	mv	s11,a5
   1f358:	000c0793          	mv	a5,s8
   1f35c:	00000b13          	li	s6,0
   1f360:	00090c13          	mv	s8,s2
   1f364:	000d0913          	mv	s2,s10
   1f368:	00078d13          	mv	s10,a5
   1f36c:	00a00593          	li	a1,10
   1f370:	00098513          	mv	a0,s3
   1f374:	d48f10ef          	jal	ra,108bc <__umoddi3>
   1f378:	0305051b          	addiw	a0,a0,48
   1f37c:	fea90fa3          	sb	a0,-1(s2)
   1f380:	001b0b1b          	addiw	s6,s6,1
   1f384:	fff90913          	addi	s2,s2,-1
   1f388:	000d8663          	beqz	s11,1f394 <_svfiprintf_r+0xdcc>
   1f38c:	00044683          	lbu	a3,0(s0)
   1f390:	05668863          	beq	a3,s6,1f3e0 <_svfiprintf_r+0xe18>
   1f394:	00a00593          	li	a1,10
   1f398:	00098513          	mv	a0,s3
   1f39c:	cd8f10ef          	jal	ra,10874 <__udivdi3>
   1f3a0:	00900793          	li	a5,9
   1f3a4:	0137f663          	bgeu	a5,s3,1f3b0 <_svfiprintf_r+0xde8>
   1f3a8:	00050993          	mv	s3,a0
   1f3ac:	fc1ff06f          	j	1f36c <_svfiprintf_r+0xda4>
   1f3b0:	000d0793          	mv	a5,s10
   1f3b4:	00090d13          	mv	s10,s2
   1f3b8:	000c0913          	mv	s2,s8
   1f3bc:	00078c13          	mv	s8,a5
   1f3c0:	0dc10793          	addi	a5,sp,220
   1f3c4:	41a787bb          	subw	a5,a5,s10
   1f3c8:	02813423          	sd	s0,40(sp)
   1f3cc:	02013983          	ld	s3,32(sp)
   1f3d0:	00813403          	ld	s0,8(sp)
   1f3d4:	000c8b13          	mv	s6,s9
   1f3d8:	00f13423          	sd	a5,8(sp)
   1f3dc:	c78ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1f3e0:	0ff00793          	li	a5,255
   1f3e4:	faf688e3          	beq	a3,a5,1f394 <_svfiprintf_r+0xdcc>
   1f3e8:	00900793          	li	a5,9
   1f3ec:	fd37f2e3          	bgeu	a5,s3,1f3b0 <_svfiprintf_r+0xde8>
   1f3f0:	03813783          	ld	a5,56(sp)
   1f3f4:	03013583          	ld	a1,48(sp)
   1f3f8:	00000b13          	li	s6,0
   1f3fc:	40f90933          	sub	s2,s2,a5
   1f400:	00078613          	mv	a2,a5
   1f404:	00090513          	mv	a0,s2
   1f408:	fc5f90ef          	jal	ra,193cc <strncpy>
   1f40c:	00144683          	lbu	a3,1(s0)
   1f410:	00098513          	mv	a0,s3
   1f414:	00a00593          	li	a1,10
   1f418:	00d03733          	snez	a4,a3
   1f41c:	00e40433          	add	s0,s0,a4
   1f420:	c54f10ef          	jal	ra,10874 <__udivdi3>
   1f424:	00050993          	mv	s3,a0
   1f428:	f45ff06f          	j	1f36c <_svfiprintf_r+0xda4>
   1f42c:	200b6b13          	ori	s6,s6,512
   1f430:	001c4703          	lbu	a4,1(s8)
   1f434:	000b0b1b          	sext.w	s6,s6
   1f438:	001c0c13          	addi	s8,s8,1
   1f43c:	ac0ff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1f440:	020b6b13          	ori	s6,s6,32
   1f444:	001c4703          	lbu	a4,1(s8)
   1f448:	000b0b1b          	sext.w	s6,s6
   1f44c:	001c0c13          	addi	s8,s8,1
   1f450:	aacff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1f454:	06010613          	addi	a2,sp,96
   1f458:	00090593          	mv	a1,s2
   1f45c:	00098513          	mv	a0,s3
   1f460:	f81fe0ef          	jal	ra,1e3e0 <__ssprint_r>
   1f464:	b0051c63          	bnez	a0,1e77c <_svfiprintf_r+0x1b4>
   1f468:	06812603          	lw	a2,104(sp)
   1f46c:	07013783          	ld	a5,112(sp)
   1f470:	0f010713          	addi	a4,sp,240
   1f474:	0016059b          	addiw	a1,a2,1
   1f478:	00048b93          	mv	s7,s1
   1f47c:	d08ff06f          	j	1e984 <_svfiprintf_r+0x3bc>
   1f480:	000a871b          	sext.w	a4,s5
   1f484:	00600793          	li	a5,6
   1f488:	000a8693          	mv	a3,s5
   1f48c:	00e7f463          	bgeu	a5,a4,1f494 <_svfiprintf_r+0xecc>
   1f490:	00600693          	li	a3,6
   1f494:	0006879b          	sext.w	a5,a3
   1f498:	00f13423          	sd	a5,8(sp)
   1f49c:	00078c93          	mv	s9,a5
   1f4a0:	01b13823          	sd	s11,16(sp)
   1f4a4:	00002d17          	auipc	s10,0x2
   1f4a8:	74cd0d13          	addi	s10,s10,1868 # 21bf0 <zeroes.4539+0x98>
   1f4ac:	c20ff06f          	j	1e8cc <_svfiprintf_r+0x304>
   1f4b0:	200b7793          	andi	a5,s6,512
   1f4b4:	0a078263          	beqz	a5,1f558 <_svfiprintf_r+0xf90>
   1f4b8:	0ffe7d93          	andi	s11,t3,255
   1f4bc:	00e13823          	sd	a4,16(sp)
   1f4c0:	000b0c93          	mv	s9,s6
   1f4c4:	00100793          	li	a5,1
   1f4c8:	b50ff06f          	j	1e818 <_svfiprintf_r+0x250>
   1f4cc:	200b7793          	andi	a5,s6,512
   1f4d0:	0ffe7d93          	andi	s11,t3,255
   1f4d4:	b0079a63          	bnez	a5,1e7e8 <_svfiprintf_r+0x220>
   1f4d8:	020e1d93          	slli	s11,t3,0x20
   1f4dc:	020ddd93          	srli	s11,s11,0x20
   1f4e0:	b08ff06f          	j	1e7e8 <_svfiprintf_r+0x220>
   1f4e4:	200b7713          	andi	a4,s6,512
   1f4e8:	04070e63          	beqz	a4,1f544 <_svfiprintf_r+0xf7c>
   1f4ec:	0ffe7d93          	andi	s11,t3,255
   1f4f0:	000b0893          	mv	a7,s6
   1f4f4:	00f13823          	sd	a5,16(sp)
   1f4f8:	e90ff06f          	j	1eb88 <_svfiprintf_r+0x5c0>
   1f4fc:	200b7793          	andi	a5,s6,512
   1f500:	02078663          	beqz	a5,1f52c <_svfiprintf_r+0xf64>
   1f504:	01013783          	ld	a5,16(sp)
   1f508:	000b0c93          	mv	s9,s6
   1f50c:	00e13823          	sd	a4,16(sp)
   1f510:	00078d83          	lb	s11,0(a5)
   1f514:	000d8793          	mv	a5,s11
   1f518:	ea0ff06f          	j	1ebb8 <_svfiprintf_r+0x5f0>
   1f51c:	00070613          	mv	a2,a4
   1f520:	00003e17          	auipc	t3,0x3
   1f524:	068e0e13          	addi	t3,t3,104 # 22588 <zeroes.4501>
   1f528:	ab1ff06f          	j	1efd8 <_svfiprintf_r+0xa10>
   1f52c:	01013783          	ld	a5,16(sp)
   1f530:	000b0c93          	mv	s9,s6
   1f534:	00e13823          	sd	a4,16(sp)
   1f538:	0007ad83          	lw	s11,0(a5)
   1f53c:	000d8793          	mv	a5,s11
   1f540:	e78ff06f          	j	1ebb8 <_svfiprintf_r+0x5f0>
   1f544:	020e1d93          	slli	s11,t3,0x20
   1f548:	020ddd93          	srli	s11,s11,0x20
   1f54c:	000b0893          	mv	a7,s6
   1f550:	00f13823          	sd	a5,16(sp)
   1f554:	e34ff06f          	j	1eb88 <_svfiprintf_r+0x5c0>
   1f558:	020e1d93          	slli	s11,t3,0x20
   1f55c:	020ddd93          	srli	s11,s11,0x20
   1f560:	00e13823          	sd	a4,16(sp)
   1f564:	000b0c93          	mv	s9,s6
   1f568:	00100793          	li	a5,1
   1f56c:	aacff06f          	j	1e818 <_svfiprintf_r+0x250>
   1f570:	00013783          	ld	a5,0(sp)
   1f574:	00f71023          	sh	a5,0(a4)
   1f578:	8ecff06f          	j	1e664 <_svfiprintf_r+0x9c>
   1f57c:	000b0c93          	mv	s9,s6
   1f580:	e5cff06f          	j	1ebdc <_svfiprintf_r+0x614>
   1f584:	01513423          	sd	s5,8(sp)
   1f588:	01b13823          	sd	s11,16(sp)
   1f58c:	00000a93          	li	s5,0
   1f590:	ac4ff06f          	j	1e854 <_svfiprintf_r+0x28c>
   1f594:	00070513          	mv	a0,a4
   1f598:	00058613          	mv	a2,a1
   1f59c:	00003e17          	auipc	t3,0x3
   1f5a0:	fece0e13          	addi	t3,t3,-20 # 22588 <zeroes.4501>
   1f5a4:	979ff06f          	j	1ef1c <_svfiprintf_r+0x954>
   1f5a8:	00f72023          	sw	a5,0(a4)
   1f5ac:	8b8ff06f          	j	1e664 <_svfiprintf_r+0x9c>
   1f5b0:	fff00793          	li	a5,-1
   1f5b4:	00f13023          	sd	a5,0(sp)
   1f5b8:	9d0ff06f          	j	1e788 <_svfiprintf_r+0x1c0>
   1f5bc:	01013703          	ld	a4,16(sp)
   1f5c0:	00072a83          	lw	s5,0(a4)
   1f5c4:	00870693          	addi	a3,a4,8
   1f5c8:	000ad463          	bgez	s5,1f5d0 <_svfiprintf_r+0x1008>
   1f5cc:	fff00a93          	li	s5,-1
   1f5d0:	001c4703          	lbu	a4,1(s8)
   1f5d4:	00d13823          	sd	a3,16(sp)
   1f5d8:	00078c13          	mv	s8,a5
   1f5dc:	920ff06f          	j	1e6fc <_svfiprintf_r+0x134>
   1f5e0:	00c00793          	li	a5,12
   1f5e4:	00f9a023          	sw	a5,0(s3)
   1f5e8:	fff00793          	li	a5,-1
   1f5ec:	00f13023          	sd	a5,0(sp)
   1f5f0:	998ff06f          	j	1e788 <_svfiprintf_r+0x1c0>

000000000001f5f4 <__swbuf_r>:
   1f5f4:	fd010113          	addi	sp,sp,-48
   1f5f8:	02813023          	sd	s0,32(sp)
   1f5fc:	00913c23          	sd	s1,24(sp)
   1f600:	01213823          	sd	s2,16(sp)
   1f604:	02113423          	sd	ra,40(sp)
   1f608:	01313423          	sd	s3,8(sp)
   1f60c:	00050913          	mv	s2,a0
   1f610:	00058493          	mv	s1,a1
   1f614:	00060413          	mv	s0,a2
   1f618:	00050663          	beqz	a0,1f624 <__swbuf_r+0x30>
   1f61c:	05052783          	lw	a5,80(a0)
   1f620:	14078863          	beqz	a5,1f770 <__swbuf_r+0x17c>
   1f624:	01041703          	lh	a4,16(s0)
   1f628:	02842783          	lw	a5,40(s0)
   1f62c:	03071693          	slli	a3,a4,0x30
   1f630:	0306d693          	srli	a3,a3,0x30
   1f634:	00f42623          	sw	a5,12(s0)
   1f638:	0086f793          	andi	a5,a3,8
   1f63c:	08078263          	beqz	a5,1f6c0 <__swbuf_r+0xcc>
   1f640:	01843783          	ld	a5,24(s0)
   1f644:	06078e63          	beqz	a5,1f6c0 <__swbuf_r+0xcc>
   1f648:	0ff4f993          	andi	s3,s1,255
   1f64c:	03269613          	slli	a2,a3,0x32
   1f650:	00098493          	mv	s1,s3
   1f654:	08065e63          	bgez	a2,1f6f0 <__swbuf_r+0xfc>
   1f658:	00043703          	ld	a4,0(s0)
   1f65c:	02042683          	lw	a3,32(s0)
   1f660:	40f707bb          	subw	a5,a4,a5
   1f664:	0ad7de63          	bge	a5,a3,1f720 <__swbuf_r+0x12c>
   1f668:	00c42683          	lw	a3,12(s0)
   1f66c:	00170613          	addi	a2,a4,1
   1f670:	00c43023          	sd	a2,0(s0)
   1f674:	fff6869b          	addiw	a3,a3,-1
   1f678:	00d42623          	sw	a3,12(s0)
   1f67c:	01370023          	sb	s3,0(a4)
   1f680:	02042703          	lw	a4,32(s0)
   1f684:	0017879b          	addiw	a5,a5,1
   1f688:	0cf70863          	beq	a4,a5,1f758 <__swbuf_r+0x164>
   1f68c:	01045783          	lhu	a5,16(s0)
   1f690:	0017f793          	andi	a5,a5,1
   1f694:	00078663          	beqz	a5,1f6a0 <__swbuf_r+0xac>
   1f698:	00a00793          	li	a5,10
   1f69c:	0af48e63          	beq	s1,a5,1f758 <__swbuf_r+0x164>
   1f6a0:	02813083          	ld	ra,40(sp)
   1f6a4:	02013403          	ld	s0,32(sp)
   1f6a8:	00048513          	mv	a0,s1
   1f6ac:	01013903          	ld	s2,16(sp)
   1f6b0:	01813483          	ld	s1,24(sp)
   1f6b4:	00813983          	ld	s3,8(sp)
   1f6b8:	03010113          	addi	sp,sp,48
   1f6bc:	00008067          	ret
   1f6c0:	00040593          	mv	a1,s0
   1f6c4:	00090513          	mv	a0,s2
   1f6c8:	d81f30ef          	jal	ra,13448 <__swsetup_r>
   1f6cc:	08051e63          	bnez	a0,1f768 <__swbuf_r+0x174>
   1f6d0:	01041703          	lh	a4,16(s0)
   1f6d4:	0ff4f993          	andi	s3,s1,255
   1f6d8:	01843783          	ld	a5,24(s0)
   1f6dc:	03071693          	slli	a3,a4,0x30
   1f6e0:	0306d693          	srli	a3,a3,0x30
   1f6e4:	03269613          	slli	a2,a3,0x32
   1f6e8:	00098493          	mv	s1,s3
   1f6ec:	f60646e3          	bltz	a2,1f658 <__swbuf_r+0x64>
   1f6f0:	0ac42683          	lw	a3,172(s0)
   1f6f4:	00002637          	lui	a2,0x2
   1f6f8:	00c76733          	or	a4,a4,a2
   1f6fc:	ffffe637          	lui	a2,0xffffe
   1f700:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd97af>
   1f704:	00c6f6b3          	and	a3,a3,a2
   1f708:	00e41823          	sh	a4,16(s0)
   1f70c:	00043703          	ld	a4,0(s0)
   1f710:	0ad42623          	sw	a3,172(s0)
   1f714:	02042683          	lw	a3,32(s0)
   1f718:	40f707bb          	subw	a5,a4,a5
   1f71c:	f4d7c6e3          	blt	a5,a3,1f668 <__swbuf_r+0x74>
   1f720:	00040593          	mv	a1,s0
   1f724:	00090513          	mv	a0,s2
   1f728:	ab4f40ef          	jal	ra,139dc <_fflush_r>
   1f72c:	02051e63          	bnez	a0,1f768 <__swbuf_r+0x174>
   1f730:	00043703          	ld	a4,0(s0)
   1f734:	00c42683          	lw	a3,12(s0)
   1f738:	00100793          	li	a5,1
   1f73c:	00170613          	addi	a2,a4,1
   1f740:	fff6869b          	addiw	a3,a3,-1
   1f744:	00c43023          	sd	a2,0(s0)
   1f748:	00d42623          	sw	a3,12(s0)
   1f74c:	01370023          	sb	s3,0(a4)
   1f750:	02042703          	lw	a4,32(s0)
   1f754:	f2f71ce3          	bne	a4,a5,1f68c <__swbuf_r+0x98>
   1f758:	00040593          	mv	a1,s0
   1f75c:	00090513          	mv	a0,s2
   1f760:	a7cf40ef          	jal	ra,139dc <_fflush_r>
   1f764:	f2050ee3          	beqz	a0,1f6a0 <__swbuf_r+0xac>
   1f768:	fff00493          	li	s1,-1
   1f76c:	f35ff06f          	j	1f6a0 <__swbuf_r+0xac>
   1f770:	e14f40ef          	jal	ra,13d84 <__sinit>
   1f774:	eb1ff06f          	j	1f624 <__swbuf_r+0x30>

000000000001f778 <__swbuf>:
   1f778:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1f77c:	00058613          	mv	a2,a1
   1f780:	00050593          	mv	a1,a0
   1f784:	0007b503          	ld	a0,0(a5)
   1f788:	e6dff06f          	j	1f5f4 <__swbuf_r>

000000000001f78c <_wcrtomb_r>:
   1f78c:	fd010113          	addi	sp,sp,-48
   1f790:	02813023          	sd	s0,32(sp)
   1f794:	00913c23          	sd	s1,24(sp)
   1f798:	d6018793          	addi	a5,gp,-672 # 23db0 <__global_locale>
   1f79c:	02113423          	sd	ra,40(sp)
   1f7a0:	00050413          	mv	s0,a0
   1f7a4:	00068493          	mv	s1,a3
   1f7a8:	0e07b783          	ld	a5,224(a5)
   1f7ac:	02058263          	beqz	a1,1f7d0 <_wcrtomb_r+0x44>
   1f7b0:	000780e7          	jalr	a5
   1f7b4:	fff00793          	li	a5,-1
   1f7b8:	02f50663          	beq	a0,a5,1f7e4 <_wcrtomb_r+0x58>
   1f7bc:	02813083          	ld	ra,40(sp)
   1f7c0:	02013403          	ld	s0,32(sp)
   1f7c4:	01813483          	ld	s1,24(sp)
   1f7c8:	03010113          	addi	sp,sp,48
   1f7cc:	00008067          	ret
   1f7d0:	00000613          	li	a2,0
   1f7d4:	00010593          	mv	a1,sp
   1f7d8:	000780e7          	jalr	a5
   1f7dc:	fff00793          	li	a5,-1
   1f7e0:	fcf51ee3          	bne	a0,a5,1f7bc <_wcrtomb_r+0x30>
   1f7e4:	0004a023          	sw	zero,0(s1)
   1f7e8:	08a00793          	li	a5,138
   1f7ec:	00f42023          	sw	a5,0(s0)
   1f7f0:	02813083          	ld	ra,40(sp)
   1f7f4:	02013403          	ld	s0,32(sp)
   1f7f8:	01813483          	ld	s1,24(sp)
   1f7fc:	03010113          	addi	sp,sp,48
   1f800:	00008067          	ret

000000000001f804 <wcrtomb>:
   1f804:	fd010113          	addi	sp,sp,-48
   1f808:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1f80c:	02813023          	sd	s0,32(sp)
   1f810:	00913c23          	sd	s1,24(sp)
   1f814:	0007b403          	ld	s0,0(a5)
   1f818:	02113423          	sd	ra,40(sp)
   1f81c:	d6018793          	addi	a5,gp,-672 # 23db0 <__global_locale>
   1f820:	00060493          	mv	s1,a2
   1f824:	0e07b783          	ld	a5,224(a5)
   1f828:	00060693          	mv	a3,a2
   1f82c:	02050863          	beqz	a0,1f85c <wcrtomb+0x58>
   1f830:	00058613          	mv	a2,a1
   1f834:	00050593          	mv	a1,a0
   1f838:	00040513          	mv	a0,s0
   1f83c:	000780e7          	jalr	a5
   1f840:	fff00793          	li	a5,-1
   1f844:	02f50863          	beq	a0,a5,1f874 <wcrtomb+0x70>
   1f848:	02813083          	ld	ra,40(sp)
   1f84c:	02013403          	ld	s0,32(sp)
   1f850:	01813483          	ld	s1,24(sp)
   1f854:	03010113          	addi	sp,sp,48
   1f858:	00008067          	ret
   1f85c:	00000613          	li	a2,0
   1f860:	00010593          	mv	a1,sp
   1f864:	00040513          	mv	a0,s0
   1f868:	000780e7          	jalr	a5
   1f86c:	fff00793          	li	a5,-1
   1f870:	fcf51ce3          	bne	a0,a5,1f848 <wcrtomb+0x44>
   1f874:	0004a023          	sw	zero,0(s1)
   1f878:	08a00793          	li	a5,138
   1f87c:	00f42023          	sw	a5,0(s0)
   1f880:	02813083          	ld	ra,40(sp)
   1f884:	02013403          	ld	s0,32(sp)
   1f888:	01813483          	ld	s1,24(sp)
   1f88c:	03010113          	addi	sp,sp,48
   1f890:	00008067          	ret

000000000001f894 <_close>:
   1f894:	00000593          	li	a1,0
   1f898:	00000613          	li	a2,0
   1f89c:	00000693          	li	a3,0
   1f8a0:	00000713          	li	a4,0
   1f8a4:	00000793          	li	a5,0
   1f8a8:	03900893          	li	a7,57
   1f8ac:	00000073          	ecall
   1f8b0:	00054663          	bltz	a0,1f8bc <_close+0x28>
   1f8b4:	0005051b          	sext.w	a0,a0
   1f8b8:	00008067          	ret
   1f8bc:	ff010113          	addi	sp,sp,-16
   1f8c0:	00813023          	sd	s0,0(sp)
   1f8c4:	00113423          	sd	ra,8(sp)
   1f8c8:	00050413          	mv	s0,a0
   1f8cc:	314000ef          	jal	ra,1fbe0 <__errno>
   1f8d0:	408007bb          	negw	a5,s0
   1f8d4:	00813083          	ld	ra,8(sp)
   1f8d8:	00013403          	ld	s0,0(sp)
   1f8dc:	00f52023          	sw	a5,0(a0)
   1f8e0:	fff00513          	li	a0,-1
   1f8e4:	01010113          	addi	sp,sp,16
   1f8e8:	00008067          	ret

000000000001f8ec <_exit>:
   1f8ec:	00000593          	li	a1,0
   1f8f0:	00000613          	li	a2,0
   1f8f4:	00000693          	li	a3,0
   1f8f8:	00000713          	li	a4,0
   1f8fc:	00000793          	li	a5,0
   1f900:	05d00893          	li	a7,93
   1f904:	00000073          	ecall
   1f908:	00054463          	bltz	a0,1f910 <_exit+0x24>
   1f90c:	0000006f          	j	1f90c <_exit+0x20>
   1f910:	ff010113          	addi	sp,sp,-16
   1f914:	00813023          	sd	s0,0(sp)
   1f918:	00050413          	mv	s0,a0
   1f91c:	00113423          	sd	ra,8(sp)
   1f920:	4080043b          	negw	s0,s0
   1f924:	2bc000ef          	jal	ra,1fbe0 <__errno>
   1f928:	00852023          	sw	s0,0(a0)
   1f92c:	0000006f          	j	1f92c <_exit+0x40>

000000000001f930 <_fstat>:
   1f930:	f6010113          	addi	sp,sp,-160
   1f934:	08913423          	sd	s1,136(sp)
   1f938:	08113c23          	sd	ra,152(sp)
   1f93c:	00058493          	mv	s1,a1
   1f940:	08813823          	sd	s0,144(sp)
   1f944:	00000613          	li	a2,0
   1f948:	00010593          	mv	a1,sp
   1f94c:	00000693          	li	a3,0
   1f950:	00000713          	li	a4,0
   1f954:	00000793          	li	a5,0
   1f958:	05000893          	li	a7,80
   1f95c:	00000073          	ecall
   1f960:	00050413          	mv	s0,a0
   1f964:	02054663          	bltz	a0,1f990 <_fstat+0x60>
   1f968:	0005041b          	sext.w	s0,a0
   1f96c:	00048513          	mv	a0,s1
   1f970:	00010593          	mv	a1,sp
   1f974:	200000ef          	jal	ra,1fb74 <_conv_stat>
   1f978:	00040513          	mv	a0,s0
   1f97c:	09813083          	ld	ra,152(sp)
   1f980:	09013403          	ld	s0,144(sp)
   1f984:	08813483          	ld	s1,136(sp)
   1f988:	0a010113          	addi	sp,sp,160
   1f98c:	00008067          	ret
   1f990:	4080043b          	negw	s0,s0
   1f994:	24c000ef          	jal	ra,1fbe0 <__errno>
   1f998:	00852023          	sw	s0,0(a0)
   1f99c:	fff00413          	li	s0,-1
   1f9a0:	fcdff06f          	j	1f96c <_fstat+0x3c>

000000000001f9a4 <_isatty>:
   1f9a4:	f8010113          	addi	sp,sp,-128
   1f9a8:	00810593          	addi	a1,sp,8
   1f9ac:	06113c23          	sd	ra,120(sp)
   1f9b0:	f81ff0ef          	jal	ra,1f930 <_fstat>
   1f9b4:	fff00793          	li	a5,-1
   1f9b8:	00f50e63          	beq	a0,a5,1f9d4 <_isatty+0x30>
   1f9bc:	00c12503          	lw	a0,12(sp)
   1f9c0:	07813083          	ld	ra,120(sp)
   1f9c4:	40d5551b          	sraiw	a0,a0,0xd
   1f9c8:	00157513          	andi	a0,a0,1
   1f9cc:	08010113          	addi	sp,sp,128
   1f9d0:	00008067          	ret
   1f9d4:	07813083          	ld	ra,120(sp)
   1f9d8:	00000513          	li	a0,0
   1f9dc:	08010113          	addi	sp,sp,128
   1f9e0:	00008067          	ret

000000000001f9e4 <_lseek>:
   1f9e4:	ff010113          	addi	sp,sp,-16
   1f9e8:	00113423          	sd	ra,8(sp)
   1f9ec:	00813023          	sd	s0,0(sp)
   1f9f0:	00000693          	li	a3,0
   1f9f4:	00000713          	li	a4,0
   1f9f8:	00000793          	li	a5,0
   1f9fc:	03e00893          	li	a7,62
   1fa00:	00000073          	ecall
   1fa04:	00050413          	mv	s0,a0
   1fa08:	00054c63          	bltz	a0,1fa20 <_lseek+0x3c>
   1fa0c:	00040513          	mv	a0,s0
   1fa10:	00813083          	ld	ra,8(sp)
   1fa14:	00013403          	ld	s0,0(sp)
   1fa18:	01010113          	addi	sp,sp,16
   1fa1c:	00008067          	ret
   1fa20:	4080043b          	negw	s0,s0
   1fa24:	1bc000ef          	jal	ra,1fbe0 <__errno>
   1fa28:	00852023          	sw	s0,0(a0)
   1fa2c:	fff00413          	li	s0,-1
   1fa30:	fddff06f          	j	1fa0c <_lseek+0x28>

000000000001fa34 <_read>:
   1fa34:	ff010113          	addi	sp,sp,-16
   1fa38:	00113423          	sd	ra,8(sp)
   1fa3c:	00813023          	sd	s0,0(sp)
   1fa40:	00000693          	li	a3,0
   1fa44:	00000713          	li	a4,0
   1fa48:	00000793          	li	a5,0
   1fa4c:	03f00893          	li	a7,63
   1fa50:	00000073          	ecall
   1fa54:	00050413          	mv	s0,a0
   1fa58:	00054c63          	bltz	a0,1fa70 <_read+0x3c>
   1fa5c:	00040513          	mv	a0,s0
   1fa60:	00813083          	ld	ra,8(sp)
   1fa64:	00013403          	ld	s0,0(sp)
   1fa68:	01010113          	addi	sp,sp,16
   1fa6c:	00008067          	ret
   1fa70:	4080043b          	negw	s0,s0
   1fa74:	16c000ef          	jal	ra,1fbe0 <__errno>
   1fa78:	00852023          	sw	s0,0(a0)
   1fa7c:	fff00413          	li	s0,-1
   1fa80:	fddff06f          	j	1fa5c <_read+0x28>

000000000001fa84 <_sbrk>:
   1fa84:	79018313          	addi	t1,gp,1936 # 247e0 <heap_end.1898>
   1fa88:	00033783          	ld	a5,0(t1)
   1fa8c:	ff010113          	addi	sp,sp,-16
   1fa90:	00113423          	sd	ra,8(sp)
   1fa94:	00050813          	mv	a6,a0
   1fa98:	02079863          	bnez	a5,1fac8 <_sbrk+0x44>
   1fa9c:	00000513          	li	a0,0
   1faa0:	00000593          	li	a1,0
   1faa4:	00000613          	li	a2,0
   1faa8:	00000693          	li	a3,0
   1faac:	00000713          	li	a4,0
   1fab0:	0d600893          	li	a7,214
   1fab4:	00000073          	ecall
   1fab8:	fff00793          	li	a5,-1
   1fabc:	04f50663          	beq	a0,a5,1fb08 <_sbrk+0x84>
   1fac0:	00050793          	mv	a5,a0
   1fac4:	78a1b823          	sd	a0,1936(gp) # 247e0 <heap_end.1898>
   1fac8:	00f80533          	add	a0,a6,a5
   1facc:	00000593          	li	a1,0
   1fad0:	00000613          	li	a2,0
   1fad4:	00000693          	li	a3,0
   1fad8:	00000713          	li	a4,0
   1fadc:	00000793          	li	a5,0
   1fae0:	0d600893          	li	a7,214
   1fae4:	00000073          	ecall
   1fae8:	00033783          	ld	a5,0(t1)
   1faec:	00f80833          	add	a6,a6,a5
   1faf0:	01051c63          	bne	a0,a6,1fb08 <_sbrk+0x84>
   1faf4:	00813083          	ld	ra,8(sp)
   1faf8:	78a1b823          	sd	a0,1936(gp) # 247e0 <heap_end.1898>
   1fafc:	00078513          	mv	a0,a5
   1fb00:	01010113          	addi	sp,sp,16
   1fb04:	00008067          	ret
   1fb08:	0d8000ef          	jal	ra,1fbe0 <__errno>
   1fb0c:	00813083          	ld	ra,8(sp)
   1fb10:	00c00793          	li	a5,12
   1fb14:	00f52023          	sw	a5,0(a0)
   1fb18:	fff00513          	li	a0,-1
   1fb1c:	01010113          	addi	sp,sp,16
   1fb20:	00008067          	ret

000000000001fb24 <_write>:
   1fb24:	ff010113          	addi	sp,sp,-16
   1fb28:	00113423          	sd	ra,8(sp)
   1fb2c:	00813023          	sd	s0,0(sp)
   1fb30:	00000693          	li	a3,0
   1fb34:	00000713          	li	a4,0
   1fb38:	00000793          	li	a5,0
   1fb3c:	04000893          	li	a7,64
   1fb40:	00000073          	ecall
   1fb44:	00050413          	mv	s0,a0
   1fb48:	00054c63          	bltz	a0,1fb60 <_write+0x3c>
   1fb4c:	00040513          	mv	a0,s0
   1fb50:	00813083          	ld	ra,8(sp)
   1fb54:	00013403          	ld	s0,0(sp)
   1fb58:	01010113          	addi	sp,sp,16
   1fb5c:	00008067          	ret
   1fb60:	4080043b          	negw	s0,s0
   1fb64:	07c000ef          	jal	ra,1fbe0 <__errno>
   1fb68:	00852023          	sw	s0,0(a0)
   1fb6c:	fff00413          	li	s0,-1
   1fb70:	fddff06f          	j	1fb4c <_write+0x28>

000000000001fb74 <_conv_stat>:
   1fb74:	0005b383          	ld	t2,0(a1)
   1fb78:	0085b283          	ld	t0,8(a1)
   1fb7c:	0105af83          	lw	t6,16(a1)
   1fb80:	0145af03          	lw	t5,20(a1)
   1fb84:	0185ae83          	lw	t4,24(a1)
   1fb88:	01c5ae03          	lw	t3,28(a1)
   1fb8c:	0205b303          	ld	t1,32(a1)
   1fb90:	0305b883          	ld	a7,48(a1)
   1fb94:	0405b803          	ld	a6,64(a1)
   1fb98:	0385a603          	lw	a2,56(a1)
   1fb9c:	0485b683          	ld	a3,72(a1)
   1fba0:	0585b703          	ld	a4,88(a1)
   1fba4:	0685b783          	ld	a5,104(a1)
   1fba8:	00751023          	sh	t2,0(a0)
   1fbac:	00551123          	sh	t0,2(a0)
   1fbb0:	01f52223          	sw	t6,4(a0)
   1fbb4:	01e51423          	sh	t5,8(a0)
   1fbb8:	01d51523          	sh	t4,10(a0)
   1fbbc:	01c51623          	sh	t3,12(a0)
   1fbc0:	00651723          	sh	t1,14(a0)
   1fbc4:	01153823          	sd	a7,16(a0)
   1fbc8:	05053823          	sd	a6,80(a0)
   1fbcc:	04c53423          	sd	a2,72(a0)
   1fbd0:	00d53c23          	sd	a3,24(a0)
   1fbd4:	02e53423          	sd	a4,40(a0)
   1fbd8:	02f53c23          	sd	a5,56(a0)
   1fbdc:	00008067          	ret

000000000001fbe0 <__errno>:
   1fbe0:	75818793          	addi	a5,gp,1880 # 247a8 <_impure_ptr>
   1fbe4:	0007b503          	ld	a0,0(a5)
   1fbe8:	00008067          	ret

000000000001fbec <__divdf3>:
   1fbec:	fa010113          	addi	sp,sp,-96
   1fbf0:	05213023          	sd	s2,64(sp)
   1fbf4:	03455913          	srli	s2,a0,0x34
   1fbf8:	04913423          	sd	s1,72(sp)
   1fbfc:	03313c23          	sd	s3,56(sp)
   1fc00:	03513423          	sd	s5,40(sp)
   1fc04:	00c51493          	slli	s1,a0,0xc
   1fc08:	04113c23          	sd	ra,88(sp)
   1fc0c:	04813823          	sd	s0,80(sp)
   1fc10:	03413823          	sd	s4,48(sp)
   1fc14:	03613023          	sd	s6,32(sp)
   1fc18:	01713c23          	sd	s7,24(sp)
   1fc1c:	01813823          	sd	s8,16(sp)
   1fc20:	01913423          	sd	s9,8(sp)
   1fc24:	7ff97913          	andi	s2,s2,2047
   1fc28:	00058a93          	mv	s5,a1
   1fc2c:	00c4d493          	srli	s1,s1,0xc
   1fc30:	03f55993          	srli	s3,a0,0x3f
   1fc34:	08090a63          	beqz	s2,1fcc8 <__divdf3+0xdc>
   1fc38:	7ff00793          	li	a5,2047
   1fc3c:	0af90863          	beq	s2,a5,1fcec <__divdf3+0x100>
   1fc40:	00100793          	li	a5,1
   1fc44:	00349493          	slli	s1,s1,0x3
   1fc48:	03779793          	slli	a5,a5,0x37
   1fc4c:	00f4e4b3          	or	s1,s1,a5
   1fc50:	c0190913          	addi	s2,s2,-1023
   1fc54:	00000b13          	li	s6,0
   1fc58:	034ad513          	srli	a0,s5,0x34
   1fc5c:	00ca9413          	slli	s0,s5,0xc
   1fc60:	7ff57513          	andi	a0,a0,2047
   1fc64:	00c45413          	srli	s0,s0,0xc
   1fc68:	03fada93          	srli	s5,s5,0x3f
   1fc6c:	0a050063          	beqz	a0,1fd0c <__divdf3+0x120>
   1fc70:	7ff00793          	li	a5,2047
   1fc74:	0af50e63          	beq	a0,a5,1fd30 <__divdf3+0x144>
   1fc78:	00100793          	li	a5,1
   1fc7c:	00341413          	slli	s0,s0,0x3
   1fc80:	03779793          	slli	a5,a5,0x37
   1fc84:	00f46433          	or	s0,s0,a5
   1fc88:	c0150513          	addi	a0,a0,-1023
   1fc8c:	00000793          	li	a5,0
   1fc90:	002b1713          	slli	a4,s6,0x2
   1fc94:	00f76733          	or	a4,a4,a5
   1fc98:	fff70713          	addi	a4,a4,-1
   1fc9c:	00e00693          	li	a3,14
   1fca0:	0159ca33          	xor	s4,s3,s5
   1fca4:	40a90933          	sub	s2,s2,a0
   1fca8:	0ae6e463          	bltu	a3,a4,1fd50 <__divdf3+0x164>
   1fcac:	00003697          	auipc	a3,0x3
   1fcb0:	8ec68693          	addi	a3,a3,-1812 # 22598 <zeroes.4501+0x10>
   1fcb4:	00271713          	slli	a4,a4,0x2
   1fcb8:	00d70733          	add	a4,a4,a3
   1fcbc:	00072703          	lw	a4,0(a4)
   1fcc0:	00d70733          	add	a4,a4,a3
   1fcc4:	00070067          	jr	a4
   1fcc8:	02048c63          	beqz	s1,1fd00 <__divdf3+0x114>
   1fccc:	00048513          	mv	a0,s1
   1fcd0:	c5df00ef          	jal	ra,1092c <__clzdi2>
   1fcd4:	0005051b          	sext.w	a0,a0
   1fcd8:	ff85079b          	addiw	a5,a0,-8
   1fcdc:	c0d00913          	li	s2,-1011
   1fce0:	00f494b3          	sll	s1,s1,a5
   1fce4:	40a90933          	sub	s2,s2,a0
   1fce8:	f6dff06f          	j	1fc54 <__divdf3+0x68>
   1fcec:	7ff00913          	li	s2,2047
   1fcf0:	00200b13          	li	s6,2
   1fcf4:	f60482e3          	beqz	s1,1fc58 <__divdf3+0x6c>
   1fcf8:	00300b13          	li	s6,3
   1fcfc:	f5dff06f          	j	1fc58 <__divdf3+0x6c>
   1fd00:	00000913          	li	s2,0
   1fd04:	00100b13          	li	s6,1
   1fd08:	f51ff06f          	j	1fc58 <__divdf3+0x6c>
   1fd0c:	02040c63          	beqz	s0,1fd44 <__divdf3+0x158>
   1fd10:	00040513          	mv	a0,s0
   1fd14:	c19f00ef          	jal	ra,1092c <__clzdi2>
   1fd18:	0005051b          	sext.w	a0,a0
   1fd1c:	ff85079b          	addiw	a5,a0,-8
   1fd20:	00f41433          	sll	s0,s0,a5
   1fd24:	c0d00793          	li	a5,-1011
   1fd28:	40a78533          	sub	a0,a5,a0
   1fd2c:	f61ff06f          	j	1fc8c <__divdf3+0xa0>
   1fd30:	7ff00513          	li	a0,2047
   1fd34:	00200793          	li	a5,2
   1fd38:	f4040ce3          	beqz	s0,1fc90 <__divdf3+0xa4>
   1fd3c:	00300793          	li	a5,3
   1fd40:	f51ff06f          	j	1fc90 <__divdf3+0xa4>
   1fd44:	00000513          	li	a0,0
   1fd48:	00100793          	li	a5,1
   1fd4c:	f45ff06f          	j	1fc90 <__divdf3+0xa4>
   1fd50:	00841a93          	slli	s5,s0,0x8
   1fd54:	1284f863          	bgeu	s1,s0,1fe84 <__divdf3+0x298>
   1fd58:	fff90913          	addi	s2,s2,-1
   1fd5c:	00000413          	li	s0,0
   1fd60:	020adb93          	srli	s7,s5,0x20
   1fd64:	fff00b13          	li	s6,-1
   1fd68:	000b8593          	mv	a1,s7
   1fd6c:	020b5b13          	srli	s6,s6,0x20
   1fd70:	00048513          	mv	a0,s1
   1fd74:	b01f00ef          	jal	ra,10874 <__udivdi3>
   1fd78:	016afb33          	and	s6,s5,s6
   1fd7c:	00050593          	mv	a1,a0
   1fd80:	00050c93          	mv	s9,a0
   1fd84:	000b0513          	mv	a0,s6
   1fd88:	245010ef          	jal	ra,217cc <__muldi3>
   1fd8c:	00050c13          	mv	s8,a0
   1fd90:	000b8593          	mv	a1,s7
   1fd94:	00048513          	mv	a0,s1
   1fd98:	b25f00ef          	jal	ra,108bc <__umoddi3>
   1fd9c:	02051513          	slli	a0,a0,0x20
   1fda0:	02045413          	srli	s0,s0,0x20
   1fda4:	00a46533          	or	a0,s0,a0
   1fda8:	000c8993          	mv	s3,s9
   1fdac:	01857e63          	bgeu	a0,s8,1fdc8 <__divdf3+0x1dc>
   1fdb0:	01550533          	add	a0,a0,s5
   1fdb4:	fffc8993          	addi	s3,s9,-1
   1fdb8:	01556863          	bltu	a0,s5,1fdc8 <__divdf3+0x1dc>
   1fdbc:	01857663          	bgeu	a0,s8,1fdc8 <__divdf3+0x1dc>
   1fdc0:	ffec8993          	addi	s3,s9,-2
   1fdc4:	01550533          	add	a0,a0,s5
   1fdc8:	41850c33          	sub	s8,a0,s8
   1fdcc:	000b8593          	mv	a1,s7
   1fdd0:	000c0513          	mv	a0,s8
   1fdd4:	aa1f00ef          	jal	ra,10874 <__udivdi3>
   1fdd8:	00050593          	mv	a1,a0
   1fddc:	00050413          	mv	s0,a0
   1fde0:	000b0513          	mv	a0,s6
   1fde4:	1e9010ef          	jal	ra,217cc <__muldi3>
   1fde8:	00050b13          	mv	s6,a0
   1fdec:	000b8593          	mv	a1,s7
   1fdf0:	000c0513          	mv	a0,s8
   1fdf4:	ac9f00ef          	jal	ra,108bc <__umoddi3>
   1fdf8:	02051513          	slli	a0,a0,0x20
   1fdfc:	00040793          	mv	a5,s0
   1fe00:	01657e63          	bgeu	a0,s6,1fe1c <__divdf3+0x230>
   1fe04:	01550533          	add	a0,a0,s5
   1fe08:	fff40793          	addi	a5,s0,-1
   1fe0c:	01556863          	bltu	a0,s5,1fe1c <__divdf3+0x230>
   1fe10:	01657663          	bgeu	a0,s6,1fe1c <__divdf3+0x230>
   1fe14:	ffe40793          	addi	a5,s0,-2
   1fe18:	01550533          	add	a0,a0,s5
   1fe1c:	02099413          	slli	s0,s3,0x20
   1fe20:	41650533          	sub	a0,a0,s6
   1fe24:	00f46433          	or	s0,s0,a5
   1fe28:	00a03533          	snez	a0,a0
   1fe2c:	00a46433          	or	s0,s0,a0
   1fe30:	3ff90793          	addi	a5,s2,1023
   1fe34:	0ef05a63          	blez	a5,1ff28 <__divdf3+0x33c>
   1fe38:	00747713          	andi	a4,s0,7
   1fe3c:	00070a63          	beqz	a4,1fe50 <__divdf3+0x264>
   1fe40:	00f47713          	andi	a4,s0,15
   1fe44:	00400693          	li	a3,4
   1fe48:	00d70463          	beq	a4,a3,1fe50 <__divdf3+0x264>
   1fe4c:	00440413          	addi	s0,s0,4
   1fe50:	00741713          	slli	a4,s0,0x7
   1fe54:	00075c63          	bgez	a4,1fe6c <__divdf3+0x280>
   1fe58:	fff00793          	li	a5,-1
   1fe5c:	03879793          	slli	a5,a5,0x38
   1fe60:	fff78793          	addi	a5,a5,-1
   1fe64:	00f47433          	and	s0,s0,a5
   1fe68:	40090793          	addi	a5,s2,1024
   1fe6c:	7fe00713          	li	a4,2046
   1fe70:	00345413          	srli	s0,s0,0x3
   1fe74:	04f75463          	bge	a4,a5,1febc <__divdf3+0x2d0>
   1fe78:	00000413          	li	s0,0
   1fe7c:	7ff00793          	li	a5,2047
   1fe80:	03c0006f          	j	1febc <__divdf3+0x2d0>
   1fe84:	03f49413          	slli	s0,s1,0x3f
   1fe88:	0014d493          	srli	s1,s1,0x1
   1fe8c:	ed5ff06f          	j	1fd60 <__divdf3+0x174>
   1fe90:	00098a13          	mv	s4,s3
   1fe94:	00048413          	mv	s0,s1
   1fe98:	000b0793          	mv	a5,s6
   1fe9c:	00200713          	li	a4,2
   1fea0:	fce78ce3          	beq	a5,a4,1fe78 <__divdf3+0x28c>
   1fea4:	00300713          	li	a4,3
   1fea8:	0ce78e63          	beq	a5,a4,1ff84 <__divdf3+0x398>
   1feac:	00100713          	li	a4,1
   1feb0:	f8e790e3          	bne	a5,a4,1fe30 <__divdf3+0x244>
   1feb4:	00000413          	li	s0,0
   1feb8:	00000793          	li	a5,0
   1febc:	00c41413          	slli	s0,s0,0xc
   1fec0:	7ff7f793          	andi	a5,a5,2047
   1fec4:	03479793          	slli	a5,a5,0x34
   1fec8:	00c45413          	srli	s0,s0,0xc
   1fecc:	03fa1513          	slli	a0,s4,0x3f
   1fed0:	00f46433          	or	s0,s0,a5
   1fed4:	00a46533          	or	a0,s0,a0
   1fed8:	05813083          	ld	ra,88(sp)
   1fedc:	05013403          	ld	s0,80(sp)
   1fee0:	04813483          	ld	s1,72(sp)
   1fee4:	04013903          	ld	s2,64(sp)
   1fee8:	03813983          	ld	s3,56(sp)
   1feec:	03013a03          	ld	s4,48(sp)
   1fef0:	02813a83          	ld	s5,40(sp)
   1fef4:	02013b03          	ld	s6,32(sp)
   1fef8:	01813b83          	ld	s7,24(sp)
   1fefc:	01013c03          	ld	s8,16(sp)
   1ff00:	00813c83          	ld	s9,8(sp)
   1ff04:	06010113          	addi	sp,sp,96
   1ff08:	00008067          	ret
   1ff0c:	000a8a13          	mv	s4,s5
   1ff10:	f8dff06f          	j	1fe9c <__divdf3+0x2b0>
   1ff14:	00100413          	li	s0,1
   1ff18:	03341413          	slli	s0,s0,0x33
   1ff1c:	00000a13          	li	s4,0
   1ff20:	00300793          	li	a5,3
   1ff24:	f79ff06f          	j	1fe9c <__divdf3+0x2b0>
   1ff28:	00100713          	li	a4,1
   1ff2c:	40f707b3          	sub	a5,a4,a5
   1ff30:	03800713          	li	a4,56
   1ff34:	f8f740e3          	blt	a4,a5,1feb4 <__divdf3+0x2c8>
   1ff38:	0007871b          	sext.w	a4,a5
   1ff3c:	04000693          	li	a3,64
   1ff40:	00e457b3          	srl	a5,s0,a4
   1ff44:	40e6873b          	subw	a4,a3,a4
   1ff48:	00e41433          	sll	s0,s0,a4
   1ff4c:	00803433          	snez	s0,s0
   1ff50:	0087e433          	or	s0,a5,s0
   1ff54:	00747793          	andi	a5,s0,7
   1ff58:	00078a63          	beqz	a5,1ff6c <__divdf3+0x380>
   1ff5c:	00f47793          	andi	a5,s0,15
   1ff60:	00400713          	li	a4,4
   1ff64:	00e78463          	beq	a5,a4,1ff6c <__divdf3+0x380>
   1ff68:	00440413          	addi	s0,s0,4
   1ff6c:	00841793          	slli	a5,s0,0x8
   1ff70:	00345413          	srli	s0,s0,0x3
   1ff74:	f407d2e3          	bgez	a5,1feb8 <__divdf3+0x2cc>
   1ff78:	00000413          	li	s0,0
   1ff7c:	00100793          	li	a5,1
   1ff80:	f3dff06f          	j	1febc <__divdf3+0x2d0>
   1ff84:	00100413          	li	s0,1
   1ff88:	03341413          	slli	s0,s0,0x33
   1ff8c:	7ff00793          	li	a5,2047
   1ff90:	00000a13          	li	s4,0
   1ff94:	f29ff06f          	j	1febc <__divdf3+0x2d0>

000000000001ff98 <__muldf3>:
   1ff98:	fc010113          	addi	sp,sp,-64
   1ff9c:	03213023          	sd	s2,32(sp)
   1ffa0:	03455913          	srli	s2,a0,0x34
   1ffa4:	02913423          	sd	s1,40(sp)
   1ffa8:	01313c23          	sd	s3,24(sp)
   1ffac:	01513423          	sd	s5,8(sp)
   1ffb0:	00c51493          	slli	s1,a0,0xc
   1ffb4:	02113c23          	sd	ra,56(sp)
   1ffb8:	02813823          	sd	s0,48(sp)
   1ffbc:	01413823          	sd	s4,16(sp)
   1ffc0:	7ff97913          	andi	s2,s2,2047
   1ffc4:	00058a93          	mv	s5,a1
   1ffc8:	00c4d493          	srli	s1,s1,0xc
   1ffcc:	03f55993          	srli	s3,a0,0x3f
   1ffd0:	08090c63          	beqz	s2,20068 <__muldf3+0xd0>
   1ffd4:	7ff00793          	li	a5,2047
   1ffd8:	0af90a63          	beq	s2,a5,2008c <__muldf3+0xf4>
   1ffdc:	00100793          	li	a5,1
   1ffe0:	00349493          	slli	s1,s1,0x3
   1ffe4:	03779793          	slli	a5,a5,0x37
   1ffe8:	00f4e4b3          	or	s1,s1,a5
   1ffec:	c0190913          	addi	s2,s2,-1023
   1fff0:	00000a13          	li	s4,0
   1fff4:	034ad513          	srli	a0,s5,0x34
   1fff8:	00ca9413          	slli	s0,s5,0xc
   1fffc:	7ff57513          	andi	a0,a0,2047
   20000:	00c45413          	srli	s0,s0,0xc
   20004:	03fada93          	srli	s5,s5,0x3f
   20008:	0a050263          	beqz	a0,200ac <__muldf3+0x114>
   2000c:	7ff00793          	li	a5,2047
   20010:	0cf50063          	beq	a0,a5,200d0 <__muldf3+0x138>
   20014:	00100793          	li	a5,1
   20018:	00341413          	slli	s0,s0,0x3
   2001c:	03779793          	slli	a5,a5,0x37
   20020:	00f46433          	or	s0,s0,a5
   20024:	c0150513          	addi	a0,a0,-1023
   20028:	00000793          	li	a5,0
   2002c:	002a1713          	slli	a4,s4,0x2
   20030:	00f76733          	or	a4,a4,a5
   20034:	00a90933          	add	s2,s2,a0
   20038:	fff70713          	addi	a4,a4,-1
   2003c:	00e00693          	li	a3,14
   20040:	0159c833          	xor	a6,s3,s5
   20044:	00190893          	addi	a7,s2,1
   20048:	0ae6e463          	bltu	a3,a4,200f0 <__muldf3+0x158>
   2004c:	00002697          	auipc	a3,0x2
   20050:	58868693          	addi	a3,a3,1416 # 225d4 <zeroes.4501+0x4c>
   20054:	00271713          	slli	a4,a4,0x2
   20058:	00d70733          	add	a4,a4,a3
   2005c:	00072703          	lw	a4,0(a4)
   20060:	00d70733          	add	a4,a4,a3
   20064:	00070067          	jr	a4
   20068:	02048c63          	beqz	s1,200a0 <__muldf3+0x108>
   2006c:	00048513          	mv	a0,s1
   20070:	8bdf00ef          	jal	ra,1092c <__clzdi2>
   20074:	0005051b          	sext.w	a0,a0
   20078:	ff85079b          	addiw	a5,a0,-8
   2007c:	c0d00913          	li	s2,-1011
   20080:	00f494b3          	sll	s1,s1,a5
   20084:	40a90933          	sub	s2,s2,a0
   20088:	f69ff06f          	j	1fff0 <__muldf3+0x58>
   2008c:	7ff00913          	li	s2,2047
   20090:	00200a13          	li	s4,2
   20094:	f60480e3          	beqz	s1,1fff4 <__muldf3+0x5c>
   20098:	00300a13          	li	s4,3
   2009c:	f59ff06f          	j	1fff4 <__muldf3+0x5c>
   200a0:	00000913          	li	s2,0
   200a4:	00100a13          	li	s4,1
   200a8:	f4dff06f          	j	1fff4 <__muldf3+0x5c>
   200ac:	02040c63          	beqz	s0,200e4 <__muldf3+0x14c>
   200b0:	00040513          	mv	a0,s0
   200b4:	879f00ef          	jal	ra,1092c <__clzdi2>
   200b8:	0005051b          	sext.w	a0,a0
   200bc:	ff85079b          	addiw	a5,a0,-8
   200c0:	00f41433          	sll	s0,s0,a5
   200c4:	c0d00793          	li	a5,-1011
   200c8:	40a78533          	sub	a0,a5,a0
   200cc:	f5dff06f          	j	20028 <__muldf3+0x90>
   200d0:	7ff00513          	li	a0,2047
   200d4:	00200793          	li	a5,2
   200d8:	f4040ae3          	beqz	s0,2002c <__muldf3+0x94>
   200dc:	00300793          	li	a5,3
   200e0:	f4dff06f          	j	2002c <__muldf3+0x94>
   200e4:	00000513          	li	a0,0
   200e8:	00100793          	li	a5,1
   200ec:	f41ff06f          	j	2002c <__muldf3+0x94>
   200f0:	fff00793          	li	a5,-1
   200f4:	0207d793          	srli	a5,a5,0x20
   200f8:	0204df13          	srli	t5,s1,0x20
   200fc:	02045e93          	srli	t4,s0,0x20
   20100:	00f4f4b3          	and	s1,s1,a5
   20104:	00f47433          	and	s0,s0,a5
   20108:	00048513          	mv	a0,s1
   2010c:	00040593          	mv	a1,s0
   20110:	6bc010ef          	jal	ra,217cc <__muldi3>
   20114:	00050313          	mv	t1,a0
   20118:	000e8593          	mv	a1,t4
   2011c:	00048513          	mv	a0,s1
   20120:	6ac010ef          	jal	ra,217cc <__muldi3>
   20124:	00050713          	mv	a4,a0
   20128:	00040593          	mv	a1,s0
   2012c:	000f0513          	mv	a0,t5
   20130:	69c010ef          	jal	ra,217cc <__muldi3>
   20134:	00050e13          	mv	t3,a0
   20138:	000e8593          	mv	a1,t4
   2013c:	000f0513          	mv	a0,t5
   20140:	68c010ef          	jal	ra,217cc <__muldi3>
   20144:	02035793          	srli	a5,t1,0x20
   20148:	01c70733          	add	a4,a4,t3
   2014c:	00e787b3          	add	a5,a5,a4
   20150:	01c7f863          	bgeu	a5,t3,20160 <__muldf3+0x1c8>
   20154:	00100713          	li	a4,1
   20158:	02071713          	slli	a4,a4,0x20
   2015c:	00e50533          	add	a0,a0,a4
   20160:	fff00693          	li	a3,-1
   20164:	0206d693          	srli	a3,a3,0x20
   20168:	00d7f733          	and	a4,a5,a3
   2016c:	02071713          	slli	a4,a4,0x20
   20170:	00d37333          	and	t1,t1,a3
   20174:	00670733          	add	a4,a4,t1
   20178:	00971413          	slli	s0,a4,0x9
   2017c:	0207d793          	srli	a5,a5,0x20
   20180:	00803433          	snez	s0,s0
   20184:	00a787b3          	add	a5,a5,a0
   20188:	03775713          	srli	a4,a4,0x37
   2018c:	00e46733          	or	a4,s0,a4
   20190:	00979413          	slli	s0,a5,0x9
   20194:	00e46433          	or	s0,s0,a4
   20198:	00741793          	slli	a5,s0,0x7
   2019c:	0807de63          	bgez	a5,20238 <__muldf3+0x2a0>
   201a0:	00145793          	srli	a5,s0,0x1
   201a4:	00147413          	andi	s0,s0,1
   201a8:	0087e433          	or	s0,a5,s0
   201ac:	3ff88793          	addi	a5,a7,1023
   201b0:	08f05863          	blez	a5,20240 <__muldf3+0x2a8>
   201b4:	00747713          	andi	a4,s0,7
   201b8:	00070a63          	beqz	a4,201cc <__muldf3+0x234>
   201bc:	00f47713          	andi	a4,s0,15
   201c0:	00400693          	li	a3,4
   201c4:	00d70463          	beq	a4,a3,201cc <__muldf3+0x234>
   201c8:	00440413          	addi	s0,s0,4
   201cc:	00741713          	slli	a4,s0,0x7
   201d0:	00075c63          	bgez	a4,201e8 <__muldf3+0x250>
   201d4:	fff00793          	li	a5,-1
   201d8:	03879793          	slli	a5,a5,0x38
   201dc:	fff78793          	addi	a5,a5,-1
   201e0:	00f47433          	and	s0,s0,a5
   201e4:	40088793          	addi	a5,a7,1024
   201e8:	7fe00713          	li	a4,2046
   201ec:	00345413          	srli	s0,s0,0x3
   201f0:	0af75e63          	bge	a4,a5,202ac <__muldf3+0x314>
   201f4:	00000413          	li	s0,0
   201f8:	7ff00793          	li	a5,2047
   201fc:	0b00006f          	j	202ac <__muldf3+0x314>
   20200:	00098813          	mv	a6,s3
   20204:	00048413          	mv	s0,s1
   20208:	000a0793          	mv	a5,s4
   2020c:	00200713          	li	a4,2
   20210:	fee782e3          	beq	a5,a4,201f4 <__muldf3+0x25c>
   20214:	00300713          	li	a4,3
   20218:	08e78263          	beq	a5,a4,2029c <__muldf3+0x304>
   2021c:	00100713          	li	a4,1
   20220:	f8e796e3          	bne	a5,a4,201ac <__muldf3+0x214>
   20224:	00000413          	li	s0,0
   20228:	00000793          	li	a5,0
   2022c:	0800006f          	j	202ac <__muldf3+0x314>
   20230:	000a8813          	mv	a6,s5
   20234:	fd9ff06f          	j	2020c <__muldf3+0x274>
   20238:	00090893          	mv	a7,s2
   2023c:	f71ff06f          	j	201ac <__muldf3+0x214>
   20240:	00100713          	li	a4,1
   20244:	40f707b3          	sub	a5,a4,a5
   20248:	03800713          	li	a4,56
   2024c:	fcf74ce3          	blt	a4,a5,20224 <__muldf3+0x28c>
   20250:	0007871b          	sext.w	a4,a5
   20254:	04000693          	li	a3,64
   20258:	00e457b3          	srl	a5,s0,a4
   2025c:	40e6873b          	subw	a4,a3,a4
   20260:	00e41433          	sll	s0,s0,a4
   20264:	00803433          	snez	s0,s0
   20268:	0087e433          	or	s0,a5,s0
   2026c:	00747793          	andi	a5,s0,7
   20270:	00078a63          	beqz	a5,20284 <__muldf3+0x2ec>
   20274:	00f47793          	andi	a5,s0,15
   20278:	00400713          	li	a4,4
   2027c:	00e78463          	beq	a5,a4,20284 <__muldf3+0x2ec>
   20280:	00440413          	addi	s0,s0,4
   20284:	00841793          	slli	a5,s0,0x8
   20288:	00345413          	srli	s0,s0,0x3
   2028c:	f807dee3          	bgez	a5,20228 <__muldf3+0x290>
   20290:	00000413          	li	s0,0
   20294:	00100793          	li	a5,1
   20298:	0140006f          	j	202ac <__muldf3+0x314>
   2029c:	00100413          	li	s0,1
   202a0:	03341413          	slli	s0,s0,0x33
   202a4:	7ff00793          	li	a5,2047
   202a8:	00000813          	li	a6,0
   202ac:	00c41413          	slli	s0,s0,0xc
   202b0:	7ff7f793          	andi	a5,a5,2047
   202b4:	03479793          	slli	a5,a5,0x34
   202b8:	00c45413          	srli	s0,s0,0xc
   202bc:	00f46433          	or	s0,s0,a5
   202c0:	03f81513          	slli	a0,a6,0x3f
   202c4:	00a46533          	or	a0,s0,a0
   202c8:	03813083          	ld	ra,56(sp)
   202cc:	03013403          	ld	s0,48(sp)
   202d0:	02813483          	ld	s1,40(sp)
   202d4:	02013903          	ld	s2,32(sp)
   202d8:	01813983          	ld	s3,24(sp)
   202dc:	01013a03          	ld	s4,16(sp)
   202e0:	00813a83          	ld	s5,8(sp)
   202e4:	04010113          	addi	sp,sp,64
   202e8:	00008067          	ret

00000000000202ec <__eqtf2>:
   202ec:	000088b7          	lui	a7,0x8
   202f0:	0305d813          	srli	a6,a1,0x30
   202f4:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   202f8:	fff00713          	li	a4,-1
   202fc:	01075713          	srli	a4,a4,0x10
   20300:	0306d313          	srli	t1,a3,0x30
   20304:	01187833          	and	a6,a6,a7
   20308:	00e5fe33          	and	t3,a1,a4
   2030c:	01137333          	and	t1,t1,a7
   20310:	00e6f733          	and	a4,a3,a4
   20314:	03f5d593          	srli	a1,a1,0x3f
   20318:	03f6d693          	srli	a3,a3,0x3f
   2031c:	01181e63          	bne	a6,a7,20338 <__eqtf2+0x4c>
   20320:	00ae68b3          	or	a7,t3,a0
   20324:	00100793          	li	a5,1
   20328:	04089063          	bnez	a7,20368 <__eqtf2+0x7c>
   2032c:	01030863          	beq	t1,a6,2033c <__eqtf2+0x50>
   20330:	00100793          	li	a5,1
   20334:	0340006f          	j	20368 <__eqtf2+0x7c>
   20338:	01131863          	bne	t1,a7,20348 <__eqtf2+0x5c>
   2033c:	00c768b3          	or	a7,a4,a2
   20340:	00100793          	li	a5,1
   20344:	02089263          	bnez	a7,20368 <__eqtf2+0x7c>
   20348:	00100793          	li	a5,1
   2034c:	00681e63          	bne	a6,t1,20368 <__eqtf2+0x7c>
   20350:	00ee1c63          	bne	t3,a4,20368 <__eqtf2+0x7c>
   20354:	00c51a63          	bne	a0,a2,20368 <__eqtf2+0x7c>
   20358:	00d58c63          	beq	a1,a3,20370 <__eqtf2+0x84>
   2035c:	00081663          	bnez	a6,20368 <__eqtf2+0x7c>
   20360:	00ae67b3          	or	a5,t3,a0
   20364:	00f037b3          	snez	a5,a5
   20368:	00078513          	mv	a0,a5
   2036c:	00008067          	ret
   20370:	00000793          	li	a5,0
   20374:	ff5ff06f          	j	20368 <__eqtf2+0x7c>

0000000000020378 <__getf2>:
   20378:	000088b7          	lui	a7,0x8
   2037c:	0305d813          	srli	a6,a1,0x30
   20380:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   20384:	fff00793          	li	a5,-1
   20388:	0107d793          	srli	a5,a5,0x10
   2038c:	0306d713          	srli	a4,a3,0x30
   20390:	01187833          	and	a6,a6,a7
   20394:	00f5f333          	and	t1,a1,a5
   20398:	01177733          	and	a4,a4,a7
   2039c:	00f6f7b3          	and	a5,a3,a5
   203a0:	03f5d593          	srli	a1,a1,0x3f
   203a4:	03f6d693          	srli	a3,a3,0x3f
   203a8:	01181a63          	bne	a6,a7,203bc <__getf2+0x44>
   203ac:	00a368b3          	or	a7,t1,a0
   203b0:	08088c63          	beqz	a7,20448 <__getf2+0xd0>
   203b4:	ffe00593          	li	a1,-2
   203b8:	0480006f          	j	20400 <__getf2+0x88>
   203bc:	01171663          	bne	a4,a7,203c8 <__getf2+0x50>
   203c0:	00c7e8b3          	or	a7,a5,a2
   203c4:	fe0898e3          	bnez	a7,203b4 <__getf2+0x3c>
   203c8:	08081263          	bnez	a6,2044c <__getf2+0xd4>
   203cc:	00a368b3          	or	a7,t1,a0
   203d0:	0018b893          	seqz	a7,a7
   203d4:	00071663          	bnez	a4,203e0 <__getf2+0x68>
   203d8:	00c7ee33          	or	t3,a5,a2
   203dc:	040e0e63          	beqz	t3,20438 <__getf2+0xc0>
   203e0:	00089a63          	bnez	a7,203f4 <__getf2+0x7c>
   203e4:	02d58263          	beq	a1,a3,20408 <__getf2+0x90>
   203e8:	04058463          	beqz	a1,20430 <__getf2+0xb8>
   203ec:	fff00593          	li	a1,-1
   203f0:	0100006f          	j	20400 <__getf2+0x88>
   203f4:	fff00593          	li	a1,-1
   203f8:	00068463          	beqz	a3,20400 <__getf2+0x88>
   203fc:	00068593          	mv	a1,a3
   20400:	00058513          	mv	a0,a1
   20404:	00008067          	ret
   20408:	ff0740e3          	blt	a4,a6,203e8 <__getf2+0x70>
   2040c:	00e85663          	bge	a6,a4,20418 <__getf2+0xa0>
   20410:	fe0598e3          	bnez	a1,20400 <__getf2+0x88>
   20414:	fd9ff06f          	j	203ec <__getf2+0x74>
   20418:	fc67e8e3          	bltu	a5,t1,203e8 <__getf2+0x70>
   2041c:	02f31263          	bne	t1,a5,20440 <__getf2+0xc8>
   20420:	fca664e3          	bltu	a2,a0,203e8 <__getf2+0x70>
   20424:	fec566e3          	bltu	a0,a2,20410 <__getf2+0x98>
   20428:	00000593          	li	a1,0
   2042c:	fd5ff06f          	j	20400 <__getf2+0x88>
   20430:	00100593          	li	a1,1
   20434:	fcdff06f          	j	20400 <__getf2+0x88>
   20438:	fe0898e3          	bnez	a7,20428 <__getf2+0xb0>
   2043c:	fadff06f          	j	203e8 <__getf2+0x70>
   20440:	fcf368e3          	bltu	t1,a5,20410 <__getf2+0x98>
   20444:	fe5ff06f          	j	20428 <__getf2+0xb0>
   20448:	f7070ce3          	beq	a4,a6,203c0 <__getf2+0x48>
   2044c:	f8071ce3          	bnez	a4,203e4 <__getf2+0x6c>
   20450:	00000893          	li	a7,0
   20454:	f85ff06f          	j	203d8 <__getf2+0x60>

0000000000020458 <__letf2>:
   20458:	000088b7          	lui	a7,0x8
   2045c:	0305d813          	srli	a6,a1,0x30
   20460:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   20464:	fff00793          	li	a5,-1
   20468:	0107d793          	srli	a5,a5,0x10
   2046c:	0306d713          	srli	a4,a3,0x30
   20470:	01187833          	and	a6,a6,a7
   20474:	00f5f333          	and	t1,a1,a5
   20478:	01177733          	and	a4,a4,a7
   2047c:	00f6f7b3          	and	a5,a3,a5
   20480:	03f5d593          	srli	a1,a1,0x3f
   20484:	03f6d693          	srli	a3,a3,0x3f
   20488:	01181a63          	bne	a6,a7,2049c <__letf2+0x44>
   2048c:	00a368b3          	or	a7,t1,a0
   20490:	08088c63          	beqz	a7,20528 <__letf2+0xd0>
   20494:	00200593          	li	a1,2
   20498:	0480006f          	j	204e0 <__letf2+0x88>
   2049c:	01171663          	bne	a4,a7,204a8 <__letf2+0x50>
   204a0:	00c7e8b3          	or	a7,a5,a2
   204a4:	fe0898e3          	bnez	a7,20494 <__letf2+0x3c>
   204a8:	08081263          	bnez	a6,2052c <__letf2+0xd4>
   204ac:	00a368b3          	or	a7,t1,a0
   204b0:	0018b893          	seqz	a7,a7
   204b4:	00071663          	bnez	a4,204c0 <__letf2+0x68>
   204b8:	00c7ee33          	or	t3,a5,a2
   204bc:	040e0e63          	beqz	t3,20518 <__letf2+0xc0>
   204c0:	00089a63          	bnez	a7,204d4 <__letf2+0x7c>
   204c4:	02d58263          	beq	a1,a3,204e8 <__letf2+0x90>
   204c8:	04058463          	beqz	a1,20510 <__letf2+0xb8>
   204cc:	fff00593          	li	a1,-1
   204d0:	0100006f          	j	204e0 <__letf2+0x88>
   204d4:	fff00593          	li	a1,-1
   204d8:	00068463          	beqz	a3,204e0 <__letf2+0x88>
   204dc:	00068593          	mv	a1,a3
   204e0:	00058513          	mv	a0,a1
   204e4:	00008067          	ret
   204e8:	ff0740e3          	blt	a4,a6,204c8 <__letf2+0x70>
   204ec:	00e85663          	bge	a6,a4,204f8 <__letf2+0xa0>
   204f0:	fe0598e3          	bnez	a1,204e0 <__letf2+0x88>
   204f4:	fd9ff06f          	j	204cc <__letf2+0x74>
   204f8:	fc67e8e3          	bltu	a5,t1,204c8 <__letf2+0x70>
   204fc:	02f31263          	bne	t1,a5,20520 <__letf2+0xc8>
   20500:	fca664e3          	bltu	a2,a0,204c8 <__letf2+0x70>
   20504:	fec566e3          	bltu	a0,a2,204f0 <__letf2+0x98>
   20508:	00000593          	li	a1,0
   2050c:	fd5ff06f          	j	204e0 <__letf2+0x88>
   20510:	00100593          	li	a1,1
   20514:	fcdff06f          	j	204e0 <__letf2+0x88>
   20518:	fe0898e3          	bnez	a7,20508 <__letf2+0xb0>
   2051c:	fadff06f          	j	204c8 <__letf2+0x70>
   20520:	fcf368e3          	bltu	t1,a5,204f0 <__letf2+0x98>
   20524:	fe5ff06f          	j	20508 <__letf2+0xb0>
   20528:	f7070ce3          	beq	a4,a6,204a0 <__letf2+0x48>
   2052c:	f8071ce3          	bnez	a4,204c4 <__letf2+0x6c>
   20530:	00000893          	li	a7,0
   20534:	f85ff06f          	j	204b8 <__letf2+0x60>

0000000000020538 <__multf3>:
   20538:	fa010113          	addi	sp,sp,-96
   2053c:	00008737          	lui	a4,0x8
   20540:	03313c23          	sd	s3,56(sp)
   20544:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20548:	0305d993          	srli	s3,a1,0x30
   2054c:	04813823          	sd	s0,80(sp)
   20550:	04913423          	sd	s1,72(sp)
   20554:	03413823          	sd	s4,48(sp)
   20558:	03513423          	sd	s5,40(sp)
   2055c:	03613023          	sd	s6,32(sp)
   20560:	01059493          	slli	s1,a1,0x10
   20564:	04113c23          	sd	ra,88(sp)
   20568:	05213023          	sd	s2,64(sp)
   2056c:	01713c23          	sd	s7,24(sp)
   20570:	01813823          	sd	s8,16(sp)
   20574:	01913423          	sd	s9,8(sp)
   20578:	00e9f7b3          	and	a5,s3,a4
   2057c:	00050413          	mv	s0,a0
   20580:	00060b13          	mv	s6,a2
   20584:	00068a13          	mv	s4,a3
   20588:	0104d493          	srli	s1,s1,0x10
   2058c:	03f5da93          	srli	s5,a1,0x3f
   20590:	0c078463          	beqz	a5,20658 <__multf3+0x120>
   20594:	0007899b          	sext.w	s3,a5
   20598:	12e98a63          	beq	s3,a4,206cc <__multf3+0x194>
   2059c:	00349493          	slli	s1,s1,0x3
   205a0:	03d55713          	srli	a4,a0,0x3d
   205a4:	00976733          	or	a4,a4,s1
   205a8:	ffffc9b7          	lui	s3,0xffffc
   205ac:	00100493          	li	s1,1
   205b0:	03349493          	slli	s1,s1,0x33
   205b4:	00198993          	addi	s3,s3,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd77b1>
   205b8:	009764b3          	or	s1,a4,s1
   205bc:	00351913          	slli	s2,a0,0x3
   205c0:	013789b3          	add	s3,a5,s3
   205c4:	00000b93          	li	s7,0
   205c8:	000087b7          	lui	a5,0x8
   205cc:	030a5513          	srli	a0,s4,0x30
   205d0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   205d4:	010a1413          	slli	s0,s4,0x10
   205d8:	00f57733          	and	a4,a0,a5
   205dc:	01045413          	srli	s0,s0,0x10
   205e0:	03fa5a13          	srli	s4,s4,0x3f
   205e4:	10070c63          	beqz	a4,206fc <__multf3+0x1c4>
   205e8:	0007051b          	sext.w	a0,a4
   205ec:	18f50463          	beq	a0,a5,20774 <__multf3+0x23c>
   205f0:	00341413          	slli	s0,s0,0x3
   205f4:	03db5593          	srli	a1,s6,0x3d
   205f8:	0085e5b3          	or	a1,a1,s0
   205fc:	ffffc537          	lui	a0,0xffffc
   20600:	00100413          	li	s0,1
   20604:	03341413          	slli	s0,s0,0x33
   20608:	00150513          	addi	a0,a0,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd77b1>
   2060c:	0085e433          	or	s0,a1,s0
   20610:	003b1793          	slli	a5,s6,0x3
   20614:	00a70533          	add	a0,a4,a0
   20618:	00000713          	li	a4,0
   2061c:	002b9693          	slli	a3,s7,0x2
   20620:	00e6e6b3          	or	a3,a3,a4
   20624:	013509b3          	add	s3,a0,s3
   20628:	fff68693          	addi	a3,a3,-1
   2062c:	00e00613          	li	a2,14
   20630:	014ac833          	xor	a6,s5,s4
   20634:	00198893          	addi	a7,s3,1
   20638:	16d66663          	bltu	a2,a3,207a4 <__multf3+0x26c>
   2063c:	00002617          	auipc	a2,0x2
   20640:	fd460613          	addi	a2,a2,-44 # 22610 <zeroes.4501+0x88>
   20644:	00269693          	slli	a3,a3,0x2
   20648:	00c686b3          	add	a3,a3,a2
   2064c:	0006a683          	lw	a3,0(a3)
   20650:	00c686b3          	add	a3,a3,a2
   20654:	00068067          	jr	a3
   20658:	00956933          	or	s2,a0,s1
   2065c:	08090263          	beqz	s2,206e0 <__multf3+0x1a8>
   20660:	04048663          	beqz	s1,206ac <__multf3+0x174>
   20664:	00048513          	mv	a0,s1
   20668:	ac4f00ef          	jal	ra,1092c <__clzdi2>
   2066c:	0005051b          	sext.w	a0,a0
   20670:	ff150713          	addi	a4,a0,-15
   20674:	03c00693          	li	a3,60
   20678:	0007079b          	sext.w	a5,a4
   2067c:	04e6c063          	blt	a3,a4,206bc <__multf3+0x184>
   20680:	03d00713          	li	a4,61
   20684:	0037891b          	addiw	s2,a5,3
   20688:	40f707bb          	subw	a5,a4,a5
   2068c:	012494b3          	sll	s1,s1,s2
   20690:	00f457b3          	srl	a5,s0,a5
   20694:	0097e4b3          	or	s1,a5,s1
   20698:	01241933          	sll	s2,s0,s2
   2069c:	ffffc9b7          	lui	s3,0xffffc
   206a0:	01198993          	addi	s3,s3,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd77c1>
   206a4:	40a989b3          	sub	s3,s3,a0
   206a8:	f1dff06f          	j	205c4 <__multf3+0x8c>
   206ac:	a80f00ef          	jal	ra,1092c <__clzdi2>
   206b0:	0005051b          	sext.w	a0,a0
   206b4:	04050513          	addi	a0,a0,64
   206b8:	fb9ff06f          	j	20670 <__multf3+0x138>
   206bc:	fc37849b          	addiw	s1,a5,-61
   206c0:	009414b3          	sll	s1,s0,s1
   206c4:	00000913          	li	s2,0
   206c8:	fd5ff06f          	j	2069c <__multf3+0x164>
   206cc:	00956933          	or	s2,a0,s1
   206d0:	02090063          	beqz	s2,206f0 <__multf3+0x1b8>
   206d4:	00050913          	mv	s2,a0
   206d8:	00300b93          	li	s7,3
   206dc:	eedff06f          	j	205c8 <__multf3+0x90>
   206e0:	00000493          	li	s1,0
   206e4:	00000993          	li	s3,0
   206e8:	00100b93          	li	s7,1
   206ec:	eddff06f          	j	205c8 <__multf3+0x90>
   206f0:	00000493          	li	s1,0
   206f4:	00200b93          	li	s7,2
   206f8:	ed1ff06f          	j	205c8 <__multf3+0x90>
   206fc:	008b67b3          	or	a5,s6,s0
   20700:	08078463          	beqz	a5,20788 <__multf3+0x250>
   20704:	04040663          	beqz	s0,20750 <__multf3+0x218>
   20708:	00040513          	mv	a0,s0
   2070c:	a20f00ef          	jal	ra,1092c <__clzdi2>
   20710:	0005051b          	sext.w	a0,a0
   20714:	ff150793          	addi	a5,a0,-15
   20718:	03c00693          	li	a3,60
   2071c:	0007871b          	sext.w	a4,a5
   20720:	04f6c263          	blt	a3,a5,20764 <__multf3+0x22c>
   20724:	03d00693          	li	a3,61
   20728:	0037079b          	addiw	a5,a4,3
   2072c:	40e6873b          	subw	a4,a3,a4
   20730:	00f41433          	sll	s0,s0,a5
   20734:	00eb5733          	srl	a4,s6,a4
   20738:	00876433          	or	s0,a4,s0
   2073c:	00fb17b3          	sll	a5,s6,a5
   20740:	ffffc737          	lui	a4,0xffffc
   20744:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd77c1>
   20748:	40a70533          	sub	a0,a4,a0
   2074c:	ecdff06f          	j	20618 <__multf3+0xe0>
   20750:	000b0513          	mv	a0,s6
   20754:	9d8f00ef          	jal	ra,1092c <__clzdi2>
   20758:	0005051b          	sext.w	a0,a0
   2075c:	04050513          	addi	a0,a0,64
   20760:	fb5ff06f          	j	20714 <__multf3+0x1dc>
   20764:	fc37041b          	addiw	s0,a4,-61
   20768:	008b1433          	sll	s0,s6,s0
   2076c:	00000793          	li	a5,0
   20770:	fd1ff06f          	j	20740 <__multf3+0x208>
   20774:	008b67b3          	or	a5,s6,s0
   20778:	02078063          	beqz	a5,20798 <__multf3+0x260>
   2077c:	000b0793          	mv	a5,s6
   20780:	00300713          	li	a4,3
   20784:	e99ff06f          	j	2061c <__multf3+0xe4>
   20788:	00000413          	li	s0,0
   2078c:	00000513          	li	a0,0
   20790:	00100713          	li	a4,1
   20794:	e89ff06f          	j	2061c <__multf3+0xe4>
   20798:	00000413          	li	s0,0
   2079c:	00200713          	li	a4,2
   207a0:	e7dff06f          	j	2061c <__multf3+0xe4>
   207a4:	fff00713          	li	a4,-1
   207a8:	01248ab3          	add	s5,s1,s2
   207ac:	00878a33          	add	s4,a5,s0
   207b0:	02075713          	srli	a4,a4,0x20
   207b4:	012ab2b3          	sltu	t0,s5,s2
   207b8:	00fa33b3          	sltu	t2,s4,a5
   207bc:	02095b13          	srli	s6,s2,0x20
   207c0:	0207df93          	srli	t6,a5,0x20
   207c4:	00e97933          	and	s2,s2,a4
   207c8:	00e7f7b3          	and	a5,a5,a4
   207cc:	00028f1b          	sext.w	t5,t0
   207d0:	00038e1b          	sext.w	t3,t2
   207d4:	00090513          	mv	a0,s2
   207d8:	00078593          	mv	a1,a5
   207dc:	7f1000ef          	jal	ra,217cc <__muldi3>
   207e0:	00050e93          	mv	t4,a0
   207e4:	000f8593          	mv	a1,t6
   207e8:	00090513          	mv	a0,s2
   207ec:	7e1000ef          	jal	ra,217cc <__muldi3>
   207f0:	00050313          	mv	t1,a0
   207f4:	00078593          	mv	a1,a5
   207f8:	000b0513          	mv	a0,s6
   207fc:	7d1000ef          	jal	ra,217cc <__muldi3>
   20800:	00050713          	mv	a4,a0
   20804:	000f8593          	mv	a1,t6
   20808:	000b0513          	mv	a0,s6
   2080c:	7c1000ef          	jal	ra,217cc <__muldi3>
   20810:	020ed793          	srli	a5,t4,0x20
   20814:	00e30333          	add	t1,t1,a4
   20818:	006787b3          	add	a5,a5,t1
   2081c:	00e7f863          	bgeu	a5,a4,2082c <__multf3+0x2f4>
   20820:	00100713          	li	a4,1
   20824:	02071713          	slli	a4,a4,0x20
   20828:	00e50533          	add	a0,a0,a4
   2082c:	fff00713          	li	a4,-1
   20830:	02075713          	srli	a4,a4,0x20
   20834:	00e7f333          	and	t1,a5,a4
   20838:	00eefeb3          	and	t4,t4,a4
   2083c:	00eafb33          	and	s6,s5,a4
   20840:	0207df93          	srli	t6,a5,0x20
   20844:	00ea7733          	and	a4,s4,a4
   20848:	02031313          	slli	t1,t1,0x20
   2084c:	00af8fb3          	add	t6,t6,a0
   20850:	01d30333          	add	t1,t1,t4
   20854:	020ad913          	srli	s2,s5,0x20
   20858:	020a5793          	srli	a5,s4,0x20
   2085c:	000b0513          	mv	a0,s6
   20860:	00070593          	mv	a1,a4
   20864:	769000ef          	jal	ra,217cc <__muldi3>
   20868:	00050e93          	mv	t4,a0
   2086c:	00078593          	mv	a1,a5
   20870:	000b0513          	mv	a0,s6
   20874:	759000ef          	jal	ra,217cc <__muldi3>
   20878:	00050b93          	mv	s7,a0
   2087c:	00070593          	mv	a1,a4
   20880:	00090513          	mv	a0,s2
   20884:	749000ef          	jal	ra,217cc <__muldi3>
   20888:	00050713          	mv	a4,a0
   2088c:	00078593          	mv	a1,a5
   20890:	00090513          	mv	a0,s2
   20894:	739000ef          	jal	ra,217cc <__muldi3>
   20898:	020ed693          	srli	a3,t4,0x20
   2089c:	00eb8bb3          	add	s7,s7,a4
   208a0:	017686b3          	add	a3,a3,s7
   208a4:	00050b13          	mv	s6,a0
   208a8:	00e6f863          	bgeu	a3,a4,208b8 <__multf3+0x380>
   208ac:	00100793          	li	a5,1
   208b0:	02079793          	slli	a5,a5,0x20
   208b4:	00f50b33          	add	s6,a0,a5
   208b8:	fff00593          	li	a1,-1
   208bc:	0205d593          	srli	a1,a1,0x20
   208c0:	0206d913          	srli	s2,a3,0x20
   208c4:	00b6f6b3          	and	a3,a3,a1
   208c8:	02069693          	slli	a3,a3,0x20
   208cc:	00befeb3          	and	t4,t4,a1
   208d0:	0204dc93          	srli	s9,s1,0x20
   208d4:	02045c13          	srli	s8,s0,0x20
   208d8:	00b4f4b3          	and	s1,s1,a1
   208dc:	00b47433          	and	s0,s0,a1
   208e0:	01d68eb3          	add	t4,a3,t4
   208e4:	00048513          	mv	a0,s1
   208e8:	00040593          	mv	a1,s0
   208ec:	6e1000ef          	jal	ra,217cc <__muldi3>
   208f0:	00050b93          	mv	s7,a0
   208f4:	000c0593          	mv	a1,s8
   208f8:	00048513          	mv	a0,s1
   208fc:	6d1000ef          	jal	ra,217cc <__muldi3>
   20900:	00050713          	mv	a4,a0
   20904:	00040593          	mv	a1,s0
   20908:	000c8513          	mv	a0,s9
   2090c:	6c1000ef          	jal	ra,217cc <__muldi3>
   20910:	00050793          	mv	a5,a0
   20914:	000c0593          	mv	a1,s8
   20918:	000c8513          	mv	a0,s9
   2091c:	6b1000ef          	jal	ra,217cc <__muldi3>
   20920:	020bd613          	srli	a2,s7,0x20
   20924:	00f70733          	add	a4,a4,a5
   20928:	00e60633          	add	a2,a2,a4
   2092c:	00f67863          	bgeu	a2,a5,2093c <__multf3+0x404>
   20930:	00100793          	li	a5,1
   20934:	02079793          	slli	a5,a5,0x20
   20938:	00f50533          	add	a0,a0,a5
   2093c:	02065693          	srli	a3,a2,0x20
   20940:	00a687b3          	add	a5,a3,a0
   20944:	fff00693          	li	a3,-1
   20948:	0206d693          	srli	a3,a3,0x20
   2094c:	00d67733          	and	a4,a2,a3
   20950:	00dbfbb3          	and	s7,s7,a3
   20954:	01fe86b3          	add	a3,t4,t6
   20958:	01f6b633          	sltu	a2,a3,t6
   2095c:	00c90533          	add	a0,s2,a2
   20960:	41c005b3          	neg	a1,t3
   20964:	01650533          	add	a0,a0,s6
   20968:	0155f5b3          	and	a1,a1,s5
   2096c:	41e00e33          	neg	t3,t5
   20970:	00a585b3          	add	a1,a1,a0
   20974:	00c53633          	sltu	a2,a0,a2
   20978:	014e7e33          	and	t3,t3,s4
   2097c:	0072f433          	and	s0,t0,t2
   20980:	00be0e33          	add	t3,t3,a1
   20984:	00a5b533          	sltu	a0,a1,a0
   20988:	00860433          	add	s0,a2,s0
   2098c:	40668eb3          	sub	t4,a3,t1
   20990:	00a40433          	add	s0,s0,a0
   20994:	00be35b3          	sltu	a1,t3,a1
   20998:	41fe0633          	sub	a2,t3,t6
   2099c:	01d6b533          	sltu	a0,a3,t4
   209a0:	02071713          	slli	a4,a4,0x20
   209a4:	00b40433          	add	s0,s0,a1
   209a8:	01770733          	add	a4,a4,s7
   209ac:	00ce35b3          	sltu	a1,t3,a2
   209b0:	40a60633          	sub	a2,a2,a0
   209b4:	00000513          	li	a0,0
   209b8:	01d6f663          	bgeu	a3,t4,209c4 <__multf3+0x48c>
   209bc:	41cf8e33          	sub	t3,t6,t3
   209c0:	001e3513          	seqz	a0,t3
   209c4:	00b56e33          	or	t3,a0,a1
   209c8:	40ee85b3          	sub	a1,t4,a4
   209cc:	40f606b3          	sub	a3,a2,a5
   209d0:	00f40433          	add	s0,s0,a5
   209d4:	00beb7b3          	sltu	a5,t4,a1
   209d8:	00d63633          	sltu	a2,a2,a3
   209dc:	40f707b3          	sub	a5,a4,a5
   209e0:	00000513          	li	a0,0
   209e4:	00bef463          	bgeu	t4,a1,209ec <__multf3+0x4b4>
   209e8:	0016b513          	seqz	a0,a3
   209ec:	00f686b3          	add	a3,a3,a5
   209f0:	00e6b733          	sltu	a4,a3,a4
   209f4:	00870433          	add	s0,a4,s0
   209f8:	41c40433          	sub	s0,s0,t3
   209fc:	00c56633          	or	a2,a0,a2
   20a00:	40c40433          	sub	s0,s0,a2
   20a04:	0336d793          	srli	a5,a3,0x33
   20a08:	00d41413          	slli	s0,s0,0xd
   20a0c:	00f46433          	or	s0,s0,a5
   20a10:	00d59793          	slli	a5,a1,0xd
   20a14:	0067e7b3          	or	a5,a5,t1
   20a18:	00f037b3          	snez	a5,a5
   20a1c:	0335d593          	srli	a1,a1,0x33
   20a20:	00b7e7b3          	or	a5,a5,a1
   20a24:	00d69693          	slli	a3,a3,0xd
   20a28:	00b41713          	slli	a4,s0,0xb
   20a2c:	00d7e7b3          	or	a5,a5,a3
   20a30:	10075c63          	bgez	a4,20b48 <__multf3+0x610>
   20a34:	0017d713          	srli	a4,a5,0x1
   20a38:	0017f793          	andi	a5,a5,1
   20a3c:	03f41513          	slli	a0,s0,0x3f
   20a40:	00f767b3          	or	a5,a4,a5
   20a44:	00a7e7b3          	or	a5,a5,a0
   20a48:	00145413          	srli	s0,s0,0x1
   20a4c:	00004737          	lui	a4,0x4
   20a50:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   20a54:	00e88733          	add	a4,a7,a4
   20a58:	0ee05c63          	blez	a4,20b50 <__multf3+0x618>
   20a5c:	0077f693          	andi	a3,a5,7
   20a60:	02068063          	beqz	a3,20a80 <__multf3+0x548>
   20a64:	00f7f693          	andi	a3,a5,15
   20a68:	00400613          	li	a2,4
   20a6c:	00c68a63          	beq	a3,a2,20a80 <__multf3+0x548>
   20a70:	00478693          	addi	a3,a5,4
   20a74:	00f6b7b3          	sltu	a5,a3,a5
   20a78:	00f40433          	add	s0,s0,a5
   20a7c:	00068793          	mv	a5,a3
   20a80:	00b41693          	slli	a3,s0,0xb
   20a84:	0006de63          	bgez	a3,20aa0 <__multf3+0x568>
   20a88:	fff00713          	li	a4,-1
   20a8c:	03471713          	slli	a4,a4,0x34
   20a90:	fff70713          	addi	a4,a4,-1
   20a94:	00e47433          	and	s0,s0,a4
   20a98:	00004737          	lui	a4,0x4
   20a9c:	00e88733          	add	a4,a7,a4
   20aa0:	000086b7          	lui	a3,0x8
   20aa4:	ffe68613          	addi	a2,a3,-2 # 7ffe <register_fini-0x80b2>
   20aa8:	18e64863          	blt	a2,a4,20c38 <__multf3+0x700>
   20aac:	03d41513          	slli	a0,s0,0x3d
   20ab0:	0037d793          	srli	a5,a5,0x3
   20ab4:	00f56533          	or	a0,a0,a5
   20ab8:	00345413          	srli	s0,s0,0x3
   20abc:	01041413          	slli	s0,s0,0x10
   20ac0:	03171713          	slli	a4,a4,0x31
   20ac4:	00175713          	srli	a4,a4,0x1
   20ac8:	01045413          	srli	s0,s0,0x10
   20acc:	00e46433          	or	s0,s0,a4
   20ad0:	03f81593          	slli	a1,a6,0x3f
   20ad4:	00b465b3          	or	a1,s0,a1
   20ad8:	05813083          	ld	ra,88(sp)
   20adc:	05013403          	ld	s0,80(sp)
   20ae0:	04813483          	ld	s1,72(sp)
   20ae4:	04013903          	ld	s2,64(sp)
   20ae8:	03813983          	ld	s3,56(sp)
   20aec:	03013a03          	ld	s4,48(sp)
   20af0:	02813a83          	ld	s5,40(sp)
   20af4:	02013b03          	ld	s6,32(sp)
   20af8:	01813b83          	ld	s7,24(sp)
   20afc:	01013c03          	ld	s8,16(sp)
   20b00:	00813c83          	ld	s9,8(sp)
   20b04:	06010113          	addi	sp,sp,96
   20b08:	00008067          	ret
   20b0c:	000a8813          	mv	a6,s5
   20b10:	00048413          	mv	s0,s1
   20b14:	00090793          	mv	a5,s2
   20b18:	000b8713          	mv	a4,s7
   20b1c:	00200693          	li	a3,2
   20b20:	0ed70463          	beq	a4,a3,20c08 <__multf3+0x6d0>
   20b24:	00300693          	li	a3,3
   20b28:	0ed70a63          	beq	a4,a3,20c1c <__multf3+0x6e4>
   20b2c:	00100693          	li	a3,1
   20b30:	f0d71ee3          	bne	a4,a3,20a4c <__multf3+0x514>
   20b34:	00000413          	li	s0,0
   20b38:	00000513          	li	a0,0
   20b3c:	0900006f          	j	20bcc <__multf3+0x694>
   20b40:	000a0813          	mv	a6,s4
   20b44:	fd9ff06f          	j	20b1c <__multf3+0x5e4>
   20b48:	00098893          	mv	a7,s3
   20b4c:	f01ff06f          	j	20a4c <__multf3+0x514>
   20b50:	00100693          	li	a3,1
   20b54:	40e68733          	sub	a4,a3,a4
   20b58:	07400693          	li	a3,116
   20b5c:	fce6cce3          	blt	a3,a4,20b34 <__multf3+0x5fc>
   20b60:	03f00693          	li	a3,63
   20b64:	0007059b          	sext.w	a1,a4
   20b68:	06e6c663          	blt	a3,a4,20bd4 <__multf3+0x69c>
   20b6c:	04000713          	li	a4,64
   20b70:	40b7073b          	subw	a4,a4,a1
   20b74:	00e41533          	sll	a0,s0,a4
   20b78:	00b7d6b3          	srl	a3,a5,a1
   20b7c:	00e797b3          	sll	a5,a5,a4
   20b80:	00d56533          	or	a0,a0,a3
   20b84:	00f037b3          	snez	a5,a5
   20b88:	00f567b3          	or	a5,a0,a5
   20b8c:	00b45433          	srl	s0,s0,a1
   20b90:	0077f713          	andi	a4,a5,7
   20b94:	02070063          	beqz	a4,20bb4 <__multf3+0x67c>
   20b98:	00f7f713          	andi	a4,a5,15
   20b9c:	00400693          	li	a3,4
   20ba0:	00d70a63          	beq	a4,a3,20bb4 <__multf3+0x67c>
   20ba4:	00478713          	addi	a4,a5,4
   20ba8:	00f737b3          	sltu	a5,a4,a5
   20bac:	00f40433          	add	s0,s0,a5
   20bb0:	00070793          	mv	a5,a4
   20bb4:	00c41713          	slli	a4,s0,0xc
   20bb8:	08074863          	bltz	a4,20c48 <__multf3+0x710>
   20bbc:	03d41513          	slli	a0,s0,0x3d
   20bc0:	0037d793          	srli	a5,a5,0x3
   20bc4:	00f56533          	or	a0,a0,a5
   20bc8:	00345413          	srli	s0,s0,0x3
   20bcc:	00000713          	li	a4,0
   20bd0:	eedff06f          	j	20abc <__multf3+0x584>
   20bd4:	fc05851b          	addiw	a0,a1,-64
   20bd8:	04000613          	li	a2,64
   20bdc:	00a45533          	srl	a0,s0,a0
   20be0:	00000693          	li	a3,0
   20be4:	00c70863          	beq	a4,a2,20bf4 <__multf3+0x6bc>
   20be8:	08000693          	li	a3,128
   20bec:	40b686bb          	subw	a3,a3,a1
   20bf0:	00d416b3          	sll	a3,s0,a3
   20bf4:	00f6e7b3          	or	a5,a3,a5
   20bf8:	00f037b3          	snez	a5,a5
   20bfc:	00f567b3          	or	a5,a0,a5
   20c00:	00000413          	li	s0,0
   20c04:	f8dff06f          	j	20b90 <__multf3+0x658>
   20c08:	00008737          	lui	a4,0x8
   20c0c:	00000413          	li	s0,0
   20c10:	00000513          	li	a0,0
   20c14:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20c18:	ea5ff06f          	j	20abc <__multf3+0x584>
   20c1c:	00100413          	li	s0,1
   20c20:	00008737          	lui	a4,0x8
   20c24:	02f41413          	slli	s0,s0,0x2f
   20c28:	00000513          	li	a0,0
   20c2c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20c30:	00000813          	li	a6,0
   20c34:	e89ff06f          	j	20abc <__multf3+0x584>
   20c38:	00000413          	li	s0,0
   20c3c:	00000513          	li	a0,0
   20c40:	fff68713          	addi	a4,a3,-1
   20c44:	e79ff06f          	j	20abc <__multf3+0x584>
   20c48:	00000413          	li	s0,0
   20c4c:	00000513          	li	a0,0
   20c50:	00100713          	li	a4,1
   20c54:	e69ff06f          	j	20abc <__multf3+0x584>

0000000000020c58 <__subtf3>:
   20c58:	fff00313          	li	t1,-1
   20c5c:	fd010113          	addi	sp,sp,-48
   20c60:	01035313          	srli	t1,t1,0x10
   20c64:	00008837          	lui	a6,0x8
   20c68:	0305de93          	srli	t4,a1,0x30
   20c6c:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20c70:	0306d893          	srli	a7,a3,0x30
   20c74:	00913c23          	sd	s1,24(sp)
   20c78:	03f6de13          	srli	t3,a3,0x3f
   20c7c:	03f5d493          	srli	s1,a1,0x3f
   20c80:	0066f6b3          	and	a3,a3,t1
   20c84:	0065f5b3          	and	a1,a1,t1
   20c88:	03d55793          	srli	a5,a0,0x3d
   20c8c:	03d65713          	srli	a4,a2,0x3d
   20c90:	02813023          	sd	s0,32(sp)
   20c94:	010efeb3          	and	t4,t4,a6
   20c98:	00359593          	slli	a1,a1,0x3
   20c9c:	00369693          	slli	a3,a3,0x3
   20ca0:	02113423          	sd	ra,40(sp)
   20ca4:	01213823          	sd	s2,16(sp)
   20ca8:	01313423          	sd	s3,8(sp)
   20cac:	0108f8b3          	and	a7,a7,a6
   20cb0:	000e8413          	mv	s0,t4
   20cb4:	00b7e7b3          	or	a5,a5,a1
   20cb8:	00351513          	slli	a0,a0,0x3
   20cbc:	00d766b3          	or	a3,a4,a3
   20cc0:	00361613          	slli	a2,a2,0x3
   20cc4:	01089663          	bne	a7,a6,20cd0 <__subtf3+0x78>
   20cc8:	00c6e733          	or	a4,a3,a2
   20ccc:	00071463          	bnez	a4,20cd4 <__subtf3+0x7c>
   20cd0:	001e4e13          	xori	t3,t3,1
   20cd4:	411e873b          	subw	a4,t4,a7
   20cd8:	000085b7          	lui	a1,0x8
   20cdc:	0007081b          	sext.w	a6,a4
   20ce0:	fff58313          	addi	t1,a1,-1 # 7fff <register_fini-0x80b1>
   20ce4:	2a9e1a63          	bne	t3,s1,20f98 <__subtf3+0x340>
   20ce8:	13005a63          	blez	a6,20e1c <__subtf3+0x1c4>
   20cec:	08089c63          	bnez	a7,20d84 <__subtf3+0x12c>
   20cf0:	00c6e5b3          	or	a1,a3,a2
   20cf4:	06058463          	beqz	a1,20d5c <__subtf3+0x104>
   20cf8:	fff7081b          	addiw	a6,a4,-1
   20cfc:	04081e63          	bnez	a6,20d58 <__subtf3+0x100>
   20d00:	00c50633          	add	a2,a0,a2
   20d04:	00d787b3          	add	a5,a5,a3
   20d08:	00a63533          	sltu	a0,a2,a0
   20d0c:	00a787b3          	add	a5,a5,a0
   20d10:	00060513          	mv	a0,a2
   20d14:	00c79713          	slli	a4,a5,0xc
   20d18:	04075263          	bgez	a4,20d5c <__subtf3+0x104>
   20d1c:	00008737          	lui	a4,0x8
   20d20:	00140413          	addi	s0,s0,1
   20d24:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20d28:	60e40c63          	beq	s0,a4,21340 <__subtf3+0x6e8>
   20d2c:	fff00593          	li	a1,-1
   20d30:	03359593          	slli	a1,a1,0x33
   20d34:	fff58593          	addi	a1,a1,-1
   20d38:	00b7f5b3          	and	a1,a5,a1
   20d3c:	00155813          	srli	a6,a0,0x1
   20d40:	00157513          	andi	a0,a0,1
   20d44:	03f59793          	slli	a5,a1,0x3f
   20d48:	00a86533          	or	a0,a6,a0
   20d4c:	00a7e533          	or	a0,a5,a0
   20d50:	0015d793          	srli	a5,a1,0x1
   20d54:	0080006f          	j	20d5c <__subtf3+0x104>
   20d58:	026e9e63          	bne	t4,t1,20d94 <__subtf3+0x13c>
   20d5c:	00757713          	andi	a4,a0,7
   20d60:	5e070463          	beqz	a4,21348 <__subtf3+0x6f0>
   20d64:	00f57713          	andi	a4,a0,15
   20d68:	00400693          	li	a3,4
   20d6c:	5cd70e63          	beq	a4,a3,21348 <__subtf3+0x6f0>
   20d70:	00450593          	addi	a1,a0,4
   20d74:	00a5b533          	sltu	a0,a1,a0
   20d78:	00a787b3          	add	a5,a5,a0
   20d7c:	00058513          	mv	a0,a1
   20d80:	5c80006f          	j	21348 <__subtf3+0x6f0>
   20d84:	fc6e8ce3          	beq	t4,t1,20d5c <__subtf3+0x104>
   20d88:	00100713          	li	a4,1
   20d8c:	03371713          	slli	a4,a4,0x33
   20d90:	00e6e6b3          	or	a3,a3,a4
   20d94:	07400713          	li	a4,116
   20d98:	07074c63          	blt	a4,a6,20e10 <__subtf3+0x1b8>
   20d9c:	03f00713          	li	a4,63
   20da0:	03074e63          	blt	a4,a6,20ddc <__subtf3+0x184>
   20da4:	04000593          	li	a1,64
   20da8:	410585bb          	subw	a1,a1,a6
   20dac:	00b69733          	sll	a4,a3,a1
   20db0:	010658b3          	srl	a7,a2,a6
   20db4:	00b61633          	sll	a2,a2,a1
   20db8:	01176733          	or	a4,a4,a7
   20dbc:	00c03633          	snez	a2,a2
   20dc0:	00c76633          	or	a2,a4,a2
   20dc4:	0106d6b3          	srl	a3,a3,a6
   20dc8:	00a60633          	add	a2,a2,a0
   20dcc:	00f686b3          	add	a3,a3,a5
   20dd0:	00a637b3          	sltu	a5,a2,a0
   20dd4:	00f687b3          	add	a5,a3,a5
   20dd8:	f39ff06f          	j	20d10 <__subtf3+0xb8>
   20ddc:	fc08071b          	addiw	a4,a6,-64
   20de0:	04000893          	li	a7,64
   20de4:	00e6d733          	srl	a4,a3,a4
   20de8:	00000593          	li	a1,0
   20dec:	01180863          	beq	a6,a7,20dfc <__subtf3+0x1a4>
   20df0:	08000593          	li	a1,128
   20df4:	4105883b          	subw	a6,a1,a6
   20df8:	010695b3          	sll	a1,a3,a6
   20dfc:	00c5e633          	or	a2,a1,a2
   20e00:	00c03633          	snez	a2,a2
   20e04:	00c76633          	or	a2,a4,a2
   20e08:	00000693          	li	a3,0
   20e0c:	fbdff06f          	j	20dc8 <__subtf3+0x170>
   20e10:	00c6e633          	or	a2,a3,a2
   20e14:	00c03633          	snez	a2,a2
   20e18:	ff1ff06f          	j	20e08 <__subtf3+0x1b0>
   20e1c:	0c080a63          	beqz	a6,20ef0 <__subtf3+0x298>
   20e20:	060e9c63          	bnez	t4,20e98 <__subtf3+0x240>
   20e24:	00a7e5b3          	or	a1,a5,a0
   20e28:	4e058663          	beqz	a1,21314 <__subtf3+0x6bc>
   20e2c:	fff00593          	li	a1,-1
   20e30:	00b81e63          	bne	a6,a1,20e4c <__subtf3+0x1f4>
   20e34:	00c50533          	add	a0,a0,a2
   20e38:	00d787b3          	add	a5,a5,a3
   20e3c:	00c53633          	sltu	a2,a0,a2
   20e40:	00c787b3          	add	a5,a5,a2
   20e44:	00088413          	mv	s0,a7
   20e48:	ecdff06f          	j	20d14 <__subtf3+0xbc>
   20e4c:	4c688463          	beq	a7,t1,21314 <__subtf3+0x6bc>
   20e50:	fff74713          	not	a4,a4
   20e54:	0007071b          	sext.w	a4,a4
   20e58:	07400593          	li	a1,116
   20e5c:	08e5c463          	blt	a1,a4,20ee4 <__subtf3+0x28c>
   20e60:	03f00593          	li	a1,63
   20e64:	04e5c663          	blt	a1,a4,20eb0 <__subtf3+0x258>
   20e68:	04000813          	li	a6,64
   20e6c:	40e8083b          	subw	a6,a6,a4
   20e70:	00e55333          	srl	t1,a0,a4
   20e74:	010795b3          	sll	a1,a5,a6
   20e78:	01051533          	sll	a0,a0,a6
   20e7c:	0065e5b3          	or	a1,a1,t1
   20e80:	00a03533          	snez	a0,a0
   20e84:	00a5e533          	or	a0,a1,a0
   20e88:	00e7d733          	srl	a4,a5,a4
   20e8c:	00c50533          	add	a0,a0,a2
   20e90:	00d707b3          	add	a5,a4,a3
   20e94:	fa9ff06f          	j	20e3c <__subtf3+0x1e4>
   20e98:	46688e63          	beq	a7,t1,21314 <__subtf3+0x6bc>
   20e9c:	00100593          	li	a1,1
   20ea0:	03359593          	slli	a1,a1,0x33
   20ea4:	40e0073b          	negw	a4,a4
   20ea8:	00b7e7b3          	or	a5,a5,a1
   20eac:	fadff06f          	j	20e58 <__subtf3+0x200>
   20eb0:	fc07059b          	addiw	a1,a4,-64
   20eb4:	04000313          	li	t1,64
   20eb8:	00b7d5b3          	srl	a1,a5,a1
   20ebc:	00000813          	li	a6,0
   20ec0:	00670863          	beq	a4,t1,20ed0 <__subtf3+0x278>
   20ec4:	08000813          	li	a6,128
   20ec8:	40e8073b          	subw	a4,a6,a4
   20ecc:	00e79833          	sll	a6,a5,a4
   20ed0:	00a86533          	or	a0,a6,a0
   20ed4:	00a03533          	snez	a0,a0
   20ed8:	00a5e533          	or	a0,a1,a0
   20edc:	00000713          	li	a4,0
   20ee0:	fadff06f          	j	20e8c <__subtf3+0x234>
   20ee4:	00a7e533          	or	a0,a5,a0
   20ee8:	00a03533          	snez	a0,a0
   20eec:	ff1ff06f          	j	20edc <__subtf3+0x284>
   20ef0:	001e8813          	addi	a6,t4,1
   20ef4:	ffe58593          	addi	a1,a1,-2
   20ef8:	00b875b3          	and	a1,a6,a1
   20efc:	06059863          	bnez	a1,20f6c <__subtf3+0x314>
   20f00:	00a7e733          	or	a4,a5,a0
   20f04:	040e9263          	bnez	t4,20f48 <__subtf3+0x2f0>
   20f08:	40070e63          	beqz	a4,21324 <__subtf3+0x6cc>
   20f0c:	00c6e733          	or	a4,a3,a2
   20f10:	e40706e3          	beqz	a4,20d5c <__subtf3+0x104>
   20f14:	00c50633          	add	a2,a0,a2
   20f18:	00a63533          	sltu	a0,a2,a0
   20f1c:	00d787b3          	add	a5,a5,a3
   20f20:	00a787b3          	add	a5,a5,a0
   20f24:	00c79713          	slli	a4,a5,0xc
   20f28:	00060513          	mv	a0,a2
   20f2c:	e20758e3          	bgez	a4,20d5c <__subtf3+0x104>
   20f30:	fff00713          	li	a4,-1
   20f34:	03371713          	slli	a4,a4,0x33
   20f38:	fff70713          	addi	a4,a4,-1
   20f3c:	00e7f7b3          	and	a5,a5,a4
   20f40:	00100413          	li	s0,1
   20f44:	e19ff06f          	j	20d5c <__subtf3+0x104>
   20f48:	3e070463          	beqz	a4,21330 <__subtf3+0x6d8>
   20f4c:	00c6e633          	or	a2,a3,a2
   20f50:	28060863          	beqz	a2,211e0 <__subtf3+0x588>
   20f54:	00100793          	li	a5,1
   20f58:	00000493          	li	s1,0
   20f5c:	03279793          	slli	a5,a5,0x32
   20f60:	00000513          	li	a0,0
   20f64:	00030413          	mv	s0,t1
   20f68:	3e00006f          	j	21348 <__subtf3+0x6f0>
   20f6c:	3c680863          	beq	a6,t1,2133c <__subtf3+0x6e4>
   20f70:	00c50633          	add	a2,a0,a2
   20f74:	00d786b3          	add	a3,a5,a3
   20f78:	00a637b3          	sltu	a5,a2,a0
   20f7c:	00f686b3          	add	a3,a3,a5
   20f80:	03f69513          	slli	a0,a3,0x3f
   20f84:	00165613          	srli	a2,a2,0x1
   20f88:	00c56533          	or	a0,a0,a2
   20f8c:	0016d793          	srli	a5,a3,0x1
   20f90:	00080413          	mv	s0,a6
   20f94:	dc9ff06f          	j	20d5c <__subtf3+0x104>
   20f98:	0f005263          	blez	a6,2107c <__subtf3+0x424>
   20f9c:	08089663          	bnez	a7,21028 <__subtf3+0x3d0>
   20fa0:	00c6e5b3          	or	a1,a3,a2
   20fa4:	da058ce3          	beqz	a1,20d5c <__subtf3+0x104>
   20fa8:	fff7081b          	addiw	a6,a4,-1
   20fac:	02081863          	bnez	a6,20fdc <__subtf3+0x384>
   20fb0:	40c50633          	sub	a2,a0,a2
   20fb4:	40d787b3          	sub	a5,a5,a3
   20fb8:	00c53533          	sltu	a0,a0,a2
   20fbc:	40a787b3          	sub	a5,a5,a0
   20fc0:	00060513          	mv	a0,a2
   20fc4:	00c79713          	slli	a4,a5,0xc
   20fc8:	d8075ae3          	bgez	a4,20d5c <__subtf3+0x104>
   20fcc:	00d79913          	slli	s2,a5,0xd
   20fd0:	00d95913          	srli	s2,s2,0xd
   20fd4:	00050993          	mv	s3,a0
   20fd8:	2440006f          	j	2121c <__subtf3+0x5c4>
   20fdc:	d86e80e3          	beq	t4,t1,20d5c <__subtf3+0x104>
   20fe0:	07400713          	li	a4,116
   20fe4:	09074663          	blt	a4,a6,21070 <__subtf3+0x418>
   20fe8:	03f00713          	li	a4,63
   20fec:	05074863          	blt	a4,a6,2103c <__subtf3+0x3e4>
   20ff0:	04000593          	li	a1,64
   20ff4:	410585bb          	subw	a1,a1,a6
   20ff8:	00b69733          	sll	a4,a3,a1
   20ffc:	010658b3          	srl	a7,a2,a6
   21000:	00b61633          	sll	a2,a2,a1
   21004:	01176733          	or	a4,a4,a7
   21008:	00c03633          	snez	a2,a2
   2100c:	00c76633          	or	a2,a4,a2
   21010:	0106d6b3          	srl	a3,a3,a6
   21014:	40c50633          	sub	a2,a0,a2
   21018:	40d786b3          	sub	a3,a5,a3
   2101c:	00c537b3          	sltu	a5,a0,a2
   21020:	40f687b3          	sub	a5,a3,a5
   21024:	f9dff06f          	j	20fc0 <__subtf3+0x368>
   21028:	d26e8ae3          	beq	t4,t1,20d5c <__subtf3+0x104>
   2102c:	00100713          	li	a4,1
   21030:	03371713          	slli	a4,a4,0x33
   21034:	00e6e6b3          	or	a3,a3,a4
   21038:	fa9ff06f          	j	20fe0 <__subtf3+0x388>
   2103c:	fc08071b          	addiw	a4,a6,-64
   21040:	04000893          	li	a7,64
   21044:	00e6d733          	srl	a4,a3,a4
   21048:	00000593          	li	a1,0
   2104c:	01180863          	beq	a6,a7,2105c <__subtf3+0x404>
   21050:	08000593          	li	a1,128
   21054:	4105883b          	subw	a6,a1,a6
   21058:	010695b3          	sll	a1,a3,a6
   2105c:	00c5e633          	or	a2,a1,a2
   21060:	00c03633          	snez	a2,a2
   21064:	00c76633          	or	a2,a4,a2
   21068:	00000693          	li	a3,0
   2106c:	fa9ff06f          	j	21014 <__subtf3+0x3bc>
   21070:	00c6e633          	or	a2,a3,a2
   21074:	00c03633          	snez	a2,a2
   21078:	ff1ff06f          	j	21068 <__subtf3+0x410>
   2107c:	0c080c63          	beqz	a6,21154 <__subtf3+0x4fc>
   21080:	060e9e63          	bnez	t4,210fc <__subtf3+0x4a4>
   21084:	00a7e5b3          	or	a1,a5,a0
   21088:	34058c63          	beqz	a1,213e0 <__subtf3+0x788>
   2108c:	fff00593          	li	a1,-1
   21090:	02b81063          	bne	a6,a1,210b0 <__subtf3+0x458>
   21094:	40a60533          	sub	a0,a2,a0
   21098:	40f687b3          	sub	a5,a3,a5
   2109c:	00a63633          	sltu	a2,a2,a0
   210a0:	40c787b3          	sub	a5,a5,a2
   210a4:	00088413          	mv	s0,a7
   210a8:	000e0493          	mv	s1,t3
   210ac:	f19ff06f          	j	20fc4 <__subtf3+0x36c>
   210b0:	32688863          	beq	a7,t1,213e0 <__subtf3+0x788>
   210b4:	fff74713          	not	a4,a4
   210b8:	0007071b          	sext.w	a4,a4
   210bc:	07400593          	li	a1,116
   210c0:	08e5c463          	blt	a1,a4,21148 <__subtf3+0x4f0>
   210c4:	03f00593          	li	a1,63
   210c8:	04e5c663          	blt	a1,a4,21114 <__subtf3+0x4bc>
   210cc:	04000813          	li	a6,64
   210d0:	40e8083b          	subw	a6,a6,a4
   210d4:	00e55333          	srl	t1,a0,a4
   210d8:	010795b3          	sll	a1,a5,a6
   210dc:	01051533          	sll	a0,a0,a6
   210e0:	0065e5b3          	or	a1,a1,t1
   210e4:	00a03533          	snez	a0,a0
   210e8:	00a5e533          	or	a0,a1,a0
   210ec:	00e7d733          	srl	a4,a5,a4
   210f0:	40a60533          	sub	a0,a2,a0
   210f4:	40e687b3          	sub	a5,a3,a4
   210f8:	fa5ff06f          	j	2109c <__subtf3+0x444>
   210fc:	2e688263          	beq	a7,t1,213e0 <__subtf3+0x788>
   21100:	00100593          	li	a1,1
   21104:	03359593          	slli	a1,a1,0x33
   21108:	40e0073b          	negw	a4,a4
   2110c:	00b7e7b3          	or	a5,a5,a1
   21110:	fadff06f          	j	210bc <__subtf3+0x464>
   21114:	fc07059b          	addiw	a1,a4,-64
   21118:	04000313          	li	t1,64
   2111c:	00b7d5b3          	srl	a1,a5,a1
   21120:	00000813          	li	a6,0
   21124:	00670863          	beq	a4,t1,21134 <__subtf3+0x4dc>
   21128:	08000813          	li	a6,128
   2112c:	40e8073b          	subw	a4,a6,a4
   21130:	00e79833          	sll	a6,a5,a4
   21134:	00a86533          	or	a0,a6,a0
   21138:	00a03533          	snez	a0,a0
   2113c:	00a5e533          	or	a0,a1,a0
   21140:	00000713          	li	a4,0
   21144:	fadff06f          	j	210f0 <__subtf3+0x498>
   21148:	00a7e533          	or	a0,a5,a0
   2114c:	00a03533          	snez	a0,a0
   21150:	ff1ff06f          	j	21140 <__subtf3+0x4e8>
   21154:	001e8713          	addi	a4,t4,1
   21158:	ffe58593          	addi	a1,a1,-2
   2115c:	00b775b3          	and	a1,a4,a1
   21160:	08059863          	bnez	a1,211f0 <__subtf3+0x598>
   21164:	00a7e5b3          	or	a1,a5,a0
   21168:	00c6e733          	or	a4,a3,a2
   2116c:	060e9063          	bnez	t4,211cc <__subtf3+0x574>
   21170:	00059c63          	bnez	a1,21188 <__subtf3+0x530>
   21174:	26070e63          	beqz	a4,213f0 <__subtf3+0x798>
   21178:	00068793          	mv	a5,a3
   2117c:	00060513          	mv	a0,a2
   21180:	000e0493          	mv	s1,t3
   21184:	bd9ff06f          	j	20d5c <__subtf3+0x104>
   21188:	bc070ae3          	beqz	a4,20d5c <__subtf3+0x104>
   2118c:	40c505b3          	sub	a1,a0,a2
   21190:	00b53833          	sltu	a6,a0,a1
   21194:	40d78733          	sub	a4,a5,a3
   21198:	41070733          	sub	a4,a4,a6
   2119c:	00c71813          	slli	a6,a4,0xc
   211a0:	00085c63          	bgez	a6,211b8 <__subtf3+0x560>
   211a4:	40a60533          	sub	a0,a2,a0
   211a8:	40f687b3          	sub	a5,a3,a5
   211ac:	00a63633          	sltu	a2,a2,a0
   211b0:	40c787b3          	sub	a5,a5,a2
   211b4:	fcdff06f          	j	21180 <__subtf3+0x528>
   211b8:	00e5e533          	or	a0,a1,a4
   211bc:	24050263          	beqz	a0,21400 <__subtf3+0x7a8>
   211c0:	00070793          	mv	a5,a4
   211c4:	00058513          	mv	a0,a1
   211c8:	b95ff06f          	j	20d5c <__subtf3+0x104>
   211cc:	00059e63          	bnez	a1,211e8 <__subtf3+0x590>
   211d0:	22070c63          	beqz	a4,21408 <__subtf3+0x7b0>
   211d4:	00068793          	mv	a5,a3
   211d8:	00060513          	mv	a0,a2
   211dc:	000e0493          	mv	s1,t3
   211e0:	00030413          	mv	s0,t1
   211e4:	b79ff06f          	j	20d5c <__subtf3+0x104>
   211e8:	fe070ce3          	beqz	a4,211e0 <__subtf3+0x588>
   211ec:	d69ff06f          	j	20f54 <__subtf3+0x2fc>
   211f0:	40c509b3          	sub	s3,a0,a2
   211f4:	01353733          	sltu	a4,a0,s3
   211f8:	40d78933          	sub	s2,a5,a3
   211fc:	40e90933          	sub	s2,s2,a4
   21200:	00c91713          	slli	a4,s2,0xc
   21204:	08075863          	bgez	a4,21294 <__subtf3+0x63c>
   21208:	40a609b3          	sub	s3,a2,a0
   2120c:	40f687b3          	sub	a5,a3,a5
   21210:	01363633          	sltu	a2,a2,s3
   21214:	40c78933          	sub	s2,a5,a2
   21218:	000e0493          	mv	s1,t3
   2121c:	08090663          	beqz	s2,212a8 <__subtf3+0x650>
   21220:	00090513          	mv	a0,s2
   21224:	f08ef0ef          	jal	ra,1092c <__clzdi2>
   21228:	0005051b          	sext.w	a0,a0
   2122c:	ff45069b          	addiw	a3,a0,-12
   21230:	03f00793          	li	a5,63
   21234:	00068713          	mv	a4,a3
   21238:	08d7c063          	blt	a5,a3,212b8 <__subtf3+0x660>
   2123c:	04000613          	li	a2,64
   21240:	40d6063b          	subw	a2,a2,a3
   21244:	00d917b3          	sll	a5,s2,a3
   21248:	00c9d633          	srl	a2,s3,a2
   2124c:	00f66633          	or	a2,a2,a5
   21250:	00d99533          	sll	a0,s3,a3
   21254:	0a86c463          	blt	a3,s0,212fc <__subtf3+0x6a4>
   21258:	4087073b          	subw	a4,a4,s0
   2125c:	0017079b          	addiw	a5,a4,1
   21260:	03f00693          	li	a3,63
   21264:	06f6c263          	blt	a3,a5,212c8 <__subtf3+0x670>
   21268:	04000693          	li	a3,64
   2126c:	40f686bb          	subw	a3,a3,a5
   21270:	00f555b3          	srl	a1,a0,a5
   21274:	00d61733          	sll	a4,a2,a3
   21278:	00d51533          	sll	a0,a0,a3
   2127c:	00b76733          	or	a4,a4,a1
   21280:	00a03533          	snez	a0,a0
   21284:	00a76533          	or	a0,a4,a0
   21288:	00f657b3          	srl	a5,a2,a5
   2128c:	00000413          	li	s0,0
   21290:	acdff06f          	j	20d5c <__subtf3+0x104>
   21294:	0129e533          	or	a0,s3,s2
   21298:	f80512e3          	bnez	a0,2121c <__subtf3+0x5c4>
   2129c:	00000793          	li	a5,0
   212a0:	00000413          	li	s0,0
   212a4:	1540006f          	j	213f8 <__subtf3+0x7a0>
   212a8:	00098513          	mv	a0,s3
   212ac:	e80ef0ef          	jal	ra,1092c <__clzdi2>
   212b0:	0405051b          	addiw	a0,a0,64
   212b4:	f79ff06f          	j	2122c <__subtf3+0x5d4>
   212b8:	fb45051b          	addiw	a0,a0,-76
   212bc:	00a99633          	sll	a2,s3,a0
   212c0:	00000513          	li	a0,0
   212c4:	f91ff06f          	j	21254 <__subtf3+0x5fc>
   212c8:	fc17071b          	addiw	a4,a4,-63
   212cc:	04000813          	li	a6,64
   212d0:	00e65733          	srl	a4,a2,a4
   212d4:	00000693          	li	a3,0
   212d8:	01078863          	beq	a5,a6,212e8 <__subtf3+0x690>
   212dc:	08000693          	li	a3,128
   212e0:	40f686bb          	subw	a3,a3,a5
   212e4:	00d616b3          	sll	a3,a2,a3
   212e8:	00d56533          	or	a0,a0,a3
   212ec:	00a03533          	snez	a0,a0
   212f0:	00a76533          	or	a0,a4,a0
   212f4:	00000793          	li	a5,0
   212f8:	f95ff06f          	j	2128c <__subtf3+0x634>
   212fc:	fff00793          	li	a5,-1
   21300:	03379793          	slli	a5,a5,0x33
   21304:	fff78793          	addi	a5,a5,-1
   21308:	40d40433          	sub	s0,s0,a3
   2130c:	00f677b3          	and	a5,a2,a5
   21310:	a4dff06f          	j	20d5c <__subtf3+0x104>
   21314:	00068793          	mv	a5,a3
   21318:	00060513          	mv	a0,a2
   2131c:	00088413          	mv	s0,a7
   21320:	a3dff06f          	j	20d5c <__subtf3+0x104>
   21324:	00068793          	mv	a5,a3
   21328:	00060513          	mv	a0,a2
   2132c:	a31ff06f          	j	20d5c <__subtf3+0x104>
   21330:	00068793          	mv	a5,a3
   21334:	00060513          	mv	a0,a2
   21338:	ea9ff06f          	j	211e0 <__subtf3+0x588>
   2133c:	00080413          	mv	s0,a6
   21340:	00000793          	li	a5,0
   21344:	00000513          	li	a0,0
   21348:	00c79713          	slli	a4,a5,0xc
   2134c:	02075263          	bgez	a4,21370 <__subtf3+0x718>
   21350:	00008737          	lui	a4,0x8
   21354:	00140413          	addi	s0,s0,1
   21358:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   2135c:	0ce40063          	beq	s0,a4,2141c <__subtf3+0x7c4>
   21360:	fff00713          	li	a4,-1
   21364:	03371713          	slli	a4,a4,0x33
   21368:	fff70713          	addi	a4,a4,-1
   2136c:	00e7f7b3          	and	a5,a5,a4
   21370:	03d79713          	slli	a4,a5,0x3d
   21374:	00355513          	srli	a0,a0,0x3
   21378:	00a76533          	or	a0,a4,a0
   2137c:	00008737          	lui	a4,0x8
   21380:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   21384:	0037d793          	srli	a5,a5,0x3
   21388:	02e41063          	bne	s0,a4,213a8 <__subtf3+0x750>
   2138c:	00f56533          	or	a0,a0,a5
   21390:	00000793          	li	a5,0
   21394:	00050a63          	beqz	a0,213a8 <__subtf3+0x750>
   21398:	00100793          	li	a5,1
   2139c:	02f79793          	slli	a5,a5,0x2f
   213a0:	00000513          	li	a0,0
   213a4:	00000493          	li	s1,0
   213a8:	03141713          	slli	a4,s0,0x31
   213ac:	02813083          	ld	ra,40(sp)
   213b0:	02013403          	ld	s0,32(sp)
   213b4:	01079793          	slli	a5,a5,0x10
   213b8:	00175713          	srli	a4,a4,0x1
   213bc:	0107d793          	srli	a5,a5,0x10
   213c0:	03f49593          	slli	a1,s1,0x3f
   213c4:	00e7e7b3          	or	a5,a5,a4
   213c8:	01813483          	ld	s1,24(sp)
   213cc:	01013903          	ld	s2,16(sp)
   213d0:	00813983          	ld	s3,8(sp)
   213d4:	00b7e5b3          	or	a1,a5,a1
   213d8:	03010113          	addi	sp,sp,48
   213dc:	00008067          	ret
   213e0:	00068793          	mv	a5,a3
   213e4:	00060513          	mv	a0,a2
   213e8:	00088413          	mv	s0,a7
   213ec:	d95ff06f          	j	21180 <__subtf3+0x528>
   213f0:	00000793          	li	a5,0
   213f4:	00000513          	li	a0,0
   213f8:	00000493          	li	s1,0
   213fc:	f4dff06f          	j	21348 <__subtf3+0x6f0>
   21400:	00000793          	li	a5,0
   21404:	ff5ff06f          	j	213f8 <__subtf3+0x7a0>
   21408:	00100793          	li	a5,1
   2140c:	00000513          	li	a0,0
   21410:	00000493          	li	s1,0
   21414:	03279793          	slli	a5,a5,0x32
   21418:	b4dff06f          	j	20f64 <__subtf3+0x30c>
   2141c:	00000793          	li	a5,0
   21420:	00000513          	li	a0,0
   21424:	f4dff06f          	j	21370 <__subtf3+0x718>

0000000000021428 <__fixtfsi>:
   21428:	00159513          	slli	a0,a1,0x1
   2142c:	00004737          	lui	a4,0x4
   21430:	03155793          	srli	a5,a0,0x31
   21434:	ffe70613          	addi	a2,a4,-2 # 3ffe <register_fini-0xc0b2>
   21438:	03f5d693          	srli	a3,a1,0x3f
   2143c:	00000513          	li	a0,0
   21440:	04f65663          	bge	a2,a5,2148c <__fixtfsi+0x64>
   21444:	01d70713          	addi	a4,a4,29
   21448:	00f75a63          	bge	a4,a5,2145c <__fixtfsi+0x34>
   2144c:	800005b7          	lui	a1,0x80000
   21450:	fff5c593          	not	a1,a1
   21454:	00d5853b          	addw	a0,a1,a3
   21458:	00008067          	ret
   2145c:	01059593          	slli	a1,a1,0x10
   21460:	00100513          	li	a0,1
   21464:	03051513          	slli	a0,a0,0x30
   21468:	0105d593          	srli	a1,a1,0x10
   2146c:	00a5e5b3          	or	a1,a1,a0
   21470:	00004537          	lui	a0,0x4
   21474:	02f5051b          	addiw	a0,a0,47
   21478:	40f5053b          	subw	a0,a0,a5
   2147c:	00a5d5b3          	srl	a1,a1,a0
   21480:	0005851b          	sext.w	a0,a1
   21484:	00068463          	beqz	a3,2148c <__fixtfsi+0x64>
   21488:	40a0053b          	negw	a0,a0
   2148c:	00008067          	ret

0000000000021490 <__floatsitf>:
   21490:	fe010113          	addi	sp,sp,-32
   21494:	00113c23          	sd	ra,24(sp)
   21498:	00813823          	sd	s0,16(sp)
   2149c:	00913423          	sd	s1,8(sp)
   214a0:	06050863          	beqz	a0,21510 <__floatsitf+0x80>
   214a4:	0005079b          	sext.w	a5,a0
   214a8:	03f55493          	srli	s1,a0,0x3f
   214ac:	00055463          	bgez	a0,214b4 <__floatsitf+0x24>
   214b0:	40f007bb          	negw	a5,a5
   214b4:	02079413          	slli	s0,a5,0x20
   214b8:	02045413          	srli	s0,s0,0x20
   214bc:	00040513          	mv	a0,s0
   214c0:	c6cef0ef          	jal	ra,1092c <__clzdi2>
   214c4:	00004737          	lui	a4,0x4
   214c8:	03e7079b          	addiw	a5,a4,62
   214cc:	40a785bb          	subw	a1,a5,a0
   214d0:	02f7071b          	addiw	a4,a4,47
   214d4:	40b7053b          	subw	a0,a4,a1
   214d8:	00a41533          	sll	a0,s0,a0
   214dc:	01813083          	ld	ra,24(sp)
   214e0:	01013403          	ld	s0,16(sp)
   214e4:	01051513          	slli	a0,a0,0x10
   214e8:	03159593          	slli	a1,a1,0x31
   214ec:	01055513          	srli	a0,a0,0x10
   214f0:	0015d593          	srli	a1,a1,0x1
   214f4:	03f49493          	slli	s1,s1,0x3f
   214f8:	00b565b3          	or	a1,a0,a1
   214fc:	0095e5b3          	or	a1,a1,s1
   21500:	00000513          	li	a0,0
   21504:	00813483          	ld	s1,8(sp)
   21508:	02010113          	addi	sp,sp,32
   2150c:	00008067          	ret
   21510:	00000513          	li	a0,0
   21514:	00000593          	li	a1,0
   21518:	00000493          	li	s1,0
   2151c:	fc1ff06f          	j	214dc <__floatsitf+0x4c>

0000000000021520 <__extenddftf2>:
   21520:	03455793          	srli	a5,a0,0x34
   21524:	7ff7f793          	andi	a5,a5,2047
   21528:	fe010113          	addi	sp,sp,-32
   2152c:	00178713          	addi	a4,a5,1
   21530:	00813823          	sd	s0,16(sp)
   21534:	00913423          	sd	s1,8(sp)
   21538:	00c51413          	slli	s0,a0,0xc
   2153c:	00113c23          	sd	ra,24(sp)
   21540:	7fe77713          	andi	a4,a4,2046
   21544:	00c45413          	srli	s0,s0,0xc
   21548:	03f55493          	srli	s1,a0,0x3f
   2154c:	04070663          	beqz	a4,21598 <__extenddftf2+0x78>
   21550:	00004737          	lui	a4,0x4
   21554:	c0070713          	addi	a4,a4,-1024 # 3c00 <register_fini-0xc4b0>
   21558:	00e787b3          	add	a5,a5,a4
   2155c:	00445713          	srli	a4,s0,0x4
   21560:	03c41413          	slli	s0,s0,0x3c
   21564:	00040513          	mv	a0,s0
   21568:	01813083          	ld	ra,24(sp)
   2156c:	01013403          	ld	s0,16(sp)
   21570:	01071713          	slli	a4,a4,0x10
   21574:	03179793          	slli	a5,a5,0x31
   21578:	0017d793          	srli	a5,a5,0x1
   2157c:	01075713          	srli	a4,a4,0x10
   21580:	03f49593          	slli	a1,s1,0x3f
   21584:	00f767b3          	or	a5,a4,a5
   21588:	00813483          	ld	s1,8(sp)
   2158c:	00b7e5b3          	or	a1,a5,a1
   21590:	02010113          	addi	sp,sp,32
   21594:	00008067          	ret
   21598:	04079a63          	bnez	a5,215ec <__extenddftf2+0xcc>
   2159c:	00000713          	li	a4,0
   215a0:	fc0402e3          	beqz	s0,21564 <__extenddftf2+0x44>
   215a4:	00040513          	mv	a0,s0
   215a8:	b84ef0ef          	jal	ra,1092c <__clzdi2>
   215ac:	0005071b          	sext.w	a4,a0
   215b0:	00e00793          	li	a5,14
   215b4:	02e7c463          	blt	a5,a4,215dc <__extenddftf2+0xbc>
   215b8:	00f00713          	li	a4,15
   215bc:	40a7073b          	subw	a4,a4,a0
   215c0:	0315079b          	addiw	a5,a0,49
   215c4:	00e45733          	srl	a4,s0,a4
   215c8:	00f41433          	sll	s0,s0,a5
   215cc:	000047b7          	lui	a5,0x4
   215d0:	c0c7879b          	addiw	a5,a5,-1012
   215d4:	40a787bb          	subw	a5,a5,a0
   215d8:	f8dff06f          	j	21564 <__extenddftf2+0x44>
   215dc:	ff15071b          	addiw	a4,a0,-15
   215e0:	00e41733          	sll	a4,s0,a4
   215e4:	00000413          	li	s0,0
   215e8:	fe5ff06f          	j	215cc <__extenddftf2+0xac>
   215ec:	00000713          	li	a4,0
   215f0:	00040c63          	beqz	s0,21608 <__extenddftf2+0xe8>
   215f4:	00100793          	li	a5,1
   215f8:	00445713          	srli	a4,s0,0x4
   215fc:	02f79793          	slli	a5,a5,0x2f
   21600:	00f76733          	or	a4,a4,a5
   21604:	03c41413          	slli	s0,s0,0x3c
   21608:	000087b7          	lui	a5,0x8
   2160c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   21610:	f55ff06f          	j	21564 <__extenddftf2+0x44>

0000000000021614 <__trunctfdf2>:
   21614:	00008837          	lui	a6,0x8
   21618:	fff80793          	addi	a5,a6,-1 # 7fff <register_fini-0x80b1>
   2161c:	0305d713          	srli	a4,a1,0x30
   21620:	03f5d693          	srli	a3,a1,0x3f
   21624:	01059593          	slli	a1,a1,0x10
   21628:	00f77733          	and	a4,a4,a5
   2162c:	00d5d793          	srli	a5,a1,0xd
   21630:	03d55593          	srli	a1,a0,0x3d
   21634:	00f5e5b3          	or	a1,a1,a5
   21638:	ffe80813          	addi	a6,a6,-2
   2163c:	00170793          	addi	a5,a4,1
   21640:	0107f833          	and	a6,a5,a6
   21644:	00351613          	slli	a2,a0,0x3
   21648:	0c080263          	beqz	a6,2170c <__trunctfdf2+0xf8>
   2164c:	ffffc7b7          	lui	a5,0xffffc
   21650:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd7bb0>
   21654:	00f70733          	add	a4,a4,a5
   21658:	7fe00793          	li	a5,2046
   2165c:	0ee7c263          	blt	a5,a4,21740 <__trunctfdf2+0x12c>
   21660:	08e04863          	bgtz	a4,216f0 <__trunctfdf2+0xdc>
   21664:	fcc00793          	li	a5,-52
   21668:	14f74063          	blt	a4,a5,217a8 <__trunctfdf2+0x194>
   2166c:	00100793          	li	a5,1
   21670:	03379793          	slli	a5,a5,0x33
   21674:	00f5e5b3          	or	a1,a1,a5
   21678:	03d00793          	li	a5,61
   2167c:	40e787b3          	sub	a5,a5,a4
   21680:	0007051b          	sext.w	a0,a4
   21684:	03f00713          	li	a4,63
   21688:	02f74c63          	blt	a4,a5,216c0 <__trunctfdf2+0xac>
   2168c:	03d00793          	li	a5,61
   21690:	0035071b          	addiw	a4,a0,3
   21694:	40a787bb          	subw	a5,a5,a0
   21698:	00f657b3          	srl	a5,a2,a5
   2169c:	00e61633          	sll	a2,a2,a4
   216a0:	00c03633          	snez	a2,a2
   216a4:	00c7e7b3          	or	a5,a5,a2
   216a8:	00e595b3          	sll	a1,a1,a4
   216ac:	00f5e7b3          	or	a5,a1,a5
   216b0:	00000713          	li	a4,0
   216b4:	0077f613          	andi	a2,a5,7
   216b8:	08060863          	beqz	a2,21748 <__trunctfdf2+0x134>
   216bc:	0f40006f          	j	217b0 <__trunctfdf2+0x19c>
   216c0:	ffd00713          	li	a4,-3
   216c4:	40a7073b          	subw	a4,a4,a0
   216c8:	04000893          	li	a7,64
   216cc:	00e5d733          	srl	a4,a1,a4
   216d0:	00000813          	li	a6,0
   216d4:	01178663          	beq	a5,a7,216e0 <__trunctfdf2+0xcc>
   216d8:	0435079b          	addiw	a5,a0,67
   216dc:	00f59833          	sll	a6,a1,a5
   216e0:	00c867b3          	or	a5,a6,a2
   216e4:	00f037b3          	snez	a5,a5
   216e8:	00f767b3          	or	a5,a4,a5
   216ec:	fc5ff06f          	j	216b0 <__trunctfdf2+0x9c>
   216f0:	00751793          	slli	a5,a0,0x7
   216f4:	00f037b3          	snez	a5,a5
   216f8:	03c65613          	srli	a2,a2,0x3c
   216fc:	00c7e7b3          	or	a5,a5,a2
   21700:	00459593          	slli	a1,a1,0x4
   21704:	00f5e7b3          	or	a5,a1,a5
   21708:	fadff06f          	j	216b4 <__trunctfdf2+0xa0>
   2170c:	00c5e7b3          	or	a5,a1,a2
   21710:	00071663          	bnez	a4,2171c <__trunctfdf2+0x108>
   21714:	00f037b3          	snez	a5,a5
   21718:	f9dff06f          	j	216b4 <__trunctfdf2+0xa0>
   2171c:	7ff00713          	li	a4,2047
   21720:	02078463          	beqz	a5,21748 <__trunctfdf2+0x134>
   21724:	03c65613          	srli	a2,a2,0x3c
   21728:	00459593          	slli	a1,a1,0x4
   2172c:	00c5e5b3          	or	a1,a1,a2
   21730:	00100793          	li	a5,1
   21734:	ff85f593          	andi	a1,a1,-8
   21738:	03679793          	slli	a5,a5,0x36
   2173c:	fc9ff06f          	j	21704 <__trunctfdf2+0xf0>
   21740:	00000793          	li	a5,0
   21744:	7ff00713          	li	a4,2047
   21748:	00879613          	slli	a2,a5,0x8
   2174c:	02065063          	bgez	a2,2176c <__trunctfdf2+0x158>
   21750:	00170713          	addi	a4,a4,1
   21754:	7ff00613          	li	a2,2047
   21758:	06c70663          	beq	a4,a2,217c4 <__trunctfdf2+0x1b0>
   2175c:	fff00613          	li	a2,-1
   21760:	03761613          	slli	a2,a2,0x37
   21764:	fff60613          	addi	a2,a2,-1
   21768:	00c7f7b3          	and	a5,a5,a2
   2176c:	7ff00613          	li	a2,2047
   21770:	0037d793          	srli	a5,a5,0x3
   21774:	00c71a63          	bne	a4,a2,21788 <__trunctfdf2+0x174>
   21778:	00078863          	beqz	a5,21788 <__trunctfdf2+0x174>
   2177c:	00100793          	li	a5,1
   21780:	03379793          	slli	a5,a5,0x33
   21784:	00000693          	li	a3,0
   21788:	00c79793          	slli	a5,a5,0xc
   2178c:	7ff77713          	andi	a4,a4,2047
   21790:	03471713          	slli	a4,a4,0x34
   21794:	00c7d793          	srli	a5,a5,0xc
   21798:	03f69513          	slli	a0,a3,0x3f
   2179c:	00e7e7b3          	or	a5,a5,a4
   217a0:	00a7e533          	or	a0,a5,a0
   217a4:	00008067          	ret
   217a8:	00100793          	li	a5,1
   217ac:	00000713          	li	a4,0
   217b0:	00f7f613          	andi	a2,a5,15
   217b4:	00400593          	li	a1,4
   217b8:	f8b608e3          	beq	a2,a1,21748 <__trunctfdf2+0x134>
   217bc:	00478793          	addi	a5,a5,4
   217c0:	f89ff06f          	j	21748 <__trunctfdf2+0x134>
   217c4:	00000793          	li	a5,0
   217c8:	fa5ff06f          	j	2176c <__trunctfdf2+0x158>

00000000000217cc <__muldi3>:
   217cc:	00050613          	mv	a2,a0
   217d0:	00000513          	li	a0,0
   217d4:	0015f693          	andi	a3,a1,1
   217d8:	00068463          	beqz	a3,217e0 <__muldi3+0x14>
   217dc:	00c50533          	add	a0,a0,a2
   217e0:	0015d593          	srli	a1,a1,0x1
   217e4:	00161613          	slli	a2,a2,0x1
   217e8:	fe0596e3          	bnez	a1,217d4 <__muldi3+0x8>
   217ec:	00008067          	ret
