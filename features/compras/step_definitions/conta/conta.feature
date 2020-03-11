#language:pt
@novaconta
Funcionalidade: Criar conta
    Eu como novo usuario do site
    Pretendo criar minha conta no site

Contexto: Estar na tela inicial de criar nova conta
Dado que eu estou na tela inicial de nova conta

@containvalida
Cenario: Nova conta invalida
    Quando eu digitar o email invalido e clicar em create an account
    Entao receberei uma mensagem de email invalido

@novacontavalida
Cenario: Nova conta valida
    Quando eu digitar o email valido e clicar em create an account
    E em Authentication preencher os campos de Your Personal Information
    E em Authentication preencher os campos de Your Address
    E finalizar clicando em Register
    Então será criado a nova conta

@erroContaExistente
Cenario: Email ja registrado em uma conta
    Quando eu digitar o email ja cadastrado e clicar em create an account
    Entao receberei uma mensagem informando que o email ja e registrado em uma conta


    


