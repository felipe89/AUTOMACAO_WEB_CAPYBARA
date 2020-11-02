Quando('eu cadastro o usuario') do
    visit 'users/new'
    fill_in(id: 'user_name', with: 'Felipe')
    find('#user_lastname').set('Silva')
    fill_in(id: 'user_email', with:'a@a.com.br')
    find('input[value="Criar"]').click
end
  
  Então('verifico se o usuario foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'

end
  
  Quando('edito um usuario.') do

    find('.btn.waves-light.blue').click

end
  
  Então('verifico se o usuario foi editado') do

end