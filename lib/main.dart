import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'utils/app_theme.dart';
import 'core/multi_providers/multi_providers.dart';
import 'core/routing/routing.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('settingBox');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return
     MultiProvider(
      providers: multiProviders,
      child: MaterialApp(
        theme: theme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGeneratedRoute,
        initialRoute: '/splash',
      ),
    );
  }
}
