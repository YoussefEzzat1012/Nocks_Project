import 'package:flutter/material.dart';

class Morescreen extends StatelessWidget {
  static const routeName = '/MoreScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('More Screen', textAlign: TextAlign.center,)),
      ),
      body: Center(child: Text('Welcom in More Screen'),),
    );
  }
}