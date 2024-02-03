PROGRAM char_ord_ascii;
USES CRT;

VAR
   key : char;
BEGIN
REPEAT
      key := readkey;
      writeln(Ord(key));
UNTIL key = #27;
END.
