import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy water'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newT) {
    tasks.add(Task(name: newT));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
