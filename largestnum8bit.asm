org 100h
mov ax, 6000h
mov ds,ax
mov bx, 1000h
mov cx, 20h ; enrollment num 20h + 2* (last two digit> (16)
array:
    mov [bx],al
    add al, 30d
    inc bx   
loop array:     

mov bx,1000h
mov al,[bx] 
mov cx, 1fh

L1: ;level 1
    cmp al,[bx+1] ; bx+1 > ax carry flag = 1
    jnc L2  ; jump level 2
    mov al,[bx+1]         
L2: 
    inc bx
    loop L1     

mov [0FFFh],al;
hlt
ret