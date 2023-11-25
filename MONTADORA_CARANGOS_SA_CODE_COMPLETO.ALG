Algoritmo "Montadora_Carangos_SA_Code_Completo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Washington Luis Souza da Anunciação
// Autor(a)    : Rodrigo Arcanjo, Erivã Tegin, Diego
// Data atual  : 20/11/2023

tipo
   Produto = registro
      nome:caracter
      codigo:inteiro
      dtFabricacao:caracter
      qtd:inteiro
      fornecedor:caracter
      valor:real
   fimregistro
   
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
// Seção de Declarações das variáveis 

produtos: vetor[1..10] de Produto
qtdProdutos,i,j,k,opcao,produtoPesquisadoC: inteiro
produtoPesquisadoN,esc,esco,escol: caractere
prodEncontrado:logico

op:inteiro
salOPTotal,salSPTotal,salGRTotal,salDRTotal,salariosTotais:real
hrEXOP,hrEXSP:inteiro
valueHrExOP,valueHrExSP:real

vetorA:vetor[1..100]de cadastroFuncOP
vetorB:vetor[1..100]de cadastroFuncSP
vetorC:vetor[1..100]de cadastroFuncGR
vetorD:vetor[1..100]de cadastroFuncDR
opcFunc:inteiro
opcaoA,opcaoB,opcaoC,opcaoD:inteiro
opA,opB,opC,opD:inteiro

qtdOP,qtdSP,qtdGR,qtdDR:inteiro
desconto1OP,desconto1SP,desconto1GR,desconto1DR:real
desconto2OP,desconto2SP,desconto2GR,desconto2DR:real
descontoTOP,descontoTSP,descontoTGR,descontoTDR,descontosALL:real
despesaAGUA,despesaLUZ,despesaAGUAiDEAL,despesaLUZiDEAL:real
qtdCarrosATUAL,qtdCarrosIDEAL:inteiro
despesasATUAlTOTAIS,despesasIDEAlTOTAIS:real
custoCarroATUAL,custoCarroIDEAL:real
lucroATUAL,lucroIDEAL:real

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

procedimento cadastroFuncionario()
var

