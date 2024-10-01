import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController dateOfBirthFieldController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override
 Widgets build(BuildContext context){
  return SafeArea(
    child:Scaffold(
      appBar:_buildTopBar(context),
      body:SizedBox(
        width:double.maxFinite,
        child:SingleChildScrollView(
          child:Container(
            width:double.maxFinite,
            padding:EdgeInsets.symetric(
              horizontal:14.h,
              vertical: 20.h,
            ),
            child:Column(
              children:[
                SizedBox(
                  height:84.h,
                  width:84.h,
                  child:Stack(
                    alignment:Alignment.center,
                    children:[
                      CustomImageView(
                        imagePath:ImageConstant.imgEllipse414,
                        height:84.h,
                        width:double.maxFinite,
                        radius:BorderRadius.circular(
                          42.h,
                        ),
                      ),
                      CustomIconButton(
                        height:30.h,
                        width:30.h,
                        padding:EdgeInsets.all(4.h),
                        decoratrion:IconButtonStyleHelper.fillPtimaryTL114,
                        alignment:Alignment.bottomRight,
                        child:CustomImageView(
                          imagePath:ImageConstant.imgInfo,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height:40.h),
                SizedBox(
                  witdh:double.maxFinite,
                  child:Column(
                    crossAxisAlignment:crossAxisAlignment.start,
                    children:[
                      Text(
                        "Name",
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(height:8.h),
                      _buildnameField(context),
                      SizedBox(height:22h),
                      Text(
                        "Username",
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(height:10.h),
                      _buildUsernameField(context),
                      SizedBox(height:22.h),
                      Text(
                        "Email Address",
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(height:10.h),
                      _buildEmailField(context),
                      SizedBox(height:22.h),
                      Text(
                        "Phone Number",
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(8.h),
                      _buildPhoneNumberField(context),
                      SizedBox(height:22.h),
                      Text(
                        "Date of Birth",
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(height:10.h),
                      _buildDateofBirthField,
                      SizedBox(height:22.h),
                      Text(
                        "Gender"
                        style:theme.textTheme.labelMedium,
                      ),
                      SizedBox(height:8.h),
                      CustomDropDown(
                        icon:Container(
                          margin:EdgeInsets.only(left:16.h),
                          child:CustomImageView(
                            imagePath:ImageConstant.imgArrowdown,
                            height:18.h,
                            width:18.h,
                            fit:BoxFit.contain,
                          ),
                        ),
                        iconSize:18.h,
                        hintText:"Male",
                        items:dropdownItemList,
                        contentPadding:EdgeInsets.fromLTRB(12.h,4.h,20.h,4.h),
                      )
                    ],
                  ),
                ),
                SizeBox(4.h)
              ],
            ),
          ),
        ),
      ),
      bottomnavigationBar:Column(
        mainAxisSize:mainAxisSize.min,
        children:[Container()],
      ),
    ),
  );
 }

///Section Widget
PreferredSizeWidget _buildTopBar(BuildContext context){
  return CustomAppBar(
    leadingWidth:50.h,
    leading:AppbarLeadingIconbutton(
      imagePath:ImageConstant.imgArrrowleft,
      margin:EdgeInsets.only(
        left:16.h,
        top:7.h,
        bottom:11.h,
      ),
    ),
    centerTitle:true,
    title:AppbarTitle(
      text:"Edit Profile",
    ),
  );
}

/// Section Widget
Widget _buildnameField(BuildContext context){
  return CustomTextFromField(
    controller:nameFieldController,
    hinttext:"Antonio Renders",
    contentPadding:EdgeInsets.all(12.h),
  );
}

/// section Widget
Widget _buildUsernameField(BuildContext context){
  return CustomTextFromField(
    controller:usernameFieldController,
    hintText:"@renders.antonio",
    contentPadding:EdgeInsets,all(12.h),
  );
}

/// section Widget
Widget _buildEmailField(BuildContext context){
  return CustomTextFromField(
    controller:emailFieldController,
    hintText:"xyz@gmail.com",
    textInputType:TextInputType.emailAdress,
    contentPadding:EdgeInsets.all(12.h),
  );
}

/// section _build
Widget _buildPhoneNumberField(BuildContext context){
  return CustomTextFromField(
    controller:phoneNumberFieldController,
    hintText:"+123 4567 8901",
    contentPadding:EdgeInsets.all(12.h),
  );
}

Widget _buildDateofBirthField(BuildContext context){
  return CustomTextFromField(
    readOnly:true,
    controller:dateOfBirthFieldController,
    hintText:"30 february 2022",
    textInputAction:textInputAction.done,
    suffix:Container(
      margin:EdgeInsets.fromLTRB(16.h , 4.h , 20.h , 4.h),
      child:CustomImageView(
        iamagePath:ImageConstant.imgThumbsupOnprimary,
        height:18.h,
        width:18.h,
        fit:BoxFit.contain,
      ),
    ),
    suffixConstraints:BoxConstraints(
      maxHeight: 30.h,
    ),
    contentPadding: EdgeInsets.fromLTRB(12.h,4.h,20.h,4.h),
    onTap:() {},
  );
}

}
