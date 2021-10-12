DEZ1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     DEZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       DEZ1_DAC
	smpsHeaderFM        DEZ1_FM1,	$F4, $11
	smpsHeaderFM        DEZ1_FM2,	$F4, $0B
	smpsHeaderFM        DEZ1_FM3,	$F4, $0E
	smpsHeaderFM        DEZ1_FM4,	$F4, $0E
	smpsHeaderFM        DEZ1_FM5,	$F4, $11
	smpsHeaderPSG       DEZ1_PSG1,	$C4, $05, $00, $00
	smpsHeaderPSG       DEZ1_PSG2,	$C4, $05, $00, $00
	smpsHeaderPSG       DEZ1_PSG3,	$C4, $04, $00, $00

; FM1 Data
DEZ1_FM1:
	dc.b	nRst, $1C

DEZ1_Jump04:
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	dc.b	nA5, $04, smpsNoAttack, $04, nA5, nC6, nA5, nE6, nD6, nC6, nG5, smpsNoAttack
	dc.b	$04, nG5, nB5, nG5, nD6, nC6, nB5, nA5, smpsNoAttack, $04, nA5, nC6
	dc.b	nA5, nE6, nD6, nC6, nA5, smpsNoAttack, $04, nA5, nB5, nC6, nD6, nC6
	dc.b	nB5, nA5, smpsNoAttack, $04, nA5, nC6, nA5, nE6, nD6, nC6, nG5, smpsNoAttack
	dc.b	$04, nG5, nB5, nG5, nD6, nC6, nB5, nA5, smpsNoAttack, $04, nA5, nC6
	dc.b	nA5, nE6, nD6, nC6, nA5
	smpsAlterPitch      $18
	dc.b	nRst, $04, nBb3, nRst, nBb3, nRst, nBb3, $0C
	smpsSetvoice        $00
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE5, $0A, nD5, $02, nC5, nD5, $0C, nC5, $02, nB4, nC5, $0C
	dc.b	nB4, $02, nA4, nB4, $08, nG4, $04, $04, smpsNoAttack, $04, nA4, $02
	dc.b	nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG4, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA4, $16, smpsNoAttack, $0C, nE4, $04, nA4, $02, nRst, nB4, nRst, nC5
	dc.b	nRst, nD5, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE5, $0A, nD5, $02, nC5, nE5, $02, smpsNoAttack, nE5, $10, smpsNoAttack, $0A
	dc.b	nE5, $02, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $02, nD6, $04, nC6
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nA5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nB5, smpsNoAttack, $14, nA5, $04, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nFs5, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nAb5, $04, smpsNoAttack, $18
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $02, smpsNoAttack, $0C, nD6, $02, nC6, nD6, $0C, nC6, $02, nB5
	dc.b	nC6, $0C, nB5, $02, nA5, nB5, $02, smpsNoAttack, nB5, $06, nG5, $04
	dc.b	$08, nA5, $02, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA5, $16, smpsNoAttack, $0C, nE5, $04, nA5, $02, nRst, nB5, nRst, nC6
	dc.b	nRst, nD6, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $0A, nD6, $02, nC6
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $0E, smpsNoAttack, smpsNoAttack, $0C, nE6, $02, nRst
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE7, $02, nD7, $04, nC7, nA6, $08, smpsNoAttack
;	smpsModSet          $00, $01, $FF, $44
	dc.b	nA6, $04
;	smpsModSet          $05, $01, $02, $04
	dc.b	nRst, $18, nA3, $08, nB3, nC4, nA3
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE5, $02, nA4, $04, nC5, nE5, $08
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA5, $06, nD5, $04, smpsNoAttack, $18, nB4, $04, nC5, nD5, $0C
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nF5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nG5, $06, nE5, $04, nD5, nC5, $02, smpsNoAttack, nC5, $1A, nA4, $04
	dc.b	nB4, nC5, $0C, nF5
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA5, $0A, smpsNoAttack, $14, nA5, $04, nB5, nC6, $14, $04, nD6
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $02, smpsNoAttack, $20
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE7, $0A, nD7, $02, nC7, nD7, $10, smpsNoAttack, $0C, smpsNoAttack
;	smpsModSet          $04, $01, $FE, $44
	dc.b	$0C
