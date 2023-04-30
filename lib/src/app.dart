import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Clean Architecture',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          timePickerTheme: TimePickerThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            hourMinuteShape: const CircleBorder(),
          ),
        ),
        home: Container());
  }
}
