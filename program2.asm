;Checking All Addressing Modes in 8086        
;Register mode: In this type of addressing mode both the operands are registers
;Immediate mode: In this type of addressing mode the source operand is a 8 bit or 16 bit data. Destination operand can never be immediate data.

MOV AX, 0010H; Immediate mode
MOV BX, 0010H
MOV CX,AX; An register is required to initializ (Immediate Mode)

ADD AX,BX ; Register mode
;Displacement or direct mode – In this type of addressing mode the effective address is directly given in the instruction as displacement.
MOV [0500H],AX
MOV CX,[0500H] ; Direct Mode 

;Register indirect mode – In this addressing mode the effective address is in SI, DI or BX.
Physical Address = Segment Address + Effective Address
;Register InDirect Mode
MOV AX, 2000H     ; Move the value 0 into AX
MOV SI, 1000H ; Move the value 1000h into SI
MOV [SI], AX  ; Move the value in AX into the memory 


MOV AX, [BX+SI+100H] ; Based Indexed displacement Mode 
MOV AX, [SI+100H} ; Indexed Mode
MOV AX, [BX+SI]; Base Indexed mode



