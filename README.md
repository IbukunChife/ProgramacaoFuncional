# Programacao Funcional
Conjuntos de artefatos  desenvolvida durante as Aulas de Programação Funcional

Para começar é préciso instalar as dépendências.
### STACK
$ sudo dnf copr enable petersen/stack
$ sudo dnf install stack
$ stack upgrade

### GHC
$ sudo dnf install ghc

### HASKELL-PLATFORM
$ sudo dnf install haskell-platform


# Iniciando um projeto.
Dentro de um diretório escolhido digite no terminal:
$ stack new <Nome do Projeto> <Templates>

### instalar GHC no projeto
$ stack setup

### Compilar o Projeto
$ stack build

### Executando o projeto
$ stack exec <Nome do Projeto> 

# Iniciando um Arquivo simple .hs
É preciso ter instalado o ghc (compilador de arquivo .hs) ou interpretador ghci

### Criar o Arquivo
$ touch <NomeDoArquivo>.hs

### Escreve um Algo no arquivo no Caso como exemplo
main = putStrLn "hello, world" 

### Compilando  o Arquivo .hs
$ ghc --make helloworld  

### Executando o Arquivo
$ ./helloworld 

### Executar seu coódigo dinamicamente sem fazer duas Étapas précedente:
$runhaskell helloworld.hs

