unit UnidadeCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ButtonPanel;

type

  { TCalculator }

  TCalculator = class(TForm)
    ApagarGroup: TGroupBox;
    Backspace: TButton;
    AbrirParentese: TButton;
    FecharParentese: TButton;
    TrocaSinal: TButton;
    Virgula: TButton;
    Adicao: TButton;
    Igual: TButton;
    Pi: TButton;
    RaizYesimaX: TButton;
    RaizQuadradaX: TButton;
    Zero: TButton;
    Tres: TButton;
    Subtracao: TButton;
    XExponencial2: TButton;
    Um: TButton;
    Dois: TButton;
    XExponencialY: TButton;
    Quatro: TButton;
    Cinco: TButton;
    Seis: TButton;
    Multiplicacao: TButton;
    Tangente: TButton;
    Sete: TButton;
    Oito: TButton;
    Nove: TButton;
    Divisao: TButton;
    Cosseno: TButton;
    LogaritmoNeperial: TButton;
    Logaritmo: TButton;
    NFatorial: TButton;
    ExponencialEulerPorX: TButton;
    Seno: TButton;
    UmSobreX: TButton;
    C: TButton;
    PrincipaisGroup: TGroupBox;
    Inv: TCheckBox;
    Display: TEdit;
    CheckGroup: TGroupBox;
    RadioGroup: TGroupBox;
    Panel1: TPanel;
    Graus: TRadioButton;
    Radianos: TRadioButton;
    procedure AbrirParenteseClick(Sender: TObject);
    procedure AdicaoClick(Sender: TObject);
    procedure BackspaceClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure CincoClick(Sender: TObject);
    procedure CossenoClick(Sender: TObject);
    procedure DisplayChange(Sender: TObject);
    procedure DivisaoClick(Sender: TObject);
    procedure DoisClick(Sender: TObject);
    procedure ExponencialEulerPorXClick(Sender: TObject);
    procedure FecharParenteseClick(Sender: TObject);
    procedure GrausChange(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure InvChange(Sender: TObject);
    procedure LogaritmoClick(Sender: TObject);
    procedure LogaritmoNeperialClick(Sender: TObject);
    procedure MultiplicacaoClick(Sender: TObject);
    procedure NFatorialClick(Sender: TObject);
    procedure NoveClick(Sender: TObject);
    procedure OitoClick(Sender: TObject);
    procedure PiClick(Sender: TObject);
    procedure QuatroClick(Sender: TObject);
    procedure RadianosChange(Sender: TObject);
    procedure RaizQuadradaXClick(Sender: TObject);
    procedure RaizYesimaXClick(Sender: TObject);
    procedure SeisClick(Sender: TObject);
    procedure SenoClick(Sender: TObject);
    procedure SeteClick(Sender: TObject);
    procedure SubtracaoClick(Sender: TObject);
    procedure TangenteClick(Sender: TObject);
    procedure TresClick(Sender: TObject);
    procedure TrocaSinalClick(Sender: TObject);
    procedure UmClick(Sender: TObject);
    procedure UmSobreXClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
    procedure XExponencial2Click(Sender: TObject);
    procedure XExponencialYClick(Sender: TObject);
    procedure ZeroClick(Sender: TObject);
  private

  public

  end;

var
  Calculator: TCalculator;

implementation

{$R *.lfm}

{ TCalculator }

procedure TCalculator.DisplayChange(Sender: TObject);
begin

end;

procedure TCalculator.GrausChange(Sender: TObject);
begin

end;

procedure TCalculator.RadianosChange(Sender: TObject);
begin

end;

procedure TCalculator.InvChange(Sender: TObject);
begin

end;

procedure TCalculator.BackspaceClick(Sender: TObject);
begin

end;

procedure TCalculator.CClick(Sender: TObject);
begin

end;

procedure TCalculator.AbrirParenteseClick(Sender: TObject);
begin

end;

procedure TCalculator.LogaritmoNeperialClick(Sender: TObject);
begin

end;

procedure TCalculator.LogaritmoClick(Sender: TObject);
begin

end;

procedure TCalculator.NFatorialClick(Sender: TObject);
begin

end;

procedure TCalculator.UmSobreXClick(Sender: TObject);
begin

end;

procedure TCalculator.SenoClick(Sender: TObject);
begin

end;

procedure TCalculator.ExponencialEulerPorXClick(Sender: TObject);
begin

end;

procedure TCalculator.FecharParenteseClick(Sender: TObject);
begin

end;

procedure TCalculator.SeteClick(Sender: TObject);
begin

end;

procedure TCalculator.OitoClick(Sender: TObject);
begin

end;

procedure TCalculator.NoveClick(Sender: TObject);
begin

end;

procedure TCalculator.DivisaoClick(Sender: TObject);
begin

end;

procedure TCalculator.CossenoClick(Sender: TObject);
begin

end;

procedure TCalculator.XExponencialYClick(Sender: TObject);
begin

end;

procedure TCalculator.QuatroClick(Sender: TObject);
begin

end;

procedure TCalculator.CincoClick(Sender: TObject);
begin

end;

procedure TCalculator.SeisClick(Sender: TObject);
begin

end;

procedure TCalculator.MultiplicacaoClick(Sender: TObject);
begin

end;

procedure TCalculator.TangenteClick(Sender: TObject);
begin

end;

procedure TCalculator.XExponencial2Click(Sender: TObject);
begin

end;

procedure TCalculator.UmClick(Sender: TObject);
begin

end;
 
procedure TCalculator.DoisClick(Sender: TObject);
begin

end;
   
procedure TCalculator.TresClick(Sender: TObject);
begin

end;

procedure TCalculator.SubtracaoClick(Sender: TObject);
begin

end;
 
procedure TCalculator.RaizYesimaXClick(Sender: TObject);
begin

end;

procedure TCalculator.RaizQuadradaXClick(Sender: TObject);
begin

end;
 
procedure TCalculator.PiClick(Sender: TObject);
begin

end;

procedure TCalculator.ZeroClick(Sender: TObject);
begin

end;

procedure TCalculator.TrocaSinalClick(Sender: TObject);
begin

end;

procedure TCalculator.VirgulaClick(Sender: TObject);
begin

end;
 
procedure TCalculator.AdicaoClick(Sender: TObject);
begin

end;

procedure TCalculator.IgualClick(Sender: TObject);
begin

end;




















end.

