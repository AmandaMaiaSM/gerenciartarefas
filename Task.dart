class Task {
  int _id;
  String _name;
  String _description;
  bool _isCompleted;

  // Construtor 
  Task(this._id, this._name, this._description) : _isCompleted = false;

  // Getters
  int get id => _id;
  String get name => _name;
  String get description => _description;
  bool get isCompleted => _isCompleted;

  // Setters
  set name(String newName) {
    if (newName != null && newName.isNotEmpty) {
      _name = newName;
    }
  }

  set description(String newDescription) {
    if (newDescription != null && newDescription.isNotEmpty) {
      _description = newDescription;
    }
  }

  set isCompleted(bool newIsCompleted) {
    _isCompleted = newIsCompleted;
  }

  // Método para marcar a tarefa como concluída
  void complete() {
    _isCompleted = true;
  }
}
