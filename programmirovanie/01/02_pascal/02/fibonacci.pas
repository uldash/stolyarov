program Fibonacci;

function Fibonacci(n: integer): qword;
var
    i: word;
    p,q,r: qword;
begin
    if n <= 0 then
        Fibonacci := 0
    else
    begin
        q := 0;
        r := 1;
        for i := 2 to n do
        begin
            p := q;
            q := r;
            r := p + q;        
        end;
        Fibonacci := r;
    end;
end;
var
    num: integer;
begin
    write('Input number: ');
    readln(num);
    writeln('Fibonacci: ', Fibonacci(num));
end.