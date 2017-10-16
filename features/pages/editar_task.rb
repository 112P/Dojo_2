class Editar < SitePrism::Page

element :search_btn, '#searchbutton'
element :search_field, '#query_string'
element :task, '#pagecontent > table > tbody:nth-child(3) > tr > td:nth-child(2) > a'

def SearchTask

	search_btn.click
	search_field.set(task)
	task.click

end
end