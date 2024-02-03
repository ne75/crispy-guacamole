program function1;

function a1 (x : integer) : real;

begin
	a1 := sqr(x) + 5;
end;

var
	yin : integer;
	yout : real;
	
begin
	write('Input Number: ');
	readln(yin);
	yout := a1(yin);
	writeln(yout:0:1);
end.