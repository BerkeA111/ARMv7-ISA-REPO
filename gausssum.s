.global _start
_start:
mov r0, #1
mov r1, #0
cond1:
add r1, r0
add r0, r0, #1
b cond1
