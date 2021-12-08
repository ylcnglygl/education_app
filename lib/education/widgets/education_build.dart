import 'package:flutter/material.dart';

Container educationBuild(BuildContext context) {
  return Container(
    height: 450,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 110 / 375,
                          child: const Text(
                            "Educat coaching",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )),
                      Row(
                        children: const [
                          Chip(
                            label: Text(
                              "GOLD",
                              style: TextStyle(letterSpacing: 4, fontSize: 9),
                            ),
                            backgroundColor: Color(0xffC1AA6A),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "MASTERCLASS",
                            style: TextStyle(letterSpacing: 4, fontSize: 9),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Image.asset(
                    "assets/educate/educate.png",
                    width: 180,
                    height: 200,
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xff087E8B),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
            ),
          ],
        ),
        Positioned(
            top: 150,
            left: 25,
            child: Image.asset(
              "assets/educate/educatePic.png",
              height: 213,
            )),
        Positioned(
          top: 280,
          left: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "by Dieter Rams",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(
                width: 186,
                child: Text(
                  "How to travel and get paid in 2021 during Covid season",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 370,
          left: 130,
          child: Container(
            width: 218,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eros enim, dictum vitae quam nec, congue feugiat neque. Vivamus ut luctus enim. ",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
        Positioned(
          top: 335,
          left: 40,
          child: Image.asset("assets/profilepic.png"),
        ),
      ],
    ),
  );
}
