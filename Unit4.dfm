object formCreateNewInvoice: TformCreateNewInvoice
  Left = 0
  Top = 0
  Caption = 'Create New Invoice'
  ClientHeight = 429
  ClientWidth = 778
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
    Width = 762
    Height = 73
    Caption = 'Primatelj'
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 40
      Width = 208
      Height = 13
      Caption = 'Molim odaberite primatelja iz ponu'#273'ene liste'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 232
      Top = 32
      Width = 438
      Height = 21
      BiDiMode = bdLeftToRight
      Ctl3D = True
      KeyField = 'ID'
      ListField = 'naziv'
      ListSource = dPrimatelji
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 280
    Width = 762
    Height = 90
    Caption = 'Invoice value'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 119
      Height = 13
      Caption = 'Please input total value: '
    end
    object eValue: TEdit
      Left = 16
      Top = 51
      Width = 654
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 183
    Width = 762
    Height = 91
    Caption = 'Invoice description'
    TabOrder = 2
    object eDescription: TEdit
      Left = 16
      Top = 40
      Width = 654
      Height = 21
      Alignment = taCenter
      TabOrder = 0
    end
  end
  object btnCreateNewInvoice: TButton
    Left = 293
    Top = 376
    Width = 148
    Height = 25
    Hint = 'Insert'
    Caption = '&Insert'
    ImageIndex = 4
    TabOrder = 3
    OnClick = btnCreateNewInvoiceClick
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 87
    Width = 762
    Height = 90
    Caption = 'Vrsta dokumenta'
    TabOrder = 4
    object Label3: TLabel
      Left = 18
      Top = 56
      Width = 132
      Height = 13
      Caption = 'Odaberite vrstu dokumenta'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 232
      Top = 48
      Width = 438
      Height = 21
      BiDiMode = bdLeftToRight
      Ctl3D = True
      KeyField = 'naziv'
      ListField = 'naziv'
      ListSource = dVrstaDokumenta
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
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
    Left = 664
    Top = 384
  end
  object tPrimatelji: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'primatelji'
    Left = 504
    Top = 384
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
  object dPrimatelji: TDataSource
    DataSet = tPrimatelji
    Left = 540
    Top = 386
  end
  object tRacuni: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'racuni'
    Left = 584
    Top = 384
    object tRacuniID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tRacuniopis: TWideStringField
      FieldName = 'opis'
      Size = 50
    end
    object tRacuniiznos: TIntegerField
      FieldName = 'iznos'
    end
    object tRacunistatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object tRacuniprimateljID: TIntegerField
      FieldName = 'primateljID'
    end
  end
  object dRacuni: TDataSource
    DataSet = tRacuni
    Left = 624
    Top = 386
  end
  object tVrstaDokumenta: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vrste_dokumenta'
    Left = 728
    Top = 368
  end
  object dVrstaDokumenta: TDataSource
    DataSet = tVrstaDokumenta
    Left = 704
    Top = 312
  end
end
