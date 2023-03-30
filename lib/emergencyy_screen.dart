import 'package:exouss/cubit/cubit.dart';
import 'package:exouss/message_screen.dart';
import 'package:flutter/material.dart';

import 'hotlines_screen.dart';

class EmergencyyScreen extends StatefulWidget {
  const EmergencyyScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyyScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<EmergencyyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(

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
                              style:Theme.of(context).textTheme.titleSmall
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
      );
  }
}
