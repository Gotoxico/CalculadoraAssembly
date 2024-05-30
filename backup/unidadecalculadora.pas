unit UnidadeCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ButtonPanel;

type
    No = record
       caractere: Char;
       prox: ^No;
    end;

    Lista = record
          elementos: array[1..200] of No;
          inicio: ^No;
          count : Integer;
    end;

    Pilha = record
          elementos: array[1..200] of No;
          topo: ^No;
          count : Integer;
    end;

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
var textoTela : String;
begin
     textoTela := Display.Text;

     if Length(textoTela) > 0 then
        begin
          textoTela := Copy(textoTela, 1, Length(textoTela) - 1);
          Display.text := textoTela;
        end;
end;

procedure TCalculator.CClick(Sender: TObject);
begin
     Display.text := '';

end;

procedure TCalculator.AbrirParenteseClick(Sender: TObject);
begin
     Display.text := Display.text + '(';

end;

procedure TCalculator.LogaritmoNeperialClick(Sender: TObject);
begin
     Display.text := Display.text + 'ln(';

end;

procedure TCalculator.LogaritmoClick(Sender: TObject);
begin
     Display.text := Display.text + 'log(';

end;

procedure TCalculator.NFatorialClick(Sender: TObject);
begin
     Display.text := Display.text + '!';
end;

procedure TCalculator.UmSobreXClick(Sender: TObject);
begin
     Display.text := Display.text + '(1/';

end;

procedure TCalculator.SenoClick(Sender: TObject);
begin
     Display.text := Display.text + 'sen(';

end;

procedure TCalculator.ExponencialEulerPorXClick(Sender: TObject);
begin
     Display.text := Display.text + 'e^(';

end;

procedure TCalculator.FecharParenteseClick(Sender: TObject);
begin
     Display.text := Display.text + ')';

end;

procedure TCalculator.SeteClick(Sender: TObject);
begin
     Display.text := Display.text + '7';

end;

procedure TCalculator.OitoClick(Sender: TObject);
begin
     Display.text := Display.text + '8';

end;

procedure TCalculator.NoveClick(Sender: TObject);
begin
     Display.text := Display.text + '9';
end;

procedure TCalculator.DivisaoClick(Sender: TObject);
begin
     Display.text := Display.text + '/';
end;

procedure TCalculator.CossenoClick(Sender: TObject);
begin
     Display.text := Display.text + 'cos(';
end;

procedure TCalculator.XExponencialYClick(Sender: TObject);
begin
     Display.text := Display.text + '^(';
end;

procedure TCalculator.QuatroClick(Sender: TObject);
begin
     Display.text := Display.text + '4';
end;

procedure TCalculator.CincoClick(Sender: TObject);
begin
     Display.text := Display.text + '5';
end;

procedure TCalculator.SeisClick(Sender: TObject);
begin
     Display.text := Display.text + '6';
end;

procedure TCalculator.MultiplicacaoClick(Sender: TObject);
begin
     Display.text := Display.text + '*';
end;

procedure TCalculator.TangenteClick(Sender: TObject);
begin
     Display.text := Display.text + 'tan(';
end;

procedure TCalculator.XExponencial2Click(Sender: TObject);
begin
     Display.text := Display.text + '^(2)';
end;

procedure TCalculator.UmClick(Sender: TObject);
begin
     Display.text := Display.text + '1';
end;

procedure TCalculator.DoisClick(Sender: TObject);
begin
     Display.text := Display.text + '2';
end;

procedure TCalculator.TresClick(Sender: TObject);
begin
     Display.text := Display.text + '3';
end;

procedure TCalculator.SubtracaoClick(Sender: TObject);
begin
     Display.text := Display.text + '-';
end;

procedure TCalculator.RaizYesimaXClick(Sender: TObject);
begin
     Display.text := Display.text + '^(1/';
end;

procedure TCalculator.RaizQuadradaXClick(Sender: TObject);
begin
     Display.text := Display.text + '√(';
