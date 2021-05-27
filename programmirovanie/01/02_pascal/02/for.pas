program for_operator;
var
    i: word;
begin
    for i := 1 to 20 do
        writeln(i, ' Hello World!');
    for i := 20 downto 1 do
        writeln(i, ' Hello World!');
    writeln(i);
end.