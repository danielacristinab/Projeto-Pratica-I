unit uFrmCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFrmCadastroPessoa, Vcl.StdCtrls, uFornecedores, uCtrlFornecedores,
  uFrmConsultaCidades;

type
  TFrmCadastroFornecedores = class(TFrmCadastroPessoa)
    lblRazaoSocial: TLabel;
    edtRazaoSocial: TEdit;
    edtNomeFantasia: TEdit;
    lblNomeFantasia: TLabel;
    edtSite: TEdit;
    lblSite: TLabel;
    lblRG_IE: TLabel;
    lblCNPJ: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    edtRG_IE: TEdit;
    edtCNPJ: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
  private
    { Private declarations }
    umFrmConsultaCidades : TFrmConsultaCidades;
    oFornecedor : Fornecedores;
    aCtrlFornecedores : CtrlFornecedores;
  public
    { Public declarations }
    procedure ConhecaObj(pObj: TObject;  pCtrl: TObject);  override;
    procedure LimpaEdit;                                   override;
    procedure CarregaEdit;                                 override;
    procedure BloqueiaEdit;                                override;
    procedure DesbloqueiEdit;                              override;
    procedure Salvar;                                      override;
    procedure Sair;                                        override;
    procedure SetConsulta(pObj: TObject);                  override;
  end;

var
  FrmCadastroFornecedores: TFrmCadastroFornecedores;

implementation

{$R *.dfm}

{ TFrmCadastroFornecedores }

procedure TFrmCadastroFornecedores.BloqueiaEdit;
begin
  inherited;
  edtCodigo.Enabled       := false;
  edtCnpj.Enabled         := false;
  edtRazaoSocial.Enabled  := false;
  edtNomeFantasia.Enabled := false;
  edtTelefone.Enabled     := false;
  edtEmail.Enabled        := false;
  edtSite.Enabled         := false;
  edtRG_IE.Enabled        := false;
  edtEndereco.Enabled     := false;
  edtNumero.Enabled       := false;
  edtCep.Enabled          := false;
  edtBairro.Enabled       := false;
  edtComplemento.Enabled  := false;
  edtCodCidade.Enabled    := false;
  edtCidade.Enabled       := false;
  edtDataCad.Enabled      := false;
  edtUltAlt.Enabled       := false;
end;

procedure TFrmCadastroFornecedores.CarregaEdit;
begin
  inherited;
  if oFornecedor.GetCodigo <> 0 then
    self.edtCodigo.Text := inttostr(oFornecedor.GetCodigo);
  edtCodigo.Text        := inttoStr(oFornecedor.getCodigo);
  edtCnpj.Text          := oFornecedor.GetCnpj;
  edtRazaoSocial.Text   := oFornecedor.GetRazaoSocial;
  edtNomeFantasia.Text  := oFornecedor.GetApelidoNomeFantasia;
  edtTelefone.Text      := oFornecedor.GetTelefone;
  edtEmail.Text         := oFornecedor.GetEmail;
  edtSite.Text          := oFornecedor.GetSite;
  edtRG_IE.Text         := oFornecedor.GetRG_IE;
  edtEndereco.Text      := oFornecedor.GetEndereco;
  edtNumero.Text        := inttostr(oFornecedor.GetNumero);
  edtCep.Text           := inttostr(oFornecedor.GetCep);
  edtBairro.Text        := oFornecedor.GetBairro;
  edtComplemento.Text   := oFornecedor.GetComplemento;
  edtCodCidade.Text     := inttostr(oFornecedor.GetaCidade.GetCodigo);
  edtCidade.Text        := oFornecedor.GetaCidade.GetCidade;
  edtDataCad.Text       := oFornecedor.GetDataCad;
  edtUltAlt.Text        := oFornecedor.GetUltAlt;
end;

procedure TFrmCadastroFornecedores.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oFornecedor := Fornecedores(pObj);
  aCtrlFornecedores := CtrlFornecedores(pCtrl);
  self.LimpaEdit;
  self.CarregaEdit;
end;

procedure TFrmCadastroFornecedores.DesbloqueiEdit;
begin
  inherited;
  edtCnpj.Enabled := true;
  edtRazaoSocial.Enabled := true;
  edtNomeFantasia.Enabled := true;
  edtTelefone.Enabled := true;
  edtEmail.Enabled := true;
  edtSite.Enabled := true;
  edtRG_IE.Enabled := true;
  edtEndereco.Enabled := true;
  edtNumero.Enabled := true;
  edtCep.Enabled := true;
  edtBairro.Enabled := true;
  edtComplemento.Enabled := true;
  edtCodCidade.Enabled := true;
  edtCidade.Enabled := true;
end;

procedure TFrmCadastroFornecedores.LimpaEdit;
begin
  inherited;
  edtCnpj.Clear;
  edtRazaoSocial.Clear;
  edtNomeFantasia.Clear;
  edtTelefone.Clear;
  edtEmail.Clear;
  edtSite.Clear;
  edtRG_IE.Clear;
  edtEndereco.Clear;
  edtNumero.Clear;
  edtCep.Clear;
  edtBairro.Clear;
  edtComplemento.Clear;
  edtCodCidade.Clear;
  edtCidade.Clear;
