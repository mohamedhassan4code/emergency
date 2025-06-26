import 'package:cloud_firestore/cloud_firestore.dart';

class CustomUser{

  final String uid;
  final String? name;
  final String? photoUrl;
  final String? username;
  final String email;
  final String phoneNumber;
  final DateTime dateBirth;
  final Gender? gender;
  CustomUser({
    required this.uid,
    this.name,
    this.photoUrl,
    this.username,
    required this.email,
    required this.phoneNumber,
    required this.dateBirth,
    this.gender
  }
  );
  factory CustomUser.fromMap(Map<String, dynamic> data, String uid){
    return CustomUser(
        uid: uid,
        name: data['name'],
        photoUrl: data['photoUrl'],
        username: data['username'],
        email: data['email'],
        phoneNumber: data['phoneNumber'],
        dateBirth: (data['dateBirth'] as Timestamp).toDate(),
        gender: data['gender'] != null?Gender.values.firstWhere((g)=>g.name == data['gender']): null
    );
  }
  Map<String, dynamic> toMap(){
    return{
      'name':name,
      'photoUrl':photoUrl,
      'username':username,
      'email':email,
      'phoneNumber':phoneNumber,
      'dateBirth': dateBirth,
      'gender': gender?.name,
    };
  }
}
enum Gender {
  male,
  female,
}