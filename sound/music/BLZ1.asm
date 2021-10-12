BLZ1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     BLZ1_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       BLZ1_DAC
	smpsHeaderFM        BLZ1_FM1,	$00, $00
	smpsHeaderFM        BLZ1_FM2,	$F4, $0B
	smpsHeaderFM        BLZ1_FM3,	$F4, $12
	smpsHeaderFM        BLZ1_FM4,	$F4, $12
	smpsHeaderFM        BLZ1_FM5,	$00, $12
	smpsHeaderFM        BLZ1_FM6,	$00, $12
	smpsHeaderPSG       BLZ1_PSG1,	$E8, $04, $00, $00
	smpsHeaderPSG       BLZ1_PSG2,	$E8, $06, $00, $00
	smpsHeaderPSG       BLZ1_PSG3,	$03, $01, $00, $00

; FM2 Data
BLZ1_FM2:
	smpsSetvoice        $09
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst

BLZ1_Loop13:
	dc.b	nE3, $14, nE4, $30, smpsNoAttack, $1C
	smpsLoop            $00, $02, BLZ1_Loop13
	dc.b	nD3, $14, nD4, $30, smpsNoAttack, $1C
	smpsSetvoice        $00
	dc.b	nD3, $14, nD4, $18, nD3, $04, nD3, $0C, nD4, $06, nRst, nEb3
	dc.b	$0C, nEb4, $06, nRst

BLZ1_Loop14:
	smpsCall            BLZ1_Call13
	dc.b	nE4, $0C
	smpsCall            BLZ1_Call13
	dc.b	nE4, $08, nE3, $04
	smpsCall            BLZ1_Call14
	dc.b	nG4, nRst, $0C, nG4, $06, nRst, nG4, $08, nA4, $04, nD4, $0C
	smpsCall            BLZ1_Call14
	dc.b	nG4, $04, nD3, $0C, nD4, $06, nRst, nEb3, $0C, nEb4, $06, nRst
	smpsLoop            $00, $03, BLZ1_Loop14
	smpsCall            BLZ1_Call13
	dc.b	nE4, $0C
	smpsCall            BLZ1_Call13
	dc.b	nE4, $08, nE3, $04
	smpsCall            BLZ1_Call14
	dc.b	nG4, nRst, $0C, nG4, $06, nRst, nG4, $08, nA4, $04, nD4, $0C
	smpsCall            BLZ1_Call15
	smpsAlterVol        $FE

BLZ1_Loop16:
	smpsCall            BLZ1_Call16
	dc.b	nAb3, $04, nRst, $08
	smpsCall            BLZ1_Call16
	dc.b	nAb3, $08, nG3, $04
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call16
	smpsAlterPitch      $02
	dc.b	nFs3, $04, nRst, $08
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call16
	smpsAlterPitch      $02
	dc.b	nFs3, $08, nF3, $04
	smpsAlterPitch      $FC
	smpsCall            BLZ1_Call16
	smpsAlterPitch      $04
	dc.b	nE3, nRst, $08
	smpsAlterPitch      $FC
	smpsCall            BLZ1_Call16
	smpsAlterPitch      $04
	dc.b	nE3, nRst, nEb3

BLZ1_Loop15:
	smpsCall            BLZ1_Call15
	smpsLoop            $00, $02, BLZ1_Loop15
	smpsLoop            $01, $02, BLZ1_Loop16
	smpsAlterVol        $02

BLZ1_Loop17:
	smpsCall            BLZ1_Call13
	dc.b	nE4, $0C
	smpsCall            BLZ1_Call13
	dc.b	nE4, $08, nE3, $04
	smpsCall            BLZ1_Call14
	dc.b	nG4, nRst, $0C, nG4, $06, nRst, nG4, $08, nA4, $04, nD4, $0C
	smpsCall            BLZ1_Call14
	dc.b	nG4, $04, nD3, $0C, nD4, $06, nRst, nEb3, $0C, nEb4, $06, nRst
	smpsLoop            $01, $02, BLZ1_Loop17
	smpsJump            BLZ1_Loop14

