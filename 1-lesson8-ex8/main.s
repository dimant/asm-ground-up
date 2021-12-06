; (A + 8*B + 7*C - 27) / 4
; Let A = 25, B = 19, C = 99

		AREA Equation, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		MOV		R0, #25					; A
		MOV		R1, #19					; B
		ADD		R0, R0, R1, LSL #3 	; A + 8 * B
		MOV		R1, #99					; C
		MOV		R2, #7					; 7
		MLA		R0, R1, R2, R0			; (A + 8*B) + 7*C
		SUB		R0, R0, #27
		MOV		R0, R0, ASR #2			; / 4

Stop	B		Stop


		END