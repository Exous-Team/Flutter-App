import 'package:exouss/emergencyy_screen.dart';
import 'package:exouss/history_screen.dart';
import 'package:exouss/home_screen.dart';
import 'package:exouss/layout/cubit/states.dart';
import 'package:exouss/mentor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExousCubit extends Cubit<ExousStates>{
  ExousCubit():super(ExousInitialState());
  static ExousCubit get(context)=> BlocProvider.of(context);

  int currentIndex=0;
  List<Widget>screens=[
    HomeScreen(),
    HistoryScreen(),
    EmergencyyScreen(),
    MentorProfileScreen(),
  ];
  List<String>titles=[
    'Home',
    'History',
    'Emergency',
    'Profile Info',
  ];
  void changeBottomNavBar(int index){
    currentIndex=index;
    emit(ExousBottomNavState());
  }

}