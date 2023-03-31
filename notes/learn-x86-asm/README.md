# Learning x86 Assembly

## Building executable:

- Creating a object file:

```bash
nasm -f elf32 example.asm -o example.o
```

- Generating a ELF file:

```bash
ld -m elf-i386 example.o -o example
```

- After sys_exit, get the exit status:

```bash
echo $?
```
