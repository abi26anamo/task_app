
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/new_task.dart';

class TasksList extends StatefulWidget {
  static const routeName = '/tasks-list';
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 29, left: 12),
        color: Color(0xFFF9F9F9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 36,
                width: 36,
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xFF4942E4),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 20),
                width: 360,
                height: 67,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Tasks',
                          style: TextStyle(
                              color: Color(0xFF4942E4),
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '6 Tasks',
                          style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.pushNamed(context, NewTask.routeName);
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        backgroundColor: const Color(0xFF4942E4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasksList.routeName,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  height: 96,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'this work has to be done',
                            style: TextStyle(
                                color: Color(0xFF404040),
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '6 Tasks',
                            style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF4942E4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasksList.routeName,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  height: 96,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'this work has to be done',
                            style: TextStyle(
                                color: Color(0xFF404040),
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '6 Tasks',
                            style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF4942E4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasksList.routeName,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  height: 96,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'this work has to be done',
                            style: TextStyle(
                                color: Color(0xFF404040),
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '6 Tasks',
                            style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF4942E4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasksList.routeName,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  height: 96,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'this work has to be done',
                            style: TextStyle(
                                color: Color(0xFF404040),
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '6 Tasks',
                            style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF4942E4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasksList.routeName,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  height: 96,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF2F2F2),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFFEDF3FF),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'this work has to be done',
                            style: TextStyle(
                                color: Color(0xFF404040),
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '6 Tasks',
                            style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF4942E4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
