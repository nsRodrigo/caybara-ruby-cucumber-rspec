#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Automation Pratice
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

    Esquema do Cenário: Tentativa de cadastro

        # <> = Placeholder
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        # Matriz de exemplo em formato de tabela
        Exemplos:
            | email             | senha  | confirma_senha | mensagem_saida                       |
            |                   | qwe123 | qwe123         | Oops! Informe seu email.             |
            | rodrigo@ymail.com |        |                | Oops! Informe sua senha.             |
            | rodrigo@ymail.com | qwe123 | 123qwe         | Oops! Senhas não são iguais.         |
            |                   |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenário: Validação do campo email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"   