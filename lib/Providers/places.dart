import 'package:flutter/material.dart';
import '../Providers/place.dart';

class Places with ChangeNotifier {
  Map<String, List<Place>> _places = {
    'Nasr City': [
      Place(
          id: 'p1',
          title: 'Al Borouj',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice:55.000,
          PaymentPlan: '8 years',
          delivery: '2028',
          description: 'This is Project description',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          isFavorite: false,
          reward: '1%+'),
      Place(
          id: 'p2',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.000,
          PaymentPlan: 'PaymentPlan',
          description: 'This is Project description',
          isFavorite: false,
          delivery: 'delivery',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          reward: 'reward'),
      Place(
          id: 'p3',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.000,
          PaymentPlan: 'PaymentPlan',
          description: 'This is Project description',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          delivery: 'delivery',
          isFavorite: false,
          reward: 'reward'),
    ],
    '6th Octobr': [
      Place(
          id: 'p4',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.5,
          PaymentPlan: 'PaymentPlan',
          description: 'This is Project description',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          delivery: 'delivery',
          isFavorite: false,
          reward: 'reward')
    ],
    'New Cairo': [
      Place(
          id: 'p4',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.000,
          PaymentPlan: 'PaymentPlan',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          description: 'This is Project description',
          delivery: 'delivery',
          isFavorite: false,
          reward: 'reward')
    ],
    'Ain Shams': [
      Place(
          id: 'p4',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          startingPrice: 55.000,
          PaymentPlan: 'PaymentPlan',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          description: 'This is Project description',
          delivery: 'delivery',
          isFavorite: false,
          reward: 'reward')
    ],
    'Dalla City': [
      Place(
          id: 'p4',
          title: 'title',
          imageUrl:
              'https://images.squarespace-cdn.com/content/v1/65a8583b3f2bb32732bff587/8fc00c4d-1fcf-4bda-969e-6d3a8a40be34/image-asset.jpeg',
          location: 'location',
          MasterPlanImage:
              'https://images.adsttc.com/media/images/6350/2a27/18b4/b801/70c6/3a0f/slideshow/heen-developes-project-at-city-university-of-hong-kong-campus-china_3.jpg',
          startingPrice:55.000,
          PaymentPlan: 'PaymentPlan',
          description: 'This is Project description',
          delivery: 'delivery',
          isFavorite: false,
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
