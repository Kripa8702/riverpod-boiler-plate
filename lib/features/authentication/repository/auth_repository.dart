import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/constants/api_path.dart';
import 'package:riverpod_boiler_plate/features/authentication/model/user_model.dart';
import 'package:riverpod_boiler_plate/utils/dio_client.dart';
import 'package:riverpod_boiler_plate/utils/pref_utils.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(dioClient: ref.read(dioClientProvider)),
);

class AuthRepository {
  AuthRepository({
    required this.dioClient,
  });

  final DioClient dioClient;
  final PrefUtils prefUtils = PrefUtils();

  bool get isSignedIn => prefUtils.getString("token") != null;

  Future<UserModel> signIn(String username, String password) async {
    try {
      final response = await dioClient.post(
        login,
        data: {
          "username": username,
          "password": password,
        },
      );

      return UserModel.fromSignInResponse(response.data);
    } catch (e) {
      rethrow;
    }
  }

  void signOut() {
    prefUtils.clearPreferencesData();
  }
}
