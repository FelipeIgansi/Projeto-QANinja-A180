 Sendo  um musico que possui equipamentos musicais
 Quero  fazer o meu cadastro no RockLov
 Para  que eu possa Disponibiliza-los para locação

 Cenário:  Fazer cadastro   

     Dado  que acesso a página de cadastro
     Quando  submeto meu cadastro completo
     Então  sou redirecionado para o dashboard

 Cenário:  Submenter o cadastro sem o nome 

     Dado  que acesso a página de cadastro
     Quando  submeto o meu cadastro sem  o nome
     Então  vejo a mensagem de alerta: Oops. Informe seu nome completo!


 Cenário:  Submenter o cadastro sem o email 

     Dado  que acesso a página de cadastro
     Quando  submeto o meu cadastro sem  o email
     Então  vejo a mensagem de alerta: Oops. Informe seu email válido!


 Cenário:  Submenter o cadastro com o email incorreto

     Dado  que acesso a página de cadastro
     Quando  submeto o meu cadastro com o email incorreto
     Então  vejo a mensagem de alerta: Oops. Informe seu email válido!


 Cenário:  Submenter o cadastro sem o senha 

     Dado  que acesso a página de cadastro
     Quando  submeto o meu cadastro sem  o senha
     Então  vejo a mensagem de alerta: Oops. Informe seu senha secreta!

