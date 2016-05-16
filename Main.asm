.include "Base.inc"

.bank 0
  .include "ASMUT/ASMUT.asm"

.bank 1
  ;

.bank 2
  ;


; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
.ramsection "Main variables" slot 3

.ends

.bank 0
; -----------------------------------------------------------------------------
.section "Main" free
; -----------------------------------------------------------------------------
  SetupMain:

    call runASMUT

    ld a,FULL_SCROLL_BLANK_LEFT_COLUMN_KEEP_SPRITES_NO_RASTER_INT
    ld b,0
    call SetRegister

    ld a,ENABLE_DISPLAY_ENABLE_FRAME_INTERRUPTS_NORMAL_SPRITES
    ld b,1
    call SetRegister

    ei
    call AwaitFrameInterrupt

  Main:
    call AwaitFrameInterrupt

  jp Main
.ends
