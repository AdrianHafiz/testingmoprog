import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) 
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeaderSection(context),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 26.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top answers",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 12.h),
                    _buildFaqColumn(context),
                    SizedBox(height: 4.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return SizedBox(
      height: 128.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup427318996,
            height: 128.h,
            width: double.maxFinite,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 6.h,
                right: 14.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 34.h,
                    leadingWidth: 34.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowleft,
                    ),
                    centerTitle: true,
                    title: AppbarTitle(
                      text: "Help",
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Get help",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 12.h,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFaqColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildUnsubscribeRow(
              context,
              guideText: "How to contact customer support movistar",
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildUnsubscribeRow(
              context,
              guideText: "How to unsubscribe from movistar",
            ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildUnsubscribeRow(
              context,
              guideText: "Can't watch movistar",
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildUnsubscribeRow(
            context,
              guideText: "What is movistar?",
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUnsubscribeRow(
    BuildContext context, {
    required String guideText,
}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 26.h),
            child: Text(
              guideText,
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.h,
            width: 16.h,
          )
        ],
      ),
    );
  }    
}
