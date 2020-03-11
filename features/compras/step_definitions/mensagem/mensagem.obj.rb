#define entrar em contato com a empresa

class ContactUs < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=my-account'
  element :contactus, :xpath, '//*[@id="contact-link"]/a'
  element :heading, :xpath, '//*[@id="uniform-id_contact"]'
  element :order, :xpath, '//*[@id="center_column"]/form/fieldset/div[1]/div[1]/div[2]/div'
  element :message, :xpath, '//*[@id="message"]'
  element :submitmessage, :xpath, '//*[@id="submitMessage"]'
end