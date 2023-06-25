import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/tasks.dart';

class Tasks extends StatelessWidget {
  static const routeName = '/tasks';
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, top: 32),
              child: const Text(
                'Sample App',
                style: TextStyle(
                    color: Color(0xFF4942E4),
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 48,
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
                    Row(
                      children: [
                        SizedBox(
                          height: 28,
                          width: 28,
                          child:
                              Image.asset('assets/images/laptop-png-6754.png'),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Tasks',
                              style: TextStyle(
                                  color: Color(0xFF404040),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
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
    );
  }
}
