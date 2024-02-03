program assignment3;

var
	a,b,c : integer;
	
begin
	writeln('Enter numbers');
	readln(a, b);
	c:=a;
	a:=b;
	b:=c;
	writeln(a,' ', b);
	
end.	