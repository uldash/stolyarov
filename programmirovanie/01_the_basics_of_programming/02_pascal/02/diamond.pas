program Diamond;

const
    CHARS = ' ';

procedure PrintChars(ch: char; count: integer);
var
    i: word;
begin
    for i := 1 to count do
        write(ch)
end;

procedure PrintLineOfDiamond(k, n: integer);
begin
    PrintChars(CHARS, n + 1 - k);
    write('*');
    if k > 1 then
        begin
            PrintChars(CHARS, 2 * k - 3);
            write('*');
        end;
    writeln;
end;

var
    n, k, h: word;
begin
    repeat
        write('Enter the diamond''s height (positive odd): ');
        readln(h);
    until (h > 0) and (h mod 2 = 1);

    n := h div 2;

    for k := 1 to n + 1 do
        PrintLineOfDiamond(k, n);
    for k := n downto 1 do
        PrintLineOfDiamond(k, n);
end.