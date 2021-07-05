object eInvoice: TeInvoice
  Left = 0
  Top = 0
  Caption = 'eInvoice'
  ClientHeight = 664
  ClientWidth = 1099
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
    Height = 169
    Caption = 'Primatelji'
    TabOrder = 0
    object filterLabelPrimateljNaziv: TLabel
      Left = 56
      Top = 32
      Width = 80
      Height = 13
      Caption = 'Naziv primatelja:'
    end
    object filterLabelOIBPrimatelja: TLabel
      Left = 56
      Top = 64
      Width = 72
      Height = 13
      Caption = 'OIB primatelja:'
    end
    object filterLabelAdresaPrimatelja: TLabel
      Left = 56
      Top = 99
      Width = 88
      Height = 13
      Caption = 'Adresa primatelja:'
    end
    object eNazivPrimateljaFilter: TEdit
      Left = 170
      Top = 29
      Width = 151
      Height = 21
      TabOrder = 0
    end
    object eOIBPrimateljaFilter: TEdit
      Left = 170
      Top = 61
      Width = 151
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object eAdresaPrimateljaFilter: TEdit
      Left = 170
      Top = 96
      Width = 151
      Height = 21
      TabOrder = 2
    end
    object btnFilter: TButton
      Left = 88
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Filtriraj'
      TabOrder = 3
      OnClick = btnFilterClick
    end
    object btnClear: TButton
      Left = 184
      Top = 136
      Width = 75
      Height = 25
      Caption = 'O'#269'isti polja'
      TabOrder = 4
      OnClick = btnClearClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 412
    Top = 8
    Width = 677
    Height = 285
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
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naziv'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oib'
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresa'
        Width = 329
        Visible = True
      end>
  end
  object DBNavigatorPrimatelji: TDBNavigator
    Left = 412
    Top = 299
    Width = 240
    Height = 25
    DataSource = dPrimatelji
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 183
    Width = 398
    Height = 162
    Caption = 'Uredi aktivnog primatelja'
    TabOrder = 3
    object Label1: TLabel
      Left = 15
      Top = 32
      Width = 25
      Height = 13
      Caption = 'naziv'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 15
      Top = 72
      Width = 14
      Height = 13
      Caption = 'oib'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 15
      Top = 112
      Width = 33
      Height = 13
      Caption = 'adresa'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 48
      Width = 360
      Height = 21
      DataField = 'naziv'
      DataSource = dPrimatelji
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 88
      Width = 360
      Height = 21
      DataField = 'oib'
      DataSource = dPrimatelji
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 15
      Top = 128
      Width = 360
      Height = 21
      DataField = 'adresa'
      DataSource = dPrimatelji
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGrid
    Left = 400
    Top = 330
    Width = 689
    Height = 298
    DataSource = dRacuni
    TabOrder = 4
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
        FieldName = 'opis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iznos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'primateljID'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 412
    Top = 634
    Width = 216
    Height = 25
    DataSource = dRacuni
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 5
  end
  object Button1: TButton
    Left = 634
    Top = 634
    Width = 83
    Height = 25
    Caption = 'Potpi'#353'i eRa'#269'un'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 895
    Top = 634
    Width = 97
    Height = 25
    Caption = 'Po'#353'alji na E-Mail'
    TabOrder = 7
  end
  object Button3: TButton
    Left = 998
    Top = 634
    Width = 93
    Height = 25
    Caption = 'Button1'
    TabOrder = 8
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 351
    Width = 398
    Height = 122
    Caption = 'GroupBox3'
    TabOrder = 9
    object Label4: TLabel
      Left = 56
      Top = 24
      Width = 80
      Height = 13
      Caption = 'Naziv primatelja:'
    end
    object Label5: TLabel
      Left = 56
      Top = 56
      Width = 72
      Height = 13
      Caption = 'OIB primatelja:'
    end
    object Edit1: TEdit
      Left = 170
      Top = 21
      Width = 151
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 170
      Top = 53
      Width = 151
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object Button4: TButton
      Left = 69
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Filtriraj'
      TabOrder = 2
      OnClick = btnFilterClick
    end
    object Button5: TButton
      Left = 170
      Top = 94
      Width = 75
      Height = 25
      Caption = 'O'#269'isti polja'
      TabOrder = 3
      OnClick = btnClearClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 479
    Width = 398
    Height = 178
    Caption = 'GroupBox4'
    TabOrder = 10
    object Label6: TLabel
      Left = 15
      Top = 24
      Width = 19
      Height = 13
      Caption = 'opis'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 15
      Top = 70
      Width = 24
      Height = 13
      Caption = 'iznos'
      FocusControl = DBEdit5
    end
    object DBEdit4: TDBEdit
      Left = 15
      Top = 43
      Width = 360
      Height = 21
      DataField = 'opis'
      DataSource = dRacuni
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 15
      Top = 89
      Width = 360
      Height = 21
      DataField = 'iznos'
      DataSource = dRacuni
      TabOrder = 1
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\sq' +
      'lite\Database1.mdb;Mode=Share Deny None;Persist Security Info=Fa' +
      'lse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet ' +
      'OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Dat' +
      'abase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLE' +
      'DB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=""' +
      ';Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Databa' +
      'se=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:' +
      'Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 584
    Top = 120
  end
  object tPrimatelji: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'primatelji'
    Left = 536
    Top = 120
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
    Left = 636
    Top = 112
  end
  object MainMenu1: TMainMenu
    Left = 688
    Top = 120
    object menuFile: TMenuItem
      Caption = 'File'
      object submenuNewInvoice: TMenuItem
        Caption = 'New Invoice'
        OnClick = submenuNewInvoiceClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object submenuImport: TMenuItem
        Caption = 'Import'
        object fromXML1: TMenuItem
          Caption = 'from XML'
        end
        object fromeInvoice1: TMenuItem
          Caption = 'from .inv'
        end
      end
      object Export1: TMenuItem
        Caption = 'Export'
        object submenuExportToXML: TMenuItem
          Caption = 'to XML'
        end
        object submenuExportToInv: TMenuItem
          Caption = 'to .inv'
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object submenuQuit: TMenuItem
        Caption = 'Quit'
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object submenuGotoUsersmenu: TMenuItem
        AutoCheck = True
        Caption = 'Go to Users Menu'
      end
      object GotoInvoiceMenu1: TMenuItem
        Caption = 'Go to Invoice Menu'
        OnClick = GotoInvoiceMenu1Click
      end
    end
    object Options1: TMenuItem
      Caption = 'Options'
      object ChangeLanguage1: TMenuItem
        Caption = 'Change Language'
        object Englisj1: TMenuItem
          AutoCheck = True
          Caption = 'English'
          Checked = True
        end
        object Croatian1: TMenuItem
          AutoCheck = True
          Caption = 'Croatian'
        end
      end
      object Settings1: TMenuItem
        Caption = 'Settings'
        OnClick = Settings1Click
      end
    end
    object menuTools: TMenuItem
      Caption = 'Tools'
      object submenuGenerateReport: TMenuItem
        Caption = 'Generate report'
      end
    end
  end
  object dRacuni: TDataSource
    DataSet = tRacuni
    Left = 872
    Top = 146
  end
  object tRacuni: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'primateljID'
    MasterFields = 'ID'
    MasterSource = dPrimatelji
    TableName = 'racuni'
    Left = 768
    Top = 128
    object tRacuniID: TAutoIncField
      DisplayWidth = 4
      FieldName = 'ID'
      ReadOnly = True
    end
    object tRacuniopis: TWideStringField
      DisplayWidth = 27
      FieldName = 'opis'
      Size = 50
    end
    object tRacuniiznos: TIntegerField
      DisplayWidth = 10
      FieldName = 'iznos'
    end
    object tRacunistatus: TWideStringField
      DisplayWidth = 255
      FieldName = 'status'
      Size = 255
    end
    object tRacuniprimateljID: TIntegerField
      DisplayWidth = 10
      FieldName = 'primateljID'
    end
  end
end
