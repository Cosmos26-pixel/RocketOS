KERNEL   := iso/boot/kernel.bin
SRC      := src/kernel.c
OBJ      := kernel.o
LINKER   := src/linker.ld
ISO      := RocketOS.iso

CC       := gcc
CFLAGS   := -ffreestanding -O2 -Wall -Wextra -c
LD       := ld
LDFLAGS  := -T \$(LINKER)
GRUB_MKRESCUE := grub-mkrescue
QEMU     := qemu-system-x86_64

all: \$(ISO)

\$(ISO): \$(KERNEL)
	\$(GRUB_MKRESCUE) -o \$@ iso

\$(KERNEL): \$(OBJ) | iso/boot
	\$(LD) \$(LDFLAGS) \$< -o \$@

\$(OBJ): \$(SRC)
	\$(CC) \$(CFLAGS) \$< -o \$@

iso/boot:
	mkdir -p iso/boot

clean:
	rm -f \$(OBJ) \$(KERNEL) \$(ISO)

run: all
	\$(QEMU) -cdrom \$(ISO)

.PHONY: all clean run
