.global multMatrix44FPU
multMatrix44FPU:
    VPUSH       {d8-d11}

    VLDMIA      r1 !, {s16-s19} // Load 1st line of m2 -> [0 1 2 3]
    VLDR.F32    s20, [r0, # 16 * 0 + 0 * 4] // Load 1st col of m1 -> g
    VLDR.F32    s21, [r0, # 16 * 1 + 0 * 4] // -> m
    VLDR.F32    s22, [r0, # 16 * 2 + 0 * 4] // -> s
    VLDR.F32    s23, [r0, # 16 * 3 + 0 * 4] // -> w

    VMUL.F32    s0, s20, s16    // = {g * 0}
    VMUL.F32    s1, s20, s17    // = {g * 1}
    VMUL.F32    s2, s20, s18    // = {g * 2}
    VMUL.F32    s3, s20, s19    // = {g * 3}

    VMUL.F32    s4, s21, s16    // = {m * 0}
    VMUL.F32    s5, s21, s17    // = {m * 1}
    VMUL.F32    s6, s21, s18    // = {m * 2}
    VMUL.F32    s7, s21, s19    // = {m * 3}

    VMUL.F32    s8, s22, s16    // = {s * 0}
    VMUL.F32    s9, s22, s17    // = {s * 1}
    VMUL.F32    s10, s22, s18   // = {s * 2}
    VMUL.F32    s11, s22, s19   // = {s * 3}

    VMUL.F32    s12, s23, s16   // = {w * 0}
    VMUL.F32    s13, s23, s17   // = {w * 1}
    VMUL.F32    s14, s23, s18   // = {w * 2}
    VMUL.F32    s15, s23, s19   // = {w * 3}

    VLDMIA      r1 !, {s16-s19} // Load 2nd line of m2 -> [4 5 6 7]
    VLDR.F32    s20, [r0, # 16 * 0 + 1 * 4] // Load 2nd col of m1 -> h
    VLDR.F32    s21, [r0, # 16 * 1 + 1 * 4] // -> n
    VLDR.F32    s22, [r0, # 16 * 2 + 1 * 4] // -> t
    VLDR.F32    s23, [r0, # 16 * 3 + 1 * 4] // -> x

    VMLA.F32    s0, s20, s16    // = {g * 0} + {h * 4}
    VMLA.F32    s1, s20, s17    // = {g * 1} + {h * 5}
    VMLA.F32    s2, s20, s18    // = {g * 2} + {h * 6}
    VMLA.F32    s3, s20, s19    // = {g * 3} + {h * 7}

    VMLA.F32    s4, s21, s16    // = {m * 0} + {n * 4}
    VMLA.F32    s5, s21, s17    // = {m * 1} + {n * 5}
    VMLA.F32    s6, s21, s18    // = {m * 2} + {n * 6}
    VMLA.F32    s7, s21, s19    // = {m * 3} + {n * 7}

    VMLA.F32    s8, s22, s16    // = {s * 0} + {t * 4}
    VMLA.F32    s9, s22, s17    // = {s * 1} + {t * 5}
    VMLA.F32    s10, s22, s18   // = {s * 2} + {t * 6}
    VMLA.F32    s11, s22, s19   // = {s * 3} + {t * 7}

    VMLA.F32    s12, s23, s16   // = {w * 0} + {x * 4}
    VMLA.F32    s13, s23, s17   // = {w * 1} + {x * 5}
    VMLA.F32    s14, s23, s18   // = {w * 2} + {x * 6}
    VMLA.F32    s15, s23, s19   // = {w * 3} + {x * 7}

    VLDMIA      r1 !, {s16-s19} // Load 3rd line of m2 -> [8 9 A B]
    VLDR.F32    s20, [r0, # 16 * 0 + 2 * 4] // Load 3rd col of m1 -> i
    VLDR.F32    s21, [r0, # 16 * 1 + 2 * 4] // -> o
    VLDR.F32    s22, [r0, # 16 * 2 + 2 * 4] // -> u
    VLDR.F32    s23, [r0, # 16 * 3 + 2 * 4] // -> y

    VMLA.F32    s0, s20, s16    // = {g * 0} + {h * 4} + {i * 8}
    VMLA.F32    s1, s20, s17    // = {g * 1} + {h * 5} + {i * 9}
    VMLA.F32    s2, s20, s18    // = {g * 2} + {h * 6} + {i * A}
    VMLA.F32    s3, s20, s19    // = {g * 3} + {h * 7} + {i * B}

    VMLA.F32    s4, s21, s16    // = {m * 0} + {n * 4} + {o * 8}
    VMLA.F32    s5, s21, s17    // = {m * 1} + {n * 5} + {o * 9}
    VMLA.F32    s6, s21, s18    // = {m * 2} + {n * 6} + {o * A}
    VMLA.F32    s7, s21, s19    // = {m * 3} + {n * 7} + {o * B}

    VMLA.F32    s8, s22, s16    // = {s * 0} + {t * 4} + {u * 8}
    VMLA.F32    s9, s22, s17    // = {s * 1} + {t * 5} + {u * 9}
    VMLA.F32    s10, s22, s18   // = {s * 2} + {t * 6} + {u * A}
    VMLA.F32    s11, s22, s19   // = {s * 3} + {t * 7} + {u * B}

    VMLA.F32    s12, s23, s16   // = {w * 0} + {x * 4} + {y * 8}
    VMLA.F32    s13, s23, s17   // = {w * 1} + {x * 5} + {y * 9}
    VMLA.F32    s14, s23, s18   // = {w * 2} + {x * 6} + {y * A}
    VMLA.F32    s15, s23, s19   // = {w * 3} + {x * 7} + {y * B}

    VLDMIA      r1, {s16-s19} // Load 4th line of m2 -> [C D E F]
    VLDR.F32    s20, [r0, # 16 * 0 + 3 * 4] // Load 4th col of m1 -> j
    VLDR.F32    s21, [r0, # 16 * 1 + 3 * 4] // -> p
    VLDR.F32    s22, [r0, # 16 * 2 + 3 * 4] // -> v
    VLDR.F32    s23, [r0, # 16 * 3 + 3 * 4] // -> z

    VMLA.F32    s0, s20, s16    // = {g * 0} + {h * 4} + {i * 8} + {j * C}
    VMLA.F32    s1, s20, s17    // = {g * 1} + {h * 5} + {i * 9} + {j * D}
    VMLA.F32    s2, s20, s18    // = {g * 2} + {h * 6} + {i * A} + {j * E}
    VMLA.F32    s3, s20, s19    // = {g * 3} + {h * 7} + {i * B} + {j * F}

    VMLA.F32    s4, s21, s16    // = {m * 0} + {n * 4} + {o * 8} + {p * C}
    VMLA.F32    s5, s21, s17    // = {m * 1} + {n * 5} + {o * 9} + {p * D}
    VMLA.F32    s6, s21, s18    // = {m * 2} + {n * 6} + {o * A} + {p * E}
    VMLA.F32    s7, s21, s19    // = {m * 3} + {n * 7} + {o * B} + {p * F}

    VMLA.F32    s8, s22, s16    // = {s * 0} + {t * 4} + {u * 8} + {v * C}
    VMLA.F32    s9, s22, s17    // = {s * 1} + {t * 5} + {u * 9} + {v * D}
    VMLA.F32    s10, s22, s18   // = {s * 2} + {t * 6} + {u * A} + {v * E}
    VMLA.F32    s11, s22, s19   // = {s * 3} + {t * 7} + {u * B} + {v * F}

    VMLA.F32    s12, s23, s16   // = {w * 0} + {x * 4} + {y * 8} + {z * C}
    VMLA.F32    s13, s23, s17   // = {w * 1} + {x * 5} + {y * 9} + {z * D}
    VMLA.F32    s14, s23, s18   // = {w * 2} + {x * 6} + {y * A} + {z * E}
    VMLA.F32    s15, s23, s19   // = {w * 3} + {x * 7} + {y * B} + {z * F}

    VPOP        {d8-d11}
    VSTMIA      r2, {s0-s15}
    BX          lr
