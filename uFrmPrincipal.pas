unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  uCdsJogadorRepository, uCreateJogadorUseCase;

type
  TFrmPrincipal = class(TForm)
    Label1: TLabel;
    edtEmail: TEdit;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtApelido: TEdit;
    Label4: TLabel;
    edtPosicao: TEdit;
    Label5: TLabel;
    edtData: TDateTimePicker;
    Cadastrar: TButton;
    procedure CadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRepository: TCdsJogadorRepository;
    FUseCase: TCreateJogadorUseCase;

    function validaCampos: Boolean;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uJogador;

procedure TFrmPrincipal.CadastrarClick(Sender: TObject);
var
  lobjJogador: TJogador;
begin
  if (validaCampos) then
  begin
    try
      // criando um objeto
      lobjJogador := TJogador.create(-1, edtEmail.Text, edtNome.Text,
        edtApelido.Text, edtPosicao.Text, edtData.DateTime);

      // usando o método da classe de negócio
      FUseCase.inserir(lobjJogador);

      ShowMessage('Incluido com sucesso')
    except
      on e: Exception do
      begin
        raise Exception.create('Erro ao criar um jogador. Msg Original: ' +
          e.Message);
      end;
    end;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  // crio a minha implementacao
  FRepository := TCdsJogadorRepository.create;

  // crio a minha classe de negocio e passo a minha implementacao
  FUseCase := TCreateJogadorUseCase.create(FRepository);
end;

function TFrmPrincipal.validaCampos: Boolean;
begin
  Result := false;
  if (edtEmail.Text = '') then
  begin
    ShowMessage('Informe um email');
    Exit;
  end;

  if (edtNome.Text = '') then
  begin
    ShowMessage('Informe um nome');
    Exit;
  end;

  if (edtApelido.Text = '') then
  begin
    ShowMessage('Informe um apelido');
    Exit;
  end;
  Result := true;
end;

end.