BLZ1_Call13:
	dc.b	nE3, $08, nE4, nRst, nE4, $10, nRst, $04, nA4, nRst, $0C, nA4
	dc.b	$06, nRst, nA4, $08, nB4, $04
	smpsReturn

BLZ1_Call14:
	dc.b	nD3, $08, nD4, nRst, nD4, $10, nRst, $04
	smpsReturn

BLZ1_Call15:
	dc.b	nD3, $0C, nD4, $06, nRst, nE3, $0C, nE4, $06, nRst, nF3, $0C
	dc.b	nF4, $06, nRst, nG3, $0C, nG4, $06, nRst
	smpsReturn

BLZ1_Call16:
	dc.b	nAb3, $08, nAb4, $04, nAb3, nRst, $08, nEb4, $04, nRst, $14, nEb4
	dc.b	$04, nRst, $10, nEb4, $04, nRst, $08, nEb4, $04
	smpsReturn

; FM3 Data
BLZ1_FM3:
	smpsAlterVol        $FC

BLZ1_Loop0E:
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0C
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop0E
	dc.b	nRst, $0C
	smpsAlterVol        $EC

BLZ1_Loop0F:
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0C
	smpsAlterPitch      $02
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop0F
	dc.b	nRst, $0C
	smpsAlterVol        $EC
	smpsLoop            $01, $02, BLZ1_Loop0E
	smpsAlterVol        $04

BLZ1_Jump04:
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0D
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0F
	smpsSetvoice        $02
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0E
	smpsAlterPitch      $02
	smpsSetvoice        $03
	smpsCall            BLZ1_Call10
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nAb5, $04, nRst, nA5, nB5, nRst, nE6, $30, smpsNoAttack, $1C
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsCall            BLZ1_Call11
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0D
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0F
	smpsSetvoice        $02
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0E
	smpsAlterPitch      $02
	smpsSetvoice        $03
	smpsCall            BLZ1_Call10
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nD5, $04, nRst, nE5, nFs5, nRst, nG5, nFs5, nRst, nE5, nD5, nRst
	dc.b	nB4, $0C, nRst, $28
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsCall            BLZ1_Call11
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C

BLZ1_Loop10:
	smpsSetvoice        $04
	smpsModSet          $16, $02, $05, $03
	dc.b	nG4, $23, nRst, $01, nAb4, $23, nRst, $01, nBb4, $17, nRst, $01
	dc.b	nG4, $23, nRst, $01, nAb4, $17, nRst, $01, nBb4, $13, nRst, $01
	dc.b	nEb4, $0F, nRst, $01, nCs5, $23, nRst, $01, nC5, $23, nRst, $01
	dc.b	nBb4, $18, smpsNoAttack, $30, smpsNoAttack, $1F, nRst, $01, nEb4, $0F, nRst, $01
	dc.b	nEb5, $30, smpsNoAttack, $30, smpsNoAttack, $17, nRst, $01, nCs5, $17, nRst, $01
	dc.b	nBb4, $17, nRst, $01, nFs4, $17, nRst, $01, nE4, $23, nRst, $01
	dc.b	nB4, $30, smpsNoAttack, $0C
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsAlterPitch      $0C
	smpsCall            BLZ1_Call12
	smpsAlterPitch      $F4
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $00, $00
	smpsLoop            $00, $02, BLZ1_Loop10
	smpsAlterPitch      $F4
	smpsSetvoice        $02

BLZ1_Loop11:
	smpsCall            BLZ1_Call0C
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop11
	smpsAlterVol        $EC
	dc.b	nRst, $0C
	smpsAlterPitch      $FE

BLZ1_Loop12:
	smpsCall            BLZ1_Call0C
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop12
	smpsAlterPitch      $02
	dc.b	nRst, $0C
	smpsAlterVol        $EC
	smpsLoop            $01, $02, BLZ1_Loop11
	smpsJump            BLZ1_Jump04

BLZ1_Call0C:
	dc.b	nRst, $08, nB4, $04, nE5, $08, nB5, $04, nE5, $0C
	smpsReturn

