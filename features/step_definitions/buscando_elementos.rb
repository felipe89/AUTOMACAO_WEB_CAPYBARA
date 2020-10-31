Quando('acesso a url de botoes') do
    visit 'buscaelementos/botoes'
end
  
Então('verifico se encontrei os elementos') do
    # all - busca todos os elementos que contenham o all
        page.all(:css, '.btn') #buscando pelam classe
    #buscar elemento mapeado
        find('#teste')         
    #buscando por id 
        find_by_id('teste')
    #buscando botão
        find.button(class: 'btn waves-light')
    #buscando pelo primeiro elemento da pagina que contenha o elemento mapeado.
        first('.btn')
    #buscando por link 
        find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end