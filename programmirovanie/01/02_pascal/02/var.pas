program Varrior;

procedure powers(x: real; var quad, cube, fourth, fifth: real);
begin
    quad := x * x;
    cube := quad * x;
    fourth := cube * x;
    fifth := fourth * x;
end;

var
    p, q, r, t: real;
begin
    powers(3, p, q, r, t);
    writeln(p:7:3, ' ', q:7:3, ' ', r:7:3, ' ', t:7:3);
end.