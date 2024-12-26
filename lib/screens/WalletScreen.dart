import 'package:flutter/material.dart';

class Walletscreen extends StatelessWidget {
  static const routeName = '/Walletscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wallet Screen')),
      ),
      body: Center(child: Text('Welcom in Wallet Screen'),),
    );
  }
}