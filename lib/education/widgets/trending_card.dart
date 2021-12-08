import 'package:beautifulflutter/education/widgets/card_title_build.dart';
import 'package:flutter/material.dart';

Container trendingCardBuild() {
  List<String> trendingImages = [
    "trending1",
    "trending2",
    "trending3",
    "trending1",
    "trending2",
    "trending3"
  ];

  return Container(
    height: 210,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingImages.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: index == 0 ? 24.0 : 12.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/trending/${trendingImages[index]}.png",
                            height: 146,
                            width: 128,
                          ),
                          cardTitleBuild(context, index),
                          Positioned(
                            top: 125,
                            child: Text(
                              index % 2 == 0 ? "Dieter Rams" : "Dvorah Lansky",
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xffA29E90),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            child: SizedBox(
                              width: 120,
                              child: Text(
                                index % 2 == 0
                                    ? "Illustrator 2021 MasterClass"
                                    : "The Ultimate Drawing Course",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 173,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xffC1AA6A),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xffC1AA6A),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xffC1AA6A),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xffD9D6CD),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Color(0xffD9D6CD),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
  );
}
