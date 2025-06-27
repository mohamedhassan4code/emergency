import 'dart:developer' as console;

import 'package:emergency/models/temp_custom_user.dart';
import 'package:emergency/screens/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key
  });
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final birthKey = TextEditingController();
  final addressKey = TextEditingController();
  final phoneKey = TextEditingController();
  String completePhoneNumber = '';
  late TempCustomUser tempCustomUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context,constraints){
          return SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(32.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40,),
                      Text(
                        'Create Account',
                        style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 28,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 8.0,),
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Fill your information below or register with your social account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: birthKey,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32),
                                      borderSide: BorderSide(color: Colors.white60,width: 1)
                                  ),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'Birthday',
                                  hintText: 'MM/DD/YYYY',
                                  labelStyle: TextStyle(
                                      color: Color(0xFF333333),
                                      fontFamily: 'Manrope',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Manrope',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                  suffixIcon: Icon(Icons.calendar_month_outlined,color: Colors.grey,),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  )
                              ),
                              onTap: (){
                                showDatePicker(context: context, firstDate: DateTime(1980), lastDate: DateTime.now()).then((v){
                                  setState(() {
                                    birthKey.text = v!.toString();
                                  });
                                });
                              },
                            ),
                            SizedBox(height: 16,),
                            TextFormField(
                              controller: addressKey,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32),
                                      borderSide: BorderSide(color: Colors.white60,width: 1)
                                  ),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'Address',
                                  hintText: 'Enter Your Location',
                                  labelStyle: TextStyle(
                                      color: Color(0xFF333333),
                                      fontFamily: 'Manrope',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Manrope',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  )
                              ),
                            ),
                            SizedBox(height: 16,),
                            IntlPhoneField(
                              controller: phoneKey,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      color: Color(0xFF333333),
                                      fontFamily: 'Manrope',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32),
                                      borderSide: BorderSide(color: Colors.white60,width: 1)
                                  ),
                                  labelText: 'Phone'
                              ),
                              onChanged: (v){
                                completePhoneNumber = v.completeNumber;
                              },
                            ),
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
                                  onPressed: (){
                                    TempCustomUser temp = TempCustomUser(dateBirth:DateTime.parse (birthKey.text.toString()), address: addressKey.text, phoneNumber:completePhoneNumber);
                                    console.log('the address is ${temp.address} - the phone number is ${temp.phoneNumber} --- the birthday is ${temp.dateBirth}');
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context)=>Signup(
                                          tempCustomUser: temp,
                                        ))
                                    );
                                  },
                                  child: Text('Next')
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:21),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness:1,
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
                              thickness:1,
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
                                image: DecorationImage(image: AssetImage('assets/images/apple.png')),
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
                                image: DecorationImage(image: AssetImage('assets/images/google.png')),
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
                                image: DecorationImage(image: AssetImage('assets/images/facebook.png')),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1
                                )
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
          );
        },
      ),
    );
  }
}
