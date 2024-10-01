// lib/presentation/download_movie_popup_dialog.dart
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DownloadMoviePopUpDialog extends StatelessWidget {
  DownloadMoviePopUpDialog({Key? key})
      : super(
          key: key,
        );

  bool heightPCheckbox = false;

  bool midPCheckbox = false;
  
  bool lowPCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 34.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFloatingIcon,
                height: 84.h,
                width: 84.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 18.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Download File",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 32.h),
              _buildHeightPCheckbox(context),
              SizedBox(height: 14.h),
              _buildMidPCheckbox(context),
              SizedBox(height: 14.h),
              _buildLowPCheckbox(context),
              SizedBox(height: 32.h),
              CustomElevatedButton(
                text: "Download Now",
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHeightPCheckbox(BuildContext context) {
    return CustomCheckboxButton(
      text: "Height (1080p)",
      value: heightPCheckbox,
      padding: EdgeInsets.symmetric(vertical: 2.h),
      onChange: (value) {
        heightPCheckbox = value;
      },
    );
  }

  /// Section Widget
  Widget _buildMidPCheckbox(BuildContext context) {
    return CustomCheckboxButton(
      text: "Mid (720p)",
      value: midPCheckbox,
      padding: EdgeInsets.symmetric(vertical: 2.h),
      onChange: (value) {
        midPCheckbox = value;
      },
    );
  }

  /// Section Widget
  Widget _buildLowPCheckbox(BuildContext context) {
    return CustomCheckboxButton(
      text: "Low (360p)",
      value: lowPCheckbox,
      padding: EdgeInsets.symmetric(vertical: 2.h),
      onChange: (value) {
        lowPCheckbox = value;
      },
    );
  }
}
