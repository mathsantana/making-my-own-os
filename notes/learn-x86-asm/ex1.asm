global _start

_start:
	mov eax, 1  ; eax = syscall exit
	mov ebx, 42 ; ebx = exit status
	sub ebx, 40
	mov ecx, 3
	mul ecx, ebx
	int 0x80 ; interrupt. 0x80 is handler to syscall