; Creating a loop
; Author: @mathsantana

global _start

section .text
_start:
	mov ebx, 1 ; Initial value
	mov ecx, 5 ; Counter && Exponent 

loop:
	sal ebx, 1 ; Shift (double) ebx value 1 time
	dec ecx	; Decrement ecx value in 1
	cmp ecx, 0
	jg loop
	mov eax, 1
	int 0x80