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

pri servo | servo_pin,time,pulse_cnt

  servo_pin:=byte[adr#Servo_Pin][0]
  dira[servo_pin]~~
  time:=cnt
  repeat
    update_encoder_angle(0)
    update_encoder_angle(1)
    update_servo_pulse
    pulse_cnt:=80*long[adr#Servo_Pulse][0]
    outa[servo_pin]~~
    waitcnt(cnt+pulse_cnt)
    outa[servo_pin]~
    waitcnt(time+=clkfreq/50)

pri update_servo_pulse | pw,direction

  pw:=(long[adr#Encoder_Global][1]-long[adr#Encoder_Global][0])/2 ' pw = current - target
  if (|| pw) > 200
    pw:= 200*(|| pw)/pw
  long[adr#Servo_Pulse][0]:=long[adr#Servo_Center][0]+pw

  
pub encoder_test (out,PW_address,angle_address) | PWMIN, PWMAX, state_mask

  PWMIN:=660
  PWMAX:=9412
  state_mask:=|< out
  FRQA:=1
  FRQB:=1
  PHSA:=0
  PHSB:=0
  waitpeq(0, state_mask, 0)                                 
  ctra:=%01000 << 26 + out
  waitpeq(state_mask, state_mask, 0)
  ctrb:=%01100 << 26 + out
  waitpeq(0, state_mask, 0)
  ctra:=0
  waitpeq(state_mask, state_mask, 0)
  ctrb:=0
  long[PW_address]:=10000*PHSA/(PHSA+PHSB)
  long[angle_address]:=3600*(long[PW_address]-PWMIN)/(PWMAX-PWMIN)


pub update_encoder_angle (number) | cpos,cneg,out,state_mask,PWMIN,PWMAX,PW,angle,delta_angle,revolution

  out:=byte[adr#Encoder_Pin][number]
  state_mask:=|< out
  cpos:=%01000 << 26 + out
  cneg:=%01100 << 26 + out
  PWMIN:=word[adr#Encoder_PWM_Param][2*number]
  PWMAX:=word[adr#Encoder_PWM_Param][2*number+1]
  revolution:=0
  FRQA:=1
  FRQB:=1
  PHSA:=0
  PHSB:=0
  waitpeq(state_mask, state_mask, 0)
  waitpeq(0, state_mask, 0)               ' waitpeq(state,mask,port=0)                                  
  ctra:=cpos
  waitpeq(state_mask, state_mask, 0)
  ctrb:=cneg
  waitpeq(0, state_mask, 0)
  ctra:=0
  waitpeq(state_mask, state_mask, 0)
  ctrb:=0
  PW:=10000*PHSA/(PHSA+PHSB)
  angle:=3600*(PW-PWMIN)/(PWMAX-PWMIN)
  delta_angle:=angle-long[adr#Encoder_Angle][number]
  if delta_angle < -3000
    long[adr#Encoder_Revolutions][number]++
  elseif delta_angle > 3000
   long[adr#Encoder_Revolutions][number]--
  long[adr#Encoder_Angle][number]:=angle
  long[adr#Encoder_Global][number]:=3600*long[adr#Encoder_Revolutions][number]+angle