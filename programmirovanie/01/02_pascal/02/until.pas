program untilprogram;
var
    x, sum: integer;
begin
    sum := 0;
    repeat
        readln(x);
        sum += x;
    until sum > 1000;
    writeln('SUM = ', sum);
end.