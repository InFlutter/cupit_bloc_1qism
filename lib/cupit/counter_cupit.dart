import 'package:bloc/bloc.dart';

class Cupitthememode extends Cubit<bool> {
  Cupitthememode() : super(false);

  void toggleTheme() {
    emit(!state);
  }
}