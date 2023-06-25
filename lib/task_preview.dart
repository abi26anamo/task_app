import 'package:flutter/material.dart';
import 'package:todoapp/new_task.dart';
import 'package:todoapp/task_arguments.dart';

class TaskPreview extends StatefulWidget {
  static const routeName = '/task-preview';
  final String task;
  final String type;
  final String priority;
  final String timeFrame;
  final String description;

  const TaskPreview({
    Key? key,
    required this.task,
    required this.type,
    required this.priority,
    required this.timeFrame,
    required this.description,
  }) : super(key: key);

  @override
  State<TaskPreview> createState() => _TaskPreviewState();
}

class _TaskPreviewState extends State<TaskPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xFF4942E4),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 20),
                width: 360,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Task Preview',
                      style: TextStyle(
                          color: Color(0xFF4942E4),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    const Icon(
                      Icons.delete_outline_outlined,
                      color: Color(0xFF4942E4),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 61,
                width: 328,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Task",
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.task,
                      style: const TextStyle(
                          fontSize: 22, color: Color(0xFF2A2A2A)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 61,
                width: 328,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Priority",
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.priority,
                      style: const TextStyle(
                          fontSize: 22, color: Color(0xFF2A2A2A)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 61,
                width: 328,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Time Frame",
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.timeFrame,
                      style: const TextStyle(
                          fontSize: 22, color: Color(0xFF2A2A2A)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 127,
                width: 328,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                          fontSize: 22, color: Color(0xFF2A2A2A)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //  eddit button
                  Container(
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ]),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          NewTask.routeName,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.edit_outlined,
                            color: Color(0xFF4942E4),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Edit',
                            style: TextStyle(
                                color: Color(0xFF4942E4),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // delete button
                  Container(
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_outlined,
                          color: Color(0xFF4942E4),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Done',
                          style: TextStyle(
                              color: Color(0xFF4942E4),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
