#Exercícios

#1. O CPF é um número de 11 dígitos, por exemplo: 54491651884. No entanto para
#facilitar a visualização costumamos mostrá-lo com separadores a cada 3 casas:
# 544.916.518-84. Crie uma função que transforma um número de 11 dígitos em uma
# string com as separações, como um CPF.

"1."
#Instalar pacote
install.packages("stringr")
#Criando a função do CPF
library(stringr)
CPF_func <- function(cpf){
  s1 <- str_sub(cpf,1,3)
  s2 <- str_sub(cpf,4,6)
  s3 <- str_sub(cpf,7,9)
  dig <- str_sub(cpf,10,11)
  return(str_c(s1,".",s2,".",s3,"-",dig))
}
cpf <- "54491651884"
CPF_func(cpf)

#2. Transforme o vetor de strings abaixo em "01 - Alto" "02 - Médio"
#"03 - Baixo".
#s <- c('Alto', 'Médio', 'Baixo')

"2."
s <- c('Alto', 'Médio', 'Baixo')
string1 <- "Alto"
string2 <- "Médio"
string3 <- "Baixo"
str_c ("01 - ",string1, " 02 - ",string2, " 03 - ",string3)

#3. Crie uma regex que capture múltiplas versões da palavra ‘casa’. Ela deve
# funcionar com as palavras ‘Casa’, ‘CASA’, ‘CaSa’, ‘CAsa’. Teste-a usando a
# função str_detect().

"3."
s <- c('Casa', 'CASA', 'CaSa', 'CAsa')
str_detect(s, regex("casa", ignore_case = TRUE))

#4. Imagine que a seguinte string é a parte final de uma URL.
#/ac/rio-branco/xpto-xyz-1-0-1fds2396-5
#Transforme-a em “AC - Rio Branco” utilizando funções do pacote {stringr}.

"4."
url <- c('/ac/rio-branco/xpto-xyz-1-0-1fds2396-5')
UF <- url %>%
  str_split("[/]", simplify = TRUE) %>%
  .[1,2] %>%
  str_to_upper()
cidade <- url %>%
  str_split("[/]", simplify = TRUE) %>%
  .[1,3] %>%
  str_replace("-", " ") %>%
  str_to_title()
str_c(UF, " - ", cidade)
## [1] "AC - Rio Branco"
