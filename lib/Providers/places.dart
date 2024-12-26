import 'package:flutter/material.dart';
import '../models/place.dart';

class Places with ChangeNotifier {
  List<Map<String, List<Place>>> places = [
    {
      'a': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'b': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'c': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'd': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'e': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'f': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'g': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'h': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
    {
      'i': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
     {
      'i': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
     {
      'i': [
        Place(
            title: 'title',
            imageUrl: '',
            location: 'location',
            startingPrice: 55.5,
            PaymentPlan: 'PaymentPlan',
            delivery: 'delivery',
            reward: 'reward')
      ]
    },
  ];

  List<String> get allKeys => places.expand((map) => map.keys).toList();

   Future<List<Map<String, List<Place>>>> fetchPlaces() async{
      return [...places];
   }




}
