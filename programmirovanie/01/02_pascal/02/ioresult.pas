program IOR;
var
    x, y: longint;
begin
    {$i-}
    read(x, y);
    {$i+}

    if IOresult = 0 then
        writeln(x * y)
    else
        writeln('I couldn''t parse your input');
end.