// renamed swap to avoid conflict with STL swap
JAVA_INSN(0, nop, 1)
JAVA_INSN(1, aconst_null, 1)
JAVA_INSN(2, iconst_m1, 1)
JAVA_INSN(3, iconst_0, 1)
JAVA_INSN(4, iconst_1, 1)
JAVA_INSN(5, iconst_2, 1)
JAVA_INSN(6, iconst_3, 1)
JAVA_INSN(7, iconst_4, 1)
JAVA_INSN(8, iconst_5, 1)
JAVA_INSN(9, lconst_0, 1)
JAVA_INSN(10, lconst_1, 1)
JAVA_INSN(11, fconst_0, 1)
JAVA_INSN(12, fconst_1, 1)
JAVA_INSN(13, fconst_2, 1)
JAVA_INSN(14, dconst_0, 1)
JAVA_INSN(15, dconst_1, 1)
JAVA_INSN(16, bipush, 2)
JAVA_INSN(17, sipush, 3)
JAVA_INSN(18, ldc, 2)
JAVA_INSN(19, ldc_w, 3)
JAVA_INSN(20, ldc2_w, 3)
JAVA_INSN(21, iload, 2)
JAVA_INSN(22, lload, 2)
JAVA_INSN(23, fload, 2)
JAVA_INSN(24, dload, 2)
JAVA_INSN(25, aload, 2)
JAVA_INSN(26, iload_0, 1)
JAVA_INSN(27, iload_1, 1)
JAVA_INSN(28, iload_2, 1)
JAVA_INSN(29, iload_3, 1)
JAVA_INSN(30, lload_0, 1)
JAVA_INSN(31, lload_1, 1)
JAVA_INSN(32, lload_2, 1)
JAVA_INSN(33, lload_3, 1)
JAVA_INSN(34, fload_0, 1)
JAVA_INSN(35, fload_1, 1)
JAVA_INSN(36, fload_2, 1)
JAVA_INSN(37, fload_3, 1)
JAVA_INSN(38, dload_0, 1)
JAVA_INSN(39, dload_1, 1)
JAVA_INSN(40, dload_2, 1)
JAVA_INSN(41, dload_3, 1)
JAVA_INSN(42, aload_0, 1)
JAVA_INSN(43, aload_1, 1)
JAVA_INSN(44, aload_2, 1)
JAVA_INSN(45, aload_3, 1)
JAVA_INSN(46, iaload, 1)
JAVA_INSN(47, laload, 1)
JAVA_INSN(48, faload, 1)
JAVA_INSN(49, daload, 1)
JAVA_INSN(50, aaload, 1)
JAVA_INSN(51, baload, 1)
JAVA_INSN(52, caload, 1)
JAVA_INSN(53, saload, 1)
JAVA_INSN(54, istore, 2)
JAVA_INSN(55, lstore, 2)
JAVA_INSN(56, fstore, 2)
JAVA_INSN(57, dstore, 2)
JAVA_INSN(58, astore, 2)
JAVA_INSN(59, istore_0, 1)
JAVA_INSN(60, istore_1, 1)
JAVA_INSN(61, istore_2, 1)
JAVA_INSN(62, istore_3, 1)
JAVA_INSN(63, lstore_0, 1)
JAVA_INSN(64, lstore_1, 1)
JAVA_INSN(65, lstore_2, 1)
JAVA_INSN(66, lstore_3, 1)
JAVA_INSN(67, fstore_0, 1)
JAVA_INSN(68, fstore_1, 1)
JAVA_INSN(69, fstore_2, 1)
JAVA_INSN(70, fstore_3, 1)
JAVA_INSN(71, dstore_0, 1)
JAVA_INSN(72, dstore_1, 1)
JAVA_INSN(73, dstore_2, 1)
JAVA_INSN(74, dstore_3, 1)
JAVA_INSN(75, astore_0, 1)
JAVA_INSN(76, astore_1, 1)
JAVA_INSN(77, astore_2, 1)
JAVA_INSN(78, astore_3, 1)
JAVA_INSN(79, iastore, 1)
JAVA_INSN(80, lastore, 1)
JAVA_INSN(81, fastore, 1)
JAVA_INSN(82, dastore, 1)
JAVA_INSN(83, aastore, 1)
JAVA_INSN(84, bastore, 1)
JAVA_INSN(85, castore, 1)
JAVA_INSN(86, sastore, 1)
JAVA_INSN(87, pop, 1)
JAVA_INSN(88, pop2, 1)
JAVA_INSN(89, dup_x0, 1)
JAVA_INSN(90, dup_x1, 1)
JAVA_INSN(91, dup_x2, 1)
JAVA_INSN(92, dup2_x0, 1)
JAVA_INSN(93, dup2_x1, 1)
JAVA_INSN(94, dup2_x2, 1)
JAVA_INSN(95, Jswap, 1)
JAVA_INSN(96, iadd, 1)
JAVA_INSN(97, ladd, 1)
JAVA_INSN(98, fadd, 1)
JAVA_INSN(99, dadd, 1)
JAVA_INSN(100, isub, 1)
JAVA_INSN(101, lsub, 1)
JAVA_INSN(102, fsub, 1)
JAVA_INSN(103, dsub, 1)
JAVA_INSN(104, imul, 1)
JAVA_INSN(105, lmul, 1)
JAVA_INSN(106, fmul, 1)
JAVA_INSN(107, dmul, 1)
JAVA_INSN(108, idiv, 1)
JAVA_INSN(109, lidiv, 1)
JAVA_INSN(110, fdiv, 1)
JAVA_INSN(111, ddiv, 1)
JAVA_INSN(112, irem, 1)
JAVA_INSN(113, lrem, 1)
JAVA_INSN(114, frem, 1)
JAVA_INSN(115, drem, 1)
JAVA_INSN(116, ineg, 1)
JAVA_INSN(117, lneg, 1)
JAVA_INSN(118, fneg, 1)
JAVA_INSN(119, dneg, 1)
JAVA_INSN(120, ishl, 1)
JAVA_INSN(121, lshl, 1)
JAVA_INSN(122, ishr, 1)
JAVA_INSN(123, lshr, 1)
JAVA_INSN(124, iushr, 1)
JAVA_INSN(125, lushr, 1)
JAVA_INSN(126, iand, 1)
JAVA_INSN(127, land, 1)
JAVA_INSN(128, ior, 1)
JAVA_INSN(129, lor, 1)
JAVA_INSN(130, ixor, 1)
JAVA_INSN(131, lxor, 1)
JAVA_INSN(132, iinc, 3)
JAVA_INSN(133, i2l, 1)
JAVA_INSN(134, i2f, 1)
JAVA_INSN(135, i2d, 1)
JAVA_INSN(136, l2i, 1)
JAVA_INSN(137, l2f, 1)
JAVA_INSN(138, l2d, 1)
JAVA_INSN(139, f2i, 1)
JAVA_INSN(140, f2l, 1)
JAVA_INSN(141, f2d, 1)
JAVA_INSN(142, d2i, 1)
JAVA_INSN(143, d2l, 1)
JAVA_INSN(144, d2f, 1)
JAVA_INSN(145, i2b, 1)
JAVA_INSN(146, i2c, 1)
JAVA_INSN(147, i2s, 1)
JAVA_INSN(148, lcmp, 1)
JAVA_INSN(149, fcmpl, 1)
JAVA_INSN(150, fcmpg, 1)
JAVA_INSN(151, dcmpl, 1)
JAVA_INSN(152, dcmpg, 1)
JAVA_INSN(153, ifeq, 3)
JAVA_INSN(154, ifne, 3)
JAVA_INSN(155, iflt, 3)
JAVA_INSN(156, ifge, 3)
JAVA_INSN(157, ifgt, 3)
JAVA_INSN(158, ifle, 3)
JAVA_INSN(159, if_icmpeq, 3)
JAVA_INSN(160, if_icmpne, 3)
JAVA_INSN(161, if_icmplt, 3)
JAVA_INSN(162, if_icmpge, 3)
JAVA_INSN(163, if_icmpgt, 3)
JAVA_INSN(164, if_icmple, 3)
JAVA_INSN(165, if_acmpeq, 3)
JAVA_INSN(166, if_acmpne, 3)
JAVA_INSN(167, goto_near, 3)
JAVA_INSN(168, jsr, 3)
JAVA_INSN(169, ret, 2)
JAVA_INSN(170, tableswitch, 15)
JAVA_INSN(171, lookupswitch, 11)
JAVA_INSN(172, ireturn, 1)
JAVA_INSN(173, lreturn, 1)
JAVA_INSN(174, freturn, 1)
JAVA_INSN(175, dreturn, 1)
JAVA_INSN(176, areturn, 1)
JAVA_INSN(177, vreturn, 1)
JAVA_INSN(178, getstatic, 3)
JAVA_INSN(179, putstatic, 3)
JAVA_INSN(180, getfield, 3)
JAVA_INSN(181, putfield, 3)
JAVA_INSN(182, invokevirtual, 3)
JAVA_INSN(183, invokespecial, 3)
JAVA_INSN(184, invokestatic, 3)
JAVA_INSN(185, invokeinterface, 5)
JAVA_INSN(186, unused, 0)
JAVA_INSN(187, anew, 3)
JAVA_INSN(188, newarray, 2)
JAVA_INSN(189, anewarray, 3)
JAVA_INSN(190, arraylength, 1)
JAVA_INSN(191, athrow, 1)
JAVA_INSN(192, checkcast, 3)
JAVA_INSN(193, instanceof, 3)
JAVA_INSN(194, monitorenter, 1)
JAVA_INSN(195, monitorexit, 1)
JAVA_INSN(196, wide, 10)
JAVA_INSN(197, multianewarray, 4)
JAVA_INSN(198, ifnull, 3)
JAVA_INSN(199, ifnonnull, 3)
JAVA_INSN(200, goto_w, 5)
JAVA_INSN(201, jsr_w, 5)
#undef JAVA_INSN

