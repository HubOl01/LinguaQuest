import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buttom_navigation_bar_state.dart';

class ButtomNavigationBarCubit extends Cubit<int> {
  ButtomNavigationBarCubit() : super(0);

  void changeTabIndex(int index) => emit(index);
}
