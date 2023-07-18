ORG 0H      ; Set the origin of the program
MOV R3, #0FFH ; Initialize R3 to 0FFH (not found)
MOV R1, #0020h ;
MOV A, #01H ; Load the byte 01H into accumulator A
MOV @R1, A ; Store byte in accumulator A to memory location pointed by R1 (1000H)
INC R1 ; Increment R1 to point to the next memory location (1001H)
MOV A, #02H ; Load the byte 02H into accumulator A
MOV @R1, A ; Store byte in accumulator A to memory location pointed by R1 (1001H)
INC R1 ; Increment R1 to point to the next memory location (1002H)
MOV A, #03H ; Load the byte 03H into accumulator A
MOV @R1, A ; Store byte in accumulator A to memory location pointed by R1 (1002H)
INC R1 ; Increment R1 to point to the next memory location (1003H)
MOV A, #0AAH ; Load the byte 0AH into accumulator A
MOV @R1, A ; Store byte in accumulator A to memory location pointed by R1 (1003H)
MOV A, #0AAH ; Load the byte to be searched (0AH) into accumulator A
MOV R2, #05H ; Initialize R2 to 4H (length of sequence)
MOV DPTR, #0020H ; Reset data pointer to memory location 1000H (start of sequence)
MOV R1, #0020H ; Reset R1 to point to memory location 1000H
LOOP:
    MOV A, @R1 ; Load byte from memory location pointed by DPTR into accumulator A
    CJNE A, #0AAH, NEXT ; Compare A with the byte to be searched. If not equal, jump to NEXT
    MOV R3, #0H ; If equal, set R3 to 0H (found)
    SJMP ENDLOOP ; Jump to ENDLOOP to exit the loop
NEXT:
    INC R1 ; Increment R1 to point to the next memory location
    DJNZ R2, LOOP ; Decrement R2 and jump to LOOP if not zero
ENDLOOP:
    ; Program continues here after the loop has ended
END        ; End of program
