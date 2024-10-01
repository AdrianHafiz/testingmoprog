import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class SavedEmptyScreen extends StatelessWidget {
  const SavedEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 176.h,
          ),
          child: Column(
            children: [_buildNotSaveSection(context), SizedBox(height: 4.h)],
          ),
        ),
      ),
    );
  }

  PrefferedSizeWidget _buildTopBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "Mark All",
              margin: EdgeInsets.only(
                top: 4.h,
                bottom: 3.h,
              ),
            ),
            AppbarTitle(
              text: "Saved",
              margin: EdgeInsets.only(left: 101.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "Delete",
          margin: EdgeInsets.only(
            top: 15.h,
            right: 16.h,
            bottom: 18.h,
          ),
        )
      ],
    );
  }

  Widget _buildNotSaveSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroupGray400184x184,
            height: 184.h,
            width: 184.h,
            radius: BorderRadius.circular(
              92.h,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            "Not Save",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 30.h),
          Text(
            "Let's find and download your favorite video",
            style: CustomTextStyles.bodySmallPrimaryContainer,
          )
        ],
      ),
    );
  }
}
