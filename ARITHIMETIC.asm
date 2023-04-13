                                                                       
                                                                       
ORG 100H
MOV AX, 0FFFFh
MOV BX, 0F000H
ADD AX, BX
ADC AX, 0000B 

SUB AX, 0001B
MOV AX, 0FFFFh
MOV BX, 0F000H
SBB AX, 0000B

MOV BH, 000FFH
MUL BH        
MOV CX, 0FFFFH
MUL CX        

DIV BH
DIV CX

MOV DX, 0000H
INC DX
DEC DX
MOV AX, 000000010011011B
CBW   
MOV DX, 00000H
CWD

MOV AL, 0010B
NEG AL   
   
MOV AH, 0000H
MOV AL, 01000101B
MOV BL, 00001110B
IMUL BL     
             
MOV AH,0
MOV AL,6
ADD AL,5
AAA

          
MOV AX,0205H
AAD 

MOV AL,5
MOV BL,7
MUL BL
AAM


MOV AX,0901H
SUB AL,9
AAS
