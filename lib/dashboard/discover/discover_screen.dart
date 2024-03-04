import 'package:flutter/material.dart';
import 'package:roz/utils/common_colours.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight), // Default is 56.0
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0)), // Adjust radius to your preference
          child: AppBar(
              backgroundColor: CustomColors.theme,
              title: const Text("DashBoard")),
        ),
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.person_2_outlined),
                  SizedBox(width: 16),
                  Text('My Portfolio'),
                ],
              ),
              onTap: () {
                // Get.to(const ShowPortfolio());
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.insert_invitation_rounded),
                  SizedBox(width: 16),
                  Text('Invitations'),
                ],
              ),
              onTap: () {
                // Get.to(const InvitationScreen());
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.currency_bitcoin_sharp),
                  SizedBox(width: 16),
                  Text('Coins'),
                ],
              ),
              onTap: () {
                // Get.to(const CoinsScreen());
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16.0),
            const Text("Welcome Muzammal",
              style:
               TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w500,

              ),),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2,
                children: <Widget>[
                  _buildActionButton('Products', Icons.add_shopping_cart),
                  _buildActionButton('Contacts', Icons.contacts_rounded),
                  _buildActionButton('Banks', Icons.local_atm),
                  _buildActionButton('Add Sale', Icons.add_shopping_cart),
                  _buildActionButton('Add Purchase', Icons.shopping_bag),
                  _buildActionButton('Add Expense', Icons.receipt),
                  _buildActionButton('Add Payment', Icons.payment),
                ],
              ),
            ),

            PrimaryButton(
              onTap: () {
                // Get.to(const EdithProfileScreen());
              },
              text: 'Sync Data',
              icon: Icons.sync,
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String title, IconData icon) {
    return Card(
      color: Colors.white38,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Implement your action logic
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(icon, size: 40.0),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class PrimaryButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData? icon;
  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: CustomColors.theme,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Center(
          child: icon == null
              ? Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
              const SizedBox(width: 8),

              Icon(icon,color: Colors.white,),  // Use Icon widget for displaying the icon

            ],
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData? icon;  // Change type to IconData

  const SecondaryButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon,  // Icon is now of type IconData and optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: CustomColors.border,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Center(
          child: icon == null
              ? Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),  // Use Icon widget for displaying the icon
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}