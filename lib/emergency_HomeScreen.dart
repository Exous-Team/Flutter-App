import 'package:exouss/message_screen.dart';
import 'package:flutter/material.dart';

import 'hotlines_screen.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFF0F91AB),
          ),
        ),
        title: Center(
          child: Text(
            'Emergency',
            style: TextStyle(
              color: Color(0xFF0F91AB),
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body:
        Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(

                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>HotlinesScreen()),


                        );

                      },
                      child: Container(


                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,


                          children: [
                            Image(

                              image: AssetImage('assets/images/img_12.png'),
                              width: 60,
                              height: 60,

                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Hotlines',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat'

                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200, //New
                                blurRadius: 20.0,
                                offset: Offset(0, -1))
                          ],

                        ),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Expanded(

                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>MessageScreen()),


                        );

                      },
                      child: Container(


                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,


                          children: [
                            Image(

                              image: AssetImage('assets/images/img_13.png'),
                              width: 60,
                              height: 60,

                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Messages',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200, //New
                                blurRadius: 20.0,
                                offset: Offset(0, -1))
                          ],

                        ),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),

    );
  }
}
