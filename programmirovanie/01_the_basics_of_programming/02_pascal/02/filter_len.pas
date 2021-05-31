program FilterLength;
var
    c: char;
    count: integer = 0;
begin
    while not eof do
    begin
        read(c);
        if c = #10 then
        begin
            writeln(count);
            count := 0;
        end
        else
            count += 1;
    end;
    writeln('Goog bye');
end.