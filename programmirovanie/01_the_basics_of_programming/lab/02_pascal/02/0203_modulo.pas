program modulo;

var
    x: Integer;
    negative: Boolean;

begin
    Read(x);
    // if x > 0 then
    //     writeln(x)
    // else
    //     WriteLn(-x)

    negative := x < 0;
    if negative then
        x := -x;
    WriteLn(x);
end.
