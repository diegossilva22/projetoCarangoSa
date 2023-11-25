Algoritmo "producao"
// Disciplina   : [Lógica de Programação]
// Professor   : Washington Luis
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/11/2023
Var
   // Seção de Declarações das variáveis
   opcao,opc:caracter
   D,A,M:real
   op:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      Escreval("========================== MENU =========================")
      Escreval(" ")
      Escreval("ESCOLHA UMA DAS OPÇÕES ABAIXO:")
      Escreval(" ")
      Escreval("1. Capacidade de produção diária, mensal e anual.(A 40%)")
      Escreval("2. Capacidade de produção diária, mensal e anual.(A 100%)")
      Escreval("3. Para encerrar")
      Escreval("=========================================================")
      Escreva("Digite sua opção: ")
      Leia(op)
      limpatela
      se (op <> 1) e (op <> 2) entao
         Escreval(" ")
         escreval("Opção inválida. Digite a opção correta")
      senao

         Escolha op
         Caso 1


            repita
               escreval(" Produção de Carros: 40% da Produção ")
               escreval(" ")
               escreval("Digite uma das opções: Por Dia/Mês/Ano")
               leia(opcao)
               se opcao = "Dia" entao
                  D<-500/30
                  escreval(D, " Carros produzidos por Dia")
               senao
                  se opcao = "Mês" entao
                     M<-6000/12
                     escreval(M, " Carros produzidos por Mês")
                  senao
                     se opcao = "Ano" entao
                        A<-500*12
                        escreval(A, " Carros produzidos por Ano")
                     senao
                        escreval("Opção inválida!")
                     fimse
                  fimse
               fimse
               escreval(" ")
               escreva("Deseja Continuar?(s)Sim /(n)Não): ")
               leia(opc)
               se(opc <> "s") e (opc <> "n") entao
                  escreval("Opção inválida.")
                  escreval (" ")
               fimse
               se opc = "n" entao
                  interrompa
               fimse
               limpatela
            ate(opc = "n")

         caso 2

            repita
               escreval("  Produção de Carros: 100% da Produção")
               escreval(" ")
               escreval("Digite uma das opções: Por Dia/Mês/Ano")
               leia(opcao)
               se opcao = "Dia" entao
                  D<-1250/30
                  escreval(D, " Carros produzidos por Dia")
               senao
                  se opcao = "Mês" entao
                     M<-15000/12
                     escreval(M, " Carros produzidos por Mês")
                  senao
                     se opcao = "Ano" entao
                        A<-1250*12
                        escreval(A, " Carros produzidos por Ano")
                     senao
                        escreval("Opção inválida!")
                     fimse
                  fimse
               fimse
               escreval(" ")
               escreva("Deseja Continuar?(s)Sim /(n)Não): ")
               leia(opc)
               se(opc <> "s") e (opc <> "n") entao
                  escreval("Opção inválida.")
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