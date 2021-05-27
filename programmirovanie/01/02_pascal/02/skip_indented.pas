program SkipIndented;
{выбираем из вводимого тестка строки, начинающиеся с непробельных символов,
и только их печатаем, а строки, которые начинаются с пробела, табуляции или пустые строки - игнорируем}

var
    c: char;
    know, print: boolean;
begin
    know := false;
    print := false;
    while not eof do
    begin
        read(c);
        if c = #10 then
        begin
            if know and print then
                writeln;
            know := false;
        end
        else
        begin
            if not know then
            begin
                print := (c <> ' ') and (c <> #9);
                know := true;
            end;
            if print then
                write(c)
        end;
    end;
end.
