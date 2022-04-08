unit uJogador;

interface

type

  TJogador = class
  private

    FCodigo: Integer;
    FEmail: string;
    FNome: string;
    FApelido: string;
    FPosicao: string;
    FDataNascimento: TDateTime;

  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Email: string read FEmail write FEmail;
    property Nome: string read FNome write FNome;
    property Apelido: string read FApelido write FApelido;
    property Posicao: string read FPosicao write FPosicao;
    property DataNascimento: TDateTime read FDataNascimento
      write FDataNascimento;

    constructor Create(ACodigo: Integer; AEmail: string; ANome: String;
      AApelido: String; APosicao: string; ADataNascimento: TDateTime);
  end;

implementation

{ Jogador }

constructor TJogador.Create(ACodigo: Integer; AEmail: string;
  ANome, AApelido, APosicao: string; ADataNascimento: TDateTime);
begin
  if (ACodigo = -1) then
    Codigo := Random(10)
  else
    Codigo := ACodigo;

  Email := AEmail;
  Nome := ANome;
  Apelido := AApelido;
  Posicao := APosicao;
  DataNascimento := ADataNascimento;
end;

end.
