import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ApplicationState extends ChangeNotifier{
  ApplicationState(){
    _init();
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  User? get user => _user;
  bool get isLoggedIn => _user != null;
  void _init(){
    _auth.authStateChanges().listen((User? user){
      _user = user;
      notifyListeners();
    });
  }
  Future<void> signIn(String email, String password)async{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
  Future<void> signOut()async{
    await _auth.signOut();
  }
  Future<void> signUp(String email,String password)async{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

}