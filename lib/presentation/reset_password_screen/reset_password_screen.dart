import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController confirmPasswordInputController =
      TextEditingController();

  @override
  WIdget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 194.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Reset Password ?",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Please enter your new password",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                    SizedBox(height: 46.h),
                    CustomTextFormField(
                      controller: passwordInputController,
                      hintText: "Password",
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 8.h, 20.h, 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEye,
                          height: 24.h,
                          width: 24.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 42.h,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.fromLTRB(12.h, 8.h, 20.h, 8.h),
                    ),
                    SizedBox(height: 28.h),
                    CustomTextFormField(
                      controller: confirmPasswordInputController,
                      hintText: "Confirm new password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 8.h, 20.h, 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEye,
                          height: 24.h,
                          width: 24.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 42.h,
                      ),
                      obscureText: text,
                      contentPadding: EdgeInsets.fromLTRB(12.h, 8.h, 20.h, 8.h),
                    ),
                    SizedBox(height: 30.h),
                    CustomElevatedButton(
                      text: "Reset Password",
                      onPressed: () {},
                    ),
                    SizedBox(height: 4.h)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapResetPasswordButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordSuccessScreen);
  }
}
