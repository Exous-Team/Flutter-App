import 'package:exouss/aboutusScreen.dart';
import 'package:exouss/battery_screen.dart';
import 'package:exouss/cubit/cubit.dart';
import 'package:exouss/emergency_HomeScreen.dart';
import 'package:exouss/history_fromHome.dart';
import 'package:exouss/history_screen.dart';
import 'package:exouss/layout/layout_screen.dart';
import 'package:exouss/mentor_profile.dart';
import 'package:exouss/technicalsupportScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 50

            ),
            child: Column(

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
                                MaterialPageRoute(builder: (context)=>EmergencyScreen()),


                              );

                            },
                            child: Container(


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(
                                    color: Color(0xFF0F91AB),

                                    image: AssetImage('assets/images/img_3.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Emergency',
                                      style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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
                                MaterialPageRoute(builder: (context)=>HistoryHomeScreen()),


                              );
                            },
                            child: Container(


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(

                                    image: AssetImage('assets/images/img_4.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'History',
                                    style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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



               Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,



                    ),
                    child: Row(
                      children: [
                        Expanded(

                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>BatteryScreen()),


                              );

                            },
                            child: Container(



                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(

                                    image: AssetImage('assets/images/img_5.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Battery',
                                    style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,

                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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
                                MaterialPageRoute(builder: (context)=>TechnicalSupportScreen()),


                              );
                            },
                            child: Container(


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(

                                    image: AssetImage('assets/images/img_6.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Technical support',

                                    style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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


                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(

                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>MentorProfileScreen(),


                              ),
                              );

                            },
                            child: Container(


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(

                                    image: AssetImage('assets/images/img_7.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Profile',

                                    style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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
                                MaterialPageRoute(builder: (context)=>AboutUsScreen()),


                              );
                            },
                            child: Container(


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,


                                children: [
                                  Image(

                                    image: AssetImage('assets/images/img_8.png'),
                                    width: 60,
                                    height: 60,

                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'About us',

                                    style:Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200, //New
                                      blurRadius: AppCubit.get(context).isDark?5:20,
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

    ),
       );

  }
}