;	smpsModSet          $05, $01, $02, $04
	dc.b	nB5, $04, nC6, nD6, $0C
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nF6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nG6, $06, nE6, $04, nD6, nC6, smpsNoAttack, $20, smpsNoAttack, $04, nA4, $08
	dc.b	nB4, $04, nC5, nB4, nC5, nD5, nE5, nD5, nE5
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA5, $12
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nFs5, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nAb5, $12, nAb5, $04, nA5, nB5, smpsNoAttack, $04, nE5, $08
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE6, $12
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nG7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA7, $1A
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nF7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nG7, $02, smpsNoAttack, $18, nE6, $04, nF6, nG6, $02, smpsNoAttack, nG6, $0A
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE7, $06, nD7, $02, smpsNoAttack, nD7, $06
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nBb6, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nC7, $1A, smpsNoAttack
;	smpsModSet          $00, $01, $FE, $44
	dc.b	nC7, $08
;	smpsModSet          $05, $01, $02, $04
	dc.b	nA3, $02, nG3, nA3, nB3, nA3, nB3, nC4, nB3, nC4, nD4, nC4
	dc.b	nD4, nE4, nD4, nE4, nF4, nE4, nF4, nG4, nF4, nG4, nA4, nG4
	dc.b	nA4
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nBb4, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nC5, $0E, nB5, $02, nA5, nAb5, nA5, nB5, nA5, nB5, nC6, nB5
	dc.b	nC6, nD6, nC6, nD6, nC6, nD6, nE6, nF6, nE6, nD6, nE6, nF6
	dc.b	nAb6, nA6, nB6
;	smpsModSet          $00, $01, $0C, $3A
	dc.b	nD7, $02, smpsNoAttack
;	smpsModSet          $05, $01, $02, $04
	dc.b	nE7, $0A
	smpsJump            DEZ1_Jump04

; FM2 Data
DEZ1_FM2:
	dc.b	nRst, $1C

DEZ1_Jump03:
	smpsSetvoice        $01
	dc.b	nA3, $04, smpsNoAttack, $04, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nA3, smpsNoAttack, $04, nA3, nB3, nC4, nD4, nC4, nB3, nA3
	dc.b	smpsNoAttack, $04, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nRst, nBb3, $04, nRst, nBb3, nRst, nBb3, $0C, nA3, $04, $04
	dc.b	$04, $04, $04, $04, $04, nG3, smpsNoAttack, $04, nG3, nG3, nG3, nG3
	dc.b	nG3, nG3, nF3, smpsNoAttack, $04, nF3, nF3, nF3, nF3, nF3, nF3, nF3
	dc.b	nF3, nF3, nF3, nF3, nF4, nF4, nE4, nD4, smpsNoAttack, $04, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, smpsNoAttack, $04, nE4
	dc.b	nD4, nC4, nD4, nC4, nB3, nA3, smpsNoAttack, $04, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nG3, smpsNoAttack, $04, nG3, nG3, nG3, nG3, nG3, nG3, nF3
	dc.b	smpsNoAttack, $04, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3
	dc.b	nF3, nF4, nF4, nE4, nD4, smpsNoAttack, $04, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nE4, nE4, nE4, nE4, nE4, nD4, nC4, nA3, smpsNoAttack, $04
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nB3, nB3, nC4
	dc.b	nC4, nA3, nA3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nG3
	dc.b	nG3, nG3, nG3, nG3, nG3, nG3, nG3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nE3, nE3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nE4, nE4, nF3, nF3, nF3, nF3, nF3
	dc.b	nA3, $08, nG3, $04, smpsNoAttack, $04, nG3, nG3, nG3, nG3, nG3, nG3
	dc.b	nG3, nC4, nC4, nC4, nC4, nC4, nB3, $08, nA3, $04, smpsNoAttack, $04
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nF3, nF3, nF3, nF3, nF3, nA3, $08, nG3, $04
	dc.b	smpsNoAttack, $04, nG3, nG3, nG3, nG3, nG3, nG3, nG3, nC4, $08, $04
	dc.b	$04, $04, nB3, $08, nA3, $04, smpsNoAttack, $04, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	smpsJump            DEZ1_Jump03

