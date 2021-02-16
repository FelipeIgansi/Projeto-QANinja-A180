#language: pt

Funcionalidade: Cadastro

    Sendo  um musico que possui equipamentos musicais
    Quero  fazer o meu cadastro no RockLov
    Para  que eu possa Disponibiliza-los para locação

    @cadastro
    Cenario:  Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome   | email                   | senha |
            | Felipe | felipeteste01@gmail.com | 123   |
        Então sou redirecionado para o dashboard


    Esquema do Cenario: Tentativa de Cadastro

        Dado  que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então  vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input | email_input           | senha_input | mensagem_output                  |
            |            | felipeteste@gmail.com | 123         | Oops. Informe seu nome completo! |
            | Felipe     |                       | 123         | Oops. Informe um email válido!   |
            | Felipe     | felipeteste&gmail.com | 123         | Oops. Informe um email válido!   |
            | Felipe     | felipeteste*gmail.com | 123         | Oops. Informe um email válido!   |
            | Felipe     | felipeteste@gmail.com |             | Oops. Informe sua senha secreta! |