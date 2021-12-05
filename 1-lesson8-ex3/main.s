		AREA AddCarry, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		LDR		R1, =1000000000
		LDR		R2, =2000000000
		LDR		R3, =3000000000
		LDR		R4, =4000000000
		LDR		R5, =4100000000
		
		MOV		R8, #0			; for accumulating the lower word
		MOV		R9, #0			; for accumulating carries
		
		ADDS	R8, R8, R1		; R8 = R8 + R1
		ADC		R9, R9, #0		; add carry bit if it exists
		ADDS	R8, R8, R2
		ADC		R9, R9, #0
		ADDS	R8, R8, R3
		ADC		R9, R9, #0
		ADDS	R8, R8, R4
		ADC		R9, R9, #0
		ADDS	R8, R8, R5
		ADC		R9, R9, #0

Stop	B 	Stop

		END