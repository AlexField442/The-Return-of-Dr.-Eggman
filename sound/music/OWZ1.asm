OWZ1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     OWZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       OWZ1_DAC
;	smpsHeaderFM        OWZ1_FM1,	$00, $00
	smpsHeaderFM        OWZ1_FM2,	$E8, $07
	smpsHeaderFM        OWZ1_FM3,	$00, $12
	smpsHeaderFM        OWZ1_FM4,	$00, $10
	smpsHeaderFM        OWZ1_FM5,	$00, $12
	smpsHeaderFM        OWZ1_FM6,	$00, $12
	smpsHeaderPSG       OWZ1_PSG1,	$DC, $07, $00, $00
	smpsHeaderPSG       OWZ1_PSG2,	$DC, $05, $00, $00
	smpsHeaderPSG       OWZ1_PSG3,	$01, $02, $00, fTone_03

; FM2 Data
OWZ1_FM2:
	smpsSetvoice        $00
	smpsCall            OWZ1_Call10
	smpsSetvoice        $00

OWZ1_Jump01:
	smpsCall            OWZ1_Call11
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $0C, nRst, nF4
	dc.b	$07, nRst, $01, nAb4, $03, nRst, $01, nA4, $07, nRst, $01, nF4
	dc.b	$03, nRst, $01, nD4, $06, nRst
	smpsCall            OWZ1_Call11
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $0C, nRst, $06
	dc.b	nF4, $05, nRst, $01, nD4, $06, nRst, nC4, nRst, nD4, nRst
	smpsCall            OWZ1_Call12
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $17, nRst, $01
	dc.b	nA4, $06, nRst, nBb4, nRst, nB4, nRst, nC5, $06, nRst, $0C, nC5
	dc.b	$06, nRst, $0C, nC5, $17, nRst, $01, nD5, $06, nRst, nEb5, $05
	dc.b	nRst, $01, nD5, $05, nRst, $01, nC5, $06, nRst
	smpsCall            OWZ1_Call12
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $17, nRst, $01
	dc.b	nEb4, $06, nRst, nD4, nRst, nCs4, nRst
	smpsSetvoice        $08
	dc.b	nC4, $12, nRst, $42
	smpsSetvoice        $00
	dc.b	nC4, $06, nRst

OWZ1_Loop14:
	smpsCall            OWZ1_Call13
	smpsLoop            $00, $03, OWZ1_Loop14
	smpsCall            OWZ1_Call14
	smpsLoop            $01, $03, OWZ1_Loop14
	smpsCall            OWZ1_Call13
	smpsCall            OWZ1_Call14
	smpsCall            OWZ1_Call14
	dc.b	nBb4, $0C, nBb4, $0C, nD4, $06, nD4, $0C, nEb4, $0C, nEb4, $0C
	dc.b	nEb4, $06
	smpsSetvoice        $08
	dc.b	nE4, $18
	smpsSetvoice        $00

OWZ1_Loop15:
	dc.b	nF4, $06, nRst, $0C, nC4, $05, nRst, $01, nEb4, $05, nRst, $01
	dc.b	nG4, $06, nRst, nF4, $06, nRst, nC4, nRst, nEb4, nRst, nG4, $05
	dc.b	nRst, $01, nBb4, $0B, nRst, $01, nF4, $06, nRst, $0C, nC4, $05
	dc.b	nRst, $01, nEb4, $05, nRst, $01, nG4, $06, nRst, nF4, $06, nRst
	dc.b	nC4, $06, nRst, nG4, $06, nRst, nEb4, $05, nRst, $01, nC4, $06
	dc.b	nRst
	smpsLoop            $00, $03, OWZ1_Loop15
	smpsCall            OWZ1_Call10
	smpsSetvoice        $00
	smpsJump            OWZ1_Jump01

OWZ1_Call10:
	dc.b	nF4, $0C, nRst, $48, nC4, $06, nRst
	smpsLoop            $00, $03, OWZ1_Call10
	smpsSetvoice        $08
	dc.b	nFs4, $5F, nRst, $01
	smpsReturn

OWZ1_Call11:
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $0C, nRst, $12
	dc.b	nF4, $05, nRst, $01, nF4, $06, nRst, nD4, nRst, nC4, $06, nRst
	dc.b	$0C, nC4, $06, nRst, $0C, nC4, $0C, nRst, $12, nC4, $05, nRst
	dc.b	$01, nD4, $06, nRst, nC4, nRst, nBb3, $06, nRst, $0C, nBb3, $06
	dc.b	nRst, $0C, nBb3, $0C, nRst, $12, nBb3, $05, nRst, $01, nD4, $06
	dc.b	nRst, nE4, nRst
	smpsReturn

OWZ1_Call12:
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C, nF4, $17, nRst, $01
	dc.b	nA4, $06, nRst, nBb4, nRst, nB4, nRst, nC5, $05, nRst, $01, nC4
	dc.b	$06, nRst, nC4, nRst, $0C, nC4, nRst, nC4, $06, nRst, nEb4, nRst
	dc.b	nE4, nRst
	smpsReturn

