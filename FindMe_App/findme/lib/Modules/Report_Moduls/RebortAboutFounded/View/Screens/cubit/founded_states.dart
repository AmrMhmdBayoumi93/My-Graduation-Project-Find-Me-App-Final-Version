sealed class FoundedStates {}

class FoundedInitialState extends FoundedStates {}

class FoundedLoadingState extends FoundedStates {}

class FoundedSuccessState extends FoundedStates {}

class FoundedErrorState extends FoundedStates {
  final String error;

  FoundedErrorState(this.error);
}
