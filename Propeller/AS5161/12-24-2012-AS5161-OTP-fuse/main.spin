CON

  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

  PWMIN=660
  PWMAX=9412
  DPW=PWMAX-PWMIN
  
OBJ

  AS5161 : "AS5161"
  pst : "pst"

pub main 

 
  dira[16..23]~
  outa[16..23]~
  pst.start(115200)
  pst.str(string("Start"))
  AS5161.init_communication
  AS5161.program_OTP(0)
  read_OTP(0)
  AS5161.pass2func(0)
  AS5161.fuse(0)
  PWM_output(0)

    
pub read_OTP (out) |  address

  address:=$0E
  repeat 8
    pst.hex(AS5161.read_frame(out,address),4)
    pst.char(32)
    address-=2
  pst.char(13)
  address:=$0E
  pst.str(string("  "))
  repeat 8
    pst.hex(address,2)
    pst.str(string("   "))
    address-=2

   
pub DSP_output(out)

  AS5161.reset_DSP (out)
  repeat
    pst.home
    pst.dec(AS5161.read_DSP(out))
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)


pub PWM_output (out) | PW,old_angle,new_angle,delta_angle,revolutions

  FRQA:=1
  FRQB:=1
  old_angle:=1800
  revolutions:=0
  repeat
    PHSA:=0
    PHSB:=0
    waitpeq(0, |< out, 0)                                  
    ctra:=%01000 << 26 + out
    waitpeq(1, |< out, 0)
    ctrb:=%01100 << 26 + out
    waitpeq(0, |< out, 0)
    ctra:=0
    waitpeq(1, |< out, 0)
    ctrb:=0
    PW:=10000*PHSA/(PHSA+PHSB)
    new_angle:=3600*(PW-PWMIN)/DPW
    delta_angle:=new_angle-old_angle
    if delta_angle < -3000
      revolutions++
    elseif delta_angle > 3000
      revolutions--
    old_angle:=new_angle
    pst.home
    pst.char(13)
    pst.char(13)
    pst.str(string("Pulse Width = "))
    pst.dec(PW)
    pst.str(string("    ")) 
    pst.char(13)
    pst.str(string("Angle = "))
    pst.dec(3600*revolutions+new_angle)
    pst.str(string("    ")) 
    waitcnt(cnt+clkfreq/5)
