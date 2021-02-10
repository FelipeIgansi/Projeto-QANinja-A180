#language: pt

Funcionalidade: Cadastro

    Sendo  um musico que possui equipamentos musicais
    Quero  fazer o meu cadastro no RockLov
    Para  que eu possa Disponibiliza-los para locação

    @temp-gambiarra
    Cenario:  Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto meu cadastro completo
        Então sou redirecionado para o dashboard

    @sem-nome
    Cenario: Submenter o cadastro sem o nome

        Dado  que acesso a página de cadastro
        Quando  submeto o meu cadastro sem  o nome
        Então  vejo a mensagem de alerta: Oops. Informe seu nome completo!

    @sem-email
    Cenario: Submenter o cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem  o email
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    @email-incorreto
    Cenario: Submenter o cadastro com o email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com o email incorreto
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    @sem-senha
    Cenario: Submenter o cadastro sem o senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem  o senha
        Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!

