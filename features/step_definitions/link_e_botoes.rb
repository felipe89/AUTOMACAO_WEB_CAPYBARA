Quando('clico em botões') do
visit '/'
    click_on('Começar Automação Web') #click_link_or_button ambos são a mesma coisa
visit 'buscaelementos/botoes'   
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"').click 
#Utilizando doble click e clicar com o botão direito do mouse
    find('a[onclick="ativaedesativa2()"').double_click
    find('a[onclick="ativaedesativa3()"').right_click
visit '/'
    click_link('Github')
end