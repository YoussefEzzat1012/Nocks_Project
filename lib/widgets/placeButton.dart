import 'package:flutter/material.dart';
import '../screens/category_place_screen.dart';
class Placebutton extends StatelessWidget {
  final String placeName;
  Placebutton(this.placeName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
          width: 325,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(3, 3))
              ],
              border: Border.all(color: Colors.white, width: 0.5),
              borderRadius: BorderRadius.circular(12)),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CategoryPlaceScreen.routeName, arguments: placeName);
              },
              child: Text(
                placeName,
                style: TextStyle(color: Colors.black),
              )),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