BLZ1_Call0D:
	smpsAlterVol        $FC
	dc.b	nRst, $0C, nAb5, $04, nRst, nAb5, nA5, nRst, nAb5, nRst, $0C, nE5
	dc.b	$04, nRst, nE5, nEb5, nRst, nE5, nRst, $14
	smpsAlterVol        $04
	smpsReturn

BLZ1_Call0E:
	smpsAlterVol        $09
	dc.b	nE3, $04, nB3, nE3, nB3
	smpsAlterVol        $FD
	dc.b	nE4, nB3, nE4
	smpsAlterVol        $FD
	dc.b	nB4, nE4, nB4
	smpsAlterVol        $FD
	dc.b	nE5, nB4, nE5
	smpsAlterVol        $FD

BLZ1_Loop26:
	dc.b	nE6, nB5, nE5
	smpsAlterVol        $06
	smpsLoop            $00, $04, BLZ1_Loop26
	smpsAlterVol        $EB
	smpsReturn

BLZ1_Call0F:
	smpsAlterVol        $FC
	dc.b	nD5, nRst, $08, nCs5, $04, nRst, nB4, nD5, nRst, $08, nCs5, $04
	dc.b	nRst, nB4, nD5, nRst, nE5, nRst, $08, nE5, $0C, nFs5, $02, nE5
	dc.b	nD5, $04, nRst
	smpsAlterVol        $04
	smpsReturn

BLZ1_Call10:
	smpsAlterVol        $FC
	dc.b	nRst, $0C, nB5, $04, nRst, nAb5, nFs5, nRst, nE5, nRst, $0C, nEb5
	dc.b	$04, nRst, nE5, nEb5, nRst, nB4, nRst, $14
	smpsAlterVol        $04
	smpsReturn

BLZ1_Call11:
	smpsAlterPitch      $F4
	dc.b	nD6, $04, nRst, $08, nRst, nE6, $04, nRst, $08, nRst, $10
	smpsNoteFill        $03
	dc.b	nG6, $04, nE6, nG6
	smpsAlterVol        $FE
	dc.b	nA6, nG6, nA6
	smpsAlterVol        $FE
	dc.b	nB6, nA6, nB6
	smpsAlterVol        $FE
	dc.b	nD7, nB6, nD7
	smpsAlterVol        $06
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsReturn

BLZ1_Call12:
	dc.b	nA3, $04, nRst, $0F
	smpsAlterVol        $0E
	dc.b	nA3, $04, nRst, $01
	smpsAlterVol        $F2
	dc.b	nB3, $04, nRst, $0F
	smpsAlterVol        $0E
	dc.b	nB3, $04, nRst, $01
	smpsAlterVol        $F2
	dc.b	nC4, $04, nRst, $0F
	smpsAlterVol        $0E
	dc.b	nC4, $04, nRst, $01
	smpsAlterVol        $F2
	dc.b	nD4, $04, nRst, $0F
	smpsAlterVol        $0E
	dc.b	nD4, $04, nRst, $01
	smpsAlterVol        $F2
	smpsReturn

; FM4 Data
BLZ1_FM4:
	smpsAlterVol        $FC
	dc.b	nRst, $0F
	smpsPan             panLeft, $00
	smpsAlterVol        $0C

BLZ1_Loop09:
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0C
	smpsLoop            $00, $05, BLZ1_Loop09
	dc.b	nRst, $0C

BLZ1_Loop0A:
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0C
	smpsAlterPitch      $02
	smpsLoop            $00, $05, BLZ1_Loop0A
	dc.b	nRst, $0C
	smpsLoop            $01, $02, BLZ1_Loop09
	smpsAlterVol        $04

