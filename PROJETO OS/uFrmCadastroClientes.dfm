inherited FrmCadastroClientes: TFrmCadastroClientes
  Caption = 'Cadastro de Clientes'
  ClientWidth = 735
  ExplicitWidth = 751
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblNumero: TLabel
    Left = 470
    ExplicitLeft = 470
  end
  inherited lblCodCidade: TLabel
    Left = 26
    Top = 179
    ExplicitLeft = 26
    ExplicitTop = 179
  end
  object lblNome: TLabel [10]
    Left = 80
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object lblDataNasc: TLabel [11]
    Left = 527
    Top = 296
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  object lblRG: TLabel [12]
    Left = 24
    Top = 296
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object lblCPF: TLabel [13]
    Left = 262
    Top = 296
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lblTelefone: TLabel [14]
    Left = 19
    Top = 242
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lblCelular: TLabel [15]
    Left = 222
    Top = 242
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lblEmail: TLabel [17]
    Left = 417
    Top = 242
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  inherited edtEndereco: TEdit
    Left = 19
    Width = 423
    ExplicitLeft = 19
    ExplicitWidth = 423
  end
  inherited edtNumero: TEdit
    Left = 470
    Width = 148
    ExplicitLeft = 470
    ExplicitWidth = 148
  end
  inherited edtBairro: TEdit
    Left = 470
    ExplicitLeft = 470
  end
  object edtNome: TEdit [31]
    Left = 80
    Top = 40
    Width = 619
    Height = 21
    TabOrder = 13
  end
  object edtDataNasc: TEdit [32]
    Left = 511
    Top = 315
    Width = 188
    Height = 21
    TabOrder = 14
  end
  object edtRG: TEdit [33]
    Left = 14
    Top = 317
    Width = 225
    Height = 21
    TabOrder = 15
  end
  object edtCPF: TEdit [34]
    Left = 260
    Top = 315
    Width = 229
    Height = 21
    TabOrder = 16
  end
  object edtTelefone: TEdit [35]
    Left = 19
    Top = 261
    Width = 174
    Height = 21
    TabOrder = 17
  end
  object edtCelular: TEdit [36]
    Left = 222
    Top = 261
    Width = 189
    Height = 21
    TabOrder = 18
  end
  inherited edtUF: TEdit
    TabOrder = 19
  end
  object edtEmail: TEdit
    Left = 417
    Top = 261
    Width = 282
    Height = 21
    TabOrder = 20
  end
end
