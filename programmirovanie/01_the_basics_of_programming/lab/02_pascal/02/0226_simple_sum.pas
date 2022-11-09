program simple_sum;
var
    sum, count, n: longint;
begin
    writeln('Закончить ввод Ctrl-D');
    sum := 0;
    count := 0;
    while not SeekEof do
    begin
        read(n);
        sum += n;
        count += 1;
    end;
    writeln('count: ', count, ' sum: ', sum);
end.
