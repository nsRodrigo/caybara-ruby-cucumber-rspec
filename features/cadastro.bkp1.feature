#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | rodrigo@ymail.com |
            | senha          | qwe123            |
            | senha_confirma | qwe123            |
        Então devo ser redirecionado para a área logada

    @temp
    Cenario: Email não informado
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então devo ver Oops! Informe seu email.

    @home
    Cenario: Senha não informada
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então devo ver Oops! Informe sua senha.

    @note
    Cenario: Senha divergente
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro com senha divergente
        Então devo ver Oops! Senhas não são iguais.

    @card
    Cenario: Nenhum campo preenchido
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro sem preencher os campos
        Então devo ver Oops! Informe seu email e sua senha.
