import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';   
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/comedygrid_item_widget.dart';

class CategoryComedyScreen extends Statelesswidget {
  const CategoryComedyScreen({key? key})
      : super(
        key: key,
      );
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopBar(context),
        body: Container(
          widith: double.maxFinite,
          margin: EdgeInsets.fromLTRB(14.h, 20.h, 14.h, 4.h),
          child: column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildComedyGrid(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  preferredSizeWidget _buildTopBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconbutton(
        imagePath: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Comedy",
      ), 
    );
  }

  /// Section Widget
  Widget _buildComedyGrid(BuildContext context) {
    return Expanded(
      child: ResponsiveGridListBuilder(
        minItemWidth: 1,
        minItemsPerRow: 3,
        maxItemsPerRow: 3,
        horizontalGridSpancing: 16.h,
        verticalGridSpancing: 16.h,
        builder: (context, items) => ListView(
          shrinkWarp: true,
          physics: BouncingScrollPhysics(),
          children: items,
        ),
        gridItems: List.generate(
          12,
          (index) {
            return ComedygridItemWidget();
          },
        ),
      ),
    );
  }
}