program assignment3f;

var 
	a : char;
	b : integer;
	
begin 
	b := 0;
	while b = 0 do
		begin	
			writeln('Stop? (Y/N) ');
			readln(a);
			if a = ('y') then 
				b := 1;
		end;
end.