unit Unit1;

interface

uses
  System.Generics.Collections, Unit2, DaoUnit, AddFormUnit, Vcl.StdCtrls, System.Classes,
  Vcl.Controls, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics, Vcl.Forms, Vcl.Dialogs;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
var
  AddForm: TFormAdd;
begin
  AddForm := TFormAdd.Create(Self);
  AddForm.Left := Self.Left + 70;
  AddForm.Top := Self.Top + 15;
  AddForm.ShowModal;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  Dictionary: TDictionary<string, TStudent>;
  Stu: TStudent;
begin
  Memo1.Lines.Clear;
  Dictionary := TDao.ListStu();
  for Stu in Dictionary.Values do
  begin
    Memo1.Lines.Add(Stu.Id + ',' + Stu.Name + ',' + Stu.Age.ToString);
  end;

end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  TDao.clear;
  Memo1.Lines.Clear;
end;

end.

