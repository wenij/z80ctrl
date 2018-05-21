/* z80ctrl (https://github.com/jblang/z80ctrl)
 * Copyright 2018 J.B. Langston
 *
 * Permission is hereby granted, free of charge, to any person obtaining a 
 * copy of this software and associated documentation files (the "Software"), 
 * to deal in the Software without restriction, including without limitation 
 * the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 * and/or sell copies of the Software, and to permit persons to whom the 
 * Software is furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
 * DEALINGS IN THE SOFTWARE.
 */

#include <stdint.h>

#define UBRR115200 10

void uart_init(uint8_t uart, uint16_t ubrr);     /* Perform UART startup initialization. */
uint16_t uart_testrx(uint8_t uart);		/* Check number of bytes in UART Rx FIFO */
uint16_t uart_testtx(uint8_t uart);		/* Check number of bytes in UART Rx FIFO */
uint8_t uart_getc(uint8_t uart);		/* Get a byte from UART Rx FIFO */
void uart_putc(uint8_t uart, uint8_t d);	/* Put a byte into UART Tx FIFO */
void uart_flush(void);                          /* flush uart transmit buffers */
int uart_putchar(char c, FILE * stream);        /* output with cr/lf conversion */
int uart_getchar(FILE * stream);                /* line buffered input */