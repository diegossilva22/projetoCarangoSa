Algoritmo "calcSAL"
// Disciplina   : [L�gica de Programa��o]
// Professor   : Washington Luis
// Descri��o   : Calcular sal�rios
// Autor(a)    : Diego dos santos silva
// Data atual  : 10/11/2023
Var
   // Se��o de Declara��es das vari�veis
   op:inteiro

   //Procedimento para calcular o sal�rio de funcion�rios de determinados
   //n�veis. O procedimento consiste em multiplicar o valor que o funcion�rio
   //ganha por hora e multiplicar a esse valor as Horas trabalhadas e os dias
   //do m�s.
procedimento calSAL(opc:inteiro)
var
   hr:inteiro
   salarioOP,salarioSP,salarioGR,salarioDR:real
inicio
   se opc = 1 entao
      escreva("N�mero de Horas trabalhadas: ")
      leia(hr)
      escreval(" ")
      salarioOP<-15* hr* 30
      escreval("Sal�rio do Oper�rio:",salarioOP, " R$")
   senao
      se opc = 2 entao
         escreva("N�mero de Horas trabalhadas: ")
         leia(hr)
         escreval(" ")
         salarioSP<-40* hr* 30
         escreval("Sal�rio do Supervisor:",salario,SP " R$")
      senao
         se opc = 3 entao
            escreva("N�mero de Horas trabalhadas: ")
            leia(hr)
            escreval(" ")
            salarioGR<-60* hr* 30
            escreval("Sal�rio do Gerente:",salarioGR, " R$")
         senao
            se opc = 4 entao
               escreva("N�mero de Horas trabalhadas: ")
               leia(hr)
               escreval(" ")
               salarioDR<-80* hr* 30
               escreval("Sal�rio do Diretor:",salarioDR, " R$")
            senao
               escreval("Op��o incorreta!")
            fimse
         fimse
      fimse
   fimse
fimprocedimento

Inicio
   //Esse bloco de c�digo exibe op��es para escolha do usu�rio de calcular o
   //sal�rio de determinado n�vel. Em seguida � feita a leitura da op��o
   //escolhida e chama o procedimento para calcular o sal�rio.
   escreval("Calcular sal�rios:")
   escreval(" ")
   escreval("(1)Oper�rios")
   escreval("(2)Supervisores")
   escreval("(3)Gerentes")
   escreval("(4)Diretores")
   escreval(" ")
   escreva("Escolha uma das op��es acima: ")
   leia(op)
   calSAL(op)
Fimalgoritmo