; FM3 Data
DEZ1_FM3:
	dc.b	nRst, $1C

DEZ1_Jump02:
	smpsAlterNote       $03
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nA4, $04, smpsNoAttack, $04, nA3, nA3, nA3, nA3, nA3, nA4, nG4, smpsNoAttack
	dc.b	$04, nA3, nA3, nA3, nA3, nA3, nG4, nA4, smpsNoAttack, $04, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nA3, smpsNoAttack, $04, nA3, nB3, nC4, nD4, nC4
	dc.b	nB3, nA4, smpsNoAttack, $04, nA3, nA3, nA3, nA3, nA3, nA4, nG4, smpsNoAttack
	dc.b	$04, nA3, nA3, nA3, nA3, nA3, nG4, nE4, smpsNoAttack, $04, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nA3, nRst, nBb3, $04, nRst, nBb3, nRst, nBb3
	dc.b	$0C, nA4, $04, nA3, nA3, nA3, nA3, nA3, nA4, nG4, smpsNoAttack, $04
	dc.b	nG3, nG3, nG3, nG3, nG3, nG4, nF4, smpsNoAttack, $04, nF3, nF3, nF3
	dc.b	nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF4, $08, nE4, $04
	dc.b	nD4, smpsNoAttack, $1C, nD4, $04, smpsNoAttack, $20, nE4, $20, smpsNoAttack, $04, nE4
	dc.b	$04, nD4, nC4, nD4, nC4, nB3, nA4, smpsNoAttack, $04, nA3, nA3, nA3
	dc.b	nA3, nA3, nA4, nG4, smpsNoAttack, $04, nG3, nG3, nG3, nG3, nG3, nG4
	dc.b	nF4, smpsNoAttack, $04, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nF3
	dc.b	nF3, nF3, nF4, $08, nE4, $04, nD4, smpsNoAttack, $20, nE4, $10, $04
	dc.b	nD4, nC4, nA4, $08, nA3, $04, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, $08, nB3, nC4, nA3, nF4, $20, nG4, nE4, nA4, nD4, nD4
	dc.b	nE4, nE5, $0C, $0C, $08, nF4, $14, nA4, $08, nG4, $04, smpsNoAttack
	dc.b	$20, nC4, $14, nB3, $08, nA3, $04, smpsNoAttack, $20, nD4, $20, smpsNoAttack
	dc.b	$20, nE4, $20, smpsNoAttack, $20, nF4, $14, nA4, $08, nG4, $04, smpsNoAttack
	dc.b	$20, nC4, $14, nB3, $08, nA3, $04, smpsNoAttack, $20, nD4, $20, smpsNoAttack
	dc.b	$20, nE4, $20, nRst, $02, nE4, nE4, $04, $04, $04, $04, $04
	dc.b	$04
	smpsJump            DEZ1_Jump02

; FM4 Data
DEZ1_FM4:
	dc.b	nRst, $1C

