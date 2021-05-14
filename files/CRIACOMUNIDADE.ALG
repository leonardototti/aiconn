Algoritmo "CriaComunidade"
// Autor(a)    : Leonardo C. Totti
// Data atual  : 29/04/2021
Var
cTitulo: vetor[1..10] de caractere
cSobre: vetor[1..10] de caractere
cPriv: vetor[1..10] de caractere
cTotal, x, opc, y, z, loop: inteiro

Inicio
x <- 0
y <- 0
z <- 0
cTotal <- 0
loop <- 0

enquanto x = 0 faca

opc <- 0

limpatela
escreval("Aiconn")
escreval()
escreval("(1) Criar uma comunidade")
escreval("(2) Listar comunidades")
escreval("(3) Sair")
escreval()

escreva("Informe: ")
leia(opc)

se (opc = 1) entao
   limpatela

   se (cTotal < 10) entao
      y <- 0
      z <- 0
      limpatela
      escreval("Aiconn - Criando comunidade [", cTotal + 1," ]")
      escreval()
      escreva("Informe o nome: ")
      leia(cTitulo[cTotal + 1])
      
      escreval()
      
      escreva("Informe sobre o que será sua comunidade: ")
      leia(cSobre[cTotal + 1])
      
      escreval()
      
      enquanto y = 0 faca
         escreva("Informe 1 para comunidade Pública e 2 para comunidade Privada: ")
         leia(z)
         se (z = 1) entao
            y <- 1
            cPriv[cTotal + 1] <- "Pública"
         senao
              se (z = 2) entao
                 y <- 1
                 cPriv[cTotal + 1] <- "Privada"
              senao
                   escreval()
                   escreval("Informe 1 ou 2!")
              fimse
         fimse
      fimenquanto
      
      limpatela
      escreval("Aiconn - Comunidade cadastrada!")
      escreval()
      escreval("Comunidade '", cTitulo[cTotal + 1],"' cadastrada com sucesso!")
      escreval("Aperte enter para voltar ao menu inicial.")
      leia(opc)
      
      cTotal <- cTotal + 1
      
   senao
        limpatela
        escreval("Aiconn - erro!")
        escreval()
        escreval("Número máximo de comunidades criado, aperte enter para voltar ao menu principal.")
        leia(opc)
   fimse
senao
     se (opc = 2) entao
        se (cTotal = 0) entao
             limpatela
             escreval("Aiconn - erro!")
             escreval()
             escreval("Nenhuma comunidade cadastrada para exibir, aperte enter para voltar ao menu principal.")
             leia(opc)
        senao
             loop <- 0
             
             limpatela
             
             escreval("Aiconn - Lista de comunidades")
             escreval()
             
             enquanto loop < cTotal faca
                 loop <- loop + 1
                 
                 escreval("[", loop," ] ", cTitulo[loop],", ", cSobre[loop], ".")
             fimenquanto
             escreval()
             escreval("Aperte enter para voltar ao menu principal.")
             leia(opc)
        fimse
     senao
          se (opc = 3) entao
             x <- 1
          senao
               limpatela
               escreval("Aiconn - erro!")
               escreval()
               escreval("Opção inválida, aperte enter para voltar ao menu principal.")
               leia(opc)
          fimse
     fimse
fimse

fimenquanto


Fimalgoritmo