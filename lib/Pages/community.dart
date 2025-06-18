import 'package:flutter/material.dart';
class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child:Text(
          'Community',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 32),
              child: Text(
                  'Leaderboard',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/profile.png',width: 42,height: 42,),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Emmanuel John',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wine_bar),
                        Text(
                            '1200 Points',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.greenAccent[100]
                  ),
                  child: Center(
                      child: Text(
                          '1',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.green
                        ),
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Image.asset('assets/images/profile.png',width: 42,height: 42,),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emmanuel John',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wine_bar),
                        Text(
                          '1200 Points',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.greenAccent[100]
                  ),
                  child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.green
                        ),
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Image.asset('assets/images/profile.png',width: 42,height: 42,),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emmanuel John',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wine_bar),
                        Text(
                          '1200 Points',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.greenAccent[100]
                  ),
                  child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.green
                        ),
                      )
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Text(
                'Your Ranking',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/profile.png',
                width: 42,height: 42,),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emmanuel John',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wine_bar),
                        Text(
                          '1200 Points',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
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
                            fontSize: 21,
                            color: Colors.red
                        ),
                      )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
