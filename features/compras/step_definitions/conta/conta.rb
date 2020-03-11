#01_CENARIO @CONTAINVALIDA
Dado("que eu estou na tela inicial de nova conta") do
  @Create_Account = CreateAccount.new
  @Create_Account.load
  expect(@Create_Account).to have_emailcreate
end

Quando("eu digitar o email invalido e clicar em create an account") do
  @Create_Account.emailcreate.set 'teste'
  @Create_Account.submitcreate.click
end

Entao("receberei uma mensagem de email invalido") do
  expect(@Create_Account).to have_accounterror
  page.has_content?(text:'Invalid email address.')
end

# 02_CENARIO @CONTAVALIDA
Quando("eu digitar o email valido e clicar em create an account") do
  @Create_Account.emailcreate.set 'julianaa@gmail.com'
  @Create_Account.submitcreate.click
end

Quando("em Authentication preencher os campos de Your Personal Information") do
  @Create_Account.genderWoman.click  #seleciona Mrs no radio-inline
  @Create_Account.firstname.set 'Juliana'
  @Create_Account.lastname.set 'Silva'
  @Create_Account.password.set 'Ju874@0'
  @Create_Account.daybirth.first(:option,'11').select_option
  @Create_Account.monthbirth.first(:option,'March').select_option
  @Create_Account.yearbirth.first(:option,'2000').select_option
end

Quando("em Authentication preencher os campos de Your Address") do
  @Create_Account.address1.set 'RUSSET CREST CIR, 267, inmetrics'
  @Create_Account.city.set 'Pahoa'
  @Create_Account.state.first(:option,'Hawaii').select_option
  @Create_Account.postcode.set '96778'
  @Create_Account.phonemobile.set '713-849-7694'
  @Create_Account.myaddress.set 'Adress01'
end

Quando("finalizar clicando em Register") do
  @Create_Account.register.click
end

Então("será criado a nova conta") do
  page.has_content?(text:'Welcome to your account')
end

#03_CENARIO_@ERROCONTAEXISTENTE
Quando("eu digitar o email ja cadastrado e clicar em create an account") do
  @Create_Account.emailcreate.set 'juliana@gmail.com'
  @Create_Account.submitcreate.click
end

Entao("receberei uma mensagem informando que o email ja e registrado em uma conta") do
  expect(@Create_Account).to have_accounterror
  page.has_content?(text:'email address has already been registered.')
end
