class Comment{
  final String uid;
  final String content;
  final DateTime createdAt;
  final String emergencyId;
  Comment({
    required this.uid,
    required this.content,
    required this.createdAt,
    required this.emergencyId
  }
  );
  factory Comment.fromMap(Map<String,dynamic>data){
    return Comment(
        uid: data['uid'],
        content: data['content'],
        createdAt: data['createdAt'],
        emergencyId: data['emergencyId']
    );
  }
  Map<String,dynamic>toMap(){
    return{
      'uid':uid,
      'content':content,
      'createdAt':createdAt,
      'emergencyId':emergencyId
    };
  }

}