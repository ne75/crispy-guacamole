obj
  adr : "global-var-adr"
   
pub init | i
  byte[adr#Mode]:=0
  byte[adr#Tool]:=0
  byte[adr#ServoFeedback][0]:=0
  byte[adr#ServoFeedback][1]:=0   
  byte[adr#ServoPin][0]:=10  
  byte[adr#ServoPin][1]:=11
  byte[adr#LimitPin][0]:=14  
  byte[adr#LimitPin][1]:=15 
  long[adr#ServoCenter][0]:=661
  long[adr#ServoCenter][1]:=673
  byte[adr#ServoRapid][0]:=25
  byte[adr#ServoRapid][1]:=15
  byte[adr#ServoSlow][0]:=5
  byte[adr#ServoSlow][1]:=5
  long[adr#ServoReverse][0]:=1
  long[adr#ServoReverse][1]:=1
  long[adr#CaliperReverse][0]:=1
  long[adr#CaliperReverse][1]:=-1
  long[adr#ServoGain][0]:=1.2
  long[adr#ServoGain][1]:=1.0
  long[adr#ServoSpeed][0]:=0
  long[adr#ServoSpeed][1]:=0
  
  byte[adr#CaliperPin][0]:=2
  byte[adr#CaliperPin][1]:=3
  byte[adr#CaliperPin][2]:=4
  byte[adr#CaliperPin][3]:=5
  byte[adr#CaliperPin][4]:=8
  byte[adr#CaliperPin][5]:=9
  byte[adr#CaliperPin][6]:=6
  byte[adr#CaliperPin][7]:=7
  long[adr#TravelLimitMin][0]:=-1000
  long[adr#TravelLimitMax][1]:=0
  long[adr#TravelLimitMax][0]:=40000
  long[adr#TravelLimitMax][1]:=40000

  byte[adr#LeftPin]:=16
  byte[adr#RightPin]:=17
  byte[adr#FwrdPin]:=18
  byte[adr#BackPin]:=19
  byte[adr#DownPin]:=20
  byte[adr#zServoPin]:=1

{  i:=0
  repeat 16
    long[adr#drill_depth][i]:=1000
    long[adr#return_plane][i]:=1500
    i++
}


  