OWZ1_Call13:
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nC5, $05, nRst, $01
	dc.b	nBb4, $0B, nRst, $01, nD4, $05, nRst, $01, nC4, $06, nRst, nC4
	dc.b	nRst, nD4, $03, nEb4, nE4, $0B, nRst, $01, nC4, $06, nRst
	smpsReturn

OWZ1_Call14:
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nC5, $05, nRst, $01
	dc.b	nBb4, $0B, nRst, $01
	smpsNoteFill        $05
	dc.b	nD4, $06, nC4, nRst, nC4, nC5, nC4, nC4, nC4, nC5, nC4
	smpsNoteFill        $00
	smpsReturn

; FM3 Data
OWZ1_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst, nRst
	smpsModSet          $24, $02, $3A, $33
	smpsCall            OWZ1_Call02

OWZ1_Jump00:
	smpsAlterPitch      $0C
	smpsSetvoice        $01
	smpsModSet          $0F, $01, $05, $04
	smpsCall            OWZ1_Call03
	smpsCall            OWZ1_Call0F
	smpsCall            OWZ1_Call03
	smpsCall            OWZ1_Call0F
	dc.b	nRst, $06
	smpsNoteFill        $04
	dc.b	nC4, nD4, nC4, nF4, $18, nEb4
	smpsNoteFill        $00
	dc.b	nD4, $11, nRst, $01
	smpsNoteFill        $04
	dc.b	nC4, $06, nRst, nC4, nD4, nRst
	smpsNoteFill        $0C
	dc.b	nD4, $03, nEb4, $0F, nD4, $03, nEb4, $0F
	smpsNoteFill        $00
	dc.b	nD4, $03, nEb4, $14, nRst, $01
	smpsNoteFill        $04
	dc.b	nD4, $0C, nC4, nBb3
	smpsNoteFill        $00
	dc.b	nA3, $11, nRst, $01, nBb3, $03, nB3, nC4, $03, nRst, nRst, $06
	dc.b	nF3, $0C, smpsNoAttack, $60, smpsNoAttack, $18, nRst, $06
	smpsNoteFill        $04
	dc.b	nC4, $06, nD4, nC4, nA4, $18, nG4
	smpsNoteFill        $00
	dc.b	nF4, $11, nRst, $01
	smpsNoteFill        $04
	dc.b	nEb4, $06, nRst, nEb4, nF4, nRst
	smpsNoteFill        $0C
	dc.b	nFs4, $03, nG4, $0F, nFs4, $03, nG4, $0F
	smpsNoteFill        $00
	dc.b	nFs4, $03, nG4, $14, nRst, $01
	smpsNoteFill        $04
	dc.b	nF4, $0C, nEb4, nD4
	smpsNoteFill        $00
	dc.b	nC4, $10, nRst, $02, nA4, $03, nRst, $03, nRst, $0C, nF4, $6C
	dc.b	nRst, $18

OWZ1_Loop10:
	smpsSetvoice        $01
	smpsCall            OWZ1_Call03
	dc.b	nC5, $60, smpsNoAttack, $30, nRst, $18
	smpsCall            OWZ1_Call04
	dc.b	nD5, $23, nRst, $01, nC5, $23, nRst, $01, nBb4, $17, nRst, $01
	dc.b	nA4, $0B, nRst, $01, nC5, $30, nRst, $0C
	smpsLoop            $00, $02, OWZ1_Loop10
	smpsCall            OWZ1_Call03
	dc.b	nC5, $48

OWZ1_Loop11:
	dc.b	smpsNoAttack, $0C
	smpsAlterVol        $03
	smpsLoop            $00, $06, OWZ1_Loop11
	smpsAlterVol        $EE
	dc.b	nRst, $06
	smpsSetvoice        $03
	smpsAlterPitch      $F4
	dc.b	nF5, nE5, nD5, nC5, nBb4, nA4, nG4, nA4, $04, nC5, nA4, nC5
	dc.b	nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5

OWZ1_Loop12:
	dc.b	nA4, $04, nC5
	smpsAlterVol        $02
	smpsLoop            $00, $0A, OWZ1_Loop12
	dc.b	nRst, $06
	smpsAlterVol        $EC
	dc.b	nC4, nD4, nE4, nF4, nG4, nA4, nBb4, nA4, $12, nF4, nD4, $0C
	dc.b	nC4, $36, nRst, $06, nF4, nF4, nF4, nF4, nRst, nE4, nRst, nE4
	dc.b	nRst, nF4, nG4, $08, nF4, nE4, nF4, $60, smpsNoAttack, $60
	smpsAlterPitch      $0C
	smpsModOff
	smpsAlterPitch      $F4
	smpsSetvoice        $01

OWZ1_Loop13:
	smpsNoteFill        $03
	dc.b	nRst, $0C, nEb5, $12, nEb5, nEb5
	smpsNoteFill        $00
	dc.b	nEb5, nD5, $0C
	smpsNoteFill        $03
	dc.b	nRst, $0C, nEb5, $06, nRst, $0C, nEb5, $06, nRst
	smpsNoteFill        $00
	dc.b	nEb5, $0C
	smpsNoteFill        $03
	dc.b	nD5, $06, nEb5, nD5, nEb5, nF5
	smpsNoteFill        $00
	dc.b	nG5, $0C
	smpsLoop            $00, $03, OWZ1_Loop13
	dc.b	nA5, $04, nRst, $5C
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst
	smpsModSet          $24, $02, $3A, $33
	smpsCall            OWZ1_Call02
	smpsJump            OWZ1_Jump00

