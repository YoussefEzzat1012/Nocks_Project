import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PartenersItem {
  String? companyName;
  String? imageUrl;
  String? subtitle;

  PartenersItem(
      {required this.companyName,
      required this.imageUrl,
      required this.subtitle});
}

class Partners with ChangeNotifier {
  final _items = {
    'Gold & Jewelry': [
      PartenersItem(
          companyName: 'BTC',
          imageUrl:
              'https://images.wuzzuf-data.net/files/company_logo/New-Egypt-Gold-Egypt-35115-1561201651.jpg',
          subtitle: 'Gold & gewellery'),
      PartenersItem(
          companyName: 'BTC',
          imageUrl:
              'https://images.wuzzuf-data.net/files/company_logo/New-Egypt-Gold-Egypt-35115-1561201651.jpg',
          subtitle: 'Gold & gewellery'),
      PartenersItem(
          companyName: 'BTC',
          imageUrl:
              'https://images.wuzzuf-data.net/files/company_logo/New-Egypt-Gold-Egypt-35115-1561201651.jpg',
          subtitle: 'Gold & gewellery')
    ],
    'Hotels & Travel': [
      PartenersItem(
          companyName: 'Travista',
          imageUrl: 'https://www.stjegypt.com/uploads/919669387564.png',
          subtitle: 'Hotels & Travel')
    ]
  };

  Future<List<PartenersItem>> fetchAllData () async{
    var values = _items.values;
    var flattenendValues = values.expand((list) => list).toList();
    return flattenendValues;
  }

  List get items {
    var values = _items.values;
    var flattenendValues = values.expand((list) => list).toList();
    return flattenendValues;
  }

  List<PartenersItem> fetchByKey (String key) {
    return _items[key] ?? [];
  }

  void update () {
    notifyListeners();
  }

}
