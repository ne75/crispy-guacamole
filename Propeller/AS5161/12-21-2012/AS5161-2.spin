CON
  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

  OUT_PIN=0
  SYNC=$55

OBJ
  UART : "UART"
  pst : "Parallax Serial Terminal"

VAR long data0, data1
  
pub main | data

 
  dira[16..23]~
  outa[16..23]~
  UART.init(0,9600)
  pst.start(115200)

  program_OTP
  'write_frame($21,$00,$80)
  'write_frame($09,$00,$00)

  pass2func
  repeat
  
  repeat
    pst.home
    pst.dec(read_DSP)
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)
 
  
  
  repeat
    
  repeat
    pst.home
    pst.dec((3600*read_cordic)>>14)
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)  

  'read_frame($2B)  

  waitcnt(cnt+clkfreq/100)


pub read_frame_pst (address)

  UART.tx(SYNC)
  UART.tx(address | $80)
  data0:=UART.rx
  data1:=UART.rx
  pst.char(13)
  pst.hex(data0,2)
  pst.char(13)
  pst.hex(data1,2)
  
pub read_frame (address)

  UART.tx(SYNC)
  UART.tx(address | $80)
  data0:=UART.rx
  data1:=UART.rx
  
pub write_frame (address,d0,d1)

  UART.tx(SYNC)
  UART.tx(address)
  UART.tx(d0)
  UART.tx(d1)

pub read_cordic

  read_frame($29)
  return data1*256+data0

pub read_DSP

  read_frame($2B)
  return data1*256+data0

pub program_OTP

  write_frame($06,$E0,$00)  'gain
  write_frame($04,$00,$DF)  'gain
  write_frame($07,$01,$FE) 'offset

pub pass2func
  write_frame($61,%0101_0001,%0110_0010)