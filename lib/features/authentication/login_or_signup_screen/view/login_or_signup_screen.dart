import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/features/widgets/custom_elevated_button.dart';
import 'package:riverpod_boiler_plate/localizations/app_localization.dart';
import 'package:riverpod_boiler_plate/routing/app_routes.dart';
import 'package:riverpod_boiler_plate/theme/app_styles.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/theme/custom_button_style.dart';
import 'package:riverpod_boiler_plate/utils/navigator_service.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 39.v),
          child: Column(
            children: [
              _buildPageHeader(context),
              SizedBox(height: 150.v),
              Text(
                "lbl_get_in_through".tr,
                style:
                    CustomTextStyles.titleMedium.copyWith(color: primaryColor),
              ),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                text: "lbl_sign_up".tr,
                buttonTextStyle: CustomTextStyles.titleMedium.copyWith(
                  color: secondaryTextColor,
                  fontSize: 16.fSize,
                ),
                buttonStyle: CustomButtonStyles.fillBlue,
                onPressed: () {
                  // NavigatorService.pushNamed(
                  //   AppRoutes.signupScreen,
                  // );
                },
              ),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                text: "lbl_login".tr,
                buttonStyle: CustomButtonStyles.fillDeepOrange,
                buttonTextStyle: CustomTextStyles.titleMedium.copyWith(
                  color: secondaryTextColor,
                  fontSize: 16.fSize,
                ),
                onPressed: () {
                  NavigatorService.pushNamed(AppRoutes.loginScreen);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 208.h,
          child: Text(
            "msg_welcome_to_our_community".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.displaySmall,
          ),
        ),
        SizedBox(height: 2.v),
        Container(
          width: 281.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text(
            "msg_our_community_is".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall,
          ),
        )
      ],
    );
  }
}
