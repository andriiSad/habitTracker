import 'package:flutter/material.dart';
import 'package:habit_tracker_flutter/models/task_preset.dart';
import 'package:habit_tracker_flutter/ui/task/animated_task.dart';

import '../../constants/text_styles.dart';
import '../theming/app_theme.dart';

class TaskWithName extends StatelessWidget {
  const TaskWithName({
    Key? key,
    required this.task,
  }) : super(key: key);

  final TaskPreset task;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AnimatedTask(
            iconName: task.iconName,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          task.name.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyles.taskName.copyWith(
            color: AppTheme.of(context).accent,
          ),
        )
      ],
    );
  }
}
