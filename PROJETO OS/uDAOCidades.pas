unit uDAOCidades;

interface
uses uDAO, uCidades, Data.DB, System.SysUtils;
  type DAOCidades = class   (DAO)
    private
    protected
    public
      constructor CrieObj;
      function GetDS: TDataSource;                override;
      function Salvar(pObj: TObject): string;     override;
      function Carregar(pObj: TObject): string;   override;
      function Pesquisar(pChave: string): string; override;
      function Excluir(pObj: TObject): string;    override;
      function AcheiReg() : boolean;
      destructor Destrua_se;
  end;

implementation

{ DAOCidades }

constructor DAOCidades.CrieObj;
begin
  inherited;
end;

function DAOCidades.GetDS: TDataSource;
begin
  result := umDm.DSCidades;
end;

function DAOCidades.AcheiReg: boolean;
begin
  result := not (umDM.qEstados.Eof);
end;

function DAOCidades.Carregar(pObj: TObject): string;
var mCidade : Cidades;
begin
  try
   try
      mCidade := Cidades(pObj);
      with umDM.qCidades DO
      begin
        mCidade := Cidades(pObj);
        mCidade.SetCodigo(umDM.qCidades.FieldByName('CODCIDADE').value);
        mCidade.SetCidade(umDM.qCidades.FieldByName('CIDADE').AsString);
        mCidade.SetDDD(umDM.qCidades.FieldByName('DDD').AsString);
        mCidade.getoEstado.setCodigo(umDM.qCidades.FieldByName('oESTADO').Value);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;
 finally
 end;

end;

function DAOCidades.Pesquisar(pChave: string): string;
var mSql: string;
begin
  if pChave <> '' then
    if ehNumero(pChave) then
      mSql := 'select * from Cidades where codcidade = '+quotedstr(pChave)
    else
      mSql := 'select * from Cidades where cidade = '+quotedstr(pChave)+' order by cidade'
  else
    mSql := 'select * from Cidades order by cidade';
  umDM.qCidades.Active := false;
  umDM.qCidades.SQL.Text := mSql;
  umDM.qCidades.Open();
end;

function DAOCidades.Salvar(pObj: TObject): string;
var mSql  : string;
    mCidades : Cidades;
begin
    try
      umDM.FDTrans.StartTransaction;
      mCidades := Cidades(pObj);
      with umDM.qCidades do
      begin
        if mCidades.getCodigo = 0 then
        mSql := 'insert into Cidades (cidade, ddd, codestado) values ( :cidade, :ddd, :codestado)'
        else
        begin
          mSql := 'update Cidades set cidade = :cidade , ddd = :ddd, codestado = :codestado';
          mSql := mSql + ' where codCidade = :CodCidade';
        end;
        umDM.qCidades.SQL.Clear;
        umDM.qCidades.SQL.Add(mSql);
        ParamByName('CIDADE').Value := mCidades.getCidade;
        ParamByName('DDD').Value := mCidades.getDDD;
        ParamByName('CODESTADO').Value := mCidades.getoEstado.GetCodigo;
        if mCidades.GetCodigo <> 0 then
          ParamByName('CODCIDADE').Value := mCidades.GetCodigo;
        ExecSQL;
      end;
      umDM.FDTrans.Commit;
    except
      umDM.FDTrans.Rollback;
end;
end;

function DAOCidades.Excluir(pObj: TObject): string;
var mSql  : string;
    mCidade : Cidades;
begin
  try
      mCidade := Cidades(pObj);
      mSql := 'delete * from cidades where codEstado = '+quotedstr(inttostr(mCidade.getCodigo));
      umDm.FDTrans.StartTransaction;
      umDm.qCidades.Active:= false;
      umDm.qCidades.SQL.Clear;
      umDm.qCidades.SQL.Add(mSql);
      umDm.qCidades.Open;
      umDm.FDTrans.Commit;
      result := '';
   except on e: Exception do
   begin
      umDm.FDTrans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;
  end;
end;

destructor DAOCidades.Destrua_se;
begin

end;
end.
