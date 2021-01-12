// This is a short Hello World application for PAPER as an ariane peripheral.
// 
// Requirements:
//  -   A header file with an image stored as RGB data in a uint64_t array. In this example,
//      the header and the array are called pepe.h and pepe, respectively.
//
//  -   The linker configuration linker.lds and startup.S must be configured to load
//      the binary into the RAM. This should already be done here, but double check to make sure.
//
// PAPER's documentation can be found in Georg Rutishauser's master's thesis.
#include "uart.h"
#include "pepe.h"
#include "slide0.h"

#define DRAM_BASE              0x80000000                           // DRAM base address
#define UART_BASE              0x10000000                           // UART base address
#define PAPER_BASE             0x19000000                           // Paper base address
#define CMD_IF_OFFSET          0x00000008                           // Paper's command interface's register size
#define POINTERQ_ADDR          (PAPER_BASE +  0 * CMD_IF_OFFSET)
#define H_VTOT_ADDR            (PAPER_BASE +  1 * CMD_IF_OFFSET)
#define H_VACTIVE_ADDR         (PAPER_BASE +  2 * CMD_IF_OFFSET)
#define H_VFRONT_ADDR          (PAPER_BASE +  3 * CMD_IF_OFFSET)
#define H_VSYNC_ADDR           (PAPER_BASE +  4 * CMD_IF_OFFSET)
#define POWERREG               (PAPER_BASE +  5 * CMD_IF_OFFSET)

void write_reg_u32(uintptr_t addr, uint32_t value);

uint32_t read_reg_u32(uintptr_t addr);

volatile uint64_t **pointer_addr            = (volatile uint64_t**) POINTERQ_ADDR;

int main()
{
    init_uart(50000000, 115200);
    print_uart("Hello Paper!\r\n");

    write_reg_u32(H_VTOT_ADDR, (1056<<16) + 628);
    write_reg_u32(H_VACTIVE_ADDR, (800<<16) + 600);
    write_reg_u32(H_VFRONT_ADDR,(40<<16) + 1);
    write_reg_u32(H_VSYNC_ADDR, ((128<<16) + 4) | (1<<31) | (1<<15));

    *pointer_addr = pepe;
    write_reg_u32(POWERREG, 1);

    print_uart("Bye Paper!\r\n");
    uint8_t byte;
    while (1)
    {
        byte = read_uart_byte();
        print_uart_char(byte);
        *pointer_addr = pepe;

        byte = read_uart_byte();
        print_uart_char(byte);
        *pointer_addr = slide0;
    }
}

void write_reg_u32(uintptr_t addr, uint32_t value)
{
    volatile uint32_t *loc_addr = (volatile uint32_t *)addr;
    *loc_addr = value;
}
uint32_t read_reg_u32(uintptr_t addr)
{
    return *(volatile uint32_t *)addr;
}