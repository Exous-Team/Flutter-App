abstract class MentorLoginStates {}
class MentorLoginInitialState extends MentorLoginStates{}
class MentorLoginLoadingState extends MentorLoginStates{}
class MentorLoginSuccessState extends MentorLoginStates{
  final String uId;
  MentorLoginSuccessState(this.uId);
}
class MentorLoginErrorState extends MentorLoginStates{
  final String error;
  MentorLoginErrorState(this.error);
}
class MentorLoginchangePasswordVisibility extends MentorLoginStates{}

