sealed class MissedStates {}

class MissedInitialState extends MissedStates {}

class MissedLoadingState extends MissedStates {}

class MissedSuccessState extends MissedStates {}

class MissedErrorState extends MissedStates {
  final String error; // error message

  MissedErrorState(this.error);
}
