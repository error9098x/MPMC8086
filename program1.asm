;Write a code to move two values oat memory location 1256H and 8976H
;then move the contents of these memory location to ax and bx registers, then store
; the result of their additon sub mul to mem 2345H ,47, 49

org 100h


mov [1256H], 00010H
mov [8976H], 00001H
mov ax,[1256H]
mov bx,[8976H] 
add ax,bx
mov [2345H], ax
mov ax,[1256H]
sub ax,bx
mov [2347H], ax 
mov ax,[1256H]
mul bx;
mov [2349H],ax

hlt

ret
 
