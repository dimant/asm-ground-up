; P = Q + R + S
; let Q = 2, R = 4, S = 5

		AREA EquationData, DATA, READONLY
			
Q		DCD			2 ; create variable Q with initial value 2
R		DCD			4 ; create variable R with initial value 4
S		DCD			5 ; create variable S with initial value 5
	
		AREA Equation, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		LDR		R1, Q
		LDR		R2, R
		LDR		R3, S
		
		ADD		R0, R1, R2
		ADD		R0, R0, R3
		
		LDR		R4, =P
		STR		R0, [R4]

Stop	B		Stop

		AREA EquationResult, DATA, READWRITE
P		SPACE		4

		END