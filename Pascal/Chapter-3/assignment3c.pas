program quadratic_solver;

var
	a, b, c : real;
	d : real;  (*Discriminent*)
	x, x1, x2 : real;
	
begin
	writeln('Enter a');
	readln(a);
	writeln('Enter b');
	readln(b);
	writeln('Enter c');
	readln(c);
	d := sqr(b) - (4 * a * c);
	if (a = 0) and (b = 0) and (c = 0) then
		writeln('Infinite Solutions')
	else
		if (a = 0) and (b = 0) or (d < 0) then
			writeln('No Solution')
		else
			if a = 0 then
				begin
					x := c/b;
					writeln('X=', x:0:3)
				end
			else
				begin
					x1 := (-b + sqrt(d)) / (2 * a);
					x2 := (-b - sqrt(d)) / (2 * a);
					writeln('X-1 =', x1:8:4);
					writeln('X-2 =', x2:8:4);
				end;
end.