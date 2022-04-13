import 'package:flutter/material.dart';

import 'components/task_card.dart';

class taskpage extends StatefulWidget {
  const taskpage({ Key? key }) : super(key: key);

  @override
  State<taskpage> createState() => _taskpageState();
}

class _taskpageState extends State<taskpage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
              task(title: "Review Changes",date: "03/04/22",time: "10:00 AM",),
                task(title: "Meet JAmes",date: "03/04/22",time: "1:00 PM",),
                  task(title: "Push to Dev branoibhdtfchgvjhbkxdgfchgvjbkjnlkm;lkjhgfhjk ",date: "04/04/22",time: "09:00 AM",),
                    task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                      task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                        task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                          task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                            task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                              task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                                task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
                                  task(title: "CS50",date: "03/04/22",time: "09:00 AM",),
          ],
        ),
    );
  }
}