OWZ1_Call02:
	dc.b	nFs5, $24

OWZ1_Loop1F:
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $0C
	smpsLoop            $01, $02, OWZ1_Loop1F
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $0B, nRst, $01
	smpsModOff
	smpsAlterVol        $EE
	smpsReturn

OWZ1_Call03:
	dc.b	nC4, $0F, nD4, $01, nE4, $02, nF4, $01, nG4, $02, nA4, $01
	dc.b	nBb4, $02
	smpsReturn

OWZ1_Call0F:
	dc.b	nC5, $41, nRst, $01
	smpsNoteFill        $05
	dc.b	nA4, $06, nRst, nBb4, nC5, nBb4
	smpsNoteFill        $00
	dc.b	nA4, $0C, nRst, $06, nF4, $0C, nRst, $06, nC4, $18, nRst, $06
	smpsNoteFill        $05
	dc.b	nC4, $03, nRst, $03, nA4, $0C, nBb4, nRst, nC5, $03, nRst, nC5
	dc.b	$0C, nC5, nC5, nC5, nC5, $03, nRst, nBb4, $0C, nBb4
	smpsNoteFill        $00
	dc.b	nA4, $0C, nRst, $06, nF4, $0C, nRst, $06, nC4, $1E, nRst, $06
	smpsReturn

OWZ1_Call04:
	dc.b	nC4, $0F, nE4, $01, nF4, $02, nG4, $01, nA4, $02, nBb4, $01
	dc.b	nC5, $02
	smpsReturn

; FM4 Data
OWZ1_FM4:
	smpsSetvoice        $02
	smpsAlterNote       $03
	dc.b	nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsCall            OWZ1_Call06
	dc.b	nA4, $06, nRst, $0C
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterPitch      $04
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $FC
	dc.b	nC5, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $FF
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $01
	smpsModSet          $24, $02, $20, $97
	smpsCall            OWZ1_Call07

OWZ1_Loop0E:
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst
	smpsNoteFill        $00
	dc.b	nF4, $36
	smpsLoop            $00, $07, OWZ1_Loop0E
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst
	smpsNoteFill        $00
	smpsPan             panLeft, $00
	dc.b	nF4, $11, nRst, $01, nA4, $06, nRst, nBb4, $05, nRst, $01
	smpsCall            OWZ1_Call0D
	dc.b	nBb4, $06, nRst, nBb4, nRst
	smpsNoteFill        $00
	dc.b	nA4, $06, nRst, $0C, nF4, $06, nRst, $0C, nEb4, $0C, nRst, $06
	dc.b	nF4, $04, nRst, $02, nF4, $06, nRst, nA4, nRst, nBb4, $04, nRst
	dc.b	$02
	smpsCall            OWZ1_Call0D
	dc.b	nBb4, $06, nRst, nA4, nBb4, nC5, nRst, nA4, nBb4, nC5, nRst, nA4
	dc.b	nBb4, nC5, $08, nD5, nE5, nE5, nF5, nG5, nRst, $0C

OWZ1_Loop0F:
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0A
	dc.b	nA4, $06, nRst
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0E
	dc.b	nF5, $06, nRst
	smpsLoop            $00, $03, OWZ1_Loop0F
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0E
	dc.b	nF5, $06, nRst
	smpsAlterVol        $FD
	smpsCall            OWZ1_Call0E
	smpsNoteFill        $00
	dc.b	nF5, $4E
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsAlterVol        $FD
	smpsModSet          $0C, $01, $0B, $02
	smpsNoteFill        $04
	dc.b	nA4, $06, nBb4, nB4, nC5, nA4, nBb4, nB4, nC5, nD5, nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	smpsNoteFill        $04
	dc.b	nG5, $06, nF5, nAb5, nC5, nRst, nA4, nB4, nC5, nD5, nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $06, nRst, nG5, $04, nRst, $02, nF5, $18, nRst, $06, nB5
	dc.b	$04, nRst, $02, nC6, $35, nRst, $01
	smpsNoteFill        $04
	dc.b	nBb5, $06, nA5, nBb5, nRst, nA5, nAb5, nBb5, nRst, nG5, nFs5, nF5
	smpsNoteFill        $00
	dc.b	nEb5, $0A, nRst, $02, nCs5, $04, nRst, $02, nC5, $1E, nRst, $06
	smpsNoteFill        $04
	dc.b	nA4, $06, nC5, nD5, nEb5, $0C, nD5, $06, nC5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nRst, $18, nC5, $06, nD5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nD5
	smpsNoteFill        $00
	dc.b	nC5, $0C, nRst, $24, nRst, $06
	smpsAlterVol        $03
	smpsModOff
	smpsSetvoice        $02
	smpsAlterNote       $03
	dc.b	nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsCall            OWZ1_Call06
	dc.b	nA4, $06, nRst, $0C
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterPitch      $04
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $FC
	dc.b	nC5, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $FF
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $01
	smpsModSet          $24, $02, $20, $97
	smpsCall            OWZ1_Call07
	smpsJump            OWZ1_Loop0E

