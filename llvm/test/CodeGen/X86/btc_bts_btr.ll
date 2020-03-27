; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-pc-linux | FileCheck %s --check-prefix=X64
; RUN: llc < %s -mtriple=i386-pc-linux | FileCheck %s --check-prefix=X86

; FIXME: We don't match this properly due to different size of 'rotate' and 'and'
define i16 @btr_16(i16 %x, i16 %n) {
; X64-LABEL: btr_16:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movw $-2, %ax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    rolw %cl, %ax
; X64-NEXT:    andl %edi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_16:
; X86:       # %bb.0:
; X86-NEXT:    movzwl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btrw %cx, %ax
; X86-NEXT:    retl
  %1 = shl i16 1, %n
  %2 = xor i16 %1, -1
  %3 = and i16 %x, %2
  ret i16 %3
}

define i16 @bts_16(i16 %x, i16 %n) {
; X64-LABEL: bts_16:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_16:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    orw {{[0-9]+}}(%esp), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = shl i16 1, %n
  %2 = or i16 %x, %1
  ret i16 %2
}

define i16 @btc_16(i16 %x, i16 %n) {
; X64-LABEL: btc_16:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_16:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    xorw {{[0-9]+}}(%esp), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = shl i16 1, %n
  %2 = xor i16 %x, %1
  ret i16 %2
}

define i32 @btr_32(i32 %x, i32 %n) {
; X64-LABEL: btr_32:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btrl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_32:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btrl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 1, %n
  %2 = xor i32 %1, -1
  %3 = and i32 %x, %2
  ret i32 %3
}

define i32 @bts_32(i32 %x, i32 %n) {
; X64-LABEL: bts_32:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_32:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btsl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 1, %n
  %2 = or i32 %x, %1
  ret i32 %2
}

define i32 @btc_32(i32 %x, i32 %n) {
; X64-LABEL: btc_32:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_32:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btcl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 1, %n
  %2 = xor i32 %x, %1
  ret i32 %2
}

define i64 @btr_64(i64 %x, i64 %n) {
; X64-LABEL: btr_64:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btrq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btr_64:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB6_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB6_2:
; X86-NEXT:    notl %edx
; X86-NEXT:    notl %eax
; X86-NEXT:    andl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    andl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 1, %n
  %2 = xor i64 %1, -1
  %3 = and i64 %x, %2
  ret i64 %3
}

define i64 @bts_64(i64 %x, i64 %n) {
; X64-LABEL: bts_64:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btsq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: bts_64:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB7_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB7_2:
; X86-NEXT:    orl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    orl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 1, %n
  %2 = or i64 %x, %1
  ret i64 %2
}

define i64 @btc_64(i64 %x, i64 %n) {
; X64-LABEL: btc_64:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btcq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btc_64:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB8_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB8_2:
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 1, %n
  %2 = xor i64 %x, %1
  ret i64 %2
}

define i16 @btr_16_mask(i16 %x, i16 %n) {
; X64-LABEL: btr_16_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movw $-2, %ax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    rolw %cl, %ax
; X64-NEXT:    andl %edi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_16_mask:
; X86:       # %bb.0:
; X86-NEXT:    movzwl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btrw %cx, %ax
; X86-NEXT:    retl
  %1 = and i16 %n, 15
  %2 = shl i16 1, %1
  %3 = xor i16 %2, -1
  %4 = and i16 %x, %3
  ret i16 %4
}

define i16 @bts_16_mask(i16 %x, i16 %n) {
; X64-LABEL: bts_16_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    andb $15, %sil
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_16_mask:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    andb $15, %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    orw {{[0-9]+}}(%esp), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = and i16 %n, 15
  %2 = shl i16 1, %1
  %3 = or i16 %x, %2
  ret i16 %3
}

define i16 @btc_16_mask(i16 %x, i16 %n) {
; X64-LABEL: btc_16_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    andb $15, %sil
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_16_mask:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    andb $15, %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    xorw {{[0-9]+}}(%esp), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = and i16 %n, 15
  %2 = shl i16 1, %1
  %3 = xor i16 %x, %2
  ret i16 %3
}

define i32 @btr_32_mask(i32 %x, i32 %n) {
; X64-LABEL: btr_32_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btrl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_32_mask:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btrl %ecx, %eax
; X86-NEXT:    retl
  %1 = and i32 %n, 31
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = and i32 %x, %3
  ret i32 %4
}

define i32 @bts_32_mask(i32 %x, i32 %n) {
; X64-LABEL: bts_32_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_32_mask:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btsl %ecx, %eax
; X86-NEXT:    retl
  %1 = and i32 %n, 31
  %2 = shl i32 1, %1
  %3 = or i32 %x, %2
  ret i32 %3
}

