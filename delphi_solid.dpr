program delphi_solid;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uJogador in 'entities\uJogador.pas' {$R *.res},
  uIJogadorRepository in 'repositories\uIJogadorRepository.pas',
  uCreateJogadorUseCase in 'useCases\Jogador\createJogador\uCreateJogadorUseCase.pas',
  uCdsJogadorRepository in 'repositories\implementations\uCdsJogadorRepository.pas',
  uFirebirdJogadorRepository in 'repositories\implementations\uFirebirdJogadorRepository.pas',
  uOracleJogadorReposiory in 'repositories\implementations\uOracleJogadorReposiory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
