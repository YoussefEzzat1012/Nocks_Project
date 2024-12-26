import 'package:flutter/material.dart';

class PartenrsScreen extends StatelessWidget {
  static const routeName = '/PartenrsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Partenrs Screen', textAlign: TextAlign.center,)),
      ),
      body: Center(child: Text('Welcom in Partenrs Screen'),),
    );
  }
}