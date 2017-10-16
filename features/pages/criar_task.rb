class CriarTask < SitePrism::Page
	#Preencher os campos para criar nova task
	element(:name, :id=>'name')
    element(:description, :id=>'date_start_date')
    element(:due_date, :id=>'date_due_date')    
    element :save_btn, "input[id='SAVE']"

 def Criar
 	#Preencher nome
	fill_in'name', :with => 'Teste Nova Task'
	#Preencher data
	fill_in'date_start_date', :with => '16/10/2017'
	#Selecionar Horas
	select'08', :from => 'date_start_hours'
	fill_in'date_due_date', :with => '17/10/2017'
	select'08', :from => 'date_due_hours'
	#Selecionar prioridade
	select'High', :from=> 'priority'
	#Selecionar progrosso
	select'In Progress', :from=> 'status'

	select'Contact', :from=> 'parent_type' 
	
	save_btn.last.click	


end
end