BLZ1_Jump03:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0D
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0F
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0E
	smpsAlterPitch      $02
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call10
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nAb5, nRst, nA5, nB5, nRst, nE6, $30, smpsNoAttack, $1C
	smpsAlterVol        $04
	smpsPan             panRight, $00
	smpsSetvoice        $05
	smpsCall            BLZ1_Call11
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0D
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call0F
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0E
	smpsAlterPitch      $02
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsCall            BLZ1_Call10
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsCall            BLZ1_Call0E
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nD5, $04, nRst, nE5, nFs5, nRst, nG5, nFs5, nRst, nE5, nD5, nRst
	dc.b	nB4, $0C, nRst, $28
	smpsAlterVol        $04
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsSetvoice        $05
	dc.b	nD6, $04, nRst, $08, nRst, nE6, $04, nRst, $08, nRst, $10
	smpsNoteFill        $03
	dc.b	nG6, $04, nE6, nG6, nA6, nG6, nA6, nB6
	smpsNoteFill        $00
	dc.b	nA6, $05
	smpsAlterVol        $F4
	smpsAlterPitch      $0C
	smpsAlterPitch      $0C

BLZ1_Loop0B:
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	dc.b	nEb3, $23, nRst, $01, nF3, $23, nRst, $01, nG3, $17, nRst, $01
	dc.b	nEb3, $23, nRst, $01, nF3, $17, nRst, $01, nG3, $13, nRst, $01
	dc.b	nBb2, $0F, nRst, $01, nBb3, $23, nRst, $01, nAb3, $23, nRst, $01
	dc.b	nFs3, $18, smpsNoAttack, $30, smpsNoAttack, $1F, nRst, $01, nFs3, $0F, nRst, $01
	dc.b	nFs4, $30, smpsNoAttack, $30, smpsNoAttack, $17, nRst, $01, nFs4, $17, nRst, $01
	dc.b	nEb4, $17, nRst, $01, nB3, $17, nRst, $01, nA3, $23, nRst, $01
	dc.b	nE4, $30, smpsNoAttack, $0C
	smpsPan             panRight, $00
	smpsSetvoice        $05
	smpsAlterPitch      $0C
	smpsAlterPitch      $FD
	smpsCall            BLZ1_Call12
	smpsAlterPitch      $03
	smpsAlterPitch      $F4
	smpsLoop            $00, $02, BLZ1_Loop0B
	smpsAlterVol        $0C
	dc.b	nRst, $0F
	smpsAlterPitch      $F4
	smpsSetvoice        $02

BLZ1_Loop0C:
	smpsPan             panLeft, $00
	smpsCall            BLZ1_Call0C
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop0C
	dc.b	nRst, $0C
	smpsAlterVol        $EC
	smpsAlterPitch      $FE
	smpsPan             panRight, $00

BLZ1_Loop0D:
	smpsCall            BLZ1_Call0C
	smpsAlterVol        $04
	smpsLoop            $00, $05, BLZ1_Loop0D
	smpsAlterPitch      $02
	dc.b	nRst, $0C
	smpsAlterVol        $EC
	smpsLoop            $01, $02, BLZ1_Loop0C
	smpsJump            BLZ1_Jump03

; FM5 Data
BLZ1_FM5:
	smpsSetvoice        $08
	dc.b	nRst, $30
	smpsCall            BLZ1_Call05
	smpsCall            BLZ1_Call06
	smpsCall            BLZ1_Call07
	dc.b	nRst, $30, nRst, $30
	smpsCall            BLZ1_Call05
	dc.b	nRst, $18
	smpsCall            BLZ1_Call06
	smpsCall            BLZ1_Call07
	dc.b	nRst, $18
	smpsSetvoice        $01

BLZ1_Jump02:
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $08, nB3, $04, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $FB
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $10, nE4, $04
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $04, nB3, nE4, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $08, nB3, $04, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $FB
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $10, nE4, $04
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $04, nB3, nE4, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $FB
	smpsAlterVol        $04
	smpsSetvoice        $06
	smpsCall            BLZ1_Call0A
	smpsPan             panLeft, $00

BLZ1_Loop07:
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $04
	smpsSetvoice        $07
	dc.b	nRst, $08, nE4, $04, nRst, $0C, nE4, $04, nRst, $14, nE4, $04
	dc.b	nRst, $0E, nE4, $04, nRst, $0E, nE4, $04, nRst, $08
	smpsSetvoice        $06
	smpsCall            BLZ1_Call0A
	smpsLoop            $00, $02, BLZ1_Loop07
	smpsAlterVol        $FC
	smpsPan             panCenter, $00
	smpsSetvoice        $01

