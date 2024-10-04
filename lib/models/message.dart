class Message {

  String messageid ;
  String chatid ;
  Role role;
  StringBuffer message;
  List<String> imageurls;
  DateTime timesent ;

  Message({
    required this.messageid,
    required this.chatid,
    required this.role,
    required this.message,
    required this.imageurls,
    required this.timesent,

  });

  Map<String , dynamic> toMap(){
    return{
      'messageid' : messageid,
      'chatid' : chatid,
      'role' : role.index,
      'message' : message.toString(),
      'imageurls' : imageurls,
      'timesent' : timesent.toIso8601String()
    };
  }

  factory Message.fromMap(Map<String , dynamic> map){
    return Message(
      messageid: map['messageid'], 
      chatid: map['chat'], 
      role:Role.values[map['role']], 
      message:StringBuffer(map['message']), 
      imageurls:List<String>.from(['imagurls']), 
      timesent: DateTime.parse(map['timesent'])
      );
  }

  Message copyWith({
    String? messageid ,
  String? chatid ,
  Role? role,
  StringBuffer? message,
  List<String>? imageurls,
  DateTime? timesent ,
  }){
    return Message(
      messageid: messageid ?? this.messageid, 
      chatid: chatid ?? this.chatid, 
      role: role ?? this.role, 
      message: message ?? this.message, 
      imageurls: imageurls ?? this.imageurls, 
      timesent: timesent ?? this.timesent,
      );
  }

  @override
  bool operator ==(Object other) {
   if(identical(this, other)) return true ;

   return other is Message && 
    other.messageid == messageid;
  }

  @override
  // TODO: implement hashCode
  int get hashCode {

    return messageid.hashCode;

  }

}

enum Role{
  user, 
  assistant,
}