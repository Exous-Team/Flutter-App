import 'package:exouss/counter_screen.dart';
import 'package:exouss/cubit/cubit.dart';
import 'package:exouss/cubit/states.dart';
import 'package:exouss/shared/bloc_observer.dart';
import 'package:exouss/shared/network/local/cache_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:exouss/home_screen.dart';
import 'package:exouss/layout/layout_screen.dart';
import 'package:exouss/modules/login/mentor_login.dart';
import 'package:exouss/patient_login.dart';
import 'package:exouss/patient_profile.dart';
import 'package:exouss/start_screen.dart';
import 'package:exouss/technicalsupportScreen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';


import 'shared/components/constants.dart';
import 'emergency_HomeScreen.dart';
import 'mentor_profile.dart';
import 'modules/register/mentor_signup.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
   await CacheHeler.init();
   bool? isDark=CacheHeler.getBoolean(key: 'isDark');
  await Firebase.initializeApp();
  runApp( MyApp(isDark!));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  MyApp(this.isDark);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) =>AppCubit()..changeMode(fromShared: isDark),

      child: BlocConsumer<AppCubit,AppStates>(

        listener: ( context, state) {  },
        builder: ( context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: TextTheme(
                titleMedium: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',


                  color: Colors.black,
                ),
                titleLarge: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.black
                ),
                titleSmall: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),

              ),


              primarySwatch: Colors.teal,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Color(0xFF0F91AB),
              ),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                titleSpacing: 20.0,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                backwardsCompatibility: false,
                elevation: 0.0,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,




                ),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark,

                ),


              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Color(0xFF0F91AB),
                  unselectedItemColor: Colors.grey,
                  elevation: 20,
                  backgroundColor: Colors.white


              ),
          inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: Colors.black),
          ),),



            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Colors.black,
              textTheme: TextTheme(

                titleMedium: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',


                  color: Colors.white,
                ),
                titleLarge: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white
                ),
                titleSmall: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),


              ),
              iconTheme: IconThemeData(
                color: Colors.white,
              ),





              primarySwatch: Colors.teal,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Color(0xFF0F91AB),
              ),
              appBarTheme: AppBarTheme(
                titleSpacing: 20.0,

                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                backgroundColor: Colors.black,
                backwardsCompatibility: false,
                elevation: 0.0,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,




                ),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor:Colors.black,
                  statusBarIconBrightness: Brightness.light,

                ),


              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Color(0xFF0F91AB),
                  unselectedItemColor: Colors.grey,
                  elevation: 20,
                  backgroundColor: Colors.black



              ),

              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Colors.white),
                ),),




            ),
            themeMode: AppCubit.get(context).isDark?ThemeMode.dark: ThemeMode.light,

            home:StartScreen(),
          );
        },

      ),
    );
  }
}

