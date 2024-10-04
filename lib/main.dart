import 'package:flutter/material.dart';
import 'package:geminii/providers/chatprovider.dart';
import 'package:geminii/screen/homescreen.dart';
import 'package:geminii/workingcomps/themes.dart';
import 'package:provider/provider.dart';

void main() async{

    WidgetsFlutterBinding.ensureInitialized();
    await Chatprovider.initHive();

    runApp(
     
        ChangeNotifierProvider(create: (context) => Chatprovider(),child: MyApp()),
      );
  
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
      //themeMode: ThemeMode.light,
      home: Homescreen(),
      );
  }
}
        