CON

  _clkmode = xtal1 + pll16x  ' System clock → 80 MHz
  _xinfreq = 5_000_000       ' Using 5 MHz external crystal oscillator

   Servo_Pin=0
   Servo_Pulse=1500          ' micro seconds
   waitcnt_correction=784    ' clock counts
   
OBJ

  pst : "Parallax Serial Terminal"

pub main | time,pulse_cnt

  dira[16..23]~
  outa[16..23]~
  pst.start(115200)

  dira[Servo_Pin]~~
  time:=cnt
  repeat
    FRQA:=1
    PHSA:=0
    ctra:=%01000 << 26 + Servo_Pin
    pulse_cnt:=80*Servo_Pulse-waitcnt_correction 
    outa[Servo_Pin]~~
    waitcnt(cnt+pulse_cnt)
    outa[Servo_Pin]~
    pst.home
    pst.str(string("servo pulse       = "))
    pst.dec(Servo_Pulse)
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("servo cnt         = "))
    pst.dec(80*Servo_Pulse)
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("ctra counter      = "))
    pst.dec(PHSA) 
    pst.str(string("    "))
    pst.char(13)
    pst.str(string("instruction time  = "))
    pst.dec(PHSA-pulse_cnt) 
    pst.str(string("    "))
    
    waitcnt(time+=clkfreq/50)