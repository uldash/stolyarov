program fibonacci_exit;

function Fibonacci(n: integer): qword;
var
    i: word;
    p,q,r: qword;
begin
    if n <= 0 then
        begin
        Fibonacci := 0;
        exit;
        end;    
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
var
    num: integer;
begin
    write('Input number: ');
    readln(num);
    writeln('Fibonacci: ', Fibonacci(num));
end.