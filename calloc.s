.text
.global _start
_start:
ldr r0, =matrix
mov r1, #1
mov r2, #0
mov r4, #0
loop:
str r4, [r0] //Sets 0 to all blocks
add r1, r1, #1
add r0, r0, #4
cmp r1, #11
beq end
b loop
end:
bx lr
.data
.balign 4
matrix: .word 40 //Calloc byte size