BLZ1_Loop08:
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $05
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $FB
	smpsLoop            $00, $02, BLZ1_Loop08
	smpsJump            BLZ1_Jump02

BLZ1_Call05:
	smpsModSet          $01, $01, $E5, $EC
	dc.b	nC1, $08
	smpsModSet          $01, $01, $66, $20
	dc.b	smpsNoAttack, nC0, $0B
	smpsModSet          $01, $01, $75, $10
	dc.b	nCs0, $08
	smpsModSet          $01, $01, $E5, $EC
	dc.b	nEb0, $06
	smpsModSet          $01, $01, $75, $10
	dc.b	nA0, $04
	smpsModSet          $01, $01, $E5, $EC
	dc.b	smpsNoAttack, nAb0, $05
	smpsModSet          $01, $01, $75, $10
	dc.b	nFs1, $06
	smpsModSet          $01, $01, $75, $63

BLZ1_Loop25:
	dc.b	nB1, $06
	smpsAlterVol        $04
	smpsLoop            $00, $10, BLZ1_Loop25
	smpsAlterVol        $C0
	smpsModSet          $01, $01, $00, $00
	smpsReturn

BLZ1_Call06:
	smpsModSet          $01, $01, $75, $63

BLZ1_Loop24:
	dc.b	nD3, $04
	smpsAlterPitch      $01
	smpsAlterVol        $06
	smpsLoop            $00, $0B, BLZ1_Loop24
	dc.b	nRst, $04
	smpsAlterVol        $BE
	smpsAlterPitch      $F5
	smpsModSet          $01, $01, $00, $00
	smpsReturn

BLZ1_Call07:
	smpsModSet          $01, $01, $75, $63

BLZ1_Loop23:
	dc.b	nF2, $06
	smpsAlterPitch      $01
	smpsAlterVol        $04
	smpsLoop            $00, $0F, BLZ1_Loop23
	dc.b	nRst, $06
	smpsAlterPitch      $F1
	smpsAlterVol        $C4
	smpsModSet          $01, $01, $00, $00
	smpsReturn

BLZ1_Call08:
	dc.b	nAb4, $04, nRst, $07
	smpsPan             panRight, $00
	smpsAlterVol        $0A
	dc.b	nAb4, $04, nRst, $05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $04, nRst, $07
	smpsPan             panRight, $00
	smpsAlterVol        $0A
	dc.b	nAb4, $04, nRst, $01
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $04, nRst, $07
	smpsPan             panRight, $00
	smpsAlterVol        $0A
	dc.b	nAb4, $04, nRst, $05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $04, nRst, $07
	smpsPan             panRight, $00
	smpsAlterVol        $0A
	dc.b	nAb4, $04, nRst, $01
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsReturn

BLZ1_Call09:
	dc.b	nRst, $07
	smpsPan             panRight, $00
	smpsAlterVol        $0A
	dc.b	nAb4, $04, nRst, $09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	smpsReturn

BLZ1_Call0A:
	dc.b	nA3, $12, nRst, $06, nB3, $12, nRst, $06, nC4, $12, nRst, $06
	dc.b	nD4, $12, nRst, $06
	smpsReturn

BLZ1_Call0B:
	smpsModSet          $36, $02, $04, $03
	dc.b	nBb4, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $18, nRst, $08
	smpsAlterVol        $FE
	dc.b	nA4, $10
	smpsAlterVol        $02
	smpsModSet          $01, $01, $00, $00
	smpsReturn

; FM6 Data
BLZ1_FM6:
	smpsPan             panRight, $00
	smpsSetvoice        $08
	dc.b	nRst, $07
	smpsAlterPitch      $08
	smpsAlterVol        $0A
	dc.b	nRst, $30
	smpsCall            BLZ1_Call05
	smpsCall            BLZ1_Call06
	smpsCall            BLZ1_Call07
	dc.b	nRst, $30, nRst, $30
	smpsCall            BLZ1_Call05
	smpsCall            BLZ1_Call06
	dc.b	nRst, $18
	smpsCall            BLZ1_Call07
	dc.b	nRst, $11
	smpsAlterPitch      $F8
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	smpsSetvoice        $01

