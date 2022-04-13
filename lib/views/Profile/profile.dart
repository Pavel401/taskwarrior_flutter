import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: 4.w, right: 4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 20.w,
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.transparent,
                ),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/memoji.png",
                fit: BoxFit.cover,
                width: 20.w,
                height: 10.h,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text("Mabud Alam",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Tasks Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  shadowColor: Colors.white12,
                  elevation: 15,
                  color: Colors.white30,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                        height: 8.h,
                        width: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("11",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text("Completed Tasks",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        )),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  shadowColor: Colors.white12,
                  elevation: 15,
                  color: Colors.white30,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                        height: 8.h,
                        width: 40.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("4",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text("Pending Tasks",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget card() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    shadowColor: Colors.white12,
    elevation: 15,
    color: Colors.white30,
    child: ClipPath(
      clipper: ShapeBorderClipper(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Container(height: 8.h, child: Container()),
    ),
  );
}
