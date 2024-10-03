import 'package:flutter/material.dart';

class Newchat extends StatefulWidget {
  const Newchat({super.key});

  @override
  State<Newchat> createState() => _NewchatState();
}

class _NewchatState extends State<Newchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('newchat',),),
    );
  }
}