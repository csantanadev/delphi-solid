object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 320
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 125
    Width = 35
    Height = 13
    Caption = 'Apelido'
  end
  object Label4: TLabel
    Left = 8
    Top = 189
    Width = 36
    Height = 13
    Caption = 'Posicao'
  end
  object Label5: TLabel
    Left = 200
    Top = 189
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  object edtEmail: TEdit
    Left = 8
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 8
    Top = 88
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object edtApelido: TEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtPosicao: TEdit
    Left = 8
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtData: TDateTimePicker
    Left = 200
    Top = 208
    Width = 121
    Height = 21
    Date = 44659.465283078700000000
    Time = 44659.465283078700000000
    TabOrder = 4
  end
  object Cadastrar: TButton
    Left = 8
    Top = 264
    Width = 313
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = CadastrarClick
  end
end