OWZ1_Call05:
	smpsNoteFill        $04
	dc.b	nC4, $06, nEb4, nG4, nRst, nF4, nRst, nC4, nRst, nEb4, nRst
	smpsReturn

OWZ1_Call06:
	smpsAlterVol        $14

OWZ1_Loop1E:
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterVol        $FD
	smpsLoop            $00, $08, OWZ1_Loop1E
	dc.b	nBb4, $04
	smpsAlterVol        $04
	smpsReturn

OWZ1_Call07:
	dc.b	nAb5, $24

OWZ1_Loop1D:
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $0C
	smpsLoop            $00, $05, OWZ1_Loop1D
	smpsModOff
	smpsAlterVol        $EC
	smpsReturn

OWZ1_Call0D:
	dc.b	nC5, $06, smpsNoAttack, nC5, $60, smpsNoAttack, $30, smpsNoAttack, $2A
	smpsNoteFill        $04
	dc.b	nF4, $06, nEb5, nRst, nEb5, nRst, nD5, nD5, nRst, nC5, nRst, nC5
	dc.b	nRst, nC5
	smpsReturn

OWZ1_Call0B:
	dc.b	nC5, $06, nC5, nC5, nC5, nRst, nD5, nRst, nD5, nRst, nD5, $02
	dc.b	nRst, $01, nE5, $02, nRst, $01, nF5, $09, nE5, $08, nD5, $07
	smpsReturn

OWZ1_Call0A:
	dc.b	nA4, $06, nA4, nA4, nA4, nRst, nBb4, nRst, nBb4, nRst, nBb4, $02
	dc.b	nRst, $01, nC5, $02, nRst, $01, nD5, $09, nC5, $08, nBb4, $07
	smpsReturn

OWZ1_Call0E:
	dc.b	nF5, $06, nF5, nF5, nF5, nRst, nE5, nRst, nE5, nRst, nE5, $02
	dc.b	nRst, $01, nF5, $02, nRst, $01, nG5, $09, nF5, $08, nE5, $07
	smpsReturn

; FM5 Data
OWZ1_FM5:
	smpsSetvoice        $02
	smpsAlterNote       $FC
	dc.b	nRst, $04
	smpsAlterVol        $0A
	dc.b	nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsNoteFill        $00
	smpsAlterPitch      $FD
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $03
	dc.b	nF4, $06, nRst, $0C, nRst, $04
	smpsAlterVol        $0A
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsAlterPitch      $0C
	smpsNoteFill        $00
	smpsCall            OWZ1_Call06
	dc.b	nA4, $06, nRst, $0C, nRst, $04
	smpsAlterVol        $0A
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsNoteFill        $00
	smpsAlterPitch      $07
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $F9
	smpsAlterPitch      $F6
	smpsModSet          $24, $02, $20, $97
	smpsCall            OWZ1_Call07
	smpsAlterPitch      $0A

OWZ1_Loop0A:
	smpsCall            OWZ1_Call08
	smpsLoop            $00, $02, OWZ1_Loop0A
	smpsAlterPitch      $FE
	smpsCall            OWZ1_Call08
	smpsAlterPitch      $02

OWZ1_Loop0B:
	smpsCall            OWZ1_Call08
	smpsLoop            $00, $03, OWZ1_Loop0B
	smpsAlterPitch      $FE
	smpsCall            OWZ1_Call08
	smpsAlterPitch      $02
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst, nC4, nRst
	smpsPan             panLeft, $00
	smpsNoteFill        $00
	dc.b	nC4, $11, nRst, $01, nF4, $06, nRst, nG4, $05, nRst, $01
	smpsCall            OWZ1_Call09
	dc.b	nG4, nRst
	smpsNoteFill        $00
	dc.b	nF4, $06, nRst, $0C, nC4, $06, nRst, $0C, nC4, $0C, nRst, $06
	smpsNoteFill        $04
	dc.b	nC4, $06, nC4, nRst, nF4, nRst, nG4
	smpsNoteFill        $00
	smpsCall            OWZ1_Call09
	dc.b	nF4, $06, nG4, nA4, nRst, nF4, nG4, nA4, nRst, nF4, nG4, nA4
	dc.b	$08, nBb4, nC5, nC5, nD5, nE5
	smpsPan             panCenter, $00
	dc.b	nRst, $0C

OWZ1_Loop0C:
	smpsCall            OWZ1_Call0A
	dc.b	nA4, $06, nRst
	smpsAlterPitch      $F9
	smpsCall            OWZ1_Call0B
	smpsAlterPitch      $07
	dc.b	nF4, $06, nRst
	smpsCall            OWZ1_Call0A
	dc.b	nA4, $06, nRst
	smpsCall            OWZ1_Call0C
	dc.b	nC5, $06, nRst
	smpsLoop            $00, $03, OWZ1_Loop0C
	smpsCall            OWZ1_Call0A
	dc.b	nA4, $06, nRst
	smpsCall            OWZ1_Call0C
	dc.b	nC5, $06, nRst
	smpsAlterVol        $FD
	smpsCall            OWZ1_Call0C
	smpsNoteFill        $00
	dc.b	nBb4, $60
	smpsAlterVol        $03
	smpsAlterNote       $00
	smpsSetvoice        $01

