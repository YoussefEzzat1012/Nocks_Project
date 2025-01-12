import 'package:flutter/material.dart';
import 'package:nocks/screens/category_place_screen.dart';
import 'package:provider/provider.dart';
import './Providers/places.dart';
import './screens/ReferralScreen.dart';
import './screens/WalletScreen.dart';
import './screens/PartenrsScreen.dart';
import './screens/projectsScreen.dart';
import './screens/tabsScreen.dart';
import './screens/place_detail_screen.dart';
import './Providers/partners.dart';
import './Providers/offers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Places(),
        ),
        ChangeNotifierProvider<Partners>(
          create: (_) => Partners(),
        ),
        ChangeNotifierProvider<Offers>(
          create: (_) => Offers(),
        )
      ],
      child: MaterialApp(
        title: 'MyShop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            //secondary: Colors.orange,
            brightness: Brightness.light,
          ),
          fontFamily: 'Laton',
        ),
        home: Tabsscreen(),
        routes: {
          ProjectsScreen.routeName: (ctx) => ProjectsScreen(),
          PartenrsScreen.routeName: (ctx) => PartenrsScreen(),
          Walletscreen.routeName: (ctx) => Walletscreen(),
          ReferralScreen.routeName: (ctx) => ReferralScreen(),
          CategoryPlaceScreen.routeName: (ctx) => CategoryPlaceScreen(),
          PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
          Tabsscreen.routeName: (ctx) => Tabsscreen()
        },
      ),
    );
  }
}
