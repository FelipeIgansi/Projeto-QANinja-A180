#language: pt

Funcionalidade: Cadastro

    Sendo  um musico que possui equipamentos musicais
    Quero  fazer o meu cadastro no RockLov
    Para  que eu possa Disponibiliza-los para locação

    @cadastro-caminho-feliz
    Cenario:  Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto meu cadastro completo
        Então sou redirecionado para o dashboard

    @tentativa_cadastro
    Cenario: Submenter o cadastro sem o nome

        Dado  que acesso a página de cadastro
        Quando  submeto o meu cadastro sem  o nome
        Então  vejo a mensagem de alerta: Oops. Informe seu nome completo!

    @tentativa_cadastro
    Cenario: Submenter o cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem  o email
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    @tentativa_cadastro
    Cenario: Submenter o cadastro com o email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com o email incorreto
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    @tentativa_cadastro
    Cenario: Submenter o cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!

