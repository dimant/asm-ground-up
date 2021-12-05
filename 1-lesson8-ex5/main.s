COUNT		RN		R0
MAX			RN		R1
PTR			RN		R2
NEXT		RN		R3

			AREA FindMax, CODE, READONLY
			ENTRY
			EXPORT __main
				
				
__main
			MOV		COUNT,	#5
			MOV		MAX, 	#0
			LDR		PTR,	=MyData
			
Again		LDR		NEXT,	[PTR]
			CMP		MAX, 	NEXT
			BHS		Continue
			MOV		MAX, NEXT

Continue	ADD 	PTR, PTR, #4
			SUBS	COUNT, COUNT, #1
			BNE		Again

Stop		B		Stop

			AREA FindMax, DATA, READONLY
MyData		DCD 69, 87, 86, 45, 75

			END