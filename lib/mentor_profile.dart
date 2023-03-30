import 'package:flutter/material.dart';

class MentorProfileScreen  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(

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
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/63621437?v=4'),
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
            'First Name',
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
                    'Mohammed',
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
            'Last Name',
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
                    'Kamal',
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
                    '21 years old',
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
            'E-mail',
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
                    Icons.email_outlined,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'mohammed7711647@gmail.com',
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
            'Password',
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
                    Icons.lock_outline_rounded,
                  ),

                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '**********',
                    style:Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    width:210,
                  ),
                  Icon(
                    Icons.remove_red_eye_outlined,
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
    );
  }
}
