import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/new_task.dart';
import 'package:todoapp/task_preview.dart';
import 'package:todoapp/tasks.dart';
import 'package:todoapp/task_arguments.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Tasks.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Tasks(),
      );
    case TasksList.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TasksList(),
      );

    case NewTask.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => NewTask(),
      );
    case TaskPreview.routeName:
      final taskArgs = routeSettings.arguments as TaskArguments;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => TaskPreview(
          task: taskArgs.task,
          type: taskArgs.type,
          priority: taskArgs.priority,
          timeFrame: taskArgs.timeFrame,
          description: taskArgs.description,
        ),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
