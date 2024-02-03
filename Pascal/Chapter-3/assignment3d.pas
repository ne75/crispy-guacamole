program assignment3d;

var
	a, count : integer;
	
begin
	write('Enter Number ');
	readln(a);
	for count := 1 to 10 do
		begin
			a := a + 1;
			writeln(a);
		end
end.