DEZ1_Jump01:
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	smpsSetvoice        $03
	smpsAlterPitch      $F4
	dc.b	nA5, $04, smpsNoAttack, $04, nA5, nC6, nA5, nE6, nD6, nC6, nG5, smpsNoAttack
	dc.b	$04, nG5, nB5, nG5, nD6, nC6, nB5, nA5, smpsNoAttack, $04, nA5, nC6
	dc.b	nA5, nE6, nD6, nC6, nA5, smpsNoAttack, $04, nA5, nB5, nC6, nD6, nC6
	dc.b	nB5, nA5, smpsNoAttack, $04, nA5, nC6, nA5, nE6, nD6, nC6, nG5, smpsNoAttack
	dc.b	$04, nG5, nB5, nG5, nD6, nC6, nB5, nA5, smpsNoAttack, $04, nA5, nC6
	dc.b	nA5, nE6, nD6, nC6, nA5, nBb5, $04, nD6, nF6, nBb6, $08, nBb6
	dc.b	$04, nF6, nD6
	smpsSetvoice        $02
	smpsAlterPitch      $F4
	dc.b	nA5, nA5, nC6, nA5, nE6, nD6, nC6, nG5, smpsNoAttack, $04, nG5, nB5
	dc.b	nG5, nD6, nC6, nB5, nF5, smpsNoAttack, $04, nF5, nA5, nF5, nC6, nB5
	dc.b	nA5, nG5, smpsNoAttack, $04, nA5, nA5, $08, $04, $08, $04, $04, $04
	dc.b	nC6, nA5, nE6, nD6, nC6, nA5, smpsNoAttack, $04, nA5, nC6, nA5, nE6
	dc.b	nD6, nC6, nA5, nD5, nD5, nFs5, nFs5, nA5, nFs5, nA5, nE5, smpsNoAttack
	dc.b	$04, nE5, nAb5, nAb5, nB5, nAb5, nB5, nA5, smpsNoAttack, $04, nA5, nC6
	dc.b	nA5, nE6, nD6, nC6, nG5, smpsNoAttack, $04, nG5, nB5, nG5, nD6, nC6
	dc.b	nB5, nF5, smpsNoAttack, $04, nF5, nA5, nF5, nC6, nB5, nA5, nG5, smpsNoAttack
	dc.b	$04, nA5, nA5, $08, $04, $08, $04, $04, $04, nC6, nA5, nE6
	dc.b	nD6, nC6, nG5, smpsNoAttack, $04, nG5, nB5, nG5, nD6, nC6, nB5, nA5
	dc.b	smpsNoAttack, $04, nA5, nC6, nA5, nE6, nD6, nC6, nA5, smpsNoAttack, $04, nA5
	dc.b	nB5, nB5, nC6, nC6, nA5, nA5
	smpsAlterPitch      $18
	dc.b	nF3, $04, nF3, nF3, nF3, nF3, nF3, nF3, nF3, nG3, nG3, nG3
	dc.b	nG3, nG3, nG3, nG3, nG3, nE3, nE3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nF3, nF3, nF3, nF3, nF3, nA3, $08
	dc.b	nG3, $04, smpsNoAttack, $04, nG3, nG3, nG3, nG3, nG3, nG3, nG3, nC4
	dc.b	nC4, nC4, nC4, nC4, nB3, $08, nA3, $04, smpsNoAttack, $04, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nF3, nF3, nF3, nF3, nF3, nA3, $08, nG3, $04, smpsNoAttack, $04
	dc.b	nG3, nG3, nG3, nG3, nG3, nG3, nG3, nC4, $08, $04, $04, $04
	dc.b	nB3, $08, nA3, $04, smpsNoAttack, $04, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD4, nD4, nD4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE4
	smpsJump            DEZ1_Jump01

; FM5 Data
DEZ1_FM5:
	smpsAlterNote       $05
	smpsPan             panRight, $00
	dc.b	nRst, $04
	smpsJump            DEZ1_FM1

; PSG1 Data
DEZ1_PSG1:
	dc.b	nRst, $1C

