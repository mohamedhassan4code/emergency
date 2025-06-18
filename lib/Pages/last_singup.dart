import 'package:flutter/material.dart';

class LastSingup extends StatelessWidget {
  const LastSingup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder:(context,constraints) {
            return SingleChildScrollView(
                  padding: EdgeInsets.all(32),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      children: [
                        Text(
                          'Sign up',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333)
                          ),
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Verify OTP',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xFF333333)
                          ),
                        ),
                        Text(
                          'Please enter the code we sent you to email',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xFFC4C4C4)
                          ),
                        ),
                        SizedBox(height: 38,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 55,
                                height: 55,
                                child: TextField(

                                  decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                                height: 55,
                                child: TextField(

                                  decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                                height: 55,
                                child: TextField(

                                  decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                                height: 55,
                                child: TextField(

                                  decoration: InputDecoration(
                                      border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 34,),
                        Text(
                          'Didn’t Receive OTP ?',
                          style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'Resend Code',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 32,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                                '2 of 2'
                            ),
                            SizedBox(height: 16,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              height: 8,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height:61,
                          child: FilledButton(
                              style: FilledButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              ),
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>LastSingup())
                                );
                              },
                              child: Text('Next')
                          ),
                        )
                      ],
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
