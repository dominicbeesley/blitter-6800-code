; Dominic Beesley December 1 Jan 2022
		
		.area ZEROPAGE (ABS,PAG)
		.setdp

CC_N			= 0x8
CC_Z			= 0x4
CC_V			= 0x2
CC_C			= 0x1

		; user variables
		.org	0x00
zp_ptr1:	.ds	2
zp_ptr2:	.ds	2
zp_ptr3:	.ds	2

		; mos variables
CRFS_LOAD		= 0xb0
CRFS_LOAD_HI		= 0xb1
CRFS_LOAD_VHI		= 0xb2
CRFS_LOAD_XHI		= 0xb3
CRFS_EXEC		= 0xb4
CRFS_EXEC_HI		= 0xb5
CRFS_NEXT_BLK		= 0xb6
CRFS_NEXT_BLK_HI	= 0xb7
CRFS_ERR_PTR		= 0xb8
CRFS_ERR_PTR_HI		= 0xb9
CRFS_BLOCK_FLAG		= 0xba
CRFS_OPTS		= 0xbb
CRFS_BLK_OFFSET		= 0xbc
CRFS_BLK_LAST		= 0xbd
CRFS_CRC_TMP		= 0xbe
CRFS_CRC_TMP_HI		= 0xbf

CRFS_BUFFER_FLAG	= 0xc0
CRFS_CRC_RESULT		= 0xc1
CRFS_PROGRESS		= 0xc2
CFS_HANDLE		= 0xc3
CRFS_TMP		= 0xc4
CFS_BAUD_RATE		= 0xc6
CFS_INTERBLOCK		= 0xc7
CRFS_OSFILE_PTR		= 0xc8
CRFS_OSFILE_PTR_HI	= 0xc9
CFS_SERIAL_CTRL		= 0xca
CRFS_CRC_BIT_CNT	= 0xcb
CRFS_FILE_SIZE		= 0xcc
CRFS_FILE_SIZE_HI	= 0xcd

VDU_STATUS		= 0xd0
VDU_G_PIX_MASK		= 0xd1
VDU_T_OR_MASK		= 0xd2
VDU_T_EOR_MASK		= 0xd3
VDU_G_OR_MASK		= 0xd4
VDU_G_EOR_MASK		= 0xd5
; endianness
VDU_G_MEM_HI		= 0xd6
VDU_G_MEM		= 0xd7
; endianness
VDU_TOP_SCAN_HI		= 0xd8
VDU_TOP_SCAN		= 0xd9
VDU_TMP1		= 0xda
VDU_TMP2		= 0xdb
VDU_TMP3		= 0xdc
VDU_TMP4		= 0xdd
VDU_TMP5		= 0xde
VDU_TMP6		= 0xdf
;endianness
VDU_ROW_MULT_HI		= 0xe0
VDU_ROW_MULT		= 0xe1
CRFS_STATUS		= 0xe2
CRFS_OPTIONS		= 0xe3
OSBYTE_PAR_3		= 0xe4
OSBYTE_PAR_2		= 0xe5
MOS_WS			= 0xe6
AUTO_REPEAT_TIMER	= 0xe7
OSW_0_PTR		= 0xe8
OSW_0_PTR_HI		= 0xe9
RS423_TIMEOUT		= 0xea
CRFS_ACTIVE		= 0xeb
KEYNUM_FIRST		= 0xec
KEYNUM_LAST		= 0xed

OSW_A			= 0xef
OSW_X			= 0xf0
OSW_Y			= 0xf1
TEXT_PTR		= 0xf2
TEXT_PTR_HI		= 0xf3
ROM_SELECT		= 0xf4
RFS_SELECT		= 0xf5
ROM_PTR			= 0xf6
ROM_PTR_HI		= 0xf7
MOS_WS_0		= 0xfa
MOS_WS_1		= 0xfb
IRQ_COPY_A		= 0xfc
ERR_MSG_PTR		= 0xfd
ERR_MSG_PTR_HI		= 0xfe
ESCAPE_FLAG		= 0xff

STACK			= 0x0100

VEC_USERV		= 0x0200
VEC_BRKV		= 0x0202
VEC_IRQ1V		= 0x0204
VEC_IRQ2V		= 0x0206
VEC_OSCLI		= 0x0208
VEC_OSBYTE		= 0x020a
VEC_OSWORD		= 0x020c
VEC_OSWRCH		= 0x020e
VEC_OSRDCH		= 0x0210
VEC_OSFILE		= 0x0212
VEC_OSARGS		= 0x0214
VEC_OSBGET		= 0x0216
VEC_OSBPUT		= 0x0218
VEC_OSGBPB		= 0x021a
VEC_OSFIND		= 0x021c
VEC_FSCV		= 0x021e
VEC_EVNTV		= 0x0220
VEC_UPTV		= 0x0222
VEC_NETV		= 0x0224
VEC_VDUV		= 0x0226
VEC_KEYV		= 0x0228
VEC_INSV		= 0x022a
VEC_REMV		= 0x022c
VEC_CNPV		= 0x022e
VEC_IND1V		= 0x0230
VEC_IND2V		= 0x0232
VEC_IND3V		= 0x0234

VEC_USERV		= 0x0200
VEC_BRKV		= 0x0202
VEC_IRQ1V		= 0x0204
VEC_IRQ2V		= 0x0206
VEC_OSCLI		= 0x0208
VEC_OSBYTE		= 0x020a
VEC_OSWORD		= 0x020c
VEC_OSWRCH		= 0x020e
VEC_OSRDCH		= 0x0210
VEC_OSFILE		= 0x0212
VEC_OSARGS		= 0x0214
VEC_OSBGET		= 0x0216
VEC_OSBPUT		= 0x0218
VEC_OSGBPB		= 0x021a
VEC_OSFIND		= 0x021c
VEC_FSCV		= 0x021e
VEC_EVNTV		= 0x0220
VEC_UPTV		= 0x0222
VEC_NETV		= 0x0224
VEC_VDUV		= 0x0226
VEC_KEYV		= 0x0228
VEC_INSV		= 0x022a
VEC_REMV		= 0x022c
VEC_CNPV		= 0x022e
VEC_IND1V		= 0x0230
VEC_IND2V		= 0x0232
VEC_IND3V		= 0x0234

; OSBYTE variables
OSB_BASE		= 0x0236
OSB_EXT_VEC		= 0x0238
OSB_ROM_TABLE		= 0x023a
OSB_KEY_TABLE		= 0x023c
OSB_VDU_TABLE		= 0x023e

OSB_CFS_TIMEOUT		= 0x0240
OSB_IN_STREAM		= 0x0241
OSB_KEY_SEM		= 0x0242
OSB_OSHWM_DEF		= 0x0243
OSB_OSHWM_CUR   	= 0x0244
OSB_RS423_MODE		= 0x0245
OSB_CHAR_EXPL		= 0x0246
OSB_CFSRFC_SW		= 0x0247
OSB_VIDPROC_CTL		= 0x0248
OSB_VIDPROC_PAL		= 0x0249
OSB_LAST_ROM		= 0x024a
OSB_BASIC_ROM		= 0x024b
OSB_ADC_CHAN		= 0x024c
OSB_ADC_MAX		= 0x024d
OSB_ADC_ACC		= 0x024e
OSB_RS423_USE		= 0x024f
OSB_RS423_CTL		= 0x0250
OSB_FLASH_TIME		= 0x0251
OSB_FLASH_SPC		= 0x0252
OSB_FLASH_MARK		= 0x0253
OSB_KEY_DELAY		= 0x0254
OSB_KEY_REPEAT		= 0x0255
OSB_EXEC_HND		= 0x0256
OSB_SPOOL_HND		= 0x0257
OSB_ESC_BRK		= 0x0258
OSB_KEY_DISABLE		= 0x0259
OSB_KEY_STATUS		= 0x025a
OSB_SER_BUF_EX		= 0x025b
OSB_SER_BUF_SUP		= 0x025c
OSB_SER_CAS_FLG		= 0x025d
OSB_ECONET_INT		= 0x025e
OSB_OSRDCH_INT		= 0x025f
OSB_OSWRCH_INT		= 0x0260
OSB_SPEECH_OFF		= 0x0261
OSB_SOUND_OFF		= 0x0262
OSB_BELL_CHAN		= 0x0263
OSB_BELL_ENV		= 0x0264
OSB_BELL_FREQ		= 0x0265
OSB_BELL_LEN		= 0x0266
OSB_BOOT_DISP		= 0x0267
OSB_SOFT_KEYLEN		= 0x0268
OSB_HALT_LINES		= 0x0269
OSB_VDU_QSIZE		= 0x026a
OSB_TAB			= 0x026b
OSB_ESCAPE		= 0x026c
OSB_CHAR_C0		= 0x026d
OSB_CHAR_D0		= 0x026e
OSB_CHAR_E0		= 0x026f
OSB_CHAR_F0		= 0x0270
OSB_CHAR_80		= 0x0271
OSB_CHAR_90		= 0x0272
OSB_CHAR_a0		= 0x0273
OSB_CHAR_b0		= 0x0274
OSB_ESC_ACTION		= 0x0275
OSB_ESC_EFFECTS		= 0x0276
OSB_UVIA_IRQ_M		= 0x0277
OSB_ACIA_IRQ_M		= 0x0278
OSB_SVIA_IRQ_M		= 0x0279
OSB_TUBE_FOUND		= 0x027a
OSB_SPCH_FOUND		= 0x027b
OSB_OUT_STREAM		= 0x027c
OSB_CURSOR_STAT		= 0x027d
OSB_KEYPAD_BASE		= 0x027e
OSB_SHADOW_RAM		= 0x027f
OSB_COUNTRY		= 0x0280
OSB_USER_FLAG		= 0x0281
OSB_SERPROC		= 0x0282
OSB_TIME_SWITCH		= 0x0283
OSB_SOFTKEY_FLG		= 0x0284
OSB_PRINT_DEST		= 0x0285
OSB_PRINT_IGN		= 0x0286
OSB_BRK_INT_JMP		= 0x0287
OSB_BRK_INT_LO		= 0x0288
OSB_BRK_INT_HI		= 0x0289
OSB_FA_UNUSED		= 0x028a
OSB_FB_UNUSED		= 0x028b
OSB_CUR_LANG		= 0x028c
OSB_LAST_BREAK		= 0x028d
OSB_RAM_PAGES		= 0x028e
OSB_STARTUP_OPT		= 0x028f

VDU_ADJUST		= 0x0290
VDU_INTERLACE		= 0x0291

TIME_VAL1_MSB		= 0x0292
TIME_VAL1_LSB		= 0x0296
TIME_VAL2_MSB		= 0x0297
TIME_VAL2_LSB		= 0x029b
COUNTER_MSB		= 0x029c
COUNTER_LSB		= 0x029f

ROM_TABLE		= 0x02a1

INKEY_TIMER		= 0x02b1
INKEY_TIMER_HI		= 0x02b2
OSW0_MAX_LINE		= 0x02b3
OSW0_MIN_CHAR		= 0x02b4
OSW0_MAX_CHAR		= 0x02b5

ADC_CHAN1_LO		= 0x02b6
ADC_CHAN2_LO		= 0x02b7
ADC_CHAN3_LO		= 0x02b8
ADC_CHAN4_LO		= 0x02b9
ADC_CHAN1_HI		= 0x02ba
ADC_CHAN2_HI		= 0x02bb
ADC_CHAN3_HI		= 0x02bc
ADC_CHAN4_HI		= 0x02bd
ADC_CHAN_FLAG		= 0x02be

EVENT_ENABLE		= 0x02bf

SOFTKEY_EX_PTR		= 0x02c9

KEY_REPEAT_CNT		= 0x02ca
KEY_ROLLOVER_1		= 0x02cb
KEY_ROLLOVER_2		= 0x02cd
SOUND_SEMAPHORE		= 0x02ce

BUFFER_0_BUSY		= 0x02cf
BUFFER_1_BUSY		= 0x02d0
BUFFER_2_BUSY		= 0x02d1
BUFFER_3_BUSY		= 0x02d2
BUFFER_4_BUSY		= 0x02d3
BUFFER_5_BUSY		= 0x02d4
BUFFER_6_BUSY		= 0x02d5
BUFFER_7_BUSY		= 0x02d6
BUFFER_8_BUSY		= 0x02d7

BUFFER_0_OUT		= 0x02d8
BUFFER_1_OUT		= 0x02d9
BUFFER_2_OUT		= 0x02da
BUFFER_3_OUT		= 0x02db
BUFFER_4_OUT		= 0x02dc
BUFFER_5_OUT		= 0x02dd
BUFFER_6_OUT		= 0x02de
BUFFER_7_OUT		= 0x02df
BUFFER_8_OUT		= 0x02e0

BUFFER_0_IN 		= 0x02e1
BUFFER_1_IN 		= 0x02e2
BUFFER_2_IN 		= 0x02e3
BUFFER_3_IN 		= 0x02e4
BUFFER_4_IN 		= 0x02e5
BUFFER_5_IN 		= 0x02e6
BUFFER_6_IN 		= 0x02e7
BUFFER_7_IN 		= 0x02e8
BUFFER_8_IN 		= 0x02e9

CFS_BLOCK_SZ		= 0x02ea
CFS_BLOCK_SZ_HI		= 0x02eb
CFS_BLOCK_FLAG		= 0x02ec
CFS_LAST_INPUT		= 0x02ed

OSFILE_CB		= 0x02ee
OSFILE_CB_1		= 0x02ef
OSFILE_CB_2		= 0x02f0
OSFILE_CB_3		= 0x02f1
OSFILE_CB_4		= 0x02f2
OSFILE_CB_5		= 0x02f3
OSFILE_CB_6		= 0x02f4
OSFILE_CB_7		= 0x02f5
OSFILE_CB_8		= 0x02f6
OSFILE_CB_9		= 0x02f7
OSFILE_CB_10		= 0x02f8
OSFILE_CB_11		= 0x02f9
OSFILE_CB_12		= 0x02fa
OSFILE_CB_13		= 0x02fb
OSFILE_CB_14		= 0x02fc
OSFILE_CB_15		= 0x02fd
OSFILE_CB_16		= 0x02fe
OSFILE_CB_17		= 0x02ff

VDU_VARS_BASE		= 0x0300
;endianness
VDU_G_WIN_L_HI		= 0x0300
VDU_G_WIN_L		= 0x0301
;endianness
VDU_G_WIN_B_HI		= 0x0302
VDU_G_WIN_B		= 0x0303
;endianness
VDU_G_WIN_R_HI		= 0x0304
VDU_G_WIN_R		= 0x0305
;endianness
VDU_G_WIN_T_HI		= 0x0306
VDU_G_WIN_T		= 0x0307
VDU_T_WIN_L		= 0x0308
VDU_T_WIN_B		= 0x0309
VDU_T_WIN_R		= 0x030a
VDU_T_WIN_T		= 0x030b

;endianness
VDU_G_ORG_XX_HI		= 0x030c
VDU_G_ORG_XX		= 0x030d
;endianness
VDU_G_ORG_YX_HI		= 0x030e
VDU_G_ORG_YX		= 0x030f
;endianness
VDU_G_CUR_XX_HI		= 0x0310
VDU_G_CUR_XX		= 0x0311
;endianness
VDU_G_CUR_YX_HI		= 0x0312
VDU_G_CUR_YX		= 0x0313

VDU_T_CURS_X		= 0x0318
VDU_T_CURS_Y		= 0x0319
VDU_G_CURS_SCAN		= 0x031a
VDU_QUEUE		= 0x031b
VDU_QUEUE_1		= 0x031c
VDU_QUEUE_2		= 0x031d
VDU_QUEUE_3		= 0x031e
VDU_QUEUE_4		= 0x031f
VDU_QUEUE_5		= 0x0320
VDU_QUEUE_6		= 0x0321
VDU_QUEUE_7		= 0x0322
VDU_QUEUE_8		= 0x0323

