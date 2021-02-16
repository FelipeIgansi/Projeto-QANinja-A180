Dado('que acesso a página principal.') do
    visit "/"
  end
  
  Quando('submeto minhas credenciais com {string} e {string}') do |email, senha|
    find("input[placeholder='Seu e-email']").set(email)
    find("input[placeholder='Sua senha secreta']").set(senha)

    click_button "Entrar"

    #sleep 10

  end