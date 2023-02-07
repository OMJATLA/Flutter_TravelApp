import 'package:flutter/material.dart';
import './colors.dart';
import 'package:like_button/like_button.dart';

class popularPackagebox extends StatelessWidget {
  popularPackagebox(
      {required this.image,
      required this.cityName,
      required this.rupess,
      required this.width});
  String image;
  String cityName;
  String rupess;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: roundBox(KborderColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 85,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      cityName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: width,
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  rupess,
                  style: TextStyle(color: Color(0xffFD8457)),
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(KborderColor),
                          Text(' 4.8',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12)),
                        ],
                      ),
                      Text(
                        'A resort is a place used for',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text('vacation, relaxation or as a day...',
                          style: TextStyle(fontSize: 12))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
