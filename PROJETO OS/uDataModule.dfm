object DM: TDM
  OldCreateOrder = False
  Height = 572
  Width = 857
  object FDTrans: TFDTransaction
    Connection = FDBanco
    Left = 144
    Top = 64
  end
  object FDBanco: TFDConnection
    Params.Strings = (
      'Database=C:\BD-PRATICA\PROJETO_OS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1251'
      'DriverID=FB')
    Connected = True
    Transaction = FDTrans
    Left = 64
    Top = 64
  end
  object qFornecedores: TFDQuery
    Active = True
    Connection = FDBanco
    SQL.Strings = (
      'select * from fornecedores;')
    Left = 280
    Top = 304
  end
  object DSFornecedores: TDataSource
    DataSet = qFornecedores
    Left = 360
    Top = 304
  end
  object qPaises: TFDQuery
    Active = True
    Connection = FDBanco
    Transaction = FDTrans
    SQL.Strings = (
      'select * from paises')
    Left = 280
    Top = 64
  end
  object DSPaises: TDataSource
    DataSet = qPaises
    Left = 360
    Top = 64
  end
  object qEstados: TFDQuery
    Active = True
    Connection = FDBanco
    Transaction = FDTrans
    SQL.Strings = (
      'select * from estados')
    Left = 280
    Top = 120
  end
  object DSEstados: TDataSource
    DataSet = qEstados
    Left = 360
    Top = 120
  end
  object qCidades: TFDQuery
    Active = True
    Connection = FDBanco
    Transaction = FDTrans
    SQL.Strings = (
      'select * from cidades')
    Left = 280
    Top = 184
  end
  object DSCidades: TDataSource
    DataSet = qCidades
    Left = 360
    Top = 184
  end
  object qClientes: TFDQuery
    Active = True
    Connection = FDBanco
    SQL.Strings = (
      'select * from clientes;')
    Left = 280
    Top = 248
  end
  object DSClientes: TDataSource
    DataSet = qClientes
    Left = 360
    Top = 248
  end
  object qFuncionarios: TFDQuery
    Connection = FDBanco
    SQL.Strings = (
      'select * from funcionarios')
    Left = 280
    Top = 368
  end
  object DSFuncionarios: TDataSource
    DataSet = qFuncionarios
    Left = 360
    Top = 368
  end
  object qCargos: TFDQuery
    Connection = FDBanco
    SQL.Strings = (
      'select * from cargos;')
    Left = 280
    Top = 432
  end
  object DSCargos: TDataSource
    DataSet = qCargos
    Left = 360
    Top = 432
  end
end