DEZ1_Jump07:
	smpsPSGvoice        fTone_05
	dc.b	nRst, $04, nRst, $20, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nE6
	dc.b	$1C, nB5, $04, smpsNoAttack, $1C, nB5, $04, smpsNoAttack, $04, nC6, $04, nC6
	dc.b	$14, nE6, $04, smpsNoAttack, $04, nE6, $04, nE6, $18, nC6, $1C, nE6
	dc.b	$04, smpsNoAttack, $20, nD6, $1C, nD6, $04, smpsNoAttack, $04, nAb6, $08, nAb6
	dc.b	$08, nAb6, $08, nE6, $04, smpsNoAttack, $1C, nB5, $04, smpsNoAttack, $1C, nB5
	dc.b	$04, smpsNoAttack, $04, nC6, $04, nC6, $14, nE6, $04, smpsNoAttack, $04, nE6
	dc.b	$04, nE6, $18, nA5, $20, nB5, $10, nE6, $04, nRst, $04, nE6
	dc.b	$04, nE6, $04, smpsNoAttack, $04, nRst, $1C, nE6, $08, nG6, nA6, nE6
	dc.b	nC6, $20, nG6, nD6, nE6, nC6, smpsNoAttack, $04, nC6, $10, nF6, $0C
	dc.b	nFs6, $20, nAb6, $20, nE6, $14, nA6, $08, nG6, $04, smpsNoAttack, $20
	dc.b	nG6, $0C, nC7, $04, nRst, $04, nB6, $04, nRst, $04, nE6, $04
	dc.b	smpsNoAttack, $20, nC6, $20, nRst, $02, nC6, $06, nRst, $04, nC6, $10
	dc.b	nRst, $04, nD6, $20, smpsNoAttack, $0C, nB6, $14, nC6, $14, nE6, $04
	dc.b	nRst, $04, nG6, $04, smpsNoAttack, $20, nC7, $10, nRst, $04, nB6, $04
	dc.b	nRst, $04, nE6, $04, smpsNoAttack, $20, nF6, $20, smpsNoAttack, $20, nAb6, $20
	dc.b	smpsNoAttack, $1C
	smpsJump            DEZ1_Jump07

; PSG2 Data
DEZ1_PSG2:
	dc.b	nRst, $1C

DEZ1_Jump06:
	smpsPSGvoice        fTone_05
	dc.b	nRst, $04, nRst, $20, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nG6
	dc.b	$1C, nD6, $04, smpsNoAttack, $1C, nD6, $04, smpsNoAttack, $04, nE6, $04, nE6
	dc.b	$14, nG6, $04, smpsNoAttack, $04, nA6, $04, nA6, $18, nE6, $1C, nA6
	dc.b	$04, smpsNoAttack, $20, nFs6, $1C, nAb6, $04, smpsNoAttack, $04, nB6, $04, nRst
	dc.b	$04, nB6, $04, nRst, $04, nB6, $08, nG6, $04, smpsNoAttack, $1C, nD6
	dc.b	$04, smpsNoAttack, $1C, nD6, $04, smpsNoAttack, $04, nE6, $04, nE6, $14, nG6
	dc.b	$04, smpsNoAttack, $04, nA6, $04, nA6, $18, nD6, $20, nE6, $10, nG6
	dc.b	$04, nRst, $04, nG6, $04, nA6, $04, smpsNoAttack, $04, nRst, $1C, nA6
	dc.b	$08, nB6, nC7, nA6, nE6, $20, nD6, nG6, nG6, nF6, smpsNoAttack, $08
	dc.b	nF6, $08, nRst, $04, nA6, $08, nRst, $04, nD6, $20, nE6, $20
	dc.b	nC6, $14, nE6, $04, nRst, $04, nD6, $04, smpsNoAttack, $20, nC7, $0C
	dc.b	nG6, $04, nRst, $04, nG6, $04, nRst, $04, nG6, $04, smpsNoAttack, $20
	dc.b	nF6, $20, nRst, $06, nF6, $04, nRst, $02, nF6, $10, nRst, $04
	dc.b	nAb6, $20, smpsNoAttack, $0C, nAb6, $14, nE6, $14, nA6, $04, nRst, $04
	dc.b	nD6, $04, smpsNoAttack, $20, nG6, $14, nG6, $04, nRst, $04, nG6, $04
	dc.b	smpsNoAttack, $20, nC6, $20, smpsNoAttack, $20, nD6, $20, smpsNoAttack, $1C
	smpsJump            DEZ1_Jump06

; PSG3 Data
DEZ1_PSG3:
	dc.b	nRst, $1C