define i32 @btc_32_mask(i32 %x, i32 %n) {
; X64-LABEL: btc_32_mask:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_32_mask:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    btcl %ecx, %eax
; X86-NEXT:    retl
  %1 = and i32 %n, 31
  %2 = shl i32 1, %1
  %3 = xor i32 %x, %2
  ret i32 %3
}

define i64 @btr_64_mask(i64 %x, i64 %n) {
; X64-LABEL: btr_64_mask:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btrq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btr_64_mask:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB15_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB15_2:
; X86-NEXT:    notl %edx
; X86-NEXT:    notl %eax
; X86-NEXT:    andl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    andl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = and i64 %n, 63
  %2 = shl i64 1, %1
  %3 = xor i64 %2, -1
  %4 = and i64 %x, %3
  ret i64 %4
}

define i64 @bts_64_mask(i64 %x, i64 %n) {
; X64-LABEL: bts_64_mask:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btsq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: bts_64_mask:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB16_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB16_2:
; X86-NEXT:    orl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    orl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = and i64 %n, 63
  %2 = shl i64 1, %1
  %3 = or i64 %x, %2
  ret i64 %3
}

define i64 @btc_64_mask(i64 %x, i64 %n) {
; X64-LABEL: btc_64_mask:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    btcq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btc_64_mask:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB17_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB17_2:
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = and i64 %n, 63
  %2 = shl i64 1, %1
  %3 = xor i64 %x, %2
  ret i64 %3
}

; Tests below use loads and we favor folding those over matching btc/btr/bts.

define i16 @btr_16_load(i16* %x, i16 %n) {
; X64-LABEL: btr_16_load:
; X64:       # %bb.0:
; X64-NEXT:    movzwl (%rdi), %eax
; X64-NEXT:    btrw %si, %ax
; X64-NEXT:    retq
;
; X86-LABEL: btr_16_load:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movzwl (%eax), %eax
; X86-NEXT:    btrw %cx, %ax
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = xor i16 %2, -1
  %4 = and i16 %1, %3
  ret i16 %4
}

define i16 @bts_16_load(i16* %x, i16 %n) {
; X64-LABEL: bts_16_load:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    orw (%rdi), %ax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_16_load:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    orw (%edx), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = or i16 %1, %2
  ret i16 %3
}

define i16 @btc_16_load(i16* %x, i16 %n) {
; X64-LABEL: btc_16_load:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    xorw (%rdi), %ax
; X64-NEXT:    # kill: def $ax killed $ax killed $eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_16_load:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    xorw (%edx), %ax
; X86-NEXT:    # kill: def $ax killed $ax killed $eax
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = xor i16 %1, %2
  ret i16 %3
}

define i32 @btr_32_load(i32* %x, i32 %n) {
; X64-LABEL: btr_32_load:
; X64:       # %bb.0:
; X64-NEXT:    movl (%rdi), %eax
; X64-NEXT:    btrl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_32_load:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movl (%eax), %eax
; X86-NEXT:    btrl %ecx, %eax
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = xor i32 %2, -1
  %4 = and i32 %1, %3
  ret i32 %4
}

define i32 @bts_32_load(i32* %x, i32 %n) {
; X64-LABEL: bts_32_load:
; X64:       # %bb.0:
; X64-NEXT:    movl (%rdi), %eax
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_32_load:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movl (%eax), %eax
; X86-NEXT:    btsl %ecx, %eax
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = or i32 %1, %2
  ret i32 %3
}

define i32 @btc_32_load(i32* %x, i32 %n) {
; X64-LABEL: btc_32_load:
; X64:       # %bb.0:
; X64-NEXT:    movl (%rdi), %eax
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_32_load:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movl (%eax), %eax
; X86-NEXT:    btcl %ecx, %eax
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = xor i32 %1, %2
  ret i32 %3
}

define i64 @btr_64_load(i64* %x, i64 %n) {
; X64-LABEL: btr_64_load:
; X64:       # %bb.0:
; X64-NEXT:    movq (%rdi), %rax
; X64-NEXT:    btrq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btr_64_load:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB24_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB24_2:
; X86-NEXT:    notl %edx
; X86-NEXT:    notl %eax
; X86-NEXT:    andl 4(%esi), %edx
; X86-NEXT:    andl (%esi), %eax
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = xor i64 %2, -1
  %4 = and i64 %1, %3
  ret i64 %4
}

define i64 @bts_64_load(i64* %x, i64 %n) {
; X64-LABEL: bts_64_load:
; X64:       # %bb.0:
; X64-NEXT:    movq (%rdi), %rax
; X64-NEXT:    btsq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: bts_64_load:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB25_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB25_2:
; X86-NEXT:    orl 4(%esi), %edx
; X86-NEXT:    orl (%esi), %eax
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = or i64 %1, %2
  ret i64 %3
}

