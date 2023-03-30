import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exouss/models/user_model.dart';
import 'package:exouss/modules/login/cubit/states.dart';
import 'package:exouss/modules/register/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MentorRegisterCubit extends Cubit<MentorRegisterStates>{
  MentorRegisterCubit(): super(MentorRegisterInitialState());

  static MentorRegisterCubit get(context) => BlocProvider.of(context);

 void userRegister({
   required String name,
   required String email,
   required String phone,
   required String password,

  })
  {
    emit(MentorRegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ).then((value) {
      print(value.user?.email);
        print(value.user?.uid);
        userCreate(name: name, email: email, phone: phone, uId: value.user!.uid);
      emit(MentorRegisterSuccessState());
    }).catchError((error){
      emit(MentorRegisterErrorState(error.toString()));
    });



  }

  void userCreate({
    required String name,
    required String email,
    required String phone,
    required String uId,

  })
  {
    SocialUserModel model = SocialUserModel(
        email: email,
        name: name,
        phone: phone,
        uId: uId, isEmailVerified: true,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      emit(MentorCreateUserSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(MentorCreateUserErrorState(error.toString()));
    });
  }



  bool isPassword=true;
  IconData suffix=Icons.visibility_off_outlined;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix=isPassword?Icons.visibility_outlined:Icons.visibility_off_outlined ;
    emit(MentorRegisterChangePasswordVisibility());

  }



}