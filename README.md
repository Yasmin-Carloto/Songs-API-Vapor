# Songs API Vapor
Este repositório guarda uma Proof Of Concept (POC), em português, Prova De Conceito. Essa é uma forma de aprendermos determinada tecnologia através de testes de código, ou uma forma de testarmos determinada lógica e o resultado desta.
Essa POC serviu para o aprendizado da criação de uma API usando Swift, Vapor e Fluent.

## Objetivo da Aplicação 🎯
A finalidade desta aplicação está em ser uma ponte de aprendizado e desenvolvimento de aplicações back-end usando o swift como linguagem e ferramentas como os frameworks Vapor e Fluent.

## Funcionalidades do Educational Chatbot 🛠️
* Criar música.
* Recuperar informações de música criada.
* Recuperar todas as músicas.
* Atualizar música já criada.
* Deletar música.

## Tecnologias Utilizadas 💻
* **Swift**, linguagem de programação;
* **Vapor**, é uma estrutura web HTTP para Swift. Ele fornece uma base expressiva e fácil de usar para seu próximo site, API ou projeto em nuvem.
* **Fluent**, um ORM compatível com Vapor e Swift.
* **Postgres**, banco de dados relacional.

## Executar aplicação localmente
### Requisitos necessários:
- Possuir [o Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado.

### Requisitos Opcionais:
- Visualização do Banco de Dados com o [Azure Data Studio](https://learn.microsoft.com/pt-br/azure-data-studio/download-azure-data-studio?tabs=win-install%2Cwin-user-install%2Credhat-install%2Cwindows-uninstall%2Credhat-uninstall).
                                
### Passos da execução
1. Clone o repositório:
   ```
   git clone https://github.com/Yasmin-Carloto/Songs-API-Vapor.git
   ```
2. Com o XCode aberto, entre em **File>Packages>Resolve Packages Version**;
3. Abra o Docker;
3. Com o terminal aberto no diretório do projeto, digite:
    ```
    docker compose up db
    ```
4. Novamente, com o terminal aberto no diretório do projeto, digite:
    ```
    swift run
    ```
