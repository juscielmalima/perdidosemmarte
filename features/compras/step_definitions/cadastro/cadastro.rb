Dado("que eu esteja na home") do
  find(:xpath,'//*[@id="header"]')
end

Quando("eu clicar em Sign in") do
  find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
end

Quando("preencher um e-mail válido em Email adress e clicar em create an acount") do
  fill_in('email_create',:with => 'rrrittamottaa@gmail.com')
  find(:id,'SubmitCreate').click
end

Quando("preencher os campos de Personal Information") do
  choose('Mrs.')
  fill_in('customer_firstname',:with => 'Rita')
  fill_in('customer_lastname',:with => 'Mota')
  fill_in('passwd',:with => '@T4$st')
  sleep 1
  find(:id,'uniform-days').first(:option,'21').select_option
  sleep 1
  find(:id,'uniform-months').first(:option,'January').select_option
  sleep 1
  sleep 1
  find(:id,'uniform-years').first(:option,'1990').select_option
  sleep 1
end

Quando("preencher o campos de Your Address") do
  fill_in('firstname',:with => 'Rita')
  fill_in('lastname',:with => 'Mota')
  fill_in('company',:with => 'Inmetrics')
  fill_in('address1',:with => 'RUSSET CREST CIR, 50, inmetrics')
  fill_in('city',:with => 'Hoover')
  find(:id,'uniform-id_state').first(:option,'Alaska').select_option #seleciona campo State
  sleep 5
  fill_in('postcode',:with => '35630')
  fill_in('phone_mobile',:with => '+1 251-208-7411')
  fill_in('alias',:with => 'RUSSET CREST CIR, 50, inmetrics')
  sleep 5
end

Quando("clicar em Register") do
  click_button('submitAccount')
end

Então("será criado o novo cadastro") do
  sleep 1
  find('.account')
  sleep 3
end
