import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/task.dart';

class HiveDataStore {
  static const tasksBoxName = 'tasks';
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<Task>(TaskAdapter());
    await Hive.openBox<Task>(tasksBoxName);
  }

  Future<void> createDemoTasks({required List<Task> tasks}) async {
    final box = Hive.box<Task>(tasksBoxName);
    if (box.isEmpty) {
      await box.addAll(tasks);
    }
  }
}
