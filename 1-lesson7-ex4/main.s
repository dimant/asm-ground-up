		AREA Equation, CODE, READONLY
		ENTRY
		EXPORT __main
	
__main
		ADR		R0, Vals 
		LDR		R1, [R0], #4
		LDR		R2, [R0], #4
		LDR		R3, [R0]

		ADD		R4, R1, R2
		ADD		R4, R4, R3
		
		LDR		R0, =P
		STR		R4, [R0]

Stop	B		Stop
		ALIGN

		AREA EquationResult, DATA, READWRITE
P		SPACE	4
		
		AREA Equation, DATA, READONLY
Vals	DCD		2
		DCD		4
		DCD		5
			
		END