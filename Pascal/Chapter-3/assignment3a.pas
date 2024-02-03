program Fibonacci;

var
	a, b, c : integer;
	count : integer;
	num : integer;
	
begin
	write('How many Numbers to display? ');
	readln(num);
	count := 0;
	a := 0;
	b := 1;
	repeat 
		write(b, '  ');
		c := b;
		b := b + a;
		a := c;
		count := count + 1;
	until count = num;
	writeln;
end.
			
			
		