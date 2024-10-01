import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ComedygridItemWidget extends StatelessWidget {
  const ComedygridItemWidget({key? key})
      : super(
        key: key,
      );

  @override
  Widget build(BuildContext context) {
    return customImageView(
      imagePath: ImageConstant.imgRectangle12078,
      height: 140.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }    
}