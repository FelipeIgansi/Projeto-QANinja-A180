 Sendo  um usuário cadastrado 
 Quero  acessar o sistema da RockLov
 Para  que eu possa anunciar meus equipamentos musicais

 Cenário: Login do usuário

     Dado que acesso a página principal. 
     Quando submeto minhas credenciais válidas. 
     Então sou redirecionado para o Dashboard.

 Cenário: Senha incorreta

     Dado que acesso a página principal. 
     Quando submeto minhas credenciais com a senha incorreta.
     Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

 Cenário: Email não cadastrado

     Dado que acesso a página principal.
     Quando submeto minhas credenciais com Email que não existe na RockLov.
     Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

 Cenário: Email incorreto

     Dado que acesso a página principal.
     Quando submeto minhas credenciais com email incorreto.
     Então vejo a mensagem de alerta: Oops. Informe em email válido!

 Cenário:  Email não informado

     Dado que acesso a página principal.
     Quando submeto minhas credenciais sem o email.
     Então vejo a mensagem de alerta: Oops. Informe em email válido!

 Cenário: Senha não informada

     Dado que acesso a página principal.
     Quando submeto minhas credenciais sem o senha.
     Então vejo a mensagem de alerta: Oops. Informe em senha válido!