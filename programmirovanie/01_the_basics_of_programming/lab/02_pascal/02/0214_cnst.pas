program cnst;
const
    MESSAGE: string = 'Hello World!';   {типизированная константа, может изменяться в рантайме, больше похожа на инициализированную переменную, чем на констатну}
    COUNT = 20;                         {нетипизированная константа, тип выводится во время компиляции}
var
    i: word;
begin
    for i := 1 to COUNT do
        writeln(i:2, #9, MESSAGE);

    {COUNT := 21; Error: Variable identifier expected}

    MESSAGE := 'Bye, Bye';
    writeln(MESSAGE);
end.