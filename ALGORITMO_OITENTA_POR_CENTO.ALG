Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/11/2023

tipo
   cadastroFuncOP = registro
      nomeA : caractere
      CPFA : inteiro
      RGA : inteiro
      enderecoA : caractere
      telefoneA : inteiro
      qntdFilhosA : inteiro
   fimregistro

   cadastroFuncSP = registro
      nomeB : caractere
      CPFB : inteiro
      RGB : inteiro
      enderecoB : caractere
      telefoneB : inteiro
      qntdFilhosB : inteiro
   fimregistro

   cadastroFuncGR = registro
      nomeC : caractere
      CPFC : inteiro
      RGC : inteiro
      enderecoC : caractere
      telefoneC : inteiro
      qntdFilhosC : inteiro
   fimregistro

   cadastroFuncDR = registro
      nomeD : caractere
      CPFD : inteiro
      RGD : inteiro
      enderecoD : caractere
      telefoneD : inteiro
      qntdFilhosD : inteiro
   fimregistro

Var
// Se��o de Declara��es das vari�veis 

op:inteiro
salOPTotal,salSPTotal,salGRTotal,salDRTotal,salariosTotais:real
hrEXOP,hrEXSP:inteiro
valueHrExOP,valueHrExSP:real

vetorA:vetor[1..100]de cadastroFuncOP
vetorB:vetor[1..100]de cadastroFuncSP
vetorC:vetor[1..100]de cadastroFuncGR
vetorD:vetor[1..100]de cadastroFuncDR
i,opcao,opcFunc:inteiro
opcaoA,opcaoB,opcaoC,opcaoD:inteiro
opA,opB,opC,opD:inteiro

qtdOP,qtdSP,qtdGR,qtdDR:inteiro
desconto1OP,desconto1SP,desconto1GR,desconto1DR:real
desconto2OP,desconto2SP,desconto2GR,desconto2DR:real
descontoTOP,descontoTSP,descontoTGR,descontoTDR,descontosALL:real


procedimento cadastroFuncionario()
var

