program assignment3b_1;

var 
	a : real;
	count : integer;
	
begin
	a := 1;
	count := 1;
	write(a:1:0, ', ');
		for count := 1 to 14 do
			begin
				a := a * 2;
					if (count = 4) or (count = 9) then 
						writeln(a:1:0, ',')
					else
						if count = 14 then 
							writeln(a:1:0)
						else
				write(a:1:0, ', ');
					
			end;
end.