program number_game;

uses CRT;

type
	rdgss = array[1..5] of char;				{Readkey Var}
	check = array[1..5] of integer;				{Correct Number}
	guess = array[1..5] of integer;				{Your Guess}
	exact = array[1..5] of integer;				{Correct Place}
	
var
	a, b, c, d, e : integer;
	enter : char;
	readguess : rdgss;
	numcheck : check;
	numguess : guess;				
	numexact : exact;
	x, y : integer;
	play, again : char;
	count1 : integer;

procedure instructions;
	
begin
	clrscr;
	write('I will guess a 5-digit number. You will try to guess it and I will tell you how many you got right ');
	writeln('and how many of those are in the correct place.');
	writeln;
	writeln('For Example: ');
	writeln;
	writeln('My number is 12345, You guess 13879 ');
	writeln('I will tell you: "2 correct, 1 in its place", Then you guess again');
	writeln;
	writeln('To guess, enter a 5-digit number, hitting only numbers or Esc if you want to quit. After you enter ');
	writeln('your guess, hit Enter.');
	writeln('Hit any key to	begin: ');
	Readkey;
end;

procedure backspace(VAR i : integer);

begin
	gotoXY((wherex - 1), wherey);
	clreol;
	if (i > 1) then i := i - 1;
end;

procedure read_number;

var
	count1 : integer;

begin
	count1 := 1;
	while (count1 < 7) do	
	begin
		if count1 < 6 then 
		begin
			repeat
				readguess[count1] := Readkey;
				numguess[count1] := ord(readguess[count1]) - 48;
			until ((readguess[count1] = #27) or (readguess[count1] = #8) or
			((numguess[count1] < 10) and (numguess[count1] > (-1))));
			if (readguess[count1] = #27) then
				halt
			else;
			if (readguess[count1] = #8) then backspace(count1)
			else
			begin
				write(numguess[count1]);
				count1 := count1 + 1;
			end;
		end
		else
		begin
			repeat 
				enter := readkey;
			until ((enter = #13) or (enter = #8) or (enter = #27));
			if (enter = #27) then halt;
			if (enter = #8) then backspace(count1);
			if (enter = #13) then count1 := count1 + 1;
		end;
	end;
end;

procedure main_number(VAR f, g, h, i, j : integer);

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
	clrscr;
end;

begin
	randomize;
	clrscr;
	textcolor(red);
	count1 := 1; 
	for count1 := 1 to 3 do
		begin
			writeln('                              WELCOME TO NUMBERS!!');
			delay(500);
			clrscr;
			delay(100);
		end;
	textcolor(black);
	writeln('P      Play');
	writeln('I      Instructions');
	writeln('Esc    Exit');
		repeat
			play := Readkey;
			if (not (play = #112)) and (not(play = #105)) and (not(play = #27)) then
				begin
					writeln('Try Again: ');
				end;
		until (play = #105) or (play = #112) or (play = #27);
		if (play = #105) then 
			instructions
		else
			if (play = #27) then
				halt(0);
	repeat	
		clrscr;
		main_number(a, b, c, d, e);
		writeln('Enter 5 digit guess or Esc to quit. ');
		repeat
			read_number;
			writeln;
				{A}
				if numguess[1] = a then				{Checking Digits, this section is checking if the place value is exact}
					begin
						numexact[1] := 1;
						numcheck[1] := 1;
					end
				else numexact[1] := 0;
				if (not(numcheck[1] = 1)) then				{Now checking to see if guess digit is equal to any other digit}
					if ((numguess[1] = b) or (numguess[1] = c) or (numguess[1] = d) or (numguess[1] = e)) then
						numcheck[1] := 1
					else numcheck[1] := 0
				else;
				{B}
				if numguess[2] = b then				{Checking Digits, this section is checking if the place value is exact}
					begin
						numexact[2] := 1;
						numcheck[2] := 1;
					end
				else numexact[2] := 0;
				if (not(numcheck[2] = 1)) then				{Now checking to see if guess digit is equal to any other digit}
					if ((numguess[2] = a) or (numguess[2] = c) or (numguess[2] = d) or (numguess[2] = e)) then
						numcheck[2] := 1
					else numcheck[2] := 0
				else;
				{C}
				if numguess[3] = c then				{Checking Digits, this section is checking if the place value is exact}
					begin
						numexact[3] := 1;
						numcheck[3] := 1;
					end
				else numexact[3] := 0;
				if (not(numcheck[3] = 1)) then				{Now checking to see if guess digit is equal to any other digit}
					if ((numguess[3] = a) or (numguess[3] = b) or (numguess[3] = d) or (numguess[3] = e)) then
						numcheck[3] := 1
					else numcheck[3] := 0
				else;
				{D}
				if numguess[4] = d then				{Checking Digits, this section is checking if the place value is exact}
					begin
						numexact[4] := 1;
						numcheck[4] := 1;
					end
				else numexact[4] := 0;
				if (not(numcheck[4] = 1)) then			{Now checking to see if guess digit is equal to any other digit}
					if ((numguess[4] = a) or (numguess[4] = b) or (numguess[4] = c) or (numguess[4] = e)) then
						numcheck[4] := 1
					else numcheck[4] := 0
				else;	
				{E}
				if numguess[5] = e then				{Checking Digits, this section is checking if the place value is exact}
					begin
						numexact[5] := 1;
						numcheck[5] := 1;
					end
				else numexact[5] := 0;
				if (not(numcheck[5] = 1)) then				{Now checking to see if guess digit is equal to any other digit}
					if ((numguess[5] = a) or (numguess[5] = b) or (numguess[5] = c) or (numguess[5] = d)) then
						numcheck[5] := 1
					else numcheck[5] := 0
				else;
				{Finishing Checking}
				x := numcheck[1] + numcheck[2] + numcheck[3] + numcheck[4] + numcheck[5];
				y := numexact[1] + numexact[2] + numexact[3] + numexact[4] + numexact[5];
				gotoxy(20, (wherey - 1));
				writeln(x, ' ', y);
				for count1 := 1 to 5 do
					numcheck[count1] := 0;
				for count1 := 1 to 5 do
					numexact[count1] := 0;
			until ((x = 5) and (y = 5));
 			writeln('Congradulations! You guessed the number!');
			writeln('To play again, hit any key. To exit, hit "Esc".');
			again := readkey;
		until again = #27;
end.