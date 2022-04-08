unit uIJogadorRepository;

interface

uses uJogador;

type

  IJogadorRepository = interface
    function GetJogadorExists(AEmail: String): Boolean;
    procedure InserirJogador(AJogador: TJogador);
  end;

implementation

end.
