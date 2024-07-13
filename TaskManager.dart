import 'task.dart';

class TaskManager {
  List<Task> _tasks;

  // Construtor padrão que inicializa _tasks como uma lista vazia 
  TaskManager() : _tasks = [];

  //Métodos
  // Método para adicionar uma nova tarefa à lista
  void addTask(Task task) {
    _tasks.add(task);
  }

  // Método para remover uma tarefa da lista pelo ID
  void removeTask(int id) {
    _tasks.removeWhere((task) => task.id == id);
  }

  // Método para retornar uma tarefa pelo ID
  Task? getTask(int id) {
    return _tasks.firstWhere((task) => task.id == id, orElse: () => null);
  }

  // Método para retornar a lista de todas as tarefas
  List<Task> getAllTasks() {
    return _tasks;
  }

  // Método para retornar a lista de todas as tarefas concluídas
  List<Task> getCompletedTasks() {
    return _tasks.where((task) => task.isCompleted).toList();
  }

  // Método para retornar a lista de todas as tarefas pendentes
  List<Task> getPendingTasks() {
    return _tasks.where((task) => !task.isCompleted).toList();
  }
}
