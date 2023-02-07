import 'package:flutter/material.dart';
import './travelpage.dart';
import './screen1.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: travelpage(),
      routes: {
        'scr1': (context) => screen1(
              bkImage: 'images/Rectangle.png',
              cityName: "Kuta Beach",
              width: 110,
            ),
        'scr2': (context) => screen1(
              bkImage: 'images/Rectangle1.png',
              cityName: "Baga Beach",
              width: 104,
            )
      },
    );
  }
}
