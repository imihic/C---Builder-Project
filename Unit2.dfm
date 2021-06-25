object eInvoice: TeInvoice
  Left = 0
  Top = 0
  Caption = 'eInvoice'
  ClientHeight = 710
  ClientWidth = 1109
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
    Width = 398
    Height = 257
    Caption = 'Primatelji'
    TabOrder = 0
    object filterLabelPrimateljNaziv: TLabel
      Left = 56
      Top = 40
      Width = 80
      Height = 13
      Caption = 'Naziv primatelja:'
    end
    object filterLabelOIBPrimatelja: TLabel
      Left = 56
      Top = 72
      Width = 72
      Height = 13
      Caption = 'OIB primatelja:'
    end
    object filterLabelAdresaPrimatelja: TLabel
      Left = 56
      Top = 107
      Width = 88
      Height = 13
      Caption = 'Adresa primatelja:'
    end
    object eNazivPrimateljaFilter: TEdit
      Left = 170
      Top = 37
      Width = 151
      Height = 21
      TabOrder = 0
    end
    object eOIBPrimateljaFilter: TEdit
      Left = 170
      Top = 69
      Width = 151
      Height = 21
      TabOrder = 1
    end
    object eAdresaPrimateljaFilter: TEdit
      Left = 170
      Top = 104
      Width = 151
      Height = 21
      TabOrder = 2
    end
    object btnFilter: TButton
      Left = 96
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Filtriraj'
      TabOrder = 3
    end
    object btnClear: TButton
      Left = 192
      Top = 168
      Width = 75
      Height = 25
      Caption = 'O'#269'isti polja'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 412
    Top = 16
    Width = 677
    Height = 249
    DataSource = dPrimatelji
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naziv'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oib'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresa'
        Width = 256
        Visible = True
      end>
  end
  object DBNavigatorPrimatelji: TDBNavigator
    Left = 412
    Top = 271
    Width = 240
    Height = 25
    DataSource = dPrimatelji
    TabOrder = 2
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\sqlite\Database1' +
      '.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 456
  end
  object tPrimatelji: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'primatelji'
    Left = 200
    Top = 440
  end
  object tRacuni: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'racuni'
    Left = 280
    Top = 448
  end
  object dPrimatelji: TDataSource
    DataSet = tPrimatelji
    Left = 84
    Top = 568
  end
  object dRacuni: TDataSource
    DataSet = tRacuni
    Left = 416
    Top = 576
  end
end
