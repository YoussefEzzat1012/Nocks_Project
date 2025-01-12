import 'package:flutter/material.dart';
import 'package:nocks/Providers/partners.dart';
import 'package:nocks/widgets/offers.dart';
import 'package:provider/provider.dart';
import '../Providers/offers.dart';
import '../widgets/parteners.dart';
import '../widgets/history.dart';

class Walletscreen extends StatefulWidget {
  static const routeName = '/Walletscreen';

  @override
  State<Walletscreen> createState() => _WalletscreenState();
}

class _WalletscreenState extends State<Walletscreen> {

  int balance = 0;
  String buttonName = "Parteners";
  final titleList = [
    'All',
    'Gold & Jewelry',
    'Hotels & Travel',
    'Furniture',
    'Design Firms',
    'Electronics',
    'Food & Beverage',
    'Fashion',
    'Solar Energy',
    'gifts & Toys',
    'Clincs',
    'LandScape'
  ];

  Widget _buildContainer(IconData iconName, String title) {
    return InkWell(
      onTap: () {
        setState(() {
          buttonName = title;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1, color: Colors.grey),
          color: buttonName == title  ?Colors.black : Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              iconName,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget _getContent(String buttonName) {
  switch (buttonName) {
    case "Parteners":
      return PartenersWidget(titleList);
    case "Offers":
      return OffersWidget(titleList);
    case "History":
      return HistoryWidget();
    default:
      return Center(child: Text("No content available"));
  }
}

  @override
  Widget build(BuildContext context) {
    initState(){
      balance = 0;
      buttonName = "Parteners";
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wallet Screen')),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
            padding: EdgeInsets.all(20.0),
            width: 380,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '$balance',
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Redeem',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Row(
              children: [
                _buildContainer(Icons.business, 'Parteners'),
                SizedBox(
                  width: 5.0,
                ),
                _buildContainer(Icons.local_offer, 'Offers'),
                SizedBox(
                  width: 5.0,
                ),
                _buildContainer(Icons.history, 'History'),
              ],
            ),
          ),

         _getContent(buttonName)
        ],
      ),
    );
  }
}
