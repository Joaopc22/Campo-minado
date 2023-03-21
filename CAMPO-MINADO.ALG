Algoritmo "campo-minado"
// Disciplina   : LP
// Descrição   : jogo "campo minado" feito no visualg
// Autor(a)    : João pedro Alferi/Caetano
// Data atual  : 19/03/2023
Var

  enter: inteiro
  
  // variavel que guarda os valores do tabuleiro
  tab1: vetor [1..6, 1..6] de inteiro
  
  // variavel que guarda os caracteres que formam o tabuleiro
  tab2: vetor [1..6, 1..6] de caracter
  
  coluna, linha, c, l, pon:inteiro
  
Inicio

  //pontuação do jogador
  pon := 0

  //mapeamento do campo
     //0 0 1 0 0 0
     //1 0 0 1 0 0
     //0 0 0 0 0 0
     //0 1 1 0 0 0
     //1 0 0 0 0 1
     //0 0 0 0 0 1
  
  tab1[1,1]:= 0
  tab1[1,2]:= 0
  tab1[1,3]:= 1
  tab1[1,4]:= 0
  tab1[1,5]:= 0
  tab1[1,6]:= 0

  tab1[2,1]:= 1
  tab1[2,2]:= 0
  tab1[2,3]:= 0
  tab1[2,4]:= 1
  tab1[2,5]:= 0
  tab1[2,6]:= 0

  tab1[3,1]:= 0
  tab1[3,2]:= 0
  tab1[3,3]:= 0
  tab1[3,4]:= 0
  tab1[3,5]:= 0
  tab1[3,6]:= 0

  tab1[4,1]:= 0
  tab1[4,2]:= 1
  tab1[4,3]:= 1
  tab1[4,4]:= 0
  tab1[4,5]:= 0
  tab1[4,6]:= 0

  tab1[5,1]:= 1
  tab1[5,2]:= 0
  tab1[5,3]:= 0
  tab1[5,4]:= 0
  tab1[5,5]:= 0
  tab1[5,6]:= 1

  tab1[6,1]:= 0
  tab1[6,2]:= 0
  tab1[6,3]:= 0
  tab1[6,4]:= 0
  tab1[6,5]:= 0
  tab1[6,6]:= 1

  escreval ("CAMPO MINADO")
  escreval ("CAMPO MINADO")
  escreval ("L = campo livre  B= Bomba")
  escreval ("aperte enter")
  leia(enter)

  //desenha o campo
  
   para l de 1 ate 6 faca
     para c de 1 ate 6 faca
      tab2[l,c]:= " / X / "
     escreva (tab2 [l,c])
     fimpara
   escreval
   fimpara
     
  //inicia o ciclo
  repita
  
  //escolha do jogador
  escreval ("LINHA de 1 a 6")
  leia (linha)
  escreval ("COLUNA de 1 a 6")
  leia (coluna)

    
   //informa se o jogador acertou, ou não, preenche o campo e adicina os pontos
   se tab1[linha, coluna] = 1  entao
    escreva ("PERDEU!!!")
    tab2[linha,coluna]:= " / B / "
   senao
    escreva ("ACERTOU!!!")
    pon := pon +1
    tab2[linha,coluna]:= " / L / "
   fimse
    
   escreval
   para l de 1 ate 6 faca
     para c de 1 ate 6 faca
     escreva (tab2 [l,c])
     fimpara
   escreval
   fimpara

   se pon = 28 entao
    escreva ("VENCEU")
   fimse

  ate (tab1[linha, coluna] = 1) ou (pon = 28)
  
Fimalgoritmo
