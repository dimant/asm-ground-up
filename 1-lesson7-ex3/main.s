PQ		EQU		0
PR		EQU		4
PS		EQU		8

		AREA Equation, CODE, READONLY
		ENTRY
		EXPORT __main
	
__main
		ADRL	R4, Vals
		LDR		R1, [R4, #PQ]
		LDR		R2, [R4, #PR]
		LDR		R3, [R4, #PS]

		ADD		R0, R1, R2
		ADD		R0, R0, R3
		
		LDR		R5, =P
		STR		R0, [R5]

Stop	B		Stop
		ALIGN

		AREA EquationResult, DATA, READWRITE
P		SPACE	4
		
		AREA Equation, DATA, READONLY
Vals	DCD		2
		DCD		4
		DCD		5
			
		END