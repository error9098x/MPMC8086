
array DB 15D,25D,35D,45D,55D,65D,75D,85D,95D,105D,115D,125D,135D,145D,155D ; define an array of 5 bytes and initialize its values              ; define a constant to hold the size of the array
mov cx, 15           ; initialize the loop counter to the size of the array
mov bx, offset array             ; initialize the source index to the start of the array
mov dx, 0H ;sum
next: mov al, [bx]  
      mov ah,0h            
      add dx,ax            ;            
      add bx,1                   
  loop next:
hlt
