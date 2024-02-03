obj
  adr : "global-var-adr"
   
pub init | i

  byte[adr#Encoder_Pin][0]:=0         ' Dial Encoder Pin
  byte[adr#Encoder_Pin][1]:=1         ' Servo Encoder Pin

  byte[adr#Servo_Pin][0]:=7           ' Servo Pin
  
  word[adr#Encoder_PWM_Param][0]:=660
  word[adr#Encoder_PWM_Param][1]:=9412
   
  word[adr#Encoder_PWM_Param][2]:=660
  word[adr#Encoder_PWM_Param][3]:=9412

  long[adr#Encoder_Angle][0]:=1800
  long[adr#Encoder_Angle][1]:=1800
  
  long[adr#Encoder_Revolutions][0]:=0
  long[adr#Encoder_Revolutions][1]:=0

  long[adr#Servo_Center][0]:=1336
  
  

{  i:=0
  repeat 16
    long[adr#drill_depth][i]:=1000
    long[adr#return_plane][i]:=1500
    i++
}


  