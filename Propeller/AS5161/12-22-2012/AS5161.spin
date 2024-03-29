CON

  SYNC=$55
  
OBJ

  UART : "UART"
 
VAR

  long data0, data1
  
pub init (out,mode)

  UART.init(out,9600)
  
  program_OTP
  if mode==0
    reset_DSP
  else
    pass2func
  
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

  'write_frame($06,$E0,$00)  'gain
  'write_frame($04,$00,$DF)  'gain

  write_frame($06,$20,$00)  'gain
  write_frame($04,$00,$E0)  'gain
  write_frame($07,$01,$FE) 'offset

pub pass2func
  write_frame($61,%0101_0001,%0110_0010)

pub reset_DSP

  write_frame($21,$00,$80)
  write_frame($09,$00,$00)  