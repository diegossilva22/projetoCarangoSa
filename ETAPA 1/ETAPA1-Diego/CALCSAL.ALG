Algoritmo "calcSAL"
// Disciplina   : [Lógica de Programação]
// Professor   : Washington Luis
// Descrição   : Calcular salários
// Autor(a)    : Diego dos santos silva
// Data atual  : 10/11/2023
Var
   // Seção de Declarações das variáveis
   op:inteiro

   //Procedimento para calcular o salário de funcionários de determinados
   //níveis. O procedimento consiste em multiplicar o valor que o funcionário
   //ganha por hora e multiplicar a esse valor as Horas trabalhadas e os dias
   //do mês.
procedimento calSAL(opc:inteiro)
var
   hr:inteiro
   salarioOP,salarioSP,salarioGR,salarioDR:real
inicio
   se opc = 1 entao
      escreva("Número de Horas trabalhadas: ")
      leia(hr)
      escreval(" ")
      salarioOP<-15* hr* 30
      escreval("Salário do Operário:",salarioOP, " R$")
   senao
      se opc = 2 entao
         escreva("Número de Horas trabalhadas: ")
         leia(hr)
         escreval(" ")
         salarioSP<-40* hr* 30
         escreval("Salário do Supervisor:",salario,SP " R$")
      senao
         se opc = 3 entao
            escreva("Número de Horas trabalhadas: ")
            leia(hr)
            escreval(" ")
            salarioGR<-60* hr* 30
            escreval("Salário do Gerente:",salarioGR, " R$")
         senao
            se opc = 4 entao
               escreva("Número de Horas trabalhadas: ")
               leia(hr)
               escreval(" ")
               salarioDR<-80* hr* 30
               escreval("Salário do Diretor:",salarioDR, " R$")
            senao
               escreval("Opção incorreta!")
            fimse
         fimse
      fimse
   fimse
fimprocedimento

Inicio
   //Esse bloco de código exibe opções para escolha do usuário de calcular o
   //salário de determinado nível. Em seguida é feita a leitura da opção
   //escolhida e chama o procedimento para calcular o salário.
   escreval("Calcular salários:")
   escreval(" ")
   escreval("(1)Operários")
   escreval("(2)Supervisores")
   escreval("(3)Gerentes")
   escreval("(4)Diretores")
   escreval(" ")
   escreva("Escolha uma das opções acima: ")
   leia(op)
   calSAL(op)
Fimalgoritmo