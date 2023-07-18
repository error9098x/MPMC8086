ORG 0H      ; Set the origin of the program

; Store the matrix in registers R1, R2, R3, and R4
MOV R1, #01H ; Load value 01H into R1
MOV R2, #02H ; Load value 02H into R2
MOV R3, #03H ; Load value 03H into R3
MOV R4, #04H ; Load value 04H into R4
;|1 2|
;|3 4|
; Transpose the matrix
MOV A, R2 ; Move the value in R2 to accumulator A
MOV B,R3
MOV R2, B ; Move the value in R3 to R2
MOV R3, A ; Move the value in A to R3 (exchange R2 and R3)


; Store the transposed matrix in registers R1, R2, R3, and R4
; (Note that the matrix is already transposed in the registers)
; You can also store the matrix in different registers if needed

END        ; End of program
