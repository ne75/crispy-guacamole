program quadraticsolver;

var
	a, b, c : real;
	d : real;  (*Discriminent*)
	x, x1, x2 : real;
	f1, f2 : text;
	
begin
	assign(f1, 'abc.dat');
	reset(f1);
	assign(f2, 'solution.dat');
	rewrite(f2);
	readln(f1, a);
	readln(f1, b);
	readln(f1, c);
	d := sqr(b) - (4 * a * c);
	if (a = 0) and (b = 0) and (c = 0) then
		begin
			writeln('Infinite Solutions');
			writeln(f2, 'Infinite Solutions')
		end
	else
		if (a = 0) and (b = 0) or (d < 0) then
			begin
				writeln('No Solution');
				writeln(f2, 'No Solution')
			end
		else
			if a = 0 then
				begin
					x := c/b;
					writeln('X=', x:0:3);
					writeln(f2, 'X=', x:0:3)
				end
			else
				begin
					x1 := (-b + sqrt(d)) / (2 * a);
					x2 := (-b - sqrt(d)) / (2 * a);
					writeln('X-1 =', x1:8:4);
					writeln(f2, 'X-1 =', x1:8:4);
					writeln('X-2 =', x2:8:4);
					writeln(f2, 'X-2 =', x2:8:4)
				end;
		close(f1);
		close(f2);
end.