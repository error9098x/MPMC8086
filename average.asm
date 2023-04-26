array DB 10 dup(0) ; define an array of 5 bytes and initialize its values
array_size equ 10                 ; define a constant to hold the size of the array
mov cx, 10              ; initialize the loop counter to the size of the array
mov bx, offset array             ; initialize the source index to the start of the array
mov ah, 16D
mov dl, 0H ;sum
mov dh, 10D ; average 
next: mov al, [bx]                
      mov al, ah
      inc ah                  ; 
      mov [bx], al 
      add dl,al                 
      add bx,1                     
  loop next: 

ret             