;endianness
VDU_G_CURS_H_HI		= 0x0324
VDU_G_CURS_H		= 0x0325
;endianness
VDU_G_CURS_V_HI		= 0x0326
VDU_G_CURS_V		= 0x0327

VDU_BITMAP_READ		= 0x0328
VDU_BITMAP_RD_1		= 0x0329
VDU_BITMAP_RD_2		= 0x032a
VDU_BITMAP_RD_3		= 0x032b
VDU_BITMAP_RD_4		= 0x032c
VDU_BITMAP_RD_5		= 0x032d
VDU_BITMAP_RD_6		= 0x032e
VDU_BITMAP_RD_7		= 0x032f
VDU_WORKSPACE		= 0x0330

	; note endianness
VDU_CRTC_CUR_HI		= 0x034a
VDU_CRTC_CUR		= 0x034b

	; note endianness
VDU_T_WIN_SZ_HI		= 0x034c
VDU_T_WIN_SZ		= 0x034d

VDU_PAGE		= 0x034e
VDU_BPC			= 0x034f
	; note endianness
VDU_MEM_HI		= 0x0350
VDU_MEM			= 0x0351
	; note endianness
VDU_BPR_HI		= 0x0352
VDU_BPR			= 0x0353

VDU_MEM_PAGES		= 0x0354
VDU_MODE		= 0x0355
VDU_MAP_TYPE		= 0x0356
VDU_T_FG		= 0x0357
VDU_T_BG		= 0x0358
VDU_G_FG		= 0x0359
VDU_G_BG		= 0x035a
VDU_P_FG		= 0x035b
VDU_P_BG		= 0x035c
; endianness
VDU_JUMPVEC_HI		= 0x035d
VDU_JUMPVEC		= 0x035e
VDU_CURS_PREV		= 0x035f
VDU_COL_MASK		= 0x0360
VDU_PIX_BYTE		= 0x0361
VDU_MASK_RIGHT		= 0x0362
VDU_MASK_LEFT		= 0x0363
VDU_TI_CURS_X		= 0x0364
VDU_TI_CURS_Y		= 0x0365
VDU_TTX_CURSOR		= 0x0366
VDU_FONT_FLAGS		= 0x0367
VDU_FONTLOC_20		= 0x0368
VDU_FONTLOC_40		= 0x0369
VDU_FONTLOC_60		= 0x036a
VDU_FONTLOC_80		= 0x036b
VDU_FONTLOC_A0		= 0x036c
VDU_FONTLOC_B0		= 0x036d
VDU_FONTLOC_C0		= 0x036e
VDU_PALETTE		= 0x036f

BPUT_FILENAME		= 0x0380
BPUT_LOAD_LO		= 0x038c
BPUT_LOAD_HI		= 0x038d
BPUT_LOAD_VHI		= 0x038e
BPUT_LOAD_XHI		= 0x038f
BPUT_EXEC_LO		= 0x0390
BPUT_EXEC_HI		= 0x0391
BPUT_EXEC_VHI		= 0x0392
BPUT_EXEC_XHI		= 0x0393
BPUT_BLK_NUM		= 0x0394
BPUT_BLK_NUM_HI		= 0x0395
BPUT_BLK_LEN		= 0x0396
BPUT_BLK_LEN_HI		= 0x0397
BPUT_BLK_FLAG		= 0x0398
BPUT_RFS_LO		= 0x0399
BPUT_RFS_HI		= 0x039a
BPUT_RFS_VHI		= 0x039b
BPUT_RFS_XHI		= 0x039c

CFS_BPUT_OFFSET		= 0x039d
CFS_BGET_OFFSET		= 0x039e
CFS_BGET_FILE		= 0x03a7

CFS_FILENAME		= 0x03b2
CFS_LOAD_LO		= 0x03be
CFS_LOAD_HI		= 0x03bf
CFS_LOAD_VHI		= 0x03c0
CFS_LOAD_XHI		= 0x03c1
CFS_EXEC_LO		= 0x03c2
CFS_EXEC_HI		= 0x03c3
CFS_EXEC_VHI		= 0x03c4
CFS_EXEC_XHI		= 0x03c5
CFS_BLK_NUM		= 0x03c6
CFS_BLK_NUM_HI		= 0x03c7
CFS_BLK_LEN		= 0x03c8
CFS_BLK_LEN_HI		= 0x03c9
CFS_BLK_FLAG		= 0x03ca
CFS_RFS_LO		= 0x03cb
CFS_RFS_HI		= 0x03cc
CFS_RFS_VHI		= 0x03cd
CFS_RFS_XHI		= 0x03ce
CFS_CRC			= 0x03cf
CFS_CRC_HI		= 0x03d0
SEQ_BLOCK_GAP		= 0x03d1
CFS_FIND_NAME		= 0x03d2
CFS_BLK_GET		= 0x03dd
CFS_BLK_GET_HI		= 0x03de
CFS_LAST_FLAGS		= 0x03df

BUFFER_KEYBOARD		= 0x03e0

TUBE_ENTRY		= 0x0400
TUBE_ENTRY_1		= 0x0403
TUBE_ENTRY_2		= 0x0406

; note these addresses are all offset by 4 bytes due to the fact that the sound irq and buffer 
; code indexes these as 4..7 as opposed to 0..3 of the SOUND/OSWORD 7 commands
; 
;.export SOUND_WORKSPACE	= 0x0800
SOUND_QUEUE_OCC		= 0x0804-4
SOUND_AMP_CUR		= 0x0808-4			; current amplitude of the playing sound
SOUND_AMP_PHASE_CUR	= 0x080C-4			; current amplitude phase of envelope 0..3
SOUND_AMP_BASE_PITCH	= 0x0810-4
SOUND_PITCH_PHASE_CUR	= 0x0814-4
SOUND_PITCH_PH_STEPS	= 0x0818-4
SOUND_DURATION		= 0x081C-4			; duration from SOUND command
SOUND_DURATION_SUB	= 0x0820-4			; counts down from 5..0 to give 50ms per duration above
SOUND_ENVELOPE_OFFS	= 0x0824-4			; offset into envelope or -1 for no envelope
SOUND_ENV_STEPREPEAT	= 0x0828-4			; step length, b7=repeat flag
SOUND_SYNC_FLAG		= 0x082C-4
SOUND_SYNC_HOLD_PARAM	= 0x0830-4
SOUND_PITCH_SETTING	= 0x0834-4
SOUND_PITCH_DEV		= 0x0838-4

SOUND_SYNC_CHANS	= 0x0838
SOUND_AMP_STEP		= 0x0839
SOUND_AMP_TARGET	= 0x083a
SOUND_SYNC_HOLD_COUNT	= 0x083b
SOUND_WS_0		= 0x083c
SOUND_FREQ_LO		= 0x083d
SOUND_FREQ_HI		= 0x083e
SOUND_WS_3		= 0x083f

BUFFER_SOUND_0		= 0x0840
BUFFER_SOUND_1		= 0x0850
BUFFER_SOUND_2		= 0x0860
BUFFER_SOUND_3		= 0x0870
BUFFER_PRINTER		= 0x0880

ENV_STEP		= 0x08c0
ENV_PI1			= 0x08c1
ENV_PI2			= 0x08c2
ENV_PI3			= 0x08c3
ENV_PN1			= 0x08c4
ENV_PN2			= 0x08c5
ENV_PN3			= 0x08c6
ENV_AA			= 0x08c7
ENV_AD			= 0x08c8
ENV_AS			= 0x08c9
ENV_AR			= 0x08ca
ENV_ALA			= 0x08cb
ENV_ALD			= 0x08cc

BUFFER_RS423_TX		= 0x0900
BUFFER_RS423_RX		= 0x0a00

SOFTKEYS		= 0x0b00

NMI_HANDLER		= 0x0d00

ROM_LANGUAGE		= 0x8000
ROM_SERVICE		= 0x8003
ROM_TYPE		= 0x8006
ROM_CC_OFFSET		= 0x8007

FRED			= 0xfc00
JIM			= 0xfd00
SHEILA			= 0xfe00

CRTC_ADDRESS		= 0xfe00
CRTC_DATA		= 0xfe01
CRTC_BORDER		= 0xfe02

ACIA_CSR		= 0xfe08
ACIA_TXRX		= 0xfe09

SERIAL_ULA		= 0xfe10

ADLC			= 0xfe18

VID_ULA_CTRL		= 0xfe20
VID_ULA_PALETTE		= 0xfe21

ROM_LATCH		= 0xfe30

SYS_VIA_IORB		= 0xfe40
SYS_VIA_IORA		= 0xfe41
SYS_VIA_DDRB		= 0xfe42
SYS_VIA_DDRA		= 0xfe43
SYS_VIA_T1C_L		= 0xfe44
SYS_VIA_T1C_H		= 0xfe45
SYS_VIA_T1L_L		= 0xfe46
SYS_VIA_T1L_H		= 0xfe47
SYS_VIA_T2C_L		= 0xfe48
SYS_VIA_T2C_H		= 0xfe49
SYS_VIA_SHIFT		= 0xfe4a
SYS_VIA_ACR		= 0xfe4b
SYS_VIA_PCR		= 0xfe4c
SYS_VIA_IFR		= 0xfe4d
SYS_VIA_IER		= 0xfe4e
SYS_VIA_IORA_NH		= 0xfe4f

USR_VIA_IORB		= 0xfe60
USR_VIA_IORA		= 0xfe61
USR_VIA_DDRB		= 0xfe62
USR_VIA_DDRA		= 0xfe63
USR_VIA_T1C_L		= 0xfe64
USR_VIA_T1C_H		= 0xfe65
USR_VIA_T1L_L		= 0xfe66
USR_VIA_T1L_H		= 0xfe67
USR_VIA_T2C_L		= 0xfe68
USR_VIA_T2C_H		= 0xfe69
USR_VIA_SHIFT		= 0xfe6a
USR_VIA_ACR		= 0xfe6b
USR_VIA_PCR		= 0xfe6c
USR_VIA_IFR		= 0xfe6d
USR_VIA_IER		= 0xfe6e
USR_VIA_IORA_NH		= 0xfe6f

FDC_CSR			= 0xfe80
FDC_PRR			= 0xfe81
FDC_RESET		= 0xfe82
FDC_ILLEGAL		= 0xfe83
FDC_DATA		= 0xfe84

ADLC_CSR1		= 0xfea0
ADLC_CSR2_3		= 0xfea1
ADLC_TXRX_FC		= 0xfea2
ADLC_TXRX_FT		= 0xfea3

ADC_SR			= 0xfec0
ADC_HI			= 0xfec1
ADC_LO			= 0xfec2

TUBE_FIFO1_SR		= 0xfee0
TUBE_FIFO1		= 0xfee1
TUBE_FIFO2_SR		= 0xfee2
TUBE_FIFO2		= 0xfee3
TUBE_FIFO3_SR		= 0xfee4
TUBE_FIFO3		= 0xfee5
TUBE_FIFO4_SR		= 0xfee6
TUBE_FIFO4		= 0xfee7



		.area CODE (ABS)

		.org	0xE00

		lds	#STACK + 0xFF

		; setup vectors
		jsr	my_RESET

		ldx	#font
		stx	zp_ptr1
		ldx	#0x5800
		stx	zp_ptr2

lp:		ldx	zp_ptr1
		cpx	#font_end
		beq	done
		ldaa	0,X
		inx
		stx	zp_ptr1
		ldx	zp_ptr2
		staa	0,X
		inx
		stx	zp_ptr2
		jmp	lp

done:
mode_lp:
		jsr	wait_1s

		ldaa	#22
		jsr	OSWRCH

		ldaa	mode_ctr
		inca
		anda	#7
		staa	mode_ctr
		jsr	OSWRCH

		clr	ctr1

mlp:		ldaa	#17
		jsr	OSWRCH
		ldaa	ctr1
		anda	#0xF
		jsr	OSWRCH
		ldaa	#17
		jsr	OSWRCH
		ldaa	ctr1
		lsra
		lsra
		lsra
		lsra
		oraa	#0x80
		jsr	OSWRCH


		ldx	#msg_str
		jsr	PrintStr
here:		dec	ctr1
		bne	mlp
		bra	mode_lp




msg_str:	.asciz	"Hello Ishbel! "

PrintStr:	stx	zp_ptr3
PrintStr1:	ldx	zp_ptr3
		ldaa	0,X
		beq	PrintStrRet
		inx
		stx	zp_ptr3
		jsr	OSWRCH
		bra	PrintStr1
PrintStrRet:	rts

		; add B to X and return in X/zp_ptr1
my_ABX:		pshb
		stx	zp_ptr1
		addb	zp_ptr1+1
		stab	zp_ptr1+1
		bcc	my_ABX_s1
		inc	zp_ptr1
my_ABX_s1:	ldx	zp_ptr1
		pulb
		rts


wait_1s:	ldx	#0
wait_1s_lp:	jsr	waitx
		inx
		bne	wait_1s_lp
		rts

waitx:		jsr	waitx1
waitx1:		jsr	waitx2
waitx2:		rts


mode_ctr:	.byte	0
ctr1:		.byte	0














my_RESET:	; heavily bodged - just set up page 2
		ldx	#0x290			;power up break!

_BDA42:		clra
_BDA44:		cpx	#0x2ce
		bne	_BDA4A
		ldaa	#0xff
_BDA4A:		staa	0,X
		inx
		cpx	#0x300
		bne	_BDA44

		clra
		ldx	#CRFS_STATUS
_BDA56:		staa	0,X
		inx
		cpx	#0x100
		bne	_BDA56


		ldx	#0x200			;power up break!
		stx	zp_ptr2
		ldx	#_VECTOR_TABLE
		ldab	#0x8d
		jsr	blk_copy	; and return
		ldaa	#4

		jmp	STARTUP			; start VDU

;	Copy (B) bytes from X to zp_ptr2, uses zp_ptr1

blk_copy:	stx	zp_ptr1
bclp1:		ldx	zp_ptr1
		ldaa	0,X
		inx
		stx	zp_ptr1
		ldx	zp_ptr2
		staa	0,X
		inx
		stx	zp_ptr2
		decb	
		bne	bclp1
		rts


;*************************************************************************************
;
; M O S - A 6800 compatible BBC Micro MOS 0.12 port
;
;*************************************************************************************


		.bndry	256
font:		
		.incbin "Bauhaus.ch8"			; the 6800 gets a cheesy '70s font
font_end:

		.bndry  256
VDU_DRIVER_PAGE=.

STARTUP:		jmp 	_VDU_INIT_MODE
			.byte	0x0d
			.ascii	"BBC 6800 Dom"
			.byte 	0
			.ascii	"16K"
			.byte 	7,0
			.ascii	"32K"
			.byte 	7,0


			.byte	0x08,0x0d,0x0d			; Termination byte in next table


;****** 16 COLOUR MODE BYTE MASK LOOK UP TABLE******

_COL16_MASK_TAB:	.byte	0x00				; 00000000
			.byte	0x11				; 00010001
			.byte	0x22				; 00100010
			.byte	0x33				; 00110011
			.byte	0x44				; 01000100
			.byte	0x55				; 01010101
			.byte	0x66				; 01100110
			.byte	0x77				; 01110111
			.byte	0x88				; 10001000
			.byte	0x99				; 10011001
			.byte	0xaa				; 10101010
			.byte	0xbb				; 10111011
			.byte	0xcc				; 11001100
			.byte	0xdd				; 11011101
			.byte	0xee				; 11101110
			.byte	0xff				; 11111111


;****** 4 COLOUR MODE BYTE MASK LOOK UP TABLE******

_COL4_MASK_TAB:		.byte	0x00				; 00000000
			.byte	0x55				; 01010101
			.byte	0xaa				; 10101010
			.byte	0xff				; 11111111


