import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/selectDestinationWidget.dart';

class ReferralScreen extends StatefulWidget {
  static const routeName = '/ReferralScreen';

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
   String destniation = "";
  void _startSelectDestination(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: (_) {
          return Container(
            height: 650,
            child: Selectdestinationwidget((selectedDestination) {
              setState(() {
                destniation = selectedDestination;
              });
            }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Referral Screen',
          textAlign: TextAlign.center,
        )),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.userPlus,
                size: 50.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('You Will Both Get Rewarded'),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                    //hintText: 'Name',
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your phone number',
                    prefixText: "+20  ",
                    prefixStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(Icons.phone),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none)),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: ListTile(
                  title: Text(destniation == "" ? "Select Destination" : '$destniation'),
                  trailing: IconButton(
                      onPressed: () => _startSelectDestination(context),
                      icon: Icon(Icons.expand_more)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: ListTile(
                  title: Text("Select Develper"),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.expand_more)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: ListTile(
                  title: Text("Select Budget"),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.expand_more)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
