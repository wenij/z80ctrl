#ifndef BUS_H
#define BUS_H

#include "defines.h"
#include <avr/io.h>

// Flags ///////////////////////////////////////////////////////////////////////

#define GET_BFLAGS (PINB & ((1<<IOACK) | (1<<IORQ) | (1<<M1)))
#define GET_DFLAGS (PIND & ((1<<RD) | (1<<WR) | (1<<CLK) | (1<<HALT)))
#define GET_XFLAGS (iox_read(CTRLX_GPIO) & ((1<<RFSH) | (1<<RESET) | (1<<INTERRUPT) | \
                                        (1<<BUSACK) | (1<<MREQ) | (1<<BUSRQ) | (1<<NMI)))

// CPU control /////////////////////////////////////////////////////////////////

#define HALT_INPUT HALT_DDR &= ~(1 << HALT)
#define HALT_PULLUP HALT_PORT |= (1 << HALT)
#define GET_HALT (HALT_PIN & (1 << HALT))

#define INT_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~(1 << INTERRUPT))
#define GET_INT (iox_read(CTRLX_GPIO) & (1 << INTERRUPT))
#define INT_LO iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) & ~(1 << INTERRUPT))
#define INT_HI iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) | (1 << INTERRUPT))

#define NMI_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~(1 << NMI))
#define GET_NMI (iox_read(CTRLX_GPIO) & (1 << NMI))
#define NMI_LO iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) & ~(1 << NMI))
#define NMI_HI iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) | (1 << NMI))

#define RESET_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~(1 << RESET))
#define GET_RESET (iox_read(CTRLX_GPIO) & (1 << RESET))
#define RESET_LO iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) & ~(1 << RESET))
#define RESET_HI iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) | (1 << RESET))

// CPU bus control /////////////////////////////////////////////////////////////

#define BUSRQ_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~(1 << BUSRQ))
#define GET_BUSRQ (iox_read(CTRLX_GPIO) & (1 << BUSRQ))
#define BUSRQ_LO iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) & ~(1 << BUSRQ))
#define BUSRQ_HI iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) | (1 << BUSRQ))

#define BUSACK_INPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) | (1 << BUSACK))
#define GET_BUSACK (iox_read(CTRLX_GPIO) & (1 << BUSACK))

// System control //////////////////////////////////////////////////////////////

#define RD_INPUT RD_DDR &= ~(1 << RD)
#define RD_OUTPUT RD_DDR |= (1 << RD)
#define GET_RD (RD_PIN & (1 << RD))
#define RD_HI RD_PORT |= (1 << RD)
#define RD_LO RD_PORT &= ~(1 << RD)

#define WR_INPUT WR_DDR &= ~(1 << WR)
#define WR_OUTPUT WR_DDR |= (1 << WR)
#define GET_WR (WR_PIN & (1 << WR))
#define WR_HI WR_PORT |= (1 << WR)
#define WR_LO WR_PORT &= ~(1 << WR)

#define M1_INPUT M1_DDR &= ~(1 << M1)
#define GET_M1 (M1_PIN & (1 << M1))

#define MREQ_INPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) | (1 << MREQ))
#define MREQ_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~(1 << MREQ))
#define GET_MREQ (iox_read(CTRLX_GPIO) & (1 << MREQ))
#define MREQ_LO iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) & ~(1 << MREQ))
#define MREQ_HI iox_write(CTRLX_GPIO, iox_read(CTRLX_GPIO) | (1 << MREQ))

#define IORQ_INPUT IORQ_DDR &= ~(1 << IORQ)
#define GET_IORQ (IORQ_PIN & (1 << IORQ))

#define IOACK_OUTPUT IOACK_DDR |= (1 << IOACK)
#define GET_IOACK (IOACK_PIN & (1 << IOACK))
#define IOACK_HI IOACK_PORT |= (1 << IOACK)
#define IOACK_LO IOACK_PORT &= ~(1 << IOACK)

// Address bus /////////////////////////////////////////////////////////////////

#define ADDR_INPUT (ADDRLO_DDR = 0x00, iox_write(ADDRHI_IODIR, 0xFF))
#define ADDR_OUTPUT (ADDRLO_DDR = 0xFF, iox_write(ADDRHI_IODIR, 0x00))
#define GET_ADDRLO ADDRLO_PIN
#define SET_ADDRLO(addr) ADDRLO_PORT = (addr)
#define GET_ADDRHI iox_read(ADDRHI_GPIO)
#define SET_ADDRHI(addr) iox_write(ADDRHI_GPIO, (addr))
#define GET_ADDR (GET_ADDRLO | (GET_ADDRHI << 8))
#define SET_ADDR(addr) (SET_ADDRLO((addr) & 0xFF), SET_ADDRHI((addr) >> 8))

#ifdef BANKMASK
#define BANK_OUTPUT iox_write(CTRLX_IODIR, iox_read(CTRLX_IODIR) & ~BANKMASK)
#define GET_BANK ((iox_read(CTRLX_GPIO) & BANKMASK) >> BANKADDR)
#define SET_BANK(bank) iox_write(CTRLX_GPIO, (iox_read(CTRLX_GPIO) & ~BANKMASK) | (((bank) << BANKADDR) & BANKMASK))
#endif

// Data bus ///////////////////////////////////////////////////////////////////

#define DATA_INPUT DATA_DDR = 0x00
#define DATA_OUTPUT DATA_DDR = 0xFF
#define GET_DATA DATA_PIN
#define SET_DATA(data) DATA_PORT = (data)

// Clock ///////////////////////////////////////////////////////////////////////

#define CLK_OUTPUT CLK_DDR |= (1 << CLK)
#define GET_CLK (CLK_PIN & (1 << CLK))
#define CLK_HI CLK_PORT |= (1 << CLK)
#define CLK_LO CLK_PORT &= ~(1 << CLK)
#define CLK_TOGGLE CLK_PIN |= (1 << CLK)

typedef struct _flag_bits {
        uint8_t : 1;
        uint8_t rfsh : 1;
        uint8_t reset : 1;
        uint8_t interrupt : 1;
        uint8_t busack : 1;
        uint8_t mreq : 1;
        uint8_t busrq : 1;
        uint8_t nmi : 1;

        uint8_t ioack : 1;
        uint8_t iorq : 1;
        uint8_t m1: 1;
        uint8_t : 1;
        uint8_t rd : 1;
        uint8_t wr : 1;
        uint8_t clk : 1;
        uint8_t halt : 1;
} flag_bits;

typedef struct _flag_bytes {
        uint8_t lo;
        uint8_t hi;
} flag_bytes;

typedef union _flag_union {
        flag_bytes bytes;
        flag_bits bits;
} flag_union;

typedef struct _bus_stat {
        flag_union flags;
        uint16_t addr;
        uint8_t data;
} bus_stat;

void clk_cycle(uint8_t cycles);
void clk_trace(uint8_t cycles);
void clk_run(void);
void clk_stop(void);
void bus_master(void);
void bus_slave(void);
bus_stat bus_status(void);
void bus_init(void);


#endif