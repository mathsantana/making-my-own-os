# objdump - Chapter 4 - [Operating Systems: From 0 to 1](https://github.com/tuhdo/os01)

To visualize object files (elf64-x86-64):

```bash
objdump -M i386,intel -d hello
```

To a better visualization, use `less` command:

```bash
objdump -M i386,intel -d hello | less
```
