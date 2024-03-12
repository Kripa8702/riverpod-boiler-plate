
//Specify the environment
import 'package:flutter_riverpod/flutter_riverpod.dart';

const Env env = Env.dev;

final flavorConfigProvider = Provider<FlavorConfig>(
  (ref) => FlavorConfig(
    appName: appNames[env] ?? "Development",
    apiBaseUrl: apiBaseUrls[env] ?? "https://dummyjson.com", // Replace with your Development API URL
    env: env,
  ),
);

class FlavorConfig {
  final String appName;
  final String apiBaseUrl;
  final Env env;

  FlavorConfig(
      {required this.env, required this.appName, required this.apiBaseUrl});
}

enum Env { dev, prod, staging }

Map<Env, String> apiBaseUrls = {
  Env.dev: "https://dummyjson.com", //Replace with your Development API URL
  Env.prod: "https://dummyjson.com", //Replace with your Production API URL
  Env.staging: "https://dummyjson.com" //Replace with your Staging API URL
};

//Replace with your app names
Map<Env, String> appNames = {
  Env.dev: "Development",
  Env.prod: "Production",
  Env.staging: "Staging"
};