BLZ1_Jump01:
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $05
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $08, nB3, $04, nRst, nB3
	smpsAlterVol        $04
	smpsAlterPitch      $FE
	smpsSetvoice        $01
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $02
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $10, nE4, $04
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $02
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $05
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $04, nB3, nE4, nRst, nB3
	smpsAlterVol        $04
	smpsAlterPitch      $FE
	smpsSetvoice        $01
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $02
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $05
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $08, nB3, $04, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $02
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $10, nE4, $04
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $02
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsAlterPitch      $05
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nRst, $04, nB3, nE4, nRst, nB3
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $02
	smpsAlterVol        $04
	smpsSetvoice        $06
	smpsAlterPitch      $FD
	smpsCall            BLZ1_Call0A
	smpsPan             panRight, $00
	smpsAlterPitch      $03

BLZ1_Loop05:
	smpsAlterPitch      $F9
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call0B
	smpsAlterPitch      $04
	smpsSetvoice        $07
	smpsAlterPitch      $07
	dc.b	nRst, $08, nA3, $04, nRst, $0C, nA3, $04, nRst, $14, nA3, $04
	dc.b	nRst, $0E, nA3, $04, nRst, $0E, nA3, $04, nRst, $08
	smpsAlterPitch      $FD
	smpsSetvoice        $06
	smpsCall            BLZ1_Call0A
	smpsAlterPitch      $03
	smpsLoop            $00, $02, BLZ1_Loop05
	smpsAlterVol        $FC
	smpsPan             panCenter, $00
	smpsSetvoice        $01

BLZ1_Loop06:
	smpsAlterPitch      $FB
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $05
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsCall            BLZ1_Call08
	smpsCall            BLZ1_Call09
	smpsAlterPitch      $02
	smpsLoop            $00, $02, BLZ1_Loop06
	smpsJump            BLZ1_Jump01

; PSG1 Data
BLZ1_PSG1:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst

BLZ1_Jump06:
	smpsPSGvoice        fTone_07
	dc.b	nRst, $30, nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $2C
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call1B
	smpsAlterPitch      $02
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $30
	smpsAlterPitch      $F4
	smpsCall            BLZ1_Call1C
	smpsNoteFill        $03

BLZ1_Loop20:
	smpsPSGAlterVol     $02
	dc.b	nD7, $04, nB6, nD7
	smpsLoop            $00, $04, BLZ1_Loop20
	smpsPSGAlterVol     $F8
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $2C
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call1B
	smpsAlterPitch      $02
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $30
	smpsAlterPitch      $F4
	smpsCall            BLZ1_Call1C
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $02

BLZ1_Loop21:
	dc.b	nG5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nFs5, $30
	dc.b	smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nEb5, $30, smpsNoAttack, $30
	dc.b	smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nE5, $30, smpsNoAttack, $2F, nRst, $01
	dc.b	nA4, $06, nRst, $12, nB4, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12
	smpsLoop            $00, $02, BLZ1_Loop21
	smpsPSGAlterVol     $FE

BLZ1_Loop22:
	dc.b	nRst, $30, nRst
	smpsLoop            $01, $08, BLZ1_Loop22
	smpsJump            BLZ1_Jump06

BLZ1_Call1B:
	smpsPSGAlterVol     $04
	dc.b	nE3, $04, nB3, nE3, nB3, nE4, nB3, nE4, nB4, nE4, nB4, nE5
	dc.b	nB4, nE5
	smpsAlterPitch      $0C
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	dc.b	nE6, nB5, nE5
	smpsPSGAlterVol     $01
	smpsPSGAlterVol     $F4
	smpsAlterPitch      $F4
	smpsReturn

