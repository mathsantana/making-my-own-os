; Making a conditional JMP
; Author: @mathsantana

global _start

_start:
	mov ecx, 10
	mov ebx, 42
	mov eax, 1
	cmp ecx, 11
	jl skip
	mov ebx, 13

skip:
	int 0x80