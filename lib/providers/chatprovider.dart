import 'package:flutter/material.dart';
import 'package:geminii/constants.dart';
import 'package:geminii/hive/chathistory.dart';
import 'package:geminii/hive/settings.dart';
import 'package:geminii/hive/usermodel.dart';
import 'package:geminii/models/message.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
//import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as path;

class Chatprovider extends ChangeNotifier {

  List<Message> inchatmessages = [];
  
  final PageController pageController = PageController();

  List<XFile>? imagefilelist =[];

  int currentindex = 0;

  String currentchatid = '';

  GenerativeModel? gmodel ;

  GenerativeModel? textmodel ;

  GenerativeModel? visionmodel;

  String modeltype = 'gemini-pro';

  bool isloading = false ;

  List<Message> get inChatMessages => inchatmessages;

  PageController get Pagecontroller =>pageController;

  List<XFile>? get Imagefilelist => imagefilelist;

  int get Currentindex =>  currentindex;

  String get currentChatid => currentchatid;

  GenerativeModel? get Gmodel => gmodel ;

  GenerativeModel? get Textmodel => textmodel ;

  GenerativeModel? get Visionmodel => visionmodel;

  String get Modeltype => modeltype;

  bool get Isloading => isloading;

  

  static initHive() async
{
  final dir = await path.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.initFlutter(Constants.gemdb);

  //register adapters
  if(!Hive.isAdapterRegistered(0)){
    Hive.registerAdapter(ChathistoryAdapter());
    await Hive.openBox<Chathistory>(Constants.chathistorybox);
  }
  if(!Hive.isAdapterRegistered(1)){
    Hive.registerAdapter(UsermodelAdapter());
    await Hive.openBox<Usermodel>(Constants.userbox);
  }
  if(!Hive.isAdapterRegistered(2)){
    Hive.registerAdapter(SettingsAdapter());
    await Hive.openBox<Settings>(Constants.settingsbox);
  }


  }

}