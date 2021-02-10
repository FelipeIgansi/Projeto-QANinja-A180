#    Cenario:  Fazer cadastro
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto meu cadastro completo') do
    find("#fullName").set "Teste"
    find("#email").set Faker::Internet.free_email 
    find("#password").set "123"
    
    click_button "Cadastrar"
end
  
Então('sou redirecionado para o dashboard') do
    expect(page).to have_css ".dashboard"
    
end

#     Cenario: Submenter o cadastro sem o nome

Quando('submeto o meu cadastro sem  o nome') do
    
    find("#email").set Faker::Internet.free_email 
    find("#password").set "123"
    
    sleep 10

    click_button "Cadastrar"
    
end
  
Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"
end

#     Cenario: Submenter o cadastro sem o email


Quando('submeto o meu cadastro sem  o email') do
    find("#fullName").set "Teste"
    find("#password").set "123"
    
    click_button "Cadastrar"
    sleep 5
end
  
Entao('vejo a mensagem de alerta: Oops. Informe um email válido!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe um email válido!"
end

#     Cenario: Submenter o cadastro com o email incorreto

Quando('submeto o meu cadastro com o email incorreto') do
    find("#fullName").set "Teste"
    find("#email").set "teste#teste.com" 
    find("#password").set "123"
    
    click_button "Cadastrar"
end

#     Cenario: Submenter o cadastro sem senha

Quando('submeto o meu cadastro sem  o senha') do
    find("#fullName").set "Teste"
    find("#email").set Faker::Internet.free_email 
    
    click_button "Cadastrar"
end
  
Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end