OWZ1_Loop0D:
	smpsNoteFill        $03
	dc.b	nRst, $0C, nC5, $12, nC5, nC5
	smpsNoteFill        $00
	dc.b	nC5, nBb4, $0C
	smpsNoteFill        $03
	dc.b	nRst, nC5, $06, nRst, $0C, nC5, $06, nRst
	smpsNoteFill        $00
	dc.b	nC5, $0C
	smpsNoteFill        $03
	dc.b	nBb4, $06, nC5, nBb4, nC5, nD5
	smpsNoteFill        $00
	dc.b	nEb5, $0C
	smpsLoop            $00, $03, OWZ1_Loop0D
	dc.b	nF5, $04
	smpsAlterNote       $FC
	smpsSetvoice        $02
	smpsAlterVol        $0A
	dc.b	nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsNoteFill        $00
	smpsAlterPitch      $FD
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $03
	dc.b	nF4, $06, nRst, $0C, nRst, $04
	smpsAlterVol        $0A
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsCall            OWZ1_Call06
	dc.b	nA4, $06, nRst, $0C, nRst, $04
	smpsAlterVol        $0A
	smpsCall            OWZ1_Call05
	dc.b	nG4, $02
	smpsAlterVol        $F6
	smpsNoteFill        $00
	smpsAlterPitch      $07
	smpsCall            OWZ1_Call06
	smpsAlterPitch      $F9
	smpsAlterPitch      $F6
	smpsModSet          $24, $02, $20, $97
	smpsCall            OWZ1_Call07
	smpsAlterPitch      $0A
	smpsJump            OWZ1_Loop0A

OWZ1_Call08:
	smpsNoteFill        $04
	dc.b	nRst, $0C, nC4, $06, nC4, nRst, nC4, nRst
	smpsNoteFill        $00
	dc.b	nC4, $30, smpsNoAttack, $06
	smpsReturn

OWZ1_Call09:
	dc.b	nA4, $66, smpsNoAttack, $60
	smpsNoteFill        $04
	dc.b	nC5, $06, nRst, nC5, nRst, nBb4, nBb4, nRst, nA4, nRst, nA4, nRst
	dc.b	nA4, nG4, nRst
	smpsReturn

OWZ1_Call0C:
	dc.b	nC5, $06, nC5, nC5, nC5, nRst, nC5, nRst, nC5, nRst, nC5, $02
	dc.b	nRst, $01, nD5, $02, nRst, $01, nE5, $09, nC5, $08, nC5, $07
	smpsReturn

; FM6 Data
OWZ1_FM6:
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst, nRst, $30, nRst, $18, nRst, $0C, nC4, $0B, nRst
	dc.b	$01
	smpsAlterPitch      $FD
	smpsModSet          $24, $02, $3A, $33
	smpsCall            OWZ1_Call02
	smpsAlterPitch      $03
	smpsAlterPitch      $0C

OWZ1_Loop06:
	smpsAlterVol        $04
	smpsSetvoice        $01
	dc.b	nRst, $03
	smpsCall            OWZ1_Call03
	dc.b	nC5, $41, nRst, $01
	smpsNoteFill        $05
	dc.b	nA4, $06, nRst, nBb4, nC5, nBb4
	smpsNoteFill        $00
	dc.b	nA4, $0C, nRst, $06, nF4, $0C, nRst, $06, nC4, $18, nRst, $06
	smpsNoteFill        $05
	dc.b	nC4, $02, nRst, $01
	smpsAlterVol        $FC
	smpsNoteFill        $05
	dc.b	nC4, $0C, nD4, nRst, nEb4, $03, nRst, nEb4, $0C, nEb4, nEb4, nEb4
	dc.b	nEb4, $03, nRst, nD4, $0C, nD4
	smpsNoteFill        $00
	dc.b	nC4, $0C, nRst, $06, nA3, $0C, nRst, $06, nF3, $1E, nRst, $06
	smpsLoop            $00, $02, OWZ1_Loop06
	dc.b	nRst, $06, nRst, $03
	smpsAlterVol        $04
	smpsNoteFill        $04
	dc.b	nC4, $06, nD4, nC4
	smpsPan             panRight, $00
	dc.b	nF4, $18, nEb4
	smpsNoteFill        $00
	dc.b	nD4, $11, nRst, $01
	smpsNoteFill        $04
	dc.b	nC4, $06, nRst, nC4, nD4, nRst
	smpsNoteFill        $0C
	dc.b	nD4, $03, nEb4, $0F, nD4, $03, nEb4, $0F
	smpsNoteFill        $00
	dc.b	nD4, $03, nEb4, $14, nRst, $01
	smpsNoteFill        $04
	dc.b	nD4, $0C, nC4, nBb3
	smpsNoteFill        $00
	dc.b	nA3, $11, nRst, $01, nBb3, $03, nB3, nC4, $03, nRst, nRst, $06
	dc.b	nF3, $0C, smpsNoAttack, $60, smpsNoAttack, $18, nRst, $06
	smpsNoteFill        $04
	dc.b	nC4, $06, nD4, nC4, $03
	smpsAlterVol        $FC
	dc.b	nF4, $18, nEb4
	smpsNoteFill        $00
	dc.b	nD4, $11, nRst, $01
	smpsNoteFill        $04
	dc.b	nC4, $06, nRst, nC4, nD4, nRst
	smpsNoteFill        $0C
	dc.b	nD4, $03, nEb4, $0F, nD4, $03, nEb4, $0F
	smpsNoteFill        $00
	dc.b	nD4, $03, nEb4, $14, nRst, $01
	smpsNoteFill        $04
	dc.b	nD4, $0C, nC4, nBb3
	smpsNoteFill        $00
	dc.b	nA3, $10, nRst, $02, nF4, $03, nRst, $03, nRst, $0C, nC4, $6C
	dc.b	nRst, $18, nRst, $03
	smpsAlterVol        $04

