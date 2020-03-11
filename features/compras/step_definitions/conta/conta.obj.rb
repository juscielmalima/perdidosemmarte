#define criação de novo usuario

class CreateAccount < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  element :emailcreate, :xpath, '//*[@id="email_create"]'
  element :submitcreate, :xpath, '//*[@id="SubmitCreate"]'
  element :genderMan, :xpath, '//*[@id="uniform-id_gender1"]'
  element :genderWoman, :xpath, '//*[@id="uniform-id_gender2"]'
  element :firstname, :xpath, '//*[@id="customer_firstname"]'
  element :lastname, :xpath, '//*[@id="customer_lastname"]'
  element :email, :xpath, '//*[@id="email"]'
  element :password, :xpath, '//*[@id="passwd"]'
  element :daybirth, :xpath, '//*[@id="uniform-days"]'
  element :monthbirth, :xpath, '//*[@id="uniform-months"]'
  element :yearbirth, :xpath, '//*[@id="uniform-years"]'
  element :firstname2, :xpath, '//*[@id="firstname"]'
  element :lastname2, :xpath, '//*[@id="lastname"]'
  element :address1, :xpath, '//*[@id="address1"]'
  element :city, :xpath, '//*[@id="city"]'
  element :state, :xpath, '//*[@id="uniform-id_state"]'
  element :postcode, :xpath, '//*[@id="postcode"]'
  element :phonemobile, :xpath, '//*[@id="phone_mobile"]'
  element :myaddress, :xpath, '//*[@id="alias"]'
  element :register, :xpath, '//*[@id="submitAccount"]'
  element :viewmyaccount, :xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a'
  element :accounterror, :xpath, '//*[@id="create_account_error"]'
  element :accounterrorusing, :xpath, '//*[@id="create_account_error"]/ol/li/text()'                             
end

  
