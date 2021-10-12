RWZ2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     RWZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       RWZ2_DAC
	smpsHeaderFM        RWZ2_FM1,	$00, $08
	smpsHeaderFM        RWZ2_FM2,	$F4, $16
	smpsHeaderFM        RWZ2_FM3,	$F4, $16
	smpsHeaderFM        RWZ2_FM4,	$F4, $10
	smpsHeaderFM        RWZ2_FM5,	$F4, $10
	smpsHeaderPSG       RWZ2_PSG1,	$E8, $04, $00, $00
	smpsHeaderPSG       RWZ2_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       RWZ2_PSG3,	$00, $05, $00, $00

; PSG1 Data
RWZ2_PSG1:
	smpsJump            RWZ2_Jump03

; PSG2 Data
RWZ2_PSG2:
	dc.b	nRst, $04
	smpsAlterNote       $01
	smpsPSGAlterVol     $01
	smpsJump            RWZ2_Jump04

; PSG3 Data
RWZ2_PSG3:
	smpsJump            RWZ2_Jump04

; FM1 Data
RWZ2_FM1:
	smpsSetvoice        $00

RWZ2_Jump04:
	smpsPSGvoice        fTone_02

RWZ2_Loop07:
	dc.b	nG2, $04, nG3, nG2, nRst, nRst, $0C, nG3, $04, nG2, nG3, nG2
	dc.b	nRst, nG3, nRst, nG2, nG3
	smpsLoop            $01, $08, RWZ2_Loop07

RWZ2_Loop08:
	dc.b	nG2, $04, nG3, nG2, nRst, $0C, nG2, $04, nG3, nG2, nG3, nG2
	dc.b	nRst, nG3, nRst, nG2, nRst, nF2, nF3, nF2, nRst, $0C, nF2, $04
	dc.b	nF3, nF2, nF3, nF2, nRst, nF3, nRst, nF2, nRst, nC2, nC3, nC2
	dc.b	nRst, $0C, nC2, $04, nC3, nC2, nC3, nC2, nRst, nC3, nRst, nC2
	dc.b	nRst, nBb2, nBb3, nBb2, nRst, $0C, nBb2, $04, nBb3, nFs2, nFs3, nFs2
	dc.b	nRst, nFs3, nRst, nFs2, nRst
	smpsLoop            $01, $02, RWZ2_Loop08
	dc.b	nG2, $04, nG3, nG2, nRst, $0C, nG2, $04, nG3, nG2, nG3, nG2
	dc.b	nRst, nG3, nRst, nG2, nG3, nF2, nF3, nF2, nRst, $0C, nF2, $04
	dc.b	nF3, nF2, nF3, nF2, nRst, nF3, nRst, nF2, nRst, nE2, nE3, nE2
	dc.b	nRst, $0C, nE2, $04, nE3, nE2, nE3, nE2, nRst, nE3, nRst, nE2
	dc.b	nRst, nEb2, nEb2, nEb2, nRst, $0C, nEb2, $04, nEb2, nD2, nD2, nD2
	dc.b	nRst, nF2, nRst, nF2, nRst, nG2, nG3, nG2, nRst, $0C, nG2, $04
	dc.b	nG3, nG2, nG3, nG2, nRst, nG3, nRst, nG2, nG3, nF2, nF3, nF2
	dc.b	nRst, $0C, nF2, $04, nF3, nF2, nF3, nF2, nRst, nF3, nRst, nF2
	dc.b	nRst, nE2, nE3, nE2, nRst, $0C, nE2, $04, nE3, nE2, nE3, nE2
	dc.b	nRst, nE3, nRst, nE2, nRst, nEb2, nEb2, nEb2, nRst, $0C, nEb2, $04
	dc.b	nEb2, nF2, nF2, nF2, nRst, nF2, nRst, nF2, nRst
	smpsJump            RWZ2_Jump04

; FM2 Data
RWZ2_FM2:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $02, $01

RWZ2_Jump03:
	smpsPan             panLeft, $00

RWZ2_Loop04:
	dc.b	nG2, $20, smpsNoAttack, $20, nF2, smpsNoAttack, $20, nEb2, smpsNoAttack, $20, nF2, smpsNoAttack
	dc.b	$20
	smpsLoop            $01, $02, RWZ2_Loop04

RWZ2_Loop05:
	dc.b	nG2, $20, smpsNoAttack, $18, nF2, $20, smpsNoAttack, $20, nE2, smpsNoAttack, $20, smpsNoAttack
	dc.b	$08, nEb2, $18, nD2, $20, smpsNoAttack, $08
	smpsLoop            $01, $02, RWZ2_Loop05