define i64 @btc_64_load(i64* %x, i64 %n) {
; X64-LABEL: btc_64_load:
; X64:       # %bb.0:
; X64-NEXT:    movq (%rdi), %rax
; X64-NEXT:    btcq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btc_64_load:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB26_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB26_2:
; X86-NEXT:    xorl 4(%esi), %edx
; X86-NEXT:    xorl (%esi), %eax
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = xor i64 %1, %2
  ret i64 %3
}

; For the tests below, we definitely shouldn't fold them to the memory forms
; of BTR/BTS/BTC as they have very different semantics from their register
; counterparts.

define void @btr_16_dont_fold(i16* %x, i16 %n) {
; X64-LABEL: btr_16_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movw $-2, %ax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    rolw %cl, %ax
; X64-NEXT:    andw %ax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btr_16_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movw $-2, %dx
; X86-NEXT:    rolw %cl, %dx
; X86-NEXT:    andw %dx, (%eax)
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = xor i16 %2, -1
  %4 = and i16 %1, %3
  store i16 %4, i16* %x
  ret void
}

define void @bts_16_dont_fold(i16* %x, i16 %n) {
; X64-LABEL: bts_16_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    orw %ax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: bts_16_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    orw %dx, (%eax)
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = or i16 %1, %2
  store i16 %3, i16* %x
  ret void
}

define void @btc_16_dont_fold(i16* %x, i16 %n) {
; X64-LABEL: btc_16_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    xorw %ax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btc_16_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    xorw %dx, (%eax)
; X86-NEXT:    retl
  %1 = load i16, i16* %x
  %2 = shl i16 1, %n
  %3 = xor i16 %1, %2
  store i16 %3, i16* %x
  ret void
}

define void @btr_32_dont_fold(i32* %x, i32 %n) {
; X64-LABEL: btr_32_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $-2, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    roll %cl, %eax
; X64-NEXT:    andl %eax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btr_32_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $-2, %edx
; X86-NEXT:    roll %cl, %edx
; X86-NEXT:    andl %edx, (%eax)
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = xor i32 %2, -1
  %4 = and i32 %1, %3
  store i32 %4, i32* %x
  ret void
}

define void @bts_32_dont_fold(i32* %x, i32 %n) {
; X64-LABEL: bts_32_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    orl %eax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: bts_32_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    orl %edx, (%eax)
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = or i32 %1, %2
  store i32 %3, i32* %x
  ret void
}

define void @btc_32_dont_fold(i32* %x, i32 %n) {
; X64-LABEL: btc_32_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movl %esi, %ecx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $ecx
; X64-NEXT:    shll %cl, %eax
; X64-NEXT:    xorl %eax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btc_32_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    xorl %edx, (%eax)
; X86-NEXT:    retl
  %1 = load i32, i32* %x
  %2 = shl i32 1, %n
  %3 = xor i32 %1, %2
  store i32 %3, i32* %x
  ret void
}

define void @btr_64_dont_fold(i64* %x, i64 %n) {
; X64-LABEL: btr_64_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movq %rsi, %rcx
; X64-NEXT:    movq $-2, %rax
; X64-NEXT:    # kill: def $cl killed $cl killed $rcx
; X64-NEXT:    rolq %cl, %rax
; X64-NEXT:    andq %rax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btr_64_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    xorl %esi, %esi
; X86-NEXT:    shldl %cl, %edx, %esi
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB33_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %edx, %esi
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:  .LBB33_2:
; X86-NEXT:    notl %esi
; X86-NEXT:    notl %edx
; X86-NEXT:    andl %edx, (%eax)
; X86-NEXT:    andl %esi, 4(%eax)
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = xor i64 %2, -1
  %4 = and i64 %1, %3
  store i64 %4, i64* %x
  ret void
}

define void @bts_64_dont_fold(i64* %x, i64 %n) {
; X64-LABEL: bts_64_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movq %rsi, %rcx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $rcx
; X64-NEXT:    shlq %cl, %rax
; X64-NEXT:    orq %rax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: bts_64_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    xorl %esi, %esi
; X86-NEXT:    shldl %cl, %edx, %esi
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB34_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %edx, %esi
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:  .LBB34_2:
; X86-NEXT:    orl %edx, (%eax)
; X86-NEXT:    orl %esi, 4(%eax)
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = or i64 %1, %2
  store i64 %3, i64* %x
  ret void
}

