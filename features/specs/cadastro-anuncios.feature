#language: pt

Funcionalidade: Cadastro de Anúncios

    Sendo usuário cadastrado no RockLov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para locação

    Cenário: Novo Equipamento

        Dado que estou logado como "felipeteste01@gmail.com" e "123"
            E que acesso o formulário de cadastro de anuncios
            E que eu tenho o seguinte equipamento:
            | imagem    | fender-sb.jpg |
            | nome      | Fander Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto cadastro desse item
        Então devo ver esse item no meu dashboard