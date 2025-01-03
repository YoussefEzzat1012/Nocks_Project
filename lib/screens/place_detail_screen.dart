import 'package:flutter/material.dart';
import '../Providers/place.dart';
import '../widgets/auto_image_slider.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = '/PlaceDetailScreen';
  @override
  Widget build(BuildContext context) {
    final _ourPlace = ModalRoute.of(context)!.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: Text('Place Detail Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AutoImageSlider(_ourPlace),
          ],
        ),
      ),
    );
  }
}