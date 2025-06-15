#include <stdint.h>
#define VIDEO_MEMORY   ((uint16_t*) 0xb8000)
#define ROWS           25
#define COLS           80
#define ATTRIBUTE      0x07

void kernel_main(void) {
    const char *msg = "Hola mundo desde RocketOS!";
    uint16_t *video = VIDEO_MEMORY;
    int i = 0;
    for (; msg[i] != '\0' && i < COLS; ++i) {
        video[i] = (ATTRIBUTE << 8) | msg[i];
    }
    for (; i < COLS; ++i) {
        video[i] = (ATTRIBUTE << 8) | ' ';
    }
}