RWZ2_Loop06:
	dc.b	nB2, $20, smpsNoAttack, $20, nA2, smpsNoAttack, $20, nC2, smpsNoAttack, $20, nBb1, nA1
	smpsLoop            $01, $02, RWZ2_Loop06
	smpsJump            RWZ2_Jump03

; FM4 Data
RWZ2_FM4:
	smpsSetvoice        $01
	smpsModSet          $03, $01, $03, $02
	dc.b	nG2, $20, smpsNoAttack, $20

RWZ2_Jump02:
	smpsModSet          $03, $01, $03, $02
	dc.b	nF2, $20, smpsNoAttack, $20, nEb2, smpsNoAttack, $20, nF2, smpsNoAttack, $20, nG2, smpsNoAttack
	dc.b	$20, nF2, smpsNoAttack, $20, nEb2, smpsNoAttack, $20, nF2, smpsNoAttack, $20
	smpsSetvoice        $02
	dc.b	nRst, $20, nB4, $08, nG4, nRst, nD5, $20, smpsNoAttack, $10, nC5, $08
	dc.b	nB4, nC5, $20, smpsNoAttack, $18, nG4, $08, nA4, nBb4, nA4, $02, nBb4
	dc.b	nA4, $04, nG4, $08, nB4, $02, nC5, $0E, nBb4, $10, nA4, $08
	dc.b	nRst, $20, nB4, $08, nG4, nRst, nD5, $20, smpsNoAttack, $10, nC5, $08
	dc.b	nB4, nC5, $20, smpsNoAttack, $18, nG4, $08, nA4, nBb4, nA4, $02, nBb4
	dc.b	nA4, $04, nG4, $08, nC5, $02, nD5, $0E, nC5, $10, nD5, $08
	smpsSetvoice        $03
	smpsModSet          $03, $01, $04, $03
	smpsAlterVol        $F6
	dc.b	nRst, $20, nD4, $08, nG4, nRst, nG4, $20, smpsNoAttack, $18, nA4, $08
	dc.b	nG4, nA4, nG4, $20, smpsNoAttack, $10, nA4, $02, nBb4, $06, smpsNoAttack, $08
	dc.b	nA4, nG4, nEb4, $10, nD4, $08, $10, nB4, $20, smpsNoAttack, $08, nC5
	dc.b	nD5, nB4, $20, smpsNoAttack, $10, nC5, $08, nD5, nG4, $20, smpsNoAttack, $20
	dc.b	nEb4, $10, nG4, $08, nBb4, nCs5, $02, nD5, $0E, nC5, $10, nD5
	dc.b	$08, nB4, $20, smpsNoAttack, $20
	smpsAlterVol        $0A
	smpsSetvoice        $01
	smpsJump            RWZ2_Jump02

; FM3 Data
RWZ2_FM3:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $02, $01

RWZ2_Jump01:
	smpsPan             panRight, $00

RWZ2_Loop01:
	dc.b	nB2, $20, smpsNoAttack, $20, nC3, smpsNoAttack, $20, nBb2, smpsNoAttack, $20, nC3, smpsNoAttack
	dc.b	$20
	smpsLoop            $01, $02, RWZ2_Loop01
	smpsPan             panCenter, $00

RWZ2_Loop02:
	dc.b	nB2, $20, smpsNoAttack, $18, nC3, $20, smpsNoAttack, $20, nC2, smpsNoAttack, $20, smpsNoAttack
	dc.b	$08, nBb2, $18, nA2, $20, smpsNoAttack, $08
	smpsLoop            $01, $02, RWZ2_Loop02

RWZ2_Loop03:
	dc.b	nD2, $20, smpsNoAttack, $20, nC2, smpsNoAttack, $20, nE2, smpsNoAttack, $20, nEb2, nD2
	smpsLoop            $01, $02, RWZ2_Loop03
	smpsJump            RWZ2_Jump01

; FM5 Data
RWZ2_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsAlterNote       $03
	smpsModSet          $03, $01, $03, $02

