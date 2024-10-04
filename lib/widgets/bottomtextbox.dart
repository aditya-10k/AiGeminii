import 'package:flutter/material.dart';
import 'package:geminii/providers/chatprovider.dart';
import 'package:icons_plus/icons_plus.dart';

class Bottomtextbox extends StatefulWidget {
  const Bottomtextbox({super.key, required this.chatprovider});

  final Chatprovider chatprovider;

  @override
  State<Bottomtextbox> createState() => _BottomtextboxState();
}

class _BottomtextboxState extends State<Bottomtextbox> {

    final TextEditingController messagecontrol = TextEditingController();
    final FocusNode textFieldFocus = FocusNode();

    @override
  void dispose() {
    // TODO: implement dispose
    messagecontrol.dispose();
    textFieldFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? Colors.grey[900]! : Colors.grey[300]!;

    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
      ),
        


          child: TextFormField(
            controller: messagecontrol,
            focusNode: textFieldFocus,
            textInputAction: TextInputAction.send,
            
            onFieldSubmitted: (String value){
                      
            },
            
            style: TextStyle(
              fontSize: 20
              
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: backgroundColor,
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),

          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 11, 65, 146), 
              width: 2.0,
            ),
          ),
              prefixIcon:IconButton(
                        onPressed: (){}, 
                      icon: Icon(EvaIcons.image_2)), 
                      suffixIcon:IconButton(
            onPressed: (){
              //value.sendmessage
          },
           icon: Icon(AntDesign.arrow_up_outline)) ,
              hintText: 'Type ingredients',
            
                      
            ),
          ),
                      
        
      
    ) ;
  }
}