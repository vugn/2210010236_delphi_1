object Form6: TForm6
  Left = 297
  Top = 88
  Width = 1044
  Height = 645
  Caption = 'Barang'
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
    Left = 64
    Top = 56
    Width = 61
    Height = 28
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 344
    Width = 76
    Height = 21
    Caption = 'BARCODE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 392
    Width = 97
    Height = 21
    Caption = 'HARGA JUAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 416
    Width = 94
    Height = 21
    Caption = 'HARGA BELI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 440
    Width = 41
    Height = 21
    Caption = 'STOK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 464
    Width = 105
    Height = 21
    Caption = 'KATRGORI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 488
    Width = 86
    Height = 21
    Caption = 'SATUAN ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 512
    Width = 64
    Height = 21
    Caption = 'USER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 368
    Width = 45
    Height = 21
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 536
    Width = 96
    Height = 21
    Caption = 'SUPPLIER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 56
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 136
    Top = 112
    Width = 113
    Height = 49
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 112
    Width = 97
    Height = 49
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 112
    Width = 89
    Height = 49
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object el1: TEdit
    Left = 144
    Top = 344
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 504
    Top = 48
    Width = 89
    Height = 41
    Caption = 'CARI'
    TabOrder = 5
  end
  object tablename: TDBGrid
    Left = 104
    Top = 176
    Width = 593
    Height = 153
    DataSource = DataModule4.dsbarang
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tablenameCellClick
  end
  object el3: TEdit
    Left = 144
    Top = 392
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object el4: TEdit
    Left = 144
    Top = 416
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object el5: TEdit
    Left = 144
    Top = 440
    Width = 321
    Height = 21
    TabOrder = 9
  end
  object el6: TEdit
    Left = 144
    Top = 464
    Width = 321
    Height = 21
    TabOrder = 10
  end
  object el7: TEdit
    Left = 144
    Top = 488
    Width = 321
    Height = 21
    TabOrder = 11
  end
  object el8: TEdit
    Left = 144
    Top = 512
    Width = 321
    Height = 21
    TabOrder = 12
  end
  object el2: TEdit
    Left = 144
    Top = 368
    Width = 321
    Height = 21
    TabOrder = 13
  end
  object el9: TEdit
    Left = 144
    Top = 536
    Width = 321
    Height = 21
    TabOrder = 14
  end
end
