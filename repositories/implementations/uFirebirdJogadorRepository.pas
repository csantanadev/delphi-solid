unit uFirebirdJogadorRepository;

interface

uses uIJogadorRepository, uJogador;

type
  // implementação do firebird
  TFirebirdJogadorRepository = class(TInterfacedObject, IJogadorRepository)

  private

  public
    function GetJogadorExists(AEmail: String): Boolean;
    procedure InserirJogador(AJogador: TJogador);
    constructor create;
  end;

implementation

constructor TFirebirdJogadorRepository.create;
begin
  inherited create;
end;

function TFirebirdJogadorRepository.GetJogadorExists(AEmail: String): Boolean;
begin
  //
end;

procedure TFirebirdJogadorRepository.InserirJogador(AJogador: TJogador);
begin
  //
end;

end.
