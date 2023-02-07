import 'package:flutter/material.dart';
import './colors.dart';
import 'package:like_button/like_button.dart';

class screen1 extends StatelessWidget {
  screen1({required this.bkImage, required this.cityName, required this.width});
  String bkImage;
  String cityName;
  double width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bkImage),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.9),
              ],
            )),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    LikeButton(
                      size: 25,
                      circleColor: CircleColor(
                          start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cityName,
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width,
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            'Goa, India',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                        style: TextStyle(color: kTextColor, fontSize: 12),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(Colors.yellow),
                          starRating(Colors.white),
                          Text(' 4.8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹15,000/person',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: (() {}),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    border:
                                        Border.all(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                width: 103,
                                height: 45,
                                child: Center(
                                    child: Text(
                                  'Book Now',
                                  style: TextStyle(color: Colors.black),
                                )),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
