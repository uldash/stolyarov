program hello20;

var
    i: integer = 0;

begin
    while i < 20 do
    begin
        WriteLn(i:2, #9, 'Hello');
        i := i + 1;
    end;
end.
