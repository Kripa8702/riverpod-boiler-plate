import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_boiler_plate/riverpod_boiler_plate.dart';
import 'package:riverpod_boiler_plate/utils/pref_utils.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ///Uncomment this code if you are using Firebase
  // await Firebase.initializeApp(
  //   name: 'SecondaryApp',
  //   options: FirebaseConfig().firebaseConfig,
  // );

  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init(),
  ]).then(
    (value) {
      runApp(
        const RiverpodBoilerPlateApp(),
      );
    },
  );
}
