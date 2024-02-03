program Powers_of_2;

const
	n = 10000;
	ln = 3;
	
var
	a : real;
	j : integer;
	
begin
	a := 1;
	j := 0;
	while a < n do
		begin
			j := j + 1;
			if j = ln then
				begin
					writeln(a:1:0);
					j := 0;
				end
			else
			write(a:1:0, ', ');
			a := a * 2
		end;
end.