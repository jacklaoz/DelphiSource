program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

var
    NumberArr: array of Integer;

var
    ax, bx, bt: Integer;

var
    I, J: Integer;

procedure Demo1();
begin
    ax := 10;
    bx := 30;

    //����ֵ�Ļ���
    bt := ax;
    ax := bx;
    bx := bt;
end;

begin
    NumberArr := [30, 2, 1, 5];
    //����
    for I := Low(NumberArr) to High(NumberArr) do begin

        for J := Low(NumberArr) to High(NumberArr) do begin

            if (NumberArr[I] < NumberArr[J]) then begin
                bt := NumberArr[I];
                NumberArr[I] := NumberArr[J];
                NumberArr[J] := bt;
            end;
        end;

    end;

    Writeln(NumberArr[0], ',', NumberArr[1], ',', NumberArr[2]);
    Readln;

end.

