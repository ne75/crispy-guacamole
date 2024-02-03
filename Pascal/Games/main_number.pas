program numbers;

uses CRT;

procedure main_number(VAR f, g, h, i, j : integer);

var
	count, count2 : integer;

begin
	f := random(9);
	repeat
		g := random(9);
	until (not(g = f));
	repeat
		h := random(9);
	until (not(h = g)) and (not(h = f)); 
	repeat
		i := random(9);
	until (not(i = h)) and (not(i = g)) and (not(i = f));
	repeat
		j := random(9);
	until (not(j = i)) and (not(j = h)) and (not(j = g)) and (not(j = f));      {Makes sure all digits are different}
	for count := 1 to 3 do
		begin
			for count2 := 1 to 2 do
				begin
					write('.');
					delay(200);
				end;
				writeln('.');
		end;
end;

var 
	a, b, c, d, e : integer;
	
begin
	randomize;
	main_number(a, b, c, d, e);
	write(a, b, c, d, e);
	writeln;
end.