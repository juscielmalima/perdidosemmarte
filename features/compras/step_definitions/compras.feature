#language:pt

Funcionalidade:Compra  

Cenario: Alterar endereço da entrega ao efetuar uma compra
    Dado que eu tenha um cadastro válido
    Quando eu selecionar o produto e adicionar ao carrinho
    E clicar em finalizaar a compra em Proceed to checkout
    E clicar novamente em Proceed to checkout da primeira etapa de confirmação para compra 1. Summary
    E clicar em add a new address na terceira etapa de confirmação para compra 3. address
    E preencher os campos para a referência do novo endereço em Your Address e salvar 
    E selecionar o novo endereço em Choose a delivery address
    E clicar em Proceed to checkout e aceitar os termos e serviços
    Então a compra será efetuada e o endereço estará alterado

Cenario: Alterar a quantidade de produtos adicionados ao carrinho ao efetuar a compra
    Dado que eu tenho um cadastro válido
    Quando eu selecionar o 1º produto e escolher o total de 11 quantidades e adicionar ao carrinho
    E clicar em Continue shopping
    E eu selecionar o 2º produto e escolher o total de 11 quantidades e adicionar ao carrinho
    E clicar em Continue shopping
    E eu selecionar o 3º produto e escolher o total de 11 quantidades e adicionar ao carrinho
    E clicar em Continue shopping
    E clicar em finalizar a compra em Proceed to checkout
    E visualizar novamente os produtos no carrinho em Shopping-cart summary e clicar em diminuir a quantidade em Qty
    E para o 1º produto clicar em reduzir a quantidade para 10
    E para o 2º produto clicar em reduzir a quantidade para 10
    E para o 3º produto clicar em reduzir a quantidade para 10
    E clicar em Proceed to checkout e aceitar os termos e serviços
    Então a compra será efetuada com as quantidades alteradas

    
