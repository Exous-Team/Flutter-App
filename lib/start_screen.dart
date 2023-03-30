import 'package:exouss/cubit/cubit.dart';
import 'package:exouss/cubit/states.dart';
import 'package:exouss/layout/cubit/cubit.dart';
import 'package:exouss/layout/cubit/states.dart';
import 'package:exouss/modules/login/mentor_login.dart';
import 'package:exouss/modules/register/mentor_signup.dart';
import 'package:exouss/patient_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

       return BlocConsumer<AppCubit,AppStates>(
         listener: (context,state){},
         builder: (context,state){
           return Scaffold(
             appBar: AppBar(
               elevation: 0.0,
             ),
             body: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Expanded(
                     child: Image(
                       image: AppCubit.get(context).isDark?AssetImage('assets/images/img_19.png'):AssetImage('assets/images/img.png'),
                       width: 459.0 ,
                       height:459.0 ,


                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Container(
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
                             MaterialPageRoute(builder: (context)=>PatientLoginScreen()),


                           );

                         },
                         child: Text(
                           'Login as a patient',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.w600,
                             fontSize: 16.0,
                             fontFamily: 'Montserrat',
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Container(
                       width: double.infinity,
                       height: 56.0,


                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30.0,),
                         color: Colors.white,
                         border: Border.all(
                           color: Color(0xFF0F91AB),
                         ),


                       ),
                       child: MaterialButton(

                         onPressed: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context)=>MentorLoginScreen()),


                           );
                         },
                         child: Text(
                           'Login as a mentor',
                           style: TextStyle(
                             color: Color(0xFF0F91AB),
                             fontWeight: FontWeight.w600,
                             fontSize: 16.0,
                             fontFamily: 'Montserrat',

                           ),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
             ),


           );
         },

       );




  }
}
