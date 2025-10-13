.global _start
_start:

mov r0, #1
mov r1, #1

cond1:
add r0, r0, r1
add r1, r0, r1
b cond1
