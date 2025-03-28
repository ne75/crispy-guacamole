CON

  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

  OUT = 0
  {POS_DETECT = %01000 << 26 + OUT
  NEG_DETECT = %01100 << 26 + OUT 
  PWMIN=658
  PWMAX=9411
  DPW=PWMAX-PWMIN
  }
OBJ

  AS5161 : "AS5161"
  pst : "Parallax Serial Terminal"
  FM : "FloatMath"
  servo : "servo"
  adr : "global-var-adr" 

pub main 

 
  dira[16..23]~
  outa[16..23]~
  pst.start(115200)
  'long[adr#Servo_Pulse][0]:=1336+00
  long[adr#Target_Pos][0]:=100
  servo.start
  repeat until long[adr#Servo_State][0]==0
  long[adr#Target_Pos][0]:=200 
  PWM_output
    

pub DSP_output

  AS5161.init(OUT,0)
  repeat
    pst.home
    pst.dec(AS5161.read_DSP)
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)

pub PWM_output | PW,old_angle,new_angle,delta_angle,revolutions

  AS5161.init(OUT,1)
  repeat
    pst.home
    pst.dec(long[adr#Current_Pos][0])
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)
{ FRQA:=1
  FRQB:=1
  old_angle:=1800
  revolutions:=0
  repeat
    PHSA:=0
    PHSB:=0
    waitpeq(0, |< out, 0)                                  
    ctra:=POS_DETECT
    waitpeq(1, |< out, 0)
    ctrb:=NEG_DETECT
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
    pst.dec(3600*revolutions+new_angle)
    'pst.dec(PW)
    pst.str(string("    "))
    waitcnt(cnt+clkfreq/100)
}