DEZ1_Jump05:
	smpsPSGvoice        fTone_05
	dc.b	nRst, $04, nRst, $20, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nA6, $20, nB6, nB6, nC7, nA6, smpsNoAttack, $0C, nA6
	dc.b	$04, nRst, $04, nC7, $08, nRst, $04, nA6, $20, nB6, nA6, $14
	dc.b	nC7, $04, nRst, $04, nB6, $04, smpsNoAttack, $20, nD7, $0C, nE7, $04
	dc.b	nRst, $04, nD7, $04, nRst, $04, nC7, $04, smpsNoAttack, $20, nA6, $20
	dc.b	nRst, $0C, nA6, $10, nRst, $04, nB6, $20, smpsNoAttack, $0C, nE7, $10
	dc.b	nRst, $04, nA6, $14, nC7, $04, nRst, $04, nB6, $04, smpsNoAttack, $20
	dc.b	nE7, $10, nRst, $04, nD7, $04, nRst, $04, nC7, $04, smpsNoAttack, $20
	dc.b	nA6, $20, smpsNoAttack, $20, nB6, $20, smpsNoAttack, $1C
	smpsJump            DEZ1_Jump05

; DAC Data
DEZ1_DAC:
	dc.b	dSnareS3, $02, dSnareS3, $02, dHiTomS3, dHiTomS3, dMidTomS3, dMidTomS3, dSnareS3, dSnareS3, dMidTomS3, dMidTomS3
	dc.b	dLowTomS3, dLowTomS3, dFloorTomS3, dFloorTomS3

DEZ1_Jump00:
	dc.b	dSnareS3, $04, nRst, dFloorTomS3, dSnareS3, dHiTomS3, $02, $02, $04, dMidTomS3, dLowTomS3, dFloorTomS3
	dc.b	nRst, dFloorTomS3, dSnareS3, dHiTomS3, dHiTomS3, dMidTomS3, dLowTomS3, dFloorTomS3, nRst, dFloorTomS3, dSnareS3, dHiTomS3
	dc.b	$02, $02, $04, dMidTomS3, dMidTomS3, dMidTomS3, $02, dLowTomS3, dFloorTomS3, $04, dSnareS3, $08
	dc.b	dFloorTomS3, $04, dSnareS3, dMidTomS3, $02, dLowTomS3, dFloorTomS3, $04, dSnareS3, nRst, dFloorTomS3, dSnareS3
	dc.b	dHiTomS3, $02, $02, $04, dMidTomS3, dLowTomS3, dFloorTomS3, nRst, dFloorTomS3, dSnareS3, dHiTomS3, dHiTomS3
	dc.b	dMidTomS3, dLowTomS3, dFloorTomS3, nRst, dFloorTomS3, dSnareS3, dHiTomS3, $02, $02, $04, dMidTomS3, dLowTomS3
	dc.b	dMidTomS3, $02, dLowTomS3, dFloorTomS3, $04, dSnareS3, $08, $08, $08, dLowTomS3, $02, $02
	dc.b	dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04
	dc.b	$04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3
	dc.b	dFloorTomS3, $04, $04, dSnareS3, dFloorTomS3, dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04, $04, dSnareS3
	dc.b	$08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04
	dc.b	$04, dSnareS3, dMidTomS3, $02, dLowTomS3, dFloorTomS3, $04, dSnareS3, $08, dFloorTomS3, $04, dSnareS3
	dc.b	dMidTomS3, $02, dLowTomS3, dFloorTomS3, $04, dSnareS3, nRst, dFloorTomS3, dSnareS3, $08, dFloorTomS3, $04
	dc.b	$04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3
	dc.b	dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, dSnareS3, dSnareS3, dFloorTomS3
	dc.b	dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, $04, dFloorTomS3
	dc.b	$02, dSnareS3, dFloorTomS3, $04, dSnareS3, dSnareS3, dSnareS3, nRst, dFloorTomS3, dSnareS3, $08, dFloorTomS3
	dc.b	$04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, $04, dHiTomS3, $02, $02, $04, dMidTomS3
	dc.b	dMidTomS3, dLowTomS3, dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3
	dc.b	dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08
	dc.b	dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, dFloorTomS3, dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04
	dc.b	$04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3
	dc.b	dFloorTomS3, $04, $04, dSnareS3, $08, $02, $02, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dSnareS3
	dc.b	dSnareS3, dHiTomS3, dHiTomS3, dMidTomS3, dLowTomS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dFloorTomS3, $08, dSnareS3
	dc.b	dFloorTomS3, $04, dSnareS3, $08, dFloorTomS3, $04, nRst, dFloorTomS3, dSnareS3, $08, dFloorTomS3, $04
	dc.b	$04, dSnareS3, $08, dFloorTomS3, dSnareS3, dSnareS3, $04, dFloorTomS3, $08, $04, nRst, dFloorTomS3
	dc.b	dSnareS3, $08, dFloorTomS3, $04, $04, dSnareS3, dFloorTomS3, dFloorTomS3, $08, dSnareS3, dFloorTomS3, $04
	dc.b	$04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3
	dc.b	dFloorTomS3, $04, $04, dSnareS3, $08, $04, dHiTomS3, $02, $04, $02, $02, $02
	dc.b	dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dLowTomS3, dLowTomS3, dFloorTomS3, $08, dSnareS3, dFloorTomS3
	dc.b	$04, dSnareS3, $08, dFloorTomS3, $04, nRst, dFloorTomS3, dSnareS3, $08, dFloorTomS3, $04, $04
	dc.b	dSnareS3, $08, dFloorTomS3, dSnareS3, dSnareS3, $04, dFloorTomS3, $08, $04, nRst, dFloorTomS3, dSnareS3
	dc.b	$08, dFloorTomS3, $04, dHiTomS3, $02, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dFloorTomS3, $08
	dc.b	dSnareS3, dFloorTomS3, $04, $04, dSnareS3, $08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3
	dc.b	$08, dFloorTomS3, dSnareS3, dFloorTomS3, $04, $04, dSnareS3, dFloorTomS3, dSnareS3, $02, $02, $02
	dc.b	$02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
	smpsJump            DEZ1_Jump00

