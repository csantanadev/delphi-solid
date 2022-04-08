unit uOracleJogadorReposiory;

interface

uses uIJogadorRepository, uJogador;

type
  // implementação do Oracle
  TOracleJogadorReposiory = class(TInterfacedObject, IJogadorRepository)

  private

  public
    function GetJogadorExists(AEmail: String): Boolean;
    procedure InserirJogador(AJogador: TJogador);
    constructor create;
  end;

implementation

constructor TOracleJogadorReposiory.create;
begin
  inherited create;
end;

function TOracleJogadorReposiory.GetJogadorExists(AEmail: String): Boolean;
begin
  //
end;

procedure TOracleJogadorReposiory.InserirJogador(AJogador: TJogador);
begin
  //
end;

end.