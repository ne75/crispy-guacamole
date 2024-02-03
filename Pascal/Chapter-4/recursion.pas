program recursion;

function f(n : longint) : longint;

begin
	if n = 1 then 
		f := 1
	else 
	begin
		f := n * f(n-1);
		write(f, ' ');
	end;
end;

var 
	n, n2: longint;
	
begin
	write('Starting Number: ');
	readln(n2);
	n := f(n2);
	writeln;
end.
	