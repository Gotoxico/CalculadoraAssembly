unit UnidadeCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ButtonPanel;

type
    No = record
       caracteres: String;
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
    flagGraus := not flagGraus;
end;

procedure TCalculator.GrausChange(Sender: TObject);
begin

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
        Cosseno.Caption := 'arccos;
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

{Procedimento Principal Para a Realizacao dos Calculos}

procedure TCalculator.IgualClick(Sender: TObject);
var lista: Lista;
    pilha: Pilha;
    anterior, atual: ^No;
    retiradoLista, retiradoPilha, retiradoPilha2: String;
    operador, operador2: Real;
begin
    InicializarLista(lista);
    InicializarPilha(pilha);
    TransformarPolonesa(pilha, lista, Display.text);

    anterior := nil;
    atual := lista.inicio;

    while(atual <> nil) do
    begin
        if(atual^.caractere = 'sen') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao seno}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'cos') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao cosseno}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'tan') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao tangente}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'arcsen') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao arco-seno}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'arccos') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao arco-cosseno}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'arco-tangente') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao arco-tangente}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'ln') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao logaritmo-neperiano}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = 'log') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao logaritmo}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '!') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao fatorial}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '~') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            operador := StrToFloat(retiradoPilha);
            {Funcao troca-sinal}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '^') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao exponencial}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '√') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao raiz}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '*') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao multiplicacao}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '/') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao divisao}
            {AdicionarNoPilha(pilha, );}
        end

        else if (atual^.caractere = '+') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao soma}
            {AdicionarNoPilha(pilha, );}
        end

        else if(atual^.caractere = '-') then
        begin
            RemoverNoLista(lista, retiradoLista);
            RemoverNoPilha(pilha, retiradoPilha);
            RemoverNoPilha(pilha, retiradoPilha2);
            operador := StrToFloat(retiradoPilha);
            operador2 := StrToFloat(retiradoPilha2);
            {Funcao subtracao}
            {AdicionarNoPilha(pilha, );}
        end

        else
        begin
            RemoverNoLista(lista, retiradoLista);
            AdicionarNoPilha(pilha, retiradoLista);

        end;
    end;

    {Exibindo Resultado Display}
    if(flagGraus) then
    begin
        Display.text := FloatToString((180/pi)*StrToFloat(ImprimirPilha(pilha)));
    end

    else
    begin
        Display.text := ImprimirPilha(pilha);
    end;

end;

{Procedimentos Lista e Pilha}

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

procedure AdicionarNoLista(var lista: Lista ; c: String);
var novoNo : ^No; atual : ^No;
begin
     if lista.count < 200 then
     begin
          Inc(lista.count);
          novoNo := @lista.elementos[lista.count];
          novoNo^.caracteres := c;
          novoNo^.prox := nil;

          if lista.inicio = nil then
          begin
               lista.inicio := novoNo;
          end

          else
          begin
               atual := lista.inicio;
               while atual <> nil do
               begin
                    atual := atual^.prox;
               end;
                    atual := novoNo;
          end;
     end;
end;


procedure AdicionarNoPilha(var pilha: Pilha; c: String);
var novoNo : ^No;
begin
     if pilha.count < 200 then
     begin
          Inc(pilha.count);
          novoNo := @pilha.elementos[pilha.count];
          novoNo^.caracteres := c;
          novoNo^.prox := pilha.topo;
          pilha.topo := novoNo;
     end;
end;

procedure RemoverNoLista(var lista: Lista; c: String);
var atual : ^No;
begin
     if lista.count > 0 then

        begin
             atual := lista.inicio;
             while atual^.prox <> nil do
             begin
                  atual := atual^.prox;
             end;
             Dec(lista.count);
             c := atual^.caracteres;
             atual := nil;
        end;
end;

procedure RemoverNoPilha(var pilha: Pilha; c: String);
var
    tempNo: ^No;
begin
    if pilha.count > 0 then
    begin
        c := pilha.topo^.caracteres;
        tempNo := pilha.topo;
        pilha.topo := pilha.topo^.prox;
        Dec(pilha.count);
        { Não é necessário liberar memória explicitamente, pois a alocação é estática }
    end;
end;

procedure ImprimirLista(var lista: Lista);
var atual: ^No;
begin
     atual := lista.inicio;
     while atual <> nil do
           begin
               Write(atual^.caracteres, ' ');
               atual := atual^.prox;
           end;
     WriteLn;
end;

function ImprimirPilha(var pilha: Pilha): String;
var atual: ^No;
    resultado: String;
begin
     atual := pilha.topo;
     while atual <> nil do
           begin
               resultado := atual^.caracteres;
               atual := atual^.prox;
           end;
     ImprimirPilha := resultado;
end;

function TamanhoPilha(var pilha: Pilha): Integer;
begin
    TamanhoPilha := pilha.count;
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


