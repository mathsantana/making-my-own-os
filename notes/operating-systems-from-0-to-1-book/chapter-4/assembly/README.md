# Experiment with assembly code - Chapter 4 - [Operating Systems: From 0 to 1](https://github.com/tuhdo/os01)

Generating `bin` file from assembly code (`.asm`):

```bash
nasm -f bin first.asm -o first
```

Generating `elf` file:

```bash
nasm -f elf first.asm -o first-elf
```

By default, nasm uses 16-bit mode. To use 32-mode, add this line in the beggining of the file

```asm
bits 32
```
