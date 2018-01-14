#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>

#include "memory.h"
#include "bus.h"

// Read specified number of bytes from external memory to a buffer
void read_mem(uint16_t addr, uint8_t *buf, uint16_t len)
{
    uint16_t i;

    bus_master();
    DATA_INPUT;
    MREQ_LO;
    RD_LO;
    SET_ADDR(addr);
    for (i = 0; i < len; i++) {
        buf[i] = GET_DATA;
        addr++;
        if ((addr & 0xFF) == 0) {
            SET_ADDR(addr);
        } else {
            SET_ADDRLO(addr & 0xFF);
        }
    }
    RD_HI;
    MREQ_HI;
    bus_slave();
}

// Write specified number of bytes to external memory from a buffer
void write_mem(uint16_t addr, uint8_t *buf, uint16_t len)
{
    bus_master();
    DATA_OUTPUT;
    MREQ_LO;
    SET_ADDR(addr);
    uint16_t i;
    for (i = 0; i < len; i++) {
        SET_DATA(buf[i]);
        WR_LO;
        WR_HI;
        addr++;
        if ((addr & 0xFF) == 0) {
            SET_ADDR(addr);
        } else {
            SET_ADDRLO(addr & 0xFF);
        }
    }
    MREQ_HI;
    DATA_INPUT;
    bus_slave();
}

// Write specified number of bytes to external memory from a buffer
void write_mem_P(uint16_t addr, uint8_t *buf, uint16_t len)
{
    bus_master();
    DATA_OUTPUT;
    MREQ_LO;
    SET_ADDR(addr);
    uint16_t i;
    for (i = 0; i < len; i++) {
        SET_DATA(pgm_read_byte(&buf[i]));
        WR_LO;
        WR_HI;
        addr++;
        if ((addr & 0xFF) == 0) {
            SET_ADDR(addr);
        } else {
            SET_ADDRLO(addr & 0xFF);
        }
    }
    MREQ_HI;
    DATA_INPUT;
    bus_slave();
}

// Verify specified number of bytes from external memory against a buffer
int verify_mem(uint16_t start, uint8_t *src, uint16_t len, uint8_t log)
{
    uint8_t buf[256];
    int errors = 0;
    uint32_t i = 0;
    uint16_t j = 0, buflen = 256;

    while (i < len) {
        if (len - i < buflen)
            buflen = len - i;
        read_mem(start+i, buf, buflen);
        for (j = 0; j < buflen; i++, j++) {
            if (buf[j] != src[i]) {
                if (log)
                    printf("%04x: expected %02x but read %02x\n", start+i, src[i], buf[j]);
                errors++;
            }
        }
    }
    return errors;
}

// Hex dump memory block to console
void dump_mem(uint16_t addr, uint16_t len)
{
    uint8_t buf[16];
    uint8_t j = 0, buflen = 16;
    uint32_t i = 0;

    while (i < len) {
        printf("%04X: ", addr + i);
        read_mem(addr + i, buf, buflen);
        for (j = 0; j < buflen; j++) {
            printf("%02X ", buf[j]);
        }
        printf("  ");
        for (j = 0; j < buflen; j++, i++) {
            if (0x20 <= buf[j] && buf[j] <= 0x7e)
                printf("%c", buf[j]);
            else
                printf(".");
        }
        printf("\n");
    }
}

uint8_t fromhex(char hex)
{
    if ('0' <= hex && hex <= '9')
        return hex - '0';
    else if ('A' <= hex && hex <= 'F')
        return hex - 'A' + 10;
    else if ('a' <= hex && hex <= 'f')
        return hex - 'a' + 10;
    else
        return 255;
}

ihex_res write_ihex_rec(char *record) 
{
    ihex_res res;
    int i;

    if (strlen(record) < 11) {
        res.rc == IHEX_FORMAT;
        return res;
    }
    if (record[0] != ':') {
        res.rc = IHEX_FORMAT;
        return res;
    }
    for (i = 1; i < strlen(record); i++) {
        if (fromhex(record[i]) > 0xf && record[i] != '\r' && record[i] != '\n') {
            res.rc = IHEX_FORMAT;
            return res;
        }
    }
    res.count = fromhex(record[1]) << 4 | fromhex(record[2]);
    if (strlen(record) < 11 + res.count) {
        res.rc = IHEX_COUNT;
        return res;
    }
    res.addr = fromhex(record[3]) << 12 | fromhex(record[4]) << 8 | fromhex(record[5]) << 4 | fromhex(record[6]);
    res.type = fromhex(record[7]) << 4 | fromhex(record[8]);
    uint8_t check1 = res.count + (res.addr >> 8) + (res.addr & 0xff) + res.type;
    uint8_t data[256];
    for (i = 0; i < res.count; i++) {
        data[i] = fromhex(record[i*2+9]) << 4 | fromhex(record[i*2+10]);
        check1 += data[i];
    }
    check1 = ~check1 + 1;
    uint8_t check2 = fromhex(record[res.count*2+9]) << 4 | fromhex(record[res.count*2+10]);
    if (check1 != check2) {
        res.rc = IHEX_CKSUM;
        return res;
    }
    if (res.type == IHEX_DATA) {
        write_mem(res.addr, data, res.count);
        res.rc = IHEX_OK;
    } else if (res.type == IHEX_EOF)
        res.rc = IHEX_OK;
    else
        res.rc = IHEX_RECTYPE;
    return res;
}

uint8_t tohex(uint8_t nyb)
{
    if (0 <= nyb && nyb <= 9)
        return '0' + nyb;
    else if (0xa <= nyb && nyb <= 0xf)
        return 'A' + nyb - 10;
    else
        return 0;
}

char *read_ihex_rec(uint16_t addr, uint8_t len) 
{
    static char record[512+12];
    uint8_t membuf[256];
    uint8_t check = len + (addr >> 8) + (addr & 0xff);
    int i;

    record[0] = ':';
    record[1] = tohex(len >> 4);
    record[2] = tohex(len & 0xf);
    record[3] = tohex((addr >> 12) & 0xf);
    record[4] = tohex((addr >> 8) & 0xf);
    record[5] = tohex((addr >> 4) & 0xf);
    record[6] = tohex(addr & 0xf);
    record[7] = '0';
    if (len > 0) {
        record[8] = '0';
        read_mem(addr, membuf, len);
    } else {
        check += 1;
        record[8] = '1';
    }
    for (i = 0; i < len; i++) {
        record[i*2+9] = tohex(membuf[i] >> 4);
        record[i*2+10] = tohex(membuf[i] & 0xf);
        check += membuf[i];
    }
    check = ~check + 1;
    record[len*2+9] = tohex(check >> 4);
    record[len*2+10] = tohex(check & 0xf);
    record[len*2+11] = '\0';
    return record;
}