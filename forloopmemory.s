.text
.global _start
_start:
ldr r0, =a
mov r1, #0
loop:
cmp r1, #100
beq end
add r2, r0, r1, LSL #2
str r1, [r2]
add r1, r1, #1
b loop
end:
bx lr
.data
.balign 4

a:
	.space 400