;****** VDU ENTRY POINT LO	 LOOK UP TABLE******

	.macro vdu_lo, addr
			.byte	<addr
	.endm

	; NOTE: this encoding is different to MOS1.20 to allow assembly at low addresses
	.macro vdu_hi, addr, count
		.if count
			.byte	(>(addr - VDU_DRIVER_PAGE) << 4) + ((16 - count)&0xF)
		.else
			.byte 	0x80 | (>(addr - VDU_DRIVER_PAGE) << 4)
		.endif
	.endm

	; TODO: make smaller!
	.macro 	SWAP_VDU, var1, var2, n
	.if ge, var2 - var1
		ldx	#var1
		ldab	#var2-var1
	.else
		ldx	#var2
		ldab	#var1-var2
	.endif
		ldaa	#n
		jsr	VDU_SWAP
	.endm


_VDU_TABLE_LO:		vdu_lo	_VDU_0
			vdu_lo	_VDU_1
			vdu_lo	_VDU_2
			vdu_lo	_VDU_3
			vdu_lo	_VDU_4
			vdu_lo	_VDU_5
			vdu_lo	_VDU_6
			vdu_lo	_VDU_7
			vdu_lo	_VDU_8
			vdu_lo	_VDU_9
			vdu_lo	_VDU_10
			vdu_lo	_VDU_11
			vdu_lo	_VDU_12
			vdu_lo	_VDU_13
			vdu_lo	_VDU_14
			vdu_lo	_VDU_15
			vdu_lo	_VDU_16
			vdu_lo	_VDU_17
			vdu_lo	_VDU_18
			vdu_lo	_VDU_19
			vdu_lo	_VDU_20
			vdu_lo	_VDU_21
			vdu_lo	_VDU_22
			vdu_lo	_VDU_23
			vdu_lo	_VDU_24
			vdu_lo	_VDU_25
			vdu_lo	_VDU_26
			vdu_lo	_VDU_27
			vdu_lo	_VDU_28
			vdu_lo	_VDU_29
			vdu_lo	_VDU_30
			vdu_lo	_VDU_31
			vdu_lo	_VDU_127


;****** VDU ENTRY POINT HI PARAMETER LOOK UP TABLE******

; 1xxxxxxx - no parameters, address high byte
; 0aaapppp - parameter count 16-p, address high byte &C3+a

_VDU_TABLE_HI:		vdu_hi	_VDU_0, 0			; VDU  0   - &C511, no parameters
			vdu_hi	_VDU_1, 1			; VDU  1   - &C53B, 1 parameter
			vdu_hi	_VDU_2, 0			; VDU  2   - &C596, no parameters
			vdu_hi	_VDU_3, 0			; VDU  3   - &C5A1, no parameters
			vdu_hi	_VDU_4, 0			; VDU  4   - &C5AD, no parameters
			vdu_hi	_VDU_5, 0			; VDU  5   - &C5B9, no parameters
			vdu_hi	_VDU_6, 0			; VDU  6   - &C511, no parameters
			vdu_hi	_VDU_7, 0			; VDU  7   - &E86F, no parameters
			vdu_hi	_VDU_8, 0			; VDU  8   - &C5C5, no parameters
			vdu_hi	_VDU_9, 0			; VDU  9   - &C664, no parameters
			vdu_hi	_VDU_10, 0			; VDU 10  - &C6F0, no parameters
			vdu_hi	_VDU_11, 0			; VDU 11  - &C65B, no parameters
			vdu_hi	_VDU_12, 0			; VDU 12  - &C759, no parameters
			vdu_hi	_VDU_13, 0			; VDU 13  - &C7AF, no parameters
			vdu_hi	_VDU_14, 0			; VDU 14  - &C58D, no parameters
			vdu_hi	_VDU_15, 0			; VDU 15  - &C5A6, no parameters
			vdu_hi	_VDU_16, 0			; VDU 16  - &C7C0, no parameters
			vdu_hi	_VDU_17, 1			; VDU 17  - &C7F9, 1 parameter
			vdu_hi	_VDU_18, 2			; VDU 18  - &C7FD, 2 parameters
			vdu_hi	_VDU_19, 5			; VDU 19  - &C892, 5 parameters
			vdu_hi	_VDU_20, 0			; VDU 20  - &C839, no parameters
			vdu_hi	_VDU_21, 0			; VDU 21  - &C59B, no parameters
			vdu_hi	_VDU_22, 1			; VDU 22  - &C8EB, 1 parameter
			vdu_hi	_VDU_23, 9			; VDU 23  - &C8F1, 9 parameters
			vdu_hi	_VDU_24, 8			; VDU 24  - &CA39, 8 parameters
			vdu_hi	_VDU_25, 5			; VDU 25  - &C9AC, 5 parameters
			vdu_hi	_VDU_26, 0			; VDU 26  - &C9BD, no parameters
			vdu_hi	_VDU_27, 0			; VDU 27  - &C511, no parameters
			vdu_hi	_VDU_28, 4			; VDU 28  - &C6FA, 4 parameters
			vdu_hi	_VDU_29, 4			; VDU 29  - &CAA2, 4 parameters
			vdu_hi	_VDU_30, 0			; VDU 30  - &C779, no parameters
			vdu_hi	_VDU_31, 2			; VDU 31  - &C787, 2 parameters
			vdu_hi	_VDU_127, 0			; VDU 127 - &CAAC, no parameters

;****** 640 MULTIPLICATION TABLE  40COL, 80COL MODES  HIBYTE, LOBYTE ******

_MUL640_TABLE:		.word	640 *  0
			.word	640 *  1
			.word	640 *  2
			.word	640 *  3
			.word	640 *  4
			.word	640 *  5
			.word	640 *  6
			.word	640 *  7
			.word	640 *  8
			.word	640 *  9
			.word	640 * 10
			.word	640 * 11
			.word	640 * 12
			.word	640 * 13
			.word	640 * 14
			.word	640 * 15
			.word	640 * 16
			.word	640 * 17
			.word	640 * 18
			.word	640 * 19
			.word	640 * 20
			.word	640 * 21
			.word	640 * 22
			.word	640 * 23
			.word	640 * 24
			.word	640 * 25
			.word	640 * 26
			.word	640 * 27
			.word	640 * 28
			.word	640 * 29
			.word	640 * 30
			.word	640 * 31

;****** *40 MULTIPLICATION TABLE  TELETEXT  MODE   HIBYTE, LOBYTE  ******

_MUL40_TABLE:		.word	40 *  0
			.word	40 *  1
			.word	40 *  2
			.word	40 *  3
			.word	40 *  4
			.word	40 *  5
			.word	40 *  6
			.word	40 *  7
			.word	40 *  8
			.word	40 *  9
			.word	40 * 10
			.word	40 * 11
			.word	40 * 12
			.word	40 * 13
			.word	40 * 14
			.word	40 * 15
			.word	40 * 16
			.word	40 * 17
			.word	40 * 18
			.word	40 * 19
			.word	40 * 20
			.word	40 * 21
			.word	40 * 22
			.word	40 * 23
			.word	40 * 24


;****** TEXT WINDOW -BOTTOM ROW LOOK UP TABLE ******

_TEXT_ROW_TABLE:	.byte	0x1f				; MODE 0 - 32 ROWS
			.byte	0x1f				; MODE 1 - 32 ROWS
			.byte	0x1f				; MODE 2 - 32 ROWS
			.byte	0x18				; MODE 3 - 25 ROWS
			.byte	0x1f				; MODE 4 - 32 ROWS
			.byte	0x1f				; MODE 5 - 32 ROWS
			.byte	0x18				; MODE 6 - 25 ROWS
			.byte	0x18				; MODE 7 - 25 ROWS


;****** TEXT WINDOW -RIGHT HAND COLUMN LOOK UP TABLE ******

_TEXT_COL_TABLE:	.byte	0x4f				; MODE 0 - 80 COLUMNS
			.byte	0x27				; MODE 1 - 40 COLUMNS
			.byte	0x13				; MODE 2 - 20 COLUMNS
			.byte	0x4f				; MODE 3 - 80 COLUMNS
			.byte	0x27				; MODE 4 - 40 COLUMNS
			.byte	0x13				; MODE 5 - 20 COLUMNS
			.byte	0x27				; MODE 6 - 40 COLUMNS
			.byte	0x27				; MODE 7 - 40 COLUMNS


;*************************************************************************
;*									 *
;*	 SEVERAL OF THE FOLLOWING TABLES OVERLAP EACH OTHER		 *
;*	 SOME ARE DUAL PURPOSE						 *
;*									 *
;*************************************************************************

;************** VIDEO ULA CONTROL REGISTER SETTINGS ***********************

_ULA_SETTINGS:		.byte	0x9c				; 10011100
			.byte	0xd8				; 11011000
			.byte	0xf4				; 11110100
			.byte	0x9c				; 10011100
			.byte	0x88				; 10001000
			.byte	0xc4				; 11000100
			.byte	0x88				; 10001000
			.byte	0x4b				; 01001011


;******** NUMBER OF BYTES PER CHARACTER FOR EACH DISPLAY MODE ************

_TXT_BPC_TABLE:		.byte	0x08				; 00001000
			.byte	0x10				; 00010000
			.byte	0x20				; 00100000
			.byte	0x08				; 00001000
			.byte	0x08				; 00001000
			.byte	0x10				; 00010000
			.byte	0x08				; 00001000
_TAB_VDU_MASK_R:	.byte	0x01				; 00000001
	; _TAB_VDU_MASK_R is used to make a right most pixel mask by taking the
	; number of pixels per byte-1 (7,3,1)*2 as an index (0x01,0x11,0x55)


;******************* MASK TABLE FOR  2 COLOUR MODES **********************

_COL2_MASK_TAB:		.byte	0xaa				; 10101010
			.byte	0x55				; 01010101


;****************** MASK TABLE FOR  4 COLOUR MODES ***********************

			.byte	0x88				; 10001000
			.byte	0x44				; 01000100
			.byte	0x22				; 00100010
			.byte	0x11				; 00010001


;********** MASK TABLE FOR  4 COLOUR MODES FONT FLAG MASK TABLE **********

_LC40D:			.byte	0x80				; 10000000
			.byte	0x40				; 01000000
			.byte	0x20				; 00100000
			.byte	0x10				; 00010000
			.byte	0x08				; 00001000
			.byte	0x04				; 00000100
			.byte	0x02				; 00000010  -  NEXT BYTE IN FOLLOWING TABLE


;********* NUMBER OF TEXT COLOURS -1 FOR EACH MODE ************************

_TBL_MODE_COLOURS:	.byte	0x01				; MODE 0 - 2 COLOURS
			.byte	0x03				; MODE 1 - 4 COLOURS
			.byte	0x0f				; MODE 2 - 16 COLOURS
			.byte	0x01				; MODE 3 - 2 COLOURS
			.byte	0x01				; MODE 4 - 2 COLOURS
			.byte	0x03				; MODE 5 - 4 COLOURS
			.byte	0x01				; MODE 6 - 2 COLOURS
_LC41B:			.byte	0x00				; MODE 7 - 1 'COLOUR'


;************** GCOL PLOT OPTIONS PROCESSING LOOK UP TABLE ***************

_LC41C:			.byte	0xff				; 11111111
_LC41D:			.byte	0x00				; 00000000
			.byte	0x00				; 00000000
			.byte	0xff				; 11111111
_LC420:			.byte	0xff				; 11111111
			.byte	0xff				; 11111111
			.byte	0xff				; 11111111
_LC423:			.byte	0x00				; 00000000


;********** 2 COLOUR MODES PARAMETER LOOK UP TABLE WITHIN TABLE **********

			.byte	0x00				; 00000000
			.byte	0xff				; 11111111


;*************** 4 COLOUR MODES PARAMETER LOOK UP TABLE ******************

			.byte	0x00				; 00000000
			.byte	0x0f				; 00001111
			.byte	0xf0				; 11110000
			.byte	0xff				; 11111111


;***************16 COLOUR MODES PARAMETER LOOK UP TABLE ******************

			.byte	0x00				; 00000000
			.byte	0x03				; 00000011
			.byte	0x0c				; 00001100
			.byte	0x0f				; 00001111
			.byte	0x30				; 00110000
			.byte	0x33				; 00110011
			.byte	0x3c				; 00111100
			.byte	0x3f				; 00111111
			.byte	0xc0				; 11000000
			.byte	0xc3				; 11000011
			.byte	0xcc				; 11001100
			.byte	0xcf				; 11001111
			.byte	0xf0				; 11110000
			.byte	0xf3				; 11110011
			.byte	0xfc				; 11111100
			.byte	0xff				; 11111111


;********** DISPLAY MODE PIXELS/BYTE-1 TABLE *********************

_TBL_VDU_PIXPB:		.byte	0x07				; MODE 0 - 8 PIXELS/BYTE
			.byte	0x03				; MODE 1 - 4 PIXELS/BYTE
			.byte	0x01				; MODE 2 - 2 PIXELS/BYTE
_LC43D:			.byte	0x00				; MODE 3 - 1 PIXEL/BYTE (NON-GRAPHICS)
			.byte	0x07				; MODE 4 - 8 PIXELS/BYTE
			.byte	0x03				; MODE 5 - 4 PIXELS/BYTE

;********* SCREEN DISPLAY MEMORY TYPE TABLE OVERLAPS ************

_TAB_MAP_TYPE:		.byte	0x00				; MODE 6 - 1 PIXEL/BYTE	 //  MODE 0 - TYPE 0

;***** SOUND PITCH OFFSET BY CHANNEL TABLE WITHIN TABLE **********

			.byte	0x00				; MODE 7 - 1 PIXEL/BYTE	 //  MODE 1 - TYPE 0  //  CHANNEL 0
			.byte	0x00				; //  MODE 2 - TYPE 0  //  CHANNEL 1
			.byte	0x01				; //  MODE 3 - TYPE 1  //  CHANNEL 2
			.byte	0x02				; //  MODE 4 - TYPE 2  //  CHANNEL 3

;**** REST OF DISPLAY MEMORY TYPE TABLE ****

			.byte	0x02				; //  MODE 5 - TYPE 2
			.byte	0x03				; //  MODE 6 - TYPE 3

;***************** VDU SECTION CONTROL NUMBERS ***************************

_LC447:			.byte	0x04				; 00000100		  //  MODE 7 - TYPE 4
			.byte	0x00				; 00000000
			.byte	0x06				; 00000110
			.byte	0x02				; 00000010

;*********** CRTC SETUP PARAMETERS TABLE 1 WITHIN TABLE ******************

; value to write to 8 bit latch bit 4 indexed by mode size type (see _TAB_MAP_TYPE)
_TAB_LAT4_MOSZ:		.byte	0x0d				; 00001101
			.byte	0x05				; 00000101
			.byte	0x0d				; 00001101
			.byte	0x05				; 00000101

;*********** CRTC SETUP PARAMETERS TABLE 2 WITHIN TABLE *****************

; value to write to 8 bit latch bit 4 indexed by mode size type (see _TAB_MAP_TYPE)
_TAB_LAT5_MOSZ:		.byte	0x04				; 00000100
			.byte	0x04				; 00000100
			.byte	0x0c				; 00001100
			.byte	0x0c				; 00001100
			.byte	0x04				; 00000100

;**** REST OF VDU SECTION CONTROL NUMBERS ****

_LC454:			.byte	0x02				; 00000010
			.byte	0x32				; 00110010
			.byte	0x7a				; 01111010
			.byte	0x92				; 10010010
			.byte	0xe6				; 11100110


;************** MSB OF MEMORY OCCUPIED BY SCREEN BUFFER	 *****************

_VDU_MEMSZ_TAB:		.byte	0x50				; Type 0: &5000 - 20K
			.byte	0x40				; Type 1: &4000 - 16K
			.byte	0x28				; Type 2: &2800 - 10K
			.byte	0x20				; Type 3: &2000 - 8K
			.byte	0x04				; Type 4: &0400 - 1K


;************ MSB OF FIRST LOCATION OCCUPIED BY SCREEN BUFFER ************

_VDU_MEMLOC_TAB:	.byte	0x30				; Type 0: &3000
			.byte	0x40				; Type 1: &4000
			.byte	0x58				; Type 2: &5800
			.byte	0x60				; Type 3: &6000
			.byte	0x7c				; Type 4: &7C00


;***************** NUMBER OF BYTES PER ROW *******************************

