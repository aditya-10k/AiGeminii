import 'package:hive/hive.dart';

part 'usermodel.g.dart';

@HiveType(typeId: 1)
class Usermodel extends HiveObject {

  @HiveField(0)
  final String uid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String image;

 
 Usermodel({
  required this.uid,
  required this.name,
  required this.image,
  
 });


}

