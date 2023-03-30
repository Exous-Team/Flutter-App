import 'package:exouss/cubit/cubit.dart';
import 'package:flutter/material.dart';

class PatientProfileScrreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0.0,
        leading:  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },

          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFF0F91AB),

          ),
        ),


        title:Center(
          child: Text(

            'Profile info',
            style: TextStyle(
              color: Color(0xFF0F91AB),
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w600,


            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              AppCubit.get(context).changeMode();

            },
            icon: Icon(
              Icons.brightness_4_outlined,
            ),
          ),
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 45.0,
                      backgroundImage: AssetImage('assets/images/Hector_Salamanca.png'),
                    ),
                    CircleAvatar(
                      radius: 13.0,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 3.0,
                        end: 3.0,
                      ),


                      child: Icon(

                        Icons.camera_alt_outlined,
                        color: Color(0xFF0F91AB),
                        size: 20,



                      ),


                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Color(0xFF0F91AB),
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey

                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,

                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Hector Salamanca',
                      style:Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              'Age',
              style: TextStyle(
                color: Color(0xFF0F91AB),
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey

                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '63',
                      style:Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              'Address',
              style: TextStyle(
                color: Color(0xFF0F91AB),
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey

                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Mexico',
                      style:Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              'Medical Info',
              style: TextStyle(
                color: Color(0xFF0F91AB),
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey

                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.medical_information_outlined,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Deadge',
                      style:Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              'Mentor’s Name',
              style: TextStyle(
                color: Color(0xFF0F91AB),
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey

                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                    ),

                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Mahfouz Elmogy',
                      style:Theme.of(context).textTheme.titleMedium,
                    ),


                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

          ],
        ),
      ),
    );
  }
}
