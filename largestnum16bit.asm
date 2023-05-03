org 100h
mov ax, 6000h
mov ds,ax
mov bx, 1000h
mov ax, 0000h
mov cx, 4Ch ; enrollment num 20h + 2* (last two digit> (16)
array:
    mov [bx],ax
    add ax, 30d
    inc bx
    inc bx   
loop array:     

mov bx,1000h
mov ax,[bx] 
mov cx, 1fh

L1: ;level 1
    cmp ax,[bx+2] ; bx+1 > ax carry flag = 1
    jnc L2  ; jump level 2
    mov ax,[bx+2]         
L2: 
    inc bx
    loop L1     

mov [0FFFh],ax;
hlt
ret