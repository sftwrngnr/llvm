; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=small < %s | FileCheck %s
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=large < %s | FileCheck %s --check-prefix=LARGE
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=small -mattr=avx < %s | FileCheck %s --check-prefix=AVX
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=large -mattr=avx < %s | FileCheck %s --check-prefix=LARGE_AVX
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=small -mattr=avx512f < %s | FileCheck %s --check-prefix=AVX
; RUN: llc -mtriple=x86_64-apple-darwin -fast-isel -code-model=large -mattr=avx512f < %s | FileCheck %s --check-prefix=LARGE_AVX

; Make sure fast isel uses rip-relative addressing for the small code model.
define float @constpool_float(float %x) {
; CHECK-LABEL: constpool_float:
; CHECK:       ## BB#0:
; CHECK-NEXT:    movss {{.*#+}} xmm1 = mem[0],zero,zero,zero
; CHECK-NEXT:    addss %xmm1, %xmm0
; CHECK-NEXT:    retq
;
; LARGE-LABEL: constpool_float:
; LARGE:       ## BB#0:
; LARGE-NEXT:    movabsq $LCPI0_0, %rax
; LARGE-NEXT:    addss (%rax), %xmm0
; LARGE-NEXT:    retq
;
; AVX-LABEL: constpool_float:
; AVX:       ## BB#0:
; AVX-NEXT:    vmovss {{.*#+}} xmm1 = mem[0],zero,zero,zero
; AVX-NEXT:    vaddss %xmm1, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; LARGE_AVX-LABEL: constpool_float:
; LARGE_AVX:       ## BB#0:
; LARGE_AVX-NEXT:    movabsq $LCPI0_0, %rax
; LARGE_AVX-NEXT:    vaddss (%rax), %xmm0, %xmm0
; LARGE_AVX-NEXT:    retq

  %1 = fadd float %x, 16.50e+01
  ret float %1
}

define double @constpool_double(double %x) nounwind {
; CHECK-LABEL: constpool_double:
; CHECK:       ## BB#0:
; CHECK-NEXT:    movsd {{.*#+}} xmm1 = mem[0],zero
; CHECK-NEXT:    addsd %xmm1, %xmm0
; CHECK-NEXT:    retq
;
; LARGE-LABEL: constpool_double:
; LARGE:       ## BB#0:
; LARGE-NEXT:    movabsq $LCPI1_0, %rax
; LARGE-NEXT:    addsd (%rax), %xmm0
; LARGE-NEXT:    retq
;
; AVX-LABEL: constpool_double:
; AVX:       ## BB#0:
; AVX-NEXT:    vmovsd {{.*#+}} xmm1 = mem[0],zero
; AVX-NEXT:    vaddsd %xmm1, %xmm0, %xmm0
; AVX-NEXT:    retq
;
; LARGE_AVX-LABEL: constpool_double:
; LARGE_AVX:       ## BB#0:
; LARGE_AVX-NEXT:    movabsq $LCPI1_0, %rax
; LARGE_AVX-NEXT:    vaddsd (%rax), %xmm0, %xmm0
; LARGE_AVX-NEXT:    retq

  %1 = fadd double %x, 8.500000e-01
  ret double %1
}
