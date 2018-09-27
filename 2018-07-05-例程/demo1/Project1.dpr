program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

 {*------------------------------------------------------------------------------
   1、例程是什么
           Delphi中独有的称呼,其实例程只是将具有某一个功能的代码片段进行封装
           具体表现形式：

            1、过程

            2、函数

           过程和函数的区别在于有没有返回值

   2、例程的作用
        1、可以解决命名冲突的问题
        2、提高我们代码的重复利用率
        3、提高我们代码的可维护性

   3、怎么使用例程
        1、定义
        2、
 -------------------------------------------------------------------------------}
{传值}
procedure Add(A: Integer; B: Integer);
begin

    Writeln(A, B);
    A := 103;
end;

{*------------------------------------------------------------------------------
  函数的定义

  @return
-------------------------------------------------------------------------------}
{传址}
function Demo2(var A: Integer; var B: Integer): Integer;
begin

    Writeln(A, B);
    A := 101;
    Result := 0;
end;

{传递的参数个数不固定}
procedure Demo1(const Number: array of Integer);
begin

end;

{设置参数的默认值}
procedure Demo3(a: Integer; b: Integer = 100);
begin
    Writeln(a, ',', b);
end;

var
    X, Y: Integer;

const
    Age: Integer = 100;

begin

    X := 200;
    Y := 3;
    Demo2(X, Y);

    Writeln('----', X);

    Add(X, Y);
    Writeln('***', X);
    Readln;

end.

