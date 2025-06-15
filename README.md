# Rocket OS

Sistema operativo educativo mínimo para x86.

## Requisitos

- Linux
- gcc, make, grub-pc-bin, xorriso, qemu-system-i386, nasm

Instala las dependencias en Ubuntu/Debian con:

\`\`\`sh
sudo apt-get update
sudo apt-get install build-essential gcc-multilib grub-pc-bin xorriso qemu-system-i386 nasm
\`\`\`

## Compilar RocketOS

\`\`\`sh
make
\`\`\`

Esto generará el archivo \`RocketOS.iso\`.

## Ejecutar en QEMU

\`\`\`sh
make run
\`\`\`

## Limpiar archivos generados

\`\`\`sh
make clean
\`\`\`
