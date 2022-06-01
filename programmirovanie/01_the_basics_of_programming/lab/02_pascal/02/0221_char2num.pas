program char2num;

function ReadLongint(var result: longint): Boolean;
var
    c: char;
    res: longint;
    pos: integer;
begin
    res := 0;
    pos := 0;

    repeat
        read(c);
    until (c <> ' ') and (c <> #10);

    while (c <> ' ') and (c <> #10) do
    begin
        if (c < '0') or (c > '9') then
            begin
                writeln('Unexpected ''', c, ''''' in pos: ', pos+1);
                // очистить входной паток, если этого не сделать
                // функция при повторном вызове не будет дожидаться
                // ввода страко, а считает остатки строки из потока ввода
                readln;
                ReadLongint := false;
                exit;
            end;

        res := res * 10 + ord(c) - ord('0');
        read(c);
        pos += 1;
    end;

    result := res;
    ReadLongint := true;
end;

var 
    x,y: longint;
begin
    write('Please type the first number: ');
    while not ReadLongint(x) do;
    write('Please type the second number: ');
    while not ReadLongint(y) do;
    writeln(x, ' times ', y, ' is ', x * y);
end.
