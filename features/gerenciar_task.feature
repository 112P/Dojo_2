#language: pt
#utf-8

Funcionalidade: Gerenciar uma nova task
Eu como como usuário do site SuiteCRM 
Quero cadastrar uma nova task
Para o gerenciamento da task

	Contexto: Usuario loga em seu perfil no site 
	Dado que eu esteja na pagina principal

	@criar_task
	Cenario: Cadastrar Task
	 Quando acessar o menu criar nova task
	 Entao nova task criada com sucesso

	@editar_task
	Cenario: Editar Task
	 Quando acessar o menu editar task
	 Entao  uma task editada com sucesso	
	 
	@deletar_task
	Cenario: Deletar Task
	 Quando acessar o menu deletar task
	 Entao  task deletada com sucesso	