program keystroke;

uses CRT;

var
	key : char;
	
begin
	repeat
		repeat
			write('*');
			Delay(100);
		until KeyPressed;
		key := ReadKey;
	until key = #13;
	writeln;
end.