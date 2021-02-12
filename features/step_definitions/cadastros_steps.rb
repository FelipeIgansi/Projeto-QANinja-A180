

#    Cenario:  Fazer cadastro
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto meu cadastro completo') do

    email = "felipeteste@gmail.com"
    MongoDB.new.remove_user(email)

    find("#fullName").set "Teste"
    find("#email").set email
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
    
    click_button "Cadastrar"
    
end
  


#     Cenario: Submenter o cadastro sem o email


Quando('submeto o meu cadastro sem  o email') do
    find("#fullName").set "Teste"
    find("#password").set "123"
    
    click_button "Cadastrar"
    sleep 5
end
  


#     Cenario: Submenter o cadastro com o email incorreto

Quando('submeto o meu cadastro com o email incorreto') do
    find("#fullName").set "Teste"
    find("#email").set "teste#teste.com" 
    find("#password").set "123"
    
    click_button "Cadastrar"
end

#     Cenario: Submenter o cadastro sem senha

Quando('submeto o meu cadastro sem a senha') do
    find("#fullName").set "Teste"
    find("#email").set Faker::Internet.free_email 
    
    click_button "Cadastrar"
end
  



Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(alert.text).to eql expect_alert
end