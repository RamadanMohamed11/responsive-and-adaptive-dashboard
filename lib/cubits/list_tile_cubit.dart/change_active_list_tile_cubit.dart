import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/list_tile_states.dart';

class ChangeActiveListTileCubit extends Cubit<ListTileStates> {
  int activeIndex = 0;
  ChangeActiveListTileCubit() : super(ListTileInitial()) {
    // Initialize with the first item active
    changeActiveIndex(0);
  }

  void changeActiveIndex(int newIndex) {
    if (newIndex != activeIndex) {
      activeIndex = newIndex;
      print("Changing active index to: $newIndex");
      emit(ListTileChangeActiveIndex(newIndex));
    }
  }
}
