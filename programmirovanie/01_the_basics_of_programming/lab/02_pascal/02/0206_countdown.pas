program countdown;
var
    i: Integer;
begin
    for i := 3 downto 1 do
        Write(i, '... ');
    WriteLn('Start!');
end.
