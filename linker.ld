ENTRY(kernel_main)

SECTIONS
{
    . = 1M;
    .text : ALIGN(4K) { *(.multiboot*) *(.text*) }
    .data : ALIGN(4K) { *(.data*) }
    .bss  : ALIGN(4K) { *(.bss*) *(COMMON) }
}
