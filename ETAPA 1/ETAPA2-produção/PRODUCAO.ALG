Algoritmo "producao"
// Disciplina   : [L�gica de Programa��o]
// Professor   : Washington Luis
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/11/2023
Var
   // Se��o de Declara��es das vari�veis
   opcao,opc:caracter
   D,A,M:real
   op:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      Escreval("========================== MENU =========================")
      Escreval(" ")
      Escreval("ESCOLHA UMA DAS OP��ES ABAIXO:")
      Escreval(" ")
      Escreval("1. Capacidade de produ��o di�ria, mensal e anual.(A 40%)")
      Escreval("2. Capacidade de produ��o di�ria, mensal e anual.(A 100%)")
      Escreval("3. Para encerrar")
      Escreval("=========================================================")
      Escreva("Digite sua op��o: ")
      Leia(op)
      limpatela
      se (op <> 1) e (op <> 2) entao
         Escreval(" ")
         escreval("Op��o inv�lida. Digite a op��o correta")
      senao

         Escolha op
         Caso 1


            repita
               escreval(" Produ��o de Carros: 40% da Produ��o ")
               escreval(" ")
               escreval("Digite uma das op��es: Por Dia/M�s/Ano")
               leia(opcao)
               se opcao = "Dia" entao
                  D<-500/30
                  escreval(D, " Carros produzidos por Dia")
               senao
                  se opcao = "M�s" entao
                     M<-6000/12
                     escreval(M, " Carros produzidos por M�s")
                  senao
                     se opcao = "Ano" entao
                        A<-500*12
                        escreval(A, " Carros produzidos por Ano")
                     senao
                        escreval("Op��o inv�lida!")
                     fimse
                  fimse
               fimse
               escreval(" ")
               escreva("Deseja Continuar?(s)Sim /(n)N�o): ")
               leia(opc)
               se(opc <> "s") e (opc <> "n") entao
                  escreval("Op��o inv�lida.")
                  escreval (" ")
               fimse
               se opc = "n" entao
                  interrompa
               fimse
               limpatela
            ate(opc = "n")

         caso 2

            repita
               escreval("  Produ��o de Carros: 100% da Produ��o")
               escreval(" ")
               escreval("Digite uma das op��es: Por Dia/M�s/Ano")
               leia(opcao)
               se opcao = "Dia" entao
                  D<-1250/30
                  escreval(D, " Carros produzidos por Dia")
               senao
                  se opcao = "M�s" entao
                     M<-15000/12
                     escreval(M, " Carros produzidos por M�s")
                  senao
                     se opcao = "Ano" entao
                        A<-1250*12
                        escreval(A, " Carros produzidos por Ano")
                     senao
                        escreval("Op��o inv�lida!")
                     fimse
                  fimse
               fimse
               escreval(" ")
               escreva("Deseja Continuar?(s)Sim /(n)N�o): ")
               leia(opc)
               se(opc <> "s") e (opc <> "n") entao
                  escreval("Op��o inv�lida.")
                  escreval (" ")
               fimse
               se opc = "n" entao
                  interrompa
               fimse
               limpatela
            ate(opc = "n")


         fimescolha

      fimse
   ate(op = 3)


Fimalgoritmo