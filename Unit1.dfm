object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Magazine Subscription Tracker'
  ClientHeight = 364
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 225
    Caption = 'Subscriber Info'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 65
      Height = 17
      Caption = 'Full Name:'
    end
    object Label2: TLabel
      Left = 8
      Top = 62
      Width = 65
      Height = 17
      Caption = 'E-Mail:'
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 23
      Height = 13
      Caption = 'Age:'
    end
    object Label4: TLabel
      Left = 8
      Top = 142
      Width = 35
      Height = 13
      Caption = 'Gender'
    end
    object Label5: TLabel
      Left = 8
      Top = 174
      Width = 50
      Height = 13
      Caption = 'Start Date'
    end
    object EFullName: TEdit
      Left = 98
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EEMail: TEdit
      Left = 98
      Top = 58
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EAge: TEdit
      Left = 98
      Top = 101
      Width = 33
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '0'
    end
    object UpDown1: TUpDown
      Left = 131
      Top = 101
      Width = 16
      Height = 21
      Associate = EAge
      TabOrder = 3
    end
    object cmbGender: TComboBox
      Left = 98
      Top = 139
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        'Male'
        'Female')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 98
      Top = 174
      Width = 186
      Height = 21
      Date = 44354.000000000000000000
      Time = 0.770766122688655700
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 352
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Click Me'
    TabOrder = 1
    OnClick = Button1Click
  end
end