end;

procedure TFrmCadastroFornecedores.Sair;
begin
  inherited;
end;

procedure TFrmCadastroFornecedores.Salvar;
begin
   if btnSalvar.Caption = '&Salvar' then
  begin
    if length(self.edtNomeFantasia.text) = 0 then
      self.edtNomeFantasia.Color := clYellow;
    if length(self.edtCNPJ.text) = 0 then
      self.edtCNPJ.Color := clYellow;
    if length(self.edtRazaoSocial.text) = 0 then
      self.edtRazaoSocial.Color := clYellow;
    if length(self.edtRG_IE.text) = 0 then
      self.edtRG_IE.Color := clYellow;
    if length(self.edtTelefone.text) = 0 then
      self.edtTelefone.Color := clYellow;
    if length(self.edtEmail.text) = 0 then
      self.edtEmail.Color := clYellow;
    if length(self.edtEndereco.text) = 0 then
      self.edtEndereco.Color := clYellow;
    if length(self.edtNumero.text) = 0 then
      self.edtNumero.Color := clYellow;
    if length(self.edtBairro.text) = 0 then
      self.edtBairro.Color := clYellow;
    if length(self.edtCEP.text) = 0 then
      self.edtCEP.Color := clYellow;
    if length(self.edtCidade.text) = 0 then
      self.edtCidade.Color := clYellow;
    if self.edtNomeFantasia.Text = '' then
    begin
      showmessage('Campo Nome Fantasia obrigatorio!');
      self.edtNomeFantasia.SetFocus;
    end
    else if self.edtCNPJ.Text = '' then
    begin
      showmessage('Campo CNPJ obrigatorio!');
      self.edtCNPJ.SetFocus;
    end
    else if self.edtRazaoSocial.Text = '' then
    begin
      showmessage('Campo Raz�o Social obrigatorio!');
      self.edtRazaoSocial.SetFocus;
    end
    else if self.edtEmail.Text = '' then
    begin
      showmessage('Campo Email obrigatorio!');
      self.edtEmail.SetFocus;
    end
    else if self.edtTelefone.Text = '' then
    begin
      showmessage('Campo Telefone obrigatorio!');
      self.edtTelefone.SetFocus;
    end
    else if self.edtRG_IE.Text = '' then
    begin
      showmessage('Campo Registro Estadual obrigatorio!');
      self.edtRG_IE.SetFocus;
    end
    else if self.edtEndereco.Text = '' then
    begin
      showmessage('Campo Endere�o obrigatorio!');
      self.edtEndereco.SetFocus;
    end
     else if self.edtNumero.Text = '' then
    begin
      showmessage('Campo Numero obrigatorio!');
      self.edtNumero.SetFocus;
    end
     else if self.edtBairro.Text = '' then
    begin
      showmessage('Campo Bairro obrigatorio!');
      self.edtBairro.SetFocus;
    end
     else if self.edtCEP.Text = '' then
    begin
      showmessage('Campo CEP obrigatorio!');
      self.edtCEP.SetFocus;
    end
     else if self.edtCidade.Text = '' then
    begin
      showmessage('Campo Cidade obrigatorio!');
      self.edtCidade.SetFocus;
    end

  else
    oFornecedor.SetCodigo(strtoint(edtCodigo.Text));
    oFornecedor.SetCNPJ(edtCNPJ.Text);
    oFornecedor.SetRazaoSocial(edtRazaoSocial.Text);
    oFornecedor.SetApelidoNomeFantasia(edtNomeFantasia.Text);
    oFornecedor.SetTelefone(edtTelefone.Text);
    oFornecedor.SetEmail(edtEmail.Text);
    oFornecedor.SetSite(edtSite.Text);
    oFornecedor.SetRG_IE(edtRG_IE.Text);
    oFornecedor.SetEndereco(edtEndereco.Text);
    oFornecedor.SetNumero(strtoint(edtNumero.Text));
    oFornecedor.SetCep(strtoint(edtCEP.Text));
    oFornecedor.SetBairro(edtBairro.Text);
    oFornecedor.SetComplemento(edtComplemento.Text);
    oFornecedor.GetaCidade.SetCodigo(strtoint(edtCodCidade.Text));
    oFornecedor.GetaCidade.SetCidade(edtCidade.Text);
    oFornecedor.SetDataCad(edtDataCad.Text);
    oFornecedor.SetUltAlt(edtUltAlt.Text);

    aCtrlFornecedores.salvar(oFornecedor.Clone);
  end;
    showmessage('Fornecedor cadastrado com sucesso!');
    close;
end;

procedure TFrmCadastroFornecedores.SetConsulta(pObj: TObject);
begin
  inherited;
  umFrmConsultaCidades := TFrmConsultaCidades(pObj);
end;

end.
