import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Manrope',
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child:LayoutBuilder(
              builder:(context,constrain){
                return SingleChildScrollView(
                  padding: EdgeInsets.all(32),
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constrain.maxHeight
                      ) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                              'assets/images/profile.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Center(
                          child: Text(
                              'Peter Lee',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Manrope'
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                              'Emergency Responder',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 17,
                              color: Color(0xFF707070)
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 48,
                              child: FilledButton(
                                  onPressed: (){},
                                  style: FilledButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.settings_applications),
                                      Text('Edit Profile')
                                    ],
                                  ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 48,
                              child: FilledButton(
                                onPressed: (){},
                                style: FilledButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.settings),
                                    Text('Settings')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 32,),
                        Text(
                          'Status',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Manrope'
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Total Responses',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                    '1',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Total Points',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '200',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 100,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Posts',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Ranking',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  width: 37,
                                  height: 37,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red[100]
                                  ),
                                  child: Center(
                                    child: Text(
                                      '47',
                                      style: TextStyle(
                                        fontFamily: 'Manrope',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Posts History',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Manrope'
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              width: 53,
                              height: 53,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Color(0xFFD9D9D9),
                              ),
                              child: Icon(
                                Icons.local_fire_department_outlined,
                                weight: 24,
                                size: 24,
                              ),
                            ),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fire Outbreak in Gizosi',
                                  style: TextStyle(
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      size: 16,
                                      color: Color(0xFF4C4C4C),
                                    ),
                                    Text(
                                      '1:45pm',
                                      style: TextStyle(
                                          color: Color(0xFF4C4C4C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Icon(
                                      Icons.back_hand_outlined,
                                      size: 16,
                                      color: Color(0xFF4C4C4C),
                                    ),
                                    Text(
                                      '3 Responders',
                                      style: TextStyle(
                                          color: Color(0xFF4C4C4C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Response History',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Manrope'
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              width: 53,
                              height: 53,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Color(0xFFD9D9D9),
                              ),
                              child: Icon(
                                Icons.local_fire_department_outlined,
                                weight: 24,
                                size: 24,
                              ),
                            ),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fire Outbreak in Gizosi',
                                  style: TextStyle(
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      size: 16,
                                      color: Color(0xFF4C4C4C),
                                    ),
                                    Text(
                                      '1:45pm',
                                      style: TextStyle(
                                          color: Color(0xFF4C4C4C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Icon(
                                      Icons.back_hand_outlined,
                                      size: 16,
                                      color: Color(0xFF4C4C4C),
                                    ),
                                    Text(
                                      '3 Responders',
                                      style: TextStyle(
                                          color: Color(0xFF4C4C4C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
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