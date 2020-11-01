Quando('interajo com dropdown e select') do

    visit 'buscaelementos/dropdowneselect'
        find('.btn.dropdown-button').click
        find('#dropdown3').click
    #Utilizando os  select's na automação!!!
        select 'Chrome', from:'dropdown' #Passando o id no campo "from:", se ser necessario passar o # para identificar o id
        # find('option[value="2"]').select_option
    sleep 3
end
  Quando('preencho o autocomplete') do
    
    visit 'widgets/autocomplete'
        find('#autocomplete-input').set 'Rio de Janeiro'
        find('ul', text: 'Rio de Janeiro').click

    sleep 3
end