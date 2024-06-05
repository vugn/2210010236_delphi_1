object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 635
  Top = 211
  Height = 418
  Width = 708
  object Zdb_penjualan: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\Projects\libmysql.dll'
    Left = 72
    Top = 104
  end
  object Zkategori: TZQuery
    Connection = Zdb_penjualan
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 168
    Top = 104
  end
  object Zsatuan: TZQuery
    Connection = Zdb_penjualan
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 248
    Top = 104
  end
  object Zuser: TZQuery
    Connection = Zdb_penjualan
    Active = True
    SQL.Strings = (
      'Select * from user')
    Params = <>
    Left = 336
    Top = 104
  end
  object Zsupplier: TZQuery
    Connection = Zdb_penjualan
    Active = True
    SQL.Strings = (
      'Select * from supplier')
    Params = <>
    Left = 432
    Top = 104
  end
  object Zbarang: TZQuery
    Connection = Zdb_penjualan
    Active = True
    SQL.Strings = (
      'Select * from barang')
    Params = <>
    Left = 520
    Top = 104
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 168
    Top = 184
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 256
    Top = 184
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 344
    Top = 184
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 440
    Top = 184
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 528
    Top = 184
  end
end
