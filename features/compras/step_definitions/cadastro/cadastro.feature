#language:pt
@cadastro
Funcionalidade: Cadastro

Cenario: fazer novo cadastro de usuario
    Dado que eu esteja na home
    Quando eu clicar em Sign in
    E preencher um e-mail válido em Email adress e clicar em create an acount
    E preencher os campos de Personal Information
    E preencher o campos de Your Address
    E clicar em Register
    Então será criado o novo cadastro

