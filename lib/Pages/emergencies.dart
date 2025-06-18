import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Emergencies extends StatefulWidget {
  const Emergencies({super.key});

  @override
  State<Emergencies> createState() => _EmergenciesState();
}

class _EmergenciesState extends State<Emergencies> with TickerProviderStateMixin{
  late final TabController controller ;
  @override
  initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Emergencies')),
        actions: [
          Icon(Icons.search)
        ],
        bottom: TabBar(
          controller: controller ,
            tabs: const [
              Tab(
                text:'Active',
              ),
              Tab(
                text:'InActive',
              ),
            ]
        ),
      ),
      body: TabBarView(
        controller: controller,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 32),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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

                      Icon(Icons.circle,color: Colors.green,size: 15,)
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 53,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xFFD9D9D9),
                            ),
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: SvgPicture.asset(
                                'assets/images/power.svg',
                              ),
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Electric Wire Fault ...',
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
                                    '2:00pm',
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
                                    '5 Responders',
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

                      Icon(Icons.circle,color: Colors.green,size: 15,)
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 53,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xFFD9D9D9),
                            ),
                            child: SvgPicture.asset(
                              'assets/images/bed.svg',
                              width: 10,
                              height: 10,
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Woman in Labour, Kaciciru',
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
                                    '12:00pm',
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
                                    '7 Responders',
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
                      Icon(Icons.circle,color: Colors.green,size: 15,)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 32),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                'House flooding, Gizosi Cafe',
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
                                    '1 day ago',
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
                                    '15 responders',
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

                      Icon(Icons.circle,color: Colors.red,weight: 15,size: 15,)
                    ],
                  )
                ],
              ),

            ),
          ]
      ),
    );
  }
}
