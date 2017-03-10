uses crt,graph;
var d,t : integer;
var globalk : integer;
procedure renderSky(x,y,dx,dy : integer);
var k,randX,randY,num,color : integer;
begin
 num:=((dx-x)*(dy-y)) div 4;
 for k:=1 to num do
 begin
  randX:=round(random(dx-x))+x;
  randY:=round(random(dy-y))+y;
  color:=round(random(14))+1;
  putpixel(randX,randY,color);
 end;
end;
procedure renderWindow(x,y,d : integer);
var rand : integer;
begin
 Rectangle(x,y,x+d,y+d);
 rand:=round(random(100));
 if rand > 50 then
 begin
  setfillstyle(1,14);
  floodfill(x+5,y+5,15);
 end;
end;
procedure renderHome(x,y : integer);
var k : integer;
begin
 Rectangle(x,y,x+70,y+225);
 for k:=0 to 10 do
 begin
  renderWindow(x+10,y+10+(k*17),15);
 end;
 for k:=0 to 10 do
 begin
  renderWindow(x+37,y+10+(k*17),15);
 end;
end;
procedure renderUFO(x,y : integer);
begin
 Ellipse(x,y,0,180,40,20);
 Ellipse(x,y,180,360,60,20);
 line(x-60,y,x+60,y);
end;
begin
 randomize;
 initgraph(d,t,'C:\fpc\3.0.2\units\i386-win32\graph');
 renderSky(0,0,640,50);
 outtextxy(450,330,'Alexandr Salkov');
 for globalk:=0 to 3 do
  renderHome(5+(globalk*100),100);
 renderHome(505,100);
 for globalk:=1 to 395 do
 begin
  setcolor(15);
  renderUFO(45+globalk,70);
  delay(10);
  setcolor(0);
  renderUFO(45+globalk,70);
 end;
 for globalk:=1 to 270 do
 begin
  setcolor(15);
  renderUFO(440,70+globalk);
  delay(30);
  setcolor(0);
  renderUFO(440,70+globalk);
 end;
 setcolor(15);
 renderUFO(440,340);
 outtextxy(450,330,'Alexandr Salkov');
 readln;
 closegraph;
end.
