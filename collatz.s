.global _start
_start:
mov r0, #6171 //You can change this which is the starting number
mov r1, #3
cond:
tst r0, #1
beq even
b odd
even:
lsr r0, r0, #1
b cond
odd:
mul r0, r0, r1
add r0, r0, #1
b cond