RWZ2_Jump00:
	smpsModSet          $03, $01, $03, $02
	dc.b	nB2, $20, smpsNoAttack, $20, nC3, $20, smpsNoAttack, $20, nBb2, smpsNoAttack, $20, nC3
	dc.b	smpsNoAttack, $20, nB2, smpsNoAttack, $20, nC3, smpsNoAttack, $20, nBb2, smpsNoAttack, $20, nC3
	dc.b	smpsNoAttack, $20
	smpsSetvoice        $02
	dc.b	nRst, $10, nRst, $20, nB4, $08, nG4, nRst, nD5, $20, smpsNoAttack, $10
	dc.b	nC5, $08, nB4, nC5, $20, smpsNoAttack, $18, nG4, $08, nA4, nBb4, nA4
	dc.b	$02, nBb4, nA4, $04, nG4, $08, nB4, $02, nC5, $0E, nBb4, $10
	dc.b	nA4, $08, nRst, $20, nB4, $08, nG4, nRst, nD5, $20, smpsNoAttack, $10
	dc.b	nC5, $08, nB4, nC5, $20, smpsNoAttack, $18, nG4, $08, nA4, nBb4, nA4
	dc.b	$02, nBb4, nA4, $04, nG4, $08, nC5, $02, nD5, $0E, nC5, $08
	smpsAlterVol        $FB
	smpsAlterNote       $00
	dc.b	nB4, $20
	smpsAlterVol        $05
	smpsAlterNote       $03
	smpsSetvoice        $03
	smpsModSet          $03, $01, $04, $03
	smpsAlterVol        $F6
	dc.b	nRst, $10, nD4, $08, nG4, nRst, nG4, $20, smpsNoAttack, $18, nA4, $08
	dc.b	nG4, nA4, nG4, $20, smpsNoAttack, $10, nA4, $02, nBb4, $06, smpsNoAttack, $08
	dc.b	nA4, nG4, nEb4, $10, nD4, $08, $10, nB4, $20, smpsNoAttack, $08, nC5
	dc.b	nD5, nB4, $20, smpsNoAttack, $10, nC5, $08, nD5, nG4, $20, smpsNoAttack, $20
	dc.b	nEb4, $10, nG4, $08, nBb4, nCs5, $02, nD5, $0E, nC5, $08
	smpsAlterVol        $0A
	smpsSetvoice        $01
	smpsJump            RWZ2_Jump00

; DAC Data
RWZ2_DAC:
	dc.b	dKick, $10, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3
	dc.b	$08, dKick, $0C, $04, $08, dSnareS3, $10
	smpsLoop            $01, $03, RWZ2_DAC
	dc.b	dKick, $10, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3
	dc.b	$08, dKick, $0C, $04, $08, dSnareS3, dSnareS3, $04, dSnareS3

RWZ2_Loop00:
	dc.b	dKick, $10, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3
	dc.b	$08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick, $0C
	dc.b	$04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3
	dc.b	$10
	smpsLoop            $01, $02, RWZ2_Loop00
	dc.b	dKick, $10, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3
	dc.b	$08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick, $0C
	dc.b	$04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3
	dc.b	dClap, dKick, $10, dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick
	dc.b	dSnareS3, $08, dKick, $0C, $04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick
	dc.b	$0C, $04, $08, dSnareS3, $10, dKick, dSnareS3, $08, dKick, $10, dSnareS3, $02
	dc.b	nRst, $0E, dKick, $08
	smpsJump            RWZ2_DAC

RWZ2_Voices:
;	Voice $00
;	$30
;	$36, $35, $30, $31, 	$DF, $DF, $DF, $DF, 	$04, $0A, $0A, $07
;	$07, $06, $06, $02, 	$20, $10, $10, $F8, 	$11, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0A, $0A, $04
	smpsVcDecayRate2    $02, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $11

;	Voice $01
;	$2D
;	$04, $04, $04, $04, 	$1F, $1F, $1F, $1F, 	$05, $05, $05, $05
;	$04, $04, $04, $04, 	$28, $1A, $1A, $1A, 	$10, $0A, $0A, $0A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $05
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $08
	smpsVcTotalLevel    $0A, $0A, $0A, $10

;	Voice $02
;	$2D
;	$02, $02, $02, $02, 	$1F, $1F, $1F, $1F, 	$07, $06, $06, $06
;	$01, $07, $07, $07, 	$28, $1A, $1A, $1A, 	$11, $0A, $0A, $0A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $07
	smpsVcDecayRate2    $07, $07, $07, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $08
	smpsVcTotalLevel    $0A, $0A, $0A, $11

;	Voice $03
;	$04
;	$32, $52, $44, $72, 	$0F, $0F, $0F, $0F, 	$05, $07, $07, $07
;	$07, $07, $07, $07, 	$1F, $1F, $1F, $1F, 	$2A, $31, $1E, $02
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $04, $05, $03
	smpsVcCoarseFreq    $02, $04, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $07, $05
	smpsVcDecayRate2    $07, $07, $07, $07
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $02, $1E, $31, $2A

