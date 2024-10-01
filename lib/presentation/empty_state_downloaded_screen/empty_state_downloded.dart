import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';

class EmptyStateDownlodedScreen extends StatelessWidget {
  const EmptyStateDownlodedScreen({Key?key})
      :super(
        key:key, 
      );

      
    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
          appBar:_buildAppBar(context),
          body:Conatainer(
            width:double.maxFinite,
            padding:EdgeInsets.symmetric(
              horizontal:14.h,
              vertical:178.h,
            ),
            child:Column(
              children:[_buildNoVideosSection(context),SizedBox(height:4.h)],
            ),
          ),
        ),
      );
    }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context){
    return CustomAppBar(
      centerTitle:true,
      title:AppbarTitle(
        text:"Download",
      ),
    );
  }

/// Section Widget
Widget _buildNoVideosSection(BuildContext context){
  return SizedBox(
    width:double.maxFinite,
    child:Column(
      children:[
        CustomImageView(
          imagePath:ImageConstant.imgMaskGroupGray400,
          height:184.h,
          width:184.h,
          radius:BorderRadius.circular(
            92.h,
          ),
        ),
        SizedBox(height:24.h),
        Text(
          "No videos yet",
          style:theme.textTheme.titleMedium,
        ),
        SizedBox(height: 6.h),
        Text(
          "Let find and download your favorite video",
          style:CustomTextStyles.bodySmallPrimaryContainer,
        )
      ],
    ),
  );
}

}
