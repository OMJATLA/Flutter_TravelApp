import 'package:flutter/material.dart';

Color Kbackgroundcolor = Colors.white;
Color KcircleAvatar = Color(0xffD9D9D9);
Color KlightTextColor = Color(0xffC6C6C6);
Color KborderColor = Color(0xffE7E7E7);
Color kTextColor = Colors.white;

BoxDecoration roundBox(Color color) {
  return BoxDecoration(
      border: Border.all(color: color),
      borderRadius: BorderRadius.all(Radius.circular(12)));
}

Icon starRating(Color color) {
  return Icon(
    Icons.star_rounded,
    size: 15,
    color: color,
  );
}
