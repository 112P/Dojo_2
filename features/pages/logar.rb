class LogarTask < SitePrism::Page

	#Preencher os campos de login
	element(:user_name, :id=>'user_name')
	element(:user_password,:id => 'user_password')
	element(:login, :id =>'bigbutton')

def log_in
	#Preencher usuário
    fill_in "user_name", :with => 'will'
    #Preencher senha
    fill_in "user_password", :with => 'will'
    #Clicar no botão login
    click_button('bigbutton')
    
  end
end
