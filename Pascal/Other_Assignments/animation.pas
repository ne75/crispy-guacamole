program bored;

uses CRT;

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
end.