_TAB_BPR:		.byte	0x28				; 00101000
			.byte	0x40				; 01000000
			.byte	0x80				; 10000000


;******** ROW MULTIPLIACTION TABLE POINTER TO LOOK UP TABLE **************

_TAB_MULTBL_LKUP:	.byte	<_MUL40_TABLE			; 10110101
			.byte	<_MUL640_TABLE			; 01110101
			.byte	<_MUL640_TABLE			; 01110101


;********** CRTC CURSOR END REGISTER SETTING LOOK UP TABLE ***************

_TAB_CRTCBYMOSZ:			.byte	0x0b				; 00001011
			.byte	0x17				; 00010111
			.byte	0x23				; 00100011
			.byte	0x2f				; 00101111
			.byte	0x3b				; 00111011


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

;************* VDU ROUTINE VECTOR ADDRESSES   ******************************

_LC4AA:			.word	_LD386
			.word	_LD37E


;************ VDU ROUTINE BRANCH VECTOR ADDRESS LO ***********************

_LC4AE:			.byte	<_PLOT_D36A
			.byte	<_PLOT_D374
			.byte	<_PLOT_D342
			.byte	<_PLOT_D34B


;************ VDU ROUTINE BRANCH VECTOR ADDRESS HI ***********************

_LC4B2:			.byte	>_PLOT_D36A
			.byte	>_PLOT_D374
			.byte	>_PLOT_D342
			.byte	>_PLOT_D34B


;*********** TELETEXT CHARACTER CONVERSION TABLE  ************************

_TELETEXT_CHAR_TAB:	.byte	0x23				; '#' -> '_'
			.byte	0x5f				; '_' -> '`'
			.byte	0x60				; '`' -> '#'
			.byte	0x23				; '#'


;*********** SOFT CHARACTER RAM ALLOCATION   *****************************

_LC4BA:			.byte	0x04				; &20-&3F - OSHWM+&0400
			.byte	0x05				; &40-&5F - OSHWM+&0500
			.byte	0x06				; &60-&7F - OSHWM+&0600
			.byte	0x00				; &80-&9F - OSHWM+&0000
			.byte	0x01				; &A0-&BF - OSHWM+&0100
			.byte	0x02				; &C0-&DF - OSHWM+&0200


;**************************************************************************
;**************************************************************************
;**									 **
;**	 OSWRCH	 MAIN ROUTINE  entry from E0C5				 **
;**									 **
;**	 output a byte via the VDU stream				 **
;**									 **
;**************************************************************************
;**************************************************************************
;This routine takes up over 40% of the operating system ROM
;Entry points are variable, as are the results achieved.
;Tracing any particular path is relatively easy but generalising for
;commenting is not. For clarity comments will not be as detailed as
;for later parts of the Operating System.



_VDUCHR:		ldab	OSB_VDU_QSIZE			; get number of items in VDU queue
			bne	_BC512				; if parameters needed then C512
			ldab	#0x40
			bitb	VDU_STATUS			; else check status byte
			beq	__vdu_check_delete		; if cursor editing enabled two cursors exist
			jsr	_LC568_swapcurs				; swap values
			jsr	_LCD6A				; then set up write cursor
			bmi	__vdu_check_delete		; if display disabled C4D8
			cmpa	#0x0d				; else if character in A=RETURN teminate edit
			bne	__vdu_check_delete		; else C4D8

			jsr	_LD918				; terminate edit

__vdu_check_delete:	cmpa	#0x7f				; is character DELETE ?
			beq	_BC4ED				; if so C4ED

			cmpa	#0x20				; is it less than space? (i.e. VDU control code)
			blo	_BC4EF				; if so C4EF
			ldab	VDU_STATUS			; else check VDU byte ahain
			bmi	_BC4EA				; if screen disabled C4EA
			jsr	_VDU_OUT_CHAR			; else display a character
			jsr	_VDU_9				; and cursor right
_BC4EA:			jmp	_LC55E				; 

;********* read link addresses and number of parameters *****************

_BC4ED:			ldaa	#0x20				; to replace delete character

;********* read link addresses and number of parameters *****************

_BC4EF:			tab					; Y=A
			ldx	#_VDU_TABLE_LO
			jsr	my_ABX
			ldaa	0,X				; get lo byte of link address
			staa	VDU_JUMPVEC			; store it in jump vector
			ldaa	_VDU_TABLE_HI-_VDU_TABLE_LO,X	; get hi byte
			bmi	_BC545				; if negative (as it will be if a direct address)
								; there are no parameters needed
								; so C545
			psha					; save A
			oraa	#0xf0				; set up negated parameter count
			staa	OSB_VDU_QSIZE			; store it as number of items in VDU queue
			pula					; get back A
			jsr	setVDU_JUMPVEC_HI								
			ldaa	VDU_STATUS			; check if cursor editing enabled
			anda	#0x40
			bne	_BC52F				; if so re-exchange pointers
			clc					; clear carry
_VDU_0_6_27:
_VDU_0:
_VDU_6:
_VDU_27:		rts					; and exit

;return with carry clear indicates that printer action not required.

setVDU_JUMPVEC_HI:
			lsra					; A=A/16
			lsra					; 
			lsra					; 
			lsra					; 
								; clear carry			
			adda	#>VDU_DRIVER_PAGE		; add &C3 to get hi byte of link address
			staa	VDU_JUMPVEC_HI			; 
			rts

;********** parameters are outstanding ***********************************
; X=&26A = 2 complement of number of parameters X=&FF for 1, FE for 2 etc.

_BC512:			ldx	#VDU_QUEUE_8 - 255
			jsr	my_ABX
			staa	0,X				; store parameter in queue
			incb					; increment X
			stab	OSB_VDU_QSIZE			; store it as VDU queue
			bne	_BC532				; if not 0 C532 as more parameters are needed
			ldab	VDU_STATUS			; get VDU status byte
			bmi	_BC534				; if screen disabled C534
			andb	#0x40
			bne	_BC526				; else if cursor editing C526
			jsr	_VDU_JUMP			; execute required function
			clc					; clear carry
			rts					; and exit

_BC526:			jsr	_LC568_swapcurs			; swap values of cursors
			jsr	_LCD6A				; set up write cursor
			jsr	_VDU_JUMP			; execute required function
_BC52F:			jsr	_LC565				; re-exchange pointers

_BC532:			clc					; carry clear
			rts					; exit


;*************************************************************************
;*									 *
;*	 VDU 1 - SEND NEXT CHARACTER TO PRINTER				 *
;*									 *
;*	 1 parameter required						 *
;*									 *
;*************************************************************************

			;TODO
_BC534:			swi



;*********** if explicit link address found, no parameters ***************

_BC545:			anda	#0x70
			jsr	setVDU_JUMPVEC_HI								
			tba					; restore A
			cmpa	#0x08				; is it 7 or less?
			blo	_BC553				; if so C553
			cmpa	#0x0D				; c is set if A >&0D

_BC553:			ldab	VDU_STATUS			; VDU status byte
			bmi	_BC580				; if display disabled C580
			tab
			tpa
			psha					; push processor flags
			tba
			jsr	_VDU_JUMP			; execute required function
			pula
			tap					; get back flags
			bcc	_BC561				; if carry clear (from C54B/F)

;**************** main exit routine **************************************

_LC55E:			ldaa	VDU_STATUS			; VDU status byte
			lsra					; Carry is set if printer is enabled
_BC561:			ldaa	VDU_STATUS			; VDU status byte
			anda	#0x40
			beq	_VDU_0_6_27			; if no cursor editing	C511 to exit

;***************** cursor editing routines *******************************

_LC565:			jsr	_LCD7A				; restore normal write cursor


_LC568_swapcurs:	psha					; save flags and A
			tpa
			psha	
			SWAP_VDU VDU_T_CURS_X,VDU_TI_CURS_X,2
			jsr	_LCF06				; set up display address
			jsr	SET_CURS_CHARSCANAB		; set cursor position
			ldaa	VDU_STATUS			; VDU status byte
			eora	#0x02				; invert bit 1 to allow or bar scrolling
			staa	VDU_STATUS			; VDU status byte
			pula					; restore flags and A
			tap
			pula					; 
			rts					; and exit

_BC580:			eora	#0x06				; if A<>6
			bne	_BC58C				; return via C58C
			ldaa	#0x7f				; A=&7F
			bcc	AND_VDU_STATUS				; and goto C5A8 ALWAYS!!

;******************* check text cursor in use ***************************

_LC588:			ldaa	VDU_STATUS			; VDU status byte
			anda	#0x20				; set A from bit 5 of status byte
_BC58C:			rts					; and exit




_VDU_1:
_VDU_2:
_VDU_3:
_VDU_4:
_VDU_5:
_VDU_7:
_VDU_8:
_VDU_12:
_VDU_13:
_VDU_14:

_VDU_16:
_VDU_21:
_VDU_23:
_VDU_25:
_VDU_28:
_VDU_29:
_VDU_30:
_VDU_31:
_VDU_127:

_PLOT_D34B:
_PLOT_D374:
_PLOT_D342:
_PLOT_D36A:
_LD386:
_LD37E:
			swi
_OSBYTE_20:		
			rts

;*************************************************************************
;*									 *
;*	 VDU 15 - PAGED MODE OFF					 *
;*									 *
;*************************************************************************
; A=&F or &A

_VDU_15:		eora	#0xf4				; convert to &FB or &FE
AND_VDU_STATUS:		anda	VDU_STATUS			; VDU status byte clear bit 0 or bit 2 of status
STA_VDU_STATUS:		staa	VDU_STATUS			; VDU status byte
_BC5AC_rts:		rts					; exit


;*************** cursor up ***********************************************

_BC5F4:			dec	OSB_HALT_LINES			; paged mode counter
			bpl	_BC5FC				; if still greater than 0 skip next instruction
			inc	OSB_HALT_LINES			; paged mode counter to restore X=0
_BC5FC:			ldab	VDU_T_CURS_Y			; current text line
			cmpb	VDU_T_WIN_T			; top of text window
			beq	_BC60A				; if its at top of window C60A
			dec	VDU_T_CURS_Y			; else decrement current text line
			jmp	_LC6AF				; and carry on moving cursor

;******** cursor at top of window ****************************************

_BC60A:			clc					; clear carry
			jsr	_LCD3F				; check for window violatations
			ldaa	#0x08				; A=8 to check for software scrolling
			bita	VDU_STATUS			; compare against VDU status byte
			bne	_BC619				; if not enabled C619
			jsr	_LC994				; set screen start register and adjust RAM
			bne	_BC61C				; jump C61C

_BC619:			jsr	_LCDA4				; soft scroll 1 line
_BC61C:			jmp	_LC6AC				; and exit

;**********cursor left and down with graphics cursor in use **************

_BC61F:			clrb				; X=0 to select horizontal parameters


;********** cursor down with graphics in use *****************************
;X=2 for vertical or 0 for horizontal

_LC621:			swi
;;;			stx	VDU_TMP2			; store X
;;;			jsr	_LD10D				; check for window violations
;;;			ldx	VDU_TMP2			; restore X
;;;			sec					; set carry
;;;			lda	VDU_G_CURS_H,X			; current graphics cursor X>1=vertical
;;;			sbc	#0x08				; subtract 8 to move back 1 character
;;;			sta	VDU_G_CURS_H,X			; store in current graphics cursor X>1=verticaal
;;;			bcs	_BC636				; if carry set skip next
;;;			dec	VDU_G_CURS_H_HI,X		; current graphics cursor hi -1
;;;_BC636:			lda	VDU_TMP1			; &DA=0 if no violation else 1 if vert violation
;;;								; 2 if horizontal violation
;;;			bne	_BC658				; if violation C658
;;;			jsr	_LD10D				; check for window violations
;;;			beq	_BC658				; if none C658
;;;
;;;			ldx	VDU_TMP2			; else get back X
;;;			lda	VDU_G_WIN_R,X			; graphics window rt X=0 top X=2
;;;			cpx	#0x01				; is X=0
;;;			bcs	_BC64A				; if not C64A
;;;			sbc	#0x06				; else subtract 7
;;;
;;;_BC64A:			sta	VDU_G_CURS_H,X			; current graphics cursor X>1=vertical
;;;			lda	VDU_G_WIN_R_HI,X		; graphics window hi rt X=0 top X=2
;;;			sbc	#0x00				; subtract carry
;;;			sta	VDU_G_CURS_H_HI,X		; current graphics cursor X<2=horizontal else vertical
;;;			txa					; A=X
;;;			beq	_BC660				; cursor up
;;;_BC658:			jmp	_LD1B8				; set up external coordinates for graphics

;*************************************************************************
;*									 *
;*	 VDU 11 - CURSOR UP						 *
;*									 *
;*************************************************************************

_VDU_11:		jsr	_LC588				; A=0 if text cursor A=&20 if graphics cursor
			beq	_BC5F4				; if text cursor then C5F4
_BC660:			ldab	#0x02				; else X=2
			bne	_BC6B6				; goto C6B6

			
;*************************************************************************
;*									 *
;*	 VDU 9	- CURSOR RIGHT						 *
;*									 *
;*************************************************************************

_VDU_9:			ldaa	VDU_STATUS			; VDU status byte
			anda	#0x20				; check bit 5
			bne	_BC6B4				; if set then graphics cursor in use so C6B4
			ldaa	VDU_T_CURS_X			; text column
			cmpa	VDU_T_WIN_R			; text window right
			bhs	_BC684				; if X exceeds window right then C684
			inc	VDU_T_CURS_X			; text column
			ldx	VDU_CRTC_CUR_HI
			ldab	VDU_BPC
			jsr	my_ABX
			jmp	SET_CRTC_CURSeqX_adj		; use AX to set new cursor address

;********: text cursor down and right *************************************

_BC684:			ldaa	VDU_T_WIN_L			; text window left
			staa	VDU_T_CURS_X			; text column

;********: text cursor down *************************************

_BC68A:			clc					; clear carry
			jsr	_LCAE3				; check bottom margin, X=line count
			ldab	VDU_T_CURS_Y			; current text line
			cmpb	VDU_T_WIN_B			; bottom margin
			bhs	_BC69B				; if X=>current bottom margin C69B
			inc	VDU_T_CURS_Y			; else increment current text line
			bra	_LC6AF				; 
_BC69B:			jsr	_LCD3F				; check for window violations
			ldaa	#0x08				; check bit 3
			bita	VDU_STATUS			; VDU status byte
			bne	_BC6A9				; if software scrolling enabled C6A9
			jsr	_LC9A4				; perform hardware scroll
			bra	_LC6AC				; 
_BC6A9:			jsr	_LCDFF				; execute upward scroll
_LC6AC:			jsr	_LCEAC				; clear a line

_LC6AF:			jsr	_LCF06				; set up display address
			bcc	_BC732				; 

;*********** graphic cursor right ****************************************

_BC6B4:			swi
;;;			clrb				; 

;************** graphic cursor up  (X=2) **********************************

_BC6B6:			swi
;;;			stab	VDU_TMP2			; store X
;;;			jsr	_LD10D				; check for window violations
;;;			ldab	VDU_TMP2			; get back X
;;;			clc					; clear carry
;;;			lda	VDU_G_CURS_H,X			; current graphics cursor X>1=vertical
;;;			adc	#0x08				; Add 8 pixels
;;;			sta	VDU_G_CURS_H,X			; current graphics cursor X>1=vertical
;;;			bcc	_BC6CB				; 
;;;			inc	VDU_G_CURS_H_HI,X		; current graphics cursor X<2=horizontal else vertical
;;;_BC6CB:			lda	VDU_TMP1			; A=0 no window violations 1 or 2 indicates violation
;;;			bne	_BC658				; if outside window C658
;;;			jsr	_LD10D				; check for window violations
;;;			beq	_BC658				; if no violations C658
;;;
;;;			ldx	VDU_TMP2			; get back X
;;;			lda	VDU_G_WIN_L,X			; graphics window X<2 =left else bottom
;;;			cpx	#0x01				; If X=0
;;;			bcc	_BC6DF				; C6DF
;;;			adc	#0x06				; else add 7
;;;_BC6DF:			sta	VDU_G_CURS_H,X			; current graphics cursor X>1=vertical
;;;			lda	VDU_G_WIN_L_HI,X		; graphics window hi X<2 =left else bottom
;;;			adc	#0x00				; add anny carry
;;;			sta	VDU_G_CURS_H_HI,X		; current graphics cursor X<2=horizontal else vertical
;;;			txa					; A=X
;;;			beq	_BC6F5				; if X=0 C6F5 cursor down
;;;			jmp	_LD1B8				; set up external coordinates for graphics


