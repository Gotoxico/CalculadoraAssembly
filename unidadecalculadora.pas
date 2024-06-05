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
    euler:= 2.71828;
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
        fst result
     end;
 end;
function SinRadianos(x : real) : real;
begin
     {$ASMMODE intel}
     asm
        finit
        fld x
        fsin
        fst result
     end;
end;
function CosRadianos(x :real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fcos
       fst Result
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
       fst Result
    end;
end;
function arcTan( x: real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
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
        f2xm1
        fld1
        faddp st(1), st
        fscale
        fst result
     end;
end;
function Raiz2deX (x : real) : real;
begin
    {$ASMMODE intel}
    asm
       finit
       fld x
       fsqrt
       fstp Result
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
        Precedencia := 9;
    end

    else if (operador = '^') or (operador = '√') then
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


procedure TransformarPolonesa(var pilha: TArrayString; var lista: TArrayString; textoTela: String);
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
        {Caso seja ln, log, seno, cosseno, tangente, arco-seno, arco-cosseno e
        arco-tangente}
        if(textoTela[i] = 'l') or (textoTela[i] = 's') or (textoTela[i] = 'c')
           or (textoTela[i] = 't') or (textoTela[i] = 'a') then
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
        else if textoTela[i] = 'π' then
           begin
                caracteres := '3.14';
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
    retiradoLista, retiradoPilha, retiradoPilha2: String;
    operando, operando2, resultado: Real;
    indexLista, indexPilha: Integer;
begin
     retiradoLista := '';
    TransformarPolonesa(pilha, lista, Display.text);


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
            end;

            resultado := SinRadianos(operando);
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
            end;
            resultado := CosRadianos(operando);
            {AdicionarNoPilha(pilha, );}
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
            end;
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
            {AdicionarNoPilha(pilha, );}
        end

        else if(lista[indexLista] = 'arco-tangente') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            {Funcao arco-tangente}
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
            //if operando = 2 then
            //begin
            //    resultado:=
            //{AdicionarNoPilha(pilha, );}

            end
        else if(lista[indexLista] = '√') then
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            retiradoPilha := pilha[indexPilha-1];
            Dec(indexPilha);
            retiradoPilha2 := pilha[indexPilha-1];
            Dec(indexPilha);
            operando := StrToFloat(retiradoPilha);
            operando2 := StrToFloat(retiradoPilha2);
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
            //{AdicionarNoPilha(pilha, );}
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
            {AdicionarNoPilha(pilha, );}
        end

        else
        begin
            retiradoLista := lista[indexLista];
            Inc(indexLista);
            pilha[indexPilha] := retiradoLista;
            Inc(indexPilha);
        end;
    end;




        //retiradoPilha := pilha[indexPilha - 1];
        //Display.text := retiradoPilha;
        Display.text := FloatToStr(resultado);


end;

  end.
