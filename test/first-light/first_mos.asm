		
		

		.org 0xC000

		.incbin "font.bin"

;************** VIDEO ULA CONTROL REGISTER SETTINGS ***********************

_ULA_SETTINGS:		.byte	0x9c				; 10011100
			.byte	0xd8				; 11011000
			.byte	0xf4				; 11110100
			.byte	0x9c				; 10011100
			.byte	0x88				; 10001000
			.byte	0xc4				; 11000100
			.byte	0x88				; 10001000
			.byte	0x4b				; 01001011



;************* 6845 REGISTERS 0-11 FOR SCREEN TYPE 0 - MODES 0-2 *********

_CRTC_REG_TAB:		.byte	0x7f				; 0 Horizontal Total	 =128
			.byte	0x50				; 1 Horizontal Displayed =80
			.byte	0x62				; 2 Horizontal Sync	 =&62
			.byte	0x28				; 3 HSync Width+VSync	 =&28  VSync=2, HSync Width=8
			.byte	0x26				; 4 Vertical Total	 =38
			.byte	0x00				; 5 Vertial Adjust	 =0
			.byte	0x20				; 6 Vertical Displayed	 =32
			.byte	0x22				; 7 VSync Position	 =&22
			.byte	0x01				; 8 Interlace+Cursor	 =&01  Cursor=0, Display=0, Interlace=Sync
			.byte	0x07				; 9 Scan Lines/Character =8
			.byte	0x67				; 10 Cursor Start Line	  =&67	Blink=On, Speed=1/32, Line=7
			.byte	0x08				; 11 Cursor End Line	  =8


;************* 6845 REGISTERS 0-11 FOR SCREEN TYPE 1 - MODE 3 ************

			.byte	0x7f				; 0 Horizontal Total	 =128
			.byte	0x50				; 1 Horizontal Displayed =80
			.byte	0x62				; 2 Horizontal Sync	 =&62
			.byte	0x28				; 3 HSync Width+VSync	 =&28  VSync=2, HSync=8
			.byte	0x1e				; 4 Vertical Total	 =30
			.byte	0x02				; 5 Vertical Adjust	 =2
			.byte	0x19				; 6 Vertical Displayed	 =25
			.byte	0x1b				; 7 VSync Position	 =&1B
			.byte	0x01				; 8 Interlace+Cursor	 =&01  Cursor=0, Display=0, Interlace=Sync
			.byte	0x09				; 9 Scan Lines/Character =10
			.byte	0x67				; 10 Cursor Start Line	  =&67	Blink=On, Speed=1/32, Line=7
			.byte	0x09				; 11 Cursor End Line	  =9


;************ 6845 REGISTERS 0-11 FOR SCREEN TYPE 2 - MODES 4-5 **********

			.byte	0x3f				; 0 Horizontal Total	 =64
			.byte	0x28				; 1 Horizontal Displayed =40
			.byte	0x31				; 2 Horizontal Sync	 =&31
			.byte	0x24				; 3 HSync Width+VSync	 =&24  VSync=2, HSync=4
			.byte	0x26				; 4 Vertical Total	 =38
			.byte	0x00				; 5 Vertical Adjust	 =0
			.byte	0x20				; 6 Vertical Displayed	 =32
			.byte	0x22				; 7 VSync Position	 =&22
			.byte	0x01				; 8 Interlace+Cursor	 =&01  Cursor=0, Display=0, Interlace=Sync
			.byte	0x07				; 9 Scan Lines/Character =8
			.byte	0x67				; 10 Cursor Start Line	  =&67	Blink=On, Speed=1/32, Line=7
			.byte	0x08				; 11 Cursor End Line	  =8


;********** 6845 REGISTERS 0-11 FOR SCREEN TYPE 3 - MODE 6 ***************

			.byte	0x3f				; 0 Horizontal Total	 =64
			.byte	0x28				; 1 Horizontal Displayed =40
			.byte	0x31				; 2 Horizontal Sync	 =&31
			.byte	0x24				; 3 HSync Width+VSync	 =&24  VSync=2, HSync=4
			.byte	0x1e				; 4 Vertical Total	 =30
			.byte	0x02				; 5 Vertical Adjust	 =0
			.byte	0x19				; 6 Vertical Displayed	 =25
			.byte	0x1b				; 7 VSync Position	 =&1B
			.byte	0x01				; 8 Interlace+Cursor	 =&01  Cursor=0, Display=0, Interlace=Sync
			.byte	0x09				; 9 Scan Lines/Character =10
			.byte	0x67				; 10 Cursor Start Line	  =&67	Blink=On, Speed=1/32, Line=7
			.byte	0x09				; 11 Cursor End Line	  =9


;********* 6845 REGISTERS 0-11 FOR SCREEN TYPE 4 - MODE 7 ****************

_CRTC_REG_TAB_mo7:
			.byte	0x3f				; 0 Horizontal Total	 =64
			.byte	0x28				; 1 Horizontal Displayed =40
			.byte	0x33				; 2 Horizontal Sync	 =&33  Note: &31 is a better value
			.byte	0x24				; 3 HSync Width+VSync	 =&24  VSync=2, HSync=4
			.byte	0x1e				; 4 Vertical Total	 =30
			.byte	0x02				; 5 Vertical Adjust	 =2
			.byte	0x19				; 6 Vertical Displayed	 =25
			.byte	0x1b				; 7 VSync Position	 =&1B
			.byte	0x93				; 8 Interlace+Cursor	 =&93  Cursor=2, Display=1, Interlace=Sync+Video
			.byte	0x12				; 9 Scan Lines/Character =19
			.byte	0x72				; 10 Cursor Start Line	  =&72	Blink=On, Speed=1/32, Line=18
			.byte	0x13				; 11 Cursor End Line	  =19


		.equ	CRTC_A, 0xFE00
		.equ	CRTC_D, 0xFE01
		.equ	ULA_CTL, 0xFE20
		.equ	SCR_START_CRTC, 0x2800

handle_res:	


		ldx	#_CRTC_REG_TAB_mo7+11
		ldab	#11
crlp1:		stab	CRTC_A
		ldaa	0,X
		staa	CRTC_D
		dex
		decb
		bpl	crlp1

		ldaa	_ULA_SETTINGS+7
		staa	ULA_CTL

		ldaa	#SCR_START_CRTC%256
		ldab	#13
		stab	CRTC_A
		staa	CRTC_D
		ldab	#15
		stab	CRTC_A
		staa	CRTC_D
		ldaa	#SCR_START_CRTC/256
		ldab	#12
		stab	CRTC_A
		staa	CRTC_D
		ldab	#14
		stab	CRTC_A
		staa	CRTC_D


		ldx	#0x7C00
		ldaa	#32
clslp:		staa	0,X
		inx
		cpx	#0x8000
		bne	clslp

		ldx	#0x7C00
		stx	0
		ldx	#msg
		stx	2
prlp:		ldx	2
		ldaa	0,X
		beq	done
		inx
		stx	2
		ldx	0
		staa	0,X
		inx
		stx	0
		jmp	prlp
done:

here:		jmp	here

msg:		.byte "Hello Stardot - 6800 first light",0




		.org 0x3FF8
hw_irq:		.word	handle_res
hw_swi:		.word	handle_res
hw_nmi:		.word	handle_res
hw_res:		.word	handle_res