import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/features/authentication/model/user_model.dart';
import 'package:riverpod_boiler_plate/features/authentication/repository/auth_repository.dart';
import 'package:riverpod_boiler_plate/routing/app_routes.dart';
import 'package:riverpod_boiler_plate/utils/navigator_service.dart';
import 'package:riverpod_boiler_plate/utils/pref_utils.dart';
import 'package:riverpod_boiler_plate/utils/toast_utils.dart';

part 'login_state.dart';

final loginControllerProvider = StateNotifierProvider<LoginController, LoginState>(
  (ref) => LoginController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class LoginController extends StateNotifier<LoginState> {
  final AuthRepository _authRepository;
  final PrefUtils _prefUtils = PrefUtils();

  LoginController({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const LoginState());

  Future<void> login(String username, String password) async {
    try {
      state = state.copyWith(status: LoginStatus.loading);

      final user = await _authRepository.signIn(username, password);

      _prefUtils.setString(key: "token", value: user.token);
      _prefUtils.setBool("isLoggedIn", true);

      ToastUtils.showToast("Login Successful");

      NavigatorService.pushReplacementNamed(
        AppRoutes.landingPageScreen,
      );

      state = state.copyWith(status: LoginStatus.success, user: user);
    }  catch (e) {
      ToastUtils.showToast(e.toString());
      state = state.copyWith(status: LoginStatus.error, error: e.toString());
    }
  }
}
