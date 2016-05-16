; ASMUT.asm
; ASMUT - ASM Unit Testing: Unit testing framework for your assembly projects.

.include "ASMUT/Macros/Macros.asm"

; -----------------------------------------------------------------------------
.section "runASMUT" free
; -----------------------------------------------------------------------------
  runASMUT:
    call runTestSuite1
    call runTestSuite2
  ret
.ends

; -----------------------------------------------------------------------------
.section "Test Suite 1" free
; -----------------------------------------------------------------------------
  runTestSuite1:
    call myFirstTest
  ret

  myFirstTest:
    ld a,1
    assertEqualsA 1, "myFirstTest"
  ret
.ends

; -----------------------------------------------------------------------------
.section "Test Suite 2" free
; -----------------------------------------------------------------------------
  runTestSuite2:
    call mySecondTest
  ret

  mySecondTest:
    ; Test code
  ret
.ends
