unit uEstados;

interface
uses uPai, uPaises;
type Estados = class  (Pai)
  private
  protected
    estado : string[10];
    UF : string[3];
    oPais : Paises;
  public
    constructor CrieObj;
    procedure SetEstado(pEstado: string);
    procedure SetUF(pUF: string);
    procedure SetoPais(poPais: paises);
    function GetEstado: string;
    function GetUF: string;
    function GetoPais: paises;
    function Clone : Estados;
    destructor Destrua_se;
end;
implementation

{ Estados }

constructor Estados.CrieObj;
begin
  estado := '';
  UF := '';
  oPais := Paises.CrieObj;
end;

function Estados.Clone: Estados;
begin
  result := Estados.crieObj;
  result.setCodigo(codigo);
  result.setEstado(estado);
  result.setUF(uf);
  result.setoPais(oPais.clone);
  result.setDataCad(dataCad);
  result.setDataCad(DataUltAlt);
end;

function Estados.GetEstado: string;
begin
  result := Estado;
end;

function Estados.GetUF: string;
begin
  result := UF;
end;

function Estados.GetoPais: paises;
begin
  result  := oPais;
end;

procedure Estados.SetEstado(pEstado: string);
begin
   Estado := pEstado;
end;

procedure Estados.SetUF(pUF: string);
begin
  UF := pUF;
end;

procedure Estados.SetoPais(poPais: paises);
begin
  oPais := poPais;
end;

destructor Estados.Destrua_se;
begin

end;

end.

