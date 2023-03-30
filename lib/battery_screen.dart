import 'package:flutter/material.dart';

class BatteryScreen extends StatelessWidget {
  const BatteryScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Battery',
            style: TextStyle(
              color: Color(0xFF0F91AB),
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),


              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/img_11.png'),
                      width:231,
                      height: 231,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Battery need to be replaced',
                      style: TextStyle(
                        color: Color(0xFFAAA4A5),
                        fontFamily: 'Montserrat',
                        fontSize: 20,

                      ),
                    ),



                  ],
                ),
              ),
            ),



    );
  }
}
