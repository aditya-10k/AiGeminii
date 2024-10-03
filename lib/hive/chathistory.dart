import 'package:hive/hive.dart';

part 'chathistory.g.dart';

@HiveType(typeId: 0)
class Chathistory extends HiveObject {

  @HiveField(0)
  final String chatId;

  @HiveField(1)
  final String prompt;

  @HiveField(2)
  final String response;

  @HiveField(3)
  final List<String> imageurl;

  @HiveField(4)
  final String time;

 Chathistory({
  required this.chatId,
  required this.prompt,
  required this.response,
  required this.imageurl,
  required this.time
 });


}

