#include "uart.h"
#include "pepe.h"

#define DRAM_BASE              0x80000000 // DRAM base address
#define UART_BASE              0x10000000 // UART base address
#define PAPER_BASE             0x19000000 // Paper base address
#define CMD_IF_OFFSET          0x00000008 // Paper's command interface's register size
#define POINTERQ_ADDR          (PAPER_BASE +  0 * CMD_IF_OFFSET)
#define H_VTOT_ADDR            (PAPER_BASE +  1 * CMD_IF_OFFSET)
#define H_VACTIVE_ADDR         (PAPER_BASE +  2 * CMD_IF_OFFSET)
#define H_VFRONT_ADDR          (PAPER_BASE +  3 * CMD_IF_OFFSET)
#define H_VSYNC_ADDR           (PAPER_BASE +  4 * CMD_IF_OFFSET)
#define POWERREG               (PAPER_BASE +  5 * CMD_IF_OFFSET)

int main()
{
    init_uart(50000000, 115200);
    print_uart("Hello Georg!\r\n");


    volatile uint64_t **pointer_addr            = (volatile uint64_t**) POINTERQ_ADDR;
    volatile uint32_t *hvtot                 = (volatile uint32_t *) H_VTOT_ADDR;
    volatile uint32_t *hvactive                 = (volatile uint32_t *) H_VACTIVE_ADDR;
    volatile uint32_t *hvfront                 = (volatile uint32_t *) H_VFRONT_ADDR;
    volatile uint32_t *hvsync                 = (volatile uint32_t *) H_VSYNC_ADDR;
    volatile uint32_t *powerreg                 = (volatile uint32_t *) POWERREG;

    *hvtot = (1056<<16) + 628;
    *hvactive = (800<<16) + 600;
    *hvfront = (40<<16) + 1;
    *hvsync = ((128<<16) + 4) | (1<<31) | (1<<15);

    *pointer_addr = pepe;
    *powerreg = 1;

    print_uart("tschuess Georg!\r\n");
    while (1)
    {
        //print_uart_byte(read_uart_byte());
    }
}
