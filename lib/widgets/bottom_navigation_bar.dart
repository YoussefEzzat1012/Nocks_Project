import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  var selectedIndexPage;
  Function (int) selectPage;

  BottomNavigationBarWidget({required this.selectPage, required this.selectedIndexPage});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white54,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndexPage,
        onTap: selectPage,
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
      );
  }
}