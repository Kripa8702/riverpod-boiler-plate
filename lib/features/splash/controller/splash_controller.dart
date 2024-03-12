import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/features/authentication/repository/auth_repository.dart';
import 'package:riverpod_boiler_plate/routing/app_routes.dart';
import 'package:riverpod_boiler_plate/utils/navigator_service.dart';

final splashControllerProvider = Provider<SplashController>(
  (ref) => SplashController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class SplashController{
  final AuthRepository _authRepository;

  SplashController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  bool get isSignedIn => _authRepository.isSignedIn;

  void timedNavigation() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isSignedIn) {
        NavigatorService.pushReplacementNamed(
          AppRoutes.loginScreen,
        );
      } else {
        NavigatorService.pushReplacementNamed(
          AppRoutes.loginOrSignupScreen,
        );
      }
    });
  }

}