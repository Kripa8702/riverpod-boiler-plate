import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/constants/assets_constants.dart';
import 'package:riverpod_boiler_plate/features/splash/controller/splash_controller.dart';
import 'package:riverpod_boiler_plate/features/widgets/custom_image_view.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    ref.read(splashControllerProvider).timedNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            CustomImageView(
              imagePath: appLogo,
              height: 325.v,
              width: 238.h,
            ),
          ],
        ),
      ),
    );
  }
}
