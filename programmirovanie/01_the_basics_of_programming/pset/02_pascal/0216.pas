program prog;

{ Напишите программу, которая читает из стандартного потока ввода 
строку (используте переменную типа string и оператор readln) и 
печатает те непробельные символы из этой строки, которые в ней 
встречаются больше одного раза. Каждый такой символ должен быть 
напечатан ровно один раз; печатать их следует в том порядке, в 
котором они в первый раз встречаются во введенной строке. 
Не забудьте про перевод строки в конце вашего вывода. 
Например, работа программы может выглядеть так:
Humpty Dumpty sat on wall
umptyal
}

function isMoreOneChar(ch: Char; var txt: String):Boolean;
var
    count: Byte = 0;
    c: Char;
begin
    for c in txt do
        if c = ch then
            count += 1;
    if count > 1 then
        isMoreOneChar := True
    else
        isMoreOneChar := False;
end;

function isAlreadyExist(ch: char; var res:string): Boolean;
var
    c:Char;
begin
    for c in res do
        if ch = c then
            begin
                isAlreadyExist := True;
                exit;
            end;
    isAlreadyExist := False;
end;

var
    txt, res: string;
    c: Char;
begin
    ReadLn(txt);
    for c in txt do
        if isMoreOneChar(c,txt) and (c <> ' ') then
            if not isAlreadyExist(c,res) then
                res := res + c;
    writeln(res);
end.