;*************************************************************************
;*									 *
;*	 VDU 10	 - CURSOR DOWN						 *
;*									 *
;*************************************************************************

_VDU_10:		jsr	_LC588				; A=0 if text cursor A=&20 if graphics cursor
			beq	_BC68A				; if text cursor back to C68A
_BC6F5:			ldab	#0x02				; else X=2 to indicate vertical movement
			jmp	_LC621				; move graphics cursor down



_BC732:			jmp	SET_CURS_CHARSCANAB				; set cursor position



;*************************************************************************
;*									 *
;*	 VDU 17 - DEFINE TEXT COLOUR					 *
;*	 COLOUR n							 *
;*									 *
;*	 1 parameter							 *
;*									 *
;*************************************************************************
;parameter in &0323

_VDU_17:		clrb					; Y=0
			bra	_BC7FF				; jump to C7FF


;*************************************************************************
;*									 *
;*	 VDU 18 - DEFINE GRAPHICS COLOUR				 *
;*	 GCOL k,c							 *
;*									 *
;*	 2 parameters							 *
;*									 *
;*************************************************************************
;parameters in 323,322

_VDU_18:		ldab	#0x02				; Y=2

_BC7FF:			ldaa	VDU_QUEUE_8			; get last parameter
			bpl	_BC805				; if +ve it's foreground colour so C805
			incb					; else Y=Y+1
_BC805:			anda	VDU_COL_MASK			; number of logical colours less 1
			staa	VDU_TMP1			; store it
			ldaa	VDU_COL_MASK			; number of logical colours less 1
			beq	_BC82B				; if none exit
			anda	#0x07				; else limit to an available colour and clear M
			
			adda	VDU_TMP1			; Add last parameter to get pointer to table
			pshb
			tab					; pointer into X
			ldx	#_LC423
			jsr	my_ABX
			ldaa	0,X				; get plot options from table
			pulb
			ldx	#VDU_T_FG
			jsr	my_ABX
			staa	,X				; colour Y=0=text fgnd 1= text bkgnd 2=graphics fg etc
			cmpb	#0x02				; If Y>1
			bhs	_BC82C				; then its graphics so C82C else
			ldaa	VDU_T_FG			; foreground text colour
			eora	#0xff				; invert
			staa	VDU_T_EOR_MASK			; text colour byte to be orred or EORed into memory
			eora	VDU_T_BG			; background text colour
			staa	VDU_T_OR_MASK			; text colour byte to be orred or EORed into memory
_BC82B:			rts					; and exit

_BC82C:			ldaa	VDU_QUEUE_7			; get first parameter
			ldx	#VDU_G_FG
			jsr	my_ABX
			staa	0,X				; text colour Y=0=foreground 1=background etc.
			rts					; exit

_BC833:			ldaa	#0x20				; 
			staa	VDU_T_BG			; background text colour
			rts					; 




;*************************************************************************
;*									 *
;*	 VDU 20 - RESTORE DEFAULT COLOURS				 *
;*									 *
;*************************************************************************

_VDU_20:		ldab	#0x05				; X=5

			ldx	#VDU_T_FG
_BC83D:			clr	0,X				; zero all colours
			inx
			decb					; 
			bpl	_BC83D				; until X=&FF
			ldab	VDU_COL_MASK			; number of logical colours less 1
			beq	_BC833				; if none its MODE 7 so C833
			ldaa	#0xff				; A=&FF
			cmpb	#0x0f				; if not mode 2 (16 colours)
			bne	_BC850				; goto C850

			ldaa	#0x3f				; else A=&3F
_BC850:			staa	VDU_T_FG			; foreground text colour
			staa	VDU_G_FG			; foreground graphics colour
			eora	#0xff				; invert A
			staa	VDU_T_OR_MASK			; text colour byte to be orred or EORed into memory
			staa	VDU_T_EOR_MASK			; text colour byte to be orred or EORed into memory
			stab	VDU_QUEUE_4			; set first parameter of 5
			cmpb	#0x03				; if there are 4 colours
			beq	_BC874				; goto C874
			blo	_BC885				; if less there are 2 colours goto C885
								; else there are 16 colours
			stab	VDU_QUEUE_5			; set second parameter
_BC868:			jsr	_VDU_19				; do VDU 19 etc
			dec	VDU_QUEUE_5			; decrement first parameter
			dec	VDU_QUEUE_4			; and last parameter
			bpl	_BC868				; 
			rts					; 

;********* 4 colour mode *************************************************

_BC874:			ldab	#0x07				; X=7
			stab	VDU_QUEUE_5			; set first parameter
_BC879:			jsr	_VDU_19				; and do VDU 19
			lsr	VDU_QUEUE_5			; 
			dec	VDU_QUEUE_4			; 
			bpl	_BC879				; 
			rts					; exit

;********* 2 colour mode ************************************************

_BC885:			ldab	#0x07				; X=7
			jsr	_LC88F				; execute VDU 19
			ldab	#0x00				; X=0
			stab	VDU_QUEUE_4			; store it as
_LC88F:			stab	VDU_QUEUE_5			; both parameters


;*************************************************************************
;*									 *
;*	 VDU 19 - DEFINE COLOURS					 *
;*	[COLOUR l,p]							 *
;*	[COLOUR l,r,g,b]						 *
;*									 *
;*	 5 parameters							 *
;*									 *
;*************************************************************************
;&31F=first parameter logical colour
;&320=second physical colour

_VDU_19:		tpa
			psha					; push processor flags
			sei					; disable interrupts
			ldab	VDU_QUEUE_4			; get first parameter and
			andb	VDU_COL_MASK			; number of logical colours less 1
								; toi make legal  X=A
			ldaa	VDU_QUEUE_5			; A=second parameter
_LC89E:			anda	#0x0f				; make legal
			ldx	#VDU_PALETTE
			staa	0,X				; colour pallette
			staa	MOS_WS_1
			ldaa	VDU_COL_MASK			; number of logical colours less 1
			staa	MOS_WS_0			; store it
			
_BC8AD:			rorb					; rotate A into &FA
			ror	MOS_WS_0			; 
			bcs	_BC8AD				; 
			asl	MOS_WS_0			; 
			ldab	MOS_WS_1			; A=Y
			orab	MOS_WS_0			; 
			clr	MOS_WS_0			; Y=0


_BC8BA:			ldaa	VDU_COL_MASK
			cmpa	#3
			bne	_BC8CB				; if A<>3 earlier C8CC
			tba
			anda	#0x60				; else A=&60 to test bits 5 and 6
			beq	_BC8CB				; if not set C8CB
			cmpa	#0x60				; else if both set
			beq	_BC8CB				; C8CB
			tba					; A=X
			eora	#0x60				; invert
			bne	_BC8CC				; and if not 0 C8CC

_BC8CB:			tba					; X=A
_BC8CC:			jsr	_LEA11				; call Osbyte 155 pass data to pallette register
			ldaa	MOS_WS_0
			sec					; 
			adca	VDU_COL_MASK			; number of logical colours less 1
			staa	MOS_WS_0			; 
			cmpa	#0x10
			bhs	_VDU_19_exit
			addb	#0x10				; 
			bra	_BC8BA				; 

_VDU_19_exit:		pula
			tap					; 
			rts					; and exit


;*************************************************************************
;*									 *
;*	 OSWORD 12 - WRITE PALLETTE					 *
;*									 *
;*************************************************************************
;on entry X=&F0:Y=&F1:YX points to parameter block
;byte 0 = logical colour;  byte 1 physical colour; bytes 2-4=0

;; _OSWORD_12:		php					; push flags
;; 			and	VDU_COL_MASK			; and with number of logical colours less 1
;; 			tax					; X=A
;; 			iny					; Y=Y+1
;; 			lda	(OSW_X),Y			; get phsical colour
;; 			jmp	_LC89E				; do VDU19 with parameters in X and A


;*************************************************************************
;*									 *
;*	 VDU 22 - SELECT MODE						 *
;*	 MODE n								 *
;*									 *
;*	 1 parameter							 *
;*									 *
;*************************************************************************
;parameter in &323

_VDU_22:		ldaa	VDU_QUEUE_8			; get parameter
			jmp	_LCB33				; goto CB33





_LC951:			ldaa	VDU_CURS_PREV			; get last setting of CRT controller register
								; for cursor on
_LC954:			ldab	#0x0a				; Y=10 - cursor control register number
			bne	_BC985				; jump to C985, Y=register, Y=value



;********** set CRT controller *******************************************

_VDU_23_SET_CRTC:	ldaa	VDU_QUEUE_2			; get third
			ldab	VDU_QUEUE_1			; and second parameter
SET_CRTC_BeqA:		cmpb	#0x07				; is Y=7
			blo	_BC985				; if less C985
			bne	_BC967				; else if >7 C967
			adda	VDU_ADJUST			; else ADD screen vertical display adjustment

_BC967:			cmpb	#0x08				; If Y<>8
			bne	_BC972				; C972
			oraa	#0x00				; if bit 7 set
			bmi	_BC972				; C972
			eora	VDU_INTERLACE			; else EOR with interlace toggle

_BC972:			cmpb	#0x0a				; Y=10??
			bne	_BC985				; if not C985
			staa	VDU_CURS_PREV			; last setting of CRT controller register
			ldab	VDU_STATUS			; VDU status byte
			andb	#0x20				; check bit 5 printing at graphics cursor??
			ldab	#0x0a				; Y=10
			bne	_BC98B				; if graphics in use then C98B

_BC985:			stab	CRTC_ADDRESS			; else set CRTC address register
			staa	CRTC_DATA			; and poke new value to register Y
_BC98B:			rts					; exit

;*************************************************************************
;*									 *
;*	 VDU 25 - PLOT							 *
;*	 PLOT k,x,y							 *
;*	 DRAW x,y							 *
;*	 MOVE x,y							 *
;*	 PLOT x,y							 *
;*	 5 parameters							 *
;*									 *
;*************************************************************************
;;
;;_VDU_25:		ldx	VDU_PIX_BYTE			; pixels per byte
;;			beq	_LC938				; if no graphics available go to VDU Extension
;;			jmp	_LD060				; else enter Plot routine at D060


;********** adjust screen RAM addresses **********************************

_LC994:			ldx	VDU_MEM_HI			; window area start address lo
			jsr	_LCCF8_API			; subtract bytes per character row from this
			bcs	_BC9B3				; if no wraparound needed C9B3

			adda	VDU_MEM_PAGES			; screen RAM size hi byte to wrap around
			bcc	_BC9B3				; 

_LC9A4:			ldab	VDU_MEM				; window area start address lo
			ldaa	VDU_MEM_HI			; window area start address hi
			jsr	_LCAD4				; add bytes per char. row
			bpl	_BC9B3				; 

								; wrap around i other direction
			suba	VDU_MEM_PAGES			; screen RAM size hi byte
_BC9B3:			staa	VDU_MEM_HI			; window area start address hi
			stab	VDU_MEM				; window area start address lo
			ldx	VDU_MEM_HI
			ldab	#0x0c				; Y=12
			bra	SET_CRTCB_Xdiv8			; jump to CA0E




;*************************************************************************
;*									 *
;*	 VDU 26 - SET DEFAULT WINDOWS					 *
;*									 *
;*************************************************************************

_VDU_26:		ldab	#0x2c				; X=&2C
			ldx	VDU_G_WIN_L
_BC9C1:			clr	0,X				; clear all windows
			inx
			decb					; 
			bpl	_BC9C1				; until X=&FF

			ldab	VDU_MODE			; screen mode
			ldx	#_TEXT_ROW_TABLE
			jsr	my_ABX
			ldab	0,X
			stab	VDU_T_WIN_B			; bottom margin
			ldab	_TEXT_COL_TABLE-_TEXT_ROW_TABLE,X
								; text window right hand margin maximum
			stab	VDU_T_WIN_R			; text window right
			jsr	_LCA88_API			; calculate number of bytes in a line
			ldab	#0x03				; Y=3
			stab	VDU_QUEUE_8			; set as last parameter
			incb					; increment Y
			stab	VDU_QUEUE_6			; set parameters
			dec	VDU_QUEUE_7			; 
			dec	VDU_QUEUE_5			; 
			jsr	_VDU_24				; and do VDU 24
			ldaa	#0xf7				; 
			jsr	AND_VDU_STATUS			; clear bit 3 of &D0
			ldx	VDU_MEM_HI			; window area start address lo

SET_CRTC_CURSeqX_adj:	stx	VDU_CRTC_CUR_HI			; text cursor 6845 address
			ldab	VDU_CRTC_CUR
			ldaa	VDU_CRTC_CUR_HI
			bpl	SET_CURS_CHARSCANAB		; set cursor position
			suba	VDU_MEM_PAGES			; screen RAM size hi byte

;**************** set cursor position ************************************

SET_CURS_CHARSCANAB:	stab	VDU_TOP_SCAN			; set &D8/9 from X/A
			staa	VDU_TOP_SCAN_HI			; 
			ldx	VDU_CRTC_CUR_HI			; text cursor 6845 address
			ldab	#0x0e				; Y=15
SET_CRTCB_Xdiv8:	stx	VDU_TMP1			; else store X
			ldaa	VDU_MODE			; screen mode
			cmpa	#0x07				; is it mode 7?
			bhs	_BCA27				; if mode 7 selected CA27
			ldaa	VDU_TMP1
			lsra					; divide X/A by 8
			ror	VDU_TMP1+1			; 
			lsra					; 
			ror	VDU_TMP1+1			; 
			lsra					; 
			ror	VDU_TMP1+1			; 
SET_CRTC_D1:		staa	VDU_TMP1
			ldx	VDU_TMP1			; 
SET_CRTC_BeqX:		stx	VDU_TMP1
			stab	CRTC_ADDRESS			; write to CRTC address file register
			ldaa	VDU_TMP1
			staa	CRTC_DATA			; and to relevant address (register 14)
			incb					; Increment Y
			stab	CRTC_ADDRESS			; write to CRTC address file register
			ldaa	VDU_TMP1+1
			staa	CRTC_DATA			; and to relevant address (register 15)			
			rts					; and RETURN

_BCA27:			ldaa	VDU_TMP1
			suba	#0x74				; mode 7 subtract &74
			eora	#0x20				; EOR with &20
			jmp	SET_CRTC_D1

;*************************************************************************
;*									 *
;*	 VDU 24 - DEFINE GRAPHICS WINDOW				 *
;*									 *
;*	 8 parameters							 *
;*									 *
;*************************************************************************
;&31C/D Left margin
;&31E/F Bottom margin
;&320/1 Right margin
;&322/3 Top margin

