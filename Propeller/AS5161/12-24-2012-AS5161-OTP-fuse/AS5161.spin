CON

  SYNC=$55
  
OBJ

  UART : "UART"
   
pub init_communication

  UART.init(9600)

{ 
  program_OTP
  if mode==0
    reset_DSP
  elseif mode==1
    pass2func
  elseif mode==2
    fuse
  waitcnt(cnt+clkfreq/10)
}
  
pub read_frame (out,address) | data0, data1

  UART.tx(out,SYNC)
  UART.tx(out,address | $80)
  data0:=UART.rx(out)
  data1:=UART.rx(out)
  return data1*256+data0
  
pub write_frame (out,address,d0,d1)

  UART.tx(out,SYNC)
  UART.tx(out,address)
  UART.tx(out,d0)
  UART.tx(out,d1)

pub read_cordic (out)

  return read_frame(out,$29)
  'return data1*256+data0

pub read_DSP (out)

  return read_frame(out,$2B)
  'return data1*256+data0

pub program_OTP (out)
 
  write_frame(out,$06,$20,$00)  'gain
  write_frame(out,$04,$00,$E0)  'gain
  write_frame(out,$07,$01,$FE)  'offset
  write_frame(out,$00,$80,$00)  'lock bit for customer area

pub pass2func (out)
  write_frame(out,$60,%0101_0001,%0110_0010)

pub fuse (out)
  write_frame(out,$41,%0101_0001,%0110_0010)
 
pub reset_DSP (out)

  write_frame(out,$21,$00,$80)
  write_frame(out,$09,$00,$00)
    