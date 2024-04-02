import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boiler_plate/constants/form_values.dart';
import 'package:riverpod_boiler_plate/features/authentication/login/controller/login_controller.dart';
import 'package:riverpod_boiler_plate/features/widgets/widgets.dart';
import 'package:riverpod_boiler_plate/localizations/app_localization.dart';
import 'package:riverpod_boiler_plate/theme/app_styles.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/theme/custom_button_style.dart';
import 'package:riverpod_boiler_plate/utils/navigator_service.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';
import 'package:riverpod_boiler_plate/validators/validation_functions.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController =
      TextEditingController(text: FormValues.username);

  final TextEditingController passwordController =
      TextEditingController(text: FormValues.password);

  bool onSubmit = false;

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(loginControllerProvider);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: _formKey,
            autovalidateMode: onSubmit
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 5.v),
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 35.v),
                child: Column(
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.only(left: 5.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        NavigatorService.pop();
                      },
                      child: const Center(
                          child: Icon(Icons.arrow_back_ios, size: 16)),
                    ),
                    _buildPageHeader(context),
                    SizedBox(height: 100.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_username".tr,
                      textInputType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null ||
                            (!isUsername(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_username".tr;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 24.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        // setState(() {});
                      },
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    SizedBox(height: 26.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "msg_forgot_password".tr,
                          style: CustomTextStyles.labelLarge
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 55.v),
                    CustomElevatedButton(
                      text: "lbl_next".tr,
                      buttonStyle: CustomButtonStyles.fillBlue,
                      buttonTextStyle: CustomTextStyles.titleMedium.copyWith(
                        color: secondaryTextColor,
                        fontSize: 16.fSize,
                      ),
                      isLoading: controller.status == LoginStatus.loading
                          ? true
                          : false,
                      onPressed: () {
                        onSubmit = true;
                        if (_formKey.currentState!.validate()) {
                          ref.read(loginControllerProvider.notifier).login(
                              emailController.text, passwordController.text);
                        }
                      },
                    ),
                    SizedBox(height: 28.v),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("msg_don_t_have_an_account".tr,
                                style: CustomTextStyles.labelLarge),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_sign_up".tr,
                              style: CustomTextStyles.labelLarge.copyWith(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

Widget _buildPageHeader(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 221.h,
        margin: EdgeInsets.only(top: 40.v, right: 89.h),
        child: Text(
          "lbl_login".tr,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.displaySmall.copyWith(height: 1.18),
        ),
      ),
      SizedBox(height: 1.v),
      Container(
        width: 282.h,
        margin: EdgeInsets.only(right: 28.h),
        child: Text(
          "msg_lorem_ipsum_dolor".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.labelLarge.copyWith(height: 1.67),
        ),
      )
    ],
  );
}
