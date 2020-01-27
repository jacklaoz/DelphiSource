unit MainFrm;

interface

uses
  LoggerPro, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    //������־�ֶ�
    FLog: ILogWriter;
  public
    { Public declarations }
    //����һ�����ԣ�������Ϊ�˷�ֱֹ�ӷ������ǵ��ֶ�
    property Log: ILogWriter read FLog write FLog;
  end;

var
  Form1: TForm1;

implementation

uses
  UnitService, LoggerPro.VCLListViewAppender;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  Log.Info('����һ����ʾ��Ϣ', '��ܰ��ʾ');

end;

//ͼƬ���Ʋ���

procedure TForm1.FormCreate(Sender: TObject);
begin
  FLog := BuildLogWriter([TVCLListViewAppender.Create(ListView1)]);
   //���Ʊ���
  TGameSevice.Create(Image1.Canvas.Handle).DrawBackground('D:\DelphiSource\2020-01-07-Game\bin\resources\background\bg011.jpg',Image1.Width, Image1.Height);


end;


//���¼�����ʱ�Ὣ���̵ļ���ֵ����������
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  case Key of
    VK_UP:
      begin
        Log.Info('��', 'VK_UP');
      end;

    VK_DOWN:
      begin
        Log.Info('��', 'VK_DOWN');
      end;

    VK_LEFT:
      begin
        Log.Info('��', 'VK_LEFT');
      end;
    VK_RIGHT:
      begin
        Log.Info('��', 'VK_RIGHT');
      end;

    VK_SPACE:
      begin
        Log.Info('�ո�', 'VK_SPACE');
      end;
  end;
end;

end.
