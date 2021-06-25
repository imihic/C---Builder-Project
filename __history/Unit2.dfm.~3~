object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 690
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 398
    Height = 257
    Caption = 'Filter results'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 412
    Top = 16
    Width = 677
    Height = 249
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 264
    object Menu1: TMenuItem
      Caption = 'File'
      object NeweInvoice1: TMenuItem
        Caption = 'New Invoice'
      end
      object Import1: TMenuItem
        Caption = 'Import Invoice'
        object fromXML1: TMenuItem
          Caption = 'From XML'
        end
        object FromJson1: TMenuItem
          Caption = 'From Json'
        end
        object fromeInv1: TMenuItem
          Caption = 'from .inv'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Options1: TMenuItem
      Caption = 'Options'
      object ChangeLanguage1: TMenuItem
        Caption = 'Change Language'
        object Englush1: TMenuItem
          Caption = 'English'
        end
        object Croatian1: TMenuItem
          Caption = 'Croatian'
        end
      end
    end
  end
  object SQLiteConnection: TSQLConnection
    DriverName = 'Sqlite'
    Params.Strings = (
      'DriverName=Sqlite'
      'Database=C:\sqlite\ntp.db')
    Connected = True
    Left = 264
    Top = 344
  end
  object racuni: TSQLTable
    ObjectView = True
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLiteConnection
    TableName = 'racuni'
    Left = 152
    Top = 352
  end
  object DRacuni: TDataSource
    DataSet = racuni
    Left = 256
    Top = 520
  end
  object SQLQuery1: TSQLQuery
    DataSource = DRacuni
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLiteConnection
    Left = 376
    Top = 392
  end
end
