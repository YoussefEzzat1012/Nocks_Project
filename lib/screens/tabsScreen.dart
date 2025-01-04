import 'package:flutter/material.dart';
import '../screens/ReferralScreen.dart';
import '../screens/WalletScreen.dart';
import '../screens/homeScreen.dart';
import '../screens/projectsScreen.dart';
import '../screens/moreScreen.dart';
import '../screens/place_detail_screen.dart';
import '../screens/PartenrsScreen.dart';
import '../widgets/bottom_navigation_bar.dart';

class Tabsscreen extends StatefulWidget {
  static const routeName = '/TabsScreen';
  @override
  State<Tabsscreen> createState() => _TabsscreenState();
}

class _TabsscreenState extends State<Tabsscreen> {
  int _selectedIndexPage = 0; // Current selected tab index

  // Callback to switch tabs
  void _selectPage(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  late final List<Widget> _pages; // Declare the pages list

  @override
  void initState() {
    super.initState();
    // Initialize the pages and pass _selectPage to HomeScreen
    _pages = [
      HomeScreen(onSelectPage: _selectPage), // Pass _selectPage to HomeScreen
      ProjectsScreen(),
      Walletscreen(),
      ReferralScreen(),
      Morescreen(),
      PlaceDetailScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndexPage],
      bottomNavigationBar: BottomNavigationBarWidget(selectPage: _selectPage, selectedIndexPage: _selectedIndexPage),
    );
  }
}
