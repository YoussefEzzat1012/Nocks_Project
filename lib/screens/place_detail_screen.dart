import 'dart:io';

import 'package:flutter/material.dart';
import '../Providers/place.dart';
import '../widgets/auto_image_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/bottomsheetProjectDetail.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = '/PlaceDetailScreen';

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: (_) {
          return Container(
            height: 650,
            child: Bottomsheetprojectdetail(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final _ourPlace = ModalRoute.of(context)!.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: Text('Place Detail Screen'),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoImageSlider(_ourPlace),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 360,
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(_ourPlace.description),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Master Plan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    _ourPlace.MasterPlanImage,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  height: 100,
                  //color: Colors.black87,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Reward',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Start From',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          _ourPlace.startingPrice.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          'EGP',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  //: Colors.white,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                  child: TextButton(
                    onPressed: () => startAddNewTransaction(context),
                    child: Text(
                      'Connect With Imkan Masr',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  //: Colors.white,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Refer Family & Friends To This Project',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 220,
                      //width: double.infinity,
                      //: Colors.white,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(left: 25, right: 10, bottom: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Nocks Support',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 80,
                      //: Colors.white,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(right: 10, bottom: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
