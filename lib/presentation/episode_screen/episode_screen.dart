import 'package:flutter/material.dart';
import 'package: readmore/readmore.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../about_page/about_page.dart';
import '../download_movie_pop_up_dialog/download_movie_pop_up_dialog.dart';
import '../similiar_page/similiar_page.dart';
import 'episodeepisodei_tab_page.dart';

class EpisodeScreen extends StatefulWidget {
  const EpisodeScreen({Key? key}) : super(key: key);

  @override
  EpisodeScreenState createState() => EpisodeScreenState();
}

// ignore_for_file: must_be_immutable
class EpisodeScreenState extends State<EpisodeScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMainContent(context),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildActionButtons(context),
                      SizedBox(height: 24.h),
                      Container(
                        width: 338.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 18.h,
                        ),
                        child: ReadMoreText(
                          "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find a way to become a prince...",
                          trimLines: 2,
                          colorClickableText: theme.colorScheme.onPrimary.withOpacity(1),
                          trimMode: TrimMode.line,
                          trimCollapsedText: "Read more",
                          trimExpandedText: "Read less",
                          moreStyle: CustomTextStyles.bodySmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                          lessStyle: CustomTextStyles.bodySmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.h),
                      _buildTabview(context),
                      _buildContentPager(context)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent(BuildContext context) {
    return Container(
      height: 368.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 368.h,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppBar(
                height: 50.h,
                leadingWidth: 50.h,
                leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 7.h,
                    bottom: 9.h,
                  ),
                ),
                actions: [
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgFrame427319010,
                    margin: EdgeInsets.only(
                      top: 7.h,
                      bottom: 9.h,
                    ),
                  ),
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgFrame427319010Onprimary,
                    margin: EdgeInsets.fromLTRB(11.h, 7.h, 16.h, 9.h),
                  ),
                ],
              ),
              SizedBox(height: 254.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  children: [
                    Text(
                      "Disney's Aladdin",
                      style: CustomTextStyles.headlineSmallSemiBold,
                    ),
                    SizedBox(
                      width: 222.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2019",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(width: 8.h),
                          Container(
                            height: 3.h,
                            width: 3.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.h),
                          Text(
                            "Adventure, Comedy",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(width: 8.h),
                          Container(
                            height: 3.h,
                            width: 3.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.h),
                          Text(
                            "2h 8m",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}