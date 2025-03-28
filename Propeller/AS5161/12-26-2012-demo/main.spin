CON

  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

  
OBJ

  pst : "Parallax Serial Terminal"
  servo : "servo"
  adr : "global-var-adr"
  parameters : "parameters"

pub main | min0,min1

  dira[16..23]~
  outa[16..23]~
  pst.start(115200)
  parameters.init
  servo.start
  min0:=long[adr#Encoder_Global][0]
  min1:=long[adr#Encoder_Global][1]
  repeat
    if long[adr#Encoder_Global][0]<min0
      min0:=long[adr#Encoder_Global][0]
    if long[adr#Encoder_Global][1]<min1
      min1:=long[adr#Encoder_Global][1]
    'servo.update_encoder_angle(0)
    'servo.update_encoder_angle(1)
    pst.home
    pst.str(string("Target  = "))
    pst.dec(long[adr#Encoder_Global][0])
    pst.str(string("    "))
    pst.dec(min0) 
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("Current = "))
    pst.dec(long[adr#Encoder_Global][1]) 
    pst.str(string("    "))
    pst.dec(min1) 
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/10)
    
 
pub encoder_PWM_test (out) | PW,angle
  repeat
    servo.encoder_test(out,@PW,@angle)
    pst.home
    pst.str(string("Pulse Width = "))
    pst.dec(PW)
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("Angle (PWMIN=660,PWMAX=9412) = "))
    pst.dec(angle)
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/10)

pub encoder_full_test (number)
  repeat
    servo.update_encoder_angle(number)
    pst.home
    pst.str(string("Revolutions = "))
    pst.dec(long[adr#Encoder_Revolutions][number])
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("Angle = "))
    pst.dec(long[adr#Encoder_Angle][number])
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("Global = "))
    pst.dec(long[adr#Encoder_Global][number])
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/10)