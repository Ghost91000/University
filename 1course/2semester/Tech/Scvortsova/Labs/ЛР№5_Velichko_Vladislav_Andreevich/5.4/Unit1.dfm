object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 410
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 24
    Width = 235
    Height = 19
    Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 64
    Width = 561
    Height = 113
    ColCount = 6
    FixedCols = 0
    TabOrder = 0
    Visible = False
  end
  object Button1: TButton
    Left = 16
    Top = 192
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082
    TabOrder = 1
  end
  object Button2: TButton
    Left = 160
    Top = 192
    Width = 121
    Height = 25
    Caption = #1048#1089#1087#1088#1072#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 298
    Top = 192
    Width = 121
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 440
    Top = 192
    Width = 121
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
    TabOrder = 4
    OnClick = Button4Click
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 240
    Width = 563
    Height = 113
    ColCount = 6
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 16
    Top = 368
    Width = 209
    Height = 21
    TabOrder = 6
  end
  object Button5: TButton
    Left = 242
    Top = 366
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 486
    Top = 366
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 8
    OnClick = Button6Click
  end
end
