inherited FrmCadastroFornecedores: TFrmCadastroFornecedores
  Caption = 'Cadastro de Fornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblComplemento: TLabel
    Width = 127
    Caption = 'Complemento / Referencia'
    ExplicitWidth = 127
  end
  inherited lblCodCidade: TLabel
    Left = 26
    Top = 179
    ExplicitLeft = 26
    ExplicitTop = 179
  end
  inherited lblCidade: TLabel
    Left = 110
    ExplicitLeft = 110
  end
  inherited lblUF: TLabel
    Left = 328
    ExplicitLeft = 328
  end
  object lblRazaoSocial: TLabel [11]
    Left = 72
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object lblNomeFantasia: TLabel [12]
    Left = 474
    Top = 8
    Width = 116
    Height = 13
    Caption = 'Nome Fantasia / Apelido'
  end
  object lblSite: TLabel [13]
    Left = 474
    Top = 250
    Width = 18
    Height = 13
    Caption = 'Site'
  end
  object lblRG_IE: TLabel [14]
    Left = 26
    Top = 304
    Width = 165
    Height = 13
    Caption = 'Registro Geral / Inscri'#231#227'o Estadual'
  end
  object lblCNPJ: TLabel [15]
    Left = 265
    Top = 304
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object lblTelefone: TLabel [16]
    Left = 27
    Top = 251
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lblCelular: TLabel [17]
    Left = 122
    Top = 251
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lblEmail: TLabel [18]
    Left = 265
    Top = 251
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  inherited edtBairro: TEdit
    Top = 137
    ExplicitTop = 137
  end
  inherited edtCidade: TEdit
    Left = 110
    ExplicitLeft = 110
  end
  inherited btnPesquisar: TButton
    Left = 474
    Top = 206
    ExplicitLeft = 474
    ExplicitTop = 206
  end
  inherited edtUF: TEdit
    Left = 324
    ExplicitLeft = 324
  end
  object edtRazaoSocial: TEdit
    Left = 75
    Top = 45
    Width = 373
    Height = 21
    TabOrder = 14
  end
  object edtNomeFantasia: TEdit
    Left = 474
    Top = 45
    Width = 225
    Height = 21
    TabOrder = 15
  end
  object edtSite: TEdit
    Left = 474
    Top = 269
    Width = 241
    Height = 21
    TabOrder = 16
  end
  object edtRG_IE: TEdit
    Left = 24
    Top = 323
    Width = 223
    Height = 21
    TabOrder = 17
  end
  object edtCNPJ: TEdit
    Left = 265
    Top = 323
    Width = 218
    Height = 21
    TabOrder = 18
  end
  object edtTelefone: TEdit
    Left = 24
    Top = 270
    Width = 81
    Height = 21
    TabOrder = 19
  end
  object edtCelular: TEdit
    Left = 122
    Top = 270
    Width = 125
    Height = 21
    TabOrder = 20
  end
  object edtEmail: TEdit
    Left = 265
    Top = 270
    Width = 192
    Height = 21
    TabOrder = 21
  end
end
