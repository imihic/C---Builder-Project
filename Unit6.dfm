object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Import from .xml'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 231
    Width = 97
    Height = 25
    Caption = 'Open File'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 111
    Top = 231
    Width = 97
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object richEditXML: TRichEdit
    Left = 8
    Top = 8
    Width = 619
    Height = 217
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'richEditXML')
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
    Zoom = 100
  end
  object XMLDocument1: TXMLDocument
    Active = True
    FileName = 
      'C:\Users\imihic\Documents\Embarcadero\Studio\Projects\importInvo' +
      'ice.xml'
    Left = 360
    Top = 240
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog1: TOpenDialog
    Left = 456
    Top = 256
  end
end
