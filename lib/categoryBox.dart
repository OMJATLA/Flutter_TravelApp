import 'package:flutter/material.dart';
import './colors.dart';
import 'package:like_button/like_button.dart';

class categoryBox extends StatelessWidget {
  Icon starRating(Color color) {
    return Icon(
      Icons.star_rounded,
      size: 20,
      color: color,
    );
  }

  String image;
  String cityName;
  String LocationName;
  String rating;
  categoryBox(
      {required this.image,
      required this.cityName,
      required this.LocationName,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(image),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Kbackgroundcolor,
              child: LikeButton(
                size: 17,
                circleColor: CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Text(
            cityName,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 20,
              ),
              Text(
                LocationName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              starRating(Colors.yellow),
              starRating(Colors.yellow),
              starRating(Colors.yellow),
              starRating(Colors.yellow),
              starRating(Colors.white),
              Text(rating,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400))
            ],
          )
        ],
      ),
    );
  }
}
