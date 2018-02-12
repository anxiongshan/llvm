; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instsimplify -S | FileCheck %s

declare double @llvm.log.f64(double)
declare double @llvm.exp.f64(double)

define double @log_reassoc_exp_strict(double %a) {
; CHECK-LABEL: @log_reassoc_exp_strict(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.log.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call double @llvm.exp.f64(double %a)
  %2 = call reassoc double @llvm.log.f64(double %1)
  ret double %2
}

define double @log_strict_exp_reassoc(double %a) {
; CHECK-LABEL: @log_strict_exp_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc double @llvm.exp.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.log.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call reassoc double @llvm.exp.f64(double %a)
  %2 = call double @llvm.log.f64(double %1)
  ret double %2
}

define double @log_exp_log_exp(double %a) {
; CHECK-LABEL: @log_exp_log_exp(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.log.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.exp.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call double @llvm.log.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.exp.f64(double %a)
  %2 = call double @llvm.log.f64(double %1)
  %3 = call double @llvm.exp.f64(double %2)
  %4 = call double @llvm.log.f64(double %3)
  ret double %4
}

define double @log_exp_log_exp_reassoc(double %a) {
; CHECK-LABEL: @log_exp_log_exp_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.log.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.exp.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call reassoc double @llvm.log.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.exp.f64(double %a)
  %2 = call reassoc double @llvm.log.f64(double %1)
  %3 = call double @llvm.exp.f64(double %2)
  %4 = call reassoc double @llvm.log.f64(double %3)
  ret double %4
}

declare double @llvm.log2.f64(double)
declare double @llvm.exp2.f64(double)

define double @log2_reassoc_exp2_strict(double %a) {
; CHECK-LABEL: @log2_reassoc_exp2_strict(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.log2.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call double @llvm.exp2.f64(double %a)
  %2 = call reassoc double @llvm.log2.f64(double %1)
  ret double %2
}

define double @log2_strict_exp2_reassoc(double %a) {
; CHECK-LABEL: @log2_strict_exp2_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc double @llvm.exp2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.log2.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call reassoc double @llvm.exp2.f64(double %a)
  %2 = call double @llvm.log2.f64(double %1)
  ret double %2
}

define double @log2_exp2_log2_exp2(double %a) {
; CHECK-LABEL: @log2_exp2_log2_exp2(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.log2.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.exp2.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call double @llvm.log2.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.exp2.f64(double %a)
  %2 = call double @llvm.log2.f64(double %1)
  %3 = call double @llvm.exp2.f64(double %2)
  %4 = call double @llvm.log2.f64(double %3)
  ret double %4
}

define double @log2_exp2_log2_exp2_reassoc(double %a) {
; CHECK-LABEL: @log2_exp2_log2_exp2_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.exp2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.log2.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.exp2.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call reassoc double @llvm.log2.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.exp2.f64(double %a)
  %2 = call reassoc double @llvm.log2.f64(double %1)
  %3 = call double @llvm.exp2.f64(double %2)
  %4 = call reassoc double @llvm.log2.f64(double %3)
  ret double %4
}

define double @exp_reassoc_log_strict(double %a) {
; CHECK-LABEL: @exp_reassoc_log_strict(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.exp.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call double @llvm.log.f64(double %a)
  %2 = call reassoc double @llvm.exp.f64(double %1)
  ret double %2
}

define double @exp_strict_log_reassoc(double %a) {
; CHECK-LABEL: @exp_strict_log_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc double @llvm.log.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.exp.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call reassoc double @llvm.log.f64(double %a)
  %2 = call double @llvm.exp.f64(double %1)
  ret double %2
}

define double @exp_log_exp_log(double %a) {
; CHECK-LABEL: @exp_log_exp_log(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.exp.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.log.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call double @llvm.exp.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.log.f64(double %a)
  %2 = call double @llvm.exp.f64(double %1)
  %3 = call double @llvm.log.f64(double %2)
  %4 = call double @llvm.exp.f64(double %3)
  ret double %4
}

define double @exp_log_exp_log_reassoc(double %a) {
; CHECK-LABEL: @exp_log_exp_log_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.exp.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.log.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call reassoc double @llvm.exp.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.log.f64(double %a)
  %2 = call reassoc double @llvm.exp.f64(double %1)
  %3 = call double @llvm.log.f64(double %2)
  %4 = call reassoc double @llvm.exp.f64(double %3)
  ret double %4
}

define double @exp2_reassoc_log2_strict(double %a) {
; CHECK-LABEL: @exp2_reassoc_log2_strict(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.exp2.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call double @llvm.log2.f64(double %a)
  %2 = call reassoc double @llvm.exp2.f64(double %1)
  ret double %2
}

define double @exp2_strict_log2_reassoc(double %a) {
; CHECK-LABEL: @exp2_strict_log2_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call reassoc double @llvm.log2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.exp2.f64(double [[TMP1]])
; CHECK-NEXT:    ret double [[TMP2]]
;
  %1 = call reassoc double @llvm.log2.f64(double %a)
  %2 = call double @llvm.exp2.f64(double %1)
  ret double %2
}

define double @exp2_log2_exp2_log2(double %a) {
; CHECK-LABEL: @exp2_log2_exp2_log2(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call double @llvm.exp2.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.log2.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call double @llvm.exp2.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.log2.f64(double %a)
  %2 = call double @llvm.exp2.f64(double %1)
  %3 = call double @llvm.log2.f64(double %2)
  %4 = call double @llvm.exp2.f64(double %3)
  ret double %4
}

define double @exp2_log2_exp2_log2_reassoc(double %a) {
; CHECK-LABEL: @exp2_log2_exp2_log2_reassoc(
; CHECK-NEXT:    [[TMP1:%.*]] = call double @llvm.log2.f64(double [[A:%.*]])
; CHECK-NEXT:    [[TMP2:%.*]] = call reassoc double @llvm.exp2.f64(double [[TMP1]])
; CHECK-NEXT:    [[TMP3:%.*]] = call double @llvm.log2.f64(double [[TMP2]])
; CHECK-NEXT:    [[TMP4:%.*]] = call reassoc double @llvm.exp2.f64(double [[TMP3]])
; CHECK-NEXT:    ret double [[TMP4]]
;
  %1 = call double @llvm.log2.f64(double %a)
  %2 = call reassoc double @llvm.exp2.f64(double %1)
  %3 = call double @llvm.log2.f64(double %2)
  %4 = call reassoc double @llvm.exp2.f64(double %3)
  ret double %4
}

