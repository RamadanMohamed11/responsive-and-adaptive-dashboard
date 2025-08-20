abstract class ChangeActiveExpenseState {}

class ChangeActiveExpenseInitial extends ChangeActiveExpenseState {}

class ChangeActiveExpenseStateSuccess extends ChangeActiveExpenseState {
  final int newIndex;

  ChangeActiveExpenseStateSuccess(this.newIndex);
}
