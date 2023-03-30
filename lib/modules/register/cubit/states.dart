abstract class MentorRegisterStates {}
class MentorRegisterInitialState extends MentorRegisterStates{}
class MentorRegisterLoadingState extends MentorRegisterStates{}
class MentorRegisterSuccessState extends MentorRegisterStates{}
class MentorRegisterErrorState extends MentorRegisterStates{
  final String error;
  MentorRegisterErrorState(this.error);
}
class MentorRegisterChangePasswordVisibility extends MentorRegisterStates{}

class MentorCreateUserSuccessState extends MentorRegisterStates{}
class MentorCreateUserErrorState extends MentorRegisterStates{
  final String error;
  MentorCreateUserErrorState(this.error);
}