
import 'package:provider/provider.dart';

import '../../features/authentiication/register_user_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<RegisterUserProvider>(
    create: (_) => RegisterUserProvider(),
    lazy: true,
  ),
  // ChangeNotifierProvider<LoginProvider>(
  //   create: (_) => LoginProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<UpdateUserProvider>(
  //   create: (_) => UpdateUserProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<ChangePasswordProvider>(
  //   create: (_) => ChangePasswordProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<TrendingNowProvider>(
  //   create: (_) => TrendingNowProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<SplashProvider>(
  //   create: (_) => SplashProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<GetMenuItemProvider>(
  //   create: (_) => GetMenuItemProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<GetSingleDealProvider>(
  //   create: (_) => GetSingleDealProvider(),
  //   lazy: true,
  // ),
  // ChangeNotifierProvider<GetSingleMenuDetailProvider>(
  //   create: (_) => GetSingleMenuDetailProvider(),
  //   lazy: true,
  // ),
];
