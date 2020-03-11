Dado("que eu esteja logado") do
  find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click #clica em sig in
  first('#email').send_keys('rrittamottaa@gmail.com')
  fill_in('passwd',:with=>'@T4$st')
  click_button('SubmitLogin')
end

Quando("eu selecionar o produto e adicionar ao carrinho") do
  # find(:css,'sf-with-ul').click
  find(:xpath,'//*[@id="block_top_menu"]/ul/li[1]/a').click #clica em woman
  find(:xpath,'//*[@id="center_column"]/ul/li[3]/div').click #clica no produto printed dress
  # find(:xpath,'//*[@id="add_to_cart"]/button/span').click
  find(:xpath,'//*[@id="center_column"]/ul/li[3]/div/div[2]/div[2]/a[1]').click #clica em add no carrinho
  # find('.button-container')
end

Quando("clicar em finalizaar a compra em Proceed to checkout") do
  find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a').click #clica em proceed to checkout
  # find('.button btn btn-default standard-checkout button-medium').click
end

Quando("clicar novamente em Proceed to checkout da primeira etapa de confirmação para compra {int}. Summary") do |int|
  find(:xpath,'//*[@id="center_column"]/p[2]/a[1]/span').click #clica Proceed to checkout
  # click_button('.button btn btn-default standard-checkout button-medium')
end

Quando("clicar em add a new address na terceira etapa de confirmação para compra {int}. address") do |int|
  find(:xpath,'//*[@id="center_column"]/form/div/p/a').click
end

Quando("preencher os campos para a referência do novo endereço em Your Address e salvar") do
  fill_in('address1',:with=>'RUSSET CREST CIR, 100, inmetrics')#novo endereço, alterado apenas o nº para 100
  fill_in('city',:with=>'Hoover')
  find(:id,'uniform-id_state').first(:option,'Alaska').select_option
  fill_in('postcode',:with=>'35630')
  fill_in('phone',:with=>'+1 251-208-7411')#Home phone
  fill_in('phone_mobile',:with=>'+1 251-208-7411')#Mobile phone
  fill_in('alias',:with=>'Address Number Two')#nome do novo endereço
  click_button('Save')
  sleep 5
end

Quando("selecionar o novo endereço em Choose a delivery address") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em Proceed to checkout e aceitar os termos e serviços") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("a compra será efetuada e o endereço estará alterado") do
  pending # Write code here that turns the phrase above into concrete actions
end

#alteraQuantidade
Dado("que eu tenho um cadastro válido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("eu selecionar o {int}º produto e escolher o total de {int} quantidades e adicionar ao carrinho") do |int, int2|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em Continue shopping") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em finalizar a compra em Proceed to checkout") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("visualizar novamente os produtos no carrinho em Shopping-cart summary e clicar em diminuir a quantidade em Qty") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("para o {int}º produto clicar em reduzir a quantidade para {int}") do |int, int2|
  pending # Write code here that turns the phrase above into concrete actions
end

Então("a compra será efetuada com as quantidades alteradas") do
  pending # Write code here that turns the phrase above into concrete actions
end