OWZ1_Loop07:
	smpsCall            OWZ1_Call03
	dc.b	nC5, $60, smpsNoAttack, $30, nRst, $18
	smpsCall            OWZ1_Call04
	dc.b	nD5, $23, nRst, $01, nC5, $23, nRst, $01, nBb4, $17, nRst, $01
	dc.b	nA4, $0B, nRst, $01, nC5, $30, nRst, $0C
	smpsLoop            $00, $02, OWZ1_Loop07
	dc.b	nRst, $04
	smpsCall            OWZ1_Call03
	dc.b	nC5, $48

OWZ1_Loop08:
	dc.b	smpsNoAttack, $0C
	smpsAlterVol        $03
	smpsLoop            $00, $06, OWZ1_Loop08
	smpsAlterVol        $EE
	dc.b	nRst, $04, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $02
	smpsAlterPitch      $F4
	dc.b	nF5, nE5, nD5, nC5, nBb4, nA4, nG4, nA4, $04, nC5, nA4, nC5
	dc.b	nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5, nA4, nC5

OWZ1_Loop09:
	dc.b	nA4, $04, nC5
	smpsAlterVol        $02
	smpsLoop            $00, $0A, OWZ1_Loop09
	dc.b	nRst, $06
	smpsAlterVol        $EC
	dc.b	nC4, nD4, nE4, nF4, nG4, nA4, nBb4, nA4, $12, nF4, nD4, $0C
	dc.b	nC4, $30, smpsNoAttack, $06, nRst, $06, nF4, nF4, nF4, nF4, nRst, nE4
	dc.b	nRst, nE4, nRst, nF4, nG4, $08, nF4, nE4, nF4, $60, smpsNoAttack, $30
	dc.b	smpsNoAttack, $0D
	smpsAlterPitch      $0C
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	dc.b	nRst, $09
	smpsAlterPitch      $F4
	smpsSetvoice        $06
	smpsAlterVol        $10
	smpsModSet          $0C, $01, $0B, $02
	smpsNoteFill        $04
	dc.b	nRst, $06, nA4, $06, nBb4, nB4, nC5, nA4, nBb4, nB4, nC5, nD5
	dc.b	nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	smpsNoteFill        $04
	dc.b	nG5, $06, nF5, nAb5, nC5, nRst, nA4, nB4, nC5, nD5, nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $06, nRst, nG5, $04, nRst, $02, nF5, $18, nRst, $06, nB5
	dc.b	$04, nRst, $02, nC6, $35, nRst, $01
	smpsNoteFill        $04
	dc.b	nBb5, $06, nA5, nBb5, nRst, nA5, nAb5, nBb5, nRst, nG5, nFs5, nF5
	smpsNoteFill        $00
	dc.b	nEb5, $0A, nRst, $02, nCs5, $04, nRst, $02, nC5, $1E, nRst, $06
	smpsNoteFill        $04
	dc.b	nA4, $06, nC5, nD5, nEb5, $0C, nD5, $06, nC5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nRst, $18, nC5, $06, nD5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nD5
	smpsNoteFill        $00
	dc.b	nC5, $0C, nRst, $21
	smpsAlterPitch      $0C
	smpsAlterVol        $F0
	smpsSetvoice        $02
	dc.b	nRst, $60, nRst, nRst, $48, nRst, $0C, nC4, $0B, nRst, $01
	smpsAlterPitch      $FD
	smpsModSet          $24, $02, $3A, $33
	smpsCall            OWZ1_Call02
	smpsAlterPitch      $03
	smpsJump            OWZ1_Loop06

; PSG1 Data
OWZ1_PSG1:
	smpsPSGvoice        fTone_0D
	dc.b	nRst, $03, nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsCall            OWZ1_Call15
	dc.b	nA4, $06, nRst, $0C
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterPitch      $04
	smpsCall            OWZ1_Call15
	smpsAlterPitch      $FC
	dc.b	nC5, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $FF
	smpsCall            OWZ1_Call15
	smpsAlterPitch      $01
	smpsCall            OWZ1_Call07
	dc.b	nRst, $05

