import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Providers/place.dart';

class AutoImageSlider extends StatefulWidget {
  final Place _place; // Use 'final' for immutability
  AutoImageSlider(this._place);

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final images = [
    'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
    'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
    'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
  ];
  int currentIndex = 0;

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
                  topRight: Radius.circular(15),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200, // Fixed height for the slider
                    viewportFraction: 1.0, // Only show one image at a time
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: false, // No enlargement of the current page
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: images.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            imageUrl,
                            width: double.infinity, // Full width of the card
                            fit: BoxFit.cover, // Ensures the image covers the space
                          ),
                        );
                      },
                    );
                  }).toList(),
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
                          widget._place.toggoleFavoriteStatus();
                        },
                        icon: Icon(
                          widget._place.isFavorite
                              ? Icons.favorite_border
                              : Icons.favorite,
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    CircleAvatar(
                      maxRadius: 18.0,
                      child: IconButton(
                        iconSize: 17.0,
                        onPressed: () {},
                        icon: Icon(Icons.ios_share),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 2.5, bottom: 2.5),
            child: Text(
              widget._place.title!,
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
                SizedBox(width: 10),
                Text(widget._place.location!),
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
                      Text(widget._place.startingPrice.toString()),
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
                      Text(widget._place.delivery!),
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
                      Text(widget._place.PaymentPlan!),
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
                      Text(widget._place.reward!),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