define void @btc_64_dont_fold(i64* %x, i64 %n) {
; X64-LABEL: btc_64_dont_fold:
; X64:       # %bb.0:
; X64-NEXT:    movq %rsi, %rcx
; X64-NEXT:    movl $1, %eax
; X64-NEXT:    # kill: def $cl killed $cl killed $rcx
; X64-NEXT:    shlq %cl, %rax
; X64-NEXT:    xorq %rax, (%rdi)
; X64-NEXT:    retq
;
; X86-LABEL: btc_64_dont_fold:
; X86:       # %bb.0:
; X86-NEXT:    pushl %esi
; X86-NEXT:    .cfi_def_cfa_offset 8
; X86-NEXT:    .cfi_offset %esi, -8
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    movl $1, %edx
; X86-NEXT:    xorl %esi, %esi
; X86-NEXT:    shldl %cl, %edx, %esi
; X86-NEXT:    shll %cl, %edx
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB35_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %edx, %esi
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:  .LBB35_2:
; X86-NEXT:    xorl %edx, (%eax)
; X86-NEXT:    xorl %esi, 4(%eax)
; X86-NEXT:    popl %esi
; X86-NEXT:    .cfi_def_cfa_offset 4
; X86-NEXT:    retl
  %1 = load i64, i64* %x
  %2 = shl i64 1, %n
  %3 = xor i64 %1, %2
  store i64 %3, i64* %x
  ret void
}

define i32 @btr_32_mask_zeros(i32 %x, i32 %n) {
; X64-LABEL: btr_32_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btrl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btr_32_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    shlb $2, %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    btrl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 %n, 2
  %2 = and i32 %1, 31
  %3 = shl i32 1, %2
  %4 = xor i32 %3, -1
  %5 = and i32 %x, %4
  ret i32 %5
}

define i32 @bts_32_mask_zeros(i32 %x, i32 %n) {
; X64-LABEL: bts_32_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btsl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: bts_32_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    shlb $2, %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    btsl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 %n, 2
  %2 = and i32 %1, 31
  %3 = shl i32 1, %2
  %4 = or i32 %x, %3
  ret i32 %4
}

define i32 @btc_32_mask_zeros(i32 %x, i32 %n) {
; X64-LABEL: btc_32_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btcl %esi, %eax
; X64-NEXT:    retq
;
; X86-LABEL: btc_32_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movb {{[0-9]+}}(%esp), %cl
; X86-NEXT:    shlb $2, %cl
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    btcl %ecx, %eax
; X86-NEXT:    retl
  %1 = shl i32 %n, 2
  %2 = and i32 %1, 31
  %3 = shl i32 1, %2
  %4 = xor i32 %x, %3
  ret i32 %4
}

define i64 @btr_64_mask_zeros(i64 %x, i64 %n) {
; X64-LABEL: btr_64_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btrq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btr_64_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X86-NEXT:    shll $2, %ecx
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB39_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB39_2:
; X86-NEXT:    notl %edx
; X86-NEXT:    notl %eax
; X86-NEXT:    andl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    andl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 %n, 2
  %2 = and i64 %1, 63
  %3 = shl i64 1, %2
  %4 = xor i64 %3, -1
  %5 = and i64 %x, %4
  ret i64 %5
}

define i64 @bts_64_mask_zeros(i64 %x, i64 %n) {
; X64-LABEL: bts_64_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btsq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: bts_64_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X86-NEXT:    shll $2, %ecx
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB40_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB40_2:
; X86-NEXT:    orl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    orl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 %n, 2
  %2 = and i64 %1, 63
  %3 = shl i64 1, %2
  %4 = or i64 %x, %3
  ret i64 %4
}

define i64 @btc_64_mask_zeros(i64 %x, i64 %n) {
; X64-LABEL: btc_64_mask_zeros:
; X64:       # %bb.0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    shll $2, %esi
; X64-NEXT:    btcq %rsi, %rax
; X64-NEXT:    retq
;
; X86-LABEL: btc_64_mask_zeros:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X86-NEXT:    shll $2, %ecx
; X86-NEXT:    movl $1, %eax
; X86-NEXT:    xorl %edx, %edx
; X86-NEXT:    shldl %cl, %eax, %edx
; X86-NEXT:    shll %cl, %eax
; X86-NEXT:    testb $32, %cl
; X86-NEXT:    je .LBB41_2
; X86-NEXT:  # %bb.1:
; X86-NEXT:    movl %eax, %edx
; X86-NEXT:    xorl %eax, %eax
; X86-NEXT:  .LBB41_2:
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %edx
; X86-NEXT:    xorl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    retl
  %1 = shl i64 %n, 2
  %2 = and i64 %1, 63
  %3 = shl i64 1, %2
  %4 = xor i64 %x, %3
  ret i64 %4
}
