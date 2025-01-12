import 'package:flutter/material.dart';
import '../models/offer.dart';
import 'package:provider/provider.dart';


class Offer {
  String? offerName;
  String? discount;
  String? discountDescription;
  String? imageUrl;
  String? expiaryDate;

  Offer(
      {required this.offerName,
      required this.discount,
      required this.imageUrl,
      required this.discountDescription,
      required this.expiaryDate,
      });
}

class Offers with ChangeNotifier {

  final _items = {
    'Furniture': [
      Offer(
          offerName: 'Glide',
          discount: '5% Discount',
          imageUrl:
              'https://glidesmartmobility.com/cdn/shop/files/Glide-Logo-Header.png?v=1725455110&width=500',
          discountDescription: 'discountDescription',
          expiaryDate: 'january 1, 2024'),

            Offer(
          offerName: 'Glide',
          discount: '5% Discount',
          imageUrl:
              'https://glidesmartmobility.com/cdn/shop/files/Glide-Logo-Header.png?v=1725455110&width=500',
          discountDescription: 'discountDescription',
          expiaryDate: 'january 1, 2024')
    ]

  };



  Future<List<Offer>> fetchAllData () async{
    var values = _items.values;
    var flattenendValues = values.expand((list) => list).toList();
    return flattenendValues;
  }

  List get items {
    var values = _items.values;
    var flattenendValues = values.expand((list) => list).toList();
    return flattenendValues;
  }

  List<Offer> fetchByKey (String key) {
    return _items[key] ?? [];
  }

  void update () {
    notifyListeners();
  }

}
