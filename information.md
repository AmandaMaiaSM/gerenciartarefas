 Sistema de Gerenciamento de Tarefas
Classe Task:

Crie uma classe chamada Task.
Adicione os seguintes atributos privados:
_id (inteiro)
_name (String)
_description (String)
_isCompleted (booleano)
Construtor:

Crie um construtor que inicialize Task com um ID, nome e descrição. O estado inicial de _isCompleted deve ser falso.

Getters e Setters:

Crie getters para os atributos _id, _name, _description e _isCompleted.

Crie setters para _name, _description, e _isCompleted.
Métodos:

Crie um método chamado complete que marca a tarefa como concluída (_isCompleted se torna verdadeiro).

Classe TaskManager:

Crie uma classe chamada TaskManager.
Adicione um atributo privado _tasks que será uma lista de objetos Task.

Construtor:

Crie um construtor padrão que inicialize _tasks como uma lista vazia.

Métodos:

Crie um método chamado addTask que adiciona uma nova tarefa à lista.
Crie um método chamado removeTask que remove uma tarefa da lista pelo ID.
Crie um método chamado getTask que retorna uma tarefa pelo ID.
Crie um método chamado getAllTasks que retorna a lista de todas as tarefas.
Crie um método chamado getCompletedTasks que retorna a lista de todas as tarefas concluídas.
Crie um método chamado getPendingTasks que retorna a lista de todas as tarefas pendentes.
Demonstração:

Crie uma instância da classe TaskManager.
Adicione algumas tarefas e demonstre a funcionalidade de adicionar, remover, listar e completar tarefas.