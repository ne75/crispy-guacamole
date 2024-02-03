program arrays;

type
	array1 = array [1..5] of integer;
	
var
	myarray : array1;
	count : integer;
	x : integer;
	
begin
	for count := 1 to 5 do
		myarray[count] := count;
	x := myarray[1] + myarray[2] + myarray[3] + myarray[4] + myarray[5];
	writeln(x);
	myarray[1].. myarray[5] := 0;
end.