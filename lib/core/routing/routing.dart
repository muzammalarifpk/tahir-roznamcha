import 'package:flutter/material.dart';
import '../../dashboard/banks/banks_page_screen.dart';
import '../../dashboard/contacts/contacts_page_screen.dart';
import '../../dashboard/locations/location_page_screen.dart';

import '../../dashboard/discover/discover_page_screen.dart';
import '../../dashboard/products/product_page_screen.dart';
import '../../entry_point.dart';
import '../../features/splash/splash_screen.dart';
import '../../onBoarding/login/login_screen.dart';
import '../../onBoarding/register/signup_screen.dart';
import '../../utils/strings/translation_widget.dart';


class AppRouter {

  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      // case '/':
      //   return SplashScreenPage.route();
      // case '/onBoardingPage':
      //   return OnBoardingPageScreen.route();
      case '/signUpPage':
        return SignUpScreenPage.route();
      case '/loginPage':
        return LoginPageScreen.route();
    //   case '/forgetPass':
    //     return ForgotPasswordPage.route();
    //   case '/setUpScreen':
    //     return SetupScreenPage.route();
    // //by tahir
    //   case '/setUp':
    //     return CheckInScreen.route();
      case '/discoverScreen':
        return DiscoverPageScreen.route();
      case '/productScreen':
        return ProductPageScreen.route();
      case '/contactScreen':
        return ContactPageScreen.route();
        case '/locationScreen':
        return LocationPageScreen.route();
        case '/bankScreen':
        return BankPageScreen.route();
    //   case '/discoverScreen':
    //     return EntryPoint.route();
    //   case '/profileScreen':
    //     return EntryPoint.route();
      case '/entryPoint':
        return EntryPoint.route();
    //   case '/generalScreens':
    //     return GeneralNavigationScreens.route();
    // //by tahir
    //   case '/checkInFriendsView':
    //     return CheckInFriendsView.route();
    //   case '/sendRecommend':
    //     return SendRecommendations.route();
    //   case '/pointsDashBoard':
    //     return PointsDashBoard.route();
    //   case '/sharedRecommendations':
    //     return SharedRecommendations.route();
    //   case '/recentTransactionAll':
    //     return RecentTransactionAll.route();
    //   case '/pointsBreakdownAll':
    //     return PointsBreakDownAll.route();
    //   case '/settings':
    //     return Settings.route();
    //   case '/updateProfileView':
    //     return UpdateProfileView.route();
    //   case '/changePass':
    //     return ChangePassword.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: AppText(
                "Error Fetching Data"),
          ),
        ),
        settings: const RouteSettings(name: '/error'));
  }
}
