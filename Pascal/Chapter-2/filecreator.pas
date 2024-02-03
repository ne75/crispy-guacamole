program filecreator;

var 
	f1, f2 : text;
	a : integer;
	
begin
	assign(f1,'file1.dat');
	reset(f1);
	assign(f2, 'file2.dat');
	rewrite(f2);
	repeat
		readln(f1, a);
		writeln(f2, sqr(a));							
	until eof(f1);
	close(f1);
	close(f2);
end.