import 'package:geminii/constants.dart';
import 'package:geminii/hive/settings.dart';
import 'package:geminii/hive/usermodel.dart';
import 'package:geminii/screen/chathistory.dart';
import 'package:hive/hive.dart';

class Boxes {
//get the chat history box

static Box<Chathistory> getChatHistory() => Hive.box<Chathistory>(Constants.chathistorybox);

//get userbox

static Box<Usermodel> getuser() => Hive.box<Usermodel>(Constants.userbox);

//get settings box

static Box<Settings> getsettings() => Hive.box<Settings>(Constants.settingsbox);


}