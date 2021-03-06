//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef cl_clang_storage_class_specifiers
#error Implementation requires cl_clang_storage_class_specifiers extension!
#endif

#pragma OPENCL EXTENSION cl_clang_storage_class_specifiers : enable

#ifdef cl_khr_fp64
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#endif

#ifdef cl_khr_fp16
#pragma OPENCL EXTENSION cl_khr_fp16 : enable
#endif

/* Function Attributes */
#include <func.h>

/* Supported Data Types */
#include <types.h>
#include <spirv/spirv_types.h>

/* Supported builtins */
#include <spirv/spirv_builtins.h>

/* Reinterpreting Types Using as_type() and as_typen() */
#include <as_type.h>

/* Preprocessor Directives and Macros */
#include <macros.h>

/* 6.11.1 Work-Item Functions */
#include <spirv/workitem/get_global_size.h>
#include <spirv/workitem/get_global_id.h>
#include <spirv/workitem/get_local_size.h>
#include <spirv/workitem/get_local_id.h>
#include <spirv/workitem/get_num_groups.h>
#include <spirv/workitem/get_group_id.h>
#include <spirv/workitem/get_global_offset.h>
#include <spirv/workitem/get_work_dim.h>

/* 6.11.2 Math Functions */
#include <spirv/math/acos.h>
#include <spirv/math/acosh.h>
#include <spirv/math/acospi.h>
#include <spirv/math/asin.h>
#include <spirv/math/asinh.h>
#include <spirv/math/asinpi.h>
#include <spirv/math/atan.h>
#include <spirv/math/atan2.h>
#include <spirv/math/atan2pi.h>
#include <spirv/math/atanh.h>
#include <spirv/math/atanpi.h>
#include <spirv/math/cbrt.h>
#include <spirv/math/ceil.h>
#include <spirv/math/cos.h>
#include <spirv/math/cosh.h>
#include <spirv/math/cospi.h>
#include <spirv/math/erf.h>
#include <spirv/math/erfc.h>
#include <spirv/math/exp.h>
#include <spirv/math/exp10.h>
#include <spirv/math/exp2.h>
#include <spirv/math/expm1.h>
#include <spirv/math/fabs.h>
#include <spirv/math/fdim.h>
#include <spirv/math/floor.h>
#include <spirv/math/fma.h>
#include <spirv/math/fmax.h>
#include <spirv/math/fmin.h>
#include <spirv/math/fmod.h>
#include <spirv/math/fract.h>
#include <spirv/math/frexp.h>
#include <spirv/math/half_cos.h>
#include <spirv/math/half_divide.h>
#include <spirv/math/half_exp.h>
#include <spirv/math/half_exp10.h>
#include <spirv/math/half_exp2.h>
#include <spirv/math/half_log.h>
#include <spirv/math/half_log10.h>
#include <spirv/math/half_log2.h>
#include <spirv/math/half_powr.h>
#include <spirv/math/half_recip.h>
#include <spirv/math/half_sin.h>
#include <spirv/math/half_tan.h>
#include <spirv/math/hypot.h>
#include <spirv/math/ilogb.h>
#include <spirv/math/ldexp.h>
#include <spirv/math/lgamma.h>
#include <spirv/math/lgamma_r.h>
#include <spirv/math/log.h>
#include <spirv/math/log10.h>
#include <spirv/math/log1p.h>
#include <spirv/math/log2.h>
#include <spirv/math/logb.h>
#include <spirv/math/mad.h>
#include <spirv/math/maxmag.h>
#include <spirv/math/minmag.h>
#include <spirv/math/modf.h>
#include <spirv/math/nan.h>
#include <spirv/math/native_cos.h>
#include <spirv/math/native_divide.h>
#include <spirv/math/native_exp.h>
#include <spirv/math/native_exp10.h>
#include <spirv/math/native_exp2.h>
#include <spirv/math/native_log.h>
#include <spirv/math/native_log10.h>
#include <spirv/math/native_log2.h>
#include <spirv/math/native_powr.h>
#include <spirv/math/native_recip.h>
#include <spirv/math/native_sin.h>
#include <spirv/math/native_tan.h>
#include <spirv/math/nextafter.h>
#include <spirv/math/pow.h>
#include <spirv/math/pown.h>
#include <spirv/math/powr.h>
#include <spirv/math/remainder.h>
#include <spirv/math/remquo.h>
#include <spirv/math/rint.h>
#include <spirv/math/rootn.h>
#include <spirv/math/round.h>
#include <spirv/math/sin.h>
#include <spirv/math/sincos.h>
#include <spirv/math/sinh.h>
#include <spirv/math/sinpi.h>
#include <spirv/math/tan.h>
#include <spirv/math/tanh.h>
#include <spirv/math/tanpi.h>
#include <spirv/math/tgamma.h>
#include <spirv/math/trunc.h>

/* 6.11.2.1 Floating-point macros */
#include <clc/float/definitions.h>

/* 6.11.3 Integer Definitions */
#include <clc/integer/definitions.h>

/* 6.11.11 Atomic Functions */
#include <spirv/atomic/atomic_add.h>
#include <spirv/atomic/atomic_and.h>
#include <spirv/atomic/atomic_cmpxchg.h>
#include <spirv/atomic/atomic_dec.h>
#include <spirv/atomic/atomic_inc.h>
#include <spirv/atomic/atomic_load.h>
#include <spirv/atomic/atomic_max.h>
#include <spirv/atomic/atomic_min.h>
#include <spirv/atomic/atomic_or.h>
#include <spirv/atomic/atomic_store.h>
#include <spirv/atomic/atomic_sub.h>
#include <spirv/atomic/atomic_xchg.h>
#include <spirv/atomic/atomic_xor.h>

/* cl_khr extension atomics are omitted from __spirv */

/* 6.12.12 Miscellaneous Vector Functions */
#include <spirv/misc/shuffle.h>
#include <spirv/misc/shuffle2.h>

/* 6.11.13 Image Read and Write Functions */
#include <spirv/image/image_defines.h>
#include <spirv/image/image.h>

#pragma OPENCL EXTENSION all : disable
