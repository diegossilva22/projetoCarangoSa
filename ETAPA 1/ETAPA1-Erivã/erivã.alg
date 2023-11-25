Algoritmo "semnome"
// Disciplina   : [Lógica de Programação]
// Professor   : Washington Luis
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/11/2023
tipo
   Produto = registro
      nome:caracter
      codigo:inteiro
      dtFabricacao:caracter
      qtd:inteiro
      fornecedor:caracter
      valor:real
   fimregistro

Var
   // Seção de Declarações das variáveis
   produtos: vetor[1..10] de Produto
   qtdProdutos,i,j,k,opcao,produtoPesquisadoC: inteiro
   opc,produtoPesquisadoN,esc,esco,escol: caractere
   prodEncontrado:logico

procedimento cadastroProd( )
inicio

   escreva("Digite o Nome do Produto: ")
   leia(produtos[i].nome)

   escreva("Digite o Código do Produto: ")
   leia(produtos[i].codigo)

   escreva("Digite a Data de Fabricação do Produto (dd/mm/aaaa): ")
   leia(produtos[i].dtFabricacao)

   escreva("Digite o Nome do Fornecedor: ")
   leia(produtos[i].fornecedor)

   escreva("Digite a Quantidade do Produto: ")
   leia(produtos[i].qtd)

   escreva("Digite o Valor do Produto: ")
   leia(produtos[i].valor)
   escreval (" ")


fimprocedimento

procedimento cadastroP( )
inicio

   para i de 1 ate 10 faca
      se (produtos[i].codigo = 0) entao
         escreva("Digite o Nome do Produto: ")
         leia(produtos[i].nome)

         escreva("Digite o Código do Produto: ")
         leia(produtos[i].codigo)

         escreva("Digite a Data de Fabricação do Produto (dd/mm/aaaa): ")
         leia(produtos[i].dtFabricacao)

         escreva("Digite o Nome do Fornecedor: ")
         leia(produtos[i].fornecedor)

         escreva("Digite a Quantidade do Produto: ")
         leia(produtos[i].qtd)

         escreva("Digite o Valor do Produto: ")
         leia(produtos[i].valor)
         escreval (" ")
         interrompa
      fimse
   fimpara

fimprocedimento

procedimento exibirProd( )
inicio
   para i de 1 ate 10 faca
      escreval("Nome: ", produtos[i].nome)
      escreval("Código: ", produtos[i].codigo)
      escreval("Data de Fabricação: ", produtos[i].dtFabricacao)
      escreval("Fornecedor: ", produtos[i].fornecedor)
      escreval("Quantidade: ", produtos[i].qtd)
      escreval("Valor: ", produtos[i].valor)
      escreval(" ")
   fimpara
fimprocedimento

procedimento tratErros( )
inicio
senao
   escreval("Opção inválida!")
