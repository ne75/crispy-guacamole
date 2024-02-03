program quadratic_solver;

procedure quad(a, b, c : real);

var
	d : real;  (*Discriminent*)
	x, x1, x2 : real;
	
begin
	d := sqr(b) - (4 * a * c);
	if (a = 0) and (b = 0) and (c = 0) then
		begin
			writeln('Infinite Solutions');
		end
	else
		if (a = 0) and (b = 0) or (d < 0) then
			begin
				writeln('No Solution');
			end
		else
			if a = 0 then
				begin
					x := c/b;
					writeln('X=', x:0:3);
				end
			else
				begin
					x1 := (-b + sqrt(d)) / (2 * a);
					x2 := (-b - sqrt(d)) / (2 * a);
					writeln('X-1 =', x1:8:4);
					writeln('X-2 =', x2:8:4);
				end;
end; 

var
	a, b, c : real;
	
begin
	write('Enter a: ');
	readln(a);
	write('Enter b: ');
	readln(b);
	write('Enter c: ');
	readln(c);
	quad(a, b, c);
end.
	