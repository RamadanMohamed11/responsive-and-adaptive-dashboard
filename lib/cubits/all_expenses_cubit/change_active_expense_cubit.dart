import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_state.dart';

class ChangeActiveExpenseCubit extends Cubit<ChangeActiveExpenseState> {
  ChangeActiveExpenseCubit() : super(ChangeActiveExpenseInitial()) {
    changeActiveExpense(0); // Initialize with the first item active
  }

  void changeActiveExpense(int newIndex) {
    emit(ChangeActiveExpenseStateSuccess(newIndex));
  }
}
