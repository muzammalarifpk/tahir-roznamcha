import 'package:flutter/material.dart';
import 'package:roz/dashboard/locations/location_page_screen.dart';
import 'package:roz/utils/app_colours.dart';
import 'package:roz/utils/strings/translation_widget.dart';
import 'dashboard/banks/banks_page_screen.dart';
import 'dashboard/contacts/contacts_page_screen.dart';
import 'dashboard/discover/discover_page_screen.dart';
import 'dashboard/products/product_page_screen.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({Key? key}) : super(key: key);

  static const String routeName = '/entryPoint';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const EntryPoint(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  final List _pages = const [
    ProductPageScreen(),
    ContactPageScreen(),
    DiscoverPageScreen(),
    LocationPageScreen(),
    BankPageScreen(),
  ];
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _pages.elementAt(_currentIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white54,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTabItem(
              label: "Products",
              icon: Icon(Icons.production_quantity_limits,
                  color: _currentIndex == 0 ? AppColors.black : AppColors.grey),
              index: 0,
            ),
            _buildTabItem(
              label: "Contacts",
              icon: Icon(Icons.contacts_rounded,
                  color: _currentIndex == 1 ? AppColors.black : AppColors.grey),
              index: 1,
            ),

            // The gap is for the floating action button
            const SizedBox(width: 20),
            _buildTabItem(
              label: "Locations",
              icon: Icon(Icons.location_on,
                  color: _currentIndex == 3 ? AppColors.black : AppColors.grey),
              index: 3,
            ),
            _buildTabItem(
              label: "Banks",
              icon: Icon(Icons.local_atm,
                  color: _currentIndex == 4 ? AppColors.black : AppColors.grey),
              index: 4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 56.0,
        height: 56.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.cardText,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _onItemTapped(2);
            },
            borderRadius: BorderRadius.circular(28.0),
            child: const Center(
              child: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required Widget icon,
    required int index,
    required String label,
  }) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      borderRadius: BorderRadius.circular(28.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          AppText(
            label,
            style: TextStyle(
              color: _currentIndex == index ? AppColors.black : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