;;			.org	0xca39
_VDU_24:		rts
;;_VDU_24:		jsr	_LCA81				; exchange 310/3 with 328/3
;;			ldx	#0x1c				; 
;;			ldy	#0x2c				; 
;;			jsr	_LD411				; calculate width=right - left
;;								; height = top-bottom
;;			ora	VDU_BITMAP_RD_5			; 
;;			bmi	_LCA81				; exchange 310/3 with 328/3 and exit
;;			ldx	#0x20				; X=&20
;;			jsr	_LD149				; scale pointers to mode
;;			ldx	#0x1c				; X=&1C
;;			jsr	_LD149				; scale pointers to mode
;;			lda	VDU_QUEUE_4			; check for negative margins
;;			ora	VDU_QUEUE_2			; 
;;			bmi	_LCA81				; if found exchange 310/3 with 328/3 and exit
;;			lda	VDU_QUEUE_8			; 
;;			bne	_LCA81				; exchange 310/3 with 328/3 and exit
;;			ldx	VDU_MODE			; screen mode
;;			lda	VDU_QUEUE_6			; right margin hi
;;			sta	VDU_TMP1			; store it
;;			lda	VDU_QUEUE_5			; right margin lo
;;			lsr	VDU_TMP1			; /2
;;			ror					; A=A/2
;;			lsr	VDU_TMP1			; /2
;;			bne	_LCA81				; exchange 310/3 with 328/3
;;			ror					; A=A/2
;;			lsr					; A=A/2
;;			cmp	_TEXT_COL_TABLE,X		; text window right hand margin maximum
;;			beq	_BCA7A				; if equal CA7A
;;			bpl	_LCA81				; exchange 310/3 with 328/3
;;
;;_BCA7A:			ldy	#0x00				; Y=0
;;			ldx	#0x1c				; X=&1C
;;			jsr	_LD47C				; set(300/7+Y) from (300/7+X)

;;;***************** exchange 310/3 with 328/3 *****************************
;;
;;_LCA81:			ldx	#<VDU_G_CUR_XX			; X=10
;;			ldy	#<VDU_BITMAP_READ		; Y=&28
;;			jmp	_LCDE6_EXG4_P3			; exchange 300/3+Y and 300/3+X



_LCA88_API:		incb					; Y=Y+1			
			clr	VDU_T_WIN_SZ_HI			; text window width hi (bytes)
			stab	VDU_T_WIN_SZ			; text window width lo (bytes)
			ldaa	VDU_BPC				; bytes per character
			lsra					; /2
			beq	_BCAA1				; if 0 exit
_BCA98:			asl	VDU_T_WIN_SZ			; text window width lo (bytes)
			rol	VDU_T_WIN_SZ_HI			; text window width hi (bytes)
			lsra					; /2
			bcc	_BCA98				; 
_BCAA1:			rts					; 



;***** Add number of bytes in a line to X/A ******************************

_LCAD4:			addb	VDU_BPR				; bytes per character row
			adca	VDU_BPR_HI			; bytes per character row
			rts					; and return

;********* control scrolling in paged mode *******************************

_BCAE0:			jsr	_LCB14				; zero paged mode line counter
_LCAE3:			jsr	_OSBYTE_118			; osbyte 118 check keyboard status; set LEDs
			bcc	_BCAEA				; if carry clear CAEA
			bmi	_BCAE0				; if M set CAE0 do it again

_BCAEA:			ldaa	VDU_STATUS			; VDU status byte
			eora	#0x04				; invert bit 2 paged scrolling
			anda	#0x46				; and if 2 cursors, paged mode off, or scrolling
			bne	_BCB1C				; barred then CB1C to exit

			ldaa	OSB_HALT_LINES			; paged mode counter
			bmi	_BCB19				; if negative then exit via CB19

			ldaa	VDU_T_CURS_Y			; current text line
			cmpa	VDU_T_WIN_B			; bottom margin
			blo	_BCB19				; increment line counter and exit

			lsra					; A=A/4
			lsra					; 
			sec					; set carry
			adca	OSB_HALT_LINES			; paged mode counter
			adca	VDU_T_WIN_T			; top of text window
			cmpa	VDU_T_WIN_B			; bottom margin
			blo	_BCB19				; increment line counter and exit

			clc					; clear carry
_BCB0E:			jsr	_OSBYTE_118			; osbyte 118 check keyboard status; set LEDs
			sec					; set carry
			bpl	_BCB0E				; if +ve result then loop till shift pressed

;**************** zero paged mode  counter *******************************

_LCB14:			ldaa	#0xff				; 
			staa	OSB_HALT_LINES			; paged mode counter
_BCB19:			inc	OSB_HALT_LINES			; paged mode counter
_BCB1C:			rts					; 


;********* intitialise VDU driver with MODE in A *************************

_VDU_INIT_MODE:		psha					; Save MODE in A
			ldab	#0x7f				; Prepare X=&7F for reset loop
			clra				; A=0
			staa	VDU_STATUS			; Clear VDU status byte to set default conditions
			ldx	#VDU_VARS_BASE

__vdu_mode_init_loop:	staa	0,X				; Zero VDU workspace at &300 to &37E
			inx
			decb					
			bne	__vdu_mode_init_loop		

			jsr	_OSBYTE_20			; Implode character definitions
			pula					; Get initial MODE back to A
			ldab	#0x7f				; X=&7F
			stab	VDU_TTX_CURSOR			; MODE 7 copy cursor character (could have set this at CB1E)

;********* enter here from VDU 22,n - MODE *******************************

_LCB33:			ldab	OSB_RAM_PAGES			; Check available RAM
			bmi	_BCB3A				; If 32K, use all MODEs
			oraa	#0x04				; Only 16K available, force to use MODEs 4-7

_BCB3A:			anda	#0x07				; X=A and 7 ensure legal mode
			staa	VDU_MODE			; Save current screen MODE
			tab
			ldx	#_TXT_BPC_TABLE
			jsr	my_ABX

			ldaa	_TAB_MAP_TYPE-_TXT_BPC_TABLE,X	; screen display memory index table
			staa	VDU_MAP_TYPE			; memory map type
			ldaa	_TBL_MODE_COLOURS-_TXT_BPC_TABLE,X	; Get number of colours -1 for this MODE
			staa	VDU_COL_MASK			; Set current number of logical colours less 1
			ldaa	_TXT_BPC_TABLE-_TXT_BPC_TABLE,X	; Get bytes/character for this MODE
			staa	VDU_BPC				; Set bytes per character
			ldaa	_TBL_VDU_PIXPB-_TXT_BPC_TABLE,X	; Get pixels/byte for this MODE
			staa	VDU_PIX_BYTE			; Set pixels per byte

			bne	_BCB56				; If non-zero, skip past
			ldaa	#0x07				; byte/pixel=0, this is MODE 7, prepare A=7 offset into mask table

_BCB56:			tab
			aslb					; A=A*2
			ldx	#_TAB_VDU_MASK_R
			jsr	my_ABX
			ldaa	0,X
			staa	VDU_MASK_LEFT			; colour mask left
_BCB5E:			asla					; A=A*2
			bpl	_BCB5E				; If still +ve CB5E
			staa	VDU_MASK_RIGHT			; colour mask right

			ldab	VDU_MAP_TYPE
			ldx	#_TAB_LAT4_MOSZ
			jsr	my_ABX

			ldaa	_TAB_LAT5_MOSZ-_TAB_LAT4_MOSZ,X	; VDU section control
			jsr	_WRITE_SYS_VIA_PORTB		; set hardware scrolling to VIA
			ldaa	_TAB_LAT4_MOSZ-_TAB_LAT4_MOSZ,X	; VDU section control
			jsr	_WRITE_SYS_VIA_PORTB		; set hardware scrolling to VIA
			ldaa	_VDU_MEMSZ_TAB-_TAB_LAT4_MOSZ,X	; Screen RAM size hi byte table
			staa	VDU_MEM_PAGES			; screen RAM size hi byte
			ldaa	_VDU_MEMLOC_TAB-_TAB_LAT4_MOSZ,X; screen ram address hi byte
			staa	VDU_PAGE			; hi byte of screen RAM address

			; translate mode map type (0=20K, 1=16K, 2=10k, 3=8K, 4=1K)
			; to index into 	0 => 3,C=1
			;			1 => 2,C=0
			;			2 => 1,C=1
			;			3 => 1,C=0
			;			4 => 0,C=1

			ldab	VDU_MAP_TYPE		
			addb	#2
			eorb	#7
			lsrb
			stab	VDU_BPR_HI

			ldx	#_TAB_BPR
			jsr	my_ABX

			ldaa	_TAB_MULTBL_LKUP-_TAB_BPR,X	; row multiplication table pointer
			staa	VDU_ROW_MULT			; store it
			ldaa	#>_MUL640_TABLE			; A=&C3
			staa	VDU_ROW_MULT_HI			; store it (&E0) now points to C3B5 or C375


;TODO ASSUME > broken!	.assume (_MUL640_TABLE & 0xFF00) ; "_MUL640_TABLE and _MUL40_TABLE must start in same page"

			ldaa	_TAB_BPR-_TAB_BPR,X		; get nuber of bytes per row from table
			staa	VDU_BPR				; store as bytes per character row

			ldaa	#0x43				; A=&43
			jsr	AND_VDU_STATUS			; A=A and &D0:&D0=A
			ldab	VDU_MODE			; screen mode
			ldx	#_ULA_SETTINGS
			jsr	my_ABX
			ldaa	0,X				; get video ULA control setting
			jsr	VID_ULA_SET			; set video ULA using osbyte 154 code

			tpa					; push flags
			psha
			sei					; set interrupts
			ldab	VDU_MAP_TYPE
			ldx	#_TAB_CRTCBYMOSZ		; get cursor end register data from table
			jsr	my_ABX

			ldab	0,X
			ldx	#_CRTC_REG_TAB
			jsr	my_ABX

			ldab	#0x0b				; Y=11
_BCBB0:			ldaa	0,X				; get end of 6845 registers 0-11 table
			jsr	SET_CRTC_BeqA			; set register Y
			dex					; reduce pointers
			decb					; 
			bpl	_BCBB0				; and if still >0 do it again

			pula					; pull flags
			tap
			jsr	_VDU_20				; set default colours
			jsr	_VDU_26				; set default windows

_LCBC1_DOCLS:			clrb					; X=0
			ldaa	VDU_PAGE			; hi byte of screen RAM address
			stab	VDU_MEM				; window area start address lo
			staa	VDU_MEM_HI			; window area start address hi
			ldx	VDU_MEM_HI
			jsr	SET_CRTC_CURSeqX_adj		; use AB to set new cursor address and set AX to CRTC start of mode address
			ldab	#0x0c				; Y=12
			jsr	SET_CRTC_BeqX			; set registers 12 and 13 in CRTC
			ldaa	VDU_T_BG			; background text colour

			clr	OSB_HALT_LINES			; paged mode counter
			clr	VDU_T_CURS_X			; text column
			clr	VDU_T_CURS_Y			; current text line

			ldx	VDU_MEM_HI
_CLS_LP:		staa	0,X
			inx
			cpx	#0x8000
			bne	_CLS_LP
			rts


_VDU_JUMP:		ldx	VDU_JUMPVEC_HI
			jmp	0,X

;********* subtract bytes per line from AB ******************************

_LCCF8_API:		subb	VDU_BPR
			sbca	VDU_BPR_HI
			cmpa	VDU_PAGE			; hi byte of screen RAM address
_BCD06:			rts					; return



;******** move text cursor to next line **********************************

_LCD3F:			ldaa	#0x02				; A=2 to check if scrolling disabled
			bita	VDU_STATUS			; VDU status byte
			bne	_BCD47				; if scrolling is barred CD47
			ldaa	#0x40
			bita	VDU_STATUS
			beq	_BCD79				; if cursor editing mode disabled RETURN

_BCD47:			ldaa	VDU_T_WIN_B			; bottom margin
			bcc	_BCD4F				; if carry clear on entry CD4F
			ldab	VDU_T_WIN_T			; else if carry set get top of text window
_BCD4F:			ldaa	VDU_STATUS
			bita	#0x40
			bvs	_BCD59				; and if cursor editing enabled CD59
			stab	VDU_T_CURS_Y			; get current text line
			pula					; pull return link from stack
			pula					; 
			jmp	_LC6AF				; set up cursor and display address

_BCD59:			tpa					; push flags
			cmpb	VDU_TI_CURS_Y			; Y coordinate of text input cursor
			beq	_BCD78				; if A=line count of text input cursor CD78 to exit
			tap					; get back flags
			bcc	_BCD66				; 
			dec	VDU_TI_CURS_Y			; Y coordinate of text input cursor

_BCD65:			rts					; exit

_BCD66:			inc	VDU_TI_CURS_Y			; Y coordinate of text input cursor
			rts					; exit
_BCD78:			tap
			rts


;*********************** set up write cursor ********************************

_LCD6A:			psha					; save flags and A
			tpa
			psha
			ldab	VDU_BPC				; bytes per character
			decb					; Y=Y-1
			bne	_BCD8F				; if Y=0 Mode 7 is in use

			ldaa	VDU_WORKSPACE+8			; so get mode 7 write character cursor character &7F
			ldx	VDU_TOP_SCAN_HI
			jsr	my_ABX
			staa	0,X				; store it at top scan line of current character
_LCD77:			pula
			tap
			pula
_BCD79:			rts					; and exit

_LCD7A:			psha					; push flags and A
			tpa
			psha
			ldab	VDU_BPC				; bytes per character
			decb					; 
			bne	_BCD8F				; if not mode 7
			ldx	VDU_TOP_SCAN_HI
			jsr	my_ABX
			ldaa	0,X				; get cursor from top scan line
			staa	VDU_WORKSPACE+8			; store it
			ldaa	VDU_TTX_CURSOR			; mode 7 write cursor character
			staa	0,X				; store it at scan line
			bra	_LCD77				; and exit

_BCD8F:			ldaa	#0xff				; A=&FF =cursor
			cmpb	#0x1f				; except in mode 2 (Y=&1F)
			bne	_BCD97				; if not CD97
			ldaa	#0x3f				; load cursor byte mask

;********** produce white block write cursor *****************************

_BCD97:			staa	VDU_TMP1			; store it
			ldx	VDU_TOP_SCAN_HI
			jsr	my_ABX
_BCD99:			ldaa	0,X				; get scan line byte
			eora	VDU_TMP1			; invert it
			staa	0,X				; store it on scan line
			dex					; decrement scan line counter
			decb
			bpl	_BCD99				; do it again
			bmi	_LCD77				; then jump to &CD77

_LCDA4:			jsr	_LCE5B				; exchange line and column cursors with workspace copies
			ldaa	VDU_T_WIN_B			; bottom margin
			staa	VDU_T_CURS_Y			; current text line
			jsr	_LCF06				; set up display address
_BCDB0:			jsr	_LCCF8_API			; subtract bytes per character row from this
			bcc	_BCDB8				; wraparound if necessary
			adda	VDU_MEM_PAGES			; screen RAM size hi byte
_BCDB8:			staa	VDU_TMP2			; store A
			stab	VDU_TMP1			; X
			staa	VDU_TMP3			; A again
			bcs	_BCDC6				; if C set there was no wraparound so CDC6
_BCDC0:			jsr	_LCE73				; copy line to new position
								; using (&DA) for read
								; and (&D8) for write
			bra	_LCDCE				; 

_BCDC6:			jsr	_LCCF8_API				; subtract bytes per character row from X/A
			bcs	_BCDC0				; if a result is outside screen RAM CDC0
			jsr	_LCE38				; perform a copy

_LCDCE:			ldaa	VDU_TMP3			; set write pointer from read pointer
			ldab	VDU_TMP1			; 
			staa	VDU_TOP_SCAN_HI			; 
			stab	VDU_TOP_SCAN			; 
			dec	VDU_TMP5			; decrement window height
			bne	_BCDB0				; and if not zero CDB0
_LCDDA_EXG_BMPR_CURS_X:	SWAP_VDU VDU_BITMAP_READ, VDU_T_CURS_X, 2
			rts


;******** execute upward scroll ******************************************

;;			.org	0xcdff

_LCDFF:			jsr	_LCE5B				; exchange line and column cursors with workspace copies
			ldab	VDU_T_WIN_T			; top of text window
			stab	VDU_T_CURS_Y			; current text line
			jsr	_LCF06				; set up display address
_BCE0B:			jsr	_LCAD4				; add bytes per char. row
			bpl	_BCE14				; 
								; 
			suba	VDU_MEM_PAGES			; screen RAM size hi byte

_BCE14:			staa	VDU_TMP1			; (&DA)=X/A
			stab	VDU_TMP2			; 
			staa	VDU_TMP3			; &DC=A
			bcs	_BCE22				; 
_BCE1C:			jsr	_LCE73				; copy line to new position
								; using (&DA) for read
								; and (&D8) for write
			jmp	_LCE2A				; exit


