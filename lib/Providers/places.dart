import 'package:flutter/material.dart';
import '../models/place.dart';

class Places with ChangeNotifier {
  Map<String, List<Place>> _places = {
    'a': [
      Place(
          title: 'Al Borouj',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: '8 years',
          delivery: '2028',
          reward: '1%+'),
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward'),
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward'),
    ],
    'b': [
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward')
    ],
    'c': [
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward')
    ],
    'c': [
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward')
    ],
    'd': [
      Place(
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          delivery: 'delivery',
          reward: 'reward')
    ]
  };

  Future<Map<String, List<Place>>> fetchPlaces() async {
    return {..._places};
  }

  List<String> get allKeys {
    return _places.keys.toList();
  }

  Map<String, List> get places {
    return {..._places};
  }

  List<dynamic> fetch_by_the_key(String key) {
    return _places[key]!;
  }
}
