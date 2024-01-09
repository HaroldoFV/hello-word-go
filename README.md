# Desafio Full Cycle Rocks!!

Este projeto é um desafio proposto pela Full Cycle que visa demonstrar o uso de técnicas em Docker para construir uma imagem eficiente.

## Sobre o Projeto

O objetivo deste projeto é criar uma imagem Docker que tenha um tamanho não superior a 2MB. Quando essa imagem Docker é executada utilizando o comando `docker run`, ela deve exibir a mensagem "Full Cycle Rocks!!".

## Construção da Imagem Docker

O projeto utiliza a estratégia do Docker de construções Multistage Building. Isso significa que o processo de construção da imagem Docker é dividido em múltiplos estágios. 

O primeiro estágio usa a imagem oficial do Go para compilar o programa. O estágio de compilação baixa todas as dependências necessárias utilizando o comando `go mod download` e compila o aplicativo Go para um binário executável.

O segundo estágio começa com uma imagem Docker vazia, chamada `scratch`, que é a imagem mais leve possível no Docker. O binário compilado no primeiro estágio é então copiado para esta imagem.


## Rodando a Imagem Docker

Depois de construído corretamente, o projeto pode ser executado com o seguinte comando:

docker build -t <nome-da-image> .

docker run <nome-da-image>

Depois de executado, o projeto deve imprimir a seguinte mensagem:

Full Cycle Rocks!!

## Link da imagem no Docker Hub.

https://hub.docker.com/repository/docker/haroldovinente/fullcycle/general