_BCE22:			jsr	_LCAD4				; add bytes per char. row
			bmi	_BCE1C				; if outside screen RAM CE1C
			jsr	_LCE38				; perform a copy
_LCE2A:			ldaa	VDU_TMP3			; 
			ldab	VDU_TMP2			; 
			staa	VDU_TOP_SCAN_HI			; 
			stab	VDU_TOP_SCAN			; 
			dec	VDU_TMP5			; decrement window height
			bne	_BCE0B				; CE0B if not 0
			bra	_LCDDA_EXG_BMPR_CURS_X		; exchange text column/linelse CDDA

_CPY_TMP1_SCANHI_B:
			ldx	VDU_TMP1
			ldaa	0,X				; copy 256 bytes
			inx
			stx	VDU_TMP1
			ldx	VDU_TOP_SCAN_HI
			staa	0,X				; 
			inx					; 
			stx	VDU_TOP_SCAN_HI
			incb
			bne	_CPY_TMP1_SCANHI_B		; Till Y=0 again
_BCE5A:			rts


;*********** copy routines ***********************************************

_LCE38:			ldab	VDU_T_WIN_SZ_HI			; text window width hi (bytes)
			stab	VDU_TMP4
			beq	_BCE4D				; if no more than 256 bytes to copy X=0 so CE4D

			clrb					; Y=0 to set loop counter
_BCE3F:			jsr	_CPY_TMP1_SCANHI_B
			dec	VDU_TMP4			; decrement window width
			bne	_BCE3F				; if not 0 go back and do loop again

_BCE4D:			ldab	VDU_T_WIN_SZ			; text window width lo (bytes)
			beq	_BCE5A				; if Y=0 CE5A
			jmp	_CPY_TMP1_SCANHI_B


_LCE5B:			jsr	_LCDDA_EXG_BMPR_CURS_X		; exchange text column/line with workspace
								; set carry
			ldaa	VDU_T_WIN_B			; bottom margin
			suba	VDU_T_WIN_T			; top of text window
			staa	VDU_TMP5			; store it
			bne	_LCE6E				; set text column to left hand column
			pula					; get back return address
			pula					; 
			jmp	_LCDDA_EXG_BMPR_CURS_X				; exchange text column/line with workspace

_LCE6E:			ldaa	VDU_T_WIN_L			; text window left
			bpl	_BCEE3				; Jump CEE3 always!

_LCE73:			ldaa	VDU_TMP1			; get back A
			psha					; push A
			
			ldaa	VDU_T_WIN_R			; text window right
			suba	VDU_T_WIN_L			; text window left
			staa	VDU_TMP6			; 
_BCE7F:			ldab	VDU_BPC				; bytes per character to set loop counter
			jsr	_CPY_TMP1_SCANHI_B

			; check for wrap around of screen
			ldaa	VDU_TOP_SCAN_HI
			bpl	_skBCE7_1
			suba	VDU_MEM_PAGES
			staa	VDU_TOP_SCAN_HI
_skBCE7_1:		ldaa	VDU_TMP1
			bpl	_skBCE7_2
			suba	VDU_MEM_PAGES
			staa	VDU_TMP1
_skBCE7_2:
			dec	VDU_TMP6			; decrement window width
			bpl	_BCE7F				; and if still +ve do it all again
			pula					; get back A
			staa	VDU_TMP1			; and store it
			rts					; then exit

;*********** clear a line ************************************************

_LCEAC:			ldaa	VDU_T_CURS_X			; text column
			psha					; save it
			jsr	_LCE6E				; set text column to left hand column
			jsr	_LCF06				; set up display address
			ldaa	VDU_T_WIN_R			; text window right
			suba	VDU_T_WIN_L			; text window left
			staa	VDU_TMP3			; as window width
_BCEBF:			ldaa	VDU_T_BG			; background text colour
			ldab	VDU_BPC				; bytes per character

			ldx	VDU_TOP_SCAN_HI
_BCEC5:			staa	0,X				; store background colour at this point on screen
			inx			
			decb
			bne	_BCEC5				; if Y<>0 do it again

			stx	VDU_TOP_SCAN_HI			; restore D8/9
			bpl	_skBCEC5_1
			ldaa	VDU_TOP_SCAN_HI
			suba	VDU_MEM_PAGES
			staa	VDU_TOP_SCAN_HI
_skBCEC5_1:		dec	VDU_TMP3			; decrement window width
			bpl	_BCEBF				; ind if not 0 do it all again
			pula					; get back A
_BCEE3:			staa	VDU_T_CURS_X			; restore text column
_BCEE6:			sec					; set carry
			rts					; and exit


_LCEE8:			ldab	VDU_T_CURS_X			; text column
			cmpb	VDU_T_WIN_L			; text window left
			blo	_BCEE6				; if less than left margin return with carry set
			cmpb	VDU_T_WIN_R			; text window right
			bhi	_BCEE6				; if greater than right margin return with carry set

_BCEF7:			ldab	VDU_T_CURS_Y			; current text line
			cmpb	VDU_T_WIN_T			; top of text window
			bmi	_BCEE6				; if less than top margin
			cmpb	VDU_T_WIN_B			; bottom margin
			beq	_LCF06				; set up display address
			bpl	_BCEE6				; or greater than bottom margin return with carry set

			; falls through

;************:set up display address *************************************

;Mode 0: (0319)*640+(0318)* 8
;Mode 1: (0319)*640+(0318)*16
;Mode 2: (0319)*640+(0318)*32
;Mode 3: (0319)*640+(0318)* 8
;Mode 4: (0319)*320+(0318)* 8
;Mode 5: (0319)*320+(0318)*16
;Mode 6: (0319)*320+(0318)* 8
;Mode 7: (0319)* 40+(0318)
;this gives a displacement relative to the screen RAM start address
;which is added to the calculated number and stored in in 34A/B
;if the result is less than &8000, the top of screen RAM it is copied into X/A
;and D8/9.
;if the result is greater than &7FFF the hi byte of screen RAM size is
;subtracted to wraparound the screen. X/A, D8/9 are then set from this

_LCF06:			ldaa	VDU_T_CURS_Y			; current text line
			asla					; A=A*2
			tab					; Y=A
			ldx	VDU_ROW_MULT_HI
			jsr	my_ABX
			ldaa	0,X				; get CRTC multiplication table pointer
			staa	VDU_TOP_SCAN_HI			; &D9=A
			ldaa	1,X
			ldab	#0x02				; A=2
			andb	VDU_MAP_TYPE			; memory map type
			beq	_BCF1E				; 
			lsr	VDU_TOP_SCAN_HI			; &D9=&D9/2
			rora					; A=A/2 +(128*carry)
_BCF1E:			adda	VDU_MEM				; window area start address lo
			staa	VDU_TOP_SCAN			; store it
			ldaa	VDU_TOP_SCAN_HI			; 
			adca	VDU_MEM_HI			; window area start address hi
			staa	VDU_TOP_SCAN_HI			; NOTE: was Y
			ldaa	VDU_T_CURS_X			; text column
			ldab	VDU_BPC				; bytes per character
			decb					; X=X-1
			beq	_BCF45				; if X=0 mode 7 CF44
			cmpb	#0x0f				; is it mode 1 or mode 5?
			beq	_BCF39				; yes CF39 with carry set
			blo	_BCF3A				; if its less (mode 0,3,4,6) CF3A
			asla					; A=A*16 if entered here (mode 2)
_BCF39:			asla					; A=A*8 if entered here
_BCF3A:			asla					; A=A*4 if entered here
			asla					; 
			bcc	_BCF40				; if carry clear
			inc	VDU_TOP_SCAN_HI			; Y=Y+2
			inc	VDU_TOP_SCAN_HI			; 
_BCF40:			asla					; A=A*2
			bcc	_BCF45				; if carry clear add to &D8
			inc	VDU_TOP_SCAN_HI			; if not Y=Y+1

_BCF45:			adda	VDU_TOP_SCAN			; add to &D8
			staa	VDU_TOP_SCAN			; and store it
			staa	VDU_CRTC_CUR			; text cursor 6845 address
			tab					; X=A
			ldaa	VDU_TOP_SCAN_HI				; A=Y
			adca	#0x00				; Add carry if set
			staa	VDU_CRTC_CUR_HI			; text cursor 6845 address
			bpl	_BCF59				; if less than &800 goto &CF59
								; else wrap around
			sbca	VDU_MEM_PAGES			; screen RAM size hi byte

_BCF59:			staa	VDU_TOP_SCAN_HI			; store in high byte
			clc					; clear carry
			rts					; and exit





VDU_SWAP:		staa	VDU_TMP1
			stx	zp_ptr1
			jsr	my_ABX
			stx	zp_ptr2
VDU_SWAP_LP:		ldaa	0,X
			psha
			ldx	zp_ptr1
			ldaa	0,X
			tab
			pula
			staa	0,X
			inx
			stx	zp_ptr1
			ldx	zp_ptr2
			stab	0,X
			inx	
			stx	zp_ptr2
			dec	VDU_TMP1
			bne	VDU_SWAP_LP
			rts

_BCF5D:		SWI

_VDU_OUT_CHAR:		ldab	VDU_COL_MASK			; number of logical colours less 1
			beq	_VDU_OUT_MODE7			; if MODE 7 CFDC

			jsr	_LD03E				; set up character definition pointers
_LCFBF:			ldab	VDU_COL_MASK			; number of logical colours less 1
			ldaa	VDU_STATUS			; VDU status byte
			anda	#0x20				; and out bit 5 printing at graphics cursor
			bne	_BCF5D				; if set CF5D
			cmpb	#0x03				; if X=3
			beq	_VDU_OUT_COL4			; goto CFEE to handle 4 colour modes
			bhi	_VDU_OUT_COL16			; else if X>3 D01E to deal with 16 colours

			ldab	#7
_BCFD0:			ldx	VDU_TMP5
			ldaa	0,X				; get pattern byte
			inx
			stx	VDU_TMP5
			oraa	VDU_T_OR_MASK			; text colour byte to be orred or EORed into memory
			eora	VDU_T_EOR_MASK			; text colour byte to be orred or EORed into memory
			ldx	VDU_TOP_SCAN_HI
			staa	0,X
			inx
			stx	VDU_TOP_SCAN_HI
			decb					; Y=Y-1
			bpl	_BCFD0				; if still +ve do loop again
			rts					; and exit

;******* convert teletext characters *************************************
;mode 7
_VDU_OUT_MODE7:		ldab	#0x02				; Y=2
			ldx	#_TELETEXT_CHAR_TAB
__mode7_xlate_loop:	cmpa	2,X				; compare with teletext conversion table
			beq	__mode7_xlate_char		; if equal then CFE9
			dex					; else Y=Y-1
			decb
			bpl	__mode7_xlate_loop		; and if +ve CFDE

__mode7_out_char:	ldx	VDU_TOP_SCAN_HI
			staa	0,X				; if not write byte to screen
			rts					; and exit



__mode7_xlate_char:	ldaa	1,X				; convert with teletext conversion table
			bra	__mode7_out_char		; and write it


;***********four colour modes ********************************************

_VDU_OUT_COL4:		ldab	#7
			stab	VDU_TMP4
_VDU_OUT_COL4_lp:	ldx	VDU_TMP5
			ldab	0,X				; get pattern byte
			inx
			stx	VDU_TMP5
			pshb					; save it
			lsrb					; move hi nybble to lo
			lsrb					; 
			lsrb					; 
			lsrb					; 
			ldx	#_COL16_MASK_TAB		; 4 colour mode byte mask look up table
			jsr	my_ABX
			ldaa	0,X
			oraa	VDU_T_OR_MASK			; text colour byte to be orred or EORed into memory
			eora	VDU_T_EOR_MASK			; text colour byte to be orred or EORed into memory
			pulb
			andb	#0x0F
			psha
			ldx	#_COL16_MASK_TAB		; 4 colour mode byte mask look up table
			jsr	my_ABX
			ldaa	0,X
			oraa	VDU_T_OR_MASK			; text colour byte to be orred or EORed into memory
			eora	VDU_T_EOR_MASK			; text colour byte to be orred or EORed into memory

			ldx	VDU_TOP_SCAN_HI
			staa	8,X				; write to screen
			pula
			staa	0,X				; write to screen
			inx
			stx	VDU_TOP_SCAN_HI
			dec	VDU_TMP4
			bpl	_VDU_OUT_COL4_lp

			rts					; exit


;******* 16 COLOUR MODES *************************************************

_VDU_OUT_COL16:		ldaa	#7			
_VDU_OUT_COL16_lp:	ldx	VDU_TMP5
			ldab	0,X				; get pattern byte
			inx
			stx	VDU_TMP5
			stab	VDU_TMP3			; store it
			clrb
			sec					; set carry
			rol	VDU_TMP3			; carry now occupies bit 0 of DC
_BD023:			rolb					; get bit 7 from &DC into A bit 0
			asl	VDU_TMP3			; rotate again to get second
			rolb					; bit into A
			ldx	#_COL4_MASK_TAB
			jsr	my_ABX
			ldab	0,X
			orab	VDU_T_OR_MASK			; and set colour factors
			eorb	VDU_T_EOR_MASK		
			pshb			
			clrb					; also clears cy
			rol	VDU_TMP3
			bne	_BD023				; when DC=0 again D018 to deal with next pattern byte
			ldx	VDU_TOP_SCAN_HI
			pulb	
			stab	24,X
			pulb
			stab	16,X
			pulb
			stab	8,X
			pulb
			stab	0,X
			inx
			stx	VDU_TOP_SCAN_HI
			deca
			bpl	_VDU_OUT_COL16_lp
			rts


;************* calculate pattern address for given code ******************
;A contains code on entry = 12345678

_LD03E:			asla					; 23456780  C holds 1
			rola					; 34567801  C holds 2
			rola					; 45678012  C holds 3
			staa	VDU_TMP6			; save this pattern
			anda	#0x03				; 00000012
			rola					; 00000123 C=0
			tab					; X=A=0 - 7
			anda	#0x03				; A=00000023
			adca	#(>font)-1			; A=&BF,C0 or C1
			staa	VDU_TMP5			; this is used as a pointer
			ldx	#_LC40D
			jsr	my_ABX
			ldaa	0,X				; A=&80/2^X i.e.1,2,4,8,&10,&20,&40, or &80
			bita	VDU_FONT_FLAGS			; with font flag
			beq	_BD057				; if 0 D057
			ldx	#VDU_FONT_FLAGS
			jsr	my_ABX
			ldaa	0,X				; else get hi byte from table
			staa	VDU_TMP5
_BD057:								; store Y
			ldaa	VDU_TMP6			; get back pattern
			anda	#0xf8				; convert to 45678000
			staa	VDU_TMP6			; and re store it
			rts					; exit
								;




_LD918:			ldaa	#0xbd				; zero bits 2 and 6 of VDU status
			jsr	AND_VDU_STATUS				; 
			jsr	_LC951				; set normal cursor
			ldaa	#0x0d				; A=&0D
			rts					; and return
								; this is response of CR as end of edit line



;*************************************************************************
;*************************************************************************
;**									**
;**	 SYSTEM STARTUP							**
;**									**
;*************************************************************************
;*************************************************************************

;* DEFAULT PAGE &02 SETTINGS (VECTORS, OSBYTE VARIABLES)
;* RESET CODE

;*************************************************************************
;*									 *
;*	 DEFAULT SYSTEM SETTINGS FOR PAGE &02				 *
;*									 *
;*************************************************************************

; -------------------------------------------------------------------------
; |									  |
; |	  DEFAULT VECTOR TABLE						  |
; |									  |
; -------------------------------------------------------------------------


