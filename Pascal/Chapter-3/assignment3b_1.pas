program assignment3b_1;

var 
	a : integer;
	count : integer;
	
begin
	a := 1;
	count := 1;
	for count := 1 to 10 do
		begin
			a := a * 2;
			writeln(a);
		end;
end.
			
