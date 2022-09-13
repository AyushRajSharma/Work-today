import 'package:flutter/material.dart';

class Category {
  var categoryBool;
  Category() {
    this.categoryBool = new List<bool>.filled(categoryList.length, false, growable: false);
    for (int i = 0; i < categoryList.length; i++) categoryBool[i] = false;
  }
  List<String> categoryList = [
    'Driver',
    'Sweeper',
    'Laundary',
    'Sanitisation',
    'Mason',
    'Plumber',
    'Security',
  ];
}