procedure TransformarPolonesa(var pilha: Pilha;  lista: Lista;  textoTela: String);
var
    caracteres, funcoesEspeciais, operandos, retiradoPilha: String;
    indexFuncoesEspeciais, indexOperandos, tamanhoTextoTela, parenteses, i: Integer;
    flagNumero: Boolean;
begin
    tamanhoTextoTela := Length(textoTela);
    parenteses := 0;

    for i:= 0 to tamanhoTextoTela do
    begin
        indexFuncoesEspeciais := 0;
        indexOperandos := 0;
        flagNumero := false;
        {Caso seja ln, log, seno, cosseno, tangente, arco-seno, arco-cosseno e
        arco-tangente}
        if(textoTela[i] = 'l') or (textoTela[i] = 's') or (textoTela[i] = 'c')
           or (textoTela[i] = 't') or (textoTela[i] = 'a') then
        begin
            while(textoTela[i] <> '(') do
            begin
                funcoesEspeciais[indexFuncoesEspeciais] := textoTela[i];
                Inc(i);
                Inc(indexFuncoesEspeciais);
            end;

            caracteres := funcoesEspeciais;
        end

        {Caso seja um número/operando}
        else if(textoTela[i] >= '0') and (textoTela[i] <= '9') then
        begin
            while(textoTela[i] <> 'l') and (textoTela[i] <> 's') and (textoTela[i] <> 'c')
            and (textoTela[i] <> 't') and (textoTela[i] <> 'a') and (textoTela[i] <> '(')
            and (textoTela[i] <> ')') and (textoTela[i] <> '+') and (textoTela[i] <> '-')
            and (textoTela[i] <> '*') and (textoTela[i] <> '/') and (textoTela[i] <> '^')
            and (textoTela[i] <> '!') and (textoTela[i] <> '~') and (textoTela[i] <> '√') do
            begin
                operandos[indexOperandos] := textoTela[i];
                Inc(i);
                Inc(indexOperandos);
            end;
            caracteres := operandos;
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
            AdicionarNoLista(lista, caracteres);
        end
        {Se o caractere for um abre parenteses, adicionar na Pilha}
        else
        begin
            if (caracteres = '(') then
            begin
                AdicionarNoPilha(pilha, caracteres);
                Inc(parenteses);
            end
            {Se o caractere for um fecha parenteses, retirar da Pilha os itens}
            else
            begin
                if (caracteres = ')') then
                begin
                    dec(parenteses);
                    while (TamanhoPilha(pilha) > 0) and (pilha.topo^.caracteres <> '(') do
                    begin
                        RemoverNoPilha(pilha, retiradoPilha);
                        AdicionarNoLista(lista, retiradoPilha);
                    end
                    {Remover o fecha parenteses da Pilha}
                    RemoverNoPilha(pilha, retiradoPilha);
                end
                {Comparar precedencia do Operador Atual com o do Topo da Pilha
                e talvez remover}
                else
                begin
                    while (TamanhoPilha(pilha) > 0) and (Precedencia(caracteres) <= Precedencia(pilha.topo^.caracteres)) then
                    begin
                         RemoverNoPilha(pilha, retiradoPilha);
                         AdicionarNoLista(lista, retiradoPilha);
                    end
                    AdicionarNoPilha(pilha, caracteres);
                end;
            end;
        end;
    end;

    {Ao acabar de ler o textoTela, esvaziar Pilha e colocar na Lista}
    while TamanhoPilha(pilha) > 0 do
    begin
        RetirarNoPilha(pilha, retiradoPilha);
        AdicionarNoLista(lista, retiradoPilha);
    end;

    {Encontrar Metodo Para Avisar Quantidade Impar de Parenteses}
end;

{Procedimentos Calculo}

function Soma(a, b: real): real;
begin
    {$ASMMODE intel}
    asm
        fld a           // Carrega a no topo da pilha
        fld b           // Carrega o topo da pilha com b
        fadd st(0), st(1)        // Adiciona b ao valor no topo da pilha
        fstp result     // Armazena o resultado em result e desempilha
    end;
    Soma:= result;
end;

function Multiplicar(a, b : real) : real;
begin
    {$ASMMODE intel}
    asm
       fld a
       fld b
       fmul st(0), st(1)
       fstp result
    end;
    Multiplicar:= result;
end;
function UmSobreX(a : real) : real;
begin
    {$ASMMODE intel}
    asm
       fld a
       fld1
       fdiv st, st(1)
       fstp result
    end;
    UmSobreX := result;
end;
function EulerAX(x : real) : real;
var
    euler: real;
begin
    euler:= 2.71828;
    {$ASMMODE intel}
    asm
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

    EulerAX := result;

end;

 function Potencia2(x : real) : real;
 var
     expoente : real;
 begin
     expoente := 2;
     {$ASMMODE intel}
     asm
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
         Potencia2 := result;
 end;














end.

