import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/localizations/app_localization.dart';
import 'package:riverpod_boiler_plate/routing/app_routes.dart';
import 'package:riverpod_boiler_plate/theme/app_styles.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/utils/navigator_service.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

class RiverpodBoilerPlateApp extends ConsumerWidget {
  const RiverpodBoilerPlateApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ProviderScope(
            child: MaterialApp(
              title: 'Riverpod Boilerplate',
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigatorService.navigatorKey,
              locale: const Locale('en', ''),
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: ThemeData(
                fontFamily: 'Poppins',
                colorScheme: const ColorScheme.light(
                  primary: primaryColor,
                  secondary: secondaryColor,
                  background: Colors.white,
                ),
                useMaterial3: true,
                scaffoldBackgroundColor: Colors.white,
                textTheme: TextTheme(
                  bodyLarge: CustomTextStyles.bodyLarge,
                  bodyMedium: CustomTextStyles.bodyMedium,
                  bodySmall: CustomTextStyles.bodySmall,
                  displaySmall: CustomTextStyles.displaySmall,
                  headlineMedium: CustomTextStyles.headlineMedium,
                  labelLarge: CustomTextStyles.labelLarge,
                  titleLarge: CustomTextStyles.titleLarge,
                  titleMedium: CustomTextStyles.titleMedium,
                  titleSmall: CustomTextStyles.titleSmall,
                ),
              ),
              initialRoute: AppRoutes.splashScreen,
              onGenerateRoute: AppRoutes.onGenerateRoute,
            ),
          ),
        );
      },
    );
  }
}
