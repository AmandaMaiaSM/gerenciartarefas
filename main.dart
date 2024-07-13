import 'dart:io';

import 'Task.dart';
import 'TaskManager.dart';

void main() {
  TaskManager taskManager = TaskManager();
  bool running = true;

  while (running) {
    print("\nTask Manager:");
    print("1. Adicionar Tarefa");
    print("2. Remover Tarefa");
    print("3. Listar Todas as Tarefas");
    print("4. Listar Tarefas Concluídas");
    print("5. Listar Tarefas Pendentes");
    print("6. Marcar Tarefa como Concluída");
    print("7. Sair");
    stdout.write("Escolha uma opção: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        stdout.write("ID da Tarefa: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Nome da Tarefa: ");
        String name = stdin.readLineSync()!;
        stdout.write("Descrição da Tarefa: ");
        String description = stdin.readLineSync()!;
        taskManager.addTask(Task(id, name, description));
        print("Tarefa adicionada com sucesso.");
        break;

      case '2':
        stdout.write("ID da Tarefa a remover: ");
        int id = int.parse(stdin.readLineSync()!);
        taskManager.removeTask(id);
        print("Tarefa removida com sucesso.");
        break;

      case '3':
        print("\nTodas as Tarefas:");
        for (var task in taskManager.getAllTasks()) {
          print("ID: ${task.id}, Nome: ${task.name}, Descrição: ${task.description}, Concluída: ${task.isCompleted}");
        }
        break;

      case '4':
        print("\nTarefas Concluídas:");
        for (var task in taskManager.getCompletedTasks()) {
          print("ID: ${task.id}, Nome: ${task.name}, Descrição: ${task.description}, Concluída: ${task.isCompleted}");
        }
        break;

      case '5':
        print("\nTarefas Pendentes:");
        for (var task in taskManager.getPendingTasks()) {
          print("ID: ${task.id}, Nome: ${task.name}, Descrição: ${task.description}, Concluída: ${task.isCompleted}");
        }
        break;

      case '6':
        stdout.write("ID da Tarefa a marcar como concluída: ");
        int id = int.parse(stdin.readLineSync()!);
        Task? task = taskManager.getTask(id);
        if (task != null) {
          task.complete();
          print("Tarefa marcada como concluída.");
        } else {
          print("Tarefa não encontrada.");
        }
        break;

      case '7':
        running = false;
        print("Saindo...");
        break;

      default:
        print("Opção inválida.");
    }
  }
}
