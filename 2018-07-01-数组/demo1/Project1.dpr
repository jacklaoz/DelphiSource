program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

  {
    数组
      是什么
           按照一定编号存放了一堆类型相同数据的容器
      干什么用
        让我们在管理相同类型的数据时更为方便

      怎么用
        定义
          array[indexType1, ..., indexTypen] of baseType;
        注意事项
          1、数组在使用之前必须要声明长度(下标、元素总数)

  }
type
    MyArray = array[0..4] of Char;

var
    NameArray: MyArray;
    Indexs: Integer;
    Elem: Char;

var
    arrayss: array[0..4] of Integer;  
{数组元素遍历1}

procedure ListArray();
begin

    for Indexs := Low(NameArray) to High(NameArray) do begin
        Writeln(NameArray[Indexs]);
    end;
end;

begin
    NameArray[0] := 'a';
    NameArray[1] := 'x';
    NameArray[2] := 'c';
    NameArray[3] := 'z';
    NameArray[4] := 'v';
    
    Writeln(Length(NameArray));

    for Elem in NameArray do begin
        Writeln(Elem);
    end;

    Readln;
end.

