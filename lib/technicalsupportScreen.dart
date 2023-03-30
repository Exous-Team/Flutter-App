import 'package:flutter/material.dart';

class TechnicalSupportScreen extends StatelessWidget {
  const TechnicalSupportScreen({Key? key}) : super(key: key);


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
            'Technical Support',
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
                  image: AssetImage('assets/images/img_9.png'),
                width: 300,
                height: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'If you are facing technical issues while  dealing with the application contact us on ',
                style: TextStyle(
                  color: Color(0xFFC5C5C5),
                  fontFamily: 'Montserrat',
                  fontSize: 16,

                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Exousmaintain@gmail.com',
                style: TextStyle(
                  color:Color(0xFF0F91AB),
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
