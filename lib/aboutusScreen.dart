import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);


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
            'About Us',
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
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/img_10.png'),
                width: 300,
                height: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Exous aims to provide a service for paralyzed patients to regain some of their hand functionality back by providing them with the ability to grab,push,and pull objects by developing a robotic arm which is controlled by voice commands . ',
                style: TextStyle(
                  color: Color(0xFFAAA4A5),
                  fontFamily: 'Montserrat',
                  fontSize: 16,

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
