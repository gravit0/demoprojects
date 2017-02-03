var P : longint;
var n : shortint;
begin
  P:=1;
  for n := 45 downto 25 do
    P:=P*n;
  writeln('P = ',P);
end.
