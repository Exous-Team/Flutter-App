import 'package:bloc/bloc.dart';
import 'package:exouss/cubit/states.dart';
import 'package:exouss/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  /*int currentIndex=0;
 List<Widget> screens=[
    TaskScreen(),
    DoneScreen(),
    ArchiveScreen(),
  ];
  List<String> titles=[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  void changeIndex(int index){
    currentIndex=index;
    emit(AppChangeBottomNavState());*/

 // }








  bool isDark=false;
  void changeMode({ bool? fromShared}){
    if(fromShared !=null) {
      isDark = fromShared;
      emit(ChangeModeState());
    }

    else{
      isDark=!isDark;
      CacheHeler.putBoolean(key: 'isDark', value: isDark)
          .then((value){
        emit(ChangeModeState());

      })
          .catchError((error){

      });
      emit(ChangeModeState());
    }
    }




}