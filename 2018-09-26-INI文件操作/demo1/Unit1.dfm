object Form1: TForm1
  Left = 373
  Top = 173
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ini'#37197#32622#25991#20214#25805#20316
  ClientHeight = 416
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = #22995#21517#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 139
    Width = 36
    Height = 13
    Caption = #24615#21035#65306
  end
  object Label3: TLabel
    Left = 8
    Top = 59
    Width = 36
    Height = 13
    Caption = #24180#40836#65306
  end
  object Label4: TLabel
    Left = 8
    Top = 203
    Width = 36
    Height = 13
    Caption = #29233#22909#65306
  end
  object Label5: TLabel
    Left = 8
    Top = 318
    Width = 36
    Height = 13
    Caption = #20303#22336#65306
  end
  object edtName: TEdit
    Left = 64
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object rgSex: TRadioGroup
    Left = 64
    Top = 115
    Width = 177
    Height = 57
    Caption = 'rgSex'
    TabOrder = 1
    Visible = False
  end
  object rbMan: TRadioButton
    Left = 72
    Top = 138
    Width = 41
    Height = 17
    Caption = #30007
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbWoman: TRadioButton
    Left = 152
    Top = 138
    Width = 41
    Height = 17
    Caption = #22899
    TabOrder = 3
  end
  object edtAge: TEdit
    Left = 64
    Top = 56
    Width = 177
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 203
    Width = 185
    Height = 73
    TabOrder = 5
    object chk1: TCheckBox
      Left = 16
      Top = 24
      Width = 41
      Height = 17
      Caption = #38065
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 96
      Top = 24
      Width = 97
      Height = 17
      Caption = #32534#31243
      TabOrder = 1
    end
  end
  object cbbAddress: TComboBox
    Left = 56
    Top = 315
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = #21271#20140#28023#28096
    Items.Strings = (
      #21271#20140#28023#28096
      #27827#21271#20445#23450
      #27827#21335#37073#24030)
  end
  object btnSave: TButton
    Left = 96
    Top = 367
    Width = 75
    Height = 25
    Caption = #20445#23384#35774#32622
    TabOrder = 7
    OnClick = btnSaveClick
  end
end
