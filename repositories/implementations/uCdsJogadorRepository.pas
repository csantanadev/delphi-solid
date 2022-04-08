unit uCdsJogadorRepository;

interface

uses uIJogadorRepository, uJogador, Datasnap.DBClient, Data.DB;

type

  TCdsJogadorRepository = class (TInterfacedObject, IJogadorRepository)

  private
    FFakeBD: TClientDataset;
    procedure criaFieldsBD;
  public
    function GetJogadorExists(AEmail: String): Boolean;
    procedure InserirJogador(AJogador: TJogador);
    constructor create;

  end;

implementation

{ TCdsJogadorRepository }

constructor TCdsJogadorRepository.create;
begin
  inherited create;
  criaFieldsBD;
end;

procedure TCdsJogadorRepository.criaFieldsBD;
begin
  FFakeBD := TClientDataSet.Create(nil);
  FFakeBD.Close;
  FFakeBD.FieldDefs.Clear;
  FFakeBD.FieldDefs.Add('codigo', ftInteger);
  FFakeBD.FieldDefs.Add('email', ftString, 50);
  FFakeBD.FieldDefs.Add('nome', ftString, 50);
  FFakeBD.FieldDefs.Add('apelido', ftString, 50);
  FFakeBD.FieldDefs.Add('posicao', ftString, 50);
  FFakeBD.FieldDefs.Add('dt_nasc', ftDateTime);
  FFakeBD.CreateDataSet;
end;

function TCdsJogadorRepository.GetJogadorExists(AEmail: String): Boolean;
begin
  Result := FFakeBD.Locate('email', AEmail, []);
end;

procedure TCdsJogadorRepository.InserirJogador(AJogador: TJogador);
begin
  FFakeBD.Append;
  FFakeBD.FieldByName('codigo').AsInteger := AJogador.Codigo;
  FFakeBD.FieldByName('email').AsString := AJogador.Email;
  FFakeBD.FieldByName('nome').AsString := AJogador.Nome;
  FFakeBD.FieldByName('apelido').AsString := AJogador.Apelido;
  FFakeBD.FieldByName('posicao').AsString := AJogador.Posicao;
  FFakeBD.FieldByName('dt_nasc').AsDateTime := AJogador.DataNascimento;
  FFakeBD.Post;
end;

end.
