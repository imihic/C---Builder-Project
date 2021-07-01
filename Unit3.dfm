object Form3: TForm3
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  Caption = 'Form3'
  ClientHeight = 609
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
    Left = 8
    Top = 8
    Width = 1067
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
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 8
    Top = 464
    Width = 1067
    Height = 95
    DataSource = dRacuniJoin
    ListSource = dPrimatelji
    TabOrder = 1
  end
  object tPrimatelji: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'primatelji'
    Left = 200
    Top = 385
    object tPrimateljiID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tPrimateljinaziv: TWideStringField
      FieldName = 'naziv'
      Size = 50
    end
    object tPrimateljioib: TWideStringField
      FieldName = 'oib'
      Size = 255
    end
    object tPrimateljiadresa: TWideStringField
      FieldName = 'adresa'
      Size = 255
    end
  end
  object dRacuni: TDataSource
    DataSet = tRacuni
    Left = 376
    Top = 385
  end
  object tRacuni: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    MasterSource = dPrimatelji
    TableName = 'racuni'
    Left = 280
    Top = 385
    object tRacuniID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tRacuniopis: TWideStringField
      FieldName = 'opis'
      Size = 50
    end
    object tRacuniiznos: TBCDField
      FieldName = 'iznos'
      Precision = 19
    end
    object tRacunistatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object tRacuniprimateljID: TIntegerField
      FieldName = 'primateljID'
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
    Left = 88
    Top = 385
  end
  object dPrimatelji: TDataSource
    DataSet = tPrimatelji
    Left = 148
    Top = 473
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = dRacuni
    Parameters = <>
    SQL.Strings = (
      'SELECT racuni.id,'
      '       racuni.opis,'
      '       racuni.iznos,'
      '       racuni.status,'
      '       primatelji.naziv as '#39'Naziv primatelja'#39','
      '       primatelji.oib as '#39'OIB primatelja'#39
      
        '  FROM racuni INNER JOIN primatelji on racuni.primateljId = prim' +
        'atelji.id;')
    Left = 496
    Top = 400
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1opis: TWideStringField
      FieldName = 'opis'
      Size = 50
    end
    object ADOQuery1iznos: TBCDField
      FieldName = 'iznos'
      Precision = 19
    end
    object ADOQuery1status: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object ADOQuery1Nazivprimatelja: TWideStringField
      FieldName = #39'Naziv primatelja'#39
      Size = 50
    end
    object ADOQuery1OIBprimatelja: TWideStringField
      FieldName = #39'OIB primatelja'#39
      Size = 255
    end
  end
  object dRacuniJoin: TDataSource
    DataSet = ADOQuery1
    Left = 616
    Top = 408
  end
end
