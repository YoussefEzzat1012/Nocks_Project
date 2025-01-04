import 'package:flutter/material.dart';

class PropertyTypeSheetBottom extends StatefulWidget {
  const PropertyTypeSheetBottom({super.key});

  @override
  State<PropertyTypeSheetBottom> createState() => _PropertyTypeSheetBottomState();
}

class _PropertyTypeSheetBottomState extends State<PropertyTypeSheetBottom> {
  bool? isCheked = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Row(children: [
            Checkbox(
              activeColor: Colors.black,
              value: isCheked, onChanged: (newBool) {
              setState(() {
                isCheked = newBool;
              });
            }),
            SizedBox(width: 5,),
            Text('Appartment'),
          ],)
        ],
      );
  }
}