OWZ1_Loop1B:
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst
	smpsNoteFill        $00
	dc.b	nF4, $36
	smpsLoop            $00, $07, OWZ1_Loop1B
	smpsNoteFill        $04
	dc.b	nRst, $0C, nF4, $06, nF4, nRst, nF4, nRst, nF4, nRst
	smpsNoteFill        $00
	dc.b	nF4, $11, nRst, $01, nA4, $06, nRst, nBb4, $05, nRst, $01
	smpsCall            OWZ1_Call0D
	dc.b	nBb4, $06, nRst, nBb4, nRst
	smpsNoteFill        $00
	dc.b	nA4, $06, nRst, $0C, nF4, $06, nRst, $0C, nEb4, $0C, nRst, $06
	dc.b	nF4, $04, nRst, $02, nF4, $06, nRst, nA4, nRst, nBb4, $04, nRst
	dc.b	$02
	smpsCall            OWZ1_Call0D
	dc.b	nBb4, $06, nRst, nA4, nBb4, nC5, nRst, nA4, nBb4, nC5, nRst, nA4
	dc.b	nBb4, nC5, $08, nD5, nE5, nE5, nF5, nG5, nRst, $0C

OWZ1_Loop1C:
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0A
	dc.b	nA4, $06, nRst
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0E
	dc.b	nF5, $06, nRst
	smpsLoop            $00, $03, OWZ1_Loop1C
	smpsCall            OWZ1_Call0B
	dc.b	nC5, $06, nRst
	smpsCall            OWZ1_Call0E
	dc.b	nF5, $06, nRst
	smpsPSGAlterVol     $FD
	smpsCall            OWZ1_Call0E
	smpsNoteFill        $00
	dc.b	nF5, $4E
	smpsPSGAlterVol     $03
	dc.b	nRst, $05
	smpsNoteFill        $04
	dc.b	nA4, $06, nBb4, nB4, nC5, nA4, nBb4, nB4, nC5, nD5, nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02, nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsNoteFill        $04
	dc.b	nG5, $06, nF5, nAb5, nC5, nRst, nA4, nB4, nC5, nD5, nF5
	smpsNoteFill        $00
	dc.b	nAb5, $0A, nRst, $02, nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	dc.b	nG5, $06, nRst, nG5, $04, nRst, $02, nF5, $18, nRst, $06, nB5
	dc.b	$04, nRst, $02, nC6, $35, nRst, $01
	smpsNoteFill        $04
	dc.b	nBb5, $06, nA5, nBb5, nRst, nA5, nAb5, nBb5, nRst, nG5, nFs5, nF5
	smpsNoteFill        $00
	dc.b	nEb5, $0A, nRst, $02, nCs5, $04, nRst, $02, nC5, $1E, nRst, $06
	smpsNoteFill        $04
	dc.b	nA4, $06, nC5, nD5, nEb5, $0C, nD5, $06, nC5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nRst, $18, nC5, $06, nD5, nEb5, $0C, nD5
	dc.b	$06, nC5, nEb5, nF5, nD5
	smpsNoteFill        $00
	dc.b	nC5, $0C, nRst, $20, nF4, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsCall            OWZ1_Call15
	dc.b	nA4, $06, nRst, $0C
	smpsAlterPitch      $F4
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterPitch      $04
	smpsCall            OWZ1_Call15
	smpsAlterPitch      $FC
	dc.b	nC5, $06, nRst, $0C
	smpsCall            OWZ1_Call05
	dc.b	nG4, $06
	smpsNoteFill        $00
	smpsAlterPitch      $FF
	smpsCall            OWZ1_Call15
	smpsAlterPitch      $01
	smpsCall            OWZ1_Call07
	dc.b	nRst, $05
	smpsJump            OWZ1_Loop1B

OWZ1_Call15:
	smpsPSGAlterVol     $0A

OWZ1_Loop20:
	dc.b	nBb4, $01, smpsNoAttack
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $08, OWZ1_Loop20
	dc.b	nBb4, $04
	smpsPSGAlterVol     $06
	smpsReturn

; PSG2 Data
OWZ1_PSG2:
	dc.b	nRst, $60, nRst, nRst, nRst

OWZ1_Loop16:
	dc.b	nRst, $60
	smpsLoop            $00, $08, OWZ1_Loop16

OWZ1_Loop17:
	dc.b	nRst, $60
	smpsLoop            $00, $08, OWZ1_Loop17

OWZ1_Loop18:
	dc.b	nRst, $60
	smpsLoop            $00, $10, OWZ1_Loop18

OWZ1_Loop19:
	smpsPSGvoice        fTone_04
	smpsNoteFill        $03
	dc.b	nRst, $0C, nA4, $12, nA4, nA4
	smpsNoteFill        $00
	dc.b	nA4, nG4, $0C
	smpsNoteFill        $03
	dc.b	nRst, nA4, $06, nRst, $0C, nA4, $06, nRst
	smpsNoteFill        $00
	dc.b	nA4, $0C
	smpsNoteFill        $03
	dc.b	nA4, $06, nA4, nA4, nA4, nBb4
	smpsNoteFill        $00
	dc.b	nC5, $0C
	smpsLoop            $00, $03, OWZ1_Loop19
	dc.b	nC5, $04, nRst, $5C

OWZ1_Loop1A:
	dc.b	nRst, $60
	smpsLoop            $00, $03, OWZ1_Loop1A
	smpsJump            OWZ1_Loop16

; PSG3 Data
OWZ1_PSG3:
	smpsPSGform         $E7

