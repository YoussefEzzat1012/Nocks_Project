import 'package:flutter/material.dart';
import 'package:nocks/screens/tabsScreen.dart';
import '../widgets/home_items.dart';
import '../screens/ReferralScreen.dart';
import '../screens/WalletScreen.dart';
import '../screens/PartenrsScreen.dart';
import '../screens/projectsScreen.dart';

class HomeScreen extends StatelessWidget {
  final Function(int) onSelectPage;
  const HomeScreen({required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 40,
          ),
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          'Nocks',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 40,
              )),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          HomeItem(
            title: 'Projects',
            subtitle: 'Explore Major Develpment',
            icon: Icons.grid_view,
            routeName: ProjectsScreen.routeName,
            onSelectPage: onSelectPage,
            pageIndex: 1,
          ),
          HomeItem(
            title: 'Wallet',
            subtitle: 'Instant Fund After Contract',
            icon: Icons.account_balance_wallet,
            routeName: Walletscreen.routeName,
            onSelectPage: onSelectPage,
            pageIndex: 2,
          ),
          HomeItem(
            title: 'Referral',
            subtitle: 'Refer Family & Frinds',
            icon: Icons.person_add,
            routeName: ReferralScreen.routeName,
            onSelectPage: onSelectPage,
            pageIndex: 3,
          ),
          HomeItem(
            title: 'Partenrs',
            subtitle: 'Redeem Your Balance',
            icon: Icons.business,
            routeName: PartenrsScreen.routeName,
            onSelectPage: onSelectPage,
            pageIndex: 2,
          ),
        ],
      ),
    );
  }
}
