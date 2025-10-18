.global _start
_start:
mov r0, #342
cmp r1, #0 //Encrypted value of r0
mov r2, #44 //Starting seed for encryption
mov r3, #5 //Another encryption seed for higher variablity
beq decrypt
encrypt:
mul r1, r0, r2
add r1, r1, r3
mul r1, r1, r3
add r3, r3, #2 //Changes function every iteration
add r2, r2, #1
decrypt:
add r2, r2, #-1
add r3, r3, #-2
udiv, r1, r1, r3
sub r1, r1, r3
udiv r1, r0, r2 //WTF no divide function, TBD
bx lr
