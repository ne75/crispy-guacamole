program hello_goodbye;

procedure HelloGoodbye;
	
var 
	a : char;
	
begin
		repeat
			write('Y/N? ');
			readln(a);
			if not ((a = 'y') or (a = 'n')) then
					writeln('Try again')
			else;
		until (a = 'y') or (a = 'n');
	if a = 'y' then
		writeln('Hello')
	else writeln('Goodbye');
end;

begin
	HelloGoodbye;
end.
	
