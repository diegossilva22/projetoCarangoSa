Algoritmo "cadastro"
// Disciplina   : [Lógica de Programação]
// Professor   : Washington Luis
// Descrição   : Cadastrar funcionários
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
   // Seção de Declarações das variáveis
   vetorA:vetor[1..100]de cadastroFunc
   i,opcao,op:inteiro

Inicio
   //Bloco de código onde é realizado um cadastro de funcionários
   //por meio de uma estrutura de repetição PARA. Usando algumas
   //variáveis como: nome,endereco e cpf.
   repita
   escreval("Cadastro dos Funcionários: ")
   escreval(" ")
   escreva("Digite o número de funcionários a cadastrar: ")
   leia(op)
   escreval(" ")
      para i de 1 ate op faca
      escreval(" ")
      escreval("Funcionário: ",i)
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
   escreva("(1)NÃO | (SELECIONE QUALQUER TECLA)SIM: ")
   escreval(" ")
   leia(opcao)
   ate(opcao=1)
