import 'package:cloud_firestore/cloud_firestore.dart';
class Emergency{
  final String uid;
  final String title;
  final String description;
  final String location;
  final int response;
  final DateTime time;
  final DateTime createdAt;
  final Status status;
  final Category category;
  final Level level;
  Emergency({
    required this.uid,
    required this.title,
    required this.description,
    required this.location,
    required this.response,
    required this.time,
    required this.createdAt,
    required this.status,
    required this.category,
    required this.level
});
  factory Emergency.fromMap(Map<String,dynamic> data){
    return Emergency(
        uid: data['uid'],
        title: data['title'],
        description: data['description'],
        location: data['location'],
        response: data['response'],
        time: (data['time'] as Timestamp).toDate(),
        createdAt: (data['createdAt'] as Timestamp).toDate(),
        status: Status.values.firstWhere((e)=>e.name == data['status']),
        category: Category.values.firstWhere((c)=>c.name == data['category']),
        level: Level.values.firstWhere((l) => l.name == data['level'])
    );
  }
  Map<String, dynamic> toMap(){
    return {
      'uid':uid,
      'title':title,
      'description':'description',
      'location':location,
      'response':response,
      'time':time,
      'createdAt':createdAt,
      'status':status,
      'category':category,
      'level':level,
    };
  }
}

enum Status{
  active,
  inActive
}

enum Category{
  fire,
  medical,
  police,
  naturalDisaster,
  other,
}

enum Level{
  medium,
  low,
  high,
}