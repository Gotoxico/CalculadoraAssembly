unit UnidadeCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ButtonPanel;

type
    TArrayString = array[1..200] of String;


  { TCalculator }

  TCalculator = class(TForm)
    ApagarGroup: TGroupBox;
    Backspace: TButton;
    AbrirParentese: TButton;
    Button1: TButton;
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
    procedure Button1Click(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure CheckGroupClick(Sender: TObject);
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
    procedure Panel1Click(Sender: TObject);
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
    flagInv: Boolean;
    flagGraus: Boolean;

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
    flagGraus := not flagGraus;
end;

procedure TCalculator.RadianosChange(Sender: TObject);
begin

end;

procedure TCalculator.InvChange(Sender: TObject);
begin
    flagInv := not flagInv;

    if(flagInv) then
    begin
        Seno.Caption := 'arcsen';
        Cosseno.Caption := 'arccos';
        Tangente.Caption := 'arctan';
    end

    else
    begin
        Seno.Caption := 'sen';
        Cosseno.Caption := 'cos';
        Tangente.Caption := 'tan';
    end;
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

procedure TCalculator.Button1Click(Sender: TObject);
begin
     Display.text := Display.text + 'e';
end;


procedure TCalculator.CClick(Sender: TObject);
begin
     Display.text := '';

end;

procedure TCalculator.CheckGroupClick(Sender: TObject);
begin

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
     if(flagInv) then
     begin
         Display.text := Display.text + 'arcsen(';
     end
     else
     begin
         Display.text := Display.text + 'sen(';
     end;
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

procedure TCalculator.Panel1Click(Sender: TObject);
begin

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
     if(flagInv) then
     begin
         Display.text := Display.text + 'arccos(';
     end
     else
     begin
         Display.text := Display.text + 'cos(';
     end;
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
     if(flagInv) then
     begin
         Display.text := Display.text + 'arctan(';
     end
     else
     begin
         Display.text := Display.text + 'tan(';
     end;
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
     Display.text := Display.text + 'raiz(';
end;

procedure TCalculator.PiClick(Sender: TObject);
begin
     Display.text := Display.text + 'pi';
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

{Procedimentos Calculo}
function Soma(a, b: real): real;
begin
    {$ASMMODE intel}
    asm
       finit
        fld a           // Carrega a no topo da pilha
        fld b           // Carrega o topo da pilha com b
        fadd st(0), st(1)        // Adiciona b ao valor no topo da pilha
        fstp result     // Armazena o resultado em result e desempilha
    end;
end;

function Multiplicar(a, b : real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld a
       fld b
       fmul st(0), st(1)
       fstp result
    end;
end;
function Subtrair(x:real; y:real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld y
       fld x
       fsub
       fstp result
    end;
end;
function Fatorial ( x : real ) : real;
begin
    {$ASMMODE intel}
    asm
     finit
     fld1
     fld x
     ftst
     fstsw
     sahf
     je @zero
     jb @zero
     fld x
     fsub st, st(2)
     @maior:
     fmul st(1), st
     fcom st(2)
     fstsw
     sahf
     fsub st, st(2)
     je @Endloop
     jmp @maior
     @Endloop:
     fxch
     jmp @fim
     @zero:
     fld1
     @fim:
     fstp result
    end;
end;

function UmSobreX(a : real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld a
       fld1
       fdiv st, st(1)
       fstp result
    end;
end;

function EulerAX(x : real) : real;
var
    euler: real;
begin
    euler:= 2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274;
    {$ASMMODE intel}
    asm
       finit
       fld x
       fld euler
       fyl2x
       fld st
       frndint
       fsub st(1), st
       fxch
       f2xm1
       fld1
       faddp st(1), st
       fscale
       fstp result
    end;
end;
function Dividir(x :real; y: real) : real;
begin
     {$ASMMODE intel}
     asm
        finit
        fld y
        fld x
        fdiv
        fstp result
     end;
end;
 function Potencia2(x , y : real) : real;
 var
     expoente : real;
 begin
     expoente := 2;
     {$ASMMODE intel}
     asm
        finit
        fld x
        fld expoente
        fyl2x
        fld st
        frndint
        fsub st(1), st
        f2xm1
        fld1
        faddp st(1), st
        fscale
        fstp result
     end;
 end;
function Ln(x:real) : real;
var base : real;
begin
    base := 2.71828182845904523536;
    {$ASMMODE intel}
    asm
       finit
       fld1
       fld x
       fyl2x
       fld1
       fld base
       fyl2x
       fdiv
       fstp result
    end;
end;

function Log(x: real) : real;
var base : real;
begin
    base := 10;
    {$ASMMODE intel}
    asm
       finit
       fld1
       fld x
       fyl2x
       fld1
       fld base
       fyl2x
       fdiv
       fstp result
    end;
end;

function SinRadianos(x : real) : real;
begin
     {$ASMMODE intel}
     asm
        finit
        fld x
        fsin
        fstp result
     end;
end;
function CosRadianos(x :real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fcos
       fstp Result
    end;
end;
function TanRadianos(x : real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fsincos
       fdiv
       fstp Result
    end;
end;
function arcTan( x: real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fld1
       fpatan
       fstp Result
    end;
end;
function PotenciaXY(x: real ; y: real) : real;
begin
     {$ASMMODE intel}
     asm
        finit
        fld y
        fld x
        fyl2x
        fld st
        frndint
        fsub st(1), st
        fxch
        f2xm1
        fld1
        fadd
        fscale
        fstp result
     end;
end;

function arcSin(x : real) : real;
var
    expoente : real;
begin
     expoente := 2;
     {$ASMMODE intel}
     asm
        finit
        fld x
        fld expoente
        fld x
        fyl2x
        fld st
        frndint
        fsub st(1), st
        fxch
        f2xm1
        fld1
        fadd
        fscale
        fxch
        fxch st(2)
        fxch
        fld1
        fxch
        fsub
        fsqrt
        fdiv
        fld1
        fpatan
        fstp result
     end;

end;

function arcCos(x : real) : real;
var expoente : real;
begin
     expoente := 2;
     {$ASMMODE intel}
     asm
        finit
        fld x
        fld expoente
        fld x
        fyl2x
        fld st
        frndint
        fsub st(1), st
        fxch
        f2xm1
        fld1
        fadd
        fscale
        fxch
        fxch st(2)
        fxch
        fld1
        fxch
        fsub
        fsqrt
        fdivr
        fld1
        fpatan
        fstp result
     end;
end;

function Raiz2deX (x : real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fsqrt
       fstp result
    end;
end;

function RaizYdeX( x : real; y : real  ) : real;
begin

end;
function ChangeSignal(x:real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fchs
       fstp result
    end;
end;

{Procedimentos Polonesa}

function Precedencia(operador: String): Integer;
begin
    if (operador = 'sen') or (operador = 'cos') or (operador = 'tan') or
       (operador = 'arcsen') or (operador = 'arccos') or (operador = 'arctan') or
       (operador = 'ln') or (operador = 'log') then
    begin
        Precedencia := 6;
    end

    else if operador = '!' then
    begin
        Precedencia := 5;
    end

    else if operador = '~' then
    begin
        Precedencia := 4;
    end

    else if (operador = '^') or (operador = 'raiz') then
    begin
        Precedencia := 3;
    end

    else if (operador = '*') or (operador = '/') then
    begin
        Precedencia := 2;
    end

    else if (operador = '+') or (operador = '-') then
    begin
        Precedencia := 1;
    end

    else
    begin
        Precedencia := 0;  // Valor padrão para operadores desconhecidos
    end;
end;


procedure TransformarPolonesa(var pilha: TArrayString; var lista: TArrayString; textoTela: String );
var
    caracteres, funcoesEspeciais, operandos, retiradoPilha: String;
    indexFuncoesEspeciais, indexOperandos, tamanhoTextoTela, parenteses, i, indexPilha, indexLista: Integer;
    flagNumero: Boolean;
begin

    tamanhoTextoTela := Length(textoTela);
    parenteses := 0;
    i := 1;
    indexPilha := 1;
    indexLista := 1;


    while i <= tamanhoTextoTela do
    begin
        indexFuncoesEspeciais := 1;
        indexOperandos := 1;
        flagNumero := false;
        {Caso seja ln, log, seno, cosseno, tangente, arco-seno, arco-cosseno,
        arco-tangente ou raiz}
        if(textoTela[i] = 'l') or (textoTela[i] = 's') or (textoTela[i] = 'c')
           or (textoTela[i] = 't') or (textoTela[i] = 'a') or (textoTela[i] = 'r')  then
        begin
            while(i <= tamanhoTextoTela) and (textoTela[i] <> '(') do
            begin
                SetLength(funcoesEspeciais, indexFuncoesEspeciais);
                funcoesEspeciais[indexFuncoesEspeciais] := textoTela[i];
                Inc(i);
                Inc(indexFuncoesEspeciais);
            end;

            caracteres := funcoesEspeciais;
        end

        {Caso seja um número/operando}
        else if(textoTela[i] >= '0') and (textoTela[i] <= '9')or (textoTela[i] = ',') then
        begin
            while (i <= tamanhoTextoTela) and (textoTela[i] >= '0') and (textoTela[i] <= '9') or (textoTela[i] = ',') do
            begin
                     SetLength(operandos, indexOperandos);
                     operandos[indexOperandos] := textoTela[i];
                     Inc(i);
                     Inc(indexOperandos);
            end;
            caracteres := operandos;
            flagNumero := true;
        end
        else if textoTela[i] = 'p' then
           begin
            Inc(i) ;
            Inc(i);
            caracteres := '3,141592653589';
            flagNumero := true;
           end
        else if textoTela[i] = 'e' then
           begin

                caracteres := '2,71828182845904523';
                Inc(i);
                flagNumero := true;
           end

        {Caso seja um dos outros operadores ou parenteses}
        else
        begin
             caracteres := textoTela[i];
             Inc(i);
        end;

        {Leitura acima e manipulação abaixo}

        {Se o caractere for um Numero, colocar na Expressao Transformada}
        if(flagNumero = true) then
        begin
            lista[indexLista] := caracteres;
            Inc(indexLista);
        end
        {Se o caractere for um abre parenteses, adicionar na Pilha}
        else
        begin
            if (caracteres = '(') then
            begin
                pilha[indexPilha] := caracteres;
                Inc(indexPilha);
                Inc(parenteses);
            end
            {Se o caractere for um fecha parenteses, retirar da Pilha os itens}
            else
            begin
                if (caracteres = ')') then
                begin
                    Dec(parenteses);
                    while (indexPilha > 0) and (pilha[indexPilha-1] <> '(') do
                    begin
                        retiradoPilha := pilha[indexPilha-1];
                        Dec(indexPilha);
                        lista[indexLista] := retiradoPilha;
                        Inc(indexLista);
                    end;
                    {Remover o fecha parenteses da Pilha}
                    retiradoPilha := pilha[indexPilha-1];
                    Dec(indexPilha);
                end
                {Comparar precedencia do Operador Atual com o do Topo da Pilha
                e talvez remover}
                else
                begin
                    while (indexPilha > 0) and (Precedencia(caracteres) <= Precedencia(pilha[indexPilha-1])) do
                    begin
                        retiradoPilha := pilha[indexPilha-1];
                        Dec(indexPilha);
                        lista[indexLista] := retiradoPilha;
                        Inc(indexLista);
                    end;
                    pilha[indexPilha] := caracteres;
                    Inc(indexPilha);
                end;
            end;
        end;
    end;

    {Ao acabar de ler o textoTela, esvaziar Pilha e colocar na Lista}
    while indexPilha > 0 do
    begin
        retiradoPilha := pilha[indexPilha-1];
        Dec(indexPilha);
        lista[indexLista] := retiradoPilha;
        Inc(indexLista);
    end;

    {Encontrar Metodo Para Avisar Quantidade Impar de Parenteses}
end;

{Procedimento Principal Para a Realizacao dos Calculos}

procedure TCalculator.IgualClick(Sender: TObject);
var pilha, lista: TArrayString;
    retiradoLista, retiradoPilha, retiradoPilha2, teste: String;
    operando, operando2, resultado: Real;
    indexLista, indexPilha: Integer;
begin
    teste := '';

    retiradoLista := '';
    retiradoPilha := '';
    TransformarPolonesa(pilha, lista, Display.text);

    {for indexLista := Low(lista) to High(lista) do
    begin
        retiradoLista := retiradoLista + lista[indexLista];
        retiradoLista := retiradoLista + '|';
    end;
    Display.Text := retiradoLista;}


    indexLista := Low(lista);
    indexPilha := Low(pilha);

    while indexLista <= High(lista) do
    begin
        if(lista[indexLista] = 'sen') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao seno}
            if flagGraus then
            begin
                operando := (operando * 3.14159265358979323846) / 180;
                resultado := SinRadianos(operando);
            end
            else
            begin
                resultado := SinRadianos(operando);
            end;
             if ((resultado < 0.000001) and (resultado > 0)) or ((resultado > -0.000001)and (resultado < 0))then
                begin
                    resultado:= 0;
                end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);

            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'cos') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao cosseno}
            if flagGraus then
            begin
                operando := (operando * 3.14159265358979323846) / 180;
                resultado := CosRadianos(operando);

            end
            else
            begin
                resultado := CosRadianos(operando);
            end;
            if ((resultado < 0.000001) and (resultado > 0)) or ((resultado > -0.000001)and (resultado < 0))then
                begin
                    resultado:= 0;
                end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
            appendstr(teste, FloatToStr(resultado) + '|');
        end

        else if(lista[indexLista] = 'tan') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao tangente}
            if flagGraus then
            begin
                operando := (operando * 3.14159265358979323846) / 180;
                resultado := tanRadianos(operando);
            end
            else
            begin
                resultado := tanRadianos(operando);
            end;
             if ((resultado < 0.000001) and (resultado > 0)) or ((resultado > -0.000001)and (resultado < 0))then
                begin
                    resultado:= 0;
                end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'arcsen') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao arco-seno}
            if flagGraus then
            begin
                resultado := (arcSin(operando) * 180) / 3.14159265358979323846;
            end
            else
            begin
                resultado := arcSin(operando);
            end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'arccos') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao arco-cosseno}
            if flagGraus then
            begin
                resultado := (arcCos(operando) * 180) / 3.14159265358979323846;
            end
            else
            begin
                resultado := arcCos(operando);
            end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'arctan') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao arco-tangente}
            if flagGraus then
            begin
                resultado := (arcTan(operando) * 180) / 3.14159265358979323846;
            end
            else
            begin
                resultado := arcTan(operando);
            end;
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'ln') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao logaritmo-neperiano}
            resultado := Ln(operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'log') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao logaritmo}
            resultado := Log(operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = '!') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao fatorial}
            resultado := Fatorial(operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = '~') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao troca-sinal}
            resultado := ChangeSignal(operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = '^') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
            {Funcao exponencial}
            resultado := PotenciaXY(operando2, operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            //{AdicionarNoPilha(pilha, );}

        end
        else if(lista[indexLista] = 'raiz') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            resultado := Raiz2deX(operando);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {Funcao raiz}

            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = '*') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
            {Funcao multiplicacao}
            resultado := Multiplicar(operando, operando2);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
            appendstr(teste, FloatToStr(resultado) + '|');
        end

        else if(lista[indexLista] = '/') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
            //{Funcao divisao}
            resultado := Dividir(operando, operando2);
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            //{AdicionarNoPilha(pilha, );}
            appendstr(teste, FloatToStr(resultado) + '|');
        end

        else if (lista[indexLista] = '+') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
            resultado:= (Soma(operando, operando2));
            {Funcao soma}
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
        end

        else if(lista[indexLista] = '-') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
            {Funcao subtracao}
            resultado:= (Subtrair(operando, operando2));
            pilha[indexPilha] := FloatToStr(resultado);
            Inc(indexPilha);
            {AdicionarNoPilha(pilha, );}
        end

        else
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            pilha[indexPilha] := retiradoLista;
            Inc(indexPilha);
            //resultado := StrToFloat(retiradoLista);
        end;
    end;

        //retiradoPilha := pilha[indexPilha - 1];
        //Display.text := retiradoPilha;
        retiradoPilha := pilha[1];
        Display.text := retiradoPilha;
end;

    end.
