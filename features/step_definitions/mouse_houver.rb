Quando('seleciono o mouse houver') do
    visit '/iteracoes/mousehover'
    find('.activator').hover

#mover o mouse e clicar no elemento
    find('.activator').hover.click
sleep 5
end