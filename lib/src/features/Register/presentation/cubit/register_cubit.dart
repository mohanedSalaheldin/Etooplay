// import 'package:equatable/equatable.dart';
import 'package:etooplay/src/core/utils/app_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isClient = true;
  void toggleBetweenClientAndsPorvidor() {
    isClient = !isClient;
    emit(RegisterToggleClientAndsPorvidor());
  }
   bool isPasswordShown = false;
  void changePasworsVisibility() {
    isPasswordShown = changePasswordVisivlity(isVisible: isPasswordShown);
    emit(RegisterChangePasswordVisibilty());
  }
}
