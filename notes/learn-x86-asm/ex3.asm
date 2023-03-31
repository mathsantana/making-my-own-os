; Manipulate EIP (Instruction Pointer)
; Author: @mathsantana

global _start

_start:
	mov ebx, 42
	mov eax, 1
	jmp skip
	mov ebx, 13 ; if jmp work, this code will not execute.

skip:
	int 0x80