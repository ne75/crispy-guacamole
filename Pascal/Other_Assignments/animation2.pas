program bored;

uses CRT;

procedure anim1;

var
	key : char;

begin
	repeat
		repeat
			textcolor(green);
			writeln('----------#----------');
			delay(100);
			writeln('---------#-#---------');
			delay(100);
			textcolor(red);
			writeln('--------#---#--------');
			delay(100);
			writeln('-------#-----#-------');
			delay(100);
			textcolor(blue);
			writeln('------#-------#------');
			delay(100);
			writeln('-----#---------#-----');
			delay(100);
			textcolor(green);
			writeln('----#-----------#----');
			delay(100);
			writeln('---#-------------#---');
			delay(100);
			textcolor(red);
			writeln('--#---------------#--');
			delay(100);
			writeln('-#-----------------#-');
			delay(100);
			textcolor(blue);
			writeln('#-------------------#');
			delay(100);
			writeln('-#-----------------#-');
			delay(100);
			textcolor(green);
			writeln('--#---------------#--');
			delay(100);
			writeln('---#-------------#---');
			delay(100);
			textcolor(red);
			writeln('----#-----------#----');
			delay(100);
			writeln('-----#---------#-----');
			delay(100);
			textcolor(blue);
			writeln('------#-------#------');
			delay(100);
			writeln('-------#-----#-------');
			delay(100);
			textcolor(green);
			writeln('--------#---#--------');
			delay(100);
			writeln('---------#-#---------');
			delay(100);
			textcolor(red);
			writeln('----------#----------');
			delay(100);
		until Keypressed;
		key := ReadKey;
	until key = #27;
end;

procedure anim2;

var
	key : char;

begin
	repeat
		repeat
			textcolor(green);
			writeln('0--------------------');
			delay(100);
			writeln('-0-------------------');
			delay(100);
			textcolor(red);
			writeln('---0-----------------');
			delay(100);
			writeln('----0----------------');
			delay(100);
			textcolor(blue);
			writeln('------0--------------');
			delay(100);
			writeln('----------0----------');
			delay(100);
			textcolor(green);
			writeln('--------------0------');
			delay(100);
			writeln('----------------0----');
			delay(100);
			textcolor(red);
			writeln('-----------------0---');
			delay(100);
			writeln('------------------0--');
			delay(100);
			textcolor(blue);
			writeln('-------------------0-');
			delay(100);
			writeln('--------------------0');
			delay(100);
			textcolor(green);
			writeln('-------------------0-');
			delay(100);
			writeln('------------------0--');
			delay(100);
			textcolor(red);
			writeln('-----------------0---');
			delay(100);
			writeln('----------------0----');
			delay(100);
			textcolor(blue);
			writeln('--------------0------');
			delay(100);
			writeln('----------0----------');
			delay(100);
			textcolor(green);
			writeln('------0--------------');
			delay(100);
			writeln('----0----------------');
			delay(100);
			textcolor(red);
			writeln('---0-----------------');
			delay(100);
			writeln('--0------------------');
			delay(100);
			textcolor(blue);
			writeln('-0-------------------');
			delay(100);
		until Keypressed;
		key := ReadKey;
	until key = #27;
end;

var
	anim : char;

begin
	repeat
		write('Animation "1" or "2"? ');
		readln(anim);
	until (anim = '1') or (anim = '2');
	if anim = '1' then
		anim1
	else
		if anim = '2' then;
			anim2;
			
end.
