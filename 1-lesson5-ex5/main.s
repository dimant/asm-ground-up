VAL1	RN		R1
VAL2	RN		R2
SUM		RN		R3

NUM		EQU		0x344

		AREA Rename, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		MOV		VAL1, #0x25
		MOV		VAL2, #0x34
		
		ADD		SUM, VAL1, VAL2
		
Stop	B		Stop

		END