import 'package:flutter/material.dart';
import '../screens/ReferralScreen.dart';
import '../screens/WalletScreen.dart';
import '../screens/homeScreen.dart';
import '../screens/projectsScreen.dart';
import '../screens/moreScreen.dart';

class Tabsscreen extends StatefulWidget {
  const Tabsscreen({super.key});

  @override
  State<Tabsscreen> createState() => _TabsscreenState();
}

class _TabsscreenState extends State<Tabsscreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    ProjectsScreen(),
    ReferralScreen(),
    Walletscreen(),
    Morescreen()
  ];

  var _selectedIndexPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndexPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white54,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndexPage,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
                size: 25,
              ),
              label: 'Project'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 25,
              ),
              label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                size: 25,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
                size: 25,
              ),
              label: 'More'),
        ],
      ),
    );
  }
}
