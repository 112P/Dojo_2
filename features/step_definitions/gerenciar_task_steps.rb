Dado("que eu esteja na pagina principal") do
#Acessando o site
 acessar = AcessarSite.new
 acessar.load
#Logando na conta
 logar_task = LogarTask.new
 logar_task.log_in
end

Quando("acessar o menu criar nova task") do
#Clicando em nova task
 novatask = NovaTask.new
 novatask.load
#Criando nova task
 criartask = CriarTask.new
 criartask.Criar
end
#Confirmando criação da task
Entao("nova task criada com sucesso") do
  assert_text 'Task criada com sucesso'

end
#Acessando o menu editar task
Quando("acessar o menu editar task") do
  clicar_editar = ClicarEditar.new
  clicar_editar.load
end
#Confirmando a edição da task
Entao("uma task editada com sucesso") do
  assert_text "Task editada com sucesso"
end
#Deletando uma task
Quando("acessar o menu deletar task") do
  deletar = DeleteTask.new
  deletar.DeleteTask
end
#Confirmando a exclusão de uma task
Entao("task deletada com sucesso") do
  assert_text "Task deletada com sucesso"
end