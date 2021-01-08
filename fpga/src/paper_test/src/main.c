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

void write_reg_u32(uint32_t* addr, uint32_t value);

int main()
{
    init_uart(50000000, 115200);
    print_uart("Hello Georg!\r\n");


    volatile uint64_t **pointer_addr            = (volatile uint64_t**) PAPER_BASE;

    write_reg_u32(H_VTOT_ADDR, (1056<<16) + 628);
    write_reg_u32(H_VACTIVE_ADDR, (800<<16) + 600);
    write_reg_u32(H_VFRONT_ADDR, (40<<16) + 1);
    write_reg_u32(H_VACTIVE_ADDR, ((128<<16) + 4) | (1<<31) | (1<<15));

    *pointer_addr = pepe;
    write_reg_u32(POWERREG, 1); 



    print_uart("tschuess Georg!\r\n");
    while (1)
    {
        // do nothing
    }
}

void write_reg_u32(uint32_t* addr, uint32_t value)
{
    volatile uint32_t *loc_addr = (volatile uint32_t *)addr;
    *loc_addr = value;
}