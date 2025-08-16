abstract class ListTileStates {}

class ListTileInitial extends ListTileStates {}

class ListTileChangeActiveIndex extends ListTileStates {
  final int newIndex;

  ListTileChangeActiveIndex(this.newIndex);
}
