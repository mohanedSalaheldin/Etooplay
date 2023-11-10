import 'dart:math';

import 'package:etooplay/src/core/utils/app_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isPasswordShown = false;
  void changePasworsVisibility() {
    isPasswordShown = changePasswordVisivlity(isVisible: isPasswordShown);
    emit(LoginChangePasswordVisibilty());
  }
}
