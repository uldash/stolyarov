program countonereturn;
// Напишите функцию, которая принимает параметром число типа longint 
// и возвращает целое число – количество единиц в двоичном 
// представлении числа

function GetNum:integer;
var
    n: Integer;
begin
    write('Input number: ');
    ReadLn(n);
    GetNum := n;
end;

function CountOneReturn(n:Integer):Integer;
var
    count: Integer = 0;
begin
    while n <> 0 do
        begin
            n := n and (n-1); // побитовое и, убираем младший бит
            count := count + 1;
        end;
    CountOneReturn := count
end;

begin
    writeln(CountOneReturn(GetNum));
end.
