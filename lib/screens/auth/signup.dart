import 'package:emergency/models/temp_custom_user.dart';
import 'package:emergency/providers/application_state.dart';
import 'package:emergency/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({
    super.key,
    required this.tempCustomUser
  });
  final TempCustomUser tempCustomUser;

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late bool check = true;
  late bool check1 = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ApplicationState>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true, // IMPORTANT
      appBar: AppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(32),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontFamily: 'Manrope',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 40),
                      Form(
                        child: Column(
                          children: [
                            // Email
                            TextField(
                              controller:emailController,
                              decoration: _inputDecoration('Email', 'Your Email'),
                            ),
                            SizedBox(height: 32),
                            // Password
                            TextField(
                              controller: passwordController,
                              obscureText: check,
                              decoration: _inputDecoration(
                                'Password',
                                'Your Password',
                                suffix: InkWell(
                                  child: check
                                      ? Image.asset('assets/images/test.png', width: 20, height: 20)
                                      : Icon(Icons.remove_red_eye),
                                  onTap: () {
                                    setState(() => check = !check);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 32),

                            // Confirm Password
                            TextField(
                              controller: password2Controller,
                              obscureText: check1,
                              decoration: _inputDecoration(
                                'Confirm Password',
                                'Re-enter Password',
                                suffix: InkWell(
                                  child: check1
                                      ? Image.asset('assets/images/test.png', width: 20, height: 20)
                                      : Icon(Icons.remove_red_eye),
                                  onTap: () {
                                    setState(() => check1 = !check1);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),

                      // Step Progress
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('1 of 2'),
                          SizedBox(height: 8),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 8,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0F0F0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              Container(
                                height: 8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      // NEXT Button
                      SizedBox(
                        width: double.infinity,
                        height: 61,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            if(passwordController.text == password2Controller.text && emailController.text!= '' ){
                              final email = emailController.text.trim();
                              final password = password2Controller.text.trim();
                              appState.signUp(email, password);
                              Navigator.of(context).push(
                                   MaterialPageRoute(builder: (context) => Login()),
                                  );
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('The Password Are Not the Same'))
                              );
                            }
                          },
                          child: Text('Done'),
                        ),
                      ),
                      SizedBox(height: 16), // <- This prevents last button from sticking
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration(String label, String hint, {Widget? suffix}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: label,
    hintText: hint,
    labelStyle: TextStyle(
      color: Color(0xFF333333),
      fontFamily: 'Manrope',
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    hintStyle: TextStyle(
      color: Color(0xFFCFCFCF),
      fontFamily: 'Manrope',
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(32),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(32),
    ),
    suffixIcon: suffix,
  );
}
