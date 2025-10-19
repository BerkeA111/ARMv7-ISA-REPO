    .text
    .global _start
_start:
    ldr     r0, =matrix1        @ r0 = &A
    ldr     r1, =matrix2        @ r1 = &B
    ldr     r3, =matrix3        @ r3 = &C
    mov     r2, #9              
loop:
    ldr     r4, [r0], #4        
    ldr     r5, [r1], #4        
    add     r4, r4, r5          
    str     r4, [r3], #4        
    subs    r2, r2, #1          
    bne     loop
end:
    bx lr
    .data
    .align  2
matrix1:  .space 9*4           
matrix2:  .space 9*4
matrix3:  .space 9*4
