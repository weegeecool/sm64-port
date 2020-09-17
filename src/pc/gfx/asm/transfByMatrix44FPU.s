.global transfByMatrix44FPU
transfByMatrix44FPU:
    VPUSH       {d8-d9}

    VLDMIA      r0,{s0-s15}     // Load Matrix
    VLDMIA      r1,{s16-s18}    // Load Vector

    VMLA.F32    s12,s0,s16      // 30 += vx*00
    VMLA.F32    s13,s1,s16      // 31 += vx*01
    VMLA.F32    s14,s2,s16      // 32 += vx*02
    VMLA.F32    s15,s3,s16      // 33 += vx*03

    VMLA.F32    s12,s4,s17      // 30 += vy*10
    VMLA.F32    s13,s5,s17      // 31 += vy*11
    VMLA.F32    s14,s6,s17      // 32 += vy*12
    VMLA.F32    s15,s7,s17      // 33 += vy*13

    VMLA.F32    s12,s8,s18      // 30 += vz*20
    VMLA.F32    s13,s9,s18      // 31 += vz*21
    VMLA.F32    s14,s10,s18     // 32 += vz*22
    VMLA.F32    s15,s11,s18     // 33 += vz*23

    VSTMIA      r2,{s12-s15}
    VPOP        {d8-d9}
    BX          lr
