org 100h
MOV AX,2000H
MOV BX,3000H
XCHG AX,BX

;PORT INPUT

IN AL,03H
IN AL,DX

;PORT OUTPUT

OUT DX,AX

HLT

