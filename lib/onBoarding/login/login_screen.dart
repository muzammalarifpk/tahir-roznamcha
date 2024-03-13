import 'package:flutter/material.dart';
import '../../utils/common_widgets/search_dropdown.dart';
import '../../utils/settings_service.dart';
import '../../utils/strings/translation_widget.dart';
import 'login_form.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  static const String routeName = '/loginPage';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const LoginPageScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {

  final TextEditingController _languageController = TextEditingController();

  List<DropdownMenuItem<String>> dropdownItems = [
    const DropdownMenuItem(value: 'Option 1', child: AppText(
'Option 1')),
    const DropdownMenuItem(value: 'Option 2', child: AppText(
'Option 2')),
    // Add more items as needed
  ];

  String _selectedLanguage = 'English'; // Initial selected value

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final selectedLanguage = await SettingsService.getSelectedLanguage();
    if (selectedLanguage != null) {
      setState(() {
        _selectedLanguage = selectedLanguage;
      });
    }
  }

  void _handleLanguageChange(String? value) { // Change the parameter type to String?
    // Handle the value change
    setState(() {
      SettingsService.saveSelectedLanguage(value ?? 'English');
      _selectedLanguage = value ?? 'English'; // Handle the case where value is null
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LangDropdown(
                  textEditingController: _languageController,
                  items: const ['English', 'Urdu', 'French', 'Arabic'],
                  selectedValue: _selectedLanguage,
                  onChanged: _handleLanguageChange, // Remove the parentheses here
                ),
                const Spacer(
                  flex: 1,
                ),
                const AppText(
                  'Login in to your account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    // Add any other style properties you want
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const LoginForm(),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
