object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 310
  ClientWidth = 568
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
    Left = 16
    Top = 24
    Width = 530
    Height = 19
    Caption = #1053#1072#1093#1086#1078#1076#1077#1085#1080#1077' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1080#1083#1080' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1095#1080#1089#1083#1072' '#1080#1079' '#1076#1074#1091#1093' '#1079#1072#1076#1072#1085#1085#1099#1093
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 39
    Height = 13
    Caption = #1063#1080#1089#1083#1086' 1'
  end
  object Label3: TLabel
    Left = 48
    Top = 104
    Width = 39
    Height = 13
    Caption = #1063#1080#1089#1083#1086' 2'
  end
  object Label4: TLabel
    Left = 323
    Top = 80
    Width = 77
    Height = 13
  end
  object Label5: TLabel
    Left = 427
    Top = 80
    Width = 77
    Height = 13
  end
  object Edit1: TEdit
    Left = 120
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 56
    Top = 160
    Width = 113
    Height = 17
    Caption = #1053#1072#1081#1090#1080' max '#1095#1080#1089#1083#1086
    TabOrder = 2
  end
  object RadioButton2: TRadioButton
    Left = 56
    Top = 192
    Width = 113
    Height = 17
    Caption = #1053#1072#1081#1090#1080' min '#1095#1080#1089#1083#1086
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 232
    Top = 160
    Width = 137
    Height = 105
    Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
    Items.Strings = (
      'Times New Roman'
      'Calibri'
      'MS SansSerif')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 399
    Top = 160
    Width = 137
    Height = 105
    Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
    Items.Strings = (
      #1050#1088#1072#1089#1085#1099#1081' '
      #1057#1080#1085#1080#1081
      #1063#1077#1088#1085#1099#1081' '
      #1047#1077#1083#1077#1085#1099#1081)
    TabOrder = 5
    OnClick = RadioGroup2Click
  end
  object Button1: TButton
    Left = 33
    Top = 240
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 240
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 7
    OnClick = Button2Click
  end
end
