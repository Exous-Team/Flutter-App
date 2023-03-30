import 'package:exouss/layout/layout_screen.dart';
import 'package:exouss/modules/login/mentor_login.dart';
import 'package:exouss/mentor_profile.dart';
import 'package:exouss/modules/register/cubit/cubit.dart';
import 'package:exouss/modules/register/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MentorSignupScreen extends StatelessWidget {
  @override
  var emailController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
  var passwordController=TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) =>MentorRegisterCubit(),
      child: BlocConsumer<MentorRegisterCubit,MentorRegisterStates>(
        listener: ( context, state) {
          if(state is MentorCreateUserSuccessState){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LayoutScreen()),
            );
          }
        },
         builder: ( context, state) {
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
                  'Sign Up',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name',
                        style:Theme.of(context).textTheme.titleSmall,

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(

                        controller: nameController,
                        keyboardType: TextInputType.text,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'First name must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),


                          prefixIcon: Icon(
                            Icons.person,
                            color:  Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'Enter your first name',
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
                        'Second Name',
                        style:Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'Enter your second name',
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
                        'Age',
                        style:Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),
                          prefixIcon: Icon(
                            Icons.calendar_month,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'Enter your age',
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
                        'E-mail',
                        style:Theme.of(context).textTheme.titleSmall,
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
                        validator: (value) {
                          if (value != null && value.isEmpty) {
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
                        style:Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: MentorRegisterCubit.get(context).isPassword,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        validator: (value) {
                          if (value != null && value.isEmpty) {
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
                            Icons.lock,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              MentorRegisterCubit.get(context).changePasswordVisibility();

                            },
                            icon: Icon(
                              MentorRegisterCubit.get(context).suffix),
                            color: Theme.of(context).iconTheme.color,
                          ),


                          hintText: '*********',
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
                        'Address',
                        style:Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: TextEditingController(),
                        keyboardType: TextInputType.text,
                        onChanged: (x) {
                          print(x);
                        },
                        onFieldSubmitted: (x) {
                          print(x);
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color, ),
                          ),
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'Enter your first name',
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
                        'Picture',
                        style:Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.cloud_upload_outlined,
                                size: 100,
                                color: Colors.grey,

                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Upload Your Image',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30.0,
                          ),
                          color: Color(0xFF0F91AB),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              MentorRegisterCubit.get(context).userRegister(
                                  name: nameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                  password: passwordController.text
                              );
                            /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MentorProfileScreen()),
                              );

                             */
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style:TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png'),
                              radius: 15.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  'https://flutter-ui.s3.us-east-2.amazonaws.com/social_media_buttons/google-icon.png'),
                              radius: 15.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  'https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png'),
                              radius: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MentorLoginScreen()),
                              );
                            },
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
         }


      ),
    );
  }

}

