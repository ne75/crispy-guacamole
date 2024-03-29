CON
  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

  OUT_PIN=0

OBJ UART : "UART"
    pst : "Parallax Serial Terminal"
  
pub main | parity, data,d

  pst.start(115200)
  
  dira[16..23]~
  outa[16..23]~
  UART.init(0,9600)
  data:=$55
  d:=data

  pst.bin(data,12)
  pst.char(13)
  
  parity:=data
  parity ^= parity >> 4
  parity ^= parity >> 2
  parity ^= parity >> 1
  parity := parity & 1                                
  parity <<= 8
  data |= parity

  pst.bin(parity,12)
  pst.char(13)
  pst.bin(data,12)
  data := ((data | $200) << 1)
  pst.char(13)
  pst.bin(data,12)
  
  'repeat
    UART.tx(d)
    waitcnt(cnt+clkfreq/100)
  
  
    
  
 