import 'package:bloc/bloc.dart';
import 'package:exouss/modules/login/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MentorLoginCubit extends Cubit<MentorLoginStates>{
  MentorLoginCubit(): super(MentorLoginInitialState());

  static MentorLoginCubit get(context) => BlocProvider.of(context);





  void userLogin({
    required String email,
    required String password,

  })
  {
    emit(MentorLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
    ).then((value) {
      print(value.user?.email);
      print(value.user?.uid);
      emit(MentorLoginSuccessState(value.user!.uid));

    }).catchError((error){
      emit(MentorLoginErrorState(error.toString()));

    });
  }



  bool isPassword=true;
  IconData suffix=Icons.visibility_off_outlined;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix=isPassword?Icons.visibility_outlined:Icons.visibility_off_outlined ;
    emit(MentorLoginchangePasswordVisibility());

  }



}