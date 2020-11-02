#language: pt

@end_to_end
Funcionalidade: Criar usuario com sucesso

    Cenario: Criar usuario com sucesso.
        Quando eu cadastro o usuario
        Então verifico se o usuario foi cadastrado

    Cenario: Editar com sucesso.
        Quando edito um usuario.
        Então verifico se o usuario foi editado