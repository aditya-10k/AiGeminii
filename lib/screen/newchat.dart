import 'package:flutter/material.dart';
import 'package:geminii/providers/chatprovider.dart';
import 'package:geminii/widgets/bottomtextbox.dart';
import 'package:provider/provider.dart';

class Newchat extends StatefulWidget {
  const Newchat({super.key});

  @override
  State<Newchat> createState() => _NewchatState();
}

class _NewchatState extends State<Newchat> {

  final TextEditingController messagecontrol = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    messagecontrol.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Chatprovider>(
      builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('CHAT',
          style: TextStyle(letterSpacing: 10),),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(child:  value.inChatMessages.isEmpty
                ? Center(child: Text('*Start chat*'))
                :ListView.builder(
                  itemCount: value.inChatMessages.length,
                  itemBuilder: (context,index) {
                    final message = value.inChatMessages[index];
                    return ListTile(
                      title: Text(message.message.toString()),
                    );
                  })),
               Bottomtextbox(chatprovider: value,),
              ],
            ),
          ),
        ),
      );
      }
    );
  }
}