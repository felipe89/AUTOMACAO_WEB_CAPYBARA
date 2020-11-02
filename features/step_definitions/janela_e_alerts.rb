Quando('eu entro na janela e verifico a mensagem') do
    visit 'mudancadefoco/janela'
#janela recebe uma janela que foi aberta via link
    janela = window_opened_by do 
        click_link 'Clique aqui'
    end
#Mudando o foco para a janela 
    within_window janela do
        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

        janela.close
    end
#senguda opção de validar segunda janela 

        click_link 'Clique aqui'
#mudando para  a ultima aba ativa (janela em segunda opção aberta)
        switch_to_window windows.last

        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
            
        windows.last.close
    end
  
  Quando('eu entro no alert e verifico faco a acao') do
    visit 'mudancadefoco/alert'
#Ação de click em um alert de pagina 
    find('button[onclick="jsAlert()"]').click
    page.accept_alert

#Cancelar um alert de opção de confirmação ou negação
    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm

#Trabalhando com alert de inserção de informações
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Automacao teste alert')
#cancelar uma janela de prompt
    page.dismiss_prompt


    sleep 5
end