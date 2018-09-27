unit DaoUnit;

interface

uses
  Vcl.Forms, Vcl.Dialogs, Winapi.Messages, System.Generics.Collections, Unit2;

type
  TDao = class
  public
    //添加，该方法调用时不需要创建对象
    class procedure Add(Student: TStudent);
    //查询
    class function ListStu(): TDictionary<string, TStudent>;

    //清空
    class procedure clear();
  end;

implementation

var
  //初始化容器类
  Students: TDictionary<string, TStudent>;

{ TDao }

class procedure TDao.Add(Student: TStudent);
begin
  if not Students.ContainsKey(Student.Id) then
  begin
    Students.Add(Student.Id, Student);
  end
  else
  begin
    ShowMessage('该信息已经存在');
  end;

end;

class procedure TDao.clear;
begin
   Students.Clear;
end;

class function TDao.ListStu: TDictionary<string, TStudent>;
begin
  Result := Students;
end;

initialization
  Students := TDictionary<string, TStudent>.Create();

end.

