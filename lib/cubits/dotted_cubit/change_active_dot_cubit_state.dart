abstract class ChangeActiveDotCubitState {}

class ChangeActiveDotCubitStateInitial extends ChangeActiveDotCubitState {}

class ChangeActiveDotCubitStateChanged extends ChangeActiveDotCubitState {
  final int index;

  ChangeActiveDotCubitStateChanged(this.index);
}
