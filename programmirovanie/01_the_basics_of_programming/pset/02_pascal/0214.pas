program z;
// Напишите программу, выдающую состоящую из «звездочек» букву Z с 
// горизонтальной поперечиной, имеющую заданную (введенную 
// пользователем) высоту (и такую же ширину). Например, для введеного 
// числа 7 результат должен быть таким:
// *******
//      *
//     *
// *******
//   *
//  *
// *******

const
    CH = '*';
    CH_SPACE = ' ';

function GetHeight: Integer;
var
    h: integer;
begin
    repeat
        Write('Input Height Z, odd: ');
        ReadLn(h);
    until (h > 0) and (h mod 2 = 1);
    GetHeight := h;
    
end;

procedure printLine(h: integer; k: Integer);
var
    i: integer;
begin
    if k = -1 then 
    begin
        for i := 1 to h do
            write(CH);
    end
    else
    begin
        for i := 1 to h do
            if i = k then
                Write(CH)
            else
                write(CH_SPACE);
    end;
    WriteLn()
end;

var
    h,i: Integer;
begin
    h := GetHeight;
    for i := h downto 1 do
    begin
        if (i = 1) or (i = h) or (i = (h div 2) + 1) then
            printLine(h,-1)
        else
            printLine(h,i)
    end;
end.
