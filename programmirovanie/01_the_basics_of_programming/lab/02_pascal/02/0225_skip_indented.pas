program skip_indented;
{выбираем из вводимого тестка строки, начинающиеся с непробельных символов,
и только их печатаем, а строки, которые начинаются с пробела, табуляции или пустые строки - игнорируем}

var
    c: char;
    know, print: Boolean;
begin
    know := False;
    print := False;
    while not eof do
    begin
        Read(c);
        if c = #10 then
        begin
            if know and print then
                WriteLn;
            know := False;
        end
        else
        begin
            if not know then
            begin
                  print := (c <> ' ') and (c <> #9);
                  know := True;
            end;
            if print then
                Write(c);
        end;
    end;
end.
