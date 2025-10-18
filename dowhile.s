.global _start
_start:
mov r0, #3
mov r1, #5
dowhile: //Do while statment
add r0, r1, r0
cmp r0, #23 //Checking statement
beq outside
b dowhile
outside: //Exiting loop
mov r2, #1
bx lr
