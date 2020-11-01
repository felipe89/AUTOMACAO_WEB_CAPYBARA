Quando('eu marco um checkbox e um radiobox') do
    
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
#Utilizamos o comando allow_label_click: true, para aguardar o metodo se tornar visivel para se clicavel
    check('purple', allow_label_click: true) 
    uncheck('purple', allow_label_click: true) #desabilitando o checkbox lembrando que para definir o id não precisando deixar o mesmo com "#"
#mesmo termo usamos pra marcação de um radio box
    choose('red', allow_label_click: true)
    choose('blue', allow_label_click: true)

    sleep 5
end