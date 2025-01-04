import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Place with ChangeNotifier{
  String id;
  String title;
  String location;
  double startingPrice;
  String delivery;
  String PaymentPlan;
  String reward;
  String imageUrl;
  bool isFavorite;
  String description;
  String MasterPlanImage;

  Place(
      {
      required this.id,
      required this.title,
      required this.location,
      required this.MasterPlanImage,
      required this.startingPrice,
      required this.description,
      required this.PaymentPlan,
      required this.delivery,
      required this.imageUrl,
      required this.isFavorite,
      required this.reward});

    void toggoleFavoriteStatus() {
      isFavorite = !isFavorite;
      notifyListeners();
    }
      
}
