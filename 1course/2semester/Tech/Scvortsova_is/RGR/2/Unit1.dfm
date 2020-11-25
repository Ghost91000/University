object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 128
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 30
    Width = 99
    Height = 13
    Caption = #1043#1083#1072#1074#1085#1072#1103' '#1076#1080#1072#1075#1086#1085#1072#1083#1100
  end
  object Label2: TLabel
    Left = 64
    Top = 8
    Width = 94
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072
  end
  object Edit10: TEdit
    Left = 240
    Top = 53
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 80
    Width = 97
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 27
    Width = 201
    Height = 81
    ColCount = 3
    Ctl3D = True
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    ParentCtl3D = False
    TabOrder = 2
  end
end
