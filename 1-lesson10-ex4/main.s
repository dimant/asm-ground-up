num		EQU		2

		AREA JmpTbl, CODE, READONLY
		ENTRY
		EXPORT __main
			
			
__main
		MOV		R0, #1
		MOV		R1, #3
		MOV		R2, #2
		
		BL		arithFunc

Stop	B		Stop

arithFunc
		CMP		R0, #num
		MOVHS	PC, LR
		ADRL	R3, JumpTable
		LDR		PC,  [R3, R0, LSL #2]
		
JumpTable
		DCD		DoAdd
		DCD		DoSub
			
DoAdd	ADD 	R0, R1, R2
		BX		LR

DoSub	SUB 	R0, R1, R2
		BX 		LR

		END