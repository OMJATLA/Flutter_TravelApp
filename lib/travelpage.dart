import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/popularPackagebox.dart';
import './colors.dart';
import 'package:like_button/like_button.dart';
import './categoryBox.dart';

class travelpage extends StatefulWidget {
  const travelpage({super.key});

  @override
  State<travelpage> createState() => _travelpageState();
}

class _travelpageState extends State<travelpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kbackgroundcolor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: KcircleAvatar,
                ),
                Text("  Hello, Vineetha",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(
                  width: 156,
                ),
                Icon(
                  Icons.notifications_active,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Where do you\nwant to explore today?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: 35,
                width: 550,
                color: KcircleAvatar,
                child: Text(
                  "Search",
                  style: TextStyle(color: KlightTextColor),
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Choose Category",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                Text(
                  'See all',
                  style: TextStyle(color: KlightTextColor),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    height: 60,
                    decoration: roundBox(Colors.green),
                    child: Row(
                      children: [
                        Image.asset('images/img1.png'),
                        Text(
                          'Beach',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    height: 60,
                    decoration: roundBox(KcircleAvatar),
                    child: Row(
                      children: [
                        Image.asset('images/img2.png'),
                        Text(
                          'Mountain',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'scr1');
                    },
                    child: categoryBox(
                        image: 'images/pic1.png',
                        cityName: " Kuta Beach",
                        LocationName: 'Bali, Indonesia',
                        rating: ' 4.2'),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'scr2');
                    },
                    child: categoryBox(
                      image: 'images/pic2.png',
                      cityName: ' Baga Beach',
                      LocationName: 'Goa, India',
                      rating: ' 4.8',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Package'),
                Text(
                  'See all',
                  style: TextStyle(color: KlightTextColor),
                )
              ],
            ),
            SizedBox(height: 25),
            popularPackagebox(
              image: 'images/pic3.png',
              cityName: 'Kuta Resort',
              rupess: '₹20,000',
              width: 101,
            ),
            SizedBox(
              height: 15,
            ),
            popularPackagebox(
              image: 'images/pic1.png',
              cityName: 'Baga Beach Resort',
              rupess: '₹15,000',
              width: 55,
            )
          ],
        ),
      )),
    );
  }
}
