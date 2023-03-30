import 'package:exouss/patient_profile.dart';
import 'package:flutter/material.dart';

class PatientLoginScreen extends StatelessWidget {
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },

          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFF0F91AB),

          ),
        ),


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(

                  'Login',
                  style: TextStyle(
                    color: Color(0xFF0F91AB),
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,


                  ),
                ),
                SizedBox(height: 80.0,),



                Container(
                  width: 141.0,
                  height: 36.0,


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0,),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFF0F91AB),

                    ),


                  ),
                  child: MaterialButton(

                    onPressed: (){},
                    child: Text(
                      'Speak Now',
                      style: TextStyle(
                        color: Color(0xFF0F91AB),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        fontFamily: 'Montserrat',

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80.0,),



                 Icon(
                    Icons.mic,
                    size: 150,
                    color: Colors.grey,

                  ),
                SizedBox(height: 80.0,),
                Icon(
                  

                  Icons.report_gmailerrorred_rounded,
                  size: 30,
                  color: Colors.blue,

                ),
                SizedBox(height: 80.0,),
                Container(
                  width: double.infinity,
                  height: 56.0,


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0,),
                    color: Color(0xFF0F91AB),
                  ),
                  child: MaterialButton(

                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>PatientProfileScrreen()),


                      );

                    },
                    child: Text(
                      'Login',
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
        ),
      ),
    );
  }
}
