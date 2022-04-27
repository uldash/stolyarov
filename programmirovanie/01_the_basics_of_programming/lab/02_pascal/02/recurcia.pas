program recurcia;

{обратная рекурсия}
procedure PrintDigitsOfNumberPrev(n: integer);
begin
    if n > 0 then
    begin
        write(n mod 10, ' ');
        PrintDigitsOfNumberPrev(n div 10);
    end;
end;

{прямая рекурсия}
procedure PrintDigitsOfNumberForward(n: integer);
begin
    if n > 0 then
    begin
        PrintDigitsOfNumberForward(n div 10);
        write(n mod 10, ' ');
    end;
end;

begin
    PrintDigitsOfNumberPrev(12345);
    writeln;
    PrintDigitsOfNumberForward(12345);
    writeln;
end.