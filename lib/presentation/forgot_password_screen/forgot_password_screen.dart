import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) 
      : super(
          key: key
        );

  TextEditingController emailInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  vertical: 232.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      "Forgot Password?",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "You forgot your password? don't worry, please enter your recovery email address",
                      maxLines: 2,
                      overflow: TextOverflow.ellpsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.50,
                      ),
                    ),
                    SizedBox(height: 44.h),
                    CustomTextFormField(
                      controller: emailInputController,
                      hintText: "Email Address",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      contentPadding: 
                          EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 22.h),
                    ),
                    SizedBox(height: 30.h),
                    CustomElevatedButton(
                      text: "Submit",
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

  /// Navigates to the otpVerificationScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen)
  }
}
