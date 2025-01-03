import 'package:flutter/material.dart';
import 'package:nocks/screens/place_detail_screen.dart';
import 'package:provider/provider.dart';
import '../Providers/place.dart';

class PlaceItem extends StatelessWidget {
  // final String? title;
  // final String? location;
  // final double? startingPrice;
  // final String? delivery;
  // final String? PaymentPlan;
  // final String? reward;
  // final String? imageUrl;

  // PlaceItem(
  //     {required this.title,
  //     this.PaymentPlan,
  //     required this.imageUrl,
  //     this.delivery,
  //     this.location,
  //     this.reward,
  //     this.startingPrice});

  @override
  Widget build(BuildContext context) {
    final _place = Provider.of<Place>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PlaceDetailScreen.routeName, arguments: _place);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    _place.imageUrl!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 18.0,
                        child: IconButton(
                          iconSize: 17.0,
                            onPressed: () {
                              _place.toggoleFavoriteStatus();
                            },
                            icon: Icon(
                              _place.isFavorite
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: Colors.black,
                            )),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 10.0,),
                      CircleAvatar(
                        maxRadius: 18.0,
                        child: IconButton(
                          iconSize: 17.0,
                            onPressed: () {}, icon: Icon(Icons.ios_share),),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 2.5, bottom: 2.5),
              child: Text(
                _place.title!,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.place,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(_place.location!),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Starting Price',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(_place.startingPrice.toString()),
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(_place.delivery!),
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: [
                        Text(
                          'Payment Plan',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(_place.PaymentPlan!),
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: [
                        Text(
                          'Reward',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(_place.reward!),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
