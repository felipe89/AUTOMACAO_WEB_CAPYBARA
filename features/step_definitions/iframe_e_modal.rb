Quando('entro no iframe e preencho os campos') do
    visit 'mudancadefoco/iframe'
#mudando o foco da automacao para o iframe
    within_frame('id_do_iframe')do
#após mudar o foco da automação para dentro do iframe da pagina irremos efetuar as ações
       fill_in(id: 'first_name', with: 'Felipe') 
       fill_in(id: 'last_name', with: 'Trindade')
    end
end
  
  Quando('entro no modal e verifico o texto') do
    visit 'mudancadefoco/modal'
    find('a[href="#modal1"]').click

    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'  
        
        find('.modal-close').click
    end
end