DEZ1_Voices:
;	Voice $00
;	$3C
;	$01, $72, $01, $32, 	$17, $1F, $1F, $1F, 	$08, $08, $08, $09
;	$05, $00, $03, $00, 	$0F, $1B, $1B, $1B, 	$12, $80, $09, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $00
	smpsVcCoarseFreq    $02, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $08, $08, $08
	smpsVcDecayRate2    $00, $03, $00, $05
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0F
	smpsVcTotalLevel    $00, $09, $00, $12

;	Voice $01
;	$63
;	$19, $01, $00, $00, 	$1F, $1F, $1F, $1F, 	$10, $02, $0D, $05
;	$04, $00, $00, $00, 	$CF, $FF, $FF, $FF, 	$25, $1F, $13, $85
	smpsVcAlgorithm     $03
	smpsVcFeedback      $04
	smpsVcUnusedBits    $01
	smpsVcDetune        $00, $00, $00, $01
	smpsVcCoarseFreq    $00, $00, $01, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0D, $02, $10
	smpsVcDecayRate2    $00, $00, $00, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $13, $1F, $25

;	Voice $02
;	$38
;	$04, $12, $30, $71, 	$1F, $1F, $1F, $1F, 	$04, $04, $04, $04
;	$00, $00, $00, $00, 	$4F, $4F, $8F, $8B, 	$15, $1B, $18, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $01, $00
	smpsVcCoarseFreq    $01, $00, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $04, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $08, $08, $04, $04
	smpsVcReleaseRate   $0B, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $1B, $15

;	Voice $03
;	$49
;	$04, $10, $30, $70, 	$1F, $1F, $1F, $1F, 	$14, $0C, $0A, $0A
;	$00, $00, $00, $00, 	$4F, $4F, $AF, $AB, 	$15, $10, $18, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $01
	smpsVcDetune        $07, $03, $01, $00
	smpsVcCoarseFreq    $00, $00, $00, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0C, $14
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0A, $0A, $04, $04
	smpsVcReleaseRate   $0B, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $10, $15

