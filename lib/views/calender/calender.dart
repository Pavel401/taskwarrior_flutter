import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'components/calender_view.dart';


class Calender extends StatefulWidget {
  const Calender({ Key? key }) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white38,
      body:  TableEventsExample(),
        
    );
  }
}