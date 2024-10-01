import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import 'widgets/listaladdin_one1_item_widget.dart';
import 'widgets/listaladdin_one_item_widget.dart';
import 'widgets/listdoctorstran_item_widget.dart';
import 'widgets/slider_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

class HomeInitialPageState extends State<HomeInitialPage> {
  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildImageSliderStack(context),
          SizedBox(height: 22.h),
          _buildLastWatchedSection(context),
          SizedBox(height: 22.h),
          _buildAladdinSection(context),
          SizedBox(height: 22.h),
          _buildAdditionalContentSection(context),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  Widget _buildLatestMoviesSection(
    BuildContext context, {
    required String latestMoviesTitle,
    required String seeAllText,
  }) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spacebetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  latestMoviesTitle,
                  style: CustomTextStyles.titleMediumSemiBold.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
              ),
              Text(
                seeAllText,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildImageSliderStack(BuildContext context) {
    return SizedBox(
      height: 316.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 316.h,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: sizedBox(
              height: 4.h,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 7.05,
                  activeDotColor: theme.colorScheme.primary,
                  dotColor: appTheme.gray3008e,
                  dotHeight: 5.h,
                  dotWidth: 4.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildLastWatchedsection(BuildContext context) {
    return SizedBox( 
      width: double.maxFinite 
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [ 
          SizedBox( 
            width: double.maxFinite, 
            child: Align( 
              alignment: Alignment.centerLeft, 
              child: Padding( 
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [ 
                    Text( 
                      "Last watched",
                      style: CustomTextStyles.titleMediumSemiBold,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            height: 170.h,
            width: 358.h,
            child: listView.seperated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) { 
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) { 
                return ListdoctorstranItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAladdinSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: _buildLatestMoviesSection(
                  context, 
                  latestMoviesTitle: "Latest Movies", 
                  seeAllText: "See All",
                  ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 182.h,
            width: 358.h,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListaladdinOneItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAdditionalContentSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: _buildLatestMoviesSection(
                  context, 
                  latestMoviesTitle: "Latest Movies", 
                  seeAllText: "See All",
                  ),
              ),
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            height: 182.h,
            width: 358.h,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListaladdinOne1ItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}