inicio
   repita
      escreval("Cadastro dos Funcionários: ")
      escreval(" ")
      escreval("(1)Operários")
      escreval("(2)Supervisores")
      escreval("(3)Gerentes")
      escreval("(4)Diretores")
      escreval(" ")
      escreva("Escolha uma das opções acima: ")
      leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Opção de escolha Inválida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Operário[1] / Supervisor[2] / Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das opções acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 1 entao
            escreval("")
            escreva("Digite o número de funcionários a cadastrar: ")
            leia(opA)
            escreval(" ")
            qtdOP<-0
            repita
            para i de 1 ate opA faca
               qtdOP<-qtdOP+1
               escreval(" ")
               escreval("Funcionário: ",i)
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

            escreval("Continuar cadastro de Operários:")
            escreva("(9)NÃO | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoA)
            ate(opcaoA=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Supervisor[2] / Gerente[3] / Diretor[4]")
         escreval("")
         escreval("Escolha uma das opções acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Opção de escolha Inválida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Supervisor[2] / Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das opções acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 2 entao
            escreval("")
            escreva("Digite o número de funcionários a cadastrar: ")
            leia(opB)
            escreval(" ")
            qtdSP<-0
            repita
               para i de 1 ate opB faca
                  qtdSP<-qtdSP+1
                  escreval(" ")
                  escreval("Funcionário: ",i)
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
            escreva("(9)NÃO | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoB)
            ate(opcaoB=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Gerente[3] / Diretor[4]")
         escreval("")
         escreval("Escolha uma das opções acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Opção de escolha Inválida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Gerente[3] / Diretor[4]")
            escreval("")
            escreval("Escolha uma das opções acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 3 entao
            escreval("")
            escreva("Digite o número de funcionários a cadastrar: ")
            leia(opC)
            escreval(" ")
            qtdGR<-0
            repita
               para i de 1 ate opC faca
                  qtdGR<-qtdGR+1
                  escreval(" ")
                  escreval("Funcionário: ",i)
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
            escreva("(9)NÃO | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoC)
            ate(opcaoC=9)
         fimse

         escreval("")
         escreval("Continuar Cadastro de Funcionarios:")
         escreval("Diretor[4]")
         escreval("")
         escreval("Escolha uma das opções acima: ")
         leia(opcFunc)

         se opcFunc > 4 entao
            escreval("Opção de escolha Inválida!")
            escreval("")
            escreval("Continuar Cadastro de Funcionarios:")
            escreval("Diretor[4]")
            escreval("")
            escreval("Escolha uma das opções acima: ")
            leia(opcFunc)
         fimse

         se opcFunc = 4 entao
            escreval("")
            escreva("Digite o número de funcionários a cadastrar: ")
            leia(opD)
            escreval(" ")
            qtdDR<-0
            repita
               para i de 1 ate opD faca
                  qtdDR<-qtdDR+1
                  escreval(" ")
                  escreval("Funcionário: ",i)
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
            escreva("(9)NÃO | (SELECIONE QUALQUER TECLA)SIM: ")
            escreval(" ")
            leia(opcaoD)
            ate(opcaoD=9)
         fimse

   escreval("Continuar cadastro de Funcionários??")
   escreva("(0)NÃO | (1)SIM: ")
   escreval(" ")
   leia(opcao)
   ate(opcao=0)

fimprocedimento


procedimento calSAL()
var
   hr:inteiro
   salarioOP,salarioSP,salarioGR,salarioDR:real
inicio
   
   desconto1OP<-0
   desconto1SP<-0
   desconto1GR<-0
   desconto1DR<-0
   
   desconto2OP<-0
   desconto2SP<-0
   desconto2GR<-0
   desconto2DR<-0
   
   descontoTOP<-0
   descontoTSP<-0
   descontoTGR<-0
   descontoTDR<-0
   
   descontosALL<-0
   
   salOPTotal<-0
   salSPTotal<-0
   salGRTotal<-0
   salDRTotal<-0
   salariosTotais<-0

   escreval(" ")
   escreval("Calcular salários:")
   escreval(" ")
   escreval("[Considere 8h de trabalho convencionais + Horas extras]")
   escreval(" ")
   escreval(" ")
   escreval("Quantas horas extras os Operários fizeram no Mês?")
   leia(hrEXOP)
   escreval(" ")
   escreval("Quantas horas extras os Supervisores fizeram no Mês?")
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
   escreval("Salário BRUTO do Operário:",salarioOP, " R$")

   escreval(" ")
   salarioSP<-40* 8* 30
   salarioSP<-salarioSP+valueHrExSP
   escreval("Salário BRUTO do Supervisor:",salarioSP, " R$")

   escreval(" ")
   salarioGR<-60* 8* 30
   escreval("Salário BRUTO do Gerente:",salarioGR, " R$")

   escreval(" ")
   salarioDR<-80* 8* 30
   escreval("Salário BRUTO do Diretor:",salarioDR, " R$")

   escreval(" ")
   escreval(" ")
   escreval("Após o deconto previsto por Lei, o salário Líquido dos funcionários será:")

   //DECONTO DE SALÁRIO LÍQUIDO DE OPERÁRIO
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

   //DECONTO DE SALÁRIO LÍQUIDO DE SUPERVISOR --
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

   //DECONTO DE SALÁRIO LÍQUIDO DE GERENTE
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

   //DECONTO DE SALÁRIO LÍQUIDO DE DIRETOR
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
   escreval("O salário Líquido dos Operários é de: ",salarioOP," R$")

   escreval(" ")
   escreval("O salário Líquido dos Supervisores é de: ",salarioSP," R$")
   escreval(" ")
   
   escreval("O salário Líquido dos Gerentes é de: ",salarioGR," R$")
   escreval(" ")

   escreval("O salário Líquido dos Diretores é de: ",salarioDR," R$")
   escreval(" ")

   //DESCONTO DE SALÁRIO IRPF DOS OPERÁRIOS
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

   //DESCONTO DE SALÁRIO IRPF DOS SUPERVISORES
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

   //DESCONTO DE SALÁRIO IRPF DOS GERENTES
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

   //DESCONTO DE SALÁRIO IRPF DOS DIRETORES
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
   escreval("O salário dos Operários pós desconto é de: ",salarioOP," R$")
   salOPTotal<-salarioOP* qtdOP
   escreval("O TOTAL dos salários dos Operários é de: ",salOPTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O salário dos Supervisores pós desconto é de: ",salarioSP," R$")
   salSPTotal<-salarioSP* qtdSP
   escreval("O TOTAL dos salários dos Supervisores é de: ",salSPTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O salário dos Gerentes pós desconto é de: ",salarioGR," R$")
   salGRTotal<-salarioGR* qtdGR
   escreval("O TOTAL dos salários dos Gerentes é de: ",salGRTotal," R$")
   escreval(" ")

   escreval(" ")
   escreval("O salário dos Diretores pós desconto é de: ",salarioDR," R$")
   salDRTotal<-salarioDR* qtdDR
   escreval("O TOTAL dos salários dos Diretores é de: ",salDRTotal," R$")
   escreval(" ")
   
   descontoTOP<- desconto1OP + desconto2OP
   descontoTSP<- desconto1SP + desconto2SP
   descontoTGR<- desconto1GR + desconto2GR
   descontoTDR<- desconto1DR + desconto2DR
   descontosALL<- descontoTOP + descontoTSP + descontoTGR + descontoTDR
   
   escreval(descontosALL)
   escreval(salariosTotais)

fimprocedimento


procedimento despesas()
var

inicio
   despesaAGUA<-0
   despesaLUZ<-0
   despesaAGUAiDEAL<-0
   despesaLUZiDEAL<-0
   qtdCarrosATUAL<-500
   qtdCarrosIDEAL<-1250
   salariosTotais<- salOPTotal + salSPTotal + salGRTotal + salDRTotal
   
   escreval(" ")
   escreval("========== MENU DE GASTOS COM PRODUÇÃO ==========")
   escreval(" ")
   escreval("A Montadora Caracgos SA trabalha com produção de 500 veículos mensalmente")
   escreval("Os custos devem corresponder ao limite de fabricação estipulado")
   escreval(" ")
   
   escreval("Quanto foi gasto (R$) com água por mês?")
   leia(despesaAGUA)
   escreval(" ")
   escreval("Quanto foi gasto (R$) com luz por mês?")
   leia(despesaLUZ)
   escreval(" ")
   
   despesasATUAlTOTAIS<- despesaAGUA + despesaLUZ + descontosALL + salariosTotais
   
   escreval("CÁLCULO DE DESPESAS: ")
   escreval("ÁGUA ", despesaAGUA, " R$")
   escreval("LUZ ", despesaLUZ, " R$")
   escreval("IMPOSTOS ", descontosALL, " R$")
   escreval("SALÁRIOS ", salariosTotais, " R$")
   escreval(" ")
   escreval("TOTALIZANDO: ",despesasATUAlTOTAIS, " R$")

   escreval(" ")
   escreval("========== MENU DE GASTOS COM PRODUÇÃO ==========")
   escreval(" ")
   escreval("Agora, considerano o cenário Ideal de Produção (1250 veículos ao mês)")
   escreval("Declare os gastos que correspondem ao novo limite de fabricação estipulado")
   escreval(" ")
   
   escreval("Quanto foi gasto (R$) com água por mês?")
   leia(despesaAGUAiDEAL)
   escreval(" ")
   escreval("Quanto foi gasto com luz por mês?")
   leia(despesaLUZiDEAL)
   escreval(" ")
   
   despesasIDEAlTOTAIS<- despesaAGUAiDEAL + despesaLUZiDEAL + descontosALL + salariosTotais

   escreval("CÁLCULO DE DESPESAS: ")
   escreval("ÁGUA ", despesaAGUAiDEAL, " R$")
   escreval("LUZ ", despesaLUZiDEAL, " R$")
   escreval("IMPOSTOS ", descontosALL, " R$")
   escreval("SALÁRIOS ", salariosTotais, " R$")
   escreval(" ")
   escreval("TOTALIZANDO: ",despesasIDEAlTOTAIS, " R$")
   
   escreval(" ")
   escreval(" ")
   escreval("========== MENU DE FABRICAÇÃO ==========")
   escreval(" ")
   
   custoCarroATUAL<-despesasATUAlTOTAIS/qtdCarrosATUAL
   custoCarroIDEAL<-despesasIDEAlTOTAIS/qtdCarrosIDEAL
   
   lucroATUAL<-custoCarroATUAL + custoCarroATUAL* 0.5
   lucroIDEAL<-custoCarroIDEAL + custoCarroIDEAL* 0.5
   
   escreval("No cenário ATUAL, a empresa contabiliza um custo de produção de: ")
   escreval(custoCarroATUAL, " R$ por veículo")
   escreval(" ")
   escreval("No cenário IDEAL, a empresa contabiliza um custo de produção de: ")
   escreval(custoCarroIDEAL, " R$ por veículo")
   escreval(" ")
   escreval("Obtendo um lucro respectivo de: ")
   escreval("Cenário Atual: ",lucroATUAL," R$ / Cenário Ideal: ", lucroIDEAL," R$")


fimprocedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("                  ________________________ ")
   escreval("                 / |           |          \ ")
   escreval("                /  |           |           \ ")
   escreval("    ___________/___|___________|__________()\__________________ ")
   escreval("   /_______________|_=_________|_=___________|_________________\ ")
   escreval("  [         ______ |           | .           | == ______       ]")
   escreval(" _[__      /**  **\|           | CARANGOS SA |   /**  **\    __]_")
   escreval("{____)____|**    **|___________|_____________|__|**    **|__(____}")
   escreval("            **__**                                **__**  ")

   escreval (" ")
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
   
   
   cadastroFuncionario()
   se opcao = 1 entao
      cadastroFuncionario()
   fimse

   calSAL()
   
   despesas()

Fimalgoritmo