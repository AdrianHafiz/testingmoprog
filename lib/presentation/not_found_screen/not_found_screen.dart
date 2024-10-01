import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NotFoundScreen extends StatelessWidget {
  NotFoundScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbarSection(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 168.h,
          ),
          child: Column(
            children: [
              _buildErrorMessageSection(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbarSection(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleSearchView(
        hintText: "Search by title, genre, actor",
        controller: searchController,
      ),
    );
  }

  Widget _buildErrorMessageSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            height: 184.h,
            width: 184.h,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 20.h,
            ),
          ),
          SizedBox(height: 42.h),
          Text(
            "Opsss !",
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 12.h),
          Text(
            "What you are looking for is not found",
            style: CustomTextStyles.bodySmallPrimaryContainer,
          )
        ],
      ),
    );
  }
}
