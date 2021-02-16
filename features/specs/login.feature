#language: pt

Funcionalidade: Login

    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenário: Login do usuário

        Dado que acesso a página principal.
        Quando submeto minhas credenciais com "felipeteste01@gmail.com" e "123"
        Então sou redirecionado para o dashboard

    Esquema do Cenario: Tentar logar
        Dado que acesso a página principal.
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então  vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input             | senha_input | mensagem_output                  |
            | felipeteste01@gmail.com | 1234        | Usuário e/ou senha inválidos.    |
            | felipeteste@gmail.com   | 123         | Usuário e/ou senha inválidos.    |
            | felipeteste*gmail.com   | 123         | Oops. Informe um email válido!   |
            | felipeteste*gmail       | 123         | Oops. Informe um email válido!   |
            | *gmail.com              | 123         | Oops. Informe um email válido!   |
            |                         | 123         | Oops. Informe um email válido!   |
            | felipeteste@gmail.com   |             | Oops. Informe sua senha secreta! |
