import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Learn'),),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child:LayoutBuilder(
            builder: (context,constrain) {
              return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constrain.maxHeight
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Quick Access Guides',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold

                        ),
                      ),
                      SizedBox(height: 16,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 170,
                                height: 82,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.monitor_heart,color: Colors.red,),
                                        SizedBox(width: 8,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                'CPR Basic',
                                              style: TextStyle(
                                                fontFamily: 'Manrope',
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              '10 Min',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 27,
                                      child: OutlinedButton(

                                        onPressed: (){},
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: Colors.red),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            )
                                        ),
                                        child: Text(
                                          'View Guide',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'Manrope',
                                              fontSize: 11
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 82,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.monitor_heart,color: Colors.red,),
                                        SizedBox(width: 8,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'CPR Basic',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              '10 Min',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 27,
                                      child: OutlinedButton(

                                        onPressed: (){},
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: Colors.red),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            )
                                        ),
                                        child: Text(
                                          'View Guide',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'Manrope',
                                              fontSize: 11
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 170,
                                height: 82,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.monitor_heart,color: Colors.red,),
                                        SizedBox(width: 8,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'CPR Basic',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              '10 Min',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 27,
                                      child: OutlinedButton(

                                        onPressed: (){},
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: Colors.red),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            )
                                        ),
                                        child: Text(
                                          'View Guide',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'Manrope',
                                              fontSize: 11
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 82,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.monitor_heart,color: Colors.red,),
                                        SizedBox(width: 8,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'CPR Basic',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              '10 Min',
                                              style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 27,
                                      child: OutlinedButton(

                                        onPressed: (){},
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(color: Colors.red),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            )
                                        ),
                                        child: Text(
                                          'View Guide',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'Manrope',
                                              fontSize: 11
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 16,),
                      Text(
                          'Featured Course',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black,width: 1)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Emergency Preparedness',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF4C4C4C),
                                    fontSize: 13
                                  ),
                                ),
                                Text(
                                    '0%',
                                  style: TextStyle(
                                    color: Colors.red
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16,),
                            Container(
                              height: 13,
                              decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            SizedBox(height: 16,),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                  onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  side: BorderSide(color: Colors.black)
                                ),
                                  child: Text('Start'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Emergency Preparedness',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Manrope',
                                      color: Color(0xFF4C4C4C),
                                      fontSize: 13
                                  ),
                                ),
                                Text(
                                  '70%',
                                  style: TextStyle(
                                      color: Colors.green
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16,),
                            Stack(
                              children:[
                                Container(
                                height: 13,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                                Container(
                                  height: 13,
                                  width: MediaQuery.of(context).size.width*0.7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                              ]
                            ),
                            SizedBox(height: 16,),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    side: BorderSide(color: Colors.black)
                                ),
                                child: Text('Continue'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          'Certificates',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Basic Life Support',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope'
                                ),
                              ),
                              Text(
                                'Completed On December, 15, 2024',
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height:8,),
                      Row(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Basic Life Support',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Manrope'
                                ),
                              ),
                              Text(
                                'Completed On December, 15, 2024',
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 32,),
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