BLZ1_Call1C:
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $03
	dc.b	nD6, $04, nRst, $08, nRst, nE6, $04, nRst, $08, nRst, $10
	smpsNoteFill        $03
	dc.b	nG6, $04, nE6, nG6
	smpsPSGAlterVol     $FF
	dc.b	nA6, nG6, nA6
	smpsPSGAlterVol     $FF
	dc.b	nB6, nA6, nB6
	smpsPSGAlterVol     $FF
	dc.b	nD7, nB6, nD7
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsReturn

; PSG2 Data
BLZ1_PSG2:
	dc.b	nRst, $0F, nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst

BLZ1_Jump05:
	smpsPSGvoice        fTone_07
	dc.b	nRst, $30, nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $2C
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call1B
	smpsAlterPitch      $02
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $30
	smpsAlterPitch      $F4
	smpsCall            BLZ1_Call1C
	smpsNoteFill        $03

BLZ1_Loop1D:
	smpsPSGAlterVol     $02
	dc.b	nD7, $04, nB6, nD7
	smpsLoop            $00, $04, BLZ1_Loop1D
	smpsPSGAlterVol     $F8
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $2C
	smpsAlterPitch      $FE
	smpsCall            BLZ1_Call1B
	smpsAlterPitch      $02
	dc.b	nRst, $2C
	smpsCall            BLZ1_Call1B
	dc.b	nRst, $30
	smpsAlterPitch      $F4
	smpsCall            BLZ1_Call1C
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $02

BLZ1_Loop1E:
	smpsModSet          $06, $01, $01, $05
	dc.b	nG5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nFs5, $30
	dc.b	smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nEb5, $30, smpsNoAttack, $30
	dc.b	smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01, nE5, $30, smpsNoAttack, $2F, nRst, $01
	dc.b	nA4, $06, nRst, $12, nB4, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nD5, $06, nRst, $12
	smpsLoop            $00, $02, BLZ1_Loop1E
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $FE

BLZ1_Loop1F:
	dc.b	nRst, $30, nRst
	smpsLoop            $00, $08, BLZ1_Loop1F
	smpsJump            BLZ1_Jump05

; PSG3 Data
BLZ1_PSG3:
; DAC Data
BLZ1_DAC:
	smpsStop

; FM1 Data
BLZ1_FM1:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, $14, nG1, $04, $0C, $08, $04

BLZ1_Loop00:
	smpsCall            BLZ1_Call00
	smpsLoop            $00, $07, BLZ1_Loop00
	smpsCall            BLZ1_Call01

BLZ1_Loop01:
	smpsCall            BLZ1_Call00
	smpsLoop            $00, $07, BLZ1_Loop01
	smpsCall            BLZ1_Call02

BLZ1_Loop02:
	smpsCall            BLZ1_Call00
	smpsCall            BLZ1_Call03
	smpsLoop            $00, $03, BLZ1_Loop02
	smpsCall            BLZ1_Call00
	smpsCall            BLZ1_Call01

BLZ1_Loop03:
	smpsCall            BLZ1_Call00
	smpsCall            BLZ1_Call03
	smpsLoop            $00, $03, BLZ1_Loop03
	smpsCall            BLZ1_Call00
	smpsCall            BLZ1_Call04

BLZ1_Loop04:
	smpsCall            BLZ1_Call00
	smpsLoop            $00, $07, BLZ1_Loop04
	smpsCall            BLZ1_Call01
	smpsJump            BLZ1_Loop00

BLZ1_Call00:
	dc.b	nRst, $18, nG1, $14, nD0, $0C, nG1, nD0, $04, nG1, $18
	smpsReturn

BLZ1_Call01:
	dc.b	nRst, $0C, nG1, $14, $10, $0C, $08, $04, nRst, $08, nG1, $04
	dc.b	$0C
	smpsReturn

BLZ1_Call02:
	dc.b	nRst, $0C, nG1, $14, $10, $0C, $08, $04, nG1, nG1, nG1, nG1
	dc.b	nG1, nG1
	smpsReturn

BLZ1_Call03:
	dc.b	nRst, $18, nG1, $14, nD0, $0C, nG1, nD0, $04, nRst, $08, nG1
	dc.b	$10
	smpsReturn

