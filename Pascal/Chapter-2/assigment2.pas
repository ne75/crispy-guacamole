program assigment2;

var
	a, b, c, d, e: integer;
	sum : integer;
	avg : real;

begin
	
	writeln ('Enter 5 Numbers');
	readln (a, b, c, d, e);
	sum := a+b+c+d+e;
	avg := sum / 5;
	
	writeln('Number of integers = 5');
	writeln('');
	writeln('Number1:', a:8);
	writeln('Number2:', b:8);
	writeln('Number3:', c:8);
	writeln('Number4:', d:8);
	writeln('Number5:', e:8);
	writeln('================');
	writeln('Sum:', sum:12);
	writeln('Average:', avg:10:1);
	
end.
