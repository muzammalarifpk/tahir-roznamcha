import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colours.dart';
import '../../utils/settings_service.dart';

import '../../utils/common_widgets/common_button.dart';
import '../../utils/common_widgets/dash_board_card.dart';
import '../../utils/strings/translation_widget.dart';
import '../products/product_page_screen.dart';
import 'discover_components/drawer.dart';

class DiscoverPageScreen extends StatefulWidget {
  const DiscoverPageScreen({Key? key}) : super(key: key);

  static const String routeName = '/discoverScreen';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const DiscoverPageScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<DiscoverPageScreen> createState() => _DiscoverPageScreenState();
}

class _DiscoverPageScreenState extends State<DiscoverPageScreen> {
  int segmentedControlValue = 0;
  late String _selectedLanguage = '';

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final selectedLanguage = await SettingsService.getSelectedLanguage();
    setState(() {
      _selectedLanguage = selectedLanguage ??
          'English'; // If selectedLanguage is null, default to 'English'
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight), // Default is 56.0
        child: ClipRRect(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(20.0)),
          child: AppBar(
              backgroundColor: AppColors.theme,
              title: const AppText("DashBoard")),
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16.0),
            AppText(_selectedLanguage),
            const AppText(
              "Welcome Muzammal",
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2,
                children: <Widget>[
                  MyCard(
                    icon: Icons.add_shopping_cart,
                    title: 'Products',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductPageScreen()),
                      );
                    },
                  ),
                  MyCard(
                    icon: Icons.contacts_rounded,
                    title: 'Contacts',
                    onTap: () {
                      // onActionButtonTap('Contacts');
                    },
                  ),
                  MyCard(
                    icon: Icons.local_atm,
                    title: 'Banks',
                    onTap: () {
                      // onActionButtonTap('Banks');
                    },
                  ),
                  MyCard(
                    icon: Icons.add_shopping_cart,
                    title: 'Add Sale',
                    onTap: () {
                      // onActionButtonTap('Add Sale');
                    },
                  ),
                  MyCard(
                    icon: Icons.shopping_bag,
                    title: 'Add Purchase',
                    onTap: () {
                      // onActionButtonTap('Add Purchase');
                    },
                  ),
                  MyCard(
                    icon: Icons.receipt,
                    title: 'Add Expense',
                    onTap: () {
                      // onActionButtonTap('Add Expense');
                    },
                  ),
                  MyCard(
                    icon: Icons.payment,
                    title: 'Add Payment',
                    onTap: () {
                      // onActionButtonTap('Add Payment');
                    },
                  ),
                ],
              ),
            ),
            PrimaryIconButton(
              onTap: () {
                // Get.to(const EdithProfileScreen());
              },
              text: 'Sync Data',
              icon: Icons.sync,
            ),
            const SizedBox(height: 30,),
            SecondaryDarkButton(
              onPress: () async {
                // Replace 'english' with the desired language code
                Map<String, List<String>> missingKeys =
                await SettingsService.getAllMissingKeys();

                // Print the missing keys
                if (kDebugMode) {
                  print('Missing Keys: $missingKeys');
                }
              },
             text: 'Get Missing Keys',

            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
