import 'package:flutter/material.dart';

class HotlinesScreen extends StatelessWidget {
  const HotlinesScreen({Key? key}) : super(key: key);

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
            'Hotlines',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/img_14.png'),
              width:100,
              height: 100,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'If you need  Help  please call Hotlines services and contact with specialist.',

              style: TextStyle(
                color: Color(0xFFC5C5C5),
                fontFamily: 'Montserrat',
                fontSize: 16,


              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity,
              height: 56.0,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0,),
                color: Color(0xFF0F91AB),
              ),
              child: MaterialButton(

                onPressed: (){


                },
                child: Text(
                  'Call Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
