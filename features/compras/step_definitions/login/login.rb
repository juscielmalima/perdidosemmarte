#01_CENARIO @LOGIN
Dado("que eu estou na tela de login") do
  @Login_Page = LoginPage.new
  @Login_Page.load
  expect(@Login_Page).to have_email
end

Quando("eu digitar meu usuario e senha corretos e clicar em login") do
  @Login_Page.email.set 'julianaa@gmail.com'
  @Login_Page.passwd.set 'Ju874@0'
  @Login_Page.loginbtn.click
end

Entao("entrarei na minha conta no site") do
  page.has_content?(text:'Welcome to your account.')
end


