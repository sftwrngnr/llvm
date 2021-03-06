; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i386-unknown -mattr=+sse2 | FileCheck %s --check-prefix=X32-SSE
; RUN: llc < %s -mtriple=i386-unknown -mattr=+avx  | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX1
; RUN: llc < %s -mtriple=i386-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX2
; RUN: llc < %s -mtriple=i386-unknown -mcpu=knl | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX512 --check-prefix=X32-KNL
; RUN: llc < %s -mtriple=i386-unknown -mcpu=skx | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX512 --check-prefix=X32-SKX
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+sse2 | FileCheck %s --check-prefix=X64-SSE
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx  | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX1
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX2
; RUN: llc < %s -mtriple=x86_64-unknown -mcpu=knl | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX512 --check-prefix=X64-KNL
; RUN: llc < %s -mtriple=x86_64-unknown -mcpu=skx | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX512 --check-prefix=X64-SKX

define <16 x i8> @allones_v16i8() nounwind {
; X32-SSE-LABEL: allones_v16i8:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v16i8:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v16i8:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v16i8:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <8 x i16> @allones_v8i16() nounwind {
; X32-SSE-LABEL: allones_v8i16:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v8i16:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8i16:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v8i16:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <4 x i32> @allones_v4i32() nounwind {
; X32-SSE-LABEL: allones_v4i32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v4i32:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v4i32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v4i32:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>
}

define <2 x i64> @allones_v2i64() nounwind {
; X32-SSE-LABEL: allones_v2i64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v2i64:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v2i64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v2i64:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <2 x i64> <i64 -1, i64 -1>
}

define <2 x double> @allones_v2f64() nounwind {
; X32-SSE-LABEL: allones_v2f64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v2f64:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v2f64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v2f64:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <2 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <4 x float> @allones_v4f32() nounwind {
; X32-SSE-LABEL: allones_v4f32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: allones_v4f32:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v4f32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: allones_v4f32:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <4 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}

define <32 x i8> @allones_v32i8() nounwind {
; X32-SSE-LABEL: allones_v32i8:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v32i8:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v32i8:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v32i8:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v32i8:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v32i8:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <16 x i16> @allones_v16i16() nounwind {
; X32-SSE-LABEL: allones_v16i16:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v16i16:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v16i16:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v16i16:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v16i16:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v16i16:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <16 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <8 x i32> @allones_v8i32() nounwind {
; X32-SSE-LABEL: allones_v8i32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v8i32:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v8i32:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8i32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v8i32:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v8i32:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
}

define <4 x i64> @allones_v4i64() nounwind {
; X32-SSE-LABEL: allones_v4i64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v4i64:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v4i64:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v4i64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v4i64:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v4i64:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>
}

define <4 x double> @allones_v4f64() nounwind {
; X32-SSE-LABEL: allones_v4f64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v4f64:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v4f64:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v4f64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v4f64:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v4f64:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <4 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <4 x double> @allones_v4f64_optsize() nounwind optsize {
; X32-SSE-LABEL: allones_v4f64_optsize:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v4f64_optsize:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v4f64_optsize:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v4f64_optsize:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v4f64_optsize:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v4f64_optsize:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <4 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <8 x float> @allones_v8f32() nounwind {
; X32-SSE-LABEL: allones_v8f32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v8f32:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v8f32:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8f32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v8f32:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v8f32:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <8 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}

define <8 x float> @allones_v8f32_optsize() nounwind optsize {
; X32-SSE-LABEL: allones_v8f32_optsize:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v8f32_optsize:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: allones_v8f32_optsize:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8f32_optsize:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v8f32_optsize:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: allones_v8f32_optsize:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <8 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}

define <64 x i8> @allones_v64i8() nounwind {
; X32-SSE-LABEL: allones_v64i8:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v64i8:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v64i8:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-KNL-LABEL: allones_v64i8:
; X32-KNL:       # BB#0:
; X32-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-KNL-NEXT:    retl
;
; X32-SKX-LABEL: allones_v64i8:
; X32-SKX:       # BB#0:
; X32-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-SKX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v64i8:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v64i8:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v64i8:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-KNL-LABEL: allones_v64i8:
; X64-KNL:       # BB#0:
; X64-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-KNL-NEXT:    retq
;
; X64-SKX-LABEL: allones_v64i8:
; X64-SKX:       # BB#0:
; X64-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-SKX-NEXT:    retq
  ret <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <32 x i16> @allones_v32i16() nounwind {
; X32-SSE-LABEL: allones_v32i16:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v32i16:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v32i16:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-KNL-LABEL: allones_v32i16:
; X32-KNL:       # BB#0:
; X32-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-KNL-NEXT:    retl
;
; X32-SKX-LABEL: allones_v32i16:
; X32-SKX:       # BB#0:
; X32-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-SKX-NEXT:    retl
;
; X64-SSE-LABEL: allones_v32i16:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v32i16:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v32i16:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-KNL-LABEL: allones_v32i16:
; X64-KNL:       # BB#0:
; X64-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-KNL-NEXT:    retq
;
; X64-SKX-LABEL: allones_v32i16:
; X64-SKX:       # BB#0:
; X64-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-SKX-NEXT:    retq
  ret <32 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <16 x i32> @allones_v16i32() nounwind {
; X32-SSE-LABEL: allones_v16i32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v16i32:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v16i32:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: allones_v16i32:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: allones_v16i32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v16i32:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v16i32:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: allones_v16i32:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <16 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
}

define <8 x i64> @allones_v8i64() nounwind {
; X32-SSE-LABEL: allones_v8i64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v8i64:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v8i64:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: allones_v8i64:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8i64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v8i64:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v8i64:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: allones_v8i64:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <8 x i64> <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1>
}

define <8 x double> @allones_v8f64() nounwind {
; X32-SSE-LABEL: allones_v8f64:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v8f64:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v8f64:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: allones_v8f64:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: allones_v8f64:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v8f64:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v8f64:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: allones_v8f64:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <8 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <16 x float> @allones_v16f32() nounwind {
; X32-SSE-LABEL: allones_v16f32:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: allones_v16f32:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: allones_v16f32:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: allones_v16f32:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: allones_v16f32:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: allones_v16f32:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vxorps %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vcmptrueps %ymm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: allones_v16f32:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: allones_v16f32:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <16 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}
