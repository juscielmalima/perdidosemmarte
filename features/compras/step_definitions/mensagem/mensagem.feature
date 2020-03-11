#language:pt

@entrarEmContato
Funcionalidade: Contato 

Contexto: Estar na tela de login
Dado que eu estou na tela de login

Cenario: Entrar em contato com a empresa
    E eu digitar meu usuario e senha corretos e clicar em login
    Entao entrarei na minha conta no site
    Quando eu clicar para contatar a empresa em Contact us 
    E preencher os campos do formulário de Send a Message
    E clicar para enviar a mensagem em Send
    Então a mensagem será enviada para a empresa