_VECTOR_TABLE:		.word	_USERV				; USERV				&200
			.word	_BRKV				; BRKV				&202
			.word	_IRQ1V				; IRQ1V				&204
			.word	_IRQ2V				; IRQ2V				&206
			.word	_CLIV				; CLIV				&208
			.word	_BYTEV				; BYTEV				&20A
			.word	_WORDV				; WORDV				&20C
			.word	_NVWRCH				; WRCHV				&20E
			.word	_NVRDCH				; RDCHV				&210
			.word	_FILEV				; FILEV				&212
			.word	_ARGSV				; ARGSV				&214
			.word	_BGETV				; BGETV				&216
			.word	_BPUTV				; BPUTV				&218
			.word	_NOTIMPV			; GBPBV				&21A
			.word	_FINDV				; FINDV				&21C
			.word	_FSCV				; FSCV				&21E
			.word	_NOTIMPV			; EVNTV				&220
			.word	_NOTIMPV			; UPTV				&222
			.word	_NOTIMPV			; NETV				&224
			.word	_NOTIMPV			; VDUV				&226
			.word	_KEYV				; KEYV				&228
			.word	_INSBV				; INSBV				&22A
			.word	_REMVB				; REMVB				&22C
			.word	_CNPV				; CNPV				&22E
			.word	_NOTIMPV			; IND1V				&230
			.word	_NOTIMPV			; IND2V				&232
			.word	_NOTIMPV			; IND3V				&234

; -------------------------------------------------------------------------
; |									  |
; |	  DEFAULT MOS VARIABLES SETTINGS				  |
; |									  |
; -------------------------------------------------------------------------

;* Read/Written by OSBYTE &A6 to &FC

			.word	0x0190				; OSBYTE variables base address		 &236	*FX166/7
								; (address to add to osbyte number)
			.word	0x0d9f				; Address of extended vectors		 &238	*FX168/9
			.word	ROM_TABLE			; Address of ROM information table	 &23A	*FX170/1
			.word	_KEY_TRANS_TABLE_1 - 0x10	; Address of key translation table	 &23C	*FX172/3
			.word	VDU_G_WIN_L			; Address of VDU variables		 &23E	*FX174/5

			.byte	0x00				; CFS/Vertical sync Timeout counter	 &240	*FX176
			.byte	0x00				; Current input buffer number		 &241	*FX177
			.byte	0xff				; Keyboard interrupt processing flag	 &242	*FX178
			.byte	0x00				; Primary OSHWM (default PAGE)		 &243	*FX179
			.byte	0x00				; Current OSHWM (PAGE)			 &244	*FX180
			.byte	0x01				; RS423 input mode			 &245	*FX181
			.byte	0x00				; Character explosion state		 &246	*FX182
			.byte	0x00				; CFS/RFS selection, CFS=0 ROM=2	 &247	*FX183
			.byte	0x00				; Video ULA control register copy	 &248	*FX184
			.byte	0x00				; Pallette setting copy			 &249	*FX185
			.byte	0x00				; ROM number selected at last BRK	 &24A	*FX186
			.byte	0xff				; BASIC ROM number			 &24B	*FX187
			.byte	0x04				; Current ADC channel number		 &24C	*FX188
			.byte	0x04				; Maximum ADC channel number		 &24D	*FX189
			.byte	0x00				; ADC conversion 0/8bit/12bit		 &24E	*FX190
			.byte	0xff				; RS423 busy flag (bit 7=0, busy)	 &24F	*FX191

			.byte	0x56				; ACIA control register copy		 &250	*FX192
			.byte	0x19				; Flash counter				 &251	*FX193
			.byte	0x19				; Flash mark period count		 &252	*FX194
			.byte	0x19				; Flash space period count		 &253	*FX195
			.byte	0x32				; Keyboard auto-repeat delay		 &254	*FX196
			.byte	0x08				; Keyboard auto-repeat rate		 &255	*FX197
			.byte	0x00				; *EXEC file handle			 &256	*FX198
			.byte	0x00				; *SPOOL file handle			 &257	*FX199
			.byte	0x00				; Break/Escape handing			 &258	*FX200
			.byte	0x00				; Econet keyboard disable flag		 &259	*FX201
			.byte	0x20				; Keyboard status			 &25A	*FX202
								; bit 3=1 shift pressed
								; bit 4=0 caps	lock
								; bit 5=0 shift lock
								; bit 6=1 control bit
								; bit 7=1 shift enabled
			.byte	0x09				; Serial input buffer full threshold	 &25B	*FX203
			.byte	0x00				; Serial input suppression flag		 &25C	*FX204
			.byte	0x00				; Cassette/RS423 flag (0=CFS, &40=RS423) &25D	*FX205
			.byte	0x00				; Econet OSBYTE/OSWORD interception flag &25E	*FX206
			.byte	0x00				; Econet OSRDCH interception flag	 &25F	*FX207

			.byte	0x00				; Econet OSWRCH interception flag	 &260	*FX208
			.byte	0x50				; Speech enable/disable flag (&20/&50)	 &261	*FX209
			.byte	0x00				; Sound output disable flag		 &262	*FX210
			.byte	0x03				; BELL channel number			 &263	*FX211
			.byte	0x90				; BELL amplitude/Envelope number	 &264	*FX212
			.byte	0x64				; BELL frequency			 &265	*FX213
			.byte	0x06				; BELL duration				 &266	*FX214
			.byte	0x81				; Startup message/!BOOT error status	 &267	*FX215
			.byte	0x00				; Length of current soft key string	 &268	*FX216
			.byte	0x00				; Lines printed since last paged halt	 &269	*FX217
			.byte	0x00				; 0-(Number of items in VDU queue)	 &26A	*FX218
			.byte	0x09				; TAB key value				 &26B	*FX219
			.byte	0x1b				; ESCAPE character			 &26C	*FX220

				; The following are input buffer code interpretation variables for
				; bytes entered into the input buffer with b7 set (is 128-255).
				; The standard keyboard only enters characters &80-&BF with the
				; function keys, but other characters can be entered, for instance
				; via serial input of via other keyboard input systems.
				; 0=ignore key
				; 1=expand as soft key
				; 2-FF add to base for ASCII code
			.byte	0x01				; C0-&CF				 &26D	*FX221
			.byte	0xd0				; D0-&DF				 &26E	*FX222
			.byte	0xe0				; E0-&EF				 &26F	*FX223
			.byte	0xf0				; F0-&FF				 &270	*FX224
			.byte	0x01				; 80-&8F function key			 &271	*FX225
			.byte	0x80				; 90-&9F Shift+function key		 &272	*FX226
			.byte	0x90				; A0-&AF Ctrl+function key		 &273	*FX227
			.byte	0x00				; B0-&BF Shift+Ctrl+function key	 &274	*FX228

			.byte	0x00				; ESCAPE key status (0=ESC, 1=ASCII)	 &275	*FX229
			.byte	0x00				; ESCAPE action				 &276	*FX230
_BD9B7:			.byte	0xff				; USER 6522 Bit IRQ mask		 &277	*FX231
			.byte	0xff				; 6850 ACIA Bit IRQ bit mask		 &278	*FX232
			.byte	0xff				; System 6522 IRQ bit mask		 &279	*FX233
			.byte	0x00				; Tube prescence flag			 &27A	*FX234
			.byte	0x00				; Speech processor prescence flag	 &27B	*FX235
			.byte	0x00				; Character destination status		 &27C	*FX236
			.byte	0x00				; Cursor editing status			 &27D	*FX237

;****************** Soft Reset high water mark ***************************

			.byte	0x00				; unused				 &27E	*FX238
			.byte	0x00				; unused				 &27F	*FX239
			.byte	0x00				; Country code				 &280	*FX240
			.byte	0x00				; User flag				 &281	*FX241
			.byte	0x64				; Serial ULA control register copy	 &282	*FX242
			.byte	0x05				; Current system clock state		 &283	*FX243
			.byte	0xff				; Soft key consitancy flag		 &284	*FX244
			.byte	0x01				; Printer destination			 &285	*FX245
			.byte	0x0a				; Printer ignore character		 &286	*FX246

;****************** Hard Reset High water mark ***************************

			.byte	0x00				; Break Intercept Vector JMP opcode	 &288	*FX247
			.byte	0x00				; Break Intercept Vector address low	 &288	*FX248
			.byte	0x00				; Break Intercept Vector address high	 &289	*FX249
			.byte	0x00				; unused (memory used for VDU)		 &28A	*FX250
			.byte	0x00				; unused (memory used for display)	 &28B	*FX251
			.byte	0xff				; Current language ROM number		 &28C	*FX252

;****************** Power-On Reset High Water mark ***********************


;TODO: reinstate printer/streams etc
; WRCH control routine
; ====================
_NVWRCH:		
			psha					; Save all registers
			pshb
			tsx					
			ldaa	1,X				; Get A back from stack
			psha					; Save A

;;			bit	OSB_OSWRCH_INT			; Check OSWRCH interception flag
;;			bpl	__no_intercept			; Not set, skip interception call
;;			tay					; Pass character to Y
;;			lda	#0x04				; A=4 for OSWRCH call
;;			jsr	_NETV				; Call interception code
;;			bcs	_BE10D				; If claimed, jump past to exit
;;
;;__no_intercept:		clc					; Prepare to not send this to printer
;;			lda	#0x02				; Check output destination
;;			bit	OSB_OUT_STREAM			; Is VDU driver disabled?
;;			bne	_BE0C8				; Yes, skip past VDU driver
;;			pla					; Get character back
;;			pha					; Resave character
			jsr	_VDUCHR				; Call VDU driver
;;								; On exit, C=1 if character to be sent to printer
;;
;;_B;;E0C8:			lda	#0x08				; Check output destination
;;			bit	OSB_OUT_STREAM			; Is printer seperately enabled?
;;			bne	_BE0D1				; Yes, jump to call printer driver
;;			bcc	_BE0D6				; Carry clear, don't sent to printer
;;_B;;E0D1:			pla					; Get character back
;;			pha					; Resave character
;;			jsr	_PRINTER_OUT			; Call printer driver
;;
;;_B;;E0D6:			lda	OSB_OUT_STREAM			; Check output destination
;;			ror	A				; Is serial output enabled?
;;			bcc	_BE0F7				; No, skip past serial output
;;			ldy	RS423_TIMEOUT			; Get serial timout counter
;;			dey					; Decrease counter
;;			bpl	_BE0F7				; Timed out, skip past serial code
;;			pla					; Get character back
;;			pha					; Resave character
;;			php					; Save IRQs
;;			sei					; Disable IRQs
;;			ldx	#0x02				; X=2 for serial output buffer
;;			pha					; Save character
;;			jsr	_OSBYTE_152			; Examine serial output buffer
;;			bcc	_BE0F0				; Buffer not full, jump to send character
;;			jsr	_LE170				; Wait for buffer to empty a bit
;;_B;;E0F0:			pla					; Get character back
;;			ldx	#0x02				; X=2 for serial output buffer
;;			jsr	_BUFFER_SAVE			; Send character to serial output buffer
;;			plp					; Restore IRQs
;;
;;_B;;E0F7:			lda	#0x10				; Check output destination
;;			bit	OSB_OUT_STREAM			; Is SPOOL output disabled?
;;			bne	_BE10D				; Yes, skip past SPOOL output
;;			ldy	OSB_SPOOL_HND			; Get SPOOL handle
;;			beq	_BE10D				; If not open, skip past SPOOL output
;;			pla					; Get character back
;;			pha					; Resave character
;;			sec					
;;			ror	CRFS_ACTIVE			; Set RFS/CFS's 'spooling' flag
;;			jsr	OSBPUT				; Write character to SPOOL channel
;;			lsr	CRFS_ACTIVE			; Reset RFS/CFS's 'spooling' flag

_BE10D:			pula					; Restore all registers
			pulb					
			pula					
			rts					; Exit


;*************************************************************************
;*									 *
;*	  OSBYTE &76 (118) SET LEDs to Keyboard Status			 *
;*									 *
;*************************************************************************
				; osbyte entry with carry set
				; called from &CB0E, &CAE3, &DB8B

_OSBYTE_118:		tpa					; PUSH P
			psha
			sei					; DISABLE INTERUPTS
			ldaa	#0x40				; switch on CAPS and SHIFT lock lights
			jsr	_SET_LEDS_TEST_ESCAPE		; via subroutine
			bmi	__led_escape			; if ESCAPE exists (M set) E9E7
			clc					; else clear V and C
			clv					; before calling main keyboard routine to
			jsr	_LF068				; switch on lights as required
__led_escape:		tab
			pula					; get back flags
			tap
			rolb					; and rotate carry into bit 0
			rts					; Return to calling routine
								;
;***************** Turn on keyboard lights and Test Escape flag ************
				; called from &E1FE, &E9DD
				;
_SET_LEDS_TEST_ESCAPE:	bcc	_BE9F5				; if carry clear
			ldab	#0x07				; switch on shift lock light
			stab	SYS_VIA_IORB			; 
			decb					; Y=6
			stab	SYS_VIA_IORB			; switch on Caps lock light
_BE9F5:			bita	ESCAPE_FLAG			; set minus flag if bit 7 of &00FF is set indicating
			rts					; that ESCAPE condition exists, then return
								;


;****************** Write A to SYSTEM VIA register B *************************
				; called from &CB6D, &CB73
_WRITE_SYS_VIA_PORTB:	pshb
			tab
			tpa			
			sei					; disable interupts
			stab	SYS_VIA_IORB			; write register B from Accumulator
			tap					; get back flags
			tba
			pulb
			rts					; and exit

;;;*************************************************************************
;;;*									 *
;;;*	 OSBYTE 154 (&9A) SET VIDEO ULA					 *
;;;*									 *
;;;*************************************************************************
;;
;;_OSBYTE_154:		txa					; osbyte entry! X transferred to A thence to

;*******Set Video ULA control register **entry from VDU routines **************
				; called from &CBA6, &DD37

VID_ULA_SET:		pshb					; save flags
			tab
			tpa
			sei					; disable interupts
			stab	OSB_VIDPROC_CTL			; save RAM copy of new parameter
			stab	VID_ULA_CTRL			; write to control register
			ldab	OSB_FLASH_MARK			; read	space count
			stab	OSB_FLASH_TIME			; set flash counter to this value
			tap
			tba
			pulb					; get back status
			rts					; and return

;*************************************************************************
;*									 *
;*	  OSBYTE &9B (155) write to palette register			 *
;*									 *
;*************************************************************************
;entry X contains value to write
_OSBYTE_155:		;;txa					; A=X
; API change B contains value
_LEA11:			pshb
			tab
			eorb	#0x07				; convert to palette format
			tpa					; 
			sei					; prevent interrupts
			stab	OSB_VIDPROC_PAL			; store as current palette setting
			stab	VID_ULA_PALETTE			; store actual colour in register
			tap					; get back flags
			tba
			pulb
			rts					; and exit


;*************************************************************************
;*									 *
;*	 KEY TRANSLATION TABLES						 *
;*									 *
;*	 7 BLOCKS interspersed with unrelated code			 *
;*************************************************************************

; key data block 1

_KEY_TRANS_TABLE_1:	.byte	0x71,0x33,0x34,0x35,0x84,0x38,0x87,0x2d,0x5e,0x8c
								; q ,3 ,4 ,5 ,f4,8 ,f7,- ,^ ,rt

;*************************************************************************
;*									 *
;* Main entry to keyboard routines					 *
;*									 *
;*************************************************************************

_LF065:			psha
			tpa
			oraa	#CC_V|CC_N
			psha
			bra	_CALLKEYV2


_LF068:			psha
			tpa
			psha
_CALLKEYV2:		ldx	VEC_KEYV
			pula
			tap
			pula
			jmp	0,X				; i.e. KEYV




;************* Unimplemented Vectors *********************
_USERV:
_BRKV:
_IRQ1V:
_IRQ2V:
_CLIV:
_BYTEV:
_WORDV:
_NVRDCH:
_FILEV:
_ARGSV:
_BGETV:
_BPUTV:
_NOTIMPV:
_FINDV:
_FSCV:
_INSBV:
_REMVB:
_CNPV:

		swi

_KEYV:		clra
		rts


DO_OWRCH:	swi

CALL_OSWRCH:	ldx	VEC_OSWRCH
		jmp	0,X

OSWRCH:		jmp	CALL_OSWRCH

		
