import 'package:flutter/material.dart';
class PostEmergency extends StatefulWidget {
  const PostEmergency({super.key});

  @override
  State<PostEmergency> createState() => _PostEmergencyState();
}

class _PostEmergencyState extends State<PostEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Post Emergency')),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context,constrain){
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child:ConstrainedBox(
                constraints:BoxConstraints(minHeight: constrain.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Title',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Level',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        child: FilledButton(
                            onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                            child: Row(
                              children: [
                                Icon(Icons.photo_filter_rounded),
                                SizedBox(width:8),
                                Text('Upload Photo'),
                              ],
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        child: FilledButton(
                          onPressed: (){},
                          style: FilledButton.styleFrom(

                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text('Add Location'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Icon(Icons.circle_outlined, color: Colors.grey,),
                      SizedBox(width: 8,),
                      Text(
                        'Include my Contact Information',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Icon(Icons.check_circle_rounded, color: Colors.grey,),
                      SizedBox(width: 8,),
                      Text(
                        'I accept the terms and conditions',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                    height: 49,
                    child: FilledButton(
                      onPressed: (){},
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      child:Text('Submit Emergency'),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
