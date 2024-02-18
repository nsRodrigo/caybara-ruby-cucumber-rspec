#language: pt

Funcionalidade: Login
    Sendo um usuário préviamente cadastrado
    Quero acessaro o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenário: Login do Usuário

        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "rodrigo@gmail.com" e "qwe123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        # <> = Placeholder
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "senha"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        # Matriz de exemplo em formato de tabela
        Exemplos:
        | email             | senha  |
        | rodrigo@ymail.com |        |
        |                   | qwe123 |
        | rodrigo@ymail.com | 123qwe |
        | rodrigo@amail.com | qwe123 |
        |                   |        |
