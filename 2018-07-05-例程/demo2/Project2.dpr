program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{返回值:通过Result}
function Add(Number1: Integer; Number2: Integer): Integer; overload;
begin

    Result := Number1 + Number2;
    Exit;

end;

{函数重载：使用overload关键字标识，函数名相同，参数列表不同}
function Add(Num1: Double; Num2: Double): Double; overload;
begin

    Result := Num1 + Num2;
    Exit;
end;


{前置声明：提前声明}
function DivFun(): Integer; forward;

{返回值:通过引用获取运算结果}
function Sub(Num1: Integer; Num2: Integer; var sum: Integer): Integer;
begin
    DivFun();
    sum := Num1 - Num2;
    Exit;
end;

function DivFun(): Integer;
begin

end;
{返回值：Out}

function Mul(Num1: Integer; Num2: Integer; out sum: Integer): Integer;
begin
    sum := Num1 * Num2;
    Exit;
end;

{返回值:通过函数名称}
function GetResultByFunName(): Integer;
begin
    GetResultByFunName := 1 + 2;
end;

var
    sum: Integer;

begin

    Writeln(Add(100.3, 200));
    Readln;

end.

