import 'package:flutter/material.dart';
import 'package:geminii/screen/homescreen.dart';
import 'package:geminii/workingcomps/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: ThemeMode.dark,
      home: Homescreen(),
      );
  }
}
        