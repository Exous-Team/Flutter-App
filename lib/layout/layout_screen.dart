
import 'package:exouss/layout/cubit/cubit.dart';
import 'package:exouss/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => ExousCubit(),
      child: BlocConsumer<ExousCubit,ExousStates>(

        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ExousCubit.get(context);
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

                  cubit.titles[cubit.currentIndex],
                  style: TextStyle(
                    color: Color(0xFF0F91AB),
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,


                  ),
                ),
              ),


            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              selectedItemColor: Color(0xFF0F91AB),
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                      Icons.home_filled
                  ),

                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history_edu_outlined,

                  ),
                  label: 'History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.health_and_safety_rounded,

                  ),
                  label: 'Emergency',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,

                  ),
                  label: 'Profile',
                ),
              ],
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },

      ),
    );
  }

}


