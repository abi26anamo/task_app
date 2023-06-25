import 'package:flutter/material.dart';
import 'package:todoapp/task_preview.dart';

class NewTask extends StatefulWidget {
  static const routeName = '/new-task';

  const NewTask({Key? key}) : super(key: key);

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  TextEditingController taskController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List<String> type = ['Work', 'Personal Project', 'Self'];
  List<String> priority = ['Needs to be done', 'Nice to have'];
  List<String> timeframe = [
    'Today',
    '3 days',
    'Fortnight',
    'Month',
    '90 days',
    'Year'
  ];

  String typeDropdownValue = 'Work';
  String priorityDropdownValue = 'Needs to be done';
  String timeFrameDropdownValue = 'Today';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 12),
        color: const Color(0xFFF9F9F9),
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
                height: 40,
                child: const Text(
                  'New Task',
                  style: TextStyle(
                    color: Color(0xFF4942E4),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 650,
                width: 328,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 94,
                      width: 328,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Task",
                            style: TextStyle(
                              color: Color(0xFF2A2A2A),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 328,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              controller: taskController,
                              decoration: InputDecoration(
                                hintText: 'Text',
                                hintStyle: TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 94,
                      width: 328,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Type",
                            style: TextStyle(
                              color: Color(0xFF2A2A2A),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            width: 328,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                alignment: Alignment.bottomCenter,
                                isExpanded: true,
                                value: typeDropdownValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    typeDropdownValue = newValue!;
                                  });
                                },
                                items: type.map<DropdownMenuItem<String>>(
                                  (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 94,
                      width: 328,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Priority",
                            style: TextStyle(
                              color: Color(0xFF2A2A2A),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            width: 328,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: priorityDropdownValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    priorityDropdownValue = newValue!;
                                  });
                                },
                                items: priority.map<DropdownMenuItem<String>>(
                                  (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 94,
                      width: 328,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Time Frame",
                            style: TextStyle(
                              color: Color(0xFF2A2A2A),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            width: 328,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: timeFrameDropdownValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    timeFrameDropdownValue = newValue!;
                                  });
                                },
                                items: timeframe.map<DropdownMenuItem<String>>(
                                  (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 178,
                      width: 328,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                                color: Color(0xFF2A2A2A),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: 144,
                            width: 328,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              controller: descriptionController,
                              cursorColor: Colors.black,
                              maxLines: 15,
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 56,
                width: 328,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4942E4)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskPreview(
                          task: taskController.text,
                          type: typeDropdownValue,
                          priority: priorityDropdownValue,
                          timeFrame: timeFrameDropdownValue,
                          description: descriptionController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
