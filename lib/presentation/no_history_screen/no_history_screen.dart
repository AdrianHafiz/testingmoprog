import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NoHistoryScreen extends StatelessWidget {
  const NoHistoryScreen({Key? key})
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
            children: [_buildNoHistorySection(context), SizedBox(height: 4.h)],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildTopBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconButton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "History",
      ),
    );
  }

  Widget _buildNoHistorySection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 52.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup427318934,
            height: 184.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 26.h,
              right: 28.h,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            "No History",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 6.h),
          Text(
            "There are currently no history to display",
            style: CustomTextStyles.bodySmallPrimaryContainer,
          )
        ],
      ),
    );
  }
}
