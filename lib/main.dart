import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'drift_test/database.dart';
import 'utils/app_theme.dart';
import 'core/multi_providers/multi_providers.dart';
import 'core/routing/routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  await Hive.openBox('settingBox');

  // Initialize your Drift database (assuming AppDatabase is your database class)
  final appDatabase = AppDatabase();

  runApp(MyApp(appDatabase: appDatabase));
}

class MyApp extends StatelessWidget {
  final AppDatabase appDatabase;

  const MyApp({Key? key, required this.appDatabase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppDatabase>(create: (_) => appDatabase),
        ...multiProviders, // Assuming this is an existing list of providers
      ],
      child: MaterialApp(
        theme: theme(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGeneratedRoute,
        initialRoute: '/splash',
      ),
    );
  }
}
