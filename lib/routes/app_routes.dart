import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/category_comedy_screen/category_comedy_screen.dart';
import '../presentation/choose_plan_screen/choose_plan_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/empty_state_downloaded_screen/empty_state_downloaded_screen.dart';
import '../presentation/episode_screen/episode_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/help_screen/help_screen.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/no_history_screen/no_history_screen.dart';
import '../presentation/no_notification_screen/no_notification_screen.dart';
import '../presentation/not_found_screen/not_found_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/otp_verification_screen/otp_verification_screen.dart';
import '../presentation/payment_methon_screen/payment_methon_screen.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/reset_password_success_screen/reset_password_success_screen.dart';
import '../presentation/saved_empty_screen/saved_empty_screen.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';


class AppRoutes {
  static const String splash_screen = '/splash_screen'; 

  static const String login_screen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/forgot_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen = '/reset_password_success_screen';

  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodeScreen = '/episode_screen';

  static const String episodeepisodeiTabPage = '/episodeepisodei_tab_page';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String searchPage = '/search_page';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String emptyStateDownloadedScreen = '/empty_state_downloaded_screen';

  static const String savedPage = '/saved_page';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfilScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    resetPasswordSuccessScreen: (context) => ResetPasswordSuccessScreen(),
    homeScreen: (context) => HomeScreen(),
    categoryComedyScreen: (context) => CategoryComedyScreen(),
    episodeScreen: (context) => EpisodeScreen(),
    choosePlanScreen: (context) => ChoosePlanScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    notFoundScreen: (context) => NotFoundScreen(),
    emptyStateDownloadedScreen: (context) => EmptyStateDownloadedScreen(),
    savedEmptyScreen: (context) => SavedEmptyScreen(),
    editProfilScreen: (context) => EditProfilScreen(),
    notificationScreen: (context) => NotificationScreen(),
    noNotificationScreen: (context) => NoNotificationScreen(),
    historyScreen: (context) => HistoryScreen(),
    noHistoryScreen: (context) => NoHistoryScreen(),
    settingScreen: (context) => SettingScreen(),
    languageScreen: (context) => LanguageScreen(),
    helpScreen: (context) => HelpScreen(),
    appNavigationScreen (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
