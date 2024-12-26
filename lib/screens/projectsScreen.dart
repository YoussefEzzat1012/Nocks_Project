import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/places.dart';
import '../widgets/placeButton.dart';

class ProjectsScreen extends StatelessWidget {
  static const routeName = '/projectScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Projects',
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            parent:
                AlwaysScrollableScrollPhysics()), // Prevents overscroll shadow
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Icon(
              Icons.place,
              size: 60,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Choose Your Preferred Destinatiom',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            FutureBuilder(
                future:
                    Provider.of<Places>(context, listen: false).fetchPlaces(),
                builder: (ctx, dataSnapshot) {
                  if (dataSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (dataSnapshot.error != null) {
                      return Center(
                        child: Text('An error occured!'),
                      );
                    } else {
                      return Consumer<Places>(
                          builder: (ctx, placeData, child) => Container(
                                height: 600,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (ctx, i) =>
                                      Placebutton(placeData.allKeys[i]),
                                  itemCount: placeData.places.length,
                                ),
                              ));
                    }
                  }
                }),
          ],
        ),
      ),
    );
  }
}
