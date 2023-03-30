import 'package:exouss/layout/layout_screen.dart';
import 'package:exouss/mentor_profile.dart';
import 'package:exouss/modules/register/mentor_signup.dart';
import 'package:exouss/modules/login/cubit/cubit.dart';
import 'package:exouss/modules/login/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';


class MentorLoginScreen extends StatelessWidget {
  @override
  var emailController=TextEditingController();

  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => MentorLoginCubit(),
      child: BlocConsumer<MentorLoginCubit,MentorLoginStates>(
        listener: ( context, state) {
          if(state is MentorLoginErrorState){
            Fluttertoast.showToast(
                msg: state.error,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }

          if (state is MentorLoginSuccessState){

          }

        },
        builder: ( context, state) {
          return Scaffold(
            appBar: AppBar(

              elevation: 0.0,
              leading:  IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },

                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xFF0F91AB),

                ),
              ),


              title:Center(
                child: Text(

                  'Login',
                  style: TextStyle(
                    color: Color(0xFF0F91AB),
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,


                  ),
                ),
              ),


            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: Theme.of(context).textTheme.titleLarge,


                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'E-mail',
                        style:Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(

                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        validator: ( value){
                          if(value != null && value.isEmpty){

                            return 'Email address must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),

                          prefixIcon: Icon(

                            Icons.email,
                            color: Theme.of(context).iconTheme.color,

                          ),
                          hintText: 'example123@gmail.com',
                          hintStyle: Theme.of(context).textTheme.titleMedium ,
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(15.0),

                          ),

                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Password',
                        style:Theme.of(context).textTheme.titleMedium,

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(

                        controller: passwordController,
                        obscureText: MentorLoginCubit.get(context).isPassword,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        validator: ( value){
                          if(value != null && value.isEmpty){

                            return 'Password must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),

                          prefixIcon: Icon(
                            color: Theme.of(context).iconTheme.color,
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              MentorLoginCubit.get(context).changePasswordVisibility();

                            },
                            icon: Icon(
                              MentorLoginCubit.get(context).suffix),
                          ),
                          hintText: '*********',
                          hintStyle:  Theme.of(context).textTheme.titleMedium ,

                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(15.0),

                          ),

                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56.0,


                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0,),
                          color: Color(0xFF0F91AB),
                        ),
                        child: MaterialButton(

                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              MentorLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text
                              );
                            /*  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>LayoutScreen()),


                              );


                             */
                            }


                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>MentorSignupScreen()),


                              );
                            },
                            child:
                            Text('Sign Up'),
                          ),



                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        },


      ),
    );
  }
}

