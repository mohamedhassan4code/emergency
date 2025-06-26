import 'package:emergency/providers/application_state.dart';
import 'package:emergency/screens/create_account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ApplicationState>(context);
    return Scaffold(
      body: SafeArea(
          child: LayoutBuilder(
            builder:(context,constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.all(40.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40,),
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            fontFamily: 'Manrope'
                        ),
                      ),
                      Text(
                        'Hi! Welcome ',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 22,
                            fontFamily: 'Manrope'
                        ),
                      ),
                      SizedBox(height: 40,),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email Address',
                            ),
                            TextFormField(
                              controller: emailController,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  hintText: 'Enter Your Email',
                                )
                            ),
                            SizedBox(height: 16.0,),
                            Text(
                              'Password',
                            ),
                            TextFormField(
                              controller: passwordController,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Colors.grey
                                    ),
                                    hintText: 'Enter Your Password',
                                    suffixIcon: Icon(
                                        Icons.remove_red_eye_outlined),
                                  enabledBorder: OutlineInputBorder(

                                  )
                                )
                            ),
                            SizedBox(height: 24.0,),
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: FilledButton(
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      )
                                  ),
                                  onPressed: () {
                                    final email = emailController.text;
                                    final password = passwordController.text;
                                    appState.signIn(email, password);
                                  },
                                  child: Text('Login')
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 21),
                      Text(
                        'Forgotten your password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            fontFamily: 'Manrope'
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                              endIndent: 10,
                            ),
                          ),
                          Text(
                            'Or sign in with ',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                              endIndent: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/apple.png')),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1
                                )
                            ),
                          ),
                          SizedBox(width: 16,),
                          Container(
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(
                                    'assets/images/google.png')),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1
                                )
                            ),
                          ),
                          SizedBox(width: 16,),
                          Container(
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(
                                    'assets/images/facebook.png')),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),
                      InkWell(
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>
                                  CreateAccount())
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            }
          )
      ),
    );
  }
}
