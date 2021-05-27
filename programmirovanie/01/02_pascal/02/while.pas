program whileprogram;
var
    iterator: integer; 
begin
    iterator := 0;
    while iterator < 20 do
    begin
        writeln(iterator, ' Hello, World!');
        iterator += 1;
    end;
end.