COUNT	RN	R1
MIN		RN	R2
NEXT	RN	R3
PTR		RN	R4


		AREA FindSignedMin, CODE, READONLY
		ENTRY
		EXPORT __main
			
			
__main
			LDR		PTR, =SignData
			MOV		COUNT, #9
			LDRSB	MIN, [PTR]
			ADD		PTR, PTR, #1
		
Again		LDRSB	NEXT, [PTR]
			CMP		NEXT, MIN
			BGE		Continue
			MOV		MIN, NEXT
		
Continue	ADD		PTR, PTR, #1
			SUBS	COUNT, COUNT, #1
			BNE		Again
	

Stop	B		Stop

		AREA FindSignedMin, DATA, READONLY
SignData	DCB -1, -2, -3, -2, -1, -2, -3, -4, -3
		

		END