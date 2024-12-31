import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final String? title;
  final String? location;
  final double? startingPrice;
  final String? delivery;
  final String? PaymentPlan;
  final String? reward;
  final String? imageUrl;

  PlaceItem(
      {required this.title,
      this.PaymentPlan,
      required this.imageUrl,
      this.delivery,
      this.location,
      this.reward,
      this.startingPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  imageUrl!,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 2.5, bottom: 2.5),
            child: Text(
              title!,
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
                Text(location!),
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
                      Text(startingPrice.toString()),
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
                      Text(delivery!),
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
                      Text(PaymentPlan!),
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
                      Text(reward!),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
