unit uCreateJogadorUseCase;

interface

uses uIJogadorRepository, uJogador, System.SysUtils;

type

  TCreateJogadorUseCase = class
  private
    FRepositoryJogador: IJogadorRepository;

  public
    procedure inserir(AJogador: TJogador);

    constructor Create(ARepositoryJogador: IJogadorRepository);
  end;

implementation

{ TCreateJogadorUseCase }

constructor TCreateJogadorUseCase.Create(ARepositoryJogador
  : IJogadorRepository);
begin
  // recebo um objeto do tipo da abstra��o
  FRepositoryJogador := ARepositoryJogador;
end;

procedure TCreateJogadorUseCase.inserir(AJogador: TJogador);
begin
  try
    // verificando se o jogador j� existe pelo email
    if (FRepositoryJogador.GetJogadorExists(AJogador.Email)) then
    begin
      raise Exception.Create('Jogador j� existe.');
    end;

    // Salvando o jogador
    FRepositoryJogador.InserirJogador(AJogador);
  except
    on e: Exception do
    begin
      raise e;
    end;
  end;

end;

end.
