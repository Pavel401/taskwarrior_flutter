import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:taskwarrior_flutter/views/home/home.dart';
import 'package:sizer/sizer.dart' as sizer;
import 'package:device_preview/device_preview.dart' as preview;
void main() async {
  await init();
  runApp(MyApp());
}

Future init() async {
  Loggy.initLoggy(logPrinter: const PrettyPrinter());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

// ignore: use_key_in_widget_constructors
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return sizer.Sizer(
      builder: (BuildContext context, Orientation orientation,
          sizer.DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Taskwarrior',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),  
          home: const Home(),
        );
      },
    );
  }
}
