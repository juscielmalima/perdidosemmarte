Dado("que eu esteja na home") do
  find(:xpath,'//*[@id="header"]')
end

Quando("eu clicar em Sign in") do
  find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
end

Quando("preencher um e-mail válido em Email adress e clicar em create an acount") do
  fill_in('email_create',:with => 'juscielma.lima@inmetrics.com.br')
  find(:id,'SubmitCreate').click
end

Quando("preencher os campos de Personal Information") do
  choose('Mrs.')
  fill_in('customer_firstname',:with => 'Juscielma')
  fill_in('customer_lastname',:with => 'Lima')
  fill_in('passwd',:with => '@T4$st')
  find(:id,'uniform-days').click
  sleep 5
  find(:id,'uniform-days').first(:option,'18').select_option
  sleep 5
  find(:id,'uniform-months').first(:option,'January').select_option
  sleep 5
  find(:id,'uniform-months').first(:option,'January').select_option
  sleep 5
  find(:id,'uniform-years').first(:option,'1991').select_option
  sleep 5
end

Quando("preencher o campos de Your Address") do
  fill_in('firstname',:with => 'Juscielma')
  fill_in('lastname',:with => 'Lima')
  fill_in('company',:with => 'Inmetrics')
  fill_in('address1',:with => 'RUSSET CREST CIR, 50, inmetrics')
  fill_in('city',:with => 'Hoover')
  find(:id,'uniform-id_state').first(:option,'Alaska').select_option
  sleep 5
  fill_in('phone_mobile',:with => '+1 251-208-7411')
  fill_in('alias',:with => 'RUSSET CREST CIR, 50, inmetrics')
  click_button('submitAccount')
  sleep 5
end

Quando("clicar em Register") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("será criado o novo cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end

# find('<option value="1">1&nbsp;&nbsp;</option>').click
  # 
  # <option value="16">16&nbsp;&nbsp;</option>