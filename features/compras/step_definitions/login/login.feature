#language:pt

@login
Funcionalidade: Login
Eu como usuario do site
Realizo meu login usando usuario e senha
Para visualizar a minha conta

Contexto: Estar na tela de login
Dado que eu estou na tela de login

@loginvalido
Cenario: Acesso valido
Quando eu digitar meu usuario e senha corretos e clicar em login
Entao entrarei na minha conta no site