BLZ1_Call04:
	dc.b	nRst, $18, nG1, $14, $04, $08, $04, nRst, $08, nG1, $04, nRst
	dc.b	$08, nG1, $04, $08, $04
	smpsReturn

BLZ1_Voices:
;	Voice $00
;	$3B
;	$10, $10, $20, $60, 	$1F, $1F, $1F, $1E, 	$02, $0C, $13, $07
;	$12, $0A, $05, $04, 	$0F, $3F, $5F, $3F, 	$20, $18, $24, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $04, $05, $0A, $12
	smpsVcDecayLevel    $03, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $24, $18, $20

;	Voice $01
;	$3E
;	$01, $01, $01, $00, 	$1F, $5C, $19, $19, 	$13, $0C, $0C, $19
;	$00, $00, $00, $00, 	$FE, $FE, $FE, $FE, 	$20, $84, $84, $84
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $01, $01, $01
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $19, $19, $1C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $19, $0C, $0C, $13
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0E, $0E, $0E, $0E
	smpsVcTotalLevel    $04, $04, $04, $20

;	Voice $02
;	$34
;	$0C, $02, $03, $02, 	$1B, $1B, $2F, $2F, 	$0F, $0F, $0F, $0F
;	$02, $02, $02, $02, 	$0A, $FA, $0A, $FA, 	$30, $84, $30, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $03, $02, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $2F, $2F, $1B, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $04, $30, $04, $30

;	Voice $03
;	$3B
;	$04, $31, $04, $02, 	$13, $0F, $2F, $4F, 	$06, $12, $10, $12
;	$03, $03, $00, $03, 	$0A, $5A, $49, $29, 	$00, $30, $27, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $02, $04, $01, $04
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $2F, $0F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $10, $12, $06
	smpsVcDecayRate2    $03, $00, $03, $03
	smpsVcDecayLevel    $02, $04, $05, $00
	smpsVcReleaseRate   $09, $09, $0A, $0A
	smpsVcTotalLevel    $00, $27, $30, $00

;	Voice $04
;	$3C
;	$71, $32, $31, $71, 	$4A, $4A, $5B, $51, 	$02, $02, $03, $07
;	$00, $03, $00, $03, 	$57, $39, $57, $39, 	$18, $85, $25, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $11, $1B, $0A, $0A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $02, $02
	smpsVcDecayRate2    $03, $00, $03, $00
	smpsVcDecayLevel    $03, $05, $03, $05
	smpsVcReleaseRate   $09, $07, $09, $07
	smpsVcTotalLevel    $00, $25, $05, $18

;	Voice $05
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$40, $08, $08, $09, 	$1C, $45, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $12, $0E, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $09, $08, $08, $00
	smpsVcTotalLevel    $00, $30, $45, $1C

;	Voice $06
;	$3D
;	$01, $01, $02, $01, 	$4C, $17, $50, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $89, $8E, $89
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $19, $10, $17, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $05, $0B
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $09, $0E, $09, $1D

;	Voice $07
;	$3D
;	$01, $01, $02, $01, 	$5C, $17, $57, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $89, $8E, $89
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $19, $17, $17, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $05, $0B
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $09, $0E, $09, $1D

;	Voice $08
;	$04
;	$30, $74, $70, $64, 	$00, $11, $1F, $11, 	$00, $06, $00, $06
;	$00, $03, $00, $03, 	$0B, $1E, $0E, $1E, 	$25, $80, $25, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $07, $07, $03
	smpsVcCoarseFreq    $04, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $11, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $00, $06, $00
	smpsVcDecayRate2    $03, $00, $03, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0E, $0E, $0E, $0B
	smpsVcTotalLevel    $00, $25, $00, $25

;	Voice $09
;	$3B
;	$10, $10, $20, $60, 	$1F, $1F, $1F, $1E, 	$02, $0C, $03, $00
;	$12, $0A, $00, $00, 	$0F, $3F, $0F, $3F, 	$20, $18, $24, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $03, $0C, $02
	smpsVcDecayRate2    $00, $00, $0A, $12
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $24, $18, $20

