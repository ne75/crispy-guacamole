CON
  Encoder_Pin=0
  Servo_Pin=1
  Servo_Center=1336
  POS_DETECT = %01000 << 26 + Encoder_Pin
  NEG_DETECT = %01100 << 26 + Encoder_Pin 
  PWMIN=658
  PWMAX=9411
  DPW=PWMAX-PWMIN
  
OBJ
  adr : "global-var-adr"

var
  long cog,old_angle,revolutions
  long stack[128]

pub stop
  if cog
    cogstop(cog~-1)
    
pub start
  stop
  cog:=cognew(servo,@stack)+1
  waitcnt(cnt+clkfreq/100)

pri servo | time,pulse_cnt
  long[adr#Servo_State][0]:=1
  old_angle:=1800
  revolutions:=0
  dira[Servo_Pin]~~
  time:=cnt
  repeat
    servo_position
    servo_pulse
    pulse_cnt:=80*long[adr#Servo_Pulse][0]
    servo_position
    outa[Servo_Pin]~~
    waitcnt(cnt+pulse_cnt)
    outa[Servo_Pin]~
    waitcnt(time+=clkfreq/50)


pri servo_position | PW,new_angle,delta_angle,out

  out:=Encoder_Pin
  FRQA:=1
  FRQB:=1
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
  long[adr#Current_Pos][0]:=3600*revolutions+new_angle

pri servo_pulse | pw,direction
  pw:=long[adr#Current_Pos][0]-long[adr#Target_Pos][0]
  if (|| pw) > 200
    pw:= 200*(|| pw)/pw
  else
    pw:=pw/3
  if (|| pw) > 3
    long[adr#Servo_State][0]:=1
  else
    long[adr#Servo_State][0]:=0 
  long[adr#Servo_Pulse][0]:=Servo_Center+pw

  
    