unit uFrmCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroPessoa, uFrmConsultaCidades,
  uFrmConsultaClientes, uClientes, uCtrlClientes, uDAOClientes, Vcl.StdCtrls;

type
  TFrmCadastroClientes = class(TFrmCadastroPessoa)
    edtNome: TEdit;
    edtDataNasc: TEdit;
    edtRG: TEdit;
    edtCPF: TEdit;
    edtTelefone: TEdit;
    edtCelular: TEdit;
    lblNome: TLabel;
    lblDataNasc: TLabel;
    lblRG: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblCelular: TLabel;
    lblEmail: TLabel;
    edtEmail: TEdit;
  private
    { Private declarations }
    umFrmConsultaCidades : TFrmConsultaCidades;
    oCliente : Clientes;
    aCtrlClientes : CtrlClientes;
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
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

{$R *.dfm}

{ TFrmCadastroClientes }

procedure TFrmCadastroClientes.BloqueiaEdit;
begin
  inherited;

end;

procedure TFrmCadastroClientes.CarregaEdit;
begin
  inherited;

end;

procedure TFrmCadastroClientes.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oCliente := Clientes(pObj);
  aCtrlClientes := CtrlClientes(pCtrl);
  self.LimpaEdit;
  self.CarregaEdit;
end;

procedure TFrmCadastroClientes.DesbloqueiEdit;
begin
  inherited;

end;

procedure TFrmCadastroClientes.LimpaEdit;
begin
  inherited;

end;

procedure TFrmCadastroClientes.Sair;
begin
  inherited;

end;

procedure TFrmCadastroClientes.Salvar;
begin
  inherited;

end;

procedure TFrmCadastroClientes.SetConsulta(pObj: TObject);
begin
  inherited;
  umFrmConsultaCidades := TFrmConsultaCidades(pObj);
end;

end.
