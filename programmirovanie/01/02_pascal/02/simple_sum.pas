program simple_sum;
var
    sum, count, n: longint;
begin
    sum := 0;
    count := 0;
    while not SeekEof do
    begin
        read(n);
        sum += n;
        count += 1;
    end;
    writeln(count, ' ', sum);
end.