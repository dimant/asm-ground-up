

		AREA AddSigned, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		LDR		R0, =SignData
		MOV		R3, #9
		MOV		R2, #0

Loop	LDRSB	R1, [R0]
		ADD		R2, R2, R1
		ADD		R0, R0, #1
		SUBS	R3, R3, #1
		BNE		Loop

Stop	B		Stop

		ALIGN

		AREA	AddSigned, DATA, READONLY
SignData	DCB 1, -1, 2, -2, 4, -4, 6, -7, 8

		END