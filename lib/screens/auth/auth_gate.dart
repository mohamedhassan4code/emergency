import 'package:emergency/home.dart';
import 'package:emergency/providers/application_state.dart';
import 'package:emergency/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final  appLifecycleState = Provider.of<ApplicationState>(context);
    if(appLifecycleState.isLoggedIn){
      return Home();
    }else{
      return Login();
    }
  }
}
