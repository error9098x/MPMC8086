org 100h
mov ax, 6000h
mov ds,ax
mov bx, 1000h
mov cx, 10 
 
mov ax,0000h
array:
    
    add ax, 3d  
    mov [bx],ax 
    inc bx
    inc bx  
loop array:     