OWZ1_Jump02:
	smpsNoteFill        $02
	dc.b	nMaxPSG, $06, nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsJump            OWZ1_Jump02

; DAC Data
OWZ1_DAC:
	dc.b	dHiTimpani, $18, nRst, $48
	smpsLoop            $00, $03, OWZ1_DAC
	smpsCall            OWZ1_Call00

OWZ1_Loop00:
	smpsCall            OWZ1_Call01
	smpsLoop            $00, $0F, OWZ1_Loop00
	smpsCall            OWZ1_Call00

OWZ1_Loop01:
	dc.b	dHiTom, $30, dHiTom, $30
	smpsLoop            $00, $0F, OWZ1_Loop01
	smpsCall            OWZ1_Call00

OWZ1_Loop02:
	smpsCall            OWZ1_Call01
	smpsLoop            $00, $06, OWZ1_Loop02
	smpsJump            OWZ1_DAC

OWZ1_Call00:
	dc.b	dSnare, $06, dKick, $06, dKick, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dKick, $06, dKick, $02, dKick, $02, dKick, $02, dSnare, $06, dKick, $0C
	dc.b	dKick, $06, dKick, $06, dKick, $06, dSnare, $06, dKick, $06
	smpsReturn

OWZ1_Call01:
	dc.b	dHiTom, $0C, dMidTom, $06, dLowTom, $06, dSnare, $0C, dMidTom, $06, dLowTom, $06
	dc.b	dFloorTom, $06, dLowTom, $06, dFloorTom, $06, dLowTom, $06, dSnare, $0C, dFloorTom, $06
	dc.b	dLowTom, $06
	smpsReturn

; FM1 Data
OWZ1_FM1:
	dc.b	nRst, $60
	smpsLoop            $00, $03, OWZ1_FM1
	dc.b	nC0, $18, $18, $18, $18

OWZ1_Loop03:
	dc.b	nRst, $60
	smpsLoop            $00, $0F, OWZ1_Loop03
	dc.b	nC0, $18, $18, $18, $18

OWZ1_Loop04:
	dc.b	nC0, $18, $12, $06, $0C, $0C, $0C, $0C
	smpsLoop            $00, $0F, OWZ1_Loop04
	dc.b	nC0, $18, $18, $18, $18

OWZ1_Loop05:
	dc.b	nRst, $60
	smpsLoop            $00, $06, OWZ1_Loop05
	smpsJump            OWZ1_FM1

OWZ1_Voices:
;	Voice $00
;	$3B
;	$31, $41, $70, $31, 	$DF, $9F, $5F, $9F, 	$04, $0C, $0E, $08
;	$0F, $0B, $0D, $05, 	$07, $07, $07, $07, 	$14, $19, $27, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $04, $03
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $0E, $0C, $04
	smpsVcDecayRate2    $05, $0D, $0B, $0F
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $19, $14

;	Voice $01
;	$07
;	$00, $01, $02, $04, 	$54, $54, $54, $54, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$07, $07, $07, $07, 	$89, $8B, $8C, $8D
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $14, $14, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $0D, $0C, $0B, $09

;	Voice $02
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1C, $45, $30, $80
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
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $30, $45, $1C

;	Voice $03
;	$04
;	$3C, $77, $75, $33, 	$1F, $1F, $1F, $1F, 	$0C, $0D, $0C, $0D
;	$01, $09, $01, $09, 	$61, $96, $61, $96, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $03, $05, $07, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0C, $0D, $0C
	smpsVcDecayRate2    $09, $01, $09, $01
	smpsVcDecayLevel    $09, $06, $09, $06
	smpsVcReleaseRate   $06, $01, $06, $01
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $04
;	$33
;	$0B, $1E, $04, $02, 	$3F, $3F, $1A, $3F, 	$13, $03, $10, $10
;	$0F, $02, $11, $12, 	$2F, $7F, $1C, $39, 	$10, $37, $10, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $01, $00
	smpsVcCoarseFreq    $02, $04, $0E, $0B
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $3F, $1A, $3F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $03, $13
	smpsVcDecayRate2    $12, $11, $02, $0F
	smpsVcDecayLevel    $03, $01, $07, $02
	smpsVcReleaseRate   $09, $0C, $0F, $0F
	smpsVcTotalLevel    $00, $10, $37, $10

;	Voice $05
;	$3A
;	$01, $02, $01, $43, 	$12, $5F, $12, $4F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$77, $37, $07, $5A, 	$18, $26, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $01
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $0F, $12, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $0A, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $26, $18

;	Voice $06
;	$3A
;	$01, $02, $01, $43, 	$12, $5F, $12, $4F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$77, $37, $07, $5A, 	$18, $26, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $01
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $0F, $12, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $0A, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $26, $18

;	Voice $07
;	$3A
;	$01, $02, $01, $43, 	$12, $5F, $12, $36, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$77, $37, $07, $5A, 	$18, $26, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $01
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $36, $12, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $0A, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $26, $18

;	Voice $08
;	$3B
;	$31, $41, $70, $31, 	$DF, $9F, $5F, $9F, 	$00, $00, $00, $00
;	$0E, $08, $0A, $05, 	$07, $07, $07, $17, 	$14, $19, $27, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $04, $03
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $05, $0A, $08, $0E
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $19, $14

