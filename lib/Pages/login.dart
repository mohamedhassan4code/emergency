import 'package:emergency/Pages/create_account.dart';
import 'package:emergency/home.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          TextField(
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
                          TextField(
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  hintText: 'Enter Your Password',
                                  suffixIcon: Icon(
                                      Icons.remove_red_eye_outlined)
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
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>Home())
                                  );
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
    );
  }
}
