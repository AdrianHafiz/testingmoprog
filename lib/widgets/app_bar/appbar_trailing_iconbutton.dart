import '../custom_icon_button.dart';
import '../custom_image_view.dart';

class AppbarTrailingIconbutton extends StatelessWidget{
  AppbarTrailingIconbutton({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
      );

  final String? imagePath;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 34.h,
          width: 24.h,
          padding: EdgeInsets.all(4.h),
          child:  CustomImageView(
            imagePath: ImageConstant.imgFrame427319010,
          ),
        ),
      ),
    );
  }
}