nasm -f elf32 kernel.asm -o kernel.o
gcc -m32 -c kernel.c -o kernelc.o
ld -m elf_i386 -T link.ld -o myos/boot/kernel.bin kernel.o kernelc.o 
qemu -kernel myos/boot/kernel.bin
grub-mkrescue -o myos.iso myos/

read a


