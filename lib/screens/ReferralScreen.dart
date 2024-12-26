import 'package:flutter/material.dart';

class ReferralScreen extends StatelessWidget {
  static const routeName = '/ReferralScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Referral Screen', textAlign: TextAlign.center,)),
      ),
      body: Center(child: Text('Welcom in Referral Screen'),),
    );
  }
}