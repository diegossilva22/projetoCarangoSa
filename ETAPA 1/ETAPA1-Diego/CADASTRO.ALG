Algoritmo "cadastro"
// Disciplina   : [L�gica de Programa��o]
// Professor   : Washington Luis
// Descri��o   : Cadastrar funcion�rios
// Autor(a)    : Diego dos santos silva
// Data atual  : 09/11/2023
tipo
   cadastroFunc = registro
      nome : caractere
      CPF : inteiro
      RG : inteiro
      endereco : caractere
      telefone : inteiro
      qntdFilhos : inteiro
   fimregistro

Var
   // Se��o de Declara��es das vari�veis
   vetorA:vetor[1..100]de cadastroFunc
   i,opcao,op:inteiro

Inicio
   //Bloco de c�digo onde � realizado um cadastro de funcion�rios
   //por meio de uma estrutura de repeti��o PARA. Usando algumas
   //vari�veis como: nome,endereco e cpf.
   repita
   escreval("Cadastro dos Funcion�rios: ")
   escreval(" ")
   escreva("Digite o n�mero de funcion�rios a cadastrar: ")
   leia(op)
   escreval(" ")
      para i de 1 ate op faca
      escreval(" ")
      escreval("Funcion�rio: ",i)
         escreva("Nome: ")
         leia(vetorA[i].nome)
         escreva("CPF: ")
         leia(vetorA[i].CPF)
         escreva("RG: ")
         leia(vetorA[i].RG)
         escreva("endereco: ")
         leia(vetorA[i].endereco)
         escreva("Telefone: ")
         leia(vetorA[i].telefone)
         escreva("Quantidade de Filhos: ")
         leia(vetorA[i].qntdFilhos)

         escreval(" ")
      fimpara
   escreval("Continuar cadastro?")
   escreva("(1)N�O | (SELECIONE QUALQUER TECLA)SIM: ")
   escreval(" ")
   leia(opcao)
   ate(opcao=1)
