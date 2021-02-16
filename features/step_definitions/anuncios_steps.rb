Dado('que estou logado como {string} e {string}') do |email, senha|
    
    visit "/"
    
    find("input[placeholder='Seu e-email']").set(email)
    find("input[placeholder='Sua senha secreta']").set(senha)

    click_button "Entrar"

end
  
Dado('que acesso o formulário de cadastro de anuncios') do
    click_button "Criar anúncio"
    # Isso é um checkpoint para garantir que estou no lugar correto
    expect(page).to have_css "#equipoForm"
end




Dado('que eu tenho o seguinte equipamento:') do |table|
    
    #Uma variavel com @ no incio se torna global
    @anuncio = table.rows_hash
    log @anuncio
     
end
  
Quando('submeto cadastro desse item') do
    
    imagem = Dir.pwd + "/features/support/fixtures/images/" + @anuncio[:imagem]
    log imagem
    
    find("#thumbnail input[type='file'] ", visible: false).set imagem
    find("#name").set(@anuncio[:nome])
    # Busca dentro do elemento "Category"(combobox) o elemento "option"
    find("#category").find("option", text:@anuncio[:categoria]).select_option
    find("#price").set(@anuncio[:preco])

    #click_button "Cadastrar"

    sleep 10
end
  
Então('devo ver esse item no meu dashboard') do
    pending # Write code here that turns the phrase above into concrete actions
end