;; wasm2wat FROM example.wasm - Rich Clingman - 08/16/23

(module
  (type $t0 (func))
  (type $t1 (func (param i32 i32 i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (result i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i32 i32) (result f32)))
  (func $__wasm_call_ctors (export "__wasm_call_ctors") (type $t0)
    (call $_GLOBAL__sub_I_example.cc))
  (func $_start (export "_start") (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 f32) (local $l3 f32) (local $l4 f32) (local $l5 i32) (local $l6 i32)
    (local.set $l0
      (i32.const 0))
    (local.set $l1
      (i32.const 592024))
    (loop $L0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l4
                    (f32.nearest
                      (f32.mul
                        (f32.min
                          (f32.max
                            (local.tee $l3
                              (f32.mul
                                (local.tee $l2
                                  (f32.min
                                    (f32.max
                                      (f32.mul
                                        (f32.convert_i32_s
                                          (local.get $l0))
                                        (f32.const 0x1.288b02p-9 (;=0.00226244;)))
                                      (f32.const 0x0p+0 (;=0;)))
                                    (f32.const 0x1p+0 (;=1;))))
                                (f32.const 0x1p+2 (;=4;))))
                            (f32.const 0x0p+0 (;=0;)))
                          (f32.const 0x1p+0 (;=1;)))
                        (f32.const 0x1.fep+7 (;=255;))))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l5
            (i32.trunc_f32_s
              (local.get $l4)))
          (br $B1))
        (local.set $l5
          (i32.const -2147483648)))
      (local.set $l5
        (i32.shl
          (local.get $l5)
          (i32.const 24)))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l4
                    (f32.nearest
                      (f32.mul
                        (f32.sqrt
                          (f32.min
                            (f32.max
                              (f32.add
                                (local.get $l3)
                                (f32.const -0x1p+1 (;=-2;)))
                              (f32.const 0x0p+0 (;=0;)))
                            (f32.const 0x1p+0 (;=1;))))
                        (f32.const 0x1.fep+7 (;=255;))))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l6
            (i32.trunc_f32_s
              (local.get $l4)))
          (br $B3))
        (local.set $l6
          (i32.const -2147483648)))
      (local.set $l5
        (i32.or
          (local.get $l5)
          (local.get $l6)))
      (block $B5
        (block $B6
          (br_if $B6
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l3
                    (f32.nearest
                      (f32.mul
                        (f32.sqrt
                          (f32.min
                            (f32.max
                              (f32.sub
                                (f32.const 0x1p+1 (;=2;))
                                (local.get $l3))
                              (f32.const 0x0p+0 (;=0;)))
                            (f32.const 0x1p+0 (;=1;))))
                        (f32.const 0x1.fep+7 (;=255;))))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l6
            (i32.trunc_f32_s
              (local.get $l3)))
          (br $B5))
        (local.set $l6
          (i32.const -2147483648)))
      (local.set $l5
        (i32.or
          (local.get $l5)
          (i32.shl
            (local.get $l6)
            (i32.const 16))))
      (block $B7
        (block $B8
          (br_if $B8
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l3
                    (f32.nearest
                      (f32.mul
                        (f32.sqrt
                          (f32.min
                            (f32.max
                              (f32.sub
                                (f32.const 0x1p+0 (;=1;))
                                (f32.mul
                                  (f32.abs
                                    (f32.add
                                      (local.get $l2)
                                      (f32.const -0x1p-1 (;=-0.5;))))
                                  (f32.const 0x1p+2 (;=4;))))
                              (f32.const 0x0p+0 (;=0;)))
                            (f32.const 0x1p+0 (;=1;))))
                        (f32.const 0x1.fep+7 (;=255;))))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l6
            (i32.trunc_f32_s
              (local.get $l3)))
          (br $B7))
        (local.set $l6
          (i32.const -2147483648)))
      (local.set $l6
        (i32.or
          (local.get $l5)
          (i32.shl
            (local.get $l6)
            (i32.const 8))))
      (local.set $l5
        (i32.const 0))
      (loop $L9
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $l5))
          (local.get $l6))
        (br_if $L9
          (i32.ne
            (local.tee $l5
              (i32.add
                (local.get $l5)
                (i32.const 1768)))
            (i32.const 390728))))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const 4)))
      (br_if $L0
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 1)))
          (i32.const 442)))))
  (func $stft (export "stft") (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 f32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 f32) (local $l12 f32) (local $l13 f32) (local $l14 f32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (i32.load offset=6812
              (i32.const 0))
            (i32.const 44100)))
        (call $STFT<float__882__3>::operator___float*__float_const*_
          (i32.const 982752)
          (i32.const 4880)
          (i32.const 1040))
        (br $B0))
      (call $STFT<float__960__3>::operator___float*__float_const*_
        (i32.const 1018056)
        (i32.const 4880)
        (i32.const 1040)))
    (local.set $l0
      (i32.load offset=6804
        (i32.const 0)))
    (block $B2
      (block $B3
        (br_if $B3
          (i32.eqz
            (i32.load8_u offset=1025
              (i32.const 0))))
        (local.set $l1
          (i32.const -194480))
        (loop $L4
          (i32.store
            (i32.add
              (local.get $l1)
              (i32.const 592024))
            (i32.or
              (i32.and
                (i32.mul
                  (i32.load8_u
                    (i32.add
                      (local.get $l1)
                      (i32.const 592027)))
                  (i32.const 14680064))
                (i32.const -16777216))
              (local.get $l0)))
          (br_if $L4
            (local.tee $l1
              (i32.add
                (local.get $l1)
                (i32.const 4)))))
        (local.set $l1
          (i32.const -390728))
        (loop $L5
          (i32.store
            (i32.add
              (local.get $l1)
              (i32.const 397544))
            (i32.or
              (i32.and
                (i32.mul
                  (i32.load8_u
                    (i32.add
                      (local.get $l1)
                      (i32.const 397547)))
                  (i32.const 14680064))
                (i32.const -16777216))
              (local.get $l0)))
          (br_if $L5
            (local.tee $l1
              (i32.add
                (local.get $l1)
                (i32.const 4))))
          (br $B2)))
      (local.set $l1
        (i32.const -194480))
      (loop $L6
        (i32.store
          (i32.add
            (local.get $l1)
            (i32.const 592024))
          (local.get $l0))
        (br_if $L6
          (local.tee $l1
            (i32.add
              (local.get $l1)
              (i32.const 4)))))
      (local.set $l1
        (i32.const -390728))
      (loop $L7
        (i32.store
          (i32.add
            (local.get $l1)
            (i32.const 397544))
          (local.get $l0))
        (br_if $L7
          (local.tee $l1
            (i32.add
              (local.get $l1)
              (i32.const 4))))))
    (local.set $l2
      (i32.or
        (local.get $l0)
        (i32.const -16777216)))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (i32.const 6816))
    (loop $L8
      (block $B9
        (block $B10
          (br_if $B10
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l6
                    (f32.nearest
                      (f32.sub
                        (f32.const 0x1.b8p+6 (;=110;))
                        (f32.mul
                          (f32.load
                            (i32.add
                              (i32.shl
                                (local.tee $l5
                                  (local.get $l3))
                                (i32.const 2))
                              (i32.const 1040)))
                          (f32.const 0x1.b8p+6 (;=110;)))))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l7
            (i32.trunc_f32_s
              (local.get $l6)))
          (br $B9))
        (local.set $l7
          (i32.const -2147483648)))
      (block $B11
        (br_if $B11
          (i32.eqz
            (local.get $l5)))
        (local.set $l8
          (i32.div_s
            (i32.add
              (local.get $l1)
              (local.get $l7))
            (i32.const 2)))
        (block $B12
          (br_if $B12
            (i32.gt_u
              (local.get $l9)
              (i32.const 441)))
          (local.set $l10
            (i32.add
              (select
                (local.get $l1)
                (local.get $l8)
                (i32.lt_s
                  (local.get $l8)
                  (local.get $l1)))
              (i32.const 1)))
          (local.set $l3
            (i32.add
              (i32.shl
                (i32.add
                  (local.get $l9)
                  (i32.mul
                    (local.tee $l1
                      (select
                        (local.get $l1)
                        (local.get $l8)
                        (i32.gt_s
                          (local.get $l8)
                          (local.get $l1))))
                    (i32.const 442)))
                (i32.const 2))
              (i32.const 6816)))
          (loop $L13
            (block $B14
              (br_if $B14
                (i32.gt_u
                  (local.get $l1)
                  (i32.const 220)))
              (i32.store
                (local.get $l3)
                (local.get $l2)))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1768)))
            (br_if $L13
              (i32.ne
                (local.get $l10)
                (local.tee $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const 1)))))))
        (local.set $l10
          (i32.add
            (select
              (local.get $l8)
              (local.get $l7)
              (i32.gt_s
                (local.get $l8)
                (local.get $l7)))
            (i32.const 1)))
        (local.set $l3
          (i32.add
            (local.get $l4)
            (i32.mul
              (local.tee $l1
                (select
                  (local.get $l8)
                  (local.get $l7)
                  (i32.lt_s
                    (local.get $l8)
                    (local.get $l7))))
              (i32.const 1768))))
        (loop $L15
          (block $B16
            (br_if $B16
              (i32.gt_u
                (local.get $l1)
                (i32.const 220)))
            (i32.store
              (local.get $l3)
              (local.get $l2)))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1768)))
          (br_if $L15
            (i32.ne
              (local.get $l10)
              (local.tee $l1
                (i32.add
                  (local.get $l1)
                  (i32.const 1)))))))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 4)))
      (local.set $l9
        (local.get $l5))
      (local.set $l1
        (local.get $l7))
      (br_if $L8
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l5)
              (i32.const 1)))
          (i32.const 442))))
    (local.set $l1
      (i32.const -1768))
    (loop $L17
      (f32.store
        (local.tee $l3
          (i32.add
            (local.get $l1)
            (i32.const 1058248)))
        (f32.add
          (f32.mul
            (f32.sub
              (f32.load
                (i32.add
                  (local.get $l1)
                  (i32.const 6648)))
              (local.tee $l6
                (f32.load
                  (local.get $l3))))
            (f32.const 0x1.99999ap-5 (;=0.05;)))
          (local.get $l6)))
      (br_if $L17
        (local.tee $l1
          (i32.add
            (local.get $l1)
            (i32.const 4)))))
    (local.set $l11
      (f32.load offset=1056480
        (i32.const 0)))
    (local.set $l1
      (i32.const 4))
    (loop $L18
      (local.set $l11
        (f32.min
          (local.get $l11)
          (f32.load
            (i32.add
              (local.get $l1)
              (i32.const 1056480)))))
      (br_if $L18
        (i32.ne
          (local.tee $l1
            (i32.add
              (local.get $l1)
              (i32.const 4)))
          (i32.const 1768))))
    (local.set $l1
      (i32.const 4))
    (local.set $l6
      (local.tee $l12
        (f32.load offset=4880
          (i32.const 0))))
    (loop $L19
      (local.set $l6
        (f32.max
          (local.get $l6)
          (f32.load
            (i32.add
              (local.get $l1)
              (i32.const 4880)))))
      (br_if $L19
        (i32.ne
          (local.tee $l1
            (i32.add
              (local.get $l1)
              (i32.const 4)))
          (i32.const 1768))))
    (f32.store offset=1058248
      (i32.const 0)
      (local.tee $l13
        (f32.add
          (f32.mul
            (select
              (f32.const 0x1p-1 (;=0.5;))
              (f32.const 0x1.99999ap-5 (;=0.05;))
              (f32.lt
                (local.tee $l13
                  (f32.load offset=1058248
                    (i32.const 0)))
                (local.get $l6)))
            (f32.sub
              (local.get $l6)
              (local.get $l13)))
          (local.get $l13))))
    (local.set $l11
      (f32.div
        (f32.const 0x1p+0 (;=1;))
        (local.tee $l14
          (f32.sub
            (f32.max
              (local.get $l11)
              (f32.const -0x1.ep+6 (;=-120;)))
            (local.get $l13)))))
    (local.set $l6
      (local.get $l12))
    (local.set $l5
      (i32.const 0))
    (loop $L20
      (block $B21
        (block $B22
          (br_if $B22
            (i32.eqz
              (f32.lt
                (f32.abs
                  (local.tee $l6
                    (f32.nearest
                      (f32.mul
                        (f32.mul
                          (f32.sub
                            (local.get $l6)
                            (local.get $l13))
                          (f32.const 0x1.b4p+6 (;=109;)))
                        (local.get $l11)))))
                (f32.const 0x1p+31 (;=2.14748e+09;)))))
          (local.set $l1
            (i32.trunc_f32_s
              (local.get $l6)))
          (br $B21))
        (local.set $l1
          (i32.const -2147483648)))
      (local.set $l7
        (select
          (local.tee $l1
            (select
              (local.get $l1)
              (i32.const 0)
              (i32.gt_s
                (local.get $l1)
                (i32.const 0))))
          (i32.const 109)
          (i32.lt_s
            (local.get $l1)
            (i32.const 109))))
      (block $B23
        (block $B24
          (br_if $B24
            (local.get $l5))
          (local.set $l1
            (i32.const 1))
          (br $B23))
        (local.set $l8
          (i32.div_s
            (i32.add
              (local.get $l7)
              (local.get $l3))
            (i32.const 2)))
        (block $B25
          (br_if $B25
            (i32.gt_u
              (local.get $l4)
              (i32.const 441)))
          (local.set $l10
            (i32.add
              (select
                (local.get $l3)
                (local.get $l8)
                (i32.lt_s
                  (local.get $l8)
                  (local.get $l3)))
              (i32.const 1)))
          (local.set $l3
            (i32.add
              (i32.shl
                (i32.add
                  (local.get $l4)
                  (i32.mul
                    (local.tee $l1
                      (select
                        (local.get $l3)
                        (local.get $l8)
                        (i32.gt_s
                          (local.get $l8)
                          (local.get $l3))))
                    (i32.const 442)))
                (i32.const 2))
              (i32.const 397544)))
          (loop $L26
            (block $B27
              (br_if $B27
                (i32.gt_u
                  (local.get $l1)
                  (i32.const 109)))
              (i32.store
                (local.get $l3)
                (local.get $l2)))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1768)))
            (br_if $L26
              (i32.ne
                (local.get $l10)
                (local.tee $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const 1)))))))
        (local.set $l10
          (i32.add
            (select
              (local.get $l8)
              (local.get $l7)
              (i32.gt_s
                (local.get $l8)
                (local.get $l7)))
            (i32.const 1)))
        (local.set $l3
          (i32.add
            (i32.shl
              (i32.add
                (local.get $l5)
                (i32.mul
                  (local.tee $l1
                    (select
                      (local.get $l8)
                      (local.get $l7)
                      (i32.lt_s
                        (local.get $l8)
                        (local.get $l7))))
                  (i32.const 442)))
              (i32.const 2))
            (i32.const 397544)))
        (loop $L28
          (block $B29
            (br_if $B29
              (i32.gt_u
                (local.get $l1)
                (i32.const 109)))
            (i32.store
              (local.get $l3)
              (local.get $l2)))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1768)))
          (br_if $L28
            (i32.ne
              (local.get $l10)
              (local.tee $l1
                (i32.add
                  (local.get $l1)
                  (i32.const 1))))))
        (br_if $B23
          (i32.ne
            (local.tee $l1
              (i32.add
                (local.get $l5)
                (i32.const 1)))
            (i32.const 442)))
        (local.set $l10
          (i32.const 220))
        (local.set $l2
          (i32.const 592024))
        (loop $L30
          (local.set $l1
            (i32.const 0))
          (loop $L31
            (i32.store
              (i32.add
                (local.tee $l3
                  (i32.add
                    (local.get $l2)
                    (local.get $l1)))
                (i32.const 388960))
              (i32.load
                (i32.add
                  (local.get $l3)
                  (i32.const 387192))))
            (br_if $L31
              (i32.ne
                (local.tee $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const 4)))
                (i32.const 1768))))
          (local.set $l2
            (i32.add
              (local.get $l2)
              (i32.const -1768)))
          (br_if $L30
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (i32.const -1)))))
        (local.set $l14
          (f32.div
            (f32.const 0x1p+0 (;=1;))
            (local.get $l14)))
        (block $B32
          (block $B33
            (br_if $B33
              (i32.eqz
                (i32.load8_u offset=1024
                  (i32.const 0))))
            (local.set $l1
              (i32.const -1764))
            (loop $L34
              (block $B35
                (block $B36
                  (br_if $B36
                    (i32.eqz
                      (f32.lt
                        (f32.abs
                          (local.tee $l12
                            (f32.nearest
                              (f32.mul
                                (f32.min
                                  (f32.max
                                    (local.tee $l6
                                      (f32.mul
                                        (local.tee $l11
                                          (f32.min
                                            (f32.max
                                              (f32.add
                                                (f32.mul
                                                  (f32.sub
                                                    (local.get $l13)
                                                    (local.get $l12))
                                                  (local.get $l14))
                                                (f32.const 0x1p+0 (;=1;)))
                                              (f32.const 0x0p+0 (;=0;)))
                                            (f32.const 0x1p+0 (;=1;))))
                                        (f32.const 0x1p+2 (;=4;))))
                                    (f32.const 0x0p+0 (;=0;)))
                                  (f32.const 0x1p+0 (;=1;)))
                                (f32.const 0x1.fep+7 (;=255;))))))
                        (f32.const 0x1p+31 (;=2.14748e+09;)))))
                  (local.set $l3
                    (i32.trunc_f32_s
                      (local.get $l12)))
                  (br $B35))
                (local.set $l3
                  (i32.const -2147483648)))
              (local.set $l3
                (i32.shl
                  (local.get $l3)
                  (i32.const 24)))
              (block $B37
                (block $B38
                  (br_if $B38
                    (i32.eqz
                      (f32.lt
                        (f32.abs
                          (local.tee $l12
                            (f32.nearest
                              (f32.mul
                                (f32.sqrt
                                  (f32.min
                                    (f32.max
                                      (f32.add
                                        (local.get $l6)
                                        (f32.const -0x1p+1 (;=-2;)))
                                      (f32.const 0x0p+0 (;=0;)))
                                    (f32.const 0x1p+0 (;=1;))))
                                (f32.const 0x1.fep+7 (;=255;))))))
                        (f32.const 0x1p+31 (;=2.14748e+09;)))))
                  (local.set $l2
                    (i32.trunc_f32_s
                      (local.get $l12)))
                  (br $B37))
                (local.set $l2
                  (i32.const -2147483648)))
              (local.set $l3
                (i32.or
                  (local.get $l3)
                  (local.get $l2)))
              (block $B39
                (block $B40
                  (br_if $B40
                    (i32.eqz
                      (f32.lt
                        (f32.abs
                          (local.tee $l6
                            (f32.nearest
                              (f32.mul
                                (f32.sqrt
                                  (f32.min
                                    (f32.max
                                      (f32.sub
                                        (f32.const 0x1p+1 (;=2;))
                                        (local.get $l6))
                                      (f32.const 0x0p+0 (;=0;)))
                                    (f32.const 0x1p+0 (;=1;))))
                                (f32.const 0x1.fep+7 (;=255;))))))
                        (f32.const 0x1p+31 (;=2.14748e+09;)))))
                  (local.set $l2
                    (i32.trunc_f32_s
                      (local.get $l6)))
                  (br $B39))
                (local.set $l2
                  (i32.const -2147483648)))
              (local.set $l3
                (i32.or
                  (local.get $l3)
                  (i32.shl
                    (local.get $l2)
                    (i32.const 16))))
              (block $B41
                (block $B42
                  (br_if $B42
                    (i32.eqz
                      (f32.lt
                        (f32.abs
                          (local.tee $l6
                            (f32.nearest
                              (f32.mul
                                (f32.sqrt
                                  (f32.min
                                    (f32.max
                                      (f32.sub
                                        (f32.const 0x1p+0 (;=1;))
                                        (f32.mul
                                          (f32.abs
                                            (f32.add
                                              (local.get $l11)
                                              (f32.const -0x1p-1 (;=-0.5;))))
                                          (f32.const 0x1p+2 (;=4;))))
                                      (f32.const 0x0p+0 (;=0;)))
                                    (f32.const 0x1p+0 (;=1;))))
                                (f32.const 0x1.fep+7 (;=255;))))))
                        (f32.const 0x1p+31 (;=2.14748e+09;)))))
                  (local.set $l2
                    (i32.trunc_f32_s
                      (local.get $l6)))
                  (br $B41))
                (local.set $l2
                  (i32.const -2147483648)))
              (i32.store
                (i32.add
                  (local.get $l1)
                  (i32.const 593788))
                (i32.or
                  (local.get $l3)
                  (i32.shl
                    (local.get $l2)
                    (i32.const 8))))
              (br_if $B32
                (i32.eqz
                  (local.get $l1)))
              (local.set $l12
                (f32.load
                  (i32.add
                    (local.get $l1)
                    (i32.const 6648))))
              (local.set $l1
                (i32.add
                  (local.get $l1)
                  (i32.const 4)))
              (br $L34)))
          (block $B43
            (block $B44
              (br_if $B44
                (i32.eqz
                  (f32.lt
                    (f32.abs
                      (local.tee $l6
                        (f32.nearest
                          (f32.mul
                            (f32.min
                              (f32.max
                                (f32.add
                                  (f32.mul
                                    (f32.sub
                                      (local.get $l13)
                                      (local.get $l12))
                                    (local.get $l14))
                                  (f32.const 0x1p+0 (;=1;)))
                                (f32.const 0x0p+0 (;=0;)))
                              (f32.const 0x1p+0 (;=1;)))
                            (f32.const 0x1.fep+7 (;=255;))))))
                    (f32.const 0x1p+31 (;=2.14748e+09;)))))
              (local.set $l1
                (i32.trunc_f32_s
                  (local.get $l6)))
              (br $B43))
            (local.set $l1
              (i32.const -2147483648)))
          (i32.store offset=592024
            (i32.const 0)
            (i32.or
              (local.get $l0)
              (i32.shl
                (local.get $l1)
                (i32.const 24))))
          (local.set $l1
            (i32.const 4))
          (loop $L45
            (local.set $l3
              (i32.add
                (local.get $l1)
                (i32.const 592024)))
            (block $B46
              (block $B47
                (br_if $B47
                  (i32.eqz
                    (f32.lt
                      (f32.abs
                        (local.tee $l6
                          (f32.nearest
                            (f32.mul
                              (f32.min
                                (f32.max
                                  (f32.add
                                    (f32.mul
                                      (f32.sub
                                        (local.get $l13)
                                        (f32.load
                                          (i32.add
                                            (local.get $l1)
                                            (i32.const 4880))))
                                      (local.get $l14))
                                    (f32.const 0x1p+0 (;=1;)))
                                  (f32.const 0x0p+0 (;=0;)))
                                (f32.const 0x1p+0 (;=1;)))
                              (f32.const 0x1.fep+7 (;=255;))))))
                      (f32.const 0x1p+31 (;=2.14748e+09;)))))
                (local.set $l2
                  (i32.trunc_f32_s
                    (local.get $l6)))
                (br $B46))
              (local.set $l2
                (i32.const -2147483648)))
            (i32.store
              (local.get $l3)
              (i32.or
                (local.get $l0)
                (i32.shl
                  (local.get $l2)
                  (i32.const 24))))
            (br_if $L45
              (i32.ne
                (local.tee $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const 4)))
                (i32.const 1768)))))
        (return))
      (local.set $l6
        (f32.load
          (i32.add
            (i32.shl
              (local.get $l1)
              (i32.const 2))
            (i32.const 4880))))
      (local.set $l3
        (local.get $l7))
      (local.set $l4
        (local.get $l5))
      (local.set $l5
        (local.get $l1))
      (br $L20)))
  (func $STFT<float__882__3>::operator___float*__float_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 f32)
    (local.set $l3
      (i32.const 0))
    (loop $L0
      (f32.store
        (i32.add
          (local.tee $l4
            (i32.add
              (local.get $p0)
              (local.get $l3)))
          (i32.const 21184))
        (f32.mul
          (f32.load
            (i32.add
              (local.get $p2)
              (local.get $l3)))
          (f32.load
            (i32.add
              (local.get $l4)
              (i32.const 7072)))))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3528))))
    (local.set $l3
      (i32.const 0))
    (loop $L1
      (f32.store
        (local.tee $l5
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 21184)))
        (f32.add
          (f32.load
            (local.get $l5))
          (f32.mul
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 24712)))
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 16))))))
      (br_if $L1
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3528))))
    (local.set $l3
      (i32.const 0))
    (loop $L2
      (f32.store
        (local.tee $l5
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 21184)))
        (f32.add
          (f32.load
            (local.get $l5))
          (f32.mul
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 28240)))
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 3544))))))
      (br_if $L2
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3528))))
    (local.set $l3
      (i32.const 0))
    (loop $L3
      (i32.store
        (i32.add
          (local.tee $l4
            (i32.add
              (local.get $p0)
              (local.get $l3)))
          (i32.const 24712))
        (i32.load
          (i32.add
            (local.get $l4)
            (i32.const 28240))))
      (br_if $L3
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3528))))
    (local.set $l4
      (i32.add
        (local.get $p0)
        (i32.const 28240)))
    (local.set $l3
      (i32.const 0))
    (loop $L4
      (i32.store
        (i32.add
          (local.get $l4)
          (local.get $l3))
        (i32.load
          (i32.add
            (local.get $p2)
            (local.get $l3))))
      (br_if $L4
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3528))))
    (call $DSP::RealToHalfComplexTransform<882__DSP::Complex<float>_>::operator___DSP::Complex<float>*__float_const*_
      (i32.add
        (local.get $p0)
        (i32.const 10600))
      (i32.add
        (local.get $p0)
        (i32.const 31768))
      (i32.add
        (local.get $p0)
        (i32.const 21184)))
    (local.set $p0
      (i32.add
        (local.get $p0)
        (i32.const 31772)))
    (local.set $l3
      (i32.const 0))
    (loop $L5
      (f32.store
        (i32.add
          (local.get $p1)
          (local.get $l3))
        (f32.mul
          (f32.mul
            (local.tee $l6
              (f32.div
                (f32.add
                  (local.tee $l6
                    (f32.sqrt
                      (f32.sqrt
                        (f32.sqrt
                          (f32.sqrt
                            (f32.sqrt
                              (f32.sqrt
                                (f32.sqrt
                                  (f32.sqrt
                                    (f32.sqrt
                                      (f32.sqrt
                                        (f32.add
                                          (f32.mul
                                            (local.tee $l6
                                              (f32.load
                                                (local.get $p0)))
                                            (local.get $l6))
                                          (f32.mul
                                            (local.tee $l6
                                              (f32.load
                                                (i32.add
                                                  (local.get $p0)
                                                  (i32.const -4))))
                                            (local.get $l6))))))))))))))
                  (f32.const -0x1p+0 (;=-1;)))
                (f32.add
                  (local.get $l6)
                  (f32.const 0x1p+0 (;=1;)))))
            (f32.const 0x1.15f2cep+13 (;=8894.35;)))
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l6
                                    (f32.mul
                                      (local.get $l6)
                                      (local.get $l6)))
                                  (f32.const 0x1.3b13b2p-4 (;=0.0769231;)))
                                (f32.const 0x1.745d18p-4 (;=0.0909091;)))
                              (local.get $l6))
                            (f32.const 0x1.c71c72p-4 (;=0.111111;)))
                          (local.get $l6))
                        (f32.const 0x1.24924ap-3 (;=0.142857;)))
                      (local.get $l6))
                    (f32.const 0x1.99999ap-3 (;=0.2;)))
                  (local.get $l6))
                (f32.const 0x1.555556p-2 (;=0.333333;)))
              (local.get $l6))
            (f32.const 0x1p+0 (;=1;)))))
      (local.set $p0
        (i32.add
          (local.get $p0)
          (i32.const 8)))
      (br_if $L5
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 1768)))))
  (func $STFT<float__960__3>::operator___float*__float_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 f32)
    (local.set $l3
      (i32.const 0))
    (loop $L0
      (f32.store
        (i32.add
          (local.tee $l4
            (i32.add
              (local.get $p0)
              (local.get $l3)))
          (i32.const 23056))
        (f32.mul
          (f32.load
            (i32.add
              (local.get $p2)
              (local.get $l3)))
          (f32.load
            (i32.add
              (local.get $l4)
              (i32.const 7696)))))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3840))))
    (local.set $l3
      (i32.const 0))
    (loop $L1
      (f32.store
        (local.tee $l5
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 23056)))
        (f32.add
          (f32.load
            (local.get $l5))
          (f32.mul
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 26896)))
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 16))))))
      (br_if $L1
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3840))))
    (local.set $l3
      (i32.const 0))
    (loop $L2
      (f32.store
        (local.tee $l5
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 23056)))
        (f32.add
          (f32.load
            (local.get $l5))
          (f32.mul
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 30736)))
            (f32.load
              (i32.add
                (local.get $l4)
                (i32.const 3856))))))
      (br_if $L2
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3840))))
    (local.set $l3
      (i32.const 0))
    (loop $L3
      (i32.store
        (i32.add
          (local.tee $l4
            (i32.add
              (local.get $p0)
              (local.get $l3)))
          (i32.const 26896))
        (i32.load
          (i32.add
            (local.get $l4)
            (i32.const 30736))))
      (br_if $L3
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3840))))
    (local.set $l4
      (i32.add
        (local.get $p0)
        (i32.const 30736)))
    (local.set $l3
      (i32.const 0))
    (loop $L4
      (i32.store
        (i32.add
          (local.get $l4)
          (local.get $l3))
        (i32.load
          (i32.add
            (local.get $p2)
            (local.get $l3))))
      (br_if $L4
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 3840))))
    (call $DSP::RealToHalfComplexTransform<960__DSP::Complex<float>_>::operator___DSP::Complex<float>*__float_const*_
      (i32.add
        (local.get $p0)
        (i32.const 11536))
      (i32.add
        (local.get $p0)
        (i32.const 34576))
      (i32.add
        (local.get $p0)
        (i32.const 23056)))
    (local.set $p0
      (i32.add
        (local.get $p0)
        (i32.const 34580)))
    (local.set $l3
      (i32.const 0))
    (loop $L5
      (f32.store
        (i32.add
          (local.get $p1)
          (local.get $l3))
        (f32.mul
          (f32.mul
            (local.tee $l6
              (f32.div
                (f32.add
                  (local.tee $l6
                    (f32.sqrt
                      (f32.sqrt
                        (f32.sqrt
                          (f32.sqrt
                            (f32.sqrt
                              (f32.sqrt
                                (f32.sqrt
                                  (f32.sqrt
                                    (f32.sqrt
                                      (f32.sqrt
                                        (f32.add
                                          (f32.mul
                                            (local.tee $l6
                                              (f32.load
                                                (local.get $p0)))
                                            (local.get $l6))
                                          (f32.mul
                                            (local.tee $l6
                                              (f32.load
                                                (i32.add
                                                  (local.get $p0)
                                                  (i32.const -4))))
                                            (local.get $l6))))))))))))))
                  (f32.const -0x1p+0 (;=-1;)))
                (f32.add
                  (local.get $l6)
                  (f32.const 0x1p+0 (;=1;)))))
            (f32.const 0x1.15f2cep+13 (;=8894.35;)))
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l6
                                    (f32.mul
                                      (local.get $l6)
                                      (local.get $l6)))
                                  (f32.const 0x1.3b13b2p-4 (;=0.0769231;)))
                                (f32.const 0x1.745d18p-4 (;=0.0909091;)))
                              (local.get $l6))
                            (f32.const 0x1.c71c72p-4 (;=0.111111;)))
                          (local.get $l6))
                        (f32.const 0x1.24924ap-3 (;=0.142857;)))
                      (local.get $l6))
                    (f32.const 0x1.99999ap-3 (;=0.2;)))
                  (local.get $l6))
                (f32.const 0x1.555556p-2 (;=0.333333;)))
              (local.get $l6))
            (f32.const 0x1p+0 (;=1;)))))
      (local.set $p0
        (i32.add
          (local.get $p0)
          (i32.const 8)))
      (br_if $L5
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 4)))
          (i32.const 1924)))))
  (func $DSP::RealToHalfComplexTransform<882__DSP::Complex<float>_>::operator___DSP::Complex<float>*__float_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 f32) (local $l4 f32) (local $l5 i32) (local $l6 i32) (local $l7 f32) (local $l8 f32) (local $l9 f32) (local $l10 f32) (local $l11 i32) (local $l12 i32) (local $l13 f32) (local $l14 f32) (local $l15 f32) (local $l16 i32) (local $l17 f32) (local $l18 f32) (local $l19 f32)
    (call $DSP::FFT::Dit<7__441__1__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p1)
      (local.get $p2)
      (local.get $p0))
    (local.set $p2
      (i32.const 0))
    (i32.store
      (i32.add
        (local.get $p1)
        (i32.const 3532))
      (i32.const 0))
    (local.set $l3
      (f32.load offset=4
        (local.get $p1)))
    (i32.store offset=4
      (local.get $p1)
      (i32.const 0))
    (f32.store offset=3528
      (local.get $p1)
      (f32.mul
        (f32.sub
          (local.tee $l4
            (f32.load
              (local.get $p1)))
          (local.get $l3))
        (f32.const 0x1p-1 (;=0.5;))))
    (f32.store
      (local.get $p1)
      (f32.mul
        (f32.add
          (local.get $l3)
          (local.get $l4))
        (f32.const 0x1p-1 (;=0.5;))))
    (local.set $l5
      (i32.const 0))
    (loop $L0
      (local.set $l7
        (f32.load
          (i32.add
            (local.tee $l6
              (i32.add
                (local.get $p0)
                (local.get $l5)))
            (i32.const 7068))))
      (local.set $l8
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 7064))))
      (local.set $l9
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 3540))))
      (local.set $l10
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 3536))))
      (f32.store
        (local.tee $l12
          (i32.add
            (local.tee $l11
              (i32.add
                (local.get $p1)
                (local.get $p2)))
            (i32.const 3524)))
        (f32.add
          (f32.sub
            (f32.add
              (f32.mul
                (local.tee $l13
                  (f32.load
                    (i32.add
                      (local.tee $l6
                        (i32.add
                          (local.get $p0)
                          (local.get $p2)))
                      (i32.const 7052))))
                (local.tee $l3
                  (f32.load
                    (local.tee $l11
                      (i32.add
                        (local.get $l11)
                        (i32.const 3520))))))
              (f32.mul
                (local.tee $l14
                  (f32.load
                    (i32.add
                      (local.get $l6)
                      (i32.const 7048))))
                (local.tee $l4
                  (f32.load
                    (local.get $l12)))))
            (f32.mul
              (local.tee $l15
                (f32.load
                  (i32.add
                    (local.get $l6)
                    (i32.const 10576))))
              (local.tee $l17
                (f32.load
                  (local.tee $l16
                    (i32.add
                      (local.tee $l12
                        (i32.add
                          (local.get $p1)
                          (local.get $l5)))
                      (i32.const 12)))))))
          (f32.mul
            (local.tee $l18
              (f32.load
                (i32.add
                  (local.get $l6)
                  (i32.const 10580))))
            (local.tee $l19
              (f32.load
                (local.tee $l6
                  (i32.add
                    (local.get $l12)
                    (i32.const 8))))))))
      (f32.store
        (local.get $l11)
        (f32.add
          (f32.add
            (f32.sub
              (f32.mul
                (local.get $l14)
                (local.get $l3))
              (f32.mul
                (local.get $l13)
                (local.get $l4)))
            (f32.mul
              (local.get $l15)
              (local.get $l19)))
          (f32.mul
            (local.get $l18)
            (local.get $l17))))
      (f32.store
        (local.get $l16)
        (f32.add
          (f32.sub
            (f32.add
              (f32.mul
                (local.get $l9)
                (local.get $l19))
              (f32.mul
                (local.get $l10)
                (local.get $l17)))
            (f32.mul
              (local.get $l8)
              (local.get $l4)))
          (f32.mul
            (local.get $l7)
            (local.get $l3))))
      (f32.store
        (local.get $l6)
        (f32.add
          (f32.add
            (f32.sub
              (f32.mul
                (local.get $l10)
                (local.get $l19))
              (f32.mul
                (local.get $l9)
                (local.get $l17)))
            (f32.mul
              (local.get $l8)
              (local.get $l3)))
          (f32.mul
            (local.get $l7)
            (local.get $l4))))
      (local.set $p2
        (i32.add
          (local.get $p2)
          (i32.const -8)))
      (br_if $L0
        (i32.ne
          (local.tee $l5
            (i32.add
              (local.get $l5)
              (i32.const 8)))
          (i32.const 1760)))))
  (func $DSP::RealToHalfComplexTransform<960__DSP::Complex<float>_>::operator___DSP::Complex<float>*__float_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 f32) (local $l4 f32) (local $l5 i32) (local $l6 i32) (local $l7 f32) (local $l8 f32) (local $l9 f32) (local $l10 f32) (local $l11 i32) (local $l12 i32) (local $l13 f32) (local $l14 f32) (local $l15 f32) (local $l16 i32) (local $l17 f32) (local $l18 f32) (local $l19 f32)
    (call $DSP::FFT::Dit<5__480__1__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p1)
      (local.get $p2)
      (local.get $p0))
    (local.set $p2
      (i32.const 0))
    (i32.store
      (i32.add
        (local.get $p1)
        (i32.const 3844))
      (i32.const 0))
    (local.set $l3
      (f32.load offset=4
        (local.get $p1)))
    (i32.store offset=4
      (local.get $p1)
      (i32.const 0))
    (f32.store offset=3840
      (local.get $p1)
      (f32.mul
        (f32.sub
          (local.tee $l4
            (f32.load
              (local.get $p1)))
          (local.get $l3))
        (f32.const 0x1p-1 (;=0.5;))))
    (f32.store
      (local.get $p1)
      (f32.mul
        (f32.add
          (local.get $l3)
          (local.get $l4))
        (f32.const 0x1p-1 (;=0.5;))))
    (local.set $l5
      (i32.const 0))
    (loop $L0
      (local.set $l7
        (f32.load
          (i32.add
            (local.tee $l6
              (i32.add
                (local.get $p0)
                (local.get $l5)))
            (i32.const 7692))))
      (local.set $l8
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 7688))))
      (local.set $l9
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 3852))))
      (local.set $l10
        (f32.load
          (i32.add
            (local.get $l6)
            (i32.const 3848))))
      (f32.store
        (local.tee $l12
          (i32.add
            (local.tee $l11
              (i32.add
                (local.get $p1)
                (local.get $p2)))
            (i32.const 3836)))
        (f32.add
          (f32.sub
            (f32.add
              (f32.mul
                (local.tee $l13
                  (f32.load
                    (i32.add
                      (local.tee $l6
                        (i32.add
                          (local.get $p0)
                          (local.get $p2)))
                      (i32.const 7676))))
                (local.tee $l3
                  (f32.load
                    (local.tee $l11
                      (i32.add
                        (local.get $l11)
                        (i32.const 3832))))))
              (f32.mul
                (local.tee $l14
                  (f32.load
                    (i32.add
                      (local.get $l6)
                      (i32.const 7672))))
                (local.tee $l4
                  (f32.load
                    (local.get $l12)))))
            (f32.mul
              (local.tee $l15
                (f32.load
                  (i32.add
                    (local.get $l6)
                    (i32.const 11512))))
              (local.tee $l17
                (f32.load
                  (local.tee $l16
                    (i32.add
                      (local.tee $l12
                        (i32.add
                          (local.get $p1)
                          (local.get $l5)))
                      (i32.const 12)))))))
          (f32.mul
            (local.tee $l18
              (f32.load
                (i32.add
                  (local.get $l6)
                  (i32.const 11516))))
            (local.tee $l19
              (f32.load
                (local.tee $l6
                  (i32.add
                    (local.get $l12)
                    (i32.const 8))))))))
      (f32.store
        (local.get $l11)
        (f32.add
          (f32.add
            (f32.sub
              (f32.mul
                (local.get $l14)
                (local.get $l3))
              (f32.mul
                (local.get $l13)
                (local.get $l4)))
            (f32.mul
              (local.get $l15)
              (local.get $l19)))
          (f32.mul
            (local.get $l18)
            (local.get $l17))))
      (f32.store
        (local.get $l16)
        (f32.add
          (f32.sub
            (f32.add
              (f32.mul
                (local.get $l9)
                (local.get $l19))
              (f32.mul
                (local.get $l10)
                (local.get $l17)))
            (f32.mul
              (local.get $l8)
              (local.get $l4)))
          (f32.mul
            (local.get $l7)
            (local.get $l3))))
      (f32.store
        (local.get $l6)
        (f32.add
          (f32.add
            (f32.sub
              (f32.mul
                (local.get $l10)
                (local.get $l19))
              (f32.mul
                (local.get $l9)
                (local.get $l17)))
            (f32.mul
              (local.get $l8)
              (local.get $l3)))
          (f32.mul
            (local.get $l7)
            (local.get $l4))))
      (local.set $p2
        (i32.add
          (local.get $p2)
          (i32.const -8)))
      (br_if $L0
        (i32.ne
          (local.tee $l5
            (i32.add
              (local.get $l5)
              (i32.const 8)))
          (i32.const 1920)))))
  (func $change_rate (export "change_rate") (type $t2) (param $p0 i32)
    (i32.store offset=6812
      (i32.const 0)
      (local.get $p0))
    (i32.store offset=6808
      (i32.const 0)
      (select
        (i32.const 882)
        (i32.const 960)
        (i32.eq
          (local.get $p0)
          (i32.const 44100)))))
  (func $toggle_rainbow (export "toggle_rainbow") (type $t0)
    (i32.store8 offset=1024
      (i32.const 0)
      (i32.xor
        (i32.load8_u offset=1024
          (i32.const 0))
        (i32.const 1))))
  (func $toggle_phosphor (export "toggle_phosphor") (type $t0)
    (i32.store8 offset=1025
      (i32.const 0)
      (i32.xor
        (i32.load8_u offset=1025
          (i32.const 0))
        (i32.const 1))))
  (func $change_color (export "change_color") (type $t2) (param $p0 i32)
    (i32.store offset=6804
      (i32.const 0)
      (i32.and
        (local.get $p0)
        (i32.const 16777215))))
  (func $input_length (export "input_length") (type $t3) (result i32)
    (i32.load offset=6808
      (i32.const 0)))
  (func $input_pointer (export "input_pointer") (type $t3) (result i32)
    (i32.const 1040))
  (func $scope_length (export "scope_length") (type $t3) (result i32)
    (i32.const 97682))
  (func $scope_width (export "scope_width") (type $t3) (result i32)
    (i32.const 442))
  (func $scope_height (export "scope_height") (type $t3) (result i32)
    (i32.const 221))
  (func $scope_pointer (export "scope_pointer") (type $t3) (result i32)
    (i32.const 6816))
  (func $spectrum_length (export "spectrum_length") (type $t3) (result i32)
    (i32.const 48620))
  (func $spectrum_width (export "spectrum_width") (type $t3) (result i32)
    (i32.const 442))
  (func $spectrum_height (export "spectrum_height") (type $t3) (result i32)
    (i32.const 110))
  (func $spectrum_pointer (export "spectrum_pointer") (type $t3) (result i32)
    (i32.const 397544))
  (func $spectrogram_length (export "spectrogram_length") (type $t3) (result i32)
    (i32.const 97682))
  (func $spectrogram_width (export "spectrogram_width") (type $t3) (result i32)
    (i32.const 442))
  (func $spectrogram_height (export "spectrogram_height") (type $t3) (result i32)
    (i32.const 221))
  (func $spectrogram_pointer (export "spectrogram_pointer") (type $t3) (result i32)
    (i32.const 592024))
  (func $DSP::RealToHalfComplexTransform<882__DSP::Complex<float>_>::RealToHalfComplexTransform__ (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 f32) (local $l5 f32)
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 3528)))
    (local.set $l3
      (local.tee $l2
        (local.get $p0)))
    (loop $L0
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 7056)))
    (local.set $l3
      (i32.add
        (local.get $p0)
        (i32.const 3528)))
    (loop $L1
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L1
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 10584)))
    (local.set $l3
      (i32.add
        (local.get $p0)
        (i32.const 7056)))
    (loop $L2
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L2
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l3
      (i32.const 0))
    (loop $L3
      (local.set $l4
        (call $DSP::UnitCircle<float>::cos_int__int_
          (local.get $l3)
          (i32.const 441)))
      (local.set $l5
        (call $DSP::UnitCircle<float>::sin_int__int_
          (local.get $l3)
          (i32.const 441)))
      (f32.store
        (local.get $l2)
        (local.get $l4))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (f32.neg
          (local.get $l5)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (br_if $L3
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.const 441))))
    (local.set $l2
      (i32.add
        (local.get $p0)
        (i32.const 7060)))
    (local.set $l3
      (i32.const 0))
    (loop $L4
      (local.set $l4
        (call $DSP::UnitCircle<float>::sin_int__int_
          (local.get $l3)
          (i32.const 882)))
      (f32.store
        (local.get $l2)
        (f32.mul
          (local.tee $l5
            (call $DSP::UnitCircle<float>::cos_int__int_
              (local.get $l3)
              (i32.const 882)))
          (f32.const 0x1p-1 (;=0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -4))
        (f32.add
          (local.tee $l4
            (f32.mul
              (local.get $l4)
              (f32.const 0x1p-1 (;=0.5;))))
          (f32.const 0x1p-1 (;=0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -3528))
        (f32.mul
          (local.get $l5)
          (f32.const -0x1p-1 (;=-0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -3532))
        (f32.sub
          (f32.const 0x1p-1 (;=0.5;))
          (local.get $l4)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (br_if $L4
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.const 441))))
    (local.get $p0))
  (func $DSP::UnitCircle<float>::cos_int__int_ (type $t5) (param $p0 i32) (param $p1 i32) (result f32)
    (local $l2 i32) (local $l3 f32) (local $l4 f32) (local $l5 i32)
    (block $B0
      (br_if $B0
        (i32.ge_s
          (local.tee $l2
            (i32.shl
              (local.get $p0)
              (i32.const 3)))
          (i32.mul
            (local.get $p1)
            (i32.const -7))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l3
                                      (f32.mul
                                        (local.tee $l3
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.add
                                                  (local.get $p1)
                                                  (local.get $p0)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (local.get $p1))))
                                        (local.get $l3)))
                                    (f32.const -0x1.8fa49ap-37 (;=-1.13585e-11;)))
                                  (f32.const 0x1.1ee9d8p-29 (;=2.08757e-09;)))
                                (local.get $l3))
                              (f32.const -0x1.27e4f8p-22 (;=-2.75573e-07;)))
                            (local.get $l3))
                          (f32.const 0x1.a01a02p-16 (;=2.48016e-05;)))
                        (local.get $l3))
                      (f32.const -0x1.6c16c2p-10 (;=-0.00138889;)))
                    (local.get $l3))
                  (f32.const 0x1.555556p-5 (;=0.0416667;)))
                (local.get $l3))
              (f32.const -0x1p-1 (;=-0.5;)))
            (local.get $l3))
          (f32.const 0x1p+0 (;=1;)))))
    (block $B1
      (br_if $B1
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const -5))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l3
                                    (f32.mul
                                      (local.tee $l4
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.add
                                                (i32.mul
                                                  (local.get $p1)
                                                  (i32.const 3))
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 2))))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 2)))))
                                      (local.get $l4)))
                                  (f32.const -0x1.5d8fd2p-33 (;=-1.58962e-10;)))
                                (f32.const 0x1.ae5e5ap-26 (;=2.50507e-08;)))
                              (local.get $l3))
                            (f32.const -0x1.71de36p-19 (;=-2.75573e-06;)))
                          (local.get $l3))
                        (f32.const 0x1.a01a02p-13 (;=0.000198413;)))
                      (local.get $l3))
                    (f32.const -0x1.111112p-7 (;=-0.00833333;)))
                  (local.get $l3))
                (f32.const 0x1.555556p-3 (;=0.166667;)))
              (local.get $l3))
            (f32.const -0x1p+0 (;=-1;)))
          (local.get $l4))))
    (block $B2
      (br_if $B2
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const -3))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l3
                                      (f32.mul
                                        (local.tee $l3
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.add
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 1))
                                                  (local.get $p1)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 1)))))
                                        (local.get $l3)))
                                    (f32.const 0x1.8fa49ap-37 (;=1.13585e-11;)))
                                  (f32.const -0x1.1ee9d8p-29 (;=-2.08757e-09;)))
                                (local.get $l3))
                              (f32.const 0x1.27e4f8p-22 (;=2.75573e-07;)))
                            (local.get $l3))
                          (f32.const -0x1.a01a02p-16 (;=-2.48016e-05;)))
                        (local.get $l3))
                      (f32.const 0x1.6c16c2p-10 (;=0.00138889;)))
                    (local.get $l3))
                  (f32.const -0x1.555556p-5 (;=-0.0416667;)))
                (local.get $l3))
              (f32.const 0x1p-1 (;=0.5;)))
            (local.get $l3))
          (f32.const -0x1p+0 (;=-1;)))))
    (block $B3
      (br_if $B3
        (i32.ge_s
          (local.get $l2)
          (i32.sub
            (i32.const 0)
            (local.get $p1))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l3
                                    (f32.mul
                                      (local.tee $l4
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.add
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 2))
                                                (local.get $p1)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 2)))))
                                      (local.get $l4)))
                                  (f32.const 0x1.5d8fd2p-33 (;=1.58962e-10;)))
                                (f32.const -0x1.ae5e5ap-26 (;=-2.50507e-08;)))
                              (local.get $l3))
                            (f32.const 0x1.71de36p-19 (;=2.75573e-06;)))
                          (local.get $l3))
                        (f32.const -0x1.a01a02p-13 (;=-0.000198413;)))
                      (local.get $l3))
                    (f32.const 0x1.111112p-7 (;=0.00833333;)))
                  (local.get $l3))
                (f32.const -0x1.555556p-3 (;=-0.166667;)))
              (local.get $l3))
            (f32.const 0x1p+0 (;=1;)))
          (local.get $l4))))
    (block $B4
      (br_if $B4
        (i32.ge_s
          (local.get $l2)
          (local.get $p1)))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l3
                                      (f32.mul
                                        (local.tee $l3
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (local.get $p0))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (local.get $p1))))
                                        (local.get $l3)))
                                    (f32.const -0x1.8fa49ap-37 (;=-1.13585e-11;)))
                                  (f32.const 0x1.1ee9d8p-29 (;=2.08757e-09;)))
                                (local.get $l3))
                              (f32.const -0x1.27e4f8p-22 (;=-2.75573e-07;)))
                            (local.get $l3))
                          (f32.const 0x1.a01a02p-16 (;=2.48016e-05;)))
                        (local.get $l3))
                      (f32.const -0x1.6c16c2p-10 (;=-0.00138889;)))
                    (local.get $l3))
                  (f32.const 0x1.555556p-5 (;=0.0416667;)))
                (local.get $l3))
              (f32.const -0x1p-1 (;=-0.5;)))
            (local.get $l3))
          (f32.const 0x1p+0 (;=1;)))))
    (block $B5
      (br_if $B5
        (i32.ge_s
          (local.get $l2)
          (local.tee $l5
            (i32.mul
              (local.get $p1)
              (i32.const 3)))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l3
                                    (f32.mul
                                      (local.tee $l4
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.sub
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 2))
                                                (local.get $p1)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 2)))))
                                      (local.get $l4)))
                                  (f32.const -0x1.5d8fd2p-33 (;=-1.58962e-10;)))
                                (f32.const 0x1.ae5e5ap-26 (;=2.50507e-08;)))
                              (local.get $l3))
                            (f32.const -0x1.71de36p-19 (;=-2.75573e-06;)))
                          (local.get $l3))
                        (f32.const 0x1.a01a02p-13 (;=0.000198413;)))
                      (local.get $l3))
                    (f32.const -0x1.111112p-7 (;=-0.00833333;)))
                  (local.get $l3))
                (f32.const 0x1.555556p-3 (;=0.166667;)))
              (local.get $l3))
            (f32.const -0x1p+0 (;=-1;)))
          (local.get $l4))))
    (block $B6
      (br_if $B6
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const 5))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l3
                                      (f32.mul
                                        (local.tee $l3
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.sub
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 1))
                                                  (local.get $p1)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 1)))))
                                        (local.get $l3)))
                                    (f32.const 0x1.8fa49ap-37 (;=1.13585e-11;)))
                                  (f32.const -0x1.1ee9d8p-29 (;=-2.08757e-09;)))
                                (local.get $l3))
                              (f32.const 0x1.27e4f8p-22 (;=2.75573e-07;)))
                            (local.get $l3))
                          (f32.const -0x1.a01a02p-16 (;=-2.48016e-05;)))
                        (local.get $l3))
                      (f32.const 0x1.6c16c2p-10 (;=0.00138889;)))
                    (local.get $l3))
                  (f32.const -0x1.555556p-5 (;=-0.0416667;)))
                (local.get $l3))
              (f32.const 0x1p-1 (;=0.5;)))
            (local.get $l3))
          (f32.const -0x1p+0 (;=-1;)))))
    (block $B7
      (br_if $B7
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const 7))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l3
                                    (f32.mul
                                      (local.tee $l4
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.sub
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 2))
                                                (local.get $l5)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 2)))))
                                      (local.get $l4)))
                                  (f32.const 0x1.5d8fd2p-33 (;=1.58962e-10;)))
                                (f32.const -0x1.ae5e5ap-26 (;=-2.50507e-08;)))
                              (local.get $l3))
                            (f32.const 0x1.71de36p-19 (;=2.75573e-06;)))
                          (local.get $l3))
                        (f32.const -0x1.a01a02p-13 (;=-0.000198413;)))
                      (local.get $l3))
                    (f32.const 0x1.111112p-7 (;=0.00833333;)))
                  (local.get $l3))
                (f32.const -0x1.555556p-3 (;=-0.166667;)))
              (local.get $l3))
            (f32.const 0x1p+0 (;=1;)))
          (local.get $l4))))
    (f32.add
      (f32.mul
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (local.tee $l3
                                  (f32.mul
                                    (local.tee $l3
                                      (f32.div
                                        (f32.mul
                                          (f32.convert_i32_s
                                            (i32.sub
                                              (local.get $p0)
                                              (local.get $p1)))
                                          (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                        (f32.convert_i32_s
                                          (local.get $p1))))
                                    (local.get $l3)))
                                (f32.const -0x1.8fa49ap-37 (;=-1.13585e-11;)))
                              (f32.const 0x1.1ee9d8p-29 (;=2.08757e-09;)))
                            (local.get $l3))
                          (f32.const -0x1.27e4f8p-22 (;=-2.75573e-07;)))
                        (local.get $l3))
                      (f32.const 0x1.a01a02p-16 (;=2.48016e-05;)))
                    (local.get $l3))
                  (f32.const -0x1.6c16c2p-10 (;=-0.00138889;)))
                (local.get $l3))
              (f32.const 0x1.555556p-5 (;=0.0416667;)))
            (local.get $l3))
          (f32.const -0x1p-1 (;=-0.5;)))
        (local.get $l3))
      (f32.const 0x1p+0 (;=1;))))
  (func $DSP::UnitCircle<float>::sin_int__int_ (type $t5) (param $p0 i32) (param $p1 i32) (result f32)
    (local $l2 i32) (local $l3 f32) (local $l4 f32) (local $l5 i32)
    (block $B0
      (br_if $B0
        (i32.ge_s
          (local.tee $l2
            (i32.shl
              (local.get $p0)
              (i32.const 3)))
          (i32.mul
            (local.get $p1)
            (i32.const -7))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l4
                                    (f32.mul
                                      (local.tee $l3
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.add
                                                (local.get $p1)
                                                (local.get $p0)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (local.get $p1))))
                                      (local.get $l3)))
                                  (f32.const 0x1.5d8fd2p-33 (;=1.58962e-10;)))
                                (f32.const -0x1.ae5e5ap-26 (;=-2.50507e-08;)))
                              (local.get $l4))
                            (f32.const 0x1.71de36p-19 (;=2.75573e-06;)))
                          (local.get $l4))
                        (f32.const -0x1.a01a02p-13 (;=-0.000198413;)))
                      (local.get $l4))
                    (f32.const 0x1.111112p-7 (;=0.00833333;)))
                  (local.get $l4))
                (f32.const -0x1.555556p-3 (;=-0.166667;)))
              (local.get $l4))
            (f32.const 0x1p+0 (;=1;)))
          (local.get $l3))))
    (block $B1
      (br_if $B1
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const -5))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l4
                                      (f32.mul
                                        (local.tee $l4
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.add
                                                  (i32.mul
                                                    (local.get $p1)
                                                    (i32.const 3))
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 2))))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 2)))))
                                        (local.get $l4)))
                                    (f32.const -0x1.8fa49ap-37 (;=-1.13585e-11;)))
                                  (f32.const 0x1.1ee9d8p-29 (;=2.08757e-09;)))
                                (local.get $l4))
                              (f32.const -0x1.27e4f8p-22 (;=-2.75573e-07;)))
                            (local.get $l4))
                          (f32.const 0x1.a01a02p-16 (;=2.48016e-05;)))
                        (local.get $l4))
                      (f32.const -0x1.6c16c2p-10 (;=-0.00138889;)))
                    (local.get $l4))
                  (f32.const 0x1.555556p-5 (;=0.0416667;)))
                (local.get $l4))
              (f32.const -0x1p-1 (;=-0.5;)))
            (local.get $l4))
          (f32.const 0x1p+0 (;=1;)))))
    (block $B2
      (br_if $B2
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const -3))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l4
                                    (f32.mul
                                      (local.tee $l3
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.add
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 1))
                                                (local.get $p1)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 1)))))
                                      (local.get $l3)))
                                  (f32.const -0x1.5d8fd2p-33 (;=-1.58962e-10;)))
                                (f32.const 0x1.ae5e5ap-26 (;=2.50507e-08;)))
                              (local.get $l4))
                            (f32.const -0x1.71de36p-19 (;=-2.75573e-06;)))
                          (local.get $l4))
                        (f32.const 0x1.a01a02p-13 (;=0.000198413;)))
                      (local.get $l4))
                    (f32.const -0x1.111112p-7 (;=-0.00833333;)))
                  (local.get $l4))
                (f32.const 0x1.555556p-3 (;=0.166667;)))
              (local.get $l4))
            (f32.const -0x1p+0 (;=-1;)))
          (local.get $l3))))
    (block $B3
      (br_if $B3
        (i32.ge_s
          (local.get $l2)
          (i32.sub
            (i32.const 0)
            (local.get $p1))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l4
                                      (f32.mul
                                        (local.tee $l4
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.add
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 2))
                                                  (local.get $p1)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 2)))))
                                        (local.get $l4)))
                                    (f32.const 0x1.8fa49ap-37 (;=1.13585e-11;)))
                                  (f32.const -0x1.1ee9d8p-29 (;=-2.08757e-09;)))
                                (local.get $l4))
                              (f32.const 0x1.27e4f8p-22 (;=2.75573e-07;)))
                            (local.get $l4))
                          (f32.const -0x1.a01a02p-16 (;=-2.48016e-05;)))
                        (local.get $l4))
                      (f32.const 0x1.6c16c2p-10 (;=0.00138889;)))
                    (local.get $l4))
                  (f32.const -0x1.555556p-5 (;=-0.0416667;)))
                (local.get $l4))
              (f32.const 0x1p-1 (;=0.5;)))
            (local.get $l4))
          (f32.const -0x1p+0 (;=-1;)))))
    (block $B4
      (br_if $B4
        (i32.ge_s
          (local.get $l2)
          (local.get $p1)))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l4
                                    (f32.mul
                                      (local.tee $l3
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (local.get $p0))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (local.get $p1))))
                                      (local.get $l3)))
                                  (f32.const 0x1.5d8fd2p-33 (;=1.58962e-10;)))
                                (f32.const -0x1.ae5e5ap-26 (;=-2.50507e-08;)))
                              (local.get $l4))
                            (f32.const 0x1.71de36p-19 (;=2.75573e-06;)))
                          (local.get $l4))
                        (f32.const -0x1.a01a02p-13 (;=-0.000198413;)))
                      (local.get $l4))
                    (f32.const 0x1.111112p-7 (;=0.00833333;)))
                  (local.get $l4))
                (f32.const -0x1.555556p-3 (;=-0.166667;)))
              (local.get $l4))
            (f32.const 0x1p+0 (;=1;)))
          (local.get $l3))))
    (block $B5
      (br_if $B5
        (i32.ge_s
          (local.get $l2)
          (local.tee $l5
            (i32.mul
              (local.get $p1)
              (i32.const 3)))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l4
                                      (f32.mul
                                        (local.tee $l4
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.sub
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 2))
                                                  (local.get $p1)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 2)))))
                                        (local.get $l4)))
                                    (f32.const -0x1.8fa49ap-37 (;=-1.13585e-11;)))
                                  (f32.const 0x1.1ee9d8p-29 (;=2.08757e-09;)))
                                (local.get $l4))
                              (f32.const -0x1.27e4f8p-22 (;=-2.75573e-07;)))
                            (local.get $l4))
                          (f32.const 0x1.a01a02p-16 (;=2.48016e-05;)))
                        (local.get $l4))
                      (f32.const -0x1.6c16c2p-10 (;=-0.00138889;)))
                    (local.get $l4))
                  (f32.const 0x1.555556p-5 (;=0.0416667;)))
                (local.get $l4))
              (f32.const -0x1p-1 (;=-0.5;)))
            (local.get $l4))
          (f32.const 0x1p+0 (;=1;)))))
    (block $B6
      (br_if $B6
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const 5))))
      (return
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (f32.add
                                (f32.mul
                                  (local.tee $l4
                                    (f32.mul
                                      (local.tee $l3
                                        (f32.div
                                          (f32.mul
                                            (f32.convert_i32_s
                                              (i32.sub
                                                (i32.shl
                                                  (local.get $p0)
                                                  (i32.const 1))
                                                (local.get $p1)))
                                            (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                          (f32.convert_i32_s
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 1)))))
                                      (local.get $l3)))
                                  (f32.const -0x1.5d8fd2p-33 (;=-1.58962e-10;)))
                                (f32.const 0x1.ae5e5ap-26 (;=2.50507e-08;)))
                              (local.get $l4))
                            (f32.const -0x1.71de36p-19 (;=-2.75573e-06;)))
                          (local.get $l4))
                        (f32.const 0x1.a01a02p-13 (;=0.000198413;)))
                      (local.get $l4))
                    (f32.const -0x1.111112p-7 (;=-0.00833333;)))
                  (local.get $l4))
                (f32.const 0x1.555556p-3 (;=0.166667;)))
              (local.get $l4))
            (f32.const -0x1p+0 (;=-1;)))
          (local.get $l3))))
    (block $B7
      (br_if $B7
        (i32.ge_s
          (local.get $l2)
          (i32.mul
            (local.get $p1)
            (i32.const 7))))
      (return
        (f32.add
          (f32.mul
            (f32.add
              (f32.mul
                (f32.add
                  (f32.mul
                    (f32.add
                      (f32.mul
                        (f32.add
                          (f32.mul
                            (f32.add
                              (f32.mul
                                (f32.add
                                  (f32.mul
                                    (local.tee $l4
                                      (f32.mul
                                        (local.tee $l4
                                          (f32.div
                                            (f32.mul
                                              (f32.convert_i32_s
                                                (i32.sub
                                                  (i32.shl
                                                    (local.get $p0)
                                                    (i32.const 2))
                                                  (local.get $l5)))
                                              (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                            (f32.convert_i32_s
                                              (i32.shl
                                                (local.get $p1)
                                                (i32.const 2)))))
                                        (local.get $l4)))
                                    (f32.const 0x1.8fa49ap-37 (;=1.13585e-11;)))
                                  (f32.const -0x1.1ee9d8p-29 (;=-2.08757e-09;)))
                                (local.get $l4))
                              (f32.const 0x1.27e4f8p-22 (;=2.75573e-07;)))
                            (local.get $l4))
                          (f32.const -0x1.a01a02p-16 (;=-2.48016e-05;)))
                        (local.get $l4))
                      (f32.const 0x1.6c16c2p-10 (;=0.00138889;)))
                    (local.get $l4))
                  (f32.const -0x1.555556p-5 (;=-0.0416667;)))
                (local.get $l4))
              (f32.const 0x1p-1 (;=0.5;)))
            (local.get $l4))
          (f32.const -0x1p+0 (;=-1;)))))
    (f32.mul
      (f32.add
        (f32.mul
          (f32.add
            (f32.mul
              (f32.add
                (f32.mul
                  (f32.add
                    (f32.mul
                      (f32.add
                        (f32.mul
                          (f32.add
                            (f32.mul
                              (local.tee $l4
                                (f32.mul
                                  (local.tee $l3
                                    (f32.div
                                      (f32.mul
                                        (f32.convert_i32_s
                                          (i32.sub
                                            (local.get $p0)
                                            (local.get $p1)))
                                        (f32.const 0x1.921fb6p+2 (;=6.28319;)))
                                      (f32.convert_i32_s
                                        (local.get $p1))))
                                  (local.get $l3)))
                              (f32.const 0x1.5d8fd2p-33 (;=1.58962e-10;)))
                            (f32.const -0x1.ae5e5ap-26 (;=-2.50507e-08;)))
                          (local.get $l4))
                        (f32.const 0x1.71de36p-19 (;=2.75573e-06;)))
                      (local.get $l4))
                    (f32.const -0x1.a01a02p-13 (;=-0.000198413;)))
                  (local.get $l4))
                (f32.const 0x1.111112p-7 (;=0.00833333;)))
              (local.get $l4))
            (f32.const -0x1.555556p-3 (;=-0.166667;)))
          (local.get $l4))
        (f32.const 0x1p+0 (;=1;)))
      (local.get $l3)))
  (func $DSP::RealToHalfComplexTransform<960__DSP::Complex<float>_>::RealToHalfComplexTransform__ (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 f32) (local $l5 f32)
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 3840)))
    (local.set $l3
      (local.tee $l2
        (local.get $p0)))
    (loop $L0
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 7680)))
    (local.set $l3
      (i32.add
        (local.get $p0)
        (i32.const 3840)))
    (loop $L1
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L1
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l1
      (i32.add
        (local.get $p0)
        (i32.const 11520)))
    (local.set $l3
      (i32.add
        (local.get $p0)
        (i32.const 7680)))
    (loop $L2
      (i64.store align=4
        (local.get $l3)
        (i64.const 0))
      (br_if $L2
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (local.get $l1))))
    (local.set $l3
      (i32.const 0))
    (loop $L3
      (local.set $l4
        (call $DSP::UnitCircle<float>::cos_int__int_
          (local.get $l3)
          (i32.const 480)))
      (local.set $l5
        (call $DSP::UnitCircle<float>::sin_int__int_
          (local.get $l3)
          (i32.const 480)))
      (f32.store
        (local.get $l2)
        (local.get $l4))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (f32.neg
          (local.get $l5)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (br_if $L3
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.const 480))))
    (local.set $l2
      (i32.add
        (local.get $p0)
        (i32.const 7684)))
    (local.set $l3
      (i32.const 0))
    (loop $L4
      (local.set $l4
        (call $DSP::UnitCircle<float>::sin_int__int_
          (local.get $l3)
          (i32.const 960)))
      (f32.store
        (local.get $l2)
        (f32.mul
          (local.tee $l5
            (call $DSP::UnitCircle<float>::cos_int__int_
              (local.get $l3)
              (i32.const 960)))
          (f32.const 0x1p-1 (;=0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -4))
        (f32.add
          (local.tee $l4
            (f32.mul
              (local.get $l4)
              (f32.const 0x1p-1 (;=0.5;))))
          (f32.const 0x1p-1 (;=0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -3840))
        (f32.mul
          (local.get $l5)
          (f32.const -0x1p-1 (;=-0.5;))))
      (f32.store
        (i32.add
          (local.get $l2)
          (i32.const -3844))
        (f32.sub
          (f32.const 0x1p-1 (;=0.5;))
          (local.get $l4)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (br_if $L4
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.const 480))))
    (local.get $p0))
  (func $DSP::FFT::Dit<7__441__1__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 f32) (local $l10 i32) (local $l11 i32) (local $l12 f32) (local $l13 i32) (local $l14 f32) (local $l15 i32) (local $l16 f32) (local $l17 f32) (local $l18 f32) (local $l19 f32) (local $l20 i32) (local $l21 f32) (local $l22 i32) (local $l23 f32) (local $l24 f32) (local $l25 f32) (local $l26 f32) (local $l27 f32) (local $l28 f32) (local $l29 f32) (local $l30 i32) (local $l31 f32) (local $l32 f32) (local $l33 f32) (local $l34 f32) (local $l35 i32) (local $l36 f32) (local $l37 i32) (local $l38 f32) (local $l39 f32) (local $l40 f32) (local $l41 f32) (local $l42 f32) (local $l43 i32) (local $l44 f32) (local $l45 i32) (local $l46 f32) (local $l47 f32) (local $l48 f32) (local $l49 f32) (local $l50 i32) (local $l51 f32) (local $l52 i32) (local $l53 f32) (local $l54 f32) (local $l55 f32) (local $l56 f32) (local $l57 f32)
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 504))
      (i32.add
        (local.get $p1)
        (i32.const 8))
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 1008))
      (i32.add
        (local.get $p1)
        (i32.const 16))
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 1512))
      (i32.add
        (local.get $p1)
        (i32.const 24))
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 2016))
      (i32.add
        (local.get $p1)
        (i32.const 32))
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 2520))
      (i32.add
        (local.get $p1)
        (i32.const 40))
      (local.get $p2))
    (call $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 3024))
      (i32.add
        (local.get $p1)
        (i32.const 48))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (i32.const 0))
    (local.set $l5
      (i32.const 0))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.const 0))
    (local.set $l8
      (i32.const 0))
    (loop $L0
      (local.set $l9
        (f32.load
          (local.tee $p1
            (i32.add
              (local.get $p0)
              (local.get $l3)))))
      (f32.store
        (local.tee $l10
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (f32.add
          (f32.add
            (f32.add
              (local.tee $l26
                (f32.add
                  (local.tee $l18
                    (f32.add
                      (f32.mul
                        (local.tee $l12
                          (f32.load
                            (local.tee $l11
                              (i32.add
                                (local.get $p1)
                                (i32.const 2020)))))
                        (local.tee $l14
                          (f32.load
                            (local.tee $l13
                              (i32.add
                                (local.get $p2)
                                (local.get $l6))))))
                      (f32.mul
                        (local.tee $l16
                          (f32.load
                            (local.tee $l15
                              (i32.add
                                (local.get $p1)
                                (i32.const 2016)))))
                        (local.tee $l17
                          (f32.load
                            (i32.add
                              (local.get $l13)
                              (i32.const 4)))))))
                  (local.tee $l25
                    (f32.add
                      (f32.mul
                        (local.tee $l19
                          (f32.load
                            (local.tee $l13
                              (i32.add
                                (local.get $p1)
                                (i32.const 1516)))))
                        (local.tee $l21
                          (f32.load
                            (local.tee $l20
                              (i32.add
                                (local.get $p2)
                                (local.get $l5))))))
                      (f32.mul
                        (local.tee $l23
                          (f32.load
                            (local.tee $l22
                              (i32.add
                                (local.get $p1)
                                (i32.const 1512)))))
                        (local.tee $l24
                          (f32.load
                            (i32.add
                              (local.get $l20)
                              (i32.const 4)))))))))
              (local.tee $l27
                (f32.load
                  (local.get $l10))))
            (local.tee $l41
              (f32.add
                (local.tee $l33
                  (f32.add
                    (f32.mul
                      (local.tee $l28
                        (f32.load
                          (local.tee $l10
                            (i32.add
                              (local.get $p1)
                              (i32.const 2524)))))
                      (local.tee $l29
                        (f32.load
                          (local.tee $l20
                            (i32.add
                              (local.get $p2)
                              (local.get $l7))))))
                    (f32.mul
                      (local.tee $l31
                        (f32.load
                          (local.tee $l30
                            (i32.add
                              (local.get $p1)
                              (i32.const 2520)))))
                      (local.tee $l32
                        (f32.load
                          (i32.add
                            (local.get $l20)
                            (i32.const 4)))))))
                (local.tee $l40
                  (f32.add
                    (f32.mul
                      (local.tee $l34
                        (f32.load
                          (local.tee $l20
                            (i32.add
                              (local.get $p1)
                              (i32.const 1012)))))
                      (local.tee $l36
                        (f32.load
                          (local.tee $l35
                            (i32.add
                              (local.get $p2)
                              (local.get $l4))))))
                    (f32.mul
                      (local.tee $l38
                        (f32.load
                          (local.tee $l37
                            (i32.add
                              (local.get $p1)
                              (i32.const 1008)))))
                      (local.tee $l39
                        (f32.load
                          (i32.add
                            (local.get $l35)
                            (i32.const 4))))))))))
          (local.tee $l56
            (f32.add
              (local.tee $l48
                (f32.add
                  (f32.mul
                    (local.tee $l42
                      (f32.load
                        (local.tee $l35
                          (i32.add
                            (local.get $p1)
                            (i32.const 3028)))))
                    (local.tee $l44
                      (f32.load
                        (local.tee $l43
                          (i32.add
                            (local.get $p2)
                            (local.get $l8))))))
                  (f32.mul
                    (local.tee $l46
                      (f32.load
                        (local.tee $l45
                          (i32.add
                            (local.get $p1)
                            (i32.const 3024)))))
                    (local.tee $l47
                      (f32.load
                        (i32.add
                          (local.get $l43)
                          (i32.const 4)))))))
              (local.tee $l55
                (f32.add
                  (f32.mul
                    (local.tee $l49
                      (f32.load
                        (local.tee $l43
                          (i32.add
                            (local.get $p1)
                            (i32.const 508)))))
                    (local.tee $l51
                      (f32.load
                        (local.tee $l50
                          (i32.add
                            (local.get $p2)
                            (local.get $l3))))))
                  (f32.mul
                    (local.tee $l53
                      (f32.load
                        (local.tee $l52
                          (i32.add
                            (local.get $p1)
                            (i32.const 504)))))
                    (local.tee $l54
                      (f32.load
                        (i32.add
                          (local.get $l50)
                          (i32.const 4)))))))))))
      (f32.store
        (local.get $p1)
        (f32.add
          (f32.add
            (f32.add
              (local.get $l9)
              (local.tee $l12
                (f32.add
                  (local.tee $l57
                    (f32.sub
                      (f32.mul
                        (local.get $l16)
                        (local.get $l14))
                      (f32.mul
                        (local.get $l12)
                        (local.get $l17))))
                  (local.tee $l19
                    (f32.sub
                      (f32.mul
                        (local.get $l23)
                        (local.get $l21))
                      (f32.mul
                        (local.get $l19)
                        (local.get $l24)))))))
            (local.tee $l14
              (f32.add
                (local.tee $l17
                  (f32.sub
                    (f32.mul
                      (local.get $l31)
                      (local.get $l29))
                    (f32.mul
                      (local.get $l28)
                      (local.get $l32))))
                (local.tee $l21
                  (f32.sub
                    (f32.mul
                      (local.get $l38)
                      (local.get $l36))
                    (f32.mul
                      (local.get $l34)
                      (local.get $l39)))))))
          (local.tee $l16
            (f32.add
              (local.tee $l23
                (f32.sub
                  (f32.mul
                    (local.get $l46)
                    (local.get $l44))
                  (f32.mul
                    (local.get $l42)
                    (local.get $l47))))
              (local.tee $l24
                (f32.sub
                  (f32.mul
                    (local.get $l53)
                    (local.get $l51))
                  (f32.mul
                    (local.get $l49)
                    (local.get $l54))))))))
      (f32.store
        (local.get $l35)
        (f32.sub
          (local.tee $l28
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l27)
                  (f32.mul
                    (local.get $l26)
                    (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
                (f32.mul
                  (local.get $l41)
                  (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
              (f32.mul
                (local.get $l56)
                (f32.const 0x1.3f3a0ep-1 (;=0.62349;)))))
          (local.tee $l29
            (f32.add
              (f32.add
                (f32.mul
                  (local.tee $l17
                    (f32.sub
                      (local.get $l17)
                      (local.get $l21)))
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.tee $l19
                    (f32.sub
                      (local.get $l57)
                      (local.get $l19)))
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.tee $l21
                  (f32.sub
                    (local.get $l23)
                    (local.get $l24)))
                (f32.const 0x1.904c38p-1 (;=0.781832;)))))))
      (f32.store
        (local.get $l45)
        (f32.sub
          (local.tee $l31
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l9)
                  (f32.mul
                    (local.get $l12)
                    (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
                (f32.mul
                  (local.get $l14)
                  (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
              (f32.mul
                (local.get $l16)
                (f32.const 0x1.3f3a0ep-1 (;=0.62349;)))))
          (local.tee $l25
            (f32.add
              (f32.add
                (f32.mul
                  (local.tee $l23
                    (f32.sub
                      (local.get $l40)
                      (local.get $l33)))
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.tee $l18
                    (f32.sub
                      (local.get $l25)
                      (local.get $l18)))
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.tee $l24
                  (f32.sub
                    (local.get $l55)
                    (local.get $l48)))
                (f32.const 0x1.904c38p-1 (;=0.781832;)))))))
      (f32.store
        (local.get $l10)
        (f32.sub
          (local.tee $l32
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l27)
                  (f32.mul
                    (local.get $l26)
                    (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
                (f32.mul
                  (local.get $l41)
                  (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
              (f32.mul
                (local.get $l56)
                (f32.const -0x1.c7b90ep-3 (;=-0.222521;)))))
          (local.tee $l33
            (f32.add
              (f32.sub
                (f32.mul
                  (local.get $l21)
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.get $l17)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.get $l19)
                (f32.const -0x1.904c38p-1 (;=-0.781832;)))))))
      (f32.store
        (local.get $l30)
        (f32.sub
          (local.tee $l34
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l9)
                  (f32.mul
                    (local.get $l12)
                    (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
                (f32.mul
                  (local.get $l14)
                  (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
              (f32.mul
                (local.get $l16)
                (f32.const -0x1.c7b90ep-3 (;=-0.222521;)))))
          (local.tee $l36
            (f32.add
              (f32.sub
                (f32.mul
                  (local.get $l24)
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.get $l23)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.get $l18)
                (f32.const -0x1.904c38p-1 (;=-0.781832;)))))))
      (f32.store
        (local.get $l11)
        (f32.sub
          (local.tee $l26
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l27)
                  (f32.mul
                    (local.get $l26)
                    (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
                (f32.mul
                  (local.get $l41)
                  (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
              (f32.mul
                (local.get $l56)
                (f32.const -0x1.cd4bcap-1 (;=-0.900969;)))))
          (local.tee $l27
            (f32.add
              (f32.add
                (f32.mul
                  (local.get $l21)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;)))
                (f32.mul
                  (local.get $l17)
                  (f32.const -0x1.904c38p-1 (;=-0.781832;))))
              (f32.mul
                (local.get $l19)
                (f32.const 0x1.f329cp-1 (;=0.974928;)))))))
      (f32.store
        (local.get $l15)
        (f32.sub
          (local.tee $l9
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l9)
                  (f32.mul
                    (local.get $l12)
                    (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
                (f32.mul
                  (local.get $l14)
                  (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
              (f32.mul
                (local.get $l16)
                (f32.const -0x1.cd4bcap-1 (;=-0.900969;)))))
          (local.tee $l41
            (f32.add
              (f32.add
                (f32.mul
                  (local.get $l24)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;)))
                (f32.mul
                  (local.get $l23)
                  (f32.const -0x1.904c38p-1 (;=-0.781832;))))
              (f32.mul
                (local.get $l18)
                (f32.const 0x1.f329cp-1 (;=0.974928;)))))))
      (f32.store
        (local.get $l13)
        (f32.add
          (local.get $l27)
          (local.get $l26)))
      (f32.store
        (local.get $l22)
        (f32.add
          (local.get $l41)
          (local.get $l9)))
      (f32.store
        (local.get $l20)
        (f32.add
          (local.get $l33)
          (local.get $l32)))
      (f32.store
        (local.get $l37)
        (f32.add
          (local.get $l36)
          (local.get $l34)))
      (f32.store
        (local.get $l43)
        (f32.add
          (local.get $l28)
          (local.get $l29)))
      (f32.store
        (local.get $l52)
        (f32.add
          (local.get $l25)
          (local.get $l31)))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 16)))
      (local.set $l5
        (i32.add
          (local.get $l5)
          (i32.const 24)))
      (local.set $l6
        (i32.add
          (local.get $l6)
          (i32.const 32)))
      (local.set $l7
        (i32.add
          (local.get $l7)
          (i32.const 40)))
      (local.set $l8
        (i32.add
          (local.get $l8)
          (i32.const 48)))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 504)))))
  (func $DSP::FFT::Dit<7__63__7__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 f32) (local $l11 i32) (local $l12 i32) (local $l13 f32) (local $l14 i32) (local $l15 f32) (local $l16 i32) (local $l17 f32) (local $l18 f32) (local $l19 f32) (local $l20 f32) (local $l21 i32) (local $l22 f32) (local $l23 i32) (local $l24 f32) (local $l25 f32) (local $l26 f32) (local $l27 f32) (local $l28 f32) (local $l29 f32) (local $l30 f32) (local $l31 i32) (local $l32 f32) (local $l33 f32) (local $l34 f32) (local $l35 f32) (local $l36 i32) (local $l37 f32) (local $l38 i32) (local $l39 f32) (local $l40 f32) (local $l41 f32) (local $l42 f32) (local $l43 f32) (local $l44 i32) (local $l45 f32) (local $l46 i32) (local $l47 f32) (local $l48 f32) (local $l49 f32) (local $l50 f32) (local $l51 i32) (local $l52 f32) (local $l53 i32) (local $l54 f32) (local $l55 f32) (local $l56 f32) (local $l57 f32) (local $l58 f32)
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 72))
      (i32.add
        (local.get $p1)
        (i32.const 56))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 144))
      (i32.add
        (local.get $p1)
        (i32.const 112))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 216))
      (i32.add
        (local.get $p1)
        (i32.const 168))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 288))
      (i32.add
        (local.get $p1)
        (i32.const 224))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 360))
      (i32.add
        (local.get $p1)
        (i32.const 280))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 432))
      (i32.add
        (local.get $p1)
        (i32.const 336))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (i32.const 0))
    (local.set $l5
      (i32.const 0))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.const 0))
    (local.set $l8
      (i32.const 0))
    (local.set $l9
      (i32.const 0))
    (loop $L0
      (local.set $l10
        (f32.load
          (local.tee $p1
            (i32.add
              (local.get $p0)
              (local.get $l3)))))
      (f32.store
        (local.tee $l11
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (f32.add
          (f32.add
            (f32.add
              (local.tee $l27
                (f32.add
                  (local.tee $l19
                    (f32.add
                      (f32.mul
                        (local.tee $l13
                          (f32.load
                            (local.tee $l12
                              (i32.add
                                (local.get $p1)
                                (i32.const 292)))))
                        (local.tee $l15
                          (f32.load
                            (local.tee $l14
                              (i32.add
                                (local.get $p2)
                                (local.get $l7))))))
                      (f32.mul
                        (local.tee $l17
                          (f32.load
                            (local.tee $l16
                              (i32.add
                                (local.get $p1)
                                (i32.const 288)))))
                        (local.tee $l18
                          (f32.load
                            (i32.add
                              (local.get $l14)
                              (i32.const 4)))))))
                  (local.tee $l26
                    (f32.add
                      (f32.mul
                        (local.tee $l20
                          (f32.load
                            (local.tee $l14
                              (i32.add
                                (local.get $p1)
                                (i32.const 220)))))
                        (local.tee $l22
                          (f32.load
                            (local.tee $l21
                              (i32.add
                                (local.get $p2)
                                (local.get $l6))))))
                      (f32.mul
                        (local.tee $l24
                          (f32.load
                            (local.tee $l23
                              (i32.add
                                (local.get $p1)
                                (i32.const 216)))))
                        (local.tee $l25
                          (f32.load
                            (i32.add
                              (local.get $l21)
                              (i32.const 4)))))))))
              (local.tee $l28
                (f32.load
                  (local.get $l11))))
            (local.tee $l42
              (f32.add
                (local.tee $l34
                  (f32.add
                    (f32.mul
                      (local.tee $l29
                        (f32.load
                          (local.tee $l11
                            (i32.add
                              (local.get $p1)
                              (i32.const 364)))))
                      (local.tee $l30
                        (f32.load
                          (local.tee $l21
                            (i32.add
                              (local.get $p2)
                              (local.get $l8))))))
                    (f32.mul
                      (local.tee $l32
                        (f32.load
                          (local.tee $l31
                            (i32.add
                              (local.get $p1)
                              (i32.const 360)))))
                      (local.tee $l33
                        (f32.load
                          (i32.add
                            (local.get $l21)
                            (i32.const 4)))))))
                (local.tee $l41
                  (f32.add
                    (f32.mul
                      (local.tee $l35
                        (f32.load
                          (local.tee $l21
                            (i32.add
                              (local.get $p1)
                              (i32.const 148)))))
                      (local.tee $l37
                        (f32.load
                          (local.tee $l36
                            (i32.add
                              (local.get $p2)
                              (local.get $l5))))))
                    (f32.mul
                      (local.tee $l39
                        (f32.load
                          (local.tee $l38
                            (i32.add
                              (local.get $p1)
                              (i32.const 144)))))
                      (local.tee $l40
                        (f32.load
                          (i32.add
                            (local.get $l36)
                            (i32.const 4))))))))))
          (local.tee $l57
            (f32.add
              (local.tee $l49
                (f32.add
                  (f32.mul
                    (local.tee $l43
                      (f32.load
                        (local.tee $l36
                          (i32.add
                            (local.get $p1)
                            (i32.const 436)))))
                    (local.tee $l45
                      (f32.load
                        (local.tee $l44
                          (i32.add
                            (local.get $p2)
                            (local.get $l9))))))
                  (f32.mul
                    (local.tee $l47
                      (f32.load
                        (local.tee $l46
                          (i32.add
                            (local.get $p1)
                            (i32.const 432)))))
                    (local.tee $l48
                      (f32.load
                        (i32.add
                          (local.get $l44)
                          (i32.const 4)))))))
              (local.tee $l56
                (f32.add
                  (f32.mul
                    (local.tee $l50
                      (f32.load
                        (local.tee $l44
                          (i32.add
                            (local.get $p1)
                            (i32.const 76)))))
                    (local.tee $l52
                      (f32.load
                        (local.tee $l51
                          (i32.add
                            (local.get $p2)
                            (local.get $l4))))))
                  (f32.mul
                    (local.tee $l54
                      (f32.load
                        (local.tee $l53
                          (i32.add
                            (local.get $p1)
                            (i32.const 72)))))
                    (local.tee $l55
                      (f32.load
                        (i32.add
                          (local.get $l51)
                          (i32.const 4)))))))))))
      (f32.store
        (local.get $p1)
        (f32.add
          (f32.add
            (f32.add
              (local.get $l10)
              (local.tee $l13
                (f32.add
                  (local.tee $l58
                    (f32.sub
                      (f32.mul
                        (local.get $l17)
                        (local.get $l15))
                      (f32.mul
                        (local.get $l13)
                        (local.get $l18))))
                  (local.tee $l20
                    (f32.sub
                      (f32.mul
                        (local.get $l24)
                        (local.get $l22))
                      (f32.mul
                        (local.get $l20)
                        (local.get $l25)))))))
            (local.tee $l15
              (f32.add
                (local.tee $l18
                  (f32.sub
                    (f32.mul
                      (local.get $l32)
                      (local.get $l30))
                    (f32.mul
                      (local.get $l29)
                      (local.get $l33))))
                (local.tee $l22
                  (f32.sub
                    (f32.mul
                      (local.get $l39)
                      (local.get $l37))
                    (f32.mul
                      (local.get $l35)
                      (local.get $l40)))))))
          (local.tee $l17
            (f32.add
              (local.tee $l24
                (f32.sub
                  (f32.mul
                    (local.get $l47)
                    (local.get $l45))
                  (f32.mul
                    (local.get $l43)
                    (local.get $l48))))
              (local.tee $l25
                (f32.sub
                  (f32.mul
                    (local.get $l54)
                    (local.get $l52))
                  (f32.mul
                    (local.get $l50)
                    (local.get $l55))))))))
      (f32.store
        (local.get $l36)
        (f32.sub
          (local.tee $l29
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l28)
                  (f32.mul
                    (local.get $l27)
                    (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
                (f32.mul
                  (local.get $l42)
                  (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
              (f32.mul
                (local.get $l57)
                (f32.const 0x1.3f3a0ep-1 (;=0.62349;)))))
          (local.tee $l30
            (f32.add
              (f32.add
                (f32.mul
                  (local.tee $l18
                    (f32.sub
                      (local.get $l18)
                      (local.get $l22)))
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.tee $l20
                    (f32.sub
                      (local.get $l58)
                      (local.get $l20)))
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.tee $l22
                  (f32.sub
                    (local.get $l24)
                    (local.get $l25)))
                (f32.const 0x1.904c38p-1 (;=0.781832;)))))))
      (f32.store
        (local.get $l46)
        (f32.sub
          (local.tee $l32
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l10)
                  (f32.mul
                    (local.get $l13)
                    (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
                (f32.mul
                  (local.get $l15)
                  (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
              (f32.mul
                (local.get $l17)
                (f32.const 0x1.3f3a0ep-1 (;=0.62349;)))))
          (local.tee $l26
            (f32.add
              (f32.add
                (f32.mul
                  (local.tee $l24
                    (f32.sub
                      (local.get $l41)
                      (local.get $l34)))
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.tee $l19
                    (f32.sub
                      (local.get $l26)
                      (local.get $l19)))
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.tee $l25
                  (f32.sub
                    (local.get $l56)
                    (local.get $l49)))
                (f32.const 0x1.904c38p-1 (;=0.781832;)))))))
      (f32.store
        (local.get $l11)
        (f32.sub
          (local.tee $l33
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l28)
                  (f32.mul
                    (local.get $l27)
                    (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
                (f32.mul
                  (local.get $l42)
                  (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
              (f32.mul
                (local.get $l57)
                (f32.const -0x1.c7b90ep-3 (;=-0.222521;)))))
          (local.tee $l34
            (f32.add
              (f32.sub
                (f32.mul
                  (local.get $l22)
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.get $l18)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.get $l20)
                (f32.const -0x1.904c38p-1 (;=-0.781832;)))))))
      (f32.store
        (local.get $l31)
        (f32.sub
          (local.tee $l35
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l10)
                  (f32.mul
                    (local.get $l13)
                    (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
                (f32.mul
                  (local.get $l15)
                  (f32.const -0x1.cd4bcap-1 (;=-0.900969;))))
              (f32.mul
                (local.get $l17)
                (f32.const -0x1.c7b90ep-3 (;=-0.222521;)))))
          (local.tee $l37
            (f32.add
              (f32.sub
                (f32.mul
                  (local.get $l25)
                  (f32.const 0x1.f329cp-1 (;=0.974928;)))
                (f32.mul
                  (local.get $l24)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;))))
              (f32.mul
                (local.get $l19)
                (f32.const -0x1.904c38p-1 (;=-0.781832;)))))))
      (f32.store
        (local.get $l12)
        (f32.sub
          (local.tee $l27
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l28)
                  (f32.mul
                    (local.get $l27)
                    (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
                (f32.mul
                  (local.get $l42)
                  (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
              (f32.mul
                (local.get $l57)
                (f32.const -0x1.cd4bcap-1 (;=-0.900969;)))))
          (local.tee $l28
            (f32.add
              (f32.add
                (f32.mul
                  (local.get $l22)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;)))
                (f32.mul
                  (local.get $l18)
                  (f32.const -0x1.904c38p-1 (;=-0.781832;))))
              (f32.mul
                (local.get $l20)
                (f32.const 0x1.f329cp-1 (;=0.974928;)))))))
      (f32.store
        (local.get $l16)
        (f32.sub
          (local.tee $l10
            (f32.add
              (f32.add
                (f32.add
                  (local.get $l10)
                  (f32.mul
                    (local.get $l13)
                    (f32.const -0x1.c7b90ep-3 (;=-0.222521;))))
                (f32.mul
                  (local.get $l15)
                  (f32.const 0x1.3f3a0ep-1 (;=0.62349;))))
              (f32.mul
                (local.get $l17)
                (f32.const -0x1.cd4bcap-1 (;=-0.900969;)))))
          (local.tee $l42
            (f32.add
              (f32.add
                (f32.mul
                  (local.get $l25)
                  (f32.const 0x1.bc4c04p-2 (;=0.433884;)))
                (f32.mul
                  (local.get $l24)
                  (f32.const -0x1.904c38p-1 (;=-0.781832;))))
              (f32.mul
                (local.get $l19)
                (f32.const 0x1.f329cp-1 (;=0.974928;)))))))
      (f32.store
        (local.get $l14)
        (f32.add
          (local.get $l28)
          (local.get $l27)))
      (f32.store
        (local.get $l23)
        (f32.add
          (local.get $l42)
          (local.get $l10)))
      (f32.store
        (local.get $l21)
        (f32.add
          (local.get $l34)
          (local.get $l33)))
      (f32.store
        (local.get $l38)
        (f32.add
          (local.get $l37)
          (local.get $l35)))
      (f32.store
        (local.get $l44)
        (f32.add
          (local.get $l29)
          (local.get $l30)))
      (f32.store
        (local.get $l53)
        (f32.add
          (local.get $l26)
          (local.get $l32)))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 56)))
      (local.set $l5
        (i32.add
          (local.get $l5)
          (i32.const 112)))
      (local.set $l6
        (i32.add
          (local.get $l6)
          (i32.const 168)))
      (local.set $l7
        (i32.add
          (local.get $l7)
          (i32.const 224)))
      (local.set $l8
        (i32.add
          (local.get $l8)
          (i32.const 280)))
      (local.set $l9
        (i32.add
          (local.get $l9)
          (i32.const 336)))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 72)))))
  (func $DSP::FFT::Dit<3__9__49__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 f32) (local $l4 f32) (local $l5 f32) (local $l6 f32) (local $l7 f32) (local $l8 f32) (local $l9 f32) (local $l10 f32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 f32) (local $l15 f32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 f32) (local $l20 f32) (local $l21 i32) (local $l22 f32)
    (local.set $l3
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 4))))
    (local.set $l4
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 2356))))
    (local.set $l5
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 1180))))
    (f32.store
      (local.get $p0)
      (f32.add
        (local.tee $l8
          (f32.add
            (local.tee $l6
              (f32.load offset=2352
                (local.get $p1)))
            (local.tee $l7
              (f32.load offset=1176
                (local.get $p1)))))
        (local.tee $l9
          (f32.load
            (local.get $p1)))))
    (f32.store offset=4
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.tee $l10
          (f32.add
            (local.get $l4)
            (local.get $l5)))))
    (f32.store offset=16
      (local.get $p0)
      (f32.sub
        (local.tee $l8
          (f32.sub
            (local.get $l9)
            (f32.mul
              (local.get $l8)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l5)
              (local.get $l4))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=8
      (local.get $p0)
      (f32.add
        (local.get $l4)
        (local.get $l8)))
    (f32.store
      (local.tee $l11
        (i32.add
          (local.get $p0)
          (i32.const 20)))
      (f32.sub
        (local.tee $l3
          (f32.sub
            (local.get $l3)
            (f32.mul
              (local.get $l10)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l6)
              (local.get $l7))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.tee $l12
        (i32.add
          (local.get $p0)
          (i32.const 12)))
      (f32.add
        (local.get $l3)
        (local.get $l4)))
    (local.set $l3
      (f32.load offset=392
        (local.get $p1)))
    (local.set $l4
      (f32.load offset=2744
        (local.get $p1)))
    (local.set $l5
      (f32.load offset=1568
        (local.get $p1)))
    (f32.store
      (local.tee $l13
        (i32.add
          (local.get $p0)
          (i32.const 28)))
      (local.tee $l6
        (f32.add
          (local.tee $l10
            (f32.add
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 2748))))
              (local.tee $l9
                (f32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 1572))))))
          (local.tee $l14
            (f32.load
              (i32.add
                (local.get $p1)
                (i32.const 396)))))))
    (f32.store offset=24
      (local.get $p0)
      (local.tee $l7
        (f32.add
          (local.get $l3)
          (local.tee $l15
            (f32.add
              (local.get $l4)
              (local.get $l5))))))
    (f32.store
      (local.tee $l16
        (i32.add
          (local.get $p0)
          (i32.const 44)))
      (f32.sub
        (local.tee $l10
          (f32.sub
            (local.get $l14)
            (f32.mul
              (local.get $l10)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l4)
              (local.get $l5))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=40
      (local.get $p0)
      (f32.sub
        (local.tee $l3
          (f32.sub
            (local.get $l3)
            (f32.mul
              (local.get $l15)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l5
          (f32.mul
            (f32.sub
              (local.get $l9)
              (local.get $l8))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.tee $l17
        (i32.add
          (local.get $p0)
          (i32.const 36)))
      (f32.add
        (local.get $l10)
        (local.get $l4)))
    (f32.store offset=32
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=784
        (local.get $p1)))
    (local.set $l4
      (f32.load offset=3136
        (local.get $p1)))
    (local.set $l5
      (f32.load offset=1960
        (local.get $p1)))
    (f32.store
      (local.tee $l18
        (i32.add
          (local.get $p0)
          (i32.const 52)))
      (local.tee $l8
        (f32.add
          (local.tee $l15
            (f32.add
              (local.tee $l10
                (f32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 3140))))
              (local.tee $l14
                (f32.load
                  (i32.add
                    (local.get $p1)
                    (i32.const 1964))))))
          (local.tee $l19
            (f32.load
              (i32.add
                (local.get $p1)
                (i32.const 788)))))))
    (f32.store offset=48
      (local.get $p0)
      (local.tee $l9
        (f32.add
          (local.get $l3)
          (local.tee $l20
            (f32.add
              (local.get $l4)
              (local.get $l5))))))
    (f32.store
      (local.tee $p1
        (i32.add
          (local.get $p0)
          (i32.const 68)))
      (f32.sub
        (local.tee $l15
          (f32.sub
            (local.get $l19)
            (f32.mul
              (local.get $l15)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l4)
              (local.get $l5))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=64
      (local.get $p0)
      (f32.sub
        (local.tee $l3
          (f32.sub
            (local.get $l3)
            (f32.mul
              (local.get $l20)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l10
          (f32.mul
            (f32.sub
              (local.get $l14)
              (local.get $l10))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.tee $l21
        (i32.add
          (local.get $p0)
          (i32.const 60)))
      (local.tee $l5
        (f32.add
          (local.get $l15)
          (local.get $l4))))
    (f32.store offset=56
      (local.get $p0)
      (local.tee $l10
        (f32.add
          (local.get $l10)
          (local.get $l3))))
    (f32.store
      (local.get $p0)
      (f32.add
        (local.tee $l19
          (f32.add
            (local.tee $l14
              (f32.sub
                (f32.mul
                  (local.get $l9)
                  (local.tee $l3
                    (f32.load
                      (local.get $p2))))
                (f32.mul
                  (local.get $l8)
                  (local.tee $l4
                    (f32.load offset=4
                      (local.get $p2))))))
            (local.tee $l15
              (f32.sub
                (f32.mul
                  (local.get $l7)
                  (local.get $l3))
                (f32.mul
                  (local.get $l6)
                  (local.get $l4))))))
        (local.tee $l20
          (f32.load
            (local.get $p0)))))
    (f32.store offset=4
      (local.get $p0)
      (f32.add
        (local.tee $l4
          (f32.add
            (local.tee $l8
              (f32.add
                (f32.mul
                  (local.get $l8)
                  (local.get $l3))
                (f32.mul
                  (local.get $l9)
                  (local.get $l4))))
            (local.tee $l3
              (f32.add
                (f32.mul
                  (local.get $l6)
                  (local.get $l3))
                (f32.mul
                  (local.get $l7)
                  (local.get $l4))))))
        (local.tee $l6
          (f32.load offset=4
            (local.get $p0)))))
    (f32.store
      (local.get $l18)
      (f32.sub
        (local.tee $l4
          (f32.sub
            (local.get $l6)
            (f32.mul
              (local.get $l4)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l6
          (f32.mul
            (f32.sub
              (local.get $l14)
              (local.get $l15))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=48
      (local.get $p0)
      (f32.sub
        (local.tee $l7
          (f32.sub
            (local.get $l20)
            (f32.mul
              (local.get $l19)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l3
          (f32.mul
            (f32.sub
              (local.get $l3)
              (local.get $l8))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.get $l13)
      (f32.add
        (local.get $l4)
        (local.get $l6)))
    (f32.store offset=24
      (local.get $p0)
      (f32.add
        (local.get $l7)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=8
        (local.get $p0)))
    (f32.store
      (local.get $l12)
      (f32.add
        (local.tee $l20
          (f32.add
            (local.tee $l7
              (f32.add
                (f32.mul
                  (local.get $l5)
                  (local.tee $l4
                    (f32.load offset=784
                      (local.get $p2))))
                (f32.mul
                  (local.get $l10)
                  (local.tee $l6
                    (f32.load
                      (local.tee $l13
                        (i32.add
                          (local.get $p2)
                          (i32.const 788))))))))
            (local.tee $l19
              (f32.add
                (f32.mul
                  (local.tee $l8
                    (f32.load
                      (local.get $l17)))
                  (local.tee $l9
                    (f32.load offset=392
                      (local.get $p2))))
                (f32.mul
                  (local.tee $l14
                    (f32.load offset=32
                      (local.get $p0)))
                  (local.tee $l15
                    (f32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 396)))))))))
        (local.tee $l22
          (f32.load
            (local.get $l12)))))
    (f32.store offset=8
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.tee $l6
          (f32.add
            (local.tee $l4
              (f32.sub
                (f32.mul
                  (local.get $l10)
                  (local.get $l4))
                (f32.mul
                  (local.get $l5)
                  (local.get $l6))))
            (local.tee $l5
              (f32.sub
                (f32.mul
                  (local.get $l14)
                  (local.get $l9))
                (f32.mul
                  (local.get $l8)
                  (local.get $l15))))))))
    (f32.store
      (local.get $l21)
      (f32.sub
        (local.tee $l8
          (f32.sub
            (local.get $l22)
            (f32.mul
              (local.get $l20)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l4)
              (local.get $l5))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=56
      (local.get $p0)
      (f32.sub
        (local.tee $l3
          (f32.sub
            (local.get $l3)
            (f32.mul
              (local.get $l6)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l5
          (f32.mul
            (f32.sub
              (local.get $l19)
              (local.get $l7))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.get $l17)
      (f32.add
        (local.get $l8)
        (local.get $l4)))
    (f32.store offset=32
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.get $l5)))
    (local.set $l3
      (f32.load offset=16
        (local.get $p0)))
    (f32.store
      (local.get $l11)
      (f32.add
        (local.tee $l20
          (f32.add
            (local.tee $l8
              (f32.add
                (f32.mul
                  (local.tee $l4
                    (f32.load
                      (local.get $p1)))
                  (local.tee $l5
                    (f32.load offset=1568
                      (local.get $p2))))
                (f32.mul
                  (local.tee $l6
                    (f32.load offset=64
                      (local.get $p0)))
                  (local.tee $l7
                    (f32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 1572)))))))
            (local.tee $l19
              (f32.add
                (f32.mul
                  (local.tee $l9
                    (f32.load
                      (local.get $l16)))
                  (local.tee $l10
                    (f32.load offset=784
                      (local.get $p2))))
                (f32.mul
                  (local.tee $l14
                    (f32.load offset=40
                      (local.get $p0)))
                  (local.tee $l15
                    (f32.load
                      (local.get $l13))))))))
        (local.tee $l22
          (f32.load
            (local.get $l11)))))
    (f32.store offset=16
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.tee $l6
          (f32.add
            (local.tee $l4
              (f32.sub
                (f32.mul
                  (local.get $l6)
                  (local.get $l5))
                (f32.mul
                  (local.get $l4)
                  (local.get $l7))))
            (local.tee $l5
              (f32.sub
                (f32.mul
                  (local.get $l14)
                  (local.get $l10))
                (f32.mul
                  (local.get $l9)
                  (local.get $l15))))))))
    (f32.store
      (local.get $p1)
      (f32.sub
        (local.tee $l7
          (f32.sub
            (local.get $l22)
            (f32.mul
              (local.get $l20)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l4
          (f32.mul
            (f32.sub
              (local.get $l4)
              (local.get $l5))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store offset=64
      (local.get $p0)
      (f32.sub
        (local.tee $l3
          (f32.sub
            (local.get $l3)
            (f32.mul
              (local.get $l6)
              (f32.const 0x1p-1 (;=0.5;)))))
        (local.tee $l5
          (f32.mul
            (f32.sub
              (local.get $l19)
              (local.get $l8))
            (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
    (f32.store
      (local.get $l16)
      (f32.add
        (local.get $l7)
        (local.get $l4)))
    (f32.store offset=40
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.get $l5))))
  (func $DSP::FFT::Dit<5__480__1__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 f32) (local $l8 i32) (local $l9 i32) (local $l10 f32) (local $l11 f32) (local $l12 i32) (local $l13 f32) (local $l14 f32) (local $l15 f32) (local $l16 i32) (local $l17 f32) (local $l18 f32) (local $l19 i32) (local $l20 f32) (local $l21 f32) (local $l22 f32) (local $l23 f32) (local $l24 f32) (local $l25 f32) (local $l26 f32) (local $l27 i32) (local $l28 f32) (local $l29 f32) (local $l30 f32) (local $l31 i32) (local $l32 f32) (local $l33 i32) (local $l34 f32) (local $l35 i32) (local $l36 f32) (local $l37 f32) (local $l38 f32) (local $l39 f32)
    (call $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (call $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 768))
      (i32.add
        (local.get $p1)
        (i32.const 8))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 1536))
      (i32.add
        (local.get $p1)
        (i32.const 16))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 2304))
      (i32.add
        (local.get $p1)
        (i32.const 24))
      (local.get $p2))
    (call $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 3072))
      (i32.add
        (local.get $p1)
        (i32.const 32))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (local.get $p2))
    (local.set $l5
      (local.get $p2))
    (local.set $l6
      (local.get $p2))
    (loop $L0
      (local.set $l7
        (f32.load
          (local.tee $p1
            (i32.add
              (local.get $p0)
              (local.get $l3)))))
      (f32.store
        (local.tee $l8
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (f32.add
          (f32.add
            (local.tee $l23
              (f32.add
                (local.tee $l15
                  (f32.add
                    (f32.mul
                      (local.tee $l10
                        (f32.load
                          (local.tee $l9
                            (i32.add
                              (local.get $p1)
                              (i32.const 2308)))))
                      (local.tee $l11
                        (f32.load
                          (local.get $l5))))
                    (f32.mul
                      (local.tee $l13
                        (f32.load
                          (local.tee $l12
                            (i32.add
                              (local.get $p1)
                              (i32.const 2304)))))
                      (local.tee $l14
                        (f32.load
                          (i32.add
                            (local.get $l5)
                            (i32.const 4)))))))
                (local.tee $l22
                  (f32.add
                    (f32.mul
                      (local.tee $l17
                        (f32.load
                          (local.tee $l16
                            (i32.add
                              (local.get $p1)
                              (i32.const 1540)))))
                      (local.tee $l18
                        (f32.load
                          (local.get $l4))))
                    (f32.mul
                      (local.tee $l20
                        (f32.load
                          (local.tee $l19
                            (i32.add
                              (local.get $p1)
                              (i32.const 1536)))))
                      (local.tee $l21
                        (f32.load
                          (i32.add
                            (local.get $l4)
                            (i32.const 4)))))))))
            (local.tee $l24
              (f32.load
                (local.get $l8))))
          (local.tee $l39
            (f32.add
              (local.tee $l30
                (f32.add
                  (f32.mul
                    (local.tee $l25
                      (f32.load
                        (local.tee $l8
                          (i32.add
                            (local.get $p1)
                            (i32.const 3076)))))
                    (local.tee $l26
                      (f32.load
                        (local.get $l6))))
                  (f32.mul
                    (local.tee $l28
                      (f32.load
                        (local.tee $l27
                          (i32.add
                            (local.get $p1)
                            (i32.const 3072)))))
                    (local.tee $l29
                      (f32.load
                        (i32.add
                          (local.get $l6)
                          (i32.const 4)))))))
              (local.tee $l38
                (f32.add
                  (f32.mul
                    (local.tee $l32
                      (f32.load
                        (local.tee $l31
                          (i32.add
                            (local.get $p1)
                            (i32.const 772)))))
                    (local.tee $l34
                      (f32.load
                        (local.tee $l33
                          (i32.add
                            (local.get $p2)
                            (local.get $l3))))))
                  (f32.mul
                    (local.tee $l36
                      (f32.load
                        (local.tee $l35
                          (i32.add
                            (local.get $p1)
                            (i32.const 768)))))
                    (local.tee $l37
                      (f32.load
                        (i32.add
                          (local.get $l33)
                          (i32.const 4)))))))))))
      (f32.store
        (local.get $p1)
        (f32.add
          (f32.add
            (local.get $l7)
            (local.tee $l10
              (f32.add
                (local.tee $l13
                  (f32.sub
                    (f32.mul
                      (local.get $l13)
                      (local.get $l11))
                    (f32.mul
                      (local.get $l10)
                      (local.get $l14))))
                (local.tee $l14
                  (f32.sub
                    (f32.mul
                      (local.get $l20)
                      (local.get $l18))
                    (f32.mul
                      (local.get $l17)
                      (local.get $l21)))))))
          (local.tee $l11
            (f32.add
              (local.tee $l17
                (f32.sub
                  (f32.mul
                    (local.get $l28)
                    (local.get $l26))
                  (f32.mul
                    (local.get $l25)
                    (local.get $l29))))
              (local.tee $l18
                (f32.sub
                  (f32.mul
                    (local.get $l36)
                    (local.get $l34))
                  (f32.mul
                    (local.get $l32)
                    (local.get $l37))))))))
      (f32.store
        (local.get $l8)
        (f32.sub
          (local.tee $l20
            (f32.add
              (local.get $l24)
              (f32.sub
                (f32.mul
                  (local.get $l39)
                  (f32.const 0x1.3c6ef4p-2 (;=0.309017;)))
                (f32.mul
                  (local.get $l23)
                  (f32.const 0x1.9e3778p-1 (;=0.809017;))))))
          (local.tee $l14
            (f32.add
              (f32.mul
                (local.tee $l17
                  (f32.sub
                    (local.get $l17)
                    (local.get $l18)))
                (f32.const 0x1.e6f0e2p-1 (;=0.951057;)))
              (f32.mul
                (local.tee $l13
                  (f32.sub
                    (local.get $l13)
                    (local.get $l14)))
                (f32.const 0x1.2cf232p-1 (;=0.587785;)))))))
      (f32.store
        (local.get $l27)
        (f32.sub
          (local.tee $l18
            (f32.add
              (local.get $l7)
              (f32.sub
                (f32.mul
                  (local.get $l11)
                  (f32.const 0x1.3c6ef4p-2 (;=0.309017;)))
                (f32.mul
                  (local.get $l10)
                  (f32.const 0x1.9e3778p-1 (;=0.809017;))))))
          (local.tee $l22
            (f32.add
              (f32.mul
                (local.tee $l21
                  (f32.sub
                    (local.get $l38)
                    (local.get $l30)))
                (f32.const 0x1.e6f0e2p-1 (;=0.951057;)))
              (f32.mul
                (local.tee $l15
                  (f32.sub
                    (local.get $l22)
                    (local.get $l15)))
                (f32.const 0x1.2cf232p-1 (;=0.587785;)))))))
      (f32.store
        (local.get $l9)
        (f32.sub
          (local.tee $l23
            (f32.add
              (local.get $l24)
              (f32.sub
                (f32.mul
                  (local.get $l23)
                  (f32.const 0x1.3c6ef4p-2 (;=0.309017;)))
                (f32.mul
                  (local.get $l39)
                  (f32.const 0x1.9e3778p-1 (;=0.809017;))))))
          (local.tee $l24
            (f32.sub
              (f32.mul
                (local.get $l17)
                (f32.const 0x1.2cf232p-1 (;=0.587785;)))
              (f32.mul
                (local.get $l13)
                (f32.const 0x1.e6f0e2p-1 (;=0.951057;)))))))
      (f32.store
        (local.get $l12)
        (f32.sub
          (local.tee $l7
            (f32.add
              (local.get $l7)
              (f32.sub
                (f32.mul
                  (local.get $l10)
                  (f32.const 0x1.3c6ef4p-2 (;=0.309017;)))
                (f32.mul
                  (local.get $l11)
                  (f32.const 0x1.9e3778p-1 (;=0.809017;))))))
          (local.tee $l39
            (f32.sub
              (f32.mul
                (local.get $l21)
                (f32.const 0x1.2cf232p-1 (;=0.587785;)))
              (f32.mul
                (local.get $l15)
                (f32.const 0x1.e6f0e2p-1 (;=0.951057;)))))))
      (f32.store
        (local.get $l16)
        (f32.add
          (local.get $l23)
          (local.get $l24)))
      (f32.store
        (local.get $l19)
        (f32.add
          (local.get $l7)
          (local.get $l39)))
      (f32.store
        (local.get $l31)
        (f32.add
          (local.get $l20)
          (local.get $l14)))
      (f32.store
        (local.get $l35)
        (f32.add
          (local.get $l18)
          (local.get $l22)))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 16)))
      (local.set $l5
        (i32.add
          (local.get $l5)
          (i32.const 24)))
      (local.set $l6
        (i32.add
          (local.get $l6)
          (i32.const 32)))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 768)))))
  (func $DSP::FFT::Dit<3__96__5__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 f32) (local $l8 f32) (local $l9 i32) (local $l10 f32) (local $l11 f32) (local $l12 f32) (local $l13 f32) (local $l14 i32) (local $l15 f32) (local $l16 f32) (local $l17 f32) (local $l18 f32) (local $l19 f32) (local $l20 f32)
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 128))
      (i32.add
        (local.get $p1)
        (i32.const 120))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (local.get $p2))
    (loop $L0
      (f32.store
        (local.tee $l5
          (i32.add
            (local.get $p0)
            (local.get $l3)))
        (f32.add
          (local.tee $l12
            (f32.sub
              (f32.mul
                (local.tee $l7
                  (f32.load
                    (local.tee $l6
                      (i32.add
                        (local.get $l5)
                        (i32.const 128)))))
                (local.tee $l8
                  (f32.load
                    (local.get $l4))))
              (f32.mul
                (local.tee $l10
                  (f32.load
                    (local.tee $l9
                      (i32.add
                        (local.get $l5)
                        (i32.const 132)))))
                (local.tee $l11
                  (f32.load
                    (i32.add
                      (local.get $l4)
                      (i32.const 4)))))))
          (local.tee $l13
            (f32.load
              (local.get $l5)))))
      (f32.store
        (local.tee $l5
          (i32.add
            (local.get $l5)
            (i32.const 4)))
        (f32.add
          (local.tee $l7
            (f32.add
              (f32.mul
                (local.get $l10)
                (local.get $l8))
              (f32.mul
                (local.get $l7)
                (local.get $l11))))
          (local.tee $l8
            (f32.load
              (local.get $l5)))))
      (f32.store
        (local.get $l9)
        (f32.sub
          (local.get $l8)
          (local.get $l7)))
      (f32.store
        (local.get $l6)
        (f32.sub
          (local.get $l13)
          (local.get $l12)))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 120)))
      (br_if $L0
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 128))))
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 256))
      (i32.add
        (local.get $p1)
        (i32.const 40))
      (local.get $p2))
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 384))
      (i32.add
        (local.get $p1)
        (i32.const 160))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l5
      (local.get $p2))
    (loop $L1
      (f32.store
        (local.tee $l6
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 256)))
        (f32.add
          (local.tee $l12
            (f32.sub
              (f32.mul
                (local.tee $l7
                  (f32.load
                    (local.tee $l9
                      (i32.add
                        (local.get $l4)
                        (i32.const 384)))))
                (local.tee $l8
                  (f32.load
                    (local.get $l5))))
              (f32.mul
                (local.tee $l10
                  (f32.load
                    (local.tee $l14
                      (i32.add
                        (local.get $l4)
                        (i32.const 388)))))
                (local.tee $l11
                  (f32.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 4)))))))
          (local.tee $l13
            (f32.load
              (local.get $l6)))))
      (f32.store
        (local.tee $l4
          (i32.add
            (local.get $l4)
            (i32.const 260)))
        (f32.add
          (local.tee $l7
            (f32.add
              (f32.mul
                (local.get $l10)
                (local.get $l8))
              (f32.mul
                (local.get $l7)
                (local.get $l11))))
          (local.tee $l8
            (f32.load
              (local.get $l4)))))
      (f32.store
        (local.get $l14)
        (f32.sub
          (local.get $l8)
          (local.get $l7)))
      (f32.store
        (local.get $l9)
        (f32.sub
          (local.get $l13)
          (local.get $l12)))
      (local.set $l5
        (i32.add
          (local.get $l5)
          (i32.const 120)))
      (br_if $L1
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 128))))
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 512))
      (i32.add
        (local.get $p1)
        (i32.const 80))
      (local.get $p2))
    (call $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_
      (i32.add
        (local.get $p0)
        (i32.const 640))
      (i32.add
        (local.get $p1)
        (i32.const 200))
      (local.get $p2))
    (local.set $l3
      (i32.const 0))
    (local.set $l5
      (local.get $p2))
    (loop $L2
      (f32.store
        (local.tee $l6
          (i32.add
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (local.get $l3)))
            (i32.const 512)))
        (f32.add
          (local.tee $l12
            (f32.sub
              (f32.mul
                (local.tee $l7
                  (f32.load
                    (local.tee $l9
                      (i32.add
                        (local.get $l4)
                        (i32.const 640)))))
                (local.tee $l8
                  (f32.load
                    (local.get $l5))))
              (f32.mul
                (local.tee $l10
                  (f32.load
                    (local.tee $l14
                      (i32.add
                        (local.get $l4)
                        (i32.const 644)))))
                (local.tee $l11
                  (f32.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 4)))))))
          (local.tee $l13
            (f32.load
              (local.get $l6)))))
      (f32.store
        (local.tee $l4
          (i32.add
            (local.get $l4)
            (i32.const 516)))
        (f32.add
          (local.tee $l7
            (f32.add
              (f32.mul
                (local.get $l10)
                (local.get $l8))
              (f32.mul
                (local.get $l7)
                (local.get $l11))))
          (local.tee $l8
            (f32.load
              (local.get $l4)))))
      (f32.store
        (local.get $l14)
        (f32.sub
          (local.get $l8)
          (local.get $l7)))
      (f32.store
        (local.get $l9)
        (f32.sub
          (local.get $l13)
          (local.get $l12)))
      (local.set $l5
        (i32.add
          (local.get $l5)
          (i32.const 120)))
      (br_if $L2
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 128))))
    (local.set $l3
      (i32.const 0))
    (local.set $l4
      (local.get $p2))
    (loop $L3
      (f32.store
        (local.tee $l5
          (i32.add
            (local.get $p0)
            (local.get $l3)))
        (f32.add
          (local.tee $l19
            (f32.add
              (local.tee $l12
                (f32.sub
                  (f32.mul
                    (local.tee $l7
                      (f32.load
                        (local.tee $l6
                          (i32.add
                            (local.get $l5)
                            (i32.const 512)))))
                    (local.tee $l8
                      (f32.load
                        (local.get $l4))))
                  (f32.mul
                    (local.tee $l10
                      (f32.load
                        (local.tee $l9
                          (i32.add
                            (local.get $l5)
                            (i32.const 516)))))
                    (local.tee $l11
                      (f32.load
                        (i32.add
                          (local.get $l4)
                          (i32.const 4)))))))
              (local.tee $l18
                (f32.sub
                  (f32.mul
                    (local.tee $l13
                      (f32.load
                        (local.tee $l14
                          (i32.add
                            (local.get $l5)
                            (i32.const 256)))))
                    (local.tee $l15
                      (f32.load
                        (local.get $p2))))
                  (f32.mul
                    (local.tee $l16
                      (f32.load
                        (local.tee $p1
                          (i32.add
                            (local.get $l5)
                            (i32.const 260)))))
                    (local.tee $l17
                      (f32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 4)))))))))
          (local.tee $l20
            (f32.load
              (local.get $l5)))))
      (f32.store
        (local.tee $l5
          (i32.add
            (local.get $l5)
            (i32.const 4)))
        (f32.add
          (local.tee $l10
            (f32.add
              (local.tee $l7
                (f32.add
                  (f32.mul
                    (local.get $l10)
                    (local.get $l8))
                  (f32.mul
                    (local.get $l7)
                    (local.get $l11))))
              (local.tee $l8
                (f32.add
                  (f32.mul
                    (local.get $l16)
                    (local.get $l15))
                  (f32.mul
                    (local.get $l13)
                    (local.get $l17))))))
          (local.tee $l11
            (f32.load
              (local.get $l5)))))
      (f32.store
        (local.get $l9)
        (f32.sub
          (local.tee $l10
            (f32.sub
              (local.get $l11)
              (f32.mul
                (local.get $l10)
                (f32.const 0x1p-1 (;=0.5;)))))
          (local.tee $l11
            (f32.mul
              (f32.sub
                (local.get $l12)
                (local.get $l18))
              (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
      (f32.store
        (local.get $l6)
        (f32.sub
          (local.tee $l12
            (f32.sub
              (local.get $l20)
              (f32.mul
                (local.get $l19)
                (f32.const 0x1p-1 (;=0.5;)))))
          (local.tee $l7
            (f32.mul
              (f32.sub
                (local.get $l8)
                (local.get $l7))
              (f32.const 0x1.bb67aep-1 (;=0.866025;))))))
      (f32.store
        (local.get $p1)
        (f32.add
          (local.get $l10)
          (local.get $l11)))
      (f32.store
        (local.get $l14)
        (f32.add
          (local.get $l12)
          (local.get $l7)))
      (local.set $p2
        (i32.add
          (local.get $p2)
          (i32.const 40)))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 80)))
      (br_if $L3
        (i32.ne
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const 8)))
          (i32.const 256)))))
  (func $DSP::FFT::Dit<2__16__30__DSP::Complex<float>__-1>::dit_DSP::Complex<float>*__DSP::Complex<float>_const*__DSP::Complex<float>_const*_ (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 f32) (local $l4 f32) (local $l5 f32) (local $l6 f32) (local $l7 f32) (local $l8 f32) (local $l9 f32) (local $l10 f32) (local $l11 f32) (local $l12 f32) (local $l13 f32) (local $l14 f32) (local $l15 f32) (local $l16 f32) (local $l17 f32) (local $l18 f32) (local $l19 f32) (local $l20 f32) (local $l21 f32) (local $l22 f32) (local $l23 f32) (local $l24 f32) (local $l25 f32) (local $l26 f32) (local $l27 f32) (local $l28 f32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 f32) (local $l38 f32) (local $l39 f32) (local $l40 f32) (local $l41 i32) (local $l42 i32) (local $l43 i32) (local $l44 i32) (local $l45 i32) (local $l46 i32)
    (local.set $l3
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 3364))))
    (local.set $l4
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 1444))))
    (local.set $l5
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 2404))))
    (local.set $l6
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 484))))
    (local.set $l7
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 2884))))
    (local.set $l8
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 964))))
    (local.set $l9
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 4))))
    (local.set $l10
      (f32.load
        (i32.add
          (local.get $p1)
          (i32.const 1924))))
    (f32.store
      (local.get $p0)
      (f32.add
        (local.tee $l17
          (f32.add
            (local.tee $l13
              (f32.add
                (local.tee $l11
                  (f32.load offset=3360
                    (local.get $p1)))
                (local.tee $l12
                  (f32.load offset=1440
                    (local.get $p1)))))
            (local.tee $l16
              (f32.add
                (local.tee $l14
                  (f32.load offset=2400
                    (local.get $p1)))
                (local.tee $l15
                  (f32.load offset=480
                    (local.get $p1)))))))
        (local.tee $l24
          (f32.add
            (local.tee $l20
              (f32.add
                (local.tee $l18
                  (f32.load offset=2880
                    (local.get $p1)))
                (local.tee $l19
                  (f32.load offset=960
                    (local.get $p1)))))
            (local.tee $l23
              (f32.add
                (local.tee $l21
                  (f32.load offset=1920
                    (local.get $p1)))
                (local.tee $l22
                  (f32.load
                    (local.get $p1)))))))))
    (f32.store offset=32
      (local.get $p0)
      (f32.sub
        (local.get $l24)
        (local.get $l17)))
    (f32.store offset=4
      (local.get $p0)
      (f32.add
        (local.tee $l25
          (f32.add
            (local.tee $l17
              (f32.add
                (local.get $l3)
                (local.get $l4)))
            (local.tee $l24
              (f32.add
                (local.get $l5)
                (local.get $l6)))))
        (local.tee $l28
          (f32.add
            (local.tee $l26
              (f32.add
                (local.get $l7)
                (local.get $l8)))
            (local.tee $l27
              (f32.add
                (local.get $l10)
                (local.get $l9)))))))
    (f32.store
      (local.tee $l29
        (i32.add
          (local.get $p0)
          (i32.const 52)))
      (f32.sub
        (local.tee $l26
          (f32.sub
            (local.get $l27)
            (local.get $l26)))
        (local.tee $l13
          (f32.sub
            (local.get $l13)
            (local.get $l16)))))
    (f32.store offset=48
      (local.get $p0)
      (f32.sub
        (local.tee $l16
          (f32.sub
            (local.get $l23)
            (local.get $l20)))
        (local.tee $l17
          (f32.sub
            (local.get $l24)
            (local.get $l17)))))
    (f32.store
      (local.tee $l30
        (i32.add
          (local.get $p0)
          (i32.const 36)))
      (f32.sub
        (local.get $l28)
        (local.get $l25)))
    (f32.store
      (local.tee $l31
        (i32.add
          (local.get $p0)
          (i32.const 20)))
      (f32.add
        (local.get $l13)
        (local.get $l26)))
    (f32.store offset=16
      (local.get $p0)
      (f32.add
        (local.get $l17)
        (local.get $l16)))
    (f32.store
      (local.tee $l32
        (i32.add
          (local.get $p0)
          (i32.const 60)))
      (f32.sub
        (local.tee $l13
          (f32.sub
            (local.tee $l9
              (f32.sub
                (local.get $l9)
                (local.get $l10)))
            (local.tee $l10
              (f32.sub
                (local.get $l18)
                (local.get $l19)))))
        (local.tee $l12
          (f32.mul
            (f32.sub
              (local.tee $l3
                (f32.sub
                  (local.get $l4)
                  (local.get $l3)))
              (f32.add
                (local.tee $l4
                  (f32.sub
                    (local.get $l6)
                    (local.get $l5)))
                (local.tee $l11
                  (f32.add
                    (local.tee $l5
                      (f32.sub
                        (local.get $l12)
                        (local.get $l11)))
                    (local.tee $l6
                      (f32.sub
                        (local.get $l15)
                        (local.get $l14)))))))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store
      (local.tee $l33
        (i32.add
          (local.get $p0)
          (i32.const 44)))
      (f32.sub
        (local.tee $l9
          (f32.add
            (local.get $l10)
            (local.get $l9)))
        (local.tee $l10
          (f32.mul
            (f32.sub
              (local.get $l4)
              (f32.add
                (local.get $l11)
                (local.get $l3)))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store
      (local.tee $l34
        (i32.add
          (local.get $p0)
          (i32.const 28)))
      (f32.add
        (local.get $l12)
        (local.get $l13)))
    (f32.store
      (local.tee $l35
        (i32.add
          (local.get $p0)
          (i32.const 12)))
      (f32.add
        (local.get $l10)
        (local.get $l9)))
    (f32.store offset=56
      (local.get $p0)
      (f32.sub
        (local.tee $l8
          (f32.sub
            (local.tee $l9
              (f32.sub
                (local.get $l22)
                (local.get $l21)))
            (local.tee $l7
              (f32.sub
                (local.get $l8)
                (local.get $l7)))))
        (local.tee $l10
          (f32.mul
            (f32.add
              (f32.add
                (f32.sub
                  (local.get $l4)
                  (local.get $l6))
                (local.get $l5))
              (local.get $l3))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store offset=40
      (local.get $p0)
      (f32.sub
        (local.tee $l7
          (f32.add
            (local.get $l7)
            (local.get $l9)))
        (local.tee $l3
          (f32.mul
            (f32.add
              (f32.sub
                (f32.add
                  (local.get $l4)
                  (local.get $l6))
                (local.get $l5))
              (local.get $l3))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store offset=24
      (local.get $p0)
      (f32.add
        (local.get $l10)
        (local.get $l8)))
    (f32.store offset=8
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.get $l7)))
    (local.set $l5
      (f32.load offset=1680
        (local.get $p1)))
    (local.set $l6
      (f32.load offset=3600
        (local.get $p1)))
    (local.set $l7
      (f32.load offset=720
        (local.get $p1)))
    (local.set $l8
      (f32.load offset=2640
        (local.get $p1)))
    (local.set $l3
      (f32.load offset=1200
        (local.get $p1)))
    (local.set $l4
      (f32.load offset=3120
        (local.get $p1)))
    (local.set $l9
      (f32.load offset=240
        (local.get $p1)))
    (local.set $l10
      (f32.load offset=2160
        (local.get $p1)))
    (f32.store
      (local.tee $l36
        (i32.add
          (local.get $p0)
          (i32.const 68)))
      (local.tee $l11
        (f32.add
          (local.tee $l19
            (f32.add
              (local.tee $l13
                (f32.add
                  (local.tee $l15
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 3604))))
                  (local.tee $l16
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 1684))))))
              (local.tee $l14
                (f32.add
                  (local.tee $l17
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 2644))))
                  (local.tee $l18
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 724))))))))
          (local.tee $l26
            (f32.add
              (local.tee $l22
                (f32.add
                  (local.tee $l20
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 3124))))
                  (local.tee $l21
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 1204))))))
              (local.tee $l25
                (f32.add
                  (local.tee $l23
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 2164))))
                  (local.tee $l24
                    (f32.load
                      (i32.add
                        (local.get $p1)
                        (i32.const 244)))))))))))
    (f32.store offset=64
      (local.get $p0)
      (local.tee $l12
        (f32.add
          (local.tee $l37
            (f32.add
              (local.tee $l27
                (f32.add
                  (local.get $l6)
                  (local.get $l5)))
              (local.tee $l28
                (f32.add
                  (local.get $l8)
                  (local.get $l7)))))
          (local.tee $l40
            (f32.add
              (local.tee $l38
                (f32.add
                  (local.get $l4)
                  (local.get $l3)))
              (local.tee $l39
                (f32.add
                  (local.get $l10)
                  (local.get $l9))))))))
    (f32.store
      (local.tee $p1
        (i32.add
          (local.get $p0)
          (i32.const 116)))
      (f32.sub
        (local.tee $l22
          (f32.sub
            (local.get $l25)
            (local.get $l22)))
        (local.tee $l25
          (f32.sub
            (local.get $l27)
            (local.get $l28)))))
    (f32.store offset=112
      (local.get $p0)
      (f32.sub
        (local.tee $l27
          (f32.sub
            (local.get $l39)
            (local.get $l38)))
        (local.tee $l14
          (f32.sub
            (local.get $l14)
            (local.get $l13)))))
    (f32.store
      (local.tee $l41
        (i32.add
          (local.get $p0)
          (i32.const 100)))
      (f32.sub
        (local.get $l26)
        (local.get $l19)))
    (f32.store offset=96
      (local.get $p0)
      (f32.sub
        (local.get $l40)
        (local.get $l37)))
    (f32.store
      (local.tee $l42
        (i32.add
          (local.get $p0)
          (i32.const 84)))
      (local.tee $l13
        (f32.add
          (local.get $l25)
          (local.get $l22))))
    (f32.store offset=80
      (local.get $p0)
      (local.tee $l14
        (f32.add
          (local.get $l14)
          (local.get $l27))))
    (f32.store
      (local.tee $l43
        (i32.add
          (local.get $p0)
          (i32.const 124)))
      (f32.sub
        (local.tee $l23
          (f32.sub
            (local.tee $l19
              (f32.sub
                (local.get $l24)
                (local.get $l23)))
            (local.tee $l22
              (f32.sub
                (local.get $l4)
                (local.get $l3)))))
        (local.tee $l8
          (f32.mul
            (f32.sub
              (local.tee $l3
                (f32.sub
                  (local.get $l16)
                  (local.get $l15)))
              (f32.add
                (local.tee $l4
                  (f32.sub
                    (local.get $l18)
                    (local.get $l17)))
                (local.tee $l7
                  (f32.add
                    (local.tee $l5
                      (f32.sub
                        (local.get $l5)
                        (local.get $l6)))
                    (local.tee $l6
                      (f32.sub
                        (local.get $l7)
                        (local.get $l8)))))))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store offset=120
      (local.get $p0)
      (f32.sub
        (local.tee $l15
          (f32.sub
            (local.tee $l9
              (f32.sub
                (local.get $l9)
                (local.get $l10)))
            (local.tee $l10
              (f32.sub
                (local.get $l21)
                (local.get $l20)))))
        (local.tee $l16
          (f32.mul
            (f32.add
              (f32.add
                (f32.sub
                  (local.get $l4)
                  (local.get $l6))
                (local.get $l5))
              (local.get $l3))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store
      (local.tee $l44
        (i32.add
          (local.get $p0)
          (i32.const 108)))
      (f32.sub
        (local.tee $l17
          (f32.add
            (local.get $l22)
            (local.get $l19)))
        (local.tee $l7
          (f32.mul
            (f32.sub
              (local.get $l4)
              (f32.add
                (local.get $l7)
                (local.get $l3)))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store offset=104
      (local.get $p0)
      (f32.sub
        (local.tee $l9
          (f32.add
            (local.get $l10)
            (local.get $l9)))
        (local.tee $l4
          (f32.mul
            (f32.add
              (f32.sub
                (f32.add
                  (local.get $l4)
                  (local.get $l6))
                (local.get $l5))
              (local.get $l3))
            (f32.const 0x1.6a09e6p-1 (;=0.707107;))))))
    (f32.store
      (local.tee $l45
        (i32.add
          (local.get $p0)
          (i32.const 92)))
      (f32.add
        (local.get $l8)
        (local.get $l23)))
    (f32.store offset=88
      (local.get $p0)
      (f32.add
        (local.get $l16)
        (local.get $l15)))
    (f32.store
      (local.tee $l46
        (i32.add
          (local.get $p0)
          (i32.const 76)))
      (local.tee $l3
        (f32.add
          (local.get $l7)
          (local.get $l17))))
    (f32.store offset=72
      (local.get $p0)
      (local.tee $l4
        (f32.add
          (local.get $l4)
          (local.get $l9))))
    (f32.store
      (local.get $l36)
      (f32.sub
        (local.tee $l5
          (f32.load offset=4
            (local.get $p0)))
        (local.tee $l8
          (f32.add
            (f32.mul
              (local.get $l11)
              (local.tee $l6
                (f32.load
                  (local.get $p2))))
            (f32.mul
              (local.get $l12)
              (local.tee $l7
                (f32.load offset=4
                  (local.get $p2))))))))
    (f32.store offset=64
      (local.get $p0)
      (f32.sub
        (local.tee $l9
          (f32.load
            (local.get $p0)))
        (local.tee $l6
          (f32.sub
            (f32.mul
              (local.get $l12)
              (local.get $l6))
            (f32.mul
              (local.get $l11)
              (local.get $l7))))))
    (f32.store offset=4
      (local.get $p0)
      (f32.add
        (local.get $l8)
        (local.get $l5)))
    (f32.store
      (local.get $p0)
      (f32.add
        (local.get $l6)
        (local.get $l9)))
    (f32.store
      (local.get $l46)
      (f32.sub
        (local.tee $l5
          (f32.load
            (local.get $l35)))
        (local.tee $l8
          (f32.add
            (f32.mul
              (local.get $l3)
              (local.tee $l6
                (f32.load offset=240
                  (local.get $p2))))
            (f32.mul
              (local.get $l4)
              (local.tee $l7
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 244)))))))))
    (f32.store offset=72
      (local.get $p0)
      (f32.sub
        (local.tee $l9
          (f32.load offset=8
            (local.get $p0)))
        (local.tee $l3
          (f32.sub
            (f32.mul
              (local.get $l4)
              (local.get $l6))
            (f32.mul
              (local.get $l3)
              (local.get $l7))))))
    (f32.store
      (local.get $l35)
      (f32.add
        (local.get $l8)
        (local.get $l5)))
    (f32.store offset=8
      (local.get $p0)
      (f32.add
        (local.get $l3)
        (local.get $l9)))
    (f32.store
      (local.get $l42)
      (f32.sub
        (local.tee $l3
          (f32.load
            (local.get $l31)))
        (local.tee $l6
          (f32.add
            (f32.mul
              (local.get $l13)
              (local.tee $l4
                (f32.load offset=480
                  (local.get $p2))))
            (f32.mul
              (local.get $l14)
              (local.tee $l5
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 484)))))))))
    (f32.store offset=80
      (local.get $p0)
      (f32.sub
        (local.tee $l7
          (f32.load offset=16
            (local.get $p0)))
        (local.tee $l4
          (f32.sub
            (f32.mul
              (local.get $l14)
              (local.get $l4))
            (f32.mul
              (local.get $l13)
              (local.get $l5))))))
    (f32.store
      (local.get $l31)
      (f32.add
        (local.get $l6)
        (local.get $l3)))
    (f32.store offset=16
      (local.get $p0)
      (f32.add
        (local.get $l4)
        (local.get $l7)))
    (local.set $l3
      (f32.load offset=24
        (local.get $p0)))
    (f32.store
      (local.get $l45)
      (f32.sub
        (local.tee $l4
          (f32.load
            (local.get $l34)))
        (local.tee $l9
          (f32.add
            (f32.mul
              (local.tee $l5
                (f32.load
                  (local.get $l45)))
              (local.tee $l6
                (f32.load offset=720
                  (local.get $p2))))
            (f32.mul
              (local.tee $l7
                (f32.load offset=88
                  (local.get $p0)))
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 724)))))))))
    (f32.store offset=88
      (local.get $p0)
      (f32.sub
        (local.get $l3)
        (local.tee $l5
          (f32.sub
            (f32.mul
              (local.get $l7)
              (local.get $l6))
            (f32.mul
              (local.get $l5)
              (local.get $l8))))))
    (f32.store
      (local.get $l34)
      (f32.add
        (local.get $l9)
        (local.get $l4)))
    (f32.store offset=24
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=32
        (local.get $p0)))
    (f32.store
      (local.get $l41)
      (f32.sub
        (local.tee $l4
          (f32.load
            (local.get $l30)))
        (local.tee $l9
          (f32.add
            (f32.mul
              (local.tee $l5
                (f32.load
                  (local.get $l41)))
              (local.tee $l6
                (f32.load offset=960
                  (local.get $p2))))
            (f32.mul
              (local.tee $l7
                (f32.load offset=96
                  (local.get $p0)))
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 964)))))))))
    (f32.store offset=96
      (local.get $p0)
      (f32.sub
        (local.get $l3)
        (local.tee $l5
          (f32.sub
            (f32.mul
              (local.get $l7)
              (local.get $l6))
            (f32.mul
              (local.get $l5)
              (local.get $l8))))))
    (f32.store
      (local.get $l30)
      (f32.add
        (local.get $l9)
        (local.get $l4)))
    (f32.store offset=32
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=40
        (local.get $p0)))
    (f32.store
      (local.get $l44)
      (f32.sub
        (local.tee $l4
          (f32.load
            (local.get $l33)))
        (local.tee $l9
          (f32.add
            (f32.mul
              (local.tee $l5
                (f32.load
                  (local.get $l44)))
              (local.tee $l6
                (f32.load offset=1200
                  (local.get $p2))))
            (f32.mul
              (local.tee $l7
                (f32.load offset=104
                  (local.get $p0)))
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 1204)))))))))
    (f32.store offset=104
      (local.get $p0)
      (f32.sub
        (local.get $l3)
        (local.tee $l5
          (f32.sub
            (f32.mul
              (local.get $l7)
              (local.get $l6))
            (f32.mul
              (local.get $l5)
              (local.get $l8))))))
    (f32.store
      (local.get $l33)
      (f32.add
        (local.get $l9)
        (local.get $l4)))
    (f32.store offset=40
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=48
        (local.get $p0)))
    (f32.store
      (local.get $p1)
      (f32.sub
        (local.tee $l4
          (f32.load
            (local.get $l29)))
        (local.tee $l9
          (f32.add
            (f32.mul
              (local.tee $l5
                (f32.load
                  (local.get $p1)))
              (local.tee $l6
                (f32.load offset=1440
                  (local.get $p2))))
            (f32.mul
              (local.tee $l7
                (f32.load offset=112
                  (local.get $p0)))
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 1444)))))))))
    (f32.store offset=112
      (local.get $p0)
      (f32.sub
        (local.get $l3)
        (local.tee $l5
          (f32.sub
            (f32.mul
              (local.get $l7)
              (local.get $l6))
            (f32.mul
              (local.get $l5)
              (local.get $l8))))))
    (f32.store
      (local.get $l29)
      (f32.add
        (local.get $l9)
        (local.get $l4)))
    (f32.store offset=48
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3)))
    (local.set $l3
      (f32.load offset=56
        (local.get $p0)))
    (f32.store
      (local.get $l43)
      (f32.sub
        (local.tee $l4
          (f32.load
            (local.get $l32)))
        (local.tee $l9
          (f32.add
            (f32.mul
              (local.tee $l5
                (f32.load
                  (local.get $l43)))
              (local.tee $l6
                (f32.load offset=1680
                  (local.get $p2))))
            (f32.mul
              (local.tee $l7
                (f32.load offset=120
                  (local.get $p0)))
              (local.tee $l8
                (f32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 1684)))))))))
    (f32.store offset=120
      (local.get $p0)
      (f32.sub
        (local.get $l3)
        (local.tee $l5
          (f32.sub
            (f32.mul
              (local.get $l7)
              (local.get $l6))
            (f32.mul
              (local.get $l5)
              (local.get $l8))))))
    (f32.store
      (local.get $l32)
      (f32.add
        (local.get $l9)
        (local.get $l4)))
    (f32.store offset=56
      (local.get $p0)
      (f32.add
        (local.get $l5)
        (local.get $l3))))
  (func $_GLOBAL__sub_I_example.cc (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 f32)
    (i32.store offset=982764
      (i32.const 0)
      (i32.const 991206291))
    (i64.store offset=982756 align=4
      (i32.const 0)
      (i64.const 3788161155073))
    (local.set $l0
      (i32.const -2645))
    (local.set $l1
      (i32.const 982768))
    (local.set $l2
      (i32.const 0))
    (loop $L0
      (f32.store
        (local.get $l1)
        (f32.div
          (f32.mul
            (f32.mul
              (f32.sub
                (f32.const 0x1p-1 (;=0.5;))
                (f32.mul
                  (call $DSP::UnitCircle<float>::cos_int__int_
                    (local.get $l2)
                    (i32.const 2645))
                  (f32.const 0x1p-1 (;=0.5;))))
              (f32.load offset=982764
                (i32.const 0)))
            (call $DSP::UnitCircle<float>::sin_int__int_
              (i32.rem_s
                (i32.mul
                  (i32.load offset=982756
                    (i32.const 0))
                  (local.get $l0))
                (local.tee $l3
                  (i32.shl
                    (i32.load offset=982760
                      (i32.const 0))
                    (i32.const 1))))
              (local.get $l3)))
          (f32.mul
            (f32.mul
              (f32.convert_i32_s
                (local.get $l0))
              (f32.const 0x1.921fb6p+0 (;=1.5708;)))
            (f32.load offset=982764
              (i32.const 0)))))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const 4)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 1)))
      (br_if $L0
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 2)))
          (i32.const 2647))))
    (local.set $l4
      (f32.const 0x0p+0 (;=0;)))
    (local.set $l0
      (i32.const 16))
    (loop $L1
      (local.set $l4
        (f32.add
          (f32.load
            (i32.add
              (local.get $l0)
              (i32.const 982752)))
          (local.get $l4)))
      (br_if $L1
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 4)))
          (i32.const 10600))))
    (local.set $l4
      (f32.div
        (f32.const 0x1p+0 (;=1;))
        (f32.abs
          (local.get $l4))))
    (local.set $l0
      (i32.const 16))
    (loop $L2
      (f32.store
        (local.tee $l1
          (i32.add
            (local.get $l0)
            (i32.const 982752)))
        (f32.mul
          (f32.load
            (local.get $l1))
          (local.get $l4)))
      (br_if $L2
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 4)))
          (i32.const 10600))))
    (drop
      (call $DSP::RealToHalfComplexTransform<882__DSP::Complex<float>_>::RealToHalfComplexTransform__
        (i32.const 993352)))
    (local.set $l0
      (i32.const 1014520))
    (loop $L3
      (i64.store align=4
        (local.get $l0)
        (i64.const 0))
      (br_if $L3
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 8)))
          (i32.const 1018056))))
    (i32.store offset=1018068
      (i32.const 0)
      (i32.const 990414985))
    (i64.store offset=1018060 align=4
      (i32.const 0)
      (i64.const 4123168604161))
    (local.set $l0
      (i32.const -2879))
    (local.set $l1
      (i32.const 1018072))
    (local.set $l2
      (i32.const 0))
    (loop $L4
      (f32.store
        (local.get $l1)
        (f32.div
          (f32.mul
            (f32.mul
              (f32.sub
                (f32.const 0x1p-1 (;=0.5;))
                (f32.mul
                  (call $DSP::UnitCircle<float>::cos_int__int_
                    (local.get $l2)
                    (i32.const 2879))
                  (f32.const 0x1p-1 (;=0.5;))))
              (f32.load offset=1018068
                (i32.const 0)))
            (call $DSP::UnitCircle<float>::sin_int__int_
              (i32.rem_s
                (i32.mul
                  (i32.load offset=1018060
                    (i32.const 0))
                  (local.get $l0))
                (local.tee $l3
                  (i32.shl
                    (i32.load offset=1018064
                      (i32.const 0))
                    (i32.const 1))))
              (local.get $l3)))
          (f32.mul
            (f32.mul
              (f32.convert_i32_s
                (local.get $l0))
              (f32.const 0x1.921fb6p+0 (;=1.5708;)))
            (f32.load offset=1018068
              (i32.const 0)))))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const 4)))
      (local.set $l2
        (i32.add
          (local.get $l2)
          (i32.const 1)))
      (br_if $L4
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 2)))
          (i32.const 2881))))
    (local.set $l4
      (f32.const 0x0p+0 (;=0;)))
    (local.set $l0
      (i32.const 16))
    (loop $L5
      (local.set $l4
        (f32.add
          (f32.load
            (i32.add
              (local.get $l0)
              (i32.const 1018056)))
          (local.get $l4)))
      (br_if $L5
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 4)))
          (i32.const 11536))))
    (local.set $l4
      (f32.div
        (f32.const 0x1p+0 (;=1;))
        (f32.abs
          (local.get $l4))))
    (local.set $l0
      (i32.const 16))
    (loop $L6
      (f32.store
        (local.tee $l1
          (i32.add
            (local.get $l0)
            (i32.const 1018056)))
        (f32.mul
          (f32.load
            (local.get $l1))
          (local.get $l4)))
      (br_if $L6
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 4)))
          (i32.const 11536))))
    (drop
      (call $DSP::RealToHalfComplexTransform<960__DSP::Complex<float>_>::RealToHalfComplexTransform__
        (i32.const 1029592)))
    (local.set $l0
      (i32.const 1052632))
    (loop $L7
      (i64.store align=4
        (local.get $l0)
        (i64.const 0))
      (br_if $L7
        (i32.ne
          (local.tee $l0
            (i32.add
              (local.get $l0)
              (i32.const 8)))
          (i32.const 1056480)))))
  (table $T0 1 1 funcref)
  (memory $memory (export "memory") 18)
  (global $g0 (mut i32) (i32.const 1123792))
  (data $d0 (i32.const 1024) "\01\01"))
