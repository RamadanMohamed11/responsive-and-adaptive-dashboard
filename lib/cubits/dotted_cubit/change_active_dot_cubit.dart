import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit_state.dart';

class ChangeActiveDotCubit extends Cubit<ChangeActiveDotCubitState> {
  ChangeActiveDotCubit() : super(ChangeActiveDotCubitStateInitial()) {
    changeActiveDot(0);
  }

  void changeActiveDot(int index) {
    emit(ChangeActiveDotCubitStateChanged(index));
  }
}
