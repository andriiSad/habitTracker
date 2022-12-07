import 'package:flutter/material.dart';
import 'package:habit_tracker_flutter/constants/app_assets.dart';
import 'package:habit_tracker_flutter/ui/task/animated_task.dart';
import 'package:habit_tracker_flutter/ui/task/task_completion_ring.dart';
import 'package:habit_tracker_flutter/ui/task/task_with_name.dart';
import 'package:habit_tracker_flutter/ui/theming/app_theme.dart';

import '../../models/task_preset.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).primary,
      body: Center(
        child: SizedBox(
          width: 240,
          child: TaskWithName(
            task: TaskPreset(
              name: 'Meditate',
              iconName: AppAssets.meditation,
            ),
          ),
        ),
      ),
    );
  }
}