fimprocedimento


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval (" ")
   escreval (" ")

   escreval ("SETOR DE ESTOQUE")
   escreval (" ")
   escreval ("CADASTRO DE PRODUTOS")
   escreval (" ")

   // Menu de opções
   Repita
      Escreval("================ MENU ================")
      Escreval(" ")
      Escreval("ESCOLHA UMA DAS OPÇÕES ABAIXO:")
      Escreval(" ")
      Escreval("1. Para Cadastrar Produto")
      Escreval("2. Para Pesquisar Produto por Código")
      Escreval("3. Para Pesquisar Produto por Nome")
      Escreval("4. Para exibir produtos cadastrados")
      Escreval("5. Para encerrar")
      Escreval("======================================")
      Escreva("Digite sua opção: ")
      Leia(opcao)
      limpatela
      se (opcao < 1) e (opcao > 5) entao
         Escreval(" ")
         escreval("Opção inválida. Digite a opção correta")
      senao

         Escolha opcao
         Caso 1
            //Laço de repetição para cadastrar os produtos
            para i de 1 ate 10 faca
               se (produtos[i].codigo = 0) entao
                  cadastroProd( )
                  escreva("Deseja cadastrar mais Produtos? (s)Sim /(n)Não): ")
                  leia(opc)
                  se opc = "n" entao
                     interrompa
                  fimse
                  se(opc <> "s") e (opc<> "n") entao
                     escreval("Opção inválida.")
                     escreval (" ")
                     interrompa
                  fimse
               fimse
            fimpara
            limpatela
            
            // Pesquisa um produto por código

         caso 2
            escreval("Pesquisa de produto por código")
            escreval(" ")
            repita
               prodEncontrado<-falso
               escreva("Insira o código do produto: ")
               leia(produtoPesquisadoC)

               para i de 1 ate 10 faca
                  se produtoPesquisadoC = produtos[i].codigo entao
                     escreval("Nome: ", produtos[i].nome)
                     escreval("Código: ", produtos[i].codigo)
                     escreval("Data de Fabricação: ", produtos[i].dtFabricacao)
                     escreval("Fornecedor: ", produtos[i].fornecedor)
                     escreval("Quantidade: ", produtos[i].qtd)
                     escreval("Valor: ", produtos[i].valor)
                     escreval(" ")
                     prodEncontrado<-verdadeiro
                  fimse
               fimpara

               se(prodEncontrado = falso) entao
                  escreval("Código inválido!")
                  escreval(" ")
                  escreval("Deseja cadastrar novo produto? (s)sim (n)não")
                  leia(esco)
                  se esco = "s" entao
                     para i de 1 ate 10 faca
                        se (produtos[i].codigo = 0) entao
                           cadastroProd( )
                           escreva("Cadastrar mais Produtos?(s)Sim /(n)Não): ")
                           leia(opc)
                           se opc = "n" entao
                              interrompa
                           fimse
                           se(opc <> "s") e (opc<> "n") entao
                              escreval("Opção inválida.")
                              escreval (" ")
                           fimse
                        fimse
                     fimpara
                  fimse

                  escreva("Continuar na pesquisa?(s)Sim /(n)Não): ")
                  leia(esc)
                  se(esc <> "s") e (esc <> "n") entao
                     escreval("Opção inválida.")
                     escreval (" ")
                  senao
                     interrompa
                  fimse
               fimse
            ate(i = 11)
            limpatela

         caso 3
            escreval("Pesquisa de produto por nome")
            escreval(" ")
            repita
               prodEncontrado<-falso
               escreva("Insira o nome do produto: ")
               leia(produtoPesquisadoN)

               para i de 1 ate 10 faca
                  se produtoPesquisadoN = produtos[i].nome entao
                     escreval("Nome: ", produtos[i].nome)
                     escreval("Código: ", produtos[i].codigo)
                     escreval("Data de Fabricação: ", produtos[i].dtFabricacao)
                     escreval("Fornecedor: ", produtos[i].fornecedor)
                     escreval("Quantidade: ", produtos[i].qtd)
                     escreval("Valor: ", produtos[i].valor)
                     escreval(" ")
                     prodEncontrado<-verdadeiro
                  fimse
               fimpara

               se(prodEncontrado = falso) entao
                  escreval("Código inválido!")
                  escreval(" ")
                  escreval("Deseja cadastrar novo produto? (s)sim (n)não")
                  leia(esco)
                  se esco = "s" entao
                     para i de 1 ate 10 faca
                        se (produtos[i].codigo = 0) entao
                           cadastroProd( )
                           escreva("Cadastrar mais Produtos?(s)Sim /(n)Não): ")
                           leia(opc)
                           se opc = "n" entao
                              interrompa
                           fimse
                           se(opc <> "s") e (opc<> "n") entao
                              escreval("Opção inválida.")
                              escreval (" ")
                           fimse
                        fimse
                     fimpara
                  fimse
                  escreva("Continuar na pesquisa?(s)Sim /(n)Não): ")
                  leia(esc)
                  se(esc <> "s") e (esc <> "n") entao
                     escreval("Opção inválida.")
                     escreval (" ")
                  senao
                     interrompa
                  fimse
               fimse

            ate(i = 11)
            limpatela

         caso 4
            escreval("Produtos cadastrados")
            exibirProd( )

         fimescolha
      fimse
   ate(opcao = 5)
   limpatela

Fimalgoritmo