var R : real;
function pifagor(a,b : real) : real;
begin
 pifagor:= sqrt(sqr(a)+sqr(b))
end;
begin
  R:=pifagor(1.5,1.5)+pifagor(3,3)+pifagor(2,2);
  write('Result: ',R)
end.
