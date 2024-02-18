#language: pt

Funcionalidade: Reproduzir Parodia
    Sendo um usuario cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que possa ouvir as paródias das minhas bandas favoritas

    Contexto: Login
        * login com "rodrigo@gmail.com" e senha "qwe123"

    Cenário: Ouvir paródia
        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo reprodução
