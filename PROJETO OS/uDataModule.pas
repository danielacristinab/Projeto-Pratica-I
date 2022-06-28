unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef;

type
  TDM = class(TDataModule)
    FDTrans: TFDTransaction;
    FDBanco: TFDConnection;
    qFornecedores: TFDQuery;
    DSFornecedores: TDataSource;
    qPaises: TFDQuery;
    DSPaises: TDataSource;
    qEstados: TFDQuery;
    DSEstados: TDataSource;
    qCidades: TFDQuery;
    DSCidades: TDataSource;
    qClientes: TFDQuery;
    DSClientes: TDataSource;
    qFuncionarios: TFDQuery;
    DSFuncionarios: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