end;

procedure TCalculator.PiClick(Sender: TObject);
begin
     Display.text := Display.text + 'π';
end;

procedure TCalculator.ZeroClick(Sender: TObject);
begin
     Display.text := Display.text + '0';
end;

procedure TCalculator.TrocaSinalClick(Sender: TObject);
begin
     Display.text := Display.text + '~';
end;

procedure TCalculator.VirgulaClick(Sender: TObject);
begin
     Display.text := Display.text + ',';
end;

procedure TCalculator.AdicaoClick(Sender: TObject);
begin
     Display.text := Display.text + '+';
end;

procedure TCalculator.IgualClick(Sender: TObject);
begin




end;



procedure InicializarLista(var lista: Lista);
begin
     lista.inicio := nil;
     lista.count := 0;
end;

procedure InicializarPilha(var pilha: Pilha);
begin
     pilha.topo := nil;
     pilha.count := 0;
end;

procedure AdicionarNoLista(var lista: Lista ; c: Char);
var novoNo : ^No;
begin
     if lista.count < 200 then
     begin
          Inc(lista.count);
          novoNo := @lista.elementos[lista.count];
          novoNo^.caractere := c;
          novoNo^.prox := nil;

          if lista.inicio = nil then
          begin
               lista.inicio := novoNo;
          end
          else
          var atual : No;
          begin
               atual := lista^.inicio;
               while atual <> nil do
               begin
                    atual := atual^.prox;
               end;
                    atual := novoNo;
          end
     end;
end;

procedure AdicionarNoPilha(var pilha: Pilha; c: Char);
var novoNo : ^No;
begin
     if pilha.count < 200 then
     begin
          Inc(pilha.count);
          novoNo := @pilha.elementos[pilha.count];
          novoNo^.caractere := c;
          novoNo^.prox := pilha.topo^;
          pilha.topo = novoNo^;
     end;
end;

procedure RemoverNoLista(var lista: Lista; c: Char);
begin
     if lista.count > 0 then
        var atual : No;
        begin
             atual := lista^.inicio;
             while atual^.prox <> nil do
             begin
                  atual := atual^.prox;
             end;
             Dec(lista.count);
             c := atual^.caractere;
             atual := nil;
        end;
end;

procedure RemoverNoPilha(var pilha: Pilha; c: Char);
begin
     if pilha.count > 0 then
     begin
          Dec(pilha.count);
          c := pilha.topo.caractere;
          pilha.topo = pilha^topo.prox;
     end;
end;

procedure ImprimirLista(var lista: Lista);
var atual : No;
begin
     atual := lista^.inicio;
     while atual <> nil do
           begin
                Write(atual^.caractere, ' ');
                atual := atual^.prox;
           end;
     WriteLn;
end;

procedure ImprimirPilha(var pilha: Pilha);
var atual : No;
begin
     atual := pilha^.topo;
     while atual <> nil do
           begin
                Write(atual^.caractere, ' ');
                atual := atual^.prox;
           end;
     WriteLn;
end;

procedure Precedencia(operador: String): Integer;
begin
     if operador = 'sen' or operador = 'cos' or operador = 'tan' or operador = 'arcsen' or operador = 'arccos' or operador = 'arctan' or operando = 'ln'
        or operando = 'log' then
        begin
             Precedencia := 6;
        end;

     if operador = '!' then
        begin
             Precedencia := 5;
        end;

     if operador = '~' then
        begin
             Precedencia := 4;
        end;

     if operador = '^' or operador = '√' then
        begin
             Precedencia := 3;
        end;

     if operador = '*' or operador = '/' then
        begin
             Precedencia := 2;
        end;

     if operador = '+' or operador = '-' then
        begin
             Precedencia := 1;
        end;
end;

procedure TransformarPolonesa(var pilha: Pilha; var lista: Lista; var textoTela: String);
begin

end;



















end.

