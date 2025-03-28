''***************************************************************************
''*                                                                         *
''*     UART Interface Driver for single line bi-directional communication  *                                             
''*     The UART frame consists of 1 start bit (low level), 8 data bits,    *
''*     1 even-parity bit, and 1 stop bit (high level)                      *
''*                                                                         *
''***************************************************************************

{{
        Pull-up resistor required to avoid electrical conflicts                                 
                                                            
                                                                                                                    
                              │                                                                                      
                               10kΩ                                                                               
         ┌────────────┐       │       ┌──────────┐                                       
         │Propeller P0├─────┻─────┤I/O Device│                                              
         └────────────┘               └──────────┘   
}}
  
VAR

  long  bitTime 

PUB init(baud)
                                            
  bitTime := clkfreq / baud                             ' calculate serial bit time  


PUB tx(out,txByte) | parity, t                          ' transmit one UART frame

  txByte := txByte & $FF                                ' strip off high bits
  parity:=txByte                                        ' calculate parity
  parity ^= parity >> 4
  parity ^= parity >> 2
  parity ^= parity >> 1
  parity := parity & 1                                  ' 1=odd, 0=even
  txByte |= (parity << 8)                                ' add parity bit
  txByte := ((txByte | $200) << 1)                      ' add stop and start bits
                                                        
  outa[out]~~                                           ' set idle state
  dira[out]~~                                           ' make pin an output
  t := cnt                                              ' sync
  repeat 11                                             ' start + eight data bits + parity bit + stop
    waitcnt(t += bitTime)                               ' wait bit time
    outa[out] := txByte                                 ' output bit
    txByte >>= 1                                        ' shift one bit
    
  dira[out]~                                            ' release pin         



PUB rx (out) : rxByte | t                               ' receive one UART frame

  dira[out]~                                            ' make pin an input
  waitpeq(0, |< out, 0)                                 ' wait for start bit
  t := cnt + bitTime >> 1                               ' sync + 1/2 bit
  repeat 8
    waitcnt(t += bitTime)                               ' wait for middle of bit
    rxByte := ina[out] << 7 | rxByte >> 1               ' sample bit 
  waitcnt(t + bitTime << 1)                             ' allow for parity and stop bits 

  rxByte := rxByte & $FF                                ' strip off high bits