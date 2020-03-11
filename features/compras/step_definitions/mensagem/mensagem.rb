#01_CENARIO @entrarEmContato
Quando("eu clicar para contatar a empresa em Contact us") do
  @Contact_Us = ContactUs.new
  # @Contact_Us.load
  @Contact_Us.contactus.click
end

Quando("preencher os campos do formulário de Send a Message") do
  @Contact_Us.heading.first(:option, 'Customer service').select_option
  @Contact_Us.order.first(:option, 'Choose ').select_option
  @Contact_Us.message.set 'Gostaria de receber mais informações do produto anexo'
end

Quando("clicar para enviar a mensagem em Send") do
  @Contact_Us.submitmessage.click
end

Então("a mensagem será enviada para a empresa") do
  page.has_content?(text:'Your message has been successfully sent to our team.')
end