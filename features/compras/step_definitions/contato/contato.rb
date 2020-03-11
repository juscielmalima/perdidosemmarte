Dado("que eu esteja logado no site") do
  find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
  first('#email').send_keys('rrittamottaa@gmail.com')
  fill_in('passwd',:with=>'@T4$st')
  click_button('SubmitLogin')
end

Quando("eu clicar em Contact us") do
  click_link('Contact Us')
end

Quando("preencher os campos do formulário Send a Message") do
  find(:id,'uniform-id_contact').first(:option,'Customer service').select_option
  # click_link('fileUpload')
  # click_button('fileUpload')
  # find(:id,'fileUpload').click
  # find(:id,'uniform-fileUpload').click 
  # attach_file'fileUpload','C:\Users\Juscielma Lima\Desktop\1-large_default.jpg'
  # find('input#fileUpload', visible: false).set('C:\Users\Juscielma Lima\Desktop\1-large_default.jpg')
  # attach_file '1-large_default.jpg'
  fill_in('message',:with=>'Não localizado o produto SUMMER DRESSES')
end

Quando("clicar em Send") do
  click_button('submitMessage')
end

Então("a mensagem será enviada") do
  assert_text('Your message has been successfully sent to our team.')
end


