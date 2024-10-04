import 'package:hive/hive.dart';

part 'settings.g.dart';

@HiveType(typeId: 2)
class Settings extends HiveObject {

  @HiveField(0)
  bool isDarktheme = true;

  @HiveField(1)
  bool shouldspeak = false;


 
 Settings({
  required this.isDarktheme,
  required this.shouldspeak,

  
 });
}