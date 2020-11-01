Quando('eu faço cadastro') do
    visit 'users/new'

    fill_in(id: 'user_name', with: 'Felipe')
    find('#user_lastname').set('Trindade')
    find('#user_email').send_keys('a@a.com.br')

    fill_in(id: 'user_address', with: 'Galaxia')
    find('#user_university').set('EstudosAutomacao')
    find('#user_profile').send_keys('Analista')

    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set(30)
    find('input[value="Criar"]').click

end
  
  Então('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
 
    sleep 5
end