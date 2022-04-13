import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:taskwarrior_flutter/views/Task/Task.dart';

import '../Profile/profile.dart';
import '../Workspace/Workspace.dart';
import '../calender/calender.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    PageController _myPage = PageController(initialPage: 0);

    //on tap changes

    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        backgroundColor: HexColor("#7352E4"),
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: const Text(
          'Add a task',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          _settingModalBottomSheet(context);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        notchMargin: 4.0,
        elevation: 25,
        color: HexColor("#251B34"),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(0);
                    });
                  }),
              IconButton(
                  icon: Icon(
                    Icons.workspaces,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(1);
                    });
                  }),
              SizedBox(width: 40), // The dummy child
              IconButton(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(2);
                    });
                  }),
              IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(3);
                    });
                  }),
            ],
          ),
        ),
      ),
      backgroundColor: HexColor("#251B34"),
      appBar: AppBar(
        title: Text(
          "TaskWarrior",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 0.8.h, right: 2.w),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 0.8.h),
            child: Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 0.8.h, right: 2.w),
            child: Icon(
              Icons.sync,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: HexColor("#251B34"),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 5.w, top: 0.8.h, right: 2.w),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        children: [
          taskpage(),
          WorkspacePage(),
          Calender(),
          Profile(),
        ],
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      backgroundColor: Colors.white,
      elevation: 15,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(
                    'Edit Task',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: 'Rename Task Name',
                      labelText: 'Rename Task Name',
                      prefixIcon: Icon(
                        Icons.task,
                        color: HexColor("#7352E4"),
                      ),
                      prefixText: ' ',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        shadowColor: Colors.white12,
                        elevation: 15,
                        color: Colors.black26,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              width: 30.w,
                              height: 6.h,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      color: HexColor("#7352E4"),
                                      size: 25,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        shadowColor: Colors.white12,
                        elevation: 15,
                        color: Colors.black26,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              width: 30.w,
                              height: 6.h,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.alarm_add_rounded,
                                      color: HexColor("#7352E4"),
                                      size: 25,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    // shadowColor: Colors.white12,
                    elevation: 15,
                    color: HexColor("#7352E4"),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Container(
                          width: 50.w,
                          height: 6.h,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Submit Task",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
              ],
            ),
          ));
}
