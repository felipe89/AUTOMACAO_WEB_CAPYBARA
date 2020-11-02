Quando('eu faco um upload de arquivo') do
    visit 'outros/uploaddearquivos'
#primeira opção para inserir upload de arquivo
    # attach_file('upload', '/home/gilmar/Área de Trabalho/Projeto Automacao/AULA_AUTOMACAO/AUTOMACAO_WEB_CAPYBARA/features/ImagemAutomacao.jpg', make_visible: true)

#segunda opção de upload de arquivos
    @foto = File.join(Dir.pwd, 'features/ImagemAutomacao.jpg')
    attach_file('upload', @foto, make_visible: true)
end