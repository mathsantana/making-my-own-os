org 0x7c00
bits 16

%define ENDL 0x0D,0x0A

.start:
  jmp .main

.puts:
  push si
  push ax

.print:
  lodsb ; loads register si in al
  or al, al ; check if is null char
  jz .end_print ; if null char, done

  mov ah, 0x0e ; define to write char in tty mode
  mov bh, 0 ; page number
  int 0x10 ; interrupt INT10H

  jmp .print

.end_print:
  pop ax
  pop si
  ret 

.main:
  mov ax, 0
  mov ds, ax ; data segment 
  mov es, ax ; extra data segment

  mov ss, ax
  mov sp, 0x7c00

  mov si, msg_hello
  call .puts

  ; EXTRA: Making background blue
  mov ah, 0x0b ; Set background/border color
  mov bl, 0x1 ; blue color
  int 0x10 ; interrupt INT10H

  hlt

.halt:
  jmp .halt

msg_hello: db 'Making my own OS!', ENDL, 0

times 510-($-$$) db 0
dw 0AA55h
