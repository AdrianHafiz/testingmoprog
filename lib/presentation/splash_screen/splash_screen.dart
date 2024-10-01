import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) 
      : super(
            key: key,
            );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(14.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildWarningSection(context), SizedBox(height: 4.h)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWarningSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            height: 90.h,
            width: 90.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              borderRadius: BorderRadiusStyle.roundedBorder44,
              border: Border.all(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                width: 4.39.h,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 40.h,
                  width: 40.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
