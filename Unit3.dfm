object Form3: TForm3
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  Caption = 'Form3'
  ClientHeight = 702
  ClientWidth = 1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 2
    Top = 8
    Width = 1073
    Height = 345
    DataSource = dRacuniJoin
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opis'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iznos'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 120
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresa'
        Width = 128
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 359
    Width = 240
    Height = 25
    DataSource = dRacuniJoin
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 390
    Width = 1067
    Height = 315
    Caption = 'GroupBox1'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 19
      Height = 13
      Caption = 'opis'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 24
      Height = 13
      Caption = 'iznos'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 30
      Height = 13
      Caption = 'status'
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 76
      Height = 13
      Caption = 'Naziv primatelja'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 176
      Width = 68
      Height = 13
      Caption = 'OIB primatelja'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 216
      Width = 84
      Height = 13
      Caption = 'Adresa primatelja'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 512
      Height = 21
      DataField = 'opis'
      DataSource = dRacuniJoin
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 512
      Height = 21
      DataField = 'iznos'
      DataSource = dRacuniJoin
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 152
      Width = 512
      Height = 21
      DataField = 'naziv'
      DataSource = dRacuniJoin
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 192
      Width = 512
      Height = 21
      DataField = 'oib'
      DataSource = dRacuniJoin
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 232
      Width = 512
      Height = 21
      DataField = 'adresa'
      DataSource = dRacuniJoin
      TabOrder = 4
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\sqlite\Database1' +
      '.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 768
    Top = 97
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = dStatusi
    Parameters = <>
    SQL.Strings = (
      
        'SELECT racuni.ID, racuni.opis, racuni.iznos, racuni.status, prim' +
        'atelji.naziv, primatelji.oib, primatelji.adresa'
      
        'FROM primatelji INNER JOIN racuni ON primatelji.[ID] = racuni.[p' +
        'rimateljID];')
    Left = 688
    Top = 200
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery1opis: TWideStringField
      FieldName = 'opis'
      Size = 50
    end
    object ADOQuery1iznos: TIntegerField
      FieldName = 'iznos'
    end
    object ADOQuery1status: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object ADOQuery1naziv: TWideStringField
      DisplayLabel = 'Naziv primatelja'
      FieldName = 'naziv'
      Size = 50
    end
    object ADOQuery1oib: TWideStringField
      DisplayLabel = 'OIB primatelja'
      FieldName = 'oib'
      Size = 255
    end
    object ADOQuery1adresa: TWideStringField
      DisplayLabel = 'Adresa primatelja'
      FieldName = 'adresa'
      Size = 120
    end
  end
  object dRacuniJoin: TDataSource
    DataSet = ADOQuery1
    Left = 656
    Top = 88
  end
  object dStatusi: TDataSource
    DataSet = tStatusi
    Left = 780
    Top = 160
  end
  object tStatusi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'statusi'
    Left = 896
    Top = 176
    object tStatusistatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object tStatusiID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
end