inicio
   repita
      escreval("Cadastro dos Funcion�rios: ")
      escreval(" ")
      escreval("(1)Oper�rios")
      escreval("(2)Supervisores")
      escreval("(3)Gerentes")
      escreval("(4)Diretores")
      escreval(" ")
      escreva("Escolha uma das op��es acima: ")
      leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Op��o de escolha Inv�lida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Oper�rio[1] / Supervisor[2] / Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das op��es acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 1 entao
            escreval("")
            escreva("Digite o n�mero de funcion�rios a cadastrar: ")
            leia(opA)
            escreval(" ")
            qtdOP<-0
            repita
            para i de 1 ate opA faca
               qtdOP<-qtdOP+1
               escreval(" ")
               escreval("Funcion�rio: ",i)
               escreva("Nome: ")
               leia(vetorA[i].nomeA)
               escreva("CPF: ")
               leia(vetorA[i].CPFA)
               escreva("RG: ")
               leia(vetorA[i].RGA)
               escreva("endereco: ")
               leia(vetorA[i].enderecoA)
               escreva("Telefone: ")
               leia(vetorA[i].telefoneA)
               escreva("Quantidade de Filhos: ")
               leia(vetorA[i].qntdFilhosA)
               escreval(" ")
            fimpara

            escreval("Continuar cadastro de Oper�rios:")
            escreva("(9)N�O | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoA)
            ate(opcaoA=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Supervisor[2] / Gerente[3] / Diretor[4]")
         escreval("")
         escreval("Escolha uma das op��es acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Op��o de escolha Inv�lida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Supervisor[2] / Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das op��es acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 2 entao
            escreval("")
            escreva("Digite o n�mero de funcion�rios a cadastrar: ")
            leia(opB)
            escreval(" ")
            qtdSP<-0
            repita
               para i de 1 ate opB faca
                  qtdSP<-qtdSP+1
                  escreval(" ")
                  escreval("Funcion�rio: ",i)
                  escreva("Nome: ")
                  leia(vetorB[i].nomeB)
                  escreva("CPF: ")
                  leia(vetorB[i].CPFB)
                  escreva("RG: ")
                  leia(vetorB[i].RGB)
                  escreva("endereco: ")
                  leia(vetorB[i].enderecoB)
                  escreva("Telefone: ")
                  leia(vetorB[i].telefoneB)
                  escreva("Quantidade de Filhos: ")
                  leia(vetorB[i].qntdFilhosB)
                  escreval(" ")
               fimpara
            escreval("Continuar cadastro de Supervisores?")
            escreva("(9)N�O | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoB)
            ate(opcaoB=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Gerente[3] / Diretor[4]")
         escreval("")
         escreval("Escolha uma das op��es acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Op��o de escolha Inv�lida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das op��es acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 3 entao
            escreval("")
            escreva("Digite o n�mero de funcion�rios a cadastrar: ")
            leia(opC)
            escreval(" ")
            qtdGR<-0
            repita
               para i de 1 ate opC faca
                  qtdGR<-qtdGR+1
                  escreval(" ")
                  escreval("Funcion�rio: ",i)
                  escreva("Nome: ")
                  leia(vetorC[i].nomeC)
                  escreva("CPF: ")
                  leia(vetorC[i].CPFC)
                  escreva("RG: ")
                  leia(vetorC[i].RGC)
                  escreva("endereco: ")
                  leia(vetorC[i].enderecoC)
                  escreva("Telefone: ")
                  leia(vetorC[i].telefoneC)
                  escreva("Quantidade de Filhos: ")
                  leia(vetorC[i].qntdFilhosC)
                  escreval(" ")
               fimpara
            escreval("Continuar cadastro de Gerentes?")
            escreva("(9)N�O | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoC)
            ate(opcaoC=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Diretor[4]")
         escreval("")
         escreval("Escolha uma das op��es acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Op��o de escolha Inv�lida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Diretor[4]")
            escreval("")
            escreval("Escolha uma das op��es acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 4 entao
            escreval("")
            escreva("Digite o n�mero de funcion�rios a cadastrar: ")
            leia(opD)
            escreval(" ")
            qtdDR<-0
            repita
               para i de 1 ate opD faca
                  qtdDR<-qtdDR+1
                  escreval(" ")
                  escreval("Funcion�rio: ",i)
                  escreva("Nome: ")
                  leia(vetorD[i].nomeD)
                  escreva("CPF: ")
                  leia(vetorD[i].CPFD)
                  escreva("RG: ")
                  leia(vetorD[i].RGD)
                  escreva("endereco: ")
                  leia(vetorD[i].enderecoD)
                  escreva("Telefone: ")
                  leia(vetorD[i].telefoneD)
                  escreva("Quantidade de Filhos: ")
                  leia(vetorD[i].qntdFilhosD)
                  escreval(" ")
               fimpara
            escreval("Continuar cadastro de Diretores?")
            escreva("(9)N�O | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoD)
            ate(opcaoD=9)
         fimse

   escreval("Continuar cadastro de Funcion�rios??")
   escreva("(0)N�O | (1)SIM: ")
   escreval(" ")
   leia(opcao)
   ate(opcao=0)

fimprocedimento

procedimento despesas()
var

inicio

fimprocedimento

procedimento calSAL()
var
   hr:inteiro
   salarioOP,salarioSP,salarioGR,salarioDR:real
inicio
   escreval(" ")
   escreval("Calcular sal�rios:")
   escreval(" ")
   escreval("[Considere 8h de trabalho convencionais + Horas extras]")
   escreval(" ")
   escreval(" ")
   escreval("Quantas horas extras os Oper�rios fizeram no M�s?")
   leia(hrEXOP)
   escreval(" ")
   escreval("Quantas horas extras os Supervisores fizeram no M�s?")
   leia(hrEXSP)

   se hrEXOP > 0 entao
      valueHrExOP<-30*hrEXOP
   fimse

   se hrEXSP > 0 entao
      valueHrExSP<-80*hrEXSP
   fimse

   escreval(" ")
   salarioOP<-15* 8* 30
   salarioOP<-salarioOP+valueHrExOP
   escreval("Sal�rio BRUTO do Oper�rio:",salarioOP, " R$")

   escreval(" ")
   salarioSP<-40* 8* 30
   salarioSP<-salarioSP+valueHrExSP
   escreval("Sal�rio BRUTO do Supervisor:",salarioSP, " R$")

   escreval(" ")
   salarioGR<-60* 8* 30
   escreval("Sal�rio BRUTO do Gerente:",salarioGR, " R$")

   escreval(" ")
   salarioDR<-80* 8* 30
   escreval("Sal�rio BRUTO do Diretor:",salarioDR, " R$")
   
   escreval(" ")
   escreval(" ")
   escreval("Ap�s o deconto previsto por Lei, o sal�rio L�quido dos funcion�rios ser�:")
   
   //DECONTO DE SAL�RIO L�QUIDO DE OPER�RIO
   se salarioOP >= 1000 entao
      se salarioOP <= 2500 entao
         desconto1OP<- salarioOP* 0.08
         salarioOP<-salarioOP - desconto1OP
      fimse

      se salarioOP > 2500 entao
         se salarioOP <= 4000 entao
            desconto1OP<- salarioOP* 0.1
            salarioOP<-salarioOP - desconto1OP
         fimse

         se salarioOP > 4000 entao
            se salarioOP <= 5500 entao
               desconto1OP<- salarioOP* 0.12
               salarioOP<-salarioOP - desconto1OP
            fimse

            se salarioOP > 5500 entao
               desconto1OP<- salarioOP* 0.15
               salarioOP<-salarioOP - desconto1OP
            fimse
         fimse
      fimse
   fimse
   
   //DECONTO DE SAL�RIO L�QUIDO DE SUPERVISOR --
   se salarioSP >= 1000 entao
      se salarioSP <= 2500 entao
         desconto1SP<- salarioSP* 0.08
         salarioSP<-salarioSP - desconto1SP
      fimse

      se salarioSP > 2500 entao
         se salarioSP <= 4000 entao
            desconto1SP<- salarioSP* 0.1
            salarioSP<-salarioSP - desconto1SP
         fimse

         se salarioSP > 4000 entao
            se salarioSP <= 5500 entao
               desconto1SP<- salarioSP* 0.12
               salarioSP<-salarioSP - desconto1SP
            fimse

            se salarioSP > 5500 entao
               desconto1SP<- salarioSP* 0.15
               salarioSP<-salarioSP - desconto1SP
            fimse
         fimse
      fimse
   fimse
   
   //DECONTO DE SAL�RIO L�QUIDO DE GERENTE
   se salarioGR >= 1000 entao
      se salarioGR <= 2500 entao
         desconto1GR<- salarioGR* 0.08
         salarioGR<-salarioGR - desconto1GR
      fimse

      se salarioGR > 2500 entao
         se salarioGR <= 4000 entao
            desconto1GR<- salarioGR* 0.1
            salarioGR<-salarioGR - desconto1GR
         fimse

         se salarioGR > 4000 entao
            se salarioGR <= 5500 entao
               desconto1GR<- salarioGR* 0.12
               salarioGR<-salarioGR - desconto1GR
            fimse

            se salarioGR > 5500 entao
               desconto1GR<- salarioGR* 0.15
               salarioGR<-salarioGR - desconto1GR
            fimse
         fimse
      fimse
   fimse
   
   //DECONTO DE SAL�RIO L�QUIDO DE DIRETOR
   se salarioDR >= 1000 entao
      se salarioDR <= 2500 entao
         desconto1DR<- salarioDR* 0.08
         salarioDR<-salarioDR - desconto1DR
      fimse

      se salarioDR > 2500 entao
         se salarioDR <= 4000 entao
            desconto1DR<- salarioDR* 0.1
            salarioDR<-salarioDR - desconto1DR
         fimse

         se salarioDR > 4000 entao
            se salarioDR <= 5500 entao
               desconto1DR<- salarioDR* 0.12
               salarioDR<-salarioDR - desconto1DR
            fimse

            se salarioDR > 5500 entao
               desconto1DR<- salarioDR* 0.15
               salarioDR<-salarioDR - desconto1DR
            fimse
         fimse
      fimse
   fimse
   
   escreval(" ")
   escreval("O sal�rio L�quido dos Oper�rios � de: ",salarioOP," R$")
   escreval(" ")
   
   escreval(" ")
   escreval("O sal�rio L�quido dos Supervisores � de: ",salarioSP," R$")
   escreval(" ")
   
   escreval(" ")
   escreval("O sal�rio L�quido dos Gerentes � de: ",salarioGR," R$")
   escreval(" ")

   escreval(" ")
   escreval("O sal�rio L�quido dos Diretores � de: ",salarioDR," R$")
   escreval(" ")
   
   //DESCONTO DE SAL�RIO IRPF DOS OPER�RIOS
   se salarioOP <= 1904 entao
      desconto2OP<-0
      salarioOP<-salarioOP - desconto2OP
   fimse
   
   se salarioOP > 1904 entao
      se salarioOP <= 2827 entao
         desconto2OP<-salarioOP* 0.075
         salarioOP<-salarioOP - desconto2OP
      fimse
      
      se salarioOP <= 3752 entao
         desconto2OP<-salarioOP* 0.15
         salarioOP<-salarioOP - desconto2OP
      fimse
      
      se salarioOP > 3752 entao
         desconto2OP<-salarioOP* 0.22
         salarioOP<-salarioOP - desconto2OP
      fimse
   fimse
   
   //DESCONTO DE SAL�RIO IRPF DOS SUPERVISORES
   se salarioSP <= 1904 entao
      desconto2SP<-0
      salarioSP<-salarioSP - desconto2SP
   fimse

   se salarioSP > 1904 entao
      se salarioSP <= 2827 entao
         desconto2SP<-salarioSP* 0.075
         salarioSP<-salarioSP - desconto2SP
      fimse

      se salarioSP <= 3752 entao
         desconto2SP<-salarioSP* 0.15
         salarioSP<-salarioSP - desconto2SP
      fimse

      se salarioSP > 3752 entao
         desconto2SP<-salarioSP* 0.22
         salarioSP<-salarioSP - desconto2SP
      fimse
   fimse
   
   //DESCONTO DE SAL�RIO IRPF DOS GERENTES
   se salarioGR <= 1904 entao
      desconto2GR<-0
      salarioGR<-salarioGR - desconto2GR
   fimse

   se salarioGR > 1904 entao
      se salarioGR <= 2827 entao
         desconto2GR<-salarioGR* 0.075
         salarioGR<-salarioGR - desconto2GR
      fimse

      se salarioGR <= 3752 entao
         desconto2GR<-salarioGR* 0.15
         salarioGR<-salarioGR - desconto2GR
      fimse

      se salarioGR > 3752 entao
         desconto2GR<-salarioGR* 0.22
         salarioGR<-salarioGR - desconto2GR
      fimse
   fimse
   
   //DESCONTO DE SAL�RIO IRPF DOS DIRETORES
   se salarioDR <= 1904 entao
      desconto2DR<-0
      salarioDR<-salarioDR - desconto2DR
   fimse

   se salarioDR > 1904 entao
      se salarioDR <= 2827 entao
         desconto2DR<-salarioDR* 0.075
         salarioDR<-salarioDR - desconto2DR
      fimse

      se salarioDR <= 3752 entao
         desconto2DR<-salarioDR* 0.15
         salarioDR<-salarioDR - desconto2DR
      fimse

      se salarioDR > 3752 entao
         desconto2DR<-salarioDR* 0.22
         salarioDR<-salarioDR - desconto2DR
      fimse
   fimse
   
   escreval(" ")
   escreval("O sal�rio dos Oper�rios p�s desconto � de: ",salarioOP," R$")
   salOPTotal<-salarioOP* qtdOP
   escreval("O TOTAL dos sal�rios dos Oper�rios � de: ",salOPTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O sal�rio dos Supervisores p�s desconto � de: ",salarioSP," R$")
   salSPTotal<-salarioSP* qtdSP
   escreval("O TOTAL dos sal�rios dos Supervisores � de: ",salSPTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O sal�rio dos Gerentes p�s desconto � de: ",salarioGR," R$")
   salGRTotal<-salarioGR* qtdGR
   escreval("O TOTAL dos sal�rios dos Gerentes � de: ",salGRTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O sal�rio dos Diretores p�s desconto � de: ",salarioDR," R$")
   salDRTotal<-salarioDR* qtdDR
   escreval("O TOTAL dos sal�rios dos Diretores � de: ",salDRTotal," R$")
   escreval(" ")

fimprocedimento

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   cadastroFuncionario()
   se opcao = 1 entao
      cadastroFuncionario()
   fimse

   calSAL()

Fimalgoritmo